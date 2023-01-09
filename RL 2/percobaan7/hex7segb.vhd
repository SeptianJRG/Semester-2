library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hex7segb is
	port (x : in STD_LOGIC_VECTOR (3 downto 0);
			a_to_g : out STD_LOGIC_VECTOR (6 downto 0));

end hex7segb;

architecture hex7segb of hex7segb is
begin
		process(x)
		begin
				case x is 												-- abcdef g
						when x"0" => a_to_g <= "0000001" ; -- 0
						when x"1" => a_to_g <= "1001111" ; -- 1
						when x"2" => a_to_g <= "0010010" ; -- 2
						when x"3" => a_to_g <= "0000110" ; -- 3
						when x"4" => a_to_g <= "1001100" ; -- 4
						when x"5" => a_to_g <= "0100100" ; -- 5
						when x"6" => a_to_g <= "0100000" ; -- 6
						when x"7" => a_to_g <= "0001111" ; -- 7
						when x"8" => a_to_g <= "0000000" ; -- 8
						when x"9" => a_to_g <= "0000100" ; -- 9
						when x"A" => a_to_g <= "0001000" ; -- a
						when x"B" => a_to_g <= "1100000" ; -- b
						when x"C" => a_to_g <= "0110001" ; -- c
						when x"D" => a_to_g <= "1000010" ; -- d
						when x"E" => a_to_g <= "0110000" ; -- e
						when others => a_to_g <= "0111000" ; -- f
				end case;
		end process;
end hex7segb;