`timescale 1ns/10ps
module RFILE(clk, rst, A_x, A_y, B_x, B_y, C_x, C_y, rssiA, rssiB, rssiC, valueA, valueB, valueC, expA, expB, expC, busy, out_valid, xt, yt);
input           clk;
input           rst;
input  [7:0]    A_x;
input  [7:0]    A_y; 
input  [7:0]    B_x; 
input  [7:0]    B_y; 
input  [7:0]    C_x; 
input  [7:0]    C_y;
input  [19:0]   rssiA;
input  [19:0]   rssiB;
input  [19:0]   rssiC;
input  [15:0]   valueA;
input  [15:0]   valueB;
input  [15:0]   valueC;
output [11:0]   expA;
output [11:0]   expB;
output [11:0]   expC;
output          busy;
output          out_valid;
output [7:0]    xt;
output [7:0]    yt;

parameter	DIV_CYCLEABC	= 4;
parameter	DIV_CYCLEXY	= 3;
parameter	MUL_CYCLE	= 15;



// state & cnt
parameter	WAIT_H		= 4'd0;
parameter	WAIT_L		= 4'd1;
parameter	CAL_CONST	= 4'd2;
parameter	CAL_X_UP	= 4'd3;
parameter	CAL_X_DIV	= 4'd4;
parameter	CAL_DI		= 4'd5;
parameter	CAL_DIxDF	= 4'd6;
parameter	CAL_D2		= 4'd7;
parameter	CAL_C		= 4'd8;
parameter	CAL_DELTA_XY	= 4'd9;
parameter	CAL_XT_YT_DIV	= 4'd10;
parameter	OUT		= 4'd11;

reg [3:0] st, nst;
reg [3:0] cnt;

// registers
reg signed [8:0] a1, a2, b1, b2;
reg signed [16:0] c10, c20;
reg signed [17:0] delta;
reg signed [17:0] c1, c2;

reg [19:0] x_up_a, x_up_b, x_up_c; // 8+12

reg [14:0] x_a, x_b, x_c; // 3+12
wire [2:0] xi_a, xi_b, xi_c; // 3+0
wire [11:0] xf_a, xf_b, xf_c; // 0+12
assign xi_a = x_a[14:12];
assign xi_b = x_b[14:12];
assign xi_c = x_c[14:12];
assign xf_a = x_a[11:0];
assign xf_b = x_b[11:0];
assign xf_c = x_c[11:0];

reg [6:0] di_a, di_b, di_c; // 7+0
wire [11:0] df_a, df_b, df_c; // 4+8
assign df_a = valueA[15:4];
assign df_b = valueB[15:4];
assign df_c = valueC[15:4];

reg [18:0] d_a, d_b, d_c; // 11+8
wire [8:0] dshort_a, dshort_b, dshort_c; // 9+0
assign dshort_a = d_a[16:8] + d_a[7]; 
assign dshort_b = d_b[16:8] + d_b[7]; 
assign dshort_c = d_c[16:8] + d_c[7]; 
reg [17:0] d2_a, d2_b, d2_c; // 18+0

reg signed [25:0] delta_x, delta_y;
reg [7:0] xt_reg, yt_reg;



always @ (posedge clk or posedge rst) begin
	if(rst) begin
		st <= WAIT_H;
	end
	else begin
		st <= nst;
	end
end
always @ (*) begin
	case(st)
	WAIT_H: nst = WAIT_L;
	WAIT_L: nst = CAL_CONST;
	CAL_CONST: nst = cnt == 4'd1 ? CAL_X_UP : CAL_CONST;
	CAL_X_UP: nst = CAL_X_DIV;
	CAL_X_DIV: nst = cnt==DIV_CYCLEABC ? CAL_DI : CAL_X_DIV;
	//CAL_DI: nst = cnt==4'd1 ? CAL_DIxDF : CAL_DI;
	CAL_DI: nst = CAL_DIxDF;
	CAL_DIxDF: nst = cnt==MUL_CYCLE ? CAL_D2 : CAL_DIxDF;
	CAL_D2: nst = cnt==MUL_CYCLE ? CAL_C : CAL_D2;
	CAL_C: nst = CAL_DELTA_XY;
	CAL_DELTA_XY: nst = cnt==MUL_CYCLE ? CAL_XT_YT_DIV : CAL_DELTA_XY;
	CAL_XT_YT_DIV: nst = cnt==DIV_CYCLEXY ? OUT : CAL_XT_YT_DIV;
	OUT: nst = CAL_X_UP;
	default: nst = WAIT_L;
	endcase
end

always @ (posedge clk or posedge rst) begin
	if(rst) begin
		cnt <= 4'd0;
	end
	else begin
		cnt <= st != nst ? 4'd0 : cnt + 4'd1;
	end
end

wire load_div1;
wire [19:0] dividand1_a, dividand1_b, dividand1_c;
wire [15:0] q1_a, q1_b, q1_c;
divider_4stage_20_5_to_16bit div1_a (.clk(clk), .load(load_div1), .dividand(dividand1_a), .dividor(5'd20), .q(q1_a));
divider_4stage_20_5_to_16bit div1_b (.clk(clk), .load(load_div1), .dividand(dividand1_b), .dividor(5'd20), .q(q1_b));
divider_4stage_20_5_to_16bit div1_c (.clk(clk), .load(load_div1), .dividand(dividand1_c), .dividor(5'd20), .q(q1_c));
assign dividand1_a = x_up_a;
assign dividand1_b = x_up_b;
assign dividand1_c = x_up_c;
assign load_div1 = st == CAL_X_DIV && cnt == 4'd0;

wire load_div2;
wire [25:0] dividand2_x, dividand2_y;
wire [17:0] dividor2_x, dividor2_y;
wire [8:0] q2_x, q2_y;
divider_3stage_26_18_to_9bit_signed div2_x (.clk(clk), .load(load_div2), .dividand(dividand2_x), .dividor(dividor2_x), .q(q2_x), .dividand_sign(dividand2_x[25]), .dividor_sign(dividor2_x[17]));
divider_3stage_26_18_to_9bit_signed div2_y (.clk(clk), .load(load_div2), .dividand(dividand2_y), .dividor(dividor2_y), .q(q2_y), .dividand_sign(dividand2_y[25]), .dividor_sign(dividor2_y[17]));
assign dividand2_x = delta_x;
assign dividand2_y = delta_y;
assign dividor2_x = delta;
assign dividor2_y = delta;
assign load_div2 = st == CAL_XT_YT_DIV && cnt == 4'd0;


always @ (posedge clk) begin
	case(st)
	
	CAL_CONST: begin
		if(cnt == 4'd0) begin
			a1 <= { (B_x - A_x), 1'b0 };
			a2 <= { (C_x - A_x), 1'b0 };
			b1 <= { (B_y - A_y), 1'b0 };
			b2 <= { (C_y - A_y), 1'b0 };
		end
		else begin
			delta <= a1*b2 - a2*b1;
			c10 <= $signed(B_x + A_x)*$signed(a1[8:1]) + $signed(B_y + A_y)*$signed(b1[8:1]);
			c20 <= $signed(C_x + A_x)*$signed(a2[8:1]) + $signed(C_y + A_y)*$signed(b2[8:1]);
		end
	end
	CAL_X_UP: begin
		x_up_a <= -rssiA - { 8'd59, 12'd0 } ;
		x_up_b <= -rssiB - { 8'd59, 12'd0 } ;
		x_up_c <= -rssiC - { 8'd59, 12'd0 } ;
	end
	CAL_X_DIV: begin
		if(nst != CAL_X_DIV) begin
			x_a <= q1_a;
			x_b <= q1_b;
			x_c <= q1_c;

			di_a <= 7'd1;
			di_b <= 7'd1;
			di_c <= 7'd1;
		end
	end
	CAL_DI: begin
		if(cnt[2:0] < xi_a) di_a <= di_a * 10;
		if(cnt[2:0] < xi_b) di_b <= di_b * 10;
		if(cnt[2:0] < xi_c) di_c <= di_c * 10;			
	end
	CAL_DIxDF: begin
		if(nst != CAL_DIxDF) begin
			d_a <= di_a * df_a;
			d_b <= di_b * df_b;
			d_c <= di_c * df_c;
		end		
	end
	CAL_D2: begin
		if(nst != CAL_D2) begin
			d2_a <= dshort_a * dshort_a;
			d2_b <= dshort_b * dshort_b;
			d2_c <= dshort_c * dshort_c;
		end
	end
	CAL_C: begin
		c1 <= $signed(d2_a) - $signed(d2_b) + $signed(c10);
		c2 <= $signed(d2_a) - $signed(d2_c) + $signed(c20);
	end
	CAL_DELTA_XY: begin
		if(nst != CAL_DELTA_XY) begin
			delta_x <= c1 * b2 - c2 * b1;
			delta_y <= a1 * c2 - a2 * c1;
		end
	end
	CAL_XT_YT_DIV: begin
		if(nst != CAL_XT_YT_DIV) begin
			xt_reg <= q2_x;
			yt_reg <= q2_y;
		end
	end
	endcase
end

// output logic

assign expA = xf_a;
assign expB = xf_b;
assign expC = xf_c;
assign busy = ~(st==WAIT_L || st==OUT);
assign out_valid = st==OUT;

assign xt = xt_reg;
assign yt = yt_reg;






endmodule



/*

ncverilog +ncmaxdelays testfixture.v RFILE.v +define+PAT1 +access+r


ncverilog +ncmaxdelays testfixture.v RFILE_syn.v -v tsmc13_neg.v +define+PAT1+SDF





*/




module divider_4stage_20_5_to_16bit (clk, load, dividand, dividor, q);
input clk;
input load;
input [19:0] dividand; // 20 (8+12)
input [4:0] dividor; // 5
output [15:0] q; // 16 (4+12)

parameter times = 4;
parameter dandsize = 20;
parameter diorsize = 5;
parameter qsize = 16;
parameter stage_num = 4;

reg [2:0] cnt;
reg [15:0] q_reg; // must be 4*times

// size = dand size
wire [(dandsize-1):0] dand0, dior0; // stage0 wire
wire [(dandsize-1):0] dand1, dior1; // stage1 wire
wire [(dandsize-1):0] dand2, dior2; // stage2 wire
wire [(dandsize-1):0] dand3, dior3; // stage2 wire
reg  [(dandsize-1):0] dand4, dior4; // feedback register

wire q_stage_0, q_stage_1, q_stage_2, q_stage_3;







// stage0
assign dand0 = load ? dividand : dand4;
assign dior0 = load ? { dividor, {(dandsize-diorsize){1'b0}} } : dior4 ;
assign q_stage_0 = dand0 >= dior0;

// stage1
assign dand1 = dand0 >= dior0 ? dand0-dior0 : dand0;
assign dior1 = { 1'b0, dior0[(dandsize-1):1] };
assign q_stage_1 = dand1 >= dior1;

// stage2
assign dand2 = dand1 >= dior1 ? dand1-dior1 : dand1;
assign dior2 = { 1'b0, dior1[(dandsize-1):1] };
assign q_stage_2 = dand2 >= dior2;

// stage3
assign dand3 = dand2 >= dior2 ? dand2-dior2 : dand2;
assign dior3 = { 1'b0, dior2[(dandsize-1):1] };
assign q_stage_3 = dand3 >= dior3;

// stage4
always @ (posedge clk) begin
	if(load) begin
		dand4 <= dand3 >= dior3 ? dand3-dior3 : dand3;
		dior4 <= { 1'b0, dior3[(dandsize-1):1] };

		cnt <= 3'd1;		
		q_reg <= { {(qsize-stage_num){1'b0}}, q_stage_0, q_stage_1, q_stage_2, q_stage_3 } ;
	end
	else if(cnt < times) begin
		cnt <= cnt + 3'd1;
		dand4 <= dand3 >= dior3 ? dand3-dior3 : dand3;
		dior4 <= { 1'b0, dior3[(dandsize-1):1] };
		q_reg <= { q_reg[(qsize-stage_num-1):0], q_stage_0, q_stage_1, q_stage_2, q_stage_3 } ;
	end
	// else keep
end


assign q = q_reg;

endmodule


module divider_3stage_26_18_to_9bit_signed (clk, load, dividand, dividor, q, dividand_sign, dividor_sign);
input clk;
input load;
input dividand_sign;
input dividor_sign;
input [25:0] dividand; // 26
input [17:0] dividor; // 18
output [8:0] q; // 9

wire [25:0] dividand_abs;
wire [17:0] dividor_abs; 
assign dividand_abs = dividand_sign ? -dividand : dividand;
assign dividor_abs = dividor_sign ? -dividor : dividor; 

parameter times = 3;
parameter dandsize = 26;
parameter diorsize = 18;
parameter qsize = 9;
parameter stage_num = 3;

reg [2:0] cnt;
reg [8:0] q_reg; // must be 4*times

// size = dand size
wire [(dandsize-1):0] dand0, dior0; // stage0 wire
wire [(dandsize-1):0] dand1, dior1; // stage1 wire
wire [(dandsize-1):0] dand2, dior2; // stage2 wire
reg  [(dandsize-1):0] dand3, dior3; // feedback register

wire q_stage_0, q_stage_1, q_stage_2;


// stage0
assign dand0 = load ? dividand_abs : dand3;
assign dior0 = load ? { dividor_abs, {(dandsize-diorsize){1'b0}} } : dior3 ;
assign q_stage_0 = dand0 >= dior0;

// stage1
assign dand1 = dand0 >= dior0 ? dand0-dior0 : dand0;
assign dior1 = { 1'b0, dior0[(dandsize-1):1] };
assign q_stage_1 = dand1 >= dior1;

// stage2
assign dand2 = dand1 >= dior1 ? dand1-dior1 : dand1;
assign dior2 = { 1'b0, dior1[(dandsize-1):1] };
assign q_stage_2 = dand2 >= dior2;


// stage3
always @ (posedge clk) begin
	if(load) begin
		dand3 <= dand2 >= dior2 ? dand2-dior2 : dand2;
		dior3 <= { 1'b0, dior2[(dandsize-1):1] };

		cnt <= 3'd1;		
		q_reg <= { {(qsize-stage_num){1'b0}}, q_stage_0, q_stage_1, q_stage_2 } ;
	end
	else if(cnt < times) begin
		cnt <= cnt + 3'd1;
		dand3 <= dand2 >= dior2 ? dand2-dior2 : dand2;
		dior3 <= { 1'b0, dior2[(dandsize-1):1] };
		q_reg <= { q_reg[(qsize-stage_num-1):0], q_stage_0, q_stage_1, q_stage_2 } ;
	end
	// else keep
end


assign q = (dividand_sign ^ dividor_sign/*is_neg*/) ? -q_reg : q_reg;

endmodule














