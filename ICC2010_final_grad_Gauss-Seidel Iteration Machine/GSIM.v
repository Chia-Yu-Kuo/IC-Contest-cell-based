module GSIM ( clk, reset, in_en, b_in, out_valid, x_out);
input   clk ;
input   reset ;
input   in_en;
output  out_valid;
input   [15:0]  b_in;
output  [31:0]  x_out;

parameter TOTAL_ITR = 8'h4f;
/*
initial begin
$fsdbDumpvars;
$fsdbDumpMDA;
end
*/
// state & cnt
parameter	WAIT		= 3'd0;
parameter	READ		= 3'd1;
parameter	UP_R_CNT	= 3'd2;
parameter	CAL		= 3'd3;
parameter	NEW_ITR		= 3'd4;
parameter	OUT		= 3'd5;
reg [2:0] st, nst;
reg [4:0] cnt, ncnt;
reg [4:0] Rcnt, nRcnt;
reg [7:0] ITRcnt, nITRcnt;

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
		cnt <= 5'd0;
		Rcnt <= 5'd0;
		ITRcnt <= 16'd0;
	end
	else begin
		cnt <= ncnt;
		Rcnt <= nRcnt;
		ITRcnt <= nITRcnt;
	end
end

always @ (*) begin
	case(st)
	WAIT: nst = in_en ? READ : WAIT;
	READ: nst = cnt == 5'd15 ? UP_R_CNT : READ;
	UP_R_CNT: nst = CAL;
	CAL: nst = 	cnt != 5'd7 ? CAL :
			Rcnt != 5'd15 ? UP_R_CNT :
			ITRcnt != TOTAL_ITR ? NEW_ITR : OUT ;
	NEW_ITR: nst = CAL;
	OUT: nst = cnt == 5'd15 ? WAIT : OUT;
	default: nst = WAIT;
	endcase
end


always @ (*) begin
	ncnt = st != nst ? 5'd0 : cnt + 5'd1;
	nRcnt = st == CAL && nst == UP_R_CNT ? Rcnt + 5'd1 : 
		st == NEW_ITR ? 5'd0 : Rcnt;
	nITRcnt = st == NEW_ITR ? ITRcnt + 5'd1 : ITRcnt;
end



// input logic & registers

integer i1, i2;
reg [15:0] in_reg;
reg signed [15:0] b_reg [0:15];
reg signed [31:0] x_reg [0:15];
reg signed [65:0] temp_reg, temp;

always @ (posedge clk or posedge reset) begin
	if(reset) begin
		in_reg <= 16'd0;
	end
	else begin
		in_reg <= b_in;
	end
end
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		for(i1 = 0; i1<16; i1 = i1+1) begin
			b_reg[i1] <= 16'd0;
		end
	end
	else if(st == READ) begin
		b_reg[cnt] <= in_reg;
	end
end
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		
/*		x_reg[0] <=  32'h000C_6667;
		x_reg[1] <= -32'h0022_199a;
		x_reg[2] <=  32'h04d3_8000;
		x_reg[3] <= -32'h01e1_3333;
		x_reg[4] <= -32'h00a5_a667;
		x_reg[5] <=  32'h05ee_d999;
		x_reg[6] <= -32'h05db_cccd;
		x_reg[7] <=  32'h060d_c000;
		x_reg[8] <= -32'h03fa_6667;
		x_reg[9] <=  32'h0223_999a;
		x_reg[10] <=  32'h011b_4000;
		x_reg[11] <=  32'h023d_cccd;
		x_reg[12] <= -32'h01c7_6667;
		x_reg[13] <=  32'h018a_199a;
		x_reg[14] <=  32'h03fb_8ccd;
		x_reg[15] <= -32'h0627_4000;*/
		

