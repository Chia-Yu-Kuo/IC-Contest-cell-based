module LMFE ( clk, reset, Din, in_en, busy, out_valid, Dout);
input   clk;
input   reset;
input   in_en;
output  reg busy;
output reg out_valid;
input   [7:0]  Din;
output reg [7:0]  Dout;


// state & cnt
parameter	WAIT	= 4'd0;
parameter	IN_3R	= 4'd1;
parameter	IN_3P	= 4'd2;
parameter	SORT_18	= 4'd3;
parameter	SORT_6	= 4'd4;
parameter	IN_1E	= 4'd5;
parameter	IN_1I	= 4'd6;
parameter	DONE	= 4'd7;
reg [3:0] st, nst;
reg [4:0] cnt, ncnt;
reg [7:0] Rcnt, nRcnt;
reg [7:0] Ccnt, nCcnt;

/*
initial begin
$fsdbDumpfile("LMFE1.fsdb");
$fsdbDumpvars;
$fsdbDumpMDA;
end
*/

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
		Rcnt <= 8'd0;
		Ccnt <= 8'd0;
	end
	else begin
		cnt <= ncnt;
		Rcnt <= nRcnt;
		Ccnt <= nCcnt;
	end
end

always @ (*) begin
	case(st)
	WAIT: nst = in_en ? IN_3R : WAIT;
	IN_3R: nst = Rcnt == 8'd2 && Ccnt == 8'd127 ? IN_3P : IN_3R;
	IN_3P: nst = Ccnt == 8'd2 ? SORT_18 : IN_3P;
	SORT_18: nst = cnt == 5'd17 ? SORT_6 : SORT_18;
	SORT_6: nst = cnt == 5'd11 ? IN_1E : SORT_6;
	IN_1E: nst = IN_1I;
	IN_1I: nst = Ccnt == 8'd130 ? (Rcnt == 8'd130 ? DONE : IN_3P) : SORT_6;
	DONE: nst = DONE;
	default: nst = WAIT;
	endcase
end


always @ (*) begin
	ncnt = st != nst ? 5'd0 : cnt + 5'd1;
	nRcnt = st == IN_1I && nst == IN_3P ? Rcnt + 8'd1 : 
			st == IN_3R && Ccnt == 8'd127 ? Rcnt + 8'd1 : Rcnt;
	nCcnt = st == IN_1I && nst == IN_3P ? 8'd0 :
			st == IN_3R && Ccnt == 8'd127 ? 7'd0 :
			st == IN_3R || st == IN_3P || st == IN_1I ? Ccnt + 7'd1 : Ccnt;
end


// input_reg & pixel_reg

integer i1, i2, i3, i4;
reg [7:0] pixel_reg [0:895];
reg [7:0] in_reg;

