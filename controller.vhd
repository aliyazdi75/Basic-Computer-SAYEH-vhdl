----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:29:16 04/18/2017 
-- Design Name: 
-- Module Name:    controller - Behavioral 
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

entity controller is
    Port ( ir_out : in  STD_LOGIC_VECTOR (15 downto 0);
           external_reset : in  STD_LOGIC;
           zout : in  STD_LOGIC;
           cout : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  shadow : out STD_LOGIC;
			  reset_pc : out STD_LOGIC;
           pc_plus1 : out STD_LOGIC;
           pc_plusi : out STD_LOGIC;
           r0_plusi : out STD_LOGIC;
           r0_plus0 : out STD_LOGIC;
			  b15to0 : out STD_LOGIC;
           aandb : out STD_LOGIC;
           aorb : out STD_LOGIC;
           axorb : out STD_LOGIC;
           notb : out STD_LOGIC;
           aaddb : out STD_LOGIC;
           asubb : out STD_LOGIC;
           amulb : out STD_LOGIC;
           acmpb : out STD_LOGIC;
           shrb : out STD_LOGIC;
           shlb : out STD_LOGIC;
			  alu_out_on_databus : out STD_LOGIC;
           cset : out STD_LOGIC;
           creset : out STD_LOGIC;
           zset : out STD_LOGIC;
           zreset : out STD_LOGIC;
           sr_load : out STD_LOGIC;
           ir_load : out STD_LOGIC;
           pc_load : out STD_LOGIC;
           rfl_write : out STD_LOGIC;
           rfh_write : out STD_LOGIC;
           wpadd : out STD_LOGIC;
           wpreset : out STD_LOGIC;
			  adrs_on_daabus : out STD_LOGIC;
			  rd_on_adrs : out STD_LOGIC;
			  rs_on_adrs : out STD_LOGIC;
			  read_mem : out STD_LOGIC;
			  write_mem : out STD_LOGIC);
end controller;

architecture Behavioral of controller is
	type state is (S0, S1, S2, S3, S4);
	signal current_state : state;
	signal next_state : state;
begin

	process (clk, reset)
	begin
		if reset = '1' then
			current_state <= S0;
		elsif clk'event and clk = '1' then
			current_state <= next_state;
		end if;
	end process;

	process (current_state)
	begin
		case current_state is
			when S0 =>
            if inp='0' then
               next_state <= S2;
               outp <= "01";
            else
               next_state <= S1;
               outp <= "10";
            end if;
			when S1 =>
				next_state <= S2;
				register_load <= '0';
				register_shift <= '1';
			when S2 =>
				next_state <= S3;
			when S3 =>
				next_state <= S4;
			when S4 =>
				next_state <= S0;
		end case;
	end process;
	
end Behavioral;

