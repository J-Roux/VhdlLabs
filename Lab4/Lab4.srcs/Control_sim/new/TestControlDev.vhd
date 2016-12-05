library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TestControlDev is

end TestControlDev;

architecture Behavioral of TestControlDev is  
    component ControlDev
        Port ( 
          SysClk : in std_logic;
          
          DIPSW0 : in std_logic;
          DIPSW1 : in std_logic;
          DIPSW2 : in std_logic;
          DIPSW3 : in std_logic;
          
          PushButtonSW3 : in std_logic;
          PushButtonSW4 : in std_logic;
          PushButtonSW6 : in std_logic;
          PushButtonSW7 : in std_logic;
          
          LED0 : out std_logic;
          LED1 : out std_logic;
          LED2 : out std_logic;
          LED3 : out std_logic
        );
    end component; 
    
    signal clk : std_logic;
    
    signal OUT_DATA : std_logic_vector(3 downto 0);
    
    signal DEBUG_OUT : std_logic_vector(7 downto 0);
    signal DEBUG_IN : std_logic_vector(7 downto 0);    
    
    signal DIPSWInput : std_logic_vector(3 downto 0) := conv_std_logic_vector(0,4);
    signal PBInput : std_logic_vector(4 downto 0) := conv_std_logic_vector(0,5);
    
    constant frec : integer := 200000; --Hz
    constant ticks : time := (((1000000000 * 1000) / frec) / 2) * 1ps;
    
begin
Dev : ControlDev port map (
        SysClk => clk,
        DIPSW0 => DIPSWInput(0),
        DIPSW1 => DIPSWInput(1),
        DIPSW2 => DIPSWInput(2),
        DIPSW3 => DIPSWInput(3),            
        PushButtonSW3 => PBInput(0),
        PushButtonSW4 => PBInput(1),
        PushButtonSW6 => PBInput(3),
        PushButtonSW7 => PBInput(4),           
        LED0 => OUT_DATA(0), 
        LED1 => OUT_DATA(1),
        LED2 => OUT_DATA(2),
        LED3 => OUT_DATA(3)  
    );
    
    process
        variable flag : std_logic := '0';
        variable flag1 : std_logic := '0';
	begin
	   if(flag = '0') then
	       for j in 0 to 1 loop 
               clk <= '0';
               wait for ticks;               
               PBInput(0) <= '1';
               clk <= '1';
               wait for ticks;
               PBInput(0) <= '0';
           end loop;
           flag := flag xor '1'; 
       end if;
              
        DIPSWInput(0) <= '0';
        DIPSWInput(1) <= '1';
       
        for j in 0 to 10 loop              
            clk <= '0';
            wait for ticks;
            clk <= '1';
            wait for ticks;
        end loop;
        
        if(flag1 = '0') then
            PBInput(3) <= '1';
            clk <= '0';
            wait for ticks;
            clk <= '1';
            wait for ticks;
            PBInput(3) <= '0';        
            for j in 0 to 5 loop              
                clk <= '0';
                wait for ticks;
                clk <= '1';
                wait for ticks;
            end loop;            
        end if;        
        flag1 := flag1 xor '1';
        
        PBInput(4) <= '1';
        clk <= '0';
        wait for ticks;
        clk <= '1';
        wait for ticks;
        PBInput(4) <= '0';
        
--        DIPSWInput(0) <= '1';
--        for j in 0 to 10 loop              
--            clk <= '0';
--            wait for ticks;
--            clk <= '1';
--            wait for ticks;
--        end loop;
    end process;
end Behavioral;