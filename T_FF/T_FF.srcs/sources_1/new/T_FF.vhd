----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/16/2024 04:11:12 PM
-- Design Name: 
-- Module Name: T_FF - Behavioral
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



entity T_FF is
    Port ( t : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           q : out STD_LOGIC);
end T_FF;

architecture Behavioral of T_FF is
signal s:std_logic;


begin
process(clk,reset)  --we consider asych
begin
 
 if(reset='1')then
 s<='0';
 elsif(clk'event and clk='1')then
 if(t='1')then
 s<= not s;
 else
  s<= s;
 end if;
 end if;
  q<=s;
  end process;
end Behavioral;
