/*
Ejemplo de Uso:
Este procedimiento permite insertar un producto en la tabla productos.
CALL sp_insertarproducto();
Fecha: 13-10-2023
Autor: Angel Fuentes
*/

delimiter $$
create procedure sp_insertarproducto (
	in _nombre varchar (15)
    ,in _descripcion varchar(50)
    ,in _precio numeric
    ,in _cantidad_almacen tinyint
    ,in _id_marca tinyint
    ,in _id_vencimiento smallint
    ,in _id_categoria tinyint

)
begin
	insert into Productos (nombre, descripcion, precio, cantidad_almacen, id_marca, id_vencimiento, id_categoria)
    values(_nombre, _descripcion, _precio, _cantidad_almacen, _id_marca, _id_vencimiento, _id_categoria);
end;
$$

call sp_insertarproducto('azucar', 'lol',1313, 12, 1, 1, 1);

drop procedure sp_insertarproducto;