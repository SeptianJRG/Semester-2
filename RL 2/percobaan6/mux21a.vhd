----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:55:43 05/13/2022 
-- Design Name: 
-- Module Name:    mux21a - Behavioral 
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

entity mux21a is
		Port(
				a :in STD_LOGIC;
				b :in STD_LOGIC;
				s :in STD_LOGIC;
				y :out STD_LOGIC
			  );
end mux21a;
architecture Behavioral of mux21a is
begin
		y <=(not s and a)or (s and b);
end Behavioral;
