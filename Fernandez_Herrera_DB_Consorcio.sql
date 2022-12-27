
SET DATEFORMAT dmy; 
create database Fernandez_Herrera_DB_Consorcio
GO
use Fernandez_Herrera_DB_Consorcio
GO
create  table CALENDARIOS  (
 ID BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1), 
 FECHA VARCHAR(10) NOT NULL,
 HORA  TIME NOT NULL,
EVENTO VARCHAR(50) NOT NULL,
 DESCRIPCION VARCHAR(MAX) NULL,
 ESTADO BIT NOT NULL
)
go
create table tbl_contents (
	id int identity,
	idvecino int,
	mes varchar(40),
	content varbinary(max),
	constraint pk_tbl_contents primary key(id)
)
go
create table ServiciosRecomendados(
ID BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1), 
txt_Servicio VARCHAR(50) NOT NULL,
txt_Nombre VARCHAR(50) NOT NULL,
NroContacto  VARCHAR(15) NOT NULL,
Horarios Varchar(50) NULL,
 ESTADO BIT NOT NULL,
)
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

create table Departamento(
ID Int NOT NULL PRIMARY KEY IDENTITY (1,1),
Descripcion varchar(20)
)
go
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
 IDDepto INT NOT NULL FOREIGN KEY REFERENCES Departamento(ID),
 Estado bit not null 
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
--Departamento-
INSERT INTO Departamento VALUES ('ADMIN')
INSERT INTO Departamento VALUES ('PB A')
INSERT INTO Departamento VALUES ('PB B')
INSERT INTO Departamento VALUES ('1 A')
INSERT INTO Departamento VALUES ('1 B')
--USUARIOS--
INSERT INTO Usuarios VALUES ('NicoAdmin','Nicolas','Herrera','admin@gmail.com','1234','1986/11/04',getdate(),1,1,1)
INSERT INTO Usuarios VALUES ('DaniVecino','DAniel','Fernandez','vecino@gmail.com','1234','1986/11/04',getdate(),2,2,1)
--Estados Proyectos
INSERT INTO EstadosProyectos VALUES('Pendiente')
INSERT INTO EstadosProyectos VALUES('Evaluando')
INSERT INTO EstadosProyectos VALUES('Aprobado')
--CALENDARIO
INSERT INTO CALENDARIOS VALUES('23/08/2022','08:00','GASISTA',' ',1)
INSERT INTO CALENDARIOS VALUES('03/08/2021','08:00','GASISTA',' ',1)
INSERT INTO CALENDARIOS VALUES( CONVERT(varchar, GETDATE(),103),'10:00','REUNION CONSORCIO','LOS TEMAS DE ESTA REUNION SERAN PROXIMOS PROYECTOS',1)
INSERT INTO CALENDARIOS VALUES(CONVERT(varchar, GETDATE(),103),'08:00','GASISTA','REPARACION DE ALA B',1)
INSERT INTO CALENDARIOS VALUES(CONVERT(varchar, GETDATE(),103),'10:30','PINTORES','',1)
INSERT INTO CALENDARIOS VALUES(CONVERT(varchar, GETDATE(),103),'10:00','REUNION CONSORCIO','LOS TEMAS DE ESTA REUNION SERAN PROXIMOS PROYECTOS',1)
INSERT INTO CALENDARIOS VALUES(CONVERT(varchar, GETDATE(),103),'08:00','GASISTA','REPARACION DE ALA B',1)
INSERT INTO CALENDARIOS VALUES(CONVERT(varchar, GETDATE(),103),'10:00','REUNION CONSORCIO','LOS TEMAS DE ESTA REUNION SERAN PROXIMOS PROYECTOS',1)



--SERVICIOS RECOMENDADOS
INSERT INTO  ServiciosRecomendados VALUES('plomeria','el tano','15444333','lun-vie de 8 a 17hs',1)
INSERT INTO  ServiciosRecomendados VALUES('plomeria','manolo','46001553','24hs',1)
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

---	USUARIOS-------
Create PROCEDURE sp_ins_usuario(
@NombreUsuario VARCHAR (50),
@Nombre VARCHAR (50),
@Apellido VARCHAR (50),
@Email VARCHAR (100),
@Pass VARCHAR (80),
@FechaNac Date,
@IdTipo int,
@IdDepto int

)
AS 
BEGIN
	Begin try 
		INSERT INTO Usuarios(NOMBREUSUARIO,NOMBRE,APELLIDO,EMAIL,PASS,FECHANAC,FECHAALTA,IDTIPO,IDDEPTO,Estado) VALUES(@NombreUsuario,@Nombre,@Apellido,@Email,@Pass,@FechaNac,getDate(),@IdTipo,@IdDepto,1)
	End try
    Begin Catch
        RAISERROR('Error grave al guardar el usuario', 16, 1)
	End Catch
END

go


Create PROCEDURE sp_Modif_usuario(
@ID bigint,
@NombreUsuario VARCHAR (50),
@Nombre VARCHAR (50),
@Apellido VARCHAR (50),
@Email VARCHAR (100),
@Pass VARCHAR (80),
@FechaNac Date,
@IdTipo int,
@IdDepto int

)
AS 
BEGIN
	Begin try 
	UPDATE Usuarios SET NOMBREUSUARIO =@NombreUsuario,NOMBRE=@Nombre,APELLIDO=@Apellido,EMAIL=@Email,FECHANAC=@FechaNac,PASS=@Pass,IDTIPO=@IdTipo,IDDepto=@IdDepto,Estado=1 where ID =@ID;   

	End try
    Begin Catch
        RAISERROR('Error grave al guardar el usuario', 16, 1)
	End Catch
END



---	PROYECTOS-------
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
GO

---	SERVICIOS-------
CREATE PROCEDURE sp_ins_Servicio(
@Nombre VARCHAR (50),
@Servicio VARCHAR (50),
@NroContacto VARCHAR(15),
@Horarios VARCHAR (50)
)
AS 
BEGIN
	Begin try 
		INSERT INTO ServiciosRecomendados(txt_Servicio,txt_Nombre,NroContacto,Horarios,ESTADO) VALUES(@Servicio,@Nombre,@NroContacto,@Horarios,1)
	End try
    Begin Catch
        RAISERROR('Error grave al Enviar el proyecto', 16, 1)
	End Catch
END

