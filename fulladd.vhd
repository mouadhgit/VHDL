library ieee;                                	
use ieee.std_logic_1164.all;           	
                                             		
entity fulladd is port (                 	
    A, B,cin : in std_logic; 
    cout,sum : out std_logic);               		
end fulladd; 

architecture struct of fulladd is 
begin
  sum  <= A xor B xor cin;
  cout <= (A and B) xor ((A xor B) and cin);
end struct;