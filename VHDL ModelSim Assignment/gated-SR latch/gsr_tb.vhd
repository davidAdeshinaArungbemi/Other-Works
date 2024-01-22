library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity gsr_tb is
end;

architecture bench of gsr_tb is

  component gsr
  	port(S,R, E: in bit; Q,QN: out bit);
  end component;

  signal S,R, E: bit;
  signal Q,QN: bit;

begin

  uut: gsr port map ( S  => S,
                      R  => R,
                      E  => E,
                      Q  => Q,
                      QN => QN );

  stimulus: process
  begin
  
    -- Put initialisation code here

	E <= '0'; wait for 4 ns;
	E <= '1';
	S <= '1'; R <= '0'; wait for 4 ns;
	S <= '0'; R <= '1'; wait for 4 ns;
	S <= '0'; R <= '0'; wait for 4 ns;
	S <= '1'; R <= '1'; wait for 4 ns;
	
    -- Put test bench stimulus code here

    wait;
  end process;


end;