always @ (posedge clk or posedge reset) begin
	if(reset) begin
		in_reg <= 8'd0;
	end
	else if(nRcnt > 8'd127) begin
		in_reg <= 8'd0;
	end
	else if(in_en) begin
		in_reg <= Din;
	end
end

always @ (posedge clk or posedge reset) begin
	if(reset) begin
		for(i1 = 0; i1<896; i1 = i1+1) begin
			pixel_reg[i1] <= 8'd0;
		end
	end
	else if(st == IN_3R) begin
		if(Ccnt != 8'd127) begin
			pixel_reg[768+Ccnt] <= in_reg; 
		end
		else begin
			for(i1 = 0; i1<896; i1 = i1+1) begin
				if(i1 < 767) pixel_reg[i1] <= pixel_reg[i1+128];
				else if(i1 > 767) pixel_reg[i1] <= 8'd0;
				else pixel_reg[i1] <= in_reg;
			end
		end
	end
	else if(st == IN_3P) begin
		case(Ccnt[1:0])
		2'd0: pixel_reg[768] <= in_reg;
		2'd1: pixel_reg[769] <= in_reg;
		2'd2: pixel_reg[770] <= in_reg;
		endcase
	end
	else if(st == IN_1I) begin
		if(nst == IN_3P) begin
			for(i1 = 0; i1<896; i1 = i1+1) begin
				if(i1 < 767) pixel_reg[i1] <= pixel_reg[i1+128];
				else if(i1 > 767) pixel_reg[i1] <= 8'd0;
				else pixel_reg[i1] <= in_reg;
			end
		end
		else if(Ccnt <= 127) pixel_reg[{ 3'd6, Ccnt[6:0] }] <= in_reg;
	end
end


// sort logic
reg [7:0] sorted_reg [0:48];
reg [7:0] sorted [0:48];
reg [7:0] target;
reg [48:0] laeq;

always @ (posedge clk or posedge reset) begin
	if(reset) begin
		for(i2 = 0; i2<49; i2 = i2+1) begin
			sorted_reg[i2] <= 8'd0;
		end
	end
	else begin
		for(i2 = 0; i2<49; i2 = i2+1) begin
			sorted_reg[i2] <= sorted[i2];
		end
	end
end

always @(*) begin
	// laeq
	for(i3 = 0; i3<49; i3 = i3+1) begin
		laeq[i3] = sorted_reg[i3] >= target;
	end
end


always @(*) begin
	// sorted
	case(st)
	IN_1E: begin // erase
		for(i4 = 0; i4<48; i4 = i4+1) begin
			sorted[i4] = laeq[i4] ? sorted_reg[i4+1] : sorted_reg[i4];
		end
		sorted[48] = 8'hff;
	end
	SORT_6: begin
		if(~cnt[0]) begin // erase
			for(i4 = 0; i4<48; i4 = i4+1) begin
				sorted[i4] = laeq[i4] ? sorted_reg[i4+1] : sorted_reg[i4];
			end
			sorted[48] = 8'hff;
		end
		else begin // insert
			sorted[0] = laeq[0] ? target : sorted_reg[0];
			for(i4 = 1; i4<49; i4 = i4+1) begin
				sorted[i4] = laeq[i4] ? ( laeq[i4-1] ? sorted_reg[i4-1] : target )
								: sorted_reg[i4];
			end
		end
	end
	IN_1I: begin
		/*if(nst == IN_3P) begin // clear
			for(i4 = 0; i4<49; i4 = i4+1) begin
				sorted[i4] = 8'd0;
			end
		end*/
		//else begin // insert
			sorted[0] = laeq[0] ? target : sorted_reg[0];
			for(i4 = 1; i4<49; i4 = i4+1) begin
				sorted[i4] = laeq[i4] ? ( laeq[i4-1] ? sorted_reg[i4-1] : target )
								: sorted_reg[i4];
			end
		//end
	end
	IN_3P: begin
		
		if(cnt == 5'd0) begin
			for(i4 = 0; i4<48; i4 = i4+1) begin
				sorted[i4] = 8'd0;
			end
			sorted[i4] = target;
		end
		else begin // insert without erase
			for(i4 = 0; i4<48; i4 = i4+1) begin
				sorted[i4] = laeq[i4] ? sorted_reg[i4] : ( laeq[i4+1] ? target : sorted_reg[i4+1] );
			end
			sorted[48] = laeq[48] ? sorted_reg[i4] : target;
		end


	end 
	SORT_18: begin
		// insert without erase
		for(i4 = 0; i4<48; i4 = i4+1) begin
			sorted[i4] = laeq[i4] ? sorted_reg[i4] : ( laeq[i4+1] ? target : sorted_reg[i4+1] );
		end
		sorted[48] = laeq[48] ? sorted_reg[i4] : target;
	
	end
	default: begin // keep
		for(i4 = 0; i4<49; i4 = i4+1) begin
			sorted[i4] = sorted_reg[i4];
		end
	end
	endcase
end

wire [7:0] erase_target_col;
assign erase_target_col = Ccnt - 8'd7;

always @(*) begin
	// target
	case(st)
	IN_1E: begin // erase
		if(erase_target_col[7]) target = 8'd0;
		else target = pixel_reg[{ 3'd6, erase_target_col[6:0] }];
	end
	SORT_6: begin
		if(~cnt[0]) begin // erase
			if(erase_target_col[7]) target = 8'd0;
			else begin
				target = pixel_reg[{ cnt[3:1], erase_target_col[6:0] }];
			end
		end
		else begin // insert
			if(Ccnt[7]) target = 8'd0;
			else begin
				target = pixel_reg[{ cnt[3:1], Ccnt[6:0] }];
			end
		end
	end
	IN_1I: begin
		if(Ccnt[7]) target = 8'd0;
		else begin
			target = in_reg;
		end
	end
	IN_3P: begin
		// insert without erase
		target = in_reg;
	end
	SORT_18: begin
		// insert without erase
		case(cnt)
		5'd0: target = pixel_reg[{ 3'd0, 7'd0 }];
		5'd1: target = pixel_reg[{ 3'd0, 7'd1 }];
		5'd2: target = pixel_reg[{ 3'd0, 7'd2 }];
		5'd3: target = pixel_reg[{ 3'd1, 7'd0 }];
		5'd4: target = pixel_reg[{ 3'd1, 7'd1 }];
		5'd5: target = pixel_reg[{ 3'd1, 7'd2 }];
		5'd6: target = pixel_reg[{ 3'd2, 7'd0 }];
		5'd7: target = pixel_reg[{ 3'd2, 7'd1 }];
		5'd8: target = pixel_reg[{ 3'd2, 7'd2 }];
		5'd9: target = pixel_reg[{ 3'd3, 7'd0 }];
		5'd10: target = pixel_reg[{ 3'd3, 7'd1 }];
		5'd11: target = pixel_reg[{ 3'd3, 7'd2 }];
		5'd12: target = pixel_reg[{ 3'd4, 7'd0 }];
		5'd13: target = pixel_reg[{ 3'd4, 7'd1 }];
		5'd14: target = pixel_reg[{ 3'd4, 7'd2 }];
		5'd15: target = pixel_reg[{ 3'd5, 7'd0 }];
		5'd16: target = pixel_reg[{ 3'd5, 7'd1 }];
		5'd17: target = pixel_reg[{ 3'd5, 7'd2 }];
		default: target = 8'd0;
		endcase
	
	end
	default: begin // keep
		target = 8'd0;
	end
	endcase
end

always @(*) begin
	// busy
	case(nst)
	SORT_18, SORT_6:
		busy = 1'b1;
	IN_1E: 
		busy = Ccnt > 8'd127;
	IN_1I:
		busy = /*Ccnt == 8'd130 ? 1'b0 :*/ 1'b1;
	default: // WAIT, IN_3R, IN_3P, IN_1E
		busy = 1'b0;
	endcase

end

always @(posedge clk or posedge reset) begin
	if(reset) out_valid <= 1'b0;
	else out_valid <= st == IN_1I;

end
always @(posedge clk or posedge reset) begin
	if(reset) Dout <= 8'b0;
	else Dout <= sorted[24];

end


endmodule


/*


ncverilog  testfixture1.v  LMFE.v  +access+r



ncverilog  testfixture1.v  LMFE_syn.v  -v  tsmc13_neg.v  +define+SDF  +access+r


*/




























