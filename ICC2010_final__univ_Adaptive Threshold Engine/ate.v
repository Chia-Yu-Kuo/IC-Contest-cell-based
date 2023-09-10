module ATE(clk,reset,pix_data,type,bin,threshold);
input clk;
input reset;
input [7:0] pix_data;
input type;
output bin;
output [7:0] threshold;

// state & cnt
parameter	IN_EDGE0	= 3'd0;
parameter	IN_EDGE	 	= 3'd1;
parameter	IN_MID0		= 3'd2;
parameter	IN_MID		= 3'd3;
parameter	OUT_LAST	= 3'd4;
parameter	DONE		= 3'd5;
reg [2:0] st, nst;
reg [2:0] pixelX, npixelX, pixelY, npixelY;
reg [6:0] blockX, nblockX, blockY, nblockY;
reg previous_is_edge;

wire [5:0] pindex;
assign pindex = { pixelY, pixelX };


always @ (posedge clk or posedge reset) begin
	if(reset) begin
		st <= IN_EDGE0;
	end
	else begin
		st <= nst;
	end
end

always @ (*) begin
	case(st)
	IN_EDGE0: nst = IN_EDGE;
	IN_EDGE: nst = ~type ? pindex == 6'd63 ? (blockX == 7'd5 ? (blockY == 7'd3 ? OUT_LAST : IN_EDGE0) : IN_MID0) : IN_EDGE// 6*4
					:pindex == 6'd63 ? (blockX == 7'd65 ? (blockY == 7'd63 ? OUT_LAST : IN_EDGE0) : IN_MID0) : IN_EDGE; // 66*64
	IN_MID0: nst = IN_MID;
	IN_MID: nst = ~type ? pindex == 6'd63 ? (blockX == 7'd4 ? IN_EDGE0 : IN_MID0) : IN_MID // 6*4
					: pindex == 6'd63 ? (blockX == 7'd64 ? IN_EDGE0 : IN_MID0) : IN_MID; // 66*64
	OUT_LAST: nst = pixelX == 3'd7 && pixelY == 3'd7 ? DONE : OUT_LAST;
	DONE: nst = DONE;
	default: nst = IN_EDGE;
	endcase
end


always @ (posedge clk or posedge reset) begin
	if(reset) begin
		pixelX <= 3'd0;
		pixelY <= 3'd0;
		blockX <= 7'd0;
		blockY <= 7'd0;
	end
	else begin
		pixelX <= npixelX;
		pixelY <= npixelY;
		blockX <= nblockX;
		blockY <= nblockY;
	end
end
always @ (*) begin
	npixelX = pixelX + 3'd1;
	npixelY = pixelX == 3'd7 ? pixelY + 3'd1 : pixelY;
	nblockX = st == IN_EDGE && nst == IN_EDGE0 ? 7'd0 : 
								   pixelX == 3'd7 && pixelY == 3'd7 ? blockX + 6'd1 : blockX;
	nblockY = st == IN_EDGE && nst == IN_EDGE0 ? blockY + 7'd1 : blockY;
end

// pixel_reg
reg [7:0] pixel_reg [0:63];
integer i1;

always @ (posedge clk or posedge reset) begin
	if(reset) begin
		for(i1 = 0; i1<63; i1 = i1+1) begin
			pixel_reg[i1] <= 8'd0;
		end
	end
	else if(st == IN_EDGE || st == IN_EDGE0 || st == OUT_LAST) begin
		pixel_reg[pindex] <= 8'd0;
	end
	else if(st == IN_MID || st == IN_MID0) begin
		pixel_reg[pindex] <= pix_data;
	end
end

reg bin_reg;
reg [7:0] th_reg;
reg [7:0] min_reg, max_reg;
reg [7:0] in_reg;

always @ (posedge clk or posedge reset) begin
	if(reset) begin
		in_reg <= 8'd0;
	end
	else begin
		in_reg <= pix_data;
	end
end


always @ (posedge clk or posedge reset) begin
	if(reset) begin
		min_reg <= 8'd0;
		max_reg <= 8'd0;
	end
	else if(st == IN_EDGE0 || st == IN_EDGE) begin
		min_reg <= 8'd0;
		max_reg <= 8'd0;
	end
	else if(st == IN_MID0) begin
		min_reg <= pix_data;
		max_reg <= pix_data;
	end
	else begin
		min_reg <= in_reg < min_reg ? in_reg : min_reg;
		max_reg <= max_reg < in_reg ? in_reg : max_reg;
	end
end

always @ (posedge clk or posedge reset) begin
	if(reset) begin
		previous_is_edge <= 1'b1;
	end
	else if(nst == IN_EDGE0 || nst == IN_MID0) begin
		previous_is_edge <= st == IN_EDGE;
	end
	else if(nst == OUT_LAST || nst == DONE) begin
		previous_is_edge <= 1'b1;
	end
end
/*
wire [8:0] th_double1, th_double2, th_double3, th_double;
//assign pixel_all_min = min_reg < pixel_reg[63] ? min_reg : pixel_reg[63];
//assign pixel_all_max = max_reg > pixel_reg[63] ? max_reg : pixel_reg[63];
//assign th_double = {1'b0, pixel_all_min} + {1'b0, pixel_all_max};
assign th_double1 = {1'b0, min_reg} + {1'b0, max_reg};
assign th_double2 = {1'b0, pixel_reg[63]} + {1'b0, max_reg};
assign th_double3 = {1'b0, pixel_reg[63]} + {1'b0, min_reg};
assign th_double = min_reg > pixel_reg[63] ? th_double2 :
			 max_reg < pixel_reg[63] ? th_double3 : th_double1;*/

wire [8:0] th_double;
wire [8:0] pixel_all_min, pixel_all_max;
assign pixel_all_min = min_reg < pixel_reg[63] ? min_reg : pixel_reg[63];
assign pixel_all_max = max_reg > pixel_reg[63] ? max_reg : pixel_reg[63];
assign th_double = {1'b0, pixel_all_min} + {1'b0, pixel_all_max};

always @ (posedge clk or posedge reset) begin
	if(reset) begin
		th_reg <= 8'd0;
	end
	else if(st == OUT_LAST || st == DONE) begin
		th_reg <= 8'd0;
	end
	else if(st == IN_MID0 || st == IN_EDGE0) begin
		th_reg <= th_double[8:1] + { 7'd0, th_double[0]} ;
	end
end

reg [7:0] temp_reg;
always @ (posedge clk or posedge reset) begin
	if(reset) begin
		temp_reg <= 8'd0;
	end
	else begin
		temp_reg <= pixel_reg[{ npixelY, npixelX }];
	end
end

always @ (posedge clk or posedge reset) begin
	if(reset) begin
		bin_reg <= 1'd0;
	end
	else if(st == OUT_LAST || st == DONE) begin
		bin_reg <= 1'd0;
	end
	else if(previous_is_edge) begin
		bin_reg <= 1'd0;
	end
	else if(st == IN_MID0 || st == IN_EDGE0) begin
		bin_reg <= th_double[0] ? th_double[8:1] + 8'd1 <= pixel_reg[0] : th_double[8:1] <= pixel_reg[0];
	end
	else if(st == IN_MID || st == IN_EDGE) begin
		bin_reg <= th_reg <= temp_reg;
	end
	else if(st == IN_MID || st == IN_EDGE) begin
		bin_reg <= th_reg <= temp_reg;
	end
end

assign bin = bin_reg;
assign threshold = th_reg;

/*
initial begin
    `ifdef FSDB
	$fsdbDumpMDA;
        $fsdbDumpvars;
    `endif
end*/

endmodule








