----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:24:36 04/16/2017 
-- Design Name: 
-- Module Name:    flags - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flags is
    Port ( cout : in  STD_LOGIC;
           zout : in  STD_LOGIC;
           cset : in  STD_LOGIC;
           creset : in  STD_LOGIC;
           zset : in  STD_LOGIC;
           zreset : in  STD_LOGIC;
           sr_load : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           cin : out  STD_LOGIC;
           zin : out  STD_LOGIC);
end flags;

architecture Behavioral of flags is

begin

	SEQ: process(clk)
   begin
      if rising_edge(clk) then
			if cset = '1' then
				cin <= '1';
			end if;
			if creset = '1' then
				cin <= '0';
			end if;
			if zset = '1' then
				zin <= '1';
			end if;
			if zreset = '1' then
				zin <= '0';
			end if;
			if sr_load = '1' then
				cin <= cout;
				zin <= zout;
			end if;
      end if;
   end process;
	
end Behavioral;

