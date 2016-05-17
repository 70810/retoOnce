-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-05-2016 a las 23:56:49
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `polls`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuestas`
--

CREATE TABLE IF NOT EXISTS `encuestas` (
  `id` varchar(50) NOT NULL,
  `pregunta` varchar(50) NOT NULL,
  `estado` int(1) NOT NULL,
  `porcentaje` float NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFinal` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `encuestas`
--

INSERT INTO `encuestas` (`id`, `pregunta`, `estado`, `porcentaje`, `fechaInicio`, `fechaFinal`) VALUES
('idencuesta1', 'que lenguaje de programacion te gusta?', 1, 0, '2016-05-17', '2016-05-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE IF NOT EXISTS `opciones` (
  `idOpciones` varchar(50) NOT NULL,
  `idEncuestas` varchar(50) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `valor` int(1) NOT NULL,
  PRIMARY KEY (`idOpciones`),
  KEY `idEncuestas` (`idEncuestas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`idOpciones`, `idEncuestas`, `nombre`, `valor`) VALUES
('idOpcion1', 'idencuesta1', 'java', 0),
('idOpcion2', 'idencuesta1', 'c#', 0),
('idOpcion3', 'idencuesta1', 'php', 0),
('idOpcion4', 'idencuesta1', 'Visual Basic', 0);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD CONSTRAINT `opciones_ibfk_2` FOREIGN KEY (`idEncuestas`) REFERENCES `encuestas` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
