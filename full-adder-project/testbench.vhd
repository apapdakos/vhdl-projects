LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY testbench IS
END testbench;
 
ARCHITECTURE behavior OF testbench IS 
 
 
    COMPONENT lab5module
    PORT(
         SW_A : IN  std_logic_vector(1 downto 0);
         SW_B : IN  std_logic_vector(1 downto 0);
         SW4_CIN : IN  std_logic;
         LED_RESULT : OUT  std_logic_vector(1 downto 0);
         LED_COUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SW_A : std_logic_vector(1 downto 0) := (others => '0');
   signal SW_B : std_logic_vector(1 downto 0) := (others => '0');
   signal SW4_CIN : std_logic := '0';

 	--Outputs
   signal LED_RESULT : std_logic_vector(1 downto 0);
   signal LED_COUT : std_logic;
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab5module PORT MAP (
          SW_A => SW_A,
          SW_B => SW_B,
          SW4_CIN => SW4_CIN,
          LED_RESULT => LED_RESULT,
          LED_COUT => LED_COUT
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
    
	 SW_A<="00";
	 SW_B<="00";
	 SW4_CIN<='0';
	 wait for 100 ns;
	 
	 SW_A <= "01"; 
	 SW_B <= "00"; 
	 SW4_CIN <= '0';
    wait for 100 ns;
	 
	 SW_A <= "01"; 
	 SW_B <= "01"; 
	 SW4_CIN <= '0';
    wait for 100 ns;
	 
	 SW_A <= "10"; 
	 SW_B <= "01"; 
	 SW4_CIN <= '0';
    wait for 100 ns;
	 
	 SW_A <= "10"; 
	 SW_B <= "01"; 
	 SW4_CIN <= '0';
    wait for 100 ns;
	 
	 SW_A <= "11"; 
	 SW_B <= "11"; 
	 SW4_CIN <= '0';
    wait for 100 ns;
	 
	 SW_A <= "11"; 
	 SW_B <= "11"; 
	 SW4_CIN <= '1';
    wait for 100 ns;

      wait;
   end process;

END;
