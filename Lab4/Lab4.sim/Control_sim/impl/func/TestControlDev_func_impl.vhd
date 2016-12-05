-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Tue Nov 22 16:36:18 2016
-- Host        : KMD-NB running 64-bit Ubuntu 16.04.1 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/stargrif/VhdlLabs/Lab4/Lab4.sim/Control_sim/impl/func/TestControlDev_func_impl.vhd
-- Design      : ControlDev
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ControlLEDs is
  port (
    state : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PushButtonSW3_IBUF : in STD_LOGIC;
    SysClkLocal_BUFG : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end ControlLEDs;

architecture STRUCTURE of ControlLEDs is
  signal \^state\ : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal swap_prev : STD_LOGIC;
begin
  state <= \^state\;
\LED_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\LED_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\LED_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\LED_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => '0'
    );
state_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => swap_prev,
      I1 => PushButtonSW3_IBUF,
      I2 => \^state\,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => state_i_1_n_0,
      Q => \^state\,
      R => '0'
    );
swap_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => PushButtonSW3_IBUF,
      Q => swap_prev,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DTrigger is
  port (
    Q_reg_0 : out STD_LOGIC;
    D12_out : out STD_LOGIC;
    Q_reg_1 : out STD_LOGIC;
    LED_RCO_OBUF : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[0]\ : in STD_LOGIC;
    currSignal_reg : in STD_LOGIC;
    p_37_in : in STD_LOGIC;
    Q28_in : in STD_LOGIC;
    DIPSW0_IBUF : in STD_LOGIC;
    Output : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIPSW1_IBUF : in STD_LOGIC;
    DIPSW3_IBUF : in STD_LOGIC;
    DIPSW2_IBUF : in STD_LOGIC;
    IQ_reg_0 : in STD_LOGIC;
    DIPSW0 : in STD_LOGIC;
    Q : in STD_LOGIC;
    IQ_reg_1 : in STD_LOGIC;
    IQ27_in : in STD_LOGIC;
    IQ12_in : in STD_LOGIC;
    state : in STD_LOGIC
  );
end DTrigger;

architecture STRUCTURE of DTrigger is
  signal D14_out : STD_LOGIC;
  signal IQ0_in : STD_LOGIC;
  signal LED_RCO_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
  signal \^q_reg_1\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
  Q_reg_1 <= \^q_reg_1\;
\IQ_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000404040004"
    )
        port map (
      I0 => DIPSW3_IBUF,
      I1 => DIPSW0_IBUF,
      I2 => DIPSW2_IBUF,
      I3 => \^q_reg_0\,
      I4 => DIPSW1_IBUF,
      I5 => IQ0_in,
      O => \^q_reg_1\
    );
IQ_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => currSignal_reg,
      CE => '1',
      D => \reg_reg[0]\,
      PRE => p_37_in,
      Q => IQ0_in
    );
\LED[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => IQ0_in,
      I1 => IQ12_in,
      I2 => state,
      O => D(0)
    );
LED_RCO_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFEFEFFFEFF"
    )
        port map (
      I0 => IQ_reg_0,
      I1 => LED_RCO_OBUF_inst_i_3_n_0,
      I2 => DIPSW0,
      I3 => DIPSW1_IBUF,
      I4 => Q,
      I5 => IQ0_in,
      O => LED_RCO_OBUF
    );
LED_RCO_OBUF_inst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFCCFBCC"
    )
        port map (
      I0 => IQ0_in,
      I1 => DIPSW1_IBUF,
      I2 => IQ_reg_1,
      I3 => \^q_reg_0\,
      I4 => IQ27_in,
      I5 => Q28_in,
      O => LED_RCO_OBUF_inst_i_3_n_0
    );
\Q_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F6A6A6A"
    )
        port map (
      I0 => \^q_reg_1\,
      I1 => Q28_in,
      I2 => DIPSW0_IBUF,
      I3 => Output(1),
      I4 => DIPSW1_IBUF,
      O => D12_out
    );
\Q_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1FFE100E100E100"
    )
        port map (
      I0 => DIPSW3_IBUF,
      I1 => DIPSW2_IBUF,
      I2 => \^q_reg_0\,
      I3 => DIPSW0_IBUF,
      I4 => Output(0),
      I5 => DIPSW1_IBUF,
      O => D14_out
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => currSignal_reg,
      CE => '1',
      CLR => p_37_in,
      D => D14_out,
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DTrigger_1 is
  port (
    IQ27_in : out STD_LOGIC;
    Q28_in : out STD_LOGIC;
    D2_out : out STD_LOGIC;
    Q_reg_0 : out STD_LOGIC;
    D4_out : out STD_LOGIC;
    Q_reg_1 : out STD_LOGIC;
    IQ_reg_0 : out STD_LOGIC;
    D8_out : out STD_LOGIC;
    Q_reg_2 : out STD_LOGIC;
    D10_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    currSignal_reg : in STD_LOGIC;
    p_37_in : in STD_LOGIC;
    D12_out : in STD_LOGIC;
    DIPSW1_IBUF : in STD_LOGIC;
    Output : in STD_LOGIC_VECTOR ( 5 downto 0 );
    IQ_reg_1 : in STD_LOGIC;
    DIPSW0_IBUF : in STD_LOGIC;
    Q10_in : in STD_LOGIC;
    IQ_reg_2 : in STD_LOGIC;
    Q7_in : in STD_LOGIC;
    Q13_in : in STD_LOGIC;
    Q18_in : in STD_LOGIC;
    Q23_in : in STD_LOGIC;
    Q_reg_3 : in STD_LOGIC;
    IQ_reg_3 : in STD_LOGIC;
    IQ_reg_4 : in STD_LOGIC;
    IQ22_in : in STD_LOGIC;
    IQ6_in : in STD_LOGIC;
    state : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DTrigger_1 : entity is "DTrigger";
end DTrigger_1;

architecture STRUCTURE of DTrigger_1 is
  signal \^iq27_in\ : STD_LOGIC;
  signal \IQ_i_1__5_n_0\ : STD_LOGIC;
  signal \^q28_in\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
  signal \^q_reg_1\ : STD_LOGIC;
  signal \^q_reg_2\ : STD_LOGIC;
begin
  IQ27_in <= \^iq27_in\;
  Q28_in <= \^q28_in\;
  Q_reg_0 <= \^q_reg_0\;
  Q_reg_1 <= \^q_reg_1\;
  Q_reg_2 <= \^q_reg_2\;
\IQ_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90959595"
    )
        port map (
      I0 => \^q_reg_1\,
      I1 => Q13_in,
      I2 => DIPSW0_IBUF,
      I3 => Output(3),
      I4 => DIPSW1_IBUF,
      O => IQ_reg_0
    );
\IQ_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00007F7"
    )
        port map (
      I0 => DIPSW1_IBUF,
      I1 => Output(0),
      I2 => DIPSW0_IBUF,
      I3 => \^q28_in\,
      I4 => Q_reg_3,
      O => \IQ_i_1__5_n_0\
    );
