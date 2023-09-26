----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:16:54 09/26/2023 
-- Design Name: 
-- Module Name:    d_latch - Behavioral 
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

entity d_latch is
    Port ( d_la : in  STD_LOGIC;
           clk_la : in  STD_LOGIC;
           q_la : out  STD_LOGIC);
end d_latch;

architecture Behavioral of d_latch is

signal data:STD_LOGIC;
begin
--process (clk_la, d_la)
--begin
	--if (clk_la='1') then
		--q_la<=d_la;
	--end if;
--end process;
data<= d_la when (clk_la='1') else data;
q_la<=data;
end Behavioral;

