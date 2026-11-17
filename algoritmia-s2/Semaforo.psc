Algoritmo Semaforo
    Definir cantidadUnidades Como Entero

    Escribir "Indique cuantas unidades hay disponibles:"
    Leer cantidadUnidades

    Si cantidadUnidades < 0 Entonces
        Escribir "Error: la cantidad no puede ser negativa."
    SiNo
        Segun cantidadUnidades Hacer
            0:
                Escribir "Rojo: inventario agotado."
            De Otro Modo:
                Si cantidadUnidades <= 10 Entonces
                    Escribir "Amarillo: es necesario pedir unidades."
                SiNo
                    Escribir "Verde: inventario suficiente."
                FinSi
        FinSegun
    FinSi
FinAlgoritmo
