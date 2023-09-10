/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sat Apr  8 11:31:24 2023
/////////////////////////////////////////////////////////////


module SME_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module SME_DW01_dec_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[9]), .Y(n2) );
  OAI21XL U3 ( .A0(n3), .A1(n2), .B0(n4), .Y(SUM[9]) );
  AO21X1 U4 ( .A0(n5), .A1(A[8]), .B0(n3), .Y(SUM[8]) );
  OAI2BB1X1 U5 ( .A0N(n6), .A1N(A[7]), .B0(n5), .Y(SUM[7]) );
  OAI2BB1X1 U6 ( .A0N(n7), .A1N(A[6]), .B0(n6), .Y(SUM[6]) );
  OAI2BB1X1 U7 ( .A0N(n8), .A1N(A[5]), .B0(n7), .Y(SUM[5]) );
  OAI2BB1X1 U8 ( .A0N(n9), .A1N(A[4]), .B0(n8), .Y(SUM[4]) );
  OAI2BB1X1 U9 ( .A0N(n10), .A1N(A[3]), .B0(n9), .Y(SUM[3]) );
  OAI2BB1X1 U10 ( .A0N(n11), .A1N(A[2]), .B0(n10), .Y(SUM[2]) );
  OAI2BB1X1 U11 ( .A0N(A[0]), .A1N(A[1]), .B0(n11), .Y(SUM[1]) );
  XOR2X1 U12 ( .A(A[11]), .B(n12), .Y(SUM[11]) );
  NOR2X1 U13 ( .A(A[10]), .B(n4), .Y(n12) );
  XNOR2X1 U14 ( .A(A[10]), .B(n4), .Y(SUM[10]) );
  NAND2X1 U15 ( .A(n3), .B(n2), .Y(n4) );
  NOR2X1 U16 ( .A(n5), .B(A[8]), .Y(n3) );
  OR2X1 U17 ( .A(n6), .B(A[7]), .Y(n5) );
  OR2X1 U18 ( .A(n7), .B(A[6]), .Y(n6) );
  OR2X1 U19 ( .A(n8), .B(A[5]), .Y(n7) );
  OR2X1 U20 ( .A(n9), .B(A[4]), .Y(n8) );
  OR2X1 U21 ( .A(n10), .B(A[3]), .Y(n9) );
  OR2X1 U22 ( .A(n11), .B(A[2]), .Y(n10) );
  NAND2BX1 U23 ( .AN(A[1]), .B(SUM[0]), .Y(n11) );
endmodule


module SME_DW01_dec_1 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[9]), .Y(n2) );
  OAI21XL U3 ( .A0(n3), .A1(n2), .B0(n4), .Y(SUM[9]) );
  AO21X1 U4 ( .A0(n5), .A1(A[8]), .B0(n3), .Y(SUM[8]) );
  OAI2BB1X1 U5 ( .A0N(n6), .A1N(A[7]), .B0(n5), .Y(SUM[7]) );
  OAI2BB1X1 U6 ( .A0N(n7), .A1N(A[6]), .B0(n6), .Y(SUM[6]) );
  OAI2BB1X1 U7 ( .A0N(n8), .A1N(A[5]), .B0(n7), .Y(SUM[5]) );
  OAI2BB1X1 U8 ( .A0N(n9), .A1N(A[4]), .B0(n8), .Y(SUM[4]) );
  OAI2BB1X1 U9 ( .A0N(n10), .A1N(A[3]), .B0(n9), .Y(SUM[3]) );
  OAI2BB1X1 U10 ( .A0N(n11), .A1N(A[2]), .B0(n10), .Y(SUM[2]) );
  OAI2BB1X1 U11 ( .A0N(A[0]), .A1N(A[1]), .B0(n11), .Y(SUM[1]) );
  XOR2X1 U12 ( .A(A[11]), .B(n12), .Y(SUM[11]) );
  NOR2X1 U13 ( .A(A[10]), .B(n4), .Y(n12) );
  XNOR2X1 U14 ( .A(A[10]), .B(n4), .Y(SUM[10]) );
  NAND2X1 U15 ( .A(n3), .B(n2), .Y(n4) );
  NOR2X1 U16 ( .A(n5), .B(A[8]), .Y(n3) );
  OR2X1 U17 ( .A(n6), .B(A[7]), .Y(n5) );
  OR2X1 U18 ( .A(n7), .B(A[6]), .Y(n6) );
  OR2X1 U19 ( .A(n8), .B(A[5]), .Y(n7) );
  OR2X1 U20 ( .A(n9), .B(A[4]), .Y(n8) );
  OR2X1 U21 ( .A(n10), .B(A[3]), .Y(n9) );
  OR2X1 U22 ( .A(n11), .B(A[2]), .Y(n10) );
  NAND2BX1 U23 ( .AN(A[1]), .B(SUM[0]), .Y(n11) );
endmodule


module SME_DW01_dec_2 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[9]), .Y(n2) );
  OAI21XL U3 ( .A0(n3), .A1(n2), .B0(n4), .Y(SUM[9]) );
  AO21X1 U4 ( .A0(n5), .A1(A[8]), .B0(n3), .Y(SUM[8]) );
  OAI2BB1X1 U5 ( .A0N(n6), .A1N(A[7]), .B0(n5), .Y(SUM[7]) );
  OAI2BB1X1 U6 ( .A0N(n7), .A1N(A[6]), .B0(n6), .Y(SUM[6]) );
  OAI2BB1X1 U7 ( .A0N(n8), .A1N(A[5]), .B0(n7), .Y(SUM[5]) );
  OAI2BB1X1 U8 ( .A0N(n9), .A1N(A[4]), .B0(n8), .Y(SUM[4]) );
  OAI2BB1X1 U9 ( .A0N(n10), .A1N(A[3]), .B0(n9), .Y(SUM[3]) );
  OAI2BB1X1 U10 ( .A0N(n11), .A1N(A[2]), .B0(n10), .Y(SUM[2]) );
  OAI2BB1X1 U11 ( .A0N(A[0]), .A1N(A[1]), .B0(n11), .Y(SUM[1]) );
  XOR2X1 U12 ( .A(A[11]), .B(n12), .Y(SUM[11]) );
  NOR2X1 U13 ( .A(A[10]), .B(n4), .Y(n12) );
  XNOR2X1 U14 ( .A(A[10]), .B(n4), .Y(SUM[10]) );
  NAND2X1 U15 ( .A(n3), .B(n2), .Y(n4) );
  NOR2X1 U16 ( .A(n5), .B(A[8]), .Y(n3) );
  OR2X1 U17 ( .A(n6), .B(A[7]), .Y(n5) );
  OR2X1 U18 ( .A(n7), .B(A[6]), .Y(n6) );
  OR2X1 U19 ( .A(n8), .B(A[5]), .Y(n7) );
  OR2X1 U20 ( .A(n9), .B(A[4]), .Y(n8) );
  OR2X1 U21 ( .A(n10), .B(A[3]), .Y(n9) );
  OR2X1 U22 ( .A(n11), .B(A[2]), .Y(n10) );
  NAND2BX1 U23 ( .AN(A[1]), .B(SUM[0]), .Y(n11) );
endmodule


module SME_DW01_dec_3 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[9]), .Y(n2) );
  OAI21XL U3 ( .A0(n3), .A1(n2), .B0(n4), .Y(SUM[9]) );
  AO21X1 U4 ( .A0(n5), .A1(A[8]), .B0(n3), .Y(SUM[8]) );
  OAI2BB1X1 U5 ( .A0N(n6), .A1N(A[7]), .B0(n5), .Y(SUM[7]) );
  OAI2BB1X1 U6 ( .A0N(n7), .A1N(A[6]), .B0(n6), .Y(SUM[6]) );
  OAI2BB1X1 U7 ( .A0N(n8), .A1N(A[5]), .B0(n7), .Y(SUM[5]) );
  OAI2BB1X1 U8 ( .A0N(n9), .A1N(A[4]), .B0(n8), .Y(SUM[4]) );
  OAI2BB1X1 U9 ( .A0N(n10), .A1N(A[3]), .B0(n9), .Y(SUM[3]) );
  OAI2BB1X1 U10 ( .A0N(n11), .A1N(A[2]), .B0(n10), .Y(SUM[2]) );
  OAI2BB1X1 U11 ( .A0N(A[0]), .A1N(A[1]), .B0(n11), .Y(SUM[1]) );
  XOR2X1 U12 ( .A(A[11]), .B(n12), .Y(SUM[11]) );
  NOR2X1 U13 ( .A(A[10]), .B(n4), .Y(n12) );
  XNOR2X1 U14 ( .A(A[10]), .B(n4), .Y(SUM[10]) );
  NAND2X1 U15 ( .A(n3), .B(n2), .Y(n4) );
  NOR2X1 U16 ( .A(n5), .B(A[8]), .Y(n3) );
  OR2X1 U17 ( .A(n6), .B(A[7]), .Y(n5) );
  OR2X1 U18 ( .A(n7), .B(A[6]), .Y(n6) );
  OR2X1 U19 ( .A(n8), .B(A[5]), .Y(n7) );
  OR2X1 U20 ( .A(n9), .B(A[4]), .Y(n8) );
  OR2X1 U21 ( .A(n10), .B(A[3]), .Y(n9) );
  OR2X1 U22 ( .A(n11), .B(A[2]), .Y(n10) );
  NAND2BX1 U23 ( .AN(A[1]), .B(SUM[0]), .Y(n11) );
endmodule


module SME_DW01_add_1 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [6:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module SME_DW01_inc_1 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module SME_DW01_inc_2 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[11]), .B(A[11]), .Y(SUM[11]) );
endmodule


module SME_DW01_inc_3 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  ADDHX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[11]), .B(A[11]), .Y(SUM[11]) );
endmodule


