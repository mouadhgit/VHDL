library IEEE;
use IEEE.std_logic_1164.all;

entity bus_js is port(
    A   : in std_logic_vector(4 downto 0);
    B   : in std_logic_vector(2 downto 0);
    Dout: out std_logic_vector(5 downto 0));
    x,y : out std_logic;
end entity bus_js;

architecture js_arch of bus_js is
    begin js_proc: process(A,B) begin
        Dout <= (B(2) & B(1) & B(0) & A(2) & A(1) & A(0));
        x    <= A(3)
        y    <= A(4)
    end process js_proc;
end architecture js_arch;

