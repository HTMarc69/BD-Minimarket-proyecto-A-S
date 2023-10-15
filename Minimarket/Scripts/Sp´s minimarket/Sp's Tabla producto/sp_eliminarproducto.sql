/*
Ejemplo de Uso:
Este procedimiento permite EliminarProducto en la tabla producto.
CALL sp_ElimnarProducto();
Fecha: 13-10-2023
Autor: Thomas Gómez
*/

DELIMITER $$
CREATE PROCEDURE sp_EliminarProducto(
    IN productoID INT
)
BEGIN
    DELETE FROM productos
    WHERE id_productos = productoID;
END;
$$
drop procedure sp_EliminarProducto;
CALL sp_EliminarProducto(1); -- Reemplaza 1 con el ID del producto que deseas eliminar
