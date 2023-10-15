
/*
Ejemplo de Uso:
Este procedimiento permite eliminar una categoria en la tabla categoria.
CALL sp_EliminarCategoria();
Fecha: 13-10-2023
Autor: Thomas Gómez
*/

DELIMITER $$
CREATE PROCEDURE sp_EliminarCategoria(
    IN p_id_categoria TINYINT
)
BEGIN
    DELETE FROM categoria
    WHERE id_categoria = p_id_categoria;
END;
$$
DELIMITER ;