\IQ_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000044404"
    )
        port map (
      I0 => IQ_reg_3,
      I1 => Q_reg_3,
      I2 => \^q28_in\,
      I3 => DIPSW1_IBUF,
      I4 => \^iq27_in\,
      I5 => IQ_reg_4,
      O => \^q_reg_1\
    );
\IQ_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => \^iq27_in\,
      I1 => \^q28_in\,
      I2 => Q_reg_3,
      I3 => Q23_in,
      I4 => DIPSW1_IBUF,
      I5 => IQ22_in,
      O => \^q_reg_2\
    );
\IQ_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => Q_reg_3,
      I1 => \^q28_in\,
      I2 => DIPSW1_IBUF,
      I3 => \^iq27_in\,
      O => \^q_reg_0\
    );
IQ_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => currSignal_reg,
      CE => '1',
      D => \IQ_i_1__5_n_0\,
      PRE => p_37_in,
      Q => \^iq27_in\
    );
\LED[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \^iq27_in\,
      I1 => IQ6_in,
      I2 => state,
      O => D(0)
    );
\Q_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0F88F800F088F8"
    )
        port map (
      I0 => DIPSW1_IBUF,
      I1 => Output(5),
      I2 => \^q_reg_0\,
      I3 => IQ_reg_1,
      I4 => DIPSW0_IBUF,
      I5 => Q10_in,
      O => D2_out
    );
\Q_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0F88F800F088F8"
    )
        port map (
      I0 => DIPSW1_IBUF,
      I1 => Output(4),
      I2 => \^q_reg_1\,
      I3 => IQ_reg_2,
      I4 => DIPSW0_IBUF,
      I5 => Q7_in,
      O => D4_out
    );
\Q_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F6A6A6A"
    )
        port map (
      I0 => \^q_reg_2\,
      I1 => Q18_in,
      I2 => DIPSW0_IBUF,
      I3 => Output(2),
      I4 => DIPSW1_IBUF,
      O => D8_out
    );
\Q_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F6A6A6A"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => Q23_in,
      I2 => DIPSW0_IBUF,
      I3 => Output(1),
      I4 => DIPSW1_IBUF,
      O => D10_out
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => currSignal_reg,
      CE => '1',
      CLR => p_37_in,
      D => D12_out,
      Q => \^q28_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DTrigger_2 is
  port (
    IQ22_in : out STD_LOGIC;
    Q23_in : out STD_LOGIC;
    IQ_reg_0 : out STD_LOGIC;
    Q_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    currSignal_reg : in STD_LOGIC;
    p_37_in : in STD_LOGIC;
    D10_out : in STD_LOGIC;
    DIPSW1_IBUF : in STD_LOGIC;
    Output : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIPSW0_IBUF : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC;
    Q7_in : in STD_LOGIC;
    IQ6_in : in STD_LOGIC;
    IQ_reg_1 : in STD_LOGIC;
    state : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DTrigger_2 : entity is "DTrigger";
end DTrigger_2;

architecture STRUCTURE of DTrigger_2 is
  signal \^iq22_in\ : STD_LOGIC;
  signal \IQ_i_1__4_n_0\ : STD_LOGIC;
  signal \^q23_in\ : STD_LOGIC;
begin
  IQ22_in <= \^iq22_in\;
  Q23_in <= \^q23_in\;
\IQ_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00007F7"
    )
        port map (
      I0 => DIPSW1_IBUF,
      I1 => Output(0),
      I2 => DIPSW0_IBUF,
      I3 => \^q23_in\,
      I4 => Q_reg_1,
      O => \IQ_i_1__4_n_0\
    );
IQ_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^iq22_in\,
      I1 => DIPSW1_IBUF,
      I2 => \^q23_in\,
      O => Q_reg_0
    );
IQ_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => currSignal_reg,
      CE => '1',
      D => \IQ_i_1__4_n_0\,
      PRE => p_37_in,
      Q => \^iq22_in\
    );
\LED[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \^iq22_in\,
      I1 => IQ_reg_1,
      I2 => state,
      O => D(0)
    );
LED_RCO_OBUF_inst_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \^q23_in\,
      I1 => \^iq22_in\,
      I2 => Q7_in,
      I3 => DIPSW1_IBUF,
      I4 => IQ6_in,
      O => IQ_reg_0
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => currSignal_reg,
      CE => '1',
      CLR => p_37_in,
      D => D10_out,
      Q => \^q23_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DTrigger_3 is
  port (
    IQ17_in : out STD_LOGIC;
    Q18_in : out STD_LOGIC;
    Q_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    currSignal_reg : in STD_LOGIC;
    p_37_in : in STD_LOGIC;
    D8_out : in STD_LOGIC;
    DIPSW1_IBUF : in STD_LOGIC;
    Output : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIPSW0_IBUF : in STD_LOGIC;
    IQ_reg_0 : in STD_LOGIC;
    IQ_reg_1 : in STD_LOGIC;
    state : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DTrigger_3 : entity is "DTrigger";
end DTrigger_3;

architecture STRUCTURE of DTrigger_3 is
  signal \^iq17_in\ : STD_LOGIC;
  signal \IQ_i_1__3_n_0\ : STD_LOGIC;
  signal \^q18_in\ : STD_LOGIC;
begin
  IQ17_in <= \^iq17_in\;
  Q18_in <= \^q18_in\;
\IQ_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00007F7"
    )
        port map (
      I0 => DIPSW1_IBUF,
      I1 => Output(0),
      I2 => DIPSW0_IBUF,
      I3 => \^q18_in\,
      I4 => IQ_reg_0,
      O => \IQ_i_1__3_n_0\
    );
IQ_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^iq17_in\,
      I1 => DIPSW1_IBUF,
      I2 => \^q18_in\,
      O => Q_reg_0
    );
IQ_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => currSignal_reg,
      CE => '1',
      D => \IQ_i_1__3_n_0\,
      PRE => p_37_in,
      Q => \^iq17_in\
    );
