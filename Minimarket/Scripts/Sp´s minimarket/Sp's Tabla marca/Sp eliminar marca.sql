/* 
Ejemplo de Uso:
Este procedimiento permite eliminar una marca de la tabla marcap.
CALL sp_eliminarmarca();
Fecha: 15-10-2023
Autor: Marc Durán
*/

delimiter $$
create procedure sp_eliminarmarca (
	in _id_marca tinyint
)
begin 
	delete from MarcaP
    where id_marca = _id_marca;
end;
$$
