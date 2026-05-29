library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FULL_ADDER is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           S : out  STD_LOGIC);
end FULL_ADDER;

architecture Behavioral of FULL_ADDER is
signal s1,s2,c1,c2: STD_LOGIC;

	component halfadder is
	port
	( A:in STD_LOGIC;
	  B: in STD_LOGIC;
	  S: out STD_LOGIC;
	  C: out STD_LOGIC
	  );
	  end component;
	  
begin

	HA1:halfadder
	port map(
	A=>A,
	B=>B,
	S=>s1,
	C=>c1
	);
	
	HA2:halfadder
	port map(
	A=>Cin,
	B=>s1,
	S=>s2,
	C=>c2
	);
	
	S<=s2;
	Cout <= c1 OR c2;

end Behavioral;

