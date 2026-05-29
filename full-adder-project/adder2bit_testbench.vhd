LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY adder2bit_testbench IS
END adder2bit_testbench;
 
ARCHITECTURE behavior OF adder2bit_testbench IS 
 
 
    COMPONENT ADDER_2BIT
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         Cin : IN  std_logic;
         Result : OUT  std_logic_vector(1 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Result : std_logic_vector(1 downto 0);
   signal Cout : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADDER_2BIT PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Result => Result,
          Cout => Cout
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
     A<="00";
	  B<="00";
	  Cin<='0';
	  wait for 100 ns;
	  
	   A<="01";
	  B<="01";
	  Cin<='0';
	  wait for 100 ns;
	  
	   A<="10";
	  B<="10";
	  Cin<='0';
	  wait for 100 ns;
	  
	   A<="11";
	  B<="11";
	  Cin<='0';
	  wait for 100 ns;
	  
	   A<="00";
	  B<="00";
	  Cin<='1';
	  wait for 100 ns;

      wait;
   end process;

END;
