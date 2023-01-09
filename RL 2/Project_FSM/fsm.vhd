library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity prog is
port(clk,rst,remote,sensors:in STD_LOGIC;
		siren:out STD_LOGIC);
end prog;

architecture fsm of prog is
type alarm_state is(disarmed,armed,intrusion);
attribute enum_encoding:string;
attribute enum_encoding of alarm_state:type is "sequential";
signal pr_state,nx_state:alarm_state;
signal flag:std_logic;
begin
process(remote,rst)
begin
if(rst='1') then
flag<='0';
elsif(remote'event and remote='0') then
flag<=not flag;
end if;
end process;
process(clk,rst)
begin
if(rst='1') then
pr_state<=disarmed;
elsif(clk'event and clk='1') then
pr_state<=nx_state;
end if;
end process;
process(pr_state,flag,remote,sensors)
begin
case pr_state is
when disarmed=> 
siren<='0';
if(remote='1' and flag='0') then
nx_state<=armed;
else
nx_state<=disarmed;
end if;
when armed=>
siren<='0';
if(sensors='1') then
nx_state<=intrusion;
elsif(remote='1' and flag='1') then
nx_state<=disarmed;
else
nx_state<=armed;
end if;
when intrusion=>
siren<='1';
if(remote='1' and flag='1') then
nx_state<=disarmed;
else
nx_state<=intrusion;
end if;
end case;
end process;
end fsm;