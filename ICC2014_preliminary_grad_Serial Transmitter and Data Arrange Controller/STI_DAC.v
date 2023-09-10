module STI_DAC(clk ,reset, load, pi_data, pi_length, pi_fill, pi_msb, pi_low, pi_end,
	       so_data, so_valid,
	       oem_finish, oem_dataout, oem_addr,
	       odd1_wr, odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr, even3_wr, even4_wr);

input		clk, reset;
input		load, pi_msb, pi_low, pi_end; 
input	[15:0]	pi_data;
input	[1:0]	pi_length;
input		pi_fill;
output		so_data, so_valid;

output     oem_finish;
output	reg odd1_wr, odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr, even3_wr, even4_wr;
output reg [4:0] oem_addr;
output reg [7:0] oem_dataout;

//==============================================================================

reg [15:0] data_reg;
reg [1:0] len_reg;
reg fill_reg, msb_reg, low_reg;
reg last_time;
// state machine
parameter WAIT = 4'd0, IN = 4'd1, TRAN = 4'd2, OUT = 4'd3, OUT_WAIT = 4'd4, WAIT3 = 4'd5, INSERT0 = 4'd6, INSERT0_WAIT = 4'd7, DONE = 4'd8;
reg [3:0] state, next_state;
reg [4:0] counter, next_counter;
reg [8:0] mem_end, next_mem_end;
always @(posedge clk or posedge reset) begin
	if(reset) begin
		state <= WAIT;
		counter <= 5'd0;
		mem_end <= 9'd0;
		last_time <= 1'b0;
	end
	else begin
		state <= next_state;
		counter <= next_counter;
		mem_end <= next_mem_end;
		last_time <= (state == TRAN & pi_end) | last_time;
	end
end
always @(*) begin
	case(state)
	WAIT: next_state = load ? IN : WAIT;
	IN  : next_state = TRAN;
	TRAN: begin
		case( len_reg )
		2'b00: next_state = counter==5'd7 ? OUT : TRAN;
		2'b01: next_state = counter==5'd15 ? OUT : TRAN;
		2'b10: next_state = counter==5'd23 ? OUT : TRAN;
		2'b11: next_state = counter==5'd31 ? OUT : TRAN;
		endcase
	end
	OUT : next_state = OUT_WAIT;
	OUT_WAIT: next_state = counter[1:0] == len_reg ? WAIT3 : OUT;
	WAIT3: next_state = counter == 5'd2 ? (last_time ? INSERT0 : IN) : WAIT3;
	INSERT0: next_state = INSERT0_WAIT;
	INSERT0_WAIT: next_state = mem_end == 9'd255 ? DONE : INSERT0;
	DONE: next_state = DONE;
	default: next_state = WAIT;
	endcase
end
always @(*) begin
	next_counter = state == next_state ? counter + 5'd1 : 
			next_state == OUT_WAIT ? counter : 
				state == OUT_WAIT ? counter + 5'd1 : 5'd0; 
end


// register 
always @(posedge clk or posedge reset) begin
	if(reset) begin
		data_reg <= 16'd0;
		len_reg <= 2'b0;
		fill_reg <= 1'b0;
		msb_reg <= 1'b0;
		low_reg <= 1'b0;
	end
	else begin
		data_reg <= state == IN ? pi_data : data_reg;
		len_reg <= state == IN ? pi_length : len_reg;
		fill_reg <= state == IN ? pi_fill : fill_reg;
		msb_reg <= state == IN ? pi_msb : msb_reg;
		low_reg <= state == IN ? pi_low : low_reg;
	end
end

