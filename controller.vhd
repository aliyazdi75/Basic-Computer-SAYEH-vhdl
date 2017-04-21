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
end controller;

architecture Behavioral of controller is
	type state is (Sreset,
					 Sfetch1, Sfetch2, Sdecode,
					 Snop,
					 Shlt, 
					 Sszf1, Sszf2, Sczf1, Sczf2,
					 Sscf1, Sscf2, 
					 Sccf1, Sccf2, 
					 Scwp1, Scwp2,
					 Smvr1, Smvr2, Smvr3, Smvr4, 
					 Slda1, Slda2, Slda3, Slda4, Slda5, 
					 Ssta1, Ssta2, Ssta3, Ssta4, 
					 Sand1, Sand2, Sand3, Sand4, 
					 Sor1, Sor2, Sor3, Sor4,
					 Snot1, Snot2, Snot3, Snot4,
					 Sshl1, Sshl2, Sshl3, Sshl4,
					 Sshr1, Sshr2, Sshr3, Sshr4,
					 Sadd1, Sadd2, Sadd3, Sadd4,
					 Ssub1, Ssub2, Ssub3, Ssub4,
					 Scmp1, Scmp2, Scmp3, Scmp4,
					 Smil1, Smil2,
					 Smih1, Smih2,
					 Sspc1, Sspc2, Sspc3, Sspc4,
					 Sjpa1, Sjpa2, Sjpa3,
					 Sjpr1, Sjpr2,
					 Sbrz1, Sbrz2,
					 Sbrc1, Sbrc2,
					 Sawp1, Sawp2);
	signal current_state : state;
	signal next_state : state;
