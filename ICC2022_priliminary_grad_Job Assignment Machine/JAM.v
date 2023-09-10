module JAM (
    input CLK,
    input RST,
    output reg [2:0] W,
    output reg [2:0] J,
    input [6:0] Cost,
    output reg [3:0] MatchCount,
    output reg [9:0] MinCost,
    output reg Valid
);


    //====================================================================

    // state
    parameter WAIT = 4'd0;
    parameter IN8 = 4'd1;
    parameter CMP = 4'd2;
    parameter FIND_TO_SWAP = 4'd3;
    parameter INVERSE = 4'd4;
    parameter IN7 = 4'd5;
    parameter DONE = 4'd6;


    reg [3:0] st, nst;
    reg [3:0] cnt, ncnt;
    wire last_time;

    //st
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            st <= WAIT;
        end else begin
            st <= nst;
        end
    end
    always @(*) begin
        case (st)
            WAIT: nst = cnt == 4'd1 ? IN8 : WAIT;
            IN8: nst = cnt == 4'd8 ? CMP : IN8;
            CMP: nst = last_time ? DONE : FIND_TO_SWAP;
            FIND_TO_SWAP: nst = INVERSE;
            INVERSE: nst = IN7;
            IN7: nst = cnt == 4'd6 ? CMP : IN7;
            DONE: nst = DONE;
            default: nst = WAIT;
        endcase
    end

    //cnt
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            cnt <= 4'd0;
        end else begin
            cnt <= ncnt;
        end
    end
    always @(*) begin
        ncnt = st != nst ? 4'd0 : cnt + 4'd1;
    end


    // registers
    integer i1, i2, i3;
    reg [7:0] cost_reg[0:7];
    reg [2:0] job_reg [0:7];
    reg [2:0] up_w1, n_up_w1, up_w2, n_up_w2;
    reg  [9:0] mincost_reg;
    reg  [3:0] match_cnt_reg;

    wire [6:0] rl;
    wire [6:0] to_swap;
    //wire [9:0] total_cost;
    reg  [9:0] total_cost_reg;

    assign last_time = ~(|rl);
    assign rl[6] = {job_reg[7] > job_reg[6]};
    assign rl[5] = {job_reg[6] > job_reg[5]};
    assign rl[4] = {job_reg[5] > job_reg[4]};
    assign rl[3] = {job_reg[4] > job_reg[3]};
    assign rl[2] = {job_reg[3] > job_reg[2]};
    assign rl[1] = {job_reg[2] > job_reg[1]};
    assign rl[0] = {job_reg[1] > job_reg[0]};

    assign to_swap[6] = rl[6];
    assign to_swap[5] = ~rl[6] & rl[5];
    assign to_swap[4] = ~rl[6] & ~rl[5] & rl[4];
    assign to_swap[3] = ~rl[6] & ~rl[5] & ~rl[4] & rl[3];
    assign to_swap[2] = ~rl[6] & ~rl[5] & ~rl[4] & ~rl[3] & rl[2];
    assign to_swap[1] = ~rl[6] & ~rl[5] & ~rl[4] & ~rl[3] & ~rl[2] & rl[1];
    assign to_swap[0] = ~rl[6] & ~rl[5] & ~rl[4] & ~rl[3] & ~rl[2] & ~rl[1] & rl[0];

    //assign total_cost = cost_reg[0] + cost_reg[1] + cost_reg[2] + cost_reg[3] + cost_reg[4] + cost_reg[5] + cost_reg[6] + cost_reg[7];

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            total_cost_reg[i1] <= 10'd0;
        end else if (st == IN8) begin
            total_cost_reg <= cnt == 4'd0 ? 10'd0 : total_cost_reg + Cost;
        end else if (st == INVERSE) begin
            total_cost_reg <= Cost;
        end else if (st == IN7) begin
            total_cost_reg <= total_cost_reg + Cost;
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            for (i1 = 0; i1 < 8; i1 = i1 + 1) begin
                cost_reg[i1] <= 8'd0;
            end
        end else if (st == IN8) begin
            case (cnt)
                4'd1: cost_reg[0] <= Cost;
                4'd2: cost_reg[1] <= Cost;
                4'd3: cost_reg[2] <= Cost;
                4'd4: cost_reg[3] <= Cost;
                4'd5: cost_reg[4] <= Cost;
                4'd6: cost_reg[5] <= Cost;
                4'd7: cost_reg[6] <= Cost;
                4'd8: cost_reg[7] <= Cost;
            endcase
        end else if (st == INVERSE) begin
            cost_reg[0] <= Cost;
        end else if (st == IN7) begin
            case (cnt)
                4'd0: cost_reg[1] <= Cost;
                4'd1: cost_reg[2] <= Cost;
                4'd2: cost_reg[3] <= Cost;
                4'd3: cost_reg[4] <= Cost;
                4'd4: cost_reg[5] <= Cost;
                4'd5: cost_reg[6] <= Cost;
                4'd6: cost_reg[7] <= Cost;
            endcase
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            for (i2 = 0; i2 < 8; i2 = i2 + 1) begin
                job_reg[i2] <= i2;
            end
        end else if (st == FIND_TO_SWAP) begin
            job_reg[up_w1] <= job_reg[up_w2];
            job_reg[up_w2] <= job_reg[up_w1];
        end else if (st == INVERSE) begin
            case (up_w1)
                3'd0: begin
                    for (i2 = 1; i2 < 8; i2 = i2 + 1) job_reg[i2] <= job_reg[8-i2];
                end
                3'd1: begin
                    for (i2 = 2; i2 < 8; i2 = i2 + 1) job_reg[i2] <= job_reg[9-i2];
                end
                3'd2: begin
                    for (i2 = 3; i2 < 8; i2 = i2 + 1) job_reg[i2] <= job_reg[10-i2];
                end
                3'd3: begin
                    for (i2 = 4; i2 < 8; i2 = i2 + 1) job_reg[i2] <= job_reg[11-i2];
                end
                3'd4: begin
                    for (i2 = 5; i2 < 8; i2 = i2 + 1) job_reg[i2] <= job_reg[12-i2];
                end
                3'd5: begin
                    for (i2 = 6; i2 < 8; i2 = i2 + 1) job_reg[i2] <= job_reg[13-i2];
                end
            endcase
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            up_w1 <= 3'd6;
        end else if (st == IN7 && cnt == 4'd0) begin
            up_w1 <= n_up_w1;
        end
    end

    always @(*) begin
        case (to_swap)
            7'b000_0001: n_up_w1 = 3'd0;
            7'b000_0010: n_up_w1 = 3'd1;
            7'b000_0100: n_up_w1 = 3'd2;
            7'b000_1000: n_up_w1 = 3'd3;
            7'b001_0000: n_up_w1 = 3'd4;
            7'b010_0000: n_up_w1 = 3'd5;
            7'b100_0000: n_up_w1 = 3'd6;
            default: n_up_w1 = 3'dx;
        endcase
    end


    reg [2:0] tmp_idx;

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            up_w2 <= 3'd7;
        end else if (st == CMP) begin
            up_w2 <= tmp_idx;
        end
    end

    wire [2:0] target_w;
    assign target_w = job_reg[up_w1];

    reg [3:0] dist_w1, dist_w2;
    always @(*) begin
        case (cnt)
            4'd1: dist_w1 = job_reg[6] - target_w;
            4'd2: dist_w1 = job_reg[5] - target_w;
            4'd3: dist_w1 = job_reg[4] - target_w;
            4'd4: dist_w1 = job_reg[3] - target_w;
            4'd5: dist_w1 = job_reg[2] - target_w;
            4'd6: dist_w1 = job_reg[1] - target_w;
            default: dist_w1 = 4'dx;
        endcase

        case (cnt)
            4'd1: dist_w2 = job_reg[7] - target_w;
            default: dist_w2 = job_reg[tmp_idx] - target_w;
        endcase
    end

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            tmp_idx <= 3'd7;
        end else if (st == IN7) begin
            case (cnt)
                4'd1: tmp_idx <= up_w1 >= 3'd6 ? 3'd7 : (dist_w1 < dist_w2 ? 3'd6 : 3'd7);
                4'd2: tmp_idx <= up_w1 >= 3'd5 ? tmp_idx : (dist_w1 < dist_w2 ? 3'd5 : tmp_idx);
                4'd3: tmp_idx <= up_w1 >= 3'd4 ? tmp_idx : (dist_w1 < dist_w2 ? 3'd4 : tmp_idx);
                4'd4: tmp_idx <= up_w1 >= 3'd3 ? tmp_idx : (dist_w1 < dist_w2 ? 3'd3 : tmp_idx);
                4'd5: tmp_idx <= up_w1 >= 3'd2 ? tmp_idx : (dist_w1 < dist_w2 ? 3'd2 : tmp_idx);
                4'd6: tmp_idx <= up_w1 >= 3'd1 ? tmp_idx : (dist_w1 < dist_w2 ? 3'd1 : tmp_idx);
            endcase
        end
    end


    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            mincost_reg   <= -10'd1;
            match_cnt_reg <= 4'd0;
        end else if (st == CMP) begin
            if (total_cost_reg < mincost_reg) begin
                mincost_reg   <= total_cost_reg;
                match_cnt_reg <= 4'd1;
            end else if (total_cost_reg == mincost_reg) begin
                mincost_reg   <= mincost_reg;
                match_cnt_reg <= match_cnt_reg + 4'd1;
            end
        end
    end

    // output 

    always @(*) begin
        // W  
        case (st)
            IN8: W = cnt[2:0];
            FIND_TO_SWAP: W = 3'd0;
            INVERSE: W = 3'd1;
            IN7: begin
                case (cnt)
                    4'd0: W = 3'd2;
                    4'd1: W = 3'd3;
                    4'd2: W = 3'd4;
                    4'd3: W = 3'd5;
                    4'd4: W = 3'd6;
                    4'd5: W = 3'd7;
                    default: W = 3'd0;
                endcase
            end
            default: W = 3'd0;
        endcase

        // J
        case (st)
            IN8: J = cnt[2:0];
            FIND_TO_SWAP: J = up_w1 != 3'd0 ? job_reg[0] : job_reg[n_up_w2];
            INVERSE: J = up_w1 == 3'd0 ? job_reg[7] : job_reg[1];
            IN7: begin
                case (cnt)
                    4'd0: J = job_reg[2];
                    4'd1: J = job_reg[3];
                    4'd2: J = job_reg[4];
                    4'd3: J = job_reg[5];
                    4'd4: J = job_reg[6];
                    4'd5: J = job_reg[7];
                    default: J = job_reg[0];
                endcase
            end
            default: J = job_reg[0];
        endcase

        MatchCount = match_cnt_reg;
        MinCost = mincost_reg;
        Valid = st == DONE;

    end














    /////////////

    /*

set search_path      "/usr/cad/CBDK/CBDK_IC_Contest_v2.1/SynopsysDC/db $search_path"

ncverilog testfixture.v xxx.v +access+r

ncverilog testfixture.v xxx_syn.v -v tsmc13_neg.v +define+SDF

*/





endmodule


