library IEEE;
use IEEE.std_logic_1164.all;

entity bidir is port(
    OE   : in std_logic;
    din  : in std_logic_vector(3 downto 0);
    dout : out: std_logic_vector(3 downto 0);
    iopin: inout: std_logic_vector(3 downto 0));
end entity bidir;

architecture bidir_arch of bidir is
    begin bidir_proc: process(OE,din)
    begin
        dout <= iopin;
        if(OE = '1')     then iopin <= din;
         elsif(OE = '0') then iopin <= "zzzz";
         else                 iopin <= "xxxx";
        end if;
    end process bidir_proc;
end architecture bidir_arch;

