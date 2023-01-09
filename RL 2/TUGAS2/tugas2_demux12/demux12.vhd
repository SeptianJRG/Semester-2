library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity demux12 is
	port(	sw:in STD_LOGIC_VECTOR(0 downto 0);
			btn:in STD_LOGIC_VECTOR(0 downto 0);
			led:out STD_LOGIC_VECTOR(1 downto 0));
end demux12;

architecture Behavioral of demux21 is
component demux12b is 
	port(	a:in STD_LOGIC;
			s:in STD_LOGIC;
			o1:out STD_LOGIC;
			o2:out STD_LOGIC);
end component;
begin
	c1:demux12b port map(
		a=>sw(0),
		s=>btn(0),
		o1=>led(0),
		o2=>led(1));
end Behavioral;