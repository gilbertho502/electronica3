library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity semaforo is
	Port(
		Clk: 							in std_logic;
		Verde, Amarillo, Rojo:	out std_logic;
		Display: 					out STD_LOGIC_VECTOR (7 downto 0);
		Enable:						out STD_LOGIC_VECTOR (2 downto 0)
	);
end semaforo;

-------------------------------------------------------------------------------

architecture Behavioral of semaforo is

Type FSM is (EstadoVerde, EstadoAmarillo, EstadoRojo);
Type FSM1 is (EstadoVerde1, EstadoAmarillo1, EstadoRojo1);
signal Estado_Semaforo: FSM;
signal Estado_Semaforo1: FSM1;
signal segundo:	integer range 0 to 11999999;
signal Conteo: 	integer range 0 to (13*12000000);
signal numero: 	integer  range 0 to 9; 
signal unidad: 	integer range 0 to 9;
signal decenas: 	integer range 0 to 9;
signal centenas: 	integer range 0 to 9;
signal msegundo: 	integer range 0 to 11999999;
signal bandera: 	std_logic_vector(2 downto 0); 

signal flag:		std_logic;

---------------------------------------------------------------------------------------------

begin
	Process(Clk)
		Begin
		If (rising_edge(clk)) then
			Case Estado_Semaforo is
				When Estadoverde =>
					
					If (Conteo < 8*11999999) then
						Conteo <= Conteo + 1;
						Verde <= '1';
					else
						Conteo <= 0;
						Verde <= '0';
						Estado_Semaforo <= EstadoAmarillo;
					End if;
					
				When EstadoAmarillo =>
					
					If (Conteo < 10999999) then
						Conteo <= Conteo + 1;
						Amarillo <= '1';
						Verde <= '1';
						Rojo <= '1';
					elsif(Conteo > 5999998 and Conteo < 12999999) then
							Amarillo <= '0';
							Verde <= '0';
							Rojo <= '0';
						Conteo <= Conteo +1;
					elsif(Conteo > 12999998 and Conteo < 17999999) then
						Amarillo <= '0';
						Verde <= '0';
						Rojo <= '0';						
						Conteo <= Conteo +1;
					elsif(Conteo > 17999998 and Conteo < 55999999) then
						Amarillo <= '0';
						Verde <= '1';
						Rojo <= '1';
						Conteo <= Conteo +1;
					else
						Conteo <= 0;
						Amarillo <= '0';
						Verde <= '0';
						Rojo <= '0';
						Estado_Semaforo <= EstadoRojo;
					End if;
					
				When EstadoRojo =>
					If (Conteo < 4*11999999) then
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
-------------------------------------------------------------------------------------------------------------------------------

process(unidad, decenas, centenas,  Clk)

begin
if (rising_edge(Clk)) then
	
		Case Estado_Semaforo1 is
		
			When EstadoVerde1 =>
		
		
				if (segundo =  11999999) then       
					segundo <=0;                    
						if (unidad =0) then  
						unidad <=6; 
						else  
						unidad <= unidad -1;  
						end if;  
					if(unidad=0) then  
					Estado_Semaforo1 <= EstadoAmarillo1;
					end if; 
					else
					segundo <= (segundo) +1;
				end if;  
		
			When EstadoAmarillo1 =>

					if (segundo =  11999999) then  
						segundo <=0;                    
						if (unidad =0) then  
							unidad <=4; 
						else  
							unidad <= unidad -1;  
						end if;  
					if(unidad=0) then  
						Estado_Semaforo1 <= EstadoRojo1;
					end if; 
					else
					segundo <= (segundo) +1;
					end if;  
							
			When EstadoRojo1 =>

				if (segundo =  11999999) then        
					segundo <=0;                    
					if (unidad =0) then
						unidad <=3; 
					else  
						unidad <= unidad -1;  
					end if;  
				if(unidad=0) then  
					Estado_Semaforo1 <= EstadoVerde1;
				end if; 
				else
					segundo <= (segundo) +1;
				end if;  	
			When Others =>
					Estado_Semaforo1 <= EstadoVerde1;
		End Case;
	End if;
--	End if;
End Process;

-------------------------------------------------------------------------------------------------------------------------------

process (Clk, unidad, decenas, centenas)  
  
begin  
if (rising_edge(Clk))then             
	if (msegundo= 49999)then           
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
		when 0=> Display <= "00111111";  
		when 1=> Display <= "00000110"; 
		when 2=> Display <= "01011011"; 
		when 3=> Display <= "01001111";
		when 4=> Display <= "01100110"; 
		when 5=> Display <= "01101101"; 
		when 6=> Display <= "01111101"; 
		when 7=> Display <= "00000011"; 
		when 8=> Display <= "01111111"; 
		when 9=> Display <= "01100111"; 
		when others => Display <= "00000000";
		  
		end case;  
end if;  
end process;  

end Behavioral;

				