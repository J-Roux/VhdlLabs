library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity K1 is
      Port (
      	IS1 : in std_logic;
      	S1 : in std_logic;
      	clk : in std_logic;
      	RESET : in std_logic;
      	S0S1: in std_logic;
      	DATA : in std_logic;
      	CTR : in std_logic;
      	S0 : in std_logic;
      	Q : out std_logic;
      	IQ : out std_logic;
      	L : out std_logic
      );
end K1;

architecture Behavioral of K1 is
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
 	D <= ((S0 and Q_t) xor CTR) or (S0S1 and DATA);
	Q <= Q_t;
	IQ <= IQ_t;
	L <= not (S1 and IQ_t) or (IS1 and Q_t); 
DEV : D_trigger port map (
		clk => clk,
		R => RESET,
		Q => Q_t,
		D => D,
		S => SET,
		IQ => IQ_t
	);  

    


end Behavioral;
