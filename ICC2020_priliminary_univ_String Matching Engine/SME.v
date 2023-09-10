module SME (
    clk,
    reset,
    chardata,
    isstring,
    ispattern,
    valid,
    match,
    match_index
);
    input clk;
    input reset;
    input [7:0] chardata;
    input isstring;
    input ispattern;
    output reg match;  //seq  (by latch delay)
    output reg [4:0] match_index;  //seq
    output reg valid;  //comb

    reg [1:0] clear;  // 00 dont / 01 pattern /11 all

    reg [2:0] cs, ns;
    reg [2:0] comp_cs, comp_ns;
    reg        nx_match;  //,nx_valid;
    reg  [4:0] match_index_tail;
    wire [4:0] nx_match_index;

    reg  [7:0] str                    [0:31];
    reg        str_space              [0:31];  //initial state(idle) should all low
    reg [4:0] str_addr, nx_str_addr;

    //reg [7:0] pattern [0:7];         
    reg [7:0] pattern_latch;
    reg [2:0] pat_addr, nx_pat_addr;
    reg pat_front, pat_behind;  //seq   
    reg compare_table[0:31];
    reg nx_compare_table[0:31];
    reg reduction_comp_tab, reduction_comp_tab_latch;

    parameter idle = 3'd0, read_str = 3'd1, read_pat = 3'd2, wait_wait = 3'd3, out = 3'd4;
    parameter init =3'd0, success=3'd1, fail=3'd2, success_success=3'd3, fail_fail=3'd4,  done=3'd5;
    parameter space = 8'd32, front = 8'd94, behind = 8'd36, dont_care = 8'd46;
    integer i, j, k, l;

    assign nx_match_index = (match_index_tail - pat_addr) + (pat_front + pat_behind);

    //register(output+addr)
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            match <= 1'b0;
            match_index <= 4'b0;
            str_addr <= 5'b0;
            pat_addr <= 3'b0;
        end else begin
            match       <= nx_match;
            match_index <= nx_match_index;
            str_addr    <= nx_str_addr;  //用comb  keep
            pat_addr    <= nx_pat_addr;
        end
    end
    //state
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            cs <= idle;
            comp_cs <= init;
        end else begin
            cs <= ns;
            comp_cs <= comp_ns;
        end
    end
    //data      *4
    //string's
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (i = 0; i < 32; i = i + 1) begin
                str[i] <= 8'b0;
            end

            for (k = 0; k < 32; k = k + 1) begin
                str_space[k] <= 1'b0;
            end
        end else begin
            if (clear == 2'b11) begin
                for (i = 1; i < 32; i = i + 1) begin
                    str[i] <= 8'b0;
                end
                str[0] <= chardata;

                if (chardata == space) begin
                    for (k = 1; k < 32; k = k + 1) begin
                        str_space[k] <= 1'b0;
                    end
                    str_space[0] <= 1'b1;
                end else begin
                    for (k = 0; k < 32; k = k + 1) begin
                        str_space[k] <= 1'b0;
                    end
                end
            end else begin
                if (ns == read_str) begin
                    str[nx_str_addr] <= chardata;

                    if (chardata == space) begin
                        str_space[nx_str_addr] <= 1'b1;
                    end
                end
            end
        end
    end

    //pattern's
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pattern_latch <= 8'b0;

            for (l = 0; l < 32; l = l + 1) begin
                compare_table[l] <= 1'b0;
            end
            pat_front <= 1'b0;
            pat_behind <= 1'b0;
            reduction_comp_tab_latch <= 1'b0;

        end else begin
            reduction_comp_tab_latch <= reduction_comp_tab;
            if (clear == 2'b11) begin
                pattern_latch <= 8'b0;

                for (l = 0; l < 32; l = l + 1) begin
                    compare_table[l] <= 1'b0;
                end
                pat_front  <= 1'b0;
                pat_behind <= 1'b0;
            end else if (clear == 2'b01) begin
                case (chardata)
                    front: begin
                        pat_front  <= 1'b1;
                        pat_behind <= 1'b0;
                    end
                    behind: begin
                        pat_front  <= 1'b0;
                        pat_behind <= 1'b1;
                    end
                    dont_care: begin
                        pat_front  <= 1'b0;
                        pat_behind <= 1'b0;
                    end
                    default: begin
                        pat_front <= 1'b0;
                        pat_behind <= 1'b0;
                        pattern_latch <= chardata;
                    end
                endcase


                for (l = 0; l < 32; l = l + 1) begin
                    compare_table[l] <= nx_compare_table[l];
                end
            end else  //addr begin form 1
            begin
                if (ns == read_pat) begin
                    case (chardata)
                        front:      //w
                        begin
                            pat_front <= 1'b1;
                        end
                        behind: begin
                            pat_behind <= 1'b1;
                        end
                        default: begin
                            pattern_latch <= chardata;
                        end
                    endcase

                    for (l = 0; l < 32; l = l + 1) begin
                        compare_table[l] <= nx_compare_table[l];
                    end
                end
            end

        end
    end

    always @(*) begin
        clear       = 2'b00;
        valid       = 1'b0;
        nx_str_addr = str_addr;
        nx_pat_addr = pat_addr;
        ns          = idle;
        case (cs)
            idle: begin
                ns = read_str;
                nx_str_addr = 5'd0;
            end
            read_str: begin
                if (isstring) begin
                    ns = read_str;
                    nx_str_addr = str_addr + 5'd1;
                end else begin
                    ns = read_pat;
                    nx_pat_addr = 3'd0;
                end
            end
            read_pat: begin
                if (ispattern) begin
                    ns = read_pat;
                    nx_pat_addr = pat_addr + 3'd1;
                end else begin
                    ns = wait_wait;
                end
            end
            wait_wait: begin
                ns = out;
            end
            out: begin
                if (isstring & (~ispattern)) begin
                    ns = read_str;
                    nx_str_addr = 5'd0;
                    nx_pat_addr = 3'd0;
                    clear = 2'b11;
                end else if ((~isstring) & ispattern) begin
                    ns = read_pat;
                    nx_pat_addr = 3'd0;
                    clear = 2'b01;
                end
                valid = 1'b1;
            end
        endcase
    end

    //COMP FSM
    always @(*) begin
        nx_match = 1'b0;
        if (ns==read_pat ||ns==wait_wait ||ns==out)        //out for done state
        begin
            comp_ns = init;
            case (comp_cs)
                init: begin
                    if (reduction_comp_tab_latch) begin
                        comp_ns = success;
                    end else begin
                        comp_ns = fail;
                    end
                end
                success: begin
                    if (ispattern)      // last pat will in valid
                begin
                        if (~reduction_comp_tab_latch) begin
                            comp_ns = fail;
                        end else begin
                            comp_ns = success;
                        end
                    end else begin
                        if (~reduction_comp_tab_latch) begin
                            comp_ns = fail_fail;
                        end else begin
                            comp_ns = success_success;
                        end
                    end
                end
                fail: begin
                    if (ispattern) begin
                        comp_ns = fail;
                    end else begin
                        comp_ns = fail_fail;
                    end
                end
                success_success: begin
                    comp_ns  = done;
                    nx_match = 1'b1;
                end
                fail_fail: begin
                    comp_ns  = done;
                    nx_match = 1'b0;
                end
                done: begin
                    if (reduction_comp_tab) begin
                        comp_ns = success;
                    end else begin
                        comp_ns = fail;
                    end
                end
            endcase
        end else  //ns==str
        begin
            comp_ns = init;
        end

    end

    //comp table                 
    always @(*) begin
        if (nx_pat_addr == 3'd0) begin
            if (chardata == front) begin
                for (l = 0; l < 32; l = l + 1) begin
                    nx_compare_table[l] = str_space[l];
                end
                nx_compare_table[0] = 1'b1;
            end else if (chardata == dont_care) begin
                for (l = 0; l < 32; l = l + 1) begin
                    nx_compare_table[l] = 1'b1;
                end
            end else begin
                for (l = 0; l < 32; l = l + 1) begin
                    nx_compare_table[l] = (str[l] == chardata);
                end
            end
        end else begin
            if (chardata == behind) begin
                for (l = 0; l < 31; l = l + 1) begin
                    nx_compare_table[l] = compare_table[l] & str_space[l+1];
                end
                nx_compare_table[31] = compare_table[31];
                nx_compare_table[str_addr] = compare_table[str_addr];
            end else if (chardata == dont_care) begin
                for (l = 0; l < 31; l = l + 1) begin
                    nx_compare_table[l+1] = compare_table[l];
                end
                nx_compare_table[0] = 1'b0;
            end else begin
                for (l = 0; l < 31; l = l + 1) begin
                    nx_compare_table[l+1] = compare_table[l] & (str[l+1] == chardata);
                end
                nx_compare_table[0] = 1'b0;
            end
        end
    end

    //reduction OR of array    
    always @(*) begin
        reduction_comp_tab=  nx_compare_table[0] |nx_compare_table[1] |nx_compare_table[2] |nx_compare_table[3]
                            |nx_compare_table[4] |nx_compare_table[5] |nx_compare_table[6] |nx_compare_table[7]
                            |nx_compare_table[8] |nx_compare_table[9] |nx_compare_table[10]|nx_compare_table[11]
                            |nx_compare_table[12]|nx_compare_table[13]|nx_compare_table[14]|nx_compare_table[15]
                            |nx_compare_table[16]|nx_compare_table[17]|nx_compare_table[18]|nx_compare_table[19]
                            |nx_compare_table[20]|nx_compare_table[21]|nx_compare_table[22]|nx_compare_table[23]
                            |nx_compare_table[24]|nx_compare_table[25]|nx_compare_table[26]|nx_compare_table[27]
                            |nx_compare_table[28]|nx_compare_table[29]|nx_compare_table[30]|nx_compare_table[31];

    end
    always @(*) begin
        if (compare_table[0]) match_index_tail = 5'd0;
        else if (compare_table[1]) match_index_tail = 5'd1;
        else if (compare_table[2]) match_index_tail = 5'd2;
        else if (compare_table[3]) match_index_tail = 5'd3;
        else if (compare_table[4]) match_index_tail = 5'd4;
        else if (compare_table[5]) match_index_tail = 5'd5;
        else if (compare_table[6]) match_index_tail = 5'd6;
        else if (compare_table[7]) match_index_tail = 5'd7;
        else if (compare_table[8]) match_index_tail = 5'd8;
        else if (compare_table[9]) match_index_tail = 5'd9;
        else if (compare_table[10]) match_index_tail = 5'd10;
        else if (compare_table[11]) match_index_tail = 5'd11;
        else if (compare_table[12]) match_index_tail = 5'd12;
        else if (compare_table[13]) match_index_tail = 5'd13;
        else if (compare_table[14]) match_index_tail = 5'd14;
        else if (compare_table[15]) match_index_tail = 5'd15;
        else if (compare_table[16]) match_index_tail = 5'd16;
        else if (compare_table[17]) match_index_tail = 5'd17;
        else if (compare_table[18]) match_index_tail = 5'd18;
        else if (compare_table[19]) match_index_tail = 5'd19;
        else if (compare_table[20]) match_index_tail = 5'd20;
        else if (compare_table[21]) match_index_tail = 5'd21;
        else if (compare_table[22]) match_index_tail = 5'd22;
        else if (compare_table[23]) match_index_tail = 5'd23;
        else if (compare_table[24]) match_index_tail = 5'd24;
        else if (compare_table[25]) match_index_tail = 5'd25;
        else if (compare_table[26]) match_index_tail = 5'd26;
        else if (compare_table[27]) match_index_tail = 5'd27;
        else if (compare_table[28]) match_index_tail = 5'd28;
        else if (compare_table[29]) match_index_tail = 5'd29;
        else if (compare_table[30]) match_index_tail = 5'd30;
        else match_index_tail = 5'd31;
    end

endmodule
