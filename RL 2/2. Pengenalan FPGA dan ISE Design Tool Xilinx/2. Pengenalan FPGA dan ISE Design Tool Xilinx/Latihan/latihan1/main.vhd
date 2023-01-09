----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:29:51 03/07/2022 
-- Design Name: 
-- Module Name:    main - Behavioral 
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

entity main is
	port(
		a, b : in std_logic;
		y : out std_logic_vector (4 downto 0)
		);
end main;

architecture Behavioral of main is

begin

	y(0) <= a and b;
	y(1) <= a or b;
	y(2) <= not a;
	y(3) <= a and b;
	y(4) <= a and b;

end Behavioral;

