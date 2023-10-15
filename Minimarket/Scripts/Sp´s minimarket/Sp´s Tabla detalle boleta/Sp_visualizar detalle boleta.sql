/* 
Ejemplo de Uso:
Este procedimiento permite visualizar el detalle boleta de la tabla detalle boleta.
CALL sp_visualizarDboleta();
Fecha: 15-10-2023
Autor: Marc Durán
*/


delimiter $$
create procedure sp_visualizarDboleta (
	in _id_detalle smallint
)
begin
	select 
		db.id_detalle
        ,db.cantidad_compra
        ,p.nombre
        ,p.precio
        ,mp.medio_pago
        ,t.nombreC
	from Detalle_boleta db
    left join Productos p
    on db.id_producto = p.id_productos
    left join Medio_pago mp
    on db.id_mediopago = mp.id_mediopago
    left join Trabajadores t
    on db.id_trabajador = t.id_trabajador;
end;
$$
drop procedure sp_visualizarDboleta;
call sp_visualizarDboleta(1);