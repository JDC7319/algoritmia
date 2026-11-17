Proceso Calificaciones
    Definir notas, suma, promedio, mayor, menor, nota Como Real
    Definir i, aprobados, perdieron Como Entero
    Dimension notas[5]

    suma <- 0
    aprobados <- 0
    perdieron <- 0

    Escribir "CALIFICACIONES DE CINCO ESTUDIANTES"

    Para i <- 1 Hasta 5 Hacer
        Repetir
            Escribir "Calificacion del estudiante ", i, " (0 a 5): "
            Leer nota
            Si nota < 0 O nota > 5 Entonces
                Escribir "La calificacion debe estar entre 0 y 5."
            FinSi
        Hasta Que nota >= 0 Y nota <= 5

        notas[i] <- nota
        suma <- suma + nota

        Si i = 1 Entonces
            mayor <- nota
            menor <- nota
        SiNo
            Si nota > mayor Entonces
                mayor <- nota
            FinSi
            Si nota < menor Entonces
                menor <- nota
            FinSi
        FinSi

        Si nota >= 3 Entonces
            aprobados <- aprobados + 1
        SiNo
            perdieron <- perdieron + 1
        FinSi
    FinPara

    promedio <- suma / 5

    Escribir "RESUMEN"
    Para i <- 1 Hasta 5 Hacer
        Si notas[i] >= 3 Entonces
            Escribir "Estudiante ", i, ": ", notas[i], " - Aprobo"
        SiNo
            Escribir "Estudiante ", i, ": ", notas[i], " - No aprobo"
        FinSi
    FinPara

    Escribir "Promedio del grupo: ", promedio
    Escribir "Aprobaron: ", aprobados
    Escribir "No aprobaron: ", perdieron
    Escribir "Nota mas alta: ", mayor
    Escribir "Nota mas baja: ", menor
FinProceso
