LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY halftb IS
END halftb;
 
ARCHITECTURE behavior OF halftb IS 
 
 
    COMPONENT halfadder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : OUT  std_logic;
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal C : std_logic;
   signal S : std_logic; 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: halfadder PORT MAP (
          A => A,
          B => B,
          C => C,
          S => S
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		 A <='0';
	B<='0';
	wait for 100 ns;
	A <='0';
	B<='1';
	wait for 100 ns;
	A <='1';
	B<='0';
	wait for 100 ns;
	A <='1';
	B<='1';
	wait for 100 ns;
	
      wait;
   end process;

END;
