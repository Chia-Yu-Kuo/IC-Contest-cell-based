module S2 (
    input clk,
    input rst,
    input updown,
    output reg S2_done,
    output reg RB2_RW,
    output reg [2:0] RB2_A,
    output [17:0] RB2_D,
    input [17:0] RB2_Q,
    inout sen,
    inout sd
);

    reg [2:0] cs, ns;
    reg [17:0] RB2_data[0:7];
    reg [20:0] receive_buff;  //use 8 times
    reg [4:0] counter, times;
    reg [4:0] nx_counter, nx_times;
    reg sd_data;

    parameter wait_s1=3'd0, receive=3'd1, w_RB2=3'd2, done_s2=3'd3, r_RB2=3'd4, sent=3'd5, wait_w=3'd6, done_s1=3'd7;
    integer i;

    assign RB2_D = receive_buff[17:0];
    //inout port???????????
    assign sen= (cs==wait_s1 | cs==receive | cs==w_RB2 | cs==done_s2) ?1'bZ : (cs==sent) ?1'b0 :1'b1;	//low is valid		// when input sd:z when output sd:0 when no transport:1 
    assign sd= (cs==wait_s1 | cs==receive | cs==w_RB2 | cs==done_s2) ?1'bZ : (~sen) ?sd_data :1'b0;

    //seq
    //RB2
    always @(negedge clk or posedge rst) begin
        if (rst) begin
            RB2_A   <= 5'd0;
            counter <= 5'd0;
            times   <= 5'd0;
        end else begin
            if (cs == r_RB2) begin
                RB2_A <= RB2_A + 5'd1;
            end else if (ns == w_RB2) begin
                RB2_A <= receive_buff[20:18];
            end else begin
                RB2_A <= 5'd0;
            end
            counter <= nx_counter;
            times   <= nx_times;
        end
    end

    //data
    always @(negedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 8; i = i + 1) begin
                RB2_data[i] <= 18'b0;
            end
            //receive_buff<=13'd0;
        end else begin
            if (cs == r_RB2) begin
                RB2_data[RB2_A] <= RB2_Q;
            end
        end
    end
    always @(posedge clk or posedge rst) 		//posedge receive
	begin
        if (rst) begin
            receive_buff <= 21'd0;
        end else begin
            if (cs == receive) begin
                receive_buff[5'd20-counter] <= sd;  //s1 
            end
        end
    end

    //cs
    always @(negedge clk or posedge rst) begin
        if (rst) begin
            cs <= wait_s1;
        end else begin
            cs <= ns;
        end
    end

    //comb
    always @(*) begin
        nx_counter = 5'd0;
        nx_times = 5'd0;
        S2_done = 1'b0;
        RB2_RW = 1'b1;
        sd_data = 1'b0;
        case (cs)
            wait_s1: begin
                if (counter == 5'd17) begin
                    ns = receive;
                    nx_counter = 5'd0;
                end else begin
                    ns = wait_s1;
                    nx_counter = counter + 5'd1;
                end
            end
            receive: begin
                if (counter == 5'd20) begin
                    ns = w_RB2;
                    nx_times = times + 4'd1;
                end else begin
                    ns = receive;
                    nx_times = times;
                end
                nx_counter = counter + 5'd1;

            end
            w_RB2: begin
                if (times == 5'd8) begin
                    ns = done_s2;
                end else begin
                    ns = receive;
                end
                nx_times = times;
                RB2_RW   = 1'b0;  //write RB1
            end
            done_s2: begin
                ns = r_RB2;
                S2_done = 1'b1;
            end
            r_RB2: begin
                if (RB2_A == 5'd7) begin
                    ns = sent;
                end else begin
                    ns = r_RB2;
                end
            end
            sent: begin
                if (counter == 5'd12) begin
                    ns = wait_w;
                    nx_times = times + 5'd1;
                end else begin
                    ns = sent;
                    nx_times = times;
                end
                nx_counter = counter + 5'd1;

                if (counter<=5'd4)	//0 1 2 
				begin
                    sd_data = times[5'd4-counter];  //addr
                end else begin
                    sd_data = RB2_data[5'd12-counter][5'd17-times];  //data
                end
            end
            wait_w: begin
                if (times == 5'd18) begin
                    ns = done_s1;
                end else begin
                    ns = sent;
                end
                nx_times = times;
            end
            done_s1: begin
                ns = wait_s1;
            end
        endcase
    end

endmodule
