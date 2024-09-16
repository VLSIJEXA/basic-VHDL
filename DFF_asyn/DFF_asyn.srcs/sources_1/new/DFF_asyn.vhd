----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/16/2024 01:18:17 PM
-- Design Name: 
-- Module Name: DFF_asyn - Behavioral
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



entity DFF_asyn is
    Port ( d : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC);
end DFF_asyn;

architecture Behavioral of DFF_asyn is

begin
process(clk,reset)
begin
if (reset='1')then
q<='0';
elsif  rising_edge(clk)then ---you can use ---"elsif(clk'event and clk='1')then"
q<=d;
end if; 
end process;

end Behavioral;
