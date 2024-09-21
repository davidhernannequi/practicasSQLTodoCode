select *
from Productos
order by Precio ASC

select nombre
from Fabricantes
order by Nombre ASC

select Nombre, Precio
from Productos
where precio > 10000


select Top 1 P.Nombre, Min(P.Precio) AS PrecioMinimo
from Productos P
group by P.Nombre
order by PrecioMinimo
