Algoritmo Parqueadero
    Definir tipoVehiculo, minutosEstadia, horasCobro Como Entero
    Definir costoHora, totalPagar Como Real
    Definir tieneFactura Como Caracter

    Escribir "Seleccione el vehiculo (1 = carro, 2 = moto):"
    Leer tipoVehiculo
    Escribir "Digite los minutos de permanencia:"
    Leer minutosEstadia
    Escribir "¿Cuenta con factura de compra? (S/N):"
    Leer tieneFactura

    tieneFactura <- Mayusculas(tieneFactura)

    Si minutosEstadia < 0 Entonces
        Escribir "Error: los minutos no pueden ser negativos."
    SiNo
        Segun tipoVehiculo Hacer
            1:
                costoHora <- 4000
            2:
                costoHora <- 2000
            De Otro Modo:
                costoHora <- 0
        FinSegun

        Si costoHora = 0 Entonces
            Escribir "Error: tipo de vehiculo no valido."
        SiNo
            Si minutosEstadia <= 15 Entonces
                totalPagar <- 0
            SiNo
                horasCobro <- Trunc((minutosEstadia + 59) / 60)
                totalPagar <- horasCobro * costoHora

                Si totalPagar > 30000 Entonces
                    totalPagar <- 30000
                FinSi

                Si tieneFactura = "S" Entonces
                    totalPagar <- totalPagar / 2
                FinSi
            FinSi

            Escribir "Total del parqueadero: $", totalPagar
        FinSi
    FinSi
FinAlgoritmo
