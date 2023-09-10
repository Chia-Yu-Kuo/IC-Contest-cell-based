module DT(
	input 			clk, 
	input			reset,
	output	reg		done ,
	output	reg		sti_rd ,
	output	reg 	[9:0]	sti_addr ,
	input		[15:0]	sti_di,
	output	reg		res_wr ,
	output	reg		res_rd ,
	output	reg 	[13:0]	res_addr ,
	output	reg 	[7:0]	res_do,
	input		[7:0]	res_di
	);
	
	reg [3:0] st, nst;
	reg [7:0] data_reg_0, data_reg_1, data_reg_2, data_reg_3, data_reg_4;
	reg [13:0] ram_addr, n_ram_addr;
	wire [13:0] addr_cnt;
	reg [6:0] addr_cnt_X, n_addr_cnt_X;
	reg [6:0] addr_cnt_Y, n_addr_cnt_Y;
	reg [2:0] st_cnt, n_st_cnt;
	reg [7:0] res_do_reg, n_res_do;
	reg done_reg;
	reg wr_reg;
	// state
	parameter INIT_R = 4'd0;
	parameter INIT_W = 4'd1;
	parameter F1 = 4'd2;
	parameter OUT_F = 4'd3;
	parameter F2 = 4'd4;
	parameter B1 = 4'd5;
	parameter OUT_B = 4'd6;
	parameter B2 = 4'd7;
	parameter DONE = 4'd8;
	
	assign addr_cnt = {addr_cnt_Y, addr_cnt_X};
	
	always @(posedge clk or negedge reset) begin
		if(~reset) begin
			st <= INIT_R;
		end
		else begin
			st <= nst;
		end
	end   
	always @(*) begin
		case(st)
		INIT_R: nst = INIT_W;
		INIT_W: nst = addr_cnt[3:0] == 4'hf ? addr_cnt == 14'h3fff ? F1 : INIT_R : INIT_W;
		F1: nst = st_cnt == 3'd5 ? OUT_F : F1;
		OUT_F: nst = addr_cnt == 14'h3fff ? B1 : addr_cnt_X == 7'h7f ? F1 : F2;
		F2: nst = st_cnt == 3'd3 ? OUT_F : F2;
		B1: nst = st_cnt == 3'd5 ? OUT_B : B1;
		OUT_B: nst = addr_cnt == 14'h0 ? DONE : addr_cnt_X == 7'h0 ? B1 : B2;
		B2: nst = st_cnt == 3'd3 ? OUT_B : B2;
		DONE: nst = DONE;
		default: nst = INIT_R;
		endcase
	end   
	
	// other regs
	always @(posedge clk or negedge reset) begin
		if(~reset) begin
			ram_addr <= 14'b0;
			addr_cnt_X <= 7'b0;
			addr_cnt_Y <= 7'b0;
			st_cnt <= 3'b0;
			res_do_reg <= 8'b0;
			done_reg <= 1'b0;
			wr_reg <= 1'b0;
		end
		else begin
			ram_addr <= n_ram_addr;
			addr_cnt_X <= n_addr_cnt_X;
			addr_cnt_Y <= n_addr_cnt_Y;
			st_cnt <= n_st_cnt;
			res_do_reg <= n_res_do;
			done_reg <= st == DONE;
			wr_reg <= st == OUT_F || st == OUT_B || st == INIT_W;
		end
	end 
	always @ (*) begin
		/*
		// n_addr_cnt
		case(st)
		INIT_R: n_addr_cnt = addr_cnt == 14'h3fff ? 14'd0 : addr_cnt;
		INIT_W: n_addr_cnt = addr_cnt + 14'd1;
		OUT_F: n_addr_cnt = addr_cnt == 14'h3fff ? 14'h3fff : addr_cnt + 14'd1;
		OUT_B: n_addr_cnt = addr_cnt - 14'd1;
		// F1, F2, B1, B2
		default: n_addr_cnt = addr_cnt;
		endcase
		*/
		case(st)
		INIT_R: n_addr_cnt_X = addr_cnt == 14'h3fff ? 7'd0 : addr_cnt_X;
		INIT_W: n_addr_cnt_X = addr_cnt_X + 7'd1;
		OUT_F: n_addr_cnt_X = addr_cnt == 14'h3fff ? 7'h7f : addr_cnt_X + 7'd1;
		OUT_B: n_addr_cnt_X = addr_cnt_X - 7'd1;
		// F1, F2, B1, B2
		default: n_addr_cnt_X = addr_cnt_X;
		endcase

		case(st)
		INIT_R: n_addr_cnt_Y = addr_cnt == 14'h3fff ? 7'd0 : addr_cnt_Y;
		INIT_W: n_addr_cnt_Y = addr_cnt_X == 7'h7f ? addr_cnt_Y + 7'd1 : addr_cnt_Y;
		OUT_F: n_addr_cnt_Y = addr_cnt == 14'h3fff ? 7'h7f : addr_cnt_X == 7'h7f ? addr_cnt_Y + 7'd1 : addr_cnt_Y;
		OUT_B: n_addr_cnt_Y = addr_cnt_X == 7'h0 ? addr_cnt_Y - 7'd1 : addr_cnt_Y;
		// F1, F2, B1, B2
		default: n_addr_cnt_Y = addr_cnt_Y;
		endcase

		// n_st_cnt
		case(st)
		F1, F2, B1, B2: n_st_cnt = nst == st ? st_cnt + 3'd1 : 3'd0; 
		default: n_st_cnt = 3'd0;
		endcase

		// n_ram_addr
		case(st)
		INIT_R, INIT_W: n_ram_addr = addr_cnt;
		F1: begin
			case(st_cnt)
			3'd0: n_ram_addr = { addr_cnt[13:7] - 7'd1,  addr_cnt[6:0] - 7'd1 };
			3'd1: n_ram_addr = { addr_cnt[13:7] - 7'd1,  addr_cnt[6:0] };
			3'd2: n_ram_addr = { addr_cnt[13:7] - 7'd1,  addr_cnt[6:0] + 7'd1 };
			3'd3: n_ram_addr = { addr_cnt[13:7],  addr_cnt[6:0] - 7'd1 };
			default: n_ram_addr = addr_cnt;
			endcase
		end
		F2: begin
			case(st_cnt)
			3'd0: n_ram_addr = { addr_cnt[13:7] - 7'd1,  addr_cnt[6:0] + 7'd1 };
			3'd1: n_ram_addr = addr_cnt;
			default: n_ram_addr = addr_cnt;
			endcase
		end
		B1: begin
			case(st_cnt)
			3'd0: n_ram_addr = { addr_cnt[13:7] + 7'd1,  addr_cnt[6:0] + 7'd1 };
			3'd1: n_ram_addr = { addr_cnt[13:7] + 7'd1,  addr_cnt[6:0] };
			3'd2: n_ram_addr = { addr_cnt[13:7] + 7'd1,  addr_cnt[6:0] - 7'd1 };
			3'd3: n_ram_addr = { addr_cnt[13:7],  addr_cnt[6:0] + 7'd1 };
			default: n_ram_addr = addr_cnt;
			endcase
		end
		B2: begin
			case(st_cnt)
			3'd0: n_ram_addr = { addr_cnt[13:7] + 7'd1,  addr_cnt[6:0] - 7'd1 };
			3'd1: n_ram_addr = addr_cnt;
			default: n_ram_addr = addr_cnt;
			endcase
		end
		
		// OUT, DONE
		default: n_ram_addr = ram_addr;
		endcase	
	end

	
	// data_reg
	always @(posedge clk or negedge reset) begin
		if(~reset) begin
			data_reg_0 <= 8'd0;
			data_reg_1 <= 8'd0;
			data_reg_2 <= 8'd0;
			data_reg_3 <= 8'd0;
			data_reg_4 <= 8'd0;
		end
		else if(st == F1) begin
			case(st_cnt)
			3'd1: data_reg_0 <= res_di;
			3'd2: data_reg_1 <= res_di;
			3'd3: data_reg_2 <= res_di;
			3'd4: data_reg_3 <= res_di;
			3'd5: data_reg_4 <= res_di;
			endcase
		end
		else if(st == OUT_F) begin
			data_reg_0 <= data_reg_1;
			data_reg_1 <= data_reg_2;
			data_reg_3 <= n_res_do;
		end
		else if(st == F2) begin
			case(st_cnt)
			3'd1: data_reg_2 <= res_di;
			3'd2: data_reg_4 <= res_di;
			endcase
		end
		else if(st == B1) begin
			case(st_cnt)
			3'd1: data_reg_0 <= res_di;
			3'd2: data_reg_1 <= res_di;
			3'd3: data_reg_2 <= res_di;
			3'd4: data_reg_3 <= res_di;
			3'd5: data_reg_4 <= res_di;
			endcase
		end
		else if(st == OUT_B) begin
			data_reg_0 <= data_reg_1;
			data_reg_1 <= data_reg_2;
			data_reg_3 <= n_res_do;
		end
		else if(st == B2) begin
			case(st_cnt)
			3'd1: data_reg_2 <= res_di;
			3'd2: data_reg_4 <= res_di;
			endcase
		end
		else data_reg_0 <= data_reg_0;
	end 

	// n_res_do
	wire [7:0] d_p_1_0, d_p_1_1, d_p_1_2, d_p_1_3;
	assign d_p_1_0 = data_reg_0 + 8'd1;
	assign d_p_1_1 = data_reg_1 + 8'd1;
	assign d_p_1_2 = data_reg_2 + 8'd1;
	assign d_p_1_3 = data_reg_3 + 8'd1;
	always @(*) begin
		if(st == INIT_W) begin
			n_res_do = { 7'b0, sti_di[4'd15-addr_cnt[3:0]] };
		end
		else if(st == OUT_F) begin
			n_res_do =  data_reg_4 == 8'd0 ? 8'd0 :
					(d_p_1_0 < d_p_1_1 && d_p_1_0 < d_p_1_2 && d_p_1_0 < d_p_1_3) ? (d_p_1_0):
					(d_p_1_1 < d_p_1_2 && d_p_1_1 < d_p_1_3) ? (d_p_1_1) : 
					(d_p_1_2 < d_p_1_3) ? (d_p_1_2) : (d_p_1_3); 
		end
		else if(st == OUT_B) begin
			n_res_do =  data_reg_4 == 8'd0 ? 8'd0 :
					(d_p_1_0 < d_p_1_1 && d_p_1_0 < d_p_1_2 && d_p_1_0 < d_p_1_3 && d_p_1_0 < data_reg_4) ? (d_p_1_0):
					(d_p_1_1 < d_p_1_2 && d_p_1_1 < d_p_1_3 && d_p_1_1 < data_reg_4) ? (d_p_1_1) : 
					(d_p_1_2 < d_p_1_3 && d_p_1_2 < data_reg_4) ? (d_p_1_2) :
					(d_p_1_3 < data_reg_4) ? (d_p_1_3) : (data_reg_4); 
		end
		else n_res_do = 8'b0;
	end

	// outputs
	always @(*) begin
		done = done_reg;
		sti_rd = st == INIT_R;
		sti_addr = addr_cnt[13:4];
		res_wr = wr_reg;
		res_rd = st != INIT_R || st != INIT_W || st != DONE;
		res_addr = ram_addr;
		res_do = res_do_reg;
	end


endmodule
