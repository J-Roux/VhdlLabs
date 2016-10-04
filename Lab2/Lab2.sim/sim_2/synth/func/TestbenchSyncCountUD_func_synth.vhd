-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Tue Oct  4 17:15:23 2016
-- Host        : KMD-NB running 64-bit Ubuntu 16.04.1 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/stargrif/VhdlLabs/Lab2/Lab2.sim/sim_2/synth/func/TestbenchSyncCountUD_func_synth.vhd
-- Design      : SyncCountUD
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DTrigger is
  port (
    TrOut1_OBUF : out STD_LOGIC;
    TrOut8_OBUF : out STD_LOGIC;
    CtrlIn_C_2 : out STD_LOGIC;
    TrOut7_OBUF : out STD_LOGIC;
    TrOut6_OBUF : out STD_LOGIC;
    TrOut5_OBUF : out STD_LOGIC;
    TrOut3_OBUF : out STD_LOGIC;
    TrOut2_OBUF : out STD_LOGIC;
    IRCO_OBUF : out STD_LOGIC;
    QA_OBUF : out STD_LOGIC;
    IQ_reg_0 : out STD_LOGIC;
    Input_clk_IBUF_BUFG : in STD_LOGIC;
    p_31_in : in STD_LOGIC;
    S0_IBUF : in STD_LOGIC;
    S1_IBUF : in STD_LOGIC;
    A_IBUF : in STD_LOGIC;
    IENP_IBUF : in STD_LOGIC;
    IENT_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC;
    OutQ_H : in STD_LOGIC;
    H_IBUF : in STD_LOGIC;
    OutQ_G : in STD_LOGIC;
    G_IBUF : in STD_LOGIC;
    IQ_reg_1 : in STD_LOGIC;
    OutQ_F : in STD_LOGIC;
    F_IBUF : in STD_LOGIC;
    IQ_reg_2 : in STD_LOGIC;
    OutQ_E : in STD_LOGIC;
    E_IBUF : in STD_LOGIC;
    OutQ_C : in STD_LOGIC;
    C_IBUF : in STD_LOGIC;
    OutQ_B : in STD_LOGIC;
    B_IBUF : in STD_LOGIC;
    IQ_reg_3 : in STD_LOGIC;
    CtrlOut_F : in STD_LOGIC;
    CtrlOut_E : in STD_LOGIC;
    IQ22_in : in STD_LOGIC
  );
end DTrigger;

architecture STRUCTURE of DTrigger is
  signal CtrlIn_B_2 : STD_LOGIC;
  signal \^ctrlin_c_2\ : STD_LOGIC;
  signal IQ0_in : STD_LOGIC;
  signal IRCO_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal IRCO_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal Q : STD_LOGIC;
  signal \^trout1_obuf\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \IQ_i_1__5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of TrOut2_OBUF_inst_i_1 : label is "soft_lutpair0";
begin
  CtrlIn_C_2 <= \^ctrlin_c_2\;
  TrOut1_OBUF <= \^trout1_obuf\;
IQ_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15BF15BF15BFBF15"
    )
        port map (
      I0 => S0_IBUF,
      I1 => S1_IBUF,
      I2 => A_IBUF,
      I3 => Q,
      I4 => IENP_IBUF,
      I5 => IENT_IBUF,
      O => p_0_in
    );
\IQ_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99059955"
    )
        port map (
      I0 => CtrlIn_B_2,
      I1 => OutQ_B,
      I2 => S1_IBUF,
      I3 => S0_IBUF,
      I4 => B_IBUF,
      O => IQ_reg_0
    );
IQ_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => p_0_in,
      PRE => p_31_in,
      Q => IQ0_in
    );
IRCO_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FFFFFDFDFDFD"
    )
        port map (
      I0 => IQ0_in,
      I1 => IQ_reg_3,
      I2 => IRCO_OBUF_inst_i_2_n_0,
      I3 => OutQ_H,
      I4 => Q,
      I5 => S1_IBUF,
      O => IRCO_OBUF
    );
