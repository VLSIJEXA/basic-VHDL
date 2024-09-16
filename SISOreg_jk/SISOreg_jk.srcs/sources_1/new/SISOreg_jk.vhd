----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/16/2024 04:34:29 PM
-- Design Name: 
-- Module Name: SISOreg_jk - Behavioral
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

entity SISOreg_jk is
    Port ( sin : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           sout : out STD_LOGIC);
end SISOreg_jk;

architecture Behavioral of SISOreg_jk is
component DFF_synch is
    Port ( D : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           q : out STD_LOGIC);
end component;
signal s1,s2,s3:std_logic;


begin
t1: DFF_synch port map(D=> sin,clk=>clk,reset=>reset,q=>s1);
t2: DFF_synch port map(D=> s1,clk=>clk,reset=>reset,q=>s2);
t3: DFF_synch port map(D=> s2,clk=>clk,reset=>reset,q=>s3);
t4: DFF_synch port map(D=> s3,clk=>clk,reset=>reset,q=>sout);



end Behavioral;
