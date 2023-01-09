
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY demux12b_tb IS
END demux12b_tb;
 
ARCHITECTURE behavior OF demux12b_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT demux12b
    PORT(
         a : IN  std_logic;
         s : IN  std_logic;
         o1 : OUT  std_logic;
         o2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal s : std_logic := '0';

 	--Outputs
   signal o1 : std_logic;
   signal o2 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: demux12b PORT MAP (
          a => a,
          s => s,
          o1 => o1,
          o2 => o2
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
