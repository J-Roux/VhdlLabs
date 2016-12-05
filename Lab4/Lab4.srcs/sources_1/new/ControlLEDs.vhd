----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2016 07:56:43
-- Design Name: 
-- Module Name: ControlLEDs - Behavioral
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

entity ControlLEDs is
    Port ( 
        Clk     : in std_logic;
        Swap    : in std_logic;
        Data    : in std_logic_vector (7 downto 0);
        LED     : out std_logic_vector (3 downto 0);
        LedState : out std_logic
    );
end ControlLEDs;

architecture Behavioral of ControlLEDs is
    signal state        : std_logic := '0';
    signal swap_prev    : std_logic := '0';     
begin
    process(Clk, Swap, Data)
    begin
        if rising_edge(Clk) then
            if (Swap = '1' and swap_prev = '0') then
                state <= state xor '1';                  
            end if;
            swap_prev <= Swap;
            if state = '0' then
                LED(0) <= Data(0);
                LED(1) <= Data(1);
                LED(2) <= Data(2);
                LED(3) <= Data(3);
            elsif state = '1' then
                LED(0) <= Data(4);
                LED(1) <= Data(5);
                LED(2) <= Data(6);
                LED(3) <= Data(7);
            end if;
        end if;   
    end process;
    LedState <= state;
end Behavioral;
