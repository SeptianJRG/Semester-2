library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_unsigned.ALL;

entity traffic is port
		(	clr : in STD_LOGIC;
			clk : in STD_LOGIC;
			lights : out STD_LOGIC_VECTOR(5 downto 0); 
			a_to_g : out STD_LOGIC_VECTOR (2 downto 0);
			an : out STD_LOGIC_VECTOR (1 downto 0);
			dp : out STD_LOGIC);
end traffic;

architecture Behavioral of traffic is 

	component clkdiv is
			port( mclk : in std_logic;
					clr : in std_logic;
					clk48: out std_logic
				 );
	end component;
	
	component x7segb is 
			port ( x : in STD_LOGIC_VECTOR (5 downto 0);
					 clk : in STD_LOGIC;
					 clr : in STD_LOGIC;
					 a_to_g : out STD_LOGIC_VECTOR (2 downto 0);
					 an : out STD_LOGIC_VECTOR (1 downto 0);
					 dp : out STD_LOGIC );
	end component;

	type state_type is (s0,s1,s2,s3,s4,s5); 
	signal state: state_type;
	signal count : STD_LOGIC_VECTOR(3 downto 0); 
	constant SEC5: STD_LOGIC_VECTOR(3 downto 0):= "1111"; 
	constant SEC1: STD_LOGIC_VECTOR(3 downto 0):= "0011";
	signal clk48: std_logic;
	signal x: std_logic_vector(5 downto 0);
	
begin

	u1: clkdiv port map(
		mclk => clk,
		clr => clr,
		clk48 => clk48
		);
	u2: x7segb port map(
		x=>x, 
		clk=>clk48, 
		clr=>clr, 
		a_to_g=>a_to_g, 
		an=>an, 
		dp=>dp
		);
		
	process (clr,clk48) 
	begin
		if clr='1' then 
			state <= s0;
			count <= X"0";
		elsif clk48' event and clk48='1' then
			state<=s1;
			case state is
				when s0 =>	if count < SEC5 then
									state <= s0;
									count <= count + 1;
								else 
									state <= s1;
									count <= x"0";
								end if;
				when s1 =>	if count < SEC1 then
									state <= s1;
									count <= count + 1;
								else 
									state <= s2;
									count <= x"0";
								end if;
				when s2 =>	if count < SEC1 then
									state <= s2;
									count <= count + 1;
								else 
									state <= s3;
									count <= x"0";
								end if;
				when s3 =>	if count < SEC5 then
									state <= s3;
									count <= count + 1;
								else 
									state <= s4;
									count <= x"0";
								end if;
				when s4 =>	if count < SEC1 then
									state <= s4;
									count <= count + 1;
								else 
									state <= s5;
									count <= x"0";
								end if;
				when s5 => 	if count < SEC1 then
									state <= s5;
									count <= count + 1;
								else 
									state <= s0;
									count <= x"0";
								end if;
				when others => state <= s0;
			end case;
		end if;
	end process;

	c2: process(state)
	begin 
		case state is
			when s0 => lights <= "100001"; x <= "100001";
			when s1 => lights <= "100010"; x <= "100010";
			when s2 => lights <= "100100"; x <= "100100";
			when s3 => lights <= "001100"; x <= "001100";
			when s4 => lights <= "010100"; x <= "010100";
			when s5 => lights <= "100100"; x <= "100100";
			when others => lights <= "100001";
		end case; 
	end process;
	
end Behavioral ;