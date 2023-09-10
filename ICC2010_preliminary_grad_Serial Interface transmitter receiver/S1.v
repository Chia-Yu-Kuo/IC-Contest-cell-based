module S1 (
    input clk,
    input rst,
    input updown,
    output reg S1_done,
    output reg RB1_RW,
    output reg [4:0] RB1_A,
    output [7:0] RB1_D,
    input [7:0] RB1_Q,
    inout sen,
    inout sd
);

    reg [2:0] cs, ns;
    reg [7:0] RB1_data[0:17];
    reg [12:0] receive_buff;  //use 18 times
    reg [4:0] counter, times;
    reg [4:0] nx_counter, nx_times;
    reg sd_data;

    parameter r_RB1=3'd0, sent=3'd1, wait_w=3'd2, done_s2=3'd3, wait_s2=3'd4, receive=3'd5, w_RB1=3'd6, done_s1=3'd7;
    integer i;

    assign RB1_D = receive_buff[7:0];
    //inout port???????????
    assign sen= (cs==wait_s2 | cs==receive | cs==w_RB1 | cs==done_s1) ?1'bZ : (cs==sent) ?1'b0 :1'b1;	//low is valid		// when input sd:z when output sd:0 when no transport:1 
    assign sd= (cs==wait_s2 | cs==receive | cs==w_RB1 | cs==done_s1) ?1'bZ : (~sen) ?sd_data :1'b0;

    //seq
    //RB1
    always @(negedge clk or posedge rst) begin
        if (rst) begin
            RB1_A   <= 5'd0;
            counter <= 5'd0;
            times   <= 5'd0;
        end else begin
            if (cs == r_RB1) begin
                RB1_A <= RB1_A + 5'd1;
            end else if (ns == w_RB1) begin
                RB1_A <= receive_buff[12:8];
            end
            counter <= nx_counter;
            times   <= nx_times;
        end
    end

    //data
    always @(negedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 18; i = i + 1) begin
                RB1_data[i] <= 8'b0;
            end
            receive_buff <= 13'd0;
        end else begin
            if (cs == r_RB1) begin
                RB1_data[RB1_A] <= RB1_Q;
            end

            if (cs == receive) begin
                receive_buff[5'd12-counter] <= sd;  //s1 neg抓
            end
        end
    end

    //cs
    always @(negedge clk or posedge rst) begin
        if (rst) begin
            cs <= r_RB1;
        end else begin
            cs <= ns;
        end
    end


    //comb
    always @(*) begin
        nx_counter = 5'd0;
        nx_times = 5'd0;
        S1_done = 1'b0;
        RB1_RW = 1'b1;
        sd_data = 1'b0;
        case (cs)
            r_RB1: begin
                if (RB1_A == 5'd17) begin
                    ns = sent;
                end else begin
                    ns = r_RB1;
                end
            end
            sent: begin
                if (counter == 5'd20) begin
                    ns = wait_w;
                    nx_times = times + 5'd1;
                end else begin
                    ns = sent;
                    nx_times = times;
                end
                nx_counter = counter + 5'd1;

                if (counter<=5'd2)	//0 1 2 
				begin
                    sd_data = times[5'd2-counter];  //addr
                end else begin
                    sd_data = RB1_data[5'd20-counter][5'd7-times];  //data
                end
            end
            wait_w: begin
                if (times == 5'd8) begin
                    ns = done_s2;
                end else begin
                    ns = sent;
                end
                nx_times = times;
            end
            done_s2: begin
                ns = wait_s2;
            end
            wait_s2: begin
                if (counter == 5'd7) begin
                    ns = receive;
                    nx_counter = 5'd0;
                end else begin
                    ns = wait_s2;
                    nx_counter = counter + 5'd1;
                end
            end
            receive: begin
                if (counter == 5'd12) begin
                    ns = w_RB1;
                    nx_times = times + 4'd1;
                end else begin
                    ns = receive;
                    nx_times = times;
                end
                nx_counter = counter + 5'd1;

            end
            w_RB1: begin
                if (times == 5'd18) begin
                    ns = done_s1;
                end else begin
                    ns = receive;
                end
                nx_times = times;
                RB1_RW   = 1'b0;  //write RB1
            end
            done_s1: begin
                ns = r_RB1;
                S1_done = 1'b1;
            end
        endcase
    end



endmodule
