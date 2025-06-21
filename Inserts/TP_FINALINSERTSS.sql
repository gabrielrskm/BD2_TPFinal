
-- CREACIÓN DE BASE DE DATOS Y ESTRUCTURA
CREATE DATABASE TPFinal
COLLATE Latin1_General_CI_AI;
GO

USE TPFinal;
GO

CREATE TABLE Provincia(
    IDProvincia INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    NombreProvincia NVARCHAR(100) NOT NULL
);
GO

CREATE TABLE Localidad(
    IDLocalidad INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    IDProvincia INT NOT NULL FOREIGN KEY REFERENCES Provincia(IDProvincia),
    NombreLocalidad NVARCHAR(100) NOT NULL
);
GO

CREATE TABLE TipoComida(
    IDTipoComida INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    NombreComida NVARCHAR(100) NOT NULL
);
GO

CREATE TABLE TipoPlato(
    IDTipoPlato INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    NombrePlato NVARCHAR(100) NOT NULL,
    IDTipoComida INT NOT NULL FOREIGN KEY REFERENCES TipoComida(IDTipoComida),
    Descripcion NVARCHAR(255)
);
GO

CREATE TABLE Cliente(
    Cuil BIGINT NOT NULL PRIMARY KEY,
    Email NVARCHAR(100) NOT NULL,
    Password NVARCHAR(100) NOT NULL,
    NombreCliente NVARCHAR(100) NOT NULL,
    ApellidoCliente NVARCHAR(100) NOT NULL,
    IDLocalidad INT NOT NULL FOREIGN KEY REFERENCES Localidad(IDLocalidad)
);
GO

CREATE TABLE Restaurante(
    IDRestaurante INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Email NVARCHAR(100) NOT NULL,
    Password NVARCHAR(100) NOT NULL,
    NombreRestaurante NVARCHAR(100) NOT NULL,
    Direccion NVARCHAR(255) NOT NULL,
    IDLocalidad INT NOT NULL FOREIGN KEY REFERENCES Localidad(IDLocalidad)
);
GO

CREATE TABLE PlatoRestaurante(
    IDPlatoRestaurante INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    IDRestaurante INT NOT NULL FOREIGN KEY REFERENCES Restaurante(IDRestaurante),
    TituloPlato NVARCHAR(100) NOT NULL,
    PrecioUnitario DECIMAL(10,2) NOT NULL,
    IDTipoPlato INT NOT NULL FOREIGN KEY REFERENCES TipoPlato(IDTipoPlato)
);
GO

CREATE TABLE Calificaciones(
    IDCalificaciones INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    FechaConsumo DATE NOT NULL,
    FechaCalificacion DATETIME NOT NULL,
    ClienteId INT NOT NULL FOREIGN KEY REFERENCES Cliente(Cuil),
    IDPlatoRestaurante INT NOT NULL FOREIGN KEY REFERENCES PlatoRestaurante(IDPlatoRestaurante),
    Calificacion INT NOT NULL CHECK (Calificacion BETWEEN 1 AND 5),
    Comentarios NVARCHAR(255)
);
GO


-- INSERTS --

INSERT INTO TipoComida (NombreComida)
VALUES
('Parrilla'),
('Minutas'),
('Pastas'),
('Pizzas'),
('Empanadas'),
('Regional'),
('Vegetariana'),
('Mariscos'),
('Postres'),
('Sopas');
INSERT INTO TipoPlato (NombrePlato, IDTipoComida, Descripcion)
VALUES
('Empanadas', 2, 'Masa rellena de carne, pollo u otros ingredientes, horneada o frita.'),
('Milanesa', 2, 'Filete empanado de carne o pollo, frito o al horno.'),
('Asado', 7, 'Variedad de carnes asadas a la parrilla, típico de reuniones.'),
('Locro', 3, 'Guiso espeso de maíz, zapallo y carne, tradicional en fechas patrias.'),
('Humita', 10, 'Pasta de maíz con queso, cocida en chala al vapor.'),
('Tarta', 4, 'Masa rellena con verduras, jamón, queso o combinación, al horno.'),
('Pizza', 10, 'Masa con salsa, queso y diversos toppings, de estilo argentino.'),
('Provoleta', 10, 'Queso provolone fundido con especias a la parrilla.'),
('Pastel de papas', 6, 'Capas de puré de papa con carne picada y condimentos.'),
('Ñoquis', 8, 'Pasta de papa servida con salsas como tuco, crema o pesto.'),
('Choripán', 8, 'Pan con chorizo asado y salsa criolla o chimichurri.'),
('Puchero', 10, 'Estofado con carne, verduras y legumbres, cocido en agua.'),
('Matambre a la pizza', 8, 'Matambre cocido con salsa y queso como una pizza.'),
('Fainá', 4, 'Torta salada de harina de garbanzo, acompañante de la pizza.'),
('Ensalada rusa', 10, 'Ensalada fría de papa, zanahoria y arvejas con mayonesa.'),
('Tamales', 9, 'Bollos de maíz rellenos de carne, cocidos en hojas de maíz.'),
('Lomito', 10, 'Sándwich de carne, huevo, tomate y lechuga en pan francés.'),
('Ravioles', 1, 'Pasta rellena, servida con salsas variadas.'),
('Matambre arrollado', 6, 'Carne enrollada con verduras y huevo, cocida al horno.'),
('Flan con dulce de leche', 8, 'Postre de huevo y leche, acompañado con dulce de leche.');

