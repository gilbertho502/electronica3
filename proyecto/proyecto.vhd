----------------------------------------------------------------------------------
-- Company: USAC
-- Engineer: Gilberto Misrain Vicente Yoc

-- Module Name:    proyecto - Behavioral 
-- Project Name: 	 Proyecto Letrero POV
-- Target Devices: Elbert V2
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity proyecto is
	Port(
		Clk: 							in std_logic;
		hall:							in STD_LOGIC;
		L0, L1, L2, L3, L4:		out STD_LOGIC;
		L5, L6, L7, L8, L9:		out STD_LOGIC;
		e1, e2, e3:					out STD_LOGIC
	);
end proyecto;

-------------------------------------------------------------------------------

architecture Behavioral of proyecto is

Type FSM is (frase1, frase2, frase3, frase4, frase5, frase6, frase7, frase8, frase9, frase10, frase11, frase12, frase13, frase14, frase15, frase16, frase17, frase18, frase19, frase20);
signal Estado_Letra: FSM;


signal Conteo: 	integer range 0 to (4*12000000);

begin
	Process(Clk)
		Begin
		If (rising_edge(clk)) then
			Case Estado_Letra is
			
				When frase1 =>
-------------------I----------------------------------------				
					If (Conteo < 009999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';	
						
					elsif(Conteo > 009998 and Conteo < 039999 and hall ='1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 039998 and Conteo < 069999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 069998 and Conteo < 99999 and hall ='1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 099998 and Conteo < 129999 and hall ='1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
			
--------------Formando la letra n-----------------------------------------------------------------------------------------------					

					elsif (Conteo > 129998 and Conteo < 139999 and hall ='1') then
						
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						
						Conteo <= Conteo + 1;
						
					elsif (Conteo > 139998 and Conteo < 169999 and hall ='1') then
						
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						
						Conteo <= Conteo + 1;
						
					elsif(Conteo > 169998 and Conteo < 199999 and hall ='1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 199998 and Conteo < 229999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '0';
						L3 <= '0';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 229998 and Conteo < 259999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '0';
						L3 <= '0';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 259998 and Conteo < 289999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
					
---------------- G-----------------------------------------------------------------------------------------------					
					elsif(Conteo > 289998 and Conteo < 299999 and hall ='1') then
						
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo + 1;
						
					elsif(Conteo > 299998 and Conteo < 329999 and hall ='1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 329998 and Conteo < 359999 and hall ='1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
											
					elsif(Conteo > 359998 and Conteo < 389999 and hall ='1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 389998 and Conteo < 419999 and hall ='1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 419998 and Conteo < 449999 and hall ='1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
	
-------------------Formando la letra E----------------------------------------------------------------------------------------------------					
				
					elsif (Conteo > 449998 and Conteo < 459999 and hall ='1') then
						
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo + 1;
						
					elsif (Conteo > 459998 and Conteo < 489999 and hall ='1') then
						
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo + 1;

					elsif(Conteo > 489998 and Conteo < 519999 and hall ='1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
									
					elsif(Conteo > 519998 and Conteo < 549999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
					elsif(Conteo > 549998 and Conteo < 579999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;

					elsif(Conteo > 579998 and Conteo < 609999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					else	
						Conteo <= 0;
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';		

					   L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						
						Estado_Letra <= frase2;
					End if;								
		

				When frase2 => 
				If (Conteo < 4*11999999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
	
					else
						Conteo <= 0;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
						
						Estado_Letra <= frase3;
					End if;
		
-----------------NUEVA PALABRA-------------------------------------------------------------------------------------
----------------------------U--------------------------------------------------------------------------------------	

				When frase3 => 
				If (Conteo < 009999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
						
					elsif(Conteo > 009998 and Conteo < 039999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 39998 and Conteo < 69999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 69998 and Conteo < 99999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 99998 and Conteo < 129999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 129998 and Conteo < 159999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;						
						
--------------------------S---------------------------------------------------------------------------------------						
					elsif(Conteo > 159998 and Conteo < 169999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 169998 and Conteo < 199999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 199998 and Conteo < 229999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 229998 and Conteo < 259999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 259998 and Conteo < 289999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 289998 and Conteo < 319999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
--------------------------A-------------------------------------------------------------------------------------------						
					elsif(Conteo > 319998 and Conteo < 329999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 329998 and Conteo < 359999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 359998 and Conteo < 389999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 389998 and Conteo < 419999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 419998 and Conteo < 449999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 449998 and Conteo < 479999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
-------------------C---------------------------------------------------------------------------------------------------
					elsif(Conteo > 479998 and Conteo < 489999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
				
					elsif(Conteo > 489998 and Conteo < 519999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 519998 and Conteo < 549999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 549998 and Conteo < 579999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 579998 and Conteo < 609999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 609998 and Conteo < 639999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;

					else	
						Conteo <= 0;
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';		

					   L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';	
						Estado_Letra <= frase4;
					End if;					
----------------------------------------------------------------------------------------------------------------------					
				When frase4 => 
				If (Conteo < 4*11999999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';										
						
					else
						Conteo <= 0;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
						
						Estado_Letra <= frase5;
					End if;
				
				When frase5 =>
				-------------------Nueva Figura---------------------------------------------------------------------------------------
					If(Conteo < 209999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 209998 and Conteo < 239999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 239998 and Conteo < 269999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 269998 and Conteo < 299999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 299998 and Conteo < 329999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 329998 and Conteo < 359999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;		
						
					elsif(Conteo > 359998 and Conteo < 639999 and hall = '1') then
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;	
						
					else

						Conteo <= 0;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
						
						Estado_Letra <= frase6;
					End if;
				
				When frase6 =>
				
					If (Conteo < 4*11999999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '0';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';										
						
					else
						Conteo <= 0;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
						
						Estado_Letra <= frase7;
					End if;
					
				When frase7 =>	
--------------------------------2------------------------------------------------------------------		
					If(Conteo < 009999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						---dos segmentos-----------
					elsif(Conteo > 9998 and Conteo < 69999 and hall = '1') then
						e1 <= '0';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	

					elsif(Conteo > 69998 and Conteo < 99999 and hall = '1') then
						e1 <= '0';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;						
					-------------ultimos dos segmentos-------------------------------					
					elsif(Conteo > 99998 and Conteo < 159999 and hall = '1') then
						e1 <= '0';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						
------------------------------0-------------------------------

					elsif(Conteo > 159998 and Conteo < 169999 and hall = '1') then
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;					

					elsif(Conteo > 169998 and Conteo < 229999 and hall = '1') then
						e1 <= '0';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 229998 and Conteo < 259999 and hall = '1') then
						e1 <= '0';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 259998 and Conteo < 319999 and hall = '1') then
						e1 <= '0';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;					
----------------------------------1-------------------------------------------------

					elsif(Conteo > 319998 and Conteo < 329999 and hall = '1') then
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;	
						

					elsif(Conteo > 329998 and Conteo < 389999 and hall = '1') then
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 389998 and Conteo < 449999 and hall = '1') then
						e1 <= '0';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 449998 and Conteo < 479999 and hall = '1') then
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;	
						

----------------------------9--------------------------------------
					elsif(Conteo > 479998 and Conteo < 489999 and hall = '1') then
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;	
						

					elsif(Conteo > 489998 and Conteo < 519999 and hall = '1') then
						e1 <= '0';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 519998 and Conteo < 549999 and hall = '1') then
						e1 <= '0';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 549998 and Conteo < 579999 and hall = '1') then
						e1 <= '0';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 579998 and Conteo < 609999 and hall = '1') then
						e1 <= '0';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 609998 and Conteo < 639999 and hall = '1') then
						e1 <= '0';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
					else
						Conteo <= 0;	
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Estado_Letra <= frase8;
					End if;
			
				When frase8 =>
				
					If (Conteo < 4*11999999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '0';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';										
						
					else
						Conteo <= 0;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
						
						Estado_Letra <= frase9;
					End if;

				When frase9 =>
-------------------------L--------------------------------------------------------
					If(Conteo < 009999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 9998 and Conteo < 69999 and hall = '1') then
						e1 <= '1';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	

					elsif(Conteo > 69998 and Conteo < 99999 and hall = '1') then
						e1 <= '1';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;						
					
					elsif(Conteo > 99998 and Conteo < 159999 and hall = '1') then
						e1 <= '1';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						
------------------------------A-------------------------------

					elsif(Conteo > 159998 and Conteo < 169999 and hall = '1') then
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;	
						

					elsif(Conteo > 169998 and Conteo < 199999 and hall = '1') then
						e1 <= '1';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 199998 and Conteo < 229999 and hall = '1') then
						e1 <= '1';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 229998 and Conteo < 259999 and hall = '1') then
						e1 <= '1';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 259998 and Conteo < 289999 and hall = '1') then
						e1 <= '1';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 289998 and Conteo < 319999 and hall = '1') then
						e1 <= '1';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '1';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						
						
----------------------------------B-------------------------------------------------

					elsif(Conteo > 319998 and Conteo < 329999 and hall = '1') then
						e1 <= '1';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;	
						

					elsif(Conteo > 329998 and Conteo < 389999 and hall = '1') then
						e1 <= '1';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						
						
					elsif(Conteo > 389998 and Conteo < 449999 and hall = '1') then
						e1 <= '1';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '0';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 449998 and Conteo < 479999 and hall = '1') then
						e1 <= '1';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						

----------------------------3--------------------------------------
					elsif(Conteo > 479998 and Conteo < 489999 and hall = '1') then
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;	
						

					elsif(Conteo > 489998 and Conteo < 579999 and hall = '1') then
						e1 <= '1';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;						
					elsif(Conteo > 579998 and Conteo < 609999 and hall = '1') then
						e1 <= '1';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 609998 and Conteo < 639999 and hall = '1') then
						e1 <= '1';
						e2 <= '1';
						e3 <= '1';
						 
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
					else		
						Conteo <= 0;	
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';
						 
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Estado_Letra <= frase10;
					End if;
				
				When frase10 =>
				
					If (Conteo < 4*11999999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';										
					else
						Conteo <= 0;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
						
						Estado_Letra <= frase11;
					End if;
					
				When frase11 =>
------------------------------G----------------------------------------------
				If (Conteo < 009999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
						
					elsif(Conteo > 009998 and Conteo < 039999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 39998 and Conteo < 69999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 69998 and Conteo < 99999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 99998 and Conteo < 129999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 129998 and Conteo < 159999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;						
						
--------------------------I---------------------------------------------------------------------------------------						
					elsif(Conteo > 159998 and Conteo < 169999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 169998 and Conteo < 199999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 199998 and Conteo < 229999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 229998 and Conteo < 259999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 259998 and Conteo < 289999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 289998 and Conteo < 319999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
--------------------------L-------------------------------------------------------------------------------------------						
					elsif(Conteo > 319998 and Conteo < 329999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 329998 and Conteo < 359999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 359998 and Conteo < 389999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 389998 and Conteo < 419999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 419998 and Conteo < 449999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 449998 and Conteo < 479999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
-------------------B---------------------------------------------------------------------------------------------------
					elsif(Conteo > 479998 and Conteo < 489999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
				
					elsif(Conteo > 489998 and Conteo < 519999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 519998 and Conteo < 549999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 549998 and Conteo < 579999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 579998 and Conteo < 609999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 609998 and Conteo < 639999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;

					else	
						Conteo <= 0;
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';		

					   L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';	
						Estado_Letra <= frase12;
					End if;
			
				When frase12 =>
					If (Conteo < 4*11999999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';										
						
					else
						Conteo <= 0;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
						
						Estado_Letra <= frase13;
					End if;

				When frase13 =>
				
--------------------------GASP----------------------------------------
----------------G--------------
				If (Conteo < 009999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
						
					elsif(Conteo > 009998 and Conteo < 039999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 39998 and Conteo < 69999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 69998 and Conteo < 99999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 99998 and Conteo < 129999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 129998 and Conteo < 159999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;						
						
--------------------------A---------------------------------------------------------------------------------------						
					elsif(Conteo > 159998 and Conteo < 169999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 169998 and Conteo < 199999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 199998 and Conteo < 229999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 229998 and Conteo < 259999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 259998 and Conteo < 289999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 289998 and Conteo < 319999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
--------------------------S-------------------------------------------------------------------------------------------						
					elsif(Conteo > 319998 and Conteo < 329999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 329998 and Conteo < 359999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 359998 and Conteo < 389999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 389998 and Conteo < 419999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 419998 and Conteo < 449999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 449998 and Conteo < 479999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
-------------------P---------------------------------------------------------------------------------------------------
					elsif(Conteo > 479998 and Conteo < 489999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
				
					elsif(Conteo > 489998 and Conteo < 519999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 519998 and Conteo < 549999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 549998 and Conteo < 579999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '0';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 579998 and Conteo < 609999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '1';
						L2 <= '1';
						L3 <= '0';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 609998 and Conteo < 639999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;

					else	
						Conteo <= 0;
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';		

					   L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';	
						Estado_Letra <= frase14;
					End if;
			
				When frase14 =>
						If (Conteo < 4*11999999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '0'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';										
						
					else
						Conteo <= 0;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '0'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
						
						Estado_Letra <= frase15;
					End if;
		
				When frase15 =>
--------------------------CHIV----------------------------------------
----------------C--------------
				If (Conteo < 009999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
						
					elsif(Conteo > 009998 and Conteo < 039999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 39998 and Conteo < 69999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 69998 and Conteo < 159999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
										
						
--------------------------H---------------------------------------------------------------------------------------						
					elsif(Conteo > 159998 and Conteo < 169999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 169998 and Conteo < 199999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
					elsif(Conteo > 199998 and Conteo < 289999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 289998 and Conteo < 319999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
--------------------------I-------------------------------------------------------------------------------------------						
					elsif(Conteo > 319998 and Conteo < 329999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 329998 and Conteo < 359999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 359998 and Conteo < 389999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 389998 and Conteo < 419999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 419998 and Conteo < 449999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 449998 and Conteo < 479999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
-----------------------------V-----------------------------------------------------------------------------------------
					elsif(Conteo > 479998 and Conteo < 489999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
				
					elsif(Conteo > 489998 and Conteo < 519999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 519998 and Conteo < 549999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 549998 and Conteo < 579999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 579998 and Conteo < 609999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 609998 and Conteo < 639999 and hall = '1') then
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;

					else	
						Conteo <= 0;
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';		

					   L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';	
						Estado_Letra <= frase16;
					End if;				
					
				When frase16 =>
						If (Conteo < 4*11999999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '0';
						L8 <= '1';
						L9 <= '1';										
						
					else
						Conteo <= 0;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
						
						Estado_Letra <= frase17;
					End if;
				
				When frase17 =>
--------------------------VEL = ----------------------------------------
----------------V--------------
				If (Conteo < 009999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
						
					elsif(Conteo > 009998 and Conteo < 039999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 39998 and Conteo < 69999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
					elsif(Conteo > 69998 and Conteo < 99999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 99998 and Conteo < 129999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 129998 and Conteo < 159999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;						
					
--------------------------E---------------------------------------------------------------------------------------						
					elsif(Conteo > 159998 and Conteo < 169999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 169998 and Conteo < 199999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
					
					elsif(Conteo > 199998 and Conteo < 229999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 229998 and Conteo < 319999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
--------------------------L-------------------------------------------------------------------------------------------						
					elsif(Conteo > 319998 and Conteo < 329999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 329998 and Conteo < 359999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 359998 and Conteo < 389999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 389998 and Conteo < 419999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 419998 and Conteo < 449999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 449998 and Conteo < 479999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
						
-----------------------------=-----------------------------------------------------------------------------------------
					elsif(Conteo > 479998 and Conteo < 489999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
				
					elsif(Conteo > 489998 and Conteo < 639999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '0';
						L3 <= '0';
						L4 <= '1';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;	
	
					else	
						Conteo <= 0;
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';		

					   L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';	
						Estado_Letra <= frase18;
					End if;				
	
				When frase18 =>
				
					If (Conteo < 4*11999999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '1';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '1';										
						
					else
						Conteo <= 0;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
						
						Estado_Letra <= frase19;
					End if;
				
				When frase19 =>
----------------------------Nueva FRASE---------------
--------------------15.5 ----------------------			
				If (Conteo < 009999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';						
						
					elsif(Conteo > 009998 and Conteo < 069999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
					elsif(Conteo > 69998 and Conteo < 129999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;						
						
					elsif(Conteo > 129998 and Conteo < 159999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;											
--------------------------5---------------------------------------------------------------------------------------						
					elsif(Conteo > 159998 and Conteo < 169999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 169998 and Conteo < 199999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;
											
					elsif(Conteo > 199998 and Conteo < 289999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 289998 and Conteo < 319999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;					
--------------------------.-------------------------------------------------------------------------------------------						
					elsif(Conteo > 319998 and Conteo < 329999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 329998 and Conteo < 389999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
					elsif(Conteo > 389998 and Conteo < 449999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						
					elsif(Conteo > 449998 and Conteo < 479999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
						
-----------------------------5-----------------------------------------------------------------------------------------
					elsif(Conteo > 479998 and Conteo < 489999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';
						Conteo <= Conteo +1;
				
					elsif(Conteo > 489998 and Conteo < 519999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '0';
						L3 <= '0';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
						
						elsif(Conteo > 519998 and Conteo < 609999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
	
					elsif(Conteo > 609998 and Conteo < 639999 and hall = '1') then
						e1 <= '0';--azul
						e2 <= '1';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '0';
						L1 <= '0';
						L2 <= '1';
						L3 <= '1';
						L4 <= '0';
						L5 <= '0';
						L6 <= '0'; 
						L7 <= '0';
						L8 <= '0';
						L9 <= '0';
						Conteo <= Conteo +1;	
	
					else	
						Conteo <= 0;
						e1 <= '0';
						e2 <= '0';
						e3 <= '0';		

					   L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';	
						Estado_Letra <= frase20;
					End if;				

				When frase20 =>
				
					If (Conteo < 4*11999999 and hall ='1') then
						Conteo <= Conteo + 1;
						e1 <= '1';--azul
						e2 <= '1';--verde 
 						e3 <= '1';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '0';										
						
					else
						Conteo <= 0;
						e1 <= '0';--azul
						e2 <= '0';--verde 
 						e3 <= '0';--rojo
						
						L0 <= '1';
						L1 <= '1';
						L2 <= '1';
						L3 <= '1';
						L4 <= '1';
						L5 <= '1';
						L6 <= '1'; 
						L7 <= '1';
						L8 <= '1';
						L9 <= '1';											
			
						Estado_Letra <= frase1;				
					End if;
					
				When Others =>
					Estado_Letra <= frase1;
			End Case;				
		End if;
	End process;
End Behavioral;