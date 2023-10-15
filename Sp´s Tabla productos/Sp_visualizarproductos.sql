-- Sp Seleccionar productos
use Minimarket;

delimiter $$
create procedure sp_visualizarproductos
()
begin
	select p.id_productos
		,p.nombre
        ,p.descripcion
        ,p.precio
        ,p.cantidad_almacen
        ,m.marca
        ,pr.nombre
        ,fv.fecha_vencimiento
        ,c.nombre
    from Productos p
    left join Categorias c
    on p.id_categoria = c.id_categoria
    left join MarcaP m
    on p.id_marca = m.id_marca
    left join Provedor pr
    on p.id_provedor = pr.id_provedor
    left join Fecha_vencimiento fv
    on p.id_vencimiento = fv.id_vencimiento
    ;
end;
$$

drop procedure sp_visualizarproductos;

call sp_visualizarproductos;