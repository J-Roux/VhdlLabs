----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/21/2016 02:39:39 PM
-- Design Name: 
-- Module Name: D_trigger_benchmark - Behavioral
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

entity D_trigger_benchmark is
--  Port ( );
end D_trigger_benchmark;

architecture Behavioral of D_trigger_benchmark is
    component D_trigger
       Port ( 
         R : in std_logic;
         S : in std_logic;
         D : in std_logic;
         clk: in std_logic;
         Q : out std_logic;
         IQ : out std_logic
       );
    end component;
    type INPUT_DATA_TYPE is array (0 to 7) of std_logic_vector(2 downto 0);
        
    signal clk : std_logic := '0';
    signal S : std_logic := '0';
    signal R : std_logic := '0';
    signal D : std_logic := '0';
    signal Q : std_logic := '0';
    signal IQ : std_logic := '0';
    constant delay : time := 20 ps;
begin
    D1 : D_trigger port map(
        clk => clk,
        S => S,
        R => R,
        D => D,
        Q => Q,
        IQ => IQ
    );
    process 
        variable clk_t : std_logic := '0';
        variable input : INPUT_DATA_TYPE := ("111",
                                             "011",
                                             "111",
                                             "110",
                                             "100",
                                             "110",
                                             "111",
                                             "110"
                                              );
    begin
        for i in 0 to 7 loop
            clk <= '0';
            R <= input(i)(2);
            S <= input(i)(1);
            D <= input(i)(0);
            wait for delay;
            clk <= '1';
            wait for delay;
        end loop;
        
    end process; 

end Behavioral;
