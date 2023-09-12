----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:54:53 09/10/2023 
-- Design Name: 
-- Module Name:    fa - Behavioral 
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

entity fa is
    Port ( a_fa : in  STD_LOGIC;
           b_fa : in  STD_LOGIC;
           cin_fa : in  STD_LOGIC;
           s_fa : out  STD_LOGIC;
           cout_fa : out  STD_LOGIC);
end fa;

architecture Behavioral of fa is

begin
s_fa<= a_fa xor b_fa xor cin_fa;
cout_fa<= (a_fa and b_fa) or (b_fa and cin_fa) or (cin_fa and a_fa);

end Behavioral;

