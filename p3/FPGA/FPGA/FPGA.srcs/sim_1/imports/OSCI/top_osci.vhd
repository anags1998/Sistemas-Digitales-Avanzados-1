--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:44:26 10/28/2014
-- Design Name:   
-- Module Name:   C:/DENIS/courses/MIT2014/P2/top_osci.vhd
-- Project Name:  OSCI
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: osci
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
 
ENTITY top_osci IS
END top_osci;
 
ARCHITECTURE behavior OF top_osci IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT osci
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
			SEL : IN std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
	signal SEL : std_logic := '0';
   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: osci PORT MAP (
          CLK => CLK,
          RESET => RESET,
			 SEL=>SEL
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
RESET <= '1','0' after 21 ns ;
SEL <= '0','1' after 400 ms ;


END;
