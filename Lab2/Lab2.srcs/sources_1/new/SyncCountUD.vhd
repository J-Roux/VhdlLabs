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
    component D_trigger
     Port ( 
           R : in std_logic;
           S : in std_logic;
           D : in std_logic;
           clk: in std_logic;
           Q : out std_logic;
           IQ : out std_logic
         );
    end component;
    signal invert_clk : std_logic;
    signal Reset :  std_logic;
    constant Set : std_logic := '1';
    signal Q_A :std_logic;
    signal IQ_A : std_logic;
    signal D_A : std_logic;
    signal Q_B :std_logic;
    signal IQ_B : std_logic;
    signal D_B : std_logic;
begin
    Reset <=  not ((not S0 and not S1) and not S1 and not S0);
    invert_clk <= not clk;

    D_A <= (
        (Q_A and S0) 
        xor 
        (not S0 and not ENP and not ENT)
        ) 
        or (
        (S1 and S0) 
        and A);
    TA : D_trigger port map ( invert_clk => clk,
                  Reset => R,       
                  Set => S,
                  Q_A => Q, IQ_A => IQ, D_A => D 
    ); 
    QA <= not IQ_A;

    D_B <= (
         ((Q_B and S0) 
         xor
         (not S0 and not ENP and not ENT)) 
         and (not ((IQ_B and S1) or (not S1 and Q_A)))
         ) 
         or 
         ((S1 and S0) and A);
    TB : D_trigger port map ( invert_clk => clk,
                  Reset => R,       
                  Set => S,
                  Q_B => Q, IQ_B => IQ, D_B => D 
    ); 
    QB <= not IQ_B;

    D_C <= (
         (Q_C and S0) 
         xor
         (not S0 and not ENP and not ENT) 
         and not ((IQ_B and S1) or (not S1 and Q_A))
         ) 
         or 
         ((S1 and S0) and A);
    TB : D_trigger port map ( invert_clk => clk,
                  Reset => R,       
                  Set => S,
                  Q_B => Q, IQ_B => IQ, D_B => D 
    ); 
    QB <= not IQ_B;


end Behavioral;
