library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity lab5module is
    Port ( SW_A : in  STD_LOGIC_VECTOR (1 downto 0);
           SW_B : in  STD_LOGIC_VECTOR (1 downto 0);
           SW4_CIN : in  STD_LOGIC;
           LED_RESULT : out  STD_LOGIC_VECTOR (1 downto 0);
           LED_COUT : out  STD_LOGIC);
end lab5module;

architecture Behavioral of lab5module is

	component FullAdder
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               Cin : in STD_LOGIC;
               Sum : out STD_LOGIC;
               Cout : out STD_LOGIC );
    end component;
	 
	 signal C1 : STD_LOGIC;

begin

	FA_LSB: FullAdder
		port map(
		A => SW_A(0),
		B => SW_B(0),
		Cin => SW4_CIN , 
		Sum => LED_RESULT(0),
		Cout => C1
		);
		
	FA_MSB: FullAdder
        port map(
		  A => SW_A(1),
		  B => SW_B(1),
		  Cin => C1,
		  Cout =>LED_COUT,
		  Sum =>LED_RESULT(1)
		  );
	

end Behavioral;

