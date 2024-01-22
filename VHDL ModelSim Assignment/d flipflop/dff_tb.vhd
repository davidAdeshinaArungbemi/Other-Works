library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity dff_tb is
end;

architecture bench of dff_tb is

  component dff
  	port(D,CLR,PR,CLK: in bit; Q,QN: out bit);
  end component;

  signal D,CLR,PR,CLK: bit;
  signal Q,QN: bit;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: dff port map ( D   => D,
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
    wait for 5 ns;
    PR <= '1';
    wait for 5 ns;
    D <= '1';
    wait for 5ns;
    D <= '0';

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