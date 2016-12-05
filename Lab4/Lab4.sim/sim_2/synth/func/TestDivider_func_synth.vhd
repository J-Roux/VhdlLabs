-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Thu Nov 10 18:01:36 2016
-- Host        : KMD-NB running 64-bit Ubuntu 16.04.1 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/stargrif/VhdlLabs/Lab4/Lab4.sim/sim_2/synth/func/TestDivider_func_synth.vhd
-- Design      : Divider
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Divider is
  port (
    Input_clk : in STD_LOGIC;
    Clk_250mHz : out STD_LOGIC;
    Clk_500mHz : out STD_LOGIC;
    Clk_1Hz : out STD_LOGIC;
    Clk_2Hz : out STD_LOGIC;
    Clk_5Hz : out STD_LOGIC;
    Clk_10Hz : out STD_LOGIC;
    Clk_25Hz : out STD_LOGIC;
    Clk_50Hz : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Divider : entity is true;
end Divider;

architecture STRUCTURE of Divider is
  signal Clk_10Hz_OBUF : STD_LOGIC;
  signal Clk_1Hz_OBUF : STD_LOGIC;
  signal Clk_250mHz_OBUF : STD_LOGIC;
  signal Clk_25Hz_OBUF : STD_LOGIC;
  signal Clk_2Hz_OBUF : STD_LOGIC;
  signal Clk_500mHz_OBUF : STD_LOGIC;
  signal Clk_50Hz_OBUF : STD_LOGIC;
  signal Clk_5Hz_OBUF : STD_LOGIC;
  signal Input_clk_IBUF : STD_LOGIC;
  signal Input_clk_IBUF_BUFG : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \counter[24]_i_5_n_0\ : STD_LOGIC;
  signal \counter[28]_i_2_n_0\ : STD_LOGIC;
  signal \counter[28]_i_3_n_0\ : STD_LOGIC;
  signal \counter[28]_i_4_n_0\ : STD_LOGIC;
  signal \counter[28]_i_5_n_0\ : STD_LOGIC;
  signal \counter[30]_i_2_n_0\ : STD_LOGIC;
  signal \counter[30]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[30]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[20]\ : STD_LOGIC;
  signal \counter_reg_n_0_[21]\ : STD_LOGIC;
  signal \counter_reg_n_0_[22]\ : STD_LOGIC;
  signal \counter_reg_n_0_[23]\ : STD_LOGIC;
  signal \counter_reg_n_0_[24]\ : STD_LOGIC;
  signal \counter_reg_n_0_[25]\ : STD_LOGIC;
  signal \counter_reg_n_0_[26]\ : STD_LOGIC;
  signal \counter_reg_n_0_[27]\ : STD_LOGIC;
  signal \counter_reg_n_0_[28]\ : STD_LOGIC;
  signal \counter_reg_n_0_[29]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[30]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal \outClkMass_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \outClkMass_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \NLW_counter_reg[30]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counter_reg[30]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \outClkMass_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \outClkMass_reg[0]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \outClkMass_reg[0]_i_6\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \outClkMass_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \outClkMass_reg[1]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \outClkMass_reg[1]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \outClkMass_reg[1]_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \outClkMass_reg[1]_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \outClkMass_reg[1]_i_8\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \outClkMass_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \outClkMass_reg[2]_i_6\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \outClkMass_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \outClkMass_reg[3]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \outClkMass_reg[3]_i_4\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \outClkMass_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \outClkMass_reg[4]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \outClkMass_reg[4]_i_6\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \outClkMass_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \outClkMass_reg[5]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \outClkMass_reg[5]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \outClkMass_reg[5]_i_6\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \outClkMass_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \outClkMass_reg[6]_i_5\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \outClkMass_reg[7]\ : label is "LD";
begin
Clk_10Hz_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Clk_10Hz_OBUF,
      O => Clk_10Hz
    );
Clk_1Hz_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Clk_1Hz_OBUF,
      O => Clk_1Hz
    );
