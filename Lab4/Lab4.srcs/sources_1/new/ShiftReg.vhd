library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ShiftReg is
	Port (
		Clk 	: in std_logic;
		Input 	: in std_logic;
		SL 		: in std_logic;
		SR 		: in std_logic;
		Enable 	: in std_logic;
		Set 	: in std_logic;
		Output 	: out std_logic_vector(7 downto 0) := conv_std_logic_vector(0,8)
	);
end ShiftReg;

architecture Behavioral of ShiftReg is
	signal reg : std_logic_vector(7 downto 0) := conv_std_logic_vector(0,8);
begin
	process(Clk, Input, Enable, SL, SR, Set)
	begin
		if rising_edge(Clk) then
			if Enable = '1' then
				if SL = '1' then
					for i in 0 to 6 loop
						reg(i + 1) <= reg(i); 
					end loop;
					reg(0) <= '0';
				elsif SR = '1' then
					for i in 7 downto 1 loop
						reg(i - 1) <= reg(i); 
					end loop;
					reg(7) <= '0';
				end if;				
			end if;
			if Set = '1' then
				reg(0) <= Input;
			end if;	
		end if;
	end process;
	Output <= reg;
end Behavioral;