IRCO_OBUF_inst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFFFFF"
    )
        port map (
      I0 => IENT_IBUF,
      I1 => IRCO_OBUF_inst_i_3_n_0,
      I2 => CtrlOut_F,
      I3 => IQ_reg_2,
      I4 => CtrlOut_E,
      O => IRCO_OBUF_inst_i_2_n_0
    );
IRCO_OBUF_inst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF5DDDDFFF5"
    )
        port map (
      I0 => S0_IBUF,
      I1 => IQ0_in,
      I2 => Q,
      I3 => IQ22_in,
      I4 => S1_IBUF,
      I5 => OutQ_B,
      O => IRCO_OBUF_inst_i_3_n_0
    );
QA_OBUF_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => IQ0_in,
      O => QA_OBUF
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      CLR => p_31_in,
      D => \^trout1_obuf\,
      Q => Q
    );
TrOut1_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1E1E1E1FF000000"
    )
        port map (
      I0 => IENT_IBUF,
      I1 => IENP_IBUF,
      I2 => Q,
      I3 => A_IBUF,
      I4 => S1_IBUF,
      I5 => S0_IBUF,
      O => \^trout1_obuf\
    );
TrOut2_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66FA66AA"
    )
        port map (
      I0 => CtrlIn_B_2,
      I1 => OutQ_B,
      I2 => S1_IBUF,
      I3 => S0_IBUF,
      I4 => B_IBUF,
      O => TrOut2_OBUF
    );
TrOut2_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000101010"
    )
        port map (
      I0 => IENT_IBUF,
      I1 => IENP_IBUF,
      I2 => S0_IBUF,
      I3 => IQ0_in,
      I4 => S1_IBUF,
      I5 => Q,
      O => CtrlIn_B_2
    );
TrOut3_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66FA66AA"
    )
        port map (
      I0 => \^ctrlin_c_2\,
      I1 => OutQ_C,
      I2 => S1_IBUF,
      I3 => S0_IBUF,
      I4 => C_IBUF,
      O => TrOut3_OBUF
    );
TrOut3_OBUF_inst_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => IENT_IBUF,
      I1 => IENP_IBUF,
      I2 => IRCO_OBUF_inst_i_3_n_0,
      O => \^ctrlin_c_2\
    );
TrOut5_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2D2FF22D2D22222"
    )
        port map (
      I0 => \^ctrlin_c_2\,
      I1 => IQ_reg_2,
      I2 => OutQ_E,
      I3 => S1_IBUF,
      I4 => S0_IBUF,
      I5 => E_IBUF,
      O => TrOut5_OBUF
    );
TrOut6_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2D2FF22D2D22222"
    )
        port map (
      I0 => \^ctrlin_c_2\,
      I1 => IQ_reg_1,
      I2 => OutQ_F,
      I3 => S1_IBUF,
      I4 => S0_IBUF,
      I5 => F_IBUF,
      O => TrOut6_OBUF
    );
TrOut7_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2D2FF22D2D22222"
    )
        port map (
      I0 => \^ctrlin_c_2\,
      I1 => Q_reg_0,
      I2 => OutQ_G,
      I3 => S1_IBUF,
      I4 => S0_IBUF,
      I5 => G_IBUF,
      O => TrOut7_OBUF
    );
