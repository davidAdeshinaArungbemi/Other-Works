library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity jk_tb is
end;

architecture bench of jk_tb is

  component jk
  	port(J,K,CLR,PR,CLK: in bit; Q,QN: out bit);
  end component;

  signal J,K,CLR,PR,CLK: bit;
  signal Q,QN: bit;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: jk port map ( J   => J,
                     K   => K,
                     CLR => CLR,
                     PR  => PR,
                     CLK => CLK,
                     Q   => Q,
                     QN  => QN );

  stimulus: process
  begin
  
    -- Put initialisation code here

    CLR <= '1';
    wait for 5 ns;
    CLR <= '0';
    wait for 1 ns;
    PR <= '1';
    wait for 1 ns;

	J <= '0'; K<= '0';
	wait for 5 ns;
	J <= '0';K <= '1';
	wait for 10 ns;
	J <= '1'; K <= '0';
	wait for 15 ns;
	J <= '1'; K <= '1';

    -- Put test bench stimulus code here

    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      CLK <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;