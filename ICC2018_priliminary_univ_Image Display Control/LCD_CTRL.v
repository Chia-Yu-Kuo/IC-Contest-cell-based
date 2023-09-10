module LCD_CTRL (
    clk,
    reset,
    cmd,
    cmd_valid,
    IROM_Q,
    IROM_rd,
    IROM_A,
    IRAM_valid,
    IRAM_D,
    IRAM_A,
    busy,
    done
);
    input clk;
    input reset;
    input [3:0] cmd;
    input cmd_valid;
    input [7:0] IROM_Q;
    output IROM_rd;
    output reg [5:0] IROM_A;
    output IRAM_valid;
    output [7:0] IRAM_D;
    output reg [5:0] IRAM_A;
    output reg busy;
    output reg done;

    wire [5:0] p1, p2, p3, p4;  // kernal index
    wire [2:0] op_X, op_Y;  // 0~7  (0 invalid and no 8)
    wire big1, big2;
    wire [7:0] M1, M2, M3, m1, m2, m3;
    wire [9:0] avg;
    wire [7:0] p1_data, p2_data, p3_data, p4_data;

    reg [1:0] state, nx_state;
    reg [7:0] matrix                                               [0:63];  //8*8
    reg [5:0] operation_point;  //op point 8*8 : (0,0) 0 ~ (7,7) 63
    reg [5:0] next_operation_point;
    reg [7:0] nx_p1_data, nx_p2_data, nx_p3_data, nx_p4_data;  //kernal data
    reg [5:0] nx_IROM_A, nx_IRAM_A;
    reg nx_busy, nx_done;

    integer i;

    parameter write=4'd0, shift_up=4'd1, shift_down=4'd2, shift_left=4'd3, shift_right=4'd4, max=4'd5, min=4'd6, average=4'd7, counterclk_rot=4'd8, clk_rot=4'd9, mirror_x=4'd10, mirror_y=4'd11;
    parameter idle = 2'd0, read = 2'd1, cal = 2'd2, write_ans = 2'd3;

    assign IROM_rd = (state == read) ? 1'b1 : 1'b0;
    assign IRAM_D = matrix[IRAM_A];
    assign IRAM_valid = (state == write_ans) ? 1'b1 : 1'b0;


    assign op_X = operation_point >> 6'd3;
    assign op_Y = operation_point % 6'd8;
    assign p1 = operation_point - 6'd9;
    assign p2 = operation_point - 6'd8;
    assign p3 = operation_point - 6'd1;
    assign p4 = operation_point;
    assign p1_data = matrix[p1];
    assign p2_data = matrix[p2];
    assign p3_data = matrix[p3];
    assign p4_data = matrix[p4];

    assign big1 = (p2_data > p1_data) ? 1'b1 : 1'b0;  //1下 0上
    assign big2 = (p4_data > p3_data) ? 1'b1 : 1'b0;  //1下 0上
    assign M1 = (big1) ? p2_data : p1_data;
    assign M2 = (big2) ? p4_data : p3_data;
    assign M3 = (M2 > M1) ? M2 : M1;
    assign m1 = (big1) ? p1_data : p2_data;
    assign m2 = (big2) ? p3_data : p4_data;
    assign m3 = (m2 < m1) ? m2 : m1;
    assign avg = ((p1_data + p2_data) + (p3_data + p4_data)) >> 10'd2;

    //seq
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            IROM_A <= 6'b0;  //解決index 0 
            IRAM_A <= 6'b0;
            busy   <= 1'b1;
            done   <= 1'b0;
        end else begin
            IROM_A <= nx_IROM_A;
            IRAM_A <= nx_IRAM_A;
            busy   <= nx_busy;
            done   <= nx_done;
        end
    end
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            operation_point <= 6'd36;  //(4,4)  上移下看右下kernal
            for (i = 0; i < 64; i = i + 1) begin
                matrix[i] <= 8'b0;
            end
        end else begin
            if (state==read)         /////////////////??????????????????????????????????????????? or nx state
            begin
                matrix[IROM_A]<=IROM_Q;             /////////////////???????????????????????????????????????????    
            end else  //(state==cal) 
            begin
                operation_point <= next_operation_point;
                matrix[p1] <= nx_p1_data;
                matrix[p2] <= nx_p2_data;
                matrix[p3] <= nx_p3_data;
                matrix[p4] <= nx_p4_data;
            end
        end
    end
    //state
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= idle;
        end else begin
            state <= nx_state;
        end
    end

    //combi
    always @(*) begin
        if (cmd_valid) begin
            //default
            next_operation_point = operation_point;
            nx_p1_data = p1_data;
            nx_p2_data = p2_data;
            nx_p3_data = p3_data;
            nx_p4_data = p4_data;

            case (cmd)
                write:  //need stall
                begin
                    next_operation_point = operation_point;
                    nx_p1_data = p1_data;
                    nx_p2_data = p2_data;
                    nx_p3_data = p3_data;
                    nx_p4_data = p4_data;
                end
                ///////////////////////////////////////////
                shift_up: begin
                    if (op_X == 3'd1) begin
                        next_operation_point = operation_point;
                    end else begin
                        next_operation_point = operation_point - 6'd8;
                    end
                end
                shift_down: begin
                    if (op_X == 3'd7) begin
                        next_operation_point = operation_point;
                    end else begin
                        next_operation_point = operation_point + 6'd8;
                    end
                end
                shift_left: begin
                    if (op_Y == 3'd1) begin
                        next_operation_point = operation_point;
                    end else begin
                        next_operation_point = operation_point - 6'd1;
                    end
                end
                shift_right: begin
                    if (op_Y == 3'd7) begin
                        next_operation_point = operation_point;
                    end else begin
                        next_operation_point = operation_point + 6'd1;
                    end
                end
                /////////////////////////////////////////////
                max: begin
                    nx_p1_data = M3;
                    nx_p2_data = M3;
                    nx_p3_data = M3;
                    nx_p4_data = M3;
                end
                min: begin
                    nx_p1_data = m3;
                    nx_p2_data = m3;
                    nx_p3_data = m3;
                    nx_p4_data = m3;
                end
                average: begin
                    nx_p1_data = avg;
                    nx_p2_data = avg;
                    nx_p3_data = avg;
                    nx_p4_data = avg;
                end
                counterclk_rot: begin
                    nx_p1_data = p2_data;
                    nx_p2_data = p4_data;
                    nx_p3_data = p1_data;
                    nx_p4_data = p3_data;

                end
                clk_rot: begin
                    nx_p1_data = p3_data;
                    nx_p2_data = p1_data;
                    nx_p3_data = p4_data;
                    nx_p4_data = p2_data;
                end
                mirror_x: begin
                    nx_p1_data = p3_data;
                    nx_p2_data = p4_data;
                    nx_p3_data = p1_data;
                    nx_p4_data = p2_data;
                end
                mirror_y: begin
                    nx_p1_data = p2_data;
                    nx_p2_data = p1_data;
                    nx_p3_data = p4_data;
                    nx_p4_data = p3_data;
                end
                default: begin
                    next_operation_point = 6'b0;
                    nx_p1_data = 8'b0;
                    nx_p2_data = 8'b0;
                    nx_p3_data = 8'b0;
                    nx_p4_data = 8'b0;
                end
            endcase
        end else  //keep
        begin
            next_operation_point = operation_point;
            nx_p1_data = p1_data;
            nx_p2_data = p2_data;
            nx_p3_data = p3_data;
            nx_p4_data = p4_data;
        end
    end

    always @(*) begin
        nx_IROM_A = 6'b0;
        nx_IRAM_A = 6'b0;
        nx_done   = 1'b0;
        case (state)
            idle: begin
                nx_state  = read;
                nx_IROM_A = 6'd0;
                nx_busy   = 1'b1;
            end
            read: begin
                if (IROM_A == 6'd63) begin
                    nx_state = cal;
                    nx_busy  = 1'b0;
                end else begin
                    nx_state  = read;
                    nx_IROM_A = IROM_A + 6'd1;
                    nx_busy   = 1'b1;
                end
            end
            cal: begin
                if (cmd==write)     //stall one cycle
                begin
                    nx_state  = write_ans;
                    nx_IRAM_A = 6'b0;
                    nx_busy   = 1'b1;
                end else begin
                    nx_state = cal;
                    nx_busy  = 1'b0;
                end
            end
            write_ans: begin
                if (IRAM_A == 6'd63) begin
                    nx_state = idle;
                    nx_busy  = 1'b1;
                    nx_done  = 1'b1;
                end else begin
                    nx_state  = write_ans;
                    nx_IRAM_A = IRAM_A + 6'd1;
                    nx_busy   = 1'b1;
                end
            end
        endcase
    end



endmodule



