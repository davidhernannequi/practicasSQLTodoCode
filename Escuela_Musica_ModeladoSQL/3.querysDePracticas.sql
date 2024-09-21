--Consultas SQL (Nivel 1):
--1) Listar todos los alumnos inscriptos en el curso de "Guitarra Intermedio".
Select Concat(A.Nombre, ' ', A.Apellido) AS 'Inscriptos Guitarra Intermedio'
From Alumnos A
inner join Inscripciones I on A.id_Alumno = I.id_Alumno
inner join Cursos C on I.id_Curso = C.id_Curso
Where C.nombre = 'Guitarra Intermedio'

--2) Mostrar todas las inscripciones realizadas después del 19 de enero de 2023.
Select I.fecha_Inscripcion
From Inscripciones I
Where I.fecha_Inscripcion > '20230119'

--3) Contar la cantidad de inscripciones abonadas

Select Count(I.id_Inscripcion) AS 'Inscripciones abonadas'
From Inscripciones I
Where I.abono_Inscripcion = 1

--4) Listar los cursos de nivel avanzado

Select C.nombre
From Cursos C
Where C.nivel_Habilidad LIKE '%avanzado'


--Consultas SQL (Nivel 2):
--5) Listar los nombres y apellidos de los alumnos
--   junto con los nombres de los cursos a los que están inscritos.
Select Concat(A.nombre, ' ',A.apellido) AS 'Nombre y Apellido', C.nombre AS 'Curso'
From Alumnos A
inner join Inscripciones I on A.id_Alumno = I.id_Alumno
inner join Cursos C on I.id_Curso = C.id_Curso
order by C.nombre desc

--6)Obtener el nombre y apellido de los alumnos que están inscritos en más de un curso.
Select Concat(A.nombre, ' ', A.apellido) AS 'Nombre y Apellido', Count(I.id_Curso) AS 'Cantidad Cursos'
From Alumnos A
inner join Inscripciones I on A.id_Alumno = I.id_Alumno
group by A.nombre, A.apellido
having Count(I.id_Curso) > 1
order by A.nombre asc

--7)Mostrar el nombre de cada curso y la cantidad de alumnos inscritos en cada uno.
Select C.nombre, Count(I.id_Inscripcion) AS 'Alumnos Inscriptos'
From Cursos C
inner join Inscripciones I on C.id_Curso = I.id_Curso
group by C.nombre
order by C.nombre desc


--Consultas SQL (Nivel 3):
--8) Listar los alumnos que no han abonado la inscripción.
Select Concat(A.nombre, ' ', A.apellido) AS 'Alumnos', I.abono_Inscripcion
From Alumnos A
inner join Inscripciones I on A.id_Alumno = I.id_Alumno
where I.abono_Inscripcion = 0

--9) Obtener los nombres de los cursos que tienen al menos un alumno mayor de 20 años inscrito.
--Select C.nombre

--From Cursos C
--inner join Inscripciones I on C.id_Curso = I.id_Curso
--inner join Alumnos A on I.id_Alumno = A.id_Alumno
--group by C.nombre
--Having A.fechaNacimiento = 

--10) Listar el nombre y apellido de los alumnos
--	  junto con los nombres de los cursos en los que están inscritos,
--    pero solo para aquellos que se inscribieron en 2023.

Select Concat(A.nombre, ' ', A.apellido) AS 'Alumnos', C.nombre AS 'Curso', format(I.fecha_Inscripcion, 'dd-MM-yyyy') AS 'Inscripcion'
From Alumnos A
inner join Inscripciones I on A.id_Alumno = I.id_Alumno
inner join Cursos C on C.id_Curso = I.id_Curso
where year(I.fecha_Inscripcion) = 2023