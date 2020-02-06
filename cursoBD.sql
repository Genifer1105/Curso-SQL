#Crear BD
create database curso;

#Usar BD
use curso;

#Eliminar BD
drop database curso;

#Ver las tablas
show tables;

#Crear tabla
create table usuario(
nombre varchar(50),
identificacion int(10) not null,
primary key(identificacion)
);

#Ver los campos de una tabla
describe usuario;

drop table usuario;

create table alumno(
nombre varchar(50),
apellido varchar(50),
direccion varchar(100),
telefono varchar(10),
edad int(2)
);

#Insertar datos en la tabla alumno, insert into alumno (nombre,apellido,etc)
insert into alumno values ('Genifer','Moreno','Aguacatala','123456789',21);
insert into alumno values ('Alejandro','Jaramillo','Caldas','353245242',22);
insert into alumno values ('David','Castro','Estrella','8245243',23);
insert into alumno values ('Michell','Muñoz','Caicedo','25234534',20);
insert into alumno values ('Paula','Morales','Caicedo','4685353',22);
insert into alumno values ('Marcela', 'Guzman', 'Medellin', null, 35);

#Mostrar todos los registros de la tabla
select * from alumno;

#Mostrar algunos datos de la tabla
select nombre,edad from alumno;

#Consulta con where
select * from alumno where nombre = 'Genifer';

#Operadores relacionales : <> distinto, < menor, > mayor, >= mayor que, <= menor que
select * from alumno where nombre <> 'Genifer';
select nombre,apellido from alumno where edad > 20;

#Borrar todos los registros de la tabla
delete from alumno;

#Borrar algún registro de la tabla
delete from alumno where nombre = 'Genifer';

#Modificar registro, actualizar la edad para todos 
update alumno set edad = 33;
update alumno set edad = 25 where nombre = 'Alejandro';

#Eliminar una BD si existe
drop database if exists cursos;

#Crear una BD si no existe
create database if not exists estudiante;

# Vacia las tablas
truncate table alumno; 

# Tipo de dato numérico positivos 
# id integer unsigned not null, 


