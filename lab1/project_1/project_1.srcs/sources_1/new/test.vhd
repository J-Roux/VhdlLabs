----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/07/2016 06:14:56 PM
-- Design Name: 
-- Module Name: test - Behavioral
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

entity SN74 is
--  Port ( );
    port(
        A : in std_logic;
        B : in std_logic;
        C : in std_logic;
        G1 : in std_logic;
        G2A : in std_logic;
        G2B : in std_logic;
        Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7 : out std_logic
    );
end SN74;

architecture Behavioral of SN74 is
begin
    process(A, B, C, G1, G2A, G2B)
        variable TMP1 : std_logic;
    begin
    if (G1 = '1' and G2A = '0' and G2B = '1')     
        Y0 <= not (not A and not B and not C);
        Y1 <= not ( A and (not B) and (not C));
        Y2 <= not (not A and B and not C);
        Y3 <= not (A and B and not C);
        Y4 <= not (not A and not B and C);
        Y5 <= not (A and not B and C);
        Y6 <= not (not A and B and C);
        Y7 <= not (A and B and C);
    else
        Y0 <= '0';
        Y1 <= '0';
        Y2 <= '0';
        Y3 <= '0';
        Y4 <= '0';
        Y5 <= '0';
        Y6 <= '0';
        Y7 <= '0';
    end if;    
        
        
        
        
        
        
    end process;
end Behavioral;

