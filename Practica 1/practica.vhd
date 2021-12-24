library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 

entity ContadorFinal is
	
	port (  
		Clk: in  std_logic;  
		Enable: out STD_LOGIC_VECTOR (2 downto 0);
		sw1: in std_logic;
		Display: out STD_LOGIC_VECTOR (7 downto 0);
		con: in std_logic
	);  

end ContadorFinal;

architecture Behavioral of ContadorFinal is
--Declaración de señales

signal segundo:integer range 0 to 11999999;  
signal unidad: integer range 0 to 9;  
signal decenas: integer range 0 to 9;
signal centenas: integer range 0 to 9;  
signal bandera: std_logic_vector(2 downto 0); 
signal numero: integer  range 0 to 9;  
signal msegundo: integer range 0 to 119999; 

signal conteo: integer range 0 to (2*12000000);
signal flag:	std_logic;

begin

process(unidad, decenas, centenas, Clk)

begin
	if (rising_edge(Clk)) then
		if (sw1 = '0') then       --Boton de Reset!
			unidad<=0;
			decenas<=0;
			centenas<=0;
		end if;
		if (segundo =  11999999) then       --Ciclo de un 1 segundo para 
			segundo <=0;                    --Incrementar el contador en 1 dato
			
			
			
			if (unidad =0) then  --Unidades
				unidad <=6; 
			else  
				unidad <= unidad -1;  
			end if;  
			if(unidad=0 ) then  
				unidad <=6;  
			end if;  
			
			
		else
			segundo <= (segundo) +1;
		end if;  
	end if;
end process;

process (Clk, unidad, decenas, centenas)  
  
begin  
if (rising_edge(Clk))then             --Selección de que display mostrar
	if (msegundo= 69999)then            --a un poco mas de 100 FPS
		msegundo<= 0;  
		bandera<= not(bandera);  
		if( bandera = "000") then  
			numero <= unidad;  
			Enable <="110";
			bandera<="001";
		end if;
		if (bandera = "001") then
			numero <= decenas;  
			Enable <="101";
			bandera<="101";
		end if;
		if (bandera = "010") then
			numero <= centenas;
			Enable <= "011";
			bandera<="000";
		end if;
	else  
		msegundo <= msegundo + 1;
	end if;
  
  		case numero is  
		when 0=> Display <= "11000000";  
		when 1=> Display <= "11111001";  
		when 2=> Display <= "10100100";  
		when 3=> Display <= "10110000";  
		when 4=> Display <= "10011001";  
		when 5=> Display <= "10010010";  
		when 6=> Display <= "10000010";  
		when 7=> Display <= "11111000";  
		when 8=> Display <= "10000000";  
		when 9=> Display <= "10011000";  
		when others => Display <="11111111";  
		  
		end case;  
end if;  
end process;  

end Behavioral;