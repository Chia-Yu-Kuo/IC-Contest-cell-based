module IOTDF( clk, rst, in_en, iot_in, fn_sel, busy, valid, iot_out);
input          clk;
input          rst;
input          in_en;
input  [7:0]   iot_in;
input  [2:0]   fn_sel;
output         busy;
output         valid;
output [127:0] iot_out;

///
reg [3:0] low_cnt;
reg [2:0] up_cnt;
reg [7:0] in_data_reg [0:15];
wire [127:0] in_data;
genvar i1;

reg [2:0] up_cnt_avg;
reg [3:0] low_cnt_avg;
reg [127:0] in_data_avg;
wire sum_en;
wire [131:0] sum_d;
reg [131:0] sum_q;
wire [127:0] avg_out;
wire avg_outreg_en;
wire avg_en;
assign avg_en = fn_sel == 3'd3;

///
reg clk_minmax;
reg rst_minmax;

reg [2:0] up_cnt_minmax;
reg [3:0] low_cnt_minmax;
reg [127:0] in_data_minmax;
wire mode_minmax;
assign mode_minmax = fn_sel == 3'd1 || fn_sel == 3'd6;
wire peak_minmax;
assign peak_minmax = fn_sel == 3'd6 || fn_sel == 3'd7;
wire cmp_reg_en;
wire [127:0] cmp_reg_d;
reg [127:0] cmp_reg_q;
wire [127:0] minmax_out;
wire minmax_outreg_en;
wire minmax_en;
assign minmax_en = fn_sel == 3'd1 || fn_sel == 3'd2 || fn_sel == 3'd6 || fn_sel == 3'd7;


////
reg [3:0] low_cnt_ex;
reg [127:0] in_data_ex;
wire mode_ex;
assign mode_ex = fn_sel == 3'd5;
wire [127:0] ex_out;
wire ex_valid;
wire ex_en;
assign ex_en = fn_sel == 3'd4 || fn_sel == 3'd5;


integer i2;
always @(posedge clk or posedge rst) begin
	if(rst) begin
		for(i2=0; i2<16; i2=i2+1) begin
			in_data_reg[i2] <= 8'd0;
		end
		low_cnt <= 4'd0;
		up_cnt <= 3'd0;
	end
	else if(in_en) begin
		low_cnt <= low_cnt + 4'd1;
		up_cnt <= low_cnt == 4'd15 ? up_cnt + 3'd1 : up_cnt;
		
		in_data_reg[low_cnt] <= iot_in;
	end
end
generate 
	for(i1=1; i1<16; i1=i1+1) begin : in_data_register
		assign in_data[(i1*8+7):(i1*8)] = in_data_reg[15-i1];
	end
endgenerate
		assign in_data[7:0] = iot_in;

reg [131:0] share_reg;
reg [127:0] output_reg;
reg valid_reg;
wire clk_share;
assign clk_share = clk & (~ex_en);

always @(posedge clk_share or posedge rst) begin
	if(rst) share_reg <= mode_minmax ? 132'd0 : -132'd1;	
	else begin	
		if(sum_en) begin
			share_reg <= sum_d;
		end
		else if(cmp_reg_en) begin
			share_reg <= cmp_reg_d;
		end
		if(avg_outreg_en) begin
			output_reg <= avg_out;
		end
		else if(minmax_outreg_en) begin
			output_reg <= minmax_out;
		end
		valid_reg <= avg_outreg_en | minmax_outreg_en ;
	end
end



always @(*) begin
	up_cnt_avg = up_cnt & {3{avg_en}};
	low_cnt_avg = low_cnt & {4{avg_en}};
	in_data_avg = in_data & {128{avg_en}};
	sum_q = share_reg & {132{avg_en}};
end


always @(*) begin
	clk_minmax = clk & minmax_en;
	rst_minmax = rst & minmax_en;

	up_cnt_minmax = up_cnt & {3{minmax_en}};
	low_cnt_minmax = low_cnt & {4{minmax_en}};
	in_data_minmax = in_data & {128{minmax_en}};
	cmp_reg_q = share_reg & {128{minmax_en}};
end


always @(*) begin
	low_cnt_ex = low_cnt & {4{ex_en}};
	in_data_ex = in_data & {128{ex_en}};
