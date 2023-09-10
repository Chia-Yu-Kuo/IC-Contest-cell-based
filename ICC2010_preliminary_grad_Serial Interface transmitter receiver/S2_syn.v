/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Fri Feb 17 21:47:39 2023
/////////////////////////////////////////////////////////////


module S2 ( clk, rst, updown, S2_done, RB2_RW, RB2_A, RB2_D, RB2_Q, sen, sd );
  output [2:0] RB2_A;
  output [17:0] RB2_D;
  input [17:0] RB2_Q;
  input clk, rst, updown;
  output S2_done, RB2_RW;
  inout sen,  sd;
  wire   N109, N110, N111, n1210, n1211, n1212, n1213, n1214, n1215, n1216,
         n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226,
         n1227, n1228, n1229, N134, N135, N136, \RB2_data[0][17] ,
         \RB2_data[0][16] , \RB2_data[0][15] , \RB2_data[0][14] ,
         \RB2_data[0][13] , \RB2_data[0][12] , \RB2_data[0][11] ,
         \RB2_data[0][10] , \RB2_data[0][9] , \RB2_data[0][8] ,
         \RB2_data[0][7] , \RB2_data[0][6] , \RB2_data[0][5] ,
         \RB2_data[0][4] , \RB2_data[0][3] , \RB2_data[0][2] ,
         \RB2_data[0][1] , \RB2_data[0][0] , \RB2_data[1][17] ,
         \RB2_data[1][16] , \RB2_data[1][15] , \RB2_data[1][14] ,
         \RB2_data[1][13] , \RB2_data[1][12] , \RB2_data[1][11] ,
         \RB2_data[1][10] , \RB2_data[1][9] , \RB2_data[1][8] ,
         \RB2_data[1][7] , \RB2_data[1][6] , \RB2_data[1][5] ,
         \RB2_data[1][4] , \RB2_data[1][3] , \RB2_data[1][2] ,
         \RB2_data[1][1] , \RB2_data[1][0] , \RB2_data[2][17] ,
         \RB2_data[2][16] , \RB2_data[2][15] , \RB2_data[2][14] ,
         \RB2_data[2][13] , \RB2_data[2][12] , \RB2_data[2][11] ,
         \RB2_data[2][10] , \RB2_data[2][9] , \RB2_data[2][8] ,
         \RB2_data[2][7] , \RB2_data[2][6] , \RB2_data[2][5] ,
         \RB2_data[2][4] , \RB2_data[2][3] , \RB2_data[2][2] ,
         \RB2_data[2][1] , \RB2_data[2][0] , \RB2_data[3][17] ,
         \RB2_data[3][16] , \RB2_data[3][15] , \RB2_data[3][14] ,
         \RB2_data[3][13] , \RB2_data[3][12] , \RB2_data[3][11] ,
         \RB2_data[3][10] , \RB2_data[3][9] , \RB2_data[3][8] ,
         \RB2_data[3][7] , \RB2_data[3][6] , \RB2_data[3][5] ,
         \RB2_data[3][4] , \RB2_data[3][3] , \RB2_data[3][2] ,
         \RB2_data[3][1] , \RB2_data[3][0] , \RB2_data[4][17] ,
         \RB2_data[4][16] , \RB2_data[4][15] , \RB2_data[4][14] ,
         \RB2_data[4][13] , \RB2_data[4][12] , \RB2_data[4][11] ,
         \RB2_data[4][10] , \RB2_data[4][9] , \RB2_data[4][8] ,
         \RB2_data[4][7] , \RB2_data[4][6] , \RB2_data[4][5] ,
         \RB2_data[4][4] , \RB2_data[4][3] , \RB2_data[4][2] ,
         \RB2_data[4][1] , \RB2_data[4][0] , \RB2_data[5][17] ,
         \RB2_data[5][16] , \RB2_data[5][15] , \RB2_data[5][14] ,
         \RB2_data[5][13] , \RB2_data[5][12] , \RB2_data[5][11] ,
         \RB2_data[5][10] , \RB2_data[5][9] , \RB2_data[5][8] ,
         \RB2_data[5][7] , \RB2_data[5][6] , \RB2_data[5][5] ,
         \RB2_data[5][4] , \RB2_data[5][3] , \RB2_data[5][2] ,
         \RB2_data[5][1] , \RB2_data[5][0] , \RB2_data[6][17] ,
         \RB2_data[6][16] , \RB2_data[6][15] , \RB2_data[6][14] ,
         \RB2_data[6][13] , \RB2_data[6][12] , \RB2_data[6][11] ,
         \RB2_data[6][10] , \RB2_data[6][9] , \RB2_data[6][8] ,
         \RB2_data[6][7] , \RB2_data[6][6] , \RB2_data[6][5] ,
         \RB2_data[6][4] , \RB2_data[6][3] , \RB2_data[6][2] ,
         \RB2_data[6][1] , \RB2_data[6][0] , \RB2_data[7][17] ,
         \RB2_data[7][16] , \RB2_data[7][15] , \RB2_data[7][14] ,
         \RB2_data[7][13] , \RB2_data[7][12] , \RB2_data[7][11] ,
         \RB2_data[7][10] , \RB2_data[7][9] , \RB2_data[7][8] ,
         \RB2_data[7][7] , \RB2_data[7][6] , \RB2_data[7][5] ,
         \RB2_data[7][4] , \RB2_data[7][3] , \RB2_data[7][2] ,
         \RB2_data[7][1] , \RB2_data[7][0] , N220, N221, N222, N230, N231,
         N232, N233, N234, N275, N276, N277, N278, N279, N280, N281, N282,
         N283, N284, N285, N286, N287, N288, N289, N290, N291, N292, N293,
         N294, N295, N296, n8, n9, n10, n11, n13, n14, n16, n20, n23, n25, n26,
         n27, n29, n30, n31, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n46, n47, n48, n51, n53, n72, n74, n77, n80, n82, n83, n85, n87,
         n89, n90, n91, n92, n94, n95, n96, n97, n99, n100, n101, n102, n103,
         n104, n105, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n132, n133, n134, n136, n137, n142, n143,
         n144, n146, n147, n148, n150, n151, n152, n153, n154, n155, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n323,
         n325, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
         n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, n628,
         n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639,
         n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, n661,
         n662, n663, \sub_202_2/carry[3] , n664, n665, n666, n667, n668, n669,
         n670, n671, n672, n673, n674, n675, n676, n677, n678, n679, n680,
         n681, n682, n683, n684, n685, n686, n687, n688, n689, n690, n691,
         n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, n702,
         n703, n704, n705, n706, n707, n708, n709, n710, n711, n712, n713,
         n714, n715, n716, n717, n718, n719, n720, n721, n722, n723, n724,
         n725, n726, n727, n728, n729, n730, n731, n732, n733, n734, n735,
         n736, n737, n738, n739, n740, n741, n742, n743, n744, n745, n746,
         n747, n748, n749, n750, n751, n752, n753, n754, n755, n756, n757,
         n758, n759, n760, n761, n762, n763, n764, n765, n766, n767, n768,
         n769, n770, n771, n772, n773, n774, n775, n776, n777, n778, n779,
         n780, n781, n782, n783, n784, n785, n786, n787, n788, n789, n790,
         n791, n792, n793, n794, n795, n796, n797, n798, n799, n800, n801,
         n802, n803, n804, n805, n806, n807, n808, n809, n810, n811, n812,
         n813, n814, n815, n816, n817, n818, n819, n820, n821, n822, n823,
         n824, n825, n826, n827, n828, n829, n830, n831, n832, n833, n834,
         n835, n836, n837, n838, n839, n840, n841, n842, n843, n844, n845,
         n846, n847, n848, n849, n850, n851, n852, n853, n854, n855, n856,
         n857, n858, n859, n860, n861, n862, n863, n864, n865, n866, n867,
         n868, n869, n870, n871, n872, n873, n874, n875, n876, n877, n878,
         n879, n880, n881, n882, n883, n884, n885, n886, n887, n888, n889,
         n890, n891, n892, n893, n894, n895, n896, n897, n898, n899, n900,
         n901, n902, n903, n904, n905, n906, n907, n908, n909, n910, n911,
         n912, n913, n914, n915, n916, n917, n918, n919, n920, n921, n922,
         n923, n924, n925, n926, n927, n928, n929, n930, n931, n932, n933,
         n934, n935, n936, n937, n938, n939, n940, n941, n942, n943, n944,
         n945, n946, n947, n948, n949, n950, n951, n952, n953, n954, n955,
         n956, n957, n958, n959, n960, n961, n962, n963, n964, n965, n966,
         n967, n968, n969, n970, n971, n972, n973, n974, n975, n976, n977,
         n978, n979, n980, n981, n982, n983, n984, n985, n986, n987, n988,
         n989, n990, n991, n992, n993, n994, n995, n997, n999, n1032, n1033,
         n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043,
         n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053,
         n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063,
         n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073,
         n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083,
         n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093,
         n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103,
         n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113,
         n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123,
         n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133,
         n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143,
         n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153,
         n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163,
         n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173,
         n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183,
         n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193,
         n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203,
         n1204, n1205, n1206, n1207, n1208, n1209;
  wire   [4:0] counter;
  wire   [4:0] times;
  wire   [2:0] ns;
  wire   [4:0] nx_counter;
  wire   [4:2] \r329/carry ;
  wire   [4:2] \r328/carry ;

  TBUFX16 sd_tri ( .A(n325), .OE(n1198), .Y(sd) );
  TBUFX16 sen_tri ( .A(n323), .OE(n1198), .Y(sen) );
  AOI211X2 U41 ( .A0(n47), .A1(n48), .B0(n1183), .C0(n1182), .Y(n46) );
  DFFRX1 \receive_buff_reg[19]  ( .D(n993), .CK(clk), .RN(n1146), .QN(n1205)
         );
  DFFRX1 \receive_buff_reg[18]  ( .D(n989), .CK(clk), .RN(n1146), .QN(n1206)
         );
  DFFRX1 \receive_buff_reg[20]  ( .D(n987), .CK(clk), .RN(n1146), .QN(n1207)
         );
  DFFNSRX1 \RB2_data_reg[7][1]  ( .D(n951), .CKN(clk), .SN(1'b1), .RN(n1148), 
        .Q(\RB2_data[7][1] ), .QN(n195) );
  DFFNSRX1 \RB2_data_reg[7][2]  ( .D(n949), .CKN(clk), .SN(1'b1), .RN(n1148), 
        .Q(\RB2_data[7][2] ), .QN(n194) );
  DFFNSRX1 \RB2_data_reg[7][3]  ( .D(n947), .CKN(clk), .SN(1'b1), .RN(n1148), 
        .Q(\RB2_data[7][3] ), .QN(n193) );
  DFFNSRX1 \RB2_data_reg[7][4]  ( .D(n945), .CKN(clk), .SN(1'b1), .RN(n1148), 
        .Q(\RB2_data[7][4] ), .QN(n192) );
  DFFNSRX1 \RB2_data_reg[7][5]  ( .D(n943), .CKN(clk), .SN(1'b1), .RN(n1148), 
        .Q(\RB2_data[7][5] ), .QN(n191) );
  DFFNSRX1 \RB2_data_reg[7][6]  ( .D(n941), .CKN(clk), .SN(1'b1), .RN(n1148), 
        .Q(\RB2_data[7][6] ), .QN(n190) );
  DFFNSRX1 \RB2_data_reg[7][7]  ( .D(n939), .CKN(clk), .SN(1'b1), .RN(n1148), 
        .Q(\RB2_data[7][7] ), .QN(n189) );
  DFFNSRX1 \RB2_data_reg[7][8]  ( .D(n937), .CKN(clk), .SN(1'b1), .RN(n1148), 
        .Q(\RB2_data[7][8] ), .QN(n188) );
  DFFNSRX1 \RB2_data_reg[7][9]  ( .D(n935), .CKN(clk), .SN(1'b1), .RN(n1148), 
        .Q(\RB2_data[7][9] ), .QN(n187) );
  DFFNSRX1 \RB2_data_reg[7][10]  ( .D(n933), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[7][10] ), .QN(n186) );
  DFFNSRX1 \RB2_data_reg[7][11]  ( .D(n931), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[7][11] ), .QN(n185) );
  DFFNSRX1 \RB2_data_reg[7][12]  ( .D(n929), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[7][12] ), .QN(n184) );
  DFFNSRX1 \RB2_data_reg[7][13]  ( .D(n927), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[7][13] ), .QN(n183) );
  DFFNSRX1 \RB2_data_reg[7][14]  ( .D(n925), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[7][14] ), .QN(n182) );
  DFFNSRX1 \RB2_data_reg[7][15]  ( .D(n923), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[7][15] ), .QN(n181) );
  DFFNSRX1 \RB2_data_reg[7][16]  ( .D(n921), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[7][16] ), .QN(n180) );
  DFFNSRX1 \RB2_data_reg[7][17]  ( .D(n919), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[7][17] ), .QN(n179) );
  DFFNSRX1 \RB2_data_reg[7][0]  ( .D(n917), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[7][0] ), .QN(n178) );
  DFFNSRX1 \RB2_data_reg[2][1]  ( .D(n915), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[2][1] ), .QN(n285) );
  DFFNSRX1 \RB2_data_reg[2][2]  ( .D(n913), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[2][2] ), .QN(n284) );
  DFFNSRX1 \RB2_data_reg[2][3]  ( .D(n911), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[2][3] ), .QN(n283) );
  DFFNSRX1 \RB2_data_reg[2][4]  ( .D(n909), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[2][4] ), .QN(n282) );
  DFFNSRX1 \RB2_data_reg[2][5]  ( .D(n907), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[2][5] ), .QN(n281) );
  DFFNSRX1 \RB2_data_reg[2][6]  ( .D(n905), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[2][6] ), .QN(n280) );
  DFFNSRX1 \RB2_data_reg[2][7]  ( .D(n903), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[2][7] ), .QN(n279) );
  DFFNSRX1 \RB2_data_reg[2][8]  ( .D(n901), .CKN(clk), .SN(1'b1), .RN(n1149), 
        .Q(\RB2_data[2][8] ), .QN(n278) );
  DFFNSRX1 \RB2_data_reg[2][9]  ( .D(n899), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[2][9] ), .QN(n277) );
  DFFNSRX1 \RB2_data_reg[2][10]  ( .D(n897), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[2][10] ), .QN(n276) );
  DFFNSRX1 \RB2_data_reg[2][11]  ( .D(n895), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[2][11] ), .QN(n275) );
  DFFNSRX1 \RB2_data_reg[2][12]  ( .D(n893), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[2][12] ), .QN(n274) );
  DFFNSRX1 \RB2_data_reg[2][13]  ( .D(n891), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[2][13] ), .QN(n273) );
  DFFNSRX1 \RB2_data_reg[2][14]  ( .D(n889), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[2][14] ), .QN(n272) );
  DFFNSRX1 \RB2_data_reg[2][15]  ( .D(n887), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[2][15] ), .QN(n271) );
  DFFNSRX1 \RB2_data_reg[2][16]  ( .D(n885), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[2][16] ), .QN(n270) );
  DFFNSRX1 \RB2_data_reg[2][17]  ( .D(n883), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[2][17] ), .QN(n269) );
  DFFNSRX1 \RB2_data_reg[2][0]  ( .D(n881), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[2][0] ), .QN(n268) );
  DFFNSRX1 \RB2_data_reg[6][1]  ( .D(n879), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[6][1] ), .QN(n213) );
  DFFNSRX1 \RB2_data_reg[6][2]  ( .D(n877), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[6][2] ), .QN(n212) );
  DFFNSRX1 \RB2_data_reg[6][3]  ( .D(n875), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[6][3] ), .QN(n211) );
  DFFNSRX1 \RB2_data_reg[6][4]  ( .D(n873), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[6][4] ), .QN(n210) );
  DFFNSRX1 \RB2_data_reg[6][5]  ( .D(n871), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[6][5] ), .QN(n209) );
  DFFNSRX1 \RB2_data_reg[6][6]  ( .D(n869), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[6][6] ), .QN(n208) );
  DFFNSRX1 \RB2_data_reg[6][7]  ( .D(n867), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[6][7] ), .QN(n207) );
  DFFNSRX1 \RB2_data_reg[6][8]  ( .D(n865), .CKN(clk), .SN(1'b1), .RN(n1150), 
        .Q(\RB2_data[6][8] ), .QN(n206) );
  DFFNSRX1 \RB2_data_reg[6][9]  ( .D(n863), .CKN(clk), .SN(1'b1), .RN(n1151), 
        .Q(\RB2_data[6][9] ), .QN(n205) );
  DFFNSRX1 \RB2_data_reg[6][10]  ( .D(n861), .CKN(clk), .SN(1'b1), .RN(n1151), 
        .Q(\RB2_data[6][10] ), .QN(n204) );
  DFFNSRX1 \RB2_data_reg[6][11]  ( .D(n859), .CKN(clk), .SN(1'b1), .RN(n1151), 
        .Q(\RB2_data[6][11] ), .QN(n203) );
  DFFNSRX1 \RB2_data_reg[6][12]  ( .D(n857), .CKN(clk), .SN(1'b1), .RN(n1151), 
        .Q(\RB2_data[6][12] ), .QN(n202) );
  DFFNSRX1 \RB2_data_reg[6][13]  ( .D(n855), .CKN(clk), .SN(1'b1), .RN(n1151), 
        .Q(\RB2_data[6][13] ), .QN(n201) );
  DFFNSRX1 \RB2_data_reg[6][14]  ( .D(n853), .CKN(clk), .SN(1'b1), .RN(n1151), 
        .Q(\RB2_data[6][14] ), .QN(n200) );
  DFFNSRX1 \RB2_data_reg[6][15]  ( .D(n851), .CKN(clk), .SN(1'b1), .RN(n1151), 
        .Q(\RB2_data[6][15] ), .QN(n199) );
  DFFNSRX1 \RB2_data_reg[6][16]  ( .D(n849), .CKN(clk), .SN(1'b1), .RN(n1151), 
        .Q(\RB2_data[6][16] ), .QN(n198) );
  DFFNSRX1 \RB2_data_reg[6][17]  ( .D(n847), .CKN(clk), .SN(1'b1), .RN(n1151), 
        .Q(\RB2_data[6][17] ), .QN(n197) );
  DFFNSRX1 \RB2_data_reg[6][0]  ( .D(n845), .CKN(clk), .SN(1'b1), .RN(n1151), 
        .Q(\RB2_data[6][0] ), .QN(n196) );
  DFFNSRX1 \RB2_data_reg[3][1]  ( .D(n843), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[3][1] ), .QN(n267) );
  DFFNSRX1 \RB2_data_reg[3][2]  ( .D(n769), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[3][2] ), .QN(n266) );
  DFFNSRX1 \RB2_data_reg[3][3]  ( .D(n767), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[3][3] ), .QN(n265) );
  DFFNSRX1 \RB2_data_reg[3][4]  ( .D(n765), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[3][4] ), .QN(n264) );
  DFFNSRX1 \RB2_data_reg[3][5]  ( .D(n763), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[3][5] ), .QN(n263) );
  DFFNSRX1 \RB2_data_reg[3][6]  ( .D(n761), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[3][6] ), .QN(n262) );
  DFFNSRX1 \RB2_data_reg[3][7]  ( .D(n759), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[3][7] ), .QN(n261) );
  DFFNSRX1 \RB2_data_reg[3][8]  ( .D(n757), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[3][8] ), .QN(n260) );
  DFFNSRX1 \RB2_data_reg[3][9]  ( .D(n755), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[3][9] ), .QN(n259) );
  DFFNSRX1 \RB2_data_reg[3][10]  ( .D(n753), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[3][10] ), .QN(n258) );
  DFFNSRX1 \RB2_data_reg[3][11]  ( .D(n751), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[3][11] ), .QN(n257) );
  DFFNSRX1 \RB2_data_reg[3][12]  ( .D(n749), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[3][12] ), .QN(n256) );
  DFFNSRX1 \RB2_data_reg[3][13]  ( .D(n747), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[3][13] ), .QN(n255) );
  DFFNSRX1 \RB2_data_reg[3][14]  ( .D(n745), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[3][14] ), .QN(n254) );
  DFFNSRX1 \RB2_data_reg[3][15]  ( .D(n743), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[3][15] ), .QN(n253) );
  DFFNSRX1 \RB2_data_reg[3][16]  ( .D(n741), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[3][16] ), .QN(n252) );
  DFFNSRX1 \RB2_data_reg[3][17]  ( .D(n739), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[3][17] ), .QN(n251) );
  DFFNSRX1 \RB2_data_reg[3][0]  ( .D(n737), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[3][0] ), .QN(n250) );
  DFFNSRX1 \RB2_data_reg[0][1]  ( .D(n735), .CKN(clk), .SN(1'b1), .RN(n1151), 
        .Q(\RB2_data[0][1] ), .QN(n321) );
  DFFNSRX1 \RB2_data_reg[0][2]  ( .D(n841), .CKN(clk), .SN(1'b1), .RN(n1151), 
        .Q(\RB2_data[0][2] ), .QN(n320) );
  DFFNSRX1 \RB2_data_reg[0][3]  ( .D(n839), .CKN(clk), .SN(1'b1), .RN(n1151), 
        .Q(\RB2_data[0][3] ), .QN(n319) );
  DFFNSRX1 \RB2_data_reg[0][4]  ( .D(n837), .CKN(clk), .SN(1'b1), .RN(n1151), 
        .Q(\RB2_data[0][4] ), .QN(n318) );
  DFFNSRX1 \RB2_data_reg[0][5]  ( .D(n835), .CKN(clk), .SN(1'b1), .RN(n1151), 
        .Q(\RB2_data[0][5] ), .QN(n317) );
  DFFNSRX1 \RB2_data_reg[0][6]  ( .D(n833), .CKN(clk), .SN(1'b1), .RN(n1151), 
        .Q(\RB2_data[0][6] ), .QN(n316) );
  DFFNSRX1 \RB2_data_reg[0][7]  ( .D(n831), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[0][7] ), .QN(n315) );
  DFFNSRX1 \RB2_data_reg[0][8]  ( .D(n829), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[0][8] ), .QN(n314) );
  DFFNSRX1 \RB2_data_reg[0][9]  ( .D(n827), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[0][9] ), .QN(n313) );
  DFFNSRX1 \RB2_data_reg[0][10]  ( .D(n825), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[0][10] ), .QN(n312) );
  DFFNSRX1 \RB2_data_reg[0][11]  ( .D(n823), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[0][11] ), .QN(n311) );
  DFFNSRX1 \RB2_data_reg[0][12]  ( .D(n821), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[0][12] ), .QN(n310) );
  DFFNSRX1 \RB2_data_reg[0][13]  ( .D(n819), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[0][13] ), .QN(n309) );
  DFFNSRX1 \RB2_data_reg[0][14]  ( .D(n817), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[0][14] ), .QN(n308) );
  DFFNSRX1 \RB2_data_reg[0][15]  ( .D(n815), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[0][15] ), .QN(n307) );
  DFFNSRX1 \RB2_data_reg[0][16]  ( .D(n813), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[0][16] ), .QN(n306) );
  DFFNSRX1 \RB2_data_reg[0][17]  ( .D(n811), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[0][17] ), .QN(n305) );
  DFFNSRX1 \RB2_data_reg[0][0]  ( .D(n809), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[0][0] ), .QN(n304) );
  DFFNSRX1 \RB2_data_reg[4][1]  ( .D(n807), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[4][1] ), .QN(n249) );
  DFFNSRX1 \RB2_data_reg[4][2]  ( .D(n805), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[4][2] ), .QN(n248) );
  DFFNSRX1 \RB2_data_reg[4][3]  ( .D(n803), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[4][3] ), .QN(n247) );
  DFFNSRX1 \RB2_data_reg[4][4]  ( .D(n801), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[4][4] ), .QN(n246) );
  DFFNSRX1 \RB2_data_reg[4][5]  ( .D(n799), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[4][5] ), .QN(n245) );
  DFFNSRX1 \RB2_data_reg[4][6]  ( .D(n797), .CKN(clk), .SN(1'b1), .RN(n1152), 
        .Q(\RB2_data[4][6] ), .QN(n244) );
  DFFNSRX1 \RB2_data_reg[4][7]  ( .D(n795), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[4][7] ), .QN(n243) );
  DFFNSRX1 \RB2_data_reg[4][8]  ( .D(n793), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[4][8] ), .QN(n242) );
  DFFNSRX1 \RB2_data_reg[4][9]  ( .D(n791), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[4][9] ), .QN(n241) );
  DFFNSRX1 \RB2_data_reg[4][10]  ( .D(n789), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[4][10] ), .QN(n240) );
  DFFNSRX1 \RB2_data_reg[4][11]  ( .D(n787), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[4][11] ), .QN(n239) );
  DFFNSRX1 \RB2_data_reg[4][12]  ( .D(n785), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[4][12] ), .QN(n238) );
  DFFNSRX1 \RB2_data_reg[4][13]  ( .D(n783), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[4][13] ), .QN(n237) );
  DFFNSRX1 \RB2_data_reg[4][14]  ( .D(n781), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[4][14] ), .QN(n236) );
  DFFNSRX1 \RB2_data_reg[4][15]  ( .D(n779), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[4][15] ), .QN(n235) );
  DFFNSRX1 \RB2_data_reg[4][16]  ( .D(n777), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[4][16] ), .QN(n234) );
  DFFNSRX1 \RB2_data_reg[4][17]  ( .D(n775), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[4][17] ), .QN(n233) );
  DFFNSRX1 \RB2_data_reg[4][0]  ( .D(n773), .CKN(clk), .SN(1'b1), .RN(n1153), 
        .Q(\RB2_data[4][0] ), .QN(n232) );
  DFFNSRX1 \RB2_data_reg[1][1]  ( .D(n771), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[1][1] ), .QN(n303) );
  DFFNSRX1 \RB2_data_reg[1][2]  ( .D(n733), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[1][2] ), .QN(n302) );
  DFFNSRX1 \RB2_data_reg[1][3]  ( .D(n731), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[1][3] ), .QN(n301) );
  DFFNSRX1 \RB2_data_reg[1][4]  ( .D(n729), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[1][4] ), .QN(n300) );
  DFFNSRX1 \RB2_data_reg[1][5]  ( .D(n727), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[1][5] ), .QN(n299) );
  DFFNSRX1 \RB2_data_reg[1][6]  ( .D(n725), .CKN(clk), .SN(1'b1), .RN(n1154), 
        .Q(\RB2_data[1][6] ), .QN(n298) );
  DFFNSRX1 \RB2_data_reg[1][7]  ( .D(n723), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[1][7] ), .QN(n297) );
  DFFNSRX1 \RB2_data_reg[1][8]  ( .D(n721), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[1][8] ), .QN(n296) );
  DFFNSRX1 \RB2_data_reg[1][9]  ( .D(n719), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[1][9] ), .QN(n295) );
  DFFNSRX1 \RB2_data_reg[1][10]  ( .D(n717), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[1][10] ), .QN(n294) );
  DFFNSRX1 \RB2_data_reg[1][11]  ( .D(n715), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[1][11] ), .QN(n293) );
  DFFNSRX1 \RB2_data_reg[1][12]  ( .D(n713), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[1][12] ), .QN(n292) );
  DFFNSRX1 \RB2_data_reg[1][13]  ( .D(n711), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[1][13] ), .QN(n291) );
  DFFNSRX1 \RB2_data_reg[1][14]  ( .D(n709), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[1][14] ), .QN(n290) );
  DFFNSRX1 \RB2_data_reg[1][15]  ( .D(n707), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[1][15] ), .QN(n289) );
  DFFNSRX1 \RB2_data_reg[1][16]  ( .D(n705), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[1][16] ), .QN(n288) );
  DFFNSRX1 \RB2_data_reg[1][17]  ( .D(n703), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[1][17] ), .QN(n287) );
  DFFNSRX1 \RB2_data_reg[1][0]  ( .D(n701), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[1][0] ), .QN(n286) );
  DFFNSRX1 \RB2_data_reg[5][1]  ( .D(n699), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[5][1] ), .QN(n231) );
  DFFNSRX1 \RB2_data_reg[5][2]  ( .D(n697), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[5][2] ), .QN(n230) );
  DFFNSRX1 \RB2_data_reg[5][3]  ( .D(n695), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[5][3] ), .QN(n229) );
  DFFNSRX1 \RB2_data_reg[5][4]  ( .D(n693), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[5][4] ), .QN(n228) );
  DFFNSRX1 \RB2_data_reg[5][5]  ( .D(n691), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[5][5] ), .QN(n227) );
  DFFNSRX1 \RB2_data_reg[5][6]  ( .D(n689), .CKN(clk), .SN(1'b1), .RN(n1155), 
        .Q(\RB2_data[5][6] ), .QN(n226) );
  DFFNSRX1 \RB2_data_reg[5][7]  ( .D(n687), .CKN(clk), .SN(1'b1), .RN(n1156), 
        .Q(\RB2_data[5][7] ), .QN(n225) );
  DFFNSRX1 \RB2_data_reg[5][8]  ( .D(n685), .CKN(clk), .SN(1'b1), .RN(n1156), 
        .Q(\RB2_data[5][8] ), .QN(n224) );
  DFFNSRX1 \RB2_data_reg[5][9]  ( .D(n683), .CKN(clk), .SN(1'b1), .RN(n1156), 
        .Q(\RB2_data[5][9] ), .QN(n223) );
  DFFNSRX1 \RB2_data_reg[5][10]  ( .D(n681), .CKN(clk), .SN(1'b1), .RN(n1156), 
        .Q(\RB2_data[5][10] ), .QN(n222) );
  DFFNSRX1 \RB2_data_reg[5][11]  ( .D(n679), .CKN(clk), .SN(1'b1), .RN(n1156), 
        .Q(\RB2_data[5][11] ), .QN(n221) );
  DFFNSRX1 \RB2_data_reg[5][12]  ( .D(n677), .CKN(clk), .SN(1'b1), .RN(n1156), 
        .Q(\RB2_data[5][12] ), .QN(n220) );
  DFFNSRX1 \RB2_data_reg[5][13]  ( .D(n675), .CKN(clk), .SN(1'b1), .RN(n1156), 
        .Q(\RB2_data[5][13] ), .QN(n219) );
  DFFNSRX1 \RB2_data_reg[5][14]  ( .D(n673), .CKN(clk), .SN(1'b1), .RN(n1156), 
        .Q(\RB2_data[5][14] ), .QN(n218) );
  DFFNSRX1 \RB2_data_reg[5][15]  ( .D(n671), .CKN(clk), .SN(1'b1), .RN(n1156), 
        .Q(\RB2_data[5][15] ), .QN(n217) );
  DFFNSRX1 \RB2_data_reg[5][16]  ( .D(n669), .CKN(clk), .SN(1'b1), .RN(n1156), 
        .Q(\RB2_data[5][16] ), .QN(n216) );
  DFFNSRX1 \RB2_data_reg[5][17]  ( .D(n667), .CKN(clk), .SN(1'b1), .RN(n1156), 
        .Q(\RB2_data[5][17] ), .QN(n215) );
  DFFNSRX1 \RB2_data_reg[5][0]  ( .D(n665), .CKN(clk), .SN(1'b1), .RN(n1147), 
        .Q(\RB2_data[5][0] ), .QN(n214) );
  DFFNSRX1 \counter_reg[4]  ( .D(nx_counter[4]), .CKN(clk), .SN(1'b1), .RN(
        n1147), .Q(counter[4]), .QN(n158) );
  DFFNSRX1 \counter_reg[3]  ( .D(nx_counter[3]), .CKN(clk), .SN(1'b1), .RN(
        n1147), .Q(counter[3]), .QN(n159) );
  DFFNSRX1 \counter_reg[1]  ( .D(nx_counter[1]), .CKN(clk), .SN(1'b1), .RN(
        n1147), .Q(counter[1]), .QN(n488) );
  DFFNSRX1 \counter_reg[2]  ( .D(nx_counter[2]), .CKN(clk), .SN(1'b1), .RN(
        n1148), .Q(counter[2]), .QN(n487) );
  DFFRX1 \receive_buff_reg[0]  ( .D(n991), .CK(clk), .RN(n1147), .Q(n1229), 
        .QN(n160) );
  DFFRX1 \receive_buff_reg[1]  ( .D(n953), .CK(clk), .RN(n1147), .Q(n1228), 
        .QN(n161) );
  DFFRX1 \receive_buff_reg[2]  ( .D(n955), .CK(clk), .RN(n1147), .Q(n1227), 
        .QN(n162) );
  DFFRX1 \receive_buff_reg[3]  ( .D(n957), .CK(clk), .RN(n1146), .Q(n1226), 
        .QN(n163) );
  DFFRX1 \receive_buff_reg[4]  ( .D(n959), .CK(clk), .RN(n1147), .Q(n1225), 
        .QN(n164) );
  DFFRX1 \receive_buff_reg[5]  ( .D(n961), .CK(clk), .RN(n1147), .Q(n1224), 
        .QN(n165) );
  DFFRX1 \receive_buff_reg[6]  ( .D(n963), .CK(clk), .RN(n1146), .Q(n1223), 
        .QN(n166) );
  DFFRX1 \receive_buff_reg[8]  ( .D(n965), .CK(clk), .RN(n1147), .Q(n1221), 
        .QN(n168) );
  DFFRX1 \receive_buff_reg[9]  ( .D(n969), .CK(clk), .RN(n1146), .Q(n1220), 
        .QN(n169) );
  DFFRX1 \receive_buff_reg[10]  ( .D(n971), .CK(clk), .RN(n1147), .Q(n1219), 
        .QN(n170) );
  DFFRX1 \receive_buff_reg[11]  ( .D(n973), .CK(clk), .RN(n1147), .Q(n1218), 
        .QN(n171) );
  DFFRX1 \receive_buff_reg[12]  ( .D(n975), .CK(clk), .RN(n1146), .Q(n1217), 
        .QN(n172) );
  DFFRX1 \receive_buff_reg[13]  ( .D(n977), .CK(clk), .RN(n1147), .Q(n1216), 
        .QN(n173) );
  DFFRX1 \receive_buff_reg[14]  ( .D(n979), .CK(clk), .RN(n1146), .Q(n1215), 
        .QN(n174) );
  DFFRX1 \receive_buff_reg[17]  ( .D(n981), .CK(clk), .RN(n1146), .Q(n1212), 
        .QN(n177) );
  DFFRX1 \receive_buff_reg[7]  ( .D(n985), .CK(clk), .RN(n1146), .Q(n1222), 
        .QN(n167) );
  DFFRX1 \receive_buff_reg[15]  ( .D(n967), .CK(clk), .RN(n1146), .Q(n1214), 
        .QN(n175) );
  DFFRX1 \receive_buff_reg[16]  ( .D(n983), .CK(clk), .RN(n1146), .Q(n1213), 
        .QN(n176) );
  DFFNSRX1 \cs_reg[1]  ( .D(ns[1]), .CKN(clk), .SN(1'b1), .RN(n1148), .Q(n1197), .QN(n493) );
  DFFNSRX1 \times_reg[4]  ( .D(n994), .CKN(clk), .SN(1'b1), .RN(n1148), .Q(
        times[4]), .QN(n1204) );
  DFFNSRX1 \times_reg[2]  ( .D(n660), .CKN(clk), .SN(1'b1), .RN(n1162), .Q(
        times[2]), .QN(n1202) );
  DFFNSRX1 \times_reg[3]  ( .D(n659), .CKN(clk), .SN(1'b1), .RN(n1162), .Q(
        times[3]), .QN(n1203) );
  DFFNSRX1 \times_reg[0]  ( .D(n662), .CKN(clk), .SN(1'b1), .RN(n1148), .Q(
        times[0]), .QN(n1200) );
  DFFNSRX1 \times_reg[1]  ( .D(n661), .CKN(clk), .SN(1'b1), .RN(n1148), .Q(
        N275), .QN(n1201) );
  DFFNSRX1 \cs_reg[0]  ( .D(ns[0]), .CKN(clk), .SN(1'b1), .RN(n1162), .QN(
        n1195) );
  DFFNSRX1 \RB2_A_reg[1]  ( .D(N135), .CKN(clk), .SN(1'b1), .RN(n1151), .Q(
        n1209), .QN(n490) );
  DFFNSRX1 \RB2_A_reg[0]  ( .D(N134), .CKN(clk), .SN(1'b1), .RN(n1149), .Q(
        n1208), .QN(n491) );
  DFFNSRX1 \RB2_A_reg[2]  ( .D(N136), .CKN(clk), .SN(1'b1), .RN(n1148), .QN(
        n157) );
  DFFNSRX4 \counter_reg[0]  ( .D(nx_counter[0]), .CKN(clk), .SN(1'b1), .RN(
        n1147), .Q(N109), .QN(n489) );
  DFFNSRX2 \cs_reg[2]  ( .D(n1181), .CKN(clk), .SN(1'b1), .RN(n1148), .Q(n1198), .QN(n492) );
  CLKINVX1 U504 ( .A(n601), .Y(n664) );
  CLKINVX1 U505 ( .A(n664), .Y(n665) );
  CLKINVX1 U506 ( .A(n600), .Y(n666) );
  CLKINVX1 U507 ( .A(n666), .Y(n667) );
  CLKINVX1 U508 ( .A(n599), .Y(n668) );
  CLKINVX1 U509 ( .A(n668), .Y(n669) );
  CLKINVX1 U510 ( .A(n598), .Y(n670) );
  CLKINVX1 U511 ( .A(n670), .Y(n671) );
  CLKINVX1 U512 ( .A(n597), .Y(n672) );
  CLKINVX1 U513 ( .A(n672), .Y(n673) );
  CLKINVX1 U514 ( .A(n596), .Y(n674) );
  CLKINVX1 U515 ( .A(n674), .Y(n675) );
  CLKINVX1 U516 ( .A(n595), .Y(n676) );
  CLKINVX1 U517 ( .A(n676), .Y(n677) );
  CLKINVX1 U518 ( .A(n594), .Y(n678) );
  CLKINVX1 U519 ( .A(n678), .Y(n679) );
  CLKINVX1 U520 ( .A(n593), .Y(n680) );
  CLKINVX1 U521 ( .A(n680), .Y(n681) );
  CLKINVX1 U522 ( .A(n592), .Y(n682) );
  CLKINVX1 U523 ( .A(n682), .Y(n683) );
  CLKINVX1 U524 ( .A(n591), .Y(n684) );
  CLKINVX1 U525 ( .A(n684), .Y(n685) );
  CLKINVX1 U526 ( .A(n590), .Y(n686) );
  CLKINVX1 U527 ( .A(n686), .Y(n687) );
  CLKINVX1 U528 ( .A(n589), .Y(n688) );
  CLKINVX1 U529 ( .A(n688), .Y(n689) );
  CLKINVX1 U530 ( .A(n588), .Y(n690) );
  CLKINVX1 U531 ( .A(n690), .Y(n691) );
  CLKINVX1 U532 ( .A(n587), .Y(n692) );
  CLKINVX1 U533 ( .A(n692), .Y(n693) );
  CLKINVX1 U534 ( .A(n586), .Y(n694) );
  CLKINVX1 U535 ( .A(n694), .Y(n695) );
  CLKINVX1 U536 ( .A(n585), .Y(n696) );
  CLKINVX1 U537 ( .A(n696), .Y(n697) );
  CLKINVX1 U538 ( .A(n584), .Y(n698) );
  CLKINVX1 U539 ( .A(n698), .Y(n699) );
  CLKINVX1 U540 ( .A(n529), .Y(n700) );
  CLKINVX1 U541 ( .A(n700), .Y(n701) );
  CLKINVX1 U542 ( .A(n528), .Y(n702) );
  CLKINVX1 U543 ( .A(n702), .Y(n703) );
  CLKINVX1 U544 ( .A(n527), .Y(n704) );
  CLKINVX1 U545 ( .A(n704), .Y(n705) );
  CLKINVX1 U546 ( .A(n526), .Y(n706) );
  CLKINVX1 U547 ( .A(n706), .Y(n707) );
  CLKINVX1 U548 ( .A(n525), .Y(n708) );
  CLKINVX1 U549 ( .A(n708), .Y(n709) );
  CLKINVX1 U550 ( .A(n524), .Y(n710) );
  CLKINVX1 U551 ( .A(n710), .Y(n711) );
  CLKINVX1 U552 ( .A(n523), .Y(n712) );
  CLKINVX1 U553 ( .A(n712), .Y(n713) );
  CLKINVX1 U554 ( .A(n522), .Y(n714) );
  CLKINVX1 U555 ( .A(n714), .Y(n715) );
  CLKINVX1 U556 ( .A(n521), .Y(n716) );
  CLKINVX1 U557 ( .A(n716), .Y(n717) );
  CLKINVX1 U558 ( .A(n520), .Y(n718) );
  CLKINVX1 U559 ( .A(n718), .Y(n719) );
  CLKINVX1 U560 ( .A(n519), .Y(n720) );
  CLKINVX1 U561 ( .A(n720), .Y(n721) );
  CLKINVX1 U562 ( .A(n518), .Y(n722) );
  CLKINVX1 U563 ( .A(n722), .Y(n723) );
  CLKINVX1 U564 ( .A(n517), .Y(n724) );
  CLKINVX1 U565 ( .A(n724), .Y(n725) );
  CLKINVX1 U566 ( .A(n516), .Y(n726) );
  CLKINVX1 U567 ( .A(n726), .Y(n727) );
  CLKINVX1 U568 ( .A(n515), .Y(n728) );
  CLKINVX1 U569 ( .A(n728), .Y(n729) );
  CLKINVX1 U570 ( .A(n514), .Y(n730) );
  CLKINVX1 U571 ( .A(n730), .Y(n731) );
  CLKINVX1 U572 ( .A(n513), .Y(n732) );
  CLKINVX1 U573 ( .A(n732), .Y(n733) );
  CLKINVX1 U574 ( .A(n494), .Y(n734) );
  CLKINVX1 U575 ( .A(n734), .Y(n735) );
  CLKINVX1 U576 ( .A(n565), .Y(n736) );
  CLKINVX1 U577 ( .A(n736), .Y(n737) );
  CLKINVX1 U578 ( .A(n564), .Y(n738) );
  CLKINVX1 U579 ( .A(n738), .Y(n739) );
  CLKINVX1 U580 ( .A(n563), .Y(n740) );
  CLKINVX1 U581 ( .A(n740), .Y(n741) );
  CLKINVX1 U582 ( .A(n562), .Y(n742) );
  CLKINVX1 U583 ( .A(n742), .Y(n743) );
  CLKINVX1 U584 ( .A(n561), .Y(n744) );
  CLKINVX1 U585 ( .A(n744), .Y(n745) );
  CLKINVX1 U586 ( .A(n560), .Y(n746) );
  CLKINVX1 U587 ( .A(n746), .Y(n747) );
  CLKINVX1 U588 ( .A(n559), .Y(n748) );
  CLKINVX1 U589 ( .A(n748), .Y(n749) );
  CLKINVX1 U590 ( .A(n558), .Y(n750) );
  CLKINVX1 U591 ( .A(n750), .Y(n751) );
  CLKINVX1 U592 ( .A(n557), .Y(n752) );
  CLKINVX1 U593 ( .A(n752), .Y(n753) );
  CLKINVX1 U594 ( .A(n556), .Y(n754) );
  CLKINVX1 U595 ( .A(n754), .Y(n755) );
  CLKINVX1 U596 ( .A(n555), .Y(n756) );
  CLKINVX1 U597 ( .A(n756), .Y(n757) );
  CLKINVX1 U598 ( .A(n554), .Y(n758) );
  CLKINVX1 U599 ( .A(n758), .Y(n759) );
  CLKINVX1 U600 ( .A(n553), .Y(n760) );
  CLKINVX1 U601 ( .A(n760), .Y(n761) );
  CLKINVX1 U602 ( .A(n552), .Y(n762) );
  CLKINVX1 U603 ( .A(n762), .Y(n763) );
  CLKINVX1 U604 ( .A(n551), .Y(n764) );
  CLKINVX1 U605 ( .A(n764), .Y(n765) );
  CLKINVX1 U606 ( .A(n550), .Y(n766) );
  CLKINVX1 U607 ( .A(n766), .Y(n767) );
  CLKINVX1 U608 ( .A(n549), .Y(n768) );
  CLKINVX1 U609 ( .A(n768), .Y(n769) );
  CLKINVX1 U610 ( .A(n512), .Y(n770) );
  CLKINVX1 U611 ( .A(n770), .Y(n771) );
  CLKINVX1 U612 ( .A(n583), .Y(n772) );
  CLKINVX1 U613 ( .A(n772), .Y(n773) );
  CLKINVX1 U614 ( .A(n582), .Y(n774) );
  CLKINVX1 U615 ( .A(n774), .Y(n775) );
  CLKINVX1 U616 ( .A(n581), .Y(n776) );
  CLKINVX1 U617 ( .A(n776), .Y(n777) );
  CLKINVX1 U618 ( .A(n580), .Y(n778) );
  CLKINVX1 U619 ( .A(n778), .Y(n779) );
  CLKINVX1 U620 ( .A(n579), .Y(n780) );
  CLKINVX1 U621 ( .A(n780), .Y(n781) );
  CLKINVX1 U622 ( .A(n578), .Y(n782) );
  CLKINVX1 U623 ( .A(n782), .Y(n783) );
  CLKINVX1 U624 ( .A(n577), .Y(n784) );
  CLKINVX1 U625 ( .A(n784), .Y(n785) );
  CLKINVX1 U626 ( .A(n576), .Y(n786) );
  CLKINVX1 U627 ( .A(n786), .Y(n787) );
  CLKINVX1 U628 ( .A(n575), .Y(n788) );
  CLKINVX1 U629 ( .A(n788), .Y(n789) );
  CLKINVX1 U630 ( .A(n574), .Y(n790) );
  CLKINVX1 U631 ( .A(n790), .Y(n791) );
  CLKINVX1 U632 ( .A(n573), .Y(n792) );
  CLKINVX1 U633 ( .A(n792), .Y(n793) );
  CLKINVX1 U634 ( .A(n572), .Y(n794) );
  CLKINVX1 U635 ( .A(n794), .Y(n795) );
  CLKINVX1 U636 ( .A(n571), .Y(n796) );
  CLKINVX1 U637 ( .A(n796), .Y(n797) );
  CLKINVX1 U638 ( .A(n570), .Y(n798) );
  CLKINVX1 U639 ( .A(n798), .Y(n799) );
  CLKINVX1 U640 ( .A(n569), .Y(n800) );
  CLKINVX1 U641 ( .A(n800), .Y(n801) );
  CLKINVX1 U642 ( .A(n568), .Y(n802) );
  CLKINVX1 U643 ( .A(n802), .Y(n803) );
  CLKINVX1 U644 ( .A(n567), .Y(n804) );
  CLKINVX1 U645 ( .A(n804), .Y(n805) );
  CLKINVX1 U646 ( .A(n566), .Y(n806) );
  CLKINVX1 U647 ( .A(n806), .Y(n807) );
  CLKINVX1 U648 ( .A(n511), .Y(n808) );
  CLKINVX1 U649 ( .A(n808), .Y(n809) );
  CLKINVX1 U650 ( .A(n510), .Y(n810) );
  CLKINVX1 U651 ( .A(n810), .Y(n811) );
  CLKINVX1 U652 ( .A(n509), .Y(n812) );
  CLKINVX1 U653 ( .A(n812), .Y(n813) );
  CLKINVX1 U654 ( .A(n508), .Y(n814) );
  CLKINVX1 U655 ( .A(n814), .Y(n815) );
  CLKINVX1 U656 ( .A(n507), .Y(n816) );
  CLKINVX1 U657 ( .A(n816), .Y(n817) );
  CLKINVX1 U658 ( .A(n506), .Y(n818) );
  CLKINVX1 U659 ( .A(n818), .Y(n819) );
  CLKINVX1 U660 ( .A(n505), .Y(n820) );
  CLKINVX1 U661 ( .A(n820), .Y(n821) );
  CLKINVX1 U662 ( .A(n504), .Y(n822) );
  CLKINVX1 U663 ( .A(n822), .Y(n823) );
  CLKINVX1 U664 ( .A(n503), .Y(n824) );
  CLKINVX1 U665 ( .A(n824), .Y(n825) );
  CLKINVX1 U666 ( .A(n502), .Y(n826) );
  CLKINVX1 U667 ( .A(n826), .Y(n827) );
  CLKINVX1 U668 ( .A(n501), .Y(n828) );
  CLKINVX1 U669 ( .A(n828), .Y(n829) );
  CLKINVX1 U670 ( .A(n500), .Y(n830) );
  CLKINVX1 U671 ( .A(n830), .Y(n831) );
  CLKINVX1 U672 ( .A(n499), .Y(n832) );
  CLKINVX1 U673 ( .A(n832), .Y(n833) );
  CLKINVX1 U674 ( .A(n498), .Y(n834) );
  CLKINVX1 U675 ( .A(n834), .Y(n835) );
  CLKINVX1 U676 ( .A(n497), .Y(n836) );
  CLKINVX1 U677 ( .A(n836), .Y(n837) );
  CLKINVX1 U678 ( .A(n496), .Y(n838) );
  CLKINVX1 U679 ( .A(n838), .Y(n839) );
  CLKINVX1 U680 ( .A(n495), .Y(n840) );
  CLKINVX1 U681 ( .A(n840), .Y(n841) );
  NOR2XL U682 ( .A(N109), .B(n46), .Y(nx_counter[0]) );
  CLKINVX1 U683 ( .A(n548), .Y(n842) );
  CLKINVX1 U684 ( .A(n842), .Y(n843) );
  CLKINVX1 U685 ( .A(n619), .Y(n844) );
  CLKINVX1 U686 ( .A(n844), .Y(n845) );
  CLKINVX1 U687 ( .A(n618), .Y(n846) );
  CLKINVX1 U688 ( .A(n846), .Y(n847) );
  CLKINVX1 U689 ( .A(n617), .Y(n848) );
  CLKINVX1 U690 ( .A(n848), .Y(n849) );
  CLKINVX1 U691 ( .A(n616), .Y(n850) );
  CLKINVX1 U692 ( .A(n850), .Y(n851) );
  CLKINVX1 U693 ( .A(n615), .Y(n852) );
  CLKINVX1 U694 ( .A(n852), .Y(n853) );
  CLKINVX1 U695 ( .A(n614), .Y(n854) );
  CLKINVX1 U696 ( .A(n854), .Y(n855) );
  CLKINVX1 U697 ( .A(n613), .Y(n856) );
  CLKINVX1 U698 ( .A(n856), .Y(n857) );
  CLKINVX1 U699 ( .A(n612), .Y(n858) );
  CLKINVX1 U700 ( .A(n858), .Y(n859) );
  CLKINVX1 U701 ( .A(n611), .Y(n860) );
  CLKINVX1 U702 ( .A(n860), .Y(n861) );
  CLKINVX1 U703 ( .A(n610), .Y(n862) );
  CLKINVX1 U704 ( .A(n862), .Y(n863) );
  CLKINVX1 U705 ( .A(n609), .Y(n864) );
  CLKINVX1 U706 ( .A(n864), .Y(n865) );
  CLKINVX1 U707 ( .A(n608), .Y(n866) );
  CLKINVX1 U708 ( .A(n866), .Y(n867) );
  CLKINVX1 U709 ( .A(n607), .Y(n868) );
  CLKINVX1 U710 ( .A(n868), .Y(n869) );
  CLKINVX1 U711 ( .A(n606), .Y(n870) );
  CLKINVX1 U712 ( .A(n870), .Y(n871) );
  CLKINVX1 U713 ( .A(n605), .Y(n872) );
  CLKINVX1 U714 ( .A(n872), .Y(n873) );
  CLKINVX1 U715 ( .A(n604), .Y(n874) );
  CLKINVX1 U716 ( .A(n874), .Y(n875) );
  CLKINVX1 U717 ( .A(n603), .Y(n876) );
  CLKINVX1 U718 ( .A(n876), .Y(n877) );
  CLKINVX1 U719 ( .A(n602), .Y(n878) );
  CLKINVX1 U720 ( .A(n878), .Y(n879) );
  CLKINVX1 U721 ( .A(n547), .Y(n880) );
  CLKINVX1 U722 ( .A(n880), .Y(n881) );
  CLKINVX1 U723 ( .A(n546), .Y(n882) );
  CLKINVX1 U724 ( .A(n882), .Y(n883) );
  CLKINVX1 U725 ( .A(n545), .Y(n884) );
  CLKINVX1 U726 ( .A(n884), .Y(n885) );
  CLKINVX1 U727 ( .A(n544), .Y(n886) );
  CLKINVX1 U728 ( .A(n886), .Y(n887) );
  CLKINVX1 U729 ( .A(n543), .Y(n888) );
  CLKINVX1 U730 ( .A(n888), .Y(n889) );
  CLKINVX1 U731 ( .A(n542), .Y(n890) );
  CLKINVX1 U732 ( .A(n890), .Y(n891) );
  CLKINVX1 U733 ( .A(n541), .Y(n892) );
  CLKINVX1 U734 ( .A(n892), .Y(n893) );
  CLKINVX1 U735 ( .A(n540), .Y(n894) );
  CLKINVX1 U736 ( .A(n894), .Y(n895) );
  CLKINVX1 U737 ( .A(n539), .Y(n896) );
  CLKINVX1 U738 ( .A(n896), .Y(n897) );
  CLKINVX1 U739 ( .A(n538), .Y(n898) );
  CLKINVX1 U740 ( .A(n898), .Y(n899) );
  CLKINVX1 U741 ( .A(n537), .Y(n900) );
  CLKINVX1 U742 ( .A(n900), .Y(n901) );
  CLKINVX1 U743 ( .A(n536), .Y(n902) );
  CLKINVX1 U744 ( .A(n902), .Y(n903) );
  CLKINVX1 U745 ( .A(n535), .Y(n904) );
  CLKINVX1 U746 ( .A(n904), .Y(n905) );
  CLKINVX1 U747 ( .A(n534), .Y(n906) );
  CLKINVX1 U748 ( .A(n906), .Y(n907) );
  CLKINVX1 U749 ( .A(n533), .Y(n908) );
  CLKINVX1 U750 ( .A(n908), .Y(n909) );
  CLKINVX1 U751 ( .A(n532), .Y(n910) );
  CLKINVX1 U752 ( .A(n910), .Y(n911) );
  CLKINVX1 U753 ( .A(n531), .Y(n912) );
  CLKINVX1 U754 ( .A(n912), .Y(n913) );
  CLKINVX1 U755 ( .A(n530), .Y(n914) );
  CLKINVX1 U756 ( .A(n914), .Y(n915) );
  CLKINVX1 U757 ( .A(n637), .Y(n916) );
  CLKINVX1 U758 ( .A(n916), .Y(n917) );
  CLKINVX1 U759 ( .A(n636), .Y(n918) );
  CLKINVX1 U760 ( .A(n918), .Y(n919) );
  CLKINVX1 U761 ( .A(n635), .Y(n920) );
  CLKINVX1 U762 ( .A(n920), .Y(n921) );
  CLKINVX1 U763 ( .A(n634), .Y(n922) );
  CLKINVX1 U764 ( .A(n922), .Y(n923) );
  CLKINVX1 U765 ( .A(n633), .Y(n924) );
  CLKINVX1 U766 ( .A(n924), .Y(n925) );
  CLKINVX1 U767 ( .A(n632), .Y(n926) );
  CLKINVX1 U768 ( .A(n926), .Y(n927) );
  CLKINVX1 U769 ( .A(n631), .Y(n928) );
  CLKINVX1 U770 ( .A(n928), .Y(n929) );
  CLKINVX1 U771 ( .A(n630), .Y(n930) );
  CLKINVX1 U772 ( .A(n930), .Y(n931) );
  CLKINVX1 U773 ( .A(n629), .Y(n932) );
  CLKINVX1 U774 ( .A(n932), .Y(n933) );
  CLKINVX1 U775 ( .A(n628), .Y(n934) );
  CLKINVX1 U776 ( .A(n934), .Y(n935) );
  CLKINVX1 U777 ( .A(n627), .Y(n936) );
  CLKINVX1 U778 ( .A(n936), .Y(n937) );
  CLKINVX1 U779 ( .A(n626), .Y(n938) );
  CLKINVX1 U780 ( .A(n938), .Y(n939) );
  CLKINVX1 U781 ( .A(n625), .Y(n940) );
  CLKINVX1 U782 ( .A(n940), .Y(n941) );
  CLKINVX1 U783 ( .A(n624), .Y(n942) );
  CLKINVX1 U784 ( .A(n942), .Y(n943) );
  CLKINVX1 U785 ( .A(n623), .Y(n944) );
  CLKINVX1 U786 ( .A(n944), .Y(n945) );
  CLKINVX1 U787 ( .A(n622), .Y(n946) );
  CLKINVX1 U788 ( .A(n946), .Y(n947) );
  CLKINVX1 U789 ( .A(n621), .Y(n948) );
  CLKINVX1 U790 ( .A(n948), .Y(n949) );
  CLKINVX1 U791 ( .A(n620), .Y(n950) );
  CLKINVX1 U792 ( .A(n950), .Y(n951) );
  INVXL U793 ( .A(n656), .Y(n952) );
  CLKINVX1 U794 ( .A(n952), .Y(n953) );
  INVXL U795 ( .A(n655), .Y(n954) );
  CLKINVX1 U796 ( .A(n954), .Y(n955) );
  INVXL U797 ( .A(n654), .Y(n956) );
  CLKINVX1 U798 ( .A(n956), .Y(n957) );
  INVXL U799 ( .A(n653), .Y(n958) );
  CLKINVX1 U800 ( .A(n958), .Y(n959) );
  INVXL U801 ( .A(n652), .Y(n960) );
  CLKINVX1 U802 ( .A(n960), .Y(n961) );
  INVXL U803 ( .A(n651), .Y(n962) );
  CLKINVX1 U804 ( .A(n962), .Y(n963) );
  INVXL U805 ( .A(n649), .Y(n964) );
  CLKINVX1 U806 ( .A(n964), .Y(n965) );
  INVXL U807 ( .A(n642), .Y(n966) );
  CLKINVX1 U808 ( .A(n966), .Y(n967) );
  INVXL U809 ( .A(n648), .Y(n968) );
  CLKINVX1 U810 ( .A(n968), .Y(n969) );
  INVXL U811 ( .A(n647), .Y(n970) );
  CLKINVX1 U812 ( .A(n970), .Y(n971) );
  INVXL U813 ( .A(n646), .Y(n972) );
  CLKINVX1 U814 ( .A(n972), .Y(n973) );
  INVXL U815 ( .A(n645), .Y(n974) );
  CLKINVX1 U816 ( .A(n974), .Y(n975) );
  INVXL U817 ( .A(n644), .Y(n976) );
  CLKINVX1 U818 ( .A(n976), .Y(n977) );
  INVXL U819 ( .A(n643), .Y(n978) );
  CLKINVX1 U820 ( .A(n978), .Y(n979) );
  INVXL U821 ( .A(n640), .Y(n980) );
  CLKINVX1 U822 ( .A(n980), .Y(n981) );
  INVXL U823 ( .A(n641), .Y(n982) );
  CLKINVX1 U824 ( .A(n982), .Y(n983) );
  INVXL U825 ( .A(n650), .Y(n984) );
  CLKINVX1 U826 ( .A(n984), .Y(n985) );
  CLKINVX1 U827 ( .A(n663), .Y(n986) );
  CLKINVX1 U828 ( .A(n986), .Y(n987) );
  CLKINVX1 U829 ( .A(n639), .Y(n988) );
  CLKINVX1 U830 ( .A(n988), .Y(n989) );
  INVXL U831 ( .A(n657), .Y(n990) );
  CLKINVX1 U832 ( .A(n990), .Y(n991) );
  XNOR2XL U833 ( .A(\r328/carry [4]), .B(counter[4]), .Y(n1033) );
  CLKINVX1 U834 ( .A(n638), .Y(n992) );
  CLKINVX1 U835 ( .A(n992), .Y(n993) );
  INVXL U836 ( .A(times[0]), .Y(N230) );
  BUFX2 U837 ( .A(n658), .Y(n994) );
  NOR3BXL U838 ( .AN(n148), .B(n1185), .C(n1182), .Y(n142) );
  OR3X8 U839 ( .A(n1158), .B(counter[4]), .C(counter[3]), .Y(n995) );
  INVX12 U840 ( .A(n157), .Y(RB2_A[2]) );
  CLKINVX1 U841 ( .A(n1209), .Y(n997) );
  INVX16 U842 ( .A(n997), .Y(RB2_A[1]) );
  CLKINVX1 U843 ( .A(n1208), .Y(n999) );
  INVX16 U844 ( .A(n999), .Y(RB2_A[0]) );
  AND3X2 U856 ( .A(n1196), .B(n1195), .C(n142), .Y(n1211) );
  INVX12 U857 ( .A(n1211), .Y(RB2_RW) );
  BUFX12 U858 ( .A(n1213), .Y(RB2_D[16]) );
  BUFX12 U859 ( .A(n1214), .Y(RB2_D[15]) );
  BUFX12 U860 ( .A(n1222), .Y(RB2_D[7]) );
  BUFX12 U861 ( .A(n1212), .Y(RB2_D[17]) );
  BUFX12 U862 ( .A(n1215), .Y(RB2_D[14]) );
  BUFX12 U863 ( .A(n1216), .Y(RB2_D[13]) );
  BUFX12 U864 ( .A(n1217), .Y(RB2_D[12]) );
  BUFX12 U865 ( .A(n1218), .Y(RB2_D[11]) );
  BUFX12 U866 ( .A(n1219), .Y(RB2_D[10]) );
  BUFX12 U867 ( .A(n1220), .Y(RB2_D[9]) );
  BUFX12 U868 ( .A(n1221), .Y(RB2_D[8]) );
  BUFX12 U869 ( .A(n1223), .Y(RB2_D[6]) );
  BUFX12 U870 ( .A(n1224), .Y(RB2_D[5]) );
  BUFX12 U871 ( .A(n1225), .Y(RB2_D[4]) );
  BUFX12 U872 ( .A(n1226), .Y(RB2_D[3]) );
  BUFX12 U873 ( .A(n1227), .Y(RB2_D[2]) );
  BUFX12 U874 ( .A(n1228), .Y(RB2_D[1]) );
  BUFX12 U875 ( .A(n1229), .Y(RB2_D[0]) );
  BUFX12 U876 ( .A(n1210), .Y(S2_done) );
  NOR2BXL U877 ( .AN(n142), .B(S2_done), .Y(n51) );
  NOR3X1 U878 ( .A(n1198), .B(n493), .C(n1195), .Y(n1210) );
  NOR2X1 U879 ( .A(n1201), .B(N276), .Y(n33) );
  NOR2X1 U880 ( .A(n1161), .B(n1201), .Y(n35) );
  CLKBUFX3 U881 ( .A(n89), .Y(n1127) );
  CLKBUFX3 U882 ( .A(n80), .Y(n1128) );
  XNOR2X1 U883 ( .A(counter[1]), .B(n489), .Y(N110) );
  XOR2X1 U884 ( .A(n487), .B(n20), .Y(N111) );
  NOR2X1 U885 ( .A(N275), .B(N276), .Y(n31) );
  NOR2X1 U886 ( .A(n1161), .B(N275), .Y(n34) );
  NAND3X1 U887 ( .A(n487), .B(n488), .C(n1183), .Y(n94) );
  NAND2X1 U888 ( .A(n155), .B(n489), .Y(n125) );
  NOR2X1 U889 ( .A(n146), .B(n157), .Y(n83) );
  CLKBUFX3 U890 ( .A(n53), .Y(n1134) );
  CLKBUFX3 U891 ( .A(n74), .Y(n1133) );
  CLKBUFX3 U892 ( .A(n77), .Y(n1132) );
  CLKBUFX3 U893 ( .A(n85), .Y(n1130) );
  CLKBUFX3 U894 ( .A(n82), .Y(n1131) );
  CLKBUFX3 U895 ( .A(n87), .Y(n1129) );
  NOR2X1 U896 ( .A(n490), .B(n491), .Y(n144) );
  CLKBUFX3 U897 ( .A(n1145), .Y(n1155) );
  CLKBUFX3 U898 ( .A(n1143), .Y(n1154) );
  CLKBUFX3 U899 ( .A(n1144), .Y(n1153) );
  CLKBUFX3 U900 ( .A(n1144), .Y(n1152) );
  CLKBUFX3 U901 ( .A(n1145), .Y(n1150) );
  CLKBUFX3 U902 ( .A(n1145), .Y(n1149) );
  CLKBUFX3 U903 ( .A(n1143), .Y(n1148) );
  CLKBUFX3 U904 ( .A(n1144), .Y(n1151) );
  CLKBUFX3 U905 ( .A(n1143), .Y(n1147) );
  CLKBUFX3 U906 ( .A(n1145), .Y(n1146) );
  CLKINVX1 U907 ( .A(N276), .Y(n1161) );
  CLKINVX1 U908 ( .A(N277), .Y(n1160) );
  CLKINVX1 U909 ( .A(n9), .Y(n1182) );
  CLKINVX1 U910 ( .A(n48), .Y(n1196) );
  CLKINVX1 U911 ( .A(n51), .Y(n1181) );
  CLKBUFX3 U912 ( .A(n1191), .Y(n1139) );
  CLKINVX1 U913 ( .A(n1128), .Y(n1191) );
  CLKBUFX3 U914 ( .A(n1187), .Y(n1135) );
  CLKINVX1 U915 ( .A(n1127), .Y(n1187) );
  CLKBUFX3 U916 ( .A(n1143), .Y(n1156) );
  CLKBUFX3 U917 ( .A(n1144), .Y(n1143) );
  CLKINVX1 U918 ( .A(N278), .Y(n1159) );
  CLKINVX1 U919 ( .A(N110), .Y(n1199) );
  CLKINVX1 U920 ( .A(N111), .Y(n1118) );
  NAND2X1 U921 ( .A(n29), .B(n30), .Y(n27) );
  AOI22X1 U922 ( .A0(N292), .A1(n34), .B0(N290), .B1(n35), .Y(n29) );
  AOI32X1 U923 ( .A0(n31), .A1(n1159), .A2(N296), .B0(N294), .B1(n33), .Y(n30)
         );
  NAND2X1 U924 ( .A(n40), .B(n41), .Y(n39) );
  AOI22X1 U925 ( .A0(N291), .A1(n34), .B0(N289), .B1(n35), .Y(n40) );
  AOI32X1 U926 ( .A0(n31), .A1(n1159), .A2(N295), .B0(N293), .B1(n33), .Y(n41)
         );
  NAND2X1 U927 ( .A(n36), .B(n37), .Y(n26) );
  AOI22X1 U928 ( .A0(N284), .A1(n34), .B0(N282), .B1(n35), .Y(n36) );
  AOI22X1 U929 ( .A0(N288), .A1(n31), .B0(N286), .B1(n33), .Y(n37) );
  NAND2X1 U930 ( .A(n42), .B(n43), .Y(n38) );
  AOI22X1 U931 ( .A0(N283), .A1(n34), .B0(N281), .B1(n35), .Y(n42) );
  AOI22X1 U932 ( .A0(N287), .A1(n31), .B0(N285), .B1(n33), .Y(n43) );
  OAI33X1 U933 ( .A0(n1202), .A1(n1199), .A2(N109), .B0(n1200), .B1(N111), 
        .B2(n20), .Y(n16) );
  CLKINVX1 U934 ( .A(n146), .Y(n1185) );
  NAND2X1 U935 ( .A(n8), .B(n1198), .Y(n9) );
  NOR2X1 U936 ( .A(n1195), .B(n1197), .Y(n8) );
  OAI22XL U937 ( .A0(n1199), .A1(n1203), .B0(N110), .B1(n1201), .Y(n14) );
  NAND3X1 U938 ( .A(n1198), .B(n1195), .C(n1197), .Y(n148) );
  NOR2X1 U939 ( .A(n1197), .B(n1198), .Y(n48) );
  CLKINVX1 U940 ( .A(n118), .Y(n1183) );
  NOR2BX1 U941 ( .AN(n120), .B(n118), .Y(n102) );
  CLKINVX1 U942 ( .A(n123), .Y(n1184) );
  OAI22XL U943 ( .A0(n95), .A1(n96), .B0(n97), .B1(n1206), .Y(n639) );
  NOR2X1 U944 ( .A(n95), .B(n99), .Y(n97) );
  OAI22XL U945 ( .A0(n90), .A1(n91), .B0(n92), .B1(n1205), .Y(n638) );
  NOR2X1 U946 ( .A(n90), .B(n94), .Y(n92) );
  OAI22XL U947 ( .A0(n91), .A1(n95), .B0(n137), .B1(n1207), .Y(n663) );
  NOR2X1 U948 ( .A(n94), .B(n95), .Y(n137) );
  NAND2X2 U949 ( .A(n108), .B(N109), .Y(n90) );
  NAND2X2 U950 ( .A(n124), .B(N109), .Y(n111) );
  NAND2BX1 U951 ( .AN(n109), .B(n120), .Y(n115) );
  NAND2BX1 U952 ( .AN(n125), .B(n120), .Y(n132) );
  NAND2X1 U953 ( .A(n155), .B(N109), .Y(n129) );
  OAI221XL U954 ( .A0(n1207), .A1(n143), .B0(n144), .B1(n1186), .C0(n1128), 
        .Y(N136) );
  CLKINVX1 U955 ( .A(n83), .Y(n1186) );
  OAI22XL U956 ( .A0(n146), .A1(RB2_A[0]), .B0(n1206), .B1(n143), .Y(N134) );
  NAND3BX1 U957 ( .AN(ns[0]), .B(ns[1]), .C(n51), .Y(n143) );
  OAI22X2 U958 ( .A0(n9), .A1(n115), .B0(n132), .B1(n118), .Y(n136) );
  OAI211X1 U959 ( .A0(n1196), .A1(n47), .B0(n1127), .C0(n134), .Y(ns[0]) );
  AND3X2 U960 ( .A(n153), .B(n148), .C(n154), .Y(n134) );
  AOI22X1 U961 ( .A0(n1182), .A1(n115), .B0(n132), .B1(n1183), .Y(n154) );
  NOR2BX1 U962 ( .AN(N222), .B(n46), .Y(nx_counter[3]) );
  NOR2BX1 U963 ( .AN(N221), .B(n46), .Y(nx_counter[2]) );
  NOR2BX1 U964 ( .AN(N220), .B(n46), .Y(nx_counter[1]) );
  NAND2X1 U965 ( .A(n72), .B(n144), .Y(n80) );
  NAND2X1 U966 ( .A(n83), .B(n144), .Y(n89) );
  CLKBUFX3 U967 ( .A(n1189), .Y(n1137) );
  CLKINVX1 U968 ( .A(n1130), .Y(n1189) );
  CLKBUFX3 U969 ( .A(n1193), .Y(n1141) );
  CLKINVX1 U970 ( .A(n1133), .Y(n1193) );
  CLKBUFX3 U971 ( .A(n1190), .Y(n1138) );
  CLKINVX1 U972 ( .A(n1131), .Y(n1190) );
  CLKBUFX3 U973 ( .A(n1194), .Y(n1142) );
  CLKINVX1 U974 ( .A(n1134), .Y(n1194) );
  CLKBUFX3 U975 ( .A(n1188), .Y(n1136) );
  CLKINVX1 U976 ( .A(n1129), .Y(n1188) );
  CLKBUFX3 U977 ( .A(n1192), .Y(n1140) );
  CLKINVX1 U978 ( .A(n1132), .Y(n1192) );
  OAI2BB2XL U979 ( .B0(n134), .B1(n1201), .A0N(N231), .A1N(n136), .Y(n661) );
  OAI2BB2XL U980 ( .B0(n134), .B1(n1203), .A0N(N233), .A1N(n136), .Y(n659) );
  OAI2BB2XL U981 ( .B0(n134), .B1(n1202), .A0N(N232), .A1N(n136), .Y(n660) );
  CLKBUFX3 U982 ( .A(n1162), .Y(n1144) );
  CLKBUFX3 U983 ( .A(n1162), .Y(n1145) );
  NOR3X1 U984 ( .A(n9), .B(sen), .C(n10), .Y(n325) );
  AOI2BB2X1 U985 ( .B0(n11), .B1(n995), .A0N(n13), .A1N(n995), .Y(n10) );
  AOI221XL U986 ( .A0(n14), .A1(N109), .B0(times[4]), .B1(N111), .C0(n16), .Y(
        n13) );
  OAI22XL U987 ( .A0(n23), .A1(times[0]), .B0(n1200), .B1(n25), .Y(n11) );
  AOI222XL U988 ( .A0(N279), .A1(N278), .B0(N277), .B1(n38), .C0(n39), .C1(
        n1160), .Y(n23) );
  AOI222XL U989 ( .A0(N280), .A1(N278), .B0(N277), .B1(n26), .C0(n27), .C1(
        n1160), .Y(n25) );
  XNOR2X1 U990 ( .A(times[4]), .B(n1032), .Y(N278) );
  NAND2X1 U991 ( .A(\sub_202_2/carry[3] ), .B(n1203), .Y(n1032) );
  NAND2X1 U992 ( .A(n489), .B(n1199), .Y(n20) );
  CLKINVX1 U993 ( .A(N275), .Y(n1157) );
  CLKBUFX3 U994 ( .A(n1111), .Y(n1123) );
  NOR2BX1 U995 ( .AN(n1034), .B(N109), .Y(n1111) );
  CLKBUFX3 U996 ( .A(n1113), .Y(n1125) );
  NOR2BX1 U997 ( .AN(n1036), .B(N109), .Y(n1113) );
  CLKBUFX3 U998 ( .A(n1107), .Y(n1119) );
  AND2X2 U999 ( .A(n1034), .B(N109), .Y(n1107) );
  CLKBUFX3 U1000 ( .A(n1109), .Y(n1121) );
  AND2X2 U1001 ( .A(n1036), .B(N109), .Y(n1109) );
  CLKBUFX3 U1002 ( .A(n1110), .Y(n1124) );
  NOR2BX1 U1003 ( .AN(n1035), .B(N109), .Y(n1110) );
  CLKBUFX3 U1004 ( .A(n1112), .Y(n1126) );
  NOR2BX1 U1005 ( .AN(n1037), .B(N109), .Y(n1112) );
  CLKBUFX3 U1006 ( .A(n1106), .Y(n1120) );
  AND2X2 U1007 ( .A(n1035), .B(N109), .Y(n1106) );
  CLKBUFX3 U1008 ( .A(n1108), .Y(n1122) );
  AND2X2 U1009 ( .A(n1037), .B(N109), .Y(n1108) );
  NAND3X1 U1010 ( .A(n1198), .B(n1195), .C(n493), .Y(n146) );
  NOR2X1 U1011 ( .A(n492), .B(n8), .Y(n323) );
  INVX3 U1012 ( .A(RB2_Q[0]), .Y(n1180) );
  INVX3 U1013 ( .A(RB2_Q[17]), .Y(n1163) );
  INVX3 U1014 ( .A(RB2_Q[16]), .Y(n1164) );
  INVX3 U1015 ( .A(RB2_Q[15]), .Y(n1165) );
  INVX3 U1016 ( .A(RB2_Q[14]), .Y(n1166) );
  INVX3 U1017 ( .A(RB2_Q[13]), .Y(n1167) );
  INVX3 U1018 ( .A(RB2_Q[12]), .Y(n1168) );
  INVX3 U1019 ( .A(RB2_Q[11]), .Y(n1169) );
  INVX3 U1020 ( .A(RB2_Q[10]), .Y(n1170) );
  INVX3 U1021 ( .A(RB2_Q[9]), .Y(n1171) );
  INVX3 U1022 ( .A(RB2_Q[8]), .Y(n1172) );
  INVX3 U1023 ( .A(RB2_Q[7]), .Y(n1173) );
  INVX3 U1024 ( .A(RB2_Q[6]), .Y(n1174) );
  INVX3 U1025 ( .A(RB2_Q[5]), .Y(n1175) );
  INVX3 U1026 ( .A(RB2_Q[4]), .Y(n1176) );
  INVX3 U1027 ( .A(RB2_Q[3]), .Y(n1177) );
  INVX3 U1028 ( .A(RB2_Q[2]), .Y(n1178) );
  INVX3 U1029 ( .A(RB2_Q[1]), .Y(n1179) );
  OAI22XL U1030 ( .A0(n214), .A1(n1137), .B0(n1180), .B1(n1130), .Y(n601) );
  OAI22XL U1031 ( .A0(n215), .A1(n1137), .B0(n1163), .B1(n1130), .Y(n600) );
  OAI22XL U1032 ( .A0(n216), .A1(n1137), .B0(n1164), .B1(n1130), .Y(n599) );
  OAI22XL U1033 ( .A0(n217), .A1(n1137), .B0(n1165), .B1(n1130), .Y(n598) );
  OAI22XL U1034 ( .A0(n218), .A1(n1137), .B0(n1166), .B1(n1130), .Y(n597) );
  OAI22XL U1035 ( .A0(n219), .A1(n1137), .B0(n1167), .B1(n1130), .Y(n596) );
  OAI22XL U1036 ( .A0(n220), .A1(n1137), .B0(n1168), .B1(n1130), .Y(n595) );
  OAI22XL U1037 ( .A0(n221), .A1(n1137), .B0(n1169), .B1(n1130), .Y(n594) );
  OAI22XL U1038 ( .A0(n222), .A1(n1137), .B0(n1170), .B1(n1130), .Y(n593) );
  OAI22XL U1039 ( .A0(n223), .A1(n1137), .B0(n1171), .B1(n1130), .Y(n592) );
  OAI22XL U1040 ( .A0(n224), .A1(n1137), .B0(n1172), .B1(n1130), .Y(n591) );
  OAI22XL U1041 ( .A0(n225), .A1(n1137), .B0(n1173), .B1(n1130), .Y(n590) );
  OAI22XL U1042 ( .A0(n226), .A1(n1137), .B0(n1174), .B1(n1130), .Y(n589) );
  OAI22XL U1043 ( .A0(n227), .A1(n1137), .B0(n1175), .B1(n1130), .Y(n588) );
  OAI22XL U1044 ( .A0(n228), .A1(n1137), .B0(n1176), .B1(n1130), .Y(n587) );
  OAI22XL U1045 ( .A0(n229), .A1(n1137), .B0(n1177), .B1(n1130), .Y(n586) );
  OAI22XL U1046 ( .A0(n230), .A1(n1137), .B0(n1178), .B1(n1130), .Y(n585) );
  OAI22XL U1047 ( .A0(n231), .A1(n1137), .B0(n1179), .B1(n1130), .Y(n584) );
  OAI22XL U1048 ( .A0(n286), .A1(n1141), .B0(n1180), .B1(n1133), .Y(n529) );
  OAI22XL U1049 ( .A0(n287), .A1(n1141), .B0(n1163), .B1(n1133), .Y(n528) );
  OAI22XL U1050 ( .A0(n288), .A1(n1141), .B0(n1164), .B1(n1133), .Y(n527) );
  OAI22XL U1051 ( .A0(n289), .A1(n1141), .B0(n1165), .B1(n1133), .Y(n526) );
  OAI22XL U1052 ( .A0(n290), .A1(n1141), .B0(n1166), .B1(n1133), .Y(n525) );
  OAI22XL U1053 ( .A0(n291), .A1(n1141), .B0(n1167), .B1(n1133), .Y(n524) );
  OAI22XL U1054 ( .A0(n292), .A1(n1141), .B0(n1168), .B1(n1133), .Y(n523) );
  OAI22XL U1055 ( .A0(n293), .A1(n1141), .B0(n1169), .B1(n1133), .Y(n522) );
  OAI22XL U1056 ( .A0(n294), .A1(n1141), .B0(n1170), .B1(n1133), .Y(n521) );
  OAI22XL U1057 ( .A0(n295), .A1(n1141), .B0(n1171), .B1(n1133), .Y(n520) );
  OAI22XL U1058 ( .A0(n296), .A1(n1141), .B0(n1172), .B1(n1133), .Y(n519) );
  OAI22XL U1059 ( .A0(n297), .A1(n1141), .B0(n1173), .B1(n1133), .Y(n518) );
  OAI22XL U1060 ( .A0(n298), .A1(n1141), .B0(n1174), .B1(n1133), .Y(n517) );
  OAI22XL U1061 ( .A0(n299), .A1(n1141), .B0(n1175), .B1(n1133), .Y(n516) );
  OAI22XL U1062 ( .A0(n300), .A1(n1141), .B0(n1176), .B1(n1133), .Y(n515) );
  OAI22XL U1063 ( .A0(n301), .A1(n1141), .B0(n1177), .B1(n1133), .Y(n514) );
  OAI22XL U1064 ( .A0(n302), .A1(n1141), .B0(n1178), .B1(n1133), .Y(n513) );
  OAI22XL U1065 ( .A0(n303), .A1(n1141), .B0(n1179), .B1(n1133), .Y(n512) );
  OAI22XL U1066 ( .A0(n250), .A1(n1139), .B0(n1180), .B1(n1128), .Y(n565) );
  OAI22XL U1067 ( .A0(n251), .A1(n1139), .B0(n1163), .B1(n1128), .Y(n564) );
  OAI22XL U1068 ( .A0(n252), .A1(n1139), .B0(n1164), .B1(n1128), .Y(n563) );
  OAI22XL U1069 ( .A0(n253), .A1(n1139), .B0(n1165), .B1(n1128), .Y(n562) );
  OAI22XL U1070 ( .A0(n254), .A1(n1139), .B0(n1166), .B1(n1128), .Y(n561) );
  OAI22XL U1071 ( .A0(n255), .A1(n1139), .B0(n1167), .B1(n1128), .Y(n560) );
  OAI22XL U1072 ( .A0(n256), .A1(n1139), .B0(n1168), .B1(n1128), .Y(n559) );
  OAI22XL U1073 ( .A0(n257), .A1(n1139), .B0(n1169), .B1(n1128), .Y(n558) );
  OAI22XL U1074 ( .A0(n258), .A1(n1139), .B0(n1170), .B1(n1128), .Y(n557) );
  OAI22XL U1075 ( .A0(n259), .A1(n1139), .B0(n1171), .B1(n1128), .Y(n556) );
  OAI22XL U1076 ( .A0(n260), .A1(n1139), .B0(n1172), .B1(n1128), .Y(n555) );
  OAI22XL U1077 ( .A0(n261), .A1(n1139), .B0(n1173), .B1(n1128), .Y(n554) );
  OAI22XL U1078 ( .A0(n262), .A1(n1139), .B0(n1174), .B1(n1128), .Y(n553) );
  OAI22XL U1079 ( .A0(n263), .A1(n1139), .B0(n1175), .B1(n1128), .Y(n552) );
  OAI22XL U1080 ( .A0(n264), .A1(n1139), .B0(n1176), .B1(n1128), .Y(n551) );
  OAI22XL U1081 ( .A0(n265), .A1(n1139), .B0(n1177), .B1(n1128), .Y(n550) );
  OAI22XL U1082 ( .A0(n266), .A1(n1139), .B0(n1178), .B1(n1128), .Y(n549) );
  OAI22XL U1083 ( .A0(n267), .A1(n1139), .B0(n1179), .B1(n1128), .Y(n548) );
  OAI22XL U1084 ( .A0(n232), .A1(n1138), .B0(n1180), .B1(n1131), .Y(n583) );
  OAI22XL U1085 ( .A0(n233), .A1(n1138), .B0(n1163), .B1(n1131), .Y(n582) );
  OAI22XL U1086 ( .A0(n234), .A1(n1138), .B0(n1164), .B1(n1131), .Y(n581) );
  OAI22XL U1087 ( .A0(n235), .A1(n1138), .B0(n1165), .B1(n1131), .Y(n580) );
  OAI22XL U1088 ( .A0(n236), .A1(n1138), .B0(n1166), .B1(n1131), .Y(n579) );
  OAI22XL U1089 ( .A0(n237), .A1(n1138), .B0(n1167), .B1(n1131), .Y(n578) );
  OAI22XL U1090 ( .A0(n238), .A1(n1138), .B0(n1168), .B1(n1131), .Y(n577) );
  OAI22XL U1091 ( .A0(n239), .A1(n1138), .B0(n1169), .B1(n1131), .Y(n576) );
  OAI22XL U1092 ( .A0(n240), .A1(n1138), .B0(n1170), .B1(n1131), .Y(n575) );
  OAI22XL U1093 ( .A0(n241), .A1(n1138), .B0(n1171), .B1(n1131), .Y(n574) );
  OAI22XL U1094 ( .A0(n242), .A1(n1138), .B0(n1172), .B1(n1131), .Y(n573) );
  OAI22XL U1095 ( .A0(n243), .A1(n1138), .B0(n1173), .B1(n1131), .Y(n572) );
  OAI22XL U1096 ( .A0(n244), .A1(n1138), .B0(n1174), .B1(n1131), .Y(n571) );
  OAI22XL U1097 ( .A0(n245), .A1(n1138), .B0(n1175), .B1(n1131), .Y(n570) );
  OAI22XL U1098 ( .A0(n246), .A1(n1138), .B0(n1176), .B1(n1131), .Y(n569) );
  OAI22XL U1099 ( .A0(n247), .A1(n1138), .B0(n1177), .B1(n1131), .Y(n568) );
  OAI22XL U1100 ( .A0(n248), .A1(n1138), .B0(n1178), .B1(n1131), .Y(n567) );
  OAI22XL U1101 ( .A0(n249), .A1(n1138), .B0(n1179), .B1(n1131), .Y(n566) );
  OAI22XL U1102 ( .A0(n196), .A1(n1136), .B0(n1180), .B1(n1129), .Y(n619) );
  OAI22XL U1103 ( .A0(n197), .A1(n1136), .B0(n1163), .B1(n1129), .Y(n618) );
  OAI22XL U1104 ( .A0(n198), .A1(n1136), .B0(n1164), .B1(n1129), .Y(n617) );
  OAI22XL U1105 ( .A0(n199), .A1(n1136), .B0(n1165), .B1(n1129), .Y(n616) );
  OAI22XL U1106 ( .A0(n200), .A1(n1136), .B0(n1166), .B1(n1129), .Y(n615) );
  OAI22XL U1107 ( .A0(n201), .A1(n1136), .B0(n1167), .B1(n1129), .Y(n614) );
  OAI22XL U1108 ( .A0(n202), .A1(n1136), .B0(n1168), .B1(n1129), .Y(n613) );
  OAI22XL U1109 ( .A0(n203), .A1(n1136), .B0(n1169), .B1(n1129), .Y(n612) );
  OAI22XL U1110 ( .A0(n204), .A1(n1136), .B0(n1170), .B1(n1129), .Y(n611) );
  OAI22XL U1111 ( .A0(n205), .A1(n1136), .B0(n1171), .B1(n1129), .Y(n610) );
  OAI22XL U1112 ( .A0(n206), .A1(n1136), .B0(n1172), .B1(n1129), .Y(n609) );
  OAI22XL U1113 ( .A0(n207), .A1(n1136), .B0(n1173), .B1(n1129), .Y(n608) );
  OAI22XL U1114 ( .A0(n208), .A1(n1136), .B0(n1174), .B1(n1129), .Y(n607) );
  OAI22XL U1115 ( .A0(n209), .A1(n1136), .B0(n1175), .B1(n1129), .Y(n606) );
  OAI22XL U1116 ( .A0(n210), .A1(n1136), .B0(n1176), .B1(n1129), .Y(n605) );
  OAI22XL U1117 ( .A0(n211), .A1(n1136), .B0(n1177), .B1(n1129), .Y(n604) );
  OAI22XL U1118 ( .A0(n212), .A1(n1136), .B0(n1178), .B1(n1129), .Y(n603) );
  OAI22XL U1119 ( .A0(n213), .A1(n1136), .B0(n1179), .B1(n1129), .Y(n602) );
  OAI22XL U1120 ( .A0(n268), .A1(n1140), .B0(n1180), .B1(n1132), .Y(n547) );
  OAI22XL U1121 ( .A0(n269), .A1(n1140), .B0(n1163), .B1(n1132), .Y(n546) );
  OAI22XL U1122 ( .A0(n270), .A1(n1140), .B0(n1164), .B1(n1132), .Y(n545) );
  OAI22XL U1123 ( .A0(n271), .A1(n1140), .B0(n1165), .B1(n1132), .Y(n544) );
  OAI22XL U1124 ( .A0(n272), .A1(n1140), .B0(n1166), .B1(n1132), .Y(n543) );
  OAI22XL U1125 ( .A0(n273), .A1(n1140), .B0(n1167), .B1(n1132), .Y(n542) );
  OAI22XL U1126 ( .A0(n274), .A1(n1140), .B0(n1168), .B1(n1132), .Y(n541) );
  OAI22XL U1127 ( .A0(n275), .A1(n1140), .B0(n1169), .B1(n1132), .Y(n540) );
  OAI22XL U1128 ( .A0(n276), .A1(n1140), .B0(n1170), .B1(n1132), .Y(n539) );
  OAI22XL U1129 ( .A0(n277), .A1(n1140), .B0(n1171), .B1(n1132), .Y(n538) );
  OAI22XL U1130 ( .A0(n278), .A1(n1140), .B0(n1172), .B1(n1132), .Y(n537) );
  OAI22XL U1131 ( .A0(n279), .A1(n1140), .B0(n1173), .B1(n1132), .Y(n536) );
  OAI22XL U1132 ( .A0(n280), .A1(n1140), .B0(n1174), .B1(n1132), .Y(n535) );
  OAI22XL U1133 ( .A0(n281), .A1(n1140), .B0(n1175), .B1(n1132), .Y(n534) );
  OAI22XL U1134 ( .A0(n282), .A1(n1140), .B0(n1176), .B1(n1132), .Y(n533) );
  OAI22XL U1135 ( .A0(n283), .A1(n1140), .B0(n1177), .B1(n1132), .Y(n532) );
  OAI22XL U1136 ( .A0(n284), .A1(n1140), .B0(n1178), .B1(n1132), .Y(n531) );
  OAI22XL U1137 ( .A0(n285), .A1(n1140), .B0(n1179), .B1(n1132), .Y(n530) );
  OAI22XL U1138 ( .A0(n178), .A1(n1135), .B0(n1180), .B1(n1127), .Y(n637) );
  OAI22XL U1139 ( .A0(n179), .A1(n1135), .B0(n1163), .B1(n1127), .Y(n636) );
  OAI22XL U1140 ( .A0(n180), .A1(n1135), .B0(n1164), .B1(n1127), .Y(n635) );
  OAI22XL U1141 ( .A0(n181), .A1(n1135), .B0(n1165), .B1(n1127), .Y(n634) );
  OAI22XL U1142 ( .A0(n182), .A1(n1135), .B0(n1166), .B1(n1127), .Y(n633) );
  OAI22XL U1143 ( .A0(n183), .A1(n1135), .B0(n1167), .B1(n1127), .Y(n632) );
  OAI22XL U1144 ( .A0(n184), .A1(n1135), .B0(n1168), .B1(n1127), .Y(n631) );
  OAI22XL U1145 ( .A0(n185), .A1(n1135), .B0(n1169), .B1(n1127), .Y(n630) );
  OAI22XL U1146 ( .A0(n186), .A1(n1135), .B0(n1170), .B1(n1127), .Y(n629) );
  OAI22XL U1147 ( .A0(n187), .A1(n1135), .B0(n1171), .B1(n1127), .Y(n628) );
  OAI22XL U1148 ( .A0(n188), .A1(n1135), .B0(n1172), .B1(n1127), .Y(n627) );
  OAI22XL U1149 ( .A0(n189), .A1(n1135), .B0(n1173), .B1(n1127), .Y(n626) );
  OAI22XL U1150 ( .A0(n190), .A1(n1135), .B0(n1174), .B1(n1127), .Y(n625) );
  OAI22XL U1151 ( .A0(n191), .A1(n1135), .B0(n1175), .B1(n1127), .Y(n624) );
  OAI22XL U1152 ( .A0(n192), .A1(n1135), .B0(n1176), .B1(n1127), .Y(n623) );
  OAI22XL U1153 ( .A0(n193), .A1(n1135), .B0(n1177), .B1(n1127), .Y(n622) );
  OAI22XL U1154 ( .A0(n194), .A1(n1135), .B0(n1178), .B1(n1127), .Y(n621) );
  OAI22XL U1155 ( .A0(n195), .A1(n1135), .B0(n1179), .B1(n1127), .Y(n620) );
  OAI22XL U1156 ( .A0(n304), .A1(n1142), .B0(n1134), .B1(n1180), .Y(n511) );
  OAI22XL U1157 ( .A0(n305), .A1(n1142), .B0(n1134), .B1(n1163), .Y(n510) );
  OAI22XL U1158 ( .A0(n306), .A1(n1142), .B0(n1134), .B1(n1164), .Y(n509) );
  OAI22XL U1159 ( .A0(n307), .A1(n1142), .B0(n1134), .B1(n1165), .Y(n508) );
  OAI22XL U1160 ( .A0(n308), .A1(n1142), .B0(n1134), .B1(n1166), .Y(n507) );
  OAI22XL U1161 ( .A0(n309), .A1(n1142), .B0(n1134), .B1(n1167), .Y(n506) );
  OAI22XL U1162 ( .A0(n310), .A1(n1142), .B0(n1134), .B1(n1168), .Y(n505) );
  OAI22XL U1163 ( .A0(n311), .A1(n1142), .B0(n1134), .B1(n1169), .Y(n504) );
  OAI22XL U1164 ( .A0(n312), .A1(n1142), .B0(n1134), .B1(n1170), .Y(n503) );
  OAI22XL U1165 ( .A0(n313), .A1(n1142), .B0(n1134), .B1(n1171), .Y(n502) );
  OAI22XL U1166 ( .A0(n314), .A1(n1142), .B0(n1134), .B1(n1172), .Y(n501) );
  OAI22XL U1167 ( .A0(n315), .A1(n1142), .B0(n1134), .B1(n1173), .Y(n500) );
  OAI22XL U1168 ( .A0(n316), .A1(n1142), .B0(n1134), .B1(n1174), .Y(n499) );
  OAI22XL U1169 ( .A0(n317), .A1(n1142), .B0(n1134), .B1(n1175), .Y(n498) );
  OAI22XL U1170 ( .A0(n318), .A1(n1142), .B0(n1134), .B1(n1176), .Y(n497) );
  OAI22XL U1171 ( .A0(n319), .A1(n1142), .B0(n1134), .B1(n1177), .Y(n496) );
  OAI22XL U1172 ( .A0(n320), .A1(n1142), .B0(n1134), .B1(n1178), .Y(n495) );
  OAI22XL U1173 ( .A0(n321), .A1(n1142), .B0(n1134), .B1(n1179), .Y(n494) );
  NAND2BX1 U1174 ( .AN(n99), .B(sd), .Y(n96) );
  NAND2X2 U1175 ( .A(n8), .B(n492), .Y(n118) );
  NAND2BX1 U1176 ( .AN(n94), .B(sd), .Y(n91) );
  NAND2X1 U1177 ( .A(n123), .B(sd), .Y(n104) );
  NAND3X2 U1178 ( .A(n487), .B(counter[1]), .C(n1183), .Y(n99) );
  NAND2X1 U1179 ( .A(sd), .B(n1183), .Y(n116) );
  NOR3X1 U1180 ( .A(n488), .B(n487), .C(n118), .Y(n123) );
  OAI22XL U1181 ( .A0(n96), .A1(n111), .B0(n169), .B1(n114), .Y(n648) );
  NOR2X1 U1182 ( .A(n99), .B(n111), .Y(n114) );
  OAI22XL U1183 ( .A0(n95), .A1(n104), .B0(n174), .B1(n105), .Y(n643) );
  NOR2X1 U1184 ( .A(n95), .B(n1184), .Y(n105) );
  OAI22XL U1185 ( .A0(n90), .A1(n104), .B0(n173), .B1(n107), .Y(n644) );
  NOR2X1 U1186 ( .A(n90), .B(n1184), .Y(n107) );
  OAI22XL U1187 ( .A0(n90), .A1(n96), .B0(n177), .B1(n100), .Y(n640) );
  NOR2X1 U1188 ( .A(n90), .B(n99), .Y(n100) );
  OAI22XL U1189 ( .A0(n109), .A1(n104), .B0(n166), .B1(n121), .Y(n651) );
  NOR2X1 U1190 ( .A(n109), .B(n1184), .Y(n121) );
  OAI22XL U1191 ( .A0(n109), .A1(n96), .B0(n170), .B1(n113), .Y(n647) );
  NOR2X1 U1192 ( .A(n109), .B(n99), .Y(n113) );
  OAI22XL U1193 ( .A0(n109), .A1(n91), .B0(n172), .B1(n110), .Y(n645) );
  NOR2X1 U1194 ( .A(n109), .B(n94), .Y(n110) );
  OAI22XL U1195 ( .A0(n91), .A1(n111), .B0(n171), .B1(n112), .Y(n646) );
  NOR2X1 U1196 ( .A(n94), .B(n111), .Y(n112) );
  OAI22XL U1197 ( .A0(n129), .A1(n96), .B0(n161), .B1(n130), .Y(n656) );
  NOR2X1 U1198 ( .A(n129), .B(n99), .Y(n130) );
  OAI22XL U1199 ( .A0(n125), .A1(n96), .B0(n162), .B1(n128), .Y(n655) );
  NOR2X1 U1200 ( .A(n125), .B(n99), .Y(n128) );
  OAI22XL U1201 ( .A0(n104), .A1(n111), .B0(n165), .B1(n122), .Y(n652) );
  NOR2X1 U1202 ( .A(n1184), .B(n111), .Y(n122) );
  OAI22XL U1203 ( .A0(n132), .A1(n116), .B0(n160), .B1(n133), .Y(n657) );
  NOR2X1 U1204 ( .A(n132), .B(n118), .Y(n133) );
  OAI22XL U1205 ( .A0(n47), .A1(n116), .B0(n163), .B1(n127), .Y(n654) );
  NOR2X1 U1206 ( .A(n118), .B(n47), .Y(n127) );
  OAI22XL U1207 ( .A0(n115), .A1(n116), .B0(n168), .B1(n117), .Y(n649) );
  NOR2X1 U1208 ( .A(n118), .B(n115), .Y(n117) );
  OAI22XL U1209 ( .A0(n125), .A1(n91), .B0(n164), .B1(n126), .Y(n653) );
  NOR2X1 U1210 ( .A(n125), .B(n94), .Y(n126) );
  OAI2BB2XL U1211 ( .B0(n175), .B1(n103), .A0N(sd), .A1N(n103), .Y(n642) );
  NOR2BX1 U1212 ( .AN(n102), .B(n90), .Y(n103) );
  OAI2BB2XL U1213 ( .B0(n176), .B1(n101), .A0N(sd), .A1N(n101), .Y(n641) );
  NOR2BX1 U1214 ( .AN(n102), .B(n95), .Y(n101) );
  OAI2BB2XL U1215 ( .B0(n167), .B1(n119), .A0N(sd), .A1N(n119), .Y(n650) );
  NOR2BX1 U1216 ( .AN(n102), .B(n111), .Y(n119) );
  NAND2X2 U1217 ( .A(n108), .B(n489), .Y(n95) );
  NAND2X2 U1218 ( .A(n124), .B(n489), .Y(n109) );
  NAND3BX1 U1219 ( .AN(n129), .B(n487), .C(n488), .Y(n47) );
  NOR2X1 U1220 ( .A(counter[1]), .B(n487), .Y(n120) );
  NOR2BX1 U1221 ( .AN(n158), .B(n159), .Y(n124) );
  NOR2BX1 U1222 ( .AN(n158), .B(counter[3]), .Y(n108) );
  NOR2X1 U1223 ( .A(counter[3]), .B(n158), .Y(n155) );
  OAI22XL U1224 ( .A0(n1205), .A1(n143), .B0(n147), .B1(n146), .Y(N135) );
  XOR2X1 U1225 ( .A(RB2_A[0]), .B(n490), .Y(n147) );
  NOR2BX1 U1226 ( .AN(n157), .B(n146), .Y(n72) );
  NOR2X1 U1227 ( .A(n1033), .B(n46), .Y(nx_counter[4]) );
  NAND3X1 U1228 ( .A(n72), .B(RB2_A[0]), .C(n490), .Y(n74) );
  NAND3X1 U1229 ( .A(n72), .B(RB2_A[1]), .C(n491), .Y(n77) );
  NAND3X1 U1230 ( .A(n83), .B(RB2_A[0]), .C(n490), .Y(n85) );
  NAND3X1 U1231 ( .A(n491), .B(n83), .C(n490), .Y(n82) );
  NAND3X1 U1232 ( .A(n83), .B(RB2_A[1]), .C(n491), .Y(n87) );
  NAND3X1 U1233 ( .A(n491), .B(n72), .C(n490), .Y(n53) );
  NAND2BX1 U1234 ( .AN(n136), .B(n150), .Y(ns[1]) );
  OAI211X1 U1235 ( .A0(n151), .A1(n152), .B0(n1200), .C0(n1202), .Y(n150) );
  NOR4X1 U1236 ( .A(times[4]), .B(N275), .C(n1203), .D(n153), .Y(n151) );
  NOR4X1 U1237 ( .A(times[3]), .B(n1201), .C(n1204), .D(n148), .Y(n152) );
  OAI2BB2XL U1238 ( .B0(n134), .B1(n1200), .A0N(N230), .A1N(n136), .Y(n662) );
  OAI2BB2XL U1239 ( .B0(n134), .B1(n1204), .A0N(N234), .A1N(n136), .Y(n658) );
  NAND3X1 U1240 ( .A(n1197), .B(n1195), .C(n492), .Y(n153) );
  ADDHXL U1241 ( .A(counter[1]), .B(N109), .CO(\r328/carry [2]), .S(N220) );
  ADDHXL U1242 ( .A(N275), .B(times[0]), .CO(\r329/carry [2]), .S(N231) );
  ADDHXL U1243 ( .A(times[2]), .B(\r329/carry [2]), .CO(\r329/carry [3]), .S(
        N232) );
  ADDHXL U1244 ( .A(counter[2]), .B(\r328/carry [2]), .CO(\r328/carry [3]), 
        .S(N221) );
  ADDHXL U1245 ( .A(times[3]), .B(\r329/carry [3]), .CO(\r329/carry [4]), .S(
        N233) );
  ADDHXL U1246 ( .A(counter[3]), .B(\r328/carry [3]), .CO(\r328/carry [4]), 
        .S(N222) );
  CLKINVX1 U1247 ( .A(rst), .Y(n1162) );
  NOR2X1 U1248 ( .A(n1118), .B(N110), .Y(n1034) );
  NOR2X1 U1249 ( .A(n1118), .B(n1199), .Y(n1035) );
  AOI22X1 U1250 ( .A0(\RB2_data[5][0] ), .A1(n1119), .B0(\RB2_data[7][0] ), 
        .B1(n1120), .Y(n1041) );
  NOR2X1 U1251 ( .A(N110), .B(N111), .Y(n1036) );
  NOR2X1 U1252 ( .A(n1199), .B(N111), .Y(n1037) );
  AOI22X1 U1253 ( .A0(\RB2_data[1][0] ), .A1(n1121), .B0(\RB2_data[3][0] ), 
        .B1(n1122), .Y(n1040) );
  AOI22X1 U1254 ( .A0(\RB2_data[4][0] ), .A1(n1123), .B0(\RB2_data[6][0] ), 
        .B1(n1124), .Y(n1039) );
  AOI22X1 U1255 ( .A0(\RB2_data[0][0] ), .A1(n1125), .B0(\RB2_data[2][0] ), 
        .B1(n1126), .Y(n1038) );
  NAND4X1 U1256 ( .A(n1041), .B(n1040), .C(n1039), .D(n1038), .Y(N296) );
  AOI22X1 U1257 ( .A0(\RB2_data[5][1] ), .A1(n1119), .B0(\RB2_data[7][1] ), 
        .B1(n1120), .Y(n1045) );
  AOI22X1 U1258 ( .A0(\RB2_data[1][1] ), .A1(n1121), .B0(\RB2_data[3][1] ), 
        .B1(n1122), .Y(n1044) );
  AOI22X1 U1259 ( .A0(\RB2_data[4][1] ), .A1(n1123), .B0(\RB2_data[6][1] ), 
        .B1(n1124), .Y(n1043) );
  AOI22X1 U1260 ( .A0(\RB2_data[0][1] ), .A1(n1125), .B0(\RB2_data[2][1] ), 
        .B1(n1126), .Y(n1042) );
  NAND4X1 U1261 ( .A(n1045), .B(n1044), .C(n1043), .D(n1042), .Y(N295) );
  AOI22X1 U1262 ( .A0(\RB2_data[5][2] ), .A1(n1119), .B0(\RB2_data[7][2] ), 
        .B1(n1120), .Y(n1049) );
  AOI22X1 U1263 ( .A0(\RB2_data[1][2] ), .A1(n1121), .B0(\RB2_data[3][2] ), 
        .B1(n1122), .Y(n1048) );
  AOI22X1 U1264 ( .A0(\RB2_data[4][2] ), .A1(n1123), .B0(\RB2_data[6][2] ), 
        .B1(n1124), .Y(n1047) );
  AOI22X1 U1265 ( .A0(\RB2_data[0][2] ), .A1(n1125), .B0(\RB2_data[2][2] ), 
        .B1(n1126), .Y(n1046) );
  NAND4X1 U1266 ( .A(n1049), .B(n1048), .C(n1047), .D(n1046), .Y(N294) );
  AOI22X1 U1267 ( .A0(\RB2_data[5][3] ), .A1(n1119), .B0(\RB2_data[7][3] ), 
        .B1(n1120), .Y(n1053) );
  AOI22X1 U1268 ( .A0(\RB2_data[1][3] ), .A1(n1121), .B0(\RB2_data[3][3] ), 
        .B1(n1122), .Y(n1052) );
  AOI22X1 U1269 ( .A0(\RB2_data[4][3] ), .A1(n1123), .B0(\RB2_data[6][3] ), 
        .B1(n1124), .Y(n1051) );
  AOI22X1 U1270 ( .A0(\RB2_data[0][3] ), .A1(n1125), .B0(\RB2_data[2][3] ), 
        .B1(n1126), .Y(n1050) );
  NAND4X1 U1271 ( .A(n1053), .B(n1052), .C(n1051), .D(n1050), .Y(N293) );
  AOI22X1 U1272 ( .A0(\RB2_data[5][4] ), .A1(n1119), .B0(\RB2_data[7][4] ), 
        .B1(n1120), .Y(n1057) );
  AOI22X1 U1273 ( .A0(\RB2_data[1][4] ), .A1(n1121), .B0(\RB2_data[3][4] ), 
        .B1(n1122), .Y(n1056) );
  AOI22X1 U1274 ( .A0(\RB2_data[4][4] ), .A1(n1123), .B0(\RB2_data[6][4] ), 
        .B1(n1124), .Y(n1055) );
  AOI22X1 U1275 ( .A0(\RB2_data[0][4] ), .A1(n1125), .B0(\RB2_data[2][4] ), 
        .B1(n1126), .Y(n1054) );
  NAND4X1 U1276 ( .A(n1057), .B(n1056), .C(n1055), .D(n1054), .Y(N292) );
  AOI22X1 U1277 ( .A0(\RB2_data[5][5] ), .A1(n1119), .B0(\RB2_data[7][5] ), 
        .B1(n1120), .Y(n1061) );
  AOI22X1 U1278 ( .A0(\RB2_data[1][5] ), .A1(n1121), .B0(\RB2_data[3][5] ), 
        .B1(n1122), .Y(n1060) );
  AOI22X1 U1279 ( .A0(\RB2_data[4][5] ), .A1(n1123), .B0(\RB2_data[6][5] ), 
        .B1(n1124), .Y(n1059) );
  AOI22X1 U1280 ( .A0(\RB2_data[0][5] ), .A1(n1125), .B0(\RB2_data[2][5] ), 
        .B1(n1126), .Y(n1058) );
  NAND4X1 U1281 ( .A(n1061), .B(n1060), .C(n1059), .D(n1058), .Y(N291) );
  AOI22X1 U1282 ( .A0(\RB2_data[5][6] ), .A1(n1119), .B0(\RB2_data[7][6] ), 
        .B1(n1120), .Y(n1065) );
  AOI22X1 U1283 ( .A0(\RB2_data[1][6] ), .A1(n1121), .B0(\RB2_data[3][6] ), 
        .B1(n1122), .Y(n1064) );
  AOI22X1 U1284 ( .A0(\RB2_data[4][6] ), .A1(n1123), .B0(\RB2_data[6][6] ), 
        .B1(n1124), .Y(n1063) );
  AOI22X1 U1285 ( .A0(\RB2_data[0][6] ), .A1(n1125), .B0(\RB2_data[2][6] ), 
        .B1(n1126), .Y(n1062) );
  NAND4X1 U1286 ( .A(n1065), .B(n1064), .C(n1063), .D(n1062), .Y(N290) );
  AOI22X1 U1287 ( .A0(\RB2_data[5][7] ), .A1(n1119), .B0(\RB2_data[7][7] ), 
        .B1(n1120), .Y(n1069) );
  AOI22X1 U1288 ( .A0(\RB2_data[1][7] ), .A1(n1121), .B0(\RB2_data[3][7] ), 
        .B1(n1122), .Y(n1068) );
  AOI22X1 U1289 ( .A0(\RB2_data[4][7] ), .A1(n1123), .B0(\RB2_data[6][7] ), 
        .B1(n1124), .Y(n1067) );
  AOI22X1 U1290 ( .A0(\RB2_data[0][7] ), .A1(n1125), .B0(\RB2_data[2][7] ), 
        .B1(n1126), .Y(n1066) );
  NAND4X1 U1291 ( .A(n1069), .B(n1068), .C(n1067), .D(n1066), .Y(N289) );
  AOI22X1 U1292 ( .A0(\RB2_data[5][8] ), .A1(n1119), .B0(\RB2_data[7][8] ), 
        .B1(n1120), .Y(n1073) );
  AOI22X1 U1293 ( .A0(\RB2_data[1][8] ), .A1(n1121), .B0(\RB2_data[3][8] ), 
        .B1(n1122), .Y(n1072) );
  AOI22X1 U1294 ( .A0(\RB2_data[4][8] ), .A1(n1123), .B0(\RB2_data[6][8] ), 
        .B1(n1124), .Y(n1071) );
  AOI22X1 U1295 ( .A0(\RB2_data[0][8] ), .A1(n1125), .B0(\RB2_data[2][8] ), 
        .B1(n1126), .Y(n1070) );
  NAND4X1 U1296 ( .A(n1073), .B(n1072), .C(n1071), .D(n1070), .Y(N288) );
  AOI22X1 U1297 ( .A0(\RB2_data[5][9] ), .A1(n1119), .B0(\RB2_data[7][9] ), 
        .B1(n1120), .Y(n1077) );
  AOI22X1 U1298 ( .A0(\RB2_data[1][9] ), .A1(n1121), .B0(\RB2_data[3][9] ), 
        .B1(n1122), .Y(n1076) );
  AOI22X1 U1299 ( .A0(\RB2_data[4][9] ), .A1(n1123), .B0(\RB2_data[6][9] ), 
        .B1(n1124), .Y(n1075) );
  AOI22X1 U1300 ( .A0(\RB2_data[0][9] ), .A1(n1125), .B0(\RB2_data[2][9] ), 
        .B1(n1126), .Y(n1074) );
  NAND4X1 U1301 ( .A(n1077), .B(n1076), .C(n1075), .D(n1074), .Y(N287) );
  AOI22X1 U1302 ( .A0(\RB2_data[5][10] ), .A1(n1119), .B0(\RB2_data[7][10] ), 
        .B1(n1120), .Y(n1081) );
  AOI22X1 U1303 ( .A0(\RB2_data[1][10] ), .A1(n1121), .B0(\RB2_data[3][10] ), 
        .B1(n1122), .Y(n1080) );
  AOI22X1 U1304 ( .A0(\RB2_data[4][10] ), .A1(n1123), .B0(\RB2_data[6][10] ), 
        .B1(n1124), .Y(n1079) );
  AOI22X1 U1305 ( .A0(\RB2_data[0][10] ), .A1(n1125), .B0(\RB2_data[2][10] ), 
        .B1(n1126), .Y(n1078) );
  NAND4X1 U1306 ( .A(n1081), .B(n1080), .C(n1079), .D(n1078), .Y(N286) );
  AOI22X1 U1307 ( .A0(\RB2_data[5][11] ), .A1(n1119), .B0(\RB2_data[7][11] ), 
        .B1(n1120), .Y(n1085) );
  AOI22X1 U1308 ( .A0(\RB2_data[1][11] ), .A1(n1121), .B0(\RB2_data[3][11] ), 
        .B1(n1122), .Y(n1084) );
  AOI22X1 U1309 ( .A0(\RB2_data[4][11] ), .A1(n1123), .B0(\RB2_data[6][11] ), 
        .B1(n1124), .Y(n1083) );
  AOI22X1 U1310 ( .A0(\RB2_data[0][11] ), .A1(n1125), .B0(\RB2_data[2][11] ), 
        .B1(n1126), .Y(n1082) );
  NAND4X1 U1311 ( .A(n1085), .B(n1084), .C(n1083), .D(n1082), .Y(N285) );
  AOI22X1 U1312 ( .A0(\RB2_data[5][12] ), .A1(n1119), .B0(\RB2_data[7][12] ), 
        .B1(n1120), .Y(n1089) );
  AOI22X1 U1313 ( .A0(\RB2_data[1][12] ), .A1(n1121), .B0(\RB2_data[3][12] ), 
        .B1(n1122), .Y(n1088) );
  AOI22X1 U1314 ( .A0(\RB2_data[4][12] ), .A1(n1123), .B0(\RB2_data[6][12] ), 
        .B1(n1124), .Y(n1087) );
  AOI22X1 U1315 ( .A0(\RB2_data[0][12] ), .A1(n1125), .B0(\RB2_data[2][12] ), 
        .B1(n1126), .Y(n1086) );
  NAND4X1 U1316 ( .A(n1089), .B(n1088), .C(n1087), .D(n1086), .Y(N284) );
  AOI22X1 U1317 ( .A0(\RB2_data[5][13] ), .A1(n1119), .B0(\RB2_data[7][13] ), 
        .B1(n1120), .Y(n1093) );
  AOI22X1 U1318 ( .A0(\RB2_data[1][13] ), .A1(n1121), .B0(\RB2_data[3][13] ), 
        .B1(n1122), .Y(n1092) );
  AOI22X1 U1319 ( .A0(\RB2_data[4][13] ), .A1(n1123), .B0(\RB2_data[6][13] ), 
        .B1(n1124), .Y(n1091) );
  AOI22X1 U1320 ( .A0(\RB2_data[0][13] ), .A1(n1125), .B0(\RB2_data[2][13] ), 
        .B1(n1126), .Y(n1090) );
  NAND4X1 U1321 ( .A(n1093), .B(n1092), .C(n1091), .D(n1090), .Y(N283) );
  AOI22X1 U1322 ( .A0(\RB2_data[5][14] ), .A1(n1119), .B0(\RB2_data[7][14] ), 
        .B1(n1120), .Y(n1097) );
  AOI22X1 U1323 ( .A0(\RB2_data[1][14] ), .A1(n1121), .B0(\RB2_data[3][14] ), 
        .B1(n1122), .Y(n1096) );
  AOI22X1 U1324 ( .A0(\RB2_data[4][14] ), .A1(n1123), .B0(\RB2_data[6][14] ), 
        .B1(n1124), .Y(n1095) );
  AOI22X1 U1325 ( .A0(\RB2_data[0][14] ), .A1(n1125), .B0(\RB2_data[2][14] ), 
        .B1(n1126), .Y(n1094) );
  NAND4X1 U1326 ( .A(n1097), .B(n1096), .C(n1095), .D(n1094), .Y(N282) );
  AOI22X1 U1327 ( .A0(\RB2_data[5][15] ), .A1(n1119), .B0(\RB2_data[7][15] ), 
        .B1(n1120), .Y(n1101) );
  AOI22X1 U1328 ( .A0(\RB2_data[1][15] ), .A1(n1121), .B0(\RB2_data[3][15] ), 
        .B1(n1122), .Y(n1100) );
  AOI22X1 U1329 ( .A0(\RB2_data[4][15] ), .A1(n1123), .B0(\RB2_data[6][15] ), 
        .B1(n1124), .Y(n1099) );
  AOI22X1 U1330 ( .A0(\RB2_data[0][15] ), .A1(n1125), .B0(\RB2_data[2][15] ), 
        .B1(n1126), .Y(n1098) );
  NAND4X1 U1331 ( .A(n1101), .B(n1100), .C(n1099), .D(n1098), .Y(N281) );
  AOI22X1 U1332 ( .A0(\RB2_data[5][16] ), .A1(n1119), .B0(\RB2_data[7][16] ), 
        .B1(n1120), .Y(n1105) );
  AOI22X1 U1333 ( .A0(\RB2_data[1][16] ), .A1(n1121), .B0(\RB2_data[3][16] ), 
        .B1(n1122), .Y(n1104) );
  AOI22X1 U1334 ( .A0(\RB2_data[4][16] ), .A1(n1123), .B0(\RB2_data[6][16] ), 
        .B1(n1124), .Y(n1103) );
  AOI22X1 U1335 ( .A0(\RB2_data[0][16] ), .A1(n1125), .B0(\RB2_data[2][16] ), 
        .B1(n1126), .Y(n1102) );
  NAND4X1 U1336 ( .A(n1105), .B(n1104), .C(n1103), .D(n1102), .Y(N280) );
  AOI22X1 U1337 ( .A0(\RB2_data[5][17] ), .A1(n1119), .B0(\RB2_data[7][17] ), 
        .B1(n1120), .Y(n1117) );
  AOI22X1 U1338 ( .A0(\RB2_data[1][17] ), .A1(n1121), .B0(\RB2_data[3][17] ), 
        .B1(n1122), .Y(n1116) );
  AOI22X1 U1339 ( .A0(\RB2_data[4][17] ), .A1(n1123), .B0(\RB2_data[6][17] ), 
        .B1(n1124), .Y(n1115) );
  AOI22X1 U1340 ( .A0(\RB2_data[0][17] ), .A1(n1125), .B0(\RB2_data[2][17] ), 
        .B1(n1126), .Y(n1114) );
  NAND4X1 U1341 ( .A(n1117), .B(n1116), .C(n1115), .D(n1114), .Y(N279) );
  XOR2X1 U1342 ( .A(n1203), .B(\sub_202_2/carry[3] ), .Y(N277) );
  AND2X1 U1343 ( .A(n1157), .B(n1202), .Y(\sub_202_2/carry[3] ) );
  XOR2X1 U1344 ( .A(n1202), .B(n1157), .Y(N276) );
  XOR2X1 U1345 ( .A(\r329/carry [4]), .B(times[4]), .Y(N234) );
  OA21XL U1346 ( .A0(N109), .A1(counter[1]), .B0(counter[2]), .Y(n1158) );
endmodule

