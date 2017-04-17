----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:50:49 04/16/2017 
-- Design Name: 
-- Module Name:    register_files - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity register_files is
    Port ( databus_inp : in  STD_LOGIC_VECTOR (15 downto 0);
           wp_out : in  STD_LOGIC_VECTOR (5 downto 0);
           ir_out : in  STD_LOGIC_VECTOR (3 downto 0);
           rfl_write : in  STD_LOGIC;
           rfh_write : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rd : out  STD_LOGIC_VECTOR (15 downto 0);
           rs : out  STD_LOGIC_VECTOR (15 downto 0));
end register_files;

architecture Behavioral of register_files is
	type reg_files is array (0 to 63) of std_logic_vector(15 downto 0);
	signal regf : reg_files;
	signal lir, rir : STD_LOGIC_VECTOR (1 downto 0);
	signal ladrs, radrs : STD_LOGIC_VECTOR (5 downto 0);
begin
	
	lir <= ir_out (3 downto 2);
	rir <= ir_out (1 downto 0);
	
	ladrs <= STD_LOGIC_VECTOR(unsigned(lir) + unsigned(wp_out));
	radrs <= STD_LOGIC_VECTOR(unsigned(rir) + unsigned(wp_out));
	
	rd <= regf(to_integer(unsigned(ladrs)));
	rs <= regf(to_integer(unsigned(radrs)));
	
	SEQ: process(clk)
		variable tmpreg : std_logic_vector(15 downto 0);
   begin
      if rising_edge(clk) then
			tmpreg := regf(to_integer(unsigned(ladrs))); 
			if rfh_write = '0' and  rfl_write = '1' then
				tmpreg(7 downto 0) := databus_inp(7 downto 0);
			end if;
			if rfh_write = '1' and rfl_write = '0' then
				tmpreg(15 downto 8):= databus_inp( 7 downto 0);
			end if;
			if rfh_write = '1' and rfl_write = '1' then
				tmpreg(15 downto 0):= databus_inp( 15 downto 0);
			end if;
			regf(to_integer(unsigned(ladrs)))<= tmpreg;
      end if;
   end process;

end Behavioral;

