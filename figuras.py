def main():
    while True:
        print("Opciones disponibles: Cuadrado, Rectangulo, Linea, Salir")
        tipoFigura = input("Ingrese la figura: ").strip()

        match tipoFigura:
            case "Cuadrado":
                tamaño = int(input("Ingrese el tamaño del lado del cuadrado: "))
                print("Dibujo del cuadrado:")
                for fila in range(1, tamaño + 1):
                    for columna in range(1, tamaño + 1):
                        if fila == 1 or fila == tamaño or columna == 1 or columna == tamaño:
                            print("+", end="")
                        else:
                            print(" ", end="")
                    print()
                
            case "Rectangulo":
                tamaño_horizontal = int(input("Ingrese el tamaño horizontal del rectángulo: "))
                tamaño_vertical = int(input("Ingrese el tamaño vertical del rectángulo: "))
                print("Dibujo del rectángulo:")
                for fila in range(1, tamaño_vertical + 1):
                    for columna in range(1, tamaño_horizontal + 1):
                        if fila == 1 or fila == tamaño_vertical or columna == 1 or columna == tamaño_horizontal:
                            print("+", end="")
                        else:
                            print(" ", end="")
                    print()

            case "Linea":
                tamaño = int(input("Ingrese el tamaño de la línea: "))
                orientacion = input("Ingrese la orientación (H para horizontal, V para vertical): ").strip().upper()
                simbolo = input("Ingrese el símbolo para la línea: ").strip()
                print("Dibujo de la línea:")
                
                match orientacion:
                    case "H":
                        for posicion in range(1, tamaño + 1):
                            print(simbolo, end="")
                        print()
                    case "V":
                        for posicion in range(1, tamaño + 1):
                            print(simbolo)
                    case _:
                        print("Orientación no válida.")
                
            case "Salir":
                print("Programa terminado.")
                break
                
            case _:
                print("Opción no válida. Intente nuevamente.")

if __name__ == "__main__":
    main()