TrOut8_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2D2FF22D2D22222"
    )
        port map (
      I0 => \^ctrlin_c_2\,
      I1 => Q_reg_0,
      I2 => OutQ_H,
      I3 => S1_IBUF,
      I4 => S0_IBUF,
      I5 => H_IBUF,
      O => TrOut8_OBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DTrigger_0 is
  port (
    IQ22_in : out STD_LOGIC;
    OutQ_B : out STD_LOGIC;
    QB_OBUF : out STD_LOGIC;
    Q_reg_0 : in STD_LOGIC;
    Input_clk_IBUF_BUFG : in STD_LOGIC;
    p_31_in : in STD_LOGIC;
    TrOut2_OBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DTrigger_0 : entity is "DTrigger";
end DTrigger_0;

architecture STRUCTURE of DTrigger_0 is
  signal \^iq22_in\ : STD_LOGIC;
begin
  IQ22_in <= \^iq22_in\;
IQ_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0,
      PRE => p_31_in,
      Q => \^iq22_in\
    );
QB_OBUF_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^iq22_in\,
      O => QB_OBUF
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      CLR => p_31_in,
      D => TrOut2_OBUF,
      Q => OutQ_B
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DTrigger_1 is
  port (
    IQ18_in : out STD_LOGIC;
    OutQ_C : out STD_LOGIC;
    TrOut4_OBUF : out STD_LOGIC;
    CtrlOut_C : out STD_LOGIC;
    QC_OBUF : out STD_LOGIC;
    Input_clk_IBUF_BUFG : in STD_LOGIC;
    p_31_in : in STD_LOGIC;
    TrOut3_OBUF : in STD_LOGIC;
    CtrlIn_C_2 : in STD_LOGIC;
    OutQ_D : in STD_LOGIC;
    S1_IBUF : in STD_LOGIC;
    S0_IBUF : in STD_LOGIC;
    D_IBUF : in STD_LOGIC;
    C_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DTrigger_1 : entity is "DTrigger";
end DTrigger_1;

architecture STRUCTURE of DTrigger_1 is
  signal \^ctrlout_c\ : STD_LOGIC;
  signal \^iq18_in\ : STD_LOGIC;
  signal \IQ_i_1__4_n_0\ : STD_LOGIC;
  signal \^outq_c\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of QC_OBUF_inst_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of TrOut4_OBUF_inst_i_2 : label is "soft_lutpair1";
begin
  CtrlOut_C <= \^ctrlout_c\;
  IQ18_in <= \^iq18_in\;
  OutQ_C <= \^outq_c\;
\IQ_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC0013DF"
    )
        port map (
      I0 => C_IBUF,
      I1 => S0_IBUF,
      I2 => S1_IBUF,
      I3 => \^outq_c\,
      I4 => CtrlIn_C_2,
      O => \IQ_i_1__4_n_0\
    );
IQ_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => \IQ_i_1__4_n_0\,
      PRE => p_31_in,
      Q => \^iq18_in\
    );
QC_OBUF_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^iq18_in\,
      O => QC_OBUF
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      CLR => p_31_in,
      D => TrOut3_OBUF,
      Q => \^outq_c\
    );
TrOut4_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7878FF8878788888"
    )
        port map (
      I0 => \^ctrlout_c\,
      I1 => CtrlIn_C_2,
      I2 => OutQ_D,
      I3 => S1_IBUF,
      I4 => S0_IBUF,
      I5 => D_IBUF,
      O => TrOut4_OBUF
    );
TrOut4_OBUF_inst_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \^outq_c\,
      I1 => S1_IBUF,
      I2 => \^iq18_in\,
      O => \^ctrlout_c\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DTrigger_2 is
  port (
    OutQ_D : out STD_LOGIC;
    IQ_reg_0 : out STD_LOGIC;
    QD_OBUF : out STD_LOGIC;
    Input_clk_IBUF_BUFG : in STD_LOGIC;
    p_31_in : in STD_LOGIC;
    TrOut4_OBUF : in STD_LOGIC;
    D_IBUF : in STD_LOGIC;
    S0_IBUF : in STD_LOGIC;
    S1_IBUF : in STD_LOGIC;
    CtrlIn_C_2 : in STD_LOGIC;
    CtrlOut_C : in STD_LOGIC;
    IQ18_in : in STD_LOGIC;
    OutQ_C : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DTrigger_2 : entity is "DTrigger";
end DTrigger_2;

architecture STRUCTURE of DTrigger_2 is
  signal IQ14_in : STD_LOGIC;
  signal \IQ_i_1__3_n_0\ : STD_LOGIC;
  signal \^outq_d\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of QD_OBUF_inst_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of TrOut5_OBUF_inst_i_2 : label is "soft_lutpair2";
begin
  OutQ_D <= \^outq_d\;
\IQ_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC0013DF13DF13DF"
    )
        port map (
      I0 => D_IBUF,
      I1 => S0_IBUF,
      I2 => S1_IBUF,
      I3 => \^outq_d\,
      I4 => CtrlIn_C_2,
      I5 => CtrlOut_C,
      O => \IQ_i_1__3_n_0\
    );
