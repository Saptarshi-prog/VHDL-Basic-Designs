----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:20:29 09/10/2023 
-- Design Name: 
-- Module Name:    pa - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pa is
    Port ( a_pa : in  STD_LOGIC_VECTOR (3 downto 0);
           b_pa : in  STD_LOGIC_VECTOR (3 downto 0);
           s_pa : out  STD_LOGIC_VECTOR (4 downto 0));
end pa;

architecture Behavioral of pa is

component fa is
Port ( a_fa : in  STD_LOGIC;
           b_fa : in  STD_LOGIC;
           cin_fa : in  STD_LOGIC;
           s_fa : out  STD_LOGIC;
           cout_fa : out  STD_LOGIC);
end component;

signal c: STD_LOGIC_VECTOR(2 downto 0);
signal temp: STD_LOGIC;

begin
temp<='0';
u1: fa port map(a_fa=>a_pa(0),b_fa=>b_pa(0),cin_fa=>temp,s_fa=>s_pa(0),cout_fa=>c(0));
u2: fa port map(a_fa=>a_pa(1),b_fa=>b_pa(1),cin_fa=>c(0),s_fa=>s_pa(1),cout_fa=>c(1));
u3: fa port map(a_fa=>a_pa(2),b_fa=>b_pa(2),cin_fa=>c(1),s_fa=>s_pa(2),cout_fa=>c(2));
u4: fa port map(a_fa=>a_pa(3),b_fa=>b_pa(3),cin_fa=>c(2),s_fa=>s_pa(3),cout_fa=>s_pa(4));

end Behavioral;

