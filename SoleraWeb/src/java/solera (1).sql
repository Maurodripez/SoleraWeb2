-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-10-2022 a las 20:59:51
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `solera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentosaprobados`
--

CREATE TABLE `documentosaprobados` (
  `iddocumentosaprobados` int(11) NOT NULL,
  `factura` varchar(5) DEFAULT 'false',
  `poder` varchar(5) DEFAULT 'false',
  `identificacion` varchar(5) DEFAULT 'false',
  `situacion` varchar(5) DEFAULT 'false',
  `curp` varchar(5) DEFAULT 'false',
  `estadoDoc` varchar(5) DEFAULT 'false',
  `tenencia` varchar(5) DEFAULT 'false',
  `baja` varchar(5) DEFAULT 'false',
  `tarjeta` varchar(5) DEFAULT 'false',
  `fkIdRegistroDocsAprobados` int(11) DEFAULT NULL,
  `polizaDoc` varchar(5) DEFAULT 'false',
  `comprobante` varchar(5) DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `documentosaprobados`
--

INSERT INTO `documentosaprobados` (`iddocumentosaprobados`, `factura`, `poder`, `identificacion`, `situacion`, `curp`, `estadoDoc`, `tenencia`, `baja`, `tarjeta`, `fkIdRegistroDocsAprobados`, `polizaDoc`, `comprobante`) VALUES
(23, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 76, 'false', 'false'),
(24, 'true', 'false', 'true', 'true', 'true', 'false', 'false', 'false', 'false', 75, 'false', 'false'),
(25, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 78, 'false', 'false'),
(26, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 77, 'false', 'false'),
(27, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 80, 'false', 'false'),
(28, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 79, 'false', 'false'),
(29, 'false', 'false', 'true', 'false', 'false', 'false', 'true', 'false', 'false', 81, 'false', 'false'),
(30, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 82, 'false', 'false'),
(31, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 83, 'false', 'false'),
(32, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 84, 'false', 'false'),
(33, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 85, 'false', 'false'),
(34, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 86, 'false', 'false'),
(35, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 87, 'false', 'false'),
(36, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 88, 'false', 'false'),
(37, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 89, 'false', 'false'),
(38, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 90, 'false', 'false'),
(39, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 91, 'false', 'false'),
(40, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 92, 'false', 'false'),
(41, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 93, 'false', 'false'),
(42, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 94, 'false', 'false'),
(43, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 96, 'false', 'false'),
(44, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 95, 'false', 'false'),
(45, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 97, 'false', 'false'),
(46, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 98, 'false', 'false'),
(47, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 101, 'false', 'false'),
(48, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 100, 'false', 'false'),
(49, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 99, 'false', 'false'),
(50, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 102, 'false', 'false'),
(51, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 103, 'false', 'false'),
(52, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 106, 'false', 'false'),
(53, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 104, 'false', 'false'),
(54, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 107, 'false', 'false'),
(55, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 105, 'false', 'false'),
(56, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 108, 'false', 'false'),
(57, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 110, 'false', 'false'),
(58, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 109, 'false', 'false'),
(59, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 112, 'false', 'false'),
(60, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 111, 'false', 'false'),
(61, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 113, 'false', 'false'),
(62, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 114, 'false', 'false'),
(63, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 117, 'false', 'false'),
(64, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 116, 'false', 'false'),
(65, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 118, 'false', 'false'),
(66, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 122, 'false', 'false'),
(67, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 121, 'false', 'false'),
(68, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 123, 'false', 'false'),
(69, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 120, 'false', 'false'),
(70, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 124, 'false', 'false'),
(71, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 125, 'false', 'false'),
(72, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 127, 'false', 'false'),
(73, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 126, 'false', 'false'),
(74, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 129, 'false', 'false'),
(75, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 130, 'false', 'false'),
(76, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 131, 'false', 'false'),
(77, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 133, 'false', 'false'),
(78, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 134, 'false', 'false'),
(79, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 136, 'false', 'false'),
(80, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 137, 'false', 'false'),
(81, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 138, 'false', 'false'),
(82, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 139, 'false', 'false'),
(83, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 143, 'false', 'false'),
(84, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 146, 'false', 'false'),
(85, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 145, 'false', 'false'),
(86, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 148, 'false', 'false'),
(87, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 151, 'false', 'false'),
(88, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 153, 'false', 'false'),
(89, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 156, 'false', 'false'),
(90, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 161, 'false', 'false'),
(91, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 164, 'false', 'false'),
(92, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 163, 'false', 'false'),
(93, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 165, 'false', 'false'),
(94, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 167, 'false', 'false'),
(95, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 168, 'false', 'false'),
(96, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 169, 'false', 'false'),
(97, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 171, 'false', 'false'),
(98, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 173, 'false', 'false'),
(99, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 177, 'false', 'false'),
(100, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 178, 'false', 'false'),
(101, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 179, 'false', 'false'),
(102, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 181, 'false', 'false'),
(103, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 180, 'false', 'false'),
(104, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 182, 'false', 'false'),
(105, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 183, 'false', 'false'),
(106, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 185, 'false', 'false'),
(107, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 186, 'false', 'false'),
(108, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 191, 'false', 'false'),
(109, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 194, 'false', 'false'),
(110, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 193, 'false', 'false'),
(111, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 195, 'false', 'false'),
(112, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 197, 'false', 'false'),
(113, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 199, 'false', 'false'),
(114, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 200, 'false', 'false'),
(115, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 201, 'false', 'false'),
(116, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 204, 'false', 'false'),
(117, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 206, 'false', 'false'),
(118, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 209, 'false', 'false'),
(119, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 208, 'false', 'false'),
(120, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 212, 'false', 'false'),
(121, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 214, 'false', 'false'),
(122, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 215, 'false', 'false'),
(123, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 216, 'false', 'false'),
(124, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 217, 'false', 'false'),
(125, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 218, 'false', 'false'),
(126, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 221, 'false', 'false'),
(127, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 220, 'false', 'false'),
(128, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 222, 'false', 'false'),
(129, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 223, 'false', 'false'),
(130, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 224, 'false', 'false'),
(131, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 225, 'false', 'false'),
(132, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 226, 'false', 'false'),
(133, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 229, 'false', 'false'),
(134, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 231, 'false', 'false'),
(135, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 232, 'false', 'false'),
(136, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 233, 'false', 'false'),
(137, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 234, 'false', 'false'),
(138, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 235, 'false', 'false'),
(139, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 236, 'false', 'false'),
(140, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 237, 'false', 'false'),
(141, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 238, 'false', 'false'),
(142, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 240, 'false', 'false'),
(143, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 242, 'false', 'false'),
(144, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 243, 'false', 'false'),
(145, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 244, 'false', 'false');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuestaplataforma`
--

CREATE TABLE `encuestaplataforma` (
  `idencuestaPlataforma` int(11) NOT NULL,
  `accesible` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoproceso`
--

CREATE TABLE `estadoproceso` (
  `idProceso` int(11) NOT NULL,
  `estacionProceso` varchar(45) DEFAULT NULL,
  `estatusOperativo` varchar(45) DEFAULT 'Nuevo',
  `subEstatusProceso` varchar(45) DEFAULT 'Nuevo, activacion por proceso normal',
  `usuarioSeguimiento` varchar(45) DEFAULT NULL,
  `fkIdRegistroEstadoProceso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estadoproceso`
--

INSERT INTO `estadoproceso` (`idProceso`, `estacionProceso`, `estatusOperativo`, `subEstatusProceso`, `usuarioSeguimiento`, `fkIdRegistroEstadoProceso`) VALUES
(27, 'Cancelado', 'Datos incorrectos', 'Nuevo, activacion por proceso normal', NULL, 76),
(28, 'Cancelado', 'Datos incorrectos', 'Nuevo, activacion por proceso normal', NULL, 75),
(29, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 78),
(30, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 77),
(33, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 80),
(34, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 79),
(35, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 81),
(36, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 82),
(37, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 83),
(38, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 84),
(39, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 85),
(40, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 86),
(41, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 87),
(42, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 88),
(43, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 89),
(44, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 90),
(45, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 91),
(46, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 92),
(47, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 93),
(48, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 96),
(49, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 94),
(50, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 95),
(51, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 97),
(52, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 98),
(53, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 101),
(54, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 99),
(55, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 100),
(56, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 102),
(57, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 103),
(58, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 106),
(59, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 104),
(60, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 105),
(61, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 107),
(62, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 108),
(63, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 109),
(64, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 111),
(65, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 112),
(66, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 110),
(67, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 113),
(68, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 114),
(69, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 116),
(70, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 117),
(71, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 118),
(72, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 123),
(73, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 122),
(74, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 121),
(75, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 120),
(76, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 124),
(77, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 125),
(78, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 127),
(79, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 126),
(80, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 129),
(81, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 130),
(82, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 131),
(83, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 134),
(84, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 133),
(85, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 136),
(86, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 137),
(87, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 138),
(88, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 139),
(89, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 143),
(90, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 146),
(91, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 145),
(92, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 148),
(93, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 151),
(94, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 153),
(95, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 156),
(96, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 161),
(97, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 163),
(98, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 164),
(99, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 165),
(100, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 167),
(101, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 168),
(102, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 169),
(103, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 171),
(104, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 173),
(105, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 178),
(106, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 177),
(107, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 179),
(108, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 181),
(109, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 180),
(110, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 182),
(111, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 183),
(112, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 186),
(113, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 185),
(114, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 191),
(115, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 193),
(116, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 194),
(117, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 195),
(118, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 197),
(119, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 199),
(120, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 200),
(121, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 201),
(122, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 204),
(123, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 206),
(124, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 209),
(125, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 208),
(126, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 212),
(127, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 214),
(128, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 215),
(129, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 216),
(130, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 217),
(131, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 218),
(132, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 221),
(133, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 220),
(134, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 222),
(135, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 223),
(136, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 224),
(137, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 225),
(138, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 226),
(139, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 229),
(140, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 231),
(141, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 232),
(142, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 233),
(143, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 234),
(144, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 235),
(145, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 236),
(146, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 237),
(147, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 238),
(148, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 240),
(149, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 242),
(150, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 243),
(151, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 244);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechasseguimiento`
--

CREATE TABLE `fechasseguimiento` (
  `idFechasseguimiento` int(11) NOT NULL,
  `fechaSeguimiento` date DEFAULT NULL,
  `fechaContactoCliente` date DEFAULT NULL,
  `fechaPrimerEnvioDoc` date DEFAULT NULL,
  `fechaIntegracionexpedienteCompleto` date DEFAULT NULL,
  `fechaTermino` date DEFAULT NULL,
  `contactoFinal` date DEFAULT NULL,
  `siClienteOtro` varchar(45) DEFAULT NULL,
  `numDatosincorrectos` varchar(45) DEFAULT NULL,
  `fecharecepcionDocOriginales` datetime DEFAULT NULL,
  `fechaPago` datetime DEFAULT NULL,
  `docCompletosCorrectos` varchar(45) DEFAULT NULL,
  `noindicaFaltantes` varchar(45) DEFAULT NULL,
  `importePagado` varchar(45) DEFAULT NULL,
  `comentarios` varchar(45) DEFAULT NULL,
  `detalles` varchar(45) DEFAULT NULL,
  `linea` varchar(45) DEFAULT NULL,
  `guia` varchar(45) DEFAULT NULL,
  `refactura` varchar(45) DEFAULT NULL,
  `aviso` varchar(45) DEFAULT NULL,
  `fkidRegistro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fechasseguimiento`
--

INSERT INTO `fechasseguimiento` (`idFechasseguimiento`, `fechaSeguimiento`, `fechaContactoCliente`, `fechaPrimerEnvioDoc`, `fechaIntegracionexpedienteCompleto`, `fechaTermino`, `contactoFinal`, `siClienteOtro`, `numDatosincorrectos`, `fecharecepcionDocOriginales`, `fechaPago`, `docCompletosCorrectos`, `noindicaFaltantes`, `importePagado`, `comentarios`, `detalles`, `linea`, `guia`, `refactura`, `aviso`, `fkidRegistro`) VALUES
(29, '2022-10-19', NULL, '2019-09-23', '2022-09-01', '2022-09-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 76),
(30, '2022-09-14', NULL, '2022-10-25', '2022-10-26', '2022-10-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78),
(33, NULL, NULL, '2022-10-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 77),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80),
(36, NULL, NULL, '2022-10-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 81),
(37, NULL, NULL, '2022-10-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82),
(38, NULL, NULL, '2022-10-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 84),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 85),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86),
(42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 87),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 88),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 89),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 91),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92),
(48, NULL, NULL, '2022-10-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 93),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 94),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 95),
(51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 96),
(52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 97),
(53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 98),
(54, NULL, NULL, '2022-10-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100),
(55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 101),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 102),
(58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 103),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 104),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 106),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 105),
(62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 107),
(63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 108),
(64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 109),
(65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 112),
(66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 111),
(67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 110),
(68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 113),
(69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 114),
(70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 117),
(71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 116),
(72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 118),
(73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 123),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 121),
(75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120),
(76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 122),
(77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 124),
(78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 125),
(79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 126),
(80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 127),
(81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 129),
(82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130),
(83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131),
(84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134),
(85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136),
(86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133),
(87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137),
(88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138),
(89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139),
(90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 143),
(91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 146),
(92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 145),
(93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 148),
(94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 151),
(95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 153),
(96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 156),
(97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 161),
(98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 164),
(99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 163),
(100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 165),
(101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 167),
(102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 168),
(103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 169),
(104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 171),
(105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 173),
(106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 178),
(107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 177),
(108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 179),
(109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 181),
(110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 180),
(111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 182),
(112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 183),
(113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 185),
(114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 186),
(115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 191),
(116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 194),
(117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 193),
(118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 195),
(119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 197),
(120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 199),
(121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200),
(122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 201),
(123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 204),
(124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 206),
(125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 209),
(126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 208),
(127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 212),
(128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 215),
(129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 214),
(130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 216),
(131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 217),
(132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 218),
(133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 221),
(134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 220),
(135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 223),
(136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 222),
(137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 224),
(138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 225),
(139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 226),
(140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 229),
(141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 231),
(142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 233),
(143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 234),
(144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 232),
(145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 235),
(146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 236),
(147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 237),
(148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 238),
(149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 240),
(150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 242),
(151, '2022-10-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 243),
(152, '2022-10-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 244);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `idimagenes` int(11) NOT NULL,
  `nombreImagen` varchar(45) DEFAULT NULL,
  `rutaImagen` varchar(300) DEFAULT NULL,
  `fkImagen` int(11) NOT NULL,
  `fechaCarga` date DEFAULT NULL,
  `nombreOriginal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`idimagenes`, `nombreImagen`, `rutaImagen`, `fkImagen`, `fechaCarga`, `nombreOriginal`) VALUES
(21, 'Identificacion oficial', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\76\\foto_parzibyte.me (6).png', 76, '2022-10-12', 'foto_parzibyte.me (6).png'),
(22, 'Comprobante de domicilio', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\76\\foto_parzibyte.me (6).png', 76, '2022-10-12', 'foto_parzibyte.me (6).png'),
(23, 'Informacion adicional', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\76\\foto_parzibyte.me (7).png', 76, '2022-10-12', 'foto_parzibyte.me (7).png'),
(24, 'Factura del vehiculo', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\76\\foto_parzibyte.me (2).png', 76, '2022-10-12', 'foto_parzibyte.me (2).png'),
(25, 'Factura del vehiculo', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\76\\foto_parzibyte.me (8).png', 76, '2022-10-12', 'foto_parzibyte.me (8).png'),
(27, 'Identificacion oficial', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\77\\foto_parzibyte.me (7).png', 77, '2022-10-12', 'foto_parzibyte.me (7).png'),
(31, 'Identificacion oficial', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\75\\foto_parzibyte.me (6).png', 75, '2022-10-18', 'foto_parzibyte.me (6).png'),
(32, 'Comprobante de domicilio', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\75\\foto_parzibyte.me (8).png', 75, '2022-10-18', 'foto_parzibyte.me (8).png'),
(33, 'Factura del vehiculo', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\75\\archivo (2).pdf', 75, '2022-10-19', 'archivo (2).pdf'),
(34, 'Informacion adicional', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\75\\cute (9).jpg', 75, '2022-10-19', 'cute (9).jpg'),
(35, 'Informacion adicional', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\75\\cute.jpg', 75, '2022-10-19', 'cute.jpg'),
(36, 'Acreditacion', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\75\\foto_parzibyte.me (2).png', 75, '2022-10-21', 'foto_parzibyte.me (2).png'),
(37, 'Acreditacion', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\75\\foto_parzibyte.me (8).png', 75, '2022-10-21', 'foto_parzibyte.me (8).png'),
(38, 'Acreditacion', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\75\\foto_parzibyte.me (8).png', 75, '2022-10-21', 'foto_parzibyte.me (8).png'),
(39, 'Acreditacion', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\75\\foto_parzibyte.me (8).png', 75, '2022-10-21', 'foto_parzibyte.me (8).png'),
(40, 'Acreditacion', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\75\\foto_parzibyte.me (8).png', 75, '2022-10-21', 'foto_parzibyte.me (8).png'),
(41, 'Baja', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\75\\foto_parzibyte.me (8).png', 75, '2022-10-21', 'foto_parzibyte.me (8).png'),
(43, 'Denuncia', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\75\\foto_parzibyte.me (7).png', 75, '2022-10-21', 'foto_parzibyte.me (7).png'),
(44, 'Informacion adicional', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\75\\cute (9).jpg', 75, '2022-10-21', 'cute (9).jpg'),
(45, 'Tenencias', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\75\\foto_parzibyte.me (2).png', 75, '2022-10-21', 'foto_parzibyte.me (2).png'),
(46, 'Tenencias', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\75\\foto_parzibyte.me (2).png', 75, '2022-10-21', 'foto_parzibyte.me (2).png'),
(48, 'Factura original', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\82\\pruebas.png', 82, '2022-10-22', 'pruebas.png'),
(50, 'Poder notarial', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\82\\pruebas.png', 82, '2022-10-22', 'pruebas.png'),
(52, 'Poder notarial', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\83\\foto_parzibyte.me (7).png', 83, '2022-10-22', 'foto_parzibyte.me (7).png'),
(53, 'Identificacion oficial', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\83\\foto_parzibyte.me (6).png', 83, '2022-10-22', 'foto_parzibyte.me (6).png'),
(54, 'Factura original', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\83\\pruebas.png', 83, '2022-10-22', 'pruebas.png'),
(64, 'Acreditacion', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\100\\Acreditacion-cute (7).jpg', 100, '2022-10-26', 'Acreditacion-cute (7).jpg'),
(65, 'Factura original', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\100\\Factura original-cute (2).jpg', 100, '2022-10-27', 'Factura original-cute (2).jpg'),
(66, 'Poder notarial', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\100\\Poder notarial-cute (11).jpg', 100, '2022-10-27', 'Poder notarial-cute (11).jpg'),
(67, 'Identificacion oficial', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\81\\Identificacion oficial-cute (12).jpg', 81, '2022-10-27', 'Identificacion oficial-cute (12).jpg'),
(68, 'Factura original', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\93\\Factura original-foto_parzibyte.me (3).png', 93, '2022-10-27', 'Factura original-foto_parzibyte.me (3).png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infoauto`
--

CREATE TABLE `infoauto` (
  `idAuto` int(11) NOT NULL,
  `marca` varchar(30) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `numSerie` varchar(45) DEFAULT NULL,
  `valorIndemnizacion` varchar(45) DEFAULT NULL,
  `fkIdRegistro` int(11) DEFAULT NULL,
  `valorComercial` varchar(45) DEFAULT NULL,
  `placas` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `infoauto`
--

INSERT INTO `infoauto` (`idAuto`, `marca`, `tipo`, `modelo`, `numSerie`, `valorIndemnizacion`, `fkIdRegistro`, `valorComercial`, `placas`) VALUES
(35, 'toyota', 'yaris', '2019', '234324', 'null', 76, 'null', 'null'),
(36, 'suzuki', '2019', 'ignis', '23425636756585856', 'null', 75, 'null', 'null'),
(37, 'suzuki', '2019', 'ignis', '23425636756585856', NULL, 78, NULL, NULL),
(38, 'toyota', '2019', 'yris', '89080776868', NULL, 77, NULL, NULL),
(39, 'toyota', '2019', 'yris', '89080776868', NULL, 80, NULL, NULL),
(40, 'suzuki', '2019', 'ignis', '23425636756585856', NULL, 79, NULL, NULL),
(41, 'suzuki', '2019', 'ignis', '23425636756585856', 'null', 81, 'null', 'null'),
(42, 'toyota', '2019', 'yris', '89080776868', NULL, 82, NULL, NULL),
(43, 'suzuki', '2019', 'ignis', '23425636756585856', NULL, 83, NULL, NULL),
(44, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 84, NULL, NULL),
(45, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 85, NULL, NULL),
(46, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 86, NULL, NULL),
(47, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 87, NULL, NULL),
(48, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 88, NULL, NULL),
(49, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 89, NULL, NULL),
(50, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 90, NULL, NULL),
(51, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 91, NULL, NULL),
(52, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 92, NULL, NULL),
(53, 'RENAULT', '2003', 'MEGANE', 'VF1H019CX3E513297', NULL, 93, NULL, NULL),
(54, 'YAMAHA', '2016', 'YB125', 'LBPKE0970G0496720', NULL, 94, NULL, NULL),
(55, 'CHEVROLET', '2001', 'CHEVY', '3G1SF24211S179022', NULL, 96, NULL, NULL),
(56, 'CHEVROLET', '2018', 'AVEO', 'LSGHD52H3JD100308', NULL, 97, NULL, NULL),
(57, 'YAMAHA', '2018', 'T110', 'LL8UE0811JB535377', NULL, 95, NULL, NULL),
(58, 'LIFAN', '2017', 'FL200', 'LF3UCM409HA000144', NULL, 98, NULL, NULL),
(59, 'AUDI', '2018', 'A2', 'WAUAYAGA2JA012208', NULL, 101, NULL, NULL),
(60, 'ITALIKA', '2013', 'MOTOCICLETA', 'CSRXCJCC6D1312014', NULL, 99, NULL, NULL),
(61, 'HONDA', '2014', 'CITY', 'MRHGM666XEP067283', NULL, 100, NULL, NULL),
(62, 'FORD', '2009', 'F450', '3FEMF56S29MA17115', NULL, 102, NULL, NULL),
(63, 'FORD', '2017', 'FIGO', 'MAJFP1MD4HA147300', NULL, 103, NULL, NULL),
(64, 'FORD', '2018', 'F150', '1FTEW1C50JKD27764', NULL, 106, NULL, NULL),
(65, 'FORD', '2019', 'F150', '1FTEW1CB4KKD10523', NULL, 105, NULL, NULL),
(66, 'CHEVROLET', '2014', 'SPARK', 'KL8CD6AD3EC437611', NULL, 104, NULL, NULL),
(67, 'VOLKSWAGEN', '2004', 'POINTER', '9BWCC05X94T053994', NULL, 107, NULL, NULL),
(68, 'TOYOTA', '1997', 'COROLLA', '1NXBA02E1VZ661403', NULL, 108, NULL, NULL),
(69, 'NISSAN', '2016', 'ROGUE', '5N1AT2MT2GC878111', NULL, 110, NULL, NULL),
(70, 'CHEVROLET', '2013', 'AVEO', '3G1TA5AF8DL101329', NULL, 109, NULL, NULL),
(71, 'CHEVROLET', '2002', 'SUBURBAN', '3GNEC16Z32G321433', NULL, 111, NULL, NULL),
(72, 'NISSAN', '2016', 'NP 300', '3N6AD35C7GK826616', NULL, 112, NULL, NULL),
(73, 'LEXUS', '2001', 'RX300', 'JTJGF10U310114174', NULL, 113, NULL, NULL),
(74, 'CHEVROLET', '2014', 'AVEO', '3G1TA5AF1EL139017', NULL, 114, NULL, NULL),
(75, 'GMC', '2017', 'SIERRA', '3GTU2NEC9HG409780', NULL, 117, NULL, NULL),
(76, 'FORD', '2004', 'FOCUS', '1FABP33304W101754', NULL, 116, NULL, NULL),
(77, 'NISSAN', '2022', 'VERSA', '3N1CN7AE8NK394657', NULL, 118, NULL, NULL),
(78, 'JEEP', '2012', 'COMPAS', '1C4AJCAB9CD505440', NULL, 122, NULL, NULL),
(79, 'BMW', '2013', 'X3', 'WBAWX9102D0A00726', NULL, 121, NULL, NULL),
(80, 'NISSAN', '2007', 'TIIDA', '3N1BC11S77K191976', NULL, 123, NULL, NULL),
(81, 'HONDA', '2004', 'ACCORD', '3HGCM56384G001996', NULL, 120, NULL, NULL),
(82, 'FORD', '2017', 'RANGER', '8AFWR5AAXH6006605', NULL, 124, NULL, NULL),
(83, 'CHEVROLET', '2011', 'TORNADO', '93CXM8020BC107527', NULL, 125, NULL, NULL),
(84, 'VOLKSWAGEN', '2013', 'JETTA', '3VW2W2AJ1DM262300', NULL, 126, NULL, NULL),
(85, 'CHEVROLET', '2000', 'TRACKER', '2CNBE13C3Y6933055', NULL, 127, NULL, NULL),
(86, 'KIA', '2019', 'SORENTO', '5XYPH4A3XKG496011', NULL, 130, NULL, NULL),
(87, 'CHEVROLET', '2005', 'CHEVY', '3G1SE51X05S211775', NULL, 129, NULL, NULL),
(88, 'CHEVROLET', '2006', 'SILVERADO', '1GCEK19T96Z235844', NULL, 131, NULL, NULL),
(89, 'HONDA', '2019', '150', '3H1KC3886KD000169', NULL, 133, NULL, NULL),
(90, 'CHEVROLET', '2022', 'AVEO', 'LSGHD52H8ND009167', NULL, 134, NULL, NULL),
(91, 'AUDI', '2014', 'A4', 'WAUACC8K5EN040939', NULL, 136, NULL, NULL),
(92, 'CHEVROLET', '2019', 'AVEO', 'LSGHD52H6KD110946', NULL, 137, NULL, NULL),
(93, 'SEAT', '2020', 'CUPRA ATECA', 'VSSAD75FXL6504764', NULL, 138, NULL, NULL),
(94, 'NISSAN', '2012', 'MARCH', '3N1CK3CSXCL245162', NULL, 139, NULL, NULL),
(95, 'CHEVROLET', '2015', 'SPARK', 'KL8CJ6AD5FC735135', NULL, 143, NULL, NULL),
(96, 'VOLKSWAGEN', '2000', 'POINTER', '9BWA37726YP072535', NULL, 146, NULL, NULL),
(97, 'CHEVROLET', '2016', 'TORNADO', '93CCL8001GB171413', NULL, 145, NULL, NULL),
(98, 'NISSAN', '2014', 'JUKE', 'JN1AF55C9ET100366', NULL, 148, NULL, NULL),
(99, 'ITALIKA', '2014', '250Z', 'LLCLPMB04EA103381', NULL, 151, NULL, NULL),
(100, 'ITALIKA', '2021', 'DT250', '3SCK2FEX8M1004024', NULL, 153, NULL, NULL),
(101, 'HONDA', '1999', 'CBR 600', 'JH2PC3516XM000037', NULL, 156, NULL, NULL),
(102, 'YAMAHA', '2017', 'YBR125', 'LBPKE1243H0098344', NULL, 161, NULL, NULL),
(103, 'ITALIKA', '2018', 'AT110', '3SCPATCS1J1012217', NULL, 163, NULL, NULL),
(104, 'BAJAJ', '2017', 'NS200', 'MD2A36FZ4HCE00736', NULL, 164, NULL, NULL),
(105, 'ITALIKA', '2018', 'DT150', '3SCPDTEE4J1021427', NULL, 165, NULL, NULL),
(106, 'ITALIKA', '2019', 'DT150', '3SCPDTEE6K1011144', NULL, 167, NULL, NULL),
(107, 'ITALIKA', '2017', 'FT150', '3SCPFTEE0H1092063', NULL, 168, NULL, NULL),
(108, 'HONDA', '2014', 'ACCORD', '1HGCR2637EA902499', NULL, 169, NULL, NULL),
(109, 'FORD', '2009', 'ECONOLINE', '1FTNE14W19DA20856', NULL, 171, NULL, NULL),
(110, 'NISSAN', '2017', 'MARCH', '3N1CK3CD3HL220788', NULL, 173, NULL, NULL),
(111, 'HYUNDAI', '2021', 'GRAND I10', 'MALB24BC5MM027739', NULL, 177, NULL, NULL),
(112, 'NISSAN', '2013', 'TIIDA', '3N1BC1ADXDK225812', NULL, 178, NULL, NULL),
(113, 'MAZDA', '2012', 'MAZDA 3', 'JM1BL1VF9C1547009', NULL, 179, NULL, NULL),
(114, 'MITSUBISHI', '2006', 'ENDEAVOR', '4A4MM41SX6E023089', NULL, 180, NULL, NULL),
(115, 'FORD', '2008', 'EXPLORER', '1FMEU63E58UA89200', NULL, 181, NULL, NULL),
(116, 'FORD', '2004', 'F350', '3FDKF36L64MA17281', NULL, 182, NULL, NULL),
(117, 'CHEVROLET', '2016', 'CAMARO', '1G1F91R74G0179670', NULL, 183, NULL, NULL),
(118, 'NISSAN', '2016', 'MARCH', '3N1CK3CD3GL235788', NULL, 186, NULL, NULL),
(119, 'CHEVROLET', '2016', 'SIERRA', '1GTN29EC1GZ110262', NULL, 185, NULL, NULL),
(120, 'HONDA', '2017', 'CIVIC', '2HGFC3288HH851199', NULL, 191, NULL, NULL),
(121, 'CHEVROLET', '2016', 'SONIC', '3G1J85CCXGS557641', NULL, 193, NULL, NULL),
(122, 'TOYOTA', '2007', 'CAMRY', '4T1BK46K57U515982', NULL, 194, NULL, NULL),
(123, 'MINI', '2016', 'MINI COOPER', 'WMWXS5109G2B11259', NULL, 195, NULL, NULL),
(124, 'NISSAN', '2017', 'VERSA', '3N1CN7AD9HL815887', NULL, 197, NULL, NULL),
(125, 'VOLKSWAGEN', '2019', 'JETTA', '3VWKP6BU9KM159085', NULL, 200, NULL, NULL),
(126, 'SUZUKI', '2015', 'VITARA', 'JS3TE04V9F4201855', NULL, 199, NULL, NULL),
(127, 'NISSAN', '2014', 'PATHFINDER', '5N1AR2MN5EC619254', NULL, 201, NULL, NULL),
(128, 'HONDA', '2002', 'CIVIC', '1HGES16722L900525', NULL, 204, NULL, NULL),
(129, 'RAM', '2021', 'PROMASTER', '9BD265555M9194551', NULL, 206, NULL, NULL),
(130, 'NISSAN', '2021', 'VERSA', '3N1CN8AE8ML900986', NULL, 209, NULL, NULL),
(131, 'GMC', '2016', 'YUKON', '1GKS27KJ4GR412742', NULL, 208, NULL, NULL),
(132, 'FORD', '2008', 'FOCUS', '1FAHP35N98W181084', NULL, 212, NULL, NULL),
(133, 'TOYOTA', '2005', 'RAV-4 L', 'JTEGD20V450079864', NULL, 214, NULL, NULL),
(134, 'PEUGEOT', '2014', 'MANAGER', 'VF3YDZMF5E2467006', NULL, 215, NULL, NULL),
(135, 'RENAULT', '2010', 'KOLEOS', 'VF1VY1GY9AC316799', NULL, 216, NULL, NULL),
(136, 'CHEVROLET', '2001', 'CHEVY', '3G1SF24271S139995', NULL, 217, NULL, NULL),
(137, 'PEUGEOT', '2022', 'PARTNER', 'VR3EUHNP8NJ509350', NULL, 218, NULL, NULL),
(138, 'NISSAN', '2019', 'KICKS', '3N8CP5HD3HL474377', NULL, 221, NULL, NULL),
(139, 'NISSAN', '2015', 'NP 300', '3N6DD25X0FK075481', NULL, 220, NULL, NULL),
(140, 'FIAT', '2017', 'UNO', '9BD195521H0776908', NULL, 222, NULL, NULL),
(141, 'NISSAN', '2001', 'TSURU', '3N1EB31S81K273704', NULL, 223, NULL, NULL),
(142, 'NISSAN', '2018', 'KICKS', '3N8CP5HE1JL505057', NULL, 224, NULL, NULL),
(143, 'DODGE', '2019', 'RAM', '9BD578452KY281677.', NULL, 225, NULL, NULL),
(144, 'KIA', '2018', 'SPORTAGE', 'U6YPH3AAXJL519854', NULL, 226, NULL, NULL),
(145, 'ITALIKA', '2021', 'FT125', '3SCK29EL8M1007911', NULL, 229, NULL, NULL),
(146, 'HONDA', '2006', 'ACCORD', '3HGCM56366G003216', NULL, 231, NULL, NULL),
(147, 'CHEVROLET', '2021', 'BEAT', 'MA6CA6CD8MT009979', NULL, 232, NULL, NULL),
(148, 'DODGE', '2020', 'NEON', 'ZFAADAAP6L6P33382', NULL, 233, NULL, NULL),
(149, 'NISSAN', '2018', 'NP300', '3N6AD35C5JK811670', NULL, 234, NULL, NULL),
(150, 'DODGE', '2018', 'NEON', 'ZFACDACP6J6K58027', NULL, 235, NULL, NULL),
(151, 'HYUNDAI', '2020', 'I10', 'MALA84BC5LM376568', NULL, 236, NULL, NULL),
(152, 'VOLKSWAGEN', '2017', 'UP', '9BWAG4126HT541593', NULL, 237, NULL, NULL),
(153, 'HONDA', '2006', 'CIVIC', '1HGFA16886L026381', NULL, 238, NULL, NULL),
(154, 'RENAULT', '2019', 'DUSTER', '9FBHS2FF9KM490005', NULL, 240, NULL, NULL),
(155, 'JEEP', '2019', 'CHEROKEE', '1C4PJLDB7KD348091', NULL, 242, NULL, NULL),
(156, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 243, NULL, NULL),
(157, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 244, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infocarga`
--

CREATE TABLE `infocarga` (
  `idinfocarga` int(11) NOT NULL,
  `fuente` varchar(45) DEFAULT NULL,
  `archivo` varchar(45) DEFAULT NULL,
  `tipoCedula` varchar(45) DEFAULT NULL,
  `fkIdRegistro` int(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infocliente`
--

CREATE TABLE `infocliente` (
  `idCliente` int(11) NOT NULL,
  `telefonoPrincipal` varchar(15) NOT NULL,
  `telefonosecundario` varchar(15) DEFAULT NULL,
  `contacto` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `fkIdRegistro` int(11) DEFAULT NULL,
  `asegurado` varchar(45) NOT NULL,
  `correoContacto` varchar(45) DEFAULT NULL,
  `telContacto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `infocliente`
--

INSERT INTO `infocliente` (`idCliente`, `telefonoPrincipal`, `telefonosecundario`, `contacto`, `correo`, `fkIdRegistro`, `asegurado`, `correoContacto`, `telContacto`) VALUES
(36, 'null', 'Martha', 'sdadasd@sdfs.com', 'null', 76, '89080776868', '457576', '67976967'),
(37, '2342525235', '13537656', 'null', 'sdad@sdfs.com', 75, 'Marin', 'null', 'null'),
(38, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 78, 'Marin', NULL, NULL),
(39, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 77, 'Martha', NULL, NULL),
(40, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 80, 'Martha', NULL, NULL),
(41, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 79, 'Marin', NULL, NULL),
(42, '2342525235', '13537656', 'null', 'sdad@sdfs.com', 81, 'Marin', 'null', 'null'),
(43, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 82, 'Martha', NULL, NULL),
(44, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 83, 'Marin', NULL, NULL),
(45, '4456789783', '', NULL, 'may@gil.com', 84, 'mario', NULL, NULL),
(46, '4456789783', '', NULL, 'may@gil.com', 85, 'mario', NULL, NULL),
(47, '4456789783', '', NULL, 'may@gil.com', 86, 'mario', NULL, NULL),
(48, '4456789783', '', NULL, 'may@gil.com', 87, 'mario', NULL, NULL),
(49, '4456789783', '', NULL, 'may@gil.com', 88, 'mario', NULL, NULL),
(50, '4456789783', '', NULL, 'may@gil.com', 89, 'mario', NULL, NULL),
(51, '4456789783', '', NULL, 'may@gil.com', 90, 'mario', NULL, NULL),
(52, '4456789783', '', NULL, 'may@gil.com', 91, 'mario', NULL, NULL),
(53, '4456789783', '', NULL, 'may@gil.com', 92, 'mario', NULL, NULL),
(54, '3336672029', '3311447084T', NULL, 'NO@CORREO', 93, 'MARIO ALBERTO GONZALEZ', NULL, NULL),
(55, '5569784386', 'SD', NULL, 'SERVICIOS@PASCAL.COM.MX', 94, 'AGENCIA ADUANAL PASCAL SC', NULL, NULL),
(56, '3323850028/3336', 'SD', NULL, '#ERROR_#N/A', 96, 'JOSE LUS VELAZQUEZ OROZCO', NULL, NULL),
(57, '5546026059', 'SD', NULL, '0', 95, 'RAFAEL SANCHEZ', NULL, NULL),
(58, '3326009442', 'SD', NULL, '0', 97, 'GUSTAVO VAZQUEZ', NULL, NULL),
(59, '3141743906', 'SD', NULL, 'SINCORREO@GMAIL.COM', 98, 'LUIS RAMNADO RAMOS SUAREZ', NULL, NULL),
(60, '3316107611', '3336861451', NULL, 'SINCORREO@GMAIL.COM', 101, 'ZULMA BELEN PEREZ ROBLES', NULL, NULL),
(61, '5559532941', 'SD', NULL, '0', 102, 'FRANCISCO JAVIER MARTINEZ QUINTO', NULL, NULL),
(62, '3311458489', 'SD', NULL, '0', 99, 'RUBI ESTEFANIA GOMEZ FRANCO', NULL, NULL),
(63, '3318042751', '3325900920', NULL, 'SINCORREO@GMAIL.COM', 100, 'HECTOR MANUEL DE LA CRUZ GONZALEZ', NULL, NULL),
(64, '3323630504', '3322095023', NULL, 'CAROLINALOPEZ7904@HOTMAIL.COM', 103, 'LIDIA CAROLINA LOPEZ ORENDAY', NULL, NULL),
(65, '3332583776', '3330070401', NULL, 'VEHICULOS.PATRIMONIO@GMAIL.COM', 106, 'FEDERICO MORENO  /  OSWALDO CERRANO LICEA', NULL, NULL),
(66, '3322043885', 'SD', NULL, '0', 107, 'ABRAHAM OMAR GOMEZ ESTEBAN', NULL, NULL),
(67, '3331707140', 'SD', NULL, '0', 105, 'JOSE DE JESUS ARECHIGA SEGURA', NULL, NULL),
(68, '5543905863', 'SD', NULL, '0', 104, 'LOGICA INDUSTRIAL SA DE CV/MARTIN LOZA', NULL, NULL),
(69, 'S/D', 'SD', NULL, '0', 108, 'TERCERO RUBEN GARCIA QUIRARTE', NULL, NULL),
(70, '9154228543', '5553228200', NULL, 'SINCORREO@GMAIL.COM', 110, 'ARMANDO REYES', NULL, NULL),
(71, '3222356273', '5555804780', NULL, 'SINCORREO@GMAIL.COM', 109, 'FLOR SANABRIA', NULL, NULL),
(72, '3751135617', 'SD', NULL, 'SINCORREO@GMAIL.COM', 111, 'MARTIN REGALADO', NULL, NULL),
(73, '3411026393', '3123170106', NULL, 'SINCORREO@GMAIL.COM', 112, 'JORGE MONTAÑO LOPEZ', NULL, NULL),
(74, '3121745959', 'SD', NULL, '0', 113, 'JAVIER MORENO GALINDO', NULL, NULL),
(75, '3332438359', '5543649967', NULL, 'GUILLERMO.MORALES@LOGITEL.COM.MX', 114, 'LOGICA INDUSTRIAL SA DE CV/MOISES LUNA', NULL, NULL),
(76, '3311735886', 'SD', NULL, '0', 116, 'HILDA NELLY LUCANO RAMÃREZ', NULL, NULL),
(77, '3326259063', 'SD', NULL, '0', 117, 'JOSE RUBEN ALCAZAR', NULL, NULL),
(78, '3331674010', 'SD', NULL, '0', 118, 'SANCHEZ SA DE CV//HECTOR ARIAS MORENO', NULL, NULL),
(79, '3318201759', 'SD', NULL, 'LICMELISSACAMARENA@GMAIL.COM', 123, 'MELISSA LIZBETH CAMARENA RIOS', NULL, NULL),
(80, '5586413690', 'SD', NULL, '0', 122, 'LUIS ALFONSO ESTRADA MALACON', NULL, NULL),
(81, '3471015758', 'SD', NULL, '0', 120, 'ISRAEL GONZALEZ RAMIREZ//JUAN CAMARENA', NULL, NULL),
(82, '3312237722', 'SD', NULL, 'ADLOPEZ5757@GMAIL.COM', 121, 'ADRIAN LOPEZ GOMEZ', NULL, NULL),
(83, '3320783072', 'SD', NULL, 'TERESA.M@ASESORIAAUTOONLINE.COM.MX', 124, 'ISMAEL RAMOS', NULL, NULL),
(84, '3320783072', 'SD', NULL, 'SINCORREO@GMAIL.COM', 125, 'ADAN RAMIREZ GUTIERREZ', NULL, NULL),
(85, '3511184762', 'SD', NULL, 'SINCORREO@GMAIL.COM', 126, 'ALEJANDRO ISAAC SANCHEZ FERNANDEZ', NULL, NULL),
(86, '3310898664', 'SD', NULL, '0', 127, 'ISARAEL DIAZ MUÃOZ', NULL, NULL),
(87, '3121325867', 'SD', NULL, 'SINCORREO@GMAIL.COM', 130, 'D CONCREFOCC SA DE CV//RAUL ROMERO ARELLANO', NULL, NULL),
(88, '3339027351', 'SD', NULL, 'LIC.FRANCISCOLOZANO92@GMAIL.COM', 129, 'JOSÃ FRANCISCO LOZANO MARTÃNEZ', NULL, NULL),
(89, '3322520281', 'SD', NULL, '0', 131, 'ADAN NAVARRO GONZALEZ', NULL, NULL),
(90, '3223515920', 'SD', NULL, '0', 133, 'JOEL ARMANDO RAMIREZ FLORES', NULL, NULL),
(91, '5544845481', 'SD', NULL, 'PABLOANGELRB@ANASEGUROS.COM.MX', 134, 'GERARDO HERNANDEZ CAMPOS //MARIA RAMIREZ', NULL, NULL),
(92, '3314084840', 'SD', NULL, '0', 136, 'ILIANA DEL ROCIO GARCIA GARCIA', NULL, NULL),
(93, '3332386077', 'SD', NULL, '0', 137, 'CINTHIA REYNOZO GARCIA', NULL, NULL),
(94, '3321541014', 'SD', NULL, 'DEREKHERRERA7@GMAIL.COM', 138, 'YAREK ALLEN HERRERA', NULL, NULL),
(95, '3313009250', 'SD', NULL, 'KALEBF2716@GMAIL.COM', 139, 'CRISTOPHER KALEBF MONTES ACEVES', NULL, NULL),
(96, '3334467910', 'SD', NULL, '0', 143, 'SEMIRE SA DE CV//MISAEL OCHOA MENDEZ', NULL, NULL),
(97, '3319426828', 'SD', NULL, '0', 145, 'JOSE LUIS HERNANDEZ MEJIA', NULL, NULL),
(98, '3333538584', 'SD', NULL, 'AG207252@GMAIL.COM', 146, 'JUAN MIGUEL GOMEZ NAVARRO', NULL, NULL),
(99, '3330604216', 'SD', NULL, 'SINCORREO@NO', 148, 'VALERIA ARCE GOMEZ', NULL, NULL),
(100, '3318545103', 'SD', NULL, 'TONO47732@GMAIL.COM', 151, 'JONATHAN EDUARDO ACEVES ALVARADO', NULL, NULL),
(101, '3321138256', 'SD', NULL, '0', 153, 'ISAÃ CUEVA GUÃZAR', NULL, NULL),
(102, '3321851510', 'SD', NULL, '0', 156, 'CRITERIO MEDINA GONZÃLEZ', NULL, NULL),
(103, '3332235584', 'SD', NULL, '#ERROR_#N/A', 161, 'PIZZA Y COME S.A DE C.V//ROBERTO JAUREGUI LEE', NULL, NULL),
(104, '3319672858', 'SD', NULL, '0', 163, 'ALONDRA ESTEFANIA MORA BERMUDEZ', NULL, NULL),
(105, '3339465796', 'SD', NULL, '0', 164, 'JOSE YOSAFAT TAMAYO ROJAS', NULL, NULL),
(106, '3311752946//331', 'SD', NULL, '0', 165, 'JUAN ANTONIO HERNÃNDEZ DE ALBA', NULL, NULL),
(107, '3312687282', 'SD', NULL, '0', 167, 'JOSE ARMANDO SOSA OROZCO', NULL, NULL),
(108, '3481148840', 'SD', NULL, '0', 168, 'JOSE RAMIREZ ORTEGA', NULL, NULL),
(109, '5539781908', 'SD', NULL, '0', 169, 'ARMANDO PÃREZ URDIERA', NULL, NULL),
(110, '3333495128', 'SD', NULL, 'RENEMA1023@OUTLOOK.ES', 171, 'MUNICIPIO DE TALA//JOSÃ MANUEL RUIZ QUEZADA', NULL, NULL),
(111, '3121077974', 'SD', NULL, '0', 173, 'JORGE ANTONIO VALENCIA MIRANDA', NULL, NULL),
(112, '3314290254', 'SD', NULL, '0', 177, '123LEASE SAPI DE CV//FLORISEL REYES CRUZ', NULL, NULL),
(113, '5560702910', 'SD', NULL, '0', 178, 'MARIO JESUS RODRIGUEZ MENDOZA', NULL, NULL),
(114, '3781105777', 'SD', NULL, '0', 179, 'JOSE SALVADOR ENRIQUEZ ALVARADO', NULL, NULL),
(115, '3112041655', 'SD', NULL, '0', 180, 'IGNACIO DE JESUS LOPEZ MARTIN', NULL, NULL),
(116, '3335561344', 'SD', NULL, 'ATA_ELPERRON@HOTMAIL.COM', 181, 'MARISELA RODRIGUEZ CARDENAS', NULL, NULL),
(117, '3751013453', 'SD', NULL, '0', 182, 'JOSE MENDEZ GARCIA', NULL, NULL),
(118, '5585276599', 'SD', NULL, '0', 183, 'DAVID QUENTIN CHALAR', NULL, NULL),
(119, '3315740653', 'SD', NULL, '0', 186, 'GIRECO SA DE CV//KARINA MERCADO MUNGARAY', NULL, NULL),
(120, '3141450866', 'SD', NULL, 'HEREDIA_TORRES_GABRIEL@HOTMAIL.COM', 185, 'RUBEN HEREDIA LARIOS//GABRIEL HEREDIA TORRES', NULL, NULL),
(121, '3141186798', 'SD', NULL, 'YAIRBLAS_91@HOTMAIL.COM', 191, 'HECTOR YAIR BLAS GUTIERREZ', NULL, NULL),
(122, '3411477272', 'SD', NULL, '0', 193, 'JUAN SALVADOR ZUNIGA QUINONEZ', NULL, NULL),
(123, '3411652534', 'SD', NULL, '0', 194, 'MIGUEL TORRES CONTRERAS', NULL, NULL),
(124, '3334646070', 'SD', NULL, 'SINDATO@GMAIL', 195, 'MARIO ANTONIO GARCIA ACEVES', NULL, NULL),
(125, '6691513810', 'SD', NULL, '0', 197, 'JOSE ADRIAN ARIAS FRANCO', NULL, NULL),
(126, '6695331218', 'SD', NULL, '0', 199, 'PAUL BRUCE LEON BENITEZ', NULL, NULL),
(127, '4493529717', 'SD', NULL, '0', 200, 'CARLOS DANIEL GONZALEZ', NULL, NULL),
(128, '3221412831', 'SD', NULL, '0', 201, 'HUMBERTO MARTINEZ FRIAS', NULL, NULL),
(129, '3319958488', 'SD', NULL, 'OSCARFLORESROMERO0807@GMAIL.COM', 204, 'ALBERTO FLORES ALVAREZ', NULL, NULL),
(130, '6531339992', '6531339992', NULL, 'SINDATO@GMAIL', 206, 'AGROS HORTICULTORES S.A. DE C.V.//JESUS AVIÑA', NULL, NULL),
(131, '5544556432', 'SD', NULL, 'SINCORREO@GMAIL.COM', 209, 'JORGE GEVARA MARTINEZ', NULL, NULL),
(132, '2226512516', '2226512516', NULL, 'MIGUELMTZFLORES@HOTMAIL.COM', 208, 'MIGUEL ANGEL MARTINEZ', NULL, NULL),
(133, '6531131403', 'SD', NULL, 'SINCORREO@GMAIL.COM', 212, 'PEDRO ANTONIO DIAZ GONZALEZ', NULL, NULL),
(134, '4521058470', 'SD', NULL, 'RGTERRI@GMAIL.COM', 214, 'RAFAEL GARCIA VAES//MA ESTELA BAEZ ALVAREZ', NULL, NULL),
(135, '6141280834', 'SD', NULL, 'SINCORREO@NO', 215, 'OSCAR MENDOZA FRIAS', NULL, NULL),
(136, '4494337196', '4494337196', NULL, 'SINCORREO@NO', 216, 'MARIO ALBERTO RUANO ESPINOZA', NULL, NULL),
(137, '3317525848', '3331910778', NULL, 'DIEORTEGAP@GMAIL.COM', 217, 'RAFAEL MAYORGA RODRIGUEZ', NULL, NULL),
(138, '4491505894', 'SD', NULL, 'SINCORREO@NO', 218, 'ARTURO PEREZ LUNA//FELIPE DE JESUS LOPEZ LEOS', NULL, NULL),
(139, '3141505753', 'SD', NULL, 'SD', 220, 'MIGUEL ANTONIO CONTRERAS', NULL, NULL),
(140, '3321831205', '3221110138', NULL, 'LUCRECIAMMACNAUGHT@HOTMAIL.COM', 221, 'LUCRECIA MARRON', NULL, NULL),
(141, '3317860075', 'SD', NULL, 'SINCORREO@GMAIL.COM', 222, 'JUAN JESUS RODRIGUEZ', NULL, NULL),
(142, '3221427796', 'SD', NULL, 'SINCORREO@GMAIL.COM', 223, 'SANTOS CASTELLANOS BAZAN', NULL, NULL),
(143, '7444010968', 'SD', NULL, 'SD', 224, 'JOSE ALFREDO TORRES', NULL, NULL),
(144, '3121345315', 'SD', NULL, 'SINCORREO@GMAIL.COM', 225, 'ALFREDO GERVACIO', NULL, NULL),
(145, '5513095979', 'SD', NULL, 'SD', 226, 'JORGE ALEJANDRO HERNANDEZ', NULL, NULL),
(146, '6441243249', 'SD', NULL, 'SD', 229, 'JOSE NOE LOPEZ', NULL, NULL),
(147, '3336009186', '3320531093', NULL, 'SINCORREO@NO', 231, 'MARIA LUISA VILLEGAS ROLDAN', NULL, NULL),
(148, '7295297889', 'SD', NULL, 'SD', 232, 'JUAN CARLOS VELAZQUEZ', NULL, NULL),
(149, '3228882651', 'SD', NULL, 'SD', 233, 'MARIA ROCIO ZEPEDA', NULL, NULL),
(150, '8331596877', 'SD', NULL, 'SD', 234, 'JOAQUIN RAMON FUENTES SOTELO', NULL, NULL),
(151, '3112200338', 'SD', NULL, 'SD', 235, 'ICOLE JIM BARRUTI AVILA', NULL, NULL),
(152, '3118519052', 'SD', NULL, 'SD', 236, 'MARY RIVERA PEREZ/ IVAN ALEJANDRO MARQUEZ', NULL, NULL),
(153, '3118469608', 'SD', NULL, 'SD', 237, 'ULISES LOERA/ MARIA MARTHA ESCOBEDO', NULL, NULL),
(154, '3313967766', 'SD', NULL, 'SD', 238, 'GONZALO ABREO GOMEZ', NULL, NULL),
(155, '3112411780', 'SD', NULL, 'SD', 240, 'PEDRO DE JESUS CERVANTES SANCHEZ', NULL, NULL),
(156, '3513712665', 'SD', NULL, 'SINCORREO@NO', 242, 'SD', NULL, NULL),
(157, '4456789783', '', NULL, 'may@gil.com', 243, 'mario', NULL, NULL),
(158, '4456789783', '', NULL, 'may@gil.com', 244, 'mario', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infosiniestro`
--

CREATE TABLE `infosiniestro` (
  `idRegistro` int(11) NOT NULL,
  `numSiniestro` varchar(15) DEFAULT NULL,
  `poliza` varchar(15) DEFAULT NULL,
  `afectado` varchar(25) DEFAULT NULL,
  `tipoDeCaso` varchar(45) DEFAULT NULL,
  `cobertura` varchar(25) DEFAULT NULL,
  `fechaSiniestro` date DEFAULT NULL,
  `estado` varchar(45) DEFAULT 'N/D',
  `ciudad` varchar(45) DEFAULT NULL,
  `region` varchar(200) DEFAULT 'N/D',
  `ubicacionTaller` varchar(45) DEFAULT NULL,
  `financiado` varchar(25) DEFAULT NULL,
  `regimenFiscal` varchar(25) DEFAULT NULL,
  `estatusCliente` varchar(20) DEFAULT 'Sin Estatus',
  `comentariosCliente` varchar(500) CHARACTER SET utf8 DEFAULT 'ninguno',
  `datosAudatex` varchar(45) DEFAULT 'Sin Datos',
  `passwordExterno` varchar(45) DEFAULT 'Sin Password',
  `fechaCarga` date DEFAULT NULL,
  `fechaDecreto` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tabla para la informacion del siniestro';

--
-- Volcado de datos para la tabla `infosiniestro`
--

INSERT INTO `infosiniestro` (`idRegistro`, `numSiniestro`, `poliza`, `afectado`, `tipoDeCaso`, `cobertura`, `fechaSiniestro`, `estado`, `ciudad`, `region`, `ubicacionTaller`, `financiado`, `regimenFiscal`, `estatusCliente`, `comentariosCliente`, `datosAudatex`, `passwordExterno`, `fechaCarga`, `fechaDecreto`) VALUES
(75, '1234', '12345', 'A', '', 'DM', '2020-12-12', '', '', 'Layout ZG A: Guadalajara-Colima-Nayarit', 'Tlalpan', '', 'Persona fisica', 'Enviado', 'qweqe', 'Sin Datos', 'Sin Password', '2022-10-11', '2022-12-11'),
(76, '2343', '45646', 'A', 'Incendio', 'DM', '2020-10-12', 'Estado de Mexico', 'Todos-Ninguna', 'Layout ZG A: Guadalajara-Colima-Nayarit', ' Toluca', 'Si', 'Persona fisica', 'Documento incorrecto', 'Persona fisicaa', 'Sin Datos', 'Sin Password', '2022-10-12', '2022-10-11'),
(77, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', NULL, NULL, 'Sin Datos', 'Sin Password', '2022-10-12', '2022-10-11'),
(78, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', NULL, NULL, 'Sin Datos', 'Sin Password', '2022-10-12', '2022-12-11'),
(79, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', NULL, NULL, 'Sin Datos', 'Sin Password', '2022-10-12', '2022-12-11'),
(80, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', NULL, NULL, 'Sin Datos', 'Sin Password', '2022-10-12', '2022-10-11'),
(81, '1234u', '12345', 'A', 'Colision', 'DM', '2020-12-12', 'Baja California Sur', '', '', 'Tlalpan', '', 'Persona fisica', '', 'null', 'Sin Datos', 'Sin Password', '2022-10-12', '2022-12-11'),
(82, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-12', '2022-10-11'),
(83, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2022-12-11'),
(84, '1234', '1234', 'a', NULL, 'dm', '2018-09-11', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2018-11-10'),
(85, '1234', '1234', 'a', NULL, 'dm', '2018-09-11', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2018-11-10'),
(86, '1234', '1234', 'a', NULL, 'dm', '2018-09-11', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2018-11-10'),
(87, '1234', '1234', 'a', NULL, 'dm', '2018-09-12', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2018-11-10'),
(88, '1234', '1234', 'a', NULL, 'dm', '2018-09-12', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2018-11-10'),
(89, '1234', '1234', 'a', NULL, 'dm', '2018-10-12', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2018-11-10'),
(90, '1234', '1234', 'a', NULL, 'dm', '2018-10-11', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2018-12-10'),
(91, '1234', '1234', 'a', NULL, 'dm', '2018-10-12', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2018-12-11'),
(92, '1234', '1234', 'a', NULL, 'dm', '2018-10-12', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-24', '2018-12-11'),
(93, '042154482-007', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(94, '42118536', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(95, '42129149', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(96, '42147405', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(97, '42172278', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(98, '42152626', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(99, '042129318-003', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(100, '042183705-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(101, '042186005-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'NINGUNA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(102, '42164643', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(103, '042167891-001', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(104, '42187629', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(105, '042161648-003', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(106, '042169442-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'NINGUNA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(107, '421A6385', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(108, '42290076', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'NINGUNA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(109, '042158144-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(110, '042190608-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(111, '42290090', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(112, '042140737-003', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(113, '042190644-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(114, '42219888', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(115, '42137312', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(116, '042215337-003', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(117, '042290072-001', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(118, '042204225-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(119, '42201833-001', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(120, '42229972', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(121, '42220909', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(122, '042217923-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(123, '042233057-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(124, '042215337-001', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(125, '042235179-001', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(126, '042218226-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'NINGUNA', NULL, 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(127, '0421A5380', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(128, '0421-64534', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(129, '42238835', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(130, '42226153', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(131, '42247976', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(132, '042247431-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(133, '042241064-003', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(134, '42233189', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(135, '042230231-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(136, '042248650-001', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(137, '042249861-001', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(138, '042222574-001', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(139, '42253434', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(140, '42261869', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(141, '42150159', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(142, '042261857-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(143, '042242644-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(144, '042254620-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(145, '042263935-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(146, '042263716T', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(147, '042266554A', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(148, '042259012-003', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(149, '42260060', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(150, '42255429', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(151, '42223774', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(152, '42258294', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(153, '42256179', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(154, '42183825', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(155, '42236408', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(156, '42203432', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(157, '42186608', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(158, '42184962', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(159, '42066068', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(160, '42162602', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(161, '42170663', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(162, '42200516', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(163, '42209886', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(164, '42235325', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(165, '42249655', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(166, '42251445', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(167, '42252022', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(168, '42252106', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(169, '42271411', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(170, '42271720', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(171, '42270613', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(172, '42275840', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(173, '042224252-001', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(174, '042217035-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(175, '042262482-001', '03566268', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(176, '042257308-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(177, '042277295-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(178, '042268103-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(179, '042276315-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(180, '042245157-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(181, '42235739', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(182, '42280136', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(183, '42258694', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(184, '042266528-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(185, '042252652-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(186, '42287214-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(187, '42277852', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(188, '42231500', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(189, '042238253-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(190, '042255056-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(191, '042261722-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(192, '042106490-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(193, '42275385', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(194, '42215868', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(195, '42271609', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(196, '42263231', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(197, '42253152', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(198, '42227040', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(199, '42271388', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(200, '042268551-001', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(201, '042272285-001', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(202, '04218866-003', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(203, '42110944', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(204, '42160898', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(205, '42232419', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(206, '42271079', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(207, '42208866', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(208, '42147035', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(209, '42219498', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'AGUASCALIENTES', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(210, '42164534', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(211, '42232770', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'MORELIA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(212, '42264110', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'HERMOSILLO', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(213, '42240433', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'HERMOSILLO', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(214, '42245531', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'MORELIA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(215, '42238508', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'ZACATECAS', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(216, '421A3093', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'AGUASCALIENTES', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(217, '42159905', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(218, '42235380', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'ZACATECAS', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(219, '42263757', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'ZACATECAS', NULL, 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(220, '42120328', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(221, '42151241', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(222, '042168875-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(223, '42164126', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(224, '42188233', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(225, '42227174', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(226, '42234951', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(227, '42174375', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(228, '421A2102', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(229, '421A5004', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(230, '42288344', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(231, '42271794', '0', 'A', NULL, 'SD', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(232, '42260510', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(233, '42278304', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(234, '42269552', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(235, '42230078', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(236, '42242925', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(237, '42162836', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(238, '42287925', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(239, '422A1855', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(240, '42265435', '0', 'A', NULL, 'NUEVO', '2022-10-22', NULL, 'SD', NULL, 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(241, '42271014', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'CD. OBREGON', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(242, '42269653', '00000000', 'A', NULL, 'COLISION', '2022-10-22', NULL, 'GUADALAJARA', NULL, 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-26', '2022-10-22'),
(243, '1234', '1234', 'a', NULL, 'dm', '2018-10-12', 'N/D', 'cdmx', 'N/D', 'Tlalpan', NULL, 'fisico', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-27', '2018-12-11'),
(244, '1234', '1234', 'a', NULL, 'dm', '2018-10-12', 'N/D', 'cdmx', 'N/D', 'Tlalpan', NULL, 'fisico', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-27', '2018-12-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insertarregistros`
--

CREATE TABLE `insertarregistros` (
  `idInsertarRegistros` int(11) NOT NULL,
  `respuestaSolera` varchar(12) DEFAULT NULL,
  `personaContactada` varchar(45) DEFAULT NULL,
  `tipoPersona` varchar(45) DEFAULT NULL,
  `contactoSeguimiento` varchar(45) DEFAULT NULL,
  `fkIdRegistroInsertar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `insertarregistros`
--

INSERT INTO `insertarregistros` (`idInsertarRegistros`, `respuestaSolera`, `personaContactada`, `tipoPersona`, `contactoSeguimiento`, `fkIdRegistroInsertar`) VALUES
(23, 'No atendido', 'asegurado', 'Conocido', 'Si', 76),
(24, 'Atendido', 'ikhih', 'Asegurado', 'Si', 75),
(25, NULL, NULL, NULL, NULL, 78),
(26, NULL, NULL, NULL, NULL, 77),
(27, NULL, NULL, NULL, NULL, 79),
(28, NULL, NULL, NULL, NULL, 80),
(29, NULL, NULL, NULL, NULL, 81),
(30, NULL, NULL, NULL, NULL, 82),
(31, NULL, NULL, NULL, NULL, 83),
(32, NULL, NULL, NULL, NULL, 84),
(33, NULL, NULL, NULL, NULL, 85),
(34, NULL, NULL, NULL, NULL, 86),
(35, NULL, NULL, NULL, NULL, 87),
(36, NULL, NULL, NULL, NULL, 88),
(37, NULL, NULL, NULL, NULL, 89),
(38, NULL, NULL, NULL, NULL, 90),
(39, NULL, NULL, NULL, NULL, 91),
(40, NULL, NULL, NULL, NULL, 92),
(41, NULL, NULL, NULL, NULL, 93),
(42, NULL, NULL, NULL, NULL, 95),
(43, NULL, NULL, NULL, NULL, 97),
(44, NULL, NULL, NULL, NULL, 96),
(45, NULL, NULL, NULL, NULL, 94),
(46, NULL, NULL, NULL, NULL, 98),
(47, NULL, NULL, NULL, NULL, 100),
(48, NULL, NULL, NULL, NULL, 101),
(49, NULL, NULL, NULL, NULL, 99),
(50, NULL, NULL, NULL, NULL, 102),
(51, NULL, NULL, NULL, NULL, 103),
(52, NULL, NULL, NULL, NULL, 104),
(53, NULL, NULL, NULL, NULL, 106),
(54, NULL, NULL, NULL, NULL, 105),
(55, NULL, NULL, NULL, NULL, 107),
(56, NULL, NULL, NULL, NULL, 108),
(57, NULL, NULL, NULL, NULL, 109),
(58, NULL, NULL, NULL, NULL, 110),
(59, NULL, NULL, NULL, NULL, 112),
(60, NULL, NULL, NULL, NULL, 111),
(61, NULL, NULL, NULL, NULL, 113),
(62, NULL, NULL, NULL, NULL, 114),
(63, NULL, NULL, NULL, NULL, 116),
(64, NULL, NULL, NULL, NULL, 117),
(65, NULL, NULL, NULL, NULL, 118),
(66, NULL, NULL, NULL, NULL, 123),
(67, NULL, NULL, NULL, NULL, 122),
(68, NULL, NULL, NULL, NULL, 121),
(69, NULL, NULL, NULL, NULL, 120),
(70, NULL, NULL, NULL, NULL, 124),
(71, NULL, NULL, NULL, NULL, 125),
(72, NULL, NULL, NULL, NULL, 126),
(73, NULL, NULL, NULL, NULL, 127),
(74, NULL, NULL, NULL, NULL, 129),
(75, NULL, NULL, NULL, NULL, 130),
(76, NULL, NULL, NULL, NULL, 131),
(77, NULL, NULL, NULL, NULL, 134),
(78, NULL, NULL, NULL, NULL, 136),
(79, NULL, NULL, NULL, NULL, 137),
(80, NULL, NULL, NULL, NULL, 133),
(81, NULL, NULL, NULL, NULL, 138),
(82, NULL, NULL, NULL, NULL, 139),
(83, NULL, NULL, NULL, NULL, 143),
(84, NULL, NULL, NULL, NULL, 145),
(85, NULL, NULL, NULL, NULL, 146),
(86, NULL, NULL, NULL, NULL, 148),
(87, NULL, NULL, NULL, NULL, 151),
(88, NULL, NULL, NULL, NULL, 153),
(89, NULL, NULL, NULL, NULL, 156),
(90, NULL, NULL, NULL, NULL, 161),
(91, NULL, NULL, NULL, NULL, 164),
(92, NULL, NULL, NULL, NULL, 163),
(93, NULL, NULL, NULL, NULL, 165),
(94, NULL, NULL, NULL, NULL, 167),
(95, NULL, NULL, NULL, NULL, 168),
(96, NULL, NULL, NULL, NULL, 169),
(97, NULL, NULL, NULL, NULL, 171),
(98, NULL, NULL, NULL, NULL, 173),
(99, NULL, NULL, NULL, NULL, 177),
(100, NULL, NULL, NULL, NULL, 179),
(101, NULL, NULL, NULL, NULL, 178),
(102, NULL, NULL, NULL, NULL, 181),
(103, NULL, NULL, NULL, NULL, 180),
(104, NULL, NULL, NULL, NULL, 182),
(105, NULL, NULL, NULL, NULL, 183),
(106, NULL, NULL, NULL, NULL, 185),
(107, NULL, NULL, NULL, NULL, 186),
(108, NULL, NULL, NULL, NULL, 191),
(109, NULL, NULL, NULL, NULL, 194),
(110, NULL, NULL, NULL, NULL, 193),
(111, NULL, NULL, NULL, NULL, 195),
(112, NULL, NULL, NULL, NULL, 197),
(113, NULL, NULL, NULL, NULL, 199),
(114, NULL, NULL, NULL, NULL, 201),
(115, NULL, NULL, NULL, NULL, 200),
(116, NULL, NULL, NULL, NULL, 204),
(117, NULL, NULL, NULL, NULL, 206),
(118, NULL, NULL, NULL, NULL, 209),
(119, NULL, NULL, NULL, NULL, 208),
(120, NULL, NULL, NULL, NULL, 215),
(121, NULL, NULL, NULL, NULL, 212),
(122, NULL, NULL, NULL, NULL, 214),
(123, NULL, NULL, NULL, NULL, 217),
(124, NULL, NULL, NULL, NULL, 216),
(125, NULL, NULL, NULL, NULL, 218),
(126, NULL, NULL, NULL, NULL, 220),
(127, NULL, NULL, NULL, NULL, 221),
(128, NULL, NULL, NULL, NULL, 223),
(129, NULL, NULL, NULL, NULL, 222),
(130, NULL, NULL, NULL, NULL, 224),
(131, NULL, NULL, NULL, NULL, 225),
(132, NULL, NULL, NULL, NULL, 226),
(133, NULL, NULL, NULL, NULL, 229),
(134, NULL, NULL, NULL, NULL, 231),
(135, NULL, NULL, NULL, NULL, 232),
(136, NULL, NULL, NULL, NULL, 233),
(137, NULL, NULL, NULL, NULL, 234),
(138, NULL, NULL, NULL, NULL, 235),
(139, NULL, NULL, NULL, NULL, 236),
(140, NULL, NULL, NULL, NULL, 237),
(141, NULL, NULL, NULL, NULL, 238),
(142, NULL, NULL, NULL, NULL, 240),
(143, NULL, NULL, NULL, NULL, 242),
(144, NULL, NULL, NULL, NULL, 243),
(145, NULL, NULL, NULL, NULL, 244);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajesseguimientos`
--

CREATE TABLE `mensajesseguimientos` (
  `idmensajesSeguimientos` int(11) NOT NULL,
  `fkmensgSeguimientos` int(11) DEFAULT NULL,
  `mensajes` varchar(1000) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `fechaMensaje` datetime DEFAULT NULL,
  `respondido` varchar(2) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mensajesseguimientos`
--

INSERT INTO `mensajesseguimientos` (`idmensajesSeguimientos`, `fkmensgSeguimientos`, `mensajes`, `usuario`, `fechaMensaje`, `respondido`) VALUES
(1, 75, 'esta todo correcto', 'Solera', '2022-10-17 00:00:00', 'si'),
(2, 76, 'este es un mensaje de pruweba', 'Solera', '2022-10-14 00:00:00', 'no'),
(3, 76, 'correctos', 'Solera', '2022-10-14 00:00:00', 'no'),
(4, 75, 'envie docs', 'marin', '2022-10-15 00:00:00', 'no'),
(5, 75, 'qweqeqqweqe', 'Marin', '2022-10-15 00:00:00', 'si'),
(6, 75, 'envio los documetnos listos', 'Marin', '2022-10-15 00:00:00', 'si'),
(8, 75, 'prueba horas', 'Marin', '2022-10-25 00:00:00', 'si'),
(9, 75, 'pruebasd', 'Marin', '2022-10-25 16:58:13', 'si'),
(10, 75, 'con respuesta ', 'admin', '2022-10-25 00:00:00', 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE `seguimiento` (
  `idSeguimiento` int(11) NOT NULL,
  `fkIdUsuario` int(11) DEFAULT NULL,
  `fechaModificacion` date DEFAULT NULL,
  `tipoModificacion` varchar(45) DEFAULT NULL,
  `comentariosSeguimiento` varchar(100) DEFAULT NULL,
  `fkIdRegistroSeguimiento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `seguimiento`
--

INSERT INTO `seguimiento` (`idSeguimiento`, `fkIdUsuario`, `fechaModificacion`, `tipoModificacion`, `comentariosSeguimiento`, `fkIdRegistroSeguimiento`) VALUES
(5, NULL, NULL, NULL, NULL, 76),
(6, NULL, NULL, NULL, NULL, 75),
(7, NULL, NULL, NULL, NULL, 78),
(8, NULL, NULL, NULL, NULL, 77),
(9, NULL, NULL, NULL, NULL, 79),
(10, NULL, NULL, NULL, NULL, 80),
(11, NULL, NULL, NULL, NULL, 81),
(12, NULL, NULL, NULL, NULL, 82),
(13, NULL, NULL, NULL, NULL, 83),
(14, NULL, NULL, NULL, NULL, 84),
(15, NULL, NULL, NULL, NULL, 85),
(16, NULL, NULL, NULL, NULL, 86),
(17, NULL, NULL, NULL, NULL, 87),
(18, NULL, NULL, NULL, NULL, 88),
(19, NULL, NULL, NULL, NULL, 89),
(20, NULL, NULL, NULL, NULL, 90),
(21, NULL, NULL, NULL, NULL, 91),
(22, NULL, NULL, NULL, NULL, 92),
(23, NULL, NULL, NULL, NULL, 93),
(24, NULL, NULL, NULL, NULL, 96),
(25, NULL, NULL, NULL, NULL, 97),
(26, NULL, NULL, NULL, NULL, 94),
(27, NULL, NULL, NULL, NULL, 95),
(28, NULL, NULL, NULL, NULL, 98),
(29, NULL, NULL, NULL, NULL, 101),
(30, NULL, NULL, NULL, NULL, 99),
(31, NULL, NULL, NULL, NULL, 100),
(32, NULL, NULL, NULL, NULL, 102),
(33, NULL, NULL, NULL, NULL, 103),
(34, NULL, NULL, NULL, NULL, 106),
(35, NULL, NULL, NULL, NULL, 104),
(36, NULL, NULL, NULL, NULL, 105),
(37, NULL, NULL, NULL, NULL, 107),
(38, NULL, NULL, NULL, NULL, 108),
(39, NULL, NULL, NULL, NULL, 109),
(40, NULL, NULL, NULL, NULL, 112),
(41, NULL, NULL, NULL, NULL, 110),
(42, NULL, NULL, NULL, NULL, 111),
(43, NULL, NULL, NULL, NULL, 113),
(44, NULL, NULL, NULL, NULL, 114),
(45, NULL, NULL, NULL, NULL, 116),
(46, NULL, NULL, NULL, NULL, 117),
(47, NULL, NULL, NULL, NULL, 118),
(48, NULL, NULL, NULL, NULL, 123),
(49, NULL, NULL, NULL, NULL, 121),
(50, NULL, NULL, NULL, NULL, 120),
(51, NULL, NULL, NULL, NULL, 122),
(52, NULL, NULL, NULL, NULL, 124),
(53, NULL, NULL, NULL, NULL, 125),
(54, NULL, NULL, NULL, NULL, 126),
(55, NULL, NULL, NULL, NULL, 129),
(56, NULL, NULL, NULL, NULL, 127),
(57, NULL, NULL, NULL, NULL, 130),
(58, NULL, NULL, NULL, NULL, 131),
(59, NULL, NULL, NULL, NULL, 136),
(60, NULL, NULL, NULL, NULL, 134),
(61, NULL, NULL, NULL, NULL, 133),
(62, NULL, NULL, NULL, NULL, 137),
(63, NULL, NULL, NULL, NULL, 138),
(64, NULL, NULL, NULL, NULL, 139),
(65, NULL, NULL, NULL, NULL, 143),
(66, NULL, NULL, NULL, NULL, 146),
(67, NULL, NULL, NULL, NULL, 145),
(68, NULL, NULL, NULL, NULL, 148),
(69, NULL, NULL, NULL, NULL, 151),
(70, NULL, NULL, NULL, NULL, 153),
(71, NULL, NULL, NULL, NULL, 156),
(72, NULL, NULL, NULL, NULL, 161),
(73, NULL, NULL, NULL, NULL, 164),
(74, NULL, NULL, NULL, NULL, 163),
(75, NULL, NULL, NULL, NULL, 165),
(76, NULL, NULL, NULL, NULL, 167),
(77, NULL, NULL, NULL, NULL, 168),
(78, NULL, NULL, NULL, NULL, 169),
(79, NULL, NULL, NULL, NULL, 171),
(80, NULL, NULL, NULL, NULL, 173),
(81, NULL, NULL, NULL, NULL, 177),
(82, NULL, NULL, NULL, NULL, 178),
(83, NULL, NULL, NULL, NULL, 179),
(84, NULL, NULL, NULL, NULL, 181),
(85, NULL, NULL, NULL, NULL, 180),
(86, NULL, NULL, NULL, NULL, 182),
(87, NULL, NULL, NULL, NULL, 183),
(88, NULL, NULL, NULL, NULL, 185),
(89, NULL, NULL, NULL, NULL, 186),
(90, NULL, NULL, NULL, NULL, 191),
(91, NULL, NULL, NULL, NULL, 194),
(92, NULL, NULL, NULL, NULL, 193),
(93, NULL, NULL, NULL, NULL, 195),
(94, NULL, NULL, NULL, NULL, 197),
(95, NULL, NULL, NULL, NULL, 199),
(96, NULL, NULL, NULL, NULL, 201),
(97, NULL, NULL, NULL, NULL, 200),
(98, NULL, NULL, NULL, NULL, 204),
(99, NULL, NULL, NULL, NULL, 206),
(100, NULL, NULL, NULL, NULL, 209),
(101, NULL, NULL, NULL, NULL, 208),
(102, NULL, NULL, NULL, NULL, 215),
(103, NULL, NULL, NULL, NULL, 212),
(104, NULL, NULL, NULL, NULL, 214),
(105, NULL, NULL, NULL, NULL, 217),
(106, NULL, NULL, NULL, NULL, 216),
(107, NULL, NULL, NULL, NULL, 218),
(108, NULL, NULL, NULL, NULL, 221),
(109, NULL, NULL, NULL, NULL, 220),
(110, NULL, NULL, NULL, NULL, 223),
(111, NULL, NULL, NULL, NULL, 222),
(112, NULL, NULL, NULL, NULL, 224),
(113, NULL, NULL, NULL, NULL, 225),
(114, NULL, NULL, NULL, NULL, 226),
(115, NULL, NULL, NULL, NULL, 229),
(116, NULL, NULL, NULL, NULL, 231),
(117, NULL, NULL, NULL, NULL, 232),
(118, NULL, NULL, NULL, NULL, 234),
(119, NULL, NULL, NULL, NULL, 233),
(120, NULL, NULL, NULL, NULL, 235),
(121, NULL, NULL, NULL, NULL, 236),
(122, NULL, NULL, NULL, NULL, 237),
(123, NULL, NULL, NULL, NULL, 238),
(124, NULL, NULL, NULL, NULL, 240),
(125, NULL, NULL, NULL, NULL, 242),
(126, NULL, NULL, NULL, NULL, 243),
(127, NULL, NULL, NULL, NULL, 244);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(25) NOT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `contrasena` varchar(30) DEFAULT NULL,
  `privilegios` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `usuario`, `contrasena`, `privilegios`) VALUES
(1, 'admin', '1234', 'root'),
(3, 'noadmin2', '1234', 'root'),
(4, 'teamliderP', 'teamlider', 'teamlider'),
(5, 'integradorP', 'integrador', 'integrador'),
(6, 'operadorP', 'operador', 'operador'),
(7, 'consultaP', 'consulta', 'consulta'),
(12, 'perez', '1234', 'teamlider');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `documentosaprobados`
--
ALTER TABLE `documentosaprobados`
  ADD PRIMARY KEY (`iddocumentosaprobados`),
  ADD KEY `fkIdRegistroDocsAprobados` (`fkIdRegistroDocsAprobados`);

--
-- Indices de la tabla `encuestaplataforma`
--
ALTER TABLE `encuestaplataforma`
  ADD PRIMARY KEY (`idencuestaPlataforma`);

--
-- Indices de la tabla `estadoproceso`
--
ALTER TABLE `estadoproceso`
  ADD PRIMARY KEY (`idProceso`),
  ADD KEY `fkIdRegistro` (`fkIdRegistroEstadoProceso`);

--
-- Indices de la tabla `fechasseguimiento`
--
ALTER TABLE `fechasseguimiento`
  ADD PRIMARY KEY (`idFechasseguimiento`),
  ADD KEY `fkIdRegistroFechaseguimiento` (`fkidRegistro`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`idimagenes`),
  ADD KEY `fkIdRegistroImagenes` (`fkImagen`);

--
-- Indices de la tabla `infoauto`
--
ALTER TABLE `infoauto`
  ADD PRIMARY KEY (`idAuto`),
  ADD KEY `fkIdRegistro3` (`fkIdRegistro`);

--
-- Indices de la tabla `infocarga`
--
ALTER TABLE `infocarga`
  ADD PRIMARY KEY (`idinfocarga`),
  ADD KEY `fkIdRegistroCarga` (`fkIdRegistro`);

--
-- Indices de la tabla `infocliente`
--
ALTER TABLE `infocliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `fkIdRegistroinfoCliente` (`fkIdRegistro`);

--
-- Indices de la tabla `infosiniestro`
--
ALTER TABLE `infosiniestro`
  ADD PRIMARY KEY (`idRegistro`);

--
-- Indices de la tabla `insertarregistros`
--
ALTER TABLE `insertarregistros`
  ADD PRIMARY KEY (`idInsertarRegistros`),
  ADD KEY `fkIdRegistroInsertar` (`fkIdRegistroInsertar`);

--
-- Indices de la tabla `mensajesseguimientos`
--
ALTER TABLE `mensajesseguimientos`
  ADD PRIMARY KEY (`idmensajesSeguimientos`),
  ADD KEY `fkIdRegistroMensajes` (`fkmensgSeguimientos`);

--
-- Indices de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD PRIMARY KEY (`idSeguimiento`),
  ADD KEY `fkIdRegistroSeguimiento` (`fkIdRegistroSeguimiento`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `documentosaprobados`
--
ALTER TABLE `documentosaprobados`
  MODIFY `iddocumentosaprobados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT de la tabla `encuestaplataforma`
--
ALTER TABLE `encuestaplataforma`
  MODIFY `idencuestaPlataforma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estadoproceso`
--
ALTER TABLE `estadoproceso`
  MODIFY `idProceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT de la tabla `fechasseguimiento`
--
ALTER TABLE `fechasseguimiento`
  MODIFY `idFechasseguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `idimagenes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `infoauto`
--
ALTER TABLE `infoauto`
  MODIFY `idAuto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT de la tabla `infocarga`
--
ALTER TABLE `infocarga`
  MODIFY `idinfocarga` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `infocliente`
--
ALTER TABLE `infocliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT de la tabla `infosiniestro`
--
ALTER TABLE `infosiniestro`
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT de la tabla `insertarregistros`
--
ALTER TABLE `insertarregistros`
  MODIFY `idInsertarRegistros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT de la tabla `mensajesseguimientos`
--
ALTER TABLE `mensajesseguimientos`
  MODIFY `idmensajesSeguimientos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  MODIFY `idSeguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `documentosaprobados`
--
ALTER TABLE `documentosaprobados`
  ADD CONSTRAINT `fkIdRegistroDocsAprobados` FOREIGN KEY (`fkIdRegistroDocsAprobados`) REFERENCES `infosiniestro` (`idRegistro`);

--
-- Filtros para la tabla `estadoproceso`
--
ALTER TABLE `estadoproceso`
  ADD CONSTRAINT `fkIdRegistro` FOREIGN KEY (`fkIdRegistroEstadoProceso`) REFERENCES `infosiniestro` (`idRegistro`);

--
-- Filtros para la tabla `fechasseguimiento`
--
ALTER TABLE `fechasseguimiento`
  ADD CONSTRAINT `fkIdRegistroFechaseguimiento` FOREIGN KEY (`fkidRegistro`) REFERENCES `infosiniestro` (`idRegistro`);

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `fkIdRegistroImagenes` FOREIGN KEY (`fkImagen`) REFERENCES `infosiniestro` (`idRegistro`);

--
-- Filtros para la tabla `infoauto`
--
ALTER TABLE `infoauto`
  ADD CONSTRAINT `fkIdRegistro3` FOREIGN KEY (`fkIdRegistro`) REFERENCES `infosiniestro` (`idRegistro`);

--
-- Filtros para la tabla `infocarga`
--
ALTER TABLE `infocarga`
  ADD CONSTRAINT `fkIdRegistroCarga` FOREIGN KEY (`fkIdRegistro`) REFERENCES `infosiniestro` (`idRegistro`);

--
-- Filtros para la tabla `infocliente`
--
ALTER TABLE `infocliente`
  ADD CONSTRAINT `fkIdRegistroinfoCliente` FOREIGN KEY (`fkIdRegistro`) REFERENCES `infosiniestro` (`idRegistro`);

--
-- Filtros para la tabla `insertarregistros`
--
ALTER TABLE `insertarregistros`
  ADD CONSTRAINT `fkIdRegistroInsertar` FOREIGN KEY (`fkIdRegistroInsertar`) REFERENCES `infosiniestro` (`idRegistro`);

--
-- Filtros para la tabla `mensajesseguimientos`
--
ALTER TABLE `mensajesseguimientos`
  ADD CONSTRAINT `fkIdRegistroMensajes` FOREIGN KEY (`fkmensgSeguimientos`) REFERENCES `infosiniestro` (`idRegistro`);

--
-- Filtros para la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD CONSTRAINT `fkIdRegistroSeguimiento` FOREIGN KEY (`fkIdRegistroSeguimiento`) REFERENCES `infosiniestro` (`idRegistro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
