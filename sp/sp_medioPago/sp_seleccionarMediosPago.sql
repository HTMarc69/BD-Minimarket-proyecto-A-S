/*
Ejemplo de Uso:
Este procedimiento permite actualizar un medioPago en la tabla medioPago.
CALL sp_actualizarMedioPago();
Fecha: 13-10-2023
Autor: Thomas Gómez
*/


DELIMITER $$
CREATE PROCEDURE sp_seleccionarMediosPago()
BEGIN
    SELECT medio_pago FROM mediopago;
END;
$$

CALL sp_seleccionarMediosPago();
