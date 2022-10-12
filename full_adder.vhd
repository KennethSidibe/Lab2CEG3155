LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity full_adder is
	port(

		c_i : in std_logic;
		x_i : in std_logic;
		y_i : in std_logic;

		s_i : out std_logic;
		c_i1 : out std_logic

	);
end entity full_adder;

architecture rtl of full_adder is

	signal XOR1toXOR2 : std_logic;
	signal XOR1toAND2 : std_logic;
	signal AND1toOR : std_logic;
	signal AND2toOR : std_logic;

	component or_gate
		port(

			x_or : in std_logic;
			y_or : in std_logic;

			z_or : out std_logic

		);
	end component or_gate;

	component and_gate
		port(

			x_and : in std_logic;
			y_and : in std_logic;

			z_and : out std_logic

		);
	end component and_gate;

	component xor_gate
		port(

			x_xor : in std_logic;
			y_xor : in std_logic;

			z_xor : out std_logic

		);
	end component xor_gate;

	begin

		or_1  : entity work.or_gate(rtl)
					port(AND2toOR, AND1toOR, c_i1);

		and_1 : entity work.and_gate(rtl)
					port(y_i, x_i, AND1toOR);

		and_2 : entity work.and_gate(rtl)
					port(c_i, XOR1toAND2, AND2toOR);

		xor_1 : entity work.and_gate(rtl)
					port(x_i, y_i, XOR1toAND2);

		xor_2 : entity work.and_gate(rtl)
					port(c_i, XOR1toXOR2, s_i);

end architecture rtl;