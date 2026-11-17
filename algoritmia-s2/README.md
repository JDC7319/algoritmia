# Guía de validación de algoritmos

Este documento reúne las condiciones evaluadas y los resultados esperados para los cuatro programas entregados. Los casos incluyen valores límite, entradas habituales y situaciones no permitidas.

## 1. ValidarRegistro.psc

### Condiciones de aceptación

El registro se completa únicamente cuando la edad es igual o superior a 14 años y la respuesta a la aceptación de términos es S. La respuesta se convierte a mayúscula antes de evaluarse.

| Edad mínima cumplida | Acepta términos | Resultado |
|:---:|:---:|---|
| Sí | Sí | Registro exitoso |
| Sí | No | Registro rechazado |
| No | Sí | Registro rechazado |
| No | No | Registro rechazado |

### Escenarios de validación

| Prueba | Edad | Respuesta | Resultado esperado |
|:---:|---:|:---:|---|
| 1 | 14 | S | Registro exitoso |
| 2 | 13 | S | No puedes registrarte |
| 3 | 30 | N | No puedes registrarte |
| 4 | 14 | s | Registro exitoso |
| 5 | 0 | S | No puedes registrarte |
| 6 | 18 | n | No puedes registrarte |

## 2. Semaforo.psc

### Rangos de inventario

| Cantidad disponible | Estado mostrado |
|---:|---|
| Menor que 0 | Error: cantidad negativa |
| 0 | Rojo: inventario agotado |
| De 1 a 10 | Amarillo: pedir unidades |
| Mayor que 10 | Verde: inventario suficiente |

### Escenarios de validación

| Prueba | Unidades ingresadas | Resultado esperado |
|:---:|---:|---|
| 1 | -1 | Error: la cantidad no puede ser negativa |
| 2 | 0 | Rojo: inventario agotado |
| 3 | 1 | Amarillo: es necesario pedir unidades |
| 4 | 10 | Amarillo: es necesario pedir unidades |
| 5 | 11 | Verde: inventario suficiente |
| 6 | 25 | Verde: inventario suficiente |

## 3. Parqueadero.psc

### Reglas de cobro

| Situación | Cálculo o respuesta |
|---|---|
| Minutos negativos | Se informa un error |
| Tipo distinto de 1 o 2 | Se informa un error |
| Permanencia de hasta 15 minutos | No se cobra |
| Carro después de 15 minutos | $4.000 por cada hora iniciada |
| Moto después de 15 minutos | $2.000 por cada hora iniciada |
| Cobro superior a $30.000 | Se limita a $30.000 |
| Presenta factura | Se aplica un descuento del 50 % |

### Casos de prueba

| Prueba | Vehículo | Minutos | Factura | Total esperado |
|:---:|---|---:|:---:|---:|
| 1 | Carro | 15 | N | $0 |
| 2 | Carro | 16 | N | $4.000 |
| 3 | Carro | 60 | N | $4.000 |
| 4 | Carro | 61 | N | $8.000 |
| 5 | Moto | 61 | S | $2.000 |
| 6 | Carro | 600 | N | $30.000 |
| 7 | Carro | 600 | S | $15.000 |
| 8 | Tipo 3 | 30 | N | Error: tipo de vehículo no válido |
| 9 | Carro | -5 | N | Error: minutos negativos |
| 10 | Moto | 15 | S | $0 |
| 11 | Moto | 16 | N | $2.000 |

### Seguimiento manual del cálculo

**Prueba A: carro durante 61 minutos, sin factura**

| Operación | Resultado |
|---|---:|
| Tipo seleccionado | Carro |
| Tarifa por hora | $4.000 |
| Horas iniciadas | 2 |
| Subtotal | $8.000 |
| Aplicación del límite | $8.000 |
| Descuento por factura | No aplica |
| Total | **$8.000** |

**Prueba B: moto durante 61 minutos, con factura**

| Operación | Resultado |
|---|---:|
| Tipo seleccionado | Moto |
| Tarifa por hora | $2.000 |
| Horas iniciadas | 2 |
| Subtotal | $4.000 |
| Aplicación del límite | $4.000 |
| Descuento por factura | 50 % |
| Total | **$2.000** |

## 4. Bisiesto.psc

### Criterios para determinar el año

| Condición | Clasificación |
|---|---|
| El año es divisible entre 400 | Bisiesto |
| No es divisible entre 400, pero sí entre 100 | No bisiesto |
| No es divisible entre 100, pero sí entre 4 | Bisiesto |
| No es divisible entre 4 | No bisiesto |

### Escenarios de validación

| Prueba | Año | Motivo | Resultado esperado |
|:---:|---:|---|---|
| 1 | 2000 | Divisible entre 400 | Bisiesto |
| 2 | 1900 | Divisible entre 100, no entre 400 | No bisiesto |
| 3 | 2024 | Divisible entre 4, no entre 100 | Bisiesto |
| 4 | 2025 | No divisible entre 4 | No bisiesto |
| 5 | 2028 | Divisible entre 4, no entre 100 | Bisiesto |
| 6 | 2100 | Divisible entre 100, no entre 400 | No bisiesto |

## Resumen

| Archivo | Validaciones principales |
|---|---|
| ValidarRegistro.psc | Edad mínima y aceptación de términos |
| Semaforo.psc | Cantidad negativa, inventario agotado, nivel bajo y nivel suficiente |
| Parqueadero.psc | Tipo de vehículo, tiempo, tarifa, límite y descuento |
| Bisiesto.psc | Divisibilidad entre 4, 100 y 400 |
