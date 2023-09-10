
module SET (
    clk,
    rst,
    en,
    central,
    radius,
    mode,
    busy,
    valid,
    candidate
);
    input clk, rst;
    input en;
    input [23:0] central;
    input [11:0] radius;
    input [1:0] mode;
    output busy;
    output reg valid;
    output [7:0] candidate;
    // state+counter
    reg [2:0] cs, ns;
    reg [2:0] counter, nx_counter;
    reg [3:0] squre_counter, nx_squre_counter;
    reg [5:0] index, nx_index;
    //data
    reg [3:0] Ax, Ay, Bx, By, Cx, Cy;
    reg [5:0] r1, r2, r3;
    reg [1:0] mode_reg;
    //logic
    reg [3:0] point, cent;  //point (0,0)~(7,7)  (-1,-1)==(15,15) ,(0,0)~(8,8) 
    reg [4:0] distance;  //-16~15
    reg [9:0] partial;
    reg [9:0] result, nx_result;  //MAX 64+64=128
    reg [1:0] in_num, nx_in_num;
    reg [5:0] num, nx_num;  // <128

    wire nx_valid;
    wire [2:0] index_X, index_Y;
    //wire [6:0] squre;                // MAX=8*8        

    parameter idle =3'd0, wait1=3'd1, read=3'd2, reduct3=3'd3, r_squre=3'd4, cal=3'd5, out=3'd6 ;

    assign index_X = index[2:0];
    assign index_Y = index >> 6'd3;  //  /8   

    //assign squre=distance*distance;  //share hardware

    assign candidate = {2'b00, num};
    assign busy = (cs == wait1 | cs == idle | cs == read) ? 1'b0 : 1'b1;
    assign nx_valid = (cs == out) ? 1'b1 : 1'b0;
    //state
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            cs <= idle;
            counter <= 3'd0;
            squre_counter <= 4'd0;
            index <= 6'd0;
            result <= 10'd0;
            in_num <= 2'd0;
            num <= 6'd0;
            valid <= 1'b0;
        end else begin
            cs <= ns;
            counter <= nx_counter;
            squre_counter <= nx_squre_counter;
            index <= nx_index;
            result <= nx_result;
            in_num <= nx_in_num;
            num <= nx_num;
            valid <= nx_valid;
        end
    end
    //data 
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            mode_reg <= 2'b00;
            Ax <= 4'd0;
            Ay <= 4'd0;
            Bx <= 4'd0;
            By <= 4'd0;
            Cx <= 4'd0;
            Cy <= 4'd0;
            r1 <= 6'd0;
            r2 <= 6'd0;
            r3 <= 6'd0;
        end else begin
            if (cs == read) begin
                mode_reg <= mode;
                Ax <= central[23:20];
                Ay <= central[19:16];
                Bx <= central[15:12];
                By <= central[11:8];
                Cx <= central[7:4];
                Cy <= central[3:0];
                r1 <= {2'b00, radius[11:8]};
                r2 <= {2'b00, radius[7:4]};
                r3 <= {2'b00, radius[3:0]};
            end else if (cs == reduct3) begin
                case (counter)
                    3'd0: Ax <= distance;
                    3'd1: Ay <= distance;
                    3'd2: Bx <= distance;
                    3'd3: By <= distance;
                    3'd4: Cx <= distance;
                    3'd5: Cy <= distance;
                    //default: 
                endcase
            end else if (cs == r_squre) begin
                case (counter)
                    3'd0: r1 <= (squre_counter == 4'd4) ? nx_result : r1;
                    3'd1: r2 <= (squre_counter == 4'd4) ? nx_result : r2;
                    3'd2: r3 <= (squre_counter == 4'd4) ? nx_result : r3;
                    //default: 
                endcase
            end
        end
    end


    //comb 
    //cs
    always @(*) begin
        case (cs)
            idle:   ns=wait1;
            wait1:  ns=read;
            read:   ns=reduct3;
            reduct3:ns= (counter==3'd5) ? r_squre :reduct3;
            r_squre:ns= (counter==3'd2 & squre_counter==4'd4) ? cal : r_squre;
            cal:    ns= (index==6'd63 & (nx_index!=index)) ? out : cal;
            out:    ns=wait1;
            default:  ns=idle;
        endcase
    end
    //counter +index
    always @(*) begin
        if (cs == cal) begin
            case (mode_reg)
                2'b00: begin
                    nx_counter= (counter==3'd1 & squre_counter==4'd4) ? 3'd0 : (squre_counter==4'd4) ? counter+3'd1 : counter;
                    nx_index = (counter == 3'd1 & squre_counter == 4'd4) ? index + 6'd1 : index;
                end
                2'b01: begin
                    nx_counter= (counter==3'd3 & squre_counter==4'd4) ? 3'd0 : (squre_counter==4'd4) ? counter+3'd1 : counter;
                    nx_index = (counter == 3'd3 & squre_counter == 4'd4) ? index + 6'd1 : index;
                end
                2'b10: begin
                    nx_counter= (counter==3'd3 & squre_counter==4'd4) ? 3'd0 : (squre_counter==4'd4) ? counter+3'd1 : counter;
                    nx_index = (counter == 3'd3 & squre_counter == 4'd4) ? index + 6'd1 : index;
                end
                2'b11: begin
                    nx_counter= (counter==3'd5 & squre_counter==4'd4) ? 3'd0 : (squre_counter==4'd4) ? counter+3'd1 : counter;
                    nx_index = (counter == 3'd5 & squre_counter == 4'd4) ? index + 6'd1 : index;
                end
            endcase

        end else if (cs == r_squre) begin
            nx_counter = (cs != ns) ? 3'd0 : (squre_counter == 4'd4) ? counter + 3'd1 : counter;
            nx_index   = 6'd0;
        end else begin
            nx_counter = (cs != ns) ? 3'd0 : counter + 3'd1;
            nx_index   = 6'd0;
        end

        nx_squre_counter= (cs!=ns) ? 3'd0 : (squre_counter==4'd4) ? 3'd0 : squre_counter+4'd1;
    end
    //distance input
    always @(*) begin
        cent  = 3'b0;
        point = 3'd0;
        case (cs)
            reduct3:        //0 will become 15
            begin
                cent = 4'd1;
                case (counter)
                    3'd0: point = Ax;
                    3'd1: point = Ay;
                    3'd2: point = Bx;
                    3'd3: point = By;
                    3'd4: point = Cx;
                    3'd5: point = Cy;
                    default: point = 3'bX;
                endcase
            end
            cal: begin
                case (counter)
                    3'd0: begin
                        cent  = Ax;
                        point = index_X;
                    end
                    3'd1: begin
                        cent  = Ay;
                        point = index_Y;
                    end
                    3'd2: begin
                        cent  = Bx;
                        point = index_X;
                    end
                    3'd3: begin
                        cent  = By;
                        point = index_Y;
                    end
                    3'd4: begin
                        cent  = Cx;
                        point = index_X;
                    end
                    3'd5: begin
                        cent  = Cy;
                        point = index_Y;
                    end
                    default: begin
                        cent  = 3'bX;
                        point = 3'bX;
                    end
                endcase
            end
            default: begin
                cent  = 3'bX;
                point = 3'dX;
            end
        endcase
    end

    //squre input
    always @(*) begin
        if (cs == r_squre) begin
            case (counter)
                3'd0: distance = r1[4:0];
                3'd1: distance = r2[4:0];
                3'd2: distance = r3[4:0];
                default: distance = 5'bX;
            endcase
        end else if (cs == reduct3) begin
            distance = point - cent;
        end else begin
            //distance=point- (cent==4'd15) ? $signed(4'b1111) : cent;     //??????
            distance = (cent == 4'd15) ? point + 4'd1 : point - cent;
        end
    end

    //result  (squre patial product sum)
    always @(*) begin
        partial= (distance[squre_counter]) ? { {5{distance[4]}} , distance} <<< squre_counter : 10'd0;



        if ((cs==cal & squre_counter==4'd0 & ~ counter[0]) | (cs==r_squre & squre_counter==4'd0)) 
        begin
            nx_result = partial;
        end else begin
            nx_result = (squre_counter == 4'd4) ? result - partial : result + partial;
        end
    end

    //in_num
    always @(*) begin
        if (cs == cal) begin
            if (counter == 3'd0) begin
                nx_in_num = 2'b0;
            end else begin
                case (counter)
                    3'd0: nx_in_num = in_num;
                    3'd1:
                    nx_in_num= (nx_result[7:0]<=r1 & squre_counter==4'd4) ? in_num+2'd1 : in_num;
                    3'd2: nx_in_num = in_num;
                    3'd3:
                    nx_in_num= (nx_result[7:0]<=r2 & squre_counter==4'd4) ? in_num+2'd1 : in_num;
                    3'd4: nx_in_num = in_num;
                    3'd5:
                    nx_in_num= (nx_result[7:0]<=r3 & squre_counter==4'd4) ? in_num+2'd1 : in_num;
                    default: nx_in_num = 2'd0;
                endcase
            end
        end else begin
            nx_in_num = 2'b0;
        end

    end

    //num
    always @(*) begin
        if (cs == wait1) begin
            nx_num = 6'd0;
        end else begin
            if (nx_index!=index)    //counter=2|4|6
            begin
                case (mode_reg)
                    2'b00: nx_num = (nx_in_num == 2'd1) ? num + 2'd1 : num;
                    2'b01: nx_num = (nx_in_num == 2'd2) ? num + 2'd1 : num;
                    2'b10: nx_num = (nx_in_num == 2'd1) ? num + 2'd1 : num;
                    2'b11: nx_num = (nx_in_num == 2'd2) ? num + 2'd1 : num;
                endcase
            end else begin
                nx_num = num;
            end
        end
    end

endmodule


