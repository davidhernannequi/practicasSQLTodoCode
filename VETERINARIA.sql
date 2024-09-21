
insert into Tratamientos values (2,'Vacunacion','20220202')

select * from Pacientes inner join Tratamientos on Pacientes.Id_Paciente = Tratamientos.Id_Paciente
	
select P.Nombre_Paciente, T.Fecha_Tratamiento, T.Tipo_Tratamiento
from Pacientes P
inner join  Tratamientos T on P.Id_Paciente = T.Id_Paciente
order by P.Nombre_Paciente ASC
	
/*SELECT tableA.column1, tableB.column2...
FROM tableA
INNER JOIN tableB
ON tableA.id_field = tableB.id_field*/

select P.Nombre_Paciente, COUNT(T.Id_Tratamiento) as Cantidad_Tratamientos
from Pacientes P
inner join Tratamientos T
on P.Id_Paciente = T.Id_Paciente
where (T.Fecha_Tratamiento between '20200101' and '20230101') and P.Id_Paciente = 22
group by P.Nombre_Paciente
order by Cantidad_Tratamientos

select Top 1 P.Nombre_Paciente, COUNT(P.Id_Paciente) as Cantidad_Tratamientos
from Pacientes P
inner join Tratamientos T
on P.Id_Paciente = T.Id_Paciente
group by P.Nombre_Paciente
order by Cantidad_Tratamientos Desc