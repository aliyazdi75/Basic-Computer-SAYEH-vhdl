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
    Port ( shadow : in  STD_LOGIC;
			  reset_pc : in  STD_LOGIC;
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
			  alu_out_on_databus : in  STD_LOGIC;
           cset : in  STD_LOGIC;
           creset : in  STD_LOGIC;
           zset : in  STD_LOGIC;
           zreset : in  STD_LOGIC;
           sr_load : in  STD_LOGIC;
           ir_load : in  STD_LOGIC;
           pc_load : in  STD_LOGIC;
           rfl_write : in  STD_LOGIC;
           rfh_write : in  STD_LOGIC;
           wpadd : in  STD_LOGIC;
           wpreset : in  STD_LOGIC;
			  adrs_on_daabus : in STD_LOGIC;
			  rd_on_adrs : in  STD_LOGIC;
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
signal cin,zin,co,zo: STD_LOGIC;
signal ir_reg : STD_LOGIC_VECTOR (3 downto 0);
signal wp_out : STD_LOGIC_VECTOR (5 downto 0);
signal rside,pc_out,a,b,alu_on_databus,ir_out,pc_inp,databus_inp : STD_LOGIC_VECTOR (15 downto 0);
begin

	SEQ: process(clk)
   begin
      if rising_edge(clk) then
			adrs_to_mem <= pc_inp;
			databus_inp <= databus;
			cout <= co;
			zout <= zo;
			if shadow = '0' then
				ir_reg <= ir_out(11 downto 8);
			else
				ir_reg <= ir_out(3 downto 0);
			end if;
			if alu_out_on_databus='1' then
				databus <= alu_on_databus;
			elsif adrs_on_daabus='1' then
				databus <= pc_inp;
			end if;
			if rd_on_adrs='1' then
				rside <= a;
			elsif rs_on_adrs='1' then
				rside <= b;
			end if;
		end if;
	end process;
	
			maddress_logic : address_logic port map(pc_out,ir_out(7 downto 0),rside,reset_pc,
																	pc_plus1,pc_plusi,r0_plusi,r0_plus0,pc_inp);
			malu : alu port map(a,b,cin,zin,b15to0,aandb,aorb,axorb,notb,aaddb,asubb,amulb,acmpb,shrb,shlb,co,alu_on_databus,zo);
			mflags : flags port map(co,zo,cset,creset,zset,zreset,sr_load,clk,cin,zin);
			mir : ir port map(databus,ir_load,clk,ir_out);
			mpc : pc port map(pc_inp,pc_load,clk,pc_out);
			mwp : wp port map(ir_out(5 downto 0),wpadd,wpreset,clk,wp_out);
			mregister_files : register_files port map(databus_inp,wp_out,ir_reg,rfl_write,rfh_write,clk,a,b);
			

end Behavioral;

