Algoritmo figuras
	Definir  tipoFigura Como Caracter;
	Definir tama�o	Como Entero;
	Definir tama�oHorizontal, tama�oVertical Como Entero;
	Definir orientacion Como Caracter;
	Definir simbolo Como Caracter;
	Definir fila, columna, posicion Como Entero;
	
	Repetir
		Escribir "Opciones disponibles: Cuadrado, Rectangulo, Linea, Salir";
		Leer tipoFigura;
		
		Segun tipoFigura Hacer
			Caso "Cuadrado":
				Escribir "ingrese el tama�o del lado del cuadrado";
				Leer tama�o;
				Escribir "Dibujo del cuadrado:";
				
				Para fila<-1 Hasta tama�o Con Paso 1 Hacer
					Para columna<-1 Hasta tama�o Con Paso 1 Hacer
						Si fila = 1 O fila = tama�o O columna = 1 O columna = tama�o Entonces
							Escribir "+" Sin Saltar;
						SiNo
							Escribir " " Sin Saltar;
						FinSi
					Fin Para
					Escribir "";
				Fin Para
				
			Caso "Rectangulo":
				Escribir "Ingrese el tama�o horizontal del rect�ngulo:";
                Leer tama�oHorizontal;
                Escribir "Ingrese el tama�o vertical del rect�ngulo:";
                Leer tama�oVertical;
                Escribir "Dibujo del rect�ngulo:";
                
                Para fila Desde 1 Hasta tama�oVertical Con Paso 1
                    Para columna Desde 1 Hasta tama�oHorizontal Con Paso 1
                        Si fila = 1 O fila = tama�oVertical O columna = 1 O columna = tama�oHorizontal Entonces
                            Escribir "+" Sin Saltar;
                        Sino
                            Escribir " " Sin Saltar;
                        FinSi
                    FinPara
                    Escribir ""; 
                FinPara
				
            Caso "Linea":
                Escribir "Ingrese el tama�o de la l�nea:";
                Leer tama�o;
                Escribir "Ingrese la orientaci�n (H para horizontal, V para vertical):";
                Leer orientacion;
                Escribir "Ingrese el s�mbolo para la l�nea:";
                Leer simbolo;
                Escribir "Dibujo de la l�nea:";
                
                Segun orientaci�n Hacer
                    Caso "H":
                        Para posici�n Desde 1 Hasta tama�o Con Paso 1
                            Escribir simbolo Sin Saltar;
                        FinPara
                        Escribir ""; 
                        
                    Caso "V":
                        Para posici�n Desde 1 Hasta tama�o Con Paso 1
                            Escribir simbolo;
                        FinPara
                FinSegun
				
            Caso "Salir":
                Escribir "Programa terminado.";
				
            De Otro Modo:
                Escribir "Opci�n no v�lida. Intente nuevamente.";
        FinSegun

	Hasta Que tipoFigura = "Salir"
FinAlgoritmo