\LED[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \^iq17_in\,
      I1 => IQ_reg_1,
      I2 => state,
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => currSignal_reg,
      CE => '1',
      CLR => p_37_in,
      D => D8_out,
      Q => \^q18_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DTrigger_4 is
  port (
    IQ12_in : out STD_LOGIC;
    Q13_in : out STD_LOGIC;
    IQ_reg_0 : out STD_LOGIC;
    IQ_reg_1 : out STD_LOGIC;
    IQ_reg_2 : out STD_LOGIC;
    Q_reg_0 : in STD_LOGIC;
    currSignal_reg : in STD_LOGIC;
    p_37_in : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC;
    DIPSW0_IBUF : in STD_LOGIC;
    Output : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIPSW1_IBUF : in STD_LOGIC;
    Q_reg_2 : in STD_LOGIC;
    IQ17_in : in STD_LOGIC;
    Q18_in : in STD_LOGIC;
    Q_reg_3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DTrigger_4 : entity is "DTrigger";
end DTrigger_4;

architecture STRUCTURE of DTrigger_4 is
  signal D6_out : STD_LOGIC;
  signal \^iq12_in\ : STD_LOGIC;
  signal \^iq_reg_1\ : STD_LOGIC;
  signal \^q13_in\ : STD_LOGIC;
begin
  IQ12_in <= \^iq12_in\;
  IQ_reg_1 <= \^iq_reg_1\;
  Q13_in <= \^q13_in\;
IQ_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B004BBB4BBB4BBB"
    )
        port map (
      I0 => \^iq_reg_1\,
      I1 => Q_reg_1,
      I2 => Q,
      I3 => DIPSW0_IBUF,
      I4 => Output(1),
      I5 => DIPSW1_IBUF,
      O => IQ_reg_0
    );
\IQ_i_2__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^iq12_in\,
      I1 => DIPSW1_IBUF,
      I2 => \^q13_in\,
      O => IQ_reg_2
    );
IQ_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => currSignal_reg,
      CE => '1',
      D => Q_reg_0,
      PRE => p_37_in,
      Q => \^iq12_in\
    );
LED_RCO_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBBFCB8"
    )
        port map (
      I0 => \^iq12_in\,
      I1 => DIPSW1_IBUF,
      I2 => \^q13_in\,
      I3 => IQ17_in,
      I4 => Q18_in,
      I5 => Q_reg_3,
      O => \^iq_reg_1\
    );
\Q_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFFF808"
    )
        port map (
      I0 => DIPSW1_IBUF,
      I1 => Output(0),
      I2 => DIPSW0_IBUF,
      I3 => \^q13_in\,
      I4 => Q_reg_2,
      O => D6_out
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => currSignal_reg,
      CE => '1',
      CLR => p_37_in,
      D => D6_out,
      Q => \^q13_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DTrigger_5 is
  port (
    IQ6_in : out STD_LOGIC;
    Q7_in : out STD_LOGIC;
    currSignal_reg : in STD_LOGIC;
    p_37_in : in STD_LOGIC;
    D4_out : in STD_LOGIC;
    DIPSW0_IBUF : in STD_LOGIC;
    IQ_reg_0 : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC;
    Output : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIPSW1_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DTrigger_5 : entity is "DTrigger";
end DTrigger_5;

architecture STRUCTURE of DTrigger_5 is
  signal \IQ_i_1__1_n_0\ : STD_LOGIC;
  signal \^q7_in\ : STD_LOGIC;
begin
  Q7_in <= \^q7_in\;
\IQ_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4844787778777877"
    )
        port map (
      I0 => \^q7_in\,
      I1 => DIPSW0_IBUF,
      I2 => IQ_reg_0,
      I3 => Q_reg_0,
      I4 => Output(0),
      I5 => DIPSW1_IBUF,
      O => \IQ_i_1__1_n_0\
    );
IQ_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => currSignal_reg,
      CE => '1',
      D => \IQ_i_1__1_n_0\,
      PRE => p_37_in,
      Q => IQ6_in
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => currSignal_reg,
      CE => '1',
      CLR => p_37_in,
      D => D4_out,
      Q => \^q7_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DTrigger_6 is
  port (
    \LED_reg[2]\ : out STD_LOGIC;
    p_37_in : out STD_LOGIC;
    Q10_in : out STD_LOGIC;
    currSignal_reg : in STD_LOGIC;
    D2_out : in STD_LOGIC;
    DIPSW0_IBUF : in STD_LOGIC;
    DIPSW1_IBUF : in STD_LOGIC;
    IQ_reg_0 : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC;
    Output : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DTrigger_6 : entity is "DTrigger";
end DTrigger_6;

architecture STRUCTURE of DTrigger_6 is
  signal \IQ_i_1__0_n_0\ : STD_LOGIC;
  signal \^q10_in\ : STD_LOGIC;
  signal \^p_37_in\ : STD_LOGIC;
begin
  Q10_in <= \^q10_in\;
  p_37_in <= \^p_37_in\;
\IQ_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4844787778777877"
    )
        port map (
      I0 => \^q10_in\,
      I1 => DIPSW0_IBUF,
      I2 => IQ_reg_0,
      I3 => Q_reg_0,
      I4 => Output(0),
      I5 => DIPSW1_IBUF,
      O => \IQ_i_1__0_n_0\
    );
IQ_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DIPSW0_IBUF,
      I1 => DIPSW1_IBUF,
      O => \^p_37_in\
    );
IQ_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => currSignal_reg,
      CE => '1',
      D => \IQ_i_1__0_n_0\,
      PRE => \^p_37_in\,
      Q => \LED_reg[2]\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => currSignal_reg,
      CE => '1',
      CLR => \^p_37_in\,
      D => D2_out,
      Q => \^q10_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DTrigger_7 is
  port (
    \LED_reg[3]\ : out STD_LOGIC;
    Q : out STD_LOGIC;
    Q_reg_0 : in STD_LOGIC;
    currSignal_reg : in STD_LOGIC;
    p_37_in : in STD_LOGIC;
    DIPSW1_IBUF : in STD_LOGIC;
    Output : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIPSW0_IBUF : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC;
    IQ_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DTrigger_7 : entity is "DTrigger";
end DTrigger_7;

architecture STRUCTURE of DTrigger_7 is
  signal \^q\ : STD_LOGIC;
  signal Q_i_1_n_0 : STD_LOGIC;
begin
  Q <= \^q\;
IQ_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => currSignal_reg,
      CE => '1',
      D => Q_reg_0,
      PRE => p_37_in,
      Q => \LED_reg[3]\
    );
