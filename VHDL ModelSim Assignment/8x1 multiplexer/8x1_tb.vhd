library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mult_8x1_tb is
end mult_8x1_tb;

architecture tb_arch of mult_8x1_tb is
  signal I : bit_vector(7 downto 0) := "00000000";
  signal S : bit_vector(2 downto 0) := "000";
  signal O : bit;

  component mult_8x1
    Port ( I : in  bit_vector(7 downto 0);
           S : in  bit_vector(2 downto 0);
           O : out bit);
  end component;

begin
  UUT: mult_8x1 port map (I, S, O);

  process
  begin
    -- Test case 1
    I <= "10101010";
    S <= "001";
    wait for 10 ns;

    -- Test case 2
    I <= "11001100";
    S <= "100";
    wait for 10 ns;

    wait;
  end process;

end tb_arch;
