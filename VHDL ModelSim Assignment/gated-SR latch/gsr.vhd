entity gsr is
	port(S,R, E: in bit; Q,QN: out bit);
end gsr;

architecture gsr_ops of gsr is
begin
	process(E)
	begin
		if E = '1' then
			if S = '1' and R = '0' then Q <= '1'; QN <= '0';
			elsif S = '0' and R = '0' then Q <= '0'; QN <= '1';
			elsif S = '1' and R = '1' then Q <= '0'; QN <= '0';
			else Q <= S; QN <= R;
			end if;
		end if;
	end process;
end gsr_ops;
