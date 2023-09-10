/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Fri Feb 17 21:46:23 2023
/////////////////////////////////////////////////////////////


module S1 ( clk, rst, updown, S1_done, RB1_RW, RB1_A, RB1_D, RB1_Q, sen, sd );
  output [4:0] RB1_A;
  output [7:0] RB1_D;
  input [7:0] RB1_Q;
  input clk, rst, updown;
  output S1_done, RB1_RW;
  inout sen,  sd;
  wire   n1470, n1471, n1472, \receive_buff[8] , N127, N128, N129, N130, N131,
         N224, N225, N226, N227, N228, N234, N235, N236, N237, N238, N239,
         N249, N250, N251, N252, N253, N275, N276, N277, N278, N279, N280,
         N281, N282, N283, n9, n11, n12, n13, n15, n17, n22, n23, n24, n25,
         n26, n30, n38, n41, n42, n45, n53, n56, n64, n66, n68, n69, n72, n82,
         n90, n93, n101, n102, n104, n107, n109, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n127,
         n128, n129, n130, n131, n133, n134, n137, n138, n139, n140, n142,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n154, n155,
         n159, n161, n163, n164, n166, n167, n170, n180, n190, n192, n196,
         n206, n216, n224, n225, n226, n227, n228, n229, n231, n233, n234,
         n235, n236, n237, n239, n241, n242, n243, n244, n246, n248, n249,
         n250, n251, n252, n254, n256, n257, n258, n259, n260, n261, n262,
         n265, n268, n271, n274, n275, n276, n277, n278, n281, n284, n287,
         n290, n291, n292, n293, n294, n297, n300, n303, n306, n307, n308,
         n309, n310, n313, n316, n319, n322, n323, n324, n325, n326, n329,
         n332, n335, n338, n339, n340, n341, n342, n345, n348, n351, n354,
         n355, n356, n357, n358, n361, n363, n364, n366, n369, n370, n374,
         n375, n376, n379, n380, n381, n382, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n535, n536, n537, n716, n717, n718, n719, n720, n722, n723, n724,
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
         n989, n990, n991, n992, n993, n994, n995, n996, n997, n998, n999,
         n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009,
         n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019,
         n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029,
         n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039,
         n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049,
         n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059,
         n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069,
         n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079,
         n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089,
         n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099,
         n1100, n1101, n1102, n1111, n1116, n1230, n1231, n1232, n1233, n1234,
         n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244,
         n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254,
         n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264,
         n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274,
         n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284,
         n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294,
         n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304,
         n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314,
         n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324,
         n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334,
         n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344,
         n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354,
         n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364,
         n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374,
         n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384,
         n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393, n1394,
         n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403, n1404,
         n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413, n1414,
         n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423, n1424,
         n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433, n1434,
         n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443, n1444,
         n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453, n1454,
         n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463, n1464,
         n1465, n1466, n1467, n1468, n1469;
  wire   [4:0] counter;
  wire   [4:0] times;
  wire   [2:0] ns;
  wire   [4:0] nx_counter;
  wire   [5:0] \sub_154/carry ;
  wire   [4:2] \add_43/carry ;
  wire   [4:2] \r337/carry ;
  wire   [4:2] \r336/carry ;

  TBUFX16 sd_tri ( .A(n537), .OE(n536), .Y(sd) );
  TBUFX16 sen_tri ( .A(n535), .OE(n536), .Y(sen) );
  DFFNSRX1 \RB1_data_reg[0][4]  ( .D(n1051), .CKN(clk), .SN(1'b1), .RN(n1264), 
        .Q(n1345), .QN(n451) );
  DFFNSRX1 \RB1_data_reg[0][6]  ( .D(n1025), .CKN(clk), .SN(1'b1), .RN(n1264), 
        .Q(n1347), .QN(n449) );
  DFFNSRX1 \RB1_data_reg[0][7]  ( .D(n1021), .CKN(clk), .SN(1'b1), .RN(n1264), 
        .Q(n1348), .QN(n448) );
  DFFNSRX1 \RB1_data_reg[4][6]  ( .D(n1019), .CKN(clk), .SN(1'b1), .RN(n1262), 
        .Q(n1363), .QN(n417) );
  DFFNSRX1 \RB1_data_reg[4][7]  ( .D(n1004), .CKN(clk), .SN(1'b1), .RN(n1262), 
        .Q(n1364), .QN(n416) );
  DFFNSRX1 \RB1_data_reg[1][4]  ( .D(n1002), .CKN(clk), .SN(1'b1), .RN(n1261), 
        .Q(n1377), .QN(n443) );
  DFFNSRX1 \RB1_data_reg[1][6]  ( .D(n991), .CKN(clk), .SN(1'b1), .RN(n1261), 
        .Q(n1379), .QN(n441) );
  DFFNSRX1 \RB1_data_reg[1][7]  ( .D(n987), .CKN(clk), .SN(1'b1), .RN(n1261), 
        .Q(n1380), .QN(n440) );
  DFFNSRX1 \RB1_data_reg[5][6]  ( .D(n985), .CKN(clk), .SN(1'b1), .RN(n1260), 
        .Q(n1395), .QN(n409) );
  DFFNSRX1 \RB1_data_reg[5][7]  ( .D(n969), .CKN(clk), .SN(1'b1), .RN(n1260), 
        .Q(n1396), .QN(n408) );
  DFFNSRX1 \RB1_data_reg[10][6]  ( .D(n967), .CKN(clk), .SN(1'b1), .RN(n1258), 
        .Q(n1411), .QN(n522) );
  DFFNSRX1 \RB1_data_reg[10][7]  ( .D(n951), .CKN(clk), .SN(1'b1), .RN(n1258), 
        .Q(n1412), .QN(n521) );
  DFFNSRX1 \RB1_data_reg[14][6]  ( .D(n949), .CKN(clk), .SN(1'b1), .RN(n1257), 
        .Q(n1427), .QN(n490) );
  DFFNSRX1 \RB1_data_reg[14][7]  ( .D(n933), .CKN(clk), .SN(1'b1), .RN(n1257), 
        .Q(n1428), .QN(n489) );
  DFFNSRX1 \RB1_data_reg[13][6]  ( .D(n931), .CKN(clk), .SN(1'b1), .RN(n1256), 
        .Q(n1451), .QN(n498) );
  DFFNSRX1 \RB1_data_reg[13][7]  ( .D(n913), .CKN(clk), .SN(1'b1), .RN(n1256), 
        .Q(n1452), .QN(n497) );
  DFFNSRX1 \RB1_data_reg[9][6]  ( .D(n911), .CKN(clk), .SN(1'b1), .RN(n1255), 
        .Q(n1465), .QN(n530) );
  DFFNSRX1 \RB1_data_reg[9][7]  ( .D(n898), .CKN(clk), .SN(1'b1), .RN(n1255), 
        .Q(n1466), .QN(n529) );
  DFFNSRX1 \RB1_data_reg[0][1]  ( .D(n906), .CKN(clk), .SN(1'b1), .RN(n1264), 
        .Q(n1342), .QN(n454) );
  DFFNSRX1 \RB1_data_reg[0][2]  ( .D(n1031), .CKN(clk), .SN(1'b1), .RN(n1264), 
        .Q(n1343), .QN(n453) );
  DFFNSRX1 \RB1_data_reg[0][3]  ( .D(n1029), .CKN(clk), .SN(1'b1), .RN(n1264), 
        .Q(n1344), .QN(n452) );
  DFFNSRX1 \RB1_data_reg[0][5]  ( .D(n1027), .CKN(clk), .SN(1'b1), .RN(n1264), 
        .Q(n1346), .QN(n450) );
  DFFNSRX1 \RB1_data_reg[0][0]  ( .D(n1023), .CKN(clk), .SN(1'b1), .RN(n1264), 
        .Q(n1349), .QN(n447) );
  DFFNSRX1 \RB1_data_reg[4][1]  ( .D(n1017), .CKN(clk), .SN(1'b1), .RN(n1263), 
        .Q(n1358), .QN(n422) );
  DFFNSRX1 \RB1_data_reg[4][2]  ( .D(n1014), .CKN(clk), .SN(1'b1), .RN(n1263), 
        .Q(n1359), .QN(n421) );
  DFFNSRX1 \RB1_data_reg[4][3]  ( .D(n1012), .CKN(clk), .SN(1'b1), .RN(n1263), 
        .Q(n1360), .QN(n420) );
  DFFNSRX1 \RB1_data_reg[4][4]  ( .D(n1010), .CKN(clk), .SN(1'b1), .RN(n1263), 
        .Q(n1361), .QN(n419) );
  DFFNSRX1 \RB1_data_reg[4][5]  ( .D(n1008), .CKN(clk), .SN(1'b1), .RN(n1262), 
        .Q(n1362), .QN(n418) );
  DFFNSRX1 \RB1_data_reg[4][0]  ( .D(n1006), .CKN(clk), .SN(1'b1), .RN(n1262), 
        .Q(n1365), .QN(n415) );
  DFFNSRX1 \RB1_data_reg[1][1]  ( .D(n1000), .CKN(clk), .SN(1'b1), .RN(n1261), 
        .Q(n1374), .QN(n446) );
  DFFNSRX1 \RB1_data_reg[1][2]  ( .D(n997), .CKN(clk), .SN(1'b1), .RN(n1261), 
        .Q(n1375), .QN(n445) );
  DFFNSRX1 \RB1_data_reg[1][3]  ( .D(n995), .CKN(clk), .SN(1'b1), .RN(n1261), 
        .Q(n1376), .QN(n444) );
  DFFNSRX1 \RB1_data_reg[1][5]  ( .D(n993), .CKN(clk), .SN(1'b1), .RN(n1261), 
        .Q(n1378), .QN(n442) );
  DFFNSRX1 \RB1_data_reg[1][0]  ( .D(n989), .CKN(clk), .SN(1'b1), .RN(n1261), 
        .Q(n1381), .QN(n439) );
  DFFNSRX1 \RB1_data_reg[5][1]  ( .D(n983), .CKN(clk), .SN(1'b1), .RN(n1260), 
        .Q(n1390), .QN(n414) );
  DFFNSRX1 \RB1_data_reg[5][2]  ( .D(n979), .CKN(clk), .SN(1'b1), .RN(n1260), 
        .Q(n1391), .QN(n413) );
  DFFNSRX1 \RB1_data_reg[5][3]  ( .D(n977), .CKN(clk), .SN(1'b1), .RN(n1260), 
        .Q(n1392), .QN(n412) );
  DFFNSRX1 \RB1_data_reg[5][4]  ( .D(n975), .CKN(clk), .SN(1'b1), .RN(n1260), 
        .Q(n1393), .QN(n411) );
  DFFNSRX1 \RB1_data_reg[5][5]  ( .D(n973), .CKN(clk), .SN(1'b1), .RN(n1260), 
        .Q(n1394), .QN(n410) );
  DFFNSRX1 \RB1_data_reg[5][0]  ( .D(n971), .CKN(clk), .SN(1'b1), .RN(n1260), 
        .Q(n1397), .QN(n407) );
  DFFNSRX1 \RB1_data_reg[10][1]  ( .D(n965), .CKN(clk), .SN(1'b1), .RN(n1259), 
        .Q(n1406), .QN(n527) );
  DFFNSRX1 \RB1_data_reg[10][2]  ( .D(n961), .CKN(clk), .SN(1'b1), .RN(n1259), 
        .Q(n1407), .QN(n526) );
  DFFNSRX1 \RB1_data_reg[10][3]  ( .D(n959), .CKN(clk), .SN(1'b1), .RN(n1259), 
        .Q(n1408), .QN(n525) );
  DFFNSRX1 \RB1_data_reg[10][4]  ( .D(n957), .CKN(clk), .SN(1'b1), .RN(n1259), 
        .Q(n1409), .QN(n524) );
  DFFNSRX1 \RB1_data_reg[10][5]  ( .D(n955), .CKN(clk), .SN(1'b1), .RN(n1258), 
        .Q(n1410), .QN(n523) );
  DFFNSRX1 \RB1_data_reg[10][0]  ( .D(n953), .CKN(clk), .SN(1'b1), .RN(n1258), 
        .Q(n1413), .QN(n520) );
  DFFNSRX1 \RB1_data_reg[14][1]  ( .D(n947), .CKN(clk), .SN(1'b1), .RN(n1257), 
        .Q(n1422), .QN(n495) );
  DFFNSRX1 \RB1_data_reg[14][2]  ( .D(n943), .CKN(clk), .SN(1'b1), .RN(n1257), 
        .Q(n1423), .QN(n494) );
  DFFNSRX1 \RB1_data_reg[14][3]  ( .D(n941), .CKN(clk), .SN(1'b1), .RN(n1257), 
        .Q(n1424), .QN(n493) );
  DFFNSRX1 \RB1_data_reg[14][4]  ( .D(n939), .CKN(clk), .SN(1'b1), .RN(n1257), 
        .Q(n1425), .QN(n492) );
  DFFNSRX1 \RB1_data_reg[14][5]  ( .D(n937), .CKN(clk), .SN(1'b1), .RN(n1257), 
        .Q(n1426), .QN(n491) );
  DFFNSRX1 \RB1_data_reg[14][0]  ( .D(n935), .CKN(clk), .SN(1'b1), .RN(n1257), 
        .Q(n1429), .QN(n488) );
  DFFNSRX1 \RB1_data_reg[13][1]  ( .D(n929), .CKN(clk), .SN(1'b1), .RN(n1256), 
        .Q(n1446), .QN(n503) );
  DFFNSRX1 \RB1_data_reg[13][2]  ( .D(n923), .CKN(clk), .SN(1'b1), .RN(n1256), 
        .Q(n1447), .QN(n502) );
  DFFNSRX1 \RB1_data_reg[13][3]  ( .D(n921), .CKN(clk), .SN(1'b1), .RN(n1256), 
        .Q(n1448), .QN(n501) );
  DFFNSRX1 \RB1_data_reg[13][4]  ( .D(n919), .CKN(clk), .SN(1'b1), .RN(n1256), 
        .Q(n1449), .QN(n500) );
  DFFNSRX1 \RB1_data_reg[13][5]  ( .D(n917), .CKN(clk), .SN(1'b1), .RN(n1256), 
        .Q(n1450), .QN(n499) );
  DFFNSRX1 \RB1_data_reg[13][0]  ( .D(n915), .CKN(clk), .SN(1'b1), .RN(n1256), 
        .Q(n1453), .QN(n496) );
  DFFNSRX1 \RB1_data_reg[9][3]  ( .D(n909), .CKN(clk), .SN(1'b1), .RN(n1255), 
        .Q(n1462), .QN(n533) );
  DFFNSRX1 \RB1_data_reg[9][4]  ( .D(n904), .CKN(clk), .SN(1'b1), .RN(n1255), 
        .Q(n1463), .QN(n532) );
  DFFNSRX1 \RB1_data_reg[9][5]  ( .D(n902), .CKN(clk), .SN(1'b1), .RN(n1255), 
        .Q(n1464), .QN(n531) );
  DFFNSRX1 \RB1_data_reg[9][0]  ( .D(n900), .CKN(clk), .SN(1'b1), .RN(n1255), 
        .Q(n1467), .QN(n528) );
  DFFNSRX1 \RB1_data_reg[9][1]  ( .D(n895), .CKN(clk), .SN(1'b1), .RN(n1255), 
        .Q(n1468), .QN(n382) );
  DFFNSRX1 \RB1_data_reg[9][2]  ( .D(n893), .CKN(clk), .SN(1'b1), .RN(n1255), 
        .Q(n1469), .QN(n381) );
  DFFNSRX1 \cs_reg[0]  ( .D(ns[0]), .CKN(clk), .SN(1'b1), .RN(n1267), .QN(n723) );
  DFFNSRX1 \counter_reg[4]  ( .D(nx_counter[4]), .CKN(clk), .SN(1'b1), .RN(
        n1267), .Q(counter[4]), .QN(n461) );
  DFFNSRX1 \counter_reg[3]  ( .D(nx_counter[3]), .CKN(clk), .SN(1'b1), .RN(
        n1267), .Q(counter[3]), .QN(n1268) );
  DFFNSRX1 \counter_reg[1]  ( .D(nx_counter[1]), .CKN(clk), .SN(1'b1), .RN(
        n1267), .Q(counter[1]), .QN(n1270) );
  DFFNSRX1 \counter_reg[0]  ( .D(nx_counter[0]), .CKN(clk), .SN(1'b1), .RN(
        n1267), .Q(N249), .QN(n716) );
  DFFNSRX1 \times_reg[2]  ( .D(n886), .CKN(clk), .SN(1'b1), .RN(n1266), .Q(
        times[2]), .QN(n1318) );
  DFFNSRX1 \times_reg[1]  ( .D(n887), .CKN(clk), .SN(1'b1), .RN(n1266), .Q(
        times[1]), .QN(n1317) );
  DFFNSRX1 \RB1_A_reg[3]  ( .D(n870), .CKN(clk), .SN(1'b1), .RN(n1265), .QN(
        n718) );
  DFFNSRX1 \RB1_A_reg[2]  ( .D(n869), .CKN(clk), .SN(1'b1), .RN(n1265), .QN(
        n719) );
  DFFNSRX1 \RB1_A_reg[1]  ( .D(n868), .CKN(clk), .SN(1'b1), .RN(n1265), .QN(
        n720) );
  DFFNSRX1 \RB1_A_reg[4]  ( .D(n889), .CKN(clk), .SN(1'b1), .RN(n1265), .Q(
        n1230), .QN(n717) );
  DFFNSRX1 \RB1_A_reg[0]  ( .D(n1066), .CKN(clk), .SN(1'b1), .RN(n1265), .Q(
        n1472), .QN(N127) );
  DFFNSRX1 \cs_reg[1]  ( .D(ns[1]), .CKN(clk), .SN(1'b1), .RN(n1266), .Q(n1316), .QN(n722) );
  DFFNSRX1 \receive_buff_reg[5]  ( .D(n878), .CKN(clk), .SN(1'b1), .RN(n1265), 
        .QN(n460) );
  DFFNSRX1 \receive_buff_reg[7]  ( .D(n876), .CKN(clk), .SN(1'b1), .RN(n1266), 
        .QN(n463) );
  DFFNSRX1 \receive_buff_reg[6]  ( .D(n877), .CKN(clk), .SN(1'b1), .RN(n1266), 
        .QN(n462) );
  DFFNSRX1 \receive_buff_reg[0]  ( .D(n1067), .CKN(clk), .SN(1'b1), .RN(n1265), 
        .QN(n455) );
  DFFNSRX1 \receive_buff_reg[4]  ( .D(n879), .CKN(clk), .SN(1'b1), .RN(n1265), 
        .QN(n459) );
  DFFNSRX1 \receive_buff_reg[1]  ( .D(n882), .CKN(clk), .SN(1'b1), .RN(n1265), 
        .QN(n456) );
  DFFNSRX1 \receive_buff_reg[2]  ( .D(n881), .CKN(clk), .SN(1'b1), .RN(n1265), 
        .QN(n457) );
  DFFNSRX1 \receive_buff_reg[3]  ( .D(n880), .CKN(clk), .SN(1'b1), .RN(n1265), 
        .QN(n458) );
  DFFNSRXL \times_reg[4]  ( .D(n884), .CKN(clk), .SN(1'b1), .RN(n1266), .Q(
        times[4]), .QN(n1320) );
  DFFNSRXL \times_reg[3]  ( .D(n885), .CKN(clk), .SN(1'b1), .RN(n1281), .Q(
        times[3]), .QN(n1319) );
  DFFNSRXL \RB1_data_reg[17][2]  ( .D(n1085), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1335) );
  DFFNSRXL \RB1_data_reg[17][1]  ( .D(n1086), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1334) );
  DFFNSRXL \RB1_data_reg[16][2]  ( .D(n1087), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1327) );
  DFFNSRXL \RB1_data_reg[16][1]  ( .D(n1088), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1326) );
  DFFNSRXL \RB1_data_reg[15][2]  ( .D(n1089), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1455) );
  DFFNSRXL \RB1_data_reg[15][1]  ( .D(n1090), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1454) );
  DFFNSRXL \RB1_data_reg[12][2]  ( .D(n1091), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1415) );
  DFFNSRXL \RB1_data_reg[12][1]  ( .D(n1092), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1414) );
  DFFNSRXL \RB1_data_reg[11][2]  ( .D(n1093), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1439) );
  DFFNSRXL \RB1_data_reg[11][1]  ( .D(n1094), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1438) );
  DFFNSRXL \RB1_data_reg[8][2]  ( .D(n1095), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1431) );
  DFFNSRXL \RB1_data_reg[8][1]  ( .D(n1096), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1430) );
  DFFNSRXL \RB1_data_reg[7][2]  ( .D(n1097), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1399) );
  DFFNSRXL \RB1_data_reg[7][1]  ( .D(n1098), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1398) );
  DFFNSRXL \RB1_data_reg[6][2]  ( .D(n1099), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1367) );
  DFFNSRXL \RB1_data_reg[6][1]  ( .D(n1100), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1366) );
  DFFNSRXL \RB1_data_reg[3][2]  ( .D(n1101), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1383) );
  DFFNSRXL \RB1_data_reg[3][1]  ( .D(n1069), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1382) );
  DFFNSRXL \RB1_data_reg[2][2]  ( .D(n1070), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1351) );
  DFFNSRXL \RB1_data_reg[2][1]  ( .D(n1071), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1350) );
  DFFNSRXL \RB1_data_reg[17][7]  ( .D(n1072), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1340) );
  DFFNSRXL \RB1_data_reg[17][6]  ( .D(n1073), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1339) );
  DFFNSRXL \RB1_data_reg[17][5]  ( .D(n1074), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1338) );
  DFFNSRXL \RB1_data_reg[17][4]  ( .D(n1075), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1337) );
  DFFNSRXL \RB1_data_reg[17][3]  ( .D(n1076), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1336) );
  DFFNSRXL \RB1_data_reg[17][0]  ( .D(n1077), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1341) );
  DFFNSRXL \RB1_data_reg[16][7]  ( .D(n1078), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1332) );
  DFFNSRXL \RB1_data_reg[16][6]  ( .D(n1079), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1331) );
  DFFNSRXL \RB1_data_reg[16][5]  ( .D(n1080), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1330) );
  DFFNSRXL \RB1_data_reg[16][4]  ( .D(n1081), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1329) );
  DFFNSRXL \RB1_data_reg[16][3]  ( .D(n1082), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1328) );
  DFFNSRXL \RB1_data_reg[16][0]  ( .D(n1083), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1333) );
  DFFNSRXL \RB1_data_reg[15][7]  ( .D(n1060), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1460) );
  DFFNSRXL \RB1_data_reg[15][6]  ( .D(n1068), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1459) );
  DFFNSRXL \RB1_data_reg[15][5]  ( .D(n1037), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1458) );
  DFFNSRXL \RB1_data_reg[15][4]  ( .D(n1047), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1457) );
  DFFNSRXL \RB1_data_reg[15][3]  ( .D(n1041), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1456) );
  DFFNSRXL \RB1_data_reg[15][0]  ( .D(n1046), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1461) );
  DFFNSRXL \RB1_data_reg[12][7]  ( .D(n1044), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1420) );
  DFFNSRXL \RB1_data_reg[12][6]  ( .D(n1048), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1419) );
  DFFNSRXL \RB1_data_reg[12][5]  ( .D(n1042), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1418) );
  DFFNSRXL \RB1_data_reg[12][4]  ( .D(n1043), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1417) );
  DFFNSRXL \RB1_data_reg[12][3]  ( .D(n1084), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1416) );
  DFFNSRXL \RB1_data_reg[12][0]  ( .D(n1039), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1421) );
  DFFNSRXL \RB1_data_reg[11][7]  ( .D(n1064), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1444) );
  DFFNSRXL \RB1_data_reg[11][6]  ( .D(n1063), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1443) );
  DFFNSRXL \RB1_data_reg[11][5]  ( .D(n1062), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1442) );
  DFFNSRXL \RB1_data_reg[11][4]  ( .D(n1061), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1441) );
  DFFNSRXL \RB1_data_reg[11][3]  ( .D(n1038), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1440) );
  DFFNSRXL \RB1_data_reg[11][0]  ( .D(n1059), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1445) );
  DFFNSRXL \RB1_data_reg[8][7]  ( .D(n1065), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1436) );
  DFFNSRXL \RB1_data_reg[8][6]  ( .D(n1056), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1435) );
  DFFNSRXL \RB1_data_reg[8][5]  ( .D(n1055), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1434) );
  DFFNSRXL \RB1_data_reg[8][4]  ( .D(n1058), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1433) );
  DFFNSRXL \RB1_data_reg[8][3]  ( .D(n1057), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1432) );
  DFFNSRXL \RB1_data_reg[8][0]  ( .D(n1054), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1437) );
  DFFNSRXL \RB1_data_reg[7][7]  ( .D(n891), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1404) );
  DFFNSRXL \RB1_data_reg[7][6]  ( .D(n1053), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1403) );
  DFFNSRXL \RB1_data_reg[7][5]  ( .D(n1040), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1402) );
  DFFNSRXL \RB1_data_reg[7][4]  ( .D(n1036), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1401) );
  DFFNSRXL \RB1_data_reg[7][3]  ( .D(n1045), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1400) );
  DFFNSRXL \RB1_data_reg[7][0]  ( .D(n1049), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1405) );
  DFFNSRXL \RB1_data_reg[6][7]  ( .D(n1102), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1372) );
  DFFNSRXL \RB1_data_reg[6][6]  ( .D(n896), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1371) );
  DFFNSRXL \RB1_data_reg[6][5]  ( .D(n1033), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1370) );
  DFFNSRXL \RB1_data_reg[6][4]  ( .D(n1034), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1369) );
  DFFNSRXL \RB1_data_reg[6][3]  ( .D(n1035), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1368) );
  DFFNSRXL \RB1_data_reg[6][0]  ( .D(n1052), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1373) );
  DFFNSRXL \RB1_data_reg[3][7]  ( .D(n907), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1388) );
  DFFNSRXL \RB1_data_reg[3][6]  ( .D(n924), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1387) );
  DFFNSRXL \RB1_data_reg[3][5]  ( .D(n945), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1386) );
  DFFNSRXL \RB1_data_reg[3][4]  ( .D(n962), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1385) );
  DFFNSRXL \RB1_data_reg[3][3]  ( .D(n925), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1384) );
  DFFNSRXL \RB1_data_reg[3][0]  ( .D(n926), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1389) );
  DFFNSRXL \RB1_data_reg[2][7]  ( .D(n927), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1356) );
  DFFNSRXL \RB1_data_reg[2][6]  ( .D(n944), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1355) );
  DFFNSRXL \RB1_data_reg[2][5]  ( .D(n963), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1354) );
  DFFNSRXL \RB1_data_reg[2][4]  ( .D(n980), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1353) );
  DFFNSRXL \RB1_data_reg[2][3]  ( .D(n998), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1352) );
  DFFNSRXL \RB1_data_reg[2][0]  ( .D(n1015), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1357) );
  DFFNSRXL \receive_buff_reg[8]  ( .D(n981), .CKN(clk), .SN(1'b1), .RN(n1266), 
        .Q(\receive_buff[8] ), .QN(n1324) );
  DFFNSRXL \receive_buff_reg[10]  ( .D(n873), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1322) );
  DFFNSRXL \receive_buff_reg[12]  ( .D(n890), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1325) );
  DFFNSRXL \receive_buff_reg[9]  ( .D(n874), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1323) );
  DFFNSRXL \receive_buff_reg[11]  ( .D(n872), .CKN(clk), .SN(1'b1), .RN(n1281), 
        .QN(n1321) );
  DFFNSRX2 \times_reg[0]  ( .D(n1032), .CKN(clk), .SN(1'b1), .RN(n1266), .Q(
        times[0]), .QN(N224) );
  DFFNSRX2 \counter_reg[2]  ( .D(nx_counter[2]), .CKN(clk), .SN(1'b1), .RN(
        n1267), .Q(counter[2]), .QN(n1269) );
  DFFNSRX2 \cs_reg[2]  ( .D(ns[2]), .CKN(clk), .SN(1'b1), .RN(n1267), .Q(n1312), .QN(n536) );
  BUFX2 U741 ( .A(n786), .Y(n891) );
  CLKINVX1 U742 ( .A(n797), .Y(n892) );
  CLKINVX1 U743 ( .A(n892), .Y(n893) );
  CLKINVX1 U744 ( .A(n796), .Y(n894) );
  CLKINVX1 U745 ( .A(n894), .Y(n895) );
  BUFX2 U746 ( .A(n777), .Y(n896) );
  CLKINVX1 U747 ( .A(n802), .Y(n897) );
  CLKINVX1 U748 ( .A(n897), .Y(n898) );
  CLKINVX1 U749 ( .A(n803), .Y(n899) );
  CLKINVX1 U750 ( .A(n899), .Y(n900) );
  CLKINVX1 U751 ( .A(n800), .Y(n901) );
  CLKINVX1 U752 ( .A(n901), .Y(n902) );
  CLKINVX1 U753 ( .A(n799), .Y(n903) );
  CLKINVX1 U754 ( .A(n903), .Y(n904) );
  CLKINVX1 U755 ( .A(n724), .Y(n905) );
  CLKINVX1 U756 ( .A(n905), .Y(n906) );
  BUFX2 U757 ( .A(n754), .Y(n907) );
  CLKINVX1 U758 ( .A(n798), .Y(n908) );
  CLKINVX1 U759 ( .A(n908), .Y(n909) );
  CLKINVX1 U760 ( .A(n801), .Y(n910) );
  CLKINVX1 U761 ( .A(n910), .Y(n911) );
  CLKINVX1 U762 ( .A(n834), .Y(n912) );
  CLKINVX1 U763 ( .A(n912), .Y(n913) );
  CLKINVX1 U764 ( .A(n835), .Y(n914) );
  CLKINVX1 U765 ( .A(n914), .Y(n915) );
  CLKINVX1 U766 ( .A(n832), .Y(n916) );
  CLKINVX1 U767 ( .A(n916), .Y(n917) );
  CLKINVX1 U768 ( .A(n831), .Y(n918) );
  CLKINVX1 U769 ( .A(n918), .Y(n919) );
  CLKINVX1 U770 ( .A(n830), .Y(n920) );
  CLKINVX1 U771 ( .A(n920), .Y(n921) );
  CLKINVX1 U772 ( .A(n829), .Y(n922) );
  CLKINVX1 U773 ( .A(n922), .Y(n923) );
  BUFX2 U774 ( .A(n753), .Y(n924) );
  BUFX2 U775 ( .A(n750), .Y(n925) );
  BUFX2 U776 ( .A(n755), .Y(n926) );
  BUFX2 U777 ( .A(n746), .Y(n927) );
  CLKINVX1 U778 ( .A(n828), .Y(n928) );
  CLKINVX1 U779 ( .A(n928), .Y(n929) );
  CLKINVX1 U780 ( .A(n833), .Y(n930) );
  CLKINVX1 U781 ( .A(n930), .Y(n931) );
  CLKINVX1 U782 ( .A(n842), .Y(n932) );
  CLKINVX1 U783 ( .A(n932), .Y(n933) );
  CLKINVX1 U784 ( .A(n843), .Y(n934) );
  CLKINVX1 U785 ( .A(n934), .Y(n935) );
  CLKINVX1 U786 ( .A(n840), .Y(n936) );
  CLKINVX1 U787 ( .A(n936), .Y(n937) );
  CLKINVX1 U788 ( .A(n839), .Y(n938) );
  CLKINVX1 U789 ( .A(n938), .Y(n939) );
  CLKINVX1 U790 ( .A(n838), .Y(n940) );
  CLKINVX1 U791 ( .A(n940), .Y(n941) );
  CLKINVX1 U792 ( .A(n837), .Y(n942) );
  CLKINVX1 U793 ( .A(n942), .Y(n943) );
  BUFX2 U794 ( .A(n745), .Y(n944) );
  BUFX2 U795 ( .A(n752), .Y(n945) );
  CLKINVX1 U796 ( .A(n836), .Y(n946) );
  CLKINVX1 U797 ( .A(n946), .Y(n947) );
  CLKINVX1 U798 ( .A(n841), .Y(n948) );
  CLKINVX1 U799 ( .A(n948), .Y(n949) );
  CLKINVX1 U800 ( .A(n810), .Y(n950) );
  CLKINVX1 U801 ( .A(n950), .Y(n951) );
  CLKINVX1 U802 ( .A(n811), .Y(n952) );
  CLKINVX1 U803 ( .A(n952), .Y(n953) );
  CLKINVX1 U804 ( .A(n808), .Y(n954) );
  CLKINVX1 U805 ( .A(n954), .Y(n955) );
  CLKINVX1 U806 ( .A(n807), .Y(n956) );
  CLKINVX1 U807 ( .A(n956), .Y(n957) );
  CLKINVX1 U808 ( .A(n806), .Y(n958) );
  CLKINVX1 U809 ( .A(n958), .Y(n959) );
  CLKINVX1 U810 ( .A(n805), .Y(n960) );
  CLKINVX1 U811 ( .A(n960), .Y(n961) );
  BUFX2 U812 ( .A(n751), .Y(n962) );
  BUFX2 U813 ( .A(n744), .Y(n963) );
  CLKINVX1 U814 ( .A(n804), .Y(n964) );
  CLKINVX1 U815 ( .A(n964), .Y(n965) );
  CLKINVX1 U816 ( .A(n809), .Y(n966) );
  CLKINVX1 U817 ( .A(n966), .Y(n967) );
  CLKINVX1 U818 ( .A(n770), .Y(n968) );
  CLKINVX1 U819 ( .A(n968), .Y(n969) );
  CLKINVX1 U820 ( .A(n771), .Y(n970) );
  CLKINVX1 U821 ( .A(n970), .Y(n971) );
  CLKINVX1 U822 ( .A(n768), .Y(n972) );
  CLKINVX1 U823 ( .A(n972), .Y(n973) );
  CLKINVX1 U824 ( .A(n767), .Y(n974) );
  CLKINVX1 U825 ( .A(n974), .Y(n975) );
  CLKINVX1 U826 ( .A(n766), .Y(n976) );
  CLKINVX1 U827 ( .A(n976), .Y(n977) );
  CLKINVX1 U828 ( .A(n765), .Y(n978) );
  CLKINVX1 U829 ( .A(n978), .Y(n979) );
  BUFX2 U830 ( .A(n743), .Y(n980) );
  BUFX2 U831 ( .A(n875), .Y(n981) );
  CLKINVX1 U832 ( .A(n764), .Y(n982) );
  CLKINVX1 U833 ( .A(n982), .Y(n983) );
  CLKINVX1 U834 ( .A(n769), .Y(n984) );
  CLKINVX1 U835 ( .A(n984), .Y(n985) );
  CLKINVX1 U836 ( .A(n738), .Y(n986) );
  CLKINVX1 U837 ( .A(n986), .Y(n987) );
  CLKINVX1 U838 ( .A(n739), .Y(n988) );
  CLKINVX1 U839 ( .A(n988), .Y(n989) );
  CLKINVX1 U840 ( .A(n737), .Y(n990) );
  CLKINVX1 U841 ( .A(n990), .Y(n991) );
  CLKINVX1 U842 ( .A(n736), .Y(n992) );
  CLKINVX1 U843 ( .A(n992), .Y(n993) );
  CLKINVX1 U844 ( .A(n734), .Y(n994) );
  CLKINVX1 U845 ( .A(n994), .Y(n995) );
  CLKINVX1 U846 ( .A(n733), .Y(n996) );
  CLKINVX1 U847 ( .A(n996), .Y(n997) );
  BUFX2 U848 ( .A(n742), .Y(n998) );
  CLKINVX1 U849 ( .A(n732), .Y(n999) );
  CLKINVX1 U850 ( .A(n999), .Y(n1000) );
  CLKINVX1 U851 ( .A(n735), .Y(n1001) );
  CLKINVX1 U852 ( .A(n1001), .Y(n1002) );
  CLKINVX1 U853 ( .A(n762), .Y(n1003) );
  CLKINVX1 U854 ( .A(n1003), .Y(n1004) );
  CLKINVX1 U855 ( .A(n763), .Y(n1005) );
  CLKINVX1 U856 ( .A(n1005), .Y(n1006) );
  CLKINVX1 U857 ( .A(n760), .Y(n1007) );
  CLKINVX1 U858 ( .A(n1007), .Y(n1008) );
  CLKINVX1 U859 ( .A(n759), .Y(n1009) );
  CLKINVX1 U860 ( .A(n1009), .Y(n1010) );
  CLKINVX1 U861 ( .A(n758), .Y(n1011) );
  CLKINVX1 U862 ( .A(n1011), .Y(n1012) );
  CLKINVX1 U863 ( .A(n757), .Y(n1013) );
  CLKINVX1 U864 ( .A(n1013), .Y(n1014) );
  BUFX2 U865 ( .A(n747), .Y(n1015) );
  CLKINVX1 U866 ( .A(n756), .Y(n1016) );
  CLKINVX1 U867 ( .A(n1016), .Y(n1017) );
  CLKINVX1 U868 ( .A(n761), .Y(n1018) );
  CLKINVX1 U869 ( .A(n1018), .Y(n1019) );
  CLKINVX1 U870 ( .A(n730), .Y(n1020) );
  CLKINVX1 U871 ( .A(n1020), .Y(n1021) );
  CLKINVX1 U872 ( .A(n731), .Y(n1022) );
  CLKINVX1 U873 ( .A(n1022), .Y(n1023) );
  CLKINVX1 U874 ( .A(n729), .Y(n1024) );
  CLKINVX1 U875 ( .A(n1024), .Y(n1025) );
  CLKINVX1 U876 ( .A(n728), .Y(n1026) );
  CLKINVX1 U877 ( .A(n1026), .Y(n1027) );
  CLKINVX1 U878 ( .A(n726), .Y(n1028) );
  CLKINVX1 U879 ( .A(n1028), .Y(n1029) );
  CLKINVX1 U880 ( .A(n725), .Y(n1030) );
  CLKINVX1 U881 ( .A(n1030), .Y(n1031) );
  BUFX2 U882 ( .A(n888), .Y(n1032) );
  OAI211XL U883 ( .A0(n1312), .A1(n154), .B0(n150), .C0(n26), .Y(ns[2]) );
  BUFX2 U884 ( .A(n776), .Y(n1033) );
  BUFX2 U885 ( .A(n775), .Y(n1034) );
  BUFX2 U886 ( .A(n774), .Y(n1035) );
  BUFX2 U887 ( .A(n783), .Y(n1036) );
  BUFX2 U888 ( .A(n848), .Y(n1037) );
  BUFX2 U889 ( .A(n814), .Y(n1038) );
  BUFX2 U890 ( .A(n827), .Y(n1039) );
  BUFX2 U891 ( .A(n784), .Y(n1040) );
  BUFX2 U892 ( .A(n846), .Y(n1041) );
  BUFX2 U893 ( .A(n824), .Y(n1042) );
  BUFX2 U894 ( .A(n823), .Y(n1043) );
  BUFX2 U895 ( .A(n826), .Y(n1044) );
  BUFX2 U896 ( .A(n782), .Y(n1045) );
  BUFX2 U897 ( .A(n851), .Y(n1046) );
  BUFX2 U898 ( .A(n847), .Y(n1047) );
  BUFX2 U899 ( .A(n825), .Y(n1048) );
  BUFX2 U900 ( .A(n787), .Y(n1049) );
  CLKINVX1 U901 ( .A(n727), .Y(n1050) );
  CLKINVX1 U902 ( .A(n1050), .Y(n1051) );
  BUFX2 U903 ( .A(n779), .Y(n1052) );
  BUFX2 U904 ( .A(n785), .Y(n1053) );
  BUFX2 U905 ( .A(n795), .Y(n1054) );
  BUFX2 U906 ( .A(n792), .Y(n1055) );
  BUFX2 U907 ( .A(n793), .Y(n1056) );
  BUFX2 U908 ( .A(n790), .Y(n1057) );
  BUFX2 U909 ( .A(n791), .Y(n1058) );
  BUFX2 U910 ( .A(n819), .Y(n1059) );
  BUFX2 U911 ( .A(n850), .Y(n1060) );
  BUFX2 U912 ( .A(n815), .Y(n1061) );
  BUFX2 U913 ( .A(n816), .Y(n1062) );
  BUFX2 U914 ( .A(n817), .Y(n1063) );
  BUFX2 U915 ( .A(n818), .Y(n1064) );
  BUFX2 U916 ( .A(n794), .Y(n1065) );
  BUFX2 U917 ( .A(n871), .Y(n1066) );
  BUFX2 U918 ( .A(n883), .Y(n1067) );
  BUFX2 U919 ( .A(n849), .Y(n1068) );
  BUFX2 U920 ( .A(n748), .Y(n1069) );
  BUFX2 U921 ( .A(n741), .Y(n1070) );
  BUFX2 U922 ( .A(n740), .Y(n1071) );
  BUFX2 U923 ( .A(n866), .Y(n1072) );
  BUFX2 U924 ( .A(n865), .Y(n1073) );
  BUFX2 U925 ( .A(n864), .Y(n1074) );
  BUFX2 U926 ( .A(n863), .Y(n1075) );
  BUFX2 U927 ( .A(n862), .Y(n1076) );
  BUFX2 U928 ( .A(n867), .Y(n1077) );
  BUFX2 U929 ( .A(n858), .Y(n1078) );
  BUFX2 U930 ( .A(n857), .Y(n1079) );
  BUFX2 U931 ( .A(n856), .Y(n1080) );
  BUFX2 U932 ( .A(n855), .Y(n1081) );
  BUFX2 U933 ( .A(n854), .Y(n1082) );
  BUFX2 U934 ( .A(n859), .Y(n1083) );
  BUFX2 U935 ( .A(n822), .Y(n1084) );
  BUFX2 U936 ( .A(n861), .Y(n1085) );
  BUFX2 U937 ( .A(n860), .Y(n1086) );
  BUFX2 U938 ( .A(n853), .Y(n1087) );
  BUFX2 U939 ( .A(n852), .Y(n1088) );
  BUFX2 U940 ( .A(n845), .Y(n1089) );
  BUFX2 U941 ( .A(n844), .Y(n1090) );
  BUFX2 U942 ( .A(n821), .Y(n1091) );
  BUFX2 U943 ( .A(n820), .Y(n1092) );
  BUFX2 U944 ( .A(n813), .Y(n1093) );
  BUFX2 U945 ( .A(n812), .Y(n1094) );
  BUFX2 U946 ( .A(n789), .Y(n1095) );
  BUFX2 U947 ( .A(n788), .Y(n1096) );
  BUFX2 U948 ( .A(n781), .Y(n1097) );
  BUFX2 U949 ( .A(n780), .Y(n1098) );
  BUFX2 U950 ( .A(n773), .Y(n1099) );
  BUFX2 U951 ( .A(n772), .Y(n1100) );
  BUFX2 U952 ( .A(n749), .Y(n1101) );
  BUFX2 U953 ( .A(n778), .Y(n1102) );
  NOR3X1 U954 ( .A(n145), .B(n720), .C(RB1_A[2]), .Y(n42) );
  INVX12 U955 ( .A(n458), .Y(RB1_D[3]) );
  INVX12 U956 ( .A(n457), .Y(RB1_D[2]) );
  INVX12 U957 ( .A(n456), .Y(RB1_D[1]) );
  INVX12 U958 ( .A(n459), .Y(RB1_D[4]) );
  INVX12 U959 ( .A(n455), .Y(RB1_D[0]) );
  INVX12 U960 ( .A(n462), .Y(RB1_D[6]) );
  INVX12 U961 ( .A(n463), .Y(RB1_D[7]) );
  INVX12 U962 ( .A(n460), .Y(RB1_D[5]) );
  INVXL U963 ( .A(n1230), .Y(n1111) );
  INVX12 U964 ( .A(n1111), .Y(RB1_A[4]) );
  INVX16 U965 ( .A(n720), .Y(RB1_A[1]) );
  INVX16 U966 ( .A(n719), .Y(RB1_A[2]) );
  INVX16 U967 ( .A(n718), .Y(RB1_A[3]) );
  CLKINVX1 U968 ( .A(n1472), .Y(n1116) );
  INVX16 U969 ( .A(n1116), .Y(RB1_A[0]) );
  INVX12 U970 ( .A(rst), .Y(n1281) );
  OR2X1 U1081 ( .A(n536), .B(n154), .Y(n1470) );
  INVX12 U1082 ( .A(n1470), .Y(S1_done) );
  CLKXOR2X2 U1083 ( .A(n1268), .B(\sub_154/carry [3]), .Y(N252) );
  AND4X1 U1084 ( .A(n145), .B(n149), .C(n224), .D(n154), .Y(n1471) );
  INVX12 U1085 ( .A(n1471), .Y(RB1_RW) );
  AND2XL U1086 ( .A(n26), .B(n1292), .Y(n224) );
  XOR2XL U1087 ( .A(\add_43/carry [4]), .B(RB1_A[4]), .Y(N131) );
  NAND3X2 U1088 ( .A(N251), .B(n716), .C(n375), .Y(n250) );
  NAND3X2 U1089 ( .A(N251), .B(n1248), .C(n375), .Y(n251) );
  XNOR2X2 U1090 ( .A(\sub_154/carry [2]), .B(n1269), .Y(N251) );
  OR2X1 U1091 ( .A(n115), .B(n119), .Y(n113) );
  NAND2X2 U1092 ( .A(n42), .B(n53), .Y(n45) );
  NAND2BX1 U1093 ( .AN(n723), .B(n722), .Y(n535) );
  INVX3 U1094 ( .A(RB1_Q[0]), .Y(n1289) );
  INVX3 U1095 ( .A(RB1_Q[7]), .Y(n1282) );
  INVX3 U1096 ( .A(RB1_Q[6]), .Y(n1283) );
  INVX3 U1097 ( .A(RB1_Q[5]), .Y(n1284) );
  INVX3 U1098 ( .A(RB1_Q[4]), .Y(n1285) );
  INVX3 U1099 ( .A(RB1_Q[3]), .Y(n1286) );
  INVX3 U1100 ( .A(RB1_Q[2]), .Y(n1287) );
  INVX3 U1101 ( .A(RB1_Q[1]), .Y(n1288) );
  NOR3BXL U1102 ( .AN(n1269), .B(counter[4]), .C(n1290), .Y(n134) );
  NAND2X1 U1103 ( .A(n134), .B(n1268), .Y(n115) );
  NOR3X1 U1104 ( .A(n720), .B(n719), .C(n145), .Y(n69) );
  NOR3X1 U1105 ( .A(n145), .B(n719), .C(RB1_A[1]), .Y(n64) );
  NAND2X2 U1106 ( .A(N127), .B(n90), .Y(n82) );
  NOR3BX1 U1107 ( .AN(n717), .B(N127), .C(n718), .Y(n53) );
  NOR3BX1 U1108 ( .AN(n717), .B(RB1_A[3]), .C(N127), .Y(n167) );
  NOR3BX1 U1109 ( .AN(n717), .B(RB1_A[3]), .C(RB1_A[0]), .Y(n164) );
  NOR3BX1 U1110 ( .AN(n717), .B(n718), .C(RB1_A[0]), .Y(n41) );
  NAND2X1 U1111 ( .A(n1270), .B(N249), .Y(n112) );
  NAND2X1 U1112 ( .A(n716), .B(counter[1]), .Y(n116) );
  NOR2BX2 U1113 ( .AN(n366), .B(n1279), .Y(n229) );
  NAND2X2 U1114 ( .A(n363), .B(n1279), .Y(n242) );
  CLKBUFX3 U1115 ( .A(n1254), .Y(n1255) );
  CLKBUFX3 U1116 ( .A(n1251), .Y(n1256) );
  CLKBUFX3 U1117 ( .A(n1254), .Y(n1257) );
  CLKBUFX3 U1118 ( .A(n1253), .Y(n1258) );
  CLKBUFX3 U1119 ( .A(n1251), .Y(n1259) );
  CLKBUFX3 U1120 ( .A(n1253), .Y(n1260) );
  CLKBUFX3 U1121 ( .A(n1253), .Y(n1261) );
  CLKBUFX3 U1122 ( .A(n1249), .Y(n1262) );
  CLKBUFX3 U1123 ( .A(n1254), .Y(n1263) );
  CLKBUFX3 U1124 ( .A(n1249), .Y(n1264) );
  CLKBUFX3 U1125 ( .A(n1250), .Y(n1265) );
  CLKBUFX3 U1126 ( .A(n1250), .Y(n1266) );
  CLKINVX2 U1127 ( .A(N251), .Y(n1279) );
  NOR3BX2 U1128 ( .AN(n376), .B(n1279), .C(N234), .Y(n246) );
  NOR2BX2 U1129 ( .AN(n364), .B(n1279), .Y(n231) );
  NAND2X2 U1130 ( .A(N251), .B(n363), .Y(n235) );
  NOR2BX2 U1131 ( .AN(n364), .B(N251), .Y(n239) );
  NOR2BX2 U1132 ( .AN(n366), .B(N251), .Y(n237) );
  NAND2X2 U1133 ( .A(n370), .B(N251), .Y(n243) );
  NOR2BX2 U1134 ( .AN(n380), .B(N234), .Y(n254) );
  NAND2X2 U1135 ( .A(n370), .B(n1279), .Y(n249) );
  NOR2X1 U1136 ( .A(n1280), .B(N252), .Y(n375) );
  NAND3X2 U1137 ( .A(N234), .B(n1279), .C(n375), .Y(n257) );
  NOR2X1 U1138 ( .A(N250), .B(N252), .Y(n376) );
  NOR3BXL U1139 ( .AN(N252), .B(n716), .C(N250), .Y(n366) );
  NOR3BX1 U1140 ( .AN(N252), .B(n1280), .C(n716), .Y(n363) );
  INVX1 U1141 ( .A(N250), .Y(n1280) );
  CLKINVX1 U1142 ( .A(n152), .Y(n1292) );
  CLKINVX1 U1143 ( .A(n17), .Y(n1314) );
  INVX3 U1144 ( .A(n45), .Y(n1310) );
  INVX3 U1145 ( .A(n1243), .Y(n1302) );
  INVX3 U1146 ( .A(n1233), .Y(n1295) );
  INVX3 U1147 ( .A(n1246), .Y(n1307) );
  INVX3 U1148 ( .A(n1234), .Y(n1300) );
  INVX3 U1149 ( .A(n1238), .Y(n1308) );
  INVX3 U1150 ( .A(n1235), .Y(n1301) );
  INVX3 U1151 ( .A(n1239), .Y(n1309) );
  INVX3 U1152 ( .A(n1242), .Y(n1298) );
  INVX3 U1153 ( .A(n1232), .Y(n1294) );
  INVX3 U1154 ( .A(n1245), .Y(n1306) );
  INVX3 U1155 ( .A(n1244), .Y(n1303) );
  INVX3 U1156 ( .A(n1247), .Y(n1311) );
  INVX3 U1157 ( .A(n1236), .Y(n1304) );
  INVX3 U1158 ( .A(n1240), .Y(n1296) );
  INVX3 U1159 ( .A(n1237), .Y(n1305) );
  INVX3 U1160 ( .A(n1241), .Y(n1297) );
  CLKINVX1 U1161 ( .A(n25), .Y(n1313) );
  CLKBUFX3 U1162 ( .A(n1251), .Y(n1267) );
  CLKBUFX3 U1163 ( .A(n1252), .Y(n1251) );
  CLKBUFX3 U1164 ( .A(n1252), .Y(n1249) );
  CLKBUFX3 U1165 ( .A(n1252), .Y(n1250) );
  NOR3BX2 U1166 ( .AN(n376), .B(n1279), .C(n1248), .Y(n244) );
  CLKINVX1 U1167 ( .A(n1248), .Y(n1271) );
  NOR2BX2 U1168 ( .AN(n380), .B(n1248), .Y(n252) );
  NOR3BXL U1169 ( .AN(n376), .B(N251), .C(N253), .Y(n380) );
  NAND3X2 U1170 ( .A(n1248), .B(n1279), .C(n375), .Y(n258) );
  NOR3BX1 U1171 ( .AN(N252), .B(n1248), .C(N250), .Y(n370) );
  NOR3BXL U1172 ( .AN(N252), .B(n1280), .C(n1248), .Y(n364) );
  OAI22XL U1173 ( .A0(n1357), .A1(n257), .B0(n1389), .B1(n258), .Y(n256) );
  OAI22XL U1174 ( .A0(n1351), .A1(n257), .B0(n1383), .B1(n258), .Y(n290) );
  OAI22XL U1175 ( .A0(n1353), .A1(n257), .B0(n1385), .B1(n258), .Y(n322) );
  OAI22XL U1176 ( .A0(n1355), .A1(n257), .B0(n1387), .B1(n258), .Y(n354) );
  NAND2X2 U1177 ( .A(N253), .B(N234), .Y(n236) );
  NAND2X2 U1178 ( .A(N253), .B(n1248), .Y(n234) );
  NOR2X1 U1179 ( .A(n1312), .B(n535), .Y(n152) );
  NAND2X2 U1180 ( .A(N249), .B(counter[1]), .Y(n23) );
  OAI32X1 U1181 ( .A0(N224), .A1(n12), .A2(n17), .B0(n1314), .B1(n1318), .Y(
        n15) );
  NAND2X1 U1182 ( .A(n22), .B(n23), .Y(n17) );
  OAI22XL U1183 ( .A0(n17), .A1(n1317), .B0(n1314), .B1(n1319), .Y(n13) );
  OAI22XL U1184 ( .A0(n22), .A1(n113), .B0(n161), .B1(n1325), .Y(n890) );
  NOR2X1 U1185 ( .A(n22), .B(n115), .Y(n161) );
  OAI22XL U1186 ( .A0(n23), .A1(n113), .B0(n118), .B1(n1323), .Y(n874) );
  NOR2X1 U1187 ( .A(n23), .B(n115), .Y(n118) );
  OAI22XL U1188 ( .A0(n112), .A1(n113), .B0(n114), .B1(n1321), .Y(n872) );
  NOR2X1 U1189 ( .A(n112), .B(n115), .Y(n114) );
  OAI22XL U1190 ( .A0(n113), .A1(n116), .B0(n117), .B1(n1322), .Y(n873) );
  NOR2X1 U1191 ( .A(n115), .B(n116), .Y(n117) );
  OR2X1 U1192 ( .A(n129), .B(n119), .Y(n127) );
  OAI22XL U1193 ( .A0(n1310), .A1(n1445), .B0(n1289), .B1(n45), .Y(n819) );
  OAI22XL U1194 ( .A0(n1310), .A1(n1444), .B0(n1282), .B1(n45), .Y(n818) );
  OAI22XL U1195 ( .A0(n1310), .A1(n1443), .B0(n1283), .B1(n45), .Y(n817) );
  OAI22XL U1196 ( .A0(n1310), .A1(n1442), .B0(n1284), .B1(n45), .Y(n816) );
  OAI22XL U1197 ( .A0(n1310), .A1(n1441), .B0(n1285), .B1(n45), .Y(n815) );
  OAI22XL U1198 ( .A0(n1310), .A1(n1440), .B0(n1286), .B1(n45), .Y(n814) );
  OAI22XL U1199 ( .A0(n1310), .A1(n1439), .B0(n1287), .B1(n45), .Y(n813) );
  OAI22XL U1200 ( .A0(n1310), .A1(n1438), .B0(n1288), .B1(n45), .Y(n812) );
  OAI22XL U1201 ( .A0(n1299), .A1(n1333), .B0(n1289), .B1(n82), .Y(n859) );
  OAI22XL U1202 ( .A0(n1299), .A1(n1332), .B0(n1282), .B1(n82), .Y(n858) );
  OAI22XL U1203 ( .A0(n1299), .A1(n1331), .B0(n1283), .B1(n82), .Y(n857) );
  OAI22XL U1204 ( .A0(n1299), .A1(n1330), .B0(n1284), .B1(n82), .Y(n856) );
  OAI22XL U1205 ( .A0(n1299), .A1(n1329), .B0(n1285), .B1(n82), .Y(n855) );
  OAI22XL U1206 ( .A0(n1299), .A1(n1328), .B0(n1286), .B1(n82), .Y(n854) );
  OAI22XL U1207 ( .A0(n1299), .A1(n1327), .B0(n1287), .B1(n82), .Y(n853) );
  OAI22XL U1208 ( .A0(n1299), .A1(n1326), .B0(n1288), .B1(n82), .Y(n852) );
  OAI22XL U1209 ( .A0(n1302), .A1(n1461), .B0(n1289), .B1(n1243), .Y(n851) );
  OAI22XL U1210 ( .A0(n1302), .A1(n1460), .B0(n1282), .B1(n1243), .Y(n850) );
  OAI22XL U1211 ( .A0(n1302), .A1(n1459), .B0(n1283), .B1(n1243), .Y(n849) );
  OAI22XL U1212 ( .A0(n1302), .A1(n1458), .B0(n1284), .B1(n1243), .Y(n848) );
  OAI22XL U1213 ( .A0(n1302), .A1(n1457), .B0(n1285), .B1(n1243), .Y(n847) );
  OAI22XL U1214 ( .A0(n1302), .A1(n1456), .B0(n1286), .B1(n1243), .Y(n846) );
  OAI22XL U1215 ( .A0(n1302), .A1(n1455), .B0(n1287), .B1(n1243), .Y(n845) );
  OAI22XL U1216 ( .A0(n1302), .A1(n1454), .B0(n1288), .B1(n1243), .Y(n844) );
  OAI22XL U1217 ( .A0(n1295), .A1(n1437), .B0(n1289), .B1(n1233), .Y(n795) );
  OAI22XL U1218 ( .A0(n1295), .A1(n1436), .B0(n1282), .B1(n1233), .Y(n794) );
  OAI22XL U1219 ( .A0(n1295), .A1(n1435), .B0(n1283), .B1(n1233), .Y(n793) );
  OAI22XL U1220 ( .A0(n1295), .A1(n1434), .B0(n1284), .B1(n1233), .Y(n792) );
  OAI22XL U1221 ( .A0(n1295), .A1(n1433), .B0(n1285), .B1(n1233), .Y(n791) );
  OAI22XL U1222 ( .A0(n1295), .A1(n1432), .B0(n1286), .B1(n1233), .Y(n790) );
  OAI22XL U1223 ( .A0(n1295), .A1(n1431), .B0(n1287), .B1(n1233), .Y(n789) );
  OAI22XL U1224 ( .A0(n1295), .A1(n1430), .B0(n1288), .B1(n1233), .Y(n788) );
  OAI22XL U1225 ( .A0(n1307), .A1(n1421), .B0(n1289), .B1(n1246), .Y(n827) );
  OAI22XL U1226 ( .A0(n1307), .A1(n1420), .B0(n1282), .B1(n1246), .Y(n826) );
  OAI22XL U1227 ( .A0(n1307), .A1(n1419), .B0(n1283), .B1(n1246), .Y(n825) );
  OAI22XL U1228 ( .A0(n1307), .A1(n1418), .B0(n1284), .B1(n1246), .Y(n824) );
  OAI22XL U1229 ( .A0(n1307), .A1(n1417), .B0(n1285), .B1(n1246), .Y(n823) );
  OAI22XL U1230 ( .A0(n1307), .A1(n1416), .B0(n1286), .B1(n1246), .Y(n822) );
  OAI22XL U1231 ( .A0(n1307), .A1(n1415), .B0(n1287), .B1(n1246), .Y(n821) );
  OAI22XL U1232 ( .A0(n1307), .A1(n1414), .B0(n1288), .B1(n1246), .Y(n820) );
  OAI22XL U1233 ( .A0(n1300), .A1(n1405), .B0(n1289), .B1(n1234), .Y(n787) );
  OAI22XL U1234 ( .A0(n1300), .A1(n1404), .B0(n1282), .B1(n1234), .Y(n786) );
  OAI22XL U1235 ( .A0(n1300), .A1(n1403), .B0(n1283), .B1(n1234), .Y(n785) );
  OAI22XL U1236 ( .A0(n1300), .A1(n1402), .B0(n1284), .B1(n1234), .Y(n784) );
  OAI22XL U1237 ( .A0(n1300), .A1(n1401), .B0(n1285), .B1(n1234), .Y(n783) );
  OAI22XL U1238 ( .A0(n1300), .A1(n1400), .B0(n1286), .B1(n1234), .Y(n782) );
  OAI22XL U1239 ( .A0(n1300), .A1(n1399), .B0(n1287), .B1(n1234), .Y(n781) );
  OAI22XL U1240 ( .A0(n1300), .A1(n1398), .B0(n1288), .B1(n1234), .Y(n780) );
  OAI22XL U1241 ( .A0(n1308), .A1(n1389), .B0(n1289), .B1(n1238), .Y(n755) );
  OAI22XL U1242 ( .A0(n1308), .A1(n1388), .B0(n1282), .B1(n1238), .Y(n754) );
  OAI22XL U1243 ( .A0(n1308), .A1(n1387), .B0(n1283), .B1(n1238), .Y(n753) );
  OAI22XL U1244 ( .A0(n1308), .A1(n1386), .B0(n1284), .B1(n1238), .Y(n752) );
  OAI22XL U1245 ( .A0(n1308), .A1(n1385), .B0(n1285), .B1(n1238), .Y(n751) );
  OAI22XL U1246 ( .A0(n1308), .A1(n1384), .B0(n1286), .B1(n1238), .Y(n750) );
  OAI22XL U1247 ( .A0(n1308), .A1(n1383), .B0(n1287), .B1(n1238), .Y(n749) );
  OAI22XL U1248 ( .A0(n1308), .A1(n1382), .B0(n1288), .B1(n1238), .Y(n748) );
  OAI22XL U1249 ( .A0(n1301), .A1(n1373), .B0(n1289), .B1(n1235), .Y(n779) );
  OAI22XL U1250 ( .A0(n1301), .A1(n1372), .B0(n1282), .B1(n1235), .Y(n778) );
  OAI22XL U1251 ( .A0(n1301), .A1(n1371), .B0(n1283), .B1(n1235), .Y(n777) );
  OAI22XL U1252 ( .A0(n1301), .A1(n1370), .B0(n1284), .B1(n1235), .Y(n776) );
  OAI22XL U1253 ( .A0(n1301), .A1(n1369), .B0(n1285), .B1(n1235), .Y(n775) );
  OAI22XL U1254 ( .A0(n1301), .A1(n1368), .B0(n1286), .B1(n1235), .Y(n774) );
  OAI22XL U1255 ( .A0(n1301), .A1(n1367), .B0(n1287), .B1(n1235), .Y(n773) );
  OAI22XL U1256 ( .A0(n1301), .A1(n1366), .B0(n1288), .B1(n1235), .Y(n772) );
  OAI22XL U1257 ( .A0(n1309), .A1(n1357), .B0(n1289), .B1(n1239), .Y(n747) );
  OAI22XL U1258 ( .A0(n1309), .A1(n1356), .B0(n1282), .B1(n1239), .Y(n746) );
  OAI22XL U1259 ( .A0(n1309), .A1(n1355), .B0(n1283), .B1(n1239), .Y(n745) );
  OAI22XL U1260 ( .A0(n1309), .A1(n1354), .B0(n1284), .B1(n1239), .Y(n744) );
  OAI22XL U1261 ( .A0(n1309), .A1(n1353), .B0(n1285), .B1(n1239), .Y(n743) );
  OAI22XL U1262 ( .A0(n1309), .A1(n1352), .B0(n1286), .B1(n1239), .Y(n742) );
  OAI22XL U1263 ( .A0(n1309), .A1(n1351), .B0(n1287), .B1(n1239), .Y(n741) );
  OAI22XL U1264 ( .A0(n1309), .A1(n1350), .B0(n1288), .B1(n1239), .Y(n740) );
  OAI22XL U1265 ( .A0(n1298), .A1(n1341), .B0(n1289), .B1(n1242), .Y(n867) );
  OAI22XL U1266 ( .A0(n1298), .A1(n1340), .B0(n1282), .B1(n1242), .Y(n866) );
  OAI22XL U1267 ( .A0(n1298), .A1(n1339), .B0(n1283), .B1(n1242), .Y(n865) );
  OAI22XL U1268 ( .A0(n1298), .A1(n1338), .B0(n1284), .B1(n1242), .Y(n864) );
  OAI22XL U1269 ( .A0(n1298), .A1(n1337), .B0(n1285), .B1(n1242), .Y(n863) );
  OAI22XL U1270 ( .A0(n1298), .A1(n1336), .B0(n1286), .B1(n1242), .Y(n862) );
  OAI22XL U1271 ( .A0(n1298), .A1(n1335), .B0(n1287), .B1(n1242), .Y(n861) );
  OAI22XL U1272 ( .A0(n1298), .A1(n1334), .B0(n1288), .B1(n1242), .Y(n860) );
  NOR3X2 U1273 ( .A(RB1_A[1]), .B(n145), .C(RB1_A[2]), .Y(n159) );
  OAI211X1 U1274 ( .A0(n26), .A1(n1313), .B0(n1242), .C0(n140), .Y(ns[0]) );
  NAND3BX1 U1275 ( .AN(ns[0]), .B(ns[2]), .C(ns[1]), .Y(n102) );
  NAND2X1 U1276 ( .A(n134), .B(counter[3]), .Y(n129) );
  INVX3 U1277 ( .A(n82), .Y(n1299) );
  NAND2X1 U1278 ( .A(n145), .B(n102), .Y(n101) );
  AO22X1 U1279 ( .A0(n151), .A1(n152), .B0(n139), .B1(n138), .Y(n142) );
  NOR2BX1 U1280 ( .AN(n124), .B(n23), .Y(n25) );
  CLKINVX1 U1281 ( .A(n139), .Y(n1290) );
  AND3X2 U1282 ( .A(n149), .B(n150), .C(n155), .Y(n140) );
  OA22X1 U1283 ( .A0(n1290), .A1(n138), .B0(n151), .B1(n1292), .Y(n155) );
  CLKBUFX3 U1284 ( .A(n72), .Y(n1243) );
  NAND2X1 U1285 ( .A(n69), .B(n53), .Y(n72) );
  CLKBUFX3 U1286 ( .A(n66), .Y(n1245) );
  NAND2X1 U1287 ( .A(n64), .B(n53), .Y(n66) );
  CLKBUFX3 U1288 ( .A(n68), .Y(n1244) );
  NAND2X1 U1289 ( .A(n69), .B(n41), .Y(n68) );
  CLKBUFX3 U1290 ( .A(n56), .Y(n1246) );
  NAND2X1 U1291 ( .A(n64), .B(n41), .Y(n56) );
  CLKBUFX3 U1292 ( .A(n93), .Y(n1242) );
  NAND2X1 U1293 ( .A(n90), .B(RB1_A[0]), .Y(n93) );
  CLKBUFX3 U1294 ( .A(n30), .Y(n1232) );
  NAND2X1 U1295 ( .A(n53), .B(n159), .Y(n30) );
  CLKBUFX3 U1296 ( .A(n38), .Y(n1247) );
  NAND2X1 U1297 ( .A(n41), .B(n42), .Y(n38) );
  CLKBUFX3 U1298 ( .A(n206), .Y(n1234) );
  NAND2X1 U1299 ( .A(n167), .B(n69), .Y(n206) );
  CLKBUFX3 U1300 ( .A(n192), .Y(n1236) );
  NAND2X1 U1301 ( .A(n167), .B(n64), .Y(n192) );
  CLKBUFX3 U1302 ( .A(n180), .Y(n1238) );
  NAND2X1 U1303 ( .A(n167), .B(n42), .Y(n180) );
  CLKBUFX3 U1304 ( .A(n166), .Y(n1240) );
  NAND2X1 U1305 ( .A(n167), .B(n159), .Y(n166) );
  CLKBUFX3 U1306 ( .A(n196), .Y(n1235) );
  NAND2X1 U1307 ( .A(n164), .B(n69), .Y(n196) );
  CLKBUFX3 U1308 ( .A(n190), .Y(n1237) );
  NAND2X1 U1309 ( .A(n164), .B(n64), .Y(n190) );
  CLKBUFX3 U1310 ( .A(n170), .Y(n1239) );
  NAND2X1 U1311 ( .A(n164), .B(n42), .Y(n170) );
  CLKBUFX3 U1312 ( .A(n163), .Y(n1241) );
  NAND2X1 U1313 ( .A(n164), .B(n159), .Y(n163) );
  CLKBUFX3 U1314 ( .A(n216), .Y(n1233) );
  NAND2X1 U1315 ( .A(n41), .B(n159), .Y(n216) );
  OAI211X1 U1316 ( .A0(n25), .A1(n26), .B0(n1290), .C0(n1292), .Y(n24) );
  NOR2BX1 U1317 ( .AN(n124), .B(n1290), .Y(n121) );
  CLKINVX1 U1318 ( .A(n145), .Y(n1293) );
  OAI2BB2XL U1319 ( .B0(n140), .B1(n1317), .A0N(N225), .A1N(n142), .Y(n887) );
  OAI2BB2XL U1320 ( .B0(n140), .B1(n1319), .A0N(N227), .A1N(n142), .Y(n885) );
  OAI2BB2XL U1321 ( .B0(n140), .B1(n1318), .A0N(N226), .A1N(n142), .Y(n886) );
  AND2X2 U1322 ( .A(N237), .B(n24), .Y(nx_counter[3]) );
  AND2X2 U1323 ( .A(N236), .B(n24), .Y(nx_counter[2]) );
  AND2X2 U1324 ( .A(N235), .B(n24), .Y(nx_counter[1]) );
  AND2X2 U1325 ( .A(N234), .B(n24), .Y(nx_counter[0]) );
  CLKBUFX3 U1326 ( .A(n1281), .Y(n1253) );
  CLKBUFX3 U1327 ( .A(n1281), .Y(n1252) );
  CLKBUFX3 U1328 ( .A(n1281), .Y(n1254) );
  AOI221XL U1329 ( .A0(n229), .A1(n1446), .B0(n231), .B1(n1422), .C0(n265), 
        .Y(n262) );
  OAI222XL U1330 ( .A0(n1334), .A1(n234), .B0(n1454), .B1(n235), .C0(n1326), 
        .C1(n236), .Y(n265) );
  AOI221XL U1331 ( .A0(n229), .A1(n1453), .B0(n231), .B1(n1429), .C0(n233), 
        .Y(n228) );
  OAI222XL U1332 ( .A0(n1341), .A1(n234), .B0(n1461), .B1(n235), .C0(n1333), 
        .C1(n236), .Y(n233) );
  AOI221XL U1333 ( .A0(n229), .A1(n1448), .B0(n231), .B1(n1424), .C0(n297), 
        .Y(n294) );
  OAI222XL U1334 ( .A0(n1336), .A1(n234), .B0(n1456), .B1(n235), .C0(n1328), 
        .C1(n236), .Y(n297) );
  AOI221XL U1335 ( .A0(n229), .A1(n1447), .B0(n231), .B1(n1423), .C0(n281), 
        .Y(n278) );
  OAI222XL U1336 ( .A0(n1335), .A1(n234), .B0(n1455), .B1(n235), .C0(n1327), 
        .C1(n236), .Y(n281) );
  AOI221XL U1337 ( .A0(n244), .A1(n1358), .B0(n246), .B1(n1390), .C0(n271), 
        .Y(n260) );
  OAI222XL U1338 ( .A0(n1430), .A1(n249), .B0(n1366), .B1(n250), .C0(n1398), 
        .C1(n251), .Y(n271) );
  AOI221XL U1339 ( .A0(n244), .A1(n1365), .B0(n246), .B1(n1397), .C0(n248), 
        .Y(n226) );
  OAI222XL U1340 ( .A0(n1437), .A1(n249), .B0(n1373), .B1(n250), .C0(n1405), 
        .C1(n251), .Y(n248) );
  AOI221XL U1341 ( .A0(n244), .A1(n1360), .B0(n246), .B1(n1392), .C0(n303), 
        .Y(n292) );
  OAI222XL U1342 ( .A0(n1432), .A1(n249), .B0(n1368), .B1(n250), .C0(n1400), 
        .C1(n251), .Y(n303) );
  AOI221XL U1343 ( .A0(n244), .A1(n1359), .B0(n246), .B1(n1391), .C0(n287), 
        .Y(n276) );
  OAI222XL U1344 ( .A0(n1431), .A1(n249), .B0(n1367), .B1(n250), .C0(n1399), 
        .C1(n251), .Y(n287) );
  AOI221XL U1345 ( .A0(n244), .A1(n1362), .B0(n246), .B1(n1394), .C0(n335), 
        .Y(n324) );
  OAI222XL U1346 ( .A0(n1434), .A1(n249), .B0(n1370), .B1(n250), .C0(n1402), 
        .C1(n251), .Y(n335) );
  AOI221XL U1347 ( .A0(n244), .A1(n1361), .B0(n246), .B1(n1393), .C0(n319), 
        .Y(n308) );
  OAI222XL U1348 ( .A0(n1433), .A1(n249), .B0(n1369), .B1(n250), .C0(n1401), 
        .C1(n251), .Y(n319) );
  NAND4X1 U1349 ( .A(n307), .B(n308), .C(n309), .D(n310), .Y(N278) );
  NAND4X1 U1350 ( .A(n323), .B(n324), .C(n325), .D(n326), .Y(N277) );
  AOI221XL U1351 ( .A0(n252), .A1(n1345), .B0(n254), .B1(n1377), .C0(n322), 
        .Y(n307) );
  NAND4X1 U1352 ( .A(n225), .B(n226), .C(n227), .D(n228), .Y(N282) );
  NAND4X1 U1353 ( .A(n259), .B(n260), .C(n261), .D(n262), .Y(N281) );
  AOI221XL U1354 ( .A0(n252), .A1(n1349), .B0(n254), .B1(n1381), .C0(n256), 
        .Y(n225) );
  NOR3X1 U1355 ( .A(n9), .B(sen), .C(n535), .Y(n537) );
  AOI2BB2X1 U1356 ( .B0(N283), .B1(n1315), .A0N(n11), .A1N(n1315), .Y(n9) );
  CLKINVX1 U1357 ( .A(N239), .Y(n1315) );
  AOI222XL U1358 ( .A0(times[4]), .A1(n12), .B0(n13), .B1(N249), .C0(n716), 
        .C1(n15), .Y(n11) );
  NAND4X1 U1359 ( .A(n275), .B(n276), .C(n277), .D(n278), .Y(N280) );
  NAND4X1 U1360 ( .A(n291), .B(n292), .C(n293), .D(n294), .Y(N279) );
  AOI221XL U1361 ( .A0(n252), .A1(n1343), .B0(n254), .B1(n1375), .C0(n290), 
        .Y(n275) );
  CLKBUFX3 U1362 ( .A(N249), .Y(n1248) );
  AOI221XL U1363 ( .A0(n237), .A1(n1468), .B0(n239), .B1(n1406), .C0(n268), 
        .Y(n261) );
  OAI22XL U1364 ( .A0(n1438), .A1(n242), .B0(n1414), .B1(n243), .Y(n268) );
  AOI221XL U1365 ( .A0(n237), .A1(n1467), .B0(n239), .B1(n1413), .C0(n241), 
        .Y(n227) );
  OAI22XL U1366 ( .A0(n1445), .A1(n242), .B0(n1421), .B1(n243), .Y(n241) );
  AOI221XL U1367 ( .A0(n237), .A1(n1462), .B0(n239), .B1(n1408), .C0(n300), 
        .Y(n293) );
  OAI22XL U1368 ( .A0(n1440), .A1(n242), .B0(n1416), .B1(n243), .Y(n300) );
  AOI221XL U1369 ( .A0(n237), .A1(n1469), .B0(n239), .B1(n1407), .C0(n284), 
        .Y(n277) );
  OAI22XL U1370 ( .A0(n1439), .A1(n242), .B0(n1415), .B1(n243), .Y(n284) );
  AOI221XL U1371 ( .A0(n237), .A1(n1464), .B0(n239), .B1(n1410), .C0(n332), 
        .Y(n325) );
  OAI22XL U1372 ( .A0(n1442), .A1(n242), .B0(n1418), .B1(n243), .Y(n332) );
  AOI221XL U1373 ( .A0(n237), .A1(n1463), .B0(n239), .B1(n1409), .C0(n316), 
        .Y(n309) );
  OAI22XL U1374 ( .A0(n1441), .A1(n242), .B0(n1417), .B1(n243), .Y(n316) );
  AOI221XL U1375 ( .A0(n237), .A1(n1466), .B0(n239), .B1(n1412), .C0(n369), 
        .Y(n357) );
  OAI22XL U1376 ( .A0(n1444), .A1(n242), .B0(n1420), .B1(n243), .Y(n369) );
  AOI221XL U1377 ( .A0(n237), .A1(n1465), .B0(n239), .B1(n1411), .C0(n348), 
        .Y(n341) );
  OAI22XL U1378 ( .A0(n1443), .A1(n242), .B0(n1419), .B1(n243), .Y(n348) );
  AOI221XL U1379 ( .A0(n229), .A1(n1450), .B0(n231), .B1(n1426), .C0(n329), 
        .Y(n326) );
  OAI222XL U1380 ( .A0(n1338), .A1(n234), .B0(n1458), .B1(n235), .C0(n1330), 
        .C1(n236), .Y(n329) );
  AOI221XL U1381 ( .A0(n229), .A1(n1449), .B0(n231), .B1(n1425), .C0(n313), 
        .Y(n310) );
  OAI222XL U1382 ( .A0(n1337), .A1(n234), .B0(n1457), .B1(n235), .C0(n1329), 
        .C1(n236), .Y(n313) );
  AOI221XL U1383 ( .A0(n229), .A1(n1452), .B0(n231), .B1(n1428), .C0(n361), 
        .Y(n358) );
  OAI222XL U1384 ( .A0(n1340), .A1(n234), .B0(n1460), .B1(n235), .C0(n1332), 
        .C1(n236), .Y(n361) );
  AOI221XL U1385 ( .A0(n229), .A1(n1451), .B0(n231), .B1(n1427), .C0(n345), 
        .Y(n342) );
  OAI222XL U1386 ( .A0(n1339), .A1(n234), .B0(n1459), .B1(n235), .C0(n1331), 
        .C1(n236), .Y(n345) );
  AOI221XL U1387 ( .A0(n244), .A1(n1364), .B0(n246), .B1(n1396), .C0(n374), 
        .Y(n356) );
  OAI222XL U1388 ( .A0(n1436), .A1(n249), .B0(n1372), .B1(n250), .C0(n1404), 
        .C1(n251), .Y(n374) );
  AOI221XL U1389 ( .A0(n244), .A1(n1363), .B0(n246), .B1(n1395), .C0(n351), 
        .Y(n340) );
  OAI222XL U1390 ( .A0(n1435), .A1(n249), .B0(n1371), .B1(n250), .C0(n1403), 
        .C1(n251), .Y(n351) );
  AOI221XL U1391 ( .A0(n252), .A1(n1342), .B0(n254), .B1(n1374), .C0(n274), 
        .Y(n259) );
  OAI22XL U1392 ( .A0(n1350), .A1(n257), .B0(n1382), .B1(n258), .Y(n274) );
  AOI221XL U1393 ( .A0(n252), .A1(n1344), .B0(n254), .B1(n1376), .C0(n306), 
        .Y(n291) );
  OAI22XL U1394 ( .A0(n1352), .A1(n257), .B0(n1384), .B1(n258), .Y(n306) );
  AOI221XL U1395 ( .A0(n252), .A1(n1346), .B0(n254), .B1(n1378), .C0(n338), 
        .Y(n323) );
  OAI22XL U1396 ( .A0(n1354), .A1(n257), .B0(n1386), .B1(n258), .Y(n338) );
  AOI221XL U1397 ( .A0(n252), .A1(n1348), .B0(n254), .B1(n1380), .C0(n379), 
        .Y(n355) );
  OAI22XL U1398 ( .A0(n1356), .A1(n257), .B0(n1388), .B1(n258), .Y(n379) );
  NAND4X1 U1399 ( .A(n339), .B(n340), .C(n341), .D(n342), .Y(N276) );
  NAND4X1 U1400 ( .A(n355), .B(n356), .C(n357), .D(n358), .Y(N275) );
  AOI221XL U1401 ( .A0(n252), .A1(n1347), .B0(n254), .B1(n1379), .C0(n354), 
        .Y(n339) );
  XNOR2X1 U1402 ( .A(counter[4]), .B(n1231), .Y(N253) );
  NAND2X1 U1403 ( .A(\sub_154/carry [3]), .B(n1268), .Y(n1231) );
  NAND3X2 U1404 ( .A(n536), .B(n722), .C(n723), .Y(n145) );
  NAND2X1 U1405 ( .A(n722), .B(n1312), .Y(n26) );
  NAND2X2 U1406 ( .A(n1270), .B(n716), .Y(n22) );
  XOR2X1 U1407 ( .A(n1269), .B(n23), .Y(n12) );
  NAND3X1 U1408 ( .A(n536), .B(n1316), .C(n723), .Y(n149) );
  OR2X1 U1409 ( .A(n723), .B(n722), .Y(n154) );
  CLKINVX1 U1410 ( .A(sd), .Y(n119) );
  OAI22XL U1411 ( .A0(n22), .A1(n127), .B0(n459), .B1(n128), .Y(n879) );
  NOR2X1 U1412 ( .A(n22), .B(n129), .Y(n128) );
  OAI22XL U1413 ( .A0(n455), .A1(n1291), .B0(n119), .B1(n137), .Y(n883) );
  CLKINVX1 U1414 ( .A(n137), .Y(n1291) );
  NAND2X1 U1415 ( .A(n138), .B(n139), .Y(n137) );
  OAI22XL U1416 ( .A0(n23), .A1(n127), .B0(n456), .B1(n133), .Y(n882) );
  NOR2X1 U1417 ( .A(n23), .B(n129), .Y(n133) );
  OAI22XL U1418 ( .A0(n116), .A1(n127), .B0(n457), .B1(n131), .Y(n881) );
  NOR2X1 U1419 ( .A(n116), .B(n129), .Y(n131) );
  OAI22XL U1420 ( .A0(n112), .A1(n127), .B0(n458), .B1(n130), .Y(n880) );
  NOR2X1 U1421 ( .A(n112), .B(n129), .Y(n130) );
  OAI2BB2XL U1422 ( .B0(n119), .B1(n120), .A0N(n120), .A1N(\receive_buff[8] ), 
        .Y(n875) );
  NAND2BX1 U1423 ( .AN(n22), .B(n121), .Y(n120) );
  OAI2BB2XL U1424 ( .B0(n462), .B1(n123), .A0N(sd), .A1N(n123), .Y(n877) );
  NOR2BX1 U1425 ( .AN(n121), .B(n116), .Y(n123) );
  OAI2BB2XL U1426 ( .B0(n463), .B1(n122), .A0N(sd), .A1N(n122), .Y(n876) );
  NOR2BX1 U1427 ( .AN(n121), .B(n112), .Y(n122) );
  OAI2BB2XL U1428 ( .B0(n460), .B1(n125), .A0N(sd), .A1N(n125), .Y(n878) );
  NOR2X1 U1429 ( .A(n1313), .B(n1290), .Y(n125) );
  OAI22XL U1430 ( .A0(n381), .A1(n1294), .B0(n1232), .B1(n1287), .Y(n797) );
  OAI22XL U1431 ( .A0(n382), .A1(n1294), .B0(n1232), .B1(n1288), .Y(n796) );
  OAI22XL U1432 ( .A0(n528), .A1(n1294), .B0(n1232), .B1(n1289), .Y(n803) );
  OAI22XL U1433 ( .A0(n529), .A1(n1294), .B0(n1232), .B1(n1282), .Y(n802) );
  OAI22XL U1434 ( .A0(n530), .A1(n1294), .B0(n1232), .B1(n1283), .Y(n801) );
  OAI22XL U1435 ( .A0(n531), .A1(n1294), .B0(n1232), .B1(n1284), .Y(n800) );
  OAI22XL U1436 ( .A0(n532), .A1(n1294), .B0(n1232), .B1(n1285), .Y(n799) );
  OAI22XL U1437 ( .A0(n533), .A1(n1294), .B0(n1232), .B1(n1286), .Y(n798) );
  OAI22XL U1438 ( .A0(n526), .A1(n1311), .B0(n1247), .B1(n1287), .Y(n805) );
  OAI22XL U1439 ( .A0(n527), .A1(n1311), .B0(n1247), .B1(n1288), .Y(n804) );
  OAI22XL U1440 ( .A0(n496), .A1(n1306), .B0(n1289), .B1(n1245), .Y(n835) );
  OAI22XL U1441 ( .A0(n497), .A1(n1306), .B0(n1282), .B1(n1245), .Y(n834) );
  OAI22XL U1442 ( .A0(n498), .A1(n1306), .B0(n1283), .B1(n1245), .Y(n833) );
  OAI22XL U1443 ( .A0(n499), .A1(n1306), .B0(n1284), .B1(n1245), .Y(n832) );
  OAI22XL U1444 ( .A0(n500), .A1(n1306), .B0(n1285), .B1(n1245), .Y(n831) );
  OAI22XL U1445 ( .A0(n501), .A1(n1306), .B0(n1286), .B1(n1245), .Y(n830) );
  OAI22XL U1446 ( .A0(n502), .A1(n1306), .B0(n1287), .B1(n1245), .Y(n829) );
  OAI22XL U1447 ( .A0(n503), .A1(n1306), .B0(n1288), .B1(n1245), .Y(n828) );
  OAI22XL U1448 ( .A0(n488), .A1(n1303), .B0(n1289), .B1(n1244), .Y(n843) );
  OAI22XL U1449 ( .A0(n489), .A1(n1303), .B0(n1282), .B1(n1244), .Y(n842) );
  OAI22XL U1450 ( .A0(n490), .A1(n1303), .B0(n1283), .B1(n1244), .Y(n841) );
  OAI22XL U1451 ( .A0(n491), .A1(n1303), .B0(n1284), .B1(n1244), .Y(n840) );
  OAI22XL U1452 ( .A0(n492), .A1(n1303), .B0(n1285), .B1(n1244), .Y(n839) );
  OAI22XL U1453 ( .A0(n493), .A1(n1303), .B0(n1286), .B1(n1244), .Y(n838) );
  OAI22XL U1454 ( .A0(n494), .A1(n1303), .B0(n1287), .B1(n1244), .Y(n837) );
  OAI22XL U1455 ( .A0(n495), .A1(n1303), .B0(n1288), .B1(n1244), .Y(n836) );
  OAI22XL U1456 ( .A0(n520), .A1(n1311), .B0(n1289), .B1(n1247), .Y(n811) );
  OAI22XL U1457 ( .A0(n521), .A1(n1311), .B0(n1282), .B1(n1247), .Y(n810) );
  OAI22XL U1458 ( .A0(n522), .A1(n1311), .B0(n1283), .B1(n1247), .Y(n809) );
  OAI22XL U1459 ( .A0(n523), .A1(n1311), .B0(n1284), .B1(n1247), .Y(n808) );
  OAI22XL U1460 ( .A0(n524), .A1(n1311), .B0(n1285), .B1(n1247), .Y(n807) );
  OAI22XL U1461 ( .A0(n525), .A1(n1311), .B0(n1286), .B1(n1247), .Y(n806) );
  OAI22XL U1462 ( .A0(n407), .A1(n1304), .B0(n1289), .B1(n1236), .Y(n771) );
  OAI22XL U1463 ( .A0(n408), .A1(n1304), .B0(n1282), .B1(n1236), .Y(n770) );
  OAI22XL U1464 ( .A0(n409), .A1(n1304), .B0(n1283), .B1(n1236), .Y(n769) );
  OAI22XL U1465 ( .A0(n410), .A1(n1304), .B0(n1284), .B1(n1236), .Y(n768) );
  OAI22XL U1466 ( .A0(n411), .A1(n1304), .B0(n1285), .B1(n1236), .Y(n767) );
  OAI22XL U1467 ( .A0(n412), .A1(n1304), .B0(n1286), .B1(n1236), .Y(n766) );
  OAI22XL U1468 ( .A0(n413), .A1(n1304), .B0(n1287), .B1(n1236), .Y(n765) );
  OAI22XL U1469 ( .A0(n414), .A1(n1304), .B0(n1288), .B1(n1236), .Y(n764) );
  OAI22XL U1470 ( .A0(n439), .A1(n1296), .B0(n1289), .B1(n1240), .Y(n739) );
  OAI22XL U1471 ( .A0(n440), .A1(n1296), .B0(n1282), .B1(n1240), .Y(n738) );
  OAI22XL U1472 ( .A0(n441), .A1(n1296), .B0(n1283), .B1(n1240), .Y(n737) );
  OAI22XL U1473 ( .A0(n442), .A1(n1296), .B0(n1284), .B1(n1240), .Y(n736) );
  OAI22XL U1474 ( .A0(n443), .A1(n1296), .B0(n1285), .B1(n1240), .Y(n735) );
  OAI22XL U1475 ( .A0(n444), .A1(n1296), .B0(n1286), .B1(n1240), .Y(n734) );
  OAI22XL U1476 ( .A0(n445), .A1(n1296), .B0(n1287), .B1(n1240), .Y(n733) );
  OAI22XL U1477 ( .A0(n446), .A1(n1296), .B0(n1288), .B1(n1240), .Y(n732) );
  OAI22XL U1478 ( .A0(n415), .A1(n1305), .B0(n1289), .B1(n1237), .Y(n763) );
  OAI22XL U1479 ( .A0(n416), .A1(n1305), .B0(n1282), .B1(n1237), .Y(n762) );
  OAI22XL U1480 ( .A0(n417), .A1(n1305), .B0(n1283), .B1(n1237), .Y(n761) );
  OAI22XL U1481 ( .A0(n418), .A1(n1305), .B0(n1284), .B1(n1237), .Y(n760) );
  OAI22XL U1482 ( .A0(n419), .A1(n1305), .B0(n1285), .B1(n1237), .Y(n759) );
  OAI22XL U1483 ( .A0(n420), .A1(n1305), .B0(n1286), .B1(n1237), .Y(n758) );
  OAI22XL U1484 ( .A0(n421), .A1(n1305), .B0(n1287), .B1(n1237), .Y(n757) );
  OAI22XL U1485 ( .A0(n422), .A1(n1305), .B0(n1288), .B1(n1237), .Y(n756) );
  OAI22XL U1486 ( .A0(n447), .A1(n1297), .B0(n1289), .B1(n1241), .Y(n731) );
  OAI22XL U1487 ( .A0(n448), .A1(n1297), .B0(n1282), .B1(n1241), .Y(n730) );
  OAI22XL U1488 ( .A0(n449), .A1(n1297), .B0(n1283), .B1(n1241), .Y(n729) );
  OAI22XL U1489 ( .A0(n450), .A1(n1297), .B0(n1284), .B1(n1241), .Y(n728) );
  OAI22XL U1490 ( .A0(n451), .A1(n1297), .B0(n1285), .B1(n1241), .Y(n727) );
  OAI22XL U1491 ( .A0(n452), .A1(n1297), .B0(n1286), .B1(n1241), .Y(n726) );
  OAI22XL U1492 ( .A0(n453), .A1(n1297), .B0(n1287), .B1(n1241), .Y(n725) );
  OAI22XL U1493 ( .A0(n454), .A1(n1297), .B0(n1288), .B1(n1241), .Y(n724) );
  OAI221XL U1494 ( .A0(n718), .A1(n101), .B0(n102), .B1(n1321), .C0(n109), .Y(
        n870) );
  NAND2X1 U1495 ( .A(N130), .B(n1293), .Y(n109) );
  OAI221XL U1496 ( .A0(n720), .A1(n101), .B0(n102), .B1(n1323), .C0(n104), .Y(
        n868) );
  NAND2X1 U1497 ( .A(N128), .B(n1293), .Y(n104) );
  OAI221XL U1498 ( .A0(N127), .A1(n101), .B0(n102), .B1(n1324), .C0(n111), .Y(
        n871) );
  NAND2X1 U1499 ( .A(N127), .B(n1293), .Y(n111) );
  OAI221XL U1500 ( .A0(n717), .A1(n101), .B0(n102), .B1(n1325), .C0(n144), .Y(
        n889) );
  NAND2X1 U1501 ( .A(N131), .B(n1293), .Y(n144) );
  ADDHXL U1502 ( .A(RB1_A[1]), .B(RB1_A[0]), .CO(\add_43/carry [2]), .S(N128)
         );
  ADDHXL U1503 ( .A(RB1_A[2]), .B(\add_43/carry [2]), .CO(\add_43/carry [3]), 
        .S(N129) );
  OAI221XL U1504 ( .A0(n719), .A1(n101), .B0(n102), .B1(n1322), .C0(n107), .Y(
        n869) );
  NAND2X1 U1505 ( .A(N129), .B(n1293), .Y(n107) );
  ADDHXL U1506 ( .A(RB1_A[3]), .B(\add_43/carry [3]), .CO(\add_43/carry [4]), 
        .S(N130) );
  NOR4X1 U1507 ( .A(n22), .B(counter[4]), .C(n1268), .D(n1269), .Y(n138) );
  NOR3BX1 U1508 ( .AN(n159), .B(n717), .C(RB1_A[3]), .Y(n90) );
  NOR4X1 U1509 ( .A(n22), .B(counter[3]), .C(n1269), .D(n461), .Y(n151) );
  NOR2X1 U1510 ( .A(n535), .B(n536), .Y(n139) );
  NAND3X1 U1511 ( .A(n1316), .B(n1312), .C(n723), .Y(n150) );
  NOR3X1 U1512 ( .A(counter[3]), .B(n1269), .C(counter[4]), .Y(n124) );
  NAND2BX1 U1513 ( .AN(n142), .B(n146), .Y(ns[1]) );
  OAI211X1 U1514 ( .A0(n147), .A1(n148), .B0(N224), .C0(n1318), .Y(n146) );
  NOR4X1 U1515 ( .A(times[4]), .B(times[1]), .C(n1319), .D(n149), .Y(n148) );
  NOR4X1 U1516 ( .A(times[3]), .B(n1317), .C(n1320), .D(n150), .Y(n147) );
  OAI2BB2XL U1517 ( .B0(n140), .B1(n1320), .A0N(N228), .A1N(n142), .Y(n884) );
  OAI2BB2XL U1518 ( .B0(n140), .B1(N224), .A0N(N224), .A1N(n142), .Y(n888) );
  ADDHXL U1519 ( .A(times[1]), .B(times[0]), .CO(\r336/carry [2]), .S(N225) );
  ADDHXL U1520 ( .A(counter[1]), .B(n1248), .CO(\r337/carry [2]), .S(N235) );
  ADDHXL U1521 ( .A(counter[2]), .B(\r337/carry [2]), .CO(\r337/carry [3]), 
        .S(N236) );
  ADDHXL U1522 ( .A(times[2]), .B(\r336/carry [2]), .CO(\r336/carry [3]), .S(
        N226) );
  AND2X2 U1523 ( .A(N238), .B(n24), .Y(nx_counter[4]) );
  ADDHXL U1524 ( .A(times[3]), .B(\r336/carry [3]), .CO(\r336/carry [4]), .S(
        N227) );
  ADDHXL U1525 ( .A(counter[3]), .B(\r337/carry [3]), .CO(\r337/carry [4]), 
        .S(N237) );
  OR2X1 U1526 ( .A(n1269), .B(\sub_154/carry [2]), .Y(\sub_154/carry [3]) );
  AND2X1 U1527 ( .A(n1271), .B(n1270), .Y(\sub_154/carry [2]) );
  XOR2X1 U1528 ( .A(n1270), .B(n1271), .Y(N250) );
  XOR2X1 U1529 ( .A(\r336/carry [4]), .B(times[4]), .Y(N228) );
  CLKINVX1 U1530 ( .A(n1248), .Y(N234) );
  XOR2X1 U1531 ( .A(\r337/carry [4]), .B(counter[4]), .Y(N238) );
  AOI22X1 U1532 ( .A0(N280), .A1(times[0]), .B0(N279), .B1(N224), .Y(n1273) );
  AOI22X1 U1533 ( .A0(N282), .A1(times[0]), .B0(N281), .B1(N224), .Y(n1272) );
  OA22X1 U1534 ( .A0(times[1]), .A1(n1273), .B0(n1317), .B1(n1272), .Y(n1277)
         );
  AOI22X1 U1535 ( .A0(N276), .A1(times[0]), .B0(N275), .B1(N224), .Y(n1275) );
  AOI22X1 U1536 ( .A0(N278), .A1(times[0]), .B0(N277), .B1(N224), .Y(n1274) );
  OAI22XL U1537 ( .A0(n1275), .A1(times[1]), .B0(n1317), .B1(n1274), .Y(n1276)
         );
  OAI2BB2XL U1538 ( .B0(n1277), .B1(n1318), .A0N(n1318), .A1N(n1276), .Y(N283)
         );
  OR2X1 U1539 ( .A(counter[4]), .B(counter[3]), .Y(n1278) );
  AOI211X1 U1540 ( .A0(counter[1]), .A1(n1248), .B0(n1278), .C0(counter[2]), 
        .Y(N239) );
endmodule

