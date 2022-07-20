create database Fernandez_Herrera_DB_Consorcio
GO
use Fernandez_Herrera_DB_Consorcio
GO
CREATE  table CALENDARIOS  (
 ID BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1), 
 FECHA DATE NOT NULL,
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
GO
create table CATEGORIAS (
ID INT NOT NULL PRIMARY	KEY identity(1,1),
DESCRIPCION VARCHAR (100)NOT NULL
)
go
create table Avisos (
 ID BIGINT NOT NULL PRIMARY KEY IDENTITY (1,1),
 FECHA DATE NOT NULL,
 DESCRIPCION VARCHAR(5000) NULL,
 IMAGENURL VARCHAR(1000) NOT NULL,
 IDCATEGORIA INT NOT NULL FOREIGN KEY REFERENCES CATEGORIAS(ID),
  Estado bit not null ,
)
GO
create table TipoUsuarios (
 ID INT NOT NULL PRIMARY KEY IDENTITY (1,1),
 DESCRIPCION VARCHAR(50) NOT NULL,
)
GO
create table Usuarios (
 ID BIGINT NOT NULL PRIMARY KEY IDENTITY (1,1),
 NOMBREUSUARIO VARCHAR(50) NULL,
 NOMBRE VARCHAR(50) NULL,
 APELLIDO VARCHAR(50) NOT NULL,
 EMAIL VARCHAR(100) NULL,
 PASS VARCHAR(80) NULL,
 FECHANAC DATE NOT NULL,
 FECHAALTA DATE NOT NULL,
 IDTIPO INT NOT NULL FOREIGN KEY REFERENCES TipoUsuarios(ID),
 Estado bit not null 
)

GO
create table Mensajes(
ID BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
IDUSUARIO BIGINT foreign key references Usuarios(ID) ,
IDUSUARIOENVIADO BIGINT , 
Mensaje Varchar (200),
FechaEnvio DateTime
)
GO
create table EstadosProyectos(
ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
Descripcion Varchar(200)
)
GO
create table Proyectos(
ID BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
NOMBRE Varchar(200) ,
DESCRIPCION Varchar(200) ,
IDESTADO INT foreign key references EstadosProyectos(ID) , 
Monto Money,
FechaAlta DateTime
)
        --DATOS---

--TIPOS USUARIOS--
INSERT INTO TipoUsuarios VALUES('Administrador')
INSERT INTO TipoUsuarios VALUES('Vecino')
--USUARIOS--
INSERT INTO Usuarios VALUES ('NicoAdmin','Nicolas','Herrera','admin@gmail.com','1234','1986/11/04',getdate(),1,1)
INSERT INTO Usuarios VALUES ('DaniVecino','DAniel','Fernandez','vecino@gmail.com','1234','1986/11/04',getdate(),2,1)
--Estados Proyectos
INSERT INTO EstadosProyectos VALUES('Pendiente')
INSERT INTO EstadosProyectos VALUES('Evaluando')
INSERT INTO EstadosProyectos VALUES('Aprobado')
--CALENDARIO
INSERT INTO CALENDARIOS VALUES('28/11/2021','10:00','PINTORES',1)
INSERT INTO CALENDARIOS VALUES('28/11/2021','12:40','SOLARIUM',1)
--SERVICIOS RECOMENDADOS
INSERT INTO  ServiciosRecomendados VALUES('plomeria','el tano','15444333',1)
INSERT INTO  ServiciosRecomendados VALUES('plomeria','manolo','46001553',1)
--CATEGORIAS AVISOS
INSERT INTO CATEGORIAS VALUES('CALENDARIO')
INSERT INTO CATEGORIAS VALUES('MENSAJES')
INSERT INTO CATEGORIAS VALUES('EXPENSAS')
INSERT INTO CATEGORIAS VALUES('SERVICIOS COMUNES')
INSERT INTO CATEGORIAS VALUES('SERVICIOS RECOMENDADOS')
--AVISOS
INSERT INTO Avisos VALUES ('2022/06/22','REUNION DE CONSORCIO EL 24/06','https://www.bing.com/th?id=OIP.FmlS-PaMW23NwkwKOH2bMQHaJR&w=150&h=188&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',1,1)
INSERT INTO Avisos VALUES ('2022/06/22','REUNION DE CONSORCIO EL 24/06','https://th.bing.com/th/id/OIP.apI5d6gkSiQBgi_7hKHK8AHaJR?pid=ImgDet&w=170&h=213&c=7',1,1)
INSERT INTO Avisos VALUES ('2022/06/22','REUNION DE CONSORCIO EL 24/06','https://www.bing.com/th?id=OIP.FmlS-PaMW23NwkwKOH2bMQHaJR&w=150&h=188&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',1,1)
INSERT INTO Avisos VALUES ('2022/06/22','REUNION DE CONSORCIO EL 24/06','https://th.bing.com/th/id/OIP.apI5d6gkSiQBgi_7hKHK8AHaJR?pid=ImgDet&w=170&h=213&c=7',1,1)

