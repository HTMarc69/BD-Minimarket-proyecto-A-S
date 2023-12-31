/*
Ejemplo de Uso:
Este procedimiento permite seleccionar un FechaVencimiento en la tabla FechaVencimiento.
CALL sp_seleccionarFechaVencimiento();
Fecha: 13-10-2023
Autor: Ángel Funtes
*/

DELIMITER $$

CREATE PROCEDURE sp_seleccionarFechaVencimiento()
BEGIN
    SELECT id_vencimiento, fecha_vencimiento, fecha_entrada FROM fecha_vencimiento;
END;

$$

CALL sp_seleccionarFechaVencimiento();