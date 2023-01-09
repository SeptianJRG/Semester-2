library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA_4 is
	port (a  : in  STD_LOGIC_VECTOR (3  downto 0);
			b : in STD_LOGIC_VECTOR (3 downto 0);
			cin : in STD_LOGIC;
			sum : out STD_LOGIC_VECTOR (3 downto 0); 
			cout : out STD_LOGIC);
end FA_4;

architecture Behavioral of FA_4 is component FA_1
port(	A, B, Cin : in std_logic ; S, Cout : out std_logic
);
end component;
signal ci:std_logic_vector (4 downto 0);
begin
	ci(0)<= cin;
	u0:FA_1 port map(A=>a(0), B=>b(0), Cin=>ci(0), S=>sum(0), Cout=>ci(1));
	u1:FA_1 port map(A=>a(1), B=>b(1), Cin=>ci(1), S=>sum(1), Cout=>ci(2));
	u2:FA_1 port map(A=>a(2), B=>b(2), Cin=>ci(2), S=>sum(2), Cout=>ci(3));
	u3:FA_1 port map(A=>a(3), B=>b(3), Cin=>ci(3), S=>sum(3), Cout=>ci(4));
	cout<=ci(4);
end Behavioral;