library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity x7seg_top is
	Port ( mclk : in STD_LOGIC;
	btn : in STD_LOGIC;
	a_to_g : out STD_LOGIC_VECTOR (6 downto 0);
	an : out STD_LOGIC_VECTOR (3 downto 0);
	dp : out STD_LOGIC);
end x7seg_top;
architecture x7seg_top of x7seg_top is
		component x7seg is
			Port ( x : in STD_LOGIC_VECTOR (15 downto 0);
				clk : in STD_LOGIC;
				clr : in STD_LOGIC;
				a_to_g : out STD_LOGIC_VECTOR (6 downto 0);
				an : out STD_LOGIC_VECTOR (3 downto 0);
				dp : out STD_LOGIC);

		end component;
		signal x: STD_LOGIC_VECTOR (15 downto 0);
begin
		x <= x"B055";
		x1 : x7seg port map
					(
						x=>x, 
						clk=>mclk, 
						clr=>btn, 
						a_to_g=>a_to_g, 
						an=>an, 
						dp=>dp
					);
end x7seg_top;