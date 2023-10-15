/* 
Ejemplo de Uso:
Este procedimiento permite insertar un trabajador en la tabla trabajadores.
CALL sp_insertartrabajadores();
Fecha: 15-10-2023
Autor: Marc Durán
*/


delimiter $$
create procedure sp_insertartrabajadores (
	in _nommbreC varchar (25)
    ,in _telefono int 
    ,in _rut varchar (12)
)
begin 
	insert into Trabajadores (nombreC, telefono, rut)
    values (_nommbreC, _telefono, _rut);
end;
$$


drop procedure sp_insertartrabajadores;
call sp_insertartrabajadores("pepe", 28282828,"1818119-0");