----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:53:29 04/12/2017 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu is
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
end alu;

architecture Behavioral of alu is


component comprator16Bits is
   Port ( a : in  STD_LOGIC_VECTOR (15 downto 0);
           b : in  STD_LOGIC_VECTOR (15 downto 0);
           l : in  STD_LOGIC;
           e : in  STD_LOGIC;
           g : in  STD_LOGIC;
           lt : out  STD_LOGIC;
           eq : out  STD_LOGIC;
           gta : out  STD_LOGIC);
end component comprator16Bits;

	signal alu_and, alu_or, alu_src, alu_slc, alu_cmp, alu_xor : STD_LOGIC_VECTOR (15 downto 0);  
	signal cout_add, cout_sub, alu_cmp_eq, alu_cmp_gt, alu_cmp_lt : STD_LOGIC;
	signal add, sub : STD_LOGIC_VECTOR (16 downto 0);
	
begin
	
	alu_and <= a and b;
	alu_or <= a or b;
	alu_xor <= a xor b;
	cmp: comprator16Bits port map(a,b,'0','1','0',alu_cmp_lt,alu_cmp_eq,alu_cmp_gt);
   add <= (('0' & a) + ('0' & b) + cin);
   sub <= (('0' & a) - ('0' & b) + cin);
	
	SEQ: process(aandb,aorb,axorb,aaddb,asubb,amulb,acmpb,shrb,shlb,b15to0)
	  begin
		if(aandb='1')then
			alu_out<=alu_and;
		elsif(aorb='1')then
			alu_out<=alu_or;
		elsif(axorb='1')then
			alu_out<=alu_xor;
		elsif(aaddb='1')then
			alu_out<=add(15 downto 0);
			cout <= add(16);
		elsif(asubb='1')then
			alu_out<=sub(15 downto 0);
			cout <= sub(16);
		elsif(acmpb='1')then
			cout <= alu_cmp_eq;
			zout <= alu_cmp_lt;
		elsif(shrb='1')then
			alu_out <= '0' & b(15 downto 1);
		elsif(shlb='1')then
			alu_out <= b(14 downto 0) & '0';
		elsif(b15to0='1')then
			alu_out <= b;
		end if;
   end process;
	
	
end Behavioral;
