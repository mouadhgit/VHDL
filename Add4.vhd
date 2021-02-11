--Use standar IEEE library
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity
entity Add4 is port(
  Data1,Data2  : in  std_logic_vector(3 downto 0);
  cin  : in  std_logic;
  cout : out std_logic;
  Sum  : out std_logic_vector(3 downto 0) );  
end entity Add4;

--Architecture
architecture RTL of Add4 is
  signal out5bit : std_logic_vector(4 downto 0);
begin
  out5bit <= ('0'& Data1) + ('0'& Data2) + cin;
  Sum     <= out5bit(3 downto 0); -- 4 bits
  cout    <= out5bit(4); 	  -- 5th bit         
end architecture RTL;
