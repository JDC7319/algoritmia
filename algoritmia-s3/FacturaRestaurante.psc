SubProceso MostrarMenu(nombres, precios)
    Definir i Como Entero
    Escribir "MENU"
    Para i <- 1 Hasta 5 Hacer
        Escribir i, ". ", nombres[i], " - $", precios[i]
    FinPara
    Escribir "0. Finalizar pedido"
FinSubProceso

SubProceso CalcularFactura(precios, cantidades, subtotal Por Referencia, impuesto Por Referencia, total Por Referencia)
    Definir i Como Entero
    subtotal <- 0
    Para i <- 1 Hasta 5 Hacer
        subtotal <- subtotal + precios[i] * cantidades[i]
    FinPara
    impuesto <- subtotal * 0.19
    total <- subtotal + impuesto
FinSubProceso

SubProceso ImprimirFactura(nombres, precios, cantidades, subtotal, impuesto, total)
    Definir i, cantidadProductos Como Entero
    cantidadProductos <- 0
    Escribir "========== FACTURA =========="
    Para i <- 1 Hasta 5 Hacer
        Si cantidades[i] > 0 Entonces
            Escribir nombres[i], " x", cantidades[i], ": $", precios[i] * cantidades[i]
            cantidadProductos <- cantidadProductos + cantidades[i]
        FinSi
    FinPara
    Si cantidadProductos = 0 Entonces
        Escribir "No se agregaron productos."
    FinSi
    Escribir "-----------------------------"
    Escribir "Subtotal: $", subtotal
    Escribir "IVA (19%): $", impuesto
    Escribir "TOTAL: $", total
    Escribir "============================="
FinSubProceso

Proceso FacturaRestaurante
    Definir nombres Como Cadena
    Definir precios, cantidades Como Entero
    Definir opcion, cantidad, i Como Entero
    Definir subtotal, impuesto, total Como Real
    Dimension nombres[5], precios[5], cantidades[5]

    nombres[1] <- "Bandeja paisa"
    nombres[2] <- "Ajiaco"
    nombres[3] <- "Sancocho"
    nombres[4] <- "Jugo natural"
    nombres[5] <- "Agua"

    precios[1] <- 28000
    precios[2] <- 22000
    precios[3] <- 25000
    precios[4] <- 7000
    precios[5] <- 4000

    Para i <- 1 Hasta 5 Hacer
        cantidades[i] <- 0
    FinPara

    Escribir "FACTURACION DEL RESTAURANTE"

    Repetir
        MostrarMenu(nombres, precios)
        Repetir
            Escribir "Seleccione un producto: "
            Leer opcion
            Si opcion < 0 O opcion > 5 Entonces
                Escribir "Ingrese una opcion entre 0 y 5."
            FinSi
        Hasta Que opcion >= 0 Y opcion <= 5

        Si opcion <> 0 Entonces
            Repetir
                Escribir "Cantidad: "
                Leer cantidad
                Si cantidad < 1 O cantidad > 100 Entonces
                    Escribir "Ingrese una cantidad entre 1 y 100."
                FinSi
            Hasta Que cantidad >= 1 Y cantidad <= 100
            cantidades[opcion] <- cantidades[opcion] + cantidad
            Escribir cantidad, " unidad(es) de ", nombres[opcion], " agregada(s)."
        FinSi
    Hasta Que opcion = 0

    CalcularFactura(precios, cantidades, subtotal, impuesto, total)
    ImprimirFactura(nombres, precios, cantidades, subtotal, impuesto, total)
FinProceso
