-- insertar crear boleta
delimiter $$
create procedure sp_crearboleta
(
	in _total numeric
    ,in _rut varchar(10)
    ,in _cantidad_compra tinyint
)
begin
	insert into Boletas(total, rut)
    values(_total,_rut);
    insert into Detalle_boleta(cantidad_compra)
    values(_cantidad_compra);
end
$$
