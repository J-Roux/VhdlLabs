----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2016 08:33:52
-- Design Name: 
-- Module Name: ControlDev - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity ControlDev is
  Port ( 
      SysClk_P : in std_logic;
      SysClk_N : in std_logic;
      
      DIPSW0 : in std_logic;
      DIPSW1 : in std_logic;
      DIPSW2 : in std_logic;
      DIPSW3 : in std_logic;
      
      PushButtonSW3 : in std_logic;
      PushButtonSW4 : in std_logic;
      PushButtonSW5 : in std_logic;
      PushButtonSW6 : in std_logic;
      PushButtonSW7 : in std_logic;
      
      LEDs          : out std_logic_vector(7 downto 0)
  );
end ControlDev;

architecture Behavioral of ControlDev is
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
  component Divider   
       Port (
           InputCLK    : in std_logic;
           KDiv        : in std_logic_vector(15 downto 0);
           OutputCLK   : out std_logic
       );
  end component;
  --component ControlLEDs   
  --     Port (
  --         Clk  : in std_logic;
  --         Swap : in std_logic;
  --         Data : in std_logic_vector (7 downto 0);
  --         LED : out std_logic_vector (3 downto 0);
  --         LedState : out std_logic
  --     );
  --end component;  
  --component ShiftReg   
  --     Port (
  --        Clk     : in std_logic;
  --        Input   : in std_logic;
  --        SL      : in std_logic;
  --        SR      : in std_logic;
  --        Enable  : in std_logic;
  --        Set     : in std_logic;
  --        Output  : out std_logic_vector(7 downto 0)
  --     );
  --end component;
   
   signal SysClkLocal : std_logic;
   signal BuffOutClk : std_logic;
   
   signal clkDiv1 : std_logic;
   signal clkDiv2 : std_logic;
--   signal clkDiv3 : std_logic;
   
   constant KDiv1 : std_logic_vector(15 downto 0) := conv_std_logic_vector(10000,16);
   constant KDiv2 : std_logic_vector(15 downto 0) := conv_std_logic_vector(10000,16);
--   constant KDiv3 : std_logic_vector(15 downto 0) := conv_std_logic_vector(2,16);
   
   signal DevInputData : std_logic_vector(7 downto 0) := conv_std_logic_vector(0,8);
   signal DevOutputData : std_logic_vector(7 downto 0);
   
   signal PBSW3_prev : std_logic := '0';

--   signal RegInput  : std_logic := '0';
--   signal RegShift  : std_logic := '0';
--   signal RegEnable : std_logic := '0'; 

--   constant const1 : std_logic := '1';
begin
CLK_IBUFDS: IBUFDS generic map (
        IOSTANDARD => "DEFAULT"
    ) port map (
        I  => SysClk_P,
        IB => SysClk_N,
        O  => BuffOutClk
    );    

Div1: Divider port map (
        InputCLK    => BuffOutClk,
        KDiv        => KDiv1,
        OutputCLK   => clkDiv1    
    );
Div2: Divider port map (
        InputCLK    => clkDiv1,
        KDiv        => KDiv2,
        OutputCLK   => clkDiv2        
    );

Dev:  SyncCountUD port map (
        Input_clk => clkDiv2,
        S0 => PushButtonSW4,
        S1 => PushButtonSW5,
        IENP => PushButtonSW6,
        IENT => PushButtonSW7,
        A => DevInputData(0), B => DevInputData(1), C => DevInputData(2), D => DevInputData(3),
        E => DevInputData(4), F => DevInputData(5), G => DevInputData(6), H => DevInputData(7),
        QA => DevOutputData(0), QB => DevOutputData(1), QC => DevOutputData(2), QD => DevOutputData(3),
        QE => DevOutputData(4), QF => DevOutputData(5), QG => DevOutputData(6), QH => DevOutputData(7)		
    );
--LEDs: ControlLEDs port map (
--        Clk     => clkDiv2,
--        Swap   => PushButtonSW3,
--        Data   => DevOutputData,
--        LED(0)    => LED0,
--        LED(1)    => LED1,
--        LED(2)    => LED2,
--        LED(3)    => LED3,
--        LedState  => LED_SWAP    
--    ); 
    
    LEDs <= DevOutputData;

    DevInputData(0) <= DIPSW0;
    DevInputData(1) <= DIPSW1;
    DevInputData(2) <= DIPSW2;
    DevInputData(3) <= DIPSW3;
    DevInputData(4) <= DIPSW0;
    DevInputData(5) <= DIPSW1;
    DevInputData(6) <= DIPSW2;
    DevInputData(7) <= DIPSW3;

    --process(clkDiv2, PushButtonSW3, PBSW3_prev, DIPSW0, DIPSW1, DIPSW2, DIPSW3)
    --begin
    --    if rising_edge(clkDiv2) then
    --        if(PushButtonSW3 = '1' and PBSW3_prev = '0') then

    --        end if;
    --        PBSW3_prev <= PushButtonSW3;
    --    end if;
    --end process;


end Behavioral;
