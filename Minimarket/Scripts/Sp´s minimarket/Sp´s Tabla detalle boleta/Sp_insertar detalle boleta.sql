/* 
Ejemplo de Uso:
Este procedimiento permite insertar un detalle de boleta de la tabla detalle boleta.
CALL sp_insertarDboleta();
Fecha: 15-10-2023
Autor: Ángel Funtes
*/

delimiter $$
create procedure sp_insertarDboleta(
	 in _cod_boleta smallint
	, in _id_producto tinyint
	, in _cantidadcompra tinyint
    , in _id_mediopago tinyint
    , in _id_trabajador tinyint
)
begin 
	insert into Detalle_boleta(cod_boleta, id_producto, cantidad_compra, id_mediopago, id_trabajador)
    values(_cod_boleta, _id_producto, _cantidadcompra, _id_mediopago, _id_trabajador);
end;
$$

drop procedure sp_insertarDboleta;
call sp_insertarDboleta(18, 8, 7, 1, 2);