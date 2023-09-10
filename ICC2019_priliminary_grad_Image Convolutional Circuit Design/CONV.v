
`timescale 1ns / 10ps

module CONV (
    input  clk,
    input  reset,
    output busy,
    input  ready,

    output reg [11:0] iaddr,
    input [19:0] idata,

    output reg cwr,
    output reg [11:0] caddr_wr,
    output reg [19:0] cdata_wr,

    output reg  crd,
    output reg [11:0]  caddr_rd,
    input    [19:0] cdata_rd,

    output reg [2:0] csel
);

    // regs
    reg signed [19:0] in_reg[0:8];
    reg signed [39:0] result_reg, n_result_reg;
    reg [5:0] addr_cnt_X, naddr_cnt_X, addr_cnt_Y, naddr_cnt_Y;
    reg [3:0] cnt, ncnt;
    reg [4:0] st, nst;
    wire [11:0] addr_cnt;
    assign addr_cnt = {addr_cnt_Y, addr_cnt_X};
    reg busy_reg;

    // state
    parameter WAIT = 5'd0;
    parameter READ_E = 5'd1;
    parameter READ_I = 5'd2;
    parameter CONV0 = 5'd3;
    parameter RELU0 = 5'd4;
    parameter OUT00 = 5'd5;
    parameter CONV1 = 5'd6;
    parameter RELU1 = 5'd7;
    parameter OUT01 = 5'd8;
    parameter READ00 = 5'd9;
    parameter MP0 = 5'd10;
    parameter OUT10 = 5'd11;
    parameter OUT20 = 5'd12;
    parameter READ01 = 5'd13;
    parameter MP1 = 5'd14;
    parameter OUT11 = 5'd15;
    parameter OUT21 = 5'd16;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            st <= WAIT;
        end else begin
            st <= nst;
        end
    end
    always @(*) begin
        case (st)
            WAIT: nst = ready ? READ_E : WAIT;
            READ_E: nst = cnt == 4'd5 ? CONV0 : READ_E;
            READ_I: nst = cnt == 4'd2 ? CONV0 : READ_I;
            CONV0: nst = cnt == 4'd8 ? RELU0 : CONV0;
            RELU0: nst = OUT00;
            OUT00: nst = CONV1;
            CONV1: nst = cnt == 4'd8 ? RELU1 : CONV1;
            RELU1: nst = OUT01;
            OUT01: nst = addr_cnt_X == 6'd63 ? (addr_cnt == 12'hfff ? READ00 : READ_E) : READ_I;
            READ00: nst = cnt == 4'd3 ? MP0 : READ00;
            MP0: nst = OUT10;
            OUT10: nst = OUT20;
            OUT20: nst = READ01;
            READ01: nst = cnt == 4'd3 ? MP1 : READ01;
            MP1: nst = OUT11;
            OUT11: nst = OUT21;
            OUT21: nst = addr_cnt_X == 6'd31 && addr_cnt_Y == 6'd31 ? WAIT : READ00;
            default: nst = WAIT;
        endcase
    end
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            cnt <= 4'd0;
            addr_cnt_X <= 6'd0;
            addr_cnt_Y <= 6'd0;
        end else begin
            cnt <= ncnt;
            addr_cnt_X <= naddr_cnt_X;
            addr_cnt_Y <= naddr_cnt_Y;
        end
    end
    always @(*) begin
        ncnt = st != nst ? 4'd0 : cnt + 4'd1;
        case (st)
            WAIT: naddr_cnt_X = 6'd0;
            OUT01: naddr_cnt_X = addr_cnt == 12'hfff ? 6'd0 : addr_cnt_X + 6'd1;
            OUT21: naddr_cnt_X = addr_cnt_X == 6'd31 ? 6'd0 : addr_cnt_X + 6'd1;
            default: naddr_cnt_X = addr_cnt_X;
        endcase

        case (st)
            WAIT: naddr_cnt_Y = 6'd0;
            OUT01: naddr_cnt_Y = addr_cnt_X == 6'd63 ? addr_cnt_Y + 6'd1 : addr_cnt_Y;
            OUT21: naddr_cnt_Y = addr_cnt_X == 6'd31 ? addr_cnt_Y + 6'd1 : addr_cnt_Y;
            default: naddr_cnt_Y = addr_cnt_Y;
        endcase
    end

    integer i1;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (i1 = 0; i1 < 9; i1 = i1 + 1) begin
                in_reg[i1] <= 20'd0;
            end
        end else if (st == READ_E) begin
            case (cnt)
                4'd0: begin
                    in_reg[0] <= 20'd0;
                    in_reg[3] <= 20'd0;
                    in_reg[6] <= 20'd0;
                    in_reg[1] <= addr_cnt_Y == 6'd0 ? 20'd0 : idata;
                end
                4'd1: in_reg[2] <= addr_cnt_Y == 6'd0 ? 20'd0 : idata;
                4'd2: in_reg[4] <= idata;
                4'd3: in_reg[5] <= idata;
                4'd4: in_reg[7] <= addr_cnt_Y == 6'd63 ? 20'd0 : idata;
                4'd5: in_reg[8] <= addr_cnt_Y == 6'd63 ? 20'd0 : idata;
            endcase
        end else if (st == READ_I) begin
            case (cnt)
                4'd0: begin
                    in_reg[0] <= in_reg[1];
                    in_reg[1] <= in_reg[2];
                    in_reg[2] <= addr_cnt_X == 6'd63 || addr_cnt_Y == 6'd0 ? 20'd0 : idata;
                    in_reg[3] <= in_reg[4];
                    in_reg[4] <= in_reg[5];
                    in_reg[5] <= 20'd0;
                    in_reg[6] <= in_reg[7];
                    in_reg[7] <= in_reg[8];
                    in_reg[8] <= 20'd0;
                end
                4'd1: in_reg[5] <= addr_cnt_X == 6'd63 ? 20'd0 : idata;
                4'd2: in_reg[8] <= addr_cnt_X == 6'd63 || addr_cnt_Y == 6'd63 ? 20'd0 : idata;
            endcase
        end else if (st == READ00) begin
            case (cnt)
                4'd0: begin
                    for (i1 = 1; i1 < 9; i1 = i1 + 1) begin
                        in_reg[i1] <= 20'd0;
                    end
                    in_reg[0] <= cdata_rd;
                end
                4'd1: in_reg[1] <= cdata_rd;
                4'd2: in_reg[2] <= cdata_rd;
                4'd3: in_reg[3] <= cdata_rd;
            endcase
        end else if (st == READ01) begin
            case (cnt)
                4'd0: begin
                    for (i1 = 1; i1 < 9; i1 = i1 + 1) begin
                        in_reg[i1] <= 20'd0;
                    end
                    in_reg[0] <= cdata_rd;
                end
                4'd1: in_reg[1] <= cdata_rd;
                4'd2: in_reg[2] <= cdata_rd;
                4'd3: in_reg[3] <= cdata_rd;
            endcase
        end
    end
    // address
    always @(*) begin
        case (st)
            READ00: begin
                crd = 1'b1;
                case (cnt)
                    4'd0: caddr_rd = {addr_cnt_Y[4:0], 1'd0, addr_cnt_X[4:0], 1'd0};
                    4'd1: caddr_rd = {addr_cnt_Y[4:0], 1'd0, addr_cnt_X[4:0], 1'd1};
                    4'd2: caddr_rd = {addr_cnt_Y[4:0], 1'd1, addr_cnt_X[4:0], 1'd0};
                    4'd3: caddr_rd = {addr_cnt_Y[4:0], 1'd1, addr_cnt_X[4:0], 1'd1};
                    default: caddr_rd = 12'dx;
                endcase
            end
            READ01: begin
                crd = 1'b1;
                case (cnt)
                    4'd0: caddr_rd = {addr_cnt_Y[4:0], 1'd0, addr_cnt_X[4:0], 1'd0};
                    4'd1: caddr_rd = {addr_cnt_Y[4:0], 1'd0, addr_cnt_X[4:0], 1'd1};
                    4'd2: caddr_rd = {addr_cnt_Y[4:0], 1'd1, addr_cnt_X[4:0], 1'd0};
                    4'd3: caddr_rd = {addr_cnt_Y[4:0], 1'd1, addr_cnt_X[4:0], 1'd1};
                    default: caddr_rd = 12'dx;
                endcase
            end
            default: begin
                caddr_rd = 12'dx;
                crd = 1'b0;
            end
        endcase
    end
    // address
    always @(*) begin
        case (st)
            READ_E: begin
                case (cnt)
                    4'd0: iaddr = {addr_cnt_Y - 6'd1, addr_cnt_X};
                    4'd1: iaddr = {addr_cnt_Y - 6'd1, addr_cnt_X + 6'd1};
                    4'd2: iaddr = {addr_cnt_Y, addr_cnt_X};
                    4'd3: iaddr = {addr_cnt_Y, addr_cnt_X + 6'd1};
                    4'd4: iaddr = {addr_cnt_Y + 6'd1, addr_cnt_X};
                    4'd5: iaddr = {addr_cnt_Y + 6'd1, addr_cnt_X + 6'd1};
                    default: iaddr = 12'dx;
                endcase
            end
            READ_I: begin
                case (cnt)
                    4'd0: iaddr = {addr_cnt_Y - 6'd1, addr_cnt_X + 6'd1};
                    4'd1: iaddr = {addr_cnt_Y, addr_cnt_X + 6'd1};
                    4'd2: iaddr = {addr_cnt_Y + 6'd1, addr_cnt_X + 6'd1};
                    default: iaddr = 12'dx;
                endcase
            end
            default: iaddr = 12'dx;
        endcase
    end
    always @(*) begin
        cdata_wr = result_reg[19:0];
        case (st)
            OUT00, OUT01: begin
                cwr = 1'b1;
                caddr_wr = addr_cnt;
            end
            OUT10, OUT11: begin
                cwr = 1'b1;
                caddr_wr = {2'd0, addr_cnt_Y[4:0], addr_cnt_X[4:0]};
            end
            OUT20: begin
                cwr = 1'b1;
                caddr_wr = {1'd0, addr_cnt_Y[4:0], addr_cnt_X[4:0], 1'b0};
            end
            OUT21: begin
                cwr = 1'b1;
                caddr_wr = {1'd0, addr_cnt_Y[4:0], addr_cnt_X[4:0], 1'b1};
            end
            default: begin
                caddr_wr = 12'dx;
                cwr = 1'b0;
            end
        endcase
    end
    always @(*) begin
        case (st)
            READ_E, READ_I: csel = 3'd000;
            CONV0, RELU0, OUT00: csel = 3'b001;
            CONV1, RELU1, OUT01: csel = 3'b010;
            READ00, MP0: csel = 3'b001;
            OUT10: csel = 3'b011;
            READ01, MP1: csel = 3'b010;
            OUT11: csel = 3'b100;
            OUT20, OUT21: csel = 3'b101;
            default: csel = 3'b000;
        endcase
    end

    wire signed [19:0] kernal0[0:8];
    wire signed [19:0] kernal1[0:8];
    assign kernal0[0] = 20'h0A89E;  //Pixel 0: 6.586609e-01
    assign kernal1[0] = 20'hFDB55;  //Pixel 1: -1.432343e-01
    assign kernal0[1] = 20'h092D5;  //Pixel 2: 5.735626e-01
    assign kernal1[1] = 20'h02992;  //Pixel 3: 1.623840e-01
    assign kernal0[2] = 20'h06D43;  //Pixel 4: 4.268036e-01
    assign kernal1[2] = 20'hFC994;  //Pixel 5: -2.125854e-01
    assign kernal0[3] = 20'h01004;  //Pixel 6: 6.256104e-02
    assign kernal1[3] = 20'h050FD;  //Pixel 7: 3.163605e-01
    assign kernal0[4] = 20'hF8F71;  //Pixel 8: -4.396820e-01
    assign kernal1[4] = 20'h02F20;  //Pixel 9: 1.840820e-01
    assign kernal0[5] = 20'hF6E54;  //Pixel 10: -5.690308e-01
    assign kernal1[5] = 20'h0202D;  //Pixel 11: 1.256866e-01
    assign kernal0[6] = 20'hFA6D7;  //Pixel 12: -3.482819e-01
    assign kernal1[6] = 20'h03BD7;  //Pixel 13: 2.337494e-01
    assign kernal0[7] = 20'hFC834;  //Pixel 14: -2.179565e-01
    assign kernal1[7] = 20'hFD369;  //Pixel 15: -1.741791e-01
    assign kernal0[8] = 20'hFAC19;  //Pixel 16: -3.277435e-01
    assign kernal1[8] = 20'h05E68;  //Pixel 17: 3.687744e-01


    wire [39:0] biased_0;
    wire [39:0] biased_1;
    assign biased_0 = 40'h0013100000 + result_reg;
    assign biased_1 = 40'hFF72950000 + result_reg;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            result_reg <= 20'd0;
        end else begin
            result_reg <= n_result_reg;
        end
    end
    always @(*) begin
        case (st)
            WAIT: n_result_reg = 40'd0;
            READ_E: n_result_reg = 40'd0;
            READ_I: n_result_reg = 40'd0;
            CONV0: n_result_reg = result_reg + (in_reg[cnt] * kernal0[cnt]);
            RELU0:
            n_result_reg = biased_0[39] ? 40'd0 : biased_0[15] ? {20'd0, (biased_0[35:16] + 20'd1)} : {20'd0, biased_0[35:16]};
            OUT00: n_result_reg = 40'd0;
            CONV1: n_result_reg = result_reg + (in_reg[cnt] * kernal1[cnt]);
            RELU1:
            n_result_reg = biased_1[39] ? 40'd0 : biased_1[15] ? {20'd0, (biased_1[35:16] + 20'd1)} : {20'd0, biased_1[35:16]};
            OUT01: n_result_reg = 40'd0;
            READ00: n_result_reg = 40'd0;
            MP0:
            n_result_reg = {
                20'd0,
                (
				(in_reg[0]>in_reg[1] && in_reg[0]>in_reg[2] && in_reg[0]>in_reg[3]) ? in_reg[0] : 
				(in_reg[1]>in_reg[2] && in_reg[1]>in_reg[3]) ? in_reg[1] : 
				(in_reg[2]>in_reg[3]) ? in_reg[2] : in_reg[3])
            };
            OUT10: n_result_reg = result_reg;
            OUT20: n_result_reg = 40'd0;
            READ01: n_result_reg = 40'd0;
            MP1:
            n_result_reg = {
                20'd0,
                (
				(in_reg[0]>in_reg[1] && in_reg[0]>in_reg[2] && in_reg[0]>in_reg[3]) ? in_reg[0] : 
				(in_reg[1]>in_reg[2] && in_reg[1]>in_reg[3]) ? in_reg[1] : 
				(in_reg[2]>in_reg[3]) ? in_reg[2] : in_reg[3])
            };
            OUT11: n_result_reg = result_reg;
            OUT21: n_result_reg = 40'd0;
            default: n_result_reg = result_reg;
        endcase
    end

    assign busy = busy_reg;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            busy_reg <= 1'd0;
        end else begin
            busy_reg <= nst != WAIT;
        end
    end

endmodule


