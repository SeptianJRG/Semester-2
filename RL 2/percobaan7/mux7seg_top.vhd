library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux7seg_top is
	Port ( btn : in STD_LOGIC_VECTOR (3 downto 0);
			a_to_g : out STD_LOGIC_VECTOR (6 downto 0);
			an : out STD_LOGIC_VECTOR (3 downto 0);
			dp : out STD_LOGIC);
end mux7seg_top;

architecture mux7seg of mux7seg_top is
signal x: STD_LOGIC_VECTOR (15 downto 0);
signal s: STD_LOGIC_VECTOR (1 downto 0);
signal digit : STD_LOGIC_VECTOR (3 downto 0);

begin
		x <= x"0055";
		an <= not btn;
		s(1) <= btn(2) or btn(3);
		s(0) <= btn(1) or btn(3);
		dp <='1' ;

-- quad 4 t o 1 mux: mux44
		process(s)
		begin
				case s is
					when "00" => digit <= x(3 downto 0);
					when "01" => digit <= x(7 downto 4);
					when "10" => digit <= x(11 downto 8);
					when others => digit <= x(15 downto 12);
				end case;
		end process;
		
		process(digit)
		begin
			case digit is -- abcdefg
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
end mux7seg;