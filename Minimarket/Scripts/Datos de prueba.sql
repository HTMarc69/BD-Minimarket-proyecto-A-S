/* 
Buenas, aqui estan los datos de prueba necesarios,
y le dejo los procedimientos almacenados comentados para facilitar la ejecuion de este.
*/



/*DELIMITER $$
CREATE PROCEDURE sp_insertarFechaVencimiento(IN p_fecha TIMESTAMP)
BEGIN
    INSERT INTO Fecha_vencimiento (fecha_vencimiento) VALUES (p_fecha);
END;
$$*/

CALL sp_insertarFechaVencimiento('2024-02-17');
CALL sp_insertarFechaVencimiento('2024-05-19');
CALL sp_insertarFechaVencimiento('2024-05-15');
CALL sp_insertarFechaVencimiento('2024-09-25');
CALL sp_insertarFechaVencimiento('2024-01-12');
CALL sp_insertarFechaVencimiento('2024-01-12');
CALL sp_insertarFechaVencimiento('2024-07-26');

/*DELIMITER $$
CREATE PROCEDURE sp_insertarProveedor(
    in_nombre VARCHAR(25),
    in_direccion VARCHAR(50),
    in_rut VARCHAR(12),
    in_telefono INT,
    in_email VARCHAR(45)
)
BEGIN
    INSERT INTO provedor (nombre, direccion, rut, telefono, mail)
    VALUES (in_nombre, in_direccion, in_rut, in_telefono, in_email);
END;
$$*/

call sp_insertarProveedor('lorena', 'los robles12', '2929292-0', 99999999, 'wasa@gmail.com');
call sp_insertarProveedor('Macarena', 'el maguaco4', '1235292-7', 93847384, 'ñarña@gmail.com');

/*delimiter $$
create procedure sp_insertarmarca (
	in _marca varchar (10)
)
begin
	insert into MarcaP(marca)
    values (_marca);
end
$$*/

call sp_insertarmarca("Juan Com");
call sp_insertarmarca("Jorge Com");
call sp_insertarmarca("ManuelAC");
call sp_insertarmarca("Soprole");
call sp_insertarmarca("Unimarc");
call sp_insertarmarca("Generico");


/*DELIMITER $$
CREATE PROCEDURE sp_InsertarCategoria(
    IN p_nombre VARCHAR(15),
    IN p_descripcion VARCHAR(50)
)
BEGIN
    INSERT INTO categorias (categoria, descripcion)
    VALUES (p_nombre, p_descripcion);
END;
$$*/

call sp_insertarcategoria ('Saborizantes', 'da sabor');
call sp_insertarcategoria ('Pastas', 'En polvo o listas');
call sp_insertarcategoria ('Bebidas', 'da sabor');
call sp_insertarcategoria ('Higeniene', 'Para el aseo personal');

/*delimiter $$
create procedure sp_insertarproducto (
	in _nombre varchar (15)
    ,in _descripcion varchar(50)
    ,in _precio numeric
    ,in _cantidad_almacen tinyint
    ,in _id_marca tinyint
    ,in _id_vencimiento smallint
    ,in _id_categoria tinyint

)
begin
	insert into Productos (nombre, descripcion, precio, cantidad_almacen, id_marca, id_vencimiento, id_categoria)
    values(_nombre, _descripcion, _precio, _cantidad_almacen, _id_marca, _id_vencimiento, _id_categoria);
end;
$$*/

call sp_insertarproducto('Azucar', 'Azucar para el té',1600, 12, 1, 1, 1);
call sp_insertarproducto('Milo', 'Saborizante para la leche',2450, 10, 5, 1, 1);
call sp_insertarproducto('Tallarines', 'Tipo de pasta',1200, 20, 5, 2, 2);
call sp_insertarproducto('Sal', 'Para condimentar los alimentos',400, 20, 5, 2, 1);
call sp_insertarproducto('Harina', 'Polvo de origen vegetal',1150, 10, 5, 2, 2);
call sp_insertarproducto('Aceite', 'Para condimentar los alimentos',2000, 20, 5, 2, 1);
call sp_insertarproducto('Mermelada', 'Producto creado para',890, 10, 5, 4, 1);
call sp_insertarproducto('Durazno en lata', 'Fruta en conserva',2300, 10, 3, 4, 1);
call sp_insertarproducto('Arroz', 'Cereal',1200, 20, 3, 4, 2);

call sp_insertarproducto('Coca-Cola 3LT', 'Bebida de Fantasia', 2600, 20, 3,2,3);
call sp_insertarproducto('Bilz 3LT', 'Bebida de Fantasia', 2200, 18, 3,2,3);
call sp_insertarproducto('Sprite 2LT', 'Bebida de Fantasia', 1600, 16, 3,2,3);

call sp_insertarproducto('Toallita', 'Producto de Higiene personal', 1250, 10, 6,3,4);
call sp_insertarproducto('Desodorante', 'Producto de Higiene personal', 2800, 5, 6,3,4);
call sp_insertarproducto('Shampoo', 'Producto de Higiene personal', 1500, 5, 6,3,4);

/*delimiter $$
create procedure sp_insertarboleta (
	in _total numeric
    ,in _nombreC_cliente varchar(25)
    ,in _rut varchar(12)
)
begin
	insert into Boletas (total, nombreC_cliente, rut)
    values (_total, _nombreC_cliente, _rut);
end;
$$*/

CALL sp_insertarboleta(100000, "N/A", "20745119-3");

/*delimiter $$
create procedure sp_insertartrabajadores (
	in _nommbreC varchar (25)
    ,in _telefono int 
    ,in _rut varchar (12)
)
begin 
	insert into Trabajadores (nombreC, telefono, rut)
    values (_nommbreC, _telefono, _rut);
end;
$$*/

call sp_insertartrabajadores("Emilio", 56319840,"14682119-5");
call sp_insertartrabajadores("Constanza", 67899319,"20848119-k");


/*DELIMITER $$
CREATE PROCEDURE sp_insertarmediopago(IN p_medio_pago VARCHAR(10))
BEGIN
    INSERT INTO medio_pago (medio_pago) 
    VALUES (p_medio_pago);
END;
$$*/

CALL sp_insertarmediopago('Efectivo');
CALL sp_insertarmediopago('Credito');
CALL sp_insertarmediopago('Debito');

/*delimiter $$
create procedure sp_insertarDboleta(
	 in _cod_boleta smallint
	, in _id_producto tinyint
	, in _cantidadcompra tinyint
    , in _id_mediopago tinyint
    , in _id_trabajador tinyint
)
begin 
	insert into Detalle_boleta(cod_boleta, id_producto, cantidad_compra, id_mediopago, id_trabajador)
    values(_cod_boleta, _id_producto, _cantidadcompra, _id_mediopago, _id_trabajador);
end;
$$*/

call sp_insertarDboleta(18, 7, 3, 1, 2);
call sp_insertarDboleta(18, 8, 4, 1, 2);
call sp_insertarDboleta(18, 3, 1, 1, 2);
call sp_insertarDboleta(18, 6, 2, 1, 2);
