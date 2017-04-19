----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:16:09 04/16/2017 
-- Design Name: 
-- Module Name:    address_logic - Behavioral 
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity address_logic is
    Port ( pc_out : in  STD_LOGIC_VECTOR (15 downto 0);
           ir_out : in  STD_LOGIC_VECTOR (7 downto 0);
           rside : in  STD_LOGIC_VECTOR (15 downto 0);
           reset_pc : in  STD_LOGIC;
           pc_plus1 : in  STD_LOGIC;
           pc_plusi : in  STD_LOGIC;
           r0_plusi : in  STD_LOGIC;
           r0_plus0 : in  STD_LOGIC;
           adrs_out : out  STD_LOGIC_VECTOR (15 downto 0));
end address_logic;

architecture Behavioral of address_logic is
	signal one : STD_LOGIC_VECTOR (15 downto 0);
begin

	one <= "0000000000000001";
	SEQ: process(reset_pc,pc_plus1,pc_plusi,r0_plusi,r0_plus0)
	  begin
		if(reset_pc='1')then
			adrs_out <= "0000000000000000";
		else
			if(pc_plus1='1')then
				adrs_out <= std_logic_vector(unsigned(pc_out) + unsigned(one));
			elsif(pc_plusi='1')then
				adrs_out <= std_logic_vector(unsigned(pc_out) + unsigned(ir_out));
			elsif(r0_plusi='1')then
				adrs_out <= std_logic_vector(unsigned(rside) + unsigned(ir_out));
			elsif(r0_plus0='1')then
				adrs_out <= rside;
			end if;
		end if;
   end process;
	
end Behavioral;

