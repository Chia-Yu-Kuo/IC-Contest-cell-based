`timescale 1ns/10ps
module MBF(clk, reset, y_valid, z_valid, y, z);
input   clk;
input   reset;
output  y_valid;
output  z_valid;
output  [7:0]  y;
output  [7:0]  z;

// state & cnt
parameter	WAIT	= 3'd0;
parameter	WAIT0	= 3'd6;
parameter	WAIT1	= 3'd1;
parameter	R0	= 3'd2;
parameter	R1	= 3'd3;
parameter	IN0	= 3'd4;
parameter	DONE	= 3'd5;

reg [2:0] st, nst;
reg [9:0] addr, naddr;


always @ (posedge clk or posedge reset) begin
	if(reset) begin
		st <= WAIT;
	end
	else begin
		st <= nst;
	end
end
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		addr <= 10'd0;
	end
	else begin
		addr <= naddr;
	end
end

always @ (*) begin
	case(st)
	WAIT: nst = WAIT0;
	WAIT0: nst = WAIT1;
	WAIT1: nst = R0;
	R0: nst = R1;
	R1: nst = addr == 10'd1 ? IN0 : R0;
	IN0: nst = addr == 10'd17 ? DONE : IN0;
	default: nst = WAIT;
	endcase
end


always @ (*) begin
	naddr = st == WAIT ? 10'd0 : addr + 10'd1;
end

// ROM
wire [3:0] ROM_Q;
wire ROM_en;

rom_1024x4_t13 ROM( .Q(ROM_Q), .CLK(clk), .CEN(ROM_en), .A(addr) );

assign ROM_en = ~(st == WAIT1 || st == WAIT0 || st == R0 || st == R1);

// input logic & registers

integer i1, i2, i3;
reg signed [7:0] in_reg;
reg signed [15:0] D_reg_h [0:15];
reg signed [15:0] D_reg_l [0:15];

reg signed [17:0] product_h [0:15];
reg signed [17:0] product_l [0:15];

always @ (posedge clk or posedge reset) begin
	if(reset) begin
		in_reg <= 8'd0;
	end
	else if(nst == R0) begin
		in_reg[3:0] <= ROM_Q;
	end
	else if(nst == R1) begin
		in_reg[7:4] <= ROM_Q;
	end
	else if(nst == IN0) begin
		in_reg <= 8'd0;
	end
end

always @ (posedge clk or posedge reset) begin
	if(reset) begin
		for(i1=0; i1<16; i1=i1+1) begin
			D_reg_h[i1] <= 16'b0;
			D_reg_l[i1] <= 16'b0;
		end
	end
	else if(st == R1 || st == IN0) begin
		D_reg_h[15] <= $signed(product_h[15][16:1]) ;//+ $signed({ 15'b0, product_h[15][3] }) ;
		D_reg_l[15] <= $signed(product_l[15][16:1]) ;//+ $signed({ 15'b0, product_l[15][3] });
		for(i1=0; i1<15; i1=i1+1) begin
			D_reg_h[i1] <= $signed(product_h[i1][16:1]) + D_reg_h[i1+1] ;//+ $signed({ 15'b0, product_h[i1][3] });
			D_reg_l[i1] <= $signed(product_l[i1][16:1]) + D_reg_l[i1+1] ;//+ $signed({ 15'b0, product_l[i1][3] });
		end
	end
end

always @ (*) begin
/*
	// l mul
	product_l[0] = $signed(16'hFFF8) * in_reg;
	product_l[1] = $signed(16'hfff0) * in_reg;
	product_l[2] = $signed(16'h0020) * in_reg;
	product_l[3] = $signed(16'h0060) * in_reg;
	product_l[4] = $signed(16'hFF40) * in_reg;
	product_l[5] = $signed(16'hfec0) * in_reg;
	product_l[6] = $signed(16'h0280) * in_reg;
	product_l[7] = $signed(16'h0800) * in_reg;
	product_l[8] = $signed(16'h0800) * in_reg;
	product_l[9] = $signed(16'h0280) * in_reg;
	product_l[10] = $signed(16'hFFE0) * in_reg;
	product_l[11] = $signed(16'hff40) * in_reg;
	product_l[12] = $signed(16'h0060) * in_reg;
	product_l[13] = $signed(16'h0020) * in_reg;
	product_l[14] = $signed(16'hFFF0) * in_reg;
	product_l[15] = $signed(16'hfff8) * in_reg;

	// h mul
	product_h[0] = $signed(16'hFFF8) * in_reg;
	product_h[1] = $signed(16'h0010) * in_reg;
	product_h[2] = $signed(16'h0020) * in_reg;
	product_h[3] = $signed(16'hFFA0) * in_reg;
	product_h[4] = $signed(16'hFF40) * in_reg;
	product_h[5] = $signed(16'h0140) * in_reg;
	product_h[6] = $signed(16'h0280) * in_reg;
	product_h[7] = $signed(16'hF800) * in_reg;
	product_h[8] = $signed(16'h0800) * in_reg;
	product_h[9] = $signed(16'hFD80) * in_reg;
	product_h[10] = $signed(16'hFFE0) * in_reg;
	product_h[11] = $signed(16'h00C0) * in_reg;
	product_h[12] = $signed(16'h0060) * in_reg;
	product_h[13] = $signed(16'hFFE0) * in_reg;
	product_h[14] = $signed(16'hFFF0) * in_reg;
	product_h[15] = $signed(16'h0008) * in_reg;

*/

	// l mul
	product_l[0] = $signed(-10'h0001) * in_reg;
	product_l[1] = $signed(-10'h0002) * in_reg;
	product_l[2] = $signed( 10'h0004) * in_reg;
	product_l[3] = $signed( 10'h000C) * in_reg;
	product_l[4] = $signed(-10'h0018) * in_reg;
	product_l[5] = $signed(-10'h0028) * in_reg;
	product_l[6] = $signed( 10'h0050) * in_reg;
	product_l[7] = $signed( 10'h0100) * in_reg;
	product_l[8] = $signed( 10'h0100) * in_reg;
	product_l[9] = $signed( 10'h0050) * in_reg;
	product_l[10] = $signed(-10'h0028) * in_reg;
	product_l[11] = $signed(-10'h0018) * in_reg;
	product_l[12] = $signed( 10'h000c) * in_reg;
	product_l[13] = $signed( 10'h0004) * in_reg;
	product_l[14] = $signed(-10'h0002) * in_reg;
	product_l[15] = $signed(-10'h0001) * in_reg;

	// h mul
	product_h[0] = $signed(-10'h0001) * in_reg;
	product_h[1] = $signed( 10'h0002) * in_reg;
	product_h[2] = $signed( 10'h0004) * in_reg;
	product_h[3] = $signed(-10'h000c) * in_reg;
	product_h[4] = $signed(-10'h0018) * in_reg;
	product_h[5] = $signed( 10'h0028) * in_reg;
	product_h[6] = $signed( 10'h0050) * in_reg;
	product_h[7] = $signed(-10'h0100) * in_reg;
	product_h[8] = $signed( 10'h0100) * in_reg;
	product_h[9] = $signed(-10'h0050) * in_reg;
	product_h[10] = $signed(-10'h0028) * in_reg;
	product_h[11] = $signed( 10'h0018) * in_reg;
	product_h[12] = $signed( 10'h000c) * in_reg;
	product_h[13] = $signed(-10'h0004) * in_reg;
	product_h[14] = $signed(-10'h0002) * in_reg;
	product_h[15] = $signed( 10'h0001) * in_reg;

end

// output

assign y = D_reg_l[0][7] ? D_reg_l[0][15:8] + 8'd1 : D_reg_l[0][15:8];
assign z = D_reg_h[0][7] ? D_reg_h[0][15:8] + 8'd1 : D_reg_h[0][15:8];

assign y_valid = st == R0 && addr != 10'd2 || st == IN0;
assign z_valid = st == R0 && addr != 10'd2 || st == IN0;   


endmodule






























