
module  Analysis (clk, rst, fft_valid, done, freq,
 fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8,
 fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15, fft_d0);
input clk, rst;
input fft_valid;
input signed [31:0] fft_d1, fft_d2, fft_d3, fft_d4, fft_d5, fft_d6, fft_d7, fft_d8;
input signed [31:0] fft_d9, fft_d10, fft_d11, fft_d12, fft_d13, fft_d14, fft_d15, fft_d0;

output done;
output [3:0] freq;

reg state;
always @(posedge clk or posedge rst) begin
	if(rst) begin
		state <= 1'd0;
	end
	else begin
		state <= fft_valid;
	end
end

integer i1;

reg signed [32:0] abs [0:15];
always @(*) begin
	abs[00] = $signed(fft_d0[31:16])*$signed(fft_d0[31:16]) + $signed(fft_d0[15:0])*$signed(fft_d0[15:0]);
	abs[01] = $signed(fft_d1[31:16])*$signed(fft_d1[31:16]) + $signed(fft_d1[15:0])*$signed(fft_d1[15:0]);
	abs[02] = $signed(fft_d2[31:16])*$signed(fft_d2[31:16]) + $signed(fft_d2[15:0])*$signed(fft_d2[15:0]);
	abs[03] = $signed(fft_d3[31:16])*$signed(fft_d3[31:16]) + $signed(fft_d3[15:0])*$signed(fft_d3[15:0]);
	abs[04] = $signed(fft_d4[31:16])*$signed(fft_d4[31:16]) + $signed(fft_d4[15:0])*$signed(fft_d4[15:0]);
	abs[05] = $signed(fft_d5[31:16])*$signed(fft_d5[31:16]) + $signed(fft_d5[15:0])*$signed(fft_d5[15:0]);
	abs[06] = $signed(fft_d6[31:16])*$signed(fft_d6[31:16]) + $signed(fft_d6[15:0])*$signed(fft_d6[15:0]);
	abs[07] = $signed(fft_d7[31:16])*$signed(fft_d7[31:16]) + $signed(fft_d7[15:0])*$signed(fft_d7[15:0]);
	abs[08] = $signed(fft_d8[31:16])*$signed(fft_d8[31:16]) + $signed(fft_d8[15:0])*$signed(fft_d8[15:0]);
	abs[09] = $signed(fft_d9[31:16])*$signed(fft_d9[31:16]) + $signed(fft_d9[15:0])*$signed(fft_d9[15:0]);
	abs[10] = $signed(fft_d10[31:16])*$signed(fft_d10[31:16]) + $signed(fft_d10[15:0])*$signed(fft_d10[15:0]);
	abs[11] = $signed(fft_d11[31:16])*$signed(fft_d11[31:16]) + $signed(fft_d11[15:0])*$signed(fft_d11[15:0]);
	abs[12] = $signed(fft_d12[31:16])*$signed(fft_d12[31:16]) + $signed(fft_d12[15:0])*$signed(fft_d12[15:0]);
	abs[13] = $signed(fft_d13[31:16])*$signed(fft_d13[31:16]) + $signed(fft_d13[15:0])*$signed(fft_d13[15:0]);
	abs[14] = $signed(fft_d14[31:16])*$signed(fft_d14[31:16]) + $signed(fft_d14[15:0])*$signed(fft_d14[15:0]);
	abs[15] = $signed(fft_d15[31:16])*$signed(fft_d15[31:16]) + $signed(fft_d15[15:0])*$signed(fft_d15[15:0]);
end

wire [3:0] lv1_1, lv1_2, lv1_3, lv1_4, lv1_5, lv1_6, lv1_7, lv1_8;
wire [3:0] lv2_1, lv2_2, lv2_3, lv2_4;
wire [3:0] lv3_1, lv3_2;
// wire4 freq

assign lv1_1 = abs[0] > abs[1] ? 4'd0 : 4'd1;
assign lv1_2 = abs[2] > abs[3] ? 4'd2 : 4'd3;
assign lv1_3 = abs[4] > abs[5] ? 4'd4 : 4'd5;
assign lv1_4 = abs[6] > abs[7] ? 4'd6 : 4'd7;
assign lv1_5 = abs[8] > abs[9] ? 4'd8 : 4'd9;
assign lv1_6 = abs[10] > abs[11] ? 4'd10 : 4'd11;
assign lv1_7 = abs[12] > abs[13] ? 4'd12 : 4'd13;
assign lv1_8 = abs[14] > abs[15] ? 4'd14 : 4'd15;

assign lv2_1 = abs[lv1_1] > abs[lv1_2] ? lv1_1 : lv1_2;
assign lv2_2 = abs[lv1_3] > abs[lv1_4] ? lv1_3 : lv1_4;
assign lv2_3 = abs[lv1_5] > abs[lv1_6] ? lv1_5 : lv1_6;
assign lv2_4 = abs[lv1_7] > abs[lv1_8] ? lv1_7 : lv1_8;

assign lv3_1 = abs[lv2_1] > abs[lv2_2] ? lv2_1 : lv2_2;
assign lv3_2 = abs[lv2_3] > abs[lv2_4] ? lv2_3 : lv2_4;

assign freq = abs[lv3_1] > abs[lv3_2] ? lv3_1 : lv3_2;


assign done = state;






endmodule


