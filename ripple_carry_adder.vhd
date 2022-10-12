LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity ripple_carry_adder is
	port(

		c_in : in std_logic;
		x_vector : in std_logic_vector(7 downto 0);
		y_vector : in std_logic_vector(7 downto 0);
		
		s_vector : out std_logic_vector(7 downto 0);
		c_out : out std_logic

	);
end entity ripple_carry_adder;

architecture rtl of ripple_carry_adder is

	signal c0toc1, c1toc2, c2toc3, c3toc4, c4toc5, c5toc6, c6toc7 : std_logic;

	component full_adder is
		port(

			c_i : in std_logic;
			x_i : in std_logic;
			y_i : in std_logic;

			s_i : out std_logic;
			c_i1 : out std_logic

		);
	end component full_adder;

	begin

		f0 : entity work.full_adder(rtl)
				port map (c_in, x_vector(0), y_vector(0), s_vector(0), c0toc1);

		f1 : entity work.full_adder(rtl)
				port map (c0toc1, x_vector(1), y_vector(1, s_vector(1), c1toc2);

		f2 : entity work.full_adder(rtl)
				port map (c1toc2, x_vector(2), y_vector(2), s_vector(2), c2toc3);

		f3 : entity work.full_adder(rtl)
				port map (c2toc3, x_vector(3), y_vector(3), s_vector(3), c3toc4);
				
		f4 : entity work.full_adder(rtl)
				port map (cc3toc4, x_vector(4), y_vector(4), s_vector(4), c4toc5);
				
		f5 : entity work.full_adder(rtl)
				port map (c4toc5, x_vector(5), y_vector(5), s_vector(5), c5toc6);
				
		f6 : entity work.full_adder(rtl)
				port map (c5toc6, x_vector(6), y_vector(6), s_vector(6), c6toc7);
				
		f7 : entity work.full_adder(rtl)
				port map (c6toc7, x_vector(7), y_vector(7), s_vector(7), c_out);

end architecture rtl;