Clk_250mHz_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Clk_250mHz_OBUF,
      O => Clk_250mHz
    );
Clk_25Hz_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Clk_25Hz_OBUF,
      O => Clk_25Hz
    );
Clk_2Hz_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Clk_2Hz_OBUF,
      O => Clk_2Hz
    );
Clk_500mHz_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Clk_500mHz_OBUF,
      O => Clk_500mHz
    );
Clk_50Hz_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Clk_50Hz_OBUF,
      O => Clk_50Hz
    );
Clk_5Hz_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Clk_5Hz_OBUF,
      O => Clk_5Hz
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
\counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0B"
    )
        port map (
      I0 => \outClkMass_reg[0]_i_4_n_0\,
      I1 => \counter_reg_n_0_[18]\,
      I2 => \counter_reg_n_0_[0]\,
      I3 => \outClkMass_reg[0]_i_3_n_0\,
      O => counter(0)
    );
\counter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[12]\,
      O => \counter[12]_i_2_n_0\
    );
\counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[11]\,
      O => \counter[12]_i_3_n_0\
    );
\counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[10]\,
      O => \counter[12]_i_4_n_0\
    );
\counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[9]\,
      O => \counter[12]_i_5_n_0\
    );
\counter[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[16]\,
      O => \counter[16]_i_2_n_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      O => \counter[16]_i_3_n_0\
    );
\counter[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[14]\,
      O => \counter[16]_i_4_n_0\
    );
\counter[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[13]\,
      O => \counter[16]_i_5_n_0\
    );
\counter[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[20]\,
      O => \counter[20]_i_2_n_0\
    );
\counter[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[19]\,
      O => \counter[20]_i_3_n_0\
    );
\counter[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[18]\,
      O => \counter[20]_i_4_n_0\
    );
\counter[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[17]\,
      O => \counter[20]_i_5_n_0\
    );
\counter[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[24]\,
      O => \counter[24]_i_2_n_0\
    );
\counter[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[23]\,
      O => \counter[24]_i_3_n_0\
    );
\counter[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[22]\,
      O => \counter[24]_i_4_n_0\
    );
\counter[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[21]\,
      O => \counter[24]_i_5_n_0\
    );
\counter[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[28]\,
      O => \counter[28]_i_2_n_0\
    );
\counter[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[27]\,
      O => \counter[28]_i_3_n_0\
    );
\counter[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[26]\,
      O => \counter[28]_i_4_n_0\
    );
\counter[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[25]\,
      O => \counter[28]_i_5_n_0\
    );
\counter[30]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[30]\,
      O => \counter[30]_i_2_n_0\
    );
\counter[30]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[29]\,
      O => \counter[30]_i_3_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[4]\,
      O => \counter[4]_i_2_n_0\
    );
\counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[3]\,
      O => \counter[4]_i_3_n_0\
    );
\counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[2]\,
      O => \counter[4]_i_4_n_0\
    );
\counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      O => \counter[4]_i_5_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[8]\,
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[7]\,
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[6]\,
      O => \counter[8]_i_4_n_0\
    );
\counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[5]\,
      O => \counter[8]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => counter(0),
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(10),
      Q => \counter_reg_n_0_[10]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(11),
      Q => \counter_reg_n_0_[11]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(12),
      Q => \counter_reg_n_0_[12]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \counter[12]_i_2_n_0\,
      S(2) => \counter[12]_i_3_n_0\,
      S(1) => \counter[12]_i_4_n_0\,
      S(0) => \counter[12]_i_5_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(13),
      Q => \counter_reg_n_0_[13]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(14),
      Q => \counter_reg_n_0_[14]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(15),
      Q => \counter_reg_n_0_[15]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(16),
      Q => \counter_reg_n_0_[16]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \counter[16]_i_2_n_0\,
      S(2) => \counter[16]_i_3_n_0\,
      S(1) => \counter[16]_i_4_n_0\,
      S(0) => \counter[16]_i_5_n_0\
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(17),
      Q => \counter_reg_n_0_[17]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(18),
      Q => \counter_reg_n_0_[18]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(19),
      Q => \counter_reg_n_0_[19]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(1),
      Q => \counter_reg_n_0_[1]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(20),
      Q => \counter_reg_n_0_[20]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \counter[20]_i_2_n_0\,
      S(2) => \counter[20]_i_3_n_0\,
      S(1) => \counter[20]_i_4_n_0\,
      S(0) => \counter[20]_i_5_n_0\
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(21),
      Q => \counter_reg_n_0_[21]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(22),
      Q => \counter_reg_n_0_[22]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(23),
      Q => \counter_reg_n_0_[23]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(24),
      Q => \counter_reg_n_0_[24]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3) => \counter_reg[24]_i_1_n_0\,
      CO(2) => \counter_reg[24]_i_1_n_1\,
      CO(1) => \counter_reg[24]_i_1_n_2\,
      CO(0) => \counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \counter[24]_i_2_n_0\,
      S(2) => \counter[24]_i_3_n_0\,
      S(1) => \counter[24]_i_4_n_0\,
      S(0) => \counter[24]_i_5_n_0\
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(25),
      Q => \counter_reg_n_0_[25]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(26),
      Q => \counter_reg_n_0_[26]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(27),
      Q => \counter_reg_n_0_[27]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(28),
      Q => \counter_reg_n_0_[28]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[24]_i_1_n_0\,
      CO(3) => \counter_reg[28]_i_1_n_0\,
      CO(2) => \counter_reg[28]_i_1_n_1\,
      CO(1) => \counter_reg[28]_i_1_n_2\,
      CO(0) => \counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \counter[28]_i_2_n_0\,
      S(2) => \counter[28]_i_3_n_0\,
      S(1) => \counter[28]_i_4_n_0\,
      S(0) => \counter[28]_i_5_n_0\
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(29),
      Q => \counter_reg_n_0_[29]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(2),
      Q => \counter_reg_n_0_[2]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(30),
      Q => \counter_reg_n_0_[30]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[30]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[28]_i_1_n_0\,
      CO(3 downto 1) => \NLW_counter_reg[30]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \counter_reg[30]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 2) => \NLW_counter_reg[30]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(30 downto 29),
      S(3) => '0',
      S(2) => '0',
      S(1) => \counter[30]_i_2_n_0\,
      S(0) => \counter[30]_i_3_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(3),
      Q => \counter_reg_n_0_[3]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(4),
      Q => \counter_reg_n_0_[4]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => \counter_reg_n_0_[0]\,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \counter[4]_i_2_n_0\,
      S(2) => \counter[4]_i_3_n_0\,
      S(1) => \counter[4]_i_4_n_0\,
      S(0) => \counter[4]_i_5_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(5),
      Q => \counter_reg_n_0_[5]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(6),
      Q => \counter_reg_n_0_[6]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(7),
      Q => \counter_reg_n_0_[7]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(8),
      Q => \counter_reg_n_0_[8]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \counter[8]_i_2_n_0\,
      S(2) => \counter[8]_i_3_n_0\,
      S(1) => \counter[8]_i_4_n_0\,
      S(0) => \counter[8]_i_5_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Input_clk_IBUF_BUFG,
      CE => '1',
      D => data0(9),
      Q => \counter_reg_n_0_[9]\,
      R => \outClkMass_reg[0]_i_2_n_0\
    );
\outClkMass_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \outClkMass_reg[0]_i_1_n_0\,
      G => \outClkMass_reg[0]_i_2_n_0\,
      GE => '1',
      Q => Clk_250mHz_OBUF
    );
\outClkMass_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Clk_250mHz_OBUF,
      O => \outClkMass_reg[0]_i_1_n_0\
    );
\outClkMass_reg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \outClkMass_reg[0]_i_3_n_0\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \outClkMass_reg[0]_i_4_n_0\,
      I3 => \counter_reg_n_0_[18]\,
      O => \outClkMass_reg[0]_i_2_n_0\
    );
