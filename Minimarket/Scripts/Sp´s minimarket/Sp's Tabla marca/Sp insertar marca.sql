/* 
Ejemplo de Uso:
Este procedimiento permite insertar una marca en la tabla marcap.
CALL sp_insertarmarca();
Fecha: 15-10-2023
Autor: Marc Durán
*/

delimiter $$
create procedure sp_insertarmarca (
	in _marca varchar (10)
)
begin
	insert into MarcaP(marca)
    values (_marca);
end
$$
