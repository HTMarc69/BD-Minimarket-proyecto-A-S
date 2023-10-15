/*
Ejemplo de Uso:
Este procedimiento permite insertar un medioPago en la tabla medioPago.
CALL sp_insetarmediopago();
Fecha: 13-10-2023
Autor: Thomas Gómez
*/

DELIMITER $$
CREATE PROCEDURE sp_insertarmediopago(IN p_medio_pago VARCHAR(10))
BEGIN
    INSERT INTO medio_pago (medio_pago) 
    VALUES (p_medio_pago);
END;
$$

CALL sp_insertarmediopago('Efectivo');
CALL sp_insertarmediopago('Credito');
CALL sp_insertarmediopago('Debito');
