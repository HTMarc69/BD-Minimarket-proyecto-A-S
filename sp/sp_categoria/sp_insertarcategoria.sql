
/*
Ejemplo de Uso:
Este procedimiento permite insertar una categoria en la tabla categoria.
CALL sp_InsertarCategoria();
Fecha: 13-10-2023
Autor: Angel Fuentes
*/

DELIMITER $$
CREATE PROCEDURE sp_InsertarCategoria(
    IN p_nombre VARCHAR(15),
    IN p_descripcion VARCHAR(50)
)
BEGIN
    INSERT INTO categoria (nombre, descripcion)
    VALUES (p_nombre, p_descripcion);
END;
$$
DELIMITER ;
