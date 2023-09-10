/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Tue May  2 13:26:00 2023
/////////////////////////////////////////////////////////////


module divider_4stage_20_5_to_16bit_0_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [20:0] carry;

  ADDFXL U2_15 ( .A(A[15]), .B(n20), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n17), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n19), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n4), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n5), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n6), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n7), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n8), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n10), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n11), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n12), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n13), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n14), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n15), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_16 ( .A(A[16]), .B(n18), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  OR2XL U1 ( .A(A[17]), .B(carry[17]), .Y(carry[18]) );
  INVXL U2 ( .A(B[10]), .Y(n6) );
  INVXL U3 ( .A(B[8]), .Y(n8) );
  NAND2BX1 U4 ( .AN(n16), .B(n3), .Y(carry[1]) );
  XNOR2XL U5 ( .A(A[18]), .B(carry[18]), .Y(DIFF[18]) );
  XNOR2XL U6 ( .A(n16), .B(A[0]), .Y(DIFF[0]) );
  XNOR2XL U7 ( .A(A[17]), .B(carry[17]), .Y(DIFF[17]) );
  CLKINVX1 U8 ( .A(A[0]), .Y(n3) );
  CLKINVX1 U9 ( .A(carry[18]), .Y(n2) );
  CLKINVX1 U10 ( .A(A[18]), .Y(n1) );
  CLKINVX1 U11 ( .A(B[16]), .Y(n18) );
  CLKINVX1 U12 ( .A(B[1]), .Y(n15) );
  CLKINVX1 U13 ( .A(B[2]), .Y(n14) );
  CLKINVX1 U14 ( .A(B[3]), .Y(n13) );
  CLKINVX1 U15 ( .A(B[4]), .Y(n12) );
  CLKINVX1 U16 ( .A(B[5]), .Y(n11) );
  CLKINVX1 U17 ( .A(B[6]), .Y(n10) );
  CLKINVX1 U18 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U19 ( .A(B[9]), .Y(n7) );
  CLKINVX1 U20 ( .A(B[11]), .Y(n5) );
  CLKINVX1 U21 ( .A(B[12]), .Y(n4) );
  CLKINVX1 U22 ( .A(B[13]), .Y(n19) );
  CLKINVX1 U23 ( .A(B[14]), .Y(n17) );
  CLKINVX1 U24 ( .A(B[15]), .Y(n20) );
  CLKINVX1 U25 ( .A(B[0]), .Y(n16) );
  XNOR2X1 U26 ( .A(A[19]), .B(carry[19]), .Y(DIFF[19]) );
  NAND2X1 U27 ( .A(n1), .B(n2), .Y(carry[19]) );
endmodule


module divider_4stage_20_5_to_16bit_0_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  wire   [20:0] carry;

  ADDFXL U2_15 ( .A(A[15]), .B(n18), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n21), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n20), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n4), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n5), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n6), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n7), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n8), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n9), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n10), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n11), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n12), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n13), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n15), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n16), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_17 ( .A(A[17]), .B(n19), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  INVXL U1 ( .A(A[18]), .Y(n1) );
  XNOR2XL U2 ( .A(A[18]), .B(carry[18]), .Y(DIFF[18]) );
  INVXL U3 ( .A(B[11]), .Y(n6) );
  INVXL U4 ( .A(B[9]), .Y(n8) );
  XNOR2X1 U5 ( .A(A[19]), .B(carry[19]), .Y(DIFF[19]) );
  NAND2X1 U6 ( .A(n1), .B(n2), .Y(carry[19]) );
  CLKINVX1 U7 ( .A(A[0]), .Y(n3) );
  XNOR2X1 U8 ( .A(n17), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U9 ( .A(carry[18]), .Y(n2) );
  CLKINVX1 U10 ( .A(B[17]), .Y(n19) );
  CLKINVX1 U11 ( .A(B[1]), .Y(n16) );
  NAND2X1 U12 ( .A(B[0]), .B(n3), .Y(carry[1]) );
  CLKINVX1 U13 ( .A(B[2]), .Y(n15) );
  CLKINVX1 U14 ( .A(B[3]), .Y(n14) );
  CLKINVX1 U15 ( .A(B[4]), .Y(n13) );
  CLKINVX1 U16 ( .A(B[5]), .Y(n12) );
  CLKINVX1 U17 ( .A(B[6]), .Y(n11) );
  CLKINVX1 U18 ( .A(B[7]), .Y(n10) );
  CLKINVX1 U19 ( .A(B[8]), .Y(n9) );
  CLKINVX1 U20 ( .A(B[10]), .Y(n7) );
  CLKINVX1 U21 ( .A(B[12]), .Y(n5) );
  CLKINVX1 U22 ( .A(B[13]), .Y(n4) );
  CLKINVX1 U23 ( .A(B[14]), .Y(n20) );
  CLKINVX1 U24 ( .A(B[16]), .Y(n21) );
  CLKINVX1 U25 ( .A(B[15]), .Y(n18) );
  CLKINVX1 U26 ( .A(B[0]), .Y(n17) );
endmodule


module divider_4stage_20_5_to_16bit_0_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [20:0] carry;

  ADDFXL U2_16 ( .A(A[16]), .B(n17), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n18), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n2), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n3), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n4), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n5), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n6), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n7), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n8), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n10), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n11), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n12), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n13), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n14), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n15), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_17 ( .A(A[17]), .B(n20), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n19), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  XNOR2XL U1 ( .A(n16), .B(A[0]), .Y(DIFF[0]) );
  INVXL U2 ( .A(B[12]), .Y(n4) );
  INVXL U3 ( .A(B[10]), .Y(n6) );
  NAND2BX1 U4 ( .AN(n16), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U6 ( .A(A[19]), .B(carry[19]), .Y(DIFF[19]) );
  CLKINVX1 U7 ( .A(B[1]), .Y(n15) );
  CLKINVX1 U8 ( .A(B[2]), .Y(n14) );
  CLKINVX1 U9 ( .A(B[3]), .Y(n13) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n12) );
  CLKINVX1 U11 ( .A(B[5]), .Y(n11) );
  CLKINVX1 U12 ( .A(B[6]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U14 ( .A(B[8]), .Y(n8) );
  CLKINVX1 U15 ( .A(B[9]), .Y(n7) );
  CLKINVX1 U16 ( .A(B[11]), .Y(n5) );
  CLKINVX1 U17 ( .A(B[13]), .Y(n3) );
  CLKINVX1 U18 ( .A(B[14]), .Y(n2) );
  CLKINVX1 U19 ( .A(B[15]), .Y(n19) );
  CLKINVX1 U20 ( .A(B[18]), .Y(n18) );
  CLKINVX1 U21 ( .A(B[16]), .Y(n17) );
  CLKINVX1 U22 ( .A(B[17]), .Y(n20) );
  CLKINVX1 U23 ( .A(B[0]), .Y(n16) );
endmodule


module divider_4stage_20_5_to_16bit_0_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [20:0] carry;

  ADDFXL U2_18 ( .A(A[18]), .B(n20), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n18), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n2), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n3), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n4), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n5), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n6), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n7), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n8), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n9), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n10), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n11), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n12), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n13), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n15), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n16), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_16 ( .A(A[16]), .B(n19), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  INVXL U1 ( .A(B[13]), .Y(n4) );
  INVXL U2 ( .A(B[11]), .Y(n6) );
  NAND2BX1 U3 ( .AN(n17), .B(n1), .Y(carry[1]) );
  XNOR3X1 U4 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(DIFF[19]) );
  XNOR2X1 U5 ( .A(n17), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U6 ( .A(B[1]), .Y(n16) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n15) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n14) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n13) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n12) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n11) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n9) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n8) );
  CLKINVX1 U15 ( .A(B[10]), .Y(n7) );
  CLKINVX1 U16 ( .A(B[12]), .Y(n5) );
  CLKINVX1 U17 ( .A(B[14]), .Y(n3) );
  CLKINVX1 U18 ( .A(B[15]), .Y(n2) );
  CLKINVX1 U19 ( .A(B[16]), .Y(n19) );
  CLKINVX1 U20 ( .A(B[17]), .Y(n18) );
  CLKINVX1 U21 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U22 ( .A(B[18]), .Y(n20) );
  CLKINVX1 U23 ( .A(B[0]), .Y(n17) );
endmodule


module divider_4stage_20_5_to_16bit_0 ( clk, load, dividand, dividor, q );
  input [19:0] dividand;
  input [4:0] dividor;
  output [15:0] q;
  input clk, load;
  wire   N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23,
         N24, N25, N26, N27, N28, N29, q_stage_1, N32, N33, N34, N35, N36, N37,
         N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51,
         q_stage_2, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65,
         N66, N67, N68, N69, N70, N71, N72, N73, q_stage_3, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97,
         N98, N99, N166, n44, n45, n46, n47, n49, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         \r335/B[16] , \r335/B[1] , n2, n3, n5, n6, n8, n9, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n48, n50, n51, n52, n74, n75, n76, n77, n78, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298;
  wire   [19:0] dand0;
  wire   [19:0] dand4;
  wire   [19:0] dior0;
  wire   [19:0] dior4;
  wire   [19:0] dand1;
  wire   [19:0] dand2;
  wire   [19:0] dand3;
  wire   [2:0] cnt;

  DFFQX1 \cnt_reg[1]  ( .D(n101), .CK(clk), .Q(cnt[1]) );
  DFFQX1 \cnt_reg[0]  ( .D(n103), .CK(clk), .Q(cnt[0]) );
  DFFX1 \cnt_reg[2]  ( .D(n102), .CK(clk), .QN(n49) );
  DFFQX1 \dand4_reg[19]  ( .D(n81), .CK(clk), .Q(dand4[19]) );
  DFFQX1 \dand4_reg[18]  ( .D(n82), .CK(clk), .Q(dand4[18]) );
  DFFQX1 \dand4_reg[17]  ( .D(n83), .CK(clk), .Q(dand4[17]) );
  DFFQX1 \dand4_reg[16]  ( .D(n84), .CK(clk), .Q(dand4[16]) );
  DFFQX1 \dand4_reg[5]  ( .D(n95), .CK(clk), .Q(dand4[5]) );
  DFFQX1 \dand4_reg[4]  ( .D(n96), .CK(clk), .Q(dand4[4]) );
  EDFFTRX1 \dior4_reg[5]  ( .RN(n34), .D(dior4[9]), .E(n32), .CK(clk), .Q(
        dior4[5]) );
  EDFFTRX1 \dior4_reg[4]  ( .RN(n34), .D(dior4[8]), .E(n32), .CK(clk), .Q(
        dior4[4]) );
  EDFFX1 \dior4_reg[15]  ( .D(\r335/B[16] ), .E(N166), .CK(clk), .Q(dior4[15])
         );
  DFFQX1 \dand4_reg[1]  ( .D(n100), .CK(clk), .Q(dand4[1]) );
  DFFQX1 \dand4_reg[10]  ( .D(n90), .CK(clk), .Q(dand4[10]) );
  DFFQX1 \dand4_reg[9]  ( .D(n91), .CK(clk), .Q(dand4[9]) );
  DFFQX1 \dand4_reg[8]  ( .D(n92), .CK(clk), .Q(dand4[8]) );
  DFFQX1 \dand4_reg[7]  ( .D(n93), .CK(clk), .Q(dand4[7]) );
  DFFQX1 \dand4_reg[6]  ( .D(n94), .CK(clk), .Q(dand4[6]) );
  DFFQX1 \dand4_reg[3]  ( .D(n97), .CK(clk), .Q(dand4[3]) );
  DFFQX1 \dand4_reg[2]  ( .D(n98), .CK(clk), .Q(dand4[2]) );
  DFFQX1 \dand4_reg[15]  ( .D(n85), .CK(clk), .Q(dand4[15]) );
  DFFQX1 \dand4_reg[14]  ( .D(n86), .CK(clk), .Q(dand4[14]) );
  DFFQX1 \dand4_reg[13]  ( .D(n87), .CK(clk), .Q(dand4[13]) );
  DFFQX1 \dand4_reg[12]  ( .D(n88), .CK(clk), .Q(dand4[12]) );
  DFFQX1 \dand4_reg[11]  ( .D(n89), .CK(clk), .Q(dand4[11]) );
  DFFQX1 \dand4_reg[0]  ( .D(n99), .CK(clk), .Q(dand4[0]) );
  EDFFX1 \dior4_reg[14]  ( .D(n14), .E(N166), .CK(clk), .Q(dior4[14]) );
  EDFFX1 \dior4_reg[13]  ( .D(n13), .E(N166), .CK(clk), .Q(dior4[13]) );
  EDFFX1 \dior4_reg[12]  ( .D(n15), .E(N166), .CK(clk), .Q(dior4[12]) );
  EDFFX1 \dior4_reg[11]  ( .D(n20), .E(N166), .CK(clk), .Q(dior4[11]) );
  EDFFTRX1 \dior4_reg[10]  ( .RN(n34), .D(dior4[14]), .E(n32), .CK(clk), .Q(
        dior4[10]) );
  EDFFTRX1 \dior4_reg[9]  ( .RN(n34), .D(dior4[13]), .E(n32), .CK(clk), .Q(
        dior4[9]) );
  EDFFTRX1 \dior4_reg[8]  ( .RN(n34), .D(dior4[12]), .E(n32), .CK(clk), .Q(
        dior4[8]) );
  EDFFTRX1 \dior4_reg[3]  ( .RN(n34), .D(dior4[7]), .E(n32), .CK(clk), .QN(n44) );
  EDFFTRX1 \dior4_reg[2]  ( .RN(n34), .D(dior4[6]), .E(n32), .CK(clk), .QN(n45) );
  EDFFTRX1 \dior4_reg[1]  ( .RN(n34), .D(dior4[5]), .E(n32), .CK(clk), .QN(n46) );
  EDFFTRX1 \dior4_reg[0]  ( .RN(n34), .D(dior4[4]), .E(n32), .CK(clk), .QN(n47) );
  EDFFTRX1 \dior4_reg[7]  ( .RN(n34), .D(dior4[11]), .E(n32), .CK(clk), .Q(
        dior4[7]) );
  EDFFTRX1 \dior4_reg[6]  ( .RN(n34), .D(dior4[10]), .E(n32), .CK(clk), .Q(
        dior4[6]) );
  EDFFTRX1 \q_reg_reg[15]  ( .RN(n34), .D(q[11]), .E(n32), .CK(clk), .Q(q[15])
         );
  EDFFTRX1 \q_reg_reg[12]  ( .RN(n34), .D(q[8]), .E(n32), .CK(clk), .Q(q[12])
         );
  EDFFTRX1 \q_reg_reg[13]  ( .RN(n34), .D(q[9]), .E(n32), .CK(clk), .Q(q[13])
         );
  EDFFTRX1 \q_reg_reg[14]  ( .RN(n34), .D(q[10]), .E(n32), .CK(clk), .Q(q[14])
         );
  EDFFTRX1 \q_reg_reg[7]  ( .RN(n34), .D(q[3]), .E(n32), .CK(clk), .Q(q[7]) );
  EDFFTRX1 \q_reg_reg[11]  ( .RN(n34), .D(q[7]), .E(n32), .CK(clk), .Q(q[11])
         );
  EDFFTRX1 \q_reg_reg[4]  ( .RN(n34), .D(q[0]), .E(n32), .CK(clk), .Q(q[4]) );
  EDFFTRX1 \q_reg_reg[8]  ( .RN(n34), .D(q[4]), .E(n32), .CK(clk), .Q(q[8]) );
  EDFFTRX1 \q_reg_reg[5]  ( .RN(n34), .D(q[1]), .E(n32), .CK(clk), .Q(q[5]) );
  EDFFTRX1 \q_reg_reg[9]  ( .RN(n34), .D(q[5]), .E(n32), .CK(clk), .Q(q[9]) );
  EDFFTRX1 \q_reg_reg[6]  ( .RN(n34), .D(q[2]), .E(n32), .CK(clk), .Q(q[6]) );
  EDFFTRX1 \q_reg_reg[10]  ( .RN(n34), .D(q[6]), .E(n32), .CK(clk), .Q(q[10])
         );
  EDFFX1 \q_reg_reg[3]  ( .D(n6), .E(N166), .CK(clk), .Q(q[3]) );
  EDFFX1 \q_reg_reg[0]  ( .D(q_stage_3), .E(N166), .CK(clk), .Q(q[0]) );
  EDFFX1 \q_reg_reg[2]  ( .D(q_stage_1), .E(N166), .CK(clk), .Q(q[2]) );
  EDFFX1 \q_reg_reg[1]  ( .D(q_stage_2), .E(N166), .CK(clk), .Q(q[1]) );
  AND2X2 U3 ( .A(dior4[5]), .B(n33), .Y(n2) );
  CLKINVX1 U4 ( .A(q_stage_2), .Y(n292) );
  OA21XL U5 ( .A0(n231), .A1(n230), .B0(n229), .Y(n3) );
  NAND2X1 U6 ( .A(n3), .B(n228), .Y(q_stage_2) );
  OAI31XL U7 ( .A0(n119), .A1(n118), .A2(n117), .B0(n143), .Y(n120) );
  AO22X1 U8 ( .A0(n293), .A1(dand1[19]), .B0(n16), .B1(N51), .Y(dand2[19]) );
  OAI211X1 U9 ( .A0(dand2[16]), .A1(n232), .B0(n238), .C0(n227), .Y(n229) );
  CLKINVX1 U11 ( .A(q_stage_1), .Y(n293) );
  CLKINVX1 U12 ( .A(dand1[18]), .Y(n195) );
  OAI22X1 U14 ( .A0(n126), .A1(n125), .B0(n124), .B1(n123), .Y(n6) );
  OA21XL U15 ( .A0(\r335/B[16] ), .A1(n195), .B0(n197), .Y(n5) );
  AO22X1 U17 ( .A0(n292), .A1(dand2[15]), .B0(N69), .B1(q_stage_2), .Y(
        dand3[15]) );
  NAND2XL U18 ( .A(n5), .B(n178), .Y(q_stage_1) );
  AO22X1 U20 ( .A0(n293), .A1(dand1[9]), .B0(N41), .B1(q_stage_1), .Y(dand2[9]) );
  AO22XL U21 ( .A0(n293), .A1(dand1[1]), .B0(N33), .B1(q_stage_1), .Y(dand2[1]) );
  AO22XL U22 ( .A0(n297), .A1(dand0[18]), .B0(N28), .B1(n6), .Y(dand1[18]) );
  AND2X2 U23 ( .A(n20), .B(n129), .Y(n51) );
  OAI211XL U24 ( .A0(n231), .A1(n230), .B0(n229), .C0(n228), .Y(n17) );
  AO22XL U25 ( .A0(n292), .A1(dand2[19]), .B0(n17), .B1(N73), .Y(dand3[19]) );
  INVXL U26 ( .A(n122), .Y(n143) );
  OAI211XL U27 ( .A0(dand2[12]), .A1(n184), .B0(n213), .C0(n215), .Y(n220) );
  AO22XL U28 ( .A0(n292), .A1(dand2[18]), .B0(N72), .B1(n17), .Y(dand3[18]) );
  AO22XL U29 ( .A0(n211), .A1(n210), .B0(n219), .B1(n211), .Y(n218) );
  OAI211XL U30 ( .A0(dand2[8]), .A1(n140), .B0(n222), .C0(n221), .Y(n223) );
  NOR2XL U31 ( .A(n220), .B(n219), .Y(n221) );
  AO22XL U32 ( .A0(n292), .A1(dand2[2]), .B0(N56), .B1(n17), .Y(dand3[2]) );
  INVX1 U33 ( .A(n172), .Y(n196) );
  AO22XL U34 ( .A0(n293), .A1(dand1[12]), .B0(N44), .B1(n16), .Y(dand2[12]) );
  AO22XL U35 ( .A0(n292), .A1(dand2[3]), .B0(N57), .B1(q_stage_2), .Y(dand3[3]) );
  AO22XL U36 ( .A0(n293), .A1(dand1[16]), .B0(N48), .B1(n16), .Y(dand2[16]) );
  AO22XL U37 ( .A0(n293), .A1(dand1[17]), .B0(N49), .B1(q_stage_1), .Y(
        dand2[17]) );
  AO22XL U38 ( .A0(n293), .A1(dand1[2]), .B0(N34), .B1(n16), .Y(dand2[2]) );
  AO22XL U39 ( .A0(n293), .A1(dand1[5]), .B0(N37), .B1(q_stage_1), .Y(dand2[5]) );
  AO22XL U40 ( .A0(n293), .A1(dand1[13]), .B0(N45), .B1(n16), .Y(dand2[13]) );
  AO22XL U41 ( .A0(n293), .A1(dand1[3]), .B0(N35), .B1(q_stage_1), .Y(dand2[3]) );
  AO22XL U42 ( .A0(n292), .A1(dand2[4]), .B0(N58), .B1(n17), .Y(dand3[4]) );
  AO22XL U43 ( .A0(n292), .A1(dand2[1]), .B0(N55), .B1(q_stage_2), .Y(dand3[1]) );
  AO22XL U44 ( .A0(n293), .A1(dand1[14]), .B0(N46), .B1(n16), .Y(dand2[14]) );
  AO22XL U45 ( .A0(n293), .A1(dand1[4]), .B0(N36), .B1(n16), .Y(dand2[4]) );
  AO22XL U46 ( .A0(n293), .A1(dand1[6]), .B0(N38), .B1(n16), .Y(dand2[6]) );
  AO22XL U47 ( .A0(n293), .A1(dand1[15]), .B0(N47), .B1(q_stage_1), .Y(
        dand2[15]) );
  AO22XL U48 ( .A0(n293), .A1(dand1[7]), .B0(N39), .B1(q_stage_1), .Y(dand2[7]) );
  CLKBUFX2 U49 ( .A(load), .Y(n36) );
  AO22XL U50 ( .A0(n50), .A1(n48), .B0(n117), .B1(n50), .Y(n78) );
  CLKBUFX2 U51 ( .A(load), .Y(n35) );
  AO22XL U52 ( .A0(n292), .A1(dand2[12]), .B0(N66), .B1(n17), .Y(dand3[12]) );
  AO22XL U53 ( .A0(n292), .A1(dand2[17]), .B0(N71), .B1(q_stage_2), .Y(
        dand3[17]) );
  AO22XL U54 ( .A0(n292), .A1(dand2[16]), .B0(N70), .B1(n17), .Y(dand3[16]) );
  AO22XL U55 ( .A0(n292), .A1(dand2[11]), .B0(N65), .B1(n17), .Y(dand3[11]) );
  AO22XL U56 ( .A0(n292), .A1(dand2[7]), .B0(N61), .B1(q_stage_2), .Y(dand3[7]) );
  AO22XL U57 ( .A0(n292), .A1(dand2[13]), .B0(N67), .B1(n17), .Y(dand3[13]) );
  AO22XL U58 ( .A0(n292), .A1(dand2[8]), .B0(N62), .B1(n17), .Y(dand3[8]) );
  AO22XL U59 ( .A0(n292), .A1(dand2[14]), .B0(N68), .B1(n17), .Y(dand3[14]) );
  AO22XL U60 ( .A0(n292), .A1(dand2[10]), .B0(N64), .B1(n17), .Y(dand3[10]) );
  AO22XL U61 ( .A0(n292), .A1(dand2[6]), .B0(N60), .B1(n17), .Y(dand3[6]) );
  AO22XL U62 ( .A0(n292), .A1(dand2[9]), .B0(N63), .B1(q_stage_2), .Y(dand3[9]) );
  AO22XL U63 ( .A0(n292), .A1(dand2[5]), .B0(N59), .B1(q_stage_2), .Y(dand3[5]) );
  INVXL U64 ( .A(dand1[1]), .Y(n186) );
  INVXL U65 ( .A(dand1[0]), .Y(n185) );
  NAND2XL U66 ( .A(n33), .B(n73), .Y(N166) );
  OAI211XL U67 ( .A0(\r335/B[16] ), .A1(n195), .B0(n197), .C0(n178), .Y(n16)
         );
  INVXL U68 ( .A(dand0[0]), .Y(n127) );
  NAND2BXL U69 ( .AN(dand2[9]), .B(n18), .Y(n222) );
  AND2X2 U70 ( .A(n13), .B(n237), .Y(n212) );
  AO21XL U71 ( .A0(n132), .A1(n12), .B0(n108), .Y(n113) );
  INVXL U72 ( .A(n109), .Y(n138) );
  AO21XL U73 ( .A0(n290), .A1(n18), .B0(n245), .Y(n257) );
  AO22XL U74 ( .A0(n297), .A1(dand0[12]), .B0(N22), .B1(n6), .Y(dand1[12]) );
  AO22XL U75 ( .A0(n297), .A1(dand0[5]), .B0(N15), .B1(n6), .Y(dand1[5]) );
  AO22XL U76 ( .A0(n297), .A1(dand0[10]), .B0(N20), .B1(n6), .Y(dand1[10]) );
  AO22XL U77 ( .A0(n297), .A1(dand0[8]), .B0(N18), .B1(n6), .Y(dand1[8]) );
  OAI32XL U78 ( .A0(n278), .A1(n19), .A2(n244), .B0(dior0[14]), .B1(n280), .Y(
        n248) );
  AO22XL U79 ( .A0(n297), .A1(dand0[13]), .B0(N23), .B1(n6), .Y(dand1[13]) );
  AO22XL U80 ( .A0(n297), .A1(dand0[11]), .B0(N21), .B1(n6), .Y(dand1[11]) );
  AO22XL U81 ( .A0(n297), .A1(dand0[9]), .B0(N19), .B1(n6), .Y(dand1[9]) );
  AO22XL U82 ( .A0(n297), .A1(dand0[7]), .B0(N17), .B1(n6), .Y(dand1[7]) );
  AO22XL U83 ( .A0(n297), .A1(dand0[6]), .B0(N16), .B1(n6), .Y(dand1[6]) );
  AOI21XL U84 ( .A0(n278), .A1(n19), .B0(n244), .Y(n246) );
  OAI32XL U85 ( .A0(n290), .A1(n18), .A2(n245), .B0(dior0[12]), .B1(n291), .Y(
        n247) );
  INVXL U86 ( .A(dand3[1]), .Y(n285) );
  INVXL U87 ( .A(n19), .Y(n183) );
  INVXL U88 ( .A(n18), .Y(n182) );
  NAND2XL U89 ( .A(n32), .B(n33), .Y(n73) );
  NOR2XL U90 ( .A(n36), .B(n45), .Y(dior0[2]) );
  AND2XL U91 ( .A(dior4[7]), .B(n33), .Y(n11) );
  AND2XL U92 ( .A(dior4[9]), .B(n33), .Y(dior0[9]) );
  AND2XL U93 ( .A(dior4[14]), .B(n33), .Y(dior0[14]) );
  AND2XL U94 ( .A(dior4[8]), .B(n33), .Y(dior0[8]) );
  AND2XL U95 ( .A(dior4[6]), .B(n33), .Y(n12) );
  AO22XL U96 ( .A0(n34), .A1(dand4[12]), .B0(dividand[12]), .B1(n38), .Y(
        dand0[12]) );
  AO22XL U97 ( .A0(n33), .A1(dand4[3]), .B0(dividand[3]), .B1(n38), .Y(
        dand0[3]) );
  AO22XL U98 ( .A0(n33), .A1(dand4[4]), .B0(dividand[4]), .B1(n38), .Y(
        dand0[4]) );
  AO22XL U99 ( .A0(n33), .A1(dand4[8]), .B0(dividand[8]), .B1(n38), .Y(
        dand0[8]) );
  AO22XL U100 ( .A0(n34), .A1(dand4[10]), .B0(dividand[10]), .B1(n38), .Y(
        dand0[10]) );
  AND2XL U101 ( .A(dior4[13]), .B(n33), .Y(dior0[13]) );
  AO22XL U102 ( .A0(n33), .A1(dand4[9]), .B0(dividand[9]), .B1(n37), .Y(
        dand0[9]) );
  AO22XL U103 ( .A0(n33), .A1(dand4[5]), .B0(dividand[5]), .B1(n37), .Y(
        dand0[5]) );
  AO22XL U104 ( .A0(n33), .A1(dand4[1]), .B0(dividand[1]), .B1(n38), .Y(
        dand0[1]) );
  AO22XL U105 ( .A0(n34), .A1(dand4[13]), .B0(dividand[13]), .B1(n38), .Y(
        dand0[13]) );
  AO22XL U106 ( .A0(n34), .A1(dand4[11]), .B0(dividand[11]), .B1(n38), .Y(
        dand0[11]) );
  NOR2XL U107 ( .A(n35), .B(n47), .Y(dior0[0]) );
  AO22XL U108 ( .A0(n33), .A1(dand4[16]), .B0(dividand[16]), .B1(n38), .Y(
        dand0[16]) );
  AND2XL U109 ( .A(dior4[12]), .B(n33), .Y(dior0[12]) );
  AND2XL U110 ( .A(dior4[10]), .B(n33), .Y(dior0[10]) );
  NOR2XL U111 ( .A(n35), .B(n44), .Y(dior0[3]) );
  NOR2XL U112 ( .A(n36), .B(n46), .Y(dior0[1]) );
  AO22XL U113 ( .A0(n33), .A1(dand4[2]), .B0(dividand[2]), .B1(n38), .Y(
        dand0[2]) );
  AO22XL U114 ( .A0(n33), .A1(dand4[7]), .B0(dividand[7]), .B1(n37), .Y(
        dand0[7]) );
  AO22XL U115 ( .A0(n33), .A1(dand4[6]), .B0(dividand[6]), .B1(n37), .Y(
        dand0[6]) );
  AO22XL U116 ( .A0(n33), .A1(dand4[17]), .B0(dividand[17]), .B1(n38), .Y(
        dand0[17]) );
  AO22XL U117 ( .A0(n34), .A1(dand4[15]), .B0(dividand[15]), .B1(n38), .Y(
        dand0[15]) );
  AO22XL U118 ( .A0(n34), .A1(dand4[14]), .B0(dividand[14]), .B1(n38), .Y(
        dand0[14]) );
  CLKINVX1 U119 ( .A(n79), .Y(\r335/B[1] ) );
  NAND2XL U120 ( .A(dior4[4]), .B(n33), .Y(n79) );
  OAI2BB1XL U121 ( .A0N(n295), .A1N(dand4[19]), .B0(n53), .Y(n81) );
  OAI2BB1XL U122 ( .A0N(n295), .A1N(dand4[18]), .B0(n55), .Y(n82) );
  AOI22XL U123 ( .A0(n30), .A1(dand3[0]), .B0(N80), .B1(n9), .Y(n72) );
  AO21X1 U124 ( .A0(n295), .A1(dand4[1]), .B0(n8), .Y(n100) );
  AO22X1 U125 ( .A0(n25), .A1(dand3[1]), .B0(N81), .B1(n9), .Y(n8) );
  AO22XL U126 ( .A0(n33), .A1(dand4[19]), .B0(n37), .B1(dividand[19]), .Y(
        dand0[19]) );
  AO22XL U127 ( .A0(n33), .A1(dand4[18]), .B0(dividand[18]), .B1(n38), .Y(
        dand0[18]) );
  CLKINVX1 U128 ( .A(n298), .Y(\r335/B[16] ) );
  CLKINVX1 U129 ( .A(n23), .Y(n29) );
  CLKINVX1 U130 ( .A(n23), .Y(n27) );
  CLKINVX1 U131 ( .A(n23), .Y(n28) );
  CLKINVX1 U132 ( .A(n22), .Y(n25) );
  CLKINVX1 U133 ( .A(n22), .Y(n26) );
  CLKINVX1 U134 ( .A(n36), .Y(n33) );
  CLKINVX1 U135 ( .A(dand2[15]), .Y(n237) );
  CLKINVX1 U136 ( .A(n35), .Y(n34) );
  CLKINVX1 U137 ( .A(dand2[14]), .Y(n236) );
  CLKINVX1 U138 ( .A(dand2[7]), .Y(n243) );
  CLKINVX1 U139 ( .A(n54), .Y(n24) );
  CLKINVX1 U140 ( .A(n54), .Y(n23) );
  CLKINVX1 U141 ( .A(n54), .Y(n22) );
  CLKINVX1 U142 ( .A(dand3[14]), .Y(n282) );
  CLKINVX1 U143 ( .A(dand3[10]), .Y(n278) );
  CLKINVX1 U144 ( .A(dand3[6]), .Y(n288) );
  CLKINVX1 U145 ( .A(dand3[4]), .Y(n286) );
  CLKINVX1 U146 ( .A(dand3[8]), .Y(n290) );
  CLKINVX1 U147 ( .A(dand3[9]), .Y(n291) );
  CLKINVX1 U148 ( .A(dand3[5]), .Y(n287) );
  CLKINVX1 U149 ( .A(dand2[6]), .Y(n242) );
  CLKINVX1 U150 ( .A(dand3[11]), .Y(n280) );
  CLKINVX1 U151 ( .A(dand2[4]), .Y(n240) );
  CLKINVX1 U152 ( .A(N166), .Y(n295) );
  CLKINVX1 U153 ( .A(n74), .Y(n142) );
  CLKINVX1 U154 ( .A(n126), .Y(n135) );
  CLKINVX1 U155 ( .A(n231), .Y(n238) );
  AO22X1 U156 ( .A0(n292), .A1(dand2[0]), .B0(N54), .B1(n17), .Y(dand3[0]) );
  CLKINVX1 U157 ( .A(n6), .Y(n297) );
  AO22X1 U158 ( .A0(n293), .A1(dand1[18]), .B0(N50), .B1(n16), .Y(dand2[18])
         );
  AO22X1 U159 ( .A0(n293), .A1(dand1[8]), .B0(N40), .B1(n16), .Y(dand2[8]) );
  AO22X1 U160 ( .A0(n293), .A1(dand1[10]), .B0(N42), .B1(n16), .Y(dand2[10])
         );
  AO22X1 U161 ( .A0(n293), .A1(dand1[11]), .B0(N43), .B1(n16), .Y(dand2[11])
         );
  CLKBUFX3 U162 ( .A(load), .Y(n37) );
  CLKBUFX3 U163 ( .A(load), .Y(n38) );
  CLKINVX1 U164 ( .A(dand1[15]), .Y(n193) );
  AO22X1 U165 ( .A0(n293), .A1(dand1[0]), .B0(N32), .B1(n16), .Y(dand2[0]) );
  AND2X2 U166 ( .A(q_stage_3), .B(N166), .Y(n9) );
  NOR2X1 U167 ( .A(n295), .B(q_stage_3), .Y(n54) );
  CLKINVX1 U168 ( .A(n251), .Y(n281) );
  CLKINVX1 U169 ( .A(dand1[14]), .Y(n192) );
  CLKINVX1 U170 ( .A(dand1[6]), .Y(n189) );
  CLKINVX1 U171 ( .A(dand1[4]), .Y(n187) );
  CLKINVX1 U172 ( .A(dand1[7]), .Y(n190) );
  CLKINVX1 U173 ( .A(dand1[17]), .Y(n194) );
  CLKINVX1 U174 ( .A(dand1[19]), .Y(n197) );
  AO22X1 U175 ( .A0(n297), .A1(dand0[0]), .B0(N10), .B1(n6), .Y(dand1[0]) );
  AO22X1 U176 ( .A0(n297), .A1(dand0[1]), .B0(N11), .B1(n6), .Y(dand1[1]) );
  CLKINVX1 U177 ( .A(n160), .Y(n191) );
  CLKINVX1 U178 ( .A(dior0[14]), .Y(n184) );
  CLKINVX1 U179 ( .A(dand2[5]), .Y(n241) );
  CLKINVX1 U180 ( .A(dand0[3]), .Y(n131) );
  CLKINVX1 U181 ( .A(dior0[1]), .Y(n136) );
  AO22X1 U182 ( .A0(n297), .A1(dand0[15]), .B0(N25), .B1(n6), .Y(dand1[15]) );
  AO22X1 U183 ( .A0(n297), .A1(dand0[4]), .B0(N14), .B1(n6), .Y(dand1[4]) );
  AO22X1 U184 ( .A0(n297), .A1(dand0[2]), .B0(N12), .B1(n6), .Y(dand1[2]) );
  AO22X1 U185 ( .A0(n297), .A1(dand0[3]), .B0(N13), .B1(n6), .Y(dand1[3]) );
  AO22X1 U186 ( .A0(n297), .A1(dand0[16]), .B0(N26), .B1(n6), .Y(dand1[16]) );
  CLKINVX1 U187 ( .A(n2), .Y(n137) );
  CLKINVX1 U188 ( .A(n214), .Y(n235) );
  CLKINVX1 U189 ( .A(n20), .Y(n233) );
  CLKINVX1 U190 ( .A(dior0[12]), .Y(n141) );
  CLKINVX1 U191 ( .A(dior0[10]), .Y(n140) );
  CLKINVX1 U192 ( .A(dior0[8]), .Y(n139) );
  CLKINVX1 U193 ( .A(dand0[14]), .Y(n128) );
  CLKINVX1 U194 ( .A(dand0[2]), .Y(n130) );
  CLKINVX1 U195 ( .A(dand0[6]), .Y(n132) );
  CLKINVX1 U196 ( .A(dand0[15]), .Y(n129) );
  CLKINVX1 U197 ( .A(dand0[7]), .Y(n133) );
  CLKINVX1 U198 ( .A(dand3[16]), .Y(n284) );
  CLKINVX1 U199 ( .A(n246), .Y(n279) );
  CLKINVX1 U200 ( .A(dand3[7]), .Y(n289) );
  CLKINVX1 U201 ( .A(dand1[5]), .Y(n188) );
  CLKINVX1 U202 ( .A(dand3[15]), .Y(n283) );
  AO22X1 U203 ( .A0(n297), .A1(dand0[14]), .B0(N24), .B1(n6), .Y(dand1[14]) );
  AO22X1 U204 ( .A0(n297), .A1(dand0[17]), .B0(N27), .B1(n6), .Y(dand1[17]) );
  AO22X1 U205 ( .A0(n297), .A1(dand0[19]), .B0(n6), .B1(N29), .Y(dand1[19]) );
  CLKINVX1 U206 ( .A(dand0[17]), .Y(n134) );
  CLKINVX1 U207 ( .A(dand2[0]), .Y(n234) );
  CLKINVX1 U208 ( .A(dand2[1]), .Y(n239) );
  CLKINVX1 U209 ( .A(dior0[9]), .Y(n181) );
  CLKINVX1 U210 ( .A(n21), .Y(n180) );
  CLKINVX1 U211 ( .A(n13), .Y(n179) );
  CLKINVX1 U212 ( .A(n12), .Y(n277) );
  OAI32X1 U213 ( .A0(n296), .A1(n73), .A2(n294), .B0(n80), .B1(n32), .Y(n102)
         );
  CLKINVX1 U214 ( .A(n14), .Y(n232) );
  CLKINVX1 U215 ( .A(n15), .Y(n276) );
  AOI22X1 U216 ( .A0(n26), .A1(dand3[18]), .B0(N98), .B1(n9), .Y(n55) );
  CLKBUFX3 U217 ( .A(dior0[11]), .Y(n18) );
  AND2X2 U218 ( .A(dior4[11]), .B(n33), .Y(dior0[11]) );
  CLKBUFX3 U219 ( .A(dior0[15]), .Y(n20) );
  AO22X1 U220 ( .A0(n33), .A1(dior4[15]), .B0(dividor[0]), .B1(n37), .Y(
        dior0[15]) );
  AOI22X1 U221 ( .A0(n31), .A1(dand3[19]), .B0(N99), .B1(n9), .Y(n53) );
  AO22X1 U222 ( .A0(n34), .A1(dand4[0]), .B0(dividand[0]), .B1(n37), .Y(
        dand0[0]) );
  CLKBUFX3 U223 ( .A(dior0[13]), .Y(n19) );
  CLKBUFX3 U224 ( .A(dior0[3]), .Y(n21) );
  OAI2BB1X1 U225 ( .A0N(n295), .A1N(dand4[17]), .B0(n56), .Y(n83) );
  AOI22X1 U226 ( .A0(n31), .A1(dand3[17]), .B0(N97), .B1(n9), .Y(n56) );
  OAI2BB1X1 U227 ( .A0N(n295), .A1N(dand4[12]), .B0(n61), .Y(n88) );
  AOI22X1 U228 ( .A0(n30), .A1(dand3[12]), .B0(N92), .B1(n9), .Y(n61) );
  CLKINVX1 U229 ( .A(n24), .Y(n30) );
  OAI2BB1X1 U230 ( .A0N(n295), .A1N(dand4[13]), .B0(n60), .Y(n87) );
  AOI22X1 U231 ( .A0(n31), .A1(dand3[13]), .B0(N93), .B1(n9), .Y(n60) );
  CLKINVX1 U232 ( .A(n24), .Y(n31) );
  OAI2BB1X1 U233 ( .A0N(n295), .A1N(dand4[14]), .B0(n59), .Y(n86) );
  AOI22X1 U234 ( .A0(n31), .A1(dand3[14]), .B0(N94), .B1(n9), .Y(n59) );
  OAI2BB1X1 U235 ( .A0N(n295), .A1N(dand4[15]), .B0(n58), .Y(n85) );
  AOI22X1 U236 ( .A0(n30), .A1(dand3[15]), .B0(N95), .B1(n9), .Y(n58) );
  OAI2BB1X1 U237 ( .A0N(n295), .A1N(dand4[16]), .B0(n57), .Y(n84) );
  AOI22X1 U238 ( .A0(n25), .A1(dand3[16]), .B0(N96), .B1(n9), .Y(n57) );
  NAND2X1 U239 ( .A(dividor[4]), .B(n37), .Y(n298) );
  AND2X2 U240 ( .A(dividor[2]), .B(n37), .Y(n13) );
  OAI2BB1X1 U241 ( .A0N(n295), .A1N(dand4[0]), .B0(n72), .Y(n99) );
  OAI2BB1X1 U242 ( .A0N(n295), .A1N(dand4[11]), .B0(n62), .Y(n89) );
  AOI22X1 U243 ( .A0(n29), .A1(dand3[11]), .B0(N91), .B1(n9), .Y(n62) );
  OAI2BB1X1 U244 ( .A0N(n295), .A1N(dand4[2]), .B0(n71), .Y(n98) );
  AOI22X1 U245 ( .A0(n26), .A1(dand3[2]), .B0(N82), .B1(n9), .Y(n71) );
  OAI2BB1X1 U246 ( .A0N(n295), .A1N(dand4[3]), .B0(n70), .Y(n97) );
  AOI22X1 U247 ( .A0(n26), .A1(dand3[3]), .B0(N83), .B1(n9), .Y(n70) );
  OAI2BB1X1 U248 ( .A0N(n295), .A1N(dand4[4]), .B0(n69), .Y(n96) );
  AOI22X1 U249 ( .A0(n27), .A1(dand3[4]), .B0(N84), .B1(n9), .Y(n69) );
  OAI2BB1X1 U250 ( .A0N(n295), .A1N(dand4[5]), .B0(n68), .Y(n95) );
  AOI22X1 U251 ( .A0(n28), .A1(dand3[5]), .B0(N85), .B1(n9), .Y(n68) );
  OAI2BB1X1 U252 ( .A0N(n295), .A1N(dand4[6]), .B0(n67), .Y(n94) );
  AOI22X1 U253 ( .A0(n29), .A1(dand3[6]), .B0(N86), .B1(n9), .Y(n67) );
  OAI2BB1X1 U254 ( .A0N(n295), .A1N(dand4[7]), .B0(n66), .Y(n93) );
  AOI22X1 U255 ( .A0(n29), .A1(dand3[7]), .B0(N87), .B1(n9), .Y(n66) );
  OAI2BB1X1 U256 ( .A0N(n295), .A1N(dand4[8]), .B0(n65), .Y(n92) );
  AOI22X1 U257 ( .A0(n27), .A1(dand3[8]), .B0(N88), .B1(n9), .Y(n65) );
  OAI2BB1X1 U258 ( .A0N(n295), .A1N(dand4[9]), .B0(n64), .Y(n91) );
  AOI22X1 U259 ( .A0(n28), .A1(dand3[9]), .B0(N89), .B1(n9), .Y(n64) );
  OAI2BB1X1 U260 ( .A0N(n295), .A1N(dand4[10]), .B0(n63), .Y(n90) );
  AOI22X1 U261 ( .A0(n27), .A1(dand3[10]), .B0(N90), .B1(n9), .Y(n63) );
  OA21XL U262 ( .A0(cnt[0]), .A1(n73), .B0(N166), .Y(n80) );
  OAI32X1 U263 ( .A0(n294), .A1(cnt[1]), .A2(n73), .B0(n80), .B1(n296), .Y(
        n101) );
  OAI221XL U264 ( .A0(cnt[0]), .A1(n73), .B0(N166), .B1(n294), .C0(n34), .Y(
        n103) );
  CLKBUFX3 U265 ( .A(n49), .Y(n32) );
  CLKINVX1 U266 ( .A(cnt[0]), .Y(n294) );
  CLKINVX1 U267 ( .A(cnt[1]), .Y(n296) );
  AND2X2 U268 ( .A(dividor[3]), .B(n37), .Y(n14) );
  AND2X2 U269 ( .A(dividor[1]), .B(n37), .Y(n15) );
  NOR2X1 U270 ( .A(n298), .B(dand0[19]), .Y(n126) );
  NAND2X1 U271 ( .A(n13), .B(n134), .Y(n42) );
  NAND2BX1 U272 ( .AN(dand0[18]), .B(n14), .Y(n41) );
  AND2X1 U273 ( .A(n42), .B(n41), .Y(n40) );
  OAI2BB2XL U274 ( .B0(n13), .B1(n134), .A0N(n276), .A1N(dand0[16]), .Y(n39)
         );
  AOI222XL U275 ( .A0(dand0[19]), .A1(n298), .B0(dand0[18]), .B1(n232), .C0(
        n40), .C1(n39), .Y(n125) );
  OAI211X1 U276 ( .A0(dand0[16]), .A1(n276), .B0(n42), .C0(n41), .Y(n124) );
  NAND2BX1 U277 ( .AN(dand0[13]), .B(n19), .Y(n52) );
  AOI21X1 U278 ( .A0(n128), .A1(dior0[14]), .B0(n51), .Y(n75) );
  OAI211X1 U279 ( .A0(dand0[12]), .A1(n141), .B0(n52), .C0(n75), .Y(n118) );
  NAND2BX1 U280 ( .AN(dand0[11]), .B(n18), .Y(n43) );
  AOI32X1 U281 ( .A0(dand0[10]), .A1(n140), .A2(n43), .B0(n182), .B1(dand0[11]), .Y(n50) );
  NAND2BX1 U282 ( .AN(dand0[9]), .B(dior0[9]), .Y(n116) );
  AOI32X1 U283 ( .A0(dand0[8]), .A1(n139), .A2(n116), .B0(n181), .B1(dand0[9]), 
        .Y(n48) );
  OAI21XL U284 ( .A0(dand0[10]), .A1(n140), .B0(n43), .Y(n117) );
  OAI32X1 U285 ( .A0(n128), .A1(dior0[14]), .A2(n51), .B0(n20), .B1(n129), .Y(
        n76) );
  AOI32X1 U286 ( .A0(dand0[12]), .A1(n141), .A2(n52), .B0(n183), .B1(dand0[13]), .Y(n74) );
  OAI22XL U287 ( .A0(n76), .A1(n142), .B0(n75), .B1(n76), .Y(n77) );
  OAI21XL U288 ( .A0(n118), .A1(n78), .B0(n77), .Y(n122) );
  NOR2BX1 U289 ( .AN(n21), .B(dand0[3]), .Y(n104) );
  AOI21X1 U290 ( .A0(dior0[2]), .A1(n130), .B0(n104), .Y(n105) );
  OAI32X1 U291 ( .A0(n130), .A1(dior0[2]), .A2(n104), .B0(n21), .B1(n131), .Y(
        n107) );
  NAND2BX1 U292 ( .AN(dand0[5]), .B(n2), .Y(n110) );
  OAI221XL U293 ( .A0(dand0[4]), .A1(n79), .B0(n105), .B1(n107), .C0(n110), 
        .Y(n115) );
  AOI2BB2X1 U294 ( .B0(dior0[0]), .B1(n127), .A0N(n136), .A1N(dand0[1]), .Y(
        n106) );
  AOI211X1 U295 ( .A0(dand0[1]), .A1(n136), .B0(n107), .C0(n106), .Y(n114) );
  AND2X1 U296 ( .A(n11), .B(n133), .Y(n108) );
  OAI32X1 U297 ( .A0(n132), .A1(n12), .A2(n108), .B0(n11), .B1(n133), .Y(n109)
         );
  AOI32X1 U298 ( .A0(dand0[4]), .A1(n79), .A2(n110), .B0(n137), .B1(dand0[5]), 
        .Y(n111) );
  AO22X1 U299 ( .A0(n138), .A1(n111), .B0(n113), .B1(n138), .Y(n112) );
  OAI31XL U300 ( .A0(n115), .A1(n114), .A2(n113), .B0(n112), .Y(n121) );
  OAI21XL U301 ( .A0(dand0[8]), .A1(n139), .B0(n116), .Y(n119) );
  OAI211X1 U302 ( .A0(n122), .A1(n121), .B0(n120), .C0(n135), .Y(n123) );
  NAND2X1 U303 ( .A(\r335/B[16] ), .B(n195), .Y(n177) );
  NAND2X1 U304 ( .A(n14), .B(n194), .Y(n176) );
  OAI2BB2XL U305 ( .B0(n14), .B1(n194), .A0N(n179), .A1N(dand1[16]), .Y(n175)
         );
  AND2X1 U306 ( .A(dior0[8]), .B(n190), .Y(n150) );
  AOI21X1 U307 ( .A0(n189), .A1(n11), .B0(n150), .Y(n152) );
  AO22X1 U308 ( .A0(n185), .A1(dior0[1]), .B0(n186), .B1(dior0[2]), .Y(n144)
         );
  NAND2BX1 U309 ( .AN(dand1[3]), .B(\r335/B[1] ), .Y(n145) );
  AOI32X1 U310 ( .A0(dand1[2]), .A1(n180), .A2(n145), .B0(n79), .B1(dand1[3]), 
        .Y(n147) );
  OAI211X1 U311 ( .A0(dior0[2]), .A1(n186), .B0(n144), .C0(n147), .Y(n149) );
  OAI21XL U312 ( .A0(dand1[2]), .A1(n180), .B0(n145), .Y(n146) );
  NOR2BX1 U313 ( .AN(n12), .B(dand1[5]), .Y(n151) );
  AOI221XL U314 ( .A0(n147), .A1(n146), .B0(n2), .B1(n187), .C0(n151), .Y(n148) );
  NAND3X1 U315 ( .A(n152), .B(n149), .C(n148), .Y(n166) );
  OAI32X1 U316 ( .A0(n189), .A1(n11), .A2(n150), .B0(dior0[8]), .B1(n190), .Y(
        n154) );
  OAI32X1 U317 ( .A0(n187), .A1(n2), .A2(n151), .B0(n12), .B1(n188), .Y(n153)
         );
  OAI22XL U318 ( .A0(n154), .A1(n153), .B0(n152), .B1(n154), .Y(n165) );
  NAND2BX1 U319 ( .AN(dand1[13]), .B(dior0[14]), .Y(n159) );
  AND2X1 U320 ( .A(n15), .B(n193), .Y(n158) );
  AOI21X1 U321 ( .A0(n192), .A1(n20), .B0(n158), .Y(n161) );
  OAI211X1 U322 ( .A0(dand1[12]), .A1(n183), .B0(n159), .C0(n161), .Y(n170) );
  NAND2BX1 U323 ( .AN(dand1[11]), .B(dior0[12]), .Y(n155) );
  AOI32X1 U324 ( .A0(dand1[10]), .A1(n182), .A2(n155), .B0(n141), .B1(
        dand1[11]), .Y(n157) );
  NAND2BX1 U325 ( .AN(dand1[9]), .B(dior0[10]), .Y(n167) );
  AOI32X1 U326 ( .A0(dand1[8]), .A1(n181), .A2(n167), .B0(n140), .B1(dand1[9]), 
        .Y(n156) );
  OAI21XL U327 ( .A0(dand1[10]), .A1(n182), .B0(n155), .Y(n169) );
  AO22X1 U328 ( .A0(n157), .A1(n156), .B0(n169), .B1(n157), .Y(n164) );
  OAI32X1 U329 ( .A0(n192), .A1(n20), .A2(n158), .B0(n15), .B1(n193), .Y(n162)
         );
  AOI32X1 U330 ( .A0(dand1[12]), .A1(n183), .A2(n159), .B0(n184), .B1(
        dand1[13]), .Y(n160) );
  OAI22XL U331 ( .A0(n162), .A1(n191), .B0(n161), .B1(n162), .Y(n163) );
  OA21XL U332 ( .A0(n170), .A1(n164), .B0(n163), .Y(n168) );
  NAND3X1 U333 ( .A(n166), .B(n165), .C(n168), .Y(n174) );
  OAI21XL U334 ( .A0(dand1[8]), .A1(n181), .B0(n167), .Y(n171) );
  OAI31XL U335 ( .A0(n171), .A1(n170), .A2(n169), .B0(n168), .Y(n173) );
  OAI211X1 U336 ( .A0(n179), .A1(dand1[16]), .B0(n177), .C0(n176), .Y(n172) );
  AOI33X1 U337 ( .A0(n177), .A1(n176), .A2(n175), .B0(n174), .B1(n173), .B2(
        n196), .Y(n178) );
  NOR2X1 U338 ( .A(n298), .B(dand2[17]), .Y(n231) );
  AOI22X1 U339 ( .A0(dand2[16]), .A1(n232), .B0(dand2[17]), .B1(n298), .Y(n230) );
  AND2X1 U340 ( .A(dior0[9]), .B(n243), .Y(n204) );
  AOI21X1 U341 ( .A0(n242), .A1(dior0[8]), .B0(n204), .Y(n206) );
  AO22X1 U342 ( .A0(n234), .A1(dior0[2]), .B0(n239), .B1(n21), .Y(n198) );
  NAND2BX1 U343 ( .AN(dand2[3]), .B(n2), .Y(n199) );
  AOI32X1 U344 ( .A0(dand2[2]), .A1(n79), .A2(n199), .B0(n137), .B1(dand2[3]), 
        .Y(n201) );
  OAI211X1 U345 ( .A0(n21), .A1(n239), .B0(n198), .C0(n201), .Y(n203) );
  OAI21XL U346 ( .A0(dand2[2]), .A1(n79), .B0(n199), .Y(n200) );
  NOR2BX1 U347 ( .AN(n11), .B(dand2[5]), .Y(n205) );
  AOI221XL U348 ( .A0(n201), .A1(n200), .B0(n12), .B1(n240), .C0(n205), .Y(
        n202) );
  NAND3X1 U349 ( .A(n206), .B(n203), .C(n202), .Y(n226) );
  OAI32X1 U350 ( .A0(n242), .A1(dior0[8]), .A2(n204), .B0(dior0[9]), .B1(n243), 
        .Y(n208) );
  OAI32X1 U351 ( .A0(n240), .A1(n12), .A2(n205), .B0(n11), .B1(n241), .Y(n207)
         );
  OAI22XL U352 ( .A0(n208), .A1(n207), .B0(n206), .B1(n208), .Y(n225) );
  NAND2BX1 U353 ( .AN(dand2[13]), .B(n20), .Y(n213) );
  AOI21X1 U354 ( .A0(n236), .A1(n15), .B0(n212), .Y(n215) );
  NAND2BX1 U355 ( .AN(dand2[11]), .B(n19), .Y(n209) );
  AOI32X1 U356 ( .A0(dand2[10]), .A1(n141), .A2(n209), .B0(n183), .B1(
        dand2[11]), .Y(n211) );
  AOI32X1 U357 ( .A0(dand2[8]), .A1(n140), .A2(n222), .B0(n182), .B1(dand2[9]), 
        .Y(n210) );
  OAI21XL U358 ( .A0(dand2[10]), .A1(n141), .B0(n209), .Y(n219) );
  OAI32X1 U359 ( .A0(n236), .A1(n15), .A2(n212), .B0(n13), .B1(n237), .Y(n216)
         );
  AOI32X1 U360 ( .A0(dand2[12]), .A1(n184), .A2(n213), .B0(n233), .B1(
        dand2[13]), .Y(n214) );
  OAI22XL U361 ( .A0(n216), .A1(n235), .B0(n215), .B1(n216), .Y(n217) );
  OA21XL U362 ( .A0(n220), .A1(n218), .B0(n217), .Y(n224) );
  AOI32X1 U363 ( .A0(n226), .A1(n225), .A2(n224), .B0(n224), .B1(n223), .Y(
        n227) );
  NOR2X1 U364 ( .A(dand2[19]), .B(dand2[18]), .Y(n228) );
  AND2X1 U365 ( .A(dior0[12]), .B(n291), .Y(n245) );
  OR2X1 U366 ( .A(dand3[13]), .B(n276), .Y(n250) );
  NOR2BX1 U367 ( .AN(n14), .B(dand3[15]), .Y(n249) );
  AOI21X1 U368 ( .A0(n282), .A1(n13), .B0(n249), .Y(n252) );
  OAI211X1 U369 ( .A0(dand3[12]), .A1(n233), .B0(n250), .C0(n252), .Y(n256) );
  NOR2BX1 U370 ( .AN(dior0[14]), .B(dand3[11]), .Y(n244) );
  OAI22XL U371 ( .A0(n248), .A1(n247), .B0(n246), .B1(n248), .Y(n255) );
  OAI32X1 U372 ( .A0(n282), .A1(n13), .A2(n249), .B0(n14), .B1(n283), .Y(n253)
         );
  AOI32X1 U373 ( .A0(dand3[12]), .A1(n233), .A2(n250), .B0(n276), .B1(
        dand3[13]), .Y(n251) );
  OAI22XL U374 ( .A0(n253), .A1(n281), .B0(n252), .B1(n253), .Y(n254) );
  OA21XL U375 ( .A0(n256), .A1(n255), .B0(n254), .Y(n269) );
  OAI31XL U376 ( .A0(n257), .A1(n256), .A2(n279), .B0(n269), .Y(n273) );
  NOR2BX1 U377 ( .AN(dior0[10]), .B(dand3[7]), .Y(n264) );
  AOI21X1 U378 ( .A0(n288), .A1(dior0[9]), .B0(n264), .Y(n266) );
  OAI2BB2XL U379 ( .B0(dand3[0]), .B1(n180), .A0N(n285), .A1N(\r335/B[1] ), 
        .Y(n258) );
  OR2X1 U380 ( .A(dand3[3]), .B(n277), .Y(n259) );
  AOI32X1 U381 ( .A0(dand3[2]), .A1(n137), .A2(n259), .B0(n277), .B1(dand3[3]), 
        .Y(n261) );
  OAI211X1 U382 ( .A0(\r335/B[1] ), .A1(n285), .B0(n258), .C0(n261), .Y(n263)
         );
  OAI21XL U383 ( .A0(dand3[2]), .A1(n137), .B0(n259), .Y(n260) );
  AND2X1 U384 ( .A(dior0[8]), .B(n287), .Y(n265) );
  AOI221XL U385 ( .A0(n261), .A1(n260), .B0(n11), .B1(n286), .C0(n265), .Y(
        n262) );
  NAND3X1 U386 ( .A(n266), .B(n263), .C(n262), .Y(n271) );
  OAI32X1 U387 ( .A0(n288), .A1(dior0[9]), .A2(n264), .B0(dior0[10]), .B1(n289), .Y(n268) );
  OAI32X1 U388 ( .A0(n286), .A1(n11), .A2(n265), .B0(dior0[8]), .B1(n287), .Y(
        n267) );
  OAI22XL U389 ( .A0(n268), .A1(n267), .B0(n266), .B1(n268), .Y(n270) );
  NAND3X1 U390 ( .A(n271), .B(n270), .C(n269), .Y(n272) );
  OAI211X1 U391 ( .A0(dand3[16]), .A1(n298), .B0(n273), .C0(n272), .Y(n275) );
  NOR3X1 U392 ( .A(dand3[17]), .B(dand3[19]), .C(dand3[18]), .Y(n274) );
  OAI211X1 U393 ( .A0(\r335/B[16] ), .A1(n284), .B0(n275), .C0(n274), .Y(
        q_stage_3) );
  divider_4stage_20_5_to_16bit_0_DW01_sub_0 r336 ( .A(dand3), .B({1'b0, 1'b0, 
        1'b0, \r335/B[16] , n14, n13, n15, n20, dior0[14], n19, dior0[12], n18, 
        dior0[10:8], n11, n12, n2, \r335/B[1] , n21}), .CI(1'b0), .DIFF({N99, 
        N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, 
        N84, N83, N82, N81, N80}) );
  divider_4stage_20_5_to_16bit_0_DW01_sub_1 sub_297 ( .A(dand2), .B({1'b0, 
        1'b0, \r335/B[16] , n14, n13, n15, n20, dior0[14], n19, dior0[12], n18, 
        dior0[10:8], n11, n12, n2, \r335/B[1] , n21, dior0[2]}), .CI(1'b0), 
        .DIFF({N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, 
        N60, N59, N58, N57, N56, N55, N54}) );
  divider_4stage_20_5_to_16bit_0_DW01_sub_2 sub_292 ( .A(dand1), .B({1'b0, 
        \r335/B[16] , n14, n13, n15, n20, dior0[14], n19, dior0[12], n18, 
        dior0[10:8], n11, n12, n2, \r335/B[1] , n21, dior0[2:1]}), .CI(1'b0), 
        .DIFF({N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, 
        N38, N37, N36, N35, N34, N33, N32}) );
  divider_4stage_20_5_to_16bit_0_DW01_sub_3 sub_287 ( .A(dand0), .B({
        \r335/B[16] , n14, n13, n15, n20, dior0[14], n19, dior0[12], n18, 
        dior0[10:8], n11, n12, n2, \r335/B[1] , n21, dior0[2:0]}), .CI(1'b0), 
        .DIFF({N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, 
        N16, N15, N14, N13, N12, N11, N10}) );
endmodule


module divider_4stage_20_5_to_16bit_2_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [20:0] carry;

  ADDFXL U2_15 ( .A(A[15]), .B(n20), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n17), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n19), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n4), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n5), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n6), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n7), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n8), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n10), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n11), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n12), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n13), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n14), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n15), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_16 ( .A(A[16]), .B(n18), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  OR2XL U1 ( .A(A[17]), .B(carry[17]), .Y(carry[18]) );
  INVXL U2 ( .A(B[10]), .Y(n6) );
  INVXL U3 ( .A(B[8]), .Y(n8) );
  NAND2BX1 U4 ( .AN(n16), .B(n3), .Y(carry[1]) );
  XNOR2XL U5 ( .A(A[18]), .B(carry[18]), .Y(DIFF[18]) );
  XNOR2XL U6 ( .A(n16), .B(A[0]), .Y(DIFF[0]) );
  XNOR2XL U7 ( .A(A[17]), .B(carry[17]), .Y(DIFF[17]) );
  CLKINVX1 U8 ( .A(A[0]), .Y(n3) );
  CLKINVX1 U9 ( .A(carry[18]), .Y(n2) );
  CLKINVX1 U10 ( .A(A[18]), .Y(n1) );
  CLKINVX1 U11 ( .A(B[16]), .Y(n18) );
  CLKINVX1 U12 ( .A(B[1]), .Y(n15) );
  CLKINVX1 U13 ( .A(B[2]), .Y(n14) );
  CLKINVX1 U14 ( .A(B[3]), .Y(n13) );
  CLKINVX1 U15 ( .A(B[4]), .Y(n12) );
  CLKINVX1 U16 ( .A(B[5]), .Y(n11) );
  CLKINVX1 U17 ( .A(B[6]), .Y(n10) );
  CLKINVX1 U18 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U19 ( .A(B[9]), .Y(n7) );
  CLKINVX1 U20 ( .A(B[11]), .Y(n5) );
  CLKINVX1 U21 ( .A(B[12]), .Y(n4) );
  CLKINVX1 U22 ( .A(B[13]), .Y(n19) );
  CLKINVX1 U23 ( .A(B[14]), .Y(n17) );
  CLKINVX1 U24 ( .A(B[15]), .Y(n20) );
  CLKINVX1 U25 ( .A(B[0]), .Y(n16) );
  XNOR2X1 U26 ( .A(A[19]), .B(carry[19]), .Y(DIFF[19]) );
  NAND2X1 U27 ( .A(n1), .B(n2), .Y(carry[19]) );
endmodule


module divider_4stage_20_5_to_16bit_2_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  wire   [20:0] carry;

  ADDFXL U2_15 ( .A(A[15]), .B(n18), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n21), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n20), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n4), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n5), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n6), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n7), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n8), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n9), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n10), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n11), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n12), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n13), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n15), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n16), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_17 ( .A(A[17]), .B(n19), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  INVXL U1 ( .A(A[18]), .Y(n1) );
  XNOR2XL U2 ( .A(A[18]), .B(carry[18]), .Y(DIFF[18]) );
  INVXL U3 ( .A(B[11]), .Y(n6) );
  INVXL U4 ( .A(B[9]), .Y(n8) );
  XNOR2X1 U5 ( .A(A[19]), .B(carry[19]), .Y(DIFF[19]) );
  NAND2X1 U6 ( .A(n1), .B(n2), .Y(carry[19]) );
  CLKINVX1 U7 ( .A(A[0]), .Y(n3) );
  XNOR2X1 U8 ( .A(n17), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U9 ( .A(carry[18]), .Y(n2) );
  CLKINVX1 U10 ( .A(B[17]), .Y(n19) );
  CLKINVX1 U11 ( .A(B[1]), .Y(n16) );
  NAND2X1 U12 ( .A(B[0]), .B(n3), .Y(carry[1]) );
  CLKINVX1 U13 ( .A(B[2]), .Y(n15) );
  CLKINVX1 U14 ( .A(B[3]), .Y(n14) );
  CLKINVX1 U15 ( .A(B[4]), .Y(n13) );
  CLKINVX1 U16 ( .A(B[5]), .Y(n12) );
  CLKINVX1 U17 ( .A(B[6]), .Y(n11) );
  CLKINVX1 U18 ( .A(B[7]), .Y(n10) );
  CLKINVX1 U19 ( .A(B[8]), .Y(n9) );
  CLKINVX1 U20 ( .A(B[10]), .Y(n7) );
  CLKINVX1 U21 ( .A(B[12]), .Y(n5) );
  CLKINVX1 U22 ( .A(B[13]), .Y(n4) );
  CLKINVX1 U23 ( .A(B[14]), .Y(n20) );
  CLKINVX1 U24 ( .A(B[16]), .Y(n21) );
  CLKINVX1 U25 ( .A(B[15]), .Y(n18) );
  CLKINVX1 U26 ( .A(B[0]), .Y(n17) );
endmodule


module divider_4stage_20_5_to_16bit_2_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [20:0] carry;

  ADDFXL U2_16 ( .A(A[16]), .B(n17), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n18), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n2), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n3), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n4), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n5), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n6), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n7), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n8), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n10), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n11), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n12), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n13), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n14), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n15), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_17 ( .A(A[17]), .B(n20), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n19), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  XNOR2XL U1 ( .A(n16), .B(A[0]), .Y(DIFF[0]) );
  INVXL U2 ( .A(B[12]), .Y(n4) );
  INVXL U3 ( .A(B[10]), .Y(n6) );
  NAND2BX1 U4 ( .AN(n16), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U6 ( .A(A[19]), .B(carry[19]), .Y(DIFF[19]) );
  CLKINVX1 U7 ( .A(B[1]), .Y(n15) );
  CLKINVX1 U8 ( .A(B[2]), .Y(n14) );
  CLKINVX1 U9 ( .A(B[3]), .Y(n13) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n12) );
  CLKINVX1 U11 ( .A(B[5]), .Y(n11) );
  CLKINVX1 U12 ( .A(B[6]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U14 ( .A(B[8]), .Y(n8) );
  CLKINVX1 U15 ( .A(B[9]), .Y(n7) );
  CLKINVX1 U16 ( .A(B[11]), .Y(n5) );
  CLKINVX1 U17 ( .A(B[13]), .Y(n3) );
  CLKINVX1 U18 ( .A(B[14]), .Y(n2) );
  CLKINVX1 U19 ( .A(B[15]), .Y(n19) );
  CLKINVX1 U20 ( .A(B[18]), .Y(n18) );
  CLKINVX1 U21 ( .A(B[16]), .Y(n17) );
  CLKINVX1 U22 ( .A(B[17]), .Y(n20) );
  CLKINVX1 U23 ( .A(B[0]), .Y(n16) );
endmodule


module divider_4stage_20_5_to_16bit_2_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [20:0] carry;

  ADDFXL U2_18 ( .A(A[18]), .B(n20), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n18), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n2), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n3), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n4), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n5), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n6), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n7), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n8), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n9), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n10), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n11), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n12), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n13), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n15), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n16), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_16 ( .A(A[16]), .B(n19), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  INVXL U1 ( .A(B[13]), .Y(n4) );
  INVXL U2 ( .A(B[11]), .Y(n6) );
  NAND2BX1 U3 ( .AN(n17), .B(n1), .Y(carry[1]) );
  XNOR3X1 U4 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(DIFF[19]) );
  XNOR2X1 U5 ( .A(n17), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U6 ( .A(B[1]), .Y(n16) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n15) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n14) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n13) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n12) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n11) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n9) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n8) );
  CLKINVX1 U15 ( .A(B[10]), .Y(n7) );
  CLKINVX1 U16 ( .A(B[12]), .Y(n5) );
  CLKINVX1 U17 ( .A(B[14]), .Y(n3) );
  CLKINVX1 U18 ( .A(B[15]), .Y(n2) );
  CLKINVX1 U19 ( .A(B[16]), .Y(n19) );
  CLKINVX1 U20 ( .A(B[17]), .Y(n18) );
  CLKINVX1 U21 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U22 ( .A(B[18]), .Y(n20) );
  CLKINVX1 U23 ( .A(B[0]), .Y(n17) );
endmodule


module divider_4stage_20_5_to_16bit_2 ( clk, load, dividand, dividor, q );
  input [19:0] dividand;
  input [4:0] dividor;
  output [15:0] q;
  input clk, load;
  wire   N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23,
         N24, N25, N26, N27, N28, N29, q_stage_1, N32, N33, N34, N35, N36, N37,
         N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51,
         q_stage_2, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65,
         N66, N67, N68, N69, N70, N71, N72, N73, q_stage_3, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97,
         N98, N99, N166, \r335/B[16] , \r335/B[1] , n2, n3, n5, n6, n8, n9,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n48, n50, n51, n52, n74, n75, n76, n77, n78,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349;
  wire   [19:0] dand0;
  wire   [19:0] dand4;
  wire   [19:0] dior0;
  wire   [19:0] dior4;
  wire   [19:0] dand1;
  wire   [19:0] dand2;
  wire   [19:0] dand3;
  wire   [2:0] cnt;

  DFFQX1 \cnt_reg[1]  ( .D(n301), .CK(clk), .Q(cnt[1]) );
  DFFQX1 \cnt_reg[0]  ( .D(n299), .CK(clk), .Q(cnt[0]) );
  DFFX1 \cnt_reg[2]  ( .D(n300), .CK(clk), .QN(n345) );
  DFFQX1 \dand4_reg[19]  ( .D(n321), .CK(clk), .Q(dand4[19]) );
  DFFQX1 \dand4_reg[18]  ( .D(n320), .CK(clk), .Q(dand4[18]) );
  DFFQX1 \dand4_reg[17]  ( .D(n319), .CK(clk), .Q(dand4[17]) );
  DFFQX1 \dand4_reg[16]  ( .D(n318), .CK(clk), .Q(dand4[16]) );
  DFFQX1 \dand4_reg[5]  ( .D(n307), .CK(clk), .Q(dand4[5]) );
  DFFQX1 \dand4_reg[4]  ( .D(n306), .CK(clk), .Q(dand4[4]) );
  EDFFTRX1 \dior4_reg[5]  ( .RN(n34), .D(dior4[9]), .E(n32), .CK(clk), .Q(
        dior4[5]) );
  EDFFTRX1 \dior4_reg[4]  ( .RN(n34), .D(dior4[8]), .E(n32), .CK(clk), .Q(
        dior4[4]) );
  EDFFX1 \dior4_reg[15]  ( .D(\r335/B[16] ), .E(N166), .CK(clk), .Q(dior4[15])
         );
  DFFQX1 \dand4_reg[1]  ( .D(n302), .CK(clk), .Q(dand4[1]) );
  DFFQX1 \dand4_reg[10]  ( .D(n312), .CK(clk), .Q(dand4[10]) );
  DFFQX1 \dand4_reg[9]  ( .D(n311), .CK(clk), .Q(dand4[9]) );
  DFFQX1 \dand4_reg[8]  ( .D(n310), .CK(clk), .Q(dand4[8]) );
  DFFQX1 \dand4_reg[7]  ( .D(n309), .CK(clk), .Q(dand4[7]) );
  DFFQX1 \dand4_reg[6]  ( .D(n308), .CK(clk), .Q(dand4[6]) );
  DFFQX1 \dand4_reg[3]  ( .D(n305), .CK(clk), .Q(dand4[3]) );
  DFFQX1 \dand4_reg[2]  ( .D(n304), .CK(clk), .Q(dand4[2]) );
  DFFQX1 \dand4_reg[15]  ( .D(n317), .CK(clk), .Q(dand4[15]) );
  DFFQX1 \dand4_reg[14]  ( .D(n316), .CK(clk), .Q(dand4[14]) );
  DFFQX1 \dand4_reg[13]  ( .D(n315), .CK(clk), .Q(dand4[13]) );
  DFFQX1 \dand4_reg[12]  ( .D(n314), .CK(clk), .Q(dand4[12]) );
  DFFQX1 \dand4_reg[11]  ( .D(n313), .CK(clk), .Q(dand4[11]) );
  DFFQX1 \dand4_reg[0]  ( .D(n303), .CK(clk), .Q(dand4[0]) );
  EDFFX1 \dior4_reg[14]  ( .D(n14), .E(N166), .CK(clk), .Q(dior4[14]) );
  EDFFX1 \dior4_reg[13]  ( .D(n13), .E(N166), .CK(clk), .Q(dior4[13]) );
  EDFFX1 \dior4_reg[12]  ( .D(n15), .E(N166), .CK(clk), .Q(dior4[12]) );
  EDFFX1 \dior4_reg[11]  ( .D(n20), .E(N166), .CK(clk), .Q(dior4[11]) );
  EDFFTRX1 \dior4_reg[10]  ( .RN(n34), .D(dior4[14]), .E(n32), .CK(clk), .Q(
        dior4[10]) );
  EDFFTRX1 \dior4_reg[9]  ( .RN(n34), .D(dior4[13]), .E(n32), .CK(clk), .Q(
        dior4[9]) );
  EDFFTRX1 \dior4_reg[8]  ( .RN(n34), .D(dior4[12]), .E(n32), .CK(clk), .Q(
        dior4[8]) );
  EDFFTRX1 \dior4_reg[3]  ( .RN(n34), .D(dior4[7]), .E(n32), .CK(clk), .QN(
        n349) );
  EDFFTRX1 \dior4_reg[2]  ( .RN(n34), .D(dior4[6]), .E(n32), .CK(clk), .QN(
        n348) );
  EDFFTRX1 \dior4_reg[1]  ( .RN(n34), .D(dior4[5]), .E(n32), .CK(clk), .QN(
        n347) );
  EDFFTRX1 \dior4_reg[0]  ( .RN(n34), .D(dior4[4]), .E(n32), .CK(clk), .QN(
        n346) );
  EDFFTRX1 \dior4_reg[7]  ( .RN(n34), .D(dior4[11]), .E(n32), .CK(clk), .Q(
        dior4[7]) );
  EDFFTRX1 \dior4_reg[6]  ( .RN(n34), .D(dior4[10]), .E(n32), .CK(clk), .Q(
        dior4[6]) );
  EDFFTRX1 \q_reg_reg[15]  ( .RN(n34), .D(q[11]), .E(n32), .CK(clk), .Q(q[15])
         );
  EDFFTRX1 \q_reg_reg[12]  ( .RN(n34), .D(q[8]), .E(n32), .CK(clk), .Q(q[12])
         );
  EDFFTRX1 \q_reg_reg[13]  ( .RN(n34), .D(q[9]), .E(n32), .CK(clk), .Q(q[13])
         );
  EDFFTRX1 \q_reg_reg[14]  ( .RN(n34), .D(q[10]), .E(n32), .CK(clk), .Q(q[14])
         );
  EDFFTRX1 \q_reg_reg[7]  ( .RN(n34), .D(q[3]), .E(n32), .CK(clk), .Q(q[7]) );
  EDFFTRX1 \q_reg_reg[11]  ( .RN(n34), .D(q[7]), .E(n32), .CK(clk), .Q(q[11])
         );
  EDFFTRX1 \q_reg_reg[4]  ( .RN(n34), .D(q[0]), .E(n32), .CK(clk), .Q(q[4]) );
  EDFFTRX1 \q_reg_reg[8]  ( .RN(n34), .D(q[4]), .E(n32), .CK(clk), .Q(q[8]) );
  EDFFTRX1 \q_reg_reg[5]  ( .RN(n34), .D(q[1]), .E(n32), .CK(clk), .Q(q[5]) );
  EDFFTRX1 \q_reg_reg[9]  ( .RN(n34), .D(q[5]), .E(n32), .CK(clk), .Q(q[9]) );
  EDFFTRX1 \q_reg_reg[6]  ( .RN(n34), .D(q[2]), .E(n32), .CK(clk), .Q(q[6]) );
  EDFFTRX1 \q_reg_reg[10]  ( .RN(n34), .D(q[6]), .E(n32), .CK(clk), .Q(q[10])
         );
  EDFFX1 \q_reg_reg[3]  ( .D(n6), .E(N166), .CK(clk), .Q(q[3]) );
  EDFFX1 \q_reg_reg[0]  ( .D(q_stage_3), .E(N166), .CK(clk), .Q(q[0]) );
  EDFFX1 \q_reg_reg[2]  ( .D(q_stage_1), .E(N166), .CK(clk), .Q(q[2]) );
  EDFFX1 \q_reg_reg[1]  ( .D(q_stage_2), .E(N166), .CK(clk), .Q(q[1]) );
  AND2X2 U3 ( .A(dior4[5]), .B(n33), .Y(n2) );
  CLKINVX1 U4 ( .A(q_stage_2), .Y(n292) );
  OA21XL U5 ( .A0(n231), .A1(n230), .B0(n229), .Y(n3) );
  NAND2X1 U6 ( .A(n3), .B(n228), .Y(q_stage_2) );
  OAI31XL U7 ( .A0(n119), .A1(n118), .A2(n117), .B0(n143), .Y(n120) );
  AO22X1 U8 ( .A0(n293), .A1(dand1[19]), .B0(n16), .B1(N51), .Y(dand2[19]) );
  OAI211X1 U9 ( .A0(dand2[16]), .A1(n232), .B0(n238), .C0(n227), .Y(n229) );
  CLKINVX1 U11 ( .A(q_stage_1), .Y(n293) );
  CLKINVX1 U12 ( .A(dand1[18]), .Y(n195) );
  OAI22X1 U14 ( .A0(n126), .A1(n125), .B0(n124), .B1(n123), .Y(n6) );
  OA21XL U15 ( .A0(\r335/B[16] ), .A1(n195), .B0(n197), .Y(n5) );
  AO22X1 U17 ( .A0(n292), .A1(dand2[15]), .B0(N69), .B1(q_stage_2), .Y(
        dand3[15]) );
  NAND2XL U18 ( .A(n5), .B(n178), .Y(q_stage_1) );
  AO22X1 U20 ( .A0(n293), .A1(dand1[9]), .B0(N41), .B1(q_stage_1), .Y(dand2[9]) );
  AO22XL U21 ( .A0(n293), .A1(dand1[1]), .B0(N33), .B1(q_stage_1), .Y(dand2[1]) );
  CLKBUFX2 U22 ( .A(load), .Y(n36) );
  AO22XL U23 ( .A0(n297), .A1(dand0[18]), .B0(N28), .B1(n6), .Y(dand1[18]) );
  AND2X2 U24 ( .A(n20), .B(n129), .Y(n51) );
  OAI211XL U25 ( .A0(n231), .A1(n230), .B0(n229), .C0(n228), .Y(n17) );
  AO22XL U26 ( .A0(n292), .A1(dand2[19]), .B0(n17), .B1(N73), .Y(dand3[19]) );
  INVXL U27 ( .A(n122), .Y(n143) );
  OAI211XL U28 ( .A0(dand2[12]), .A1(n184), .B0(n213), .C0(n215), .Y(n220) );
  AO22XL U29 ( .A0(n292), .A1(dand2[18]), .B0(N72), .B1(n17), .Y(dand3[18]) );
  AO22XL U30 ( .A0(n211), .A1(n210), .B0(n219), .B1(n211), .Y(n218) );
  OAI211XL U31 ( .A0(dand2[8]), .A1(n140), .B0(n222), .C0(n221), .Y(n223) );
  NOR2XL U32 ( .A(n220), .B(n219), .Y(n221) );
  AO22XL U33 ( .A0(n292), .A1(dand2[2]), .B0(N56), .B1(n17), .Y(dand3[2]) );
  INVX1 U34 ( .A(n172), .Y(n196) );
  AO22XL U35 ( .A0(n293), .A1(dand1[12]), .B0(N44), .B1(n16), .Y(dand2[12]) );
  AO22XL U36 ( .A0(n292), .A1(dand2[3]), .B0(N57), .B1(q_stage_2), .Y(dand3[3]) );
  AO22XL U37 ( .A0(n293), .A1(dand1[16]), .B0(N48), .B1(n16), .Y(dand2[16]) );
  AO22XL U38 ( .A0(n293), .A1(dand1[17]), .B0(N49), .B1(q_stage_1), .Y(
        dand2[17]) );
  AO22XL U39 ( .A0(n293), .A1(dand1[2]), .B0(N34), .B1(n16), .Y(dand2[2]) );
  AO22XL U40 ( .A0(n293), .A1(dand1[5]), .B0(N37), .B1(q_stage_1), .Y(dand2[5]) );
  AO22XL U41 ( .A0(n293), .A1(dand1[13]), .B0(N45), .B1(n16), .Y(dand2[13]) );
  AO22XL U42 ( .A0(n293), .A1(dand1[3]), .B0(N35), .B1(q_stage_1), .Y(dand2[3]) );
  AO22XL U43 ( .A0(n292), .A1(dand2[4]), .B0(N58), .B1(n17), .Y(dand3[4]) );
  AO22XL U44 ( .A0(n292), .A1(dand2[1]), .B0(N55), .B1(q_stage_2), .Y(dand3[1]) );
  AO22XL U45 ( .A0(n293), .A1(dand1[14]), .B0(N46), .B1(n16), .Y(dand2[14]) );
  AO22XL U46 ( .A0(n293), .A1(dand1[4]), .B0(N36), .B1(n16), .Y(dand2[4]) );
  AO22XL U47 ( .A0(n293), .A1(dand1[6]), .B0(N38), .B1(n16), .Y(dand2[6]) );
  AO22XL U48 ( .A0(n293), .A1(dand1[15]), .B0(N47), .B1(q_stage_1), .Y(
        dand2[15]) );
  AO22XL U49 ( .A0(n293), .A1(dand1[7]), .B0(N39), .B1(q_stage_1), .Y(dand2[7]) );
  AO22XL U50 ( .A0(n50), .A1(n48), .B0(n117), .B1(n50), .Y(n78) );
  CLKBUFX2 U51 ( .A(load), .Y(n35) );
  AO22XL U52 ( .A0(n292), .A1(dand2[12]), .B0(N66), .B1(n17), .Y(dand3[12]) );
  AO22XL U53 ( .A0(n292), .A1(dand2[17]), .B0(N71), .B1(q_stage_2), .Y(
        dand3[17]) );
  AO22XL U54 ( .A0(n292), .A1(dand2[16]), .B0(N70), .B1(n17), .Y(dand3[16]) );
  AO22XL U55 ( .A0(n292), .A1(dand2[11]), .B0(N65), .B1(n17), .Y(dand3[11]) );
  AO22XL U56 ( .A0(n292), .A1(dand2[7]), .B0(N61), .B1(q_stage_2), .Y(dand3[7]) );
  AO22XL U57 ( .A0(n292), .A1(dand2[13]), .B0(N67), .B1(n17), .Y(dand3[13]) );
  AO22XL U58 ( .A0(n292), .A1(dand2[8]), .B0(N62), .B1(n17), .Y(dand3[8]) );
  AO22XL U59 ( .A0(n292), .A1(dand2[14]), .B0(N68), .B1(n17), .Y(dand3[14]) );
  AO22XL U60 ( .A0(n292), .A1(dand2[10]), .B0(N64), .B1(n17), .Y(dand3[10]) );
  AO22XL U61 ( .A0(n292), .A1(dand2[6]), .B0(N60), .B1(n17), .Y(dand3[6]) );
  AO22XL U62 ( .A0(n292), .A1(dand2[9]), .B0(N63), .B1(q_stage_2), .Y(dand3[9]) );
  AO22XL U63 ( .A0(n292), .A1(dand2[5]), .B0(N59), .B1(q_stage_2), .Y(dand3[5]) );
  INVXL U64 ( .A(dand1[1]), .Y(n186) );
  INVXL U65 ( .A(dand1[0]), .Y(n185) );
  NAND2XL U66 ( .A(n33), .B(n324), .Y(N166) );
  OAI211XL U67 ( .A0(\r335/B[16] ), .A1(n195), .B0(n197), .C0(n178), .Y(n16)
         );
  INVXL U68 ( .A(dand0[0]), .Y(n127) );
  NAND2BXL U69 ( .AN(dand2[9]), .B(n18), .Y(n222) );
  AND2X2 U70 ( .A(n13), .B(n237), .Y(n212) );
  AO21XL U71 ( .A0(n132), .A1(n12), .B0(n108), .Y(n113) );
  INVXL U72 ( .A(n109), .Y(n138) );
  AO21XL U73 ( .A0(n290), .A1(n18), .B0(n245), .Y(n257) );
  AO22XL U74 ( .A0(n297), .A1(dand0[12]), .B0(N22), .B1(n6), .Y(dand1[12]) );
  AO22XL U75 ( .A0(n297), .A1(dand0[5]), .B0(N15), .B1(n6), .Y(dand1[5]) );
  AO22XL U76 ( .A0(n297), .A1(dand0[10]), .B0(N20), .B1(n6), .Y(dand1[10]) );
  AO22XL U77 ( .A0(n297), .A1(dand0[8]), .B0(N18), .B1(n6), .Y(dand1[8]) );
  OAI32XL U78 ( .A0(n278), .A1(n19), .A2(n244), .B0(dior0[14]), .B1(n280), .Y(
        n248) );
  AO22XL U79 ( .A0(n297), .A1(dand0[13]), .B0(N23), .B1(n6), .Y(dand1[13]) );
  AO22XL U80 ( .A0(n297), .A1(dand0[11]), .B0(N21), .B1(n6), .Y(dand1[11]) );
  AO22XL U81 ( .A0(n297), .A1(dand0[9]), .B0(N19), .B1(n6), .Y(dand1[9]) );
  AO22XL U82 ( .A0(n297), .A1(dand0[7]), .B0(N17), .B1(n6), .Y(dand1[7]) );
  AO22XL U83 ( .A0(n297), .A1(dand0[6]), .B0(N16), .B1(n6), .Y(dand1[6]) );
  AOI21XL U84 ( .A0(n278), .A1(n19), .B0(n244), .Y(n246) );
  OAI32XL U85 ( .A0(n290), .A1(n18), .A2(n245), .B0(dior0[12]), .B1(n291), .Y(
        n247) );
  INVXL U86 ( .A(dand3[1]), .Y(n285) );
  INVXL U87 ( .A(n19), .Y(n183) );
  INVXL U88 ( .A(n18), .Y(n182) );
  NAND2XL U89 ( .A(n32), .B(n33), .Y(n324) );
  NOR2XL U90 ( .A(n36), .B(n348), .Y(dior0[2]) );
  AND2XL U91 ( .A(dior4[7]), .B(n33), .Y(n11) );
  AND2XL U92 ( .A(dior4[9]), .B(n33), .Y(dior0[9]) );
  AND2XL U93 ( .A(dior4[14]), .B(n33), .Y(dior0[14]) );
  AND2XL U94 ( .A(dior4[8]), .B(n33), .Y(dior0[8]) );
  AND2XL U95 ( .A(dior4[6]), .B(n33), .Y(n12) );
  AO22XL U96 ( .A0(n34), .A1(dand4[12]), .B0(dividand[12]), .B1(n38), .Y(
        dand0[12]) );
  AO22XL U97 ( .A0(n33), .A1(dand4[3]), .B0(dividand[3]), .B1(n38), .Y(
        dand0[3]) );
  AO22XL U98 ( .A0(n33), .A1(dand4[4]), .B0(dividand[4]), .B1(n38), .Y(
        dand0[4]) );
  AO22XL U99 ( .A0(n33), .A1(dand4[8]), .B0(dividand[8]), .B1(n38), .Y(
        dand0[8]) );
  AO22XL U100 ( .A0(n34), .A1(dand4[10]), .B0(dividand[10]), .B1(n38), .Y(
        dand0[10]) );
  AND2XL U101 ( .A(dior4[13]), .B(n33), .Y(dior0[13]) );
  AO22XL U102 ( .A0(n33), .A1(dand4[9]), .B0(dividand[9]), .B1(n37), .Y(
        dand0[9]) );
  AO22XL U103 ( .A0(n33), .A1(dand4[5]), .B0(dividand[5]), .B1(n37), .Y(
        dand0[5]) );
  AO22XL U104 ( .A0(n33), .A1(dand4[1]), .B0(dividand[1]), .B1(n38), .Y(
        dand0[1]) );
  AO22XL U105 ( .A0(n34), .A1(dand4[13]), .B0(dividand[13]), .B1(n38), .Y(
        dand0[13]) );
  AO22XL U106 ( .A0(n34), .A1(dand4[11]), .B0(dividand[11]), .B1(n38), .Y(
        dand0[11]) );
  NOR2XL U107 ( .A(n35), .B(n346), .Y(dior0[0]) );
  AO22XL U108 ( .A0(n33), .A1(dand4[16]), .B0(dividand[16]), .B1(n38), .Y(
        dand0[16]) );
  AND2XL U109 ( .A(dior4[12]), .B(n33), .Y(dior0[12]) );
  AND2XL U110 ( .A(dior4[10]), .B(n33), .Y(dior0[10]) );
  NOR2XL U111 ( .A(n35), .B(n349), .Y(dior0[3]) );
  NOR2XL U112 ( .A(n36), .B(n347), .Y(dior0[1]) );
  AO22XL U113 ( .A0(n33), .A1(dand4[2]), .B0(dividand[2]), .B1(n38), .Y(
        dand0[2]) );
  AO22XL U114 ( .A0(n33), .A1(dand4[7]), .B0(dividand[7]), .B1(n37), .Y(
        dand0[7]) );
  AO22XL U115 ( .A0(n33), .A1(dand4[6]), .B0(dividand[6]), .B1(n37), .Y(
        dand0[6]) );
  AO22XL U116 ( .A0(n33), .A1(dand4[17]), .B0(dividand[17]), .B1(n38), .Y(
        dand0[17]) );
  AO22XL U117 ( .A0(n34), .A1(dand4[15]), .B0(dividand[15]), .B1(n38), .Y(
        dand0[15]) );
  AO22XL U118 ( .A0(n34), .A1(dand4[14]), .B0(dividand[14]), .B1(n38), .Y(
        dand0[14]) );
  CLKINVX1 U119 ( .A(n323), .Y(\r335/B[1] ) );
  NAND2XL U120 ( .A(dior4[4]), .B(n33), .Y(n323) );
  OAI2BB1XL U121 ( .A0N(n295), .A1N(dand4[19]), .B0(n344), .Y(n321) );
  OAI2BB1XL U122 ( .A0N(n295), .A1N(dand4[18]), .B0(n342), .Y(n320) );
  AOI22XL U123 ( .A0(n30), .A1(dand3[0]), .B0(N80), .B1(n9), .Y(n325) );
  AO21X1 U124 ( .A0(n295), .A1(dand4[1]), .B0(n8), .Y(n302) );
  AO22X1 U125 ( .A0(n25), .A1(dand3[1]), .B0(N81), .B1(n9), .Y(n8) );
  AO22XL U126 ( .A0(n33), .A1(dand4[19]), .B0(n37), .B1(dividand[19]), .Y(
        dand0[19]) );
  AO22XL U127 ( .A0(n33), .A1(dand4[18]), .B0(dividand[18]), .B1(n38), .Y(
        dand0[18]) );
  CLKINVX1 U128 ( .A(n298), .Y(\r335/B[16] ) );
  CLKINVX1 U129 ( .A(n23), .Y(n29) );
  CLKINVX1 U130 ( .A(n23), .Y(n27) );
  CLKINVX1 U131 ( .A(n23), .Y(n28) );
  CLKINVX1 U132 ( .A(n22), .Y(n25) );
  CLKINVX1 U133 ( .A(n22), .Y(n26) );
  CLKINVX1 U134 ( .A(n36), .Y(n33) );
  CLKINVX1 U135 ( .A(dand2[15]), .Y(n237) );
  CLKINVX1 U136 ( .A(n35), .Y(n34) );
  CLKINVX1 U137 ( .A(dand2[14]), .Y(n236) );
  CLKINVX1 U138 ( .A(dand2[7]), .Y(n243) );
  CLKINVX1 U139 ( .A(n343), .Y(n24) );
  CLKINVX1 U140 ( .A(n343), .Y(n23) );
  CLKINVX1 U141 ( .A(n343), .Y(n22) );
  CLKINVX1 U142 ( .A(dand3[14]), .Y(n282) );
  CLKINVX1 U143 ( .A(dand3[10]), .Y(n278) );
  CLKINVX1 U144 ( .A(dand3[6]), .Y(n288) );
  CLKINVX1 U145 ( .A(dand3[4]), .Y(n286) );
  CLKINVX1 U146 ( .A(dand3[8]), .Y(n290) );
  CLKINVX1 U147 ( .A(dand3[9]), .Y(n291) );
  CLKINVX1 U148 ( .A(dand3[5]), .Y(n287) );
  CLKINVX1 U149 ( .A(dand2[6]), .Y(n242) );
  CLKINVX1 U150 ( .A(dand3[11]), .Y(n280) );
  CLKINVX1 U151 ( .A(dand2[4]), .Y(n240) );
  CLKINVX1 U152 ( .A(N166), .Y(n295) );
  CLKINVX1 U153 ( .A(n74), .Y(n142) );
  CLKINVX1 U154 ( .A(n126), .Y(n135) );
  CLKINVX1 U155 ( .A(n231), .Y(n238) );
  AO22X1 U156 ( .A0(n292), .A1(dand2[0]), .B0(N54), .B1(n17), .Y(dand3[0]) );
  CLKINVX1 U157 ( .A(n6), .Y(n297) );
  AO22X1 U158 ( .A0(n293), .A1(dand1[18]), .B0(N50), .B1(n16), .Y(dand2[18])
         );
  AO22X1 U159 ( .A0(n293), .A1(dand1[8]), .B0(N40), .B1(n16), .Y(dand2[8]) );
  AO22X1 U160 ( .A0(n293), .A1(dand1[10]), .B0(N42), .B1(n16), .Y(dand2[10])
         );
  AO22X1 U161 ( .A0(n293), .A1(dand1[11]), .B0(N43), .B1(n16), .Y(dand2[11])
         );
  CLKBUFX3 U162 ( .A(load), .Y(n37) );
  CLKBUFX3 U163 ( .A(load), .Y(n38) );
  CLKINVX1 U164 ( .A(dand1[15]), .Y(n193) );
  AO22X1 U165 ( .A0(n293), .A1(dand1[0]), .B0(N32), .B1(n16), .Y(dand2[0]) );
  AND2X2 U166 ( .A(q_stage_3), .B(N166), .Y(n9) );
  NOR2X1 U167 ( .A(n295), .B(q_stage_3), .Y(n343) );
  CLKINVX1 U168 ( .A(n251), .Y(n281) );
  CLKINVX1 U169 ( .A(dand1[14]), .Y(n192) );
  CLKINVX1 U170 ( .A(dand1[6]), .Y(n189) );
  CLKINVX1 U171 ( .A(dand1[4]), .Y(n187) );
  CLKINVX1 U172 ( .A(dand1[7]), .Y(n190) );
  CLKINVX1 U173 ( .A(dand1[17]), .Y(n194) );
  CLKINVX1 U174 ( .A(dand1[19]), .Y(n197) );
  AO22X1 U175 ( .A0(n297), .A1(dand0[0]), .B0(N10), .B1(n6), .Y(dand1[0]) );
  AO22X1 U176 ( .A0(n297), .A1(dand0[1]), .B0(N11), .B1(n6), .Y(dand1[1]) );
  CLKINVX1 U177 ( .A(n160), .Y(n191) );
  CLKINVX1 U178 ( .A(dior0[14]), .Y(n184) );
  CLKINVX1 U179 ( .A(dand2[5]), .Y(n241) );
  CLKINVX1 U180 ( .A(dand0[3]), .Y(n131) );
  CLKINVX1 U181 ( .A(dior0[1]), .Y(n136) );
  AO22X1 U182 ( .A0(n297), .A1(dand0[15]), .B0(N25), .B1(n6), .Y(dand1[15]) );
  AO22X1 U183 ( .A0(n297), .A1(dand0[4]), .B0(N14), .B1(n6), .Y(dand1[4]) );
  AO22X1 U184 ( .A0(n297), .A1(dand0[2]), .B0(N12), .B1(n6), .Y(dand1[2]) );
  AO22X1 U185 ( .A0(n297), .A1(dand0[3]), .B0(N13), .B1(n6), .Y(dand1[3]) );
  AO22X1 U186 ( .A0(n297), .A1(dand0[16]), .B0(N26), .B1(n6), .Y(dand1[16]) );
  CLKINVX1 U187 ( .A(n2), .Y(n137) );
  CLKINVX1 U188 ( .A(n214), .Y(n235) );
  CLKINVX1 U189 ( .A(n20), .Y(n233) );
  CLKINVX1 U190 ( .A(dior0[12]), .Y(n141) );
  CLKINVX1 U191 ( .A(dior0[10]), .Y(n140) );
  CLKINVX1 U192 ( .A(dior0[8]), .Y(n139) );
  CLKINVX1 U193 ( .A(dand0[14]), .Y(n128) );
  CLKINVX1 U194 ( .A(dand0[2]), .Y(n130) );
  CLKINVX1 U195 ( .A(dand0[6]), .Y(n132) );
  CLKINVX1 U196 ( .A(dand0[15]), .Y(n129) );
  CLKINVX1 U197 ( .A(dand0[7]), .Y(n133) );
  CLKINVX1 U198 ( .A(dand3[16]), .Y(n284) );
  CLKINVX1 U199 ( .A(n246), .Y(n279) );
  CLKINVX1 U200 ( .A(dand3[7]), .Y(n289) );
  CLKINVX1 U201 ( .A(dand1[5]), .Y(n188) );
  CLKINVX1 U202 ( .A(dand3[15]), .Y(n283) );
  AO22X1 U203 ( .A0(n297), .A1(dand0[14]), .B0(N24), .B1(n6), .Y(dand1[14]) );
  AO22X1 U204 ( .A0(n297), .A1(dand0[17]), .B0(N27), .B1(n6), .Y(dand1[17]) );
  AO22X1 U205 ( .A0(n297), .A1(dand0[19]), .B0(n6), .B1(N29), .Y(dand1[19]) );
  CLKINVX1 U206 ( .A(dand0[17]), .Y(n134) );
  CLKINVX1 U207 ( .A(dand2[0]), .Y(n234) );
  CLKINVX1 U208 ( .A(dand2[1]), .Y(n239) );
  CLKINVX1 U209 ( .A(dior0[9]), .Y(n181) );
  CLKINVX1 U210 ( .A(n21), .Y(n180) );
  CLKINVX1 U211 ( .A(n13), .Y(n179) );
  CLKINVX1 U212 ( .A(n12), .Y(n277) );
  OAI32X1 U213 ( .A0(n296), .A1(n324), .A2(n294), .B0(n322), .B1(n32), .Y(n300) );
  CLKINVX1 U214 ( .A(n14), .Y(n232) );
  CLKINVX1 U215 ( .A(n15), .Y(n276) );
  AOI22X1 U216 ( .A0(n26), .A1(dand3[18]), .B0(N98), .B1(n9), .Y(n342) );
  CLKBUFX3 U217 ( .A(dior0[11]), .Y(n18) );
  AND2X2 U218 ( .A(dior4[11]), .B(n33), .Y(dior0[11]) );
  CLKBUFX3 U219 ( .A(dior0[15]), .Y(n20) );
  AO22X1 U220 ( .A0(n33), .A1(dior4[15]), .B0(dividor[0]), .B1(n37), .Y(
        dior0[15]) );
  AOI22X1 U221 ( .A0(n31), .A1(dand3[19]), .B0(N99), .B1(n9), .Y(n344) );
  AO22X1 U222 ( .A0(n34), .A1(dand4[0]), .B0(dividand[0]), .B1(n37), .Y(
        dand0[0]) );
  CLKBUFX3 U223 ( .A(dior0[13]), .Y(n19) );
  CLKBUFX3 U224 ( .A(dior0[3]), .Y(n21) );
  OAI2BB1X1 U225 ( .A0N(n295), .A1N(dand4[17]), .B0(n341), .Y(n319) );
  AOI22X1 U226 ( .A0(n31), .A1(dand3[17]), .B0(N97), .B1(n9), .Y(n341) );
  OAI2BB1X1 U227 ( .A0N(n295), .A1N(dand4[12]), .B0(n336), .Y(n314) );
  AOI22X1 U228 ( .A0(n30), .A1(dand3[12]), .B0(N92), .B1(n9), .Y(n336) );
  CLKINVX1 U229 ( .A(n24), .Y(n30) );
  OAI2BB1X1 U230 ( .A0N(n295), .A1N(dand4[13]), .B0(n337), .Y(n315) );
  AOI22X1 U231 ( .A0(n31), .A1(dand3[13]), .B0(N93), .B1(n9), .Y(n337) );
  CLKINVX1 U232 ( .A(n24), .Y(n31) );
  OAI2BB1X1 U233 ( .A0N(n295), .A1N(dand4[14]), .B0(n338), .Y(n316) );
  AOI22X1 U234 ( .A0(n31), .A1(dand3[14]), .B0(N94), .B1(n9), .Y(n338) );
  OAI2BB1X1 U235 ( .A0N(n295), .A1N(dand4[15]), .B0(n339), .Y(n317) );
  AOI22X1 U236 ( .A0(n30), .A1(dand3[15]), .B0(N95), .B1(n9), .Y(n339) );
  OAI2BB1X1 U237 ( .A0N(n295), .A1N(dand4[16]), .B0(n340), .Y(n318) );
  AOI22X1 U238 ( .A0(n25), .A1(dand3[16]), .B0(N96), .B1(n9), .Y(n340) );
  NAND2X1 U239 ( .A(dividor[4]), .B(n37), .Y(n298) );
  AND2X2 U240 ( .A(dividor[2]), .B(n37), .Y(n13) );
  OAI2BB1X1 U241 ( .A0N(n295), .A1N(dand4[0]), .B0(n325), .Y(n303) );
  OAI2BB1X1 U242 ( .A0N(n295), .A1N(dand4[11]), .B0(n335), .Y(n313) );
  AOI22X1 U243 ( .A0(n29), .A1(dand3[11]), .B0(N91), .B1(n9), .Y(n335) );
  OAI2BB1X1 U244 ( .A0N(n295), .A1N(dand4[2]), .B0(n326), .Y(n304) );
  AOI22X1 U245 ( .A0(n26), .A1(dand3[2]), .B0(N82), .B1(n9), .Y(n326) );
  OAI2BB1X1 U246 ( .A0N(n295), .A1N(dand4[3]), .B0(n327), .Y(n305) );
  AOI22X1 U247 ( .A0(n26), .A1(dand3[3]), .B0(N83), .B1(n9), .Y(n327) );
  OAI2BB1X1 U248 ( .A0N(n295), .A1N(dand4[4]), .B0(n328), .Y(n306) );
  AOI22X1 U249 ( .A0(n27), .A1(dand3[4]), .B0(N84), .B1(n9), .Y(n328) );
  OAI2BB1X1 U250 ( .A0N(n295), .A1N(dand4[5]), .B0(n329), .Y(n307) );
  AOI22X1 U251 ( .A0(n28), .A1(dand3[5]), .B0(N85), .B1(n9), .Y(n329) );
  OAI2BB1X1 U252 ( .A0N(n295), .A1N(dand4[6]), .B0(n330), .Y(n308) );
  AOI22X1 U253 ( .A0(n29), .A1(dand3[6]), .B0(N86), .B1(n9), .Y(n330) );
  OAI2BB1X1 U254 ( .A0N(n295), .A1N(dand4[7]), .B0(n331), .Y(n309) );
  AOI22X1 U255 ( .A0(n29), .A1(dand3[7]), .B0(N87), .B1(n9), .Y(n331) );
  OAI2BB1X1 U256 ( .A0N(n295), .A1N(dand4[8]), .B0(n332), .Y(n310) );
  AOI22X1 U257 ( .A0(n27), .A1(dand3[8]), .B0(N88), .B1(n9), .Y(n332) );
  OAI2BB1X1 U258 ( .A0N(n295), .A1N(dand4[9]), .B0(n333), .Y(n311) );
  AOI22X1 U259 ( .A0(n28), .A1(dand3[9]), .B0(N89), .B1(n9), .Y(n333) );
  OAI2BB1X1 U260 ( .A0N(n295), .A1N(dand4[10]), .B0(n334), .Y(n312) );
  AOI22X1 U261 ( .A0(n27), .A1(dand3[10]), .B0(N90), .B1(n9), .Y(n334) );
  OA21XL U262 ( .A0(cnt[0]), .A1(n324), .B0(N166), .Y(n322) );
  OAI32X1 U263 ( .A0(n294), .A1(cnt[1]), .A2(n324), .B0(n322), .B1(n296), .Y(
        n301) );
  OAI221XL U264 ( .A0(cnt[0]), .A1(n324), .B0(N166), .B1(n294), .C0(n34), .Y(
        n299) );
  CLKBUFX3 U265 ( .A(n345), .Y(n32) );
  CLKINVX1 U266 ( .A(cnt[0]), .Y(n294) );
  CLKINVX1 U267 ( .A(cnt[1]), .Y(n296) );
  AND2X2 U268 ( .A(dividor[3]), .B(n37), .Y(n14) );
  AND2X2 U269 ( .A(dividor[1]), .B(n37), .Y(n15) );
  NOR2X1 U270 ( .A(n298), .B(dand0[19]), .Y(n126) );
  NAND2X1 U271 ( .A(n13), .B(n134), .Y(n42) );
  NAND2BX1 U272 ( .AN(dand0[18]), .B(n14), .Y(n41) );
  AND2X1 U273 ( .A(n42), .B(n41), .Y(n40) );
  OAI2BB2XL U274 ( .B0(n13), .B1(n134), .A0N(n276), .A1N(dand0[16]), .Y(n39)
         );
  AOI222XL U275 ( .A0(dand0[19]), .A1(n298), .B0(dand0[18]), .B1(n232), .C0(
        n40), .C1(n39), .Y(n125) );
  OAI211X1 U276 ( .A0(dand0[16]), .A1(n276), .B0(n42), .C0(n41), .Y(n124) );
  NAND2BX1 U277 ( .AN(dand0[13]), .B(n19), .Y(n52) );
  AOI21X1 U278 ( .A0(n128), .A1(dior0[14]), .B0(n51), .Y(n75) );
  OAI211X1 U279 ( .A0(dand0[12]), .A1(n141), .B0(n52), .C0(n75), .Y(n118) );
  NAND2BX1 U280 ( .AN(dand0[11]), .B(n18), .Y(n43) );
  AOI32X1 U281 ( .A0(dand0[10]), .A1(n140), .A2(n43), .B0(n182), .B1(dand0[11]), .Y(n50) );
  NAND2BX1 U282 ( .AN(dand0[9]), .B(dior0[9]), .Y(n116) );
  AOI32X1 U283 ( .A0(dand0[8]), .A1(n139), .A2(n116), .B0(n181), .B1(dand0[9]), 
        .Y(n48) );
  OAI21XL U284 ( .A0(dand0[10]), .A1(n140), .B0(n43), .Y(n117) );
  OAI32X1 U285 ( .A0(n128), .A1(dior0[14]), .A2(n51), .B0(n20), .B1(n129), .Y(
        n76) );
  AOI32X1 U286 ( .A0(dand0[12]), .A1(n141), .A2(n52), .B0(n183), .B1(dand0[13]), .Y(n74) );
  OAI22XL U287 ( .A0(n76), .A1(n142), .B0(n75), .B1(n76), .Y(n77) );
  OAI21XL U288 ( .A0(n118), .A1(n78), .B0(n77), .Y(n122) );
  NOR2BX1 U289 ( .AN(n21), .B(dand0[3]), .Y(n104) );
  AOI21X1 U290 ( .A0(dior0[2]), .A1(n130), .B0(n104), .Y(n105) );
  OAI32X1 U291 ( .A0(n130), .A1(dior0[2]), .A2(n104), .B0(n21), .B1(n131), .Y(
        n107) );
  NAND2BX1 U292 ( .AN(dand0[5]), .B(n2), .Y(n110) );
  OAI221XL U293 ( .A0(dand0[4]), .A1(n323), .B0(n105), .B1(n107), .C0(n110), 
        .Y(n115) );
  AOI2BB2X1 U294 ( .B0(dior0[0]), .B1(n127), .A0N(n136), .A1N(dand0[1]), .Y(
        n106) );
  AOI211X1 U295 ( .A0(dand0[1]), .A1(n136), .B0(n107), .C0(n106), .Y(n114) );
  AND2X1 U296 ( .A(n11), .B(n133), .Y(n108) );
  OAI32X1 U297 ( .A0(n132), .A1(n12), .A2(n108), .B0(n11), .B1(n133), .Y(n109)
         );
  AOI32X1 U298 ( .A0(dand0[4]), .A1(n323), .A2(n110), .B0(n137), .B1(dand0[5]), 
        .Y(n111) );
  AO22X1 U299 ( .A0(n138), .A1(n111), .B0(n113), .B1(n138), .Y(n112) );
  OAI31XL U300 ( .A0(n115), .A1(n114), .A2(n113), .B0(n112), .Y(n121) );
  OAI21XL U301 ( .A0(dand0[8]), .A1(n139), .B0(n116), .Y(n119) );
  OAI211X1 U302 ( .A0(n122), .A1(n121), .B0(n120), .C0(n135), .Y(n123) );
  NAND2X1 U303 ( .A(\r335/B[16] ), .B(n195), .Y(n177) );
  NAND2X1 U304 ( .A(n14), .B(n194), .Y(n176) );
  OAI2BB2XL U305 ( .B0(n14), .B1(n194), .A0N(n179), .A1N(dand1[16]), .Y(n175)
         );
  AND2X1 U306 ( .A(dior0[8]), .B(n190), .Y(n150) );
  AOI21X1 U307 ( .A0(n189), .A1(n11), .B0(n150), .Y(n152) );
  AO22X1 U308 ( .A0(n185), .A1(dior0[1]), .B0(n186), .B1(dior0[2]), .Y(n144)
         );
  NAND2BX1 U309 ( .AN(dand1[3]), .B(\r335/B[1] ), .Y(n145) );
  AOI32X1 U310 ( .A0(dand1[2]), .A1(n180), .A2(n145), .B0(n323), .B1(dand1[3]), 
        .Y(n147) );
  OAI211X1 U311 ( .A0(dior0[2]), .A1(n186), .B0(n144), .C0(n147), .Y(n149) );
  OAI21XL U312 ( .A0(dand1[2]), .A1(n180), .B0(n145), .Y(n146) );
  NOR2BX1 U313 ( .AN(n12), .B(dand1[5]), .Y(n151) );
  AOI221XL U314 ( .A0(n147), .A1(n146), .B0(n2), .B1(n187), .C0(n151), .Y(n148) );
  NAND3X1 U315 ( .A(n152), .B(n149), .C(n148), .Y(n166) );
  OAI32X1 U316 ( .A0(n189), .A1(n11), .A2(n150), .B0(dior0[8]), .B1(n190), .Y(
        n154) );
  OAI32X1 U317 ( .A0(n187), .A1(n2), .A2(n151), .B0(n12), .B1(n188), .Y(n153)
         );
  OAI22XL U318 ( .A0(n154), .A1(n153), .B0(n152), .B1(n154), .Y(n165) );
  NAND2BX1 U319 ( .AN(dand1[13]), .B(dior0[14]), .Y(n159) );
  AND2X1 U320 ( .A(n15), .B(n193), .Y(n158) );
  AOI21X1 U321 ( .A0(n192), .A1(n20), .B0(n158), .Y(n161) );
  OAI211X1 U322 ( .A0(dand1[12]), .A1(n183), .B0(n159), .C0(n161), .Y(n170) );
  NAND2BX1 U323 ( .AN(dand1[11]), .B(dior0[12]), .Y(n155) );
  AOI32X1 U324 ( .A0(dand1[10]), .A1(n182), .A2(n155), .B0(n141), .B1(
        dand1[11]), .Y(n157) );
  NAND2BX1 U325 ( .AN(dand1[9]), .B(dior0[10]), .Y(n167) );
  AOI32X1 U326 ( .A0(dand1[8]), .A1(n181), .A2(n167), .B0(n140), .B1(dand1[9]), 
        .Y(n156) );
  OAI21XL U327 ( .A0(dand1[10]), .A1(n182), .B0(n155), .Y(n169) );
  AO22X1 U328 ( .A0(n157), .A1(n156), .B0(n169), .B1(n157), .Y(n164) );
  OAI32X1 U329 ( .A0(n192), .A1(n20), .A2(n158), .B0(n15), .B1(n193), .Y(n162)
         );
  AOI32X1 U330 ( .A0(dand1[12]), .A1(n183), .A2(n159), .B0(n184), .B1(
        dand1[13]), .Y(n160) );
  OAI22XL U331 ( .A0(n162), .A1(n191), .B0(n161), .B1(n162), .Y(n163) );
  OA21XL U332 ( .A0(n170), .A1(n164), .B0(n163), .Y(n168) );
  NAND3X1 U333 ( .A(n166), .B(n165), .C(n168), .Y(n174) );
  OAI21XL U334 ( .A0(dand1[8]), .A1(n181), .B0(n167), .Y(n171) );
  OAI31XL U335 ( .A0(n171), .A1(n170), .A2(n169), .B0(n168), .Y(n173) );
  OAI211X1 U336 ( .A0(n179), .A1(dand1[16]), .B0(n177), .C0(n176), .Y(n172) );
  AOI33X1 U337 ( .A0(n177), .A1(n176), .A2(n175), .B0(n174), .B1(n173), .B2(
        n196), .Y(n178) );
  NOR2X1 U338 ( .A(n298), .B(dand2[17]), .Y(n231) );
  AOI22X1 U339 ( .A0(dand2[16]), .A1(n232), .B0(dand2[17]), .B1(n298), .Y(n230) );
  AND2X1 U340 ( .A(dior0[9]), .B(n243), .Y(n204) );
  AOI21X1 U341 ( .A0(n242), .A1(dior0[8]), .B0(n204), .Y(n206) );
  AO22X1 U342 ( .A0(n234), .A1(dior0[2]), .B0(n239), .B1(n21), .Y(n198) );
  NAND2BX1 U343 ( .AN(dand2[3]), .B(n2), .Y(n199) );
  AOI32X1 U344 ( .A0(dand2[2]), .A1(n323), .A2(n199), .B0(n137), .B1(dand2[3]), 
        .Y(n201) );
  OAI211X1 U345 ( .A0(n21), .A1(n239), .B0(n198), .C0(n201), .Y(n203) );
  OAI21XL U346 ( .A0(dand2[2]), .A1(n323), .B0(n199), .Y(n200) );
  NOR2BX1 U347 ( .AN(n11), .B(dand2[5]), .Y(n205) );
  AOI221XL U348 ( .A0(n201), .A1(n200), .B0(n12), .B1(n240), .C0(n205), .Y(
        n202) );
  NAND3X1 U349 ( .A(n206), .B(n203), .C(n202), .Y(n226) );
  OAI32X1 U350 ( .A0(n242), .A1(dior0[8]), .A2(n204), .B0(dior0[9]), .B1(n243), 
        .Y(n208) );
  OAI32X1 U351 ( .A0(n240), .A1(n12), .A2(n205), .B0(n11), .B1(n241), .Y(n207)
         );
  OAI22XL U352 ( .A0(n208), .A1(n207), .B0(n206), .B1(n208), .Y(n225) );
  NAND2BX1 U353 ( .AN(dand2[13]), .B(n20), .Y(n213) );
  AOI21X1 U354 ( .A0(n236), .A1(n15), .B0(n212), .Y(n215) );
  NAND2BX1 U355 ( .AN(dand2[11]), .B(n19), .Y(n209) );
  AOI32X1 U356 ( .A0(dand2[10]), .A1(n141), .A2(n209), .B0(n183), .B1(
        dand2[11]), .Y(n211) );
  AOI32X1 U357 ( .A0(dand2[8]), .A1(n140), .A2(n222), .B0(n182), .B1(dand2[9]), 
        .Y(n210) );
  OAI21XL U358 ( .A0(dand2[10]), .A1(n141), .B0(n209), .Y(n219) );
  OAI32X1 U359 ( .A0(n236), .A1(n15), .A2(n212), .B0(n13), .B1(n237), .Y(n216)
         );
  AOI32X1 U360 ( .A0(dand2[12]), .A1(n184), .A2(n213), .B0(n233), .B1(
        dand2[13]), .Y(n214) );
  OAI22XL U361 ( .A0(n216), .A1(n235), .B0(n215), .B1(n216), .Y(n217) );
  OA21XL U362 ( .A0(n220), .A1(n218), .B0(n217), .Y(n224) );
  AOI32X1 U363 ( .A0(n226), .A1(n225), .A2(n224), .B0(n224), .B1(n223), .Y(
        n227) );
  NOR2X1 U364 ( .A(dand2[19]), .B(dand2[18]), .Y(n228) );
  AND2X1 U365 ( .A(dior0[12]), .B(n291), .Y(n245) );
  OR2X1 U366 ( .A(dand3[13]), .B(n276), .Y(n250) );
  NOR2BX1 U367 ( .AN(n14), .B(dand3[15]), .Y(n249) );
  AOI21X1 U368 ( .A0(n282), .A1(n13), .B0(n249), .Y(n252) );
  OAI211X1 U369 ( .A0(dand3[12]), .A1(n233), .B0(n250), .C0(n252), .Y(n256) );
  NOR2BX1 U370 ( .AN(dior0[14]), .B(dand3[11]), .Y(n244) );
  OAI22XL U371 ( .A0(n248), .A1(n247), .B0(n246), .B1(n248), .Y(n255) );
  OAI32X1 U372 ( .A0(n282), .A1(n13), .A2(n249), .B0(n14), .B1(n283), .Y(n253)
         );
  AOI32X1 U373 ( .A0(dand3[12]), .A1(n233), .A2(n250), .B0(n276), .B1(
        dand3[13]), .Y(n251) );
  OAI22XL U374 ( .A0(n253), .A1(n281), .B0(n252), .B1(n253), .Y(n254) );
  OA21XL U375 ( .A0(n256), .A1(n255), .B0(n254), .Y(n269) );
  OAI31XL U376 ( .A0(n257), .A1(n256), .A2(n279), .B0(n269), .Y(n273) );
  NOR2BX1 U377 ( .AN(dior0[10]), .B(dand3[7]), .Y(n264) );
  AOI21X1 U378 ( .A0(n288), .A1(dior0[9]), .B0(n264), .Y(n266) );
  OAI2BB2XL U379 ( .B0(dand3[0]), .B1(n180), .A0N(n285), .A1N(\r335/B[1] ), 
        .Y(n258) );
  OR2X1 U380 ( .A(dand3[3]), .B(n277), .Y(n259) );
  AOI32X1 U381 ( .A0(dand3[2]), .A1(n137), .A2(n259), .B0(n277), .B1(dand3[3]), 
        .Y(n261) );
  OAI211X1 U382 ( .A0(\r335/B[1] ), .A1(n285), .B0(n258), .C0(n261), .Y(n263)
         );
  OAI21XL U383 ( .A0(dand3[2]), .A1(n137), .B0(n259), .Y(n260) );
  AND2X1 U384 ( .A(dior0[8]), .B(n287), .Y(n265) );
  AOI221XL U385 ( .A0(n261), .A1(n260), .B0(n11), .B1(n286), .C0(n265), .Y(
        n262) );
  NAND3X1 U386 ( .A(n266), .B(n263), .C(n262), .Y(n271) );
  OAI32X1 U387 ( .A0(n288), .A1(dior0[9]), .A2(n264), .B0(dior0[10]), .B1(n289), .Y(n268) );
  OAI32X1 U388 ( .A0(n286), .A1(n11), .A2(n265), .B0(dior0[8]), .B1(n287), .Y(
        n267) );
  OAI22XL U389 ( .A0(n268), .A1(n267), .B0(n266), .B1(n268), .Y(n270) );
  NAND3X1 U390 ( .A(n271), .B(n270), .C(n269), .Y(n272) );
  OAI211X1 U391 ( .A0(dand3[16]), .A1(n298), .B0(n273), .C0(n272), .Y(n275) );
  NOR3X1 U392 ( .A(dand3[17]), .B(dand3[19]), .C(dand3[18]), .Y(n274) );
  OAI211X1 U393 ( .A0(\r335/B[16] ), .A1(n284), .B0(n275), .C0(n274), .Y(
        q_stage_3) );
  divider_4stage_20_5_to_16bit_2_DW01_sub_0 r336 ( .A(dand3), .B({1'b0, 1'b0, 
        1'b0, \r335/B[16] , n14, n13, n15, n20, dior0[14], n19, dior0[12], n18, 
        dior0[10:8], n11, n12, n2, \r335/B[1] , n21}), .CI(1'b0), .DIFF({N99, 
        N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, 
        N84, N83, N82, N81, N80}) );
  divider_4stage_20_5_to_16bit_2_DW01_sub_1 sub_297 ( .A(dand2), .B({1'b0, 
        1'b0, \r335/B[16] , n14, n13, n15, n20, dior0[14], n19, dior0[12], n18, 
        dior0[10:8], n11, n12, n2, \r335/B[1] , n21, dior0[2]}), .CI(1'b0), 
        .DIFF({N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, 
        N60, N59, N58, N57, N56, N55, N54}) );
  divider_4stage_20_5_to_16bit_2_DW01_sub_2 sub_292 ( .A(dand1), .B({1'b0, 
        \r335/B[16] , n14, n13, n15, n20, dior0[14], n19, dior0[12], n18, 
        dior0[10:8], n11, n12, n2, \r335/B[1] , n21, dior0[2:1]}), .CI(1'b0), 
        .DIFF({N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, 
        N38, N37, N36, N35, N34, N33, N32}) );
  divider_4stage_20_5_to_16bit_2_DW01_sub_3 sub_287 ( .A(dand0), .B({
        \r335/B[16] , n14, n13, n15, n20, dior0[14], n19, dior0[12], n18, 
        dior0[10:8], n11, n12, n2, \r335/B[1] , n21, dior0[2:0]}), .CI(1'b0), 
        .DIFF({N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, 
        N16, N15, N14, N13, N12, N11, N10}) );
endmodule


module divider_4stage_20_5_to_16bit_1_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [20:0] carry;

  ADDFXL U2_15 ( .A(A[15]), .B(n20), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n17), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n19), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n4), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n5), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n6), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n7), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n8), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n10), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n11), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n12), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n13), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n14), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n15), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_16 ( .A(A[16]), .B(n18), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  OR2XL U1 ( .A(A[17]), .B(carry[17]), .Y(carry[18]) );
  INVXL U2 ( .A(B[10]), .Y(n6) );
  INVXL U3 ( .A(B[8]), .Y(n8) );
  NAND2BX1 U4 ( .AN(n16), .B(n3), .Y(carry[1]) );
  XNOR2XL U5 ( .A(A[18]), .B(carry[18]), .Y(DIFF[18]) );
  XNOR2XL U6 ( .A(n16), .B(A[0]), .Y(DIFF[0]) );
  XNOR2XL U7 ( .A(A[17]), .B(carry[17]), .Y(DIFF[17]) );
  CLKINVX1 U8 ( .A(A[0]), .Y(n3) );
  CLKINVX1 U9 ( .A(carry[18]), .Y(n2) );
  CLKINVX1 U10 ( .A(A[18]), .Y(n1) );
  CLKINVX1 U11 ( .A(B[16]), .Y(n18) );
  CLKINVX1 U12 ( .A(B[1]), .Y(n15) );
  CLKINVX1 U13 ( .A(B[2]), .Y(n14) );
  CLKINVX1 U14 ( .A(B[3]), .Y(n13) );
  CLKINVX1 U15 ( .A(B[4]), .Y(n12) );
  CLKINVX1 U16 ( .A(B[5]), .Y(n11) );
  CLKINVX1 U17 ( .A(B[6]), .Y(n10) );
  CLKINVX1 U18 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U19 ( .A(B[9]), .Y(n7) );
  CLKINVX1 U20 ( .A(B[11]), .Y(n5) );
  CLKINVX1 U21 ( .A(B[12]), .Y(n4) );
  CLKINVX1 U22 ( .A(B[13]), .Y(n19) );
  CLKINVX1 U23 ( .A(B[14]), .Y(n17) );
  CLKINVX1 U24 ( .A(B[15]), .Y(n20) );
  CLKINVX1 U25 ( .A(B[0]), .Y(n16) );
  XNOR2X1 U26 ( .A(A[19]), .B(carry[19]), .Y(DIFF[19]) );
  NAND2X1 U27 ( .A(n1), .B(n2), .Y(carry[19]) );
endmodule


module divider_4stage_20_5_to_16bit_1_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  wire   [20:0] carry;

  ADDFXL U2_15 ( .A(A[15]), .B(n18), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n21), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n20), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n4), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n5), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n6), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n7), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n8), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n9), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n10), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n11), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n12), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n13), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n15), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n16), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_17 ( .A(A[17]), .B(n19), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  INVXL U1 ( .A(A[18]), .Y(n1) );
  XNOR2XL U2 ( .A(A[18]), .B(carry[18]), .Y(DIFF[18]) );
  INVXL U3 ( .A(B[11]), .Y(n6) );
  INVXL U4 ( .A(B[9]), .Y(n8) );
  XNOR2X1 U5 ( .A(A[19]), .B(carry[19]), .Y(DIFF[19]) );
  NAND2X1 U6 ( .A(n1), .B(n2), .Y(carry[19]) );
  CLKINVX1 U7 ( .A(A[0]), .Y(n3) );
  XNOR2X1 U8 ( .A(n17), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U9 ( .A(carry[18]), .Y(n2) );
  CLKINVX1 U10 ( .A(B[17]), .Y(n19) );
  CLKINVX1 U11 ( .A(B[1]), .Y(n16) );
  NAND2X1 U12 ( .A(B[0]), .B(n3), .Y(carry[1]) );
  CLKINVX1 U13 ( .A(B[2]), .Y(n15) );
  CLKINVX1 U14 ( .A(B[3]), .Y(n14) );
  CLKINVX1 U15 ( .A(B[4]), .Y(n13) );
  CLKINVX1 U16 ( .A(B[5]), .Y(n12) );
  CLKINVX1 U17 ( .A(B[6]), .Y(n11) );
  CLKINVX1 U18 ( .A(B[7]), .Y(n10) );
  CLKINVX1 U19 ( .A(B[8]), .Y(n9) );
  CLKINVX1 U20 ( .A(B[10]), .Y(n7) );
  CLKINVX1 U21 ( .A(B[12]), .Y(n5) );
  CLKINVX1 U22 ( .A(B[13]), .Y(n4) );
  CLKINVX1 U23 ( .A(B[14]), .Y(n20) );
  CLKINVX1 U24 ( .A(B[16]), .Y(n21) );
  CLKINVX1 U25 ( .A(B[15]), .Y(n18) );
  CLKINVX1 U26 ( .A(B[0]), .Y(n17) );
endmodule


module divider_4stage_20_5_to_16bit_1_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [20:0] carry;

  ADDFXL U2_16 ( .A(A[16]), .B(n17), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n18), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n2), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n3), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n4), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n5), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n6), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n7), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n8), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n10), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n11), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n12), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n13), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n14), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n15), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_17 ( .A(A[17]), .B(n20), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n19), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  XNOR2XL U1 ( .A(n16), .B(A[0]), .Y(DIFF[0]) );
  INVXL U2 ( .A(B[12]), .Y(n4) );
  INVXL U3 ( .A(B[10]), .Y(n6) );
  NAND2BX1 U4 ( .AN(n16), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U6 ( .A(A[19]), .B(carry[19]), .Y(DIFF[19]) );
  CLKINVX1 U7 ( .A(B[1]), .Y(n15) );
  CLKINVX1 U8 ( .A(B[2]), .Y(n14) );
  CLKINVX1 U9 ( .A(B[3]), .Y(n13) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n12) );
  CLKINVX1 U11 ( .A(B[5]), .Y(n11) );
  CLKINVX1 U12 ( .A(B[6]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U14 ( .A(B[8]), .Y(n8) );
  CLKINVX1 U15 ( .A(B[9]), .Y(n7) );
  CLKINVX1 U16 ( .A(B[11]), .Y(n5) );
  CLKINVX1 U17 ( .A(B[13]), .Y(n3) );
  CLKINVX1 U18 ( .A(B[14]), .Y(n2) );
  CLKINVX1 U19 ( .A(B[15]), .Y(n19) );
  CLKINVX1 U20 ( .A(B[18]), .Y(n18) );
  CLKINVX1 U21 ( .A(B[16]), .Y(n17) );
  CLKINVX1 U22 ( .A(B[17]), .Y(n20) );
  CLKINVX1 U23 ( .A(B[0]), .Y(n16) );
endmodule


module divider_4stage_20_5_to_16bit_1_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [20:0] carry;

  ADDFXL U2_18 ( .A(A[18]), .B(n20), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n18), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n2), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n3), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n4), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n5), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n6), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n7), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n8), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n9), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n10), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n11), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n12), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n13), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n15), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n16), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_16 ( .A(A[16]), .B(n19), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  INVXL U1 ( .A(B[13]), .Y(n4) );
  INVXL U2 ( .A(B[11]), .Y(n6) );
  NAND2BX1 U3 ( .AN(n17), .B(n1), .Y(carry[1]) );
  XNOR3X1 U4 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(DIFF[19]) );
  XNOR2X1 U5 ( .A(n17), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U6 ( .A(B[1]), .Y(n16) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n15) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n14) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n13) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n12) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n11) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n9) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n8) );
  CLKINVX1 U15 ( .A(B[10]), .Y(n7) );
  CLKINVX1 U16 ( .A(B[12]), .Y(n5) );
  CLKINVX1 U17 ( .A(B[14]), .Y(n3) );
  CLKINVX1 U18 ( .A(B[15]), .Y(n2) );
  CLKINVX1 U19 ( .A(B[16]), .Y(n19) );
  CLKINVX1 U20 ( .A(B[17]), .Y(n18) );
  CLKINVX1 U21 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U22 ( .A(B[18]), .Y(n20) );
  CLKINVX1 U23 ( .A(B[0]), .Y(n17) );
endmodule


module divider_4stage_20_5_to_16bit_1 ( clk, load, dividand, dividor, q );
  input [19:0] dividand;
  input [4:0] dividor;
  output [15:0] q;
  input clk, load;
  wire   N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23,
         N24, N25, N26, N27, N28, N29, q_stage_1, N32, N33, N34, N35, N36, N37,
         N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51,
         q_stage_2, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65,
         N66, N67, N68, N69, N70, N71, N72, N73, q_stage_3, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97,
         N98, N99, N166, \r335/B[16] , \r335/B[1] , n2, n3, n5, n6, n8, n9,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n48, n50, n51, n52, n74, n75, n76, n77, n78,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349;
  wire   [19:0] dand0;
  wire   [19:0] dand4;
  wire   [19:0] dior0;
  wire   [19:0] dior4;
  wire   [19:0] dand1;
  wire   [19:0] dand2;
  wire   [19:0] dand3;
  wire   [2:0] cnt;

  DFFQX1 \cnt_reg[1]  ( .D(n301), .CK(clk), .Q(cnt[1]) );
  DFFX1 \cnt_reg[2]  ( .D(n300), .CK(clk), .QN(n345) );
  DFFQX1 \dand4_reg[19]  ( .D(n321), .CK(clk), .Q(dand4[19]) );
  DFFQX1 \dand4_reg[18]  ( .D(n320), .CK(clk), .Q(dand4[18]) );
  DFFQX1 \dand4_reg[17]  ( .D(n319), .CK(clk), .Q(dand4[17]) );
  DFFQX1 \dand4_reg[16]  ( .D(n318), .CK(clk), .Q(dand4[16]) );
  DFFQX1 \dand4_reg[5]  ( .D(n307), .CK(clk), .Q(dand4[5]) );
  DFFQX1 \dand4_reg[4]  ( .D(n306), .CK(clk), .Q(dand4[4]) );
  EDFFTRX1 \dior4_reg[5]  ( .RN(n34), .D(dior4[9]), .E(n32), .CK(clk), .Q(
        dior4[5]) );
  EDFFTRX1 \dior4_reg[4]  ( .RN(n34), .D(dior4[8]), .E(n32), .CK(clk), .Q(
        dior4[4]) );
  EDFFX1 \dior4_reg[15]  ( .D(\r335/B[16] ), .E(N166), .CK(clk), .Q(dior4[15])
         );
  DFFQX1 \dand4_reg[1]  ( .D(n302), .CK(clk), .Q(dand4[1]) );
  DFFQX1 \dand4_reg[10]  ( .D(n312), .CK(clk), .Q(dand4[10]) );
  DFFQX1 \dand4_reg[9]  ( .D(n311), .CK(clk), .Q(dand4[9]) );
  DFFQX1 \dand4_reg[8]  ( .D(n310), .CK(clk), .Q(dand4[8]) );
  DFFQX1 \dand4_reg[7]  ( .D(n309), .CK(clk), .Q(dand4[7]) );
  DFFQX1 \dand4_reg[6]  ( .D(n308), .CK(clk), .Q(dand4[6]) );
  DFFQX1 \dand4_reg[3]  ( .D(n305), .CK(clk), .Q(dand4[3]) );
  DFFQX1 \dand4_reg[2]  ( .D(n304), .CK(clk), .Q(dand4[2]) );
  DFFQX1 \dand4_reg[15]  ( .D(n317), .CK(clk), .Q(dand4[15]) );
  DFFQX1 \dand4_reg[14]  ( .D(n316), .CK(clk), .Q(dand4[14]) );
  DFFQX1 \dand4_reg[13]  ( .D(n315), .CK(clk), .Q(dand4[13]) );
  DFFQX1 \dand4_reg[12]  ( .D(n314), .CK(clk), .Q(dand4[12]) );
  DFFQX1 \dand4_reg[11]  ( .D(n313), .CK(clk), .Q(dand4[11]) );
  DFFQX1 \dand4_reg[0]  ( .D(n303), .CK(clk), .Q(dand4[0]) );
  EDFFX1 \dior4_reg[14]  ( .D(n14), .E(N166), .CK(clk), .Q(dior4[14]) );
  EDFFX1 \dior4_reg[13]  ( .D(n13), .E(N166), .CK(clk), .Q(dior4[13]) );
  EDFFX1 \dior4_reg[12]  ( .D(n15), .E(N166), .CK(clk), .Q(dior4[12]) );
  EDFFX1 \dior4_reg[11]  ( .D(n20), .E(N166), .CK(clk), .Q(dior4[11]) );
  EDFFTRX1 \dior4_reg[10]  ( .RN(n34), .D(dior4[14]), .E(n32), .CK(clk), .Q(
        dior4[10]) );
  EDFFTRX1 \dior4_reg[9]  ( .RN(n34), .D(dior4[13]), .E(n32), .CK(clk), .Q(
        dior4[9]) );
  EDFFTRX1 \dior4_reg[8]  ( .RN(n34), .D(dior4[12]), .E(n32), .CK(clk), .Q(
        dior4[8]) );
  EDFFTRX1 \dior4_reg[3]  ( .RN(n34), .D(dior4[7]), .E(n32), .CK(clk), .QN(
        n349) );
  EDFFTRX1 \dior4_reg[2]  ( .RN(n34), .D(dior4[6]), .E(n32), .CK(clk), .QN(
        n348) );
  EDFFTRX1 \dior4_reg[1]  ( .RN(n34), .D(dior4[5]), .E(n32), .CK(clk), .QN(
        n347) );
  EDFFTRX1 \dior4_reg[0]  ( .RN(n34), .D(dior4[4]), .E(n32), .CK(clk), .QN(
        n346) );
  EDFFTRX1 \dior4_reg[7]  ( .RN(n34), .D(dior4[11]), .E(n32), .CK(clk), .Q(
        dior4[7]) );
  EDFFTRX1 \dior4_reg[6]  ( .RN(n34), .D(dior4[10]), .E(n32), .CK(clk), .Q(
        dior4[6]) );
  EDFFTRX1 \q_reg_reg[15]  ( .RN(n34), .D(q[11]), .E(n32), .CK(clk), .Q(q[15])
         );
  EDFFTRX1 \q_reg_reg[12]  ( .RN(n34), .D(q[8]), .E(n32), .CK(clk), .Q(q[12])
         );
  EDFFTRX1 \q_reg_reg[13]  ( .RN(n34), .D(q[9]), .E(n32), .CK(clk), .Q(q[13])
         );
  EDFFTRX1 \q_reg_reg[14]  ( .RN(n34), .D(q[10]), .E(n32), .CK(clk), .Q(q[14])
         );
  EDFFTRX1 \q_reg_reg[7]  ( .RN(n34), .D(q[3]), .E(n32), .CK(clk), .Q(q[7]) );
  EDFFTRX1 \q_reg_reg[11]  ( .RN(n34), .D(q[7]), .E(n32), .CK(clk), .Q(q[11])
         );
  EDFFTRX1 \q_reg_reg[4]  ( .RN(n34), .D(q[0]), .E(n32), .CK(clk), .Q(q[4]) );
  EDFFTRX1 \q_reg_reg[8]  ( .RN(n34), .D(q[4]), .E(n32), .CK(clk), .Q(q[8]) );
  EDFFTRX1 \q_reg_reg[5]  ( .RN(n34), .D(q[1]), .E(n32), .CK(clk), .Q(q[5]) );
  EDFFTRX1 \q_reg_reg[9]  ( .RN(n34), .D(q[5]), .E(n32), .CK(clk), .Q(q[9]) );
  EDFFTRX1 \q_reg_reg[6]  ( .RN(n34), .D(q[2]), .E(n32), .CK(clk), .Q(q[6]) );
  EDFFTRX1 \q_reg_reg[10]  ( .RN(n34), .D(q[6]), .E(n32), .CK(clk), .Q(q[10])
         );
  EDFFX1 \q_reg_reg[3]  ( .D(n6), .E(N166), .CK(clk), .Q(q[3]) );
  EDFFX1 \q_reg_reg[0]  ( .D(q_stage_3), .E(N166), .CK(clk), .Q(q[0]) );
  EDFFX1 \q_reg_reg[2]  ( .D(q_stage_1), .E(N166), .CK(clk), .Q(q[2]) );
  EDFFX1 \q_reg_reg[1]  ( .D(q_stage_2), .E(N166), .CK(clk), .Q(q[1]) );
  AND2X2 U3 ( .A(dior4[5]), .B(n33), .Y(n2) );
  CLKINVX1 U4 ( .A(q_stage_2), .Y(n292) );
  OA21XL U5 ( .A0(n231), .A1(n230), .B0(n229), .Y(n3) );
  NAND2X1 U6 ( .A(n3), .B(n228), .Y(q_stage_2) );
  OAI31XL U7 ( .A0(n119), .A1(n118), .A2(n117), .B0(n143), .Y(n120) );
  AO22X1 U8 ( .A0(n293), .A1(dand1[19]), .B0(n16), .B1(N51), .Y(dand2[19]) );
  OAI211X1 U9 ( .A0(dand2[16]), .A1(n232), .B0(n238), .C0(n227), .Y(n229) );
  CLKINVX1 U11 ( .A(q_stage_1), .Y(n293) );
  CLKINVX1 U12 ( .A(dand1[18]), .Y(n195) );
  OAI22X1 U14 ( .A0(n126), .A1(n125), .B0(n124), .B1(n123), .Y(n6) );
  OA21XL U15 ( .A0(\r335/B[16] ), .A1(n195), .B0(n197), .Y(n5) );
  AO22X1 U17 ( .A0(n292), .A1(dand2[15]), .B0(N69), .B1(q_stage_2), .Y(
        dand3[15]) );
  NAND2XL U18 ( .A(n5), .B(n178), .Y(q_stage_1) );
  AO22X1 U20 ( .A0(n293), .A1(dand1[9]), .B0(N41), .B1(q_stage_1), .Y(dand2[9]) );
  AO22XL U21 ( .A0(n293), .A1(dand1[1]), .B0(N33), .B1(q_stage_1), .Y(dand2[1]) );
  AO22XL U22 ( .A0(n297), .A1(dand0[18]), .B0(N28), .B1(n6), .Y(dand1[18]) );
  AND2X2 U23 ( .A(n20), .B(n129), .Y(n51) );
  OAI211XL U24 ( .A0(n231), .A1(n230), .B0(n229), .C0(n228), .Y(n17) );
  AO22XL U25 ( .A0(n292), .A1(dand2[19]), .B0(n17), .B1(N73), .Y(dand3[19]) );
  INVXL U26 ( .A(n122), .Y(n143) );
  OAI211XL U27 ( .A0(dand2[12]), .A1(n184), .B0(n213), .C0(n215), .Y(n220) );
  AO22XL U28 ( .A0(n292), .A1(dand2[18]), .B0(N72), .B1(n17), .Y(dand3[18]) );
  AO22XL U29 ( .A0(n211), .A1(n210), .B0(n219), .B1(n211), .Y(n218) );
  OAI211XL U30 ( .A0(dand2[8]), .A1(n140), .B0(n222), .C0(n221), .Y(n223) );
  NOR2XL U31 ( .A(n220), .B(n219), .Y(n221) );
  AO22XL U32 ( .A0(n292), .A1(dand2[2]), .B0(N56), .B1(n17), .Y(dand3[2]) );
  INVX1 U33 ( .A(n172), .Y(n196) );
  AO22XL U34 ( .A0(n293), .A1(dand1[12]), .B0(N44), .B1(n16), .Y(dand2[12]) );
  AO22XL U35 ( .A0(n292), .A1(dand2[3]), .B0(N57), .B1(q_stage_2), .Y(dand3[3]) );
  AO22XL U36 ( .A0(n293), .A1(dand1[16]), .B0(N48), .B1(n16), .Y(dand2[16]) );
  AO22XL U37 ( .A0(n293), .A1(dand1[17]), .B0(N49), .B1(q_stage_1), .Y(
        dand2[17]) );
  AO22XL U38 ( .A0(n293), .A1(dand1[2]), .B0(N34), .B1(n16), .Y(dand2[2]) );
  AO22XL U39 ( .A0(n293), .A1(dand1[5]), .B0(N37), .B1(q_stage_1), .Y(dand2[5]) );
  AO22XL U40 ( .A0(n293), .A1(dand1[13]), .B0(N45), .B1(n16), .Y(dand2[13]) );
  AO22XL U41 ( .A0(n293), .A1(dand1[3]), .B0(N35), .B1(q_stage_1), .Y(dand2[3]) );
  AO22XL U42 ( .A0(n292), .A1(dand2[4]), .B0(N58), .B1(n17), .Y(dand3[4]) );
  AO22XL U43 ( .A0(n292), .A1(dand2[1]), .B0(N55), .B1(q_stage_2), .Y(dand3[1]) );
  AO22XL U44 ( .A0(n293), .A1(dand1[14]), .B0(N46), .B1(n16), .Y(dand2[14]) );
  AO22XL U45 ( .A0(n293), .A1(dand1[4]), .B0(N36), .B1(n16), .Y(dand2[4]) );
  AO22XL U46 ( .A0(n293), .A1(dand1[6]), .B0(N38), .B1(n16), .Y(dand2[6]) );
  AO22XL U47 ( .A0(n293), .A1(dand1[15]), .B0(N47), .B1(q_stage_1), .Y(
        dand2[15]) );
  AO22XL U48 ( .A0(n293), .A1(dand1[7]), .B0(N39), .B1(q_stage_1), .Y(dand2[7]) );
  CLKBUFX2 U49 ( .A(load), .Y(n36) );
  AO22XL U50 ( .A0(n50), .A1(n48), .B0(n117), .B1(n50), .Y(n78) );
  CLKBUFX2 U51 ( .A(load), .Y(n35) );
  AO22XL U52 ( .A0(n292), .A1(dand2[12]), .B0(N66), .B1(n17), .Y(dand3[12]) );
  AO22XL U53 ( .A0(n292), .A1(dand2[17]), .B0(N71), .B1(q_stage_2), .Y(
        dand3[17]) );
  AO22XL U54 ( .A0(n292), .A1(dand2[16]), .B0(N70), .B1(n17), .Y(dand3[16]) );
  AO22XL U55 ( .A0(n292), .A1(dand2[11]), .B0(N65), .B1(n17), .Y(dand3[11]) );
  AO22XL U56 ( .A0(n292), .A1(dand2[7]), .B0(N61), .B1(q_stage_2), .Y(dand3[7]) );
  AO22XL U57 ( .A0(n292), .A1(dand2[13]), .B0(N67), .B1(n17), .Y(dand3[13]) );
  AO22XL U58 ( .A0(n292), .A1(dand2[8]), .B0(N62), .B1(n17), .Y(dand3[8]) );
  AO22XL U59 ( .A0(n292), .A1(dand2[14]), .B0(N68), .B1(n17), .Y(dand3[14]) );
  AO22XL U60 ( .A0(n292), .A1(dand2[10]), .B0(N64), .B1(n17), .Y(dand3[10]) );
  AO22XL U61 ( .A0(n292), .A1(dand2[6]), .B0(N60), .B1(n17), .Y(dand3[6]) );
  AO22XL U62 ( .A0(n292), .A1(dand2[9]), .B0(N63), .B1(q_stage_2), .Y(dand3[9]) );
  AO22XL U63 ( .A0(n292), .A1(dand2[5]), .B0(N59), .B1(q_stage_2), .Y(dand3[5]) );
  INVXL U64 ( .A(dand1[1]), .Y(n186) );
  INVXL U65 ( .A(dand1[0]), .Y(n185) );
  NAND2XL U66 ( .A(n33), .B(n324), .Y(N166) );
  OAI211XL U67 ( .A0(\r335/B[16] ), .A1(n195), .B0(n197), .C0(n178), .Y(n16)
         );
  INVXL U68 ( .A(dand0[0]), .Y(n127) );
  NAND2BXL U69 ( .AN(dand2[9]), .B(n18), .Y(n222) );
  AND2X2 U70 ( .A(n13), .B(n237), .Y(n212) );
  AO21XL U71 ( .A0(n132), .A1(n12), .B0(n108), .Y(n113) );
  INVXL U72 ( .A(n109), .Y(n138) );
  AO21XL U73 ( .A0(n290), .A1(n18), .B0(n245), .Y(n257) );
  AO22XL U74 ( .A0(n297), .A1(dand0[12]), .B0(N22), .B1(n6), .Y(dand1[12]) );
  AO22XL U75 ( .A0(n297), .A1(dand0[5]), .B0(N15), .B1(n6), .Y(dand1[5]) );
  AO22XL U76 ( .A0(n297), .A1(dand0[10]), .B0(N20), .B1(n6), .Y(dand1[10]) );
  AO22XL U77 ( .A0(n297), .A1(dand0[8]), .B0(N18), .B1(n6), .Y(dand1[8]) );
  OAI32XL U78 ( .A0(n278), .A1(n19), .A2(n244), .B0(dior0[14]), .B1(n280), .Y(
        n248) );
  AO22XL U79 ( .A0(n297), .A1(dand0[13]), .B0(N23), .B1(n6), .Y(dand1[13]) );
  AO22XL U80 ( .A0(n297), .A1(dand0[11]), .B0(N21), .B1(n6), .Y(dand1[11]) );
  AO22XL U81 ( .A0(n297), .A1(dand0[9]), .B0(N19), .B1(n6), .Y(dand1[9]) );
  AO22XL U82 ( .A0(n297), .A1(dand0[7]), .B0(N17), .B1(n6), .Y(dand1[7]) );
  AO22XL U83 ( .A0(n297), .A1(dand0[6]), .B0(N16), .B1(n6), .Y(dand1[6]) );
  AOI21XL U84 ( .A0(n278), .A1(n19), .B0(n244), .Y(n246) );
  OAI32XL U85 ( .A0(n290), .A1(n18), .A2(n245), .B0(dior0[12]), .B1(n291), .Y(
        n247) );
  INVXL U86 ( .A(dand3[1]), .Y(n285) );
  INVXL U87 ( .A(n19), .Y(n183) );
  INVXL U88 ( .A(n18), .Y(n182) );
  NAND2XL U89 ( .A(n32), .B(n33), .Y(n324) );
  NOR2XL U90 ( .A(n36), .B(n348), .Y(dior0[2]) );
  AND2XL U91 ( .A(dior4[7]), .B(n33), .Y(n11) );
  AND2XL U92 ( .A(dior4[9]), .B(n33), .Y(dior0[9]) );
  AND2XL U93 ( .A(dior4[14]), .B(n33), .Y(dior0[14]) );
  AND2XL U94 ( .A(dior4[8]), .B(n33), .Y(dior0[8]) );
  AND2XL U95 ( .A(dior4[6]), .B(n33), .Y(n12) );
  AO22XL U96 ( .A0(n34), .A1(dand4[12]), .B0(dividand[12]), .B1(n38), .Y(
        dand0[12]) );
  AO22XL U97 ( .A0(n33), .A1(dand4[3]), .B0(dividand[3]), .B1(n38), .Y(
        dand0[3]) );
  AO22XL U98 ( .A0(n33), .A1(dand4[4]), .B0(dividand[4]), .B1(n38), .Y(
        dand0[4]) );
  AO22XL U99 ( .A0(n33), .A1(dand4[8]), .B0(dividand[8]), .B1(n38), .Y(
        dand0[8]) );
  AO22XL U100 ( .A0(n34), .A1(dand4[10]), .B0(dividand[10]), .B1(n38), .Y(
        dand0[10]) );
  AND2XL U101 ( .A(dior4[13]), .B(n33), .Y(dior0[13]) );
  AO22XL U102 ( .A0(n33), .A1(dand4[9]), .B0(dividand[9]), .B1(n37), .Y(
        dand0[9]) );
  AO22XL U103 ( .A0(n33), .A1(dand4[5]), .B0(dividand[5]), .B1(n37), .Y(
        dand0[5]) );
  AO22XL U104 ( .A0(n33), .A1(dand4[1]), .B0(dividand[1]), .B1(n38), .Y(
        dand0[1]) );
  AO22XL U105 ( .A0(n34), .A1(dand4[13]), .B0(dividand[13]), .B1(n38), .Y(
        dand0[13]) );
  AO22XL U106 ( .A0(n34), .A1(dand4[11]), .B0(dividand[11]), .B1(n38), .Y(
        dand0[11]) );
  NOR2XL U107 ( .A(n35), .B(n346), .Y(dior0[0]) );
  AO22XL U108 ( .A0(n33), .A1(dand4[16]), .B0(dividand[16]), .B1(n38), .Y(
        dand0[16]) );
  AND2XL U109 ( .A(dior4[12]), .B(n33), .Y(dior0[12]) );
  AND2XL U110 ( .A(dior4[10]), .B(n33), .Y(dior0[10]) );
  NOR2XL U111 ( .A(n35), .B(n349), .Y(dior0[3]) );
  NOR2XL U112 ( .A(n36), .B(n347), .Y(dior0[1]) );
  AO22XL U113 ( .A0(n33), .A1(dand4[2]), .B0(dividand[2]), .B1(n38), .Y(
        dand0[2]) );
  AO22XL U114 ( .A0(n33), .A1(dand4[7]), .B0(dividand[7]), .B1(n37), .Y(
        dand0[7]) );
  AO22XL U115 ( .A0(n33), .A1(dand4[6]), .B0(dividand[6]), .B1(n37), .Y(
        dand0[6]) );
  AO22XL U116 ( .A0(n33), .A1(dand4[17]), .B0(dividand[17]), .B1(n38), .Y(
        dand0[17]) );
  AO22XL U117 ( .A0(n34), .A1(dand4[15]), .B0(dividand[15]), .B1(n38), .Y(
        dand0[15]) );
  AO22XL U118 ( .A0(n34), .A1(dand4[14]), .B0(dividand[14]), .B1(n38), .Y(
        dand0[14]) );
  CLKINVX1 U119 ( .A(n323), .Y(\r335/B[1] ) );
  NAND2XL U120 ( .A(dior4[4]), .B(n33), .Y(n323) );
  OAI2BB1XL U121 ( .A0N(n295), .A1N(dand4[19]), .B0(n344), .Y(n321) );
  OAI2BB1XL U122 ( .A0N(n295), .A1N(dand4[18]), .B0(n342), .Y(n320) );
  AOI22XL U123 ( .A0(n30), .A1(dand3[0]), .B0(N80), .B1(n9), .Y(n325) );
  AO21X1 U124 ( .A0(n295), .A1(dand4[1]), .B0(n8), .Y(n302) );
  AO22X1 U125 ( .A0(n25), .A1(dand3[1]), .B0(N81), .B1(n9), .Y(n8) );
  AO22XL U126 ( .A0(n33), .A1(dand4[19]), .B0(n37), .B1(dividand[19]), .Y(
        dand0[19]) );
  AO22XL U127 ( .A0(n33), .A1(dand4[18]), .B0(dividand[18]), .B1(n38), .Y(
        dand0[18]) );
  CLKINVX1 U128 ( .A(n298), .Y(\r335/B[16] ) );
  CLKINVX1 U129 ( .A(n23), .Y(n29) );
  CLKINVX1 U130 ( .A(n23), .Y(n27) );
  CLKINVX1 U131 ( .A(n23), .Y(n28) );
  CLKINVX1 U132 ( .A(n22), .Y(n25) );
  CLKINVX1 U133 ( .A(n22), .Y(n26) );
  CLKINVX1 U134 ( .A(n36), .Y(n33) );
  CLKINVX1 U135 ( .A(dand2[15]), .Y(n237) );
  CLKINVX1 U136 ( .A(n35), .Y(n34) );
  CLKINVX1 U137 ( .A(dand2[14]), .Y(n236) );
  CLKINVX1 U138 ( .A(dand2[7]), .Y(n243) );
  CLKINVX1 U139 ( .A(n343), .Y(n24) );
  CLKINVX1 U140 ( .A(n343), .Y(n23) );
  CLKINVX1 U141 ( .A(n343), .Y(n22) );
  CLKINVX1 U142 ( .A(dand3[14]), .Y(n282) );
  CLKINVX1 U143 ( .A(dand3[10]), .Y(n278) );
  CLKINVX1 U144 ( .A(dand3[6]), .Y(n288) );
  CLKINVX1 U145 ( .A(dand3[4]), .Y(n286) );
  CLKINVX1 U146 ( .A(dand3[8]), .Y(n290) );
  CLKINVX1 U147 ( .A(dand3[9]), .Y(n291) );
  CLKINVX1 U148 ( .A(dand3[5]), .Y(n287) );
  CLKINVX1 U149 ( .A(dand2[6]), .Y(n242) );
  CLKINVX1 U150 ( .A(dand3[11]), .Y(n280) );
  CLKINVX1 U151 ( .A(dand2[4]), .Y(n240) );
  CLKINVX1 U152 ( .A(N166), .Y(n295) );
  CLKINVX1 U153 ( .A(n74), .Y(n142) );
  CLKINVX1 U154 ( .A(n126), .Y(n135) );
  CLKINVX1 U155 ( .A(n231), .Y(n238) );
  AO22X1 U156 ( .A0(n292), .A1(dand2[0]), .B0(N54), .B1(n17), .Y(dand3[0]) );
  CLKINVX1 U157 ( .A(n6), .Y(n297) );
  AO22X1 U158 ( .A0(n293), .A1(dand1[18]), .B0(N50), .B1(n16), .Y(dand2[18])
         );
  AO22X1 U159 ( .A0(n293), .A1(dand1[8]), .B0(N40), .B1(n16), .Y(dand2[8]) );
  AO22X1 U160 ( .A0(n293), .A1(dand1[10]), .B0(N42), .B1(n16), .Y(dand2[10])
         );
  AO22X1 U161 ( .A0(n293), .A1(dand1[11]), .B0(N43), .B1(n16), .Y(dand2[11])
         );
  CLKBUFX3 U162 ( .A(load), .Y(n37) );
  CLKBUFX3 U163 ( .A(load), .Y(n38) );
  CLKINVX1 U164 ( .A(dand1[15]), .Y(n193) );
  AO22X1 U165 ( .A0(n293), .A1(dand1[0]), .B0(N32), .B1(n16), .Y(dand2[0]) );
  AND2X2 U166 ( .A(q_stage_3), .B(N166), .Y(n9) );
  NOR2X1 U167 ( .A(n295), .B(q_stage_3), .Y(n343) );
  CLKINVX1 U168 ( .A(n251), .Y(n281) );
  CLKINVX1 U169 ( .A(dand1[14]), .Y(n192) );
  CLKINVX1 U170 ( .A(dand1[6]), .Y(n189) );
  CLKINVX1 U171 ( .A(dand1[4]), .Y(n187) );
  CLKINVX1 U172 ( .A(dand1[7]), .Y(n190) );
  CLKINVX1 U173 ( .A(dand1[17]), .Y(n194) );
  CLKINVX1 U174 ( .A(dand1[19]), .Y(n197) );
  AO22X1 U175 ( .A0(n297), .A1(dand0[0]), .B0(N10), .B1(n6), .Y(dand1[0]) );
  AO22X1 U176 ( .A0(n297), .A1(dand0[1]), .B0(N11), .B1(n6), .Y(dand1[1]) );
  CLKINVX1 U177 ( .A(n160), .Y(n191) );
  CLKINVX1 U178 ( .A(dior0[14]), .Y(n184) );
  CLKINVX1 U179 ( .A(dand2[5]), .Y(n241) );
  CLKINVX1 U180 ( .A(dand0[3]), .Y(n131) );
  CLKINVX1 U181 ( .A(dior0[1]), .Y(n136) );
  AO22X1 U182 ( .A0(n297), .A1(dand0[15]), .B0(N25), .B1(n6), .Y(dand1[15]) );
  AO22X1 U183 ( .A0(n297), .A1(dand0[4]), .B0(N14), .B1(n6), .Y(dand1[4]) );
  AO22X1 U184 ( .A0(n297), .A1(dand0[2]), .B0(N12), .B1(n6), .Y(dand1[2]) );
  AO22X1 U185 ( .A0(n297), .A1(dand0[3]), .B0(N13), .B1(n6), .Y(dand1[3]) );
  AO22X1 U186 ( .A0(n297), .A1(dand0[16]), .B0(N26), .B1(n6), .Y(dand1[16]) );
  CLKINVX1 U187 ( .A(n2), .Y(n137) );
  CLKINVX1 U188 ( .A(n214), .Y(n235) );
  CLKINVX1 U189 ( .A(n20), .Y(n233) );
  CLKINVX1 U190 ( .A(dior0[12]), .Y(n141) );
  CLKINVX1 U191 ( .A(dior0[10]), .Y(n140) );
  CLKINVX1 U192 ( .A(dior0[8]), .Y(n139) );
  CLKINVX1 U193 ( .A(dand0[14]), .Y(n128) );
  CLKINVX1 U194 ( .A(dand0[2]), .Y(n130) );
  CLKINVX1 U195 ( .A(dand0[6]), .Y(n132) );
  CLKINVX1 U196 ( .A(dand0[15]), .Y(n129) );
  CLKINVX1 U197 ( .A(dand0[7]), .Y(n133) );
  CLKINVX1 U198 ( .A(dand3[16]), .Y(n284) );
  CLKINVX1 U199 ( .A(n246), .Y(n279) );
  CLKINVX1 U200 ( .A(dand3[7]), .Y(n289) );
  CLKINVX1 U201 ( .A(dand1[5]), .Y(n188) );
  CLKINVX1 U202 ( .A(dand3[15]), .Y(n283) );
  AO22X1 U203 ( .A0(n297), .A1(dand0[14]), .B0(N24), .B1(n6), .Y(dand1[14]) );
  AO22X1 U204 ( .A0(n297), .A1(dand0[17]), .B0(N27), .B1(n6), .Y(dand1[17]) );
  AO22X1 U205 ( .A0(n297), .A1(dand0[19]), .B0(n6), .B1(N29), .Y(dand1[19]) );
  CLKINVX1 U206 ( .A(dand0[17]), .Y(n134) );
  CLKINVX1 U207 ( .A(dand2[0]), .Y(n234) );
  CLKINVX1 U208 ( .A(dand2[1]), .Y(n239) );
  CLKINVX1 U209 ( .A(dior0[9]), .Y(n181) );
  CLKINVX1 U210 ( .A(n21), .Y(n180) );
  CLKINVX1 U211 ( .A(n13), .Y(n179) );
  CLKINVX1 U212 ( .A(n12), .Y(n277) );
  OAI32X1 U213 ( .A0(n296), .A1(n324), .A2(n294), .B0(n322), .B1(n32), .Y(n300) );
  CLKINVX1 U214 ( .A(n14), .Y(n232) );
  CLKINVX1 U215 ( .A(n15), .Y(n276) );
  AOI22X1 U216 ( .A0(n26), .A1(dand3[18]), .B0(N98), .B1(n9), .Y(n342) );
  CLKBUFX3 U217 ( .A(dior0[11]), .Y(n18) );
  AND2X2 U218 ( .A(dior4[11]), .B(n33), .Y(dior0[11]) );
  CLKBUFX3 U219 ( .A(dior0[15]), .Y(n20) );
  AO22X1 U220 ( .A0(n33), .A1(dior4[15]), .B0(dividor[0]), .B1(n37), .Y(
        dior0[15]) );
  AOI22X1 U221 ( .A0(n31), .A1(dand3[19]), .B0(N99), .B1(n9), .Y(n344) );
  AO22X1 U222 ( .A0(n34), .A1(dand4[0]), .B0(dividand[0]), .B1(n37), .Y(
        dand0[0]) );
  CLKBUFX3 U223 ( .A(dior0[13]), .Y(n19) );
  CLKBUFX3 U224 ( .A(dior0[3]), .Y(n21) );
  OAI2BB1X1 U225 ( .A0N(n295), .A1N(dand4[17]), .B0(n341), .Y(n319) );
  AOI22X1 U226 ( .A0(n31), .A1(dand3[17]), .B0(N97), .B1(n9), .Y(n341) );
  OAI2BB1X1 U227 ( .A0N(n295), .A1N(dand4[12]), .B0(n336), .Y(n314) );
  AOI22X1 U228 ( .A0(n30), .A1(dand3[12]), .B0(N92), .B1(n9), .Y(n336) );
  CLKINVX1 U229 ( .A(n24), .Y(n30) );
  OAI2BB1X1 U230 ( .A0N(n295), .A1N(dand4[13]), .B0(n337), .Y(n315) );
  AOI22X1 U231 ( .A0(n31), .A1(dand3[13]), .B0(N93), .B1(n9), .Y(n337) );
  CLKINVX1 U232 ( .A(n24), .Y(n31) );
  OAI2BB1X1 U233 ( .A0N(n295), .A1N(dand4[14]), .B0(n338), .Y(n316) );
  AOI22X1 U234 ( .A0(n31), .A1(dand3[14]), .B0(N94), .B1(n9), .Y(n338) );
  OAI2BB1X1 U235 ( .A0N(n295), .A1N(dand4[15]), .B0(n339), .Y(n317) );
  AOI22X1 U236 ( .A0(n30), .A1(dand3[15]), .B0(N95), .B1(n9), .Y(n339) );
  OAI2BB1X1 U237 ( .A0N(n295), .A1N(dand4[16]), .B0(n340), .Y(n318) );
  AOI22X1 U238 ( .A0(n25), .A1(dand3[16]), .B0(N96), .B1(n9), .Y(n340) );
  NAND2X1 U239 ( .A(dividor[4]), .B(n37), .Y(n298) );
  AND2X2 U240 ( .A(dividor[2]), .B(n37), .Y(n13) );
  OAI2BB1X1 U241 ( .A0N(n295), .A1N(dand4[0]), .B0(n325), .Y(n303) );
  OAI2BB1X1 U242 ( .A0N(n295), .A1N(dand4[11]), .B0(n335), .Y(n313) );
  AOI22X1 U243 ( .A0(n29), .A1(dand3[11]), .B0(N91), .B1(n9), .Y(n335) );
  OAI2BB1X1 U244 ( .A0N(n295), .A1N(dand4[2]), .B0(n326), .Y(n304) );
  AOI22X1 U245 ( .A0(n26), .A1(dand3[2]), .B0(N82), .B1(n9), .Y(n326) );
  OAI2BB1X1 U246 ( .A0N(n295), .A1N(dand4[3]), .B0(n327), .Y(n305) );
  AOI22X1 U247 ( .A0(n26), .A1(dand3[3]), .B0(N83), .B1(n9), .Y(n327) );
  OAI2BB1X1 U248 ( .A0N(n295), .A1N(dand4[4]), .B0(n328), .Y(n306) );
  AOI22X1 U249 ( .A0(n27), .A1(dand3[4]), .B0(N84), .B1(n9), .Y(n328) );
  OAI2BB1X1 U250 ( .A0N(n295), .A1N(dand4[5]), .B0(n329), .Y(n307) );
  AOI22X1 U251 ( .A0(n28), .A1(dand3[5]), .B0(N85), .B1(n9), .Y(n329) );
  OAI2BB1X1 U252 ( .A0N(n295), .A1N(dand4[6]), .B0(n330), .Y(n308) );
  AOI22X1 U253 ( .A0(n29), .A1(dand3[6]), .B0(N86), .B1(n9), .Y(n330) );
  OAI2BB1X1 U254 ( .A0N(n295), .A1N(dand4[7]), .B0(n331), .Y(n309) );
  AOI22X1 U255 ( .A0(n29), .A1(dand3[7]), .B0(N87), .B1(n9), .Y(n331) );
  OAI2BB1X1 U256 ( .A0N(n295), .A1N(dand4[8]), .B0(n332), .Y(n310) );
  AOI22X1 U257 ( .A0(n27), .A1(dand3[8]), .B0(N88), .B1(n9), .Y(n332) );
  OAI2BB1X1 U258 ( .A0N(n295), .A1N(dand4[9]), .B0(n333), .Y(n311) );
  AOI22X1 U259 ( .A0(n28), .A1(dand3[9]), .B0(N89), .B1(n9), .Y(n333) );
  OAI2BB1X1 U260 ( .A0N(n295), .A1N(dand4[10]), .B0(n334), .Y(n312) );
  AOI22X1 U261 ( .A0(n27), .A1(dand3[10]), .B0(N90), .B1(n9), .Y(n334) );
  OA21XL U262 ( .A0(cnt[0]), .A1(n324), .B0(N166), .Y(n322) );
  OAI32X1 U263 ( .A0(n294), .A1(cnt[1]), .A2(n324), .B0(n322), .B1(n296), .Y(
        n301) );
  OAI221XL U264 ( .A0(cnt[0]), .A1(n324), .B0(N166), .B1(n294), .C0(n34), .Y(
        n299) );
  CLKBUFX3 U265 ( .A(n345), .Y(n32) );
  CLKINVX1 U267 ( .A(cnt[1]), .Y(n296) );
  AND2X2 U268 ( .A(dividor[3]), .B(n37), .Y(n14) );
  AND2X2 U269 ( .A(dividor[1]), .B(n37), .Y(n15) );
  NOR2X1 U270 ( .A(n298), .B(dand0[19]), .Y(n126) );
  NAND2X1 U271 ( .A(n13), .B(n134), .Y(n42) );
  NAND2BX1 U272 ( .AN(dand0[18]), .B(n14), .Y(n41) );
  AND2X1 U273 ( .A(n42), .B(n41), .Y(n40) );
  OAI2BB2XL U274 ( .B0(n13), .B1(n134), .A0N(n276), .A1N(dand0[16]), .Y(n39)
         );
  AOI222XL U275 ( .A0(dand0[19]), .A1(n298), .B0(dand0[18]), .B1(n232), .C0(
        n40), .C1(n39), .Y(n125) );
  OAI211X1 U276 ( .A0(dand0[16]), .A1(n276), .B0(n42), .C0(n41), .Y(n124) );
  NAND2BX1 U277 ( .AN(dand0[13]), .B(n19), .Y(n52) );
  AOI21X1 U278 ( .A0(n128), .A1(dior0[14]), .B0(n51), .Y(n75) );
  OAI211X1 U279 ( .A0(dand0[12]), .A1(n141), .B0(n52), .C0(n75), .Y(n118) );
  NAND2BX1 U280 ( .AN(dand0[11]), .B(n18), .Y(n43) );
  AOI32X1 U281 ( .A0(dand0[10]), .A1(n140), .A2(n43), .B0(n182), .B1(dand0[11]), .Y(n50) );
  NAND2BX1 U282 ( .AN(dand0[9]), .B(dior0[9]), .Y(n116) );
  AOI32X1 U283 ( .A0(dand0[8]), .A1(n139), .A2(n116), .B0(n181), .B1(dand0[9]), 
        .Y(n48) );
  OAI21XL U284 ( .A0(dand0[10]), .A1(n140), .B0(n43), .Y(n117) );
  OAI32X1 U285 ( .A0(n128), .A1(dior0[14]), .A2(n51), .B0(n20), .B1(n129), .Y(
        n76) );
  AOI32X1 U286 ( .A0(dand0[12]), .A1(n141), .A2(n52), .B0(n183), .B1(dand0[13]), .Y(n74) );
  OAI22XL U287 ( .A0(n76), .A1(n142), .B0(n75), .B1(n76), .Y(n77) );
  OAI21XL U288 ( .A0(n118), .A1(n78), .B0(n77), .Y(n122) );
  NOR2BX1 U289 ( .AN(n21), .B(dand0[3]), .Y(n104) );
  AOI21X1 U290 ( .A0(dior0[2]), .A1(n130), .B0(n104), .Y(n105) );
  OAI32X1 U291 ( .A0(n130), .A1(dior0[2]), .A2(n104), .B0(n21), .B1(n131), .Y(
        n107) );
  NAND2BX1 U292 ( .AN(dand0[5]), .B(n2), .Y(n110) );
  OAI221XL U293 ( .A0(dand0[4]), .A1(n323), .B0(n105), .B1(n107), .C0(n110), 
        .Y(n115) );
  AOI2BB2X1 U294 ( .B0(dior0[0]), .B1(n127), .A0N(n136), .A1N(dand0[1]), .Y(
        n106) );
  AOI211X1 U295 ( .A0(dand0[1]), .A1(n136), .B0(n107), .C0(n106), .Y(n114) );
  AND2X1 U296 ( .A(n11), .B(n133), .Y(n108) );
  OAI32X1 U297 ( .A0(n132), .A1(n12), .A2(n108), .B0(n11), .B1(n133), .Y(n109)
         );
  AOI32X1 U298 ( .A0(dand0[4]), .A1(n323), .A2(n110), .B0(n137), .B1(dand0[5]), 
        .Y(n111) );
  AO22X1 U299 ( .A0(n138), .A1(n111), .B0(n113), .B1(n138), .Y(n112) );
  OAI31XL U300 ( .A0(n115), .A1(n114), .A2(n113), .B0(n112), .Y(n121) );
  OAI21XL U301 ( .A0(dand0[8]), .A1(n139), .B0(n116), .Y(n119) );
  OAI211X1 U302 ( .A0(n122), .A1(n121), .B0(n120), .C0(n135), .Y(n123) );
  NAND2X1 U303 ( .A(\r335/B[16] ), .B(n195), .Y(n177) );
  NAND2X1 U304 ( .A(n14), .B(n194), .Y(n176) );
  OAI2BB2XL U305 ( .B0(n14), .B1(n194), .A0N(n179), .A1N(dand1[16]), .Y(n175)
         );
  AND2X1 U306 ( .A(dior0[8]), .B(n190), .Y(n150) );
  AOI21X1 U307 ( .A0(n189), .A1(n11), .B0(n150), .Y(n152) );
  AO22X1 U308 ( .A0(n185), .A1(dior0[1]), .B0(n186), .B1(dior0[2]), .Y(n144)
         );
  NAND2BX1 U309 ( .AN(dand1[3]), .B(\r335/B[1] ), .Y(n145) );
  AOI32X1 U310 ( .A0(dand1[2]), .A1(n180), .A2(n145), .B0(n323), .B1(dand1[3]), 
        .Y(n147) );
  OAI211X1 U311 ( .A0(dior0[2]), .A1(n186), .B0(n144), .C0(n147), .Y(n149) );
  OAI21XL U312 ( .A0(dand1[2]), .A1(n180), .B0(n145), .Y(n146) );
  NOR2BX1 U313 ( .AN(n12), .B(dand1[5]), .Y(n151) );
  AOI221XL U314 ( .A0(n147), .A1(n146), .B0(n2), .B1(n187), .C0(n151), .Y(n148) );
  NAND3X1 U315 ( .A(n152), .B(n149), .C(n148), .Y(n166) );
  OAI32X1 U316 ( .A0(n189), .A1(n11), .A2(n150), .B0(dior0[8]), .B1(n190), .Y(
        n154) );
  OAI32X1 U317 ( .A0(n187), .A1(n2), .A2(n151), .B0(n12), .B1(n188), .Y(n153)
         );
  OAI22XL U318 ( .A0(n154), .A1(n153), .B0(n152), .B1(n154), .Y(n165) );
  NAND2BX1 U319 ( .AN(dand1[13]), .B(dior0[14]), .Y(n159) );
  AND2X1 U320 ( .A(n15), .B(n193), .Y(n158) );
  AOI21X1 U321 ( .A0(n192), .A1(n20), .B0(n158), .Y(n161) );
  OAI211X1 U322 ( .A0(dand1[12]), .A1(n183), .B0(n159), .C0(n161), .Y(n170) );
  NAND2BX1 U323 ( .AN(dand1[11]), .B(dior0[12]), .Y(n155) );
  AOI32X1 U324 ( .A0(dand1[10]), .A1(n182), .A2(n155), .B0(n141), .B1(
        dand1[11]), .Y(n157) );
  NAND2BX1 U325 ( .AN(dand1[9]), .B(dior0[10]), .Y(n167) );
  AOI32X1 U326 ( .A0(dand1[8]), .A1(n181), .A2(n167), .B0(n140), .B1(dand1[9]), 
        .Y(n156) );
  OAI21XL U327 ( .A0(dand1[10]), .A1(n182), .B0(n155), .Y(n169) );
  AO22X1 U328 ( .A0(n157), .A1(n156), .B0(n169), .B1(n157), .Y(n164) );
  OAI32X1 U329 ( .A0(n192), .A1(n20), .A2(n158), .B0(n15), .B1(n193), .Y(n162)
         );
  AOI32X1 U330 ( .A0(dand1[12]), .A1(n183), .A2(n159), .B0(n184), .B1(
        dand1[13]), .Y(n160) );
  OAI22XL U331 ( .A0(n162), .A1(n191), .B0(n161), .B1(n162), .Y(n163) );
  OA21XL U332 ( .A0(n170), .A1(n164), .B0(n163), .Y(n168) );
  NAND3X1 U333 ( .A(n166), .B(n165), .C(n168), .Y(n174) );
  OAI21XL U334 ( .A0(dand1[8]), .A1(n181), .B0(n167), .Y(n171) );
  OAI31XL U335 ( .A0(n171), .A1(n170), .A2(n169), .B0(n168), .Y(n173) );
  OAI211X1 U336 ( .A0(n179), .A1(dand1[16]), .B0(n177), .C0(n176), .Y(n172) );
  AOI33X1 U337 ( .A0(n177), .A1(n176), .A2(n175), .B0(n174), .B1(n173), .B2(
        n196), .Y(n178) );
  NOR2X1 U338 ( .A(n298), .B(dand2[17]), .Y(n231) );
  AOI22X1 U339 ( .A0(dand2[16]), .A1(n232), .B0(dand2[17]), .B1(n298), .Y(n230) );
  AND2X1 U340 ( .A(dior0[9]), .B(n243), .Y(n204) );
  AOI21X1 U341 ( .A0(n242), .A1(dior0[8]), .B0(n204), .Y(n206) );
  AO22X1 U342 ( .A0(n234), .A1(dior0[2]), .B0(n239), .B1(n21), .Y(n198) );
  NAND2BX1 U343 ( .AN(dand2[3]), .B(n2), .Y(n199) );
  AOI32X1 U344 ( .A0(dand2[2]), .A1(n323), .A2(n199), .B0(n137), .B1(dand2[3]), 
        .Y(n201) );
  OAI211X1 U345 ( .A0(n21), .A1(n239), .B0(n198), .C0(n201), .Y(n203) );
  OAI21XL U346 ( .A0(dand2[2]), .A1(n323), .B0(n199), .Y(n200) );
  NOR2BX1 U347 ( .AN(n11), .B(dand2[5]), .Y(n205) );
  AOI221XL U348 ( .A0(n201), .A1(n200), .B0(n12), .B1(n240), .C0(n205), .Y(
        n202) );
  NAND3X1 U349 ( .A(n206), .B(n203), .C(n202), .Y(n226) );
  OAI32X1 U350 ( .A0(n242), .A1(dior0[8]), .A2(n204), .B0(dior0[9]), .B1(n243), 
        .Y(n208) );
  OAI32X1 U351 ( .A0(n240), .A1(n12), .A2(n205), .B0(n11), .B1(n241), .Y(n207)
         );
  OAI22XL U352 ( .A0(n208), .A1(n207), .B0(n206), .B1(n208), .Y(n225) );
  NAND2BX1 U353 ( .AN(dand2[13]), .B(n20), .Y(n213) );
  AOI21X1 U354 ( .A0(n236), .A1(n15), .B0(n212), .Y(n215) );
  NAND2BX1 U355 ( .AN(dand2[11]), .B(n19), .Y(n209) );
  AOI32X1 U356 ( .A0(dand2[10]), .A1(n141), .A2(n209), .B0(n183), .B1(
        dand2[11]), .Y(n211) );
  AOI32X1 U357 ( .A0(dand2[8]), .A1(n140), .A2(n222), .B0(n182), .B1(dand2[9]), 
        .Y(n210) );
  OAI21XL U358 ( .A0(dand2[10]), .A1(n141), .B0(n209), .Y(n219) );
  OAI32X1 U359 ( .A0(n236), .A1(n15), .A2(n212), .B0(n13), .B1(n237), .Y(n216)
         );
  AOI32X1 U360 ( .A0(dand2[12]), .A1(n184), .A2(n213), .B0(n233), .B1(
        dand2[13]), .Y(n214) );
  OAI22XL U361 ( .A0(n216), .A1(n235), .B0(n215), .B1(n216), .Y(n217) );
  OA21XL U362 ( .A0(n220), .A1(n218), .B0(n217), .Y(n224) );
  AOI32X1 U363 ( .A0(n226), .A1(n225), .A2(n224), .B0(n224), .B1(n223), .Y(
        n227) );
  NOR2X1 U364 ( .A(dand2[19]), .B(dand2[18]), .Y(n228) );
  AND2X1 U365 ( .A(dior0[12]), .B(n291), .Y(n245) );
  OR2X1 U366 ( .A(dand3[13]), .B(n276), .Y(n250) );
  NOR2BX1 U367 ( .AN(n14), .B(dand3[15]), .Y(n249) );
  AOI21X1 U368 ( .A0(n282), .A1(n13), .B0(n249), .Y(n252) );
  OAI211X1 U369 ( .A0(dand3[12]), .A1(n233), .B0(n250), .C0(n252), .Y(n256) );
  NOR2BX1 U370 ( .AN(dior0[14]), .B(dand3[11]), .Y(n244) );
  OAI22XL U371 ( .A0(n248), .A1(n247), .B0(n246), .B1(n248), .Y(n255) );
  OAI32X1 U372 ( .A0(n282), .A1(n13), .A2(n249), .B0(n14), .B1(n283), .Y(n253)
         );
  AOI32X1 U373 ( .A0(dand3[12]), .A1(n233), .A2(n250), .B0(n276), .B1(
        dand3[13]), .Y(n251) );
  OAI22XL U374 ( .A0(n253), .A1(n281), .B0(n252), .B1(n253), .Y(n254) );
  OA21XL U375 ( .A0(n256), .A1(n255), .B0(n254), .Y(n269) );
  OAI31XL U376 ( .A0(n257), .A1(n256), .A2(n279), .B0(n269), .Y(n273) );
  NOR2BX1 U377 ( .AN(dior0[10]), .B(dand3[7]), .Y(n264) );
  AOI21X1 U378 ( .A0(n288), .A1(dior0[9]), .B0(n264), .Y(n266) );
  OAI2BB2XL U379 ( .B0(dand3[0]), .B1(n180), .A0N(n285), .A1N(\r335/B[1] ), 
        .Y(n258) );
  OR2X1 U380 ( .A(dand3[3]), .B(n277), .Y(n259) );
  AOI32X1 U381 ( .A0(dand3[2]), .A1(n137), .A2(n259), .B0(n277), .B1(dand3[3]), 
        .Y(n261) );
  OAI211X1 U382 ( .A0(\r335/B[1] ), .A1(n285), .B0(n258), .C0(n261), .Y(n263)
         );
  OAI21XL U383 ( .A0(dand3[2]), .A1(n137), .B0(n259), .Y(n260) );
  AND2X1 U384 ( .A(dior0[8]), .B(n287), .Y(n265) );
  AOI221XL U385 ( .A0(n261), .A1(n260), .B0(n11), .B1(n286), .C0(n265), .Y(
        n262) );
  NAND3X1 U386 ( .A(n266), .B(n263), .C(n262), .Y(n271) );
  OAI32X1 U387 ( .A0(n288), .A1(dior0[9]), .A2(n264), .B0(dior0[10]), .B1(n289), .Y(n268) );
  OAI32X1 U388 ( .A0(n286), .A1(n11), .A2(n265), .B0(dior0[8]), .B1(n287), .Y(
        n267) );
  OAI22XL U389 ( .A0(n268), .A1(n267), .B0(n266), .B1(n268), .Y(n270) );
  NAND3X1 U390 ( .A(n271), .B(n270), .C(n269), .Y(n272) );
  OAI211X1 U391 ( .A0(dand3[16]), .A1(n298), .B0(n273), .C0(n272), .Y(n275) );
  NOR3X1 U392 ( .A(dand3[17]), .B(dand3[19]), .C(dand3[18]), .Y(n274) );
  OAI211X1 U393 ( .A0(\r335/B[16] ), .A1(n284), .B0(n275), .C0(n274), .Y(
        q_stage_3) );
  divider_4stage_20_5_to_16bit_1_DW01_sub_0 r336 ( .A(dand3), .B({1'b0, 1'b0, 
        1'b0, \r335/B[16] , n14, n13, n15, n20, dior0[14], n19, dior0[12], n18, 
        dior0[10:8], n11, n12, n2, \r335/B[1] , n21}), .CI(1'b0), .DIFF({N99, 
        N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, 
        N84, N83, N82, N81, N80}) );
  divider_4stage_20_5_to_16bit_1_DW01_sub_1 sub_297 ( .A(dand2), .B({1'b0, 
        1'b0, \r335/B[16] , n14, n13, n15, n20, dior0[14], n19, dior0[12], n18, 
        dior0[10:8], n11, n12, n2, \r335/B[1] , n21, dior0[2]}), .CI(1'b0), 
        .DIFF({N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, 
        N60, N59, N58, N57, N56, N55, N54}) );
  divider_4stage_20_5_to_16bit_1_DW01_sub_2 sub_292 ( .A(dand1), .B({1'b0, 
        \r335/B[16] , n14, n13, n15, n20, dior0[14], n19, dior0[12], n18, 
        dior0[10:8], n11, n12, n2, \r335/B[1] , n21, dior0[2:1]}), .CI(1'b0), 
        .DIFF({N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, 
        N38, N37, N36, N35, N34, N33, N32}) );
  divider_4stage_20_5_to_16bit_1_DW01_sub_3 sub_287 ( .A(dand0), .B({
        \r335/B[16] , n14, n13, n15, n20, dior0[14], n19, dior0[12], n18, 
        dior0[10:8], n11, n12, n2, \r335/B[1] , n21, dior0[2:0]}), .CI(1'b0), 
        .DIFF({N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, 
        N16, N15, N14, N13, N12, N11, N10}) );
  DFFXL \cnt_reg[0]  ( .D(n299), .CK(clk), .Q(cnt[0]), .QN(n294) );
endmodule


module divider_3stage_26_18_to_9bit_signed_0_DW01_sub_1 ( A, B, CI, DIFF, CO
 );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [26:0] carry;

  ADDFXL U2_21 ( .A(A[21]), .B(n6), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n12), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n14), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n16), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n18), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n20), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n25), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n4), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n26), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n24), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n23), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n22), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFHX2 U2_20 ( .A(A[20]), .B(n7), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFHX2 U2_8 ( .A(A[8]), .B(n19), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFHX2 U2_12 ( .A(A[12]), .B(n15), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n5), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n13), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n17), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n21), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFHX2 U2_18 ( .A(A[18]), .B(n9), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFHX2 U2_19 ( .A(A[19]), .B(n8), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFHX1 U2_16 ( .A(A[16]), .B(n11), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFHX1 U2_17 ( .A(A[17]), .B(n10), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  XNOR2XL U1 ( .A(A[24]), .B(carry[24]), .Y(DIFF[24]) );
  XNOR2XL U2 ( .A(n27), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[24]), .Y(n1) );
  CLKINVX1 U5 ( .A(carry[24]), .Y(n2) );
  CLKINVX1 U6 ( .A(B[23]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[1]), .Y(n26) );
  NAND2X1 U8 ( .A(B[0]), .B(n3), .Y(carry[1]) );
  CLKINVX1 U9 ( .A(B[2]), .Y(n25) );
  CLKINVX1 U10 ( .A(B[3]), .Y(n24) );
  CLKINVX1 U11 ( .A(B[4]), .Y(n23) );
  CLKINVX1 U12 ( .A(B[5]), .Y(n22) );
  CLKINVX1 U13 ( .A(B[6]), .Y(n21) );
  CLKINVX1 U14 ( .A(B[7]), .Y(n20) );
  CLKINVX1 U15 ( .A(B[8]), .Y(n19) );
  CLKINVX1 U16 ( .A(B[9]), .Y(n18) );
  CLKINVX1 U17 ( .A(B[10]), .Y(n17) );
  CLKINVX1 U18 ( .A(B[11]), .Y(n16) );
  CLKINVX1 U19 ( .A(B[12]), .Y(n15) );
  CLKINVX1 U20 ( .A(B[13]), .Y(n14) );
  CLKINVX1 U21 ( .A(B[14]), .Y(n13) );
  CLKINVX1 U22 ( .A(B[15]), .Y(n12) );
  CLKINVX1 U23 ( .A(B[16]), .Y(n11) );
  CLKINVX1 U24 ( .A(B[17]), .Y(n10) );
  CLKINVX1 U25 ( .A(B[18]), .Y(n9) );
  CLKINVX1 U26 ( .A(B[19]), .Y(n8) );
  CLKINVX1 U27 ( .A(B[20]), .Y(n7) );
  CLKINVX1 U28 ( .A(B[21]), .Y(n6) );
  CLKINVX1 U29 ( .A(B[22]), .Y(n5) );
  CLKINVX1 U30 ( .A(B[0]), .Y(n27) );
  XNOR2X1 U31 ( .A(A[25]), .B(carry[25]), .Y(DIFF[25]) );
  NAND2X1 U32 ( .A(n1), .B(n2), .Y(carry[25]) );
endmodule


module divider_3stage_26_18_to_9bit_signed_0_DW_cmp_0 ( A, B, TC, GE_LT, 
        GE_GT_EQ, GE_LT_GT_LE, EQ_NE );
  input [25:0] A;
  input [25:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258;

  INVXL U126 ( .A(A[7]), .Y(n187) );
  NOR2BXL U127 ( .AN(B[7]), .B(A[7]), .Y(n239) );
  CLKINVX1 U128 ( .A(A[10]), .Y(n203) );
  CLKINVX1 U129 ( .A(A[22]), .Y(n194) );
  CLKINVX1 U130 ( .A(A[9]), .Y(n184) );
  CLKINVX1 U131 ( .A(A[14]), .Y(n199) );
  CLKINVX1 U132 ( .A(A[18]), .Y(n196) );
  CLKINVX1 U133 ( .A(A[2]), .Y(n190) );
  CLKINVX1 U134 ( .A(A[6]), .Y(n188) );
  CLKINVX1 U135 ( .A(A[8]), .Y(n185) );
  CLKINVX1 U136 ( .A(A[3]), .Y(n189) );
  CLKINVX1 U137 ( .A(n251), .Y(n200) );
  CLKINVX1 U138 ( .A(n220), .Y(n191) );
  CLKINVX1 U139 ( .A(n231), .Y(n193) );
  CLKINVX1 U140 ( .A(n226), .Y(n197) );
  CLKINVX1 U141 ( .A(A[23]), .Y(n192) );
  CLKINVX1 U142 ( .A(A[11]), .Y(n201) );
  CLKINVX1 U143 ( .A(n256), .Y(n202) );
  CLKINVX1 U144 ( .A(n229), .Y(n183) );
  CLKINVX1 U145 ( .A(n238), .Y(n186) );
  CLKINVX1 U146 ( .A(A[19]), .Y(n195) );
  CLKINVX1 U147 ( .A(A[15]), .Y(n198) );
  CLKINVX1 U148 ( .A(B[0]), .Y(n213) );
  CLKINVX1 U149 ( .A(B[20]), .Y(n205) );
  CLKINVX1 U150 ( .A(B[13]), .Y(n208) );
  CLKINVX1 U151 ( .A(B[17]), .Y(n206) );
  CLKINVX1 U152 ( .A(B[21]), .Y(n204) );
  CLKINVX1 U153 ( .A(B[12]), .Y(n209) );
  CLKINVX1 U154 ( .A(B[16]), .Y(n207) );
  CLKINVX1 U155 ( .A(B[4]), .Y(n211) );
  CLKINVX1 U156 ( .A(B[5]), .Y(n210) );
  CLKINVX1 U157 ( .A(B[1]), .Y(n212) );
  OAI211X1 U158 ( .A0(n214), .A1(n215), .B0(n216), .C0(n217), .Y(GE_LT_GT_LE)
         );
  NOR3X1 U159 ( .A(n218), .B(A[25]), .C(A[24]), .Y(n217) );
  AOI2BB2X1 U160 ( .B0(n219), .B1(n191), .A0N(n220), .A1N(n221), .Y(n218) );
  OAI32X1 U161 ( .A0(n194), .A1(B[22]), .A2(n222), .B0(B[23]), .B1(n192), .Y(
        n220) );
  AOI32X1 U162 ( .A0(n223), .A1(n205), .A2(A[20]), .B0(A[21]), .B1(n204), .Y(
        n219) );
  OAI221XL U163 ( .A0(n224), .A1(n225), .B0(n225), .B1(n197), .C0(n193), .Y(
        n216) );
  AOI32X1 U164 ( .A0(A[16]), .A1(n207), .A2(n227), .B0(n206), .B1(A[17]), .Y(
        n226) );
  OAI32X1 U165 ( .A0(n196), .A1(B[18]), .A2(n228), .B0(B[19]), .B1(n195), .Y(
        n225) );
  OAI211X1 U166 ( .A0(n229), .A1(n230), .B0(n193), .C0(n224), .Y(n215) );
  AOI21X1 U167 ( .A0(n196), .A1(B[18]), .B0(n228), .Y(n224) );
  NOR2BX1 U168 ( .AN(B[19]), .B(A[19]), .Y(n228) );
  OAI211X1 U169 ( .A0(A[20]), .A1(n205), .B0(n223), .C0(n221), .Y(n231) );
  AOI21X1 U170 ( .A0(n194), .A1(B[22]), .B0(n222), .Y(n221) );
  NOR2BX1 U171 ( .AN(B[23]), .B(A[23]), .Y(n222) );
  NAND2BX1 U172 ( .AN(A[21]), .B(B[21]), .Y(n223) );
  OAI31XL U173 ( .A0(n232), .A1(n233), .A2(n234), .B0(n235), .Y(n230) );
  AO22X1 U174 ( .A0(n186), .A1(n236), .B0(n234), .B1(n186), .Y(n235) );
  AOI32X1 U175 ( .A0(A[4]), .A1(n211), .A2(n237), .B0(n210), .B1(A[5]), .Y(
        n236) );
  OAI32X1 U176 ( .A0(n188), .A1(B[6]), .A2(n239), .B0(B[7]), .B1(n187), .Y(
        n238) );
  AO21X1 U177 ( .A0(n188), .A1(B[6]), .B0(n239), .Y(n234) );
  AOI211X1 U178 ( .A0(A[1]), .A1(n212), .B0(n240), .C0(n241), .Y(n233) );
  OA22X1 U179 ( .A0(n213), .A1(A[0]), .B0(n212), .B1(A[1]), .Y(n241) );
  OAI221XL U180 ( .A0(A[4]), .A1(n211), .B0(n242), .B1(n240), .C0(n237), .Y(
        n232) );
  OR2X1 U181 ( .A(A[5]), .B(n210), .Y(n237) );
  OAI32X1 U182 ( .A0(n190), .A1(B[2]), .A2(n243), .B0(B[3]), .B1(n189), .Y(
        n240) );
  AOI21X1 U183 ( .A0(B[2]), .A1(n190), .B0(n243), .Y(n242) );
  AND2X1 U184 ( .A(B[3]), .B(n189), .Y(n243) );
  OAI211X1 U185 ( .A0(A[16]), .A1(n207), .B0(n227), .C0(n244), .Y(n214) );
  OAI31XL U186 ( .A0(n245), .A1(n246), .A2(n202), .B0(n183), .Y(n244) );
  OAI21XL U187 ( .A0(n246), .A1(n247), .B0(n248), .Y(n229) );
  OAI22XL U188 ( .A0(n249), .A1(n200), .B0(n250), .B1(n249), .Y(n248) );
  AOI32X1 U189 ( .A0(A[12]), .A1(n209), .A2(n252), .B0(n208), .B1(A[13]), .Y(
        n251) );
  OAI32X1 U190 ( .A0(n199), .A1(B[14]), .A2(n253), .B0(B[15]), .B1(n198), .Y(
        n249) );
  OAI22XL U191 ( .A0(n254), .A1(n255), .B0(n256), .B1(n254), .Y(n247) );
  OAI32X1 U192 ( .A0(n185), .A1(B[8]), .A2(n257), .B0(B[9]), .B1(n184), .Y(
        n255) );
  OAI32X1 U193 ( .A0(n203), .A1(B[10]), .A2(n258), .B0(B[11]), .B1(n201), .Y(
        n254) );
  AOI21X1 U194 ( .A0(n203), .A1(B[10]), .B0(n258), .Y(n256) );
  NOR2BX1 U195 ( .AN(B[11]), .B(A[11]), .Y(n258) );
  OAI211X1 U196 ( .A0(A[12]), .A1(n209), .B0(n252), .C0(n250), .Y(n246) );
  AOI21X1 U197 ( .A0(n199), .A1(B[14]), .B0(n253), .Y(n250) );
  NOR2BX1 U198 ( .AN(B[15]), .B(A[15]), .Y(n253) );
  OR2X1 U199 ( .A(A[13]), .B(n208), .Y(n252) );
  AO21X1 U200 ( .A0(n185), .A1(B[8]), .B0(n257), .Y(n245) );
  AND2X1 U201 ( .A(B[9]), .B(n184), .Y(n257) );
  OR2X1 U202 ( .A(A[17]), .B(n206), .Y(n227) );
endmodule


module divider_3stage_26_18_to_9bit_signed_0_DW01_sub_2 ( A, B, CI, DIFF, CO
 );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [26:0] carry;

  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_24 ( .A(A[24]), .B(n2), .CI(carry[24]), .CO(carry[25]), .S(
        DIFF[24]) );
  NAND2BX1 U1 ( .AN(n26), .B(n1), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  XNOR2X1 U3 ( .A(A[25]), .B(carry[25]), .Y(DIFF[25]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U6 ( .A(B[1]), .Y(n25) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U15 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U16 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U17 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U18 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U19 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U20 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U21 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U22 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U23 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U24 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U25 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U26 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U27 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U28 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U29 ( .A(B[0]), .Y(n26) );
endmodule


module divider_3stage_26_18_to_9bit_signed_0_DW_cmp_1 ( A, B, TC, GE_LT, 
        GE_GT_EQ, GE_LT_GT_LE, EQ_NE );
  input [25:0] A;
  input [25:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264;

  AND2XL U129 ( .A(B[17]), .B(n200), .Y(n233) );
  OAI31XL U130 ( .A0(n216), .A1(n217), .A2(n218), .B0(n219), .Y(GE_LT_GT_LE)
         );
  OAI21XL U131 ( .A0(n191), .A1(n220), .B0(n221), .Y(n219) );
  INVX1 U132 ( .A(A[22]), .Y(n195) );
  INVXL U133 ( .A(n235), .Y(n193) );
  INVXL U134 ( .A(A[23]), .Y(n192) );
  INVXL U135 ( .A(A[21]), .Y(n196) );
  OAI32XL U136 ( .A0(n195), .A1(B[22]), .A2(n229), .B0(B[23]), .B1(n192), .Y(
        n225) );
  INVXL U137 ( .A(n227), .Y(n194) );
  INVXL U138 ( .A(A[19]), .Y(n198) );
  OAI32XL U139 ( .A0(n201), .A1(B[16]), .A2(n233), .B0(B[17]), .B1(n200), .Y(
        n231) );
  AOI21XL U140 ( .A0(n199), .A1(B[18]), .B0(n234), .Y(n232) );
  CLKINVX1 U141 ( .A(n224), .Y(n191) );
  CLKINVX1 U142 ( .A(n259), .Y(n204) );
  CLKINVX1 U143 ( .A(A[20]), .Y(n197) );
  CLKINVX1 U144 ( .A(A[14]), .Y(n203) );
  CLKINVX1 U145 ( .A(A[2]), .Y(n190) );
  CLKINVX1 U146 ( .A(A[6]), .Y(n188) );
  CLKINVX1 U147 ( .A(A[3]), .Y(n189) );
  CLKINVX1 U148 ( .A(A[17]), .Y(n200) );
  CLKINVX1 U149 ( .A(A[7]), .Y(n187) );
  CLKINVX1 U150 ( .A(A[15]), .Y(n202) );
  CLKINVX1 U151 ( .A(A[18]), .Y(n199) );
  CLKINVX1 U152 ( .A(A[16]), .Y(n201) );
  CLKINVX1 U153 ( .A(B[0]), .Y(n215) );
  CLKINVX1 U154 ( .A(n249), .Y(n186) );
  CLKINVX1 U155 ( .A(B[24]), .Y(n205) );
  CLKINVX1 U156 ( .A(B[12]), .Y(n207) );
  CLKINVX1 U157 ( .A(B[10]), .Y(n209) );
  CLKINVX1 U158 ( .A(B[8]), .Y(n211) );
  CLKINVX1 U159 ( .A(B[13]), .Y(n206) );
  CLKINVX1 U160 ( .A(B[11]), .Y(n208) );
  CLKINVX1 U161 ( .A(B[9]), .Y(n210) );
  CLKINVX1 U162 ( .A(B[1]), .Y(n214) );
  CLKINVX1 U163 ( .A(B[5]), .Y(n212) );
  CLKINVX1 U164 ( .A(B[4]), .Y(n213) );
  OAI211X1 U165 ( .A0(n193), .A1(n222), .B0(n223), .C0(n224), .Y(n221) );
  OAI22XL U166 ( .A0(n225), .A1(n226), .B0(n227), .B1(n225), .Y(n223) );
  OAI32X1 U167 ( .A0(n197), .A1(B[20]), .A2(n228), .B0(B[21]), .B1(n196), .Y(
        n226) );
  OAI22XL U168 ( .A0(n230), .A1(n231), .B0(n232), .B1(n230), .Y(n222) );
  OAI32X1 U169 ( .A0(n199), .A1(B[18]), .A2(n234), .B0(B[19]), .B1(n198), .Y(
        n230) );
  AOI21X1 U170 ( .A0(A[24]), .A1(n205), .B0(A[25]), .Y(n224) );
  OAI21XL U171 ( .A0(n236), .A1(n237), .B0(n220), .Y(n218) );
  NAND2BX1 U172 ( .AN(A[24]), .B(B[24]), .Y(n220) );
  NOR3X1 U173 ( .A(n238), .B(n239), .C(n240), .Y(n236) );
  OAI21XL U174 ( .A0(A[8]), .A1(n211), .B0(n241), .Y(n238) );
  AO21X1 U175 ( .A0(n201), .A1(B[16]), .B0(n233), .Y(n217) );
  OAI211X1 U176 ( .A0(n237), .A1(n242), .B0(n235), .C0(n232), .Y(n216) );
  NOR2BX1 U177 ( .AN(B[19]), .B(A[19]), .Y(n234) );
  AOI211X1 U178 ( .A0(n197), .A1(B[20]), .B0(n228), .C0(n194), .Y(n235) );
  AOI21X1 U179 ( .A0(n195), .A1(B[22]), .B0(n229), .Y(n227) );
  NOR2BX1 U180 ( .AN(B[23]), .B(A[23]), .Y(n229) );
  NOR2BX1 U181 ( .AN(B[21]), .B(A[21]), .Y(n228) );
  OAI31XL U182 ( .A0(n243), .A1(n244), .A2(n245), .B0(n246), .Y(n242) );
  AO22X1 U183 ( .A0(n186), .A1(n247), .B0(n245), .B1(n186), .Y(n246) );
  AOI32X1 U184 ( .A0(A[4]), .A1(n213), .A2(n248), .B0(n212), .B1(A[5]), .Y(
        n247) );
  OAI32X1 U185 ( .A0(n188), .A1(B[6]), .A2(n250), .B0(B[7]), .B1(n187), .Y(
        n249) );
  AO21X1 U186 ( .A0(n188), .A1(B[6]), .B0(n250), .Y(n245) );
  NOR2BX1 U187 ( .AN(B[7]), .B(A[7]), .Y(n250) );
  AOI211X1 U188 ( .A0(A[1]), .A1(n214), .B0(n251), .C0(n252), .Y(n244) );
  OA22X1 U189 ( .A0(n215), .A1(A[0]), .B0(n214), .B1(A[1]), .Y(n252) );
  OAI221XL U190 ( .A0(A[4]), .A1(n213), .B0(n253), .B1(n251), .C0(n248), .Y(
        n243) );
  OR2X1 U191 ( .A(A[5]), .B(n212), .Y(n248) );
  OAI32X1 U192 ( .A0(n190), .A1(B[2]), .A2(n254), .B0(B[3]), .B1(n189), .Y(
        n251) );
  AOI21X1 U193 ( .A0(B[2]), .A1(n190), .B0(n254), .Y(n253) );
  AND2X1 U194 ( .A(B[3]), .B(n189), .Y(n254) );
  OAI21XL U195 ( .A0(n239), .A1(n255), .B0(n256), .Y(n237) );
  OAI22XL U196 ( .A0(n257), .A1(n204), .B0(n258), .B1(n257), .Y(n256) );
  AOI32X1 U197 ( .A0(A[12]), .A1(n207), .A2(n260), .B0(n206), .B1(A[13]), .Y(
        n259) );
  OAI32X1 U198 ( .A0(n203), .A1(B[14]), .A2(n261), .B0(B[15]), .B1(n202), .Y(
        n257) );
  AO22X1 U199 ( .A0(n262), .A1(n263), .B0(n240), .B1(n262), .Y(n255) );
  OAI21XL U200 ( .A0(A[10]), .A1(n209), .B0(n264), .Y(n240) );
  AOI32X1 U201 ( .A0(A[8]), .A1(n211), .A2(n241), .B0(n210), .B1(A[9]), .Y(
        n263) );
  OR2X1 U202 ( .A(A[9]), .B(n210), .Y(n241) );
  AOI32X1 U203 ( .A0(A[10]), .A1(n209), .A2(n264), .B0(n208), .B1(A[11]), .Y(
        n262) );
  OR2X1 U204 ( .A(A[11]), .B(n208), .Y(n264) );
  OAI211X1 U205 ( .A0(A[12]), .A1(n207), .B0(n260), .C0(n258), .Y(n239) );
  AOI21X1 U206 ( .A0(n203), .A1(B[14]), .B0(n261), .Y(n258) );
  NOR2BX1 U207 ( .AN(B[15]), .B(A[15]), .Y(n261) );
  OR2X1 U208 ( .A(A[13]), .B(n206), .Y(n260) );
endmodule


module divider_3stage_26_18_to_9bit_signed_0_DW01_sub_3 ( A, B, CI, DIFF, CO
 );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35;
  wire   [26:0] carry;

  ADDFXL U2_20 ( .A(A[20]), .B(n15), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n17), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n19), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n20), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n22), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n26), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n29), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n31), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n33), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  XOR3X1 U2_25 ( .A(A[25]), .B(n10), .C(carry[25]), .Y(DIFF[25]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n28), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n32), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n30), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX1 U2_1 ( .A(A[1]), .B(n34), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_22 ( .A(A[22]), .B(n13), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFHX2 U2_8 ( .A(A[8]), .B(n27), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFHX2 U2_19 ( .A(A[19]), .B(n16), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFHX2 U2_12 ( .A(A[12]), .B(n23), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n14), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n18), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n21), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFHX2 U2_10 ( .A(A[10]), .B(n25), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFHX2 U2_11 ( .A(A[11]), .B(n24), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  XOR2X1 U1 ( .A(n11), .B(A[24]), .Y(n5) );
  XOR2X1 U2 ( .A(n12), .B(A[23]), .Y(n1) );
  XOR2X1 U3 ( .A(n1), .B(carry[23]), .Y(DIFF[23]) );
  NAND2XL U4 ( .A(A[23]), .B(carry[23]), .Y(n2) );
  NAND2XL U5 ( .A(n12), .B(carry[23]), .Y(n3) );
  NAND2XL U6 ( .A(n12), .B(A[23]), .Y(n4) );
  NAND3X1 U7 ( .A(n2), .B(n3), .C(n4), .Y(carry[24]) );
  XOR2XL U8 ( .A(n5), .B(carry[24]), .Y(DIFF[24]) );
  NAND2XL U9 ( .A(A[24]), .B(carry[24]), .Y(n6) );
  NAND2XL U10 ( .A(n11), .B(carry[24]), .Y(n7) );
  NAND2X1 U11 ( .A(n11), .B(A[24]), .Y(n8) );
  NAND3X1 U12 ( .A(n6), .B(n7), .C(n8), .Y(carry[25]) );
  INVXL U13 ( .A(B[0]), .Y(n35) );
  XNOR2XL U14 ( .A(n35), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U15 ( .A(B[25]), .Y(n10) );
  CLKINVX1 U16 ( .A(A[0]), .Y(n9) );
  CLKINVX1 U17 ( .A(B[1]), .Y(n34) );
  NAND2X1 U18 ( .A(B[0]), .B(n9), .Y(carry[1]) );
  CLKINVX1 U19 ( .A(B[2]), .Y(n33) );
  CLKINVX1 U20 ( .A(B[3]), .Y(n32) );
  CLKINVX1 U21 ( .A(B[4]), .Y(n31) );
  CLKINVX1 U22 ( .A(B[5]), .Y(n30) );
  CLKINVX1 U23 ( .A(B[6]), .Y(n29) );
  CLKINVX1 U24 ( .A(B[7]), .Y(n28) );
  CLKINVX1 U25 ( .A(B[8]), .Y(n27) );
  CLKINVX1 U26 ( .A(B[9]), .Y(n26) );
  CLKINVX1 U27 ( .A(B[10]), .Y(n25) );
  CLKINVX1 U28 ( .A(B[11]), .Y(n24) );
  CLKINVX1 U29 ( .A(B[12]), .Y(n23) );
  CLKINVX1 U30 ( .A(B[13]), .Y(n22) );
  CLKINVX1 U31 ( .A(B[14]), .Y(n21) );
  CLKINVX1 U32 ( .A(B[15]), .Y(n20) );
  CLKINVX1 U33 ( .A(B[16]), .Y(n19) );
  CLKINVX1 U34 ( .A(B[17]), .Y(n18) );
  CLKINVX1 U35 ( .A(B[18]), .Y(n17) );
  CLKINVX1 U36 ( .A(B[19]), .Y(n16) );
  CLKINVX1 U37 ( .A(B[20]), .Y(n15) );
  CLKINVX1 U38 ( .A(B[21]), .Y(n14) );
  CLKINVX1 U39 ( .A(B[22]), .Y(n13) );
  CLKINVX1 U40 ( .A(B[24]), .Y(n11) );
  CLKINVX1 U41 ( .A(B[23]), .Y(n12) );
endmodule


module divider_3stage_26_18_to_9bit_signed_0_DW_cmp_2 ( A, B, TC, GE_LT, 
        GE_GT_EQ, GE_LT_GT_LE, EQ_NE );
  input [25:0] A;
  input [25:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269;

  OAI21XL U131 ( .A0(n220), .A1(n221), .B0(n222), .Y(GE_LT_GT_LE) );
  INVXL U132 ( .A(A[1]), .Y(n208) );
  OAI211XL U133 ( .A0(A[8]), .A1(n216), .B0(n245), .C0(n246), .Y(n244) );
  AOI32XL U134 ( .A0(A[8]), .A1(n216), .A2(n245), .B0(n215), .B1(A[9]), .Y(
        n257) );
  NAND2BXL U135 ( .AN(A[9]), .B(B[9]), .Y(n245) );
  INVXL U136 ( .A(A[5]), .Y(n206) );
  INVXL U137 ( .A(A[0]), .Y(n219) );
  NOR2BXL U138 ( .AN(B[5]), .B(A[5]), .Y(n262) );
  NAND2BXL U139 ( .AN(A[3]), .B(B[3]), .Y(n268) );
  CLKINVX1 U140 ( .A(n224), .Y(n189) );
  CLKINVX1 U141 ( .A(n238), .Y(n192) );
  CLKINVX1 U142 ( .A(n230), .Y(n193) );
  CLKINVX1 U143 ( .A(A[22]), .Y(n195) );
  CLKINVX1 U144 ( .A(A[23]), .Y(n194) );
  CLKINVX1 U145 ( .A(A[25]), .Y(n190) );
  CLKINVX1 U146 ( .A(n235), .Y(n200) );
  CLKINVX1 U147 ( .A(B[17]), .Y(n209) );
  CLKINVX1 U148 ( .A(B[11]), .Y(n213) );
  CLKINVX1 U149 ( .A(n253), .Y(n203) );
  CLKINVX1 U150 ( .A(B[13]), .Y(n211) );
  CLKINVX1 U151 ( .A(B[12]), .Y(n212) );
  CLKINVX1 U152 ( .A(B[10]), .Y(n214) );
  CLKINVX1 U153 ( .A(B[9]), .Y(n215) );
  CLKINVX1 U154 ( .A(B[8]), .Y(n216) );
  CLKINVX1 U155 ( .A(A[20]), .Y(n197) );
  CLKINVX1 U156 ( .A(A[14]), .Y(n202) );
  CLKINVX1 U157 ( .A(A[18]), .Y(n199) );
  CLKINVX1 U158 ( .A(A[24]), .Y(n191) );
  CLKINVX1 U159 ( .A(A[15]), .Y(n201) );
  CLKINVX1 U160 ( .A(A[21]), .Y(n196) );
  CLKINVX1 U161 ( .A(A[19]), .Y(n198) );
  CLKINVX1 U162 ( .A(B[3]), .Y(n217) );
  CLKINVX1 U163 ( .A(B[16]), .Y(n210) );
  CLKINVX1 U164 ( .A(B[2]), .Y(n218) );
  CLKINVX1 U165 ( .A(A[6]), .Y(n205) );
  CLKINVX1 U166 ( .A(A[4]), .Y(n207) );
  CLKINVX1 U167 ( .A(A[7]), .Y(n204) );
  OAI21XL U168 ( .A0(n223), .A1(n224), .B0(n225), .Y(n222) );
  OAI211X1 U169 ( .A0(n192), .A1(n226), .B0(n227), .C0(n189), .Y(n225) );
  OAI22XL U170 ( .A0(n228), .A1(n229), .B0(n193), .B1(n228), .Y(n227) );
  OAI32X1 U171 ( .A0(n197), .A1(B[20]), .A2(n231), .B0(B[21]), .B1(n196), .Y(
        n229) );
  OAI32X1 U172 ( .A0(n195), .A1(B[22]), .A2(n232), .B0(B[23]), .B1(n194), .Y(
        n228) );
  OAI22XL U173 ( .A0(n233), .A1(n200), .B0(n234), .B1(n233), .Y(n226) );
  AOI32X1 U174 ( .A0(A[16]), .A1(n210), .A2(n236), .B0(n209), .B1(A[17]), .Y(
        n235) );
  OAI32X1 U175 ( .A0(n199), .A1(B[18]), .A2(n237), .B0(B[19]), .B1(n198), .Y(
        n233) );
  OAI32X1 U176 ( .A0(n191), .A1(B[24]), .A2(n239), .B0(B[25]), .B1(n190), .Y(
        n224) );
  NAND3X1 U177 ( .A(n223), .B(n238), .C(n234), .Y(n221) );
  AOI21X1 U178 ( .A0(n199), .A1(B[18]), .B0(n237), .Y(n234) );
  AND2X1 U179 ( .A(B[19]), .B(n198), .Y(n237) );
  AOI211X1 U180 ( .A0(n197), .A1(B[20]), .B0(n231), .C0(n230), .Y(n238) );
  AO21X1 U181 ( .A0(n195), .A1(B[22]), .B0(n232), .Y(n230) );
  AND2X1 U182 ( .A(B[23]), .B(n194), .Y(n232) );
  AND2X1 U183 ( .A(B[21]), .B(n196), .Y(n231) );
  AOI21X1 U184 ( .A0(n191), .A1(B[24]), .B0(n239), .Y(n223) );
  AND2X1 U185 ( .A(B[25]), .B(n190), .Y(n239) );
  OAI211X1 U186 ( .A0(A[16]), .A1(n210), .B0(n236), .C0(n240), .Y(n220) );
  AOI32X1 U187 ( .A0(n241), .A1(n242), .A2(n243), .B0(n243), .B1(n244), .Y(
        n240) );
  NOR2X1 U188 ( .A(n247), .B(n248), .Y(n246) );
  OA21XL U189 ( .A0(n247), .A1(n249), .B0(n250), .Y(n243) );
  OAI22XL U190 ( .A0(n251), .A1(n203), .B0(n252), .B1(n251), .Y(n250) );
  AOI32X1 U191 ( .A0(A[12]), .A1(n212), .A2(n254), .B0(n211), .B1(A[13]), .Y(
        n253) );
  OAI32X1 U192 ( .A0(n202), .A1(B[14]), .A2(n255), .B0(B[15]), .B1(n201), .Y(
        n251) );
  AO22X1 U193 ( .A0(n256), .A1(n257), .B0(n248), .B1(n256), .Y(n249) );
  OAI21XL U194 ( .A0(A[10]), .A1(n214), .B0(n258), .Y(n248) );
  AOI32X1 U195 ( .A0(A[10]), .A1(n214), .A2(n258), .B0(n213), .B1(A[11]), .Y(
        n256) );
  NAND2BX1 U196 ( .AN(A[11]), .B(B[11]), .Y(n258) );
  OAI211X1 U197 ( .A0(A[12]), .A1(n212), .B0(n254), .C0(n252), .Y(n247) );
  AOI21X1 U198 ( .A0(n202), .A1(B[14]), .B0(n255), .Y(n252) );
  AND2X1 U199 ( .A(B[15]), .B(n201), .Y(n255) );
  NAND2BX1 U200 ( .AN(A[13]), .B(B[13]), .Y(n254) );
  OAI22XL U201 ( .A0(n259), .A1(n260), .B0(n261), .B1(n259), .Y(n242) );
  OAI32X1 U202 ( .A0(n207), .A1(B[4]), .A2(n262), .B0(B[5]), .B1(n206), .Y(
        n260) );
  OAI32X1 U203 ( .A0(n205), .A1(B[6]), .A2(n263), .B0(B[7]), .B1(n204), .Y(
        n259) );
  NAND3X1 U204 ( .A(n261), .B(n264), .C(n265), .Y(n241) );
  AOI221XL U205 ( .A0(n266), .A1(n267), .B0(B[4]), .B1(n207), .C0(n262), .Y(
        n265) );
  OAI21XL U206 ( .A0(A[2]), .A1(n218), .B0(n268), .Y(n267) );
  OAI211X1 U207 ( .A0(B[1]), .A1(n208), .B0(n269), .C0(n266), .Y(n264) );
  AOI32X1 U208 ( .A0(A[2]), .A1(n218), .A2(n268), .B0(n217), .B1(A[3]), .Y(
        n266) );
  AO22X1 U209 ( .A0(n219), .A1(B[0]), .B0(n208), .B1(B[1]), .Y(n269) );
  AOI21X1 U210 ( .A0(n205), .A1(B[6]), .B0(n263), .Y(n261) );
  AND2X1 U211 ( .A(B[7]), .B(n204), .Y(n263) );
  NAND2BX1 U212 ( .AN(A[17]), .B(B[17]), .Y(n236) );
endmodule


module divider_3stage_26_18_to_9bit_signed_0_DW01_sub_5 ( A, B, CI, DIFF, CO
 );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   \B[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49;
  assign \B[0]  = B[0];
  assign DIFF[0] = \B[0] ;

  NAND2BXL U1 ( .AN(n3), .B(n47), .Y(n4) );
  NAND2BXL U2 ( .AN(\B[0] ), .B(n49), .Y(n2) );
  NAND2BXL U3 ( .AN(n4), .B(n46), .Y(n5) );
  NAND2BXL U4 ( .AN(n5), .B(n45), .Y(n6) );
  NAND2BXL U5 ( .AN(n6), .B(n44), .Y(n7) );
  NAND2BXL U6 ( .AN(n7), .B(n43), .Y(n8) );
  NAND2BXL U7 ( .AN(n8), .B(n42), .Y(n9) );
  NAND2BXL U8 ( .AN(n9), .B(n41), .Y(n10) );
  INVX1 U9 ( .A(B[1]), .Y(n49) );
  INVX1 U10 ( .A(B[2]), .Y(n48) );
  INVX1 U11 ( .A(B[3]), .Y(n47) );
  INVX1 U12 ( .A(B[4]), .Y(n46) );
  INVX1 U13 ( .A(B[5]), .Y(n45) );
  INVXL U14 ( .A(B[25]), .Y(n25) );
  NAND2BX1 U15 ( .AN(n24), .B(n26), .Y(n1) );
  NAND2BX1 U16 ( .AN(n2), .B(n48), .Y(n3) );
  NAND2BX1 U17 ( .AN(n10), .B(n40), .Y(n11) );
  NAND2BX1 U18 ( .AN(n11), .B(n39), .Y(n12) );
  NAND2BX1 U19 ( .AN(n12), .B(n38), .Y(n13) );
  NAND2BX1 U20 ( .AN(n13), .B(n37), .Y(n14) );
  NAND2BX1 U21 ( .AN(n14), .B(n36), .Y(n15) );
  NAND2BX1 U22 ( .AN(n15), .B(n35), .Y(n16) );
  NAND2BX1 U23 ( .AN(n16), .B(n34), .Y(n17) );
  NAND2BX1 U24 ( .AN(n17), .B(n33), .Y(n18) );
  NAND2BX1 U25 ( .AN(n18), .B(n32), .Y(n19) );
  NAND2BX1 U26 ( .AN(n19), .B(n31), .Y(n20) );
  NAND2BX1 U27 ( .AN(n20), .B(n30), .Y(n21) );
  NAND2BX1 U28 ( .AN(n21), .B(n29), .Y(n22) );
  NAND2BX1 U29 ( .AN(n22), .B(n28), .Y(n23) );
  NAND2BX1 U30 ( .AN(n23), .B(n27), .Y(n24) );
  XNOR2X1 U31 ( .A(n45), .B(n5), .Y(DIFF[5]) );
  XNOR2X1 U32 ( .A(n27), .B(n23), .Y(DIFF[23]) );
  XNOR2X1 U33 ( .A(n28), .B(n22), .Y(DIFF[22]) );
  XNOR2X1 U34 ( .A(n49), .B(\B[0] ), .Y(DIFF[1]) );
  XNOR2X1 U35 ( .A(n44), .B(n6), .Y(DIFF[6]) );
  XNOR2X1 U36 ( .A(n46), .B(n4), .Y(DIFF[4]) );
  XNOR2X1 U37 ( .A(n25), .B(n1), .Y(DIFF[25]) );
  XNOR2X1 U38 ( .A(n48), .B(n2), .Y(DIFF[2]) );
  XNOR2X1 U39 ( .A(n47), .B(n3), .Y(DIFF[3]) );
  CLKINVX1 U40 ( .A(B[6]), .Y(n44) );
  XNOR2X1 U41 ( .A(n35), .B(n15), .Y(DIFF[15]) );
  XNOR2X1 U42 ( .A(n31), .B(n19), .Y(DIFF[19]) );
  XNOR2X1 U43 ( .A(n36), .B(n14), .Y(DIFF[14]) );
  XNOR2X1 U44 ( .A(n43), .B(n7), .Y(DIFF[7]) );
  XNOR2X1 U45 ( .A(n30), .B(n20), .Y(DIFF[20]) );
  XNOR2X1 U46 ( .A(n32), .B(n18), .Y(DIFF[18]) );
  XNOR2X1 U47 ( .A(n26), .B(n24), .Y(DIFF[24]) );
  XNOR2X1 U48 ( .A(n37), .B(n13), .Y(DIFF[13]) );
  XNOR2X1 U49 ( .A(n29), .B(n21), .Y(DIFF[21]) );
  XNOR2X1 U50 ( .A(n40), .B(n10), .Y(DIFF[10]) );
  XNOR2X1 U51 ( .A(n39), .B(n11), .Y(DIFF[11]) );
  XNOR2X1 U52 ( .A(n33), .B(n17), .Y(DIFF[17]) );
  XNOR2X1 U53 ( .A(n41), .B(n9), .Y(DIFF[9]) );
  XNOR2X1 U54 ( .A(n38), .B(n12), .Y(DIFF[12]) );
  XNOR2X1 U55 ( .A(n42), .B(n8), .Y(DIFF[8]) );
  XNOR2X1 U56 ( .A(n34), .B(n16), .Y(DIFF[16]) );
  CLKINVX1 U57 ( .A(B[7]), .Y(n43) );
  CLKINVX1 U58 ( .A(B[8]), .Y(n42) );
  CLKINVX1 U59 ( .A(B[9]), .Y(n41) );
  CLKINVX1 U60 ( .A(B[10]), .Y(n40) );
  CLKINVX1 U61 ( .A(B[11]), .Y(n39) );
  CLKINVX1 U62 ( .A(B[12]), .Y(n38) );
  CLKINVX1 U63 ( .A(B[13]), .Y(n37) );
  CLKINVX1 U64 ( .A(B[14]), .Y(n36) );
  CLKINVX1 U65 ( .A(B[15]), .Y(n35) );
  CLKINVX1 U66 ( .A(B[16]), .Y(n34) );
  CLKINVX1 U67 ( .A(B[17]), .Y(n33) );
  CLKINVX1 U68 ( .A(B[18]), .Y(n32) );
  CLKINVX1 U69 ( .A(B[19]), .Y(n31) );
  CLKINVX1 U70 ( .A(B[20]), .Y(n30) );
  CLKINVX1 U71 ( .A(B[21]), .Y(n29) );
  CLKINVX1 U72 ( .A(B[22]), .Y(n28) );
  CLKINVX1 U73 ( .A(B[23]), .Y(n27) );
  CLKINVX1 U74 ( .A(B[24]), .Y(n26) );
endmodule


module divider_3stage_26_18_to_9bit_signed_0 ( clk, load, dividand, dividor, q, 
        dividand_sign, dividor_sign );
  input [25:0] dividand;
  input [17:0] dividor;
  output [8:0] q;
  input clk, load, dividand_sign, dividor_sign;
  wire   N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N39, N40,
         N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54,
         N55, N56, q_stage_0, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, q_stage_1, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97,
         N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109,
         N110, N111, N112, N113, q_stage_2, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, N134, N135, N136,
         N137, N138, N139, N140, N141, N142, N143, N144, N145, \q_reg[8] ,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n71, n72, n73, n77, n78,
         n79, n80, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n121, n122, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         \sub_392/carry[8] , \sub_392/carry[7] , \sub_392/carry[6] ,
         \sub_392/carry[5] , \sub_392/carry[4] , \sub_392/carry[3] ,
         \sub_392/carry[2] , \sub_337/carry[17] , \sub_337/carry[16] ,
         \sub_337/carry[15] , \sub_337/carry[14] , \sub_337/carry[13] ,
         \sub_337/carry[12] , \sub_337/carry[11] , \sub_337/carry[10] ,
         \sub_337/carry[9] , \sub_337/carry[8] , \sub_337/carry[7] ,
         \sub_337/carry[6] , \sub_337/carry[5] , \sub_337/carry[4] ,
         \sub_337/carry[3] , \sub_337/carry[2] , n5, n6, n13, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n68, n69, n70, n74,
         n75, n76, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n120, n123, n124, n125, n126, n127, n128, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221;
  wire   [25:0] dand0;
  wire   [25:0] dior0;
  wire   [25:0] dior3;
  wire   [25:0] dand1;
  wire   [25:0] dand2;
  wire   [2:0] cnt;
  assign N39 = dividor[0];

  DFFX1 \q_reg_reg[8]  ( .D(n201), .CK(clk), .Q(\q_reg[8] ), .QN(n80) );
  DFFQX1 \cnt_reg[1]  ( .D(n208), .CK(clk), .Q(cnt[1]) );
  DFFQX1 \cnt_reg[0]  ( .D(n209), .CK(clk), .Q(cnt[0]) );
  DFFX1 \q_reg_reg[5]  ( .D(n204), .CK(clk), .QN(n126) );
  DFFX1 \q_reg_reg[3]  ( .D(n206), .CK(clk), .QN(n124) );
  DFFX1 \q_reg_reg[6]  ( .D(n203), .CK(clk), .QN(n123) );
  DFFX1 \q_reg_reg[4]  ( .D(n205), .CK(clk), .QN(n92) );
  DFFX1 \q_reg_reg[7]  ( .D(n202), .CK(clk), .QN(n91) );
  EDFFX1 \q_reg_reg[2]  ( .D(n35), .E(n21), .CK(clk), .QN(n127) );
  EDFFX1 \q_reg_reg[1]  ( .D(n32), .E(n20), .CK(clk), .QN(n120) );
  EDFFX1 \q_reg_reg[0]  ( .D(q_stage_2), .E(n21), .CK(clk), .Q(N270), .QN(n125) );
  EDFFX1 \dior3_reg[18]  ( .D(dior0[21]), .E(n20), .CK(clk), .Q(dior3[18]) );
  DFFX1 \dand3_reg[18]  ( .D(n183), .CK(clk), .QN(n49) );
  DFFX1 \dand3_reg[16]  ( .D(n185), .CK(clk), .QN(n51) );
  EDFFX1 \dior3_reg[19]  ( .D(dior0[22]), .E(n20), .CK(clk), .Q(dior3[19]) );
  EDFFX1 \dior3_reg[17]  ( .D(dior0[20]), .E(n20), .CK(clk), .Q(dior3[17]) );
  EDFFX1 \dior3_reg[16]  ( .D(dior0[19]), .E(n20), .CK(clk), .Q(dior3[16]) );
  EDFFX1 \dior3_reg[15]  ( .D(dior0[18]), .E(n20), .CK(clk), .Q(dior3[15]) );
  EDFFX1 \dior3_reg[14]  ( .D(dior0[17]), .E(n20), .CK(clk), .Q(dior3[14]) );
  EDFFX1 \dior3_reg[13]  ( .D(dior0[16]), .E(n21), .CK(clk), .Q(dior3[13]) );
  EDFFX1 \dior3_reg[12]  ( .D(dior0[15]), .E(n20), .CK(clk), .Q(dior3[12]) );
  EDFFX1 \dior3_reg[11]  ( .D(dior0[14]), .E(n20), .CK(clk), .Q(dior3[11]) );
  EDFFX1 \dior3_reg[22]  ( .D(n212), .E(n20), .CK(clk), .QN(n71) );
  EDFFX1 \dior3_reg[21]  ( .D(n215), .E(n20), .CK(clk), .QN(n72) );
  EDFFX1 \dior3_reg[20]  ( .D(n218), .E(n20), .CK(clk), .QN(n73) );
  DFFX1 \dand3_reg[25]  ( .D(n176), .CK(clk), .QN(n42) );
  DFFX1 \dand3_reg[24]  ( .D(n177), .CK(clk), .QN(n43) );
  DFFX1 \dand3_reg[23]  ( .D(n178), .CK(clk), .QN(n44) );
  DFFX1 \dand3_reg[22]  ( .D(n179), .CK(clk), .QN(n45) );
  DFFX1 \dand3_reg[21]  ( .D(n180), .CK(clk), .QN(n46) );
  DFFX1 \dand3_reg[20]  ( .D(n181), .CK(clk), .QN(n47) );
  DFFX1 \dand3_reg[19]  ( .D(n182), .CK(clk), .QN(n48) );
  DFFX1 \dand3_reg[17]  ( .D(n184), .CK(clk), .QN(n50) );
  DFFX1 \dand3_reg[15]  ( .D(n186), .CK(clk), .QN(n52) );
  DFFX1 \dand3_reg[14]  ( .D(n187), .CK(clk), .QN(n53) );
  DFFX1 \dand3_reg[13]  ( .D(n188), .CK(clk), .QN(n54) );
  DFFX1 \dand3_reg[12]  ( .D(n189), .CK(clk), .QN(n55) );
  DFFX1 \dand3_reg[11]  ( .D(n190), .CK(clk), .QN(n56) );
  DFFX1 \dand3_reg[10]  ( .D(n191), .CK(clk), .QN(n57) );
  EDFFX1 \dior3_reg[10]  ( .D(dior0[13]), .E(n20), .CK(clk), .Q(dior3[10]) );
  EDFFX1 \dior3_reg[9]  ( .D(dior0[12]), .E(n20), .CK(clk), .Q(dior3[9]) );
  EDFFX1 \dior3_reg[8]  ( .D(dior0[11]), .E(n20), .CK(clk), .Q(dior3[8]) );
  EDFFX1 \dior3_reg[7]  ( .D(dior0[10]), .E(n20), .CK(clk), .Q(dior3[7]) );
  EDFFX1 \dior3_reg[6]  ( .D(dior0[9]), .E(n21), .CK(clk), .Q(dior3[6]) );
  EDFFX1 \dior3_reg[5]  ( .D(dior0[8]), .E(n21), .CK(clk), .Q(dior3[5]) );
  EDFFTRX1 \dior3_reg[4]  ( .RN(n38), .D(dior3[7]), .E(n130), .CK(clk), .Q(
        dior3[4]) );
  DFFX1 \dand3_reg[9]  ( .D(n192), .CK(clk), .QN(n58) );
  DFFX1 \dand3_reg[8]  ( .D(n193), .CK(clk), .QN(n59) );
  DFFX1 \dand3_reg[7]  ( .D(n194), .CK(clk), .QN(n60) );
  DFFX1 \dand3_reg[6]  ( .D(n195), .CK(clk), .QN(n61) );
  DFFX1 \dand3_reg[5]  ( .D(n196), .CK(clk), .QN(n62) );
  EDFFTRX1 \dior3_reg[2]  ( .RN(n38), .D(dior3[5]), .E(n130), .CK(clk), .QN(
        n77) );
  EDFFTRX1 \dior3_reg[1]  ( .RN(n38), .D(dior3[4]), .E(n130), .CK(clk), .QN(
        n78) );
  EDFFTRX1 \dior3_reg[0]  ( .RN(n38), .D(dior3[3]), .E(n130), .CK(clk), .QN(
        n79) );
  EDFFTRX1 \dior3_reg[3]  ( .RN(n38), .D(dior3[6]), .E(n130), .CK(clk), .Q(
        dior3[3]) );
  DFFX1 \dand3_reg[1]  ( .D(n207), .CK(clk), .QN(n66) );
  DFFX1 \dand3_reg[4]  ( .D(n197), .CK(clk), .QN(n63) );
  DFFX1 \dand3_reg[3]  ( .D(n198), .CK(clk), .QN(n64) );
  DFFX1 \dand3_reg[2]  ( .D(n199), .CK(clk), .QN(n65) );
  DFFX1 \dand3_reg[0]  ( .D(n200), .CK(clk), .QN(n67) );
  INVX3 U3 ( .A(n31), .Y(n30) );
  BUFX4 U4 ( .A(q_stage_1), .Y(n32) );
  CLKBUFX2 U5 ( .A(q_stage_1), .Y(n31) );
  AOI22X2 U6 ( .A0(dividand[1]), .A1(n26), .B0(N13), .B1(n23), .Y(n164) );
  AO22X4 U7 ( .A0(n30), .A1(dand1[1]), .B0(N89), .B1(n32), .Y(dand2[1]) );
  AO22X4 U8 ( .A0(n30), .A1(dand1[0]), .B0(N88), .B1(n32), .Y(dand2[0]) );
  OAI21XL U9 ( .A0(load), .A1(n67), .B0(n175), .Y(dand0[0]) );
  AOI22X1 U10 ( .A0(dividand[0]), .A1(n26), .B0(N12), .B1(n24), .Y(n175) );
  OAI21XL U11 ( .A0(load), .A1(n66), .B0(n164), .Y(dand0[1]) );
  OAI21XL U12 ( .A0(load), .A1(n62), .B0(n154), .Y(dand0[5]) );
  CLKBUFX3 U16 ( .A(n150), .Y(n23) );
  CLKBUFX3 U17 ( .A(n149), .Y(n26) );
  AO22X1 U24 ( .A0(n33), .A1(dand0[25]), .B0(n34), .B1(N85), .Y(dand1[25]) );
  AOI211X1 U26 ( .A0(cnt[0]), .A1(cnt[1]), .B0(cnt[2]), .C0(load), .Y(n130) );
  CLKBUFX3 U27 ( .A(n39), .Y(n38) );
  BUFX2 U29 ( .A(n149), .Y(n25) );
  NOR2XL U30 ( .A(load), .B(n77), .Y(dior0[2]) );
  CLKBUFX2 U31 ( .A(n150), .Y(n22) );
  AND2X1 U32 ( .A(dior3[3]), .B(n37), .Y(n13) );
  OAI21XL U33 ( .A0(load), .A1(n65), .B0(n157), .Y(dand0[2]) );
  CLKBUFX2 U34 ( .A(n39), .Y(n36) );
  CLKBUFX2 U35 ( .A(n39), .Y(n37) );
  AO22XL U36 ( .A0(n30), .A1(dand1[2]), .B0(N90), .B1(n32), .Y(dand2[2]) );
  AO22XL U37 ( .A0(n30), .A1(dand1[3]), .B0(N91), .B1(n32), .Y(dand2[3]) );
  AO22XL U38 ( .A0(n30), .A1(dand1[4]), .B0(N92), .B1(n32), .Y(dand2[4]) );
  AO22XL U39 ( .A0(n30), .A1(dand1[5]), .B0(N93), .B1(n32), .Y(dand2[5]) );
  AO22XL U40 ( .A0(n30), .A1(dand1[6]), .B0(N94), .B1(n32), .Y(dand2[6]) );
  AO22XL U41 ( .A0(n30), .A1(dand1[7]), .B0(N95), .B1(n32), .Y(dand2[7]) );
  AO22XL U42 ( .A0(n30), .A1(dand1[11]), .B0(N99), .B1(n32), .Y(dand2[11]) );
  AO22XL U43 ( .A0(n30), .A1(dand1[8]), .B0(N96), .B1(n31), .Y(dand2[8]) );
  AO22XL U44 ( .A0(n30), .A1(dand1[10]), .B0(N98), .B1(n32), .Y(dand2[10]) );
  AO22XL U45 ( .A0(n30), .A1(dand1[9]), .B0(N97), .B1(n32), .Y(dand2[9]) );
  AO22XL U46 ( .A0(n30), .A1(dand1[12]), .B0(N100), .B1(n32), .Y(dand2[12]) );
  AO22XL U47 ( .A0(n30), .A1(dand1[13]), .B0(N101), .B1(n32), .Y(dand2[13]) );
  AO22XL U48 ( .A0(n30), .A1(dand1[14]), .B0(N102), .B1(n32), .Y(dand2[14]) );
  AO22XL U49 ( .A0(n30), .A1(dand1[24]), .B0(N112), .B1(n32), .Y(dand2[24]) );
  AO22XL U50 ( .A0(n30), .A1(dand1[16]), .B0(N104), .B1(n32), .Y(dand2[16]) );
  AO22XL U51 ( .A0(n30), .A1(dand1[20]), .B0(N108), .B1(n32), .Y(dand2[20]) );
  AO22XL U52 ( .A0(n30), .A1(dand1[15]), .B0(N103), .B1(n32), .Y(dand2[15]) );
  AO22XL U53 ( .A0(n30), .A1(dand1[23]), .B0(N111), .B1(n32), .Y(dand2[23]) );
  AO22XL U54 ( .A0(n30), .A1(dand1[19]), .B0(N107), .B1(n32), .Y(dand2[19]) );
  AO22XL U55 ( .A0(n30), .A1(dand1[17]), .B0(N105), .B1(n32), .Y(dand2[17]) );
  AO22XL U56 ( .A0(n30), .A1(dand1[21]), .B0(N109), .B1(n32), .Y(dand2[21]) );
  AO22XL U57 ( .A0(n30), .A1(dand1[22]), .B0(N110), .B1(n32), .Y(dand2[22]) );
  AO22XL U58 ( .A0(n30), .A1(dand1[18]), .B0(N106), .B1(n32), .Y(dand2[18]) );
  CLKBUFX2 U59 ( .A(n150), .Y(n24) );
  OAI21XL U60 ( .A0(load), .A1(n61), .B0(n153), .Y(dand0[6]) );
  AOI22XL U61 ( .A0(dividand[6]), .A1(n25), .B0(N18), .B1(n22), .Y(n153) );
  OAI21XL U62 ( .A0(load), .A1(n63), .B0(n155), .Y(dand0[4]) );
  AOI22XL U63 ( .A0(dividand[4]), .A1(n25), .B0(N16), .B1(n22), .Y(n155) );
  AOI22XL U64 ( .A0(dividand[5]), .A1(n25), .B0(N17), .B1(n22), .Y(n154) );
  AND2XL U65 ( .A(dior3[4]), .B(n38), .Y(n16) );
  NOR2X1 U66 ( .A(n36), .B(dividor_sign), .Y(n132) );
  AOI22XL U67 ( .A0(dividand[12]), .A1(n26), .B0(N24), .B1(n23), .Y(n172) );
  AOI22XL U68 ( .A0(dividand[10]), .A1(n26), .B0(N22), .B1(n24), .Y(n174) );
  AOI22XL U69 ( .A0(dividand[9]), .A1(n25), .B0(N21), .B1(n22), .Y(n148) );
  AOI22XL U70 ( .A0(dividand[13]), .A1(n26), .B0(N25), .B1(n23), .Y(n171) );
  AOI22XL U71 ( .A0(dividand[11]), .A1(n26), .B0(N23), .B1(n23), .Y(n173) );
  OAI21XL U72 ( .A0(load), .A1(n60), .B0(n152), .Y(dand0[7]) );
  AOI22XL U73 ( .A0(dividand[7]), .A1(n25), .B0(N19), .B1(n22), .Y(n152) );
  OAI21XL U74 ( .A0(load), .A1(n53), .B0(n170), .Y(dand0[14]) );
  AOI22XL U75 ( .A0(dividand[14]), .A1(n26), .B0(N26), .B1(n23), .Y(n170) );
  AOI22XL U76 ( .A0(dividor[3]), .A1(n132), .B0(N42), .B1(n17), .Y(n146) );
  OAI2BB1XL U77 ( .A0N(n38), .A1N(dior3[11]), .B0(n146), .Y(dior0[11]) );
  OAI2BB1XL U78 ( .A0N(n38), .A1N(dior3[9]), .B0(n131), .Y(dior0[9]) );
  OAI2BB1XL U79 ( .A0N(n38), .A1N(dior3[8]), .B0(n134), .Y(dior0[8]) );
  AOI22XL U80 ( .A0(N39), .A1(n132), .B0(N39), .B1(n17), .Y(n134) );
  AOI22XL U81 ( .A0(dividor[4]), .A1(n132), .B0(N43), .B1(n17), .Y(n145) );
  OAI2BB1XL U82 ( .A0N(n38), .A1N(dior3[12]), .B0(n145), .Y(dior0[12]) );
  AOI22XL U83 ( .A0(dividor[2]), .A1(n132), .B0(N41), .B1(n17), .Y(n147) );
  OAI2BB1XL U84 ( .A0N(n38), .A1N(dior3[10]), .B0(n147), .Y(dior0[10]) );
  AND2XL U85 ( .A(dior3[7]), .B(n38), .Y(dior0[7]) );
  AND2XL U86 ( .A(dior3[6]), .B(n38), .Y(dior0[6]) );
  AND2XL U87 ( .A(dior3[5]), .B(n37), .Y(n15) );
  AOI22XL U88 ( .A0(dividand[16]), .A1(n26), .B0(N28), .B1(n23), .Y(n168) );
  AOI22XL U89 ( .A0(dividand[17]), .A1(n26), .B0(N29), .B1(n23), .Y(n167) );
  OAI21XL U90 ( .A0(load), .A1(n42), .B0(n158), .Y(dand0[25]) );
  AOI22XL U91 ( .A0(dividand[25]), .A1(n25), .B0(N37), .B1(n22), .Y(n158) );
  OAI21XL U92 ( .A0(load), .A1(n44), .B0(n160), .Y(dand0[23]) );
  AOI22XL U93 ( .A0(dividand[23]), .A1(n25), .B0(N35), .B1(n22), .Y(n160) );
  OAI21XL U94 ( .A0(load), .A1(n43), .B0(n159), .Y(dand0[24]) );
  AOI22XL U95 ( .A0(dividand[24]), .A1(n25), .B0(N36), .B1(n22), .Y(n159) );
  OAI21XL U96 ( .A0(load), .A1(n52), .B0(n169), .Y(dand0[15]) );
  AOI22XL U97 ( .A0(dividand[15]), .A1(n26), .B0(N27), .B1(n23), .Y(n169) );
  OAI21XL U98 ( .A0(load), .A1(n45), .B0(n161), .Y(dand0[22]) );
  AOI22XL U99 ( .A0(dividand[22]), .A1(n25), .B0(N34), .B1(n22), .Y(n161) );
  OAI21XL U100 ( .A0(load), .A1(n48), .B0(n165), .Y(dand0[19]) );
  AOI22XL U101 ( .A0(dividand[19]), .A1(n26), .B0(N31), .B1(n23), .Y(n165) );
  OAI21XL U102 ( .A0(load), .A1(n47), .B0(n163), .Y(dand0[20]) );
  AOI22XL U103 ( .A0(dividand[20]), .A1(n26), .B0(N32), .B1(n23), .Y(n163) );
  OAI21XL U104 ( .A0(load), .A1(n49), .B0(n166), .Y(dand0[18]) );
  AOI22XL U105 ( .A0(dividand[18]), .A1(n26), .B0(N30), .B1(n23), .Y(n166) );
  AOI22XL U106 ( .A0(dividor[7]), .A1(n132), .B0(N46), .B1(n17), .Y(n142) );
  OAI2BB1XL U107 ( .A0N(n38), .A1N(dior3[15]), .B0(n142), .Y(dior0[15]) );
  AOI22XL U108 ( .A0(dividor[5]), .A1(n132), .B0(N44), .B1(n17), .Y(n144) );
  OAI2BB1XL U109 ( .A0N(n38), .A1N(dior3[13]), .B0(n144), .Y(dior0[13]) );
  AOI22XL U110 ( .A0(dividor[6]), .A1(n132), .B0(N45), .B1(n17), .Y(n143) );
  OAI2BB1XL U111 ( .A0N(n38), .A1N(dior3[14]), .B0(n143), .Y(dior0[14]) );
  OAI21XL U112 ( .A0(load), .A1(n46), .B0(n162), .Y(dand0[21]) );
  AOI22XL U113 ( .A0(dividand[21]), .A1(n25), .B0(N33), .B1(n23), .Y(n162) );
  AOI22XL U114 ( .A0(dividor[10]), .A1(n132), .B0(N49), .B1(n17), .Y(n139) );
  OAI2BB1XL U115 ( .A0N(n38), .A1N(dior3[18]), .B0(n139), .Y(dior0[18]) );
  AOI22XL U116 ( .A0(dividor[11]), .A1(n132), .B0(N50), .B1(n17), .Y(n138) );
  OAI2BB1XL U117 ( .A0N(n38), .A1N(dior3[19]), .B0(n138), .Y(dior0[19]) );
  AOI22XL U118 ( .A0(n29), .A1(dand2[0]), .B0(N120), .B1(n6), .Y(n119) );
  AOI22XL U119 ( .A0(n29), .A1(dand2[1]), .B0(N121), .B1(n6), .Y(n122) );
  NAND2XL U120 ( .A(N54), .B(n17), .Y(n219) );
  NAND2X1 U121 ( .A(n219), .B(n220), .Y(n218) );
  NAND2XL U122 ( .A(dividor[15]), .B(n132), .Y(n220) );
  NAND2XL U123 ( .A(N56), .B(n17), .Y(n213) );
  NAND2X1 U124 ( .A(n213), .B(n214), .Y(n212) );
  NAND2XL U125 ( .A(dividor[17]), .B(n132), .Y(n214) );
  AOI22XL U126 ( .A0(dividor[9]), .A1(n132), .B0(N48), .B1(n17), .Y(n140) );
  OAI2BB1XL U127 ( .A0N(n38), .A1N(dior3[17]), .B0(n140), .Y(dior0[17]) );
  AOI22XL U128 ( .A0(dividor[8]), .A1(n132), .B0(N47), .B1(n17), .Y(n141) );
  OAI2BB1XL U129 ( .A0N(n38), .A1N(dior3[16]), .B0(n141), .Y(dior0[16]) );
  AOI22XL U130 ( .A0(dividor[12]), .A1(n132), .B0(N51), .B1(n17), .Y(n137) );
  OAI21XL U131 ( .A0(load), .A1(n73), .B0(n137), .Y(dior0[20]) );
  AOI22XL U132 ( .A0(dividor[13]), .A1(n132), .B0(N52), .B1(n17), .Y(n136) );
  OAI21XL U133 ( .A0(load), .A1(n72), .B0(n136), .Y(dior0[21]) );
  AOI22XL U134 ( .A0(dividor[14]), .A1(n132), .B0(N53), .B1(n17), .Y(n135) );
  OAI21XL U135 ( .A0(load), .A1(n71), .B0(n135), .Y(dior0[22]) );
  NAND2XL U136 ( .A(N55), .B(n17), .Y(n216) );
  NAND2X1 U137 ( .A(n216), .B(n217), .Y(n215) );
  NAND2XL U138 ( .A(dividor[16]), .B(n132), .Y(n217) );
  XOR2XL U139 ( .A(dividand_sign), .B(dividor_sign), .Y(n93) );
  NOR2XL U140 ( .A(load), .B(n78), .Y(n5) );
  NOR2X1 U141 ( .A(load), .B(n78), .Y(dior0[1]) );
  CLKINVX1 U142 ( .A(n34), .Y(n33) );
  AND2X2 U143 ( .A(q_stage_2), .B(n19), .Y(n6) );
  CLKBUFX3 U144 ( .A(n95), .Y(n28) );
  CLKBUFX3 U145 ( .A(n95), .Y(n27) );
  CLKBUFX3 U146 ( .A(n95), .Y(n29) );
  CLKBUFX3 U147 ( .A(n211), .Y(n19) );
  CLKBUFX3 U148 ( .A(n211), .Y(n20) );
  CLKBUFX3 U149 ( .A(n211), .Y(n21) );
  CLKBUFX3 U150 ( .A(q_stage_0), .Y(n34) );
  CLKBUFX3 U151 ( .A(q_stage_0), .Y(n35) );
  CLKINVX1 U152 ( .A(load), .Y(n39) );
  NOR2X1 U153 ( .A(n121), .B(q_stage_2), .Y(n95) );
  AO22X1 U154 ( .A0(n30), .A1(dand1[25]), .B0(n31), .B1(N113), .Y(dand2[25])
         );
  CLKINVX1 U155 ( .A(n121), .Y(n211) );
  AO22X1 U156 ( .A0(n33), .A1(dand0[7]), .B0(N67), .B1(n35), .Y(dand1[7]) );
  AO22X1 U157 ( .A0(n33), .A1(dand0[23]), .B0(N83), .B1(n35), .Y(dand1[23]) );
  AO22X1 U158 ( .A0(n33), .A1(dand0[21]), .B0(N81), .B1(n35), .Y(dand1[21]) );
  AO22X1 U159 ( .A0(n33), .A1(dand0[15]), .B0(N75), .B1(n35), .Y(dand1[15]) );
  AO22X1 U160 ( .A0(n33), .A1(dand0[6]), .B0(N66), .B1(n35), .Y(dand1[6]) );
  AO22X1 U161 ( .A0(n33), .A1(dand0[3]), .B0(N63), .B1(n35), .Y(dand1[3]) );
  AO22X1 U162 ( .A0(n33), .A1(dand0[2]), .B0(N62), .B1(n35), .Y(dand1[2]) );
  AO22X1 U163 ( .A0(n33), .A1(dand0[22]), .B0(N82), .B1(n35), .Y(dand1[22]) );
  AO22X1 U164 ( .A0(n33), .A1(dand0[20]), .B0(N80), .B1(n35), .Y(dand1[20]) );
  AO22X1 U165 ( .A0(n33), .A1(dand0[17]), .B0(N77), .B1(n35), .Y(dand1[17]) );
  AO22X1 U166 ( .A0(n33), .A1(dand0[14]), .B0(N74), .B1(n35), .Y(dand1[14]) );
  AO22X1 U167 ( .A0(n33), .A1(dand0[0]), .B0(N60), .B1(n35), .Y(dand1[0]) );
  AO22X1 U168 ( .A0(n33), .A1(dand0[12]), .B0(N72), .B1(n35), .Y(dand1[12]) );
  AO22X1 U169 ( .A0(n33), .A1(dand0[4]), .B0(N64), .B1(n35), .Y(dand1[4]) );
  AO22X1 U170 ( .A0(n33), .A1(dand0[10]), .B0(N70), .B1(n35), .Y(dand1[10]) );
  AO22X1 U171 ( .A0(n33), .A1(dand0[8]), .B0(N68), .B1(n34), .Y(dand1[8]) );
  AO22X1 U172 ( .A0(n33), .A1(dand0[1]), .B0(N61), .B1(n35), .Y(dand1[1]) );
  AO22X1 U173 ( .A0(n33), .A1(dand0[13]), .B0(N73), .B1(n35), .Y(dand1[13]) );
  AO22X1 U174 ( .A0(n33), .A1(dand0[11]), .B0(N71), .B1(n35), .Y(dand1[11]) );
  AO22X1 U175 ( .A0(n33), .A1(dand0[9]), .B0(N69), .B1(n35), .Y(dand1[9]) );
  AO22X1 U176 ( .A0(n33), .A1(dand0[5]), .B0(N65), .B1(n35), .Y(dand1[5]) );
  AO22X1 U177 ( .A0(n33), .A1(dand0[24]), .B0(N84), .B1(n35), .Y(dand1[24]) );
  AO22X1 U178 ( .A0(n33), .A1(dand0[19]), .B0(N79), .B1(n35), .Y(dand1[19]) );
  AO22X1 U179 ( .A0(n33), .A1(dand0[18]), .B0(N78), .B1(n35), .Y(dand1[18]) );
  AO22X1 U180 ( .A0(n33), .A1(dand0[16]), .B0(N76), .B1(n35), .Y(dand1[16]) );
  NOR2X1 U181 ( .A(load), .B(n130), .Y(n121) );
  CLKINVX1 U182 ( .A(n130), .Y(n210) );
  OAI2BB2XL U183 ( .B0(n18), .B1(n80), .A0N(N278), .A1N(n18), .Y(q[8]) );
  NOR2BX1 U184 ( .AN(dividand_sign), .B(n38), .Y(n150) );
  AOI22X1 U185 ( .A0(dividand[2]), .A1(n25), .B0(N14), .B1(n22), .Y(n157) );
  OAI21XL U186 ( .A0(load), .A1(n64), .B0(n156), .Y(dand0[3]) );
  AOI22X1 U187 ( .A0(dividand[3]), .A1(n25), .B0(N15), .B1(n22), .Y(n156) );
  OAI21XL U188 ( .A0(n19), .A1(n48), .B0(n101), .Y(n182) );
  AOI22X1 U189 ( .A0(n27), .A1(dand2[19]), .B0(N139), .B1(n6), .Y(n101) );
  OAI21XL U190 ( .A0(n19), .A1(n47), .B0(n100), .Y(n181) );
  AOI22X1 U191 ( .A0(n27), .A1(dand2[20]), .B0(N140), .B1(n6), .Y(n100) );
  OAI21XL U192 ( .A0(n19), .A1(n46), .B0(n99), .Y(n180) );
  AOI22X1 U193 ( .A0(n27), .A1(dand2[21]), .B0(N141), .B1(n6), .Y(n99) );
  OAI21XL U194 ( .A0(n19), .A1(n45), .B0(n98), .Y(n179) );
  AOI22X1 U195 ( .A0(n27), .A1(dand2[22]), .B0(N142), .B1(n6), .Y(n98) );
  OAI21XL U196 ( .A0(n19), .A1(n44), .B0(n97), .Y(n178) );
  AOI22X1 U197 ( .A0(n27), .A1(dand2[23]), .B0(N143), .B1(n6), .Y(n97) );
  OAI21XL U198 ( .A0(n19), .A1(n43), .B0(n96), .Y(n177) );
  AOI22X1 U199 ( .A0(n27), .A1(dand2[24]), .B0(N144), .B1(n6), .Y(n96) );
  OAI21XL U200 ( .A0(n19), .A1(n42), .B0(n94), .Y(n176) );
  AOI22X1 U201 ( .A0(n27), .A1(dand2[25]), .B0(N145), .B1(n6), .Y(n94) );
  NOR2X1 U202 ( .A(n36), .B(dividand_sign), .Y(n149) );
  NOR2X1 U203 ( .A(load), .B(n79), .Y(dior0[0]) );
  CLKINVX1 U204 ( .A(N39), .Y(n40) );
  CLKINVX1 U205 ( .A(dividor[1]), .Y(n41) );
  CLKINVX1 U206 ( .A(dividor[2]), .Y(n68) );
  CLKINVX1 U207 ( .A(dividor[3]), .Y(n69) );
  CLKINVX1 U208 ( .A(dividor[4]), .Y(n70) );
  CLKINVX1 U209 ( .A(dividor[5]), .Y(n74) );
  AOI22X1 U210 ( .A0(dividor[1]), .A1(n132), .B0(N40), .B1(n17), .Y(n131) );
  OAI21XL U211 ( .A0(load), .A1(n54), .B0(n171), .Y(dand0[13]) );
  OAI21XL U212 ( .A0(load), .A1(n57), .B0(n174), .Y(dand0[10]) );
  OAI21XL U213 ( .A0(load), .A1(n56), .B0(n173), .Y(dand0[11]) );
  OAI21XL U214 ( .A0(load), .A1(n50), .B0(n167), .Y(dand0[17]) );
  OAI21XL U215 ( .A0(load), .A1(n58), .B0(n148), .Y(dand0[9]) );
  OAI21XL U216 ( .A0(n20), .A1(n67), .B0(n119), .Y(n200) );
  OAI21XL U217 ( .A0(n19), .A1(n57), .B0(n110), .Y(n191) );
  AOI22X1 U218 ( .A0(n28), .A1(dand2[10]), .B0(N130), .B1(n6), .Y(n110) );
  OAI21XL U219 ( .A0(n19), .A1(n56), .B0(n109), .Y(n190) );
  AOI22X1 U220 ( .A0(n28), .A1(dand2[11]), .B0(N131), .B1(n6), .Y(n109) );
  OAI21XL U221 ( .A0(n19), .A1(n55), .B0(n108), .Y(n189) );
  AOI22X1 U222 ( .A0(n28), .A1(dand2[12]), .B0(N132), .B1(n6), .Y(n108) );
  OAI21XL U223 ( .A0(n19), .A1(n54), .B0(n107), .Y(n188) );
  AOI22X1 U224 ( .A0(n28), .A1(dand2[13]), .B0(N133), .B1(n6), .Y(n107) );
  OAI21XL U225 ( .A0(n19), .A1(n53), .B0(n106), .Y(n187) );
  AOI22X1 U226 ( .A0(n27), .A1(dand2[14]), .B0(N134), .B1(n6), .Y(n106) );
  OAI21XL U227 ( .A0(n19), .A1(n52), .B0(n105), .Y(n186) );
  AOI22X1 U228 ( .A0(n27), .A1(dand2[15]), .B0(N135), .B1(n6), .Y(n105) );
  OAI21XL U229 ( .A0(n19), .A1(n51), .B0(n104), .Y(n185) );
  AOI22X1 U230 ( .A0(n27), .A1(dand2[16]), .B0(N136), .B1(n6), .Y(n104) );
  OAI21XL U231 ( .A0(n19), .A1(n50), .B0(n103), .Y(n184) );
  AOI22X1 U232 ( .A0(n27), .A1(dand2[17]), .B0(N137), .B1(n6), .Y(n103) );
  OAI21XL U233 ( .A0(n19), .A1(n49), .B0(n102), .Y(n183) );
  AOI22X1 U234 ( .A0(n27), .A1(dand2[18]), .B0(N138), .B1(n6), .Y(n102) );
  OAI21XL U235 ( .A0(n20), .A1(n65), .B0(n118), .Y(n199) );
  AOI22X1 U236 ( .A0(n28), .A1(dand2[2]), .B0(N122), .B1(n6), .Y(n118) );
  OAI21XL U237 ( .A0(n20), .A1(n64), .B0(n117), .Y(n198) );
  AOI22X1 U238 ( .A0(n28), .A1(dand2[3]), .B0(N123), .B1(n6), .Y(n117) );
  OAI21XL U239 ( .A0(n20), .A1(n63), .B0(n116), .Y(n197) );
  AOI22X1 U240 ( .A0(n28), .A1(dand2[4]), .B0(N124), .B1(n6), .Y(n116) );
  OAI21XL U241 ( .A0(n20), .A1(n62), .B0(n115), .Y(n196) );
  AOI22X1 U242 ( .A0(n28), .A1(dand2[5]), .B0(N125), .B1(n6), .Y(n115) );
  OAI21XL U243 ( .A0(n20), .A1(n61), .B0(n114), .Y(n195) );
  AOI22X1 U244 ( .A0(n28), .A1(dand2[6]), .B0(N126), .B1(n6), .Y(n114) );
  OAI21XL U245 ( .A0(n20), .A1(n60), .B0(n113), .Y(n194) );
  AOI22X1 U246 ( .A0(n28), .A1(dand2[7]), .B0(N127), .B1(n6), .Y(n113) );
  OAI21XL U247 ( .A0(n19), .A1(n59), .B0(n112), .Y(n193) );
  AOI22X1 U248 ( .A0(n28), .A1(dand2[8]), .B0(N128), .B1(n6), .Y(n112) );
  OAI21XL U249 ( .A0(n19), .A1(n58), .B0(n111), .Y(n192) );
  AOI22X1 U250 ( .A0(n28), .A1(dand2[9]), .B0(N129), .B1(n6), .Y(n111) );
  OAI21XL U251 ( .A0(n20), .A1(n66), .B0(n122), .Y(n207) );
  OAI21XL U252 ( .A0(load), .A1(n55), .B0(n172), .Y(dand0[12]) );
  OAI21XL U253 ( .A0(load), .A1(n59), .B0(n151), .Y(dand0[8]) );
  AOI22X1 U254 ( .A0(dividand[8]), .A1(n25), .B0(N20), .B1(n22), .Y(n151) );
  OAI21XL U255 ( .A0(load), .A1(n51), .B0(n168), .Y(dand0[16]) );
  CLKBUFX3 U256 ( .A(n133), .Y(n17) );
  AND2X2 U257 ( .A(dividor_sign), .B(load), .Y(n133) );
  CLKINVX1 U258 ( .A(dividor[6]), .Y(n75) );
  CLKINVX1 U259 ( .A(dividor[7]), .Y(n76) );
  CLKINVX1 U260 ( .A(dividor[8]), .Y(n81) );
  CLKINVX1 U261 ( .A(dividor[9]), .Y(n82) );
  CLKINVX1 U262 ( .A(dividor[10]), .Y(n83) );
  CLKINVX1 U263 ( .A(dividor[15]), .Y(n88) );
  CLKINVX1 U264 ( .A(dividor[11]), .Y(n84) );
  CLKINVX1 U265 ( .A(dividor[12]), .Y(n85) );
  CLKINVX1 U266 ( .A(dividor[13]), .Y(n86) );
  CLKINVX1 U267 ( .A(dividor[14]), .Y(n87) );
  CLKINVX1 U268 ( .A(dividor[17]), .Y(n90) );
  CLKINVX1 U269 ( .A(dividor[16]), .Y(n89) );
  OAI22XL U270 ( .A0(n20), .A1(n92), .B0(n120), .B1(n210), .Y(n205) );
  OAI22XL U271 ( .A0(n20), .A1(n124), .B0(n125), .B1(n210), .Y(n206) );
  OAI22XL U272 ( .A0(n20), .A1(n126), .B0(n127), .B1(n210), .Y(n204) );
  OAI22XL U273 ( .A0(n20), .A1(n91), .B0(n92), .B1(n210), .Y(n202) );
  OAI22XL U274 ( .A0(n20), .A1(n123), .B0(n124), .B1(n210), .Y(n203) );
  OAI22XL U275 ( .A0(n20), .A1(n80), .B0(n126), .B1(n210), .Y(n201) );
  OAI2BB2XL U276 ( .B0(n18), .B1(n123), .A0N(N276), .A1N(n18), .Y(q[6]) );
  OAI2BB2XL U277 ( .B0(n18), .B1(n91), .A0N(N277), .A1N(n18), .Y(q[7]) );
  OAI21XL U278 ( .A0(n128), .A1(n210), .B0(n129), .Y(n208) );
  OAI21XL U279 ( .A0(n130), .A1(n121), .B0(cnt[1]), .Y(n129) );
  OAI221XL U280 ( .A0(cnt[0]), .A1(n210), .B0(n21), .B1(n128), .C0(n38), .Y(
        n209) );
  OAI2BB2XL U281 ( .B0(n18), .B1(n125), .A0N(N270), .A1N(n18), .Y(q[0]) );
  OAI2BB2XL U282 ( .B0(n18), .B1(n120), .A0N(N271), .A1N(n18), .Y(q[1]) );
  OAI2BB2XL U283 ( .B0(n18), .B1(n127), .A0N(N272), .A1N(n18), .Y(q[2]) );
  OAI2BB2XL U284 ( .B0(n18), .B1(n124), .A0N(N273), .A1N(n18), .Y(q[3]) );
  OAI2BB2XL U285 ( .B0(n18), .B1(n92), .A0N(N274), .A1N(n18), .Y(q[4]) );
  OAI2BB2XL U286 ( .B0(n18), .B1(n126), .A0N(N275), .A1N(n18), .Y(q[5]) );
  CLKBUFX3 U287 ( .A(n93), .Y(n18) );
  CLKINVX1 U288 ( .A(cnt[0]), .Y(n128) );
  XNOR2X1 U289 ( .A(\q_reg[8] ), .B(\sub_392/carry[8] ), .Y(N278) );
  XOR2X1 U290 ( .A(n90), .B(\sub_337/carry[17] ), .Y(N56) );
  AND2X1 U291 ( .A(\sub_337/carry[16] ), .B(n89), .Y(\sub_337/carry[17] ) );
  XOR2X1 U292 ( .A(n89), .B(\sub_337/carry[16] ), .Y(N55) );
  AND2X1 U293 ( .A(\sub_337/carry[15] ), .B(n88), .Y(\sub_337/carry[16] ) );
  XOR2X1 U294 ( .A(n88), .B(\sub_337/carry[15] ), .Y(N54) );
  AND2X1 U295 ( .A(\sub_337/carry[14] ), .B(n87), .Y(\sub_337/carry[15] ) );
  XOR2X1 U296 ( .A(n87), .B(\sub_337/carry[14] ), .Y(N53) );
  AND2X1 U297 ( .A(\sub_337/carry[13] ), .B(n86), .Y(\sub_337/carry[14] ) );
  XOR2X1 U298 ( .A(n86), .B(\sub_337/carry[13] ), .Y(N52) );
  AND2X1 U299 ( .A(\sub_337/carry[12] ), .B(n85), .Y(\sub_337/carry[13] ) );
  XOR2X1 U300 ( .A(n85), .B(\sub_337/carry[12] ), .Y(N51) );
  AND2X1 U301 ( .A(\sub_337/carry[11] ), .B(n84), .Y(\sub_337/carry[12] ) );
  XOR2X1 U302 ( .A(n84), .B(\sub_337/carry[11] ), .Y(N50) );
  AND2X1 U303 ( .A(\sub_337/carry[10] ), .B(n83), .Y(\sub_337/carry[11] ) );
  XOR2X1 U304 ( .A(n83), .B(\sub_337/carry[10] ), .Y(N49) );
  AND2X1 U305 ( .A(\sub_337/carry[9] ), .B(n82), .Y(\sub_337/carry[10] ) );
  XOR2X1 U306 ( .A(n82), .B(\sub_337/carry[9] ), .Y(N48) );
  AND2X1 U307 ( .A(\sub_337/carry[8] ), .B(n81), .Y(\sub_337/carry[9] ) );
  XOR2X1 U308 ( .A(n81), .B(\sub_337/carry[8] ), .Y(N47) );
  AND2X1 U309 ( .A(\sub_337/carry[7] ), .B(n76), .Y(\sub_337/carry[8] ) );
  XOR2X1 U310 ( .A(n76), .B(\sub_337/carry[7] ), .Y(N46) );
  AND2X1 U311 ( .A(\sub_337/carry[6] ), .B(n75), .Y(\sub_337/carry[7] ) );
  XOR2X1 U312 ( .A(n75), .B(\sub_337/carry[6] ), .Y(N45) );
  AND2X1 U313 ( .A(\sub_337/carry[5] ), .B(n74), .Y(\sub_337/carry[6] ) );
  XOR2X1 U314 ( .A(n74), .B(\sub_337/carry[5] ), .Y(N44) );
  AND2X1 U315 ( .A(\sub_337/carry[4] ), .B(n70), .Y(\sub_337/carry[5] ) );
  XOR2X1 U316 ( .A(n70), .B(\sub_337/carry[4] ), .Y(N43) );
  AND2X1 U317 ( .A(\sub_337/carry[3] ), .B(n69), .Y(\sub_337/carry[4] ) );
  XOR2X1 U318 ( .A(n69), .B(\sub_337/carry[3] ), .Y(N42) );
  AND2X1 U319 ( .A(\sub_337/carry[2] ), .B(n68), .Y(\sub_337/carry[3] ) );
  XOR2X1 U320 ( .A(n68), .B(\sub_337/carry[2] ), .Y(N41) );
  AND2X1 U321 ( .A(n40), .B(n41), .Y(\sub_337/carry[2] ) );
  XOR2X1 U322 ( .A(n41), .B(n40), .Y(N40) );
  AND2X1 U323 ( .A(\sub_392/carry[7] ), .B(n91), .Y(\sub_392/carry[8] ) );
  XOR2X1 U324 ( .A(n91), .B(\sub_392/carry[7] ), .Y(N277) );
  AND2X1 U325 ( .A(\sub_392/carry[6] ), .B(n123), .Y(\sub_392/carry[7] ) );
  XOR2X1 U326 ( .A(n123), .B(\sub_392/carry[6] ), .Y(N276) );
  AND2X1 U327 ( .A(\sub_392/carry[5] ), .B(n126), .Y(\sub_392/carry[6] ) );
  XOR2X1 U328 ( .A(n126), .B(\sub_392/carry[5] ), .Y(N275) );
  AND2X1 U329 ( .A(\sub_392/carry[4] ), .B(n92), .Y(\sub_392/carry[5] ) );
  XOR2X1 U330 ( .A(n92), .B(\sub_392/carry[4] ), .Y(N274) );
  AND2X1 U331 ( .A(\sub_392/carry[3] ), .B(n124), .Y(\sub_392/carry[4] ) );
  XOR2X1 U332 ( .A(n124), .B(\sub_392/carry[3] ), .Y(N273) );
  AND2X1 U333 ( .A(\sub_392/carry[2] ), .B(n127), .Y(\sub_392/carry[3] ) );
  XOR2X1 U334 ( .A(n127), .B(\sub_392/carry[2] ), .Y(N272) );
  AND2X1 U335 ( .A(n125), .B(n120), .Y(\sub_392/carry[2] ) );
  XOR2X1 U336 ( .A(n120), .B(n125), .Y(N271) );
  divider_3stage_26_18_to_9bit_signed_0_DW01_sub_1 r341 ( .A(dand2), .B({1'b0, 
        1'b0, n212, n215, n218, dior0[22:6], n15, n16, n13, dior0[2]}), .CI(
        1'b0), .DIFF({N145, N144, N143, N142, N141, N140, N139, N138, N137, 
        N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, 
        N124, N123, N122, N121, N120}) );
  divider_3stage_26_18_to_9bit_signed_0_DW_cmp_0 r339 ( .A(dand2), .B({1'b0, 
        1'b0, n212, n215, n218, dior0[22:6], n15, n16, n13, dior0[2]}), .TC(
        1'b0), .GE_LT(1'b1), .GE_GT_EQ(1'b1), .GE_LT_GT_LE(q_stage_2) );
  divider_3stage_26_18_to_9bit_signed_0_DW01_sub_2 sub_368 ( .A(dand1), .B({
        1'b0, n212, n215, n218, dior0[22:6], n15, n16, n13, dior0[2], n5}), 
        .CI(1'b0), .DIFF({N113, N112, N111, N110, N109, N108, N107, N106, N105, 
        N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, 
        N91, N90, N89, N88}) );
  divider_3stage_26_18_to_9bit_signed_0_DW_cmp_1 r337 ( .A(dand1), .B({1'b0, 
        n212, n215, n218, dior0[22:6], n15, n16, n13, dior0[2], n5}), .TC(1'b0), .GE_LT(1'b1), .GE_GT_EQ(1'b1), .GE_LT_GT_LE(q_stage_1) );
  divider_3stage_26_18_to_9bit_signed_0_DW01_sub_3 sub_363 ( .A(dand0), .B({
        n212, n215, n218, dior0[22:6], n15, n16, n13, dior0[2:0]}), .CI(1'b0), 
        .DIFF({N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, 
        N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60}) );
  divider_3stage_26_18_to_9bit_signed_0_DW_cmp_2 r335 ( .A(dand0), .B({n212, 
        n215, n218, dior0[22:6], n15, n16, n13, dior0[2], n5, dior0[0]}), .TC(
        1'b0), .GE_LT(1'b1), .GE_GT_EQ(1'b1), .GE_LT_GT_LE(q_stage_0) );
  divider_3stage_26_18_to_9bit_signed_0_DW01_sub_5 sub_336 ( .A({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B(dividand), .CI(1'b0), .DIFF({N37, N36, N35, N34, N33, N32, N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, 
        N14, N13, N12}) );
  DFFQXL \cnt_reg[2]  ( .D(n221), .CK(clk), .Q(cnt[2]) );
  NOR2BX1 U28 ( .AN(cnt[2]), .B(load), .Y(n221) );
endmodule


module divider_3stage_26_18_to_9bit_signed_1_DW01_sub_1 ( A, B, CI, DIFF, CO
 );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [26:0] carry;

  ADDFXL U2_21 ( .A(A[21]), .B(n6), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n9), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n11), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n13), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n14), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n16), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n18), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n20), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n25), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n4), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n26), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n24), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n23), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n22), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_19 ( .A(A[19]), .B(n8), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFHX2 U2_6 ( .A(A[6]), .B(n21), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFHX2 U2_20 ( .A(A[20]), .B(n7), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFHX2 U2_10 ( .A(A[10]), .B(n17), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFHX2 U2_15 ( .A(A[15]), .B(n12), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFHX1 U2_22 ( .A(A[22]), .B(n5), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFHX1 U2_17 ( .A(A[17]), .B(n10), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFHX1 U2_12 ( .A(A[12]), .B(n15), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFHX1 U2_8 ( .A(A[8]), .B(n19), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  XNOR2XL U1 ( .A(A[24]), .B(carry[24]), .Y(DIFF[24]) );
  XNOR2XL U2 ( .A(n27), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[24]), .Y(n1) );
  CLKINVX1 U5 ( .A(carry[24]), .Y(n2) );
  CLKINVX1 U6 ( .A(B[23]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[1]), .Y(n26) );
  NAND2X1 U8 ( .A(B[0]), .B(n3), .Y(carry[1]) );
  CLKINVX1 U9 ( .A(B[2]), .Y(n25) );
  CLKINVX1 U10 ( .A(B[3]), .Y(n24) );
  CLKINVX1 U11 ( .A(B[4]), .Y(n23) );
  CLKINVX1 U12 ( .A(B[5]), .Y(n22) );
  CLKINVX1 U13 ( .A(B[6]), .Y(n21) );
  CLKINVX1 U14 ( .A(B[7]), .Y(n20) );
  CLKINVX1 U15 ( .A(B[8]), .Y(n19) );
  CLKINVX1 U16 ( .A(B[9]), .Y(n18) );
  CLKINVX1 U17 ( .A(B[10]), .Y(n17) );
  CLKINVX1 U18 ( .A(B[11]), .Y(n16) );
  CLKINVX1 U19 ( .A(B[12]), .Y(n15) );
  CLKINVX1 U20 ( .A(B[13]), .Y(n14) );
  CLKINVX1 U21 ( .A(B[14]), .Y(n13) );
  CLKINVX1 U22 ( .A(B[15]), .Y(n12) );
  CLKINVX1 U23 ( .A(B[16]), .Y(n11) );
  CLKINVX1 U24 ( .A(B[17]), .Y(n10) );
  CLKINVX1 U25 ( .A(B[18]), .Y(n9) );
  CLKINVX1 U26 ( .A(B[19]), .Y(n8) );
  CLKINVX1 U27 ( .A(B[20]), .Y(n7) );
  CLKINVX1 U28 ( .A(B[21]), .Y(n6) );
  CLKINVX1 U29 ( .A(B[22]), .Y(n5) );
  CLKINVX1 U30 ( .A(B[0]), .Y(n27) );
  XNOR2X1 U31 ( .A(A[25]), .B(carry[25]), .Y(DIFF[25]) );
  NAND2X1 U32 ( .A(n1), .B(n2), .Y(carry[25]) );
endmodule


module divider_3stage_26_18_to_9bit_signed_1_DW_cmp_0 ( A, B, TC, GE_LT, 
        GE_GT_EQ, GE_LT_GT_LE, EQ_NE );
  input [25:0] A;
  input [25:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258;

  INVXL U126 ( .A(A[7]), .Y(n187) );
  NOR2BXL U127 ( .AN(B[7]), .B(A[7]), .Y(n239) );
  CLKINVX1 U128 ( .A(A[10]), .Y(n203) );
  CLKINVX1 U129 ( .A(A[22]), .Y(n194) );
  CLKINVX1 U130 ( .A(A[9]), .Y(n184) );
  CLKINVX1 U131 ( .A(A[14]), .Y(n199) );
  CLKINVX1 U132 ( .A(A[18]), .Y(n196) );
  CLKINVX1 U133 ( .A(A[2]), .Y(n190) );
  CLKINVX1 U134 ( .A(A[6]), .Y(n188) );
  CLKINVX1 U135 ( .A(A[8]), .Y(n185) );
  CLKINVX1 U136 ( .A(A[3]), .Y(n189) );
  CLKINVX1 U137 ( .A(n251), .Y(n200) );
  CLKINVX1 U138 ( .A(n220), .Y(n191) );
  CLKINVX1 U139 ( .A(n231), .Y(n193) );
  CLKINVX1 U140 ( .A(n226), .Y(n197) );
  CLKINVX1 U141 ( .A(A[23]), .Y(n192) );
  CLKINVX1 U142 ( .A(A[11]), .Y(n201) );
  CLKINVX1 U143 ( .A(n256), .Y(n202) );
  CLKINVX1 U144 ( .A(n229), .Y(n183) );
  CLKINVX1 U145 ( .A(n238), .Y(n186) );
  CLKINVX1 U146 ( .A(A[19]), .Y(n195) );
  CLKINVX1 U147 ( .A(A[15]), .Y(n198) );
  CLKINVX1 U148 ( .A(B[0]), .Y(n213) );
  CLKINVX1 U149 ( .A(B[20]), .Y(n205) );
  CLKINVX1 U150 ( .A(B[13]), .Y(n208) );
  CLKINVX1 U151 ( .A(B[17]), .Y(n206) );
  CLKINVX1 U152 ( .A(B[21]), .Y(n204) );
  CLKINVX1 U153 ( .A(B[12]), .Y(n209) );
  CLKINVX1 U154 ( .A(B[16]), .Y(n207) );
  CLKINVX1 U155 ( .A(B[4]), .Y(n211) );
  CLKINVX1 U156 ( .A(B[5]), .Y(n210) );
  CLKINVX1 U157 ( .A(B[1]), .Y(n212) );
  OAI211X1 U158 ( .A0(n214), .A1(n215), .B0(n216), .C0(n217), .Y(GE_LT_GT_LE)
         );
  NOR3X1 U159 ( .A(n218), .B(A[25]), .C(A[24]), .Y(n217) );
  AOI2BB2X1 U160 ( .B0(n219), .B1(n191), .A0N(n220), .A1N(n221), .Y(n218) );
  OAI32X1 U161 ( .A0(n194), .A1(B[22]), .A2(n222), .B0(B[23]), .B1(n192), .Y(
        n220) );
  AOI32X1 U162 ( .A0(n223), .A1(n205), .A2(A[20]), .B0(A[21]), .B1(n204), .Y(
        n219) );
  OAI221XL U163 ( .A0(n224), .A1(n225), .B0(n225), .B1(n197), .C0(n193), .Y(
        n216) );
  AOI32X1 U164 ( .A0(A[16]), .A1(n207), .A2(n227), .B0(n206), .B1(A[17]), .Y(
        n226) );
  OAI32X1 U165 ( .A0(n196), .A1(B[18]), .A2(n228), .B0(B[19]), .B1(n195), .Y(
        n225) );
  OAI211X1 U166 ( .A0(n229), .A1(n230), .B0(n193), .C0(n224), .Y(n215) );
  AOI21X1 U167 ( .A0(n196), .A1(B[18]), .B0(n228), .Y(n224) );
  NOR2BX1 U168 ( .AN(B[19]), .B(A[19]), .Y(n228) );
  OAI211X1 U169 ( .A0(A[20]), .A1(n205), .B0(n223), .C0(n221), .Y(n231) );
  AOI21X1 U170 ( .A0(n194), .A1(B[22]), .B0(n222), .Y(n221) );
  NOR2BX1 U171 ( .AN(B[23]), .B(A[23]), .Y(n222) );
  NAND2BX1 U172 ( .AN(A[21]), .B(B[21]), .Y(n223) );
  OAI31XL U173 ( .A0(n232), .A1(n233), .A2(n234), .B0(n235), .Y(n230) );
  AO22X1 U174 ( .A0(n186), .A1(n236), .B0(n234), .B1(n186), .Y(n235) );
  AOI32X1 U175 ( .A0(A[4]), .A1(n211), .A2(n237), .B0(n210), .B1(A[5]), .Y(
        n236) );
  OAI32X1 U176 ( .A0(n188), .A1(B[6]), .A2(n239), .B0(B[7]), .B1(n187), .Y(
        n238) );
  AO21X1 U177 ( .A0(n188), .A1(B[6]), .B0(n239), .Y(n234) );
  AOI211X1 U178 ( .A0(A[1]), .A1(n212), .B0(n240), .C0(n241), .Y(n233) );
  OA22X1 U179 ( .A0(n213), .A1(A[0]), .B0(n212), .B1(A[1]), .Y(n241) );
  OAI221XL U180 ( .A0(A[4]), .A1(n211), .B0(n242), .B1(n240), .C0(n237), .Y(
        n232) );
  OR2X1 U181 ( .A(A[5]), .B(n210), .Y(n237) );
  OAI32X1 U182 ( .A0(n190), .A1(B[2]), .A2(n243), .B0(B[3]), .B1(n189), .Y(
        n240) );
  AOI21X1 U183 ( .A0(B[2]), .A1(n190), .B0(n243), .Y(n242) );
  AND2X1 U184 ( .A(B[3]), .B(n189), .Y(n243) );
  OAI211X1 U185 ( .A0(A[16]), .A1(n207), .B0(n227), .C0(n244), .Y(n214) );
  OAI31XL U186 ( .A0(n245), .A1(n246), .A2(n202), .B0(n183), .Y(n244) );
  OAI21XL U187 ( .A0(n246), .A1(n247), .B0(n248), .Y(n229) );
  OAI22XL U188 ( .A0(n249), .A1(n200), .B0(n250), .B1(n249), .Y(n248) );
  AOI32X1 U189 ( .A0(A[12]), .A1(n209), .A2(n252), .B0(n208), .B1(A[13]), .Y(
        n251) );
  OAI32X1 U190 ( .A0(n199), .A1(B[14]), .A2(n253), .B0(B[15]), .B1(n198), .Y(
        n249) );
  OAI22XL U191 ( .A0(n254), .A1(n255), .B0(n256), .B1(n254), .Y(n247) );
  OAI32X1 U192 ( .A0(n185), .A1(B[8]), .A2(n257), .B0(B[9]), .B1(n184), .Y(
        n255) );
  OAI32X1 U193 ( .A0(n203), .A1(B[10]), .A2(n258), .B0(B[11]), .B1(n201), .Y(
        n254) );
  AOI21X1 U194 ( .A0(n203), .A1(B[10]), .B0(n258), .Y(n256) );
  NOR2BX1 U195 ( .AN(B[11]), .B(A[11]), .Y(n258) );
  OAI211X1 U196 ( .A0(A[12]), .A1(n209), .B0(n252), .C0(n250), .Y(n246) );
  AOI21X1 U197 ( .A0(n199), .A1(B[14]), .B0(n253), .Y(n250) );
  NOR2BX1 U198 ( .AN(B[15]), .B(A[15]), .Y(n253) );
  OR2X1 U199 ( .A(A[13]), .B(n208), .Y(n252) );
  AO21X1 U200 ( .A0(n185), .A1(B[8]), .B0(n257), .Y(n245) );
  AND2X1 U201 ( .A(B[9]), .B(n184), .Y(n257) );
  OR2X1 U202 ( .A(A[17]), .B(n206), .Y(n227) );
endmodule


module divider_3stage_26_18_to_9bit_signed_1_DW01_sub_2 ( A, B, CI, DIFF, CO
 );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [26:0] carry;

  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_24 ( .A(A[24]), .B(n2), .CI(carry[24]), .CO(carry[25]), .S(
        DIFF[24]) );
  NAND2BX1 U1 ( .AN(n26), .B(n1), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  XNOR2X1 U3 ( .A(A[25]), .B(carry[25]), .Y(DIFF[25]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U6 ( .A(B[1]), .Y(n25) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U15 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U16 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U17 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U18 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U19 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U20 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U21 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U22 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U23 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U24 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U25 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U26 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U27 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U28 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U29 ( .A(B[0]), .Y(n26) );
endmodule


module divider_3stage_26_18_to_9bit_signed_1_DW_cmp_1 ( A, B, TC, GE_LT, 
        GE_GT_EQ, GE_LT_GT_LE, EQ_NE );
  input [25:0] A;
  input [25:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264;

  AND2XL U129 ( .A(B[17]), .B(n200), .Y(n233) );
  OAI31XL U130 ( .A0(n216), .A1(n217), .A2(n218), .B0(n219), .Y(GE_LT_GT_LE)
         );
  OAI21XL U131 ( .A0(n191), .A1(n220), .B0(n221), .Y(n219) );
  INVX1 U132 ( .A(A[22]), .Y(n195) );
  INVXL U133 ( .A(n235), .Y(n193) );
  INVXL U134 ( .A(A[23]), .Y(n192) );
  INVXL U135 ( .A(A[21]), .Y(n196) );
  OAI32XL U136 ( .A0(n195), .A1(B[22]), .A2(n229), .B0(B[23]), .B1(n192), .Y(
        n225) );
  INVXL U137 ( .A(n227), .Y(n194) );
  INVXL U138 ( .A(A[19]), .Y(n198) );
  OAI32XL U139 ( .A0(n201), .A1(B[16]), .A2(n233), .B0(B[17]), .B1(n200), .Y(
        n231) );
  AOI21XL U140 ( .A0(n199), .A1(B[18]), .B0(n234), .Y(n232) );
  CLKINVX1 U141 ( .A(n224), .Y(n191) );
  CLKINVX1 U142 ( .A(n259), .Y(n204) );
  CLKINVX1 U143 ( .A(A[20]), .Y(n197) );
  CLKINVX1 U144 ( .A(A[14]), .Y(n203) );
  CLKINVX1 U145 ( .A(A[2]), .Y(n190) );
  CLKINVX1 U146 ( .A(A[6]), .Y(n188) );
  CLKINVX1 U147 ( .A(A[3]), .Y(n189) );
  CLKINVX1 U148 ( .A(A[17]), .Y(n200) );
  CLKINVX1 U149 ( .A(A[7]), .Y(n187) );
  CLKINVX1 U150 ( .A(A[15]), .Y(n202) );
  CLKINVX1 U151 ( .A(A[18]), .Y(n199) );
  CLKINVX1 U152 ( .A(A[16]), .Y(n201) );
  CLKINVX1 U153 ( .A(B[0]), .Y(n215) );
  CLKINVX1 U154 ( .A(n249), .Y(n186) );
  CLKINVX1 U155 ( .A(B[24]), .Y(n205) );
  CLKINVX1 U156 ( .A(B[12]), .Y(n207) );
  CLKINVX1 U157 ( .A(B[10]), .Y(n209) );
  CLKINVX1 U158 ( .A(B[8]), .Y(n211) );
  CLKINVX1 U159 ( .A(B[13]), .Y(n206) );
  CLKINVX1 U160 ( .A(B[11]), .Y(n208) );
  CLKINVX1 U161 ( .A(B[9]), .Y(n210) );
  CLKINVX1 U162 ( .A(B[1]), .Y(n214) );
  CLKINVX1 U163 ( .A(B[5]), .Y(n212) );
  CLKINVX1 U164 ( .A(B[4]), .Y(n213) );
  OAI211X1 U165 ( .A0(n193), .A1(n222), .B0(n223), .C0(n224), .Y(n221) );
  OAI22XL U166 ( .A0(n225), .A1(n226), .B0(n227), .B1(n225), .Y(n223) );
  OAI32X1 U167 ( .A0(n197), .A1(B[20]), .A2(n228), .B0(B[21]), .B1(n196), .Y(
        n226) );
  OAI22XL U168 ( .A0(n230), .A1(n231), .B0(n232), .B1(n230), .Y(n222) );
  OAI32X1 U169 ( .A0(n199), .A1(B[18]), .A2(n234), .B0(B[19]), .B1(n198), .Y(
        n230) );
  AOI21X1 U170 ( .A0(A[24]), .A1(n205), .B0(A[25]), .Y(n224) );
  OAI21XL U171 ( .A0(n236), .A1(n237), .B0(n220), .Y(n218) );
  NAND2BX1 U172 ( .AN(A[24]), .B(B[24]), .Y(n220) );
  NOR3X1 U173 ( .A(n238), .B(n239), .C(n240), .Y(n236) );
  OAI21XL U174 ( .A0(A[8]), .A1(n211), .B0(n241), .Y(n238) );
  AO21X1 U175 ( .A0(n201), .A1(B[16]), .B0(n233), .Y(n217) );
  OAI211X1 U176 ( .A0(n237), .A1(n242), .B0(n235), .C0(n232), .Y(n216) );
  NOR2BX1 U177 ( .AN(B[19]), .B(A[19]), .Y(n234) );
  AOI211X1 U178 ( .A0(n197), .A1(B[20]), .B0(n228), .C0(n194), .Y(n235) );
  AOI21X1 U179 ( .A0(n195), .A1(B[22]), .B0(n229), .Y(n227) );
  NOR2BX1 U180 ( .AN(B[23]), .B(A[23]), .Y(n229) );
  NOR2BX1 U181 ( .AN(B[21]), .B(A[21]), .Y(n228) );
  OAI31XL U182 ( .A0(n243), .A1(n244), .A2(n245), .B0(n246), .Y(n242) );
  AO22X1 U183 ( .A0(n186), .A1(n247), .B0(n245), .B1(n186), .Y(n246) );
  AOI32X1 U184 ( .A0(A[4]), .A1(n213), .A2(n248), .B0(n212), .B1(A[5]), .Y(
        n247) );
  OAI32X1 U185 ( .A0(n188), .A1(B[6]), .A2(n250), .B0(B[7]), .B1(n187), .Y(
        n249) );
  AO21X1 U186 ( .A0(n188), .A1(B[6]), .B0(n250), .Y(n245) );
  NOR2BX1 U187 ( .AN(B[7]), .B(A[7]), .Y(n250) );
  AOI211X1 U188 ( .A0(A[1]), .A1(n214), .B0(n251), .C0(n252), .Y(n244) );
  OA22X1 U189 ( .A0(n215), .A1(A[0]), .B0(n214), .B1(A[1]), .Y(n252) );
  OAI221XL U190 ( .A0(A[4]), .A1(n213), .B0(n253), .B1(n251), .C0(n248), .Y(
        n243) );
  OR2X1 U191 ( .A(A[5]), .B(n212), .Y(n248) );
  OAI32X1 U192 ( .A0(n190), .A1(B[2]), .A2(n254), .B0(B[3]), .B1(n189), .Y(
        n251) );
  AOI21X1 U193 ( .A0(B[2]), .A1(n190), .B0(n254), .Y(n253) );
  AND2X1 U194 ( .A(B[3]), .B(n189), .Y(n254) );
  OAI21XL U195 ( .A0(n239), .A1(n255), .B0(n256), .Y(n237) );
  OAI22XL U196 ( .A0(n257), .A1(n204), .B0(n258), .B1(n257), .Y(n256) );
  AOI32X1 U197 ( .A0(A[12]), .A1(n207), .A2(n260), .B0(n206), .B1(A[13]), .Y(
        n259) );
  OAI32X1 U198 ( .A0(n203), .A1(B[14]), .A2(n261), .B0(B[15]), .B1(n202), .Y(
        n257) );
  AO22X1 U199 ( .A0(n262), .A1(n263), .B0(n240), .B1(n262), .Y(n255) );
  OAI21XL U200 ( .A0(A[10]), .A1(n209), .B0(n264), .Y(n240) );
  AOI32X1 U201 ( .A0(A[8]), .A1(n211), .A2(n241), .B0(n210), .B1(A[9]), .Y(
        n263) );
  OR2X1 U202 ( .A(A[9]), .B(n210), .Y(n241) );
  AOI32X1 U203 ( .A0(A[10]), .A1(n209), .A2(n264), .B0(n208), .B1(A[11]), .Y(
        n262) );
  OR2X1 U204 ( .A(A[11]), .B(n208), .Y(n264) );
  OAI211X1 U205 ( .A0(A[12]), .A1(n207), .B0(n260), .C0(n258), .Y(n239) );
  AOI21X1 U206 ( .A0(n203), .A1(B[14]), .B0(n261), .Y(n258) );
  NOR2BX1 U207 ( .AN(B[15]), .B(A[15]), .Y(n261) );
  OR2X1 U208 ( .A(A[13]), .B(n206), .Y(n260) );
endmodule


module divider_3stage_26_18_to_9bit_signed_1_DW01_sub_3 ( A, B, CI, DIFF, CO
 );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31;
  wire   [26:0] carry;

  ADDFXL U2_21 ( .A(A[21]), .B(n10), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n11), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n13), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n15), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n16), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n18), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n20), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n22), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n25), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n27), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n29), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  XOR3X1 U2_25 ( .A(A[25]), .B(n6), .C(carry[25]), .Y(DIFF[25]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n24), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n28), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n26), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX1 U2_1 ( .A(A[1]), .B(n30), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFHX2 U2_8 ( .A(A[8]), .B(n23), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFHX2 U2_12 ( .A(A[12]), .B(n19), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFHX2 U2_17 ( .A(A[17]), .B(n14), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFHX2 U2_22 ( .A(A[22]), .B(n9), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFX2 U2_23 ( .A(A[23]), .B(n8), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFHX1 U2_19 ( .A(A[19]), .B(n12), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFHX1 U2_14 ( .A(A[14]), .B(n17), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFHX1 U2_10 ( .A(A[10]), .B(n21), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  XOR2XL U1 ( .A(n1), .B(carry[24]), .Y(DIFF[24]) );
  NAND3XL U2 ( .A(n2), .B(n3), .C(n4), .Y(carry[25]) );
  XOR2XL U3 ( .A(n7), .B(A[24]), .Y(n1) );
  NAND2XL U4 ( .A(A[24]), .B(carry[24]), .Y(n2) );
  NAND2XL U5 ( .A(n7), .B(carry[24]), .Y(n3) );
  NAND2X1 U6 ( .A(n7), .B(A[24]), .Y(n4) );
  INVXL U7 ( .A(B[0]), .Y(n31) );
  XNOR2XL U8 ( .A(n31), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U9 ( .A(B[25]), .Y(n6) );
  CLKINVX1 U10 ( .A(A[0]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[1]), .Y(n30) );
  NAND2X1 U12 ( .A(B[0]), .B(n5), .Y(carry[1]) );
  CLKINVX1 U13 ( .A(B[2]), .Y(n29) );
  CLKINVX1 U14 ( .A(B[3]), .Y(n28) );
  CLKINVX1 U15 ( .A(B[4]), .Y(n27) );
  CLKINVX1 U16 ( .A(B[5]), .Y(n26) );
  CLKINVX1 U17 ( .A(B[6]), .Y(n25) );
  CLKINVX1 U18 ( .A(B[7]), .Y(n24) );
  CLKINVX1 U19 ( .A(B[8]), .Y(n23) );
  CLKINVX1 U20 ( .A(B[9]), .Y(n22) );
  CLKINVX1 U21 ( .A(B[10]), .Y(n21) );
  CLKINVX1 U22 ( .A(B[11]), .Y(n20) );
  CLKINVX1 U23 ( .A(B[12]), .Y(n19) );
  CLKINVX1 U24 ( .A(B[13]), .Y(n18) );
  CLKINVX1 U25 ( .A(B[14]), .Y(n17) );
  CLKINVX1 U26 ( .A(B[15]), .Y(n16) );
  CLKINVX1 U27 ( .A(B[16]), .Y(n15) );
  CLKINVX1 U28 ( .A(B[17]), .Y(n14) );
  CLKINVX1 U29 ( .A(B[18]), .Y(n13) );
  CLKINVX1 U30 ( .A(B[19]), .Y(n12) );
  CLKINVX1 U31 ( .A(B[20]), .Y(n11) );
  CLKINVX1 U32 ( .A(B[21]), .Y(n10) );
  CLKINVX1 U33 ( .A(B[22]), .Y(n9) );
  CLKINVX1 U34 ( .A(B[24]), .Y(n7) );
  CLKINVX1 U35 ( .A(B[23]), .Y(n8) );
endmodule


module divider_3stage_26_18_to_9bit_signed_1_DW_cmp_2 ( A, B, TC, GE_LT, 
        GE_GT_EQ, GE_LT_GT_LE, EQ_NE );
  input [25:0] A;
  input [25:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269;

  OAI21XL U131 ( .A0(n220), .A1(n221), .B0(n222), .Y(GE_LT_GT_LE) );
  INVXL U132 ( .A(A[1]), .Y(n208) );
  OAI211XL U133 ( .A0(A[8]), .A1(n216), .B0(n245), .C0(n246), .Y(n244) );
  AOI32XL U134 ( .A0(A[8]), .A1(n216), .A2(n245), .B0(n215), .B1(A[9]), .Y(
        n257) );
  NAND2BXL U135 ( .AN(A[9]), .B(B[9]), .Y(n245) );
  INVXL U136 ( .A(A[5]), .Y(n206) );
  INVXL U137 ( .A(A[0]), .Y(n219) );
  NOR2BXL U138 ( .AN(B[5]), .B(A[5]), .Y(n262) );
  NAND2BXL U139 ( .AN(A[3]), .B(B[3]), .Y(n268) );
  CLKINVX1 U140 ( .A(n224), .Y(n189) );
  CLKINVX1 U141 ( .A(n238), .Y(n192) );
  CLKINVX1 U142 ( .A(n230), .Y(n193) );
  CLKINVX1 U143 ( .A(A[22]), .Y(n195) );
  CLKINVX1 U144 ( .A(A[23]), .Y(n194) );
  CLKINVX1 U145 ( .A(A[25]), .Y(n190) );
  CLKINVX1 U146 ( .A(n235), .Y(n200) );
  CLKINVX1 U147 ( .A(B[17]), .Y(n209) );
  CLKINVX1 U148 ( .A(B[11]), .Y(n213) );
  CLKINVX1 U149 ( .A(n253), .Y(n203) );
  CLKINVX1 U150 ( .A(B[13]), .Y(n211) );
  CLKINVX1 U151 ( .A(B[12]), .Y(n212) );
  CLKINVX1 U152 ( .A(B[10]), .Y(n214) );
  CLKINVX1 U153 ( .A(B[9]), .Y(n215) );
  CLKINVX1 U154 ( .A(B[8]), .Y(n216) );
  CLKINVX1 U155 ( .A(A[20]), .Y(n197) );
  CLKINVX1 U156 ( .A(A[14]), .Y(n202) );
  CLKINVX1 U157 ( .A(A[18]), .Y(n199) );
  CLKINVX1 U158 ( .A(A[24]), .Y(n191) );
  CLKINVX1 U159 ( .A(A[15]), .Y(n201) );
  CLKINVX1 U160 ( .A(A[21]), .Y(n196) );
  CLKINVX1 U161 ( .A(A[19]), .Y(n198) );
  CLKINVX1 U162 ( .A(B[3]), .Y(n217) );
  CLKINVX1 U163 ( .A(B[16]), .Y(n210) );
  CLKINVX1 U164 ( .A(B[2]), .Y(n218) );
  CLKINVX1 U165 ( .A(A[6]), .Y(n205) );
  CLKINVX1 U166 ( .A(A[4]), .Y(n207) );
  CLKINVX1 U167 ( .A(A[7]), .Y(n204) );
  OAI21XL U168 ( .A0(n223), .A1(n224), .B0(n225), .Y(n222) );
  OAI211X1 U169 ( .A0(n192), .A1(n226), .B0(n227), .C0(n189), .Y(n225) );
  OAI22XL U170 ( .A0(n228), .A1(n229), .B0(n193), .B1(n228), .Y(n227) );
  OAI32X1 U171 ( .A0(n197), .A1(B[20]), .A2(n231), .B0(B[21]), .B1(n196), .Y(
        n229) );
  OAI32X1 U172 ( .A0(n195), .A1(B[22]), .A2(n232), .B0(B[23]), .B1(n194), .Y(
        n228) );
  OAI22XL U173 ( .A0(n233), .A1(n200), .B0(n234), .B1(n233), .Y(n226) );
  AOI32X1 U174 ( .A0(A[16]), .A1(n210), .A2(n236), .B0(n209), .B1(A[17]), .Y(
        n235) );
  OAI32X1 U175 ( .A0(n199), .A1(B[18]), .A2(n237), .B0(B[19]), .B1(n198), .Y(
        n233) );
  OAI32X1 U176 ( .A0(n191), .A1(B[24]), .A2(n239), .B0(B[25]), .B1(n190), .Y(
        n224) );
  NAND3X1 U177 ( .A(n223), .B(n238), .C(n234), .Y(n221) );
  AOI21X1 U178 ( .A0(n199), .A1(B[18]), .B0(n237), .Y(n234) );
  AND2X1 U179 ( .A(B[19]), .B(n198), .Y(n237) );
  AOI211X1 U180 ( .A0(n197), .A1(B[20]), .B0(n231), .C0(n230), .Y(n238) );
  AO21X1 U181 ( .A0(n195), .A1(B[22]), .B0(n232), .Y(n230) );
  AND2X1 U182 ( .A(B[23]), .B(n194), .Y(n232) );
  AND2X1 U183 ( .A(B[21]), .B(n196), .Y(n231) );
  AOI21X1 U184 ( .A0(n191), .A1(B[24]), .B0(n239), .Y(n223) );
  AND2X1 U185 ( .A(B[25]), .B(n190), .Y(n239) );
  OAI211X1 U186 ( .A0(A[16]), .A1(n210), .B0(n236), .C0(n240), .Y(n220) );
  AOI32X1 U187 ( .A0(n241), .A1(n242), .A2(n243), .B0(n243), .B1(n244), .Y(
        n240) );
  NOR2X1 U188 ( .A(n247), .B(n248), .Y(n246) );
  OA21XL U189 ( .A0(n247), .A1(n249), .B0(n250), .Y(n243) );
  OAI22XL U190 ( .A0(n251), .A1(n203), .B0(n252), .B1(n251), .Y(n250) );
  AOI32X1 U191 ( .A0(A[12]), .A1(n212), .A2(n254), .B0(n211), .B1(A[13]), .Y(
        n253) );
  OAI32X1 U192 ( .A0(n202), .A1(B[14]), .A2(n255), .B0(B[15]), .B1(n201), .Y(
        n251) );
  AO22X1 U193 ( .A0(n256), .A1(n257), .B0(n248), .B1(n256), .Y(n249) );
  OAI21XL U194 ( .A0(A[10]), .A1(n214), .B0(n258), .Y(n248) );
  AOI32X1 U195 ( .A0(A[10]), .A1(n214), .A2(n258), .B0(n213), .B1(A[11]), .Y(
        n256) );
  NAND2BX1 U196 ( .AN(A[11]), .B(B[11]), .Y(n258) );
  OAI211X1 U197 ( .A0(A[12]), .A1(n212), .B0(n254), .C0(n252), .Y(n247) );
  AOI21X1 U198 ( .A0(n202), .A1(B[14]), .B0(n255), .Y(n252) );
  AND2X1 U199 ( .A(B[15]), .B(n201), .Y(n255) );
  NAND2BX1 U200 ( .AN(A[13]), .B(B[13]), .Y(n254) );
  OAI22XL U201 ( .A0(n259), .A1(n260), .B0(n261), .B1(n259), .Y(n242) );
  OAI32X1 U202 ( .A0(n207), .A1(B[4]), .A2(n262), .B0(B[5]), .B1(n206), .Y(
        n260) );
  OAI32X1 U203 ( .A0(n205), .A1(B[6]), .A2(n263), .B0(B[7]), .B1(n204), .Y(
        n259) );
  NAND3X1 U204 ( .A(n261), .B(n264), .C(n265), .Y(n241) );
  AOI221XL U205 ( .A0(n266), .A1(n267), .B0(B[4]), .B1(n207), .C0(n262), .Y(
        n265) );
  OAI21XL U206 ( .A0(A[2]), .A1(n218), .B0(n268), .Y(n267) );
  OAI211X1 U207 ( .A0(B[1]), .A1(n208), .B0(n269), .C0(n266), .Y(n264) );
  AOI32X1 U208 ( .A0(A[2]), .A1(n218), .A2(n268), .B0(n217), .B1(A[3]), .Y(
        n266) );
  AO22X1 U209 ( .A0(n219), .A1(B[0]), .B0(n208), .B1(B[1]), .Y(n269) );
  AOI21X1 U210 ( .A0(n205), .A1(B[6]), .B0(n263), .Y(n261) );
  AND2X1 U211 ( .A(B[7]), .B(n204), .Y(n263) );
  NAND2BX1 U212 ( .AN(A[17]), .B(B[17]), .Y(n236) );
endmodule


module divider_3stage_26_18_to_9bit_signed_1_DW01_sub_5 ( A, B, CI, DIFF, CO
 );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   \B[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49;
  assign \B[0]  = B[0];
  assign DIFF[0] = \B[0] ;

  XNOR2XL U1 ( .A(n49), .B(\B[0] ), .Y(DIFF[1]) );
  NAND2BXL U2 ( .AN(n3), .B(n47), .Y(n4) );
  NAND2BXL U3 ( .AN(\B[0] ), .B(n49), .Y(n2) );
  NAND2BXL U4 ( .AN(n4), .B(n46), .Y(n5) );
  NAND2BXL U5 ( .AN(n5), .B(n45), .Y(n6) );
  NAND2BXL U6 ( .AN(n6), .B(n44), .Y(n7) );
  NAND2BXL U7 ( .AN(n7), .B(n43), .Y(n8) );
  NAND2BXL U8 ( .AN(n8), .B(n42), .Y(n9) );
  NAND2BXL U9 ( .AN(n9), .B(n41), .Y(n10) );
  INVX1 U10 ( .A(B[1]), .Y(n49) );
  INVX1 U11 ( .A(B[2]), .Y(n48) );
  INVX1 U12 ( .A(B[3]), .Y(n47) );
  INVX1 U13 ( .A(B[4]), .Y(n46) );
  INVX1 U14 ( .A(B[5]), .Y(n45) );
  INVXL U15 ( .A(B[25]), .Y(n25) );
  NAND2BX1 U16 ( .AN(n24), .B(n26), .Y(n1) );
  NAND2BX1 U17 ( .AN(n2), .B(n48), .Y(n3) );
  NAND2BX1 U18 ( .AN(n10), .B(n40), .Y(n11) );
  NAND2BX1 U19 ( .AN(n11), .B(n39), .Y(n12) );
  NAND2BX1 U20 ( .AN(n12), .B(n38), .Y(n13) );
  NAND2BX1 U21 ( .AN(n13), .B(n37), .Y(n14) );
  NAND2BX1 U22 ( .AN(n14), .B(n36), .Y(n15) );
  NAND2BX1 U23 ( .AN(n15), .B(n35), .Y(n16) );
  NAND2BX1 U24 ( .AN(n16), .B(n34), .Y(n17) );
  NAND2BX1 U25 ( .AN(n17), .B(n33), .Y(n18) );
  NAND2BX1 U26 ( .AN(n18), .B(n32), .Y(n19) );
  NAND2BX1 U27 ( .AN(n19), .B(n31), .Y(n20) );
  NAND2BX1 U28 ( .AN(n20), .B(n30), .Y(n21) );
  NAND2BX1 U29 ( .AN(n21), .B(n29), .Y(n22) );
  NAND2BX1 U30 ( .AN(n22), .B(n28), .Y(n23) );
  NAND2BX1 U31 ( .AN(n23), .B(n27), .Y(n24) );
  XNOR2X1 U32 ( .A(n45), .B(n5), .Y(DIFF[5]) );
  XNOR2X1 U33 ( .A(n27), .B(n23), .Y(DIFF[23]) );
  XNOR2X1 U34 ( .A(n28), .B(n22), .Y(DIFF[22]) );
  XNOR2X1 U35 ( .A(n44), .B(n6), .Y(DIFF[6]) );
  XNOR2X1 U36 ( .A(n46), .B(n4), .Y(DIFF[4]) );
  XNOR2X1 U37 ( .A(n25), .B(n1), .Y(DIFF[25]) );
  XNOR2X1 U38 ( .A(n48), .B(n2), .Y(DIFF[2]) );
  XNOR2X1 U39 ( .A(n47), .B(n3), .Y(DIFF[3]) );
  CLKINVX1 U40 ( .A(B[6]), .Y(n44) );
  XNOR2X1 U41 ( .A(n35), .B(n15), .Y(DIFF[15]) );
  XNOR2X1 U42 ( .A(n31), .B(n19), .Y(DIFF[19]) );
  XNOR2X1 U43 ( .A(n36), .B(n14), .Y(DIFF[14]) );
  XNOR2X1 U44 ( .A(n43), .B(n7), .Y(DIFF[7]) );
  XNOR2X1 U45 ( .A(n30), .B(n20), .Y(DIFF[20]) );
  XNOR2X1 U46 ( .A(n32), .B(n18), .Y(DIFF[18]) );
  XNOR2X1 U47 ( .A(n26), .B(n24), .Y(DIFF[24]) );
  XNOR2X1 U48 ( .A(n37), .B(n13), .Y(DIFF[13]) );
  XNOR2X1 U49 ( .A(n29), .B(n21), .Y(DIFF[21]) );
  XNOR2X1 U50 ( .A(n40), .B(n10), .Y(DIFF[10]) );
  XNOR2X1 U51 ( .A(n39), .B(n11), .Y(DIFF[11]) );
  XNOR2X1 U52 ( .A(n33), .B(n17), .Y(DIFF[17]) );
  XNOR2X1 U53 ( .A(n41), .B(n9), .Y(DIFF[9]) );
  XNOR2X1 U54 ( .A(n38), .B(n12), .Y(DIFF[12]) );
  XNOR2X1 U55 ( .A(n42), .B(n8), .Y(DIFF[8]) );
  XNOR2X1 U56 ( .A(n34), .B(n16), .Y(DIFF[16]) );
  CLKINVX1 U57 ( .A(B[7]), .Y(n43) );
  CLKINVX1 U58 ( .A(B[8]), .Y(n42) );
  CLKINVX1 U59 ( .A(B[9]), .Y(n41) );
  CLKINVX1 U60 ( .A(B[10]), .Y(n40) );
  CLKINVX1 U61 ( .A(B[11]), .Y(n39) );
  CLKINVX1 U62 ( .A(B[12]), .Y(n38) );
  CLKINVX1 U63 ( .A(B[13]), .Y(n37) );
  CLKINVX1 U64 ( .A(B[14]), .Y(n36) );
  CLKINVX1 U65 ( .A(B[15]), .Y(n35) );
  CLKINVX1 U66 ( .A(B[16]), .Y(n34) );
  CLKINVX1 U67 ( .A(B[17]), .Y(n33) );
  CLKINVX1 U68 ( .A(B[18]), .Y(n32) );
  CLKINVX1 U69 ( .A(B[19]), .Y(n31) );
  CLKINVX1 U70 ( .A(B[20]), .Y(n30) );
  CLKINVX1 U71 ( .A(B[21]), .Y(n29) );
  CLKINVX1 U72 ( .A(B[22]), .Y(n28) );
  CLKINVX1 U73 ( .A(B[23]), .Y(n27) );
  CLKINVX1 U74 ( .A(B[24]), .Y(n26) );
endmodule


module divider_3stage_26_18_to_9bit_signed_1 ( clk, load, dividand, dividor, q, 
        dividand_sign, dividor_sign );
  input [25:0] dividand;
  input [17:0] dividor;
  output [8:0] q;
  input clk, load, dividand_sign, dividor_sign;
  wire   N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N39, N40,
         N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54,
         N55, N56, q_stage_0, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, q_stage_1, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97,
         N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109,
         N110, N111, N112, N113, q_stage_2, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, N134, N135, N136,
         N137, N138, N139, N140, N141, N142, N143, N144, N145, \q_reg[8] ,
         N270, N271, N272, N273, N274, N275, N276, N277, N278,
         \sub_392/carry[8] , \sub_392/carry[7] , \sub_392/carry[6] ,
         \sub_392/carry[5] , \sub_392/carry[4] , \sub_392/carry[3] ,
         \sub_392/carry[2] , \sub_337/carry[17] , \sub_337/carry[16] ,
         \sub_337/carry[15] , \sub_337/carry[14] , \sub_337/carry[13] ,
         \sub_337/carry[12] , \sub_337/carry[11] , \sub_337/carry[10] ,
         \sub_337/carry[9] , \sub_337/carry[8] , \sub_337/carry[7] ,
         \sub_337/carry[6] , \sub_337/carry[5] , \sub_337/carry[4] ,
         \sub_337/carry[3] , \sub_337/carry[2] , n5, n6, n13, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n68, n69, n70, n74,
         n75, n76, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n120, n123, n124, n125, n126, n127, n128, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n377;
  wire   [25:0] dand0;
  wire   [25:0] dior0;
  wire   [25:0] dior3;
  wire   [25:0] dand1;
  wire   [25:0] dand2;
  wire   [2:0] cnt;
  assign N39 = dividor[0];

  DFFX1 \q_reg_reg[8]  ( .D(n232), .CK(clk), .Q(\q_reg[8] ), .QN(n334) );
  DFFQX1 \cnt_reg[1]  ( .D(n225), .CK(clk), .Q(cnt[1]) );
  DFFQX1 \cnt_reg[0]  ( .D(n224), .CK(clk), .Q(cnt[0]) );
  DFFX1 \q_reg_reg[5]  ( .D(n229), .CK(clk), .QN(n210) );
  DFFX1 \q_reg_reg[3]  ( .D(n227), .CK(clk), .QN(n127) );
  DFFX1 \q_reg_reg[6]  ( .D(n230), .CK(clk), .QN(n126) );
  DFFX1 \q_reg_reg[4]  ( .D(n228), .CK(clk), .QN(n124) );
  DFFX1 \q_reg_reg[7]  ( .D(n231), .CK(clk), .QN(n123) );
  EDFFX1 \q_reg_reg[2]  ( .D(n37), .E(n23), .CK(clk), .QN(n211) );
  EDFFX1 \q_reg_reg[1]  ( .D(n34), .E(n22), .CK(clk), .QN(n125) );
  EDFFX1 \q_reg_reg[0]  ( .D(q_stage_2), .E(n23), .CK(clk), .Q(N270), .QN(n128) );
  EDFFX1 \dior3_reg[18]  ( .D(dior0[21]), .E(n22), .CK(clk), .Q(dior3[18]) );
  DFFX1 \dand3_reg[18]  ( .D(n250), .CK(clk), .QN(n359) );
  DFFX1 \dand3_reg[16]  ( .D(n248), .CK(clk), .QN(n357) );
  EDFFX1 \dior3_reg[19]  ( .D(dior0[22]), .E(n22), .CK(clk), .Q(dior3[19]) );
  EDFFX1 \dior3_reg[17]  ( .D(dior0[20]), .E(n22), .CK(clk), .Q(dior3[17]) );
  EDFFX1 \dior3_reg[16]  ( .D(dior0[19]), .E(n22), .CK(clk), .Q(dior3[16]) );
  EDFFX1 \dior3_reg[15]  ( .D(dior0[18]), .E(n22), .CK(clk), .Q(dior3[15]) );
  EDFFX1 \dior3_reg[14]  ( .D(dior0[17]), .E(n22), .CK(clk), .Q(dior3[14]) );
  EDFFX1 \dior3_reg[13]  ( .D(dior0[16]), .E(n23), .CK(clk), .Q(dior3[13]) );
  EDFFX1 \dior3_reg[12]  ( .D(dior0[15]), .E(n22), .CK(clk), .Q(dior3[12]) );
  EDFFX1 \dior3_reg[11]  ( .D(dior0[14]), .E(n22), .CK(clk), .Q(dior3[11]) );
  EDFFX1 \dior3_reg[22]  ( .D(n215), .E(n22), .CK(clk), .QN(n340) );
  EDFFX1 \dior3_reg[21]  ( .D(n218), .E(n22), .CK(clk), .QN(n339) );
  EDFFX1 \dior3_reg[20]  ( .D(n221), .E(n22), .CK(clk), .QN(n338) );
  DFFX1 \dand3_reg[25]  ( .D(n257), .CK(clk), .QN(n366) );
  DFFX1 \dand3_reg[24]  ( .D(n256), .CK(clk), .QN(n365) );
  DFFX1 \dand3_reg[23]  ( .D(n255), .CK(clk), .QN(n364) );
  DFFX1 \dand3_reg[22]  ( .D(n254), .CK(clk), .QN(n363) );
  DFFX1 \dand3_reg[21]  ( .D(n253), .CK(clk), .QN(n362) );
  DFFX1 \dand3_reg[20]  ( .D(n252), .CK(clk), .QN(n361) );
  DFFX1 \dand3_reg[19]  ( .D(n251), .CK(clk), .QN(n360) );
  DFFX1 \dand3_reg[17]  ( .D(n249), .CK(clk), .QN(n358) );
  DFFX1 \dand3_reg[15]  ( .D(n247), .CK(clk), .QN(n356) );
  DFFX1 \dand3_reg[14]  ( .D(n246), .CK(clk), .QN(n355) );
  DFFX1 \dand3_reg[13]  ( .D(n245), .CK(clk), .QN(n354) );
  DFFX1 \dand3_reg[12]  ( .D(n244), .CK(clk), .QN(n353) );
  DFFX1 \dand3_reg[11]  ( .D(n243), .CK(clk), .QN(n352) );
  DFFX1 \dand3_reg[10]  ( .D(n242), .CK(clk), .QN(n351) );
  EDFFX1 \dior3_reg[10]  ( .D(dior0[13]), .E(n22), .CK(clk), .Q(dior3[10]) );
  EDFFX1 \dior3_reg[9]  ( .D(dior0[12]), .E(n22), .CK(clk), .Q(dior3[9]) );
  EDFFX1 \dior3_reg[8]  ( .D(dior0[11]), .E(n22), .CK(clk), .Q(dior3[8]) );
  EDFFX1 \dior3_reg[7]  ( .D(dior0[10]), .E(n22), .CK(clk), .Q(dior3[7]) );
  EDFFX1 \dior3_reg[6]  ( .D(dior0[9]), .E(n23), .CK(clk), .Q(dior3[6]) );
  EDFFX1 \dior3_reg[5]  ( .D(dior0[8]), .E(n23), .CK(clk), .Q(dior3[5]) );
  EDFFTRX1 \dior3_reg[4]  ( .RN(n41), .D(dior3[7]), .E(n303), .CK(clk), .Q(
        dior3[4]) );
  DFFX1 \dand3_reg[9]  ( .D(n241), .CK(clk), .QN(n350) );
  DFFX1 \dand3_reg[8]  ( .D(n240), .CK(clk), .QN(n349) );
  DFFX1 \dand3_reg[7]  ( .D(n239), .CK(clk), .QN(n348) );
  DFFX1 \dand3_reg[6]  ( .D(n238), .CK(clk), .QN(n347) );
  DFFX1 \dand3_reg[5]  ( .D(n237), .CK(clk), .QN(n346) );
  EDFFTRX1 \dior3_reg[2]  ( .RN(n41), .D(dior3[5]), .E(n303), .CK(clk), .QN(
        n337) );
  EDFFTRX1 \dior3_reg[1]  ( .RN(n41), .D(dior3[4]), .E(n303), .CK(clk), .QN(
        n336) );
  EDFFTRX1 \dior3_reg[0]  ( .RN(n41), .D(dior3[3]), .E(n303), .CK(clk), .QN(
        n335) );
  EDFFTRX1 \dior3_reg[3]  ( .RN(n41), .D(dior3[6]), .E(n303), .CK(clk), .Q(
        dior3[3]) );
  DFFX1 \dand3_reg[1]  ( .D(n226), .CK(clk), .QN(n342) );
  DFFX1 \dand3_reg[4]  ( .D(n236), .CK(clk), .QN(n345) );
  DFFX1 \dand3_reg[3]  ( .D(n235), .CK(clk), .QN(n344) );
  DFFX1 \dand3_reg[2]  ( .D(n234), .CK(clk), .QN(n343) );
  DFFX1 \dand3_reg[0]  ( .D(n233), .CK(clk), .QN(n341) );
  AO22X4 U3 ( .A0(n32), .A1(dand1[1]), .B0(N89), .B1(n34), .Y(dand2[1]) );
  AO22X2 U4 ( .A0(n32), .A1(dand1[0]), .B0(N88), .B1(n34), .Y(dand2[0]) );
  CLKINVX1 U5 ( .A(n33), .Y(n32) );
  CLKBUFX3 U6 ( .A(n284), .Y(n27) );
  OAI21XL U7 ( .A0(n38), .A1(n341), .B0(n258), .Y(dand0[0]) );
  OAI21XL U8 ( .A0(n38), .A1(n346), .B0(n279), .Y(dand0[5]) );
  CLKBUFX3 U9 ( .A(n284), .Y(n28) );
  AOI211X1 U10 ( .A0(cnt[0]), .A1(cnt[1]), .B0(cnt[2]), .C0(n38), .Y(n303) );
  CLKINVX1 U11 ( .A(n40), .Y(n38) );
  AOI22XL U16 ( .A0(dividand[1]), .A1(n28), .B0(N13), .B1(n25), .Y(n269) );
  OAI21XL U17 ( .A0(n38), .A1(n342), .B0(n269), .Y(dand0[1]) );
  CLKBUFX2 U24 ( .A(n283), .Y(n25) );
  OAI21XL U26 ( .A0(n38), .A1(n342), .B0(n269), .Y(n5) );
  CLKBUFX2 U27 ( .A(n68), .Y(n41) );
  NOR2XL U28 ( .A(n38), .B(n337), .Y(n6) );
  AO22X1 U29 ( .A0(n35), .A1(dand0[25]), .B0(n36), .B1(N85), .Y(dand1[25]) );
  CLKBUFX2 U30 ( .A(n283), .Y(n24) );
  NOR2XL U31 ( .A(n38), .B(n337), .Y(dior0[2]) );
  AND2X1 U32 ( .A(dior3[3]), .B(n40), .Y(n16) );
  OAI21XL U33 ( .A0(n38), .A1(n343), .B0(n276), .Y(dand0[2]) );
  CLKBUFX2 U34 ( .A(n68), .Y(n39) );
  CLKBUFX2 U35 ( .A(n68), .Y(n40) );
  AO22XL U36 ( .A0(n32), .A1(dand1[2]), .B0(N90), .B1(n34), .Y(dand2[2]) );
  AO22XL U37 ( .A0(n32), .A1(dand1[3]), .B0(N91), .B1(n34), .Y(dand2[3]) );
  AO22XL U38 ( .A0(n32), .A1(dand1[4]), .B0(N92), .B1(n34), .Y(dand2[4]) );
  AO22XL U39 ( .A0(n32), .A1(dand1[5]), .B0(N93), .B1(n34), .Y(dand2[5]) );
  AO22XL U40 ( .A0(n32), .A1(dand1[6]), .B0(N94), .B1(n34), .Y(dand2[6]) );
  AO22XL U41 ( .A0(n32), .A1(dand1[7]), .B0(N95), .B1(n34), .Y(dand2[7]) );
  AO22XL U42 ( .A0(n32), .A1(dand1[11]), .B0(N99), .B1(n34), .Y(dand2[11]) );
  AO22XL U43 ( .A0(n32), .A1(dand1[8]), .B0(N96), .B1(n33), .Y(dand2[8]) );
  AO22XL U44 ( .A0(n32), .A1(dand1[10]), .B0(N98), .B1(n34), .Y(dand2[10]) );
  AO22XL U45 ( .A0(n32), .A1(dand1[9]), .B0(N97), .B1(n34), .Y(dand2[9]) );
  AO22XL U46 ( .A0(n32), .A1(dand1[12]), .B0(N100), .B1(n34), .Y(dand2[12]) );
  AO22XL U47 ( .A0(n32), .A1(dand1[13]), .B0(N101), .B1(n34), .Y(dand2[13]) );
  AO22XL U48 ( .A0(n32), .A1(dand1[14]), .B0(N102), .B1(n34), .Y(dand2[14]) );
  AO22XL U49 ( .A0(n32), .A1(dand1[24]), .B0(N112), .B1(n34), .Y(dand2[24]) );
  AO22XL U50 ( .A0(n32), .A1(dand1[16]), .B0(N104), .B1(n34), .Y(dand2[16]) );
  AO22XL U51 ( .A0(n32), .A1(dand1[20]), .B0(N108), .B1(n34), .Y(dand2[20]) );
  AO22XL U52 ( .A0(n32), .A1(dand1[15]), .B0(N103), .B1(n34), .Y(dand2[15]) );
  AO22XL U53 ( .A0(n32), .A1(dand1[23]), .B0(N111), .B1(n34), .Y(dand2[23]) );
  AO22XL U54 ( .A0(n32), .A1(dand1[19]), .B0(N107), .B1(n34), .Y(dand2[19]) );
  AO22XL U55 ( .A0(n32), .A1(dand1[17]), .B0(N105), .B1(n34), .Y(dand2[17]) );
  AO22XL U56 ( .A0(n32), .A1(dand1[21]), .B0(N109), .B1(n34), .Y(dand2[21]) );
  AO22XL U57 ( .A0(n32), .A1(dand1[22]), .B0(N110), .B1(n34), .Y(dand2[22]) );
  AO22XL U58 ( .A0(n32), .A1(dand1[18]), .B0(N106), .B1(n34), .Y(dand2[18]) );
  CLKBUFX2 U59 ( .A(n283), .Y(n26) );
  OAI21XL U60 ( .A0(n38), .A1(n347), .B0(n280), .Y(dand0[6]) );
  AOI22XL U61 ( .A0(dividand[6]), .A1(n27), .B0(N18), .B1(n24), .Y(n280) );
  OAI21XL U62 ( .A0(n38), .A1(n345), .B0(n278), .Y(dand0[4]) );
  AOI22XL U63 ( .A0(dividand[4]), .A1(n27), .B0(N16), .B1(n24), .Y(n278) );
  AOI22XL U64 ( .A0(dividand[5]), .A1(n27), .B0(N17), .B1(n24), .Y(n279) );
  AND2XL U65 ( .A(dior3[4]), .B(n41), .Y(n18) );
  NOR2X1 U66 ( .A(n39), .B(dividor_sign), .Y(n301) );
  AOI22XL U67 ( .A0(dividand[12]), .A1(n28), .B0(N24), .B1(n25), .Y(n261) );
  AOI22XL U68 ( .A0(dividand[10]), .A1(n28), .B0(N22), .B1(n26), .Y(n259) );
  AOI22XL U69 ( .A0(dividand[9]), .A1(n27), .B0(N21), .B1(n24), .Y(n285) );
  AOI22XL U70 ( .A0(dividand[13]), .A1(n28), .B0(N25), .B1(n25), .Y(n262) );
  AOI22XL U71 ( .A0(dividand[11]), .A1(n28), .B0(N23), .B1(n25), .Y(n260) );
  OAI21XL U72 ( .A0(n38), .A1(n348), .B0(n281), .Y(dand0[7]) );
  AOI22XL U73 ( .A0(dividand[7]), .A1(n27), .B0(N19), .B1(n24), .Y(n281) );
  OAI21XL U74 ( .A0(n38), .A1(n355), .B0(n263), .Y(dand0[14]) );
  AOI22XL U75 ( .A0(dividand[14]), .A1(n28), .B0(N26), .B1(n25), .Y(n263) );
  AOI22XL U76 ( .A0(dividor[3]), .A1(n301), .B0(N42), .B1(n19), .Y(n287) );
  OAI2BB1XL U77 ( .A0N(n41), .A1N(dior3[11]), .B0(n287), .Y(dior0[11]) );
  OAI2BB1XL U78 ( .A0N(n41), .A1N(dior3[9]), .B0(n302), .Y(dior0[9]) );
  OAI2BB1XL U79 ( .A0N(n41), .A1N(dior3[8]), .B0(n299), .Y(dior0[8]) );
  AOI22XL U80 ( .A0(N39), .A1(n301), .B0(N39), .B1(n19), .Y(n299) );
  AOI22XL U81 ( .A0(dividor[4]), .A1(n301), .B0(N43), .B1(n19), .Y(n288) );
  OAI2BB1XL U82 ( .A0N(n41), .A1N(dior3[12]), .B0(n288), .Y(dior0[12]) );
  AOI22XL U83 ( .A0(dividor[2]), .A1(n301), .B0(N41), .B1(n19), .Y(n286) );
  OAI2BB1XL U84 ( .A0N(n41), .A1N(dior3[10]), .B0(n286), .Y(dior0[10]) );
  AND2XL U85 ( .A(dior3[7]), .B(n41), .Y(dior0[7]) );
  AND2XL U86 ( .A(dior3[6]), .B(n41), .Y(dior0[6]) );
  AND2XL U87 ( .A(dior3[5]), .B(n40), .Y(n17) );
  AOI22XL U88 ( .A0(dividand[16]), .A1(n28), .B0(N28), .B1(n25), .Y(n265) );
  AOI22XL U89 ( .A0(dividand[17]), .A1(n28), .B0(N29), .B1(n25), .Y(n266) );
  OAI21XL U90 ( .A0(n38), .A1(n366), .B0(n275), .Y(dand0[25]) );
  AOI22XL U91 ( .A0(dividand[25]), .A1(n27), .B0(N37), .B1(n24), .Y(n275) );
  OAI21XL U92 ( .A0(n38), .A1(n364), .B0(n273), .Y(dand0[23]) );
  AOI22XL U93 ( .A0(dividand[23]), .A1(n27), .B0(N35), .B1(n24), .Y(n273) );
  OAI21XL U94 ( .A0(n38), .A1(n365), .B0(n274), .Y(dand0[24]) );
  AOI22XL U95 ( .A0(dividand[24]), .A1(n27), .B0(N36), .B1(n24), .Y(n274) );
  OAI21XL U96 ( .A0(n38), .A1(n356), .B0(n264), .Y(dand0[15]) );
  AOI22XL U97 ( .A0(dividand[15]), .A1(n28), .B0(N27), .B1(n25), .Y(n264) );
  OAI21XL U98 ( .A0(n38), .A1(n363), .B0(n272), .Y(dand0[22]) );
  AOI22XL U99 ( .A0(dividand[22]), .A1(n27), .B0(N34), .B1(n24), .Y(n272) );
  OAI21XL U100 ( .A0(n38), .A1(n360), .B0(n268), .Y(dand0[19]) );
  AOI22XL U101 ( .A0(dividand[19]), .A1(n28), .B0(N31), .B1(n25), .Y(n268) );
  OAI21XL U102 ( .A0(n38), .A1(n361), .B0(n270), .Y(dand0[20]) );
  AOI22XL U103 ( .A0(dividand[20]), .A1(n28), .B0(N32), .B1(n25), .Y(n270) );
  OAI21XL U104 ( .A0(n38), .A1(n359), .B0(n267), .Y(dand0[18]) );
  AOI22XL U105 ( .A0(dividand[18]), .A1(n28), .B0(N30), .B1(n25), .Y(n267) );
  AOI22XL U106 ( .A0(dividor[7]), .A1(n301), .B0(N46), .B1(n19), .Y(n291) );
  OAI2BB1XL U107 ( .A0N(n41), .A1N(dior3[15]), .B0(n291), .Y(dior0[15]) );
  AOI22XL U108 ( .A0(dividor[5]), .A1(n301), .B0(N44), .B1(n19), .Y(n289) );
  OAI2BB1XL U109 ( .A0N(n41), .A1N(dior3[13]), .B0(n289), .Y(dior0[13]) );
  AOI22XL U110 ( .A0(dividor[6]), .A1(n301), .B0(N45), .B1(n19), .Y(n290) );
  OAI2BB1XL U111 ( .A0N(n41), .A1N(dior3[14]), .B0(n290), .Y(dior0[14]) );
  OAI21XL U112 ( .A0(n38), .A1(n362), .B0(n271), .Y(dand0[21]) );
  AOI22XL U113 ( .A0(dividand[21]), .A1(n27), .B0(N33), .B1(n25), .Y(n271) );
  AOI22XL U114 ( .A0(dividor[10]), .A1(n301), .B0(N49), .B1(n19), .Y(n294) );
  OAI2BB1XL U115 ( .A0N(n41), .A1N(dior3[18]), .B0(n294), .Y(dior0[18]) );
  AOI22XL U116 ( .A0(dividor[11]), .A1(n301), .B0(N50), .B1(n19), .Y(n295) );
  OAI2BB1XL U117 ( .A0N(n41), .A1N(dior3[19]), .B0(n295), .Y(dior0[19]) );
  AOI22XL U118 ( .A0(n31), .A1(dand2[0]), .B0(N120), .B1(n15), .Y(n307) );
  AOI22XL U119 ( .A0(n31), .A1(dand2[1]), .B0(N121), .B1(n15), .Y(n305) );
  NAND2XL U120 ( .A(N54), .B(n19), .Y(n222) );
  NAND2X1 U121 ( .A(n222), .B(n223), .Y(n221) );
  NAND2XL U122 ( .A(dividor[15]), .B(n301), .Y(n223) );
  NAND2XL U123 ( .A(N56), .B(n19), .Y(n216) );
  NAND2X1 U124 ( .A(n216), .B(n217), .Y(n215) );
  NAND2XL U125 ( .A(dividor[17]), .B(n301), .Y(n217) );
  AOI22XL U126 ( .A0(dividor[9]), .A1(n301), .B0(N48), .B1(n19), .Y(n293) );
  OAI2BB1XL U127 ( .A0N(n41), .A1N(dior3[17]), .B0(n293), .Y(dior0[17]) );
  AOI22XL U128 ( .A0(dividor[8]), .A1(n301), .B0(N47), .B1(n19), .Y(n292) );
  OAI2BB1XL U129 ( .A0N(n41), .A1N(dior3[16]), .B0(n292), .Y(dior0[16]) );
  AOI22XL U130 ( .A0(dividor[12]), .A1(n301), .B0(N51), .B1(n19), .Y(n296) );
  OAI21XL U131 ( .A0(n38), .A1(n338), .B0(n296), .Y(dior0[20]) );
  AOI22XL U132 ( .A0(dividor[13]), .A1(n301), .B0(N52), .B1(n19), .Y(n297) );
  OAI21XL U133 ( .A0(n38), .A1(n339), .B0(n297), .Y(dior0[21]) );
  AOI22XL U134 ( .A0(dividor[14]), .A1(n301), .B0(N53), .B1(n19), .Y(n298) );
  OAI21XL U135 ( .A0(n38), .A1(n340), .B0(n298), .Y(dior0[22]) );
  NAND2XL U136 ( .A(N55), .B(n19), .Y(n219) );
  NAND2X1 U137 ( .A(n219), .B(n220), .Y(n218) );
  NAND2XL U138 ( .A(dividor[16]), .B(n301), .Y(n220) );
  XOR2XL U139 ( .A(dividand_sign), .B(dividor_sign), .Y(n333) );
  NOR2XL U140 ( .A(n38), .B(n336), .Y(n13) );
  NOR2X1 U141 ( .A(n38), .B(n336), .Y(dior0[1]) );
  CLKINVX1 U142 ( .A(n36), .Y(n35) );
  AND2X2 U143 ( .A(q_stage_2), .B(n21), .Y(n15) );
  CLKBUFX3 U144 ( .A(n331), .Y(n30) );
  CLKBUFX3 U145 ( .A(n331), .Y(n29) );
  CLKBUFX3 U146 ( .A(n331), .Y(n31) );
  CLKBUFX3 U147 ( .A(n214), .Y(n21) );
  CLKBUFX3 U148 ( .A(n214), .Y(n22) );
  CLKBUFX3 U149 ( .A(n214), .Y(n23) );
  CLKBUFX3 U150 ( .A(q_stage_0), .Y(n36) );
  CLKBUFX3 U151 ( .A(q_stage_1), .Y(n33) );
  CLKBUFX3 U152 ( .A(q_stage_1), .Y(n34) );
  CLKBUFX3 U153 ( .A(q_stage_0), .Y(n37) );
  CLKINVX1 U154 ( .A(load), .Y(n68) );
  NOR2X1 U155 ( .A(n306), .B(q_stage_2), .Y(n331) );
  AO22X1 U156 ( .A0(n32), .A1(dand1[25]), .B0(n33), .B1(N113), .Y(dand2[25])
         );
  CLKINVX1 U157 ( .A(n306), .Y(n214) );
  AO22X1 U158 ( .A0(n35), .A1(dand0[7]), .B0(N67), .B1(n37), .Y(dand1[7]) );
  AO22X1 U159 ( .A0(n35), .A1(dand0[23]), .B0(N83), .B1(n37), .Y(dand1[23]) );
  AO22X1 U160 ( .A0(n35), .A1(dand0[21]), .B0(N81), .B1(n37), .Y(dand1[21]) );
  AO22X1 U161 ( .A0(n35), .A1(dand0[15]), .B0(N75), .B1(n37), .Y(dand1[15]) );
  AO22X1 U162 ( .A0(n35), .A1(dand0[6]), .B0(N66), .B1(n37), .Y(dand1[6]) );
  AO22X1 U163 ( .A0(n35), .A1(dand0[3]), .B0(N63), .B1(n37), .Y(dand1[3]) );
  AO22X1 U164 ( .A0(n35), .A1(dand0[2]), .B0(N62), .B1(n37), .Y(dand1[2]) );
  AO22X1 U165 ( .A0(n35), .A1(dand0[22]), .B0(N82), .B1(n37), .Y(dand1[22]) );
  AO22X1 U166 ( .A0(n35), .A1(dand0[20]), .B0(N80), .B1(n37), .Y(dand1[20]) );
  AO22X1 U167 ( .A0(n35), .A1(dand0[17]), .B0(N77), .B1(n37), .Y(dand1[17]) );
  AO22X1 U168 ( .A0(n35), .A1(dand0[14]), .B0(N74), .B1(n37), .Y(dand1[14]) );
  AO22X1 U169 ( .A0(n35), .A1(dand0[0]), .B0(N60), .B1(n37), .Y(dand1[0]) );
  AO22X1 U170 ( .A0(n35), .A1(dand0[12]), .B0(N72), .B1(n37), .Y(dand1[12]) );
  AO22X1 U171 ( .A0(n35), .A1(dand0[4]), .B0(N64), .B1(n37), .Y(dand1[4]) );
  AO22X1 U172 ( .A0(n35), .A1(dand0[10]), .B0(N70), .B1(n37), .Y(dand1[10]) );
  AO22X1 U173 ( .A0(n35), .A1(dand0[8]), .B0(N68), .B1(n36), .Y(dand1[8]) );
  AO22X1 U174 ( .A0(n35), .A1(n5), .B0(N61), .B1(n37), .Y(dand1[1]) );
  AO22X1 U175 ( .A0(n35), .A1(dand0[13]), .B0(N73), .B1(n37), .Y(dand1[13]) );
  AO22X1 U176 ( .A0(n35), .A1(dand0[11]), .B0(N71), .B1(n37), .Y(dand1[11]) );
  AO22X1 U177 ( .A0(n35), .A1(dand0[9]), .B0(N69), .B1(n37), .Y(dand1[9]) );
  AO22X1 U178 ( .A0(n35), .A1(dand0[5]), .B0(N65), .B1(n37), .Y(dand1[5]) );
  AO22X1 U179 ( .A0(n35), .A1(dand0[24]), .B0(N84), .B1(n37), .Y(dand1[24]) );
  AO22X1 U180 ( .A0(n35), .A1(dand0[19]), .B0(N79), .B1(n37), .Y(dand1[19]) );
  AO22X1 U181 ( .A0(n35), .A1(dand0[18]), .B0(N78), .B1(n37), .Y(dand1[18]) );
  AO22X1 U182 ( .A0(n35), .A1(dand0[16]), .B0(N76), .B1(n37), .Y(dand1[16]) );
  NOR2X1 U183 ( .A(n38), .B(n303), .Y(n306) );
  CLKINVX1 U184 ( .A(n303), .Y(n213) );
  OAI2BB2XL U185 ( .B0(n20), .B1(n334), .A0N(N278), .A1N(n20), .Y(q[8]) );
  AOI22X1 U186 ( .A0(dividand[0]), .A1(n28), .B0(N12), .B1(n26), .Y(n258) );
  NOR2BX1 U187 ( .AN(dividand_sign), .B(n41), .Y(n283) );
  AOI22X1 U188 ( .A0(dividand[2]), .A1(n27), .B0(N14), .B1(n24), .Y(n276) );
  OAI21XL U189 ( .A0(n38), .A1(n344), .B0(n277), .Y(dand0[3]) );
  AOI22X1 U190 ( .A0(dividand[3]), .A1(n27), .B0(N15), .B1(n24), .Y(n277) );
  OAI21XL U191 ( .A0(n21), .A1(n360), .B0(n325), .Y(n251) );
  AOI22X1 U192 ( .A0(n29), .A1(dand2[19]), .B0(N139), .B1(n15), .Y(n325) );
  OAI21XL U193 ( .A0(n21), .A1(n361), .B0(n326), .Y(n252) );
  AOI22X1 U194 ( .A0(n29), .A1(dand2[20]), .B0(N140), .B1(n15), .Y(n326) );
  OAI21XL U195 ( .A0(n21), .A1(n362), .B0(n327), .Y(n253) );
  AOI22X1 U196 ( .A0(n29), .A1(dand2[21]), .B0(N141), .B1(n15), .Y(n327) );
  OAI21XL U197 ( .A0(n21), .A1(n363), .B0(n328), .Y(n254) );
  AOI22X1 U198 ( .A0(n29), .A1(dand2[22]), .B0(N142), .B1(n15), .Y(n328) );
  OAI21XL U199 ( .A0(n21), .A1(n364), .B0(n329), .Y(n255) );
  AOI22X1 U200 ( .A0(n29), .A1(dand2[23]), .B0(N143), .B1(n15), .Y(n329) );
  OAI21XL U201 ( .A0(n21), .A1(n365), .B0(n330), .Y(n256) );
  AOI22X1 U202 ( .A0(n29), .A1(dand2[24]), .B0(N144), .B1(n15), .Y(n330) );
  OAI21XL U203 ( .A0(n21), .A1(n366), .B0(n332), .Y(n257) );
  AOI22X1 U204 ( .A0(n29), .A1(dand2[25]), .B0(N145), .B1(n15), .Y(n332) );
  NOR2X1 U205 ( .A(n39), .B(dividand_sign), .Y(n284) );
  NOR2X1 U206 ( .A(n38), .B(n335), .Y(dior0[0]) );
  CLKINVX1 U207 ( .A(N39), .Y(n69) );
  CLKINVX1 U208 ( .A(dividor[1]), .Y(n70) );
  CLKINVX1 U209 ( .A(dividor[2]), .Y(n74) );
  CLKINVX1 U210 ( .A(dividor[3]), .Y(n75) );
  CLKINVX1 U211 ( .A(dividor[4]), .Y(n76) );
  CLKINVX1 U212 ( .A(dividor[5]), .Y(n81) );
  AOI22X1 U213 ( .A0(dividor[1]), .A1(n301), .B0(N40), .B1(n19), .Y(n302) );
  OAI21XL U214 ( .A0(n38), .A1(n354), .B0(n262), .Y(dand0[13]) );
  OAI21XL U215 ( .A0(n38), .A1(n351), .B0(n259), .Y(dand0[10]) );
  OAI21XL U216 ( .A0(n38), .A1(n352), .B0(n260), .Y(dand0[11]) );
  OAI21XL U217 ( .A0(n38), .A1(n358), .B0(n266), .Y(dand0[17]) );
  OAI21XL U218 ( .A0(n38), .A1(n350), .B0(n285), .Y(dand0[9]) );
  OAI21XL U219 ( .A0(n22), .A1(n341), .B0(n307), .Y(n233) );
  OAI21XL U220 ( .A0(n21), .A1(n351), .B0(n316), .Y(n242) );
  AOI22X1 U221 ( .A0(n30), .A1(dand2[10]), .B0(N130), .B1(n15), .Y(n316) );
  OAI21XL U222 ( .A0(n21), .A1(n352), .B0(n317), .Y(n243) );
  AOI22X1 U223 ( .A0(n30), .A1(dand2[11]), .B0(N131), .B1(n15), .Y(n317) );
  OAI21XL U224 ( .A0(n21), .A1(n353), .B0(n318), .Y(n244) );
  AOI22X1 U225 ( .A0(n30), .A1(dand2[12]), .B0(N132), .B1(n15), .Y(n318) );
  OAI21XL U226 ( .A0(n21), .A1(n354), .B0(n319), .Y(n245) );
  AOI22X1 U227 ( .A0(n30), .A1(dand2[13]), .B0(N133), .B1(n15), .Y(n319) );
  OAI21XL U228 ( .A0(n21), .A1(n355), .B0(n320), .Y(n246) );
  AOI22X1 U229 ( .A0(n29), .A1(dand2[14]), .B0(N134), .B1(n15), .Y(n320) );
  OAI21XL U230 ( .A0(n21), .A1(n356), .B0(n321), .Y(n247) );
  AOI22X1 U231 ( .A0(n29), .A1(dand2[15]), .B0(N135), .B1(n15), .Y(n321) );
  OAI21XL U232 ( .A0(n21), .A1(n357), .B0(n322), .Y(n248) );
  AOI22X1 U233 ( .A0(n29), .A1(dand2[16]), .B0(N136), .B1(n15), .Y(n322) );
  OAI21XL U234 ( .A0(n21), .A1(n358), .B0(n323), .Y(n249) );
  AOI22X1 U235 ( .A0(n29), .A1(dand2[17]), .B0(N137), .B1(n15), .Y(n323) );
  OAI21XL U236 ( .A0(n21), .A1(n359), .B0(n324), .Y(n250) );
  AOI22X1 U237 ( .A0(n29), .A1(dand2[18]), .B0(N138), .B1(n15), .Y(n324) );
  OAI21XL U238 ( .A0(n22), .A1(n343), .B0(n308), .Y(n234) );
  AOI22X1 U239 ( .A0(n30), .A1(dand2[2]), .B0(N122), .B1(n15), .Y(n308) );
  OAI21XL U240 ( .A0(n22), .A1(n344), .B0(n309), .Y(n235) );
  AOI22X1 U241 ( .A0(n30), .A1(dand2[3]), .B0(N123), .B1(n15), .Y(n309) );
  OAI21XL U242 ( .A0(n22), .A1(n345), .B0(n310), .Y(n236) );
  AOI22X1 U243 ( .A0(n30), .A1(dand2[4]), .B0(N124), .B1(n15), .Y(n310) );
  OAI21XL U244 ( .A0(n22), .A1(n346), .B0(n311), .Y(n237) );
  AOI22X1 U245 ( .A0(n30), .A1(dand2[5]), .B0(N125), .B1(n15), .Y(n311) );
  OAI21XL U246 ( .A0(n22), .A1(n347), .B0(n312), .Y(n238) );
  AOI22X1 U247 ( .A0(n30), .A1(dand2[6]), .B0(N126), .B1(n15), .Y(n312) );
  OAI21XL U248 ( .A0(n22), .A1(n348), .B0(n313), .Y(n239) );
  AOI22X1 U249 ( .A0(n30), .A1(dand2[7]), .B0(N127), .B1(n15), .Y(n313) );
  OAI21XL U250 ( .A0(n21), .A1(n349), .B0(n314), .Y(n240) );
  AOI22X1 U251 ( .A0(n30), .A1(dand2[8]), .B0(N128), .B1(n15), .Y(n314) );
  OAI21XL U252 ( .A0(n21), .A1(n350), .B0(n315), .Y(n241) );
  AOI22X1 U253 ( .A0(n30), .A1(dand2[9]), .B0(N129), .B1(n15), .Y(n315) );
  OAI21XL U254 ( .A0(n22), .A1(n342), .B0(n305), .Y(n226) );
  OAI21XL U255 ( .A0(n38), .A1(n353), .B0(n261), .Y(dand0[12]) );
  OAI21XL U256 ( .A0(n38), .A1(n349), .B0(n282), .Y(dand0[8]) );
  AOI22X1 U257 ( .A0(dividand[8]), .A1(n27), .B0(N20), .B1(n24), .Y(n282) );
  OAI21XL U258 ( .A0(n38), .A1(n357), .B0(n265), .Y(dand0[16]) );
  CLKBUFX3 U259 ( .A(n300), .Y(n19) );
  AND2X2 U260 ( .A(dividor_sign), .B(n38), .Y(n300) );
  CLKINVX1 U261 ( .A(dividor[6]), .Y(n82) );
  CLKINVX1 U262 ( .A(dividor[7]), .Y(n83) );
  CLKINVX1 U263 ( .A(dividor[8]), .Y(n84) );
  CLKINVX1 U264 ( .A(dividor[9]), .Y(n85) );
  CLKINVX1 U265 ( .A(dividor[10]), .Y(n86) );
  CLKINVX1 U266 ( .A(dividor[15]), .Y(n91) );
  CLKINVX1 U267 ( .A(dividor[11]), .Y(n87) );
  CLKINVX1 U268 ( .A(dividor[12]), .Y(n88) );
  CLKINVX1 U269 ( .A(dividor[13]), .Y(n89) );
  CLKINVX1 U270 ( .A(dividor[14]), .Y(n90) );
  CLKINVX1 U271 ( .A(dividor[17]), .Y(n120) );
  CLKINVX1 U272 ( .A(dividor[16]), .Y(n92) );
  OAI22XL U273 ( .A0(n22), .A1(n124), .B0(n125), .B1(n213), .Y(n228) );
  OAI22XL U274 ( .A0(n22), .A1(n127), .B0(n128), .B1(n213), .Y(n227) );
  OAI22XL U275 ( .A0(n22), .A1(n210), .B0(n211), .B1(n213), .Y(n229) );
  OAI22XL U276 ( .A0(n22), .A1(n123), .B0(n124), .B1(n213), .Y(n231) );
  OAI22XL U277 ( .A0(n22), .A1(n126), .B0(n127), .B1(n213), .Y(n230) );
  OAI22XL U278 ( .A0(n22), .A1(n334), .B0(n210), .B1(n213), .Y(n232) );
  OAI2BB2XL U279 ( .B0(n20), .B1(n123), .A0N(N277), .A1N(n20), .Y(q[7]) );
  OAI2BB2XL U280 ( .B0(n20), .B1(n126), .A0N(N276), .A1N(n20), .Y(q[6]) );
  OAI21XL U281 ( .A0(n212), .A1(n213), .B0(n304), .Y(n225) );
  OAI21XL U282 ( .A0(n303), .A1(n306), .B0(cnt[1]), .Y(n304) );
  OAI221XL U283 ( .A0(cnt[0]), .A1(n213), .B0(n23), .B1(n212), .C0(n41), .Y(
        n224) );
  OAI2BB2XL U284 ( .B0(n20), .B1(n211), .A0N(N272), .A1N(n20), .Y(q[2]) );
  OAI2BB2XL U285 ( .B0(n20), .B1(n125), .A0N(N271), .A1N(n20), .Y(q[1]) );
  OAI2BB2XL U286 ( .B0(n20), .B1(n128), .A0N(N270), .A1N(n20), .Y(q[0]) );
  OAI2BB2XL U287 ( .B0(n20), .B1(n210), .A0N(N275), .A1N(n20), .Y(q[5]) );
  OAI2BB2XL U288 ( .B0(n20), .B1(n124), .A0N(N274), .A1N(n20), .Y(q[4]) );
  OAI2BB2XL U289 ( .B0(n20), .B1(n127), .A0N(N273), .A1N(n20), .Y(q[3]) );
  CLKBUFX3 U290 ( .A(n333), .Y(n20) );
  CLKINVX1 U291 ( .A(cnt[0]), .Y(n212) );
  XNOR2X1 U292 ( .A(\q_reg[8] ), .B(\sub_392/carry[8] ), .Y(N278) );
  XOR2X1 U293 ( .A(n120), .B(\sub_337/carry[17] ), .Y(N56) );
  AND2X1 U294 ( .A(\sub_337/carry[16] ), .B(n92), .Y(\sub_337/carry[17] ) );
  XOR2X1 U295 ( .A(n92), .B(\sub_337/carry[16] ), .Y(N55) );
  AND2X1 U296 ( .A(\sub_337/carry[15] ), .B(n91), .Y(\sub_337/carry[16] ) );
  XOR2X1 U297 ( .A(n91), .B(\sub_337/carry[15] ), .Y(N54) );
  AND2X1 U298 ( .A(\sub_337/carry[14] ), .B(n90), .Y(\sub_337/carry[15] ) );
  XOR2X1 U299 ( .A(n90), .B(\sub_337/carry[14] ), .Y(N53) );
  AND2X1 U300 ( .A(\sub_337/carry[13] ), .B(n89), .Y(\sub_337/carry[14] ) );
  XOR2X1 U301 ( .A(n89), .B(\sub_337/carry[13] ), .Y(N52) );
  AND2X1 U302 ( .A(\sub_337/carry[12] ), .B(n88), .Y(\sub_337/carry[13] ) );
  XOR2X1 U303 ( .A(n88), .B(\sub_337/carry[12] ), .Y(N51) );
  AND2X1 U304 ( .A(\sub_337/carry[11] ), .B(n87), .Y(\sub_337/carry[12] ) );
  XOR2X1 U305 ( .A(n87), .B(\sub_337/carry[11] ), .Y(N50) );
  AND2X1 U306 ( .A(\sub_337/carry[10] ), .B(n86), .Y(\sub_337/carry[11] ) );
  XOR2X1 U307 ( .A(n86), .B(\sub_337/carry[10] ), .Y(N49) );
  AND2X1 U308 ( .A(\sub_337/carry[9] ), .B(n85), .Y(\sub_337/carry[10] ) );
  XOR2X1 U309 ( .A(n85), .B(\sub_337/carry[9] ), .Y(N48) );
  AND2X1 U310 ( .A(\sub_337/carry[8] ), .B(n84), .Y(\sub_337/carry[9] ) );
  XOR2X1 U311 ( .A(n84), .B(\sub_337/carry[8] ), .Y(N47) );
  AND2X1 U312 ( .A(\sub_337/carry[7] ), .B(n83), .Y(\sub_337/carry[8] ) );
  XOR2X1 U313 ( .A(n83), .B(\sub_337/carry[7] ), .Y(N46) );
  AND2X1 U314 ( .A(\sub_337/carry[6] ), .B(n82), .Y(\sub_337/carry[7] ) );
  XOR2X1 U315 ( .A(n82), .B(\sub_337/carry[6] ), .Y(N45) );
  AND2X1 U316 ( .A(\sub_337/carry[5] ), .B(n81), .Y(\sub_337/carry[6] ) );
  XOR2X1 U317 ( .A(n81), .B(\sub_337/carry[5] ), .Y(N44) );
  AND2X1 U318 ( .A(\sub_337/carry[4] ), .B(n76), .Y(\sub_337/carry[5] ) );
  XOR2X1 U319 ( .A(n76), .B(\sub_337/carry[4] ), .Y(N43) );
  AND2X1 U320 ( .A(\sub_337/carry[3] ), .B(n75), .Y(\sub_337/carry[4] ) );
  XOR2X1 U321 ( .A(n75), .B(\sub_337/carry[3] ), .Y(N42) );
  AND2X1 U322 ( .A(\sub_337/carry[2] ), .B(n74), .Y(\sub_337/carry[3] ) );
  XOR2X1 U323 ( .A(n74), .B(\sub_337/carry[2] ), .Y(N41) );
  AND2X1 U324 ( .A(n69), .B(n70), .Y(\sub_337/carry[2] ) );
  XOR2X1 U325 ( .A(n70), .B(n69), .Y(N40) );
  AND2X1 U326 ( .A(\sub_392/carry[7] ), .B(n123), .Y(\sub_392/carry[8] ) );
  XOR2X1 U327 ( .A(n123), .B(\sub_392/carry[7] ), .Y(N277) );
  AND2X1 U328 ( .A(\sub_392/carry[6] ), .B(n126), .Y(\sub_392/carry[7] ) );
  XOR2X1 U329 ( .A(n126), .B(\sub_392/carry[6] ), .Y(N276) );
  AND2X1 U330 ( .A(\sub_392/carry[5] ), .B(n210), .Y(\sub_392/carry[6] ) );
  XOR2X1 U331 ( .A(n210), .B(\sub_392/carry[5] ), .Y(N275) );
  AND2X1 U332 ( .A(\sub_392/carry[4] ), .B(n124), .Y(\sub_392/carry[5] ) );
  XOR2X1 U333 ( .A(n124), .B(\sub_392/carry[4] ), .Y(N274) );
  AND2X1 U334 ( .A(\sub_392/carry[3] ), .B(n127), .Y(\sub_392/carry[4] ) );
  XOR2X1 U335 ( .A(n127), .B(\sub_392/carry[3] ), .Y(N273) );
  AND2X1 U336 ( .A(\sub_392/carry[2] ), .B(n211), .Y(\sub_392/carry[3] ) );
  XOR2X1 U337 ( .A(n211), .B(\sub_392/carry[2] ), .Y(N272) );
  AND2X1 U338 ( .A(n128), .B(n125), .Y(\sub_392/carry[2] ) );
  XOR2X1 U339 ( .A(n125), .B(n128), .Y(N271) );
  divider_3stage_26_18_to_9bit_signed_1_DW01_sub_1 r341 ( .A(dand2), .B({1'b0, 
        1'b0, n215, n218, n221, dior0[22:6], n17, n18, n16, n6}), .CI(1'b0), 
        .DIFF({N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, 
        N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, 
        N123, N122, N121, N120}) );
  divider_3stage_26_18_to_9bit_signed_1_DW_cmp_0 r339 ( .A(dand2), .B({1'b0, 
        1'b0, n215, n218, n221, dior0[22:6], n17, n18, n16, n6}), .TC(1'b0), 
        .GE_LT(1'b1), .GE_GT_EQ(1'b1), .GE_LT_GT_LE(q_stage_2) );
  divider_3stage_26_18_to_9bit_signed_1_DW01_sub_2 sub_368 ( .A(dand1), .B({
        1'b0, n215, n218, n221, dior0[22:6], n17, n18, n16, n6, n13}), .CI(
        1'b0), .DIFF({N113, N112, N111, N110, N109, N108, N107, N106, N105, 
        N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, 
        N91, N90, N89, N88}) );
  divider_3stage_26_18_to_9bit_signed_1_DW_cmp_1 r337 ( .A(dand1), .B({1'b0, 
        n215, n218, n221, dior0[22:6], n17, n18, n16, n6, n13}), .TC(1'b0), 
        .GE_LT(1'b1), .GE_GT_EQ(1'b1), .GE_LT_GT_LE(q_stage_1) );
  divider_3stage_26_18_to_9bit_signed_1_DW01_sub_3 sub_363 ( .A(dand0), .B({
        n215, n218, n221, dior0[22:6], n17, n18, n16, dior0[2:0]}), .CI(1'b0), 
        .DIFF({N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, 
        N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60}) );
  divider_3stage_26_18_to_9bit_signed_1_DW_cmp_2 r335 ( .A({dand0[25:2], n5, 
        dand0[0]}), .B({n215, n218, n221, dior0[22:6], n17, n18, n16, n6, n13, 
        dior0[0]}), .TC(1'b0), .GE_LT(1'b1), .GE_GT_EQ(1'b1), .GE_LT_GT_LE(
        q_stage_0) );
  divider_3stage_26_18_to_9bit_signed_1_DW01_sub_5 sub_336 ( .A({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B(dividand), .CI(1'b0), .DIFF({N37, N36, N35, N34, N33, N32, N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, 
        N14, N13, N12}) );
  DFFQXL \cnt_reg[2]  ( .D(n377), .CK(clk), .Q(cnt[2]) );
  NOR2BX1 U12 ( .AN(cnt[2]), .B(n38), .Y(n377) );
endmodule


module RFILE_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [7:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module RFILE_DW01_add_1 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [7:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module RFILE_DW01_add_2 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [7:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module RFILE_DW01_add_3 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [7:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module RFILE_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [8:0] carry;

  XOR3X1 U2_7 ( .A(A[7]), .B(n3), .C(carry[7]), .Y(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  CLKINVX1 U1 ( .A(n10), .Y(n1) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n9) );
  NAND2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n2) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n8) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n5) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[0]), .Y(n10) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n3) );
  XNOR2X1 U12 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
endmodule


module RFILE_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [8:0] carry;

  XOR3X1 U2_7 ( .A(A[7]), .B(n3), .C(carry[7]), .Y(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  CLKINVX1 U1 ( .A(n10), .Y(n1) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n9) );
  NAND2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n2) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n8) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n5) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[0]), .Y(n10) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n3) );
  XNOR2X1 U12 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
endmodule


module RFILE_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [8:0] carry;

  XOR3X1 U2_7 ( .A(A[7]), .B(n3), .C(carry[7]), .Y(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  CLKINVX1 U1 ( .A(n10), .Y(n1) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n9) );
  NAND2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n2) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n8) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n5) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[0]), .Y(n10) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n3) );
  XNOR2X1 U12 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
endmodule


module RFILE_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [8:0] carry;

  XOR3X1 U2_7 ( .A(A[7]), .B(n3), .C(carry[7]), .Y(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  CLKINVX1 U1 ( .A(n10), .Y(n1) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n9) );
  NAND2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n2) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n8) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n5) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[0]), .Y(n10) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n3) );
  XNOR2X1 U12 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
endmodule


module RFILE_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  XOR2X1 U1 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module RFILE_DW01_inc_1 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  XOR2X1 U1 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module RFILE_DW01_inc_2 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  XOR2X1 U1 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module RFILE_DW_mult_tc_5 ( a, b, product );
  input [8:0] a;
  input [17:0] b;
  output [26:0] product;
  wire   n15, n25, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n58, n59,
         n61, n62, n63, n64, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640;
  assign n15 = a[5];
  assign n25 = a[8];
  assign n229 = a[2];

  ADDFXL U33 ( .A(n58), .B(n59), .CI(n33), .CO(n32), .S(product[24]) );
  ADDFXL U34 ( .A(n470), .B(n61), .CI(n34), .CO(n33), .S(product[23]) );
  ADDFXL U35 ( .A(n63), .B(n62), .CI(n35), .CO(n34), .S(product[22]) );
  ADDFXL U36 ( .A(n67), .B(n64), .CI(n36), .CO(n35), .S(product[21]) );
  ADDFXL U37 ( .A(n68), .B(n70), .CI(n37), .CO(n36), .S(product[20]) );
  ADDFXL U38 ( .A(n71), .B(n73), .CI(n38), .CO(n37), .S(product[19]) );
  ADDFXL U39 ( .A(n211), .B(n74), .CI(n39), .CO(n38), .S(product[18]) );
  ADDFXL U40 ( .A(n212), .B(n78), .CI(n40), .CO(n39), .S(product[17]) );
  ADDFXL U41 ( .A(n213), .B(n82), .CI(n41), .CO(n40), .S(product[16]) );
  ADDFXL U42 ( .A(n214), .B(n86), .CI(n42), .CO(n41), .S(product[15]) );
  ADDFXL U43 ( .A(n215), .B(n90), .CI(n43), .CO(n42), .S(product[14]) );
  ADDFXL U44 ( .A(n216), .B(n94), .CI(n44), .CO(n43), .S(product[13]) );
  ADDFXL U45 ( .A(n217), .B(n98), .CI(n45), .CO(n44), .S(product[12]) );
  ADDFXL U46 ( .A(n218), .B(n102), .CI(n46), .CO(n45), .S(product[11]) );
  ADDFXL U47 ( .A(n219), .B(n106), .CI(n47), .CO(n46), .S(product[10]) );
  ADDFXL U48 ( .A(n220), .B(n110), .CI(n48), .CO(n47), .S(product[9]) );
  ADDFXL U49 ( .A(n221), .B(n114), .CI(n49), .CO(n48), .S(product[8]) );
  ADDFXL U50 ( .A(n222), .B(n118), .CI(n50), .CO(n49), .S(product[7]) );
  ADDFXL U51 ( .A(n223), .B(n122), .CI(n51), .CO(n50), .S(product[6]) );
  ADDFXL U52 ( .A(n224), .B(n126), .CI(n52), .CO(n51), .S(product[5]) );
  ADDFXL U53 ( .A(n225), .B(n128), .CI(n53), .CO(n52), .S(product[4]) );
  ADDFXL U54 ( .A(n54), .B(n130), .CI(n226), .CO(n53), .S(product[3]) );
  ADDHXL U55 ( .A(n227), .B(n55), .CO(n54), .S(product[2]) );
  ADDHXL U56 ( .A(n228), .B(n229), .CO(n55), .S(product[1]) );
  ADDFXL U60 ( .A(n469), .B(n190), .CI(n173), .CO(n61), .S(n62) );
  ADDFXL U61 ( .A(n174), .B(n69), .CI(n191), .CO(n63), .S(n64) );
  ADDFXL U63 ( .A(n175), .B(n69), .CI(n192), .CO(n67), .S(n68) );
  ADDFXL U65 ( .A(n72), .B(n176), .CI(n193), .CO(n70), .S(n71) );
  ADDFXL U68 ( .A(n194), .B(n76), .CI(n77), .CO(n73), .S(n74) );
  ADDHXL U69 ( .A(n79), .B(n177), .CO(n75), .S(n76) );
  ADDFXL U70 ( .A(n195), .B(n80), .CI(n81), .CO(n77), .S(n78) );
  ADDHXL U71 ( .A(n83), .B(n178), .CO(n79), .S(n80) );
  ADDFXL U72 ( .A(n196), .B(n84), .CI(n85), .CO(n81), .S(n82) );
  ADDHXL U73 ( .A(n87), .B(n179), .CO(n83), .S(n84) );
  ADDFXL U74 ( .A(n197), .B(n88), .CI(n89), .CO(n85), .S(n86) );
  ADDHXL U75 ( .A(n91), .B(n180), .CO(n87), .S(n88) );
  ADDFXL U76 ( .A(n198), .B(n92), .CI(n93), .CO(n89), .S(n90) );
  ADDHXL U77 ( .A(n95), .B(n181), .CO(n91), .S(n92) );
  ADDFXL U78 ( .A(n199), .B(n96), .CI(n97), .CO(n93), .S(n94) );
  ADDHXL U79 ( .A(n99), .B(n182), .CO(n95), .S(n96) );
  ADDFXL U80 ( .A(n200), .B(n100), .CI(n101), .CO(n97), .S(n98) );
  ADDHXL U81 ( .A(n103), .B(n183), .CO(n99), .S(n100) );
  ADDFXL U82 ( .A(n201), .B(n104), .CI(n105), .CO(n101), .S(n102) );
  ADDHXL U83 ( .A(n107), .B(n184), .CO(n103), .S(n104) );
  ADDFXL U84 ( .A(n202), .B(n108), .CI(n109), .CO(n105), .S(n106) );
  ADDHXL U85 ( .A(n111), .B(n185), .CO(n107), .S(n108) );
  ADDFXL U86 ( .A(n203), .B(n112), .CI(n113), .CO(n109), .S(n110) );
  ADDHXL U87 ( .A(n115), .B(n186), .CO(n111), .S(n112) );
  ADDFXL U88 ( .A(n204), .B(n116), .CI(n117), .CO(n113), .S(n114) );
  ADDHXL U89 ( .A(n187), .B(n119), .CO(n115), .S(n116) );
  ADDFXL U90 ( .A(n205), .B(n120), .CI(n121), .CO(n117), .S(n118) );
  ADDHXL U91 ( .A(n188), .B(n123), .CO(n119), .S(n120) );
  ADDFXL U92 ( .A(n125), .B(n124), .CI(n206), .CO(n121), .S(n122) );
  ADDHXL U93 ( .A(n25), .B(n189), .CO(n123), .S(n124) );
  ADDHXL U94 ( .A(n207), .B(n127), .CO(n125), .S(n126) );
  ADDHXL U95 ( .A(n208), .B(n129), .CO(n127), .S(n128) );
  ADDHXL U96 ( .A(n15), .B(n209), .CO(n129), .S(n130) );
  ADDFXL U344 ( .A(b[16]), .B(b[17]), .CI(n137), .CO(n153), .S(n154) );
  ADDFXL U345 ( .A(b[15]), .B(b[16]), .CI(n138), .CO(n137), .S(n155) );
  ADDFXL U346 ( .A(b[14]), .B(b[15]), .CI(n139), .CO(n138), .S(n156) );
  ADDFXL U347 ( .A(b[13]), .B(b[14]), .CI(n140), .CO(n139), .S(n157) );
  ADDFXL U348 ( .A(b[12]), .B(b[13]), .CI(n141), .CO(n140), .S(n158) );
  ADDFXL U349 ( .A(b[11]), .B(b[12]), .CI(n142), .CO(n141), .S(n159) );
  ADDFXL U350 ( .A(b[10]), .B(b[11]), .CI(n143), .CO(n142), .S(n160) );
  ADDFXL U351 ( .A(b[9]), .B(b[10]), .CI(n144), .CO(n143), .S(n161) );
  ADDFXL U352 ( .A(b[8]), .B(b[9]), .CI(n145), .CO(n144), .S(n162) );
  ADDFXL U353 ( .A(b[7]), .B(b[8]), .CI(n146), .CO(n145), .S(n163) );
  ADDFXL U354 ( .A(b[6]), .B(b[7]), .CI(n147), .CO(n146), .S(n164) );
  ADDFXL U355 ( .A(b[5]), .B(b[6]), .CI(n148), .CO(n147), .S(n165) );
  ADDFXL U356 ( .A(b[4]), .B(b[5]), .CI(n149), .CO(n148), .S(n166) );
  ADDFXL U357 ( .A(b[3]), .B(b[4]), .CI(n150), .CO(n149), .S(n167) );
  ADDFXL U358 ( .A(b[2]), .B(b[3]), .CI(n151), .CO(n150), .S(n168) );
  ADDFXL U359 ( .A(b[1]), .B(b[2]), .CI(n152), .CO(n151), .S(n169) );
  ADDHXL U360 ( .A(b[1]), .B(b[0]), .CO(n152), .S(n170) );
  CLKINVX1 U363 ( .A(a[1]), .Y(n468) );
  CLKINVX1 U364 ( .A(n563), .Y(n507) );
  CLKINVX1 U365 ( .A(n564), .Y(n508) );
  CLKINVX1 U366 ( .A(n561), .Y(n505) );
  CLKINVX1 U367 ( .A(n597), .Y(n506) );
  CLKINVX1 U368 ( .A(n518), .Y(n501) );
  CLKINVX1 U369 ( .A(n607), .Y(n502) );
  CLKINVX1 U370 ( .A(n515), .Y(n500) );
  NAND2X1 U371 ( .A(n640), .B(n638), .Y(n515) );
  NOR2X1 U372 ( .A(n638), .B(n503), .Y(n518) );
  XNOR2X1 U373 ( .A(n510), .B(n557), .Y(n212) );
  CLKINVX1 U374 ( .A(n59), .Y(n470) );
  NAND2X1 U375 ( .A(n503), .B(n639), .Y(n607) );
  CLKINVX1 U376 ( .A(n640), .Y(n503) );
  CLKINVX1 U377 ( .A(n602), .Y(n509) );
  CLKINVX1 U378 ( .A(n521), .Y(n511) );
  NOR3BX1 U379 ( .AN(n638), .B(n639), .C(n640), .Y(n517) );
  CLKINVX1 U380 ( .A(n169), .Y(n495) );
  CLKINVX1 U381 ( .A(n168), .Y(n493) );
  CLKINVX1 U382 ( .A(n167), .Y(n491) );
  CLKINVX1 U383 ( .A(n166), .Y(n489) );
  CLKINVX1 U384 ( .A(n165), .Y(n487) );
  CLKINVX1 U385 ( .A(n164), .Y(n485) );
  CLKINVX1 U386 ( .A(n163), .Y(n483) );
  CLKINVX1 U387 ( .A(n162), .Y(n481) );
  CLKINVX1 U388 ( .A(n153), .Y(n472) );
  CLKINVX1 U389 ( .A(n69), .Y(n469) );
  NOR2X1 U390 ( .A(n467), .B(a[1]), .Y(n521) );
  XNOR2X1 U391 ( .A(a[1]), .B(n229), .Y(n467) );
  CLKINVX1 U392 ( .A(n15), .Y(n504) );
  CLKINVX1 U393 ( .A(n229), .Y(n510) );
  CLKINVX1 U394 ( .A(b[0]), .Y(n497) );
  CLKINVX1 U395 ( .A(b[2]), .Y(n494) );
  CLKINVX1 U396 ( .A(b[1]), .Y(n496) );
  CLKINVX1 U397 ( .A(n517), .Y(n499) );
  CLKINVX1 U398 ( .A(n25), .Y(n498) );
  CLKINVX1 U399 ( .A(b[3]), .Y(n492) );
  CLKINVX1 U400 ( .A(b[4]), .Y(n490) );
  CLKINVX1 U401 ( .A(b[5]), .Y(n488) );
  CLKINVX1 U402 ( .A(b[6]), .Y(n486) );
  CLKINVX1 U403 ( .A(b[7]), .Y(n484) );
  CLKINVX1 U404 ( .A(b[8]), .Y(n482) );
  CLKINVX1 U405 ( .A(b[10]), .Y(n479) );
  CLKINVX1 U406 ( .A(b[11]), .Y(n478) );
  CLKINVX1 U407 ( .A(b[9]), .Y(n480) );
  XNOR2X1 U408 ( .A(n520), .B(n229), .Y(n519) );
  CLKINVX1 U409 ( .A(b[13]), .Y(n476) );
  CLKINVX1 U410 ( .A(b[12]), .Y(n477) );
  CLKINVX1 U411 ( .A(b[14]), .Y(n475) );
  CLKINVX1 U412 ( .A(b[16]), .Y(n473) );
  CLKINVX1 U413 ( .A(b[15]), .Y(n474) );
  CLKINVX1 U414 ( .A(b[17]), .Y(n471) );
  AOI21X1 U415 ( .A0(b[2]), .A1(a[1]), .B0(n530), .Y(n529) );
  NOR2X1 U416 ( .A(n496), .B(n511), .Y(n530) );
  NAND2X1 U417 ( .A(a[1]), .B(b[0]), .Y(n526) );
  AOI21X1 U418 ( .A0(a[1]), .A1(b[1]), .B0(n528), .Y(n527) );
  NOR2X1 U419 ( .A(n497), .B(n511), .Y(n528) );
  AOI21X1 U420 ( .A0(b[3]), .A1(a[1]), .B0(n532), .Y(n531) );
  NOR2X1 U421 ( .A(n494), .B(n511), .Y(n532) );
  AOI21X1 U422 ( .A0(b[4]), .A1(a[1]), .B0(n534), .Y(n533) );
  NOR2X1 U423 ( .A(n511), .B(n492), .Y(n534) );
  AOI21X1 U424 ( .A0(b[5]), .A1(a[1]), .B0(n536), .Y(n535) );
  NOR2X1 U425 ( .A(n511), .B(n490), .Y(n536) );
  AOI21X1 U426 ( .A0(b[6]), .A1(a[1]), .B0(n538), .Y(n537) );
  NOR2X1 U427 ( .A(n511), .B(n488), .Y(n538) );
  AOI21X1 U428 ( .A0(b[7]), .A1(a[1]), .B0(n540), .Y(n539) );
  NOR2X1 U429 ( .A(n511), .B(n486), .Y(n540) );
  AOI21X1 U430 ( .A0(b[8]), .A1(a[1]), .B0(n542), .Y(n541) );
  NOR2X1 U431 ( .A(n511), .B(n484), .Y(n542) );
  AOI21X1 U432 ( .A0(b[9]), .A1(a[1]), .B0(n544), .Y(n543) );
  AND2X1 U433 ( .A(n521), .B(b[8]), .Y(n544) );
  AOI21X1 U434 ( .A0(b[10]), .A1(a[1]), .B0(n546), .Y(n545) );
  AND2X1 U435 ( .A(n521), .B(b[9]), .Y(n546) );
  AOI21X1 U436 ( .A0(b[11]), .A1(a[1]), .B0(n548), .Y(n547) );
  AND2X1 U437 ( .A(n521), .B(b[10]), .Y(n548) );
  AOI21X1 U438 ( .A0(b[12]), .A1(a[1]), .B0(n550), .Y(n549) );
  AND2X1 U439 ( .A(n521), .B(b[11]), .Y(n550) );
  AOI21X1 U440 ( .A0(b[13]), .A1(a[1]), .B0(n552), .Y(n551) );
  AND2X1 U441 ( .A(n521), .B(b[12]), .Y(n552) );
  AOI21X1 U442 ( .A0(b[14]), .A1(a[1]), .B0(n554), .Y(n553) );
  AND2X1 U443 ( .A(n521), .B(b[13]), .Y(n554) );
  AOI21X1 U444 ( .A0(a[1]), .A1(b[15]), .B0(n556), .Y(n555) );
  AND2X1 U445 ( .A(n521), .B(b[14]), .Y(n556) );
  OAI21XL U446 ( .A0(n473), .A1(n511), .B0(n559), .Y(n558) );
  NAND2X1 U447 ( .A(a[1]), .B(b[17]), .Y(n559) );
  OAI21XL U448 ( .A0(n521), .A1(a[1]), .B0(b[17]), .Y(n520) );
  XOR2X1 U449 ( .A(n512), .B(n513), .Y(product[25]) );
  XNOR2X1 U450 ( .A(n514), .B(n58), .Y(n513) );
  OAI21XL U451 ( .A0(n515), .A1(n471), .B0(n516), .Y(n514) );
  OAI31XL U452 ( .A0(n517), .A1(n518), .A2(n502), .B0(b[17]), .Y(n516) );
  XOR2X1 U453 ( .A(n498), .B(n32), .Y(n512) );
  XOR2X1 U454 ( .A(n519), .B(n75), .Y(n72) );
  NOR2BX1 U455 ( .AN(n519), .B(n75), .Y(n69) );
  XOR2X1 U456 ( .A(n498), .B(n522), .Y(n59) );
  AOI221XL U457 ( .A0(n518), .A1(b[17]), .B0(n502), .B1(b[16]), .C0(n523), .Y(
        n522) );
  AO22X1 U458 ( .A0(n517), .A1(b[15]), .B0(n500), .B1(n154), .Y(n523) );
  XNOR2X1 U459 ( .A(n524), .B(n25), .Y(n58) );
  OAI221XL U460 ( .A0(n499), .A1(n473), .B0(n515), .B1(n472), .C0(n525), .Y(
        n524) );
  OAI21XL U461 ( .A0(n518), .A1(n502), .B0(b[17]), .Y(n525) );
  XOR2X1 U462 ( .A(n510), .B(n526), .Y(n228) );
  XOR2X1 U463 ( .A(n510), .B(n527), .Y(n227) );
  XOR2X1 U464 ( .A(n510), .B(n529), .Y(n226) );
  XOR2X1 U465 ( .A(n510), .B(n531), .Y(n225) );
  XOR2X1 U466 ( .A(n510), .B(n533), .Y(n224) );
  XOR2X1 U467 ( .A(n510), .B(n535), .Y(n223) );
  XOR2X1 U468 ( .A(n510), .B(n537), .Y(n222) );
  XOR2X1 U469 ( .A(n510), .B(n539), .Y(n221) );
  XOR2X1 U470 ( .A(n510), .B(n541), .Y(n220) );
  XOR2X1 U471 ( .A(n510), .B(n543), .Y(n219) );
  XOR2X1 U472 ( .A(n510), .B(n545), .Y(n218) );
  XOR2X1 U473 ( .A(n510), .B(n547), .Y(n217) );
  XOR2X1 U474 ( .A(n510), .B(n549), .Y(n216) );
  XOR2X1 U475 ( .A(n510), .B(n551), .Y(n215) );
  XOR2X1 U476 ( .A(n510), .B(n553), .Y(n214) );
  XOR2X1 U477 ( .A(n510), .B(n555), .Y(n213) );
  OAI22XL U478 ( .A0(n474), .A1(n511), .B0(n473), .B1(n468), .Y(n557) );
  XOR2X1 U479 ( .A(n558), .B(n229), .Y(n211) );
  XOR2X1 U480 ( .A(n560), .B(n15), .Y(n209) );
  OAI22XL U481 ( .A0(n497), .A1(n507), .B0(n497), .B1(n561), .Y(n560) );
  XOR2X1 U482 ( .A(n504), .B(n562), .Y(n208) );
  AOI222XL U483 ( .A0(n505), .A1(n170), .B0(n563), .B1(b[1]), .C0(n564), .C1(
        b[0]), .Y(n562) );
  XOR2X1 U484 ( .A(n504), .B(n565), .Y(n207) );
  AOI221XL U485 ( .A0(n506), .A1(b[0]), .B0(n505), .B1(n169), .C0(n566), .Y(
        n565) );
  OAI22XL U486 ( .A0(n496), .A1(n508), .B0(n494), .B1(n507), .Y(n566) );
  XOR2X1 U487 ( .A(n504), .B(n567), .Y(n206) );
  AOI221XL U488 ( .A0(n506), .A1(b[1]), .B0(n505), .B1(n168), .C0(n568), .Y(
        n567) );
  OAI22XL U489 ( .A0(n494), .A1(n508), .B0(n492), .B1(n507), .Y(n568) );
  XOR2X1 U490 ( .A(n504), .B(n569), .Y(n205) );
  AOI221XL U491 ( .A0(n506), .A1(b[2]), .B0(n505), .B1(n167), .C0(n570), .Y(
        n569) );
  OAI22XL U492 ( .A0(n492), .A1(n508), .B0(n490), .B1(n507), .Y(n570) );
  XOR2X1 U493 ( .A(n504), .B(n571), .Y(n204) );
  AOI221XL U494 ( .A0(n506), .A1(b[3]), .B0(n505), .B1(n166), .C0(n572), .Y(
        n571) );
  OAI22XL U495 ( .A0(n490), .A1(n508), .B0(n488), .B1(n507), .Y(n572) );
  XOR2X1 U496 ( .A(n504), .B(n573), .Y(n203) );
  AOI221XL U497 ( .A0(n506), .A1(b[4]), .B0(n505), .B1(n165), .C0(n574), .Y(
        n573) );
  OAI22XL U498 ( .A0(n488), .A1(n508), .B0(n486), .B1(n507), .Y(n574) );
  XOR2X1 U499 ( .A(n504), .B(n575), .Y(n202) );
  AOI221XL U500 ( .A0(n506), .A1(b[5]), .B0(n505), .B1(n164), .C0(n576), .Y(
        n575) );
  OAI22XL U501 ( .A0(n486), .A1(n508), .B0(n484), .B1(n507), .Y(n576) );
  XOR2X1 U502 ( .A(n504), .B(n577), .Y(n201) );
  AOI221XL U503 ( .A0(n506), .A1(b[6]), .B0(n505), .B1(n163), .C0(n578), .Y(
        n577) );
  OAI22XL U504 ( .A0(n484), .A1(n508), .B0(n482), .B1(n507), .Y(n578) );
  XOR2X1 U505 ( .A(n504), .B(n579), .Y(n200) );
  AOI221XL U506 ( .A0(n506), .A1(b[7]), .B0(n505), .B1(n162), .C0(n580), .Y(
        n579) );
  OAI22XL U507 ( .A0(n482), .A1(n508), .B0(n480), .B1(n507), .Y(n580) );
  XOR2X1 U508 ( .A(n504), .B(n581), .Y(n199) );
  AOI221XL U509 ( .A0(n506), .A1(b[8]), .B0(n505), .B1(n161), .C0(n582), .Y(
        n581) );
  OAI22XL U510 ( .A0(n480), .A1(n508), .B0(n479), .B1(n507), .Y(n582) );
  XOR2X1 U511 ( .A(n504), .B(n583), .Y(n198) );
  AOI221XL U512 ( .A0(n506), .A1(b[9]), .B0(n505), .B1(n160), .C0(n584), .Y(
        n583) );
  OAI22XL U513 ( .A0(n479), .A1(n508), .B0(n478), .B1(n507), .Y(n584) );
  XOR2X1 U514 ( .A(n504), .B(n585), .Y(n197) );
  AOI221XL U515 ( .A0(n506), .A1(b[10]), .B0(n505), .B1(n159), .C0(n586), .Y(
        n585) );
  OAI22XL U516 ( .A0(n478), .A1(n508), .B0(n477), .B1(n507), .Y(n586) );
  XOR2X1 U517 ( .A(n504), .B(n587), .Y(n196) );
  AOI221XL U518 ( .A0(n506), .A1(b[11]), .B0(n505), .B1(n158), .C0(n588), .Y(
        n587) );
  OAI22XL U519 ( .A0(n477), .A1(n508), .B0(n476), .B1(n507), .Y(n588) );
  XOR2X1 U520 ( .A(n504), .B(n589), .Y(n195) );
  AOI221XL U521 ( .A0(n506), .A1(b[12]), .B0(n505), .B1(n157), .C0(n590), .Y(
        n589) );
  OAI22XL U522 ( .A0(n476), .A1(n508), .B0(n475), .B1(n507), .Y(n590) );
  XOR2X1 U523 ( .A(n504), .B(n591), .Y(n194) );
  AOI221XL U524 ( .A0(n506), .A1(b[13]), .B0(n505), .B1(n156), .C0(n592), .Y(
        n591) );
  OAI22XL U525 ( .A0(n475), .A1(n508), .B0(n474), .B1(n507), .Y(n592) );
  XOR2X1 U526 ( .A(n504), .B(n593), .Y(n193) );
  AOI221XL U527 ( .A0(n506), .A1(b[14]), .B0(n505), .B1(n155), .C0(n594), .Y(
        n593) );
  OAI22XL U528 ( .A0(n474), .A1(n508), .B0(n473), .B1(n507), .Y(n594) );
  XOR2X1 U529 ( .A(n504), .B(n595), .Y(n192) );
  AOI221XL U530 ( .A0(n563), .A1(b[17]), .B0(n505), .B1(n154), .C0(n596), .Y(
        n595) );
  OAI22XL U531 ( .A0(n474), .A1(n597), .B0(n473), .B1(n508), .Y(n596) );
  XOR2X1 U532 ( .A(n598), .B(n15), .Y(n191) );
  OAI221XL U533 ( .A0(n473), .A1(n597), .B0(n472), .B1(n561), .C0(n599), .Y(
        n598) );
  OAI21XL U534 ( .A0(n563), .A1(n564), .B0(b[17]), .Y(n599) );
  XOR2X1 U535 ( .A(n504), .B(n600), .Y(n190) );
  OAI21XL U536 ( .A0(n471), .A1(n561), .B0(n601), .Y(n600) );
  OAI31XL U537 ( .A0(n506), .A1(n563), .A2(n564), .B0(b[17]), .Y(n601) );
  NOR2X1 U538 ( .A(n602), .B(n603), .Y(n564) );
  NOR2X1 U539 ( .A(n604), .B(n509), .Y(n563) );
  NAND3X1 U540 ( .A(n509), .B(n604), .C(n603), .Y(n597) );
  XNOR2X1 U541 ( .A(a[3]), .B(a[4]), .Y(n603) );
  NAND2X1 U542 ( .A(n602), .B(n604), .Y(n561) );
  XOR2X1 U543 ( .A(a[4]), .B(n15), .Y(n604) );
  XOR2X1 U544 ( .A(a[3]), .B(n229), .Y(n602) );
  XOR2X1 U545 ( .A(n605), .B(n25), .Y(n189) );
  OAI22XL U546 ( .A0(n501), .A1(n497), .B0(n515), .B1(n497), .Y(n605) );
  XOR2X1 U547 ( .A(n498), .B(n606), .Y(n188) );
  AOI222XL U548 ( .A0(n170), .A1(n500), .B0(b[1]), .B1(n518), .C0(b[0]), .C1(
        n502), .Y(n606) );
  XOR2X1 U549 ( .A(n498), .B(n608), .Y(n187) );
  AOI221XL U550 ( .A0(b[0]), .A1(n517), .B0(b[2]), .B1(n518), .C0(n609), .Y(
        n608) );
  OAI22XL U551 ( .A0(n515), .A1(n495), .B0(n607), .B1(n496), .Y(n609) );
  XOR2X1 U552 ( .A(n498), .B(n610), .Y(n186) );
  AOI221XL U553 ( .A0(b[1]), .A1(n517), .B0(b[3]), .B1(n518), .C0(n611), .Y(
        n610) );
  OAI22XL U554 ( .A0(n515), .A1(n493), .B0(n607), .B1(n494), .Y(n611) );
  XOR2X1 U555 ( .A(n498), .B(n612), .Y(n185) );
  AOI221XL U556 ( .A0(b[2]), .A1(n517), .B0(b[4]), .B1(n518), .C0(n613), .Y(
        n612) );
  OAI22XL U557 ( .A0(n515), .A1(n491), .B0(n607), .B1(n492), .Y(n613) );
  XOR2X1 U558 ( .A(n498), .B(n614), .Y(n184) );
  AOI221XL U559 ( .A0(b[3]), .A1(n517), .B0(b[5]), .B1(n518), .C0(n615), .Y(
        n614) );
  OAI22XL U560 ( .A0(n515), .A1(n489), .B0(n607), .B1(n490), .Y(n615) );
  XOR2X1 U561 ( .A(n498), .B(n616), .Y(n183) );
  AOI221XL U562 ( .A0(b[4]), .A1(n517), .B0(b[6]), .B1(n518), .C0(n617), .Y(
        n616) );
  OAI22XL U563 ( .A0(n515), .A1(n487), .B0(n607), .B1(n488), .Y(n617) );
  XOR2X1 U564 ( .A(n498), .B(n618), .Y(n182) );
  AOI221XL U565 ( .A0(b[5]), .A1(n517), .B0(b[7]), .B1(n518), .C0(n619), .Y(
        n618) );
  OAI22XL U566 ( .A0(n515), .A1(n485), .B0(n607), .B1(n486), .Y(n619) );
  XOR2X1 U567 ( .A(n498), .B(n620), .Y(n181) );
  AOI221XL U568 ( .A0(b[6]), .A1(n517), .B0(b[8]), .B1(n518), .C0(n621), .Y(
        n620) );
  OAI22XL U569 ( .A0(n515), .A1(n483), .B0(n607), .B1(n484), .Y(n621) );
  XOR2X1 U570 ( .A(n498), .B(n622), .Y(n180) );
  AOI221XL U571 ( .A0(b[9]), .A1(n518), .B0(b[7]), .B1(n517), .C0(n623), .Y(
        n622) );
  OAI22XL U572 ( .A0(n515), .A1(n481), .B0(n607), .B1(n482), .Y(n623) );
  XOR2X1 U573 ( .A(n498), .B(n624), .Y(n179) );
  AOI221XL U574 ( .A0(b[8]), .A1(n517), .B0(n161), .B1(n500), .C0(n625), .Y(
        n624) );
  OAI22XL U575 ( .A0(n607), .A1(n480), .B0(n501), .B1(n479), .Y(n625) );
  XOR2X1 U576 ( .A(n498), .B(n626), .Y(n178) );
  AOI221XL U577 ( .A0(b[9]), .A1(n517), .B0(n160), .B1(n500), .C0(n627), .Y(
        n626) );
  OAI22XL U578 ( .A0(n607), .A1(n479), .B0(n501), .B1(n478), .Y(n627) );
  XOR2X1 U579 ( .A(n498), .B(n628), .Y(n177) );
  AOI221XL U580 ( .A0(b[10]), .A1(n517), .B0(n159), .B1(n500), .C0(n629), .Y(
        n628) );
  OAI22XL U581 ( .A0(n607), .A1(n478), .B0(n501), .B1(n477), .Y(n629) );
  XOR2X1 U582 ( .A(n498), .B(n630), .Y(n176) );
  AOI221XL U583 ( .A0(b[11]), .A1(n517), .B0(n158), .B1(n500), .C0(n631), .Y(
        n630) );
  OAI22XL U584 ( .A0(n607), .A1(n477), .B0(n501), .B1(n476), .Y(n631) );
  XOR2X1 U585 ( .A(n498), .B(n632), .Y(n175) );
  AOI221XL U586 ( .A0(b[12]), .A1(n517), .B0(n157), .B1(n500), .C0(n633), .Y(
        n632) );
  OAI22XL U587 ( .A0(n607), .A1(n476), .B0(n501), .B1(n475), .Y(n633) );
  XOR2X1 U588 ( .A(n498), .B(n634), .Y(n174) );
  AOI221XL U589 ( .A0(b[13]), .A1(n517), .B0(n156), .B1(n500), .C0(n635), .Y(
        n634) );
  OAI22XL U590 ( .A0(n607), .A1(n475), .B0(n501), .B1(n474), .Y(n635) );
  XOR2X1 U591 ( .A(n498), .B(n636), .Y(n173) );
  AOI221XL U592 ( .A0(b[14]), .A1(n517), .B0(n155), .B1(n500), .C0(n637), .Y(
        n636) );
  OAI22XL U593 ( .A0(n607), .A1(n474), .B0(n473), .B1(n501), .Y(n637) );
  XOR2X1 U594 ( .A(a[6]), .B(n15), .Y(n640) );
  XOR2X1 U595 ( .A(a[6]), .B(a[7]), .Y(n639) );
  XOR2X1 U596 ( .A(a[7]), .B(n25), .Y(n638) );
endmodule


module RFILE_DW_mult_tc_4 ( a, b, product );
  input [8:0] a;
  input [17:0] b;
  output [26:0] product;
  wire   n15, n25, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n58, n59,
         n61, n62, n63, n64, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640;
  assign n15 = a[5];
  assign n25 = a[8];
  assign n229 = a[2];

  ADDFXL U33 ( .A(n58), .B(n59), .CI(n33), .CO(n32), .S(product[24]) );
  ADDFXL U34 ( .A(n470), .B(n61), .CI(n34), .CO(n33), .S(product[23]) );
  ADDFXL U35 ( .A(n63), .B(n62), .CI(n35), .CO(n34), .S(product[22]) );
  ADDFXL U36 ( .A(n67), .B(n64), .CI(n36), .CO(n35), .S(product[21]) );
  ADDFXL U37 ( .A(n68), .B(n70), .CI(n37), .CO(n36), .S(product[20]) );
  ADDFXL U38 ( .A(n71), .B(n73), .CI(n38), .CO(n37), .S(product[19]) );
  ADDFXL U39 ( .A(n211), .B(n74), .CI(n39), .CO(n38), .S(product[18]) );
  ADDFXL U40 ( .A(n212), .B(n78), .CI(n40), .CO(n39), .S(product[17]) );
  ADDFXL U41 ( .A(n213), .B(n82), .CI(n41), .CO(n40), .S(product[16]) );
  ADDFXL U42 ( .A(n214), .B(n86), .CI(n42), .CO(n41), .S(product[15]) );
  ADDFXL U43 ( .A(n215), .B(n90), .CI(n43), .CO(n42), .S(product[14]) );
  ADDFXL U44 ( .A(n216), .B(n94), .CI(n44), .CO(n43), .S(product[13]) );
  ADDFXL U45 ( .A(n217), .B(n98), .CI(n45), .CO(n44), .S(product[12]) );
  ADDFXL U46 ( .A(n218), .B(n102), .CI(n46), .CO(n45), .S(product[11]) );
  ADDFXL U47 ( .A(n219), .B(n106), .CI(n47), .CO(n46), .S(product[10]) );
  ADDFXL U48 ( .A(n220), .B(n110), .CI(n48), .CO(n47), .S(product[9]) );
  ADDFXL U49 ( .A(n221), .B(n114), .CI(n49), .CO(n48), .S(product[8]) );
  ADDFXL U50 ( .A(n222), .B(n118), .CI(n50), .CO(n49), .S(product[7]) );
  ADDFXL U51 ( .A(n223), .B(n122), .CI(n51), .CO(n50), .S(product[6]) );
  ADDFXL U52 ( .A(n224), .B(n126), .CI(n52), .CO(n51), .S(product[5]) );
  ADDFXL U53 ( .A(n225), .B(n128), .CI(n53), .CO(n52), .S(product[4]) );
  ADDFXL U54 ( .A(n54), .B(n130), .CI(n226), .CO(n53), .S(product[3]) );
  ADDHXL U55 ( .A(n227), .B(n55), .CO(n54), .S(product[2]) );
  ADDHXL U56 ( .A(n228), .B(n229), .CO(n55), .S(product[1]) );
  ADDFXL U60 ( .A(n469), .B(n190), .CI(n173), .CO(n61), .S(n62) );
  ADDFXL U61 ( .A(n174), .B(n69), .CI(n191), .CO(n63), .S(n64) );
  ADDFXL U63 ( .A(n175), .B(n69), .CI(n192), .CO(n67), .S(n68) );
  ADDFXL U65 ( .A(n72), .B(n176), .CI(n193), .CO(n70), .S(n71) );
  ADDFXL U68 ( .A(n194), .B(n76), .CI(n77), .CO(n73), .S(n74) );
  ADDHXL U69 ( .A(n79), .B(n177), .CO(n75), .S(n76) );
  ADDFXL U70 ( .A(n195), .B(n80), .CI(n81), .CO(n77), .S(n78) );
  ADDHXL U71 ( .A(n83), .B(n178), .CO(n79), .S(n80) );
  ADDFXL U72 ( .A(n196), .B(n84), .CI(n85), .CO(n81), .S(n82) );
  ADDHXL U73 ( .A(n87), .B(n179), .CO(n83), .S(n84) );
  ADDFXL U74 ( .A(n197), .B(n88), .CI(n89), .CO(n85), .S(n86) );
  ADDHXL U75 ( .A(n91), .B(n180), .CO(n87), .S(n88) );
  ADDFXL U76 ( .A(n198), .B(n92), .CI(n93), .CO(n89), .S(n90) );
  ADDHXL U77 ( .A(n95), .B(n181), .CO(n91), .S(n92) );
  ADDFXL U78 ( .A(n199), .B(n96), .CI(n97), .CO(n93), .S(n94) );
  ADDHXL U79 ( .A(n99), .B(n182), .CO(n95), .S(n96) );
  ADDFXL U80 ( .A(n200), .B(n100), .CI(n101), .CO(n97), .S(n98) );
  ADDHXL U81 ( .A(n103), .B(n183), .CO(n99), .S(n100) );
  ADDFXL U82 ( .A(n201), .B(n104), .CI(n105), .CO(n101), .S(n102) );
  ADDHXL U83 ( .A(n107), .B(n184), .CO(n103), .S(n104) );
  ADDFXL U84 ( .A(n202), .B(n108), .CI(n109), .CO(n105), .S(n106) );
  ADDHXL U85 ( .A(n111), .B(n185), .CO(n107), .S(n108) );
  ADDFXL U86 ( .A(n203), .B(n112), .CI(n113), .CO(n109), .S(n110) );
  ADDHXL U87 ( .A(n115), .B(n186), .CO(n111), .S(n112) );
  ADDFXL U88 ( .A(n204), .B(n116), .CI(n117), .CO(n113), .S(n114) );
  ADDHXL U89 ( .A(n187), .B(n119), .CO(n115), .S(n116) );
  ADDFXL U90 ( .A(n205), .B(n120), .CI(n121), .CO(n117), .S(n118) );
  ADDHXL U91 ( .A(n188), .B(n123), .CO(n119), .S(n120) );
  ADDFXL U92 ( .A(n125), .B(n124), .CI(n206), .CO(n121), .S(n122) );
  ADDHXL U93 ( .A(n25), .B(n189), .CO(n123), .S(n124) );
  ADDHXL U94 ( .A(n207), .B(n127), .CO(n125), .S(n126) );
  ADDHXL U95 ( .A(n208), .B(n129), .CO(n127), .S(n128) );
  ADDHXL U96 ( .A(n15), .B(n209), .CO(n129), .S(n130) );
  ADDFXL U344 ( .A(b[16]), .B(b[17]), .CI(n137), .CO(n153), .S(n154) );
  ADDFXL U345 ( .A(b[15]), .B(b[16]), .CI(n138), .CO(n137), .S(n155) );
  ADDFXL U346 ( .A(b[14]), .B(b[15]), .CI(n139), .CO(n138), .S(n156) );
  ADDFXL U347 ( .A(b[13]), .B(b[14]), .CI(n140), .CO(n139), .S(n157) );
  ADDFXL U348 ( .A(b[12]), .B(b[13]), .CI(n141), .CO(n140), .S(n158) );
  ADDFXL U349 ( .A(b[11]), .B(b[12]), .CI(n142), .CO(n141), .S(n159) );
  ADDFXL U350 ( .A(b[10]), .B(b[11]), .CI(n143), .CO(n142), .S(n160) );
  ADDFXL U351 ( .A(b[9]), .B(b[10]), .CI(n144), .CO(n143), .S(n161) );
  ADDFXL U352 ( .A(b[8]), .B(b[9]), .CI(n145), .CO(n144), .S(n162) );
  ADDFXL U353 ( .A(b[7]), .B(b[8]), .CI(n146), .CO(n145), .S(n163) );
  ADDFXL U354 ( .A(b[6]), .B(b[7]), .CI(n147), .CO(n146), .S(n164) );
  ADDFXL U355 ( .A(b[5]), .B(b[6]), .CI(n148), .CO(n147), .S(n165) );
  ADDFXL U356 ( .A(b[4]), .B(b[5]), .CI(n149), .CO(n148), .S(n166) );
  ADDFXL U357 ( .A(b[3]), .B(b[4]), .CI(n150), .CO(n149), .S(n167) );
  ADDFXL U358 ( .A(b[2]), .B(b[3]), .CI(n151), .CO(n150), .S(n168) );
  ADDFXL U359 ( .A(b[1]), .B(b[2]), .CI(n152), .CO(n151), .S(n169) );
  ADDHXL U360 ( .A(b[1]), .B(b[0]), .CO(n152), .S(n170) );
  CLKINVX1 U363 ( .A(a[1]), .Y(n468) );
  CLKINVX1 U364 ( .A(n563), .Y(n507) );
  CLKINVX1 U365 ( .A(n564), .Y(n508) );
  CLKINVX1 U366 ( .A(n561), .Y(n505) );
  CLKINVX1 U367 ( .A(n597), .Y(n506) );
  CLKINVX1 U368 ( .A(n515), .Y(n500) );
  CLKINVX1 U369 ( .A(n518), .Y(n501) );
  CLKINVX1 U370 ( .A(n607), .Y(n502) );
  NOR3BX1 U371 ( .AN(n638), .B(n639), .C(n640), .Y(n517) );
  NAND2X1 U372 ( .A(n640), .B(n638), .Y(n515) );
  NOR2X1 U373 ( .A(n638), .B(n503), .Y(n518) );
  XNOR2X1 U374 ( .A(n510), .B(n557), .Y(n212) );
  CLKINVX1 U375 ( .A(n59), .Y(n470) );
  NAND2X1 U376 ( .A(n503), .B(n639), .Y(n607) );
  CLKINVX1 U377 ( .A(n640), .Y(n503) );
  CLKINVX1 U378 ( .A(n602), .Y(n509) );
  CLKINVX1 U379 ( .A(n521), .Y(n511) );
  CLKINVX1 U380 ( .A(n169), .Y(n495) );
  CLKINVX1 U381 ( .A(n168), .Y(n493) );
  CLKINVX1 U382 ( .A(n167), .Y(n491) );
  CLKINVX1 U383 ( .A(n166), .Y(n489) );
  CLKINVX1 U384 ( .A(n165), .Y(n487) );
  CLKINVX1 U385 ( .A(n164), .Y(n485) );
  CLKINVX1 U386 ( .A(n163), .Y(n483) );
  CLKINVX1 U387 ( .A(n162), .Y(n481) );
  CLKINVX1 U388 ( .A(n153), .Y(n472) );
  CLKINVX1 U389 ( .A(n69), .Y(n469) );
  NOR2X1 U390 ( .A(n467), .B(a[1]), .Y(n521) );
  XNOR2X1 U391 ( .A(a[1]), .B(n229), .Y(n467) );
  CLKINVX1 U392 ( .A(b[0]), .Y(n497) );
  CLKINVX1 U393 ( .A(n15), .Y(n504) );
  CLKINVX1 U394 ( .A(n25), .Y(n498) );
  CLKINVX1 U395 ( .A(n229), .Y(n510) );
  CLKINVX1 U396 ( .A(b[2]), .Y(n494) );
  CLKINVX1 U397 ( .A(b[3]), .Y(n492) );
  CLKINVX1 U398 ( .A(b[1]), .Y(n496) );
  CLKINVX1 U399 ( .A(n517), .Y(n499) );
  CLKINVX1 U400 ( .A(b[4]), .Y(n490) );
  CLKINVX1 U401 ( .A(b[5]), .Y(n488) );
  CLKINVX1 U402 ( .A(b[6]), .Y(n486) );
  CLKINVX1 U403 ( .A(b[7]), .Y(n484) );
  CLKINVX1 U404 ( .A(b[9]), .Y(n480) );
  CLKINVX1 U405 ( .A(b[8]), .Y(n482) );
  CLKINVX1 U406 ( .A(b[10]), .Y(n479) );
  CLKINVX1 U407 ( .A(b[11]), .Y(n478) );
  XNOR2X1 U408 ( .A(n520), .B(n229), .Y(n519) );
  CLKINVX1 U409 ( .A(b[13]), .Y(n476) );
  CLKINVX1 U410 ( .A(b[12]), .Y(n477) );
  CLKINVX1 U411 ( .A(b[14]), .Y(n475) );
  CLKINVX1 U412 ( .A(b[16]), .Y(n473) );
  CLKINVX1 U413 ( .A(b[15]), .Y(n474) );
  CLKINVX1 U414 ( .A(b[17]), .Y(n471) );
  AOI21X1 U415 ( .A0(b[2]), .A1(a[1]), .B0(n530), .Y(n529) );
  NOR2X1 U416 ( .A(n496), .B(n511), .Y(n530) );
  NAND2X1 U417 ( .A(a[1]), .B(b[0]), .Y(n526) );
  AOI21X1 U418 ( .A0(a[1]), .A1(b[1]), .B0(n528), .Y(n527) );
  NOR2X1 U419 ( .A(n497), .B(n511), .Y(n528) );
  AOI21X1 U420 ( .A0(b[3]), .A1(a[1]), .B0(n532), .Y(n531) );
  NOR2X1 U421 ( .A(n494), .B(n511), .Y(n532) );
  AOI21X1 U422 ( .A0(b[4]), .A1(a[1]), .B0(n534), .Y(n533) );
  NOR2X1 U423 ( .A(n511), .B(n492), .Y(n534) );
  AOI21X1 U424 ( .A0(b[5]), .A1(a[1]), .B0(n536), .Y(n535) );
  NOR2X1 U425 ( .A(n511), .B(n490), .Y(n536) );
  AOI21X1 U426 ( .A0(b[6]), .A1(a[1]), .B0(n538), .Y(n537) );
  NOR2X1 U427 ( .A(n511), .B(n488), .Y(n538) );
  AOI21X1 U428 ( .A0(b[7]), .A1(a[1]), .B0(n540), .Y(n539) );
  NOR2X1 U429 ( .A(n511), .B(n486), .Y(n540) );
  AOI21X1 U430 ( .A0(b[8]), .A1(a[1]), .B0(n542), .Y(n541) );
  NOR2X1 U431 ( .A(n511), .B(n484), .Y(n542) );
  AOI21X1 U432 ( .A0(b[9]), .A1(a[1]), .B0(n544), .Y(n543) );
  AND2X1 U433 ( .A(n521), .B(b[8]), .Y(n544) );
  AOI21X1 U434 ( .A0(b[10]), .A1(a[1]), .B0(n546), .Y(n545) );
  AND2X1 U435 ( .A(n521), .B(b[9]), .Y(n546) );
  AOI21X1 U436 ( .A0(b[11]), .A1(a[1]), .B0(n548), .Y(n547) );
  AND2X1 U437 ( .A(n521), .B(b[10]), .Y(n548) );
  AOI21X1 U438 ( .A0(b[12]), .A1(a[1]), .B0(n550), .Y(n549) );
  AND2X1 U439 ( .A(n521), .B(b[11]), .Y(n550) );
  AOI21X1 U440 ( .A0(b[13]), .A1(a[1]), .B0(n552), .Y(n551) );
  AND2X1 U441 ( .A(n521), .B(b[12]), .Y(n552) );
  AOI21X1 U442 ( .A0(b[14]), .A1(a[1]), .B0(n554), .Y(n553) );
  AND2X1 U443 ( .A(n521), .B(b[13]), .Y(n554) );
  AOI21X1 U444 ( .A0(a[1]), .A1(b[15]), .B0(n556), .Y(n555) );
  AND2X1 U445 ( .A(n521), .B(b[14]), .Y(n556) );
  OAI21XL U446 ( .A0(n473), .A1(n511), .B0(n559), .Y(n558) );
  NAND2X1 U447 ( .A(a[1]), .B(b[17]), .Y(n559) );
  OAI21XL U448 ( .A0(n521), .A1(a[1]), .B0(b[17]), .Y(n520) );
  XOR2X1 U449 ( .A(n512), .B(n513), .Y(product[25]) );
  XNOR2X1 U450 ( .A(n514), .B(n58), .Y(n513) );
  OAI21XL U451 ( .A0(n515), .A1(n471), .B0(n516), .Y(n514) );
  OAI31XL U452 ( .A0(n517), .A1(n518), .A2(n502), .B0(b[17]), .Y(n516) );
  XOR2X1 U453 ( .A(n498), .B(n32), .Y(n512) );
  XOR2X1 U454 ( .A(n519), .B(n75), .Y(n72) );
  NOR2BX1 U455 ( .AN(n519), .B(n75), .Y(n69) );
  XOR2X1 U456 ( .A(n498), .B(n522), .Y(n59) );
  AOI221XL U457 ( .A0(n518), .A1(b[17]), .B0(n502), .B1(b[16]), .C0(n523), .Y(
        n522) );
  AO22X1 U458 ( .A0(n517), .A1(b[15]), .B0(n500), .B1(n154), .Y(n523) );
  XNOR2X1 U459 ( .A(n524), .B(n25), .Y(n58) );
  OAI221XL U460 ( .A0(n499), .A1(n473), .B0(n515), .B1(n472), .C0(n525), .Y(
        n524) );
  OAI21XL U461 ( .A0(n518), .A1(n502), .B0(b[17]), .Y(n525) );
  XOR2X1 U462 ( .A(n510), .B(n526), .Y(n228) );
  XOR2X1 U463 ( .A(n510), .B(n527), .Y(n227) );
  XOR2X1 U464 ( .A(n510), .B(n529), .Y(n226) );
  XOR2X1 U465 ( .A(n510), .B(n531), .Y(n225) );
  XOR2X1 U466 ( .A(n510), .B(n533), .Y(n224) );
  XOR2X1 U467 ( .A(n510), .B(n535), .Y(n223) );
  XOR2X1 U468 ( .A(n510), .B(n537), .Y(n222) );
  XOR2X1 U469 ( .A(n510), .B(n539), .Y(n221) );
  XOR2X1 U470 ( .A(n510), .B(n541), .Y(n220) );
  XOR2X1 U471 ( .A(n510), .B(n543), .Y(n219) );
  XOR2X1 U472 ( .A(n510), .B(n545), .Y(n218) );
  XOR2X1 U473 ( .A(n510), .B(n547), .Y(n217) );
  XOR2X1 U474 ( .A(n510), .B(n549), .Y(n216) );
  XOR2X1 U475 ( .A(n510), .B(n551), .Y(n215) );
  XOR2X1 U476 ( .A(n510), .B(n553), .Y(n214) );
  XOR2X1 U477 ( .A(n510), .B(n555), .Y(n213) );
  OAI22XL U478 ( .A0(n474), .A1(n511), .B0(n473), .B1(n468), .Y(n557) );
  XOR2X1 U479 ( .A(n558), .B(n229), .Y(n211) );
  XOR2X1 U480 ( .A(n560), .B(n15), .Y(n209) );
  OAI22XL U481 ( .A0(n497), .A1(n507), .B0(n497), .B1(n561), .Y(n560) );
  XOR2X1 U482 ( .A(n504), .B(n562), .Y(n208) );
  AOI222XL U483 ( .A0(n505), .A1(n170), .B0(n563), .B1(b[1]), .C0(n564), .C1(
        b[0]), .Y(n562) );
  XOR2X1 U484 ( .A(n504), .B(n565), .Y(n207) );
  AOI221XL U485 ( .A0(n506), .A1(b[0]), .B0(n505), .B1(n169), .C0(n566), .Y(
        n565) );
  OAI22XL U486 ( .A0(n496), .A1(n508), .B0(n494), .B1(n507), .Y(n566) );
  XOR2X1 U487 ( .A(n504), .B(n567), .Y(n206) );
  AOI221XL U488 ( .A0(n506), .A1(b[1]), .B0(n505), .B1(n168), .C0(n568), .Y(
        n567) );
  OAI22XL U489 ( .A0(n494), .A1(n508), .B0(n492), .B1(n507), .Y(n568) );
  XOR2X1 U490 ( .A(n504), .B(n569), .Y(n205) );
  AOI221XL U491 ( .A0(n506), .A1(b[2]), .B0(n505), .B1(n167), .C0(n570), .Y(
        n569) );
  OAI22XL U492 ( .A0(n492), .A1(n508), .B0(n490), .B1(n507), .Y(n570) );
  XOR2X1 U493 ( .A(n504), .B(n571), .Y(n204) );
  AOI221XL U494 ( .A0(n506), .A1(b[3]), .B0(n505), .B1(n166), .C0(n572), .Y(
        n571) );
  OAI22XL U495 ( .A0(n490), .A1(n508), .B0(n488), .B1(n507), .Y(n572) );
  XOR2X1 U496 ( .A(n504), .B(n573), .Y(n203) );
  AOI221XL U497 ( .A0(n506), .A1(b[4]), .B0(n505), .B1(n165), .C0(n574), .Y(
        n573) );
  OAI22XL U498 ( .A0(n488), .A1(n508), .B0(n486), .B1(n507), .Y(n574) );
  XOR2X1 U499 ( .A(n504), .B(n575), .Y(n202) );
  AOI221XL U500 ( .A0(n506), .A1(b[5]), .B0(n505), .B1(n164), .C0(n576), .Y(
        n575) );
  OAI22XL U501 ( .A0(n486), .A1(n508), .B0(n484), .B1(n507), .Y(n576) );
  XOR2X1 U502 ( .A(n504), .B(n577), .Y(n201) );
  AOI221XL U503 ( .A0(n506), .A1(b[6]), .B0(n505), .B1(n163), .C0(n578), .Y(
        n577) );
  OAI22XL U504 ( .A0(n484), .A1(n508), .B0(n482), .B1(n507), .Y(n578) );
  XOR2X1 U505 ( .A(n504), .B(n579), .Y(n200) );
  AOI221XL U506 ( .A0(n506), .A1(b[7]), .B0(n505), .B1(n162), .C0(n580), .Y(
        n579) );
  OAI22XL U507 ( .A0(n482), .A1(n508), .B0(n480), .B1(n507), .Y(n580) );
  XOR2X1 U508 ( .A(n504), .B(n581), .Y(n199) );
  AOI221XL U509 ( .A0(n506), .A1(b[8]), .B0(n505), .B1(n161), .C0(n582), .Y(
        n581) );
  OAI22XL U510 ( .A0(n480), .A1(n508), .B0(n479), .B1(n507), .Y(n582) );
  XOR2X1 U511 ( .A(n504), .B(n583), .Y(n198) );
  AOI221XL U512 ( .A0(n506), .A1(b[9]), .B0(n505), .B1(n160), .C0(n584), .Y(
        n583) );
  OAI22XL U513 ( .A0(n479), .A1(n508), .B0(n478), .B1(n507), .Y(n584) );
  XOR2X1 U514 ( .A(n504), .B(n585), .Y(n197) );
  AOI221XL U515 ( .A0(n506), .A1(b[10]), .B0(n505), .B1(n159), .C0(n586), .Y(
        n585) );
  OAI22XL U516 ( .A0(n478), .A1(n508), .B0(n477), .B1(n507), .Y(n586) );
  XOR2X1 U517 ( .A(n504), .B(n587), .Y(n196) );
  AOI221XL U518 ( .A0(n506), .A1(b[11]), .B0(n505), .B1(n158), .C0(n588), .Y(
        n587) );
  OAI22XL U519 ( .A0(n477), .A1(n508), .B0(n476), .B1(n507), .Y(n588) );
  XOR2X1 U520 ( .A(n504), .B(n589), .Y(n195) );
  AOI221XL U521 ( .A0(n506), .A1(b[12]), .B0(n505), .B1(n157), .C0(n590), .Y(
        n589) );
  OAI22XL U522 ( .A0(n476), .A1(n508), .B0(n475), .B1(n507), .Y(n590) );
  XOR2X1 U523 ( .A(n504), .B(n591), .Y(n194) );
  AOI221XL U524 ( .A0(n506), .A1(b[13]), .B0(n505), .B1(n156), .C0(n592), .Y(
        n591) );
  OAI22XL U525 ( .A0(n475), .A1(n508), .B0(n474), .B1(n507), .Y(n592) );
  XOR2X1 U526 ( .A(n504), .B(n593), .Y(n193) );
  AOI221XL U527 ( .A0(n506), .A1(b[14]), .B0(n505), .B1(n155), .C0(n594), .Y(
        n593) );
  OAI22XL U528 ( .A0(n474), .A1(n508), .B0(n473), .B1(n507), .Y(n594) );
  XOR2X1 U529 ( .A(n504), .B(n595), .Y(n192) );
  AOI221XL U530 ( .A0(n563), .A1(b[17]), .B0(n505), .B1(n154), .C0(n596), .Y(
        n595) );
  OAI22XL U531 ( .A0(n474), .A1(n597), .B0(n473), .B1(n508), .Y(n596) );
  XOR2X1 U532 ( .A(n598), .B(n15), .Y(n191) );
  OAI221XL U533 ( .A0(n473), .A1(n597), .B0(n472), .B1(n561), .C0(n599), .Y(
        n598) );
  OAI21XL U534 ( .A0(n563), .A1(n564), .B0(b[17]), .Y(n599) );
  XOR2X1 U535 ( .A(n504), .B(n600), .Y(n190) );
  OAI21XL U536 ( .A0(n471), .A1(n561), .B0(n601), .Y(n600) );
  OAI31XL U537 ( .A0(n506), .A1(n563), .A2(n564), .B0(b[17]), .Y(n601) );
  NOR2X1 U538 ( .A(n602), .B(n603), .Y(n564) );
  NOR2X1 U539 ( .A(n604), .B(n509), .Y(n563) );
  NAND3X1 U540 ( .A(n509), .B(n604), .C(n603), .Y(n597) );
  XNOR2X1 U541 ( .A(a[3]), .B(a[4]), .Y(n603) );
  NAND2X1 U542 ( .A(n602), .B(n604), .Y(n561) );
  XOR2X1 U543 ( .A(a[4]), .B(n15), .Y(n604) );
  XOR2X1 U544 ( .A(a[3]), .B(n229), .Y(n602) );
  XOR2X1 U545 ( .A(n605), .B(n25), .Y(n189) );
  OAI22XL U546 ( .A0(n501), .A1(n497), .B0(n515), .B1(n497), .Y(n605) );
  XOR2X1 U547 ( .A(n498), .B(n606), .Y(n188) );
  AOI222XL U548 ( .A0(n170), .A1(n500), .B0(b[1]), .B1(n518), .C0(b[0]), .C1(
        n502), .Y(n606) );
  XOR2X1 U549 ( .A(n498), .B(n608), .Y(n187) );
  AOI221XL U550 ( .A0(b[0]), .A1(n517), .B0(b[2]), .B1(n518), .C0(n609), .Y(
        n608) );
  OAI22XL U551 ( .A0(n515), .A1(n495), .B0(n607), .B1(n496), .Y(n609) );
  XOR2X1 U552 ( .A(n498), .B(n610), .Y(n186) );
  AOI221XL U553 ( .A0(b[1]), .A1(n517), .B0(b[3]), .B1(n518), .C0(n611), .Y(
        n610) );
  OAI22XL U554 ( .A0(n515), .A1(n493), .B0(n607), .B1(n494), .Y(n611) );
  XOR2X1 U555 ( .A(n498), .B(n612), .Y(n185) );
  AOI221XL U556 ( .A0(b[2]), .A1(n517), .B0(b[4]), .B1(n518), .C0(n613), .Y(
        n612) );
  OAI22XL U557 ( .A0(n515), .A1(n491), .B0(n607), .B1(n492), .Y(n613) );
  XOR2X1 U558 ( .A(n498), .B(n614), .Y(n184) );
  AOI221XL U559 ( .A0(b[3]), .A1(n517), .B0(b[5]), .B1(n518), .C0(n615), .Y(
        n614) );
  OAI22XL U560 ( .A0(n515), .A1(n489), .B0(n607), .B1(n490), .Y(n615) );
  XOR2X1 U561 ( .A(n498), .B(n616), .Y(n183) );
  AOI221XL U562 ( .A0(b[4]), .A1(n517), .B0(b[6]), .B1(n518), .C0(n617), .Y(
        n616) );
  OAI22XL U563 ( .A0(n515), .A1(n487), .B0(n607), .B1(n488), .Y(n617) );
  XOR2X1 U564 ( .A(n498), .B(n618), .Y(n182) );
  AOI221XL U565 ( .A0(b[5]), .A1(n517), .B0(b[7]), .B1(n518), .C0(n619), .Y(
        n618) );
  OAI22XL U566 ( .A0(n515), .A1(n485), .B0(n607), .B1(n486), .Y(n619) );
  XOR2X1 U567 ( .A(n498), .B(n620), .Y(n181) );
  AOI221XL U568 ( .A0(b[6]), .A1(n517), .B0(b[8]), .B1(n518), .C0(n621), .Y(
        n620) );
  OAI22XL U569 ( .A0(n515), .A1(n483), .B0(n607), .B1(n484), .Y(n621) );
  XOR2X1 U570 ( .A(n498), .B(n622), .Y(n180) );
  AOI221XL U571 ( .A0(b[9]), .A1(n518), .B0(b[7]), .B1(n517), .C0(n623), .Y(
        n622) );
  OAI22XL U572 ( .A0(n515), .A1(n481), .B0(n607), .B1(n482), .Y(n623) );
  XOR2X1 U573 ( .A(n498), .B(n624), .Y(n179) );
  AOI221XL U574 ( .A0(b[8]), .A1(n517), .B0(n161), .B1(n500), .C0(n625), .Y(
        n624) );
  OAI22XL U575 ( .A0(n607), .A1(n480), .B0(n501), .B1(n479), .Y(n625) );
  XOR2X1 U576 ( .A(n498), .B(n626), .Y(n178) );
  AOI221XL U577 ( .A0(b[9]), .A1(n517), .B0(n160), .B1(n500), .C0(n627), .Y(
        n626) );
  OAI22XL U578 ( .A0(n607), .A1(n479), .B0(n501), .B1(n478), .Y(n627) );
  XOR2X1 U579 ( .A(n498), .B(n628), .Y(n177) );
  AOI221XL U580 ( .A0(b[10]), .A1(n517), .B0(n159), .B1(n500), .C0(n629), .Y(
        n628) );
  OAI22XL U581 ( .A0(n607), .A1(n478), .B0(n501), .B1(n477), .Y(n629) );
  XOR2X1 U582 ( .A(n498), .B(n630), .Y(n176) );
  AOI221XL U583 ( .A0(b[11]), .A1(n517), .B0(n158), .B1(n500), .C0(n631), .Y(
        n630) );
  OAI22XL U584 ( .A0(n607), .A1(n477), .B0(n501), .B1(n476), .Y(n631) );
  XOR2X1 U585 ( .A(n498), .B(n632), .Y(n175) );
  AOI221XL U586 ( .A0(b[12]), .A1(n517), .B0(n157), .B1(n500), .C0(n633), .Y(
        n632) );
  OAI22XL U587 ( .A0(n607), .A1(n476), .B0(n501), .B1(n475), .Y(n633) );
  XOR2X1 U588 ( .A(n498), .B(n634), .Y(n174) );
  AOI221XL U589 ( .A0(b[13]), .A1(n517), .B0(n156), .B1(n500), .C0(n635), .Y(
        n634) );
  OAI22XL U590 ( .A0(n607), .A1(n475), .B0(n501), .B1(n474), .Y(n635) );
  XOR2X1 U591 ( .A(n498), .B(n636), .Y(n173) );
  AOI221XL U592 ( .A0(b[14]), .A1(n517), .B0(n155), .B1(n500), .C0(n637), .Y(
        n636) );
  OAI22XL U593 ( .A0(n607), .A1(n474), .B0(n473), .B1(n501), .Y(n637) );
  XOR2X1 U594 ( .A(a[6]), .B(n15), .Y(n640) );
  XOR2X1 U595 ( .A(a[6]), .B(a[7]), .Y(n639) );
  XOR2X1 U596 ( .A(a[7]), .B(n25), .Y(n638) );
endmodule


module RFILE_DW01_sub_13 ( A, B, CI, DIFF, CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [26:0] carry;

  ADDFXL U2_2 ( .A(A[2]), .B(n25), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n24), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_9 ( .A(A[9]), .B(n18), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n19), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n20), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n21), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n23), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n22), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_14 ( .A(A[14]), .B(n13), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n14), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n15), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n16), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n17), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n9), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n11), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n12), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  XOR3X1 U2_25 ( .A(A[25]), .B(n2), .C(carry[25]), .Y(DIFF[25]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n10), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n8), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n5), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n6), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_24 ( .A(A[24]), .B(n3), .CI(carry[24]), .CO(carry[25]), .S(
        DIFF[24]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n4), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n7), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  CLKINVX1 U1 ( .A(B[20]), .Y(n7) );
  CLKINVX1 U2 ( .A(B[23]), .Y(n4) );
  CLKINVX1 U3 ( .A(B[24]), .Y(n3) );
  CLKINVX1 U4 ( .A(B[21]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[22]), .Y(n5) );
  CLKINVX1 U6 ( .A(B[19]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[17]), .Y(n10) );
  CLKINVX1 U8 ( .A(B[25]), .Y(n2) );
  CLKINVX1 U9 ( .A(B[15]), .Y(n12) );
  CLKINVX1 U10 ( .A(B[16]), .Y(n11) );
  CLKINVX1 U11 ( .A(B[18]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[10]), .Y(n17) );
  CLKINVX1 U13 ( .A(B[11]), .Y(n16) );
  CLKINVX1 U14 ( .A(B[12]), .Y(n15) );
  CLKINVX1 U15 ( .A(B[13]), .Y(n14) );
  CLKINVX1 U16 ( .A(B[14]), .Y(n13) );
  CLKINVX1 U17 ( .A(B[5]), .Y(n22) );
  CLKINVX1 U18 ( .A(B[4]), .Y(n23) );
  CLKINVX1 U19 ( .A(B[6]), .Y(n21) );
  CLKINVX1 U20 ( .A(B[7]), .Y(n20) );
  CLKINVX1 U21 ( .A(B[8]), .Y(n19) );
  CLKINVX1 U22 ( .A(B[9]), .Y(n18) );
  CLKINVX1 U23 ( .A(B[3]), .Y(n24) );
  CLKINVX1 U24 ( .A(B[1]), .Y(n26) );
  NAND2X1 U25 ( .A(B[1]), .B(n1), .Y(carry[2]) );
  CLKINVX1 U26 ( .A(B[2]), .Y(n25) );
  CLKINVX1 U27 ( .A(A[1]), .Y(n1) );
  XNOR2X1 U28 ( .A(n26), .B(A[1]), .Y(DIFF[1]) );
endmodule


module RFILE_DW_mult_tc_3 ( a, b, product );
  input [17:0] a;
  input [8:0] b;
  output [26:0] product;
  wire   n15, n25, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n58, n59,
         n61, n62, n63, n64, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640;
  assign n15 = b[5];
  assign n25 = b[8];
  assign n229 = b[2];

  ADDFXL U33 ( .A(n58), .B(n59), .CI(n33), .CO(n32), .S(product[24]) );
  ADDFXL U34 ( .A(n470), .B(n61), .CI(n34), .CO(n33), .S(product[23]) );
  ADDFXL U35 ( .A(n63), .B(n62), .CI(n35), .CO(n34), .S(product[22]) );
  ADDFXL U36 ( .A(n67), .B(n64), .CI(n36), .CO(n35), .S(product[21]) );
  ADDFXL U37 ( .A(n68), .B(n70), .CI(n37), .CO(n36), .S(product[20]) );
  ADDFXL U38 ( .A(n71), .B(n73), .CI(n38), .CO(n37), .S(product[19]) );
  ADDFXL U39 ( .A(n211), .B(n74), .CI(n39), .CO(n38), .S(product[18]) );
  ADDFXL U40 ( .A(n212), .B(n78), .CI(n40), .CO(n39), .S(product[17]) );
  ADDFXL U41 ( .A(n213), .B(n82), .CI(n41), .CO(n40), .S(product[16]) );
  ADDFXL U42 ( .A(n214), .B(n86), .CI(n42), .CO(n41), .S(product[15]) );
  ADDFXL U43 ( .A(n215), .B(n90), .CI(n43), .CO(n42), .S(product[14]) );
  ADDFXL U44 ( .A(n216), .B(n94), .CI(n44), .CO(n43), .S(product[13]) );
  ADDFXL U45 ( .A(n217), .B(n98), .CI(n45), .CO(n44), .S(product[12]) );
  ADDFXL U46 ( .A(n218), .B(n102), .CI(n46), .CO(n45), .S(product[11]) );
  ADDFXL U47 ( .A(n219), .B(n106), .CI(n47), .CO(n46), .S(product[10]) );
  ADDFXL U48 ( .A(n220), .B(n110), .CI(n48), .CO(n47), .S(product[9]) );
  ADDFXL U49 ( .A(n221), .B(n114), .CI(n49), .CO(n48), .S(product[8]) );
  ADDFXL U50 ( .A(n222), .B(n118), .CI(n50), .CO(n49), .S(product[7]) );
  ADDFXL U51 ( .A(n223), .B(n122), .CI(n51), .CO(n50), .S(product[6]) );
  ADDFXL U52 ( .A(n224), .B(n126), .CI(n52), .CO(n51), .S(product[5]) );
  ADDFXL U53 ( .A(n225), .B(n128), .CI(n53), .CO(n52), .S(product[4]) );
  ADDFXL U54 ( .A(n54), .B(n130), .CI(n226), .CO(n53), .S(product[3]) );
  ADDHXL U55 ( .A(n227), .B(n55), .CO(n54), .S(product[2]) );
  ADDHXL U56 ( .A(n228), .B(n229), .CO(n55), .S(product[1]) );
  ADDFXL U60 ( .A(n469), .B(n190), .CI(n173), .CO(n61), .S(n62) );
  ADDFXL U61 ( .A(n174), .B(n69), .CI(n191), .CO(n63), .S(n64) );
  ADDFXL U63 ( .A(n175), .B(n69), .CI(n192), .CO(n67), .S(n68) );
  ADDFXL U65 ( .A(n72), .B(n176), .CI(n193), .CO(n70), .S(n71) );
  ADDFXL U68 ( .A(n194), .B(n76), .CI(n77), .CO(n73), .S(n74) );
  ADDHXL U69 ( .A(n79), .B(n177), .CO(n75), .S(n76) );
  ADDFXL U70 ( .A(n195), .B(n80), .CI(n81), .CO(n77), .S(n78) );
  ADDHXL U71 ( .A(n83), .B(n178), .CO(n79), .S(n80) );
  ADDFXL U72 ( .A(n196), .B(n84), .CI(n85), .CO(n81), .S(n82) );
  ADDHXL U73 ( .A(n87), .B(n179), .CO(n83), .S(n84) );
  ADDFXL U74 ( .A(n197), .B(n88), .CI(n89), .CO(n85), .S(n86) );
  ADDHXL U75 ( .A(n91), .B(n180), .CO(n87), .S(n88) );
  ADDFXL U76 ( .A(n198), .B(n92), .CI(n93), .CO(n89), .S(n90) );
  ADDHXL U77 ( .A(n95), .B(n181), .CO(n91), .S(n92) );
  ADDFXL U78 ( .A(n199), .B(n96), .CI(n97), .CO(n93), .S(n94) );
  ADDHXL U79 ( .A(n99), .B(n182), .CO(n95), .S(n96) );
  ADDFXL U80 ( .A(n200), .B(n100), .CI(n101), .CO(n97), .S(n98) );
  ADDHXL U81 ( .A(n103), .B(n183), .CO(n99), .S(n100) );
  ADDFXL U82 ( .A(n201), .B(n104), .CI(n105), .CO(n101), .S(n102) );
  ADDHXL U83 ( .A(n107), .B(n184), .CO(n103), .S(n104) );
  ADDFXL U84 ( .A(n202), .B(n108), .CI(n109), .CO(n105), .S(n106) );
  ADDHXL U85 ( .A(n111), .B(n185), .CO(n107), .S(n108) );
  ADDFXL U86 ( .A(n203), .B(n112), .CI(n113), .CO(n109), .S(n110) );
  ADDHXL U87 ( .A(n115), .B(n186), .CO(n111), .S(n112) );
  ADDFXL U88 ( .A(n204), .B(n116), .CI(n117), .CO(n113), .S(n114) );
  ADDHXL U89 ( .A(n187), .B(n119), .CO(n115), .S(n116) );
  ADDFXL U90 ( .A(n205), .B(n120), .CI(n121), .CO(n117), .S(n118) );
  ADDHXL U91 ( .A(n188), .B(n123), .CO(n119), .S(n120) );
  ADDFXL U92 ( .A(n125), .B(n124), .CI(n206), .CO(n121), .S(n122) );
  ADDHXL U93 ( .A(n25), .B(n189), .CO(n123), .S(n124) );
  ADDHXL U94 ( .A(n207), .B(n127), .CO(n125), .S(n126) );
  ADDHXL U95 ( .A(n208), .B(n129), .CO(n127), .S(n128) );
  ADDHXL U96 ( .A(n15), .B(n209), .CO(n129), .S(n130) );
  ADDFXL U344 ( .A(a[16]), .B(a[17]), .CI(n137), .CO(n153), .S(n154) );
  ADDFXL U345 ( .A(a[15]), .B(a[16]), .CI(n138), .CO(n137), .S(n155) );
  ADDFXL U346 ( .A(a[14]), .B(a[15]), .CI(n139), .CO(n138), .S(n156) );
  ADDFXL U347 ( .A(a[13]), .B(a[14]), .CI(n140), .CO(n139), .S(n157) );
  ADDFXL U348 ( .A(a[12]), .B(a[13]), .CI(n141), .CO(n140), .S(n158) );
  ADDFXL U349 ( .A(a[11]), .B(a[12]), .CI(n142), .CO(n141), .S(n159) );
  ADDFXL U350 ( .A(a[10]), .B(a[11]), .CI(n143), .CO(n142), .S(n160) );
  ADDFXL U351 ( .A(a[9]), .B(a[10]), .CI(n144), .CO(n143), .S(n161) );
  ADDFXL U352 ( .A(a[8]), .B(a[9]), .CI(n145), .CO(n144), .S(n162) );
  ADDFXL U353 ( .A(a[7]), .B(a[8]), .CI(n146), .CO(n145), .S(n163) );
  ADDFXL U354 ( .A(a[6]), .B(a[7]), .CI(n147), .CO(n146), .S(n164) );
  ADDFXL U355 ( .A(a[5]), .B(a[6]), .CI(n148), .CO(n147), .S(n165) );
  ADDFXL U356 ( .A(a[4]), .B(a[5]), .CI(n149), .CO(n148), .S(n166) );
  ADDFXL U357 ( .A(a[3]), .B(a[4]), .CI(n150), .CO(n149), .S(n167) );
  ADDFXL U358 ( .A(a[2]), .B(a[3]), .CI(n151), .CO(n150), .S(n168) );
  ADDFXL U359 ( .A(a[1]), .B(a[2]), .CI(n152), .CO(n151), .S(n169) );
  ADDHXL U360 ( .A(a[1]), .B(a[0]), .CO(n152), .S(n170) );
  CLKINVX1 U363 ( .A(b[1]), .Y(n468) );
  CLKINVX1 U364 ( .A(n563), .Y(n507) );
  CLKINVX1 U365 ( .A(n564), .Y(n508) );
  CLKINVX1 U366 ( .A(n561), .Y(n505) );
  CLKINVX1 U367 ( .A(n597), .Y(n506) );
  CLKINVX1 U368 ( .A(n518), .Y(n501) );
  CLKINVX1 U369 ( .A(n607), .Y(n502) );
  CLKINVX1 U370 ( .A(n515), .Y(n500) );
  NAND2X1 U371 ( .A(n640), .B(n638), .Y(n515) );
  NOR2X1 U372 ( .A(n638), .B(n503), .Y(n518) );
  XNOR2X1 U373 ( .A(n510), .B(n557), .Y(n212) );
  CLKINVX1 U374 ( .A(n59), .Y(n470) );
  NAND2X1 U375 ( .A(n503), .B(n639), .Y(n607) );
  CLKINVX1 U376 ( .A(n640), .Y(n503) );
  CLKINVX1 U377 ( .A(n602), .Y(n509) );
  CLKINVX1 U378 ( .A(n521), .Y(n511) );
  NOR3BX1 U379 ( .AN(n638), .B(n639), .C(n640), .Y(n517) );
  CLKINVX1 U380 ( .A(n169), .Y(n495) );
  CLKINVX1 U381 ( .A(n168), .Y(n493) );
  CLKINVX1 U382 ( .A(n167), .Y(n491) );
  CLKINVX1 U383 ( .A(n166), .Y(n489) );
  CLKINVX1 U384 ( .A(n165), .Y(n487) );
  CLKINVX1 U385 ( .A(n164), .Y(n485) );
  CLKINVX1 U386 ( .A(n163), .Y(n483) );
  CLKINVX1 U387 ( .A(n162), .Y(n481) );
  CLKINVX1 U388 ( .A(n153), .Y(n472) );
  CLKINVX1 U389 ( .A(n69), .Y(n469) );
  NOR2X1 U390 ( .A(n467), .B(b[1]), .Y(n521) );
  XNOR2X1 U391 ( .A(b[1]), .B(n229), .Y(n467) );
  CLKINVX1 U392 ( .A(n15), .Y(n504) );
  CLKINVX1 U393 ( .A(n229), .Y(n510) );
  CLKINVX1 U394 ( .A(a[0]), .Y(n497) );
  CLKINVX1 U395 ( .A(a[2]), .Y(n494) );
  CLKINVX1 U396 ( .A(a[1]), .Y(n496) );
  CLKINVX1 U397 ( .A(n517), .Y(n499) );
  CLKINVX1 U398 ( .A(n25), .Y(n498) );
  CLKINVX1 U399 ( .A(a[3]), .Y(n492) );
  CLKINVX1 U400 ( .A(a[4]), .Y(n490) );
  CLKINVX1 U401 ( .A(a[5]), .Y(n488) );
  CLKINVX1 U402 ( .A(a[6]), .Y(n486) );
  CLKINVX1 U403 ( .A(a[7]), .Y(n484) );
  CLKINVX1 U404 ( .A(a[8]), .Y(n482) );
  CLKINVX1 U405 ( .A(a[10]), .Y(n479) );
  CLKINVX1 U406 ( .A(a[11]), .Y(n478) );
  CLKINVX1 U407 ( .A(a[9]), .Y(n480) );
  XNOR2X1 U408 ( .A(n520), .B(n229), .Y(n519) );
  CLKINVX1 U409 ( .A(a[13]), .Y(n476) );
  CLKINVX1 U410 ( .A(a[12]), .Y(n477) );
  CLKINVX1 U411 ( .A(a[14]), .Y(n475) );
  CLKINVX1 U412 ( .A(a[16]), .Y(n473) );
  CLKINVX1 U413 ( .A(a[15]), .Y(n474) );
  CLKINVX1 U414 ( .A(a[17]), .Y(n471) );
  AOI21X1 U415 ( .A0(a[2]), .A1(b[1]), .B0(n530), .Y(n529) );
  NOR2X1 U416 ( .A(n496), .B(n511), .Y(n530) );
  NAND2X1 U417 ( .A(b[1]), .B(a[0]), .Y(n526) );
  AOI21X1 U418 ( .A0(b[1]), .A1(a[1]), .B0(n528), .Y(n527) );
  NOR2X1 U419 ( .A(n497), .B(n511), .Y(n528) );
  AOI21X1 U420 ( .A0(a[3]), .A1(b[1]), .B0(n532), .Y(n531) );
  NOR2X1 U421 ( .A(n494), .B(n511), .Y(n532) );
  AOI21X1 U422 ( .A0(a[4]), .A1(b[1]), .B0(n534), .Y(n533) );
  NOR2X1 U423 ( .A(n511), .B(n492), .Y(n534) );
  AOI21X1 U424 ( .A0(a[5]), .A1(b[1]), .B0(n536), .Y(n535) );
  NOR2X1 U425 ( .A(n511), .B(n490), .Y(n536) );
  AOI21X1 U426 ( .A0(a[6]), .A1(b[1]), .B0(n538), .Y(n537) );
  NOR2X1 U427 ( .A(n511), .B(n488), .Y(n538) );
  AOI21X1 U428 ( .A0(a[7]), .A1(b[1]), .B0(n540), .Y(n539) );
  NOR2X1 U429 ( .A(n511), .B(n486), .Y(n540) );
  AOI21X1 U430 ( .A0(a[8]), .A1(b[1]), .B0(n542), .Y(n541) );
  NOR2X1 U431 ( .A(n511), .B(n484), .Y(n542) );
  AOI21X1 U432 ( .A0(a[9]), .A1(b[1]), .B0(n544), .Y(n543) );
  AND2X1 U433 ( .A(n521), .B(a[8]), .Y(n544) );
  AOI21X1 U434 ( .A0(a[10]), .A1(b[1]), .B0(n546), .Y(n545) );
  AND2X1 U435 ( .A(n521), .B(a[9]), .Y(n546) );
  AOI21X1 U436 ( .A0(a[11]), .A1(b[1]), .B0(n548), .Y(n547) );
  AND2X1 U437 ( .A(n521), .B(a[10]), .Y(n548) );
  AOI21X1 U438 ( .A0(a[12]), .A1(b[1]), .B0(n550), .Y(n549) );
  AND2X1 U439 ( .A(n521), .B(a[11]), .Y(n550) );
  AOI21X1 U440 ( .A0(a[13]), .A1(b[1]), .B0(n552), .Y(n551) );
  AND2X1 U441 ( .A(n521), .B(a[12]), .Y(n552) );
  AOI21X1 U442 ( .A0(a[14]), .A1(b[1]), .B0(n554), .Y(n553) );
  AND2X1 U443 ( .A(n521), .B(a[13]), .Y(n554) );
  AOI21X1 U444 ( .A0(b[1]), .A1(a[15]), .B0(n556), .Y(n555) );
  AND2X1 U445 ( .A(n521), .B(a[14]), .Y(n556) );
  OAI21XL U446 ( .A0(n473), .A1(n511), .B0(n559), .Y(n558) );
  NAND2X1 U447 ( .A(b[1]), .B(a[17]), .Y(n559) );
  OAI21XL U448 ( .A0(n521), .A1(b[1]), .B0(a[17]), .Y(n520) );
  XOR2X1 U449 ( .A(n512), .B(n513), .Y(product[25]) );
  XNOR2X1 U450 ( .A(n514), .B(n58), .Y(n513) );
  OAI21XL U451 ( .A0(n515), .A1(n471), .B0(n516), .Y(n514) );
  OAI31XL U452 ( .A0(n517), .A1(n518), .A2(n502), .B0(a[17]), .Y(n516) );
  XOR2X1 U453 ( .A(n498), .B(n32), .Y(n512) );
  XOR2X1 U454 ( .A(n519), .B(n75), .Y(n72) );
  NOR2BX1 U455 ( .AN(n519), .B(n75), .Y(n69) );
  XOR2X1 U456 ( .A(n498), .B(n522), .Y(n59) );
  AOI221XL U457 ( .A0(n518), .A1(a[17]), .B0(n502), .B1(a[16]), .C0(n523), .Y(
        n522) );
  AO22X1 U458 ( .A0(n517), .A1(a[15]), .B0(n500), .B1(n154), .Y(n523) );
  XNOR2X1 U459 ( .A(n524), .B(n25), .Y(n58) );
  OAI221XL U460 ( .A0(n499), .A1(n473), .B0(n515), .B1(n472), .C0(n525), .Y(
        n524) );
  OAI21XL U461 ( .A0(n518), .A1(n502), .B0(a[17]), .Y(n525) );
  XOR2X1 U462 ( .A(n510), .B(n526), .Y(n228) );
  XOR2X1 U463 ( .A(n510), .B(n527), .Y(n227) );
  XOR2X1 U464 ( .A(n510), .B(n529), .Y(n226) );
  XOR2X1 U465 ( .A(n510), .B(n531), .Y(n225) );
  XOR2X1 U466 ( .A(n510), .B(n533), .Y(n224) );
  XOR2X1 U467 ( .A(n510), .B(n535), .Y(n223) );
  XOR2X1 U468 ( .A(n510), .B(n537), .Y(n222) );
  XOR2X1 U469 ( .A(n510), .B(n539), .Y(n221) );
  XOR2X1 U470 ( .A(n510), .B(n541), .Y(n220) );
  XOR2X1 U471 ( .A(n510), .B(n543), .Y(n219) );
  XOR2X1 U472 ( .A(n510), .B(n545), .Y(n218) );
  XOR2X1 U473 ( .A(n510), .B(n547), .Y(n217) );
  XOR2X1 U474 ( .A(n510), .B(n549), .Y(n216) );
  XOR2X1 U475 ( .A(n510), .B(n551), .Y(n215) );
  XOR2X1 U476 ( .A(n510), .B(n553), .Y(n214) );
  XOR2X1 U477 ( .A(n510), .B(n555), .Y(n213) );
  OAI22XL U478 ( .A0(n474), .A1(n511), .B0(n473), .B1(n468), .Y(n557) );
  XOR2X1 U479 ( .A(n558), .B(n229), .Y(n211) );
  XOR2X1 U480 ( .A(n560), .B(n15), .Y(n209) );
  OAI22XL U481 ( .A0(n497), .A1(n507), .B0(n497), .B1(n561), .Y(n560) );
  XOR2X1 U482 ( .A(n504), .B(n562), .Y(n208) );
  AOI222XL U483 ( .A0(n505), .A1(n170), .B0(n563), .B1(a[1]), .C0(n564), .C1(
        a[0]), .Y(n562) );
  XOR2X1 U484 ( .A(n504), .B(n565), .Y(n207) );
  AOI221XL U485 ( .A0(n506), .A1(a[0]), .B0(n505), .B1(n169), .C0(n566), .Y(
        n565) );
  OAI22XL U486 ( .A0(n496), .A1(n508), .B0(n494), .B1(n507), .Y(n566) );
  XOR2X1 U487 ( .A(n504), .B(n567), .Y(n206) );
  AOI221XL U488 ( .A0(n506), .A1(a[1]), .B0(n505), .B1(n168), .C0(n568), .Y(
        n567) );
  OAI22XL U489 ( .A0(n494), .A1(n508), .B0(n492), .B1(n507), .Y(n568) );
  XOR2X1 U490 ( .A(n504), .B(n569), .Y(n205) );
  AOI221XL U491 ( .A0(n506), .A1(a[2]), .B0(n505), .B1(n167), .C0(n570), .Y(
        n569) );
  OAI22XL U492 ( .A0(n492), .A1(n508), .B0(n490), .B1(n507), .Y(n570) );
  XOR2X1 U493 ( .A(n504), .B(n571), .Y(n204) );
  AOI221XL U494 ( .A0(n506), .A1(a[3]), .B0(n505), .B1(n166), .C0(n572), .Y(
        n571) );
  OAI22XL U495 ( .A0(n490), .A1(n508), .B0(n488), .B1(n507), .Y(n572) );
  XOR2X1 U496 ( .A(n504), .B(n573), .Y(n203) );
  AOI221XL U497 ( .A0(n506), .A1(a[4]), .B0(n505), .B1(n165), .C0(n574), .Y(
        n573) );
  OAI22XL U498 ( .A0(n488), .A1(n508), .B0(n486), .B1(n507), .Y(n574) );
  XOR2X1 U499 ( .A(n504), .B(n575), .Y(n202) );
  AOI221XL U500 ( .A0(n506), .A1(a[5]), .B0(n505), .B1(n164), .C0(n576), .Y(
        n575) );
  OAI22XL U501 ( .A0(n486), .A1(n508), .B0(n484), .B1(n507), .Y(n576) );
  XOR2X1 U502 ( .A(n504), .B(n577), .Y(n201) );
  AOI221XL U503 ( .A0(n506), .A1(a[6]), .B0(n505), .B1(n163), .C0(n578), .Y(
        n577) );
  OAI22XL U504 ( .A0(n484), .A1(n508), .B0(n482), .B1(n507), .Y(n578) );
  XOR2X1 U505 ( .A(n504), .B(n579), .Y(n200) );
  AOI221XL U506 ( .A0(n506), .A1(a[7]), .B0(n505), .B1(n162), .C0(n580), .Y(
        n579) );
  OAI22XL U507 ( .A0(n482), .A1(n508), .B0(n480), .B1(n507), .Y(n580) );
  XOR2X1 U508 ( .A(n504), .B(n581), .Y(n199) );
  AOI221XL U509 ( .A0(n506), .A1(a[8]), .B0(n505), .B1(n161), .C0(n582), .Y(
        n581) );
  OAI22XL U510 ( .A0(n480), .A1(n508), .B0(n479), .B1(n507), .Y(n582) );
  XOR2X1 U511 ( .A(n504), .B(n583), .Y(n198) );
  AOI221XL U512 ( .A0(n506), .A1(a[9]), .B0(n505), .B1(n160), .C0(n584), .Y(
        n583) );
  OAI22XL U513 ( .A0(n479), .A1(n508), .B0(n478), .B1(n507), .Y(n584) );
  XOR2X1 U514 ( .A(n504), .B(n585), .Y(n197) );
  AOI221XL U515 ( .A0(n506), .A1(a[10]), .B0(n505), .B1(n159), .C0(n586), .Y(
        n585) );
  OAI22XL U516 ( .A0(n478), .A1(n508), .B0(n477), .B1(n507), .Y(n586) );
  XOR2X1 U517 ( .A(n504), .B(n587), .Y(n196) );
  AOI221XL U518 ( .A0(n506), .A1(a[11]), .B0(n505), .B1(n158), .C0(n588), .Y(
        n587) );
  OAI22XL U519 ( .A0(n477), .A1(n508), .B0(n476), .B1(n507), .Y(n588) );
  XOR2X1 U520 ( .A(n504), .B(n589), .Y(n195) );
  AOI221XL U521 ( .A0(n506), .A1(a[12]), .B0(n505), .B1(n157), .C0(n590), .Y(
        n589) );
  OAI22XL U522 ( .A0(n476), .A1(n508), .B0(n475), .B1(n507), .Y(n590) );
  XOR2X1 U523 ( .A(n504), .B(n591), .Y(n194) );
  AOI221XL U524 ( .A0(n506), .A1(a[13]), .B0(n505), .B1(n156), .C0(n592), .Y(
        n591) );
  OAI22XL U525 ( .A0(n475), .A1(n508), .B0(n474), .B1(n507), .Y(n592) );
  XOR2X1 U526 ( .A(n504), .B(n593), .Y(n193) );
  AOI221XL U527 ( .A0(n506), .A1(a[14]), .B0(n505), .B1(n155), .C0(n594), .Y(
        n593) );
  OAI22XL U528 ( .A0(n474), .A1(n508), .B0(n473), .B1(n507), .Y(n594) );
  XOR2X1 U529 ( .A(n504), .B(n595), .Y(n192) );
  AOI221XL U530 ( .A0(n563), .A1(a[17]), .B0(n505), .B1(n154), .C0(n596), .Y(
        n595) );
  OAI22XL U531 ( .A0(n474), .A1(n597), .B0(n473), .B1(n508), .Y(n596) );
  XOR2X1 U532 ( .A(n598), .B(n15), .Y(n191) );
  OAI221XL U533 ( .A0(n473), .A1(n597), .B0(n472), .B1(n561), .C0(n599), .Y(
        n598) );
  OAI21XL U534 ( .A0(n563), .A1(n564), .B0(a[17]), .Y(n599) );
  XOR2X1 U535 ( .A(n504), .B(n600), .Y(n190) );
  OAI21XL U536 ( .A0(n471), .A1(n561), .B0(n601), .Y(n600) );
  OAI31XL U537 ( .A0(n506), .A1(n563), .A2(n564), .B0(a[17]), .Y(n601) );
  NOR2X1 U538 ( .A(n602), .B(n603), .Y(n564) );
  NOR2X1 U539 ( .A(n604), .B(n509), .Y(n563) );
  NAND3X1 U540 ( .A(n509), .B(n604), .C(n603), .Y(n597) );
  XNOR2X1 U541 ( .A(b[3]), .B(b[4]), .Y(n603) );
  NAND2X1 U542 ( .A(n602), .B(n604), .Y(n561) );
  XOR2X1 U543 ( .A(b[4]), .B(n15), .Y(n604) );
  XOR2X1 U544 ( .A(b[3]), .B(n229), .Y(n602) );
  XOR2X1 U545 ( .A(n605), .B(n25), .Y(n189) );
  OAI22XL U546 ( .A0(n501), .A1(n497), .B0(n515), .B1(n497), .Y(n605) );
  XOR2X1 U547 ( .A(n498), .B(n606), .Y(n188) );
  AOI222XL U548 ( .A0(n170), .A1(n500), .B0(a[1]), .B1(n518), .C0(a[0]), .C1(
        n502), .Y(n606) );
  XOR2X1 U549 ( .A(n498), .B(n608), .Y(n187) );
  AOI221XL U550 ( .A0(a[0]), .A1(n517), .B0(a[2]), .B1(n518), .C0(n609), .Y(
        n608) );
  OAI22XL U551 ( .A0(n515), .A1(n495), .B0(n607), .B1(n496), .Y(n609) );
  XOR2X1 U552 ( .A(n498), .B(n610), .Y(n186) );
  AOI221XL U553 ( .A0(a[1]), .A1(n517), .B0(a[3]), .B1(n518), .C0(n611), .Y(
        n610) );
  OAI22XL U554 ( .A0(n515), .A1(n493), .B0(n607), .B1(n494), .Y(n611) );
  XOR2X1 U555 ( .A(n498), .B(n612), .Y(n185) );
  AOI221XL U556 ( .A0(a[2]), .A1(n517), .B0(a[4]), .B1(n518), .C0(n613), .Y(
        n612) );
  OAI22XL U557 ( .A0(n515), .A1(n491), .B0(n607), .B1(n492), .Y(n613) );
  XOR2X1 U558 ( .A(n498), .B(n614), .Y(n184) );
  AOI221XL U559 ( .A0(a[3]), .A1(n517), .B0(a[5]), .B1(n518), .C0(n615), .Y(
        n614) );
  OAI22XL U560 ( .A0(n515), .A1(n489), .B0(n607), .B1(n490), .Y(n615) );
  XOR2X1 U561 ( .A(n498), .B(n616), .Y(n183) );
  AOI221XL U562 ( .A0(a[4]), .A1(n517), .B0(a[6]), .B1(n518), .C0(n617), .Y(
        n616) );
  OAI22XL U563 ( .A0(n515), .A1(n487), .B0(n607), .B1(n488), .Y(n617) );
  XOR2X1 U564 ( .A(n498), .B(n618), .Y(n182) );
  AOI221XL U565 ( .A0(a[5]), .A1(n517), .B0(a[7]), .B1(n518), .C0(n619), .Y(
        n618) );
  OAI22XL U566 ( .A0(n515), .A1(n485), .B0(n607), .B1(n486), .Y(n619) );
  XOR2X1 U567 ( .A(n498), .B(n620), .Y(n181) );
  AOI221XL U568 ( .A0(a[6]), .A1(n517), .B0(a[8]), .B1(n518), .C0(n621), .Y(
        n620) );
  OAI22XL U569 ( .A0(n515), .A1(n483), .B0(n607), .B1(n484), .Y(n621) );
  XOR2X1 U570 ( .A(n498), .B(n622), .Y(n180) );
  AOI221XL U571 ( .A0(a[9]), .A1(n518), .B0(a[7]), .B1(n517), .C0(n623), .Y(
        n622) );
  OAI22XL U572 ( .A0(n515), .A1(n481), .B0(n607), .B1(n482), .Y(n623) );
  XOR2X1 U573 ( .A(n498), .B(n624), .Y(n179) );
  AOI221XL U574 ( .A0(a[8]), .A1(n517), .B0(n161), .B1(n500), .C0(n625), .Y(
        n624) );
  OAI22XL U575 ( .A0(n607), .A1(n480), .B0(n501), .B1(n479), .Y(n625) );
  XOR2X1 U576 ( .A(n498), .B(n626), .Y(n178) );
  AOI221XL U577 ( .A0(a[9]), .A1(n517), .B0(n160), .B1(n500), .C0(n627), .Y(
        n626) );
  OAI22XL U578 ( .A0(n607), .A1(n479), .B0(n501), .B1(n478), .Y(n627) );
  XOR2X1 U579 ( .A(n498), .B(n628), .Y(n177) );
  AOI221XL U580 ( .A0(a[10]), .A1(n517), .B0(n159), .B1(n500), .C0(n629), .Y(
        n628) );
  OAI22XL U581 ( .A0(n607), .A1(n478), .B0(n501), .B1(n477), .Y(n629) );
  XOR2X1 U582 ( .A(n498), .B(n630), .Y(n176) );
  AOI221XL U583 ( .A0(a[11]), .A1(n517), .B0(n158), .B1(n500), .C0(n631), .Y(
        n630) );
  OAI22XL U584 ( .A0(n607), .A1(n477), .B0(n501), .B1(n476), .Y(n631) );
  XOR2X1 U585 ( .A(n498), .B(n632), .Y(n175) );
  AOI221XL U586 ( .A0(a[12]), .A1(n517), .B0(n157), .B1(n500), .C0(n633), .Y(
        n632) );
  OAI22XL U587 ( .A0(n607), .A1(n476), .B0(n501), .B1(n475), .Y(n633) );
  XOR2X1 U588 ( .A(n498), .B(n634), .Y(n174) );
  AOI221XL U589 ( .A0(a[13]), .A1(n517), .B0(n156), .B1(n500), .C0(n635), .Y(
        n634) );
  OAI22XL U590 ( .A0(n607), .A1(n475), .B0(n501), .B1(n474), .Y(n635) );
  XOR2X1 U591 ( .A(n498), .B(n636), .Y(n173) );
  AOI221XL U592 ( .A0(a[14]), .A1(n517), .B0(n155), .B1(n500), .C0(n637), .Y(
        n636) );
  OAI22XL U593 ( .A0(n607), .A1(n474), .B0(n473), .B1(n501), .Y(n637) );
  XOR2X1 U594 ( .A(b[6]), .B(n15), .Y(n640) );
  XOR2X1 U595 ( .A(b[6]), .B(b[7]), .Y(n639) );
  XOR2X1 U596 ( .A(b[7]), .B(n25), .Y(n638) );
endmodule


module RFILE_DW_mult_tc_2 ( a, b, product );
  input [17:0] a;
  input [8:0] b;
  output [26:0] product;
  wire   n15, n25, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n58, n59,
         n61, n62, n63, n64, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640;
  assign n15 = b[5];
  assign n25 = b[8];
  assign n229 = b[2];

  ADDFXL U33 ( .A(n58), .B(n59), .CI(n33), .CO(n32), .S(product[24]) );
  ADDFXL U34 ( .A(n470), .B(n61), .CI(n34), .CO(n33), .S(product[23]) );
  ADDFXL U35 ( .A(n63), .B(n62), .CI(n35), .CO(n34), .S(product[22]) );
  ADDFXL U36 ( .A(n67), .B(n64), .CI(n36), .CO(n35), .S(product[21]) );
  ADDFXL U37 ( .A(n68), .B(n70), .CI(n37), .CO(n36), .S(product[20]) );
  ADDFXL U38 ( .A(n71), .B(n73), .CI(n38), .CO(n37), .S(product[19]) );
  ADDFXL U39 ( .A(n211), .B(n74), .CI(n39), .CO(n38), .S(product[18]) );
  ADDFXL U40 ( .A(n212), .B(n78), .CI(n40), .CO(n39), .S(product[17]) );
  ADDFXL U41 ( .A(n213), .B(n82), .CI(n41), .CO(n40), .S(product[16]) );
  ADDFXL U42 ( .A(n214), .B(n86), .CI(n42), .CO(n41), .S(product[15]) );
  ADDFXL U43 ( .A(n215), .B(n90), .CI(n43), .CO(n42), .S(product[14]) );
  ADDFXL U44 ( .A(n216), .B(n94), .CI(n44), .CO(n43), .S(product[13]) );
  ADDFXL U45 ( .A(n217), .B(n98), .CI(n45), .CO(n44), .S(product[12]) );
  ADDFXL U46 ( .A(n218), .B(n102), .CI(n46), .CO(n45), .S(product[11]) );
  ADDFXL U47 ( .A(n219), .B(n106), .CI(n47), .CO(n46), .S(product[10]) );
  ADDFXL U48 ( .A(n220), .B(n110), .CI(n48), .CO(n47), .S(product[9]) );
  ADDFXL U49 ( .A(n221), .B(n114), .CI(n49), .CO(n48), .S(product[8]) );
  ADDFXL U50 ( .A(n222), .B(n118), .CI(n50), .CO(n49), .S(product[7]) );
  ADDFXL U51 ( .A(n223), .B(n122), .CI(n51), .CO(n50), .S(product[6]) );
  ADDFXL U52 ( .A(n224), .B(n126), .CI(n52), .CO(n51), .S(product[5]) );
  ADDFXL U53 ( .A(n225), .B(n128), .CI(n53), .CO(n52), .S(product[4]) );
  ADDFXL U54 ( .A(n54), .B(n130), .CI(n226), .CO(n53), .S(product[3]) );
  ADDHXL U55 ( .A(n227), .B(n55), .CO(n54), .S(product[2]) );
  ADDHXL U56 ( .A(n228), .B(n229), .CO(n55), .S(product[1]) );
  ADDFXL U60 ( .A(n469), .B(n190), .CI(n173), .CO(n61), .S(n62) );
  ADDFXL U61 ( .A(n174), .B(n69), .CI(n191), .CO(n63), .S(n64) );
  ADDFXL U63 ( .A(n175), .B(n69), .CI(n192), .CO(n67), .S(n68) );
  ADDFXL U65 ( .A(n72), .B(n176), .CI(n193), .CO(n70), .S(n71) );
  ADDFXL U68 ( .A(n194), .B(n76), .CI(n77), .CO(n73), .S(n74) );
  ADDHXL U69 ( .A(n79), .B(n177), .CO(n75), .S(n76) );
  ADDFXL U70 ( .A(n195), .B(n80), .CI(n81), .CO(n77), .S(n78) );
  ADDHXL U71 ( .A(n83), .B(n178), .CO(n79), .S(n80) );
  ADDFXL U72 ( .A(n196), .B(n84), .CI(n85), .CO(n81), .S(n82) );
  ADDHXL U73 ( .A(n87), .B(n179), .CO(n83), .S(n84) );
  ADDFXL U74 ( .A(n197), .B(n88), .CI(n89), .CO(n85), .S(n86) );
  ADDHXL U75 ( .A(n91), .B(n180), .CO(n87), .S(n88) );
  ADDFXL U76 ( .A(n198), .B(n92), .CI(n93), .CO(n89), .S(n90) );
  ADDHXL U77 ( .A(n95), .B(n181), .CO(n91), .S(n92) );
  ADDFXL U78 ( .A(n199), .B(n96), .CI(n97), .CO(n93), .S(n94) );
  ADDHXL U79 ( .A(n99), .B(n182), .CO(n95), .S(n96) );
  ADDFXL U80 ( .A(n200), .B(n100), .CI(n101), .CO(n97), .S(n98) );
  ADDHXL U81 ( .A(n103), .B(n183), .CO(n99), .S(n100) );
  ADDFXL U82 ( .A(n201), .B(n104), .CI(n105), .CO(n101), .S(n102) );
  ADDHXL U83 ( .A(n107), .B(n184), .CO(n103), .S(n104) );
  ADDFXL U84 ( .A(n202), .B(n108), .CI(n109), .CO(n105), .S(n106) );
  ADDHXL U85 ( .A(n111), .B(n185), .CO(n107), .S(n108) );
  ADDFXL U86 ( .A(n203), .B(n112), .CI(n113), .CO(n109), .S(n110) );
  ADDHXL U87 ( .A(n115), .B(n186), .CO(n111), .S(n112) );
  ADDFXL U88 ( .A(n204), .B(n116), .CI(n117), .CO(n113), .S(n114) );
  ADDHXL U89 ( .A(n187), .B(n119), .CO(n115), .S(n116) );
  ADDFXL U90 ( .A(n205), .B(n120), .CI(n121), .CO(n117), .S(n118) );
  ADDHXL U91 ( .A(n188), .B(n123), .CO(n119), .S(n120) );
  ADDFXL U92 ( .A(n125), .B(n124), .CI(n206), .CO(n121), .S(n122) );
  ADDHXL U93 ( .A(n25), .B(n189), .CO(n123), .S(n124) );
  ADDHXL U94 ( .A(n207), .B(n127), .CO(n125), .S(n126) );
  ADDHXL U95 ( .A(n208), .B(n129), .CO(n127), .S(n128) );
  ADDHXL U96 ( .A(n15), .B(n209), .CO(n129), .S(n130) );
  ADDFXL U344 ( .A(a[16]), .B(a[17]), .CI(n137), .CO(n153), .S(n154) );
  ADDFXL U345 ( .A(a[15]), .B(a[16]), .CI(n138), .CO(n137), .S(n155) );
  ADDFXL U346 ( .A(a[14]), .B(a[15]), .CI(n139), .CO(n138), .S(n156) );
  ADDFXL U347 ( .A(a[13]), .B(a[14]), .CI(n140), .CO(n139), .S(n157) );
  ADDFXL U348 ( .A(a[12]), .B(a[13]), .CI(n141), .CO(n140), .S(n158) );
  ADDFXL U349 ( .A(a[11]), .B(a[12]), .CI(n142), .CO(n141), .S(n159) );
  ADDFXL U350 ( .A(a[10]), .B(a[11]), .CI(n143), .CO(n142), .S(n160) );
  ADDFXL U351 ( .A(a[9]), .B(a[10]), .CI(n144), .CO(n143), .S(n161) );
  ADDFXL U352 ( .A(a[8]), .B(a[9]), .CI(n145), .CO(n144), .S(n162) );
  ADDFXL U353 ( .A(a[7]), .B(a[8]), .CI(n146), .CO(n145), .S(n163) );
  ADDFXL U354 ( .A(a[6]), .B(a[7]), .CI(n147), .CO(n146), .S(n164) );
  ADDFXL U355 ( .A(a[5]), .B(a[6]), .CI(n148), .CO(n147), .S(n165) );
  ADDFXL U356 ( .A(a[4]), .B(a[5]), .CI(n149), .CO(n148), .S(n166) );
  ADDFXL U357 ( .A(a[3]), .B(a[4]), .CI(n150), .CO(n149), .S(n167) );
  ADDFXL U358 ( .A(a[2]), .B(a[3]), .CI(n151), .CO(n150), .S(n168) );
  ADDFXL U359 ( .A(a[1]), .B(a[2]), .CI(n152), .CO(n151), .S(n169) );
  ADDHXL U360 ( .A(a[1]), .B(a[0]), .CO(n152), .S(n170) );
  CLKINVX1 U363 ( .A(b[1]), .Y(n468) );
  CLKINVX1 U364 ( .A(n563), .Y(n507) );
  CLKINVX1 U365 ( .A(n564), .Y(n508) );
  CLKINVX1 U366 ( .A(n561), .Y(n505) );
  CLKINVX1 U367 ( .A(n597), .Y(n506) );
  CLKINVX1 U368 ( .A(n518), .Y(n501) );
  CLKINVX1 U369 ( .A(n607), .Y(n502) );
  CLKINVX1 U370 ( .A(n515), .Y(n500) );
  NAND2X1 U371 ( .A(n640), .B(n638), .Y(n515) );
  NOR2X1 U372 ( .A(n638), .B(n503), .Y(n518) );
  XNOR2X1 U373 ( .A(n510), .B(n557), .Y(n212) );
  CLKINVX1 U374 ( .A(n59), .Y(n470) );
  NAND2X1 U375 ( .A(n503), .B(n639), .Y(n607) );
  CLKINVX1 U376 ( .A(n640), .Y(n503) );
  CLKINVX1 U377 ( .A(n602), .Y(n509) );
  CLKINVX1 U378 ( .A(n521), .Y(n511) );
  NOR3BX1 U379 ( .AN(n638), .B(n639), .C(n640), .Y(n517) );
  CLKINVX1 U380 ( .A(n169), .Y(n495) );
  CLKINVX1 U381 ( .A(n168), .Y(n493) );
  CLKINVX1 U382 ( .A(n167), .Y(n491) );
  CLKINVX1 U383 ( .A(n166), .Y(n489) );
  CLKINVX1 U384 ( .A(n165), .Y(n487) );
  CLKINVX1 U385 ( .A(n164), .Y(n485) );
  CLKINVX1 U386 ( .A(n163), .Y(n483) );
  CLKINVX1 U387 ( .A(n162), .Y(n481) );
  CLKINVX1 U388 ( .A(n153), .Y(n472) );
  CLKINVX1 U389 ( .A(n69), .Y(n469) );
  NOR2X1 U390 ( .A(n467), .B(b[1]), .Y(n521) );
  XNOR2X1 U391 ( .A(b[1]), .B(n229), .Y(n467) );
  CLKINVX1 U392 ( .A(a[0]), .Y(n497) );
  CLKINVX1 U393 ( .A(n15), .Y(n504) );
  CLKINVX1 U394 ( .A(n229), .Y(n510) );
  CLKINVX1 U395 ( .A(a[2]), .Y(n494) );
  CLKINVX1 U396 ( .A(a[3]), .Y(n492) );
  CLKINVX1 U397 ( .A(a[1]), .Y(n496) );
  CLKINVX1 U398 ( .A(n517), .Y(n499) );
  CLKINVX1 U399 ( .A(n25), .Y(n498) );
  CLKINVX1 U400 ( .A(a[4]), .Y(n490) );
  CLKINVX1 U401 ( .A(a[5]), .Y(n488) );
  CLKINVX1 U402 ( .A(a[6]), .Y(n486) );
  CLKINVX1 U403 ( .A(a[7]), .Y(n484) );
  CLKINVX1 U404 ( .A(a[9]), .Y(n480) );
  CLKINVX1 U405 ( .A(a[8]), .Y(n482) );
  CLKINVX1 U406 ( .A(a[10]), .Y(n479) );
  CLKINVX1 U407 ( .A(a[11]), .Y(n478) );
  XNOR2X1 U408 ( .A(n520), .B(n229), .Y(n519) );
  CLKINVX1 U409 ( .A(a[13]), .Y(n476) );
  CLKINVX1 U410 ( .A(a[12]), .Y(n477) );
  CLKINVX1 U411 ( .A(a[14]), .Y(n475) );
  CLKINVX1 U412 ( .A(a[16]), .Y(n473) );
  CLKINVX1 U413 ( .A(a[15]), .Y(n474) );
  CLKINVX1 U414 ( .A(a[17]), .Y(n471) );
  AOI21X1 U415 ( .A0(a[2]), .A1(b[1]), .B0(n530), .Y(n529) );
  NOR2X1 U416 ( .A(n496), .B(n511), .Y(n530) );
  NAND2X1 U417 ( .A(b[1]), .B(a[0]), .Y(n526) );
  AOI21X1 U418 ( .A0(b[1]), .A1(a[1]), .B0(n528), .Y(n527) );
  NOR2X1 U419 ( .A(n497), .B(n511), .Y(n528) );
  AOI21X1 U420 ( .A0(a[3]), .A1(b[1]), .B0(n532), .Y(n531) );
  NOR2X1 U421 ( .A(n494), .B(n511), .Y(n532) );
  AOI21X1 U422 ( .A0(a[4]), .A1(b[1]), .B0(n534), .Y(n533) );
  NOR2X1 U423 ( .A(n511), .B(n492), .Y(n534) );
  AOI21X1 U424 ( .A0(a[5]), .A1(b[1]), .B0(n536), .Y(n535) );
  NOR2X1 U425 ( .A(n511), .B(n490), .Y(n536) );
  AOI21X1 U426 ( .A0(a[6]), .A1(b[1]), .B0(n538), .Y(n537) );
  NOR2X1 U427 ( .A(n511), .B(n488), .Y(n538) );
  AOI21X1 U428 ( .A0(a[7]), .A1(b[1]), .B0(n540), .Y(n539) );
  NOR2X1 U429 ( .A(n511), .B(n486), .Y(n540) );
  AOI21X1 U430 ( .A0(a[8]), .A1(b[1]), .B0(n542), .Y(n541) );
  NOR2X1 U431 ( .A(n511), .B(n484), .Y(n542) );
  AOI21X1 U432 ( .A0(a[9]), .A1(b[1]), .B0(n544), .Y(n543) );
  AND2X1 U433 ( .A(n521), .B(a[8]), .Y(n544) );
  AOI21X1 U434 ( .A0(a[10]), .A1(b[1]), .B0(n546), .Y(n545) );
  AND2X1 U435 ( .A(n521), .B(a[9]), .Y(n546) );
  AOI21X1 U436 ( .A0(a[11]), .A1(b[1]), .B0(n548), .Y(n547) );
  AND2X1 U437 ( .A(n521), .B(a[10]), .Y(n548) );
  AOI21X1 U438 ( .A0(a[12]), .A1(b[1]), .B0(n550), .Y(n549) );
  AND2X1 U439 ( .A(n521), .B(a[11]), .Y(n550) );
  AOI21X1 U440 ( .A0(a[13]), .A1(b[1]), .B0(n552), .Y(n551) );
  AND2X1 U441 ( .A(n521), .B(a[12]), .Y(n552) );
  AOI21X1 U442 ( .A0(a[14]), .A1(b[1]), .B0(n554), .Y(n553) );
  AND2X1 U443 ( .A(n521), .B(a[13]), .Y(n554) );
  AOI21X1 U444 ( .A0(b[1]), .A1(a[15]), .B0(n556), .Y(n555) );
  AND2X1 U445 ( .A(n521), .B(a[14]), .Y(n556) );
  OAI21XL U446 ( .A0(n473), .A1(n511), .B0(n559), .Y(n558) );
  NAND2X1 U447 ( .A(b[1]), .B(a[17]), .Y(n559) );
  OAI21XL U448 ( .A0(n521), .A1(b[1]), .B0(a[17]), .Y(n520) );
  XOR2X1 U449 ( .A(n512), .B(n513), .Y(product[25]) );
  XNOR2X1 U450 ( .A(n514), .B(n58), .Y(n513) );
  OAI21XL U451 ( .A0(n515), .A1(n471), .B0(n516), .Y(n514) );
  OAI31XL U452 ( .A0(n517), .A1(n518), .A2(n502), .B0(a[17]), .Y(n516) );
  XOR2X1 U453 ( .A(n498), .B(n32), .Y(n512) );
  XOR2X1 U454 ( .A(n519), .B(n75), .Y(n72) );
  NOR2BX1 U455 ( .AN(n519), .B(n75), .Y(n69) );
  XOR2X1 U456 ( .A(n498), .B(n522), .Y(n59) );
  AOI221XL U457 ( .A0(n518), .A1(a[17]), .B0(n502), .B1(a[16]), .C0(n523), .Y(
        n522) );
  AO22X1 U458 ( .A0(n517), .A1(a[15]), .B0(n500), .B1(n154), .Y(n523) );
  XNOR2X1 U459 ( .A(n524), .B(n25), .Y(n58) );
  OAI221XL U460 ( .A0(n499), .A1(n473), .B0(n515), .B1(n472), .C0(n525), .Y(
        n524) );
  OAI21XL U461 ( .A0(n518), .A1(n502), .B0(a[17]), .Y(n525) );
  XOR2X1 U462 ( .A(n510), .B(n526), .Y(n228) );
  XOR2X1 U463 ( .A(n510), .B(n527), .Y(n227) );
  XOR2X1 U464 ( .A(n510), .B(n529), .Y(n226) );
  XOR2X1 U465 ( .A(n510), .B(n531), .Y(n225) );
  XOR2X1 U466 ( .A(n510), .B(n533), .Y(n224) );
  XOR2X1 U467 ( .A(n510), .B(n535), .Y(n223) );
  XOR2X1 U468 ( .A(n510), .B(n537), .Y(n222) );
  XOR2X1 U469 ( .A(n510), .B(n539), .Y(n221) );
  XOR2X1 U470 ( .A(n510), .B(n541), .Y(n220) );
  XOR2X1 U471 ( .A(n510), .B(n543), .Y(n219) );
  XOR2X1 U472 ( .A(n510), .B(n545), .Y(n218) );
  XOR2X1 U473 ( .A(n510), .B(n547), .Y(n217) );
  XOR2X1 U474 ( .A(n510), .B(n549), .Y(n216) );
  XOR2X1 U475 ( .A(n510), .B(n551), .Y(n215) );
  XOR2X1 U476 ( .A(n510), .B(n553), .Y(n214) );
  XOR2X1 U477 ( .A(n510), .B(n555), .Y(n213) );
  OAI22XL U478 ( .A0(n474), .A1(n511), .B0(n473), .B1(n468), .Y(n557) );
  XOR2X1 U479 ( .A(n558), .B(n229), .Y(n211) );
  XOR2X1 U480 ( .A(n560), .B(n15), .Y(n209) );
  OAI22XL U481 ( .A0(n497), .A1(n507), .B0(n497), .B1(n561), .Y(n560) );
  XOR2X1 U482 ( .A(n504), .B(n562), .Y(n208) );
  AOI222XL U483 ( .A0(n505), .A1(n170), .B0(n563), .B1(a[1]), .C0(n564), .C1(
        a[0]), .Y(n562) );
  XOR2X1 U484 ( .A(n504), .B(n565), .Y(n207) );
  AOI221XL U485 ( .A0(n506), .A1(a[0]), .B0(n505), .B1(n169), .C0(n566), .Y(
        n565) );
  OAI22XL U486 ( .A0(n496), .A1(n508), .B0(n494), .B1(n507), .Y(n566) );
  XOR2X1 U487 ( .A(n504), .B(n567), .Y(n206) );
  AOI221XL U488 ( .A0(n506), .A1(a[1]), .B0(n505), .B1(n168), .C0(n568), .Y(
        n567) );
  OAI22XL U489 ( .A0(n494), .A1(n508), .B0(n492), .B1(n507), .Y(n568) );
  XOR2X1 U490 ( .A(n504), .B(n569), .Y(n205) );
  AOI221XL U491 ( .A0(n506), .A1(a[2]), .B0(n505), .B1(n167), .C0(n570), .Y(
        n569) );
  OAI22XL U492 ( .A0(n492), .A1(n508), .B0(n490), .B1(n507), .Y(n570) );
  XOR2X1 U493 ( .A(n504), .B(n571), .Y(n204) );
  AOI221XL U494 ( .A0(n506), .A1(a[3]), .B0(n505), .B1(n166), .C0(n572), .Y(
        n571) );
  OAI22XL U495 ( .A0(n490), .A1(n508), .B0(n488), .B1(n507), .Y(n572) );
  XOR2X1 U496 ( .A(n504), .B(n573), .Y(n203) );
  AOI221XL U497 ( .A0(n506), .A1(a[4]), .B0(n505), .B1(n165), .C0(n574), .Y(
        n573) );
  OAI22XL U498 ( .A0(n488), .A1(n508), .B0(n486), .B1(n507), .Y(n574) );
  XOR2X1 U499 ( .A(n504), .B(n575), .Y(n202) );
  AOI221XL U500 ( .A0(n506), .A1(a[5]), .B0(n505), .B1(n164), .C0(n576), .Y(
        n575) );
  OAI22XL U501 ( .A0(n486), .A1(n508), .B0(n484), .B1(n507), .Y(n576) );
  XOR2X1 U502 ( .A(n504), .B(n577), .Y(n201) );
  AOI221XL U503 ( .A0(n506), .A1(a[6]), .B0(n505), .B1(n163), .C0(n578), .Y(
        n577) );
  OAI22XL U504 ( .A0(n484), .A1(n508), .B0(n482), .B1(n507), .Y(n578) );
  XOR2X1 U505 ( .A(n504), .B(n579), .Y(n200) );
  AOI221XL U506 ( .A0(n506), .A1(a[7]), .B0(n505), .B1(n162), .C0(n580), .Y(
        n579) );
  OAI22XL U507 ( .A0(n482), .A1(n508), .B0(n480), .B1(n507), .Y(n580) );
  XOR2X1 U508 ( .A(n504), .B(n581), .Y(n199) );
  AOI221XL U509 ( .A0(n506), .A1(a[8]), .B0(n505), .B1(n161), .C0(n582), .Y(
        n581) );
  OAI22XL U510 ( .A0(n480), .A1(n508), .B0(n479), .B1(n507), .Y(n582) );
  XOR2X1 U511 ( .A(n504), .B(n583), .Y(n198) );
  AOI221XL U512 ( .A0(n506), .A1(a[9]), .B0(n505), .B1(n160), .C0(n584), .Y(
        n583) );
  OAI22XL U513 ( .A0(n479), .A1(n508), .B0(n478), .B1(n507), .Y(n584) );
  XOR2X1 U514 ( .A(n504), .B(n585), .Y(n197) );
  AOI221XL U515 ( .A0(n506), .A1(a[10]), .B0(n505), .B1(n159), .C0(n586), .Y(
        n585) );
  OAI22XL U516 ( .A0(n478), .A1(n508), .B0(n477), .B1(n507), .Y(n586) );
  XOR2X1 U517 ( .A(n504), .B(n587), .Y(n196) );
  AOI221XL U518 ( .A0(n506), .A1(a[11]), .B0(n505), .B1(n158), .C0(n588), .Y(
        n587) );
  OAI22XL U519 ( .A0(n477), .A1(n508), .B0(n476), .B1(n507), .Y(n588) );
  XOR2X1 U520 ( .A(n504), .B(n589), .Y(n195) );
  AOI221XL U521 ( .A0(n506), .A1(a[12]), .B0(n505), .B1(n157), .C0(n590), .Y(
        n589) );
  OAI22XL U522 ( .A0(n476), .A1(n508), .B0(n475), .B1(n507), .Y(n590) );
  XOR2X1 U523 ( .A(n504), .B(n591), .Y(n194) );
  AOI221XL U524 ( .A0(n506), .A1(a[13]), .B0(n505), .B1(n156), .C0(n592), .Y(
        n591) );
  OAI22XL U525 ( .A0(n475), .A1(n508), .B0(n474), .B1(n507), .Y(n592) );
  XOR2X1 U526 ( .A(n504), .B(n593), .Y(n193) );
  AOI221XL U527 ( .A0(n506), .A1(a[14]), .B0(n505), .B1(n155), .C0(n594), .Y(
        n593) );
  OAI22XL U528 ( .A0(n474), .A1(n508), .B0(n473), .B1(n507), .Y(n594) );
  XOR2X1 U529 ( .A(n504), .B(n595), .Y(n192) );
  AOI221XL U530 ( .A0(n563), .A1(a[17]), .B0(n505), .B1(n154), .C0(n596), .Y(
        n595) );
  OAI22XL U531 ( .A0(n474), .A1(n597), .B0(n473), .B1(n508), .Y(n596) );
  XOR2X1 U532 ( .A(n598), .B(n15), .Y(n191) );
  OAI221XL U533 ( .A0(n473), .A1(n597), .B0(n472), .B1(n561), .C0(n599), .Y(
        n598) );
  OAI21XL U534 ( .A0(n563), .A1(n564), .B0(a[17]), .Y(n599) );
  XOR2X1 U535 ( .A(n504), .B(n600), .Y(n190) );
  OAI21XL U536 ( .A0(n471), .A1(n561), .B0(n601), .Y(n600) );
  OAI31XL U537 ( .A0(n506), .A1(n563), .A2(n564), .B0(a[17]), .Y(n601) );
  NOR2X1 U538 ( .A(n602), .B(n603), .Y(n564) );
  NOR2X1 U539 ( .A(n604), .B(n509), .Y(n563) );
  NAND3X1 U540 ( .A(n509), .B(n604), .C(n603), .Y(n597) );
  XNOR2X1 U541 ( .A(b[3]), .B(b[4]), .Y(n603) );
  NAND2X1 U542 ( .A(n602), .B(n604), .Y(n561) );
  XOR2X1 U543 ( .A(b[4]), .B(n15), .Y(n604) );
  XOR2X1 U544 ( .A(b[3]), .B(n229), .Y(n602) );
  XOR2X1 U545 ( .A(n605), .B(n25), .Y(n189) );
  OAI22XL U546 ( .A0(n501), .A1(n497), .B0(n515), .B1(n497), .Y(n605) );
  XOR2X1 U547 ( .A(n498), .B(n606), .Y(n188) );
  AOI222XL U548 ( .A0(n170), .A1(n500), .B0(a[1]), .B1(n518), .C0(a[0]), .C1(
        n502), .Y(n606) );
  XOR2X1 U549 ( .A(n498), .B(n608), .Y(n187) );
  AOI221XL U550 ( .A0(a[0]), .A1(n517), .B0(a[2]), .B1(n518), .C0(n609), .Y(
        n608) );
  OAI22XL U551 ( .A0(n515), .A1(n495), .B0(n607), .B1(n496), .Y(n609) );
  XOR2X1 U552 ( .A(n498), .B(n610), .Y(n186) );
  AOI221XL U553 ( .A0(a[1]), .A1(n517), .B0(a[3]), .B1(n518), .C0(n611), .Y(
        n610) );
  OAI22XL U554 ( .A0(n515), .A1(n493), .B0(n607), .B1(n494), .Y(n611) );
  XOR2X1 U555 ( .A(n498), .B(n612), .Y(n185) );
  AOI221XL U556 ( .A0(a[2]), .A1(n517), .B0(a[4]), .B1(n518), .C0(n613), .Y(
        n612) );
  OAI22XL U557 ( .A0(n515), .A1(n491), .B0(n607), .B1(n492), .Y(n613) );
  XOR2X1 U558 ( .A(n498), .B(n614), .Y(n184) );
  AOI221XL U559 ( .A0(a[3]), .A1(n517), .B0(a[5]), .B1(n518), .C0(n615), .Y(
        n614) );
  OAI22XL U560 ( .A0(n515), .A1(n489), .B0(n607), .B1(n490), .Y(n615) );
  XOR2X1 U561 ( .A(n498), .B(n616), .Y(n183) );
  AOI221XL U562 ( .A0(a[4]), .A1(n517), .B0(a[6]), .B1(n518), .C0(n617), .Y(
        n616) );
  OAI22XL U563 ( .A0(n515), .A1(n487), .B0(n607), .B1(n488), .Y(n617) );
  XOR2X1 U564 ( .A(n498), .B(n618), .Y(n182) );
  AOI221XL U565 ( .A0(a[5]), .A1(n517), .B0(a[7]), .B1(n518), .C0(n619), .Y(
        n618) );
  OAI22XL U566 ( .A0(n515), .A1(n485), .B0(n607), .B1(n486), .Y(n619) );
  XOR2X1 U567 ( .A(n498), .B(n620), .Y(n181) );
  AOI221XL U568 ( .A0(a[6]), .A1(n517), .B0(a[8]), .B1(n518), .C0(n621), .Y(
        n620) );
  OAI22XL U569 ( .A0(n515), .A1(n483), .B0(n607), .B1(n484), .Y(n621) );
  XOR2X1 U570 ( .A(n498), .B(n622), .Y(n180) );
  AOI221XL U571 ( .A0(a[9]), .A1(n518), .B0(a[7]), .B1(n517), .C0(n623), .Y(
        n622) );
  OAI22XL U572 ( .A0(n515), .A1(n481), .B0(n607), .B1(n482), .Y(n623) );
  XOR2X1 U573 ( .A(n498), .B(n624), .Y(n179) );
  AOI221XL U574 ( .A0(a[8]), .A1(n517), .B0(n161), .B1(n500), .C0(n625), .Y(
        n624) );
  OAI22XL U575 ( .A0(n607), .A1(n480), .B0(n501), .B1(n479), .Y(n625) );
  XOR2X1 U576 ( .A(n498), .B(n626), .Y(n178) );
  AOI221XL U577 ( .A0(a[9]), .A1(n517), .B0(n160), .B1(n500), .C0(n627), .Y(
        n626) );
  OAI22XL U578 ( .A0(n607), .A1(n479), .B0(n501), .B1(n478), .Y(n627) );
  XOR2X1 U579 ( .A(n498), .B(n628), .Y(n177) );
  AOI221XL U580 ( .A0(a[10]), .A1(n517), .B0(n159), .B1(n500), .C0(n629), .Y(
        n628) );
  OAI22XL U581 ( .A0(n607), .A1(n478), .B0(n501), .B1(n477), .Y(n629) );
  XOR2X1 U582 ( .A(n498), .B(n630), .Y(n176) );
  AOI221XL U583 ( .A0(a[11]), .A1(n517), .B0(n158), .B1(n500), .C0(n631), .Y(
        n630) );
  OAI22XL U584 ( .A0(n607), .A1(n477), .B0(n501), .B1(n476), .Y(n631) );
  XOR2X1 U585 ( .A(n498), .B(n632), .Y(n175) );
  AOI221XL U586 ( .A0(a[12]), .A1(n517), .B0(n157), .B1(n500), .C0(n633), .Y(
        n632) );
  OAI22XL U587 ( .A0(n607), .A1(n476), .B0(n501), .B1(n475), .Y(n633) );
  XOR2X1 U588 ( .A(n498), .B(n634), .Y(n174) );
  AOI221XL U589 ( .A0(a[13]), .A1(n517), .B0(n156), .B1(n500), .C0(n635), .Y(
        n634) );
  OAI22XL U590 ( .A0(n607), .A1(n475), .B0(n501), .B1(n474), .Y(n635) );
  XOR2X1 U591 ( .A(n498), .B(n636), .Y(n173) );
  AOI221XL U592 ( .A0(a[14]), .A1(n517), .B0(n155), .B1(n500), .C0(n637), .Y(
        n636) );
  OAI22XL U593 ( .A0(n607), .A1(n474), .B0(n473), .B1(n501), .Y(n637) );
  XOR2X1 U594 ( .A(b[6]), .B(n15), .Y(n640) );
  XOR2X1 U595 ( .A(b[6]), .B(b[7]), .Y(n639) );
  XOR2X1 U596 ( .A(b[7]), .B(n25), .Y(n638) );
endmodule


module RFILE_DW01_sub_12 ( A, B, CI, DIFF, CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [26:0] carry;

  ADDFXL U2_2 ( .A(A[2]), .B(n25), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n24), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_9 ( .A(A[9]), .B(n18), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n19), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n20), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n21), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n22), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n23), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_14 ( .A(A[14]), .B(n13), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n14), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n15), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n16), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n17), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n9), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n11), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n12), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  XOR3X1 U2_25 ( .A(A[25]), .B(n2), .C(carry[25]), .Y(DIFF[25]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n10), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n8), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n5), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n6), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_24 ( .A(A[24]), .B(n3), .CI(carry[24]), .CO(carry[25]), .S(
        DIFF[24]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n4), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n7), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  CLKINVX1 U1 ( .A(B[20]), .Y(n7) );
  CLKINVX1 U2 ( .A(B[23]), .Y(n4) );
  CLKINVX1 U3 ( .A(B[24]), .Y(n3) );
  CLKINVX1 U4 ( .A(B[21]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[22]), .Y(n5) );
  CLKINVX1 U6 ( .A(B[19]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[17]), .Y(n10) );
  CLKINVX1 U8 ( .A(B[25]), .Y(n2) );
  CLKINVX1 U9 ( .A(B[15]), .Y(n12) );
  CLKINVX1 U10 ( .A(B[16]), .Y(n11) );
  CLKINVX1 U11 ( .A(B[18]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[10]), .Y(n17) );
  CLKINVX1 U13 ( .A(B[11]), .Y(n16) );
  CLKINVX1 U14 ( .A(B[12]), .Y(n15) );
  CLKINVX1 U15 ( .A(B[13]), .Y(n14) );
  CLKINVX1 U16 ( .A(B[14]), .Y(n13) );
  CLKINVX1 U17 ( .A(B[4]), .Y(n23) );
  CLKINVX1 U18 ( .A(B[5]), .Y(n22) );
  CLKINVX1 U19 ( .A(B[6]), .Y(n21) );
  CLKINVX1 U20 ( .A(B[7]), .Y(n20) );
  CLKINVX1 U21 ( .A(B[8]), .Y(n19) );
  CLKINVX1 U22 ( .A(B[9]), .Y(n18) );
  CLKINVX1 U23 ( .A(B[3]), .Y(n24) );
  CLKINVX1 U24 ( .A(B[1]), .Y(n26) );
  NAND2X1 U25 ( .A(B[1]), .B(n1), .Y(carry[2]) );
  CLKINVX1 U26 ( .A(B[2]), .Y(n25) );
  CLKINVX1 U27 ( .A(A[1]), .Y(n1) );
  XNOR2X1 U28 ( .A(n26), .B(A[1]), .Y(DIFF[1]) );
endmodule


module RFILE_DW_mult_uns_6 ( a, b, product );
  input [8:0] a;
  input [8:0] b;
  output [17:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, \b[0] , n135, n136, n137, n138, n139, n140, n141, n142,
         n143;
  assign \b[0]  = b[0];
  assign product[0] = \b[0] ;

  ADDFXL U2 ( .A(n53), .B(a[8]), .CI(n2), .CO(product[17]), .S(product[16]) );
  ADDFXL U3 ( .A(n16), .B(n54), .CI(n3), .CO(n2), .S(product[15]) );
  ADDFXL U4 ( .A(n18), .B(n17), .CI(n4), .CO(n3), .S(product[14]) );
  ADDFXL U5 ( .A(n21), .B(n19), .CI(n5), .CO(n4), .S(product[13]) );
  ADDFXL U6 ( .A(n24), .B(n22), .CI(n6), .CO(n5), .S(product[12]) );
  ADDFXL U7 ( .A(n27), .B(n25), .CI(n7), .CO(n6), .S(product[11]) );
  ADDFXL U8 ( .A(n28), .B(n32), .CI(n8), .CO(n7), .S(product[10]) );
  ADDFXL U9 ( .A(n33), .B(n37), .CI(n9), .CO(n8), .S(product[9]) );
  ADDFXL U10 ( .A(n38), .B(n41), .CI(n10), .CO(n9), .S(product[8]) );
  ADDFXL U11 ( .A(n42), .B(n45), .CI(n11), .CO(n10), .S(product[7]) );
  ADDFXL U12 ( .A(n46), .B(n48), .CI(n12), .CO(n11), .S(product[6]) );
  ADDFXL U13 ( .A(n50), .B(n51), .CI(n13), .CO(n12), .S(product[5]) );
  ADDFXL U14 ( .A(n52), .B(n85), .CI(n14), .CO(n13), .S(product[4]) );
  ADDHXL U15 ( .A(n87), .B(n15), .CO(n14), .S(product[3]) );
  ADDHXL U16 ( .A(a[1]), .B(n88), .CO(n15), .S(product[2]) );
  ADDFXL U17 ( .A(n55), .B(a[7]), .CI(n61), .CO(n16), .S(n17) );
  ADDFXL U18 ( .A(n56), .B(n62), .CI(n20), .CO(n18), .S(n19) );
  CMPR42X1 U19 ( .A(a[6]), .B(n57), .C(n63), .D(n68), .ICI(n23), .S(n22), 
        .ICO(n20), .CO(n21) );
  CMPR42X1 U20 ( .A(n69), .B(n58), .C(n64), .D(n26), .ICI(n29), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n74), .B(n65), .C(n70), .D(n31), .ICI(n30), .S(n28), .ICO(
        n26), .CO(n27) );
  ADDFXL U22 ( .A(n59), .B(a[5]), .CI(n34), .CO(n29), .S(n30) );
  CMPR42X1 U23 ( .A(n75), .B(n71), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  ADDHXL U24 ( .A(n66), .B(n60), .CO(n34), .S(n35) );
  CMPR42X1 U25 ( .A(n79), .B(n67), .C(n76), .D(n43), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U26 ( .A(a[4]), .B(n72), .CO(n39), .S(n40) );
  ADDFXL U27 ( .A(n47), .B(n77), .CI(n44), .CO(n41), .S(n42) );
  ADDHXL U28 ( .A(n80), .B(n73), .CO(n43), .S(n44) );
  ADDFXL U29 ( .A(n78), .B(n81), .CI(n49), .CO(n45), .S(n46) );
  ADDHXL U30 ( .A(a[3]), .B(n83), .CO(n47), .S(n48) );
  ADDHXL U31 ( .A(n84), .B(n82), .CO(n49), .S(n50) );
  ADDHXL U32 ( .A(a[2]), .B(n86), .CO(n51), .S(n52) );
  CLKINVX1 U88 ( .A(b[8]), .Y(n135) );
  CLKINVX1 U89 ( .A(\b[0] ), .Y(n143) );
  CLKINVX1 U90 ( .A(b[1]), .Y(n142) );
  CLKINVX1 U91 ( .A(b[6]), .Y(n137) );
  CLKINVX1 U92 ( .A(b[2]), .Y(n141) );
  CLKINVX1 U93 ( .A(b[3]), .Y(n140) );
  CLKINVX1 U94 ( .A(b[4]), .Y(n139) );
  CLKINVX1 U95 ( .A(b[5]), .Y(n138) );
  CLKINVX1 U96 ( .A(b[7]), .Y(n136) );
  NOR2X1 U97 ( .A(n143), .B(n142), .Y(n88) );
  NOR2X1 U98 ( .A(n143), .B(n141), .Y(n87) );
  NOR2X1 U99 ( .A(n142), .B(n141), .Y(n86) );
  NOR2X1 U100 ( .A(n143), .B(n140), .Y(n85) );
  NOR2X1 U101 ( .A(n142), .B(n140), .Y(n84) );
  NOR2X1 U102 ( .A(n141), .B(n140), .Y(n83) );
  NOR2X1 U103 ( .A(n143), .B(n139), .Y(n82) );
  NOR2X1 U104 ( .A(n142), .B(n139), .Y(n81) );
  NOR2X1 U105 ( .A(n141), .B(n139), .Y(n80) );
  NOR2X1 U106 ( .A(n140), .B(n139), .Y(n79) );
  NOR2X1 U107 ( .A(n143), .B(n138), .Y(n78) );
  NOR2X1 U108 ( .A(n142), .B(n138), .Y(n77) );
  NOR2X1 U109 ( .A(n141), .B(n138), .Y(n76) );
  NOR2X1 U110 ( .A(n140), .B(n138), .Y(n75) );
  NOR2X1 U111 ( .A(n139), .B(n138), .Y(n74) );
  NOR2X1 U112 ( .A(n143), .B(n137), .Y(n73) );
  NOR2X1 U113 ( .A(n142), .B(n137), .Y(n72) );
  NOR2X1 U114 ( .A(n141), .B(n137), .Y(n71) );
  NOR2X1 U115 ( .A(n140), .B(n137), .Y(n70) );
  NOR2X1 U116 ( .A(n139), .B(n137), .Y(n69) );
  NOR2X1 U117 ( .A(n138), .B(n137), .Y(n68) );
  NOR2X1 U118 ( .A(n143), .B(n136), .Y(n67) );
  NOR2X1 U119 ( .A(n142), .B(n136), .Y(n66) );
  NOR2X1 U120 ( .A(n141), .B(n136), .Y(n65) );
  NOR2X1 U121 ( .A(n140), .B(n136), .Y(n64) );
  NOR2X1 U122 ( .A(n139), .B(n136), .Y(n63) );
  NOR2X1 U123 ( .A(n138), .B(n136), .Y(n62) );
  NOR2X1 U124 ( .A(n137), .B(n136), .Y(n61) );
  NOR2X1 U125 ( .A(n143), .B(n135), .Y(n60) );
  NOR2X1 U126 ( .A(n142), .B(n135), .Y(n59) );
  NOR2X1 U127 ( .A(n141), .B(n135), .Y(n58) );
  NOR2X1 U128 ( .A(n140), .B(n135), .Y(n57) );
  NOR2X1 U129 ( .A(n139), .B(n135), .Y(n56) );
  NOR2X1 U130 ( .A(n138), .B(n135), .Y(n55) );
  NOR2X1 U131 ( .A(n137), .B(n135), .Y(n54) );
  NOR2X1 U132 ( .A(n136), .B(n135), .Y(n53) );
endmodule


module RFILE_DW_mult_uns_8 ( a, b, product );
  input [8:0] a;
  input [8:0] b;
  output [17:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, \b[0] , n135, n136, n137, n138, n139, n140, n141, n142,
         n143;
  assign \b[0]  = b[0];
  assign product[0] = \b[0] ;

  ADDFXL U2 ( .A(n53), .B(a[8]), .CI(n2), .CO(product[17]), .S(product[16]) );
  ADDFXL U3 ( .A(n16), .B(n54), .CI(n3), .CO(n2), .S(product[15]) );
  ADDFXL U4 ( .A(n18), .B(n17), .CI(n4), .CO(n3), .S(product[14]) );
  ADDFXL U5 ( .A(n21), .B(n19), .CI(n5), .CO(n4), .S(product[13]) );
  ADDFXL U6 ( .A(n24), .B(n22), .CI(n6), .CO(n5), .S(product[12]) );
  ADDFXL U7 ( .A(n27), .B(n25), .CI(n7), .CO(n6), .S(product[11]) );
  ADDFXL U8 ( .A(n28), .B(n32), .CI(n8), .CO(n7), .S(product[10]) );
  ADDFXL U9 ( .A(n33), .B(n37), .CI(n9), .CO(n8), .S(product[9]) );
  ADDFXL U10 ( .A(n38), .B(n41), .CI(n10), .CO(n9), .S(product[8]) );
  ADDFXL U11 ( .A(n42), .B(n45), .CI(n11), .CO(n10), .S(product[7]) );
  ADDFXL U12 ( .A(n46), .B(n48), .CI(n12), .CO(n11), .S(product[6]) );
  ADDFXL U13 ( .A(n50), .B(n51), .CI(n13), .CO(n12), .S(product[5]) );
  ADDFXL U14 ( .A(n52), .B(n85), .CI(n14), .CO(n13), .S(product[4]) );
  ADDHXL U15 ( .A(n87), .B(n15), .CO(n14), .S(product[3]) );
  ADDHXL U16 ( .A(a[1]), .B(n88), .CO(n15), .S(product[2]) );
  ADDFXL U17 ( .A(n55), .B(a[7]), .CI(n61), .CO(n16), .S(n17) );
  ADDFXL U18 ( .A(n56), .B(n62), .CI(n20), .CO(n18), .S(n19) );
  CMPR42X1 U19 ( .A(a[6]), .B(n57), .C(n63), .D(n68), .ICI(n23), .S(n22), 
        .ICO(n20), .CO(n21) );
  CMPR42X1 U20 ( .A(n69), .B(n58), .C(n64), .D(n26), .ICI(n29), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n74), .B(n65), .C(n70), .D(n31), .ICI(n30), .S(n28), .ICO(
        n26), .CO(n27) );
  ADDFXL U22 ( .A(n59), .B(a[5]), .CI(n34), .CO(n29), .S(n30) );
  CMPR42X1 U23 ( .A(n75), .B(n71), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  ADDHXL U24 ( .A(n66), .B(n60), .CO(n34), .S(n35) );
  CMPR42X1 U25 ( .A(n79), .B(n67), .C(n76), .D(n43), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U26 ( .A(a[4]), .B(n72), .CO(n39), .S(n40) );
  ADDFXL U27 ( .A(n47), .B(n77), .CI(n44), .CO(n41), .S(n42) );
  ADDHXL U28 ( .A(n80), .B(n73), .CO(n43), .S(n44) );
  ADDFXL U29 ( .A(n78), .B(n81), .CI(n49), .CO(n45), .S(n46) );
  ADDHXL U30 ( .A(a[3]), .B(n83), .CO(n47), .S(n48) );
  ADDHXL U31 ( .A(n84), .B(n82), .CO(n49), .S(n50) );
  ADDHXL U32 ( .A(a[2]), .B(n86), .CO(n51), .S(n52) );
  CLKINVX1 U88 ( .A(b[8]), .Y(n135) );
  CLKINVX1 U89 ( .A(\b[0] ), .Y(n143) );
  CLKINVX1 U90 ( .A(b[1]), .Y(n142) );
  CLKINVX1 U91 ( .A(b[6]), .Y(n137) );
  CLKINVX1 U92 ( .A(b[2]), .Y(n141) );
  CLKINVX1 U93 ( .A(b[3]), .Y(n140) );
  CLKINVX1 U94 ( .A(b[4]), .Y(n139) );
  CLKINVX1 U95 ( .A(b[5]), .Y(n138) );
  CLKINVX1 U96 ( .A(b[7]), .Y(n136) );
  NOR2X1 U97 ( .A(n143), .B(n142), .Y(n88) );
  NOR2X1 U98 ( .A(n143), .B(n141), .Y(n87) );
  NOR2X1 U99 ( .A(n142), .B(n141), .Y(n86) );
  NOR2X1 U100 ( .A(n143), .B(n140), .Y(n85) );
  NOR2X1 U101 ( .A(n142), .B(n140), .Y(n84) );
  NOR2X1 U102 ( .A(n141), .B(n140), .Y(n83) );
  NOR2X1 U103 ( .A(n143), .B(n139), .Y(n82) );
  NOR2X1 U104 ( .A(n142), .B(n139), .Y(n81) );
  NOR2X1 U105 ( .A(n141), .B(n139), .Y(n80) );
  NOR2X1 U106 ( .A(n140), .B(n139), .Y(n79) );
  NOR2X1 U107 ( .A(n143), .B(n138), .Y(n78) );
  NOR2X1 U108 ( .A(n142), .B(n138), .Y(n77) );
  NOR2X1 U109 ( .A(n141), .B(n138), .Y(n76) );
  NOR2X1 U110 ( .A(n140), .B(n138), .Y(n75) );
  NOR2X1 U111 ( .A(n139), .B(n138), .Y(n74) );
  NOR2X1 U112 ( .A(n143), .B(n137), .Y(n73) );
  NOR2X1 U113 ( .A(n142), .B(n137), .Y(n72) );
  NOR2X1 U114 ( .A(n141), .B(n137), .Y(n71) );
  NOR2X1 U115 ( .A(n140), .B(n137), .Y(n70) );
  NOR2X1 U116 ( .A(n139), .B(n137), .Y(n69) );
  NOR2X1 U117 ( .A(n138), .B(n137), .Y(n68) );
  NOR2X1 U118 ( .A(n143), .B(n136), .Y(n67) );
  NOR2X1 U119 ( .A(n142), .B(n136), .Y(n66) );
  NOR2X1 U120 ( .A(n141), .B(n136), .Y(n65) );
  NOR2X1 U121 ( .A(n140), .B(n136), .Y(n64) );
  NOR2X1 U122 ( .A(n139), .B(n136), .Y(n63) );
  NOR2X1 U123 ( .A(n138), .B(n136), .Y(n62) );
  NOR2X1 U124 ( .A(n137), .B(n136), .Y(n61) );
  NOR2X1 U125 ( .A(n143), .B(n135), .Y(n60) );
  NOR2X1 U126 ( .A(n142), .B(n135), .Y(n59) );
  NOR2X1 U127 ( .A(n141), .B(n135), .Y(n58) );
  NOR2X1 U128 ( .A(n140), .B(n135), .Y(n57) );
  NOR2X1 U129 ( .A(n139), .B(n135), .Y(n56) );
  NOR2X1 U130 ( .A(n138), .B(n135), .Y(n55) );
  NOR2X1 U131 ( .A(n137), .B(n135), .Y(n54) );
  NOR2X1 U132 ( .A(n136), .B(n135), .Y(n53) );
endmodule


module RFILE_DW_mult_uns_7 ( a, b, product );
  input [8:0] a;
  input [8:0] b;
  output [17:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, \b[0] , n135, n136, n137, n138, n139, n140, n141, n142,
         n143;
  assign \b[0]  = b[0];
  assign product[0] = \b[0] ;

  ADDFXL U2 ( .A(n53), .B(a[8]), .CI(n2), .CO(product[17]), .S(product[16]) );
  ADDFXL U3 ( .A(n16), .B(n54), .CI(n3), .CO(n2), .S(product[15]) );
  ADDFXL U4 ( .A(n18), .B(n17), .CI(n4), .CO(n3), .S(product[14]) );
  ADDFXL U5 ( .A(n21), .B(n19), .CI(n5), .CO(n4), .S(product[13]) );
  ADDFXL U6 ( .A(n24), .B(n22), .CI(n6), .CO(n5), .S(product[12]) );
  ADDFXL U7 ( .A(n27), .B(n25), .CI(n7), .CO(n6), .S(product[11]) );
  ADDFXL U8 ( .A(n28), .B(n32), .CI(n8), .CO(n7), .S(product[10]) );
  ADDFXL U9 ( .A(n33), .B(n37), .CI(n9), .CO(n8), .S(product[9]) );
  ADDFXL U10 ( .A(n38), .B(n41), .CI(n10), .CO(n9), .S(product[8]) );
  ADDFXL U11 ( .A(n42), .B(n45), .CI(n11), .CO(n10), .S(product[7]) );
  ADDFXL U12 ( .A(n46), .B(n48), .CI(n12), .CO(n11), .S(product[6]) );
  ADDFXL U13 ( .A(n50), .B(n51), .CI(n13), .CO(n12), .S(product[5]) );
  ADDFXL U14 ( .A(n52), .B(n85), .CI(n14), .CO(n13), .S(product[4]) );
  ADDHXL U15 ( .A(n87), .B(n15), .CO(n14), .S(product[3]) );
  ADDHXL U16 ( .A(a[1]), .B(n88), .CO(n15), .S(product[2]) );
  ADDFXL U17 ( .A(n55), .B(a[7]), .CI(n61), .CO(n16), .S(n17) );
  ADDFXL U18 ( .A(n56), .B(n62), .CI(n20), .CO(n18), .S(n19) );
  CMPR42X1 U19 ( .A(a[6]), .B(n57), .C(n63), .D(n68), .ICI(n23), .S(n22), 
        .ICO(n20), .CO(n21) );
  CMPR42X1 U20 ( .A(n69), .B(n58), .C(n64), .D(n26), .ICI(n29), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n74), .B(n65), .C(n70), .D(n31), .ICI(n30), .S(n28), .ICO(
        n26), .CO(n27) );
  ADDFXL U22 ( .A(n59), .B(a[5]), .CI(n34), .CO(n29), .S(n30) );
  CMPR42X1 U23 ( .A(n75), .B(n71), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  ADDHXL U24 ( .A(n66), .B(n60), .CO(n34), .S(n35) );
  CMPR42X1 U25 ( .A(n79), .B(n67), .C(n76), .D(n43), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U26 ( .A(a[4]), .B(n72), .CO(n39), .S(n40) );
  ADDFXL U27 ( .A(n47), .B(n77), .CI(n44), .CO(n41), .S(n42) );
  ADDHXL U28 ( .A(n80), .B(n73), .CO(n43), .S(n44) );
  ADDFXL U29 ( .A(n78), .B(n81), .CI(n49), .CO(n45), .S(n46) );
  ADDHXL U30 ( .A(a[3]), .B(n83), .CO(n47), .S(n48) );
  ADDHXL U31 ( .A(n84), .B(n82), .CO(n49), .S(n50) );
  ADDHXL U32 ( .A(a[2]), .B(n86), .CO(n51), .S(n52) );
  CLKINVX1 U88 ( .A(b[8]), .Y(n135) );
  CLKINVX1 U89 ( .A(\b[0] ), .Y(n143) );
  CLKINVX1 U90 ( .A(b[1]), .Y(n142) );
  CLKINVX1 U91 ( .A(b[6]), .Y(n137) );
  CLKINVX1 U92 ( .A(b[2]), .Y(n141) );
  CLKINVX1 U93 ( .A(b[3]), .Y(n140) );
  CLKINVX1 U94 ( .A(b[4]), .Y(n139) );
  CLKINVX1 U95 ( .A(b[5]), .Y(n138) );
  CLKINVX1 U96 ( .A(b[7]), .Y(n136) );
  NOR2X1 U97 ( .A(n143), .B(n142), .Y(n88) );
  NOR2X1 U98 ( .A(n143), .B(n141), .Y(n87) );
  NOR2X1 U99 ( .A(n142), .B(n141), .Y(n86) );
  NOR2X1 U100 ( .A(n143), .B(n140), .Y(n85) );
  NOR2X1 U101 ( .A(n142), .B(n140), .Y(n84) );
  NOR2X1 U102 ( .A(n141), .B(n140), .Y(n83) );
  NOR2X1 U103 ( .A(n143), .B(n139), .Y(n82) );
  NOR2X1 U104 ( .A(n142), .B(n139), .Y(n81) );
  NOR2X1 U105 ( .A(n141), .B(n139), .Y(n80) );
  NOR2X1 U106 ( .A(n140), .B(n139), .Y(n79) );
  NOR2X1 U107 ( .A(n143), .B(n138), .Y(n78) );
  NOR2X1 U108 ( .A(n142), .B(n138), .Y(n77) );
  NOR2X1 U109 ( .A(n141), .B(n138), .Y(n76) );
  NOR2X1 U110 ( .A(n140), .B(n138), .Y(n75) );
  NOR2X1 U111 ( .A(n139), .B(n138), .Y(n74) );
  NOR2X1 U112 ( .A(n143), .B(n137), .Y(n73) );
  NOR2X1 U113 ( .A(n142), .B(n137), .Y(n72) );
  NOR2X1 U114 ( .A(n141), .B(n137), .Y(n71) );
  NOR2X1 U115 ( .A(n140), .B(n137), .Y(n70) );
  NOR2X1 U116 ( .A(n139), .B(n137), .Y(n69) );
  NOR2X1 U117 ( .A(n138), .B(n137), .Y(n68) );
  NOR2X1 U118 ( .A(n143), .B(n136), .Y(n67) );
  NOR2X1 U119 ( .A(n142), .B(n136), .Y(n66) );
  NOR2X1 U120 ( .A(n141), .B(n136), .Y(n65) );
  NOR2X1 U121 ( .A(n140), .B(n136), .Y(n64) );
  NOR2X1 U122 ( .A(n139), .B(n136), .Y(n63) );
  NOR2X1 U123 ( .A(n138), .B(n136), .Y(n62) );
  NOR2X1 U124 ( .A(n137), .B(n136), .Y(n61) );
  NOR2X1 U125 ( .A(n143), .B(n135), .Y(n60) );
  NOR2X1 U126 ( .A(n142), .B(n135), .Y(n59) );
  NOR2X1 U127 ( .A(n141), .B(n135), .Y(n58) );
  NOR2X1 U128 ( .A(n140), .B(n135), .Y(n57) );
  NOR2X1 U129 ( .A(n139), .B(n135), .Y(n56) );
  NOR2X1 U130 ( .A(n138), .B(n135), .Y(n55) );
  NOR2X1 U131 ( .A(n137), .B(n135), .Y(n54) );
  NOR2X1 U132 ( .A(n136), .B(n135), .Y(n53) );
endmodule


module RFILE_DW_mult_uns_2 ( a, b, product );
  input [6:0] a;
  input [11:0] b;
  output [18:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n19, n20, n21, n22, n23,
         n24, n25, n27, n28, n29, n30, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n65, n66, n67, n68, n69,
         n70, n71, n72, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298;

  ADDFXL U3 ( .A(n21), .B(n23), .CI(n3), .CO(n2), .S(product[15]) );
  ADDFXL U4 ( .A(n24), .B(n28), .CI(n4), .CO(n3), .S(product[14]) );
  ADDFXL U5 ( .A(n29), .B(n33), .CI(n5), .CO(n4), .S(product[13]) );
  ADDFXL U6 ( .A(n34), .B(n36), .CI(n6), .CO(n5), .S(product[12]) );
  ADDFXL U7 ( .A(n37), .B(n39), .CI(n7), .CO(n6), .S(product[11]) );
  ADDFXL U8 ( .A(n40), .B(n42), .CI(n8), .CO(n7), .S(product[10]) );
  ADDFXL U9 ( .A(n43), .B(n45), .CI(n9), .CO(n8), .S(product[9]) );
  ADDFXL U10 ( .A(n46), .B(n48), .CI(n10), .CO(n9), .S(product[8]) );
  ADDFXL U11 ( .A(n49), .B(n51), .CI(n11), .CO(n10), .S(product[7]) );
  CMPR42X1 U20 ( .A(n25), .B(n65), .C(n74), .D(n86), .ICI(n22), .S(n21), .ICO(
        n19), .CO(n20) );
  CMPR42X1 U21 ( .A(n87), .B(n30), .C(n75), .D(n224), .ICI(n27), .S(n24), 
        .ICO(n22), .CO(n23) );
  CMPR42X1 U23 ( .A(n88), .B(n76), .C(n226), .D(n241), .ICI(n32), .S(n29), 
        .ICO(n27), .CO(n28) );
  CMPR42X1 U25 ( .A(n101), .B(n66), .C(n77), .D(n89), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U26 ( .A(n67), .B(n102), .C(n90), .D(n78), .ICI(n38), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U27 ( .A(n68), .B(n103), .C(n91), .D(n79), .ICI(n41), .S(n40), 
        .ICO(n38), .CO(n39) );
  CMPR42X1 U28 ( .A(n69), .B(n104), .C(n92), .D(n80), .ICI(n44), .S(n43), 
        .ICO(n41), .CO(n42) );
  CMPR42X1 U29 ( .A(n70), .B(n105), .C(n93), .D(n81), .ICI(n47), .S(n46), 
        .ICO(n44), .CO(n45) );
  CMPR42X1 U30 ( .A(n71), .B(n106), .C(n94), .D(n82), .ICI(n50), .S(n49), 
        .ICO(n47), .CO(n48) );
  CMPR42X1 U31 ( .A(n72), .B(n107), .C(n83), .D(n95), .ICI(n55), .S(n52), 
        .ICO(n50), .CO(n51) );
  ADDFXL U32 ( .A(n84), .B(n108), .CI(n56), .CO(n53), .S(n54) );
  ADDHXL U33 ( .A(n61), .B(n96), .CO(n55), .S(n56) );
  ADDFXL U34 ( .A(n109), .B(n85), .CI(n97), .CO(n57), .S(n58) );
  ADDHXL U35 ( .A(n62), .B(n110), .CO(n59), .S(n60) );
  CLKINVX1 U168 ( .A(n58), .Y(n232) );
  CLKINVX1 U169 ( .A(n59), .Y(n234) );
  CLKINVX1 U170 ( .A(n53), .Y(n230) );
  CLKINVX1 U171 ( .A(n52), .Y(n228) );
  CLKINVX1 U172 ( .A(n30), .Y(n226) );
  CLKINVX1 U173 ( .A(n25), .Y(n224) );
  CLKINVX1 U174 ( .A(b[0]), .Y(n238) );
  CLKINVX1 U175 ( .A(b[2]), .Y(n236) );
  CLKINVX1 U176 ( .A(b[3]), .Y(n235) );
  CLKINVX1 U177 ( .A(b[4]), .Y(n233) );
  CLKINVX1 U178 ( .A(b[5]), .Y(n231) );
  CLKINVX1 U179 ( .A(b[6]), .Y(n229) );
  CLKINVX1 U180 ( .A(b[1]), .Y(n237) );
  XOR2X1 U181 ( .A(a[2]), .B(n241), .Y(n255) );
  XOR2X1 U182 ( .A(a[4]), .B(n240), .Y(n252) );
  XOR2X1 U183 ( .A(a[6]), .B(n239), .Y(n249) );
  NAND2X1 U184 ( .A(n255), .B(n287), .Y(n254) );
  NAND2X1 U185 ( .A(n252), .B(n277), .Y(n251) );
  NAND2X1 U186 ( .A(a[1]), .B(n242), .Y(n279) );
  CLKINVX1 U187 ( .A(a[1]), .Y(n241) );
  CLKINVX1 U188 ( .A(a[3]), .Y(n240) );
  CLKINVX1 U189 ( .A(a[0]), .Y(n242) );
  CLKINVX1 U190 ( .A(a[5]), .Y(n239) );
  CLKINVX1 U191 ( .A(b[7]), .Y(n227) );
  CLKINVX1 U192 ( .A(b[8]), .Y(n225) );
  CLKINVX1 U193 ( .A(b[9]), .Y(n223) );
  CLKINVX1 U194 ( .A(b[10]), .Y(n222) );
  XOR2X1 U195 ( .A(n243), .B(n244), .Y(product[16]) );
  XOR2X1 U196 ( .A(n19), .B(n245), .Y(n244) );
  XOR2X1 U197 ( .A(n20), .B(n2), .Y(n245) );
  XNOR2X1 U198 ( .A(n246), .B(n247), .Y(n243) );
  OAI22XL U199 ( .A0(n248), .A1(n223), .B0(n249), .B1(n222), .Y(n247) );
  OAI22XL U200 ( .A0(n250), .A1(n251), .B0(n252), .B1(n239), .Y(n246) );
  OAI22XL U201 ( .A0(n253), .A1(n254), .B0(n255), .B1(n256), .Y(n97) );
  OAI22XL U202 ( .A0(n256), .A1(n254), .B0(n255), .B1(n257), .Y(n96) );
  XOR2X1 U203 ( .A(n236), .B(a[3]), .Y(n256) );
  OAI22XL U204 ( .A0(n257), .A1(n254), .B0(n255), .B1(n258), .Y(n95) );
  XOR2X1 U205 ( .A(n235), .B(a[3]), .Y(n257) );
  OAI22XL U206 ( .A0(n258), .A1(n254), .B0(n255), .B1(n259), .Y(n94) );
  XOR2X1 U207 ( .A(n233), .B(a[3]), .Y(n258) );
  OAI22XL U208 ( .A0(n259), .A1(n254), .B0(n255), .B1(n260), .Y(n93) );
  XOR2X1 U209 ( .A(n231), .B(a[3]), .Y(n259) );
  OAI22XL U210 ( .A0(n260), .A1(n254), .B0(n255), .B1(n261), .Y(n92) );
  XOR2X1 U211 ( .A(n229), .B(a[3]), .Y(n260) );
  OAI22XL U212 ( .A0(n261), .A1(n254), .B0(n255), .B1(n262), .Y(n91) );
  XOR2X1 U213 ( .A(n227), .B(a[3]), .Y(n261) );
  OAI22XL U214 ( .A0(n262), .A1(n254), .B0(n255), .B1(n263), .Y(n90) );
  XOR2X1 U215 ( .A(n225), .B(a[3]), .Y(n262) );
  OAI22XL U216 ( .A0(n263), .A1(n254), .B0(n255), .B1(n264), .Y(n89) );
  XOR2X1 U217 ( .A(n223), .B(a[3]), .Y(n263) );
  OAI22XL U218 ( .A0(n264), .A1(n254), .B0(n255), .B1(n265), .Y(n88) );
  XOR2X1 U219 ( .A(n222), .B(a[3]), .Y(n264) );
  OAI22XL U220 ( .A0(n265), .A1(n254), .B0(n255), .B1(n240), .Y(n87) );
  XOR2X1 U221 ( .A(b[11]), .B(n240), .Y(n265) );
  AO21X1 U222 ( .A0(n254), .A1(n255), .B0(n240), .Y(n86) );
  NOR2X1 U223 ( .A(n252), .B(n238), .Y(n85) );
  OAI22XL U224 ( .A0(n266), .A1(n251), .B0(n252), .B1(n267), .Y(n84) );
  XOR2X1 U225 ( .A(n238), .B(a[5]), .Y(n266) );
  OAI22XL U226 ( .A0(n267), .A1(n251), .B0(n252), .B1(n268), .Y(n83) );
  XOR2X1 U227 ( .A(n237), .B(a[5]), .Y(n267) );
  OAI22XL U228 ( .A0(n268), .A1(n251), .B0(n252), .B1(n269), .Y(n82) );
  XOR2X1 U229 ( .A(n236), .B(a[5]), .Y(n268) );
  OAI22XL U230 ( .A0(n269), .A1(n251), .B0(n252), .B1(n270), .Y(n81) );
  XOR2X1 U231 ( .A(n235), .B(a[5]), .Y(n269) );
  OAI22XL U232 ( .A0(n270), .A1(n251), .B0(n252), .B1(n271), .Y(n80) );
  XOR2X1 U233 ( .A(n233), .B(a[5]), .Y(n270) );
  OAI22XL U234 ( .A0(n271), .A1(n251), .B0(n252), .B1(n272), .Y(n79) );
  XOR2X1 U235 ( .A(n231), .B(a[5]), .Y(n271) );
  OAI22XL U236 ( .A0(n272), .A1(n251), .B0(n252), .B1(n273), .Y(n78) );
  XOR2X1 U237 ( .A(n229), .B(a[5]), .Y(n272) );
  OAI22XL U238 ( .A0(n273), .A1(n251), .B0(n252), .B1(n274), .Y(n77) );
  XOR2X1 U239 ( .A(n227), .B(a[5]), .Y(n273) );
  OAI22XL U240 ( .A0(n274), .A1(n251), .B0(n252), .B1(n275), .Y(n76) );
  XOR2X1 U241 ( .A(n225), .B(a[5]), .Y(n274) );
  OAI22XL U242 ( .A0(n275), .A1(n251), .B0(n252), .B1(n276), .Y(n75) );
  XOR2X1 U243 ( .A(n223), .B(a[5]), .Y(n275) );
  OAI22XL U244 ( .A0(n276), .A1(n251), .B0(n252), .B1(n250), .Y(n74) );
  XOR2X1 U245 ( .A(b[11]), .B(n239), .Y(n250) );
  XOR2X1 U246 ( .A(n222), .B(a[5]), .Y(n276) );
  NOR2X1 U247 ( .A(n249), .B(n238), .Y(n72) );
  OAI22XL U248 ( .A0(n248), .A1(n238), .B0(n249), .B1(n237), .Y(n71) );
  OAI22XL U249 ( .A0(n248), .A1(n237), .B0(n249), .B1(n236), .Y(n70) );
  OAI22XL U250 ( .A0(n248), .A1(n236), .B0(n249), .B1(n235), .Y(n69) );
  OAI22XL U251 ( .A0(n248), .A1(n235), .B0(n249), .B1(n233), .Y(n68) );
  OAI22XL U252 ( .A0(n248), .A1(n233), .B0(n249), .B1(n231), .Y(n67) );
  OAI22XL U253 ( .A0(n248), .A1(n231), .B0(n249), .B1(n229), .Y(n66) );
  OAI22XL U254 ( .A0(n248), .A1(n225), .B0(n249), .B1(n223), .Y(n65) );
  OAI32X1 U255 ( .A0(n240), .A1(b[0]), .A2(n255), .B0(n240), .B1(n254), .Y(n62) );
  OAI32X1 U256 ( .A0(n239), .A1(b[0]), .A2(n252), .B0(n239), .B1(n251), .Y(n61) );
  XOR2X1 U257 ( .A(a[5]), .B(a[4]), .Y(n277) );
  OAI22XL U258 ( .A0(n248), .A1(n229), .B0(n249), .B1(n227), .Y(n30) );
  OAI22XL U259 ( .A0(n248), .A1(n227), .B0(n249), .B1(n225), .Y(n25) );
  NAND2X1 U260 ( .A(n249), .B(a[6]), .Y(n248) );
  OAI22XL U261 ( .A0(n278), .A1(n279), .B0(n280), .B1(n242), .Y(n110) );
  OAI222XL U262 ( .A0(n281), .A1(n228), .B0(n281), .B1(n230), .C0(n230), .C1(
        n228), .Y(n11) );
  AOI222XL U263 ( .A0(n282), .A1(n54), .B0(n282), .B1(n57), .C0(n57), .C1(n54), 
        .Y(n281) );
  OAI222XL U264 ( .A0(n283), .A1(n232), .B0(n283), .B1(n234), .C0(n234), .C1(
        n232), .Y(n282) );
  AOI222XL U265 ( .A0(n284), .A1(n60), .B0(n285), .B1(n284), .C0(n285), .C1(
        n60), .Y(n283) );
  OAI22XL U266 ( .A0(n286), .A1(n254), .B0(n255), .B1(n253), .Y(n285) );
  XOR2X1 U267 ( .A(n237), .B(a[3]), .Y(n253) );
  XOR2X1 U268 ( .A(a[3]), .B(a[2]), .Y(n287) );
  XOR2X1 U269 ( .A(n238), .B(a[3]), .Y(n286) );
  CLKMX2X2 U270 ( .A(n288), .B(n289), .S0(n238), .Y(n284) );
  NOR3X1 U271 ( .A(n241), .B(b[1]), .C(n290), .Y(n289) );
  NOR2X1 U272 ( .A(n290), .B(n255), .Y(n288) );
  OA22X1 U273 ( .A0(b[1]), .A1(n279), .B0(n278), .B1(n242), .Y(n290) );
  XOR2X1 U274 ( .A(n236), .B(a[1]), .Y(n278) );
  OAI22XL U275 ( .A0(n280), .A1(n279), .B0(n291), .B1(n242), .Y(n109) );
  XOR2X1 U276 ( .A(n235), .B(a[1]), .Y(n280) );
  OAI22XL U277 ( .A0(n291), .A1(n279), .B0(n292), .B1(n242), .Y(n108) );
  XOR2X1 U278 ( .A(n233), .B(a[1]), .Y(n291) );
  OAI22XL U279 ( .A0(n292), .A1(n279), .B0(n293), .B1(n242), .Y(n107) );
  XOR2X1 U280 ( .A(n231), .B(a[1]), .Y(n292) );
  OAI22XL U281 ( .A0(n293), .A1(n279), .B0(n294), .B1(n242), .Y(n106) );
  XOR2X1 U282 ( .A(n229), .B(a[1]), .Y(n293) );
  OAI22XL U283 ( .A0(n294), .A1(n279), .B0(n295), .B1(n242), .Y(n105) );
  XOR2X1 U284 ( .A(n227), .B(a[1]), .Y(n294) );
  OAI22XL U285 ( .A0(n295), .A1(n279), .B0(n296), .B1(n242), .Y(n104) );
  XOR2X1 U286 ( .A(n225), .B(a[1]), .Y(n295) );
  OAI22XL U287 ( .A0(n296), .A1(n279), .B0(n297), .B1(n242), .Y(n103) );
  XOR2X1 U288 ( .A(n223), .B(a[1]), .Y(n296) );
  OAI22XL U289 ( .A0(n297), .A1(n279), .B0(n298), .B1(n242), .Y(n102) );
  XOR2X1 U290 ( .A(n222), .B(a[1]), .Y(n297) );
  OAI22XL U291 ( .A0(n298), .A1(n279), .B0(n241), .B1(n242), .Y(n101) );
  XOR2X1 U292 ( .A(b[11]), .B(n241), .Y(n298) );
endmodule


module RFILE_DW_mult_uns_1 ( a, b, product );
  input [6:0] a;
  input [11:0] b;
  output [18:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n19, n20, n21, n22, n23,
         n24, n25, n27, n28, n29, n30, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n65, n66, n67, n68, n69,
         n70, n71, n72, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298;

  ADDFXL U3 ( .A(n21), .B(n23), .CI(n3), .CO(n2), .S(product[15]) );
  ADDFXL U4 ( .A(n24), .B(n28), .CI(n4), .CO(n3), .S(product[14]) );
  ADDFXL U5 ( .A(n29), .B(n33), .CI(n5), .CO(n4), .S(product[13]) );
  ADDFXL U6 ( .A(n34), .B(n36), .CI(n6), .CO(n5), .S(product[12]) );
  ADDFXL U7 ( .A(n37), .B(n39), .CI(n7), .CO(n6), .S(product[11]) );
  ADDFXL U8 ( .A(n40), .B(n42), .CI(n8), .CO(n7), .S(product[10]) );
  ADDFXL U9 ( .A(n43), .B(n45), .CI(n9), .CO(n8), .S(product[9]) );
  ADDFXL U10 ( .A(n46), .B(n48), .CI(n10), .CO(n9), .S(product[8]) );
  ADDFXL U11 ( .A(n49), .B(n51), .CI(n11), .CO(n10), .S(product[7]) );
  CMPR42X1 U20 ( .A(n25), .B(n65), .C(n74), .D(n86), .ICI(n22), .S(n21), .ICO(
        n19), .CO(n20) );
  CMPR42X1 U21 ( .A(n87), .B(n30), .C(n75), .D(n224), .ICI(n27), .S(n24), 
        .ICO(n22), .CO(n23) );
  CMPR42X1 U23 ( .A(n88), .B(n76), .C(n226), .D(n241), .ICI(n32), .S(n29), 
        .ICO(n27), .CO(n28) );
  CMPR42X1 U25 ( .A(n101), .B(n66), .C(n77), .D(n89), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U26 ( .A(n67), .B(n102), .C(n90), .D(n78), .ICI(n38), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U27 ( .A(n68), .B(n103), .C(n91), .D(n79), .ICI(n41), .S(n40), 
        .ICO(n38), .CO(n39) );
  CMPR42X1 U28 ( .A(n69), .B(n104), .C(n92), .D(n80), .ICI(n44), .S(n43), 
        .ICO(n41), .CO(n42) );
  CMPR42X1 U29 ( .A(n70), .B(n105), .C(n93), .D(n81), .ICI(n47), .S(n46), 
        .ICO(n44), .CO(n45) );
  CMPR42X1 U30 ( .A(n71), .B(n106), .C(n94), .D(n82), .ICI(n50), .S(n49), 
        .ICO(n47), .CO(n48) );
  CMPR42X1 U31 ( .A(n72), .B(n107), .C(n83), .D(n95), .ICI(n55), .S(n52), 
        .ICO(n50), .CO(n51) );
  ADDFXL U32 ( .A(n84), .B(n108), .CI(n56), .CO(n53), .S(n54) );
  ADDHXL U33 ( .A(n61), .B(n96), .CO(n55), .S(n56) );
  ADDFXL U34 ( .A(n109), .B(n85), .CI(n97), .CO(n57), .S(n58) );
  ADDHXL U35 ( .A(n62), .B(n110), .CO(n59), .S(n60) );
  CLKINVX1 U168 ( .A(n58), .Y(n232) );
  CLKINVX1 U169 ( .A(n59), .Y(n234) );
  CLKINVX1 U170 ( .A(n53), .Y(n230) );
  CLKINVX1 U171 ( .A(n52), .Y(n228) );
  CLKINVX1 U172 ( .A(n30), .Y(n226) );
  CLKINVX1 U173 ( .A(n25), .Y(n224) );
  CLKINVX1 U174 ( .A(b[0]), .Y(n238) );
  CLKINVX1 U175 ( .A(b[2]), .Y(n236) );
  CLKINVX1 U176 ( .A(b[3]), .Y(n235) );
  CLKINVX1 U177 ( .A(b[4]), .Y(n233) );
  CLKINVX1 U178 ( .A(b[5]), .Y(n231) );
  CLKINVX1 U179 ( .A(b[6]), .Y(n229) );
  CLKINVX1 U180 ( .A(b[1]), .Y(n237) );
  XOR2X1 U181 ( .A(a[2]), .B(n241), .Y(n255) );
  XOR2X1 U182 ( .A(a[4]), .B(n240), .Y(n252) );
  XOR2X1 U183 ( .A(a[6]), .B(n239), .Y(n249) );
  NAND2X1 U184 ( .A(n255), .B(n287), .Y(n254) );
  NAND2X1 U185 ( .A(n252), .B(n277), .Y(n251) );
  NAND2X1 U186 ( .A(a[1]), .B(n242), .Y(n279) );
  CLKINVX1 U187 ( .A(a[1]), .Y(n241) );
  CLKINVX1 U188 ( .A(a[3]), .Y(n240) );
  CLKINVX1 U189 ( .A(a[0]), .Y(n242) );
  CLKINVX1 U190 ( .A(a[5]), .Y(n239) );
  CLKINVX1 U191 ( .A(b[7]), .Y(n227) );
  CLKINVX1 U192 ( .A(b[8]), .Y(n225) );
  CLKINVX1 U193 ( .A(b[9]), .Y(n223) );
  CLKINVX1 U194 ( .A(b[10]), .Y(n222) );
  XOR2X1 U195 ( .A(n243), .B(n244), .Y(product[16]) );
  XOR2X1 U196 ( .A(n19), .B(n245), .Y(n244) );
  XOR2X1 U197 ( .A(n20), .B(n2), .Y(n245) );
  XNOR2X1 U198 ( .A(n246), .B(n247), .Y(n243) );
  OAI22XL U199 ( .A0(n248), .A1(n223), .B0(n249), .B1(n222), .Y(n247) );
  OAI22XL U200 ( .A0(n250), .A1(n251), .B0(n252), .B1(n239), .Y(n246) );
  OAI22XL U201 ( .A0(n253), .A1(n254), .B0(n255), .B1(n256), .Y(n97) );
  OAI22XL U202 ( .A0(n256), .A1(n254), .B0(n255), .B1(n257), .Y(n96) );
  XOR2X1 U203 ( .A(n236), .B(a[3]), .Y(n256) );
  OAI22XL U204 ( .A0(n257), .A1(n254), .B0(n255), .B1(n258), .Y(n95) );
  XOR2X1 U205 ( .A(n235), .B(a[3]), .Y(n257) );
  OAI22XL U206 ( .A0(n258), .A1(n254), .B0(n255), .B1(n259), .Y(n94) );
  XOR2X1 U207 ( .A(n233), .B(a[3]), .Y(n258) );
  OAI22XL U208 ( .A0(n259), .A1(n254), .B0(n255), .B1(n260), .Y(n93) );
  XOR2X1 U209 ( .A(n231), .B(a[3]), .Y(n259) );
  OAI22XL U210 ( .A0(n260), .A1(n254), .B0(n255), .B1(n261), .Y(n92) );
  XOR2X1 U211 ( .A(n229), .B(a[3]), .Y(n260) );
  OAI22XL U212 ( .A0(n261), .A1(n254), .B0(n255), .B1(n262), .Y(n91) );
  XOR2X1 U213 ( .A(n227), .B(a[3]), .Y(n261) );
  OAI22XL U214 ( .A0(n262), .A1(n254), .B0(n255), .B1(n263), .Y(n90) );
  XOR2X1 U215 ( .A(n225), .B(a[3]), .Y(n262) );
  OAI22XL U216 ( .A0(n263), .A1(n254), .B0(n255), .B1(n264), .Y(n89) );
  XOR2X1 U217 ( .A(n223), .B(a[3]), .Y(n263) );
  OAI22XL U218 ( .A0(n264), .A1(n254), .B0(n255), .B1(n265), .Y(n88) );
  XOR2X1 U219 ( .A(n222), .B(a[3]), .Y(n264) );
  OAI22XL U220 ( .A0(n265), .A1(n254), .B0(n255), .B1(n240), .Y(n87) );
  XOR2X1 U221 ( .A(b[11]), .B(n240), .Y(n265) );
  AO21X1 U222 ( .A0(n254), .A1(n255), .B0(n240), .Y(n86) );
  NOR2X1 U223 ( .A(n252), .B(n238), .Y(n85) );
  OAI22XL U224 ( .A0(n266), .A1(n251), .B0(n252), .B1(n267), .Y(n84) );
  XOR2X1 U225 ( .A(n238), .B(a[5]), .Y(n266) );
  OAI22XL U226 ( .A0(n267), .A1(n251), .B0(n252), .B1(n268), .Y(n83) );
  XOR2X1 U227 ( .A(n237), .B(a[5]), .Y(n267) );
  OAI22XL U228 ( .A0(n268), .A1(n251), .B0(n252), .B1(n269), .Y(n82) );
  XOR2X1 U229 ( .A(n236), .B(a[5]), .Y(n268) );
  OAI22XL U230 ( .A0(n269), .A1(n251), .B0(n252), .B1(n270), .Y(n81) );
  XOR2X1 U231 ( .A(n235), .B(a[5]), .Y(n269) );
  OAI22XL U232 ( .A0(n270), .A1(n251), .B0(n252), .B1(n271), .Y(n80) );
  XOR2X1 U233 ( .A(n233), .B(a[5]), .Y(n270) );
  OAI22XL U234 ( .A0(n271), .A1(n251), .B0(n252), .B1(n272), .Y(n79) );
  XOR2X1 U235 ( .A(n231), .B(a[5]), .Y(n271) );
  OAI22XL U236 ( .A0(n272), .A1(n251), .B0(n252), .B1(n273), .Y(n78) );
  XOR2X1 U237 ( .A(n229), .B(a[5]), .Y(n272) );
  OAI22XL U238 ( .A0(n273), .A1(n251), .B0(n252), .B1(n274), .Y(n77) );
  XOR2X1 U239 ( .A(n227), .B(a[5]), .Y(n273) );
  OAI22XL U240 ( .A0(n274), .A1(n251), .B0(n252), .B1(n275), .Y(n76) );
  XOR2X1 U241 ( .A(n225), .B(a[5]), .Y(n274) );
  OAI22XL U242 ( .A0(n275), .A1(n251), .B0(n252), .B1(n276), .Y(n75) );
  XOR2X1 U243 ( .A(n223), .B(a[5]), .Y(n275) );
  OAI22XL U244 ( .A0(n276), .A1(n251), .B0(n252), .B1(n250), .Y(n74) );
  XOR2X1 U245 ( .A(b[11]), .B(n239), .Y(n250) );
  XOR2X1 U246 ( .A(n222), .B(a[5]), .Y(n276) );
  NOR2X1 U247 ( .A(n249), .B(n238), .Y(n72) );
  OAI22XL U248 ( .A0(n248), .A1(n238), .B0(n249), .B1(n237), .Y(n71) );
  OAI22XL U249 ( .A0(n248), .A1(n237), .B0(n249), .B1(n236), .Y(n70) );
  OAI22XL U250 ( .A0(n248), .A1(n236), .B0(n249), .B1(n235), .Y(n69) );
  OAI22XL U251 ( .A0(n248), .A1(n235), .B0(n249), .B1(n233), .Y(n68) );
  OAI22XL U252 ( .A0(n248), .A1(n233), .B0(n249), .B1(n231), .Y(n67) );
  OAI22XL U253 ( .A0(n248), .A1(n231), .B0(n249), .B1(n229), .Y(n66) );
  OAI22XL U254 ( .A0(n248), .A1(n225), .B0(n249), .B1(n223), .Y(n65) );
  OAI32X1 U255 ( .A0(n240), .A1(b[0]), .A2(n255), .B0(n240), .B1(n254), .Y(n62) );
  OAI32X1 U256 ( .A0(n239), .A1(b[0]), .A2(n252), .B0(n239), .B1(n251), .Y(n61) );
  XOR2X1 U257 ( .A(a[5]), .B(a[4]), .Y(n277) );
  OAI22XL U258 ( .A0(n248), .A1(n229), .B0(n249), .B1(n227), .Y(n30) );
  OAI22XL U259 ( .A0(n248), .A1(n227), .B0(n249), .B1(n225), .Y(n25) );
  NAND2X1 U260 ( .A(n249), .B(a[6]), .Y(n248) );
  OAI22XL U261 ( .A0(n278), .A1(n279), .B0(n280), .B1(n242), .Y(n110) );
  OAI222XL U262 ( .A0(n281), .A1(n228), .B0(n281), .B1(n230), .C0(n230), .C1(
        n228), .Y(n11) );
  AOI222XL U263 ( .A0(n282), .A1(n54), .B0(n282), .B1(n57), .C0(n57), .C1(n54), 
        .Y(n281) );
  OAI222XL U264 ( .A0(n283), .A1(n232), .B0(n283), .B1(n234), .C0(n234), .C1(
        n232), .Y(n282) );
  AOI222XL U265 ( .A0(n284), .A1(n60), .B0(n285), .B1(n284), .C0(n285), .C1(
        n60), .Y(n283) );
  OAI22XL U266 ( .A0(n286), .A1(n254), .B0(n255), .B1(n253), .Y(n285) );
  XOR2X1 U267 ( .A(n237), .B(a[3]), .Y(n253) );
  XOR2X1 U268 ( .A(a[3]), .B(a[2]), .Y(n287) );
  XOR2X1 U269 ( .A(n238), .B(a[3]), .Y(n286) );
  CLKMX2X2 U270 ( .A(n288), .B(n289), .S0(n238), .Y(n284) );
  NOR3X1 U271 ( .A(n241), .B(b[1]), .C(n290), .Y(n289) );
  NOR2X1 U272 ( .A(n290), .B(n255), .Y(n288) );
  OA22X1 U273 ( .A0(b[1]), .A1(n279), .B0(n278), .B1(n242), .Y(n290) );
  XOR2X1 U274 ( .A(n236), .B(a[1]), .Y(n278) );
  OAI22XL U275 ( .A0(n280), .A1(n279), .B0(n291), .B1(n242), .Y(n109) );
  XOR2X1 U276 ( .A(n235), .B(a[1]), .Y(n280) );
  OAI22XL U277 ( .A0(n291), .A1(n279), .B0(n292), .B1(n242), .Y(n108) );
  XOR2X1 U278 ( .A(n233), .B(a[1]), .Y(n291) );
  OAI22XL U279 ( .A0(n292), .A1(n279), .B0(n293), .B1(n242), .Y(n107) );
  XOR2X1 U280 ( .A(n231), .B(a[1]), .Y(n292) );
  OAI22XL U281 ( .A0(n293), .A1(n279), .B0(n294), .B1(n242), .Y(n106) );
  XOR2X1 U282 ( .A(n229), .B(a[1]), .Y(n293) );
  OAI22XL U283 ( .A0(n294), .A1(n279), .B0(n295), .B1(n242), .Y(n105) );
  XOR2X1 U284 ( .A(n227), .B(a[1]), .Y(n294) );
  OAI22XL U285 ( .A0(n295), .A1(n279), .B0(n296), .B1(n242), .Y(n104) );
  XOR2X1 U286 ( .A(n225), .B(a[1]), .Y(n295) );
  OAI22XL U287 ( .A0(n296), .A1(n279), .B0(n297), .B1(n242), .Y(n103) );
  XOR2X1 U288 ( .A(n223), .B(a[1]), .Y(n296) );
  OAI22XL U289 ( .A0(n297), .A1(n279), .B0(n298), .B1(n242), .Y(n102) );
  XOR2X1 U290 ( .A(n222), .B(a[1]), .Y(n297) );
  OAI22XL U291 ( .A0(n298), .A1(n279), .B0(n241), .B1(n242), .Y(n101) );
  XOR2X1 U292 ( .A(b[11]), .B(n241), .Y(n298) );
endmodule


module RFILE_DW_mult_uns_0 ( a, b, product );
  input [6:0] a;
  input [11:0] b;
  output [18:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n19, n20, n21, n22, n23,
         n24, n25, n27, n28, n29, n30, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n65, n66, n67, n68, n69,
         n70, n71, n72, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298;

  ADDFXL U3 ( .A(n21), .B(n23), .CI(n3), .CO(n2), .S(product[15]) );
  ADDFXL U4 ( .A(n24), .B(n28), .CI(n4), .CO(n3), .S(product[14]) );
  ADDFXL U5 ( .A(n29), .B(n33), .CI(n5), .CO(n4), .S(product[13]) );
  ADDFXL U6 ( .A(n34), .B(n36), .CI(n6), .CO(n5), .S(product[12]) );
  ADDFXL U7 ( .A(n37), .B(n39), .CI(n7), .CO(n6), .S(product[11]) );
  ADDFXL U8 ( .A(n40), .B(n42), .CI(n8), .CO(n7), .S(product[10]) );
  ADDFXL U9 ( .A(n43), .B(n45), .CI(n9), .CO(n8), .S(product[9]) );
  ADDFXL U10 ( .A(n46), .B(n48), .CI(n10), .CO(n9), .S(product[8]) );
  ADDFXL U11 ( .A(n49), .B(n51), .CI(n11), .CO(n10), .S(product[7]) );
  CMPR42X1 U20 ( .A(n25), .B(n65), .C(n74), .D(n86), .ICI(n22), .S(n21), .ICO(
        n19), .CO(n20) );
  CMPR42X1 U21 ( .A(n87), .B(n30), .C(n75), .D(n224), .ICI(n27), .S(n24), 
        .ICO(n22), .CO(n23) );
  CMPR42X1 U23 ( .A(n88), .B(n76), .C(n226), .D(n241), .ICI(n32), .S(n29), 
        .ICO(n27), .CO(n28) );
  CMPR42X1 U25 ( .A(n101), .B(n66), .C(n77), .D(n89), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U26 ( .A(n67), .B(n102), .C(n90), .D(n78), .ICI(n38), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U27 ( .A(n68), .B(n103), .C(n91), .D(n79), .ICI(n41), .S(n40), 
        .ICO(n38), .CO(n39) );
  CMPR42X1 U28 ( .A(n69), .B(n104), .C(n92), .D(n80), .ICI(n44), .S(n43), 
        .ICO(n41), .CO(n42) );
  CMPR42X1 U29 ( .A(n70), .B(n105), .C(n93), .D(n81), .ICI(n47), .S(n46), 
        .ICO(n44), .CO(n45) );
  CMPR42X1 U30 ( .A(n71), .B(n106), .C(n94), .D(n82), .ICI(n50), .S(n49), 
        .ICO(n47), .CO(n48) );
  CMPR42X1 U31 ( .A(n72), .B(n107), .C(n83), .D(n95), .ICI(n55), .S(n52), 
        .ICO(n50), .CO(n51) );
  ADDFXL U32 ( .A(n84), .B(n108), .CI(n56), .CO(n53), .S(n54) );
  ADDHXL U33 ( .A(n61), .B(n96), .CO(n55), .S(n56) );
  ADDFXL U34 ( .A(n109), .B(n85), .CI(n97), .CO(n57), .S(n58) );
  ADDHXL U35 ( .A(n62), .B(n110), .CO(n59), .S(n60) );
  CLKINVX1 U168 ( .A(n58), .Y(n232) );
  CLKINVX1 U169 ( .A(n59), .Y(n234) );
  CLKINVX1 U170 ( .A(n53), .Y(n230) );
  CLKINVX1 U171 ( .A(n52), .Y(n228) );
  CLKINVX1 U172 ( .A(n30), .Y(n226) );
  CLKINVX1 U173 ( .A(n25), .Y(n224) );
  CLKINVX1 U174 ( .A(b[0]), .Y(n238) );
  CLKINVX1 U175 ( .A(b[2]), .Y(n236) );
  CLKINVX1 U176 ( .A(b[3]), .Y(n235) );
  CLKINVX1 U177 ( .A(b[4]), .Y(n233) );
  CLKINVX1 U178 ( .A(b[5]), .Y(n231) );
  CLKINVX1 U179 ( .A(b[6]), .Y(n229) );
  CLKINVX1 U180 ( .A(b[1]), .Y(n237) );
  XOR2X1 U181 ( .A(a[2]), .B(n241), .Y(n255) );
  XOR2X1 U182 ( .A(a[4]), .B(n240), .Y(n252) );
  XOR2X1 U183 ( .A(a[6]), .B(n239), .Y(n249) );
  NAND2X1 U184 ( .A(n255), .B(n287), .Y(n254) );
  NAND2X1 U185 ( .A(n252), .B(n277), .Y(n251) );
  NAND2X1 U186 ( .A(a[1]), .B(n242), .Y(n279) );
  CLKINVX1 U187 ( .A(a[1]), .Y(n241) );
  CLKINVX1 U188 ( .A(a[3]), .Y(n240) );
  CLKINVX1 U189 ( .A(a[0]), .Y(n242) );
  CLKINVX1 U190 ( .A(a[5]), .Y(n239) );
  CLKINVX1 U191 ( .A(b[7]), .Y(n227) );
  CLKINVX1 U192 ( .A(b[8]), .Y(n225) );
  CLKINVX1 U193 ( .A(b[9]), .Y(n223) );
  CLKINVX1 U194 ( .A(b[10]), .Y(n222) );
  XOR2X1 U195 ( .A(n243), .B(n244), .Y(product[16]) );
  XOR2X1 U196 ( .A(n19), .B(n245), .Y(n244) );
  XOR2X1 U197 ( .A(n20), .B(n2), .Y(n245) );
  XNOR2X1 U198 ( .A(n246), .B(n247), .Y(n243) );
  OAI22XL U199 ( .A0(n248), .A1(n223), .B0(n249), .B1(n222), .Y(n247) );
  OAI22XL U200 ( .A0(n250), .A1(n251), .B0(n252), .B1(n239), .Y(n246) );
  OAI22XL U201 ( .A0(n253), .A1(n254), .B0(n255), .B1(n256), .Y(n97) );
  OAI22XL U202 ( .A0(n256), .A1(n254), .B0(n255), .B1(n257), .Y(n96) );
  XOR2X1 U203 ( .A(n236), .B(a[3]), .Y(n256) );
  OAI22XL U204 ( .A0(n257), .A1(n254), .B0(n255), .B1(n258), .Y(n95) );
  XOR2X1 U205 ( .A(n235), .B(a[3]), .Y(n257) );
  OAI22XL U206 ( .A0(n258), .A1(n254), .B0(n255), .B1(n259), .Y(n94) );
  XOR2X1 U207 ( .A(n233), .B(a[3]), .Y(n258) );
  OAI22XL U208 ( .A0(n259), .A1(n254), .B0(n255), .B1(n260), .Y(n93) );
  XOR2X1 U209 ( .A(n231), .B(a[3]), .Y(n259) );
  OAI22XL U210 ( .A0(n260), .A1(n254), .B0(n255), .B1(n261), .Y(n92) );
  XOR2X1 U211 ( .A(n229), .B(a[3]), .Y(n260) );
  OAI22XL U212 ( .A0(n261), .A1(n254), .B0(n255), .B1(n262), .Y(n91) );
  XOR2X1 U213 ( .A(n227), .B(a[3]), .Y(n261) );
  OAI22XL U214 ( .A0(n262), .A1(n254), .B0(n255), .B1(n263), .Y(n90) );
  XOR2X1 U215 ( .A(n225), .B(a[3]), .Y(n262) );
  OAI22XL U216 ( .A0(n263), .A1(n254), .B0(n255), .B1(n264), .Y(n89) );
  XOR2X1 U217 ( .A(n223), .B(a[3]), .Y(n263) );
  OAI22XL U218 ( .A0(n264), .A1(n254), .B0(n255), .B1(n265), .Y(n88) );
  XOR2X1 U219 ( .A(n222), .B(a[3]), .Y(n264) );
  OAI22XL U220 ( .A0(n265), .A1(n254), .B0(n255), .B1(n240), .Y(n87) );
  XOR2X1 U221 ( .A(b[11]), .B(n240), .Y(n265) );
  AO21X1 U222 ( .A0(n254), .A1(n255), .B0(n240), .Y(n86) );
  NOR2X1 U223 ( .A(n252), .B(n238), .Y(n85) );
  OAI22XL U224 ( .A0(n266), .A1(n251), .B0(n252), .B1(n267), .Y(n84) );
  XOR2X1 U225 ( .A(n238), .B(a[5]), .Y(n266) );
  OAI22XL U226 ( .A0(n267), .A1(n251), .B0(n252), .B1(n268), .Y(n83) );
  XOR2X1 U227 ( .A(n237), .B(a[5]), .Y(n267) );
  OAI22XL U228 ( .A0(n268), .A1(n251), .B0(n252), .B1(n269), .Y(n82) );
  XOR2X1 U229 ( .A(n236), .B(a[5]), .Y(n268) );
  OAI22XL U230 ( .A0(n269), .A1(n251), .B0(n252), .B1(n270), .Y(n81) );
  XOR2X1 U231 ( .A(n235), .B(a[5]), .Y(n269) );
  OAI22XL U232 ( .A0(n270), .A1(n251), .B0(n252), .B1(n271), .Y(n80) );
  XOR2X1 U233 ( .A(n233), .B(a[5]), .Y(n270) );
  OAI22XL U234 ( .A0(n271), .A1(n251), .B0(n252), .B1(n272), .Y(n79) );
  XOR2X1 U235 ( .A(n231), .B(a[5]), .Y(n271) );
  OAI22XL U236 ( .A0(n272), .A1(n251), .B0(n252), .B1(n273), .Y(n78) );
  XOR2X1 U237 ( .A(n229), .B(a[5]), .Y(n272) );
  OAI22XL U238 ( .A0(n273), .A1(n251), .B0(n252), .B1(n274), .Y(n77) );
  XOR2X1 U239 ( .A(n227), .B(a[5]), .Y(n273) );
  OAI22XL U240 ( .A0(n274), .A1(n251), .B0(n252), .B1(n275), .Y(n76) );
  XOR2X1 U241 ( .A(n225), .B(a[5]), .Y(n274) );
  OAI22XL U242 ( .A0(n275), .A1(n251), .B0(n252), .B1(n276), .Y(n75) );
  XOR2X1 U243 ( .A(n223), .B(a[5]), .Y(n275) );
  OAI22XL U244 ( .A0(n276), .A1(n251), .B0(n252), .B1(n250), .Y(n74) );
  XOR2X1 U245 ( .A(b[11]), .B(n239), .Y(n250) );
  XOR2X1 U246 ( .A(n222), .B(a[5]), .Y(n276) );
  NOR2X1 U247 ( .A(n249), .B(n238), .Y(n72) );
  OAI22XL U248 ( .A0(n248), .A1(n238), .B0(n249), .B1(n237), .Y(n71) );
  OAI22XL U249 ( .A0(n248), .A1(n237), .B0(n249), .B1(n236), .Y(n70) );
  OAI22XL U250 ( .A0(n248), .A1(n236), .B0(n249), .B1(n235), .Y(n69) );
  OAI22XL U251 ( .A0(n248), .A1(n235), .B0(n249), .B1(n233), .Y(n68) );
  OAI22XL U252 ( .A0(n248), .A1(n233), .B0(n249), .B1(n231), .Y(n67) );
  OAI22XL U253 ( .A0(n248), .A1(n231), .B0(n249), .B1(n229), .Y(n66) );
  OAI22XL U254 ( .A0(n248), .A1(n225), .B0(n249), .B1(n223), .Y(n65) );
  OAI32X1 U255 ( .A0(n240), .A1(b[0]), .A2(n255), .B0(n240), .B1(n254), .Y(n62) );
  OAI32X1 U256 ( .A0(n239), .A1(b[0]), .A2(n252), .B0(n239), .B1(n251), .Y(n61) );
  XOR2X1 U257 ( .A(a[5]), .B(a[4]), .Y(n277) );
  OAI22XL U258 ( .A0(n248), .A1(n229), .B0(n249), .B1(n227), .Y(n30) );
  OAI22XL U259 ( .A0(n248), .A1(n227), .B0(n249), .B1(n225), .Y(n25) );
  NAND2X1 U260 ( .A(n249), .B(a[6]), .Y(n248) );
  OAI22XL U261 ( .A0(n278), .A1(n279), .B0(n280), .B1(n242), .Y(n110) );
  OAI222XL U262 ( .A0(n281), .A1(n228), .B0(n281), .B1(n230), .C0(n230), .C1(
        n228), .Y(n11) );
  AOI222XL U263 ( .A0(n282), .A1(n54), .B0(n282), .B1(n57), .C0(n57), .C1(n54), 
        .Y(n281) );
  OAI222XL U264 ( .A0(n283), .A1(n232), .B0(n283), .B1(n234), .C0(n234), .C1(
        n232), .Y(n282) );
  AOI222XL U265 ( .A0(n284), .A1(n60), .B0(n285), .B1(n284), .C0(n285), .C1(
        n60), .Y(n283) );
  OAI22XL U266 ( .A0(n286), .A1(n254), .B0(n255), .B1(n253), .Y(n285) );
  XOR2X1 U267 ( .A(n237), .B(a[3]), .Y(n253) );
  XOR2X1 U268 ( .A(a[3]), .B(a[2]), .Y(n287) );
  XOR2X1 U269 ( .A(n238), .B(a[3]), .Y(n286) );
  CLKMX2X2 U270 ( .A(n288), .B(n289), .S0(n238), .Y(n284) );
  NOR3X1 U271 ( .A(n241), .B(b[1]), .C(n290), .Y(n289) );
  NOR2X1 U272 ( .A(n290), .B(n255), .Y(n288) );
  OA22X1 U273 ( .A0(b[1]), .A1(n279), .B0(n278), .B1(n242), .Y(n290) );
  XOR2X1 U274 ( .A(n236), .B(a[1]), .Y(n278) );
  OAI22XL U275 ( .A0(n280), .A1(n279), .B0(n291), .B1(n242), .Y(n109) );
  XOR2X1 U276 ( .A(n235), .B(a[1]), .Y(n280) );
  OAI22XL U277 ( .A0(n291), .A1(n279), .B0(n292), .B1(n242), .Y(n108) );
  XOR2X1 U278 ( .A(n233), .B(a[1]), .Y(n291) );
  OAI22XL U279 ( .A0(n292), .A1(n279), .B0(n293), .B1(n242), .Y(n107) );
  XOR2X1 U280 ( .A(n231), .B(a[1]), .Y(n292) );
  OAI22XL U281 ( .A0(n293), .A1(n279), .B0(n294), .B1(n242), .Y(n106) );
  XOR2X1 U282 ( .A(n229), .B(a[1]), .Y(n293) );
  OAI22XL U283 ( .A0(n294), .A1(n279), .B0(n295), .B1(n242), .Y(n105) );
  XOR2X1 U284 ( .A(n227), .B(a[1]), .Y(n294) );
  OAI22XL U285 ( .A0(n295), .A1(n279), .B0(n296), .B1(n242), .Y(n104) );
  XOR2X1 U286 ( .A(n225), .B(a[1]), .Y(n295) );
  OAI22XL U287 ( .A0(n296), .A1(n279), .B0(n297), .B1(n242), .Y(n103) );
  XOR2X1 U288 ( .A(n223), .B(a[1]), .Y(n296) );
  OAI22XL U289 ( .A0(n297), .A1(n279), .B0(n298), .B1(n242), .Y(n102) );
  XOR2X1 U290 ( .A(n222), .B(a[1]), .Y(n297) );
  OAI22XL U291 ( .A0(n298), .A1(n279), .B0(n241), .B1(n242), .Y(n101) );
  XOR2X1 U292 ( .A(b[11]), .B(n241), .Y(n298) );
endmodule


module RFILE_DW_mult_tc_9 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n189, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241;

  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n191), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n193), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n195), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n62), .C(n68), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n52), .B(n74), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n70), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n53), .B(n76), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n54), .B(n85), .CO(n50), .S(n51) );
  CLKINVX1 U140 ( .A(n15), .Y(n191) );
  CLKINVX1 U141 ( .A(n1), .Y(product[15]) );
  XNOR2X1 U142 ( .A(a[4]), .B(a[3]), .Y(n216) );
  XNOR2X1 U143 ( .A(a[2]), .B(a[1]), .Y(n207) );
  XNOR2X1 U144 ( .A(a[6]), .B(a[5]), .Y(n226) );
  NAND2X1 U145 ( .A(n226), .B(n241), .Y(n228) );
  NAND2X1 U146 ( .A(n207), .B(n239), .Y(n209) );
  NAND2X1 U147 ( .A(n216), .B(n240), .Y(n218) );
  NAND2X1 U148 ( .A(a[1]), .B(n198), .Y(n199) );
  CLKINVX1 U149 ( .A(a[3]), .Y(n196) );
  CLKINVX1 U150 ( .A(a[5]), .Y(n194) );
  CLKINVX1 U151 ( .A(a[1]), .Y(n197) );
  CLKINVX1 U152 ( .A(a[7]), .Y(n192) );
  CLKINVX1 U153 ( .A(n21), .Y(n193) );
  CLKINVX1 U154 ( .A(n29), .Y(n195) );
  CLKINVX1 U155 ( .A(a[0]), .Y(n198) );
  CLKINVX1 U156 ( .A(b[0]), .Y(n189) );
  NOR2X1 U157 ( .A(n198), .B(n189), .Y(product[0]) );
  OAI22XL U158 ( .A0(b[0]), .A1(n199), .B0(n200), .B1(n198), .Y(n87) );
  OAI22XL U159 ( .A0(n200), .A1(n199), .B0(n201), .B1(n198), .Y(n86) );
  XOR2X1 U160 ( .A(b[1]), .B(n197), .Y(n200) );
  OAI22XL U161 ( .A0(n201), .A1(n199), .B0(n202), .B1(n198), .Y(n85) );
  XOR2X1 U162 ( .A(b[2]), .B(n197), .Y(n201) );
  OAI22XL U163 ( .A0(n202), .A1(n199), .B0(n203), .B1(n198), .Y(n84) );
  XOR2X1 U164 ( .A(b[3]), .B(n197), .Y(n202) );
  OAI22XL U165 ( .A0(n203), .A1(n199), .B0(n204), .B1(n198), .Y(n83) );
  XOR2X1 U166 ( .A(b[4]), .B(n197), .Y(n203) );
  OAI22XL U167 ( .A0(n204), .A1(n199), .B0(n205), .B1(n198), .Y(n82) );
  XOR2X1 U168 ( .A(b[5]), .B(n197), .Y(n204) );
  OAI2BB2XL U169 ( .B0(n205), .B1(n199), .A0N(n206), .A1N(a[0]), .Y(n81) );
  XOR2X1 U170 ( .A(b[6]), .B(n197), .Y(n205) );
  OAI2BB1X1 U171 ( .A0N(n198), .A1N(n199), .B0(n206), .Y(n80) );
  XOR2X1 U172 ( .A(b[7]), .B(a[1]), .Y(n206) );
  NOR2X1 U173 ( .A(n207), .B(n189), .Y(n79) );
  OAI22XL U174 ( .A0(n208), .A1(n209), .B0(n207), .B1(n210), .Y(n78) );
  XOR2X1 U175 ( .A(n196), .B(b[0]), .Y(n208) );
  OAI22XL U176 ( .A0(n210), .A1(n209), .B0(n207), .B1(n211), .Y(n77) );
  XOR2X1 U177 ( .A(b[1]), .B(n196), .Y(n210) );
  OAI22XL U178 ( .A0(n211), .A1(n209), .B0(n207), .B1(n212), .Y(n76) );
  XOR2X1 U179 ( .A(b[2]), .B(n196), .Y(n211) );
  OAI22XL U180 ( .A0(n212), .A1(n209), .B0(n207), .B1(n213), .Y(n75) );
  XOR2X1 U181 ( .A(b[3]), .B(n196), .Y(n212) );
  OAI22XL U182 ( .A0(n213), .A1(n209), .B0(n207), .B1(n214), .Y(n74) );
  XOR2X1 U183 ( .A(b[4]), .B(n196), .Y(n213) );
  AO21X1 U184 ( .A0(n209), .A1(n207), .B0(n215), .Y(n72) );
  NOR2X1 U185 ( .A(n216), .B(n189), .Y(n71) );
  OAI22XL U186 ( .A0(n217), .A1(n218), .B0(n216), .B1(n219), .Y(n70) );
  XOR2X1 U187 ( .A(n194), .B(b[0]), .Y(n217) );
  OAI22XL U188 ( .A0(n219), .A1(n218), .B0(n216), .B1(n220), .Y(n69) );
  XOR2X1 U189 ( .A(b[1]), .B(n194), .Y(n219) );
  OAI22XL U190 ( .A0(n220), .A1(n218), .B0(n216), .B1(n221), .Y(n68) );
  XOR2X1 U191 ( .A(b[2]), .B(n194), .Y(n220) );
  OAI22XL U192 ( .A0(n221), .A1(n218), .B0(n216), .B1(n222), .Y(n67) );
  XOR2X1 U193 ( .A(b[3]), .B(n194), .Y(n221) );
  OAI22XL U194 ( .A0(n222), .A1(n218), .B0(n216), .B1(n223), .Y(n66) );
  XOR2X1 U195 ( .A(b[4]), .B(n194), .Y(n222) );
  OAI22XL U196 ( .A0(n223), .A1(n218), .B0(n216), .B1(n224), .Y(n65) );
  XOR2X1 U197 ( .A(b[5]), .B(n194), .Y(n223) );
  AO21X1 U198 ( .A0(n218), .A1(n216), .B0(n225), .Y(n64) );
  NOR2X1 U199 ( .A(n226), .B(n189), .Y(n63) );
  OAI22XL U200 ( .A0(n227), .A1(n228), .B0(n226), .B1(n229), .Y(n62) );
  XOR2X1 U201 ( .A(n192), .B(b[0]), .Y(n227) );
  OAI22XL U202 ( .A0(n230), .A1(n228), .B0(n226), .B1(n231), .Y(n60) );
  OAI22XL U203 ( .A0(n231), .A1(n228), .B0(n226), .B1(n232), .Y(n59) );
  XOR2X1 U204 ( .A(b[3]), .B(n192), .Y(n231) );
  OAI22XL U205 ( .A0(n232), .A1(n228), .B0(n226), .B1(n233), .Y(n58) );
  XOR2X1 U206 ( .A(b[4]), .B(n192), .Y(n232) );
  OAI22XL U207 ( .A0(n233), .A1(n228), .B0(n226), .B1(n234), .Y(n57) );
  XOR2X1 U208 ( .A(b[5]), .B(n192), .Y(n233) );
  AO21X1 U209 ( .A0(n228), .A1(n226), .B0(n235), .Y(n56) );
  OAI21XL U210 ( .A0(b[0]), .A1(n197), .B0(n199), .Y(n55) );
  OAI32X1 U211 ( .A0(n196), .A1(b[0]), .A2(n207), .B0(n196), .B1(n209), .Y(n54) );
  OAI32X1 U212 ( .A0(n194), .A1(b[0]), .A2(n216), .B0(n194), .B1(n218), .Y(n53) );
  OAI32X1 U213 ( .A0(n192), .A1(b[0]), .A2(n226), .B0(n192), .B1(n228), .Y(n52) );
  XNOR2X1 U214 ( .A(n236), .B(n237), .Y(n35) );
  NAND2X1 U215 ( .A(n236), .B(n237), .Y(n34) );
  OA22X1 U216 ( .A0(n214), .A1(n209), .B0(n207), .B1(n238), .Y(n237) );
  XOR2X1 U217 ( .A(b[5]), .B(n196), .Y(n214) );
  OA22X1 U218 ( .A0(n229), .A1(n228), .B0(n226), .B1(n230), .Y(n236) );
  XOR2X1 U219 ( .A(b[2]), .B(n192), .Y(n230) );
  XOR2X1 U220 ( .A(b[1]), .B(n192), .Y(n229) );
  OAI22XL U221 ( .A0(n207), .A1(n215), .B0(n238), .B1(n209), .Y(n29) );
  XOR2X1 U222 ( .A(a[3]), .B(a[2]), .Y(n239) );
  XOR2X1 U223 ( .A(b[6]), .B(n196), .Y(n238) );
  XOR2X1 U224 ( .A(b[7]), .B(n196), .Y(n215) );
  OAI22XL U225 ( .A0(n216), .A1(n225), .B0(n224), .B1(n218), .Y(n21) );
  XOR2X1 U226 ( .A(a[5]), .B(a[4]), .Y(n240) );
  XOR2X1 U227 ( .A(b[6]), .B(n194), .Y(n224) );
  XOR2X1 U228 ( .A(b[7]), .B(n194), .Y(n225) );
  OAI22XL U229 ( .A0(n226), .A1(n235), .B0(n234), .B1(n228), .Y(n15) );
  XOR2X1 U230 ( .A(a[7]), .B(a[6]), .Y(n241) );
  XOR2X1 U231 ( .A(b[6]), .B(n192), .Y(n234) );
  XOR2X1 U232 ( .A(b[7]), .B(n192), .Y(n235) );
endmodule


module RFILE_DW_mult_tc_8 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n189, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241;

  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n191), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n193), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n195), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n62), .C(n68), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n52), .B(n74), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n70), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n53), .B(n76), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n54), .B(n85), .CO(n50), .S(n51) );
  CLKINVX1 U140 ( .A(n15), .Y(n191) );
  CLKINVX1 U141 ( .A(n1), .Y(product[15]) );
  XNOR2X1 U142 ( .A(a[4]), .B(a[3]), .Y(n216) );
  XNOR2X1 U143 ( .A(a[2]), .B(a[1]), .Y(n207) );
  XNOR2X1 U144 ( .A(a[6]), .B(a[5]), .Y(n226) );
  NAND2X1 U145 ( .A(n226), .B(n241), .Y(n228) );
  NAND2X1 U146 ( .A(n207), .B(n239), .Y(n209) );
  NAND2X1 U147 ( .A(n216), .B(n240), .Y(n218) );
  NAND2X1 U148 ( .A(a[1]), .B(n198), .Y(n199) );
  CLKINVX1 U149 ( .A(a[0]), .Y(n198) );
  CLKINVX1 U150 ( .A(a[3]), .Y(n196) );
  CLKINVX1 U151 ( .A(a[5]), .Y(n194) );
  CLKINVX1 U152 ( .A(a[1]), .Y(n197) );
  CLKINVX1 U153 ( .A(a[7]), .Y(n192) );
  CLKINVX1 U154 ( .A(n21), .Y(n193) );
  CLKINVX1 U155 ( .A(n29), .Y(n195) );
  CLKINVX1 U156 ( .A(b[0]), .Y(n189) );
  NOR2X1 U157 ( .A(n198), .B(n189), .Y(product[0]) );
  OAI22XL U158 ( .A0(b[0]), .A1(n199), .B0(n200), .B1(n198), .Y(n87) );
  OAI22XL U159 ( .A0(n200), .A1(n199), .B0(n201), .B1(n198), .Y(n86) );
  XOR2X1 U160 ( .A(b[1]), .B(n197), .Y(n200) );
  OAI22XL U161 ( .A0(n201), .A1(n199), .B0(n202), .B1(n198), .Y(n85) );
  XOR2X1 U162 ( .A(b[2]), .B(n197), .Y(n201) );
  OAI22XL U163 ( .A0(n202), .A1(n199), .B0(n203), .B1(n198), .Y(n84) );
  XOR2X1 U164 ( .A(b[3]), .B(n197), .Y(n202) );
  OAI22XL U165 ( .A0(n203), .A1(n199), .B0(n204), .B1(n198), .Y(n83) );
  XOR2X1 U166 ( .A(b[4]), .B(n197), .Y(n203) );
  OAI22XL U167 ( .A0(n204), .A1(n199), .B0(n205), .B1(n198), .Y(n82) );
  XOR2X1 U168 ( .A(b[5]), .B(n197), .Y(n204) );
  OAI2BB2XL U169 ( .B0(n205), .B1(n199), .A0N(n206), .A1N(a[0]), .Y(n81) );
  XOR2X1 U170 ( .A(b[6]), .B(n197), .Y(n205) );
  OAI2BB1X1 U171 ( .A0N(n198), .A1N(n199), .B0(n206), .Y(n80) );
  XOR2X1 U172 ( .A(b[7]), .B(a[1]), .Y(n206) );
  NOR2X1 U173 ( .A(n207), .B(n189), .Y(n79) );
  OAI22XL U174 ( .A0(n208), .A1(n209), .B0(n207), .B1(n210), .Y(n78) );
  XOR2X1 U175 ( .A(n196), .B(b[0]), .Y(n208) );
  OAI22XL U176 ( .A0(n210), .A1(n209), .B0(n207), .B1(n211), .Y(n77) );
  XOR2X1 U177 ( .A(b[1]), .B(n196), .Y(n210) );
  OAI22XL U178 ( .A0(n211), .A1(n209), .B0(n207), .B1(n212), .Y(n76) );
  XOR2X1 U179 ( .A(b[2]), .B(n196), .Y(n211) );
  OAI22XL U180 ( .A0(n212), .A1(n209), .B0(n207), .B1(n213), .Y(n75) );
  XOR2X1 U181 ( .A(b[3]), .B(n196), .Y(n212) );
  OAI22XL U182 ( .A0(n213), .A1(n209), .B0(n207), .B1(n214), .Y(n74) );
  XOR2X1 U183 ( .A(b[4]), .B(n196), .Y(n213) );
  AO21X1 U184 ( .A0(n209), .A1(n207), .B0(n215), .Y(n72) );
  NOR2X1 U185 ( .A(n216), .B(n189), .Y(n71) );
  OAI22XL U186 ( .A0(n217), .A1(n218), .B0(n216), .B1(n219), .Y(n70) );
  XOR2X1 U187 ( .A(n194), .B(b[0]), .Y(n217) );
  OAI22XL U188 ( .A0(n219), .A1(n218), .B0(n216), .B1(n220), .Y(n69) );
  XOR2X1 U189 ( .A(b[1]), .B(n194), .Y(n219) );
  OAI22XL U190 ( .A0(n220), .A1(n218), .B0(n216), .B1(n221), .Y(n68) );
  XOR2X1 U191 ( .A(b[2]), .B(n194), .Y(n220) );
  OAI22XL U192 ( .A0(n221), .A1(n218), .B0(n216), .B1(n222), .Y(n67) );
  XOR2X1 U193 ( .A(b[3]), .B(n194), .Y(n221) );
  OAI22XL U194 ( .A0(n222), .A1(n218), .B0(n216), .B1(n223), .Y(n66) );
  XOR2X1 U195 ( .A(b[4]), .B(n194), .Y(n222) );
  OAI22XL U196 ( .A0(n223), .A1(n218), .B0(n216), .B1(n224), .Y(n65) );
  XOR2X1 U197 ( .A(b[5]), .B(n194), .Y(n223) );
  AO21X1 U198 ( .A0(n218), .A1(n216), .B0(n225), .Y(n64) );
  NOR2X1 U199 ( .A(n226), .B(n189), .Y(n63) );
  OAI22XL U200 ( .A0(n227), .A1(n228), .B0(n226), .B1(n229), .Y(n62) );
  XOR2X1 U201 ( .A(n192), .B(b[0]), .Y(n227) );
  OAI22XL U202 ( .A0(n230), .A1(n228), .B0(n226), .B1(n231), .Y(n60) );
  OAI22XL U203 ( .A0(n231), .A1(n228), .B0(n226), .B1(n232), .Y(n59) );
  XOR2X1 U204 ( .A(b[3]), .B(n192), .Y(n231) );
  OAI22XL U205 ( .A0(n232), .A1(n228), .B0(n226), .B1(n233), .Y(n58) );
  XOR2X1 U206 ( .A(b[4]), .B(n192), .Y(n232) );
  OAI22XL U207 ( .A0(n233), .A1(n228), .B0(n226), .B1(n234), .Y(n57) );
  XOR2X1 U208 ( .A(b[5]), .B(n192), .Y(n233) );
  AO21X1 U209 ( .A0(n228), .A1(n226), .B0(n235), .Y(n56) );
  OAI21XL U210 ( .A0(b[0]), .A1(n197), .B0(n199), .Y(n55) );
  OAI32X1 U211 ( .A0(n196), .A1(b[0]), .A2(n207), .B0(n196), .B1(n209), .Y(n54) );
  OAI32X1 U212 ( .A0(n194), .A1(b[0]), .A2(n216), .B0(n194), .B1(n218), .Y(n53) );
  OAI32X1 U213 ( .A0(n192), .A1(b[0]), .A2(n226), .B0(n192), .B1(n228), .Y(n52) );
  XNOR2X1 U214 ( .A(n236), .B(n237), .Y(n35) );
  NAND2X1 U215 ( .A(n236), .B(n237), .Y(n34) );
  OA22X1 U216 ( .A0(n214), .A1(n209), .B0(n207), .B1(n238), .Y(n237) );
  XOR2X1 U217 ( .A(b[5]), .B(n196), .Y(n214) );
  OA22X1 U218 ( .A0(n229), .A1(n228), .B0(n226), .B1(n230), .Y(n236) );
  XOR2X1 U219 ( .A(b[2]), .B(n192), .Y(n230) );
  XOR2X1 U220 ( .A(b[1]), .B(n192), .Y(n229) );
  OAI22XL U221 ( .A0(n207), .A1(n215), .B0(n238), .B1(n209), .Y(n29) );
  XOR2X1 U222 ( .A(a[3]), .B(a[2]), .Y(n239) );
  XOR2X1 U223 ( .A(b[6]), .B(n196), .Y(n238) );
  XOR2X1 U224 ( .A(b[7]), .B(n196), .Y(n215) );
  OAI22XL U225 ( .A0(n216), .A1(n225), .B0(n224), .B1(n218), .Y(n21) );
  XOR2X1 U226 ( .A(a[5]), .B(a[4]), .Y(n240) );
  XOR2X1 U227 ( .A(b[6]), .B(n194), .Y(n224) );
  XOR2X1 U228 ( .A(b[7]), .B(n194), .Y(n225) );
  OAI22XL U229 ( .A0(n226), .A1(n235), .B0(n234), .B1(n228), .Y(n15) );
  XOR2X1 U230 ( .A(a[7]), .B(a[6]), .Y(n241) );
  XOR2X1 U231 ( .A(b[6]), .B(n192), .Y(n234) );
  XOR2X1 U232 ( .A(b[7]), .B(n192), .Y(n235) );
endmodule


module RFILE_DW01_add_7 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [16:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module RFILE_DW_mult_tc_7 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n189, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241;

  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n191), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n193), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n195), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n62), .C(n68), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n52), .B(n74), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n70), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n53), .B(n76), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n54), .B(n85), .CO(n50), .S(n51) );
  CLKINVX1 U140 ( .A(n15), .Y(n191) );
  CLKINVX1 U141 ( .A(n1), .Y(product[15]) );
  XNOR2X1 U142 ( .A(a[4]), .B(a[3]), .Y(n216) );
  XNOR2X1 U143 ( .A(a[2]), .B(a[1]), .Y(n207) );
  XNOR2X1 U144 ( .A(a[6]), .B(a[5]), .Y(n226) );
  NAND2X1 U145 ( .A(n226), .B(n241), .Y(n228) );
  NAND2X1 U146 ( .A(n207), .B(n239), .Y(n209) );
  NAND2X1 U147 ( .A(n216), .B(n240), .Y(n218) );
  NAND2X1 U148 ( .A(a[1]), .B(n198), .Y(n199) );
  CLKINVX1 U149 ( .A(a[3]), .Y(n196) );
  CLKINVX1 U150 ( .A(a[5]), .Y(n194) );
  CLKINVX1 U151 ( .A(a[1]), .Y(n197) );
  CLKINVX1 U152 ( .A(a[7]), .Y(n192) );
  CLKINVX1 U153 ( .A(n21), .Y(n193) );
  CLKINVX1 U154 ( .A(n29), .Y(n195) );
  CLKINVX1 U155 ( .A(a[0]), .Y(n198) );
  CLKINVX1 U156 ( .A(b[0]), .Y(n189) );
  NOR2X1 U157 ( .A(n198), .B(n189), .Y(product[0]) );
  OAI22XL U158 ( .A0(b[0]), .A1(n199), .B0(n200), .B1(n198), .Y(n87) );
  OAI22XL U159 ( .A0(n200), .A1(n199), .B0(n201), .B1(n198), .Y(n86) );
  XOR2X1 U160 ( .A(b[1]), .B(n197), .Y(n200) );
  OAI22XL U161 ( .A0(n201), .A1(n199), .B0(n202), .B1(n198), .Y(n85) );
  XOR2X1 U162 ( .A(b[2]), .B(n197), .Y(n201) );
  OAI22XL U163 ( .A0(n202), .A1(n199), .B0(n203), .B1(n198), .Y(n84) );
  XOR2X1 U164 ( .A(b[3]), .B(n197), .Y(n202) );
  OAI22XL U165 ( .A0(n203), .A1(n199), .B0(n204), .B1(n198), .Y(n83) );
  XOR2X1 U166 ( .A(b[4]), .B(n197), .Y(n203) );
  OAI22XL U167 ( .A0(n204), .A1(n199), .B0(n205), .B1(n198), .Y(n82) );
  XOR2X1 U168 ( .A(b[5]), .B(n197), .Y(n204) );
  OAI2BB2XL U169 ( .B0(n205), .B1(n199), .A0N(n206), .A1N(a[0]), .Y(n81) );
  XOR2X1 U170 ( .A(b[6]), .B(n197), .Y(n205) );
  OAI2BB1X1 U171 ( .A0N(n198), .A1N(n199), .B0(n206), .Y(n80) );
  XOR2X1 U172 ( .A(b[7]), .B(a[1]), .Y(n206) );
  NOR2X1 U173 ( .A(n207), .B(n189), .Y(n79) );
  OAI22XL U174 ( .A0(n208), .A1(n209), .B0(n207), .B1(n210), .Y(n78) );
  XOR2X1 U175 ( .A(n196), .B(b[0]), .Y(n208) );
  OAI22XL U176 ( .A0(n210), .A1(n209), .B0(n207), .B1(n211), .Y(n77) );
  XOR2X1 U177 ( .A(b[1]), .B(n196), .Y(n210) );
  OAI22XL U178 ( .A0(n211), .A1(n209), .B0(n207), .B1(n212), .Y(n76) );
  XOR2X1 U179 ( .A(b[2]), .B(n196), .Y(n211) );
  OAI22XL U180 ( .A0(n212), .A1(n209), .B0(n207), .B1(n213), .Y(n75) );
  XOR2X1 U181 ( .A(b[3]), .B(n196), .Y(n212) );
  OAI22XL U182 ( .A0(n213), .A1(n209), .B0(n207), .B1(n214), .Y(n74) );
  XOR2X1 U183 ( .A(b[4]), .B(n196), .Y(n213) );
  AO21X1 U184 ( .A0(n209), .A1(n207), .B0(n215), .Y(n72) );
  NOR2X1 U185 ( .A(n216), .B(n189), .Y(n71) );
  OAI22XL U186 ( .A0(n217), .A1(n218), .B0(n216), .B1(n219), .Y(n70) );
  XOR2X1 U187 ( .A(n194), .B(b[0]), .Y(n217) );
  OAI22XL U188 ( .A0(n219), .A1(n218), .B0(n216), .B1(n220), .Y(n69) );
  XOR2X1 U189 ( .A(b[1]), .B(n194), .Y(n219) );
  OAI22XL U190 ( .A0(n220), .A1(n218), .B0(n216), .B1(n221), .Y(n68) );
  XOR2X1 U191 ( .A(b[2]), .B(n194), .Y(n220) );
  OAI22XL U192 ( .A0(n221), .A1(n218), .B0(n216), .B1(n222), .Y(n67) );
  XOR2X1 U193 ( .A(b[3]), .B(n194), .Y(n221) );
  OAI22XL U194 ( .A0(n222), .A1(n218), .B0(n216), .B1(n223), .Y(n66) );
  XOR2X1 U195 ( .A(b[4]), .B(n194), .Y(n222) );
  OAI22XL U196 ( .A0(n223), .A1(n218), .B0(n216), .B1(n224), .Y(n65) );
  XOR2X1 U197 ( .A(b[5]), .B(n194), .Y(n223) );
  AO21X1 U198 ( .A0(n218), .A1(n216), .B0(n225), .Y(n64) );
  NOR2X1 U199 ( .A(n226), .B(n189), .Y(n63) );
  OAI22XL U200 ( .A0(n227), .A1(n228), .B0(n226), .B1(n229), .Y(n62) );
  XOR2X1 U201 ( .A(n192), .B(b[0]), .Y(n227) );
  OAI22XL U202 ( .A0(n230), .A1(n228), .B0(n226), .B1(n231), .Y(n60) );
  OAI22XL U203 ( .A0(n231), .A1(n228), .B0(n226), .B1(n232), .Y(n59) );
  XOR2X1 U204 ( .A(b[3]), .B(n192), .Y(n231) );
  OAI22XL U205 ( .A0(n232), .A1(n228), .B0(n226), .B1(n233), .Y(n58) );
  XOR2X1 U206 ( .A(b[4]), .B(n192), .Y(n232) );
  OAI22XL U207 ( .A0(n233), .A1(n228), .B0(n226), .B1(n234), .Y(n57) );
  XOR2X1 U208 ( .A(b[5]), .B(n192), .Y(n233) );
  AO21X1 U209 ( .A0(n228), .A1(n226), .B0(n235), .Y(n56) );
  OAI21XL U210 ( .A0(b[0]), .A1(n197), .B0(n199), .Y(n55) );
  OAI32X1 U211 ( .A0(n196), .A1(b[0]), .A2(n207), .B0(n196), .B1(n209), .Y(n54) );
  OAI32X1 U212 ( .A0(n194), .A1(b[0]), .A2(n216), .B0(n194), .B1(n218), .Y(n53) );
  OAI32X1 U213 ( .A0(n192), .A1(b[0]), .A2(n226), .B0(n192), .B1(n228), .Y(n52) );
  XNOR2X1 U214 ( .A(n236), .B(n237), .Y(n35) );
  NAND2X1 U215 ( .A(n236), .B(n237), .Y(n34) );
  OA22X1 U216 ( .A0(n214), .A1(n209), .B0(n207), .B1(n238), .Y(n237) );
  XOR2X1 U217 ( .A(b[5]), .B(n196), .Y(n214) );
  OA22X1 U218 ( .A0(n229), .A1(n228), .B0(n226), .B1(n230), .Y(n236) );
  XOR2X1 U219 ( .A(b[2]), .B(n192), .Y(n230) );
  XOR2X1 U220 ( .A(b[1]), .B(n192), .Y(n229) );
  OAI22XL U221 ( .A0(n207), .A1(n215), .B0(n238), .B1(n209), .Y(n29) );
  XOR2X1 U222 ( .A(a[3]), .B(a[2]), .Y(n239) );
  XOR2X1 U223 ( .A(b[6]), .B(n196), .Y(n238) );
  XOR2X1 U224 ( .A(b[7]), .B(n196), .Y(n215) );
  OAI22XL U225 ( .A0(n216), .A1(n225), .B0(n224), .B1(n218), .Y(n21) );
  XOR2X1 U226 ( .A(a[5]), .B(a[4]), .Y(n240) );
  XOR2X1 U227 ( .A(b[6]), .B(n194), .Y(n224) );
  XOR2X1 U228 ( .A(b[7]), .B(n194), .Y(n225) );
  OAI22XL U229 ( .A0(n226), .A1(n235), .B0(n234), .B1(n228), .Y(n15) );
  XOR2X1 U230 ( .A(a[7]), .B(a[6]), .Y(n241) );
  XOR2X1 U231 ( .A(b[6]), .B(n192), .Y(n234) );
  XOR2X1 U232 ( .A(b[7]), .B(n192), .Y(n235) );
endmodule


module RFILE_DW_mult_tc_6 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n189, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241;

  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n191), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n193), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n195), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n62), .C(n68), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n52), .B(n74), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n70), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n53), .B(n76), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n54), .B(n85), .CO(n50), .S(n51) );
  CLKINVX1 U140 ( .A(n15), .Y(n191) );
  CLKINVX1 U141 ( .A(n1), .Y(product[15]) );
  XNOR2X1 U142 ( .A(a[4]), .B(a[3]), .Y(n216) );
  XNOR2X1 U143 ( .A(a[2]), .B(a[1]), .Y(n207) );
  XNOR2X1 U144 ( .A(a[6]), .B(a[5]), .Y(n226) );
  NAND2X1 U145 ( .A(n226), .B(n241), .Y(n228) );
  NAND2X1 U146 ( .A(n207), .B(n239), .Y(n209) );
  NAND2X1 U147 ( .A(n216), .B(n240), .Y(n218) );
  NAND2X1 U148 ( .A(a[1]), .B(n198), .Y(n199) );
  CLKINVX1 U149 ( .A(a[0]), .Y(n198) );
  CLKINVX1 U150 ( .A(a[3]), .Y(n196) );
  CLKINVX1 U151 ( .A(a[5]), .Y(n194) );
  CLKINVX1 U152 ( .A(a[1]), .Y(n197) );
  CLKINVX1 U153 ( .A(a[7]), .Y(n192) );
  CLKINVX1 U154 ( .A(n21), .Y(n193) );
  CLKINVX1 U155 ( .A(n29), .Y(n195) );
  CLKINVX1 U156 ( .A(b[0]), .Y(n189) );
  NOR2X1 U157 ( .A(n198), .B(n189), .Y(product[0]) );
  OAI22XL U158 ( .A0(b[0]), .A1(n199), .B0(n200), .B1(n198), .Y(n87) );
  OAI22XL U159 ( .A0(n200), .A1(n199), .B0(n201), .B1(n198), .Y(n86) );
  XOR2X1 U160 ( .A(b[1]), .B(n197), .Y(n200) );
  OAI22XL U161 ( .A0(n201), .A1(n199), .B0(n202), .B1(n198), .Y(n85) );
  XOR2X1 U162 ( .A(b[2]), .B(n197), .Y(n201) );
  OAI22XL U163 ( .A0(n202), .A1(n199), .B0(n203), .B1(n198), .Y(n84) );
  XOR2X1 U164 ( .A(b[3]), .B(n197), .Y(n202) );
  OAI22XL U165 ( .A0(n203), .A1(n199), .B0(n204), .B1(n198), .Y(n83) );
  XOR2X1 U166 ( .A(b[4]), .B(n197), .Y(n203) );
  OAI22XL U167 ( .A0(n204), .A1(n199), .B0(n205), .B1(n198), .Y(n82) );
  XOR2X1 U168 ( .A(b[5]), .B(n197), .Y(n204) );
  OAI2BB2XL U169 ( .B0(n205), .B1(n199), .A0N(n206), .A1N(a[0]), .Y(n81) );
  XOR2X1 U170 ( .A(b[6]), .B(n197), .Y(n205) );
  OAI2BB1X1 U171 ( .A0N(n198), .A1N(n199), .B0(n206), .Y(n80) );
  XOR2X1 U172 ( .A(b[7]), .B(a[1]), .Y(n206) );
  NOR2X1 U173 ( .A(n207), .B(n189), .Y(n79) );
  OAI22XL U174 ( .A0(n208), .A1(n209), .B0(n207), .B1(n210), .Y(n78) );
  XOR2X1 U175 ( .A(n196), .B(b[0]), .Y(n208) );
  OAI22XL U176 ( .A0(n210), .A1(n209), .B0(n207), .B1(n211), .Y(n77) );
  XOR2X1 U177 ( .A(b[1]), .B(n196), .Y(n210) );
  OAI22XL U178 ( .A0(n211), .A1(n209), .B0(n207), .B1(n212), .Y(n76) );
  XOR2X1 U179 ( .A(b[2]), .B(n196), .Y(n211) );
  OAI22XL U180 ( .A0(n212), .A1(n209), .B0(n207), .B1(n213), .Y(n75) );
  XOR2X1 U181 ( .A(b[3]), .B(n196), .Y(n212) );
  OAI22XL U182 ( .A0(n213), .A1(n209), .B0(n207), .B1(n214), .Y(n74) );
  XOR2X1 U183 ( .A(b[4]), .B(n196), .Y(n213) );
  AO21X1 U184 ( .A0(n209), .A1(n207), .B0(n215), .Y(n72) );
  NOR2X1 U185 ( .A(n216), .B(n189), .Y(n71) );
  OAI22XL U186 ( .A0(n217), .A1(n218), .B0(n216), .B1(n219), .Y(n70) );
  XOR2X1 U187 ( .A(n194), .B(b[0]), .Y(n217) );
  OAI22XL U188 ( .A0(n219), .A1(n218), .B0(n216), .B1(n220), .Y(n69) );
  XOR2X1 U189 ( .A(b[1]), .B(n194), .Y(n219) );
  OAI22XL U190 ( .A0(n220), .A1(n218), .B0(n216), .B1(n221), .Y(n68) );
  XOR2X1 U191 ( .A(b[2]), .B(n194), .Y(n220) );
  OAI22XL U192 ( .A0(n221), .A1(n218), .B0(n216), .B1(n222), .Y(n67) );
  XOR2X1 U193 ( .A(b[3]), .B(n194), .Y(n221) );
  OAI22XL U194 ( .A0(n222), .A1(n218), .B0(n216), .B1(n223), .Y(n66) );
  XOR2X1 U195 ( .A(b[4]), .B(n194), .Y(n222) );
  OAI22XL U196 ( .A0(n223), .A1(n218), .B0(n216), .B1(n224), .Y(n65) );
  XOR2X1 U197 ( .A(b[5]), .B(n194), .Y(n223) );
  AO21X1 U198 ( .A0(n218), .A1(n216), .B0(n225), .Y(n64) );
  NOR2X1 U199 ( .A(n226), .B(n189), .Y(n63) );
  OAI22XL U200 ( .A0(n227), .A1(n228), .B0(n226), .B1(n229), .Y(n62) );
  XOR2X1 U201 ( .A(n192), .B(b[0]), .Y(n227) );
  OAI22XL U202 ( .A0(n230), .A1(n228), .B0(n226), .B1(n231), .Y(n60) );
  OAI22XL U203 ( .A0(n231), .A1(n228), .B0(n226), .B1(n232), .Y(n59) );
  XOR2X1 U204 ( .A(b[3]), .B(n192), .Y(n231) );
  OAI22XL U205 ( .A0(n232), .A1(n228), .B0(n226), .B1(n233), .Y(n58) );
  XOR2X1 U206 ( .A(b[4]), .B(n192), .Y(n232) );
  OAI22XL U207 ( .A0(n233), .A1(n228), .B0(n226), .B1(n234), .Y(n57) );
  XOR2X1 U208 ( .A(b[5]), .B(n192), .Y(n233) );
  AO21X1 U209 ( .A0(n228), .A1(n226), .B0(n235), .Y(n56) );
  OAI21XL U210 ( .A0(b[0]), .A1(n197), .B0(n199), .Y(n55) );
  OAI32X1 U211 ( .A0(n196), .A1(b[0]), .A2(n207), .B0(n196), .B1(n209), .Y(n54) );
  OAI32X1 U212 ( .A0(n194), .A1(b[0]), .A2(n216), .B0(n194), .B1(n218), .Y(n53) );
  OAI32X1 U213 ( .A0(n192), .A1(b[0]), .A2(n226), .B0(n192), .B1(n228), .Y(n52) );
  XNOR2X1 U214 ( .A(n236), .B(n237), .Y(n35) );
  NAND2X1 U215 ( .A(n236), .B(n237), .Y(n34) );
  OA22X1 U216 ( .A0(n214), .A1(n209), .B0(n207), .B1(n238), .Y(n237) );
  XOR2X1 U217 ( .A(b[5]), .B(n196), .Y(n214) );
  OA22X1 U218 ( .A0(n229), .A1(n228), .B0(n226), .B1(n230), .Y(n236) );
  XOR2X1 U219 ( .A(b[2]), .B(n192), .Y(n230) );
  XOR2X1 U220 ( .A(b[1]), .B(n192), .Y(n229) );
  OAI22XL U221 ( .A0(n207), .A1(n215), .B0(n238), .B1(n209), .Y(n29) );
  XOR2X1 U222 ( .A(a[3]), .B(a[2]), .Y(n239) );
  XOR2X1 U223 ( .A(b[6]), .B(n196), .Y(n238) );
  XOR2X1 U224 ( .A(b[7]), .B(n196), .Y(n215) );
  OAI22XL U225 ( .A0(n216), .A1(n225), .B0(n224), .B1(n218), .Y(n21) );
  XOR2X1 U226 ( .A(a[5]), .B(a[4]), .Y(n240) );
  XOR2X1 U227 ( .A(b[6]), .B(n194), .Y(n224) );
  XOR2X1 U228 ( .A(b[7]), .B(n194), .Y(n225) );
  OAI22XL U229 ( .A0(n226), .A1(n235), .B0(n234), .B1(n228), .Y(n15) );
  XOR2X1 U230 ( .A(a[7]), .B(a[6]), .Y(n241) );
  XOR2X1 U231 ( .A(b[6]), .B(n192), .Y(n234) );
  XOR2X1 U232 ( .A(b[7]), .B(n192), .Y(n235) );
endmodule


module RFILE_DW01_add_6 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [16:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module RFILE_DW_mult_tc_1 ( a, b, product );
  input [8:0] a;
  input [8:0] b;
  output [17:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n19, n20, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n32, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n75, n76, n77, n80,
         n81, n82, n83, n84, n85, n86, n88, n89, n90, n91, n92, n94, n95, n97,
         n98, n99, n100, n101, n102, n103, n104, n106, n107, n108, n109, n111,
         n112, n113, n115, n116, n117, n118, n119, n120, n121, n122, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330;

  ADDFXL U3 ( .A(n20), .B(n19), .CI(n3), .CO(n2), .S(product[16]) );
  ADDFXL U4 ( .A(n21), .B(n22), .CI(n4), .CO(n3), .S(product[15]) );
  ADDFXL U5 ( .A(n27), .B(n23), .CI(n5), .CO(n4), .S(product[14]) );
  ADDFXL U6 ( .A(n30), .B(n28), .CI(n6), .CO(n5), .S(product[13]) );
  ADDFXL U7 ( .A(n31), .B(n35), .CI(n7), .CO(n6), .S(product[12]) );
  ADDFXL U8 ( .A(n36), .B(n40), .CI(n8), .CO(n7), .S(product[11]) );
  ADDFXL U9 ( .A(n41), .B(n47), .CI(n9), .CO(n8), .S(product[10]) );
  ADDFXL U10 ( .A(n48), .B(n54), .CI(n10), .CO(n9), .S(product[9]) );
  ADDFXL U11 ( .A(n55), .B(n59), .CI(n11), .CO(n10), .S(product[8]) );
  ADDFXL U12 ( .A(n60), .B(n64), .CI(n12), .CO(n11), .S(product[7]) );
  ADDFXL U13 ( .A(n65), .B(n66), .CI(n13), .CO(n12), .S(product[6]) );
  ADDFXL U14 ( .A(n67), .B(n70), .CI(n14), .CO(n13), .S(product[5]) );
  ADDFXL U15 ( .A(n71), .B(n72), .CI(n15), .CO(n14), .S(product[4]) );
  ADDFXL U16 ( .A(n73), .B(n113), .CI(n16), .CO(n15), .S(product[3]) );
  ADDFXL U20 ( .A(n80), .B(n24), .CI(n88), .CO(n20), .S(n21) );
  ADDFXL U21 ( .A(n261), .B(n81), .CI(n26), .CO(n22), .S(n23) );
  CMPR42X1 U23 ( .A(n32), .B(n89), .C(n82), .D(n97), .ICI(n29), .S(n28), .ICO(
        n26), .CO(n27) );
  CMPR42X1 U24 ( .A(n90), .B(n83), .C(n260), .D(n37), .ICI(n34), .S(n31), 
        .ICO(n29), .CO(n30) );
  CMPR42X1 U26 ( .A(n98), .B(n91), .C(n42), .D(n38), .ICI(n39), .S(n36), .ICO(
        n34), .CO(n35) );
  ADDFXL U27 ( .A(n44), .B(n84), .CI(n106), .CO(n37), .S(n38) );
  CMPR42X1 U28 ( .A(n99), .B(n92), .C(n49), .D(n46), .ICI(n43), .S(n41), .ICO(
        n39), .CO(n40) );
  ADDFXL U29 ( .A(n262), .B(n85), .CI(n51), .CO(n42), .S(n43) );
  CMPR42X1 U31 ( .A(n107), .B(n86), .C(n53), .D(n56), .ICI(n50), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U32 ( .A(n115), .B(n100), .CI(n52), .CO(n49), .S(n50) );
  CMPR42X1 U35 ( .A(n108), .B(n101), .C(n61), .D(n58), .ICI(n57), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U37 ( .A(n75), .B(n95), .C(n109), .D(n63), .ICI(n62), .S(n60), 
        .ICO(n58), .CO(n59) );
  ADDHXL U38 ( .A(n117), .B(n102), .CO(n61), .S(n62) );
  ADDFXL U40 ( .A(n111), .B(n76), .CI(n69), .CO(n66), .S(n67) );
  ADDHXL U41 ( .A(n119), .B(n104), .CO(n68), .S(n69) );
  ADDHXL U43 ( .A(n121), .B(n77), .CO(n72), .S(n73) );
  CLKINVX1 U195 ( .A(a[1]), .Y(n259) );
  OA22X1 U196 ( .A0(n321), .A1(n305), .B0(n304), .B1(n322), .Y(n258) );
  CLKINVX1 U197 ( .A(n118), .Y(n263) );
  CLKINVX1 U198 ( .A(n44), .Y(n262) );
  CLKINVX1 U199 ( .A(n296), .Y(n265) );
  CLKINVX1 U200 ( .A(n68), .Y(n264) );
  CLKINVX1 U201 ( .A(n32), .Y(n260) );
  XOR2X1 U202 ( .A(a[2]), .B(n259), .Y(n304) );
  NAND2X1 U203 ( .A(n304), .B(n325), .Y(n305) );
  XOR2X1 U204 ( .A(a[4]), .B(n268), .Y(n282) );
  XOR2X1 U205 ( .A(a[6]), .B(n267), .Y(n286) );
  NAND2X1 U206 ( .A(n282), .B(n330), .Y(n281) );
  NAND2X1 U207 ( .A(n286), .B(n310), .Y(n287) );
  CLKINVX1 U208 ( .A(a[5]), .Y(n267) );
  CLKINVX1 U209 ( .A(a[3]), .Y(n268) );
  CLKINVX1 U210 ( .A(a[7]), .Y(n266) );
  CLKINVX1 U211 ( .A(n24), .Y(n261) );
  AND2X1 U212 ( .A(n122), .B(a[1]), .Y(n16) );
  XOR2X1 U213 ( .A(n122), .B(a[1]), .Y(product[2]) );
  NOR2X1 U214 ( .A(n311), .B(n259), .Y(n122) );
  OAI22XL U215 ( .A0(n268), .A1(n304), .B0(n268), .B1(n305), .Y(n77) );
  NOR2X1 U216 ( .A(n312), .B(n259), .Y(n121) );
  AND2X1 U217 ( .A(n120), .B(n112), .Y(n70) );
  XOR2X1 U218 ( .A(n120), .B(n112), .Y(n71) );
  NOR2X1 U219 ( .A(n313), .B(n259), .Y(n120) );
  OAI22XL U220 ( .A0(n267), .A1(n282), .B0(n267), .B1(n281), .Y(n76) );
  AND2X1 U221 ( .A(n116), .B(n94), .Y(n56) );
  XOR2X1 U222 ( .A(n116), .B(n94), .Y(n57) );
  NOR2X1 U223 ( .A(n317), .B(n259), .Y(n116) );
  NOR2BX1 U224 ( .AN(n103), .B(n263), .Y(n63) );
  OAI211X1 U225 ( .A0(n258), .A1(n264), .B0(n269), .C0(n270), .Y(n64) );
  XOR2X1 U226 ( .A(n271), .B(n272), .Y(n65) );
  NOR2X1 U227 ( .A(n118), .B(n258), .Y(n273) );
  NOR2X1 U228 ( .A(n263), .B(n258), .Y(n274) );
  NOR2X1 U229 ( .A(n118), .B(n264), .Y(n275) );
  NOR2X1 U230 ( .A(n263), .B(n264), .Y(n276) );
  XNOR2X1 U231 ( .A(n263), .B(n103), .Y(n271) );
  XNOR2X1 U232 ( .A(n258), .B(n68), .Y(n272) );
  MXI2X1 U233 ( .A(n274), .B(n273), .S0(n103), .Y(n269) );
  MXI2X1 U234 ( .A(n276), .B(n275), .S0(n103), .Y(n270) );
  NOR2X1 U235 ( .A(n314), .B(n259), .Y(n119) );
  NOR2X1 U236 ( .A(n315), .B(n259), .Y(n118) );
  OAI22XL U237 ( .A0(n266), .A1(n286), .B0(n266), .B1(n287), .Y(n75) );
  NOR2X1 U238 ( .A(n316), .B(n259), .Y(n117) );
  NAND2BX1 U239 ( .AN(n259), .B(n318), .Y(n115) );
  NAND2X1 U240 ( .A(n265), .B(a[8]), .Y(n306) );
  XOR2X1 U241 ( .A(n277), .B(n278), .Y(product[17]) );
  AND2X1 U242 ( .A(n279), .B(n265), .Y(n278) );
  XOR2X1 U243 ( .A(n19), .B(n2), .Y(n277) );
  OAI22XL U244 ( .A0(n280), .A1(n281), .B0(n282), .B1(n283), .Y(n99) );
  OAI22XL U245 ( .A0(n283), .A1(n281), .B0(n282), .B1(n284), .Y(n98) );
  XNOR2X1 U246 ( .A(b[6]), .B(a[5]), .Y(n283) );
  AO21X1 U247 ( .A0(n281), .A1(n282), .B0(n285), .Y(n97) );
  OAI22XL U248 ( .A0(n266), .A1(n287), .B0(n286), .B1(n288), .Y(n95) );
  OAI22XL U249 ( .A0(n288), .A1(n287), .B0(n286), .B1(n289), .Y(n94) );
  XNOR2X1 U250 ( .A(b[1]), .B(a[7]), .Y(n288) );
  OAI22XL U251 ( .A0(n290), .A1(n287), .B0(n286), .B1(n291), .Y(n92) );
  OAI22XL U252 ( .A0(n291), .A1(n287), .B0(n286), .B1(n292), .Y(n91) );
  XNOR2X1 U253 ( .A(b[4]), .B(a[7]), .Y(n291) );
  OAI22XL U254 ( .A0(n292), .A1(n287), .B0(n286), .B1(n293), .Y(n90) );
  XNOR2X1 U255 ( .A(b[5]), .B(a[7]), .Y(n292) );
  OAI22XL U256 ( .A0(n293), .A1(n287), .B0(n286), .B1(n294), .Y(n89) );
  XNOR2X1 U257 ( .A(b[6]), .B(a[7]), .Y(n293) );
  AO21X1 U258 ( .A0(n287), .A1(n286), .B0(n295), .Y(n88) );
  NOR2X1 U259 ( .A(n296), .B(n297), .Y(n86) );
  XNOR2X1 U260 ( .A(b[1]), .B(a[8]), .Y(n297) );
  NOR2X1 U261 ( .A(n296), .B(n298), .Y(n85) );
  XNOR2X1 U262 ( .A(b[2]), .B(a[8]), .Y(n298) );
  NOR2X1 U263 ( .A(n296), .B(n299), .Y(n84) );
  XNOR2X1 U264 ( .A(b[3]), .B(a[8]), .Y(n299) );
  NOR2X1 U265 ( .A(n296), .B(n300), .Y(n83) );
  XNOR2X1 U266 ( .A(b[4]), .B(a[8]), .Y(n300) );
  NOR2X1 U267 ( .A(n296), .B(n301), .Y(n82) );
  XNOR2X1 U268 ( .A(b[5]), .B(a[8]), .Y(n301) );
  NOR2X1 U269 ( .A(n296), .B(n302), .Y(n81) );
  XNOR2X1 U270 ( .A(b[6]), .B(a[8]), .Y(n302) );
  NOR2X1 U271 ( .A(n296), .B(n303), .Y(n80) );
  XNOR2X1 U272 ( .A(b[7]), .B(a[8]), .Y(n303) );
  XNOR2X1 U273 ( .A(n306), .B(n307), .Y(n52) );
  NAND2X1 U274 ( .A(n307), .B(n306), .Y(n51) );
  OA22X1 U275 ( .A0(n289), .A1(n287), .B0(n286), .B1(n290), .Y(n307) );
  XNOR2X1 U276 ( .A(b[3]), .B(a[7]), .Y(n290) );
  XNOR2X1 U277 ( .A(b[2]), .B(a[7]), .Y(n289) );
  OAI22XL U278 ( .A0(n304), .A1(n308), .B0(n309), .B1(n305), .Y(n44) );
  OAI22XL U279 ( .A0(n282), .A1(n285), .B0(n284), .B1(n281), .Y(n32) );
  XNOR2X1 U280 ( .A(b[7]), .B(a[5]), .Y(n284) );
  XNOR2X1 U281 ( .A(b[8]), .B(a[5]), .Y(n285) );
  OAI22XL U282 ( .A0(n286), .A1(n295), .B0(n294), .B1(n287), .Y(n24) );
  XNOR2X1 U283 ( .A(n266), .B(a[6]), .Y(n310) );
  XNOR2X1 U284 ( .A(b[7]), .B(a[7]), .Y(n294) );
  XNOR2X1 U285 ( .A(b[8]), .B(a[7]), .Y(n295) );
  NAND2X1 U286 ( .A(n279), .B(n265), .Y(n19) );
  XOR2X1 U287 ( .A(a[8]), .B(n266), .Y(n296) );
  XOR2X1 U288 ( .A(b[8]), .B(a[8]), .Y(n279) );
  XNOR2X1 U289 ( .A(b[1]), .B(a[1]), .Y(n311) );
  XNOR2X1 U290 ( .A(b[2]), .B(a[1]), .Y(n312) );
  XNOR2X1 U291 ( .A(b[3]), .B(a[1]), .Y(n313) );
  XNOR2X1 U292 ( .A(b[4]), .B(a[1]), .Y(n314) );
  XNOR2X1 U293 ( .A(b[5]), .B(a[1]), .Y(n315) );
  XNOR2X1 U294 ( .A(b[6]), .B(a[1]), .Y(n316) );
  XNOR2X1 U295 ( .A(b[7]), .B(a[1]), .Y(n317) );
  XNOR2X1 U296 ( .A(b[8]), .B(n259), .Y(n318) );
  OAI22XL U297 ( .A0(n268), .A1(n305), .B0(n304), .B1(n319), .Y(n113) );
  OAI22XL U298 ( .A0(n319), .A1(n305), .B0(n304), .B1(n320), .Y(n112) );
  XNOR2X1 U299 ( .A(b[1]), .B(a[3]), .Y(n319) );
  OAI22XL U300 ( .A0(n320), .A1(n305), .B0(n304), .B1(n321), .Y(n111) );
  XNOR2X1 U301 ( .A(b[2]), .B(a[3]), .Y(n320) );
  XNOR2X1 U302 ( .A(b[3]), .B(a[3]), .Y(n321) );
  OAI22XL U303 ( .A0(n322), .A1(n305), .B0(n304), .B1(n323), .Y(n109) );
  XNOR2X1 U304 ( .A(b[4]), .B(a[3]), .Y(n322) );
  OAI22XL U305 ( .A0(n323), .A1(n305), .B0(n304), .B1(n324), .Y(n108) );
  XNOR2X1 U306 ( .A(b[5]), .B(a[3]), .Y(n323) );
  OAI22XL U307 ( .A0(n324), .A1(n305), .B0(n304), .B1(n309), .Y(n107) );
  XNOR2X1 U308 ( .A(b[7]), .B(a[3]), .Y(n309) );
  XNOR2X1 U309 ( .A(b[6]), .B(a[3]), .Y(n324) );
  AO21X1 U310 ( .A0(n305), .A1(n304), .B0(n308), .Y(n106) );
  XNOR2X1 U311 ( .A(b[8]), .B(a[3]), .Y(n308) );
  XNOR2X1 U312 ( .A(n268), .B(a[2]), .Y(n325) );
  OAI22XL U313 ( .A0(n267), .A1(n281), .B0(n282), .B1(n326), .Y(n104) );
  OAI22XL U314 ( .A0(n326), .A1(n281), .B0(n282), .B1(n327), .Y(n103) );
  XNOR2X1 U315 ( .A(b[1]), .B(a[5]), .Y(n326) );
  OAI22XL U316 ( .A0(n327), .A1(n281), .B0(n282), .B1(n328), .Y(n102) );
  XNOR2X1 U317 ( .A(b[2]), .B(a[5]), .Y(n327) );
  OAI22XL U318 ( .A0(n328), .A1(n281), .B0(n282), .B1(n329), .Y(n101) );
  XNOR2X1 U319 ( .A(b[3]), .B(a[5]), .Y(n328) );
  OAI22XL U320 ( .A0(n329), .A1(n281), .B0(n282), .B1(n280), .Y(n100) );
  XNOR2X1 U321 ( .A(b[5]), .B(a[5]), .Y(n280) );
  XNOR2X1 U322 ( .A(n267), .B(a[4]), .Y(n330) );
  XNOR2X1 U323 ( .A(b[4]), .B(a[5]), .Y(n329) );
endmodule


module RFILE_DW_mult_tc_0 ( a, b, product );
  input [8:0] a;
  input [8:0] b;
  output [17:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n19, n20, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n32, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n75, n76, n77, n80,
         n81, n82, n83, n84, n85, n86, n88, n89, n90, n91, n92, n94, n95, n97,
         n98, n99, n100, n101, n102, n103, n104, n106, n107, n108, n109, n111,
         n112, n113, n115, n116, n117, n118, n119, n120, n121, n122, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330;

  ADDFXL U3 ( .A(n20), .B(n19), .CI(n3), .CO(n2), .S(product[16]) );
  ADDFXL U4 ( .A(n21), .B(n22), .CI(n4), .CO(n3), .S(product[15]) );
  ADDFXL U5 ( .A(n27), .B(n23), .CI(n5), .CO(n4), .S(product[14]) );
  ADDFXL U6 ( .A(n30), .B(n28), .CI(n6), .CO(n5), .S(product[13]) );
  ADDFXL U7 ( .A(n31), .B(n35), .CI(n7), .CO(n6), .S(product[12]) );
  ADDFXL U8 ( .A(n36), .B(n40), .CI(n8), .CO(n7), .S(product[11]) );
  ADDFXL U9 ( .A(n41), .B(n47), .CI(n9), .CO(n8), .S(product[10]) );
  ADDFXL U10 ( .A(n48), .B(n54), .CI(n10), .CO(n9), .S(product[9]) );
  ADDFXL U11 ( .A(n55), .B(n59), .CI(n11), .CO(n10), .S(product[8]) );
  ADDFXL U12 ( .A(n60), .B(n64), .CI(n12), .CO(n11), .S(product[7]) );
  ADDFXL U13 ( .A(n65), .B(n66), .CI(n13), .CO(n12), .S(product[6]) );
  ADDFXL U14 ( .A(n67), .B(n70), .CI(n14), .CO(n13), .S(product[5]) );
  ADDFXL U15 ( .A(n71), .B(n72), .CI(n15), .CO(n14), .S(product[4]) );
  ADDFXL U16 ( .A(n73), .B(n113), .CI(n16), .CO(n15), .S(product[3]) );
  ADDFXL U20 ( .A(n80), .B(n24), .CI(n88), .CO(n20), .S(n21) );
  ADDFXL U21 ( .A(n261), .B(n81), .CI(n26), .CO(n22), .S(n23) );
  CMPR42X1 U23 ( .A(n32), .B(n89), .C(n82), .D(n97), .ICI(n29), .S(n28), .ICO(
        n26), .CO(n27) );
  CMPR42X1 U24 ( .A(n90), .B(n83), .C(n264), .D(n37), .ICI(n34), .S(n31), 
        .ICO(n29), .CO(n30) );
  CMPR42X1 U26 ( .A(n98), .B(n91), .C(n42), .D(n38), .ICI(n39), .S(n36), .ICO(
        n34), .CO(n35) );
  ADDFXL U27 ( .A(n44), .B(n84), .CI(n106), .CO(n37), .S(n38) );
  CMPR42X1 U28 ( .A(n99), .B(n92), .C(n49), .D(n46), .ICI(n43), .S(n41), .ICO(
        n39), .CO(n40) );
  ADDFXL U29 ( .A(n266), .B(n85), .CI(n51), .CO(n42), .S(n43) );
  CMPR42X1 U31 ( .A(n107), .B(n86), .C(n53), .D(n56), .ICI(n50), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U32 ( .A(n115), .B(n100), .CI(n52), .CO(n49), .S(n50) );
  CMPR42X1 U35 ( .A(n108), .B(n101), .C(n61), .D(n58), .ICI(n57), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U37 ( .A(n75), .B(n95), .C(n109), .D(n63), .ICI(n62), .S(n60), 
        .ICO(n58), .CO(n59) );
  ADDHXL U38 ( .A(n117), .B(n102), .CO(n61), .S(n62) );
  ADDFXL U40 ( .A(n111), .B(n76), .CI(n69), .CO(n66), .S(n67) );
  ADDHXL U41 ( .A(n119), .B(n104), .CO(n68), .S(n69) );
  ADDHXL U43 ( .A(n121), .B(n77), .CO(n72), .S(n73) );
  CLKINVX1 U195 ( .A(a[1]), .Y(n259) );
  OA22X1 U196 ( .A0(n321), .A1(n305), .B0(n304), .B1(n322), .Y(n258) );
  CLKINVX1 U197 ( .A(n68), .Y(n263) );
  CLKINVX1 U198 ( .A(n118), .Y(n268) );
  CLKINVX1 U199 ( .A(n44), .Y(n266) );
  CLKINVX1 U200 ( .A(n296), .Y(n260) );
  CLKINVX1 U201 ( .A(n32), .Y(n264) );
  XOR2X1 U202 ( .A(a[2]), .B(n259), .Y(n304) );
  NAND2X1 U203 ( .A(n304), .B(n325), .Y(n305) );
  CLKINVX1 U204 ( .A(a[3]), .Y(n267) );
  XOR2X1 U205 ( .A(a[4]), .B(n267), .Y(n282) );
  XOR2X1 U206 ( .A(a[6]), .B(n265), .Y(n286) );
  NAND2X1 U207 ( .A(n282), .B(n330), .Y(n281) );
  NAND2X1 U208 ( .A(n286), .B(n310), .Y(n287) );
  CLKINVX1 U209 ( .A(a[5]), .Y(n265) );
  CLKINVX1 U210 ( .A(a[7]), .Y(n262) );
  CLKINVX1 U211 ( .A(n24), .Y(n261) );
  AND2X1 U212 ( .A(n122), .B(a[1]), .Y(n16) );
  XOR2X1 U213 ( .A(n122), .B(a[1]), .Y(product[2]) );
  NOR2X1 U214 ( .A(n311), .B(n259), .Y(n122) );
  OAI22XL U215 ( .A0(n267), .A1(n304), .B0(n267), .B1(n305), .Y(n77) );
  NOR2X1 U216 ( .A(n312), .B(n259), .Y(n121) );
  AND2X1 U217 ( .A(n120), .B(n112), .Y(n70) );
  XOR2X1 U218 ( .A(n120), .B(n112), .Y(n71) );
  NOR2X1 U219 ( .A(n313), .B(n259), .Y(n120) );
  OAI22XL U220 ( .A0(n265), .A1(n282), .B0(n265), .B1(n281), .Y(n76) );
  AND2X1 U221 ( .A(n116), .B(n94), .Y(n56) );
  XOR2X1 U222 ( .A(n116), .B(n94), .Y(n57) );
  NOR2X1 U223 ( .A(n317), .B(n259), .Y(n116) );
  NOR2BX1 U224 ( .AN(n103), .B(n268), .Y(n63) );
  OAI211X1 U225 ( .A0(n258), .A1(n263), .B0(n269), .C0(n270), .Y(n64) );
  XOR2X1 U226 ( .A(n271), .B(n272), .Y(n65) );
  NOR2X1 U227 ( .A(n118), .B(n258), .Y(n273) );
  NOR2X1 U228 ( .A(n268), .B(n258), .Y(n274) );
  NOR2X1 U229 ( .A(n118), .B(n263), .Y(n275) );
  NOR2X1 U230 ( .A(n268), .B(n263), .Y(n276) );
  XNOR2X1 U231 ( .A(n268), .B(n103), .Y(n271) );
  XNOR2X1 U232 ( .A(n258), .B(n68), .Y(n272) );
  MXI2X1 U233 ( .A(n274), .B(n273), .S0(n103), .Y(n269) );
  MXI2X1 U234 ( .A(n276), .B(n275), .S0(n103), .Y(n270) );
  NOR2X1 U235 ( .A(n314), .B(n259), .Y(n119) );
  NOR2X1 U236 ( .A(n315), .B(n259), .Y(n118) );
  OAI22XL U237 ( .A0(n262), .A1(n286), .B0(n262), .B1(n287), .Y(n75) );
  NOR2X1 U238 ( .A(n316), .B(n259), .Y(n117) );
  NAND2BX1 U239 ( .AN(n259), .B(n318), .Y(n115) );
  NAND2X1 U240 ( .A(n260), .B(a[8]), .Y(n306) );
  XOR2X1 U241 ( .A(n277), .B(n278), .Y(product[17]) );
  AND2X1 U242 ( .A(n279), .B(n260), .Y(n278) );
  XOR2X1 U243 ( .A(n19), .B(n2), .Y(n277) );
  OAI22XL U244 ( .A0(n280), .A1(n281), .B0(n282), .B1(n283), .Y(n99) );
  OAI22XL U245 ( .A0(n283), .A1(n281), .B0(n282), .B1(n284), .Y(n98) );
  XNOR2X1 U246 ( .A(b[6]), .B(a[5]), .Y(n283) );
  AO21X1 U247 ( .A0(n281), .A1(n282), .B0(n285), .Y(n97) );
  OAI22XL U248 ( .A0(n262), .A1(n287), .B0(n286), .B1(n288), .Y(n95) );
  OAI22XL U249 ( .A0(n288), .A1(n287), .B0(n286), .B1(n289), .Y(n94) );
  XNOR2X1 U250 ( .A(b[1]), .B(a[7]), .Y(n288) );
  OAI22XL U251 ( .A0(n290), .A1(n287), .B0(n286), .B1(n291), .Y(n92) );
  OAI22XL U252 ( .A0(n291), .A1(n287), .B0(n286), .B1(n292), .Y(n91) );
  XNOR2X1 U253 ( .A(b[4]), .B(a[7]), .Y(n291) );
  OAI22XL U254 ( .A0(n292), .A1(n287), .B0(n286), .B1(n293), .Y(n90) );
  XNOR2X1 U255 ( .A(b[5]), .B(a[7]), .Y(n292) );
  OAI22XL U256 ( .A0(n293), .A1(n287), .B0(n286), .B1(n294), .Y(n89) );
  XNOR2X1 U257 ( .A(b[6]), .B(a[7]), .Y(n293) );
  AO21X1 U258 ( .A0(n287), .A1(n286), .B0(n295), .Y(n88) );
  NOR2X1 U259 ( .A(n296), .B(n297), .Y(n86) );
  XNOR2X1 U260 ( .A(b[1]), .B(a[8]), .Y(n297) );
  NOR2X1 U261 ( .A(n296), .B(n298), .Y(n85) );
  XNOR2X1 U262 ( .A(b[2]), .B(a[8]), .Y(n298) );
  NOR2X1 U263 ( .A(n296), .B(n299), .Y(n84) );
  XNOR2X1 U264 ( .A(b[3]), .B(a[8]), .Y(n299) );
  NOR2X1 U265 ( .A(n296), .B(n300), .Y(n83) );
  XNOR2X1 U266 ( .A(b[4]), .B(a[8]), .Y(n300) );
  NOR2X1 U267 ( .A(n296), .B(n301), .Y(n82) );
  XNOR2X1 U268 ( .A(b[5]), .B(a[8]), .Y(n301) );
  NOR2X1 U269 ( .A(n296), .B(n302), .Y(n81) );
  XNOR2X1 U270 ( .A(b[6]), .B(a[8]), .Y(n302) );
  NOR2X1 U271 ( .A(n296), .B(n303), .Y(n80) );
  XNOR2X1 U272 ( .A(b[7]), .B(a[8]), .Y(n303) );
  XNOR2X1 U273 ( .A(n306), .B(n307), .Y(n52) );
  NAND2X1 U274 ( .A(n307), .B(n306), .Y(n51) );
  OA22X1 U275 ( .A0(n289), .A1(n287), .B0(n286), .B1(n290), .Y(n307) );
  XNOR2X1 U276 ( .A(b[3]), .B(a[7]), .Y(n290) );
  XNOR2X1 U277 ( .A(b[2]), .B(a[7]), .Y(n289) );
  OAI22XL U278 ( .A0(n304), .A1(n308), .B0(n309), .B1(n305), .Y(n44) );
  OAI22XL U279 ( .A0(n282), .A1(n285), .B0(n284), .B1(n281), .Y(n32) );
  XNOR2X1 U280 ( .A(b[7]), .B(a[5]), .Y(n284) );
  XNOR2X1 U281 ( .A(b[8]), .B(a[5]), .Y(n285) );
  OAI22XL U282 ( .A0(n286), .A1(n295), .B0(n294), .B1(n287), .Y(n24) );
  XNOR2X1 U283 ( .A(n262), .B(a[6]), .Y(n310) );
  XNOR2X1 U284 ( .A(b[7]), .B(a[7]), .Y(n294) );
  XNOR2X1 U285 ( .A(b[8]), .B(a[7]), .Y(n295) );
  NAND2X1 U286 ( .A(n279), .B(n260), .Y(n19) );
  XOR2X1 U287 ( .A(a[8]), .B(n262), .Y(n296) );
  XOR2X1 U288 ( .A(b[8]), .B(a[8]), .Y(n279) );
  XNOR2X1 U289 ( .A(b[1]), .B(a[1]), .Y(n311) );
  XNOR2X1 U290 ( .A(b[2]), .B(a[1]), .Y(n312) );
  XNOR2X1 U291 ( .A(b[3]), .B(a[1]), .Y(n313) );
  XNOR2X1 U292 ( .A(b[4]), .B(a[1]), .Y(n314) );
  XNOR2X1 U293 ( .A(b[5]), .B(a[1]), .Y(n315) );
  XNOR2X1 U294 ( .A(b[6]), .B(a[1]), .Y(n316) );
  XNOR2X1 U295 ( .A(b[7]), .B(a[1]), .Y(n317) );
  XNOR2X1 U296 ( .A(b[8]), .B(n259), .Y(n318) );
  OAI22XL U297 ( .A0(n267), .A1(n305), .B0(n304), .B1(n319), .Y(n113) );
  OAI22XL U298 ( .A0(n319), .A1(n305), .B0(n304), .B1(n320), .Y(n112) );
  XNOR2X1 U299 ( .A(b[1]), .B(a[3]), .Y(n319) );
  OAI22XL U300 ( .A0(n320), .A1(n305), .B0(n304), .B1(n321), .Y(n111) );
  XNOR2X1 U301 ( .A(b[2]), .B(a[3]), .Y(n320) );
  XNOR2X1 U302 ( .A(b[3]), .B(a[3]), .Y(n321) );
  OAI22XL U303 ( .A0(n322), .A1(n305), .B0(n304), .B1(n323), .Y(n109) );
  XNOR2X1 U304 ( .A(b[4]), .B(a[3]), .Y(n322) );
  OAI22XL U305 ( .A0(n323), .A1(n305), .B0(n304), .B1(n324), .Y(n108) );
  XNOR2X1 U306 ( .A(b[5]), .B(a[3]), .Y(n323) );
  OAI22XL U307 ( .A0(n324), .A1(n305), .B0(n304), .B1(n309), .Y(n107) );
  XNOR2X1 U308 ( .A(b[7]), .B(a[3]), .Y(n309) );
  XNOR2X1 U309 ( .A(b[6]), .B(a[3]), .Y(n324) );
  AO21X1 U310 ( .A0(n305), .A1(n304), .B0(n308), .Y(n106) );
  XNOR2X1 U311 ( .A(b[8]), .B(a[3]), .Y(n308) );
  XNOR2X1 U312 ( .A(n267), .B(a[2]), .Y(n325) );
  OAI22XL U313 ( .A0(n265), .A1(n281), .B0(n282), .B1(n326), .Y(n104) );
  OAI22XL U314 ( .A0(n326), .A1(n281), .B0(n282), .B1(n327), .Y(n103) );
  XNOR2X1 U315 ( .A(b[1]), .B(a[5]), .Y(n326) );
  OAI22XL U316 ( .A0(n327), .A1(n281), .B0(n282), .B1(n328), .Y(n102) );
  XNOR2X1 U317 ( .A(b[2]), .B(a[5]), .Y(n327) );
  OAI22XL U318 ( .A0(n328), .A1(n281), .B0(n282), .B1(n329), .Y(n101) );
  XNOR2X1 U319 ( .A(b[3]), .B(a[5]), .Y(n328) );
  OAI22XL U320 ( .A0(n329), .A1(n281), .B0(n282), .B1(n280), .Y(n100) );
  XNOR2X1 U321 ( .A(b[5]), .B(a[5]), .Y(n280) );
  XNOR2X1 U322 ( .A(n265), .B(a[4]), .Y(n330) );
  XNOR2X1 U323 ( .A(b[4]), .B(a[5]), .Y(n329) );
endmodule


module RFILE_DW01_sub_10 ( A, B, CI, DIFF, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;
  wire   [18:0] carry;

  XOR3X1 U2_17 ( .A(A[17]), .B(n2), .C(carry[17]), .Y(DIFF[17]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n15), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n16), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n13), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n14), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_14 ( .A(A[14]), .B(n5), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n3), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n4), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n10), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n11), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n12), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_13 ( .A(A[13]), .B(n6), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n7), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n8), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n9), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  CLKINVX1 U1 ( .A(B[10]), .Y(n9) );
  CLKINVX1 U2 ( .A(B[11]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[12]), .Y(n7) );
  CLKINVX1 U4 ( .A(B[13]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[7]), .Y(n12) );
  CLKINVX1 U6 ( .A(B[8]), .Y(n11) );
  CLKINVX1 U7 ( .A(B[9]), .Y(n10) );
  XNOR2X1 U8 ( .A(n17), .B(A[2]), .Y(DIFF[2]) );
  CLKINVX1 U9 ( .A(B[15]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[16]), .Y(n3) );
  CLKINVX1 U11 ( .A(B[14]), .Y(n5) );
  CLKINVX1 U12 ( .A(B[5]), .Y(n14) );
  CLKINVX1 U13 ( .A(B[6]), .Y(n13) );
  NAND2X1 U14 ( .A(B[2]), .B(n1), .Y(carry[3]) );
  CLKINVX1 U15 ( .A(B[3]), .Y(n16) );
  CLKINVX1 U16 ( .A(A[2]), .Y(n1) );
  CLKINVX1 U17 ( .A(B[4]), .Y(n15) );
  CLKINVX1 U18 ( .A(B[2]), .Y(n17) );
  CLKINVX1 U19 ( .A(B[17]), .Y(n2) );
endmodule


module RFILE_DW01_sub_11 ( A, B, CI, DIFF, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19;
  wire   [18:0] carry;

  XOR3X1 U2_17 ( .A(A[17]), .B(n2), .C(carry[17]), .Y(DIFF[17]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n18), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_15 ( .A(A[15]), .B(n4), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n5), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n6), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n7), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n8), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n9), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n10), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n11), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n12), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n13), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n14), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n15), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_16 ( .A(A[16]), .B(n3), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n16), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n17), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  XNOR2X1 U1 ( .A(n19), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U2 ( .A(B[2]), .Y(n17) );
  CLKINVX1 U3 ( .A(B[3]), .Y(n16) );
  CLKINVX1 U4 ( .A(B[16]), .Y(n3) );
  CLKINVX1 U5 ( .A(B[4]), .Y(n15) );
  CLKINVX1 U6 ( .A(B[5]), .Y(n14) );
  CLKINVX1 U7 ( .A(B[6]), .Y(n13) );
  CLKINVX1 U8 ( .A(B[7]), .Y(n12) );
  CLKINVX1 U9 ( .A(B[8]), .Y(n11) );
  CLKINVX1 U10 ( .A(B[9]), .Y(n10) );
  CLKINVX1 U11 ( .A(B[10]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[11]), .Y(n8) );
  CLKINVX1 U13 ( .A(B[12]), .Y(n7) );
  CLKINVX1 U14 ( .A(B[13]), .Y(n6) );
  CLKINVX1 U15 ( .A(B[14]), .Y(n5) );
  CLKINVX1 U16 ( .A(B[15]), .Y(n4) );
  CLKINVX1 U17 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U18 ( .A(B[0]), .Y(n19) );
  CLKINVX1 U19 ( .A(B[1]), .Y(n18) );
  NAND2X1 U20 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U21 ( .A(B[17]), .Y(n2) );
endmodule


module RFILE_DW01_add_4 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [17:1] carry;

  XOR3X1 U1_17 ( .A(A[17]), .B(B[17]), .C(carry[17]), .Y(SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module RFILE_DW01_sub_14 ( A, B, CI, DIFF, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19;
  wire   [18:0] carry;

  XOR3X1 U2_17 ( .A(A[17]), .B(n2), .C(carry[17]), .Y(DIFF[17]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n18), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_15 ( .A(A[15]), .B(n4), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n5), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n6), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n7), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n8), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n9), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n10), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n11), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n12), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n13), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n14), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n15), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_16 ( .A(A[16]), .B(n3), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n16), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n17), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  XNOR2X1 U1 ( .A(n19), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U2 ( .A(B[2]), .Y(n17) );
  CLKINVX1 U3 ( .A(B[3]), .Y(n16) );
  CLKINVX1 U4 ( .A(B[16]), .Y(n3) );
  CLKINVX1 U5 ( .A(B[4]), .Y(n15) );
  CLKINVX1 U6 ( .A(B[5]), .Y(n14) );
  CLKINVX1 U7 ( .A(B[6]), .Y(n13) );
  CLKINVX1 U8 ( .A(B[7]), .Y(n12) );
  CLKINVX1 U9 ( .A(B[8]), .Y(n11) );
  CLKINVX1 U10 ( .A(B[9]), .Y(n10) );
  CLKINVX1 U11 ( .A(B[10]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[11]), .Y(n8) );
  CLKINVX1 U13 ( .A(B[12]), .Y(n7) );
  CLKINVX1 U14 ( .A(B[13]), .Y(n6) );
  CLKINVX1 U15 ( .A(B[14]), .Y(n5) );
  CLKINVX1 U16 ( .A(B[15]), .Y(n4) );
  CLKINVX1 U17 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U18 ( .A(B[0]), .Y(n19) );
  CLKINVX1 U19 ( .A(B[1]), .Y(n18) );
  NAND2X1 U20 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U21 ( .A(B[17]), .Y(n2) );
endmodule


module RFILE_DW01_add_5 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [17:1] carry;

  XOR3X1 U1_17 ( .A(A[17]), .B(B[17]), .C(carry[17]), .Y(SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module RFILE ( clk, rst, A_x, A_y, B_x, B_y, C_x, C_y, rssiA, rssiB, rssiC, 
        valueA, valueB, valueC, expA, expB, expC, busy, out_valid, xt, yt );
  input [7:0] A_x;
  input [7:0] A_y;
  input [7:0] B_x;
  input [7:0] B_y;
  input [7:0] C_x;
  input [7:0] C_y;
  input [19:0] rssiA;
  input [19:0] rssiB;
  input [19:0] rssiC;
  input [15:0] valueA;
  input [15:0] valueB;
  input [15:0] valueC;
  output [11:0] expA;
  output [11:0] expB;
  output [11:0] expC;
  output [7:0] xt;
  output [7:0] yt;
  input clk, rst;
  output busy, out_valid;
  wire   N81, N82, N83, N84, load_div1, load_div2, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, N134, N135, N136,
         N137, N138, N139, N140, N141, N142, N143, N144, N145, N146, N147,
         N148, N149, N150, N151, N152, N153, N192, N193, N194, N195, N196,
         N197, N198, N199, N200, N201, N202, N203, N204, N205, N206, N207,
         N208, N209, N210, N211, N212, N213, N214, N215, N232, N233, N234,
         N235, N236, N237, N238, N239, N256, N257, N258, N259, N260, N261,
         N262, N263, N264, N265, N266, N267, N268, N269, N270, N271, N272,
         N273, N274, N275, N276, N277, N278, N279, N280, N297, N298, N299,
         N300, N301, N302, N303, N304, N321, N322, N323, N324, N325, N326,
         N327, N328, N329, N330, N331, N332, N333, N334, N335, N336, N337,
         N358, N359, N360, N361, N362, N363, N364, N365, N366, N367, N368,
         N369, N370, N371, N372, N373, N374, N375, N376, N377, N398, N399,
         N400, N401, N402, N403, N404, N405, N406, N407, N408, N409, N410,
         N411, N412, N413, N414, N415, N416, N417, N438, N439, N440, N441,
         N442, N443, N444, N445, N446, N447, N448, N449, N450, N451, N452,
         N453, N454, N455, N456, N457, N461, N462, N463, N464, N465, N466,
         N469, N470, N471, N472, N473, N474, N477, N478, N479, N480, N481,
         N482, N484, N485, N486, N487, N488, N489, N490, N491, N492, N493,
         N494, N495, N496, N497, N498, N499, N500, N501, N502, N503, N504,
         N505, N506, N507, N508, N509, N510, N511, N512, N513, N515, N517,
         N518, N519, N520, N521, N522, N523, N524, N525, N526, N527, N528,
         N529, N530, N531, N532, N533, N535, N536, N537, N538, N539, N540,
         N541, N542, N543, N544, N545, N546, N547, N548, N549, N550, N551,
         N553, N554, N555, N556, N557, N558, N559, N560, N561, N562, N563,
         N564, N565, N566, N567, N568, N587, N588, N589, N590, N591, N592,
         N593, N594, N595, N596, N597, N598, N599, N600, N601, N602, N603,
         N604, N623, N624, N625, N626, N627, N628, N629, N630, N631, N632,
         N633, N634, N635, N636, N637, N638, N639, N640, N695, N696, N697,
         N698, N699, N700, N701, N702, N703, N704, N705, N706, N707, N708,
         N709, N710, N711, N712, N713, N714, N715, N716, N717, N718, N719,
         N773, N774, N775, N776, N777, N778, N779, N780, N781, N782, N783,
         N784, N785, N786, N787, N788, N789, N790, N791, N792, N793, N794,
         N795, N796, N797, n87, n93, n94, n95, n97, n98, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, N771, N770, N769,
         N768, N767, N766, N765, N764, N763, N762, N761, N760, N759, N758,
         N757, N756, N755, N754, N753, N752, N751, N750, N749, N748, N747,
         N745, N744, N743, N742, N741, N740, N739, N738, N737, N736, N735,
         N734, N733, N732, N731, N730, N729, N728, N727, N726, N725, N724,
         N723, N722, N721, N693, N692, N691, N690, N689, N688, N687, N686,
         N685, N684, N683, N682, N681, N680, N679, N678, N677, N676, N675,
         N674, N673, N672, N671, N670, N669, N667, N666, N665, N664, N663,
         N662, N661, N660, N659, N658, N657, N656, N655, N654, N653, N652,
         N651, N650, N649, N648, N647, N646, N645, N644, N643, N320, N319,
         N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, N308,
         N307, N306, N305, N296, N295, N294, N293, N292, N291, N290, N289,
         N288, N287, N286, N285, N284, N283, N282, N281, N255, N254, N253,
         N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242,
         N241, N240, N231, N230, N229, N228, N227, N226, N225, N224, N223,
         N222, N221, N220, N219, N218, N217, N216, N189, N188, N187, N186,
         N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175,
         N174, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162,
         N161, N160, N159, N158, N157, N156, N622, N621, N620, N619, N618,
         N617, N616, N615, N614, N613, N612, N611, N610, N609, N608, N607,
         N606, N605, N586, N585, N584, N583, N582, N581, N580, N579, N578,
         N577, N576, N575, N574, N573, N572, N571, N570, N569,
         \mult_179_S2/n4 , \mult_179_S2/n3 , \mult_179_S2/n2 ,
         \mult_178_S2/n4 , \mult_178_S2/n3 , \mult_178_S2/n2 ,
         \mult_177_S2/n4 , \mult_177_S2/n3 , \mult_177_S2/n2 , n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n288;
  wire   [2:0] xi_a;
  wire   [2:0] xi_b;
  wire   [2:0] xi_c;
  wire   [16:7] d_a;
  wire   [8:0] dshort_a;
  wire   [16:7] d_b;
  wire   [8:0] dshort_b;
  wire   [16:7] d_c;
  wire   [8:0] dshort_c;
  wire   [3:0] st;
  wire   [3:0] nst;
  wire   [3:0] cnt;
  wire   [19:0] dividand1_a;
  wire   [15:0] q1_a;
  wire   [19:0] dividand1_b;
  wire   [15:0] q1_b;
  wire   [19:0] dividand1_c;
  wire   [15:0] q1_c;
  wire   [25:0] dividand2_x;
  wire   [17:0] dividor2_x;
  wire   [8:0] q2_x;
  wire   [25:0] dividand2_y;
  wire   [8:0] q2_y;
  wire   [8:0] a1;
  wire   [8:0] b2;
  wire   [8:0] a2;
  wire   [8:0] b1;
  wire   [6:0] di_a;
  wire   [6:0] di_b;
  wire   [6:0] di_c;
  wire   [17:0] d2_a;
  wire   [17:0] c1;
  wire   [17:0] c2;
  wire   [16:0] c10;
  wire   [16:0] c20;
  wire   [17:0] d2_b;
  wire   [17:0] d2_c;
  wire   [20:0] \sub_0_root_sub_0_root_sub_161_2/carry ;
  wire   [20:0] \sub_0_root_sub_0_root_sub_162_2/carry ;
  wire   [20:0] \sub_0_root_sub_0_root_sub_163_2/carry ;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53;
  assign N358 = rssiA[0];
  assign N398 = rssiB[0];
  assign N438 = rssiC[0];

  ADDHXL \mult_179_S2/U5  ( .A(N477), .B(di_c[2]), .CO(\mult_179_S2/n4 ), .S(
        N479) );
  ADDFXL \mult_179_S2/U4  ( .A(di_c[3]), .B(N478), .CI(\mult_179_S2/n4 ), .CO(
        \mult_179_S2/n3 ), .S(N480) );
  ADDFXL \mult_179_S2/U3  ( .A(di_c[4]), .B(di_c[2]), .CI(\mult_179_S2/n3 ), 
        .CO(\mult_179_S2/n2 ), .S(N481) );
  ADDHXL \mult_178_S2/U5  ( .A(N469), .B(di_b[2]), .CO(\mult_178_S2/n4 ), .S(
        N471) );
  ADDFXL \mult_178_S2/U4  ( .A(di_b[3]), .B(N470), .CI(\mult_178_S2/n4 ), .CO(
        \mult_178_S2/n3 ), .S(N472) );
  ADDFXL \mult_178_S2/U3  ( .A(di_b[4]), .B(di_b[2]), .CI(\mult_178_S2/n3 ), 
        .CO(\mult_178_S2/n2 ), .S(N473) );
  ADDHXL \mult_177_S2/U5  ( .A(N461), .B(di_a[2]), .CO(\mult_177_S2/n4 ), .S(
        N463) );
  ADDFXL \mult_177_S2/U4  ( .A(di_a[3]), .B(N462), .CI(\mult_177_S2/n4 ), .CO(
        \mult_177_S2/n3 ), .S(N464) );
  ADDFXL \mult_177_S2/U3  ( .A(di_a[4]), .B(di_a[2]), .CI(\mult_177_S2/n3 ), 
        .CO(\mult_177_S2/n2 ), .S(N465) );
  EDFFX1 \x_a_reg[12]  ( .D(q1_a[12]), .E(n211), .CK(clk), .Q(xi_a[0]) );
  EDFFX1 \x_b_reg[12]  ( .D(q1_b[12]), .E(n210), .CK(clk), .Q(xi_b[0]) );
  EDFFX1 \x_c_reg[12]  ( .D(q1_c[12]), .E(n210), .CK(clk), .Q(xi_c[0]) );
  EDFFX1 \x_a_reg[13]  ( .D(q1_a[13]), .E(n210), .CK(clk), .Q(xi_a[1]) );
  EDFFX1 \x_b_reg[13]  ( .D(q1_b[13]), .E(n211), .CK(clk), .Q(xi_b[1]) );
  EDFFX1 \x_c_reg[13]  ( .D(q1_c[13]), .E(n210), .CK(clk), .Q(xi_c[1]) );
  EDFFX1 \x_a_reg[14]  ( .D(q1_a[14]), .E(n210), .CK(clk), .Q(xi_a[2]) );
  EDFFX1 \x_b_reg[14]  ( .D(q1_b[14]), .E(n210), .CK(clk), .Q(xi_b[2]) );
  EDFFX1 \x_c_reg[14]  ( .D(q1_c[14]), .E(n210), .CK(clk), .Q(xi_c[2]) );
  EDFFX1 \c10_reg[15]  ( .D(N271), .E(n193), .CK(clk), .Q(c10[15]) );
  EDFFX1 \c10_reg[14]  ( .D(N270), .E(n193), .CK(clk), .Q(c10[14]) );
  EDFFX1 \c10_reg[13]  ( .D(N269), .E(n193), .CK(clk), .Q(c10[13]) );
  EDFFX1 \c10_reg[12]  ( .D(N268), .E(n193), .CK(clk), .Q(c10[12]) );
  EDFFX1 \c20_reg[15]  ( .D(N336), .E(n193), .CK(clk), .Q(c20[15]) );
  EDFFX1 \c20_reg[14]  ( .D(N335), .E(n193), .CK(clk), .Q(c20[14]) );
  EDFFX1 \c20_reg[13]  ( .D(N334), .E(n193), .CK(clk), .Q(c20[13]) );
  EDFFX1 \c20_reg[12]  ( .D(N333), .E(n193), .CK(clk), .Q(c20[12]) );
  EDFFX1 \d2_a_reg[17]  ( .D(N532), .E(n206), .CK(clk), .Q(d2_a[17]) );
  EDFFX1 \d2_a_reg[16]  ( .D(N531), .E(n206), .CK(clk), .Q(d2_a[16]) );
  EDFFX1 \d2_a_reg[15]  ( .D(N530), .E(n206), .CK(clk), .Q(d2_a[15]) );
  EDFFX1 \d2_a_reg[14]  ( .D(N529), .E(n206), .CK(clk), .Q(d2_a[14]) );
  EDFFX1 \c10_reg[16]  ( .D(N272), .E(n193), .CK(clk), .Q(c10[16]) );
  EDFFX1 \c20_reg[16]  ( .D(N337), .E(n193), .CK(clk), .Q(c20[16]) );
  EDFFX1 \d2_b_reg[17]  ( .D(N550), .E(n205), .CK(clk), .Q(d2_b[17]) );
  EDFFX1 \d2_b_reg[16]  ( .D(N549), .E(n205), .CK(clk), .Q(d2_b[16]) );
  EDFFX1 \d2_b_reg[15]  ( .D(N548), .E(n205), .CK(clk), .Q(d2_b[15]) );
  EDFFX1 \d2_b_reg[14]  ( .D(N547), .E(n205), .CK(clk), .Q(d2_b[14]) );
  EDFFX1 \d2_c_reg[17]  ( .D(N568), .E(n208), .CK(clk), .Q(d2_c[17]) );
  EDFFX1 \d2_c_reg[16]  ( .D(N567), .E(n208), .CK(clk), .Q(d2_c[16]) );
  EDFFX1 \d2_c_reg[15]  ( .D(N566), .E(n208), .CK(clk), .Q(d2_c[15]) );
  EDFFX1 \d2_c_reg[14]  ( .D(N565), .E(n208), .CK(clk), .Q(d2_c[14]) );
  EDFFX1 \c10_reg[11]  ( .D(N267), .E(n193), .CK(clk), .Q(c10[11]) );
  EDFFX1 \c10_reg[10]  ( .D(N266), .E(n193), .CK(clk), .Q(c10[10]) );
  EDFFX1 \c10_reg[9]  ( .D(N265), .E(n193), .CK(clk), .Q(c10[9]) );
  EDFFX1 \c10_reg[8]  ( .D(N264), .E(n193), .CK(clk), .Q(c10[8]) );
  EDFFX1 \c10_reg[7]  ( .D(N263), .E(n193), .CK(clk), .Q(c10[7]) );
  EDFFX1 \c10_reg[6]  ( .D(N262), .E(n193), .CK(clk), .Q(c10[6]) );
  EDFFX1 \c20_reg[11]  ( .D(N332), .E(n193), .CK(clk), .Q(c20[11]) );
  EDFFX1 \c20_reg[10]  ( .D(N331), .E(n193), .CK(clk), .Q(c20[10]) );
  EDFFX1 \c20_reg[9]  ( .D(N330), .E(n193), .CK(clk), .Q(c20[9]) );
  EDFFX1 \c20_reg[8]  ( .D(N329), .E(n193), .CK(clk), .Q(c20[8]) );
  EDFFX1 \c20_reg[7]  ( .D(N328), .E(n193), .CK(clk), .Q(c20[7]) );
  EDFFX1 \c20_reg[6]  ( .D(N327), .E(n193), .CK(clk), .Q(c20[6]) );
  EDFFX1 \d2_a_reg[13]  ( .D(N528), .E(n206), .CK(clk), .Q(d2_a[13]) );
  EDFFX1 \d2_a_reg[12]  ( .D(N527), .E(n206), .CK(clk), .Q(d2_a[12]) );
  EDFFX1 \d2_a_reg[11]  ( .D(N526), .E(n207), .CK(clk), .Q(d2_a[11]) );
  EDFFX1 \d2_a_reg[10]  ( .D(N525), .E(n207), .CK(clk), .Q(d2_a[10]) );
  EDFFX1 \d2_a_reg[9]  ( .D(N524), .E(n207), .CK(clk), .Q(d2_a[9]) );
  EDFFX1 \d2_b_reg[13]  ( .D(N546), .E(n205), .CK(clk), .Q(d2_b[13]) );
  EDFFX1 \d2_b_reg[12]  ( .D(N545), .E(n205), .CK(clk), .Q(d2_b[12]) );
  EDFFX1 \d2_b_reg[11]  ( .D(N544), .E(n205), .CK(clk), .Q(d2_b[11]) );
  EDFFX1 \d2_b_reg[10]  ( .D(N543), .E(n205), .CK(clk), .Q(d2_b[10]) );
  EDFFX1 \d2_b_reg[9]  ( .D(N542), .E(n205), .CK(clk), .Q(d2_b[9]) );
  EDFFX1 \d2_c_reg[13]  ( .D(N564), .E(n208), .CK(clk), .Q(d2_c[13]) );
  EDFFX1 \d2_c_reg[12]  ( .D(N563), .E(n208), .CK(clk), .Q(d2_c[12]) );
  EDFFX1 \d2_c_reg[11]  ( .D(N562), .E(n208), .CK(clk), .Q(d2_c[11]) );
  EDFFX1 \d2_c_reg[10]  ( .D(N561), .E(n208), .CK(clk), .Q(d2_c[10]) );
  EDFFX1 \d2_c_reg[9]  ( .D(N560), .E(n208), .CK(clk), .Q(d2_c[9]) );
  EDFFX1 \c10_reg[5]  ( .D(N261), .E(n193), .CK(clk), .Q(c10[5]) );
  EDFFX1 \c10_reg[4]  ( .D(N260), .E(n193), .CK(clk), .Q(c10[4]) );
  EDFFX1 \c10_reg[3]  ( .D(N259), .E(n193), .CK(clk), .Q(c10[3]) );
  EDFFX1 \c10_reg[2]  ( .D(N258), .E(n193), .CK(clk), .Q(c10[2]) );
  EDFFX1 \c10_reg[1]  ( .D(N257), .E(n193), .CK(clk), .Q(c10[1]) );
  EDFFX1 \c20_reg[5]  ( .D(N326), .E(n193), .CK(clk), .Q(c20[5]) );
  EDFFX1 \c20_reg[4]  ( .D(N325), .E(n193), .CK(clk), .Q(c20[4]) );
  EDFFX1 \c20_reg[3]  ( .D(N324), .E(n193), .CK(clk), .Q(c20[3]) );
  EDFFX1 \c20_reg[2]  ( .D(N323), .E(n193), .CK(clk), .Q(c20[2]) );
  EDFFX1 \c20_reg[1]  ( .D(N322), .E(n193), .CK(clk), .Q(c20[1]) );
  EDFFX1 \d2_a_reg[8]  ( .D(N523), .E(n207), .CK(clk), .Q(d2_a[8]) );
  EDFFX1 \d2_a_reg[7]  ( .D(N522), .E(n207), .CK(clk), .Q(d2_a[7]) );
  EDFFX1 \d2_a_reg[6]  ( .D(N521), .E(n207), .CK(clk), .Q(d2_a[6]) );
  EDFFX1 \d2_a_reg[5]  ( .D(N520), .E(n207), .CK(clk), .Q(d2_a[5]) );
  EDFFX1 \d2_a_reg[4]  ( .D(N519), .E(n207), .CK(clk), .Q(d2_a[4]) );
  EDFFX1 \d2_a_reg[3]  ( .D(N518), .E(n207), .CK(clk), .Q(d2_a[3]) );
  EDFFX1 \d2_b_reg[8]  ( .D(N541), .E(n205), .CK(clk), .Q(d2_b[8]) );
  EDFFX1 \d2_b_reg[7]  ( .D(N540), .E(n205), .CK(clk), .Q(d2_b[7]) );
  EDFFX1 \d2_b_reg[6]  ( .D(N539), .E(n205), .CK(clk), .Q(d2_b[6]) );
  EDFFX1 \d2_b_reg[5]  ( .D(N538), .E(n206), .CK(clk), .Q(d2_b[5]) );
  EDFFX1 \d2_b_reg[4]  ( .D(N537), .E(n206), .CK(clk), .Q(d2_b[4]) );
  EDFFX1 \d2_b_reg[3]  ( .D(N536), .E(n206), .CK(clk), .Q(d2_b[3]) );
  EDFFX1 \c10_reg[0]  ( .D(N256), .E(n193), .CK(clk), .Q(c10[0]) );
  EDFFX1 \d2_c_reg[8]  ( .D(N559), .E(n208), .CK(clk), .Q(d2_c[8]) );
  EDFFX1 \d2_c_reg[7]  ( .D(N558), .E(n208), .CK(clk), .Q(d2_c[7]) );
  EDFFX1 \d2_c_reg[6]  ( .D(N557), .E(n208), .CK(clk), .Q(d2_c[6]) );
  EDFFX1 \d2_c_reg[5]  ( .D(N556), .E(n209), .CK(clk), .Q(d2_c[5]) );
  EDFFX1 \d2_c_reg[4]  ( .D(N555), .E(n209), .CK(clk), .Q(d2_c[4]) );
  EDFFX1 \d2_c_reg[3]  ( .D(N554), .E(n209), .CK(clk), .Q(d2_c[3]) );
  EDFFX1 \c20_reg[0]  ( .D(N321), .E(n193), .CK(clk), .Q(c20[0]) );
  EDFFX1 \d_b_reg[16]  ( .D(N503), .E(n136), .CK(clk), .Q(d_b[16]) );
  EDFFX1 \d_a_reg[16]  ( .D(N493), .E(n136), .CK(clk), .Q(d_a[16]) );
  EDFFX1 \d_c_reg[16]  ( .D(N513), .E(n136), .CK(clk), .Q(d_c[16]) );
  EDFFX1 \d2_a_reg[2]  ( .D(N517), .E(n207), .CK(clk), .Q(d2_a[2]) );
  EDFFX1 \d2_b_reg[2]  ( .D(N535), .E(n206), .CK(clk), .Q(d2_b[2]) );
  EDFFX1 \d2_b_reg[0]  ( .D(N533), .E(n206), .CK(clk), .Q(d2_b[0]) );
  EDFFX1 \d2_c_reg[2]  ( .D(N553), .E(n209), .CK(clk), .Q(d2_c[2]) );
  EDFFX1 \d2_c_reg[0]  ( .D(N551), .E(n209), .CK(clk), .Q(d2_c[0]) );
  EDFFX1 \d2_a_reg[0]  ( .D(N515), .E(n207), .CK(clk), .Q(d2_a[0]) );
  EDFFX1 \d_b_reg[15]  ( .D(N502), .E(n197), .CK(clk), .Q(d_b[15]) );
  EDFFX1 \d_b_reg[14]  ( .D(N501), .E(n136), .CK(clk), .Q(d_b[14]) );
  EDFFX1 \d_b_reg[13]  ( .D(N500), .E(n197), .CK(clk), .Q(d_b[13]) );
  EDFFX1 \d_a_reg[15]  ( .D(N492), .E(n197), .CK(clk), .Q(d_a[15]) );
  EDFFX1 \d_a_reg[14]  ( .D(N491), .E(n136), .CK(clk), .Q(d_a[14]) );
  EDFFX1 \d_a_reg[13]  ( .D(N490), .E(n197), .CK(clk), .Q(d_a[13]) );
  EDFFX1 \d_c_reg[15]  ( .D(N512), .E(n197), .CK(clk), .Q(d_c[15]) );
  EDFFX1 \d_c_reg[14]  ( .D(N511), .E(n136), .CK(clk), .Q(d_c[14]) );
  EDFFX1 \d_c_reg[13]  ( .D(N510), .E(n197), .CK(clk), .Q(d_c[13]) );
  EDFFX1 \c1_reg[16]  ( .D(N603), .E(n198), .CK(clk), .Q(c1[16]) );
  EDFFX1 \c2_reg[16]  ( .D(N639), .E(n199), .CK(clk), .Q(c2[16]) );
  EDFFX1 \c1_reg[17]  ( .D(N604), .E(n199), .CK(clk), .Q(c1[17]) );
  EDFFX1 \c2_reg[17]  ( .D(N640), .E(n199), .CK(clk), .Q(c2[17]) );
  DFFQX1 \di_a_reg[6]  ( .D(n180), .CK(clk), .Q(di_a[6]) );
  DFFQX1 \di_b_reg[6]  ( .D(n167), .CK(clk), .Q(di_b[6]) );
  DFFQX1 \di_c_reg[6]  ( .D(n160), .CK(clk), .Q(di_c[6]) );
  DFFQX1 \di_a_reg[4]  ( .D(n178), .CK(clk), .Q(di_a[4]) );
  DFFQX1 \di_b_reg[4]  ( .D(n169), .CK(clk), .Q(di_b[4]) );
  DFFQX1 \di_c_reg[4]  ( .D(n162), .CK(clk), .Q(di_c[4]) );
  DFFQX1 \di_a_reg[2]  ( .D(n176), .CK(clk), .Q(di_a[2]) );
  DFFQX1 \di_b_reg[2]  ( .D(n171), .CK(clk), .Q(di_b[2]) );
  DFFQX1 \di_c_reg[2]  ( .D(n164), .CK(clk), .Q(di_c[2]) );
  EDFFX1 \d_b_reg[7]  ( .D(N494), .E(n197), .CK(clk), .Q(d_b[7]) );
  EDFFX1 \d_a_reg[7]  ( .D(N484), .E(n197), .CK(clk), .Q(d_a[7]) );
  EDFFX1 \d_c_reg[7]  ( .D(N504), .E(n197), .CK(clk), .Q(d_c[7]) );
  EDFFX1 \d_b_reg[12]  ( .D(N499), .E(n136), .CK(clk), .Q(d_b[12]) );
  EDFFX1 \d_b_reg[11]  ( .D(N498), .E(n197), .CK(clk), .Q(d_b[11]) );
  EDFFX1 \d_b_reg[10]  ( .D(N497), .E(n136), .CK(clk), .Q(d_b[10]) );
  EDFFX1 \d_b_reg[9]  ( .D(N496), .E(n197), .CK(clk), .Q(d_b[9]) );
  EDFFX1 \d_b_reg[8]  ( .D(N495), .E(n136), .CK(clk), .Q(d_b[8]) );
  EDFFX1 \d_a_reg[12]  ( .D(N489), .E(n136), .CK(clk), .Q(d_a[12]) );
  EDFFX1 \d_a_reg[11]  ( .D(N488), .E(n197), .CK(clk), .Q(d_a[11]) );
  EDFFX1 \d_a_reg[10]  ( .D(N487), .E(n136), .CK(clk), .Q(d_a[10]) );
  EDFFX1 \d_a_reg[9]  ( .D(N486), .E(n197), .CK(clk), .Q(d_a[9]) );
  EDFFX1 \d_a_reg[8]  ( .D(N485), .E(n136), .CK(clk), .Q(d_a[8]) );
  EDFFX1 \d_c_reg[12]  ( .D(N509), .E(n136), .CK(clk), .Q(d_c[12]) );
  EDFFX1 \d_c_reg[11]  ( .D(N508), .E(n197), .CK(clk), .Q(d_c[11]) );
  EDFFX1 \d_c_reg[10]  ( .D(N507), .E(n136), .CK(clk), .Q(d_c[10]) );
  EDFFX1 \d_c_reg[9]  ( .D(N506), .E(n197), .CK(clk), .Q(d_c[9]) );
  EDFFX1 \d_c_reg[8]  ( .D(N505), .E(n136), .CK(clk), .Q(d_c[8]) );
  DFFQX1 \di_a_reg[0]  ( .D(n174), .CK(clk), .Q(N461) );
  DFFQX1 \di_b_reg[0]  ( .D(n173), .CK(clk), .Q(N469) );
  DFFQX1 \di_c_reg[0]  ( .D(n166), .CK(clk), .Q(N477) );
  DFFQX1 \di_a_reg[5]  ( .D(n179), .CK(clk), .Q(di_a[5]) );
  DFFQX1 \di_b_reg[5]  ( .D(n168), .CK(clk), .Q(di_b[5]) );
  DFFQX1 \di_c_reg[5]  ( .D(n161), .CK(clk), .Q(di_c[5]) );
  DFFQX1 \di_a_reg[3]  ( .D(n177), .CK(clk), .Q(di_a[3]) );
  DFFQX1 \di_b_reg[3]  ( .D(n170), .CK(clk), .Q(di_b[3]) );
  DFFQX1 \di_c_reg[3]  ( .D(n163), .CK(clk), .Q(di_c[3]) );
  DFFQX1 \di_a_reg[1]  ( .D(n175), .CK(clk), .Q(N462) );
  DFFQX1 \di_b_reg[1]  ( .D(n172), .CK(clk), .Q(N470) );
  DFFQX1 \di_c_reg[1]  ( .D(n165), .CK(clk), .Q(N478) );
  EDFFX1 \c1_reg[15]  ( .D(N602), .E(n198), .CK(clk), .Q(c1[15]) );
  EDFFX1 \c2_reg[15]  ( .D(N638), .E(n199), .CK(clk), .Q(c2[15]) );
  EDFFX1 \c1_reg[14]  ( .D(N601), .E(n199), .CK(clk), .Q(c1[14]) );
  EDFFX1 \c2_reg[14]  ( .D(N637), .E(n199), .CK(clk), .Q(c2[14]) );
  EDFFX1 \c1_reg[13]  ( .D(N600), .E(n198), .CK(clk), .Q(c1[13]) );
  EDFFX1 \c1_reg[12]  ( .D(N599), .E(n199), .CK(clk), .Q(c1[12]) );
  EDFFX1 \c2_reg[13]  ( .D(N636), .E(n199), .CK(clk), .Q(c2[13]) );
  EDFFX1 \c2_reg[12]  ( .D(N635), .E(n199), .CK(clk), .Q(c2[12]) );
  EDFFX1 \c1_reg[11]  ( .D(N598), .E(n198), .CK(clk), .Q(c1[11]) );
  EDFFX1 \c1_reg[10]  ( .D(N597), .E(n199), .CK(clk), .Q(c1[10]) );
  EDFFX1 \c2_reg[11]  ( .D(N634), .E(n198), .CK(clk), .Q(c2[11]) );
  EDFFX1 \c2_reg[10]  ( .D(N633), .E(n198), .CK(clk), .Q(c2[10]) );
  EDFFX1 \c1_reg[7]  ( .D(N594), .E(n198), .CK(clk), .Q(c1[7]) );
  EDFFX1 \c2_reg[7]  ( .D(N630), .E(n198), .CK(clk), .Q(c2[7]) );
  EDFFX1 \c1_reg[9]  ( .D(N596), .E(n199), .CK(clk), .Q(c1[9]) );
  EDFFX1 \c2_reg[9]  ( .D(N632), .E(n198), .CK(clk), .Q(c2[9]) );
  EDFFX1 \c1_reg[8]  ( .D(N595), .E(n198), .CK(clk), .Q(c1[8]) );
  EDFFX1 \c2_reg[8]  ( .D(N631), .E(n198), .CK(clk), .Q(c2[8]) );
  EDFFX1 \x_up_a_reg[19]  ( .D(N377), .E(n192), .CK(clk), .Q(dividand1_a[19])
         );
  EDFFX1 \x_up_b_reg[19]  ( .D(N417), .E(n192), .CK(clk), .Q(dividand1_b[19])
         );
  EDFFX1 \x_up_c_reg[19]  ( .D(N457), .E(n192), .CK(clk), .Q(dividand1_c[19])
         );
  EDFFX1 \x_up_a_reg[18]  ( .D(N376), .E(n192), .CK(clk), .Q(dividand1_a[18])
         );
  EDFFX1 \x_up_a_reg[17]  ( .D(N375), .E(n192), .CK(clk), .Q(dividand1_a[17])
         );
  EDFFX1 \x_up_a_reg[16]  ( .D(N374), .E(n192), .CK(clk), .Q(dividand1_a[16])
         );
  EDFFX1 \x_up_a_reg[5]  ( .D(N363), .E(n192), .CK(clk), .Q(dividand1_a[5]) );
  EDFFX1 \x_up_a_reg[4]  ( .D(N362), .E(n192), .CK(clk), .Q(dividand1_a[4]) );
  EDFFX1 \x_up_b_reg[18]  ( .D(N416), .E(n192), .CK(clk), .Q(dividand1_b[18])
         );
  EDFFX1 \x_up_b_reg[17]  ( .D(N415), .E(n192), .CK(clk), .Q(dividand1_b[17])
         );
  EDFFX1 \x_up_b_reg[16]  ( .D(N414), .E(n192), .CK(clk), .Q(dividand1_b[16])
         );
  EDFFX1 \x_up_b_reg[5]  ( .D(N403), .E(n192), .CK(clk), .Q(dividand1_b[5]) );
  EDFFX1 \x_up_b_reg[4]  ( .D(N402), .E(n192), .CK(clk), .Q(dividand1_b[4]) );
  EDFFX1 \x_up_c_reg[18]  ( .D(N456), .E(n192), .CK(clk), .Q(dividand1_c[18])
         );
  EDFFX1 \x_up_c_reg[17]  ( .D(N455), .E(n192), .CK(clk), .Q(dividand1_c[17])
         );
  EDFFX1 \x_up_c_reg[16]  ( .D(N454), .E(n192), .CK(clk), .Q(dividand1_c[16])
         );
  EDFFX1 \x_up_c_reg[5]  ( .D(N443), .E(n192), .CK(clk), .Q(dividand1_c[5]) );
  EDFFX1 \x_up_c_reg[4]  ( .D(N442), .E(n192), .CK(clk), .Q(dividand1_c[4]) );
  EDFFX1 \b2_reg[7]  ( .D(N152), .E(n279), .CK(clk), .Q(b2[7]) );
  EDFFX1 \delta_x_reg[24]  ( .D(N718), .E(n200), .CK(clk), .Q(dividand2_x[24])
         );
  EDFFX1 \delta_x_reg[23]  ( .D(N717), .E(n200), .CK(clk), .Q(dividand2_x[23])
         );
  EDFFX1 \delta_y_reg[24]  ( .D(N796), .E(n202), .CK(clk), .Q(dividand2_y[24])
         );
  EDFFX1 \delta_y_reg[23]  ( .D(N795), .E(n202), .CK(clk), .Q(dividand2_y[23])
         );
  EDFFX1 \c1_reg[6]  ( .D(N593), .E(n199), .CK(clk), .Q(c1[6]) );
  EDFFX1 \c1_reg[5]  ( .D(N592), .E(n199), .CK(clk), .Q(c1[5]) );
  EDFFX1 \c2_reg[6]  ( .D(N629), .E(n198), .CK(clk), .Q(c2[6]) );
  EDFFX1 \c2_reg[5]  ( .D(N628), .E(n198), .CK(clk), .Q(c2[5]) );
  EDFFX1 \x_up_a_reg[15]  ( .D(N373), .E(n192), .CK(clk), .Q(dividand1_a[15])
         );
  EDFFX1 \x_up_a_reg[14]  ( .D(N372), .E(n192), .CK(clk), .Q(dividand1_a[14])
         );
  EDFFX1 \x_up_a_reg[13]  ( .D(N371), .E(n192), .CK(clk), .Q(dividand1_a[13])
         );
  EDFFX1 \x_up_a_reg[12]  ( .D(N370), .E(n192), .CK(clk), .Q(dividand1_a[12])
         );
  EDFFX1 \x_up_a_reg[11]  ( .D(N369), .E(n192), .CK(clk), .Q(dividand1_a[11])
         );
  EDFFX1 \x_up_a_reg[10]  ( .D(N368), .E(n192), .CK(clk), .Q(dividand1_a[10])
         );
  EDFFX1 \x_up_a_reg[9]  ( .D(N367), .E(n192), .CK(clk), .Q(dividand1_a[9]) );
  EDFFX1 \x_up_a_reg[8]  ( .D(N366), .E(n192), .CK(clk), .Q(dividand1_a[8]) );
  EDFFX1 \x_up_a_reg[7]  ( .D(N365), .E(n192), .CK(clk), .Q(dividand1_a[7]) );
  EDFFX1 \x_up_a_reg[6]  ( .D(N364), .E(n192), .CK(clk), .Q(dividand1_a[6]) );
  EDFFX1 \x_up_a_reg[3]  ( .D(N361), .E(n192), .CK(clk), .Q(dividand1_a[3]) );
  EDFFX1 \x_up_a_reg[2]  ( .D(N360), .E(n192), .CK(clk), .Q(dividand1_a[2]) );
  EDFFX1 \x_up_a_reg[1]  ( .D(N359), .E(n192), .CK(clk), .Q(dividand1_a[1]) );
  EDFFX1 \x_up_a_reg[0]  ( .D(N358), .E(n192), .CK(clk), .Q(dividand1_a[0]) );
  EDFFX1 \x_up_b_reg[15]  ( .D(N413), .E(n192), .CK(clk), .Q(dividand1_b[15])
         );
  EDFFX1 \x_up_b_reg[14]  ( .D(N412), .E(n192), .CK(clk), .Q(dividand1_b[14])
         );
  EDFFX1 \x_up_b_reg[13]  ( .D(N411), .E(n192), .CK(clk), .Q(dividand1_b[13])
         );
  EDFFX1 \x_up_b_reg[12]  ( .D(N410), .E(n192), .CK(clk), .Q(dividand1_b[12])
         );
  EDFFX1 \x_up_b_reg[11]  ( .D(N409), .E(n192), .CK(clk), .Q(dividand1_b[11])
         );
  EDFFX1 \x_up_b_reg[10]  ( .D(N408), .E(n192), .CK(clk), .Q(dividand1_b[10])
         );
  EDFFX1 \x_up_b_reg[9]  ( .D(N407), .E(n192), .CK(clk), .Q(dividand1_b[9]) );
  EDFFX1 \x_up_b_reg[8]  ( .D(N406), .E(n192), .CK(clk), .Q(dividand1_b[8]) );
  EDFFX1 \x_up_b_reg[7]  ( .D(N405), .E(n192), .CK(clk), .Q(dividand1_b[7]) );
  EDFFX1 \x_up_b_reg[6]  ( .D(N404), .E(n192), .CK(clk), .Q(dividand1_b[6]) );
  EDFFX1 \x_up_b_reg[3]  ( .D(N401), .E(n192), .CK(clk), .Q(dividand1_b[3]) );
  EDFFX1 \x_up_b_reg[2]  ( .D(N400), .E(n192), .CK(clk), .Q(dividand1_b[2]) );
  EDFFX1 \x_up_b_reg[1]  ( .D(N399), .E(n192), .CK(clk), .Q(dividand1_b[1]) );
  EDFFX1 \x_up_b_reg[0]  ( .D(N398), .E(n192), .CK(clk), .Q(dividand1_b[0]) );
  EDFFX1 \x_up_c_reg[15]  ( .D(N453), .E(n192), .CK(clk), .Q(dividand1_c[15])
         );
  EDFFX1 \x_up_c_reg[14]  ( .D(N452), .E(n192), .CK(clk), .Q(dividand1_c[14])
         );
  EDFFX1 \x_up_c_reg[13]  ( .D(N451), .E(n192), .CK(clk), .Q(dividand1_c[13])
         );
  EDFFX1 \x_up_c_reg[12]  ( .D(N450), .E(n192), .CK(clk), .Q(dividand1_c[12])
         );
  EDFFX1 \x_up_c_reg[11]  ( .D(N449), .E(n192), .CK(clk), .Q(dividand1_c[11])
         );
  EDFFX1 \x_up_c_reg[10]  ( .D(N448), .E(n192), .CK(clk), .Q(dividand1_c[10])
         );
  EDFFX1 \x_up_c_reg[9]  ( .D(N447), .E(n192), .CK(clk), .Q(dividand1_c[9]) );
  EDFFX1 \x_up_c_reg[8]  ( .D(N446), .E(n192), .CK(clk), .Q(dividand1_c[8]) );
  EDFFX1 \x_up_c_reg[7]  ( .D(N445), .E(n192), .CK(clk), .Q(dividand1_c[7]) );
  EDFFX1 \x_up_c_reg[6]  ( .D(N444), .E(n192), .CK(clk), .Q(dividand1_c[6]) );
  EDFFX1 \x_up_c_reg[3]  ( .D(N441), .E(n192), .CK(clk), .Q(dividand1_c[3]) );
  EDFFX1 \x_up_c_reg[2]  ( .D(N440), .E(n192), .CK(clk), .Q(dividand1_c[2]) );
  EDFFX1 \x_up_c_reg[1]  ( .D(N439), .E(n192), .CK(clk), .Q(dividand1_c[1]) );
  EDFFX1 \x_up_c_reg[0]  ( .D(N438), .E(n192), .CK(clk), .Q(dividand1_c[0]) );
  EDFFX1 \b2_reg[1]  ( .D(N146), .E(n279), .CK(clk), .Q(b2[1]) );
  EDFFX1 \a1_reg[1]  ( .D(N122), .E(n279), .CK(clk), .Q(a1[1]) );
  EDFFX1 \a2_reg[1]  ( .D(N130), .E(n279), .CK(clk), .Q(a2[1]) );
  EDFFX1 \b1_reg[1]  ( .D(N138), .E(n279), .CK(clk), .Q(b1[1]) );
  EDFFX1 \a1_reg[4]  ( .D(N125), .E(n279), .CK(clk), .Q(a1[4]) );
  EDFFX1 \a2_reg[4]  ( .D(N133), .E(n279), .CK(clk), .Q(a2[4]) );
  EDFFX1 \a1_reg[6]  ( .D(N127), .E(n279), .CK(clk), .Q(a1[6]) );
  EDFFX1 \a2_reg[6]  ( .D(N135), .E(n279), .CK(clk), .Q(a2[6]) );
  EDFFX1 \b1_reg[7]  ( .D(N144), .E(n279), .CK(clk), .Q(b1[7]) );
  EDFFX1 \b2_reg[4]  ( .D(N149), .E(n279), .CK(clk), .Q(b2[4]) );
  EDFFX1 \b1_reg[4]  ( .D(N141), .E(n279), .CK(clk), .Q(b1[4]) );
  EDFFX1 \b2_reg[6]  ( .D(N151), .E(n279), .CK(clk), .Q(b2[6]) );
  EDFFX1 \b1_reg[6]  ( .D(N143), .E(n279), .CK(clk), .Q(b1[6]) );
  EDFFX1 \b2_reg[3]  ( .D(N148), .E(n279), .CK(clk), .Q(b2[3]) );
  EDFFX1 \b1_reg[3]  ( .D(N140), .E(n279), .CK(clk), .Q(b1[3]) );
  EDFFX1 \delta_x_reg[22]  ( .D(N716), .E(n200), .CK(clk), .Q(dividand2_x[22])
         );
  EDFFX1 \delta_x_reg[21]  ( .D(N715), .E(n200), .CK(clk), .Q(dividand2_x[21])
         );
  EDFFX1 \delta_x_reg[20]  ( .D(N714), .E(n200), .CK(clk), .Q(dividand2_x[20])
         );
  EDFFX1 \delta_x_reg[19]  ( .D(N713), .E(n200), .CK(clk), .Q(dividand2_x[19])
         );
  EDFFX1 \delta_x_reg[18]  ( .D(N712), .E(n200), .CK(clk), .Q(dividand2_x[18])
         );
  EDFFX1 \delta_x_reg[17]  ( .D(N711), .E(n200), .CK(clk), .Q(dividand2_x[17])
         );
  EDFFX1 \delta_x_reg[16]  ( .D(N710), .E(n200), .CK(clk), .Q(dividand2_x[16])
         );
  EDFFX1 \delta_x_reg[15]  ( .D(N709), .E(n200), .CK(clk), .Q(dividand2_x[15])
         );
  EDFFX1 \delta_y_reg[22]  ( .D(N794), .E(n202), .CK(clk), .Q(dividand2_y[22])
         );
  EDFFX1 \delta_y_reg[21]  ( .D(N793), .E(n202), .CK(clk), .Q(dividand2_y[21])
         );
  EDFFX1 \delta_y_reg[20]  ( .D(N792), .E(n202), .CK(clk), .Q(dividand2_y[20])
         );
  EDFFX1 \delta_y_reg[19]  ( .D(N791), .E(n202), .CK(clk), .Q(dividand2_y[19])
         );
  EDFFX1 \delta_y_reg[18]  ( .D(N790), .E(n202), .CK(clk), .Q(dividand2_y[18])
         );
  EDFFX1 \delta_y_reg[17]  ( .D(N789), .E(n202), .CK(clk), .Q(dividand2_y[17])
         );
  EDFFX1 \delta_y_reg[16]  ( .D(N788), .E(n202), .CK(clk), .Q(dividand2_y[16])
         );
  EDFFX1 \delta_y_reg[15]  ( .D(N787), .E(n203), .CK(clk), .Q(dividand2_y[15])
         );
  EDFFX1 \a1_reg[2]  ( .D(N123), .E(n279), .CK(clk), .Q(a1[2]) );
  EDFFX1 \a2_reg[2]  ( .D(N131), .E(n279), .CK(clk), .Q(a2[2]) );
  EDFFX1 \b2_reg[8]  ( .D(N153), .E(n279), .CK(clk), .Q(b2[8]) );
  EDFFX1 \b1_reg[8]  ( .D(N145), .E(n279), .CK(clk), .Q(b1[8]) );
  EDFFX1 \a1_reg[7]  ( .D(N128), .E(n279), .CK(clk), .Q(a1[7]) );
  EDFFX1 \a2_reg[7]  ( .D(N136), .E(n279), .CK(clk), .Q(a2[7]) );
  EDFFX1 \a1_reg[3]  ( .D(N124), .E(n279), .CK(clk), .Q(a1[3]) );
  EDFFX1 \a2_reg[3]  ( .D(N132), .E(n279), .CK(clk), .Q(a2[3]) );
  EDFFX1 \b2_reg[5]  ( .D(N150), .E(n279), .CK(clk), .Q(b2[5]) );
  EDFFX1 \b1_reg[5]  ( .D(N142), .E(n279), .CK(clk), .Q(b1[5]) );
  EDFFX1 \b2_reg[2]  ( .D(N147), .E(n279), .CK(clk), .Q(b2[2]) );
  EDFFX1 \b1_reg[2]  ( .D(N139), .E(n279), .CK(clk), .Q(b1[2]) );
  EDFFX1 \delta_reg[14]  ( .D(N204), .E(n193), .CK(clk), .Q(dividor2_x[14]) );
  EDFFX1 \delta_reg[13]  ( .D(N203), .E(n193), .CK(clk), .Q(dividor2_x[13]) );
  EDFFX1 \delta_reg[12]  ( .D(N202), .E(n193), .CK(clk), .Q(dividor2_x[12]) );
  EDFFX1 \delta_reg[11]  ( .D(N201), .E(n193), .CK(clk), .Q(dividor2_x[11]) );
  EDFFX1 \c1_reg[4]  ( .D(N591), .E(n199), .CK(clk), .Q(c1[4]) );
  EDFFX1 \c1_reg[3]  ( .D(N590), .E(n199), .CK(clk), .Q(c1[3]) );
  EDFFX1 \c1_reg[2]  ( .D(N589), .E(n199), .CK(clk), .Q(c1[2]) );
  EDFFX1 \c2_reg[4]  ( .D(N627), .E(n198), .CK(clk), .Q(c2[4]) );
  EDFFX1 \c2_reg[3]  ( .D(N626), .E(n198), .CK(clk), .Q(c2[3]) );
  EDFFX1 \c2_reg[2]  ( .D(N625), .E(n198), .CK(clk), .Q(c2[2]) );
  EDFFX1 \a1_reg[8]  ( .D(N129), .E(n279), .CK(clk), .Q(a1[8]) );
  EDFFX1 \a2_reg[8]  ( .D(N137), .E(n279), .CK(clk), .Q(a2[8]) );
  EDFFX1 \c1_reg[0]  ( .D(N587), .E(n199), .CK(clk), .Q(c1[0]) );
  EDFFX1 \c2_reg[0]  ( .D(N623), .E(n198), .CK(clk), .Q(c2[0]) );
  EDFFX1 \c1_reg[1]  ( .D(N588), .E(n199), .CK(clk), .Q(c1[1]) );
  EDFFX1 \c2_reg[1]  ( .D(N624), .E(n198), .CK(clk), .Q(c2[1]) );
  EDFFX1 \delta_x_reg[14]  ( .D(N708), .E(n200), .CK(clk), .Q(dividand2_x[14])
         );
  EDFFX1 \delta_x_reg[13]  ( .D(N707), .E(n201), .CK(clk), .Q(dividand2_x[13])
         );
  EDFFX1 \delta_x_reg[12]  ( .D(N706), .E(n201), .CK(clk), .Q(dividand2_x[12])
         );
  EDFFX1 \delta_x_reg[11]  ( .D(N705), .E(n201), .CK(clk), .Q(dividand2_x[11])
         );
  EDFFX1 \delta_x_reg[10]  ( .D(N704), .E(n201), .CK(clk), .Q(dividand2_x[10])
         );
  EDFFX1 \delta_x_reg[9]  ( .D(N703), .E(n201), .CK(clk), .Q(dividand2_x[9])
         );
  EDFFX1 \delta_x_reg[8]  ( .D(N702), .E(n201), .CK(clk), .Q(dividand2_x[8])
         );
  EDFFX1 \delta_x_reg[7]  ( .D(N701), .E(n201), .CK(clk), .Q(dividand2_x[7])
         );
  EDFFX1 \delta_y_reg[14]  ( .D(N786), .E(n203), .CK(clk), .Q(dividand2_y[14])
         );
  EDFFX1 \delta_y_reg[13]  ( .D(N785), .E(n203), .CK(clk), .Q(dividand2_y[13])
         );
  EDFFX1 \delta_y_reg[12]  ( .D(N784), .E(n203), .CK(clk), .Q(dividand2_y[12])
         );
  EDFFX1 \delta_y_reg[11]  ( .D(N783), .E(n203), .CK(clk), .Q(dividand2_y[11])
         );
  EDFFX1 \delta_y_reg[10]  ( .D(N782), .E(n203), .CK(clk), .Q(dividand2_y[10])
         );
  EDFFX1 \delta_y_reg[9]  ( .D(N781), .E(n203), .CK(clk), .Q(dividand2_y[9])
         );
  EDFFX1 \delta_y_reg[8]  ( .D(N780), .E(n203), .CK(clk), .Q(dividand2_y[8])
         );
  EDFFX1 \delta_y_reg[7]  ( .D(N779), .E(n203), .CK(clk), .Q(dividand2_y[7])
         );
  EDFFX1 \delta_reg[10]  ( .D(N200), .E(n193), .CK(clk), .Q(dividor2_x[10]) );
  EDFFX1 \delta_reg[9]  ( .D(N199), .E(n193), .CK(clk), .Q(dividor2_x[9]) );
  EDFFX1 \delta_reg[8]  ( .D(N198), .E(n193), .CK(clk), .Q(dividor2_x[8]) );
  EDFFX1 \delta_reg[7]  ( .D(N197), .E(n193), .CK(clk), .Q(dividor2_x[7]) );
  EDFFX1 \delta_reg[6]  ( .D(N196), .E(n193), .CK(clk), .Q(dividor2_x[6]) );
  EDFFX1 \delta_x_reg[6]  ( .D(N700), .E(n201), .CK(clk), .Q(dividand2_x[6])
         );
  EDFFX1 \delta_x_reg[5]  ( .D(N699), .E(n201), .CK(clk), .Q(dividand2_x[5])
         );
  EDFFX1 \delta_x_reg[4]  ( .D(N698), .E(n201), .CK(clk), .Q(dividand2_x[4])
         );
  EDFFX1 \delta_x_reg[3]  ( .D(N697), .E(n201), .CK(clk), .Q(dividand2_x[3])
         );
  EDFFX1 \delta_x_reg[2]  ( .D(N696), .E(n201), .CK(clk), .Q(dividand2_x[2])
         );
  EDFFX1 \delta_x_reg[1]  ( .D(N695), .E(n202), .CK(clk), .Q(dividand2_x[1])
         );
  EDFFX1 \delta_y_reg[6]  ( .D(N778), .E(n203), .CK(clk), .Q(dividand2_y[6])
         );
  EDFFX1 \delta_y_reg[5]  ( .D(N777), .E(n203), .CK(clk), .Q(dividand2_y[5])
         );
  EDFFX1 \delta_y_reg[4]  ( .D(N776), .E(n203), .CK(clk), .Q(dividand2_y[4])
         );
  EDFFX1 \delta_y_reg[3]  ( .D(N775), .E(n204), .CK(clk), .Q(dividand2_y[3])
         );
  EDFFX1 \delta_y_reg[2]  ( .D(N774), .E(n204), .CK(clk), .Q(dividand2_y[2])
         );
  EDFFX1 \delta_y_reg[1]  ( .D(N773), .E(n204), .CK(clk), .Q(dividand2_y[1])
         );
  EDFFX1 \delta_reg[5]  ( .D(N195), .E(n193), .CK(clk), .Q(dividor2_x[5]) );
  EDFFX1 \delta_reg[4]  ( .D(N194), .E(n193), .CK(clk), .Q(dividor2_x[4]) );
  EDFFX1 \delta_reg[3]  ( .D(N193), .E(n193), .CK(clk), .Q(dividor2_x[3]) );
  EDFFX1 \delta_reg[2]  ( .D(N192), .E(n193), .CK(clk), .Q(dividor2_x[2]) );
  EDFFX1 \yt_reg_reg[0]  ( .D(q2_y[0]), .E(n112), .CK(clk), .Q(yt[0]) );
  EDFFX1 \yt_reg_reg[1]  ( .D(q2_y[1]), .E(n112), .CK(clk), .Q(yt[1]) );
  EDFFX1 \yt_reg_reg[2]  ( .D(q2_y[2]), .E(n112), .CK(clk), .Q(yt[2]) );
  EDFFX1 \yt_reg_reg[3]  ( .D(q2_y[3]), .E(n112), .CK(clk), .Q(yt[3]) );
  EDFFX1 \yt_reg_reg[4]  ( .D(q2_y[4]), .E(n112), .CK(clk), .Q(yt[4]) );
  EDFFX1 \yt_reg_reg[5]  ( .D(q2_y[5]), .E(n112), .CK(clk), .Q(yt[5]) );
  EDFFX1 \yt_reg_reg[6]  ( .D(q2_y[6]), .E(n112), .CK(clk), .Q(yt[6]) );
  EDFFX1 \yt_reg_reg[7]  ( .D(q2_y[7]), .E(n112), .CK(clk), .Q(yt[7]) );
  EDFFX1 \xt_reg_reg[7]  ( .D(q2_x[7]), .E(n112), .CK(clk), .Q(xt[7]) );
  EDFFX1 \xt_reg_reg[6]  ( .D(q2_x[6]), .E(n112), .CK(clk), .Q(xt[6]) );
  EDFFX1 \xt_reg_reg[5]  ( .D(q2_x[5]), .E(n112), .CK(clk), .Q(xt[5]) );
  EDFFX1 \xt_reg_reg[4]  ( .D(q2_x[4]), .E(n112), .CK(clk), .Q(xt[4]) );
  EDFFX1 \xt_reg_reg[3]  ( .D(q2_x[3]), .E(n112), .CK(clk), .Q(xt[3]) );
  EDFFX1 \xt_reg_reg[2]  ( .D(q2_x[2]), .E(n112), .CK(clk), .Q(xt[2]) );
  EDFFX1 \xt_reg_reg[1]  ( .D(q2_x[1]), .E(n112), .CK(clk), .Q(xt[1]) );
  EDFFX1 \xt_reg_reg[0]  ( .D(q2_x[0]), .E(n112), .CK(clk), .Q(xt[0]) );
  EDFFX1 \a1_reg[5]  ( .D(N126), .E(n279), .CK(clk), .Q(a1[5]) );
  EDFFX1 \a2_reg[5]  ( .D(N134), .E(n279), .CK(clk), .Q(a2[5]) );
  EDFFX1 \delta_reg[16]  ( .D(N206), .E(n193), .CK(clk), .Q(dividor2_x[16]) );
  EDFFX1 \delta_reg[15]  ( .D(N205), .E(n193), .CK(clk), .Q(dividor2_x[15]) );
  EDFFX1 \delta_reg[17]  ( .D(N207), .E(n193), .CK(clk), .Q(dividor2_x[17]) );
  EDFFX1 \x_a_reg[11]  ( .D(q1_a[11]), .E(n211), .CK(clk), .Q(expA[11]) );
  EDFFX1 \x_a_reg[10]  ( .D(q1_a[10]), .E(n211), .CK(clk), .Q(expA[10]) );
  EDFFX1 \x_a_reg[9]  ( .D(q1_a[9]), .E(n210), .CK(clk), .Q(expA[9]) );
  EDFFX1 \x_a_reg[8]  ( .D(q1_a[8]), .E(n211), .CK(clk), .Q(expA[8]) );
  EDFFX1 \x_a_reg[7]  ( .D(q1_a[7]), .E(n210), .CK(clk), .Q(expA[7]) );
  EDFFX1 \x_a_reg[6]  ( .D(q1_a[6]), .E(n210), .CK(clk), .Q(expA[6]) );
  EDFFX1 \x_a_reg[5]  ( .D(q1_a[5]), .E(n211), .CK(clk), .Q(expA[5]) );
  EDFFX1 \x_a_reg[4]  ( .D(q1_a[4]), .E(n211), .CK(clk), .Q(expA[4]) );
  EDFFX1 \x_a_reg[3]  ( .D(q1_a[3]), .E(n211), .CK(clk), .Q(expA[3]) );
  EDFFX1 \x_a_reg[2]  ( .D(q1_a[2]), .E(n211), .CK(clk), .Q(expA[2]) );
  EDFFX1 \x_a_reg[1]  ( .D(q1_a[1]), .E(n211), .CK(clk), .Q(expA[1]) );
  EDFFX1 \x_a_reg[0]  ( .D(q1_a[0]), .E(n211), .CK(clk), .Q(expA[0]) );
  EDFFX1 \x_b_reg[0]  ( .D(q1_b[0]), .E(n211), .CK(clk), .Q(expB[0]) );
  EDFFX1 \x_b_reg[1]  ( .D(q1_b[1]), .E(n211), .CK(clk), .Q(expB[1]) );
  EDFFX1 \x_b_reg[2]  ( .D(q1_b[2]), .E(n211), .CK(clk), .Q(expB[2]) );
  EDFFX1 \x_b_reg[3]  ( .D(q1_b[3]), .E(n211), .CK(clk), .Q(expB[3]) );
  EDFFX1 \x_b_reg[4]  ( .D(q1_b[4]), .E(n211), .CK(clk), .Q(expB[4]) );
  EDFFX1 \x_b_reg[5]  ( .D(q1_b[5]), .E(n211), .CK(clk), .Q(expB[5]) );
  EDFFX1 \x_b_reg[6]  ( .D(q1_b[6]), .E(n211), .CK(clk), .Q(expB[6]) );
  EDFFX1 \x_b_reg[7]  ( .D(q1_b[7]), .E(n210), .CK(clk), .Q(expB[7]) );
  EDFFX1 \x_b_reg[8]  ( .D(q1_b[8]), .E(n211), .CK(clk), .Q(expB[8]) );
  EDFFX1 \x_b_reg[9]  ( .D(q1_b[9]), .E(n210), .CK(clk), .Q(expB[9]) );
  EDFFX1 \x_b_reg[10]  ( .D(q1_b[10]), .E(n211), .CK(clk), .Q(expB[10]) );
  EDFFX1 \x_b_reg[11]  ( .D(q1_b[11]), .E(n210), .CK(clk), .Q(expB[11]) );
  EDFFX1 \x_c_reg[0]  ( .D(q1_c[0]), .E(n211), .CK(clk), .Q(expC[0]) );
  EDFFX1 \x_c_reg[1]  ( .D(q1_c[1]), .E(n210), .CK(clk), .Q(expC[1]) );
  EDFFX1 \x_c_reg[2]  ( .D(q1_c[2]), .E(n211), .CK(clk), .Q(expC[2]) );
  EDFFX1 \x_c_reg[3]  ( .D(q1_c[3]), .E(n210), .CK(clk), .Q(expC[3]) );
  EDFFX1 \x_c_reg[4]  ( .D(q1_c[4]), .E(n210), .CK(clk), .Q(expC[4]) );
  EDFFX1 \x_c_reg[5]  ( .D(q1_c[5]), .E(n210), .CK(clk), .Q(expC[5]) );
  EDFFX1 \x_c_reg[6]  ( .D(q1_c[6]), .E(n210), .CK(clk), .Q(expC[6]) );
  EDFFX1 \x_c_reg[7]  ( .D(q1_c[7]), .E(n210), .CK(clk), .Q(expC[7]) );
  EDFFX1 \x_c_reg[8]  ( .D(q1_c[8]), .E(n210), .CK(clk), .Q(expC[8]) );
  EDFFX1 \x_c_reg[9]  ( .D(q1_c[9]), .E(n210), .CK(clk), .Q(expC[9]) );
  EDFFX1 \x_c_reg[10]  ( .D(q1_c[10]), .E(n210), .CK(clk), .Q(expC[10]) );
  EDFFX1 \x_c_reg[11]  ( .D(q1_c[11]), .E(n210), .CK(clk), .Q(expC[11]) );
  DFFRX1 \st_reg[3]  ( .D(nst[3]), .CK(clk), .RN(n278), .Q(st[3]), .QN(n87) );
  DFFRX1 \st_reg[0]  ( .D(nst[0]), .CK(clk), .RN(n278), .Q(st[0]), .QN(n95) );
  DFFRX1 \st_reg[2]  ( .D(nst[2]), .CK(clk), .RN(n278), .Q(st[2]), .QN(n93) );
  DFFRX1 \cnt_reg[2]  ( .D(N83), .CK(clk), .RN(n278), .Q(cnt[2]), .QN(n98) );
  DFFRX1 \cnt_reg[0]  ( .D(N81), .CK(clk), .RN(n278), .Q(cnt[0]), .QN(n101) );
  EDFFX1 \delta_x_reg[25]  ( .D(N719), .E(n200), .CK(clk), .Q(dividand2_x[25])
         );
  EDFFX1 \delta_y_reg[25]  ( .D(N797), .E(n202), .CK(clk), .Q(dividand2_y[25])
         );
  DFFRX1 \cnt_reg[3]  ( .D(N84), .CK(clk), .RN(n278), .Q(cnt[3]), .QN(n97) );
  DFFRX1 \cnt_reg[1]  ( .D(N82), .CK(clk), .RN(n278), .Q(cnt[1]), .QN(n100) );
  DFFRX1 \st_reg[1]  ( .D(nst[1]), .CK(clk), .RN(n278), .Q(st[1]), .QN(n94) );
  DFFQXL \delta_reg[1]  ( .D(n190), .CK(clk), .Q(dividor2_x[1]) );
  DFFQXL \delta_reg[0]  ( .D(n189), .CK(clk), .Q(dividor2_x[0]) );
  DFFQXL \d2_c_reg[1]  ( .D(n188), .CK(clk), .Q(d2_c[1]) );
  DFFQXL \d2_b_reg[1]  ( .D(n187), .CK(clk), .Q(d2_b[1]) );
  DFFQXL \d2_a_reg[1]  ( .D(n186), .CK(clk), .Q(d2_a[1]) );
  DFFQXL \delta_y_reg[0]  ( .D(n185), .CK(clk), .Q(dividand2_y[0]) );
  DFFQXL \delta_x_reg[0]  ( .D(n184), .CK(clk), .Q(dividand2_x[0]) );
  NAND3BX1 U120 ( .AN(n152), .B(st[3]), .C(st[1]), .Y(n103) );
  OR2X1 U121 ( .A(n114), .B(n283), .Y(n182) );
  OR3X2 U122 ( .A(n152), .B(st[1]), .C(n87), .Y(n183) );
  NOR2BX1 U123 ( .AN(dividand2_x[0]), .B(n202), .Y(n184) );
  NOR2BX1 U124 ( .AN(dividand2_y[0]), .B(n204), .Y(n185) );
  NOR2BX1 U125 ( .AN(d2_a[1]), .B(n207), .Y(n186) );
  NOR2BX1 U126 ( .AN(d2_b[1]), .B(n206), .Y(n187) );
  NOR2BX1 U127 ( .AN(d2_c[1]), .B(n209), .Y(n188) );
  NOR2BX1 U128 ( .AN(dividor2_x[0]), .B(n193), .Y(n189) );
  NOR2BX1 U129 ( .AN(dividor2_x[1]), .B(n193), .Y(n190) );
  NAND4X1 U130 ( .A(n101), .B(n100), .C(n98), .D(n97), .Y(n139) );
  AND3X2 U131 ( .A(n94), .B(n87), .C(st[2]), .Y(n134) );
  CLKINVX1 U132 ( .A(n110), .Y(n279) );
  NOR2X1 U133 ( .A(n109), .B(nst[0]), .Y(n140) );
  NOR2X1 U134 ( .A(n142), .B(nst[2]), .Y(n137) );
  NAND2XL U135 ( .A(n134), .B(n95), .Y(n114) );
  XNOR2XL U136 ( .A(n95), .B(n283), .Y(n151) );
  OAI221XL U137 ( .A0(st[1]), .A1(n152), .B0(n284), .B1(n138), .C0(n153), .Y(
        nst[0]) );
  AOI33XL U138 ( .A0(n93), .A1(n87), .A2(n158), .B0(n101), .B1(n94), .B2(
        cnt[2]), .Y(n157) );
  NOR2XL U139 ( .A(cnt[2]), .B(n101), .Y(n158) );
  NOR3XL U140 ( .A(n98), .B(n285), .C(n97), .Y(n106) );
  OAI32XL U141 ( .A0(n100), .A1(xi_c[1]), .A2(n120), .B0(xi_c[2]), .B1(n98), 
        .Y(n118) );
  OAI32XL U142 ( .A0(n100), .A1(xi_b[1]), .A2(n128), .B0(xi_b[2]), .B1(n98), 
        .Y(n126) );
  OAI32XL U143 ( .A0(n100), .A1(xi_a[1]), .A2(n135), .B0(xi_a[2]), .B1(n98), 
        .Y(n132) );
  NOR2XL U144 ( .A(n100), .B(n101), .Y(n148) );
  NAND4BXL U145 ( .AN(n147), .B(cnt[2]), .C(n148), .D(n97), .Y(n146) );
  OAI211XL U146 ( .A0(st[1]), .A1(n87), .B0(n288), .C0(n144), .Y(busy) );
  NAND3XL U147 ( .A(st[3]), .B(n94), .C(n144), .Y(n109) );
  NOR2XL U148 ( .A(n95), .B(st[2]), .Y(n144) );
  NOR2XL U149 ( .A(n94), .B(st[3]), .Y(n143) );
  NAND2XL U150 ( .A(n134), .B(st[0]), .Y(n116) );
  OAI32XL U151 ( .A0(n147), .A1(cnt[2]), .A2(n285), .B0(n149), .B1(n98), .Y(
        N83) );
  NAND3XL U152 ( .A(n143), .B(n95), .C(st[2]), .Y(n138) );
  NAND3XL U153 ( .A(n144), .B(st[3]), .C(st[1]), .Y(n104) );
  NOR3XL U154 ( .A(n95), .B(st[3]), .C(st[1]), .Y(n108) );
  NAND3BXL U155 ( .AN(n152), .B(st[3]), .C(st[1]), .Y(n191) );
  CLKINVX1 U156 ( .A(n182), .Y(n211) );
  CLKINVX1 U157 ( .A(n182), .Y(n210) );
  CLKBUFX3 U158 ( .A(n140), .Y(n203) );
  CLKBUFX3 U159 ( .A(n140), .Y(n202) );
  CLKBUFX3 U160 ( .A(n140), .Y(n201) );
  CLKBUFX3 U161 ( .A(n140), .Y(n200) );
  CLKBUFX3 U162 ( .A(n140), .Y(n204) );
  CLKBUFX3 U163 ( .A(n137), .Y(n208) );
  CLKBUFX3 U164 ( .A(n137), .Y(n207) );
  CLKBUFX3 U165 ( .A(n137), .Y(n206) );
  CLKBUFX3 U166 ( .A(n137), .Y(n205) );
  CLKBUFX3 U167 ( .A(n137), .Y(n209) );
  CLKINVX1 U168 ( .A(n183), .Y(n199) );
  CLKINVX1 U169 ( .A(n183), .Y(n198) );
  CLKBUFX3 U170 ( .A(load_div1), .Y(n217) );
  NOR2X1 U171 ( .A(n139), .B(n114), .Y(load_div1) );
  CLKBUFX3 U172 ( .A(load_div2), .Y(n216) );
  NOR2X1 U173 ( .A(n103), .B(n139), .Y(load_div2) );
  NOR2X1 U174 ( .A(n116), .B(n280), .Y(n113) );
  NOR2X1 U175 ( .A(n116), .B(n281), .Y(n123) );
  NOR2X1 U176 ( .A(n116), .B(n282), .Y(n130) );
  CLKINVX1 U177 ( .A(nst[0]), .Y(n283) );
  NOR2X1 U178 ( .A(n191), .B(n283), .Y(n112) );
  NOR2X1 U179 ( .A(n138), .B(n283), .Y(n197) );
  NOR2X1 U180 ( .A(n138), .B(n283), .Y(n136) );
  AND2X2 U181 ( .A(n143), .B(n144), .Y(n192) );
  NAND4X1 U182 ( .A(n159), .B(n191), .C(n109), .D(n183), .Y(nst[3]) );
  OR2X1 U183 ( .A(n142), .B(n284), .Y(n159) );
  OAI21XL U184 ( .A0(n106), .A1(n142), .B0(n138), .Y(n107) );
  OR3X2 U185 ( .A(n134), .B(n192), .C(n107), .Y(nst[2]) );
  CLKINVX1 U186 ( .A(n143), .Y(n288) );
  CLKINVX1 U187 ( .A(n148), .Y(n285) );
  CLKINVX1 U188 ( .A(n106), .Y(n284) );
  NAND2BX1 U189 ( .AN(n139), .B(n102), .Y(n110) );
  AND2X2 U190 ( .A(n102), .B(n139), .Y(n193) );
  NOR2X1 U191 ( .A(n288), .B(n152), .Y(n102) );
  CLKINVX1 U192 ( .A(n104), .Y(out_valid) );
  NAND2X1 U193 ( .A(n93), .B(n95), .Y(n152) );
  CLKBUFX3 U194 ( .A(a2[1]), .Y(n213) );
  CLKBUFX3 U195 ( .A(a1[1]), .Y(n215) );
  CLKBUFX3 U196 ( .A(b1[1]), .Y(n212) );
  CLKBUFX3 U197 ( .A(b2[1]), .Y(n214) );
  XNOR2X1 U198 ( .A(rssiC[19]), .B(n194), .Y(N457) );
  NOR2X1 U199 ( .A(n239), .B(\sub_0_root_sub_0_root_sub_163_2/carry [18]), .Y(
        n194) );
  XNOR2X1 U200 ( .A(rssiB[19]), .B(n195), .Y(N417) );
  NOR2X1 U201 ( .A(n258), .B(\sub_0_root_sub_0_root_sub_162_2/carry [18]), .Y(
        n195) );
  XNOR2X1 U202 ( .A(rssiA[19]), .B(n196), .Y(N377) );
  NOR2X1 U203 ( .A(n277), .B(\sub_0_root_sub_0_root_sub_161_2/carry [18]), .Y(
        n196) );
  CLKINVX1 U204 ( .A(rssiC[1]), .Y(n222) );
  CLKINVX1 U205 ( .A(rssiB[1]), .Y(n241) );
  CLKINVX1 U206 ( .A(rssiA[1]), .Y(n260) );
  CLKINVX1 U207 ( .A(rssiC[2]), .Y(n223) );
  CLKINVX1 U208 ( .A(rssiB[2]), .Y(n242) );
  CLKINVX1 U209 ( .A(rssiA[2]), .Y(n261) );
  CLKINVX1 U210 ( .A(N438), .Y(n221) );
  CLKINVX1 U211 ( .A(N398), .Y(n240) );
  CLKINVX1 U212 ( .A(N358), .Y(n259) );
  CLKINVX1 U213 ( .A(rssiC[3]), .Y(n224) );
  CLKINVX1 U214 ( .A(rssiB[3]), .Y(n243) );
  CLKINVX1 U215 ( .A(rssiA[3]), .Y(n262) );
  CLKINVX1 U216 ( .A(rssiC[4]), .Y(n225) );
  CLKINVX1 U217 ( .A(rssiB[4]), .Y(n244) );
  CLKINVX1 U218 ( .A(rssiA[4]), .Y(n263) );
  CLKINVX1 U219 ( .A(rssiC[5]), .Y(n226) );
  CLKINVX1 U220 ( .A(rssiB[5]), .Y(n245) );
  CLKINVX1 U221 ( .A(rssiA[5]), .Y(n264) );
  CLKINVX1 U222 ( .A(rssiC[6]), .Y(n227) );
  CLKINVX1 U223 ( .A(rssiB[6]), .Y(n246) );
  CLKINVX1 U224 ( .A(rssiA[6]), .Y(n265) );
  CLKINVX1 U225 ( .A(rssiC[7]), .Y(n228) );
  CLKINVX1 U226 ( .A(rssiB[7]), .Y(n247) );
  CLKINVX1 U227 ( .A(rssiA[7]), .Y(n266) );
  OAI21XL U228 ( .A0(nst[3]), .A1(n87), .B0(n151), .Y(n147) );
  AOI222XL U229 ( .A0(st[3]), .A1(n154), .B0(n155), .B1(n284), .C0(n156), .C1(
        n97), .Y(n153) );
  OAI21XL U230 ( .A0(n95), .A1(n94), .B0(n93), .Y(n154) );
  NAND2X1 U231 ( .A(n142), .B(n109), .Y(n155) );
  AOI2BB1X1 U232 ( .A0N(cnt[1]), .A1N(n147), .B0(N81), .Y(n149) );
  CLKINVX1 U233 ( .A(n117), .Y(n280) );
  OAI31XL U234 ( .A0(n118), .A1(n119), .A2(n116), .B0(n182), .Y(n117) );
  AOI221XL U235 ( .A0(xi_c[0]), .A1(n101), .B0(xi_c[1]), .B1(n100), .C0(n120), 
        .Y(n119) );
  CLKINVX1 U236 ( .A(n125), .Y(n281) );
  OAI31XL U237 ( .A0(n126), .A1(n127), .A2(n116), .B0(n182), .Y(n125) );
  AOI221XL U238 ( .A0(xi_b[0]), .A1(n101), .B0(xi_b[1]), .B1(n100), .C0(n128), 
        .Y(n127) );
  CLKINVX1 U239 ( .A(n131), .Y(n282) );
  OAI31XL U240 ( .A0(n132), .A1(n133), .A2(n116), .B0(n182), .Y(n131) );
  AOI221XL U241 ( .A0(xi_a[0]), .A1(n101), .B0(xi_a[1]), .B1(n100), .C0(n135), 
        .Y(n133) );
  OAI21XL U242 ( .A0(n280), .A1(n114), .B0(n115), .Y(n166) );
  NAND2X1 U243 ( .A(N477), .B(n280), .Y(n115) );
  OAI21XL U244 ( .A0(n281), .A1(n114), .B0(n124), .Y(n173) );
  NAND2X1 U245 ( .A(N469), .B(n281), .Y(n124) );
  OAI21XL U246 ( .A0(n282), .A1(n114), .B0(n129), .Y(n174) );
  NAND2X1 U247 ( .A(N461), .B(n282), .Y(n129) );
  NOR2X1 U248 ( .A(n147), .B(cnt[0]), .Y(N81) );
  AO22X1 U249 ( .A0(di_c[3]), .A1(n280), .B0(N479), .B1(n113), .Y(n163) );
  AO22X1 U250 ( .A0(di_b[3]), .A1(n281), .B0(N471), .B1(n123), .Y(n170) );
  AO22X1 U251 ( .A0(di_a[3]), .A1(n282), .B0(N463), .B1(n130), .Y(n177) );
  OAI2BB1X1 U252 ( .A0N(cnt[3]), .A1N(n145), .B0(n146), .Y(N84) );
  OAI21XL U253 ( .A0(cnt[2]), .A1(n147), .B0(n149), .Y(n145) );
  OAI33X1 U254 ( .A0(n157), .A1(st[0]), .A2(cnt[1]), .B0(n191), .B1(cnt[2]), 
        .B2(n285), .Y(n156) );
  AO22X1 U255 ( .A0(di_c[6]), .A1(n280), .B0(N482), .B1(n113), .Y(n160) );
  AO22X1 U256 ( .A0(di_b[6]), .A1(n281), .B0(N474), .B1(n123), .Y(n167) );
  AO22X1 U257 ( .A0(di_a[6]), .A1(n282), .B0(N466), .B1(n130), .Y(n180) );
  AO22X1 U258 ( .A0(N478), .A1(n280), .B0(N477), .B1(n113), .Y(n165) );
  AO22X1 U259 ( .A0(di_c[2]), .A1(n280), .B0(N478), .B1(n113), .Y(n164) );
  AO22X1 U260 ( .A0(di_c[4]), .A1(n280), .B0(N480), .B1(n113), .Y(n162) );
  AO22X1 U261 ( .A0(di_c[5]), .A1(n280), .B0(N481), .B1(n113), .Y(n161) );
  AO22X1 U262 ( .A0(N470), .A1(n281), .B0(N469), .B1(n123), .Y(n172) );
  AO22X1 U263 ( .A0(di_b[2]), .A1(n281), .B0(N470), .B1(n123), .Y(n171) );
  AO22X1 U264 ( .A0(di_b[4]), .A1(n281), .B0(N472), .B1(n123), .Y(n169) );
  AO22X1 U265 ( .A0(di_b[5]), .A1(n281), .B0(N473), .B1(n123), .Y(n168) );
  AO22X1 U266 ( .A0(N462), .A1(n282), .B0(N461), .B1(n130), .Y(n175) );
  AO22X1 U267 ( .A0(di_a[2]), .A1(n282), .B0(N462), .B1(n130), .Y(n176) );
  AO22X1 U268 ( .A0(di_a[4]), .A1(n282), .B0(N464), .B1(n130), .Y(n178) );
  AO22X1 U269 ( .A0(di_a[5]), .A1(n282), .B0(N465), .B1(n130), .Y(n179) );
  CLKINVX1 U270 ( .A(rssiC[8]), .Y(n229) );
  CLKINVX1 U271 ( .A(rssiB[8]), .Y(n248) );
  CLKINVX1 U272 ( .A(rssiA[8]), .Y(n267) );
  CLKINVX1 U273 ( .A(rssiC[9]), .Y(n230) );
  CLKINVX1 U274 ( .A(rssiB[9]), .Y(n249) );
  CLKINVX1 U275 ( .A(rssiA[9]), .Y(n268) );
  CLKINVX1 U276 ( .A(rssiC[10]), .Y(n231) );
  CLKINVX1 U277 ( .A(rssiB[10]), .Y(n250) );
  CLKINVX1 U278 ( .A(rssiA[10]), .Y(n269) );
  CLKINVX1 U279 ( .A(rssiC[11]), .Y(n232) );
  CLKINVX1 U280 ( .A(rssiB[11]), .Y(n251) );
  CLKINVX1 U281 ( .A(rssiA[11]), .Y(n270) );
  CLKINVX1 U282 ( .A(rssiC[12]), .Y(n233) );
  CLKINVX1 U283 ( .A(rssiB[12]), .Y(n252) );
  CLKINVX1 U284 ( .A(rssiA[12]), .Y(n271) );
  NAND3X1 U285 ( .A(n143), .B(st[0]), .C(st[2]), .Y(n142) );
  NOR2X1 U286 ( .A(n150), .B(n147), .Y(N82) );
  XNOR2X1 U287 ( .A(cnt[0]), .B(cnt[1]), .Y(n150) );
  CLKINVX1 U288 ( .A(rssiC[13]), .Y(n234) );
  CLKINVX1 U289 ( .A(rssiB[13]), .Y(n253) );
  CLKINVX1 U290 ( .A(rssiA[13]), .Y(n272) );
  CLKINVX1 U291 ( .A(rssiC[15]), .Y(n236) );
  CLKINVX1 U292 ( .A(rssiB[15]), .Y(n255) );
  CLKINVX1 U293 ( .A(rssiA[15]), .Y(n274) );
  CLKINVX1 U294 ( .A(rssiC[16]), .Y(n237) );
  CLKINVX1 U295 ( .A(rssiB[16]), .Y(n256) );
  CLKINVX1 U296 ( .A(rssiA[16]), .Y(n275) );
  CLKINVX1 U297 ( .A(rssiC[17]), .Y(n238) );
  CLKINVX1 U298 ( .A(rssiB[17]), .Y(n257) );
  CLKINVX1 U299 ( .A(rssiA[17]), .Y(n276) );
  CLKINVX1 U300 ( .A(rssiC[14]), .Y(n235) );
  CLKINVX1 U301 ( .A(rssiB[14]), .Y(n254) );
  CLKINVX1 U302 ( .A(rssiA[14]), .Y(n273) );
  NOR2BX1 U303 ( .AN(xi_c[2]), .B(cnt[2]), .Y(n120) );
  NOR2BX1 U304 ( .AN(xi_b[2]), .B(cnt[2]), .Y(n128) );
  NOR2BX1 U305 ( .AN(xi_a[2]), .B(cnt[2]), .Y(n135) );
  NAND4BX1 U306 ( .AN(n102), .B(n191), .C(n104), .D(n105), .Y(nst[1]) );
  AOI211X1 U307 ( .A0(n286), .A1(n106), .B0(n107), .C0(n108), .Y(n105) );
  CLKINVX1 U308 ( .A(n109), .Y(n286) );
  CLKINVX1 U309 ( .A(rssiC[18]), .Y(n239) );
  CLKINVX1 U310 ( .A(rssiB[18]), .Y(n258) );
  CLKINVX1 U311 ( .A(rssiA[18]), .Y(n277) );
  CLKINVX1 U312 ( .A(rst), .Y(n278) );
  XNOR2X1 U313 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [18]), .B(n239), 
        .Y(N456) );
  AND2X1 U314 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [17]), .B(n238), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [18]) );
  XOR2X1 U315 ( .A(n238), .B(\sub_0_root_sub_0_root_sub_163_2/carry [17]), .Y(
        N455) );
  AND2X1 U316 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [16]), .B(n237), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [17]) );
  XOR2X1 U317 ( .A(n237), .B(\sub_0_root_sub_0_root_sub_163_2/carry [16]), .Y(
        N454) );
  AND2X1 U318 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [15]), .B(n236), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [16]) );
  XOR2X1 U319 ( .A(n236), .B(\sub_0_root_sub_0_root_sub_163_2/carry [15]), .Y(
        N453) );
  OR2X1 U320 ( .A(n235), .B(\sub_0_root_sub_0_root_sub_163_2/carry [14]), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [15]) );
  XNOR2X1 U321 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [14]), .B(n235), 
        .Y(N452) );
  AND2X1 U322 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [13]), .B(n234), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [14]) );
  XOR2X1 U323 ( .A(n234), .B(\sub_0_root_sub_0_root_sub_163_2/carry [13]), .Y(
        N451) );
  OR2X1 U324 ( .A(n233), .B(\sub_0_root_sub_0_root_sub_163_2/carry [12]), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [13]) );
  XNOR2X1 U325 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [12]), .B(n233), 
        .Y(N450) );
  AND2X1 U326 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [11]), .B(n232), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [12]) );
  XOR2X1 U327 ( .A(n232), .B(\sub_0_root_sub_0_root_sub_163_2/carry [11]), .Y(
        N449) );
  AND2X1 U328 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [10]), .B(n231), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [11]) );
  XOR2X1 U329 ( .A(n231), .B(\sub_0_root_sub_0_root_sub_163_2/carry [10]), .Y(
        N448) );
  AND2X1 U330 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [9]), .B(n230), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [10]) );
  XOR2X1 U331 ( .A(n230), .B(\sub_0_root_sub_0_root_sub_163_2/carry [9]), .Y(
        N447) );
  AND2X1 U332 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [8]), .B(n229), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [9]) );
  XOR2X1 U333 ( .A(n229), .B(\sub_0_root_sub_0_root_sub_163_2/carry [8]), .Y(
        N446) );
  AND2X1 U334 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [7]), .B(n228), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [8]) );
  XOR2X1 U335 ( .A(n228), .B(\sub_0_root_sub_0_root_sub_163_2/carry [7]), .Y(
        N445) );
  AND2X1 U336 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [6]), .B(n227), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [7]) );
  XOR2X1 U337 ( .A(n227), .B(\sub_0_root_sub_0_root_sub_163_2/carry [6]), .Y(
        N444) );
  AND2X1 U338 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [5]), .B(n226), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [6]) );
  XOR2X1 U339 ( .A(n226), .B(\sub_0_root_sub_0_root_sub_163_2/carry [5]), .Y(
        N443) );
  AND2X1 U340 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [4]), .B(n225), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [5]) );
  XOR2X1 U341 ( .A(n225), .B(\sub_0_root_sub_0_root_sub_163_2/carry [4]), .Y(
        N442) );
  AND2X1 U342 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [3]), .B(n224), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [4]) );
  XOR2X1 U343 ( .A(n224), .B(\sub_0_root_sub_0_root_sub_163_2/carry [3]), .Y(
        N441) );
  AND2X1 U344 ( .A(\sub_0_root_sub_0_root_sub_163_2/carry [2]), .B(n223), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [3]) );
  XOR2X1 U345 ( .A(n223), .B(\sub_0_root_sub_0_root_sub_163_2/carry [2]), .Y(
        N440) );
  AND2X1 U346 ( .A(n221), .B(n222), .Y(
        \sub_0_root_sub_0_root_sub_163_2/carry [2]) );
  XOR2X1 U347 ( .A(n222), .B(n221), .Y(N439) );
  XNOR2X1 U348 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [18]), .B(n258), 
        .Y(N416) );
  AND2X1 U349 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [17]), .B(n257), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [18]) );
  XOR2X1 U350 ( .A(n257), .B(\sub_0_root_sub_0_root_sub_162_2/carry [17]), .Y(
        N415) );
  AND2X1 U351 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [16]), .B(n256), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [17]) );
  XOR2X1 U352 ( .A(n256), .B(\sub_0_root_sub_0_root_sub_162_2/carry [16]), .Y(
        N414) );
  AND2X1 U353 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [15]), .B(n255), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [16]) );
  XOR2X1 U354 ( .A(n255), .B(\sub_0_root_sub_0_root_sub_162_2/carry [15]), .Y(
        N413) );
  OR2X1 U355 ( .A(n254), .B(\sub_0_root_sub_0_root_sub_162_2/carry [14]), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [15]) );
  XNOR2X1 U356 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [14]), .B(n254), 
        .Y(N412) );
  AND2X1 U357 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [13]), .B(n253), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [14]) );
  XOR2X1 U358 ( .A(n253), .B(\sub_0_root_sub_0_root_sub_162_2/carry [13]), .Y(
        N411) );
  OR2X1 U359 ( .A(n252), .B(\sub_0_root_sub_0_root_sub_162_2/carry [12]), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [13]) );
  XNOR2X1 U360 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [12]), .B(n252), 
        .Y(N410) );
  AND2X1 U361 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [11]), .B(n251), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [12]) );
  XOR2X1 U362 ( .A(n251), .B(\sub_0_root_sub_0_root_sub_162_2/carry [11]), .Y(
        N409) );
  AND2X1 U363 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [10]), .B(n250), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [11]) );
  XOR2X1 U364 ( .A(n250), .B(\sub_0_root_sub_0_root_sub_162_2/carry [10]), .Y(
        N408) );
  AND2X1 U365 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [9]), .B(n249), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [10]) );
  XOR2X1 U366 ( .A(n249), .B(\sub_0_root_sub_0_root_sub_162_2/carry [9]), .Y(
        N407) );
  AND2X1 U367 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [8]), .B(n248), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [9]) );
  XOR2X1 U368 ( .A(n248), .B(\sub_0_root_sub_0_root_sub_162_2/carry [8]), .Y(
        N406) );
  AND2X1 U369 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [7]), .B(n247), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [8]) );
  XOR2X1 U370 ( .A(n247), .B(\sub_0_root_sub_0_root_sub_162_2/carry [7]), .Y(
        N405) );
  AND2X1 U371 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [6]), .B(n246), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [7]) );
  XOR2X1 U372 ( .A(n246), .B(\sub_0_root_sub_0_root_sub_162_2/carry [6]), .Y(
        N404) );
  AND2X1 U373 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [5]), .B(n245), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [6]) );
  XOR2X1 U374 ( .A(n245), .B(\sub_0_root_sub_0_root_sub_162_2/carry [5]), .Y(
        N403) );
  AND2X1 U375 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [4]), .B(n244), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [5]) );
  XOR2X1 U376 ( .A(n244), .B(\sub_0_root_sub_0_root_sub_162_2/carry [4]), .Y(
        N402) );
  AND2X1 U377 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [3]), .B(n243), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [4]) );
  XOR2X1 U378 ( .A(n243), .B(\sub_0_root_sub_0_root_sub_162_2/carry [3]), .Y(
        N401) );
  AND2X1 U379 ( .A(\sub_0_root_sub_0_root_sub_162_2/carry [2]), .B(n242), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [3]) );
  XOR2X1 U380 ( .A(n242), .B(\sub_0_root_sub_0_root_sub_162_2/carry [2]), .Y(
        N400) );
  AND2X1 U381 ( .A(n240), .B(n241), .Y(
        \sub_0_root_sub_0_root_sub_162_2/carry [2]) );
  XOR2X1 U382 ( .A(n241), .B(n240), .Y(N399) );
  XNOR2X1 U383 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [18]), .B(n277), 
        .Y(N376) );
  AND2X1 U384 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [17]), .B(n276), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [18]) );
  XOR2X1 U385 ( .A(n276), .B(\sub_0_root_sub_0_root_sub_161_2/carry [17]), .Y(
        N375) );
  AND2X1 U386 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [16]), .B(n275), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [17]) );
  XOR2X1 U387 ( .A(n275), .B(\sub_0_root_sub_0_root_sub_161_2/carry [16]), .Y(
        N374) );
  AND2X1 U388 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [15]), .B(n274), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [16]) );
  XOR2X1 U389 ( .A(n274), .B(\sub_0_root_sub_0_root_sub_161_2/carry [15]), .Y(
        N373) );
  OR2X1 U390 ( .A(n273), .B(\sub_0_root_sub_0_root_sub_161_2/carry [14]), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [15]) );
  XNOR2X1 U391 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [14]), .B(n273), 
        .Y(N372) );
  AND2X1 U392 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [13]), .B(n272), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [14]) );
  XOR2X1 U393 ( .A(n272), .B(\sub_0_root_sub_0_root_sub_161_2/carry [13]), .Y(
        N371) );
  OR2X1 U394 ( .A(n271), .B(\sub_0_root_sub_0_root_sub_161_2/carry [12]), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [13]) );
  XNOR2X1 U395 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [12]), .B(n271), 
        .Y(N370) );
  AND2X1 U396 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [11]), .B(n270), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [12]) );
  XOR2X1 U397 ( .A(n270), .B(\sub_0_root_sub_0_root_sub_161_2/carry [11]), .Y(
        N369) );
  AND2X1 U398 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [10]), .B(n269), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [11]) );
  XOR2X1 U399 ( .A(n269), .B(\sub_0_root_sub_0_root_sub_161_2/carry [10]), .Y(
        N368) );
  AND2X1 U400 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [9]), .B(n268), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [10]) );
  XOR2X1 U401 ( .A(n268), .B(\sub_0_root_sub_0_root_sub_161_2/carry [9]), .Y(
        N367) );
  AND2X1 U402 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [8]), .B(n267), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [9]) );
  XOR2X1 U403 ( .A(n267), .B(\sub_0_root_sub_0_root_sub_161_2/carry [8]), .Y(
        N366) );
  AND2X1 U404 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [7]), .B(n266), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [8]) );
  XOR2X1 U405 ( .A(n266), .B(\sub_0_root_sub_0_root_sub_161_2/carry [7]), .Y(
        N365) );
  AND2X1 U406 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [6]), .B(n265), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [7]) );
  XOR2X1 U407 ( .A(n265), .B(\sub_0_root_sub_0_root_sub_161_2/carry [6]), .Y(
        N364) );
  AND2X1 U408 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [5]), .B(n264), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [6]) );
  XOR2X1 U409 ( .A(n264), .B(\sub_0_root_sub_0_root_sub_161_2/carry [5]), .Y(
        N363) );
  AND2X1 U410 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [4]), .B(n263), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [5]) );
  XOR2X1 U411 ( .A(n263), .B(\sub_0_root_sub_0_root_sub_161_2/carry [4]), .Y(
        N362) );
  AND2X1 U412 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [3]), .B(n262), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [4]) );
  XOR2X1 U413 ( .A(n262), .B(\sub_0_root_sub_0_root_sub_161_2/carry [3]), .Y(
        N361) );
  AND2X1 U414 ( .A(\sub_0_root_sub_0_root_sub_161_2/carry [2]), .B(n261), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [3]) );
  XOR2X1 U415 ( .A(n261), .B(\sub_0_root_sub_0_root_sub_161_2/carry [2]), .Y(
        N360) );
  AND2X1 U416 ( .A(n259), .B(n260), .Y(
        \sub_0_root_sub_0_root_sub_161_2/carry [2]) );
  XOR2X1 U417 ( .A(n260), .B(n259), .Y(N359) );
  XOR2X1 U418 ( .A(\mult_177_S2/n2 ), .B(di_a[5]), .Y(n218) );
  XOR2X1 U419 ( .A(di_a[3]), .B(n218), .Y(N466) );
  XOR2X1 U420 ( .A(\mult_178_S2/n2 ), .B(di_b[5]), .Y(n219) );
  XOR2X1 U421 ( .A(di_b[3]), .B(n219), .Y(N474) );
  XOR2X1 U422 ( .A(\mult_179_S2/n2 ), .B(di_c[5]), .Y(n220) );
  XOR2X1 U423 ( .A(di_c[3]), .B(n220), .Y(N482) );
  divider_4stage_20_5_to_16bit_0 div1_a ( .clk(clk), .load(n217), .dividand(
        dividand1_a), .dividor({1'b1, 1'b0, 1'b1, 1'b0, 1'b0}), .q({
        SYNOPSYS_UNCONNECTED__0, q1_a[14:0]}) );
  divider_4stage_20_5_to_16bit_2 div1_b ( .clk(clk), .load(n217), .dividand(
        dividand1_b), .dividor({1'b1, 1'b0, 1'b1, 1'b0, 1'b0}), .q({
        SYNOPSYS_UNCONNECTED__1, q1_b[14:0]}) );
  divider_4stage_20_5_to_16bit_1 div1_c ( .clk(clk), .load(n217), .dividand(
        dividand1_c), .dividor({1'b1, 1'b0, 1'b1, 1'b0, 1'b0}), .q({
        SYNOPSYS_UNCONNECTED__2, q1_c[14:0]}) );
  divider_3stage_26_18_to_9bit_signed_0 div2_x ( .clk(clk), .load(n216), 
        .dividand(dividand2_x), .dividor(dividor2_x), .q({
        SYNOPSYS_UNCONNECTED__3, q2_x[7:0]}), .dividand_sign(dividand2_x[25]), 
        .dividor_sign(dividor2_x[17]) );
  divider_3stage_26_18_to_9bit_signed_1 div2_y ( .clk(clk), .load(n216), 
        .dividand(dividand2_y), .dividor(dividor2_x), .q({
        SYNOPSYS_UNCONNECTED__4, q2_y[7:0]}), .dividand_sign(dividand2_y[25]), 
        .dividor_sign(dividor2_x[17]) );
  RFILE_DW01_add_0 add_157_2 ( .A(C_y), .B(A_y), .CI(1'b0), .SUM({N304, N303, 
        N302, N301, N300, N299, N298, N297}) );
  RFILE_DW01_add_1 add_157 ( .A(C_x), .B(A_x), .CI(1'b0), .SUM({N280, N279, 
        N278, N277, N276, N275, N274, N273}) );
  RFILE_DW01_add_2 add_156_2 ( .A(B_y), .B(A_y), .CI(1'b0), .SUM({N239, N238, 
        N237, N236, N235, N234, N233, N232}) );
  RFILE_DW01_add_3 add_156 ( .A(B_x), .B(A_x), .CI(1'b0), .SUM({N215, N214, 
        N213, N212, N211, N210, N209, N208}) );
  RFILE_DW01_sub_0 sub_152 ( .A(C_y), .B(A_y), .CI(1'b0), .DIFF({N153, N152, 
        N151, N150, N149, N148, N147, N146}) );
  RFILE_DW01_sub_1 sub_151 ( .A(B_y), .B(A_y), .CI(1'b0), .DIFF({N145, N144, 
        N143, N142, N141, N140, N139, N138}) );
  RFILE_DW01_sub_2 sub_150 ( .A(C_x), .B(A_x), .CI(1'b0), .DIFF({N137, N136, 
        N135, N134, N133, N132, N131, N130}) );
  RFILE_DW01_sub_3 sub_149 ( .A(B_x), .B(A_x), .CI(1'b0), .DIFF({N129, N128, 
        N127, N126, N125, N124, N123, N122}) );
  RFILE_DW01_inc_0 add_76_round ( .A(d_c), .SUM({dshort_c, 
        SYNOPSYS_UNCONNECTED__5}) );
  RFILE_DW01_inc_1 add_75_round ( .A(d_b), .SUM({dshort_b, 
        SYNOPSYS_UNCONNECTED__6}) );
  RFILE_DW01_inc_2 add_74_round ( .A(d_a), .SUM({dshort_a, 
        SYNOPSYS_UNCONNECTED__7}) );
  RFILE_DW_mult_tc_5 mult_202 ( .a({a1[8:2], n215, 1'b0}), .b(c2), .product({
        SYNOPSYS_UNCONNECTED__8, N745, N744, N743, N742, N741, N740, N739, 
        N738, N737, N736, N735, N734, N733, N732, N731, N730, N729, N728, N727, 
        N726, N725, N724, N723, N722, N721, SYNOPSYS_UNCONNECTED__9}) );
  RFILE_DW_mult_tc_4 mult_202_2 ( .a({a2[8:2], n213, 1'b0}), .b(c1), .product(
        {SYNOPSYS_UNCONNECTED__10, N771, N770, N769, N768, N767, N766, N765, 
        N764, N763, N762, N761, N760, N759, N758, N757, N756, N755, N754, N753, 
        N752, N751, N750, N749, N748, N747, SYNOPSYS_UNCONNECTED__11}) );
  RFILE_DW01_sub_13 sub_202 ( .A({N745, N744, N743, N742, N741, N740, N739, 
        N738, N737, N736, N735, N734, N733, N732, N731, N730, N729, N728, N727, 
        N726, N725, N724, N723, N722, N721, 1'b0}), .B({N771, N770, N769, N768, 
        N767, N766, N765, N764, N763, N762, N761, N760, N759, N758, N757, N756, 
        N755, N754, N753, N752, N751, N750, N749, N748, N747, 1'b0}), .CI(1'b0), .DIFF({N797, N796, N795, N794, N793, N792, N791, N790, N789, N788, N787, 
        N786, N785, N784, N783, N782, N781, N780, N779, N778, N777, N776, N775, 
        N774, N773, SYNOPSYS_UNCONNECTED__12}) );
  RFILE_DW_mult_tc_3 mult_201 ( .a(c1), .b({b2[8:2], n214, 1'b0}), .product({
        SYNOPSYS_UNCONNECTED__13, N667, N666, N665, N664, N663, N662, N661, 
        N660, N659, N658, N657, N656, N655, N654, N653, N652, N651, N650, N649, 
        N648, N647, N646, N645, N644, N643, SYNOPSYS_UNCONNECTED__14}) );
  RFILE_DW_mult_tc_2 mult_201_2 ( .a(c2), .b({b1[8:2], n212, 1'b0}), .product(
        {SYNOPSYS_UNCONNECTED__15, N693, N692, N691, N690, N689, N688, N687, 
        N686, N685, N684, N683, N682, N681, N680, N679, N678, N677, N676, N675, 
        N674, N673, N672, N671, N670, N669, SYNOPSYS_UNCONNECTED__16}) );
  RFILE_DW01_sub_12 sub_201 ( .A({N667, N666, N665, N664, N663, N662, N661, 
        N660, N659, N658, N657, N656, N655, N654, N653, N652, N651, N650, N649, 
        N648, N647, N646, N645, N644, N643, 1'b0}), .B({N693, N692, N691, N690, 
        N689, N688, N687, N686, N685, N684, N683, N682, N681, N680, N679, N678, 
        N677, N676, N675, N674, N673, N672, N671, N670, N669, 1'b0}), .CI(1'b0), .DIFF({N719, N718, N717, N716, N715, N714, N713, N712, N711, N710, N709, 
        N708, N707, N706, N705, N704, N703, N702, N701, N700, N699, N698, N697, 
        N696, N695, SYNOPSYS_UNCONNECTED__17}) );
  RFILE_DW_mult_uns_6 mult_192 ( .a(dshort_c), .b(dshort_c), .product({N568, 
        N567, N566, N565, N564, N563, N562, N561, N560, N559, N558, N557, N556, 
        N555, N554, N553, SYNOPSYS_UNCONNECTED__18, N551}) );
  RFILE_DW_mult_uns_8 mult_191 ( .a(dshort_b), .b(dshort_b), .product({N550, 
        N549, N548, N547, N546, N545, N544, N543, N542, N541, N540, N539, N538, 
        N537, N536, N535, SYNOPSYS_UNCONNECTED__19, N533}) );
  RFILE_DW_mult_uns_7 mult_190 ( .a(dshort_a), .b(dshort_a), .product({N532, 
        N531, N530, N529, N528, N527, N526, N525, N524, N523, N522, N521, N520, 
        N519, N518, N517, SYNOPSYS_UNCONNECTED__20, N515}) );
  RFILE_DW_mult_uns_2 mult_183 ( .a({di_a[6:2], N462, N461}), .b(valueA[15:4]), 
        .product({SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, N493, 
        N492, N491, N490, N489, N488, N487, N486, N485, N484, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29}) );
  RFILE_DW_mult_uns_1 mult_184 ( .a({di_b[6:2], N470, N469}), .b(valueB[15:4]), 
        .product({SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, N503, 
        N502, N501, N500, N499, N498, N497, N496, N495, N494, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38}) );
  RFILE_DW_mult_uns_0 mult_185 ( .a({di_c[6:2], N478, N477}), .b(valueC[15:4]), 
        .product({SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, N513, 
        N512, N511, N510, N509, N508, N507, N506, N505, N504, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47}) );
  RFILE_DW_mult_tc_9 mult_157 ( .a({N280, N279, N278, N277, N276, N275, N274, 
        N273}), .b({a2[8:2], n213}), .product({N296, N295, N294, N293, N292, 
        N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281}) );
  RFILE_DW_mult_tc_8 mult_157_2 ( .a({N304, N303, N302, N301, N300, N299, N298, 
        N297}), .b({b2[8:2], n214}), .product({N320, N319, N318, N317, N316, 
        N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305}) );
  RFILE_DW01_add_7 add_157_3 ( .A({N296, N296, N295, N294, N293, N292, N291, 
        N290, N289, N288, N287, N286, N285, N284, N283, N282, N281}), .B({N320, 
        N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, 
        N308, N307, N306, N305}), .CI(1'b0), .SUM({N337, N336, N335, N334, 
        N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, 
        N321}) );
  RFILE_DW_mult_tc_7 mult_156 ( .a({N215, N214, N213, N212, N211, N210, N209, 
        N208}), .b({a1[8:2], n215}), .product({N231, N230, N229, N228, N227, 
        N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216}) );
  RFILE_DW_mult_tc_6 mult_156_2 ( .a({N239, N238, N237, N236, N235, N234, N233, 
        N232}), .b({b1[8:2], n212}), .product({N255, N254, N253, N252, N251, 
        N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240}) );
  RFILE_DW01_add_6 add_156_3 ( .A({N231, N231, N230, N229, N228, N227, N226, 
        N225, N224, N223, N222, N221, N220, N219, N218, N217, N216}), .B({N255, 
        N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, 
        N243, N242, N241, N240}), .CI(1'b0), .SUM({N272, N271, N270, N269, 
        N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, 
        N256}) );
  RFILE_DW_mult_tc_1 mult_155 ( .a({a1[8:2], n215, 1'b0}), .b({b2[8:2], n214, 
        1'b0}), .product({N171, N170, N169, N168, N167, N166, N165, N164, N163, 
        N162, N161, N160, N159, N158, N157, N156, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49}) );
  RFILE_DW_mult_tc_0 mult_155_2 ( .a({a2[8:2], n213, 1'b0}), .b({b1[8:2], n212, 
        1'b0}), .product({N189, N188, N187, N186, N185, N184, N183, N182, N181, 
        N180, N179, N178, N177, N176, N175, N174, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51}) );
  RFILE_DW01_sub_10 sub_155 ( .A({N171, N170, N169, N168, N167, N166, N165, 
        N164, N163, N162, N161, N160, N159, N158, N157, N156, 1'b0, 1'b0}), 
        .B({N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, 
        N178, N177, N176, N175, N174, 1'b0, 1'b0}), .CI(1'b0), .DIFF({N207, 
        N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, 
        N194, N193, N192, SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53})
         );
  RFILE_DW01_sub_11 sub_1_root_sub_0_root_add_197 ( .A(d2_a), .B(d2_c), .CI(
        1'b0), .DIFF({N622, N621, N620, N619, N618, N617, N616, N615, N614, 
        N613, N612, N611, N610, N609, N608, N607, N606, N605}) );
  RFILE_DW01_add_4 add_0_root_sub_0_root_add_197 ( .A({c20[16], c20}), .B({
        N622, N621, N620, N619, N618, N617, N616, N615, N614, N613, N612, N611, 
        N610, N609, N608, N607, N606, N605}), .CI(1'b0), .SUM({N640, N639, 
        N638, N637, N636, N635, N634, N633, N632, N631, N630, N629, N628, N627, 
        N626, N625, N624, N623}) );
  RFILE_DW01_sub_14 sub_1_root_sub_0_root_add_196 ( .A(d2_a), .B(d2_b), .CI(
        1'b0), .DIFF({N586, N585, N584, N583, N582, N581, N580, N579, N578, 
        N577, N576, N575, N574, N573, N572, N571, N570, N569}) );
  RFILE_DW01_add_5 add_0_root_sub_0_root_add_196 ( .A({c10[16], c10}), .B({
        N586, N585, N584, N583, N582, N581, N580, N579, N578, N577, N576, N575, 
        N574, N573, N572, N571, N570, N569}), .CI(1'b0), .SUM({N604, N603, 
        N602, N601, N600, N599, N598, N597, N596, N595, N594, N593, N592, N591, 
        N590, N589, N588, N587}) );
endmodule

