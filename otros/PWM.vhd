library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM is

Generic(
	Resolucion: Integer  := 240000;
	duty_cycle:		Integer	:= 28000

);

-- TiempoA    28000   180 grados
-- TiempoA

	Port(
	 Clk: in	Std_Logic;
	 PWM:	out	Std_Logic
	);
end PWM;

architecture Behavioral of PWM is

signal contador: integer range 0 to Resolucion-1;

begin
process(clk)
	begin
		if (rising_edge(Clk)) then
			if (contador=Resolucion-1) then
				contador<=0;
			else
				contador<= contador+1;
			end if;
	
			If (contador<duty_cycle) then
				PWM<='1';
			else
				PWM<='0';
			end if;
		end if;
end process;

end Behavioral;

