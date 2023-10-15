/*
Ejemplo de Uso:
Este procedimiento permite actualizar un producto en la tabla producto.
CALL sp_actualizarproducto();
Fecha: 13-10-2023
Autor: Todos los miembros
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
    UPDATE producto
    SET nombre = p_nombre,
        descripcion = p_descripcion,
        precio = p_precio,
        cantidad_almacen = p_cantidad_almacen
    WHERE id_producto = p_id_producto;
END;
DELIMITER $$

call sp_actualizarproducto(1, 'Nuevo Nombre', 'Nueva Descripción', 12.990, 25);



