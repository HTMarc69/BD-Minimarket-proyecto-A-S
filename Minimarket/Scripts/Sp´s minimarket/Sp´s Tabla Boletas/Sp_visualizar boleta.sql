/* 
Ejemplo de Uso:
Este procedimiento permite visualizar una boleta de la tabla boleta.
CALL sp_visualizarboleta();
Fecha: 15-10-2023
Autor: Ángel Fuentes
*/

delimiter $$
create procedure sp_visualizarboleta(
	in _cod_boleta tinyint
)
begin
	select 
		 db.id_detalle
		,db.cod_boleta
        ,db.cantidad_compra
        ,p.nombre
        ,p.precio
        ,mp.medio_pago
	from Boletas b, detalle_boleta db
    left join Productos p
    on db.id_producto = p.id_productos
    left join Medio_pago mp
    on db.id_mediopago = mp.id_mediopago
    where cod_boleta = _cod_boleta;
end;
$$


drop procedure sp_visualizarboleta;
call sp_visualizarboleta(18);