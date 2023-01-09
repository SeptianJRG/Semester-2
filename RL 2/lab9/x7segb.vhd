library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity x7segb is
	port( x : in STD_LOGIC_VECTOR (5 downto 0);
			clk : in STD_LOGIC;
			clr : in STD_LOGIC;
			a_to_g : out STD_LOGIC_VECTOR (2 downto 0);
			an : out STD_LOGIC_VECTOR (3 downto 0);
			dp :  out STD_LOGIC);
end x7segb;

architecture x7seg of x7segb is
		signal s : STD_LOGIC_VECTOR (1 downto 0);
		signal digit : STD_LOGIC_VECTOR (2 downto 0);
		signal aen : STD_LOGIC_VECTOR (3 downto 0);
		signal clkdiv : STD_LOGIC_VECTOR (20 downto 0);
begin
		s <= clkdiv(20 downto 19);
		aen<="1111";
		dp <= '1';
		
-- quad 4 to 1 mux 
		process(s,x)
		begin 
				case s is 
						when "00" => digit <= x(2 downto 0);
						when others => digit <= x(5 downto 3);
				end case;
		end process;

-- 7 segment decoder: hex7seg 
		process(digit)
		begin 
				case digit is 
						when "001" => a_to_g <= "001";
						when "010" => a_to_g <= "010";
						when "100" => a_to_g <= "100";
						when others  => a_to_g <= "000";
				end case; 
		end process;
		
-- digit select: ancode
		process(s,aen)
		begin 
				an <= "11";
				if aen(conv_integer(s)) = '1' then an(conv_integer(s)) <= '0' ;
				end if;
		end process;

-- clock devider
		process(clk,clr)
		begin 
				if clr = '1' then
						clkdiv <=(others => '0');
				elsif clk' event and clk = '1' then 
						clkdiv <= clkdiv + 1 ;
				end if;
		end process;
		
end x7seg;