
/*
Ejemplo de Uso:
Este procedimiento permite actualizar un categoria en la tabla categoria.
CALL sp_actualizarActualizarCategoria();
Fecha: 13-10-2023
Autor: Thomas Gómez
*/
use minimarket;

DELIMITER $$
CREATE PROCEDURE sp_ActualizarCategoria(
    IN p_id_categoria TINYINT,
    IN p_nuevo_nombre VARCHAR(15),
    IN p_nueva_descripcion VARCHAR(50)
)
BEGIN
    UPDATE categoria
    SET nombre = p_nuevo_nombre, descripcion = p_nueva_descripcion
    WHERE id_categoria = p_id_categoria;
END;
$$
DELIMITER ;

