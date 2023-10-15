/* 
Ejemplo de Uso:
Este procedimiento permite insertar una boleta en la tabla boleta.
CALL sp_insertarboleta();
Fecha: 15-10-2023
Autor: Marc Durán
*/

delimiter $$
create procedure sp_insertarboleta (
	in _total numeric
    ,in _nombreC_cliente varchar(25)
    ,in _rut varchar(12)
)
begin
	insert into Boletas (total, nombreC_cliente, rut)
    values (_total, _nombreC_cliente, _rut);
end;
$$

call sp_insertarboleta(100000, "N/A", "20745119-3");