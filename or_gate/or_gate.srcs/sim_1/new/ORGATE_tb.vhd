----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/13/2024 09:28:10 PM
-- Design Name: 
-- Module Name: ORGATE_tb - Behavioral
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

-- Test bench entity (no ports)
entity TB_OR_Gate is
end TB_OR_Gate;

-- Test bench architecture
architecture behavior of TB_OR_Gate is

    -- Component Declaration for the OR Gate
    component OR_Gate
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    -- Signals to connect to the OR gate
    signal A : STD_LOGIC := '0';
    signal B : STD_LOGIC := '0';
    signal Y : STD_LOGIC;

begin

    -- Instantiate the OR Gate
    uut: OR_Gate
        Port map (
            A => A,
            B => B,
            Y => Y
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test case 1
        A <= '0';
        B <= '0';
        wait for 10 ns;
        assert (Y = '0') report "Test failed for A=0, B=0" severity error;

        -- Test case 2
        A <= '0';
        B <= '1';
        wait for 10 ns;
        assert (Y = '1') report "Test failed for A=0, B=1" severity error;

        -- Test case 3
        A <= '1';
        B <= '0';
        wait for 10 ns;
        assert (Y = '1') report "Test failed for A=1, B=0" severity error;

        -- Test case 4
        A <= '1';
        B <= '1';
        wait for 10 ns;
        assert (Y = '1') report "Test failed for A=1, B=1" severity error;

        -- End of simulation
        wait;
    end process;

end behavior;