IQ_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => \IQ_i_1__3_n_0\,
      PRE => p_31_in,
      Q => IQ14_in
    );
QD_OBUF_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => IQ14_in,
      O => QD_OBUF
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      CLR => p_31_in,
      D => TrOut4_OBUF,
      Q => \^outq_d\
    );
TrOut5_OBUF_inst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => IQ14_in,
      I1 => \^outq_d\,
      I2 => IQ18_in,
      I3 => S1_IBUF,
      I4 => OutQ_C,
      O => IQ_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DTrigger_3 is
  port (
    OutQ_E : out STD_LOGIC;
    IQ_reg_0 : out STD_LOGIC;
    IQ_reg_1 : out STD_LOGIC;
    CtrlOut_E : out STD_LOGIC;
    QE_OBUF : out STD_LOGIC;
    Input_clk_IBUF_BUFG : in STD_LOGIC;
    p_31_in : in STD_LOGIC;
    TrOut5_OBUF : in STD_LOGIC;
    E_IBUF : in STD_LOGIC;
    S0_IBUF : in STD_LOGIC;
    S1_IBUF : in STD_LOGIC;
    IQ_reg_2 : in STD_LOGIC;
    CtrlIn_C_2 : in STD_LOGIC;
    IQ6_in : in STD_LOGIC;
    OutQ_F : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DTrigger_3 : entity is "DTrigger";
end DTrigger_3;

architecture STRUCTURE of DTrigger_3 is
  signal IQ10_in : STD_LOGIC;
  signal \IQ_i_1__2_n_0\ : STD_LOGIC;
  signal \^outq_e\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of IRCO_OBUF_inst_i_5 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of TrOut6_OBUF_inst_i_2 : label is "soft_lutpair3";
begin
  OutQ_E <= \^outq_e\;
\IQ_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"13DFCC0013DF13DF"
    )
        port map (
      I0 => E_IBUF,
      I1 => S0_IBUF,
      I2 => S1_IBUF,
      I3 => \^outq_e\,
      I4 => IQ_reg_2,
      I5 => CtrlIn_C_2,
      O => \IQ_i_1__2_n_0\
    );
IQ_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => \IQ_i_1__2_n_0\,
      PRE => p_31_in,
      Q => IQ10_in
    );
IRCO_OBUF_inst_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \^outq_e\,
      I1 => S1_IBUF,
      I2 => IQ10_in,
      O => CtrlOut_E
    );
QE_OBUF_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => IQ10_in,
      O => QE_OBUF
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      CLR => p_31_in,
      D => TrOut5_OBUF,
      Q => \^outq_e\
    );
TrOut6_OBUF_inst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => IQ_reg_2,
      I1 => IQ10_in,
      I2 => S1_IBUF,
      I3 => \^outq_e\,
      O => IQ_reg_1
    );
TrOut7_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCFAFAFFFC"
    )
        port map (
      I0 => \^outq_e\,
      I1 => IQ10_in,
      I2 => IQ_reg_2,
      I3 => IQ6_in,
      I4 => S1_IBUF,
      I5 => OutQ_F,
      O => IQ_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DTrigger_4 is
  port (
    IQ6_in : out STD_LOGIC;
    OutQ_F : out STD_LOGIC;
    CtrlOut_F : out STD_LOGIC;
    QF_OBUF : out STD_LOGIC;
    Input_clk_IBUF_BUFG : in STD_LOGIC;
    p_31_in : in STD_LOGIC;
    TrOut6_OBUF : in STD_LOGIC;
    F_IBUF : in STD_LOGIC;
    S0_IBUF : in STD_LOGIC;
    S1_IBUF : in STD_LOGIC;
    IQ_reg_0 : in STD_LOGIC;
    CtrlIn_C_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DTrigger_4 : entity is "DTrigger";
end DTrigger_4;

architecture STRUCTURE of DTrigger_4 is
  signal \^iq6_in\ : STD_LOGIC;
  signal \IQ_i_1__1_n_0\ : STD_LOGIC;
  signal \^outq_f\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of IRCO_OBUF_inst_i_4 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of QF_OBUF_inst_i_1 : label is "soft_lutpair4";
begin
  IQ6_in <= \^iq6_in\;
  OutQ_F <= \^outq_f\;
\IQ_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"13DFCC0013DF13DF"
    )
        port map (
      I0 => F_IBUF,
      I1 => S0_IBUF,
      I2 => S1_IBUF,
      I3 => \^outq_f\,
      I4 => IQ_reg_0,
      I5 => CtrlIn_C_2,
      O => \IQ_i_1__1_n_0\
    );
IQ_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => \IQ_i_1__1_n_0\,
      PRE => p_31_in,
      Q => \^iq6_in\
    );
