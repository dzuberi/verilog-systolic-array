
module buffer1_WORD_SIZE8_1 ( in, out, clk, clear );
  input [0:7] in;
  output [0:7] out;
  input clk, clear;
  wire   n1;

  DFFRNQ_X1 out_reg_7_ ( .D(in[7]), .CLK(clk), .RN(n1), .Q(out[7]) );
  DFFRNQ_X1 out_reg_6_ ( .D(in[6]), .CLK(clk), .RN(n1), .Q(out[6]) );
  DFFRNQ_X1 out_reg_5_ ( .D(in[5]), .CLK(clk), .RN(n1), .Q(out[5]) );
  DFFRNQ_X1 out_reg_4_ ( .D(in[4]), .CLK(clk), .RN(n1), .Q(out[4]) );
  DFFRNQ_X1 out_reg_3_ ( .D(in[3]), .CLK(clk), .RN(n1), .Q(out[3]) );
  DFFRNQ_X1 out_reg_2_ ( .D(in[2]), .CLK(clk), .RN(n1), .Q(out[2]) );
  DFFRNQ_X1 out_reg_1_ ( .D(in[1]), .CLK(clk), .RN(n1), .Q(out[1]) );
  DFFRNQ_X1 out_reg_0_ ( .D(in[0]), .CLK(clk), .RN(n1), .Q(out[0]) );
  INV_X1 U3 ( .I(clear), .ZN(n1) );
endmodule


module buffern_WORD_SIZE8_LENGTH1_1 ( in, out, clk, clear );
  input [0:7] in;
  output [0:7] out;
  input clk, clear;


  buffer1_WORD_SIZE8_1 gen1_0__buffer ( .in(in), .out(out), .clk(clk), .clear(
        clear) );
endmodule


module buffer1_WORD_SIZE8_0 ( in, out, clk, clear );
  input [0:7] in;
  output [0:7] out;
  input clk, clear;
  wire   n1;

  DFFRNQ_X1 out_reg_7_ ( .D(in[7]), .CLK(clk), .RN(n1), .Q(out[7]) );
  DFFRNQ_X1 out_reg_6_ ( .D(in[6]), .CLK(clk), .RN(n1), .Q(out[6]) );
  DFFRNQ_X1 out_reg_5_ ( .D(in[5]), .CLK(clk), .RN(n1), .Q(out[5]) );
  DFFRNQ_X1 out_reg_4_ ( .D(in[4]), .CLK(clk), .RN(n1), .Q(out[4]) );
  DFFRNQ_X1 out_reg_3_ ( .D(in[3]), .CLK(clk), .RN(n1), .Q(out[3]) );
  DFFRNQ_X1 out_reg_2_ ( .D(in[2]), .CLK(clk), .RN(n1), .Q(out[2]) );
  DFFRNQ_X1 out_reg_1_ ( .D(in[1]), .CLK(clk), .RN(n1), .Q(out[1]) );
  DFFRNQ_X1 out_reg_0_ ( .D(in[0]), .CLK(clk), .RN(n1), .Q(out[0]) );
  INV_X1 U3 ( .I(clear), .ZN(n1) );
endmodule


module buffern_WORD_SIZE8_LENGTH1_0 ( in, out, clk, clear );
  input [0:7] in;
  output [0:7] out;
  input clk, clear;


  buffer1_WORD_SIZE8_0 gen1_0__buffer ( .in(in), .out(out), .clk(clk), .clear(
        clear) );
endmodule


module MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_3_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  assign SUM[6] = A[6];
  assign SUM[5] = A[5];
  assign SUM[4] = A[4];
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = A[0];

  INV_X1 U2 ( .I(n9), .ZN(n4) );
  INV_X1 U3 ( .I(n21), .ZN(n2) );
  NAND2_X1 U4 ( .A1(A[7]), .A2(B[7]), .ZN(n11) );
  INV_X1 U5 ( .I(n13), .ZN(n5) );
  INV_X1 U6 ( .I(n23), .ZN(n3) );
  INV_X1 U7 ( .I(n15), .ZN(n1) );
  XOR2_X1 U8 ( .A1(n6), .A2(n7), .Z(SUM[9]) );
  NOR2_X1 U9 ( .A1(n8), .A2(n9), .ZN(n7) );
  XOR2_X1 U10 ( .A1(n10), .A2(n11), .Z(SUM[8]) );
  NAND2_X1 U11 ( .A1(n5), .A2(n12), .ZN(n10) );
  XOR2_X1 U12 ( .A1(B[7]), .A2(A[7]), .Z(SUM[7]) );
  XOR2_X1 U13 ( .A1(n14), .A2(B[13]), .Z(SUM[13]) );
  OAI21_X1 U14 ( .A1(n15), .A2(n16), .B(n17), .ZN(n14) );
  XOR2_X1 U15 ( .A1(n18), .A2(n16), .Z(SUM[12]) );
  AOI21_X1 U16 ( .A1(n2), .A2(n19), .B(n20), .ZN(n16) );
  NAND2_X1 U17 ( .A1(n1), .A2(n17), .ZN(n18) );
  NAND2_X1 U18 ( .A1(B[12]), .A2(A[12]), .ZN(n17) );
  NOR2_X1 U19 ( .A1(B[12]), .A2(A[12]), .ZN(n15) );
  XOR2_X1 U20 ( .A1(n19), .A2(n22), .Z(SUM[11]) );
  NOR2_X1 U21 ( .A1(n20), .A2(n21), .ZN(n22) );
  NOR2_X1 U22 ( .A1(B[11]), .A2(A[11]), .ZN(n21) );
  AND2_X1 U23 ( .A1(B[11]), .A2(A[11]), .Z(n20) );
  OAI21_X1 U24 ( .A1(n23), .A2(n24), .B(n25), .ZN(n19) );
  XOR2_X1 U25 ( .A1(n26), .A2(n24), .Z(SUM[10]) );
  AOI21_X1 U26 ( .A1(n6), .A2(n4), .B(n8), .ZN(n24) );
  AND2_X1 U27 ( .A1(B[9]), .A2(A[9]), .Z(n8) );
  NOR2_X1 U28 ( .A1(B[9]), .A2(A[9]), .ZN(n9) );
  OAI21_X1 U29 ( .A1(n11), .A2(n13), .B(n12), .ZN(n6) );
  NAND2_X1 U30 ( .A1(B[8]), .A2(A[8]), .ZN(n12) );
  NOR2_X1 U31 ( .A1(B[8]), .A2(A[8]), .ZN(n13) );
  NAND2_X1 U32 ( .A1(n3), .A2(n25), .ZN(n26) );
  NAND2_X1 U33 ( .A1(B[10]), .A2(A[10]), .ZN(n25) );
  NOR2_X1 U34 ( .A1(B[10]), .A2(A[10]), .ZN(n23) );
endmodule


module MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_3_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   ab_7__7_, ab_7__6_, ab_7__5_, ab_7__4_, ab_7__3_, ab_7__2_, ab_7__1_,
         ab_7__0_, ab_6__7_, ab_6__6_, ab_6__5_, ab_6__4_, ab_6__3_, ab_6__2_,
         ab_6__1_, ab_6__0_, ab_5__7_, ab_5__6_, ab_5__5_, ab_5__4_, ab_5__3_,
         ab_5__2_, ab_5__1_, ab_5__0_, ab_4__7_, ab_4__6_, ab_4__5_, ab_4__4_,
         ab_4__3_, ab_4__2_, ab_4__1_, ab_4__0_, ab_3__7_, ab_3__6_, ab_3__5_,
         ab_3__4_, ab_3__3_, ab_3__2_, ab_3__1_, ab_3__0_, ab_2__7_, ab_2__6_,
         ab_2__5_, ab_2__4_, ab_2__3_, ab_2__2_, ab_2__1_, ab_2__0_, ab_1__7_,
         ab_1__6_, ab_1__5_, ab_1__4_, ab_1__3_, ab_1__2_, ab_1__1_, ab_1__0_,
         ab_0__7_, ab_0__6_, ab_0__5_, ab_0__4_, ab_0__3_, ab_0__2_, ab_0__1_,
         CARRYB_7__6_, CARRYB_7__5_, CARRYB_7__4_, CARRYB_7__3_, CARRYB_7__2_,
         CARRYB_7__1_, CARRYB_7__0_, CARRYB_6__6_, CARRYB_6__5_, CARRYB_6__4_,
         CARRYB_6__3_, CARRYB_6__2_, CARRYB_6__1_, CARRYB_6__0_, CARRYB_5__6_,
         CARRYB_5__5_, CARRYB_5__4_, CARRYB_5__3_, CARRYB_5__2_, CARRYB_5__1_,
         CARRYB_5__0_, CARRYB_4__6_, CARRYB_4__5_, CARRYB_4__4_, CARRYB_4__3_,
         CARRYB_4__2_, CARRYB_4__1_, CARRYB_4__0_, CARRYB_3__6_, CARRYB_3__5_,
         CARRYB_3__4_, CARRYB_3__3_, CARRYB_3__2_, CARRYB_3__1_, CARRYB_3__0_,
         CARRYB_2__6_, CARRYB_2__5_, CARRYB_2__4_, CARRYB_2__3_, CARRYB_2__2_,
         CARRYB_2__1_, CARRYB_2__0_, CARRYB_1__6_, CARRYB_1__5_, CARRYB_1__4_,
         CARRYB_1__3_, CARRYB_1__2_, CARRYB_1__1_, CARRYB_1__0_, SUMB_7__6_,
         SUMB_7__5_, SUMB_7__4_, SUMB_7__3_, SUMB_7__2_, SUMB_7__1_,
         SUMB_7__0_, SUMB_6__6_, SUMB_6__5_, SUMB_6__4_, SUMB_6__3_,
         SUMB_6__2_, SUMB_6__1_, SUMB_5__6_, SUMB_5__5_, SUMB_5__4_,
         SUMB_5__3_, SUMB_5__2_, SUMB_5__1_, SUMB_4__6_, SUMB_4__5_,
         SUMB_4__4_, SUMB_4__3_, SUMB_4__2_, SUMB_4__1_, SUMB_3__6_,
         SUMB_3__5_, SUMB_3__4_, SUMB_3__3_, SUMB_3__2_, SUMB_3__1_,
         SUMB_2__6_, SUMB_2__5_, SUMB_2__4_, SUMB_2__3_, SUMB_2__2_,
         SUMB_2__1_, SUMB_1__6_, SUMB_1__5_, SUMB_1__4_, SUMB_1__3_,
         SUMB_1__2_, SUMB_1__1_, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_,
         A1_6_, A1_4_, A1_3_, A1_2_, A1_1_, A1_0_, A2_13_, A2_12_, A2_11_,
         A2_10_, A2_9_, A2_8_, A2_7_, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34;

  FA_X1 S4_0 ( .A(ab_7__0_), .B(CARRYB_6__0_), .CI(SUMB_6__1_), .CO(
        CARRYB_7__0_), .S(SUMB_7__0_) );
  FA_X1 S4_1 ( .A(ab_7__1_), .B(CARRYB_6__1_), .CI(SUMB_6__2_), .CO(
        CARRYB_7__1_), .S(SUMB_7__1_) );
  FA_X1 S4_2 ( .A(ab_7__2_), .B(CARRYB_6__2_), .CI(SUMB_6__3_), .CO(
        CARRYB_7__2_), .S(SUMB_7__2_) );
  FA_X1 S4_3 ( .A(ab_7__3_), .B(CARRYB_6__3_), .CI(SUMB_6__4_), .CO(
        CARRYB_7__3_), .S(SUMB_7__3_) );
  FA_X1 S4_4 ( .A(ab_7__4_), .B(CARRYB_6__4_), .CI(SUMB_6__5_), .CO(
        CARRYB_7__4_), .S(SUMB_7__4_) );
  FA_X1 S4_5 ( .A(ab_7__5_), .B(CARRYB_6__5_), .CI(SUMB_6__6_), .CO(
        CARRYB_7__5_), .S(SUMB_7__5_) );
  FA_X1 S5_6 ( .A(ab_7__6_), .B(CARRYB_6__6_), .CI(ab_6__7_), .CO(CARRYB_7__6_), .S(SUMB_7__6_) );
  FA_X1 S1_6_0 ( .A(ab_6__0_), .B(CARRYB_5__0_), .CI(SUMB_5__1_), .CO(
        CARRYB_6__0_), .S(A1_4_) );
  FA_X1 S2_6_1 ( .A(ab_6__1_), .B(CARRYB_5__1_), .CI(SUMB_5__2_), .CO(
        CARRYB_6__1_), .S(SUMB_6__1_) );
  FA_X1 S2_6_2 ( .A(ab_6__2_), .B(CARRYB_5__2_), .CI(SUMB_5__3_), .CO(
        CARRYB_6__2_), .S(SUMB_6__2_) );
  FA_X1 S2_6_3 ( .A(ab_6__3_), .B(CARRYB_5__3_), .CI(SUMB_5__4_), .CO(
        CARRYB_6__3_), .S(SUMB_6__3_) );
  FA_X1 S2_6_4 ( .A(ab_6__4_), .B(CARRYB_5__4_), .CI(SUMB_5__5_), .CO(
        CARRYB_6__4_), .S(SUMB_6__4_) );
  FA_X1 S2_6_5 ( .A(ab_6__5_), .B(CARRYB_5__5_), .CI(SUMB_5__6_), .CO(
        CARRYB_6__5_), .S(SUMB_6__5_) );
  FA_X1 S3_6_6 ( .A(ab_6__6_), .B(CARRYB_5__6_), .CI(ab_5__7_), .CO(
        CARRYB_6__6_), .S(SUMB_6__6_) );
  FA_X1 S1_5_0 ( .A(ab_5__0_), .B(CARRYB_4__0_), .CI(SUMB_4__1_), .CO(
        CARRYB_5__0_), .S(A1_3_) );
  FA_X1 S2_5_1 ( .A(ab_5__1_), .B(CARRYB_4__1_), .CI(SUMB_4__2_), .CO(
        CARRYB_5__1_), .S(SUMB_5__1_) );
  FA_X1 S2_5_2 ( .A(ab_5__2_), .B(CARRYB_4__2_), .CI(SUMB_4__3_), .CO(
        CARRYB_5__2_), .S(SUMB_5__2_) );
  FA_X1 S2_5_3 ( .A(ab_5__3_), .B(CARRYB_4__3_), .CI(SUMB_4__4_), .CO(
        CARRYB_5__3_), .S(SUMB_5__3_) );
  FA_X1 S2_5_4 ( .A(ab_5__4_), .B(CARRYB_4__4_), .CI(SUMB_4__5_), .CO(
        CARRYB_5__4_), .S(SUMB_5__4_) );
  FA_X1 S2_5_5 ( .A(ab_5__5_), .B(CARRYB_4__5_), .CI(SUMB_4__6_), .CO(
        CARRYB_5__5_), .S(SUMB_5__5_) );
  FA_X1 S3_5_6 ( .A(ab_5__6_), .B(CARRYB_4__6_), .CI(ab_4__7_), .CO(
        CARRYB_5__6_), .S(SUMB_5__6_) );
  FA_X1 S1_4_0 ( .A(ab_4__0_), .B(CARRYB_3__0_), .CI(SUMB_3__1_), .CO(
        CARRYB_4__0_), .S(A1_2_) );
  FA_X1 S2_4_1 ( .A(ab_4__1_), .B(CARRYB_3__1_), .CI(SUMB_3__2_), .CO(
        CARRYB_4__1_), .S(SUMB_4__1_) );
  FA_X1 S2_4_2 ( .A(ab_4__2_), .B(CARRYB_3__2_), .CI(SUMB_3__3_), .CO(
        CARRYB_4__2_), .S(SUMB_4__2_) );
  FA_X1 S2_4_3 ( .A(ab_4__3_), .B(CARRYB_3__3_), .CI(SUMB_3__4_), .CO(
        CARRYB_4__3_), .S(SUMB_4__3_) );
  FA_X1 S2_4_4 ( .A(ab_4__4_), .B(CARRYB_3__4_), .CI(SUMB_3__5_), .CO(
        CARRYB_4__4_), .S(SUMB_4__4_) );
  FA_X1 S2_4_5 ( .A(ab_4__5_), .B(CARRYB_3__5_), .CI(SUMB_3__6_), .CO(
        CARRYB_4__5_), .S(SUMB_4__5_) );
  FA_X1 S3_4_6 ( .A(ab_4__6_), .B(CARRYB_3__6_), .CI(ab_3__7_), .CO(
        CARRYB_4__6_), .S(SUMB_4__6_) );
  FA_X1 S1_3_0 ( .A(ab_3__0_), .B(CARRYB_2__0_), .CI(SUMB_2__1_), .CO(
        CARRYB_3__0_), .S(A1_1_) );
  FA_X1 S2_3_1 ( .A(ab_3__1_), .B(CARRYB_2__1_), .CI(SUMB_2__2_), .CO(
        CARRYB_3__1_), .S(SUMB_3__1_) );
  FA_X1 S2_3_2 ( .A(ab_3__2_), .B(CARRYB_2__2_), .CI(SUMB_2__3_), .CO(
        CARRYB_3__2_), .S(SUMB_3__2_) );
  FA_X1 S2_3_3 ( .A(ab_3__3_), .B(CARRYB_2__3_), .CI(SUMB_2__4_), .CO(
        CARRYB_3__3_), .S(SUMB_3__3_) );
  FA_X1 S2_3_4 ( .A(ab_3__4_), .B(CARRYB_2__4_), .CI(SUMB_2__5_), .CO(
        CARRYB_3__4_), .S(SUMB_3__4_) );
  FA_X1 S2_3_5 ( .A(ab_3__5_), .B(CARRYB_2__5_), .CI(SUMB_2__6_), .CO(
        CARRYB_3__5_), .S(SUMB_3__5_) );
  FA_X1 S3_3_6 ( .A(ab_3__6_), .B(CARRYB_2__6_), .CI(ab_2__7_), .CO(
        CARRYB_3__6_), .S(SUMB_3__6_) );
  FA_X1 S1_2_0 ( .A(ab_2__0_), .B(CARRYB_1__0_), .CI(SUMB_1__1_), .CO(
        CARRYB_2__0_), .S(A1_0_) );
  FA_X1 S2_2_1 ( .A(ab_2__1_), .B(CARRYB_1__1_), .CI(SUMB_1__2_), .CO(
        CARRYB_2__1_), .S(SUMB_2__1_) );
  FA_X1 S2_2_2 ( .A(ab_2__2_), .B(CARRYB_1__2_), .CI(SUMB_1__3_), .CO(
        CARRYB_2__2_), .S(SUMB_2__2_) );
  FA_X1 S2_2_3 ( .A(ab_2__3_), .B(CARRYB_1__3_), .CI(SUMB_1__4_), .CO(
        CARRYB_2__3_), .S(SUMB_2__3_) );
  FA_X1 S2_2_4 ( .A(ab_2__4_), .B(CARRYB_1__4_), .CI(SUMB_1__5_), .CO(
        CARRYB_2__4_), .S(SUMB_2__4_) );
  FA_X1 S2_2_5 ( .A(ab_2__5_), .B(CARRYB_1__5_), .CI(SUMB_1__6_), .CO(
        CARRYB_2__5_), .S(SUMB_2__5_) );
  FA_X1 S3_2_6 ( .A(ab_2__6_), .B(CARRYB_1__6_), .CI(ab_1__7_), .CO(
        CARRYB_2__6_), .S(SUMB_2__6_) );
  MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_3_DW01_add_1 FS_1 ( .A({1'b0, A1_12_, 
        A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, SUMB_7__0_, A1_4_, A1_3_, 
        A1_2_, A1_1_, A1_0_}), .B({A2_13_, A2_12_, A2_11_, A2_10_, A2_9_, 
        A2_8_, A2_7_, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM(PRODUCT[15:2]) );
  INV_X1 U2 ( .I(ab_0__6_), .ZN(n16) );
  INV_X1 U3 ( .I(ab_0__7_), .ZN(n18) );
  INV_X1 U4 ( .I(ab_1__5_), .ZN(n15) );
  INV_X1 U5 ( .I(ab_1__6_), .ZN(n17) );
  AND2_X1 U6 ( .A1(SUMB_7__1_), .A2(CARRYB_7__0_), .Z(A2_7_) );
  INV_X1 U7 ( .I(ab_0__5_), .ZN(n14) );
  INV_X1 U8 ( .I(ab_1__4_), .ZN(n13) );
  INV_X1 U9 ( .I(ab_0__4_), .ZN(n12) );
  AND2_X1 U10 ( .A1(SUMB_7__2_), .A2(CARRYB_7__1_), .Z(A2_8_) );
  INV_X1 U11 ( .I(ab_1__3_), .ZN(n11) );
  INV_X1 U12 ( .I(ab_0__3_), .ZN(n10) );
  INV_X1 U13 ( .I(ab_1__2_), .ZN(n9) );
  INV_X1 U14 ( .I(ab_0__2_), .ZN(n8) );
  INV_X1 U15 ( .I(ab_1__1_), .ZN(n7) );
  AND2_X1 U16 ( .A1(SUMB_7__3_), .A2(CARRYB_7__2_), .Z(A2_9_) );
  INV_X1 U17 ( .I(ab_0__1_), .ZN(n6) );
  INV_X1 U18 ( .I(ab_1__0_), .ZN(n5) );
  AND2_X1 U19 ( .A1(SUMB_7__4_), .A2(CARRYB_7__3_), .Z(A2_10_) );
  AND2_X1 U20 ( .A1(SUMB_7__5_), .A2(CARRYB_7__4_), .Z(A2_11_) );
  AND2_X1 U21 ( .A1(SUMB_7__6_), .A2(CARRYB_7__5_), .Z(A2_12_) );
  INV_X1 U22 ( .I(CARRYB_7__6_), .ZN(n4) );
  INV_X1 U23 ( .I(ab_7__7_), .ZN(n3) );
  NOR2_X1 U24 ( .A1(n15), .A2(n16), .ZN(CARRYB_1__5_) );
  NOR2_X1 U25 ( .A1(n17), .A2(n18), .ZN(CARRYB_1__6_) );
  NOR2_X1 U26 ( .A1(n13), .A2(n14), .ZN(CARRYB_1__4_) );
  NOR2_X1 U27 ( .A1(n11), .A2(n12), .ZN(CARRYB_1__3_) );
  NOR2_X1 U28 ( .A1(n9), .A2(n10), .ZN(CARRYB_1__2_) );
  NOR2_X1 U29 ( .A1(n7), .A2(n8), .ZN(CARRYB_1__1_) );
  NOR2_X1 U30 ( .A1(n5), .A2(n6), .ZN(CARRYB_1__0_) );
  INV_X1 U31 ( .I(A[0]), .ZN(n34) );
  NOR2_X1 U32 ( .A1(n3), .A2(n4), .ZN(A2_13_) );
  INV_X1 U33 ( .I(B[7]), .ZN(n19) );
  INV_X1 U34 ( .I(A[1]), .ZN(n33) );
  INV_X1 U35 ( .I(B[6]), .ZN(n20) );
  INV_X1 U36 ( .I(B[5]), .ZN(n21) );
  INV_X1 U37 ( .I(B[4]), .ZN(n22) );
  INV_X1 U38 ( .I(A[2]), .ZN(n32) );
  INV_X1 U39 ( .I(B[3]), .ZN(n23) );
  INV_X1 U40 ( .I(B[2]), .ZN(n24) );
  INV_X1 U41 ( .I(B[1]), .ZN(n25) );
  INV_X1 U42 ( .I(A[3]), .ZN(n31) );
  INV_X1 U43 ( .I(B[0]), .ZN(n26) );
  INV_X1 U44 ( .I(A[4]), .ZN(n30) );
  INV_X1 U45 ( .I(A[5]), .ZN(n29) );
  INV_X1 U46 ( .I(A[6]), .ZN(n28) );
  INV_X1 U47 ( .I(A[7]), .ZN(n27) );
  XOR2_X1 U48 ( .A1(CARRYB_7__0_), .A2(SUMB_7__1_), .Z(A1_6_) );
  XOR2_X1 U49 ( .A1(CARRYB_7__1_), .A2(SUMB_7__2_), .Z(A1_7_) );
  XOR2_X1 U50 ( .A1(CARRYB_7__2_), .A2(SUMB_7__3_), .Z(A1_8_) );
  XOR2_X1 U51 ( .A1(CARRYB_7__3_), .A2(SUMB_7__4_), .Z(A1_9_) );
  XOR2_X1 U52 ( .A1(CARRYB_7__4_), .A2(SUMB_7__5_), .Z(A1_10_) );
  XOR2_X1 U53 ( .A1(CARRYB_7__5_), .A2(SUMB_7__6_), .Z(A1_11_) );
  XOR2_X1 U54 ( .A1(CARRYB_7__6_), .A2(ab_7__7_), .Z(A1_12_) );
  XOR2_X1 U55 ( .A1(ab_1__0_), .A2(ab_0__1_), .Z(PRODUCT[1]) );
  XOR2_X1 U56 ( .A1(ab_1__1_), .A2(ab_0__2_), .Z(SUMB_1__1_) );
  XOR2_X1 U57 ( .A1(ab_1__2_), .A2(ab_0__3_), .Z(SUMB_1__2_) );
  XOR2_X1 U58 ( .A1(ab_1__3_), .A2(ab_0__4_), .Z(SUMB_1__3_) );
  XOR2_X1 U59 ( .A1(ab_1__4_), .A2(ab_0__5_), .Z(SUMB_1__4_) );
  XOR2_X1 U60 ( .A1(ab_1__5_), .A2(ab_0__6_), .Z(SUMB_1__5_) );
  XOR2_X1 U61 ( .A1(ab_1__6_), .A2(ab_0__7_), .Z(SUMB_1__6_) );
  NOR2_X1 U63 ( .A1(n27), .A2(n19), .ZN(ab_7__7_) );
  NOR2_X1 U64 ( .A1(n27), .A2(n20), .ZN(ab_7__6_) );
  NOR2_X1 U65 ( .A1(n27), .A2(n21), .ZN(ab_7__5_) );
  NOR2_X1 U66 ( .A1(n27), .A2(n22), .ZN(ab_7__4_) );
  NOR2_X1 U67 ( .A1(n27), .A2(n23), .ZN(ab_7__3_) );
  NOR2_X1 U68 ( .A1(n27), .A2(n24), .ZN(ab_7__2_) );
  NOR2_X1 U69 ( .A1(n27), .A2(n25), .ZN(ab_7__1_) );
  NOR2_X1 U70 ( .A1(n27), .A2(n26), .ZN(ab_7__0_) );
  NOR2_X1 U71 ( .A1(n19), .A2(n28), .ZN(ab_6__7_) );
  NOR2_X1 U72 ( .A1(n20), .A2(n28), .ZN(ab_6__6_) );
  NOR2_X1 U73 ( .A1(n21), .A2(n28), .ZN(ab_6__5_) );
  NOR2_X1 U74 ( .A1(n22), .A2(n28), .ZN(ab_6__4_) );
  NOR2_X1 U75 ( .A1(n23), .A2(n28), .ZN(ab_6__3_) );
  NOR2_X1 U76 ( .A1(n24), .A2(n28), .ZN(ab_6__2_) );
  NOR2_X1 U77 ( .A1(n25), .A2(n28), .ZN(ab_6__1_) );
  NOR2_X1 U78 ( .A1(n26), .A2(n28), .ZN(ab_6__0_) );
  NOR2_X1 U79 ( .A1(n19), .A2(n29), .ZN(ab_5__7_) );
  NOR2_X1 U80 ( .A1(n20), .A2(n29), .ZN(ab_5__6_) );
  NOR2_X1 U81 ( .A1(n21), .A2(n29), .ZN(ab_5__5_) );
  NOR2_X1 U82 ( .A1(n22), .A2(n29), .ZN(ab_5__4_) );
  NOR2_X1 U83 ( .A1(n23), .A2(n29), .ZN(ab_5__3_) );
  NOR2_X1 U84 ( .A1(n24), .A2(n29), .ZN(ab_5__2_) );
  NOR2_X1 U85 ( .A1(n25), .A2(n29), .ZN(ab_5__1_) );
  NOR2_X1 U86 ( .A1(n26), .A2(n29), .ZN(ab_5__0_) );
  NOR2_X1 U87 ( .A1(n19), .A2(n30), .ZN(ab_4__7_) );
  NOR2_X1 U88 ( .A1(n20), .A2(n30), .ZN(ab_4__6_) );
  NOR2_X1 U89 ( .A1(n21), .A2(n30), .ZN(ab_4__5_) );
  NOR2_X1 U90 ( .A1(n22), .A2(n30), .ZN(ab_4__4_) );
  NOR2_X1 U91 ( .A1(n23), .A2(n30), .ZN(ab_4__3_) );
  NOR2_X1 U92 ( .A1(n24), .A2(n30), .ZN(ab_4__2_) );
  NOR2_X1 U93 ( .A1(n25), .A2(n30), .ZN(ab_4__1_) );
  NOR2_X1 U94 ( .A1(n26), .A2(n30), .ZN(ab_4__0_) );
  NOR2_X1 U95 ( .A1(n19), .A2(n31), .ZN(ab_3__7_) );
  NOR2_X1 U96 ( .A1(n20), .A2(n31), .ZN(ab_3__6_) );
  NOR2_X1 U97 ( .A1(n21), .A2(n31), .ZN(ab_3__5_) );
  NOR2_X1 U98 ( .A1(n22), .A2(n31), .ZN(ab_3__4_) );
  NOR2_X1 U99 ( .A1(n23), .A2(n31), .ZN(ab_3__3_) );
  NOR2_X1 U100 ( .A1(n24), .A2(n31), .ZN(ab_3__2_) );
  NOR2_X1 U101 ( .A1(n25), .A2(n31), .ZN(ab_3__1_) );
  NOR2_X1 U102 ( .A1(n26), .A2(n31), .ZN(ab_3__0_) );
  NOR2_X1 U103 ( .A1(n19), .A2(n32), .ZN(ab_2__7_) );
  NOR2_X1 U104 ( .A1(n20), .A2(n32), .ZN(ab_2__6_) );
  NOR2_X1 U105 ( .A1(n21), .A2(n32), .ZN(ab_2__5_) );
  NOR2_X1 U106 ( .A1(n22), .A2(n32), .ZN(ab_2__4_) );
  NOR2_X1 U107 ( .A1(n23), .A2(n32), .ZN(ab_2__3_) );
  NOR2_X1 U108 ( .A1(n24), .A2(n32), .ZN(ab_2__2_) );
  NOR2_X1 U109 ( .A1(n25), .A2(n32), .ZN(ab_2__1_) );
  NOR2_X1 U110 ( .A1(n26), .A2(n32), .ZN(ab_2__0_) );
  NOR2_X1 U111 ( .A1(n19), .A2(n33), .ZN(ab_1__7_) );
  NOR2_X1 U112 ( .A1(n20), .A2(n33), .ZN(ab_1__6_) );
  NOR2_X1 U113 ( .A1(n21), .A2(n33), .ZN(ab_1__5_) );
  NOR2_X1 U114 ( .A1(n22), .A2(n33), .ZN(ab_1__4_) );
  NOR2_X1 U115 ( .A1(n23), .A2(n33), .ZN(ab_1__3_) );
  NOR2_X1 U116 ( .A1(n24), .A2(n33), .ZN(ab_1__2_) );
  NOR2_X1 U117 ( .A1(n25), .A2(n33), .ZN(ab_1__1_) );
  NOR2_X1 U118 ( .A1(n26), .A2(n33), .ZN(ab_1__0_) );
  NOR2_X1 U119 ( .A1(n19), .A2(n34), .ZN(ab_0__7_) );
  NOR2_X1 U120 ( .A1(n20), .A2(n34), .ZN(ab_0__6_) );
  NOR2_X1 U121 ( .A1(n21), .A2(n34), .ZN(ab_0__5_) );
  NOR2_X1 U122 ( .A1(n22), .A2(n34), .ZN(ab_0__4_) );
  NOR2_X1 U123 ( .A1(n23), .A2(n34), .ZN(ab_0__3_) );
  NOR2_X1 U124 ( .A1(n24), .A2(n34), .ZN(ab_0__2_) );
  NOR2_X1 U125 ( .A1(n25), .A2(n34), .ZN(ab_0__1_) );
  NOR2_X1 U126 ( .A1(n26), .A2(n34), .ZN(PRODUCT[0]) );
endmodule


module MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_3_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [15:1] carry;

  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .S(SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  INV_X1 U1 ( .I(A[0]), .ZN(n1) );
  NOR2_X1 U2 ( .A1(n1), .A2(n2), .ZN(carry[1]) );
  INV_X1 U3 ( .I(B[0]), .ZN(n2) );
  XOR2_X1 U4 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_3 ( a, b, a_fwd, b_fwd, out, clk, 
        clear );
  input [0:7] a;
  input [0:7] b;
  output [0:7] a_fwd;
  output [0:7] b_fwd;
  output [0:15] out;
  input clk, clear;
  wire   mult_out_9_, mult_out_8_, mult_out_7_, mult_out_6_, mult_out_5_,
         mult_out_4_, mult_out_3_, mult_out_2_, mult_out_1_, mult_out_15_,
         mult_out_14_, mult_out_13_, mult_out_12_, mult_out_11_, mult_out_10_,
         mult_out_0_, n1;
  wire   [0:15] adder_out;

  MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_3_DW02_mult_0 mult_23 ( .A(a), .B(b), .TC(
        1'b0), .PRODUCT({mult_out_0_, mult_out_1_, mult_out_2_, mult_out_3_, 
        mult_out_4_, mult_out_5_, mult_out_6_, mult_out_7_, mult_out_8_, 
        mult_out_9_, mult_out_10_, mult_out_11_, mult_out_12_, mult_out_13_, 
        mult_out_14_, mult_out_15_}) );
  MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_3_DW01_add_0 add_24 ( .A({mult_out_0_, 
        mult_out_1_, mult_out_2_, mult_out_3_, mult_out_4_, mult_out_5_, 
        mult_out_6_, mult_out_7_, mult_out_8_, mult_out_9_, mult_out_10_, 
        mult_out_11_, mult_out_12_, mult_out_13_, mult_out_14_, mult_out_15_}), 
        .B(out), .CI(1'b0), .SUM(adder_out) );
  DFFRNQ_X1 b_fwd_reg_7_ ( .D(b[7]), .CLK(clk), .RN(n1), .Q(b_fwd[7]) );
  DFFRNQ_X1 b_fwd_reg_6_ ( .D(b[6]), .CLK(clk), .RN(n1), .Q(b_fwd[6]) );
  DFFRNQ_X1 b_fwd_reg_5_ ( .D(b[5]), .CLK(clk), .RN(n1), .Q(b_fwd[5]) );
  DFFRNQ_X1 b_fwd_reg_4_ ( .D(b[4]), .CLK(clk), .RN(n1), .Q(b_fwd[4]) );
  DFFRNQ_X1 b_fwd_reg_3_ ( .D(b[3]), .CLK(clk), .RN(n1), .Q(b_fwd[3]) );
  DFFRNQ_X1 b_fwd_reg_2_ ( .D(b[2]), .CLK(clk), .RN(n1), .Q(b_fwd[2]) );
  DFFRNQ_X1 b_fwd_reg_1_ ( .D(b[1]), .CLK(clk), .RN(n1), .Q(b_fwd[1]) );
  DFFRNQ_X1 b_fwd_reg_0_ ( .D(b[0]), .CLK(clk), .RN(n1), .Q(b_fwd[0]) );
  DFFRNQ_X1 a_fwd_reg_7_ ( .D(a[7]), .CLK(clk), .RN(n1), .Q(a_fwd[7]) );
  DFFRNQ_X1 a_fwd_reg_6_ ( .D(a[6]), .CLK(clk), .RN(n1), .Q(a_fwd[6]) );
  DFFRNQ_X1 a_fwd_reg_5_ ( .D(a[5]), .CLK(clk), .RN(n1), .Q(a_fwd[5]) );
  DFFRNQ_X1 a_fwd_reg_4_ ( .D(a[4]), .CLK(clk), .RN(n1), .Q(a_fwd[4]) );
  DFFRNQ_X1 a_fwd_reg_3_ ( .D(a[3]), .CLK(clk), .RN(n1), .Q(a_fwd[3]) );
  DFFRNQ_X1 a_fwd_reg_2_ ( .D(a[2]), .CLK(clk), .RN(n1), .Q(a_fwd[2]) );
  DFFRNQ_X1 a_fwd_reg_1_ ( .D(a[1]), .CLK(clk), .RN(n1), .Q(a_fwd[1]) );
  DFFRNQ_X1 a_fwd_reg_0_ ( .D(a[0]), .CLK(clk), .RN(n1), .Q(a_fwd[0]) );
  DFFRNQ_X1 out_reg_15_ ( .D(adder_out[15]), .CLK(clk), .RN(n1), .Q(out[15])
         );
  DFFRNQ_X1 out_reg_14_ ( .D(adder_out[14]), .CLK(clk), .RN(n1), .Q(out[14])
         );
  DFFRNQ_X1 out_reg_13_ ( .D(adder_out[13]), .CLK(clk), .RN(n1), .Q(out[13])
         );
  DFFRNQ_X1 out_reg_12_ ( .D(adder_out[12]), .CLK(clk), .RN(n1), .Q(out[12])
         );
  DFFRNQ_X1 out_reg_11_ ( .D(adder_out[11]), .CLK(clk), .RN(n1), .Q(out[11])
         );
  DFFRNQ_X1 out_reg_10_ ( .D(adder_out[10]), .CLK(clk), .RN(n1), .Q(out[10])
         );
  DFFRNQ_X1 out_reg_9_ ( .D(adder_out[9]), .CLK(clk), .RN(n1), .Q(out[9]) );
  DFFRNQ_X1 out_reg_8_ ( .D(adder_out[8]), .CLK(clk), .RN(n1), .Q(out[8]) );
  DFFRNQ_X1 out_reg_7_ ( .D(adder_out[7]), .CLK(clk), .RN(n1), .Q(out[7]) );
  DFFRNQ_X1 out_reg_6_ ( .D(adder_out[6]), .CLK(clk), .RN(n1), .Q(out[6]) );
  DFFRNQ_X1 out_reg_5_ ( .D(adder_out[5]), .CLK(clk), .RN(n1), .Q(out[5]) );
  DFFRNQ_X1 out_reg_4_ ( .D(adder_out[4]), .CLK(clk), .RN(n1), .Q(out[4]) );
  DFFRNQ_X1 out_reg_3_ ( .D(adder_out[3]), .CLK(clk), .RN(n1), .Q(out[3]) );
  DFFRNQ_X1 out_reg_2_ ( .D(adder_out[2]), .CLK(clk), .RN(n1), .Q(out[2]) );
  DFFRNQ_X1 out_reg_1_ ( .D(adder_out[1]), .CLK(clk), .RN(n1), .Q(out[1]) );
  DFFRNQ_X1 out_reg_0_ ( .D(adder_out[0]), .CLK(clk), .RN(n1), .Q(out[0]) );
  INV_X1 U3 ( .I(clear), .ZN(n1) );
endmodule


module MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_2_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  assign SUM[6] = A[6];
  assign SUM[5] = A[5];
  assign SUM[4] = A[4];
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = A[0];

  INV_X1 U2 ( .I(n9), .ZN(n4) );
  INV_X1 U3 ( .I(n21), .ZN(n2) );
  NAND2_X1 U4 ( .A1(A[7]), .A2(B[7]), .ZN(n11) );
  INV_X1 U5 ( .I(n13), .ZN(n5) );
  INV_X1 U6 ( .I(n23), .ZN(n3) );
  INV_X1 U7 ( .I(n15), .ZN(n1) );
  XOR2_X1 U8 ( .A1(n6), .A2(n7), .Z(SUM[9]) );
  NOR2_X1 U9 ( .A1(n8), .A2(n9), .ZN(n7) );
  XOR2_X1 U10 ( .A1(n10), .A2(n11), .Z(SUM[8]) );
  NAND2_X1 U11 ( .A1(n5), .A2(n12), .ZN(n10) );
  XOR2_X1 U12 ( .A1(B[7]), .A2(A[7]), .Z(SUM[7]) );
  XOR2_X1 U13 ( .A1(n14), .A2(B[13]), .Z(SUM[13]) );
  OAI21_X1 U14 ( .A1(n15), .A2(n16), .B(n17), .ZN(n14) );
  XOR2_X1 U15 ( .A1(n18), .A2(n16), .Z(SUM[12]) );
  AOI21_X1 U16 ( .A1(n2), .A2(n19), .B(n20), .ZN(n16) );
  NAND2_X1 U17 ( .A1(n1), .A2(n17), .ZN(n18) );
  NAND2_X1 U18 ( .A1(B[12]), .A2(A[12]), .ZN(n17) );
  NOR2_X1 U19 ( .A1(B[12]), .A2(A[12]), .ZN(n15) );
  XOR2_X1 U20 ( .A1(n19), .A2(n22), .Z(SUM[11]) );
  NOR2_X1 U21 ( .A1(n20), .A2(n21), .ZN(n22) );
  NOR2_X1 U22 ( .A1(B[11]), .A2(A[11]), .ZN(n21) );
  AND2_X1 U23 ( .A1(B[11]), .A2(A[11]), .Z(n20) );
  OAI21_X1 U24 ( .A1(n23), .A2(n24), .B(n25), .ZN(n19) );
  XOR2_X1 U25 ( .A1(n26), .A2(n24), .Z(SUM[10]) );
  AOI21_X1 U26 ( .A1(n6), .A2(n4), .B(n8), .ZN(n24) );
  AND2_X1 U27 ( .A1(B[9]), .A2(A[9]), .Z(n8) );
  NOR2_X1 U28 ( .A1(B[9]), .A2(A[9]), .ZN(n9) );
  OAI21_X1 U29 ( .A1(n11), .A2(n13), .B(n12), .ZN(n6) );
  NAND2_X1 U30 ( .A1(B[8]), .A2(A[8]), .ZN(n12) );
  NOR2_X1 U31 ( .A1(B[8]), .A2(A[8]), .ZN(n13) );
  NAND2_X1 U32 ( .A1(n3), .A2(n25), .ZN(n26) );
  NAND2_X1 U33 ( .A1(B[10]), .A2(A[10]), .ZN(n25) );
  NOR2_X1 U34 ( .A1(B[10]), .A2(A[10]), .ZN(n23) );
endmodule


module MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_2_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   ab_7__7_, ab_7__6_, ab_7__5_, ab_7__4_, ab_7__3_, ab_7__2_, ab_7__1_,
         ab_7__0_, ab_6__7_, ab_6__6_, ab_6__5_, ab_6__4_, ab_6__3_, ab_6__2_,
         ab_6__1_, ab_6__0_, ab_5__7_, ab_5__6_, ab_5__5_, ab_5__4_, ab_5__3_,
         ab_5__2_, ab_5__1_, ab_5__0_, ab_4__7_, ab_4__6_, ab_4__5_, ab_4__4_,
         ab_4__3_, ab_4__2_, ab_4__1_, ab_4__0_, ab_3__7_, ab_3__6_, ab_3__5_,
         ab_3__4_, ab_3__3_, ab_3__2_, ab_3__1_, ab_3__0_, ab_2__7_, ab_2__6_,
         ab_2__5_, ab_2__4_, ab_2__3_, ab_2__2_, ab_2__1_, ab_2__0_, ab_1__7_,
         ab_1__6_, ab_1__5_, ab_1__4_, ab_1__3_, ab_1__2_, ab_1__1_, ab_1__0_,
         ab_0__7_, ab_0__6_, ab_0__5_, ab_0__4_, ab_0__3_, ab_0__2_, ab_0__1_,
         CARRYB_7__6_, CARRYB_7__5_, CARRYB_7__4_, CARRYB_7__3_, CARRYB_7__2_,
         CARRYB_7__1_, CARRYB_7__0_, CARRYB_6__6_, CARRYB_6__5_, CARRYB_6__4_,
         CARRYB_6__3_, CARRYB_6__2_, CARRYB_6__1_, CARRYB_6__0_, CARRYB_5__6_,
         CARRYB_5__5_, CARRYB_5__4_, CARRYB_5__3_, CARRYB_5__2_, CARRYB_5__1_,
         CARRYB_5__0_, CARRYB_4__6_, CARRYB_4__5_, CARRYB_4__4_, CARRYB_4__3_,
         CARRYB_4__2_, CARRYB_4__1_, CARRYB_4__0_, CARRYB_3__6_, CARRYB_3__5_,
         CARRYB_3__4_, CARRYB_3__3_, CARRYB_3__2_, CARRYB_3__1_, CARRYB_3__0_,
         CARRYB_2__6_, CARRYB_2__5_, CARRYB_2__4_, CARRYB_2__3_, CARRYB_2__2_,
         CARRYB_2__1_, CARRYB_2__0_, CARRYB_1__6_, CARRYB_1__5_, CARRYB_1__4_,
         CARRYB_1__3_, CARRYB_1__2_, CARRYB_1__1_, CARRYB_1__0_, SUMB_7__6_,
         SUMB_7__5_, SUMB_7__4_, SUMB_7__3_, SUMB_7__2_, SUMB_7__1_,
         SUMB_7__0_, SUMB_6__6_, SUMB_6__5_, SUMB_6__4_, SUMB_6__3_,
         SUMB_6__2_, SUMB_6__1_, SUMB_5__6_, SUMB_5__5_, SUMB_5__4_,
         SUMB_5__3_, SUMB_5__2_, SUMB_5__1_, SUMB_4__6_, SUMB_4__5_,
         SUMB_4__4_, SUMB_4__3_, SUMB_4__2_, SUMB_4__1_, SUMB_3__6_,
         SUMB_3__5_, SUMB_3__4_, SUMB_3__3_, SUMB_3__2_, SUMB_3__1_,
         SUMB_2__6_, SUMB_2__5_, SUMB_2__4_, SUMB_2__3_, SUMB_2__2_,
         SUMB_2__1_, SUMB_1__6_, SUMB_1__5_, SUMB_1__4_, SUMB_1__3_,
         SUMB_1__2_, SUMB_1__1_, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_,
         A1_6_, A1_4_, A1_3_, A1_2_, A1_1_, A1_0_, A2_13_, A2_12_, A2_11_,
         A2_10_, A2_9_, A2_8_, A2_7_, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34;

  FA_X1 S4_0 ( .A(ab_7__0_), .B(CARRYB_6__0_), .CI(SUMB_6__1_), .CO(
        CARRYB_7__0_), .S(SUMB_7__0_) );
  FA_X1 S4_1 ( .A(ab_7__1_), .B(CARRYB_6__1_), .CI(SUMB_6__2_), .CO(
        CARRYB_7__1_), .S(SUMB_7__1_) );
  FA_X1 S4_2 ( .A(ab_7__2_), .B(CARRYB_6__2_), .CI(SUMB_6__3_), .CO(
        CARRYB_7__2_), .S(SUMB_7__2_) );
  FA_X1 S4_3 ( .A(ab_7__3_), .B(CARRYB_6__3_), .CI(SUMB_6__4_), .CO(
        CARRYB_7__3_), .S(SUMB_7__3_) );
  FA_X1 S4_4 ( .A(ab_7__4_), .B(CARRYB_6__4_), .CI(SUMB_6__5_), .CO(
        CARRYB_7__4_), .S(SUMB_7__4_) );
  FA_X1 S4_5 ( .A(ab_7__5_), .B(CARRYB_6__5_), .CI(SUMB_6__6_), .CO(
        CARRYB_7__5_), .S(SUMB_7__5_) );
  FA_X1 S5_6 ( .A(ab_7__6_), .B(CARRYB_6__6_), .CI(ab_6__7_), .CO(CARRYB_7__6_), .S(SUMB_7__6_) );
  FA_X1 S1_6_0 ( .A(ab_6__0_), .B(CARRYB_5__0_), .CI(SUMB_5__1_), .CO(
        CARRYB_6__0_), .S(A1_4_) );
  FA_X1 S2_6_1 ( .A(ab_6__1_), .B(CARRYB_5__1_), .CI(SUMB_5__2_), .CO(
        CARRYB_6__1_), .S(SUMB_6__1_) );
  FA_X1 S2_6_2 ( .A(ab_6__2_), .B(CARRYB_5__2_), .CI(SUMB_5__3_), .CO(
        CARRYB_6__2_), .S(SUMB_6__2_) );
  FA_X1 S2_6_3 ( .A(ab_6__3_), .B(CARRYB_5__3_), .CI(SUMB_5__4_), .CO(
        CARRYB_6__3_), .S(SUMB_6__3_) );
  FA_X1 S2_6_4 ( .A(ab_6__4_), .B(CARRYB_5__4_), .CI(SUMB_5__5_), .CO(
        CARRYB_6__4_), .S(SUMB_6__4_) );
  FA_X1 S2_6_5 ( .A(ab_6__5_), .B(CARRYB_5__5_), .CI(SUMB_5__6_), .CO(
        CARRYB_6__5_), .S(SUMB_6__5_) );
  FA_X1 S3_6_6 ( .A(ab_6__6_), .B(CARRYB_5__6_), .CI(ab_5__7_), .CO(
        CARRYB_6__6_), .S(SUMB_6__6_) );
  FA_X1 S1_5_0 ( .A(ab_5__0_), .B(CARRYB_4__0_), .CI(SUMB_4__1_), .CO(
        CARRYB_5__0_), .S(A1_3_) );
  FA_X1 S2_5_1 ( .A(ab_5__1_), .B(CARRYB_4__1_), .CI(SUMB_4__2_), .CO(
        CARRYB_5__1_), .S(SUMB_5__1_) );
  FA_X1 S2_5_2 ( .A(ab_5__2_), .B(CARRYB_4__2_), .CI(SUMB_4__3_), .CO(
        CARRYB_5__2_), .S(SUMB_5__2_) );
  FA_X1 S2_5_3 ( .A(ab_5__3_), .B(CARRYB_4__3_), .CI(SUMB_4__4_), .CO(
        CARRYB_5__3_), .S(SUMB_5__3_) );
  FA_X1 S2_5_4 ( .A(ab_5__4_), .B(CARRYB_4__4_), .CI(SUMB_4__5_), .CO(
        CARRYB_5__4_), .S(SUMB_5__4_) );
  FA_X1 S2_5_5 ( .A(ab_5__5_), .B(CARRYB_4__5_), .CI(SUMB_4__6_), .CO(
        CARRYB_5__5_), .S(SUMB_5__5_) );
  FA_X1 S3_5_6 ( .A(ab_5__6_), .B(CARRYB_4__6_), .CI(ab_4__7_), .CO(
        CARRYB_5__6_), .S(SUMB_5__6_) );
  FA_X1 S1_4_0 ( .A(ab_4__0_), .B(CARRYB_3__0_), .CI(SUMB_3__1_), .CO(
        CARRYB_4__0_), .S(A1_2_) );
  FA_X1 S2_4_1 ( .A(ab_4__1_), .B(CARRYB_3__1_), .CI(SUMB_3__2_), .CO(
        CARRYB_4__1_), .S(SUMB_4__1_) );
  FA_X1 S2_4_2 ( .A(ab_4__2_), .B(CARRYB_3__2_), .CI(SUMB_3__3_), .CO(
        CARRYB_4__2_), .S(SUMB_4__2_) );
  FA_X1 S2_4_3 ( .A(ab_4__3_), .B(CARRYB_3__3_), .CI(SUMB_3__4_), .CO(
        CARRYB_4__3_), .S(SUMB_4__3_) );
  FA_X1 S2_4_4 ( .A(ab_4__4_), .B(CARRYB_3__4_), .CI(SUMB_3__5_), .CO(
        CARRYB_4__4_), .S(SUMB_4__4_) );
  FA_X1 S2_4_5 ( .A(ab_4__5_), .B(CARRYB_3__5_), .CI(SUMB_3__6_), .CO(
        CARRYB_4__5_), .S(SUMB_4__5_) );
  FA_X1 S3_4_6 ( .A(ab_4__6_), .B(CARRYB_3__6_), .CI(ab_3__7_), .CO(
        CARRYB_4__6_), .S(SUMB_4__6_) );
  FA_X1 S1_3_0 ( .A(ab_3__0_), .B(CARRYB_2__0_), .CI(SUMB_2__1_), .CO(
        CARRYB_3__0_), .S(A1_1_) );
  FA_X1 S2_3_1 ( .A(ab_3__1_), .B(CARRYB_2__1_), .CI(SUMB_2__2_), .CO(
        CARRYB_3__1_), .S(SUMB_3__1_) );
  FA_X1 S2_3_2 ( .A(ab_3__2_), .B(CARRYB_2__2_), .CI(SUMB_2__3_), .CO(
        CARRYB_3__2_), .S(SUMB_3__2_) );
  FA_X1 S2_3_3 ( .A(ab_3__3_), .B(CARRYB_2__3_), .CI(SUMB_2__4_), .CO(
        CARRYB_3__3_), .S(SUMB_3__3_) );
  FA_X1 S2_3_4 ( .A(ab_3__4_), .B(CARRYB_2__4_), .CI(SUMB_2__5_), .CO(
        CARRYB_3__4_), .S(SUMB_3__4_) );
  FA_X1 S2_3_5 ( .A(ab_3__5_), .B(CARRYB_2__5_), .CI(SUMB_2__6_), .CO(
        CARRYB_3__5_), .S(SUMB_3__5_) );
  FA_X1 S3_3_6 ( .A(ab_3__6_), .B(CARRYB_2__6_), .CI(ab_2__7_), .CO(
        CARRYB_3__6_), .S(SUMB_3__6_) );
  FA_X1 S1_2_0 ( .A(ab_2__0_), .B(CARRYB_1__0_), .CI(SUMB_1__1_), .CO(
        CARRYB_2__0_), .S(A1_0_) );
  FA_X1 S2_2_1 ( .A(ab_2__1_), .B(CARRYB_1__1_), .CI(SUMB_1__2_), .CO(
        CARRYB_2__1_), .S(SUMB_2__1_) );
  FA_X1 S2_2_2 ( .A(ab_2__2_), .B(CARRYB_1__2_), .CI(SUMB_1__3_), .CO(
        CARRYB_2__2_), .S(SUMB_2__2_) );
  FA_X1 S2_2_3 ( .A(ab_2__3_), .B(CARRYB_1__3_), .CI(SUMB_1__4_), .CO(
        CARRYB_2__3_), .S(SUMB_2__3_) );
  FA_X1 S2_2_4 ( .A(ab_2__4_), .B(CARRYB_1__4_), .CI(SUMB_1__5_), .CO(
        CARRYB_2__4_), .S(SUMB_2__4_) );
  FA_X1 S2_2_5 ( .A(ab_2__5_), .B(CARRYB_1__5_), .CI(SUMB_1__6_), .CO(
        CARRYB_2__5_), .S(SUMB_2__5_) );
  FA_X1 S3_2_6 ( .A(ab_2__6_), .B(CARRYB_1__6_), .CI(ab_1__7_), .CO(
        CARRYB_2__6_), .S(SUMB_2__6_) );
  MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_2_DW01_add_1 FS_1 ( .A({1'b0, A1_12_, 
        A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, SUMB_7__0_, A1_4_, A1_3_, 
        A1_2_, A1_1_, A1_0_}), .B({A2_13_, A2_12_, A2_11_, A2_10_, A2_9_, 
        A2_8_, A2_7_, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM(PRODUCT[15:2]) );
  INV_X1 U2 ( .I(ab_0__6_), .ZN(n16) );
  INV_X1 U3 ( .I(ab_0__7_), .ZN(n18) );
  INV_X1 U4 ( .I(ab_1__5_), .ZN(n15) );
  INV_X1 U5 ( .I(ab_1__6_), .ZN(n17) );
  AND2_X1 U6 ( .A1(SUMB_7__1_), .A2(CARRYB_7__0_), .Z(A2_7_) );
  AND2_X1 U7 ( .A1(SUMB_7__2_), .A2(CARRYB_7__1_), .Z(A2_8_) );
  INV_X1 U8 ( .I(ab_0__5_), .ZN(n14) );
  INV_X1 U9 ( .I(ab_0__4_), .ZN(n12) );
  INV_X1 U10 ( .I(ab_1__4_), .ZN(n13) );
  INV_X1 U11 ( .I(ab_1__3_), .ZN(n11) );
  INV_X1 U12 ( .I(ab_0__3_), .ZN(n10) );
  INV_X1 U13 ( .I(ab_0__2_), .ZN(n8) );
  INV_X1 U14 ( .I(ab_1__2_), .ZN(n9) );
  INV_X1 U15 ( .I(ab_1__1_), .ZN(n7) );
  AND2_X1 U16 ( .A1(SUMB_7__3_), .A2(CARRYB_7__2_), .Z(A2_9_) );
  INV_X1 U17 ( .I(ab_0__1_), .ZN(n6) );
  INV_X1 U18 ( .I(ab_1__0_), .ZN(n5) );
  AND2_X1 U19 ( .A1(SUMB_7__4_), .A2(CARRYB_7__3_), .Z(A2_10_) );
  AND2_X1 U20 ( .A1(SUMB_7__5_), .A2(CARRYB_7__4_), .Z(A2_11_) );
  AND2_X1 U21 ( .A1(SUMB_7__6_), .A2(CARRYB_7__5_), .Z(A2_12_) );
  INV_X1 U22 ( .I(CARRYB_7__6_), .ZN(n4) );
  INV_X1 U23 ( .I(ab_7__7_), .ZN(n3) );
  NOR2_X1 U24 ( .A1(n15), .A2(n16), .ZN(CARRYB_1__5_) );
  NOR2_X1 U25 ( .A1(n17), .A2(n18), .ZN(CARRYB_1__6_) );
  NOR2_X1 U26 ( .A1(n13), .A2(n14), .ZN(CARRYB_1__4_) );
  NOR2_X1 U27 ( .A1(n11), .A2(n12), .ZN(CARRYB_1__3_) );
  NOR2_X1 U28 ( .A1(n9), .A2(n10), .ZN(CARRYB_1__2_) );
  NOR2_X1 U29 ( .A1(n7), .A2(n8), .ZN(CARRYB_1__1_) );
  NOR2_X1 U30 ( .A1(n5), .A2(n6), .ZN(CARRYB_1__0_) );
  INV_X1 U31 ( .I(B[7]), .ZN(n19) );
  INV_X1 U32 ( .I(A[0]), .ZN(n34) );
  NOR2_X1 U33 ( .A1(n3), .A2(n4), .ZN(A2_13_) );
  INV_X1 U34 ( .I(B[6]), .ZN(n20) );
  INV_X1 U35 ( .I(A[1]), .ZN(n33) );
  INV_X1 U36 ( .I(B[5]), .ZN(n21) );
  INV_X1 U37 ( .I(B[4]), .ZN(n22) );
  INV_X1 U38 ( .I(A[2]), .ZN(n32) );
  INV_X1 U39 ( .I(B[3]), .ZN(n23) );
  INV_X1 U40 ( .I(B[2]), .ZN(n24) );
  INV_X1 U41 ( .I(B[1]), .ZN(n25) );
  INV_X1 U42 ( .I(A[3]), .ZN(n31) );
  INV_X1 U43 ( .I(B[0]), .ZN(n26) );
  INV_X1 U44 ( .I(A[4]), .ZN(n30) );
  INV_X1 U45 ( .I(A[5]), .ZN(n29) );
  INV_X1 U46 ( .I(A[6]), .ZN(n28) );
  INV_X1 U47 ( .I(A[7]), .ZN(n27) );
  XOR2_X1 U48 ( .A1(CARRYB_7__0_), .A2(SUMB_7__1_), .Z(A1_6_) );
  XOR2_X1 U49 ( .A1(CARRYB_7__1_), .A2(SUMB_7__2_), .Z(A1_7_) );
  XOR2_X1 U50 ( .A1(CARRYB_7__2_), .A2(SUMB_7__3_), .Z(A1_8_) );
  XOR2_X1 U51 ( .A1(CARRYB_7__3_), .A2(SUMB_7__4_), .Z(A1_9_) );
  XOR2_X1 U52 ( .A1(CARRYB_7__4_), .A2(SUMB_7__5_), .Z(A1_10_) );
  XOR2_X1 U53 ( .A1(CARRYB_7__5_), .A2(SUMB_7__6_), .Z(A1_11_) );
  XOR2_X1 U54 ( .A1(CARRYB_7__6_), .A2(ab_7__7_), .Z(A1_12_) );
  XOR2_X1 U55 ( .A1(ab_1__0_), .A2(ab_0__1_), .Z(PRODUCT[1]) );
  XOR2_X1 U56 ( .A1(ab_1__1_), .A2(ab_0__2_), .Z(SUMB_1__1_) );
  XOR2_X1 U57 ( .A1(ab_1__2_), .A2(ab_0__3_), .Z(SUMB_1__2_) );
  XOR2_X1 U58 ( .A1(ab_1__3_), .A2(ab_0__4_), .Z(SUMB_1__3_) );
  XOR2_X1 U59 ( .A1(ab_1__4_), .A2(ab_0__5_), .Z(SUMB_1__4_) );
  XOR2_X1 U60 ( .A1(ab_1__5_), .A2(ab_0__6_), .Z(SUMB_1__5_) );
  XOR2_X1 U61 ( .A1(ab_1__6_), .A2(ab_0__7_), .Z(SUMB_1__6_) );
  NOR2_X1 U63 ( .A1(n27), .A2(n19), .ZN(ab_7__7_) );
  NOR2_X1 U64 ( .A1(n27), .A2(n20), .ZN(ab_7__6_) );
  NOR2_X1 U65 ( .A1(n27), .A2(n21), .ZN(ab_7__5_) );
  NOR2_X1 U66 ( .A1(n27), .A2(n22), .ZN(ab_7__4_) );
  NOR2_X1 U67 ( .A1(n27), .A2(n23), .ZN(ab_7__3_) );
  NOR2_X1 U68 ( .A1(n27), .A2(n24), .ZN(ab_7__2_) );
  NOR2_X1 U69 ( .A1(n27), .A2(n25), .ZN(ab_7__1_) );
  NOR2_X1 U70 ( .A1(n27), .A2(n26), .ZN(ab_7__0_) );
  NOR2_X1 U71 ( .A1(n19), .A2(n28), .ZN(ab_6__7_) );
  NOR2_X1 U72 ( .A1(n20), .A2(n28), .ZN(ab_6__6_) );
  NOR2_X1 U73 ( .A1(n21), .A2(n28), .ZN(ab_6__5_) );
  NOR2_X1 U74 ( .A1(n22), .A2(n28), .ZN(ab_6__4_) );
  NOR2_X1 U75 ( .A1(n23), .A2(n28), .ZN(ab_6__3_) );
  NOR2_X1 U76 ( .A1(n24), .A2(n28), .ZN(ab_6__2_) );
  NOR2_X1 U77 ( .A1(n25), .A2(n28), .ZN(ab_6__1_) );
  NOR2_X1 U78 ( .A1(n26), .A2(n28), .ZN(ab_6__0_) );
  NOR2_X1 U79 ( .A1(n19), .A2(n29), .ZN(ab_5__7_) );
  NOR2_X1 U80 ( .A1(n20), .A2(n29), .ZN(ab_5__6_) );
  NOR2_X1 U81 ( .A1(n21), .A2(n29), .ZN(ab_5__5_) );
  NOR2_X1 U82 ( .A1(n22), .A2(n29), .ZN(ab_5__4_) );
  NOR2_X1 U83 ( .A1(n23), .A2(n29), .ZN(ab_5__3_) );
  NOR2_X1 U84 ( .A1(n24), .A2(n29), .ZN(ab_5__2_) );
  NOR2_X1 U85 ( .A1(n25), .A2(n29), .ZN(ab_5__1_) );
  NOR2_X1 U86 ( .A1(n26), .A2(n29), .ZN(ab_5__0_) );
  NOR2_X1 U87 ( .A1(n19), .A2(n30), .ZN(ab_4__7_) );
  NOR2_X1 U88 ( .A1(n20), .A2(n30), .ZN(ab_4__6_) );
  NOR2_X1 U89 ( .A1(n21), .A2(n30), .ZN(ab_4__5_) );
  NOR2_X1 U90 ( .A1(n22), .A2(n30), .ZN(ab_4__4_) );
  NOR2_X1 U91 ( .A1(n23), .A2(n30), .ZN(ab_4__3_) );
  NOR2_X1 U92 ( .A1(n24), .A2(n30), .ZN(ab_4__2_) );
  NOR2_X1 U93 ( .A1(n25), .A2(n30), .ZN(ab_4__1_) );
  NOR2_X1 U94 ( .A1(n26), .A2(n30), .ZN(ab_4__0_) );
  NOR2_X1 U95 ( .A1(n19), .A2(n31), .ZN(ab_3__7_) );
  NOR2_X1 U96 ( .A1(n20), .A2(n31), .ZN(ab_3__6_) );
  NOR2_X1 U97 ( .A1(n21), .A2(n31), .ZN(ab_3__5_) );
  NOR2_X1 U98 ( .A1(n22), .A2(n31), .ZN(ab_3__4_) );
  NOR2_X1 U99 ( .A1(n23), .A2(n31), .ZN(ab_3__3_) );
  NOR2_X1 U100 ( .A1(n24), .A2(n31), .ZN(ab_3__2_) );
  NOR2_X1 U101 ( .A1(n25), .A2(n31), .ZN(ab_3__1_) );
  NOR2_X1 U102 ( .A1(n26), .A2(n31), .ZN(ab_3__0_) );
  NOR2_X1 U103 ( .A1(n19), .A2(n32), .ZN(ab_2__7_) );
  NOR2_X1 U104 ( .A1(n20), .A2(n32), .ZN(ab_2__6_) );
  NOR2_X1 U105 ( .A1(n21), .A2(n32), .ZN(ab_2__5_) );
  NOR2_X1 U106 ( .A1(n22), .A2(n32), .ZN(ab_2__4_) );
  NOR2_X1 U107 ( .A1(n23), .A2(n32), .ZN(ab_2__3_) );
  NOR2_X1 U108 ( .A1(n24), .A2(n32), .ZN(ab_2__2_) );
  NOR2_X1 U109 ( .A1(n25), .A2(n32), .ZN(ab_2__1_) );
  NOR2_X1 U110 ( .A1(n26), .A2(n32), .ZN(ab_2__0_) );
  NOR2_X1 U111 ( .A1(n19), .A2(n33), .ZN(ab_1__7_) );
  NOR2_X1 U112 ( .A1(n20), .A2(n33), .ZN(ab_1__6_) );
  NOR2_X1 U113 ( .A1(n21), .A2(n33), .ZN(ab_1__5_) );
  NOR2_X1 U114 ( .A1(n22), .A2(n33), .ZN(ab_1__4_) );
  NOR2_X1 U115 ( .A1(n23), .A2(n33), .ZN(ab_1__3_) );
  NOR2_X1 U116 ( .A1(n24), .A2(n33), .ZN(ab_1__2_) );
  NOR2_X1 U117 ( .A1(n25), .A2(n33), .ZN(ab_1__1_) );
  NOR2_X1 U118 ( .A1(n26), .A2(n33), .ZN(ab_1__0_) );
  NOR2_X1 U119 ( .A1(n19), .A2(n34), .ZN(ab_0__7_) );
  NOR2_X1 U120 ( .A1(n20), .A2(n34), .ZN(ab_0__6_) );
  NOR2_X1 U121 ( .A1(n21), .A2(n34), .ZN(ab_0__5_) );
  NOR2_X1 U122 ( .A1(n22), .A2(n34), .ZN(ab_0__4_) );
  NOR2_X1 U123 ( .A1(n23), .A2(n34), .ZN(ab_0__3_) );
  NOR2_X1 U124 ( .A1(n24), .A2(n34), .ZN(ab_0__2_) );
  NOR2_X1 U125 ( .A1(n25), .A2(n34), .ZN(ab_0__1_) );
  NOR2_X1 U126 ( .A1(n26), .A2(n34), .ZN(PRODUCT[0]) );
endmodule


module MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_2_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [15:1] carry;

  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .S(SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(carry[1]) );
  INV_X1 U2 ( .I(A[0]), .ZN(n1) );
  INV_X1 U3 ( .I(B[0]), .ZN(n2) );
  XOR2_X1 U4 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_2 ( a, b, a_fwd, b_fwd, out, clk, 
        clear );
  input [0:7] a;
  input [0:7] b;
  output [0:7] a_fwd;
  output [0:7] b_fwd;
  output [0:15] out;
  input clk, clear;
  wire   mult_out_9_, mult_out_8_, mult_out_7_, mult_out_6_, mult_out_5_,
         mult_out_4_, mult_out_3_, mult_out_2_, mult_out_1_, mult_out_15_,
         mult_out_14_, mult_out_13_, mult_out_12_, mult_out_11_, mult_out_10_,
         mult_out_0_, n1;
  wire   [0:15] adder_out;

  MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_2_DW02_mult_0 mult_23 ( .A(a), .B(b), .TC(
        1'b0), .PRODUCT({mult_out_0_, mult_out_1_, mult_out_2_, mult_out_3_, 
        mult_out_4_, mult_out_5_, mult_out_6_, mult_out_7_, mult_out_8_, 
        mult_out_9_, mult_out_10_, mult_out_11_, mult_out_12_, mult_out_13_, 
        mult_out_14_, mult_out_15_}) );
  MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_2_DW01_add_0 add_24 ( .A({mult_out_0_, 
        mult_out_1_, mult_out_2_, mult_out_3_, mult_out_4_, mult_out_5_, 
        mult_out_6_, mult_out_7_, mult_out_8_, mult_out_9_, mult_out_10_, 
        mult_out_11_, mult_out_12_, mult_out_13_, mult_out_14_, mult_out_15_}), 
        .B(out), .CI(1'b0), .SUM(adder_out) );
  DFFRNQ_X1 b_fwd_reg_7_ ( .D(b[7]), .CLK(clk), .RN(n1), .Q(b_fwd[7]) );
  DFFRNQ_X1 b_fwd_reg_6_ ( .D(b[6]), .CLK(clk), .RN(n1), .Q(b_fwd[6]) );
  DFFRNQ_X1 b_fwd_reg_5_ ( .D(b[5]), .CLK(clk), .RN(n1), .Q(b_fwd[5]) );
  DFFRNQ_X1 b_fwd_reg_4_ ( .D(b[4]), .CLK(clk), .RN(n1), .Q(b_fwd[4]) );
  DFFRNQ_X1 b_fwd_reg_3_ ( .D(b[3]), .CLK(clk), .RN(n1), .Q(b_fwd[3]) );
  DFFRNQ_X1 b_fwd_reg_2_ ( .D(b[2]), .CLK(clk), .RN(n1), .Q(b_fwd[2]) );
  DFFRNQ_X1 b_fwd_reg_1_ ( .D(b[1]), .CLK(clk), .RN(n1), .Q(b_fwd[1]) );
  DFFRNQ_X1 b_fwd_reg_0_ ( .D(b[0]), .CLK(clk), .RN(n1), .Q(b_fwd[0]) );
  DFFRNQ_X1 a_fwd_reg_7_ ( .D(a[7]), .CLK(clk), .RN(n1), .Q(a_fwd[7]) );
  DFFRNQ_X1 a_fwd_reg_6_ ( .D(a[6]), .CLK(clk), .RN(n1), .Q(a_fwd[6]) );
  DFFRNQ_X1 a_fwd_reg_5_ ( .D(a[5]), .CLK(clk), .RN(n1), .Q(a_fwd[5]) );
  DFFRNQ_X1 a_fwd_reg_4_ ( .D(a[4]), .CLK(clk), .RN(n1), .Q(a_fwd[4]) );
  DFFRNQ_X1 a_fwd_reg_3_ ( .D(a[3]), .CLK(clk), .RN(n1), .Q(a_fwd[3]) );
  DFFRNQ_X1 a_fwd_reg_2_ ( .D(a[2]), .CLK(clk), .RN(n1), .Q(a_fwd[2]) );
  DFFRNQ_X1 a_fwd_reg_1_ ( .D(a[1]), .CLK(clk), .RN(n1), .Q(a_fwd[1]) );
  DFFRNQ_X1 a_fwd_reg_0_ ( .D(a[0]), .CLK(clk), .RN(n1), .Q(a_fwd[0]) );
  DFFRNQ_X1 out_reg_15_ ( .D(adder_out[15]), .CLK(clk), .RN(n1), .Q(out[15])
         );
  DFFRNQ_X1 out_reg_14_ ( .D(adder_out[14]), .CLK(clk), .RN(n1), .Q(out[14])
         );
  DFFRNQ_X1 out_reg_13_ ( .D(adder_out[13]), .CLK(clk), .RN(n1), .Q(out[13])
         );
  DFFRNQ_X1 out_reg_12_ ( .D(adder_out[12]), .CLK(clk), .RN(n1), .Q(out[12])
         );
  DFFRNQ_X1 out_reg_11_ ( .D(adder_out[11]), .CLK(clk), .RN(n1), .Q(out[11])
         );
  DFFRNQ_X1 out_reg_10_ ( .D(adder_out[10]), .CLK(clk), .RN(n1), .Q(out[10])
         );
  DFFRNQ_X1 out_reg_9_ ( .D(adder_out[9]), .CLK(clk), .RN(n1), .Q(out[9]) );
  DFFRNQ_X1 out_reg_8_ ( .D(adder_out[8]), .CLK(clk), .RN(n1), .Q(out[8]) );
  DFFRNQ_X1 out_reg_7_ ( .D(adder_out[7]), .CLK(clk), .RN(n1), .Q(out[7]) );
  DFFRNQ_X1 out_reg_6_ ( .D(adder_out[6]), .CLK(clk), .RN(n1), .Q(out[6]) );
  DFFRNQ_X1 out_reg_5_ ( .D(adder_out[5]), .CLK(clk), .RN(n1), .Q(out[5]) );
  DFFRNQ_X1 out_reg_4_ ( .D(adder_out[4]), .CLK(clk), .RN(n1), .Q(out[4]) );
  DFFRNQ_X1 out_reg_3_ ( .D(adder_out[3]), .CLK(clk), .RN(n1), .Q(out[3]) );
  DFFRNQ_X1 out_reg_2_ ( .D(adder_out[2]), .CLK(clk), .RN(n1), .Q(out[2]) );
  DFFRNQ_X1 out_reg_1_ ( .D(adder_out[1]), .CLK(clk), .RN(n1), .Q(out[1]) );
  DFFRNQ_X1 out_reg_0_ ( .D(adder_out[0]), .CLK(clk), .RN(n1), .Q(out[0]) );
  INV_X1 U3 ( .I(clear), .ZN(n1) );
endmodule


module MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_1_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  assign SUM[6] = A[6];
  assign SUM[5] = A[5];
  assign SUM[4] = A[4];
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = A[0];

  INV_X1 U2 ( .I(n9), .ZN(n4) );
  INV_X1 U3 ( .I(n21), .ZN(n2) );
  NAND2_X1 U4 ( .A1(A[7]), .A2(B[7]), .ZN(n11) );
  INV_X1 U5 ( .I(n13), .ZN(n5) );
  INV_X1 U6 ( .I(n23), .ZN(n3) );
  INV_X1 U7 ( .I(n15), .ZN(n1) );
  XOR2_X1 U8 ( .A1(n6), .A2(n7), .Z(SUM[9]) );
  NOR2_X1 U9 ( .A1(n8), .A2(n9), .ZN(n7) );
  XOR2_X1 U10 ( .A1(n10), .A2(n11), .Z(SUM[8]) );
  NAND2_X1 U11 ( .A1(n5), .A2(n12), .ZN(n10) );
  XOR2_X1 U12 ( .A1(B[7]), .A2(A[7]), .Z(SUM[7]) );
  XOR2_X1 U13 ( .A1(n14), .A2(B[13]), .Z(SUM[13]) );
  OAI21_X1 U14 ( .A1(n15), .A2(n16), .B(n17), .ZN(n14) );
  XOR2_X1 U15 ( .A1(n18), .A2(n16), .Z(SUM[12]) );
  AOI21_X1 U16 ( .A1(n2), .A2(n19), .B(n20), .ZN(n16) );
  NAND2_X1 U17 ( .A1(n1), .A2(n17), .ZN(n18) );
  NAND2_X1 U18 ( .A1(B[12]), .A2(A[12]), .ZN(n17) );
  NOR2_X1 U19 ( .A1(B[12]), .A2(A[12]), .ZN(n15) );
  XOR2_X1 U20 ( .A1(n19), .A2(n22), .Z(SUM[11]) );
  NOR2_X1 U21 ( .A1(n20), .A2(n21), .ZN(n22) );
  NOR2_X1 U22 ( .A1(B[11]), .A2(A[11]), .ZN(n21) );
  AND2_X1 U23 ( .A1(B[11]), .A2(A[11]), .Z(n20) );
  OAI21_X1 U24 ( .A1(n23), .A2(n24), .B(n25), .ZN(n19) );
  XOR2_X1 U25 ( .A1(n26), .A2(n24), .Z(SUM[10]) );
  AOI21_X1 U26 ( .A1(n6), .A2(n4), .B(n8), .ZN(n24) );
  AND2_X1 U27 ( .A1(B[9]), .A2(A[9]), .Z(n8) );
  NOR2_X1 U28 ( .A1(B[9]), .A2(A[9]), .ZN(n9) );
  OAI21_X1 U29 ( .A1(n11), .A2(n13), .B(n12), .ZN(n6) );
  NAND2_X1 U30 ( .A1(B[8]), .A2(A[8]), .ZN(n12) );
  NOR2_X1 U31 ( .A1(B[8]), .A2(A[8]), .ZN(n13) );
  NAND2_X1 U32 ( .A1(n3), .A2(n25), .ZN(n26) );
  NAND2_X1 U33 ( .A1(B[10]), .A2(A[10]), .ZN(n25) );
  NOR2_X1 U34 ( .A1(B[10]), .A2(A[10]), .ZN(n23) );
endmodule


module MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_1_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   ab_7__7_, ab_7__6_, ab_7__5_, ab_7__4_, ab_7__3_, ab_7__2_, ab_7__1_,
         ab_7__0_, ab_6__7_, ab_6__6_, ab_6__5_, ab_6__4_, ab_6__3_, ab_6__2_,
         ab_6__1_, ab_6__0_, ab_5__7_, ab_5__6_, ab_5__5_, ab_5__4_, ab_5__3_,
         ab_5__2_, ab_5__1_, ab_5__0_, ab_4__7_, ab_4__6_, ab_4__5_, ab_4__4_,
         ab_4__3_, ab_4__2_, ab_4__1_, ab_4__0_, ab_3__7_, ab_3__6_, ab_3__5_,
         ab_3__4_, ab_3__3_, ab_3__2_, ab_3__1_, ab_3__0_, ab_2__7_, ab_2__6_,
         ab_2__5_, ab_2__4_, ab_2__3_, ab_2__2_, ab_2__1_, ab_2__0_, ab_1__7_,
         ab_1__6_, ab_1__5_, ab_1__4_, ab_1__3_, ab_1__2_, ab_1__1_, ab_1__0_,
         ab_0__7_, ab_0__6_, ab_0__5_, ab_0__4_, ab_0__3_, ab_0__2_, ab_0__1_,
         CARRYB_7__6_, CARRYB_7__5_, CARRYB_7__4_, CARRYB_7__3_, CARRYB_7__2_,
         CARRYB_7__1_, CARRYB_7__0_, CARRYB_6__6_, CARRYB_6__5_, CARRYB_6__4_,
         CARRYB_6__3_, CARRYB_6__2_, CARRYB_6__1_, CARRYB_6__0_, CARRYB_5__6_,
         CARRYB_5__5_, CARRYB_5__4_, CARRYB_5__3_, CARRYB_5__2_, CARRYB_5__1_,
         CARRYB_5__0_, CARRYB_4__6_, CARRYB_4__5_, CARRYB_4__4_, CARRYB_4__3_,
         CARRYB_4__2_, CARRYB_4__1_, CARRYB_4__0_, CARRYB_3__6_, CARRYB_3__5_,
         CARRYB_3__4_, CARRYB_3__3_, CARRYB_3__2_, CARRYB_3__1_, CARRYB_3__0_,
         CARRYB_2__6_, CARRYB_2__5_, CARRYB_2__4_, CARRYB_2__3_, CARRYB_2__2_,
         CARRYB_2__1_, CARRYB_2__0_, CARRYB_1__6_, CARRYB_1__5_, CARRYB_1__4_,
         CARRYB_1__3_, CARRYB_1__2_, CARRYB_1__1_, CARRYB_1__0_, SUMB_7__6_,
         SUMB_7__5_, SUMB_7__4_, SUMB_7__3_, SUMB_7__2_, SUMB_7__1_,
         SUMB_7__0_, SUMB_6__6_, SUMB_6__5_, SUMB_6__4_, SUMB_6__3_,
         SUMB_6__2_, SUMB_6__1_, SUMB_5__6_, SUMB_5__5_, SUMB_5__4_,
         SUMB_5__3_, SUMB_5__2_, SUMB_5__1_, SUMB_4__6_, SUMB_4__5_,
         SUMB_4__4_, SUMB_4__3_, SUMB_4__2_, SUMB_4__1_, SUMB_3__6_,
         SUMB_3__5_, SUMB_3__4_, SUMB_3__3_, SUMB_3__2_, SUMB_3__1_,
         SUMB_2__6_, SUMB_2__5_, SUMB_2__4_, SUMB_2__3_, SUMB_2__2_,
         SUMB_2__1_, SUMB_1__6_, SUMB_1__5_, SUMB_1__4_, SUMB_1__3_,
         SUMB_1__2_, SUMB_1__1_, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_,
         A1_6_, A1_4_, A1_3_, A1_2_, A1_1_, A1_0_, A2_13_, A2_12_, A2_11_,
         A2_10_, A2_9_, A2_8_, A2_7_, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34;

  FA_X1 S4_0 ( .A(ab_7__0_), .B(CARRYB_6__0_), .CI(SUMB_6__1_), .CO(
        CARRYB_7__0_), .S(SUMB_7__0_) );
  FA_X1 S4_1 ( .A(ab_7__1_), .B(CARRYB_6__1_), .CI(SUMB_6__2_), .CO(
        CARRYB_7__1_), .S(SUMB_7__1_) );
  FA_X1 S4_2 ( .A(ab_7__2_), .B(CARRYB_6__2_), .CI(SUMB_6__3_), .CO(
        CARRYB_7__2_), .S(SUMB_7__2_) );
  FA_X1 S4_3 ( .A(ab_7__3_), .B(CARRYB_6__3_), .CI(SUMB_6__4_), .CO(
        CARRYB_7__3_), .S(SUMB_7__3_) );
  FA_X1 S4_4 ( .A(ab_7__4_), .B(CARRYB_6__4_), .CI(SUMB_6__5_), .CO(
        CARRYB_7__4_), .S(SUMB_7__4_) );
  FA_X1 S4_5 ( .A(ab_7__5_), .B(CARRYB_6__5_), .CI(SUMB_6__6_), .CO(
        CARRYB_7__5_), .S(SUMB_7__5_) );
  FA_X1 S5_6 ( .A(ab_7__6_), .B(CARRYB_6__6_), .CI(ab_6__7_), .CO(CARRYB_7__6_), .S(SUMB_7__6_) );
  FA_X1 S1_6_0 ( .A(ab_6__0_), .B(CARRYB_5__0_), .CI(SUMB_5__1_), .CO(
        CARRYB_6__0_), .S(A1_4_) );
  FA_X1 S2_6_1 ( .A(ab_6__1_), .B(CARRYB_5__1_), .CI(SUMB_5__2_), .CO(
        CARRYB_6__1_), .S(SUMB_6__1_) );
  FA_X1 S2_6_2 ( .A(ab_6__2_), .B(CARRYB_5__2_), .CI(SUMB_5__3_), .CO(
        CARRYB_6__2_), .S(SUMB_6__2_) );
  FA_X1 S2_6_3 ( .A(ab_6__3_), .B(CARRYB_5__3_), .CI(SUMB_5__4_), .CO(
        CARRYB_6__3_), .S(SUMB_6__3_) );
  FA_X1 S2_6_4 ( .A(ab_6__4_), .B(CARRYB_5__4_), .CI(SUMB_5__5_), .CO(
        CARRYB_6__4_), .S(SUMB_6__4_) );
  FA_X1 S2_6_5 ( .A(ab_6__5_), .B(CARRYB_5__5_), .CI(SUMB_5__6_), .CO(
        CARRYB_6__5_), .S(SUMB_6__5_) );
  FA_X1 S3_6_6 ( .A(ab_6__6_), .B(CARRYB_5__6_), .CI(ab_5__7_), .CO(
        CARRYB_6__6_), .S(SUMB_6__6_) );
  FA_X1 S1_5_0 ( .A(ab_5__0_), .B(CARRYB_4__0_), .CI(SUMB_4__1_), .CO(
        CARRYB_5__0_), .S(A1_3_) );
  FA_X1 S2_5_1 ( .A(ab_5__1_), .B(CARRYB_4__1_), .CI(SUMB_4__2_), .CO(
        CARRYB_5__1_), .S(SUMB_5__1_) );
  FA_X1 S2_5_2 ( .A(ab_5__2_), .B(CARRYB_4__2_), .CI(SUMB_4__3_), .CO(
        CARRYB_5__2_), .S(SUMB_5__2_) );
  FA_X1 S2_5_3 ( .A(ab_5__3_), .B(CARRYB_4__3_), .CI(SUMB_4__4_), .CO(
        CARRYB_5__3_), .S(SUMB_5__3_) );
  FA_X1 S2_5_4 ( .A(ab_5__4_), .B(CARRYB_4__4_), .CI(SUMB_4__5_), .CO(
        CARRYB_5__4_), .S(SUMB_5__4_) );
  FA_X1 S2_5_5 ( .A(ab_5__5_), .B(CARRYB_4__5_), .CI(SUMB_4__6_), .CO(
        CARRYB_5__5_), .S(SUMB_5__5_) );
  FA_X1 S3_5_6 ( .A(ab_5__6_), .B(CARRYB_4__6_), .CI(ab_4__7_), .CO(
        CARRYB_5__6_), .S(SUMB_5__6_) );
  FA_X1 S1_4_0 ( .A(ab_4__0_), .B(CARRYB_3__0_), .CI(SUMB_3__1_), .CO(
        CARRYB_4__0_), .S(A1_2_) );
  FA_X1 S2_4_1 ( .A(ab_4__1_), .B(CARRYB_3__1_), .CI(SUMB_3__2_), .CO(
        CARRYB_4__1_), .S(SUMB_4__1_) );
  FA_X1 S2_4_2 ( .A(ab_4__2_), .B(CARRYB_3__2_), .CI(SUMB_3__3_), .CO(
        CARRYB_4__2_), .S(SUMB_4__2_) );
  FA_X1 S2_4_3 ( .A(ab_4__3_), .B(CARRYB_3__3_), .CI(SUMB_3__4_), .CO(
        CARRYB_4__3_), .S(SUMB_4__3_) );
  FA_X1 S2_4_4 ( .A(ab_4__4_), .B(CARRYB_3__4_), .CI(SUMB_3__5_), .CO(
        CARRYB_4__4_), .S(SUMB_4__4_) );
  FA_X1 S2_4_5 ( .A(ab_4__5_), .B(CARRYB_3__5_), .CI(SUMB_3__6_), .CO(
        CARRYB_4__5_), .S(SUMB_4__5_) );
  FA_X1 S3_4_6 ( .A(ab_4__6_), .B(CARRYB_3__6_), .CI(ab_3__7_), .CO(
        CARRYB_4__6_), .S(SUMB_4__6_) );
  FA_X1 S1_3_0 ( .A(ab_3__0_), .B(CARRYB_2__0_), .CI(SUMB_2__1_), .CO(
        CARRYB_3__0_), .S(A1_1_) );
  FA_X1 S2_3_1 ( .A(ab_3__1_), .B(CARRYB_2__1_), .CI(SUMB_2__2_), .CO(
        CARRYB_3__1_), .S(SUMB_3__1_) );
  FA_X1 S2_3_2 ( .A(ab_3__2_), .B(CARRYB_2__2_), .CI(SUMB_2__3_), .CO(
        CARRYB_3__2_), .S(SUMB_3__2_) );
  FA_X1 S2_3_3 ( .A(ab_3__3_), .B(CARRYB_2__3_), .CI(SUMB_2__4_), .CO(
        CARRYB_3__3_), .S(SUMB_3__3_) );
  FA_X1 S2_3_4 ( .A(ab_3__4_), .B(CARRYB_2__4_), .CI(SUMB_2__5_), .CO(
        CARRYB_3__4_), .S(SUMB_3__4_) );
  FA_X1 S2_3_5 ( .A(ab_3__5_), .B(CARRYB_2__5_), .CI(SUMB_2__6_), .CO(
        CARRYB_3__5_), .S(SUMB_3__5_) );
  FA_X1 S3_3_6 ( .A(ab_3__6_), .B(CARRYB_2__6_), .CI(ab_2__7_), .CO(
        CARRYB_3__6_), .S(SUMB_3__6_) );
  FA_X1 S1_2_0 ( .A(ab_2__0_), .B(CARRYB_1__0_), .CI(SUMB_1__1_), .CO(
        CARRYB_2__0_), .S(A1_0_) );
  FA_X1 S2_2_1 ( .A(ab_2__1_), .B(CARRYB_1__1_), .CI(SUMB_1__2_), .CO(
        CARRYB_2__1_), .S(SUMB_2__1_) );
  FA_X1 S2_2_2 ( .A(ab_2__2_), .B(CARRYB_1__2_), .CI(SUMB_1__3_), .CO(
        CARRYB_2__2_), .S(SUMB_2__2_) );
  FA_X1 S2_2_3 ( .A(ab_2__3_), .B(CARRYB_1__3_), .CI(SUMB_1__4_), .CO(
        CARRYB_2__3_), .S(SUMB_2__3_) );
  FA_X1 S2_2_4 ( .A(ab_2__4_), .B(CARRYB_1__4_), .CI(SUMB_1__5_), .CO(
        CARRYB_2__4_), .S(SUMB_2__4_) );
  FA_X1 S2_2_5 ( .A(ab_2__5_), .B(CARRYB_1__5_), .CI(SUMB_1__6_), .CO(
        CARRYB_2__5_), .S(SUMB_2__5_) );
  FA_X1 S3_2_6 ( .A(ab_2__6_), .B(CARRYB_1__6_), .CI(ab_1__7_), .CO(
        CARRYB_2__6_), .S(SUMB_2__6_) );
  MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_1_DW01_add_1 FS_1 ( .A({1'b0, A1_12_, 
        A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, SUMB_7__0_, A1_4_, A1_3_, 
        A1_2_, A1_1_, A1_0_}), .B({A2_13_, A2_12_, A2_11_, A2_10_, A2_9_, 
        A2_8_, A2_7_, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM(PRODUCT[15:2]) );
  INV_X1 U2 ( .I(ab_0__6_), .ZN(n16) );
  INV_X1 U3 ( .I(ab_0__7_), .ZN(n18) );
  INV_X1 U4 ( .I(ab_1__5_), .ZN(n15) );
  INV_X1 U5 ( .I(ab_1__6_), .ZN(n17) );
  AND2_X1 U6 ( .A1(SUMB_7__1_), .A2(CARRYB_7__0_), .Z(A2_7_) );
  AND2_X1 U7 ( .A1(SUMB_7__2_), .A2(CARRYB_7__1_), .Z(A2_8_) );
  INV_X1 U8 ( .I(ab_0__5_), .ZN(n14) );
  INV_X1 U9 ( .I(ab_0__4_), .ZN(n12) );
  INV_X1 U10 ( .I(ab_1__4_), .ZN(n13) );
  INV_X1 U11 ( .I(ab_1__3_), .ZN(n11) );
  INV_X1 U12 ( .I(ab_0__3_), .ZN(n10) );
  INV_X1 U13 ( .I(ab_0__2_), .ZN(n8) );
  INV_X1 U14 ( .I(ab_1__2_), .ZN(n9) );
  INV_X1 U15 ( .I(ab_1__1_), .ZN(n7) );
  AND2_X1 U16 ( .A1(SUMB_7__3_), .A2(CARRYB_7__2_), .Z(A2_9_) );
  INV_X1 U17 ( .I(ab_0__1_), .ZN(n6) );
  INV_X1 U18 ( .I(ab_1__0_), .ZN(n5) );
  AND2_X1 U19 ( .A1(SUMB_7__4_), .A2(CARRYB_7__3_), .Z(A2_10_) );
  AND2_X1 U20 ( .A1(SUMB_7__5_), .A2(CARRYB_7__4_), .Z(A2_11_) );
  AND2_X1 U21 ( .A1(SUMB_7__6_), .A2(CARRYB_7__5_), .Z(A2_12_) );
  INV_X1 U22 ( .I(CARRYB_7__6_), .ZN(n4) );
  INV_X1 U23 ( .I(ab_7__7_), .ZN(n3) );
  NOR2_X1 U24 ( .A1(n15), .A2(n16), .ZN(CARRYB_1__5_) );
  NOR2_X1 U25 ( .A1(n17), .A2(n18), .ZN(CARRYB_1__6_) );
  NOR2_X1 U26 ( .A1(n13), .A2(n14), .ZN(CARRYB_1__4_) );
  NOR2_X1 U27 ( .A1(n11), .A2(n12), .ZN(CARRYB_1__3_) );
  NOR2_X1 U28 ( .A1(n9), .A2(n10), .ZN(CARRYB_1__2_) );
  NOR2_X1 U29 ( .A1(n7), .A2(n8), .ZN(CARRYB_1__1_) );
  NOR2_X1 U30 ( .A1(n5), .A2(n6), .ZN(CARRYB_1__0_) );
  INV_X1 U31 ( .I(B[7]), .ZN(n27) );
  INV_X1 U32 ( .I(A[0]), .ZN(n26) );
  NOR2_X1 U33 ( .A1(n3), .A2(n4), .ZN(A2_13_) );
  INV_X1 U34 ( .I(B[6]), .ZN(n28) );
  INV_X1 U35 ( .I(A[1]), .ZN(n25) );
  INV_X1 U36 ( .I(B[5]), .ZN(n29) );
  INV_X1 U37 ( .I(B[4]), .ZN(n30) );
  INV_X1 U38 ( .I(A[2]), .ZN(n24) );
  INV_X1 U39 ( .I(B[3]), .ZN(n31) );
  INV_X1 U40 ( .I(B[2]), .ZN(n32) );
  INV_X1 U41 ( .I(B[1]), .ZN(n33) );
  INV_X1 U42 ( .I(A[3]), .ZN(n23) );
  INV_X1 U43 ( .I(B[0]), .ZN(n34) );
  INV_X1 U44 ( .I(A[4]), .ZN(n22) );
  INV_X1 U45 ( .I(A[5]), .ZN(n21) );
  INV_X1 U46 ( .I(A[6]), .ZN(n20) );
  INV_X1 U47 ( .I(A[7]), .ZN(n19) );
  XOR2_X1 U48 ( .A1(CARRYB_7__0_), .A2(SUMB_7__1_), .Z(A1_6_) );
  XOR2_X1 U49 ( .A1(CARRYB_7__1_), .A2(SUMB_7__2_), .Z(A1_7_) );
  XOR2_X1 U50 ( .A1(CARRYB_7__2_), .A2(SUMB_7__3_), .Z(A1_8_) );
  XOR2_X1 U51 ( .A1(CARRYB_7__3_), .A2(SUMB_7__4_), .Z(A1_9_) );
  XOR2_X1 U52 ( .A1(CARRYB_7__4_), .A2(SUMB_7__5_), .Z(A1_10_) );
  XOR2_X1 U53 ( .A1(CARRYB_7__5_), .A2(SUMB_7__6_), .Z(A1_11_) );
  XOR2_X1 U54 ( .A1(CARRYB_7__6_), .A2(ab_7__7_), .Z(A1_12_) );
  XOR2_X1 U55 ( .A1(ab_1__0_), .A2(ab_0__1_), .Z(PRODUCT[1]) );
  XOR2_X1 U56 ( .A1(ab_1__1_), .A2(ab_0__2_), .Z(SUMB_1__1_) );
  XOR2_X1 U57 ( .A1(ab_1__2_), .A2(ab_0__3_), .Z(SUMB_1__2_) );
  XOR2_X1 U58 ( .A1(ab_1__3_), .A2(ab_0__4_), .Z(SUMB_1__3_) );
  XOR2_X1 U59 ( .A1(ab_1__4_), .A2(ab_0__5_), .Z(SUMB_1__4_) );
  XOR2_X1 U60 ( .A1(ab_1__5_), .A2(ab_0__6_), .Z(SUMB_1__5_) );
  XOR2_X1 U61 ( .A1(ab_1__6_), .A2(ab_0__7_), .Z(SUMB_1__6_) );
  NOR2_X1 U63 ( .A1(n19), .A2(n27), .ZN(ab_7__7_) );
  NOR2_X1 U64 ( .A1(n19), .A2(n28), .ZN(ab_7__6_) );
  NOR2_X1 U65 ( .A1(n19), .A2(n29), .ZN(ab_7__5_) );
  NOR2_X1 U66 ( .A1(n19), .A2(n30), .ZN(ab_7__4_) );
  NOR2_X1 U67 ( .A1(n19), .A2(n31), .ZN(ab_7__3_) );
  NOR2_X1 U68 ( .A1(n19), .A2(n32), .ZN(ab_7__2_) );
  NOR2_X1 U69 ( .A1(n19), .A2(n33), .ZN(ab_7__1_) );
  NOR2_X1 U70 ( .A1(n19), .A2(n34), .ZN(ab_7__0_) );
  NOR2_X1 U71 ( .A1(n27), .A2(n20), .ZN(ab_6__7_) );
  NOR2_X1 U72 ( .A1(n28), .A2(n20), .ZN(ab_6__6_) );
  NOR2_X1 U73 ( .A1(n29), .A2(n20), .ZN(ab_6__5_) );
  NOR2_X1 U74 ( .A1(n30), .A2(n20), .ZN(ab_6__4_) );
  NOR2_X1 U75 ( .A1(n31), .A2(n20), .ZN(ab_6__3_) );
  NOR2_X1 U76 ( .A1(n32), .A2(n20), .ZN(ab_6__2_) );
  NOR2_X1 U77 ( .A1(n33), .A2(n20), .ZN(ab_6__1_) );
  NOR2_X1 U78 ( .A1(n34), .A2(n20), .ZN(ab_6__0_) );
  NOR2_X1 U79 ( .A1(n27), .A2(n21), .ZN(ab_5__7_) );
  NOR2_X1 U80 ( .A1(n28), .A2(n21), .ZN(ab_5__6_) );
  NOR2_X1 U81 ( .A1(n29), .A2(n21), .ZN(ab_5__5_) );
  NOR2_X1 U82 ( .A1(n30), .A2(n21), .ZN(ab_5__4_) );
  NOR2_X1 U83 ( .A1(n31), .A2(n21), .ZN(ab_5__3_) );
  NOR2_X1 U84 ( .A1(n32), .A2(n21), .ZN(ab_5__2_) );
  NOR2_X1 U85 ( .A1(n33), .A2(n21), .ZN(ab_5__1_) );
  NOR2_X1 U86 ( .A1(n34), .A2(n21), .ZN(ab_5__0_) );
  NOR2_X1 U87 ( .A1(n27), .A2(n22), .ZN(ab_4__7_) );
  NOR2_X1 U88 ( .A1(n28), .A2(n22), .ZN(ab_4__6_) );
  NOR2_X1 U89 ( .A1(n29), .A2(n22), .ZN(ab_4__5_) );
  NOR2_X1 U90 ( .A1(n30), .A2(n22), .ZN(ab_4__4_) );
  NOR2_X1 U91 ( .A1(n31), .A2(n22), .ZN(ab_4__3_) );
  NOR2_X1 U92 ( .A1(n32), .A2(n22), .ZN(ab_4__2_) );
  NOR2_X1 U93 ( .A1(n33), .A2(n22), .ZN(ab_4__1_) );
  NOR2_X1 U94 ( .A1(n34), .A2(n22), .ZN(ab_4__0_) );
  NOR2_X1 U95 ( .A1(n27), .A2(n23), .ZN(ab_3__7_) );
  NOR2_X1 U96 ( .A1(n28), .A2(n23), .ZN(ab_3__6_) );
  NOR2_X1 U97 ( .A1(n29), .A2(n23), .ZN(ab_3__5_) );
  NOR2_X1 U98 ( .A1(n30), .A2(n23), .ZN(ab_3__4_) );
  NOR2_X1 U99 ( .A1(n31), .A2(n23), .ZN(ab_3__3_) );
  NOR2_X1 U100 ( .A1(n32), .A2(n23), .ZN(ab_3__2_) );
  NOR2_X1 U101 ( .A1(n33), .A2(n23), .ZN(ab_3__1_) );
  NOR2_X1 U102 ( .A1(n34), .A2(n23), .ZN(ab_3__0_) );
  NOR2_X1 U103 ( .A1(n27), .A2(n24), .ZN(ab_2__7_) );
  NOR2_X1 U104 ( .A1(n28), .A2(n24), .ZN(ab_2__6_) );
  NOR2_X1 U105 ( .A1(n29), .A2(n24), .ZN(ab_2__5_) );
  NOR2_X1 U106 ( .A1(n30), .A2(n24), .ZN(ab_2__4_) );
  NOR2_X1 U107 ( .A1(n31), .A2(n24), .ZN(ab_2__3_) );
  NOR2_X1 U108 ( .A1(n32), .A2(n24), .ZN(ab_2__2_) );
  NOR2_X1 U109 ( .A1(n33), .A2(n24), .ZN(ab_2__1_) );
  NOR2_X1 U110 ( .A1(n34), .A2(n24), .ZN(ab_2__0_) );
  NOR2_X1 U111 ( .A1(n27), .A2(n25), .ZN(ab_1__7_) );
  NOR2_X1 U112 ( .A1(n28), .A2(n25), .ZN(ab_1__6_) );
  NOR2_X1 U113 ( .A1(n29), .A2(n25), .ZN(ab_1__5_) );
  NOR2_X1 U114 ( .A1(n30), .A2(n25), .ZN(ab_1__4_) );
  NOR2_X1 U115 ( .A1(n31), .A2(n25), .ZN(ab_1__3_) );
  NOR2_X1 U116 ( .A1(n32), .A2(n25), .ZN(ab_1__2_) );
  NOR2_X1 U117 ( .A1(n33), .A2(n25), .ZN(ab_1__1_) );
  NOR2_X1 U118 ( .A1(n34), .A2(n25), .ZN(ab_1__0_) );
  NOR2_X1 U119 ( .A1(n27), .A2(n26), .ZN(ab_0__7_) );
  NOR2_X1 U120 ( .A1(n28), .A2(n26), .ZN(ab_0__6_) );
  NOR2_X1 U121 ( .A1(n29), .A2(n26), .ZN(ab_0__5_) );
  NOR2_X1 U122 ( .A1(n30), .A2(n26), .ZN(ab_0__4_) );
  NOR2_X1 U123 ( .A1(n31), .A2(n26), .ZN(ab_0__3_) );
  NOR2_X1 U124 ( .A1(n32), .A2(n26), .ZN(ab_0__2_) );
  NOR2_X1 U125 ( .A1(n33), .A2(n26), .ZN(ab_0__1_) );
  NOR2_X1 U126 ( .A1(n34), .A2(n26), .ZN(PRODUCT[0]) );
endmodule


module MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [15:1] carry;

  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .S(SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(carry[1]) );
  INV_X1 U2 ( .I(A[0]), .ZN(n1) );
  INV_X1 U3 ( .I(B[0]), .ZN(n2) );
  XOR2_X1 U4 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_1 ( a, b, a_fwd, b_fwd, out, clk, 
        clear );
  input [0:7] a;
  input [0:7] b;
  output [0:7] a_fwd;
  output [0:7] b_fwd;
  output [0:15] out;
  input clk, clear;
  wire   mult_out_9_, mult_out_8_, mult_out_7_, mult_out_6_, mult_out_5_,
         mult_out_4_, mult_out_3_, mult_out_2_, mult_out_1_, mult_out_15_,
         mult_out_14_, mult_out_13_, mult_out_12_, mult_out_11_, mult_out_10_,
         mult_out_0_, n1;
  wire   [0:15] adder_out;

  MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_1_DW02_mult_0 mult_23 ( .A(a), .B(b), .TC(
        1'b0), .PRODUCT({mult_out_0_, mult_out_1_, mult_out_2_, mult_out_3_, 
        mult_out_4_, mult_out_5_, mult_out_6_, mult_out_7_, mult_out_8_, 
        mult_out_9_, mult_out_10_, mult_out_11_, mult_out_12_, mult_out_13_, 
        mult_out_14_, mult_out_15_}) );
  MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_1_DW01_add_0 add_24 ( .A({mult_out_0_, 
        mult_out_1_, mult_out_2_, mult_out_3_, mult_out_4_, mult_out_5_, 
        mult_out_6_, mult_out_7_, mult_out_8_, mult_out_9_, mult_out_10_, 
        mult_out_11_, mult_out_12_, mult_out_13_, mult_out_14_, mult_out_15_}), 
        .B(out), .CI(1'b0), .SUM(adder_out) );
  DFFRNQ_X1 b_fwd_reg_7_ ( .D(b[7]), .CLK(clk), .RN(n1), .Q(b_fwd[7]) );
  DFFRNQ_X1 b_fwd_reg_6_ ( .D(b[6]), .CLK(clk), .RN(n1), .Q(b_fwd[6]) );
  DFFRNQ_X1 b_fwd_reg_5_ ( .D(b[5]), .CLK(clk), .RN(n1), .Q(b_fwd[5]) );
  DFFRNQ_X1 b_fwd_reg_4_ ( .D(b[4]), .CLK(clk), .RN(n1), .Q(b_fwd[4]) );
  DFFRNQ_X1 b_fwd_reg_3_ ( .D(b[3]), .CLK(clk), .RN(n1), .Q(b_fwd[3]) );
  DFFRNQ_X1 b_fwd_reg_2_ ( .D(b[2]), .CLK(clk), .RN(n1), .Q(b_fwd[2]) );
  DFFRNQ_X1 b_fwd_reg_1_ ( .D(b[1]), .CLK(clk), .RN(n1), .Q(b_fwd[1]) );
  DFFRNQ_X1 b_fwd_reg_0_ ( .D(b[0]), .CLK(clk), .RN(n1), .Q(b_fwd[0]) );
  DFFRNQ_X1 a_fwd_reg_7_ ( .D(a[7]), .CLK(clk), .RN(n1), .Q(a_fwd[7]) );
  DFFRNQ_X1 a_fwd_reg_6_ ( .D(a[6]), .CLK(clk), .RN(n1), .Q(a_fwd[6]) );
  DFFRNQ_X1 a_fwd_reg_5_ ( .D(a[5]), .CLK(clk), .RN(n1), .Q(a_fwd[5]) );
  DFFRNQ_X1 a_fwd_reg_4_ ( .D(a[4]), .CLK(clk), .RN(n1), .Q(a_fwd[4]) );
  DFFRNQ_X1 a_fwd_reg_3_ ( .D(a[3]), .CLK(clk), .RN(n1), .Q(a_fwd[3]) );
  DFFRNQ_X1 a_fwd_reg_2_ ( .D(a[2]), .CLK(clk), .RN(n1), .Q(a_fwd[2]) );
  DFFRNQ_X1 a_fwd_reg_1_ ( .D(a[1]), .CLK(clk), .RN(n1), .Q(a_fwd[1]) );
  DFFRNQ_X1 a_fwd_reg_0_ ( .D(a[0]), .CLK(clk), .RN(n1), .Q(a_fwd[0]) );
  DFFRNQ_X1 out_reg_15_ ( .D(adder_out[15]), .CLK(clk), .RN(n1), .Q(out[15])
         );
  DFFRNQ_X1 out_reg_14_ ( .D(adder_out[14]), .CLK(clk), .RN(n1), .Q(out[14])
         );
  DFFRNQ_X1 out_reg_13_ ( .D(adder_out[13]), .CLK(clk), .RN(n1), .Q(out[13])
         );
  DFFRNQ_X1 out_reg_12_ ( .D(adder_out[12]), .CLK(clk), .RN(n1), .Q(out[12])
         );
  DFFRNQ_X1 out_reg_11_ ( .D(adder_out[11]), .CLK(clk), .RN(n1), .Q(out[11])
         );
  DFFRNQ_X1 out_reg_10_ ( .D(adder_out[10]), .CLK(clk), .RN(n1), .Q(out[10])
         );
  DFFRNQ_X1 out_reg_9_ ( .D(adder_out[9]), .CLK(clk), .RN(n1), .Q(out[9]) );
  DFFRNQ_X1 out_reg_8_ ( .D(adder_out[8]), .CLK(clk), .RN(n1), .Q(out[8]) );
  DFFRNQ_X1 out_reg_7_ ( .D(adder_out[7]), .CLK(clk), .RN(n1), .Q(out[7]) );
  DFFRNQ_X1 out_reg_6_ ( .D(adder_out[6]), .CLK(clk), .RN(n1), .Q(out[6]) );
  DFFRNQ_X1 out_reg_5_ ( .D(adder_out[5]), .CLK(clk), .RN(n1), .Q(out[5]) );
  DFFRNQ_X1 out_reg_4_ ( .D(adder_out[4]), .CLK(clk), .RN(n1), .Q(out[4]) );
  DFFRNQ_X1 out_reg_3_ ( .D(adder_out[3]), .CLK(clk), .RN(n1), .Q(out[3]) );
  DFFRNQ_X1 out_reg_2_ ( .D(adder_out[2]), .CLK(clk), .RN(n1), .Q(out[2]) );
  DFFRNQ_X1 out_reg_1_ ( .D(adder_out[1]), .CLK(clk), .RN(n1), .Q(out[1]) );
  DFFRNQ_X1 out_reg_0_ ( .D(adder_out[0]), .CLK(clk), .RN(n1), .Q(out[0]) );
  INV_X1 U3 ( .I(clear), .ZN(n1) );
endmodule


module MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_0_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  assign SUM[6] = A[6];
  assign SUM[5] = A[5];
  assign SUM[4] = A[4];
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = A[0];

  INV_X1 U2 ( .I(n9), .ZN(n4) );
  INV_X1 U3 ( .I(n21), .ZN(n2) );
  NAND2_X1 U4 ( .A1(A[7]), .A2(B[7]), .ZN(n11) );
  INV_X1 U5 ( .I(n13), .ZN(n5) );
  INV_X1 U6 ( .I(n23), .ZN(n3) );
  INV_X1 U7 ( .I(n15), .ZN(n1) );
  XOR2_X1 U8 ( .A1(n6), .A2(n7), .Z(SUM[9]) );
  NOR2_X1 U9 ( .A1(n8), .A2(n9), .ZN(n7) );
  XOR2_X1 U10 ( .A1(n10), .A2(n11), .Z(SUM[8]) );
  NAND2_X1 U11 ( .A1(n5), .A2(n12), .ZN(n10) );
  XOR2_X1 U12 ( .A1(B[7]), .A2(A[7]), .Z(SUM[7]) );
  XOR2_X1 U13 ( .A1(n14), .A2(B[13]), .Z(SUM[13]) );
  OAI21_X1 U14 ( .A1(n15), .A2(n16), .B(n17), .ZN(n14) );
  XOR2_X1 U15 ( .A1(n18), .A2(n16), .Z(SUM[12]) );
  AOI21_X1 U16 ( .A1(n2), .A2(n19), .B(n20), .ZN(n16) );
  NAND2_X1 U17 ( .A1(n1), .A2(n17), .ZN(n18) );
  NAND2_X1 U18 ( .A1(B[12]), .A2(A[12]), .ZN(n17) );
  NOR2_X1 U19 ( .A1(B[12]), .A2(A[12]), .ZN(n15) );
  XOR2_X1 U20 ( .A1(n19), .A2(n22), .Z(SUM[11]) );
  NOR2_X1 U21 ( .A1(n20), .A2(n21), .ZN(n22) );
  NOR2_X1 U22 ( .A1(B[11]), .A2(A[11]), .ZN(n21) );
  AND2_X1 U23 ( .A1(B[11]), .A2(A[11]), .Z(n20) );
  OAI21_X1 U24 ( .A1(n23), .A2(n24), .B(n25), .ZN(n19) );
  XOR2_X1 U25 ( .A1(n26), .A2(n24), .Z(SUM[10]) );
  AOI21_X1 U26 ( .A1(n6), .A2(n4), .B(n8), .ZN(n24) );
  AND2_X1 U27 ( .A1(B[9]), .A2(A[9]), .Z(n8) );
  NOR2_X1 U28 ( .A1(B[9]), .A2(A[9]), .ZN(n9) );
  OAI21_X1 U29 ( .A1(n11), .A2(n13), .B(n12), .ZN(n6) );
  NAND2_X1 U30 ( .A1(B[8]), .A2(A[8]), .ZN(n12) );
  NOR2_X1 U31 ( .A1(B[8]), .A2(A[8]), .ZN(n13) );
  NAND2_X1 U32 ( .A1(n3), .A2(n25), .ZN(n26) );
  NAND2_X1 U33 ( .A1(B[10]), .A2(A[10]), .ZN(n25) );
  NOR2_X1 U34 ( .A1(B[10]), .A2(A[10]), .ZN(n23) );
endmodule


module MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_0_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   ab_7__7_, ab_7__6_, ab_7__5_, ab_7__4_, ab_7__3_, ab_7__2_, ab_7__1_,
         ab_7__0_, ab_6__7_, ab_6__6_, ab_6__5_, ab_6__4_, ab_6__3_, ab_6__2_,
         ab_6__1_, ab_6__0_, ab_5__7_, ab_5__6_, ab_5__5_, ab_5__4_, ab_5__3_,
         ab_5__2_, ab_5__1_, ab_5__0_, ab_4__7_, ab_4__6_, ab_4__5_, ab_4__4_,
         ab_4__3_, ab_4__2_, ab_4__1_, ab_4__0_, ab_3__7_, ab_3__6_, ab_3__5_,
         ab_3__4_, ab_3__3_, ab_3__2_, ab_3__1_, ab_3__0_, ab_2__7_, ab_2__6_,
         ab_2__5_, ab_2__4_, ab_2__3_, ab_2__2_, ab_2__1_, ab_2__0_, ab_1__7_,
         ab_1__6_, ab_1__5_, ab_1__4_, ab_1__3_, ab_1__2_, ab_1__1_, ab_1__0_,
         ab_0__7_, ab_0__6_, ab_0__5_, ab_0__4_, ab_0__3_, ab_0__2_, ab_0__1_,
         CARRYB_7__6_, CARRYB_7__5_, CARRYB_7__4_, CARRYB_7__3_, CARRYB_7__2_,
         CARRYB_7__1_, CARRYB_7__0_, CARRYB_6__6_, CARRYB_6__5_, CARRYB_6__4_,
         CARRYB_6__3_, CARRYB_6__2_, CARRYB_6__1_, CARRYB_6__0_, CARRYB_5__6_,
         CARRYB_5__5_, CARRYB_5__4_, CARRYB_5__3_, CARRYB_5__2_, CARRYB_5__1_,
         CARRYB_5__0_, CARRYB_4__6_, CARRYB_4__5_, CARRYB_4__4_, CARRYB_4__3_,
         CARRYB_4__2_, CARRYB_4__1_, CARRYB_4__0_, CARRYB_3__6_, CARRYB_3__5_,
         CARRYB_3__4_, CARRYB_3__3_, CARRYB_3__2_, CARRYB_3__1_, CARRYB_3__0_,
         CARRYB_2__6_, CARRYB_2__5_, CARRYB_2__4_, CARRYB_2__3_, CARRYB_2__2_,
         CARRYB_2__1_, CARRYB_2__0_, CARRYB_1__6_, CARRYB_1__5_, CARRYB_1__4_,
         CARRYB_1__3_, CARRYB_1__2_, CARRYB_1__1_, CARRYB_1__0_, SUMB_7__6_,
         SUMB_7__5_, SUMB_7__4_, SUMB_7__3_, SUMB_7__2_, SUMB_7__1_,
         SUMB_7__0_, SUMB_6__6_, SUMB_6__5_, SUMB_6__4_, SUMB_6__3_,
         SUMB_6__2_, SUMB_6__1_, SUMB_5__6_, SUMB_5__5_, SUMB_5__4_,
         SUMB_5__3_, SUMB_5__2_, SUMB_5__1_, SUMB_4__6_, SUMB_4__5_,
         SUMB_4__4_, SUMB_4__3_, SUMB_4__2_, SUMB_4__1_, SUMB_3__6_,
         SUMB_3__5_, SUMB_3__4_, SUMB_3__3_, SUMB_3__2_, SUMB_3__1_,
         SUMB_2__6_, SUMB_2__5_, SUMB_2__4_, SUMB_2__3_, SUMB_2__2_,
         SUMB_2__1_, SUMB_1__6_, SUMB_1__5_, SUMB_1__4_, SUMB_1__3_,
         SUMB_1__2_, SUMB_1__1_, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_,
         A1_6_, A1_4_, A1_3_, A1_2_, A1_1_, A1_0_, A2_13_, A2_12_, A2_11_,
         A2_10_, A2_9_, A2_8_, A2_7_, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34;

  FA_X1 S4_0 ( .A(ab_7__0_), .B(CARRYB_6__0_), .CI(SUMB_6__1_), .CO(
        CARRYB_7__0_), .S(SUMB_7__0_) );
  FA_X1 S4_1 ( .A(ab_7__1_), .B(CARRYB_6__1_), .CI(SUMB_6__2_), .CO(
        CARRYB_7__1_), .S(SUMB_7__1_) );
  FA_X1 S4_2 ( .A(ab_7__2_), .B(CARRYB_6__2_), .CI(SUMB_6__3_), .CO(
        CARRYB_7__2_), .S(SUMB_7__2_) );
  FA_X1 S4_3 ( .A(ab_7__3_), .B(CARRYB_6__3_), .CI(SUMB_6__4_), .CO(
        CARRYB_7__3_), .S(SUMB_7__3_) );
  FA_X1 S4_4 ( .A(ab_7__4_), .B(CARRYB_6__4_), .CI(SUMB_6__5_), .CO(
        CARRYB_7__4_), .S(SUMB_7__4_) );
  FA_X1 S4_5 ( .A(ab_7__5_), .B(CARRYB_6__5_), .CI(SUMB_6__6_), .CO(
        CARRYB_7__5_), .S(SUMB_7__5_) );
  FA_X1 S5_6 ( .A(ab_7__6_), .B(CARRYB_6__6_), .CI(ab_6__7_), .CO(CARRYB_7__6_), .S(SUMB_7__6_) );
  FA_X1 S1_6_0 ( .A(ab_6__0_), .B(CARRYB_5__0_), .CI(SUMB_5__1_), .CO(
        CARRYB_6__0_), .S(A1_4_) );
  FA_X1 S2_6_1 ( .A(ab_6__1_), .B(CARRYB_5__1_), .CI(SUMB_5__2_), .CO(
        CARRYB_6__1_), .S(SUMB_6__1_) );
  FA_X1 S2_6_2 ( .A(ab_6__2_), .B(CARRYB_5__2_), .CI(SUMB_5__3_), .CO(
        CARRYB_6__2_), .S(SUMB_6__2_) );
  FA_X1 S2_6_3 ( .A(ab_6__3_), .B(CARRYB_5__3_), .CI(SUMB_5__4_), .CO(
        CARRYB_6__3_), .S(SUMB_6__3_) );
  FA_X1 S2_6_4 ( .A(ab_6__4_), .B(CARRYB_5__4_), .CI(SUMB_5__5_), .CO(
        CARRYB_6__4_), .S(SUMB_6__4_) );
  FA_X1 S2_6_5 ( .A(ab_6__5_), .B(CARRYB_5__5_), .CI(SUMB_5__6_), .CO(
        CARRYB_6__5_), .S(SUMB_6__5_) );
  FA_X1 S3_6_6 ( .A(ab_6__6_), .B(CARRYB_5__6_), .CI(ab_5__7_), .CO(
        CARRYB_6__6_), .S(SUMB_6__6_) );
  FA_X1 S1_5_0 ( .A(ab_5__0_), .B(CARRYB_4__0_), .CI(SUMB_4__1_), .CO(
        CARRYB_5__0_), .S(A1_3_) );
  FA_X1 S2_5_1 ( .A(ab_5__1_), .B(CARRYB_4__1_), .CI(SUMB_4__2_), .CO(
        CARRYB_5__1_), .S(SUMB_5__1_) );
  FA_X1 S2_5_2 ( .A(ab_5__2_), .B(CARRYB_4__2_), .CI(SUMB_4__3_), .CO(
        CARRYB_5__2_), .S(SUMB_5__2_) );
  FA_X1 S2_5_3 ( .A(ab_5__3_), .B(CARRYB_4__3_), .CI(SUMB_4__4_), .CO(
        CARRYB_5__3_), .S(SUMB_5__3_) );
  FA_X1 S2_5_4 ( .A(ab_5__4_), .B(CARRYB_4__4_), .CI(SUMB_4__5_), .CO(
        CARRYB_5__4_), .S(SUMB_5__4_) );
  FA_X1 S2_5_5 ( .A(ab_5__5_), .B(CARRYB_4__5_), .CI(SUMB_4__6_), .CO(
        CARRYB_5__5_), .S(SUMB_5__5_) );
  FA_X1 S3_5_6 ( .A(ab_5__6_), .B(CARRYB_4__6_), .CI(ab_4__7_), .CO(
        CARRYB_5__6_), .S(SUMB_5__6_) );
  FA_X1 S1_4_0 ( .A(ab_4__0_), .B(CARRYB_3__0_), .CI(SUMB_3__1_), .CO(
        CARRYB_4__0_), .S(A1_2_) );
  FA_X1 S2_4_1 ( .A(ab_4__1_), .B(CARRYB_3__1_), .CI(SUMB_3__2_), .CO(
        CARRYB_4__1_), .S(SUMB_4__1_) );
  FA_X1 S2_4_2 ( .A(ab_4__2_), .B(CARRYB_3__2_), .CI(SUMB_3__3_), .CO(
        CARRYB_4__2_), .S(SUMB_4__2_) );
  FA_X1 S2_4_3 ( .A(ab_4__3_), .B(CARRYB_3__3_), .CI(SUMB_3__4_), .CO(
        CARRYB_4__3_), .S(SUMB_4__3_) );
  FA_X1 S2_4_4 ( .A(ab_4__4_), .B(CARRYB_3__4_), .CI(SUMB_3__5_), .CO(
        CARRYB_4__4_), .S(SUMB_4__4_) );
  FA_X1 S2_4_5 ( .A(ab_4__5_), .B(CARRYB_3__5_), .CI(SUMB_3__6_), .CO(
        CARRYB_4__5_), .S(SUMB_4__5_) );
  FA_X1 S3_4_6 ( .A(ab_4__6_), .B(CARRYB_3__6_), .CI(ab_3__7_), .CO(
        CARRYB_4__6_), .S(SUMB_4__6_) );
  FA_X1 S1_3_0 ( .A(ab_3__0_), .B(CARRYB_2__0_), .CI(SUMB_2__1_), .CO(
        CARRYB_3__0_), .S(A1_1_) );
  FA_X1 S2_3_1 ( .A(ab_3__1_), .B(CARRYB_2__1_), .CI(SUMB_2__2_), .CO(
        CARRYB_3__1_), .S(SUMB_3__1_) );
  FA_X1 S2_3_2 ( .A(ab_3__2_), .B(CARRYB_2__2_), .CI(SUMB_2__3_), .CO(
        CARRYB_3__2_), .S(SUMB_3__2_) );
  FA_X1 S2_3_3 ( .A(ab_3__3_), .B(CARRYB_2__3_), .CI(SUMB_2__4_), .CO(
        CARRYB_3__3_), .S(SUMB_3__3_) );
  FA_X1 S2_3_4 ( .A(ab_3__4_), .B(CARRYB_2__4_), .CI(SUMB_2__5_), .CO(
        CARRYB_3__4_), .S(SUMB_3__4_) );
  FA_X1 S2_3_5 ( .A(ab_3__5_), .B(CARRYB_2__5_), .CI(SUMB_2__6_), .CO(
        CARRYB_3__5_), .S(SUMB_3__5_) );
  FA_X1 S3_3_6 ( .A(ab_3__6_), .B(CARRYB_2__6_), .CI(ab_2__7_), .CO(
        CARRYB_3__6_), .S(SUMB_3__6_) );
  FA_X1 S1_2_0 ( .A(ab_2__0_), .B(CARRYB_1__0_), .CI(SUMB_1__1_), .CO(
        CARRYB_2__0_), .S(A1_0_) );
  FA_X1 S2_2_1 ( .A(ab_2__1_), .B(CARRYB_1__1_), .CI(SUMB_1__2_), .CO(
        CARRYB_2__1_), .S(SUMB_2__1_) );
  FA_X1 S2_2_2 ( .A(ab_2__2_), .B(CARRYB_1__2_), .CI(SUMB_1__3_), .CO(
        CARRYB_2__2_), .S(SUMB_2__2_) );
  FA_X1 S2_2_3 ( .A(ab_2__3_), .B(CARRYB_1__3_), .CI(SUMB_1__4_), .CO(
        CARRYB_2__3_), .S(SUMB_2__3_) );
  FA_X1 S2_2_4 ( .A(ab_2__4_), .B(CARRYB_1__4_), .CI(SUMB_1__5_), .CO(
        CARRYB_2__4_), .S(SUMB_2__4_) );
  FA_X1 S2_2_5 ( .A(ab_2__5_), .B(CARRYB_1__5_), .CI(SUMB_1__6_), .CO(
        CARRYB_2__5_), .S(SUMB_2__5_) );
  FA_X1 S3_2_6 ( .A(ab_2__6_), .B(CARRYB_1__6_), .CI(ab_1__7_), .CO(
        CARRYB_2__6_), .S(SUMB_2__6_) );
  MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_0_DW01_add_1 FS_1 ( .A({1'b0, A1_12_, 
        A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, SUMB_7__0_, A1_4_, A1_3_, 
        A1_2_, A1_1_, A1_0_}), .B({A2_13_, A2_12_, A2_11_, A2_10_, A2_9_, 
        A2_8_, A2_7_, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM(PRODUCT[15:2]) );
  INV_X1 U2 ( .I(ab_0__6_), .ZN(n16) );
  INV_X1 U3 ( .I(ab_0__7_), .ZN(n18) );
  INV_X1 U4 ( .I(ab_1__5_), .ZN(n15) );
  INV_X1 U5 ( .I(ab_1__6_), .ZN(n17) );
  AND2_X1 U6 ( .A1(SUMB_7__1_), .A2(CARRYB_7__0_), .Z(A2_7_) );
  AND2_X1 U7 ( .A1(SUMB_7__2_), .A2(CARRYB_7__1_), .Z(A2_8_) );
  INV_X1 U8 ( .I(ab_0__5_), .ZN(n14) );
  INV_X1 U9 ( .I(ab_0__4_), .ZN(n12) );
  INV_X1 U10 ( .I(ab_1__4_), .ZN(n13) );
  INV_X1 U11 ( .I(ab_1__3_), .ZN(n11) );
  INV_X1 U12 ( .I(ab_0__3_), .ZN(n10) );
  INV_X1 U13 ( .I(ab_0__2_), .ZN(n8) );
  INV_X1 U14 ( .I(ab_1__2_), .ZN(n9) );
  INV_X1 U15 ( .I(ab_1__1_), .ZN(n7) );
  AND2_X1 U16 ( .A1(SUMB_7__3_), .A2(CARRYB_7__2_), .Z(A2_9_) );
  INV_X1 U17 ( .I(ab_0__1_), .ZN(n6) );
  INV_X1 U18 ( .I(ab_1__0_), .ZN(n5) );
  AND2_X1 U19 ( .A1(SUMB_7__4_), .A2(CARRYB_7__3_), .Z(A2_10_) );
  AND2_X1 U20 ( .A1(SUMB_7__5_), .A2(CARRYB_7__4_), .Z(A2_11_) );
  AND2_X1 U21 ( .A1(SUMB_7__6_), .A2(CARRYB_7__5_), .Z(A2_12_) );
  INV_X1 U22 ( .I(CARRYB_7__6_), .ZN(n4) );
  INV_X1 U23 ( .I(ab_7__7_), .ZN(n3) );
  NOR2_X1 U24 ( .A1(n15), .A2(n16), .ZN(CARRYB_1__5_) );
  NOR2_X1 U25 ( .A1(n17), .A2(n18), .ZN(CARRYB_1__6_) );
  NOR2_X1 U26 ( .A1(n13), .A2(n14), .ZN(CARRYB_1__4_) );
  NOR2_X1 U27 ( .A1(n11), .A2(n12), .ZN(CARRYB_1__3_) );
  NOR2_X1 U28 ( .A1(n9), .A2(n10), .ZN(CARRYB_1__2_) );
  NOR2_X1 U29 ( .A1(n7), .A2(n8), .ZN(CARRYB_1__1_) );
  NOR2_X1 U30 ( .A1(n5), .A2(n6), .ZN(CARRYB_1__0_) );
  INV_X1 U31 ( .I(B[7]), .ZN(n19) );
  INV_X1 U32 ( .I(A[0]), .ZN(n34) );
  NOR2_X1 U33 ( .A1(n3), .A2(n4), .ZN(A2_13_) );
  INV_X1 U34 ( .I(B[6]), .ZN(n20) );
  INV_X1 U35 ( .I(A[1]), .ZN(n33) );
  INV_X1 U36 ( .I(B[5]), .ZN(n21) );
  INV_X1 U37 ( .I(B[4]), .ZN(n22) );
  INV_X1 U38 ( .I(A[2]), .ZN(n32) );
  INV_X1 U39 ( .I(B[3]), .ZN(n23) );
  INV_X1 U40 ( .I(B[2]), .ZN(n24) );
  INV_X1 U41 ( .I(B[1]), .ZN(n25) );
  INV_X1 U42 ( .I(A[3]), .ZN(n31) );
  INV_X1 U43 ( .I(B[0]), .ZN(n26) );
  INV_X1 U44 ( .I(A[4]), .ZN(n30) );
  INV_X1 U45 ( .I(A[5]), .ZN(n29) );
  INV_X1 U46 ( .I(A[6]), .ZN(n28) );
  INV_X1 U47 ( .I(A[7]), .ZN(n27) );
  XOR2_X1 U48 ( .A1(CARRYB_7__0_), .A2(SUMB_7__1_), .Z(A1_6_) );
  XOR2_X1 U49 ( .A1(CARRYB_7__1_), .A2(SUMB_7__2_), .Z(A1_7_) );
  XOR2_X1 U50 ( .A1(CARRYB_7__2_), .A2(SUMB_7__3_), .Z(A1_8_) );
  XOR2_X1 U51 ( .A1(CARRYB_7__3_), .A2(SUMB_7__4_), .Z(A1_9_) );
  XOR2_X1 U52 ( .A1(CARRYB_7__4_), .A2(SUMB_7__5_), .Z(A1_10_) );
  XOR2_X1 U53 ( .A1(CARRYB_7__5_), .A2(SUMB_7__6_), .Z(A1_11_) );
  XOR2_X1 U54 ( .A1(CARRYB_7__6_), .A2(ab_7__7_), .Z(A1_12_) );
  XOR2_X1 U55 ( .A1(ab_1__0_), .A2(ab_0__1_), .Z(PRODUCT[1]) );
  XOR2_X1 U56 ( .A1(ab_1__1_), .A2(ab_0__2_), .Z(SUMB_1__1_) );
  XOR2_X1 U57 ( .A1(ab_1__2_), .A2(ab_0__3_), .Z(SUMB_1__2_) );
  XOR2_X1 U58 ( .A1(ab_1__3_), .A2(ab_0__4_), .Z(SUMB_1__3_) );
  XOR2_X1 U59 ( .A1(ab_1__4_), .A2(ab_0__5_), .Z(SUMB_1__4_) );
  XOR2_X1 U60 ( .A1(ab_1__5_), .A2(ab_0__6_), .Z(SUMB_1__5_) );
  XOR2_X1 U61 ( .A1(ab_1__6_), .A2(ab_0__7_), .Z(SUMB_1__6_) );
  NOR2_X1 U63 ( .A1(n27), .A2(n19), .ZN(ab_7__7_) );
  NOR2_X1 U64 ( .A1(n27), .A2(n20), .ZN(ab_7__6_) );
  NOR2_X1 U65 ( .A1(n27), .A2(n21), .ZN(ab_7__5_) );
  NOR2_X1 U66 ( .A1(n27), .A2(n22), .ZN(ab_7__4_) );
  NOR2_X1 U67 ( .A1(n27), .A2(n23), .ZN(ab_7__3_) );
  NOR2_X1 U68 ( .A1(n27), .A2(n24), .ZN(ab_7__2_) );
  NOR2_X1 U69 ( .A1(n27), .A2(n25), .ZN(ab_7__1_) );
  NOR2_X1 U70 ( .A1(n27), .A2(n26), .ZN(ab_7__0_) );
  NOR2_X1 U71 ( .A1(n19), .A2(n28), .ZN(ab_6__7_) );
  NOR2_X1 U72 ( .A1(n20), .A2(n28), .ZN(ab_6__6_) );
  NOR2_X1 U73 ( .A1(n21), .A2(n28), .ZN(ab_6__5_) );
  NOR2_X1 U74 ( .A1(n22), .A2(n28), .ZN(ab_6__4_) );
  NOR2_X1 U75 ( .A1(n23), .A2(n28), .ZN(ab_6__3_) );
  NOR2_X1 U76 ( .A1(n24), .A2(n28), .ZN(ab_6__2_) );
  NOR2_X1 U77 ( .A1(n25), .A2(n28), .ZN(ab_6__1_) );
  NOR2_X1 U78 ( .A1(n26), .A2(n28), .ZN(ab_6__0_) );
  NOR2_X1 U79 ( .A1(n19), .A2(n29), .ZN(ab_5__7_) );
  NOR2_X1 U80 ( .A1(n20), .A2(n29), .ZN(ab_5__6_) );
  NOR2_X1 U81 ( .A1(n21), .A2(n29), .ZN(ab_5__5_) );
  NOR2_X1 U82 ( .A1(n22), .A2(n29), .ZN(ab_5__4_) );
  NOR2_X1 U83 ( .A1(n23), .A2(n29), .ZN(ab_5__3_) );
  NOR2_X1 U84 ( .A1(n24), .A2(n29), .ZN(ab_5__2_) );
  NOR2_X1 U85 ( .A1(n25), .A2(n29), .ZN(ab_5__1_) );
  NOR2_X1 U86 ( .A1(n26), .A2(n29), .ZN(ab_5__0_) );
  NOR2_X1 U87 ( .A1(n19), .A2(n30), .ZN(ab_4__7_) );
  NOR2_X1 U88 ( .A1(n20), .A2(n30), .ZN(ab_4__6_) );
  NOR2_X1 U89 ( .A1(n21), .A2(n30), .ZN(ab_4__5_) );
  NOR2_X1 U90 ( .A1(n22), .A2(n30), .ZN(ab_4__4_) );
  NOR2_X1 U91 ( .A1(n23), .A2(n30), .ZN(ab_4__3_) );
  NOR2_X1 U92 ( .A1(n24), .A2(n30), .ZN(ab_4__2_) );
  NOR2_X1 U93 ( .A1(n25), .A2(n30), .ZN(ab_4__1_) );
  NOR2_X1 U94 ( .A1(n26), .A2(n30), .ZN(ab_4__0_) );
  NOR2_X1 U95 ( .A1(n19), .A2(n31), .ZN(ab_3__7_) );
  NOR2_X1 U96 ( .A1(n20), .A2(n31), .ZN(ab_3__6_) );
  NOR2_X1 U97 ( .A1(n21), .A2(n31), .ZN(ab_3__5_) );
  NOR2_X1 U98 ( .A1(n22), .A2(n31), .ZN(ab_3__4_) );
  NOR2_X1 U99 ( .A1(n23), .A2(n31), .ZN(ab_3__3_) );
  NOR2_X1 U100 ( .A1(n24), .A2(n31), .ZN(ab_3__2_) );
  NOR2_X1 U101 ( .A1(n25), .A2(n31), .ZN(ab_3__1_) );
  NOR2_X1 U102 ( .A1(n26), .A2(n31), .ZN(ab_3__0_) );
  NOR2_X1 U103 ( .A1(n19), .A2(n32), .ZN(ab_2__7_) );
  NOR2_X1 U104 ( .A1(n20), .A2(n32), .ZN(ab_2__6_) );
  NOR2_X1 U105 ( .A1(n21), .A2(n32), .ZN(ab_2__5_) );
  NOR2_X1 U106 ( .A1(n22), .A2(n32), .ZN(ab_2__4_) );
  NOR2_X1 U107 ( .A1(n23), .A2(n32), .ZN(ab_2__3_) );
  NOR2_X1 U108 ( .A1(n24), .A2(n32), .ZN(ab_2__2_) );
  NOR2_X1 U109 ( .A1(n25), .A2(n32), .ZN(ab_2__1_) );
  NOR2_X1 U110 ( .A1(n26), .A2(n32), .ZN(ab_2__0_) );
  NOR2_X1 U111 ( .A1(n19), .A2(n33), .ZN(ab_1__7_) );
  NOR2_X1 U112 ( .A1(n20), .A2(n33), .ZN(ab_1__6_) );
  NOR2_X1 U113 ( .A1(n21), .A2(n33), .ZN(ab_1__5_) );
  NOR2_X1 U114 ( .A1(n22), .A2(n33), .ZN(ab_1__4_) );
  NOR2_X1 U115 ( .A1(n23), .A2(n33), .ZN(ab_1__3_) );
  NOR2_X1 U116 ( .A1(n24), .A2(n33), .ZN(ab_1__2_) );
  NOR2_X1 U117 ( .A1(n25), .A2(n33), .ZN(ab_1__1_) );
  NOR2_X1 U118 ( .A1(n26), .A2(n33), .ZN(ab_1__0_) );
  NOR2_X1 U119 ( .A1(n19), .A2(n34), .ZN(ab_0__7_) );
  NOR2_X1 U120 ( .A1(n20), .A2(n34), .ZN(ab_0__6_) );
  NOR2_X1 U121 ( .A1(n21), .A2(n34), .ZN(ab_0__5_) );
  NOR2_X1 U122 ( .A1(n22), .A2(n34), .ZN(ab_0__4_) );
  NOR2_X1 U123 ( .A1(n23), .A2(n34), .ZN(ab_0__3_) );
  NOR2_X1 U124 ( .A1(n24), .A2(n34), .ZN(ab_0__2_) );
  NOR2_X1 U125 ( .A1(n25), .A2(n34), .ZN(ab_0__1_) );
  NOR2_X1 U126 ( .A1(n26), .A2(n34), .ZN(PRODUCT[0]) );
endmodule


module MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_0_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [15:1] carry;

  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .S(SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  NOR2_X1 U1 ( .A1(n1), .A2(n2), .ZN(carry[1]) );
  INV_X1 U2 ( .I(A[0]), .ZN(n1) );
  INV_X1 U3 ( .I(B[0]), .ZN(n2) );
  XOR2_X1 U4 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_0 ( a, b, a_fwd, b_fwd, out, clk, 
        clear );
  input [0:7] a;
  input [0:7] b;
  output [0:7] a_fwd;
  output [0:7] b_fwd;
  output [0:15] out;
  input clk, clear;
  wire   mult_out_9_, mult_out_8_, mult_out_7_, mult_out_6_, mult_out_5_,
         mult_out_4_, mult_out_3_, mult_out_2_, mult_out_1_, mult_out_15_,
         mult_out_14_, mult_out_13_, mult_out_12_, mult_out_11_, mult_out_10_,
         mult_out_0_, n1;
  wire   [0:15] adder_out;

  MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_0_DW02_mult_0 mult_23 ( .A(a), .B(b), .TC(
        1'b0), .PRODUCT({mult_out_0_, mult_out_1_, mult_out_2_, mult_out_3_, 
        mult_out_4_, mult_out_5_, mult_out_6_, mult_out_7_, mult_out_8_, 
        mult_out_9_, mult_out_10_, mult_out_11_, mult_out_12_, mult_out_13_, 
        mult_out_14_, mult_out_15_}) );
  MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_0_DW01_add_0 add_24 ( .A({mult_out_0_, 
        mult_out_1_, mult_out_2_, mult_out_3_, mult_out_4_, mult_out_5_, 
        mult_out_6_, mult_out_7_, mult_out_8_, mult_out_9_, mult_out_10_, 
        mult_out_11_, mult_out_12_, mult_out_13_, mult_out_14_, mult_out_15_}), 
        .B(out), .CI(1'b0), .SUM(adder_out) );
  DFFRNQ_X1 b_fwd_reg_7_ ( .D(b[7]), .CLK(clk), .RN(n1), .Q(b_fwd[7]) );
  DFFRNQ_X1 b_fwd_reg_6_ ( .D(b[6]), .CLK(clk), .RN(n1), .Q(b_fwd[6]) );
  DFFRNQ_X1 b_fwd_reg_5_ ( .D(b[5]), .CLK(clk), .RN(n1), .Q(b_fwd[5]) );
  DFFRNQ_X1 b_fwd_reg_4_ ( .D(b[4]), .CLK(clk), .RN(n1), .Q(b_fwd[4]) );
  DFFRNQ_X1 b_fwd_reg_3_ ( .D(b[3]), .CLK(clk), .RN(n1), .Q(b_fwd[3]) );
  DFFRNQ_X1 b_fwd_reg_2_ ( .D(b[2]), .CLK(clk), .RN(n1), .Q(b_fwd[2]) );
  DFFRNQ_X1 b_fwd_reg_1_ ( .D(b[1]), .CLK(clk), .RN(n1), .Q(b_fwd[1]) );
  DFFRNQ_X1 b_fwd_reg_0_ ( .D(b[0]), .CLK(clk), .RN(n1), .Q(b_fwd[0]) );
  DFFRNQ_X1 a_fwd_reg_7_ ( .D(a[7]), .CLK(clk), .RN(n1), .Q(a_fwd[7]) );
  DFFRNQ_X1 a_fwd_reg_6_ ( .D(a[6]), .CLK(clk), .RN(n1), .Q(a_fwd[6]) );
  DFFRNQ_X1 a_fwd_reg_5_ ( .D(a[5]), .CLK(clk), .RN(n1), .Q(a_fwd[5]) );
  DFFRNQ_X1 a_fwd_reg_4_ ( .D(a[4]), .CLK(clk), .RN(n1), .Q(a_fwd[4]) );
  DFFRNQ_X1 a_fwd_reg_3_ ( .D(a[3]), .CLK(clk), .RN(n1), .Q(a_fwd[3]) );
  DFFRNQ_X1 a_fwd_reg_2_ ( .D(a[2]), .CLK(clk), .RN(n1), .Q(a_fwd[2]) );
  DFFRNQ_X1 a_fwd_reg_1_ ( .D(a[1]), .CLK(clk), .RN(n1), .Q(a_fwd[1]) );
  DFFRNQ_X1 a_fwd_reg_0_ ( .D(a[0]), .CLK(clk), .RN(n1), .Q(a_fwd[0]) );
  DFFRNQ_X1 out_reg_15_ ( .D(adder_out[15]), .CLK(clk), .RN(n1), .Q(out[15])
         );
  DFFRNQ_X1 out_reg_14_ ( .D(adder_out[14]), .CLK(clk), .RN(n1), .Q(out[14])
         );
  DFFRNQ_X1 out_reg_13_ ( .D(adder_out[13]), .CLK(clk), .RN(n1), .Q(out[13])
         );
  DFFRNQ_X1 out_reg_12_ ( .D(adder_out[12]), .CLK(clk), .RN(n1), .Q(out[12])
         );
  DFFRNQ_X1 out_reg_11_ ( .D(adder_out[11]), .CLK(clk), .RN(n1), .Q(out[11])
         );
  DFFRNQ_X1 out_reg_10_ ( .D(adder_out[10]), .CLK(clk), .RN(n1), .Q(out[10])
         );
  DFFRNQ_X1 out_reg_9_ ( .D(adder_out[9]), .CLK(clk), .RN(n1), .Q(out[9]) );
  DFFRNQ_X1 out_reg_8_ ( .D(adder_out[8]), .CLK(clk), .RN(n1), .Q(out[8]) );
  DFFRNQ_X1 out_reg_7_ ( .D(adder_out[7]), .CLK(clk), .RN(n1), .Q(out[7]) );
  DFFRNQ_X1 out_reg_6_ ( .D(adder_out[6]), .CLK(clk), .RN(n1), .Q(out[6]) );
  DFFRNQ_X1 out_reg_5_ ( .D(adder_out[5]), .CLK(clk), .RN(n1), .Q(out[5]) );
  DFFRNQ_X1 out_reg_4_ ( .D(adder_out[4]), .CLK(clk), .RN(n1), .Q(out[4]) );
  DFFRNQ_X1 out_reg_3_ ( .D(adder_out[3]), .CLK(clk), .RN(n1), .Q(out[3]) );
  DFFRNQ_X1 out_reg_2_ ( .D(adder_out[2]), .CLK(clk), .RN(n1), .Q(out[2]) );
  DFFRNQ_X1 out_reg_1_ ( .D(adder_out[1]), .CLK(clk), .RN(n1), .Q(out[1]) );
  DFFRNQ_X1 out_reg_0_ ( .D(adder_out[0]), .CLK(clk), .RN(n1), .Q(out[0]) );
  INV_X1 U3 ( .I(clear), .ZN(n1) );
endmodule


module systolic_array_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HA_X1 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  HA_X1 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  HA_X1 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  HA_X1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  HA_X1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  HA_X1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  HA_X1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  HA_X1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INV_X1 U1 ( .I(A[0]), .ZN(SUM[0]) );
  XOR2_X1 U2 ( .A1(carry[15]), .A2(A[15]), .Z(SUM[15]) );
endmodule


module systolic_array ( clk, rst, top_inputs, left_inputs, compute_done, 
        cycles_count, pe_register_vals );
  input [0:15] top_inputs;
  input [0:15] left_inputs;
  output [15:0] cycles_count;
  output [0:63] pe_register_vals;
  input clk, rst;
  output compute_done;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18,
         N19, N20, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33,
         N34, N35, N36, N37, n21, n22, n23, n24, n25, n26, n27, n28,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22,
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24,
         SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26,
         SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28,
         SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30,
         SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32;
  wire   [8:31] left_fwd;
  wire   [8:31] top_fwd;

  DFFSNQ_X1 cycles_count_reg_0_ ( .D(N22), .CLK(clk), .SN(1'b1), .Q(
        cycles_count[0]) );
  DFFSNQ_X1 cycles_count_reg_1_ ( .D(N23), .CLK(clk), .SN(1'b1), .Q(
        cycles_count[1]) );
  DFFSNQ_X1 cycles_count_reg_2_ ( .D(N24), .CLK(clk), .SN(1'b1), .Q(
        cycles_count[2]) );
  DFFSNQ_X1 cycles_count_reg_3_ ( .D(N25), .CLK(clk), .SN(1'b1), .Q(
        cycles_count[3]) );
  DFFSNQ_X1 cycles_count_reg_4_ ( .D(N26), .CLK(clk), .SN(1'b1), .Q(
        cycles_count[4]) );
  DFFSNQ_X1 cycles_count_reg_5_ ( .D(N27), .CLK(clk), .SN(1'b1), .Q(
        cycles_count[5]) );
  DFFSNQ_X1 cycles_count_reg_6_ ( .D(N28), .CLK(clk), .SN(1'b1), .Q(
        cycles_count[6]) );
  DFFSNQ_X1 cycles_count_reg_7_ ( .D(N29), .CLK(clk), .SN(1'b1), .Q(
        cycles_count[7]) );
  DFFSNQ_X1 cycles_count_reg_8_ ( .D(N30), .CLK(clk), .SN(1'b1), .Q(
        cycles_count[8]) );
  DFFSNQ_X1 cycles_count_reg_9_ ( .D(N31), .CLK(clk), .SN(1'b1), .Q(
        cycles_count[9]) );
  DFFSNQ_X1 cycles_count_reg_10_ ( .D(N32), .CLK(clk), .SN(1'b1), .Q(
        cycles_count[10]) );
  DFFSNQ_X1 cycles_count_reg_11_ ( .D(N33), .CLK(clk), .SN(1'b1), .Q(
        cycles_count[11]) );
  DFFSNQ_X1 cycles_count_reg_12_ ( .D(N34), .CLK(clk), .SN(1'b1), .Q(
        cycles_count[12]) );
  DFFSNQ_X1 cycles_count_reg_13_ ( .D(N35), .CLK(clk), .SN(1'b1), .Q(
        cycles_count[13]) );
  DFFSNQ_X1 cycles_count_reg_14_ ( .D(N36), .CLK(clk), .SN(1'b1), .Q(
        cycles_count[14]) );
  DFFSNQ_X1 cycles_count_reg_15_ ( .D(N37), .CLK(clk), .SN(1'b1), .Q(
        cycles_count[15]) );
  DFFSNQ_X1 compute_done_reg ( .D(n22), .CLK(clk), .SN(1'b1), .Q(compute_done)
         );
  AND2_X1 U24 ( .A1(N19), .A2(n28), .Z(N37) );
  AND2_X1 U25 ( .A1(N18), .A2(n28), .Z(N36) );
  AND2_X1 U26 ( .A1(N17), .A2(n28), .Z(N35) );
  AND2_X1 U27 ( .A1(N16), .A2(n28), .Z(N34) );
  AND2_X1 U28 ( .A1(N15), .A2(n28), .Z(N33) );
  AND2_X1 U29 ( .A1(N14), .A2(n28), .Z(N32) );
  AND2_X1 U30 ( .A1(N13), .A2(n28), .Z(N31) );
  AND2_X1 U31 ( .A1(N12), .A2(n28), .Z(N30) );
  AND2_X1 U32 ( .A1(N11), .A2(n28), .Z(N29) );
  AND2_X1 U33 ( .A1(N10), .A2(n28), .Z(N28) );
  AND2_X1 U34 ( .A1(N9), .A2(n28), .Z(N27) );
  AND2_X1 U35 ( .A1(N8), .A2(n28), .Z(N26) );
  AND2_X1 U36 ( .A1(N7), .A2(n28), .Z(N25) );
  AND2_X1 U37 ( .A1(N6), .A2(n28), .Z(N24) );
  AND2_X1 U38 ( .A1(N5), .A2(n28), .Z(N23) );
  AND2_X1 U39 ( .A1(N4), .A2(n28), .Z(N22) );
  buffern_WORD_SIZE8_LENGTH1_1 gen1_1__buffer_inst_c ( .in(top_inputs[0:7]), 
        .out(top_fwd[8:15]), .clk(clk), .clear(rst) );
  buffern_WORD_SIZE8_LENGTH1_0 gen2_1__buffer_inst_r ( .in(left_inputs[0:7]), 
        .out(left_fwd[8:15]), .clk(clk), .clear(rst) );
  MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_3 gen3_0__gen4_0__mac_inst ( .a(
        left_inputs[8:15]), .b(top_inputs[8:15]), .a_fwd(left_fwd[16:23]), 
        .b_fwd(top_fwd[16:23]), .out(pe_register_vals[0:15]), .clk(clk), 
        .clear(rst) );
  MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_2 gen3_0__gen4_1__mac_inst ( .a(
        left_fwd[16:23]), .b(top_fwd[8:15]), .a_fwd({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8}), .b_fwd(top_fwd[24:31]), .out(
        pe_register_vals[16:31]), .clk(clk), .clear(rst) );
  MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_1 gen3_1__gen4_0__mac_inst ( .a(
        left_fwd[8:15]), .b(top_fwd[16:23]), .a_fwd(left_fwd[24:31]), .b_fwd({
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16}), .out(
        pe_register_vals[32:47]), .clk(clk), .clear(rst) );
  MAC_IN_WORD_SIZE8_OUT_WORD_SIZE16_0 gen3_1__gen4_1__mac_inst ( .a(
        left_fwd[24:31]), .b(top_fwd[24:31]), .a_fwd({SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, 
        SYNOPSYS_UNCONNECTED_24}), .b_fwd({SYNOPSYS_UNCONNECTED_25, 
        SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, 
        SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, 
        SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31, 
        SYNOPSYS_UNCONNECTED_32}), .out(pe_register_vals[48:63]), .clk(clk), 
        .clear(rst) );
  systolic_array_DW01_inc_0 add_108 ( .A(cycles_count), .SUM({N19, N18, N17, 
        N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4}) );
  INV_X1 U40 ( .I(rst), .ZN(n28) );
  NOR2_X1 U41 ( .A1(rst), .A2(n21), .ZN(n22) );
  NOR2_X1 U42 ( .A1(compute_done), .A2(N20), .ZN(n21) );
  NOR2_X1 U43 ( .A1(cycles_count[11]), .A2(cycles_count[10]), .ZN(n27) );
  OAI21_X1 U44 ( .A1(cycles_count[1]), .A2(cycles_count[2]), .B(
        cycles_count[3]), .ZN(n26) );
  NOR3_X1 U45 ( .A1(cycles_count[12]), .A2(cycles_count[14]), .A3(
        cycles_count[13]), .ZN(n25) );
  OR4_X1 U46 ( .A1(cycles_count[7]), .A2(cycles_count[6]), .A3(cycles_count[9]), .A4(cycles_count[8]), .Z(n23) );
  NOR4_X1 U47 ( .A1(n23), .A2(cycles_count[15]), .A3(cycles_count[5]), .A4(
        cycles_count[4]), .ZN(n24) );
  NAND4_X1 U48 ( .A1(n27), .A2(n26), .A3(n25), .A4(n24), .ZN(N20) );
endmodule

