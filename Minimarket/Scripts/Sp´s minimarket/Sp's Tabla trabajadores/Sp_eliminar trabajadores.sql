/* 
Ejemplo de Uso:
Este procedimiento permite eliminar un trabajador de la tabla trabajadores.
CALL sp_eliminartrabajadores();
Fecha: 15-10-2023
Autor: Thomas Gómez
*/

delimiter $$
create procedure sp_eliminartrabajadores (
	in _id_trabajador tinyint
)
begin
	delete from trabajadores
    where id_trabajador = _id_trabajador;
end;
$$

drop procedure sp_eliminartrabajadores;
call sp_eliminartrabajadores(1);