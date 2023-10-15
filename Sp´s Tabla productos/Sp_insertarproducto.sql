-- sp insertar producto

delimiter $$
create procedure sp_insertarproducto (
	in _nombre varchar (15)
    ,in _descripcion varchar(50)
    ,in _precio numeric
    ,in _cantidad_almacen tinyint
    ,in _id_marca tinyint

)
begin
	insert into Productos (nombre, descripcion, precio, cantidad_almacen, id_marca)
    values(_nombre, _descripcion, _precio, _cantidad_almacen, _id_marca);
end
$$

drop procedure sp_insertarproducto;
call sp_insertarproducto("azuar", "zucar", 5020, 22, 1);