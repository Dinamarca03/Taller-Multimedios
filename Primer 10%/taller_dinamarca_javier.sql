-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-05-2021 a las 03:01:23
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `taller_dinamarca_javier`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apunte`
--

CREATE TABLE IF NOT EXISTS `apunte` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `Fecha_creacion` datetime NOT NULL,
  `Fecha_actualizacion` datetime NOT NULL,
  `URL` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `contenido_id` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido`
--

CREATE TABLE IF NOT EXISTS `contenido` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `Fecha:creacion` datetime NOT NULL,
  `Fecha_actualizacion` datetime NOT NULL,
  `Descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `contenido`
--

INSERT INTO `contenido` (`Id`, `Nombre`, `Fecha:creacion`, `Fecha_actualizacion`, `Descripcion`) VALUES
(1, 'modelo_texto', '2021-05-01 04:00:00', '2021-05-03 12:00:00', 'veremos los modelos de hiper texto');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
