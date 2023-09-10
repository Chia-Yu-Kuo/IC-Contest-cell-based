module huffman(clk, reset, gray_valid, gray_data, CNT_valid, CNT1, CNT2, CNT3, CNT4, CNT5, CNT6,
    code_valid, HC1, HC2, HC3, HC4, HC5, HC6,  M1, M2, M3, M4, M5, M6);

input clk;
input reset;
input gray_valid;
input [7:0] gray_data;
output CNT_valid;
output [7:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
output reg code_valid;
output reg [7:0] HC1, HC2, HC3, HC4, HC5, HC6;
output reg [7:0] M1, M2, M3, M4, M5, M6;

// registers
reg [7:0] cnt_reg [0:5];
reg [7:0] gray_data_reg;

// table 0
reg [7:0] cnt0 [0:5];
reg [5:0] group0 [0:5];

// table 1
reg [7:0] cnt1 [0:4];
reg [5:0] group1 [0:4];

// table 2
reg [7:0] cnt2 [0:3];
reg [5:0] group2 [0:3];

// table 3
reg [7:0] cnt3 [0:2];
reg [5:0] group3 [0:2];

// table 4
reg [7:0] cnt4 [0:1];
reg [5:0] group4 [0:1];

reg [7:0] mask_reg [0:5];
reg [7:0] HC_reg [0:5];

// state
parameter	WAIT	=	5'd0;
parameter	D_IN	=	5'd1;
parameter	CNT_OUT	=	5'd2;
parameter	SORT0	=	5'd3;
parameter	MERGE1	=	5'd4;
parameter	SORT1	=	5'd5;
parameter	MERGE2	=	5'd6;
parameter	SORT2	=	5'd7;
parameter	MERGE3	=	5'd8;
parameter	SORT3	=	5'd9;
parameter	MERGE4	=	5'd10;
parameter	SORT4	=	5'd11;
parameter	EN4	=	5'd12;
parameter	EN3	=	5'd13;
parameter	EN2	=	5'd14;
parameter	EN1	=	5'd15;
parameter	EN0	=	5'd16;
parameter	HC_OUT	=	5'd17;

reg [4:0] st, nst;
reg [3:0] counter1, ncounter1;
reg [3:0] counter2, ncounter2;
always @(posedge clk or posedge reset) begin
	if(reset) st <= WAIT;
	else st <= nst;
end
always @(posedge clk or posedge reset) begin
	if(reset) gray_data_reg <= 8'd0;
	else gray_data_reg <= gray_data;
end
always @(posedge clk or posedge reset) begin
	if(reset) counter1 <= 4'd0;
	else counter1 <= ncounter1;
end
always @(posedge clk or posedge reset) begin
	if(reset) counter2 <= 4'd0;
	else counter2 <= ncounter2;
end
always @(*) begin
	case(st)
	WAIT: nst = gray_valid ? D_IN : WAIT;
	D_IN: nst = gray_valid ? D_IN : CNT_OUT;
	CNT_OUT: nst = SORT0;
	SORT0: nst = counter1 == 4'd4 && counter2 == 4'd4 ? MERGE1 : SORT0;
	MERGE1: nst = SORT1;
	SORT1: nst = counter1 == 4'd3 ? MERGE2 : SORT1;
	MERGE2: nst = SORT2;
	SORT2: nst = counter1 == 4'd2 ? MERGE3 : SORT2;
	MERGE3: nst = SORT3;
	SORT3: nst = counter1 == 4'd1 ? MERGE4 : SORT3;
	MERGE4: nst = SORT4;
	SORT4: nst = EN4;
	EN4: nst = EN3;
	EN3: nst = EN2;
	EN2: nst = EN1;
	EN1: nst = EN0;
	EN0: nst = HC_OUT;
	HC_OUT: nst = WAIT;
	default: nst = WAIT;
	endcase
end
always @(*) begin
	ncounter1 = st != nst || counter1 == 4'd4 ? 4'd0 : counter1 + 4'd1;
end
always @(*) begin
	ncounter2 = st != nst ? 4'd0 : counter1 == 4'd4 ? counter2 + 4'd1 : counter2;
end

integer i1, i2, i3, i4, i5, i6;
// cnt reg
always @(posedge clk or posedge reset) begin
	if(reset) begin
		for(i1=0; i1<6; i1=i1+1) begin
			cnt_reg[i1] <= 8'd0;
		end
	end
	else if(st == D_IN) begin
		cnt_reg[gray_data_reg-8'd1] <= cnt_reg[gray_data_reg-8'd1] + 8'd1;
	end
end
assign CNT1 = cnt_reg[0];
assign CNT2 = cnt_reg[1];
assign CNT3 = cnt_reg[2];
assign CNT4 = cnt_reg[3];
assign CNT5 = cnt_reg[4];
assign CNT6 = cnt_reg[5];
assign CNT_valid = st == CNT_OUT;

// table 0
reg do_swap0;
reg [2:0] swap_index0;
always @(posedge clk or posedge reset) begin
	if(reset) begin
		for(i2=0; i2<6; i2=i2+1) begin
			cnt0[i2] <= 8'd0;
			group0[i2] <= 6'd0;
		end
	end
	else if(st == CNT_OUT) begin
		for(i2=0; i2<6; i2=i2+1) begin
			cnt0[i2] <= cnt_reg[i2];
		end
		group0[0] <= 6'b000001;
		group0[1] <= 6'b000010;
		group0[2] <= 6'b000100;
		group0[3] <= 6'b001000;
		group0[4] <= 6'b010000;
		group0[5] <= 6'b100000;
	end
	else if(st == SORT0) begin
		if(do_swap0) begin
			cnt0[swap_index0] <= cnt0[swap_index0+3'd1];
			cnt0[swap_index0+3'd1] <= cnt0[swap_index0];
			group0[swap_index0] <= group0[swap_index0+3'd1];
			group0[swap_index0+3'd1] <= group0[swap_index0];
		end
	end
end
// sort
always @(*) begin
	swap_index0 = counter1;
end
always @(*) begin
	do_swap0 = cnt0[swap_index0] >= cnt0[swap_index0+3'd1] && group0[swap_index0] < group0[swap_index0+3'd1] ;
end

// table 1
reg do_swap1;
reg [2:0] swap_index1;
always @(posedge clk or posedge reset) begin
	if(reset) begin
		for(i3=0; i3<5; i3=i3+1) begin
			cnt1[i3] <= 8'd0;
			group1[i3] <= 6'd0;
		end
	end
	else if(st == MERGE1) begin
		for(i3=1; i3<5; i3=i3+1) begin
			cnt1[i3] <= cnt0[i3+1];
			group1[i3] <= group0[i3+1];
		end
		cnt1[0] <= cnt0[0] + cnt0[1];
		group1[0] <= group0[0] | group0[1];
	end
	else if(st == SORT1) begin
		if(do_swap1) begin
			cnt1[swap_index1] <= cnt1[swap_index1+3'd1];
			cnt1[swap_index1+3'd1] <= cnt1[swap_index1];
			group1[swap_index1] <= group1[swap_index1+3'd1];
			group1[swap_index1+3'd1] <= group1[swap_index1];
		end
	end
end
// sort
always @(*) begin
	swap_index1 = counter1;
end
always @(*) begin
	do_swap1 = cnt1[swap_index1] > cnt1[swap_index1+3'd1] ;/*? 
			group1[swap_index1][0] ? 1'b1 : group1[swap_index1][0] ? 1'b0 :
			group1[swap_index1][1] ? 1'b1 : group1[swap_index1][1] ? 1'b0 :
			group1[swap_index1][2] ? 1'b1 : group1[swap_index1][2] ? 1'b0 :
			group1[swap_index1][3] ? 1'b1 : group1[swap_index1][3] ? 1'b0 :
			group1[swap_index1][4] ? 1'b1 : group1[swap_index1][4] ? 1'b0 :
			group1[swap_index1][5] ? 1'b1 : 1'b0 : 1'b0;*/
end

// table 2
reg do_swap2;
reg [2:0] swap_index2;
always @(posedge clk or posedge reset) begin
	if(reset) begin
		for(i4=0; i4<4; i4=i4+1) begin
			cnt2[i4] <= 8'd0;
			group2[i4] <= 6'd0;
		end
	end
	else if(st == MERGE2) begin
		for(i4=1; i4<4; i4=i4+1) begin
			cnt2[i4] <= cnt1[i4+1];
			group2[i4] <= group1[i4+1];
		end
		cnt2[0] <= cnt1[0] + cnt1[1];
		group2[0] <= group1[0] | group1[1];
	end
	else if(st == SORT2) begin
		if(do_swap2) begin
			cnt2[swap_index2] <= cnt2[swap_index2+3'd1];
			cnt2[swap_index2+3'd1] <= cnt2[swap_index2];
			group2[swap_index2] <= group2[swap_index2+3'd1];
			group2[swap_index2+3'd1] <= group2[swap_index2];
		end
	end
end
// sort
always @(*) begin
	swap_index2 = counter1;
end
always @(*) begin
	do_swap2 = cnt2[swap_index2] > cnt2[swap_index2+3'd1] ;/*? 
			group2[swap_index2+3'd1][0] ? 1'b1 : group2[swap_index2][0] ? 1'b0 :
			group2[swap_index2+3'd1][1] ? 1'b1 : group2[swap_index2][1] ? 1'b0 :
			group2[swap_index2+3'd1][2] ? 1'b1 : group2[swap_index2][2] ? 1'b0 :
			group2[swap_index2+3'd1][3] ? 1'b1 : group2[swap_index2][3] ? 1'b0 :
			group2[swap_index2+3'd1][4] ? 1'b1 : group2[swap_index2][4] ? 1'b0 :
			group2[swap_index2+3'd1][5] ? 1'b1 : 1'b0 : 1'b0;*/
end

// table 3
reg do_swap3;
reg [2:0] swap_index3;
always @(posedge clk or posedge reset) begin
	if(reset) begin
		for(i5=0; i5<3; i5=i5+1) begin
			cnt3[i5] <= 8'd0;
			group3[i5] <= 6'd0;
		end
	end
	else if(st == MERGE3) begin
		for(i5=1; i5<3; i5=i5+1) begin
			cnt3[i5] <= cnt2[i5+1];
			group3[i5] <= group2[i5+1];
		end
		cnt3[0] <= cnt2[0] + cnt2[1];
		group3[0] <= group2[0] | group2[1];
	end
	else if(st == SORT3) begin
		if(do_swap3) begin
			cnt3[swap_index3] <= cnt3[swap_index3+3'd1];
			cnt3[swap_index3+3'd1] <= cnt3[swap_index3];
			group3[swap_index3] <= group3[swap_index3+3'd1];
			group3[swap_index3+3'd1] <= group3[swap_index3];
		end
	end
end
// sort
always @(*) begin
	swap_index3 = counter1;
end
always @(*) begin
	do_swap3 = cnt3[swap_index3] > cnt3[swap_index3+3'd1] ;/*?
			group3[swap_index3+3'd1][0] ? 1'b1 : group3[swap_index3][0] ? 1'b0 :
			group3[swap_index3+3'd1][1] ? 1'b1 : group3[swap_index3][1] ? 1'b0 :
			group3[swap_index3+3'd1][2] ? 1'b1 : group3[swap_index3][2] ? 1'b0 :
			group3[swap_index3+3'd1][3] ? 1'b1 : group3[swap_index3][3] ? 1'b0 :
			group3[swap_index3+3'd1][4] ? 1'b1 : group3[swap_index3][4] ? 1'b0 :
			group3[swap_index3+3'd1][5] ? 1'b1 : 1'b0 : 1'b0;*/
end

// table 4
reg do_swap4;
always @(posedge clk or posedge reset) begin
	if(reset) begin
		for(i6=0; i6<2; i6=i6+1) begin
			cnt4[i6] <= 8'd0;
			group4[i6] <= 6'd0;
		end
	end
	else if(st == MERGE4) begin
		for(i6=1; i6<2; i6=i6+1) begin
			cnt4[i6] <= cnt3[i6+1];
			group4[i6] <= group3[i6+1];
		end
		cnt4[0] <= cnt3[0] + cnt3[1];
		group4[0] <= group3[0] | group3[1];
	end
	else if(st == SORT4) begin
		if(do_swap4) begin
			cnt4[0] <= cnt4[1];
			cnt4[1] <= cnt4[0];
			group4[0] <= group4[1];
			group4[1] <= group4[0];
		end
	end
end
// sort
always @(*) begin
	do_swap4 = cnt4[0] > cnt4[1] ;/*? 
			group4[1][0] ? 1'b1 : group4[0][0] ? 1'b0 :
			group4[1][1] ? 1'b1 : group4[0][1] ? 1'b0 :
			group4[1][2] ? 1'b1 : group4[0][2] ? 1'b0 :
			group4[1][3] ? 1'b1 : group4[0][3] ? 1'b0 :
			group4[1][4] ? 1'b1 : group4[0][4] ? 1'b0 :
			group4[1][5] ? 1'b1 : 1'b0 : 1'b0;*/
end

integer i7;

// mask reg, HC reg
always @(posedge clk or posedge reset) begin
	if(reset) begin
		for(i7=0; i7<6; i7=i7+1) begin
			mask_reg[i7] <= 8'd0;
			HC_reg[i7] <= 8'd0;
		end
	end
	else if(st == EN4) begin
		for(i7=0; i7<6; i7=i7+1) begin
			mask_reg[i7] <= group4[0][i7] | group4[1][i7] ? 8'd1 : 8'd0;
			HC_reg[i7] <= group4[0][i7] ? 8'd1 : 8'd0;
		end
	end
	else if(st == EN3) begin
		for(i7=0; i7<6; i7=i7+1) begin
			mask_reg[i7] <= group3[0][i7] | group3[1][i7] ? { mask_reg[i7][6:0], 1'b1 } : mask_reg[i7];
			HC_reg[i7] <= group3[0][i7] ? { HC_reg[i7][6:0], 1'b1 } : group3[1][i7] ? { HC_reg[i7][6:0], 1'b0 } : HC_reg[i7];
		end
	end
	else if(st == EN2) begin
		for(i7=0; i7<6; i7=i7+1) begin
			mask_reg[i7] <= group2[0][i7] | group2[1][i7] ? { mask_reg[i7][6:0], 1'b1 } : mask_reg[i7];
			HC_reg[i7] <= group2[0][i7] ? { HC_reg[i7][6:0], 1'b1 } : group2[1][i7] ? { HC_reg[i7][6:0], 1'b0 } : HC_reg[i7];
		end
	end
	else if(st == EN1) begin
		for(i7=0; i7<6; i7=i7+1) begin
			mask_reg[i7] <= group1[0][i7] | group1[1][i7] ? { mask_reg[i7][6:0], 1'b1 } : mask_reg[i7];
			HC_reg[i7] <= group1[0][i7] ? { HC_reg[i7][6:0], 1'b1 } : group1[1][i7] ? { HC_reg[i7][6:0], 1'b0 } : HC_reg[i7];
		end
	end
	else if(st == EN0) begin
		for(i7=0; i7<6; i7=i7+1) begin
			mask_reg[i7] <= group0[0][i7] | group0[1][i7] ? { mask_reg[i7][6:0], 1'b1 } : mask_reg[i7];
			HC_reg[i7] <= group0[0][i7] ? { HC_reg[i7][6:0], 1'b1 } : group0[1][i7] ? { HC_reg[i7][6:0], 1'b0 } : HC_reg[i7];
		end
	end
end

// HC_OUT
always @(*) begin
	code_valid = st == HC_OUT;
	HC1 = HC_reg[0];
	HC2 = HC_reg[1];
	HC3 = HC_reg[2];
	HC4 = HC_reg[3];
	HC5 = HC_reg[4];
	HC6 = HC_reg[5];
	M1 = mask_reg[0];
	M2 = mask_reg[1];
	M3 = mask_reg[2];
	M4 = mask_reg[3];
	M5 = mask_reg[4];
	M6 = mask_reg[5];
end
  
endmodule





































