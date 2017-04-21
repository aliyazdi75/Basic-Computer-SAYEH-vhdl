--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:58:55 04/21/2017
-- Design Name:   
-- Module Name:   C:/Users/Windows 10/Documents/GitHub/Architecture_Project/tc_tb.vhd
-- Project Name:  Architecture_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: two_complement
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tc_tb IS
END tc_tb;
 
ARCHITECTURE behavior OF tc_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT two_complement
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         Output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: two_complement PORT MAP (
          A => A,
          Output => Output
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A <= "1111111111111111";

      wait for 100 ns;	
		A <= "0000000000000000";
		
      wait for 100 ns;	
		A <= "1100000110011111";
		
		wait for 100 ns;	
		A <= "1110011001010010";
		
		wait for 100 ns;	
		A <= "1111111111111111";
      -- insert stimulus here 

      wait;
   end process;

END;
