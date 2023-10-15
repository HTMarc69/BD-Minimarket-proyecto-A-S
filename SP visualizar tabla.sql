delimiter $$
create procedure sp_visualizartabla
(
	in _nombretabla varchar(20)

)
begin
	set @mini = concat('select * from ', _nombretabla); 
    /* el comando set se utiliza para asignar un valor a una varible(@mini) para poder fucionar los dos valores 'select...' y _nombretabla use la funcion concat
    importante dejar un espacio al final de from por que me tarde caleta en darme cuenta quedaba error xdxdxdd*/
    prepare Almacenar from @mini;
    /* el comando prepare(se crea una sentencia en la cual queda almacenada en una variable)
    toma la consulta almacenada y la prepara para ejecutarla*/
    execute Almacenar;
    /* se ejecuta :D*/
    deallocate prepare Almacenar;
    /*deallocate prepare lo recomiendan para liberar los recursos asociados con ella para no malgastar recursos y mejor eficiencia de memoria*/
    -- atte marc pa los chiquillos :)
end;
$$

drop procedure sp_visualizartabla;

call sp_visualizartabla("Medio_pago");