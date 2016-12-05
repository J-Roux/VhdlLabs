library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TestShiftReg is

end TestShiftReg;

architecture Behavioral of TestShiftReg is  
    component ShiftReg   
        Port (
            Clk     : in std_logic;
            Input   : in std_logic;
            SL      : in std_logic;
            SR      : in std_logic;
            Enable  : in std_logic;
            Set     : in std_logic;
            Output  : out std_logic_vector(7 downto 0)
        );
    end component;  
    
    signal clk      : std_logic := '0';

    signal data     : std_logic    := '0';
    signal ShL      : std_logic    := '0';
    signal ShR      : std_logic    := '0';
    signal clkEn    : std_logic    := '0';
    signal set      : std_logic    := '0';
    
    signal OUT_DATA : std_logic_vector(7 downto 0);
    
    constant frec : integer := 200000; --Hz
    constant ticks : time := (((1000000000 * 1000) / frec) / 2) * 1ps;
    
begin
Dev : ShiftReg port map (
            Clk => clk,
            Input => data,
            SL => ShL,
            SR => ShR,
            Enable => clkEn,
            Set => set, 
            Output => OUT_DATA
		);
    process
	begin      
        clk <= '0';
        wait for ticks;
        clk <= '1';
        wait for ticks;
        clkEn <= '1';
        data <= data xor '1';
        set <= '1';
        clk <= '0';
        wait for ticks;
        clk <= '1';
        wait for ticks;
        set <= '0';
        ShL <= '1';
        for i in 0 to 5 loop
            clk <= '0';
            wait for ticks;
            clk <= '1';
            wait for ticks;    
        end loop;
        ShL <= '0';
        clkEn <= '0';
        for i in 0 to 5 loop
            clk <= '0';
            wait for ticks;
            clk <= '1';
            wait for ticks;    
        end loop;
        clkEn <= '1';
        ShR <= '1';
        for i in 0 to 5 loop
            clk <= '0';
            wait for ticks;
            clk <= '1';
            wait for ticks;    
        end loop;
        clkEn <= '0';
        ShR <= '0';         
    end process;
end Behavioral;