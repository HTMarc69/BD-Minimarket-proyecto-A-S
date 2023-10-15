/* 
Ejemplo de Uso:
Este procedimiento permite actualizar el detalle boleta en la tabla detalle boleta.
CALL sp_actualizarDboleta();
Fecha: 15-10-2023
Autor: Ángel Fuentes
*/

delimiter $$
create procedure sp_actualizarDboleta(
	in _id_detalle smallint
    ,in _cantidad_compra tinyint
)
begin 
	update Detalle_boleta
    set cantidad_compra = _cantidad_compra
    where id_detalle = _id_detalle;
end;
$$
