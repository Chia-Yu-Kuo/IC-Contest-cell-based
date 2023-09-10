`timescale 1ns/10ps
module CTE ( clk, reset, op_mode, in_en, yuv_in, rgb_in, busy, out_valid, rgb_out, yuv_out);
input   clk ;
input   reset ;
input   op_mode;
input   in_en;
output  busy;
output  out_valid;
input   [7:0]   yuv_in;
output reg [23:0]  rgb_out;
input   [23:0]  rgb_in;
output reg [7:0]   yuv_out;




// state machine
parameter	WAIT	= 4'd0;
parameter	YIN0	= 4'd1;
parameter	CALY1	= 4'd2;
parameter	YIO	= 4'd3;
parameter	CALY2	= 4'd4;
parameter	YIN	= 4'd5;
//parameter	RIN0	= 4'd6;
parameter	CALR1	= 4'd7;
parameter	RIO	= 4'd8;
parameter	CALR2	= 4'd9;
parameter	RIN	= 4'd10;
reg [3:0] st, nst;
reg [1:0] cnt, ncnt;

always @ (posedge clk or posedge reset) begin
	if(reset) begin
		st <= WAIT;
		cnt <= 2'd0;
	end
	else begin
		st <= nst;
		cnt <= ncnt;
	end
end

always @ (*) begin
	case(st)
	WAIT: nst = in_en ? op_mode ? CALR1 : YIN0 : WAIT;
	YIN0: nst = cnt == 2'd1 ? CALY1 : YIN0;
	CALY1: nst = cnt == 2'd2 ? YIO : CALY1;
	YIO: nst = CALY2;
	CALY2: nst = YIN;
	YIN: nst = cnt == 2'd2 ? in_en ? CALY1 : WAIT : YIN;
	//RIN0: nst = CALR1;
	CALR1: nst = cnt == 2'd2 ? RIO : CALR1;
	RIO: nst = cnt == 2'd2 ? CALR2 : RIO;
	CALR2: nst = RIN;
	RIN: nst = in_en ? CALR1 : WAIT;
	default: nst = WAIT; 
	endcase
end
always @ (*) begin
	ncnt = st != nst ? 2'd0 : cnt + 2'd1;
end

// registers
reg signed [9:0] in_reg_RY;
reg signed [9:0] in_reg_GU;
reg signed [9:0] in_reg_BV;

reg signed [25:0] result_reg_RY;
reg signed [25:0] result_reg_GU;
reg signed [25:0] result_reg_BV;

reg signed [25:0] RUV_reg;
reg signed [25:0] GUV_reg;
reg signed [25:0] BUV_reg;

// in_regs
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		in_reg_RY <= 10'd0;
		in_reg_GU <= 10'd0;
		in_reg_BV <= 10'd0;
	end
	else begin
		case(st)
		WAIT: begin
			if(op_mode) begin
				in_reg_RY <= { 2'b0, rgb_in[23:16] };
				in_reg_GU <= { 2'b0, rgb_in[15:8] };
				in_reg_BV <= { 2'b0, rgb_in[7:0] };
			end
			else begin
				in_reg_GU <= $signed(yuv_in);
			end
		end
		YIN0: begin
			case(cnt)
			2'd0: in_reg_RY <= { 2'b0, yuv_in };
			2'd1: in_reg_BV <= $signed(yuv_in);
			endcase
		end
		YIN: begin
			case(cnt)
			2'd0: in_reg_GU <= $signed(yuv_in);
			2'd1: in_reg_RY <= { 2'b0, yuv_in };
			2'd2: in_reg_BV <= $signed(yuv_in);
			endcase
		end
		YIO: begin
			in_reg_RY <= { 2'b0, yuv_in };
		end
		RIN, RIO: begin
			in_reg_RY <= { 2'b0, rgb_in[23:16] };
			in_reg_GU <= { 2'b0, rgb_in[15:8] };
			in_reg_BV <= { 2'b0, rgb_in[7:0] };
		end
		endcase
	end
end

wire signed [15:0] coef_RY; // R = coef_ry * in_reg_Y
assign coef_RY = 16'h1000; // 
wire signed [15:0] coef_RU;
assign coef_RU = 16'h0000;
wire signed [15:0] coef_RV;
assign coef_RV = 16'h1A00;
wire signed [15:0] coef_GY;
assign coef_GY = 16'h1000;
wire signed [15:0] coef_GU;
assign coef_GU = 16'hfc00;
wire signed [15:0] coef_GV;
assign coef_GV = 16'hf400;
wire signed [15:0] coef_BY;
assign coef_BY = 16'h1000;
wire signed [15:0] coef_BU;
assign coef_BU = 16'h2000;
wire signed [15:0] coef_BV;
assign coef_BV = 16'h0000;

wire signed [15:0] coef_YR; // Y = coef_YR * in_reg_R
assign coef_YR = 16'h253C; // 
wire signed [15:0] coef_YG;
assign coef_YG = 16'h50ad;
wire signed [15:0] coef_YB;
assign coef_YB = 16'h0A15;
wire signed [15:0] coef_UR;
assign coef_UR = 16'hed61;
wire signed [15:0] coef_UG;
assign coef_UG = 16'hd7a9;
wire signed [15:0] coef_UB;
assign coef_UB = 16'h3af5;
wire signed [15:0] coef_VR;
assign coef_VR = 16'h37da;
wire signed [15:0] coef_VG;
assign coef_VG = 16'hce59;
wire signed [15:0] coef_VB;
assign coef_VB = 16'hf9cb;

// multiplier
reg signed [25:0] mult1;
reg signed [25:0] mult2;
reg signed [25:0] mult3;

always @ (*) begin
	case(st)
	CALY1: begin
		case(cnt)
		2'd0: begin 
			mult1 = coef_RV * in_reg_BV; // RV * V
			mult2 = coef_GV * in_reg_BV;
			mult3 = coef_BV * in_reg_BV;
		end
		2'd1: begin 
			mult1 = coef_RU * in_reg_GU; // RU * U
			mult2 = coef_GU * in_reg_GU;
			mult3 = coef_BU * in_reg_GU;
		end
		2'd2: begin 
			mult1 = coef_RY * in_reg_RY; // RY * Y
			mult2 = coef_GY * in_reg_RY;
			mult3 = coef_BY * in_reg_RY;
		end
		default: begin
			mult1 = 26'd0;
			mult2 = 26'd0;
			mult3 = 26'd0;
		end
		endcase
	end 
	CALY2: begin
		mult1 = coef_RY * in_reg_RY; // RY * Y
		mult2 = coef_GY * in_reg_RY;
		mult3 = coef_BY * in_reg_RY;
	end
	CALR1: begin
		case(cnt)
		2'd0: begin 
			mult1 = coef_YB * in_reg_BV; // YB * B
			mult2 = coef_UB * in_reg_BV;
			mult3 = coef_VB * in_reg_BV;
		end
		2'd1: begin 
			mult1 = coef_YG * in_reg_GU; // YG * G
			mult2 = coef_UG * in_reg_GU;
			mult3 = coef_VG * in_reg_GU;
		end
		2'd2: begin 
			mult1 = coef_YR * in_reg_RY; // YR * R
			mult2 = coef_UR * in_reg_RY;
			mult3 = coef_VR * in_reg_RY;
		end
		default: begin
			mult1 = 26'd0;
			mult2 = 26'd0;
			mult3 = 26'd0;
		end
		endcase
	end 
	CALR2: begin
		mult1 = coef_YB * in_reg_BV; // YB * B
		mult2 = coef_YG * in_reg_GU; // YG * G
		mult3 = coef_YR * in_reg_RY; // YR * R
	end
	// WAIT, YIN0, YIO, YIN, RIN0, RIO, RIN
	default: begin
		mult1 = 26'd0;
		mult2 = 26'd0;
		mult3 = 26'd0;
	end 
	endcase
end

// result_regs
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		result_reg_RY <= 26'd0;
		result_reg_GU <= 26'd0;
		result_reg_BV <= 26'd0;
	end
	else begin
		case(st)
		CALY1: begin
			case(cnt)
			2'd0: begin
				result_reg_RY <= mult1;
				result_reg_GU <= mult2;
				result_reg_BV <= mult3;
			end
			2'd1, 2'd2: begin
				result_reg_RY <= result_reg_RY + mult1;
				result_reg_GU <= result_reg_GU + mult2;
				result_reg_BV <= result_reg_BV + mult3;
			end
			endcase
		end
		CALY2: begin
			result_reg_RY <= RUV_reg + { 4'd0, in_reg_RY, 12'd0 };
			result_reg_GU <= GUV_reg + { {4{in_reg_RY[8]}}, in_reg_RY, 12'd0 };
			result_reg_BV <= BUV_reg + { {4{in_reg_RY[8]}}, in_reg_RY, 12'd0 };
		end
		CALR1: begin
			case(cnt)
			2'd0: begin
				result_reg_RY <= mult1;
				result_reg_GU <= mult2;
				result_reg_BV <= mult3;
			end
			2'd1, 2'd2: begin
				result_reg_RY <= result_reg_RY + mult1;
				result_reg_GU <= result_reg_GU + mult2;
				result_reg_BV <= result_reg_BV + mult3;
			end
			endcase
		end
		CALR2: begin
			result_reg_RY <= mult1 + mult2 + mult3;
		end
		endcase
	end
end

// UV_regs
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		RUV_reg <= 26'd0;
		GUV_reg <= 26'd0;
		BUV_reg <= 26'd0;
	end
	else if (st == CALY1 && cnt == 2'd2) begin
		RUV_reg <= result_reg_RY;
		GUV_reg <= result_reg_GU;
		BUV_reg <= result_reg_BV;
	end
end

wire signed [9:0] neg117, neg111;
assign neg117 = 10'h38B;
assign neg111 = 10'h391;

always @(*) begin
	rgb_out[23:16] = result_reg_RY[21] ? 8'd0 : result_reg_RY[20] || result_reg_RY[19:12] == 8'd255 ? 8'd255 : result_reg_RY[19:12] + { 7'd0, result_reg_RY[11] };
	rgb_out[15:8] = result_reg_GU[21] ? 8'd0 : result_reg_GU[20] || result_reg_GU[19:12] == 8'd255 ? 8'd255 : result_reg_GU[19:12] + { 7'd0, result_reg_GU[11] };
	rgb_out[7:0] = result_reg_BV[21] ? 8'd0 : result_reg_BV[20] || result_reg_BV[19:12] == 8'd255 ? 8'd255 : result_reg_BV[19:12] + { 7'd0, result_reg_BV[11] };
end
always @(*) begin
	case(st)
	RIO: begin
		case(cnt)
		2'd0: yuv_out = $signed(result_reg_GU[24:15]) <= neg117 ? 8'h8B : $signed(result_reg_GU[24:15]) >= $signed(10'd117) ? 8'd117 : result_reg_GU[22:15] + { 7'd0, result_reg_GU[14] };
		2'd1: yuv_out = result_reg_RY[24] ? 8'd0 : result_reg_RY[23] || result_reg_RY[22:15] == 8'd255 ? 8'd255 : result_reg_RY[22:15] + { 7'd0, result_reg_RY[14] };
		2'd2: yuv_out = $signed(result_reg_BV[24:15]) <= neg111 ? 8'h91 : $signed(result_reg_BV[24:15]) >= $signed(10'd111) ? 8'd111 : result_reg_BV[22:15] + { 7'd0, result_reg_BV[14] };
		default: yuv_out = result_reg_RY[24] ? 8'd0 : result_reg_RY[23] || result_reg_RY[22:15] == 8'd255 ? 8'd255 : result_reg_RY[22:15] + { 7'd0, result_reg_RY[14] };
		endcase
	end
	RIN: begin
		yuv_out = result_reg_RY[24] ? 8'd0 : result_reg_RY[23] || result_reg_RY[22:15] == 8'd255 ? 8'd255 : result_reg_RY[22:15] + { 7'd0, result_reg_RY[14] };
	end
	default: yuv_out = result_reg_RY[24] ? 8'd0 : result_reg_RY[23] || result_reg_RY[22:15] == 8'd255 ? 8'd255 : result_reg_RY[22:15] + { 7'd0, result_reg_RY[14] };
	endcase
end

reg valid_reg, busy_reg;
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		busy_reg <= 1'b0;
	end
	else begin
		case(nst)
		CALY1, CALY2, CALR1, CALR2: busy_reg <= 1'b1;
		RIO: busy_reg <= ncnt == 2'd0 || ncnt == 2'd1;
		default: busy_reg <= 1'b0;
		endcase
	end
end

always @ (posedge clk or posedge reset) begin
	if(reset) begin
		valid_reg <= 1'b0;
	end
	else begin
		case(nst)
		YIO, RIO, RIN: valid_reg <= 1'b1;
		YIN: valid_reg <= ncnt == 2'd0;
		default: valid_reg <= 1'b0;
		endcase
	end
end

assign busy = busy_reg;
assign out_valid = valid_reg;


endmodule































