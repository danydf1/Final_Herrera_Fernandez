<<<<<<< HEAD


SET DATEFORMAT dmy;

create database Fernandez_Herrera_DB_Consorcio
GO
use Fernandez_Herrera_DB_Consorcio
GO
CREATE  table CALENDARIOS  (
 ID BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1), 
 FECHA varchar(10) NOT NULL,
 HORA  TIME NOT NULL,
 TITULO VARCHAR(50) NOT NULL,
 ESTADO BIT NOT NULL,
)
go
create table tbl_contents (
	id int identity,
	content varbinary(max),
	constraint pk_tbl_contents primary key(id)
);
go
create table ServiciosRecomendados(
ID BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1), 
txt_Servicio VARCHAR(50) NOT NULL,
txt_Nombre VARCHAR(50) NOT NULL,
NroContacto  VARCHAR(15) NOT NULL,
 ESTADO BIT NOT NULL,
);
        --DATOS---

--CALENDARIO
INSERT INTO CALENDARIOS VALUES('28/11/2021','10:00','PINTORES',1)
INSERT INTO CALENDARIOS VALUES('28/11/2021','12:40','SOLARIUM',1)

INSERT INTO  ServiciosRecomendados VALUES('plomeria','el tano','15444333',1)
=======


SET DATEFORMAT dmy;

create database Fernandez_Herrera_DB_Consorcio
GO
use Fernandez_Herrera_DB_Consorcio
GO
CREATE  table CALENDARIOS  (
 ID BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1), 
 FECHA varchar(10) NOT NULL,
 HORA  TIME NOT NULL,
 TITULO VARCHAR(50) NOT NULL,
 ESTADO BIT NOT NULL,
)
go
create table tbl_contents (
	id int identity,
	content varbinary(max),
	constraint pk_tbl_contents primary key(id)
);
go
create table ServiciosRecomendados(
ID BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1), 
txt_Servicio VARCHAR(50) NOT NULL,
txt_Nombre VARCHAR(50) NOT NULL,
NroContacto  VARCHAR(15) NOT NULL,
 ESTADO BIT NOT NULL,
);
        --DATOS---

--CALENDARIO
INSERT INTO CALENDARIOS VALUES('28/11/2021','10:00','PINTORES',1)
INSERT INTO CALENDARIOS VALUES('28/11/2021','12:40','SOLARIUM',1)

INSERT INTO  ServiciosRecomendados VALUES('plomeria','el tano','15444333',1)
>>>>>>> 610baaffcb509e662ab9a6913b6fccc66b75f14d
INSERT INTO  ServiciosRecomendados VALUES('plomeria','manolo','46001553',1)