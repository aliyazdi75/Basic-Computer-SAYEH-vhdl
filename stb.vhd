--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:30:53 04/20/2017
-- Design Name:   
-- Module Name:   D:/Ali Yazdi/Documents/GitHub/Architecture_Project/stb.vhd
-- Project Name:  Architecture_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sayeh_PC
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
 
ENTITY stb IS
END stb;
 
ARCHITECTURE behavior OF stb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sayeh_PC
    PORT(
         external_reset : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal external_reset : std_logic := '1';
   signal clk : std_logic := '0';

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sayeh_PC PORT MAP (
          external_reset => external_reset,
          clk => clk
        );

   -- Clock process definitions
	   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
   stim_proc :process
   begin		
      -- hold reset state for 100 ns.
       wait for 100 ns;	
		
		external_reset <= '1';
		wait for 100 ns;	
		external_reset <= '0';
      wait for clk_period*10;

      -- insert stimulus here 
		
		wait for 100 ns;
		
		wait for 100 ns;
		
		wait for 100 ns;
		
		wait for 100 ns;
		
		wait for 100 ns;
		
		
		wait for 100 ns;
		
		
		wait for 100 ns;
		
      wait;
   end process;

END;
