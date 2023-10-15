
/*
Ejemplo de Uso:
Este procedimiento permite actualizar la información de un proveedor existente por su ID.
CALL sp_actualizarProveedores();
Fecha: 13-10-2023
Autor: Thomas Gómez
*/
DELIMITER $$
CREATE PROCEDURE sp_actualizarProveedor(
    in_id_provedor TINYINT,
    in_nombre VARCHAR(25),
    in_direccion VARCHAR(50),
    in_rut VARCHAR(12),
    in_telefono INT,
    in_email VARCHAR(50)
)
BEGIN
    UPDATE provedor
    SET
        nombre = in_nombre,
        direccion = in_direccion,
        rut = in_rut,
        telefono = in_telefono,
        mail = in_email
    WHERE id_provedor = in_id_provedor;
END;
$$

drop procedure sp_actualizarProveedor;
call sp_actualizarProveedor(1, 'aladin', 'calle siempre vivda', '212121-k', 78095432, 'lol@gmail.com');
