/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sun Feb 19 19:36:20 2023
/////////////////////////////////////////////////////////////


module STI_DAC_DW01_inc_0 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[8]), .B(A[8]), .Y(SUM[8]) );
endmodule


module STI_DAC ( clk, reset, load, pi_data, pi_length, pi_fill, pi_msb, pi_low, 
        pi_end, so_data, so_valid, oem_finish, oem_dataout, oem_addr, odd1_wr, 
        odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr, even3_wr, even4_wr );
  input [15:0] pi_data;
  input [1:0] pi_length;
  output [7:0] oem_dataout;
  output [4:0] oem_addr;
  input clk, reset, load, pi_fill, pi_msb, pi_low, pi_end;
  output so_data, so_valid, oem_finish, odd1_wr, odd2_wr, odd3_wr, odd4_wr,
         even1_wr, even2_wr, even3_wr, even4_wr;
  wire   N56, N57, N58, N59, N60, n361, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, mem_end_0, N61, N121, N122, N123, N124, N318, N319,
         N320, N321, N322, N323, N324, N325, N326, N443, N444, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n31, n33, n34, n35, n37, n38, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n52, n55, n56, n57, n59, n60, n61, n62, n63,
         n64, n66, n67, n68, n70, n71, n72, n73, n74, n75, n76, n78, n79, n80,
         n82, n83, n84, n86, n87, n88, n90, n92, n93, n94, n95, n96, n97, n99,
         n100, n101, n102, n105, n106, n107, n108, n109, n110, n111, n113,
         n115, n116, n117, n119, n120, n121, n124, n125, n126, n127, n128,
         n130, n131, n132, n133, n134, n139, n140, n141, n142, n144, n145,
         n146, n147, n149, n150, n151, n153, n154, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n167, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n201, n202, n203, n204, n362, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n238, n244, n249, n253, n255,
         n259, n264, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360;
  wire   [3:0] next_state;
  wire   [8:6] mem_end;
  wire   [3:0] state;
  wire   [4:0] next_counter;
  wire   [31:0] so_data_parallel;
  wire   [4:2] \r436/carry ;

  DFFRX1 \mem_end_reg[8]  ( .D(n228), .CK(clk), .RN(n306), .Q(mem_end[8]), 
        .QN(n174) );
  DFFRX1 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n307), .Q(state[1])
         );
  DFFRX1 \mem_end_reg[0]  ( .D(n235), .CK(clk), .RN(n306), .Q(mem_end_0), .QN(
        n173) );
  DFFRX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n306), .Q(state[0])
         );
  DFFRX1 \counter_reg[4]  ( .D(next_counter[4]), .CK(clk), .RN(n307), .Q(N60), 
        .QN(n177) );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n307), .Q(N59), 
        .QN(n176) );
  DFFRX1 \mem_end_reg[7]  ( .D(n236), .CK(clk), .RN(n306), .Q(mem_end[7]), 
        .QN(n202) );
  DFFRX1 \counter_reg[2]  ( .D(next_counter[2]), .CK(clk), .RN(n307), .Q(N58), 
        .QN(n175) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n310), .Q(N56), 
        .QN(n207) );
  DFFRX1 \state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n310), .Q(n179), 
        .QN(n238) );
  DFFRX1 \state_reg[3]  ( .D(next_state[3]), .CK(clk), .RN(n307), .Q(state[3])
         );
  DFFRX1 \mem_end_reg[1]  ( .D(n234), .CK(clk), .RN(n306), .Q(n375), .QN(n264)
         );
  DFFRX1 \mem_end_reg[3]  ( .D(n232), .CK(clk), .RN(n306), .Q(n373), .QN(n259)
         );
  TLATX1 even4_wr_reg ( .G(N443), .D(N444), .QN(n255) );
  DFFRX1 \mem_end_reg[5]  ( .D(n230), .CK(clk), .RN(n306), .Q(n371), .QN(n253)
         );
  DFFRX1 \mem_end_reg[4]  ( .D(n231), .CK(clk), .RN(n306), .Q(n372), .QN(n249)
         );
  DFFRX1 \mem_end_reg[2]  ( .D(n233), .CK(clk), .RN(n306), .Q(n374), .QN(n244)
         );
  DFFRXL last_time_reg ( .D(N61), .CK(clk), .RN(n307), .Q(n356), .QN(n204) );
  DFFRXL low_reg_reg ( .D(n198), .CK(clk), .RN(n307), .QN(n178) );
  DFFRXL msb_reg_reg ( .D(n196), .CK(clk), .RN(n307), .QN(n209) );
  DFFRX1 \mem_end_reg[6]  ( .D(n229), .CK(clk), .RN(n306), .Q(mem_end[6]), 
        .QN(n203) );
  DFFRX2 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n307), .Q(N57), 
        .QN(n300) );
  DFFRX1 \data_reg_reg[13]  ( .D(n194), .CK(clk), .RN(n307), .QN(n212) );
  DFFRX1 \data_reg_reg[12]  ( .D(n193), .CK(clk), .RN(n306), .QN(n213) );
  DFFRX1 \data_reg_reg[11]  ( .D(n192), .CK(clk), .RN(n307), .QN(n214) );
  DFFRX1 \data_reg_reg[10]  ( .D(n191), .CK(clk), .RN(n306), .QN(n215) );
  DFFRX1 \data_reg_reg[14]  ( .D(n195), .CK(clk), .RN(n307), .QN(n211) );
  DFFRX1 \data_reg_reg[8]  ( .D(n189), .CK(clk), .RN(n307), .QN(n217) );
  DFFRX1 \data_reg_reg[9]  ( .D(n190), .CK(clk), .RN(n306), .QN(n216) );
  DFFRX1 \data_reg_reg[15]  ( .D(n180), .CK(clk), .RN(n306), .QN(n210) );
  DFFRX1 fill_reg_reg ( .D(n197), .CK(clk), .RN(n307), .Q(n358), .QN(n208) );
  DFFRX1 \len_reg_reg[0]  ( .D(n201), .CK(clk), .RN(n310), .Q(n342), .QN(n227)
         );
  DFFRX1 \data_reg_reg[6]  ( .D(n187), .CK(clk), .RN(n307), .QN(n219) );
  DFFRX1 \data_reg_reg[5]  ( .D(n186), .CK(clk), .RN(n306), .QN(n220) );
  DFFRX1 \data_reg_reg[4]  ( .D(n185), .CK(clk), .RN(n307), .QN(n221) );
  DFFRX1 \data_reg_reg[0]  ( .D(n181), .CK(clk), .RN(n306), .QN(n225) );
  DFFRX1 \len_reg_reg[1]  ( .D(n199), .CK(clk), .RN(n307), .Q(n357), .QN(n226)
         );
  DFFRX1 \data_reg_reg[3]  ( .D(n184), .CK(clk), .RN(n306), .QN(n222) );
  DFFRX1 \data_reg_reg[2]  ( .D(n183), .CK(clk), .RN(n307), .QN(n223) );
  DFFRX1 \data_reg_reg[1]  ( .D(n182), .CK(clk), .RN(n306), .QN(n224) );
  DFFRX1 \data_reg_reg[7]  ( .D(n188), .CK(clk), .RN(n310), .QN(n218) );
  XNOR2X1 U259 ( .A(n173), .B(n373), .Y(n128) );
  NAND2X2 U260 ( .A(n207), .B(n300), .Y(n31) );
  CLKINVX1 U261 ( .A(n128), .Y(n360) );
  OAI22X1 U262 ( .A0(n210), .A1(n303), .B0(n218), .B1(n88), .Y(n37) );
  OAI22X1 U263 ( .A0(n216), .A1(n303), .B0(n224), .B1(n88), .Y(n49) );
  OAI22X1 U264 ( .A0(n215), .A1(n303), .B0(n223), .B1(n88), .Y(n64) );
  OAI22X1 U265 ( .A0(n223), .A1(n93), .B0(n215), .B1(n94), .Y(n97) );
  OAI22X1 U266 ( .A0(n214), .A1(n303), .B0(n222), .B1(n88), .Y(n76) );
  OAI22X1 U267 ( .A0(n222), .A1(n93), .B0(n214), .B1(n94), .Y(n86) );
  NOR2X1 U268 ( .A(n226), .B(n227), .Y(n119) );
  XNOR2X1 U269 ( .A(n226), .B(n300), .Y(n151) );
  OAI22X1 U270 ( .A0(n213), .A1(n303), .B0(n221), .B1(n88), .Y(n79) );
  OAI22X1 U271 ( .A0(n212), .A1(n303), .B0(n220), .B1(n88), .Y(n67) );
  NAND2X2 U272 ( .A(n301), .B(n300), .Y(n288) );
  BUFX12 U273 ( .A(n367), .Y(oem_dataout[3]) );
  AOI2BB1X1 U274 ( .A0N(n83), .A1N(n84), .B0(n21), .Y(n367) );
  BUFX12 U275 ( .A(n368), .Y(oem_dataout[2]) );
  AOI2BB1X1 U276 ( .A0N(n95), .A1N(n96), .B0(n21), .Y(n368) );
  BUFX12 U277 ( .A(n370), .Y(oem_dataout[0]) );
  AOI2BB1X1 U278 ( .A0N(n108), .A1N(n109), .B0(n21), .Y(n370) );
  BUFX12 U279 ( .A(n376), .Y(odd1_wr) );
  NOR3X1 U280 ( .A(n130), .B(n128), .C(mem_end[6]), .Y(n376) );
  NAND2X1 U281 ( .A(n202), .B(n302), .Y(n130) );
  BUFX12 U282 ( .A(n363), .Y(oem_dataout[7]) );
  AOI2BB1X1 U283 ( .A0N(n19), .A1N(n20), .B0(n21), .Y(n363) );
  INVX12 U284 ( .A(n244), .Y(oem_addr[1]) );
  NAND2X2 U285 ( .A(N57), .B(n301), .Y(n290) );
  BUFX12 U286 ( .A(n378), .Y(odd3_wr) );
  NOR3X1 U287 ( .A(mem_end[6]), .B(n128), .C(n127), .Y(n378) );
  NAND2BX1 U288 ( .AN(n202), .B(n302), .Y(n127) );
  BUFX12 U289 ( .A(n381), .Y(even2_wr) );
  NOR3X1 U290 ( .A(n360), .B(n203), .C(n130), .Y(n381) );
  BUFX12 U291 ( .A(n364), .Y(oem_dataout[6]) );
  AOI2BB1X1 U292 ( .A0N(n44), .A1N(n45), .B0(n21), .Y(n364) );
  INVX12 U293 ( .A(n249), .Y(oem_addr[3]) );
  NAND2X2 U294 ( .A(N57), .B(N56), .Y(n291) );
  BUFX12 U295 ( .A(n377), .Y(odd2_wr) );
  NOR3X1 U296 ( .A(n130), .B(n203), .C(n128), .Y(n377) );
  BUFX12 U297 ( .A(n365), .Y(oem_dataout[5]) );
  AOI2BB1X1 U298 ( .A0N(n59), .A1N(n60), .B0(n21), .Y(n365) );
  INVX12 U299 ( .A(n253), .Y(oem_addr[4]) );
  NAND2X2 U300 ( .A(N56), .B(n300), .Y(n289) );
  INVX12 U301 ( .A(n255), .Y(even4_wr) );
  NAND3BX1 U302 ( .AN(n170), .B(n179), .C(n169), .Y(N443) );
  BUFX12 U303 ( .A(n382), .Y(even3_wr) );
  NOR3X1 U304 ( .A(n360), .B(n127), .C(mem_end[6]), .Y(n382) );
  BUFX12 U305 ( .A(n366), .Y(oem_dataout[4]) );
  AOI2BB1X1 U306 ( .A0N(n71), .A1N(n72), .B0(n21), .Y(n366) );
  INVX12 U307 ( .A(n259), .Y(oem_addr[2]) );
  INVX12 U308 ( .A(n140), .Y(so_valid) );
  BUFX12 U309 ( .A(n380), .Y(even1_wr) );
  NOR3X1 U310 ( .A(n360), .B(mem_end[6]), .C(n130), .Y(n380) );
  NAND4X1 U311 ( .A(state[3]), .B(n238), .C(n353), .D(n355), .Y(n362) );
  INVX12 U312 ( .A(n362), .Y(oem_finish) );
  BUFX12 U313 ( .A(n369), .Y(oem_dataout[1]) );
  AOI2BB1X1 U314 ( .A0N(n101), .A1N(n102), .B0(n21), .Y(n369) );
  INVX12 U315 ( .A(n264), .Y(oem_addr[0]) );
  BUFX12 U316 ( .A(n379), .Y(odd4_wr) );
  OAI31XL U317 ( .A0(n127), .A1(n203), .A2(n128), .B0(N443), .Y(n379) );
  BUFX12 U318 ( .A(n361), .Y(so_data) );
  AOI221XL U319 ( .A0(n48), .A1(n340), .B0(n46), .B1(n343), .C0(n52), .Y(n9)
         );
  AOI221XL U320 ( .A0(n68), .A1(n340), .B0(n97), .B1(n343), .C0(n99), .Y(n14)
         );
  AOI221XL U321 ( .A0(n80), .A1(n340), .B0(n86), .B1(n343), .C0(n90), .Y(n15)
         );
  NAND2X1 U322 ( .A(n126), .B(n359), .Y(n27) );
  AOI221XL U323 ( .A0(n75), .A1(n340), .B0(n73), .B1(n343), .C0(n78), .Y(n16)
         );
  AOI221XL U324 ( .A0(n63), .A1(n340), .B0(n61), .B1(n343), .C0(n66), .Y(n17)
         );
  NAND2X1 U325 ( .A(n124), .B(n359), .Y(n34) );
  CLKINVX1 U326 ( .A(n139), .Y(n350) );
  OAI221XL U327 ( .A0(n332), .A1(n43), .B0(n214), .B1(n42), .C0(n92), .Y(
        so_data_parallel[4]) );
  OAI221XL U328 ( .A0(n327), .A1(n359), .B0(n212), .B1(n42), .C0(n70), .Y(
        so_data_parallel[2]) );
  OAI221XL U329 ( .A0(n327), .A1(n43), .B0(n215), .B1(n42), .C0(n100), .Y(
        so_data_parallel[5]) );
  OAI221XL U330 ( .A0(n332), .A1(n359), .B0(n213), .B1(n42), .C0(n82), .Y(
        so_data_parallel[3]) );
  OAI22XL U331 ( .A0(n341), .A1(n216), .B0(n224), .B1(n303), .Y(n106) );
  OAI22XL U332 ( .A0(n217), .A1(n303), .B0(n225), .B1(n88), .Y(n116) );
  AOI221XL U333 ( .A0(n116), .A1(n340), .B0(n38), .B1(n343), .C0(n117), .Y(n10) );
  AOI221XL U334 ( .A0(n37), .A1(n340), .B0(n40), .B1(n305), .C0(n41), .Y(n18)
         );
  OAI22X1 U335 ( .A0(n225), .A1(n93), .B0(n217), .B1(n94), .Y(n40) );
  OAI22XL U336 ( .A0(n211), .A1(n303), .B0(n219), .B1(n88), .Y(n57) );
  OAI22X1 U337 ( .A0(n221), .A1(n93), .B0(n213), .B1(n94), .Y(n73) );
  OAI22X1 U338 ( .A0(n220), .A1(n93), .B0(n212), .B1(n94), .Y(n61) );
  OAI22X1 U339 ( .A0(n219), .A1(n93), .B0(n211), .B1(n94), .Y(n46) );
  OAI22X1 U340 ( .A0(n341), .A1(n217), .B0(n225), .B1(n303), .Y(n38) );
  OAI22X1 U341 ( .A0(n341), .A1(n211), .B0(n219), .B1(n303), .Y(n48) );
  OAI221XL U342 ( .A0(n55), .A1(n43), .B0(n216), .B1(n42), .C0(n107), .Y(
        so_data_parallel[6]) );
  OAI221XL U343 ( .A0(n55), .A1(n359), .B0(n211), .B1(n42), .C0(n56), .Y(
        so_data_parallel[1]) );
  OAI22X1 U344 ( .A0(n341), .A1(n213), .B0(n221), .B1(n303), .Y(n75) );
  OAI22X1 U345 ( .A0(n341), .A1(n212), .B0(n220), .B1(n303), .Y(n63) );
  CLKBUFX3 U346 ( .A(n209), .Y(n305) );
  NOR3X1 U347 ( .A(n353), .B(state[3]), .C(n355), .Y(n169) );
  NAND3X1 U348 ( .A(state[0]), .B(n355), .C(n164), .Y(n139) );
  CLKINVX1 U349 ( .A(reset), .Y(n310) );
  CLKINVX1 U350 ( .A(n43), .Y(n314) );
  NAND2X1 U351 ( .A(n120), .B(n359), .Y(n43) );
  INVX3 U352 ( .A(n27), .Y(n340) );
  INVX3 U353 ( .A(n304), .Y(n344) );
  CLKINVX1 U354 ( .A(n15), .Y(n333) );
  CLKINVX1 U355 ( .A(n17), .Y(n330) );
  CLKINVX1 U356 ( .A(n14), .Y(n328) );
  CLKINVX1 U357 ( .A(n9), .Y(n325) );
  INVX3 U358 ( .A(n34), .Y(n343) );
  AND2X2 U359 ( .A(n110), .B(n111), .Y(n21) );
  CLKINVX1 U360 ( .A(n302), .Y(n348) );
  CLKINVX1 U361 ( .A(n111), .Y(n347) );
  CLKBUFX3 U362 ( .A(n350), .Y(n309) );
  CLKBUFX3 U363 ( .A(n350), .Y(n308) );
  CLKINVX1 U364 ( .A(n18), .Y(n319) );
  CLKINVX1 U365 ( .A(n11), .Y(n329) );
  CLKINVX1 U366 ( .A(n12), .Y(n334) );
  CLKINVX1 U367 ( .A(n16), .Y(n335) );
  AOI222X1 U368 ( .A0(n79), .A1(n305), .B0(n80), .B1(n344), .C0(n86), .C1(n340), .Y(n12) );
  AOI222X1 U369 ( .A0(n67), .A1(n305), .B0(n68), .B1(n344), .C0(n97), .C1(n340), .Y(n11) );
  AOI221XL U370 ( .A0(n40), .A1(n343), .B0(n38), .B1(n340), .C0(n115), .Y(n13)
         );
  OAI22XL U371 ( .A0(n28), .A1(n359), .B0(n304), .B1(n337), .Y(n115) );
  AO22X1 U372 ( .A0(n344), .A1(n64), .B0(n63), .B1(n305), .Y(n99) );
  AO22X1 U373 ( .A0(n344), .A1(n76), .B0(n75), .B1(n305), .Y(n90) );
  AO22X1 U374 ( .A0(n344), .A1(n79), .B0(n80), .B1(n305), .Y(n78) );
  AO22X1 U375 ( .A0(n344), .A1(n67), .B0(n68), .B1(n305), .Y(n66) );
  OAI22XL U376 ( .A0(n304), .A1(n339), .B0(n338), .B1(n359), .Y(n52) );
  OAI222XL U377 ( .A0(n25), .A1(n27), .B0(n28), .B1(n304), .C0(n337), .C1(n359), .Y(so_data_parallel[16]) );
  OAI222XL U378 ( .A0(n339), .A1(n359), .B0(n338), .B1(n304), .C0(n55), .C1(
        n27), .Y(so_data_parallel[22]) );
  OAI221XL U379 ( .A0(n338), .A1(n27), .B0(n55), .B1(n34), .C0(n105), .Y(
        so_data_parallel[14]) );
  AOI22X1 U380 ( .A0(n344), .A1(n49), .B0(n48), .B1(n305), .Y(n105) );
  OAI221XL U381 ( .A0(n28), .A1(n27), .B0(n25), .B1(n34), .C0(n35), .Y(
        so_data_parallel[8]) );
  AOI22X1 U382 ( .A0(n344), .A1(n37), .B0(n38), .B1(n305), .Y(n35) );
  NAND2X2 U383 ( .A(n344), .B(n358), .Y(n42) );
  INVX3 U384 ( .A(n121), .Y(n341) );
  NAND2X2 U385 ( .A(n119), .B(n358), .Y(n88) );
  NOR2X1 U386 ( .A(n357), .B(n342), .Y(n120) );
  CLKINVX1 U387 ( .A(n97), .Y(n327) );
  CLKINVX1 U388 ( .A(n86), .Y(n332) );
  CLKINVX1 U389 ( .A(n40), .Y(n320) );
  CLKINVX1 U390 ( .A(n106), .Y(n338) );
  CLKINVX1 U391 ( .A(n57), .Y(n339) );
  CLKINVX1 U392 ( .A(n116), .Y(n337) );
  CLKINVX1 U393 ( .A(n62), .Y(n331) );
  AOI222XL U394 ( .A0(n61), .A1(n340), .B0(n63), .B1(n344), .C0(n64), .C1(n305), .Y(n62) );
  CLKINVX1 U395 ( .A(n113), .Y(n322) );
  AOI222XL U396 ( .A0(n37), .A1(n305), .B0(n38), .B1(n344), .C0(n40), .C1(n340), .Y(n113) );
  CLKINVX1 U397 ( .A(n47), .Y(n326) );
  AOI222XL U398 ( .A0(n46), .A1(n340), .B0(n48), .B1(n344), .C0(n49), .C1(n305), .Y(n47) );
  CLKINVX1 U399 ( .A(n74), .Y(n336) );
  AOI222XL U400 ( .A0(n73), .A1(n340), .B0(n75), .B1(n344), .C0(n76), .C1(n305), .Y(n74) );
  CLKINVX1 U401 ( .A(n10), .Y(n315) );
  CLKBUFX3 U402 ( .A(n26), .Y(n304) );
  NAND2X1 U403 ( .A(n119), .B(n359), .Y(n26) );
  INVX3 U404 ( .A(n305), .Y(n359) );
  CLKBUFX3 U405 ( .A(n87), .Y(n303) );
  NAND2X1 U406 ( .A(n126), .B(n358), .Y(n87) );
  NAND2BX2 U407 ( .AN(n88), .B(n305), .Y(n24) );
  CLKBUFX3 U408 ( .A(n167), .Y(n302) );
  NAND2X1 U409 ( .A(n110), .B(n141), .Y(n167) );
  NAND2X1 U410 ( .A(n169), .B(n238), .Y(n110) );
  NAND3BX1 U411 ( .AN(next_state[0]), .B(next_state[2]), .C(n345), .Y(n131) );
  CLKINVX1 U412 ( .A(next_state[1]), .Y(n345) );
  OAI21X1 U413 ( .A0(n133), .A1(n134), .B0(n111), .Y(n132) );
  OAI22XL U414 ( .A0(next_state[2]), .A1(n238), .B0(next_state[1]), .B1(n355), 
        .Y(n134) );
  XNOR2X1 U415 ( .A(next_state[0]), .B(n353), .Y(n133) );
  AO22X1 U416 ( .A0(n322), .A1(n22), .B0(so_data_parallel[31]), .B1(n23), .Y(
        n109) );
  OAI22XL U417 ( .A0(n10), .A1(n31), .B0(n13), .B1(n33), .Y(n108) );
  AO22X1 U418 ( .A0(so_data_parallel[30]), .A1(n23), .B0(so_data_parallel[22]), 
        .B1(n22), .Y(n102) );
  OAI22XL U419 ( .A0(n316), .A1(n31), .B0(n324), .B1(n33), .Y(n101) );
  CLKINVX1 U420 ( .A(so_data_parallel[14]), .Y(n324) );
  OAI2BB2XL U421 ( .B0(n11), .B1(n351), .A0N(so_data_parallel[29]), .A1N(n23), 
        .Y(n96) );
  OAI22XL U422 ( .A0(n317), .A1(n31), .B0(n14), .B1(n33), .Y(n95) );
  CLKINVX1 U423 ( .A(so_data_parallel[5]), .Y(n317) );
  OAI2BB2XL U424 ( .B0(n12), .B1(n351), .A0N(so_data_parallel[28]), .A1N(n23), 
        .Y(n84) );
  OAI22XL U425 ( .A0(n318), .A1(n31), .B0(n15), .B1(n33), .Y(n83) );
  CLKINVX1 U426 ( .A(so_data_parallel[4]), .Y(n318) );
  AO22X1 U427 ( .A0(n336), .A1(n22), .B0(so_data_parallel[27]), .B1(n23), .Y(
        n72) );
  OAI22XL U428 ( .A0(n313), .A1(n31), .B0(n16), .B1(n33), .Y(n71) );
  CLKINVX1 U429 ( .A(so_data_parallel[3]), .Y(n313) );
  AO22X1 U430 ( .A0(n331), .A1(n22), .B0(so_data_parallel[26]), .B1(n23), .Y(
        n60) );
  OAI22XL U431 ( .A0(n312), .A1(n31), .B0(n17), .B1(n33), .Y(n59) );
  CLKINVX1 U432 ( .A(so_data_parallel[2]), .Y(n312) );
  AO22X1 U433 ( .A0(n326), .A1(n22), .B0(so_data_parallel[25]), .B1(n23), .Y(
        n45) );
  OAI22XL U434 ( .A0(n311), .A1(n31), .B0(n9), .B1(n33), .Y(n44) );
  CLKINVX1 U435 ( .A(so_data_parallel[1]), .Y(n311) );
  AO22X1 U436 ( .A0(so_data_parallel[16]), .A1(n22), .B0(so_data_parallel[24]), 
        .B1(n23), .Y(n20) );
  OAI22XL U437 ( .A0(n18), .A1(n31), .B0(n323), .B1(n33), .Y(n19) );
  CLKINVX1 U438 ( .A(so_data_parallel[8]), .Y(n323) );
  CLKINVX1 U439 ( .A(so_data_parallel[6]), .Y(n316) );
  NAND3X1 U440 ( .A(n353), .B(n355), .C(n163), .Y(n111) );
  NAND3X1 U441 ( .A(n348), .B(n153), .C(n154), .Y(next_state[2]) );
  AOI32X1 U442 ( .A0(n150), .A1(n151), .A2(n347), .B0(n346), .B1(n356), .Y(
        n154) );
  CLKINVX1 U443 ( .A(n149), .Y(n346) );
  CLKINVX1 U444 ( .A(n22), .Y(n351) );
  NAND2BXL U445 ( .AN(oem_finish), .B(N443), .Y(next_state[3]) );
  AOI2BB1X1 U446 ( .A0N(n165), .A1N(n149), .B0(n145), .Y(n153) );
  NOR2X1 U447 ( .A(n147), .B(n354), .Y(n165) );
  CLKBUFX3 U448 ( .A(n310), .Y(n306) );
  CLKBUFX3 U449 ( .A(n310), .Y(n307) );
  AOI21X2 U450 ( .A0(n120), .A1(n178), .B0(n121), .Y(n93) );
  CLKINVX1 U451 ( .A(n13), .Y(n321) );
  OAI222XL U452 ( .A0(n43), .A1(n320), .B0(n359), .B1(n25), .C0(n42), .C1(n217), .Y(n117) );
  OAI222XL U453 ( .A0(n42), .A1(n210), .B0(n34), .B1(n28), .C0(n43), .C1(n25), 
        .Y(n41) );
  NAND2BX2 U454 ( .AN(n178), .B(n120), .Y(n94) );
  AOI222XL U455 ( .A0(n343), .A1(n106), .B0(n305), .B1(n46), .C0(n340), .C1(
        n49), .Y(n107) );
  AOI222XL U456 ( .A0(n340), .A1(n67), .B0(n343), .B1(n63), .C0(n314), .C1(n61), .Y(n70) );
  AOI222XL U457 ( .A0(n340), .A1(n79), .B0(n343), .B1(n75), .C0(n314), .C1(n73), .Y(n82) );
  AOI222XL U458 ( .A0(n340), .A1(n57), .B0(n343), .B1(n48), .C0(n314), .C1(n46), .Y(n56) );
  OAI22X1 U459 ( .A0(n341), .A1(n215), .B0(n223), .B1(n303), .Y(n68) );
  OAI22X1 U460 ( .A0(n341), .A1(n214), .B0(n222), .B1(n303), .Y(n80) );
  AOI222XL U461 ( .A0(n343), .A1(n68), .B0(n305), .B1(n61), .C0(n340), .C1(n64), .Y(n100) );
  AOI222XL U462 ( .A0(n343), .A1(n80), .B0(n305), .B1(n73), .C0(n340), .C1(n76), .Y(n92) );
  OA22X1 U463 ( .A0(n218), .A1(n93), .B0(n210), .B1(n94), .Y(n25) );
  OA22X1 U464 ( .A0(n224), .A1(n93), .B0(n216), .B1(n94), .Y(n55) );
  OAI22XL U465 ( .A0(n320), .A1(n304), .B0(n210), .B1(n24), .Y(
        so_data_parallel[31]) );
  NOR2X1 U466 ( .A(n342), .B(n226), .Y(n126) );
  OAI22XL U467 ( .A0(n211), .A1(n24), .B0(n55), .B1(n304), .Y(
        so_data_parallel[30]) );
  OAI22XL U468 ( .A0(n217), .A1(n24), .B0(n25), .B1(n304), .Y(
        so_data_parallel[24]) );
  OAI22XL U469 ( .A0(n213), .A1(n24), .B0(n332), .B1(n304), .Y(
        so_data_parallel[28]) );
  OAI22XL U470 ( .A0(n212), .A1(n24), .B0(n327), .B1(n304), .Y(
        so_data_parallel[29]) );
  OA22X1 U471 ( .A0(n341), .A1(n210), .B0(n218), .B1(n303), .Y(n28) );
  OAI2BB2XL U472 ( .B0(n215), .B1(n24), .A0N(n61), .A1N(n344), .Y(
        so_data_parallel[26]) );
  OAI2BB2XL U473 ( .B0(n216), .B1(n24), .A0N(n46), .A1N(n344), .Y(
        so_data_parallel[25]) );
  OAI2BB2XL U474 ( .B0(n214), .B1(n24), .A0N(n73), .A1N(n344), .Y(
        so_data_parallel[27]) );
  NAND2BX1 U475 ( .AN(n124), .B(n125), .Y(n121) );
  OAI21XL U476 ( .A0(n126), .A1(n119), .B0(n208), .Y(n125) );
  NOR2X1 U477 ( .A(n357), .B(n227), .Y(n124) );
  CLKINVX1 U478 ( .A(N56), .Y(n301) );
  NAND4XL U479 ( .A(n375), .B(n174), .C(n171), .D(n172), .Y(n170) );
  NOR3X1 U480 ( .A(n203), .B(n173), .C(n202), .Y(n171) );
  AND4XL U481 ( .A(n374), .B(n373), .C(n372), .D(n371), .Y(n172) );
  NAND3X1 U482 ( .A(n169), .B(n170), .C(n179), .Y(n141) );
  INVX3 U483 ( .A(state[1]), .Y(n355) );
  INVX3 U484 ( .A(state[0]), .Y(n353) );
  OAI211X1 U485 ( .A0(n149), .A1(n356), .B0(n153), .C0(n157), .Y(next_state[0]) );
  NOR3X1 U486 ( .A(n158), .B(n347), .C(n159), .Y(n157) );
  NOR4BX1 U487 ( .AN(n23), .B(n160), .C(n140), .D(n175), .Y(n159) );
  AND4X1 U488 ( .A(load), .B(n164), .C(n353), .D(n355), .Y(n158) );
  OAI2BB2XL U489 ( .B0(n177), .B1(n131), .A0N(N124), .A1N(n132), .Y(
        next_counter[4]) );
  OAI2BB2XL U490 ( .B0(n176), .B1(n131), .A0N(N123), .A1N(n132), .Y(
        next_counter[3]) );
  OAI2BB2XL U491 ( .B0(n175), .B1(n131), .A0N(N122), .A1N(n132), .Y(
        next_counter[2]) );
  OAI2BB2XL U492 ( .B0(n300), .B1(n131), .A0N(N121), .A1N(n132), .Y(
        next_counter[1]) );
  OAI2BB2XL U493 ( .B0(n207), .B1(n131), .A0N(n301), .A1N(n132), .Y(
        next_counter[0]) );
  OAI2BB2XL U494 ( .B0(n215), .B1(n309), .A0N(pi_data[10]), .A1N(n308), .Y(
        n191) );
  OAI2BB2XL U495 ( .B0(n214), .B1(n308), .A0N(pi_data[11]), .A1N(n309), .Y(
        n192) );
  OAI2BB2XL U496 ( .B0(n217), .B1(n309), .A0N(pi_data[8]), .A1N(n308), .Y(n189) );
  OAI2BB2XL U497 ( .B0(n213), .B1(n309), .A0N(pi_data[12]), .A1N(n309), .Y(
        n193) );
  OAI2BB2XL U498 ( .B0(n212), .B1(n309), .A0N(pi_data[13]), .A1N(n309), .Y(
        n194) );
  OAI2BB2XL U499 ( .B0(n211), .B1(n308), .A0N(pi_data[14]), .A1N(n309), .Y(
        n195) );
  OAI2BB2XL U500 ( .B0(n216), .B1(n309), .A0N(pi_data[9]), .A1N(n308), .Y(n190) );
  OAI2BB2XL U501 ( .B0(n210), .B1(n308), .A0N(pi_data[15]), .A1N(n309), .Y(
        n180) );
  OAI2BB2XL U502 ( .B0(n225), .B1(n308), .A0N(pi_data[0]), .A1N(n309), .Y(n181) );
  OAI2BB2XL U503 ( .B0(n223), .B1(n308), .A0N(pi_data[2]), .A1N(n308), .Y(n183) );
  OAI2BB2XL U504 ( .B0(n222), .B1(n308), .A0N(pi_data[3]), .A1N(n308), .Y(n184) );
  OAI2BB2XL U505 ( .B0(n221), .B1(n308), .A0N(pi_data[4]), .A1N(n308), .Y(n185) );
  OAI2BB2XL U506 ( .B0(n220), .B1(n308), .A0N(pi_data[5]), .A1N(n309), .Y(n186) );
  OAI2BB2XL U507 ( .B0(n219), .B1(n308), .A0N(pi_data[6]), .A1N(n308), .Y(n187) );
  OAI2BB2XL U508 ( .B0(n224), .B1(n308), .A0N(pi_data[1]), .A1N(n309), .Y(n182) );
  OAI2BB2XL U509 ( .B0(n218), .B1(n308), .A0N(pi_data[7]), .A1N(n308), .Y(n188) );
  OAI2BB2XL U510 ( .B0(n178), .B1(n308), .A0N(pi_low), .A1N(n309), .Y(n198) );
  AO21XL U511 ( .A0(pi_end), .A1(so_valid), .B0(n356), .Y(N61) );
  AO22X1 U512 ( .A0(n359), .A1(n139), .B0(pi_msb), .B1(n309), .Y(n196) );
  AO22X1 U513 ( .A0(n358), .A1(n139), .B0(pi_fill), .B1(n309), .Y(n197) );
  AO22X1 U514 ( .A0(n357), .A1(n139), .B0(pi_length[1]), .B1(n309), .Y(n199)
         );
  AO22X1 U515 ( .A0(n342), .A1(n139), .B0(pi_length[0]), .B1(n309), .Y(n201)
         );
  NAND2X2 U516 ( .A(n300), .B(n352), .Y(n33) );
  NOR2X2 U517 ( .A(n352), .B(n300), .Y(n22) );
  NOR2X2 U518 ( .A(n300), .B(n207), .Y(n23) );
  NOR2X1 U519 ( .A(n238), .B(state[3]), .Y(n163) );
  NAND4X1 U520 ( .A(n139), .B(n140), .C(n141), .D(n142), .Y(next_state[1]) );
  AOI211X1 U521 ( .A0(n347), .A1(n144), .B0(n145), .C0(n146), .Y(n142) );
  NAND2X1 U522 ( .A(n150), .B(n151), .Y(n144) );
  NOR4X1 U523 ( .A(n204), .B(n147), .C(n354), .D(n149), .Y(n146) );
  CLKINVX1 U524 ( .A(n207), .Y(n352) );
  OAI2BB2XL U525 ( .B0(n174), .B1(n302), .A0N(N326), .A1N(n302), .Y(n228) );
  OAI2BB2XL U526 ( .B0(n203), .B1(n302), .A0N(N324), .A1N(n302), .Y(n229) );
  AO22XL U527 ( .A0(n373), .A1(n348), .B0(N321), .B1(n302), .Y(n232) );
  AO22XL U528 ( .A0(n375), .A1(n348), .B0(N319), .B1(n302), .Y(n234) );
  AO22XL U529 ( .A0(n371), .A1(n348), .B0(N323), .B1(n302), .Y(n230) );
  AO22XL U530 ( .A0(n372), .A1(n348), .B0(N322), .B1(n302), .Y(n231) );
  AO22XL U531 ( .A0(n374), .A1(n348), .B0(N320), .B1(n302), .Y(n233) );
  OAI2BB2XL U532 ( .B0(n202), .B1(n302), .A0N(N325), .A1N(n302), .Y(n236) );
  OAI2BB2XL U533 ( .B0(n173), .B1(n302), .A0N(N318), .A1N(n302), .Y(n235) );
  XNOR2X1 U534 ( .A(n227), .B(n207), .Y(n150) );
  NOR2X1 U535 ( .A(n179), .B(state[3]), .Y(n164) );
  NAND3X1 U536 ( .A(state[0]), .B(n355), .C(n163), .Y(n149) );
  NAND3X1 U537 ( .A(n177), .B(n22), .C(n176), .Y(n147) );
  NAND3X1 U538 ( .A(state[1]), .B(n353), .C(n164), .Y(n140) );
  CLKINVX1 U539 ( .A(n175), .Y(n354) );
  NAND2X1 U540 ( .A(n161), .B(n162), .Y(n160) );
  XNOR2X1 U541 ( .A(n177), .B(n226), .Y(n162) );
  XNOR2X1 U542 ( .A(n176), .B(n227), .Y(n161) );
  AND3X2 U543 ( .A(n163), .B(state[1]), .C(n353), .Y(n145) );
  ADDHXL U544 ( .A(N58), .B(\r436/carry [2]), .CO(\r436/carry [3]), .S(N122)
         );
  ADDHXL U545 ( .A(N57), .B(N56), .CO(\r436/carry [2]), .S(N121) );
  ADDHXL U546 ( .A(N59), .B(\r436/carry [3]), .CO(\r436/carry [4]), .S(N123)
         );
  NOR3X1 U547 ( .A(n360), .B(n203), .C(n127), .Y(N444) );
  OAI22XL U548 ( .A0(n328), .A1(n289), .B0(n333), .B1(n288), .Y(n269) );
  OAI22XL U549 ( .A0(n321), .A1(n291), .B0(so_data_parallel[14]), .B1(n290), 
        .Y(n268) );
  OAI21XL U550 ( .A0(n269), .A1(n268), .B0(N58), .Y(n273) );
  OAI22XL U551 ( .A0(n325), .A1(n289), .B0(so_data_parallel[8]), .B1(n288), 
        .Y(n271) );
  OAI22XL U552 ( .A0(n335), .A1(n291), .B0(n330), .B1(n290), .Y(n270) );
  OAI21XL U553 ( .A0(n271), .A1(n270), .B0(n175), .Y(n272) );
  AOI21X1 U554 ( .A0(n273), .A1(n272), .B0(n176), .Y(n299) );
  OAI22XL U555 ( .A0(so_data_parallel[5]), .A1(n289), .B0(so_data_parallel[4]), 
        .B1(n288), .Y(n275) );
  OAI22XL U556 ( .A0(n315), .A1(n291), .B0(so_data_parallel[6]), .B1(n290), 
        .Y(n274) );
  OAI21XL U557 ( .A0(n275), .A1(n274), .B0(N58), .Y(n279) );
  OAI22XL U558 ( .A0(so_data_parallel[1]), .A1(n289), .B0(n319), .B1(n288), 
        .Y(n277) );
  OAI22XL U559 ( .A0(so_data_parallel[3]), .A1(n291), .B0(so_data_parallel[2]), 
        .B1(n290), .Y(n276) );
  OAI21XL U560 ( .A0(n277), .A1(n276), .B0(n175), .Y(n278) );
  AOI21X1 U561 ( .A0(n279), .A1(n278), .B0(N59), .Y(n298) );
  OAI22XL U562 ( .A0(n329), .A1(n289), .B0(n334), .B1(n288), .Y(n281) );
  OAI22XL U563 ( .A0(n322), .A1(n291), .B0(so_data_parallel[22]), .B1(n290), 
        .Y(n280) );
  OAI21XL U564 ( .A0(n281), .A1(n280), .B0(N58), .Y(n285) );
  OAI22XL U565 ( .A0(n326), .A1(n289), .B0(so_data_parallel[16]), .B1(n288), 
        .Y(n283) );
  OAI22XL U566 ( .A0(n336), .A1(n291), .B0(n331), .B1(n290), .Y(n282) );
  OAI21XL U567 ( .A0(n283), .A1(n282), .B0(n175), .Y(n284) );
  AOI21X1 U568 ( .A0(n285), .A1(n284), .B0(N59), .Y(n297) );
  OAI22XL U569 ( .A0(so_data_parallel[29]), .A1(n289), .B0(
        so_data_parallel[28]), .B1(n288), .Y(n287) );
  OAI22XL U570 ( .A0(so_data_parallel[31]), .A1(n291), .B0(
        so_data_parallel[30]), .B1(n290), .Y(n286) );
  OAI21XL U571 ( .A0(n287), .A1(n286), .B0(N58), .Y(n295) );
  OAI22XL U572 ( .A0(so_data_parallel[25]), .A1(n289), .B0(
        so_data_parallel[24]), .B1(n288), .Y(n293) );
  OAI22XL U573 ( .A0(so_data_parallel[27]), .A1(n291), .B0(
        so_data_parallel[26]), .B1(n290), .Y(n292) );
  OAI21XL U574 ( .A0(n293), .A1(n292), .B0(n175), .Y(n294) );
  AOI21X1 U575 ( .A0(n295), .A1(n294), .B0(n176), .Y(n296) );
  OAI33X1 U576 ( .A0(n299), .A1(N60), .A2(n298), .B0(n177), .B1(n297), .B2(
        n296), .Y(n361) );
  XOR2X1 U577 ( .A(\r436/carry [4]), .B(N60), .Y(N124) );
  STI_DAC_DW01_inc_0 r437 ( .A({mem_end, n371, n372, n373, n374, n375, 
        mem_end_0}), .SUM({N326, N325, N324, N323, N322, N321, N320, N319, 
        N318}) );
endmodule

