-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2024 a las 17:26:53
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
-- Base de datos: `deportes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `idEquipo` int(11) NOT NULL,
  `nombreEquipo` varchar(50) NOT NULL,
  `institucion` varchar(50) NOT NULL,
  `departamento` varchar(30) NOT NULL,
  `municipio` varchar(30) NOT NULL,
  `direccion` text NOT NULL,
  `telefono` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`idEquipo`, `nombreEquipo`, `institucion`, `departamento`, `municipio`, `direccion`, `telefono`) VALUES
(1, 'Club Deportivo Los Leones', 'Escuela de Fútbol Los Leones', 'Valle del Cauca', 'Cali', 'Calle 10 #25-30', '31258745'),
(2, 'Atlético Bogotá', 'Colegio Nacional de Bogotá', 'Cundinamarca', 'Bogotá', 'Carrera 20 #45-60', '31025478'),
(3, 'Deportivo Antioquia', 'Club Deportivo Antioquia', 'Antioquia', 'Medellín', 'Avenida Libertadores #100', '31896542'),
(4, 'Club Atlético Nacional', 'Academia de Fútbol Nacional', 'Antioquia', 'Medellín', 'Carrera 80 #45-20', '31478596');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `idJugador` int(11) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `apellidos` varchar(30) DEFAULT NULL,
  `fechaNacimiento` date NOT NULL,
  `genero` char(1) NOT NULL,
  `posicion` varchar(30) NOT NULL,
  `idEquipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`idJugador`, `nombres`, `apellidos`, `fechaNacimiento`, `genero`, `posicion`, `idEquipo`) VALUES
(1, 'Juan', 'Gómez', '1998-03-15', 'M', 'portero', 1),
(2, 'Ana', 'Martínez', '1995-07-20', 'F', 'defensa', 1),
(3, 'Carlos', 'López', '2000-01-10', 'M', 'mediocampista', 1),
(4, 'Luis', 'Rodríguez', '1999-11-05', 'M', 'delantero', 1),
(5, 'María', 'Sánchez', '2002-05-12', 'F', 'portero', 2),
(6, 'Pedro', 'González', '1997-09-25', 'M', 'defensa', 2),
(7, 'Laura', 'Hernández', '2001-12-30', 'F', 'mediocampista', 2),
(8, 'Andrés', 'Díaz', '1998-08-18', 'M', 'delantero', 2),
(9, 'Santiago', 'Ramírez', '1996-04-03', 'M', 'portero', 3),
(10, 'Camila', 'Jiménez', '2000-10-15', 'F', 'defensa', 3),
(11, 'Javier', 'Martín', '1999-02-28', 'M', 'mediocampista', 3),
(12, 'Diana', 'Pérez', '2003-06-07', 'F', 'delantero', 3),
(13, 'Daniel', 'García', '1997-08-22', 'M', 'portero', 4),
(14, 'Fernanda', 'Londoño', '2001-11-17', 'F', 'defensa', 4),
(15, 'Andrea', 'Díaz', '2000-03-05', 'F', 'mediocampista', 4),
(16, 'Diego', 'Castro', '1998-09-10', 'M', 'delantero', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`idEquipo`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`idJugador`),
  ADD KEY `idEquipo` (`idEquipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `idEquipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `idJugador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `jugadores_ibfk_1` FOREIGN KEY (`idEquipo`) REFERENCES `equipos` (`idEquipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
