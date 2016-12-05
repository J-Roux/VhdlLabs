library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TestControlDev is

end TestControlDev;

architecture Behavioral of TestControlDev is  
  component ControlDev
    Port( 
      SysClk_P : in std_logic;
      SysClk_N : in std_logic;
      
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
      LED3 : out std_logic;
      LED_RCO   : out std_logic
    );
  end component; 
  
  signal clk_p : std_logic;
  signal clk_n : std_logic;
  
  signal OUT_DATA : std_logic_vector(3 downto 0);
  signal RCO : std_logic;
  
  signal DEBUG_OUT : std_logic_vector(7 downto 0);
  signal DEBUG_IN : std_logic_vector(7 downto 0);    
  
  signal DIPSWInput : std_logic_vector(3 downto 0) := conv_std_logic_vector(0,4);
  signal PBInput : std_logic_vector(3 downto 0) := conv_std_logic_vector(0,4);
  
  constant frec : integer := 200000; --Hz
  constant ticks : time := (((1000000000 * 1000) / frec) / 2) * 1ps;
    
begin
Dev:  ControlDev port map(
        SysClk_P => clk_p,
        SysClk_N => clk_n,
        DIPSW0 => DIPSWInput(0),
        DIPSW1 => DIPSWInput(1),
        DIPSW2 => DIPSWInput(2),
        DIPSW3 => DIPSWInput(3),            
        PushButtonSW3 => PBInput(0),    -- swap
        PushButtonSW4 => PBInput(1),    -- shift rigth
        PushButtonSW6 => PBInput(2),    -- enter
        PushButtonSW7 => PBInput(3),    -- shift left       
        LED0 => OUT_DATA(0), 
        LED1 => OUT_DATA(1),
        LED2 => OUT_DATA(2),
        LED3 => OUT_DATA(3),
        LED_RCO => RCO
      );
  
  clk_n <= not clk_p;

  process
    variable modeCount : integer range 0 to 4 := 0;
    variable counter : integer := 0;
    variable curr : integer := 0;
    variable localTicks : integer := 0;
	begin
MainLoop: for modeCount in 0 to 4 loop  
            case modeCount is
              when 0 =>                    -- clear
                DIPSWInput <= "0000";
                PBInput <= "0000";
                clk_p <= '0';
                wait for ticks;
                clk_p <= '1';
                wait for ticks;	       
                assert OUT_DATA = "0000"
                  report "Clear error";
              when 1 => --next;                   -- count up
                DIPSWInput <= "0011";
                PBInput <= "0000";
                localTicks := 0;
                curr := 0;
UpLoop:         while not (curr = 254) loop
                  assert OUT_DATA = conv_std_logic_vector(curr, 4) 
                    report "Count up error";
loop1:            for i in 0 to 100 loop
                    clk_p <= '0';
                    wait for ticks;
                    clk_p <= '1';
                    wait for ticks;   
                  end loop loop1;         
                  curr := curr + 1; 
                end loop UpLoop;
                assert RCO = '0'
                  report "RCO error"; 
              when 2 => --next;                   -- count down
                DIPSWInput <= "0001";
                PBInput <= "0000";
                localTicks := 0;
                curr := 255;
DownLoop:       while not (localTicks >= 255) loop
                  if curr = 0 then
                    assert RCO = '0'
                      report "RCO error"; 
                    curr := 255;                            
                  else
                    curr := curr - 1; 
                  end if;
                  counter := 0;
loop4:            while not (counter = 100) loop
                    clk_p <= '0';
                    wait for ticks;
                    clk_p <= '1';
                    wait for ticks;
                    counter := counter + 1;    
                  end loop loop4;             
                  assert OUT_DATA = conv_std_logic_vector(curr, 4) 
                    report "Count down error";
                  localTicks := localTicks + 1;
                end loop DownLoop;
              when 3 => 
                DIPSWInput <= "0010";
                PBInput <= "0000";
                localTicks := 0;
                curr := 0;
LoadLoop1:       while not (localTicks = 8) loop
                  PBInput(3) <= '1';
                  clk_p <= '0';
                  wait for ticks;
                  clk_p <= '1';
                  wait for ticks;
                  PBInput(3) <= '0';
                  curr := curr * 2;
                  counter := 0;
loop3:            while not (counter = 100) loop
                    clk_p <= '0';
                    wait for ticks;
                    clk_p <= '1';
                    wait for ticks;
                    counter := counter + 1;    
                  end loop loop3;             
                  --assert OUT_DATA = conv_std_logic_vector(curr, 4) 
                  --  report "Shift error";

                  PBInput(2) <= '1';
                  clk_p <= '0';
                  wait for ticks;
                  clk_p <= '1';
                  wait for ticks;
                  PBInput(2) <= '0';
                  curr := curr + 1; 
                  counter := 0;
loop2:            while not (counter = 100) loop
                    clk_p <= '0';
                    wait for ticks;
                    clk_p <= '1';
                    wait for ticks;
                    counter := counter + 1;    
                  end loop loop2;             
                  --assert OUT_DATA = conv_std_logic_vector(curr, 4) 
                  --  report "Enter error";
                  localTicks := localTicks + 1;
                end loop LoadLoop1;
              when 4 => --next;
                DIPSWInput <= "0010";
                PBInput <= "0000";
                localTicks := 0;
                curr := 255;
LoadLoop2:      while not (localTicks = 8) loop
                  PBInput(1) <= '1';
                  clk_p <= '0';
                  wait for ticks;
                  clk_p <= '1';
                  wait for ticks;
                  PBInput(1) <= '0';
                  curr := curr / 2;
                  counter := 0;
loop5:            while not (counter = 100) loop
                    clk_p <= '0';
                    wait for ticks;
                    clk_p <= '1';
                    wait for ticks;
                    counter := counter + 1;    
                  end loop loop5;             
                  --assert OUT_DATA = conv_std_logic_vector(curr, 4) 
                  --  report "Shift error";

                  PBInput(2) <= '1';
                  clk_p <= '0';
                  wait for ticks;
                  clk_p <= '1';
                  wait for ticks;
                  PBInput(2) <= '0';
                  curr := curr - 1; 
                  counter := 0;
loop6:            while not (counter = 100) loop
                    clk_p <= '0';
                    wait for ticks;
                    clk_p <= '1';
                    wait for ticks;
                    counter := counter + 1;    
                  end loop loop6;             
                  --assert OUT_DATA = conv_std_logic_vector(curr, 4) 
                  --  report "Enter error";
                  localTicks := localTicks + 1;
                end loop LoadLoop2;
            end case;       
        end loop MainLoop;
        modeCount := 0;
    end process;
end Behavioral;