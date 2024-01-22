entity mult_8x1 is
  Port ( I : in  bit_vector (7 downto 0);
         S : in  bit_vector (2 downto 0);
         O : out  bit);
end mult_8x1;

architecture mult_op of mult_8x1 is
begin
  process(I, S)
  begin
    case S is
      when "000" =>
        O <= I(0);
      when "001" =>
        O <= I(1);
      when "010" =>
        O <= I(2);
      when "011" =>
        O <= I(3);
      when "100" =>
        O <= I(4);
      when "101" =>
        O <= I(5);
      when "110" =>
        O <= I(6);
      when others =>
        O <= I(7);
    end case;
  end process;
end mult_op;