/*
Ejemplo de Uso:
Este procedimiento permite insertar un producto en la tabla productos.
CALL sp_insertarproducto();
Fecha: 13-10-2023
Autor: Angel Fuentes
*/

USE minimarket;

DROP PROCEDURE IF EXISTS sp_insertarproducto;

DELIMITER $$

CREATE PROCEDURE sp_insertarproducto(
    IN p_nombre VARCHAR(50),
    IN p_descripcion VARCHAR(50),
    IN p_precio NUMERIC,
    IN p_cantidad_almacen TINYINT,
    IN p_fecha_entrada DATETIME,
    IN p_id_categoria TINYINT
)
BEGIN
    INSERT INTO producto (nombre, descripcion, precio, cantidad_almacen, fecha_entrada)
    VALUES (p_nombre, p_descripcion, p_precio, p_cantidad_almacen, p_fecha_entrada);
END;
$$

CALL sp_insertarproducto('Azucar', 'Azucar para el té', 1600, 10, '2023-01-01 00:00:00',1);
CALL sp_insertarproducto('Milo', 'Saborizante para la leche', 2450, 10, '2023-01-01 00:00:00',1);
CALL sp_insertarproducto('Tallrines', 'Tipo de pasta', 1200, 20, '2023-01-01 00:00:00',1);
CALL sp_insertarproducto('Sal', 'Para condimentar los alimentos', 400, 5, '2023-01-01 00:00:00',1);
CALL sp_insertarproducto('Harina', 'Polvo de origen vegetal', 1150, 10, '2023-01-01 00:00:00',1);
CALL sp_insertarproducto('Aceite', 'Para condimentar los alimentos', 2000, 20, '2023-01-01 00:00:00',1);
CALL sp_insertarproducto('Mermelada', 'Producto creado para', 890, 10, '2023-01-01 00:00:00',1);
CALL sp_insertarproducto('Durazno en Conserva', 'Fruta en conserva', 2300, 10, '2023-01-01 00:00:00',1);
CALL sp_insertarproducto('Arroz', 'Cereal', 1200, 20, '2023-01-01 00:00:00',1);

CALL sp_insertarproducto('Coca-Cola 3LT', 'Bebida de Fantasia', 2600, 48, '2023-05-01 00:00:00',2);
CALL sp_insertarproducto('Bilz 3LT', 'Bebida de Fantasia', 2200, 48, '2023-05-01 00:00:00',2);
CALL sp_insertarproducto('Sprite 2LT', 'Bebida de Fantasia', 1600, 16, '2023-05-01 00:00:00',2);

CALL sp_insertarproducto('Toalla Higienica', 'Producto de Higiene personal', 1250, 10, '2023-06-01 00:00:00',3);
CALL sp_insertarproducto('Desodorante Hombre', 'Producto de Higiene personal', 2800, 5, '2023-06-01 00:00:00',3);
CALL sp_insertarproducto('Shampoo', 'Producto de Higiene personal', 1500, 5, '2023-01-01 00:00:00',3);
