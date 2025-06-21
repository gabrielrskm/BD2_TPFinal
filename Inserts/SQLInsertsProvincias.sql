--Agregar Provincias 
INSERT INTO Provincia (NombreProvincia)
SELECT 'Buenos Aires' UNION 
SELECT 'Catamarca' UNION 
SELECT 'Chaco' UNION 
SELECT 'Chubut' UNION 
SELECT 'Cordoba' UNION 
SELECT 'Corrientes' UNION 
SELECT 'Entre Ríos' UNION 
SELECT 'Formosa' UNION 
SELECT 'Jujuy' UNION 
SELECT 'La Pampa' UNION 
SELECT 'La Rioja' UNION 
SELECT 'Mendoza' UNION 
SELECT 'Misiones' UNION 
SELECT 'Neuquen' UNION 
SELECT 'Rio Negro' UNION 
SELECT 'Salta' UNION 
SELECT 'San Juan' UNION 
SELECT 'San Luis' UNION 
SELECT 'Santa Cruz' UNION 
SELECT 'Santa Fe' UNION 
SELECT 'Santiago del Estero' UNION 
SELECT 'Tierra del Fuego' UNION 
SELECT 'Tucuman' 
GO

-- Agregue 5 localidades por provincia
-- Provincia 1: Buenos Aires
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 1, 'La Plata' UNION
SELECT 1, 'Mar del Plata' UNION
SELECT 1, 'Tandil' UNION
SELECT 1, 'Bahia Blanca' UNION
SELECT 1, 'Tigre';
GO

-- Provincia 2: Catamarca
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 2, 'San Fernando del Valle de Catamarca' UNION
SELECT 2, 'Fray Mamerto Esquiu' UNION
SELECT 2, 'Belen' UNION
SELECT 2, 'Santa Maria' UNION
SELECT 2, 'Hualfín';
GO

-- Provincia 3: Chaco
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 3, 'Resistencia' UNION
SELECT 3, 'Barranqueras' UNION
SELECT 3, 'Fontana' UNION
SELECT 3, 'Villa Angela' UNION
SELECT 3, 'Charata';
GO

-- Provincia 4: Chubut
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 4, 'Rawson' UNION
SELECT 4, 'Trelew' UNION
SELECT 4, 'Comodoro Rivadavia' UNION
SELECT 4, 'Puerto Madryn' UNION
SELECT 4, 'Sarmiento';
GO

-- Provincia 5: Cordoba
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 5, 'Cordoba' UNION
SELECT 5, 'Villa María' UNION
SELECT 5, 'Villa Carlos Paz' UNION
SELECT 5, 'Rio Cuarto' UNION
SELECT 5, 'Bell Ville';
GO

-- Provincia 6: Corrientes
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 6, 'Corrientes' UNION
SELECT 6, 'Goya' UNION
SELECT 6, 'Paso de los Libres' UNION
SELECT 6, 'Mercedes' UNION
SELECT 6, 'Bella Vista';
GO

-- Provincia 7: Entre Ríos
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 7, 'Parana' UNION
SELECT 7, 'Concordia' UNION
SELECT 7, 'Gualeguaychu' UNION
SELECT 7, 'Gualeguay' UNION
SELECT 7, 'Colon';
GO

-- Provincia 8: Formosa
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 8, 'Formosa' UNION
SELECT 8, 'Clorinda' UNION
SELECT 8, 'Pirane' UNION
SELECT 8, 'Las Lomitas' UNION
SELECT 8, 'Laguna Blanca';
GO

-- Provincia 9: Jujuy
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 9, 'San Salvador de Jujuy' UNION
SELECT 9, 'Palpala' UNION
SELECT 9, 'Perico' UNION
SELECT 9, 'El Carmen' UNION
SELECT 9, 'San Francisco';
GO

