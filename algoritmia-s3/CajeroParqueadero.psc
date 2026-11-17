Proceso CajeroParqueadero
    Definir pago, totalRecaudado Como Real
    Definir cantidadCarros Como Entero

    totalRecaudado <- 0
    cantidadCarros <- 0

    Escribir "REGISTRO DE PARQUEADERO"
    Escribir "Ingrese 0 como valor para terminar."

    Repetir
        Escribir "Valor pagado por el vehiculo: "
        Leer pago

        Si pago < 0 Entonces
            Escribir "Ingrese un valor igual o mayor que cero."
        SiNo
            Si pago > 0 Entonces
                totalRecaudado <- totalRecaudado + pago
                cantidadCarros <- cantidadCarros + 1
                Escribir "Vehiculos registrados: ", cantidadCarros
                Escribir "Total recaudado: $", totalRecaudado
            FinSi
        FinSi
    Hasta Que pago = 0

    Escribir "RESUMEN DEL PARQUEADERO"
    Escribir "Cantidad de vehiculos: ", cantidadCarros
    Escribir "Total recaudado: $", totalRecaudado
FinProceso
