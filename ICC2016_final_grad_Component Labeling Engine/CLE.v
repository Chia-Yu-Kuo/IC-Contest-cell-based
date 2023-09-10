
module CLE ( clk, reset, rom_q, rom_a, sram_q, sram_a, sram_d, sram_wen, finish);
input         clk;
input         reset;
input  [7:0]  rom_q;
output [6:0]  rom_a;
input  [7:0]  sram_q;
output reg [9:0]  sram_a;
output [7:0]  sram_d;
output        sram_wen;
output        finish;


//====================================================================

// state & cnt
parameter	INI_BUFF	= 4'd0;
parameter	IN_BUFF		= 4'd1;
parameter	INI_WIN		= 4'd2;
parameter	SHIFT_WIN1	= 4'd3;
parameter	SHIFT_WIN2	= 4'd4;
parameter	UP_WIN		= 4'd5;
parameter	UP_RAM		= 4'd6;
parameter	RAM_MARK_TAB	= 4'd7;
parameter	UP_TAB		= 4'd8;
parameter	PASS2		= 4'd9;
parameter	DONE		= 4'd10;


parameter  	MARK_SIZE = 200;


reg [3:0] st, nst;
reg [7:0] cnt;
reg [7:0] lab_cnt;

reg  [67:0] buff ;
wire [4:0] win_bin ;

reg [7:0] win_oct [0:4];
wire [7:0] win_min ;

reg [10:0] cent_pos ;
wire[10:0] win_pos_0 ;
wire[10:0] win_pos_1 ;
wire[10:0] win_pos_2 ;
wire[10:0] win_pos_3 ;


wire [6:0] win_pos_bin [0:4];

reg pass2_flag;
wire [3:0] pass2_flag_logic ;
reg [7:0] mark_tab [0: MARK_SIZE-1] ;

wire [7:0] rom_q_inv;
assign rom_q_inv[7] = rom_q[0]; 
assign rom_q_inv[6] = rom_q[1];
assign rom_q_inv[5] = rom_q[2];
assign rom_q_inv[4] = rom_q[3];
assign rom_q_inv[3] = rom_q[4];
assign rom_q_inv[2] = rom_q[5];
assign rom_q_inv[1] = rom_q[6];
assign rom_q_inv[0] = rom_q[7];


integer i1,i2,i3;
 


//
wire [33:0] buff_0;
assign buff_0 = buff[33:0];
wire [33:0] buff_1;
assign buff_1 = buff[67:34];

//


always @ (posedge clk or posedge reset) begin
	if(reset) begin
		st <= INI_BUFF;
	end
	else begin
		st <= nst;
	end
