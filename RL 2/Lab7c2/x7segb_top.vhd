----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:23:11 05/20/2022 
-- Design Name: 
-- Module Name:    x7segb_top - Behavioral 
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

entity x7segb_top is
	port (clk : in STD_LOGIC;
			btn : in STD_LOGIC_VECTOR (3 downto 0);
			sw  : in STD_LOGIC_VECTOR (7 downto 0);
			a_to_g : out STD_LOGIC_VECTOR (6 downto 0);
			an  : out STD_LOGIC_VECTOR (3 downto 0);
			dp  : out STD_LOGIC);
end x7segb_top;

architecture x7seg_top of x7segb_top is
		component x7segb is 
				port ( x : in STD_LOGIC_VECTOR (15 downto 0);
						 clk : in STD_LOGIC;
						 clr : in STD_LOGIC;
						 a_to_g : out STD_LOGIC_VECTOR (6 downto 0);
						 an : out STD_LOGIC_VECTOR (3 downto 0);
						 dp : out STD_LOGIC );
		end component;
		signal x : STD_LOGIC_VECTOR (15 downto 0);
begin 
-- concatenate switch and 3 buttons 
		x <= sw & btn (2 downto 0) & "10101";
		x2 : x7segb port map 
						(x=>x, clk=>clk, clr=>btn(3), a_to_g=>a_to_g, an=>an, dp=>dp);
		
end x7seg_top;

