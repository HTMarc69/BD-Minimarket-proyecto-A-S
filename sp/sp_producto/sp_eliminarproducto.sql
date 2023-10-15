/*
Ejemplo de Uso:
Este procedimiento permite EliminarProducto en la tabla producto.
CALL sp_ElimnarProducto();
Fecha: 13-10-2023
Autor: Thomas Gómez
*/
use minimarket;

DELIMITER $$
CREATE PROCEDURE sp_EliminarProducto(
    IN productoID INT
)
BEGIN
    DELETE FROM producto
    WHERE id_producto = productoID;
END;
$$

CALL sp_EliminarProducto(1); -- Reemplaza 1 con el ID del producto que deseas eliminar
