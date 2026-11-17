Algoritmo ValidarRegistro
    Definir edadUsuario Como Entero
    Definir aceptaTerminos Como Caracter

    Escribir "¿Que edad tienes?"
    Leer edadUsuario
    Escribir "¿Aceptas los terminos? (S/N)"
    Leer aceptaTerminos

    aceptaTerminos <- Mayusculas(aceptaTerminos)

    Si edadUsuario >= 14 Y aceptaTerminos = "S" Entonces
        Escribir "Registro exitoso."
    SiNo
        Escribir "No puedes registrarte."
    FinSi
FinAlgoritmo
