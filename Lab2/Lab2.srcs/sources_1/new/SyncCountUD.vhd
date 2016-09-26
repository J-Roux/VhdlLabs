----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/21/2016 05:35:30 PM
-- Design Name: 
-- Module Name: SyncCountUD - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SyncCountUD is
      Port (
        clk : in std_logic;
        S0 : in std_logic;
        S1 : in std_logic;
        ENP : in std_logic;
        A : in std_logic;
        B : in std_logic;
        C : in std_logic;
        D : in std_logic;
        E : in std_logic;
        F : in std_logic;
        G : in std_logic;
        H : in std_logic;
        ENT : in std_logic;
        QA : out std_logic;
        QB : out std_logic;
        QC : out std_logic;
        QD : out std_logic;
        QE : out std_logic;
        QF : out std_logic;
        QG : out std_logic;
        QH : out std_logic;
        RCO : out std_logic
      );
end SyncCountUD;

architecture Behavioral of SyncCountUD is
    component K1 
      Port (
        IS1 : in std_logic;
        S1 : in std_logic;
        clk : in std_logic;
        RESET : in std_logic;
        S0S1: in std_logic;
        DATA : in std_logic;
        CTR : in std_logic;
        S0 : in std_logic;
        Q : out std_logic;
        IQ : out std_logic;
        L : out std_logic
      );
    end component;

-- common
    signal invert_clk : std_logic;
    signal Reset :  std_logic;
    signal IS1 : std_logic;
    signal S0S1 : std_logic;
    signal CTR : std_logic;
   
-- device 1
    signal Q1 : std_logic; 
    signal IQ1 : std_logic;
    signal L1 : std_logic;

-- device 2
    signal Q2 : std_logic; 
    signal IQ2 : std_logic;
    signal L2 : std_logic;
    signal CTR2 : std_logic;

-- device 3
    signal Q3 : std_logic; 
    signal IQ3 : std_logic;
    signal L3 : std_logic;
    signal CTR3 : std_logic;

-- device 4
    signal Q4 : std_logic; 
    signal IQ4 : std_logic;
    signal L4 : std_logic;
    signal CTR4 : std_logic;

-- device 5
    signal Q5 : std_logic; 
    signal IQ5 : std_logic;
    signal L5 : std_logic;
    signal CTR5 : std_logic;

-- device 6
    signal Q6 : std_logic; 
    signal IQ6 : std_logic;
    signal L6 : std_logic;
    signal CTR6 : std_logic;

-- device 7
    signal Q7 : std_logic; 
    signal IQ7 : std_logic;
    signal L7 : std_logic;
    signal CTR7 : std_logic;

-- device 8
    signal Q8 : std_logic; 
    signal IQ8 : std_logic;
    signal L8 : std_logic;
    signal CTR8 : std_logic;


begin

-- common
    invert_clk <= not clk;
    CTR <= (not S1) and (not ENP) and (not ENT);
    S0S1 <= S0 and S1;
    IS1 <= not S1;
    Reset <=  not ((not S0 and not S1) and not S1 and not S0);
    invert_clk <= not clk;


-- device 1 
D1 : K1 port map (
        IS1 => IS1,
        S1 => S1,
        Reset => RESET,
        invert_clk => clk,
        S0S1 => S0S1,
        A => DATA,
        CTR => CTR,
        S0 => S0,
        Q1 => Q,
        IQ1 => IQ,
        L1 => L
    );
QA <= IQ1;


-- device 2
CTR2 <= L1 and CTR;
D2 : K1 port map (
        IS1 => IS1,
        S1 => S1,
        Reset => RESET,
        invert_clk => clk,
        S0S1 => S0S1,
        B => DATA,
        CTR2 => CTR,
        S0 => S0,
        Q2 => Q,
        IQ2 => IQ,
        L2 => L
    );
QB <= IQ2;


-- device 3
CTR3 <= L1 and L2 and CTR;
D3 : K1 port map (
        IS1 => IS1,
        S1 => S1,
        Reset => RESET,
        invert_clk => clk,
        S0S1 => S0S1,
        C => DATA,
        CTR3 => CTR,
        S0 => S0,
        Q3 => Q,
        IQ3 => IQ,
        L3 => L
    );
QC <= IQ3;

-- device 4
CTR4 <= L1 and L2 and L3 and CTR;
D4 : K1 port map (
        IS1 => IS1,
        S1 => S1,
        Reset => RESET,
        invert_clk => clk,
        S0S1 => S0S1,
        D => DATA,
        CTR4 => CTR,
        S0 => S0,
        Q4 => Q,
        IQ4 => IQ,
        L4 => L
    );
QD <= IQ4;

-- device 4
CTR4 <= L1 and L2 and L3 and CTR;
D4 : K1 port map (
        IS1 => IS1,
        S1 => S1,
        Reset => RESET,
        invert_clk => clk,
        S0S1 => S0S1,
        D => DATA,
        CTR4 => CTR,
        S0 => S0,
        Q4 => Q,
        IQ4 => IQ,
        L4 => L
    );
QD <= IQ4;


-- device 5
CTR5 <= L1 and L2 and L3 and L4 and CTR;
D5 : K1 port map (
        IS1 => IS1,
        S1 => S1,
        Reset => RESET,
        invert_clk => clk,
        S0S1 => S0S1,
        E => DATA,
        CTR5 => CTR,
        S0 => S0,
        Q5 => Q,
        IQ5 => IQ,
        L5 => L
    );
QE <= IQ5;

-- device 6
CTR6 <= L1 and L2 and L3 and L4 and L5 and CTR;
D6 : K1 port map (
        IS1 => IS1,
        S1 => S1,
        Reset => RESET,
        invert_clk => clk,
        S0S1 => S0S1,
        F => DATA,
        CTR6 => CTR,
        S0 => S0,
        Q6 => Q,
        IQ6 => IQ,
        L6 => L
    );
QF <= IQ6;


-- device 7
CTR7 <= L1 and L2 and L3 and L4 and L5 and L6 and CTR;
D7 : K1 port map (
        IS1 => IS1,
        S1 => S1,
        Reset => RESET,
        invert_clk => clk,
        S0S1 => S0S1,
        G => DATA,
        CTR7 => CTR,
        S0 => S0,
        Q7 => Q,
        IQ7 => IQ,
        L7 => L
    );
QG <= IQ7;

-- device 8
CTR8 <= L1 and L2 and L3 and L4 and L5 and L6 and L7 and CTR;
D8 : K1 port map (
        IS1 => IS1,
        S1 => S1,
        Reset => RESET,
        invert_clk => clk,
        S0S1 => S0S1,
        H => DATA,
        CTR8 => CTR,
        S0 => S0,
        Q8 => Q,
        IQ8 => IQ,
        L8 => L
    );
QH <= IQ8;



-- RCO

RCO <= not (
    (Q1 and S1 and L8 and L7 and L6 and L5 and L4 and L3 and L2 and L1 and S0 and(not ENT))
or 
    (IQ1 and (not S1) and L8 and L7 and L6 and L5 and L4 and L3 and L2 and L1 and S0 and(not ENT))
    );


end Behavioral;