INSERT INTO Cliente (Cuil, Email, Password, NombreCliente, ApellidoCliente, IDLocalidad)
VALUES
(20100000008, 'martín.gonzález@mail.com', 'Hash1234', 'Martín', 'González', 101),
(20100000018, 'lucas.rodríguez@mail.com', 'Hash1234', 'Lucas', 'Rodríguez', 33),
(20100000028, 'sofía.fernández@mail.com', 'Hash1234', 'Sofía', 'Fernández', 73),
(20100000038, 'mateo.lópez@mail.com', 'Hash1234', 'Mateo', 'López', 1),
(20100000048, 'valentina.martínez@mail.com', 'Hash1234', 'Valentina', 'Martínez', 17),
(20100000058, 'thiago.gómez@mail.com', 'Hash1234', 'Thiago', 'Gómez', 78),
(20100000068, 'camila.pérez@mail.com', 'Hash1234', 'Camila', 'Pérez', 42),
(20100000078, 'agustín.sánchez@mail.com', 'Hash1234', 'Agustín', 'Sánchez', 16),
(20100000088, 'julieta.romero@mail.com', 'Hash1234', 'Julieta', 'Romero', 38),
(20100000098, 'benjamín.torres@mail.com', 'Hash1234', 'Benjamín', 'Torres', 103),
(20100000108, 'lautaro.álvarez@mail.com', 'Hash1234', 'Lautaro', 'Álvarez', 82),
(20100000118, 'lucía.ruiz@mail.com', 'Hash1234', 'Lucía', 'Ruiz', 95),
(20100000128, 'tomás.ramírez@mail.com', 'Hash1234', 'Tomás', 'Ramírez', 33),
(20100000138, 'mía.flores@mail.com', 'Hash1234', 'Mía', 'Flores', 101),
(20100000148, 'santino.acosta@mail.com', 'Hash1234', 'Santino', 'Acosta', 54),
(20100000158, 'catalina.silva@mail.com', 'Hash1234', 'Catalina', 'Silva', 1),
(20100000168, 'joaquín.molina@mail.com', 'Hash1234', 'Joaquín', 'Molina', 112),
(20100000178, 'isabella.castro@mail.com', 'Hash1234', 'Isabella', 'Castro', 39),
(20100000188, 'francisco.ortiz@mail.com', 'Hash1234', 'Francisco', 'Ortiz', 48),
(20100000198, 'emma.núñez@mail.com', 'Hash1234', 'Emma', 'Núñez', 24),
(20100000208, 'martín.gonzález@mail.com', 'Hash1234', 'Martín', 'González', 38),
(20100000218, 'lucas.rodríguez@mail.com', 'Hash1234', 'Lucas', 'Rodríguez', 95),
(20100000228, 'sofía.fernández@mail.com', 'Hash1234', 'Sofía', 'Fernández', 110),
(20100000238, 'mateo.lópez@mail.com', 'Hash1234', 'Mateo', 'López', 4),
(20100000248, 'valentina.martínez@mail.com', 'Hash1234', 'Valentina', 'Martínez', 64),
(20100000258, 'thiago.gómez@mail.com', 'Hash1234', 'Thiago', 'Gómez', 63),
(20100000268, 'camila.pérez@mail.com', 'Hash1234', 'Camila', 'Pérez', 43),
(20100000278, 'agustín.sánchez@mail.com', 'Hash1234', 'Agustín', 'Sánchez', 18),
(20100000288, 'julieta.romero@mail.com', 'Hash1234', 'Julieta', 'Romero', 80),
(20100000298, 'benjamín.torres@mail.com', 'Hash1234', 'Benjamín', 'Torres', 1),
(20100000308, 'lautaro.álvarez@mail.com', 'Hash1234', 'Lautaro', 'Álvarez', 11),
(20100000318, 'lucía.ruiz@mail.com', 'Hash1234', 'Lucía', 'Ruiz', 40),
(20100000328, 'tomás.ramírez@mail.com', 'Hash1234', 'Tomás', 'Ramírez', 16),
(20100000338, 'mía.flores@mail.com', 'Hash1234', 'Mía', 'Flores', 31),
(20100000348, 'santino.acosta@mail.com', 'Hash1234', 'Santino', 'Acosta', 101),
(20100000358, 'catalina.silva@mail.com', 'Hash1234', 'Catalina', 'Silva', 96),
(20100000368, 'joaquín.molina@mail.com', 'Hash1234', 'Joaquín', 'Molina', 38),
(20100000378, 'isabella.castro@mail.com', 'Hash1234', 'Isabella', 'Castro', 62),
(20100000388, 'francisco.ortiz@mail.com', 'Hash1234', 'Francisco', 'Ortiz', 4),
(20100000398, 'emma.núñez@mail.com', 'Hash1234', 'Emma', 'Núñez', 5),
(20100000408, 'martín.gonzález@mail.com', 'Hash1234', 'Martín', 'González', 46),
(20100000418, 'lucas.rodríguez@mail.com', 'Hash1234', 'Lucas', 'Rodríguez', 57),
(20100000428, 'sofía.fernández@mail.com', 'Hash1234', 'Sofía', 'Fernández', 71),
(20100000438, 'mateo.lópez@mail.com', 'Hash1234', 'Mateo', 'López', 55),
(20100000448, 'valentina.martínez@mail.com', 'Hash1234', 'Valentina', 'Martínez', 108),
(20100000458, 'thiago.gómez@mail.com', 'Hash1234', 'Thiago', 'Gómez', 86),
(20100000468, 'camila.pérez@mail.com', 'Hash1234', 'Camila', 'Pérez', 4),
(20100000478, 'agustín.sánchez@mail.com', 'Hash1234', 'Agustín', 'Sánchez', 35),
(20100000488, 'julieta.romero@mail.com', 'Hash1234', 'Julieta', 'Romero', 99),
(20100000498, 'benjamín.torres@mail.com', 'Hash1234', 'Benjamín', 'Torres', 18),
(20100000508, 'lautaro.álvarez@mail.com', 'Hash1234', 'Lautaro', 'Álvarez', 101),
(20100000518, 'lucía.ruiz@mail.com', 'Hash1234', 'Lucía', 'Ruiz', 73),
(20100000528, 'tomás.ramírez@mail.com', 'Hash1234', 'Tomás', 'Ramírez', 52),
(20100000538, 'mía.flores@mail.com', 'Hash1234', 'Mía', 'Flores', 34),
(20100000548, 'santino.acosta@mail.com', 'Hash1234', 'Santino', 'Acosta', 23),
(20100000558, 'catalina.silva@mail.com', 'Hash1234', 'Catalina', 'Silva', 48),
(20100000568, 'joaquín.molina@mail.com', 'Hash1234', 'Joaquín', 'Molina', 103),
(20100000578, 'isabella.castro@mail.com', 'Hash1234', 'Isabella', 'Castro', 13),
(20100000588, 'francisco.ortiz@mail.com', 'Hash1234', 'Francisco', 'Ortiz', 17),
(20100000598, 'emma.núñez@mail.com', 'Hash1234', 'Emma', 'Núñez', 3);


