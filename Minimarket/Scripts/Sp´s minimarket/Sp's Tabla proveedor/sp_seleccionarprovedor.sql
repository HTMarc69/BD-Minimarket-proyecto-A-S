/*
Ejemplo de Uso:
Para obtener todos los proveedores ordenados por nombre
CALL sp_seleccionarProveedores();
Fecha: 13-10-2023
Autor: Thomas Gómez
*/


DELIMITER $$
CREATE PROCEDURE sp_seleccionaproveedores()
BEGIN
    -- Este procedimiento selecciona todos los proveedores y los ordena por nombre.

    -- Inicio de la selección
    SELECT id_provedor, nombre, direccion, rut, telefono, mail
    FROM provedor
    ORDER BY nombre ASC;
    
    -- Fin de la selección
END;
$$

drop procedure sp_seleccionaproveedores;
call sp_seleccionaproveedores();