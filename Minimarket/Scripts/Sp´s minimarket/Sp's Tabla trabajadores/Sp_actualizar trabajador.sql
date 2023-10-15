/* 
Ejemplo de Uso:
Este procedimiento permite actualizar un trabajador de la tabla trabajadores.
CALL sp_actualizartrabajador();
Fecha: 15-10-2023
Autor: Marc Durán
*/

delimiter $$
create procedure sp_actualizartrabajador (
	in _id_trabajador tinyint
    ,in _nombreC varchar(25)
    ,in _telefono int
    ,in _rut varchar (12)
)
begin 
	update Trabajadores
    set nombreC = _nombreC
    , telefono = _telefono
    , rut = _rut
    where id_trabajador = _id_trabajador;
end;
$$

drop procedure sp_actualizartrabajador;

call sp_actualizartrabajador(1, "elpepe", 232323, "121212-0");