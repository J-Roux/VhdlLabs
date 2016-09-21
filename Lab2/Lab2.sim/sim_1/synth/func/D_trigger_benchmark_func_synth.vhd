-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Wed Sep 21 15:20:13 2016
-- Host        : laptop running 64-bit Ubuntu 16.04.1 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/pavel/workspace/Lab2/Lab2.sim/sim_1/synth/func/D_trigger_benchmark_func_synth.vhd
-- Design      : D_trigger_benchmark
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity D_trigger is
  port (
    R : in STD_LOGIC;
    S : in STD_LOGIC;
    D : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : out STD_LOGIC;
    IQ : out STD_LOGIC
  );
end D_trigger;

architecture STRUCTURE of D_trigger is
begin
  IQ <= 'Z';
  Q <= 'Z';
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity D_trigger_benchmark is
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of D_trigger_benchmark : entity is true;
end D_trigger_benchmark;

architecture STRUCTURE of D_trigger_benchmark is
  signal NLW_D1_IQ_UNCONNECTED : STD_LOGIC;
  signal NLW_D1_Q_UNCONNECTED : STD_LOGIC;
begin
D1: entity work.D_trigger
     port map (
      D => '1',
      IQ => NLW_D1_IQ_UNCONNECTED,
      Q => NLW_D1_Q_UNCONNECTED,
      R => '0',
      S => '1',
      clk => '1'
    );
end STRUCTURE;