// 4
		
		x_reg[0] <=  32'h075c_0000;
		x_reg[1] <=  32'h009b_0000;
		x_reg[2] <= -32'h0b78_0000;
		x_reg[3] <= -32'h07a8_0000;
		x_reg[4] <= -32'h000e_0000;
		x_reg[5] <= -32'h0cb9_0000;
		x_reg[6] <= -32'h10cb_0000;
		x_reg[7] <= -32'h054d_0000;
		x_reg[8] <=  32'h12ec_0000;
		x_reg[9] <=  32'h1286_0000;
		x_reg[10] <=  32'h068e_0000;
		x_reg[11] <= -32'h08f3_0000;
		x_reg[12] <= -32'h0fc6_0000;
		//x_reg[13] <= -32'h0d90_0000;
		x_reg[13] <= -32'h0ca0_0000;
		x_reg[14] <= -32'h1600_0000;
		//x_reg[14] <= -32'h1478_0000;
		x_reg[15] <= -32'h0f82_0000;
		//x_reg[15] <= -32'h08ee_0000;

		/*x_reg[0] <= -32'h08c8_0000;
		x_reg[1] <= -32'h14ef_0000;
		x_reg[2] <= -32'h1818_0000;
		x_reg[3] <= -32'h16e7_0000;
		x_reg[4] <= -32'h1433_0000;
		x_reg[5] <= -32'h1348_0000;
		x_reg[6] <= -32'h1257_0000;
		x_reg[7] <= -32'h0859_0000;
		x_reg[8] <=  32'h1286_0000;
		x_reg[9] <=  32'h1a6e_0000;
		x_reg[10] <=  32'h08fa_4000;
		x_reg[11] <= -32'h0480_0000;
		x_reg[12] <= -32'h019e_0000;
		x_reg[13] <=  32'h06ac_0000;
		x_reg[14] <= -32'h02e1_0000;
		x_reg[15] <= -32'h08ee_0000;
		
		/*for(i2 = 0; i2<16; i2 = i2+1) begin
			x_reg[i2] <= 32'd1;
		end*/
		
	end
	else if(st == CAL && nst != CAL) begin
		x_reg[Rcnt] <= temp[61:30];
	end
end
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		temp_reg <= 66'd0;
	end
	else begin
		temp_reg <= temp;
	end
end


// cal logic
wire [4:0] posx;
assign posx = Rcnt - 5'd3 + cnt;
wire is_posx_neg;
assign is_posx_neg = posx[4];

reg signed [31:0] coef;
always @ (*) begin
	case(cnt)
	5'd0, 5'd6: coef = -32'd1;
	5'd1, 5'd5: coef =  32'd6;
	5'd2, 5'd4: coef = -32'd13;
	5'd3: coef = 32'd0;
	//5'd7: coef = 32'h0CCC_CCCD;
	5'd7: coef = 32'h1999_999A;
	default: coef = 32'd0;
	endcase
end

wire signed [65:0] product;
reg signed [31:0] mul1, mul2;
assign product = mul1 * mul2;

always @ (*) begin
	if(st == CAL) begin
		if(cnt != 5'd7) begin
			if(is_posx_neg) begin
				mul1 = 32'd0;
				mul2 = coef;
				temp = temp_reg;
			end
			else begin
				mul1 = x_reg[posx];
				mul2 = coef;
				temp = $signed(temp_reg) - $signed(product);
			end
		end
		else begin // devide
			mul1 = temp_reg[34:3] + { 31'd0 ,temp_reg[2]};
			mul2 = coef;
			temp = product;
		end
	end
	else if(st == UP_R_CNT || st == NEW_ITR) begin
		temp = $signed({ b_reg[nRcnt], 16'd0 });
		mul1 = 32'd0;
		mul2 = 32'd0;
	end
	else begin
		mul1 = 32'd0;
		mul2 = 32'd0;
		temp = temp_reg;
	end
end

// out logic
assign x_out = x_reg[cnt];
assign out_valid = st == OUT;

endmodule



/*

ncverilog testfixture1.v GSIM.v +access+r

ncverilog testfixture1.v GSIM_syn.v -v tsmc13_neg.v +define+SDF +access+r



*/









