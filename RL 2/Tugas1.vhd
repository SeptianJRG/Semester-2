----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:07:40 03/04/2022 
-- Design Name: 
-- Module Name:    Tugas1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

entity Tugas1 is
port(
	SW0 :in STD_LOGIC;
	SW1 :in STD_LOGIC;
	LD0 :out STD_LOGIC;
	LD1 :out STD_LOGIC;
	LD2 :out STD_LOGIC;
	LD3 :out STD_LOGIC;
	LD4 :out STD_LOGIC);
end Tugas1;

architecture Behavioral of Tugas1 is

begin

LD0 <= SW0 and SW1;
LD1 <= SW0 or SW1;
LD2 <= not SW0;
LD3 <= SW0 nand SW1;
LD4 <= SW0 nor SW1;


end Behavioral;