INSERT INTO Restaurante (Email, Password, NombreRestaurante, Direccion, IDLocalidad)
VALUES
('contacto1@resto.com', 'ClaveResto5606', 'Parrilla El Gaucho', 'Calle Ayacucho 258', 44),
('contacto2@resto.com', 'ClaveResto4205', 'Sabor Criollo', 'Calle Castro Barros 417', 30),
('contacto3@resto.com', 'ClaveResto3593', 'La Esquina de Doña Tota', 'Av. 9 de Julio 581', 94),
('contacto4@resto.com', 'ClaveResto6336', 'La Fonda', 'Av. Entre Ríos 643', 31),
('contacto5@resto.com', 'ClaveResto5826', 'Don Julio', 'Av. Triunvirato 748', 98),
('contacto6@resto.com', 'ClaveResto8231', 'La Cabrera', 'Calle Larrea 769', 73),
('contacto7@resto.com', 'ClaveResto8384', 'El Buen Sabor', 'Calle Lavalle 910', 25),
('contacto8@resto.com', 'ClaveResto3013', 'Lo de Beto', 'Calle Pueyrredón 321', 83),
('contacto9@resto.com', 'ClaveResto6190', 'Patio Argentino', 'Av. Triunvirato 367', 69),
('contacto10@resto.com', 'ClaveResto7402', 'Ña Serapia', 'Calle French 579', 108),
('contacto11@resto.com', 'ClaveResto4529', 'El Rinconcito', 'Calle Sarmiento 964', 112),
('contacto12@resto.com', 'ClaveResto5828', 'Resto San Telmo', 'Calle Güemes 743', 96),
('contacto13@resto.com', 'ClaveResto8347', 'Cocina del Parque', 'Av. Callao 258', 23),
('contacto14@resto.com', 'ClaveResto4539', 'Sabor Norteño', 'Calle Alberdi 279', 11),
('contacto15@resto.com', 'ClaveResto2827', 'Mister Parrilla', 'Av. Santa Fe 151', 51),
('contacto16@resto.com', 'ClaveResto2611', 'La Picada', 'Calle Lavalle 598', 111),
('contacto17@resto.com', 'ClaveResto7534', 'Viejo Almacén', 'Calle Esmeralda 184', 98),
('contacto18@resto.com', 'ClaveResto4879', 'Fogón del Sur', 'Calle Castro Barros 137', 87),
('contacto19@resto.com', 'ClaveResto5861', 'Delicias Argentinas', 'Av. San Juan 129', 3),
('contacto20@resto.com', 'ClaveResto3306', 'Comedor Criollo', 'Calle Olazábal 848', 91),
('contacto21@resto.com', 'ClaveResto1905', 'Bife y Malbec', 'Av. Entre Ríos 333', 50),
('contacto22@resto.com', 'ClaveResto1755', 'Asado y Vino', 'Calle Bolívar 708', 32),
('contacto23@resto.com', 'ClaveResto8927', 'Sabores de mi Tierra', 'Calle Suipacha 569', 114),
('contacto24@resto.com', 'ClaveResto3256', 'Don Goyo', 'Calle Güemes 125', 40),
('contacto25@resto.com', 'ClaveResto9409', 'La Posta de los Tiempos', 'Calle Suipacha 661', 22),
('contacto26@resto.com', 'ClaveResto5690', 'Empanadas La Reina', 'Calle Sarmiento 133', 101),
('contacto27@resto.com', 'ClaveResto9791', 'Pan y Vino', 'Calle Güemes 816', 109),
('contacto28@resto.com', 'ClaveResto2982', 'Don Zoilo', 'Av. Corrientes 319', 58),
('contacto29@resto.com', 'ClaveResto7367', 'La Ruralita', 'Av. Córdoba 659', 112),
('contacto30@resto.com', 'ClaveResto4332', 'Lo de Cacho', 'Calle Lavalle 164', 76);

