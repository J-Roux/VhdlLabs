// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Tue Oct  4 15:25:54 2016
// Host        : KMD-NB running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/stargrif/VhdlLabs/Lab2/Lab2.sim/sim_2/synth/timing/TestbenchSyncCountUD_time_synth.v
// Design      : SyncCountUD
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module DTrigger
   (value_reg_P_0,
    value_reg_P_1,
    value_reg_P_2,
    CtrlIn_C_2,
    value_reg_P_3,
    value_reg_P_4,
    value_reg_P_5,
    value_reg_P_6,
    value_reg_P_7,
    TrOut1_OBUF,
    Input_clk_IBUF_BUFG,
    Crtl_1,
    S1_IBUF,
    value_reg_P_8,
    value_reg_P_9,
    H_IBUF,
    value_reg_P_10,
    TrOut8_OBUF,
    S0_IBUF,
    G_IBUF,
    TrOut7_OBUF,
    F_IBUF,
    value_reg_P_11,
    TrOut6_OBUF,
    E_IBUF,
    value_reg_P_12,
    TrOut5_OBUF,
    B_IBUF,
    TrOut2_OBUF,
    A_IBUF,
    IENT_IBUF,
    IENP_IBUF);
  output value_reg_P_0;
  output value_reg_P_1;
  output value_reg_P_2;
  output CtrlIn_C_2;
  output value_reg_P_3;
  output value_reg_P_4;
  output value_reg_P_5;
  output value_reg_P_6;
  output value_reg_P_7;
  output TrOut1_OBUF;
  input Input_clk_IBUF_BUFG;
  input Crtl_1;
  input S1_IBUF;
  input value_reg_P_8;
  input value_reg_P_9;
  input H_IBUF;
  input value_reg_P_10;
  input TrOut8_OBUF;
  input S0_IBUF;
  input G_IBUF;
  input TrOut7_OBUF;
  input F_IBUF;
  input value_reg_P_11;
  input TrOut6_OBUF;
  input E_IBUF;
  input value_reg_P_12;
  input TrOut5_OBUF;
  input B_IBUF;
  input TrOut2_OBUF;
  input A_IBUF;
  input IENT_IBUF;
  input IENP_IBUF;

  wire A_IBUF;
  wire B_IBUF;
  wire Crtl_1;
  wire CtrlIn_C_2;
  wire E_IBUF;
  wire F_IBUF;
  wire G_IBUF;
  wire H_IBUF;
  wire IENP_IBUF;
  wire IENT_IBUF;
  wire Input_clk_IBUF_BUFG;
  wire S0_IBUF;
  wire S1_IBUF;
  wire TrOut1_OBUF;
  wire TrOut2_OBUF;
  wire TrOut5_OBUF;
  wire TrOut6_OBUF;
  wire TrOut7_OBUF;
  wire TrOut8_OBUF;
  wire value_reg_LDC_i_1__6_n_0;
  wire value_reg_P_0;
  wire value_reg_P_1;
  wire value_reg_P_10;
  wire value_reg_P_11;
  wire value_reg_P_12;
  wire value_reg_P_2;
  wire value_reg_P_3;
  wire value_reg_P_4;
  wire value_reg_P_5;
  wire value_reg_P_6;
  wire value_reg_P_7;
  wire value_reg_P_8;
  wire value_reg_P_9;

  LUT2 #(
    .INIT(4'h8)) 
    QA_OBUF_inst_i_1
       (.I0(value_reg_P_0),
        .I1(value_reg_P_2),
        .O(TrOut1_OBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    value_reg_LDC
       (.CLR(value_reg_P_1),
        .D(1'b1),
        .G(value_reg_LDC_i_1__6_n_0),
        .GE(1'b1),
        .Q(value_reg_P_0));
  LUT6 #(
    .INIT(64'h00707707FF0FFF0F)) 
    value_reg_LDC_i_1
       (.I0(H_IBUF),
        .I1(S1_IBUF),
        .I2(CtrlIn_C_2),
        .I3(value_reg_P_10),
        .I4(TrOut8_OBUF),
        .I5(S0_IBUF),
        .O(value_reg_P_3));
  LUT6 #(
    .INIT(64'h0070FF0F7707FF0F)) 
    value_reg_LDC_i_1__0
       (.I0(G_IBUF),
        .I1(S1_IBUF),
        .I2(CtrlIn_C_2),
        .I3(value_reg_P_10),
        .I4(S0_IBUF),
        .I5(TrOut7_OBUF),
        .O(value_reg_P_4));
  LUT6 #(
    .INIT(64'h00707707FF0FFF0F)) 
    value_reg_LDC_i_1__1
       (.I0(F_IBUF),
        .I1(S1_IBUF),
        .I2(CtrlIn_C_2),
        .I3(value_reg_P_11),
        .I4(TrOut6_OBUF),
        .I5(S0_IBUF),
        .O(value_reg_P_5));
  LUT6 #(
    .INIT(64'h00707707FF0FFF0F)) 
    value_reg_LDC_i_1__2
       (.I0(E_IBUF),
        .I1(S1_IBUF),
        .I2(CtrlIn_C_2),
        .I3(value_reg_P_12),
        .I4(TrOut5_OBUF),
        .I5(S0_IBUF),
        .O(value_reg_P_6));
  LUT6 #(
    .INIT(64'h400C15F33FF33FF3)) 
    value_reg_LDC_i_1__4
       (.I0(B_IBUF),
        .I1(Crtl_1),
        .I2(TrOut1_OBUF),
        .I3(S1_IBUF),
        .I4(TrOut2_OBUF),
        .I5(S0_IBUF),
        .O(value_reg_P_7));
  LUT6 #(
    .INIT(64'h0F0F0F007F7F7F70)) 
    value_reg_LDC_i_1__6
       (.I0(A_IBUF),
        .I1(S1_IBUF),
        .I2(S0_IBUF),
        .I3(IENT_IBUF),
        .I4(IENP_IBUF),
        .I5(TrOut1_OBUF),
        .O(value_reg_LDC_i_1__6_n_0));
  LUT6 #(
    .INIT(64'h0222800080008000)) 
    value_reg_LDC_i_2__2
       (.I0(Crtl_1),
        .I1(S1_IBUF),
        .I2(value_reg_P_0),
        .I3(value_reg_P_2),
        .I4(value_reg_P_8),
        .I5(value_reg_P_9),
        .O(CtrlIn_C_2));
  LUT2 #(
    .INIT(4'hE)) 
    value_reg_LDC_i_2__4
       (.I0(S0_IBUF),
        .I1(S1_IBUF),
        .O(value_reg_P_1));
  FDPE #(
    .INIT(1'b1)) 
    value_reg_P
       (.C(Input_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(value_reg_LDC_i_1__6_n_0),
        .Q(value_reg_P_2));
endmodule

(* ORIG_REF_NAME = "DTrigger" *) 
module DTrigger_0
   (value_reg_P_0,
    value_reg_P_1,
    IRCO,
    TrOut2_OBUF,
    value_reg_P_2,
    S1,
    Input_clk_IBUF_BUFG,
    IENT_IBUF,
    TrOut6_OBUF,
    S1_IBUF,
    value_reg_P_3,
    TrOut5_OBUF,
    value_reg_P_4,
    value_reg_P_5);
  output value_reg_P_0;
  output value_reg_P_1;
  output IRCO;
  output TrOut2_OBUF;
  input value_reg_P_2;
  input S1;
  input Input_clk_IBUF_BUFG;
  input IENT_IBUF;
  input TrOut6_OBUF;
  input S1_IBUF;
  input value_reg_P_3;
  input TrOut5_OBUF;
  input value_reg_P_4;
  input value_reg_P_5;

  wire IENT_IBUF;
  wire IRCO;
  wire IRCO_OBUF_inst_i_3_n_0;
  wire Input_clk_IBUF_BUFG;
  wire S1;
  wire S1_IBUF;
  wire TrOut2_OBUF;
  wire TrOut5_OBUF;
  wire TrOut6_OBUF;
  wire value_reg_P_0;
  wire value_reg_P_1;
  wire value_reg_P_2;
  wire value_reg_P_3;
  wire value_reg_P_4;
  wire value_reg_P_5;

  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFDFF)) 
    IRCO_OBUF_inst_i_2
       (.I0(IENT_IBUF),
        .I1(IRCO_OBUF_inst_i_3_n_0),
        .I2(TrOut6_OBUF),
        .I3(S1_IBUF),
        .I4(value_reg_P_3),
        .I5(TrOut5_OBUF),
        .O(IRCO));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8FFFF777)) 
    IRCO_OBUF_inst_i_3
       (.I0(value_reg_P_0),
        .I1(value_reg_P_1),
        .I2(value_reg_P_4),
        .I3(value_reg_P_5),
        .I4(S1_IBUF),
        .O(IRCO_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    QB_OBUF_inst_i_1
       (.I0(value_reg_P_0),
        .I1(value_reg_P_1),
        .O(TrOut2_OBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    value_reg_LDC
       (.CLR(S1),
        .D(1'b1),
        .G(value_reg_P_2),
        .GE(1'b1),
        .Q(value_reg_P_0));
  FDPE #(
    .INIT(1'b1)) 
    value_reg_P
       (.C(Input_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(value_reg_P_2),
        .Q(value_reg_P_1));
endmodule

(* ORIG_REF_NAME = "DTrigger" *) 
module DTrigger_1
   (value_reg_P_0,
    value_reg_P_1,
    value_reg_P_2,
    Crtl_1,
    value_reg_P_3,
    TrOut3_OBUF,
    S1,
    Input_clk_IBUF_BUFG,
    S1_IBUF,
    value_reg_P_4,
    value_reg_P_5,
    S0_IBUF,
    IENT_IBUF,
    IENP_IBUF,
    D_IBUF,
    CtrlIn_C_2,
    TrOut4_OBUF,
    C_IBUF);
  output value_reg_P_0;
  output value_reg_P_1;
  output value_reg_P_2;
  output Crtl_1;
  output value_reg_P_3;
  output TrOut3_OBUF;
  input S1;
  input Input_clk_IBUF_BUFG;
  input S1_IBUF;
  input value_reg_P_4;
  input value_reg_P_5;
  input S0_IBUF;
  input IENT_IBUF;
  input IENP_IBUF;
  input D_IBUF;
  input CtrlIn_C_2;
  input TrOut4_OBUF;
  input C_IBUF;

  wire C_IBUF;
  wire Crtl_1;
  wire CtrlIn_C_2;
  wire D_IBUF;
  wire IENP_IBUF;
  wire IENT_IBUF;
  wire Input_clk_IBUF_BUFG;
  wire S0_IBUF;
  wire S1;
  wire S1_IBUF;
  wire TrOut3_OBUF;
  wire TrOut4_OBUF;
  wire value_reg_LDC_i_1__5_n_0;
  wire value_reg_P_0;
  wire value_reg_P_1;
  wire value_reg_P_2;
  wire value_reg_P_3;
  wire value_reg_P_4;
  wire value_reg_P_5;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    QC_OBUF_inst_i_1
       (.I0(value_reg_P_0),
        .I1(value_reg_P_1),
        .O(TrOut3_OBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    value_reg_LDC
       (.CLR(S1),
        .D(1'b1),
        .G(value_reg_LDC_i_1__5_n_0),
        .GE(1'b1),
        .Q(value_reg_P_0));
  LUT6 #(
    .INIT(64'h34004377C3FFC3FF)) 
    value_reg_LDC_i_1__3
       (.I0(D_IBUF),
        .I1(S1_IBUF),
        .I2(TrOut3_OBUF),
        .I3(CtrlIn_C_2),
        .I4(TrOut4_OBUF),
        .I5(S0_IBUF),
        .O(value_reg_P_3));
  LUT6 #(
    .INIT(64'h700707070F0F0F0F)) 
    value_reg_LDC_i_1__5
       (.I0(C_IBUF),
        .I1(S1_IBUF),
        .I2(CtrlIn_C_2),
        .I3(value_reg_P_1),
        .I4(value_reg_P_0),
        .I5(S0_IBUF),
        .O(value_reg_LDC_i_1__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF78F8F8F)) 
    value_reg_LDC_i_2__1
       (.I0(value_reg_P_0),
        .I1(value_reg_P_1),
        .I2(S1_IBUF),
        .I3(value_reg_P_4),
        .I4(value_reg_P_5),
        .O(value_reg_P_2));
  LUT3 #(
    .INIT(8'h01)) 
    value_reg_LDC_i_2__3
       (.I0(S0_IBUF),
        .I1(IENT_IBUF),
        .I2(IENP_IBUF),
        .O(Crtl_1));
  FDPE #(
    .INIT(1'b1)) 
    value_reg_P
       (.C(Input_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(value_reg_LDC_i_1__5_n_0),
        .Q(value_reg_P_1));
endmodule

(* ORIG_REF_NAME = "DTrigger" *) 
module DTrigger_2
   (value_reg_P_0,
    value_reg_P_1,
    value_reg_P_2,
    TrOut4_OBUF,
    value_reg_P_3,
    S1,
    Input_clk_IBUF_BUFG,
    value_reg_P_4,
    value_reg_P_5,
    S1_IBUF,
    TrOut5_OBUF);
  output value_reg_P_0;
  output value_reg_P_1;
  output value_reg_P_2;
  output TrOut4_OBUF;
  input value_reg_P_3;
  input S1;
  input Input_clk_IBUF_BUFG;
  input value_reg_P_4;
  input value_reg_P_5;
  input S1_IBUF;
  input TrOut5_OBUF;

  wire Input_clk_IBUF_BUFG;
  wire S1;
  wire S1_IBUF;
  wire TrOut4_OBUF;
  wire TrOut5_OBUF;
  wire value_reg_P_0;
  wire value_reg_P_1;
  wire value_reg_P_2;
  wire value_reg_P_3;
  wire value_reg_P_4;
  wire value_reg_P_5;

  LUT2 #(
    .INIT(4'h8)) 
    QD_OBUF_inst_i_1
       (.I0(value_reg_P_0),
        .I1(value_reg_P_1),
        .O(TrOut4_OBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    value_reg_LDC
       (.CLR(S1),
        .D(1'b1),
        .G(value_reg_P_3),
        .GE(1'b1),
        .Q(value_reg_P_0));
  LUT6 #(
    .INIT(64'hFFFF7FFFF888FFFF)) 
    value_reg_LDC_i_2__0
       (.I0(value_reg_P_1),
        .I1(value_reg_P_0),
        .I2(value_reg_P_4),
        .I3(value_reg_P_5),
        .I4(S1_IBUF),
        .I5(TrOut5_OBUF),
        .O(value_reg_P_2));
  FDPE #(
    .INIT(1'b1)) 
    value_reg_P
       (.C(Input_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(value_reg_P_3),
        .Q(value_reg_P_1));
endmodule

(* ORIG_REF_NAME = "DTrigger" *) 
module DTrigger_3
   (value_reg_P_0,
    TrOut5_OBUF,
    value_reg_P_1,
    S1,
    Input_clk_IBUF_BUFG,
    value_reg_P_2,
    S1_IBUF,
    value_reg_P_3,
    value_reg_P_4);
  output value_reg_P_0;
  output TrOut5_OBUF;
  input value_reg_P_1;
  input S1;
  input Input_clk_IBUF_BUFG;
  input value_reg_P_2;
  input S1_IBUF;
  input value_reg_P_3;
  input value_reg_P_4;

  wire Input_clk_IBUF_BUFG;
  wire S1;
  wire S1_IBUF;
  wire TrOut5_OBUF;
  wire value_reg_LDC_n_0;
  wire value_reg_P_0;
  wire value_reg_P_1;
  wire value_reg_P_2;
  wire value_reg_P_3;
  wire value_reg_P_4;
  wire value_reg_P_n_0;

  LUT2 #(
    .INIT(4'h8)) 
    QE_OBUF_inst_i_1
       (.I0(value_reg_LDC_n_0),
        .I1(value_reg_P_n_0),
        .O(TrOut5_OBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    value_reg_LDC
       (.CLR(S1),
        .D(1'b1),
        .G(value_reg_P_1),
        .GE(1'b1),
        .Q(value_reg_LDC_n_0));
  LUT6 #(
    .INIT(64'hFFF7F8FFF8FFF8FF)) 
    value_reg_LDC_i_2
       (.I0(value_reg_P_n_0),
        .I1(value_reg_LDC_n_0),
        .I2(value_reg_P_2),
        .I3(S1_IBUF),
        .I4(value_reg_P_3),
        .I5(value_reg_P_4),
        .O(value_reg_P_0));
  FDPE #(
    .INIT(1'b1)) 
    value_reg_P
       (.C(Input_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(value_reg_P_1),
        .Q(value_reg_P_n_0));
endmodule

(* ORIG_REF_NAME = "DTrigger" *) 
module DTrigger_4
   (value_reg_P_0,
    value_reg_P_1,
    TrOut6_OBUF,
    value_reg_P_2,
    S1,
    Input_clk_IBUF_BUFG);
  output value_reg_P_0;
  output value_reg_P_1;
  output TrOut6_OBUF;
  input value_reg_P_2;
  input S1;
  input Input_clk_IBUF_BUFG;

  wire Input_clk_IBUF_BUFG;
  wire S1;
  wire TrOut6_OBUF;
  wire value_reg_P_0;
  wire value_reg_P_1;
  wire value_reg_P_2;

  LUT2 #(
    .INIT(4'h8)) 
    QF_OBUF_inst_i_1
       (.I0(value_reg_P_0),
        .I1(value_reg_P_1),
        .O(TrOut6_OBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    value_reg_LDC
       (.CLR(S1),
        .D(1'b1),
        .G(value_reg_P_2),
        .GE(1'b1),
        .Q(value_reg_P_0));
  FDPE #(
    .INIT(1'b1)) 
    value_reg_P
       (.C(Input_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(value_reg_P_2),
        .Q(value_reg_P_1));
endmodule

(* ORIG_REF_NAME = "DTrigger" *) 
module DTrigger_5
   (TrOut7_OBUF,
    value_reg_P_0,
    S1,
    Input_clk_IBUF_BUFG);
  output TrOut7_OBUF;
  input value_reg_P_0;
  input S1;
  input Input_clk_IBUF_BUFG;

  wire Input_clk_IBUF_BUFG;
  wire S1;
  wire TrOut7_OBUF;
  wire value_reg_LDC_n_0;
  wire value_reg_P_0;
  wire value_reg_P_n_0;

  LUT2 #(
    .INIT(4'h8)) 
    QG_OBUF_inst_i_1
       (.I0(value_reg_LDC_n_0),
        .I1(value_reg_P_n_0),
        .O(TrOut7_OBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    value_reg_LDC
       (.CLR(S1),
        .D(1'b1),
        .G(value_reg_P_0),
        .GE(1'b1),
        .Q(value_reg_LDC_n_0));
  FDPE #(
    .INIT(1'b1)) 
    value_reg_P
       (.C(Input_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(value_reg_P_0),
        .Q(value_reg_P_n_0));
endmodule

(* ORIG_REF_NAME = "DTrigger" *) 
module DTrigger_6
   (IRCO_OBUF,
    TrOut8_OBUF,
    value_reg_P_0,
    S1,
    Input_clk_IBUF_BUFG,
    S0_IBUF,
    S1_IBUF,
    TrOut1_OBUF,
    value_reg_P_1);
  output IRCO_OBUF;
  output TrOut8_OBUF;
  input value_reg_P_0;
  input S1;
  input Input_clk_IBUF_BUFG;
  input S0_IBUF;
  input S1_IBUF;
  input TrOut1_OBUF;
  input value_reg_P_1;

  wire IRCO_OBUF;
  wire Input_clk_IBUF_BUFG;
  wire S0_IBUF;
  wire S1;
  wire S1_IBUF;
  wire TrOut1_OBUF;
  wire TrOut8_OBUF;
  wire value_reg_LDC_n_0;
  wire value_reg_P_0;
  wire value_reg_P_1;
  wire value_reg_P_n_0;

  LUT6 #(
    .INIT(64'hFFFFFFFFFD7F7F7F)) 
    IRCO_OBUF_inst_i_1
       (.I0(S0_IBUF),
        .I1(S1_IBUF),
        .I2(TrOut1_OBUF),
        .I3(value_reg_P_n_0),
        .I4(value_reg_LDC_n_0),
        .I5(value_reg_P_1),
        .O(IRCO_OBUF));
  LUT2 #(
    .INIT(4'h8)) 
    QH_OBUF_inst_i_1
       (.I0(value_reg_LDC_n_0),
        .I1(value_reg_P_n_0),
        .O(TrOut8_OBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    value_reg_LDC
       (.CLR(S1),
        .D(1'b1),
        .G(value_reg_P_0),
        .GE(1'b1),
        .Q(value_reg_LDC_n_0));
  FDPE #(
    .INIT(1'b1)) 
    value_reg_P
       (.C(Input_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(value_reg_P_0),
        .Q(value_reg_P_n_0));
endmodule

(* NotValidForBitStream *)
module SyncCountUD
   (Input_clk,
    S0,
    S1,
    IENP,
    A,
    B,
    C,
    D,
    E,
    F,
    G,
    H,
    IENT,
    QA,
    QB,
    QC,
    QD,
    QE,
    QF,
    QG,
    QH,
    IRCO,
    TrOut1,
    TrOut2,
    TrOut3,
    TrOut4,
    TrOut5,
    TrOut6,
    TrOut7,
    TrOut8);
  input Input_clk;
  input S0;
  input S1;
  input IENP;
  input A;
  input B;
  input C;
  input D;
  input E;
  input F;
  input G;
  input H;
  input IENT;
  output QA;
  output QB;
  output QC;
  output QD;
  output QE;
  output QF;
  output QG;
  output QH;
  output IRCO;
  output TrOut1;
  output TrOut2;
  output TrOut3;
  output TrOut4;
  output TrOut5;
  output TrOut6;
  output TrOut7;
  output TrOut8;

  wire A;
  wire A_IBUF;
  wire B;
  wire B_IBUF;
  wire C;
  wire C_IBUF;
  wire Crtl_1;
  wire CtrlIn_C_2;
  wire D;
  wire D_IBUF;
  wire E;
  wire E_IBUF;
  wire F;
  wire F_IBUF;
  wire G;
  wire G_IBUF;
  wire H;
  wire H_IBUF;
  wire IENP;
  wire IENP_IBUF;
  wire IENT;
  wire IENT_IBUF;
  wire IRCO;
  wire IRCO_OBUF;
  wire Input_clk;
  wire Input_clk_IBUF;
  wire Input_clk_IBUF_BUFG;
  wire QA;
  wire QB;
  wire QC;
  wire QD;
  wire QE;
  wire QF;
  wire QG;
  wire QH;
  wire S0;
  wire S0_IBUF;
  wire S1;
  wire S1_IBUF;
  wire TA_n_0;
  wire TA_n_1;
  wire TA_n_2;
  wire TA_n_4;
  wire TA_n_5;
  wire TA_n_6;
  wire TA_n_7;
  wire TA_n_8;
  wire TB_n_0;
  wire TB_n_1;
  wire TB_n_2;
  wire TC_n_0;
  wire TC_n_1;
  wire TC_n_2;
  wire TC_n_4;
  wire TD_n_0;
  wire TD_n_1;
  wire TD_n_2;
  wire TE_n_0;
  wire TF_n_0;
  wire TF_n_1;
  wire TrOut1;
  wire TrOut1_OBUF;
  wire TrOut2;
  wire TrOut2_OBUF;
  wire TrOut3;
  wire TrOut3_OBUF;
  wire TrOut4;
  wire TrOut4_OBUF;
  wire TrOut5;
  wire TrOut5_OBUF;
  wire TrOut6;
  wire TrOut6_OBUF;
  wire TrOut7;
  wire TrOut7_OBUF;
  wire TrOut8;
  wire TrOut8_OBUF;

initial begin
 $sdf_annotate("TestbenchSyncCountUD_time_synth.sdf",,,,"tool_control");
end
  IBUF A_IBUF_inst
       (.I(A),
        .O(A_IBUF));
  IBUF B_IBUF_inst
       (.I(B),
        .O(B_IBUF));
  IBUF C_IBUF_inst
       (.I(C),
        .O(C_IBUF));
  IBUF D_IBUF_inst
       (.I(D),
        .O(D_IBUF));
  IBUF E_IBUF_inst
       (.I(E),
        .O(E_IBUF));
  IBUF F_IBUF_inst
       (.I(F),
        .O(F_IBUF));
  IBUF G_IBUF_inst
       (.I(G),
        .O(G_IBUF));
  IBUF H_IBUF_inst
       (.I(H),
        .O(H_IBUF));
  IBUF IENP_IBUF_inst
       (.I(IENP),
        .O(IENP_IBUF));
  IBUF IENT_IBUF_inst
       (.I(IENT),
        .O(IENT_IBUF));
  OBUF IRCO_OBUF_inst
       (.I(IRCO_OBUF),
        .O(IRCO));
  BUFG Input_clk_IBUF_BUFG_inst
       (.I(Input_clk_IBUF),
        .O(Input_clk_IBUF_BUFG));
  IBUF Input_clk_IBUF_inst
       (.I(Input_clk),
        .O(Input_clk_IBUF));
  OBUF QA_OBUF_inst
       (.I(TrOut1_OBUF),
        .O(QA));
  OBUF QB_OBUF_inst
       (.I(TrOut2_OBUF),
        .O(QB));
  OBUF QC_OBUF_inst
       (.I(TrOut3_OBUF),
        .O(QC));
  OBUF QD_OBUF_inst
       (.I(TrOut4_OBUF),
        .O(QD));
  OBUF QE_OBUF_inst
       (.I(TrOut5_OBUF),
        .O(QE));
  OBUF QF_OBUF_inst
       (.I(TrOut6_OBUF),
        .O(QF));
  OBUF QG_OBUF_inst
       (.I(TrOut7_OBUF),
        .O(QG));
  OBUF QH_OBUF_inst
       (.I(TrOut8_OBUF),
        .O(QH));
  IBUF S0_IBUF_inst
       (.I(S0),
        .O(S0_IBUF));
  IBUF S1_IBUF_inst
       (.I(S1),
        .O(S1_IBUF));
  DTrigger TA
       (.A_IBUF(A_IBUF),
        .B_IBUF(B_IBUF),
        .Crtl_1(Crtl_1),
        .CtrlIn_C_2(CtrlIn_C_2),
        .E_IBUF(E_IBUF),
        .F_IBUF(F_IBUF),
        .G_IBUF(G_IBUF),
        .H_IBUF(H_IBUF),
        .IENP_IBUF(IENP_IBUF),
        .IENT_IBUF(IENT_IBUF),
        .Input_clk_IBUF_BUFG(Input_clk_IBUF_BUFG),
        .S0_IBUF(S0_IBUF),
        .S1_IBUF(S1_IBUF),
        .TrOut1_OBUF(TrOut1_OBUF),
        .TrOut2_OBUF(TrOut2_OBUF),
        .TrOut5_OBUF(TrOut5_OBUF),
        .TrOut6_OBUF(TrOut6_OBUF),
        .TrOut7_OBUF(TrOut7_OBUF),
        .TrOut8_OBUF(TrOut8_OBUF),
        .value_reg_P_0(TA_n_0),
        .value_reg_P_1(TA_n_1),
        .value_reg_P_10(TE_n_0),
        .value_reg_P_11(TD_n_2),
        .value_reg_P_12(TC_n_2),
        .value_reg_P_2(TA_n_2),
        .value_reg_P_3(TA_n_4),
        .value_reg_P_4(TA_n_5),
        .value_reg_P_5(TA_n_6),
        .value_reg_P_6(TA_n_7),
        .value_reg_P_7(TA_n_8),
        .value_reg_P_8(TB_n_1),
        .value_reg_P_9(TB_n_0));
  DTrigger_0 TB
       (.IENT_IBUF(IENT_IBUF),
        .IRCO(TB_n_2),
        .Input_clk_IBUF_BUFG(Input_clk_IBUF_BUFG),
        .S1(TA_n_1),
        .S1_IBUF(S1_IBUF),
        .TrOut2_OBUF(TrOut2_OBUF),
        .TrOut5_OBUF(TrOut5_OBUF),
        .TrOut6_OBUF(TrOut6_OBUF),
        .value_reg_P_0(TB_n_0),
        .value_reg_P_1(TB_n_1),
        .value_reg_P_2(TA_n_8),
        .value_reg_P_3(TC_n_2),
        .value_reg_P_4(TA_n_2),
        .value_reg_P_5(TA_n_0));
  DTrigger_1 TC
       (.C_IBUF(C_IBUF),
        .Crtl_1(Crtl_1),
        .CtrlIn_C_2(CtrlIn_C_2),
        .D_IBUF(D_IBUF),
        .IENP_IBUF(IENP_IBUF),
        .IENT_IBUF(IENT_IBUF),
        .Input_clk_IBUF_BUFG(Input_clk_IBUF_BUFG),
        .S0_IBUF(S0_IBUF),
        .S1(TA_n_1),
        .S1_IBUF(S1_IBUF),
        .TrOut3_OBUF(TrOut3_OBUF),
        .TrOut4_OBUF(TrOut4_OBUF),
        .value_reg_P_0(TC_n_0),
        .value_reg_P_1(TC_n_1),
        .value_reg_P_2(TC_n_2),
        .value_reg_P_3(TC_n_4),
        .value_reg_P_4(TD_n_0),
        .value_reg_P_5(TD_n_1));
  DTrigger_2 TD
       (.Input_clk_IBUF_BUFG(Input_clk_IBUF_BUFG),
        .S1(TA_n_1),
        .S1_IBUF(S1_IBUF),
        .TrOut4_OBUF(TrOut4_OBUF),
        .TrOut5_OBUF(TrOut5_OBUF),
        .value_reg_P_0(TD_n_0),
        .value_reg_P_1(TD_n_1),
        .value_reg_P_2(TD_n_2),
        .value_reg_P_3(TC_n_4),
        .value_reg_P_4(TC_n_1),
        .value_reg_P_5(TC_n_0));
  DTrigger_3 TE
       (.Input_clk_IBUF_BUFG(Input_clk_IBUF_BUFG),
        .S1(TA_n_1),
        .S1_IBUF(S1_IBUF),
        .TrOut5_OBUF(TrOut5_OBUF),
        .value_reg_P_0(TE_n_0),
        .value_reg_P_1(TA_n_7),
        .value_reg_P_2(TC_n_2),
        .value_reg_P_3(TF_n_0),
        .value_reg_P_4(TF_n_1));
  DTrigger_4 TF
       (.Input_clk_IBUF_BUFG(Input_clk_IBUF_BUFG),
        .S1(TA_n_1),
        .TrOut6_OBUF(TrOut6_OBUF),
        .value_reg_P_0(TF_n_0),
        .value_reg_P_1(TF_n_1),
        .value_reg_P_2(TA_n_6));
  DTrigger_5 TG
       (.Input_clk_IBUF_BUFG(Input_clk_IBUF_BUFG),
        .S1(TA_n_1),
        .TrOut7_OBUF(TrOut7_OBUF),
        .value_reg_P_0(TA_n_5));
  DTrigger_6 TH
       (.IRCO_OBUF(IRCO_OBUF),
        .Input_clk_IBUF_BUFG(Input_clk_IBUF_BUFG),
        .S0_IBUF(S0_IBUF),
        .S1(TA_n_1),
        .S1_IBUF(S1_IBUF),
        .TrOut1_OBUF(TrOut1_OBUF),
        .TrOut8_OBUF(TrOut8_OBUF),
        .value_reg_P_0(TA_n_4),
        .value_reg_P_1(TB_n_2));
  OBUF TrOut1_OBUF_inst
       (.I(TrOut1_OBUF),
        .O(TrOut1));
  OBUF TrOut2_OBUF_inst
       (.I(TrOut2_OBUF),
        .O(TrOut2));
  OBUF TrOut3_OBUF_inst
       (.I(TrOut3_OBUF),
        .O(TrOut3));
  OBUF TrOut4_OBUF_inst
       (.I(TrOut4_OBUF),
        .O(TrOut4));
  OBUF TrOut5_OBUF_inst
       (.I(TrOut5_OBUF),
        .O(TrOut5));
  OBUF TrOut6_OBUF_inst
       (.I(TrOut6_OBUF),
        .O(TrOut6));
  OBUF TrOut7_OBUF_inst
       (.I(TrOut7_OBUF),
        .O(TrOut7));
  OBUF TrOut8_OBUF_inst
       (.I(TrOut8_OBUF),
        .O(TrOut8));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
