/* 
Ejemplo de Uso:
Este procedimiento permite actualizar una marca en la tabla marcap.
CALL sp_actualizarmarca();
Fecha: 15-10-2023
Autor: Marc Durán
*/

delimiter $$
create procedure sp_actualizarmarca (
	in _id_marca tinyint
    ,in _marca varchar(10)
)
begin
	update MarcaP
    set marca = _marca
    where id_marca = _id_marca;
end;
$$
