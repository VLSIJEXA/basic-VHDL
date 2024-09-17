library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

        ----HERE we are designing mealy machine for overlap of "000" seq.

entity FSM_jk is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           input : in STD_LOGIC;
           output : out STD_LOGIC);
end FSM_jk;

architecture Behavioral of FSM_jk is
type state_type is(s0,s1,s2);                 ---A=s0,B=s1,C=s2
signal current_s,next_s:state_type;
begin
process(clk,reset)
begin
if(reset='1')then
current_s<=s0;
elsif(rising_edge(clk))then
current_s<=next_s;
end if;
end process;
process(current_s,input)
begin
case current_s is
when s0=>
if(input='1')then
output<='0';
next_s<=s0;
else
output<='0';
next_s<=s1;
end if;
when s1=>
if(input='0')then
output<='0';
next_s<=s2;
else
output<='0';
next_s<=s0;
end if;
when s2=>
if(input='0')then
output<='1';
next_s<=s0;
else
output<='0';
next_s<=s0;
end if;
end case;
end process;
end Behavioral;
