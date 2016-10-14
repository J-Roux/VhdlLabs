library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity K2 is
      Port (
        S0 : in std_logic;      	
      	S1 : in std_logic;
      	IS1 : in std_logic;
      	clk : in std_logic;
      	RESET : in std_logic;
      	S0S1: in std_logic;
      	DATA : in std_logic;
      	CTR : in std_logic;
      	Q : out std_logic;
      	IQ : out std_logic;
      	L : out std_logic
      );
end K2;

architecture Behavioral of K2 is
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
    signal IQ_t : std_logic;
    signal Q_t : std_logic;
    signal SET : std_logic := '1';
    signal D : std_logic;
begin
DEV : D_trigger port map (
		clk => clk,
		R => RESET,
		Q => Q_t,
		D => D,
		S => SET,
		IQ => IQ_t
	);
	D <= ((S0 and Q_t) xor CTR) or (S0S1 and DATA);
    L <= not ((S1 and IQ_t) or (IS1 and Q_t)); 
--	process
--	   variable data_in : std_logic;
--	   variable ctrl_out : std_logic;
--	begin  
-- 	  data_in := (( S0 and Q_t) xor CTR) or (S0S1 and DATA);
-- 	  D <= data_in;
--	  ctrl_out := not ((S1 and IQ_t) or (IS1 and Q_t));
--	  L <= ctrl_out; 
--    end process;
end Behavioral;
