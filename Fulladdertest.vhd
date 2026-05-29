LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY Fulladdertest IS
END Fulladdertest;
 
ARCHITECTURE behavior OF Fulladdertest IS 
  
    COMPONENT FULL_ADDER
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         Cout : OUT  std_logic;
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal Cout : std_logic;
   signal S : std_logic;

 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FULL_ADDER PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Cout => Cout,
          S => S
        );


   -- Stimulus process
   stim_proc: process
   begin		
    A<='0';
	 B<='0' ;
	 Cin<='0';
	 wait for 100 ns;
	 
	 A<='0';
	 B<='0' ;
	 Cin<='1';
	 wait for 100 ns;
	 
	 A<='0';
	 B<='1' ;
	 Cin<='0';
	 wait for 100 ns;
	 
	 A<='0';
	 B<='1' ;
	 Cin<='1';
	 wait for 100 ns;
	 
	 A<='1';
	 B<='0' ;
	 Cin<='0';
	 wait for 100 ns;
	 
	 A<='1';
	 B<='0' ;
	 Cin<='1';
	 wait for 100 ns;
	 
	 A<='1';
	 B<='1' ;
	 Cin<='0';
	 wait for 100 ns;
	 
	 A<='1';
	 B<='1' ;
	 Cin<='1';
	 wait for 100 ns;
	 
	 

      wait;
   end process;

END;
