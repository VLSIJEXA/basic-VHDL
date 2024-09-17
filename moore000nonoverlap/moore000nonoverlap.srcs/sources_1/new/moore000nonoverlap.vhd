----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/17/2024 09:17:20 PM
-- Design Name: 
-- Module Name: moore000nonoverlap - Behavioral
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

entity moore000nonoverlap is
    Port ( x : in STD_LOGIC;
           clk : in STD_LOGIC;
           zz : out STD_LOGIC);
end moore000nonoverlap;

architecture Behavioral of moore000nonoverlap is

type state_type is (s0, s1, s2, s3);
signal c_s, n_s: state_type;

begin
    -- State transition process
    process (c_s, x)
    begin
        case c_s is
            when s0 =>
                zz <= '0';
                if x = '0' then
                    n_s <= s1;
                else
                    n_s <= s0;
                end if;
            when s1 =>
                zz <= '0';
                if x = '0' then
                    n_s <= s2;
                else
                    n_s <= s0;
                end if;
            when s2 =>
                zz <= '0';
                if x = '0' then
                    n_s <= s3;
                else
                    n_s <= s0;
                end if;
            when s3 =>
                zz <= '1';  -- Output 1 when the sequence 000 is detected
                if x = '0' then
                    n_s <= s1;  -- Non-overlapping: Go back to s1
                else
                    n_s <= s0;
                end if;
        end case;
    end process;

    -- Clock edge process
    process (clk)
    begin
        if rising_edge(clk) then
            c_s <= n_s;
        end if;
    end process;

end Behavioral;