IRCO_OBUF_inst_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \^outq_f\,
      I1 => S1_IBUF,
      I2 => \^iq6_in\,
      O => CtrlOut_F
    );
QF_OBUF_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^iq6_in\,
      O => QF_OBUF
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      CLR => p_31_in,
      D => TrOut6_OBUF,
      Q => \^outq_f\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DTrigger_5 is
  port (
    OutQ_G : out STD_LOGIC;
    p_31_in : out STD_LOGIC;
    QG_OBUF : out STD_LOGIC;
    TrOut7_OBUF : in STD_LOGIC;
    Input_clk_IBUF_BUFG : in STD_LOGIC;
    S0_IBUF : in STD_LOGIC;
    S1_IBUF : in STD_LOGIC;
    G_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC;
    CtrlIn_C_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DTrigger_5 : entity is "DTrigger";
end DTrigger_5;

architecture STRUCTURE of DTrigger_5 is
  signal IQ_inv_i_1_n_0 : STD_LOGIC;
  signal \^outq_g\ : STD_LOGIC;
  signal \^p_31_in\ : STD_LOGIC;
begin
  OutQ_G <= \^outq_g\;
  p_31_in <= \^p_31_in\;
IQ_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S0_IBUF,
      I1 => S1_IBUF,
      O => \^p_31_in\
    );
IQ_inv_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EC2033FFEC20EC20"
    )
        port map (
      I0 => G_IBUF,
      I1 => S0_IBUF,
      I2 => S1_IBUF,
      I3 => \^outq_g\,
      I4 => Q_reg_0,
      I5 => CtrlIn_C_2,
      O => IQ_inv_i_1_n_0
    );
IQ_reg_inv: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      CLR => \^p_31_in\,
      D => IQ_inv_i_1_n_0,
      Q => QG_OBUF
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      CLR => \^p_31_in\,
      D => TrOut7_OBUF,
      Q => \^outq_g\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DTrigger_6 is
  port (
    IRCO : out STD_LOGIC;
    OutQ_H : out STD_LOGIC;
    QH_OBUF : out STD_LOGIC;
    Input_clk_IBUF_BUFG : in STD_LOGIC;
    p_31_in : in STD_LOGIC;
    TrOut8_OBUF : in STD_LOGIC;
    H_IBUF : in STD_LOGIC;
    S0_IBUF : in STD_LOGIC;
    S1_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC;
    CtrlIn_C_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DTrigger_6 : entity is "DTrigger";
end DTrigger_6;

architecture STRUCTURE of DTrigger_6 is
  signal \IQ_i_1__0_n_0\ : STD_LOGIC;
  signal \^irco\ : STD_LOGIC;
  signal \^outq_h\ : STD_LOGIC;
begin
  IRCO <= \^irco\;
  OutQ_H <= \^outq_h\;
\IQ_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"13DFCC0013DF13DF"
    )
        port map (
      I0 => H_IBUF,
      I1 => S0_IBUF,
      I2 => S1_IBUF,
      I3 => \^outq_h\,
      I4 => Q_reg_0,
      I5 => CtrlIn_C_2,
      O => \IQ_i_1__0_n_0\
    );
IQ_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => \IQ_i_1__0_n_0\,
      PRE => p_31_in,
      Q => \^irco\
    );
