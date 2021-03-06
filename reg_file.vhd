library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

entity reg_file is 
    generic(Dwidth: integer :=8;
            Awidth: integer :=2 );

    port ( clk, wren: in std_logic;
           Wadress, Radress: in std_logic_vector(Awidth-1 downto 0);
           Wdata: in std_logic_vector(Dwidth-1 downto 0);
           Rdata: out std_logic_vector(Dwidth-1 downto 0));
end entity reg_file;

architecture RF_arch of reg_file is 
   type array_type is array (0 to 2**Awidth-1) of std_logic_vector(Dwidth-1 downto 0);
   signal array_reg: array_type;
 begin
    rf_proc: process(clk,wren,Wadress,Radress,Wdata)
        begin
            if (rising_edge(clk)) then 
              if(wren = '1') then 
                array_reg(to_integer(unsigned(Wadress))) <= Wdata;
              end if;
              Rdata <= array_reg(to_integer(unsigned(Radress)));
            end if;
    end process rf_proc;
end architecture RF_arch;     
    


            



           