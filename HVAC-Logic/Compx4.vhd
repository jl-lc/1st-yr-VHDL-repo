library ieee;
use ieee.std_logic_1164.all;

-----------------------------------------------------------------------------------------------------------

entity compx4 is 
port (
	A,B										: in std_logic_vector(3 downto 0);      --
	AGTB, AEQB, ALTB						: out std_logic    						    --
);

end compx4;
architecture comparator of compx4 is 

	component compx1 port (
		A,B									: in std_logic;      --
		AGTB, AEQB, ALTB					: out std_logic      --
	);
   end component;
	
	signal AGTB_store, AEQB_store, ALTB_store : std_logic_vector(3 downto 0);

begin

INST1: compx1 port map(A(3), B(3), AGTB_store(3), AEQB_store(3), ALTB_store(3));
INST2: compx1 port map(A(2), B(2), AGTB_store(2), AEQB_store(2), ALTB_store(2));
INST3: compx1 port map(A(1), B(1), AGTB_store(1), AEQB_store(1), ALTB_store(1));
INST4: compx1 port map(A(0), B(0), AGTB_store(0), AEQB_store(0), ALTB_store(0));

AGTB <= AGTB_store(3) OR (AEQB_store(3) AND AGTB_store(2)) OR 
        (AEQB_store(3) AND AEQB_store(2) AND AGTB_store(1)) OR (AEQB_store(3) AND AEQB_store(2) AND AEQB_store(1) AND AGTB_store(0));
		  
AEQB <= AEQB_store(3) and AEQB_store(2) AND AEQB_store(1) AND AEQB_store(0);

ALTB <= ALTB_store(3) OR (AEQB_store(3) AND ALTB_store(2)) OR 
        (AEQB_store(3) AND AEQB_store(2) AND ALTB_store(1)) OR (AEQB_store(3) AND AEQB_store(2) AND AEQB_store(1) AND ALTB_store(0));


end comparator;

