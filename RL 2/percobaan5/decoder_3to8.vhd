library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.all;
use IEEE.STD_LOGIC_unsigned.all;

entity decoder_3to8 is
	port(
		a : in std_logic_vector (2 downto 0);
		y : out std_logic_vector (0 to 7));
end decoder_3to8;

architecture Behavioral of decoder_3to8 is
begin
	process(a)
		variable j:integer;
	begin
		j := conv_integer(a);
		for i in 0 to 7 loop
			if(i = j) then
				y(i) <= '1';
			else
				y(i) <= '0';
			end if;
		end loop;
	end process;
end Behavioral;