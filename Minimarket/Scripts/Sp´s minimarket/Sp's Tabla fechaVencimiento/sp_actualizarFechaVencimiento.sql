/*
Ejemplo de Uso:
Este procedimiento permite actualizar un FechaVencimiento en la tabla FechaVencimiento.
CALL sp_actualizarFechaVencimientos();
Fecha: 13-10-2023
Autor: Thomas Gómez
*/

DELIMITER $$
CREATE PROCEDURE sp_actualizarFechaVencimiento(
    IN fechaID SMALLINT,
    IN nuevaFecha TIMESTAMP
)
BEGIN
    UPDATE fecha_vencimiento SET fecha_entrada = nuevaFecha WHERE id_vencimiento = fechaID;
END;
$$
