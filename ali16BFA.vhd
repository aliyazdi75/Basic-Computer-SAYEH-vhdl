----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:32:50 02/25/2017 
-- Design Name: 
-- Module Name:    ali16BFA - Behavioral 
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

entity ali16BFA is
    Port ( a : in  STD_LOGIC_VECTOR (15 downto 0);
           b : in  STD_LOGIC_VECTOR (15 downto 0);
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (15 downto 0));
end ali16BFA;
architecture Behavioral of ali16BFA is
component ali4BFA
	Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
signal c1, c2, c3 : STD_LOGIC;	

begin
	
	p1 : ali4BFA port map ( a(3 downto 0),b(3 downto 0),cin,c1,s(3 downto 0));
	p2 : ali4BFA port map ( a(7 downto 4),b(7 downto 4),c1,c2,s(7 downto 4));
	p3 : ali4BFA port map ( a(11 downto  8),b(11 downto  8),c2,c3,s(11 downto  8));
	p4 : ali4BFA port map ( a(15 downto  12),b(15 downto  12),c3,cout,s(15 downto  12));

end Behavioral;

