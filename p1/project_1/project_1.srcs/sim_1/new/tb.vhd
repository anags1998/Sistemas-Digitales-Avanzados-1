-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 8.11.2021 11:42:47 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_puerto_serie is
end tb_puerto_serie;

architecture tb of tb_puerto_serie is

    component puerto_serie
        port (sys_clock : in std_logic;
              reset     : in std_logic;
              RX        : in std_logic;
              TX        : out std_logic);
    end component;

    signal sys_clock : std_logic;
    signal reset     : std_logic;
    signal RX        : std_logic;
    signal TX        : std_logic;

    constant TbPeriod : time := 10 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';
    constant bit_time : time  := 8.6806e+03 ns ;
    type matriz is ARRAY(0 to 5) OF std_logic_vector( 9 downto 0);
    signal matriz_datos : matriz;
    constant dato :std_logic_vector(9 downto 0) := '1' & X"A5" & '0'  ;
    
begin

    dut : puerto_serie
    port map (sys_clock => sys_clock,
              reset     => reset,
              RX        => RX,
              TX        => TX);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 ;

    -- EDIT: Check that sys_clock is really your main clock signal
    sys_clock <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        RX <= '1';
        matriz_datos(0)<= '1' & X"A5" & '0' ;
        matriz_datos(1)<= '1' & X"C9" & '0' ;        
        matriz_datos(2)<= '1' & X"5D" & '0' ;
        matriz_datos(3)<= '1' & X"8A" & '0' ;
        matriz_datos(4)<= '1' & X"BF" & '0' ;        
        matriz_datos(5)<= '1' & X"FE" & '0' ;
        -- Reset generation
        -- EDIT: Check that reset is really your reset signal
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        wait for 100 ns;
        while true loop 
       for j in 0 to 5 loop
        for i in 0 to 9 loop
            RX <= matriz_datos(j)(i) ;
            wait for bit_time ;
        end loop ;
        for i in 0 to 11 loop
            wait for bit_time ;
        end loop ;
       end loop ;
        end loop;

        assert false report "FIN" severity ERROR ;
    end process;

end tb;
