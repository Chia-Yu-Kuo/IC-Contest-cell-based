module TPA(clk, reset_n, 
	   SCL, SDA, 
	   cfg_req, cfg_rdy, cfg_cmd, cfg_addr, cfg_wdata, cfg_rdata);
input 		clk; 
input 		reset_n;
// Two-Wire Protocol slave interface 
input 		SCL;  
inout		SDA;

wire TWM;
reg SDA_OUT, TWS;

assign SDA = SDA_OUT ? TWS : 1'bz;
assign TWM = SDA_OUT ? 1'bz : SDA;

// Register Protocal Master interface 
input		cfg_req;
output		cfg_rdy;
input		cfg_cmd;
input	[7:0]	cfg_addr;
input	[15:0]	cfg_wdata;
output	[15:0]  cfg_rdata;

reg	[15:0] Register_Spaces	[0:255];


// ===== Coding your RTL below here ================================= 

// state & cnt
parameter	TWP_INI	= 4'd0;
parameter	TWP_CMD	= 4'd1;
parameter	TWP_ADDR	= 4'd2;
parameter	TWP_WI		= 4'd3;
parameter	TWP_M2S	= 4'd4;
parameter	TWP_ROUT	= 4'd5;
parameter	TWP_S2M	= 4'd6;
parameter	TWP_WR		= 4'd7;
reg [3:0] twp_st, twp_nst;
reg [3:0] twp_cnt;


parameter	RIM_INI	= 2'd0;
parameter	RIM_CMD	= 2'd1;
parameter	RIM_EXE	= 2'd2;
parameter	RIM_STALL	= 2'd3;
reg [1:0] rim_st, rim_nst;

// registers, wires definition
reg twp_cmd_reg;
reg rim_cmd_reg;

wire [7:0] twp_addr, rim_addr;
wire twp_wen, rim_wen;
wire [15:0] twp_rd, rim_rd;
wire [15:0] twp_wd, rim_wd;

reg [7:0] twp_addr_reg;
reg [15:0] twp_wd_reg;
wire stall_out_logic;
 
integer i1;

always @ (posedge clk or negedge reset_n) begin
	if(~reset_n) begin
		twp_st <= TWP_INI;
		rim_st <= RIM_INI;
	end
	else begin
		twp_st <= twp_nst;
		rim_st <= rim_nst;
	end
end

always @ (*) begin
	case(twp_st)
	TWP_INI: twp_nst = ~TWM ? TWP_CMD : TWP_INI;
	TWP_CMD: twp_nst = TWP_ADDR; 
	TWP_ADDR: twp_nst = twp_cnt == 4'd7 ? twp_cmd_reg ? TWP_WI : TWP_M2S : TWP_ADDR; 
	TWP_WI: twp_nst = twp_cnt == 4'd15 ? TWP_WR : TWP_WI;	
	TWP_WR: twp_nst = TWP_INI;
	TWP_M2S: twp_nst = twp_cnt == 4'd3 ? TWP_ROUT : TWP_M2S;  
	TWP_ROUT: twp_nst = twp_cnt == 4'd15 ? TWP_S2M : TWP_ROUT;
	TWP_S2M: twp_nst = twp_cnt == 4'd1 ? TWP_INI : TWP_S2M;	
	default: twp_nst = TWP_INI;
	endcase
end
always @ (*) begin
	case(rim_st)
	RIM_INI: rim_nst = cfg_req ? RIM_CMD : RIM_INI;
	RIM_CMD: rim_nst = RIM_STALL;	
	RIM_EXE: rim_nst = RIM_INI;
	RIM_STALL: rim_nst = stall_out_logic ? RIM_EXE : RIM_STALL; // stall out maybe more condition
	default: rim_nst = RIM_INI;
	endcase
end
always @ (posedge clk or negedge reset_n) begin
	if(~reset_n) begin
		twp_cnt <= 4'd0;
		twp_cmd_reg <= 1'b0;
		rim_cmd_reg <= 1'b0;
	end
	else begin
		twp_cnt <= twp_st != twp_nst ? 4'd0 : twp_cnt + 4'd1;
		if(twp_st == TWP_CMD) twp_cmd_reg <= TWM;
		if(rim_st == RIM_CMD) rim_cmd_reg <= cfg_cmd;
	end
end



// register file logic
always @ (posedge clk) begin
	/*if(~reset_n) begin
		for(i1 = 0; i1<256; i1 = i1+1) begin
			Register_Spaces[i1] <= 16'd0;
		end
	end
	else */
	if(rim_wen) begin
		Register_Spaces[rim_addr] <= rim_wd;
	end
	else if(twp_wen) begin
		Register_Spaces[twp_addr] <= twp_wd;
	end
end

assign twp_rd = Register_Spaces[twp_addr];
assign rim_rd = Register_Spaces[rim_addr];


// TWS logic

always @ (posedge clk or negedge reset_n) begin
	if(~reset_n) begin
		twp_addr_reg <= 8'd0;
		twp_wd_reg <= 16'd0;
	end
	else if(twp_st == TWP_ADDR) begin
		twp_addr_reg[twp_cnt] <= TWM;
	end
	else if(twp_st == TWP_WI) begin
		twp_wd_reg[twp_cnt] <= TWM;
	end
end

assign twp_addr = twp_addr_reg;
assign twp_wen = twp_st == TWP_WR;
assign twp_wd = twp_wd_reg;

always @ (*) begin
	case(twp_st)
	TWP_M2S: TWS = twp_cnt == 4'd2 ? 1'b1 : 
			   twp_cnt == 4'd3 ? 1'b0 : 1'bz;
	TWP_ROUT: TWS = twp_rd[twp_cnt]; 
	TWP_S2M: TWS = twp_cnt == 4'd0 ? 1'b1 : 1'bz;
	default: TWS = 1'bz;
	endcase
end
always @ (*) begin
	case(twp_st)
	TWP_M2S: SDA_OUT = twp_cnt == 4'd2 || twp_cnt == 4'd3;
	TWP_ROUT: SDA_OUT = 1'b1; 
	TWP_S2M: SDA_OUT = twp_cnt == 4'd0;
	default: SDA_OUT = 1'b0;
	endcase
end

// Arbiter logic

assign rim_addr = cfg_addr;
assign rim_wd = cfg_wdata;
assign rim_wen = rim_st == RIM_EXE && rim_cmd_reg;

assign cfg_rdata = rim_rd;
assign cfg_rdy = rim_st == RIM_STALL || rim_st == RIM_EXE;


assign stall_out_logic = twp_nst == TWP_INI || twp_st == TWP_CMD|| twp_st == TWP_INI;





endmodule



/*
ncverilog testbench.v TPA.v +define+FSDB +access+r

ncverilog testbench.v TPA_syn.v -v tsmc13_neg.v +define+SDF


*/


















