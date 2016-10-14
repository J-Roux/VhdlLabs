----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/21/2016 05:35:30 PM
-- Design Name: 
-- Module Name: SyncCountUD - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SyncCountUD is
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
end SyncCountUD;

architecture Behavioral of SyncCountUD is
    component DTrigger
        Port (
            R : in std_logic;
            S : in std_logic;
            D : in std_logic;
            clk: in std_logic;
            Q : out std_logic;
            IQ : out std_logic
          );
        end component;

-- common
    signal IClk : std_logic;
    signal IReset : std_logic;
    signal IS0 : std_logic;
    signal IS1 : std_logic;
    constant const1 : std_logic := '1';
    signal Crtl_1 : std_logic;
    signal Crtl_2 : std_logic;
-- Qa
    signal CtrlIn_A_1 : std_logic;
    signal InD_A : std_logic;
    signal OutQ_A :std_logic;
    signal OutIQ_A : std_logic;
    signal CtrlOut_A : std_logic;
-- Qb
    signal CtrlIn_B_1 : std_logic;
    signal CtrlIn_B_2 : std_logic;
    signal InD_B : std_logic;
    signal OutQ_B :std_logic;
    signal OutIQ_B : std_logic;
    signal CtrlOut_B : std_logic;
-- Qc
    signal CtrlIn_C_1 : std_logic;
    signal CtrlIn_C_2 : std_logic;
    signal InD_C : std_logic;
    signal OutQ_C :std_logic;
    signal OutIQ_C : std_logic;
    signal CtrlOut_C : std_logic;
-- Qd
    signal CtrlIn_D_1 : std_logic;
    signal CtrlIn_D_2 : std_logic;
    signal InD_D : std_logic;
    signal OutQ_D :std_logic;
    signal OutIQ_D : std_logic;
    signal CtrlOut_D : std_logic;            
-- Qe
    signal CtrlIn_E_1 : std_logic;
    signal CtrlIn_E_2 : std_logic;
    signal InD_E : std_logic;
    signal OutQ_E :std_logic;
    signal OutIQ_E : std_logic;
    signal CtrlOut_E : std_logic;
-- Qf
    signal CtrlIn_F_1 : std_logic;
    signal CtrlIn_F_2 : std_logic;
    signal InD_F : std_logic;
    signal OutQ_F :std_logic;
    signal OutIQ_F : std_logic;
    signal CtrlOut_F : std_logic;
-- Qg
    signal CtrlIn_G_1 : std_logic;
    signal CtrlIn_G_2 : std_logic;
    signal InD_G : std_logic;
    signal OutQ_G :std_logic;
    signal OutIQ_G : std_logic;
    signal CtrlOut_G : std_logic;
-- Qh
    signal CtrlIn_H_1 : std_logic;
    signal CtrlIn_H_2 : std_logic;
    signal InD_H : std_logic;
    signal OutQ_H :std_logic;
    signal OutIQ_H : std_logic;
    signal CtrlOut_H : std_logic;                          
    
begin

-- common
    IClk <= Input_clk;
    IS0 <= not S0;
    IS1 <= not S1;
    Crtl_1 <= (S0) and ( not IENP) and ( not IENT);
    Crtl_2 <= IS0 and (not IS1);
    IReset <= not (IS0 and IS1 and (IS0 and IS1));
   
-- Qa logic

    CtrlIn_A_1 <= S0 and OutQ_A;
    InD_A <= (CtrlIn_A_1 xor Crtl_1) or (Crtl_2 and A);
       
TA: DTrigger port map (
        R => IReset,
        S => const1,
        D => InD_A,
        clk => IClk,
        Q => OutQ_A,
        IQ => OutIQ_A
    );
    
    QA <= not OutIQ_A;
    CtrlOut_A <= (IS1 and OutQ_A) nor (OutIQ_A and S1);

-- Qb logic
    CtrlIn_B_1 <= S0 and OutQ_B;
    CtrlIn_B_2 <= Crtl_1 and CtrlOut_A;
    InD_B <= (CtrlIn_B_1 xor CtrlIn_B_2) or (Crtl_2 and B);
        
TB: DTrigger port map (
        R => IReset,
        S => const1,
        D => InD_B,
        clk => IClk,
        Q => OutQ_B,
        IQ => OutIQ_B
    );
    
    QB <= not OutIQ_B;
    CtrlOut_B <= (IS1 and OutQ_B) nor (OutIQ_B and S1);
    
