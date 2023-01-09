library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hex7seg is
	Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
				a_to_g : out STD_LOGIC_VECTOR (6 downto 0));
end hex7seg;
architecture hex7seg_le of hex7seg is
begin
	a_to_g(6)<= (not x(3) and not x(2) and not x(1) and x(0)) --a
		or (not x(3) and x(2) and not x(1) and not x(0))
		or ( x(3) and x(2) and not x(1) and x(0))
		or ( x(3) and not x(2) and x(1) and x(0));
	a_to_g(5)<= (x(2) and x(1) and not x(0)) --b
		or ( x(3) and x(1) and x(0))
		or (not x(3) and x(2) and not x(1) and x(0))
		or ( x(3) and x(2) and not x(1) and not x(0));
	a_to_g(4)<= (not x(3) and not x(2) and x(1) and not x(0)) --c
		or (x(3) and x(2) and x(1))
		or (x(3) and x(2) and not x(0));
	a_to_g(3)<= (not x(3) and not x(2) and not x(1) and x(0)) --d
		or (not x(3) and x(2) and not x(1) and not x(0))
		or (x(3) and not x(2) and x(1) and not x(0))
		or (x(2) and x(1) and x(0));
	a_to_g(2)<= (not x(3) and x(0)) --e
		or (not x(3) and x(2) and not x(1))
		or (not x(2) and not x(1) and x(0));
	a_to_g(1)<= (not x(3) and not x(2) and x(0)) --f
		or (not x(3) and not x(2) and x(1))
		or (not x(3) and x(1) and x(0))
		or (x(3) and x(2) and not x(1) and x(0));
	a_to_g(0)<= (not x(3) and not x(2) and not x(1)) --g
		or (x(3) and x(2) and not x(1) and not x(0))
		or (not x(3) and x(2) and x(1) and x(0));

end hex7seg_le;