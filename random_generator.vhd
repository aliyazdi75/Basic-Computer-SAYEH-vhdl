----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:09:56 04/21/2017 
-- Design Name: 
-- Module Name:    random_generator - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity random_generator is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           Output : out  STD_LOGIC_VECTOR (15 downto 0));
end random_generator;

architecture Behavioral of random_generator is

signal add : STD_LOGIC_VECTOR (15 downto 0);
signal feedback1,feedback2,feedback3 : STD_LOGIC;
	
	begin
		--add<=A;
		add <= STD_LOGIC_VECTOR(unsigned(A) + unsigned(B));
		feedback1 <= not(add (14) xor  add (6) xor add (3));
		feedback2 <= not(add (12) xor  add (9) xor add (5));
		feedback3 <= not(add (11) xor  add (7) xor add (2));
	
		Output(15) <= feedback1;
		Output(14 downto 8) <= add(14 downto 8);
		Output(7) <= feedback2;
		Output(6 downto 1) <= add(6 downto 1);
		Output(0) <= feedback3;
	
	
end Behavioral;

