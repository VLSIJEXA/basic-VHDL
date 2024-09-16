----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/16/2024 02:17:44 PM
-- Design Name: 
-- Module Name: RSFF - Behavioral
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

entity sr_ff is
    Port (
        r     : in  STD_LOGIC;  -- Reset input (active high)
        s     : in  STD_LOGIC;  -- Set input (active high)
        clk   : in  STD_LOGIC;  -- Clock input
        reset : in  STD_LOGIC;  -- Asynchronous reset (active high)
        q     : out STD_LOGIC   -- Output
    );
end sr_ff;

architecture Behavioral of sr_ff is
begin
    process (clk, reset)
    begin
        if reset = '1' then
            q <= '0';  -- Asynchronous reset
        elsif rising_edge(clk) then
            if s = '1' then
                q <= '1';  -- Set output
            elsif r = '1' then
                q <= '0';  -- Reset output
            end if;
        end if;
    end process;
end Behavioral;