-- Provincia 10: La Pampa
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 10, 'Santa Rosa' UNION
SELECT 10, 'General Pico' UNION
SELECT 10, 'Realico' UNION
SELECT 10, 'Rancul' UNION
SELECT 10, 'Catrilo';
GO

-- Provincia 11: La Rioja
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 11, 'La Rioja' UNION
SELECT 11, 'Chilecito' UNION
SELECT 11, 'Villa Union' UNION
SELECT 11, 'Famatina' UNION
SELECT 11, 'Sanagasta';
GO

-- Provincia 12: Mendoza
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 12, 'Mendoza' UNION
SELECT 12, 'San Rafael' UNION
SELECT 12, 'Godoy Cruz' UNION
SELECT 12, 'Lujan de Cuyo' UNION
SELECT 12, 'Maipu';
GO

-- Provincia 13: Misiones
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 13, 'Posadas' UNION
SELECT 13, 'Obera' UNION
SELECT 13, 'Eldorado' UNION
SELECT 13, 'Iguazu' UNION
SELECT 13, 'Apostoles';
GO

-- Provincia 14: Neuquen
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 14, 'Neuquen' UNION
SELECT 14, 'San Martin de los Andes' UNION
SELECT 14, 'Villa La Angostura' UNION
SELECT 14, 'Zapala' UNION
SELECT 14, 'Plottier';
GO

-- Provincia 15: Rio Negro
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 15, 'Viedma' UNION
SELECT 15, 'San Carlos de Bariloche' UNION
SELECT 15, 'General Roca' UNION
SELECT 15, 'Cipolletti' UNION
SELECT 15, 'Catriel';
GO

-- Provincia 16: Salta
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 16, 'Salta' UNION
SELECT 16, 'San Lorenzo' UNION
SELECT 16, 'Rosario de la Frontera' UNION
SELECT 16, 'Cerrillos' UNION
SELECT 16, 'Campo Quijano';
GO

-- Provincia 17: San Juan
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 17, 'San Juan' UNION
SELECT 17, 'Caucete' UNION
SELECT 17, 'Jachal' UNION
SELECT 17, 'Zonda' UNION
SELECT 17, 'Santa Lucia';
GO

-- Provincia 18: San Luis
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 18, 'San Luis' UNION
SELECT 18, 'Villa Mercedes' UNION
SELECT 18, 'La Punta' UNION
SELECT 18, 'Merlo' UNION
SELECT 18, 'Juana Koslay';
GO

-- Provincia 19: Santa Cruz
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 19, 'Rio Gallegos' UNION
SELECT 19, 'El Calafate' UNION
SELECT 19, 'Caleta Olivia' UNION
SELECT 19, 'Puerto Deseado' UNION
SELECT 19, 'Pico Truncado';
GO

-- Provincia 20: Santa Fe
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 20, 'Santa Fe' UNION
SELECT 20, 'Rosario' UNION
SELECT 20, 'Villa Constitución' UNION
SELECT 20, 'Firmat' UNION
SELECT 20, 'Rafaela';
GO

-- Provincia 21: Santiago del Estero
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 21, 'Santiago del Estero' UNION
SELECT 21, 'La Banda' UNION
SELECT 21, 'Termas de Río Hondo' UNION
SELECT 21, 'Loreto' UNION
SELECT 21, 'Bandera';
GO

-- Provincia 22: Tierra del Fuego
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 22, 'Ushuaia' UNION
SELECT 22, 'Río Grande' UNION
SELECT 22, 'Tolhuin' UNION
SELECT 22, 'Porvenir' UNION
SELECT 22, 'Rio San Juan';
GO

-- Provincia 23: Tucumán
INSERT INTO Localidad (IDProvincia, NombreLocalidad)
SELECT 23, 'San Miguel de Tucuman' UNION
SELECT 23, 'Concepción' UNION
SELECT 23, 'Yerba Buena' UNION
SELECT 23, 'Tafi Viejo' UNION
SELECT 23, 'Ranchillos';
GO

