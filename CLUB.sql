
select Nombre, Apellido, DNI, Codigo_Deporte FROM SOCIOS

Select Codigo, Nombre, Es_grupal from DEPORTES

select S.Nombre, S.Apellido, S.DNI
FROM SOCIOS S
where Codigo_Deporte = 1

Select COUNT(*) as Cantidad_Futbol from socios where Codigo_Deporte = 2