library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity demult_1x8_tb is
end;

architecture bench of demult_1x8_tb is

  component demult_1x8
      Port ( I : in bit;
             S: in bit_vector(2 downto 0);
             O_0 : out bit;
             O_1 : out bit;
             O_2 : out bit;
             O_3 : out bit;
             O_4 : out bit;
             O_5 : out bit;
             O_6 : out bit;
             O_7 : out bit);
  end component;

  signal I: bit;
  signal S: bit_vector(2 downto 0);
  signal O_0: bit;
  signal O_1: bit;
  signal O_2: bit;
  signal O_3: bit;
  signal O_4: bit;
  signal O_5: bit;
  signal O_6: bit;
  signal O_7: bit;

begin

  uut: demult_1x8 port map ( I   => I,
                             S   => S,
                             O_0 => O_0,
                             O_1 => O_1,
                             O_2 => O_2,
                             O_3 => O_3,
                             O_4 => O_4,
                             O_5 => O_5,
                             O_6 => O_6,
                             O_7 => O_7 );

  stimulus: process
  begin
  
    -- Initialize Inputs
    I <= '0';
    S <= "000";
    
    -- Test Case 1
    I <= '1';
    S <= "000";
    wait for 10 ns;
    -- Check Outputs
    
    -- Test Case 2
    I <= '1';
    S <= "001";
    wait for 10 ns;
    -- Check Outputs
    
    -- Test Case 3
    I <= '1';
    S <= "010";
    wait for 10 ns;
    -- Check Outputs
    
    -- Test Case 4
    I <= '1';
    S <= "011";
    wait for 10 ns;
    -- Check Outputs
    
    wait;
  end process;

end bench;
