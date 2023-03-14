-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity subNbits_ is
	generic (
		N : integer :=4
	);
port (
	  e1 : in std_logic_vector (N-1 downto 0);
    e2 : in std_logic_vector (N-1 downto 0);
    s1 : out std_logic_vector (N-1 downto 0)
);
end subNbits_;

architecture subNbits_DataFlow of subNbits_ is
    
begin 
	process(e1, e2)
	begin
	s1 <= e1 - e2;
	end process;
end subNbits_DataFlow;
