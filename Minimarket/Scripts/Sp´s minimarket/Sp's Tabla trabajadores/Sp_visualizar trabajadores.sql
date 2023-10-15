/* 
Ejemplo de Uso:
Este procedimiento permite seleccionar la tabla trabajadores.
CALL sp_visualizartrabajadores();
Fecha: 15-10-2023
Autor: Thomas Gómez
*/
delimiter $$
create procedure sp_visualizartrabajadores (
)
begin 
	select * from Trabajadores;
end;
$$
 
 call sp_visualizartrabajadores();