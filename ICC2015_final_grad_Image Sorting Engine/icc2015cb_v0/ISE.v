
module ISE( clk, reset, image_in_index, pixel_in, busy, out_valid, color_index, image_out_index);
input           clk;
input           reset;
input   [4:0]   image_in_index;
input   [23:0]  pixel_in;
output reg         busy;
output reg         out_valid;
output reg [1:0]   color_index;
output reg [4:0]   image_out_index;

//`define AVG_LENG 12;




// state & cnt
parameter	IN	= 4'd0;
parameter	DIV	= 4'd1;
parameter	INSERT	= 4'd2;
parameter	OUT_R	= 4'd3;
parameter	OUT_G	= 4'd4;
parameter	OUT_B	= 4'd5;
parameter	DONE	= 4'd6;

parameter AVG_LENG = 17;

wire [7:0] pixel_R, pixel_G, pixel_B;  

assign pixel_R = pixel_in[23:16]; 
assign pixel_G = pixel_in[15:8];
assign pixel_B = pixel_in[7:0];

reg [3:0] st, nst;
reg [6:0] cnt_H ;
reg [6:0] cnt_L ;
wire [13:0] cnt;
assign cnt = {cnt_H, cnt_L};


reg  [11:0]  R_total_L,G_total_L,B_total_L;
reg  [10:0]  R_total_H,G_total_H,B_total_H;
wire [21:0]  R_total,G_total,B_total;

assign R_total = {R_total_H , R_total_L[10:0]} ;
assign G_total = {G_total_H , G_total_L[10:0]} ;
assign B_total = {B_total_H , B_total_L[10:0]} ;

reg [14:0] R_cnt,G_cnt,B_cnt;

reg [(AVG_LENG -1) : 0] avg_reg;

reg [1:0] color_idx_reg;
reg [4:0] image_idx_reg;

reg [(AVG_LENG -1) : 0] avg_arr [0:31];
reg [1:0] color_idx_arr [0:31];
reg [4:0] image_idx_arr [0:31];
reg [31:0] l_t;

integer i1,i2,i3;

wire [29:0] div1;
wire [14:0] div2;
wire [(AVG_LENG -1) : 0] div_result ;

