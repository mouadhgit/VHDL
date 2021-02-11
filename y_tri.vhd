library IEEE;
use IEEE.std_logic_1164.all;

entity y_tri is port(
    OE:in std_logic;
    Din: in std_logic_vector(3 downto 0);
    Dout: out std_logic_vector(3 downto 0));
end entity y_tri;

architecture tri_arch of y_tri is
    begin
        Dout <= Din when(OE = '1') else "zzzz";
end architecture tri_arch;        

//*((int*)0x..) = 0x..;