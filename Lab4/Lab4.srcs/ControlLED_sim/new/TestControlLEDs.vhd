library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TestControlLEDs is

end TestControlLEDs;

architecture Behavioral of TestControlLEDs is  
    component ControlLEDs   
        Port (
            Swap : in std_logic;
            Data : in std_logic_vector (7 downto 0);
            LED : out std_logic_vector (3 downto 0)
        );
    end component;  
    
    signal button : std_logic;
    
    signal IN_DATA : std_logic_vector(7 downto 0) := conv_std_logic_vector(0,8);
    signal OUT_DATA : std_logic_vector(3 downto 0);
    
    constant frec : integer := 200000; --Hz
    constant ticks : time := (((1000000000 * 1000) / frec) / 2) * 1ps;
    
begin
Dev : ControlLEDs port map (
        Swap   => button,
        Data   => IN_DATA,
        LED    => OUT_DATA	
		);
    process
	begin      
        button <= '0';
        wait for ticks;
        button <= '1';
        wait for ticks;
        IN_DATA <= IN_DATA + 1;           
    end process;
end Behavioral;