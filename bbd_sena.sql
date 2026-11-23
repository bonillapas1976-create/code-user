-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2026 a las 21:34:41
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bbd_sena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_administrativos`
--

CREATE TABLE `tb_administrativos` (
  `id_admin` int(11) NOT NULL,
  `nombre_ad` varchar(50) DEFAULT NULL,
  `documento` int(11) DEFAULT NULL,
  `telefono_ad` bigint(20) DEFAULT NULL,
  `dependencia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_administrativos`
--

INSERT INTO `tb_administrativos` (`id_admin`, `nombre_ad`, `documento`, `telefono_ad`, `dependencia`) VALUES
(11, 'Ana Rodriguez', 1100000011, 3101234511, 'Coordinacion academica'),
(12, 'Pedro Sanchez', 1100000012, 3101234512, 'Registro academico'),
(13, 'Luisa Herrera', 1100000013, 3101234513, 'Bienestar estudiantil'),
(14, 'Miguel Castro', 1100000014, 3101234514, 'Administracion'),
(15, 'Diana Morales', 1100000015, 3101234515, 'Talento humano'),
(16, 'Juan Ramirez', 1100000016, 3101234516, 'Archivo'),
(17, 'Paula Gomez', 1100000017, 3101234517, 'Secretaria'),
(18, 'Sergio Lopez', 1100000018, 3101234518, 'Coordinacion'),
(19, 'Valentina Ruiz', 1100000019, 3101234519, 'Atencion al usuario'),
(20, 'Mateo Torres', 1100000020, 3101234520, 'Gestion academica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_aprendices`
--

