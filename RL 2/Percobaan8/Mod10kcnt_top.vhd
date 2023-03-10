library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mod10kcnt_top is
port( mclk : in std_logic;
		btn : in std_logic_vector(2 downto 0);
		a_to_g : out std_logic_vector(6 downto 0);
		an : out std_logic_vector(3 downto 0);
		dp : out std_logic

	 );
end mod10kcnt_top;

architecture Behavioral of mod10kcnt_top is
		component clkdiv is
			port( mclk : in std_logic;
					clr : in std_logic;
					clk190: out std_logic;
					clk48: out std_logic
				 );
end component;
		component mod10kcnt is
			port( clr : in STD_LOGIC;
					clk : in STD_LOGIC;
					start : in std_logic;
					pause : in std_logic;
					q : out STD_LOGIC_VECTOR(13 downto 0)
				 );
end component;
		component binBCD14 is
			 Port ( b : in STD_LOGIC_VECTOR(13 downto 0);
					  p : out STD_LOGIC_VECTOR(16 downto 0));
end component;
		component x7segbc is
			 port( x : in std_logic_vector(15 downto 0);
					 cclk : in std_logic;
					 clr : in std_logic;
					 a_to_g : out std_logic_vector(6 downto 0);
					 an : out std_logic_vector(3 downto 0);
					 dp : out std_logic
				  );
end component;

signal b : std_logic_vector(13 downto 0);
signal p : std_logic_vector(16 downto 0);
signal clr, start, pause, clk48, clk190 : std_logic;

begin
clr <= btn(0);
pause <= btn(1);
start <= btn(2);

u1: clkdiv port map(
		mclk => mclk,
		clr => clr,
		clk190 => clk190,
		clk48 => clk48
		);
u2: mod10kcnt port map(
		clr => clr,
		start => start,
		pause => pause,
		clk => clk48,
		q => b
		);
u3: binBCD14 port map(
		b => b,
		p => p
);
u4: x7segbc port map(
		x => p(15 downto 0),
		cclk => clk190,
		clr => clr,
		a_to_g => a_to_g,
		an => an,
		dp => dp
);
end Behavioral;