\outClkMass_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[25]\,
      I1 => \outClkMass_reg[0]_i_5_n_0\,
      I2 => \outClkMass_reg[0]_i_6_n_0\,
      I3 => \outClkMass_reg[5]_i_4_n_0\,
      I4 => \counter_reg_n_0_[28]\,
      I5 => \outClkMass_reg[0]_i_7_n_0\,
      O => \outClkMass_reg[0]_i_3_n_0\
    );
\outClkMass_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[2]\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \outClkMass_reg[0]_i_8_n_0\,
      I3 => \counter_reg_n_0_[27]\,
      I4 => \counter_reg_n_0_[20]\,
      I5 => \counter_reg_n_0_[9]\,
      O => \outClkMass_reg[0]_i_4_n_0\
    );
\outClkMass_reg[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \counter_reg_n_0_[8]\,
      I1 => \counter_reg_n_0_[17]\,
      O => \outClkMass_reg[0]_i_5_n_0\
    );
\outClkMass_reg[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[23]\,
      I1 => \counter_reg_n_0_[11]\,
      I2 => \counter_reg_n_0_[15]\,
      I3 => \counter_reg_n_0_[22]\,
      O => \outClkMass_reg[0]_i_6_n_0\
    );
\outClkMass_reg[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[19]\,
      I1 => \counter_reg_n_0_[7]\,
      I2 => \counter_reg_n_0_[12]\,
      I3 => \counter_reg_n_0_[16]\,
      I4 => \counter_reg_n_0_[24]\,
      I5 => \counter_reg_n_0_[26]\,
      O => \outClkMass_reg[0]_i_7_n_0\
    );
\outClkMass_reg[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[4]\,
      I1 => \counter_reg_n_0_[3]\,
      I2 => \counter_reg_n_0_[29]\,
      I3 => \counter_reg_n_0_[30]\,
      I4 => \counter_reg_n_0_[5]\,
      I5 => \counter_reg_n_0_[6]\,
      O => \outClkMass_reg[0]_i_8_n_0\
    );
\outClkMass_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \outClkMass_reg[1]_i_1_n_0\,
      G => \outClkMass_reg[1]_i_2_n_0\,
      GE => '1',
      Q => Clk_500mHz_OBUF
    );
\outClkMass_reg[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Clk_500mHz_OBUF,
      O => \outClkMass_reg[1]_i_1_n_0\
    );
\outClkMass_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \outClkMass_reg[1]_i_3_n_0\,
      I1 => \outClkMass_reg[1]_i_4_n_0\,
      I2 => \outClkMass_reg[1]_i_5_n_0\,
      I3 => \outClkMass_reg[1]_i_6_n_0\,
      I4 => \outClkMass_reg[1]_i_7_n_0\,
      I5 => \outClkMass_reg[1]_i_8_n_0\,
      O => \outClkMass_reg[1]_i_2_n_0\
    );
\outClkMass_reg[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \counter_reg_n_0_[25]\,
      I1 => \counter_reg_n_0_[8]\,
      I2 => \counter_reg_n_0_[17]\,
      I3 => \outClkMass_reg[0]_i_6_n_0\,
      O => \outClkMass_reg[1]_i_3_n_0\
    );
\outClkMass_reg[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \counter_reg_n_0_[28]\,
      I1 => \counter_reg_n_0_[26]\,
      I2 => \counter_reg_n_0_[19]\,
      O => \outClkMass_reg[1]_i_4_n_0\
    );
\outClkMass_reg[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \counter_reg_n_0_[10]\,
      I1 => \counter_reg_n_0_[21]\,
      I2 => \counter_reg_n_0_[18]\,
      I3 => \counter_reg_n_0_[0]\,
      O => \outClkMass_reg[1]_i_5_n_0\
    );
\outClkMass_reg[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[7]\,
      I1 => \counter_reg_n_0_[12]\,
      I2 => \counter_reg_n_0_[16]\,
      I3 => \counter_reg_n_0_[24]\,
      O => \outClkMass_reg[1]_i_6_n_0\
    );
