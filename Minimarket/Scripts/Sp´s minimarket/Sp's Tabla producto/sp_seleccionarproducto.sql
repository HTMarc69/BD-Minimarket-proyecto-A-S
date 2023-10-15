/*
Ejemplo de Uso:
Este procedimiento permite visualizar un producto en la tabla producto.
CALL sp_visualizarproductos();
Fecha: 13-10-2023
Autor: Marc Duran
*/

delimiter $$
create procedure sp_seleccionarproductos
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
        ,c.categoria
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

drop procedure sp_seleccionarproductos;
call sp_seleccionarproductos();

