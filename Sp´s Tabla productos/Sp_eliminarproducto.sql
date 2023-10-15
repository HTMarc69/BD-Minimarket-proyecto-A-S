-- sp_eliminarproducto

delimiter $$
create procedure sp_eliminarproducto (
	in _id_producto tinyint
)
begin
	delete from Productos
    where id_producto = _id_producto;
end;
$$
call sp_eliminarproducto(1)
