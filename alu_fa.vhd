----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:34 02/25/2017 
-- Design Name: 
-- Module Name:    aliFullAdder - Behavioral 
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

entity aliFullAdder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin  : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           s : out  STD_LOGIC);
end aliFullAdder;

architecture Behavioral of aliFullAdder is
component aliHalfAdder
	port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;
signal s1, cout1, cout2 : STD_LOGIC;			  
begin
	
	p1 : aliHalfAdder port map ( a,b,s1,cout1);
	p2 : aliHalfAdder port map ( cin,s1,s,cout2);
	cout <= cout1 or cout2;
	
end Behavioral;