end
always @ (*) begin
	case(st)
	INI_BUFF: nst = cnt == 8'd4 ? INI_WIN : INI_BUFF ;
	INI_WIN : nst = ( (win_bin[2]==1'b0 ) || (cnt==8'd2) ) ? SHIFT_WIN1 : INI_WIN ;
	SHIFT_WIN1 : nst = UP_WIN;
	SHIFT_WIN2 : nst = (cent_pos == 11'd1024) ?  ( (pass2_flag) ? UP_TAB : DONE ) : (cent_pos[4:0]==5'd31) ? IN_BUFF : UP_WIN ;
	IN_BUFF : nst = cnt == 8'd4 ? INI_WIN : IN_BUFF ;
	UP_WIN : nst = ( (win_bin[2]==1'b0  ) || (cnt==8'd2) ) ?  (win_bin[4]) ? UP_RAM : SHIFT_WIN2 : UP_WIN;
	UP_RAM : nst = ( |pass2_flag_logic) ? RAM_MARK_TAB : SHIFT_WIN2;
	RAM_MARK_TAB : nst = cnt==8'd2 ? SHIFT_WIN2 : RAM_MARK_TAB ;
	UP_TAB :  nst = (cnt== lab_cnt) ? PASS2 : UP_TAB ;
	PASS2 : nst = (cent_pos ==11'd1024 ) ? DONE : PASS2;
	default: nst = INI_BUFF; 
	endcase
end




always @ (posedge clk or posedge reset) begin
	if(reset) begin
		cnt <= 8'd0;
		lab_cnt<=8'd1;

		buff <= 68'd0;
		cent_pos <= 11'd0;
		for (i1=0 ; i1<5 ; i1=i1+1)begin
			win_oct[i1] <= 8'd0;
		end
		pass2_flag <= 1'b0;
		
		for (i2=0 ; i2 < MARK_SIZE ; i2=i2+1) begin
			mark_tab[i2]<=i2;
		end
	end
	else begin
		cnt <= st != nst ? 8'd0 : cnt + 8'd1;
		case(st)
		INI_BUFF: begin
			case(cnt)
			8'd1: buff[8:1]  <= rom_q_inv;					
			8'd2: buff[16:9] <= rom_q_inv;
			8'd3: buff[24:17] <= rom_q_inv;	
			8'd4: buff[32:25] <= rom_q_inv;	
			endcase
		end
		IN_BUFF : begin
			case(cnt)
			8'd1: buff[42:35] <= rom_q_inv;					
			8'd2: buff[50:43] <= rom_q_inv;
			8'd3: buff[58:51] <= rom_q_inv;					
			8'd4: buff[66:59] <= rom_q_inv;
			endcase	
	
			for (i1=0 ; i1<5 ; i1=i1+1)begin
				win_oct[i1] <= 8'd0;
			end	

		end
		INI_WIN : begin
			win_oct[4] <= 8'd0 ;
			case(cnt)
			8'd1: win_oct[2] <= win_bin[2] ? sram_q : 8'd0 ;				
			endcase	
		end
		SHIFT_WIN1 : begin	
			win_oct[0] <= win_oct[1];
			win_oct[1] <= win_oct[2];
			win_oct[2] <= 8'd0;
			win_oct[3] <= win_oct[4];
			win_oct[4] <= 8'd0;
		end
		SHIFT_WIN2 : begin	
			cent_pos <= nst==UP_TAB ? 11'd0 : cent_pos ;

			if(nst==IN_BUFF)begin
				buff[33:0] <= buff[67:34];
				buff[67:34] <= 34'b0;
			end

			win_oct[0] <= win_oct[1];
			win_oct[1] <= win_oct[2];
			win_oct[2] <= 8'd0;
			win_oct[3] <= win_oct[4];
			win_oct[4] <= 8'd0;
		end
		UP_WIN :begin
			win_oct[4] <= 8'd0 ;
			case(cnt)
			8'd1: win_oct[2] <= win_bin[2] ? sram_q : 8'd0 ;				
			endcase	
			
			cent_pos <= nst==SHIFT_WIN2 ? cent_pos +11'd1 : cent_pos  ;
		end
		UP_RAM : begin
			win_oct[4] <= (win_min == 8'd0) ? lab_cnt : win_min ;
			pass2_flag <=  (| pass2_flag_logic) || pass2_flag ;
			lab_cnt<= (win_min == 8'd0) ? lab_cnt +8'd1 : lab_cnt ;
/*
			for (i2=0 ; i2 < MARK_SIZE ; i2=i2+1) begin
				mark_tab[i2]<=i2;
			end
*/
			cent_pos <= nst==SHIFT_WIN2 ? cent_pos +11'd1 : cent_pos  ;
		end
		RAM_MARK_TAB :begin
			case(cnt)
			8'd0: mark_tab[win_oct[0]] <= (pass2_flag_logic[0]) ? win_min : mark_tab[win_oct[0]];  
			8'd1: mark_tab[win_oct[2]] <= (pass2_flag_logic[2]) ? win_min : mark_tab[win_oct[2]];	
			8'd2: mark_tab[win_oct[3]] <= (pass2_flag_logic[3]) ? win_min : mark_tab[win_oct[3]];
			endcase	
			
			cent_pos <= nst==SHIFT_WIN2 ? cent_pos +11'd1 : cent_pos  ;
		end
		UP_TAB :  begin
			mark_tab[cnt]<= mark_tab[mark_tab[cnt]];
		end
		PASS2 : begin			
			cent_pos <= (cnt[0]) ? cent_pos +11'd1 : cent_pos ;
		end
		endcase
	end
end




/*
reg [3:0] st, nst;
reg [7:0] cnt, ncnt;

reg [33:0] buff [0:2];
wire [8:0] win_bin ;

reg [7:0] win_oct [0:8];
wire [7:0] win_min ;

reg [9:0] cent_pos ;
wire[9:0] win_pos_0 ;
wire[9:0] win_pos_1 ;
wire[9:0] win_pos_2 ;
wire[9:0] win_pos_3 ;
wire[9:0] win_pos_5 ;
wire[9:0] win_pos_6 ;
wire[9:0] win_pos_7 ;
wire[9:0] win_pos_8 ;

wire [6:0] win_pos_bin [0:8];

reg pass2_flag;
reg [7:0] mark_tab [0: MARK_SIZE-1] ;
*/

/*
assign win_pos_bin [0] = 7'd0  - 7'd1 + cent_pos[4:0] ;
assign win_pos_bin [1] = 7'd0  + 7'd0 + cent_pos[4:0] ;
assign win_pos_bin [2] = 7'd0  + 7'd1 + cent_pos[4:0] ;
assign win_pos_bin [3] = 7'd34 - 7'd1 + cent_pos[4:0] ;
assign win_pos_bin [4] = 7'd34 + 7'd0 + cent_pos[4:0] ; 
assign win_pos_bin [5] = 7'd34 + 7'd1 + cent_pos[4:0] ;
assign win_pos_bin [6] = 7'd68 - 7'd1 + cent_pos[4:0] ;
assign win_pos_bin [7] = 7'd68 + 7'd0 + cent_pos[4:0] ;
assign win_pos_bin [8] = 7'd68 + 7'd1 + cent_pos[4:0] ; 
*/

assign win_pos_bin [0] = 7'd0  + 7'd0 + cent_pos[4:0] ;
assign win_pos_bin [1] = 7'd0  + 7'd1 + cent_pos[4:0] ;
assign win_pos_bin [2] = 7'd0  + 7'd2 + cent_pos[4:0] ;
assign win_pos_bin [3] = 7'd34 + 7'd0 + cent_pos[4:0] ;
assign win_pos_bin [4] = 7'd34 + 7'd1 + cent_pos[4:0] ; 

assign win_bin[0] = buff[win_pos_bin[0]];
assign win_bin[1] = buff[win_pos_bin[1]];
assign win_bin[2] = buff[win_pos_bin[2]];
assign win_bin[3] = buff[win_pos_bin[3]];
assign win_bin[4] = buff[win_pos_bin[4]];

assign win_pos_0 = cent_pos - 11'd33;
assign win_pos_1 = cent_pos - 11'd32;
assign win_pos_2 = cent_pos - 11'd31;
assign win_pos_3 = cent_pos - 11'd1;

wire [7:0] win_oct_00_2_ff [0:3];
assign win_oct_00_2_ff[0] = win_oct[0] == 8'd0 ? 8'hff : win_oct[0];
assign win_oct_00_2_ff[1] = win_oct[1] == 8'd0 ? 8'hff : win_oct[1];
assign win_oct_00_2_ff[2] = win_oct[2] == 8'd0 ? 8'hff : win_oct[2];
assign win_oct_00_2_ff[3] = win_oct[3] == 8'd0 ? 8'hff : win_oct[3];

assign win_min = (win_oct[0]!=8'd0 &&(win_oct[0]<=win_oct_00_2_ff[1] && win_oct[0]<=win_oct_00_2_ff[2] && win_oct[0]<=win_oct_00_2_ff[3] )) ? 
		  win_oct[0] : 
		 (win_oct[1]!=8'd0 &&(win_oct[1]<=win_oct_00_2_ff[2] && win_oct[1]<=win_oct_00_2_ff[3] )) ? 
		  win_oct[1] : 
		 (win_oct[2]!=8'd0 &&(win_oct[2]<=win_oct_00_2_ff[3]  )) ? 
		  win_oct[2] :  
		 (win_oct[3]!=8'd0) ?  win_oct[3] : 8'd0 ; 
		 

assign pass2_flag_logic [0] = win_oct[0] != 8'd0 && win_oct[0] != win_min ; 
assign pass2_flag_logic [1] = win_oct[1] != 8'd0 && win_oct[1] != win_min ; 
assign pass2_flag_logic [2] = win_oct[2] != 8'd0 && win_oct[2] != win_min ; 
assign pass2_flag_logic [3] = win_oct[3] != 8'd0 && win_oct[3] != win_min ; 

//output
/*
output [6:0]  rom_a;
input  [7:0]  sram_q;
output [9:0]  sram_a;
output [7:0]  sram_d;
output        sram_wen;
output        finish;
*/

assign   rom_a = (st==INI_BUFF) ? cnt[6:0] : st==IN_BUFF ? {cent_pos[9:5]+5'd1,cnt[1:0]} :  7'd0 ;
assign   sram_d = st==UP_RAM ? (win_min==8'd0) ? lab_cnt :  win_min : (st==PASS2) ? mark_tab[sram_q] : 8'd0 ;
assign   sram_wen = ~(st==UP_RAM || (st==PASS2 && cnt[0])  ||  ((st==UP_WIN || st==INI_WIN) && nst != st)) ;
assign   finish = st==DONE;


always @ (*) begin
	case(st)
	UP_WIN, INI_WIN : begin		
		sram_a = nst != st ? cent_pos[9:0] : win_pos_2[9:0];		
	end
	UP_RAM : sram_a = cent_pos[9:0];
	PASS2 : sram_a = cent_pos[9:0];
	default: sram_a = 10'd0;
	endcase
end


endmodule


/*
ncverilog +ncmaxdelays testfixture_a.v CLE.v  +access+rw +notimingchecks

ncverilog +ncmaxdelays testfixture_a.v CLE_syn.v -v tsmc13_neg.v +define+SDF 

*/



