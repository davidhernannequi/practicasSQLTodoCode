


----Creacion de base de datos Escuela_Musica
--create database Escuela_Musica;
--go



-- Usar la base de datos
use Escuela_Musica;
go



--Creacion de las tablas, columnas y relaciones

create table Alumnos (
id_Alumno int identity(1,1) not null,
nombre varchar(35) not null,
apellido varchar(35) not null,
fechaNacimiento date not null,
direccion varchar(35) not null,
telefono varchar(15) not null,
email varchar(35),
Constraint PK_id_Alumno Primary Key (id_Alumno)
)


create table Cursos (
id_Curso int identity(1,1) not null,
nombre varchar(35) not null,
nivel_Habilidad varchar(35) not null,
tipo_Instrumento varchar(35) not null,
Constraint PK_id_Curso Primary Key (id_Curso)
)

create table Inscripciones (
id_Inscripcion int identity(1,1) not null,
fecha_Inscripcion date not null,
abono_Inscripcion bit not null,
id_Alumno int not null,
id_Curso int not null,
Constraint PK_id_Inscripcion Primary Key (id_Inscripcion)
)



-- Agregar las restricciones de clave foránea

Alter table Inscripciones
ADD
Constraint FK_Inscripciones_id_Alumno Foreign Key (id_Alumno) References Alumnos(id_Alumno),
Constraint FK_Inscripciones_id_Curso Foreign Key (id_Curso) References Cursos(id_Curso);