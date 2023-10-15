/*
Ejemplo de Uso:
Este procedimiento permite seleccionar una categoria en la tabla categoria.
CALL sp_InsertarCategoria();
Fecha: 14-10-2023
Autor: Angel Fuentes
*/


DELIMITER $$
CREATE PROCEDURE sp_SeleccionarCategorias()
BEGIN
    SELECT id_categoria, nombre, descripcion
    FROM categoria;
END;
$$
DELIMITER ;
