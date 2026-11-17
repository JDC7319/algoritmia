Proceso ValidarPIN
    Definir pinCorrecto, pinIngresado Como Cadena
    Definir intentos, maximoIntentos, restantes Como Entero
    Definir accesoConcedido Como Logico

    pinCorrecto <- "2580"
    maximoIntentos <- 3
    intentos <- 0
    accesoConcedido <- Falso

    Escribir "VALIDACION DE PIN"

    Mientras intentos < maximoIntentos Y NO accesoConcedido Hacer
        Escribir "Ingrese su PIN: "
        Leer pinIngresado
        intentos <- intentos + 1

        Si pinIngresado = pinCorrecto Entonces
            accesoConcedido <- Verdadero
            Escribir "PIN correcto. Acceso concedido."
        SiNo
            restantes <- maximoIntentos - intentos
            Si restantes > 0 Entonces
                Escribir "PIN incorrecto. Le quedan ", restantes, " intentos."
            FinSi
        FinSi
    FinMientras

    Si NO accesoConcedido Entonces
        Escribir "Se agotaron los intentos. Acceso bloqueado."
    FinSi
FinProceso
