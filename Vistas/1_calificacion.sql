-- Se diseñará una vista que permita identificar el plato con la calificación promedio más alta, considerando únicamente aquellos platos que también tienen un volumen significativo de reseñas (el que "más suena"). De esta manera, se garantiza que el resultado sea relevante tanto en calidad (calificación) como en popularidad (cantidad de opiniones recibidas).
use TPFinal
go
   create view View_MejorPlato as
select
   p.IDRestaurante,
   p.IDPlatoRestaurante,
   count(t.IDTipoPlato) as CantidadCalificacion,
   avg(c.Calificacion) as PromediCalificacion
from
   Calificaciones as c
   inner join PlatoRestaurante as p on p.IDPlatoRestaurante = c.IDPlatoRestaurante
   inner join TipoPlato as t on t.IDTipoPlato = p.IDTipoPlato
group by
   p.IDRestaurante,
   p.IDPlatoRestaurante
go