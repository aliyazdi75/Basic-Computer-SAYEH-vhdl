----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:47:52 04/17/2017 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
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

entity datapath is
    Port ( reset_pc : in  STD_LOGIC;
           pc_plus1 : in  STD_LOGIC;
           pc_plusi : in  STD_LOGIC;
           r0_plusi : in  STD_LOGIC;
           r0_plus0 : in  STD_LOGIC;
			  b15to0 : in  STD_LOGIC;
           aandb : in  STD_LOGIC;
           aorb : in  STD_LOGIC;
           axorb : in  STD_LOGIC;
           notb : in  STD_LOGIC;
           aaddb : in  STD_LOGIC;
           asubb : in  STD_LOGIC;
           amulb : in  STD_LOGIC;
           acmpb : in  STD_LOGIC;
           shrb : in  STD_LOGIC;
           shlb : in  STD_LOGIC;
           cset : in  STD_LOGIC;
           creset : in  STD_LOGIC;
           zset : in  STD_LOGIC;
           zreset : in  STD_LOGIC;
           sr_load : in  STD_LOGIC;
           ir_load : in  STD_LOGIC;
           pc_load : in  STD_LOGIC;
           ir_out : in  STD_LOGIC_VECTOR (3 downto 0);
           rfl_write : in  STD_LOGIC;
           rfh_write : in  STD_LOGIC;
           wpadd : in  STD_LOGIC;
           wpreset : in  STD_LOGIC;
			  adrs_on_daabus : in STD_LOGIC_VECTOR (15 downto 0);
			  rs_on_adrs : in  STD_LOGIC;
			  rs_on_adrs : in  STD_LOGIC;
			  cout : out  STD_LOGIC;
			  zout : out  STD_LOGIC;
			  adrs_to_mem : out STD_LOGIC_VECTOR (15 downto 0);
			  databus : inout STD_LOGIC_VECTOR (15 downto 0);
           clk : in  STD_LOGIC);
end datapath;

architecture Behavioral of datapath is
component address_logic 
    Port ( pc_out : in  STD_LOGIC_VECTOR (15 downto 0);
           ir_out : in  STD_LOGIC_VECTOR (7 downto 0);
           rside : in  STD_LOGIC_VECTOR (15 downto 0);
           reset_pc : in  STD_LOGIC;
           pc_plus1 : in  STD_LOGIC;
           pc_plusi : in  STD_LOGIC;
           r0_plusi : in  STD_LOGIC;
           r0_plus0 : in  STD_LOGIC;
           adrs_out : out  STD_LOGIC_VECTOR (15 downto 0));
end component;
component alu is
    Port ( a : in  STD_LOGIC_VECTOR (15 downto 0);
           b : in  STD_LOGIC_VECTOR (15 downto 0);
           cin : in  STD_LOGIC;
           zin : in  STD_LOGIC;
           opr : in  STD_LOGIC_VECTOR (3 downto 0);
           b15to0 : in  STD_LOGIC;
           aandb : in  STD_LOGIC;
           aorb : in  STD_LOGIC;
           axorb : in  STD_LOGIC;
           notb : in  STD_LOGIC;
           aaddb : in  STD_LOGIC;
           asubb : in  STD_LOGIC;
           amulb : in  STD_LOGIC;
           acmpb : in  STD_LOGIC;
           shrb : in  STD_LOGIC;
           shlb : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           alu_out : out  STD_LOGIC_VECTOR (15 downto 0);
           zout : out  STD_LOGIC);
end component;
component flags
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
end component;
component ir
    Port ( ir_inp : in  STD_LOGIC_VECTOR (15 downto 0);
           ir_load : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           ir_out : out  STD_LOGIC_VECTOR (15 downto 0));
end component;
component pc 
    Port ( pc_inp : in  STD_LOGIC_VECTOR (15 downto 0);
           pc_load : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           pc_out : out  STD_LOGIC_VECTOR (15 downto 0));
end component;
component register_files 
    Port ( databus_inp : in  STD_LOGIC_VECTOR (15 downto 0);
           wp_out : in  STD_LOGIC_VECTOR (5 downto 0);
           ir_out : in  STD_LOGIC_VECTOR (3 downto 0);
           rfl_write : in  STD_LOGIC;
           rfh_write : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rd : out  STD_LOGIC_VECTOR (15 downto 0);
           rs : out  STD_LOGIC_VECTOR (15 downto 0));
end component;
component wp 
    Port ( ir_out : in  STD_LOGIC_VECTOR (5 downto 0);
           wpadd : in  STD_LOGIC;
           wpreset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           wp_out : out  STD_LOGIC_VECTOR (5 downto 0));
end component;
signal pc_out,ir_out : STD_LOGIC;
signal  : STD_LOGIC_VECTOR (15 downto 0);
begin

	adrs_logic : address_logic port map(pc_out,ir_out,rside,reset_pc,
															pc_plus1,pc_plusi,r0_plusi,r0_plus0,adrs_to_mem);
	alu : alu port map();
	flag : flags port map();
	ir : ir port map();
	pc : pc port map();
	reg_file : register_files port map();
	wp : wp port map();

end Behavioral;

