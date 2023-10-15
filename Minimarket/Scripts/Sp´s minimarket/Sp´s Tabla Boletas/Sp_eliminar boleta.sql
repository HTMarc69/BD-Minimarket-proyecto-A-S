/* 
Ejemplo de Uso:
Este procedimiento permite eliminar una boleta de la tabla boleta.
CALL sp_eliminarboleta();
Fecha: 15-10-2023
Autor: Marc Durán
*/

delimiter $$
create procedure sp_eliminarboleta(
	in _id_boleta smallint
)
begin
	delete from boletas
    where id_boleta = _id_boleta;
end;
$$
