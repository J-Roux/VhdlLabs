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
    port(
        A, B, C, G1, G2A, G2B : in std_logic;
        Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7 : out std_logic
    );
end SN74;

architecture Behavioral of SN74 is
begin
    process(A, B, C, G1, G2A, G2B )
       variable mass_out : std_logic_vector(7 downto 0);
       variable mass_in  : std_logic_vector(2 downto 0);
    begin
    --mass_in[0] := A;
    --mass_in[1] := B;
    --mass_in[2] := C;
    if (G1 = '1' and G2A = '0' and G2B = '0') then                
        mass_out(0) := not ((not A) and (not B) and (not C));
        mass_out(1) :=  not ( A and (not B) and (not C));
        mass_out(2) :=  not ((not A) and B and (not C));
        mass_out(3) :=  not (A and B and (not C));
        mass_out(4) :=  not ((not A) and (not B) and C);
        mass_out(5) :=  not (A and (not B) and C);
        mass_out(6) :=  not ((not A) and B and C);
        mass_out(7) :=  not (A and B and C);           
    else
        mass_out := "11111111";
    end if;    
    Y0 <= mass_out(0);    
    Y1 <= mass_out(1);
    Y2 <= mass_out(2);
    Y3 <= mass_out(3);
    Y4 <= mass_out(4);
    Y5 <= mass_out(5);
    Y6 <= mass_out(6);
    Y7 <= mass_out(7); 
    end process;
end Behavioral;
