`timescale 1ns/10ps
module SME ( clk, reset, case_insensitive, pattern_no, match_addr, valid, finish, T_data, T_addr, P_data, P_addr);
input         clk;
input         reset;
input         case_insensitive;
output [3:0]  pattern_no;
output [11:0] match_addr;
output        valid;
output        finish;
input  [7:0]  T_data;
output [11:0] T_addr;
input  [7:0]  P_data;
output [6:0]  P_addr;


//====================================================================
parameter ques = 8'h3f;
parameter dot = 8'h2E;
parameter dollor = 8'h24;
parameter hat = 8'h5E;
parameter char_A = 8'h41;
parameter char_Z = 8'h5A;
parameter char_a = 8'h61;
parameter char_z = 8'h7a;
parameter endl = 8'h0A;


// state & cnt
parameter	WAIT	= 4'd0;
parameter	CMP	= 4'd1;
parameter	BRANCH	= 4'd2;
parameter	OUT	= 4'd3;
parameter	N_M_ADDR	= 4'd4;
parameter	N_PAT	= 4'd5;
parameter	DONE	= 4'd6;
parameter	WAIT2	= 4'd7;
parameter	SCAN_PAT	= 4'd8;
parameter	WAIT3	= 4'd9;
parameter	WAIT4	= 4'd10;
parameter	WAIT5	= 4'd11;

reg [3:0] st, nst;

reg [11:0] match_addr_reg;
reg [3:0]  pattern_no_reg;
wire [11:0] str_st;
reg [6:0]  pat_st;
reg [11:0]  str_pos;
reg [6:0]  pat_pos;
reg [7:0]  str_in_reg;
reg [7:0]  str_in_comb;
reg [7:0]  pat_in_reg;
reg [7:0]  pat_in_comb;
reg hat_flag, branch_flag;

reg branch_valid_1, branch_valid_2, branch_valid_3, branch_valid_4;
reg [6:0] branch_pat_pos_1, branch_pat_pos_2, branch_pat_pos_3, branch_pat_pos_4;
reg [11:0] branch_str_pos_1, branch_str_pos_2, branch_str_pos_3, branch_str_pos_4;

reg [6:0] pat_len_reg;

wire stall;

assign stall = P_data == ques && st == CMP;
assign str_st = match_addr_reg;

wire equal;
assign equal = str_in_reg == pat_in_reg || (pat_in_reg == dot && str_in_reg != endl);

always @ (posedge clk or posedge reset) begin
	if(reset) begin
		st <= SCAN_PAT;
	end
	else begin
		st <= nst;
	end
end

always @ (*) begin
	case(st)
	WAIT: nst = pat_len_reg == 7'd1 ? DONE : CMP;
	CMP: nst = (equal && pat_in_comb == 8'h00) ? OUT : (~equal || str_in_comb == 8'h00) && ~stall ? BRANCH : CMP;
	BRANCH: nst = (branch_valid_1 | branch_valid_2 | branch_valid_3 | branch_valid_4) ? WAIT2 : N_M_ADDR;
	OUT: nst = N_M_ADDR;
	N_M_ADDR: nst = (str_in_comb == 8'h00) ? N_PAT : WAIT3;
	WAIT3: nst = CMP;
	N_PAT: nst = SCAN_PAT;
	DONE: nst = DONE;
	WAIT2: nst = WAIT4;
	WAIT4: nst = P_data == ques ? WAIT5 : CMP;
	WAIT5: nst = CMP;
	SCAN_PAT: nst = P_data == 8'h00 ? WAIT : SCAN_PAT;
	default: nst = WAIT;
	endcase
end




// 
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		match_addr_reg <= 12'd0;
		pat_st <= 7'd0;
		str_pos <= 12'd0;
		pat_pos <= 7'd0;
	end
	else if(st == N_M_ADDR) begin
		match_addr_reg <= match_addr_reg + 12'd1;
		str_pos <= str_pos + 12'd1;
		pat_pos <= pat_pos + 7'd1 ;
	end
	else if(st == SCAN_PAT) begin
		pat_pos <= nst == WAIT ? pat_st : pat_pos + 7'd1;
	end
	else if(st == N_PAT) begin
		match_addr_reg <= 12'd0;
		pat_st <= pat_st + pat_len_reg;
		str_pos <= 12'd0;
		pat_pos <= pat_st + pat_len_reg;
	end
	else if(st == WAIT || st == WAIT5 || st == WAIT3) begin
		str_pos <= str_pos + 12'd1;
		pat_pos <= pat_pos + 7'd1;
	end
	else if(st == WAIT2) begin
		str_pos <= str_pos + 12'd1;
		pat_pos <= pat_pos + 7'd3;
	end
	else if(st == WAIT4) begin
		str_pos <= nst == WAIT5 ? str_pos : str_pos + 12'd1;
		pat_pos <= nst == WAIT5 ? pat_pos : pat_pos + 7'd1;
	end
	else if(st == CMP) begin
		str_pos <= stall ? str_pos : str_pos + 12'd1;
		pat_pos <= pat_pos + 7'd1;
	end
	else if(st == OUT) begin
		pat_pos <= pat_st;
		match_addr_reg <= match_addr_reg + 12'd1 + (branch_valid_1 + branch_valid_2 + branch_valid_3 + branch_valid_4);
		str_pos <= match_addr_reg + 12'd1 + (branch_valid_1 + branch_valid_2 + branch_valid_3 + branch_valid_4);
	end	
	else if(st == BRANCH) begin
		str_pos <= (branch_valid_1 | branch_valid_2 | branch_valid_3 | branch_valid_4) ? 
			  branch_valid_4 ? branch_str_pos_4  - 12'd1 
			: branch_valid_3 ? branch_str_pos_3  - 12'd1 
			: branch_valid_2 ? branch_str_pos_2  - 12'd1 
			: branch_valid_1 ? branch_str_pos_1  - 12'd1 
			: str_pos: match_addr_reg + 12'd1;
		pat_pos <= (branch_valid_1 | branch_valid_2 | branch_valid_3 | branch_valid_4) ? 
			  branch_valid_4 ? branch_pat_pos_4   - 7'd3 
			: branch_valid_3 ? branch_pat_pos_3  - 7'd3 
			: branch_valid_2 ? branch_pat_pos_2  - 7'd3 
			: branch_valid_1 ? branch_pat_pos_1  - 7'd3 
			: pat_pos: pat_st;
	end
end

// hat flag
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		hat_flag <= 1'b0;
	end
	else if(st == N_PAT) begin
		hat_flag <= 1'b0;
	end
	else if(st == CMP) begin
		hat_flag <= P_data == hat ? 1'b1 : hat_flag;
	end
end

// pat_len reg
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		pat_len_reg <= -7'd1;
	end
	else if(nst == SCAN_PAT && st != SCAN_PAT) begin
		pat_len_reg <= -7'd1;
	end
	else if(st == SCAN_PAT) begin
		pat_len_reg <= pat_len_reg + 7'd1;
	end
end

// branch logic
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		branch_flag <= 1'b0;
		branch_valid_1 <= 1'b0;
		branch_valid_2 <= 1'b0;
		branch_valid_3 <= 1'b0;
		branch_valid_4 <= 1'b0;
		branch_pat_pos_1 <= 7'b0;
		branch_pat_pos_2 <= 7'b0;
		branch_pat_pos_3 <= 7'b0;
		branch_pat_pos_4 <= 7'b0;
		branch_str_pos_1 <= 12'b0;
		branch_str_pos_2 <= 12'b0;
		branch_str_pos_3 <= 12'b0;
		branch_str_pos_4 <= 12'b0;
	end
	else if(st == N_M_ADDR) begin
		branch_flag <= 1'b0;
		branch_valid_1 <= 1'b0;
		branch_valid_2 <= 1'b0;
		branch_valid_3 <= 1'b0;
		branch_valid_4 <= 1'b0;
		branch_pat_pos_1 <= 7'b0;
		branch_pat_pos_2 <= 7'b0;
		branch_pat_pos_3 <= 7'b0;
		branch_pat_pos_4 <= 7'b0;
		branch_str_pos_1 <= 12'b0;
		branch_str_pos_2 <= 12'b0;
		branch_str_pos_3 <= 12'b0;
		branch_str_pos_4 <= 12'b0;
	end
	else if(st == CMP) begin
		if(stall) begin
			branch_flag <= 1'b1;
			if(~branch_valid_1) begin
				branch_valid_1 <= 1'b1;
				branch_pat_pos_1 <= pat_pos;
				branch_str_pos_1 <= str_pos - 7'd2;
			end
			else if(~branch_valid_2) begin
				branch_valid_2 <= 1'b1;
				branch_pat_pos_2 <= pat_pos;
				branch_str_pos_2 <= str_pos - 7'd2;
			end
			else if(~branch_valid_3) begin
				branch_valid_3 <= 1'b1;
				branch_pat_pos_3 <= pat_pos;
				branch_str_pos_3 <= str_pos - 7'd2;
			end
			else begin
				branch_valid_4 <= 1'b1;
				branch_pat_pos_4 <= pat_pos;
				branch_str_pos_4 <= str_pos - 7'd2;
			end
		end
	end
	else if(st == BRANCH) begin
		if(branch_valid_4) begin
			branch_valid_4 <= 1'b0;
		end
		else if(branch_valid_3) begin
			branch_valid_3 <= 1'b0;
		end
		else if(branch_valid_2) begin
			branch_valid_2 <= 1'b0;
		end
		else begin
			branch_valid_1 <= 1'b0;
		end
	end
end

// str pat in_reg
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		str_in_reg <= endl;
		pat_in_reg <= endl;
	end
	else if(st == CMP && stall) begin
		str_in_reg <= str_in_reg;
		pat_in_reg <= pat_in_reg;
	end
	else if(st == WAIT5) begin
		str_in_reg <= str_in_reg;
		pat_in_reg <= pat_in_comb;
	end
	else begin
		str_in_reg <= str_in_comb;
		pat_in_reg <= pat_in_comb;
	end
end

// input filter
always @ (*) begin
	if(case_insensitive) begin
		if(T_data >= char_A && T_data <= char_Z) str_in_comb = T_data + 8'h20;
		else if(T_data == hat || T_data == dollor) str_in_comb = endl;
		else str_in_comb = T_data;

		if(P_data >= char_A && P_data <= char_Z) pat_in_comb = P_data + 8'h20;
		else if(P_data == hat || P_data == dollor) pat_in_comb = endl;
		else pat_in_comb = P_data;
	end
	else begin
		if(T_data == hat || T_data == dollor) str_in_comb = endl;
		else str_in_comb = T_data;

		if(P_data == hat || P_data == dollor) pat_in_comb = endl;
		else pat_in_comb = P_data;
	end
	if(st == WAIT) begin
		pat_in_comb = endl;
		str_in_comb = endl;
	end
	else if(st == WAIT4 && P_data == 8'h00) begin
		pat_in_comb = endl;
		str_in_comb = endl;
	end
end


// output logic
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		pattern_no_reg <= 4'd0;
	end
	else if(st == N_PAT) begin
		pattern_no_reg <= pattern_no_reg + 4'd1;
	end
end

/*
output [3:0]  pattern_no;
output [11:0] match_addr;
output        valid;
output        finish;
output [11:0] T_addr;
output [6:0]  P_addr;
*/

assign pattern_no = pattern_no_reg;
assign match_addr = ~hat_flag ? match_addr_reg : match_addr_reg + 12'd1;
assign valid = st == OUT;
assign finish = st == DONE;
assign T_addr = stall ? str_pos - 12'd1 : str_pos;
assign P_addr = nst == WAIT5 ? pat_pos - 12'd5 : pat_pos;



endmodule



/*

ncverilog +ncmaxdelays testfixture1.v SME.v rom_4096x8_t13.v rom_128x8_t13_pattern1.v +access+rw
ncverilog +ncmaxdelays testfixture1.v SME_syn.v rom_4096x8_t13.v rom_128x8_t13_pattern1.v -v tsmc13_neg.v +define+SDF


*/