Q_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F808F8080FFFF808"
    )
        port map (
      I0 => DIPSW1_IBUF,
      I1 => Output(0),
      I2 => DIPSW0_IBUF,
      I3 => \^q\,
      I4 => Q_reg_1,
      I5 => IQ_reg_0,
      O => Q_i_1_n_0
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => currSignal_reg,
      CE => '1',
      CLR => p_37_in,
      D => Q_i_1_n_0,
      Q => \^q\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Divider is
  port (
    clk : out STD_LOGIC;
    SysClkLocal_BUFG : in STD_LOGIC
  );
end Divider;

architecture STRUCTURE of Divider is
  signal \^clk\ : STD_LOGIC;
  signal \counter[0]_i_10_n_0\ : STD_LOGIC;
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[0]_i_20_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \counter_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_19_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal currSignal_i_1_n_0 : STD_LOGIC;
  signal currSignal_i_2_n_0 : STD_LOGIC;
  signal currSignal_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \NLW_counter_reg[0]_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[0]_i_19_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[0]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[0]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[0]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  clk <= \^clk\;
\counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in(10),
      I1 => p_0_in(13),
      I2 => p_0_in(15),
      I3 => \counter[0]_i_5__0_n_0\,
      I4 => \counter[0]_i_6_n_0\,
      O => \counter[0]_i_1_n_0\
    );
\counter[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_10_n_0\
    );
\counter[0]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      O => \counter[0]_i_20_n_0\
    );
\counter[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFEEEFEEEEEEE"
    )
        port map (
      I0 => p_0_in(14),
      I1 => p_0_in(8),
      I2 => p_0_in(5),
      I3 => p_0_in(6),
      I4 => p_0_in(4),
      I5 => \counter[0]_i_20_n_0\,
      O => \counter[0]_i_5__0_n_0\
    );
\counter[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in(9),
      I1 => p_0_in(11),
      I2 => p_0_in(12),
      I3 => p_0_in(7),
      O => \counter[0]_i_6_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \counter_reg[0]_i_2_n_7\,
      Q => counter_reg(0),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[0]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_19_n_0\,
      CO(3) => \counter_reg[0]_i_11_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[0]_i_11_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => p_0_in(8 downto 5),
      S(3 downto 0) => counter_reg(8 downto 5)
    );
\counter_reg[0]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_19_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[0]_i_19_CO_UNCONNECTED\(2 downto 0),
      CYINIT => counter_reg(0),
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => p_0_in(4 downto 1),
      S(3 downto 0) => counter_reg(4 downto 1)
    );
\counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \counter_reg[0]_i_2_n_4\,
      O(2) => \counter_reg[0]_i_2_n_5\,
      O(1) => \counter_reg[0]_i_2_n_6\,
      O(0) => \counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_reg(3 downto 1),
      S(0) => \counter[0]_i_10_n_0\
    );
\counter_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_11_n_0\,
      CO(3) => \counter_reg[0]_i_3_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[0]_i_3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => p_0_in(12 downto 9),
      S(3 downto 0) => counter_reg(12 downto 9)
    );
\counter_reg[0]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_3_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[0]_i_4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \NLW_counter_reg[0]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => p_0_in(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => counter_reg(15 downto 13)
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \counter_reg[0]_i_2_n_6\,
      Q => counter_reg(1),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \counter_reg[0]_i_2_n_5\,
      Q => counter_reg(2),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \counter_reg[0]_i_2_n_4\,
      Q => counter_reg(3),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_2_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => \counter[0]_i_1_n_0\
    );
currSignal_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEC"
    )
        port map (
      I0 => \^clk\,
      I1 => \counter[0]_i_5__0_n_0\,
      I2 => currSignal_i_2_n_0,
      I3 => currSignal_i_3_n_0,
      I4 => \counter[0]_i_6_n_0\,
      O => currSignal_i_1_n_0
    );
currSignal_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001FFFFFF"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(3),
      I2 => p_0_in(2),
      I3 => p_0_in(5),
      I4 => p_0_in(4),
      I5 => p_0_in(6),
      O => currSignal_i_2_n_0
    );
currSignal_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_0_in(15),
      I1 => p_0_in(13),
      I2 => p_0_in(10),
      O => currSignal_i_3_n_0
    );
currSignal_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => currSignal_i_1_n_0,
      Q => \^clk\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Divider_0 is
  port (
    IQ_reg : out STD_LOGIC;
    I15 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Divider_0 : entity is "Divider";
end Divider_0;

architecture STRUCTURE of Divider_0 is
  signal \^iq_reg\ : STD_LOGIC;
  signal \counter[0]_i_10__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_20__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6__0_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \counter_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_11_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_11_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_11_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_11_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_21_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_21_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_21_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_4_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_4_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_4_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_4_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \currSignal_i_1__0_n_0\ : STD_LOGIC;
  signal \currSignal_i_2__0_n_0\ : STD_LOGIC;
  signal \currSignal_i_3__0_n_0\ : STD_LOGIC;
  signal currSignal_i_4_n_0 : STD_LOGIC;
  signal currSignal_i_5_n_0 : STD_LOGIC;
  signal currSignal_i_6_n_0 : STD_LOGIC;
  signal currSignal_i_7_n_0 : STD_LOGIC;
  signal \NLW_counter_reg[0]_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[0]_i_21_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[0]_i_21_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_reg[0]_i_2__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[0]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[0]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[4]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[8]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  IQ_reg <= \^iq_reg\;
\counter[0]_i_10__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_10__0_n_0\
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter_reg[0]_i_3_n_5\,
      I1 => \counter_reg[0]_i_3_n_6\,
      I2 => \counter_reg[0]_i_4_n_7\,
      I3 => \counter_reg[0]_i_4_n_6\,
      I4 => \counter[0]_i_5_n_0\,
      I5 => \counter[0]_i_6__0_n_0\,
      O => \counter[0]_i_1__0_n_0\
    );
\counter[0]_i_20__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter_reg[0]_i_21_n_5\,
      I1 => \counter_reg[0]_i_21_n_7\,
      I2 => \counter_reg[0]_i_11_n_4\,
      I3 => \counter_reg[0]_i_11_n_7\,
      I4 => \counter_reg[0]_i_3_n_7\,
      I5 => \counter_reg[0]_i_3_n_4\,
      O => \counter[0]_i_20__0_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg[0]_i_4_n_5\,
      I1 => \counter_reg[0]_i_11_n_5\,
      I2 => \counter_reg[0]_i_4_n_4\,
      I3 => \counter_reg[0]_i_11_n_6\,
      O => \counter[0]_i_5_n_0\
    );
\counter[0]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter[0]_i_20__0_n_0\,
      I1 => \counter_reg[0]_i_21_n_6\,
      O => \counter[0]_i_6__0_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \counter_reg[0]_i_2__0_n_7\,
      Q => counter_reg(0),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[0]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_4_n_0\,
      CO(3) => \counter_reg[0]_i_11_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[0]_i_11_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \counter_reg[0]_i_11_n_4\,
      O(2) => \counter_reg[0]_i_11_n_5\,
      O(1) => \counter_reg[0]_i_11_n_6\,
      O(0) => \counter_reg[0]_i_11_n_7\,
      S(3 downto 0) => counter_reg(8 downto 5)
    );
