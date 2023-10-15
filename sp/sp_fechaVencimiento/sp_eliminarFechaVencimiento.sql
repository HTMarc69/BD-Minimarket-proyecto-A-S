/*
Ejemplo de Uso:
Este procedimiento permite eliminar un FechaVencimiento en la tabla FechaVencimiento.
CALL sp_eliminarFechaVencimiento();
Fecha: 13-10-2023
Autor: Angel Fuentes
*/
use minimarket;
DELIMITER $$
CREATE PROCEDURE sp_eliminarFechaVencimiento(IN fechaID SMALLINT)
BEGIN
    DELETE FROM fecha_vencimiento WHERE id_fecha_vencimiento = fechaID;
END;
$$

call sp_eliminarFechaVencimiento(1);
