// total time cost 6hr 
`timescale 1ns/10ps
module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, lbp_valid, lbp_data, finish);
input   	clk;
input   	reset;
output reg [13:0] 	gray_addr;
output         	gray_req;
input   	gray_ready;
input   [7:0] 	gray_data;
output reg [13:0] 	lbp_addr;
output reg 	lbp_valid;
output reg [7:0] 	lbp_data;
output  	finish;
//====================================================================

// state
parameter WAIT = 4'd0, READ6 = 4'd1, READ3 = 4'd2, OUT = 4'd3, INS0_1 = 4'd4, INS0_2 = 4'd5, INS0_3 = 4'd6, INS0_4 = 4'd7, FINISH = 4'd8;
reg [3:0] st, nst;
reg [13:0] cnt, ncnt;
reg [6:0] row_cnt, nrcnt;
reg [6:0] col_cnt, nccnt;
reg [13:0] n_gray_addr;
reg gray_ready_reg;
reg [13:0] n_lbp_addr;
reg  n_lbp_valid;
reg [7:0] n_lbp_data;
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		st <= WAIT;
		cnt <= 4'd0;
		row_cnt <= 7'd1;
		col_cnt <= 7'd1;
		gray_addr <= 14'd0;
		gray_ready_reg <= 1'b0;
		lbp_addr <= 14'd0;
		lbp_valid <= 1'd0;
		lbp_data <= 8'd0;
	end
	else begin
		st <= nst;
		cnt <= ncnt;
		row_cnt <= nrcnt;
		col_cnt <= nccnt;
		gray_addr <= n_gray_addr;
		gray_ready_reg <= gray_ready;
		lbp_addr <= n_lbp_addr;
		lbp_valid <= n_lbp_valid;
		lbp_data <= n_lbp_data;
	end
end
always @ (*) begin
	case(st)
	WAIT: nst = gray_ready_reg ? READ6 : WAIT;
	READ6: nst = cnt == 14'd6 ? READ3 : READ6;
	READ3: nst = cnt == 14'd3 ? OUT : READ3;
	OUT: nst = col_cnt == 7'd126 ? (row_cnt == 7'd126 ? INS0_1 : READ6) : READ3;
	INS0_1: nst = cnt == 14'd127 ? INS0_2 : INS0_1;
	INS0_2: nst = cnt == 14'd127 ? INS0_3 : INS0_2;
	INS0_3: nst = cnt == 14'd127 ? INS0_4 : INS0_3;
	INS0_4: nst = cnt == 14'd127 ? FINISH : INS0_4;
	FINISH: nst = FINISH;
	default: nst = WAIT;
	endcase
	ncnt = st != nst ? 14'd0 :
		st == READ3 && cnt == 14'd3 ? 14'd0 : cnt + 14'd1;
	nccnt = nst == READ6 ? 7'd1 : st == OUT ? col_cnt + 7'd1 : col_cnt;
	nrcnt = st == OUT & nst == READ6 ? row_cnt + 7'd1 : row_cnt;
end


// input logic & registers
reg [7:0] kernal_0, kernal_1, kernal_2, kernal_3, kernal_4, kernal_5, kernal_6, kernal_7, kernal_8;
/*

wire [7:0] kernal_0, kernal_4, kernal_8;
assign kernal_0 = kernal_0;
assign kernal_4 = kernal_4;
assign kernal_8 = kernal_8;

wire [7:0] d_0, d_1, d_2;
wire [7:0] d_128, d_129, d_130;
wire [7:0] d_256, d_257, d_258;
assign d_0 = data_reg[0];
assign d_1 = data_reg[1];
assign d_2 = data_reg[2];
assign d_128 = data_reg[128];
assign d_129 = data_reg[129];
assign d_130 = data_reg[130];
assign d_256 = data_reg[256];
assign d_257 = data_reg[257];
assign d_258 = data_reg[258];*/

integer i1;
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		kernal_0 <= 8'd0;
		kernal_1 <= 8'd0;
		kernal_2 <= 8'd0;
		kernal_3 <= 8'd0;
		kernal_4 <= 8'd0;
		kernal_5 <= 8'd0;
		kernal_6 <= 8'd0;
		kernal_7 <= 8'd0;
		kernal_8 <= 8'd0;
	end
	else if(st == READ6) begin
		case(cnt) 
		14'd1: kernal_1 <= gray_data;
		14'd2: kernal_2 <= gray_data;
		14'd3: kernal_4 <= gray_data;
		14'd4: kernal_5 <= gray_data;
		14'd5: kernal_7 <= gray_data;
		14'd6: kernal_8 <= gray_data;
		endcase
	end
	else if(st == READ3) begin
		case(cnt) 
		14'd1: begin
			kernal_0 <= kernal_1;
			kernal_1 <= kernal_2;
			kernal_3 <= kernal_4;
			kernal_4 <= kernal_5;
			kernal_6 <= kernal_7;
			kernal_7 <= kernal_8;
			kernal_2 <= gray_data;
		end
		14'd2: kernal_5 <= gray_data;
		14'd3: kernal_8 <= gray_data;
		endcase
	end
	else begin
		kernal_8 <= kernal_8;
	end
end

always @(*) begin
	if(st == READ6) begin
		case(cnt) 
		14'd0: n_gray_addr = { (row_cnt - 7'd1), 7'd0 };
		14'd1: n_gray_addr = { (row_cnt - 7'd1), 7'd1 };
		14'd2: n_gray_addr = { (row_cnt), 7'd0 };
		14'd3: n_gray_addr = { (row_cnt), 7'd1 };
		14'd4: n_gray_addr = { (row_cnt + 7'd1), 7'd0 };
		14'd5: n_gray_addr = { (row_cnt + 7'd1), 7'd1 };
		default: n_gray_addr = 14'd0;
		endcase
	end
	else if(st == READ3) begin
		case(cnt) 
		14'd0: n_gray_addr = { (row_cnt - 7'd1), (col_cnt + 7'd1) };
		14'd1: n_gray_addr = { (row_cnt), (col_cnt + 7'd1) };
		14'd2: n_gray_addr = { (row_cnt + 7'd1), (col_cnt + 7'd1) };
		default: n_gray_addr = 14'd0;
		endcase
	end
	else n_gray_addr = 14'd0;
end
assign gray_req = st == READ6 | st == READ3 ;

// lbp
reg [7:0] lbp_result;
always @ (*) begin
	lbp_result = { kernal_8 >= kernal_4, 
				kernal_7 >= kernal_4,
				kernal_6 >= kernal_4,
				kernal_5 >= kernal_4,
				kernal_3 >= kernal_4,
				kernal_2 >= kernal_4,
				kernal_1 >= kernal_4,
				kernal_0 >= kernal_4 }; 
end


always @ (*) begin
	n_lbp_data = st != OUT ? 8'd0 : lbp_result ;
	case(st) 
	OUT: n_lbp_addr = { row_cnt, col_cnt };
	INS0_1: n_lbp_addr = cnt;
	INS0_2: n_lbp_addr = { 7'd127, cnt[6:0] };
	INS0_3: n_lbp_addr = { cnt[6:0], 7'b0 };
	INS0_4: n_lbp_addr = { cnt[6:0], 7'd127 };
	default: n_lbp_addr = 14'b0;
	endcase
	n_lbp_valid = st == OUT | st == INS0_1 | st == INS0_2 | st == INS0_3 | st == INS0_4 ;
end

assign finish = st == FINISH;





//====================================================================
endmodule
