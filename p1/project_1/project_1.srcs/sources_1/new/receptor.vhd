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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- use IEEE.NUMERIC_STD.ALL;

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

   SIGNAL estado : integer range 0 to 10 ;  -- peligro auto inicializacion
   SIGNAL cont : integer range 0 to 1302 ; -- peligro auto inicializacion
   SIGNAL indice : integer range 0 to 10;
   --SIGNAL max_cont : integer := 1302; 
BEGIN
PROCESS ( clk,reset) 

BEGIN
  IF (reset = '1') THEN
    estado <= 0;
    cont <= 0;
    TDATA <= (others => '0' ) ;
  ELSIF (clk'EVENT AND clk = '1') THEN
     TDATA <= TDATA ;
     cont <= cont + 1 ;
     TVALID <= '0' ;
     case estado is 
     when 0 =>  TVALID <= '0';
                if (TREADY = '1' AND RX = '0') then
                    estado <= 1 ;
                    TVALID <= '1' ;
                end if ;
                cont <= 0 ;
     when 1 =>
              -- if( cont = max_cont) then 
               if ( cont = 1301 ) then --115200 bits/s 
                    cont <= 0 ; 
                    estado <= 2;
                end if;
     when 2 to 9  =>  
                if ( cont = 0) then
                    TDATA(estado - 2) <= RX ; --¡ERROR!
                end if;
                if ( cont = 867 ) then --115200 bits/s
                    cont <= 0 ;   
                    estado <= estado + 1;
                end if;
     when 10 =>             
               if ( cont = 867 ) then --115200 bits/s
                    cont <= 0 ;
                    estado <= 0;
                    TVALID <= '0' ;
               end if;  
               
    when others => assert FALSE report " ESTADO INCORRECTO " severity ERROR ; estado <= 0 ; -- no se puede simular                           
     end case ;
  END IF;
END PROCESS ;
end Behavioral;
