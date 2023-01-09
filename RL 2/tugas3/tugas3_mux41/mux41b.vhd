library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux41b is
	port(	i: in std_logic_vector(3 downto 0);
			s: in std_logic_vector(1 downto 0);
			y: out std_logic);
end mux41b;

architecture Behavioral of mux41b is
begin
	process(i, s)
	begin
		if s="00" then y<=i(0);
		elsif s="01" then y<=i(1);
		elsif s="10" then y<=i(2);
		else y<=i(3);
		end if;
	end process;
end Behavioral;

