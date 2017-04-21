----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:40:25 04/19/2017 
-- Design Name: 
-- Module Name:    sayeh_PC - Behavioral 
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

entity sayeh_PC is
    Port (external_reset : in  STD_LOGIC;
          clk : in  STD_LOGIC);
end sayeh_PC;

architecture Behavioral of sayeh_PC is
component datapath 
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
			ir_out : inout STD_LOGIC_VECTOR (15 downto 0);
           clk : in  STD_LOGIC);
end component;
component controller
    Port ( ir_out : in  STD_LOGIC_VECTOR (15 downto 0);
           external_reset : in  STD_LOGIC;
           zout : in  STD_LOGIC;
           cout : in  STD_LOGIC;
           clk : in  STD_LOGIC;
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
end component;
component memory is
	generic (blocksize : integer := 1024);
	port (clk, readmem, writemem : in std_logic;
		addressbus: in std_logic_vector (15 downto 0);
		databus : inout std_logic_vector (15 downto 0);
		memdataready : out std_logic);
end component;
signal zout,cout,reset_pc,pc_plus1,pc_plusi,r0_plusi,
        r0_plus0,b15to0,aandb,aorb,axorb,notb,aaddb,asubb,amulb,acmpb,
        shrb,shlb,alu_out_on_databus,cset,creset,zset,zreset,
        sr_load,ir_load,pc_load,rfl_write,rfh_write,wpadd,
        wpreset,adrs_on_daabus,rd_on_adrs,rs_on_adrs,read_mem,
        write_mem,memdataready : STD_LOGIC;
signal ir_out,adrs_to_mem,databus : STD_LOGIC_VECTOR (15 downto 0);
begin
	mcontroller: controller port map(ir_out,
                                    external_reset,
                                    zout,
                                    cout,
                                    clk,
                                    reset_pc,
                                    pc_plus1,
                                    pc_plusi,
                                    r0_plusi,
                                    r0_plus0,
                                    b15to0,
                                    aandb,
                                    aorb,
                                    axorb,
                                    notb,
                                    aaddb,
                                    asubb,
                                    amulb,
                                    acmpb,
                                    shrb,
                                    shlb,
                                    alu_out_on_databus,
                                    cset,
                                    creset,
                                    zset,
                                    zreset,
                                    sr_load,
                                    ir_load,
                                    pc_load,
                                    rfl_write,
                                    rfh_write,
                                    wpadd,
                                    wpreset,
                                    adrs_on_daabus,
                                    rd_on_adrs,
                                    rs_on_adrs,
                                    read_mem,
                                    write_mem);
    mydatapath: datapath port map(  reset_pc,
                                    pc_plus1,
                                    pc_plusi,
                                    r0_plusi,
                                    r0_plus0,
                                    b15to0,
                                    aandb,
                                    aorb,
                                    axorb,
                                    notb,
                                    aaddb,
                                    asubb,
                                    amulb,
                                    acmpb,
                                    shrb,
                                    shlb,
                                    alu_out_on_databus,
                                    cset,
                                    creset,
                                    zset,
                                    zreset,
                                    sr_load,
                                    ir_load,
                                    pc_load,
                                    rfl_write,
                                    rfh_write,
                                    wpadd,
                                    wpreset,
                                    adrs_on_daabus,
                                    rd_on_adrs,
                                    rs_on_adrs,
                                    cout,
                                    zout,
                                    adrs_to_mem,
                                    databus,
												ir_out,
                                    clk);
    mymem: memory port map(         clk,
                                    read_mem,
                                    write_mem,
                                    adrs_to_mem,
                                    databus,
                                    memdataready);
                                
end Behavioral;

