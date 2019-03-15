library ieee;
use ieee.std_logic_1164.all;

entity Select1 is
port(
	D: in std_logic_vector(11 downto 0);
	O1: in std_logic_vector( 2 downto 0);
	BCD: out std_logic_vector(3 downto 0));
end select1;

architecture solve of Select1 is
begin
	BCD <= D(11 downto 8) when O1(1)='0' else
		D(7 downto 4) when O1(1)='0' else
		D(3 downto 0) when O1(2)='0';
end solve;