\counter_reg[0]_i_21\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_3_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[0]_i_21_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \NLW_counter_reg[0]_i_21_O_UNCONNECTED\(3),
      O(2) => \counter_reg[0]_i_21_n_5\,
      O(1) => \counter_reg[0]_i_21_n_6\,
      O(0) => \counter_reg[0]_i_21_n_7\,
      S(3) => '0',
      S(2 downto 0) => counter_reg(15 downto 13)
    );
\counter_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_2__0_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[0]_i_2__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \counter_reg[0]_i_2__0_n_4\,
      O(2) => \counter_reg[0]_i_2__0_n_5\,
      O(1) => \counter_reg[0]_i_2__0_n_6\,
      O(0) => \counter_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => counter_reg(3 downto 1),
      S(0) => \counter[0]_i_10__0_n_0\
    );
\counter_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_11_n_0\,
      CO(3) => \counter_reg[0]_i_3_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[0]_i_3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \counter_reg[0]_i_3_n_4\,
      O(2) => \counter_reg[0]_i_3_n_5\,
      O(1) => \counter_reg[0]_i_3_n_6\,
      O(0) => \counter_reg[0]_i_3_n_7\,
      S(3 downto 0) => counter_reg(12 downto 9)
    );
\counter_reg[0]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_4_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[0]_i_4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => counter_reg(0),
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \counter_reg[0]_i_4_n_4\,
      O(2) => \counter_reg[0]_i_4_n_5\,
      O(1) => \counter_reg[0]_i_4_n_6\,
      O(0) => \counter_reg[0]_i_4_n_7\,
      S(3 downto 0) => counter_reg(4 downto 1)
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_5\,
      Q => counter_reg(10),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_4\,
      Q => counter_reg(11),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \counter_reg[12]_i_1__0_n_7\,
      Q => counter_reg(12),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \counter_reg[12]_i_1__0_n_4\,
      O(2) => \counter_reg[12]_i_1__0_n_5\,
      O(1) => \counter_reg[12]_i_1__0_n_6\,
      O(0) => \counter_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \counter_reg[12]_i_1__0_n_6\,
      Q => counter_reg(13),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \counter_reg[12]_i_1__0_n_5\,
      Q => counter_reg(14),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \counter_reg[12]_i_1__0_n_4\,
      Q => counter_reg(15),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \counter_reg[0]_i_2__0_n_6\,
      Q => counter_reg(1),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \counter_reg[0]_i_2__0_n_5\,
      Q => counter_reg(2),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \counter_reg[0]_i_2__0_n_4\,
      Q => counter_reg(3),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \counter_reg[4]_i_1__0_n_7\,
      Q => counter_reg(4),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_2__0_n_0\,
      CO(3) => \counter_reg[4]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[4]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \counter_reg[4]_i_1__0_n_4\,
      O(2) => \counter_reg[4]_i_1__0_n_5\,
      O(1) => \counter_reg[4]_i_1__0_n_6\,
      O(0) => \counter_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \counter_reg[4]_i_1__0_n_6\,
      Q => counter_reg(5),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \counter_reg[4]_i_1__0_n_5\,
      Q => counter_reg(6),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \counter_reg[4]_i_1__0_n_4\,
      Q => counter_reg(7),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_7\,
      Q => counter_reg(8),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1__0_n_0\,
      CO(3) => \counter_reg[8]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[8]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \counter_reg[8]_i_1__0_n_4\,
      O(2) => \counter_reg[8]_i_1__0_n_5\,
      O(1) => \counter_reg[8]_i_1__0_n_6\,
      O(0) => \counter_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_6\,
      Q => counter_reg(9),
      R => \counter[0]_i_1__0_n_0\
    );
\currSignal_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \currSignal_i_2__0_n_0\,
      I1 => \currSignal_i_3__0_n_0\,
      I2 => \counter[0]_i_6__0_n_0\,
      I3 => currSignal_i_4_n_0,
      I4 => currSignal_i_5_n_0,
      I5 => currSignal_i_6_n_0,
      O => \currSignal_i_1__0_n_0\
    );
\currSignal_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_reg[0]_i_4_n_6\,
      I1 => \counter_reg[0]_i_4_n_7\,
      O => \currSignal_i_2__0_n_0\
    );
\currSignal_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \counter_reg[0]_i_21_n_7\,
      I1 => \counter_reg[0]_i_3_n_6\,
      I2 => \counter_reg[0]_i_21_n_6\,
      I3 => \counter_reg[0]_i_21_n_5\,
      I4 => currSignal_i_7_n_0,
      O => \currSignal_i_3__0_n_0\
    );
currSignal_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^iq_reg\,
      I1 => \counter_reg[0]_i_4_n_6\,
      I2 => \counter_reg[0]_i_4_n_7\,
      I3 => \counter_reg[0]_i_3_n_6\,
      I4 => \counter_reg[0]_i_3_n_5\,
      O => currSignal_i_4_n_0
    );
currSignal_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_reg[0]_i_11_n_6\,
      I1 => \counter_reg[0]_i_4_n_4\,
      O => currSignal_i_5_n_0
    );
currSignal_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_reg[0]_i_11_n_5\,
      I1 => \counter_reg[0]_i_4_n_5\,
      O => currSignal_i_6_n_0
    );
currSignal_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter_reg[0]_i_3_n_7\,
      I1 => \counter_reg[0]_i_3_n_5\,
      I2 => \counter_reg[0]_i_11_n_4\,
      I3 => counter_reg(0),
      I4 => \counter_reg[0]_i_3_n_4\,
      I5 => \counter_reg[0]_i_11_n_7\,
      O => currSignal_i_7_n_0
    );
currSignal_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I15,
      CE => '1',
      D => \currSignal_i_1__0_n_0\,
      Q => \^iq_reg\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ShiftReg is
  port (
    IQ_reg : out STD_LOGIC;
    Output : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DIPSW1_IBUF : in STD_LOGIC;
    DIPSW0_IBUF : in STD_LOGIC;
    Q2_in : in STD_LOGIC;
    DIPSW2_IBUF : in STD_LOGIC;
    DIPSW3_IBUF : in STD_LOGIC;
    Shift : in STD_LOGIC;
    Input : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    SysClkLocal_BUFG : in STD_LOGIC
  );
end ShiftReg;

architecture STRUCTURE of ShiftReg is
  signal \^output\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reg[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg[6]_i_1\ : label is "soft_lutpair5";
begin
  Output(7 downto 0) <= \^output\(7 downto 0);
\IQ_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07F707F707F7F707"
    )
        port map (
      I0 => DIPSW1_IBUF,
      I1 => \^output\(0),
      I2 => DIPSW0_IBUF,
      I3 => Q2_in,
      I4 => DIPSW2_IBUF,
      I5 => DIPSW3_IBUF,
      O => IQ_reg
    );
\reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^output\(1),
      I1 => Shift,
      I2 => Input,
      O => \reg[0]_i_1_n_0\
    );
\reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^output\(2),
      I1 => Shift,
      I2 => \^output\(0),
      O => \reg[1]_i_1_n_0\
    );
\reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^output\(3),
      I1 => Shift,
      I2 => \^output\(1),
      O => \reg[2]_i_1_n_0\
    );
\reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^output\(4),
      I1 => Shift,
      I2 => \^output\(2),
      O => \reg[3]_i_1_n_0\
    );
\reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^output\(5),
      I1 => Shift,
      I2 => \^output\(3),
      O => \reg[4]_i_1_n_0\
    );
\reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^output\(6),
      I1 => Shift,
      I2 => \^output\(4),
      O => \reg[5]_i_1_n_0\
    );
\reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^output\(7),
      I1 => Shift,
      I2 => \^output\(5),
      O => \reg[6]_i_1_n_0\
    );
\reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^output\(6),
      I1 => E(0),
      I2 => Shift,
      I3 => \^output\(7),
      O => \reg[7]_i_1_n_0\
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => E(0),
      D => \reg[0]_i_1_n_0\,
      Q => \^output\(0),
      R => '0'
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => E(0),
      D => \reg[1]_i_1_n_0\,
      Q => \^output\(1),
      R => '0'
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => E(0),
      D => \reg[2]_i_1_n_0\,
      Q => \^output\(2),
      R => '0'
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => E(0),
      D => \reg[3]_i_1_n_0\,
      Q => \^output\(3),
      R => '0'
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => E(0),
      D => \reg[4]_i_1_n_0\,
      Q => \^output\(4),
      R => '0'
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => E(0),
      D => \reg[5]_i_1_n_0\,
      Q => \^output\(5),
      R => '0'
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => E(0),
      D => \reg[6]_i_1_n_0\,
      Q => \^output\(6),
      R => '0'
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => \reg[7]_i_1_n_0\,
      Q => \^output\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SyncCountUD is
  port (
    Q2_in : out STD_LOGIC;
    LED_RCO_OBUF : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_reg[0]\ : in STD_LOGIC;
    currSignal_reg : in STD_LOGIC;
    DIPSW0_IBUF : in STD_LOGIC;
    DIPSW1_IBUF : in STD_LOGIC;
    Output : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DIPSW3_IBUF : in STD_LOGIC;
    DIPSW2_IBUF : in STD_LOGIC;
    DIPSW0 : in STD_LOGIC;
    state : in STD_LOGIC
  );
end SyncCountUD;

architecture STRUCTURE of SyncCountUD is
  signal D10_out : STD_LOGIC;
  signal D12_out : STD_LOGIC;
  signal D2_out : STD_LOGIC;
  signal D4_out : STD_LOGIC;
  signal D8_out : STD_LOGIC;
  signal IQ12_in : STD_LOGIC;
  signal IQ17_in : STD_LOGIC;
  signal IQ22_in : STD_LOGIC;
  signal IQ27_in : STD_LOGIC;
  signal IQ6_in : STD_LOGIC;
  signal Q : STD_LOGIC;
  signal Q10_in : STD_LOGIC;
  signal Q13_in : STD_LOGIC;
  signal Q18_in : STD_LOGIC;
  signal Q23_in : STD_LOGIC;
  signal Q28_in : STD_LOGIC;
  signal Q7_in : STD_LOGIC;
  signal TA_n_2 : STD_LOGIC;
  signal TB_n_3 : STD_LOGIC;
  signal TB_n_5 : STD_LOGIC;
  signal TB_n_6 : STD_LOGIC;
  signal TB_n_8 : STD_LOGIC;
  signal TC_n_2 : STD_LOGIC;
  signal TC_n_3 : STD_LOGIC;
  signal TD_n_2 : STD_LOGIC;
  signal TE_n_2 : STD_LOGIC;
  signal TE_n_3 : STD_LOGIC;
  signal TE_n_4 : STD_LOGIC;
  signal TG_n_0 : STD_LOGIC;
  signal TH_n_0 : STD_LOGIC;
  signal p_37_in : STD_LOGIC;
begin
TA: entity work.DTrigger
     port map (
      D(0) => D(0),
      D12_out => D12_out,
      DIPSW0 => DIPSW0,
      DIPSW0_IBUF => DIPSW0_IBUF,
      DIPSW1_IBUF => DIPSW1_IBUF,
      DIPSW2_IBUF => DIPSW2_IBUF,
      DIPSW3_IBUF => DIPSW3_IBUF,
      IQ12_in => IQ12_in,
      IQ27_in => IQ27_in,
      IQ_reg_0 => TE_n_3,
      IQ_reg_1 => TH_n_0,
      LED_RCO_OBUF => LED_RCO_OBUF,
      Output(1 downto 0) => Output(1 downto 0),
      Q => Q,
      Q28_in => Q28_in,
      Q_reg_0 => Q2_in,
      Q_reg_1 => TA_n_2,
      currSignal_reg => currSignal_reg,
      p_37_in => p_37_in,
      \reg_reg[0]\ => \reg_reg[0]\,
      state => state
    );
TB: entity work.DTrigger_1
     port map (
      D(0) => D(1),
      D10_out => D10_out,
      D12_out => D12_out,
      D2_out => D2_out,
      D4_out => D4_out,
      D8_out => D8_out,
      DIPSW0_IBUF => DIPSW0_IBUF,
      DIPSW1_IBUF => DIPSW1_IBUF,
      IQ22_in => IQ22_in,
      IQ27_in => IQ27_in,
      IQ6_in => IQ6_in,
      IQ_reg_0 => TB_n_6,
      IQ_reg_1 => TE_n_3,
      IQ_reg_2 => TE_n_4,
      IQ_reg_3 => TC_n_3,
      IQ_reg_4 => TD_n_2,
      Output(5 downto 0) => Output(6 downto 1),
      Q10_in => Q10_in,
      Q13_in => Q13_in,
      Q18_in => Q18_in,
      Q23_in => Q23_in,
      Q28_in => Q28_in,
      Q7_in => Q7_in,
      Q_reg_0 => TB_n_3,
      Q_reg_1 => TB_n_5,
      Q_reg_2 => TB_n_8,
      Q_reg_3 => TA_n_2,
      currSignal_reg => currSignal_reg,
      p_37_in => p_37_in,
      state => state
    );
