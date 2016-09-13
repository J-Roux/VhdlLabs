----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/12/2016 05:59:18 PM
-- Design Name: 
-- Module Name: TestBench - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TestBench is
--  Port ( );
end TestBench;

architecture Behavioral of TestBench is
    component SN74
     port(
          A : in std_logic;
          B : in std_logic;
          C : in std_logic;
          G1 : in std_logic;
          G2A : in std_logic;
          G2B : in std_logic;
          Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7 : out std_logic
      );
    end component;
    component SN74_P
         port(
              A : in std_logic;
              B : in std_logic;
              C : in std_logic;
              G1 : in std_logic;
              G2A : in std_logic;
              G2B : in std_logic;
              Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7 : out std_logic
          );
        end component;
        
        
    
    signal G1, G2A, G2B : std_logic := '0';
    signal Y : std_logic_vector( 7 downto 0);
    signal Y_P : std_logic_vector( 7 downto 0);
    signal X : std_logic_vector( 2 downto 0);
    constant delay : time := 20 ps;
begin
    D1: SN74 port map( G1 => G1,
                        G2A => G2A,
                        G2B => G2B,
                        Y0 => Y(0),
                        Y1 => Y(1),
                        Y2 => Y(2),
                        Y3 => Y(3),
                        Y4 => Y(4),
                        Y5 => Y(5),
                        Y6 => Y(6),
                        Y7 => Y(7),
                        A => X(0),
                        B => X(1),
                        C => X(2)
                        );
      D2: SN74_P port map( G1 => G1,
                         G2A => G2A,
                         G2B => G2B,
                         Y0 => Y_P(0),
                         Y1 => Y_P(1),
                         Y2 => Y_P(2),
                         Y3 => Y_P(3),
                         Y4 => Y_P(4),
                         Y5 => Y_P(5),
                         Y6 => Y_P(6),
                         Y7 => Y_P(7),
                         A => X(0),
                         B => X(1),
                         C => X(2)
                         );
    tb: process
        variable tmp : std_logic_vector(2 downto 0); 
    begin
        G1 <= '0';
        G2A <= '0';
        G2B <= '0';
        for j in 0 to 7 loop
            tmp := std_logic_vector(to_unsigned(j, 3));
            G1 <= tmp(0);
            G2A <= tmp(1);
            G2B <= tmp(2);
            for i in 0 to 7 loop
                X <= std_logic_vector(to_unsigned(i, 3));
                wait for delay;
            end loop;
            
        end loop;
        
    end process;                       

end Behavioral;
