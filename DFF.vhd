library IEEE;
use IEEE.std_logic_1164.all;

entity DFF is port (
    d, clk, ce, reset     : in std_logic  ;
    q                : out std_logic);
end entity DFF;

architecture DFF_arch of DFF is 
  begin dff_proc_1: process(clk, ce, reset)
    begin
       if (reset = '1')           then q <= '0';
         elsif(rising_edge(clk)) then
            if(ce = '1')         then q <= d;
            end if;
       end if;     
    end process dff_proc_1;
end architecture DFF_arch;            