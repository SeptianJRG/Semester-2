library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hex7seg_top is
	Port ( sw : in STD_LOGIC_VECTOR (3 downto 0);
			a_to_g : out STD_LOGIC_VECTOR (6 downto 0);
			an : out STD_LOGIC_VECTOR (3 downto 0);
			dp : out STD_LOGIC);
end hex7seg_top;

architecture hex7seg_top of hex7seg_top is
		component hex7segb is
			port(
					x: in STD_LOGIC_VECTOR (3 downto 0);
					a_to_g : out STD_LOGIC_VECTOR (6 downto 0)

			);
		end component;
begin
		an <= "0000" ; 	-- all digit on
		dp <= '1' ; 		-- dp off
		d4: hex7segb port map (x => sw, a_to_g => a_to_g);
end hex7seg_top;