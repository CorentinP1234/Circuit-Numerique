-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity bufferNbits is
generic (
	N : integer :=4
);
port (
	e1 : in std_logic_vector (N+1 downto 0);
    reset : in std_logic;
    preset : in std_logic;
    clock : in std_logic;
    si : out std_logic_vector (N+1 downto 0)
);
end bufferNbits;

architecture bufferNbits_Arch of bufferNbits is

begin

	-- process explicite - instructions sequentielle
    MyBufferNbitsProc : process (reset, clock)
    begin
    	if (reset = '1') then
        	si <= (others => '0');
        elsif (rising_edge(clock)) then
        	if (preset = '1') then
            	si <= (others => '1');
            else
            	si <= e1;
            end if;
        end if;
    end process;
end bufferNbits_Arch;