----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2021 12:04:50
-- Design Name: 
-- Module Name: transmisor - Behavioral
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

entity transmisor is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           TX : out STD_LOGIC;
           TVALID : in STD_LOGIC;
           TREADY : out STD_LOGIC;
           TDATA : in STD_LOGIC_VECTOR (7 downto 0));
end transmisor;

architecture Behavioral of transmisor is


   SIGNAL estado : integer range 0 to 10 ;  -- peligro auto inicializacion
   SIGNAL cont : integer range 0 to 868 ; -- peligro auto inicializacion
   SIGNAL datos : std_logic_vector(10 downto 0) ;
   SIGNAL dato : std_logic_vector(7 downto 0) ;
   SIGNAL start : std_logic ;

BEGIN

datos <= '1' & dato & '0' & '1' ;

PROCESS ( clk,reset) 

BEGIN
  IF (reset = '1') THEN
    estado <= 0;
    cont <= 0;
    TX <= '1' ;
    TREADY <= '1' ;
    dato <= (others => '0' ) ;
  ELSIF (clk'EVENT AND clk = '1') THEN
     TX <= datos(estado) ;
     cont <= cont + 1 ;
     TREADY <= '0' ;
     case estado is 
     when 0 => TREADY <= '1' ;
                if ( TVALID = '1' and TREADY = '1' ) then
                    estado <= 1 ;
                    TREADY <= '0' ;
                    dato <= TDATA ;
                end if ;
                cont <= 0 ;
                
     when 1 to 10  =>   
                if ( cont = 867 ) then --115200 bits/s
                    cont <= 0 ;
                    if ( estado = 10) then 
                         estado <= 0 ;
                    else estado <= estado + 1 ;
                    end if ;
                end if ;
                

    when others => assert FALSE report " ESTADO INCORRECTO " severity ERROR ; estado <= 0 ; -- no se puede simular
                             
     end case ;
  END IF;
END PROCESS ;
 



end Behavioral;
