/* 
Ejemplo de Uso:
Este procedimiento permite visualizar la marca de la tabla detalle marcap.
CALL sp_visualizarmarca();
Fecha: 15-10-2023
Autor: Marc Durán
*/

delimiter $$
create procedure sp_visualizarmarca (
)
begin
	select * from MarcaP;
end;
$$
