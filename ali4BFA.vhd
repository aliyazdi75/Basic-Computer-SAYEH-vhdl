----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:20:59 02/25/2017 
-- Design Name: 
-- Module Name:    ali4BFA - Behavioral 
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

entity ali4BFA is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0));
end ali4BFA;

architecture Behavioral of ali4BFA is
component aliFullAdder
	 Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin  : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           s : out  STD_LOGIC);
end component;
signal c1, c2, c3 : STD_LOGIC;			  
begin
	
	p1 : aliFullAdder port map ( a(0),b(0),cin,c1,s(0));
	p2 : aliFullAdder port map ( a(1),b(1),c1,c2,s(1));
	p3 : aliFullAdder port map ( a(2),b(2),c2,c3,s(2));
	p4 : aliFullAdder port map ( a(3),b(3),c3,cout,s(3));

end Behavioral;

