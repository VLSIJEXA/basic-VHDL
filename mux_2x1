library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux_beh is
    Port ( I1 : in STD_LOGIC;
           I2 : in STD_LOGIC;
           S : in STD_LOGIC;
           Y : out STD_LOGIC);
end mux_beh;

architecture Behavioral of mux_beh is

begin
Y<=I1 when S='0'else
    I2 when S='1'else
    'Z';



end Behavioral;
