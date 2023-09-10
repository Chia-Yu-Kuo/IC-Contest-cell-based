/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Fri Mar  3 18:12:50 2023
/////////////////////////////////////////////////////////////


module DT_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  CMPR22X2 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX2 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  AND2X2 U1 ( .A(A[3]), .B(carry[3]), .Y(n1) );
  XOR2X1 U2 ( .A(A[3]), .B(carry[3]), .Y(SUM[3]) );
  INVX1 U3 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U4 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  CMPR22X2 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  CMPR22X2 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  CMPR22X2 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  CMPR22X2 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  INVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_3 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX2 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  INVXL U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_4 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module DT_DW01_inc_5 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module DT ( clk, reset, done, sti_rd, sti_addr, sti_di, res_wr, res_rd, 
        res_addr, res_do, res_di );
  output [9:0] sti_addr;
  input [15:0] sti_di;
  output [13:0] res_addr;
  output [7:0] res_do;
  input [7:0] res_di;
  input clk, reset;
  output done, sti_rd, res_wr, res_rd;
  wire   n829, n830, n831, n832, N135, N162, N163, N164, N165, N166, N167,
         N168, N185, N186, N187, N188, N189, N190, N191, N223, N224, N225,
         N226, N227, N228, N229, N257, N258, N259, N260, N261, N262, N263,
         N326, N327, N328, N329, N330, N331, N332, N686, n96, n97, n98, n111,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, \sub_107_aco/B[0] , n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n679, n680, n681, n682, n683, n684, n685, n686, n687,
         n688, n689, n690, n691, n692, n693, n694, n695, n696, n697, n698,
         n699, n700, n701, n702, n703, n704, n705, n706, n707, n708, n709,
         n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n720,
         n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, n731,
         n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742,
         n743, n744, n745, n746, n747, n748, n749, n750, n751, n752, n753,
         n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, n764,
         n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775,
         n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, n786,
         n787, n788, n789, n790, n791, n792, n793, n794, n795, n796, n797,
         n798, n799, n800, n801, n802, n803, n804, n805, n806, n807, n808,
         n809, n810, n811, n812, n813, n814, n815, n816, n817, n818, n819,
         n820, n821, n822, n823, n824, n825, n826, n827, n828;
  wire   [3:0] addr_cnt;
  wire   [3:0] st;
  wire   [3:0] nst;
  wire   [2:0] st_cnt;
  wire   [2:0] n_st_cnt;
  wire   [7:0] n_res_do;
  wire   [7:0] data_reg_1;
  wire   [7:0] data_reg_2;
  wire   [7:0] data_reg_0;
  wire   [7:0] data_reg_3;
  wire   [7:0] d_p_1_0;
  wire   [7:0] d_p_1_1;
  wire   [7:0] d_p_1_2;
  wire   [7:0] d_p_1_3;
  wire   [7:0] \sub_107_aco/carry ;
  assign res_rd = 1'b1;

  DFFRX1 \data_reg_4_reg[5]  ( .D(n333), .CK(clk), .RN(n405), .Q(n613), .QN(
        n822) );
  DFFRX1 \st_reg[1]  ( .D(nst[1]), .CK(clk), .RN(n408), .Q(st[1]), .QN(n448)
         );
  DFFRX1 \st_reg[2]  ( .D(nst[2]), .CK(clk), .RN(n408), .Q(st[2]), .QN(n443)
         );
  DFFRX1 \st_cnt_reg[0]  ( .D(n_st_cnt[0]), .CK(clk), .RN(reset), .Q(st_cnt[0]), .QN(n549) );
  DFFRX1 \st_cnt_reg[1]  ( .D(n_st_cnt[1]), .CK(clk), .RN(n408), .Q(st_cnt[1]), 
        .QN(n550) );
  DFFRX1 \addr_cnt_Y_reg[5]  ( .D(n371), .CK(clk), .RN(n408), .Q(n829), .QN(
        n375) );
  DFFRX1 \addr_cnt_Y_reg[3]  ( .D(n367), .CK(clk), .RN(n406), .Q(n830), .QN(
        n378) );
  DFFRX1 \addr_cnt_Y_reg[2]  ( .D(n368), .CK(clk), .RN(n406), .Q(n831), .QN(
        n379) );
  DFFRX1 \addr_cnt_Y_reg[1]  ( .D(n369), .CK(clk), .RN(n406), .Q(n832), .QN(
        n376) );
  DFFRX1 \data_reg_3_reg[0]  ( .D(n311), .CK(clk), .RN(n404), .Q(n387) );
  DFFRX1 \st_reg[0]  ( .D(nst[0]), .CK(clk), .RN(n408), .Q(st[0]), .QN(n518)
         );
  DFFRX1 \st_cnt_reg[2]  ( .D(n_st_cnt[2]), .CK(clk), .RN(n408), .Q(st_cnt[2]), 
        .QN(n441) );
  DFFRX1 \addr_cnt_X_reg[0]  ( .D(n364), .CK(clk), .RN(n408), .Q(addr_cnt[0]), 
        .QN(N185) );
  DFFRX1 \addr_cnt_X_reg[3]  ( .D(n361), .CK(clk), .RN(n407), .Q(addr_cnt[3]), 
        .QN(n96) );
  DFFRX1 \addr_cnt_X_reg[2]  ( .D(n362), .CK(clk), .RN(n407), .Q(addr_cnt[2]), 
        .QN(n97) );
  DFFRX1 \addr_cnt_X_reg[1]  ( .D(n363), .CK(clk), .RN(n408), .Q(addr_cnt[1]), 
        .QN(n98) );
  DFFRX1 \data_reg_2_reg[0]  ( .D(n336), .CK(clk), .RN(n405), .Q(data_reg_2[0]), .QN(n119) );
  DFFRX1 \data_reg_2_reg[7]  ( .D(n343), .CK(clk), .RN(n405), .Q(data_reg_2[7]), .QN(n111) );
  DFFRX1 \data_reg_2_reg[6]  ( .D(n342), .CK(clk), .RN(n405), .Q(data_reg_2[6]), .QN(n113) );
  DFFRX1 \data_reg_2_reg[5]  ( .D(n341), .CK(clk), .RN(n405), .Q(data_reg_2[5]), .QN(n114) );
  DFFRX1 \data_reg_2_reg[4]  ( .D(n340), .CK(clk), .RN(n405), .Q(data_reg_2[4]), .QN(n115) );
  DFFRX1 \data_reg_2_reg[3]  ( .D(n339), .CK(clk), .RN(n405), .Q(data_reg_2[3]), .QN(n116) );
  DFFRX1 \data_reg_2_reg[2]  ( .D(n338), .CK(clk), .RN(n405), .Q(data_reg_2[2]), .QN(n117) );
  DFFRX1 \data_reg_2_reg[1]  ( .D(n337), .CK(clk), .RN(n405), .Q(data_reg_2[1]), .QN(n118) );
  DFFRX1 \data_reg_1_reg[7]  ( .D(n327), .CK(clk), .RN(reset), .Q(
        data_reg_1[7]), .QN(n120) );
  DFFRX1 \data_reg_1_reg[6]  ( .D(n326), .CK(clk), .RN(reset), .Q(
        data_reg_1[6]), .QN(n121) );
  DFFRX1 \data_reg_1_reg[5]  ( .D(n325), .CK(clk), .RN(reset), .Q(
        data_reg_1[5]), .QN(n122) );
  DFFRX1 \data_reg_1_reg[4]  ( .D(n324), .CK(clk), .RN(reset), .Q(
        data_reg_1[4]), .QN(n123) );
  DFFRX1 \data_reg_1_reg[3]  ( .D(n323), .CK(clk), .RN(n404), .Q(data_reg_1[3]), .QN(n124) );
  DFFRX1 \data_reg_1_reg[2]  ( .D(n322), .CK(clk), .RN(n404), .Q(data_reg_1[2]), .QN(n125) );
  DFFRX1 \data_reg_1_reg[1]  ( .D(n321), .CK(clk), .RN(n404), .Q(data_reg_1[1]), .QN(n126) );
  DFFRX1 \data_reg_1_reg[0]  ( .D(n320), .CK(clk), .RN(n404), .Q(data_reg_1[0]), .QN(n127) );
  DFFRX1 \data_reg_0_reg[7]  ( .D(n312), .CK(clk), .RN(reset), .Q(
        data_reg_0[7]), .QN(n799) );
  DFFRX1 \data_reg_0_reg[6]  ( .D(n313), .CK(clk), .RN(reset), .Q(
        data_reg_0[6]), .QN(n800) );
  DFFRX1 \data_reg_0_reg[5]  ( .D(n314), .CK(clk), .RN(reset), .Q(
        data_reg_0[5]), .QN(n801) );
  DFFRX1 \data_reg_0_reg[4]  ( .D(n315), .CK(clk), .RN(reset), .Q(
        data_reg_0[4]), .QN(n802) );
  DFFRX1 \data_reg_0_reg[3]  ( .D(n316), .CK(clk), .RN(n404), .Q(data_reg_0[3]), .QN(n803) );
  DFFRX1 \data_reg_0_reg[2]  ( .D(n317), .CK(clk), .RN(n404), .Q(data_reg_0[2]), .QN(n804) );
  DFFRX1 \data_reg_0_reg[1]  ( .D(n318), .CK(clk), .RN(n404), .Q(data_reg_0[1]), .QN(n805) );
  DFFRX1 \data_reg_0_reg[0]  ( .D(n319), .CK(clk), .RN(n404), .Q(data_reg_0[0]), .QN(n806) );
  DFFRX1 \data_reg_3_reg[2]  ( .D(n309), .CK(clk), .RN(n403), .Q(data_reg_3[2]), .QN(n797) );
  DFFRX1 \data_reg_3_reg[7]  ( .D(n304), .CK(clk), .RN(n403), .Q(data_reg_3[7]), .QN(n792) );
  DFFRX1 \data_reg_3_reg[6]  ( .D(n305), .CK(clk), .RN(n404), .Q(data_reg_3[6]), .QN(n793) );
  DFFRX1 \data_reg_3_reg[5]  ( .D(n306), .CK(clk), .RN(n403), .Q(data_reg_3[5]), .QN(n794) );
  DFFRX1 \data_reg_3_reg[4]  ( .D(n307), .CK(clk), .RN(n403), .Q(data_reg_3[4]), .QN(n795) );
  DFFRX1 \data_reg_3_reg[3]  ( .D(n308), .CK(clk), .RN(n403), .Q(data_reg_3[3]), .QN(n796) );
  DFFRX1 \data_reg_3_reg[1]  ( .D(n310), .CK(clk), .RN(n403), .Q(data_reg_3[1]), .QN(n798) );
  DFFRX1 \data_reg_4_reg[7]  ( .D(n335), .CK(clk), .RN(n405), .Q(n622), .QN(
        n821) );
  DFFRX1 \data_reg_4_reg[2]  ( .D(n330), .CK(clk), .RN(reset), .Q(n598), .QN(
        n826) );
  OR3X1 U325 ( .A(n443), .B(n448), .C(n518), .Y(n377) );
  NAND4X1 U326 ( .A(n98), .B(n97), .C(N185), .D(n482), .Y(n464) );
  INVXL U327 ( .A(n533), .Y(n382) );
  INVXL U328 ( .A(n382), .Y(n383) );
  INVXL U329 ( .A(n377), .Y(n384) );
  AOI211XL U330 ( .A0(n443), .A1(n448), .B0(n551), .C0(st_cnt[2]), .Y(n533) );
  NAND2BXL U331 ( .AN(addr_cnt[1]), .B(N185), .Y(n409) );
  OAI221XL U332 ( .A0(n590), .A1(n595), .B0(n579), .B1(n596), .C0(n597), .Y(
        n_res_do[2]) );
  NOR4XL U333 ( .A(sti_addr[2]), .B(sti_addr[1]), .C(sti_addr[0]), .D(
        addr_cnt[3]), .Y(n482) );
  NOR4XL U334 ( .A(sti_addr[9]), .B(sti_addr[8]), .C(sti_addr[7]), .D(
        sti_addr[6]), .Y(n481) );
  OAI32X4 U335 ( .A0(n447), .A1(st_cnt[2]), .A2(n553), .B0(n538), .B1(n535), 
        .Y(n541) );
  CLKBUFX3 U336 ( .A(n572), .Y(n385) );
  OA22X2 U337 ( .A0(n569), .A1(n537), .B0(n570), .B1(n459), .Y(n568) );
  OAI32X4 U338 ( .A0(n536), .A1(st_cnt[2]), .A2(n553), .B0(n377), .B1(n535), 
        .Y(n540) );
  CLKBUFX3 U339 ( .A(n575), .Y(n386) );
  NOR3X2 U340 ( .A(n549), .B(st_cnt[2]), .C(n550), .Y(n457) );
  OAI222X4 U341 ( .A0(n534), .A1(n447), .B0(n377), .B1(n535), .C0(n536), .C1(
        n537), .Y(n525) );
  INVX3 U342 ( .A(d_p_1_2[2]), .Y(n596) );
  NAND2X2 U343 ( .A(n578), .B(n567), .Y(n576) );
  NOR2X2 U344 ( .A(n471), .B(st[3]), .Y(sti_rd) );
  AOI32X4 U345 ( .A0(n556), .A1(n441), .A2(n566), .B0(n567), .B1(n457), .Y(
        n558) );
  OAI21X1 U346 ( .A0(st[3]), .A1(n447), .B0(n460), .Y(n567) );
  NOR2BX2 U347 ( .AN(n497), .B(n498), .Y(n487) );
  OA21X2 U348 ( .A0(n502), .A1(n501), .B0(n515), .Y(n497) );
  OA21X2 U349 ( .A0(n625), .A1(n635), .B0(n636), .Y(n579) );
  OAI21X2 U350 ( .A0(n549), .A1(n550), .B0(n383), .Y(n542) );
  OAI222X4 U351 ( .A0(n534), .A1(n536), .B0(n538), .B1(n535), .C0(n447), .C1(
        n537), .Y(n524) );
  OAI32X1 U352 ( .A0(n605), .A1(d_p_1_0[4]), .A2(n728), .B0(d_p_1_0[5]), .B1(
        n610), .Y(n732) );
  INVX1 U353 ( .A(n567), .Y(n570) );
  NOR2XL U354 ( .A(n596), .B(d_p_1_1[2]), .Y(n774) );
  NOR2XL U355 ( .A(n596), .B(d_p_1_0[2]), .Y(n721) );
  NOR2XL U356 ( .A(n701), .B(d_p_1_2[5]), .Y(n769) );
  OAI21XL U357 ( .A0(d_p_1_3[7]), .A1(n691), .B0(n726), .Y(n690) );
  AOI211XL U358 ( .A0(d_p_1_1[2]), .A1(n600), .B0(d_p_1_1[3]), .C0(n682), .Y(
        n761) );
  AOI211XL U359 ( .A0(d_p_1_0[2]), .A1(n600), .B0(d_p_1_0[3]), .C0(n682), .Y(
        n734) );
  CLKINVX1 U360 ( .A(n632), .Y(n629) );
  AOI211XL U361 ( .A0(n677), .A1(n596), .B0(n678), .C0(n679), .Y(n673) );
  MXI2XL U362 ( .A(n564), .B(n397), .S0(n568), .Y(n329) );
  MXI2XL U363 ( .A(n559), .B(n398), .S0(n568), .Y(n334) );
  OAI211XL U364 ( .A0(n603), .A1(n596), .B0(n643), .C0(n601), .Y(n668) );
  AOI32XL U365 ( .A0(n782), .A1(n608), .A2(n700), .B0(n613), .B1(n701), .Y(
        n786) );
  AOI211XL U366 ( .A0(n455), .A1(n469), .B0(sti_rd), .C0(n463), .Y(n468) );
  AOI22XL U367 ( .A0(N260), .A1(n391), .B0(n487), .B1(N226), .Y(n493) );
  AOI22XL U368 ( .A0(N259), .A1(n391), .B0(n487), .B1(N225), .Y(n492) );
  AOI22XL U369 ( .A0(N258), .A1(n391), .B0(n487), .B1(N224), .Y(n491) );
  AOI22XL U370 ( .A0(N262), .A1(n391), .B0(n487), .B1(N228), .Y(n485) );
  MX2XL U371 ( .A(n450), .B(n475), .S0(n457), .Y(n465) );
  AOI211XL U372 ( .A0(d_p_1_2[2]), .A1(n600), .B0(d_p_1_2[3]), .C0(n682), .Y(
        n678) );
  OAI211XL U373 ( .A0(n603), .A1(n595), .B0(n643), .C0(n600), .Y(n655) );
  NAND3XL U374 ( .A(n448), .B(n443), .C(n518), .Y(n471) );
  INVXL U375 ( .A(n457), .Y(n438) );
  OAI211XL U376 ( .A0(n499), .A1(n511), .B0(n392), .C0(n512), .Y(n359) );
  AOI22XL U377 ( .A0(N167), .A1(n497), .B0(n391), .B1(N190), .Y(n512) );
  OAI211XL U378 ( .A0(n499), .A1(n414), .B0(n392), .C0(n510), .Y(n360) );
  AOI22XL U379 ( .A0(N166), .A1(n497), .B0(n391), .B1(N189), .Y(n510) );
  OAI211XL U380 ( .A0(n499), .A1(n513), .B0(n392), .C0(n514), .Y(n358) );
  AOI22XL U381 ( .A0(N168), .A1(n497), .B0(n391), .B1(N191), .Y(n514) );
  AOI2BB2XL U382 ( .B0(n474), .B1(n462), .A0N(n475), .A1N(n457), .Y(n476) );
  MXI2XL U383 ( .A(n497), .B(n505), .S0(n506), .Y(n504) );
  CLKINVX1 U384 ( .A(n_res_do[3]), .Y(n599) );
  CLKINVX1 U385 ( .A(n_res_do[7]), .Y(n618) );
  CLKINVX1 U386 ( .A(n_res_do[1]), .Y(n589) );
  CLKINVX1 U387 ( .A(n_res_do[2]), .Y(n594) );
  CLKINVX1 U388 ( .A(n_res_do[4]), .Y(n604) );
  CLKINVX1 U389 ( .A(n_res_do[5]), .Y(n609) );
  CLKINVX1 U390 ( .A(n_res_do[6]), .Y(n614) );
  NAND2XL U391 ( .A(st[0]), .B(n443), .Y(n586) );
  MXI2XL U392 ( .A(n560), .B(n822), .S0(n568), .Y(n333) );
  MXI2XL U393 ( .A(n565), .B(n825), .S0(n568), .Y(n328) );
  MXI2XL U394 ( .A(n563), .B(n826), .S0(n568), .Y(n330) );
  MXI2XL U395 ( .A(n562), .B(n823), .S0(n568), .Y(n331) );
  MXI2XL U396 ( .A(n561), .B(n828), .S0(n568), .Y(n332) );
  MXI2XL U397 ( .A(n557), .B(n821), .S0(n568), .Y(n335) );
  NOR2XL U398 ( .A(n622), .B(n620), .Y(n659) );
  AOI2BB2XL U399 ( .B0(n446), .B1(n447), .A0N(nst[1]), .A1N(n448), .Y(n445) );
  MXI2XL U400 ( .A(n565), .B(n119), .S0(n558), .Y(n336) );
  MXI2XL U401 ( .A(n564), .B(n118), .S0(n558), .Y(n337) );
  MXI2XL U402 ( .A(n563), .B(n117), .S0(n558), .Y(n338) );
  MXI2XL U403 ( .A(n562), .B(n116), .S0(n558), .Y(n339) );
  MXI2XL U404 ( .A(n561), .B(n115), .S0(n558), .Y(n340) );
  MXI2XL U405 ( .A(n560), .B(n114), .S0(n558), .Y(n341) );
  MXI2XL U406 ( .A(n559), .B(n113), .S0(n558), .Y(n342) );
  MXI2XL U407 ( .A(n557), .B(n111), .S0(n558), .Y(n343) );
  MXI2XL U408 ( .A(n490), .B(n487), .S0(N326), .Y(n489) );
  AOI22XL U409 ( .A0(N261), .A1(n391), .B0(n487), .B1(N227), .Y(n494) );
  AOI22XL U410 ( .A0(N263), .A1(n391), .B0(n487), .B1(N229), .Y(n496) );
  NAND2XL U411 ( .A(d_p_1_1[5]), .B(n822), .Y(n782) );
  NOR3XL U412 ( .A(st[0]), .B(st[1]), .C(n443), .Y(n552) );
  OAI211XL U413 ( .A0(n96), .A1(n499), .B0(n392), .C0(n509), .Y(n361) );
  AOI22XL U414 ( .A0(N165), .A1(n497), .B0(n391), .B1(N188), .Y(n509) );
  OAI211XL U415 ( .A0(n97), .A1(n499), .B0(n392), .C0(n508), .Y(n362) );
  AOI22XL U416 ( .A0(N164), .A1(n497), .B0(n391), .B1(N187), .Y(n508) );
  OAI211XL U417 ( .A0(n98), .A1(n499), .B0(n392), .C0(n507), .Y(n363) );
  AOI22XL U418 ( .A0(N163), .A1(n497), .B0(n391), .B1(N186), .Y(n507) );
  INVX1 U419 ( .A(n631), .Y(n638) );
  NAND2XL U420 ( .A(n474), .B(n628), .Y(n634) );
  AND3X2 U421 ( .A(n630), .B(n627), .C(n631), .Y(n587) );
  AND2X2 U422 ( .A(n626), .B(n627), .Y(n585) );
  INVX1 U423 ( .A(d_p_1_3[4]), .Y(n605) );
  INVX1 U424 ( .A(d_p_1_3[5]), .Y(n610) );
  NOR2XL U425 ( .A(n611), .B(d_p_1_3[5]), .Y(n672) );
  NOR2XL U426 ( .A(n701), .B(d_p_1_3[5]), .Y(n755) );
  AOI32XL U427 ( .A0(n741), .A1(n608), .A2(n713), .B0(n613), .B1(n712), .Y(
        n745) );
  AOI32XL U428 ( .A0(n647), .A1(n608), .A2(n605), .B0(n613), .B1(n610), .Y(
        n651) );
  NOR2XL U429 ( .A(n622), .B(n619), .Y(n645) );
  AOI2BB2XL U430 ( .B0(d_p_1_3[6]), .B1(n398), .A0N(n605), .A1N(n608), .Y(n648) );
  OAI211X1 U431 ( .A0(n633), .A1(n638), .B0(n629), .C0(n479), .Y(n625) );
  NOR2X1 U432 ( .A(n712), .B(d_p_1_3[5]), .Y(n728) );
  NOR2XL U433 ( .A(n622), .B(n691), .Y(n739) );
  NAND2XL U434 ( .A(d_p_1_3[5]), .B(n822), .Y(n647) );
  NAND3X1 U435 ( .A(n388), .B(n635), .C(n389), .Y(n390) );
  NAND2X1 U436 ( .A(n390), .B(n640), .Y(n588) );
  INVXL U437 ( .A(n625), .Y(n388) );
  CLKINVX1 U438 ( .A(n623), .Y(n389) );
  AOI2BB2XL U439 ( .B0(n622), .B1(n619), .A0N(n644), .A1N(n645), .Y(n623) );
  AOI22XL U440 ( .A0(n587), .A1(d_p_1_1[0]), .B0(n588), .B1(d_p_1_3[0]), .Y(
        n581) );
  CLKBUFX3 U441 ( .A(n571), .Y(n394) );
  OAI21XL U442 ( .A0(n570), .A1(n537), .B0(n396), .Y(n571) );
  CLKBUFX3 U443 ( .A(n486), .Y(n391) );
  CLKINVX1 U444 ( .A(n503), .Y(n486) );
  CLKBUFX3 U445 ( .A(n484), .Y(n392) );
  NAND2X1 U446 ( .A(n456), .B(n502), .Y(n484) );
  CLKINVX1 U447 ( .A(n690), .Y(n684) );
  INVX3 U448 ( .A(d_p_1_0[6]), .Y(n698) );
  INVX3 U449 ( .A(d_p_1_3[3]), .Y(n600) );
  CLKBUFX3 U450 ( .A(n573), .Y(n396) );
  NOR2X1 U451 ( .A(n474), .B(n479), .Y(n573) );
  CLKBUFX3 U452 ( .A(reset), .Y(n403) );
  CLKBUFX3 U453 ( .A(reset), .Y(n404) );
  CLKBUFX3 U454 ( .A(reset), .Y(n405) );
  CLKBUFX3 U455 ( .A(reset), .Y(n406) );
  CLKBUFX3 U456 ( .A(reset), .Y(n407) );
  CLKBUFX3 U457 ( .A(reset), .Y(n408) );
  CLKBUFX3 U458 ( .A(n574), .Y(n395) );
  OAI31XL U459 ( .A0(n442), .A1(st_cnt[2]), .A2(n570), .B0(n396), .Y(n574) );
  CLKBUFX3 U460 ( .A(n827), .Y(n398) );
  CLKBUFX3 U461 ( .A(n824), .Y(n397) );
  CLKBUFX3 U462 ( .A(n829), .Y(sti_addr[8]) );
  CLKBUFX3 U463 ( .A(n830), .Y(sti_addr[6]) );
  CLKBUFX3 U464 ( .A(n831), .Y(sti_addr[5]) );
  CLKBUFX3 U465 ( .A(n832), .Y(sti_addr[4]) );
  CLKBUFX3 U466 ( .A(n523), .Y(n393) );
  AOI211X1 U467 ( .A0(n516), .A1(st[2]), .B0(n502), .C0(st[3]), .Y(n523) );
  NOR3BX2 U468 ( .AN(n623), .B(n624), .C(n625), .Y(n583) );
  OAI31X4 U469 ( .A0(n791), .A1(n570), .A2(n441), .B0(n396), .Y(n578) );
  XNOR2X1 U470 ( .A(sti_addr[9]), .B(\sub_107_aco/carry [6]), .Y(N263) );
  OR2X1 U471 ( .A(sti_addr[8]), .B(\sub_107_aco/carry [5]), .Y(
        \sub_107_aco/carry [6]) );
  XNOR2X1 U472 ( .A(\sub_107_aco/carry [5]), .B(sti_addr[8]), .Y(N262) );
  OR2X1 U473 ( .A(sti_addr[7]), .B(\sub_107_aco/carry [4]), .Y(
        \sub_107_aco/carry [5]) );
  XNOR2X1 U474 ( .A(\sub_107_aco/carry [4]), .B(sti_addr[7]), .Y(N261) );
  OR2X1 U475 ( .A(sti_addr[6]), .B(\sub_107_aco/carry [3]), .Y(
        \sub_107_aco/carry [4]) );
  XNOR2X1 U476 ( .A(\sub_107_aco/carry [3]), .B(sti_addr[6]), .Y(N260) );
  OR2X1 U477 ( .A(sti_addr[5]), .B(\sub_107_aco/carry [2]), .Y(
        \sub_107_aco/carry [3]) );
  XNOR2X1 U478 ( .A(\sub_107_aco/carry [2]), .B(sti_addr[5]), .Y(N259) );
  OR2X1 U479 ( .A(sti_addr[4]), .B(\sub_107_aco/carry [1]), .Y(
        \sub_107_aco/carry [2]) );
  XNOR2X1 U480 ( .A(\sub_107_aco/carry [1]), .B(sti_addr[4]), .Y(N258) );
  OR2X1 U481 ( .A(n464), .B(sti_addr[3]), .Y(\sub_107_aco/carry [1]) );
  XNOR2X1 U482 ( .A(sti_addr[3]), .B(n464), .Y(N257) );
  OAI2BB1X1 U483 ( .A0N(addr_cnt[0]), .A1N(addr_cnt[1]), .B0(n409), .Y(N186)
         );
  OR2X1 U484 ( .A(n409), .B(addr_cnt[2]), .Y(n410) );
  OAI2BB1X1 U485 ( .A0N(n409), .A1N(addr_cnt[2]), .B0(n410), .Y(N187) );
  NOR2X1 U486 ( .A(n410), .B(addr_cnt[3]), .Y(n411) );
  AO21X1 U487 ( .A0(n410), .A1(addr_cnt[3]), .B0(n411), .Y(N188) );
  NAND2X1 U488 ( .A(n411), .B(n414), .Y(n412) );
  OAI21XL U489 ( .A0(n411), .A1(n414), .B0(n412), .Y(N189) );
  XNOR2X1 U490 ( .A(sti_addr[1]), .B(n412), .Y(N190) );
  NOR2X1 U491 ( .A(sti_addr[1]), .B(n412), .Y(n413) );
  XOR2X1 U492 ( .A(sti_addr[2]), .B(n413), .Y(N191) );
  NAND2BX1 U493 ( .AN(sti_addr[4]), .B(N326), .Y(n415) );
  OAI2BB1X1 U494 ( .A0N(sti_addr[3]), .A1N(sti_addr[4]), .B0(n415), .Y(N327)
         );
  OR2X1 U495 ( .A(n415), .B(sti_addr[5]), .Y(n416) );
  OAI2BB1X1 U496 ( .A0N(n415), .A1N(sti_addr[5]), .B0(n416), .Y(N328) );
  NOR2X1 U497 ( .A(n416), .B(sti_addr[6]), .Y(n417) );
  AO21X1 U498 ( .A0(n416), .A1(sti_addr[6]), .B0(n417), .Y(N329) );
  NAND2X1 U499 ( .A(n417), .B(n420), .Y(n418) );
  OAI21XL U500 ( .A0(n417), .A1(n420), .B0(n418), .Y(N330) );
  XNOR2X1 U501 ( .A(sti_addr[8]), .B(n418), .Y(N331) );
  NOR2X1 U502 ( .A(sti_addr[8]), .B(n418), .Y(n419) );
  XOR2X1 U503 ( .A(sti_addr[9]), .B(n419), .Y(N332) );
  NOR2X1 U504 ( .A(addr_cnt[1]), .B(N185), .Y(n430) );
  NOR2X1 U505 ( .A(addr_cnt[1]), .B(addr_cnt[0]), .Y(n429) );
  NOR2X1 U506 ( .A(addr_cnt[0]), .B(n98), .Y(n427) );
  NOR2X1 U507 ( .A(N185), .B(n98), .Y(n426) );
  AO22X1 U508 ( .A0(sti_di[5]), .A1(n427), .B0(sti_di[4]), .B1(n426), .Y(n421)
         );
  AOI221XL U509 ( .A0(sti_di[6]), .A1(n430), .B0(sti_di[7]), .B1(n429), .C0(
        n421), .Y(n424) );
  AO22X1 U510 ( .A0(sti_di[1]), .A1(n427), .B0(sti_di[0]), .B1(n426), .Y(n422)
         );
  AOI221XL U511 ( .A0(sti_di[2]), .A1(n430), .B0(sti_di[3]), .B1(n429), .C0(
        n422), .Y(n423) );
  OA22X1 U512 ( .A0(addr_cnt[2]), .A1(n424), .B0(n97), .B1(n423), .Y(n434) );
  AO22X1 U513 ( .A0(sti_di[13]), .A1(n427), .B0(sti_di[12]), .B1(n426), .Y(
        n425) );
  AOI221XL U514 ( .A0(sti_di[14]), .A1(n430), .B0(sti_di[15]), .B1(n429), .C0(
        n425), .Y(n432) );
  AO22X1 U515 ( .A0(sti_di[9]), .A1(n427), .B0(sti_di[8]), .B1(n426), .Y(n428)
         );
  AOI221XL U516 ( .A0(sti_di[10]), .A1(n430), .B0(sti_di[11]), .B1(n429), .C0(
        n428), .Y(n431) );
  OAI22XL U517 ( .A0(n432), .A1(addr_cnt[2]), .B0(n97), .B1(n431), .Y(n433) );
  OAI2BB2XL U518 ( .B0(n434), .B1(n96), .A0N(n96), .A1N(n433), .Y(N686) );
  OAI21XL U519 ( .A0(n435), .A1(n436), .B0(n437), .Y(nst[3]) );
  CLKINVX1 U520 ( .A(n372), .Y(n437) );
  OAI22XL U521 ( .A0(n438), .A1(n439), .B0(n440), .B1(n441), .Y(n_st_cnt[2])
         );
  AOI2BB1X1 U522 ( .A0N(n439), .A1N(st_cnt[1]), .B0(n_st_cnt[0]), .Y(n440) );
  OAI2BB2XL U523 ( .B0(n442), .B1(n439), .A0N(st_cnt[1]), .A1N(n_st_cnt[0]), 
        .Y(n_st_cnt[1]) );
  NOR2X1 U524 ( .A(n439), .B(st_cnt[0]), .Y(n_st_cnt[0]) );
  OAI211X1 U525 ( .A0(nst[2]), .A1(n443), .B0(n444), .C0(n445), .Y(n439) );
  NAND4X1 U526 ( .A(n449), .B(n450), .C(n451), .D(n452), .Y(nst[1]) );
  AOI222XL U527 ( .A0(n453), .A1(n454), .B0(n455), .B1(n456), .C0(n457), .C1(
        n458), .Y(n452) );
  OA22X1 U528 ( .A0(n459), .A1(n460), .B0(n461), .B1(n462), .Y(n451) );
  NAND2X1 U529 ( .A(n463), .B(n464), .Y(n449) );
  XNOR2X1 U530 ( .A(st[0]), .B(nst[0]), .Y(n444) );
  NAND4X1 U531 ( .A(n465), .B(n466), .C(n467), .D(n468), .Y(nst[0]) );
  CLKINVX1 U532 ( .A(n470), .Y(n463) );
  MXI2X1 U533 ( .A(n472), .B(n473), .S0(n459), .Y(n467) );
  NOR3X1 U534 ( .A(st[0]), .B(st[3]), .C(st[2]), .Y(n472) );
  NAND2X1 U535 ( .A(n456), .B(n474), .Y(n466) );
  NAND4X1 U536 ( .A(n470), .B(n460), .C(n450), .D(n476), .Y(nst[2]) );
  NAND2X1 U537 ( .A(n477), .B(n478), .Y(n462) );
  NAND2X1 U538 ( .A(n479), .B(n435), .Y(n470) );
  NAND4X1 U539 ( .A(\sub_107_aco/B[0] ), .B(N326), .C(n480), .D(n481), .Y(n435) );
  NOR2X1 U540 ( .A(sti_addr[5]), .B(sti_addr[4]), .Y(n480) );
  CLKINVX1 U541 ( .A(n464), .Y(\sub_107_aco/B[0] ) );
  NOR2X1 U542 ( .A(n454), .B(n471), .Y(n372) );
  OAI211X1 U543 ( .A0(n483), .A1(n375), .B0(n392), .C0(n485), .Y(n371) );
  NAND3X1 U544 ( .A(n488), .B(n392), .C(n489), .Y(n370) );
  NAND2X1 U545 ( .A(N257), .B(n391), .Y(n488) );
  OAI211X1 U546 ( .A0(n483), .A1(n376), .B0(n392), .C0(n491), .Y(n369) );
  OAI211X1 U547 ( .A0(n483), .A1(n379), .B0(n392), .C0(n492), .Y(n368) );
  OAI211X1 U548 ( .A0(n483), .A1(n378), .B0(n392), .C0(n493), .Y(n367) );
  OAI211X1 U549 ( .A0(n483), .A1(n420), .B0(n392), .C0(n494), .Y(n366) );
  OAI211X1 U550 ( .A0(n483), .A1(n495), .B0(n392), .C0(n496), .Y(n365) );
  CLKINVX1 U551 ( .A(n490), .Y(n483) );
  NAND2X1 U552 ( .A(n499), .B(n500), .Y(n490) );
  OAI21XL U553 ( .A0(n501), .A1(n502), .B0(n498), .Y(n500) );
  OAI211X1 U554 ( .A0(n503), .A1(addr_cnt[0]), .B0(n392), .C0(n504), .Y(n364)
         );
  NAND2X1 U555 ( .A(n515), .B(n516), .Y(n503) );
  CLKINVX1 U556 ( .A(n505), .Y(n499) );
  OAI21XL U557 ( .A0(n456), .A1(n471), .B0(n515), .Y(n505) );
  AND3X1 U558 ( .A(n446), .B(n447), .C(n454), .Y(n515) );
  NAND2X1 U559 ( .A(st[2]), .B(n517), .Y(n446) );
  CLKINVX1 U560 ( .A(n478), .Y(n456) );
  NAND2X1 U561 ( .A(n519), .B(n520), .Y(n478) );
  NOR4X1 U562 ( .A(n498), .B(N326), .C(n376), .D(n379), .Y(n520) );
  CLKINVX1 U563 ( .A(n477), .Y(n498) );
  NOR4X1 U564 ( .A(n513), .B(n511), .C(n414), .D(n469), .Y(n477) );
  NAND4X1 U565 ( .A(addr_cnt[3]), .B(addr_cnt[2]), .C(n521), .D(n506), .Y(n469) );
  NOR4X1 U566 ( .A(n378), .B(n420), .C(n375), .D(n495), .Y(n519) );
  MXI2X1 U567 ( .A(n820), .B(n522), .S0(n393), .Y(n357) );
  AOI222XL U568 ( .A0(N162), .A1(n524), .B0(N185), .B1(n525), .C0(n526), .C1(
        n506), .Y(n522) );
  CLKINVX1 U569 ( .A(N185), .Y(n506) );
  MXI2X1 U570 ( .A(n819), .B(n527), .S0(n393), .Y(n356) );
  AOI222XL U571 ( .A0(N163), .A1(n524), .B0(N186), .B1(n525), .C0(n526), .C1(
        n521), .Y(n527) );
  CLKINVX1 U572 ( .A(n98), .Y(n521) );
  MXI2X1 U573 ( .A(n818), .B(n528), .S0(n393), .Y(n355) );
  AOI222XL U574 ( .A0(N164), .A1(n524), .B0(N187), .B1(n525), .C0(n526), .C1(
        addr_cnt[2]), .Y(n528) );
  MXI2X1 U575 ( .A(n817), .B(n529), .S0(n393), .Y(n354) );
  AOI222XL U576 ( .A0(N165), .A1(n524), .B0(N188), .B1(n525), .C0(n526), .C1(
        addr_cnt[3]), .Y(n529) );
  MXI2X1 U577 ( .A(n816), .B(n530), .S0(n393), .Y(n353) );
  AOI222XL U578 ( .A0(N166), .A1(n524), .B0(N189), .B1(n525), .C0(sti_addr[0]), 
        .C1(n526), .Y(n530) );
  MXI2X1 U579 ( .A(n815), .B(n531), .S0(n393), .Y(n352) );
  AOI222XL U580 ( .A0(N167), .A1(n524), .B0(N190), .B1(n525), .C0(sti_addr[1]), 
        .C1(n526), .Y(n531) );
  MXI2X1 U581 ( .A(n814), .B(n532), .S0(n393), .Y(n351) );
  AOI222XL U582 ( .A0(N168), .A1(n524), .B0(N191), .B1(n525), .C0(sti_addr[2]), 
        .C1(n526), .Y(n532) );
  NAND2X1 U583 ( .A(n383), .B(n442), .Y(n526) );
  AND2X1 U584 ( .A(n535), .B(n438), .Y(n534) );
  MXI2X1 U585 ( .A(n813), .B(n539), .S0(n393), .Y(n350) );
  AOI222XL U586 ( .A0(N223), .A1(n540), .B0(N326), .B1(n541), .C0(sti_addr[3]), 
        .C1(n542), .Y(n539) );
  MXI2X1 U587 ( .A(n812), .B(n543), .S0(n393), .Y(n349) );
  AOI222XL U588 ( .A0(N224), .A1(n540), .B0(N327), .B1(n541), .C0(sti_addr[4]), 
        .C1(n542), .Y(n543) );
  MXI2X1 U589 ( .A(n811), .B(n544), .S0(n393), .Y(n348) );
  AOI222XL U590 ( .A0(N225), .A1(n540), .B0(N328), .B1(n541), .C0(sti_addr[5]), 
        .C1(n542), .Y(n544) );
  MXI2X1 U591 ( .A(n810), .B(n545), .S0(n393), .Y(n347) );
  AOI222XL U592 ( .A0(N226), .A1(n540), .B0(N329), .B1(n541), .C0(sti_addr[6]), 
        .C1(n542), .Y(n545) );
  MXI2X1 U593 ( .A(n809), .B(n546), .S0(n393), .Y(n346) );
  AOI222XL U594 ( .A0(N227), .A1(n540), .B0(N330), .B1(n541), .C0(sti_addr[7]), 
        .C1(n542), .Y(n546) );
  MXI2X1 U595 ( .A(n808), .B(n547), .S0(n393), .Y(n345) );
  AOI222XL U596 ( .A0(N228), .A1(n540), .B0(N331), .B1(n541), .C0(sti_addr[8]), 
        .C1(n542), .Y(n547) );
  MXI2X1 U597 ( .A(n807), .B(n548), .S0(n393), .Y(n344) );
  AOI222XL U598 ( .A0(N229), .A1(n540), .B0(N332), .B1(n541), .C0(sti_addr[9]), 
        .C1(n542), .Y(n548) );
  OA21XL U599 ( .A0(n384), .A1(n552), .B0(n535), .Y(n551) );
  NAND2X1 U600 ( .A(n554), .B(n441), .Y(n535) );
  NOR3X1 U601 ( .A(n555), .B(n556), .C(n554), .Y(n553) );
  NAND2X1 U602 ( .A(st_cnt[2]), .B(n556), .Y(n459) );
  CLKINVX1 U603 ( .A(n566), .Y(n569) );
  NAND2X1 U604 ( .A(n475), .B(n450), .Y(n566) );
  NAND2X1 U605 ( .A(n384), .B(n454), .Y(n450) );
  CLKINVX1 U606 ( .A(n458), .Y(n475) );
  NOR2X1 U607 ( .A(n538), .B(st[3]), .Y(n458) );
  CLKINVX1 U608 ( .A(n552), .Y(n538) );
  OAI222XL U609 ( .A0(n120), .A1(n394), .B0(n557), .B1(n385), .C0(n111), .C1(
        n396), .Y(n327) );
  OAI222XL U610 ( .A0(n121), .A1(n394), .B0(n559), .B1(n385), .C0(n113), .C1(
        n396), .Y(n326) );
  OAI222XL U611 ( .A0(n122), .A1(n394), .B0(n560), .B1(n385), .C0(n114), .C1(
        n396), .Y(n325) );
  OAI222XL U612 ( .A0(n123), .A1(n394), .B0(n561), .B1(n385), .C0(n115), .C1(
        n396), .Y(n324) );
  OAI222XL U613 ( .A0(n124), .A1(n394), .B0(n562), .B1(n385), .C0(n116), .C1(
        n396), .Y(n323) );
  OAI222XL U614 ( .A0(n125), .A1(n394), .B0(n563), .B1(n385), .C0(n117), .C1(
        n396), .Y(n322) );
  OAI222XL U615 ( .A0(n126), .A1(n394), .B0(n564), .B1(n385), .C0(n118), .C1(
        n396), .Y(n321) );
  OAI222XL U616 ( .A0(n127), .A1(n394), .B0(n565), .B1(n385), .C0(n119), .C1(
        n396), .Y(n320) );
  NAND2X1 U617 ( .A(n394), .B(n567), .Y(n572) );
  NAND2X1 U618 ( .A(n555), .B(n441), .Y(n537) );
  NOR2X1 U619 ( .A(n550), .B(st_cnt[0]), .Y(n555) );
  OAI222XL U620 ( .A0(n806), .A1(n395), .B0(n565), .B1(n386), .C0(n127), .C1(
        n396), .Y(n319) );
  OAI222XL U621 ( .A0(n805), .A1(n395), .B0(n564), .B1(n386), .C0(n126), .C1(
        n396), .Y(n318) );
  OAI222XL U622 ( .A0(n804), .A1(n395), .B0(n563), .B1(n386), .C0(n125), .C1(
        n396), .Y(n317) );
  OAI222XL U623 ( .A0(n803), .A1(n395), .B0(n562), .B1(n386), .C0(n124), .C1(
        n396), .Y(n316) );
  OAI222XL U624 ( .A0(n802), .A1(n395), .B0(n561), .B1(n386), .C0(n123), .C1(
        n396), .Y(n315) );
  OAI222XL U625 ( .A0(n801), .A1(n395), .B0(n560), .B1(n386), .C0(n122), .C1(
        n396), .Y(n314) );
  OAI222XL U626 ( .A0(n800), .A1(n395), .B0(n559), .B1(n386), .C0(n121), .C1(
        n396), .Y(n313) );
  OAI222XL U627 ( .A0(n799), .A1(n395), .B0(n557), .B1(n386), .C0(n120), .C1(
        n396), .Y(n312) );
  NAND2X1 U628 ( .A(n395), .B(n567), .Y(n575) );
  CLKINVX1 U629 ( .A(n556), .Y(n442) );
  NOR2X1 U630 ( .A(n549), .B(st_cnt[1]), .Y(n556) );
  OAI21XL U631 ( .A0(n565), .A1(n576), .B0(n577), .Y(n311) );
  MXI2X1 U632 ( .A(n387), .B(n_res_do[0]), .S0(n578), .Y(n577) );
  OAI211X1 U633 ( .A0(n579), .A1(n580), .B0(n581), .C0(n582), .Y(n_res_do[0])
         );
  AOI222XL U634 ( .A0(n583), .A1(n584), .B0(N686), .B1(n455), .C0(d_p_1_0[0]), 
        .C1(n585), .Y(n582) );
  AND2X1 U635 ( .A(n501), .B(n454), .Y(n455) );
  NOR2X1 U636 ( .A(n586), .B(st[1]), .Y(n501) );
  CLKINVX1 U637 ( .A(res_di[0]), .Y(n565) );
  OAI221XL U638 ( .A0(n564), .A1(n576), .B0(n798), .B1(n578), .C0(n589), .Y(
        n310) );
  OAI221XL U639 ( .A0(n590), .A1(n591), .B0(n579), .B1(n592), .C0(n593), .Y(
        n_res_do[1]) );
  AOI222XL U640 ( .A0(n587), .A1(d_p_1_1[1]), .B0(n585), .B1(d_p_1_0[1]), .C0(
        n583), .C1(n381), .Y(n593) );
  CLKINVX1 U641 ( .A(d_p_1_3[1]), .Y(n591) );
  CLKINVX1 U642 ( .A(res_di[1]), .Y(n564) );
  OAI221XL U643 ( .A0(n563), .A1(n576), .B0(n797), .B1(n578), .C0(n594), .Y(
        n309) );
  AOI222XL U644 ( .A0(n587), .A1(d_p_1_1[2]), .B0(n585), .B1(d_p_1_0[2]), .C0(
        n583), .C1(n598), .Y(n597) );
  CLKINVX1 U645 ( .A(res_di[2]), .Y(n563) );
  OAI221XL U646 ( .A0(n562), .A1(n576), .B0(n796), .B1(n578), .C0(n599), .Y(
        n308) );
  OAI221XL U647 ( .A0(n590), .A1(n600), .B0(n579), .B1(n601), .C0(n602), .Y(
        n_res_do[3]) );
  AOI222XL U648 ( .A0(n587), .A1(d_p_1_1[3]), .B0(n585), .B1(d_p_1_0[3]), .C0(
        n583), .C1(n603), .Y(n602) );
  CLKINVX1 U649 ( .A(res_di[3]), .Y(n562) );
  OAI221XL U650 ( .A0(n561), .A1(n576), .B0(n795), .B1(n578), .C0(n604), .Y(
        n307) );
  OAI221XL U651 ( .A0(n590), .A1(n605), .B0(n579), .B1(n606), .C0(n607), .Y(
        n_res_do[4]) );
  AOI222XL U652 ( .A0(n587), .A1(d_p_1_1[4]), .B0(n585), .B1(d_p_1_0[4]), .C0(
        n583), .C1(n608), .Y(n607) );
  CLKINVX1 U653 ( .A(res_di[4]), .Y(n561) );
  OAI221XL U654 ( .A0(n560), .A1(n576), .B0(n794), .B1(n578), .C0(n609), .Y(
        n306) );
  OAI221XL U655 ( .A0(n590), .A1(n610), .B0(n579), .B1(n611), .C0(n612), .Y(
        n_res_do[5]) );
  AOI222XL U656 ( .A0(n587), .A1(d_p_1_1[5]), .B0(n585), .B1(d_p_1_0[5]), .C0(
        n583), .C1(n613), .Y(n612) );
  CLKINVX1 U657 ( .A(res_di[5]), .Y(n560) );
  OAI221XL U658 ( .A0(n559), .A1(n576), .B0(n793), .B1(n578), .C0(n614), .Y(
        n305) );
  OAI221XL U659 ( .A0(n590), .A1(n615), .B0(n579), .B1(n616), .C0(n617), .Y(
        n_res_do[6]) );
  AOI222XL U660 ( .A0(n587), .A1(d_p_1_1[6]), .B0(n585), .B1(d_p_1_0[6]), .C0(
        n583), .C1(n380), .Y(n617) );
  CLKINVX1 U661 ( .A(d_p_1_3[6]), .Y(n615) );
  CLKINVX1 U662 ( .A(res_di[6]), .Y(n559) );
  OAI221XL U663 ( .A0(n557), .A1(n576), .B0(n792), .B1(n578), .C0(n618), .Y(
        n304) );
  OAI221XL U664 ( .A0(n590), .A1(n619), .B0(n579), .B1(n620), .C0(n621), .Y(
        n_res_do[7]) );
  AOI222XL U665 ( .A0(n587), .A1(d_p_1_1[7]), .B0(n585), .B1(d_p_1_0[7]), .C0(
        n583), .C1(n622), .Y(n621) );
  OAI22XL U666 ( .A0(n461), .A1(n628), .B0(n436), .B1(n629), .Y(n626) );
  OAI31XL U667 ( .A0(n436), .A1(n632), .A2(n633), .B0(n634), .Y(n630) );
  NAND4X1 U668 ( .A(n637), .B(n627), .C(n638), .D(n639), .Y(n636) );
  CLKINVX1 U669 ( .A(n588), .Y(n590) );
  NAND4X1 U670 ( .A(n637), .B(n641), .C(n627), .D(n638), .Y(n640) );
  NAND4X1 U671 ( .A(n822), .B(n397), .C(n821), .D(n642), .Y(n627) );
  NOR4X1 U672 ( .A(n643), .B(n608), .C(n380), .D(n584), .Y(n642) );
  CLKINVX1 U673 ( .A(n634), .Y(n637) );
  AOI32X1 U674 ( .A0(n646), .A1(n647), .A2(n648), .B0(n649), .B1(n650), .Y(
        n644) );
  OAI21XL U675 ( .A0(n651), .A1(d_p_1_3[6]), .B0(n398), .Y(n650) );
  NAND2X1 U676 ( .A(n651), .B(d_p_1_3[6]), .Y(n649) );
  OAI221XL U677 ( .A0(n652), .A1(n653), .B0(d_p_1_3[2]), .B1(n654), .C0(n655), 
        .Y(n646) );
  OAI22XL U678 ( .A0(n603), .A1(n600), .B0(n598), .B1(n595), .Y(n653) );
  ACHCINX2 U679 ( .CIN(n656), .A(n397), .B(d_p_1_3[1]), .CO(n652) );
  CLKINVX1 U680 ( .A(d_p_1_3[0]), .Y(n656) );
  CLKINVX1 U681 ( .A(n635), .Y(n624) );
  NAND2X1 U682 ( .A(n639), .B(n657), .Y(n635) );
  OAI22XL U683 ( .A0(d_p_1_2[7]), .A1(n821), .B0(n658), .B1(n659), .Y(n657) );
  AOI32X1 U684 ( .A0(n660), .A1(n661), .A2(n662), .B0(n663), .B1(n664), .Y(
        n658) );
  OAI21XL U685 ( .A0(n665), .A1(d_p_1_2[6]), .B0(n398), .Y(n664) );
  NAND2X1 U686 ( .A(n665), .B(d_p_1_2[6]), .Y(n663) );
  AOI32X1 U687 ( .A0(n661), .A1(n608), .A2(n606), .B0(n613), .B1(n611), .Y(
        n665) );
  AOI2BB2X1 U688 ( .B0(d_p_1_2[6]), .B1(n398), .A0N(n606), .A1N(n608), .Y(n662) );
  NAND2X1 U689 ( .A(d_p_1_2[5]), .B(n822), .Y(n661) );
  OAI221XL U690 ( .A0(n666), .A1(n667), .B0(d_p_1_2[2]), .B1(n654), .C0(n668), 
        .Y(n660) );
  OAI22XL U691 ( .A0(n603), .A1(n601), .B0(n598), .B1(n596), .Y(n667) );
  ACHCINX2 U692 ( .CIN(n584), .A(n397), .B(d_p_1_2[1]), .CO(n666) );
  CLKINVX1 U693 ( .A(n641), .Y(n639) );
  AOI22X1 U694 ( .A0(n669), .A1(n670), .B0(d_p_1_3[7]), .B1(n620), .Y(n641) );
  OAI32X1 U695 ( .A0(n671), .A1(n672), .A2(n673), .B0(n674), .B1(n675), .Y(
        n670) );
  NOR2X1 U696 ( .A(n616), .B(n676), .Y(n675) );
  AOI21X1 U697 ( .A0(n616), .A1(n676), .B0(d_p_1_3[6]), .Y(n674) );
  OAI32X1 U698 ( .A0(n605), .A1(d_p_1_2[4]), .A2(n672), .B0(d_p_1_2[5]), .B1(
        n610), .Y(n676) );
  AOI222XL U699 ( .A0(n680), .A1(n681), .B0(d_p_1_2[2]), .B1(n595), .C0(
        d_p_1_2[3]), .C1(n600), .Y(n679) );
  OAI21XL U700 ( .A0(d_p_1_3[1]), .A1(n592), .B0(n580), .Y(n681) );
  CLKINVX1 U701 ( .A(d_p_1_2[0]), .Y(n580) );
  NAND2X1 U702 ( .A(d_p_1_3[1]), .B(n592), .Y(n680) );
  CLKINVX1 U703 ( .A(d_p_1_2[1]), .Y(n592) );
  OAI22XL U704 ( .A0(d_p_1_3[6]), .A1(n616), .B0(d_p_1_3[4]), .B1(n606), .Y(
        n671) );
  CLKINVX1 U705 ( .A(d_p_1_2[6]), .Y(n616) );
  NAND2X1 U706 ( .A(d_p_1_2[7]), .B(n619), .Y(n669) );
  NOR2BX1 U707 ( .AN(n683), .B(n628), .Y(n632) );
  OAI211X1 U708 ( .A0(d_p_1_3[7]), .A1(n684), .B0(n685), .C0(n686), .Y(n628)
         );
  AOI22X1 U709 ( .A0(n687), .A1(n620), .B0(n688), .B1(n689), .Y(n686) );
  OAI31XL U710 ( .A0(n687), .A1(n690), .A2(n689), .B0(d_p_1_0[7]), .Y(n685) );
  OAI21XL U711 ( .A0(d_p_1_1[7]), .A1(n691), .B0(n692), .Y(n689) );
  OAI32X1 U712 ( .A0(n693), .A1(n694), .A2(n695), .B0(n696), .B1(n697), .Y(
        n692) );
  NOR2X1 U713 ( .A(n698), .B(n699), .Y(n697) );
  AOI21X1 U714 ( .A0(n698), .A1(n699), .B0(d_p_1_1[6]), .Y(n696) );
  OAI32X1 U715 ( .A0(n700), .A1(d_p_1_0[4]), .A2(n694), .B0(d_p_1_0[5]), .B1(
        n701), .Y(n699) );
  AOI211X1 U716 ( .A0(d_p_1_1[3]), .A1(n702), .B0(n703), .C0(n704), .Y(n695)
         );
  AOI222XL U717 ( .A0(n705), .A1(n706), .B0(d_p_1_0[2]), .B1(n707), .C0(
        d_p_1_0[3]), .C1(n708), .Y(n704) );
  OAI211X1 U718 ( .A0(d_p_1_1[1]), .A1(n709), .B0(n710), .C0(d_p_1_1[0]), .Y(
        n706) );
  NAND2X1 U719 ( .A(d_p_1_1[1]), .B(n709), .Y(n705) );
  OA21XL U720 ( .A0(n702), .A1(d_p_1_1[3]), .B0(n711), .Y(n703) );
  NOR2X1 U721 ( .A(n707), .B(d_p_1_0[2]), .Y(n702) );
  NOR2X1 U722 ( .A(n712), .B(d_p_1_1[5]), .Y(n694) );
  OAI22XL U723 ( .A0(d_p_1_1[6]), .A1(n698), .B0(d_p_1_1[4]), .B1(n713), .Y(
        n693) );
  OAI21XL U724 ( .A0(d_p_1_2[7]), .A1(n691), .B0(n714), .Y(n687) );
  OAI32X1 U725 ( .A0(n715), .A1(n716), .A2(n717), .B0(n718), .B1(n719), .Y(
        n714) );
  NOR2X1 U726 ( .A(n698), .B(n720), .Y(n719) );
  AOI21X1 U727 ( .A0(n698), .A1(n720), .B0(d_p_1_2[6]), .Y(n718) );
  OAI32X1 U728 ( .A0(n606), .A1(d_p_1_0[4]), .A2(n716), .B0(d_p_1_0[5]), .B1(
        n611), .Y(n720) );
  AOI211X1 U729 ( .A0(d_p_1_2[3]), .A1(n721), .B0(n722), .C0(n723), .Y(n717)
         );
  AOI222XL U730 ( .A0(n724), .A1(n725), .B0(d_p_1_0[2]), .B1(n596), .C0(
        d_p_1_0[3]), .C1(n601), .Y(n723) );
  OAI211X1 U731 ( .A0(d_p_1_2[1]), .A1(n709), .B0(n710), .C0(d_p_1_2[0]), .Y(
        n725) );
  NAND2X1 U732 ( .A(d_p_1_2[1]), .B(n709), .Y(n724) );
  OA21XL U733 ( .A0(n721), .A1(d_p_1_2[3]), .B0(n711), .Y(n722) );
  NOR2X1 U734 ( .A(n712), .B(d_p_1_2[5]), .Y(n716) );
  OAI22XL U735 ( .A0(d_p_1_2[6]), .A1(n698), .B0(d_p_1_2[4]), .B1(n713), .Y(
        n715) );
  OAI32X1 U736 ( .A0(n727), .A1(n728), .A2(n729), .B0(n730), .B1(n731), .Y(
        n726) );
  NOR2X1 U737 ( .A(n698), .B(n732), .Y(n731) );
  AOI21X1 U738 ( .A0(n698), .A1(n732), .B0(d_p_1_3[6]), .Y(n730) );
  AOI211X1 U739 ( .A0(n677), .A1(n733), .B0(n734), .C0(n735), .Y(n729) );
  AOI222XL U740 ( .A0(n736), .A1(n737), .B0(d_p_1_0[2]), .B1(n595), .C0(
        d_p_1_0[3]), .C1(n600), .Y(n735) );
  OAI211X1 U741 ( .A0(d_p_1_3[1]), .A1(n709), .B0(n710), .C0(d_p_1_3[0]), .Y(
        n737) );
  CLKINVX1 U742 ( .A(d_p_1_0[0]), .Y(n710) );
  NAND2X1 U743 ( .A(d_p_1_3[1]), .B(n709), .Y(n736) );
  CLKINVX1 U744 ( .A(d_p_1_0[1]), .Y(n709) );
  OAI22XL U745 ( .A0(d_p_1_3[6]), .A1(n698), .B0(d_p_1_3[4]), .B1(n713), .Y(
        n727) );
  OAI22XL U746 ( .A0(d_p_1_0[7]), .A1(n821), .B0(n738), .B1(n739), .Y(n683) );
  CLKINVX1 U747 ( .A(d_p_1_0[7]), .Y(n691) );
  AOI32X1 U748 ( .A0(n740), .A1(n741), .A2(n742), .B0(n743), .B1(n744), .Y(
        n738) );
  OAI21XL U749 ( .A0(n745), .A1(d_p_1_0[6]), .B0(n398), .Y(n744) );
  NAND2X1 U750 ( .A(n745), .B(d_p_1_0[6]), .Y(n743) );
  CLKINVX1 U751 ( .A(d_p_1_0[5]), .Y(n712) );
  AOI2BB2X1 U752 ( .B0(d_p_1_0[6]), .B1(n398), .A0N(n713), .A1N(n608), .Y(n742) );
  CLKINVX1 U753 ( .A(d_p_1_0[4]), .Y(n713) );
  NAND2X1 U754 ( .A(d_p_1_0[5]), .B(n822), .Y(n741) );
  OAI211X1 U755 ( .A0(d_p_1_0[2]), .A1(n654), .B0(n746), .C0(n747), .Y(n740)
         );
  OAI211X1 U756 ( .A0(n603), .A1(n733), .B0(n643), .C0(n711), .Y(n747) );
  OAI222XL U757 ( .A0(n603), .A1(n711), .B0(n598), .B1(n733), .C0(n748), .C1(
        n749), .Y(n746) );
  NOR2X1 U758 ( .A(n397), .B(d_p_1_0[1]), .Y(n749) );
  AOI211X1 U759 ( .A0(d_p_1_0[1]), .A1(n397), .B0(n825), .C0(d_p_1_0[0]), .Y(
        n748) );
  CLKINVX1 U760 ( .A(d_p_1_0[2]), .Y(n733) );
  CLKINVX1 U761 ( .A(d_p_1_0[3]), .Y(n711) );
  AOI221XL U762 ( .A0(n620), .A1(n750), .B0(n619), .B1(n751), .C0(n752), .Y(
        n631) );
  AOI2BB1X1 U763 ( .A0N(n750), .A1N(n751), .B0(n688), .Y(n752) );
  OAI21XL U764 ( .A0(d_p_1_3[7]), .A1(n688), .B0(n753), .Y(n751) );
  OAI32X1 U765 ( .A0(n754), .A1(n755), .A2(n756), .B0(n757), .B1(n758), .Y(
        n753) );
  NOR2X1 U766 ( .A(n759), .B(n760), .Y(n758) );
  AOI21X1 U767 ( .A0(n759), .A1(n760), .B0(d_p_1_3[6]), .Y(n757) );
  OAI32X1 U768 ( .A0(n605), .A1(d_p_1_1[4]), .A2(n755), .B0(d_p_1_1[5]), .B1(
        n610), .Y(n760) );
  AOI211X1 U769 ( .A0(n677), .A1(n707), .B0(n761), .C0(n762), .Y(n756) );
  AOI222XL U770 ( .A0(n763), .A1(n764), .B0(d_p_1_1[2]), .B1(n595), .C0(
        d_p_1_1[3]), .C1(n600), .Y(n762) );
  OAI211X1 U771 ( .A0(d_p_1_3[1]), .A1(n765), .B0(n766), .C0(d_p_1_3[0]), .Y(
        n764) );
  NAND2X1 U772 ( .A(d_p_1_3[1]), .B(n765), .Y(n763) );
  NOR2X1 U773 ( .A(d_p_1_3[2]), .B(d_p_1_3[3]), .Y(n682) );
  NOR2X1 U774 ( .A(n600), .B(n595), .Y(n677) );
  CLKINVX1 U775 ( .A(d_p_1_3[2]), .Y(n595) );
  OAI22XL U776 ( .A0(d_p_1_3[6]), .A1(n759), .B0(d_p_1_3[4]), .B1(n700), .Y(
        n754) );
  CLKINVX1 U777 ( .A(d_p_1_3[7]), .Y(n619) );
  OAI21XL U778 ( .A0(d_p_1_2[7]), .A1(n688), .B0(n767), .Y(n750) );
  OAI32X1 U779 ( .A0(n768), .A1(n769), .A2(n770), .B0(n771), .B1(n772), .Y(
        n767) );
  NOR2X1 U780 ( .A(n759), .B(n773), .Y(n772) );
  AOI21X1 U781 ( .A0(n759), .A1(n773), .B0(d_p_1_2[6]), .Y(n771) );
  OAI32X1 U782 ( .A0(n606), .A1(d_p_1_1[4]), .A2(n769), .B0(d_p_1_1[5]), .B1(
        n611), .Y(n773) );
  CLKINVX1 U783 ( .A(d_p_1_2[5]), .Y(n611) );
  CLKINVX1 U784 ( .A(d_p_1_2[4]), .Y(n606) );
  AOI211X1 U785 ( .A0(n774), .A1(d_p_1_2[3]), .B0(n775), .C0(n776), .Y(n770)
         );
  AOI222XL U786 ( .A0(n777), .A1(n778), .B0(d_p_1_1[2]), .B1(n596), .C0(
        d_p_1_1[3]), .C1(n601), .Y(n776) );
  CLKINVX1 U787 ( .A(d_p_1_2[3]), .Y(n601) );
  OAI211X1 U788 ( .A0(d_p_1_2[1]), .A1(n765), .B0(n766), .C0(d_p_1_2[0]), .Y(
        n778) );
  CLKINVX1 U789 ( .A(d_p_1_1[0]), .Y(n766) );
  NAND2X1 U790 ( .A(d_p_1_2[1]), .B(n765), .Y(n777) );
  CLKINVX1 U791 ( .A(d_p_1_1[1]), .Y(n765) );
  OA21XL U792 ( .A0(n774), .A1(d_p_1_2[3]), .B0(n708), .Y(n775) );
  OAI22XL U793 ( .A0(d_p_1_2[6]), .A1(n759), .B0(d_p_1_2[4]), .B1(n700), .Y(
        n768) );
  CLKINVX1 U794 ( .A(d_p_1_1[6]), .Y(n759) );
  CLKINVX1 U795 ( .A(d_p_1_2[7]), .Y(n620) );
  AOI2BB2X1 U796 ( .B0(n622), .B1(n688), .A0N(n779), .A1N(n780), .Y(n633) );
  NOR2X1 U797 ( .A(n622), .B(n688), .Y(n780) );
  AOI32X1 U798 ( .A0(n781), .A1(n782), .A2(n783), .B0(n784), .B1(n785), .Y(
        n779) );
  OAI21XL U799 ( .A0(n786), .A1(d_p_1_1[6]), .B0(n398), .Y(n785) );
  NAND2X1 U800 ( .A(n786), .B(d_p_1_1[6]), .Y(n784) );
  CLKINVX1 U801 ( .A(d_p_1_1[5]), .Y(n701) );
  AOI2BB2X1 U802 ( .B0(d_p_1_1[6]), .B1(n398), .A0N(n700), .A1N(n608), .Y(n783) );
  CLKINVX1 U803 ( .A(d_p_1_1[4]), .Y(n700) );
  OAI211X1 U804 ( .A0(d_p_1_1[2]), .A1(n654), .B0(n787), .C0(n788), .Y(n781)
         );
  OAI211X1 U805 ( .A0(n603), .A1(n707), .B0(n643), .C0(n708), .Y(n788) );
  NAND2X1 U806 ( .A(n823), .B(n826), .Y(n643) );
  OAI222XL U807 ( .A0(n603), .A1(n708), .B0(n598), .B1(n707), .C0(n789), .C1(
        n790), .Y(n787) );
  NOR2X1 U808 ( .A(n397), .B(d_p_1_1[1]), .Y(n790) );
  AOI211X1 U809 ( .A0(d_p_1_1[1]), .A1(n397), .B0(n825), .C0(d_p_1_1[0]), .Y(
        n789) );
  CLKINVX1 U810 ( .A(d_p_1_1[2]), .Y(n707) );
  CLKINVX1 U811 ( .A(d_p_1_1[3]), .Y(n708) );
  NAND2X1 U812 ( .A(n598), .B(n603), .Y(n654) );
  CLKINVX1 U813 ( .A(d_p_1_1[7]), .Y(n688) );
  CLKINVX1 U814 ( .A(n461), .Y(n474) );
  NAND2X1 U815 ( .A(n502), .B(n454), .Y(n461) );
  NOR2X1 U816 ( .A(n586), .B(n448), .Y(n502) );
  CLKINVX1 U817 ( .A(n473), .Y(n460) );
  NOR2X1 U818 ( .A(n536), .B(st[3]), .Y(n473) );
  NAND3X1 U819 ( .A(st[2]), .B(n448), .C(st[0]), .Y(n536) );
  CLKINVX1 U820 ( .A(n453), .Y(n447) );
  NOR2X1 U821 ( .A(n517), .B(st[2]), .Y(n453) );
  CLKINVX1 U822 ( .A(n554), .Y(n791) );
  NOR2X1 U823 ( .A(st_cnt[1]), .B(st_cnt[0]), .Y(n554) );
  CLKINVX1 U824 ( .A(res_di[7]), .Y(n557) );
  OAI21XL U825 ( .A0(st[3]), .A1(n586), .B0(n436), .Y(N135) );
  CLKINVX1 U826 ( .A(n479), .Y(n436) );
  NOR3X1 U827 ( .A(n517), .B(st[3]), .C(n443), .Y(n479) );
  CLKINVX1 U828 ( .A(n516), .Y(n517) );
  NOR2X1 U829 ( .A(n448), .B(st[0]), .Y(n516) );
  DT_DW01_inc_0 add_217 ( .A({data_reg_3[7:1], n387}), .SUM(d_p_1_3) );
  DT_DW01_inc_1 add_216 ( .A(data_reg_2), .SUM(d_p_1_2) );
  DT_DW01_inc_2 add_215 ( .A(data_reg_1), .SUM(d_p_1_1) );
  DT_DW01_inc_3 add_214 ( .A(data_reg_0), .SUM(d_p_1_0) );
  DT_DW01_inc_4 r432 ( .A(sti_addr[9:3]), .SUM({N229, N228, N227, N226, N225, 
        N224, N223}) );
  DT_DW01_inc_5 r430 ( .A({sti_addr[2:0], addr_cnt}), .SUM({N168, N167, N166, 
        N165, N164, N163, N162}) );
  DFFRX1 \data_reg_4_reg[0]  ( .D(n328), .CK(clk), .RN(reset), .Q(n584), .QN(
        n825) );
  DFFRX1 \data_reg_4_reg[6]  ( .D(n334), .CK(clk), .RN(n405), .Q(n380), .QN(
        n827) );
  DFFRX1 \data_reg_4_reg[1]  ( .D(n329), .CK(clk), .RN(reset), .Q(n381), .QN(
        n824) );
  DFFRX4 \addr_cnt_Y_reg[0]  ( .D(n370), .CK(clk), .RN(n407), .Q(sti_addr[3]), 
        .QN(N326) );
  DFFRX4 \addr_cnt_Y_reg[6]  ( .D(n365), .CK(clk), .RN(n407), .Q(sti_addr[9]), 
        .QN(n495) );
  DFFRX4 \addr_cnt_X_reg[5]  ( .D(n359), .CK(clk), .RN(n407), .Q(sti_addr[1]), 
        .QN(n511) );
  DFFRX4 \addr_cnt_Y_reg[4]  ( .D(n366), .CK(clk), .RN(n406), .Q(sti_addr[7]), 
        .QN(n420) );
  DFFRX2 \data_reg_4_reg[3]  ( .D(n331), .CK(clk), .RN(reset), .Q(n603), .QN(
        n823) );
  DFFRX2 \addr_cnt_X_reg[6]  ( .D(n358), .CK(clk), .RN(n408), .Q(sti_addr[2]), 
        .QN(n513) );
  DFFRX2 \data_reg_4_reg[4]  ( .D(n332), .CK(clk), .RN(n405), .Q(n608), .QN(
        n828) );
  DFFRX2 \addr_cnt_X_reg[4]  ( .D(n360), .CK(clk), .RN(n407), .Q(sti_addr[0]), 
        .QN(n414) );
  DFFRX2 \st_reg[3]  ( .D(nst[3]), .CK(clk), .RN(n408), .Q(st[3]), .QN(n454)
         );
  DFFRX2 \ram_addr_reg[13]  ( .D(n344), .CK(clk), .RN(n406), .Q(res_addr[13]), 
        .QN(n807) );
  DFFRX2 \ram_addr_reg[12]  ( .D(n345), .CK(clk), .RN(n406), .Q(res_addr[12]), 
        .QN(n808) );
  DFFRX2 \ram_addr_reg[11]  ( .D(n346), .CK(clk), .RN(n406), .Q(res_addr[11]), 
        .QN(n809) );
  DFFRX2 \ram_addr_reg[10]  ( .D(n347), .CK(clk), .RN(n406), .Q(res_addr[10]), 
        .QN(n810) );
  DFFRX2 \ram_addr_reg[9]  ( .D(n348), .CK(clk), .RN(n406), .Q(res_addr[9]), 
        .QN(n811) );
  DFFRX2 \ram_addr_reg[8]  ( .D(n349), .CK(clk), .RN(n406), .Q(res_addr[8]), 
        .QN(n812) );
  DFFRX2 \ram_addr_reg[7]  ( .D(n350), .CK(clk), .RN(n406), .Q(res_addr[7]), 
        .QN(n813) );
  DFFRX2 \ram_addr_reg[1]  ( .D(n356), .CK(clk), .RN(n408), .Q(res_addr[1]), 
        .QN(n819) );
  DFFRX2 \ram_addr_reg[0]  ( .D(n357), .CK(clk), .RN(n407), .Q(res_addr[0]), 
        .QN(n820) );
  DFFRX2 \ram_addr_reg[3]  ( .D(n354), .CK(clk), .RN(n407), .Q(res_addr[3]), 
        .QN(n817) );
  DFFRX2 \ram_addr_reg[2]  ( .D(n355), .CK(clk), .RN(n407), .Q(res_addr[2]), 
        .QN(n818) );
  DFFRX2 \ram_addr_reg[6]  ( .D(n351), .CK(clk), .RN(n407), .Q(res_addr[6]), 
        .QN(n814) );
  DFFRX2 \ram_addr_reg[5]  ( .D(n352), .CK(clk), .RN(n407), .Q(res_addr[5]), 
        .QN(n815) );
  DFFRX2 \ram_addr_reg[4]  ( .D(n353), .CK(clk), .RN(n407), .Q(res_addr[4]), 
        .QN(n816) );
  DFFRX2 done_reg_reg ( .D(n372), .CK(clk), .RN(n408), .Q(done) );
  DFFRX2 wr_reg_reg ( .D(N135), .CK(clk), .RN(n406), .Q(res_wr) );
  DFFRX2 \res_do_reg_reg[0]  ( .D(n_res_do[0]), .CK(clk), .RN(n403), .Q(
        res_do[0]) );
  DFFRX2 \res_do_reg_reg[7]  ( .D(n_res_do[7]), .CK(clk), .RN(n403), .Q(
        res_do[7]) );
  DFFRX2 \res_do_reg_reg[6]  ( .D(n_res_do[6]), .CK(clk), .RN(n404), .Q(
        res_do[6]) );
  DFFRX2 \res_do_reg_reg[5]  ( .D(n_res_do[5]), .CK(clk), .RN(n404), .Q(
        res_do[5]) );
  DFFRX2 \res_do_reg_reg[4]  ( .D(n_res_do[4]), .CK(clk), .RN(n403), .Q(
        res_do[4]) );
  DFFRX2 \res_do_reg_reg[3]  ( .D(n_res_do[3]), .CK(clk), .RN(n403), .Q(
        res_do[3]) );
  DFFRX2 \res_do_reg_reg[2]  ( .D(n_res_do[2]), .CK(clk), .RN(n403), .Q(
        res_do[2]) );
  DFFRX2 \res_do_reg_reg[1]  ( .D(n_res_do[1]), .CK(clk), .RN(n403), .Q(
        res_do[1]) );
endmodule

