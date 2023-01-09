library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Clockdiv is
		port (Clk25Mhz: in STD_LOGIC;
				Clk: out STD_LOGIC);
		end Clockdiv;
		
architecture Behavior of Clockdiv is
		constant max: integer := 25000000;
		constant half: integer := max/2;
		signal count: integer range 0 to max;
begin
		process
		begin
				wait until Clk25Mhz' EVENT and Clk25Mhz = '1';
				if count < max then
					count <= count + 1;
				else
					count <= 0;
				end if;
				
				if count < half then
					Clk <= '0';
				else
					Clk <= '1';
				end if;
		end process;
end Behavior ;