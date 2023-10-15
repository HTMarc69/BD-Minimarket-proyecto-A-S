-- inserta un producto nuevo
delimiter $$
create procedure sp_insertarproducto
(
	in _nombre varchar(15)
    ,in _descripcion varchar(50)
    ,in _cantidad_almacen tinyint
    ,in _precio numeric
    ,in _fecha_vencimiento date
    ,in _marca varchar(10)
)
begin
	insert into Producto (nombre, descripcion, cantidad_almacen, precio)
    values(_nombre, _descripcion, _cantidad_almacen, _precio);
    insert into Fecha_vencimiento (fecha_vencimiento)
    values (_fecha_vencimiento);
    insert into Marca (marca)
    values (_marca);
end 
$$