
module accumulator ( PHI, RST, A, CIN, SOUT, COUT );
  input [3:0] A;
  output [3:0] SOUT;
  input PHI, RST, CIN;
  output COUT;
  wire   U4_DATA2_0, U4_DATA2_1, U4_DATA2_2, U4_DATA2_3, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68;

  DFF_X1 SOUT_reg_1_ ( .D(n43), .CK(PHI), .Q(SOUT[1]), .QN(n47) );
  DFF_X1 SOUT_reg_0_ ( .D(n42), .CK(PHI), .Q(SOUT[0]) );
  DFF_X1 SOUT_reg_3_ ( .D(n41), .CK(PHI), .Q(SOUT[3]), .QN(n65) );
  DFF_X1 SOUT_reg_2_ ( .D(n40), .CK(PHI), .Q(SOUT[2]) );
  AND2_X1 U8 ( .A1(U4_DATA2_2), .A2(n39), .ZN(n40) );
  AND2_X1 U9 ( .A1(U4_DATA2_3), .A2(n39), .ZN(n41) );
  AND2_X1 U10 ( .A1(U4_DATA2_0), .A2(n39), .ZN(n42) );
  AND2_X1 U11 ( .A1(U4_DATA2_1), .A2(n39), .ZN(n43) );
  OR2_X1 U12 ( .A1(A[2]), .A2(SOUT[2]), .ZN(n63) );
  AND2_X1 U13 ( .A1(n52), .A2(n46), .ZN(n44) );
  INV_X1 U14 ( .A(RST), .ZN(n39) );
  CLKBUF_X1 U15 ( .A(A[0]), .Z(n45) );
  OAI21_X1 U16 ( .B1(CIN), .B2(n45), .A(SOUT[0]), .ZN(n46) );
  NAND2_X1 U17 ( .A1(SOUT[1]), .A2(A[1]), .ZN(n53) );
  OAI21_X1 U18 ( .B1(CIN), .B2(A[0]), .A(SOUT[0]), .ZN(n51) );
  NAND2_X1 U19 ( .A1(CIN), .A2(A[0]), .ZN(n52) );
  NAND3_X1 U20 ( .A1(n51), .A2(n52), .A3(n53), .ZN(n60) );
  INV_X1 U21 ( .A(A[1]), .ZN(n57) );
  NAND2_X1 U22 ( .A1(n57), .A2(n47), .ZN(n61) );
  NAND3_X1 U23 ( .A1(n63), .A2(n60), .A3(n61), .ZN(n48) );
  NAND2_X1 U24 ( .A1(SOUT[2]), .A2(A[2]), .ZN(n67) );
  NAND2_X1 U25 ( .A1(n48), .A2(n67), .ZN(n50) );
  XOR2_X1 U26 ( .A(SOUT[3]), .B(A[3]), .Z(n49) );
  XOR2_X1 U27 ( .A(n50), .B(n49), .Z(U4_DATA2_3) );
  INV_X1 U28 ( .A(n61), .ZN(n54) );
  OAI21_X1 U29 ( .B1(n54), .B2(n44), .A(n53), .ZN(n56) );
  XOR2_X1 U30 ( .A(SOUT[2]), .B(A[2]), .Z(n55) );
  XOR2_X1 U31 ( .A(n56), .B(n55), .Z(U4_DATA2_2) );
  XOR2_X1 U32 ( .A(n57), .B(SOUT[1]), .Z(n58) );
  XOR2_X1 U33 ( .A(n58), .B(n44), .Z(U4_DATA2_1) );
  XOR2_X1 U34 ( .A(CIN), .B(n45), .Z(n59) );
  XOR2_X1 U35 ( .A(SOUT[0]), .B(n59), .Z(U4_DATA2_0) );
  INV_X1 U36 ( .A(A[3]), .ZN(n66) );
  NAND2_X1 U37 ( .A1(n66), .A2(n65), .ZN(n62) );
  INV_X1 U38 ( .A(n62), .ZN(n68) );
  NAND4_X1 U39 ( .A1(n60), .A2(n62), .A3(n61), .A4(n63), .ZN(n64) );
  OAI221_X1 U40 ( .B1(n68), .B2(n67), .C1(n66), .C2(n65), .A(n64), .ZN(COUT)
         );
endmodule