\outClkMass_reg[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \counter_reg_n_0_[2]\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \outClkMass_reg[0]_i_8_n_0\,
      O => \outClkMass_reg[1]_i_7_n_0\
    );
\outClkMass_reg[1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \counter_reg_n_0_[9]\,
      I1 => \counter_reg_n_0_[14]\,
      I2 => \counter_reg_n_0_[13]\,
      I3 => \counter_reg_n_0_[20]\,
      I4 => \counter_reg_n_0_[27]\,
      O => \outClkMass_reg[1]_i_8_n_0\
    );
\outClkMass_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \outClkMass_reg[2]_i_1_n_0\,
      G => \outClkMass_reg[2]_i_2_n_0\,
      GE => '1',
      Q => Clk_1Hz_OBUF
    );
\outClkMass_reg[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Clk_1Hz_OBUF,
      O => \outClkMass_reg[2]_i_1_n_0\
    );
\outClkMass_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \outClkMass_reg[2]_i_3_n_0\,
      I1 => \counter_reg_n_0_[25]\,
      I2 => \counter_reg_n_0_[17]\,
      I3 => \counter_reg_n_0_[10]\,
      I4 => \counter_reg_n_0_[21]\,
      I5 => \outClkMass_reg[2]_i_4_n_0\,
      O => \outClkMass_reg[2]_i_2_n_0\
    );
\outClkMass_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \outClkMass_reg[0]_i_6_n_0\,
      I1 => \counter_reg_n_0_[13]\,
      I2 => \counter_reg_n_0_[8]\,
      I3 => \counter_reg_n_0_[28]\,
      I4 => \counter_reg_n_0_[14]\,
      I5 => \outClkMass_reg[0]_i_7_n_0\,
      O => \outClkMass_reg[2]_i_3_n_0\
    );
\outClkMass_reg[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \counter_reg_n_0_[18]\,
      I1 => \outClkMass_reg[2]_i_5_n_0\,
      I2 => \outClkMass_reg[0]_i_8_n_0\,
      I3 => \outClkMass_reg[2]_i_6_n_0\,
      I4 => \counter_reg_n_0_[9]\,
      I5 => \counter_reg_n_0_[0]\,
      O => \outClkMass_reg[2]_i_4_n_0\
    );
\outClkMass_reg[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      I1 => \counter_reg_n_0_[2]\,
      O => \outClkMass_reg[2]_i_5_n_0\
    );
\outClkMass_reg[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \counter_reg_n_0_[27]\,
      I1 => \counter_reg_n_0_[20]\,
      O => \outClkMass_reg[2]_i_6_n_0\
    );
\outClkMass_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \outClkMass_reg[3]_i_1_n_0\,
      G => \outClkMass_reg[3]_i_2_n_0\,
      GE => '1',
      Q => Clk_2Hz_OBUF
    );
\outClkMass_reg[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Clk_2Hz_OBUF,
      O => \outClkMass_reg[3]_i_1_n_0\
    );
\outClkMass_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \outClkMass_reg[1]_i_3_n_0\,
      I1 => \outClkMass_reg[1]_i_5_n_0\,
      I2 => \outClkMass_reg[3]_i_3_n_0\,
      I3 => \outClkMass_reg[0]_i_4_n_0\,
      I4 => \outClkMass_reg[3]_i_4_n_0\,
      O => \outClkMass_reg[3]_i_2_n_0\
    );
\outClkMass_reg[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \counter_reg_n_0_[19]\,
      I1 => \counter_reg_n_0_[26]\,
      I2 => \counter_reg_n_0_[28]\,
      I3 => \counter_reg_n_0_[24]\,
      O => \outClkMass_reg[3]_i_3_n_0\
    );
\outClkMass_reg[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \counter_reg_n_0_[7]\,
      I1 => \counter_reg_n_0_[12]\,
      I2 => \counter_reg_n_0_[13]\,
      I3 => \counter_reg_n_0_[16]\,
      I4 => \counter_reg_n_0_[14]\,
      O => \outClkMass_reg[3]_i_4_n_0\
    );
