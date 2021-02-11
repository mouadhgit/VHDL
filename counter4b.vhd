library ieee;                                	
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;

entity counter4b is port(
    reset, load, EN, clk : in std_logic;
    d   : in  std_logic_vector(3 downto 0) ;
    q   : out std_logic_vector(3 downto 0));
end entity counter4b;

architecture counter_arch of counter4b is 
  begin counter_proc: process(clk,reset,load,en)
    begin if   (reset='1')        then q <= "0000";
          elsif(rising_edge(clk)) then 
            if (load = '1')       then q <= d;    
            elsif(EN = '1')       then q <= q+1;
            end if;  
          end if;
  end process counter_proc;
end architecture counter_arch;
                            




