----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:23:12 09/26/2023 
-- Design Name: 
-- Module Name:    d_ff - Behavioral 
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

entity d_ff is
    Port ( clk_ff : in  STD_LOGIC;
           d_ff : in  STD_LOGIC;
           rst_ff : in  STD_LOGIC;
           q_ff : out  STD_LOGIC);
end d_ff;

architecture Behavioral of d_ff is

begin
process (clk_ff)
begin
	if (clk_ff' event and clk_ff='1') then
		if (rst_ff='1') then
			q_ff<='0';
		else
			q_ff<=d_ff;
		end if;
	end if;
end process;

end Behavioral;

