----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/16/2024 02:46:30 PM
-- Design Name: 
-- Module Name: JK_FF - Behavioral
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



entity JK_FF is
    Port ( j : in STD_LOGIC;
           k : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           q : out STD_LOGIC);
end JK_FF;

architecture Behavioral of JK_FF is
signal s:std_logic;
begin
process( clk,reset)
begin
if(reset='1')then
s<='0';
elsif(clk'event and clk='1')then
if(j='0' and k='0')then
s<=s;
elsif(j='0' and k='1')then
s<='0';
elsif(j='1' and k='0')then
s<='1';
elsif(j='1' and k='1')then
s<= not s;
end if;
end if;
q<=s;
end process;



end Behavioral;
