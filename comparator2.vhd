
library ieee;                                	
use ieee.std_logic_1164.all;           	
                                             		
entity comparator2 is port (                 	
    A, B: in std_logic_vector(1 downto 0); 
    Equals: out std_logic;
    AgthB : out std_logic;
    AlthB : out std_logic);            		
end comparator2; 

Architecture dataflow of comparator2 is 
begin 
   Equals <= '1' when (A = B) else '0' ;
   AgthB  <= '1' when (A > B) else '0' ;
   AlthB  <= '1' when (A < B) else '0' ;
end dataflow; 

