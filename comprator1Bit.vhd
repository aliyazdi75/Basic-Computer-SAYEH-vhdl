----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:36:39 03/11/2017 
-- Design Name: 
-- Module Name:    comprator1Bit - Behavioral 
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

entity comprator1Bit is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           l : in  STD_LOGIC;
           e : in  STD_LOGIC;
           g : in  STD_LOGIC;
           lt : out  STD_LOGIC;
           eq : out  STD_LOGIC;
           gta : out  STD_LOGIC);
end comprator1Bit;

architecture Behavioral of comprator1Bit is

begin

	lt <= (not(a) and b) or ((a xnor b) and l);
	eq <= ((a xnor b) and e);
	gta <= (a and not(b)) or ((a xnor b) and g);
	
end Behavioral;

