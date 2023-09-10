`timescale 1ns/10ps
module GPSDC(clk, reset_n, DEN, LON_IN, LAT_IN, COS_ADDR, COS_DATA, ASIN_ADDR, ASIN_DATA, Valid, a, D);
input              clk;
input              reset_n;
input              DEN;
input      [23:0]  LON_IN;
input      [23:0]  LAT_IN;
input      [95:0]  COS_DATA;
output     [6:0]   COS_ADDR;
input      [127:0] ASIN_DATA;
output     [5:0]   ASIN_ADDR;
output             Valid;
output     [39:0]  D;
output     [63:0]  a;

integer i1, i2, i3, i4;


// state & cnt
parameter	IDLE		= 4'd0;
parameter	WAIT		= 4'd1;
parameter	SQRT_PH	= 4'd2;
parameter	COSA_TAB	= 4'd3;
parameter	COSA_LIN	= 4'd4;
parameter	SQRT_LAM	= 4'd5;
parameter	COSB_TAB	= 4'd6;
parameter	COSB_LIN	= 4'd7;
parameter	SUM_A		= 4'd8;
parameter	ARC_TAB	= 4'd10;
parameter	ARC_LIN	= 4'd11;
parameter	SUM_D		= 4'd12;
parameter	OUT		= 4'd13;
reg [3:0] st, nst;
reg [4:0] cnt, ncnt;


parameter LIN_TOTAL_CYCLE = 21;
parameter SUM_A_TOTAL_CYCLE = 11;
parameter SUM_D_TOTAL_CYCLE = 5;
parameter SQRT_TOTAL_CYCLE = 16;

// definition
// top
reg [23:0] lam_a, lam_b, ph_a, ph_b; // 8+16
parameter rad_const = 16'h0477; // 0+34
parameter R = 24'hc2a532; // 24+0
reg [29:0] ph_2_reg, lam_2_reg; // 18+32

reg [127:0] a_reg; // final: 0+64
reg [39:0] D_reg; // final: 8+32


// search block

reg [36:0] x0_reg, x1_reg; // s for search
// for cos 32bit0 + 32bit float
// for arc 64bit float

reg [46:0] y0_reg, y1_reg; // s for search
// for cos 32bit0 + 32bit float
// for arc 64bit float

wire [36:0] x;
// for cos 32bit0 + 32bit float
// for arc 64bit float
assign x = 	   st == COSA_TAB || st == COSA_LIN ? { 16'd0, 8'd0, ph_a, 16'd0 } :
		     st == COSB_TAB || st == COSB_LIN ? { 16'd0, 8'd0, ph_b, 16'd0 } : 
		     st == ARC_TAB || st == ARC_LIN ? a_reg : -64'd1;

wire [63:0] tab_in_x, tab_in_data;
assign tab_in_x = st == COSA_TAB || st == COSA_LIN || st == COSB_TAB || st == COSB_LIN ? { 16'd0, COS_DATA[95:48] } : ASIN_DATA[127:64];
assign tab_in_data = st == COSA_TAB || st == COSA_LIN || st == COSB_TAB || st == COSB_LIN ? { 16'd0, COS_DATA[47:0] } : ASIN_DATA[63:0];

reg [31:0] s_cmp_bit;

// search block's compare const
wire [36:0] cos_const [0:31];
wire [36:0] arcsin_const [0:31];

wire [6:0] table_addr_base;


// linear block
reg [82:0] y; // s for search
// for cos 32bit0 + 32bit float
// for arc 64bit float

//reg lin_done; // only high for 1 cycle when cal3->wait


always @ (posedge clk or negedge reset_n) begin
	if(~reset_n) begin
		st <= IDLE;
	end
	else begin
		st <= nst;
	end
end

always @ (*) begin
	case(st)
	IDLE : nst = DEN ? WAIT : IDLE;
	WAIT : nst = DEN ? SQRT_PH : WAIT;
	SQRT_PH : nst = cnt == SQRT_TOTAL_CYCLE ? COSA_TAB : SQRT_PH;
	COSA_TAB : nst = tab_in_x > x || cnt > 6 ? COSA_LIN : COSA_TAB;
	COSA_LIN : nst = cnt == LIN_TOTAL_CYCLE ? SQRT_LAM : COSA_LIN;
	SQRT_LAM : nst = cnt == SQRT_TOTAL_CYCLE ? COSB_TAB : SQRT_LAM;
	COSB_TAB : nst = tab_in_x > x || cnt > 6 ? COSB_LIN : COSB_TAB;
	COSB_LIN : nst = cnt == LIN_TOTAL_CYCLE ? SUM_A : COSB_LIN;
	SUM_A : nst = cnt == SUM_A_TOTAL_CYCLE ? ARC_TAB : SUM_A;
	ARC_TAB : nst = tab_in_x > x || cnt > 4 ? ARC_LIN : ARC_TAB;
	ARC_LIN : nst = cnt == LIN_TOTAL_CYCLE ? SUM_D : ARC_LIN;
	SUM_D : nst = cnt == SUM_D_TOTAL_CYCLE ? OUT : SUM_D;
	OUT : nst = WAIT;
	default: nst = IDLE; 
	endcase
end
always @ (posedge clk or negedge reset_n) begin
	if(~reset_n) begin
		cnt <= 5'd0;
	end
	else begin
		cnt <= st != nst ? 5'd0 : cnt + 5'd1;
	end
end

wire [16:0] dist_ph, dist_lam;
assign dist_ph = ph_b[16:0] > ph_a[16:0] ? ph_b[16:0] - ph_a[16:0] : ph_a[16:0] - ph_b[16:0];
assign dist_lam = lam_b[16:0] > lam_a[16:0] ? lam_b[16:0] - lam_a[16:0] : lam_a[16:0] - lam_b[16:0];


// sqrare block
always @ (posedge clk or negedge reset_n) begin
	if(~reset_n) begin
		ph_2_reg <= 30'd0;
		lam_2_reg <= 30'd0;
		lam_a <= { 7'b0111100, 17'd0 };
		lam_b <= { 7'b0111100, 17'd0 };
		ph_a <= { 12'h18C, 12'd0 };
		ph_b <= { 12'h18C, 12'd0 };
	end
	else begin
		case(st)		
		WAIT, IDLE: begin
			if(DEN) begin
				lam_a <= { 7'b0111100, lam_b[16:0] };
				lam_b <= { 7'b0111100, LON_IN[16:0] };
				ph_a <= { 12'h18C, ph_b[11:0] };
				ph_b <= { 12'h18C, LAT_IN[11:0] };
			end
		end
		SQRT_PH: begin
			if(cnt < 5) ph_2_reg <= cnt == 4 ? (dist_ph * rad_const) >> 1 : ph_2_reg; // 8+32 
			if(nst != SQRT_PH) ph_2_reg <= (ph_2_reg * ph_2_reg); // 0+64 
		end
		SQRT_LAM: begin
			if(cnt < 5) lam_2_reg <= cnt == 4 ? (dist_lam * rad_const) >> 1 : lam_2_reg; // 8+33 
			if(nst != SQRT_LAM) lam_2_reg <= (lam_2_reg * lam_2_reg); // 0+66 
		end
		endcase
	end
end


// search block
/*
always @(*) begin
	for(i1=0; i1<32; i1=i1+1) begin
		s_cmp_bit[i1] = (st == COSA_TAB || st == COSA_LIN || st == COSB_TAB || st == COSB_LIN || st == SUM_A) ? cos_const[i1] > x : arcsin_const > x; 
	end
end*/

/*
reg [63:0] x0_reg, x1_reg; // s for search
// for cos 32bit0 + 32bit float
// for arc 64bit float
*/

always @ (posedge clk or negedge reset_n) begin
	if(~reset_n) begin
		x0_reg <= 64'd0;
		y0_reg <= 64'd0;
		x1_reg <= 64'd0;
		y1_reg <= 64'd0;
	end
	else if(st==COSA_TAB || st==COSB_TAB || st==ARC_TAB) begin
		x1_reg <= tab_in_x;
		y1_reg <= tab_in_data;
		x0_reg <= x1_reg;
		y0_reg <= y1_reg;


	end
end


assign COS_ADDR = table_addr_base + cnt;
assign ASIN_ADDR = table_addr_base + cnt;

assign table_addr_base = 
		(st == COSA_TAB || st == COSA_LIN || st == COSB_TAB || st == COSB_LIN || st == SUM_A) ? // cos
		(
			cos_const[1] >= x ? {5'd0, 2'd0} : 
			cos_const[2] >= x ? {5'd1, 2'd0} :
			cos_const[3] >= x ? {5'd2, 2'd0} : 
			cos_const[4] >= x ? {5'd3, 2'd0} :
			cos_const[5] >= x ? {5'd4, 2'd0} : 
			cos_const[6] >= x ? {5'd5, 2'd0} :
			cos_const[7] >= x ? {5'd6, 2'd0} : 
			cos_const[8] >= x ? {5'd7, 2'd0} :  
			cos_const[9] >= x ? {5'd8, 2'd0} :
			cos_const[10] >= x ? {5'd9, 2'd0} : 
			cos_const[11] >= x ? {5'd10, 2'd0} :
			cos_const[12] >= x ? {5'd11, 2'd0} : 
			cos_const[13] >= x ? {5'd12, 2'd0} :
			cos_const[14] >= x ? {5'd13, 2'd0} : 
			cos_const[15] >= x ? {5'd14, 2'd0} :
			cos_const[16] >= x ? {5'd15, 2'd0} : 
			cos_const[17] >= x ? {5'd16, 2'd0} :
			cos_const[18] >= x ? {5'd17, 2'd0} : 
			cos_const[19] >= x ? {5'd18, 2'd0} :
			cos_const[20] >= x ? {5'd19, 2'd0} : 
			cos_const[21] >= x ? {5'd20, 2'd0} :
			cos_const[22] >= x ? {5'd21, 2'd0} : 
			cos_const[23] >= x ? {5'd22, 2'd0} :
			cos_const[24] >= x ? {5'd23, 2'd0} : 
			cos_const[25] >= x ? {5'd24, 2'd0} :
			cos_const[26] >= x ? {5'd25, 2'd0} : 
			cos_const[27] >= x ? {5'd26, 2'd0} :
			cos_const[28] >= x ? {5'd27, 2'd0} : 
			cos_const[29] >= x ? {5'd28, 2'd0} :
			cos_const[30] >= x ? {5'd29, 2'd0} : {5'd30, 2'd0} 
	
		) : // arcsin
		(
			arcsin_const[1] >= x ? {6'd0, 1'd0} : 
			arcsin_const[2] >= x ? {6'd1, 1'd0} :
			arcsin_const[3] >= x ? {6'd2, 1'd0} : 
			arcsin_const[4] >= x ? {6'd3, 1'd0} :
			arcsin_const[5] >= x ? {6'd4, 1'd0} : 
			arcsin_const[6] >= x ? {6'd5, 1'd0} :
			arcsin_const[7] >= x ? {6'd6, 1'd0} : 
			arcsin_const[8] >= x ? {6'd7, 1'd0} :  
			arcsin_const[9] >= x ? {6'd8, 1'd0} :
			arcsin_const[10] >= x ? {6'd9, 1'd0} : 
			arcsin_const[11] >= x ? {6'd10, 1'd0} :
			arcsin_const[12] >= x ? {6'd11, 1'd0} : 
			arcsin_const[13] >= x ? {6'd12, 1'd0} :
			arcsin_const[14] >= x ? {6'd13, 1'd0} : 
			arcsin_const[15] >= x ? {6'd14, 1'd0} :
			arcsin_const[16] >= x ? {6'd15, 1'd0} : 
			arcsin_const[17] >= x ? {6'd16, 1'd0} :
			arcsin_const[18] >= x ? {6'd17, 1'd0} : 
			arcsin_const[19] >= x ? {6'd18, 1'd0} :
			arcsin_const[20] >= x ? {6'd19, 1'd0} : 
			arcsin_const[21] >= x ? {6'd20, 1'd0} :
			arcsin_const[22] >= x ? {6'd21, 1'd0} : 
			arcsin_const[23] >= x ? {6'd22, 1'd0} :
			arcsin_const[24] >= x ? {6'd23, 1'd0} : 
			arcsin_const[25] >= x ? {6'd24, 1'd0} :
			arcsin_const[26] >= x ? {6'd25, 1'd0} : 
			arcsin_const[27] >= x ? {6'd26, 1'd0} :
			arcsin_const[28] >= x ? {6'd27, 1'd0} : 
			arcsin_const[29] >= x ? {6'd28, 1'd0} :
			arcsin_const[30] >= x ? {6'd29, 1'd0} : {6'd30, 1'd0} 
		);




// linear block
// x0 & x1 & y0 & y1
// for cos 32bit0 + 32bit float
// for arc 64bit float



always @ (posedge clk or negedge reset_n) begin
	if(~reset_n) begin
		y <= 47'd0;
	end
	else if(st==COSA_LIN || st==COSB_LIN) begin
		if(cnt < 5) begin // y = y0*(x1-x0)
			y <= cnt == 4 ? y0_reg*(x1_reg-x0_reg) : y; // 16+32*16+32 COS: 32+64
		end
		else if(cnt < 10) begin // y += (y1-y0)*(x-x0)
			y <= cnt == 9 ? y + (y1_reg-y0_reg)*(x-x0_reg) : y; // COS: 32+64
		end
		else if(cnt < 20) begin //  y /= (x1-x0) 32+64/16+32 -> 32+64
			y <= cnt == 19 ? (y << 32) / (x1_reg-x0_reg) : y; // 63bit0 + 33 + 64 == 96+64
		end
	end
	else if(st==ARC_LIN) begin
		if(cnt < 5) begin // y = y0*(x1-x0)
			y <= cnt == 4 ? y0_reg*(x1_reg-x0_reg) : y; // ARCSIN: 0+128
		end
		else if(cnt < 10) begin // y += (y1-y0)*(x-x0)
			y <= cnt == 9 ? y + (y1_reg-y0_reg)*(x-x0_reg) : y; // ARCSIN: 0+128
		end
		else if(cnt < 20) begin //  y /= (x1-x0)
			y <= cnt == 19 ? y / (x1_reg-x0_reg) : y; //63bit0+1+64 == 64+64
		end
	end
end

wire [61:0] mul;
assign mul = $unsigned(lam_2_reg) * $unsigned(a_reg); // 0+64*0+128 = 0+192

//sum
always @ (posedge clk or negedge reset_n) begin
	if(~reset_n) begin
		a_reg <= 128'd0;
		D_reg <= 40'd0;
	end
	else if(nst == SQRT_LAM && st == COSA_LIN) begin
		a_reg <= y; // 0+64
	end
	else if(st == SUM_A) begin
	
		if(cnt == 4) a_reg <= y * a_reg >> 95; // 0+128
		else if(cnt == 9) a_reg <= ( mul ) >> 33; // 0+64
		else if(cnt == 11) a_reg <= (a_reg + ph_2_reg); //0+64 

	end
	else if(nst == SUM_D && st == ARC_TAB) begin
		D_reg <= R;
	end
	else if(nst == SUM_D && st == ARC_LIN) begin
		D_reg <= R;
	end
	else if(st == SUM_D) begin
		if(cnt == 4) D_reg <= ((y * D_reg) >> 32); // 24+64 -> 8+32
	end
end

assign a = a_reg;
assign D = D_reg;

assign Valid = st == OUT; 




// table constant
// cos

assign cos_const[0] = 48'h18C7AE147A;
assign cos_const[1] = 48'h18C7C78E9F;
assign cos_const[2] = 48'h18C7E108C3;
assign cos_const[3] = 48'h18C7FA82E8; 
assign cos_const[4] = 48'h18C813FD0D; 
assign cos_const[5] = 48'h18C82D7731;
assign cos_const[6] = 48'h18C846F156;
assign cos_const[7] = 48'h18C8606B7A;
assign cos_const[8] = 48'h18C879E59F; 
assign cos_const[9] = 48'h18C8935FC3;
assign cos_const[10] = 48'h18C8ACD9E8;
assign cos_const[11] = 48'h18C8C6540C;
assign cos_const[12] = 48'h18C8DFCE31; 
assign cos_const[13] = 48'h18C8F94855;
assign cos_const[14] = 48'h18C912C27A;
assign cos_const[15] = 48'h18C92C3C9E;
assign cos_const[16] = 48'h18C945B6C3;
assign cos_const[17] = 48'h18C95F30E7;
assign cos_const[18] = 48'h18C978AB0C;
assign cos_const[19] = 48'h18C9922531;
assign cos_const[20] = 48'h18C9AB9F55; 
assign cos_const[21] = 48'h18C9C5197A;
assign cos_const[22] = 48'h18C9DE939E;
assign cos_const[23] = 48'h18C9F80DC3;
assign cos_const[24] = 48'h18CA1187E7;
assign cos_const[25] = 48'h18CA2B020C;
assign cos_const[26] = 48'h18CA447C30;
assign cos_const[27] = 48'h18CA5DF655;
assign cos_const[28] = 48'h18CA777079;
assign cos_const[29] = 48'h18CA90EA9E;
assign cos_const[30] = 48'h18CAAA64C2;
assign cos_const[31] = 48'h18CAC3DEE7;



//arsin
assign arcsin_const[0] = 64'h000000000000;
assign arcsin_const[1] = 64'h0000010aa60a;
assign arcsin_const[2] = 64'h000002154c14;
assign arcsin_const[3] = 64'h0000031ff21e;
assign arcsin_const[4] = 64'h0000042a9828;
assign arcsin_const[5] = 64'h000005353e32;
assign arcsin_const[6] = 64'h0000063fe43c;
assign arcsin_const[7] = 64'h0000074a8a46;
assign arcsin_const[8] = 64'h000008553050;
assign arcsin_const[9] = 64'h0000095fd65a;
assign arcsin_const[10] = 64'h00000a6a7c64;
assign arcsin_const[11] = 64'h00000b75226e;
assign arcsin_const[12] = 64'h00000c7fc878; 
assign arcsin_const[13] = 64'h00000d8a6e82;
assign arcsin_const[14] = 64'h00000e95148c; 
assign arcsin_const[15] = 64'h00000f9fba96;
assign arcsin_const[16] = 64'h000010aa60a0;
assign arcsin_const[17] = 64'h000011b506aa;
assign arcsin_const[18] = 64'h000012bfacb4;
assign arcsin_const[19] = 64'h000013ca52be;
assign arcsin_const[20] = 64'h000014d4f8c8;
assign arcsin_const[21] = 64'h000015df9ed2;
assign arcsin_const[22] = 64'h000016ea44dc;
assign arcsin_const[23] = 64'h000017f4eae6;
assign arcsin_const[24] = 64'h000018ff90f0;
assign arcsin_const[25] = 64'h00001a0a36fa;
assign arcsin_const[26] = 64'h00001b14dd04;
assign arcsin_const[27] = 64'h00001c1f830e;
assign arcsin_const[28] = 64'h00001d2a2918;
assign arcsin_const[29] = 64'h00001e34cf22;
assign arcsin_const[30] = 64'h00001f3f752c;
assign arcsin_const[31] = 64'h0000204a1b36;

endmodule





/*

ncverilog testbench.v GPSDC.v +access+r +define+FSDB

ncverilog testbench.v GPSDC_syn.v -v tsmc13_neg.v +define+SDF

*/



























