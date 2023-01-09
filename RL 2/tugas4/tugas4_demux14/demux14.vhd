library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux14 is
	port(	i: in std_logic;
			s: in std_logic_vector(1 downto 0);
			y: out std_logic_vector(3 downto 0));
end demux14;

architecture Behavioral of demux14 is
begin
	process(i,s)
	begin
		if s="00" then y <= i & "000";
		elsif s="01" then y <= '0' & i & "00";
		elsif s="10" then y <= "00" & i & '0';
		else y <= "000" & i;
		end if;
	end process;
end Behavioral;

