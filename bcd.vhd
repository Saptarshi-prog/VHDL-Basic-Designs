----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:53:00 09/12/2023 
-- Design Name: 
-- Module Name:    bcd - Behavioral 
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

entity bcd is
    Port ( a_bcd : in  STD_LOGIC_VECTOR (3 downto 0);
           b_bcd : in  STD_LOGIC_VECTOR (3 downto 0);
           cout_bcd : inout  STD_LOGIC;
           s_bcd : out  STD_LOGIC_VECTOR (3 downto 0));
end bcd;

architecture Behavioral of bcd is
component or_3
Port ( a_or : in  STD_LOGIC;
           b_or : in  STD_LOGIC;
           c_or : in  STD_LOGIC;
           d_or : out  STD_LOGIC);
end component;
component and_2
Port ( a_and : in  STD_LOGIC;
           b_and : in  STD_LOGIC;
           c_and : out  STD_LOGIC);
end component;
component pa is
Port ( a_pa : in  STD_LOGIC_VECTOR (3 downto 0);
           b_pa : in  STD_LOGIC_VECTOR (3 downto 0);
           s_pa : out  STD_LOGIC_VECTOR (4 downto 0));
end component;
signal temp: STD_LOGIC_VECTOR (7 downto 0);

begin
u1: pa port map(a_pa=>a_bcd, b_pa=>b_bcd, s_pa(0)=>temp(0),s_pa(1)=>temp(1),s_pa(2)=>temp(2),s_pa(3)=>temp(3),s_pa(4)=>temp(4));
u2: and_2 port map(a_and=>temp(3), b_and=>temp(2), c_and=>temp(5));
u3: and_2 port map(a_and=>temp(3), b_and=>temp(1), c_and=>temp(6));
u4: or_3 port map(a_or=>temp(4), b_or=>temp(5), c_or=> temp(6), d_or=>cout_bcd);
u5: pa port map(a_pa(0)=>temp(0),a_pa(1)=>temp(1),a_pa(2)=>temp(2),a_pa(3)=>temp(3),b_pa(3)=>'0', b_pa(2)=>cout_bcd, b_pa(1)=>cout_bcd, b_pa(0)=>'0',s_pa(0)=>s_bcd(0),s_pa(1)=>s_bcd(1),s_pa(2)=>s_bcd(2),s_pa(3)=>s_bcd(3),s_pa(4)=>temp(7));

end Behavioral;

