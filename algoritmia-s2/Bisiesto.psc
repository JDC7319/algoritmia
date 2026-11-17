Algoritmo Bisiesto
    Definir anioEvaluado Como Entero

    Escribir "Escriba el año que desea comprobar:"
    Leer anioEvaluado

    Si anioEvaluado MOD 400 = 0 Entonces
        Escribir "El año ", anioEvaluado, " es bisiesto. Febrero tiene 29 dias."
    SiNo
        Si anioEvaluado MOD 100 = 0 Entonces
            Escribir "El año ", anioEvaluado, " no es bisiesto. Febrero tiene 28 dias."
        SiNo
            Si anioEvaluado MOD 4 = 0 Entonces
                Escribir "El año ", anioEvaluado, " es bisiesto. Febrero tiene 29 dias."
            SiNo
                Escribir "El año ", anioEvaluado, " no es bisiesto. Febrero tiene 28 dias."
            FinSi
        FinSi
    FinSi
FinAlgoritmo