CREATE TABLE `tb_aprendices` (
  `id_aprendiz` int(11) NOT NULL,
  `nombre_ap` varchar(55) DEFAULT NULL,
  `tipo_doc` varchar(11) DEFAULT NULL,
  `numero_doc` int(23) DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL,
  `id_ficha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_aprendices`
--

INSERT INTO `tb_aprendices` (`id_aprendiz`, `nombre_ap`, `tipo_doc`, `numero_doc`, `telefono`, `id_ficha`) VALUES
(11, 'Andres Rojas', 'CC', 1000000111, 3201234511, 11),
(12, 'Maria Lopez', 'CC', 1000000112, 3201234512, 12),
(13, 'Juan Martinez', 'TI', 1000000113, 3201234513, 13),
(14, 'Laura Sanchez', 'CC', 1000000114, 3201234514, 14),
(15, 'Santiago Perez', 'CC', 1000000115, 3201234515, 15),
(16, 'Camila Torres', 'TI', 1000000116, 3201234516, 16),
(17, 'Daniel Castro', 'CC', 1000000117, 3201234517, 17),
(18, 'Valeria Gomez', 'CC', 1000000118, 3201234518, 18),
(19, 'Sebastian Ruiz', 'TI', 1000000119, 3201234519, 19),
(20, 'Isabella Moreno', 'CC', 1000000120, 3201234520, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_competencia`
--

CREATE TABLE `tb_competencia` (
  `id_competencia` int(11) NOT NULL,
  `competencia` varchar(12) DEFAULT NULL,
  `cod_compe` varchar(25) DEFAULT NULL,
  `descripcion` varchar(44) DEFAULT NULL,
  `duracion` int(11) DEFAULT NULL,
  `id_ficha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_competencia`
--

INSERT INTO `tb_competencia` (`id_competencia`, `competencia`, `cod_compe`, `descripcion`, `duracion`, `id_ficha`) VALUES
(11, 'SQL', 'COMP-011', 'Consultas y manejo de bases de datos', 48, 11),
(12, 'Excel', 'COMP-012', 'Uso de hojas de calculo', 40, 12),
(13, 'Python', 'COMP-013', 'Fundamentos de programacion Python', 60, 13),
(14, 'Estadistica', 'COMP-014', 'Analisis estadistico de informacion', 48, 14),
(15, 'Power BI', 'COMP-015', 'Visualizacion de indicadores', 40, 15),
(16, 'Analitica', 'COMP-016', 'Preparacion y limpieza de datos', 48, 16),
(17, 'ETL', 'COMP-017', 'Extraccion transformacion y carga', 36, 17),
(18, 'Programacion', 'COMP-018', 'Logica y desarrollo de algoritmos', 60, 18),
(19, 'Datos', 'COMP-019', 'Gestion de informacion', 40, 19),
(20, 'IA', 'COMP-020', 'Fundamentos de inteligencia artificial', 60, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ficha`
--

CREATE TABLE `tb_ficha` (
  `id_ficha` int(11) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `numero_ficha` int(11) DEFAULT NULL,
  `programa` varchar(30) DEFAULT NULL,
  `estado` varchar(11) DEFAULT NULL,
  `id_instructor` int(11) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_ficha`
--

INSERT INTO `tb_ficha` (`id_ficha`, `fecha_inicio`, `fecha_fin`, `numero_ficha`, `programa`, `estado`, `id_instructor`, `id_admin`) VALUES
(11, '2026-01-15', '2026-12-15', 2999011, 'Analisis de datos', 'Activa', 11, 11),
(12, '2026-02-01', '2026-12-20', 2999012, 'Programacion', 'Activa', 12, 12),
(13, '2026-01-20', '2026-11-30', 2999013, 'Bases de datos', 'Activa', 13, 13),
(14, '2026-03-01', '2027-02-28', 2999014, 'Inteligencia artificial', 'Activa', 14, 14),
(15, '2026-02-15', '2026-12-15', 2999015, 'Estadistica', 'Activa', 15, 15),
(16, '2026-01-10', '2026-11-10', 2999016, 'Excel avanzado', 'Activa', 16, 16),
(17, '2026-04-01', '2027-03-01', 2999017, 'Python', 'Activa', 17, 17),
(18, '2026-03-15', '2027-01-15', 2999018, 'Redes', 'Activa', 18, 18),
(19, '2026-02-10', '2026-12-10', 2999019, 'Visualizacion datos', 'Activa', 19, 19),
(20, '2026-05-01', '2027-04-30', 2999020, 'Machine Learning', 'Activa', 20, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_instructores`
--

CREATE TABLE `tb_instructores` (
  `id_instructor` int(11) NOT NULL,
  `nombre` varchar(55) DEFAULT NULL,
  `tipo_doc` varchar(30) DEFAULT NULL,
  `No_de_doc` int(11) DEFAULT NULL,
  `especialidad` varchar(45) DEFAULT NULL,
  `correo` varchar(25) DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_instructores`
--

INSERT INTO `tb_instructores` (`id_instructor`, `nombre`, `tipo_doc`, `No_de_doc`, `especialidad`, `correo`, `telefono`) VALUES
(11, 'Laura Gomez', 'CC', 1000000011, 'Bases de datos', 'laura@mail.com', 3001234511),
(12, 'Carlos Ramirez', 'CC', 1000000012, 'Programacion', 'carlos@mail.com', 3001234512),
(13, 'Maria Torres', 'CC', 1000000013, 'Analisis de datos', 'maria@mail.com', 3001234513),
(14, 'Andres Perez', 'CC', 1000000014, 'Inteligencia artificial', 'andres@mail.com', 3001234514),
(15, 'Sofia Martinez', 'CC', 1000000015, 'Estadistica', 'sofia@mail.com', 3001234515),
(16, 'Jorge Castro', 'CC', 1000000016, 'Excel', 'jorge@mail.com', 3001234516),
(17, 'Daniela Ruiz', 'CC', 1000000017, 'Python', 'daniela@mail.com', 3001234517),
(18, 'Felipe Vargas', 'CC', 1000000018, 'Redes', 'felipe@mail.com', 3001234518),
(19, 'Camila Rojas', 'CC', 1000000019, 'Visualizacion', 'camila@mail.com', 3001234519),
(20, 'David Moreno', 'CC', 1000000020, 'Machine Learning', 'david@mail.com', 3001234520);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_administrativos`
--
ALTER TABLE `tb_administrativos`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `tb_aprendices`
--
ALTER TABLE `tb_aprendices`
  ADD PRIMARY KEY (`id_aprendiz`),
  ADD KEY `fk_aprendices_ficha` (`id_ficha`);

--
-- Indices de la tabla `tb_competencia`
--
ALTER TABLE `tb_competencia`
  ADD PRIMARY KEY (`id_competencia`),
  ADD KEY `fk_competencia_ficha` (`id_ficha`);

--
-- Indices de la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  ADD PRIMARY KEY (`id_ficha`),
  ADD KEY `fk_ficha_instructor` (`id_instructor`),
  ADD KEY `fk_ficha_administrativo` (`id_admin`);

--
-- Indices de la tabla `tb_instructores`
--
ALTER TABLE `tb_instructores`
  ADD PRIMARY KEY (`id_instructor`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_aprendices`
--
ALTER TABLE `tb_aprendices`
  ADD CONSTRAINT `fk_aprendices_ficha` FOREIGN KEY (`id_ficha`) REFERENCES `tb_ficha` (`id_ficha`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_competencia`
--
ALTER TABLE `tb_competencia`
  ADD CONSTRAINT `fk_competencia_ficha` FOREIGN KEY (`id_ficha`) REFERENCES `tb_ficha` (`id_ficha`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  ADD CONSTRAINT `fk_ficha_administrativo` FOREIGN KEY (`id_admin`) REFERENCES `tb_administrativos` (`id_admin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ficha_instructor` FOREIGN KEY (`id_instructor`) REFERENCES `tb_instructores` (`id_instructor`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
