----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:42:18 03/11/2017 
-- Design Name: 
-- Module Name:    comprator16Bits - Behavioral 
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

entity comprator16Bits is
    Port ( a : in  STD_LOGIC_VECTOR (15 downto 0);
           b : in  STD_LOGIC_VECTOR (15 downto 0);
           l : in  STD_LOGIC;
           e : in  STD_LOGIC;
           g : in  STD_LOGIC;
           lt : out  STD_LOGIC;
           eq : out  STD_LOGIC;
           gta : out  STD_LOGIC);
end comprator16Bits;

architecture Behavioral of comprator16Bits is

	component compratorNBits is
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
	end component compratorNBits;
	
begin

	comprate: compratorNBits
		generic map (
			bits => 16
		)
		port map(
			a => a,
			b => b,
			l => l,
			e => e,
			g => g,
			lt => lt,
			eq => eq,
			gta => gta
		);


end Behavioral;

