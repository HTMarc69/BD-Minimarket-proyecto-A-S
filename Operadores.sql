create database if not exists Biblioteca;

use Biblioteca;

create table if not exists  biblioteca(
    idbiblioteca int primary key auto_increment,
    descripcion varchar(100),
    direccion varchar(100),
    telefono varchar(12),
    correo varchar(100)
);

create table if not exists autor (
    idautor int primary key auto_increment,
    nombre varchar(100),
    apellido varchar(100),
    fecha_nacimiento date,
    fecha_muerte date
);

create table if not exists idioma (
    ididioma int primary key auto_increment,
    descripcion varchar(40)
);

create table if not exists libro (
    idlibro int primary key auto_increment,
    titulo  varchar(200),
    resumen text(1000),
    isbn varchar(13),
    idautor int,
    ididioma int
);


create table if not exists genero (
    idgenero int primary key auto_increment,
    descripcion varchar(100)
);


create table if not exists libro_genero (
	idlibro_genero int primary key auto_increment,
    idlibro int,
    idgenero int
);

create table if not exists socio (
    idsocio int primary key auto_increment,
    rut varchar(12),
    nombre varchar(100),
    apellido varchar(100),
    fecha_ingreso date
);

create table if not exists estado (
    idestado int primary key auto_increment,
    descripcion varchar(30)
);

create table if not exists prestamos (
    idprestamo int primary key auto_increment,
    idlibro int,
    fecha_devolucion date,
    idestado int,
    fecha_prestamo date,
    idsocio int
);

alter table libro add foreign key (idautor)
references autor(idautor);

alter table libro add foreign key (ididioma)
references idioma(ididioma);

alter table libro_genero add foreign key (idlibro)
references libro(idlibro);

alter table libro_genero add foreign key (idgenero)
references genero(idgenero);

alter table prestamos add foreign key (idlibro)
references libro(idlibro);

alter table prestamos add foreign key (idestado)
references estado(idestado);

alter table prestamos add foreign key (idsocio)
references socio(idsocio);

--

insert into autor (nombre, apellido, fecha_nacimiento, fecha_muerte)
values ("Julio", 'Verne', '1828-02-08', '1905-03-24');

insert into autor (nombre, apellido, fecha_nacimiento, fecha_muerte)
values ("Brandon", "Sanderson", '1975-12-19', null);

insert into autor (nombre, apellido, fecha_nacimiento, fecha_muerte)
values ("Benito", "Camelas", '1930-07-18', '1999-09-01');

--

insert into idioma (ididioma, descripcion)
values (1, "español");

insert into idioma (ididioma, descripcion)
values (2, "frances");

insert into idioma (ididioma, descripcion)
values (3, "ingles");

--

insert into genero (idgenero, descripcion)
values (1, "ciencia_ficcion");

insert into genero (idgenero, descripcion)
values (2, "fantasia");

insert into genero (idgenero, descripcion)
values (3, "novela_policiaca");

--

insert into estado (idestado, descripcion)
values (1, "Mantenimiento");

insert into estado (idestado, descripcion)
values (2, "prestado");

insert into estado (idestado, descripcion)
values (3, "disponible");

insert into estado (idestado, descripcion)
values (4, "reservado");

--

insert into socio (idsocio, rut, nombre, apellido, fecha_ingreso)
values (1, 12345678-5, 'Cruz', 'Rojas', '2011-12-06');

--

insert into libro(titulo, idautor, ididioma)
values ('Mistborn parte 1', 2, 3);

insert into libro(titulo, idautor, ididioma)
values ('Mistborn parte 23', 2, 3);

insert into libro(titulo, idautor, ididioma)
values ('Mistborn parte 3', 2, 3);

insert into libro(titulo, idautor, ididioma)
values ('la vuelta al mundo en 80 dias', 1, 1);

insert into libro(titulo, idautor, ididioma)
values ('Miguel strogoff', 1, 1);

insert into libro(titulo, idautor, ididioma)
values ('Mariano fiesta', 3, 1);

insert into libro(titulo, idautor, ididioma)
values ('Mariano fiesta 2', 3, 1);

insert into libro(titulo, idautor, ididioma)
values ('Mariano fiesta 3', 3, 1);

insert into libro(titulo, idautor, ididioma)
values ('Mariano fiesta: de regreso a casa', 3, 1);

--

update autor
set nombre = 'Camilo'
where idautor = 3;

update libro
set titulo = 'Mistborn parte 2'
where idlibro = 2;

select*from libro 
where idIdioma = 3; 

delete from libro
where titulo = 'Mariano fiesta: de regreso a casa';