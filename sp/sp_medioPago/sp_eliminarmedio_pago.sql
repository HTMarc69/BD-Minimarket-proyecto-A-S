/*
Ejemplo de Uso:
Este procedimiento permite eliminar un MedioPago en la tabla medioPago.
CALL sp_eliminarMedioPago();
Fecha: 13-10-2023
Autor: Thomas Gómez
*/
DELIMITER $$
CREATE PROCEDURE sp_eliminarMedioPago(IN medioPagoID INT)
BEGIN
    DELETE FROM mediopago WHERE id_mediopago = medioPagoID;
END;
$$

CALL sp_eliminarMedioPago(1);