QH_OBUF_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^irco\,
      O => QH_OBUF
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      CLR => p_31_in,
      D => TrOut8_OBUF,
      Q => \^outq_h\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SyncCountUD is
  port (
    Input_clk : in STD_LOGIC;
    S0 : in STD_LOGIC;
    S1 : in STD_LOGIC;
    IENP : in STD_LOGIC;
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C : in STD_LOGIC;
    D : in STD_LOGIC;
    E : in STD_LOGIC;
    F : in STD_LOGIC;
    G : in STD_LOGIC;
    H : in STD_LOGIC;
    IENT : in STD_LOGIC;
    QA : out STD_LOGIC;
    QB : out STD_LOGIC;
    QC : out STD_LOGIC;
    QD : out STD_LOGIC;
    QE : out STD_LOGIC;
    QF : out STD_LOGIC;
    QG : out STD_LOGIC;
    QH : out STD_LOGIC;
    IRCO : out STD_LOGIC;
    TrOut1 : out STD_LOGIC;
    TrOut2 : out STD_LOGIC;
    TrOut3 : out STD_LOGIC;
    TrOut4 : out STD_LOGIC;
    TrOut5 : out STD_LOGIC;
    TrOut6 : out STD_LOGIC;
    TrOut7 : out STD_LOGIC;
    TrOut8 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SyncCountUD : entity is true;
end SyncCountUD;

architecture STRUCTURE of SyncCountUD is
  signal A_IBUF : STD_LOGIC;
  signal B_IBUF : STD_LOGIC;
  signal C_IBUF : STD_LOGIC;
  signal CtrlIn_C_2 : STD_LOGIC;
  signal CtrlOut_C : STD_LOGIC;
  signal CtrlOut_E : STD_LOGIC;
  signal CtrlOut_F : STD_LOGIC;
  signal D_IBUF : STD_LOGIC;
  signal E_IBUF : STD_LOGIC;
  signal F_IBUF : STD_LOGIC;
  signal G_IBUF : STD_LOGIC;
  signal H_IBUF : STD_LOGIC;
  signal IENP_IBUF : STD_LOGIC;
  signal IENT_IBUF : STD_LOGIC;
  signal IQ18_in : STD_LOGIC;
  signal IQ22_in : STD_LOGIC;
  signal IQ6_in : STD_LOGIC;
  signal IRCO_OBUF : STD_LOGIC;
  signal Input_clk_IBUF : STD_LOGIC;
  signal Input_clk_IBUF_BUFG : STD_LOGIC;
  signal OutQ_B : STD_LOGIC;
  signal OutQ_C : STD_LOGIC;
  signal OutQ_D : STD_LOGIC;
  signal OutQ_E : STD_LOGIC;
  signal OutQ_F : STD_LOGIC;
  signal OutQ_G : STD_LOGIC;
  signal OutQ_H : STD_LOGIC;
  signal QA_OBUF : STD_LOGIC;
  signal QB_OBUF : STD_LOGIC;
  signal QC_OBUF : STD_LOGIC;
  signal QD_OBUF : STD_LOGIC;
  signal QE_OBUF : STD_LOGIC;
  signal QF_OBUF : STD_LOGIC;
  signal QG_OBUF : STD_LOGIC;
  signal QH_OBUF : STD_LOGIC;
  signal S0_IBUF : STD_LOGIC;
  signal S1_IBUF : STD_LOGIC;
  signal TA_n_10 : STD_LOGIC;
  signal TD_n_1 : STD_LOGIC;
  signal TE_n_1 : STD_LOGIC;
  signal TE_n_2 : STD_LOGIC;
  signal TH_n_0 : STD_LOGIC;
  signal TrOut1_OBUF : STD_LOGIC;
  signal TrOut2_OBUF : STD_LOGIC;
  signal TrOut3_OBUF : STD_LOGIC;
  signal TrOut4_OBUF : STD_LOGIC;
  signal TrOut5_OBUF : STD_LOGIC;
  signal TrOut6_OBUF : STD_LOGIC;
  signal TrOut7_OBUF : STD_LOGIC;
  signal TrOut8_OBUF : STD_LOGIC;
  signal p_31_in : STD_LOGIC;
begin
A_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => A,
      O => A_IBUF
    );
B_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => B,
      O => B_IBUF
    );
