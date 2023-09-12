library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity xor_2 is
    Port ( a_xor : in  STD_LOGIC;
           b_xor : in  STD_LOGIC;
           c_xor : out  STD_LOGIC);
end xor_2;

architecture Behavioral of xor_2 is

begin

c_xor <= a_xor xor b_xor;
end Behavioral;