\outClkMass_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \outClkMass_reg[4]_i_1_n_0\,
      G => \outClkMass_reg[4]_i_2_n_0\,
      GE => '1',
      Q => Clk_5Hz_OBUF
    );
\outClkMass_reg[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Clk_5Hz_OBUF,
      O => \outClkMass_reg[4]_i_1_n_0\
    );
\outClkMass_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \outClkMass_reg[4]_i_3_n_0\,
      I1 => \outClkMass_reg[4]_i_4_n_0\,
      I2 => \counter_reg_n_0_[18]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \outClkMass_reg[0]_i_4_n_0\,
      I5 => \outClkMass_reg[4]_i_5_n_0\,
      O => \outClkMass_reg[4]_i_2_n_0\
    );
\outClkMass_reg[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \counter_reg_n_0_[21]\,
      I1 => \counter_reg_n_0_[15]\,
      I2 => \counter_reg_n_0_[13]\,
      I3 => \counter_reg_n_0_[14]\,
      I4 => \counter_reg_n_0_[23]\,
      I5 => \counter_reg_n_0_[22]\,
      O => \outClkMass_reg[4]_i_3_n_0\
    );
\outClkMass_reg[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[17]\,
      I1 => \counter_reg_n_0_[25]\,
      O => \outClkMass_reg[4]_i_4_n_0\
    );
\outClkMass_reg[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \counter_reg_n_0_[26]\,
      I1 => \counter_reg_n_0_[28]\,
      I2 => \counter_reg_n_0_[11]\,
      I3 => \counter_reg_n_0_[10]\,
      I4 => \counter_reg_n_0_[8]\,
      I5 => \outClkMass_reg[4]_i_6_n_0\,
      O => \outClkMass_reg[4]_i_5_n_0\
    );
\outClkMass_reg[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \counter_reg_n_0_[24]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \counter_reg_n_0_[12]\,
      I3 => \counter_reg_n_0_[7]\,
      I4 => \counter_reg_n_0_[19]\,
      O => \outClkMass_reg[4]_i_6_n_0\
    );
\outClkMass_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \outClkMass_reg[5]_i_1_n_0\,
      G => \outClkMass_reg[5]_i_2_n_0\,
      GE => '1',
      Q => Clk_10Hz_OBUF
    );
\outClkMass_reg[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Clk_10Hz_OBUF,
      O => \outClkMass_reg[5]_i_1_n_0\
    );
\outClkMass_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \outClkMass_reg[5]_i_3_n_0\,
      I1 => \outClkMass_reg[5]_i_4_n_0\,
      I2 => \outClkMass_reg[5]_i_5_n_0\,
      I3 => \outClkMass_reg[5]_i_6_n_0\,
      I4 => \outClkMass_reg[3]_i_3_n_0\,
      I5 => \outClkMass_reg[5]_i_7_n_0\,
      O => \outClkMass_reg[5]_i_2_n_0\
    );
\outClkMass_reg[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \counter_reg_n_0_[20]\,
      I1 => \counter_reg_n_0_[27]\,
      I2 => \outClkMass_reg[0]_i_8_n_0\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \counter_reg_n_0_[2]\,
      O => \outClkMass_reg[5]_i_3_n_0\
    );
\outClkMass_reg[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \counter_reg_n_0_[10]\,
      I1 => \counter_reg_n_0_[21]\,
      I2 => \counter_reg_n_0_[14]\,
      I3 => \counter_reg_n_0_[13]\,
      O => \outClkMass_reg[5]_i_4_n_0\
    );
\outClkMass_reg[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \counter_reg_n_0_[25]\,
      I1 => \counter_reg_n_0_[17]\,
      I2 => \counter_reg_n_0_[18]\,
      I3 => \counter_reg_n_0_[0]\,
      O => \outClkMass_reg[5]_i_5_n_0\
    );
