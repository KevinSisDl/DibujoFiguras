Algoritmo figuras
	Definir  tipoFigura Como Caracter;
	Definir tamaño	Como Entero;
	Definir tamañoHorizontal, tamañoVertical Como Entero;
	Definir orientacion Como Caracter;
	Definir simbolo Como Caracter;
	Definir fila, columna, posicion Como Entero;
	
	Repetir
		Escribir "Opciones disponibles: Cuadrado, Rectangulo, Linea, Salir";
		Leer tipoFigura;
		
		Segun tipoFigura Hacer
			Caso "Cuadrado":
				Escribir "ingrese el tamaño del lado del cuadrado";
				Leer tamaño;
				Escribir "Dibujo del cuadrado:";
				
				Para fila<-1 Hasta tamaño Con Paso 1 Hacer
					Para columna<-1 Hasta tamaño Con Paso 1 Hacer
						Si fila = 1 O fila = tamaño O columna = 1 O columna = tamaño Entonces
							Escribir "+" Sin Saltar;
						SiNo
							Escribir " " Sin Saltar;
						FinSi
					Fin Para
					Escribir "";
				Fin Para
				
			Caso "Rectangulo":
				Escribir "Ingrese el tamaño horizontal del rectángulo:";
                Leer tamañoHorizontal;
                Escribir "Ingrese el tamaño vertical del rectángulo:";
                Leer tamañoVertical;
                Escribir "Dibujo del rectángulo:";
                
                Para fila Desde 1 Hasta tamañoVertical Con Paso 1
                    Para columna Desde 1 Hasta tamañoHorizontal Con Paso 1
                        Si fila = 1 O fila = tamañoVertical O columna = 1 O columna = tamañoHorizontal Entonces
                            Escribir "+" Sin Saltar;
                        Sino
                            Escribir " " Sin Saltar;
                        FinSi
                    FinPara
                    Escribir ""; 
                FinPara
				
            Caso "Linea":
                Escribir "Ingrese el tamaño de la línea:";
                Leer tamaño;
                Escribir "Ingrese la orientación (H para horizontal, V para vertical):";
                Leer orientacion;
                Escribir "Ingrese el símbolo para la línea:";
                Leer simbolo;
                Escribir "Dibujo de la línea:";
                
                Segun orientación Hacer
                    Caso "H":
                        Para posición Desde 1 Hasta tamaño Con Paso 1
                            Escribir simbolo Sin Saltar;
                        FinPara
                        Escribir ""; 
                        
                    Caso "V":
                        Para posición Desde 1 Hasta tamaño Con Paso 1
                            Escribir simbolo;
                        FinPara
                FinSegun
				
            Caso "Salir":
                Escribir "Programa terminado.";
				
            De Otro Modo:
                Escribir "Opción no válida. Intente nuevamente.";
        FinSegun

	Hasta Que tipoFigura = "Salir"
FinAlgoritmo
