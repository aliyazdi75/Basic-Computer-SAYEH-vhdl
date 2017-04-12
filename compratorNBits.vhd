----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:32:52 03/11/2017 
-- Design Name: 
-- Module Name:    compratorNBits - Behavioral 
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

entity compratorNBits is
	generic(
			bits: integer
		);
    Port ( a : in  STD_LOGIC_VECTOR (bits-1 downto 0);
           b : in  STD_LOGIC_VECTOR (bits-1 downto 0);
           l : in  STD_LOGIC;
           e : in  STD_LOGIC;
           g : in  STD_LOGIC;
           lt : out  STD_LOGIC;
           eq : out  STD_LOGIC;
           gta : out  STD_LOGIC);
end compratorNBits;

architecture Behavioral of compratorNBits is
	component comprator1Bit is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           l : in  STD_LOGIC;
           e : in  STD_LOGIC;
           g : in  STD_LOGIC;
           lt : out  STD_LOGIC;
           eq : out  STD_LOGIC;
           gta : out  STD_LOGIC);
end component comprator1Bit;
signal cryl,crye,cryg: STD_LOGIC_VECTOR (bits downto 0); 
begin

	
	comprate: for n in 0 to bits-1 generate
	
		mycomprator: comprator1Bit
			port map (
				a => a(n),
				b => b(n),
				l => cryl(n),
				e => crye(n),
				g => cryg(n),
				lt => cryl(n+1),
				eq => crye(n+1),
				gta => cryg(n+1)
			);
			
	end generate;
	
	--cryl(0) <= '0';
	--crye(0) <= '1';
	--cryg(0) <= '0';
	
	cryl(0) <= l;
	crye(0) <= e;
	cryg(0) <= g;
	
	lt <= cryl(bits);
	eq <= crye(bits);
	gta <= cryg(bits);
		
end Behavioral;

