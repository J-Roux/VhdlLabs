library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TestDivider is

end TestDivider;

architecture Behavioral of TestDivider is  
    component Divider   
        Port (
            InputCLK    : in std_logic;
            KDiv        : in std_logic_vector(15 downto 0);
            OutputCLK   : out std_logic
        );
    end component;  
    
    signal clk : std_logic;
    signal clkDiv1 : std_logic;
    signal clkDiv2 : std_logic;
    signal clkDiv3 : std_logic;
    
    signal OUT_DATA : std_logic_vector(7 downto 0);
    
    constant frec : integer := 200000000; --Hz
    constant ticks : time := (((1000000000 * 1000) / frec) / 2) * 1ps;
    
    signal KDiv1 : std_logic_vector(15 downto 0) := conv_std_logic_vector(10000,16);
    signal KDiv2 : std_logic_vector(15 downto 0) := conv_std_logic_vector(10000,16);
    signal KDiv3 : std_logic_vector(15 downto 0) := conv_std_logic_vector(2,16);
    
begin
Div1 : Divider port map (
        InputCLK    => clk,
        KDiv        => KDiv1,
        OutputCLK   => clkDiv1	
		);
Div2 : Divider port map (
        InputCLK    => clkDiv1,
        KDiv        => KDiv2,
        OutputCLK   => clkDiv2        
        );
Div3 : Divider port map (
        InputCLK    => clkDiv2,
        KDiv        => KDiv3,
        OutputCLK   => clkDiv3        
        );
    process
	begin      
        clk <= '0';
        wait for ticks;
        clk <= '1';
        wait for ticks;           
    end process;
    OUT_DATA(0) <= clkDiv1;
    OUT_DATA(1) <= clkDiv2;
    OUT_DATA(2) <= clkDiv3;
    OUT_DATA(3) <= '0';
    OUT_DATA(4) <= '0';
    OUT_DATA(5) <= '0';
    OUT_DATA(6) <= '0';
    OUT_DATA(7) <= '0';
end Behavioral;