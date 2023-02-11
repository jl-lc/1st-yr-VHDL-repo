library ieee;
use ieee.std_logic_1164.all;

-----------------------------------------------------------------------------------------------------------
--

entity compx1 is 
port (
	A,B																	: in std_logic;      --
	AGTB, AEQB, ALTB													: out std_logic      --
);
end compx1;
architecture comparator of compx1 is 
begin

AGTB <= A AND NOT B;																	--
AEQB <= A XNOR B;																		--
ALTB <= NOT A AND B;																	--

end comparator;

