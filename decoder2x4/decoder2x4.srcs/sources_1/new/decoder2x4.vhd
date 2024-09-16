----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/16/2024 10:01:46 AM
-- Design Name: 
-- Module Name: decoder2x4 - Behavioral
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

entity decoder2x4 is
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0); --NOTE= a[1]a[0] means a[1] is MSB AND A[0] is LSB
           y : out STD_LOGIC_VECTOR (3 downto 0));
end decoder2x4;

architecture Behavioral of decoder2x4 is

begin
process(a)
begin
case a is
when"00"=>y<="0001";
when"01"=>y<="0010";
when"10"=>y<="0100";
when"11"=>y<="1000";
when others=>y<="0000";
end case;
end process;
end Behavioral;
