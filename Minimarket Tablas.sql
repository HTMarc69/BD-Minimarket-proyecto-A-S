create database if not exists Minimarket
character set "utf8mb4";

use Minimarket;

create table if not exists Categorias(
	id_categoria tinyint primary key auto_increment
    ,categoria varchar(15) not null
    ,descripcion varchar(50) not null
);

create table if not exists Fecha_vencimiento(
	id_vencimiento smallint primary key auto_increment
    ,fecha_vencimiento date not null
    ,fecha_entrada timestamp
    default current_timestamp
);

create table if not exists MarcaP(
	id_marca tinyint primary key auto_increment
    ,marca varchar(10)
);

create table if not exists Provedor(
	id_provedor tinyint primary key auto_increment
    ,nombre varchar(25) not null
    ,direccion varchar(50) not null
    ,telefono int not null
    ,rut varchar(12) not null
    ,Mail varchar(45) not null
);

create table if not exists Productos(
	id_productos tinyint primary key auto_increment
    ,nombre varchar(15) not null
    ,descripcion varchar(50) not null
    ,precio numeric not null
    ,cantidad_almacen tinyint not null
    ,id_categoria tinyint
    ,foreign key (id_categoria)
    references Categorias (id_categoria)
    ,id_vencimiento smallint
    ,foreign key (id_vencimiento)
    references Fecha_vencimiento (id_vencimiento)
    ,id_marca tinyint 
    ,foreign key (id_marca)
    references MarcaP (id_marca)
    ,id_provedor tinyint
    ,foreign key (id_provedor)
    references Provedor(id_provedor)
);

create table if not exists Boletas(
	id_boleta smallint primary key auto_increment
    ,total numeric not null
    ,nombreC_cliente varchar(25)
    ,rut varchar(10) not null
    ,id_cliente smallint
);

create table if not exists Medio_pago(
	id_mediopago tinyint primary key auto_increment
    ,medio_pago varchar(10) not null
);

create table if not exists Trabajadores (
	id_trabajador tinyint primary key auto_increment
    ,nombreC varchar(25) not null
    ,telefono int not null
    ,rut varchar(12) not null
);

create table if not exists Detalle_boleta(
	id_detalle smallint primary key auto_increment
    ,id_producto tinyint
    ,foreign key (id_producto)
    references Productos (id_productos)
    ,cantidad_compra tinyint not null
    ,id_mediopago tinyint
    ,foreign key (id_mediopago)
    references Medio_pago(id_mediopago)
    ,id_trabajador tinyint
    ,foreign key (id_trabajador)
    references Trabajadores(id_trabajador)
    ,fecha_compra timestamp
    default current_timestamp
    ,cod_boleta tinyint not null
);
