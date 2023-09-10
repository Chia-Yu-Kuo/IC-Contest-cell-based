module LEDDC( DCK, DAI, DEN, GCK, Vsync, mode, rst, OUT);
input           DCK;
input           DAI;
input           DEN;
input           GCK;
input           Vsync;
input           mode;
input           rst;
output [15:0]   OUT;



wire inbuf_ien, sram_ien, ob_pixel_reg_update, obs2p_ien;
wire [1:0] obid_sel;
wire [3:0] ibaddr, obs2p_addr;
wire [7:0] inbuf_oaddr, inbuf_iaddr;
wire [8:0] sram_oaddr, sram_iaddr;
wire [15:0] obcnt, ibout, inbuf_out, obid;


CTRL ctrl(.DCK(DCK), .DEN(DEN), .GCK(GCK), .Vsync(Vsync), .mode(mode), .rst(rst), .ibaddr(ibaddr), .inbuf_oaddr(inbuf_oaddr), .inbuf_iaddr(inbuf_iaddr), .inbuf_ien(inbuf_ien), .sram_oaddr(sram_oaddr), .sram_iaddr(sram_iaddr), .sram_ien(sram_ien), .obid_sel(obid_sel) , .obs2p_addr(obs2p_addr), .ob_pixel_reg_update(ob_pixel_reg_update), .obcnt(obcnt), .obs2p_ien(obs2p_ien));

IN_BLOCK ib(.DCK(DCK), .DAI(DAI), .DEN(DEN), .ibaddr(ibaddr), .ibout(ibout), .rst(rst));

