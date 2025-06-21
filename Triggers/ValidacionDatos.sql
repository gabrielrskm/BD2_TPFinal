USE TPFinal;
GO

CREATE TRIGGER TR_Calificaciones_ValidarFechas
ON Calificaciones
after insert, update
AS
BEGIN
    if exists (SELECT null FROM INSERTED WHERE FechaCalificacion < FechaConsumo)
    BEGIN
        print ('Error: La FechaCalificacion no puede ser anterior a la FechaConsumo.');
        ROLLBACK transaction;
    END
END;
GO