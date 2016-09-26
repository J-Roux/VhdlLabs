library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TestbenchSyncCountUD is

end TestbenchSyncCountUD;

architecture Behavioral of TestbenchSyncCountUD is
    component SyncCountUD   
        Port (
        clk : in std_logic;
        S0 : in std_logic;
        S1 : in std_logic;
        ENP : in std_logic;
        A : in std_logic;
        B : in std_logic;
        C : in std_logic;
        D : in std_logic;
        E : in std_logic;
        F : in std_logic;
        G : in std_logic;
        H : in std_logic;
        ENT : in std_logic;
        QA : out std_logic;
        QB : out std_logic;
        QC : out std_logic;
        QD : out std_logic;
        QE : out std_logic;
        QF : out std_logic;
        QG : out std_logic;
        QH : out std_logic;
        RCO : out std_logic
      );
    end component;

    signal clk : std_logic := '0';
    signal S0 : std_logic := '0';
    signal S1 : std_logic := '0';
    signal ENP : std_logic := '0';
    signal ENT : std_logic := '0';
    signal IN_DATA : std_logic_vector(7 downto 0);
    signal OUT_DATA : std_logic_vector(7 downto 0);
    signal RCO : std_logic := '0';
 	constant delay : time := 20 ps;

begin
	D1 : SyncCountUD port map (
			clk => clk,
			S0 => S0,
			S1 => S1,
			ENP => ENP,
			ENT => ENT,
			RCO => RCO,
			IN_DATA(0) => A, IN_DATA(1) => B, IN_DATA(2) => C, IN_DATA(3) => D,
			IN_DATA(4) => E, IN_DATA(5) => F, IN_DATA(6) => G, IN_DATA(7) => H,
			OUT_DATA(0) => QA,
			OUT_DATA(1) => QB,
			OUT_DATA(2) => QC,
			OUT_DATA(3) => QD,
			OUT_DATA(4) => QE,
			OUT_DATA(5) => QF,
			OUT_DATA(6) => QG,
			OUT_DATA(7) => QH
		);

	process
	begin

	-- loading
		S1 <= '1';
		S0 <= '0';
		IN_DATA <= "00001000";
		wait for delay;
		clk <= '1'
		wait for delay;

	-- count up
		S0 <= '1';
		S1 <= '1';
		for j in 0 to 15 loop
			clk <= '0';
			wait for delay;
			clk <= '1';
			wait for delay;
		end loop;

	-- count down
		S0 <= '1';
		S1 <= '0';
		for j in 0 to 15 loop
			clk <= '0';
			wait for delay;
			clk <= '1';
			wait for delay;
		end loop;

	-- clear
		clk <= '0'
		S0 <= '0';
		S1 <= '0';
		wait for delay;
		

	end process ; 

end Behavioral;
