--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:32:07 04/21/2017
-- Design Name:   
-- Module Name:   C:/Users/Windows 10/Documents/GitHub/Architecture_Project/rg_tb.vhd
-- Project Name:  Architecture_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: random_generator
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
 
ENTITY rg_tb IS
END rg_tb;
 
ARCHITECTURE behavior OF rg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT random_generator
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         Output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: random_generator PORT MAP (
          A => A,
          B => B,
          Output => Output
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A <= "0001110100111001";
		B <= "0111110100111001";
      wait for 100 ns;	
		A <= "0001110100111001";
		B <= "0111110100111011";
		
		      wait for 100 ns;	
		A <= "0001110100111111";
		B <= "0111010100111001";
		
		      wait for 100 ns;	
		A <= "0011111100111001";
		B <= "0111110100111001";
      -- insert stimulus here 

      wait;
   end process;

END;
