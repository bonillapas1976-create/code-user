-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2026 a las 17:20:59
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
-- Base de datos: `transporte_masivo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_estacion`
--

CREATE TABLE `tb_estacion` (
  `id_estacion` int(11) NOT NULL,
  `ubicacion` varchar(30) DEFAULT NULL,
  `tipo_estacion` varchar(30) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `id_transmilenio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_estacion`
--

INSERT INTO `tb_estacion` (`id_estacion`, `ubicacion`, `tipo_estacion`, `nombre`, `id_transmilenio`) VALUES
(1, 'Calle 100', 'Intermedia', 'Calle 100', 1),
(2, 'Autopista Sur', 'Portal', 'Portal Sur', 2),
(3, 'Calle 26', 'Intermedia', 'Ciudad Universitaria', 3),
(4, 'Avenida 68', 'Sencilla', 'Avenida 68', 4),
(5, 'Carrera 7', 'Sencilla', 'Museo Nacional', 5),
(6, 'Calle 80', 'Portal', 'Portal 80', 6),
(7, 'Avenida Americas', 'Portal', 'Portal Americas', 7),
(8, 'Avenida Suba', 'Portal', 'Portal Suba', 8),
(9, 'Usme', 'Portal', 'Portal Usme', 9),
(10, 'Soacha', 'Intermedia', 'San Mateo', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_recorrido`
--

CREATE TABLE `tb_recorrido` (
  `id_recorrido` int(11) NOT NULL,
  `hora_llegada` time DEFAULT NULL,
  `numero_orden` int(11) DEFAULT NULL,
  `id_ruta` int(11) DEFAULT NULL,
  `id_estacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_recorrido`
--

INSERT INTO `tb_recorrido` (`id_recorrido`, `hora_llegada`, `numero_orden`, `id_ruta`, `id_estacion`) VALUES
(1, '05:00:00', 1, 1, 1),
(2, '05:15:00', 2, 1, 2),
(3, '05:30:00', 3, 2, 3),
(4, '05:45:00', 4, 2, 4),
(5, '06:00:00', 5, 3, 5),
(6, '06:15:00', 6, 4, 6),
(7, '06:30:00', 7, 5, 7),
(8, '06:45:00', 8, 6, 8),
(9, '07:00:00', 9, 7, 9),
(10, '07:15:00', 10, 8, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ruta`
--

CREATE TABLE `tb_ruta` (
  `id_ruta` int(11) NOT NULL,
  `origen` varchar(30) DEFAULT NULL,
  `destino` varchar(30) DEFAULT NULL,
  `id_transmilenio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_ruta`
--

INSERT INTO `tb_ruta` (`id_ruta`, `origen`, `destino`, `id_transmilenio`) VALUES
(1, 'Portal Norte', 'Universidades', 1),
(2, 'Portal Sur', 'Museo Nacional', 2),
(3, 'Portal Eldorado', 'Las Aguas', 3),
(4, 'Portal 80', 'Avenida Jimenez', 6),
(5, 'Portal Americas', 'Calle 26', 7),
(6, 'Portal Suba', 'Calle 72', 8),
(7, 'Portal Usme', 'Tercer Milenio', 9),
(8, 'San Mateo', 'Portal Norte', 10),
(9, 'Portal Norte', 'Calle 100', 1),
(10, 'Portal Sur', 'Portal Americas', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_transmilenio`
--

CREATE TABLE `tb_transmilenio` (
  `id_transmilenio` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `direccion_sede` varchar(30) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_transmilenio`
--

INSERT INTO `tb_transmilenio` (`id_transmilenio`, `nombre`, `direccion_sede`, `ciudad`) VALUES
(1, 'TransMilenio Norte', 'Calle 75', 'Bogota'),
(2, 'TransMilenio Sur', 'Autopista Sur', 'Bogota'),
(3, 'TransMilenio Centro', 'Calle 26', 'Bogota'),
(4, 'TransMilenio Occidente', 'Avenida 68', 'Bogota'),
(5, 'TransMilenio Oriente', 'Carrera 7', 'Bogota'),
(6, 'TransMilenio Portal 80', 'Calle 80', 'Bogota'),
(7, 'TransMilenio Americas', 'Avenida Americas', 'Bogota'),
(8, 'TransMilenio Suba', 'Avenida Suba', 'Bogota'),
(9, 'TransMilenio Usme', 'Calle 65 Sur', 'Bogota'),
(10, 'TransMilenio Soacha', 'Autopista Sur', 'Soacha');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_estacion`
--
ALTER TABLE `tb_estacion`
  ADD PRIMARY KEY (`id_estacion`),
  ADD KEY `fk_transmilenio_estacion` (`id_transmilenio`);

--
-- Indices de la tabla `tb_recorrido`
--
ALTER TABLE `tb_recorrido`
  ADD PRIMARY KEY (`id_recorrido`),
  ADD KEY `fk_ruta_recorrido` (`id_ruta`),
  ADD KEY `fk_estacion_recorrido` (`id_estacion`);

--
-- Indices de la tabla `tb_ruta`
--
ALTER TABLE `tb_ruta`
  ADD PRIMARY KEY (`id_ruta`),
  ADD KEY `fk_transmilenio_ruta` (`id_transmilenio`);

--
-- Indices de la tabla `tb_transmilenio`
--
ALTER TABLE `tb_transmilenio`
  ADD PRIMARY KEY (`id_transmilenio`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_estacion`
--
ALTER TABLE `tb_estacion`
  ADD CONSTRAINT `fk_transmilenio_estacion` FOREIGN KEY (`id_transmilenio`) REFERENCES `tb_transmilenio` (`id_transmilenio`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_recorrido`
--
ALTER TABLE `tb_recorrido`
  ADD CONSTRAINT `fk_estacion_recorrido` FOREIGN KEY (`id_estacion`) REFERENCES `tb_estacion` (`id_estacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ruta_recorrido` FOREIGN KEY (`id_ruta`) REFERENCES `tb_ruta` (`id_ruta`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_ruta`
--
ALTER TABLE `tb_ruta`
  ADD CONSTRAINT `fk_transmilenio_ruta` FOREIGN KEY (`id_transmilenio`) REFERENCES `tb_transmilenio` (`id_transmilenio`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