C_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => C,
      O => C_IBUF
    );
D_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => D,
      O => D_IBUF
    );
E_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => E,
      O => E_IBUF
    );
F_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => F,
      O => F_IBUF
    );
G_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => G,
      O => G_IBUF
    );
H_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => H,
      O => H_IBUF
    );
IENP_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => IENP,
      O => IENP_IBUF
    );
IENT_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => IENT,
      O => IENT_IBUF
    );
IRCO_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => IRCO_OBUF,
      O => IRCO
    );
Input_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => Input_clk_IBUF,
      O => Input_clk_IBUF_BUFG
    );
Input_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Input_clk,
      O => Input_clk_IBUF
    );
QA_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF,
      O => QA
    );
QB_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF,
      O => QB
    );
QC_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => QC_OBUF,
      O => QC
    );
QD_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => QD_OBUF,
      O => QD
    );
QE_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => QE_OBUF,
      O => QE
    );
QF_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => QF_OBUF,
      O => QF
    );
QG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => QG_OBUF,
      O => QG
    );
QH_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => QH_OBUF,
      O => QH
    );
S0_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => S0,
      O => S0_IBUF
    );
S1_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => S1,
      O => S1_IBUF
    );
TA: entity work.DTrigger
     port map (
      A_IBUF => A_IBUF,
      B_IBUF => B_IBUF,
      C_IBUF => C_IBUF,
      CtrlIn_C_2 => CtrlIn_C_2,
      CtrlOut_E => CtrlOut_E,
      CtrlOut_F => CtrlOut_F,
      E_IBUF => E_IBUF,
      F_IBUF => F_IBUF,
      G_IBUF => G_IBUF,
      H_IBUF => H_IBUF,
      IENP_IBUF => IENP_IBUF,
      IENT_IBUF => IENT_IBUF,
      IQ22_in => IQ22_in,
      IQ_reg_0 => TA_n_10,
      IQ_reg_1 => TE_n_2,
      IQ_reg_2 => TD_n_1,
      IQ_reg_3 => TH_n_0,
      IRCO_OBUF => IRCO_OBUF,
      Input_clk_IBUF_BUFG => Input_clk_IBUF_BUFG,
      OutQ_B => OutQ_B,
      OutQ_C => OutQ_C,
      OutQ_E => OutQ_E,
      OutQ_F => OutQ_F,
      OutQ_G => OutQ_G,
      OutQ_H => OutQ_H,
      QA_OBUF => QA_OBUF,
      Q_reg_0 => TE_n_1,
      S0_IBUF => S0_IBUF,
      S1_IBUF => S1_IBUF,
      TrOut1_OBUF => TrOut1_OBUF,
      TrOut2_OBUF => TrOut2_OBUF,
      TrOut3_OBUF => TrOut3_OBUF,
      TrOut5_OBUF => TrOut5_OBUF,
      TrOut6_OBUF => TrOut6_OBUF,
      TrOut7_OBUF => TrOut7_OBUF,
      TrOut8_OBUF => TrOut8_OBUF,
      p_31_in => p_31_in
    );
TB: entity work.DTrigger_0
     port map (
      IQ22_in => IQ22_in,
      Input_clk_IBUF_BUFG => Input_clk_IBUF_BUFG,
      OutQ_B => OutQ_B,
      QB_OBUF => QB_OBUF,
      Q_reg_0 => TA_n_10,
      TrOut2_OBUF => TrOut2_OBUF,
      p_31_in => p_31_in
    );
TC: entity work.DTrigger_1
     port map (
      C_IBUF => C_IBUF,
      CtrlIn_C_2 => CtrlIn_C_2,
      CtrlOut_C => CtrlOut_C,
      D_IBUF => D_IBUF,
      IQ18_in => IQ18_in,
      Input_clk_IBUF_BUFG => Input_clk_IBUF_BUFG,
      OutQ_C => OutQ_C,
      OutQ_D => OutQ_D,
      QC_OBUF => QC_OBUF,
      S0_IBUF => S0_IBUF,
      S1_IBUF => S1_IBUF,
      TrOut3_OBUF => TrOut3_OBUF,
      TrOut4_OBUF => TrOut4_OBUF,
      p_31_in => p_31_in
    );
