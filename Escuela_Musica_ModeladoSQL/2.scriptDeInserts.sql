

-- Usar la base de datos
use Escuela_Musica;
go

-- Inserciones para la tabla Alumnos

insert into Alumnos (nombre, apellido, fechaNacimiento, direccion, telefono, email) values 
('Juan', 'Perez', '2000-01-01', 'Calle Falsa 123', '123456789', 'juan.perez@example.com'),
('Maria', 'Lopez', '1999-02-14', 'Avenida Siempre Viva 456', '987654321', 'maria.lopez@example.com'),
('Carlos', 'Garcia', '2001-03-15', 'Calle de la Luna 789', '123123123', 'carlos.garcia@example.com'),
('Ana', 'Martinez', '2000-04-25', 'Paseo del Sol 101', '456456456', 'ana.martinez@example.com'),
('Luis', 'Gomez', '1998-05-05', 'Plaza Mayor 202', '789789789', 'luis.gomez@example.com'),
('Elena', 'Hernandez', '2002-06-06', 'Avenida del Parque 303', '321321321', 'elena.hernandez@example.com'),
('Pedro', 'Diaz', '1997-07-07', 'Calle del Río 404', '654654654', 'pedro.diaz@example.com'),
('Laura', 'Ruiz', '2000-08-08', 'Paseo de la Playa 505', '987987987', 'laura.ruiz@example.com'),
('Javier', 'Fernandez', '1999-09-09', 'Avenida del Mar 606', '147147147', 'javier.fernandez@example.com'),
('Marta', 'Sanchez', '2001-10-10', 'Calle del Bosque 707', '258258258', 'marta.sanchez@example.com'),
('Antonio', 'Torres', '2000-11-11', 'Plaza de la Estrella 808', '369369369', 'antonio.torres@example.com'),
('Isabel', 'Ramirez', '2002-12-12', 'Avenida de la Luna 909', '159159159', 'isabel.ramirez@example.com'),
('Diego', 'Flores', '1998-01-13', 'Calle del Sol 1010', '951951951', 'diego.flores@example.com'),
('Sofia', 'Jimenez', '1997-02-14', 'Paseo de las Flores 1111', '753753753', 'sofia.jimenez@example.com'),
('Miguel', 'Morales', '2001-03-15', 'Avenida del Cielo 1212', '357357357', 'miguel.morales@example.com'),
('Carmen', 'Ortiz', '2000-04-16', 'Calle de la Tierra 1313', '159753951', 'carmen.ortiz@example.com'),
('Raul', 'Gonzalez', '1999-05-17', 'Plaza del Sol 1414', '951357159', 'raul.gonzalez@example.com'),
('Patricia', 'Vazquez', '2002-06-18', 'Avenida de la Estrella 1515', '123789456', 'patricia.vazquez@example.com'),
('Daniel', 'Romero', '1998-07-19', 'Calle de las Nubes 1616', '456123789', 'daniel.romero@example.com'),
('Sara', 'Navarro', '1997-08-20', 'Paseo de la Luna 1717', '789456123', 'sara.navarro@example.com');



-- Inserciones para la tabla Cursos

insert into Cursos (nombre, nivel_Habilidad, tipo_Instrumento) values
('Guitarra Principiante', 'Principiante', 'Guitarra'),
('Guitarra Intermedio', 'Intermedio', 'Guitarra'),
('Guitarra Avanzado', 'Avanzado', 'Guitarra'),
('Piano Principiante', 'Principiante', 'Piano'),
('Piano Intermedio', 'Intermedio', 'Piano'),
('Piano Avanzado', 'Avanzado', 'Piano'),
('Violín Principiante', 'Principiante', 'Violín'),
('Violín Intermedio', 'Intermedio', 'Violín'),
('Violín Avanzado', 'Avanzado', 'Violín');



-- Insertar inscripciones para 13 alumnos (dejando 7 alumnos sin inscripciones)

