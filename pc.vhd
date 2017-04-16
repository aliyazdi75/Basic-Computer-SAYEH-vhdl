----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:06:49 04/16/2017 
-- Design Name: 
-- Module Name:    pc - Behavioral 
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

entity pc is
    Port ( pc_inp : in  STD_LOGIC_VECTOR (15 downto 0);
           pc_load : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           pc_out : out  STD_LOGIC_VECTOR (15 downto 0));
end pc;

architecture Behavioral of pc is

begin
	
	SEQ: process(clk)
   begin
      if (rising_edge(clk) and pc_load='1') then
         pc_out <= pc_inp;
      end if;
   end process;

end Behavioral;

