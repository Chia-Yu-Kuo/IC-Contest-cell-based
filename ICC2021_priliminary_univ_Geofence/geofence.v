//suppose register area is larger than multiplier and adder (one cycle can do comp)

module geofence (
    clk,
    reset,
    X,
    Y,
    valid,
    is_inside
);
    input clk;
    input reset;
    input [9:0] X;  //0~1023
    input [9:0] Y;
    output reg valid;
    output reg is_inside;

    reg [1:0] cs, ns;
    reg       nx_is_inside;
    reg [9:0] matrix_x     [0:6];  //[0]is object
    reg [9:0] matrix_y     [0:6];
    reg [1:0] sort_times, nx_sort_times;
    reg [2:0] input_addr, sort_index, nx_sort_index;
    reg counnter, nx_counter;

    wire signed [10:0] Ax, Ay, Bx, By, multiplier1, multiplier2;  //-1023~1023
    wire signed [20:0] mul;  //mul is mul2   //-1024*-1024 is imposible
    reg signed  [20:0] mul1;

    parameter read = 2'd0, build = 2'd1, judge = 2'd2, done = 2'd3;
    integer i;

    assign Ax= (cs==build) ? matrix_x[sort_index]-matrix_x[1] : matrix_x[sort_index]-matrix_x[0] ;   //else is judge cs
    assign Ay= (cs==build) ? matrix_y[sort_index]-matrix_y[1] : matrix_y[sort_index]-matrix_y[0] ;   //else is judge cs
    assign Bx= (cs==build) ? matrix_x[sort_index+3'd1]-matrix_x[1] : (sort_index<3'd6) ? matrix_x[sort_index+3'd1]-matrix_x[sort_index] : matrix_x[1]-matrix_x[6];   //else is judge cs
    assign By= (cs==build) ? matrix_y[sort_index+3'd1]-matrix_y[1] : (sort_index<3'd6) ? matrix_y[sort_index+3'd1]-matrix_y[sort_index] : matrix_y[1]-matrix_y[6];   //else is judge cs
    assign multiplier1 = (counnter) ? Bx : Ax;
    assign multiplier2 = (counnter) ? Ay : By;
    assign mul = multiplier1 * multiplier2;  //Ax*By;  /  Bx*Ay
    //assign mul2=Bx*Ay;



    //seq
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            cs <= read;
            is_inside <= 1'b1;
        end else begin
            cs <= ns;
            //sol1
            if (cs == read) begin
                is_inside <= 1'b1;
            end else if (cs == judge & counnter) begin
                if (mul1 < mul) begin
                    is_inside <= 1'b0;
                end
            end
            //sol2
            //is_inside<=nx_is_inside;
        end
    end
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            sort_times <= 2'd0;
            sort_index <= 3'd0;
            input_addr <= 3'd0;
            counnter <= 1'b0;
            mul1 <= 21'b0;
        end else begin
            //input_addr
            if (cs == read) begin
                input_addr <= input_addr + 3'd1;
            end else begin
                input_addr <= 3'd0;
            end
            //(too complicated)
            sort_index <= nx_sort_index;
            sort_times <= nx_sort_times;
            counnter   <= nx_counter;

            if ((cs == build | cs == judge) & ~counnter);
            begin
                mul1 <= mul;
            end
        end
    end
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (i = 0; i < 7; i = i + 1) begin
                matrix_x[i] <= 10'b0;
                matrix_y[i] <= 10'b0;
            end
        end else begin
            if (cs == read) begin
                matrix_x[input_addr] <= X;
                matrix_y[input_addr] <= Y;
            end else if (cs == build & counnter) begin
                if (mul1<mul)  //A is in the B clkwise ==>swap
                begin
                    matrix_x[sort_index] <= matrix_x[sort_index+3'd1];
                    matrix_y[sort_index] <= matrix_y[sort_index+3'd1];

                    matrix_x[sort_index+3'd1] <= matrix_x[sort_index];
                    matrix_y[sort_index+3'd1] <= matrix_y[sort_index];
                end  //else ==>keep
            end
        end
    end

    //comb
    always @(*) begin
        valid = 1'b0;
        case (cs)
            read: begin
                if (input_addr == 3'd6) begin
                    ns = build;
                end else begin
                    ns = read;
                end
            end
            build: begin
                if (sort_index == 3'd5 & sort_times == 2'd3 & counnter) begin
                    ns = judge;
                end else begin
                    ns = build;
                end

            end
            judge: begin
                if (sort_index == 3'd6 & counnter) begin
                    ns = done;
                end else begin
                    ns = judge;
                end
            end
            done: begin
                ns = read;
                valid = 1'b1;
            end
        endcase
    end

    always @(*) begin
        nx_counter = (cs != ns) ? 1'b0 : counnter + 1'd1;
    end

    always @(*) begin
        if (cs == build) begin
            if (ns == judge) begin
                nx_sort_index = 3'd1;
            end
            else if (sort_index==3'd5  & counnter)      // (2~5)
            begin
                nx_sort_index = 3'd2;
            end else begin
                nx_sort_index = (counnter) ? sort_index + 3'd1 : sort_index;
            end

            if (sort_index == 3'd5 & counnter) begin
                nx_sort_times = sort_times + 3'd1;
            end else begin
                nx_sort_times = sort_times;
            end
        end 
        else if (cs==judge)  // judge (1~6)
        begin
            nx_sort_index = (counnter) ? sort_index + 3'd1 : sort_index;
            nx_sort_times = 2'd0;
        end else begin
            nx_sort_index = 3'd2;
            nx_sort_times = 2'd0;
        end
    end

endmodule

