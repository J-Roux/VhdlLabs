----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/03/2016 05:21:12 PM
-- Design Name: 
-- Module Name: TestModule - Behavioral
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
use ieee.std_logic_textio.all;
use std.textio.all; 
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TestModule is
--  Port ( );
end TestModule;

architecture Behavioral of TestModule is
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
    
    file test_file_input : text;
    file test_file_output : text;
    
    signal G1, G2A, G2B : std_logic := '0';
    signal Y : std_logic_vector( 7 downto 0);
    signal Y_P : std_logic_vector( 7 downto 0);
    signal X : std_logic_vector( 2 downto 0);
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
    process
        variable file_status_input : file_open_status;
        variable current_line_input: line;
        variable input : std_logic_vector(5 downto 0);
        variable file_status_output : file_open_status;
        variable current_line_output : line;
        variable output : std_logic_vector(7 downto 0);
    begin
    
    file_open(file_status_input,test_file_input,
        "/home/pavel/Vhdl/VhdlLabs/Lab1/Lab1.srcs/sim_2/imports/new/input");
    file_open(file_status_output,test_file_output,
        "/home/pavel/Vhdl/VhdlLabs/Lab1/Lab1.srcs/sim_2/imports/new/output");
   
    while not endfile(test_file_input) loop 
        readline(test_file_input, current_line_input);
        read(current_line_input, input);
        
        readline(test_file_output, current_line_output);
        read(current_line_output, output);
                
       G1 <= input(5);
       G2A <= input(4);
       G2B <= input(3);
       X(0) <= input(0);
       X(1) <= input(1);
       X(2) <= input(2);
       Y_P <= output;
       if not( Y = Y_P) then
       assert false
        report "Test fail!  " & integer'image(to_integer(unsigned(Y))) & "  " 
        & integer'image(to_integer(unsigned(Y_P)));
       end if;
       wait for 1ns;
    end loop;
    wait;
    end process;


end Behavioral;