TC: entity work.DTrigger_2
     port map (
      D(0) => D(2),
      D10_out => D10_out,
      DIPSW0_IBUF => DIPSW0_IBUF,
      DIPSW1_IBUF => DIPSW1_IBUF,
      IQ22_in => IQ22_in,
      IQ6_in => IQ6_in,
      IQ_reg_0 => TC_n_2,
      IQ_reg_1 => TG_n_0,
      Output(0) => Output(2),
      Q23_in => Q23_in,
      Q7_in => Q7_in,
      Q_reg_0 => TC_n_3,
      Q_reg_1 => TB_n_3,
      currSignal_reg => currSignal_reg,
      p_37_in => p_37_in,
      state => state
    );
TD: entity work.DTrigger_3
     port map (
      D(0) => D(3),
      D8_out => D8_out,
      DIPSW0_IBUF => DIPSW0_IBUF,
      DIPSW1_IBUF => DIPSW1_IBUF,
      IQ17_in => IQ17_in,
      IQ_reg_0 => TB_n_8,
      IQ_reg_1 => TH_n_0,
      Output(0) => Output(3),
      Q18_in => Q18_in,
      Q_reg_0 => TD_n_2,
      currSignal_reg => currSignal_reg,
      p_37_in => p_37_in,
      state => state
    );
TE: entity work.DTrigger_4
     port map (
      DIPSW0_IBUF => DIPSW0_IBUF,
      DIPSW1_IBUF => DIPSW1_IBUF,
      IQ12_in => IQ12_in,
      IQ17_in => IQ17_in,
      IQ_reg_0 => TE_n_2,
      IQ_reg_1 => TE_n_3,
      IQ_reg_2 => TE_n_4,
      Output(1) => Output(7),
      Output(0) => Output(4),
      Q => Q,
      Q13_in => Q13_in,
      Q18_in => Q18_in,
      Q_reg_0 => TB_n_6,
      Q_reg_1 => TB_n_3,
      Q_reg_2 => TB_n_5,
      Q_reg_3 => TC_n_2,
      currSignal_reg => currSignal_reg,
      p_37_in => p_37_in
    );
TF: entity work.DTrigger_5
     port map (
      D4_out => D4_out,
      DIPSW0_IBUF => DIPSW0_IBUF,
      DIPSW1_IBUF => DIPSW1_IBUF,
      IQ6_in => IQ6_in,
      IQ_reg_0 => TE_n_4,
      Output(0) => Output(5),
      Q7_in => Q7_in,
      Q_reg_0 => TB_n_5,
      currSignal_reg => currSignal_reg,
      p_37_in => p_37_in
    );
TG: entity work.DTrigger_6
     port map (
      D2_out => D2_out,
      DIPSW0_IBUF => DIPSW0_IBUF,
      DIPSW1_IBUF => DIPSW1_IBUF,
      IQ_reg_0 => TE_n_3,
      \LED_reg[2]\ => TG_n_0,
      Output(0) => Output(6),
      Q10_in => Q10_in,
      Q_reg_0 => TB_n_3,
      currSignal_reg => currSignal_reg,
      p_37_in => p_37_in
    );
TH: entity work.DTrigger_7
     port map (
      DIPSW0_IBUF => DIPSW0_IBUF,
      DIPSW1_IBUF => DIPSW1_IBUF,
      IQ_reg_0 => TE_n_3,
      \LED_reg[3]\ => TH_n_0,
      Output(0) => Output(7),
      Q => Q,
      Q_reg_0 => TE_n_2,
      Q_reg_1 => TB_n_3,
      currSignal_reg => currSignal_reg,
      p_37_in => p_37_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ControlDev is
  port (
    SysClk_P : in STD_LOGIC;
    SysClk_N : in STD_LOGIC;
    DIPSW0 : in STD_LOGIC;
    DIPSW1 : in STD_LOGIC;
    DIPSW2 : in STD_LOGIC;
    DIPSW3 : in STD_LOGIC;
    PushButtonSW3 : in STD_LOGIC;
    PushButtonSW4 : in STD_LOGIC;
    PushButtonSW6 : in STD_LOGIC;
    PushButtonSW7 : in STD_LOGIC;
    LED0 : out STD_LOGIC;
    LED1 : out STD_LOGIC;
    LED2 : out STD_LOGIC;
    LED3 : out STD_LOGIC;
    LED_RCO : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ControlDev : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of ControlDev : entity is "660440a6";
end ControlDev;

architecture STRUCTURE of ControlDev is
  signal DIPSW0_IBUF : STD_LOGIC;
  signal DIPSW1_IBUF : STD_LOGIC;
  signal DIPSW2_IBUF : STD_LOGIC;
  signal DIPSW3_IBUF : STD_LOGIC;
  signal Dev_n_2 : STD_LOGIC;
  signal Dev_n_3 : STD_LOGIC;
  signal Dev_n_4 : STD_LOGIC;
  signal Dev_n_5 : STD_LOGIC;
  signal Div1_n_0 : STD_LOGIC;
  signal Div2_n_0 : STD_LOGIC;
  signal Enable : STD_LOGIC;
  signal Input : STD_LOGIC;
  signal LED0_OBUF : STD_LOGIC;
  signal LED1_OBUF : STD_LOGIC;
  signal LED2_OBUF : STD_LOGIC;
  signal LED3_OBUF : STD_LOGIC;
  signal LED_RCO_OBUF : STD_LOGIC;
  signal LED_RCO_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal Output : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal PBSW4_prev_i_1_n_0 : STD_LOGIC;
  signal PBSW4_prev_reg_n_0 : STD_LOGIC;
  signal PBSW6_prev : STD_LOGIC;
  signal PBSW6_prev_i_1_n_0 : STD_LOGIC;
  signal PBSW7_prev_i_1_n_0 : STD_LOGIC;
  signal PBSW7_prev_reg_n_0 : STD_LOGIC;
  signal PushButtonSW3_IBUF : STD_LOGIC;
  signal PushButtonSW4_IBUF : STD_LOGIC;
  signal PushButtonSW6_IBUF : STD_LOGIC;
  signal PushButtonSW7_IBUF : STD_LOGIC;
  signal Q2_in : STD_LOGIC;
  signal RegEnable_i_1_n_0 : STD_LOGIC;
  signal RegInput_i_1_n_0 : STD_LOGIC;
  signal RegShift_i_1_n_0 : STD_LOGIC;
  signal RegShift_i_2_n_0 : STD_LOGIC;
  signal Reg_n_0 : STD_LOGIC;
  signal Shift : STD_LOGIC;
  signal SysClkLocal : STD_LOGIC;
  signal SysClkLocal_BUFG : STD_LOGIC;
  signal state : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of CLK_IBUFDS : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of CLK_IBUFDS : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of CLK_IBUFDS : label is "AUTO";
  attribute box_type : string;
  attribute box_type of CLK_IBUFDS : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of PBSW6_prev_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of RegInput_i_1 : label is "soft_lutpair7";
begin
CLK_IBUFDS: unisim.vcomponents.IBUFDS
    generic map(
      DQS_BIAS => "FALSE",
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => SysClk_P,
      IB => SysClk_N,
      O => SysClkLocal
    );
DIPSW0_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => DIPSW0,
      O => DIPSW0_IBUF
    );
DIPSW1_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => DIPSW1,
      O => DIPSW1_IBUF
    );
