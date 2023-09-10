/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Fri Feb 17 20:20:49 2023
/////////////////////////////////////////////////////////////


module SME ( clk, reset, chardata, isstring, ispattern, valid, match, 
        match_index );
  input [7:0] chardata;
  output [4:0] match_index;
  input clk, reset, isstring, ispattern;
  output valid, match;
  wire   N87, N88, N89, N90, N91, n1673, pat_front, pat_behind, nx_match,
         \str[0][7] , \str[0][6] , \str[0][5] , \str[0][4] , \str[0][3] ,
         \str[0][2] , \str[0][1] , \str[0][0] , \str[1][7] , \str[1][6] ,
         \str[1][5] , \str[1][4] , \str[1][3] , \str[1][2] , \str[1][1] ,
         \str[1][0] , \str[2][7] , \str[2][6] , \str[2][5] , \str[2][4] ,
         \str[2][3] , \str[2][2] , \str[2][1] , \str[2][0] , \str[3][7] ,
         \str[3][6] , \str[3][5] , \str[3][4] , \str[3][3] , \str[3][2] ,
         \str[3][1] , \str[3][0] , \str[4][7] , \str[4][6] , \str[4][5] ,
         \str[4][4] , \str[4][3] , \str[4][2] , \str[4][1] , \str[4][0] ,
         \str[5][7] , \str[5][6] , \str[5][5] , \str[5][4] , \str[5][3] ,
         \str[5][2] , \str[5][1] , \str[5][0] , \str[6][7] , \str[6][6] ,
         \str[6][5] , \str[6][4] , \str[6][3] , \str[6][2] , \str[6][1] ,
         \str[6][0] , \str[7][7] , \str[7][6] , \str[7][5] , \str[7][4] ,
         \str[7][3] , \str[7][2] , \str[7][1] , \str[7][0] , \str[8][7] ,
         \str[8][6] , \str[8][5] , \str[8][4] , \str[8][3] , \str[8][2] ,
         \str[8][1] , \str[8][0] , \str[9][7] , \str[9][6] , \str[9][5] ,
         \str[9][4] , \str[9][3] , \str[9][2] , \str[9][1] , \str[9][0] ,
         \str[10][7] , \str[10][6] , \str[10][5] , \str[10][4] , \str[10][3] ,
         \str[10][2] , \str[10][1] , \str[10][0] , \str[11][7] , \str[11][6] ,
         \str[11][5] , \str[11][4] , \str[11][3] , \str[11][2] , \str[11][1] ,
         \str[11][0] , \str[12][7] , \str[12][6] , \str[12][5] , \str[12][4] ,
         \str[12][3] , \str[12][2] , \str[12][1] , \str[12][0] , \str[13][7] ,
         \str[13][6] , \str[13][5] , \str[13][4] , \str[13][3] , \str[13][2] ,
         \str[13][1] , \str[13][0] , \str[14][7] , \str[14][6] , \str[14][5] ,
         \str[14][4] , \str[14][3] , \str[14][2] , \str[14][1] , \str[14][0] ,
         \str[15][7] , \str[15][6] , \str[15][5] , \str[15][4] , \str[15][3] ,
         \str[15][2] , \str[15][1] , \str[15][0] , \str[16][7] , \str[16][6] ,
         \str[16][5] , \str[16][4] , \str[16][3] , \str[16][2] , \str[16][1] ,
         \str[16][0] , \str[17][7] , \str[17][6] , \str[17][5] , \str[17][4] ,
         \str[17][3] , \str[17][2] , \str[17][1] , \str[17][0] , \str[18][7] ,
         \str[18][6] , \str[18][5] , \str[18][4] , \str[18][3] , \str[18][2] ,
         \str[18][1] , \str[18][0] , \str[19][7] , \str[19][6] , \str[19][5] ,
         \str[19][4] , \str[19][3] , \str[19][2] , \str[19][1] , \str[19][0] ,
         \str[20][7] , \str[20][6] , \str[20][5] , \str[20][4] , \str[20][3] ,
         \str[20][2] , \str[20][1] , \str[20][0] , \str[21][7] , \str[21][6] ,
         \str[21][5] , \str[21][4] , \str[21][3] , \str[21][2] , \str[21][1] ,
         \str[21][0] , \str[22][7] , \str[22][6] , \str[22][5] , \str[22][4] ,
         \str[22][3] , \str[22][2] , \str[22][1] , \str[22][0] , \str[23][7] ,
         \str[23][6] , \str[23][5] , \str[23][4] , \str[23][3] , \str[23][2] ,
         \str[23][1] , \str[23][0] , \str[24][7] , \str[24][6] , \str[24][5] ,
         \str[24][4] , \str[24][3] , \str[24][2] , \str[24][1] , \str[24][0] ,
         \str[25][7] , \str[25][6] , \str[25][5] , \str[25][4] , \str[25][3] ,
         \str[25][2] , \str[25][1] , \str[25][0] , \str[26][7] , \str[26][6] ,
         \str[26][5] , \str[26][4] , \str[26][3] , \str[26][2] , \str[26][1] ,
         \str[26][0] , \str[27][7] , \str[27][6] , \str[27][5] , \str[27][4] ,
         \str[27][3] , \str[27][2] , \str[27][1] , \str[27][0] , \str[28][7] ,
         \str[28][6] , \str[28][5] , \str[28][4] , \str[28][3] , \str[28][2] ,
         \str[28][1] , \str[28][0] , \str[29][7] , \str[29][6] , \str[29][5] ,
         \str[29][4] , \str[29][3] , \str[29][2] , \str[29][1] , \str[29][0] ,
         \str[30][7] , \str[30][6] , \str[30][5] , \str[30][4] , \str[30][3] ,
         \str[30][2] , \str[30][1] , \str[30][0] , \str[31][7] , \str[31][6] ,
         \str[31][5] , \str[31][4] , \str[31][3] , \str[31][2] , \str[31][1] ,
         \str[31][0] , reduction_comp_tab_latch, reduction_comp_tab, N360,
         N361, N362, N363, N364, N365, N366, N367, N368, N369, N370, N371,
         N376, N377, N378, N386, N387, N388, N389, N390, N391, N392, N393,
         N541, n244, n245, n246, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
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
         n820, n821, n822, n823, n824, n825, n826, n827, n828, n829, n830,
         n831, n832, n833, n834, n835, n836, n837, n838, n839, n840, n841,
         n842, n843, n844, n845, n846, n847, n848, n849, n850, n851, n852,
         n853, n854, n855, n856, n857, n858, n859, n860, n861, n862, n863,
         n864, n865, n866, n867, n868, n869, n870, n871, n872, n873, n874,
         n875, n876, n877, n878, n879, n880, n881, n882, n883, n884, n885,
         n886, n887, n888, n889, n890, n891, n892, n893, n894, n895, n896,
         n897, n898, n899, n900, n901, n902, n903, n904, n905, n906, n907,
         n908, n909, n910, n911, n912, n913, n914, n915, n916, n917, n918,
         n919, n920, n921, n922, n923, n924, n925, n926, n927, n928, n929,
         n930, n931, n932, n933, n934, n935, n936, n937, n938, n939, n940,
         n941, n942, n943, n944, n945, n946, n947, n948, n949, n950, n951,
         n952, n953, n954, n955, n956, n957, n958, n959, n960, n961, n962,
         n963, n964, n965, n966, n967, n968, n969, n970, n971, n972, n973,
         n974, n975, n976, n977, n978, n979, n980, n981, n982, n983, n984,
         n985, n986, n987, n988, n989, n990, n991, n992, n993, n994, n995,
         n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005,
         n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015,
         n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025,
         n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035,
         n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045,
         n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055,
         n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065,
         n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075,
         n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085,
         n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095,
         n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105,
         n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115,
         n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125,
         n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135,
         n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145,
         n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155,
         n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165,
         n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175,
         n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185,
         n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195,
         n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205,
         n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215,
         n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225,
         n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234, n1235,
         n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245,
         n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254, n1255,
         n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264, n1265,
         n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274, n1275,
         n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285,
         n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295,
         n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305,
         n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315,
         n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325,
         n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335,
         n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345,
         n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355,
         n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1365,
         n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374, n1375,
         n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384, n1385,
         n1386, n1387, n1388, n1389, n1422, N98, N97, N96, N95, N94, N93, N92,
         n1423, n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1438, n1439,
         n1440, n1441, n1442, n1443, n1444, n1445, n1446, n1447, n1448, n1449,
         n1450, n1451, n1452, n1453, n1454, n1455, n1456, n1457, n1458, n1459,
         n1460, n1461, n1462, n1463, n1464, n1465, n1466, n1467, n1468, n1469,
         n1470, n1471, n1472, n1473, n1474, n1475, n1476, n1477, n1478, n1479,
         n1480, n1481, n1482, n1483, n1484, n1485, n1486, n1487, n1488, n1489,
         n1490, n1491, n1492, n1493, n1494, n1495, n1496, n1497, n1498, n1499,
         n1500, n1501, n1502, n1503, n1504, n1505, n1506, n1507, n1508, n1509,
         n1510, n1511, n1512, n1513, n1514, n1515, n1516, n1517, n1518, n1519,
         n1520, n1521, n1522, n1523, n1524, n1525, n1526, n1527, n1528, n1529,
         n1530, n1531, n1532, n1533, n1534, n1535, n1536, n1537, n1538, n1539,
         n1540, n1541, n1542, n1543, n1544, n1545, n1546, n1547, n1548, n1549,
         n1550, n1551, n1552, n1553, n1554, n1555, n1556, n1557, n1558, n1559,
         n1560, n1561, n1562, n1563, n1564, n1565, n1566, n1567, n1568, n1569,
         n1570, n1571, n1572, n1573, n1574, n1575, n1576, n1577, n1578, n1579,
         n1580, n1581, n1582, n1583, n1584, n1585, n1586, n1587, n1588, n1589,
         n1590, n1591, n1592, n1593, n1594, n1595, n1596, n1597, n1598, n1599,
         n1600, n1601, n1602, n1603, n1604, n1605, n1606, n1607, n1608, n1609,
         n1610, n1611, n1612, n1613, n1614, n1615, n1616, n1617, n1618, n1619,
         n1620, n1621, n1622, n1623, n1624, n1625, n1626, n1627, n1628, n1629,
         n1630, n1631, n1632, n1633, n1634, n1635, n1636, n1637, n1638, n1639,
         n1640, n1641, n1642, n1643, n1644, n1645, n1646, n1647, n1648, n1649,
         n1650, n1651, n1652, n1653, n1654, n1655, n1656, n1657, n1658, n1659,
         n1660, n1661, n1662, n1663, n1664, n1665, n1666, n1667, n1668, n1669,
         n1670, n1671, n1672;
  wire   [4:0] match_index_tail;
  wire   [2:0] pat_addr;
  wire   [4:0] nx_match_index;
  wire   [4:0] nx_str_addr;
  wire   [2:0] nx_pat_addr;
  wire   [2:0] cs;
  wire   [2:0] comp_cs;
  wire   [2:0] ns;
  wire   [2:0] comp_ns;
  wire   [1:31] str_space;
  wire   [0:31] compare_table;
  wire   [4:2] \add_270/carry ;
  wire   [4:1] \add_36_2/carry ;
  wire   [5:0] \sub_36/carry ;

  DFFRX1 \comp_cs_reg[2]  ( .D(comp_ns[2]), .CK(clk), .RN(n1512), .Q(
        comp_cs[2]), .QN(n253) );
  DFFRX1 reduction_comp_tab_latch_reg ( .D(reduction_comp_tab), .CK(clk), .RN(
        n1512), .Q(reduction_comp_tab_latch) );
  DFFRX1 \comp_cs_reg[1]  ( .D(comp_ns[1]), .CK(clk), .RN(n1512), .Q(
        comp_cs[1]), .QN(n254) );
  DFFRX1 \str_reg[0][5]  ( .D(n1387), .CK(clk), .RN(n1538), .Q(\str[0][5] ) );
  DFFRX1 \str_reg[1][7]  ( .D(n1381), .CK(clk), .RN(n1538), .Q(\str[1][7] ) );
  DFFRX1 \str_reg[1][6]  ( .D(n1380), .CK(clk), .RN(n1538), .Q(\str[1][6] ) );
  DFFRX1 \str_reg[1][5]  ( .D(n1379), .CK(clk), .RN(n1538), .Q(\str[1][5] ) );
  DFFRX1 \str_reg[1][4]  ( .D(n1378), .CK(clk), .RN(n1538), .Q(\str[1][4] ) );
  DFFRX1 \str_reg[1][3]  ( .D(n1377), .CK(clk), .RN(n1538), .Q(\str[1][3] ) );
  DFFRX1 \str_reg[1][2]  ( .D(n1376), .CK(clk), .RN(n1538), .Q(\str[1][2] ) );
  DFFRX1 \str_reg[1][1]  ( .D(n1375), .CK(clk), .RN(n1537), .Q(\str[1][1] ) );
  DFFRX1 \str_reg[1][0]  ( .D(n1374), .CK(clk), .RN(n1537), .Q(\str[1][0] ) );
  DFFRX1 \str_reg[2][7]  ( .D(n1373), .CK(clk), .RN(n1537), .Q(\str[2][7] ) );
  DFFRX1 \str_reg[2][6]  ( .D(n1372), .CK(clk), .RN(n1537), .Q(\str[2][6] ) );
  DFFRX1 \str_reg[2][5]  ( .D(n1371), .CK(clk), .RN(n1537), .Q(\str[2][5] ) );
  DFFRX1 \str_reg[2][4]  ( .D(n1370), .CK(clk), .RN(n1537), .Q(\str[2][4] ) );
  DFFRX1 \str_reg[2][3]  ( .D(n1369), .CK(clk), .RN(n1537), .Q(\str[2][3] ) );
  DFFRX1 \str_reg[2][2]  ( .D(n1368), .CK(clk), .RN(n1537), .Q(\str[2][2] ) );
  DFFRX1 \str_reg[2][1]  ( .D(n1367), .CK(clk), .RN(n1537), .Q(\str[2][1] ) );
  DFFRX1 \str_reg[2][0]  ( .D(n1366), .CK(clk), .RN(n1537), .Q(\str[2][0] ) );
  DFFRX1 \str_reg[3][7]  ( .D(n1365), .CK(clk), .RN(n1537), .Q(\str[3][7] ) );
  DFFRX1 \str_reg[3][6]  ( .D(n1364), .CK(clk), .RN(n1537), .Q(\str[3][6] ) );
  DFFRX1 \str_reg[3][5]  ( .D(n1363), .CK(clk), .RN(n1536), .Q(\str[3][5] ) );
  DFFRX1 \str_reg[3][4]  ( .D(n1362), .CK(clk), .RN(n1536), .Q(\str[3][4] ) );
  DFFRX1 \str_reg[3][3]  ( .D(n1361), .CK(clk), .RN(n1536), .Q(\str[3][3] ) );
  DFFRX1 \str_reg[3][2]  ( .D(n1360), .CK(clk), .RN(n1536), .Q(\str[3][2] ) );
  DFFRX1 \str_reg[3][1]  ( .D(n1359), .CK(clk), .RN(n1536), .Q(\str[3][1] ) );
  DFFRX1 \str_reg[3][0]  ( .D(n1358), .CK(clk), .RN(n1536), .Q(\str[3][0] ) );
  DFFRX1 \str_reg[4][7]  ( .D(n1357), .CK(clk), .RN(n1536), .Q(\str[4][7] ) );
  DFFRX1 \str_reg[4][6]  ( .D(n1356), .CK(clk), .RN(n1536), .Q(\str[4][6] ) );
  DFFRX1 \str_reg[4][5]  ( .D(n1355), .CK(clk), .RN(n1536), .Q(\str[4][5] ) );
  DFFRX1 \str_reg[4][4]  ( .D(n1354), .CK(clk), .RN(n1536), .Q(\str[4][4] ) );
  DFFRX1 \str_reg[4][3]  ( .D(n1353), .CK(clk), .RN(n1536), .Q(\str[4][3] ) );
  DFFRX1 \str_reg[4][2]  ( .D(n1352), .CK(clk), .RN(n1536), .Q(\str[4][2] ) );
  DFFRX1 \str_reg[4][1]  ( .D(n1351), .CK(clk), .RN(n1535), .Q(\str[4][1] ) );
  DFFRX1 \str_reg[4][0]  ( .D(n1350), .CK(clk), .RN(n1535), .Q(\str[4][0] ) );
  DFFRX1 \str_reg[5][7]  ( .D(n1349), .CK(clk), .RN(n1535), .Q(\str[5][7] ) );
  DFFRX1 \str_reg[5][6]  ( .D(n1348), .CK(clk), .RN(n1535), .Q(\str[5][6] ) );
  DFFRX1 \str_reg[5][5]  ( .D(n1347), .CK(clk), .RN(n1535), .Q(\str[5][5] ) );
  DFFRX1 \str_reg[5][4]  ( .D(n1346), .CK(clk), .RN(n1535), .Q(\str[5][4] ) );
  DFFRX1 \str_reg[5][3]  ( .D(n1345), .CK(clk), .RN(n1535), .Q(\str[5][3] ) );
  DFFRX1 \str_reg[5][2]  ( .D(n1344), .CK(clk), .RN(n1535), .Q(\str[5][2] ) );
  DFFRX1 \str_reg[5][1]  ( .D(n1343), .CK(clk), .RN(n1535), .Q(\str[5][1] ) );
  DFFRX1 \str_reg[5][0]  ( .D(n1342), .CK(clk), .RN(n1535), .Q(\str[5][0] ) );
  DFFRX1 \str_reg[6][7]  ( .D(n1341), .CK(clk), .RN(n1535), .Q(\str[6][7] ) );
  DFFRX1 \str_reg[6][6]  ( .D(n1340), .CK(clk), .RN(n1535), .Q(\str[6][6] ) );
  DFFRX1 \str_reg[6][5]  ( .D(n1339), .CK(clk), .RN(n1534), .Q(\str[6][5] ) );
  DFFRX1 \str_reg[6][4]  ( .D(n1338), .CK(clk), .RN(n1534), .Q(\str[6][4] ) );
  DFFRX1 \str_reg[6][3]  ( .D(n1337), .CK(clk), .RN(n1534), .Q(\str[6][3] ) );
  DFFRX1 \str_reg[6][2]  ( .D(n1336), .CK(clk), .RN(n1534), .Q(\str[6][2] ) );
  DFFRX1 \str_reg[6][1]  ( .D(n1335), .CK(clk), .RN(n1534), .Q(\str[6][1] ) );
  DFFRX1 \str_reg[6][0]  ( .D(n1334), .CK(clk), .RN(n1534), .Q(\str[6][0] ) );
  DFFRX1 \str_reg[7][7]  ( .D(n1333), .CK(clk), .RN(n1534), .Q(\str[7][7] ) );
  DFFRX1 \str_reg[7][6]  ( .D(n1332), .CK(clk), .RN(n1534), .Q(\str[7][6] ) );
  DFFRX1 \str_reg[7][5]  ( .D(n1331), .CK(clk), .RN(n1534), .Q(\str[7][5] ) );
  DFFRX1 \str_reg[7][4]  ( .D(n1330), .CK(clk), .RN(n1534), .Q(\str[7][4] ) );
  DFFRX1 \str_reg[7][3]  ( .D(n1329), .CK(clk), .RN(n1534), .Q(\str[7][3] ) );
  DFFRX1 \str_reg[7][2]  ( .D(n1328), .CK(clk), .RN(n1534), .Q(\str[7][2] ) );
  DFFRX1 \str_reg[7][1]  ( .D(n1327), .CK(clk), .RN(n1533), .Q(\str[7][1] ) );
  DFFRX1 \str_reg[7][0]  ( .D(n1326), .CK(clk), .RN(n1533), .Q(\str[7][0] ) );
  DFFRX1 \str_reg[8][7]  ( .D(n1325), .CK(clk), .RN(n1533), .Q(\str[8][7] ) );
  DFFRX1 \str_reg[8][6]  ( .D(n1324), .CK(clk), .RN(n1533), .Q(\str[8][6] ) );
  DFFRX1 \str_reg[8][5]  ( .D(n1323), .CK(clk), .RN(n1533), .Q(\str[8][5] ) );
  DFFRX1 \str_reg[8][4]  ( .D(n1322), .CK(clk), .RN(n1533), .Q(\str[8][4] ) );
  DFFRX1 \str_reg[8][3]  ( .D(n1321), .CK(clk), .RN(n1533), .Q(\str[8][3] ) );
  DFFRX1 \str_reg[8][2]  ( .D(n1320), .CK(clk), .RN(n1533), .Q(\str[8][2] ) );
  DFFRX1 \str_reg[8][1]  ( .D(n1319), .CK(clk), .RN(n1533), .Q(\str[8][1] ) );
  DFFRX1 \str_reg[8][0]  ( .D(n1318), .CK(clk), .RN(n1533), .Q(\str[8][0] ) );
  DFFRX1 \str_reg[9][7]  ( .D(n1317), .CK(clk), .RN(n1533), .Q(\str[9][7] ) );
  DFFRX1 \str_reg[9][6]  ( .D(n1316), .CK(clk), .RN(n1533), .Q(\str[9][6] ) );
  DFFRX1 \str_reg[9][5]  ( .D(n1315), .CK(clk), .RN(n1532), .Q(\str[9][5] ) );
  DFFRX1 \str_reg[9][4]  ( .D(n1314), .CK(clk), .RN(n1532), .Q(\str[9][4] ) );
  DFFRX1 \str_reg[9][3]  ( .D(n1313), .CK(clk), .RN(n1532), .Q(\str[9][3] ) );
  DFFRX1 \str_reg[9][2]  ( .D(n1312), .CK(clk), .RN(n1532), .Q(\str[9][2] ) );
  DFFRX1 \str_reg[9][1]  ( .D(n1311), .CK(clk), .RN(n1532), .Q(\str[9][1] ) );
  DFFRX1 \str_reg[9][0]  ( .D(n1310), .CK(clk), .RN(n1532), .Q(\str[9][0] ) );
  DFFRX1 \str_reg[10][7]  ( .D(n1309), .CK(clk), .RN(n1532), .Q(\str[10][7] )
         );
  DFFRX1 \str_reg[10][6]  ( .D(n1308), .CK(clk), .RN(n1532), .Q(\str[10][6] )
         );
  DFFRX1 \str_reg[10][5]  ( .D(n1307), .CK(clk), .RN(n1532), .Q(\str[10][5] )
         );
  DFFRX1 \str_reg[10][4]  ( .D(n1306), .CK(clk), .RN(n1532), .Q(\str[10][4] )
         );
  DFFRX1 \str_reg[10][3]  ( .D(n1305), .CK(clk), .RN(n1532), .Q(\str[10][3] )
         );
  DFFRX1 \str_reg[10][2]  ( .D(n1304), .CK(clk), .RN(n1532), .Q(\str[10][2] )
         );
  DFFRX1 \str_reg[10][1]  ( .D(n1303), .CK(clk), .RN(n1531), .Q(\str[10][1] )
         );
  DFFRX1 \str_reg[10][0]  ( .D(n1302), .CK(clk), .RN(n1531), .Q(\str[10][0] )
         );
  DFFRX1 \str_reg[11][7]  ( .D(n1301), .CK(clk), .RN(n1531), .Q(\str[11][7] )
         );
  DFFRX1 \str_reg[11][6]  ( .D(n1300), .CK(clk), .RN(n1531), .Q(\str[11][6] )
         );
  DFFRX1 \str_reg[11][5]  ( .D(n1299), .CK(clk), .RN(n1531), .Q(\str[11][5] )
         );
  DFFRX1 \str_reg[11][4]  ( .D(n1298), .CK(clk), .RN(n1531), .Q(\str[11][4] )
         );
  DFFRX1 \str_reg[11][3]  ( .D(n1297), .CK(clk), .RN(n1531), .Q(\str[11][3] )
         );
  DFFRX1 \str_reg[11][2]  ( .D(n1296), .CK(clk), .RN(n1531), .Q(\str[11][2] )
         );
  DFFRX1 \str_reg[11][1]  ( .D(n1295), .CK(clk), .RN(n1531), .Q(\str[11][1] )
         );
  DFFRX1 \str_reg[11][0]  ( .D(n1294), .CK(clk), .RN(n1531), .Q(\str[11][0] )
         );
  DFFRX1 \str_reg[12][7]  ( .D(n1293), .CK(clk), .RN(n1531), .Q(\str[12][7] )
         );
  DFFRX1 \str_reg[12][6]  ( .D(n1292), .CK(clk), .RN(n1531), .Q(\str[12][6] )
         );
  DFFRX1 \str_reg[12][5]  ( .D(n1291), .CK(clk), .RN(n1530), .Q(\str[12][5] )
         );
  DFFRX1 \str_reg[12][4]  ( .D(n1290), .CK(clk), .RN(n1530), .Q(\str[12][4] )
         );
  DFFRX1 \str_reg[12][3]  ( .D(n1289), .CK(clk), .RN(n1530), .Q(\str[12][3] )
         );
  DFFRX1 \str_reg[12][2]  ( .D(n1288), .CK(clk), .RN(n1530), .Q(\str[12][2] )
         );
  DFFRX1 \str_reg[12][1]  ( .D(n1287), .CK(clk), .RN(n1530), .Q(\str[12][1] )
         );
  DFFRX1 \str_reg[12][0]  ( .D(n1286), .CK(clk), .RN(n1530), .Q(\str[12][0] )
         );
  DFFRX1 \str_reg[13][7]  ( .D(n1285), .CK(clk), .RN(n1530), .Q(\str[13][7] )
         );
  DFFRX1 \str_reg[13][6]  ( .D(n1284), .CK(clk), .RN(n1530), .Q(\str[13][6] )
         );
  DFFRX1 \str_reg[13][5]  ( .D(n1283), .CK(clk), .RN(n1530), .Q(\str[13][5] )
         );
  DFFRX1 \str_reg[13][4]  ( .D(n1282), .CK(clk), .RN(n1530), .Q(\str[13][4] )
         );
  DFFRX1 \str_reg[13][3]  ( .D(n1281), .CK(clk), .RN(n1530), .Q(\str[13][3] )
         );
  DFFRX1 \str_reg[13][2]  ( .D(n1280), .CK(clk), .RN(n1530), .Q(\str[13][2] )
         );
  DFFRX1 \str_reg[13][1]  ( .D(n1279), .CK(clk), .RN(n1529), .Q(\str[13][1] )
         );
  DFFRX1 \str_reg[13][0]  ( .D(n1278), .CK(clk), .RN(n1529), .Q(\str[13][0] )
         );
  DFFRX1 \str_reg[14][7]  ( .D(n1277), .CK(clk), .RN(n1529), .Q(\str[14][7] )
         );
  DFFRX1 \str_reg[14][6]  ( .D(n1276), .CK(clk), .RN(n1529), .Q(\str[14][6] )
         );
  DFFRX1 \str_reg[14][5]  ( .D(n1275), .CK(clk), .RN(n1529), .Q(\str[14][5] )
         );
  DFFRX1 \str_reg[14][4]  ( .D(n1274), .CK(clk), .RN(n1529), .Q(\str[14][4] )
         );
  DFFRX1 \str_reg[14][3]  ( .D(n1273), .CK(clk), .RN(n1529), .Q(\str[14][3] )
         );
  DFFRX1 \str_reg[14][2]  ( .D(n1272), .CK(clk), .RN(n1529), .Q(\str[14][2] )
         );
  DFFRX1 \str_reg[14][1]  ( .D(n1271), .CK(clk), .RN(n1529), .Q(\str[14][1] )
         );
  DFFRX1 \str_reg[14][0]  ( .D(n1270), .CK(clk), .RN(n1529), .Q(\str[14][0] )
         );
  DFFRX1 \str_reg[15][7]  ( .D(n1269), .CK(clk), .RN(n1529), .Q(\str[15][7] )
         );
  DFFRX1 \str_reg[15][6]  ( .D(n1268), .CK(clk), .RN(n1529), .Q(\str[15][6] )
         );
  DFFRX1 \str_reg[15][5]  ( .D(n1267), .CK(clk), .RN(n1528), .Q(\str[15][5] )
         );
  DFFRX1 \str_reg[15][4]  ( .D(n1266), .CK(clk), .RN(n1528), .Q(\str[15][4] )
         );
  DFFRX1 \str_reg[15][3]  ( .D(n1265), .CK(clk), .RN(n1528), .Q(\str[15][3] )
         );
  DFFRX1 \str_reg[15][2]  ( .D(n1264), .CK(clk), .RN(n1528), .Q(\str[15][2] )
         );
  DFFRX1 \str_reg[15][1]  ( .D(n1263), .CK(clk), .RN(n1528), .Q(\str[15][1] )
         );
  DFFRX1 \str_reg[15][0]  ( .D(n1262), .CK(clk), .RN(n1528), .Q(\str[15][0] )
         );
  DFFRX1 \str_reg[16][7]  ( .D(n1261), .CK(clk), .RN(n1528), .Q(\str[16][7] )
         );
  DFFRX1 \str_reg[16][6]  ( .D(n1260), .CK(clk), .RN(n1528), .Q(\str[16][6] )
         );
  DFFRX1 \str_reg[16][5]  ( .D(n1259), .CK(clk), .RN(n1528), .Q(\str[16][5] )
         );
  DFFRX1 \str_reg[16][4]  ( .D(n1258), .CK(clk), .RN(n1528), .Q(\str[16][4] )
         );
  DFFRX1 \str_reg[16][3]  ( .D(n1257), .CK(clk), .RN(n1528), .Q(\str[16][3] )
         );
  DFFRX1 \str_reg[16][2]  ( .D(n1256), .CK(clk), .RN(n1528), .Q(\str[16][2] )
         );
  DFFRX1 \str_reg[16][1]  ( .D(n1255), .CK(clk), .RN(n1527), .Q(\str[16][1] )
         );
  DFFRX1 \str_reg[16][0]  ( .D(n1254), .CK(clk), .RN(n1527), .Q(\str[16][0] )
         );
  DFFRX1 \str_reg[17][7]  ( .D(n1253), .CK(clk), .RN(n1527), .Q(\str[17][7] )
         );
  DFFRX1 \str_reg[17][6]  ( .D(n1252), .CK(clk), .RN(n1527), .Q(\str[17][6] )
         );
  DFFRX1 \str_reg[17][5]  ( .D(n1251), .CK(clk), .RN(n1527), .Q(\str[17][5] )
         );
  DFFRX1 \str_reg[17][4]  ( .D(n1250), .CK(clk), .RN(n1527), .Q(\str[17][4] )
         );
  DFFRX1 \str_reg[17][3]  ( .D(n1249), .CK(clk), .RN(n1527), .Q(\str[17][3] )
         );
  DFFRX1 \str_reg[17][2]  ( .D(n1248), .CK(clk), .RN(n1527), .Q(\str[17][2] )
         );
  DFFRX1 \str_reg[17][1]  ( .D(n1247), .CK(clk), .RN(n1527), .Q(\str[17][1] )
         );
  DFFRX1 \str_reg[17][0]  ( .D(n1246), .CK(clk), .RN(n1527), .Q(\str[17][0] )
         );
  DFFRX1 \str_reg[18][7]  ( .D(n1245), .CK(clk), .RN(n1527), .Q(\str[18][7] )
         );
  DFFRX1 \str_reg[18][6]  ( .D(n1244), .CK(clk), .RN(n1527), .Q(\str[18][6] )
         );
  DFFRX1 \str_reg[18][5]  ( .D(n1243), .CK(clk), .RN(n1526), .Q(\str[18][5] )
         );
  DFFRX1 \str_reg[18][4]  ( .D(n1242), .CK(clk), .RN(n1526), .Q(\str[18][4] )
         );
  DFFRX1 \str_reg[18][3]  ( .D(n1241), .CK(clk), .RN(n1526), .Q(\str[18][3] )
         );
  DFFRX1 \str_reg[18][2]  ( .D(n1240), .CK(clk), .RN(n1526), .Q(\str[18][2] )
         );
  DFFRX1 \str_reg[18][1]  ( .D(n1239), .CK(clk), .RN(n1526), .Q(\str[18][1] )
         );
  DFFRX1 \str_reg[18][0]  ( .D(n1238), .CK(clk), .RN(n1526), .Q(\str[18][0] )
         );
  DFFRX1 \str_reg[19][7]  ( .D(n1237), .CK(clk), .RN(n1526), .Q(\str[19][7] )
         );
  DFFRX1 \str_reg[19][6]  ( .D(n1236), .CK(clk), .RN(n1526), .Q(\str[19][6] )
         );
  DFFRX1 \str_reg[19][5]  ( .D(n1235), .CK(clk), .RN(n1526), .Q(\str[19][5] )
         );
  DFFRX1 \str_reg[19][4]  ( .D(n1234), .CK(clk), .RN(n1526), .Q(\str[19][4] )
         );
  DFFRX1 \str_reg[19][3]  ( .D(n1233), .CK(clk), .RN(n1526), .Q(\str[19][3] )
         );
  DFFRX1 \str_reg[19][2]  ( .D(n1232), .CK(clk), .RN(n1526), .Q(\str[19][2] )
         );
  DFFRX1 \str_reg[19][1]  ( .D(n1231), .CK(clk), .RN(n1525), .Q(\str[19][1] )
         );
  DFFRX1 \str_reg[19][0]  ( .D(n1230), .CK(clk), .RN(n1525), .Q(\str[19][0] )
         );
  DFFRX1 \str_reg[20][7]  ( .D(n1229), .CK(clk), .RN(n1525), .Q(\str[20][7] )
         );
  DFFRX1 \str_reg[20][6]  ( .D(n1228), .CK(clk), .RN(n1525), .Q(\str[20][6] )
         );
  DFFRX1 \str_reg[20][5]  ( .D(n1227), .CK(clk), .RN(n1525), .Q(\str[20][5] )
         );
  DFFRX1 \str_reg[20][4]  ( .D(n1226), .CK(clk), .RN(n1525), .Q(\str[20][4] )
         );
  DFFRX1 \str_reg[20][3]  ( .D(n1225), .CK(clk), .RN(n1525), .Q(\str[20][3] )
         );
  DFFRX1 \str_reg[20][2]  ( .D(n1224), .CK(clk), .RN(n1525), .Q(\str[20][2] )
         );
  DFFRX1 \str_reg[20][1]  ( .D(n1223), .CK(clk), .RN(n1525), .Q(\str[20][1] )
         );
  DFFRX1 \str_reg[20][0]  ( .D(n1222), .CK(clk), .RN(n1525), .Q(\str[20][0] )
         );
  DFFRX1 \str_reg[21][7]  ( .D(n1221), .CK(clk), .RN(n1525), .Q(\str[21][7] )
         );
  DFFRX1 \str_reg[21][6]  ( .D(n1220), .CK(clk), .RN(n1525), .Q(\str[21][6] )
         );
  DFFRX1 \str_reg[21][5]  ( .D(n1219), .CK(clk), .RN(n1524), .Q(\str[21][5] )
         );
  DFFRX1 \str_reg[21][4]  ( .D(n1218), .CK(clk), .RN(n1524), .Q(\str[21][4] )
         );
  DFFRX1 \str_reg[21][3]  ( .D(n1217), .CK(clk), .RN(n1524), .Q(\str[21][3] )
         );
  DFFRX1 \str_reg[21][2]  ( .D(n1216), .CK(clk), .RN(n1524), .Q(\str[21][2] )
         );
  DFFRX1 \str_reg[21][1]  ( .D(n1215), .CK(clk), .RN(n1524), .Q(\str[21][1] )
         );
  DFFRX1 \str_reg[21][0]  ( .D(n1214), .CK(clk), .RN(n1524), .Q(\str[21][0] )
         );
  DFFRX1 \str_reg[22][7]  ( .D(n1213), .CK(clk), .RN(n1524), .Q(\str[22][7] )
         );
  DFFRX1 \str_reg[22][6]  ( .D(n1212), .CK(clk), .RN(n1524), .Q(\str[22][6] )
         );
  DFFRX1 \str_reg[22][5]  ( .D(n1211), .CK(clk), .RN(n1524), .Q(\str[22][5] )
         );
  DFFRX1 \str_reg[22][4]  ( .D(n1210), .CK(clk), .RN(n1524), .Q(\str[22][4] )
         );
  DFFRX1 \str_reg[22][3]  ( .D(n1209), .CK(clk), .RN(n1524), .Q(\str[22][3] )
         );
  DFFRX1 \str_reg[22][2]  ( .D(n1208), .CK(clk), .RN(n1524), .Q(\str[22][2] )
         );
  DFFRX1 \str_reg[22][1]  ( .D(n1207), .CK(clk), .RN(n1523), .Q(\str[22][1] )
         );
  DFFRX1 \str_reg[22][0]  ( .D(n1206), .CK(clk), .RN(n1523), .Q(\str[22][0] )
         );
  DFFRX1 \str_reg[23][7]  ( .D(n1205), .CK(clk), .RN(n1523), .Q(\str[23][7] )
         );
  DFFRX1 \str_reg[23][6]  ( .D(n1204), .CK(clk), .RN(n1523), .Q(\str[23][6] )
         );
  DFFRX1 \str_reg[23][5]  ( .D(n1203), .CK(clk), .RN(n1523), .Q(\str[23][5] )
         );
  DFFRX1 \str_reg[23][4]  ( .D(n1202), .CK(clk), .RN(n1523), .Q(\str[23][4] )
         );
  DFFRX1 \str_reg[23][3]  ( .D(n1201), .CK(clk), .RN(n1523), .Q(\str[23][3] )
         );
  DFFRX1 \str_reg[23][2]  ( .D(n1200), .CK(clk), .RN(n1523), .Q(\str[23][2] )
         );
  DFFRX1 \str_reg[23][1]  ( .D(n1199), .CK(clk), .RN(n1523), .Q(\str[23][1] )
         );
  DFFRX1 \str_reg[23][0]  ( .D(n1198), .CK(clk), .RN(n1523), .Q(\str[23][0] )
         );
  DFFRX1 \str_reg[24][7]  ( .D(n1197), .CK(clk), .RN(n1523), .Q(\str[24][7] )
         );
  DFFRX1 \str_reg[24][6]  ( .D(n1196), .CK(clk), .RN(n1523), .Q(\str[24][6] )
         );
  DFFRX1 \str_reg[24][5]  ( .D(n1195), .CK(clk), .RN(n1522), .Q(\str[24][5] )
         );
  DFFRX1 \str_reg[24][4]  ( .D(n1194), .CK(clk), .RN(n1522), .Q(\str[24][4] )
         );
  DFFRX1 \str_reg[24][3]  ( .D(n1193), .CK(clk), .RN(n1522), .Q(\str[24][3] )
         );
  DFFRX1 \str_reg[24][2]  ( .D(n1192), .CK(clk), .RN(n1522), .Q(\str[24][2] )
         );
  DFFRX1 \str_reg[24][1]  ( .D(n1191), .CK(clk), .RN(n1522), .Q(\str[24][1] )
         );
  DFFRX1 \str_reg[24][0]  ( .D(n1190), .CK(clk), .RN(n1522), .Q(\str[24][0] )
         );
  DFFRX1 \str_reg[25][7]  ( .D(n1189), .CK(clk), .RN(n1522), .Q(\str[25][7] )
         );
  DFFRX1 \str_reg[25][6]  ( .D(n1188), .CK(clk), .RN(n1522), .Q(\str[25][6] )
         );
  DFFRX1 \str_reg[25][5]  ( .D(n1187), .CK(clk), .RN(n1522), .Q(\str[25][5] )
         );
  DFFRX1 \str_reg[25][4]  ( .D(n1186), .CK(clk), .RN(n1522), .Q(\str[25][4] )
         );
  DFFRX1 \str_reg[25][3]  ( .D(n1185), .CK(clk), .RN(n1522), .Q(\str[25][3] )
         );
  DFFRX1 \str_reg[25][2]  ( .D(n1184), .CK(clk), .RN(n1522), .Q(\str[25][2] )
         );
  DFFRX1 \str_reg[25][1]  ( .D(n1183), .CK(clk), .RN(n1521), .Q(\str[25][1] )
         );
  DFFRX1 \str_reg[25][0]  ( .D(n1182), .CK(clk), .RN(n1521), .Q(\str[25][0] )
         );
  DFFRX1 \str_reg[26][7]  ( .D(n1181), .CK(clk), .RN(n1521), .Q(\str[26][7] )
         );
  DFFRX1 \str_reg[26][6]  ( .D(n1180), .CK(clk), .RN(n1521), .Q(\str[26][6] )
         );
  DFFRX1 \str_reg[26][5]  ( .D(n1179), .CK(clk), .RN(n1521), .Q(\str[26][5] )
         );
  DFFRX1 \str_reg[26][4]  ( .D(n1178), .CK(clk), .RN(n1521), .Q(\str[26][4] )
         );
  DFFRX1 \str_reg[26][3]  ( .D(n1177), .CK(clk), .RN(n1521), .Q(\str[26][3] )
         );
  DFFRX1 \str_reg[26][2]  ( .D(n1176), .CK(clk), .RN(n1521), .Q(\str[26][2] )
         );
  DFFRX1 \str_reg[26][1]  ( .D(n1175), .CK(clk), .RN(n1521), .Q(\str[26][1] )
         );
  DFFRX1 \str_reg[26][0]  ( .D(n1174), .CK(clk), .RN(n1521), .Q(\str[26][0] )
         );
  DFFRX1 \str_reg[27][7]  ( .D(n1173), .CK(clk), .RN(n1521), .Q(\str[27][7] )
         );
  DFFRX1 \str_reg[27][6]  ( .D(n1172), .CK(clk), .RN(n1521), .Q(\str[27][6] )
         );
  DFFRX1 \str_reg[27][5]  ( .D(n1171), .CK(clk), .RN(n1520), .Q(\str[27][5] )
         );
  DFFRX1 \str_reg[27][4]  ( .D(n1170), .CK(clk), .RN(n1520), .Q(\str[27][4] )
         );
  DFFRX1 \str_reg[27][3]  ( .D(n1169), .CK(clk), .RN(n1520), .Q(\str[27][3] )
         );
  DFFRX1 \str_reg[27][2]  ( .D(n1168), .CK(clk), .RN(n1520), .Q(\str[27][2] )
         );
  DFFRX1 \str_reg[27][1]  ( .D(n1167), .CK(clk), .RN(n1520), .Q(\str[27][1] )
         );
  DFFRX1 \str_reg[27][0]  ( .D(n1166), .CK(clk), .RN(n1520), .Q(\str[27][0] )
         );
  DFFRX1 \str_reg[28][7]  ( .D(n1165), .CK(clk), .RN(n1520), .Q(\str[28][7] )
         );
  DFFRX1 \str_reg[28][6]  ( .D(n1164), .CK(clk), .RN(n1520), .Q(\str[28][6] )
         );
  DFFRX1 \str_reg[28][5]  ( .D(n1163), .CK(clk), .RN(n1520), .Q(\str[28][5] )
         );
  DFFRX1 \str_reg[28][4]  ( .D(n1162), .CK(clk), .RN(n1520), .Q(\str[28][4] )
         );
  DFFRX1 \str_reg[28][3]  ( .D(n1161), .CK(clk), .RN(n1520), .Q(\str[28][3] )
         );
  DFFRX1 \str_reg[28][2]  ( .D(n1160), .CK(clk), .RN(n1520), .Q(\str[28][2] )
         );
  DFFRX1 \str_reg[28][1]  ( .D(n1159), .CK(clk), .RN(n1519), .Q(\str[28][1] )
         );
  DFFRX1 \str_reg[28][0]  ( .D(n1158), .CK(clk), .RN(n1519), .Q(\str[28][0] )
         );
  DFFRX1 \str_reg[29][7]  ( .D(n1157), .CK(clk), .RN(n1519), .Q(\str[29][7] )
         );
  DFFRX1 \str_reg[29][6]  ( .D(n1156), .CK(clk), .RN(n1519), .Q(\str[29][6] )
         );
  DFFRX1 \str_reg[29][5]  ( .D(n1155), .CK(clk), .RN(n1519), .Q(\str[29][5] )
         );
  DFFRX1 \str_reg[29][4]  ( .D(n1154), .CK(clk), .RN(n1519), .Q(\str[29][4] )
         );
  DFFRX1 \str_reg[29][3]  ( .D(n1153), .CK(clk), .RN(n1519), .Q(\str[29][3] )
         );
  DFFRX1 \str_reg[29][2]  ( .D(n1152), .CK(clk), .RN(n1519), .Q(\str[29][2] )
         );
  DFFRX1 \str_reg[29][1]  ( .D(n1151), .CK(clk), .RN(n1519), .Q(\str[29][1] )
         );
  DFFRX1 \str_reg[29][0]  ( .D(n1150), .CK(clk), .RN(n1519), .Q(\str[29][0] )
         );
  DFFRX1 \str_reg[30][7]  ( .D(n1149), .CK(clk), .RN(n1519), .Q(\str[30][7] )
         );
  DFFRX1 \str_reg[30][6]  ( .D(n1148), .CK(clk), .RN(n1519), .Q(\str[30][6] )
         );
  DFFRX1 \str_reg[30][5]  ( .D(n1147), .CK(clk), .RN(n1518), .Q(\str[30][5] )
         );
  DFFRX1 \str_reg[30][4]  ( .D(n1146), .CK(clk), .RN(n1518), .Q(\str[30][4] )
         );
  DFFRX1 \str_reg[30][3]  ( .D(n1145), .CK(clk), .RN(n1518), .Q(\str[30][3] )
         );
  DFFRX1 \str_reg[30][2]  ( .D(n1144), .CK(clk), .RN(n1518), .Q(\str[30][2] )
         );
  DFFRX1 \str_reg[30][1]  ( .D(n1143), .CK(clk), .RN(n1518), .Q(\str[30][1] )
         );
  DFFRX1 \str_reg[30][0]  ( .D(n1142), .CK(clk), .RN(n1518), .Q(\str[30][0] )
         );
  DFFRX1 \str_reg[31][7]  ( .D(n1141), .CK(clk), .RN(n1518), .Q(\str[31][7] )
         );
  DFFRX1 \str_reg[31][6]  ( .D(n1140), .CK(clk), .RN(n1518), .Q(\str[31][6] )
         );
  DFFRX1 \str_reg[31][5]  ( .D(n1139), .CK(clk), .RN(n1518), .Q(\str[31][5] )
         );
  DFFRX1 \str_reg[31][4]  ( .D(n1138), .CK(clk), .RN(n1518), .Q(\str[31][4] )
         );
  DFFRX1 \str_reg[31][3]  ( .D(n1137), .CK(clk), .RN(n1518), .Q(\str[31][3] )
         );
  DFFRX1 \str_reg[31][2]  ( .D(n1136), .CK(clk), .RN(n1518), .Q(\str[31][2] )
         );
  DFFRX1 \str_reg[31][1]  ( .D(n1135), .CK(clk), .RN(n1517), .Q(\str[31][1] )
         );
  DFFRX1 \str_reg[31][0]  ( .D(n1134), .CK(clk), .RN(n1517), .Q(\str[31][0] )
         );
  DFFRX1 \str_reg[0][6]  ( .D(n1388), .CK(clk), .RN(n1539), .Q(\str[0][6] ) );
  DFFRX1 \str_reg[0][4]  ( .D(n1386), .CK(clk), .RN(n1538), .Q(\str[0][4] ) );
  DFFRX1 \str_reg[0][7]  ( .D(n1389), .CK(clk), .RN(n1539), .Q(\str[0][7] ) );
  DFFRX1 \str_reg[0][3]  ( .D(n1385), .CK(clk), .RN(n1538), .Q(\str[0][3] ) );
  DFFRX1 \str_reg[0][2]  ( .D(n1384), .CK(clk), .RN(n1538), .Q(\str[0][2] ) );
  DFFRX1 \str_reg[0][1]  ( .D(n1383), .CK(clk), .RN(n1538), .Q(\str[0][1] ) );
  DFFRX1 \str_reg[0][0]  ( .D(n1382), .CK(clk), .RN(n1538), .Q(\str[0][0] ) );
  DFFRX1 pat_behind_reg ( .D(n1102), .CK(clk), .RN(n1515), .Q(pat_behind) );
  DFFRX1 pat_front_reg ( .D(n1101), .CK(clk), .RN(n1515), .Q(pat_front) );
  DFFRX1 \str_space_reg[16]  ( .D(n1118), .CK(clk), .RN(n1516), .Q(
        str_space[16]), .QN(n270) );
  DFFRX1 \str_space_reg[17]  ( .D(n1117), .CK(clk), .RN(n1516), .Q(
        str_space[17]), .QN(n271) );
  DFFRX1 \str_space_reg[18]  ( .D(n1116), .CK(clk), .RN(n1516), .Q(
        str_space[18]), .QN(n272) );
  DFFRX1 \str_space_reg[19]  ( .D(n1115), .CK(clk), .RN(n1516), .Q(
        str_space[19]), .QN(n273) );
  DFFRX1 \str_space_reg[20]  ( .D(n1114), .CK(clk), .RN(n1516), .Q(
        str_space[20]), .QN(n274) );
  DFFRX1 \str_space_reg[21]  ( .D(n1113), .CK(clk), .RN(n1516), .Q(
        str_space[21]), .QN(n275) );
  DFFRX1 \str_space_reg[22]  ( .D(n1112), .CK(clk), .RN(n1516), .Q(
        str_space[22]), .QN(n276) );
  DFFRX1 \str_space_reg[23]  ( .D(n1111), .CK(clk), .RN(n1515), .Q(
        str_space[23]), .QN(n277) );
  DFFRX1 \str_space_reg[24]  ( .D(n1110), .CK(clk), .RN(n1515), .Q(
        str_space[24]), .QN(n278) );
  DFFRX1 \str_space_reg[25]  ( .D(n1109), .CK(clk), .RN(n1515), .Q(
        str_space[25]), .QN(n279) );
  DFFRX1 \str_space_reg[26]  ( .D(n1108), .CK(clk), .RN(n1515), .Q(
        str_space[26]), .QN(n280) );
  DFFRX1 \str_space_reg[27]  ( .D(n1107), .CK(clk), .RN(n1515), .Q(
        str_space[27]), .QN(n281) );
  DFFRX1 \str_space_reg[28]  ( .D(n1106), .CK(clk), .RN(n1515), .Q(
        str_space[28]), .QN(n282) );
  DFFRX1 \str_space_reg[29]  ( .D(n1105), .CK(clk), .RN(n1515), .Q(
        str_space[29]), .QN(n283) );
  DFFRX1 \str_space_reg[1]  ( .D(n1133), .CK(clk), .RN(n1517), .Q(str_space[1]) );
  DFFRX1 \compare_table_reg[31]  ( .D(n1100), .CK(clk), .RN(n1512), .Q(
        compare_table[31]), .QN(n319) );
  DFFRX1 \compare_table_reg[30]  ( .D(n1099), .CK(clk), .RN(n1512), .Q(
        compare_table[30]), .QN(n318) );
  DFFRX1 \compare_table_reg[24]  ( .D(n1093), .CK(clk), .RN(n1513), .Q(
        compare_table[24]), .QN(n312) );
  DFFRX1 \compare_table_reg[28]  ( .D(n1097), .CK(clk), .RN(n1512), .Q(
        compare_table[28]), .QN(n316) );
  DFFRX1 \compare_table_reg[29]  ( .D(n1098), .CK(clk), .RN(n1512), .Q(
        compare_table[29]), .QN(n317) );
  DFFRX1 \compare_table_reg[23]  ( .D(n1092), .CK(clk), .RN(n1513), .Q(
        compare_table[23]), .QN(n311) );
  DFFRX1 \pat_addr_reg[2]  ( .D(nx_pat_addr[2]), .CK(clk), .RN(n1540), .Q(
        pat_addr[2]), .QN(n244) );
  DFFRX1 \compare_table_reg[18]  ( .D(n1087), .CK(clk), .RN(n1513), .Q(
        compare_table[18]), .QN(n306) );
  DFFRX1 \compare_table_reg[22]  ( .D(n1091), .CK(clk), .RN(n1513), .Q(
        compare_table[22]), .QN(n310) );
  DFFRX1 \compare_table_reg[26]  ( .D(n1095), .CK(clk), .RN(n1512), .Q(
        compare_table[26]), .QN(n314) );
  DFFRX1 \compare_table_reg[27]  ( .D(n1096), .CK(clk), .RN(n1512), .Q(
        compare_table[27]), .QN(n315) );
  DFFRX1 \pat_addr_reg[0]  ( .D(nx_pat_addr[0]), .CK(clk), .RN(n1539), .Q(
        pat_addr[0]), .QN(n246) );
  DFFRX1 \compare_table_reg[16]  ( .D(n1085), .CK(clk), .RN(n1513), .Q(
        compare_table[16]), .QN(n304) );
  DFFRX1 \compare_table_reg[15]  ( .D(n1084), .CK(clk), .RN(n1513), .Q(
        compare_table[15]), .QN(n303) );
  DFFRX1 \compare_table_reg[21]  ( .D(n1090), .CK(clk), .RN(n1513), .Q(
        compare_table[21]), .QN(n309) );
  DFFRX1 \compare_table_reg[25]  ( .D(n1094), .CK(clk), .RN(n1512), .Q(
        compare_table[25]), .QN(n313) );
  DFFRX1 \compare_table_reg[17]  ( .D(n1086), .CK(clk), .RN(n1513), .Q(
        compare_table[17]), .QN(n305) );
  DFFRX1 \compare_table_reg[20]  ( .D(n1089), .CK(clk), .RN(n1513), .Q(
        compare_table[20]), .QN(n308) );
  DFFRX1 \compare_table_reg[11]  ( .D(n1080), .CK(clk), .RN(n1514), .Q(
        compare_table[11]), .QN(n299) );
  DFFRX1 \compare_table_reg[9]  ( .D(n1078), .CK(clk), .RN(n1514), .Q(
        compare_table[9]), .QN(n297) );
  DFFRX1 \compare_table_reg[14]  ( .D(n1083), .CK(clk), .RN(n1513), .Q(
        compare_table[14]), .QN(n302) );
  DFFRX1 \compare_table_reg[10]  ( .D(n1079), .CK(clk), .RN(n1514), .Q(
        compare_table[10]), .QN(n298) );
  DFFRX1 \compare_table_reg[6]  ( .D(n1075), .CK(clk), .RN(n1514), .Q(
        compare_table[6]), .QN(n294) );
  DFFRX1 \compare_table_reg[5]  ( .D(n1074), .CK(clk), .RN(n1514), .Q(
        compare_table[5]), .QN(n293) );
  DFFRX1 \compare_table_reg[1]  ( .D(n1070), .CK(clk), .RN(n1514), .Q(
        compare_table[1]), .QN(n289) );
  DFFRX1 \compare_table_reg[4]  ( .D(n1073), .CK(clk), .RN(n1514), .Q(
        compare_table[4]), .QN(n292) );
  DFFRX1 \compare_table_reg[2]  ( .D(n1071), .CK(clk), .RN(n1514), .Q(
        compare_table[2]), .QN(n290) );
  DFFRX1 \compare_table_reg[3]  ( .D(n1072), .CK(clk), .RN(n1514), .Q(
        compare_table[3]), .QN(n291) );
  DFFRX1 \compare_table_reg[0]  ( .D(n1069), .CK(clk), .RN(n1515), .Q(
        compare_table[0]), .QN(n286) );
  DFFRX1 \comp_cs_reg[0]  ( .D(comp_ns[0]), .CK(clk), .RN(n1512), .Q(
        comp_cs[0]), .QN(n255) );
  DFFRX1 \pat_addr_reg[1]  ( .D(nx_pat_addr[1]), .CK(clk), .RN(n1539), .Q(
        pat_addr[1]), .QN(n245) );
  DFFRX1 \compare_table_reg[19]  ( .D(n1088), .CK(clk), .RN(n1513), .Q(
        compare_table[19]), .QN(n307) );
  DFFRX1 \compare_table_reg[12]  ( .D(n1081), .CK(clk), .RN(n1514), .Q(
        compare_table[12]), .QN(n300) );
  DFFRX1 \compare_table_reg[7]  ( .D(n1076), .CK(clk), .RN(n1514), .Q(
        compare_table[7]), .QN(n295) );
  DFFRX1 \compare_table_reg[8]  ( .D(n1077), .CK(clk), .RN(n1514), .Q(
        compare_table[8]), .QN(n296) );
  DFFRX1 \compare_table_reg[13]  ( .D(n1082), .CK(clk), .RN(n1513), .Q(
        compare_table[13]), .QN(n301) );
  DFFRX1 \cs_reg[1]  ( .D(ns[1]), .CK(clk), .RN(n1539), .Q(cs[1]), .QN(n1620)
         );
  DFFRX1 \str_addr_reg[4]  ( .D(nx_str_addr[4]), .CK(clk), .RN(n1540), .Q(N91), 
        .QN(n1474) );
  DFFRX1 \str_addr_reg[3]  ( .D(nx_str_addr[3]), .CK(clk), .RN(n1540), .Q(N90), 
        .QN(n1473) );
  DFFRX1 \cs_reg[0]  ( .D(ns[0]), .CK(clk), .RN(n1539), .Q(cs[0]), .QN(n1621)
         );
  DFFRX1 \match_index_reg[0]  ( .D(nx_match_index[0]), .CK(clk), .RN(n1539), 
        .QN(n1425) );
  DFFRX1 \match_index_reg[1]  ( .D(nx_match_index[1]), .CK(clk), .RN(n1539), 
        .QN(n1426) );
  DFFRX1 match_reg ( .D(nx_match), .CK(clk), .RN(n1512), .QN(n1430) );
  DFFRX1 \match_index_reg[2]  ( .D(nx_match_index[2]), .CK(clk), .RN(n1539), 
        .QN(n1427) );
  DFFRX1 \match_index_reg[3]  ( .D(nx_match_index[3]), .CK(clk), .RN(n1539), 
        .QN(n1428) );
  DFFRX1 \match_index_reg[4]  ( .D(nx_match_index[4]), .CK(clk), .RN(n1539), 
        .QN(n1429) );
  DFFRX1 \str_space_reg[15]  ( .D(n1119), .CK(clk), .RN(n1516), .QN(n269) );
  DFFRX1 \str_space_reg[14]  ( .D(n1120), .CK(clk), .RN(n1516), .QN(n268) );
  DFFRX1 \str_space_reg[13]  ( .D(n1121), .CK(clk), .RN(n1516), .QN(n267) );
  DFFRX1 \str_space_reg[12]  ( .D(n1122), .CK(clk), .RN(n1516), .QN(n266) );
  DFFRX1 \str_space_reg[11]  ( .D(n1123), .CK(clk), .RN(n1516), .QN(n265) );
  DFFRX1 \str_space_reg[10]  ( .D(n1124), .CK(clk), .RN(n1517), .QN(n264) );
  DFFRX1 \str_space_reg[9]  ( .D(n1125), .CK(clk), .RN(n1517), .QN(n263) );
  DFFRX1 \str_space_reg[8]  ( .D(n1126), .CK(clk), .RN(n1517), .QN(n262) );
  DFFRX1 \str_space_reg[31]  ( .D(n1103), .CK(clk), .RN(n1515), .QN(n285) );
  DFFRX1 \str_space_reg[30]  ( .D(n1104), .CK(clk), .RN(n1515), .QN(n284) );
  DFFRX1 \str_space_reg[7]  ( .D(n1127), .CK(clk), .RN(n1517), .QN(n261) );
  DFFRX1 \str_space_reg[6]  ( .D(n1128), .CK(clk), .RN(n1517), .QN(n260) );
  DFFRX1 \str_space_reg[5]  ( .D(n1129), .CK(clk), .RN(n1517), .QN(n259) );
  DFFRX1 \str_space_reg[4]  ( .D(n1130), .CK(clk), .RN(n1517), .QN(n258) );
  DFFRX1 \str_space_reg[3]  ( .D(n1131), .CK(clk), .RN(n1517), .QN(n257) );
  DFFRX1 \str_space_reg[2]  ( .D(n1132), .CK(clk), .RN(n1517), .QN(n256) );
  DFFRX2 \str_addr_reg[2]  ( .D(nx_str_addr[2]), .CK(clk), .RN(n1540), .Q(N89), 
        .QN(n1472) );
  DFFRX2 \str_addr_reg[0]  ( .D(nx_str_addr[0]), .CK(clk), .RN(n1540), .Q(N87), 
        .QN(n1470) );
  DFFRX2 \cs_reg[2]  ( .D(n1422), .CK(clk), .RN(n1539), .Q(cs[2]), .QN(n1619)
         );
  DFFRX2 \str_addr_reg[1]  ( .D(nx_str_addr[1]), .CK(clk), .RN(n1540), .Q(N88), 
        .QN(n1471) );
  NOR3BXL U1189 ( .AN(n1054), .B(n1590), .C(n1594), .Y(n1066) );
  NAND2X1 U1190 ( .A(n445), .B(valid), .Y(n1423) );
  NAND2X1 U1191 ( .A(n327), .B(n1582), .Y(n1424) );
  INVX12 U1192 ( .A(n1429), .Y(match_index[4]) );
  INVX12 U1193 ( .A(n1428), .Y(match_index[3]) );
  INVX12 U1194 ( .A(n1427), .Y(match_index[2]) );
  INVX12 U1195 ( .A(n1430), .Y(match) );
  INVX12 U1196 ( .A(n1426), .Y(match_index[1]) );
  INVX12 U1197 ( .A(n1425), .Y(match_index[0]) );
  INVX3 U1198 ( .A(n1611), .Y(nx_str_addr[0]) );
  INVX3 U1199 ( .A(n1612), .Y(nx_str_addr[1]) );
  NAND2X2 U1200 ( .A(N88), .B(n1470), .Y(n1460) );
  NOR3X2 U1201 ( .A(cs[0]), .B(cs[1]), .C(n1619), .Y(n1615) );
  NAND2X2 U1202 ( .A(n1470), .B(n1471), .Y(n1458) );
  NOR3X2 U1203 ( .A(cs[2]), .B(cs[1]), .C(n1621), .Y(n1616) );
  INVX3 U1204 ( .A(n1613), .Y(nx_str_addr[2]) );
  NAND2X2 U1205 ( .A(N88), .B(N87), .Y(n1461) );
  OAI21X1 U1206 ( .A0(n1621), .A1(n1619), .B0(n1601), .Y(n1609) );
  NAND2X2 U1207 ( .A(N87), .B(n1471), .Y(n1459) );
  OAI21X1 U1208 ( .A0(n1621), .A1(n1619), .B0(n1620), .Y(n1617) );
  OR3X2 U1209 ( .A(cs[0]), .B(cs[1]), .C(n1619), .Y(n1673) );
  INVX16 U1210 ( .A(n1673), .Y(valid) );
  CLKINVX1 U1211 ( .A(n585), .Y(n1655) );
  NAND2X1 U1212 ( .A(n346), .B(n1662), .Y(n518) );
  CLKINVX1 U1213 ( .A(n578), .Y(n1659) );
  CLKBUFX3 U1214 ( .A(n557), .Y(n1475) );
  CLKINVX1 U1215 ( .A(n395), .Y(n1669) );
  NAND2X1 U1216 ( .A(n1055), .B(n1066), .Y(n519) );
  NOR3X1 U1217 ( .A(nx_pat_addr[2]), .B(nx_pat_addr[1]), .C(nx_pat_addr[0]), 
        .Y(n574) );
  CLKINVX1 U1218 ( .A(n576), .Y(n1660) );
  INVX1 U1219 ( .A(nx_str_addr[2]), .Y(n1666) );
  INVX1 U1220 ( .A(nx_str_addr[0]), .Y(n1664) );
  INVX1 U1221 ( .A(nx_str_addr[1]), .Y(n1665) );
  CLKINVX1 U1222 ( .A(chardata[2]), .Y(n1592) );
  CLKINVX1 U1223 ( .A(chardata[0]), .Y(n1588) );
  OAI32X1 U1224 ( .A0(n1620), .A1(cs[2]), .A2(cs[0]), .B0(isstring), .B1(n501), 
        .Y(ns[1]) );
  CLKINVX1 U1225 ( .A(chardata[1]), .Y(n1590) );
  CLKINVX1 U1226 ( .A(chardata[3]), .Y(n1594) );
  CLKINVX1 U1227 ( .A(chardata[5]), .Y(n1597) );
  NOR3X1 U1228 ( .A(N88), .B(N89), .C(N87), .Y(n579) );
  NOR3X1 U1229 ( .A(n1471), .B(n1470), .C(n1472), .Y(n597) );
  NOR3X1 U1230 ( .A(n1470), .B(N89), .C(n1471), .Y(n520) );
  NOR3X1 U1231 ( .A(N87), .B(N89), .C(n1471), .Y(n539) );
  NOR3X1 U1232 ( .A(N88), .B(N89), .C(n1470), .Y(n558) );
  NOR3X1 U1233 ( .A(n1470), .B(N88), .C(n1472), .Y(n633) );
  NOR3X1 U1234 ( .A(N87), .B(N88), .C(n1472), .Y(n651) );
  NOR3X1 U1235 ( .A(n1471), .B(N87), .C(n1472), .Y(n615) );
  NOR2X2 U1236 ( .A(N90), .B(N91), .Y(n521) );
  NOR2X2 U1237 ( .A(n1474), .B(n1473), .Y(n807) );
  CLKINVX1 U1238 ( .A(reset), .Y(n1622) );
  CLKBUFX3 U1239 ( .A(n1585), .Y(n1586) );
  CLKBUFX3 U1240 ( .A(n1655), .Y(n1551) );
  CLKBUFX3 U1241 ( .A(n1655), .Y(n1552) );
  CLKBUFX3 U1242 ( .A(n515), .Y(n1564) );
  CLKBUFX3 U1243 ( .A(n515), .Y(n1563) );
  CLKBUFX3 U1244 ( .A(n1424), .Y(n1585) );
  CLKBUFX3 U1245 ( .A(n1659), .Y(n1554) );
  CLKBUFX3 U1246 ( .A(n1659), .Y(n1553) );
  CLKBUFX3 U1247 ( .A(n518), .Y(n1561) );
  CLKBUFX3 U1248 ( .A(n518), .Y(n1562) );
  INVX3 U1249 ( .A(n442), .Y(n1663) );
  CLKBUFX3 U1250 ( .A(n400), .Y(n1580) );
  CLKBUFX3 U1251 ( .A(n401), .Y(n1578) );
  CLKBUFX3 U1252 ( .A(n402), .Y(n1576) );
  CLKBUFX3 U1253 ( .A(n403), .Y(n1574) );
  CLKBUFX3 U1254 ( .A(n405), .Y(n1570) );
  CLKBUFX3 U1255 ( .A(n400), .Y(n1579) );
  CLKBUFX3 U1256 ( .A(n401), .Y(n1577) );
  CLKBUFX3 U1257 ( .A(n402), .Y(n1575) );
  CLKBUFX3 U1258 ( .A(n403), .Y(n1573) );
  CLKBUFX3 U1259 ( .A(n405), .Y(n1569) );
  NOR2X1 U1260 ( .A(n575), .B(n1662), .Y(n585) );
  INVX3 U1261 ( .A(n1475), .Y(n1657) );
  OAI21X2 U1262 ( .A0(n364), .A1(n435), .B0(n1583), .Y(n442) );
  NOR2X1 U1263 ( .A(n1559), .B(n1662), .Y(n515) );
  NAND2X2 U1264 ( .A(n365), .B(n1557), .Y(n408) );
  CLKBUFX3 U1265 ( .A(n519), .Y(n1559) );
  CLKBUFX3 U1266 ( .A(n1581), .Y(n1583) );
  CLKBUFX3 U1267 ( .A(n415), .Y(n1499) );
  OA21XL U1268 ( .A0(n364), .A1(n408), .B0(n1582), .Y(n415) );
  CLKBUFX3 U1269 ( .A(n424), .Y(n1491) );
  OA21XL U1270 ( .A0(n364), .A1(n417), .B0(n1582), .Y(n424) );
  CLKBUFX3 U1271 ( .A(n433), .Y(n1483) );
  OA21XL U1272 ( .A0(n364), .A1(n426), .B0(n1582), .Y(n433) );
  CLKBUFX3 U1273 ( .A(n1669), .Y(n1557) );
  CLKBUFX3 U1274 ( .A(n519), .Y(n1560) );
  CLKBUFX3 U1275 ( .A(n404), .Y(n1572) );
  CLKBUFX3 U1276 ( .A(n406), .Y(n1568) );
  CLKBUFX3 U1277 ( .A(n407), .Y(n1566) );
  CLKBUFX3 U1278 ( .A(n404), .Y(n1571) );
  CLKBUFX3 U1279 ( .A(n406), .Y(n1567) );
  CLKBUFX3 U1280 ( .A(n407), .Y(n1565) );
  CLKBUFX3 U1281 ( .A(n327), .Y(n1584) );
  CLKBUFX3 U1282 ( .A(n1669), .Y(n1558) );
  CLKBUFX3 U1283 ( .A(n1549), .Y(n1513) );
  CLKBUFX3 U1284 ( .A(n1549), .Y(n1514) );
  CLKBUFX3 U1285 ( .A(n1548), .Y(n1515) );
  CLKBUFX3 U1286 ( .A(n1548), .Y(n1516) );
  CLKBUFX3 U1287 ( .A(n1547), .Y(n1517) );
  CLKBUFX3 U1288 ( .A(n1547), .Y(n1518) );
  CLKBUFX3 U1289 ( .A(n1546), .Y(n1519) );
  CLKBUFX3 U1290 ( .A(n1546), .Y(n1520) );
  CLKBUFX3 U1291 ( .A(n1545), .Y(n1521) );
  CLKBUFX3 U1292 ( .A(n1545), .Y(n1522) );
  CLKBUFX3 U1293 ( .A(n1544), .Y(n1523) );
  CLKBUFX3 U1294 ( .A(n1544), .Y(n1524) );
  CLKBUFX3 U1295 ( .A(n1543), .Y(n1525) );
  CLKBUFX3 U1296 ( .A(n1543), .Y(n1526) );
  CLKBUFX3 U1297 ( .A(n1542), .Y(n1527) );
  CLKBUFX3 U1298 ( .A(n1542), .Y(n1528) );
  CLKBUFX3 U1299 ( .A(n1508), .Y(n1529) );
  CLKBUFX3 U1300 ( .A(n1547), .Y(n1530) );
  CLKBUFX3 U1301 ( .A(n1508), .Y(n1531) );
  CLKBUFX3 U1302 ( .A(n1548), .Y(n1532) );
  CLKBUFX3 U1303 ( .A(n1508), .Y(n1533) );
  CLKBUFX3 U1304 ( .A(n1549), .Y(n1534) );
  CLKBUFX3 U1305 ( .A(n1507), .Y(n1535) );
  CLKBUFX3 U1306 ( .A(n1550), .Y(n1536) );
  CLKBUFX3 U1307 ( .A(n1550), .Y(n1537) );
  CLKBUFX3 U1308 ( .A(n1507), .Y(n1538) );
  CLKBUFX3 U1309 ( .A(n1541), .Y(n1539) );
  CLKBUFX3 U1310 ( .A(n1541), .Y(n1540) );
  NOR2X1 U1311 ( .A(n346), .B(n574), .Y(n578) );
  CLKINVX1 U1312 ( .A(n574), .Y(n1662) );
  NOR2X1 U1313 ( .A(n343), .B(n1662), .Y(n557) );
  CLKBUFX3 U1314 ( .A(n1660), .Y(n1555) );
  CLKBUFX3 U1315 ( .A(n1660), .Y(n1556) );
  NAND3X2 U1316 ( .A(n1665), .B(n1666), .C(n1664), .Y(n364) );
  CLKBUFX3 U1317 ( .A(n409), .Y(n1505) );
  OA21XL U1318 ( .A0(n352), .A1(n408), .B0(n1582), .Y(n409) );
  CLKBUFX3 U1319 ( .A(n410), .Y(n1504) );
  OA21XL U1320 ( .A0(n354), .A1(n408), .B0(n1582), .Y(n410) );
  CLKBUFX3 U1321 ( .A(n411), .Y(n1503) );
  OA21XL U1322 ( .A0(n356), .A1(n408), .B0(n1582), .Y(n411) );
  CLKBUFX3 U1323 ( .A(n412), .Y(n1502) );
  OA21XL U1324 ( .A0(n358), .A1(n408), .B0(n1582), .Y(n412) );
  CLKBUFX3 U1325 ( .A(n413), .Y(n1501) );
  OA21XL U1326 ( .A0(n360), .A1(n408), .B0(n1582), .Y(n413) );
  CLKBUFX3 U1327 ( .A(n418), .Y(n1497) );
  OA21XL U1328 ( .A0(n352), .A1(n417), .B0(n1582), .Y(n418) );
  CLKBUFX3 U1329 ( .A(n419), .Y(n1496) );
  OA21XL U1330 ( .A0(n354), .A1(n417), .B0(n1581), .Y(n419) );
  CLKBUFX3 U1331 ( .A(n420), .Y(n1495) );
  OA21XL U1332 ( .A0(n356), .A1(n417), .B0(n1582), .Y(n420) );
  CLKBUFX3 U1333 ( .A(n421), .Y(n1494) );
  OA21XL U1334 ( .A0(n358), .A1(n417), .B0(n1582), .Y(n421) );
  CLKBUFX3 U1335 ( .A(n422), .Y(n1493) );
  OA21XL U1336 ( .A0(n360), .A1(n417), .B0(n1582), .Y(n422) );
  CLKBUFX3 U1337 ( .A(n427), .Y(n1489) );
  OA21XL U1338 ( .A0(n352), .A1(n426), .B0(n1581), .Y(n427) );
  CLKBUFX3 U1339 ( .A(n428), .Y(n1488) );
  OA21XL U1340 ( .A0(n354), .A1(n426), .B0(n1582), .Y(n428) );
  CLKBUFX3 U1341 ( .A(n429), .Y(n1487) );
  OA21XL U1342 ( .A0(n356), .A1(n426), .B0(n1582), .Y(n429) );
  CLKBUFX3 U1343 ( .A(n430), .Y(n1486) );
  OA21XL U1344 ( .A0(n358), .A1(n426), .B0(n1582), .Y(n430) );
  CLKBUFX3 U1345 ( .A(n431), .Y(n1485) );
  OA21XL U1346 ( .A0(n360), .A1(n426), .B0(n1582), .Y(n431) );
  CLKBUFX3 U1347 ( .A(n436), .Y(n1481) );
  OA21XL U1348 ( .A0(n352), .A1(n435), .B0(n1581), .Y(n436) );
  CLKBUFX3 U1349 ( .A(n437), .Y(n1480) );
  OA21XL U1350 ( .A0(n354), .A1(n435), .B0(n1582), .Y(n437) );
  CLKBUFX3 U1351 ( .A(n438), .Y(n1479) );
  OA21XL U1352 ( .A0(n356), .A1(n435), .B0(n1581), .Y(n438) );
  CLKBUFX3 U1353 ( .A(n439), .Y(n1478) );
  OA21XL U1354 ( .A0(n358), .A1(n435), .B0(n1423), .Y(n439) );
  CLKBUFX3 U1355 ( .A(n440), .Y(n1477) );
  OA21XL U1356 ( .A0(n360), .A1(n435), .B0(n1423), .Y(n440) );
  CLKBUFX3 U1357 ( .A(n414), .Y(n1500) );
  OA21XL U1358 ( .A0(n362), .A1(n408), .B0(n1581), .Y(n414) );
  CLKBUFX3 U1359 ( .A(n423), .Y(n1492) );
  OA21XL U1360 ( .A0(n362), .A1(n417), .B0(n1423), .Y(n423) );
  CLKBUFX3 U1361 ( .A(n432), .Y(n1484) );
  OA21XL U1362 ( .A0(n362), .A1(n426), .B0(n1423), .Y(n432) );
  CLKBUFX3 U1363 ( .A(n441), .Y(n1476) );
  OA21XL U1364 ( .A0(n362), .A1(n435), .B0(n1581), .Y(n441) );
  NAND2X2 U1365 ( .A(n365), .B(n366), .Y(n349) );
  NAND2X2 U1366 ( .A(n376), .B(n366), .Y(n368) );
  NAND2X2 U1367 ( .A(n386), .B(n366), .Y(n378) );
  NAND2X1 U1368 ( .A(n396), .B(n366), .Y(n388) );
  NAND2X2 U1369 ( .A(n396), .B(n1557), .Y(n435) );
  NAND2X2 U1370 ( .A(n376), .B(n1557), .Y(n417) );
  NAND2X2 U1371 ( .A(n386), .B(n1557), .Y(n426) );
  NAND2BX1 U1372 ( .AN(n398), .B(n1054), .Y(n346) );
  NAND2X1 U1373 ( .A(n519), .B(n343), .Y(n575) );
  NOR2X1 U1374 ( .A(n1668), .B(n1667), .Y(n365) );
  AND2X2 U1375 ( .A(n339), .B(n340), .Y(n327) );
  CLKBUFX3 U1376 ( .A(n399), .Y(n1506) );
  OA21XL U1377 ( .A0(n350), .A1(n408), .B0(n1581), .Y(n399) );
  CLKBUFX3 U1378 ( .A(n416), .Y(n1498) );
  OA21XL U1379 ( .A0(n350), .A1(n417), .B0(n1581), .Y(n416) );
  CLKBUFX3 U1380 ( .A(n425), .Y(n1490) );
  OA21XL U1381 ( .A0(n350), .A1(n426), .B0(n1423), .Y(n425) );
  CLKBUFX3 U1382 ( .A(n434), .Y(n1482) );
  OA21XL U1383 ( .A0(n350), .A1(n435), .B0(n1582), .Y(n434) );
  CLKBUFX3 U1384 ( .A(n1423), .Y(n1582) );
  CLKBUFX3 U1385 ( .A(n1423), .Y(n1581) );
  NAND2X1 U1386 ( .A(n1557), .B(chardata[0]), .Y(n400) );
  NAND2X1 U1387 ( .A(n1557), .B(chardata[2]), .Y(n402) );
  NAND2X1 U1388 ( .A(n1557), .B(chardata[1]), .Y(n401) );
  NAND2X1 U1389 ( .A(n1557), .B(chardata[3]), .Y(n403) );
  NAND2X1 U1390 ( .A(n1557), .B(chardata[5]), .Y(n405) );
  CLKBUFX3 U1391 ( .A(n1550), .Y(n1512) );
  CLKBUFX3 U1392 ( .A(n1511), .Y(n1550) );
  CLKBUFX3 U1393 ( .A(n1511), .Y(n1549) );
  CLKBUFX3 U1394 ( .A(n1511), .Y(n1548) );
  CLKBUFX3 U1395 ( .A(n1510), .Y(n1547) );
  CLKBUFX3 U1396 ( .A(n1510), .Y(n1546) );
  CLKBUFX3 U1397 ( .A(n1510), .Y(n1545) );
  CLKBUFX3 U1398 ( .A(n1509), .Y(n1544) );
  CLKBUFX3 U1399 ( .A(n1509), .Y(n1543) );
  CLKBUFX3 U1400 ( .A(n1509), .Y(n1542) );
  CLKBUFX3 U1401 ( .A(n1507), .Y(n1541) );
  NAND4X1 U1402 ( .A(n502), .B(n503), .C(n504), .D(n505), .Y(
        reduction_comp_tab) );
  NOR4X1 U1403 ( .A(n331), .B(n330), .C(n329), .D(n328), .Y(n502) );
  NOR4X1 U1404 ( .A(n335), .B(n334), .C(n333), .D(n332), .Y(n503) );
  NOR4X1 U1405 ( .A(n799), .B(n800), .C(n337), .D(n336), .Y(n504) );
  NOR4X1 U1406 ( .A(n506), .B(n507), .C(n508), .D(n509), .Y(n505) );
  NAND4X1 U1407 ( .A(n1637), .B(n1636), .C(n1635), .D(n1634), .Y(n506) );
  NAND4X1 U1408 ( .A(n1633), .B(n1632), .C(n1631), .D(n1630), .Y(n507) );
  NAND4X1 U1409 ( .A(n1629), .B(n1628), .C(n1627), .D(n1626), .Y(n508) );
  NAND4X1 U1410 ( .A(n1656), .B(n1625), .C(n1624), .D(n1623), .Y(n509) );
  NAND4X1 U1411 ( .A(n1646), .B(n1645), .C(n1644), .D(n1643), .Y(n799) );
  OAI21XL U1412 ( .A0(n1562), .A1(n511), .B0(n1560), .Y(n514) );
  OAI21XL U1413 ( .A0(n1561), .A1(n533), .B0(n1559), .Y(n536) );
  OAI21XL U1414 ( .A0(n1561), .A1(n551), .B0(n1559), .Y(n554) );
  OAI21XL U1415 ( .A0(n1561), .A1(n591), .B0(n1559), .Y(n594) );
  OAI21XL U1416 ( .A0(n1561), .A1(n609), .B0(n1559), .Y(n612) );
  OAI21XL U1417 ( .A0(n1561), .A1(n627), .B0(n1559), .Y(n630) );
  OAI21XL U1418 ( .A0(n1561), .A1(n645), .B0(n1559), .Y(n648) );
  OAI21XL U1419 ( .A0(n1561), .A1(n663), .B0(n1559), .Y(n666) );
  OAI21XL U1420 ( .A0(n1561), .A1(n681), .B0(n1559), .Y(n684) );
  OAI21XL U1421 ( .A0(n1561), .A1(n698), .B0(n1559), .Y(n701) );
  OAI21XL U1422 ( .A0(n1561), .A1(n715), .B0(n1559), .Y(n718) );
  OAI21XL U1423 ( .A0(n1561), .A1(n732), .B0(n1559), .Y(n735) );
  OAI21XL U1424 ( .A0(n1562), .A1(n749), .B0(n1559), .Y(n752) );
  OAI21XL U1425 ( .A0(n1562), .A1(n766), .B0(n1559), .Y(n769) );
  OAI21XL U1426 ( .A0(n1561), .A1(n783), .B0(n1559), .Y(n786) );
  OAI21XL U1427 ( .A0(n1562), .A1(n868), .B0(n1560), .Y(n871) );
  OAI21XL U1428 ( .A0(n1562), .A1(n885), .B0(n1560), .Y(n888) );
  OAI21XL U1429 ( .A0(n1562), .A1(n902), .B0(n1560), .Y(n905) );
  OAI21XL U1430 ( .A0(n1562), .A1(n919), .B0(n1560), .Y(n922) );
  OAI21XL U1431 ( .A0(n1561), .A1(n834), .B0(n1560), .Y(n837) );
  OAI21XL U1432 ( .A0(n1562), .A1(n851), .B0(n1560), .Y(n854) );
  OAI21XL U1433 ( .A0(n1561), .A1(n801), .B0(n1560), .Y(n804) );
  OAI21XL U1434 ( .A0(n1562), .A1(n984), .B0(n1560), .Y(n987) );
  OAI21XL U1435 ( .A0(n1562), .A1(n968), .B0(n1560), .Y(n971) );
  OAI21XL U1436 ( .A0(n1562), .A1(n952), .B0(n1560), .Y(n955) );
  OAI21XL U1437 ( .A0(n518), .A1(n935), .B0(n1560), .Y(n938) );
  OAI21XL U1438 ( .A0(n1561), .A1(n1048), .B0(n1560), .Y(n1051) );
  OAI21XL U1439 ( .A0(n1562), .A1(n1032), .B0(n1560), .Y(n1035) );
  OAI21XL U1440 ( .A0(n1562), .A1(n1016), .B0(n1560), .Y(n1019) );
  OAI21XL U1441 ( .A0(n1562), .A1(n1000), .B0(n1560), .Y(n1003) );
  NAND2X1 U1442 ( .A(n1642), .B(n1641), .Y(n800) );
  NAND3X2 U1443 ( .A(nx_str_addr[1]), .B(n1664), .C(nx_str_addr[2]), .Y(n352)
         );
  NAND3X2 U1444 ( .A(nx_str_addr[0]), .B(n1665), .C(nx_str_addr[2]), .Y(n354)
         );
  NAND3X2 U1445 ( .A(nx_str_addr[0]), .B(n1666), .C(nx_str_addr[1]), .Y(n358)
         );
  NAND3X2 U1446 ( .A(n1664), .B(n1665), .C(nx_str_addr[2]), .Y(n356) );
  NAND3X2 U1447 ( .A(n1664), .B(n1666), .C(nx_str_addr[1]), .Y(n360) );
  NAND3X2 U1448 ( .A(n1665), .B(n1666), .C(nx_str_addr[0]), .Y(n362) );
  AOI2BB2X1 U1449 ( .B0(n574), .B1(n575), .A0N(n576), .A1N(n577), .Y(n573) );
  NAND3X2 U1450 ( .A(nx_str_addr[1]), .B(nx_str_addr[0]), .C(nx_str_addr[2]), 
        .Y(n350) );
  NOR4X2 U1451 ( .A(n1591), .B(n1599), .C(n1587), .D(n397), .Y(n366) );
  OR2X1 U1452 ( .A(n398), .B(n395), .Y(n397) );
  NAND3BX1 U1453 ( .AN(ns[0]), .B(ns[1]), .C(n339), .Y(n340) );
  NAND4X1 U1454 ( .A(n1598), .B(n1595), .C(n1066), .D(n1597), .Y(n343) );
  NOR2X1 U1455 ( .A(nx_str_addr[3]), .B(nx_str_addr[4]), .Y(n396) );
  NAND3BX1 U1456 ( .AN(ns[1]), .B(n1583), .C(ns[0]), .Y(n395) );
  NOR2X1 U1457 ( .A(n1667), .B(nx_str_addr[4]), .Y(n386) );
  NOR2X1 U1458 ( .A(n1668), .B(nx_str_addr[3]), .Y(n376) );
  CLKINVX1 U1459 ( .A(nx_str_addr[3]), .Y(n1667) );
  CLKINVX1 U1460 ( .A(nx_str_addr[4]), .Y(n1668) );
  NOR3X1 U1461 ( .A(n1595), .B(n1598), .C(n1597), .Y(n1055) );
  NOR3X1 U1462 ( .A(n1587), .B(n1599), .C(n1592), .Y(n1054) );
  INVX3 U1463 ( .A(n1588), .Y(n1587) );
  NAND3X1 U1464 ( .A(n1590), .B(n1594), .C(n1055), .Y(n398) );
  NAND3X1 U1465 ( .A(n1583), .B(n347), .C(valid), .Y(n339) );
  NAND2X1 U1466 ( .A(n1557), .B(chardata[7]), .Y(n407) );
  NAND2X1 U1467 ( .A(n1557), .B(chardata[4]), .Y(n404) );
  NAND2X1 U1468 ( .A(n1557), .B(chardata[6]), .Y(n406) );
  INVX3 U1469 ( .A(n1592), .Y(n1591) );
  INVX3 U1470 ( .A(n1590), .Y(n1589) );
  INVX3 U1471 ( .A(n1594), .Y(n1593) );
  INVX3 U1472 ( .A(n1597), .Y(n1596) );
  NOR2X1 U1473 ( .A(n1422), .B(ns[1]), .Y(n500) );
  NAND3BX1 U1474 ( .AN(n463), .B(n462), .C(n461), .Y(n474) );
  NOR4X1 U1475 ( .A(n457), .B(n458), .C(n459), .D(n460), .Y(n456) );
  NOR3BXL U1476 ( .AN(n461), .B(n462), .C(n463), .Y(n460) );
  AND2X2 U1477 ( .A(n558), .B(n521), .Y(n556) );
  AND2X2 U1478 ( .A(n520), .B(n521), .Y(n517) );
  AND2X2 U1479 ( .A(n539), .B(n521), .Y(n538) );
  AND2X2 U1480 ( .A(n597), .B(n521), .Y(n596) );
  AND2X2 U1481 ( .A(n615), .B(n521), .Y(n614) );
  AND2X2 U1482 ( .A(n633), .B(n521), .Y(n632) );
  AND2X2 U1483 ( .A(n651), .B(n521), .Y(n650) );
  NAND2X1 U1484 ( .A(n521), .B(n579), .Y(n577) );
  NAND2X1 U1485 ( .A(n807), .B(n597), .Y(n822) );
  AND2X2 U1486 ( .A(n807), .B(n520), .Y(n873) );
  AND2X2 U1487 ( .A(n807), .B(n539), .Y(n890) );
  AND2X2 U1488 ( .A(n807), .B(n558), .Y(n907) );
  AND2X2 U1489 ( .A(n807), .B(n579), .Y(n924) );
  AND2X2 U1490 ( .A(n807), .B(n633), .Y(n839) );
  AND2X2 U1491 ( .A(n807), .B(n651), .Y(n856) );
  AND2X2 U1492 ( .A(n941), .B(n597), .Y(n989) );
  AND2X2 U1493 ( .A(n941), .B(n615), .Y(n973) );
  AND2X2 U1494 ( .A(n941), .B(n633), .Y(n957) );
  AND2X2 U1495 ( .A(n941), .B(n651), .Y(n940) );
  AND2X2 U1496 ( .A(n941), .B(n520), .Y(n1053) );
  AND2X2 U1497 ( .A(n941), .B(n539), .Y(n1037) );
  AND2X2 U1498 ( .A(n941), .B(n558), .Y(n1021) );
  AND2X2 U1499 ( .A(n941), .B(n579), .Y(n1005) );
  AND2X2 U1500 ( .A(n807), .B(n615), .Y(n806) );
  AND2X2 U1501 ( .A(n669), .B(n520), .Y(n668) );
  AND2X2 U1502 ( .A(n669), .B(n539), .Y(n686) );
  AND2X2 U1503 ( .A(n669), .B(n558), .Y(n703) );
  AND2X2 U1504 ( .A(n669), .B(n579), .Y(n720) );
  AND2X2 U1505 ( .A(n669), .B(n597), .Y(n737) );
  AND2X2 U1506 ( .A(n669), .B(n615), .Y(n754) );
  AND2X2 U1507 ( .A(n669), .B(n633), .Y(n771) );
  AND2X2 U1508 ( .A(n669), .B(n651), .Y(n788) );
  CLKBUFX3 U1509 ( .A(n1622), .Y(n1511) );
  CLKBUFX3 U1510 ( .A(n1622), .Y(n1510) );
  CLKBUFX3 U1511 ( .A(n1622), .Y(n1509) );
  CLKBUFX3 U1512 ( .A(n1622), .Y(n1508) );
  CLKBUFX3 U1513 ( .A(n1622), .Y(n1507) );
  OAI211X1 U1514 ( .A0(n818), .A1(n318), .B0(n819), .C0(n1640), .Y(n337) );
  AOI31X1 U1515 ( .A0(n578), .A1(n822), .A2(compare_table[31]), .B0(n515), .Y(
        n819) );
  OA21XL U1516 ( .A0(n1562), .A1(n821), .B0(n1560), .Y(n818) );
  CLKINVX1 U1517 ( .A(n820), .Y(n1640) );
  OAI211X1 U1518 ( .A0(n1551), .A1(n952), .B0(n953), .C0(n954), .Y(n333) );
  AOI22X1 U1519 ( .A0(n957), .A1(n1555), .B0(str_space[21]), .B1(n1475), .Y(
        n953) );
  AOI211X1 U1520 ( .A0(compare_table[20]), .A1(n955), .B0(n1564), .C0(n956), 
        .Y(n954) );
  NOR4X1 U1521 ( .A(n957), .B(n1553), .C(n309), .D(n276), .Y(n956) );
  OAI211X1 U1522 ( .A0(n1655), .A1(n1016), .B0(n1017), .C0(n1018), .Y(n329) );
  AOI22X1 U1523 ( .A0(n1021), .A1(n1555), .B0(str_space[17]), .B1(n1475), .Y(
        n1017) );
  AOI211X1 U1524 ( .A0(compare_table[16]), .A1(n1019), .B0(n1564), .C0(n1020), 
        .Y(n1018) );
  NOR4X1 U1525 ( .A(n1021), .B(n1553), .C(n305), .D(n272), .Y(n1020) );
  OAI211X1 U1526 ( .A0(n1655), .A1(n968), .B0(n969), .C0(n970), .Y(n334) );
  AOI22X1 U1527 ( .A0(n973), .A1(n1555), .B0(str_space[22]), .B1(n1475), .Y(
        n969) );
  AOI211X1 U1528 ( .A0(compare_table[21]), .A1(n971), .B0(n1564), .C0(n972), 
        .Y(n970) );
  NOR4X1 U1529 ( .A(n973), .B(n1553), .C(n310), .D(n277), .Y(n972) );
  OAI211X1 U1530 ( .A0(n1655), .A1(n1032), .B0(n1033), .C0(n1034), .Y(n330) );
  AOI22X1 U1531 ( .A0(n1037), .A1(n1555), .B0(str_space[18]), .B1(n1475), .Y(
        n1033) );
  AOI211X1 U1532 ( .A0(compare_table[17]), .A1(n1035), .B0(n515), .C0(n1036), 
        .Y(n1034) );
  NOR4X1 U1533 ( .A(n1037), .B(n1553), .C(n306), .D(n273), .Y(n1036) );
  OAI211X1 U1534 ( .A0(n1551), .A1(n984), .B0(n985), .C0(n986), .Y(n335) );
  AOI22X1 U1535 ( .A0(n989), .A1(n1555), .B0(str_space[23]), .B1(n1475), .Y(
        n985) );
  AOI211X1 U1536 ( .A0(compare_table[22]), .A1(n987), .B0(n515), .C0(n988), 
        .Y(n986) );
  NOR4X1 U1537 ( .A(n989), .B(n1553), .C(n311), .D(n278), .Y(n988) );
  OAI211X1 U1538 ( .A0(n1551), .A1(n1048), .B0(n1049), .C0(n1050), .Y(n331) );
  AOI22X1 U1539 ( .A0(n1053), .A1(n1555), .B0(str_space[19]), .B1(n1475), .Y(
        n1049) );
  AOI211X1 U1540 ( .A0(compare_table[18]), .A1(n1051), .B0(n1563), .C0(n1052), 
        .Y(n1050) );
  NOR4X1 U1541 ( .A(n1053), .B(n1553), .C(n307), .D(n274), .Y(n1052) );
  NOR2X2 U1542 ( .A(n1670), .B(ispattern), .Y(n445) );
  XOR2X1 U1543 ( .A(pat_addr[2]), .B(n1067), .Y(N378) );
  OAI222XL U1544 ( .A0(n821), .A1(n1655), .B0(n822), .B1(n576), .C0(n285), 
        .C1(n1657), .Y(n820) );
  XOR2X1 U1545 ( .A(pat_addr[0]), .B(ispattern), .Y(N376) );
  XOR2X1 U1546 ( .A(n245), .B(n1068), .Y(N377) );
  OAI32X1 U1547 ( .A0(n495), .A1(reduction_comp_tab), .A2(n255), .B0(n496), 
        .B1(n492), .Y(comp_ns[1]) );
  AOI32X1 U1548 ( .A0(ispattern), .A1(n255), .A2(comp_cs[1]), .B0(n497), .B1(
        n254), .Y(n496) );
  XOR2X1 U1549 ( .A(n498), .B(reduction_comp_tab_latch), .Y(n497) );
  OR2X1 U1550 ( .A(ispattern), .B(n255), .Y(n498) );
  AO21X1 U1551 ( .A0(n1670), .A1(ispattern), .B0(n445), .Y(n347) );
  OAI211X1 U1552 ( .A0(n1552), .A1(n801), .B0(n802), .C0(n803), .Y(n336) );
  AOI2BB2X1 U1553 ( .B0(n806), .B1(n1556), .A0N(n284), .A1N(n1657), .Y(n802)
         );
  AOI211X1 U1554 ( .A0(compare_table[29]), .A1(n804), .B0(n1564), .C0(n805), 
        .Y(n803) );
  NOR4X1 U1555 ( .A(n806), .B(n1554), .C(n318), .D(n285), .Y(n805) );
  OAI211X1 U1556 ( .A0(n1552), .A1(n935), .B0(n936), .C0(n937), .Y(n332) );
  AOI22X1 U1557 ( .A0(n940), .A1(n1555), .B0(str_space[20]), .B1(n1475), .Y(
        n936) );
  AOI211X1 U1558 ( .A0(compare_table[19]), .A1(n938), .B0(n1564), .C0(n939), 
        .Y(n937) );
  NOR4X1 U1559 ( .A(n940), .B(n1553), .C(n308), .D(n275), .Y(n939) );
  OAI211X1 U1560 ( .A0(n1552), .A1(n1000), .B0(n1001), .C0(n1002), .Y(n328) );
  AOI22X1 U1561 ( .A0(n1005), .A1(n1555), .B0(str_space[16]), .B1(n1475), .Y(
        n1001) );
  AOI211X1 U1562 ( .A0(compare_table[15]), .A1(n1003), .B0(n1563), .C0(n1004), 
        .Y(n1002) );
  NOR4X1 U1563 ( .A(n1005), .B(n1553), .C(n304), .D(n271), .Y(n1004) );
  NAND2X1 U1564 ( .A(N541), .B(n578), .Y(n576) );
  CLKINVX1 U1565 ( .A(isstring), .Y(n1670) );
  NOR4X1 U1566 ( .A(n771), .B(n1554), .C(n301), .D(n268), .Y(n770) );
  NOR4X1 U1567 ( .A(n720), .B(n1554), .C(n296), .D(n263), .Y(n719) );
  NOR4X1 U1568 ( .A(n596), .B(n1553), .C(n295), .D(n262), .Y(n595) );
  NOR4X1 U1569 ( .A(n754), .B(n1554), .C(n302), .D(n269), .Y(n753) );
  NOR4X1 U1570 ( .A(n517), .B(n1553), .C(n291), .D(n258), .Y(n516) );
  NOR4X1 U1571 ( .A(n556), .B(n1554), .C(n289), .D(n256), .Y(n555) );
  NOR4X1 U1572 ( .A(n538), .B(n1554), .C(n290), .D(n257), .Y(n537) );
  NOR4X1 U1573 ( .A(n924), .B(n1553), .C(n312), .D(n279), .Y(n923) );
  NOR4X1 U1574 ( .A(n856), .B(n1554), .C(n316), .D(n283), .Y(n855) );
  NOR4X1 U1575 ( .A(n890), .B(n1553), .C(n314), .D(n281), .Y(n889) );
  NOR4X1 U1576 ( .A(n668), .B(n1554), .C(n299), .D(n266), .Y(n667) );
  NOR4X1 U1577 ( .A(n907), .B(n1553), .C(n313), .D(n280), .Y(n906) );
  NOR4X1 U1578 ( .A(n614), .B(n1553), .C(n294), .D(n261), .Y(n613) );
  NOR4X1 U1579 ( .A(n686), .B(n1554), .C(n298), .D(n265), .Y(n685) );
  NOR4X1 U1580 ( .A(n703), .B(n1554), .C(n297), .D(n264), .Y(n702) );
  NOR4X1 U1581 ( .A(n839), .B(n1554), .C(n317), .D(n284), .Y(n838) );
  NOR4X1 U1582 ( .A(n632), .B(n1659), .C(n293), .D(n260), .Y(n631) );
  NOR4X1 U1583 ( .A(n650), .B(n1554), .C(n292), .D(n259), .Y(n649) );
  NOR4X1 U1584 ( .A(n737), .B(n1554), .C(n303), .D(n270), .Y(n736) );
  NOR4X1 U1585 ( .A(n788), .B(n1554), .C(n300), .D(n267), .Y(n787) );
  NOR4X1 U1586 ( .A(n873), .B(n1553), .C(n315), .D(n282), .Y(n872) );
  OAI31XL U1587 ( .A0(n499), .A1(comp_cs[1]), .A2(n500), .B0(n494), .Y(
        comp_ns[0]) );
  AOI22X1 U1588 ( .A0(comp_cs[2]), .A1(reduction_comp_tab), .B0(
        reduction_comp_tab_latch), .B1(n253), .Y(n499) );
  CLKINVX1 U1589 ( .A(n510), .Y(n1623) );
  OAI211X1 U1590 ( .A0(n1552), .A1(n511), .B0(n512), .C0(n513), .Y(n510) );
  AOI2BB2X1 U1591 ( .B0(n517), .B1(n1556), .A0N(n257), .A1N(n1657), .Y(n512)
         );
  AOI211X1 U1592 ( .A0(compare_table[2]), .A1(n514), .B0(n1564), .C0(n516), 
        .Y(n513) );
  CLKINVX1 U1593 ( .A(n590), .Y(n1626) );
  OAI211X1 U1594 ( .A0(n1551), .A1(n591), .B0(n592), .C0(n593), .Y(n590) );
  AOI2BB2X1 U1595 ( .B0(n596), .B1(n1556), .A0N(n261), .A1N(n1657), .Y(n592)
         );
  AOI211X1 U1596 ( .A0(compare_table[6]), .A1(n594), .B0(n1563), .C0(n595), 
        .Y(n593) );
  CLKINVX1 U1597 ( .A(n662), .Y(n1630) );
  OAI211X1 U1598 ( .A0(n1551), .A1(n663), .B0(n664), .C0(n665), .Y(n662) );
  AOI2BB2X1 U1599 ( .B0(n668), .B1(n1556), .A0N(n265), .A1N(n1657), .Y(n664)
         );
  AOI211X1 U1600 ( .A0(compare_table[10]), .A1(n666), .B0(n1563), .C0(n667), 
        .Y(n665) );
  CLKINVX1 U1601 ( .A(n731), .Y(n1634) );
  OAI211X1 U1602 ( .A0(n1551), .A1(n732), .B0(n733), .C0(n734), .Y(n731) );
  AOI2BB2X1 U1603 ( .B0(n737), .B1(n1555), .A0N(n269), .A1N(n1657), .Y(n733)
         );
  AOI211X1 U1604 ( .A0(compare_table[14]), .A1(n735), .B0(n1563), .C0(n736), 
        .Y(n734) );
  CLKINVX1 U1605 ( .A(n867), .Y(n1643) );
  OAI211X1 U1606 ( .A0(n1552), .A1(n868), .B0(n869), .C0(n870), .Y(n867) );
  AOI22X1 U1607 ( .A0(n873), .A1(n1555), .B0(str_space[27]), .B1(n1475), .Y(
        n869) );
  AOI211X1 U1608 ( .A0(compare_table[26]), .A1(n871), .B0(n1564), .C0(n872), 
        .Y(n870) );
  CLKINVX1 U1609 ( .A(n532), .Y(n1624) );
  OAI211X1 U1610 ( .A0(n1551), .A1(n533), .B0(n534), .C0(n535), .Y(n532) );
  AOI2BB2X1 U1611 ( .B0(n538), .B1(n1556), .A0N(n1657), .A1N(n256), .Y(n534)
         );
  AOI211X1 U1612 ( .A0(compare_table[1]), .A1(n536), .B0(n1563), .C0(n537), 
        .Y(n535) );
  CLKINVX1 U1613 ( .A(n608), .Y(n1627) );
  OAI211X1 U1614 ( .A0(n1551), .A1(n609), .B0(n610), .C0(n611), .Y(n608) );
  AOI2BB2X1 U1615 ( .B0(n614), .B1(n1556), .A0N(n260), .A1N(n1657), .Y(n610)
         );
  AOI211X1 U1616 ( .A0(compare_table[5]), .A1(n612), .B0(n1563), .C0(n613), 
        .Y(n611) );
  CLKINVX1 U1617 ( .A(n680), .Y(n1631) );
  OAI211X1 U1618 ( .A0(n1551), .A1(n681), .B0(n682), .C0(n683), .Y(n680) );
  AOI2BB2X1 U1619 ( .B0(n686), .B1(n1556), .A0N(n264), .A1N(n1657), .Y(n682)
         );
  AOI211X1 U1620 ( .A0(compare_table[9]), .A1(n684), .B0(n1563), .C0(n685), 
        .Y(n683) );
  CLKINVX1 U1621 ( .A(n748), .Y(n1635) );
  OAI211X1 U1622 ( .A0(n1552), .A1(n749), .B0(n750), .C0(n751), .Y(n748) );
  AOI2BB2X1 U1623 ( .B0(n754), .B1(n1555), .A0N(n268), .A1N(n1657), .Y(n750)
         );
  AOI211X1 U1624 ( .A0(compare_table[13]), .A1(n752), .B0(n1563), .C0(n753), 
        .Y(n751) );
  CLKINVX1 U1625 ( .A(n884), .Y(n1644) );
  OAI211X1 U1626 ( .A0(n1552), .A1(n885), .B0(n886), .C0(n887), .Y(n884) );
  AOI22X1 U1627 ( .A0(n890), .A1(n1555), .B0(str_space[26]), .B1(n1475), .Y(
        n886) );
  AOI211X1 U1628 ( .A0(compare_table[25]), .A1(n888), .B0(n1564), .C0(n889), 
        .Y(n887) );
  CLKINVX1 U1629 ( .A(n550), .Y(n1625) );
  OAI211X1 U1630 ( .A0(n1551), .A1(n551), .B0(n552), .C0(n553), .Y(n550) );
  AOI22X1 U1631 ( .A0(n556), .A1(n1556), .B0(n1475), .B1(str_space[1]), .Y(
        n552) );
  AOI211X1 U1632 ( .A0(compare_table[0]), .A1(n554), .B0(n1563), .C0(n555), 
        .Y(n553) );
  CLKINVX1 U1633 ( .A(n626), .Y(n1628) );
  OAI211X1 U1634 ( .A0(n1551), .A1(n627), .B0(n628), .C0(n629), .Y(n626) );
  AOI2BB2X1 U1635 ( .B0(n632), .B1(n1556), .A0N(n259), .A1N(n1657), .Y(n628)
         );
  AOI211X1 U1636 ( .A0(compare_table[4]), .A1(n630), .B0(n1563), .C0(n631), 
        .Y(n629) );
  CLKINVX1 U1637 ( .A(n697), .Y(n1632) );
  OAI211X1 U1638 ( .A0(n1551), .A1(n698), .B0(n699), .C0(n700), .Y(n697) );
  AOI2BB2X1 U1639 ( .B0(n703), .B1(n1556), .A0N(n263), .A1N(n1657), .Y(n699)
         );
  AOI211X1 U1640 ( .A0(compare_table[8]), .A1(n701), .B0(n1563), .C0(n702), 
        .Y(n700) );
  CLKINVX1 U1641 ( .A(n765), .Y(n1636) );
  OAI211X1 U1642 ( .A0(n1552), .A1(n766), .B0(n767), .C0(n768), .Y(n765) );
  AOI2BB2X1 U1643 ( .B0(n771), .B1(n1556), .A0N(n267), .A1N(n1657), .Y(n767)
         );
  AOI211X1 U1644 ( .A0(compare_table[12]), .A1(n769), .B0(n1564), .C0(n770), 
        .Y(n768) );
  CLKINVX1 U1645 ( .A(n901), .Y(n1645) );
  OAI211X1 U1646 ( .A0(n1552), .A1(n902), .B0(n903), .C0(n904), .Y(n901) );
  AOI22X1 U1647 ( .A0(n907), .A1(n1555), .B0(str_space[25]), .B1(n1475), .Y(
        n903) );
  AOI211X1 U1648 ( .A0(compare_table[24]), .A1(n905), .B0(n1564), .C0(n906), 
        .Y(n904) );
  CLKINVX1 U1649 ( .A(n644), .Y(n1629) );
  OAI211X1 U1650 ( .A0(n1551), .A1(n645), .B0(n646), .C0(n647), .Y(n644) );
  AOI2BB2X1 U1651 ( .B0(n650), .B1(n1556), .A0N(n258), .A1N(n1657), .Y(n646)
         );
  AOI211X1 U1652 ( .A0(compare_table[3]), .A1(n648), .B0(n1563), .C0(n649), 
        .Y(n647) );
  CLKINVX1 U1653 ( .A(n714), .Y(n1633) );
  OAI211X1 U1654 ( .A0(n1551), .A1(n715), .B0(n716), .C0(n717), .Y(n714) );
  AOI2BB2X1 U1655 ( .B0(n720), .B1(n1556), .A0N(n262), .A1N(n1657), .Y(n716)
         );
  AOI211X1 U1656 ( .A0(compare_table[7]), .A1(n718), .B0(n1563), .C0(n719), 
        .Y(n717) );
  CLKINVX1 U1657 ( .A(n782), .Y(n1637) );
  OAI211X1 U1658 ( .A0(n1552), .A1(n783), .B0(n784), .C0(n785), .Y(n782) );
  AOI2BB2X1 U1659 ( .B0(n788), .B1(n1555), .A0N(n266), .A1N(n1657), .Y(n784)
         );
  AOI211X1 U1660 ( .A0(compare_table[11]), .A1(n786), .B0(n1564), .C0(n787), 
        .Y(n785) );
  CLKINVX1 U1661 ( .A(n918), .Y(n1646) );
  OAI211X1 U1662 ( .A0(n1552), .A1(n919), .B0(n920), .C0(n921), .Y(n918) );
  AOI22X1 U1663 ( .A0(n924), .A1(n1555), .B0(str_space[24]), .B1(n1475), .Y(
        n920) );
  AOI211X1 U1664 ( .A0(compare_table[23]), .A1(n922), .B0(n1564), .C0(n923), 
        .Y(n921) );
  CLKINVX1 U1665 ( .A(n850), .Y(n1642) );
  OAI211X1 U1666 ( .A0(n1552), .A1(n851), .B0(n852), .C0(n853), .Y(n850) );
  AOI22X1 U1667 ( .A0(n856), .A1(n1555), .B0(str_space[28]), .B1(n1475), .Y(
        n852) );
  AOI211X1 U1668 ( .A0(compare_table[27]), .A1(n854), .B0(n1564), .C0(n855), 
        .Y(n853) );
  CLKINVX1 U1669 ( .A(n833), .Y(n1641) );
  OAI211X1 U1670 ( .A0(n1552), .A1(n834), .B0(n835), .C0(n836), .Y(n833) );
  AOI22X1 U1671 ( .A0(n839), .A1(n1556), .B0(str_space[29]), .B1(n1475), .Y(
        n835) );
  AOI211X1 U1672 ( .A0(compare_table[28]), .A1(n837), .B0(n1564), .C0(n838), 
        .Y(n836) );
  NOR2X1 U1673 ( .A(n347), .B(n246), .Y(N391) );
  NOR2X1 U1674 ( .A(n347), .B(n245), .Y(N392) );
  NOR2X1 U1675 ( .A(n347), .B(n244), .Y(N393) );
  OAI2BB2XL U1676 ( .B0(isstring), .B1(n1471), .A0N(N360), .A1N(isstring), .Y(
        N365) );
  NOR2X1 U1677 ( .A(n445), .B(n1471), .Y(N387) );
  OAI2BB2XL U1678 ( .B0(isstring), .B1(n1470), .A0N(n1470), .A1N(isstring), 
        .Y(N364) );
  NOR2X1 U1679 ( .A(n445), .B(n1470), .Y(N386) );
  OAI22XL U1680 ( .A0(n319), .A1(n1585), .B0(n1639), .B1(n327), .Y(n1100) );
  CLKINVX1 U1681 ( .A(n337), .Y(n1639) );
  OAI22XL U1682 ( .A0(n318), .A1(n1585), .B0(n1638), .B1(n327), .Y(n1099) );
  CLKINVX1 U1683 ( .A(n336), .Y(n1638) );
  OAI22XL U1684 ( .A0(n311), .A1(n1585), .B0(n1650), .B1(n1584), .Y(n1092) );
  CLKINVX1 U1685 ( .A(n335), .Y(n1650) );
  OAI22XL U1686 ( .A0(n310), .A1(n1585), .B0(n1649), .B1(n1584), .Y(n1091) );
  CLKINVX1 U1687 ( .A(n334), .Y(n1649) );
  OAI22XL U1688 ( .A0(n309), .A1(n1424), .B0(n1648), .B1(n1584), .Y(n1090) );
  CLKINVX1 U1689 ( .A(n333), .Y(n1648) );
  OAI22XL U1690 ( .A0(n308), .A1(n1424), .B0(n1647), .B1(n1584), .Y(n1089) );
  CLKINVX1 U1691 ( .A(n332), .Y(n1647) );
  OAI22XL U1692 ( .A0(n307), .A1(n1586), .B0(n1654), .B1(n1584), .Y(n1088) );
  CLKINVX1 U1693 ( .A(n331), .Y(n1654) );
  OAI22XL U1694 ( .A0(n306), .A1(n1586), .B0(n1653), .B1(n1584), .Y(n1087) );
  CLKINVX1 U1695 ( .A(n330), .Y(n1653) );
  OAI22XL U1696 ( .A0(n305), .A1(n1586), .B0(n1652), .B1(n1584), .Y(n1086) );
  CLKINVX1 U1697 ( .A(n329), .Y(n1652) );
  OAI22XL U1698 ( .A0(n304), .A1(n1586), .B0(n1651), .B1(n1584), .Y(n1085) );
  CLKINVX1 U1699 ( .A(n328), .Y(n1651) );
  OAI22XL U1700 ( .A0(n315), .A1(n1585), .B0(n1643), .B1(n327), .Y(n1096) );
  OAI22XL U1701 ( .A0(n303), .A1(n1586), .B0(n1634), .B1(n1584), .Y(n1084) );
  OAI22XL U1702 ( .A0(n299), .A1(n1586), .B0(n1630), .B1(n1584), .Y(n1080) );
  OAI22XL U1703 ( .A0(n295), .A1(n1586), .B0(n1626), .B1(n1584), .Y(n1076) );
  OAI22XL U1704 ( .A0(n291), .A1(n1586), .B0(n1623), .B1(n1584), .Y(n1072) );
  OAI22XL U1705 ( .A0(n314), .A1(n1585), .B0(n1644), .B1(n327), .Y(n1095) );
  OAI22XL U1706 ( .A0(n313), .A1(n1585), .B0(n1645), .B1(n327), .Y(n1094) );
  OAI22XL U1707 ( .A0(n302), .A1(n1586), .B0(n1635), .B1(n327), .Y(n1083) );
  OAI22XL U1708 ( .A0(n312), .A1(n1585), .B0(n1646), .B1(n327), .Y(n1093) );
  OAI22XL U1709 ( .A0(n301), .A1(n1586), .B0(n1636), .B1(n327), .Y(n1082) );
  OAI22XL U1710 ( .A0(n298), .A1(n1586), .B0(n1631), .B1(n1584), .Y(n1079) );
  OAI22XL U1711 ( .A0(n294), .A1(n1585), .B0(n1627), .B1(n1584), .Y(n1075) );
  OAI22XL U1712 ( .A0(n300), .A1(n1586), .B0(n1637), .B1(n327), .Y(n1081) );
  OAI22XL U1713 ( .A0(n297), .A1(n1586), .B0(n1632), .B1(n1584), .Y(n1078) );
  OAI22XL U1714 ( .A0(n293), .A1(n1585), .B0(n1628), .B1(n1584), .Y(n1074) );
  OAI22XL U1715 ( .A0(n290), .A1(n1424), .B0(n1624), .B1(n1584), .Y(n1071) );
  OAI22XL U1716 ( .A0(n296), .A1(n1586), .B0(n1633), .B1(n1584), .Y(n1077) );
  OAI22XL U1717 ( .A0(n292), .A1(n1424), .B0(n1629), .B1(n1584), .Y(n1073) );
  OAI22XL U1718 ( .A0(n289), .A1(n1424), .B0(n1625), .B1(n1584), .Y(n1070) );
  OAI22XL U1719 ( .A0(n286), .A1(n1424), .B0(n1656), .B1(n1584), .Y(n1069) );
  OAI22XL U1720 ( .A0(n316), .A1(n1585), .B0(n1642), .B1(n327), .Y(n1097) );
  OAI22XL U1721 ( .A0(n317), .A1(n1585), .B0(n1641), .B1(n327), .Y(n1098) );
  NAND2X1 U1722 ( .A(pat_addr[0]), .B(ispattern), .Y(n1068) );
  CLKINVX1 U1723 ( .A(n569), .Y(n1656) );
  OAI211X1 U1724 ( .A0(n570), .A1(n571), .B0(n572), .C0(n573), .Y(n569) );
  NAND4X1 U1725 ( .A(n580), .B(n581), .C(n582), .D(n583), .Y(n571) );
  NAND4X1 U1726 ( .A(str_space[1]), .B(compare_table[0]), .C(n578), .D(n577), 
        .Y(n572) );
  OAI2BB2XL U1727 ( .B0(n1663), .B1(n1597), .A0N(\str[0][5] ), .A1N(n1663), 
        .Y(n1387) );
  NAND4X1 U1728 ( .A(n584), .B(n585), .C(n586), .D(n587), .Y(n570) );
  XNOR2X1 U1729 ( .A(\str[0][4] ), .B(chardata[4]), .Y(n584) );
  XNOR2X1 U1730 ( .A(\str[0][6] ), .B(chardata[6]), .Y(n586) );
  NOR2X1 U1731 ( .A(n588), .B(n589), .Y(n587) );
  OAI2BB2XL U1732 ( .B0(n1505), .B1(n1580), .A0N(\str[30][0] ), .A1N(n1505), 
        .Y(n1142) );
  OAI2BB2XL U1733 ( .B0(n1505), .B1(n1578), .A0N(\str[30][1] ), .A1N(n1505), 
        .Y(n1143) );
  OAI2BB2XL U1734 ( .B0(n1505), .B1(n1576), .A0N(\str[30][2] ), .A1N(n1505), 
        .Y(n1144) );
  OAI2BB2XL U1735 ( .B0(n1505), .B1(n1574), .A0N(\str[30][3] ), .A1N(n1505), 
        .Y(n1145) );
  OAI2BB2XL U1736 ( .B0(n1505), .B1(n1572), .A0N(\str[30][4] ), .A1N(n1505), 
        .Y(n1146) );
  OAI2BB2XL U1737 ( .B0(n1505), .B1(n1570), .A0N(\str[30][5] ), .A1N(n1505), 
        .Y(n1147) );
  OAI2BB2XL U1738 ( .B0(n1505), .B1(n1568), .A0N(\str[30][6] ), .A1N(n1505), 
        .Y(n1148) );
  OAI2BB2XL U1739 ( .B0(n1505), .B1(n1566), .A0N(\str[30][7] ), .A1N(n1505), 
        .Y(n1149) );
  OAI2BB2XL U1740 ( .B0(n1504), .B1(n1579), .A0N(\str[29][0] ), .A1N(n1504), 
        .Y(n1150) );
  OAI2BB2XL U1741 ( .B0(n1504), .B1(n1577), .A0N(\str[29][1] ), .A1N(n1504), 
        .Y(n1151) );
  OAI2BB2XL U1742 ( .B0(n1504), .B1(n1575), .A0N(\str[29][2] ), .A1N(n1504), 
        .Y(n1152) );
  OAI2BB2XL U1743 ( .B0(n1504), .B1(n1573), .A0N(\str[29][3] ), .A1N(n1504), 
        .Y(n1153) );
  OAI2BB2XL U1744 ( .B0(n1504), .B1(n1571), .A0N(\str[29][4] ), .A1N(n1504), 
        .Y(n1154) );
  OAI2BB2XL U1745 ( .B0(n1504), .B1(n1569), .A0N(\str[29][5] ), .A1N(n1504), 
        .Y(n1155) );
  OAI2BB2XL U1746 ( .B0(n1504), .B1(n1567), .A0N(\str[29][6] ), .A1N(n1504), 
        .Y(n1156) );
  OAI2BB2XL U1747 ( .B0(n1504), .B1(n1565), .A0N(\str[29][7] ), .A1N(n1504), 
        .Y(n1157) );
  OAI2BB2XL U1748 ( .B0(n1503), .B1(n400), .A0N(\str[28][0] ), .A1N(n1503), 
        .Y(n1158) );
  OAI2BB2XL U1749 ( .B0(n1503), .B1(n401), .A0N(\str[28][1] ), .A1N(n1503), 
        .Y(n1159) );
  OAI2BB2XL U1750 ( .B0(n1503), .B1(n402), .A0N(\str[28][2] ), .A1N(n1503), 
        .Y(n1160) );
  OAI2BB2XL U1751 ( .B0(n1503), .B1(n403), .A0N(\str[28][3] ), .A1N(n1503), 
        .Y(n1161) );
  OAI2BB2XL U1752 ( .B0(n1503), .B1(n404), .A0N(\str[28][4] ), .A1N(n1503), 
        .Y(n1162) );
  OAI2BB2XL U1753 ( .B0(n1503), .B1(n405), .A0N(\str[28][5] ), .A1N(n1503), 
        .Y(n1163) );
  OAI2BB2XL U1754 ( .B0(n1503), .B1(n406), .A0N(\str[28][6] ), .A1N(n1503), 
        .Y(n1164) );
  OAI2BB2XL U1755 ( .B0(n1503), .B1(n1566), .A0N(\str[28][7] ), .A1N(n1503), 
        .Y(n1165) );
  OAI2BB2XL U1756 ( .B0(n1502), .B1(n400), .A0N(\str[27][0] ), .A1N(n1502), 
        .Y(n1166) );
  OAI2BB2XL U1757 ( .B0(n1502), .B1(n401), .A0N(\str[27][1] ), .A1N(n1502), 
        .Y(n1167) );
  OAI2BB2XL U1758 ( .B0(n1502), .B1(n402), .A0N(\str[27][2] ), .A1N(n1502), 
        .Y(n1168) );
  OAI2BB2XL U1759 ( .B0(n1502), .B1(n403), .A0N(\str[27][3] ), .A1N(n1502), 
        .Y(n1169) );
  OAI2BB2XL U1760 ( .B0(n1502), .B1(n404), .A0N(\str[27][4] ), .A1N(n1502), 
        .Y(n1170) );
  OAI2BB2XL U1761 ( .B0(n1502), .B1(n405), .A0N(\str[27][5] ), .A1N(n1502), 
        .Y(n1171) );
  OAI2BB2XL U1762 ( .B0(n1502), .B1(n406), .A0N(\str[27][6] ), .A1N(n1502), 
        .Y(n1172) );
  OAI2BB2XL U1763 ( .B0(n1502), .B1(n1565), .A0N(\str[27][7] ), .A1N(n1502), 
        .Y(n1173) );
  OAI2BB2XL U1764 ( .B0(n1501), .B1(n400), .A0N(\str[26][0] ), .A1N(n1501), 
        .Y(n1174) );
  OAI2BB2XL U1765 ( .B0(n1501), .B1(n401), .A0N(\str[26][1] ), .A1N(n1501), 
        .Y(n1175) );
  OAI2BB2XL U1766 ( .B0(n1501), .B1(n402), .A0N(\str[26][2] ), .A1N(n1501), 
        .Y(n1176) );
  OAI2BB2XL U1767 ( .B0(n1501), .B1(n403), .A0N(\str[26][3] ), .A1N(n1501), 
        .Y(n1177) );
  OAI2BB2XL U1768 ( .B0(n1501), .B1(n404), .A0N(\str[26][4] ), .A1N(n1501), 
        .Y(n1178) );
  OAI2BB2XL U1769 ( .B0(n1501), .B1(n405), .A0N(\str[26][5] ), .A1N(n1501), 
        .Y(n1179) );
  OAI2BB2XL U1770 ( .B0(n1501), .B1(n406), .A0N(\str[26][6] ), .A1N(n1501), 
        .Y(n1180) );
  OAI2BB2XL U1771 ( .B0(n1501), .B1(n407), .A0N(\str[26][7] ), .A1N(n1501), 
        .Y(n1181) );
  OAI2BB2XL U1772 ( .B0(n1500), .B1(n400), .A0N(\str[25][0] ), .A1N(n1500), 
        .Y(n1182) );
  OAI2BB2XL U1773 ( .B0(n1500), .B1(n401), .A0N(\str[25][1] ), .A1N(n1500), 
        .Y(n1183) );
  OAI2BB2XL U1774 ( .B0(n1500), .B1(n402), .A0N(\str[25][2] ), .A1N(n1500), 
        .Y(n1184) );
  OAI2BB2XL U1775 ( .B0(n1500), .B1(n403), .A0N(\str[25][3] ), .A1N(n1500), 
        .Y(n1185) );
  OAI2BB2XL U1776 ( .B0(n1500), .B1(n404), .A0N(\str[25][4] ), .A1N(n1500), 
        .Y(n1186) );
  OAI2BB2XL U1777 ( .B0(n1500), .B1(n405), .A0N(\str[25][5] ), .A1N(n1500), 
        .Y(n1187) );
  OAI2BB2XL U1778 ( .B0(n1500), .B1(n406), .A0N(\str[25][6] ), .A1N(n1500), 
        .Y(n1188) );
  OAI2BB2XL U1779 ( .B0(n1500), .B1(n407), .A0N(\str[25][7] ), .A1N(n1500), 
        .Y(n1189) );
  OAI2BB2XL U1780 ( .B0(n1497), .B1(n1580), .A0N(\str[22][0] ), .A1N(n1497), 
        .Y(n1206) );
  OAI2BB2XL U1781 ( .B0(n1497), .B1(n1578), .A0N(\str[22][1] ), .A1N(n1497), 
        .Y(n1207) );
  OAI2BB2XL U1782 ( .B0(n1497), .B1(n1576), .A0N(\str[22][2] ), .A1N(n1497), 
        .Y(n1208) );
  OAI2BB2XL U1783 ( .B0(n1497), .B1(n1574), .A0N(\str[22][3] ), .A1N(n1497), 
        .Y(n1209) );
  OAI2BB2XL U1784 ( .B0(n1497), .B1(n1572), .A0N(\str[22][4] ), .A1N(n1497), 
        .Y(n1210) );
  OAI2BB2XL U1785 ( .B0(n1497), .B1(n1570), .A0N(\str[22][5] ), .A1N(n1497), 
        .Y(n1211) );
  OAI2BB2XL U1786 ( .B0(n1497), .B1(n1568), .A0N(\str[22][6] ), .A1N(n1497), 
        .Y(n1212) );
  OAI2BB2XL U1787 ( .B0(n1497), .B1(n1566), .A0N(\str[22][7] ), .A1N(n1497), 
        .Y(n1213) );
  OAI2BB2XL U1788 ( .B0(n1496), .B1(n1580), .A0N(\str[21][0] ), .A1N(n1496), 
        .Y(n1214) );
  OAI2BB2XL U1789 ( .B0(n1496), .B1(n1578), .A0N(\str[21][1] ), .A1N(n1496), 
        .Y(n1215) );
  OAI2BB2XL U1790 ( .B0(n1496), .B1(n1576), .A0N(\str[21][2] ), .A1N(n1496), 
        .Y(n1216) );
  OAI2BB2XL U1791 ( .B0(n1496), .B1(n1574), .A0N(\str[21][3] ), .A1N(n1496), 
        .Y(n1217) );
  OAI2BB2XL U1792 ( .B0(n1496), .B1(n1572), .A0N(\str[21][4] ), .A1N(n1496), 
        .Y(n1218) );
  OAI2BB2XL U1793 ( .B0(n1496), .B1(n1570), .A0N(\str[21][5] ), .A1N(n1496), 
        .Y(n1219) );
  OAI2BB2XL U1794 ( .B0(n1496), .B1(n1568), .A0N(\str[21][6] ), .A1N(n1496), 
        .Y(n1220) );
  OAI2BB2XL U1795 ( .B0(n1496), .B1(n1566), .A0N(\str[21][7] ), .A1N(n1496), 
        .Y(n1221) );
  OAI2BB2XL U1796 ( .B0(n1495), .B1(n1580), .A0N(\str[20][0] ), .A1N(n1495), 
        .Y(n1222) );
  OAI2BB2XL U1797 ( .B0(n1495), .B1(n1578), .A0N(\str[20][1] ), .A1N(n1495), 
        .Y(n1223) );
  OAI2BB2XL U1798 ( .B0(n1495), .B1(n1576), .A0N(\str[20][2] ), .A1N(n1495), 
        .Y(n1224) );
  OAI2BB2XL U1799 ( .B0(n1495), .B1(n1574), .A0N(\str[20][3] ), .A1N(n1495), 
        .Y(n1225) );
  OAI2BB2XL U1800 ( .B0(n1495), .B1(n1572), .A0N(\str[20][4] ), .A1N(n1495), 
        .Y(n1226) );
  OAI2BB2XL U1801 ( .B0(n1495), .B1(n1570), .A0N(\str[20][5] ), .A1N(n1495), 
        .Y(n1227) );
  OAI2BB2XL U1802 ( .B0(n1495), .B1(n1568), .A0N(\str[20][6] ), .A1N(n1495), 
        .Y(n1228) );
  OAI2BB2XL U1803 ( .B0(n1495), .B1(n1566), .A0N(\str[20][7] ), .A1N(n1495), 
        .Y(n1229) );
  OAI2BB2XL U1804 ( .B0(n1494), .B1(n1580), .A0N(\str[19][0] ), .A1N(n1494), 
        .Y(n1230) );
  OAI2BB2XL U1805 ( .B0(n1494), .B1(n1578), .A0N(\str[19][1] ), .A1N(n1494), 
        .Y(n1231) );
  OAI2BB2XL U1806 ( .B0(n1494), .B1(n1576), .A0N(\str[19][2] ), .A1N(n1494), 
        .Y(n1232) );
  OAI2BB2XL U1807 ( .B0(n1494), .B1(n1574), .A0N(\str[19][3] ), .A1N(n1494), 
        .Y(n1233) );
  OAI2BB2XL U1808 ( .B0(n1494), .B1(n1572), .A0N(\str[19][4] ), .A1N(n1494), 
        .Y(n1234) );
  OAI2BB2XL U1809 ( .B0(n1494), .B1(n1570), .A0N(\str[19][5] ), .A1N(n1494), 
        .Y(n1235) );
  OAI2BB2XL U1810 ( .B0(n1494), .B1(n1568), .A0N(\str[19][6] ), .A1N(n1494), 
        .Y(n1236) );
  OAI2BB2XL U1811 ( .B0(n1494), .B1(n1566), .A0N(\str[19][7] ), .A1N(n1494), 
        .Y(n1237) );
  OAI2BB2XL U1812 ( .B0(n1493), .B1(n1580), .A0N(\str[18][0] ), .A1N(n1493), 
        .Y(n1238) );
  OAI2BB2XL U1813 ( .B0(n1493), .B1(n1578), .A0N(\str[18][1] ), .A1N(n1493), 
        .Y(n1239) );
  OAI2BB2XL U1814 ( .B0(n1493), .B1(n1576), .A0N(\str[18][2] ), .A1N(n1493), 
        .Y(n1240) );
  OAI2BB2XL U1815 ( .B0(n1493), .B1(n1574), .A0N(\str[18][3] ), .A1N(n1493), 
        .Y(n1241) );
  OAI2BB2XL U1816 ( .B0(n1493), .B1(n1572), .A0N(\str[18][4] ), .A1N(n1493), 
        .Y(n1242) );
  OAI2BB2XL U1817 ( .B0(n1493), .B1(n1570), .A0N(\str[18][5] ), .A1N(n1493), 
        .Y(n1243) );
  OAI2BB2XL U1818 ( .B0(n1493), .B1(n1568), .A0N(\str[18][6] ), .A1N(n1493), 
        .Y(n1244) );
  OAI2BB2XL U1819 ( .B0(n1493), .B1(n1566), .A0N(\str[18][7] ), .A1N(n1493), 
        .Y(n1245) );
  OAI2BB2XL U1820 ( .B0(n1492), .B1(n1580), .A0N(\str[17][0] ), .A1N(n1492), 
        .Y(n1246) );
  OAI2BB2XL U1821 ( .B0(n1492), .B1(n1578), .A0N(\str[17][1] ), .A1N(n1492), 
        .Y(n1247) );
  OAI2BB2XL U1822 ( .B0(n1492), .B1(n1576), .A0N(\str[17][2] ), .A1N(n1492), 
        .Y(n1248) );
  OAI2BB2XL U1823 ( .B0(n1492), .B1(n1574), .A0N(\str[17][3] ), .A1N(n1492), 
        .Y(n1249) );
  OAI2BB2XL U1824 ( .B0(n1492), .B1(n1572), .A0N(\str[17][4] ), .A1N(n1492), 
        .Y(n1250) );
  OAI2BB2XL U1825 ( .B0(n1492), .B1(n1570), .A0N(\str[17][5] ), .A1N(n1492), 
        .Y(n1251) );
  OAI2BB2XL U1826 ( .B0(n1492), .B1(n1568), .A0N(\str[17][6] ), .A1N(n1492), 
        .Y(n1252) );
  OAI2BB2XL U1827 ( .B0(n1492), .B1(n1566), .A0N(\str[17][7] ), .A1N(n1492), 
        .Y(n1253) );
  OAI2BB2XL U1828 ( .B0(n1489), .B1(n1580), .A0N(\str[14][0] ), .A1N(n1489), 
        .Y(n1270) );
  OAI2BB2XL U1829 ( .B0(n1489), .B1(n1578), .A0N(\str[14][1] ), .A1N(n1489), 
        .Y(n1271) );
  OAI2BB2XL U1830 ( .B0(n1489), .B1(n1576), .A0N(\str[14][2] ), .A1N(n1489), 
        .Y(n1272) );
  OAI2BB2XL U1831 ( .B0(n1489), .B1(n1574), .A0N(\str[14][3] ), .A1N(n1489), 
        .Y(n1273) );
  OAI2BB2XL U1832 ( .B0(n1489), .B1(n1572), .A0N(\str[14][4] ), .A1N(n1489), 
        .Y(n1274) );
  OAI2BB2XL U1833 ( .B0(n1489), .B1(n1570), .A0N(\str[14][5] ), .A1N(n1489), 
        .Y(n1275) );
  OAI2BB2XL U1834 ( .B0(n1489), .B1(n1568), .A0N(\str[14][6] ), .A1N(n1489), 
        .Y(n1276) );
  OAI2BB2XL U1835 ( .B0(n1489), .B1(n1566), .A0N(\str[14][7] ), .A1N(n1489), 
        .Y(n1277) );
  OAI2BB2XL U1836 ( .B0(n1488), .B1(n1580), .A0N(\str[13][0] ), .A1N(n1488), 
        .Y(n1278) );
  OAI2BB2XL U1837 ( .B0(n1488), .B1(n1578), .A0N(\str[13][1] ), .A1N(n1488), 
        .Y(n1279) );
  OAI2BB2XL U1838 ( .B0(n1488), .B1(n1576), .A0N(\str[13][2] ), .A1N(n1488), 
        .Y(n1280) );
  OAI2BB2XL U1839 ( .B0(n1488), .B1(n1574), .A0N(\str[13][3] ), .A1N(n1488), 
        .Y(n1281) );
  OAI2BB2XL U1840 ( .B0(n1488), .B1(n1572), .A0N(\str[13][4] ), .A1N(n1488), 
        .Y(n1282) );
  OAI2BB2XL U1841 ( .B0(n1488), .B1(n1570), .A0N(\str[13][5] ), .A1N(n1488), 
        .Y(n1283) );
  OAI2BB2XL U1842 ( .B0(n1488), .B1(n1568), .A0N(\str[13][6] ), .A1N(n1488), 
        .Y(n1284) );
  OAI2BB2XL U1843 ( .B0(n1488), .B1(n1566), .A0N(\str[13][7] ), .A1N(n1488), 
        .Y(n1285) );
  OAI2BB2XL U1844 ( .B0(n1487), .B1(n1579), .A0N(\str[12][0] ), .A1N(n1487), 
        .Y(n1286) );
  OAI2BB2XL U1845 ( .B0(n1487), .B1(n1577), .A0N(\str[12][1] ), .A1N(n1487), 
        .Y(n1287) );
  OAI2BB2XL U1846 ( .B0(n1487), .B1(n1575), .A0N(\str[12][2] ), .A1N(n1487), 
        .Y(n1288) );
  OAI2BB2XL U1847 ( .B0(n1487), .B1(n1573), .A0N(\str[12][3] ), .A1N(n1487), 
        .Y(n1289) );
  OAI2BB2XL U1848 ( .B0(n1487), .B1(n1571), .A0N(\str[12][4] ), .A1N(n1487), 
        .Y(n1290) );
  OAI2BB2XL U1849 ( .B0(n1487), .B1(n1569), .A0N(\str[12][5] ), .A1N(n1487), 
        .Y(n1291) );
  OAI2BB2XL U1850 ( .B0(n1487), .B1(n1567), .A0N(\str[12][6] ), .A1N(n1487), 
        .Y(n1292) );
  OAI2BB2XL U1851 ( .B0(n1487), .B1(n1565), .A0N(\str[12][7] ), .A1N(n1487), 
        .Y(n1293) );
  OAI2BB2XL U1852 ( .B0(n1486), .B1(n1579), .A0N(\str[11][0] ), .A1N(n1486), 
        .Y(n1294) );
  OAI2BB2XL U1853 ( .B0(n1486), .B1(n1577), .A0N(\str[11][1] ), .A1N(n1486), 
        .Y(n1295) );
  OAI2BB2XL U1854 ( .B0(n1486), .B1(n1575), .A0N(\str[11][2] ), .A1N(n1486), 
        .Y(n1296) );
  OAI2BB2XL U1855 ( .B0(n1486), .B1(n1573), .A0N(\str[11][3] ), .A1N(n1486), 
        .Y(n1297) );
  OAI2BB2XL U1856 ( .B0(n1486), .B1(n1571), .A0N(\str[11][4] ), .A1N(n1486), 
        .Y(n1298) );
  OAI2BB2XL U1857 ( .B0(n1486), .B1(n1569), .A0N(\str[11][5] ), .A1N(n1486), 
        .Y(n1299) );
  OAI2BB2XL U1858 ( .B0(n1486), .B1(n1567), .A0N(\str[11][6] ), .A1N(n1486), 
        .Y(n1300) );
  OAI2BB2XL U1859 ( .B0(n1486), .B1(n1565), .A0N(\str[11][7] ), .A1N(n1486), 
        .Y(n1301) );
  OAI2BB2XL U1860 ( .B0(n1485), .B1(n1579), .A0N(\str[10][0] ), .A1N(n1485), 
        .Y(n1302) );
  OAI2BB2XL U1861 ( .B0(n1485), .B1(n1577), .A0N(\str[10][1] ), .A1N(n1485), 
        .Y(n1303) );
  OAI2BB2XL U1862 ( .B0(n1485), .B1(n1575), .A0N(\str[10][2] ), .A1N(n1485), 
        .Y(n1304) );
  OAI2BB2XL U1863 ( .B0(n1485), .B1(n1573), .A0N(\str[10][3] ), .A1N(n1485), 
        .Y(n1305) );
  OAI2BB2XL U1864 ( .B0(n1485), .B1(n1571), .A0N(\str[10][4] ), .A1N(n1485), 
        .Y(n1306) );
  OAI2BB2XL U1865 ( .B0(n1485), .B1(n1569), .A0N(\str[10][5] ), .A1N(n1485), 
        .Y(n1307) );
  OAI2BB2XL U1866 ( .B0(n1485), .B1(n1567), .A0N(\str[10][6] ), .A1N(n1485), 
        .Y(n1308) );
  OAI2BB2XL U1867 ( .B0(n1485), .B1(n1565), .A0N(\str[10][7] ), .A1N(n1485), 
        .Y(n1309) );
  OAI2BB2XL U1868 ( .B0(n1484), .B1(n1579), .A0N(\str[9][0] ), .A1N(n1484), 
        .Y(n1310) );
  OAI2BB2XL U1869 ( .B0(n1484), .B1(n1577), .A0N(\str[9][1] ), .A1N(n1484), 
        .Y(n1311) );
  OAI2BB2XL U1870 ( .B0(n1484), .B1(n1575), .A0N(\str[9][2] ), .A1N(n1484), 
        .Y(n1312) );
  OAI2BB2XL U1871 ( .B0(n1484), .B1(n1573), .A0N(\str[9][3] ), .A1N(n1484), 
        .Y(n1313) );
  OAI2BB2XL U1872 ( .B0(n1484), .B1(n1571), .A0N(\str[9][4] ), .A1N(n1484), 
        .Y(n1314) );
  OAI2BB2XL U1873 ( .B0(n1484), .B1(n1569), .A0N(\str[9][5] ), .A1N(n1484), 
        .Y(n1315) );
  OAI2BB2XL U1874 ( .B0(n1484), .B1(n1567), .A0N(\str[9][6] ), .A1N(n1484), 
        .Y(n1316) );
  OAI2BB2XL U1875 ( .B0(n1484), .B1(n1565), .A0N(\str[9][7] ), .A1N(n1484), 
        .Y(n1317) );
  OAI2BB2XL U1876 ( .B0(n1481), .B1(n1579), .A0N(\str[6][0] ), .A1N(n1481), 
        .Y(n1334) );
  OAI2BB2XL U1877 ( .B0(n1481), .B1(n1577), .A0N(\str[6][1] ), .A1N(n1481), 
        .Y(n1335) );
  OAI2BB2XL U1878 ( .B0(n1481), .B1(n1575), .A0N(\str[6][2] ), .A1N(n1481), 
        .Y(n1336) );
  OAI2BB2XL U1879 ( .B0(n1481), .B1(n1573), .A0N(\str[6][3] ), .A1N(n1481), 
        .Y(n1337) );
  OAI2BB2XL U1880 ( .B0(n1481), .B1(n1571), .A0N(\str[6][4] ), .A1N(n1481), 
        .Y(n1338) );
  OAI2BB2XL U1881 ( .B0(n1481), .B1(n1569), .A0N(\str[6][5] ), .A1N(n1481), 
        .Y(n1339) );
  OAI2BB2XL U1882 ( .B0(n1481), .B1(n1567), .A0N(\str[6][6] ), .A1N(n1481), 
        .Y(n1340) );
  OAI2BB2XL U1883 ( .B0(n1481), .B1(n1565), .A0N(\str[6][7] ), .A1N(n1481), 
        .Y(n1341) );
  OAI2BB2XL U1884 ( .B0(n1480), .B1(n1579), .A0N(\str[5][0] ), .A1N(n1480), 
        .Y(n1342) );
  OAI2BB2XL U1885 ( .B0(n1480), .B1(n1577), .A0N(\str[5][1] ), .A1N(n1480), 
        .Y(n1343) );
  OAI2BB2XL U1886 ( .B0(n1480), .B1(n1575), .A0N(\str[5][2] ), .A1N(n1480), 
        .Y(n1344) );
  OAI2BB2XL U1887 ( .B0(n1480), .B1(n1573), .A0N(\str[5][3] ), .A1N(n1480), 
        .Y(n1345) );
  OAI2BB2XL U1888 ( .B0(n1480), .B1(n1571), .A0N(\str[5][4] ), .A1N(n1480), 
        .Y(n1346) );
  OAI2BB2XL U1889 ( .B0(n1480), .B1(n1569), .A0N(\str[5][5] ), .A1N(n1480), 
        .Y(n1347) );
  OAI2BB2XL U1890 ( .B0(n1480), .B1(n1567), .A0N(\str[5][6] ), .A1N(n1480), 
        .Y(n1348) );
  OAI2BB2XL U1891 ( .B0(n1480), .B1(n1565), .A0N(\str[5][7] ), .A1N(n1480), 
        .Y(n1349) );
  OAI2BB2XL U1892 ( .B0(n1479), .B1(n1579), .A0N(\str[4][0] ), .A1N(n1479), 
        .Y(n1350) );
  OAI2BB2XL U1893 ( .B0(n1479), .B1(n1577), .A0N(\str[4][1] ), .A1N(n1479), 
        .Y(n1351) );
  OAI2BB2XL U1894 ( .B0(n1479), .B1(n1575), .A0N(\str[4][2] ), .A1N(n1479), 
        .Y(n1352) );
  OAI2BB2XL U1895 ( .B0(n1479), .B1(n1573), .A0N(\str[4][3] ), .A1N(n1479), 
        .Y(n1353) );
  OAI2BB2XL U1896 ( .B0(n1479), .B1(n1571), .A0N(\str[4][4] ), .A1N(n1479), 
        .Y(n1354) );
  OAI2BB2XL U1897 ( .B0(n1479), .B1(n1569), .A0N(\str[4][5] ), .A1N(n1479), 
        .Y(n1355) );
  OAI2BB2XL U1898 ( .B0(n1479), .B1(n1567), .A0N(\str[4][6] ), .A1N(n1479), 
        .Y(n1356) );
  OAI2BB2XL U1899 ( .B0(n1479), .B1(n1565), .A0N(\str[4][7] ), .A1N(n1479), 
        .Y(n1357) );
  OAI2BB2XL U1900 ( .B0(n1478), .B1(n1579), .A0N(\str[3][0] ), .A1N(n1478), 
        .Y(n1358) );
  OAI2BB2XL U1901 ( .B0(n1478), .B1(n1577), .A0N(\str[3][1] ), .A1N(n1478), 
        .Y(n1359) );
  OAI2BB2XL U1902 ( .B0(n1478), .B1(n1575), .A0N(\str[3][2] ), .A1N(n1478), 
        .Y(n1360) );
  OAI2BB2XL U1903 ( .B0(n1478), .B1(n1573), .A0N(\str[3][3] ), .A1N(n1478), 
        .Y(n1361) );
  OAI2BB2XL U1904 ( .B0(n1478), .B1(n1571), .A0N(\str[3][4] ), .A1N(n1478), 
        .Y(n1362) );
  OAI2BB2XL U1905 ( .B0(n1478), .B1(n1569), .A0N(\str[3][5] ), .A1N(n1478), 
        .Y(n1363) );
  OAI2BB2XL U1906 ( .B0(n1478), .B1(n1567), .A0N(\str[3][6] ), .A1N(n1478), 
        .Y(n1364) );
  OAI2BB2XL U1907 ( .B0(n1478), .B1(n1565), .A0N(\str[3][7] ), .A1N(n1478), 
        .Y(n1365) );
  OAI2BB2XL U1908 ( .B0(n1477), .B1(n1579), .A0N(\str[2][0] ), .A1N(n1477), 
        .Y(n1366) );
  OAI2BB2XL U1909 ( .B0(n1477), .B1(n1577), .A0N(\str[2][1] ), .A1N(n1477), 
        .Y(n1367) );
  OAI2BB2XL U1910 ( .B0(n1477), .B1(n1575), .A0N(\str[2][2] ), .A1N(n1477), 
        .Y(n1368) );
  OAI2BB2XL U1911 ( .B0(n1477), .B1(n1573), .A0N(\str[2][3] ), .A1N(n1477), 
        .Y(n1369) );
  OAI2BB2XL U1912 ( .B0(n1477), .B1(n1571), .A0N(\str[2][4] ), .A1N(n1477), 
        .Y(n1370) );
  OAI2BB2XL U1913 ( .B0(n1477), .B1(n1569), .A0N(\str[2][5] ), .A1N(n1477), 
        .Y(n1371) );
  OAI2BB2XL U1914 ( .B0(n1477), .B1(n1567), .A0N(\str[2][6] ), .A1N(n1477), 
        .Y(n1372) );
  OAI2BB2XL U1915 ( .B0(n1477), .B1(n1565), .A0N(\str[2][7] ), .A1N(n1477), 
        .Y(n1373) );
  OAI2BB2XL U1916 ( .B0(n1476), .B1(n1579), .A0N(\str[1][0] ), .A1N(n1476), 
        .Y(n1374) );
  OAI2BB2XL U1917 ( .B0(n1476), .B1(n1577), .A0N(\str[1][1] ), .A1N(n1476), 
        .Y(n1375) );
  OAI2BB2XL U1918 ( .B0(n1476), .B1(n1575), .A0N(\str[1][2] ), .A1N(n1476), 
        .Y(n1376) );
  OAI2BB2XL U1919 ( .B0(n1476), .B1(n1573), .A0N(\str[1][3] ), .A1N(n1476), 
        .Y(n1377) );
  OAI2BB2XL U1920 ( .B0(n1476), .B1(n1571), .A0N(\str[1][4] ), .A1N(n1476), 
        .Y(n1378) );
  OAI2BB2XL U1921 ( .B0(n1476), .B1(n1569), .A0N(\str[1][5] ), .A1N(n1476), 
        .Y(n1379) );
  OAI2BB2XL U1922 ( .B0(n1476), .B1(n1567), .A0N(\str[1][6] ), .A1N(n1476), 
        .Y(n1380) );
  OAI2BB2XL U1923 ( .B0(n1476), .B1(n1565), .A0N(\str[1][7] ), .A1N(n1476), 
        .Y(n1381) );
  NOR2X1 U1924 ( .A(n245), .B(n1068), .Y(n1067) );
  OAI2BB2XL U1925 ( .B0(isstring), .B1(n1472), .A0N(N361), .A1N(isstring), .Y(
        N366) );
  NOR2X1 U1926 ( .A(n445), .B(n1472), .Y(N388) );
  NOR2X1 U1927 ( .A(n1670), .B(n246), .Y(N369) );
  NOR2X1 U1928 ( .A(n1670), .B(n245), .Y(N370) );
  NOR2X1 U1929 ( .A(n1670), .B(n244), .Y(N371) );
  AO22X1 U1930 ( .A0(n442), .A1(chardata[0]), .B0(\str[0][0] ), .B1(n1663), 
        .Y(n1382) );
  AO22X1 U1931 ( .A0(n442), .A1(chardata[1]), .B0(\str[0][1] ), .B1(n1663), 
        .Y(n1383) );
  AO22X1 U1932 ( .A0(n442), .A1(chardata[2]), .B0(\str[0][2] ), .B1(n1663), 
        .Y(n1384) );
  AO22X1 U1933 ( .A0(n442), .A1(chardata[3]), .B0(\str[0][3] ), .B1(n1663), 
        .Y(n1385) );
  AO22X1 U1934 ( .A0(n442), .A1(chardata[4]), .B0(\str[0][4] ), .B1(n1663), 
        .Y(n1386) );
  AO22X1 U1935 ( .A0(n442), .A1(chardata[6]), .B0(\str[0][6] ), .B1(n1663), 
        .Y(n1388) );
  AO22X1 U1936 ( .A0(n442), .A1(chardata[7]), .B0(\str[0][7] ), .B1(n1663), 
        .Y(n1389) );
  OAI2BB2XL U1937 ( .B0(isstring), .B1(n1474), .A0N(N363), .A1N(isstring), .Y(
        N368) );
  NOR2X1 U1938 ( .A(n445), .B(n1474), .Y(N390) );
  OAI2BB2XL U1939 ( .B0(isstring), .B1(n1473), .A0N(N362), .A1N(isstring), .Y(
        N367) );
  NOR2X1 U1940 ( .A(n445), .B(n1473), .Y(N389) );
  OAI2BB2XL U1941 ( .B0(n277), .B1(n367), .A0N(n367), .A1N(n1558), .Y(n1111)
         );
  OAI21XL U1942 ( .A0(n350), .A1(n368), .B0(n1583), .Y(n367) );
  OAI2BB2XL U1943 ( .B0(n269), .B1(n377), .A0N(n377), .A1N(n1558), .Y(n1119)
         );
  OAI21XL U1944 ( .A0(n350), .A1(n378), .B0(n1583), .Y(n377) );
  OAI2BB2XL U1945 ( .B0(n284), .B1(n351), .A0N(n351), .A1N(n1558), .Y(n1104)
         );
  OAI21XL U1946 ( .A0(n349), .A1(n352), .B0(n1583), .Y(n351) );
  OAI2BB2XL U1947 ( .B0(n283), .B1(n353), .A0N(n353), .A1N(n1558), .Y(n1105)
         );
  OAI21XL U1948 ( .A0(n349), .A1(n354), .B0(n1583), .Y(n353) );
  OAI2BB2XL U1949 ( .B0(n281), .B1(n357), .A0N(n357), .A1N(n1558), .Y(n1107)
         );
  OAI21XL U1950 ( .A0(n349), .A1(n358), .B0(n1583), .Y(n357) );
  OAI2BB2XL U1951 ( .B0(n274), .B1(n371), .A0N(n371), .A1N(n1558), .Y(n1114)
         );
  OAI21XL U1952 ( .A0(n356), .A1(n368), .B0(n1583), .Y(n371) );
  OAI2BB2XL U1953 ( .B0(n266), .B1(n381), .A0N(n381), .A1N(n1557), .Y(n1122)
         );
  OAI21XL U1954 ( .A0(n356), .A1(n378), .B0(n1581), .Y(n381) );
  OAI2BB2XL U1955 ( .B0(n258), .B1(n391), .A0N(n391), .A1N(n1558), .Y(n1130)
         );
  OAI21XL U1956 ( .A0(n356), .A1(n388), .B0(n1581), .Y(n391) );
  OAI2BB1X1 U1957 ( .A0N(n443), .A1N(n1619), .B0(n1582), .Y(ns[0]) );
  OAI22XL U1958 ( .A0(ispattern), .A1(cs[0]), .B0(cs[1]), .B1(n444), .Y(n443)
         );
  NOR2X1 U1959 ( .A(isstring), .B(n1621), .Y(n444) );
  CLKBUFX3 U1960 ( .A(chardata[7]), .Y(n1599) );
  CLKBUFX3 U1961 ( .A(chardata[4]), .Y(n1595) );
  CLKBUFX3 U1962 ( .A(chardata[6]), .Y(n1598) );
  OAI2BB2XL U1963 ( .B0(n394), .B1(n395), .A0N(str_space[1]), .A1N(n394), .Y(
        n1133) );
  OA21XL U1964 ( .A0(n362), .A1(n388), .B0(n1583), .Y(n394) );
  OAI2BB2XL U1965 ( .B0(n276), .B1(n369), .A0N(n369), .A1N(n1558), .Y(n1112)
         );
  OAI21XL U1966 ( .A0(n352), .A1(n368), .B0(n1581), .Y(n369) );
  OAI2BB2XL U1967 ( .B0(n275), .B1(n370), .A0N(n370), .A1N(n1558), .Y(n1113)
         );
  OAI21XL U1968 ( .A0(n354), .A1(n368), .B0(n1581), .Y(n370) );
  OAI2BB2XL U1969 ( .B0(n273), .B1(n372), .A0N(n372), .A1N(n1558), .Y(n1115)
         );
  OAI21XL U1970 ( .A0(n358), .A1(n368), .B0(n1581), .Y(n372) );
  OAI2BB2XL U1971 ( .B0(n272), .B1(n373), .A0N(n373), .A1N(n1558), .Y(n1116)
         );
  OAI21XL U1972 ( .A0(n360), .A1(n368), .B0(n1583), .Y(n373) );
  OAI2BB2XL U1973 ( .B0(n271), .B1(n374), .A0N(n374), .A1N(n1558), .Y(n1117)
         );
  OAI21XL U1974 ( .A0(n362), .A1(n368), .B0(n1581), .Y(n374) );
  OAI2BB2XL U1975 ( .B0(n270), .B1(n375), .A0N(n375), .A1N(n1558), .Y(n1118)
         );
  OAI21XL U1976 ( .A0(n364), .A1(n368), .B0(n1583), .Y(n375) );
  OAI2BB2XL U1977 ( .B0(n268), .B1(n379), .A0N(n379), .A1N(n1557), .Y(n1120)
         );
  OAI21XL U1978 ( .A0(n352), .A1(n378), .B0(n1581), .Y(n379) );
  OAI2BB2XL U1979 ( .B0(n267), .B1(n380), .A0N(n380), .A1N(n1669), .Y(n1121)
         );
  OAI21XL U1980 ( .A0(n354), .A1(n378), .B0(n1581), .Y(n380) );
  OAI2BB2XL U1981 ( .B0(n265), .B1(n382), .A0N(n382), .A1N(n1669), .Y(n1123)
         );
  OAI21XL U1982 ( .A0(n358), .A1(n378), .B0(n1581), .Y(n382) );
  OAI2BB2XL U1983 ( .B0(n264), .B1(n383), .A0N(n383), .A1N(n1669), .Y(n1124)
         );
  OAI21XL U1984 ( .A0(n360), .A1(n378), .B0(n1581), .Y(n383) );
  OAI2BB2XL U1985 ( .B0(n263), .B1(n384), .A0N(n384), .A1N(n1669), .Y(n1125)
         );
  OAI21XL U1986 ( .A0(n362), .A1(n378), .B0(n1581), .Y(n384) );
  OAI2BB2XL U1987 ( .B0(n262), .B1(n385), .A0N(n385), .A1N(n1669), .Y(n1126)
         );
  OAI21XL U1988 ( .A0(n364), .A1(n378), .B0(n1581), .Y(n385) );
  OAI2BB2XL U1989 ( .B0(n285), .B1(n348), .A0N(n348), .A1N(n1558), .Y(n1103)
         );
  OAI21XL U1990 ( .A0(n349), .A1(n350), .B0(n1583), .Y(n348) );
  OAI2BB2XL U1991 ( .B0(n282), .B1(n355), .A0N(n355), .A1N(n1558), .Y(n1106)
         );
  OAI21XL U1992 ( .A0(n349), .A1(n356), .B0(n1583), .Y(n355) );
  OAI2BB2XL U1993 ( .B0(n280), .B1(n359), .A0N(n359), .A1N(n1558), .Y(n1108)
         );
  OAI21XL U1994 ( .A0(n349), .A1(n360), .B0(n1583), .Y(n359) );
  OAI2BB2XL U1995 ( .B0(n279), .B1(n361), .A0N(n361), .A1N(n1558), .Y(n1109)
         );
  OAI21XL U1996 ( .A0(n349), .A1(n362), .B0(n1583), .Y(n361) );
  OAI2BB2XL U1997 ( .B0(n278), .B1(n363), .A0N(n363), .A1N(n1558), .Y(n1110)
         );
  OAI21XL U1998 ( .A0(n349), .A1(n364), .B0(n1583), .Y(n363) );
  OAI2BB2XL U1999 ( .B0(n256), .B1(n393), .A0N(n393), .A1N(n1557), .Y(n1132)
         );
  OAI21XL U2000 ( .A0(n360), .A1(n388), .B0(n1583), .Y(n393) );
  OAI2BB2XL U2001 ( .B0(n261), .B1(n387), .A0N(n387), .A1N(n1558), .Y(n1127)
         );
  OAI21XL U2002 ( .A0(n350), .A1(n388), .B0(n1582), .Y(n387) );
  OAI2BB2XL U2003 ( .B0(n260), .B1(n389), .A0N(n389), .A1N(n1558), .Y(n1128)
         );
  OAI21XL U2004 ( .A0(n352), .A1(n388), .B0(n1581), .Y(n389) );
  OAI2BB2XL U2005 ( .B0(n259), .B1(n390), .A0N(n390), .A1N(n1558), .Y(n1129)
         );
  OAI21XL U2006 ( .A0(n354), .A1(n388), .B0(n1582), .Y(n390) );
  OAI2BB2XL U2007 ( .B0(n257), .B1(n392), .A0N(n392), .A1N(n1558), .Y(n1131)
         );
  OAI21XL U2008 ( .A0(n358), .A1(n388), .B0(n1583), .Y(n392) );
  OAI2BB2XL U2009 ( .B0(n1506), .B1(n400), .A0N(\str[31][0] ), .A1N(n1506), 
        .Y(n1134) );
  OAI2BB2XL U2010 ( .B0(n1506), .B1(n401), .A0N(\str[31][1] ), .A1N(n1506), 
        .Y(n1135) );
  OAI2BB2XL U2011 ( .B0(n1506), .B1(n402), .A0N(\str[31][2] ), .A1N(n1506), 
        .Y(n1136) );
  OAI2BB2XL U2012 ( .B0(n1506), .B1(n403), .A0N(\str[31][3] ), .A1N(n1506), 
        .Y(n1137) );
  OAI2BB2XL U2013 ( .B0(n1506), .B1(n404), .A0N(\str[31][4] ), .A1N(n1506), 
        .Y(n1138) );
  OAI2BB2XL U2014 ( .B0(n1506), .B1(n405), .A0N(\str[31][5] ), .A1N(n1506), 
        .Y(n1139) );
  OAI2BB2XL U2015 ( .B0(n1506), .B1(n406), .A0N(\str[31][6] ), .A1N(n1506), 
        .Y(n1140) );
  OAI2BB2XL U2016 ( .B0(n1506), .B1(n407), .A0N(\str[31][7] ), .A1N(n1506), 
        .Y(n1141) );
  OAI2BB2XL U2017 ( .B0(n1499), .B1(n1580), .A0N(\str[24][0] ), .A1N(n1499), 
        .Y(n1190) );
  OAI2BB2XL U2018 ( .B0(n1499), .B1(n1578), .A0N(\str[24][1] ), .A1N(n1499), 
        .Y(n1191) );
  OAI2BB2XL U2019 ( .B0(n1499), .B1(n1576), .A0N(\str[24][2] ), .A1N(n1499), 
        .Y(n1192) );
  OAI2BB2XL U2020 ( .B0(n1499), .B1(n1574), .A0N(\str[24][3] ), .A1N(n1499), 
        .Y(n1193) );
  OAI2BB2XL U2021 ( .B0(n1499), .B1(n1572), .A0N(\str[24][4] ), .A1N(n1499), 
        .Y(n1194) );
  OAI2BB2XL U2022 ( .B0(n1499), .B1(n1570), .A0N(\str[24][5] ), .A1N(n1499), 
        .Y(n1195) );
  OAI2BB2XL U2023 ( .B0(n1499), .B1(n1568), .A0N(\str[24][6] ), .A1N(n1499), 
        .Y(n1196) );
  OAI2BB2XL U2024 ( .B0(n1499), .B1(n1566), .A0N(\str[24][7] ), .A1N(n1499), 
        .Y(n1197) );
  OAI2BB2XL U2025 ( .B0(n1498), .B1(n1580), .A0N(\str[23][0] ), .A1N(n1498), 
        .Y(n1198) );
  OAI2BB2XL U2026 ( .B0(n1498), .B1(n1578), .A0N(\str[23][1] ), .A1N(n1498), 
        .Y(n1199) );
  OAI2BB2XL U2027 ( .B0(n1498), .B1(n1576), .A0N(\str[23][2] ), .A1N(n1498), 
        .Y(n1200) );
  OAI2BB2XL U2028 ( .B0(n1498), .B1(n1574), .A0N(\str[23][3] ), .A1N(n1498), 
        .Y(n1201) );
  OAI2BB2XL U2029 ( .B0(n1498), .B1(n1572), .A0N(\str[23][4] ), .A1N(n1498), 
        .Y(n1202) );
  OAI2BB2XL U2030 ( .B0(n1498), .B1(n1570), .A0N(\str[23][5] ), .A1N(n1498), 
        .Y(n1203) );
  OAI2BB2XL U2031 ( .B0(n1498), .B1(n1568), .A0N(\str[23][6] ), .A1N(n1498), 
        .Y(n1204) );
  OAI2BB2XL U2032 ( .B0(n1498), .B1(n1566), .A0N(\str[23][7] ), .A1N(n1498), 
        .Y(n1205) );
  OAI2BB2XL U2033 ( .B0(n1491), .B1(n1580), .A0N(\str[16][0] ), .A1N(n1491), 
        .Y(n1254) );
  OAI2BB2XL U2034 ( .B0(n1491), .B1(n1578), .A0N(\str[16][1] ), .A1N(n1491), 
        .Y(n1255) );
  OAI2BB2XL U2035 ( .B0(n1491), .B1(n1576), .A0N(\str[16][2] ), .A1N(n1491), 
        .Y(n1256) );
  OAI2BB2XL U2036 ( .B0(n1491), .B1(n1574), .A0N(\str[16][3] ), .A1N(n1491), 
        .Y(n1257) );
  OAI2BB2XL U2037 ( .B0(n1491), .B1(n1572), .A0N(\str[16][4] ), .A1N(n1491), 
        .Y(n1258) );
  OAI2BB2XL U2038 ( .B0(n1491), .B1(n1570), .A0N(\str[16][5] ), .A1N(n1491), 
        .Y(n1259) );
  OAI2BB2XL U2039 ( .B0(n1491), .B1(n1568), .A0N(\str[16][6] ), .A1N(n1491), 
        .Y(n1260) );
  OAI2BB2XL U2040 ( .B0(n1491), .B1(n1566), .A0N(\str[16][7] ), .A1N(n1491), 
        .Y(n1261) );
  OAI2BB2XL U2041 ( .B0(n1490), .B1(n1580), .A0N(\str[15][0] ), .A1N(n1490), 
        .Y(n1262) );
  OAI2BB2XL U2042 ( .B0(n1490), .B1(n1578), .A0N(\str[15][1] ), .A1N(n1490), 
        .Y(n1263) );
  OAI2BB2XL U2043 ( .B0(n1490), .B1(n1576), .A0N(\str[15][2] ), .A1N(n1490), 
        .Y(n1264) );
  OAI2BB2XL U2044 ( .B0(n1490), .B1(n1574), .A0N(\str[15][3] ), .A1N(n1490), 
        .Y(n1265) );
  OAI2BB2XL U2045 ( .B0(n1490), .B1(n1572), .A0N(\str[15][4] ), .A1N(n1490), 
        .Y(n1266) );
  OAI2BB2XL U2046 ( .B0(n1490), .B1(n1570), .A0N(\str[15][5] ), .A1N(n1490), 
        .Y(n1267) );
  OAI2BB2XL U2047 ( .B0(n1490), .B1(n1568), .A0N(\str[15][6] ), .A1N(n1490), 
        .Y(n1268) );
  OAI2BB2XL U2048 ( .B0(n1490), .B1(n1566), .A0N(\str[15][7] ), .A1N(n1490), 
        .Y(n1269) );
  OAI2BB2XL U2049 ( .B0(n1483), .B1(n1579), .A0N(\str[8][0] ), .A1N(n1483), 
        .Y(n1318) );
  OAI2BB2XL U2050 ( .B0(n1483), .B1(n1577), .A0N(\str[8][1] ), .A1N(n1483), 
        .Y(n1319) );
  OAI2BB2XL U2051 ( .B0(n1483), .B1(n1575), .A0N(\str[8][2] ), .A1N(n1483), 
        .Y(n1320) );
  OAI2BB2XL U2052 ( .B0(n1483), .B1(n1573), .A0N(\str[8][3] ), .A1N(n1483), 
        .Y(n1321) );
  OAI2BB2XL U2053 ( .B0(n1483), .B1(n1571), .A0N(\str[8][4] ), .A1N(n1483), 
        .Y(n1322) );
  OAI2BB2XL U2054 ( .B0(n1483), .B1(n1569), .A0N(\str[8][5] ), .A1N(n1483), 
        .Y(n1323) );
  OAI2BB2XL U2055 ( .B0(n1483), .B1(n1567), .A0N(\str[8][6] ), .A1N(n1483), 
        .Y(n1324) );
  OAI2BB2XL U2056 ( .B0(n1483), .B1(n1565), .A0N(\str[8][7] ), .A1N(n1483), 
        .Y(n1325) );
  OAI2BB2XL U2057 ( .B0(n1482), .B1(n1579), .A0N(\str[7][0] ), .A1N(n1482), 
        .Y(n1326) );
  OAI2BB2XL U2058 ( .B0(n1482), .B1(n1577), .A0N(\str[7][1] ), .A1N(n1482), 
        .Y(n1327) );
  OAI2BB2XL U2059 ( .B0(n1482), .B1(n1575), .A0N(\str[7][2] ), .A1N(n1482), 
        .Y(n1328) );
  OAI2BB2XL U2060 ( .B0(n1482), .B1(n1573), .A0N(\str[7][3] ), .A1N(n1482), 
        .Y(n1329) );
  OAI2BB2XL U2061 ( .B0(n1482), .B1(n1571), .A0N(\str[7][4] ), .A1N(n1482), 
        .Y(n1330) );
  OAI2BB2XL U2062 ( .B0(n1482), .B1(n1569), .A0N(\str[7][5] ), .A1N(n1482), 
        .Y(n1331) );
  OAI2BB2XL U2063 ( .B0(n1482), .B1(n1567), .A0N(\str[7][6] ), .A1N(n1482), 
        .Y(n1332) );
  OAI2BB2XL U2064 ( .B0(n1482), .B1(n1565), .A0N(\str[7][7] ), .A1N(n1482), 
        .Y(n1333) );
  AOI32XL U2065 ( .A0(n1620), .A1(n1619), .A2(cs[0]), .B0(ispattern), .B1(
        valid), .Y(n501) );
  XOR2X1 U2066 ( .A(\str[3][4] ), .B(n1595), .Y(n526) );
  XOR2X1 U2067 ( .A(\str[2][4] ), .B(n1595), .Y(n544) );
  XOR2X1 U2068 ( .A(\str[1][4] ), .B(n1595), .Y(n563) );
  XOR2X1 U2069 ( .A(\str[7][4] ), .B(n1595), .Y(n602) );
  XOR2X1 U2070 ( .A(\str[6][4] ), .B(n1595), .Y(n620) );
  XOR2X1 U2071 ( .A(\str[4][4] ), .B(n1595), .Y(n656) );
  XOR2X1 U2072 ( .A(\str[11][4] ), .B(n1595), .Y(n674) );
  XOR2X1 U2073 ( .A(\str[10][4] ), .B(n1595), .Y(n691) );
  XOR2X1 U2074 ( .A(\str[9][4] ), .B(n1595), .Y(n708) );
  XOR2X1 U2075 ( .A(\str[8][4] ), .B(n1595), .Y(n725) );
  XOR2X1 U2076 ( .A(\str[15][4] ), .B(n1595), .Y(n742) );
  XOR2X1 U2077 ( .A(\str[14][4] ), .B(n1595), .Y(n759) );
  XOR2X1 U2078 ( .A(\str[13][4] ), .B(n1595), .Y(n776) );
  XOR2X1 U2079 ( .A(\str[12][4] ), .B(n1595), .Y(n793) );
  XOR2X1 U2080 ( .A(\str[19][4] ), .B(n1595), .Y(n1060) );
  XOR2X1 U2081 ( .A(\str[5][4] ), .B(chardata[4]), .Y(n638) );
  XOR2X1 U2082 ( .A(\str[27][4] ), .B(chardata[4]), .Y(n878) );
  XOR2X1 U2083 ( .A(\str[26][4] ), .B(chardata[4]), .Y(n895) );
  XOR2X1 U2084 ( .A(\str[25][4] ), .B(chardata[4]), .Y(n912) );
  XOR2X1 U2085 ( .A(\str[24][4] ), .B(chardata[4]), .Y(n929) );
  XOR2X1 U2086 ( .A(\str[29][4] ), .B(chardata[4]), .Y(n844) );
  XOR2X1 U2087 ( .A(\str[28][4] ), .B(chardata[4]), .Y(n861) );
  XOR2X1 U2088 ( .A(\str[30][4] ), .B(chardata[4]), .Y(n812) );
  XOR2X1 U2089 ( .A(\str[23][4] ), .B(chardata[4]), .Y(n994) );
  XOR2X1 U2090 ( .A(\str[22][4] ), .B(chardata[4]), .Y(n978) );
  XOR2X1 U2091 ( .A(\str[21][4] ), .B(chardata[4]), .Y(n962) );
  XOR2X1 U2092 ( .A(\str[20][4] ), .B(chardata[4]), .Y(n946) );
  XOR2X1 U2093 ( .A(\str[18][4] ), .B(chardata[4]), .Y(n1042) );
  XOR2X1 U2094 ( .A(\str[17][4] ), .B(chardata[4]), .Y(n1026) );
  XOR2X1 U2095 ( .A(\str[16][4] ), .B(chardata[4]), .Y(n1010) );
  XOR2X1 U2096 ( .A(\str[31][4] ), .B(chardata[4]), .Y(n827) );
  XOR2X1 U2097 ( .A(\str[6][7] ), .B(chardata[7]), .Y(n619) );
  XOR2X1 U2098 ( .A(\str[12][7] ), .B(chardata[7]), .Y(n792) );
  XOR2X1 U2099 ( .A(\str[27][7] ), .B(chardata[7]), .Y(n877) );
  XOR2X1 U2100 ( .A(\str[26][7] ), .B(chardata[7]), .Y(n894) );
  XOR2X1 U2101 ( .A(\str[25][7] ), .B(chardata[7]), .Y(n911) );
  XOR2X1 U2102 ( .A(\str[24][7] ), .B(chardata[7]), .Y(n928) );
  XOR2X1 U2103 ( .A(\str[29][7] ), .B(chardata[7]), .Y(n843) );
  XOR2X1 U2104 ( .A(\str[28][7] ), .B(chardata[7]), .Y(n860) );
  XOR2X1 U2105 ( .A(\str[30][7] ), .B(chardata[7]), .Y(n811) );
  XOR2X1 U2106 ( .A(\str[23][7] ), .B(chardata[7]), .Y(n993) );
  XOR2X1 U2107 ( .A(\str[22][7] ), .B(chardata[7]), .Y(n977) );
  XOR2X1 U2108 ( .A(\str[21][7] ), .B(chardata[7]), .Y(n961) );
  XOR2X1 U2109 ( .A(\str[20][7] ), .B(chardata[7]), .Y(n945) );
  XOR2X1 U2110 ( .A(\str[18][7] ), .B(chardata[7]), .Y(n1041) );
  XOR2X1 U2111 ( .A(\str[17][7] ), .B(chardata[7]), .Y(n1025) );
  XOR2X1 U2112 ( .A(\str[16][7] ), .B(chardata[7]), .Y(n1009) );
  XOR2X1 U2113 ( .A(\str[31][7] ), .B(chardata[7]), .Y(n826) );
  XOR2X1 U2114 ( .A(\str[3][7] ), .B(n1599), .Y(n525) );
  XOR2X1 U2115 ( .A(\str[2][7] ), .B(n1599), .Y(n543) );
  XOR2X1 U2116 ( .A(\str[1][7] ), .B(n1599), .Y(n562) );
  XOR2X1 U2117 ( .A(\str[7][7] ), .B(n1599), .Y(n601) );
  XOR2X1 U2118 ( .A(\str[5][7] ), .B(n1599), .Y(n637) );
  XOR2X1 U2119 ( .A(\str[4][7] ), .B(n1599), .Y(n655) );
  XOR2X1 U2120 ( .A(\str[11][7] ), .B(n1599), .Y(n673) );
  XOR2X1 U2121 ( .A(\str[10][7] ), .B(n1599), .Y(n690) );
  XOR2X1 U2122 ( .A(\str[9][7] ), .B(n1599), .Y(n707) );
  XOR2X1 U2123 ( .A(\str[8][7] ), .B(n1599), .Y(n724) );
  XOR2X1 U2124 ( .A(\str[15][7] ), .B(n1599), .Y(n741) );
  XOR2X1 U2125 ( .A(\str[14][7] ), .B(n1599), .Y(n758) );
  XOR2X1 U2126 ( .A(\str[13][7] ), .B(n1599), .Y(n775) );
  XOR2X1 U2127 ( .A(\str[19][7] ), .B(n1599), .Y(n1059) );
  XOR2X1 U2128 ( .A(\str[3][0] ), .B(n1587), .Y(n530) );
  XOR2X1 U2129 ( .A(\str[2][0] ), .B(n1587), .Y(n548) );
  XOR2X1 U2130 ( .A(\str[1][0] ), .B(n1587), .Y(n567) );
  XOR2X1 U2131 ( .A(\str[7][0] ), .B(n1587), .Y(n606) );
  XOR2X1 U2132 ( .A(\str[6][0] ), .B(n1587), .Y(n624) );
  XOR2X1 U2133 ( .A(\str[4][0] ), .B(n1587), .Y(n660) );
  XOR2X1 U2134 ( .A(\str[11][0] ), .B(n1587), .Y(n678) );
  XOR2X1 U2135 ( .A(\str[10][0] ), .B(n1587), .Y(n695) );
  XOR2X1 U2136 ( .A(\str[9][0] ), .B(n1587), .Y(n712) );
  XOR2X1 U2137 ( .A(\str[8][0] ), .B(n1587), .Y(n729) );
  XOR2X1 U2138 ( .A(\str[15][0] ), .B(n1587), .Y(n746) );
  XOR2X1 U2139 ( .A(\str[14][0] ), .B(n1587), .Y(n763) );
  XOR2X1 U2140 ( .A(\str[13][0] ), .B(n1587), .Y(n780) );
  XOR2X1 U2141 ( .A(\str[12][0] ), .B(n1587), .Y(n797) );
  XOR2X1 U2142 ( .A(\str[19][0] ), .B(n1587), .Y(n1064) );
  XOR2X1 U2143 ( .A(\str[5][0] ), .B(chardata[0]), .Y(n642) );
  XOR2X1 U2144 ( .A(\str[27][0] ), .B(chardata[0]), .Y(n882) );
  XOR2X1 U2145 ( .A(\str[26][0] ), .B(chardata[0]), .Y(n899) );
  XOR2X1 U2146 ( .A(\str[25][0] ), .B(chardata[0]), .Y(n916) );
  XOR2X1 U2147 ( .A(\str[24][0] ), .B(chardata[0]), .Y(n933) );
  XOR2X1 U2148 ( .A(\str[29][0] ), .B(chardata[0]), .Y(n848) );
  XOR2X1 U2149 ( .A(\str[28][0] ), .B(chardata[0]), .Y(n865) );
  XOR2X1 U2150 ( .A(\str[30][0] ), .B(chardata[0]), .Y(n816) );
  XOR2X1 U2151 ( .A(\str[23][0] ), .B(chardata[0]), .Y(n998) );
  XOR2X1 U2152 ( .A(\str[22][0] ), .B(chardata[0]), .Y(n982) );
  XOR2X1 U2153 ( .A(\str[21][0] ), .B(chardata[0]), .Y(n966) );
  XOR2X1 U2154 ( .A(\str[20][0] ), .B(chardata[0]), .Y(n950) );
  XOR2X1 U2155 ( .A(\str[18][0] ), .B(chardata[0]), .Y(n1046) );
  XOR2X1 U2156 ( .A(\str[17][0] ), .B(chardata[0]), .Y(n1030) );
  XOR2X1 U2157 ( .A(\str[16][0] ), .B(chardata[0]), .Y(n1014) );
  XOR2X1 U2158 ( .A(\str[31][0] ), .B(chardata[0]), .Y(n831) );
  XOR2X1 U2159 ( .A(\str[3][1] ), .B(n1589), .Y(n531) );
  XOR2X1 U2160 ( .A(\str[2][1] ), .B(n1589), .Y(n549) );
  XOR2X1 U2161 ( .A(\str[1][1] ), .B(n1589), .Y(n568) );
  XOR2X1 U2162 ( .A(\str[7][1] ), .B(n1589), .Y(n607) );
  XOR2X1 U2163 ( .A(\str[6][1] ), .B(n1589), .Y(n625) );
  XOR2X1 U2164 ( .A(\str[5][1] ), .B(n1589), .Y(n643) );
  XOR2X1 U2165 ( .A(\str[4][1] ), .B(chardata[1]), .Y(n661) );
  XOR2X1 U2166 ( .A(\str[11][5] ), .B(n1596), .Y(n675) );
  XOR2X1 U2167 ( .A(\str[11][1] ), .B(n1589), .Y(n679) );
  XOR2X1 U2168 ( .A(\str[10][5] ), .B(n1596), .Y(n692) );
  XOR2X1 U2169 ( .A(\str[10][1] ), .B(n1589), .Y(n696) );
  XOR2X1 U2170 ( .A(\str[9][5] ), .B(n1596), .Y(n709) );
  XOR2X1 U2171 ( .A(\str[9][1] ), .B(n1589), .Y(n713) );
  XOR2X1 U2172 ( .A(\str[8][5] ), .B(n1596), .Y(n726) );
  XOR2X1 U2173 ( .A(\str[8][1] ), .B(n1589), .Y(n730) );
  XOR2X1 U2174 ( .A(\str[15][5] ), .B(n1596), .Y(n743) );
  XOR2X1 U2175 ( .A(\str[15][1] ), .B(n1589), .Y(n747) );
  XOR2X1 U2176 ( .A(\str[14][5] ), .B(n1596), .Y(n760) );
  XOR2X1 U2177 ( .A(\str[14][1] ), .B(chardata[1]), .Y(n764) );
  XOR2X1 U2178 ( .A(\str[13][5] ), .B(n1596), .Y(n777) );
  XOR2X1 U2179 ( .A(\str[13][1] ), .B(chardata[1]), .Y(n781) );
  XOR2X1 U2180 ( .A(\str[12][5] ), .B(n1596), .Y(n794) );
  XOR2X1 U2181 ( .A(\str[12][1] ), .B(chardata[1]), .Y(n798) );
  XOR2X1 U2182 ( .A(\str[27][5] ), .B(chardata[5]), .Y(n879) );
  XOR2X1 U2183 ( .A(\str[27][1] ), .B(chardata[1]), .Y(n883) );
  XOR2X1 U2184 ( .A(\str[26][5] ), .B(chardata[5]), .Y(n896) );
  XOR2X1 U2185 ( .A(\str[26][1] ), .B(chardata[1]), .Y(n900) );
  XOR2X1 U2186 ( .A(\str[25][5] ), .B(chardata[5]), .Y(n913) );
  XOR2X1 U2187 ( .A(\str[25][1] ), .B(chardata[1]), .Y(n917) );
  XOR2X1 U2188 ( .A(\str[24][5] ), .B(chardata[5]), .Y(n930) );
  XOR2X1 U2189 ( .A(\str[24][1] ), .B(chardata[1]), .Y(n934) );
  XOR2X1 U2190 ( .A(\str[29][5] ), .B(n1596), .Y(n845) );
  XOR2X1 U2191 ( .A(\str[29][1] ), .B(chardata[1]), .Y(n849) );
  XOR2X1 U2192 ( .A(\str[28][5] ), .B(n1596), .Y(n862) );
  XOR2X1 U2193 ( .A(\str[28][1] ), .B(chardata[1]), .Y(n866) );
  XOR2X1 U2194 ( .A(\str[30][5] ), .B(n1596), .Y(n813) );
  XOR2X1 U2195 ( .A(\str[30][1] ), .B(chardata[1]), .Y(n817) );
  XOR2X1 U2196 ( .A(\str[23][5] ), .B(chardata[5]), .Y(n995) );
  XOR2X1 U2197 ( .A(\str[22][5] ), .B(chardata[5]), .Y(n979) );
  XOR2X1 U2198 ( .A(\str[21][5] ), .B(chardata[5]), .Y(n963) );
  XOR2X1 U2199 ( .A(\str[20][5] ), .B(chardata[5]), .Y(n947) );
  XOR2X1 U2200 ( .A(\str[19][5] ), .B(chardata[5]), .Y(n1061) );
  XOR2X1 U2201 ( .A(\str[19][1] ), .B(n1589), .Y(n1065) );
  XOR2X1 U2202 ( .A(\str[18][5] ), .B(chardata[5]), .Y(n1043) );
  XOR2X1 U2203 ( .A(\str[17][5] ), .B(chardata[5]), .Y(n1027) );
  XOR2X1 U2204 ( .A(\str[16][5] ), .B(chardata[5]), .Y(n1011) );
  XOR2X1 U2205 ( .A(\str[31][1] ), .B(chardata[1]), .Y(n832) );
  XOR2X1 U2206 ( .A(\str[31][5] ), .B(n1596), .Y(n828) );
  XOR2X1 U2207 ( .A(\str[3][5] ), .B(n1596), .Y(n527) );
  XOR2X1 U2208 ( .A(\str[2][5] ), .B(n1596), .Y(n545) );
  XOR2X1 U2209 ( .A(\str[1][5] ), .B(n1596), .Y(n564) );
  XOR2X1 U2210 ( .A(\str[7][5] ), .B(n1596), .Y(n603) );
  XOR2X1 U2211 ( .A(\str[6][5] ), .B(n1596), .Y(n621) );
  XOR2X1 U2212 ( .A(\str[5][5] ), .B(n1596), .Y(n639) );
  XOR2X1 U2213 ( .A(\str[4][5] ), .B(n1596), .Y(n657) );
  XOR2X1 U2214 ( .A(\str[23][1] ), .B(n1589), .Y(n999) );
  XOR2X1 U2215 ( .A(\str[22][1] ), .B(n1589), .Y(n983) );
  XOR2X1 U2216 ( .A(\str[21][1] ), .B(n1589), .Y(n967) );
  XOR2X1 U2217 ( .A(\str[20][1] ), .B(n1589), .Y(n951) );
  XOR2X1 U2218 ( .A(\str[18][1] ), .B(n1589), .Y(n1047) );
  XOR2X1 U2219 ( .A(\str[17][1] ), .B(n1589), .Y(n1031) );
  XOR2X1 U2220 ( .A(\str[16][1] ), .B(n1589), .Y(n1015) );
  XOR2X1 U2221 ( .A(\str[3][6] ), .B(n1598), .Y(n524) );
  XOR2X1 U2222 ( .A(\str[2][6] ), .B(n1598), .Y(n542) );
  XOR2X1 U2223 ( .A(\str[1][6] ), .B(n1598), .Y(n561) );
  XOR2X1 U2224 ( .A(\str[7][6] ), .B(n1598), .Y(n600) );
  XOR2X1 U2225 ( .A(\str[6][6] ), .B(n1598), .Y(n618) );
  XOR2X1 U2226 ( .A(\str[4][6] ), .B(n1598), .Y(n654) );
  XOR2X1 U2227 ( .A(\str[11][6] ), .B(n1598), .Y(n672) );
  XOR2X1 U2228 ( .A(\str[10][6] ), .B(n1598), .Y(n689) );
  XOR2X1 U2229 ( .A(\str[9][6] ), .B(n1598), .Y(n706) );
  XOR2X1 U2230 ( .A(\str[8][6] ), .B(n1598), .Y(n723) );
  XOR2X1 U2231 ( .A(\str[15][6] ), .B(n1598), .Y(n740) );
  XOR2X1 U2232 ( .A(\str[14][6] ), .B(n1598), .Y(n757) );
  XOR2X1 U2233 ( .A(\str[13][6] ), .B(n1598), .Y(n774) );
  XOR2X1 U2234 ( .A(\str[12][6] ), .B(n1598), .Y(n791) );
  XOR2X1 U2235 ( .A(\str[19][6] ), .B(n1598), .Y(n1058) );
  XOR2X1 U2236 ( .A(\str[5][6] ), .B(chardata[6]), .Y(n636) );
  XOR2X1 U2237 ( .A(\str[27][6] ), .B(chardata[6]), .Y(n876) );
  XOR2X1 U2238 ( .A(\str[26][6] ), .B(chardata[6]), .Y(n893) );
  XOR2X1 U2239 ( .A(\str[25][6] ), .B(chardata[6]), .Y(n910) );
  XOR2X1 U2240 ( .A(\str[24][6] ), .B(chardata[6]), .Y(n927) );
  XOR2X1 U2241 ( .A(\str[29][6] ), .B(chardata[6]), .Y(n842) );
  XOR2X1 U2242 ( .A(\str[28][6] ), .B(chardata[6]), .Y(n859) );
  XOR2X1 U2243 ( .A(\str[30][6] ), .B(chardata[6]), .Y(n810) );
  XOR2X1 U2244 ( .A(\str[23][6] ), .B(chardata[6]), .Y(n992) );
  XOR2X1 U2245 ( .A(\str[22][6] ), .B(chardata[6]), .Y(n976) );
  XOR2X1 U2246 ( .A(\str[21][6] ), .B(chardata[6]), .Y(n960) );
  XOR2X1 U2247 ( .A(\str[20][6] ), .B(chardata[6]), .Y(n944) );
  XOR2X1 U2248 ( .A(\str[18][6] ), .B(chardata[6]), .Y(n1040) );
  XOR2X1 U2249 ( .A(\str[17][6] ), .B(chardata[6]), .Y(n1024) );
  XOR2X1 U2250 ( .A(\str[16][6] ), .B(chardata[6]), .Y(n1008) );
  XOR2X1 U2251 ( .A(\str[23][2] ), .B(chardata[2]), .Y(n996) );
  XOR2X1 U2252 ( .A(\str[22][2] ), .B(chardata[2]), .Y(n980) );
  XOR2X1 U2253 ( .A(\str[21][2] ), .B(chardata[2]), .Y(n964) );
  XOR2X1 U2254 ( .A(\str[20][2] ), .B(chardata[2]), .Y(n948) );
  XOR2X1 U2255 ( .A(\str[18][2] ), .B(chardata[2]), .Y(n1044) );
  XOR2X1 U2256 ( .A(\str[17][2] ), .B(chardata[2]), .Y(n1028) );
  XOR2X1 U2257 ( .A(\str[16][2] ), .B(chardata[2]), .Y(n1012) );
  XOR2X1 U2258 ( .A(\str[31][2] ), .B(chardata[2]), .Y(n829) );
  XOR2X1 U2259 ( .A(\str[3][3] ), .B(n1593), .Y(n529) );
  XOR2X1 U2260 ( .A(\str[2][3] ), .B(n1593), .Y(n547) );
  XOR2X1 U2261 ( .A(\str[1][3] ), .B(n1593), .Y(n566) );
  XOR2X1 U2262 ( .A(\str[7][3] ), .B(n1593), .Y(n605) );
  XOR2X1 U2263 ( .A(\str[6][3] ), .B(n1593), .Y(n623) );
  XOR2X1 U2264 ( .A(\str[5][3] ), .B(n1593), .Y(n641) );
  XOR2X1 U2265 ( .A(\str[4][3] ), .B(chardata[3]), .Y(n659) );
  XOR2X1 U2266 ( .A(\str[11][3] ), .B(n1593), .Y(n677) );
  XOR2X1 U2267 ( .A(\str[10][3] ), .B(n1593), .Y(n694) );
  XOR2X1 U2268 ( .A(\str[9][3] ), .B(n1593), .Y(n711) );
  XOR2X1 U2269 ( .A(\str[8][3] ), .B(n1593), .Y(n728) );
  XOR2X1 U2270 ( .A(\str[15][3] ), .B(n1593), .Y(n745) );
  XOR2X1 U2271 ( .A(\str[14][3] ), .B(chardata[3]), .Y(n762) );
  XOR2X1 U2272 ( .A(\str[13][3] ), .B(chardata[3]), .Y(n779) );
  XOR2X1 U2273 ( .A(\str[12][3] ), .B(chardata[3]), .Y(n796) );
  XOR2X1 U2274 ( .A(\str[27][3] ), .B(chardata[3]), .Y(n881) );
  XOR2X1 U2275 ( .A(\str[26][3] ), .B(chardata[3]), .Y(n898) );
  XOR2X1 U2276 ( .A(\str[25][3] ), .B(chardata[3]), .Y(n915) );
  XOR2X1 U2277 ( .A(\str[24][3] ), .B(chardata[3]), .Y(n932) );
  XOR2X1 U2278 ( .A(\str[29][3] ), .B(chardata[3]), .Y(n847) );
  XOR2X1 U2279 ( .A(\str[28][3] ), .B(chardata[3]), .Y(n864) );
  XOR2X1 U2280 ( .A(\str[30][3] ), .B(chardata[3]), .Y(n815) );
  XOR2X1 U2281 ( .A(\str[19][3] ), .B(n1593), .Y(n1063) );
  XOR2X1 U2282 ( .A(\str[31][3] ), .B(chardata[3]), .Y(n830) );
  XOR2X1 U2283 ( .A(\str[0][7] ), .B(n1599), .Y(n588) );
  XOR2X1 U2284 ( .A(\str[0][5] ), .B(chardata[5]), .Y(n589) );
  NAND2X1 U2285 ( .A(n522), .B(n523), .Y(n511) );
  NOR4X1 U2286 ( .A(n528), .B(n529), .C(n530), .D(n531), .Y(n522) );
  NOR4X1 U2287 ( .A(n524), .B(n525), .C(n526), .D(n527), .Y(n523) );
  XOR2X1 U2288 ( .A(\str[3][2] ), .B(n1591), .Y(n528) );
  NAND2X1 U2289 ( .A(n540), .B(n541), .Y(n533) );
  NOR4X1 U2290 ( .A(n546), .B(n547), .C(n548), .D(n549), .Y(n540) );
  NOR4X1 U2291 ( .A(n542), .B(n543), .C(n544), .D(n545), .Y(n541) );
  XOR2X1 U2292 ( .A(\str[2][2] ), .B(n1591), .Y(n546) );
  NAND2X1 U2293 ( .A(n559), .B(n560), .Y(n551) );
  NOR4X1 U2294 ( .A(n565), .B(n566), .C(n567), .D(n568), .Y(n559) );
  NOR4X1 U2295 ( .A(n561), .B(n562), .C(n563), .D(n564), .Y(n560) );
  XOR2X1 U2296 ( .A(\str[1][2] ), .B(n1591), .Y(n565) );
  NAND2X1 U2297 ( .A(n598), .B(n599), .Y(n591) );
  NOR4X1 U2298 ( .A(n604), .B(n605), .C(n606), .D(n607), .Y(n598) );
  NOR4X1 U2299 ( .A(n600), .B(n601), .C(n602), .D(n603), .Y(n599) );
  XOR2X1 U2300 ( .A(\str[7][2] ), .B(n1591), .Y(n604) );
  NAND2X1 U2301 ( .A(n616), .B(n617), .Y(n609) );
  NOR4X1 U2302 ( .A(n622), .B(n623), .C(n624), .D(n625), .Y(n616) );
  NOR4X1 U2303 ( .A(n618), .B(n619), .C(n620), .D(n621), .Y(n617) );
  XOR2X1 U2304 ( .A(\str[6][2] ), .B(n1591), .Y(n622) );
  NAND2X1 U2305 ( .A(n634), .B(n635), .Y(n627) );
  NOR4X1 U2306 ( .A(n640), .B(n641), .C(n642), .D(n643), .Y(n634) );
  NOR4X1 U2307 ( .A(n636), .B(n637), .C(n638), .D(n639), .Y(n635) );
  XOR2X1 U2308 ( .A(\str[5][2] ), .B(n1591), .Y(n640) );
  NAND2X1 U2309 ( .A(n652), .B(n653), .Y(n645) );
  NOR4X1 U2310 ( .A(n658), .B(n659), .C(n660), .D(n661), .Y(n652) );
  NOR4X1 U2311 ( .A(n654), .B(n655), .C(n656), .D(n657), .Y(n653) );
  XOR2X1 U2312 ( .A(\str[4][2] ), .B(n1591), .Y(n658) );
  NAND2X1 U2313 ( .A(n670), .B(n671), .Y(n663) );
  NOR4X1 U2314 ( .A(n676), .B(n677), .C(n678), .D(n679), .Y(n670) );
  NOR4X1 U2315 ( .A(n672), .B(n673), .C(n674), .D(n675), .Y(n671) );
  XOR2X1 U2316 ( .A(\str[11][2] ), .B(n1591), .Y(n676) );
  NAND2X1 U2317 ( .A(n687), .B(n688), .Y(n681) );
  NOR4X1 U2318 ( .A(n693), .B(n694), .C(n695), .D(n696), .Y(n687) );
  NOR4X1 U2319 ( .A(n689), .B(n690), .C(n691), .D(n692), .Y(n688) );
  XOR2X1 U2320 ( .A(\str[10][2] ), .B(n1591), .Y(n693) );
  NAND2X1 U2321 ( .A(n704), .B(n705), .Y(n698) );
  NOR4X1 U2322 ( .A(n710), .B(n711), .C(n712), .D(n713), .Y(n704) );
  NOR4X1 U2323 ( .A(n706), .B(n707), .C(n708), .D(n709), .Y(n705) );
  XOR2X1 U2324 ( .A(\str[9][2] ), .B(n1591), .Y(n710) );
  NAND2X1 U2325 ( .A(n721), .B(n722), .Y(n715) );
  NOR4X1 U2326 ( .A(n727), .B(n728), .C(n729), .D(n730), .Y(n721) );
  NOR4X1 U2327 ( .A(n723), .B(n724), .C(n725), .D(n726), .Y(n722) );
  XOR2X1 U2328 ( .A(\str[8][2] ), .B(n1591), .Y(n727) );
  NAND2X1 U2329 ( .A(n738), .B(n739), .Y(n732) );
  NOR4X1 U2330 ( .A(n744), .B(n745), .C(n746), .D(n747), .Y(n738) );
  NOR4X1 U2331 ( .A(n740), .B(n741), .C(n742), .D(n743), .Y(n739) );
  XOR2X1 U2332 ( .A(\str[15][2] ), .B(n1591), .Y(n744) );
  NAND2X1 U2333 ( .A(n755), .B(n756), .Y(n749) );
  NOR4X1 U2334 ( .A(n761), .B(n762), .C(n763), .D(n764), .Y(n755) );
  NOR4X1 U2335 ( .A(n757), .B(n758), .C(n759), .D(n760), .Y(n756) );
  XOR2X1 U2336 ( .A(\str[14][2] ), .B(n1591), .Y(n761) );
  NAND2X1 U2337 ( .A(n772), .B(n773), .Y(n766) );
  NOR4X1 U2338 ( .A(n778), .B(n779), .C(n780), .D(n781), .Y(n772) );
  NOR4X1 U2339 ( .A(n774), .B(n775), .C(n776), .D(n777), .Y(n773) );
  XOR2X1 U2340 ( .A(\str[13][2] ), .B(n1591), .Y(n778) );
  NAND2X1 U2341 ( .A(n789), .B(n790), .Y(n783) );
  NOR4X1 U2342 ( .A(n795), .B(n796), .C(n797), .D(n798), .Y(n789) );
  NOR4X1 U2343 ( .A(n791), .B(n792), .C(n793), .D(n794), .Y(n790) );
  XOR2X1 U2344 ( .A(\str[12][2] ), .B(n1591), .Y(n795) );
  NAND2X1 U2345 ( .A(n874), .B(n875), .Y(n868) );
  NOR4X1 U2346 ( .A(n880), .B(n881), .C(n882), .D(n883), .Y(n874) );
  NOR4X1 U2347 ( .A(n876), .B(n877), .C(n878), .D(n879), .Y(n875) );
  XOR2X1 U2348 ( .A(\str[27][2] ), .B(n1591), .Y(n880) );
  NAND2X1 U2349 ( .A(n891), .B(n892), .Y(n885) );
  NOR4X1 U2350 ( .A(n897), .B(n898), .C(n899), .D(n900), .Y(n891) );
  NOR4X1 U2351 ( .A(n893), .B(n894), .C(n895), .D(n896), .Y(n892) );
  XOR2X1 U2352 ( .A(\str[26][2] ), .B(n1591), .Y(n897) );
  NAND2X1 U2353 ( .A(n908), .B(n909), .Y(n902) );
  NOR4X1 U2354 ( .A(n914), .B(n915), .C(n916), .D(n917), .Y(n908) );
  NOR4X1 U2355 ( .A(n910), .B(n911), .C(n912), .D(n913), .Y(n909) );
  XOR2X1 U2356 ( .A(\str[25][2] ), .B(chardata[2]), .Y(n914) );
  NAND2X1 U2357 ( .A(n925), .B(n926), .Y(n919) );
  NOR4X1 U2358 ( .A(n931), .B(n932), .C(n933), .D(n934), .Y(n925) );
  NOR4X1 U2359 ( .A(n927), .B(n928), .C(n929), .D(n930), .Y(n926) );
  XOR2X1 U2360 ( .A(\str[24][2] ), .B(chardata[2]), .Y(n931) );
  NAND2X1 U2361 ( .A(n840), .B(n841), .Y(n834) );
  NOR4X1 U2362 ( .A(n846), .B(n847), .C(n848), .D(n849), .Y(n840) );
  NOR4X1 U2363 ( .A(n842), .B(n843), .C(n844), .D(n845), .Y(n841) );
  XOR2X1 U2364 ( .A(\str[29][2] ), .B(chardata[2]), .Y(n846) );
  NAND2X1 U2365 ( .A(n857), .B(n858), .Y(n851) );
  NOR4X1 U2366 ( .A(n863), .B(n864), .C(n865), .D(n866), .Y(n857) );
  NOR4X1 U2367 ( .A(n859), .B(n860), .C(n861), .D(n862), .Y(n858) );
  XOR2X1 U2368 ( .A(\str[28][2] ), .B(chardata[2]), .Y(n863) );
  NAND2X1 U2369 ( .A(n808), .B(n809), .Y(n801) );
  NOR4X1 U2370 ( .A(n814), .B(n815), .C(n816), .D(n817), .Y(n808) );
  NOR4X1 U2371 ( .A(n810), .B(n811), .C(n812), .D(n813), .Y(n809) );
  XOR2X1 U2372 ( .A(\str[30][2] ), .B(chardata[2]), .Y(n814) );
  NAND2X1 U2373 ( .A(n990), .B(n991), .Y(n984) );
  NOR4X1 U2374 ( .A(n996), .B(n997), .C(n998), .D(n999), .Y(n990) );
  NOR4X1 U2375 ( .A(n992), .B(n993), .C(n994), .D(n995), .Y(n991) );
  XOR2X1 U2376 ( .A(\str[23][3] ), .B(n1593), .Y(n997) );
  NAND2X1 U2377 ( .A(n974), .B(n975), .Y(n968) );
  NOR4X1 U2378 ( .A(n980), .B(n981), .C(n982), .D(n983), .Y(n974) );
  NOR4X1 U2379 ( .A(n976), .B(n977), .C(n978), .D(n979), .Y(n975) );
  XOR2X1 U2380 ( .A(\str[22][3] ), .B(n1593), .Y(n981) );
  NAND2X1 U2381 ( .A(n958), .B(n959), .Y(n952) );
  NOR4X1 U2382 ( .A(n964), .B(n965), .C(n966), .D(n967), .Y(n958) );
  NOR4X1 U2383 ( .A(n960), .B(n961), .C(n962), .D(n963), .Y(n959) );
  XOR2X1 U2384 ( .A(\str[21][3] ), .B(n1593), .Y(n965) );
  NAND2X1 U2385 ( .A(n942), .B(n943), .Y(n935) );
  NOR4X1 U2386 ( .A(n948), .B(n949), .C(n950), .D(n951), .Y(n942) );
  NOR4X1 U2387 ( .A(n944), .B(n945), .C(n946), .D(n947), .Y(n943) );
  XOR2X1 U2388 ( .A(\str[20][3] ), .B(n1593), .Y(n949) );
  NAND2X1 U2389 ( .A(n1056), .B(n1057), .Y(n1048) );
  NOR4X1 U2390 ( .A(n1062), .B(n1063), .C(n1064), .D(n1065), .Y(n1056) );
  NOR4X1 U2391 ( .A(n1058), .B(n1059), .C(n1060), .D(n1061), .Y(n1057) );
  XOR2X1 U2392 ( .A(\str[19][2] ), .B(n1591), .Y(n1062) );
  NAND2X1 U2393 ( .A(n1038), .B(n1039), .Y(n1032) );
  NOR4X1 U2394 ( .A(n1044), .B(n1045), .C(n1046), .D(n1047), .Y(n1038) );
  NOR4X1 U2395 ( .A(n1040), .B(n1041), .C(n1042), .D(n1043), .Y(n1039) );
  XOR2X1 U2396 ( .A(\str[18][3] ), .B(n1593), .Y(n1045) );
  NAND2X1 U2397 ( .A(n1022), .B(n1023), .Y(n1016) );
  NOR4X1 U2398 ( .A(n1028), .B(n1029), .C(n1030), .D(n1031), .Y(n1022) );
  NOR4X1 U2399 ( .A(n1024), .B(n1025), .C(n1026), .D(n1027), .Y(n1023) );
  XOR2X1 U2400 ( .A(\str[17][3] ), .B(n1593), .Y(n1029) );
  NAND2X1 U2401 ( .A(n1006), .B(n1007), .Y(n1000) );
  NOR4X1 U2402 ( .A(n1012), .B(n1013), .C(n1014), .D(n1015), .Y(n1006) );
  NOR4X1 U2403 ( .A(n1008), .B(n1009), .C(n1010), .D(n1011), .Y(n1007) );
  XOR2X1 U2404 ( .A(\str[16][3] ), .B(n1593), .Y(n1013) );
  NAND2X1 U2405 ( .A(n823), .B(n824), .Y(n821) );
  NOR4X1 U2406 ( .A(n825), .B(n826), .C(n827), .D(n828), .Y(n824) );
  NOR4X1 U2407 ( .A(n829), .B(n830), .C(n831), .D(n832), .Y(n823) );
  XOR2X1 U2408 ( .A(\str[31][6] ), .B(chardata[6]), .Y(n825) );
  AO22X1 U2409 ( .A0(pat_front), .A1(n1658), .B0(n341), .B1(n342), .Y(n1101)
         );
  OAI21XL U2410 ( .A0(n343), .A1(n339), .B0(n340), .Y(n341) );
  CLKINVX1 U2411 ( .A(n342), .Y(n1658) );
  OAI211X1 U2412 ( .A0(n343), .A1(n340), .B0(n339), .C0(n1583), .Y(n342) );
  AO22X1 U2413 ( .A0(pat_behind), .A1(n1661), .B0(n344), .B1(n345), .Y(n1102)
         );
  OAI21XL U2414 ( .A0(n346), .A1(n339), .B0(n340), .Y(n344) );
  CLKINVX1 U2415 ( .A(n345), .Y(n1661) );
  OAI211X1 U2416 ( .A0(n346), .A1(n340), .B0(n339), .C0(n1583), .Y(n345) );
  OAI31XL U2417 ( .A0(n492), .A1(ispattern), .A2(n493), .B0(n494), .Y(
        comp_ns[2]) );
  AOI2BB1X1 U2418 ( .A0N(n255), .A1N(reduction_comp_tab_latch), .B0(comp_cs[1]), .Y(n493) );
  XOR2X1 U2419 ( .A(\str[0][2] ), .B(n1592), .Y(n583) );
  XOR2X1 U2420 ( .A(\str[0][3] ), .B(n1594), .Y(n582) );
  XOR2X1 U2421 ( .A(\str[0][0] ), .B(n1588), .Y(n581) );
  XOR2X1 U2422 ( .A(\str[0][1] ), .B(n1590), .Y(n580) );
  NAND2BX1 U2423 ( .AN(n500), .B(n253), .Y(n492) );
  NOR3X1 U2424 ( .A(n255), .B(n492), .C(n254), .Y(nx_match) );
  AOI2BB1X1 U2425 ( .A0N(comp_cs[0]), .A1N(n495), .B0(nx_match), .Y(n494) );
  NAND3BX1 U2426 ( .AN(n500), .B(n254), .C(comp_cs[2]), .Y(n495) );
  NOR4X1 U2427 ( .A(n471), .B(n472), .C(n452), .D(n473), .Y(n455) );
  OAI31XL U2428 ( .A0(n478), .A1(compare_table[21]), .A2(n310), .B0(n479), .Y(
        n471) );
  OAI221XL U2429 ( .A0(n474), .A1(n294), .B0(n475), .B1(compare_table[29]), 
        .C0(n476), .Y(n473) );
  NOR2X1 U2430 ( .A(compare_table[15]), .B(n446), .Y(match_index_tail[4]) );
  NOR3BX1 U2431 ( .AN(n465), .B(compare_table[11]), .C(compare_table[12]), .Y(
        n477) );
  AOI211X1 U2432 ( .A0(n461), .A1(n463), .B0(n470), .C0(n1671), .Y(n469) );
  OAI33X1 U2433 ( .A0(n448), .A1(compare_table[9]), .A2(n298), .B0(n480), .B1(
        compare_table[17]), .B2(n306), .Y(n470) );
  CLKINVX1 U2434 ( .A(n455), .Y(n1671) );
  OAI211X1 U2435 ( .A0(n317), .A1(n475), .B0(n482), .C0(n476), .Y(n486) );
  NAND3BX1 U2436 ( .AN(n453), .B(n295), .C(n296), .Y(n448) );
  NOR3X1 U2437 ( .A(compare_table[17]), .B(compare_table[18]), .C(n480), .Y(
        n464) );
  NOR2BX1 U2438 ( .AN(n487), .B(compare_table[27]), .Y(n459) );
  NOR3X1 U2439 ( .A(compare_table[21]), .B(compare_table[22]), .C(n478), .Y(
        n450) );
  NOR3X1 U2440 ( .A(compare_table[10]), .B(compare_table[9]), .C(n448), .Y(
        n465) );
  NAND2BX1 U2441 ( .AN(n446), .B(n304), .Y(n480) );
  NAND2X1 U2442 ( .A(n450), .B(n312), .Y(n481) );
  NAND3X1 U2443 ( .A(n307), .B(n308), .C(n464), .Y(n478) );
  NOR2X1 U2444 ( .A(compare_table[0]), .B(compare_table[1]), .Y(n461) );
  NAND2X1 U2445 ( .A(n291), .B(n290), .Y(n463) );
  NAND3X1 U2446 ( .A(n301), .B(n302), .C(n477), .Y(n446) );
  NOR3X1 U2447 ( .A(compare_table[25]), .B(compare_table[26]), .C(n481), .Y(
        n487) );
  NOR2X1 U2448 ( .A(compare_table[5]), .B(compare_table[4]), .Y(n462) );
  NAND2X1 U2449 ( .A(n459), .B(n316), .Y(n475) );
  NAND4BX1 U2450 ( .AN(n483), .B(n1672), .C(n484), .D(n485), .Y(
        match_index_tail[0]) );
  NAND2X1 U2451 ( .A(n488), .B(n286), .Y(n484) );
  OAI222XL U2452 ( .A0(n480), .A1(n305), .B0(n475), .B1(compare_table[30]), 
        .C0(n481), .C1(n313), .Y(n483) );
  NOR4BX1 U2453 ( .AN(n468), .B(n486), .C(n458), .D(n472), .Y(n485) );
  NAND2X1 U2454 ( .A(n487), .B(compare_table[27]), .Y(n482) );
  OR2X1 U2455 ( .A(n474), .B(compare_table[6]), .Y(n453) );
  ADDFXL U2456 ( .A(match_index_tail[2]), .B(n244), .CI(\sub_36/carry [2]), 
        .CO(\sub_36/carry [3]), .S(N94) );
  NAND3X1 U2457 ( .A(n454), .B(n455), .C(n456), .Y(match_index_tail[2]) );
  AOI33X1 U2458 ( .A0(compare_table[20]), .A1(n307), .A2(n464), .B0(
        compare_table[12]), .B1(n299), .B2(n465), .Y(n454) );
  ADDFXL U2459 ( .A(N93), .B(N98), .CI(\add_36_2/carry [1]), .CO(
        \add_36_2/carry [2]), .S(nx_match_index[1]) );
  AND2X2 U2460 ( .A(pat_front), .B(pat_behind), .Y(N98) );
  ADDFXL U2461 ( .A(match_index_tail[1]), .B(n245), .CI(\sub_36/carry [1]), 
        .CO(\sub_36/carry [2]), .S(N93) );
  NAND4BX1 U2462 ( .AN(n466), .B(n467), .C(n468), .D(n469), .Y(
        match_index_tail[1]) );
  OAI31XL U2463 ( .A0(n481), .A1(compare_table[25]), .A2(n314), .B0(n482), .Y(
        n466) );
  NOR2X1 U2464 ( .A(n478), .B(n309), .Y(n458) );
  NAND2X1 U2465 ( .A(n464), .B(compare_table[19]), .Y(n468) );
  NAND2X1 U2466 ( .A(n450), .B(compare_table[23]), .Y(n476) );
  OAI211X1 U2467 ( .A0(n447), .A1(n448), .B0(n1672), .C0(n449), .Y(
        match_index_tail[3]) );
  NOR2X1 U2468 ( .A(compare_table[12]), .B(compare_table[10]), .Y(n447) );
  AOI211X1 U2469 ( .A0(n450), .A1(n311), .B0(n451), .C0(n452), .Y(n449) );
  NOR3X1 U2470 ( .A(n453), .B(compare_table[7]), .C(n296), .Y(n451) );
  NOR2BX1 U2471 ( .AN(n477), .B(n301), .Y(n457) );
  ADDHXL U2472 ( .A(N89), .B(\add_270/carry [2]), .CO(\add_270/carry [3]), .S(
        N361) );
  NAND2X1 U2473 ( .A(n465), .B(compare_table[11]), .Y(n467) );
  NAND2BX1 U2474 ( .AN(n446), .B(compare_table[15]), .Y(n479) );
  CLKINVX1 U2475 ( .A(n490), .Y(n1672) );
  OAI211X1 U2476 ( .A0(n297), .A1(n448), .B0(n479), .C0(n491), .Y(n490) );
  NOR2BX1 U2477 ( .AN(n467), .B(n457), .Y(n491) );
  ADDHXL U2478 ( .A(N88), .B(N87), .CO(\add_270/carry [2]), .S(N360) );
  AND3X2 U2479 ( .A(n477), .B(compare_table[14]), .C(n301), .Y(n452) );
  ADDHXL U2480 ( .A(N90), .B(\add_270/carry [3]), .CO(\add_270/carry [4]), .S(
        N362) );
  NOR2X1 U2481 ( .A(n453), .B(n295), .Y(n472) );
  OAI21XL U2482 ( .A0(compare_table[2]), .A1(n489), .B0(n289), .Y(n488) );
  AOI2BB1X1 U2483 ( .A0N(n293), .A1N(compare_table[4]), .B0(compare_table[3]), 
        .Y(n489) );
  NOR2X2 U2484 ( .A(n1474), .B(N90), .Y(n941) );
  NOR2X2 U2485 ( .A(n1473), .B(N91), .Y(n669) );
  XOR2X1 U2486 ( .A(pat_behind), .B(pat_front), .Y(N97) );
  NOR3X1 U2487 ( .A(n1620), .B(cs[2]), .C(n1621), .Y(n1422) );
  OAI22XL U2488 ( .A0(compare_table[13]), .A1(n1459), .B0(compare_table[12]), 
        .B1(n1458), .Y(n1439) );
  OAI22XL U2489 ( .A0(compare_table[15]), .A1(n1461), .B0(compare_table[14]), 
        .B1(n1460), .Y(n1438) );
  OAI21XL U2490 ( .A0(n1439), .A1(n1438), .B0(N89), .Y(n1443) );
  OAI22XL U2491 ( .A0(compare_table[9]), .A1(n1459), .B0(compare_table[8]), 
        .B1(n1458), .Y(n1441) );
  OAI22XL U2492 ( .A0(compare_table[11]), .A1(n1461), .B0(compare_table[10]), 
        .B1(n1460), .Y(n1440) );
  OAI21XL U2493 ( .A0(n1441), .A1(n1440), .B0(n1472), .Y(n1442) );
  AOI21X1 U2494 ( .A0(n1443), .A1(n1442), .B0(n1473), .Y(n1469) );
  OAI22XL U2495 ( .A0(compare_table[5]), .A1(n1459), .B0(compare_table[4]), 
        .B1(n1458), .Y(n1445) );
  OAI22XL U2496 ( .A0(compare_table[7]), .A1(n1461), .B0(compare_table[6]), 
        .B1(n1460), .Y(n1444) );
  OAI21XL U2497 ( .A0(n1445), .A1(n1444), .B0(N89), .Y(n1449) );
  OAI22XL U2498 ( .A0(compare_table[1]), .A1(n1459), .B0(compare_table[0]), 
        .B1(n1458), .Y(n1447) );
  OAI22XL U2499 ( .A0(compare_table[3]), .A1(n1461), .B0(compare_table[2]), 
        .B1(n1460), .Y(n1446) );
  OAI21XL U2500 ( .A0(n1447), .A1(n1446), .B0(n1472), .Y(n1448) );
  AOI21X1 U2501 ( .A0(n1449), .A1(n1448), .B0(N90), .Y(n1468) );
  OAI22XL U2502 ( .A0(compare_table[21]), .A1(n1459), .B0(compare_table[20]), 
        .B1(n1458), .Y(n1451) );
  OAI22XL U2503 ( .A0(compare_table[23]), .A1(n1461), .B0(compare_table[22]), 
        .B1(n1460), .Y(n1450) );
  OAI21XL U2504 ( .A0(n1451), .A1(n1450), .B0(N89), .Y(n1455) );
  OAI22XL U2505 ( .A0(compare_table[17]), .A1(n1459), .B0(compare_table[16]), 
        .B1(n1458), .Y(n1453) );
  OAI22XL U2506 ( .A0(compare_table[19]), .A1(n1461), .B0(compare_table[18]), 
        .B1(n1460), .Y(n1452) );
  OAI21XL U2507 ( .A0(n1453), .A1(n1452), .B0(n1472), .Y(n1454) );
  AOI21X1 U2508 ( .A0(n1455), .A1(n1454), .B0(N90), .Y(n1467) );
  OAI22XL U2509 ( .A0(compare_table[29]), .A1(n1459), .B0(compare_table[28]), 
        .B1(n1458), .Y(n1457) );
  OAI22XL U2510 ( .A0(compare_table[31]), .A1(n1461), .B0(compare_table[30]), 
        .B1(n1460), .Y(n1456) );
  OAI21XL U2511 ( .A0(n1457), .A1(n1456), .B0(N89), .Y(n1465) );
  OAI22XL U2512 ( .A0(compare_table[25]), .A1(n1459), .B0(compare_table[24]), 
        .B1(n1458), .Y(n1463) );
  OAI22XL U2513 ( .A0(compare_table[27]), .A1(n1461), .B0(compare_table[26]), 
        .B1(n1460), .Y(n1462) );
  OAI21XL U2514 ( .A0(n1463), .A1(n1462), .B0(n1472), .Y(n1464) );
  AOI21X1 U2515 ( .A0(n1465), .A1(n1464), .B0(n1473), .Y(n1466) );
  OAI33X1 U2516 ( .A0(n1469), .A1(N91), .A2(n1468), .B0(n1474), .B1(n1467), 
        .B2(n1466), .Y(N541) );
  XOR2X1 U2517 ( .A(N96), .B(\add_36_2/carry [4]), .Y(nx_match_index[4]) );
  AND2X1 U2518 ( .A(N95), .B(\add_36_2/carry [3]), .Y(\add_36_2/carry [4]) );
  XOR2X1 U2519 ( .A(N95), .B(\add_36_2/carry [3]), .Y(nx_match_index[3]) );
  AND2X1 U2520 ( .A(N94), .B(\add_36_2/carry [2]), .Y(\add_36_2/carry [3]) );
  XOR2X1 U2521 ( .A(N94), .B(\add_36_2/carry [2]), .Y(nx_match_index[2]) );
  AND2X1 U2522 ( .A(N97), .B(N92), .Y(\add_36_2/carry [1]) );
  XOR2X1 U2523 ( .A(N97), .B(N92), .Y(nx_match_index[0]) );
  XNOR2X1 U2524 ( .A(match_index_tail[4]), .B(\sub_36/carry [4]), .Y(N96) );
  OR2X1 U2525 ( .A(match_index_tail[3]), .B(\sub_36/carry [3]), .Y(
        \sub_36/carry [4]) );
  XNOR2X1 U2526 ( .A(\sub_36/carry [3]), .B(match_index_tail[3]), .Y(N95) );
  OR2X1 U2527 ( .A(n246), .B(match_index_tail[0]), .Y(\sub_36/carry [1]) );
  XNOR2X1 U2528 ( .A(match_index_tail[0]), .B(n246), .Y(N92) );
  XOR2X1 U2529 ( .A(\add_270/carry [4]), .B(N91), .Y(N363) );
  NOR2X1 U2530 ( .A(cs[0]), .B(cs[2]), .Y(n1600) );
  XNOR2X1 U2531 ( .A(cs[1]), .B(n1600), .Y(n1601) );
  AO22X1 U2532 ( .A0(N391), .A1(cs[2]), .B0(N369), .B1(n1619), .Y(n1602) );
  NOR2X1 U2533 ( .A(n1609), .B(cs[1]), .Y(n1608) );
  NOR2X1 U2534 ( .A(n1620), .B(n1609), .Y(n1606) );
  AOI222XL U2535 ( .A0(pat_addr[0]), .A1(n1609), .B0(n1602), .B1(n1608), .C0(
        N376), .C1(n1606), .Y(n1603) );
  CLKINVX1 U2536 ( .A(n1603), .Y(nx_pat_addr[0]) );
  AO22X1 U2537 ( .A0(N392), .A1(cs[2]), .B0(N370), .B1(n1619), .Y(n1604) );
  AOI222XL U2538 ( .A0(pat_addr[1]), .A1(n1609), .B0(n1604), .B1(n1608), .C0(
        N377), .C1(n1606), .Y(n1605) );
  CLKINVX1 U2539 ( .A(n1605), .Y(nx_pat_addr[1]) );
  AO22X1 U2540 ( .A0(N393), .A1(cs[2]), .B0(N371), .B1(n1619), .Y(n1607) );
  AOI222XL U2541 ( .A0(pat_addr[2]), .A1(n1609), .B0(n1608), .B1(n1607), .C0(
        N378), .C1(n1606), .Y(n1610) );
  CLKINVX1 U2542 ( .A(n1610), .Y(nx_pat_addr[2]) );
  AOI222XL U2543 ( .A0(N87), .A1(n1617), .B0(N364), .B1(n1616), .C0(N386), 
        .C1(n1615), .Y(n1611) );
  AOI222XL U2544 ( .A0(N88), .A1(n1617), .B0(N365), .B1(n1616), .C0(N387), 
        .C1(n1615), .Y(n1612) );
  AOI222XL U2545 ( .A0(N89), .A1(n1617), .B0(N366), .B1(n1616), .C0(N388), 
        .C1(n1615), .Y(n1613) );
  AOI222XL U2546 ( .A0(N90), .A1(n1617), .B0(N367), .B1(n1616), .C0(N389), 
        .C1(n1615), .Y(n1614) );
  CLKINVX1 U2547 ( .A(n1614), .Y(nx_str_addr[3]) );
  AOI222XL U2548 ( .A0(N91), .A1(n1617), .B0(N368), .B1(n1616), .C0(N390), 
        .C1(n1615), .Y(n1618) );
  CLKINVX1 U2549 ( .A(n1618), .Y(nx_str_addr[4]) );
endmodule

