

## Ejercicios

### 1. CajeroParqueadero.psc

Registra pagos positivos de vehículos en un parqueadero. Utiliza un ciclo `Repetir ' Hasta Que` porque no se conoce cuántos vehículos llegarán. Acumula el recaudo y cuenta los vehículos; al ingresar `0`, muestra el resumen. Los valores negativos se rechazan.

### 2. ValidarPIN.psc

Solicita un PIN, con un máximo de tres intentos. Utiliza `Mientras` y una variable lógica para controlar el acceso. El PIN de prueba es `2580`. Al acertar, concede el acceso; si se agotan los intentos, lo bloquea.

### 3. Calificaciones.psc

Lee las calificaciones de cinco estudiantes y valida que estén entre `0` y `5`. Utiliza un arreglo, un ciclo `Para`, acumuladores y condicionales para mostrar cada resultado, calcular el promedio, contar aprobados (nota mayor o igual a `3`) y no aprobados, y determinar la nota mayor y menor.

### 4. Piramide.psc

Solicita una altura entera entre `1` y `20` y dibuja una pirámide centrada de asteriscos. Usa ciclos `Para` anidados y `Concatenar` para formar cada fila con los espacios y asteriscos correspondientes.

### 5. FacturaRestaurante.psc

Permite seleccionar productos de un menú y agregar cantidades hasta elegir `0`. Utiliza arreglos para nombres, precios y cantidades, además de los subprocesos `MostrarMenu`, `CalcularFactura` e `ImprimirFactura`. Calcula el subtotal, el IVA del `19 %` y el total. Si se selecciona un producto más de una vez, acumula su cantidad.

## Pruebas de validación

| Archivo | Prueba | Resultado esperado |
|---|---|---|
| CajeroParqueadero.psc | Ingresar `5000`, `7000` y `0` | 2 vehículos y $12000 recaudados |
| CajeroParqueadero.psc | Ingresar `-1000` | Rechaza el valor y permite volver a ingresar el pago |
| ValidarPIN.psc | Ingresar `2580` en el primer intento | Acceso concedido |
| ValidarPIN.psc | Ingresar tres PIN incorrectos | Acceso bloqueado |
| Calificaciones.psc | Ingresar `3.5`, `2.8`, `4.9`, `3.0` y `4.2` | Promedio 3.68, 4 aprobados y 1 no aprobado |
| Calificaciones.psc | Ingresar una nota fuera del rango 0–5 | Solicita nuevamente la nota |
| Piramide.psc | Ingresar altura `4` | Dibuja cuatro filas, desde `*` hasta `*******` |
| Piramide.psc | Ingresar `0` o `21` | Solicita otra altura |
| FacturaRestaurante.psc | Bandeja paisa, cantidad `2`, y finalizar | Subtotal $56000, IVA $10640 y total $66640 |
| FacturaRestaurante.psc | Seleccionar `0` sin productos | Imprime factura con valores en cero |

## Estructura

```text
sesion-03-pseint/
├── CajeroParqueadero.psc
├── ValidarPIN.psc
├── Calificaciones.psc
├── Piramide.psc
├── FacturaRestaurante.psc
└── README.md
```
