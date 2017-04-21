--------------------------------------------------------------------------------
-- Author:        Parham Alvani (parham.alvani@gmail.com)
--
-- Create Date:   16-03-2017
-- Module Name:   memory.vhd
--------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity memory is
	generic (blocksize : integer := 1024);

	port (clk, readmem, writemem : in std_logic;
		addressbus: in std_logic_vector (15 downto 0);
		databus : inout std_logic_vector (15 downto 0);
		memdataready : out std_logic);
end entity memory;

architecture behavioral of memory is
	type mem is array (0 to blocksize - 1) of std_logic_vector (15 downto 0);
begin
	process (clk)
		variable buffermem : mem := (others => (others => '0'));
		variable ad : integer;
		variable init : boolean := true;
	begin
		if init = true then
					
				--cwp
				buffermem(0) := "0000011000000000";

				--mil r0, 01011101
				buffermem(1) := "1111000001011101";

				--mih r0, 00000101
				buffermem(2) := "1111000100000101";

				--mil r1, 00000001
				buffermem(3) := "1111010000000001";

				--mih r1, 00000000
				buffermem(4) := "1111010100000000";

				--lda
				buffermem(5):=  "0010010000000000";
				
				--sta
				buffermem(6):=  "0011000100000000";

				--szf scf
				buffermem(7):=  "0000001000000100";

				--szf czf
				buffermem(8):=  "0000001100000101";

				--nop  - mvr r0,r1
				buffermem(9):=  "0000000000010001";

				--spc r1 , 0000100
				buffermem(10):= "1111011000001000";

				--add r1, r0
				buffermem(11) := "1011010000000000";
				
				--sub r1, r0
				buffermem(12) := "1100010000000000";
				
			init := false;
		end if;

		memdataready <= '0';

		if  clk'event and clk = '1' then
			ad := to_integer(unsigned(addressbus));

			if readmem = '1' then -- Readiing :)
				memdataready <= '1';
				if ad >= blocksize then
					databus <= (others => 'Z');
				else
					databus <= buffermem(ad);
				end if;
			elsif writemem = '1' then -- Writing :)
				memdataready <= '1';
				if ad < blocksize then
					buffermem(ad) := databus;
				end if;
			elsif readmem = '0' then
				databus <= (others => 'Z');
			end if;
		end if;
	end process;
end architecture behavioral;