INSERT INTO PlatoRestaurante (IDRestaurante, TituloPlato, PrecioUnitario, IDTipoPlato)
VALUES
(15, 'Provoleta', 1567.72, 9),
(17, 'Ñoquis', 5894.1, 17),
(22, 'Polenta', 6944.03, 19),
(19, 'Milanesa', 3698.53, 12),
(22, 'Ravioles', 3482.72, 1),
(1, 'Pizza fugazzeta', 4164.82, 4),
(20, 'Panqueques', 6124.16, 3),
(19, 'Helado artesanal', 5614.1, 4),
(10, 'Choripán', 2865.59, 11),
(24, 'Polenta', 5408.12, 1),
(27, 'Humita', 4421.61, 18),
(1, 'Provoleta', 3844.76, 14),
(13, 'Choripán', 5994.05, 17),
(6, 'Humita', 6872.69, 6),
(7, 'Matambre a la pizza', 3240.43, 4),
(16, 'Panqueques', 4795.7, 9),
(9, 'Tortilla de papas', 4719.59, 11),
(6, 'Sopa Paraguaya', 3617.76, 10),
(24, 'Milanesa', 5599.47, 6),
(18, 'Locro', 2272.15, 7),
(13, 'Panqueques', 6599.46, 1),
(11, 'Ensalada Criolla', 1840.1, 5),
(5, 'Choripán', 6212.56, 4),
(23, 'Milanesa', 2056.27, 9),
(14, 'Choripán', 6799.02, 11),
(20, 'Matambre a la pizza', 2439.86, 4),
(8, 'Empanadas', 4537.07, 5),
(29, 'Provoleta', 6111.71, 13),
(26, 'Asado', 2796.91, 14),
(12, 'Provoleta', 4849.82, 2),
(13, 'Empanadas', 5911.36, 6),
(18, 'Milanesa', 3898.1, 12),
(21, 'Tortilla de papas', 6085.25, 13),
(13, 'Tarta de Verdura', 6230.44, 9),
(7, 'Polenta', 4871.77, 13),
(15, 'Choripán', 3461.51, 7),
(10, 'Guiso de lentejas', 6413.88, 19),
(6, 'Polenta', 5496.0, 4),
(14, 'Ravioles', 2047.14, 14),
(3, 'Flan', 1859.04, 2),
(11, 'Tortilla de papas', 2240.3, 15),
(16, 'Polenta', 1992.62, 6),
(22, 'Flan', 1903.2, 12),
(7, 'Ravioles', 3012.12, 6),
(21, 'Choripán', 5846.11, 18),
(23, 'Flan', 6339.97, 13),
(8, 'Panqueques', 4571.45, 12),
(30, 'Flan', 6286.18, 14),
(8, 'Matambre a la pizza', 1879.06, 4),
(22, 'Tortilla de papas', 2830.95, 8),
(10, 'Ñoquis', 5316.12, 5),
(4, 'Pizza fugazzeta', 4959.11, 20),
(3, 'Panqueques', 6207.51, 16),
(19, 'Humita', 1639.97, 6),
(13, 'Guiso de lentejas', 5324.1, 2),
(21, 'Choripán', 2661.15, 17),
(9, 'Ensalada Criolla', 1947.39, 3),
(17, 'Panqueques', 1945.75, 6),
(12, 'Guiso de lentejas', 6558.5, 5),
(15, 'Ravioles', 3857.18, 19);

