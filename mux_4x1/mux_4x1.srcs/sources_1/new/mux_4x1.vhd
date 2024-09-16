

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4x1 is
    Port ( I0 : in STD_LOGIC;
           I1 : in STD_LOGIC;
           I2 : in STD_LOGIC;
           I3 : in STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Y : out STD_LOGIC);
end mux_4x1;

architecture Behavioral of mux_4x1 is

signal s:std_logic_vector(1 downto 0);
begin

s <= S1 & S0;
with s select
    Y <= I0 when "00",
       I1 when "01",
       I2 when "10",
       I3 when "11",
       'Z' when others;


end Behavioral;
