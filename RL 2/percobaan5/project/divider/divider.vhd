library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity divider is
	port(	numer:in std_logic_vector (7 downto 0);
			denom:in std_logic_vector (3 downto 0);
			quotient:out std_logic_vector (3 downto 0);
			remainder:out std_logic_vector (3 downto 0));
end divider;

architecture Behavioral of divider is
begin
process(numer,denom)
variable  d,  n1 :STD_LOGIC_VECTOR(4 downto 0);
variable  n2 :STD_LOGIC_VECTOR(3 downto 0);
begin
	d  :=  '0' & denom;
	n2 :=  numer(3 downto 0);
	n1 :=  '0' & numer(7 downto 4);
	for  i  in 0 to 3 loop 
		n1 := n1(3 downto 0)& n2(3);
		n2 := n2(2 downto 0)& '0';
		if  n1 >= d then n1 := n1-d; n2(0):='1';
		end if;
	end loop;
	quotient <= n2;
	remainder <=  n1(3 downto 0);
	end process;
end Behavioral;

