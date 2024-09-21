select count(P.Id_Participante) from Participantes P

select * from Participantes

select * from Categorias

Select Count(P.Sexo) from Participantes P where P.Sexo = 'Femenino'

Select P.Nombre, P.Apellido
From Participantes P
inner join Inscripciones I ON P.Id_Participante = I.Fk_Participante 
inner join Categorias C ON I.Fk_Categoria = C.Id_Categoria
where C.Nombre = 'Caballeros B'

Select *
From Participantes P
where edad between 25 and 37

Select I.Num_Inscripcion, I.Fecha_Inscripcion, I.Abono_Inscripcion, P.Nombre, P.Apellido
From Participantes P
inner join Inscripciones I ON P.Id_Participante = I.Fk_Participante