end

AVG u_avg( .up_cnt(up_cnt_avg), .low_cnt(low_cnt_avg), .in_data(in_data_avg), .sum_en(sum_en), .sum_d(sum_d), .sum_q(sum_q), .avg_out(avg_out), .avg_outreg_en(avg_outreg_en));


MINMAX u_minmax( .clk(clk_minmax), .up_cnt(up_cnt_minmax), .low_cnt(low_cnt_minmax), .in_data(in_data_minmax), .mode(mode_minmax), .peak(peak_minmax), .cmp_reg_en(cmp_reg_en), .cmp_reg_d(cmp_reg_d), .cmp_reg_q(cmp_reg_q), .minmax_out(minmax_out), .minmax_outreg_en(minmax_outreg_en));


EX u_ex(.low_cnt(low_cnt_ex), .in_data(in_data_ex), .mode(mode_ex), .ex_out(ex_out), .ex_valid(ex_valid));

// output logic

assign busy = 1'b0;
assign valid = ex_en ? ex_valid : valid_reg;
assign iot_out = ex_en ? ex_out : output_reg;


endmodule


module AVG( up_cnt, low_cnt, in_data, sum_en, sum_d, sum_q, avg_out, avg_outreg_en/*, avg_valid*/);
input [2:0] up_cnt;
input [3:0] low_cnt;
input [127:0] in_data;
output sum_en;
output [131:0] sum_d;
input [131:0] sum_q;
output [127:0] avg_out;
output avg_outreg_en;
//output avg_valid;

assign sum_en = low_cnt == 4'd15;
assign sum_d = (up_cnt == 3'd0 ? 132'd0 : sum_q) + in_data;

assign avg_out = sum_d[131:3];
assign avg_outreg_en = up_cnt == 3'd7 && low_cnt == 4'd15;


endmodule






module MINMAX( clk, up_cnt, low_cnt, in_data, mode, peak, cmp_reg_en, cmp_reg_d, cmp_reg_q, minmax_out, minmax_outreg_en);
input clk;
input mode; // 0: min, 1: max
input peak;
input [2:0] up_cnt;
input [3:0] low_cnt;
input [127:0] in_data;
output cmp_reg_en;
output [127:0] cmp_reg_d;
input [127:0] cmp_reg_q;
output [127:0] minmax_out;
output minmax_outreg_en;

wire refresh, cmp_result;
reg out_flag;

assign cmp_result = low_cnt == 4'd15 ? cmp_reg_q > in_data : 1'b0;
assign refresh = cmp_result ^ mode;


assign cmp_reg_en = up_cnt == 3'd0 && low_cnt == 4'd15 && ~peak ? 1'b1 :
			  			  low_cnt == 4'd15 && refresh ? 1'b1 : 1'b0;

assign cmp_reg_d = up_cnt == 3'd0 && low_cnt == 4'd15 && ~peak ? in_data :
			  			 low_cnt == 4'd15 && refresh ? in_data : cmp_reg_q;

assign minmax_out = cmp_reg_d;
assign minmax_outreg_en = up_cnt == 3'd7 && low_cnt == 4'd15 && (out_flag || refresh);

always @(posedge clk) begin
	if(up_cnt == 3'd0 && low_cnt == 4'd0) out_flag <= 1'b0;
	else if(low_cnt == 4'd15) out_flag <= refresh | out_flag | ~peak;
end

endmodule





module EX(low_cnt, in_data, mode, ex_out, ex_valid);
input mode; // 0: extrac, 1: exclude
input [3:0] low_cnt;
input [127:0] in_data;
output [127:0] ex_out;
output ex_valid;


assign ex_out = in_data;
assign ex_valid = low_cnt == 4'd15 ? (mode ? (in_data[127:124] > 4'hb) || ((in_data[127:124] <= 4'h7) && (~(&in_data[123:0])) ):
				 (in_data[127:124] >= 4'h7) && ((in_data[127:124] < 4'hb) && (~(&in_data[123:0])) )) : 1'b0;


endmodule

/*
ncverilog +ncmaxdelays testfixture.v IOTDF.v +define+F1 +access+r


*/









