-- Qc logic 
    CtrlIn_C_1 <= S0 and OutQ_C;
    CtrlIn_C_2 <= Crtl_1 and CtrlOut_A and CtrlOut_B;
    InD_C <= (CtrlIn_C_1 xor CtrlIn_C_2) or (Crtl_2 and C);

TC: DTrigger port map (
        R => IReset,
        S => const1,
        D => InD_C,
        clk => IClk,
        Q => OutQ_C,
        IQ => OutIQ_C
    );
 
    QC <= not OutIQ_C;
    CtrlOut_C <= (IS1 and OutQ_C) nor (OutIQ_C and S1);

-- Qd logic 
    CtrlIn_D_1 <= S0 and OutQ_D;
    CtrlIn_D_2 <= Crtl_1 and CtrlOut_A and CtrlOut_B and CtrlOut_C;
    InD_D <= (CtrlIn_D_1 xor CtrlIn_D_2) or (Crtl_2 and D);

TD: DTrigger port map (
        R => IReset,
        S => const1,
        D => InD_D,
        clk => IClk,
        Q => OutQ_D,
        IQ => OutIQ_D
    );
   
    QD <= not OutIQ_D;
    CtrlOut_D <= (IS1 and OutQ_D) nor (OutIQ_D and S1);

-- Qe logic 
    CtrlIn_E_1 <= S0 and OutQ_E;
    CtrlIn_E_2 <= Crtl_1 and CtrlOut_A and CtrlOut_B and CtrlOut_C and CtrlOut_D;
    InD_E <= (CtrlIn_E_1 xor CtrlIn_E_2) or (Crtl_2 and E);

TE: DTrigger port map (
        R => IReset,
        S => const1,
        D => InD_E,
        clk => IClk,
        Q => OutQ_E,
        IQ => OutIQ_E
    );
  
    QE <= not OutIQ_E;
    CtrlOut_E <= (IS1 and OutQ_E) nor (OutIQ_E and S1);

-- Qf logic
    CtrlIn_F_1 <= S0 and OutQ_F;
    CtrlIn_F_2 <= Crtl_1 and CtrlOut_A and CtrlOut_B and CtrlOut_C and CtrlOut_D and CtrlOut_E;
    InD_F <= (CtrlIn_F_1 xor CtrlIn_F_2) or (Crtl_2 and F);

TF: DTrigger port map (
        R => IReset,
        S => const1,
        D => InD_F,
        clk => IClk,
        Q => OutQ_F,
        IQ => OutIQ_F
    );

    QF <= not OutIQ_F;
    CtrlOut_F <= (IS1 and OutQ_F) nor (OutIQ_F and S1);
    
-- Qg logic
    CtrlIn_G_1 <= S0 and OutQ_G;
    CtrlIn_G_2 <= Crtl_1 and CtrlOut_A and CtrlOut_B and CtrlOut_C 
                and CtrlOut_D and CtrlOut_E and CtrlOut_F;
    InD_G <= (CtrlIn_G_1 xor CtrlIn_G_2) or (Crtl_2 and G);

TG: DTrigger port map (
            R => IReset,
            S => const1,
            D => InD_G,
            clk => IClk,
            Q => OutQ_G,
            IQ => OutIQ_G
        );
       
    QG <= not OutIQ_G;
    CtrlOut_G <= (IS1 and OutQ_G) nor (OutIQ_G and S1);
    
-- Qf logic
    CtrlIn_H_1 <= S0 and OutQ_H;
    CtrlIn_H_2 <= Crtl_1 and CtrlOut_A and CtrlOut_B and CtrlOut_C 
                    and CtrlOut_D and CtrlOut_E and CtrlOut_F and CtrlOut_D;
    InD_H <= (CtrlIn_H_1 xor CtrlIn_H_2) or (Crtl_2 and H);
 
TH: DTrigger port map (
            R => IReset,
            S => const1,
            D => InD_H,
            clk => IClk,
            Q => OutQ_H,
            IQ => OutIQ_H
        );
           
    QH <= not OutIQ_H;
    CtrlOut_H <= (IS1 and OutQ_H) nor (OutIQ_H and S1);          

IRCO <= (OutQ_A and S1 and 
            (CtrlOut_A and CtrlOut_B and CtrlOut_C and CtrlOut_D and CtrlOut_E and CtrlOut_F and CtrlOut_D and CtrlOut_H)
                 and S0 and (not IENT))
        nor 
        (OutIQ_A and IS1 and 
            (CtrlOut_A and CtrlOut_B and CtrlOut_C and CtrlOut_D and CtrlOut_E and CtrlOut_F and CtrlOut_D and CtrlOut_H) 
                and S0 and (not IENT));

end Behavioral;
