----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:03:51 05/13/2022 
-- Design Name: 
-- Module Name:    mux21top - Behavioral 
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
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity mux21top is
Port(
		sw :in STD_LOGIC_VECTOR(1 downto 0);
		btn :in STD_LOGIC_VECTOR(0 downto 0);
		led :out STD_LOGIC_VECTOR(0 downto 0)
	  );
end mux21top;
architecture Behavioral of mux21top is
component mux21b is
		port(
				a :in STD_LOGIC;
				b :in STD_LOGIC;
				s :in STD_LOGIC;
				y :out STD_LOGIC
);
end component;

begin
		c1:mux21b port map(
					a => sw(0),
					b => sw(1),
					s => btn(0),
					y => led(0)
);
end Behavioral ;