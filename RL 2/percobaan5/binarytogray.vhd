library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity binarytogray is
	port(
		b:in std_logic_vector (3 downto 0);
		g:out std_logic_vector (3 downto 0));
end binarytogray;

architecture Behavioral of binarytogray is
begin
	process(b)
	begin
		g(3) <= b(3);
		for i in 2 downto 0 loop
			g(i) <= b(i+1) xor b(i);
		end loop;
	end process;
end Behavioral;

