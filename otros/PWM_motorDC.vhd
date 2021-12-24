
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM is
Generic(
	Resolucion: Natural  := 8
);

Port(
	Clk:		in		std_logic;
	Pwm:		out	std_logic;
	periodo:	in		std_logic_vector(7 downto 0);
	Sw:	   in		std_logic;
	CG:	   out	std_logic_vector(1 downto 0)
);
end PWM;

architecture Behavioral of PWM is

signal contador: integer range 0 to (2**Resolucion -1);
signal duty_cycle:	integer range 0 to 255;

begin

duty_cycle <= (to_integer(unsigned(periodo)));
	process(clk)
		begin
			if(rising_edge(clk)) then
					contador <= contador +1;
					if contador = (2**Resolucion -1) then
						contador <= 0;
					elsif contador < duty_cycle then
						Pwm <= '1';
					else
						Pwm <= '0';
					end if;
					
					if Sw = '0' then
						CG <= "01";
					else
						CG <= "10";
					end if;
					
					
			end if;
	end process;

end Behavioral;

