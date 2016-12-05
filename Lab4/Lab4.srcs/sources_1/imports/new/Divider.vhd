----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2016 10:06:15
-- Design Name: 
-- Module Name: Divider - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Divider is
  Port ( 
    InputCLK    : in std_logic;
    KDiv        : in std_logic_vector(15 downto 0);
    OutputCLK   : out std_logic
  );
end Divider;

architecture Behavioral of Divider is
    signal currSignal : std_logic := '0';   
begin
    process(InputCLK, KDiv)
        variable counter : integer range 0 to 65535;
        variable resCount : integer range 0 to 65535;
    begin
        resCount := conv_integer(KDiv);        
        if (InputCLK'event and InputCLK = '1') then  
            if resCount = 0 then
                currSignal <= '0';
                counter := 0;
            else 
                counter := counter + 1;                
                if (counter >= (resCount / 2)) and (counter < resCount)  then
                   currSignal <= '0'; 
                elsif counter >= resCount then
                   currSignal <= '1';
                   counter := 0; 
                end if;   
            end if;    
        end if;
    end process;
    OutputCLK <= currSignal;    
end Behavioral;
