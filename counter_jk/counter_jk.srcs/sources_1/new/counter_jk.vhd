----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/16/2024 10:02:55 PM
-- Design Name: 
-- Module Name: counter_jk - Behavioral
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
use IEEE.NUMERIC_STD.ALL;  -- For arithmetic operations with `unsigned`

entity counter_jk is
    Port (
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        count_out : out STD_LOGIC_VECTOR(3 downto 0)
    );
end counter_jk;

architecture Behavioral of counter_jk is
    signal temp : unsigned(3 downto 0);  -- Use `unsigned` for arithmetic operations
begin
    process(clk, rst)
    begin
        if rst = '1' then
            temp <= (others => '0');  -- Initialize `temp` to zero on reset
        elsif rising_edge(clk) then
            temp <= temp + 1;  -- Increment `temp`
        end if;
    end process;

    count_out <= std_logic_vector(temp);  -- Convert `unsigned` back to `STD_LOGIC_VECTOR`
end Behavioral;
