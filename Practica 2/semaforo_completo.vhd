library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity semaforo is
	Port(
		Clk: in std_logic;
		Verde,Amarillo,Rojo:	out std_logic
	);
end semaforo;

architecture Behavioral of semaforo is

Type FSM is (EstadoVerde, EstadoAmarillo, EstadoRojo);

Signal Estado_Semaforo: FSM;
Signal Conteo: integer range 0 to (2*12000000);

begin

	Process(Clk)
		Begin
		If (rising_edge(clk)) then
			Case Estado_Semaforo is
				When Estadoverde =>
					
					If (Conteo < 2*11999999) then
						Conteo <= Conteo + 1;
						Verde <= '1';
					else
						Conteo <= 0;
						Verde <= '0';
						Estado_Semaforo <= EstadoAmarillo;
					End if;
					
				When EstadoAmarillo =>
					
					If (Conteo < 5999999) then
						Conteo <= Conteo + 1;
						Amarillo <= '1';
					elsif(Conteo > 5999998 and Conteo < 12999999) then
							Amarillo <= '0';
						Conteo <= Conteo +1;
					elsif(Conteo > 12999998 and Conteo < 17999999) then
						Amarillo <= '0';
						Conteo <= Conteo +1;
					elsif(Conteo > 17999998 and Conteo < 23999999) then
						Amarillo <= '1';
						Conteo <= Conteo +1;
					else
						Conteo <= 0;
						Amarillo <= '0';
						Estado_Semaforo <= EstadoRojo;
					End if;
					
				When EstadoRojo =>
					If (Conteo < 2*11999999) then
						Conteo <= Conteo + 1;
						Rojo <= '1';
					else
						Conteo <= 0;
						Rojo <= '0';
						Estado_Semaforo <= EstadoVerde;
					End if;
				When Others =>
					Estado_Semaforo <= EstadoVerde;
			End Case;
		End if;
	End process;


end Behavioral;