insert into Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) values
('2023-01-15', 1, 1, 1), -- Alumno 1 inscrito en Guitarra Principiante
('2023-01-16', 1, 2, 2), -- Alumno 2 inscrito en Guitarra Intermedio
('2023-01-17', 1, 3, 3), -- Alumno 3 inscrito en Guitarra Avanzado
('2023-01-18', 1, 4, 4), -- Alumno 4 inscrito en Piano Principiante
('2023-01-19', 1, 5, 5), -- Alumno 5 inscrito en Piano Intermedio
('2023-01-20', 1, 6, 6), -- Alumno 6 inscrito en Piano Avanzado
('2023-01-21', 1, 7, 7), -- Alumno 7 inscrito en Violín Principiante
('2023-01-22', 1, 8, 8), -- Alumno 8 inscrito en Violín Intermedio
('2023-01-23', 1, 9, 9), -- Alumno 9 inscrito en Violín Avanzado
('2023-01-24', 1, 10, 1), -- Alumno 10 inscrito en Guitarra Principiante
('2023-01-25', 1, 11, 2), -- Alumno 11 inscrito en Guitarra Intermedio
('2023-01-26', 1, 12, 3), -- Alumno 12 inscrito en Guitarra Avanzado
('2023-01-27', 1, 13, 4); -- Alumno 13 inscrito en Piano Principiante

-- Alumnos 14 a 20 no están inscritos en ningún curso


--Inserts para inscribir a 4 alumnos en mas de un curso

-- Juan Perez (id_Alumno = 1) en 3 cursos
INSERT INTO Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) VALUES ('2023-06-01', 1, 1, 2); -- Supongamos Guitarra Intermedio (id_Curso = 2)
INSERT INTO Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) VALUES ('2023-06-01', 1, 1, 5); -- Supongamos Piano Intermedio (id_Curso = 5)

-- Ana Gomez (id_Alumno = 2) en 4 cursos
INSERT INTO Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) VALUES ('2023-06-01', 1, 2, 3); -- Supongamos Guitarra Avanzado (id_Curso = 3)
INSERT INTO Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) VALUES ('2023-06-01', 1, 2, 6); -- Supongamos Piano Avanzado (id_Curso = 6)
INSERT INTO Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) VALUES ('2023-06-01', 1, 2, 8); -- Supongamos Violín Intermedio (id_Curso = 8)

-- Luis Martinez (id_Alumno = 3) en 4 cursos
INSERT INTO Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) VALUES ('2023-06-01', 1, 3, 2); -- Supongamos Guitarra Intermedio (id_Curso = 2)
INSERT INTO Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) VALUES ('2023-06-01', 1, 3, 7); -- Supongamos Violín Principiante (id_Curso = 7)
INSERT INTO Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) VALUES ('2023-06-01', 1, 3, 9); -- Supongamos Violín Avanzado (id_Curso = 9)

-- Maria Rodriguez (id_Alumno = 4) en 2 cursos
INSERT INTO Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) VALUES ('2023-06-01', 1, 4, 4); -- Supongamos Piano Principiante (id_Curso = 4)
INSERT INTO Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) VALUES ('2023-06-01', 1, 4, 9); -- Supongamos Violín Avanzado (id_Curso = 9)

--script de inserts de alumnos con abono_Inscripcion = false
INSERT INTO Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) VALUES ('2023-06-15', 0, 5, 1); -- Carlos Ruiz en Guitarra Principiante
INSERT INTO Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) VALUES ('2023-06-15', 0, 6, 4); -- Laura Fernandez en Piano Principiante
INSERT INTO Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) VALUES ('2023-06-15', 0, 7, 7); -- Pedro Sanchez en Violín Principiante
INSERT INTO Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) VALUES ('2023-06-15', 0, 8, 2); -- Sofia Lopez en Guitarra Intermedio
INSERT INTO Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) VALUES ('2023-06-15', 0, 9, 5); -- Alberto Torres en Piano Intermedio
INSERT INTO Inscripciones (fecha_Inscripcion, abono_Inscripcion, id_Alumno, id_Curso) VALUES ('2023-06-15', 0, 10, 8); -- Gabriela Ramirez en Violín Intermedio
