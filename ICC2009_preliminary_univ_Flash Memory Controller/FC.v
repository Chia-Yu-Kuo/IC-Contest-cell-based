module FC (
    clk,
    rst,
    cmd,
    done,
    M_RW,
    M_A,
    M_D,
    F_IO,
    F_CLE,
    F_ALE,
    F_REN,
    F_WEN,
    F_RB
);

    input clk;
    input rst;
    input [32:0] cmd;
    output done;
    output reg M_RW;
    output [6:0] M_A;
    inout [7:0] M_D;
    inout [7:0] F_IO;
    output reg F_CLE;
    output reg F_ALE;
    output reg F_REN;
    output reg F_WEN;
    input F_RB;


    wire [8:0] page_n, col_n;
    wire [6:0] int_start;
    wire [6:0] rw_len;
    wire [7:0] data;
    reg  [7:0] F_IO_signal;

    //state machine
    parameter DONE = 4'd0, CMD = 4'd1, RADDR = 4'd2, R_F_RB = 4'd3, RDATA = 4'd4, WCMD = 4'd5, WADDR = 4'd6, WDATA  = 4'd7, W10 = 4'd8, W_F_RB = 4'd9, RESET = 4'd11, RST_F_RB = 4'd12;
    reg [3:0] state, next_state;
    reg [8:0] counter, next_cnt;

    always @(posedge clk or posedge rst) begin
        if (rst) state <= RESET;
        else state <= next_state;
    end
    always @(posedge clk or posedge rst) begin
        if (rst) counter <= 9'b0;
        else counter <= next_cnt;
    end
    always @(*) begin
        case (state)
            DONE: next_state = CMD;
            CMD: next_state = counter == 9'd1 ? (cmd[32] ? RADDR : (col_n[8] ? WCMD : WADDR)) : CMD;
            RADDR: next_state = counter == 9'd5 ? R_F_RB : RADDR;
            R_F_RB: next_state = F_RB ? RDATA : R_F_RB;
            RDATA:
            next_state = (counter[8:1] == {1'b0, cmd[6:0]} - 8'd1) && counter[0] ? DONE : RDATA;
            WCMD: next_state = counter == 9'd1 ? WADDR : WCMD;
            WADDR: next_state = counter == 8'd5 ? WDATA : WADDR;
            WDATA: next_state = (counter[8:1] == {1'b0, cmd[6:0]}) && counter[0] ? W10 : WDATA;
            W10: next_state = counter == 1'd1 ? W_F_RB : W10;
            W_F_RB: next_state = F_RB ? DONE : W_F_RB;
            RESET: next_state = RST_F_RB;
            RST_F_RB: next_state = DONE;
            default: next_state = RESET;
        endcase
    end
    always @(*) begin
        next_cnt = state == next_state ? counter + 8'd1 : 8'd0;
    end

    // input logic
    assign page_n = cmd[31:23];
    assign col_n = cmd[22:14];
    assign int_start = cmd[13:7];
    assign rw_len = cmd[6:0];

    // output logic
    always @(*) begin
        F_CLE = 1'b0;
        F_ALE = 1'b0;
        F_REN = 1'b1;
        F_WEN = 1'b1;
        M_RW  = 1'b1;
        case (state)
            RESET, CMD, WCMD, W10: begin
                F_CLE = 1'b1;
                F_WEN = counter[0];
            end
            RADDR, WADDR: begin
                F_ALE = 1'b1;
                F_WEN = counter[0];
            end
            RDATA: begin
                F_REN = ~counter[0];
                M_RW  = 1'b0;
            end
            WDATA: F_WEN = ~counter[0];
        endcase
    end

    assign M_A = int_start + counter[7:1];

    // inout signal

    wire [7:0] M_D_1;

    buf (M_D_1[7], M_D[7]);
    buf (M_D_1[6], M_D[6]);
    buf (M_D_1[5], M_D[5]);
    buf (M_D_1[4], M_D[4]);
    buf (M_D_1[3], M_D[3]);
    buf (M_D_1[2], M_D[2]);
    buf (M_D_1[1], M_D[1]);
    buf (M_D_1[0], M_D[0]);

    assign M_D  = M_RW ? 8'bz : data;
    assign F_IO = state == RDATA ? 8'bz : state == W_F_RB ? 8'bz : F_IO_signal;

    assign data = M_RW ? M_D_1 : state == RDATA ? F_IO : 8'b0;


    // F_IO_signal
    always @(*) begin
        case (state)
            RESET: F_IO_signal = 8'hFF;
            CMD:
            F_IO_signal = cmd[32] ? (col_n[8] ? 8'h01 : 8'h00) :  // READ
            (col_n[8] ? 8'h01 : 8'h80);  // WRITE
            WCMD: F_IO_signal = 8'h80;
            RADDR, WADDR:
            F_IO_signal = (counter == 9'd0 || counter == 9'd1) ? col_n[7:0] :
						 (counter == 9'd2 || counter == 9'd3) ? page_n[7:0] : {7'b0, page_n[8]};
            WDATA: F_IO_signal = data;
            W10, W_F_RB: F_IO_signal = 8'h10;

            // DONE, RST_F_RB, R_F_RB, RDATA, 
            default: F_IO_signal = 8'h02;

        endcase
    end




    // done
    assign done = state == DONE;

endmodule
