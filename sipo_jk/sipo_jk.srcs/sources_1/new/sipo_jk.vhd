----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/16/2024 10:41:47 PM
-- Design Name: 
-- Module Name: sipo_jk - Behavioral
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



entity sipo_jk is
    Port ( sin : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           sout : out STD_LOGIC_vector(3 downto 0));
end sipo_jk;

architecture Behavioral of sipo_jk is
component DFF_synch is
    Port ( D : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           q : out STD_LOGIC);
end component;

signal t1 ,t2,t3:std_logic;
begin
lab1:DFF_synch port map(D=>sin,clk=>clk,reset=>rst,q=>t1);
lab2:DFF_synch port map(D=>t1,clk=>clk,reset=>rst,q=>t2);

lab3:DFF_synch port map(D=>t2,clk=>clk,reset=>rst,q=>t3);

lab4:DFF_synch port map(D=>t3,clk=>clk,reset=>rst,q=>sout(3));
sout(0)<=t1;
sout(1)<=t2;
sout(2)<=t3;


end Behavioral;
