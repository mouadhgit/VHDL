library IEEE;
use IEEE.std_logic_1164.all;

entity shift_reg is port(
    reset, shift, d0, clk: in std_logic;
    q: out std_logic_vector(3 downto 0 ));
end entity shift_reg;

architecture shift_arch of shift_reg is
    begin shift_proc: process(clk, reset)
      begin
        if(reset = '0')          then q <= "0000";
            elsif (rising_edge(clk)) then 
             if(shift = '1')       then 
              q(0) <= d0  ;
              q(1) <= q(0); 
              q(2) <= q(1); 
              q(3) <= q(2); 
            end if;
        end if;
    end process shift_proc;
end architecture shift_arch;

