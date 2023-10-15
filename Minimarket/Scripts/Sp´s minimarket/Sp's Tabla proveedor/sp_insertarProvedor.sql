
/*
Ejemplo de Uso:
Este procedimiento permite insertar un nuevo proveedor en la tabla provedor.
CALL sp_insertarProveedores();
Fecha: 13-10-2023
Autor: Thomas Gómez
*/

DELIMITER $$
CREATE PROCEDURE sp_insertarProveedor(
    in_nombre VARCHAR(25),
    in_direccion VARCHAR(50),
    in_rut VARCHAR(12),
    in_telefono INT,
    in_email VARCHAR(45)
)
BEGIN
    INSERT INTO provedor (nombre, direccion, rut, telefono, mail)
    VALUES (in_nombre, in_direccion, in_rut, in_telefono, in_email);
END;
$$
drop procedure sp_insertarProveedor;
call sp_insertarProveedor('lorena', 'los robles12', '2929292-0', 99999999, 'wasa@gmail.com')