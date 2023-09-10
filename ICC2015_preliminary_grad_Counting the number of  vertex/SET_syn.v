/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sat Feb 25 19:11:15 2023
/////////////////////////////////////////////////////////////


module SET_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [9:1] carry;

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  XOR3X1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .Y(SUM[9]) );
  ADDFHX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFHX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX4 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFHX4 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  CLKAND2X3 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2XL U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module SET_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [10:0] carry;

  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  XOR3X1 U2_9 ( .A(A[9]), .B(n6), .C(carry[9]), .Y(DIFF[9]) );
  ADDFX1 U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFHX2 U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFHX4 U2_4 ( .A(A[4]), .B(n2), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFHX4 U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFHX2 U2_3 ( .A(A[3]), .B(n11), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFHX2 U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX1 U2_7 ( .A(A[7]), .B(n7), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  CLKINVX1 U1 ( .A(B[2]), .Y(n10) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[3]), .Y(n11) );
  INVX3 U4 ( .A(B[1]), .Y(n9) );
  INVX1 U5 ( .A(B[5]), .Y(n5) );
  CLKINVX1 U6 ( .A(A[0]), .Y(n1) );
  INVX1 U7 ( .A(B[7]), .Y(n7) );
  INVXL U8 ( .A(B[6]), .Y(n4) );
  NAND2X2 U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  XNOR2XL U10 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U11 ( .A(B[9]), .Y(n6) );
  INVX1 U12 ( .A(B[4]), .Y(n2) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n3) );
endmodule


module SET ( clk, rst, en, central, radius, mode, busy, valid, candidate );
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output [7:0] candidate;
  input clk, rst, en;
  output busy, valid;
  wire   N90, \nx_in_num[0] , N256, N257, N258, N259, N260, N261, \cent[3] ,
         \point[3] , N443, N444, N445, N446, N447, N448, N449, N450, N454,
         N455, N456, N469, N470, N471, N472, N473, N475, N476, N477, N478,
         N479, N509, N510, N511, N512, N513, N514, N515, N516, N517, N518,
         N519, N520, N521, N522, N523, N524, N525, N526, N527, N528, N595,
         N596, N597, N598, N599, N600, n88, n89, n90, n94, n97, n104, n105,
         n107, n108, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n405, n406, n407, n408, n409, n410, n411, n412, n796, n414,
         n415, n416, n417, n418, n419, n801, n800, n799, n798, n797, n802,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
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
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668,
         n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690,
         n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701,
         n702, n703, n704, n705, n706, n707, n708, n709, n710, n711, n712,
         n713, n714, n715, n716, n717, n718, n719, n720, n721, n722, n723,
         n724, n725, n726, n727, n728, n729, n730, n731, n732, n733, n734,
         n735, n736, n737, n738, n739, n740, n741, n742, n743, n744, n745,
         n746, n747, n748, n749, n750, n751, n752, n753, n754, n755, n756,
         n757, n758, n759, n760, n761, n762, n763, n764, n765, n766, n767,
         n768, n769, n770, n771, n772, n773, n774, n775, n782, n784, n786,
         n788, n790, n792, n794;
  wire   [2:0] index_X;
  wire   [2:0] index_Y;
  wire   [2:0] counter;
  wire   [3:0] squre_counter;
  wire   [9:0] result;
  wire   [2:0] ns;
  wire   [2:0] nx_counter;
  wire   [3:0] nx_squre_counter;
  wire   [5:0] nx_index;
  wire   [9:0] nx_result;
  wire   [5:0] nx_num;
  wire   [3:0] Ax;
  wire   [3:0] Ay;
  wire   [3:0] Bx;
  wire   [3:0] By;
  wire   [3:0] Cx;
  wire   [3:0] Cy;
  wire   [5:0] r1;
  wire   [5:0] r2;
  wire   [5:0] r3;
  wire   [5:2] \r444/carry ;
  wire   [4:2] \add_269/carry ;
  wire   [5:0] \r435/carry ;
  wire   [5:2] \r432/carry ;
  assign candidate[6] = 1'b0;
  assign candidate[7] = 1'b0;

  DFFRXL \result_reg[6]  ( .D(nx_result[6]), .CK(clk), .RN(n465), .Q(result[6]) );
  DFFRX1 \result_reg[9]  ( .D(nx_result[9]), .CK(clk), .RN(n468), .Q(result[9]) );
  DFFRX1 \result_reg[8]  ( .D(nx_result[8]), .CK(clk), .RN(n465), .Q(result[8]) );
  DFFRX1 \r1_reg[5]  ( .D(n314), .CK(clk), .RN(n465), .Q(r1[5]), .QN(n411) );
  DFFRX1 \r3_reg[5]  ( .D(n307), .CK(clk), .RN(n465), .Q(r3[5]), .QN(n410) );
  DFFRX1 \r2_reg[5]  ( .D(n308), .CK(clk), .RN(n465), .Q(r2[5]), .QN(n412) );
  DFFRX1 \result_reg[5]  ( .D(nx_result[5]), .CK(clk), .RN(n465), .Q(result[5]) );
  DFFRX1 \result_reg[1]  ( .D(nx_result[1]), .CK(clk), .RN(n468), .Q(result[1]) );
  DFFRX1 \result_reg[0]  ( .D(nx_result[0]), .CK(clk), .RN(n468), .Q(result[0]) );
  DFFRX1 \Bx_reg[3]  ( .D(n753), .CK(clk), .RN(n466), .Q(Bx[3]), .QN(n735) );
  DFFRX1 \Ax_reg[1]  ( .D(n763), .CK(clk), .RN(n467), .Q(Ax[1]), .QN(n737) );
  DFFRX1 \Ax_reg[2]  ( .D(n757), .CK(clk), .RN(n466), .Q(Ax[2]), .QN(n738) );
  DFFRX1 \Bx_reg[1]  ( .D(n765), .CK(clk), .RN(n467), .Q(Bx[1]), .QN(n733) );
  DFFRX1 \Bx_reg[2]  ( .D(n759), .CK(clk), .RN(n466), .Q(Bx[2]), .QN(n734) );
  DFFRX1 \Bx_reg[0]  ( .D(n771), .CK(clk), .RN(n464), .Q(Bx[0]), .QN(n732) );
  DFFRX1 \By_reg[3]  ( .D(n754), .CK(clk), .RN(n466), .Q(By[3]) );
  DFFRX1 \index_reg[5]  ( .D(n385), .CK(clk), .RN(n469), .Q(index_Y[2]), .QN(
        n726) );
  DFFRX1 \Ay_reg[2]  ( .D(n758), .CK(clk), .RN(n466), .Q(Ay[2]) );
  DFFRX1 \By_reg[2]  ( .D(n760), .CK(clk), .RN(n467), .Q(By[2]) );
  DFFRX1 \index_reg[1]  ( .D(n414), .CK(clk), .RN(n469), .Q(index_X[1]), .QN(
        n724) );
  DFFRX1 \index_reg[2]  ( .D(n415), .CK(clk), .RN(n469), .Q(index_X[2]), .QN(
        n723) );
  DFFRX1 \index_reg[3]  ( .D(nx_index[3]), .CK(clk), .RN(n470), .Q(index_Y[0]), 
        .QN(n727) );
  DFFRX1 \index_reg[4]  ( .D(n386), .CK(clk), .RN(n469), .Q(index_Y[1]), .QN(
        n725) );
  DFFRX1 \Cy_reg[3]  ( .D(n756), .CK(clk), .RN(n466), .Q(Cy[3]), .QN(n731) );
  DFFRX1 \Ax_reg[3]  ( .D(n751), .CK(clk), .RN(n465), .Q(Ax[3]), .QN(n739) );
  DFFRX1 \Ax_reg[0]  ( .D(n769), .CK(clk), .RN(n464), .Q(Ax[0]), .QN(n736) );
  DFFRX1 \Cy_reg[1]  ( .D(n768), .CK(clk), .RN(n468), .Q(Cy[1]), .QN(n729) );
  DFFRX1 \Cy_reg[2]  ( .D(n762), .CK(clk), .RN(n467), .Q(Cy[2]), .QN(n730) );
  DFFRX1 \Cy_reg[0]  ( .D(n774), .CK(clk), .RN(n464), .Q(Cy[0]), .QN(n728) );
  DFFRX1 \Cx_reg[3]  ( .D(n755), .CK(clk), .RN(n466), .Q(Cx[3]) );
  DFFRX1 \Ay_reg[3]  ( .D(n752), .CK(clk), .RN(n466), .Q(Ay[3]) );
  DFFRX1 \Cx_reg[2]  ( .D(n761), .CK(clk), .RN(n467), .Q(Cx[2]) );
  DFFRX4 \counter_reg[1]  ( .D(nx_counter[1]), .CK(clk), .RN(n469), .Q(
        counter[1]), .QN(n97) );
  DFFRX4 \cs_reg[1]  ( .D(ns[1]), .CK(clk), .RN(n469), .Q(n456), .QN(n89) );
  DFFRX4 \cs_reg[2]  ( .D(ns[2]), .CK(clk), .RN(n469), .Q(n537), .QN(n88) );
  DFFRX1 \r3_reg[4]  ( .D(n320), .CK(clk), .RN(n468), .Q(r3[4]), .QN(n398) );
  DFFRX1 \r2_reg[4]  ( .D(n309), .CK(clk), .RN(n468), .Q(r2[4]), .QN(n400) );
  DFFRX1 \r1_reg[4]  ( .D(n315), .CK(clk), .RN(n468), .Q(r1[4]), .QN(n399) );
  DFFRX4 \counter_reg[2]  ( .D(nx_counter[2]), .CK(clk), .RN(n469), .Q(
        counter[2]), .QN(n94) );
  DFFRXL \in_num_reg[1]  ( .D(n740), .CK(clk), .RN(n465), .QN(n104) );
  DFFRX1 \Ay_reg[1]  ( .D(n764), .CK(clk), .RN(n467), .Q(Ay[1]) );
  DFFRX1 \Ay_reg[0]  ( .D(n770), .CK(clk), .RN(n464), .Q(Ay[0]) );
  DFFRX1 \By_reg[0]  ( .D(n772), .CK(clk), .RN(n464), .Q(By[0]) );
  DFFRX1 \By_reg[1]  ( .D(n766), .CK(clk), .RN(n467), .Q(By[1]) );
  DFFRX1 \Cx_reg[1]  ( .D(n767), .CK(clk), .RN(n467), .Q(Cx[1]) );
  DFFRX1 \Cx_reg[0]  ( .D(n773), .CK(clk), .RN(n464), .Q(Cx[0]) );
  DFFRXL \result_reg[7]  ( .D(n388), .CK(clk), .RN(n465), .Q(result[7]) );
  DFFRXL \result_reg[4]  ( .D(nx_result[4]), .CK(clk), .RN(n468), .Q(result[4]) );
  DFFRX1 \r3_reg[3]  ( .D(n321), .CK(clk), .RN(n466), .Q(r3[3]), .QN(n401) );
  DFFRX1 \r2_reg[3]  ( .D(n310), .CK(clk), .RN(n466), .Q(r2[3]), .QN(n403) );
  DFFRX1 \r1_reg[3]  ( .D(n316), .CK(clk), .RN(n466), .Q(r1[3]), .QN(n402) );
  DFFRX1 \r3_reg[2]  ( .D(n322), .CK(clk), .RN(n467), .Q(r3[2]), .QN(n389) );
  DFFRX1 \r3_reg[0]  ( .D(n324), .CK(clk), .RN(n468), .Q(r3[0]), .QN(n406) );
  DFFRX1 \r1_reg[0]  ( .D(n319), .CK(clk), .RN(n465), .Q(r1[0]), .QN(n405) );
  DFFRX1 \r2_reg[1]  ( .D(n312), .CK(clk), .RN(n468), .Q(r2[1]), .QN(n408) );
  DFFRX1 \r1_reg[1]  ( .D(n318), .CK(clk), .RN(n468), .Q(r1[1]), .QN(n407) );
  DFFRX2 \squre_counter_reg[2]  ( .D(nx_squre_counter[2]), .CK(clk), .RN(n470), 
        .Q(squre_counter[2]), .QN(n435) );
  DFFRX1 \squre_counter_reg[3]  ( .D(nx_squre_counter[3]), .CK(clk), .RN(n470), 
        .Q(squre_counter[3]), .QN(n397) );
  DFFRX1 \r2_reg[2]  ( .D(n311), .CK(clk), .RN(n467), .Q(r2[2]), .QN(n391) );
  DFFRX1 \r1_reg[2]  ( .D(n317), .CK(clk), .RN(n467), .Q(r1[2]), .QN(n390) );
  DFFRX1 \r3_reg[1]  ( .D(n323), .CK(clk), .RN(n468), .Q(r3[1]), .QN(n409) );
  DFFRX1 \squre_counter_reg[1]  ( .D(nx_squre_counter[1]), .CK(clk), .RN(n470), 
        .Q(squre_counter[1]) );
  DFFRX2 \num_reg[0]  ( .D(nx_num[0]), .CK(clk), .RN(n464), .Q(n802), .QN(N595) );
  DFFRX2 \num_reg[5]  ( .D(nx_num[5]), .CK(clk), .RN(n464), .Q(n797), .QN(n718) );
  DFFRX2 \num_reg[4]  ( .D(nx_num[4]), .CK(clk), .RN(n464), .Q(n798), .QN(n719) );
  DFFRX2 \num_reg[3]  ( .D(nx_num[3]), .CK(clk), .RN(n464), .Q(n799), .QN(n720) );
  DFFRX2 \num_reg[2]  ( .D(nx_num[2]), .CK(clk), .RN(n464), .Q(n800), .QN(n721) );
  DFFRX2 \num_reg[1]  ( .D(nx_num[1]), .CK(clk), .RN(n464), .Q(n801), .QN(n722) );
  DFFRX1 \index_reg[0]  ( .D(nx_index[0]), .CK(clk), .RN(n469), .Q(index_X[0]), 
        .QN(N256) );
  DFFRXL \r2_reg[0]  ( .D(n313), .CK(clk), .RN(n465), .Q(r2[0]), .QN(n680) );
  DFFRX1 \mode_reg_reg[1]  ( .D(n325), .CK(clk), .RN(n469), .Q(n557), .QN(n107) );
  DFFRX1 \mode_reg_reg[0]  ( .D(n326), .CK(clk), .RN(n470), .Q(n501), .QN(n108) );
  DFFRX1 \in_num_reg[0]  ( .D(\nx_in_num[0] ), .CK(clk), .RN(n465), .QN(n105)
         );
  DFFRX1 \result_reg[3]  ( .D(nx_result[3]), .CK(clk), .RN(n466), .Q(result[3]) );
  DFFRX1 \result_reg[2]  ( .D(nx_result[2]), .CK(clk), .RN(n467), .Q(result[2]) );
  DFFRX2 \cs_reg[0]  ( .D(ns[0]), .CK(clk), .RN(n470), .Q(n455), .QN(n90) );
  DFFRHQX4 \counter_reg[0]  ( .D(nx_counter[0]), .CK(clk), .RN(n469), .Q(n429)
         );
  DFFRX1 \squre_counter_reg[0]  ( .D(nx_squre_counter[0]), .CK(clk), .RN(n470), 
        .Q(squre_counter[0]), .QN(n395) );
  AOI22X1 U377 ( .A0(Bx[0]), .A1(n445), .B0(By[0]), .B1(n444), .Y(n438) );
  NAND2X1 U378 ( .A(N444), .B(n89), .Y(n393) );
  OAI21X4 U379 ( .A0(counter[1]), .A1(n442), .B0(n441), .Y(N444) );
  AO22X1 U380 ( .A0(Cy[0]), .A1(n394), .B0(Cx[0]), .B1(n448), .Y(n437) );
  INVX1 U381 ( .A(n479), .Y(n477) );
  AOI221X2 U382 ( .A0(Ax[0]), .A1(n418), .B0(Ay[0]), .B1(n450), .C0(n437), .Y(
        n439) );
  INVX4 U383 ( .A(n563), .Y(n512) );
  NAND2X6 U384 ( .A(n511), .B(n562), .Y(n561) );
  OAI21X1 U385 ( .A0(n105), .A1(n104), .B0(n563), .Y(n562) );
  OAI221X2 U386 ( .A0(n602), .A1(n402), .B0(n390), .B1(n582), .C0(n597), .Y(
        n594) );
  CLKAND2X8 U387 ( .A(n569), .B(n97), .Y(n567) );
  OAI221X2 U388 ( .A0(n593), .A1(n403), .B0(n391), .B1(n582), .C0(n589), .Y(
        n586) );
  OA21X1 U389 ( .A0(n391), .A1(nx_result[2]), .B0(nx_result[3]), .Y(n593) );
  OAI32X4 U390 ( .A0(n97), .A1(counter[2]), .A2(n453), .B0(counter[1]), .B1(
        n452), .Y(N446) );
  AOI221X4 U391 ( .A0(Ax[3]), .A1(n418), .B0(Ay[3]), .B1(n450), .C0(n449), .Y(
        n452) );
  OAI221X4 U392 ( .A0(n581), .A1(n401), .B0(n389), .B1(n582), .C0(n575), .Y(
        n570) );
  INVX6 U393 ( .A(n690), .Y(n635) );
  MXI2X1 U394 ( .A(n703), .B(n613), .S0(n483), .Y(n702) );
  NOR2X4 U395 ( .A(n610), .B(n434), .Y(n749) );
  CLKBUFX3 U396 ( .A(n522), .Y(n382) );
  BUFX4 U397 ( .A(n438), .Y(n383) );
  OAI21X4 U398 ( .A0(counter[1]), .A1(n447), .B0(n446), .Y(N445) );
  AOI221X4 U399 ( .A0(Ax[2]), .A1(n418), .B0(Ay[2]), .B1(n450), .C0(n443), .Y(
        n447) );
  INVX4 U400 ( .A(n605), .Y(n692) );
  OAI211X4 U401 ( .A0(n617), .A1(n688), .B0(n693), .C0(n694), .Y(n605) );
  AND2X6 U402 ( .A(n662), .B(n395), .Y(n687) );
  MX2XL U403 ( .A(n653), .B(n662), .S0(squre_counter[0]), .Y(n691) );
  OAI21X4 U404 ( .A0(n712), .A1(n460), .B0(n713), .Y(n662) );
  BUFX8 U405 ( .A(n601), .Y(n384) );
  AOI222X2 U406 ( .A0(N513), .A1(n486), .B0(n419), .B1(n459), .C0(N523), .C1(
        n488), .Y(n601) );
  OAI21X2 U407 ( .A0(n708), .A1(n460), .B0(n709), .Y(n690) );
  INVX12 U408 ( .A(n429), .Y(n454) );
  NOR2X2 U409 ( .A(n519), .B(n516), .Y(n565) );
  INVX6 U410 ( .A(squre_counter[1]), .Y(n483) );
  CLKINVX3 U411 ( .A(n97), .Y(n516) );
  AOI221X1 U412 ( .A0(Ax[1]), .A1(n418), .B0(Ay[1]), .B1(n450), .C0(n440), .Y(
        n442) );
  AO22X1 U413 ( .A0(Cy[2]), .A1(n394), .B0(Cx[2]), .B1(n448), .Y(n443) );
  ADDHXL U414 ( .A(N456), .B(\add_269/carry [2]), .CO(\add_269/carry [3]), .S(
        N477) );
  NAND2BX1 U415 ( .AN(n611), .B(n435), .Y(n434) );
  NOR3X2 U416 ( .A(n610), .B(squre_counter[2]), .C(n620), .Y(n750) );
  NAND2X1 U417 ( .A(n687), .B(n483), .Y(n608) );
  NOR2X1 U418 ( .A(squre_counter[0]), .B(n635), .Y(n703) );
  OAI222XL U419 ( .A0(n687), .A1(n483), .B0(n688), .B1(n644), .C0(n395), .C1(
        n653), .Y(n611) );
  BUFX12 U420 ( .A(n493), .Y(n416) );
  NAND2X1 U421 ( .A(n740), .B(n500), .Y(n507) );
  BUFX6 U422 ( .A(n494), .Y(n417) );
  MXI2X1 U423 ( .A(n620), .B(n617), .S0(n435), .Y(n619) );
  NAND2X2 U424 ( .A(n535), .B(n456), .Y(n531) );
  AND2X2 U425 ( .A(n547), .B(n508), .Y(n546) );
  CLKBUFX3 U426 ( .A(n491), .Y(n457) );
  BUFX6 U427 ( .A(n490), .Y(n458) );
  CLKINVX1 U428 ( .A(n580), .Y(nx_result[2]) );
  INVX3 U429 ( .A(n579), .Y(nx_result[3]) );
  INVX4 U430 ( .A(n500), .Y(\nx_in_num[0] ) );
  INVX3 U431 ( .A(n384), .Y(nx_result[4]) );
  CLKINVX1 U432 ( .A(n499), .Y(n740) );
  OAI2BB2XL U433 ( .B0(n526), .B1(n727), .A0N(N259), .A1N(n546), .Y(
        nx_index[3]) );
  CLKBUFX3 U434 ( .A(nx_index[5]), .Y(n385) );
  CLKBUFX3 U435 ( .A(nx_index[4]), .Y(n386) );
  OR3X2 U436 ( .A(n537), .B(n89), .C(n455), .Y(n387) );
  NAND3X2 U437 ( .A(n431), .B(n432), .C(n433), .Y(n388) );
  NAND2X1 U438 ( .A(N445), .B(n89), .Y(n392) );
  NOR2X4 U439 ( .A(n94), .B(n454), .Y(n394) );
  OR2X4 U440 ( .A(nx_result[6]), .B(n525), .Y(n396) );
  NAND2X1 U441 ( .A(n89), .B(n535), .Y(n502) );
  NOR2X1 U442 ( .A(n531), .B(n635), .Y(n625) );
  NAND2X1 U443 ( .A(n474), .B(n653), .Y(n646) );
  OAI21X2 U444 ( .A0(n714), .A1(n460), .B0(n715), .Y(n653) );
  AOI2BB2XL U445 ( .B0(n478), .B1(n653), .A0N(n484), .A1N(n635), .Y(n694) );
  OAI222X1 U446 ( .A0(n484), .A1(n644), .B0(n688), .B1(n690), .C0(n691), .C1(
        n483), .Y(n620) );
  NAND2X1 U447 ( .A(squre_counter[0]), .B(n483), .Y(n484) );
  ADDFX2 U449 ( .A(\point[3] ), .B(n473), .CI(\r435/carry [3]), .CO(
        \r435/carry [4]), .S(N472) );
  ADDFHX2 U450 ( .A(N456), .B(n392), .CI(\r435/carry [2]), .CO(\r435/carry [3]), .S(N471) );
  OAI222X4 U451 ( .A0(n536), .A1(n455), .B0(n537), .B1(n538), .C0(n534), .C1(
        n523), .Y(ns[0]) );
  NAND2X1 U452 ( .A(\nx_in_num[0] ), .B(n108), .Y(n498) );
  OAI21X2 U453 ( .A0(n512), .A1(n105), .B0(n104), .Y(n560) );
  MXI2X2 U454 ( .A(n497), .B(n498), .S0(n499), .Y(n495) );
  MXI2X4 U455 ( .A(n685), .B(n701), .S0(n435), .Y(n697) );
  NAND2X4 U456 ( .A(n580), .B(n579), .Y(n582) );
  BUFX3 U457 ( .A(nx_index[1]), .Y(n414) );
  BUFX3 U458 ( .A(nx_index[2]), .Y(n415) );
  AND2X4 U459 ( .A(n616), .B(n684), .Y(n748) );
  OAI2BB2X1 U460 ( .B0(n526), .B1(N256), .A0N(N256), .A1N(n546), .Y(
        nx_index[0]) );
  NAND4X4 U461 ( .A(n508), .B(n560), .C(n561), .D(n509), .Y(n499) );
  NAND2X1 U462 ( .A(\nx_in_num[0] ), .B(n499), .Y(n506) );
  INVX12 U463 ( .A(n684), .Y(n610) );
  AOI222X2 U464 ( .A0(N515), .A1(n486), .B0(n743), .B1(n459), .C0(N525), .C1(
        n488), .Y(n603) );
  NAND2X2 U465 ( .A(r1[5]), .B(n458), .Y(n597) );
  NAND2X2 U466 ( .A(r2[5]), .B(n458), .Y(n589) );
  AOI22X1 U467 ( .A0(Bx[2]), .A1(n445), .B0(By[2]), .B1(n444), .Y(n446) );
  AOI22X1 U468 ( .A0(Bx[1]), .A1(n445), .B0(By[1]), .B1(n444), .Y(n441) );
  NOR2X2 U469 ( .A(n97), .B(n454), .Y(n444) );
  NAND3X4 U470 ( .A(n574), .B(n519), .C(n583), .Y(n566) );
  MXI2X2 U471 ( .A(n566), .B(n567), .S0(n568), .Y(n564) );
  AOI22X2 U472 ( .A0(N477), .A1(n706), .B0(N471), .B1(n707), .Y(n711) );
  NOR2X4 U473 ( .A(n382), .B(n706), .Y(n707) );
  MXI2X2 U474 ( .A(n608), .B(n617), .S0(squre_counter[2]), .Y(n698) );
  CLKINVX2 U475 ( .A(n613), .Y(n617) );
  OAI221X4 U476 ( .A0(n594), .A1(n595), .B0(r1[5]), .B1(n458), .C0(n596), .Y(
        n584) );
  NOR2X1 U477 ( .A(n429), .B(counter[2]), .Y(n451) );
  OAI22X2 U478 ( .A0(n568), .A1(n566), .B0(n532), .B1(n569), .Y(n563) );
  OAI2BB2X4 U479 ( .B0(n719), .B1(n416), .A0N(N599), .A1N(n417), .Y(nx_num[4])
         );
  OAI2BB2X4 U480 ( .B0(n720), .B1(n416), .A0N(N598), .A1N(n417), .Y(nx_num[3])
         );
  OAI2BB2X4 U481 ( .B0(n721), .B1(n416), .A0N(N597), .A1N(n417), .Y(nx_num[2])
         );
  OAI2BB2X4 U482 ( .B0(N595), .B1(n416), .A0N(N595), .A1N(n417), .Y(nx_num[0])
         );
  OAI2BB2X4 U483 ( .B0(n718), .B1(n416), .A0N(N600), .A1N(n417), .Y(nx_num[5])
         );
  OAI2BB2X4 U484 ( .B0(n722), .B1(n416), .A0N(N596), .A1N(n417), .Y(nx_num[1])
         );
  AOI2BB2X4 U485 ( .B0(n502), .B1(n503), .A0N(n504), .A1N(n496), .Y(n493) );
  AO22XL U486 ( .A0(Cy[1]), .A1(n394), .B0(Cx[1]), .B1(n448), .Y(n440) );
  BUFX6 U487 ( .A(n451), .Y(n418) );
  AOI222X2 U488 ( .A0(N514), .A1(n486), .B0(N524), .B1(n488), .C0(n744), .C1(
        n459), .Y(n490) );
  NOR2BX2 U489 ( .AN(n697), .B(n610), .Y(n744) );
  INVX8 U490 ( .A(n653), .Y(n700) );
  BUFX6 U491 ( .A(n741), .Y(n419) );
  OAI21X2 U492 ( .A0(n710), .A1(n460), .B0(n711), .Y(n644) );
  NAND2X1 U493 ( .A(n474), .B(n662), .Y(n655) );
  OA21X1 U494 ( .A0(n531), .A1(n532), .B0(n387), .Y(n634) );
  OA21X1 U495 ( .A0(n531), .A1(n559), .B0(n387), .Y(n628) );
  OA21X1 U497 ( .A0(n531), .A1(n509), .B0(n387), .Y(n623) );
  OAI211XL U498 ( .A0(n382), .A1(n717), .B0(n435), .C0(n682), .Y(n716) );
  AOI31XL U499 ( .A0(n617), .A1(n397), .A2(n435), .B0(n618), .Y(n607) );
  OAI211XL U500 ( .A0(n435), .A1(n605), .B0(n606), .C0(n607), .Y(n604) );
  AOI21X1 U501 ( .A0(n455), .A1(n456), .B0(n537), .Y(N90) );
  INVX12 U502 ( .A(N90), .Y(busy) );
  XOR2XL U507 ( .A(\r444/carry [5]), .B(candidate[5]), .Y(N600) );
  INVX4 U509 ( .A(n428), .Y(n450) );
  NOR2X1 U510 ( .A(n427), .B(n610), .Y(n741) );
  AND2XL U511 ( .A(N444), .B(N445), .Y(n430) );
  AND3X4 U512 ( .A(N443), .B(\cent[3] ), .C(n430), .Y(n706) );
  AND2X2 U513 ( .A(N446), .B(n508), .Y(\cent[3] ) );
  AO21X4 U514 ( .A0(n608), .A1(squre_counter[2]), .B0(n692), .Y(n427) );
  NAND2BX2 U515 ( .AN(n454), .B(n94), .Y(n428) );
  NOR3BX4 U516 ( .AN(n682), .B(n618), .C(squre_counter[2]), .Y(n747) );
  INVXL U517 ( .A(n655), .Y(n657) );
  NAND2X2 U518 ( .A(N516), .B(n486), .Y(n431) );
  OAI21X4 U519 ( .A0(counter[1]), .A1(n439), .B0(n383), .Y(N443) );
  CLKAND2X12 U520 ( .A(counter[2]), .B(n454), .Y(n448) );
  AOI22X2 U521 ( .A0(N476), .A1(n706), .B0(N470), .B1(n707), .Y(n715) );
  AOI22X2 U522 ( .A0(N479), .A1(n706), .B0(N473), .B1(n707), .Y(n705) );
  NOR2X4 U523 ( .A(n388), .B(n396), .Y(n574) );
  NAND2X1 U524 ( .A(n524), .B(n525), .Y(n479) );
  CLKBUFX3 U525 ( .A(n487), .Y(n459) );
  NAND2XL U526 ( .A(n746), .B(n459), .Y(n432) );
  NAND2X2 U527 ( .A(N526), .B(n488), .Y(n433) );
  NAND2X2 U528 ( .A(squre_counter[2]), .B(n682), .Y(n525) );
  INVX3 U529 ( .A(n603), .Y(nx_result[6]) );
  NAND3X4 U530 ( .A(n508), .B(n509), .C(n510), .Y(n500) );
  NOR2X1 U531 ( .A(n688), .B(squre_counter[3]), .Y(n682) );
  NAND3X1 U532 ( .A(nx_result[4]), .B(n400), .C(n589), .Y(n588) );
  NOR2X1 U533 ( .A(n532), .B(n525), .Y(n553) );
  CLKINVX1 U534 ( .A(n716), .Y(n487) );
  NOR2BX4 U535 ( .AN(n564), .B(n565), .Y(n511) );
  MX2X1 U536 ( .A(N448), .B(N444), .S0(n456), .Y(N455) );
  CLKMX2X4 U537 ( .A(N447), .B(N443), .S0(n456), .Y(N454) );
  OA21X4 U538 ( .A0(r3[5]), .A1(n458), .B0(n574), .Y(n573) );
  MXI2XL U539 ( .A(n622), .B(n739), .S0(n623), .Y(n621) );
  MXI2XL U540 ( .A(n622), .B(n735), .S0(n628), .Y(n627) );
  MXI2XL U541 ( .A(n622), .B(n731), .S0(n634), .Y(n633) );
  MXI2XL U542 ( .A(n655), .B(n728), .S0(n634), .Y(n661) );
  MXI2XL U543 ( .A(n637), .B(n730), .S0(n634), .Y(n643) );
  MXI2XL U544 ( .A(n655), .B(n736), .S0(n623), .Y(n654) );
  MXI2XL U545 ( .A(n655), .B(n732), .S0(n628), .Y(n658) );
  MXI2XL U546 ( .A(n646), .B(n733), .S0(n628), .Y(n649) );
  MXI2XL U547 ( .A(n646), .B(n729), .S0(n634), .Y(n652) );
  MXI2XL U548 ( .A(n637), .B(n738), .S0(n623), .Y(n636) );
  MXI2XL U549 ( .A(n637), .B(n734), .S0(n628), .Y(n640) );
  MXI2XL U550 ( .A(n646), .B(n737), .S0(n623), .Y(n645) );
  ADDFHX2 U551 ( .A(N455), .B(n393), .CI(\r435/carry [1]), .CO(\r435/carry [2]), .S(N470) );
  MXI2X2 U552 ( .A(n506), .B(n507), .S0(n501), .Y(n504) );
  INVX3 U553 ( .A(n615), .Y(n701) );
  XNOR2XL U554 ( .A(N454), .B(n472), .Y(N469) );
  AND2XL U555 ( .A(N446), .B(n474), .Y(\point[3] ) );
  INVX3 U556 ( .A(n521), .Y(n514) );
  MXI2XL U557 ( .A(n518), .B(n517), .S0(n516), .Y(nx_counter[1]) );
  NAND2XL U558 ( .A(n521), .B(n519), .Y(n518) );
  INVX3 U559 ( .A(n505), .Y(n503) );
  INVX4 U560 ( .A(n525), .Y(n486) );
  MXI2XL U561 ( .A(n480), .B(n481), .S0(n435), .Y(nx_squre_counter[2]) );
  NAND2XL U562 ( .A(n478), .B(n477), .Y(n481) );
  MXI2XL U563 ( .A(n514), .B(n520), .S0(n519), .Y(nx_counter[0]) );
  NAND2XL U564 ( .A(n505), .B(n502), .Y(n496) );
  AOI32XL U565 ( .A0(n89), .A1(n455), .A2(n534), .B0(n535), .B1(n532), .Y(n533) );
  INVXL U566 ( .A(n492), .Y(nx_result[0]) );
  NAND2XL U567 ( .A(n382), .B(n525), .Y(n676) );
  CLKINVX2 U568 ( .A(\r435/carry [4]), .Y(N473) );
  OAI21X4 U569 ( .A0(n704), .A1(n460), .B0(n705), .Y(n613) );
  OAI211X2 U570 ( .A0(n570), .A1(n571), .B0(n572), .C0(n573), .Y(n569) );
  MXI2X2 U571 ( .A(n511), .B(n512), .S0(n105), .Y(n510) );
  NOR2X8 U572 ( .A(squre_counter[3]), .B(n618), .Y(n684) );
  NOR2X6 U573 ( .A(n530), .B(n90), .Y(n508) );
  NAND3X2 U574 ( .A(n644), .B(n395), .C(squre_counter[1]), .Y(n693) );
  NOR2X4 U575 ( .A(n685), .B(squre_counter[2]), .Y(n616) );
  NOR2XL U576 ( .A(r3[1]), .B(n457), .Y(n578) );
  NOR2XL U577 ( .A(n529), .B(n530), .Y(n527) );
  XNOR2XL U578 ( .A(n90), .B(ns[0]), .Y(n528) );
  XOR2XL U579 ( .A(\r432/carry [5]), .B(index_Y[2]), .Y(N261) );
  NOR2XL U580 ( .A(n479), .B(squre_counter[0]), .Y(nx_squre_counter[0]) );
  OAI32XL U581 ( .A0(n513), .A1(n97), .A2(n514), .B0(n94), .B1(n515), .Y(
        nx_counter[2]) );
  INVX1 U582 ( .A(n553), .Y(n548) );
  NAND3XL U583 ( .A(n477), .B(squre_counter[2]), .C(n478), .Y(n476) );
  MXI2XL U584 ( .A(n625), .B(Ay[3]), .S0(n626), .Y(n624) );
  MXI2XL U585 ( .A(n625), .B(By[3]), .S0(n630), .Y(n629) );
  MXI2XL U586 ( .A(n625), .B(Cx[3]), .S0(n632), .Y(n631) );
  NAND3XL U587 ( .A(n94), .B(n516), .C(n454), .Y(n559) );
  MXI2XL U588 ( .A(n657), .B(Ay[0]), .S0(n626), .Y(n656) );
  MXI2XL U589 ( .A(n648), .B(Ay[1]), .S0(n626), .Y(n647) );
  MXI2XL U590 ( .A(n657), .B(By[0]), .S0(n630), .Y(n659) );
  MXI2XL U591 ( .A(n657), .B(Cx[0]), .S0(n632), .Y(n660) );
  MXI2XL U592 ( .A(n639), .B(Ay[2]), .S0(n626), .Y(n638) );
  MXI2XL U593 ( .A(n639), .B(By[2]), .S0(n630), .Y(n641) );
  MXI2XL U594 ( .A(n639), .B(Cx[2]), .S0(n632), .Y(n642) );
  MXI2XL U595 ( .A(n648), .B(By[1]), .S0(n630), .Y(n650) );
  MXI2XL U596 ( .A(n648), .B(Cx[1]), .S0(n632), .Y(n651) );
  NOR3XL U597 ( .A(n455), .B(n89), .C(n88), .Y(n381) );
  NOR2BX4 U598 ( .AN(n495), .B(n496), .Y(n494) );
  INVX3 U599 ( .A(n463), .Y(n461) );
  INVX3 U600 ( .A(n463), .Y(n462) );
  CLKBUFX3 U601 ( .A(n471), .Y(n466) );
  CLKBUFX3 U602 ( .A(n471), .Y(n467) );
  CLKBUFX3 U603 ( .A(n471), .Y(n468) );
  CLKBUFX3 U604 ( .A(n471), .Y(n469) );
  CLKBUFX3 U605 ( .A(n775), .Y(n465) );
  CLKBUFX3 U606 ( .A(n775), .Y(n470) );
  INVX3 U607 ( .A(n531), .Y(n474) );
  CLKINVX1 U608 ( .A(\cent[3] ), .Y(n473) );
  CLKBUFX3 U609 ( .A(n677), .Y(n460) );
  INVXL U610 ( .A(n382), .Y(n677) );
  ADDHXL U611 ( .A(\point[3] ), .B(\add_269/carry [3]), .CO(N479), .S(N478) );
  NOR2X2 U612 ( .A(n459), .B(n486), .Y(n488) );
  CLKBUFX3 U613 ( .A(n387), .Y(n463) );
  CLKBUFX3 U614 ( .A(n775), .Y(n464) );
  NAND2X1 U615 ( .A(n89), .B(n537), .Y(n530) );
  ADDHXL U616 ( .A(N455), .B(N454), .CO(\add_269/carry [2]), .S(N476) );
  AOI222XL U617 ( .A0(N510), .A1(n486), .B0(N520), .B1(n488), .C0(n748), .C1(
        n459), .Y(n491) );
  CLKINVX1 U618 ( .A(N450), .Y(n472) );
  NAND2BX1 U619 ( .AN(N443), .B(n89), .Y(N450) );
  OA21XL U620 ( .A0(n514), .A1(n519), .B0(n520), .Y(n517) );
  CLKBUFX3 U621 ( .A(n775), .Y(n471) );
  AOI211X1 U622 ( .A0(r1[1]), .A1(n457), .B0(r1[0]), .C0(n492), .Y(n599) );
  AOI211X1 U623 ( .A0(r2[1]), .A1(n457), .B0(r2[0]), .C0(n492), .Y(n591) );
  AOI22X1 U624 ( .A0(N475), .A1(n706), .B0(N469), .B1(n707), .Y(n713) );
  CLKINVX1 U625 ( .A(N454), .Y(N475) );
  AOI22X1 U626 ( .A0(N478), .A1(n706), .B0(N472), .B1(n707), .Y(n709) );
  INVX3 U627 ( .A(n454), .Y(n519) );
  NOR4X1 U628 ( .A(n436), .B(n503), .C(n727), .D(n726), .Y(n534) );
  OR4X1 U629 ( .A(N256), .B(n723), .C(n724), .D(n725), .Y(n436) );
  OA21XL U630 ( .A0(n549), .A1(n516), .B0(n551), .Y(n556) );
  OAI2BB2XL U631 ( .B0(n526), .B1(n723), .A0N(N258), .A1N(n546), .Y(
        nx_index[2]) );
  ADDHXL U632 ( .A(index_X[1]), .B(index_X[0]), .CO(\r432/carry [2]), .S(N257)
         );
  ADDHXL U633 ( .A(index_Y[0]), .B(\r432/carry [3]), .CO(\r432/carry [4]), .S(
        N259) );
  ADDHXL U634 ( .A(index_X[2]), .B(\r432/carry [2]), .CO(\r432/carry [3]), .S(
        N258) );
  ADDHXL U635 ( .A(index_Y[1]), .B(\r432/carry [4]), .CO(\r432/carry [5]), .S(
        N260) );
  ADDHXL U636 ( .A(candidate[1]), .B(candidate[0]), .CO(\r444/carry [2]), .S(
        N596) );
  ADDHXL U637 ( .A(candidate[2]), .B(\r444/carry [2]), .CO(\r444/carry [3]), 
        .S(N597) );
  ADDHXL U638 ( .A(candidate[3]), .B(\r444/carry [3]), .CO(\r444/carry [4]), 
        .S(N598) );
  ADDHXL U639 ( .A(candidate[4]), .B(\r444/carry [4]), .CO(\r444/carry [5]), 
        .S(N599) );
  NOR2X1 U640 ( .A(n97), .B(n429), .Y(n445) );
  AO22X1 U641 ( .A0(Cy[3]), .A1(n394), .B0(Cx[3]), .B1(n448), .Y(n449) );
  AO22X1 U642 ( .A0(index_Y[0]), .A1(n429), .B0(index_X[0]), .B1(n454), .Y(
        N447) );
  AO22X1 U643 ( .A0(index_Y[1]), .A1(n429), .B0(index_X[1]), .B1(n454), .Y(
        N448) );
  AO22X1 U644 ( .A0(index_Y[2]), .A1(n429), .B0(index_X[2]), .B1(n454), .Y(
        N449) );
  AOI22XL U645 ( .A0(Bx[3]), .A1(n454), .B0(By[3]), .B1(n429), .Y(n453) );
  MXI2X4 U646 ( .A(n584), .B(n585), .S0(n516), .Y(n583) );
  OAI221X4 U647 ( .A0(n586), .A1(n587), .B0(r2[5]), .B1(n458), .C0(n588), .Y(
        n585) );
  AOI2BB2XL U648 ( .B0(n477), .B1(n382), .A0N(n486), .A1N(n523), .Y(n520) );
  XNOR2X1 U649 ( .A(ns[0]), .B(n455), .Y(n524) );
  AOI211X1 U650 ( .A0(r3[1]), .A1(n457), .B0(r3[0]), .C0(n492), .Y(n577) );
  AOI222X4 U651 ( .A0(N509), .A1(n486), .B0(N519), .B1(n488), .C0(n747), .C1(
        n459), .Y(n492) );
  OAI31X4 U652 ( .A0(n554), .A1(n555), .A2(n556), .B0(n508), .Y(n526) );
  NOR2XL U653 ( .A(n478), .B(n613), .Y(n612) );
  NAND2XL U654 ( .A(n500), .B(n501), .Y(n497) );
  AOI222X4 U655 ( .A0(N511), .A1(n486), .B0(N521), .B1(n488), .C0(n749), .C1(
        n459), .Y(n580) );
  AOI222X4 U656 ( .A0(N512), .A1(n486), .B0(N522), .B1(n488), .C0(n750), .C1(
        n459), .Y(n579) );
  AOI211X4 U657 ( .A0(n690), .A1(n478), .B0(n698), .C0(n699), .Y(n618) );
  OR2X1 U658 ( .A(n472), .B(N454), .Y(\r435/carry [1]) );
  MXI2X1 U659 ( .A(n475), .B(n476), .S0(n397), .Y(nx_squre_counter[3]) );
  OA21XL U660 ( .A0(squre_counter[2]), .A1(n479), .B0(n480), .Y(n475) );
  OA21XL U661 ( .A0(squre_counter[1]), .A1(n479), .B0(n482), .Y(n480) );
  OAI22XL U662 ( .A0(n483), .A1(n482), .B0(n479), .B1(n484), .Y(
        nx_squre_counter[1]) );
  CLKINVX1 U663 ( .A(nx_squre_counter[0]), .Y(n482) );
  CLKINVX1 U664 ( .A(n485), .Y(nx_result[9]) );
  AOI222XL U665 ( .A0(N518), .A1(n486), .B0(n459), .B1(n745), .C0(N528), .C1(
        n488), .Y(n485) );
  CLKINVX1 U666 ( .A(n489), .Y(nx_result[8]) );
  AOI222XL U667 ( .A0(N517), .A1(n486), .B0(n742), .B1(n459), .C0(N527), .C1(
        n488), .Y(n489) );
  CLKINVX1 U668 ( .A(n458), .Y(nx_result[5]) );
  CLKINVX1 U669 ( .A(n457), .Y(nx_result[1]) );
  OA21XL U670 ( .A0(n516), .A1(n514), .B0(n517), .Y(n515) );
  OAI22XL U671 ( .A0(n525), .A1(n526), .B0(n527), .B1(n528), .Y(n521) );
  OAI21XL U672 ( .A0(n531), .A1(n532), .B0(n530), .Y(ns[2]) );
  NAND3X1 U673 ( .A(n463), .B(n502), .C(n533), .Y(ns[1]) );
  CLKINVX1 U674 ( .A(n508), .Y(n523) );
  NAND4X1 U675 ( .A(n539), .B(n540), .C(n541), .D(n542), .Y(n505) );
  NOR3X1 U676 ( .A(n543), .B(n544), .C(n545), .Y(n542) );
  XNOR2X1 U677 ( .A(N256), .B(nx_index[0]), .Y(n545) );
  XNOR2X1 U678 ( .A(n723), .B(n415), .Y(n544) );
  XNOR2X1 U679 ( .A(n724), .B(n414), .Y(n543) );
  OAI2BB2XL U680 ( .B0(n526), .B1(n724), .A0N(N257), .A1N(n546), .Y(
        nx_index[1]) );
  XOR2X1 U681 ( .A(n386), .B(n725), .Y(n541) );
  OAI2BB2XL U682 ( .B0(n526), .B1(n725), .A0N(N260), .A1N(n546), .Y(
        nx_index[4]) );
  XOR2X1 U683 ( .A(n385), .B(n726), .Y(n540) );
  OAI2BB2XL U684 ( .B0(n526), .B1(n726), .A0N(N261), .A1N(n546), .Y(
        nx_index[5]) );
  XOR2X1 U685 ( .A(nx_index[3]), .B(n727), .Y(n539) );
  OAI32X1 U686 ( .A0(n548), .A1(n108), .A2(n107), .B0(n549), .B1(n550), .Y(
        n547) );
  MXI2X1 U687 ( .A(n551), .B(n552), .S0(n516), .Y(n550) );
  NOR2X1 U688 ( .A(n501), .B(n557), .Y(n551) );
  NOR3X1 U689 ( .A(n553), .B(n108), .C(n107), .Y(n555) );
  OA21XL U690 ( .A0(n549), .A1(n97), .B0(n552), .Y(n554) );
  XNOR2X1 U691 ( .A(n107), .B(n501), .Y(n552) );
  NAND2X1 U692 ( .A(n558), .B(n486), .Y(n549) );
  NAND2X1 U693 ( .A(n532), .B(n456), .Y(n538) );
  AOI2BB1X1 U694 ( .A0N(n525), .A1N(n559), .B0(n530), .Y(n536) );
  NAND3X1 U695 ( .A(nx_result[4]), .B(n398), .C(n575), .Y(n572) );
  OAI32X1 U696 ( .A0(n576), .A1(n577), .A2(n578), .B0(nx_result[4]), .B1(n398), 
        .Y(n571) );
  OAI22XL U697 ( .A0(r3[3]), .A1(n579), .B0(r3[2]), .B1(n580), .Y(n576) );
  NAND2X1 U698 ( .A(r3[5]), .B(n458), .Y(n575) );
  OA21XL U699 ( .A0(n389), .A1(nx_result[2]), .B0(nx_result[3]), .Y(n581) );
  OAI32X1 U700 ( .A0(n590), .A1(n591), .A2(n592), .B0(nx_result[4]), .B1(n400), 
        .Y(n587) );
  NOR2X1 U701 ( .A(r2[1]), .B(n457), .Y(n592) );
  OAI22XL U702 ( .A0(r2[3]), .A1(n579), .B0(r2[2]), .B1(n580), .Y(n590) );
  NAND3X1 U703 ( .A(nx_result[4]), .B(n399), .C(n597), .Y(n596) );
  OAI32X1 U704 ( .A0(n598), .A1(n599), .A2(n600), .B0(nx_result[4]), .B1(n399), 
        .Y(n595) );
  NOR2X1 U705 ( .A(r1[1]), .B(n457), .Y(n600) );
  OAI22XL U706 ( .A0(r1[3]), .A1(n579), .B0(r1[2]), .B1(n580), .Y(n598) );
  OA21XL U707 ( .A0(n390), .A1(nx_result[2]), .B0(nx_result[3]), .Y(n602) );
  CLKINVX1 U708 ( .A(n604), .Y(n742) );
  OAI21XL U709 ( .A0(squre_counter[2]), .A1(n608), .B0(squre_counter[3]), .Y(
        n606) );
  NOR2BX1 U710 ( .AN(n609), .B(n610), .Y(n743) );
  MXI2X1 U711 ( .A(n611), .B(n612), .S0(n435), .Y(n609) );
  CLKINVX1 U712 ( .A(n614), .Y(n745) );
  OAI221XL U713 ( .A0(n435), .A1(n615), .B0(n616), .B1(n397), .C0(n607), .Y(
        n614) );
  NOR2BX1 U714 ( .AN(n619), .B(n610), .Y(n746) );
  AO21X1 U715 ( .A0(central[23]), .A1(n462), .B0(n621), .Y(n751) );
  OAI2BB1X1 U716 ( .A0N(central[19]), .A1N(n462), .B0(n624), .Y(n752) );
  AO21X1 U717 ( .A0(central[15]), .A1(n461), .B0(n627), .Y(n753) );
  OAI2BB1X1 U718 ( .A0N(central[11]), .A1N(n462), .B0(n629), .Y(n754) );
  OAI2BB1X1 U719 ( .A0N(central[7]), .A1N(n462), .B0(n631), .Y(n755) );
  AO21X1 U720 ( .A0(central[3]), .A1(n461), .B0(n633), .Y(n756) );
  CLKINVX1 U721 ( .A(n625), .Y(n622) );
  AO21X1 U722 ( .A0(central[22]), .A1(n461), .B0(n636), .Y(n757) );
  OAI2BB1X1 U723 ( .A0N(central[18]), .A1N(n462), .B0(n638), .Y(n758) );
  AO21X1 U724 ( .A0(central[14]), .A1(n461), .B0(n640), .Y(n759) );
  OAI2BB1X1 U725 ( .A0N(central[10]), .A1N(n462), .B0(n641), .Y(n760) );
  OAI2BB1X1 U726 ( .A0N(central[6]), .A1N(n462), .B0(n642), .Y(n761) );
  CLKINVX1 U727 ( .A(n637), .Y(n639) );
  AO21X1 U728 ( .A0(central[2]), .A1(n461), .B0(n643), .Y(n762) );
  NAND2X1 U729 ( .A(n474), .B(n644), .Y(n637) );
  AO21X1 U730 ( .A0(central[21]), .A1(n461), .B0(n645), .Y(n763) );
  OAI2BB1X1 U731 ( .A0N(central[17]), .A1N(n462), .B0(n647), .Y(n764) );
  AO21X1 U732 ( .A0(central[13]), .A1(n462), .B0(n649), .Y(n765) );
  OAI2BB1X1 U733 ( .A0N(central[9]), .A1N(n462), .B0(n650), .Y(n766) );
  OAI2BB1X1 U734 ( .A0N(central[5]), .A1N(n462), .B0(n651), .Y(n767) );
  CLKINVX1 U735 ( .A(n646), .Y(n648) );
  AO21X1 U736 ( .A0(central[1]), .A1(n462), .B0(n652), .Y(n768) );
  AO21X1 U737 ( .A0(central[20]), .A1(n462), .B0(n654), .Y(n769) );
  OAI2BB1X1 U738 ( .A0N(central[16]), .A1N(n462), .B0(n656), .Y(n770) );
  AOI31X1 U739 ( .A0(n558), .A1(n474), .A2(n97), .B0(n461), .Y(n626) );
  AO21X1 U740 ( .A0(central[12]), .A1(n462), .B0(n658), .Y(n771) );
  OAI2BB1X1 U741 ( .A0N(central[8]), .A1N(n462), .B0(n659), .Y(n772) );
  AOI31X1 U742 ( .A0(n558), .A1(n516), .A2(n474), .B0(n461), .Y(n630) );
  OAI2BB1X1 U743 ( .A0N(central[4]), .A1N(n462), .B0(n660), .Y(n773) );
  AOI31X1 U744 ( .A0(n565), .A1(n568), .A2(n474), .B0(n461), .Y(n632) );
  AO21X1 U745 ( .A0(central[0]), .A1(n461), .B0(n661), .Y(n774) );
  NAND3X1 U746 ( .A(n568), .B(n519), .C(n97), .Y(n532) );
  NOR2X1 U747 ( .A(n537), .B(n90), .Y(n535) );
  CLKINVX1 U748 ( .A(rst), .Y(n775) );
  CLKMX2X2 U749 ( .A(mode[0]), .B(n501), .S0(n463), .Y(n326) );
  CLKMX2X2 U750 ( .A(mode[1]), .B(n557), .S0(n463), .Y(n325) );
  OAI221XL U751 ( .A0(n492), .A1(n663), .B0(n664), .B1(n406), .C0(n665), .Y(
        n324) );
  NAND2X1 U752 ( .A(radius[0]), .B(n461), .Y(n665) );
  OAI222XL U753 ( .A0(n664), .A1(n409), .B0(n457), .B1(n663), .C0(n463), .C1(
        n666), .Y(n323) );
  CLKINVX1 U754 ( .A(radius[1]), .Y(n666) );
  OAI222XL U755 ( .A0(n664), .A1(n389), .B0(n580), .B1(n663), .C0(n387), .C1(
        n667), .Y(n322) );
  CLKINVX1 U756 ( .A(radius[2]), .Y(n667) );
  OAI222XL U757 ( .A0(n664), .A1(n401), .B0(n579), .B1(n663), .C0(n387), .C1(
        n668), .Y(n321) );
  CLKINVX1 U758 ( .A(radius[3]), .Y(n668) );
  OAI22XL U759 ( .A0(n664), .A1(n398), .B0(n384), .B1(n663), .Y(n320) );
  OAI221XL U760 ( .A0(n492), .A1(n669), .B0(n670), .B1(n405), .C0(n671), .Y(
        n319) );
  NAND2X1 U761 ( .A(radius[8]), .B(n461), .Y(n671) );
  OAI222XL U762 ( .A0(n670), .A1(n407), .B0(n457), .B1(n669), .C0(n387), .C1(
        n672), .Y(n318) );
  CLKINVX1 U763 ( .A(radius[9]), .Y(n672) );
  OAI222XL U764 ( .A0(n670), .A1(n390), .B0(n580), .B1(n669), .C0(n463), .C1(
        n673), .Y(n317) );
  CLKINVX1 U765 ( .A(radius[10]), .Y(n673) );
  OAI222XL U766 ( .A0(n670), .A1(n402), .B0(n579), .B1(n669), .C0(n463), .C1(
        n674), .Y(n316) );
  CLKINVX1 U767 ( .A(radius[11]), .Y(n674) );
  OAI22XL U768 ( .A0(n670), .A1(n399), .B0(n384), .B1(n669), .Y(n315) );
  OAI22XL U769 ( .A0(n670), .A1(n411), .B0(n458), .B1(n669), .Y(n314) );
  NAND2X1 U770 ( .A(n529), .B(n675), .Y(n669) );
  AND2X1 U771 ( .A(n675), .B(n676), .Y(n670) );
  OAI21XL U772 ( .A0(n460), .A1(n509), .B0(n387), .Y(n675) );
  NAND2X1 U773 ( .A(n565), .B(n94), .Y(n509) );
  OAI221XL U774 ( .A0(n492), .A1(n678), .B0(n679), .B1(n680), .C0(n681), .Y(
        n313) );
  NAND2X1 U775 ( .A(radius[4]), .B(n461), .Y(n681) );
  OAI222XL U776 ( .A0(n679), .A1(n408), .B0(n457), .B1(n678), .C0(n463), .C1(
        n683), .Y(n312) );
  CLKINVX1 U777 ( .A(radius[5]), .Y(n683) );
  OAI222XL U778 ( .A0(n679), .A1(n391), .B0(n580), .B1(n678), .C0(n463), .C1(
        n686), .Y(n311) );
  CLKINVX1 U779 ( .A(radius[6]), .Y(n686) );
  OAI222XL U780 ( .A0(n679), .A1(n403), .B0(n579), .B1(n678), .C0(n387), .C1(
        n689), .Y(n310) );
  CLKINVX1 U781 ( .A(radius[7]), .Y(n689) );
  OAI22XL U782 ( .A0(n679), .A1(n400), .B0(n384), .B1(n678), .Y(n309) );
  OAI22XL U783 ( .A0(n679), .A1(n412), .B0(n458), .B1(n678), .Y(n308) );
  NAND2X1 U784 ( .A(n529), .B(n695), .Y(n678) );
  AND2X1 U785 ( .A(n695), .B(n676), .Y(n679) );
  OAI31XL U786 ( .A0(n460), .A1(n516), .A2(n513), .B0(n387), .Y(n695) );
  CLKINVX1 U787 ( .A(n558), .Y(n513) );
  NOR2X1 U788 ( .A(n568), .B(n454), .Y(n558) );
  CLKINVX1 U789 ( .A(n94), .Y(n568) );
  OAI22XL U790 ( .A0(n664), .A1(n410), .B0(n458), .B1(n663), .Y(n307) );
  NAND2X1 U791 ( .A(n529), .B(n696), .Y(n663) );
  NOR2X1 U792 ( .A(n460), .B(n525), .Y(n529) );
  OAI21XL U793 ( .A0(n700), .A1(n484), .B0(n693), .Y(n699) );
  OAI2BB1X1 U794 ( .A0N(n644), .A1N(n478), .B0(n702), .Y(n615) );
  AOI222XL U795 ( .A0(r2[4]), .A1(n519), .B0(r1[4]), .B1(n565), .C0(r3[4]), 
        .C1(n516), .Y(n704) );
  AOI222XL U796 ( .A0(r2[3]), .A1(n519), .B0(r1[3]), .B1(n565), .C0(r3[3]), 
        .C1(n516), .Y(n708) );
  NOR2X1 U797 ( .A(n483), .B(n395), .Y(n478) );
  AOI222XL U798 ( .A0(r2[2]), .A1(n519), .B0(r1[2]), .B1(n565), .C0(r3[2]), 
        .C1(n516), .Y(n710) );
  NAND2X1 U799 ( .A(n691), .B(n483), .Y(n685) );
  AOI222XL U800 ( .A0(r2[0]), .A1(n519), .B0(r1[0]), .B1(n565), .C0(r3[0]), 
        .C1(n516), .Y(n712) );
  AOI222XL U801 ( .A0(r2[1]), .A1(n519), .B0(r1[1]), .B1(n565), .C0(r3[1]), 
        .C1(n516), .Y(n714) );
  NOR2X1 U802 ( .A(n519), .B(n530), .Y(n717) );
  AND2X1 U803 ( .A(n696), .B(n676), .Y(n664) );
  NAND2X1 U804 ( .A(n395), .B(n483), .Y(n688) );
  OAI21XL U805 ( .A0(n559), .A1(n460), .B0(n387), .Y(n696) );
  NOR2X1 U806 ( .A(n455), .B(n530), .Y(n522) );
  CLKMX2X2 U807 ( .A(N449), .B(N445), .S0(n456), .Y(N456) );
  SET_DW01_add_0 add_286 ( .A(result), .B({n745, n742, n746, n743, n744, n419, 
        n750, n749, n748, n747}), .CI(1'b0), .SUM({N528, N527, N526, N525, 
        N524, N523, N522, N521, N520, N519}) );
  SET_DW01_sub_0 sub_286 ( .A(result), .B({n745, n742, n746, n743, n744, n419, 
        n750, n749, n748, n747}), .CI(1'b0), .DIFF({N518, N517, N516, N515, 
        N514, N513, N512, N511, N510, N509}) );
  DFFRX1 valid_reg ( .D(n381), .CK(clk), .RN(n469), .Q(n796) );
  INVXL U448 ( .A(n796), .Y(n782) );
  INVX12 U496 ( .A(n782), .Y(valid) );
  INVXL U503 ( .A(n797), .Y(n784) );
  INVX12 U504 ( .A(n784), .Y(candidate[5]) );
  INVXL U505 ( .A(n801), .Y(n786) );
  INVX12 U506 ( .A(n786), .Y(candidate[1]) );
  INVXL U508 ( .A(n800), .Y(n788) );
  INVX12 U808 ( .A(n788), .Y(candidate[2]) );
  INVXL U809 ( .A(n799), .Y(n790) );
  INVX12 U810 ( .A(n790), .Y(candidate[3]) );
  INVXL U811 ( .A(n798), .Y(n792) );
  INVX12 U812 ( .A(n792), .Y(candidate[4]) );
  INVXL U813 ( .A(n802), .Y(n794) );
  INVX12 U814 ( .A(n794), .Y(candidate[0]) );
endmodule

