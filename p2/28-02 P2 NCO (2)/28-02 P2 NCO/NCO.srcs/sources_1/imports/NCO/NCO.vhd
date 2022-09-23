----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:47:18 10/29/2014 
-- Design Name: 
-- Module Name:    NCO - Behavioral 
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
USE ieee.numeric_std.ALL ;
Use std.textio.all;
Use ieee.std_logic_textio.all;
use IEEE.math_real.all ;
library WORK;

entity NCO is
    Port ( CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC
           );
end NCO;

architecture Behavioral of NCO is

type rom_type is array (0 to 4095) of std_logic_vector (15 downto 0);

function LUT_sen return rom_type is
variable LUT_sen: rom_type;
variable sen: integer;
begin
for i in 0 to 4095 loop --LUT_sen'rigth(1) error??
    sen:=integer(32767.0 * sin(2.0*math_pi*real(i)/1024.0));
    LUT_sen(i):= std_logic_vector(to_signed(sen,16));
end loop;
return LUT_sen;

end LUT_sen;


    COMPONENT ila_0
    PORT(
         clk : IN  std_logic;
         probe1 : IN  std_logic_vector(0 downto 0);
         probe0 : IN  std_logic_vector(15 downto 0)         );
    END COMPONENT;
   


signal seno : signed (15 downto 0) ;

signal trig : std_logic_vector(0 downto 0) ;

signal CLK50 : std_logic := '0' ;

constant LUT: rom_type:= LUT_sen;

begin

process
begin
wait until CLK = '1' ;
CLK50 <= not CLK50 ;
end process ;

  ila_1: ila_0
       PORT MAP ( clk => CLK50,
       probe1 => trig,
                  probe0 =>std_logic_vector(seno));

	 

process(RESET,CLK50) 
variable FM : unsigned(11 downto 0) ; 
begin
if( RESET = '1' ) then
	FM := (OTHERS => '0' ) ;
	trig <= "0" ;
elsif( CLK50'event AND CLK50 = '1' ) then
	trig <= "0" ;
	if ( FM = 499 ) then 
		FM := (OTHERS => '0' ) ;
		trig <= "1" ;
	else FM := FM +1 ;
	end if ;
end if;
end process ;


-- AÑADIR LO NECESARIO
process(RESET,CLK50) 
variable t: unsigned (0 to 10);

begin
if( RESET = '1' ) then
    seno<="0";
    t:="0";
elsif( CLK50'event AND CLK50 = '1' ) then
    if (trig'event AND trig="1") then
        seno <=SIGNED(LUT(to_integer(t)));
        if (t=3276) then -- poner los incrementos en función de una constante (const=819, t=4*const)
            t:="0";
        else t:=t+819;
        end if;
    end if;
end if;
end process ;

-- AÑADIR LO NECESARIO
--process(RESET,CLK50) 
--variable t: unsigned (0 to 10);
--variable l: unsigned (0 to 10):= "1111111111";
--begin
--if( RESET = '1' ) then
--   seno<="0";
--    t:="0";
--elsif( CLK50'event AND CLK50 = '1' ) then
--    if (trig'event AND trig="1") then
--           if t<1023 then
--               seno <=SIGNED(LUT(to_integer(t)));
--            else if (t<1023 AND t<2047) then
--                seno <=SIGNED(LUT(to_integer(l-t)));
--            else if (t>2047 AND t<3071)then
--                seno <=-SIGNED(LUT(to_integer(t)));
--            else
--                seno <=-SIGNED(LUT(to_integer(l-t)));
--            end if;
--        seno <=SIGNED(LUT(to_integer(t)));
--        if (t=3276) then -- poner los incrementos en función de una constante (const=819, t=4*const)
--            t:="0";
--        else t:=t+819;
--        end if;
--    end if;
--end if;
--end process ;


-- NO TOCAR
--pragma translate_off  
-- para no sintetizar
write_osci:process
file output_file : text ;
variable my_line : line ;
variable fstatus: FILE_OPEN_STATUS;
begin
file_open(fstatus,output_file,"nco.txt",WRITE_MODE);
if( fstatus = OPEN_OK) then
  wait for 100 us ;
  for i in 1 to 512*16 loop 
    wait until trig = "1" ; -- FS
    write(my_line,to_integer(signed(seno)));
    writeline(output_file,my_line) ;
  end loop ;
  file_close(output_file) ;
  assert false report "fin" severity failure ;
else assert false report "error apertura fichero" severity failure ;
end if ;
end process ;

--pragma translate_on


end Behavioral;