module SME ( clk, reset, case_insensitive, pattern_no, match_addr, valid, 
        finish, T_data, T_addr, P_data, P_addr );
  output [3:0] pattern_no;
  output [11:0] match_addr;
  input [7:0] T_data;
  output [11:0] T_addr;
  input [7:0] P_data;
  output [6:0] P_addr;
  input clk, reset, case_insensitive;
  output valid, finish;
  wire   n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070,
         n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080,
         n1081, n1082, n1083, N122, N123, N124, N125, N126, N127, N128, N129,
         N130, N131, N132, N133, N134, N135, N136, N137, N138, N139, N140,
         N141, N142, N143, N144, N145, N146, N147, N148, N149, N150, N151,
         N152, N168, N169, N170, N171, N172, N173, N174, N213, N214, N215,
         N216, N217, N218, N219, N300, N301, N302, N303, N304, N305, N306,
         N307, N308, N309, N310, N311, N352, N353, N354, N355, N356, N357,
         N358, N359, N360, N361, N362, N363, N365, N366, N367, N368, N369,
         N370, N371, N372, N373, N374, N375, N376, N378, N379, N380, N381,
         N382, N383, N384, N385, N386, N387, N388, N389, N391, N392, N393,
         N394, N395, N396, N397, N398, N399, N400, N401, N402, N444, N445,
         N446, N447, N448, N449, N452, N453, N454, N455, N456, N457, N460,
         N461, N462, N463, N464, N465, N468, N469, N470, N471, N472, N473,
         N547, N548, N549, N550, N551, N552, N553, N740, N742, N761, N763,
         N765, N766, N767, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559,
         n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570,
         n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581,
         n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, n592,
         n593, n594, n595, n596, n597, n598, n599, n600, n601, n602, n603,
         n604, n605, n606, n607, n608, n609, n610, n611, n612, n613, n614,
         n615, n616, n617, n618, n619, n620, n621, n622, n623, n624, n625,
         n626, n627, n628, n629, n630, n631, n632, n633, n634, n635, n636,
         n637, n638, n639, n640, n641, n642, n643, n644, n645, n646, n647,
         n648, n649, n650, n651, n652, n653, n654, n655, n656, n657, n658,
         n659, n660, n661, n662, n663, n664, N298, N297, N296,
         \sub_330_aco/B[0] , \sub_150_4/carry[2] , \sub_150_4/carry[3] ,
         \sub_150_4/carry[4] , \sub_150_4/carry[5] , \sub_150_4/carry[6] ,
         \sub_150_3/carry[2] , \sub_150_3/carry[3] , \sub_150_3/carry[4] ,
         \sub_150_3/carry[5] , \sub_150_3/carry[6] , \sub_150_2/carry[2] ,
         \sub_150_2/carry[3] , \sub_150_2/carry[4] , \sub_150_2/carry[5] ,
         \sub_150_2/carry[6] , \sub_150/carry[2] , \sub_150/carry[3] ,
         \sub_150/carry[4] , \sub_150/carry[5] , \sub_150/carry[6] ,
         \add_128/carry[2] , \add_128/carry[3] , \add_128/carry[4] ,
         \add_128/carry[5] , \add_128/carry[6] , \add_281_S2/carry[7] , n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n684, n685, n686, n687, n688, n689, n690,
         n691, n692, n693, n694, n695, n696, n1088, n699, n711, n718, n719,
         n720, n723, n726, n727, n728, n729, n730, n731, n732, n733, n734,
         n735, n736, n737, n738, n739, n740, n743, n744, n745, n746, n747,
         n748, n749, n750, n751, n752, n753, n754, n755, n756, n757, n758,
         n759, n760, n761, n762, n763, n764, n765, n766, n767, n768, n769,
         n770, n771, n772, n773, n774, n775, n776, n777, n778, n779, n780,
         n781, n782, n783, n785, n786, n787, n788, n789, n790, n791, n792,
         n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803,
         n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814,
         n815, n816, n817, n818, n819, n820, n821, n822, n823, n824, n825,
         n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, n836,
         n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847,
         n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858,
         n859, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869,
         n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n880,
         n881, n882, n883, n884, n885, n886, n887, n888, n889, n890, n891,
         n892, n893, n894, n895, n896, n897, n898, n899, n900, n901, n902,
         n903, n904, n905, n906, n907, n908, n909, n910, n911, n912, n913,
         n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924,
         n925, n926, n927, n928, n929, n930, n931, n932, n933, n934, n935,
         n936, n937, n938, n939, n940, n941, n942, n943, n944, n945, n946,
         n947, n948, n949, n950, n951, n952, n953, n954, n955, n956, n957,
         n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, n968,
         n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979,
         n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990,
         n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
         n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011,
         n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021,
         n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031,
         n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041,
         n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051,
         n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1084, n1086;
  wire   [3:0] st;
  wire   [11:0] str_st;
  wire   [7:0] str_in_reg;
  wire   [7:0] pat_in_reg;
  wire   [3:0] nst;
  wire   [6:0] pat_len_reg;
  wire   [11:0] str_pos;
  wire   [6:0] pat_pos;
  wire   [6:0] pat_st;
  wire   [11:0] branch_str_pos_4;
  wire   [11:0] branch_str_pos_3;
  wire   [11:0] branch_str_pos_2;
  wire   [11:0] branch_str_pos_1;
  wire   [6:0] branch_pat_pos_4;
  wire   [6:0] branch_pat_pos_3;
  wire   [6:0] branch_pat_pos_2;
  wire   [6:0] branch_pat_pos_1;
  wire   [7:0] \sub_331_aco/carry ;
  wire   [12:0] \sub_330_aco/carry ;
  wire   [12:0] \r553/carry ;
  wire   [11:1] \r543/carry ;
  assign N740 = T_data[1];
  assign N742 = T_data[3];
  assign N761 = P_data[1];
  assign N763 = P_data[3];

  DFFRX1 \branch_str_pos_4_reg[11]  ( .D(n558), .CK(clk), .RN(n774), .Q(
        branch_str_pos_4[11]), .QN(n472) );
  DFFRX1 \branch_str_pos_3_reg[11]  ( .D(n570), .CK(clk), .RN(n775), .Q(
        branch_str_pos_3[11]), .QN(n460) );
  DFFRX1 \branch_str_pos_2_reg[11]  ( .D(n582), .CK(clk), .RN(n775), .Q(
        branch_str_pos_2[11]), .QN(n448) );
  DFFRX1 \branch_str_pos_1_reg[11]  ( .D(n594), .CK(clk), .RN(n775), .Q(
        branch_str_pos_1[11]), .QN(n436) );
  DFFRX1 \branch_pat_pos_4_reg[6]  ( .D(n523), .CK(clk), .RN(n768), .Q(
        branch_pat_pos_4[6]), .QN(n500) );
  DFFRX1 \branch_pat_pos_3_reg[6]  ( .D(n530), .CK(clk), .RN(n768), .Q(
        branch_pat_pos_3[6]), .QN(n493) );
  DFFRX1 \branch_pat_pos_2_reg[6]  ( .D(n537), .CK(clk), .RN(n768), .Q(
        branch_pat_pos_2[6]), .QN(n486) );
  DFFRX1 \branch_pat_pos_1_reg[6]  ( .D(n544), .CK(clk), .RN(n771), .Q(
        branch_pat_pos_1[6]), .QN(n479) );
  DFFRX1 \branch_pat_pos_4_reg[5]  ( .D(n524), .CK(clk), .RN(n769), .Q(
        branch_pat_pos_4[5]), .QN(n499) );
  DFFRX1 \branch_pat_pos_2_reg[5]  ( .D(n538), .CK(clk), .RN(n770), .Q(
        branch_pat_pos_2[5]), .QN(n485) );
  DFFRX1 \branch_str_pos_4_reg[10]  ( .D(n559), .CK(clk), .RN(n774), .Q(
        branch_str_pos_4[10]), .QN(n471) );
  DFFRX1 \branch_str_pos_3_reg[10]  ( .D(n571), .CK(clk), .RN(n774), .Q(
        branch_str_pos_3[10]), .QN(n459) );
  DFFRX1 \branch_str_pos_2_reg[10]  ( .D(n583), .CK(clk), .RN(n774), .Q(
        branch_str_pos_2[10]), .QN(n447) );
  DFFRX1 \branch_str_pos_1_reg[10]  ( .D(n595), .CK(clk), .RN(n774), .Q(
        branch_str_pos_1[10]), .QN(n435) );
  DFFRX1 \pat_st_reg[5]  ( .D(n619), .CK(clk), .RN(n767), .Q(pat_st[5]) );
  DFFRX1 \pat_st_reg[6]  ( .D(n618), .CK(clk), .RN(n767), .Q(pat_st[6]) );
  DFFRX1 \branch_str_pos_4_reg[9]  ( .D(n560), .CK(clk), .RN(n774), .Q(
        branch_str_pos_4[9]), .QN(n470) );
  DFFRX1 \branch_str_pos_3_reg[9]  ( .D(n572), .CK(clk), .RN(n774), .Q(
        branch_str_pos_3[9]), .QN(n458) );
  DFFRX1 \branch_str_pos_2_reg[9]  ( .D(n584), .CK(clk), .RN(n774), .Q(
        branch_str_pos_2[9]), .QN(n446) );
  DFFRX1 \branch_str_pos_1_reg[9]  ( .D(n596), .CK(clk), .RN(n774), .Q(
        branch_str_pos_1[9]), .QN(n434) );
  DFFRX1 \branch_str_pos_4_reg[8]  ( .D(n561), .CK(clk), .RN(n773), .Q(
        branch_str_pos_4[8]), .QN(n469) );
  DFFRX1 \branch_str_pos_3_reg[8]  ( .D(n573), .CK(clk), .RN(n774), .Q(
        branch_str_pos_3[8]), .QN(n457) );
  DFFRX1 \branch_str_pos_2_reg[8]  ( .D(n585), .CK(clk), .RN(n774), .Q(
        branch_str_pos_2[8]), .QN(n445) );
  DFFRX1 \branch_str_pos_1_reg[8]  ( .D(n597), .CK(clk), .RN(n774), .Q(
        branch_str_pos_1[8]), .QN(n433) );
  DFFRX1 \branch_pat_pos_3_reg[5]  ( .D(n531), .CK(clk), .RN(n769), .Q(
        branch_pat_pos_3[5]), .QN(n492) );
  DFFRX1 \branch_pat_pos_4_reg[4]  ( .D(n525), .CK(clk), .RN(n769), .Q(
        branch_pat_pos_4[4]), .QN(n498) );
  DFFRX1 \branch_pat_pos_4_reg[3]  ( .D(n526), .CK(clk), .RN(n770), .Q(
        branch_pat_pos_4[3]), .QN(n497) );
  DFFRX1 \branch_pat_pos_3_reg[3]  ( .D(n533), .CK(clk), .RN(n770), .Q(
        branch_pat_pos_3[3]), .QN(n490) );
  DFFRX1 \branch_pat_pos_2_reg[3]  ( .D(n540), .CK(clk), .RN(n770), .Q(
        branch_pat_pos_2[3]), .QN(n483) );
  DFFRX1 \branch_pat_pos_1_reg[3]  ( .D(n547), .CK(clk), .RN(n770), .Q(
        branch_pat_pos_1[3]), .QN(n476) );
  DFFRX1 \branch_pat_pos_3_reg[4]  ( .D(n532), .CK(clk), .RN(n770), .Q(
        branch_pat_pos_3[4]), .QN(n491) );
  DFFRX1 \branch_pat_pos_2_reg[4]  ( .D(n539), .CK(clk), .RN(n770), .Q(
        branch_pat_pos_2[4]), .QN(n484) );
  DFFRX1 \branch_pat_pos_1_reg[4]  ( .D(n546), .CK(clk), .RN(n770), .Q(
        branch_pat_pos_1[4]), .QN(n477) );
  DFFRX1 \branch_pat_pos_1_reg[5]  ( .D(n545), .CK(clk), .RN(n770), .Q(
        branch_pat_pos_1[5]), .QN(n478) );
  DFFRX1 \pat_st_reg[1]  ( .D(n623), .CK(clk), .RN(n766), .Q(pat_st[1]) );
  DFFRX1 \pat_st_reg[2]  ( .D(n622), .CK(clk), .RN(n766), .Q(pat_st[2]) );
  DFFRX1 \pat_st_reg[3]  ( .D(n621), .CK(clk), .RN(n766), .Q(pat_st[3]) );
  DFFRX1 \pat_st_reg[4]  ( .D(n620), .CK(clk), .RN(n766), .Q(pat_st[4]) );
  DFFRX1 \pat_st_reg[0]  ( .D(n624), .CK(clk), .RN(n766), .Q(pat_st[0]) );
  DFFRX1 \branch_str_pos_4_reg[6]  ( .D(n563), .CK(clk), .RN(n773), .Q(
        branch_str_pos_4[6]), .QN(n467) );
  DFFRX1 \branch_str_pos_3_reg[6]  ( .D(n575), .CK(clk), .RN(n773), .Q(
        branch_str_pos_3[6]), .QN(n455) );
  DFFRX1 \branch_str_pos_2_reg[6]  ( .D(n587), .CK(clk), .RN(n773), .Q(
        branch_str_pos_2[6]), .QN(n443) );
  DFFRX1 \branch_str_pos_1_reg[6]  ( .D(n599), .CK(clk), .RN(n773), .Q(
        branch_str_pos_1[6]), .QN(n431) );
  DFFRX1 \branch_str_pos_4_reg[7]  ( .D(n562), .CK(clk), .RN(n773), .Q(
        branch_str_pos_4[7]), .QN(n468) );
  DFFRX1 \branch_str_pos_3_reg[7]  ( .D(n574), .CK(clk), .RN(n773), .Q(
        branch_str_pos_3[7]), .QN(n456) );
  DFFRX1 \branch_str_pos_2_reg[7]  ( .D(n586), .CK(clk), .RN(n773), .Q(
        branch_str_pos_2[7]), .QN(n444) );
  DFFRX1 \branch_str_pos_1_reg[7]  ( .D(n598), .CK(clk), .RN(n773), .Q(
        branch_str_pos_1[7]), .QN(n432) );
  DFFRX1 \branch_pat_pos_4_reg[2]  ( .D(n527), .CK(clk), .RN(n769), .Q(
        branch_pat_pos_4[2]), .QN(n496) );
  DFFRX1 \branch_pat_pos_3_reg[2]  ( .D(n534), .CK(clk), .RN(n770), .Q(
        branch_pat_pos_3[2]), .QN(n489) );
  DFFRX1 \branch_pat_pos_2_reg[2]  ( .D(n541), .CK(clk), .RN(n770), .Q(
        branch_pat_pos_2[2]), .QN(n482) );
  DFFRX1 \branch_pat_pos_1_reg[2]  ( .D(n548), .CK(clk), .RN(n770), .Q(
        branch_pat_pos_1[2]), .QN(n475) );
  DFFRX1 \branch_pat_pos_4_reg[1]  ( .D(n528), .CK(clk), .RN(n769), .Q(
        branch_pat_pos_4[1]), .QN(n495) );
  DFFRX1 \branch_pat_pos_3_reg[1]  ( .D(n535), .CK(clk), .RN(n769), .Q(
        branch_pat_pos_3[1]), .QN(n488) );
  DFFRX1 \branch_pat_pos_2_reg[1]  ( .D(n542), .CK(clk), .RN(n769), .Q(
        branch_pat_pos_2[1]), .QN(n481) );
  DFFRX1 \branch_pat_pos_1_reg[1]  ( .D(n549), .CK(clk), .RN(n769), .Q(
        branch_pat_pos_1[1]), .QN(n474) );
  DFFRX1 \str_pos_reg[11]  ( .D(n606), .CK(clk), .RN(n775), .Q(str_pos[11]), 
        .QN(n424) );
  DFFRX1 \branch_pat_pos_4_reg[0]  ( .D(n529), .CK(clk), .RN(n768), .Q(
        branch_pat_pos_4[0]), .QN(n494) );
  DFFRX1 \branch_pat_pos_3_reg[0]  ( .D(n536), .CK(clk), .RN(n768), .Q(
        branch_pat_pos_3[0]), .QN(n487) );
  DFFRX1 \branch_pat_pos_2_reg[0]  ( .D(n543), .CK(clk), .RN(n768), .Q(
        branch_pat_pos_2[0]), .QN(n480) );
  DFFRX1 \branch_pat_pos_1_reg[0]  ( .D(n550), .CK(clk), .RN(n768), .Q(
        branch_pat_pos_1[0]), .QN(n473) );
  DFFRX1 \pat_pos_reg[6]  ( .D(n551), .CK(clk), .RN(n768), .Q(pat_pos[6]), 
        .QN(n688) );
  DFFRX1 \branch_str_pos_4_reg[3]  ( .D(n566), .CK(clk), .RN(n772), .Q(
        branch_str_pos_4[3]), .QN(n464) );
  DFFRX1 \branch_str_pos_2_reg[3]  ( .D(n590), .CK(clk), .RN(n772), .Q(
        branch_str_pos_2[3]), .QN(n440) );
  DFFRX1 \branch_str_pos_1_reg[3]  ( .D(n602), .CK(clk), .RN(n772), .Q(
        branch_str_pos_1[3]), .QN(n428) );
  DFFRX1 \branch_str_pos_4_reg[4]  ( .D(n565), .CK(clk), .RN(n772), .Q(
        branch_str_pos_4[4]), .QN(n465) );
  DFFRX1 \branch_str_pos_3_reg[4]  ( .D(n577), .CK(clk), .RN(n772), .Q(
        branch_str_pos_3[4]), .QN(n453) );
  DFFRX1 \branch_str_pos_2_reg[4]  ( .D(n589), .CK(clk), .RN(n772), .Q(
        branch_str_pos_2[4]), .QN(n441) );
  DFFRX1 \branch_str_pos_1_reg[4]  ( .D(n601), .CK(clk), .RN(n772), .Q(
        branch_str_pos_1[4]), .QN(n429) );
  DFFRX1 \branch_str_pos_4_reg[5]  ( .D(n564), .CK(clk), .RN(n772), .Q(
        branch_str_pos_4[5]), .QN(n466) );
  DFFRX1 \branch_str_pos_3_reg[5]  ( .D(n576), .CK(clk), .RN(n773), .Q(
        branch_str_pos_3[5]), .QN(n454) );
  DFFRX1 \branch_str_pos_2_reg[5]  ( .D(n588), .CK(clk), .RN(n773), .Q(
        branch_str_pos_2[5]), .QN(n442) );
  DFFRX1 \branch_str_pos_1_reg[5]  ( .D(n600), .CK(clk), .RN(n773), .Q(
        branch_str_pos_1[5]), .QN(n430) );
  DFFRX1 \branch_str_pos_4_reg[1]  ( .D(n568), .CK(clk), .RN(n771), .Q(
        branch_str_pos_4[1]), .QN(n462) );
  DFFRX1 \branch_str_pos_3_reg[1]  ( .D(n580), .CK(clk), .RN(n771), .Q(
        branch_str_pos_3[1]), .QN(n450) );
  DFFRX1 \branch_str_pos_2_reg[1]  ( .D(n592), .CK(clk), .RN(n771), .Q(
        branch_str_pos_2[1]), .QN(n438) );
  DFFRX1 \branch_str_pos_1_reg[1]  ( .D(n604), .CK(clk), .RN(n771), .Q(
        branch_str_pos_1[1]), .QN(n426) );
  DFFRX1 \branch_str_pos_4_reg[2]  ( .D(n567), .CK(clk), .RN(n771), .Q(
        branch_str_pos_4[2]), .QN(n463) );
  DFFRX1 \branch_str_pos_3_reg[2]  ( .D(n579), .CK(clk), .RN(n772), .Q(
        branch_str_pos_3[2]), .QN(n451) );
  DFFRX1 \branch_str_pos_2_reg[2]  ( .D(n591), .CK(clk), .RN(n772), .Q(
        branch_str_pos_2[2]), .QN(n439) );
  DFFRX1 \branch_str_pos_1_reg[2]  ( .D(n603), .CK(clk), .RN(n772), .Q(
        branch_str_pos_1[2]), .QN(n427) );
  DFFRX1 \branch_str_pos_3_reg[3]  ( .D(n578), .CK(clk), .RN(n772), .Q(
        branch_str_pos_3[3]), .QN(n452) );
  DFFRX1 hat_flag_reg ( .D(n663), .CK(clk), .RN(n766), .Q(n1055) );
  DFFRX1 \branch_str_pos_4_reg[0]  ( .D(n569), .CK(clk), .RN(n771), .Q(
        branch_str_pos_4[0]), .QN(n461) );
  DFFRX1 \branch_str_pos_3_reg[0]  ( .D(n581), .CK(clk), .RN(n771), .Q(
        branch_str_pos_3[0]), .QN(n449) );
  DFFRX1 \branch_str_pos_2_reg[0]  ( .D(n593), .CK(clk), .RN(n771), .Q(
        branch_str_pos_2[0]), .QN(n437) );
  DFFRX1 \branch_str_pos_1_reg[0]  ( .D(n605), .CK(clk), .RN(n771), .Q(
        branch_str_pos_1[0]), .QN(n425) );
  DFFRX1 \match_addr_reg_reg[11]  ( .D(n639), .CK(clk), .RN(n768), .Q(
        str_st[11]) );
  DFFRX1 \match_addr_reg_reg[6]  ( .D(n644), .CK(clk), .RN(n767), .Q(str_st[6]) );
  DFFRX1 \match_addr_reg_reg[7]  ( .D(n643), .CK(clk), .RN(n767), .Q(str_st[7]) );
  DFFRX1 \match_addr_reg_reg[8]  ( .D(n642), .CK(clk), .RN(n767), .Q(str_st[8]) );
  DFFRX1 \match_addr_reg_reg[9]  ( .D(n641), .CK(clk), .RN(n767), .Q(str_st[9]) );
  DFFRX1 \match_addr_reg_reg[10]  ( .D(n640), .CK(clk), .RN(n768), .Q(
        str_st[10]) );
  DFFRX1 \match_addr_reg_reg[1]  ( .D(n650), .CK(clk), .RN(n767), .Q(str_st[1]) );
  DFFRX1 \match_addr_reg_reg[2]  ( .D(n648), .CK(clk), .RN(n767), .Q(str_st[2]) );
  DFFRX1 \match_addr_reg_reg[3]  ( .D(n647), .CK(clk), .RN(n767), .Q(str_st[3]) );
  DFFRX1 \match_addr_reg_reg[4]  ( .D(n646), .CK(clk), .RN(n767), .Q(str_st[4]) );
  DFFRX1 \match_addr_reg_reg[5]  ( .D(n645), .CK(clk), .RN(n767), .Q(str_st[5]) );
  DFFSX1 \pat_len_reg_reg[6]  ( .D(n625), .CK(clk), .SN(n776), .Q(
        pat_len_reg[6]) );
  DFFRX1 \str_in_reg_reg[0]  ( .D(n664), .CK(clk), .RN(n771), .QN(n672) );
  DFFRX1 \pat_in_reg_reg[4]  ( .D(n654), .CK(clk), .RN(n766), .Q(pat_in_reg[4]) );
  DFFRX1 \pat_in_reg_reg[2]  ( .D(n656), .CK(clk), .RN(n766), .Q(pat_in_reg[2]) );
  DFFRX1 \pat_in_reg_reg[6]  ( .D(n652), .CK(clk), .RN(n766), .Q(pat_in_reg[6]) );
  DFFRX1 \pat_in_reg_reg[7]  ( .D(n651), .CK(clk), .RN(n766), .Q(pat_in_reg[7]) );
  DFFRX1 \pat_in_reg_reg[5]  ( .D(n653), .CK(clk), .RN(n766), .Q(pat_in_reg[5]) );
  DFFRX1 \pat_in_reg_reg[0]  ( .D(n658), .CK(clk), .RN(n766), .QN(n1049) );
  DFFRX1 \str_in_reg_reg[6]  ( .D(n637), .CK(clk), .RN(n765), .QN(n1051) );
  DFFRX1 \str_in_reg_reg[4]  ( .D(n635), .CK(clk), .RN(n765), .QN(n1053) );
  DFFRX1 \str_in_reg_reg[2]  ( .D(n633), .CK(clk), .RN(n765), .QN(n1054) );
  DFFRX1 \str_in_reg_reg[5]  ( .D(n636), .CK(clk), .RN(n765), .QN(n1052) );
  DFFRX1 \str_in_reg_reg[7]  ( .D(n638), .CK(clk), .RN(n765), .QN(n1050) );
  DFFSX1 \str_in_reg_reg[1]  ( .D(n632), .CK(clk), .SN(n776), .Q(str_in_reg[1]), .QN(n692) );
  DFFSX1 \str_in_reg_reg[3]  ( .D(n634), .CK(clk), .SN(n776), .Q(str_in_reg[3]), .QN(n693) );
  DFFSX1 \pat_in_reg_reg[1]  ( .D(n657), .CK(clk), .SN(n776), .Q(pat_in_reg[1]) );
  DFFSX1 \pat_in_reg_reg[3]  ( .D(n655), .CK(clk), .SN(n776), .Q(pat_in_reg[3]) );
  DFFRX1 branch_valid_1_reg ( .D(n660), .CK(clk), .RN(n765), .Q(n673), .QN(
        n521) );
  DFFRX1 branch_valid_2_reg ( .D(n659), .CK(clk), .RN(n765), .Q(n667), .QN(
        n1056) );
  DFFRX1 \str_pos_reg[0]  ( .D(n617), .CK(clk), .RN(n771), .Q(str_pos[0]), 
        .QN(n687) );
  DFFRX1 branch_valid_4_reg ( .D(n661), .CK(clk), .RN(n765), .Q(n669), .QN(
        n1057) );
  DFFRX1 \pat_pos_reg[5]  ( .D(n552), .CK(clk), .RN(n768), .Q(pat_pos[5]), 
        .QN(n685) );
  DFFRX1 \pat_pos_reg[2]  ( .D(n555), .CK(clk), .RN(n769), .Q(pat_pos[2]), 
        .QN(n689) );
  DFFRX1 \str_pos_reg[9]  ( .D(n608), .CK(clk), .RN(n776), .Q(str_pos[9]), 
        .QN(n422) );
  DFFRX1 \str_pos_reg[10]  ( .D(n607), .CK(clk), .RN(n776), .Q(str_pos[10]), 
        .QN(n423) );
  DFFRX1 \pat_pos_reg[3]  ( .D(n554), .CK(clk), .RN(n769), .Q(pat_pos[3]), 
        .QN(n684) );
  DFFRX1 \str_pos_reg[8]  ( .D(n609), .CK(clk), .RN(n775), .Q(str_pos[8]), 
        .QN(n421) );
  DFFRX1 \pat_pos_reg[1]  ( .D(n556), .CK(clk), .RN(n769), .Q(pat_pos[1]), 
        .QN(n686) );
  DFFRX1 \match_addr_reg_reg[0]  ( .D(n649), .CK(clk), .RN(n767), .Q(str_st[0]) );
  DFFSX1 \pat_len_reg_reg[2]  ( .D(n629), .CK(clk), .SN(n776), .Q(
        pat_len_reg[2]) );
  DFFSX1 \pat_len_reg_reg[1]  ( .D(n630), .CK(clk), .SN(n777), .Q(
        pat_len_reg[1]) );
  DFFSX1 \pat_len_reg_reg[3]  ( .D(n628), .CK(clk), .SN(n777), .Q(
        pat_len_reg[3]) );
  DFFSX1 \pat_len_reg_reg[5]  ( .D(n626), .CK(clk), .SN(n776), .Q(
        pat_len_reg[5]) );
  DFFSX1 \pat_len_reg_reg[4]  ( .D(n627), .CK(clk), .SN(n777), .Q(
        pat_len_reg[4]) );
  DFFSX1 \pat_len_reg_reg[0]  ( .D(n631), .CK(clk), .SN(n777), .Q(
        pat_len_reg[0]) );
  DFFRX1 \str_pos_reg[7]  ( .D(n610), .CK(clk), .RN(n775), .Q(str_pos[7]), 
        .QN(n420) );
  DFFRX1 \str_pos_reg[6]  ( .D(n611), .CK(clk), .RN(n775), .Q(str_pos[6]), 
        .QN(n419) );
  DFFRX1 \str_pos_reg[5]  ( .D(n612), .CK(clk), .RN(n775), .Q(str_pos[5]), 
        .QN(n418) );
  DFFRX1 \str_pos_reg[4]  ( .D(n613), .CK(clk), .RN(n775), .Q(str_pos[4]), 
        .QN(n417) );
  DFFRX1 \str_pos_reg[3]  ( .D(n614), .CK(clk), .RN(n775), .Q(str_pos[3]), 
        .QN(n416) );
  DFFRX1 \str_pos_reg[2]  ( .D(n615), .CK(clk), .RN(n775), .Q(str_pos[2]), 
        .QN(n415) );
  DFFRX1 \pattern_no_reg_reg[2]  ( .D(n502), .CK(clk), .RN(n776), .Q(n1062), 
        .QN(n711) );
  DFFRX1 \pattern_no_reg_reg[3]  ( .D(n501), .CK(clk), .RN(n776), .Q(n1061), 
        .QN(n699) );
  DFFRX1 branch_valid_3_reg ( .D(n662), .CK(clk), .RN(n765), .Q(n962), .QN(
        n522) );
  DFFRX1 \st_reg[0]  ( .D(nst[0]), .CK(clk), .RN(n765), .Q(st[0]), .QN(n794)
         );
  DFFRX1 \pat_pos_reg[4]  ( .D(n553), .CK(clk), .RN(n769), .Q(pat_pos[4]), 
        .QN(n952) );
  DFFSX2 \st_reg[3]  ( .D(n1058), .CK(clk), .SN(n777), .Q(st[3]), .QN(n1024)
         );
  DFFRX1 \pat_pos_reg[0]  ( .D(n557), .CK(clk), .RN(n768), .Q(pat_pos[0]), 
        .QN(N213) );
  NAND3X2 U509 ( .A(nst[1]), .B(n1058), .C(nst[0]), .Y(n668) );
  NAND4X2 U510 ( .A(n968), .B(n853), .C(n969), .D(n970), .Y(nst[0]) );
  BUFX20 U511 ( .A(n1078), .Y(P_addr[5]) );
  NAND2X2 U512 ( .A(n726), .B(n727), .Y(n1078) );
  INVX3 U513 ( .A(n694), .Y(n695) );
  INVX4 U514 ( .A(P_data[5]), .Y(n694) );
  OAI211X2 U515 ( .A0(n824), .A1(n988), .B0(n989), .C0(n987), .Y(n818) );
  OA21X1 U516 ( .A0(n997), .A1(n824), .B0(n980), .Y(n983) );
  OA21X4 U517 ( .A0(n824), .A1(n985), .B0(n986), .Y(n720) );
  AND4X4 U518 ( .A(n1014), .B(n1015), .C(case_insensitive), .D(n1016), .Y(n824) );
  BUFX20 U519 ( .A(n1077), .Y(P_addr[6]) );
  NAND2X4 U520 ( .A(n824), .B(n992), .Y(n982) );
  OR2X2 U521 ( .A(str_pos[9]), .B(\sub_330_aco/carry [9]), .Y(
        \sub_330_aco/carry [10]) );
  ADDFXL U522 ( .A(pat_pos[2]), .B(n668), .CI(\sub_331_aco/carry [2]), .CO(
        \sub_331_aco/carry [3]), .S(n1081) );
  OR2X4 U523 ( .A(pat_pos[3]), .B(\sub_331_aco/carry [3]), .Y(
        \sub_331_aco/carry [4]) );
  OR2X1 U524 ( .A(n813), .B(str_pos[0]), .Y(\sub_330_aco/carry [1]) );
  OR2X1 U525 ( .A(str_pos[2]), .B(\sub_330_aco/carry [2]), .Y(
        \sub_330_aco/carry [3]) );
  OR2X1 U526 ( .A(str_pos[4]), .B(\sub_330_aco/carry [4]), .Y(
        \sub_330_aco/carry [5]) );
  OR2X1 U527 ( .A(str_pos[6]), .B(\sub_330_aco/carry [6]), .Y(
        \sub_330_aco/carry [7]) );
  OR2X1 U528 ( .A(str_pos[7]), .B(\sub_330_aco/carry [7]), .Y(
        \sub_330_aco/carry [8]) );
  AOI211X1 U529 ( .A0(n792), .A1(n752), .B0(n1021), .C0(n1022), .Y(n864) );
  AO21X1 U530 ( .A0(n850), .A1(N742), .B0(n1029), .Y(n736) );
  CLKINVX1 U531 ( .A(n982), .Y(n820) );
  BUFX12 U532 ( .A(n1066), .Y(T_addr[10]) );
  NAND2X1 U533 ( .A(n729), .B(n730), .Y(n1066) );
  NOR2X1 U534 ( .A(pat_pos[5]), .B(\sub_331_aco/carry [5]), .Y(n670) );
  OR2X1 U535 ( .A(N763), .B(N761), .Y(n671) );
  XOR2X1 U536 ( .A(str_pos[11]), .B(\r553/carry [11]), .Y(n674) );
  OR4X1 U537 ( .A(n852), .B(n794), .C(st[2]), .D(st[3]), .Y(n675) );
  XOR2X1 U538 ( .A(\r553/carry [10]), .B(str_pos[10]), .Y(n676) );
  XOR2X1 U539 ( .A(\r553/carry [9]), .B(str_pos[9]), .Y(n677) );
  XOR2X1 U540 ( .A(\r553/carry [6]), .B(str_pos[6]), .Y(n678) );
  XOR2X1 U541 ( .A(\r553/carry [7]), .B(str_pos[7]), .Y(n679) );
  XOR2X1 U542 ( .A(\r553/carry [8]), .B(str_pos[8]), .Y(n680) );
  XOR2X1 U543 ( .A(\r553/carry [4]), .B(str_pos[4]), .Y(n681) );
  XOR2X1 U544 ( .A(\r553/carry [5]), .B(str_pos[5]), .Y(n682) );
  XOR2X1 U545 ( .A(str_pos[1]), .B(str_pos[2]), .Y(n690) );
  XOR2X1 U546 ( .A(\r553/carry [3]), .B(str_pos[3]), .Y(n691) );
  OR2X1 U548 ( .A(n668), .B(pat_pos[0]), .Y(\sub_331_aco/carry [1]) );
  INVXL U549 ( .A(n1081), .Y(n696) );
  INVX12 U550 ( .A(n696), .Y(P_addr[2]) );
  CLKMX2X12 U551 ( .A(str_st[11]), .B(N133), .S0(n763), .Y(match_addr[11]) );
  CLKMX2X12 U552 ( .A(str_st[10]), .B(N132), .S0(n763), .Y(match_addr[10]) );
  INVX12 U553 ( .A(n786), .Y(finish) );
  CLKMX2X12 U555 ( .A(str_st[9]), .B(N131), .S0(n763), .Y(match_addr[9]) );
  CLKMX2X12 U556 ( .A(str_st[8]), .B(N130), .S0(n763), .Y(match_addr[8]) );
  CLKMX2X12 U557 ( .A(str_st[7]), .B(N129), .S0(n763), .Y(match_addr[7]) );
  CLKMX2X12 U558 ( .A(str_st[6]), .B(N128), .S0(n763), .Y(match_addr[6]) );
  CLKMX2X12 U559 ( .A(str_st[5]), .B(N127), .S0(n763), .Y(match_addr[5]) );
  CLKMX2X12 U560 ( .A(str_st[4]), .B(N126), .S0(n763), .Y(match_addr[4]) );
  CLKMX2X12 U561 ( .A(str_st[3]), .B(N125), .S0(n763), .Y(match_addr[3]) );
  OAI211X4 U562 ( .A0(n1058), .A1(n751), .B0(n927), .C0(n675), .Y(n933) );
  INVX1 U563 ( .A(n864), .Y(n1058) );
  INVX12 U564 ( .A(n699), .Y(pattern_no[3]) );
  CLKMX2X12 U565 ( .A(str_st[2]), .B(N124), .S0(n763), .Y(match_addr[2]) );
  AND2X2 U566 ( .A(n734), .B(n735), .Y(n1079) );
  INVX12 U567 ( .A(n1079), .Y(P_addr[4]) );
  XOR2X1 U568 ( .A(\sub_330_aco/carry [5]), .B(str_pos[5]), .Y(n1071) );
  INVX12 U569 ( .A(n1071), .Y(T_addr[5]) );
  XOR2X1 U570 ( .A(\sub_330_aco/carry [3]), .B(str_pos[3]), .Y(n1073) );
  INVX12 U571 ( .A(n1073), .Y(T_addr[3]) );
  XOR2X1 U572 ( .A(\sub_331_aco/carry [1]), .B(pat_pos[1]), .Y(n1082) );
  INVX12 U573 ( .A(n1082), .Y(P_addr[1]) );
  XOR2X1 U574 ( .A(pat_pos[0]), .B(n668), .Y(n1083) );
  INVX12 U575 ( .A(n1083), .Y(P_addr[0]) );
  XOR2X1 U576 ( .A(\sub_331_aco/carry [3]), .B(pat_pos[3]), .Y(n1080) );
  INVX12 U577 ( .A(n1080), .Y(P_addr[3]) );
  XOR2X1 U578 ( .A(\sub_330_aco/carry [1]), .B(str_pos[1]), .Y(n1075) );
  INVX12 U579 ( .A(n1075), .Y(T_addr[1]) );
  XOR2X1 U580 ( .A(\sub_330_aco/carry [6]), .B(str_pos[6]), .Y(n1070) );
  INVX12 U581 ( .A(n1070), .Y(T_addr[6]) );
  OR2XL U582 ( .A(str_pos[5]), .B(\sub_330_aco/carry [5]), .Y(
        \sub_330_aco/carry [6]) );
  XOR2X1 U583 ( .A(\sub_330_aco/carry [4]), .B(str_pos[4]), .Y(n1072) );
  INVX12 U584 ( .A(n1072), .Y(T_addr[4]) );
  OR2XL U585 ( .A(str_pos[3]), .B(\sub_330_aco/carry [3]), .Y(
        \sub_330_aco/carry [4]) );
  XOR2X1 U586 ( .A(\sub_330_aco/carry [2]), .B(str_pos[2]), .Y(n1074) );
  INVX12 U587 ( .A(n1074), .Y(T_addr[2]) );
  OR2XL U588 ( .A(str_pos[1]), .B(\sub_330_aco/carry [1]), .Y(
        \sub_330_aco/carry [2]) );
  OA21X2 U589 ( .A0(n863), .A1(n925), .B0(n793), .Y(n934) );
  INVX12 U590 ( .A(n711), .Y(pattern_no[2]) );
  CLKMX2X12 U592 ( .A(str_st[1]), .B(N123), .S0(n763), .Y(match_addr[1]) );
  OAI21X2 U593 ( .A0(n864), .A1(n751), .B0(n926), .Y(n935) );
  BUFX12 U594 ( .A(n1069), .Y(T_addr[7]) );
  XNOR2XL U595 ( .A(\sub_330_aco/carry [7]), .B(str_pos[7]), .Y(n1069) );
  AND3X2 U596 ( .A(n1017), .B(P_data[2]), .C(n695), .Y(n995) );
  CLKINVX1 U597 ( .A(n761), .Y(n785) );
  NOR3X1 U598 ( .A(n799), .B(n818), .C(n816), .Y(n984) );
  AND2X2 U599 ( .A(n1023), .B(n964), .Y(n718) );
  NOR2X2 U600 ( .A(P_data[7]), .B(P_data[6]), .Y(n1017) );
  NAND2X1 U601 ( .A(n978), .B(n975), .Y(n813) );
  NOR2X1 U602 ( .A(n1013), .B(n671), .Y(n1023) );
  NOR2X1 U603 ( .A(str_pos[10]), .B(\sub_330_aco/carry [10]), .Y(n739) );
  AND3X1 U604 ( .A(n1019), .B(n995), .C(n723), .Y(n978) );
  BUFX12 U605 ( .A(n1068), .Y(T_addr[8]) );
  XNOR2XL U606 ( .A(\sub_330_aco/carry [8]), .B(str_pos[8]), .Y(n1068) );
  NAND2BXL U607 ( .AN(\sub_331_aco/carry [5]), .B(n685), .Y(n727) );
  NOR2X2 U608 ( .A(n718), .B(n790), .Y(n992) );
  NOR4X2 U609 ( .A(st[0]), .B(st[1]), .C(st[2]), .D(st[3]), .Y(n790) );
  OAI211XL U610 ( .A0(n990), .A1(n991), .B0(n800), .C0(n992), .Y(n825) );
  NOR2BX1 U611 ( .AN(n992), .B(n850), .Y(n848) );
  CLKINVX1 U612 ( .A(n825), .Y(n987) );
  NAND2X1 U613 ( .A(n720), .B(n987), .Y(n816) );
  INVXL U614 ( .A(n670), .Y(n719) );
  NAND2X2 U615 ( .A(n737), .B(n738), .Y(n1077) );
  CLKINVX1 U616 ( .A(N761), .Y(n985) );
  NAND2XL U617 ( .A(N761), .B(n820), .Y(n986) );
  MX2XL U618 ( .A(n816), .B(pat_in_reg[1]), .S0(n761), .Y(n657) );
  NAND3X1 U619 ( .A(n1020), .B(n694), .C(n1017), .Y(n1013) );
  NOR2X1 U620 ( .A(n815), .B(n985), .Y(n1019) );
  NAND3X1 U621 ( .A(n1035), .B(case_insensitive), .C(n1036), .Y(n850) );
  XNOR2XL U622 ( .A(n1062), .B(n1042), .Y(n502) );
  INVXL U623 ( .A(N742), .Y(n1034) );
  NAND3X1 U624 ( .A(n974), .B(n785), .C(n975), .Y(n976) );
  AOI211X1 U625 ( .A0(n850), .A1(N740), .B0(n1028), .C0(n849), .Y(n851) );
  AND2XL U626 ( .A(N763), .B(P_data[4]), .Y(n723) );
  BUFX12 U627 ( .A(n1065), .Y(T_addr[11]) );
  XOR2X1 U628 ( .A(str_pos[11]), .B(n739), .Y(n1065) );
  CLKBUFX3 U629 ( .A(n827), .Y(n752) );
  CLKINVX1 U630 ( .A(n791), .Y(n827) );
  NAND3XL U631 ( .A(nst[1]), .B(n1058), .C(nst[0]), .Y(n793) );
  CLKINVX1 U632 ( .A(n806), .Y(n787) );
  CLKBUFX3 U633 ( .A(n856), .Y(n751) );
  AND2X2 U634 ( .A(N742), .B(n848), .Y(n1029) );
  AOI22XL U635 ( .A0(N152), .A1(n935), .B0(N449), .B1(n750), .Y(n958) );
  AOI22XL U636 ( .A0(N147), .A1(n935), .B0(N444), .B1(n750), .Y(n937) );
  AOI22XL U637 ( .A0(N148), .A1(n935), .B0(N445), .B1(n750), .Y(n941) );
  AOI22XL U638 ( .A0(N149), .A1(n935), .B0(N446), .B1(n750), .Y(n945) );
  AOI22XL U639 ( .A0(N150), .A1(n935), .B0(N447), .B1(n750), .Y(n949) );
  AOI22XL U640 ( .A0(N151), .A1(n935), .B0(N448), .B1(n750), .Y(n954) );
  NOR4XL U641 ( .A(N742), .B(T_data[2]), .C(N740), .D(T_data[0]), .Y(n1038) );
  INVX1 U642 ( .A(P_data[0]), .Y(n815) );
  AOI2BB2XL U643 ( .B0(pat_st[0]), .B1(n933), .A0N(n934), .A1N(N213), .Y(n931)
         );
  AOI2BB2XL U644 ( .B0(pat_st[1]), .B1(n933), .A0N(n934), .A1N(n686), .Y(n938)
         );
  AOI2BB2XL U645 ( .B0(pat_st[2]), .B1(n933), .A0N(n934), .A1N(n689), .Y(n942)
         );
  AOI2BB2XL U646 ( .B0(pat_st[3]), .B1(n933), .A0N(n934), .A1N(n684), .Y(n946)
         );
  AOI2BB2XL U647 ( .B0(pat_st[4]), .B1(n933), .A0N(n934), .A1N(n952), .Y(n950)
         );
  AOI2BB2XL U648 ( .B0(pat_st[5]), .B1(n933), .A0N(n934), .A1N(n685), .Y(n955)
         );
  AOI2BB2XL U649 ( .B0(pat_st[6]), .B1(n933), .A0N(n934), .A1N(n688), .Y(n959)
         );
  NOR2X1 U650 ( .A(T_data[7]), .B(T_data[6]), .Y(n1026) );
  CLKINVX1 U651 ( .A(T_data[4]), .Y(n845) );
  XOR2XL U652 ( .A(pattern_no[1]), .B(n1041), .Y(n503) );
  XNOR2XL U653 ( .A(pattern_no[0]), .B(n801), .Y(n504) );
  NAND2XL U654 ( .A(n1041), .B(pattern_no[1]), .Y(n1042) );
  AND2XL U655 ( .A(pattern_no[0]), .B(n762), .Y(n1041) );
  XOR2XL U656 ( .A(n1061), .B(n1043), .Y(n501) );
  NOR2BXL U657 ( .AN(n1062), .B(n1042), .Y(n1043) );
  XOR2XL U658 ( .A(pat_pos[4]), .B(\add_128/carry[4] ), .Y(N217) );
  AND2XL U659 ( .A(\add_128/carry[3] ), .B(pat_pos[3]), .Y(\add_128/carry[4] )
         );
  AND2XL U660 ( .A(\add_128/carry[4] ), .B(pat_pos[4]), .Y(\add_128/carry[5] )
         );
  XOR2XL U661 ( .A(pat_pos[3]), .B(\add_128/carry[3] ), .Y(N216) );
  BUFX12 U662 ( .A(n1067), .Y(T_addr[9]) );
  XNOR2X1 U663 ( .A(\sub_330_aco/carry [9]), .B(str_pos[9]), .Y(n1067) );
  NAND2XL U664 ( .A(\sub_331_aco/carry [5]), .B(pat_pos[5]), .Y(n726) );
  OR2X8 U665 ( .A(pat_pos[4]), .B(\sub_331_aco/carry [4]), .Y(
        \sub_331_aco/carry [5]) );
  NAND2XL U666 ( .A(\sub_330_aco/carry [10]), .B(str_pos[10]), .Y(n729) );
  NAND2XL U667 ( .A(n728), .B(n423), .Y(n730) );
  INVXL U668 ( .A(\sub_330_aco/carry [10]), .Y(n728) );
  INVX1 U669 ( .A(n863), .Y(n856) );
  INVX1 U670 ( .A(n975), .Y(n799) );
  NAND2XL U671 ( .A(n975), .B(n756), .Y(n812) );
  NAND2XL U672 ( .A(n975), .B(n758), .Y(n804) );
  NOR3XL U673 ( .A(n752), .B(valid), .C(n762), .Y(n828) );
  NAND2XL U674 ( .A(n975), .B(n760), .Y(n807) );
  AND2XL U675 ( .A(n961), .B(n669), .Y(n876) );
  NAND2XL U676 ( .A(n975), .B(n754), .Y(n928) );
  NAND2XL U677 ( .A(n967), .B(n806), .Y(n927) );
  NOR2XL U678 ( .A(n787), .B(n669), .Y(n803) );
  AND2XL U679 ( .A(N740), .B(n848), .Y(n1028) );
  NOR3XL U680 ( .A(n1017), .B(P_data[7]), .C(n695), .Y(n1016) );
  OAI31X1 U681 ( .A0(n1030), .A1(n1031), .A2(n1032), .B0(n992), .Y(n849) );
  MXI2XL U682 ( .A(n1026), .B(n1033), .S0(N740), .Y(n1032) );
  NAND4XL U683 ( .A(pat_in_reg[5]), .B(pat_in_reg[3]), .C(pat_in_reg[2]), .D(
        pat_in_reg[1]), .Y(n1001) );
  NAND2XL U684 ( .A(n795), .B(st[0]), .Y(n1025) );
  XNOR2XL U685 ( .A(P_data[7]), .B(n740), .Y(N767) );
  NAND2XL U686 ( .A(n695), .B(P_data[6]), .Y(n740) );
  INVXL U687 ( .A(N763), .Y(n988) );
  INVXL U688 ( .A(T_data[5]), .Y(n844) );
  INVXL U689 ( .A(T_data[0]), .Y(n798) );
  INVXL U690 ( .A(n695), .Y(N765) );
  NAND3XL U691 ( .A(st[0]), .B(n973), .C(st[3]), .Y(n853) );
  NOR2XL U692 ( .A(n1025), .B(st[1]), .Y(n865) );
  CLKBUFX3 U693 ( .A(n805), .Y(n760) );
  MXI2XL U694 ( .A(N553), .B(pat_len_reg[6]), .S0(n751), .Y(n862) );
  MXI2XL U695 ( .A(N552), .B(pat_len_reg[5]), .S0(n751), .Y(n861) );
  MXI2XL U696 ( .A(N551), .B(pat_len_reg[4]), .S0(n751), .Y(n860) );
  NAND2XL U697 ( .A(n859), .B(n855), .Y(n628) );
  MXI2XL U698 ( .A(N550), .B(pat_len_reg[3]), .S0(n751), .Y(n859) );
  MXI2XL U699 ( .A(N547), .B(pat_len_reg[0]), .S0(n751), .Y(n854) );
  NAND2XL U700 ( .A(n858), .B(n855), .Y(n629) );
  MXI2XL U701 ( .A(N549), .B(pat_len_reg[2]), .S0(n751), .Y(n858) );
  NAND2XL U702 ( .A(n857), .B(n855), .Y(n630) );
  MXI2XL U703 ( .A(N548), .B(pat_len_reg[1]), .S0(n751), .Y(n857) );
  INVXL U704 ( .A(T_data[2]), .Y(n847) );
  XNOR2XL U705 ( .A(T_data[7]), .B(\add_281_S2/carry[7] ), .Y(n731) );
  XNOR2XL U706 ( .A(T_data[6]), .B(T_data[5]), .Y(n732) );
  MXI2XL U707 ( .A(n752), .B(n749), .S0(str_st[0]), .Y(n829) );
  MXI2XL U708 ( .A(n799), .B(n521), .S0(n808), .Y(n660) );
  AND2XL U709 ( .A(T_data[5]), .B(T_data[6]), .Y(\add_281_S2/carry[7] ) );
  NOR2X1 U710 ( .A(n736), .B(n849), .Y(n846) );
  NAND2XL U711 ( .A(\sub_331_aco/carry [4]), .B(pat_pos[4]), .Y(n734) );
  NAND2XL U712 ( .A(n733), .B(n952), .Y(n735) );
  INVXL U713 ( .A(\sub_331_aco/carry [4]), .Y(n733) );
  NAND4X2 U714 ( .A(n846), .B(n1026), .C(n851), .D(n1027), .Y(n792) );
  NAND2X1 U715 ( .A(pat_pos[6]), .B(n719), .Y(n737) );
  NAND2XL U716 ( .A(n688), .B(n670), .Y(n738) );
  CLKBUFX3 U717 ( .A(n781), .Y(n775) );
  CLKBUFX3 U718 ( .A(n783), .Y(n774) );
  CLKBUFX3 U719 ( .A(n778), .Y(n773) );
  CLKBUFX3 U720 ( .A(n778), .Y(n772) );
  CLKBUFX3 U721 ( .A(n779), .Y(n770) );
  CLKBUFX3 U722 ( .A(n779), .Y(n771) );
  INVX3 U723 ( .A(n881), .Y(n871) );
  CLKBUFX3 U724 ( .A(n764), .Y(n776) );
  CLKBUFX3 U725 ( .A(n782), .Y(n769) );
  CLKBUFX3 U726 ( .A(n1059), .Y(n768) );
  CLKBUFX3 U727 ( .A(n780), .Y(n767) );
  CLKBUFX3 U728 ( .A(n780), .Y(n766) );
  CLKBUFX3 U729 ( .A(n783), .Y(n778) );
  CLKBUFX3 U730 ( .A(n783), .Y(n779) );
  CLKBUFX3 U731 ( .A(n1059), .Y(n777) );
  CLKBUFX3 U732 ( .A(\sub_330_aco/B[0] ), .Y(n761) );
  CLKINVX1 U733 ( .A(n813), .Y(\sub_330_aco/B[0] ) );
  CLKBUFX3 U734 ( .A(n870), .Y(n744) );
  OA21XL U735 ( .A0(n923), .A1(n924), .B0(n922), .Y(n870) );
  CLKBUFX3 U736 ( .A(n875), .Y(n745) );
  CLKINVX1 U737 ( .A(n927), .Y(n875) );
  CLKBUFX3 U738 ( .A(n781), .Y(n765) );
  CLKBUFX3 U739 ( .A(n782), .Y(n781) );
  CLKBUFX3 U740 ( .A(n782), .Y(n780) );
  CLKBUFX3 U741 ( .A(n764), .Y(n783) );
  OAI211X1 U742 ( .A0(n981), .A1(n982), .B0(n983), .C0(n984), .Y(n971) );
  INVX16 U743 ( .A(n675), .Y(valid) );
  NOR2X2 U744 ( .A(n1025), .B(n852), .Y(n923) );
  CLKBUFX3 U745 ( .A(n828), .Y(n749) );
  CLKBUFX3 U746 ( .A(n810), .Y(n754) );
  OAI21XL U747 ( .A0(n673), .A1(n813), .B0(n791), .Y(n810) );
  CLKBUFX3 U748 ( .A(n811), .Y(n756) );
  OAI21XL U749 ( .A0(n667), .A1(n1040), .B0(n791), .Y(n811) );
  CLKBUFX3 U750 ( .A(n802), .Y(n758) );
  OAI21XL U751 ( .A0(n1040), .A1(n963), .B0(n791), .Y(n802) );
  CLKBUFX3 U752 ( .A(n876), .Y(n750) );
  CLKBUFX3 U753 ( .A(n874), .Y(n748) );
  NOR3BXL U754 ( .AN(n961), .B(n963), .C(n669), .Y(n874) );
  CLKBUFX3 U755 ( .A(n812), .Y(n755) );
  CLKBUFX3 U756 ( .A(n807), .Y(n759) );
  CLKBUFX3 U757 ( .A(n804), .Y(n757) );
  CLKBUFX3 U758 ( .A(n928), .Y(n753) );
  CLKBUFX3 U759 ( .A(n796), .Y(n743) );
  OA21XL U760 ( .A0(n852), .A1(n853), .B0(n813), .Y(n796) );
  CLKBUFX3 U761 ( .A(n764), .Y(n782) );
  NOR4X2 U762 ( .A(n1024), .B(n852), .C(st[0]), .D(st[2]), .Y(n964) );
  NAND4BX1 U763 ( .AN(n961), .B(n971), .C(n976), .D(n977), .Y(nst[1]) );
  OAI21XL U764 ( .A0(P_data[2]), .A1(n1019), .B0(n994), .Y(n1014) );
  ADDFXL U765 ( .A(str_st[2]), .B(N298), .CI(\r543/carry [2]), .CO(
        \r543/carry [3]), .S(N302) );
  ADDFXL U766 ( .A(str_st[1]), .B(N297), .CI(\r543/carry [1]), .CO(
        \r543/carry [2]), .S(N301) );
  CLKBUFX3 U767 ( .A(n865), .Y(n762) );
  CLKBUFX3 U768 ( .A(n1055), .Y(n763) );
  OAI31XL U769 ( .A0(n1040), .A1(n1056), .A2(n522), .B0(n791), .Y(n805) );
  CLKBUFX3 U770 ( .A(n872), .Y(n747) );
  AND4XL U771 ( .A(n961), .B(n1056), .C(n1057), .D(n522), .Y(n872) );
  CLKBUFX3 U772 ( .A(n873), .Y(n746) );
  AND3XL U773 ( .A(n961), .B(n1057), .C(n962), .Y(n873) );
  CLKBUFX3 U774 ( .A(n1059), .Y(n764) );
  NOR3X2 U775 ( .A(P_data[2]), .B(P_data[4]), .C(P_data[0]), .Y(n1020) );
  BUFX12 U776 ( .A(n1064), .Y(match_addr[0]) );
  BUFX12 U777 ( .A(n1076), .Y(T_addr[0]) );
  NOR2XL U778 ( .A(T_data[7]), .B(n1034), .Y(n1033) );
  OR2X1 U779 ( .A(pat_pos[1]), .B(\sub_331_aco/carry [1]), .Y(
        \sub_331_aco/carry [2]) );
  OR2X1 U780 ( .A(str_pos[8]), .B(\sub_330_aco/carry [8]), .Y(
        \sub_330_aco/carry [9]) );
  XNOR2X1 U781 ( .A(str_pos[0]), .B(n785), .Y(n1076) );
  OR2X1 U782 ( .A(str_pos[10]), .B(\r553/carry [10]), .Y(\r553/carry [11]) );
  OR2X1 U783 ( .A(str_pos[9]), .B(\r553/carry [9]), .Y(\r553/carry [10]) );
  OR2X1 U784 ( .A(str_pos[8]), .B(\r553/carry [8]), .Y(\r553/carry [9]) );
  OR2X1 U785 ( .A(str_pos[7]), .B(\r553/carry [7]), .Y(\r553/carry [8]) );
  OR2X1 U786 ( .A(str_pos[6]), .B(\r553/carry [6]), .Y(\r553/carry [7]) );
  OR2X1 U787 ( .A(str_pos[5]), .B(\r553/carry [5]), .Y(\r553/carry [6]) );
  OR2X1 U788 ( .A(str_pos[4]), .B(\r553/carry [4]), .Y(\r553/carry [5]) );
  OR2X1 U789 ( .A(str_pos[3]), .B(\r553/carry [3]), .Y(\r553/carry [4]) );
  OR2X1 U790 ( .A(str_pos[2]), .B(str_pos[1]), .Y(\r553/carry [3]) );
  XNOR2X1 U791 ( .A(branch_pat_pos_3[6]), .B(\sub_150_2/carry[6] ), .Y(N457)
         );
  OR2X1 U792 ( .A(branch_pat_pos_3[5]), .B(\sub_150_2/carry[5] ), .Y(
        \sub_150_2/carry[6] ) );
  XNOR2X1 U793 ( .A(\sub_150_2/carry[5] ), .B(branch_pat_pos_3[5]), .Y(N456)
         );
  OR2X1 U794 ( .A(branch_pat_pos_3[4]), .B(\sub_150_2/carry[4] ), .Y(
        \sub_150_2/carry[5] ) );
  XNOR2X1 U795 ( .A(\sub_150_2/carry[4] ), .B(branch_pat_pos_3[4]), .Y(N455)
         );
  OR2X1 U796 ( .A(branch_pat_pos_3[3]), .B(\sub_150_2/carry[3] ), .Y(
        \sub_150_2/carry[4] ) );
  XNOR2X1 U797 ( .A(\sub_150_2/carry[3] ), .B(branch_pat_pos_3[3]), .Y(N454)
         );
  OR2X1 U798 ( .A(branch_pat_pos_3[2]), .B(\sub_150_2/carry[2] ), .Y(
        \sub_150_2/carry[3] ) );
  XNOR2X1 U799 ( .A(\sub_150_2/carry[2] ), .B(branch_pat_pos_3[2]), .Y(N453)
         );
  AND2X1 U800 ( .A(branch_pat_pos_3[0]), .B(branch_pat_pos_3[1]), .Y(
        \sub_150_2/carry[2] ) );
  XOR2X1 U801 ( .A(branch_pat_pos_3[1]), .B(branch_pat_pos_3[0]), .Y(N452) );
  XNOR2X1 U802 ( .A(branch_pat_pos_1[6]), .B(\sub_150_4/carry[6] ), .Y(N473)
         );
  OR2X1 U803 ( .A(branch_pat_pos_1[5]), .B(\sub_150_4/carry[5] ), .Y(
        \sub_150_4/carry[6] ) );
  XNOR2X1 U804 ( .A(\sub_150_4/carry[5] ), .B(branch_pat_pos_1[5]), .Y(N472)
         );
  OR2X1 U805 ( .A(branch_pat_pos_1[4]), .B(\sub_150_4/carry[4] ), .Y(
        \sub_150_4/carry[5] ) );
  XNOR2X1 U806 ( .A(\sub_150_4/carry[4] ), .B(branch_pat_pos_1[4]), .Y(N471)
         );
  OR2X1 U807 ( .A(branch_pat_pos_1[3]), .B(\sub_150_4/carry[3] ), .Y(
        \sub_150_4/carry[4] ) );
  XNOR2X1 U808 ( .A(\sub_150_4/carry[3] ), .B(branch_pat_pos_1[3]), .Y(N470)
         );
  OR2X1 U809 ( .A(branch_pat_pos_1[2]), .B(\sub_150_4/carry[2] ), .Y(
        \sub_150_4/carry[3] ) );
  XNOR2X1 U810 ( .A(\sub_150_4/carry[2] ), .B(branch_pat_pos_1[2]), .Y(N469)
         );
  AND2X1 U811 ( .A(branch_pat_pos_1[0]), .B(branch_pat_pos_1[1]), .Y(
        \sub_150_4/carry[2] ) );
  XOR2X1 U812 ( .A(branch_pat_pos_1[1]), .B(branch_pat_pos_1[0]), .Y(N468) );
  XNOR2X1 U813 ( .A(branch_pat_pos_2[6]), .B(\sub_150_3/carry[6] ), .Y(N465)
         );
  OR2X1 U814 ( .A(branch_pat_pos_2[5]), .B(\sub_150_3/carry[5] ), .Y(
        \sub_150_3/carry[6] ) );
  XNOR2X1 U815 ( .A(\sub_150_3/carry[5] ), .B(branch_pat_pos_2[5]), .Y(N464)
         );
  OR2X1 U816 ( .A(branch_pat_pos_2[4]), .B(\sub_150_3/carry[4] ), .Y(
        \sub_150_3/carry[5] ) );
  XNOR2X1 U817 ( .A(\sub_150_3/carry[4] ), .B(branch_pat_pos_2[4]), .Y(N463)
         );
  OR2X1 U818 ( .A(branch_pat_pos_2[3]), .B(\sub_150_3/carry[3] ), .Y(
        \sub_150_3/carry[4] ) );
  XNOR2X1 U819 ( .A(\sub_150_3/carry[3] ), .B(branch_pat_pos_2[3]), .Y(N462)
         );
  OR2X1 U820 ( .A(branch_pat_pos_2[2]), .B(\sub_150_3/carry[2] ), .Y(
        \sub_150_3/carry[3] ) );
  XNOR2X1 U821 ( .A(\sub_150_3/carry[2] ), .B(branch_pat_pos_2[2]), .Y(N461)
         );
  AND2X1 U822 ( .A(branch_pat_pos_2[0]), .B(branch_pat_pos_2[1]), .Y(
        \sub_150_3/carry[2] ) );
  XOR2X1 U823 ( .A(branch_pat_pos_2[1]), .B(branch_pat_pos_2[0]), .Y(N460) );
  XNOR2X1 U824 ( .A(branch_pat_pos_4[6]), .B(\sub_150/carry[6] ), .Y(N449) );
  OR2X1 U825 ( .A(branch_pat_pos_4[5]), .B(\sub_150/carry[5] ), .Y(
        \sub_150/carry[6] ) );
  XNOR2X1 U826 ( .A(\sub_150/carry[5] ), .B(branch_pat_pos_4[5]), .Y(N448) );
  OR2X1 U827 ( .A(branch_pat_pos_4[4]), .B(\sub_150/carry[4] ), .Y(
        \sub_150/carry[5] ) );
  XNOR2X1 U828 ( .A(\sub_150/carry[4] ), .B(branch_pat_pos_4[4]), .Y(N447) );
  OR2X1 U829 ( .A(branch_pat_pos_4[3]), .B(\sub_150/carry[3] ), .Y(
        \sub_150/carry[4] ) );
  XNOR2X1 U830 ( .A(\sub_150/carry[3] ), .B(branch_pat_pos_4[3]), .Y(N446) );
  OR2X1 U831 ( .A(branch_pat_pos_4[2]), .B(\sub_150/carry[2] ), .Y(
        \sub_150/carry[3] ) );
  XNOR2X1 U832 ( .A(\sub_150/carry[2] ), .B(branch_pat_pos_4[2]), .Y(N445) );
  AND2X1 U833 ( .A(branch_pat_pos_4[0]), .B(branch_pat_pos_4[1]), .Y(
        \sub_150/carry[2] ) );
  XOR2X1 U834 ( .A(branch_pat_pos_4[1]), .B(branch_pat_pos_4[0]), .Y(N444) );
  XOR2X1 U835 ( .A(pat_pos[6]), .B(\add_128/carry[6] ), .Y(N219) );
  AND2X1 U836 ( .A(\add_128/carry[5] ), .B(pat_pos[5]), .Y(\add_128/carry[6] )
         );
  XOR2X1 U837 ( .A(pat_pos[5]), .B(\add_128/carry[5] ), .Y(N218) );
  AND2X1 U838 ( .A(\add_128/carry[2] ), .B(pat_pos[2]), .Y(\add_128/carry[3] )
         );
  XOR2X1 U839 ( .A(pat_pos[2]), .B(\add_128/carry[2] ), .Y(N215) );
  OR2X1 U840 ( .A(pat_pos[1]), .B(pat_pos[0]), .Y(\add_128/carry[2] ) );
  XNOR2X1 U841 ( .A(pat_pos[0]), .B(pat_pos[1]), .Y(N214) );
  XOR2X1 U842 ( .A(str_st[11]), .B(\r543/carry [11]), .Y(N311) );
  AND2X1 U843 ( .A(\r543/carry [10]), .B(str_st[10]), .Y(\r543/carry [11]) );
  XOR2X1 U844 ( .A(str_st[10]), .B(\r543/carry [10]), .Y(N310) );
  AND2X1 U845 ( .A(\r543/carry [9]), .B(str_st[9]), .Y(\r543/carry [10]) );
  XOR2X1 U846 ( .A(str_st[9]), .B(\r543/carry [9]), .Y(N309) );
  AND2X1 U847 ( .A(\r543/carry [8]), .B(str_st[8]), .Y(\r543/carry [9]) );
  XOR2X1 U848 ( .A(str_st[8]), .B(\r543/carry [8]), .Y(N308) );
  AND2X1 U849 ( .A(\r543/carry [7]), .B(str_st[7]), .Y(\r543/carry [8]) );
  XOR2X1 U850 ( .A(str_st[7]), .B(\r543/carry [7]), .Y(N307) );
  AND2X1 U851 ( .A(\r543/carry [6]), .B(str_st[6]), .Y(\r543/carry [7]) );
  XOR2X1 U852 ( .A(str_st[6]), .B(\r543/carry [6]), .Y(N306) );
  AND2X1 U853 ( .A(\r543/carry [5]), .B(str_st[5]), .Y(\r543/carry [6]) );
  XOR2X1 U854 ( .A(str_st[5]), .B(\r543/carry [5]), .Y(N305) );
  AND2X1 U855 ( .A(\r543/carry [4]), .B(str_st[4]), .Y(\r543/carry [5]) );
  XOR2X1 U856 ( .A(str_st[4]), .B(\r543/carry [4]), .Y(N304) );
  AND2X1 U857 ( .A(\r543/carry [3]), .B(str_st[3]), .Y(\r543/carry [4]) );
  XOR2X1 U858 ( .A(str_st[3]), .B(\r543/carry [3]), .Y(N303) );
  OR2X1 U859 ( .A(N296), .B(str_st[0]), .Y(\r543/carry [1]) );
  XNOR2X1 U860 ( .A(str_st[0]), .B(N296), .Y(N300) );
  XOR2X1 U861 ( .A(P_data[6]), .B(n695), .Y(N766) );
  NAND4X1 U862 ( .A(n786), .B(n675), .C(n787), .D(n788), .Y(nst[2]) );
  AOI2BB2X1 U863 ( .B0(n789), .B1(n790), .A0N(n791), .A1N(n792), .Y(n788) );
  CLKINVX1 U864 ( .A(reset), .Y(n1059) );
  NAND3X1 U865 ( .A(st[1]), .B(n794), .C(n795), .Y(n786) );
  OAI22XL U866 ( .A0(n743), .A1(n672), .B0(n797), .B1(n798), .Y(n664) );
  OAI2BB2XL U867 ( .B0(n799), .B1(n800), .A0N(n801), .A1N(n763), .Y(n663) );
  OAI31XL U868 ( .A0(n758), .A1(n522), .A2(n803), .B0(n757), .Y(n662) );
  OAI31XL U869 ( .A0(n760), .A1(n1057), .A2(n806), .B0(n759), .Y(n661) );
  AOI21X1 U870 ( .A0(n1056), .A1(n809), .B0(n754), .Y(n808) );
  OAI31XL U871 ( .A0(n756), .A1(n1056), .A2(n809), .B0(n755), .Y(n659) );
  AND2X1 U872 ( .A(n803), .B(n522), .Y(n809) );
  OAI22XL U873 ( .A0(n1049), .A1(n785), .B0(n814), .B1(n815), .Y(n658) );
  AO22X1 U874 ( .A0(n817), .A1(P_data[2]), .B0(pat_in_reg[2]), .B1(n761), .Y(
        n656) );
  CLKMX2X2 U875 ( .A(n818), .B(pat_in_reg[3]), .S0(n761), .Y(n655) );
  AO22X1 U876 ( .A0(n817), .A1(P_data[4]), .B0(pat_in_reg[4]), .B1(n761), .Y(
        n654) );
  CLKINVX1 U877 ( .A(n814), .Y(n817) );
  NOR2X1 U878 ( .A(n819), .B(n820), .Y(n814) );
  CLKINVX1 U879 ( .A(n821), .Y(n653) );
  AOI221XL U880 ( .A0(pat_in_reg[5]), .A1(n761), .B0(n695), .B1(n819), .C0(
        n820), .Y(n821) );
  CLKINVX1 U881 ( .A(n822), .Y(n652) );
  AOI222XL U882 ( .A0(n820), .A1(N766), .B0(P_data[6]), .B1(n819), .C0(
        pat_in_reg[6]), .C1(n761), .Y(n822) );
  CLKINVX1 U883 ( .A(n823), .Y(n651) );
  AOI222XL U884 ( .A0(n820), .A1(N767), .B0(n819), .B1(P_data[7]), .C0(
        pat_in_reg[7]), .C1(n761), .Y(n823) );
  NOR3X1 U885 ( .A(n761), .B(n824), .C(n825), .Y(n819) );
  CLKINVX1 U886 ( .A(n826), .Y(n650) );
  AOI222XL U887 ( .A0(n752), .A1(N123), .B0(n749), .B1(str_st[1]), .C0(valid), 
        .C1(N301), .Y(n826) );
  OAI2BB1X1 U888 ( .A0N(valid), .A1N(N300), .B0(n829), .Y(n649) );
  CLKINVX1 U889 ( .A(n830), .Y(n648) );
  AOI222XL U890 ( .A0(n752), .A1(N124), .B0(n749), .B1(str_st[2]), .C0(valid), 
        .C1(N302), .Y(n830) );
  CLKINVX1 U891 ( .A(n831), .Y(n647) );
  AOI222XL U892 ( .A0(n752), .A1(N125), .B0(n749), .B1(str_st[3]), .C0(valid), 
        .C1(N303), .Y(n831) );
  CLKINVX1 U893 ( .A(n832), .Y(n646) );
  AOI222XL U894 ( .A0(n752), .A1(N126), .B0(n749), .B1(str_st[4]), .C0(valid), 
        .C1(N304), .Y(n832) );
  CLKINVX1 U895 ( .A(n833), .Y(n645) );
  AOI222XL U896 ( .A0(n752), .A1(N127), .B0(n749), .B1(str_st[5]), .C0(valid), 
        .C1(N305), .Y(n833) );
  CLKINVX1 U897 ( .A(n834), .Y(n644) );
  AOI222XL U898 ( .A0(n752), .A1(N128), .B0(n749), .B1(str_st[6]), .C0(valid), 
        .C1(N306), .Y(n834) );
  CLKINVX1 U899 ( .A(n835), .Y(n643) );
  AOI222XL U900 ( .A0(n752), .A1(N129), .B0(n749), .B1(str_st[7]), .C0(valid), 
        .C1(N307), .Y(n835) );
  CLKINVX1 U901 ( .A(n836), .Y(n642) );
  AOI222XL U902 ( .A0(n752), .A1(N130), .B0(n749), .B1(str_st[8]), .C0(valid), 
        .C1(N308), .Y(n836) );
  CLKINVX1 U903 ( .A(n837), .Y(n641) );
  AOI222XL U904 ( .A0(n752), .A1(N131), .B0(n749), .B1(str_st[9]), .C0(valid), 
        .C1(N309), .Y(n837) );
  CLKINVX1 U905 ( .A(n838), .Y(n640) );
  AOI222XL U906 ( .A0(n752), .A1(N132), .B0(n749), .B1(str_st[10]), .C0(valid), 
        .C1(N310), .Y(n838) );
  CLKINVX1 U907 ( .A(n839), .Y(n639) );
  AOI222XL U908 ( .A0(n752), .A1(N133), .B0(n749), .B1(str_st[11]), .C0(valid), 
        .C1(N311), .Y(n839) );
  OAI222XL U909 ( .A0(n840), .A1(n841), .B0(n842), .B1(n731), .C0(n1050), .C1(
        n743), .Y(n638) );
  CLKINVX1 U910 ( .A(T_data[7]), .Y(n841) );
  OAI222XL U911 ( .A0(n840), .A1(n843), .B0(n842), .B1(n732), .C0(n1051), .C1(
        n743), .Y(n637) );
  CLKINVX1 U912 ( .A(T_data[6]), .Y(n843) );
  OAI221XL U913 ( .A0(n1052), .A1(n743), .B0(n844), .B1(n840), .C0(n842), .Y(
        n636) );
  OAI22XL U914 ( .A0(n1053), .A1(n743), .B0(n797), .B1(n845), .Y(n635) );
  MXI2X1 U915 ( .A(n693), .B(n846), .S0(n743), .Y(n634) );
  OAI22XL U916 ( .A0(n1054), .A1(n743), .B0(n797), .B1(n847), .Y(n633) );
  AND2X1 U917 ( .A(n840), .B(n842), .Y(n797) );
  NAND2X1 U918 ( .A(n743), .B(n848), .Y(n842) );
  NAND3BX1 U919 ( .AN(n849), .B(n850), .C(n743), .Y(n840) );
  MXI2X1 U920 ( .A(n692), .B(n851), .S0(n743), .Y(n632) );
  NAND2X1 U921 ( .A(n854), .B(n855), .Y(n631) );
  NAND2X1 U922 ( .A(n860), .B(n855), .Y(n627) );
  NAND2X1 U923 ( .A(n861), .B(n855), .Y(n626) );
  NAND2X1 U924 ( .A(n862), .B(n855), .Y(n625) );
  OR4X1 U925 ( .A(n863), .B(n864), .C(nst[0]), .D(nst[1]), .Y(n855) );
  CLKMX2X2 U926 ( .A(pat_st[0]), .B(N168), .S0(n762), .Y(n624) );
  CLKMX2X2 U927 ( .A(pat_st[1]), .B(N169), .S0(n762), .Y(n623) );
  CLKMX2X2 U928 ( .A(pat_st[2]), .B(N170), .S0(n762), .Y(n622) );
  CLKMX2X2 U929 ( .A(pat_st[3]), .B(N171), .S0(n762), .Y(n621) );
  CLKMX2X2 U930 ( .A(pat_st[4]), .B(N172), .S0(n762), .Y(n620) );
  CLKMX2X2 U931 ( .A(pat_st[5]), .B(N173), .S0(n762), .Y(n619) );
  CLKMX2X2 U932 ( .A(pat_st[6]), .B(N174), .S0(n762), .Y(n618) );
  NAND4X1 U933 ( .A(n866), .B(n867), .C(n868), .D(n869), .Y(n617) );
  AOI2BB2X1 U934 ( .B0(N134), .B1(n744), .A0N(n871), .A1N(n687), .Y(n869) );
  AOI22X1 U935 ( .A0(N391), .A1(n747), .B0(N365), .B1(n746), .Y(n868) );
  AOI22X1 U936 ( .A0(N378), .A1(n748), .B0(N122), .B1(n745), .Y(n867) );
  AOI22X1 U937 ( .A0(N352), .A1(n750), .B0(valid), .B1(N300), .Y(n866) );
  NAND4X1 U938 ( .A(n877), .B(n878), .C(n879), .D(n880), .Y(n616) );
  AOI22X1 U939 ( .A0(N135), .A1(n744), .B0(n881), .B1(str_pos[1]), .Y(n880) );
  AOI22X1 U940 ( .A0(N392), .A1(n747), .B0(N366), .B1(n746), .Y(n879) );
  AOI22X1 U941 ( .A0(N379), .A1(n748), .B0(n745), .B1(N123), .Y(n878) );
  AOI22X1 U942 ( .A0(N353), .A1(n750), .B0(valid), .B1(N301), .Y(n877) );
  NAND4X1 U943 ( .A(n882), .B(n883), .C(n884), .D(n885), .Y(n615) );
  AOI2BB2X1 U944 ( .B0(N136), .B1(n744), .A0N(n871), .A1N(n415), .Y(n885) );
  AOI22X1 U945 ( .A0(N393), .A1(n747), .B0(N367), .B1(n746), .Y(n884) );
  AOI22X1 U946 ( .A0(N380), .A1(n748), .B0(n745), .B1(N124), .Y(n883) );
  AOI22X1 U947 ( .A0(N354), .A1(n750), .B0(valid), .B1(N302), .Y(n882) );
  NAND4X1 U948 ( .A(n886), .B(n887), .C(n888), .D(n889), .Y(n614) );
  AOI2BB2X1 U949 ( .B0(N137), .B1(n744), .A0N(n871), .A1N(n416), .Y(n889) );
  AOI22X1 U950 ( .A0(N394), .A1(n747), .B0(N368), .B1(n746), .Y(n888) );
  AOI22X1 U951 ( .A0(N381), .A1(n748), .B0(n745), .B1(N125), .Y(n887) );
  AOI22X1 U952 ( .A0(N355), .A1(n750), .B0(valid), .B1(N303), .Y(n886) );
  NAND4X1 U953 ( .A(n890), .B(n891), .C(n892), .D(n893), .Y(n613) );
  AOI2BB2X1 U954 ( .B0(N138), .B1(n744), .A0N(n871), .A1N(n417), .Y(n893) );
  AOI22X1 U955 ( .A0(N395), .A1(n747), .B0(N369), .B1(n746), .Y(n892) );
  AOI22X1 U956 ( .A0(N382), .A1(n748), .B0(n745), .B1(N126), .Y(n891) );
  AOI22X1 U957 ( .A0(N356), .A1(n750), .B0(valid), .B1(N304), .Y(n890) );
  NAND4X1 U958 ( .A(n894), .B(n895), .C(n896), .D(n897), .Y(n612) );
  AOI2BB2X1 U959 ( .B0(N139), .B1(n744), .A0N(n871), .A1N(n418), .Y(n897) );
  AOI22X1 U960 ( .A0(N396), .A1(n747), .B0(N370), .B1(n746), .Y(n896) );
  AOI22X1 U961 ( .A0(N383), .A1(n748), .B0(n745), .B1(N127), .Y(n895) );
  AOI22X1 U962 ( .A0(N357), .A1(n750), .B0(valid), .B1(N305), .Y(n894) );
  NAND4X1 U963 ( .A(n898), .B(n899), .C(n900), .D(n901), .Y(n611) );
  AOI2BB2X1 U964 ( .B0(N140), .B1(n744), .A0N(n871), .A1N(n419), .Y(n901) );
  AOI22X1 U965 ( .A0(N397), .A1(n747), .B0(N371), .B1(n746), .Y(n900) );
  AOI22X1 U966 ( .A0(N384), .A1(n748), .B0(n745), .B1(N128), .Y(n899) );
  AOI22X1 U967 ( .A0(N358), .A1(n750), .B0(valid), .B1(N306), .Y(n898) );
  NAND4X1 U968 ( .A(n902), .B(n903), .C(n904), .D(n905), .Y(n610) );
  AOI2BB2X1 U969 ( .B0(N141), .B1(n744), .A0N(n871), .A1N(n420), .Y(n905) );
  AOI22X1 U970 ( .A0(N398), .A1(n747), .B0(N372), .B1(n746), .Y(n904) );
  AOI22X1 U971 ( .A0(N385), .A1(n748), .B0(n745), .B1(N129), .Y(n903) );
  AOI22X1 U972 ( .A0(N359), .A1(n750), .B0(valid), .B1(N307), .Y(n902) );
  NAND4X1 U973 ( .A(n906), .B(n907), .C(n908), .D(n909), .Y(n609) );
  AOI2BB2X1 U974 ( .B0(N142), .B1(n744), .A0N(n871), .A1N(n421), .Y(n909) );
  AOI22X1 U975 ( .A0(N399), .A1(n747), .B0(N373), .B1(n746), .Y(n908) );
  AOI22X1 U976 ( .A0(N386), .A1(n748), .B0(n745), .B1(N130), .Y(n907) );
  AOI22X1 U977 ( .A0(N360), .A1(n750), .B0(valid), .B1(N308), .Y(n906) );
  NAND4X1 U978 ( .A(n910), .B(n911), .C(n912), .D(n913), .Y(n608) );
  AOI2BB2X1 U979 ( .B0(N143), .B1(n744), .A0N(n871), .A1N(n422), .Y(n913) );
  AOI22X1 U980 ( .A0(N400), .A1(n747), .B0(N374), .B1(n746), .Y(n912) );
  AOI22X1 U981 ( .A0(N387), .A1(n748), .B0(n745), .B1(N131), .Y(n911) );
  AOI22X1 U982 ( .A0(N361), .A1(n750), .B0(valid), .B1(N309), .Y(n910) );
  NAND4X1 U983 ( .A(n914), .B(n915), .C(n916), .D(n917), .Y(n607) );
  AOI2BB2X1 U984 ( .B0(N144), .B1(n744), .A0N(n871), .A1N(n423), .Y(n917) );
  AOI22X1 U985 ( .A0(N401), .A1(n747), .B0(N375), .B1(n746), .Y(n916) );
  AOI22X1 U986 ( .A0(N388), .A1(n748), .B0(n745), .B1(N132), .Y(n915) );
  AOI22X1 U987 ( .A0(N362), .A1(n750), .B0(valid), .B1(N310), .Y(n914) );
  NAND4X1 U988 ( .A(n918), .B(n919), .C(n920), .D(n921), .Y(n606) );
  AOI2BB2X1 U989 ( .B0(N145), .B1(n744), .A0N(n871), .A1N(n424), .Y(n921) );
  NAND2X1 U990 ( .A(n922), .B(n793), .Y(n881) );
  AND2X1 U991 ( .A(n925), .B(n813), .Y(n922) );
  CLKINVX1 U992 ( .A(n926), .Y(n924) );
  AOI22X1 U993 ( .A0(N402), .A1(n747), .B0(N376), .B1(n746), .Y(n920) );
  AOI22X1 U994 ( .A0(N389), .A1(n748), .B0(n745), .B1(N133), .Y(n919) );
  AOI22X1 U995 ( .A0(N363), .A1(n750), .B0(valid), .B1(N311), .Y(n918) );
  OAI22XL U996 ( .A0(n425), .A1(n754), .B0(n687), .B1(n753), .Y(n605) );
  OAI22XL U997 ( .A0(n426), .A1(n754), .B0(str_pos[1]), .B1(n753), .Y(n604) );
  OAI22XL U998 ( .A0(n427), .A1(n754), .B0(n753), .B1(n690), .Y(n603) );
  OAI22XL U999 ( .A0(n428), .A1(n754), .B0(n753), .B1(n691), .Y(n602) );
  OAI22XL U1000 ( .A0(n429), .A1(n754), .B0(n753), .B1(n681), .Y(n601) );
  OAI22XL U1001 ( .A0(n430), .A1(n754), .B0(n753), .B1(n682), .Y(n600) );
  OAI22XL U1002 ( .A0(n431), .A1(n754), .B0(n753), .B1(n678), .Y(n599) );
  OAI22XL U1003 ( .A0(n432), .A1(n754), .B0(n753), .B1(n679), .Y(n598) );
  OAI22XL U1004 ( .A0(n433), .A1(n754), .B0(n753), .B1(n680), .Y(n597) );
  OAI22XL U1005 ( .A0(n434), .A1(n754), .B0(n753), .B1(n677), .Y(n596) );
  OAI22XL U1006 ( .A0(n435), .A1(n754), .B0(n753), .B1(n676), .Y(n595) );
  OAI22XL U1007 ( .A0(n436), .A1(n754), .B0(n753), .B1(n674), .Y(n594) );
  OAI22XL U1008 ( .A0(n437), .A1(n756), .B0(n687), .B1(n755), .Y(n593) );
  OAI22XL U1009 ( .A0(n438), .A1(n756), .B0(str_pos[1]), .B1(n755), .Y(n592)
         );
  OAI22XL U1010 ( .A0(n439), .A1(n756), .B0(n690), .B1(n755), .Y(n591) );
  OAI22XL U1011 ( .A0(n440), .A1(n756), .B0(n691), .B1(n755), .Y(n590) );
  OAI22XL U1012 ( .A0(n441), .A1(n756), .B0(n681), .B1(n755), .Y(n589) );
  OAI22XL U1013 ( .A0(n442), .A1(n756), .B0(n682), .B1(n755), .Y(n588) );
  OAI22XL U1014 ( .A0(n443), .A1(n756), .B0(n678), .B1(n755), .Y(n587) );
  OAI22XL U1015 ( .A0(n444), .A1(n756), .B0(n679), .B1(n755), .Y(n586) );
  OAI22XL U1016 ( .A0(n445), .A1(n756), .B0(n680), .B1(n755), .Y(n585) );
  OAI22XL U1017 ( .A0(n446), .A1(n756), .B0(n677), .B1(n755), .Y(n584) );
  OAI22XL U1018 ( .A0(n447), .A1(n756), .B0(n676), .B1(n755), .Y(n583) );
  OAI22XL U1019 ( .A0(n448), .A1(n756), .B0(n674), .B1(n755), .Y(n582) );
  OAI22XL U1020 ( .A0(n449), .A1(n758), .B0(n687), .B1(n757), .Y(n581) );
  OAI22XL U1021 ( .A0(n450), .A1(n758), .B0(str_pos[1]), .B1(n757), .Y(n580)
         );
  OAI22XL U1022 ( .A0(n451), .A1(n758), .B0(n690), .B1(n757), .Y(n579) );
  OAI22XL U1023 ( .A0(n452), .A1(n758), .B0(n691), .B1(n757), .Y(n578) );
  OAI22XL U1024 ( .A0(n453), .A1(n758), .B0(n681), .B1(n757), .Y(n577) );
  OAI22XL U1025 ( .A0(n454), .A1(n758), .B0(n682), .B1(n757), .Y(n576) );
  OAI22XL U1026 ( .A0(n455), .A1(n758), .B0(n678), .B1(n757), .Y(n575) );
  OAI22XL U1027 ( .A0(n456), .A1(n758), .B0(n679), .B1(n757), .Y(n574) );
  OAI22XL U1028 ( .A0(n457), .A1(n758), .B0(n680), .B1(n757), .Y(n573) );
  OAI22XL U1029 ( .A0(n458), .A1(n758), .B0(n677), .B1(n757), .Y(n572) );
  OAI22XL U1030 ( .A0(n459), .A1(n758), .B0(n676), .B1(n757), .Y(n571) );
  OAI22XL U1031 ( .A0(n460), .A1(n758), .B0(n674), .B1(n757), .Y(n570) );
  OAI22XL U1032 ( .A0(n461), .A1(n760), .B0(n687), .B1(n759), .Y(n569) );
  OAI22XL U1033 ( .A0(n462), .A1(n760), .B0(str_pos[1]), .B1(n759), .Y(n568)
         );
  OAI22XL U1034 ( .A0(n463), .A1(n760), .B0(n690), .B1(n759), .Y(n567) );
  OAI22XL U1035 ( .A0(n464), .A1(n760), .B0(n691), .B1(n759), .Y(n566) );
  OAI22XL U1036 ( .A0(n465), .A1(n760), .B0(n681), .B1(n759), .Y(n565) );
  OAI22XL U1037 ( .A0(n466), .A1(n760), .B0(n682), .B1(n759), .Y(n564) );
  OAI22XL U1038 ( .A0(n467), .A1(n760), .B0(n678), .B1(n759), .Y(n563) );
  OAI22XL U1039 ( .A0(n468), .A1(n760), .B0(n679), .B1(n759), .Y(n562) );
  OAI22XL U1040 ( .A0(n469), .A1(n760), .B0(n680), .B1(n759), .Y(n561) );
  OAI22XL U1041 ( .A0(n470), .A1(n760), .B0(n677), .B1(n759), .Y(n560) );
  OAI22XL U1042 ( .A0(n471), .A1(n760), .B0(n676), .B1(n759), .Y(n559) );
  OAI22XL U1043 ( .A0(n472), .A1(n760), .B0(n674), .B1(n759), .Y(n558) );
  NAND4X1 U1044 ( .A(n929), .B(n930), .C(n931), .D(n932), .Y(n557) );
  AOI222XL U1045 ( .A0(n480), .A1(n748), .B0(n473), .B1(n747), .C0(n487), .C1(
        n746), .Y(n932) );
  AOI22X1 U1046 ( .A0(N146), .A1(n935), .B0(n494), .B1(n750), .Y(n930) );
  AOI22X1 U1047 ( .A0(N213), .A1(n923), .B0(n762), .B1(N168), .Y(n929) );
  NAND4X1 U1048 ( .A(n936), .B(n937), .C(n938), .D(n939), .Y(n556) );
  AOI222XL U1049 ( .A0(N460), .A1(n748), .B0(N468), .B1(n747), .C0(N452), .C1(
        n746), .Y(n939) );
  AOI22X1 U1050 ( .A0(N214), .A1(n923), .B0(n762), .B1(N169), .Y(n936) );
  NAND4X1 U1051 ( .A(n940), .B(n941), .C(n942), .D(n943), .Y(n555) );
  AOI222XL U1052 ( .A0(N461), .A1(n748), .B0(N469), .B1(n747), .C0(N453), .C1(
        n746), .Y(n943) );
  AOI22X1 U1053 ( .A0(N215), .A1(n923), .B0(n762), .B1(N170), .Y(n940) );
  NAND4X1 U1054 ( .A(n944), .B(n945), .C(n946), .D(n947), .Y(n554) );
  AOI222XL U1055 ( .A0(N462), .A1(n748), .B0(N470), .B1(n747), .C0(N454), .C1(
        n746), .Y(n947) );
  AOI22X1 U1056 ( .A0(N216), .A1(n923), .B0(n762), .B1(N171), .Y(n944) );
  NAND4X1 U1057 ( .A(n948), .B(n949), .C(n950), .D(n951), .Y(n553) );
  AOI222XL U1058 ( .A0(N463), .A1(n748), .B0(N471), .B1(n747), .C0(N455), .C1(
        n746), .Y(n951) );
  AOI22X1 U1059 ( .A0(N217), .A1(n923), .B0(n762), .B1(N172), .Y(n948) );
  NAND4X1 U1060 ( .A(n953), .B(n954), .C(n955), .D(n956), .Y(n552) );
  AOI222XL U1061 ( .A0(N464), .A1(n748), .B0(N472), .B1(n747), .C0(N456), .C1(
        n746), .Y(n956) );
  AOI22X1 U1062 ( .A0(N218), .A1(n923), .B0(n762), .B1(N173), .Y(n953) );
  NAND4X1 U1063 ( .A(n957), .B(n958), .C(n959), .D(n960), .Y(n551) );
  AOI222XL U1064 ( .A0(N465), .A1(n748), .B0(N473), .B1(n747), .C0(N457), .C1(
        n746), .Y(n960) );
  NAND4BBXL U1065 ( .AN(n923), .BN(n964), .C(n787), .D(n965), .Y(n925) );
  NOR2BX1 U1066 ( .AN(n749), .B(n966), .Y(n965) );
  AOI211X1 U1067 ( .A0(n793), .A1(n964), .B0(n752), .C0(n966), .Y(n926) );
  NAND3BX1 U1068 ( .AN(n790), .B(n853), .C(n799), .Y(n966) );
  NOR4BX1 U1069 ( .AN(n971), .B(n961), .C(n964), .D(n752), .Y(n970) );
  NAND2X1 U1070 ( .A(n790), .B(n972), .Y(n969) );
  OAI2BB1X1 U1071 ( .A0N(n974), .A1N(n813), .B0(n975), .Y(n968) );
  AOI222XL U1072 ( .A0(n795), .A1(st[1]), .B0(n790), .B1(n789), .C0(n978), 
        .C1(n964), .Y(n977) );
  CLKINVX1 U1073 ( .A(n972), .Y(n789) );
  NAND4BBXL U1074 ( .AN(pat_len_reg[1]), .BN(pat_len_reg[2]), .C(
        pat_len_reg[0]), .D(n979), .Y(n972) );
  NOR4X1 U1075 ( .A(pat_len_reg[6]), .B(pat_len_reg[5]), .C(pat_len_reg[4]), 
        .D(pat_len_reg[3]), .Y(n979) );
  NAND2X1 U1076 ( .A(n792), .B(n980), .Y(n974) );
  NAND4BX1 U1077 ( .AN(P_data[7]), .B(N765), .C(n815), .D(n993), .Y(n800) );
  AND3X1 U1078 ( .A(n994), .B(P_data[2]), .C(N761), .Y(n993) );
  NAND2X1 U1079 ( .A(n995), .B(n815), .Y(n991) );
  NAND3X1 U1080 ( .A(n988), .B(n996), .C(n985), .Y(n990) );
  CLKINVX1 U1081 ( .A(P_data[4]), .Y(n996) );
  NAND2X1 U1082 ( .A(N763), .B(n820), .Y(n989) );
  OAI22XL U1083 ( .A0(n998), .A1(n999), .B0(n1000), .B1(n1001), .Y(n980) );
  OAI211X1 U1084 ( .A0(n1002), .A1(n1003), .B0(n1049), .C0(n1004), .Y(n1000)
         );
  NOR3X1 U1085 ( .A(pat_in_reg[4]), .B(pat_in_reg[7]), .C(pat_in_reg[6]), .Y(
        n1004) );
  NAND4X1 U1086 ( .A(str_in_reg[3]), .B(str_in_reg[1]), .C(n1050), .D(n1051), 
        .Y(n1003) );
  NAND4X1 U1087 ( .A(n1052), .B(n1053), .C(n1054), .D(n672), .Y(n1002) );
  NAND4X1 U1088 ( .A(n1005), .B(n1006), .C(n1007), .D(n1008), .Y(n999) );
  XOR2X1 U1089 ( .A(pat_in_reg[2]), .B(n1054), .Y(n1008) );
  XNOR2X1 U1090 ( .A(n672), .B(n1049), .Y(n1007) );
  XNOR2X1 U1091 ( .A(pat_in_reg[1]), .B(str_in_reg[1]), .Y(n1006) );
  XNOR2X1 U1092 ( .A(pat_in_reg[3]), .B(str_in_reg[3]), .Y(n1005) );
  NAND4X1 U1093 ( .A(n1009), .B(n1010), .C(n1011), .D(n1012), .Y(n998) );
  XOR2X1 U1094 ( .A(pat_in_reg[4]), .B(n1053), .Y(n1012) );
  XOR2X1 U1095 ( .A(pat_in_reg[5]), .B(n1052), .Y(n1011) );
  XOR2X1 U1096 ( .A(pat_in_reg[6]), .B(n1051), .Y(n1010) );
  XOR2X1 U1097 ( .A(pat_in_reg[7]), .B(n1050), .Y(n1009) );
  CLKINVX1 U1098 ( .A(n1013), .Y(n997) );
  NAND3X1 U1099 ( .A(n815), .B(n985), .C(n1018), .Y(n1015) );
  NOR3X1 U1100 ( .A(P_data[2]), .B(P_data[4]), .C(N763), .Y(n1018) );
  AND3X1 U1101 ( .A(P_data[6]), .B(P_data[4]), .C(N763), .Y(n994) );
  NOR4BX1 U1102 ( .AN(n1020), .B(N767), .C(N766), .D(N765), .Y(n981) );
  NOR2X1 U1103 ( .A(n787), .B(n967), .Y(n961) );
  NOR4X1 U1104 ( .A(n667), .B(n669), .C(n962), .D(n673), .Y(n967) );
  NOR4X1 U1105 ( .A(n852), .B(st[0]), .C(st[2]), .D(st[3]), .Y(n806) );
  OAI2BB2XL U1106 ( .B0(n1023), .B1(n751), .A0N(n978), .A1N(n964), .Y(n1022)
         );
  NOR4X1 U1107 ( .A(n1024), .B(st[0]), .C(st[1]), .D(st[2]), .Y(n863) );
  CLKINVX1 U1108 ( .A(n1025), .Y(n1021) );
  NOR4X1 U1109 ( .A(T_data[5]), .B(T_data[4]), .C(T_data[2]), .D(T_data[0]), 
        .Y(n1027) );
  MXI2X1 U1110 ( .A(n845), .B(T_data[6]), .S0(n844), .Y(n1031) );
  OAI211X1 U1111 ( .A0(T_data[4]), .A1(n1034), .B0(n798), .C0(T_data[2]), .Y(
        n1030) );
  NOR3X1 U1112 ( .A(n1026), .B(T_data[7]), .C(T_data[5]), .Y(n1036) );
  MXI2X1 U1113 ( .A(n1037), .B(n1038), .S0(n845), .Y(n1035) );
  NOR2X1 U1114 ( .A(n1039), .B(n1034), .Y(n1037) );
  AOI21X1 U1115 ( .A0(T_data[0]), .A1(N740), .B0(T_data[2]), .Y(n1039) );
  AOI22X1 U1116 ( .A0(N219), .A1(n923), .B0(n762), .B1(N174), .Y(n957) );
  OAI22XL U1117 ( .A0(n473), .A1(n754), .B0(n753), .B1(N213), .Y(n550) );
  OAI22XL U1118 ( .A0(n474), .A1(n754), .B0(n753), .B1(n686), .Y(n549) );
  OAI22XL U1119 ( .A0(n475), .A1(n754), .B0(n753), .B1(n689), .Y(n548) );
  OAI22XL U1120 ( .A0(n476), .A1(n754), .B0(n753), .B1(n684), .Y(n547) );
  OAI22XL U1121 ( .A0(n477), .A1(n754), .B0(n753), .B1(n952), .Y(n546) );
  OAI22XL U1122 ( .A0(n478), .A1(n754), .B0(n753), .B1(n685), .Y(n545) );
  OAI22XL U1123 ( .A0(n479), .A1(n754), .B0(n753), .B1(n688), .Y(n544) );
  OAI22XL U1124 ( .A0(n480), .A1(n756), .B0(n755), .B1(N213), .Y(n543) );
  OAI22XL U1125 ( .A0(n481), .A1(n756), .B0(n755), .B1(n686), .Y(n542) );
  OAI22XL U1126 ( .A0(n482), .A1(n756), .B0(n755), .B1(n689), .Y(n541) );
  OAI22XL U1127 ( .A0(n483), .A1(n756), .B0(n755), .B1(n684), .Y(n540) );
  OAI22XL U1128 ( .A0(n484), .A1(n756), .B0(n755), .B1(n952), .Y(n539) );
  OAI22XL U1129 ( .A0(n485), .A1(n756), .B0(n755), .B1(n685), .Y(n538) );
  OAI22XL U1130 ( .A0(n486), .A1(n756), .B0(n755), .B1(n688), .Y(n537) );
  OAI22XL U1131 ( .A0(n487), .A1(n758), .B0(n757), .B1(N213), .Y(n536) );
  OAI22XL U1132 ( .A0(n488), .A1(n758), .B0(n757), .B1(n686), .Y(n535) );
  OAI22XL U1133 ( .A0(n489), .A1(n758), .B0(n757), .B1(n689), .Y(n534) );
  OAI22XL U1134 ( .A0(n490), .A1(n758), .B0(n757), .B1(n684), .Y(n533) );
  OAI22XL U1135 ( .A0(n491), .A1(n758), .B0(n757), .B1(n952), .Y(n532) );
  OAI22XL U1136 ( .A0(n492), .A1(n758), .B0(n757), .B1(n685), .Y(n531) );
  OAI22XL U1137 ( .A0(n493), .A1(n758), .B0(n757), .B1(n688), .Y(n530) );
  OAI22XL U1138 ( .A0(n494), .A1(n760), .B0(n759), .B1(N213), .Y(n529) );
  OAI22XL U1139 ( .A0(n495), .A1(n760), .B0(n759), .B1(n686), .Y(n528) );
  OAI22XL U1140 ( .A0(n496), .A1(n760), .B0(n759), .B1(n689), .Y(n527) );
  OAI22XL U1141 ( .A0(n497), .A1(n760), .B0(n759), .B1(n684), .Y(n526) );
  OAI22XL U1142 ( .A0(n498), .A1(n760), .B0(n759), .B1(n952), .Y(n525) );
  OAI22XL U1143 ( .A0(n499), .A1(n760), .B0(n759), .B1(n685), .Y(n524) );
  OAI22XL U1144 ( .A0(n500), .A1(n760), .B0(n759), .B1(n688), .Y(n523) );
  NAND3X1 U1145 ( .A(n794), .B(n852), .C(n795), .Y(n791) );
  NAND2X1 U1146 ( .A(n761), .B(n673), .Y(n1040) );
  CLKINVX1 U1147 ( .A(n762), .Y(n801) );
  NOR2X1 U1148 ( .A(n973), .B(st[3]), .Y(n795) );
  XOR2X1 U1149 ( .A(str_st[0]), .B(n763), .Y(n1064) );
  NOR3X1 U1150 ( .A(n1044), .B(n1057), .C(n1045), .Y(N298) );
  CLKINVX1 U1151 ( .A(n1046), .Y(n1044) );
  XOR2X1 U1152 ( .A(n1047), .B(n1045), .Y(N297) );
  OA22X1 U1153 ( .A0(n1056), .A1(n522), .B0(n521), .B1(n1048), .Y(n1045) );
  NAND2X1 U1154 ( .A(n1046), .B(n669), .Y(n1047) );
  XNOR2X1 U1155 ( .A(n1046), .B(n1057), .Y(N296) );
  XOR2X1 U1156 ( .A(n521), .B(n1048), .Y(n1046) );
  OA21XL U1157 ( .A0(n522), .A1(n667), .B0(n963), .Y(n1048) );
  NAND2X1 U1158 ( .A(n522), .B(n667), .Y(n963) );
  SME_DW01_inc_0 add_181 ( .A(pat_len_reg), .SUM({N553, N552, N551, N550, N549, 
        N548, N547}) );
  SME_DW01_dec_0 sub_144_4 ( .A(branch_str_pos_1), .SUM({N402, N401, N400, 
        N399, N398, N397, N396, N395, N394, N393, N392, N391}) );
  SME_DW01_dec_1 sub_144_3 ( .A(branch_str_pos_2), .SUM({N389, N388, N387, 
        N386, N385, N384, N383, N382, N381, N380, N379, N378}) );
  SME_DW01_dec_2 sub_144_2 ( .A(branch_str_pos_3), .SUM({N376, N375, N374, 
        N373, N372, N371, N370, N369, N368, N367, N366, N365}) );
  SME_DW01_dec_3 sub_144 ( .A(branch_str_pos_4), .SUM({N363, N362, N361, N360, 
        N359, N358, N357, N356, N355, N354, N353, N352}) );
  SME_DW01_add_1 r539 ( .A(pat_st), .B(pat_len_reg), .CI(1'b0), .SUM({N174, 
        N173, N172, N171, N170, N169, N168}) );
  SME_DW01_inc_1 r538 ( .A(pat_pos), .SUM({N152, N151, N150, N149, N148, N147, 
        N146}) );
  SME_DW01_inc_2 r537 ( .A(str_pos), .SUM({N145, N144, N143, N142, N141, N140, 
        N139, N138, N137, N136, N135, N134}) );
  SME_DW01_inc_3 r536 ( .A(str_st), .SUM({N133, N132, N131, N130, N129, N128, 
        N127, N126, N125, N124, N123, N122}) );
  DFFRX1 \pattern_no_reg_reg[1]  ( .D(n503), .CK(clk), .RN(n776), .Q(n1063) );
  DFFRX1 \pattern_no_reg_reg[0]  ( .D(n504), .CK(clk), .RN(n776), .Q(n1088) );
  DFFRX2 \str_pos_reg[1]  ( .D(n616), .CK(clk), .RN(n775), .Q(str_pos[1]) );
  DFFRX2 \st_reg[2]  ( .D(nst[2]), .CK(clk), .RN(n765), .Q(st[2]), .QN(n973)
         );
  DFFRX2 \st_reg[1]  ( .D(nst[1]), .CK(clk), .RN(n765), .Q(st[1]), .QN(n852)
         );
  NOR4X4 U547 ( .A(n794), .B(st[1]), .C(st[2]), .D(st[3]), .Y(n975) );
  CLKINVX1 U554 ( .A(n1088), .Y(n1084) );
  INVX16 U591 ( .A(n1084), .Y(pattern_no[0]) );
  CLKINVX1 U1159 ( .A(n1063), .Y(n1086) );
  INVX16 U1160 ( .A(n1086), .Y(pattern_no[1]) );
endmodule

