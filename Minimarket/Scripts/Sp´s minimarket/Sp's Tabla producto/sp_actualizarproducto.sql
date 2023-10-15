/*
Ejemplo de Uso:
Este procedimiento permite actualizar un producto en la tabla producto.
CALL sp_actualizarproducto();
Fecha: 13-10-2023
Autor: Marc Durán
*/

use minimarket;

DELIMITER $$
CREATE PROCEDURE sp_actualizarproducto(
    IN p_id_producto TINYINT,
    IN p_nombre VARCHAR(50),
    IN p_descripcion VARCHAR(50),
    IN p_precio NUMERIC,
    IN p_cantidad_almacen TINYINT
)
BEGIN
    UPDATE productos
    SET nombre = p_nombre,
        descripcion = p_descripcion,
        precio = p_precio,
        cantidad_almacen = p_cantidad_almacen
    WHERE id_productos = p_id_producto;
END;
$$
drop procedure sp_actualizarproducto;
call sp_actualizarproducto(1, 'Nuevo Nombre', 'Nueva Descripción', 12990, 25);