INSERT INTO Avisos VALUES ('2022/06/22','REUNION DE CONSORCIO EL 24/06','https://www.bing.com/th?id=OIP.FmlS-PaMW23NwkwKOH2bMQHaJR&w=150&h=188&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',1,1)
INSERT INTO Avisos VALUES ('2022/06/22','REUNION DE CONSORCIO EL 24/06','https://th.bing.com/th/id/OIP.apI5d6gkSiQBgi_7hKHK8AHaJR?pid=ImgDet&w=170&h=213&c=7',1,1)

INSERT INTO Avisos VALUES ('2022/06/22','REUNION DE CONSORCIO EL 24/06','https://www.bing.com/th?id=OIP.FmlS-PaMW23NwkwKOH2bMQHaJR&w=150&h=188&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',1,1)
INSERT INTO Avisos VALUES ('2022/06/22','REUNION DE CONSORCIO EL 24/06','https://th.bing.com/th/id/OIP.apI5d6gkSiQBgi_7hKHK8AHaJR?pid=ImgDet&w=170&h=213&c=7',1,1)

INSERT INTO Avisos VALUES ('2022/06/22','REUNION DE CONSORCIO EL 24/06','https://www.bing.com/th?id=OIP.FmlS-PaMW23NwkwKOH2bMQHaJR&w=150&h=188&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',1,1)
INSERT INTO Avisos VALUES ('2022/06/22','REUNION DE CONSORCIO EL 24/06','https://th.bing.com/th/id/OIP.apI5d6gkSiQBgi_7hKHK8AHaJR?pid=ImgDet&w=170&h=213&c=7',1,1)

INSERT INTO Avisos VALUES ('2022/06/22','REUNION DE CONSORCIO EL 24/06','https://www.bing.com/th?id=OIP.FmlS-PaMW23NwkwKOH2bMQHaJR&w=150&h=188&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',1,1)
INSERT INTO Avisos VALUES ('2022/06/22','REUNION DE CONSORCIO EL 24/06','https://th.bing.com/th/id/OIP.apI5d6gkSiQBgi_7hKHK8AHaJR?pid=ImgDet&w=170&h=213&c=7',1,1)

--Proyectos
INSERT INTO Proyectos VALUES ('Deck','Pintura nueva',3,30000,'01/10/2022')

GO
	----SP----
Create PROCEDURE sp_ins_usuario(
@NombreUsuario VARCHAR (50),
@Nombre VARCHAR (50),
@Apellido VARCHAR (50),
@Email VARCHAR (100),
@Pass VARCHAR (80),
@FechaNac Date
)
AS 
BEGIN
	Begin try 
		INSERT INTO Usuarios(NOMBREUSUARIO,NOMBRE,APELLIDO,EMAIL,PASS,FECHANAC,FECHAALTA,IDTIPO,Estado) VALUES(@NombreUsuario,@Nombre,@Apellido,@Email,@Pass,@FechaNac,getDate(),2,1)
	End try
    Begin Catch
        RAISERROR('Error grave al guardar el usuario', 16, 1)
	End Catch
END

go

CREATE PROCEDURE sp_ins_proyecto(
@Nombre VARCHAR (50),
@Descripcion VARCHAR (200),
@Monto Money
)
AS 
BEGIN
	Begin try 
		INSERT INTO Proyectos(NOMBRE,DESCRIPCION,IDESTADO,Monto,FechaAlta) VALUES(@Nombre,@Descripcion,1,@Monto,getDate())
	End try
    Begin Catch
        RAISERROR('Error grave al Enviar el proyecto', 16, 1)
	End Catch
END

Create PROCEDURE sp_ins_Mensaje(
@IDUsuarioEnvia Int,
@IDUsuarioRecibe Int,
@Mensaje varchar(200)
)
AS 
BEGIN
	Begin try 
		INSERT INTO Mensajes(IDUSUARIO,IDUSUARIOENVIADO,Mensaje,FechaEnvio) VALUES(@IDUsuarioEnvia,@IDUsuarioRecibe,@Mensaje,getDate())
	End try
    Begin Catch
        RAISERROR('Error grave al Enviar el proyecto', 16, 1)
	End Catch
END