\outClkMass_reg[5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[11]\,
      I2 => \counter_reg_n_0_[23]\,
      O => \outClkMass_reg[5]_i_6_n_0\
    );
\outClkMass_reg[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \counter_reg_n_0_[9]\,
      I1 => \counter_reg_n_0_[12]\,
      I2 => \counter_reg_n_0_[7]\,
      I3 => \counter_reg_n_0_[8]\,
      I4 => \counter_reg_n_0_[22]\,
      I5 => \counter_reg_n_0_[16]\,
      O => \outClkMass_reg[5]_i_7_n_0\
    );
\outClkMass_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \outClkMass_reg[6]_i_1_n_0\,
      G => \outClkMass_reg[6]_i_2_n_0\,
      GE => '1',
      Q => Clk_25Hz_OBUF
    );
\outClkMass_reg[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Clk_25Hz_OBUF,
      O => \outClkMass_reg[6]_i_1_n_0\
    );
\outClkMass_reg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \outClkMass_reg[6]_i_3_n_0\,
      I1 => \outClkMass_reg[6]_i_4_n_0\,
      I2 => \outClkMass_reg[3]_i_3_n_0\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \outClkMass_reg[0]_i_4_n_0\,
      I5 => \counter_reg_n_0_[18]\,
      O => \outClkMass_reg[6]_i_2_n_0\
    );
\outClkMass_reg[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \counter_reg_n_0_[22]\,
      I1 => \counter_reg_n_0_[23]\,
      I2 => \counter_reg_n_0_[15]\,
      I3 => \counter_reg_n_0_[11]\,
      I4 => \counter_reg_n_0_[8]\,
      I5 => \outClkMass_reg[6]_i_5_n_0\,
      O => \outClkMass_reg[6]_i_3_n_0\
    );
\outClkMass_reg[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \counter_reg_n_0_[13]\,
      I1 => \counter_reg_n_0_[14]\,
      I2 => \counter_reg_n_0_[21]\,
      I3 => \counter_reg_n_0_[10]\,
      I4 => \counter_reg_n_0_[25]\,
      I5 => \counter_reg_n_0_[17]\,
      O => \outClkMass_reg[6]_i_4_n_0\
    );
\outClkMass_reg[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \counter_reg_n_0_[16]\,
      I1 => \counter_reg_n_0_[12]\,
      I2 => \counter_reg_n_0_[7]\,
      O => \outClkMass_reg[6]_i_5_n_0\
    );
\outClkMass_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \outClkMass_reg[7]_i_1_n_0\,
      G => \outClkMass_reg[7]_i_2_n_0\,
      GE => '1',
      Q => Clk_50Hz_OBUF
    );
\outClkMass_reg[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Clk_50Hz_OBUF,
      O => \outClkMass_reg[7]_i_1_n_0\
    );
\outClkMass_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \outClkMass_reg[7]_i_3_n_0\,
      I1 => \outClkMass_reg[7]_i_4_n_0\,
      I2 => \counter_reg_n_0_[0]\,
      I3 => \outClkMass_reg[0]_i_4_n_0\,
      I4 => \counter_reg_n_0_[18]\,
      O => \outClkMass_reg[7]_i_2_n_0\
    );
\outClkMass_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \counter_reg_n_0_[16]\,
      I1 => \counter_reg_n_0_[22]\,
      I2 => \counter_reg_n_0_[7]\,
      I3 => \counter_reg_n_0_[12]\,
      I4 => \counter_reg_n_0_[25]\,
      I5 => \counter_reg_n_0_[23]\,
      O => \outClkMass_reg[7]_i_3_n_0\
    );
\outClkMass_reg[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \outClkMass_reg[5]_i_4_n_0\,
      I1 => \counter_reg_n_0_[17]\,
      I2 => \counter_reg_n_0_[8]\,
      I3 => \counter_reg_n_0_[15]\,
      I4 => \counter_reg_n_0_[11]\,
      I5 => \outClkMass_reg[3]_i_3_n_0\,
      O => \outClkMass_reg[7]_i_4_n_0\
    );
end STRUCTURE;