TD: entity work.DTrigger_2
     port map (
      CtrlIn_C_2 => CtrlIn_C_2,
      CtrlOut_C => CtrlOut_C,
      D_IBUF => D_IBUF,
      IQ18_in => IQ18_in,
      IQ_reg_0 => TD_n_1,
      Input_clk_IBUF_BUFG => Input_clk_IBUF_BUFG,
      OutQ_C => OutQ_C,
      OutQ_D => OutQ_D,
      QD_OBUF => QD_OBUF,
      S0_IBUF => S0_IBUF,
      S1_IBUF => S1_IBUF,
      TrOut4_OBUF => TrOut4_OBUF,
      p_31_in => p_31_in
    );
TE: entity work.DTrigger_3
     port map (
      CtrlIn_C_2 => CtrlIn_C_2,
      CtrlOut_E => CtrlOut_E,
      E_IBUF => E_IBUF,
      IQ6_in => IQ6_in,
      IQ_reg_0 => TE_n_1,
      IQ_reg_1 => TE_n_2,
      IQ_reg_2 => TD_n_1,
      Input_clk_IBUF_BUFG => Input_clk_IBUF_BUFG,
      OutQ_E => OutQ_E,
      OutQ_F => OutQ_F,
      QE_OBUF => QE_OBUF,
      S0_IBUF => S0_IBUF,
      S1_IBUF => S1_IBUF,
      TrOut5_OBUF => TrOut5_OBUF,
      p_31_in => p_31_in
    );
TF: entity work.DTrigger_4
     port map (
      CtrlIn_C_2 => CtrlIn_C_2,
      CtrlOut_F => CtrlOut_F,
      F_IBUF => F_IBUF,
      IQ6_in => IQ6_in,
      IQ_reg_0 => TE_n_2,
      Input_clk_IBUF_BUFG => Input_clk_IBUF_BUFG,
      OutQ_F => OutQ_F,
      QF_OBUF => QF_OBUF,
      S0_IBUF => S0_IBUF,
      S1_IBUF => S1_IBUF,
      TrOut6_OBUF => TrOut6_OBUF,
      p_31_in => p_31_in
    );
TG: entity work.DTrigger_5
     port map (
      CtrlIn_C_2 => CtrlIn_C_2,
      G_IBUF => G_IBUF,
      Input_clk_IBUF_BUFG => Input_clk_IBUF_BUFG,
      OutQ_G => OutQ_G,
      QG_OBUF => QG_OBUF,
      Q_reg_0 => TE_n_1,
      S0_IBUF => S0_IBUF,
      S1_IBUF => S1_IBUF,
      TrOut7_OBUF => TrOut7_OBUF,
      p_31_in => p_31_in
    );
TH: entity work.DTrigger_6
     port map (
      CtrlIn_C_2 => CtrlIn_C_2,
      H_IBUF => H_IBUF,
      IRCO => TH_n_0,
      Input_clk_IBUF_BUFG => Input_clk_IBUF_BUFG,
      OutQ_H => OutQ_H,
      QH_OBUF => QH_OBUF,
      Q_reg_0 => TE_n_1,
      S0_IBUF => S0_IBUF,
      S1_IBUF => S1_IBUF,
      TrOut8_OBUF => TrOut8_OBUF,
      p_31_in => p_31_in
    );
TrOut1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => TrOut1_OBUF,
      O => TrOut1
    );
TrOut2_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => TrOut2_OBUF,
      O => TrOut2
    );
TrOut3_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => TrOut3_OBUF,
      O => TrOut3
    );
TrOut4_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => TrOut4_OBUF,
      O => TrOut4
    );
TrOut5_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => TrOut5_OBUF,
      O => TrOut5
    );
TrOut6_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => TrOut6_OBUF,
      O => TrOut6
    );
TrOut7_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => TrOut7_OBUF,
      O => TrOut7
    );
TrOut8_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => TrOut8_OBUF,
      O => TrOut8
    );
end STRUCTURE;
