create database examen2

use examen2

create table usuario
(
id INT PRIMARY KEY IDENTITY(1,1),
nombre VARCHAR(50) NOT NULL, 
apellido VARCHAR(50) NOT NULL,
fecha char (50) not null default '01/01/1900',
edad INT  not null,
correo char (50) not null unique,
carro char (2) not null

)

CREATE TABLE EstadisticasEncuestas (
    id INT PRIMARY KEY IDENTITY(1,1),
    cantidadEncuestas INT NOT NULL DEFAULT 0,
    cantidadConCarroPropio INT NOT NULL DEFAULT 0,
    cantidadSinCarroPropio INT NOT NULL DEFAULT 0
);

SELECT 
    (SELECT COUNT(*) FROM usuario) AS cantidadEncuestas,
    (SELECT COUNT(*) FROM usuario WHERE carro = 'Si') AS cantidadConCarroPropio,
    (SELECT COUNT(*) FROM usuario WHERE carro = 'No') AS cantidadSinCarroPropio;

insert into usuario VAlUES('cris', 'arroyo', '5/8/1996', '27', 'cris-liga@hotmail.com', 'si')
insert into usuario VAlUES('sofia', 'alvarado', '2/7/2000', '24', 'sofiaarroyo@hotmail.com', 'no')
go
select *from usuario
