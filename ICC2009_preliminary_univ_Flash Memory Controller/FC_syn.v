/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sat Feb 18 09:27:25 2023
/////////////////////////////////////////////////////////////


module FC_DW01_add_0 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n14, n15, n16, n17, n18, n19, n20, n1, n2, n4, n6, n8, n10;
  wire   [6:1] carry;

  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(n14) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(n19) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(n15) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(n16) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(n17) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(n18) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  INVXL U2 ( .A(n18), .Y(n2) );
  INVX12 U3 ( .A(n2), .Y(SUM[2]) );
  INVXL U4 ( .A(n17), .Y(n4) );
  INVX12 U5 ( .A(n4), .Y(SUM[3]) );
  INVXL U6 ( .A(n16), .Y(n6) );
  INVX12 U7 ( .A(n6), .Y(SUM[4]) );
  INVXL U8 ( .A(n15), .Y(n8) );
  INVX12 U9 ( .A(n8), .Y(SUM[5]) );
  INVXL U10 ( .A(n19), .Y(n10) );
  INVX12 U11 ( .A(n10), .Y(SUM[1]) );
  BUFX12 U12 ( .A(n14), .Y(SUM[6]) );
  XNOR2X1 U13 ( .A(B[0]), .B(A[0]), .Y(n20) );
  INVX12 U14 ( .A(n20), .Y(SUM[0]) );
endmodule


