library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity projecttop is
	port (clk : in STD_LOGIC;
			btn : in STD_LOGIC;
			sw : in STD_LOGIC_VECTOR (3 downto 0);
			a_to_g : out STD_LOGIC_VECTOR (6 downto 0);
			an  : out STD_LOGIC_VECTOR (3 downto 0);
			dp  : out STD_LOGIC);
end projecttop;

architecture projecttop of projecttop is
	component x7segb is 
			port ( x : in STD_LOGIC_VECTOR (15 downto 0);
					 clk : in STD_LOGIC;
					 clr : in STD_LOGIC;
					 a_to_g : out STD_LOGIC_VECTOR (6 downto 0);
					 an : out STD_LOGIC_VECTOR (3 downto 0);
					 dp : out STD_LOGIC );
	end component;
	signal x : STD_LOGIC_VECTOR (15 downto 0);
	signal d1: std_logic_vector(3 downto 0);
	signal d2: std_logic_vector(3 downto 0);
	signal e1: std_logic_vector(3 downto 0);
	signal e2: std_logic_vector(3 downto 0);
	signal addition: std_logic_vector(3 downto 0);
	
begin 
	
	process(sw)
	begin
		case sw is
		when x"0" => d1<="0000"; d2<="0000";
		when x"1" => d1<="0000"; d2<="0001";
		when x"2" => d1<="0000"; d2<="0010";
		when x"3" => d1<="0000"; d2<="0011";
		when x"4" => d1<="0000"; d2<="0100";
		when x"5" => d1<="0000"; d2<="0101";
		when x"6" => d1<="0000"; d2<="0110";
		when x"7" => d1<="0000"; d2<="0111";
		when x"8" => d1<="0000"; d2<="1000";
		when x"9" => d1<="0000"; d2<="1001";
		when x"A" => d1<="0001"; d2<="0000";
		when x"B" => d1<="0001"; d2<="0001";
		when x"C" => d1<="0001"; d2<="0010";
		when x"D" => d1<="0001"; d2<="0011";
		when x"E" => d1<="0001"; d2<="0100";
		when others  => d1<="0001"; d2<="0101";
		end case;
	end process;
	
	addition <= sw + "0001";
	process(addition)
	begin
		case addition is
		when x"0" => e1<="0000"; e2<="0000";
		when x"1" => e1<="0000"; e2<="0001";
		when x"2" => e1<="0000"; e2<="0010";
		when x"3" => e1<="0000"; e2<="0011";
		when x"4" => e1<="0000"; e2<="0100";
		when x"5" => e1<="0000"; e2<="0101";
		when x"6" => e1<="0000"; e2<="0110";
		when x"7" => e1<="0000"; e2<="0111";
		when x"8" => e1<="0000"; e2<="1000";
		when x"9" => e1<="0000"; e2<="1001";
		when x"A" => e1<="0001"; e2<="0000";
		when x"B" => e1<="0001"; e2<="0001";
		when x"C" => e1<="0001"; e2<="0010";
		when x"D" => e1<="0001"; e2<="0011";
		when x"E" => e1<="0001"; e2<="0100";
		when others  => e1<="0001"; e2<="0101";
		end case;
	end process;

	x <= d1 & d2 & e1 & e2;
	x2 : x7segb port map 
					(x=>x, clk=>clk, clr=>btn, a_to_g=>a_to_g, an=>an, dp=>dp);
		
end projecttop;