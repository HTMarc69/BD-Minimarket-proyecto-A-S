/* 
Ejemplo de Uso:
Este procedimiento permite actualizar una boleta en la tabla boleta.
CALL sp_actualizarboleta();
Fecha: 15-10-2023
Autor: Marc Durán
*/

delimiter $$
create procedure sp_actualizarboleta(
	in _id_boleta smallint
    , in _total numeric
    , in _nombreC_cliente varchar(25)
    , in _rut varchar(12)
)
begin
	update Boletas 
    set total = _total
    ,nombreC_cliente = _nombreC_cliente
    ,rut = _rut
    where id_boleta = _id_boleta;
end;
$$
