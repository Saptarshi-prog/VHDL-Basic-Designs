library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity as is
    Port ( a_as : in  STD_LOGIC_VECTOR (3 downto 0);
           b_as : in  STD_LOGIC_VECTOR (3 downto 0);
           M_as : in  STD_LOGIC;
           S_as : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout_as : out  STD_LOGIC);
end as;

architecture Behavioral of as is

component fa
Port ( a_fa : in  STD_LOGIC;
           b_fa : in  STD_LOGIC;
           cin_fa : in  STD_LOGIC;
           s_fa : out  STD_LOGIC;
           cout_fa : out  STD_LOGIC);
end component;

component xor_2 
Port ( a_xor : in  STD_LOGIC;
           b_xor : in  STD_LOGIC;
           c_xor : out  STD_LOGIC);
end component;

signal c: STD_LOGIC_VECTOR(2 downto 0);
signal temp: STD_LOGIC_VECTOR(3 downto 0);
begin
u1: xor_2 port map(a_xor=>M_as, b_xor=>b_as(0), c_xor=>temp(0));
u2: xor_2 port map(a_xor=>M_as, b_xor=>b_as(1), c_xor=>temp(1));
u3: xor_2 port map(a_xor=>M_as, b_xor=>b_as(2), c_xor=>temp(2));
u4: xor_2 port map(a_xor=>M_as, b_xor=>b_as(3), c_xor=>temp(3));
u5: fa port map(a_fa=>a_as(0),b_fa=>temp(0), cin_fa=>M_as, s_fa=>S_as(0), cout_fa=>c(0));
u6: fa port map(a_fa=>a_as(1),b_fa=>temp(1), cin_fa=>c(0), s_fa=>S_as(1), cout_fa=>c(1));
u7: fa port map(a_fa=>a_as(2),b_fa=>temp(2), cin_fa=>c(1), s_fa=>S_as(2), cout_fa=>c(2));
u8: fa port map(a_fa=>a_as(3),b_fa=>temp(3), cin_fa=>c(2), s_fa=>S_as(3), cout_fa=>Cout_as);

end Behavioral;
