/*
Ejemplo de Uso:
Este procedimiento permite actualizar un medioPago en la tabla medioPago.
CALL sp_actualizarMedioPago();
Fecha: 13-10-2023
Autor: Thomas Gómez
*/
DELIMITER $$
CREATE PROCEDURE sp_actualizarMedioPago(
    IN medioPagoID INT,
    IN nuevoMedioPago VARCHAR(10)
)
BEGIN
    UPDATE medio_pago
    SET medio_pago = nuevoMedioPago
    WHERE id_mediopago = medioPagoID;
END;
$$

CALL sp_actualizarMedioPago(1, 'Nuevo');

