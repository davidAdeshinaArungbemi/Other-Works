library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity dec_2x4_tb is
end;

architecture bench of dec_2x4_tb is

  component dec_2x4
      Port (
          I : in  bit_vector (1 downto 0);
          O : out  bit_vector (3 downto 0)
      );
  end component;

  signal I: bit_vector (1 downto 0);
  signal O: bit_vector (3 downto 0);

begin

  uut: dec_2x4 port map ( I => I,
                          O => O );

  stimulus: process
  begin

    -- Test Case 1
    I <= "00";
    wait for 10 ns;

    -- Test Case 2
    I <= "01";
    wait for 10 ns;

    -- Test Case 3
    I <= "10";
    wait for 10 ns;

    -- Test Case 4
    I <= "11";
    wait for 10 ns;

    wait;
  end process;

end;