assign div_result =  div1 / div2 ;
assign div1 = (color_idx_reg == 2'b00) ? { R_total , 8'b0  }
	    : (color_idx_reg == 2'b01) ? { G_total , 8'b0  }
	    : { B_total , 8'b0 };
assign div2 = (color_idx_reg == 2'b00) ? R_cnt 
	    : (color_idx_reg == 2'b01) ? G_cnt
	    : B_cnt;



always @ (posedge clk or posedge reset) begin
	if(reset) begin
		st <= IN;
	end
	else begin
		st <= nst;
	end
end
always @ (*) begin
	case(st)
	IN: nst = (cnt==14'h3fff) ? DIV :IN;
	DIV : nst = (cnt==14'd10) ? INSERT : DIV ;
	INSERT : nst = (image_idx_reg==5'd31) ? OUT_R : IN;
	OUT_R : nst = (image_idx_reg==5'd31) ? OUT_G : OUT_R;
	OUT_G : nst = (image_idx_reg==5'd31) ? OUT_B : OUT_G;
	OUT_B : nst = (image_idx_reg==5'd31) ? DONE : OUT_B;
	DONE : nst = DONE;
	default: nst = IN;
	endcase
end




always @ (posedge clk or posedge reset) begin
	if(reset) begin
		cnt_H <= 7'd0;
		cnt_L <= 7'd0;
		R_total_L <= 12'd0;
		G_total_L <= 12'd0;
		B_total_L <= 12'd0;
		R_total_H <= 11'd0;
		G_total_H <= 11'd0;
		B_total_H <= 11'd0;
		R_cnt <= 15'd0;
		G_cnt <= 15'd0;
		B_cnt <= 15'd0;
		avg_reg <= 0; 
		color_idx_reg <= 2'b11;
		image_idx_reg <= 5'd0;
	end
	else begin
		cnt_L <= st != nst ? 7'd0 : cnt_L + 7'd1;
		cnt_H <= (st != nst) ? 7'd0 :  (cnt_L == 7'h7f) ?  cnt_H + 7'd1 : cnt_H;
		//total cnt
		case (st)
		IN: begin
			R_total_L <= (pixel_R >= pixel_G && pixel_R >= pixel_B) ? R_total_L[10:0] + pixel_R : R_total_L[10:0];
			G_total_L <= (pixel_G >= pixel_B && pixel_G >  pixel_R) ? G_total_L[10:0] + pixel_G : G_total_L[10:0];
			B_total_L <= (pixel_B >  pixel_R && pixel_B >  pixel_G) ? B_total_L[10:0] + pixel_B : B_total_L[10:0];
			R_total_H <=  R_total_H + R_total_L[11] ;
			G_total_H <=  G_total_H + G_total_L[11] ;
			B_total_H <=  B_total_H + B_total_L[11] ;
			R_cnt <= (pixel_R >= pixel_G && pixel_R >= pixel_B) ? R_cnt + 15'd1 : R_cnt ;
			G_cnt <= (pixel_G >= pixel_B && pixel_G >  pixel_R) ? G_cnt + 15'd1 : G_cnt ;
			B_cnt <= (pixel_B >  pixel_R && pixel_B >  pixel_G) ? B_cnt + 15'd1 : B_cnt ;
		end
		INSERT: begin
			R_total_L <= 12'd0;
			G_total_L <= 12'd0;
			B_total_L <= 12'd0;
			R_total_H <= 11'd0;
			G_total_H <= 11'd0;
			B_total_H <= 11'd0;
			R_cnt <= 15'd0;
			G_cnt <= 15'd0;
			B_cnt <= 15'd0;
			color_idx_reg <= (nst==OUT_R) ? 2'b00 : color_idx_reg ;
			image_idx_reg <= (nst==IN) ? image_idx_reg + 5'd1 : 5'd0; 
		end
		DIV: begin
			if(cnt==14'd0)begin	
				R_total_H <=  R_total_H + R_total_L[11] ;
				G_total_H <=  G_total_H + G_total_L[11] ;
				B_total_H <=  B_total_H + B_total_L[11] ;
			end
			if (nst == INSERT)  avg_reg <= div_result;
			color_idx_reg <= (R_cnt >= G_cnt && R_cnt >= B_cnt) ? 2'b00 
				   : (G_cnt >= B_cnt && G_cnt >= R_cnt) ? 2'b01
				   : 2'b10;
			
		end
		OUT_R: begin
			color_idx_reg <= (nst==OUT_G) ? 2'b01 : color_idx_reg ;
			image_idx_reg <= (nst!=OUT_G) ? image_idx_reg + 5'd1 :  5'd0;
		end
		OUT_G: begin
			color_idx_reg <= (nst==OUT_B) ? 2'b10 : color_idx_reg ;
			image_idx_reg <= (nst!=OUT_B) ? image_idx_reg + 5'd1 :  5'd0;
		end
		OUT_B: begin
			image_idx_reg <= image_idx_reg + 5'd1 ;
		end
		endcase
	end
end


always @ (*) begin
	for(i1=0 ; i1<32 ; i1=i1+1) begin
		l_t[i1] = avg_reg < avg_arr[i1] ;
	end
end


always @ (posedge clk or posedge reset) begin
	if(reset) begin
		for (i2=0 ; i2<32 ; i2=i2+1) begin
			avg_arr[i2] <= {(AVG_LENG){1'b1}} ;
			color_idx_arr[i2] <= 2'b11; 
			image_idx_arr[i2] <= 5'd0;
		end
	end
	else if(st==INSERT) begin
		if (l_t[0] == 1'b1) begin
			avg_arr[0] <= avg_reg ;
			color_idx_arr[0] <= color_idx_reg; 
			image_idx_arr[0] <= image_idx_reg;
		end
		else begin
			avg_arr[0] <= avg_arr[0] ;
			color_idx_arr[0] <= color_idx_arr[0]; 
			image_idx_arr[0] <= image_idx_arr[0];
		end

		for (i2=1 ; i2<32 ; i2=i2+1) begin
			if(l_t[i2]==1'b1 && l_t[i2-1]== 1'b0) begin
				avg_arr[i2] <= avg_reg ;
				color_idx_arr[i2] <= color_idx_reg; 
				image_idx_arr[i2] <= image_idx_reg;
			end
			else if (l_t[i2] ==1'b1 ) begin
				avg_arr[i2] <= avg_arr[i2-1] ;
				color_idx_arr[i2] <= color_idx_arr[i2-1]; 
				image_idx_arr[i2] <= image_idx_arr[i2-1];
			end
			else  begin
				avg_arr[i2] <= avg_arr[i2] ;
				color_idx_arr[i2] <= color_idx_arr[i2]; 
				image_idx_arr[i2] <= image_idx_arr[i2];
			end
		end

	end
end


always @ (*) begin
        busy = ~(st== IN) ;

	if(st==OUT_R || st==OUT_G || st==OUT_B) out_valid = color_idx_reg == color_idx_arr[image_idx_reg];
	else out_valid =1'b0;
	color_index = color_idx_reg;
	image_out_index = image_idx_arr[image_idx_reg];
end



endmodule



/*

ncverilog +ncmaxdelays testfixture1.v ISE.v +access+rw

ncverilog +ncmaxdelays testfixture1.v ISE_syn.v -v tsmc13_neg.v +define+SDF


*/
