
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF_synch is
    Port ( D : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           q : out STD_LOGIC);
end DFF_synch;

architecture Behavioral of DFF_synch is

begin
process (clk)
begin
if(clk'event and clk='1')then
if(reset='1')then
q<='0';
else
q<=d;
end if;
end if;
end process;


end Behavioral;
