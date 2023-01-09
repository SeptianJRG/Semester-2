library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity mod10kcnt is
		Port (clr : in STD_LOGIC;
				clk : in STD_LOGIC;
				start : in STD_LOGIC;
				pause : in STD_LOGIC;
				q : out STD_LOGIC_VECTOR (13 downto 0));
end mod10kcnt;

architecture Behavioral of mod10kcnt is
		signal count:STD_LOGIC_VECTOR (13 downto 0);
		signal flagrun:std_logic;
begin
		-- modul o 10k
		process(clk,clr,start,pause)
		begin
			-- reset and counter
			if clr = '1' then
				count <= (others => '0');
			elsif clk' event and clk = '1' then
				if start = '1' and pause = '0' then
					flagrun <= '1';
				elsif start = '0' and pause = '1' then
					flagrun <= '0';
				end if;
				if conv_integer (count) = 9999 then
					count <= (others => '0');
				elsif flagrun = '1' then
					count <= count + 1;
				end if;
			end if;
		end process;
		q <= count ;
end Behavioral ;