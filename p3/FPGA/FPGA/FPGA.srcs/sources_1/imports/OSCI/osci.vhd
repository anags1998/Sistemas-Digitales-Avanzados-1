
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:44:08 10/28/2014 
-- Design Name: 
-- Module Name:    osci - Behavioral 
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
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
Use std.textio.all;
Use ieee.std_logic_textio.all;



entity osci is
    Port ( CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
			  SEL : in STD_LOGIC
			  );
end osci;

architecture Behavioral of osci is


    COMPONENT ila_0
    PORT(
         clk : IN  std_logic;
         probe1 : IN  std_logic_vector(0 downto 0);
         probe0 : IN  std_logic_vector(20 downto 0)         );
    END COMPONENT;
--constantes   
constant B1: signed(3 downto 0):= "0101"; --5
constant B3: signed(3 downto 0):= "1011"; -- -5
constant A2: signed(11 downto 0):= "100001011010"; -- -1958 
constant A2_2: signed(11 downto 0):= "100001101100"; -- -1940
constant A3: signed(10 downto 0):= "01111110101"; -- 1013
--señales
signal UD0,UD0_REG,UD1,UD1_REG,UD2,UD2_REG : signed(20 downto 0);
signal GB1,GB3 : signed(3 downto 0);
signal MULT: signed(32 downto 0);
signal MULT2: signed(32 downto 0);
signal MULT3: signed(31 downto 0);
--pragma synthesis_off para no sintetizar
signal SAL_R,frecuencia : real := 0.0 ;
--pragma synthesis_on

signal SAL : signed(20 downto 0) ;
signal trig : STD_LOGIC_VECTOR(0 downto 0) ;  

begin

SAL <= UD0_REG;
GB1 <= B1 when UD0_REG >= 0 else (others=>'0');
GB3 <= B3 when UD0_REG >= 0 else (others=>'0');

UD0 <= (GB1 & "0000000000") + UD1_REG;
MULT <= A2*UD0;
MULT2 <= A2_2*UD0;
UD1 <= (UD2_REG - MULT(30 downto 10)) WHEN SEL = '0' ELSE (UD2_REG - MULT2(30 downto 10));
MULT3 <= A3*UD0;
UD2 <= (GB3 & "0000000000") - MULT3(30 downto 10);


process(RESET,CLK) 
begin
if( RESET = '1' ) then
    UD0_REG <= (OTHERS => '0' ) ;
    UD1_REG <= (OTHERS => '0' ) ;
    UD2_REG <= (OTHERS => '0' ) ;
elsif( CLK'event AND clk = '1' ) then
	if ( trig = "1" ) then 
		UD0_REG <= UD0;
		UD1_REG <= UD1;
		UD2_REG <= UD2;
	end if ; 
end if;
end process ;


process(RESET,CLK) 
variable FM : unsigned(11 downto 0) ; 
begin
if( RESET = '1' ) then
	FM := (OTHERS => '0' ) ;
	trig <= "0" ;
elsif( CLK'event AND clk = '1' ) then
	trig <= "0" ;
	if ( FM = 2082 ) then 
		FM := (OTHERS => '0' ) ;
		trig <= "1" ;
	else FM := FM +1 ;
	end if ;
end if;
end process ;



------------------------------ NO TOCAR 

  ila_1: ila_0
       PORT MAP ( clk => CLK,
       probe1 => trig,
                  probe0 =>std_logic_vector(SAL));
	 
--pragma synthesis_off 

SAL_R <=real(to_integer(SAL)) ;

process
variable periodo,tiempo : time := 0 ns ;
begin
wait until SAL_R >= 0.0 and SAL_R'last_value < 0.0;
periodo := now - tiempo ;
tiempo := now ;
frecuencia <= 1.0/((periodo/1 ns)*1.0E-9);
end process ;

write_osci:process
file output_file : text ;
variable my_line : line ;
variable fstatus: FILE_OPEN_STATUS;
begin
file_open(fstatus,output_file,"osci.txt",WRITE_MODE);
if( fstatus = OPEN_OK) then
  wait for 10 ms ;
  for i in 1 to 512*16 loop 
    wait until trig = "1" ;
    write(my_line,to_integer(signed(SAL)));
    writeline(output_file,my_line) ;
  end loop ;
  file_close(output_file) ;
  assert false report "fin" severity failure ;
else assert false report "error apertura fichero" severity failure ;
end if ;
end process ;

--pragma synthesis_on

end Behavioral;