module FC_DW01_inc_0 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  XOR2X1 U1 ( .A(carry[8]), .B(A[8]), .Y(SUM[8]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module FC ( clk, rst, cmd, done, M_RW, M_A, M_D, F_IO, F_CLE, F_ALE, F_REN, 
        F_WEN, F_RB );
  input [32:0] cmd;
  output [6:0] M_A;
  inout [7:0] M_D;
  inout [7:0] F_IO;
  input clk, rst, F_RB;
  output done, M_RW, F_CLE, F_ALE, F_REN, F_WEN;
  wire   n188, n189, n190, N113, N114, N115, N116, N117, N118, N119, N120,
         N131, N132, N133, N134, N135, N136, N137, N138, N139, N253, n17, n19,
         n20, n21, n22, n23, n25, n27, n28, n29, n30, n32, n33, n34, n36, n37,
         n38, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n54, n55, n56, n57, n58, n60, n62, n63, n64, n65, n66, n67, n68, n69,
         n71, n72, n73, n74, n76, n77, n78, n79, n80, n81, n83, n84, n87, n88,
         n89, n90, n94, n96, n97, n98, n100, n102, n103, n104, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n140, n141,
         n142, n143, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187;
  wire   [3:0] state;
  wire   [3:0] next_state;
  wire   [8:0] counter;
  wire   [8:0] next_cnt;
  assign done = N253;

  TBUFX16 \F_IO_tri[0]  ( .A(n138), .OE(n159), .Y(F_IO[0]) );
  TBUFX16 \F_IO_tri[1]  ( .A(n137), .OE(n159), .Y(F_IO[1]) );
  TBUFX16 \F_IO_tri[2]  ( .A(n136), .OE(n159), .Y(F_IO[2]) );
  TBUFX16 \F_IO_tri[3]  ( .A(n135), .OE(n159), .Y(F_IO[3]) );
  TBUFX16 \F_IO_tri[4]  ( .A(n134), .OE(n159), .Y(F_IO[4]) );
  TBUFX16 \F_IO_tri[5]  ( .A(n133), .OE(n159), .Y(F_IO[5]) );
  TBUFX16 \F_IO_tri[6]  ( .A(n132), .OE(n159), .Y(F_IO[6]) );
  TBUFX16 \F_IO_tri[7]  ( .A(n130), .OE(n159), .Y(F_IO[7]) );
  TBUFX16 \M_D_tri[0]  ( .A(n129), .OE(n160), .Y(M_D[0]) );
  TBUFX16 \M_D_tri[1]  ( .A(n128), .OE(n160), .Y(M_D[1]) );
  TBUFX16 \M_D_tri[2]  ( .A(n127), .OE(n160), .Y(M_D[2]) );
  TBUFX16 \M_D_tri[3]  ( .A(n126), .OE(n160), .Y(M_D[3]) );
  TBUFX16 \M_D_tri[4]  ( .A(n125), .OE(n160), .Y(M_D[4]) );
  TBUFX16 \M_D_tri[5]  ( .A(n124), .OE(n160), .Y(M_D[5]) );
  TBUFX16 \M_D_tri[6]  ( .A(n123), .OE(n160), .Y(M_D[6]) );
  TBUFX16 \M_D_tri[7]  ( .A(n121), .OE(n160), .Y(M_D[7]) );
  FC_DW01_add_0 add_91 ( .A(cmd[13:7]), .B(counter[7:1]), .CI(1'b0), .SUM(M_A)
         );
  FC_DW01_inc_0 add_55 ( .A(counter), .SUM({N139, N138, N137, N136, N135, N134, 
        N133, N132, N131}) );
  DFFSX1 \state_reg[0]  ( .D(n140), .CK(clk), .SN(n167), .Q(state[0]) );
  DFFRX1 \state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n167), .Q(state[2]), 
        .QN(n185) );
  DFFRXL \counter_reg[8]  ( .D(next_cnt[8]), .CK(clk), .RN(n167), .Q(
        counter[8]), .QN(n116) );
  DFFRXL \counter_reg[7]  ( .D(next_cnt[7]), .CK(clk), .RN(n167), .Q(
        counter[7]), .QN(n115) );
  DFFRXL \counter_reg[6]  ( .D(next_cnt[6]), .CK(clk), .RN(n167), .Q(
        counter[6]), .QN(n114) );
  DFFSX2 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .SN(n167), .Q(state[1]), 
        .QN(n187) );
  DFFRX1 \counter_reg[2]  ( .D(next_cnt[2]), .CK(clk), .RN(n167), .Q(
        counter[2]), .QN(n120) );
  DFFRX1 \counter_reg[0]  ( .D(next_cnt[0]), .CK(clk), .RN(n167), .Q(
        counter[0]), .QN(n142) );
  DFFRX1 \counter_reg[3]  ( .D(next_cnt[3]), .CK(clk), .RN(n167), .Q(
        counter[3]), .QN(n119) );
  DFFSX2 \state_reg[3]  ( .D(next_state[3]), .CK(clk), .SN(n167), .Q(state[3]), 
        .QN(n186) );
  DFFRX1 \counter_reg[4]  ( .D(next_cnt[4]), .CK(clk), .RN(n167), .Q(
        counter[4]), .QN(n117) );
  DFFRX1 \counter_reg[5]  ( .D(next_cnt[5]), .CK(clk), .RN(n167), .Q(
        counter[5]), .QN(n118) );
  DFFRX1 \counter_reg[1]  ( .D(next_cnt[1]), .CK(clk), .RN(n167), .Q(
        counter[1]), .QN(n141) );
  NAND4XL U141 ( .A(n74), .B(n21), .C(n87), .D(n88), .Y(n130) );
  NAND2XL U142 ( .A(n97), .B(n98), .Y(n134) );
  CLKBUFX2 U143 ( .A(n131), .Y(n159) );
  INVX12 U144 ( .A(n143), .Y(F_CLE) );
  CLKBUFX2 U145 ( .A(n188), .Y(n157) );
  CLKINVX1 U146 ( .A(n157), .Y(n143) );
  CLKINVX1 U147 ( .A(n186), .Y(n145) );
  CLKINVX1 U148 ( .A(n145), .Y(n146) );
  BUFX2 U149 ( .A(n25), .Y(n147) );
  CLKINVX1 U150 ( .A(state[1]), .Y(n148) );
  CLKINVX1 U151 ( .A(n148), .Y(n149) );
  CLKINVX1 U152 ( .A(n149), .Y(n150) );
  CLKINVX1 U153 ( .A(n150), .Y(n151) );
  DLY4X1 U154 ( .A(n154), .Y(n152) );
  INVXL U155 ( .A(n153), .Y(n154) );
  INVXL U156 ( .A(F_RB), .Y(n153) );
  NAND4BXL U157 ( .AN(n30), .B(n36), .C(n37), .D(n38), .Y(next_state[2]) );
  NAND4BXL U158 ( .AN(n141), .B(n119), .C(n117), .D(n113), .Y(n112) );
  NAND4XL U159 ( .A(n118), .B(n117), .C(n141), .D(n119), .Y(n81) );
  AND3XL U160 ( .A(n77), .B(n120), .C(n118), .Y(n113) );
  NOR3XL U161 ( .A(n81), .B(n142), .C(n120), .Y(n78) );
  INVX12 U162 ( .A(n160), .Y(M_RW) );
  BUFX12 U163 ( .A(n190), .Y(F_WEN) );
  OAI222XL U164 ( .A0(n142), .A1(n84), .B0(n158), .B1(n178), .C0(n180), .C1(
        counter[0]), .Y(n190) );
  INVX12 U165 ( .A(n147), .Y(F_ALE) );
  INVX12 U166 ( .A(n55), .Y(N253) );
  AND2X2 U167 ( .A(n160), .B(counter[0]), .Y(n189) );
  INVX12 U168 ( .A(n189), .Y(F_REN) );
  OAI21XL U169 ( .A0(n151), .A1(n73), .B0(n19), .Y(n188) );
  NOR2X1 U170 ( .A(n80), .B(n142), .Y(n41) );
  CLKINVX1 U171 ( .A(n158), .Y(n180) );
  CLKINVX1 U172 ( .A(n89), .Y(n183) );
  CLKINVX1 U173 ( .A(n76), .Y(n184) );
  NOR2X1 U174 ( .A(n73), .B(n76), .Y(n28) );
  NAND2X2 U175 ( .A(n33), .B(n34), .Y(n32) );
  XOR2X1 U176 ( .A(n176), .B(n140), .Y(n33) );
  XOR2X1 U177 ( .A(n185), .B(next_state[2]), .Y(n34) );
  NOR2BX1 U178 ( .AN(N138), .B(n32), .Y(next_cnt[7]) );
  NOR2BX1 U179 ( .AN(N137), .B(n32), .Y(next_cnt[6]) );
  NOR2BX1 U180 ( .AN(N136), .B(n32), .Y(next_cnt[5]) );
  NOR2BX1 U181 ( .AN(N135), .B(n32), .Y(next_cnt[4]) );
  NOR2BX1 U182 ( .AN(N134), .B(n32), .Y(next_cnt[3]) );
  NOR2BX1 U183 ( .AN(N133), .B(n32), .Y(next_cnt[2]) );
  NOR2BX1 U184 ( .AN(N132), .B(n32), .Y(next_cnt[1]) );
  NAND2X1 U185 ( .A(n158), .B(n17), .Y(n36) );
  NAND2X1 U186 ( .A(n161), .B(n146), .Y(n73) );
  NAND2X1 U187 ( .A(n185), .B(n187), .Y(n76) );
  NOR2X1 U188 ( .A(n76), .B(n161), .Y(n79) );
  CLKINVX1 U189 ( .A(n21), .Y(n179) );
  CLKINVX1 U190 ( .A(n25), .Y(n182) );
  CLKBUFX3 U191 ( .A(n62), .Y(n158) );
  NOR3X1 U192 ( .A(n185), .B(n187), .C(n73), .Y(n62) );
  CLKBUFX3 U193 ( .A(n122), .Y(n160) );
  NOR2X1 U194 ( .A(n74), .B(n161), .Y(n122) );
  NOR2X2 U195 ( .A(n112), .B(n25), .Y(n90) );
  NOR2X1 U196 ( .A(n25), .B(n80), .Y(n89) );
  NAND2X2 U197 ( .A(n180), .B(n25), .Y(n83) );
  NAND2X1 U198 ( .A(n79), .B(n186), .Y(n55) );
  NOR2X1 U199 ( .A(n74), .B(n176), .Y(n30) );
  CLKINVX1 U200 ( .A(n161), .Y(n176) );
  CLKINVX1 U201 ( .A(n41), .Y(n175) );
  OR2X1 U202 ( .A(cmd[1]), .B(cmd[0]), .Y(n162) );
  XOR2X1 U203 ( .A(n116), .B(N120), .Y(n43) );
  XOR2X1 U204 ( .A(n115), .B(N119), .Y(n44) );
  NOR3X1 U205 ( .A(n51), .B(n142), .C(n52), .Y(n45) );
  XNOR2X1 U206 ( .A(n118), .B(N117), .Y(n52) );
  XNOR2X1 U207 ( .A(n114), .B(N118), .Y(n51) );
  AOI222XL U208 ( .A0(n182), .A1(state[2]), .B0(n179), .B1(state[1]), .C0(n152), .C1(n40), .Y(n38) );
  AOI32X1 U209 ( .A0(n41), .A1(n168), .A2(n28), .B0(n42), .B1(n160), .Y(n37)
         );
  NAND4X1 U210 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n42) );
  NOR2BX1 U211 ( .AN(N139), .B(n32), .Y(next_cnt[8]) );
  NOR2BX1 U212 ( .AN(N131), .B(n32), .Y(next_cnt[0]) );
  NAND4X1 U213 ( .A(n109), .B(n21), .C(n110), .D(n111), .Y(n138) );
  NAND4X1 U214 ( .A(cmd[31]), .B(n182), .C(n112), .D(n80), .Y(n109) );
  NAND3X1 U215 ( .A(n184), .B(n161), .C(cmd[22]), .Y(n110) );
  AOI222XL U216 ( .A0(M_D[0]), .A1(n158), .B0(cmd[14]), .B1(n89), .C0(cmd[23]), 
        .C1(n90), .Y(n111) );
  XNOR2X1 U217 ( .A(n117), .B(N116), .Y(n48) );
  NOR4X1 U218 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(n46) );
  XNOR2X1 U219 ( .A(n141), .B(N113), .Y(n49) );
  XNOR2X1 U220 ( .A(n120), .B(N114), .Y(n50) );
  XNOR2X1 U221 ( .A(n119), .B(N115), .Y(n47) );
  AOI21X1 U222 ( .A0(n103), .A1(n104), .B0(n177), .Y(n137) );
  CLKINVX1 U223 ( .A(n159), .Y(n177) );
  AOI222XL U224 ( .A0(cmd[15]), .A1(n89), .B0(n106), .B1(n161), .C0(n107), 
        .C1(n187), .Y(n104) );
  AOI222XL U225 ( .A0(M_D[1]), .A1(n158), .B0(state[3]), .B1(n76), .C0(cmd[24]), .C1(n90), .Y(n103) );
  AOI222XL U226 ( .A0(M_D[7]), .A1(n158), .B0(cmd[21]), .B1(n89), .C0(cmd[30]), 
        .C1(n90), .Y(n88) );
  NAND4X1 U227 ( .A(n184), .B(n161), .C(n169), .D(n168), .Y(n87) );
  CLKINVX1 U228 ( .A(cmd[32]), .Y(n168) );
  CLKINVX1 U229 ( .A(cmd[22]), .Y(n169) );
  OAI211X1 U230 ( .A0(n183), .A1(n170), .B0(n21), .C0(n94), .Y(n132) );
  AOI22X1 U231 ( .A0(cmd[29]), .A1(n90), .B0(M_D[6]), .B1(n158), .Y(n94) );
  CLKINVX1 U232 ( .A(cmd[20]), .Y(n170) );
  OAI211X1 U233 ( .A0(n183), .A1(n171), .B0(n21), .C0(n96), .Y(n133) );
  AOI22X1 U234 ( .A0(cmd[28]), .A1(n90), .B0(M_D[5]), .B1(n158), .Y(n96) );
  CLKINVX1 U235 ( .A(cmd[19]), .Y(n171) );
  OAI211X1 U236 ( .A0(n183), .A1(n172), .B0(n21), .C0(n100), .Y(n135) );
  AOI22X1 U237 ( .A0(cmd[26]), .A1(n90), .B0(M_D[3]), .B1(n158), .Y(n100) );
  CLKINVX1 U238 ( .A(cmd[17]), .Y(n172) );
  OAI211X1 U239 ( .A0(n183), .A1(n173), .B0(n21), .C0(n102), .Y(n136) );
  AOI22X1 U240 ( .A0(cmd[25]), .A1(n90), .B0(M_D[2]), .B1(n158), .Y(n102) );
  CLKINVX1 U241 ( .A(cmd[16]), .Y(n173) );
  OAI211X1 U242 ( .A0(n152), .A1(n181), .B0(n36), .C0(n22), .Y(n27) );
  CLKINVX1 U243 ( .A(n40), .Y(n181) );
  NAND4X1 U244 ( .A(n54), .B(n55), .C(n56), .D(n57), .Y(n140) );
  NAND3BX1 U245 ( .AN(n152), .B(n187), .C(n179), .Y(n54) );
  AOI32X1 U246 ( .A0(n182), .A1(n77), .A2(n78), .B0(n41), .B1(n79), .Y(n56) );
  AOI221XL U247 ( .A0(n28), .A1(n58), .B0(n30), .B1(n175), .C0(n27), .Y(n57)
         );
  XNOR2X1 U248 ( .A(n114), .B(cmd[5]), .Y(n69) );
  XNOR2X1 U249 ( .A(n141), .B(cmd[0]), .Y(n71) );
  XNOR2X1 U250 ( .A(n119), .B(cmd[2]), .Y(n72) );
  NOR4X1 U251 ( .A(n67), .B(n68), .C(n69), .D(counter[8]), .Y(n66) );
  XNOR2X1 U252 ( .A(n115), .B(cmd[6]), .Y(n67) );
  XNOR2X1 U253 ( .A(n118), .B(cmd[4]), .Y(n68) );
  NAND4X1 U254 ( .A(n63), .B(n64), .C(n65), .D(n66), .Y(n17) );
  XOR2X1 U255 ( .A(n120), .B(cmd[1]), .Y(n63) );
  XOR2X1 U256 ( .A(n117), .B(cmd[3]), .Y(n64) );
  NOR3X1 U257 ( .A(n71), .B(n142), .C(n72), .Y(n65) );
  AOI22X1 U258 ( .A0(cmd[27]), .A1(n90), .B0(M_D[4]), .B1(n158), .Y(n97) );
  AOI221XL U259 ( .A0(cmd[18]), .A1(n89), .B0(n184), .B1(state[3]), .C0(n179), 
        .Y(n98) );
  OAI211X1 U260 ( .A0(n17), .A1(n180), .B0(n19), .C0(n20), .Y(next_state[3])
         );
  OA21XL U261 ( .A0(n152), .A1(n21), .B0(n22), .Y(n20) );
  OAI211X1 U262 ( .A0(n23), .A1(n175), .B0(n25), .C0(n174), .Y(next_state[1])
         );
  AOI21X1 U263 ( .A0(n28), .A1(n29), .B0(n30), .Y(n23) );
  CLKINVX1 U264 ( .A(n27), .Y(n174) );
  NAND2X1 U265 ( .A(cmd[22]), .B(n168), .Y(n29) );
  OAI21XL U266 ( .A0(cmd[32]), .A1(n169), .B0(n41), .Y(n58) );
  CLKINVX1 U267 ( .A(n84), .Y(n178) );
  NOR2XL U268 ( .A(n182), .B(n157), .Y(n84) );
  CLKBUFX3 U269 ( .A(state[0]), .Y(n161) );
  NAND3X2 U270 ( .A(n161), .B(n185), .C(state[3]), .Y(n21) );
  AOI22X1 U271 ( .A0(state[3]), .A1(n79), .B0(n151), .B1(n179), .Y(n19) );
  NAND2X2 U272 ( .A(n107), .B(n151), .Y(n25) );
  NOR2X1 U273 ( .A(n161), .B(state[3]), .Y(n107) );
  NOR2BX1 U274 ( .AN(F_IO[7]), .B(n83), .Y(n121) );
  NOR2BX1 U275 ( .AN(F_IO[6]), .B(n83), .Y(n123) );
  NOR2BX1 U276 ( .AN(F_IO[5]), .B(n83), .Y(n124) );
  NOR2BX1 U277 ( .AN(F_IO[4]), .B(n83), .Y(n125) );
  NOR2BX1 U278 ( .AN(F_IO[3]), .B(n83), .Y(n126) );
  NOR2BX1 U279 ( .AN(F_IO[2]), .B(n83), .Y(n127) );
  NOR2BX1 U280 ( .AN(F_IO[1]), .B(n83), .Y(n128) );
  NOR2BX1 U281 ( .AN(F_IO[0]), .B(n83), .Y(n129) );
  NAND3X1 U282 ( .A(n187), .B(n146), .C(state[2]), .Y(n74) );
  NAND3BX1 U283 ( .AN(n81), .B(n120), .C(n77), .Y(n80) );
  AND3X2 U284 ( .A(n114), .B(n115), .C(n116), .Y(n77) );
  OAI211X1 U285 ( .A0(n161), .A1(n146), .B0(n187), .C0(n108), .Y(n131) );
  AOI2BB2X1 U286 ( .B0(state[2]), .B1(n161), .A0N(state[3]), .A1N(state[2]), 
        .Y(n108) );
  NOR2X1 U287 ( .A(state[2]), .B(n187), .Y(n106) );
  NOR3X1 U288 ( .A(n187), .B(state[2]), .C(n73), .Y(n40) );
  NAND2X1 U289 ( .A(state[3]), .B(n60), .Y(n22) );
  OAI22XL U290 ( .A0(n176), .A1(n185), .B0(n161), .B1(n187), .Y(n60) );
  INVX3 U291 ( .A(rst), .Y(n167) );
  CLKINVX1 U292 ( .A(cmd[0]), .Y(N113) );
  OAI2BB1X1 U293 ( .A0N(cmd[0]), .A1N(cmd[1]), .B0(n162), .Y(N114) );
  OR2X1 U294 ( .A(n162), .B(cmd[2]), .Y(n163) );
  OAI2BB1X1 U295 ( .A0N(n162), .A1N(cmd[2]), .B0(n163), .Y(N115) );
  OR2X1 U296 ( .A(n163), .B(cmd[3]), .Y(n164) );
  OAI2BB1X1 U297 ( .A0N(n163), .A1N(cmd[3]), .B0(n164), .Y(N116) );
  OR2X1 U298 ( .A(n164), .B(cmd[4]), .Y(n165) );
  OAI2BB1X1 U299 ( .A0N(n164), .A1N(cmd[4]), .B0(n165), .Y(N117) );
  XNOR2X1 U300 ( .A(cmd[5]), .B(n165), .Y(N118) );
  NOR3X1 U301 ( .A(cmd[5]), .B(cmd[6]), .C(n165), .Y(N120) );
  OAI21XL U302 ( .A0(cmd[5]), .A1(n165), .B0(cmd[6]), .Y(n166) );
  NAND2BX1 U303 ( .AN(N120), .B(n166), .Y(N119) );
endmodule