DIPSW2_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => DIPSW2,
      O => DIPSW2_IBUF
    );
DIPSW3_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => DIPSW3,
      O => DIPSW3_IBUF
    );
Dev: entity work.SyncCountUD
     port map (
      D(3) => Dev_n_2,
      D(2) => Dev_n_3,
      D(1) => Dev_n_4,
      D(0) => Dev_n_5,
      DIPSW0 => LED_RCO_OBUF_inst_i_4_n_0,
      DIPSW0_IBUF => DIPSW0_IBUF,
      DIPSW1_IBUF => DIPSW1_IBUF,
      DIPSW2_IBUF => DIPSW2_IBUF,
      DIPSW3_IBUF => DIPSW3_IBUF,
      LED_RCO_OBUF => LED_RCO_OBUF,
      Output(7 downto 0) => Output(7 downto 0),
      Q2_in => Q2_in,
      currSignal_reg => Div2_n_0,
      \reg_reg[0]\ => Reg_n_0,
      state => state
    );
Div1: entity work.Divider
     port map (
      SysClkLocal_BUFG => SysClkLocal_BUFG,
      clk => Div1_n_0
    );
Div2: entity work.Divider_0
     port map (
      I15 => Div1_n_0,
      IQ_reg => Div2_n_0
    );
LED0_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LED0_OBUF,
      O => LED0
    );
LED1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LED1_OBUF,
      O => LED1
    );
LED2_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LED2_OBUF,
      O => LED2
    );
LED3_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LED3_OBUF,
      O => LED3
    );
LED_RCO_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => LED_RCO_OBUF,
      O => LED_RCO
    );
LED_RCO_OBUF_inst_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => DIPSW3_IBUF,
      I1 => DIPSW0_IBUF,
      O => LED_RCO_OBUF_inst_i_4_n_0
    );
LEDs: entity work.ControlLEDs
     port map (
      D(3) => Dev_n_2,
      D(2) => Dev_n_3,
      D(1) => Dev_n_4,
      D(0) => Dev_n_5,
      PushButtonSW3_IBUF => PushButtonSW3_IBUF,
      Q(3) => LED3_OBUF,
      Q(2) => LED2_OBUF,
      Q(1) => LED1_OBUF,
      Q(0) => LED0_OBUF,
      SysClkLocal_BUFG => SysClkLocal_BUFG,
      state => state
    );
PBSW4_prev_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => PushButtonSW4_IBUF,
      I1 => PBSW4_prev_reg_n_0,
      I2 => DIPSW1_IBUF,
      I3 => DIPSW0_IBUF,
      O => PBSW4_prev_i_1_n_0
    );
PBSW4_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => PBSW4_prev_i_1_n_0,
      Q => PBSW4_prev_reg_n_0,
      R => '0'
    );
PBSW6_prev_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AACA"
    )
        port map (
      I0 => PBSW6_prev,
      I1 => PushButtonSW6_IBUF,
      I2 => DIPSW1_IBUF,
      I3 => DIPSW0_IBUF,
      O => PBSW6_prev_i_1_n_0
    );
PBSW6_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => PBSW6_prev_i_1_n_0,
      Q => PBSW6_prev,
      R => '0'
    );
PBSW7_prev_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AACA"
    )
        port map (
      I0 => PBSW7_prev_reg_n_0,
      I1 => PushButtonSW7_IBUF,
      I2 => DIPSW1_IBUF,
      I3 => DIPSW0_IBUF,
      O => PBSW7_prev_i_1_n_0
    );
PBSW7_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => PBSW7_prev_i_1_n_0,
      Q => PBSW7_prev_reg_n_0,
      R => '0'
    );
PushButtonSW3_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => PushButtonSW3,
      O => PushButtonSW3_IBUF
    );
PushButtonSW4_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => PushButtonSW4,
      O => PushButtonSW4_IBUF
    );
PushButtonSW6_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => PushButtonSW6,
      O => PushButtonSW6_IBUF
    );
PushButtonSW7_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => PushButtonSW7,
      O => PushButtonSW7_IBUF
    );
Reg: entity work.ShiftReg
     port map (
      DIPSW0_IBUF => DIPSW0_IBUF,
      DIPSW1_IBUF => DIPSW1_IBUF,
      DIPSW2_IBUF => DIPSW2_IBUF,
      DIPSW3_IBUF => DIPSW3_IBUF,
      E(0) => Enable,
      IQ_reg => Reg_n_0,
      Input => Input,
      Output(7 downto 0) => Output(7 downto 0),
      Q2_in => Q2_in,
      Shift => Shift,
      SysClkLocal_BUFG => SysClkLocal_BUFG
    );
RegEnable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F775F7F72020A220"
    )
        port map (
      I0 => RegShift_i_2_n_0,
      I1 => PBSW4_prev_reg_n_0,
      I2 => PushButtonSW4_IBUF,
      I3 => PushButtonSW7_IBUF,
      I4 => PBSW7_prev_reg_n_0,
      I5 => Enable,
      O => RegEnable_i_1_n_0
    );
RegEnable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => RegEnable_i_1_n_0,
      Q => Enable,
      R => '0'
    );
RegInput_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0040"
    )
        port map (
      I0 => PBSW6_prev,
      I1 => PushButtonSW6_IBUF,
      I2 => DIPSW1_IBUF,
      I3 => DIPSW0_IBUF,
      I4 => Input,
      O => RegInput_i_1_n_0
    );
RegInput_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => RegInput_i_1_n_0,
      Q => Input,
      R => '0'
    );
RegShift_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8AFF8AAAAAAAAA"
    )
        port map (
      I0 => Shift,
      I1 => PBSW7_prev_reg_n_0,
      I2 => PushButtonSW7_IBUF,
      I3 => PushButtonSW4_IBUF,
      I4 => PBSW4_prev_reg_n_0,
      I5 => RegShift_i_2_n_0,
      O => RegShift_i_1_n_0
    );
RegShift_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIPSW1_IBUF,
      I1 => DIPSW0_IBUF,
      O => RegShift_i_2_n_0
    );
RegShift_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClkLocal_BUFG,
      CE => '1',
      D => RegShift_i_1_n_0,
      Q => Shift,
      R => '0'
    );
SysClkLocal_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => SysClkLocal,
      O => SysClkLocal_BUFG
    );
end STRUCTURE;
