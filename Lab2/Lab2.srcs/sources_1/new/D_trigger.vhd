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

entity DTrigger is
      Port ( 
        R : in std_logic;
        S : in std_logic;
        D : in std_logic;
        clk: in std_logic;
        Q : out std_logic;
        IQ : out std_logic
      );
end DTrigger;

architecture Behavioral of DTrigger is
    
begin
    process(clk, S, R)      
    begin
        if R = '0' then
        Q <= '0';
        IQ <= '1';
        elsif S = '0' then
        Q <= '1';
        IQ <= '0';
        elsif (clk'event and clk = '1') then
            Q <= D;
            IQ <= not D;
        end if;
    end process;
end Behavioral;
