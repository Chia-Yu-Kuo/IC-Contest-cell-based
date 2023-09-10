/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Tue Mar 28 18:35:25 2023
/////////////////////////////////////////////////////////////


module JAM_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [9:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  NAND2X1 U2 ( .A(A[8]), .B(n2), .Y(n3) );
  XNOR2X1 U3 ( .A(A[9]), .B(n3), .Y(SUM[9]) );
  XOR2XL U4 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
  XOR2XL U5 ( .A(A[8]), .B(n2), .Y(SUM[8]) );
  XOR2XL U6 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  AND2X2 U7 ( .A(carry[7]), .B(A[7]), .Y(n2) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N163, N164, N165, N166, N167, N168, N169, N170, N171, n873, n874,
         n875, n876, n877, n878, n879, n880, n881, n882, \job_reg[1][0] ,
         \job_reg[2][1] , \job_reg[2][0] , \job_reg[3][1] , \job_reg[3][0] ,
         \job_reg[4][2] , \job_reg[5][2] , \job_reg[5][0] , \job_reg[6][2] ,
         \job_reg[7][2] , \job_reg[7][1] , \job_reg[7][0] , N221, N222, N223,
         N224, N225, N226, N227, N228, N229, N230, N276, N277, N278, N377,
         N378, N379, N380, N381, N382, N383, N384, N385, N477, N478, N479,
         N574, N575, N657, N705, n86, n87, n89, n94, n95, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n107, n108, n111, n113, n114, n116,
         n117, n118, n120, n121, n124, n125, n126, n127, n128, n141, n143,
         n145, n148, n149, n150, n151, n152, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n179, n181, n182, n183, n184, n185,
         n188, n190, n192, n193, n194, n195, n196, n197, n199, n200, n201,
         n203, n204, n205, n206, n208, n210, n214, n215, n216, n217, n218,
         n221, n223, n226, n227, n228, n229, n231, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n245, n246, n247, n248,
         n250, n251, n252, n253, n254, n255, n256, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n270, n271, n272, n273,
         n274, n275, n277, n279, n281, n282, n283, n285, n286, n287, n288,
         n289, n290, n291, n292, n295, n296, n297, n300, n302, n304, n305,
         n306, n307, n308, n310, n311, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n342, n343, n344, n345, n347, n348, n349, n350, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n364, n366, n367,
         n368, n369, n370, n371, n372, n373, n376, n378, n379, n381, n383,
         n384, n386, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n403, n405, n406, n408, n409, n410, n412,
         n413, n414, n415, n418, n419, n420, n423, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n438, n439, n441,
         n442, n443, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n458, n459, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n493,
         n494, n495, n496, n497, n498, n499, n501, n502, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n528, n529, n531, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n641, n654, n655, n656, n657, n658, n660, n661, n663, n664,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n691, n692, n693, n694, n695, n696, n697, n698, n699,
         n700, n701, n702, n703, n704, n705, n706, n707, n708, n709, n710,
         n711, n712, n713, n714, n715, n716, n717, n718, n719, n720, n721,
         n722, n723, n724, n725, n726, n727, n728, n729, n730, n731, n732,
         n733, n734, n735, n736, n737, n738, n739, n740, n741, n742, n743,
         n744, n745, n746, n747, n748, n749, n750, n751, n752, n753, n754,
         n755, n756, n757, n758, n759, n760, n761, n762, n763, n764, n765,
         n766, n767, n768, n769, n770, n771, n772, n773, n774, n775, n776,
         n777, n778, n779, n780, n781, n782, n783, n784, n785, n786, n787,
         n788, n789, n790, n791, n792, n793, n794, n795, n796, n797, n798,
         n799, n800, n801, n802, n803, n804, n805, n806, n807, n808, n809,
         n810, n811, n812, n813, n814, n815, n816, n817, n818, n819, n820,
         n821, n822, n823, n824, n825, n826, n827, n828, n829, n830, n831,
         n832, n833, n834, n835, n836, n837, n838, n839, n840, n841, n842,
         n843, n844, n845, n846, n847, n848, n849, n850, n851, n852, n853,
         n854, n855, n856, n857, n858, n859, n860, n861, n862, n863, n864,
         n865, n866, n867, n868, n869;
  wire   [3:0] st;
  wire   [2:0] nst;
  wire   [3:0] ncnt;
  wire   [9:0] total_cost_reg;
  wire   [2:0] target_w;

  AOI221X2 U421 ( .A0(n465), .A1(\job_reg[1][0] ), .B0(n466), .B1(n869), .C0(
        n478), .Y(n477) );
  OAI222X2 U456 ( .A0(n170), .A1(n664), .B0(n475), .B1(n507), .C0(n95), .C1(
        n513), .Y(n476) );
  JAM_DW01_add_0 r417 ( .A(total_cost_reg), .B({1'b0, 1'b0, 1'b0, Cost}), .CI(
        1'b0), .SUM({N230, N229, N228, N227, N226, N225, N224, N223, N222, 
        N221}) );
  DFFSX1 \up_w2_reg[1]  ( .D(n498), .CK(CLK), .SN(n789), .Q(N164), .QN(n531)
         );
  DFFSX1 \tmp_idx_reg[2]  ( .D(n588), .CK(CLK), .SN(n708), .Q(N171), .QN(n533)
         );
  DFFSX1 \tmp_idx_reg[1]  ( .D(n555), .CK(CLK), .SN(n707), .Q(N170), .QN(n534)
         );
  DFFSX1 \tmp_idx_reg[0]  ( .D(n589), .CK(CLK), .SN(n706), .Q(N169), .QN(n535)
         );
  DFFRX1 \job_reg_reg[0][1]  ( .D(n587), .CK(CLK), .RN(n706), .Q(n812), .QN(
        n506) );
  DFFRX1 \job_reg_reg[0][0]  ( .D(n553), .CK(CLK), .RN(n706), .Q(N657), .QN(
        n507) );
  DFFRX1 \job_reg_reg[0][2]  ( .D(n554), .CK(CLK), .RN(n706), .Q(n810), .QN(
        n505) );
  DFFSX2 \job_reg_reg[7][0]  ( .D(n586), .CK(CLK), .SN(n708), .Q(
        \job_reg[7][0] ), .QN(n695) );
  DFFSX2 \job_reg_reg[7][1]  ( .D(n585), .CK(CLK), .SN(n708), .Q(
        \job_reg[7][1] ), .QN(n696) );
  DFFSX1 \job_reg_reg[5][2]  ( .D(n578), .CK(CLK), .SN(n708), .Q(
        \job_reg[5][2] ), .QN(n519) );
  DFFSX1 \job_reg_reg[5][0]  ( .D(n580), .CK(CLK), .SN(n707), .Q(
        \job_reg[5][0] ), .QN(n521) );
  DFFSX1 \job_reg_reg[4][2]  ( .D(n575), .CK(CLK), .SN(n708), .Q(
        \job_reg[4][2] ), .QN(n516) );
  DFFSX1 \job_reg_reg[6][2]  ( .D(n581), .CK(CLK), .SN(n708), .Q(
        \job_reg[6][2] ), .QN(n522) );
  DFFSX2 \up_w1_reg[1]  ( .D(n496), .CK(CLK), .SN(n708), .Q(N167), .QN(n529)
         );
  DFFSX2 \job_reg_reg[6][1]  ( .D(n582), .CK(CLK), .SN(n708), .Q(n852), .QN(
        n523) );
  DFFRX1 \st_reg[2]  ( .D(nst[2]), .CK(CLK), .RN(n706), .Q(st[2]), .QN(n654)
         );
  DFFRX1 \job_reg_reg[4][0]  ( .D(n577), .CK(CLK), .RN(n708), .Q(n868), .QN(
        n518) );
  DFFSX1 \job_reg_reg[1][0]  ( .D(n568), .CK(CLK), .SN(n708), .Q(
        \job_reg[1][0] ), .QN(n510) );
  DFFRX1 \job_reg_reg[2][0]  ( .D(n571), .CK(CLK), .RN(n706), .Q(
        \job_reg[2][0] ), .QN(n513) );
  DFFSX1 \job_reg_reg[3][0]  ( .D(n574), .CK(CLK), .SN(n707), .Q(
        \job_reg[3][0] ), .QN(n493) );
  DFFSX1 \job_reg_reg[7][2]  ( .D(n584), .CK(CLK), .SN(n708), .Q(
        \job_reg[7][2] ), .QN(n525) );
  DFFSX1 \job_reg_reg[2][1]  ( .D(n570), .CK(CLK), .SN(n708), .Q(
        \job_reg[2][1] ), .QN(n512) );
  DFFSX1 \job_reg_reg[3][1]  ( .D(n573), .CK(CLK), .SN(n708), .Q(
        \job_reg[3][1] ), .QN(n515) );
  DFFSX1 \mincost_reg_reg[2]  ( .D(n549), .CK(CLK), .SN(n707), .QN(n483) );
  DFFSX1 \mincost_reg_reg[0]  ( .D(n552), .CK(CLK), .SN(n707), .Q(n882), .QN(
        n480) );
  DFFRX2 \st_reg[0]  ( .D(n538), .CK(CLK), .RN(n706), .Q(st[0]), .QN(n667) );
  DFFSX1 \mincost_reg_reg[4]  ( .D(n547), .CK(CLK), .SN(n707), .Q(n879), .QN(
        n485) );
  DFFSX1 \mincost_reg_reg[3]  ( .D(n548), .CK(CLK), .SN(n707), .Q(n880), .QN(
        n484) );
  DFFSX1 \mincost_reg_reg[8]  ( .D(n543), .CK(CLK), .SN(n707), .Q(n877), .QN(
        n489) );
  DFFSX1 \mincost_reg_reg[1]  ( .D(n550), .CK(CLK), .SN(n707), .Q(n881), .QN(
        n482) );
  DFFSX1 \mincost_reg_reg[9]  ( .D(n551), .CK(CLK), .SN(n707), .QN(n481) );
  DFFSX1 \mincost_reg_reg[7]  ( .D(n544), .CK(CLK), .SN(n707), .QN(n488) );
  DFFSX1 \mincost_reg_reg[6]  ( .D(n545), .CK(CLK), .SN(n707), .QN(n487) );
  DFFRX1 \match_cnt_reg_reg[1]  ( .D(n541), .CK(CLK), .RN(n706), .QN(n537) );
  DFFRX1 \match_cnt_reg_reg[2]  ( .D(n540), .CK(CLK), .RN(n707), .QN(n536) );
  DFFRX1 \match_cnt_reg_reg[0]  ( .D(n542), .CK(CLK), .RN(n708), .QN(n490) );
  DFFSX1 \mincost_reg_reg[5]  ( .D(n546), .CK(CLK), .SN(n707), .Q(n878), .QN(
        n486) );
  DFFRX1 \st_reg[1]  ( .D(nst[1]), .CK(CLK), .RN(n706), .Q(st[1]), .QN(n837)
         );
  DFFRX4 \up_w1_reg[0]  ( .D(n497), .CK(CLK), .RN(n706), .Q(N166), .QN(n744)
         );
  DFFRHQX2 \cnt_reg[1]  ( .D(ncnt[1]), .CK(CLK), .RN(n706), .Q(n657) );
  DFFRHQX2 \cnt_reg[0]  ( .D(ncnt[0]), .CK(CLK), .RN(n706), .Q(n663) );
  DFFRX1 \cnt_reg[3]  ( .D(ncnt[3]), .CK(CLK), .RN(n706), .Q(n836), .QN(n501)
         );
  DFFRX1 \cnt_reg[2]  ( .D(ncnt[2]), .CK(CLK), .RN(n706), .Q(n835), .QN(n502)
         );
  DFFRX1 \total_cost_reg_reg[8]  ( .D(n557), .CK(CLK), .RN(n707), .Q(
        total_cost_reg[8]), .QN(n844) );
  DFFXL \total_cost_reg_reg[2]  ( .D(n563), .CK(CLK), .Q(total_cost_reg[2]), 
        .QN(n840) );
  DFFXL \total_cost_reg_reg[3]  ( .D(n562), .CK(CLK), .Q(total_cost_reg[3]), 
        .QN(n841) );
  DFFXL \total_cost_reg_reg[6]  ( .D(n559), .CK(CLK), .Q(total_cost_reg[6]), 
        .QN(n842) );
  DFFXL \total_cost_reg_reg[9]  ( .D(n556), .CK(CLK), .Q(total_cost_reg[9]), 
        .QN(n845) );
  DFFRX1 \match_cnt_reg_reg[3]  ( .D(n539), .CK(CLK), .RN(n707), .QN(n491) );
  DFFRX2 \job_reg_reg[5][1]  ( .D(n579), .CK(CLK), .RN(n706), .Q(n864), .QN(
        n520) );
  DFFRX2 \job_reg_reg[1][2]  ( .D(n566), .CK(CLK), .RN(n708), .Q(n858), .QN(
        n508) );
  DFFRX2 \job_reg_reg[6][0]  ( .D(n583), .CK(CLK), .RN(n707), .Q(n853), .QN(
        n524) );
  DFFRX2 \job_reg_reg[4][1]  ( .D(n576), .CK(CLK), .RN(n706), .Q(n865), .QN(
        n517) );
  DFFSX2 \up_w2_reg[0]  ( .D(n499), .CK(CLK), .SN(n789), .Q(N163), .QN(n726)
         );
  DFFSX2 \up_w2_reg[2]  ( .D(n495), .CK(CLK), .SN(n708), .Q(N165), .QN(n725)
         );
  DFFRX2 \job_reg_reg[3][2]  ( .D(n572), .CK(CLK), .RN(n708), .Q(n863), .QN(
        n514) );
  DFFRX2 \job_reg_reg[2][2]  ( .D(n569), .CK(CLK), .RN(n707), .Q(n856), .QN(
        n511) );
  DFFX1 \total_cost_reg_reg[7]  ( .D(n558), .CK(CLK), .Q(total_cost_reg[7]), 
        .QN(n843) );
  DFFX1 \total_cost_reg_reg[0]  ( .D(n565), .CK(CLK), .Q(total_cost_reg[0]), 
        .QN(n839) );
  DFFRX2 \job_reg_reg[1][1]  ( .D(n567), .CK(CLK), .RN(n789), .Q(n859), .QN(
        n509) );
  DFFX1 \total_cost_reg_reg[4]  ( .D(n561), .CK(CLK), .Q(total_cost_reg[4]), 
        .QN(n787) );
  DFFX1 \total_cost_reg_reg[5]  ( .D(n560), .CK(CLK), .Q(total_cost_reg[5]), 
        .QN(n786) );
  DFFX1 \total_cost_reg_reg[1]  ( .D(n564), .CK(CLK), .Q(total_cost_reg[1]), 
        .QN(n788) );
  DFFSX1 \up_w1_reg[2]  ( .D(n494), .CK(CLK), .SN(n708), .Q(N168), .QN(n528)
         );
  NAND3X1 U524 ( .A(st[0]), .B(n837), .C(st[2]), .Y(n171) );
  NAND2X2 U525 ( .A(n829), .B(n501), .Y(n344) );
  NAND2X1 U526 ( .A(n827), .B(n658), .Y(n307) );
  NAND2X2 U527 ( .A(n528), .B(n529), .Y(n287) );
  NOR2X1 U528 ( .A(n531), .B(n726), .Y(n721) );
  NAND2X1 U529 ( .A(n823), .B(n501), .Y(n87) );
  NAND2X1 U530 ( .A(n169), .B(n823), .Y(n95) );
  OAI221X1 U531 ( .A0(n286), .A1(n300), .B0(n828), .B1(n302), .C0(n823), .Y(
        n149) );
  AND2X2 U532 ( .A(n663), .B(n502), .Y(n641) );
  AOI221X4 U533 ( .A0(n465), .A1(n859), .B0(n466), .B1(n866), .C0(n473), .Y(
        n472) );
  NOR3X1 U534 ( .A(n726), .B(n725), .C(n846), .Y(n252) );
  INVX12 U535 ( .A(n491), .Y(MatchCount[3]) );
  OA22X1 U536 ( .A0(n502), .A1(n170), .B0(n87), .B1(n461), .Y(n873) );
  INVX12 U537 ( .A(n873), .Y(W[2]) );
  BUFX12 U538 ( .A(n878), .Y(MinCost[5]) );
  OAI22X1 U539 ( .A0(n533), .A1(n752), .B0(N171), .B1(n751), .Y(N478) );
  INVX16 U540 ( .A(n490), .Y(MatchCount[0]) );
  INVX16 U541 ( .A(n536), .Y(MatchCount[2]) );
  INVX16 U542 ( .A(n537), .Y(MatchCount[1]) );
  NOR2X2 U543 ( .A(N168), .B(N167), .Y(n689) );
  OR2X1 U544 ( .A(n837), .B(n431), .Y(N705) );
  INVX12 U545 ( .A(N705), .Y(Valid) );
  OA22X1 U546 ( .A0(n658), .A1(n170), .B0(n657), .B1(n87), .Y(n874) );
  INVX12 U547 ( .A(n874), .Y(W[1]) );
  INVX12 U548 ( .A(n487), .Y(MinCost[6]) );
  INVX12 U549 ( .A(n488), .Y(MinCost[7]) );
  INVX12 U550 ( .A(n481), .Y(MinCost[9]) );
  INVX12 U551 ( .A(n482), .Y(MinCost[1]) );
  AO21XL U552 ( .A0(n788), .A1(n767), .B0(n881), .Y(n766) );
  BUFX12 U553 ( .A(n877), .Y(MinCost[8]) );
  INVX12 U554 ( .A(n484), .Y(MinCost[3]) );
  NOR2BXL U555 ( .AN(total_cost_reg[3]), .B(n880), .Y(n781) );
  BUFX12 U556 ( .A(n879), .Y(MinCost[4]) );
  NOR2XL U557 ( .A(n787), .B(n879), .Y(n780) );
  BUFX12 U558 ( .A(n875), .Y(J[2]) );
  NAND2X1 U559 ( .A(n463), .B(n464), .Y(n875) );
  NOR2X2 U560 ( .A(n431), .B(st[1]), .Y(n181) );
  NOR2XL U561 ( .A(n525), .B(n468), .Y(n655) );
  NOR2XL U562 ( .A(n469), .B(n87), .Y(n656) );
  OR2X1 U563 ( .A(n655), .B(n656), .Y(n467) );
  AOI2BB1X2 U564 ( .A0N(n87), .A1N(n307), .B0(n820), .Y(n468) );
  AOI221X1 U565 ( .A0(n465), .A1(n858), .B0(n466), .B1(n863), .C0(n467), .Y(
        n464) );
  NOR2X1 U566 ( .A(n819), .B(n286), .Y(n465) );
  NOR2X1 U567 ( .A(N166), .B(n287), .Y(n286) );
  CLKINVX1 U568 ( .A(n310), .Y(n824) );
  CLKINVX1 U569 ( .A(n304), .Y(n831) );
  CLKINVX1 U570 ( .A(n330), .Y(n832) );
  OAI22XL U571 ( .A0(n695), .A1(n468), .B0(n479), .B1(n87), .Y(n478) );
  CLKINVX1 U572 ( .A(n95), .Y(n822) );
  INVX3 U573 ( .A(n657), .Y(n658) );
  INVX12 U574 ( .A(n668), .Y(J[1]) );
  NAND2X1 U575 ( .A(n502), .B(n658), .Y(n327) );
  NAND2XL U576 ( .A(n834), .B(n663), .Y(n314) );
  BUFX12 U577 ( .A(n876), .Y(J[0]) );
  NAND2BX1 U578 ( .AN(n476), .B(n477), .Y(n876) );
  INVX1 U579 ( .A(n118), .Y(n838) );
  CLKINVX1 U580 ( .A(n333), .Y(n827) );
  AOI222XL U581 ( .A0(n831), .A1(n868), .B0(n306), .B1(n853), .C0(n824), .C1(
        n867), .Y(n479) );
  INVX1 U582 ( .A(n170), .Y(n818) );
  NAND2X1 U583 ( .A(n128), .B(MatchCount[0]), .Y(n121) );
  CLKINVX1 U584 ( .A(n171), .Y(n823) );
  NOR2XL U585 ( .A(n786), .B(n878), .Y(n772) );
  OAI22XL U586 ( .A0(n696), .A1(n468), .B0(n474), .B1(n87), .Y(n473) );
  AND2X2 U587 ( .A(n471), .B(n472), .Y(n668) );
  NOR2XL U588 ( .A(n844), .B(n877), .Y(n765) );
  NAND2X1 U589 ( .A(total_cost_reg[2]), .B(n483), .Y(n778) );
  NOR2X1 U590 ( .A(total_cost_reg[9]), .B(n481), .Y(n660) );
  NOR2X1 U591 ( .A(n784), .B(n777), .Y(n661) );
  OR2X1 U592 ( .A(n660), .B(n661), .Y(N574) );
  AOI32XL U593 ( .A0(n776), .A1(n785), .A2(n775), .B0(n877), .B1(n844), .Y(
        n777) );
  INVX12 U594 ( .A(n480), .Y(MinCost[0]) );
  NAND2X1 U595 ( .A(n641), .B(n657), .Y(n310) );
  AO21XL U596 ( .A0(n419), .A1(n310), .B0(n413), .Y(n418) );
  INVX3 U597 ( .A(n663), .Y(n664) );
  CLKINVX2 U598 ( .A(n125), .Y(n815) );
  NAND3BXL U599 ( .AN(n121), .B(MatchCount[1]), .C(n838), .Y(n116) );
  NAND2X1 U600 ( .A(n315), .B(n316), .Y(n292) );
  CLKINVX1 U601 ( .A(n700), .Y(n803) );
  AOI211XL U602 ( .A0(n832), .A1(n867), .B0(n342), .C0(n343), .Y(n340) );
  OAI222XL U603 ( .A0(n333), .A1(n369), .B0(n335), .B1(n370), .C0(n825), .C1(
        n371), .Y(n317) );
  XOR2XL U604 ( .A(n667), .B(n538), .Y(n423) );
  CLKINVX1 U605 ( .A(n344), .Y(n828) );
  NAND2XL U606 ( .A(n827), .B(n657), .Y(n415) );
  OAI211XL U607 ( .A0(n819), .A1(n242), .B0(n255), .C0(n243), .Y(n254) );
  INVXL U608 ( .A(n307), .Y(n826) );
  OAI21X1 U609 ( .A0(n182), .A1(n703), .B0(n184), .Y(n175) );
  NAND2BX1 U610 ( .AN(n205), .B(n181), .Y(n217) );
  CLKINVX1 U611 ( .A(n703), .Y(n816) );
  AOI2BB1X1 U612 ( .A0N(n288), .A1N(n286), .B0(n703), .Y(n145) );
  INVX1 U613 ( .A(n475), .Y(n817) );
  NOR2XL U614 ( .A(n831), .B(n152), .Y(n297) );
  AOI211XL U615 ( .A0(n790), .A1(n824), .B0(n829), .C0(n295), .Y(n289) );
  OAI32XL U616 ( .A0(MatchCount[1]), .A1(n121), .A2(n118), .B0(n537), .B1(n124), .Y(n541) );
  NAND2X1 U617 ( .A(n501), .B(n335), .Y(n462) );
  AOI2BB1XL U618 ( .A0N(n664), .A1N(n170), .B0(n181), .Y(n426) );
  AOI211XL U619 ( .A0(n826), .A1(n790), .B0(n829), .C0(n156), .Y(n148) );
  CLKBUFX3 U620 ( .A(target_w[1]), .Y(n701) );
  CLKINVX1 U621 ( .A(n519), .Y(n861) );
  NOR2BXL U622 ( .AN(total_cost_reg[0]), .B(n882), .Y(n762) );
  AOI31XL U623 ( .A0(n819), .A1(n171), .A2(n170), .B0(RST), .Y(n157) );
  AOI22XL U624 ( .A0(N221), .A1(n158), .B0(Cost[0]), .B1(n160), .Y(n166) );
  AOI211XL U625 ( .A0(n828), .A1(n837), .B0(n428), .C0(n429), .Y(n427) );
  AOI2BB1XL U626 ( .A0N(n501), .A1N(n327), .B0(n170), .Y(n428) );
  NAND4BXL U627 ( .AN(n429), .B(n430), .C(n431), .D(n703), .Y(nst[2]) );
  NAND3XL U628 ( .A(st[1]), .B(n667), .C(n425), .Y(n430) );
  XOR2XL U629 ( .A(n663), .B(n658), .Y(n420) );
  AOI21XL U630 ( .A0(n308), .A1(n287), .B0(n830), .Y(n300) );
  AOI31XL U631 ( .A0(n304), .A1(n86), .A2(n305), .B0(n836), .Y(n302) );
  AOI211XL U632 ( .A0(n830), .A1(n501), .B0(st[1]), .C0(n654), .Y(n429) );
  NOR3XL U633 ( .A(n744), .B(n743), .C(n850), .Y(n256) );
  NOR3X1 U634 ( .A(n726), .B(n531), .C(N165), .Y(n216) );
  INVX1 U635 ( .A(n529), .Y(n850) );
  NAND3XL U636 ( .A(n743), .B(n850), .C(n744), .Y(n205) );
  NAND3XL U637 ( .A(N166), .B(n850), .C(n743), .Y(n227) );
  CLKBUFX3 U638 ( .A(n183), .Y(n703) );
  NAND3XL U639 ( .A(st[0]), .B(n654), .C(st[1]), .Y(n183) );
  OAI32XL U640 ( .A0(n95), .A1(n105), .A2(n100), .B0(n744), .B1(n822), .Y(n497) );
  NAND3X1 U641 ( .A(n667), .B(n654), .C(st[1]), .Y(n97) );
  INVXL U642 ( .A(n743), .Y(n854) );
  NOR3X1 U643 ( .A(N163), .B(n725), .C(n846), .Y(n234) );
  NOR3X2 U644 ( .A(n846), .B(n726), .C(N165), .Y(n176) );
  NAND3XL U645 ( .A(n529), .B(n854), .C(n744), .Y(n242) );
  CLKINVX1 U646 ( .A(RST), .Y(n789) );
  INVX12 U647 ( .A(n483), .Y(MinCost[2]) );
  AND2XL U648 ( .A(n818), .B(n657), .Y(n669) );
  AND2XL U649 ( .A(n817), .B(n812), .Y(n670) );
  AND2XL U650 ( .A(n822), .B(n857), .Y(n671) );
  NOR3X1 U651 ( .A(n669), .B(n670), .C(n671), .Y(n471) );
  CLKINVX1 U652 ( .A(n184), .Y(n820) );
  NAND2X1 U653 ( .A(n128), .B(n118), .Y(n125) );
  CLKINVX1 U654 ( .A(n314), .Y(n829) );
  NAND2X1 U655 ( .A(n125), .B(n121), .Y(n124) );
  NOR3BXL U656 ( .AN(n151), .B(n292), .C(n304), .Y(n295) );
  NOR3X1 U657 ( .A(n825), .B(n291), .C(n292), .Y(n156) );
  CLKINVX1 U658 ( .A(n292), .Y(n790) );
  NOR2X1 U659 ( .A(n849), .B(n292), .Y(n313) );
  CLKINVX1 U660 ( .A(n345), .Y(n791) );
  CLKINVX1 U661 ( .A(n306), .Y(n825) );
  NOR3X1 U662 ( .A(n306), .B(n826), .C(n824), .Y(n305) );
  CLKINVX1 U663 ( .A(n208), .Y(n795) );
  CLKINVX1 U664 ( .A(n188), .Y(n794) );
  CLKINVX1 U665 ( .A(n195), .Y(n821) );
  NOR2X1 U666 ( .A(n819), .B(n796), .Y(n248) );
  NOR2X1 U667 ( .A(n819), .B(n262), .Y(n261) );
  NAND2BX1 U668 ( .AN(n282), .B(n281), .Y(n271) );
  NAND2X1 U669 ( .A(n281), .B(n282), .Y(n272) );
  CLKINVX1 U670 ( .A(n335), .Y(n833) );
  NOR2X1 U671 ( .A(n820), .B(n793), .Y(n229) );
  NAND2X1 U672 ( .A(n816), .B(n175), .Y(n174) );
  NAND2BX1 U673 ( .AN(n288), .B(n145), .Y(n143) );
  NAND2X1 U674 ( .A(n288), .B(n145), .Y(n141) );
  CLKINVX1 U675 ( .A(n240), .Y(n792) );
  CLKINVX1 U676 ( .A(n270), .Y(n849) );
  NAND2X2 U677 ( .A(n286), .B(n181), .Y(n184) );
  NOR2X2 U678 ( .A(n419), .B(n663), .Y(n306) );
  AOI222XL U679 ( .A0(n831), .A1(n865), .B0(n306), .B1(n852), .C0(n824), .C1(
        n864), .Y(n474) );
  AOI222XL U680 ( .A0(n831), .A1(n862), .B0(n306), .B1(n851), .C0(n824), .C1(
        n861), .Y(n469) );
  AOI2BB1X1 U681 ( .A0N(n838), .A1N(N574), .B0(n97), .Y(n128) );
  INVX3 U682 ( .A(n181), .Y(n819) );
  NAND2BX1 U683 ( .AN(N574), .B(N575), .Y(n118) );
  NAND2X1 U684 ( .A(n663), .B(n835), .Y(n333) );
  NOR3X1 U685 ( .A(n836), .B(n663), .C(n327), .Y(n169) );
  NOR2X1 U686 ( .A(n344), .B(n171), .Y(n466) );
  NAND2X1 U687 ( .A(n832), .B(n657), .Y(n304) );
  OA21XL U688 ( .A0(n118), .A1(MatchCount[1]), .B0(n124), .Y(n120) );
  NAND2X1 U689 ( .A(n657), .B(n835), .Y(n335) );
  CLKINVX1 U690 ( .A(n327), .Y(n834) );
  CLKBUFX3 U691 ( .A(n126), .Y(n705) );
  NAND2XL U692 ( .A(N574), .B(n128), .Y(n126) );
  NAND2X1 U693 ( .A(n705), .B(n127), .Y(n542) );
  OAI21XL U694 ( .A0(n128), .A1(MatchCount[0]), .B0(n121), .Y(n127) );
  NOR2BX2 U695 ( .AN(n704), .B(n819), .Y(n160) );
  XOR2XL U696 ( .A(n701), .B(N478), .Y(n352) );
  OAI21XL U697 ( .A0(n317), .A1(n318), .B0(n319), .Y(n316) );
  OAI31XL U698 ( .A0(n318), .A1(n319), .A2(n317), .B0(n320), .Y(n315) );
  OAI222XL U699 ( .A0(n330), .A1(n396), .B0(n327), .B1(n397), .C0(n310), .C1(
        n398), .Y(n318) );
  AND2X2 U700 ( .A(n704), .B(n168), .Y(n158) );
  OAI21XL U701 ( .A0(n169), .A1(n170), .B0(n171), .Y(n168) );
  NAND3BX1 U702 ( .AN(n149), .B(n790), .C(n825), .Y(n152) );
  OA22X1 U703 ( .A0(n828), .A1(n347), .B0(n344), .B1(n348), .Y(n322) );
  XOR2X1 U704 ( .A(n349), .B(n350), .Y(n348) );
  XOR2X1 U705 ( .A(n791), .B(n352), .Y(n347) );
  XOR2X1 U706 ( .A(\job_reg[7][1] ), .B(n701), .Y(n350) );
  OAI2BB1X1 U707 ( .A0N(n321), .A1N(n322), .B0(n323), .Y(n320) );
  OAI32X1 U708 ( .A0(n324), .A1(n325), .A2(n326), .B0(n322), .B1(n321), .Y(
        n323) );
  OAI22XL U709 ( .A0(n330), .A1(n331), .B0(n332), .B1(n825), .Y(n325) );
  OAI22XL U710 ( .A0(n327), .A1(n328), .B0(n310), .B1(n329), .Y(n326) );
  OAI221XL U711 ( .A0(n333), .A1(n334), .B0(n335), .B1(n336), .C0(n337), .Y(
        n324) );
  AOI2BB2X1 U712 ( .B0(n338), .B1(n339), .A0N(n700), .A1N(n340), .Y(n337) );
  OAI221XL U713 ( .A0(N479), .A1(n828), .B0(n344), .B1(\job_reg[7][0] ), .C0(
        n803), .Y(n339) );
  NOR2X1 U714 ( .A(n803), .B(N479), .Y(n345) );
  OAI22XL U715 ( .A0(n828), .A1(n345), .B0(n806), .B1(n344), .Y(n338) );
  OA22X1 U716 ( .A0(n828), .A1(n388), .B0(n344), .B1(n389), .Y(n319) );
  XOR2X1 U717 ( .A(n390), .B(n391), .Y(n389) );
  XOR2X1 U718 ( .A(n393), .B(n394), .Y(n388) );
  XOR2X1 U719 ( .A(n847), .B(n702), .Y(n391) );
  XOR2X1 U720 ( .A(n858), .B(n702), .Y(n379) );
  XOR2X1 U721 ( .A(n856), .B(n702), .Y(n384) );
  XOR2X1 U722 ( .A(n863), .B(n702), .Y(n373) );
  XOR2X1 U723 ( .A(n372), .B(n373), .Y(n371) );
  XOR2X1 U724 ( .A(n383), .B(n384), .Y(n369) );
  XOR2X1 U725 ( .A(n378), .B(n379), .Y(n370) );
  OAI2BB2XL U726 ( .B0(n701), .B1(n395), .A0N(n791), .A1N(N478), .Y(n393) );
  NOR2XL U727 ( .A(N478), .B(n791), .Y(n395) );
  OAI2BB2XL U728 ( .B0(n701), .B1(n386), .A0N(n857), .A1N(n334), .Y(n383) );
  NOR2X1 U729 ( .A(n857), .B(n334), .Y(n386) );
  NAND2X1 U730 ( .A(n353), .B(n354), .Y(n321) );
  AOI222XL U731 ( .A0(n355), .A1(n824), .B0(n356), .B1(n834), .C0(n357), .C1(
        n832), .Y(n354) );
  AOI222XL U732 ( .A0(n361), .A1(n306), .B0(n362), .B1(n833), .C0(n364), .C1(
        n827), .Y(n353) );
  XOR2X1 U733 ( .A(n329), .B(n360), .Y(n355) );
  NOR2X1 U734 ( .A(n864), .B(n331), .Y(n412) );
  NOR2X1 U735 ( .A(n852), .B(n328), .Y(n408) );
  NOR2X1 U736 ( .A(n865), .B(n329), .Y(n403) );
  CLKINVX1 U737 ( .A(n349), .Y(n806) );
  CLKINVX1 U738 ( .A(N276), .Y(n801) );
  CLKINVX1 U739 ( .A(N277), .Y(n799) );
  CLKINVX1 U740 ( .A(N278), .Y(n797) );
  NAND2XL U741 ( .A(N277), .B(n816), .Y(n200) );
  NAND2XL U742 ( .A(N276), .B(n816), .Y(n196) );
  NAND2XL U743 ( .A(N278), .B(n816), .Y(n204) );
  INVX1 U744 ( .A(n689), .Y(n692) );
  OAI2BB1X1 U745 ( .A0N(n654), .A1N(nst[2]), .B0(n423), .Y(n413) );
  CLKINVX1 U746 ( .A(n701), .Y(n813) );
  CLKINVX1 U747 ( .A(n702), .Y(n811) );
  NOR2X1 U748 ( .A(n413), .B(n663), .Y(ncnt[0]) );
  NOR2X1 U749 ( .A(n413), .B(n414), .Y(ncnt[3]) );
  XOR2X1 U750 ( .A(n836), .B(n415), .Y(n414) );
  OAI2BB1X1 U751 ( .A0N(n835), .A1N(ncnt[0]), .B0(n418), .Y(ncnt[2]) );
  OAI211X1 U752 ( .A0(n703), .A1(n227), .B0(n184), .C0(n228), .Y(n208) );
  AND3X2 U753 ( .A(n215), .B(n195), .C(n217), .Y(n228) );
  CLKINVX1 U754 ( .A(n684), .Y(n694) );
  NAND2X1 U755 ( .A(n185), .B(n181), .Y(n195) );
  OA21X2 U756 ( .A0(n703), .A1(n267), .B0(n268), .Y(n262) );
  OA21XL U757 ( .A0(N166), .A1(n270), .B0(n266), .Y(n267) );
  NOR2X1 U758 ( .A(n819), .B(n275), .Y(n274) );
  CLKINVX1 U759 ( .A(n254), .Y(n796) );
  OAI21XL U760 ( .A0(n256), .A1(n252), .B0(n816), .Y(n255) );
  NAND2BX1 U761 ( .AN(n252), .B(n253), .Y(n246) );
  NAND2BX1 U762 ( .AN(n266), .B(n265), .Y(n258) );
  NAND2X1 U763 ( .A(n265), .B(n266), .Y(n259) );
  NAND2X1 U764 ( .A(n253), .B(n252), .Y(n245) );
  NOR2X1 U765 ( .A(n703), .B(n796), .Y(n253) );
  NOR2X1 U766 ( .A(n703), .B(n275), .Y(n281) );
  NOR2X1 U767 ( .A(n703), .B(n262), .Y(n265) );
  NOR2X1 U768 ( .A(n100), .B(n104), .Y(n94) );
  CLKINVX1 U769 ( .A(n86), .Y(n830) );
  OAI211X1 U770 ( .A0(n703), .A1(n205), .B0(n184), .C0(n206), .Y(n188) );
  NOR2X1 U771 ( .A(n821), .B(n193), .Y(n206) );
  OA21XL U772 ( .A0(n850), .A1(n819), .B0(n243), .Y(n268) );
  OR2X1 U773 ( .A(n108), .B(n114), .Y(n104) );
  NOR2X1 U774 ( .A(n176), .B(n185), .Y(n182) );
  NOR2X1 U775 ( .A(n192), .B(n703), .Y(n193) );
  NOR3X1 U776 ( .A(n846), .B(N163), .C(N165), .Y(n288) );
  NAND2X1 U777 ( .A(n216), .B(n816), .Y(n215) );
  NAND2X1 U778 ( .A(n181), .B(n175), .Y(n172) );
  CLKINVX1 U779 ( .A(n241), .Y(n793) );
  OAI211X1 U780 ( .A0(n703), .A1(n242), .B0(n243), .C0(n240), .Y(n241) );
  NAND2X1 U781 ( .A(n181), .B(n285), .Y(n243) );
  NAND4BBXL U782 ( .AN(n185), .BN(n286), .C(n227), .D(n205), .Y(n285) );
  NAND2BX1 U783 ( .AN(n227), .B(n181), .Y(n235) );
  NAND2X1 U784 ( .A(n850), .B(n854), .Y(n270) );
  NAND3X1 U785 ( .A(n846), .B(N165), .C(N163), .Y(n282) );
  NAND2X1 U786 ( .A(n234), .B(n816), .Y(n240) );
  CLKINVX1 U787 ( .A(n103), .Y(n855) );
  NOR2X1 U788 ( .A(n849), .B(n256), .Y(n151) );
  CLKINVX1 U789 ( .A(n102), .Y(n848) );
  CLKINVX1 U790 ( .A(n97), .Y(n814) );
  OA21XL U791 ( .A0(n854), .A1(N166), .B0(n287), .Y(n291) );
  CLKBUFX3 U792 ( .A(n789), .Y(n708) );
  CLKBUFX3 U793 ( .A(n789), .Y(n707) );
  CLKBUFX3 U794 ( .A(n789), .Y(n706) );
  OA21XL U795 ( .A0(n658), .A1(n835), .B0(n419), .Y(n461) );
  CLKINVX1 U796 ( .A(n779), .Y(n784) );
  CLKINVX1 U797 ( .A(n765), .Y(n785) );
  AOI221X1 U798 ( .A0(n462), .A1(n823), .B0(n654), .B1(n667), .C0(st[1]), .Y(
        n475) );
  NAND3X2 U799 ( .A(n837), .B(n654), .C(st[0]), .Y(n170) );
  NAND2X1 U800 ( .A(n502), .B(n664), .Y(n330) );
  OAI32X1 U801 ( .A0(MatchCount[3]), .A1(n536), .A2(n116), .B0(n491), .B1(n117), .Y(n539) );
  OA21XL U802 ( .A0(n118), .A1(MatchCount[2]), .B0(n120), .Y(n117) );
  NAND2X1 U803 ( .A(st[2]), .B(n667), .Y(n431) );
  AOI222XL U804 ( .A0(n818), .A1(n835), .B0(n817), .B1(n810), .C0(n822), .C1(
        n856), .Y(n463) );
  INVX12 U805 ( .A(n697), .Y(W[0]) );
  CLKINVX1 U806 ( .A(n462), .Y(n698) );
  CLKINVX1 U807 ( .A(n426), .Y(n699) );
  CLKINVX1 U808 ( .A(n522), .Y(n851) );
  CLKINVX1 U809 ( .A(n521), .Y(n867) );
  NAND2X1 U810 ( .A(n658), .B(n835), .Y(n419) );
  OAI22XL U811 ( .A0(n705), .A1(n845), .B0(n481), .B1(n815), .Y(n551) );
  OAI22XL U812 ( .A0(n705), .A1(n788), .B0(n482), .B1(n815), .Y(n550) );
  OAI22XL U813 ( .A0(n705), .A1(n840), .B0(n483), .B1(n815), .Y(n549) );
  OAI22XL U814 ( .A0(n705), .A1(n841), .B0(n484), .B1(n815), .Y(n548) );
  OAI22XL U815 ( .A0(n705), .A1(n787), .B0(n485), .B1(n815), .Y(n547) );
  OAI22XL U816 ( .A0(n705), .A1(n786), .B0(n486), .B1(n815), .Y(n546) );
  OAI22XL U817 ( .A0(n705), .A1(n842), .B0(n487), .B1(n815), .Y(n545) );
  OAI22XL U818 ( .A0(n705), .A1(n843), .B0(n488), .B1(n815), .Y(n544) );
  OAI22XL U819 ( .A0(n705), .A1(n844), .B0(n489), .B1(n815), .Y(n543) );
  OAI22XL U820 ( .A0(n705), .A1(n839), .B0(n480), .B1(n815), .Y(n552) );
  OAI22XL U821 ( .A0(n536), .A1(n120), .B0(n116), .B1(MatchCount[2]), .Y(n540)
         );
  CLKINVX1 U822 ( .A(n516), .Y(n862) );
  CLKINVX1 U823 ( .A(n515), .Y(n866) );
  CLKINVX1 U824 ( .A(n512), .Y(n857) );
  OAI2BB2XL U825 ( .B0(n704), .B1(n843), .A0N(N228), .A1N(n158), .Y(n558) );
  CLKINVX1 U826 ( .A(n493), .Y(n869) );
  OAI2BB2XL U827 ( .B0(n704), .B1(n844), .A0N(N229), .A1N(n158), .Y(n557) );
  OAI2BB2XL U828 ( .B0(n704), .B1(n845), .A0N(N230), .A1N(n158), .Y(n556) );
  OAI22XL U829 ( .A0(n148), .A1(n149), .B0(n534), .B1(n150), .Y(n555) );
  NOR2BX1 U830 ( .AN(n151), .B(n152), .Y(n150) );
  OAI22XL U831 ( .A0(n296), .A1(n149), .B0(n535), .B1(n297), .Y(n589) );
  NOR3X1 U832 ( .A(n311), .B(n156), .C(n295), .Y(n296) );
  OAI22XL U833 ( .A0(n86), .A1(n292), .B0(n313), .B1(n314), .Y(n311) );
  OAI21XL U834 ( .A0(n289), .A1(n149), .B0(n290), .Y(n588) );
  OAI31XL U835 ( .A0(n149), .A1(n291), .A2(n292), .B0(N171), .Y(n290) );
  OAI21XL U836 ( .A0(n704), .A1(n839), .B0(n166), .Y(n565) );
  OAI21XL U837 ( .A0(n704), .A1(n788), .B0(n165), .Y(n564) );
  AOI22X1 U838 ( .A0(N222), .A1(n158), .B0(Cost[1]), .B1(n160), .Y(n165) );
  OAI21XL U839 ( .A0(n704), .A1(n842), .B0(n159), .Y(n559) );
  AOI22X1 U840 ( .A0(N227), .A1(n158), .B0(Cost[6]), .B1(n160), .Y(n159) );
  OAI21XL U841 ( .A0(n704), .A1(n840), .B0(n164), .Y(n563) );
  AOI22X1 U842 ( .A0(N223), .A1(n158), .B0(Cost[2]), .B1(n160), .Y(n164) );
  OAI21XL U843 ( .A0(n704), .A1(n841), .B0(n163), .Y(n562) );
  AOI22X1 U844 ( .A0(N224), .A1(n158), .B0(Cost[3]), .B1(n160), .Y(n163) );
  OAI21XL U845 ( .A0(n704), .A1(n786), .B0(n161), .Y(n560) );
  AOI22X1 U846 ( .A0(N226), .A1(n158), .B0(Cost[5]), .B1(n160), .Y(n161) );
  OAI21XL U847 ( .A0(n704), .A1(n787), .B0(n162), .Y(n561) );
  AOI22X1 U848 ( .A0(N225), .A1(n158), .B0(Cost[4]), .B1(n160), .Y(n162) );
  CLKBUFX3 U849 ( .A(n157), .Y(n704) );
  CLKINVX1 U850 ( .A(N169), .Y(n761) );
  XOR2X1 U851 ( .A(n702), .B(N477), .Y(n394) );
  NAND2X1 U852 ( .A(n700), .B(n524), .Y(n328) );
  NAND2X1 U853 ( .A(n700), .B(n493), .Y(n332) );
  NAND2X1 U854 ( .A(n700), .B(n521), .Y(n331) );
  NAND2X1 U855 ( .A(n700), .B(n518), .Y(n329) );
  NAND2X1 U856 ( .A(n700), .B(n510), .Y(n336) );
  NAND2X1 U857 ( .A(n700), .B(n513), .Y(n334) );
  XOR2X1 U858 ( .A(n701), .B(n517), .Y(n360) );
  NAND2X1 U859 ( .A(n695), .B(n700), .Y(n349) );
  XOR2X1 U860 ( .A(n328), .B(n359), .Y(n356) );
  XOR2X1 U861 ( .A(n701), .B(n523), .Y(n359) );
  XOR2X1 U862 ( .A(n332), .B(n368), .Y(n361) );
  XOR2X1 U863 ( .A(n701), .B(n515), .Y(n368) );
  XOR2X1 U864 ( .A(n334), .B(n366), .Y(n364) );
  XOR2X1 U865 ( .A(n701), .B(n512), .Y(n366) );
  OAI22XL U866 ( .A0(n696), .A1(n806), .B0(n701), .B1(n392), .Y(n390) );
  NOR2X1 U867 ( .A(\job_reg[7][1] ), .B(n349), .Y(n392) );
  OAI22XL U868 ( .A0(n509), .A1(n805), .B0(n701), .B1(n381), .Y(n378) );
  CLKINVX1 U869 ( .A(n336), .Y(n805) );
  NOR2X1 U870 ( .A(n859), .B(n336), .Y(n381) );
  OAI22XL U871 ( .A0(n515), .A1(n804), .B0(n701), .B1(n376), .Y(n372) );
  CLKINVX1 U872 ( .A(n332), .Y(n804) );
  NOR2X1 U873 ( .A(n866), .B(n332), .Y(n376) );
  XOR2X1 U874 ( .A(n336), .B(n367), .Y(n362) );
  XOR2X1 U875 ( .A(n701), .B(n509), .Y(n367) );
  XOR2X1 U876 ( .A(n331), .B(n358), .Y(n357) );
  XOR2X1 U877 ( .A(n701), .B(n520), .Y(n358) );
  XOR2X1 U878 ( .A(n399), .B(n400), .Y(n398) );
  XOR2X1 U879 ( .A(n862), .B(n702), .Y(n400) );
  OAI22XL U880 ( .A0(n517), .A1(n807), .B0(n701), .B1(n403), .Y(n399) );
  CLKINVX1 U881 ( .A(n329), .Y(n807) );
  XOR2X1 U882 ( .A(n409), .B(n410), .Y(n396) );
  XOR2X1 U883 ( .A(n861), .B(n702), .Y(n410) );
  OAI22XL U884 ( .A0(n520), .A1(n809), .B0(n701), .B1(n412), .Y(n409) );
  CLKINVX1 U885 ( .A(n331), .Y(n809) );
  XOR2X1 U886 ( .A(n405), .B(n406), .Y(n397) );
  XOR2X1 U887 ( .A(n851), .B(n702), .Y(n406) );
  OAI22XL U888 ( .A0(n523), .A1(n808), .B0(n701), .B1(n408), .Y(n405) );
  CLKINVX1 U889 ( .A(n328), .Y(n808) );
  OAI22XL U890 ( .A0(n743), .A1(n734), .B0(N168), .B1(n733), .Y(target_w[1])
         );
  CLKBUFX3 U891 ( .A(target_w[2]), .Y(n702) );
  OAI22XL U892 ( .A0(n742), .A1(n743), .B0(N168), .B1(n741), .Y(target_w[2])
         );
  CLKBUFX3 U893 ( .A(target_w[0]), .Y(n700) );
  OAI22XL U894 ( .A0(n743), .A1(n730), .B0(N168), .B1(n729), .Y(target_w[0])
         );
  OAI222XL U895 ( .A0(n510), .A1(n335), .B0(n513), .B1(n333), .C0(n524), .C1(
        n327), .Y(n342) );
  OAI222XL U896 ( .A0(n141), .A1(n813), .B0(n143), .B1(n799), .C0(n506), .C1(
        n145), .Y(n587) );
  OAI222XL U897 ( .A0(n141), .A1(n811), .B0(n143), .B1(n801), .C0(n505), .C1(
        n145), .Y(n554) );
  OAI222XL U898 ( .A0(n141), .A1(n803), .B0(n143), .B1(n797), .C0(n507), .C1(
        n145), .Y(n553) );
  OAI222XL U899 ( .A0(n695), .A1(n172), .B0(n179), .B1(n174), .C0(n510), .C1(
        n175), .Y(n568) );
  AOI2BB2X1 U900 ( .B0(n700), .B1(n176), .A0N(n797), .A1N(n176), .Y(n179) );
  OAI222XL U901 ( .A0(n696), .A1(n172), .B0(n177), .B1(n174), .C0(n509), .C1(
        n175), .Y(n567) );
  AOI2BB2X1 U902 ( .B0(n701), .B1(n176), .A0N(n799), .A1N(n176), .Y(n177) );
  OAI222XL U903 ( .A0(n525), .A1(n172), .B0(n173), .B1(n174), .C0(n508), .C1(
        n175), .Y(n566) );
  AOI2BB2X1 U904 ( .B0(n702), .B1(n176), .A0N(n801), .A1N(n176), .Y(n173) );
  OAI221XL U905 ( .A0(n803), .A1(n245), .B0(n797), .B1(n246), .C0(n251), .Y(
        n580) );
  AOI22X1 U906 ( .A0(N383), .A1(n248), .B0(n796), .B1(n867), .Y(n251) );
  OAI221XL U907 ( .A0(n811), .A1(n245), .B0(n801), .B1(n246), .C0(n247), .Y(
        n578) );
  AOI22X1 U908 ( .A0(N385), .A1(n248), .B0(n796), .B1(n861), .Y(n247) );
  OAI221XL U909 ( .A0(n813), .A1(n258), .B0(n799), .B1(n259), .C0(n263), .Y(
        n582) );
  AOI22X1 U910 ( .A0(N381), .A1(n261), .B0(n262), .B1(n852), .Y(n263) );
  OAI221XL U911 ( .A0(n811), .A1(n258), .B0(n801), .B1(n259), .C0(n260), .Y(
        n581) );
  AOI22X1 U912 ( .A0(N382), .A1(n261), .B0(n262), .B1(n851), .Y(n260) );
  OAI221XL U913 ( .A0(n813), .A1(n245), .B0(n799), .B1(n246), .C0(n250), .Y(
        n579) );
  AOI22X1 U914 ( .A0(N384), .A1(n248), .B0(n796), .B1(n864), .Y(n250) );
  OAI221XL U915 ( .A0(n803), .A1(n258), .B0(n797), .B1(n259), .C0(n264), .Y(
        n583) );
  AOI22X1 U916 ( .A0(N380), .A1(n261), .B0(n262), .B1(n853), .Y(n264) );
  OAI211X1 U917 ( .A0(n425), .A1(n97), .B0(n426), .C0(n427), .Y(n538) );
  OAI221XL U918 ( .A0(n803), .A1(n271), .B0(n797), .B1(n272), .C0(n279), .Y(
        n586) );
  AOI22X1 U919 ( .A0(N377), .A1(n274), .B0(n275), .B1(\job_reg[7][0] ), .Y(
        n279) );
  OAI221XL U920 ( .A0(n813), .A1(n271), .B0(n799), .B1(n272), .C0(n277), .Y(
        n585) );
  AOI22X1 U921 ( .A0(N378), .A1(n274), .B0(n275), .B1(\job_reg[7][1] ), .Y(
        n277) );
  OAI221XL U922 ( .A0(n811), .A1(n271), .B0(n801), .B1(n272), .C0(n273), .Y(
        n584) );
  AOI22X1 U923 ( .A0(N379), .A1(n274), .B0(n275), .B1(n847), .Y(n273) );
  OAI21XL U924 ( .A0(n528), .A1(n310), .B0(n307), .Y(n308) );
  OAI22XL U925 ( .A0(n493), .A1(n208), .B0(n795), .B1(n223), .Y(n574) );
  AOI221XL U926 ( .A0(n821), .A1(n853), .B0(n820), .B1(n867), .C0(n226), .Y(
        n223) );
  OAI222XL U927 ( .A0(n803), .A1(n215), .B0(n216), .B1(n204), .C0(n695), .C1(
        n217), .Y(n226) );
  OAI22XL U928 ( .A0(n515), .A1(n208), .B0(n795), .B1(n218), .Y(n573) );
  AOI221XL U929 ( .A0(n821), .A1(n852), .B0(n820), .B1(n864), .C0(n221), .Y(
        n218) );
  OAI222XL U930 ( .A0(n813), .A1(n215), .B0(n216), .B1(n200), .C0(n696), .C1(
        n217), .Y(n221) );
  OAI22XL U931 ( .A0(n512), .A1(n188), .B0(n794), .B1(n197), .Y(n570) );
  AOI221XL U932 ( .A0(n800), .A1(n192), .B0(n193), .B1(n701), .C0(n199), .Y(
        n197) );
  OAI22XL U933 ( .A0(n523), .A1(n184), .B0(n696), .B1(n195), .Y(n199) );
  CLKINVX1 U934 ( .A(n200), .Y(n800) );
  OAI22XL U935 ( .A0(n514), .A1(n208), .B0(n795), .B1(n210), .Y(n572) );
  AOI221XL U936 ( .A0(n821), .A1(n851), .B0(n820), .B1(n861), .C0(n214), .Y(
        n210) );
  OAI222XL U937 ( .A0(n811), .A1(n215), .B0(n216), .B1(n196), .C0(n525), .C1(
        n217), .Y(n214) );
  OAI22XL U938 ( .A0(n511), .A1(n188), .B0(n794), .B1(n190), .Y(n569) );
  AOI221XL U939 ( .A0(n802), .A1(n192), .B0(n193), .B1(n702), .C0(n194), .Y(
        n190) );
  OAI22XL U940 ( .A0(n522), .A1(n184), .B0(n525), .B1(n195), .Y(n194) );
  CLKINVX1 U941 ( .A(n196), .Y(n802) );
  OAI22XL U942 ( .A0(n513), .A1(n188), .B0(n794), .B1(n201), .Y(n571) );
  AOI221XL U943 ( .A0(n798), .A1(n192), .B0(n193), .B1(n700), .C0(n203), .Y(
        n201) );
  OAI22XL U944 ( .A0(n524), .A1(n184), .B0(n695), .B1(n195), .Y(n203) );
  CLKINVX1 U945 ( .A(n204), .Y(n798) );
  OAI22XL U946 ( .A0(n518), .A1(n310), .B0(n493), .B1(n825), .Y(n343) );
  OAI22XL U947 ( .A0(n516), .A1(n229), .B0(n793), .B1(n231), .Y(n575) );
  AOI221XL U948 ( .A0(n821), .A1(n861), .B0(n792), .B1(n702), .C0(n233), .Y(
        n231) );
  OAI222XL U949 ( .A0(n234), .A1(n196), .B0(n525), .B1(n235), .C0(n522), .C1(
        n217), .Y(n233) );
  OAI22XL U950 ( .A0(n518), .A1(n229), .B0(n793), .B1(n238), .Y(n577) );
  AOI221XL U951 ( .A0(n821), .A1(n867), .B0(n792), .B1(n700), .C0(n239), .Y(
        n238) );
  OAI222XL U952 ( .A0(n234), .A1(n204), .B0(n695), .B1(n235), .C0(n524), .C1(
        n217), .Y(n239) );
  OAI22XL U953 ( .A0(n517), .A1(n229), .B0(n793), .B1(n236), .Y(n576) );
  AOI221XL U954 ( .A0(n821), .A1(n864), .B0(n792), .B1(n701), .C0(n237), .Y(
        n236) );
  OAI222XL U955 ( .A0(n234), .A1(n200), .B0(n696), .B1(n235), .C0(n523), .C1(
        n217), .Y(n237) );
  NOR2X1 U956 ( .A(n420), .B(n413), .Y(ncnt[1]) );
  NAND2X1 U957 ( .A(n664), .B(n833), .Y(n86) );
  OA21X2 U958 ( .A0(n703), .A1(n283), .B0(n268), .Y(n275) );
  OA21XL U959 ( .A0(n744), .A1(n270), .B0(n282), .Y(n283) );
  OAI211X1 U960 ( .A0(n515), .A1(n865), .B0(n868), .C0(n493), .Y(n459) );
  CLKINVX1 U961 ( .A(N167), .Y(n693) );
  OAI2BB1X1 U962 ( .A0N(n847), .A1N(n453), .B0(n454), .Y(n100) );
  OAI21XL U963 ( .A0(n453), .A1(n847), .B0(n522), .Y(n454) );
  OAI21XL U964 ( .A0(n696), .A1(n852), .B0(n455), .Y(n453) );
  OAI211X1 U965 ( .A0(n523), .A1(\job_reg[7][1] ), .B0(\job_reg[7][0] ), .C0(
        n524), .Y(n455) );
  OAI2BB1X1 U966 ( .A0N(n861), .A1N(n447), .B0(n448), .Y(n114) );
  OAI21XL U967 ( .A0(n861), .A1(n447), .B0(n516), .Y(n448) );
  OAI21XL U968 ( .A0(n520), .A1(n865), .B0(n449), .Y(n447) );
  OAI211X1 U969 ( .A0(n517), .A1(n864), .B0(n867), .C0(n518), .Y(n449) );
  OAI2BB1X1 U970 ( .A0N(n851), .A1N(n450), .B0(n451), .Y(n108) );
  OAI21XL U971 ( .A0(n851), .A1(n450), .B0(n519), .Y(n451) );
  OAI21XL U972 ( .A0(n523), .A1(n864), .B0(n452), .Y(n450) );
  OAI211X1 U973 ( .A0(n520), .A1(n852), .B0(n853), .C0(n521), .Y(n452) );
  AOI21X1 U974 ( .A0(\job_reg[4][2] ), .A1(n458), .B0(n672), .Y(n101) );
  OA21XL U975 ( .A0(n458), .A1(n862), .B0(n514), .Y(n672) );
  OAI21XL U976 ( .A0(n517), .A1(n866), .B0(n459), .Y(n458) );
  CLKINVX1 U977 ( .A(N168), .Y(n743) );
  AND4X1 U978 ( .A(n103), .B(n101), .C(n432), .D(n433), .Y(n425) );
  NOR3X1 U979 ( .A(n434), .B(n113), .C(n848), .Y(n433) );
  OA21XL U980 ( .A0(n508), .A1(n810), .B0(n94), .Y(n432) );
  OAI21XL U981 ( .A0(n511), .A1(n858), .B0(n441), .Y(n434) );
  AOI32X1 U982 ( .A0(n512), .A1(n866), .A2(n436), .B0(n863), .B1(n511), .Y(
        n103) );
  INVX3 U983 ( .A(n531), .Y(n846) );
  AOI21X1 U984 ( .A0(n860), .A1(n107), .B0(n108), .Y(n105) );
  CLKINVX1 U985 ( .A(n114), .Y(n860) );
  OAI31XL U986 ( .A0(n855), .A1(n848), .A2(n111), .B0(n101), .Y(n107) );
  OAI221XL U987 ( .A0(n86), .A1(n87), .B0(st[0]), .B1(n837), .C0(n89), .Y(
        nst[1]) );
  NAND4XL U988 ( .A(n834), .B(n818), .C(n664), .D(n836), .Y(n89) );
  NAND3X1 U989 ( .A(n726), .B(n846), .C(n725), .Y(n192) );
  AOI2BB2X1 U990 ( .B0(n858), .B1(n511), .A0N(n438), .A1N(n439), .Y(n113) );
  NOR2X1 U991 ( .A(n512), .B(n859), .Y(n439) );
  AOI211X1 U992 ( .A0(n512), .A1(n859), .B0(\job_reg[1][0] ), .C0(n513), .Y(
        n438) );
  NOR2X1 U993 ( .A(n287), .B(n744), .Y(n185) );
  OAI22XL U994 ( .A0(n442), .A1(n443), .B0(n505), .B1(n858), .Y(n441) );
  NOR2X1 U995 ( .A(n509), .B(n812), .Y(n442) );
  AOI211X1 U996 ( .A0(n509), .A1(n812), .B0(N657), .C0(n510), .Y(n443) );
  OAI22XL U997 ( .A0(n528), .A1(n822), .B0(n94), .B1(n95), .Y(n494) );
  OAI22XL U998 ( .A0(n529), .A1(n822), .B0(n98), .B1(n95), .Y(n496) );
  NOR2X1 U999 ( .A(n99), .B(n100), .Y(n98) );
  AOI31X1 U1000 ( .A0(n101), .A1(n102), .A2(n103), .B0(n104), .Y(n99) );
  CLKINVX1 U1001 ( .A(n525), .Y(n847) );
  NAND4X1 U1002 ( .A(n513), .B(n435), .C(n436), .D(n869), .Y(n102) );
  NAND2X1 U1003 ( .A(n515), .B(n857), .Y(n435) );
  NAND3X1 U1004 ( .A(n846), .B(N165), .C(n726), .Y(n266) );
  NAND2X1 U1005 ( .A(n514), .B(n856), .Y(n436) );
  AOI2BB1X1 U1006 ( .A0N(n511), .A1N(n858), .B0(n113), .Y(n111) );
  OAI22XL U1007 ( .A0(n725), .A1(n814), .B0(n533), .B1(n97), .Y(n495) );
  OAI22XL U1008 ( .A0(n531), .A1(n814), .B0(n534), .B1(n97), .Y(n498) );
  OAI22XL U1009 ( .A0(n726), .A1(n814), .B0(n535), .B1(n97), .Y(n499) );
  OAI22XL U1010 ( .A0(n868), .A1(n744), .B0(\job_reg[3][0] ), .B1(N166), .Y(
        n674) );
  NAND2X1 U1011 ( .A(N168), .B(n693), .Y(n684) );
  OAI22XL U1012 ( .A0(n853), .A1(n744), .B0(\job_reg[5][0] ), .B1(N166), .Y(
        n675) );
  OAI222XL U1013 ( .A0(n674), .A1(n692), .B0(n684), .B1(n695), .C0(n675), .C1(
        n693), .Y(N383) );
  OAI22XL U1014 ( .A0(n865), .A1(n744), .B0(\job_reg[3][1] ), .B1(N166), .Y(
        n677) );
  OAI22XL U1015 ( .A0(n852), .A1(n744), .B0(n864), .B1(N166), .Y(n678) );
  OAI222XL U1016 ( .A0(n677), .A1(n692), .B0(n684), .B1(n696), .C0(n678), .C1(
        n693), .Y(N384) );
  OAI22XL U1017 ( .A0(\job_reg[4][2] ), .A1(n744), .B0(n863), .B1(N166), .Y(
        n682) );
  OAI22XL U1018 ( .A0(\job_reg[6][2] ), .A1(n744), .B0(\job_reg[5][2] ), .B1(
        N166), .Y(n683) );
  OAI222XL U1019 ( .A0(n682), .A1(n692), .B0(n684), .B1(n525), .C0(n683), .C1(
        n693), .Y(N385) );
  NOR2X1 U1020 ( .A(n692), .B(N166), .Y(n680) );
  NOR2X1 U1021 ( .A(n744), .B(n692), .Y(n679) );
  AOI22X1 U1022 ( .A0(\job_reg[1][0] ), .A1(n680), .B0(n679), .B1(
        \job_reg[2][0] ), .Y(n673) );
  OAI221XL U1023 ( .A0(n675), .A1(n684), .B0(n674), .B1(n693), .C0(n673), .Y(
        N377) );
  AOI22X1 U1024 ( .A0(n859), .A1(n680), .B0(n679), .B1(\job_reg[2][1] ), .Y(
        n676) );
  OAI221XL U1025 ( .A0(n678), .A1(n684), .B0(n677), .B1(n693), .C0(n676), .Y(
        N378) );
  AOI22X1 U1026 ( .A0(n858), .A1(n680), .B0(n679), .B1(n856), .Y(n681) );
  OAI221XL U1027 ( .A0(n683), .A1(n684), .B0(n682), .B1(n693), .C0(n681), .Y(
        N379) );
  AOI222XL U1028 ( .A0(\job_reg[5][0] ), .A1(N167), .B0(\job_reg[7][0] ), .B1(
        n694), .C0(\job_reg[3][0] ), .C1(n689), .Y(n686) );
  AOI222XL U1029 ( .A0(n868), .A1(N167), .B0(n853), .B1(n694), .C0(
        \job_reg[2][0] ), .C1(n689), .Y(n685) );
  OAI22XL U1030 ( .A0(n744), .A1(n686), .B0(N166), .B1(n685), .Y(N380) );
  AOI222XL U1031 ( .A0(n864), .A1(N167), .B0(\job_reg[7][1] ), .B1(n694), .C0(
        \job_reg[3][1] ), .C1(n689), .Y(n688) );
  AOI222XL U1032 ( .A0(n865), .A1(N167), .B0(n852), .B1(n694), .C0(
        \job_reg[2][1] ), .C1(n689), .Y(n687) );
  OAI22XL U1033 ( .A0(n744), .A1(n688), .B0(N166), .B1(n687), .Y(N381) );
  AOI222XL U1034 ( .A0(\job_reg[5][2] ), .A1(N167), .B0(\job_reg[7][2] ), .B1(
        n694), .C0(n863), .C1(n689), .Y(n691) );
  AOI222XL U1035 ( .A0(\job_reg[4][2] ), .A1(N167), .B0(\job_reg[6][2] ), .B1(
        n694), .C0(n856), .C1(n689), .Y(n690) );
  OAI22XL U1036 ( .A0(n691), .A1(n744), .B0(N166), .B1(n690), .Y(N382) );
  AOI31X1 U1037 ( .A0(n698), .A1(n663), .A2(n823), .B0(n699), .Y(n697) );
  NOR2X1 U1038 ( .A(n531), .B(N163), .Y(n722) );
  NOR2X1 U1039 ( .A(n726), .B(N164), .Y(n719) );
  NOR2X1 U1040 ( .A(N163), .B(N164), .Y(n718) );
  AO22X1 U1041 ( .A0(\job_reg[5][0] ), .A1(n719), .B0(n868), .B1(n718), .Y(
        n709) );
  AOI221XL U1042 ( .A0(n853), .A1(n722), .B0(\job_reg[7][0] ), .B1(n721), .C0(
        n709), .Y(n712) );
  AO22X1 U1043 ( .A0(\job_reg[1][0] ), .A1(n719), .B0(N657), .B1(n718), .Y(
        n710) );
  AOI221XL U1044 ( .A0(\job_reg[2][0] ), .A1(n722), .B0(\job_reg[3][0] ), .B1(
        n721), .C0(n710), .Y(n711) );
  OAI22XL U1045 ( .A0(n725), .A1(n712), .B0(N165), .B1(n711), .Y(N278) );
  AO22X1 U1046 ( .A0(n864), .A1(n719), .B0(n865), .B1(n718), .Y(n713) );
  AOI221XL U1047 ( .A0(n852), .A1(n722), .B0(\job_reg[7][1] ), .B1(n721), .C0(
        n713), .Y(n716) );
  AO22X1 U1048 ( .A0(n859), .A1(n719), .B0(n812), .B1(n718), .Y(n714) );
  AOI221XL U1049 ( .A0(\job_reg[2][1] ), .A1(n722), .B0(\job_reg[3][1] ), .B1(
        n721), .C0(n714), .Y(n715) );
  OAI22XL U1050 ( .A0(n725), .A1(n716), .B0(N165), .B1(n715), .Y(N277) );
  AO22X1 U1051 ( .A0(\job_reg[5][2] ), .A1(n719), .B0(\job_reg[4][2] ), .B1(
        n718), .Y(n717) );
  AOI221XL U1052 ( .A0(\job_reg[6][2] ), .A1(n722), .B0(\job_reg[7][2] ), .B1(
        n721), .C0(n717), .Y(n724) );
  AO22X1 U1053 ( .A0(n858), .A1(n719), .B0(n810), .B1(n718), .Y(n720) );
  AOI221XL U1054 ( .A0(n856), .A1(n722), .B0(n863), .B1(n721), .C0(n720), .Y(
        n723) );
  OAI22XL U1055 ( .A0(n724), .A1(n725), .B0(N165), .B1(n723), .Y(N276) );
  NOR2X1 U1056 ( .A(n529), .B(N166), .Y(n740) );
  NOR2X1 U1057 ( .A(n529), .B(n744), .Y(n739) );
  NOR2X1 U1058 ( .A(n744), .B(N167), .Y(n737) );
  NOR2X1 U1059 ( .A(N166), .B(N167), .Y(n736) );
  AO22X1 U1060 ( .A0(\job_reg[5][0] ), .A1(n737), .B0(n868), .B1(n736), .Y(
        n727) );
  AOI221XL U1061 ( .A0(n853), .A1(n740), .B0(\job_reg[7][0] ), .B1(n739), .C0(
        n727), .Y(n730) );
  AO22X1 U1062 ( .A0(\job_reg[1][0] ), .A1(n737), .B0(N657), .B1(n736), .Y(
        n728) );
  AOI221XL U1063 ( .A0(\job_reg[2][0] ), .A1(n740), .B0(\job_reg[3][0] ), .B1(
        n739), .C0(n728), .Y(n729) );
  AO22X1 U1064 ( .A0(n864), .A1(n737), .B0(n865), .B1(n736), .Y(n731) );
  AOI221XL U1065 ( .A0(n852), .A1(n740), .B0(\job_reg[7][1] ), .B1(n739), .C0(
        n731), .Y(n734) );
  AO22X1 U1066 ( .A0(n859), .A1(n737), .B0(n812), .B1(n736), .Y(n732) );
  AOI221XL U1067 ( .A0(\job_reg[2][1] ), .A1(n740), .B0(\job_reg[3][1] ), .B1(
        n739), .C0(n732), .Y(n733) );
  AO22X1 U1068 ( .A0(\job_reg[5][2] ), .A1(n737), .B0(\job_reg[4][2] ), .B1(
        n736), .Y(n735) );
  AOI221XL U1069 ( .A0(\job_reg[6][2] ), .A1(n740), .B0(\job_reg[7][2] ), .B1(
        n739), .C0(n735), .Y(n742) );
  AO22X1 U1070 ( .A0(n858), .A1(n737), .B0(n810), .B1(n736), .Y(n738) );
  AOI221XL U1071 ( .A0(n856), .A1(n740), .B0(n863), .B1(n739), .C0(n738), .Y(
        n741) );
  NOR2X1 U1072 ( .A(n534), .B(N169), .Y(n758) );
  NOR2X1 U1073 ( .A(n534), .B(n761), .Y(n757) );
  NOR2X1 U1074 ( .A(n761), .B(N170), .Y(n755) );
  NOR2X1 U1075 ( .A(N169), .B(N170), .Y(n754) );
  AO22X1 U1076 ( .A0(\job_reg[5][0] ), .A1(n755), .B0(n868), .B1(n754), .Y(
        n745) );
  AOI221XL U1077 ( .A0(n853), .A1(n758), .B0(\job_reg[7][0] ), .B1(n757), .C0(
        n745), .Y(n748) );
  AO22X1 U1078 ( .A0(\job_reg[1][0] ), .A1(n755), .B0(N657), .B1(n754), .Y(
        n746) );
  AOI221XL U1079 ( .A0(\job_reg[2][0] ), .A1(n758), .B0(\job_reg[3][0] ), .B1(
        n757), .C0(n746), .Y(n747) );
  OAI22XL U1080 ( .A0(n533), .A1(n748), .B0(N171), .B1(n747), .Y(N479) );
  AO22X1 U1081 ( .A0(n864), .A1(n755), .B0(n865), .B1(n754), .Y(n749) );
  AOI221XL U1082 ( .A0(n852), .A1(n758), .B0(\job_reg[7][1] ), .B1(n757), .C0(
        n749), .Y(n752) );
  AO22X1 U1083 ( .A0(n859), .A1(n755), .B0(n812), .B1(n754), .Y(n750) );
  AOI221XL U1084 ( .A0(\job_reg[2][1] ), .A1(n758), .B0(\job_reg[3][1] ), .B1(
        n757), .C0(n750), .Y(n751) );
  AO22X1 U1085 ( .A0(\job_reg[5][2] ), .A1(n755), .B0(\job_reg[4][2] ), .B1(
        n754), .Y(n753) );
  AOI221XL U1086 ( .A0(\job_reg[6][2] ), .A1(n758), .B0(\job_reg[7][2] ), .B1(
        n757), .C0(n753), .Y(n760) );
  AO22X1 U1087 ( .A0(n858), .A1(n755), .B0(n810), .B1(n754), .Y(n756) );
  AOI221XL U1088 ( .A0(n856), .A1(n758), .B0(n863), .B1(n757), .C0(n756), .Y(
        n759) );
  OAI22XL U1089 ( .A0(n760), .A1(n533), .B0(N171), .B1(n759), .Y(N477) );
  OAI22XL U1090 ( .A0(total_cost_reg[1]), .A1(n762), .B0(n762), .B1(n482), .Y(
        n764) );
  NAND2X1 U1091 ( .A(total_cost_reg[7]), .B(n488), .Y(n776) );
  NAND2X1 U1092 ( .A(total_cost_reg[6]), .B(n487), .Y(n771) );
  NOR3BXL U1093 ( .AN(n771), .B(n765), .C(n772), .Y(n763) );
  NAND3X1 U1094 ( .A(n764), .B(n776), .C(n763), .Y(n783) );
  NAND2X1 U1095 ( .A(total_cost_reg[9]), .B(n481), .Y(n779) );
  NOR2X1 U1096 ( .A(n781), .B(n780), .Y(n770) );
  NOR2BX1 U1097 ( .AN(n882), .B(total_cost_reg[0]), .Y(n767) );
  OAI211X1 U1098 ( .A0(n767), .A1(n788), .B0(n766), .C0(n778), .Y(n768) );
  OAI221XL U1099 ( .A0(total_cost_reg[2]), .A1(n483), .B0(total_cost_reg[3]), 
        .B1(n484), .C0(n768), .Y(n769) );
  AOI222XL U1100 ( .A0(n878), .A1(n786), .B0(n879), .B1(n787), .C0(n770), .C1(
        n769), .Y(n774) );
  NAND2BX1 U1101 ( .AN(n772), .B(n771), .Y(n773) );
  OAI222XL U1102 ( .A0(n774), .A1(n773), .B0(total_cost_reg[6]), .B1(n487), 
        .C0(total_cost_reg[7]), .C1(n488), .Y(n775) );
  NAND3BX1 U1103 ( .AN(N574), .B(n779), .C(n778), .Y(n782) );
  NOR4X1 U1104 ( .A(n783), .B(n782), .C(n781), .D(n780), .Y(N575) );
endmodule

