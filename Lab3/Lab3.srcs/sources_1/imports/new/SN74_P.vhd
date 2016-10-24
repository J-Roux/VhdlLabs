----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/12/2016 08:56:10 PM
-- Design Name: 
-- Module Name: SN74_P - Behavioral_P
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

entity SN74_P is
  port(
       A, B, C, G1, G2A, G2B : in std_logic;
       Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7 : out std_logic
   );
end SN74_P;

architecture Behavioral_P of SN74_P is
    signal control : std_logic;
begin
    control <= not ( G1 and (not G2A) and (not G2B));
    Y0 <= not ((not control) and ((not A) and (not B) and (not C)));
    Y1 <= not ((not control) and ( A and (not B) and (not C)));
    Y2 <= not ((not control) and ((not A) and B and (not C)));
    Y3 <= not ((not control) and (A and B and (not C)));
    Y4 <= not ((not control) and ((not A) and (not B) and C));
    Y5 <= not ((not control) and (A and (not B) and C));
    Y6 <= not ((not control) and ((not A) and B and C));
    Y7 <= not ((not control) and (A and B and C));                            
            
end Behavioral_P;
