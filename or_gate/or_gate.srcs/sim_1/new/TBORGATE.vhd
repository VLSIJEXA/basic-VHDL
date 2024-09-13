library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Test bench entity
entity tb_or_gate is
end tb_or_gate;

-- Test bench architecture
architecture behavior of tb_or_gate is

    -- Component Declaration for the OR Gate
    component or_gate
        Port (
            a : in STD_LOGIC;
            b : in STD_LOGIC;
            c : out STD_LOGIC
        );
    end component;

    -- Signals to connect to the OR gate
    signal a : STD_LOGIC := '0';
    signal b : STD_LOGIC := '0';
    signal c : STD_LOGIC;

begin

    -- Instantiate the OR Gate
    uut: or_gate
        Port map (
            a => a,
            b => b,
            c => c
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test case 1: a = 0, b = 0
        a <= '0'; b <= '0'; wait for 10 ns;
        assert (c = '0') report "Test failed for a=0, b=0" severity error;

        -- Test case 2: a = 0, b = 1
        a <= '0'; b <= '1'; wait for 10 ns;
        assert (c = '1') report "Test failed for a=0, b=1" severity error;

        -- Test case 3: a = 1, b = 0
        a <= '1'; b <= '0'; wait for 10 ns;
        assert (c = '1') report "Test failed for a=1, b=0" severity error;

        -- Test case 4: a = 1, b = 1
        a <= '1'; b <= '1'; wait for 10 ns;
        assert (c = '1') report "Test failed for a=1, b=1" severity error;

        -- End of simulation
        wait;
    end process;

end behavior;
