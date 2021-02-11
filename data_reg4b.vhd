library IEEE;
use IEEE.std_logic_1164.all;

entity data_reg4b is port(
    clk, reset, load: in std_logic;
    data: in   std_logic_vector(3 downto 0);
    q   : out  std_logic_vector(3 downto 0));
end entity data_reg4b;

architecture reg_arch of data_reg4b is
    begin dreg_proc : process(clk, reset, load)
        begin
          if(reset = '0')      then q <= "0000";
            elsif(rising_edge(clk)) then 
              if(load = '1')   then q <= data;
             
             end if;
        end if; 

    end process dreg_proc;
end architecture reg_arch;            