library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA_1 is
	port (A  : in STD_LOGIC;
			B : in STD_LOGIC;
			Cin : in STD_LOGIC; 
			S : out STD_LOGIC;
			Cout : out STD_LOGIC);
end FA_1;

architecture Behavioral of FA_1 is begin
	S <= A xor B xor Cin;
	Cout <= (A and B) or (A and Cin) or (B and Cin); 
end Behavioral ;