begin

	process (clk, external_reset)
	begin
		if external_reset = '1' then
			current_state <= Sreset;    
		elsif rising_edge(clk) then
			current_state <= next_state;
		end if;
	end process;

	process (current_state, ir_out, zout, cout)
	begin
		case current_state is
		 when Sreset =>
				reset_pc <= '1';
				pc_plus1 <= '0';
				pc_plusi <= '0';
				r0_plusi <= '0';
				r0_plus0 <= '0';
				b15to0 <= '0';
				aandb <= '0';
				aorb <= '0';
				axorb <= '0';
				notb <= '0';
				aaddb <= '0';
				asubb <= '0';
				amulb <= '0';
				acmpb <= '0';
				shrb <= '0';
				shlb <= '0';
				alu_out_on_databus <= '0';
				cset <= '0';
				creset <= '0';
				zset <= '0';
				zreset <= '0';
				sr_load <= '0';
				ir_load <= '0';
				pc_load <= '0';
				rfl_write <= '0';
				rfh_write <= '0';
				wpadd <= '0';
				wpreset <= '1';
				adrs_on_daabus <= '0';
				rd_on_adrs <= '0';
				rs_on_adrs <= '0';
				read_mem <= '0';
				write_mem <= '0';
			    next_state <= Sfetch1;
			when Sfetch1 =>
            	pc_load <= '1';
				read_mem <= '1';
			    reset_pc <= '0';
            	wpreset <= '0';
				next_state <= Sfetch2;		
			when Sfetch2 =>
            	pc_plus1 <= '0';
            	pc_load <= '0';
           	 	ir_load <= '1';
				next_state <= Sdecode;
			when Sdecode =>
					read_mem <= '0';
            	ir_load <= '0';
				if ir_out (15 downto 8) = "00000000" then
					next_state <= Snop;
				elsif ir_out (15 downto 8) = "00000001" then
					next_state <= Shlt;
				elsif ir_out (15 downto 8) = "00000010" then
					next_state <= Sszf1;
				elsif ir_out (15 downto 8) = "00000011" then
					next_state <= Sczf1;
				elsif ir_out (15 downto 8) = "00000100" then
					next_state <= Sscf1;
				elsif ir_out (15 downto 8) = "00000101" then
					next_state <= Sccf1;
				elsif ir_out (15 downto 8) = "00000110" then
					next_state <= Scwp1;
				elsif ir_out (15 downto 12) = "0001" then
					next_state <= Smvr1;
				elsif ir_out (15 downto 12) = "0010" then
					next_state <= Slda1;
				elsif ir_out (15 downto 12) = "0011" then
					next_state <= Ssta1;
				elsif ir_out (15 downto 12) = "0110" then
					next_state <= Sand1;
				elsif ir_out (15 downto 12) = "0111" then
					next_state <= Sor1;
				elsif ir_out (15 downto 12) = "1000" then
					next_state <= Snot1;
				elsif ir_out (15 downto 12) = "1001" then
					next_state <= Sshl1;
				elsif ir_out (15 downto 12) = "1010" then
					next_state <= Sshr1;
				elsif ir_out (15 downto 12) = "1011" then
					next_state <= Sadd1;
				elsif ir_out (15 downto 12) = "1100" then
					next_state <= Ssub1;
				elsif ir_out (15 downto 12) = "1110" then
					next_state <= Scmp1;
				elsif ir_out (15 downto 12) = "1111" and ir_out (9 downto 8) = "00" then
					next_state <= Smil1;
				elsif ir_out (15 downto 12) = "1111" and ir_out (9 downto 8) = "01" then
					next_state <= Smih1;
				elsif ir_out (15 downto 12) = "1111" and ir_out (9 downto 8) = "10" then
					next_state <= Sspc1;
				elsif ir_out (15 downto 12) = "1111" and ir_out (9 downto 8) = "11" then
					next_state <= Sjpa1;
				elsif ir_out (15 downto 8) = "00000111" then
					next_state <= Sjpr1;
				elsif ir_out (15 downto 8) = "00001000" then
					next_state <= Sbrz1;
				elsif ir_out (15 downto 8) = "00001001" then
					next_state <= Sbrc1;
				elsif ir_out (15 downto 8) = "00001010" then
					next_state <= Sawp1;
				end if;
			when Snop =>
            	pc_plus1 <= '1';
            	
				next_state <= Sfetch1;
			when Shlt =>
				next_state <= Shlt;
			when Sszf1 =>
            	zset <= '1';
				next_state <= Sszf2;
			when Sszf2 =>
            	zset <= '0';
            	pc_plus1 <= '1';
            	
				next_state <= Sfetch1;
			when Sczf1 =>
            	zreset <= '1';
				next_state <= Sczf2;
			when Sczf2 =>
				zreset <= '0';
            	pc_plus1 <= '1';
            	
				next_state <= Sfetch1;
			when Sscf1 =>
            	cset <= '1';
				next_state <= Sscf2;
			when Sscf2 =>
				cset <= '0';
            	pc_plus1 <= '1';
            	
				next_state <= Sfetch1;
			when Sccf1 =>
            	creset <= '1';
				next_state <= Sccf2;
			when Sccf2 =>
				creset <= '0';
            	pc_plus1 <= '1';
            	
				next_state <= Sfetch1;
			when Scwp1 =>
            	wpreset <= '1';
				next_state <= Scwp2;
			when Scwp2 =>
				wpreset <= '0';
            	pc_plus1 <= '1';
            	
				next_state <= Sfetch1;
			when Smvr1 =>
            	b15to0 <= '1';
				next_state <= Smvr2;
			when Smvr2 =>
				alu_out_on_databus <= '1';
				next_state <= Smvr3;
			when Smvr3 =>
            	rfh_write <= '1';
            	rfl_write <= '1';
            	b15to0 <= '0';
				next_state <= Smvr4;
			when Smvr4 =>
            	rfh_write <= '0';
            	rfl_write <= '0';
            	pc_plus1 <= '1';
            	
				alu_out_on_databus <= '0';
				next_state <= Sfetch1;
			when Slda1 =>
            	rs_on_adrs <= '1';
				next_state <= Slda2;
			when Slda2 =>
				r0_plus0 <= '1';
				rs_on_adrs <= '0';
				next_state <= Slda3;
			when Slda3 =>
            	read_mem <= '1';
				next_state <= Slda4;
			when Slda4 =>
            	rfh_write <= '1';
            	rfl_write <= '1';
				next_state <= Slda5;
			when Slda5 =>
            	read_mem <= '0';
				r0_plus0 <= '0';
            	rfh_write <= '0';
            	rfl_write <= '0';			
				alu_out_on_databus <= '0';
            	pc_plus1 <= '1';
            	
				next_state <= Sfetch1;
			when Ssta1 =>
					adrs_on_daabus <= '1';
            	b15to0 <= '1';
				rd_on_adrs <= '1';
				next_state <= Ssta2;
			when Ssta2 =>
				r0_plus0 <= '1';
				alu_out_on_databus <= '1';
				next_state <= Ssta3;
			when Ssta3 =>
            	write_mem <= '1';
				next_state <= Ssta4;
			when Ssta4 =>
            	b15to0 <= '0';
				rd_on_adrs <= '0';
				r0_plus0 <= '0';
				write_mem <= '0';
				alu_out_on_databus <= '0';
					adrs_on_daabus <= '0';
            	pc_plus1 <= '1';
            	
				next_state <= Sfetch1;
			when Sand1 =>
					adrs_on_daabus <= '1';
            	rfh_write <= '1';
            	rfl_write <= '1';
				next_state <= Sand2;
			when Sand2 =>
            	aandb <= '1';
				next_state <= Sand3;
			when Sand3 =>
				alu_out_on_databus <= '1';
            	ir_load <= '1';
				next_state <= Sand4;
			when Sand4 =>
            	aandb <= '0';
            	ir_load <= '0';
            	rfh_write <= '0';
            	rfl_write <= '0';
            	pc_plus1 <= '1';
					adrs_on_daabus <= '0';
            	
				alu_out_on_databus <= '0';
				next_state <= Sfetch1;
			when Sor1 =>
					adrs_on_daabus <= '1';
            	rfh_write <= '1';
            	rfl_write <= '1';
				next_state <= Sor2;
			when Sor2 =>
            	aorb <= '1';
				next_state <= Sor3;
			when Sor3 =>
				alu_out_on_databus <= '1';
            	ir_load <= '1';
				next_state <= Sor4;
			when Sor4 =>
            	aorb <= '0';
            	ir_load <= '0';
            	rfh_write <= '0';
            	rfl_write <= '0';
            	pc_plus1 <= '1';
					adrs_on_daabus <= '0';
            	
				alu_out_on_databus <= '0';
				next_state <= Sfetch1;
			when Snot1 =>
					adrs_on_daabus <= '1';
            	rfh_write <= '1';
            	rfl_write <= '1';
				next_state <= Snot2;
			when Snot2 =>
            	notb <= '1';
				next_state <= Snot3;
			when Snot3 =>
				alu_out_on_databus <= '1';
            	ir_load <= '1';
				next_state <= Snot4;
			when Snot4 =>
            	notb <= '0';
            	ir_load <= '0';
            	rfh_write <= '0';
            	rfl_write <= '0';
            	pc_plus1 <= '1';
					adrs_on_daabus <= '0';
            	
				alu_out_on_databus <= '0';
				next_state <= Sfetch1;
			when Sshl1 =>
					adrs_on_daabus <= '1';
            	rfh_write <= '1';
            	rfl_write <= '1';
				next_state <= Sshl2;
			when Sshl2 =>
            	shlb <= '1';
				next_state <= Sshl3;
			when Sshl3 =>
				alu_out_on_databus <= '1';
            	ir_load <= '1';
				next_state <= Sshl4;
			when Sshl4 =>
            	shlb <= '0';
            	ir_load <= '0';
            	rfh_write <= '0';
            	rfl_write <= '0';
            	pc_plus1 <= '1';
					adrs_on_daabus <= '0';
            	
				alu_out_on_databus <= '0';
				next_state <= Sfetch1;
			when Sshr1 =>
					adrs_on_daabus <= '1';
            	rfh_write <= '1';
            	rfl_write <= '1';
				next_state <= Sshr2;
			when Sshr2 =>
            	shrb <= '1';
				next_state <= Sshr3;
			when Sshr3 =>
				alu_out_on_databus <= '1';
            	ir_load <= '1';
				next_state <= Sshr4;
			when Sshr4 =>
            	shrb <= '0';
            	ir_load <= '0';
            	rfh_write <= '0';
					adrs_on_daabus <= '0';
            	rfl_write <= '0';
            	pc_plus1 <= '1';
            	
				alu_out_on_databus <= '0';
				next_state <= Sfetch1;
			when Sadd1 =>
					adrs_on_daabus <= '1';
            	rfh_write <= '1';
            	rfl_write <= '1';
				next_state <= Sadd2;
			when Sadd2 =>
            	aaddb <= '1';
				next_state <= Sadd3;
			when Sadd3 =>
					alu_out_on_databus <= '1';
            	ir_load <= '1';
				next_state <= Sadd4;
			when Sadd4 =>
            	ir_load <= '0';
            	aaddb <= '0';
            	rfh_write <= '0';
            	rfl_write <= '0';
            	pc_plus1 <= '1';
				adrs_on_daabus <= '0';
            	
				alu_out_on_databus <= '0';
				next_state <= Sfetch1;
			when Ssub1 =>
					adrs_on_daabus <= '1';
            	rfh_write <= '1';
            	rfl_write <= '1';
				next_state <= Ssub2;
			when Ssub2 =>
            	asubb <= '1';
				next_state <= Ssub3;
			when Ssub3 =>
				alu_out_on_databus <= '1';
            	ir_load <= '1';
				next_state <= Ssub4;
			when Ssub4 =>
            	asubb <= '0';
            	ir_load <= '0';
            	rfh_write <= '0';
            	rfl_write <= '0';
            	pc_plus1 <= '1';
					adrs_on_daabus <= '0';
            	
				alu_out_on_databus <= '0';
				next_state <= Sfetch1;
			when Scmp1 =>
					adrs_on_daabus <= '1';
            	rfh_write <= '1';
            	rfl_write <= '1';
				next_state <= Scmp2;
			when Scmp2 =>
            	acmpb <= '1';
				next_state <= Scmp3;
			when Scmp3 =>
				alu_out_on_databus <= '1';
            	ir_load <= '1';
				next_state <= Scmp4;
			when Scmp4 =>
            	acmpb <= '0';
            	ir_load <= '0';
            	rfh_write <= '0';
            	rfl_write <= '0';
            	pc_plus1 <= '1';
					adrs_on_daabus <= '0';
            	
				alu_out_on_databus <= '0';
				next_state <= Sfetch1;
			when Smil1 =>
            	rfl_write <= '1';
            	rfh_write <= '0';
				next_state <= Smil2;
			when Smil2 =>
            	rfl_write <= '0';
            	pc_plus1 <= '1';
            	
				next_state <= Sfetch1;
			when Smih1 =>
            	rfh_write <= '1';            	
					rfl_write <= '0';
				next_state <= Smih2;
			when Smih2 =>
            	rfh_write <= '0';
            	pc_plus1 <= '1';
            	
				next_state <= Sfetch1;
			when Sspc1 =>
            	pc_plusi <= '1';
				next_state <= Sspc2;
			when Sspc2 =>
				adrs_on_daabus <= '1';
				next_state <= Sspc3;
			when Sspc3 =>
            	rfh_write <= '1';
            	rfl_write <= '1';
            	pc_plusi <= '0';
				next_state <= Sspc4;
			when Sspc4 =>
            	rfh_write <= '0';
            	rfl_write <= '0';
            	pc_plus1 <= '1';
            	
				adrs_on_daabus <= '0';
				next_state <= Sfetch1;
			when Sjpa1 =>
            	rd_on_adrs <= '1';
				next_state <= Sjpa2;
			when Sjpa2 =>
				r0_plusi <= '1';
				next_state <= Sjpa3;
			when Sjpa3 =>
				r0_plusi <= '0';
            	
            	rd_on_adrs <= '0';
				next_state <= Sfetch1;
			when Sjpr1 =>
            	pc_plusi <= '1';
            	
				next_state <= Sjpr2;
			when Sjpr2 =>
				pc_plusi <= '0';
				next_state <= Sfetch1;
			when Sbrz1 =>
				if zout='1' then
					pc_plusi <= '1';
            		
					next_state <= Sbrz2;
				else
					pc_plus1 <= '1';
					
					next_state <= Sfetch1;
				end if;
			when Sbrz2 =>
				pc_plusi <= '0';
				next_state <= Sfetch1;
			when Sbrc1 =>
				if cout='1' then
					pc_plusi <= '1';
            		
					next_state <= Sbrc2;
				else 
					pc_plus1 <= '1';
					
					next_state <= Sfetch1;
				end if;
			when Sbrc2 =>
				pc_plusi <= '0';
				next_state <= Sfetch1;
			when Sawp1 =>
            	wpadd <= '1';
				next_state <= Sawp2;
			when Sawp2 =>
            	wpadd <= '1';
				pc_plus1 <= '1';
				
				next_state <= Sfetch1;

		end case;
	end process;
	
end Behavioral;

