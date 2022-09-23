----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2021 12:04:50
-- Design Name: 
-- Module Name: receptor - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity receptor is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           RX : in STD_LOGIC;
           TVALID : out STD_LOGIC;
           TREADY : in STD_LOGIC;
           TDATA : out STD_LOGIC_VECTOR (7 downto 0));
end receptor;

architecture Behavioral of receptor is

BEGIN

end Behavioral;
