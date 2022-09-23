----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2021 11:56:44
-- Design Name: 
-- Module Name: puerto_serie - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity puerto_serie is
    Port ( sys_clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           RX : in STD_LOGIC;
           TX : out STD_LOGIC);
end puerto_serie;

architecture Behavioral of puerto_serie is

    component transmisor
        port (clk    : in std_logic;
              reset  : in std_logic;
              TX     : out std_logic;
              TVALID : in std_logic;
              TREADY : out std_logic;
              TDATA  : in std_logic_vector (7 downto 0));
    end component;

    
    component receptor
        port (clk    : in std_logic;
              reset  : in std_logic;
              RX     : in std_logic;
              TVALID : out std_logic;
              TREADY : in std_logic;
              TDATA  : out std_logic_vector (7 downto 0));
    end component;

    signal TVALID : std_logic;
    signal TREADY : std_logic;
    signal TDATA  : std_logic_vector (7 downto 0);
begin

    receptor_i : receptor
    port map (clk    => sys_clock,
              reset  => reset,
              RX     => RX,
              TVALID => TVALID,
              TREADY => TREADY,
              TDATA  => TDATA);

    transmisor_i : transmisor
    port map (clk    => sys_clock,
              reset  => reset,
              TX     => TX,
              TVALID => TVALID,
              TREADY => TREADY,
              TDATA  => std_logic_vector(unsigned(TDATA)+1));

              
end Behavioral;
