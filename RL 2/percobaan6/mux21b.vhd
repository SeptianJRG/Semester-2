----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:00:35 05/13/2022 
-- Design Name: 
-- Module Name:    mux21b - Behavioral 
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

entity mux21b is
	Port(
			a:in STD_LOGIC;
			b:in STD_LOGIC;
			s:in STD_LOGIC;
			y:out STD_LOGIC
);
end mux21b;
architecture Behavioral of mux21b is
begin
p1 :process(a,b,s)
		begin
				if s='0' then y <= a;
				else y <= b;
				end if;
end process p1;

end behavioral;