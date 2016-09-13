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
       A : in std_logic;
       B : in std_logic;
       C : in std_logic;
       G1 : in std_logic;
       G2A : in std_logic;
       G2B : in std_logic;
       Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7 : out std_logic
   );
end SN74_P;

architecture Behavioral_P of SN74_P is
 signal control : std_logic_vector(2 downto 0);
 signal in_data : std_logic_vector(2 downto 0);
begin
    control(2) <= G1;
    control(1) <= G2A;
    control(0) <= G2B;
    in_data(0) <= A;
    in_data(1) <= B;
    in_data(2) <= C;
    Y0 <= '0' when (control = "100" and in_data = "000") else '1';
    Y1 <= '0' when (control = "100" and in_data = "001") else '1';
    Y2 <= '0' when (control = "100" and in_data = "010") else '1';
    Y3 <= '0' when (control = "100" and in_data = "011") else '1';
    Y4 <= '0' when (control = "100" and in_data = "100") else '1';
    Y5 <= '0' when (control = "100" and in_data = "101") else '1';
    Y6 <= '0' when (control = "100" and in_data = "110") else '1';
    Y7 <= '0' when (control = "100" and in_data = "111") else '1';
                               
            
end Behavioral_P;
