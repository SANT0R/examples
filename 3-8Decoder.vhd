

Library IEEE;
Use IEEE.std_logic_1164.all;

Entity E3_8decoder is
	Port(input:in std_logic_vector(2 downto 0);
	     output:out std_logic_vector(7 downto 0));

	end E3_8decoder;


	Architecture Behv of E3_8decoder is
		Begin
			output(0)<=not input(2) and (not input(1)) and (not (input(0)));
			output(1)<=not input(2) and (not input(1)) and (input(0));
			output(2)<=not input(2) and input(1) and (not (input(0)));
			output(3)<=not input(2) and input(1) and (input(0));
			output(4)<=input(2) and (not input(1)) and (not input(0));
			output(5)<=input(2) and (not input(1)) and (input(0));
			output(6)<=input(2) and input(1) and (not (input(0)));
			output(7)<=input(2) and input(1) and (input(0));

		end Behv;