// data logic
reg [31:0] result;
always @(*) begin
	case(len_reg)
	2'b00: begin
		result = { 24'd0, (low_reg ? data_reg[15:8] : data_reg[7:0]) };
	end
	2'b01: begin
		result = { 16'd0, data_reg };
	end
	2'b10: begin
		result = { 8'd0, (fill_reg ? {data_reg, 8'd0} : {8'd0, data_reg}) };
	end
	2'b11: begin
		result = fill_reg ? {data_reg, 16'd0} : {16'd0, data_reg};
	end
	endcase
end

// so_out
reg [31:0] so_data_parallel;

integer i1;

always @(*) begin
	so_data_parallel = 32'd0;
	case(len_reg)
	2'b00: begin
		for(i1=0; i1<8; i1=i1+1) begin
			so_data_parallel[i1] = msb_reg ? result[7-i1] : result[i1]; 
		end
	end
	2'b01: begin
		for(i1=0; i1<16; i1=i1+1) begin
			so_data_parallel[i1] = msb_reg ? result[15-i1] : result[i1]; 
		end
	end
	2'b10: begin
		for(i1=0; i1<24; i1=i1+1) begin
			so_data_parallel[i1] = msb_reg ? result[23-i1] : result[i1]; 
		end
	end
	2'b11: begin
		for(i1=0; i1<32; i1=i1+1) begin
			so_data_parallel[i1] = msb_reg ? result[31-i1] : result[i1]; 
		end
	end
	endcase
end

assign so_valid = state == TRAN;
assign so_data = so_data_parallel[counter];

// mem

integer i2;
always @(*) begin
	if(state == OUT || state == OUT_WAIT ) begin
		case(counter[1:0])
		2'b00: begin
			for(i2=0; i2<8; i2=i2+1) begin
				oem_dataout[i2] = so_data_parallel[7-i2]; 
			end
		end
		2'b01: begin
			for(i2=0; i2<8; i2=i2+1) begin
				oem_dataout[i2] = so_data_parallel[15-i2]; 
			end
		end
		2'b10: begin
			for(i2=0; i2<8; i2=i2+1) begin
				oem_dataout[i2] = so_data_parallel[23-i2]; 
			end
		end
		2'b11: begin
			for(i2=0; i2<8; i2=i2+1) begin
				oem_dataout[i2] = so_data_parallel[31-i2]; 
			end
		end
		endcase
	end
	else oem_dataout = 8'd0;
	
end
/*
assign oem_dataout =      counter == 5'd0 ? so_data_parallel[7:0] 
				: counter == 5'd1 ? so_data_parallel[15:8] 
				: counter == 5'd2 ? so_data_parallel[23:16] 
							: so_data_parallel[31:24] ;*/

always @(*) begin
	oem_addr = mem_end[5:1];	
	if(state == OUT) begin		
		odd1_wr = 1'b0;
		odd2_wr = 1'b0;
		odd3_wr = 1'b0;
		odd4_wr = 1'b0;
		even1_wr = 1'b0;
		even2_wr = 1'b0;
		even3_wr = 1'b0;
		even4_wr = 1'b0;
		next_mem_end = mem_end + 9'd1;
		case(mem_end[3:0])
		4'h0, 4'h2, 4'h4, 4'h6, 4'h9, 4'hb, 4'hd, 4'hf: begin
			case(mem_end[7:6])
			2'b00: odd1_wr = 1'b1;
			2'b01: odd2_wr = 1'b1;
			2'b10: odd3_wr = 1'b1;
			2'b11: odd4_wr = 1'b1;
			endcase
		end
		default: begin			
			case(mem_end[7:6])
			2'b00: even1_wr = 1'b1;
			2'b01: even2_wr = 1'b1;
			2'b10: even3_wr = 1'b1;
			2'b11: even4_wr = 1'b1;
			endcase
		end
		endcase
	end
	else if(state == INSERT0_WAIT && mem_end!=9'd255) begin		
		odd1_wr = 1'b0;
		odd2_wr = 1'b0;
		odd3_wr = 1'b0;
		odd4_wr = 1'b0;
		even1_wr = 1'b0;
		even2_wr = 1'b0;
		even3_wr = 1'b0;
		even4_wr = 1'b0;
		next_mem_end = mem_end + 9'd1;
		case(mem_end[3:0])
		4'h0, 4'h2, 4'h4, 4'h6, 4'h9, 4'hb, 4'hd, 4'hf: begin
			case(mem_end[7:6])
			2'b00: odd1_wr = 1'b1;
			2'b01: odd2_wr = 1'b1;
			2'b10: odd3_wr = 1'b1;
			2'b11: odd4_wr = 1'b1;
			endcase
		end
		default: begin			
			case(mem_end[7:6])
			2'b00: even1_wr = 1'b1;
			2'b01: even2_wr = 1'b1;
			2'b10: even3_wr = 1'b1;
			2'b11: even4_wr = 1'b1;
			endcase
		end
		endcase
	end
	else if(state == INSERT0_WAIT && mem_end==8'd255) begin
		
		odd1_wr = 1'b0;
		odd2_wr = 1'b0;
		odd3_wr = 1'b0;
		odd4_wr = 1'b0;
		even1_wr = 1'b0;
		even2_wr = 1'b0;
		even3_wr = 1'b0;
		next_mem_end = 8'd255;
		odd4_wr = 1'b1;
	end
	else	begin	
		next_mem_end = mem_end;
		odd1_wr = 1'b0;
		odd2_wr = 1'b0;
		odd3_wr = 1'b0;
		odd4_wr = 1'b0;
		even1_wr = 1'b0;
		even2_wr = 1'b0;
		even3_wr = 1'b0;
		even4_wr = 1'b0;
		

	end
end


assign oem_finish = state == DONE;


endmodule
