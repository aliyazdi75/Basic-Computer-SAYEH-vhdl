----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:45:31 04/12/2017 
-- Design Name: 
-- Module Name:    wp - Behavioral 
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

entity wp is
    Port ( ir_out : in  STD_LOGIC_VECTOR (5 downto 0);
           wpadd : in  STD_LOGIC;
           wpreset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           wp_out : out  STD_LOGIC_VECTOR (5 downto 0));
end wp;

architecture Behavioral of wp is

begin


end Behavioral;

