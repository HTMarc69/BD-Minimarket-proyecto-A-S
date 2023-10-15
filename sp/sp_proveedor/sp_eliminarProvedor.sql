
/*
Ejemplo de Uso:
Este procedimiento permite eliminar un proveedor por su ID de la tabla provedor.
CALL sp_eliminarProveedores();
Fecha: 13-10-2023
Autor: Thomas Gómez
*/
DELIMITER $$
CREATE PROCEDURE sp_eliminarProveedor(in_id_provedor TINYINT)
BEGIN
    DELETE FROM provedor
    WHERE id_provedor = in_id_provedor;
END;
$$
