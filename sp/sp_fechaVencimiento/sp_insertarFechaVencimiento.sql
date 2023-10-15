/*
Ejemplo de Uso:
Este procedimiento permite insertar un FechaVencimento en la tabla FechaVencimiento.
CALL sp_insertarFechaVencimiento();
Fecha: 13-10-2023
Autor: Thomas Gómez
*/
DELIMITER $$
CREATE PROCEDURE sp_insertarFechaVencimiento(IN p_fecha TIMESTAMP)
BEGIN
    INSERT INTO fecha_vencimiento (fecha_entrada) VALUES (p_fecha);
END;
$$

CALL sp_insertarFechaVencimiento('2024-01-15 12:00:00');
