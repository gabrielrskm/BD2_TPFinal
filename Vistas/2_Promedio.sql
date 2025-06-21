-- se creará una vista que calcule el promedio de calificación recibido por cada tipo de plato ofrecido en el restaurante. Esta información permitirá analizar la percepción de los clientes sobre las diferentes categorías del menú y detectar fortalezas o posibles áreas de mejora por tipo de plato.
USE TPFinal
GO
   create VIEW View_PromedioPlatoPorRestaurante AS
SELECT
   r.IDRestaurante,
   r.NombreRestaurante,
   t.IDTipoPlato,
   t.NombrePlato,
   AVG(c.Calificacion) AS Promedio
FROM
   Calificaciones AS c
   INNER JOIN PlatoRestaurante AS p ON p.IDPlatoRestaurante = c.IDPlatoRestaurante
   INNER JOIN Restaurante AS r ON r.IDRestaurante = p.IDRestaurante
   inner join TipoPlato as t on t.IDTipoPlato = p.IDTipoPlato
GROUP BY
   r.IDRestaurante,
   r.NombreRestaurante,
   t.IDTipoPlato,
   t.NombrePlato
GO

select * from View_PromedioPlatoPorRestaurante