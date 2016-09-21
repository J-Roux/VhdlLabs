----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/21/2016 02:25:17 PM
-- Design Name: 
-- Module Name: D_trigger - Behavioral
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

entity D_trigger is
      Port ( 
        R : in std_logic;
        S : in std_logic;
        D : in std_logic;
        clk: in std_logic;
        Q : out std_logic;
        IQ : out std_logic
      );
end D_trigger;

architecture Behavioral of D_trigger is
begin
    process(clk, D, S, R)
        variable value : std_logic := '0';
    begin
        if rising_edge(clk) then
             value := D;
        end if;
        if S = '0' then
            value := '1';
        end if;
        if  R = '0' then
            value := '0';
        end if;
        Q <= value;
        IQ <= not value;
    end process;
  
end Behavioral;
