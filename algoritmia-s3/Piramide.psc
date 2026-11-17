Proceso Piramide
    Definir altura, fila, columna Como Entero
    Definir linea Como Cadena

    Repetir
        Escribir "Ingrese la altura de la piramide (1 a 20): "
        Leer altura
        Si altura < 1 O altura > 20 Entonces
            Escribir "Ingrese un numero entero entre 1 y 20."
        FinSi
    Hasta Que altura >= 1 Y altura <= 20

    Escribir "PIRAMIDE DE ASTERISCOS"

    Para fila <- 1 Hasta altura Hacer
        linea <- ""
        Para columna <- 1 Hasta altura - fila Hacer
            linea <- Concatenar(linea, " ")
        FinPara
        Para columna <- 1 Hasta 2 * fila - 1 Hacer
            linea <- Concatenar(linea, "*")
        FinPara
        Escribir linea
    FinPara
FinProceso
