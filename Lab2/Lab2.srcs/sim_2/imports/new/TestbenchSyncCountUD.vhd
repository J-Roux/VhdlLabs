library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TestbenchSyncCountUD is

end TestbenchSyncCountUD;

architecture Behavioral of TestbenchSyncCountUD is
    component SyncCountUD   
        Port (
        Input_clk : in std_logic;
        S0 : in std_logic;
        S1 : in std_logic;
        IENP : in std_logic;
        A : in std_logic;
        B : in std_logic;
        C : in std_logic;
        D : in std_logic;
        E : in std_logic;
        F : in std_logic;
        G : in std_logic;
        H : in std_logic;
        IENT : in std_logic;
        QA : out std_logic;
        QB : out std_logic;
        QC : out std_logic;
        QD : out std_logic;
        QE : out std_logic;
        QF : out std_logic;
        QG : out std_logic;
        QH : out std_logic;
        IRCO : out std_logic   
      );
    end component;

    signal clk : std_logic;
    signal S0 : std_logic;
    signal S1 : std_logic;
    signal ENP : std_logic;
    signal ENT : std_logic;
    signal IN_DATA : std_logic_vector(7 downto 0);
    signal OUT_DATA : std_logic_vector(7 downto 0);
    signal RCO : std_logic;
 	constant delay : time := 20 ns;

begin
Dev : SyncCountUD port map (
			Input_clk => clk,
			S0 => S0,
			S1 => S1,
			IENP => ENP,
			IENT => ENT,
			IRCO => RCO,
			A => IN_DATA(0), B => IN_DATA(1), C => IN_DATA(2), D => IN_DATA(3),
			E => IN_DATA(4), F => IN_DATA(5), G => IN_DATA(6), H => IN_DATA(7),
			QA => OUT_DATA(0),
			QB => OUT_DATA(1),
			QC => OUT_DATA(2),
			QD => OUT_DATA(3),
			QE => OUT_DATA(4),
			QF => OUT_DATA(5),
			QG => OUT_DATA(6),
			QH => OUT_DATA(7)		
		);

	process
	begin
-- init
        IN_DATA <= "11111100";
    
-- clear
		S0 <= '0';
		S1 <= '0';
		ENP <= '1';
        ENT <= '1';
        clk <= '1'; 
		for j in 0 to 4 loop
			wait for delay;
		end loop;
		
-- start clk
        clk <= '0';
		wait for delay;
		clk <= '1';
		wait for delay;
		clk <= '0';
        wait for delay;
        clk <= '1';
-- load 
	    ENP <= '0';
        ENT <= '0';
		S1 <= '1';
		wait for delay;
        for j in 0 to 2 loop
            clk <= '0';
            wait for delay;
            clk <= '1';
            wait for delay;            
        end loop;
-- count up
        S0 <= '1';
        for j in 0 to 15 loop
            clk <= '0';
            wait for delay;
            clk <= '1';
            wait for delay;            
        end loop;

-- count down
		S1 <= '0';
		for j in 0 to 15 loop
			clk <= '0';
			wait for delay;
			clk <= '1';
			wait for delay;
		end loop;

-- clear
		clk <= '0';
		S0 <= '0';
		S1 <= '0';
		wait for delay;
	    ENP <= '1';
        ENT <= '1';
        
-- set new data
        
        IN_DATA <= "00000101";
        
        S1 <= '1';
        wait for delay;
        ENP <= '0';
        ENT <= '0';
        wait for delay;
        for j in 0 to 2 loop
            clk <= '0';
            wait for delay;
            clk <= '1';
            wait for delay;            
        end loop;
        
-- count down
        S0 <= '1';
        S1 <= '0';
        for j in 0 to 10 loop
            clk <= '0';
            wait for delay;
            clk <= '1';
            wait for delay;
        end loop;
     
-- count up
        S1 <= '1';
        for j in 0 to 15 loop
            clk <= '0';
            wait for delay;
            clk <= '1';
            wait for delay;            
        end loop;
      
-- clear
        clk <= '0';
        S0 <= '0';
        S1 <= '0';
        wait for delay;
        ENP <= '1';
        ENT <= '1';
        
	end process ; 

end Behavioral;
