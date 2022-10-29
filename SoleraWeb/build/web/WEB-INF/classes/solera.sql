-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2022 a las 07:02:10
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
(1, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 269, 'false', 'false'),
(2, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 270, 'false', 'false'),
(3, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 271, 'false', 'false'),
(4, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 272, 'false', 'false'),
(5, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 273, 'false', 'false'),
(6, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 274, 'false', 'false'),
(7, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 275, 'false', 'false'),
(8, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 276, 'false', 'false'),
(9, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 277, 'false', 'false'),
(10, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 278, 'false', 'false'),
(11, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 280, 'false', 'false'),
(12, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 279, 'false', 'false'),
(13, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 282, 'false', 'false'),
(14, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 281, 'false', 'false'),
(15, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 283, 'false', 'false'),
(16, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 284, 'false', 'false'),
(17, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 285, 'false', 'false'),
(18, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 286, 'false', 'false'),
(19, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 287, 'false', 'false'),
(20, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 288, 'false', 'false'),
(21, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 289, 'false', 'false'),
(22, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 290, 'false', 'false'),
(23, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 291, 'false', 'false'),
(24, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 292, 'false', 'false'),
(25, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 293, 'false', 'false'),
(26, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 294, 'false', 'false'),
(27, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 295, 'false', 'false'),
(28, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 296, 'false', 'false'),
(29, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 297, 'false', 'false'),
(30, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 298, 'false', 'false'),
(31, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 299, 'false', 'false'),
(32, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 300, 'false', 'false'),
(33, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 301, 'false', 'false'),
(34, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 302, 'false', 'false'),
(35, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 303, 'false', 'false'),
(36, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 304, 'false', 'false'),
(37, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 305, 'false', 'false'),
(38, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 307, 'false', 'false'),
(39, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 306, 'false', 'false'),
(40, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 308, 'false', 'false'),
(41, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 309, 'false', 'false'),
(42, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 310, 'false', 'false'),
(43, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 311, 'false', 'false'),
(44, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 312, 'false', 'false'),
(45, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 313, 'false', 'false'),
(46, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 314, 'false', 'false'),
(47, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 317, 'false', 'false'),
(48, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 316, 'false', 'false'),
(49, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 315, 'false', 'false'),
(50, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 318, 'false', 'false'),
(51, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 319, 'false', 'false'),
(52, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 320, 'false', 'false'),
(53, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 321, 'false', 'false'),
(54, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 322, 'false', 'false'),
(55, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 323, 'false', 'false'),
(56, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 324, 'false', 'false'),
(57, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 325, 'false', 'false'),
(58, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 327, 'false', 'false'),
(59, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 326, 'false', 'false'),
(60, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 328, 'false', 'false'),
(61, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 329, 'false', 'false'),
(62, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 330, 'false', 'false'),
(63, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 331, 'false', 'false'),
(64, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 332, 'false', 'false'),
(65, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 333, 'false', 'false'),
(66, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 335, 'false', 'false'),
(67, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 334, 'false', 'false'),
(68, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 336, 'false', 'false'),
(69, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 337, 'false', 'false'),
(70, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 338, 'false', 'false'),
(71, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 339, 'false', 'false'),
(72, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 340, 'false', 'false'),
(73, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 341, 'false', 'false'),
(74, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 342, 'false', 'false'),
(75, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 343, 'false', 'false'),
(76, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 344, 'false', 'false'),
(77, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 345, 'false', 'false'),
(78, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 346, 'false', 'false'),
(79, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 347, 'false', 'false'),
(80, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 348, 'false', 'false'),
(81, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 350, 'false', 'false'),
(82, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 349, 'false', 'false'),
(83, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 351, 'false', 'false'),
(84, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 352, 'false', 'false'),
(85, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 353, 'false', 'false'),
(86, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 355, 'false', 'false'),
(87, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 354, 'false', 'false'),
(88, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 356, 'false', 'false'),
(89, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 357, 'false', 'false'),
(90, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 358, 'false', 'false'),
(91, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 359, 'false', 'false'),
(92, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 360, 'false', 'false'),
(93, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 361, 'false', 'false'),
(94, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 362, 'false', 'false'),
(95, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 363, 'false', 'false'),
(96, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 364, 'false', 'false'),
(97, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 365, 'false', 'false'),
(98, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 366, 'false', 'false'),
(99, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 367, 'false', 'false'),
(100, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 368, 'false', 'false'),
(101, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 369, 'false', 'false'),
(102, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 370, 'false', 'false'),
(103, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 371, 'false', 'false'),
(104, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 372, 'false', 'false'),
(105, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 373, 'false', 'false'),
(106, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 374, 'false', 'false'),
(107, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 375, 'false', 'false'),
(108, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 376, 'false', 'false'),
(109, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 377, 'false', 'false'),
(110, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 378, 'false', 'false'),
(111, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 379, 'false', 'false'),
(112, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 380, 'false', 'false'),
(113, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 382, 'false', 'false'),
(114, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 381, 'false', 'false'),
(115, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 383, 'false', 'false'),
(116, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 384, 'false', 'false'),
(117, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 385, 'false', 'false'),
(118, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 386, 'false', 'false'),
(119, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 387, 'false', 'false'),
(120, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 388, 'false', 'false'),
(121, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 389, 'false', 'false'),
(122, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 390, 'false', 'false'),
(123, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 391, 'false', 'false'),
(124, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 393, 'false', 'false'),
(125, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 392, 'false', 'false'),
(126, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 394, 'false', 'false'),
(127, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 395, 'false', 'false'),
(128, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 396, 'false', 'false'),
(129, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 397, 'false', 'false'),
(130, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 398, 'false', 'false'),
(131, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 399, 'false', 'false'),
(132, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 400, 'false', 'false'),
(133, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 401, 'false', 'false'),
(134, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 402, 'false', 'false'),
(135, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 403, 'false', 'false'),
(136, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 404, 'false', 'false'),
(137, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 405, 'false', 'false'),
(138, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 406, 'false', 'false'),
(139, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 408, 'false', 'false'),
(140, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 407, 'false', 'false'),
(141, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 409, 'false', 'false'),
(142, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 410, 'false', 'false'),
(143, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 411, 'false', 'false'),
(144, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 412, 'false', 'false'),
(145, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 413, 'false', 'false'),
(146, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 414, 'false', 'false'),
(147, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 415, 'false', 'false'),
(148, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 417, 'false', 'false'),
(149, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 416, 'false', 'false'),
(150, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 418, 'false', 'false');

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
(1, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 269),
(2, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 270),
(3, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 271),
(4, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 272),
(5, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 274),
(6, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 273),
(7, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 276),
(8, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 275),
(9, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 277),
(10, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 278),
(11, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 280),
(12, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 279),
(13, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 282),
(14, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 281),
(15, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 283),
(16, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 284),
(17, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 285),
(18, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 286),
(19, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 287),
(20, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 288),
(21, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 289),
(22, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 290),
(23, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 291),
(24, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 292),
(25, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 293),
(26, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 294),
(27, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 295),
(28, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 296),
(29, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 297),
(30, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 298),
(31, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 299),
(32, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 300),
(33, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 301),
(34, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 302),
(35, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 303),
(36, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 304),
(37, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 305),
(38, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 307),
(39, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 306),
(40, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 308),
(41, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 309),
(42, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 310),
(43, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 311),
(44, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 312),
(45, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 313),
(46, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 314),
(47, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 317),
(48, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 316),
(49, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 315),
(50, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 318),
(51, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 319),
(52, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 320),
(53, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 321),
(54, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 322),
(55, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 323),
(56, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 324),
(57, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 325),
(58, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 327),
(59, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 326),
(60, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 328),
(61, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 329),
(62, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 330),
(63, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 331),
(64, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 332),
(65, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 333),
(66, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 335),
(67, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 334),
(68, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 336),
(69, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 337),
(70, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 338),
(71, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 339),
(72, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 340),
(73, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 341),
(74, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 342),
(75, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 343),
(76, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 344),
(77, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 345),
(78, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 346),
(79, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 347),
(80, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 348),
(81, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 350),
(82, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 349),
(83, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 351),
(84, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 352),
(85, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 353),
(86, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 355),
(87, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 354),
(88, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 356),
(89, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 357),
(90, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 358),
(91, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 359),
(92, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 360),
(93, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 361),
(94, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 362),
(95, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 363),
(96, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 364),
(97, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 365),
(98, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 366),
(99, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 367),
(100, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 368),
(101, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 369),
(102, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 370),
(103, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 371),
(104, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 372),
(105, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 373),
(106, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 374),
(107, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 375),
(108, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 376),
(109, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 377),
(110, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 378),
(111, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 379),
(112, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 380),
(113, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 382),
(114, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 381),
(115, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 383),
(116, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 384),
(117, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 385),
(118, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 386),
(119, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 387),
(120, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 388),
(121, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 389),
(122, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 390),
(123, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 391),
(124, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 392),
(125, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 393),
(126, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 394),
(127, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 395),
(128, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 396),
(129, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 397),
(130, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 398),
(131, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 399),
(132, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 400),
(133, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 401),
(134, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 402),
(135, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 403),
(136, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 404),
(137, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 405),
(138, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 406),
(139, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 408),
(140, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 407),
(141, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 409),
(142, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 410),
(143, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 411),
(144, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 412),
(145, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 413),
(146, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 414),
(147, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 415),
(148, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 417),
(149, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 416),
(150, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 418);

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
(1, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 269),
(2, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 270),
(3, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 271),
(4, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 272),
(5, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 274),
(6, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 273),
(7, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 276),
(8, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 275),
(9, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 277),
(10, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 278),
(11, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280),
(12, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 279),
(13, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 282),
(14, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 281),
(15, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 283),
(16, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 284),
(17, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 285),
(18, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 286),
(19, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 287),
(20, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 288),
(21, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 289),
(22, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 290),
(23, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 291),
(24, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 292),
(25, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 293),
(26, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 294),
(27, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 295),
(28, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 296),
(29, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 297),
(30, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 298),
(31, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 299),
(32, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300),
(33, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 301),
(34, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 302),
(35, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 303),
(36, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 304),
(37, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 305),
(38, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 306),
(39, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 307),
(40, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 308),
(41, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 309),
(42, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 310),
(43, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 311),
(44, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 312),
(45, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 313),
(46, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 314),
(47, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 317),
(48, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 316),
(49, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 315),
(50, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 318),
(51, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 319),
(52, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 320),
(53, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 321),
(54, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 322),
(55, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 323),
(56, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 324),
(57, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 325),
(58, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 327),
(59, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 326),
(60, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 328),
(61, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 329),
(62, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 330),
(63, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 331),
(64, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 332),
(65, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333),
(66, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334),
(67, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335),
(68, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336),
(69, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 337),
(70, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 338),
(71, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 339),
(72, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 340),
(73, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 341),
(74, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 342),
(75, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 343),
(76, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 344),
(77, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 345),
(78, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 346),
(79, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 347),
(80, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 348),
(81, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 350),
(82, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 349),
(83, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 351),
(84, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 352),
(85, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 353),
(86, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 355),
(87, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 354),
(88, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 356),
(89, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 357),
(90, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 358),
(91, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 359),
(92, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 360),
(93, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 361),
(94, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 362),
(95, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 363),
(96, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 364),
(97, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 365),
(98, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 366),
(99, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 367),
(100, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 368),
(101, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 369),
(102, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 370),
(103, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 371),
(104, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 372),
(105, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 373),
(106, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 374),
(107, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 375),
(108, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 376),
(109, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 377),
(110, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 378),
(111, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 379),
(112, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 380),
(113, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 382),
(114, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 381),
(115, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 383),
(116, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 384),
(117, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 385),
(118, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 386),
(119, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 387),
(120, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 388),
(121, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 389),
(122, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 390),
(123, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 391),
(124, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 392),
(125, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 393),
(126, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 394),
(127, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 395),
(128, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 396),
(129, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 397),
(130, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 398),
(131, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 399),
(132, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 400),
(133, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 401),
(134, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 402),
(135, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 403),
(136, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 404),
(137, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 405),
(138, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 406),
(139, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 407),
(140, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 408),
(141, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 409),
(142, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 410),
(143, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 411),
(144, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 412),
(145, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 413),
(146, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 414),
(147, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 415),
(148, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 416),
(149, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 417),
(150, '2022-10-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 418);

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
(1, 'RENAULT', '2003', 'MEGANE', 'VF1H019CX3E513297', NULL, 269, NULL, NULL),
(2, 'CHEVROLET', '2001', 'CHEVY', '3G1SF24211S179022', NULL, 270, NULL, NULL),
(3, 'YAMAHA', '2018', 'T110', 'LL8UE0811JB535377', NULL, 271, NULL, NULL),
(4, 'YAMAHA', '2016', 'YB125', 'LBPKE0970G0496720', NULL, 272, NULL, NULL),
(5, 'CHEVROLET', '2018', 'AVEO', 'LSGHD52H3JD100308', NULL, 273, NULL, NULL),
(6, 'LIFAN', '2017', 'FL200', 'LF3UCM409HA000144', NULL, 274, NULL, NULL),
(7, 'FORD', '2009', 'F450', '3FEMF56S29MA17115', NULL, 276, NULL, NULL),
(8, 'ITALIKA', '2013', 'MOTOCICLETA', 'CSRXCJCC6D1312014', NULL, 275, NULL, NULL),
(9, 'CHEVROLET', '2014', 'SPARK', 'KL8CD6AD3EC437611', NULL, 277, NULL, NULL),
(10, 'HONDA', '2014', 'CITY', 'MRHGM666XEP067283', NULL, 280, NULL, NULL),
(11, 'FORD', '2017', 'FIGO', 'MAJFP1MD4HA147300', NULL, 278, NULL, NULL),
(12, 'AUDI', '2018', 'A2', 'WAUAYAGA2JA012208', NULL, 279, NULL, NULL),
(13, 'FORD', '2018', 'F150', '1FTEW1C50JKD27764', NULL, 282, NULL, NULL),
(14, 'FORD', '2019', 'F150', '1FTEW1CB4KKD10523', NULL, 281, NULL, NULL),
(15, 'VOLKSWAGEN', '2004', 'POINTER', '9BWCC05X94T053994', NULL, 283, NULL, NULL),
(16, 'TOYOTA', '1997', 'COROLLA', '1NXBA02E1VZ661403', NULL, 284, NULL, NULL),
(17, 'CHEVROLET', '2013', 'AVEO', '3G1TA5AF8DL101329', NULL, 285, NULL, NULL),
(18, 'NISSAN', '2016', 'ROGUE', '5N1AT2MT2GC878111', NULL, 286, NULL, NULL),
(19, 'CHEVROLET', '2002', 'SUBURBAN', '3GNEC16Z32G321433', NULL, 287, NULL, NULL),
(20, 'NISSAN', '2016', 'NP 300', '3N6AD35C7GK826616', NULL, 288, NULL, NULL),
(21, 'LEXUS', '2001', 'RX300', 'JTJGF10U310114174', NULL, 289, NULL, NULL),
(22, 'CHEVROLET', '2014', 'AVEO', '3G1TA5AF1EL139017', NULL, 290, NULL, NULL),
(23, 'FORD', '2019', 'EXPEDITION', '1FMJU1KT2KEA25828', NULL, 291, NULL, NULL),
(24, 'FORD', '2004', 'FOCUS', '1FABP33304W101754', NULL, 292, NULL, NULL),
(25, 'GMC', '2017', 'SIERRA', '3GTU2NEC9HG409780', NULL, 293, NULL, NULL),
(26, 'NISSAN', '2022', 'VERSA', '3N1CN7AE8NK394657', NULL, 294, NULL, NULL),
(27, 'HONDA', '2018', 'CARGO', '3H1KA4175HD414100', NULL, 295, NULL, NULL),
(28, 'HONDA', '2004', 'ACCORD', '3HGCM56384G001996', NULL, 296, NULL, NULL),
(29, 'BMW', '2013', 'X3', 'WBAWX9102D0A00726', NULL, 297, NULL, NULL),
(30, 'JEEP', '2012', 'COMPAS', '1C4AJCAB9CD505440', NULL, 298, NULL, NULL),
(31, 'NISSAN', '2007', 'TIIDA', '3N1BC11S77K191976', NULL, 299, NULL, NULL),
(32, 'FORD', '2017', 'RANGER', '8AFWR5AAXH6006605', NULL, 300, NULL, NULL),
(33, 'CHEVROLET', '2011', 'TORNADO', '93CXM8020BC107527', NULL, 301, NULL, NULL),
(34, 'VOLKSWAGEN', '2013', 'JETTA', '3VW2W2AJ1DM262300', NULL, 302, NULL, NULL),
(35, 'MERCEDES BENZ', '2017', 'SPLINTER', 'WD3YF1A99HP350504', NULL, 303, NULL, NULL),
(36, 'CHEVROLET', '2000', 'TRACKER', '2CNBE13C3Y6933055', NULL, 304, NULL, NULL),
(37, 'CHEVROLET', '2005', 'CHEVY', '3G1SE51X05S211775', NULL, 305, NULL, NULL),
(38, 'CHEVROLET', '2006', 'SILVERADO', '1GCEK19T96Z235844', NULL, 307, NULL, NULL),
(39, 'KIA', '2019', 'SORENTO', '5XYPH4A3XKG496011', NULL, 306, NULL, NULL),
(40, 'RAM', '2021', 'PROMASTER', '9BD265553M9181099', NULL, 308, NULL, NULL),
(41, 'CHEVROLET', '2022', 'AVEO', 'LSGHD52H8ND009167', NULL, 309, NULL, NULL),
(42, 'HONDA', '2019', '150', '3H1KC3886KD000169', NULL, 310, NULL, NULL),
(43, 'NISSAN', '2018', 'FRONTIER', '3N6AD33A8JK871704', NULL, 311, NULL, NULL),
(44, 'AUDI', '2014', 'A4', 'WAUACC8K5EN040939', NULL, 312, NULL, NULL),
(45, 'CHEVROLET', '2019', 'AVEO', 'LSGHD52H6KD110946', NULL, 313, NULL, NULL),
(46, 'SEAT', '2020', 'CUPRA ATECA', 'VSSAD75FXL6504764', NULL, 314, NULL, NULL),
(47, 'DODGE', '2018', 'RAM 2500', '3C6SRADG0JG123894', NULL, 317, NULL, NULL),
(48, 'TOYOTA', '2020', 'HILUX', 'MR0EX3DDXL0006975', NULL, 316, NULL, NULL),
(49, 'NISSAN', '2012', 'MARCH', '3N1CK3CSXCL245162', NULL, 315, NULL, NULL),
(50, 'MERCEDES BENZ', '2019', 'GLC300', 'WDC0J4KBXKF510109', NULL, 318, NULL, NULL),
(51, 'CHEVROLET', '2015', 'SPARK', 'KL8CJ6AD5FC735135', NULL, 319, NULL, NULL),
(52, 'VOLKSWAGEN', '2015', 'VENTO', 'MEX512606FT088363', NULL, 320, NULL, NULL),
(53, 'CHEVROLET', '2016', 'TORNADO', '93CCL8001GB171413', NULL, 321, NULL, NULL),
(54, 'VOLKSWAGEN', '2000', 'POINTER', '9BWA37726YP072535', NULL, 322, NULL, NULL),
(55, 'DODGE', '2017', 'ATTITUDE', 'ML3AB26J8HH010611', NULL, 323, NULL, NULL),
(56, 'NISSAN', '2014', 'JUKE', 'JN1AF55C9ET100366', NULL, 324, NULL, NULL),
(57, 'HINO', '2022', 'SERIE 300', 'JHHTES0F8NK002800', NULL, 325, NULL, NULL),
(58, 'NISSAN', '2017', 'TSURU', '3N1EB31S5HK352032', NULL, 326, NULL, NULL),
(59, 'ITALIKA', '2014', '250Z', 'LLCLPMB04EA103381', NULL, 327, NULL, NULL),
(60, 'ITALIKA', '2018', 'DT150 DELIVERY', '3SCPDTEE2J1019823', NULL, 328, NULL, NULL),
(61, 'ITALIKA', '2021', 'DT250', '3SCK2FEX8M1004024', NULL, 329, NULL, NULL),
(62, 'YAMAHA', '2021', 'YBR 125G', 'LBPKE131XM0146775', NULL, 330, NULL, NULL),
(63, 'YAMAHA', '2021', 'YBR 125', 'LBPKE124XM0115747', NULL, 331, NULL, NULL),
(64, 'HONDA', '1999', 'CBR 600', 'JH2PC3516XM000037', NULL, 332, NULL, NULL),
(65, 'HONDA', '2017', 'XRE300', '9C2ND1216HR600240', NULL, 333, NULL, NULL),
(66, 'HONDA', '2018', 'CARGO 150', '3H1KA4172JD517626', NULL, 335, NULL, NULL),
(67, 'HONDA', '2017', 'XRE300', '9C2ND1212HR600252', NULL, 334, NULL, NULL),
(68, 'ITALIKA', '2015', 'FT150', '3SCPFTEE9F1015494', NULL, 336, NULL, NULL),
(69, 'YAMAHA', '2017', 'YBR125', 'LBPKE1243H0098344', NULL, 337, NULL, NULL),
(70, 'YAMAHA', '2021', 'YBR125', 'LBPKE124XM0115716', NULL, 338, NULL, NULL),
(71, 'ITALIKA', '2018', 'AT110', '3SCPATCS1J1012217', NULL, 339, NULL, NULL),
(72, 'BAJAJ', '2017', 'NS200', 'MD2A36FZ4HCE00736', NULL, 340, NULL, NULL),
(73, 'ITALIKA', '2018', 'DT150', '3SCPDTEE4J1021427', NULL, 341, NULL, NULL),
(74, 'ITALIKA', '2022', 'DT150', '3SCK2AEH1N1014021', NULL, 342, NULL, NULL),
(75, 'ITALIKA', '2019', 'DT150', '3SCPDTEE6K1011144', NULL, 343, NULL, NULL),
(76, 'ITALIKA', '2017', 'FT150', '3SCPFTEE0H1092063', NULL, 344, NULL, NULL),
(77, 'HONDA', '2014', 'ACCORD', '1HGCR2637EA902499', NULL, 345, NULL, NULL),
(78, 'NISSAN', '2017', 'TSURU', '3N1EB31S0HK354173', NULL, 346, NULL, NULL),
(79, 'FORD', '2009', 'ECONOLINE', '1FTNE14W19DA20856', NULL, 347, NULL, NULL),
(80, 'NISSAN', '2005', 'SENTRA', '3N1CB51D15L498065', NULL, 348, NULL, NULL),
(81, 'NISSAN', '2017', 'TSURU', '3N1EB31S4HK343600', NULL, 350, NULL, NULL),
(82, 'NISSAN', '2017', 'MARCH', '3N1CK3CD3HL220788', NULL, 349, NULL, NULL),
(83, 'NISSAN', '2004', 'NP300', '3N6CD15S64K118552', NULL, 351, NULL, NULL),
(84, 'CHEVROLET', '2018', 'AVEO', 'LSGHD52H4JD022198', NULL, 352, NULL, NULL),
(85, 'HYUNDAI', '2021', 'GRAND I10', 'MALB24BC5MM027739', NULL, 353, NULL, NULL),
(86, 'NISSAN', '2013', 'TIIDA', '3N1BC1ADXDK225812', NULL, 354, NULL, NULL),
(87, 'MAZDA', '2012', 'MAZDA 3', 'JM1BL1VF9C1547009', NULL, 355, NULL, NULL),
(88, 'MITSUBISHI', '2006', 'ENDEAVOR', '4A4MM41SX6E023089', NULL, 356, NULL, NULL),
(89, 'FORD', '2008', 'EXPLORER', '1FMEU63E58UA89200', NULL, 357, NULL, NULL),
(90, 'FORD', '2004', 'F350', '3FDKF36L64MA17281', NULL, 358, NULL, NULL),
(91, 'CHEVROLET', '2016', 'CAMARO', '1G1F91R74G0179670', NULL, 359, NULL, NULL),
(92, 'SUZUKI', '2018', 'CIAZ', 'MMSVC41S8JR103436', NULL, 360, NULL, NULL),
(93, 'CHEVROLET', '2016', 'SIERRA', '1GTN29EC1GZ110262', NULL, 361, NULL, NULL),
(94, 'NISSAN', '2016', 'MARCH', '3N1CK3CD3GL235788', NULL, 362, NULL, NULL),
(95, 'NISSAN', '2020', 'CHASIS CAB', '3N6AD35A7LK872259', NULL, 363, NULL, NULL),
(96, 'CHRYSLER', '2021', 'ATTITUDE', 'ML3ABT6J2MH000639', NULL, 364, NULL, NULL),
(97, 'CHEVROLET', '2022', 'TORNADO', 'LZWNNNGM3NC804356', NULL, 365, NULL, NULL),
(98, 'CHRYSLER', '2018', 'RAM1500', '3C6SRADG0JG123913', NULL, 366, NULL, NULL),
(99, 'HONDA', '2017', 'CIVIC', '2HGFC3288HH851199', NULL, 367, NULL, NULL),
(100, 'JAC', '2018', 'J4', '3GA4A132XJM002010', NULL, 368, NULL, NULL),
(101, 'CHEVROLET', '2016', 'SONIC', '3G1J85CCXGS557641', NULL, 369, NULL, NULL),
(102, 'TOYOTA', '2007', 'CAMRY', '4T1BK46K57U515982', NULL, 370, NULL, NULL),
(103, 'MINI', '2016', 'MINI COOPER', 'WMWXS5109G2B11259', NULL, 371, NULL, NULL),
(104, 'TOYOTA', '2007', 'TACOMA', '5TETU62N67Z366133', NULL, 372, NULL, NULL),
(105, 'NISSAN', '2017', 'VERSA', '3N1CN7AD9HL815887', NULL, 373, NULL, NULL),
(106, 'VOLKSWAGEN', '2020', 'VENTO', 'MEX512602LT066288', NULL, 374, NULL, NULL),
(107, 'SUZUKI', '2015', 'VITARA', 'JS3TE04V9F4201855', NULL, 375, NULL, NULL),
(108, 'VOLKSWAGEN', '2019', 'JETTA', '3VWKP6BU9KM159085', NULL, 376, NULL, NULL),
(109, 'NISSAN', '2014', 'PATHFINDER', '5N1AR2MN5EC619254', NULL, 377, NULL, NULL),
(110, 'FORD', '2012', 'ECONOLINE', '1FTNE1EW1CDA02797', NULL, 378, NULL, NULL),
(111, 'HONDA', '2018', 'XR150', '3H1KD4170JD308831', NULL, 379, NULL, NULL),
(112, 'HONDA', '2002', 'CIVIC', '1HGES16722L900525', NULL, 380, NULL, NULL),
(113, 'RAM', '2021', 'PROMASTER', '9BD265555M9194551', NULL, 382, NULL, NULL),
(114, 'DODGE', '2016', 'CHARGER', '2C3CDXAG0GH272516', NULL, 381, NULL, NULL),
(115, 'FORD', '2012', 'E-150', '1FTNE1EW1CDA02797', NULL, 383, NULL, NULL),
(116, 'GMC', '2016', 'YUKON', '1GKS27KJ4GR412742', NULL, 384, NULL, NULL),
(117, 'NISSAN', '2021', 'VERSA', '3N1CN8AE8ML900986', NULL, 385, NULL, NULL),
(118, 'MERCEDES BENZ', '2017', 'SPRINTER VAN', 'WD3YF1A99HP350504', NULL, 386, NULL, NULL),
(119, 'VOLKSWAGEN', '2013', 'JETTA CLASSICO', '3VW1V49M4DM047664', NULL, 387, NULL, NULL),
(120, 'FORD', '2008', 'FOCUS', '1FAHP35N98W181084', NULL, 388, NULL, NULL),
(121, 'HONDA', '2016', 'HR-V', '3HGRU5852GM009283', NULL, 389, NULL, NULL),
(122, 'TOYOTA', '2005', 'RAV-4 L', 'JTEGD20V450079864', NULL, 390, NULL, NULL),
(123, 'PEUGEOT', '2014', 'MANAGER', 'VF3YDZMF5E2467006', NULL, 391, NULL, NULL),
(124, 'RENAULT', '2010', 'KOLEOS', 'VF1VY1GY9AC316799', NULL, 392, NULL, NULL),
(125, 'CHEVROLET', '2001', 'CHEVY', '3G1SF24271S139995', NULL, 393, NULL, NULL),
(126, 'PEUGEOT', '2022', 'PARTNER', 'VR3EUHNP8NJ509350', NULL, 394, NULL, NULL),
(127, 'CHEVROLET', '2017', 'AVEO', '3G1TB5CF8HL214309', NULL, 395, NULL, NULL),
(128, 'NISSAN', '2015', 'NP 300', '3N6DD25X0FK075481', NULL, 396, NULL, NULL),
(129, 'NISSAN', '2019', 'KICKS', '3N8CP5HD3HL474377', NULL, 397, NULL, NULL),
(130, 'FIAT', '2017', 'UNO', '9BD195521H0776908', NULL, 398, NULL, NULL),
(131, 'NISSAN', '2001', 'TSURU', '3N1EB31S81K273704', NULL, 399, NULL, NULL),
(132, 'NISSAN', '2018', 'KICKS', '3N8CP5HE1JL505057', NULL, 400, NULL, NULL),
(133, 'DODGE', '2019', 'RAM', '9BD578452KY281677.', NULL, 401, NULL, NULL),
(134, 'KIA', '2018', 'SPORTAGE', 'U6YPH3AAXJL519854', NULL, 402, NULL, NULL),
(135, 'SUZUKI', '2019', 'GIXXER', 'MB8NG4BA4K8309791', NULL, 403, NULL, NULL),
(136, 'DODGE', '2017', 'ATTITUDE', 'ML3AB56J3HH026149', NULL, 404, NULL, NULL),
(137, 'ITALIKA', '2021', 'FT125', '3SCK29EL8M1007911', NULL, 405, NULL, NULL),
(138, 'FORD', '2019', 'F150', '1FTEW1CB6KKE02006', NULL, 406, NULL, NULL),
(139, 'CHEVROLET', '2021', 'BEAT', 'MA6CA6CD8MT009979', NULL, 408, NULL, NULL),
(140, 'HONDA', '2006', 'ACCORD', '3HGCM56366G003216', NULL, 407, NULL, NULL),
(141, 'DODGE', '2020', 'NEON', 'ZFAADAAP6L6P33382', NULL, 409, NULL, NULL),
(142, 'NISSAN', '2018', 'NP300', '3N6AD35C5JK811670', NULL, 410, NULL, NULL),
(143, 'DODGE', '2018', 'NEON', 'ZFACDACP6J6K58027', NULL, 411, NULL, NULL),
(144, 'HYUNDAI', '2020', 'I10', 'MALA84BC5LM376568', NULL, 412, NULL, NULL),
(145, 'VOLKSWAGEN', '2017', 'UP', '9BWAG4126HT541593', NULL, 413, NULL, NULL),
(146, 'HONDA', '2006', 'CIVIC', '1HGFA16886L026381', NULL, 414, NULL, NULL),
(147, 'CHEVROLET', '2018', 'BEAT', 'MA6CB6CD6JT011335', NULL, 415, NULL, NULL),
(148, 'RENAULT', '2019', 'DUSTER', '9FBHS2FF9KM490005', NULL, 416, NULL, NULL),
(149, 'NISSAN', '2021', 'V-DRIVE', '3N1CN7AD1MK397731', NULL, 417, NULL, NULL),
(150, 'JEEP', '2019', 'CHEROKEE', '1C4PJLDB7KD348091', NULL, 418, NULL, NULL);

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
  `asegurado` varchar(200) NOT NULL,
  `correoContacto` varchar(100) DEFAULT NULL,
  `telContacto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `infocliente`
--

INSERT INTO `infocliente` (`idCliente`, `telefonoPrincipal`, `telefonosecundario`, `contacto`, `correo`, `fkIdRegistro`, `asegurado`, `correoContacto`, `telContacto`) VALUES
(1, '3336672029', '3311447084T', NULL, 'NO@CORREO', 269, 'MARIO ALBERTO GONZALEZ', NULL, NULL),
(2, '3323850028/3336', 'SD', NULL, '#ERROR_#N/A', 270, 'JOSE LUS VELAZQUEZ OROZCO', NULL, NULL),
(3, '5546026059', 'SD', NULL, '0', 271, 'RAFAEL SANCHEZ', NULL, NULL),
(4, '5569784386', 'SD', NULL, 'SERVICIOS@PASCAL.COM.MX', 272, 'AGENCIA ADUANAL PASCAL SC', NULL, NULL),
(5, '3326009442', 'SD', NULL, '0', 273, 'GUSTAVO VAZQUEZ', NULL, NULL),
(6, '3141743906', 'SD', NULL, 'SINCORREO@GMAIL.COM', 274, 'LUIS RAMNADO RAMOS SUAREZ', NULL, NULL),
(7, '5559532941', 'SD', NULL, '0', 276, 'FRANCISCO JAVIER MARTINEZ QUINTO', NULL, NULL),
(8, '3311458489', 'SD', NULL, '0', 275, 'RUBI ESTEFANIA GOMEZ FRANCO', NULL, NULL),
(9, '5543905863', 'SD', NULL, '0', 277, 'LOGICA INDUSTRIAL SA DE CV/MARTIN LOZA', NULL, NULL),
(10, '3323630504', '3322095023', NULL, 'CAROLINALOPEZ7904@HOTMAIL.COM', 278, 'LIDIA CAROLINA LOPEZ ORENDAY', NULL, NULL),
(11, '3318042751', '3325900920', NULL, 'SINCORREO@GMAIL.COM', 280, 'HECTOR MANUEL DE LA CRUZ GONZALEZ', NULL, NULL),
(12, '3316107611', '3336861451', NULL, 'SINCORREO@GMAIL.COM', 279, 'ZULMA BELEN PEREZ ROBLES', NULL, NULL),
(13, '3332583776', '3330070401', NULL, 'VEHICULOS.PATRIMONIO@GMAIL.COM', 282, 'FEDERICO MORENO  /  OSWALDO CERRANO LICEA', NULL, NULL),
(14, '3331707140', 'SD', NULL, '0', 281, 'JOSE DE JESUS ARECHIGA SEGURA', NULL, NULL),
(15, '3322043885', 'SD', NULL, '0', 283, 'ABRAHAM OMAR GOMEZ ESTEBAN', NULL, NULL),
(16, 'S/D', 'SD', NULL, '0', 284, 'TERCERO RUBEN GARCIA QUIRARTE', NULL, NULL),
(17, '3222356273', '5555804780', NULL, 'SINCORREO@GMAIL.COM', 285, 'FLOR SANABRIA', NULL, NULL),
(18, '9154228543', '5553228200', NULL, 'SINCORREO@GMAIL.COM', 286, 'ARMANDO REYES', NULL, NULL),
(19, '3751135617', 'SD', NULL, 'SINCORREO@GMAIL.COM', 287, 'MARTIN REGALADO', NULL, NULL),
(20, '3411026393', '3123170106', NULL, 'SINCORREO@GMAIL.COM', 288, 'JORGE MONTAÑO LOPEZ', NULL, NULL),
(21, '3121745959', 'SD', NULL, '0', 289, 'JAVIER MORENO GALINDO', NULL, NULL),
(22, '3332438359', '5543649967', NULL, 'GUILLERMO.MORALES@LOGITEL.COM.MX', 290, 'LOGICA INDUSTRIAL SA DE CV/MOISES LUNA', NULL, NULL),
(23, '3334878017', 'SD', NULL, '0', 291, 'ALD AUTOMOTIVE SA DE CV//JOSE ALBERTO VAZQUEZ RAMIREZ', NULL, NULL),
(24, '3311735886', 'SD', NULL, '0', 292, 'HILDA NELLY LUCANO RAMÃREZ', NULL, NULL),
(25, '3326259063', 'SD', NULL, '0', 293, 'JOSE RUBEN ALCAZAR', NULL, NULL),
(26, '3331674010', 'SD', NULL, '0', 294, 'SANCHEZ SA DE CV//HECTOR ARIAS MORENO', NULL, NULL),
(27, '3314794173', '6142163986', NULL, 'FDELTORO@SYD.COM.MX', 295, 'SUSPENSION Y DIRECCION SA DE CV//MOISES VAZQUEZ VELASQUEZ', NULL, NULL),
(28, '3471015758', 'SD', NULL, '0', 296, 'ISRAEL GONZALEZ RAMIREZ//JUAN CAMARENA', NULL, NULL),
(29, '3312237722', 'SD', NULL, 'ADLOPEZ5757@GMAIL.COM', 297, 'ADRIAN LOPEZ GOMEZ', NULL, NULL),
(30, '5586413690', 'SD', NULL, '0', 298, 'LUIS ALFONSO ESTRADA MALACON', NULL, NULL),
(31, '3318201759', 'SD', NULL, 'LICMELISSACAMARENA@GMAIL.COM', 299, 'MELISSA LIZBETH CAMARENA RIOS', NULL, NULL),
(32, '3320783072', 'SD', NULL, 'TERESA.M@ASESORIAAUTOONLINE.COM.MX', 300, 'ISMAEL RAMOS', NULL, NULL),
(33, '3320783072', 'SD', NULL, 'SINCORREO@GMAIL.COM', 301, 'ADAN RAMIREZ GUTIERREZ', NULL, NULL),
(34, '3511184762', 'SD', NULL, 'SINCORREO@GMAIL.COM', 302, 'ALEJANDRO ISAAC SANCHEZ FERNANDEZ', NULL, NULL),
(35, '5585741569', 'SD', NULL, 'VENTAS@VANSMANZAHNOS.COM.MX', 303, 'MANZAHNOS VIAJES SA DE CV//FERNANDO BERNAL//OSCAR MANZANO', NULL, NULL),
(36, '3310898664', 'SD', NULL, '0', 304, 'ISARAEL DIAZ MUÃOZ', NULL, NULL),
(37, '3339027351', 'SD', NULL, 'LIC.FRANCISCOLOZANO92@GMAIL.COM', 305, 'JOSÃ FRANCISCO LOZANO MARTÃNEZ', NULL, NULL),
(38, '3322520281', 'SD', NULL, '0', 307, 'ADAN NAVARRO GONZALEZ', NULL, NULL),
(39, '3121325867', 'SD', NULL, 'SINCORREO@GMAIL.COM', 306, 'D CONCREFOCC SA DE CV//RAUL ROMERO ARELLANO', NULL, NULL),
(40, '3319922224', 'SD', NULL, '0', 308, 'LEASEPLAN MEXICO SA DE CV//AGUSTIN BLANCO CERVANTES', NULL, NULL),
(41, '5544845481', 'SD', NULL, 'PABLOANGELRB@ANASEGUROS.COM.MX', 309, 'GERARDO HERNANDEZ CAMPOS //MARIA RAMIREZ', NULL, NULL),
(42, '3223515920', 'SD', NULL, '0', 310, 'JOEL ARMANDO RAMIREZ FLORES', NULL, NULL),
(43, '3231087978', 'SD', NULL, 'SINCORREO@GMAIL.COM', 311, 'HELM DE MEXICO SA//GUSTAVO IGNACIO LEMUS MENDIOLA', NULL, NULL),
(44, '3314084840', 'SD', NULL, '0', 312, 'ILIANA DEL ROCIO GARCIA GARCIA', NULL, NULL),
(45, '3332386077', 'SD', NULL, '0', 313, 'CINTHIA REYNOZO GARCIA', NULL, NULL),
(46, '3321541014', 'SD', NULL, 'DEREKHERRERA7@GMAIL.COM', 314, 'YAREK ALLEN HERRERA', NULL, NULL),
(47, '3321461964', '3312776996', NULL, 'SINCORREO@GMAIL.COM', 316, 'EDGAR RICARDO MONTERO ESPARZA//MUNICIPIO DE TEQUILA JAL', NULL, NULL),
(48, '3751188484', '3757603525', NULL, 'SINCORREO@GMAIL.COM', 317, 'MUNICIPIO DE TECOLOTLAN JALISCO//RIGOBERTO ANDRADE RODRIGUEZ', NULL, NULL),
(49, '3313009250', 'SD', NULL, 'KALEBF2716@GMAIL.COM', 315, 'CRISTOPHER KALEBF MONTES ACEVES', NULL, NULL),
(50, '3781166065', '3787905801', NULL, 'SINCORREO@GMAIL.COM', 318, 'RICARDO PEñA//ANA IRENE GUADALUPE BARAJAS MARTINEZ', NULL, NULL),
(51, '3334467910', 'SD', NULL, '0', 319, 'SEMIRE SA DE CV//MISAEL OCHOA MENDEZ', NULL, NULL),
(52, '3316060935', '3316038618', NULL, 'SINCORREO@GMAIL.COM', 320, 'MAGNOCENTRO FERRETERO SA DE CV//RAFAEL MALDONADO MORA', NULL, NULL),
(53, '3319426828', 'SD', NULL, '0', 321, 'JOSE LUIS HERNANDEZ MEJIA', NULL, NULL),
(54, '3333538584', 'SD', NULL, 'AG207252@GMAIL.COM', 322, 'JUAN MIGUEL GOMEZ NAVARRO', NULL, NULL),
(55, '3311693005', 'SD', NULL, 'COPCOM32@HOTMAIL.COM', 323, 'ISRAEL LOPEZ LOPEZ//ERNESTO DE JESUS MORENO GUTIERREZ', NULL, NULL),
(56, '3330604216', 'SD', NULL, 'SINCORREO@NO', 324, 'VALERIA ARCE GOMEZ', NULL, NULL),
(57, '6673614937', 'SD', NULL, '0', 325, 'START BANREGIO SA DE CV SOFOM ER BANREGIO GRUPO FINANCIERO//JUAN MANUEL VEGA FLORES', NULL, NULL),
(58, '3318545103', 'SD', NULL, 'TONO47732@GMAIL.COM', 327, 'JONATHAN EDUARDO ACEVES ALVARADO', NULL, NULL),
(59, '5511566580', 'SD', NULL, '0', 326, 'CARZA ARRENDAMIENTO S.A. DE C.V.//SAUL JUAREZ LOPEZ', NULL, NULL),
(60, '3327909558', 'SD', NULL, '0', 328, 'COMERCIALIZADORA PUNTO GDL SA DE CV//JOSE EDUARDO ROMERO ALVAREZ', NULL, NULL),
(61, '3321138256', 'SD', NULL, '0', 329, 'ISAÃ CUEVA GUÃZAR', NULL, NULL),
(62, '3342183825', 'SD', NULL, 'CARNICERIAELORIGEN@HOTMAIL.COM', 330, 'CARNES SELECTAS ICEA SA DE CV//MOISES CORDERO INDA', NULL, NULL),
(63, '5580413408', 'SD', NULL, '0', 331, 'ALD AUTOMOTIVE SA DE CV//JOSE ANTONIO GARCIA DIAS', NULL, NULL),
(64, '3321851510', 'SD', NULL, '0', 332, 'CRITERIO MEDINA GONZÃLEZ', NULL, NULL),
(65, '3317864650', 'SD', NULL, '0', 333, 'MUNICIPIO DE SAN PEDRO TLAQUEPAQUE//CARLOS EDUARDO BLADIMIR MURILLO', NULL, NULL),
(66, '3337054685//333', 'SD', NULL, '0', 334, 'MUNICIPIO DE SAN PEDRO TLAQUEPAQUE//ÃSCAR FLAVIO PÃREZ ELVIRA', NULL, NULL),
(67, '3321062471', 'SD', NULL, '0', 335, 'WIRELESS MOBILE SA DE CV//ABRAHAM MACHADO SANTIAGO', NULL, NULL),
(68, '3313312441', 'SD', NULL, '0', 336, 'EDREI HERNÃNDEZ LUGO//ERICK TOSER NUÃO JIMÃNEZ', NULL, NULL),
(69, '3332235584', 'SD', NULL, '#ERROR_#N/A', 337, 'PIZZA Y COME S.A DE C.V//ROBERTO JAUREGUI LEE', NULL, NULL),
(70, '3316287194', 'SD', NULL, 'SINCORREO@NO', 338, 'ALD AUTOMOTIVE SA DE CV//NOHEMI PLANCARTE PULIDO', NULL, NULL),
(71, '3319672858', 'SD', NULL, '0', 339, 'ALONDRA ESTEFANIA MORA BERMUDEZ', NULL, NULL),
(72, '3339465796', 'SD', NULL, '0', 340, 'JOSE YOSAFAT TAMAYO ROJAS', NULL, NULL),
(73, '3311752946//331', 'SD', NULL, '0', 341, 'JUAN ANTONIO HERNÃNDEZ DE ALBA', NULL, NULL),
(74, '3333580061', 'SD', NULL, 'SERGIOAGOMEZS@GMAIL.COM', 342, 'UBER PORTIER MEXICO S DE RL DE//SERGIO ANTONIO GOMEZ SAUCEDA', NULL, NULL),
(75, '3312687282', 'SD', NULL, '0', 343, 'JOSE ARMANDO SOSA OROZCO', NULL, NULL),
(76, '3481148840', 'SD', NULL, '0', 344, 'JOSE RAMIREZ ORTEGA', NULL, NULL),
(77, '5539781908', 'SD', NULL, '0', 345, 'ARMANDO PÃREZ URDIERA', NULL, NULL),
(78, '5616579223', 'SD', NULL, '0', 346, 'PRO TECH INTERNATIONAL SERVICES S.A. DE C.V.//ALFREDO OLIVARES FERNANDEZ', NULL, NULL),
(79, '3333495128', 'SD', NULL, 'RENEMA1023@OUTLOOK.ES', 347, 'MUNICIPIO DE TALA//JOSÃ MANUEL RUIZ QUEZADA', NULL, NULL),
(80, '3313022988', 'SD', NULL, 'DISENOCOLOR51@HOTMAIL.COM', 348, 'MILAGROS CORONA VERGARA//DANIEL SEGOVIANO SCHMIDT', NULL, NULL),
(81, '3121077974', 'SD', NULL, '0', 349, 'JORGE ANTONIO VALENCIA MIRANDA', NULL, NULL),
(82, '5588300821', 'SD', NULL, '0', 350, 'CARZA ARRENDAMIENTO S.A. DE C.V.//JUAN LUIS HERNANDEZ', NULL, NULL),
(83, '3317667000', 'SD', NULL, 'LENIA@PRISMAENVASE.COM', 351, 'PRISMA ENVASE SA DE CV//ERNESTO GOMEZ//LENIA RIVERON', NULL, NULL),
(84, '5579290927', 'SD', NULL, '0', 352, 'INTERNATIONAL BUSINESS AND BEST MONEY SA DE CV//ANTONIO HERNANDEZ', NULL, NULL),
(85, '3314290254', 'SD', NULL, '0', 353, '123LEASE SAPI DE CV//FLORISEL REYES CRUZ', NULL, NULL),
(86, '5560702910', 'SD', NULL, '0', 354, 'MARIO JESUS RODRIGUEZ MENDOZA', NULL, NULL),
(87, '3781105777', 'SD', NULL, '0', 355, 'JOSE SALVADOR ENRIQUEZ ALVARADO', NULL, NULL),
(88, '3112041655', 'SD', NULL, '0', 356, 'IGNACIO DE JESUS LOPEZ MARTIN', NULL, NULL),
(89, '3335561344', 'SD', NULL, 'ATA_ELPERRON@HOTMAIL.COM', 357, 'MARISELA RODRIGUEZ CARDENAS', NULL, NULL),
(90, '3751013453', 'SD', NULL, '0', 358, 'JOSE MENDEZ GARCIA', NULL, NULL),
(91, '5585276599', 'SD', NULL, '0', 359, 'DAVID QUENTIN CHALAR', NULL, NULL),
(92, '5549859267', 'SD', NULL, '0', 360, 'TACTICA Y TECNOLOGIA EN SEGURIDAD PRIVADA SA DE CV//ROMULO VILLALOBOS FERNANDEZ', NULL, NULL),
(93, '3141450866', 'SD', NULL, 'HEREDIA_TORRES_GABRIEL@HOTMAIL.COM', 361, 'RUBEN HEREDIA LARIOS//GABRIEL HEREDIA TORRES', NULL, NULL),
(94, '3315740653', 'SD', NULL, '0', 362, 'GIRECO SA DE CV//KARINA MERCADO MUNGARAY', NULL, NULL),
(95, '6681120890', 'SD', NULL, '0', 363, 'MUEBLERIA HIDALGO DEL NOROESTE SA DE CV//JUAN SERRANO', NULL, NULL),
(96, '6721180155', 'SD', NULL, '0', 364, 'CORPORATIVO DE PROTECCION SEGURIDAD PRIVADA Y SERV ESPECIALIZADOS SA DE CV//LUIS ANDRES DUARTE PEÃUELAS', NULL, NULL),
(97, '3122918651', 'SD', NULL, '0', 365, 'LEASEPLAN MEXICO SA DE CV//BRAULIO ALEXIS MALDONADO AGUILAR', NULL, NULL),
(98, '3151003271', 'SD', NULL, '0', 366, 'MUNICIPIO DE LA HUERTA JALISCO//SALVADOR LOPEZ PRECIADO', NULL, NULL),
(99, '3141186798', 'SD', NULL, 'YAIRBLAS_91@HOTMAIL.COM', 367, 'HECTOR YAIR BLAS GUTIERREZ', NULL, NULL),
(100, '5570073268', 'SD', NULL, '0', 368, 'TACTICA Y TECNOLOGIA EN SEGURIDAD PRIVADA SA DE CV//JAVIER HERNANDEZ// RAFAEL ALTAMIRANO', NULL, NULL),
(101, '3411477272', 'SD', NULL, '0', 369, 'JUAN SALVADOR ZUNIGA QUINONEZ', NULL, NULL),
(102, '3411652534', 'SD', NULL, '0', 370, 'MIGUEL TORRES CONTRERAS', NULL, NULL),
(103, '3334646070', 'SD', NULL, 'SINDATO@GMAIL', 371, 'MARIO ANTONIO GARCIA ACEVES', NULL, NULL),
(104, '3411214875', 'SD', NULL, '0', 372, 'MUNICIPIO DE TAMAZULA DE GORDIANO JALISCO//CESAR ARMANDO ESQUIVEL TORRES', NULL, NULL),
(105, '6691513810', 'SD', NULL, '0', 373, 'JOSE ADRIAN ARIAS FRANCO', NULL, NULL),
(106, '6671937589', 'SD', NULL, '0', 374, 'TRECE CAR RENTAL GROUP SA DE CV//ROBERTO MEDRANO', NULL, NULL),
(107, '6695331218', 'SD', NULL, '0', 375, 'PAUL BRUCE LEON BENITEZ', NULL, NULL),
(108, '4493529717', 'SD', NULL, '0', 376, 'CARLOS DANIEL GONZALEZ', NULL, NULL),
(109, '3221412831', 'SD', NULL, '0', 377, 'HUMBERTO MARTINEZ FRIAS', NULL, NULL),
(110, '3312287207', 'SD', NULL, '0', 378, 'MUNICIPIO DE ATOYAC JALISCO/MARIA DANIELA MONSERRAT TORRES TEJEDA', NULL, NULL),
(111, '5580102070', 'SD', NULL, '0', 379, 'SOLUCIONES Y APLICACIONES EN PROCEDIMIENTOS INTRAMUROS SA DE CV//FREDY MAGDALENO ZEA', NULL, NULL),
(112, '3319958488', 'SD', NULL, 'OSCARFLORESROMERO0807@GMAIL.COM', 380, 'ALBERTO FLORES ALVAREZ', NULL, NULL),
(113, '6532070990', '6532070990', NULL, 'SINDATO@GMAIL', 381, 'MUNICIPIO DE SAN LUIS RIO COLORADO SONORA//GILBERTO ROBLES ZEPEDA', NULL, NULL),
(114, '6531339992', '6531339992', NULL, 'SINDATO@GMAIL', 382, 'AGROS HORTICULTORES S.A. DE C.V.//JESUS AVIÑA', NULL, NULL),
(115, '3312287207', 'SD', NULL, 'SINCORREO@GMAIL.COM', 383, 'MUNICIPIO DE ATOYAC JALISCO/MARIA DANIELA MONSERRAT TORRES TEJEDA', NULL, NULL),
(116, '2226512516', '2226512516', NULL, 'MIGUELMTZFLORES@HOTMAIL.COM', 384, 'MIGUEL ANGEL MARTINEZ', NULL, NULL),
(117, '5544556432', 'SD', NULL, 'SINCORREO@GMAIL.COM', 385, 'JORGE GEVARA MARTINEZ', NULL, NULL),
(118, '5585741569', 'SD', NULL, 'VENTAS@VANSMANZAHNOS.COM.MX', 386, 'MANZAHNOS VIAJES SA DE CV//FERNANDO BERNAL//OSCAR MANZANO', NULL, NULL),
(119, '4621003635', 'SD', NULL, 'RAMIROPDOME@GMAIL.COM', 387, 'ABRAHAM RAFAEL SUAREZ HEREDIA//MUNICIPIO DE HIDALGO MICHOACAN', NULL, NULL),
(120, '6531131403', 'SD', NULL, 'SINCORREO@GMAIL.COM', 388, 'PEDRO ANTONIO DIAZ GONZALEZ', NULL, NULL),
(121, '6531082396', 'SD', NULL, 'SINCORREO@GMAIL.COM', 389, 'DIMA RODRIGUEZ OVIEDO//MARCELA GUADALUPE IBARRA LOPEZ', NULL, NULL),
(122, '4521058470', 'SD', NULL, 'RGTERRI@GMAIL.COM', 390, 'RAFAEL GARCIA VAES//MA ESTELA BAEZ ALVAREZ', NULL, NULL),
(123, '6141280834', 'SD', NULL, 'SINCORREO@NO', 391, 'OSCAR MENDOZA FRIAS', NULL, NULL),
(124, '4494337196', '4494337196', NULL, 'SINCORREO@NO', 392, 'MARIO ALBERTO RUANO ESPINOZA', NULL, NULL),
(125, '3317525848', '3331910778', NULL, 'DIEORTEGAP@GMAIL.COM', 393, 'RAFAEL MAYORGA RODRIGUEZ', NULL, NULL),
(126, '4491505894', 'SD', NULL, 'SINCORREO@NO', 394, 'ARTURO PEREZ LUNA//FELIPE DE JESUS LOPEZ LEOS', NULL, NULL),
(127, '4773241286', 'SD', NULL, 'SINCORREO@NO', 395, 'GRUPO TRACTOCAMIONES Y AUTOBUSES DEL BAJIO SA DE CV//JORGE DANIEL MARTINEZ', NULL, NULL),
(128, '3141505753', 'SD', NULL, 'SD', 396, 'MIGUEL ANTONIO CONTRERAS', NULL, NULL),
(129, '3321831205', '3221110138', NULL, 'LUCRECIAMMACNAUGHT@HOTMAIL.COM', 397, 'LUCRECIA MARRON', NULL, NULL),
(130, '3317860075', 'SD', NULL, 'SINCORREO@GMAIL.COM', 398, 'JUAN JESUS RODRIGUEZ', NULL, NULL),
(131, '3221427796', 'SD', NULL, 'SINCORREO@GMAIL.COM', 399, 'SANTOS CASTELLANOS BAZAN', NULL, NULL),
(132, '7444010968', 'SD', NULL, 'SD', 400, 'JOSE ALFREDO TORRES', NULL, NULL),
(133, '3121345315', 'SD', NULL, 'SINCORREO@GMAIL.COM', 401, 'ALFREDO GERVACIO', NULL, NULL),
(134, '5513095979', 'SD', NULL, 'SD', 402, 'JORGE ALEJANDRO HERNANDEZ', NULL, NULL),
(135, '3323617515', 'SD', NULL, 'EEHDLC@GMAIL.COM', 403, 'ERIC HERNANDEZ DE LA CRUZ   // SAUL BENJAMIN GONZALEZ', NULL, NULL),
(136, 'SD', 'SD', NULL, 'SD', 404, 'SERVICIOS INTEGRALES EN EL MANEJO DEL AMBIENTE S DE RL DE CV// LETICIA JIMENEZ ESQUIVEL', NULL, NULL),
(137, '6441243249', 'SD', NULL, 'SD', 405, 'JOSE NOE LOPEZ', NULL, NULL),
(138, '3331707140', 'SD', NULL, 'SINCORREO@GMAIL.COM', 406, 'MARCO ADRIAN BAUTISTA  /  MUNICIO TLAQUEPAQUE  / PINZON', NULL, NULL),
(139, '7295297889', 'SD', NULL, 'SD', 408, 'JUAN CARLOS VELAZQUEZ', NULL, NULL),
(140, '3336009186', '3320531093', NULL, 'SINCORREO@NO', 407, 'MARIA LUISA VILLEGAS ROLDAN', NULL, NULL),
(141, '3228882651', 'SD', NULL, 'SD', 409, 'MARIA ROCIO ZEPEDA', NULL, NULL),
(142, '8331596877', 'SD', NULL, 'SD', 410, 'JOAQUIN RAMON FUENTES SOTELO', NULL, NULL),
(143, '3112200338', 'SD', NULL, 'SD', 411, 'ICOLE JIM BARRUTI AVILA', NULL, NULL),
(144, '3118519052', 'SD', NULL, 'SD', 412, 'MARY RIVERA PEREZ/ IVAN ALEJANDRO MARQUEZ', NULL, NULL),
(145, '3118469608', 'SD', NULL, 'SD', 413, 'ULISES LOERA/ MARIA MARTHA ESCOBEDO', NULL, NULL),
(146, '3313967766', 'SD', NULL, 'SD', 414, 'GONZALO ABREO GOMEZ', NULL, NULL),
(147, '3324405880', 'SD', NULL, 'SD', 415, 'GRUPO INTERMOVIL KREMPDOR S DE RL DE CV//JOSEU CORDOBA NUÃEZ', NULL, NULL),
(148, '3112411780', 'SD', NULL, 'SD', 416, 'PEDRO DE JESUS CERVANTES SANCHEZ', NULL, NULL),
(149, '5580490449', 'SD', NULL, 'SINCORREO@NO', 417, 'LEASEPLAN MEXICO SA DE CV//EDGAR BARAJAS SEVILLA', NULL, NULL),
(150, '3513712665', 'SD', NULL, 'SINCORREO@NO', 418, 'SD', NULL, NULL);

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
(269, '042154482-007', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(270, '42147405', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(271, '42129149', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(272, '42118536', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(273, '42172278', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(274, '42152626', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(275, '042129318-003', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(276, '42164643', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(277, '42187629', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(278, '042167891-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(279, '042186005-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'NINGUNA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(280, '042183705-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(281, '042161648-003', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(282, '042169442-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'NINGUNA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(283, '421A6385', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(284, '42290076', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'NINGUNA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(285, '042158144-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(286, '042190608-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(287, '42290090', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(288, '042140737-003', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(289, '042190644-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(290, '42219888', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(291, '42137312', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(292, '042215337-003', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(293, '042290072-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(294, '042204225-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(295, '42201833-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(296, '42229972', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(297, '42220909', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(298, '042217923-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(299, '042233057-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(300, '042215337-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(301, '042235179-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(302, '042218226-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'NINGUNA', 'N/D', 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(303, '0421-64534', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(304, '0421A5380', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(305, '42238835', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(306, '42226153', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(307, '42247976', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(308, '042247431-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(309, '42233189', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(310, '042241064-003', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(311, '042230231-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(312, '042248650-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(313, '042249861-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(314, '042222574-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(315, '42253434', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(316, '42261869', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(317, '42150159', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(318, '042261857-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(319, '042242644-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(320, '042254620-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(321, '042263935-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(322, '042263716T', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(323, '042266554A', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(324, '042259012-003', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(325, '42260060', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(326, '42255429', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(327, '42223774', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(328, '42258294', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(329, '42256179', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(330, '42183825', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(331, '42236408', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(332, '42203432', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(333, '42186608', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(334, '42184962', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(335, '42066068', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(336, '42162602', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(337, '42170663', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(338, '42200516', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(339, '42209886', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(340, '42235325', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(341, '42249655', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(342, '42251445', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(343, '42252022', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(344, '42252106', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(345, '42271411', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(346, '42271720', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(347, '42270613', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(348, '42275840', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(349, '042224252-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(350, '042217035-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(351, '042262482-001', '03566268', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(352, '042257308-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(353, '042277295-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(354, '042268103-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(355, '042276315-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(356, '042245157-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(357, '42235739', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(358, '42280136', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(359, '42258694', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(360, '042266528-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(361, '042252652-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(362, '42287214-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(363, '42277852', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(364, '42231500', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(365, '042238253-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(366, '042255056-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(367, '042261722-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(368, '042106490-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(369, '42275385', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(370, '42215868', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(371, '42271609', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(372, '42263231', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(373, '42253152', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(374, '42227040', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(375, '42271388', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(376, '042268551-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(377, '042272285-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(378, '04218866-003', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(379, '42110944', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(380, '42160898', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(381, '42232419', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(382, '42271079', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(383, '42208866', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(384, '42147035', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(385, '42219498', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'AGUASCALIENTES', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(386, '42164534', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(387, '42232770', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'MORELIA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(388, '42264110', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'HERMOSILLO', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(389, '42240433', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'HERMOSILLO', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(390, '42245531', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'MORELIA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(391, '42238508', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'ZACATECAS', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(392, '421A3093', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'AGUASCALIENTES', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(393, '42159905', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(394, '42235380', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'ZACATECAS', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(395, '42263757', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'ZACATECAS', 'N/D', 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(396, '42120328', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(397, '42151241', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(398, '042168875-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(399, '42164126', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(400, '42188233', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(401, '42227174', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(402, '42234951', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(403, '42174375', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(404, '421A2102', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(405, '421A5004', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(406, '42288344', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(407, '42271794', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(408, '42260510', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(409, '42278304', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(410, '42269552', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(411, '42230078', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(412, '42242925', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(413, '42162836', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(414, '42287925', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(415, '422A1855', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(416, '42265435', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(417, '42271014', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'CD. OBREGON', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22'),
(418, '42269653', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-28', '2022-10-22');

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
(1, NULL, NULL, NULL, NULL, 269),
(2, NULL, NULL, NULL, NULL, 270),
(3, NULL, NULL, NULL, NULL, 271),
(4, NULL, NULL, NULL, NULL, 272),
(5, NULL, NULL, NULL, NULL, 274),
(6, NULL, NULL, NULL, NULL, 273),
(7, NULL, NULL, NULL, NULL, 276),
(8, NULL, NULL, NULL, NULL, 275),
(9, NULL, NULL, NULL, NULL, 277),
(10, NULL, NULL, NULL, NULL, 278),
(11, NULL, NULL, NULL, NULL, 280),
(12, NULL, NULL, NULL, NULL, 279),
(13, NULL, NULL, NULL, NULL, 282),
(14, NULL, NULL, NULL, NULL, 281),
(15, NULL, NULL, NULL, NULL, 283),
(16, NULL, NULL, NULL, NULL, 284),
(17, NULL, NULL, NULL, NULL, 285),
(18, NULL, NULL, NULL, NULL, 286),
(19, NULL, NULL, NULL, NULL, 287),
(20, NULL, NULL, NULL, NULL, 288),
(21, NULL, NULL, NULL, NULL, 289),
(22, NULL, NULL, NULL, NULL, 290),
(23, NULL, NULL, NULL, NULL, 291),
(24, NULL, NULL, NULL, NULL, 292),
(25, NULL, NULL, NULL, NULL, 293),
(26, NULL, NULL, NULL, NULL, 294),
(27, NULL, NULL, NULL, NULL, 295),
(28, NULL, NULL, NULL, NULL, 296),
(29, NULL, NULL, NULL, NULL, 297),
(30, NULL, NULL, NULL, NULL, 298),
(31, NULL, NULL, NULL, NULL, 299),
(32, NULL, NULL, NULL, NULL, 300),
(33, NULL, NULL, NULL, NULL, 301),
(34, NULL, NULL, NULL, NULL, 302),
(35, NULL, NULL, NULL, NULL, 303),
(36, NULL, NULL, NULL, NULL, 304),
(37, NULL, NULL, NULL, NULL, 305),
(38, NULL, NULL, NULL, NULL, 306),
(39, NULL, NULL, NULL, NULL, 307),
(40, NULL, NULL, NULL, NULL, 308),
(41, NULL, NULL, NULL, NULL, 309),
(42, NULL, NULL, NULL, NULL, 310),
(43, NULL, NULL, NULL, NULL, 311),
(44, NULL, NULL, NULL, NULL, 312),
(45, NULL, NULL, NULL, NULL, 313),
(46, NULL, NULL, NULL, NULL, 314),
(47, NULL, NULL, NULL, NULL, 316),
(48, NULL, NULL, NULL, NULL, 317),
(49, NULL, NULL, NULL, NULL, 315),
(50, NULL, NULL, NULL, NULL, 318),
(51, NULL, NULL, NULL, NULL, 319),
(52, NULL, NULL, NULL, NULL, 320),
(53, NULL, NULL, NULL, NULL, 321),
(54, NULL, NULL, NULL, NULL, 322),
(55, NULL, NULL, NULL, NULL, 323),
(56, NULL, NULL, NULL, NULL, 324),
(57, NULL, NULL, NULL, NULL, 325),
(58, NULL, NULL, NULL, NULL, 327),
(59, NULL, NULL, NULL, NULL, 326),
(60, NULL, NULL, NULL, NULL, 328),
(61, NULL, NULL, NULL, NULL, 329),
(62, NULL, NULL, NULL, NULL, 330),
(63, NULL, NULL, NULL, NULL, 331),
(64, NULL, NULL, NULL, NULL, 332),
(65, NULL, NULL, NULL, NULL, 333),
(66, NULL, NULL, NULL, NULL, 334),
(67, NULL, NULL, NULL, NULL, 335),
(68, NULL, NULL, NULL, NULL, 336),
(69, NULL, NULL, NULL, NULL, 337),
(70, NULL, NULL, NULL, NULL, 338),
(71, NULL, NULL, NULL, NULL, 339),
(72, NULL, NULL, NULL, NULL, 340),
(73, NULL, NULL, NULL, NULL, 341),
(74, NULL, NULL, NULL, NULL, 342),
(75, NULL, NULL, NULL, NULL, 343),
(76, NULL, NULL, NULL, NULL, 344),
(77, NULL, NULL, NULL, NULL, 345),
(78, NULL, NULL, NULL, NULL, 346),
(79, NULL, NULL, NULL, NULL, 347),
(80, NULL, NULL, NULL, NULL, 348),
(81, NULL, NULL, NULL, NULL, 350),
(82, NULL, NULL, NULL, NULL, 349),
(83, NULL, NULL, NULL, NULL, 351),
(84, NULL, NULL, NULL, NULL, 352),
(85, NULL, NULL, NULL, NULL, 353),
(86, NULL, NULL, NULL, NULL, 354),
(87, NULL, NULL, NULL, NULL, 355),
(88, NULL, NULL, NULL, NULL, 356),
(89, NULL, NULL, NULL, NULL, 357),
(90, NULL, NULL, NULL, NULL, 358),
(91, NULL, NULL, NULL, NULL, 359),
(92, NULL, NULL, NULL, NULL, 360),
(93, NULL, NULL, NULL, NULL, 361),
(94, NULL, NULL, NULL, NULL, 362),
(95, NULL, NULL, NULL, NULL, 363),
(96, NULL, NULL, NULL, NULL, 364),
(97, NULL, NULL, NULL, NULL, 365),
(98, NULL, NULL, NULL, NULL, 366),
(99, NULL, NULL, NULL, NULL, 367),
(100, NULL, NULL, NULL, NULL, 368),
(101, NULL, NULL, NULL, NULL, 369),
(102, NULL, NULL, NULL, NULL, 370),
(103, NULL, NULL, NULL, NULL, 371),
(104, NULL, NULL, NULL, NULL, 372),
(105, NULL, NULL, NULL, NULL, 373),
(106, NULL, NULL, NULL, NULL, 374),
(107, NULL, NULL, NULL, NULL, 375),
(108, NULL, NULL, NULL, NULL, 376),
(109, NULL, NULL, NULL, NULL, 377),
(110, NULL, NULL, NULL, NULL, 378),
(111, NULL, NULL, NULL, NULL, 379),
(112, NULL, NULL, NULL, NULL, 380),
(113, NULL, NULL, NULL, NULL, 382),
(114, NULL, NULL, NULL, NULL, 381),
(115, NULL, NULL, NULL, NULL, 383),
(116, NULL, NULL, NULL, NULL, 384),
(117, NULL, NULL, NULL, NULL, 385),
(118, NULL, NULL, NULL, NULL, 386),
(119, NULL, NULL, NULL, NULL, 387),
(120, NULL, NULL, NULL, NULL, 388),
(121, NULL, NULL, NULL, NULL, 389),
(122, NULL, NULL, NULL, NULL, 390),
(123, NULL, NULL, NULL, NULL, 391),
(124, NULL, NULL, NULL, NULL, 392),
(125, NULL, NULL, NULL, NULL, 393),
(126, NULL, NULL, NULL, NULL, 394),
(127, NULL, NULL, NULL, NULL, 395),
(128, NULL, NULL, NULL, NULL, 396),
(129, NULL, NULL, NULL, NULL, 397),
(130, NULL, NULL, NULL, NULL, 398),
(131, NULL, NULL, NULL, NULL, 399),
(132, NULL, NULL, NULL, NULL, 400),
(133, NULL, NULL, NULL, NULL, 401),
(134, NULL, NULL, NULL, NULL, 402),
(135, NULL, NULL, NULL, NULL, 403),
(136, NULL, NULL, NULL, NULL, 404),
(137, NULL, NULL, NULL, NULL, 405),
(138, NULL, NULL, NULL, NULL, 406),
(139, NULL, NULL, NULL, NULL, 408),
(140, NULL, NULL, NULL, NULL, 407),
(141, NULL, NULL, NULL, NULL, 409),
(142, NULL, NULL, NULL, NULL, 410),
(143, NULL, NULL, NULL, NULL, 411),
(144, NULL, NULL, NULL, NULL, 412),
(145, NULL, NULL, NULL, NULL, 413),
(146, NULL, NULL, NULL, NULL, 414),
(147, NULL, NULL, NULL, NULL, 415),
(148, NULL, NULL, NULL, NULL, 417),
(149, NULL, NULL, NULL, NULL, 416),
(150, NULL, NULL, NULL, NULL, 418);

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
(1, NULL, NULL, NULL, NULL, 269),
(2, NULL, NULL, NULL, NULL, 270),
(3, NULL, NULL, NULL, NULL, 271),
(4, NULL, NULL, NULL, NULL, 272),
(5, NULL, NULL, NULL, NULL, 274),
(6, NULL, NULL, NULL, NULL, 273),
(7, NULL, NULL, NULL, NULL, 275),
(8, NULL, NULL, NULL, NULL, 276),
(9, NULL, NULL, NULL, NULL, 277),
(10, NULL, NULL, NULL, NULL, 278),
(11, NULL, NULL, NULL, NULL, 280),
(12, NULL, NULL, NULL, NULL, 279),
(13, NULL, NULL, NULL, NULL, 282),
(14, NULL, NULL, NULL, NULL, 281),
(15, NULL, NULL, NULL, NULL, 283),
(16, NULL, NULL, NULL, NULL, 284),
(17, NULL, NULL, NULL, NULL, 285),
(18, NULL, NULL, NULL, NULL, 286),
(19, NULL, NULL, NULL, NULL, 287),
(20, NULL, NULL, NULL, NULL, 288),
(21, NULL, NULL, NULL, NULL, 289),
(22, NULL, NULL, NULL, NULL, 290),
(23, NULL, NULL, NULL, NULL, 291),
(24, NULL, NULL, NULL, NULL, 292),
(25, NULL, NULL, NULL, NULL, 293),
(26, NULL, NULL, NULL, NULL, 294),
(27, NULL, NULL, NULL, NULL, 295),
(28, NULL, NULL, NULL, NULL, 296),
(29, NULL, NULL, NULL, NULL, 297),
(30, NULL, NULL, NULL, NULL, 298),
(31, NULL, NULL, NULL, NULL, 299),
(32, NULL, NULL, NULL, NULL, 300),
(33, NULL, NULL, NULL, NULL, 301),
(34, NULL, NULL, NULL, NULL, 302),
(35, NULL, NULL, NULL, NULL, 303),
(36, NULL, NULL, NULL, NULL, 304),
(37, NULL, NULL, NULL, NULL, 305),
(38, NULL, NULL, NULL, NULL, 307),
(39, NULL, NULL, NULL, NULL, 306),
(40, NULL, NULL, NULL, NULL, 308),
(41, NULL, NULL, NULL, NULL, 309),
(42, NULL, NULL, NULL, NULL, 310),
(43, NULL, NULL, NULL, NULL, 311),
(44, NULL, NULL, NULL, NULL, 312),
(45, NULL, NULL, NULL, NULL, 313),
(46, NULL, NULL, NULL, NULL, 314),
(47, NULL, NULL, NULL, NULL, 317),
(48, NULL, NULL, NULL, NULL, 316),
(49, NULL, NULL, NULL, NULL, 315),
(50, NULL, NULL, NULL, NULL, 318),
(51, NULL, NULL, NULL, NULL, 319),
(52, NULL, NULL, NULL, NULL, 320),
(53, NULL, NULL, NULL, NULL, 321),
(54, NULL, NULL, NULL, NULL, 322),
(55, NULL, NULL, NULL, NULL, 323),
(56, NULL, NULL, NULL, NULL, 324),
(57, NULL, NULL, NULL, NULL, 327),
(58, NULL, NULL, NULL, NULL, 325),
(59, NULL, NULL, NULL, NULL, 326),
(60, NULL, NULL, NULL, NULL, 328),
(61, NULL, NULL, NULL, NULL, 329),
(62, NULL, NULL, NULL, NULL, 330),
(63, NULL, NULL, NULL, NULL, 331),
(64, NULL, NULL, NULL, NULL, 332),
(65, NULL, NULL, NULL, NULL, 333),
(66, NULL, NULL, NULL, NULL, 334),
(67, NULL, NULL, NULL, NULL, 335),
(68, NULL, NULL, NULL, NULL, 336),
(69, NULL, NULL, NULL, NULL, 337),
(70, NULL, NULL, NULL, NULL, 338),
(71, NULL, NULL, NULL, NULL, 339),
(72, NULL, NULL, NULL, NULL, 340),
(73, NULL, NULL, NULL, NULL, 341),
(74, NULL, NULL, NULL, NULL, 342),
(75, NULL, NULL, NULL, NULL, 343),
(76, NULL, NULL, NULL, NULL, 344),
(77, NULL, NULL, NULL, NULL, 345),
(78, NULL, NULL, NULL, NULL, 346),
(79, NULL, NULL, NULL, NULL, 347),
(80, NULL, NULL, NULL, NULL, 348),
(81, NULL, NULL, NULL, NULL, 350),
(82, NULL, NULL, NULL, NULL, 349),
(83, NULL, NULL, NULL, NULL, 351),
(84, NULL, NULL, NULL, NULL, 352),
(85, NULL, NULL, NULL, NULL, 353),
(86, NULL, NULL, NULL, NULL, 355),
(87, NULL, NULL, NULL, NULL, 354),
(88, NULL, NULL, NULL, NULL, 356),
(89, NULL, NULL, NULL, NULL, 357),
(90, NULL, NULL, NULL, NULL, 358),
(91, NULL, NULL, NULL, NULL, 359),
(92, NULL, NULL, NULL, NULL, 360),
(93, NULL, NULL, NULL, NULL, 361),
(94, NULL, NULL, NULL, NULL, 362),
(95, NULL, NULL, NULL, NULL, 363),
(96, NULL, NULL, NULL, NULL, 364),
(97, NULL, NULL, NULL, NULL, 365),
(98, NULL, NULL, NULL, NULL, 366),
(99, NULL, NULL, NULL, NULL, 367),
(100, NULL, NULL, NULL, NULL, 368),
(101, NULL, NULL, NULL, NULL, 369),
(102, NULL, NULL, NULL, NULL, 370),
(103, NULL, NULL, NULL, NULL, 371),
(104, NULL, NULL, NULL, NULL, 372),
(105, NULL, NULL, NULL, NULL, 373),
(106, NULL, NULL, NULL, NULL, 374),
(107, NULL, NULL, NULL, NULL, 375),
(108, NULL, NULL, NULL, NULL, 376),
(109, NULL, NULL, NULL, NULL, 377),
(110, NULL, NULL, NULL, NULL, 378),
(111, NULL, NULL, NULL, NULL, 379),
(112, NULL, NULL, NULL, NULL, 380),
(113, NULL, NULL, NULL, NULL, 381),
(114, NULL, NULL, NULL, NULL, 382),
(115, NULL, NULL, NULL, NULL, 383),
(116, NULL, NULL, NULL, NULL, 384),
(117, NULL, NULL, NULL, NULL, 385),
(118, NULL, NULL, NULL, NULL, 386),
(119, NULL, NULL, NULL, NULL, 387),
(120, NULL, NULL, NULL, NULL, 388),
(121, NULL, NULL, NULL, NULL, 389),
(122, NULL, NULL, NULL, NULL, 390),
(123, NULL, NULL, NULL, NULL, 391),
(124, NULL, NULL, NULL, NULL, 392),
(125, NULL, NULL, NULL, NULL, 393),
(126, NULL, NULL, NULL, NULL, 394),
(127, NULL, NULL, NULL, NULL, 395),
(128, NULL, NULL, NULL, NULL, 396),
(129, NULL, NULL, NULL, NULL, 397),
(130, NULL, NULL, NULL, NULL, 398),
(131, NULL, NULL, NULL, NULL, 399),
(132, NULL, NULL, NULL, NULL, 400),
(133, NULL, NULL, NULL, NULL, 401),
(134, NULL, NULL, NULL, NULL, 402),
(135, NULL, NULL, NULL, NULL, 403),
(136, NULL, NULL, NULL, NULL, 404),
(137, NULL, NULL, NULL, NULL, 405),
(138, NULL, NULL, NULL, NULL, 406),
(139, NULL, NULL, NULL, NULL, 408),
(140, NULL, NULL, NULL, NULL, 407),
(141, NULL, NULL, NULL, NULL, 409),
(142, NULL, NULL, NULL, NULL, 410),
(143, NULL, NULL, NULL, NULL, 411),
(144, NULL, NULL, NULL, NULL, 412),
(145, NULL, NULL, NULL, NULL, 413),
(146, NULL, NULL, NULL, NULL, 414),
(147, NULL, NULL, NULL, NULL, 415),
(148, NULL, NULL, NULL, NULL, 417),
(149, NULL, NULL, NULL, NULL, 416),
(150, NULL, NULL, NULL, NULL, 418);

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
  MODIFY `iddocumentosaprobados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `encuestaplataforma`
--
ALTER TABLE `encuestaplataforma`
  MODIFY `idencuestaPlataforma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estadoproceso`
--
ALTER TABLE `estadoproceso`
  MODIFY `idProceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `fechasseguimiento`
--
ALTER TABLE `fechasseguimiento`
  MODIFY `idFechasseguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `idimagenes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `infoauto`
--
ALTER TABLE `infoauto`
  MODIFY `idAuto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `infocarga`
--
ALTER TABLE `infocarga`
  MODIFY `idinfocarga` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `infocliente`
--
ALTER TABLE `infocliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `infosiniestro`
--
ALTER TABLE `infosiniestro`
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT de la tabla `insertarregistros`
--
ALTER TABLE `insertarregistros`
  MODIFY `idInsertarRegistros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `mensajesseguimientos`
--
ALTER TABLE `mensajesseguimientos`
  MODIFY `idmensajesSeguimientos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  MODIFY `idSeguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

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
