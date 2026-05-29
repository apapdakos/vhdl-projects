library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ADDER_2BIT is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           B : in  STD_LOGIC_VECTOR (1 downto 0);
           Cin : in  STD_LOGIC;
           Result : out  STD_LOGIC_VECTOR (1 downto 0);
           Cout : out  STD_LOGIC);
end ADDER_2BIT;

architecture Structural of ADDER_2BIT is

	signal c_internal : STD_LOGIC;
	component FULL_ADDER
    port(
        A : IN std_logic;
        B : IN std_logic;
        Cin : IN std_logic;
        Cout : OUT std_logic;
        S : OUT std_logic
    );
    end component;
	 
	 
begin


	FA0: FULL_ADDER port map (
        A => A(0),
        B => B(0),
        Cin => Cin,
        S => Result(0),      
        Cout => c_internal   
    );
	 
	 FA1: FULL_ADDER port map (
        A => A(1),
        B => B(1),
        Cin => c_internal,   
        S => Result(1),      
        Cout => Cout         
    );

end Structural;


