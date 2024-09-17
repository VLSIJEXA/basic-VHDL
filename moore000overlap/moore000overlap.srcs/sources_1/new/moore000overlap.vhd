----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/17/2024 09:02:39 PM
-- Design Name: 
-- Module Name: moore000overlap - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity moore000overlap is
    Port ( x1 : in STD_LOGIC;
           clk : in STD_LOGIC;
           z1 : out STD_LOGIC);
end moore000overlap;

architecture Behavioral of moore000overlap is
type state_type is(s0,s1,s2,s3);
signal p_s,n_s:state_type;
begin
process(p_s,x1)
begin
case p_s is
when s0=>z1<='0';
if x1='0' then
n_s<=s1;
else
n_s<=s0;
end if;
when s1=>z1<='0';
if x1='0' then
n_s<=s2;
else
n_s<=s0;
end if;
when s2=>z1<='0';
if x1='0' then
n_s<=s3;
else
n_s<=s0;
end if;
when s3=>z1<='1';
if x1='0' then
n_s<=s3;
else
n_s<=s0;
end if;
end case;
end process;
process
begin
wait until clk'event and clk='1';
p_s<=n_s;
end process;

end Behavioral;
