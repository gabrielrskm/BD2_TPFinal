-- Se generará una vista que permita identificar al cliente que ha aportado la mayor cantidad de calificaciones en el sistema. Esta información resulta valiosa para reconocer a los clientes más activos y comprometidos con el proceso de retroalimentación, quienes juegan un rol importante en la construcción de la reputación del restaurante.

use TPFinal;
go
create view View_ClienteMasCalificaciones as
select top 1
    c.Cuil,
    c.NombreCliente,
    c.Apellido,
    count(k.IDCalificaciones) as TotalCalificaciones
from
    Cliente as c
inner join
    Calificaciones as k on c.Cuil = k.ClienteId
group by
    c.Cuil,
    c.NombreCliente,
    c.Apellido
order by
    TotalCalificaciones desc;
go

select * from View_ClienteMasCalificaciones
