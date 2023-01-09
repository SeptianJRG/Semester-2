library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux12b is
	port(	a:in STD_LOGIC;
			s:in STD_LOGIC;
			o1:out STD_LOGIC;
			o2:out STD_LOGIC);
end demux12b;

architecture Behavioral of demux12b is
begin
	p1:process(a,s)
	begin
		if s='0' then o1<=a; o2<='0';
		else o1<='0'; o2<=a;
		end if;
	end process p1;
end Behavioral;

