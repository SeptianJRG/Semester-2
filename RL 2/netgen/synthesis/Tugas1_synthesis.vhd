--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.58f
--  \   \         Application: netgen
--  /   /         Filename: Tugas1_synthesis.vhd
-- /___/   /\     Timestamp: Fri Mar 04 09:34:53 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Tugas1 -w -dir netgen/synthesis -ofmt vhdl -sim Tugas1.ngc Tugas1_synthesis.vhd 
-- Device	: xc3s200-4-ft256
-- Input file	: Tugas1.ngc
-- Output file	: D:\SMT 2\RL 2\netgen\synthesis\Tugas1_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Tugas1
-- Xilinx	: C:\Xilinx\14.5\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Tugas1 is
  port (
    a : in STD_LOGIC := 'X'; 
    b : in STD_LOGIC := 'X'; 
    y : out STD_LOGIC 
  );
end Tugas1;

architecture Structure of Tugas1 is
  signal a_IBUF_1 : STD_LOGIC; 
  signal b_IBUF_3 : STD_LOGIC; 
  signal y_OBUF_5 : STD_LOGIC; 
begin
  y1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => a_IBUF_1,
      I1 => b_IBUF_3,
      O => y_OBUF_5
    );
  a_IBUF : IBUF
    port map (
      I => a,
      O => a_IBUF_1
    );
  b_IBUF : IBUF
    port map (
      I => b,
      O => b_IBUF_3
    );
  y_OBUF : OBUF
    port map (
      I => y_OBUF_5,
      O => y
    );

end Structure;