sram_256x16 inbuf( .QA(inbuf_out), .AA(inbuf_oaddr), .CLKA(GCK), .CENA(1'b0), .AB(inbuf_iaddr), .DB(ibout), .CLKB(DCK), .CENB(inbuf_ien));

sram_512x16 sram( .QA(obid), .AA(sram_oaddr), .CLKA(GCK), .CENA(1'b0), .AB(sram_iaddr), .DB(inbuf_out), .CLKB(GCK), .CENB(sram_ien));

OUT_BLOCK ob(.GCK(GCK), .obid(obid), .obid_sel(obid_sel), .obs2p_addr(obs2p_addr), .obs2p_ien(obs2p_ien), .ob_pixel_reg_update(ob_pixel_reg_update), .obcnt(obcnt), .OUT(OUT), .rst(rst));

endmodule


module IN_BLOCK(
	input DCK,
	input rst,
	input DAI,
	input DEN,
	input [3:0] ibaddr,
	output [15:0] ibout
);

reg [15:0] s2p_reg;
assign ibout = s2p_reg;

always @(posedge DCK or posedge rst) begin
	if(rst) s2p_reg <= 16'd0;
	else if(DEN) s2p_reg[ibaddr] <= DAI;
end

endmodule

module OUT_BLOCK(
	input GCK,
	input rst,
	input [15:0] obid,
	input [1:0] obid_sel,
	input [3:0] obs2p_addr,
	input obs2p_ien,
	input ob_pixel_reg_update,
	input [15:0] obcnt,
	output reg [15:0] OUT
);

reg [15:0] obs2p_reg [0:15];
reg [15:0] ob_pixel_reg [0:15];

integer i1, i2, i3;

wire [15:0] obs2p_idata;

assign obs2p_idata = obid_sel == 2'd0 ? obid : 
			   obid_sel == 2'd1 ? {1'b0, obid[15:1]} + {15'd0, obid[0]} : { 1'b0, obid[15:1] } ;  

always @(posedge GCK or posedge rst) begin
	if(rst) begin
		for(i1=0; i1<16; i1=i1+1) obs2p_reg[i1] <= 16'd0;
	end
	else if(obs2p_ien) obs2p_reg[obs2p_addr] <= obs2p_idata;
end


always @(posedge GCK or posedge rst) begin
	if(rst) begin
		for(i2=0; i2<16; i2=i2+1) ob_pixel_reg[i2] <= 16'd0;
	end
	else if(ob_pixel_reg_update) for(i2=0; i2<16; i2=i2+1) ob_pixel_reg[i2] <= obs2p_reg[i2];
end

always @(*) begin
	for(i3=0; i3<16; i3=i3+1) OUT[i3] = ob_pixel_reg[i3] > obcnt;
end

endmodule


module CTRL(
	input DCK,
	input DEN,
	input GCK,
	input Vsync,
	input mode,
	input rst,
	output reg[3:0] ibaddr,//
	output [7:0] inbuf_iaddr,//
	output inbuf_ien,//
	output [7:0] inbuf_oaddr,//
	output [8:0] sram_iaddr,//
	output sram_ien,//
	output [8:0] sram_oaddr, //
	output [1:0] obid_sel,//
	output [3:0] obs2p_addr,//
	output ob_pixel_reg_update,//
	output reg[15:0] obcnt, //
	output obs2p_ien
);

//reg [3:0] ibaddr;
reg DEN_reg;
reg [9:0] inbuf_icnt;

//reg [15:0] obcnt;
reg [4:0] SL_cnt;
reg [5:0] col_in_SL_cnt; // [5] saturate bit [4:1] col_num, [0] because 2 cycle per pixel  

reg [8:0] sram_update_cnt;
wire [8:0] nsram_update_cnt;
reg [9:0] cnt1;

reg Vsync_reg;

wire fram_in_down;
reg fram_in_down_reg;

reg round_flag;


// in_block & in_buf_in

always @(posedge DCK or posedge rst) begin
	if(rst) begin
		ibaddr <= 4'd0;
		inbuf_icnt <= 9'd0;
		DEN_reg <= 1'b0;
	end
	else begin
		DEN_reg <= DEN;
		
		if(DEN) ibaddr <= ibaddr + 4'd1;
		else ibaddr <= 4'd0;

		if(DEN_reg & ~DEN/*DEN_negedge*/) inbuf_icnt <= inbuf_icnt + 9'd1;	
	end
end

assign inbuf_iaddr = inbuf_icnt[7:0];


assign inbuf_ien = ~(DEN_reg & ~DEN);


// in_buf_out & sram_in

always @(posedge GCK or posedge rst) begin
	if(rst) begin
		sram_update_cnt <= 9'd0;
		fram_in_down_reg <= 1'b0;
		cnt1 <= 10'd0;
	end
	else begin
		cnt1 <= fram_in_down_reg != fram_in_down || cnt1 == 10'd1023 ? 10'd0 : cnt1 + 10'd1;
		fram_in_down_reg <= fram_in_down;
		sram_update_cnt <= nsram_update_cnt;
	end
end
assign fram_in_down = inbuf_icnt[8];

assign inbuf_oaddr = sram_update_cnt[8:1];

assign sram_iaddr = {~fram_in_down_reg , sram_update_cnt[8:1] };

assign nsram_update_cnt = fram_in_down_reg != fram_in_down ? 9'd0 : sram_update_cnt != 9'h1ff ? (cnt1 == 10'd1023 ? sram_update_cnt + 9'd1 : sram_update_cnt) : sram_update_cnt;

assign sram_ien = ~sram_update_cnt[0];


// sram_out & out block

always @(posedge GCK or posedge rst) begin
	if(rst) begin
		obcnt <= 16'd0;
		SL_cnt <= 5'd1;
		col_in_SL_cnt <= 5'd0;
		Vsync_reg <= 1'b0;
		round_flag <= 1'b0;
	end
	else begin
		Vsync_reg <= Vsync;
		
		if(Vsync) obcnt <= obcnt + 16'd1;
		else obcnt <= 16'd0;
		
		if(Vsync_reg & ~Vsync/*Vsync_negedge*/) SL_cnt <= SL_cnt + 5'd1;	
		
		if(~Vsync_reg & Vsync/*Vsync_posedge*/) col_in_SL_cnt <= 6'd0;
		else if(col_in_SL_cnt == 6'd32 ) col_in_SL_cnt <= col_in_SL_cnt;
		else col_in_SL_cnt <= col_in_SL_cnt + 6'd1;
	
		if(~Vsync_reg & Vsync/*Vsync_posedge*/ && SL_cnt == 5'd0) round_flag <= ~round_flag;	
		
	end
end

assign sram_oaddr = { SL_cnt, col_in_SL_cnt[4:1] };

assign obid_sel = ~mode ? 2'b00 : ~round_flag ? 2'b01 : 2'b10;

assign obs2p_addr = col_in_SL_cnt[4:1];
assign obs2p_ien = ~col_in_SL_cnt[5];


assign ob_pixel_reg_update = (Vsync_reg & ~Vsync/*Vsync_negedge*/);


endmodule














/*

ncverilog +ncmaxdelays testfixture_30fps.v LEDDC.v sram_256x16.v sram_512x16.v +access+r  +notimingchecks
ncverilog +ncmaxdelays testfixture_60fps.v LEDDC.v sram_256x16.v sram_512x16.v +access+r  +notimingchecks

ncverilog +ncmaxdelays testfixture_30fps.v LEDDC_syn.v sram_256x16.v sram_512x16.v -v tsmc13_neg.v +define+SDF 
ncverilog +ncmaxdelays testfixture_60fps.v LEDDC_syn.v sram_256x16.v sram_512x16.v -v tsmc13_neg.v +define+SDF 

*/


















