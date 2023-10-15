/* 
Ejemplo de Uso:
Este procedimiento permite eliminar un detalle boleta de la tabla detalle boleta.
CALL sp_eliminarDboleta();
Fecha: 15-10-2023
Autor: Ángel Fuentes
*/

delimiter  $$
create procedure sp_eliminarDboleta (
	in _id_detalle smallint
)
begin
	delete from Detalle_boleta
    where id_detalle = _id_detalle;
end
$$