INSERT INTO Calificaciones (FechaConsumo, FechaCalificacion, ClienteId, IDPlatoRestaurante, Calificacion, Comentarios)
VALUES
('2024-11-06', '2024-11-06 12:41:00', 20100000008, 32, 1, 'Perfecto'),
('2024-01-21', '2024-01-21 15:30:00', 20100000018, 14, 3, 'Riquísimo'),
('2024-11-09', '2024-11-09 14:53:00', 20100000028, 37, 4, 'Zafa'),
('2024-03-16', '2024-03-16 11:07:00', 20100000038, 35, 2, 'Falta sabor'),
('2024-03-14', '2024-03-14 13:44:00', 20100000048, 5, 2, 'Excelente atención'),
('2024-12-14', '2024-12-14 19:45:00', 20100000058, 21, 1, 'Volvería de nuevo'),
('2024-07-01', '2024-07-01 22:32:00', 20100000068, 15, 5, 'La porción era chica'),
('2024-02-24', '2024-02-24 20:41:00', 20100000078, 1, 2, 'Una bomba'),
('2024-09-19', '2024-09-19 16:30:00', 20100000088, 14, 1, 'Bien servido'),
('2024-08-04', '2024-08-04 21:49:00', 20100000098, 33, 1, 'La porción era chica'),
('2024-07-25', '2024-07-25 15:44:00', 20100000108, 15, 1, 'Bien servido'),
('2024-12-18', '2024-12-18 11:03:00', 20100000118, 20, 5, 'Precio justo'),
('2024-06-19', '2024-06-19 18:38:00', 20100000128, 5, 5, 'Una bomba'),
('2024-03-20', '2024-03-20 11:58:00', 20100000138, 17, 3, 'Zafa'),
('2024-10-11', '2024-10-11 17:57:00', 20100000148, 24, 1, 'Volvería de nuevo'),
('2024-12-10', '2024-12-10 20:03:00', 20100000158, 17, 3, 'Volvería de nuevo'),
('2024-06-19', '2024-06-19 11:07:00', 20100000168, 38, 3, 'Volvería de nuevo'),
('2024-07-08', '2024-07-08 18:48:00', 20100000178, 29, 5, 'La porción era chica'),
('2024-11-09', '2024-11-09 10:45:00', 20100000188, 29, 1, 'Riquísimo'),
('2024-08-18', '2024-08-18 15:14:00', 20100000198, 24, 4, 'Zafa'),
('2024-04-11', '2024-04-11 20:43:00', 20100000208, 16, 3, 'Demasiado salado'),
('2024-05-13', '2024-05-13 21:34:00', 20100000218, 18, 1, 'Muy sabroso'),
('2024-02-10', '2024-02-10 13:52:00', 20100000228, 13, 2, 'Falta sabor'),
('2024-02-13', '2024-02-13 14:14:00', 20100000238, 25, 1, 'Riquísimo'),
('2024-01-19', '2024-01-19 11:02:00', 20100000248, 40, 3, 'Riquísimo'),
('2024-10-12', '2024-10-12 10:48:00', 20100000258, 26, 5, 'Muy rico'),
('2024-04-18', '2024-04-18 19:34:00', 20100000268, 7, 2, 'Volvería de nuevo'),
('2024-09-26', '2024-09-26 12:05:00', 20100000278, 12, 2, 'Precio justo'),
('2024-08-23', '2024-08-23 19:12:00', 20100000288, 12, 3, 'Zafa'),
('2024-08-18', '2024-08-18 14:11:00', 20100000298, 9, 1, 'Riquísimo'),
('2024-05-13', '2024-05-13 12:53:00', 20100000308, 24, 1, 'Riquísimo'),
('2024-05-05', '2024-05-05 10:44:00', 20100000318, 7, 3, 'Muy sabroso'),
('2024-09-21', '2024-09-21 11:20:00', 20100000328, 9, 1, 'Excelente atención'),
('2024-07-20', '2024-07-20 21:41:00', 20100000338, 16, 3, 'No me gustó'),
('2024-09-05', '2024-09-05 20:13:00', 20100000348, 1, 5, 'Precio justo'),
('2024-12-13', '2024-12-13 13:29:00', 20100000358, 2, 5, 'La porción era chica'),
('2024-02-27', '2024-02-27 21:08:00', 20100000368, 10, 5, 'Demasiado salado'),
('2024-08-13', '2024-08-13 15:40:00', 20100000378, 3, 3, 'Muy sabroso'),
('2024-12-21', '2024-12-21 23:04:00', 20100000388, 34, 2, 'No me gustó'),
('2024-10-22', '2024-10-22 21:16:00', 20100000398, 31, 5, 'Una bomba'),
('2024-08-02', '2024-08-02 20:39:00', 20100000408, 18, 1, 'Falta sabor'),
('2024-01-01', '2024-01-01 22:52:00', 20100000418, 40, 5, 'Muy rico'),
('2024-12-22', '2024-12-22 13:35:00', 20100000428, 11, 5, 'Excelente atención'),
('2024-10-28', '2024-10-28 18:22:00', 20100000438, 21, 4, 'Volvería de nuevo'),
('2024-06-22', '2024-06-22 20:54:00', 20100000448, 36, 1, 'Una bomba'),
('2024-10-04', '2024-10-04 10:28:00', 20100000458, 17, 2, 'Volvería de nuevo'),
('2024-12-08', '2024-12-08 17:10:00', 20100000468, 11, 3, 'No me gustó'),
('2024-05-04', '2024-05-04 10:53:00', 20100000478, 38, 1, 'Muy rico'),
('2024-09-19', '2024-09-19 12:41:00', 20100000488, 8, 1, 'Bien servido'),
('2024-04-04', '2024-04-04 15:14:00', 20100000498, 5, 3, 'Bien servido'),
('2024-10-24', '2024-10-24 17:51:00', 20100000508, 1, 2, 'Zafa'),
('2024-08-05', '2024-08-05 23:49:00', 20100000518, 5, 4, 'Falta sabor'),
('2024-02-24', '2024-02-24 10:09:00', 20100000528, 38, 5, 'La porción era chica'),
('2024-04-11', '2024-04-11 17:26:00', 20100000538, 39, 4, 'Buena onda'),
('2024-11-06', '2024-11-06 23:51:00', 20100000548, 9, 1, 'Estaba frío'),
('2024-05-04', '2024-05-04 19:24:00', 20100000558, 19, 2, 'Buena onda'),
('2024-07-04', '2024-07-04 23:27:00', 20100000568, 24, 2, 'Falta sabor'),
('2024-10-09', '2024-10-09 18:18:00', 20100000578, 24, 4, 'Muy sabroso'),
('2024-03-11', '2024-03-11 11:26:00', 20100000588, 16, 5, 'Buena onda'),
('2024-06-01', '2024-06-01 14:27:00', 20100000598, 37, 3, 'Recomendado');
