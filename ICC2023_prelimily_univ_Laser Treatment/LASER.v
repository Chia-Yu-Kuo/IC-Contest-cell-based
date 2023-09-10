module LASER (
    input CLK,
    input RST,
    input [3:0] X,
    input [3:0] Y,
    output reg [3:0] C1X,
    output reg [3:0] C1Y,
    output reg [3:0] C2X,
    output reg [3:0] C2Y,
    output reg DONE
);

    parameter ITR_TIME = 3'd4;

    //====================================================================

    // state
    parameter IN = 4'd0;
    parameter FD1 = 4'd1;
    parameter FD2 = 4'd2;
    parameter FD3 = 4'd3;
    parameter FD4 = 4'd4;
    parameter FD5 = 4'd5;
    parameter FD6 = 4'd6;
    parameter FD7 = 4'd7;
    parameter FD8 = 4'd8;
    parameter CMP = 4'd9;
    parameter SWAP = 4'd10;
    parameter DONE_ST = 4'd11;
    //parameter = 4'd15;


    reg [3:0] st, nst;
    reg [7:0] idx_reg, n_idx_reg;
    reg [ 2:0] itr_cnt;
    reg [39:0] is_in_c1;
    reg [39:0] max_is_in_c1, max_is_in_c2;
    reg [3:0] ptr_x_reg[0:39];
    reg [3:0] ptr_y_reg[0:39];
    reg [3:0] max_x1, max_y1;
    reg [3:0] max_x2, max_y2;
    reg  [5:0] max_sum;
    wire [5:0] sum;

    wire [3:0] net_c1x, net_c1y;
    //wire [3:0] net_c2x, net_c2y;
    reg [3:0] pt_x[0:4];
    reg [3:0] pt_y[0:4];
    reg [4:0] distx[0:4];
    reg [4:0] disty[0:4];
    reg [3:0] absx[0:4];
    reg [3:0] absy[0:4];

    reg [4:0] u_cal_out;

    integer i1, i2, i3, i4, i5, i6;

    /*
U_CAL U0 (.cen_x(net_c1x), .cen_y(net_c1y), .pt_x(pt_x[0]), .pt_y(pt_y[0]), .is_in(u_cal_out[0]));
U_CAL U1 (.cen_x(net_c1x), .cen_y(net_c1y), .pt_x(pt_x[1]), .pt_y(pt_y[1]), .is_in(u_cal_out[1]));
U_CAL U2 (.cen_x(net_c1x), .cen_y(net_c1y), .pt_x(pt_x[2]), .pt_y(pt_y[2]), .is_in(u_cal_out[2]));
U_CAL U3 (.cen_x(net_c1x), .cen_y(net_c1y), .pt_x(pt_x[3]), .pt_y(pt_y[3]), .is_in(u_cal_out[3]));
U_CAL U4 (.cen_x(net_c1x), .cen_y(net_c1y), .pt_x(pt_x[4]), .pt_y(pt_y[4]), .is_in(u_cal_out[4]));
U_CAL U5 (.cen_x(net_c1x), .cen_y(net_c1y), .pt_x(pt_x[5]), .pt_y(pt_y[5]), .is_in(u_cal_out[5]));
U_CAL U6 (.cen_x(net_c1x), .cen_y(net_c1y), .pt_x(pt_x[6]), .pt_y(pt_y[6]), .is_in(u_cal_out[6]));
U_CAL U7 (.cen_x(net_c1x), .cen_y(net_c1y), .pt_x(pt_x[7]), .pt_y(pt_y[7]), .is_in(u_cal_out[7]));
*/

    //st
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            st <= IN;
        end else begin
            st <= nst;
        end
    end
    always @(*) begin
        case (st)
            IN: nst = idx_reg == 8'd39 ? FD1 : IN;
            FD1: nst = FD2;
            FD2: nst = FD3;
            FD3: nst = FD4;
            FD4: nst = FD5;
            FD5: nst = FD6;
            FD6: nst = FD7;
            FD7: nst = FD8;
            FD8: nst = CMP;
            CMP: nst = idx_reg != 8'd201 ? FD1 : itr_cnt == ITR_TIME ? DONE_ST : SWAP;
            SWAP: nst = FD1;
            DONE_ST: nst = IN;
            default: nst = IN;
        endcase
    end

    // idx_reg
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            idx_reg <= 8'd0;
        end else if (st == DONE_ST) begin
            idx_reg <= 8'd0;
        end else begin
            idx_reg <= n_idx_reg;
        end
    end
    always @(*) begin
        case (st)
            IN: n_idx_reg = nst != st ? 8'd0 : idx_reg + 8'd1;
            CMP: n_idx_reg = idx_reg + (itr_cnt == 3'd4 ? 8'd3 : 8'd1);
            SWAP: n_idx_reg = 8'd229;
            default: n_idx_reg = idx_reg;
        endcase
    end

    // itr_cnt
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            itr_cnt <= 3'd0;
        end else if (st == DONE_ST) begin
            itr_cnt <= 3'd0;
        end else begin
            itr_cnt <= st == CMP && nst == SWAP ? itr_cnt + 3'd1 : itr_cnt;
        end
    end

    // input registers
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            for (i1 = 0; i1 < 40; i1 = i1 + 1) begin
                ptr_x_reg[i1] <= 4'd0;
                ptr_y_reg[i1] <= 4'd0;
            end
        end else if (st == DONE_ST) begin
            for (i1 = 0; i1 < 40; i1 = i1 + 1) begin
                ptr_x_reg[i1] <= 4'd0;
                ptr_y_reg[i1] <= 4'd0;
            end
        end else if (st == IN) begin
            ptr_x_reg[idx_reg] <= X;
            ptr_y_reg[idx_reg] <= Y;
        end
    end

    // is_in_c1 registers
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            is_in_c1 <= 40'b0;
        end else if (st == DONE_ST) begin
            is_in_c1 <= 40'b0;
        end else begin
            case (st)
                FD1: is_in_c1[4:0] <= u_cal_out;
                FD2: is_in_c1[9:5] <= u_cal_out;
                FD3: is_in_c1[14:10] <= u_cal_out;
                FD4: is_in_c1[19:15] <= u_cal_out;
                FD5: is_in_c1[24:20] <= u_cal_out;
                FD6: is_in_c1[29:25] <= u_cal_out;
                FD7: is_in_c1[34:30] <= u_cal_out;
                FD8: is_in_c1[39:35] <= u_cal_out;
            endcase
        end
    end

    // net_c1x, net_c1y, net_c2x, net_c2y
    assign net_c1x = idx_reg[3:0];
    assign net_c1y = idx_reg[7:4];
    //assign net_c2x = max_x2;
    //assign net_c2y = max_y2;

    // sum
    wire [39:0] is_covered;
    assign is_covered = is_in_c1 | max_is_in_c2;
    assign sum = is_covered[0] + is_covered[1] + is_covered[2] + is_covered[3] + is_covered[4] + is_covered[5] + is_covered[6] + is_covered[7] + is_covered[8] + is_covered[9]
           + is_covered[10] + is_covered[11] + is_covered[12] + is_covered[13] + is_covered[14] + is_covered[15] + is_covered[16] + is_covered[17] + is_covered[18] + is_covered[19]
           + is_covered[20] + is_covered[21] + is_covered[22] + is_covered[23] + is_covered[24] + is_covered[25] + is_covered[26] + is_covered[27] + is_covered[28] + is_covered[29]
           + is_covered[30] + is_covered[31] + is_covered[32] + is_covered[33] + is_covered[34] + is_covered[35] + is_covered[36] + is_covered[37] + is_covered[38] + is_covered[39];

    // swap & compare logic
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            max_sum <= 6'd0;
            max_x1 <= 4'b0;
            max_y1 <= 4'b0;
            max_x2 <= 4'b0;
            max_y2 <= 4'b0;
            max_is_in_c1 <= 40'd0;
            max_is_in_c2 <= 40'd0;
        end else if (st == DONE_ST) begin
            max_sum <= 6'd0;
            max_x1 <= 4'b0;
            max_y1 <= 4'b0;
            max_x2 <= 4'b0;
            max_y2 <= 4'b0;
            max_is_in_c1 <= 40'd0;
            max_is_in_c2 <= 40'd0;
        end else if (st == CMP) begin
            if (sum >= max_sum) begin
                max_sum <= sum;
                max_x1 <= net_c1x;
                max_y1 <= net_c1y;
                max_is_in_c1 <= is_in_c1;
            end
        end else if (st == SWAP) begin
            max_x1 <= max_x2;
            max_y1 <= max_y2;
            max_x2 <= max_x1;
            max_y2 <= max_y1;
            max_is_in_c1 <= max_is_in_c2;
            max_is_in_c2 <= max_is_in_c1;
        end
    end

    // out logic
    always @(*) begin
        //C1X
        C1X  = max_x1;
        //C1Y
        C1Y  = max_y1;
        //C2X
        C2X  = max_x2;
        //C2Y
        C2Y  = max_y2;
        //DONE
        DONE = st == DONE_ST;
    end

    always @(*) begin
        case (st)
            FD1: begin
                for (i3 = 0; i3 < 5; i3 = i3 + 1) begin
                    pt_x[i3] = ptr_x_reg[i3];
                    pt_y[i3] = ptr_y_reg[i3];
                end
            end
            FD2: begin
                for (i3 = 0; i3 < 5; i3 = i3 + 1) begin
                    pt_x[i3] = ptr_x_reg[i3+5];
                    pt_y[i3] = ptr_y_reg[i3+5];
                end
            end
            FD3: begin
                for (i3 = 0; i3 < 5; i3 = i3 + 1) begin
                    pt_x[i3] = ptr_x_reg[i3+10];
                    pt_y[i3] = ptr_y_reg[i3+10];
                end
            end
            FD4: begin
                for (i3 = 0; i3 < 5; i3 = i3 + 1) begin
                    pt_x[i3] = ptr_x_reg[i3+15];
                    pt_y[i3] = ptr_y_reg[i3+15];
                end
            end
            FD5: begin
                for (i3 = 0; i3 < 5; i3 = i3 + 1) begin
                    pt_x[i3] = ptr_x_reg[i3+20];
                    pt_y[i3] = ptr_y_reg[i3+20];
                end
            end
            FD6: begin
                for (i3 = 0; i3 < 5; i3 = i3 + 1) begin
                    pt_x[i3] = ptr_x_reg[i3+25];
                    pt_y[i3] = ptr_y_reg[i3+25];
                end
            end
            FD7: begin
                for (i3 = 0; i3 < 5; i3 = i3 + 1) begin
                    pt_x[i3] = ptr_x_reg[i3+30];
                    pt_y[i3] = ptr_y_reg[i3+30];
                end
            end
            FD8: begin
                for (i3 = 0; i3 < 5; i3 = i3 + 1) begin
                    pt_x[i3] = ptr_x_reg[i3+35];
                    pt_y[i3] = ptr_y_reg[i3+35];
                end
            end
            default: begin
                for (i3 = 0; i3 < 5; i3 = i3 + 1) begin
                    pt_x[i3] = 4'd0;  //ptr_x_reg[i3];
                    pt_y[i3] = 4'd0;  //ptr_y_reg[i3];
                end
            end
        endcase
    end

    always @(*) begin
        for (i4 = 0; i4 < 5; i4 = i4 + 1) begin
            distx[i4] = net_c1x - pt_x[i4];
            disty[i4] = net_c1y - pt_y[i4];
        end
    end
    always @(*) begin
        for (i5 = 0; i5 < 5; i5 = i5 + 1) begin
            absx[i5] = distx[i5][4] ? -distx[i5][3:0] : distx[i5][3:0];
            absy[i5] = disty[i5][4] ? -disty[i5][3:0] : disty[i5][3:0];
        end
    end
    always @(*) begin
        for (i6 = 0; i6 < 5; i6 = i6 + 1) begin
            case (absx[i6])
                4'd0:
                u_cal_out[i6] = absy[i6] == 4'd0 || absy[i6] == 4'd1 || absy[i6] == 4'd2 || absy[i6] == 4'd3 || absy[i6] == 4'd4;
                4'd1:
                u_cal_out[i6] = absy[i6] == 4'd0 || absy[i6] == 4'd1 || absy[i6] == 4'd2 || absy[i6] == 4'd3;
                4'd2:
                u_cal_out[i6] = absy[i6] == 4'd0 || absy[i6] == 4'd1 || absy[i6] == 4'd2 || absy[i6] == 4'd3;
                4'd3: u_cal_out[i6] = absy[i6] == 4'd0 || absy[i6] == 4'd1 || absy[i6] == 4'd2;
                4'd4: u_cal_out[i6] = absy[i6] == 4'd0;
                default: u_cal_out[i6] = 1'b0;
            endcase
        end
    end

endmodule

/*
module U_CAL (
//input CLK,
//input RST,
input [3:0] cen_x,
input [3:0] cen_y,
input [3:0] pt_x,
input [3:0] pt_y,
output reg is_in);


reg [4:0] distx, disty;
wire [3:0] absx, absy;

always @(*) begin
    distx = cen_x - pt_x;
    disty = cen_y - pt_y;
end

assign absx = distx[4] ? -distx[3:0] : distx[3:0];
assign absy = disty[4] ? -disty[3:0] : disty[3:0];

always @(*) begin
    case(absx)
    4'd0: 
        is_in = absy == 4'd0 || absy == 4'd1 || absy == 4'd2 || absy == 4'd3 || absy == 4'd4;
    4'd1: 
        is_in = absy == 4'd0 || absy == 4'd1 || absy == 4'd2 || absy == 4'd3;
    4'd2: 
        is_in = absy == 4'd0 || absy == 4'd1 || absy == 4'd2 || absy == 4'd3;
    4'd3: 
        is_in = absy == 4'd0 || absy == 4'd1 || absy == 4'd2;
    4'd4: 
        is_in = absy == 4'd0;
    default : is_in = 1'b0;
    endcase
end

endmodule
*/


