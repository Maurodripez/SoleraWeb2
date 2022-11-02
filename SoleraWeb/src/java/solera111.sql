-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2022 a las 21:01:19
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
(1, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 835, 'false', 'false'),
(2, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 839, 'false', 'false'),
(3, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 836, 'false', 'false'),
(4, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 838, 'false', 'false'),
(5, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 837, 'false', 'false'),
(6, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 841, 'false', 'false'),
(7, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 840, 'false', 'false'),
(8, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 842, 'false', 'false'),
(9, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 843, 'false', 'false'),
(10, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 844, 'false', 'false'),
(11, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 845, 'false', 'false'),
(12, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 846, 'false', 'false'),
(13, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 847, 'false', 'false'),
(14, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 849, 'false', 'false'),
(15, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 848, 'false', 'false'),
(16, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 850, 'false', 'false'),
(17, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 851, 'false', 'false'),
(18, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 852, 'false', 'false'),
(19, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 853, 'false', 'false'),
(20, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 854, 'false', 'false'),
(21, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 855, 'false', 'false'),
(22, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 857, 'false', 'false'),
(23, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 856, 'false', 'false'),
(24, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 858, 'false', 'false'),
(25, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 859, 'false', 'false'),
(26, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 860, 'false', 'false'),
(27, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 862, 'false', 'false'),
(28, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 861, 'false', 'false'),
(29, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 863, 'false', 'false'),
(30, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 864, 'false', 'false'),
(31, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 865, 'false', 'false'),
(32, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 867, 'false', 'false'),
(33, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 866, 'false', 'false'),
(34, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 868, 'false', 'false'),
(35, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 869, 'false', 'false'),
(36, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 870, 'false', 'false'),
(37, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 872, 'false', 'false'),
(38, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 873, 'false', 'false'),
(39, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 871, 'false', 'false'),
(40, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 874, 'false', 'false'),
(41, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 875, 'false', 'false'),
(42, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 878, 'false', 'false'),
(43, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 877, 'false', 'false'),
(44, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 876, 'false', 'false'),
(45, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 879, 'false', 'false'),
(46, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 880, 'false', 'false'),
(47, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 881, 'false', 'false'),
(48, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 882, 'false', 'false'),
(49, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 883, 'false', 'false'),
(50, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 884, 'false', 'false'),
(51, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 885, 'false', 'false'),
(52, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 886, 'false', 'false'),
(53, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 887, 'false', 'false'),
(54, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 888, 'false', 'false'),
(55, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 889, 'false', 'false'),
(56, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 890, 'false', 'false'),
(57, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 891, 'false', 'false'),
(58, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 892, 'false', 'false'),
(59, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 893, 'false', 'false'),
(60, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 894, 'false', 'false'),
(61, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 895, 'false', 'false'),
(62, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 896, 'false', 'false'),
(63, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 897, 'false', 'false'),
(64, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 898, 'false', 'false'),
(65, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 899, 'false', 'false'),
(66, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 900, 'false', 'false'),
(67, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 901, 'false', 'false'),
(68, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 903, 'false', 'false'),
(69, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 902, 'false', 'false'),
(70, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 904, 'false', 'false'),
(71, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 905, 'false', 'false'),
(72, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 906, 'false', 'false'),
(73, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 907, 'false', 'false'),
(74, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 908, 'false', 'false'),
(75, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 909, 'false', 'false'),
(76, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 911, 'false', 'false'),
(77, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 910, 'false', 'false'),
(78, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 913, 'false', 'false'),
(79, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 912, 'false', 'false'),
(80, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 914, 'false', 'false'),
(81, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 915, 'false', 'false'),
(82, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 916, 'false', 'false'),
(83, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 917, 'false', 'false'),
(84, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 918, 'false', 'false'),
(85, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 919, 'false', 'false'),
(86, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 920, 'false', 'false'),
(87, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 921, 'false', 'false'),
(88, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 922, 'false', 'false'),
(89, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 923, 'false', 'false'),
(90, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 924, 'false', 'false'),
(91, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 925, 'false', 'false'),
(92, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 926, 'false', 'false'),
(93, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 927, 'false', 'false'),
(94, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 928, 'false', 'false'),
(95, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 929, 'false', 'false'),
(96, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 931, 'false', 'false'),
(97, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 930, 'false', 'false'),
(98, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 932, 'false', 'false'),
(99, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 933, 'false', 'false'),
(100, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 934, 'false', 'false'),
(101, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 935, 'false', 'false'),
(102, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 936, 'false', 'false'),
(103, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 938, 'false', 'false'),
(104, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 939, 'false', 'false'),
(105, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 937, 'false', 'false'),
(106, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 940, 'false', 'false'),
(107, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 941, 'false', 'false'),
(108, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 942, 'false', 'false'),
(109, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 944, 'false', 'false'),
(110, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 943, 'false', 'false'),
(111, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 945, 'false', 'false'),
(112, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 946, 'false', 'false'),
(113, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 947, 'false', 'false'),
(114, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 948, 'false', 'false'),
(115, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 949, 'false', 'false'),
(116, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 950, 'false', 'false'),
(117, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 951, 'false', 'false'),
(118, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 952, 'false', 'false'),
(119, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 954, 'false', 'false'),
(120, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 953, 'false', 'false'),
(121, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 955, 'false', 'false'),
(122, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 956, 'false', 'false'),
(123, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 957, 'false', 'false'),
(124, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 958, 'false', 'false'),
(125, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 959, 'false', 'false'),
(126, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 960, 'false', 'false'),
(127, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 961, 'false', 'false'),
(128, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 962, 'false', 'false'),
(129, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 963, 'false', 'false'),
(130, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 964, 'false', 'false'),
(131, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 965, 'false', 'false'),
(132, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 966, 'false', 'false'),
(133, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 967, 'false', 'false'),
(134, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 969, 'false', 'false'),
(135, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 968, 'false', 'false'),
(136, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 970, 'false', 'false'),
(137, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 971, 'false', 'false'),
(138, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 972, 'false', 'false'),
(139, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 974, 'false', 'false'),
(140, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 973, 'false', 'false'),
(141, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 975, 'false', 'false'),
(142, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 977, 'false', 'false'),
(143, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 976, 'false', 'false'),
(144, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 979, 'false', 'false'),
(145, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 978, 'false', 'false'),
(146, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 980, 'false', 'false'),
(147, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 982, 'false', 'false'),
(148, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 981, 'false', 'false'),
(149, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 983, 'false', 'false'),
(150, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 984, 'false', 'false'),
(151, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 985, 'false', 'false'),
(152, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 988, 'false', 'false'),
(153, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 987, 'false', 'false'),
(154, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 986, 'false', 'false'),
(155, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 989, 'false', 'false'),
(156, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 990, 'false', 'false'),
(157, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 992, 'false', 'false'),
(158, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 993, 'false', 'false'),
(159, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 993, 'false', 'false');

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
(1, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 839),
(2, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 835),
(3, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 836),
(4, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 838),
(5, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 837),
(6, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 840),
(7, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 841),
(8, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 842),
(9, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 843),
(10, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 844),
(11, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 845),
(12, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 846),
(13, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 847),
(14, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 848),
(15, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 849),
(16, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 850),
(17, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 851),
(18, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 852),
(19, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 853),
(20, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 854),
(21, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 855),
(22, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 858),
(23, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 857),
(24, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 856),
(25, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 859),
(26, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 860),
(27, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 862),
(28, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 861),
(29, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 863),
(30, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 864),
(31, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 865),
(32, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 866),
(33, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 867),
(34, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 868),
(35, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 869),
(36, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 870),
(37, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 872),
(38, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 871),
(39, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 873),
(40, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 874),
(41, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 875),
(42, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 878),
(43, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 877),
(44, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 876),
(45, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 879),
(46, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 880),
(47, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 881),
(48, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 882),
(49, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 883),
(50, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 884),
(51, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 885),
(52, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 886),
(53, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 887),
(54, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 888),
(55, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 889),
(56, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 890),
(57, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 891),
(58, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 892),
(59, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 893),
(60, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 894),
(61, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 895),
(62, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 896),
(63, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 897),
(64, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 898),
(65, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 899),
(66, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 900),
(67, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 901),
(68, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 902),
(69, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 903),
(70, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 904),
(71, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 905),
(72, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 906),
(73, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 908),
(74, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 907),
(75, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 909),
(76, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 910),
(77, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 911),
(78, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 913),
(79, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 912),
(80, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 914),
(81, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 916),
(82, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 915),
(83, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 917),
(84, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 918),
(85, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 919),
(86, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 920),
(87, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 921),
(88, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 922),
(89, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 923),
(90, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 924),
(91, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 925),
(92, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 926),
(93, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 927),
(94, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 928),
(95, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 929),
(96, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 930),
(97, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 931),
(98, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 932),
(99, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 933),
(100, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 934),
(101, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 935),
(102, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 936),
(103, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 938),
(104, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 939),
(105, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 937),
(106, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 940),
(107, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 941),
(108, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 943),
(109, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 942),
(110, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 944),
(111, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 945),
(112, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 946),
(113, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 947),
(114, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 948),
(115, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 949),
(116, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 950),
(117, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 951),
(118, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 952),
(119, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 953),
(120, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 954),
(121, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 955),
(122, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 956),
(123, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 957),
(124, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 958),
(125, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 959),
(126, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 960),
(127, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 961),
(128, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 962),
(129, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 963),
(130, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 964),
(131, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 965),
(132, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 966),
(133, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 967),
(134, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 968),
(135, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 969),
(136, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 970),
(137, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 971),
(138, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 972),
(139, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 973),
(140, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 974),
(141, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 975),
(142, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 977),
(143, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 976),
(144, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 978),
(145, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 979),
(146, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 980),
(147, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 982),
(148, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 981),
(149, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 983),
(150, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 985),
(151, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 984),
(152, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 986),
(153, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 988),
(154, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 987),
(155, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 989),
(156, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 990),
(157, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 992),
(158, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 993),
(159, 'Nuevo', 'Nuevo', 'Nuevo, activacion por proceso normal', NULL, 993);

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
(1, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839),
(2, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 836),
(3, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 838),
(4, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 837),
(5, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 835),
(6, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 841),
(7, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 840),
(8, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 842),
(9, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 843),
(10, '2022-10-31', NULL, '2022-11-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 844),
(11, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 845),
(12, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 846),
(13, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 847),
(14, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 849),
(15, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 848),
(16, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 850),
(17, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 851),
(18, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 852),
(19, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 853),
(20, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 854),
(21, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 855),
(22, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 856),
(23, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 858),
(24, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 857),
(25, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 859),
(26, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 860),
(27, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 862),
(28, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 863),
(29, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 861),
(30, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 864),
(31, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 865),
(32, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 867),
(33, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 866),
(34, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 868),
(35, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 869),
(36, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 870),
(37, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 872),
(38, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 873),
(39, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 871),
(40, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 874),
(41, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 875),
(42, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 878),
(43, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 877),
(44, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 876),
(45, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 879),
(46, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 880),
(47, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 881),
(48, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 882),
(49, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 883),
(50, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 884),
(51, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 885),
(52, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 886),
(53, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 887),
(54, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 888),
(55, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 889),
(56, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 890),
(57, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 891),
(58, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 892),
(59, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 893),
(60, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 894),
(61, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 895),
(62, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 896),
(63, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 897),
(64, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 898),
(65, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 899),
(66, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 900),
(67, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 901),
(68, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 903),
(69, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 902),
(70, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 904),
(71, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 905),
(72, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 906),
(73, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 907),
(74, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 908),
(75, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 909),
(76, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 910),
(77, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 911),
(78, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 913),
(79, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 912),
(80, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 914),
(81, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 916),
(82, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 915),
(83, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 917),
(84, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 918),
(85, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 919),
(86, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 920),
(87, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 921),
(88, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 922),
(89, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 923),
(90, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 924),
(91, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 925),
(92, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 926),
(93, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 927),
(94, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 928),
(95, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 929),
(96, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 931),
(97, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 930),
(98, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 932),
(99, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 933),
(100, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 934),
(101, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 935),
(102, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 936),
(103, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 938),
(104, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 939),
(105, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 940),
(106, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 937),
(107, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 941),
(108, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 944),
(109, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 945),
(110, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 943),
(111, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 942),
(112, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 946),
(113, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 947),
(114, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 948),
(115, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 949),
(116, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 950),
(117, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 951),
(118, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 952),
(119, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 954),
(120, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 953),
(121, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 955),
(122, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 956),
(123, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 957),
(124, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 959),
(125, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 958),
(126, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 960),
(127, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 961),
(128, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 962),
(129, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 963),
(130, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 964),
(131, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 965),
(132, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 966),
(133, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 967),
(134, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 968),
(135, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 969),
(136, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 970),
(137, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 971),
(138, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 972),
(139, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 974),
(140, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 973),
(141, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 975),
(142, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 977),
(143, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 976),
(144, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 979),
(145, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 978),
(146, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 980),
(147, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 981),
(148, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 982),
(149, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 983),
(150, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 985),
(151, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 984),
(152, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 986),
(153, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 987),
(154, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 988),
(155, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 989),
(156, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 990),
(157, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 992),
(158, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 993),
(159, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 993);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `idimagenes` int(11) NOT NULL,
  `nombreImagen` varchar(200) DEFAULT NULL,
  `rutaImagen` varchar(300) DEFAULT NULL,
  `fkImagen` int(11) NOT NULL,
  `fechaCarga` date DEFAULT NULL,
  `nombreOriginal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`idimagenes`, `nombreImagen`, `rutaImagen`, `fkImagen`, `fechaCarga`, `nombreOriginal`) VALUES
(9, 'Identificacion oficial', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\844\\Identificacion oficialine.pdf', 844, '2022-11-01', 'Identificacion oficialine.pdf');

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
(1, 'CHEVROLET', '2001', 'CHEVY', '3G1SF24211S179022', NULL, 835, NULL, NULL),
(2, 'CHEVROLET', '2018', 'AVEO', 'LSGHD52H3JD100308', NULL, 837, NULL, NULL),
(3, 'YAMAHA', '2018', 'T110', 'LL8UE0811JB535377', NULL, 839, NULL, NULL),
(4, 'RENAULT', '2003', 'MEGANE', 'VF1H019CX3E513297', NULL, 836, NULL, NULL),
(5, 'YAMAHA', '2016', 'YB125', 'LBPKE0970G0496720', NULL, 838, NULL, NULL),
(6, 'LIFAN', '2017', 'FL200', 'LF3UCM409HA000144', NULL, 840, NULL, NULL),
(7, 'ITALIKA', '2013', 'MOTOCICLETA', 'CSRXCJCC6D1312014', NULL, 841, NULL, NULL),
(8, 'FORD', '2009', 'F450', '3FEMF56S29MA17115', NULL, 842, NULL, NULL),
(9, 'HONDA', '2014', 'CITY', 'MRHGM666XEP067283', NULL, 844, NULL, NULL),
(10, 'AUDI', '2018', 'A2', 'WAUAYAGA2JA012208', NULL, 843, NULL, NULL),
(11, 'FORD', '2017', 'FIGO', 'MAJFP1MD4HA147300', NULL, 845, NULL, NULL),
(12, 'CHEVROLET', '2014', 'SPARK', 'KL8CD6AD3EC437611', NULL, 846, NULL, NULL),
(13, 'FORD', '2019', 'F150', '1FTEW1CB4KKD10523', NULL, 847, NULL, NULL),
(14, 'VOLKSWAGEN', '2004', 'POINTER', '9BWCC05X94T053994', NULL, 849, NULL, NULL),
(15, 'FORD', '2018', 'F150', '1FTEW1C50JKD27764', NULL, 848, NULL, NULL),
(16, 'TOYOTA', '1997', 'COROLLA', '1NXBA02E1VZ661403', NULL, 850, NULL, NULL),
(17, 'CHEVROLET', '2013', 'AVEO', '3G1TA5AF8DL101329', NULL, 851, NULL, NULL),
(18, 'NISSAN', '2016', 'ROGUE', '5N1AT2MT2GC878111', NULL, 852, NULL, NULL),
(19, 'CHEVROLET', '2002', 'SUBURBAN', '3GNEC16Z32G321433', NULL, 853, NULL, NULL),
(20, 'NISSAN', '2016', 'NP 300', '3N6AD35C7GK826616', NULL, 854, NULL, NULL),
(21, 'LEXUS', '2001', 'RX300', 'JTJGF10U310114174', NULL, 855, NULL, NULL),
(22, 'FORD', '2019', 'EXPEDITION', '1FMJU1KT2KEA25828', NULL, 858, NULL, NULL),
(23, 'CHEVROLET', '2014', 'AVEO', '3G1TA5AF1EL139017', NULL, 856, NULL, NULL),
(24, 'FORD', '2004', 'FOCUS', '1FABP33304W101754', NULL, 857, NULL, NULL),
(25, 'GMC', '2017', 'SIERRA', '3GTU2NEC9HG409780', NULL, 859, NULL, NULL),
(26, 'NISSAN', '2022', 'VERSA', '3N1CN7AE8NK394657', NULL, 860, NULL, NULL),
(27, 'HONDA', '2018', 'CARGO', '3H1KA4175HD414100', NULL, 862, NULL, NULL),
(28, 'HONDA', '2004', 'ACCORD', '3HGCM56384G001996', NULL, 861, NULL, NULL),
(29, 'BMW', '2013', 'X3', 'WBAWX9102D0A00726', NULL, 863, NULL, NULL),
(30, 'JEEP', '2012', 'COMPAS', '1C4AJCAB9CD505440', NULL, 864, NULL, NULL),
(31, 'NISSAN', '2007', 'TIIDA', '3N1BC11S77K191976', NULL, 865, NULL, NULL),
(32, 'CHEVROLET', '2011', 'TORNADO', '93CXM8020BC107527', NULL, 867, NULL, NULL),
(33, 'FORD', '2017', 'RANGER', '8AFWR5AAXH6006605', NULL, 866, NULL, NULL),
(34, 'VOLKSWAGEN', '2013', 'JETTA', '3VW2W2AJ1DM262300', NULL, 868, NULL, NULL),
(35, 'MERCEDES BENZ', '2017', 'SPLINTER', 'WD3YF1A99HP350504', NULL, 869, NULL, NULL),
(36, 'CHEVROLET', '2000', 'TRACKER', '2CNBE13C3Y6933055', NULL, 870, NULL, NULL),
(37, 'CHEVROLET', '2006', 'SILVERADO', '1GCEK19T96Z235844', NULL, 873, NULL, NULL),
(38, 'KIA', '2019', 'SORENTO', '5XYPH4A3XKG496011', NULL, 872, NULL, NULL),
(39, 'CHEVROLET', '2005', 'CHEVY', '3G1SE51X05S211775', NULL, 871, NULL, NULL),
(40, 'RAM', '2021', 'PROMASTER', '9BD265553M9181099', NULL, 874, NULL, NULL),
(41, 'CHEVROLET', '2022', 'AVEO', 'LSGHD52H8ND009167', NULL, 875, NULL, NULL),
(42, 'HONDA', '2019', '150', '3H1KC3886KD000169', NULL, 876, NULL, NULL),
(43, 'NISSAN', '2018', 'FRONTIER', '3N6AD33A8JK871704', NULL, 877, NULL, NULL),
(44, 'AUDI', '2014', 'A4', 'WAUACC8K5EN040939', NULL, 878, NULL, NULL),
(45, 'CHEVROLET', '2019', 'AVEO', 'LSGHD52H6KD110946', NULL, 879, NULL, NULL),
(46, 'SEAT', '2020', 'CUPRA ATECA', 'VSSAD75FXL6504764', NULL, 880, NULL, NULL),
(47, 'NISSAN', '2012', 'MARCH', '3N1CK3CSXCL245162', NULL, 881, NULL, NULL),
(48, 'TOYOTA', '2020', 'HILUX', 'MR0EX3DDXL0006975', NULL, 882, NULL, NULL),
(49, 'DODGE', '2018', 'RAM 2500', '3C6SRADG0JG123894', NULL, 883, NULL, NULL),
(50, 'MERCEDES BENZ', '2019', 'GLC300', 'WDC0J4KBXKF510109', NULL, 884, NULL, NULL),
(51, 'CHEVROLET', '2015', 'SPARK', 'KL8CJ6AD5FC735135', NULL, 885, NULL, NULL),
(52, 'VOLKSWAGEN', '2015', 'VENTO', 'MEX512606FT088363', NULL, 886, NULL, NULL),
(53, 'INFINITI', '2018', 'QX60', '5N1AL0MM8JC535355', NULL, 887, NULL, NULL),
(54, 'CHEVROLET', '2016', 'TORNADO', '93CCL8001GB171413', NULL, 888, NULL, NULL),
(55, 'VOLKSWAGEN', '2000', 'POINTER', '9BWA37726YP072535', NULL, 889, NULL, NULL),
(56, 'DODGE', '2017', 'ATTITUDE', 'ML3AB26J8HH010611', NULL, 890, NULL, NULL),
(57, 'NISSAN', '2014', 'JUKE', 'JN1AF55C9ET100366', NULL, 891, NULL, NULL),
(58, 'HINO', '2022', 'SERIE 300', 'JHHTES0F8NK002800', NULL, 892, NULL, NULL),
(59, 'NISSAN', '2017', 'TSURU', '3N1EB31S5HK352032', NULL, 893, NULL, NULL),
(60, 'ITALIKA', '2014', '250Z', 'LLCLPMB04EA103381', NULL, 894, NULL, NULL),
(61, 'ITALIKA', '2018', 'DT150 DELIVERY', '3SCPDTEE2J1019823', NULL, 895, NULL, NULL),
(62, 'ITALIKA', '2021', 'DT250', '3SCK2FEX8M1004024', NULL, 896, NULL, NULL),
(63, 'YAMAHA', '2020', 'YBR 125', 'LBPKE1313L0141223', NULL, 897, NULL, NULL),
(64, 'YAMAHA', '2021', 'YBR 125G', 'LBPKE131XM0146775', NULL, 898, NULL, NULL),
(65, 'YAMAHA', '2021', 'YBR 125', 'LBPKE124XM0115747', NULL, 899, NULL, NULL),
(66, 'HONDA', '1999', 'CBR 600', 'JH2PC3516XM000037', NULL, 900, NULL, NULL),
(67, 'HONDA', '2017', 'XRE300', '9C2ND1216HR600240', NULL, 901, NULL, NULL),
(68, 'HONDA', '2018', 'CARGO 150', '3H1KA4172JD517626', NULL, 903, NULL, NULL),
(69, 'HONDA', '2017', 'XRE300', '9C2ND1212HR600252', NULL, 902, NULL, NULL),
(70, 'ITALIKA', '2015', 'FT150', '3SCPFTEE9F1015494', NULL, 904, NULL, NULL),
(71, 'YAMAHA', '2017', 'YBR125', 'LBPKE1243H0098344', NULL, 905, NULL, NULL),
(72, 'YAMAHA', '2021', 'YBR125', 'LBPKE124XM0115716', NULL, 906, NULL, NULL),
(73, 'ITALIKA', '2018', 'AT110', '3SCPATCS1J1012217', NULL, 907, NULL, NULL),
(74, 'BAJAJ', '2017', 'NS200', 'MD2A36FZ4HCE00736', NULL, 908, NULL, NULL),
(75, 'ITALIKA', '2018', 'DT150', '3SCPDTEE4J1021427', NULL, 909, NULL, NULL),
(76, 'ITALIKA', '2022', 'DT150', '3SCK2AEH1N1014021', NULL, 910, NULL, NULL),
(77, 'ITALIKA', '2019', 'DT150', '3SCPDTEE6K1011144', NULL, 911, NULL, NULL),
(78, 'HONDA', '2014', 'ACCORD', '1HGCR2637EA902499', NULL, 913, NULL, NULL),
(79, 'ITALIKA', '2017', 'FT150', '3SCPFTEE0H1092063', NULL, 912, NULL, NULL),
(80, 'NISSAN', '2017', 'TSURU', '3N1EB31S0HK354173', NULL, 914, NULL, NULL),
(81, 'FORD', '2009', 'ECONOLINE', '1FTNE14W19DA20856', NULL, 915, NULL, NULL),
(82, 'NISSAN', '2005', 'SENTRA', '3N1CB51D15L498065', NULL, 916, NULL, NULL),
(83, 'NISSAN', '2017', 'MARCH', '3N1CK3CD3HL220788', NULL, 917, NULL, NULL),
(84, 'NISSAN', '2017', 'TSURU', '3N1EB31S4HK343600', NULL, 918, NULL, NULL),
(85, 'NISSAN', '2004', 'NP300', '3N6CD15S64K118552', NULL, 919, NULL, NULL),
(86, 'CHEVROLET', '2018', 'AVEO', 'LSGHD52H4JD022198', NULL, 920, NULL, NULL),
(87, 'HYUNDAI', '2021', 'GRAND I10', 'MALB24BC5MM027739', NULL, 921, NULL, NULL),
(88, 'NISSAN', '2013', 'TIIDA', '3N1BC1ADXDK225812', NULL, 922, NULL, NULL),
(89, 'MAZDA', '2012', 'MAZDA 3', 'JM1BL1VF9C1547009', NULL, 923, NULL, NULL),
(90, 'MITSUBISHI', '2006', 'ENDEAVOR', '4A4MM41SX6E023089', NULL, 924, NULL, NULL),
(91, 'FORD', '2004', 'F350', '3FDKF36L64MA17281', NULL, 926, NULL, NULL),
(92, 'FORD', '2008', 'EXPLORER', '1FMEU63E58UA89200', NULL, 925, NULL, NULL),
(93, 'CHEVROLET', '2016', 'CAMARO', '1G1F91R74G0179670', NULL, 927, NULL, NULL),
(94, 'SUZUKI', '2018', 'CIAZ', 'MMSVC41S8JR103436', NULL, 928, NULL, NULL),
(95, 'CHEVROLET', '2016', 'SIERRA', '1GTN29EC1GZ110262', NULL, 929, NULL, NULL),
(96, 'NISSAN', '2020', 'CHASIS CAB', '3N6AD35A7LK872259', NULL, 931, NULL, NULL),
(97, 'NISSAN', '2016', 'MARCH', '3N1CK3CD3GL235788', NULL, 930, NULL, NULL),
(98, 'CHRYSLER', '2021', 'ATTITUDE', 'ML3ABT6J2MH000639', NULL, 932, NULL, NULL),
(99, 'CHEVROLET', '2022', 'TORNADO', 'LZWNNNGM3NC804356', NULL, 933, NULL, NULL),
(100, 'CHRYSLER', '2018', 'RAM1500', '3C6SRADG0JG123913', NULL, 934, NULL, NULL),
(101, 'HONDA', '2017', 'CIVIC', '2HGFC3288HH851199', NULL, 935, NULL, NULL),
(102, 'JAC', '2018', 'J4', '3GA4A132XJM002010', NULL, 936, NULL, NULL),
(103, 'TOYOTA', '2007', 'CAMRY', '4T1BK46K57U515982', NULL, 938, NULL, NULL),
(104, 'MINI', '2016', 'MINI COOPER', 'WMWXS5109G2B11259', NULL, 939, NULL, NULL),
(105, 'TOYOTA', '2007', 'TACOMA', '5TETU62N67Z366133', NULL, 940, NULL, NULL),
(106, 'CHEVROLET', '2016', 'SONIC', '3G1J85CCXGS557641', NULL, 937, NULL, NULL),
(107, 'NISSAN', '2017', 'VERSA', '3N1CN7AD9HL815887', NULL, 941, NULL, NULL),
(108, 'SUZUKI', '2015', 'VITARA', 'JS3TE04V9F4201855', NULL, 945, NULL, NULL),
(109, 'VOLKSWAGEN', '2020', 'VENTO', 'MEX512602LT066288', NULL, 942, NULL, NULL),
(110, 'VOLKSWAGEN', '2019', 'JETTA', '3VWKP6BU9KM159085', NULL, 943, NULL, NULL),
(111, 'NISSAN', '2014', 'PATHFINDER', '5N1AR2MN5EC619254', NULL, 944, NULL, NULL),
(112, 'FORD', '2012', 'ECONOLINE', '1FTNE1EW1CDA02797', NULL, 946, NULL, NULL),
(113, 'HONDA', '2018', 'XR150', '3H1KD4170JD308831', NULL, 947, NULL, NULL),
(114, 'HONDA', '2002', 'CIVIC', '1HGES16722L900525', NULL, 948, NULL, NULL),
(115, 'RAM', '2021', 'PROMASTER', '9BD265555M9194551', NULL, 949, NULL, NULL),
(116, 'DODGE', '2016', 'CHARGER', '2C3CDXAG0GH272516', NULL, 950, NULL, NULL),
(117, 'FORD', '2012', 'E-150', '1FTNE1EW1CDA02797', NULL, 951, NULL, NULL),
(118, 'GMC', '2016', 'YUKON', '1GKS27KJ4GR412742', NULL, 952, NULL, NULL),
(119, 'NISSAN', '2021', 'VERSA', '3N1CN8AE8ML900986', NULL, 953, NULL, NULL),
(120, 'MERCEDES BENZ', '2017', 'SPRINTER VAN', 'WD3YF1A99HP350504', NULL, 954, NULL, NULL),
(121, 'VOLKSWAGEN', '2013', 'JETTA CLASSICO', '3VW1V49M4DM047664', NULL, 955, NULL, NULL),
(122, 'FORD', '2008', 'FOCUS', '1FAHP35N98W181084', NULL, 956, NULL, NULL),
(123, 'HONDA', '2016', 'HR-V', '3HGRU5852GM009283', NULL, 957, NULL, NULL),
(124, 'TOYOTA', '2005', 'RAV-4 L', 'JTEGD20V450079864', NULL, 958, NULL, NULL),
(125, 'PEUGEOT', '2014', 'MANAGER', 'VF3YDZMF5E2467006', NULL, 959, NULL, NULL),
(126, 'RENAULT', '2010', 'KOLEOS', 'VF1VY1GY9AC316799', NULL, 960, NULL, NULL),
(127, 'CHEVROLET', '2001', 'CHEVY', '3G1SF24271S139995', NULL, 961, NULL, NULL),
(128, 'PEUGEOT', '2022', 'PARTNER', 'VR3EUHNP8NJ509350', NULL, 962, NULL, NULL),
(129, 'CHEVROLET', '2017', 'AVEO', '3G1TB5CF8HL214309', NULL, 963, NULL, NULL),
(130, 'NISSAN', '2015', 'NP 300', '3N6DD25X0FK075481', NULL, 964, NULL, NULL),
(131, 'NISSAN', '2019', 'KICKS', '3N8CP5HD3HL474377', NULL, 965, NULL, NULL),
(132, 'FIAT', '2017', 'UNO', '9BD195521H0776908', NULL, 966, NULL, NULL),
(133, 'NISSAN', '2001', 'TSURU', '3N1EB31S81K273704', NULL, 967, NULL, NULL),
(134, 'NISSAN', '2018', 'KICKS', '3N8CP5HE1JL505057', NULL, 968, NULL, NULL),
(135, 'DODGE', '2019', 'RAM', '9BD578452KY281677.', NULL, 969, NULL, NULL),
(136, 'KIA', '2018', 'SPORTAGE', 'U6YPH3AAXJL519854', NULL, 970, NULL, NULL),
(137, 'SUZUKI', '2019', 'GIXXER', 'MB8NG4BA4K8309791', NULL, 971, NULL, NULL),
(138, 'DODGE', '2017', 'ATTITUDE', 'ML3AB56J3HH026149', NULL, 972, NULL, NULL),
(139, 'ITALIKA', '2021', 'FT125', '3SCK29EL8M1007911', NULL, 973, NULL, NULL),
(140, 'FORD', '2019', 'F150', '1FTEW1CB6KKE02006', NULL, 974, NULL, NULL),
(141, 'HONDA', '2006', 'ACCORD', '3HGCM56366G003216', NULL, 975, NULL, NULL),
(142, 'DODGE', '2020', 'NEON', 'ZFAADAAP6L6P33382', NULL, 977, NULL, NULL),
(143, 'CHEVROLET', '2021', 'BEAT', 'MA6CA6CD8MT009979', NULL, 976, NULL, NULL),
(144, 'NISSAN', '2018', 'NP300', '3N6AD35C5JK811670', NULL, 978, NULL, NULL),
(145, 'DODGE', '2018', 'NEON', 'ZFACDACP6J6K58027', NULL, 979, NULL, NULL),
(146, 'HYUNDAI', '2020', 'I10', 'MALA84BC5LM376568', NULL, 980, NULL, NULL),
(147, 'HONDA', '2006', 'CIVIC', '1HGFA16886L026381', NULL, 982, NULL, NULL),
(148, 'VOLKSWAGEN', '2017', 'UP', '9BWAG4126HT541593', NULL, 981, NULL, NULL),
(149, 'CHEVROLET', '2018', 'BEAT', 'MA6CB6CD6JT011335', NULL, 983, NULL, NULL),
(150, 'NISSAN', '2021', 'V-DRIVE', '3N1CN7AD1MK397731', NULL, 985, NULL, NULL),
(151, 'RENAULT', '2019', 'DUSTER', '9FBHS2FF9KM490005', NULL, 984, NULL, NULL),
(152, 'BAIC', '2018', 'D20', 'LNBSCBAF9JR019211', NULL, 987, NULL, NULL),
(153, 'JEEP', '2019', 'CHEROKEE', '1C4PJLDB7KD348091', NULL, 986, NULL, NULL),
(154, 'CHEVROLET', '2021', 'BEAT', 'MA6CA6CD1MT014733', NULL, 988, NULL, NULL),
(155, 'NISSAN', '2019', 'URVAN', 'JN1BE6DS2K9034595', NULL, 989, NULL, NULL),
(156, 'CHEVROLET', '2012', 'SPARK', 'KL1CM6CD4CC565932', NULL, 990, NULL, NULL),
(157, 'SUBARU', '2021', 'FORESTER', 'JF2SKDMC0MH477955', NULL, 992, NULL, NULL),
(158, 'MINI', '2011', 'MINI COOPER', 'WMWSU3105BT074610', NULL, 993, NULL, NULL),
(159, 'VOLKSWAGEN', '2011', 'SAVEIRO', '9BWKB05U5BP172751', NULL, 993, NULL, NULL);

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
(1, '3323850028/3336', 'SD', NULL, '#ERROR_#N/A', 835, 'JOSE LUS VELAZQUEZ OROZCO', NULL, NULL),
(2, '5546026059', 'SD', NULL, '0', 839, 'RAFAEL SANCHEZ', NULL, NULL),
(3, '5569784386', 'SD', NULL, 'SERVICIOS@PASCAL.COM.MX', 838, 'AGENCIA ADUANAL PASCAL SC', NULL, NULL),
(4, '3336672029', '3311447084T', NULL, 'NO@CORREO', 836, 'MARIO ALBERTO GONZALEZ', NULL, NULL),
(5, '3326009442', 'SD', NULL, '0', 837, 'GUSTAVO VAZQUEZ', NULL, NULL),
(6, '3141743906', 'SD', NULL, 'SINCORREO@GMAIL.COM', 840, 'LUIS RAMNADO RAMOS SUAREZ', NULL, NULL),
(7, '3311458489', 'SD', NULL, '0', 841, 'RUBI ESTEFANIA GOMEZ FRANCO', NULL, NULL),
(8, '5559532941', 'SD', NULL, '0', 842, 'FRANCISCO JAVIER MARTINEZ QUINTO', NULL, NULL),
(9, '3318042751', '3325900920', NULL, 'SINCORREO@GMAIL.COM', 844, 'HECTOR MANUEL DE LA CRUZ GONZALEZ', NULL, NULL),
(10, '3316107611', '3336861451', NULL, 'SINCORREO@GMAIL.COM', 843, 'ZULMA BELEN PEREZ ROBLES', NULL, NULL),
(11, '3323630504', '3322095023', NULL, 'CAROLINALOPEZ7904@HOTMAIL.COM', 845, 'LIDIA CAROLINA LOPEZ ORENDAY', NULL, NULL),
(12, '5543905863', 'SD', NULL, '0', 846, 'LOGICA INDUSTRIAL SA DE CV/MARTIN LOZA', NULL, NULL),
(13, '3331707140', 'SD', NULL, '0', 847, 'JOSE DE JESUS ARECHIGA SEGURA', NULL, NULL),
(14, '3332583776', '3330070401', NULL, 'VEHICULOS.PATRIMONIO@GMAIL.COM', 848, 'FEDERICO MORENO  /  OSWALDO CERRANO LICEA', NULL, NULL),
(15, '3322043885', 'SD', NULL, '0', 849, 'ABRAHAM OMAR GOMEZ ESTEBAN', NULL, NULL),
(16, 'S/D', 'SD', NULL, '0', 850, 'TERCERO RUBEN GARCIA QUIRARTE', NULL, NULL),
(17, '3222356273', '5555804780', NULL, 'SINCORREO@GMAIL.COM', 851, 'FLOR SANABRIA', NULL, NULL),
(18, '9154228543', '5553228200', NULL, 'SINCORREO@GMAIL.COM', 852, 'ARMANDO REYES', NULL, NULL),
(19, '3751135617', 'SD', NULL, 'SINCORREO@GMAIL.COM', 853, 'MARTIN REGALADO', NULL, NULL),
(20, '3411026393', '3123170106', NULL, 'SINCORREO@GMAIL.COM', 854, 'JORGE MONTAÑO LOPEZ', NULL, NULL),
(21, '3121745959', 'SD', NULL, '0', 855, 'JAVIER MORENO GALINDO', NULL, NULL),
(22, '3334878017', 'SD', NULL, '0', 858, 'ALD AUTOMOTIVE SA DE CV//JOSE ALBERTO VAZQUEZ RAMIREZ', NULL, NULL),
(23, '3332438359', '5543649967', NULL, 'GUILLERMO.MORALES@LOGITEL.COM.MX', 856, 'LOGICA INDUSTRIAL SA DE CV/MOISES LUNA', NULL, NULL),
(24, '3311735886', 'SD', NULL, '0', 857, 'HILDA NELLY LUCANO RAMÃREZ', NULL, NULL),
(25, '3326259063', 'SD', NULL, '0', 859, 'JOSE RUBEN ALCAZAR', NULL, NULL),
(26, '3331674010', 'SD', NULL, '0', 860, 'SANCHEZ SA DE CV//HECTOR ARIAS MORENO', NULL, NULL),
(27, '3314794173', '6142163986', NULL, 'FDELTORO@SYD.COM.MX', 862, 'SUSPENSION Y DIRECCION SA DE CV//MOISES VAZQUEZ VELASQUEZ', NULL, NULL),
(28, '3471015758', 'SD', NULL, '0', 861, 'ISRAEL GONZALEZ RAMIREZ//JUAN CAMARENA', NULL, NULL),
(29, '3312237722', 'SD', NULL, 'ADLOPEZ5757@GMAIL.COM', 863, 'ADRIAN LOPEZ GOMEZ', NULL, NULL),
(30, '5586413690', 'SD', NULL, '0', 864, 'LUIS ALFONSO ESTRADA MALACON', NULL, NULL),
(31, '3318201759', 'SD', NULL, 'LICMELISSACAMARENA@GMAIL.COM', 865, 'MELISSA LIZBETH CAMARENA RIOS', NULL, NULL),
(32, '3320783072', 'SD', NULL, 'TERESA.M@ASESORIAAUTOONLINE.COM.MX', 866, 'ISMAEL RAMOS', NULL, NULL),
(33, '3320783072', 'SD', NULL, 'SINCORREO@GMAIL.COM', 867, 'ADAN RAMIREZ GUTIERREZ', NULL, NULL),
(34, '3511184762', 'SD', NULL, 'SINCORREO@GMAIL.COM', 868, 'ALEJANDRO ISAAC SANCHEZ FERNANDEZ', NULL, NULL),
(35, '5585741569', 'SD', NULL, 'VENTAS@VANSMANZAHNOS.COM.MX', 869, 'MANZAHNOS VIAJES SA DE CV//FERNANDO BERNAL//OSCAR MANZANO', NULL, NULL),
(36, '3310898664', 'SD', NULL, '0', 870, 'ISARAEL DIAZ MUÃOZ', NULL, NULL),
(37, '3339027351', 'SD', NULL, 'LIC.FRANCISCOLOZANO92@GMAIL.COM', 871, 'JOSÃ FRANCISCO LOZANO MARTÃNEZ', NULL, NULL),
(38, '3121325867', 'SD', NULL, 'SINCORREO@GMAIL.COM', 872, 'D CONCREFOCC SA DE CV//RAUL ROMERO ARELLANO', NULL, NULL),
(39, '3322520281', 'SD', NULL, '0', 873, 'ADAN NAVARRO GONZALEZ', NULL, NULL),
(40, '3319922224', 'SD', NULL, '0', 874, 'LEASEPLAN MEXICO SA DE CV//AGUSTIN BLANCO CERVANTES', NULL, NULL),
(41, '5544845481', 'SD', NULL, 'PABLOANGELRB@ANASEGUROS.COM.MX', 875, 'GERARDO HERNANDEZ CAMPOS //MARIA RAMIREZ', NULL, NULL),
(42, '3223515920', 'SD', NULL, '0', 876, 'JOEL ARMANDO RAMIREZ FLORES', NULL, NULL),
(43, '3231087978', 'SD', NULL, 'SINCORREO@GMAIL.COM', 877, 'HELM DE MEXICO SA//GUSTAVO IGNACIO LEMUS MENDIOLA', NULL, NULL),
(44, '3314084840', 'SD', NULL, '0', 878, 'ILIANA DEL ROCIO GARCIA GARCIA', NULL, NULL),
(45, '3332386077', 'SD', NULL, '0', 879, 'CINTHIA REYNOZO GARCIA', NULL, NULL),
(46, '3321541014', 'SD', NULL, 'DEREKHERRERA7@GMAIL.COM', 880, 'YAREK ALLEN HERRERA', NULL, NULL),
(47, '3313009250', 'SD', NULL, 'KALEBF2716@GMAIL.COM', 881, 'CRISTOPHER KALEBF MONTES ACEVES', NULL, NULL),
(48, '3321461964', '3312776996', NULL, 'SINCORREO@GMAIL.COM', 882, 'EDGAR RICARDO MONTERO ESPARZA//MUNICIPIO DE TEQUILA JAL', NULL, NULL),
(49, '3751188484', '3757603525', NULL, 'SINCORREO@GMAIL.COM', 883, 'MUNICIPIO DE TECOLOTLAN JALISCO//RIGOBERTO ANDRADE RODRIGUEZ', NULL, NULL),
(50, '3781166065', '3787905801', NULL, 'SINCORREO@GMAIL.COM', 884, 'RICARDO PEñA//ANA IRENE GUADALUPE BARAJAS MARTINEZ', NULL, NULL),
(51, '3334467910', 'SD', NULL, '0', 885, 'SEMIRE SA DE CV//MISAEL OCHOA MENDEZ', NULL, NULL),
(52, '3316060935', '3316038618', NULL, 'SINCORREO@GMAIL.COM', 886, 'MAGNOCENTRO FERRETERO SA DE CV//RAFAEL MALDONADO MORA', NULL, NULL),
(53, '3332006412', 'SD', NULL, 'GESTORIA@NRFM.COM.MX', 887, 'SOCIEDAD ECOLOGICA PARA EL MANEJO DE RESIDUOS SA//EDGAR FELIPE NUñO', NULL, NULL),
(54, '3319426828', 'SD', NULL, '0', 888, 'JOSE LUIS HERNANDEZ MEJIA', NULL, NULL),
(55, '3333538584', 'SD', NULL, 'AG207252@GMAIL.COM', 889, 'JUAN MIGUEL GOMEZ NAVARRO', NULL, NULL),
(56, '3311693005', 'SD', NULL, 'COPCOM32@HOTMAIL.COM', 890, 'ISRAEL LOPEZ LOPEZ//ERNESTO DE JESUS MORENO GUTIERREZ', NULL, NULL),
(57, '3330604216', 'SD', NULL, 'SINCORREO@NO', 891, 'VALERIA ARCE GOMEZ', NULL, NULL),
(58, '6673614937', 'SD', NULL, '0', 892, 'START BANREGIO SA DE CV SOFOM ER BANREGIO GRUPO FINANCIERO//JUAN MANUEL VEGA FLORES', NULL, NULL),
(59, '5511566580', 'SD', NULL, '0', 893, 'CARZA ARRENDAMIENTO S.A. DE C.V.//SAUL JUAREZ LOPEZ', NULL, NULL),
(60, '3318545103', 'SD', NULL, 'TONO47732@GMAIL.COM', 894, 'JONATHAN EDUARDO ACEVES ALVARADO', NULL, NULL),
(61, '3327909558', 'SD', NULL, '0', 895, 'COMERCIALIZADORA PUNTO GDL SA DE CV//JOSE EDUARDO ROMERO ALVAREZ', NULL, NULL),
(62, '3321138256', 'SD', NULL, '0', 896, 'ISAÃ CUEVA GUÃZAR', NULL, NULL),
(63, '3318847487', 'SD', NULL, 'CARNICERIAELORIGEN@HOTMAIL.COM', 897, 'CARNES SELECTAS ICEA SA DE CV//GUILLERMO ARANDAS PINTO', NULL, NULL),
(64, '3342183825', 'SD', NULL, 'CARNICERIAELORIGEN@HOTMAIL.COM', 898, 'CARNES SELECTAS ICEA SA DE CV//MOISES CORDERO INDA', NULL, NULL),
(65, '5580413408', 'SD', NULL, '0', 899, 'ALD AUTOMOTIVE SA DE CV//JOSE ANTONIO GARCIA DIAS', NULL, NULL),
(66, '3321851510', 'SD', NULL, '0', 900, 'CRITERIO MEDINA GONZÃLEZ', NULL, NULL),
(67, '3317864650', 'SD', NULL, '0', 901, 'MUNICIPIO DE SAN PEDRO TLAQUEPAQUE//CARLOS EDUARDO BLADIMIR MURILLO', NULL, NULL),
(68, '3337054685//333', 'SD', NULL, '0', 902, 'MUNICIPIO DE SAN PEDRO TLAQUEPAQUE//ÃSCAR FLAVIO PÃREZ ELVIRA', NULL, NULL),
(69, '3321062471', 'SD', NULL, '0', 903, 'WIRELESS MOBILE SA DE CV//ABRAHAM MACHADO SANTIAGO', NULL, NULL),
(70, '3313312441', 'SD', NULL, '0', 904, 'EDREI HERNÃNDEZ LUGO//ERICK TOSER NUÃO JIMÃNEZ', NULL, NULL),
(71, '3332235584', 'SD', NULL, '#ERROR_#N/A', 905, 'PIZZA Y COME S.A DE C.V//ROBERTO JAUREGUI LEE', NULL, NULL),
(72, '3316287194', 'SD', NULL, 'SINCORREO@NO', 906, 'ALD AUTOMOTIVE SA DE CV//NOHEMI PLANCARTE PULIDO', NULL, NULL),
(73, '3319672858', 'SD', NULL, '0', 907, 'ALONDRA ESTEFANIA MORA BERMUDEZ', NULL, NULL),
(74, '3339465796', 'SD', NULL, '0', 908, 'JOSE YOSAFAT TAMAYO ROJAS', NULL, NULL),
(75, '3311752946//331', 'SD', NULL, '0', 909, 'JUAN ANTONIO HERNÃNDEZ DE ALBA', NULL, NULL),
(76, '3333580061', 'SD', NULL, 'SERGIOAGOMEZS@GMAIL.COM', 910, 'UBER PORTIER MEXICO S DE RL DE//SERGIO ANTONIO GOMEZ SAUCEDA', NULL, NULL),
(77, '3312687282', 'SD', NULL, '0', 911, 'JOSE ARMANDO SOSA OROZCO', NULL, NULL),
(78, '5539781908', 'SD', NULL, '0', 913, 'ARMANDO PÃREZ URDIERA', NULL, NULL),
(79, '3481148840', 'SD', NULL, '0', 912, 'JOSE RAMIREZ ORTEGA', NULL, NULL),
(80, '5616579223', 'SD', NULL, '0', 914, 'PRO TECH INTERNATIONAL SERVICES S.A. DE C.V.//ALFREDO OLIVARES FERNANDEZ', NULL, NULL),
(81, '3333495128', 'SD', NULL, 'RENEMA1023@OUTLOOK.ES', 915, 'MUNICIPIO DE TALA//JOSÃ MANUEL RUIZ QUEZADA', NULL, NULL),
(82, '3313022988', 'SD', NULL, 'DISENOCOLOR51@HOTMAIL.COM', 916, 'MILAGROS CORONA VERGARA//DANIEL SEGOVIANO SCHMIDT', NULL, NULL),
(83, '3121077974', 'SD', NULL, '0', 917, 'JORGE ANTONIO VALENCIA MIRANDA', NULL, NULL),
(84, '5588300821', 'SD', NULL, '0', 918, 'CARZA ARRENDAMIENTO S.A. DE C.V.//JUAN LUIS HERNANDEZ', NULL, NULL),
(85, '3317667000', 'SD', NULL, 'LENIA@PRISMAENVASE.COM', 919, 'PRISMA ENVASE SA DE CV//ERNESTO GOMEZ//LENIA RIVERON', NULL, NULL),
(86, '3314290254', 'SD', NULL, '0', 921, '123LEASE SAPI DE CV//FLORISEL REYES CRUZ', NULL, NULL),
(87, '5579290927', 'SD', NULL, '0', 920, 'INTERNATIONAL BUSINESS AND BEST MONEY SA DE CV//ANTONIO HERNANDEZ', NULL, NULL),
(88, '5560702910', 'SD', NULL, '0', 922, 'MARIO JESUS RODRIGUEZ MENDOZA', NULL, NULL),
(89, '3781105777', 'SD', NULL, '0', 923, 'JOSE SALVADOR ENRIQUEZ ALVARADO', NULL, NULL),
(90, '3112041655', 'SD', NULL, '0', 924, 'IGNACIO DE JESUS LOPEZ MARTIN', NULL, NULL),
(91, '3751013453', 'SD', NULL, '0', 926, 'JOSE MENDEZ GARCIA', NULL, NULL),
(92, '3335561344', 'SD', NULL, 'ATA_ELPERRON@HOTMAIL.COM', 925, 'MARISELA RODRIGUEZ CARDENAS', NULL, NULL),
(93, '5585276599', 'SD', NULL, '0', 927, 'DAVID QUENTIN CHALAR', NULL, NULL),
(94, '5549859267', 'SD', NULL, '0', 928, 'TACTICA Y TECNOLOGIA EN SEGURIDAD PRIVADA SA DE CV//ROMULO VILLALOBOS FERNANDEZ', NULL, NULL),
(95, '3141450866', 'SD', NULL, 'HEREDIA_TORRES_GABRIEL@HOTMAIL.COM', 929, 'RUBEN HEREDIA LARIOS//GABRIEL HEREDIA TORRES', NULL, NULL),
(96, '6681120890', 'SD', NULL, '0', 931, 'MUEBLERIA HIDALGO DEL NOROESTE SA DE CV//JUAN SERRANO', NULL, NULL),
(97, '3315740653', 'SD', NULL, '0', 930, 'GIRECO SA DE CV//KARINA MERCADO MUNGARAY', NULL, NULL),
(98, '6721180155', 'SD', NULL, '0', 932, 'CORPORATIVO DE PROTECCION SEGURIDAD PRIVADA Y SERV ESPECIALIZADOS SA DE CV//LUIS ANDRES DUARTE PEÃUELAS', NULL, NULL),
(99, '3122918651', 'SD', NULL, '0', 933, 'LEASEPLAN MEXICO SA DE CV//BRAULIO ALEXIS MALDONADO AGUILAR', NULL, NULL),
(100, '3151003271', 'SD', NULL, '0', 934, 'MUNICIPIO DE LA HUERTA JALISCO//SALVADOR LOPEZ PRECIADO', NULL, NULL),
(101, '3141186798', 'SD', NULL, 'YAIRBLAS_91@HOTMAIL.COM', 935, 'HECTOR YAIR BLAS GUTIERREZ', NULL, NULL),
(102, '5570073268', 'SD', NULL, '0', 936, 'TACTICA Y TECNOLOGIA EN SEGURIDAD PRIVADA SA DE CV//JAVIER HERNANDEZ// RAFAEL ALTAMIRANO', NULL, NULL),
(103, '3411477272', 'SD', NULL, '0', 937, 'JUAN SALVADOR ZUNIGA QUINONEZ', NULL, NULL),
(104, '3334646070', 'SD', NULL, 'SINDATO@GMAIL', 939, 'MARIO ANTONIO GARCIA ACEVES', NULL, NULL),
(105, '3411652534', 'SD', NULL, '0', 938, 'MIGUEL TORRES CONTRERAS', NULL, NULL),
(106, '3411214875', 'SD', NULL, '0', 940, 'MUNICIPIO DE TAMAZULA DE GORDIANO JALISCO//CESAR ARMANDO ESQUIVEL TORRES', NULL, NULL),
(107, '6691513810', 'SD', NULL, '0', 941, 'JOSE ADRIAN ARIAS FRANCO', NULL, NULL),
(108, '3221412831', 'SD', NULL, '0', 944, 'HUMBERTO MARTINEZ FRIAS', NULL, NULL),
(109, '6695331218', 'SD', NULL, '0', 945, 'PAUL BRUCE LEON BENITEZ', NULL, NULL),
(110, '6671937589', 'SD', NULL, '0', 942, 'TRECE CAR RENTAL GROUP SA DE CV//ROBERTO MEDRANO', NULL, NULL),
(111, '4493529717', 'SD', NULL, '0', 943, 'CARLOS DANIEL GONZALEZ', NULL, NULL),
(112, '3312287207', 'SD', NULL, '0', 946, 'MUNICIPIO DE ATOYAC JALISCO/MARIA DANIELA MONSERRAT TORRES TEJEDA', NULL, NULL),
(113, '3319958488', 'SD', NULL, 'OSCARFLORESROMERO0807@GMAIL.COM', 948, 'ALBERTO FLORES ALVAREZ', NULL, NULL),
(114, '5580102070', 'SD', NULL, '0', 947, 'SOLUCIONES Y APLICACIONES EN PROCEDIMIENTOS INTRAMUROS SA DE CV//FREDY MAGDALENO ZEA', NULL, NULL),
(115, '6532070990', '6532070990', NULL, 'SINDATO@GMAIL', 950, 'MUNICIPIO DE SAN LUIS RIO COLORADO SONORA//GILBERTO ROBLES ZEPEDA', NULL, NULL),
(116, '6531339992', '6531339992', NULL, 'SINDATO@GMAIL', 949, 'AGROS HORTICULTORES S.A. DE C.V.//JESUS AVIÑA', NULL, NULL),
(117, '3312287207', 'SD', NULL, 'SINCORREO@GMAIL.COM', 951, 'MUNICIPIO DE ATOYAC JALISCO/MARIA DANIELA MONSERRAT TORRES TEJEDA', NULL, NULL),
(118, '2226512516', '2226512516', NULL, 'MIGUELMTZFLORES@HOTMAIL.COM', 952, 'MIGUEL ANGEL MARTINEZ', NULL, NULL),
(119, '5585741569', 'SD', NULL, 'VENTAS@VANSMANZAHNOS.COM.MX', 954, 'MANZAHNOS VIAJES SA DE CV//FERNANDO BERNAL//OSCAR MANZANO', NULL, NULL),
(120, '5544556432', 'SD', NULL, 'SINCORREO@GMAIL.COM', 953, 'JORGE GEVARA MARTINEZ', NULL, NULL),
(121, '4621003635', 'SD', NULL, 'RAMIROPDOME@GMAIL.COM', 955, 'ABRAHAM RAFAEL SUAREZ HEREDIA//MUNICIPIO DE HIDALGO MICHOACAN', NULL, NULL),
(122, '6531131403', 'SD', NULL, 'SINCORREO@GMAIL.COM', 956, 'PEDRO ANTONIO DIAZ GONZALEZ', NULL, NULL),
(123, '6531082396', 'SD', NULL, 'SINCORREO@GMAIL.COM', 957, 'DIMA RODRIGUEZ OVIEDO//MARCELA GUADALUPE IBARRA LOPEZ', NULL, NULL),
(124, '4521058470', 'SD', NULL, 'RGTERRI@GMAIL.COM', 958, 'RAFAEL GARCIA VAES//MA ESTELA BAEZ ALVAREZ', NULL, NULL),
(125, '6141280834', 'SD', NULL, 'SINCORREO@NO', 959, 'OSCAR MENDOZA FRIAS', NULL, NULL),
(126, '4494337196', '4494337196', NULL, 'SINCORREO@NO', 960, 'MARIO ALBERTO RUANO ESPINOZA', NULL, NULL),
(127, '3317525848', '3331910778', NULL, 'DIEORTEGAP@GMAIL.COM', 961, 'RAFAEL MAYORGA RODRIGUEZ', NULL, NULL),
(128, '4491505894', 'SD', NULL, 'SINCORREO@NO', 962, 'ARTURO PEREZ LUNA//FELIPE DE JESUS LOPEZ LEOS', NULL, NULL),
(129, '4773241286', 'SD', NULL, 'SINCORREO@NO', 963, 'GRUPO TRACTOCAMIONES Y AUTOBUSES DEL BAJIO SA DE CV//JORGE DANIEL MARTINEZ', NULL, NULL),
(130, '3141505753', 'SD', NULL, 'SD', 964, 'MIGUEL ANTONIO CONTRERAS', NULL, NULL),
(131, '3321831205', '3221110138', NULL, 'LUCRECIAMMACNAUGHT@HOTMAIL.COM', 965, 'LUCRECIA MARRON', NULL, NULL),
(132, '3317860075', 'SD', NULL, 'SINCORREO@GMAIL.COM', 966, 'JUAN JESUS RODRIGUEZ', NULL, NULL),
(133, '3221427796', 'SD', NULL, 'SINCORREO@GMAIL.COM', 967, 'SANTOS CASTELLANOS BAZAN', NULL, NULL),
(134, '7444010968', 'SD', NULL, 'SD', 968, 'JOSE ALFREDO TORRES', NULL, NULL),
(135, '3121345315', 'SD', NULL, 'SINCORREO@GMAIL.COM', 969, 'ALFREDO GERVACIO', NULL, NULL),
(136, '5513095979', 'SD', NULL, 'SD', 970, 'JORGE ALEJANDRO HERNANDEZ', NULL, NULL),
(137, '3323617515', 'SD', NULL, 'EEHDLC@GMAIL.COM', 971, 'ERIC HERNANDEZ DE LA CRUZ   // SAUL BENJAMIN GONZALEZ', NULL, NULL),
(138, 'SD', 'SD', NULL, 'SD', 972, 'SERVICIOS INTEGRALES EN EL MANEJO DEL AMBIENTE S DE RL DE CV// LETICIA JIMENEZ ESQUIVEL', NULL, NULL),
(139, '6441243249', 'SD', NULL, 'SD', 973, 'JOSE NOE LOPEZ', NULL, NULL),
(140, '3331707140', 'SD', NULL, 'SINCORREO@GMAIL.COM', 974, 'MARCO ADRIAN BAUTISTA  /  MUNICIO TLAQUEPAQUE  / PINZON', NULL, NULL),
(141, '3336009186', '3320531093', NULL, 'SINCORREO@NO', 975, 'MARIA LUISA VILLEGAS ROLDAN', NULL, NULL),
(142, '7295297889', 'SD', NULL, 'SD', 976, 'JUAN CARLOS VELAZQUEZ', NULL, NULL),
(143, '3228882651', 'SD', NULL, 'SD', 977, 'MARIA ROCIO ZEPEDA', NULL, NULL),
(144, '3112200338', 'SD', NULL, 'SD', 979, 'ICOLE JIM BARRUTI AVILA', NULL, NULL),
(145, '8331596877', 'SD', NULL, 'SD', 978, 'JOAQUIN RAMON FUENTES SOTELO', NULL, NULL),
(146, '3118519052', 'SD', NULL, 'SD', 980, 'MARY RIVERA PEREZ/ IVAN ALEJANDRO MARQUEZ', NULL, NULL),
(147, '3118469608', 'SD', NULL, 'SD', 981, 'ULISES LOERA/ MARIA MARTHA ESCOBEDO', NULL, NULL),
(148, '3313967766', 'SD', NULL, 'SD', 982, 'GONZALO ABREO GOMEZ', NULL, NULL),
(149, '3324405880', 'SD', NULL, 'SD', 983, 'GRUPO INTERMOVIL KREMPDOR S DE RL DE CV//JOSEU CORDOBA NUÃEZ', NULL, NULL),
(150, '5580490449', 'SD', NULL, 'SINCORREO@NO', 985, 'LEASEPLAN MEXICO SA DE CV//EDGAR BARAJAS SEVILLA', NULL, NULL),
(151, '3112411780', 'SD', NULL, 'SD', 984, 'PEDRO DE JESUS CERVANTES SANCHEZ', NULL, NULL),
(152, '3323102480', '8000053273', NULL, 'SINDATO@GMAIL.COM', 988, 'LEASEPLAN MEXICO SA DE CV', NULL, NULL),
(153, '3513712665', 'SD', NULL, 'SINCORREO@NO', 986, 'SD', NULL, NULL),
(154, '8121949810', '8125823403', NULL, 'SINDATO@GMAIL.COM', 987, 'JOSE DE JESUS JINEZ GARCES', NULL, NULL),
(155, '5554389669', '5554510121', NULL, 'JURIDICO.PACIFICO@MULTISISTEMAS.COM.MX', 989, 'SOPORTE PARA EMPRESAS, S.A. DE C.V.', NULL, NULL),
(156, '3316687072', '', NULL, 'SINDATO@GMAIL.COM', 990, 'RICARDO DE JESUS MU&OZ GARCIA', NULL, NULL),
(157, '6869450456', '', NULL, 'SINDATO@GMAIL.COM', 992, 'MARTIN FUENTES CHAVEZ', NULL, NULL),
(158, '3331579474', '', NULL, 'SINDATO@GMAIL.COM', 993, 'VLADIMIS CASARRUBIAS GOMEZ', NULL, NULL),
(159, '3313334810', '', NULL, 'SINDATO@GMAIL', 993, 'MARTIN RIOS DIAZ', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infosiniestro`
--

CREATE TABLE `infosiniestro` (
  `idRegistro` int(11) NOT NULL,
  `numSiniestro` varchar(100) DEFAULT NULL,
  `poliza` varchar(100) DEFAULT NULL,
  `afectado` varchar(100) DEFAULT NULL,
  `tipoDeCaso` varchar(100) DEFAULT NULL,
  `cobertura` varchar(100) DEFAULT NULL,
  `fechaSiniestro` date DEFAULT NULL,
  `estado` varchar(100) DEFAULT 'N/D',
  `ciudad` varchar(45) DEFAULT NULL,
  `region` varchar(200) DEFAULT 'N/D',
  `ubicacionTaller` varchar(100) DEFAULT NULL,
  `financiado` varchar(100) DEFAULT NULL,
  `regimenFiscal` varchar(100) DEFAULT NULL,
  `estatusCliente` varchar(100) DEFAULT 'Sin Estatus',
  `comentariosCliente` varchar(500) CHARACTER SET utf8 DEFAULT 'ninguno',
  `datosAudatex` varchar(45) DEFAULT 'Sin Datos',
  `passwordExterno` varchar(45) DEFAULT 'Sin Password',
  `fechaCarga` date DEFAULT NULL,
  `fechaDecreto` date DEFAULT NULL,
  `usuarioCarga` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tabla para la informacion del siniestro';

--
-- Volcado de datos para la tabla `infosiniestro`
--

INSERT INTO `infosiniestro` (`idRegistro`, `numSiniestro`, `poliza`, `afectado`, `tipoDeCaso`, `cobertura`, `fechaSiniestro`, `estado`, `ciudad`, `region`, `ubicacionTaller`, `financiado`, `regimenFiscal`, `estatusCliente`, `comentariosCliente`, `datosAudatex`, `passwordExterno`, `fechaCarga`, `fechaDecreto`, `usuarioCarga`) VALUES
(835, '42147405', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(836, '042154482-007', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(837, '42172278', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(838, '42118536', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(839, '42129149', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(840, '42152626', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(841, '042129318-003', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(842, '42164643', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(843, '042186005-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'NINGUNA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(844, '042183705-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(845, '042167891-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(846, '42187629', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(847, '042161648-003', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(848, '042169442-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'NINGUNA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(849, '421A6385', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(850, '42290076', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'NINGUNA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(851, '042158144-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(852, '042190608-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(853, '42290090', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(854, '042140737-003', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(855, '042190644-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(856, '42219888', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(857, '042215337-003', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(858, '42137312', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(859, '042290072-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(860, '042204225-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(861, '42229972', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(862, '42201833-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(863, '42220909', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(864, '042217923-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(865, '042233057-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(866, '042215337-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(867, '042235179-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(868, '042218226-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'NINGUNA', 'N/D', 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(869, '0421-64534', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(870, '0421A5380', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(871, '42238835', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(872, '42226153', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(873, '42247976', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(874, '042247431-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(875, '42233189', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(876, '042241064-003', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(877, '042230231-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(878, '042248650-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(879, '042249861-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(880, '042222574-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(881, '42253434', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(882, '42261869', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(883, '42150159', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(884, '042261857-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(885, '042242644-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(886, '042254620-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(887, '042235736-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA CON ACTIVIDAD EMPRESARIAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(888, '042263935-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(889, '042263716T', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(890, '042266554A', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(891, '042259012-003', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(892, '42260060', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(893, '42255429', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(894, '42223774', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(895, '42258294', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(896, '42256179', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(897, '42214102', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA CON ACTIVIDAD EMPRESARIAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(898, '42183825', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(899, '42236408', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(900, '42203432', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(901, '42186608', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(902, '42184962', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(903, '42066068', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(904, '42162602', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(905, '42170663', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(906, '42200516', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(907, '42209886', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(908, '42235325', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(909, '42249655', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(910, '42251445', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(911, '42252022', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(912, '42252106', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(913, '42271411', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(914, '42271720', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(915, '42270613', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(916, '42275840', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(917, '042224252-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(918, '042217035-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(919, '042262482-001', '03566268', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(920, '042257308-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(921, '042277295-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(922, '042268103-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(923, '042276315-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(924, '042245157-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(925, '42235739', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(926, '42280136', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(927, '42258694', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(928, '042266528-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(929, '042252652-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(930, '42287214-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(931, '42277852', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(932, '42231500', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(933, '042238253-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(934, '042255056-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(935, '042261722-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(936, '042106490-001', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(937, '42275385', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(938, '42215868', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(939, '42271609', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(940, '42263231', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(941, '42253152', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(942, '42227040', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(943, '042268551-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(944, '042272285-001', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(945, '42271388', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(946, '04218866-003', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(947, '42110944', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(948, '42160898', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(949, '42271079', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(950, '42232419', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(951, '42208866', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(952, '42147035', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(953, '42219498', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'AGUASCALIENTES', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(954, '42164534', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(955, '42232770', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'MORELIA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(956, '42264110', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'HERMOSILLO', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(957, '42240433', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'HERMOSILLO', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(958, '42245531', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'MORELIA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(959, '42238508', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'ZACATECAS', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(960, '421A3093', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'AGUASCALIENTES', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(961, '42159905', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(962, '42235380', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'ZACATECAS', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(963, '42263757', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'ZACATECAS', 'N/D', 'TLALPAN', NULL, 'PERSONA MORAL', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(964, '42120328', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(965, '42151241', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(966, '042168875-001', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(967, '42164126', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(968, '42188233', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(969, '42227174', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(970, '42234951', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(971, '42174375', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(972, '421A2102', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(973, '421A5004', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(974, '42288344', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(975, '42271794', '0', 'A', NULL, 'SD', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(976, '42260510', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(977, '42278304', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(978, '42269552', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(979, '42230078', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(980, '42242925', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(981, '42162836', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(982, '42287925', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(983, '422A1855', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(984, '42265435', '0', 'A', NULL, 'NUEVO', '2022-10-22', 'N/D', 'SD', 'N/D', 'TLALPAN', NULL, 'SD', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(985, '42271014', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'CD. OBREGON', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(986, '42269653', '00000000', 'A', NULL, 'COLISION', '2022-10-22', 'N/D', 'GUADALAJARA', 'N/D', 'TLALPAN', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-10-22', 'admin'),
(987, '42263916', '00000000', 'ND', NULL, 'COLISION', '1905-07-15', 'N/D', 'MONTERREY', 'N/D', 'DESCONOCIDO', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-09-14', 'admin'),
(988, '422A2432', '00000000', 'A', NULL, 'COLISION', '1905-07-16', 'N/D', 'GUADALAJARA', 'N/D', 'DESCONOCIDO', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-09-15', 'admin'),
(989, '42231148', '00000000', 'A', NULL, 'COLISION', '1905-07-17', 'N/D', 'GUADALAJARA', 'N/D', 'DESCONOCIDO', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-09-16', 'admin'),
(990, '42280252', '00000000', 'ND', NULL, 'ND', '1905-07-18', 'N/D', 'ND', 'N/D', 'DESCONOCIDO', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-09-17', 'admin'),
(991, '42270478', '00000000', 'ND', NULL, 'ND', '1905-07-19', 'N/D', 'ND', 'N/D', 'DESCONOCIDO', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-09-18', 'admin'),
(992, '42276023', '00000000', 'ND', NULL, 'ND', '1905-07-20', 'N/D', 'ND', 'N/D', 'DESCONOCIDO', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-09-19', 'admin'),
(993, '42270478', '00000000', 'T', NULL, 'COLISION', '1905-07-21', 'N/D', 'GUADALAJARA', 'N/D', 'DESCONOCIDO', NULL, 'PERSONA FISICA', 'Sin Estatus', 'ninguno', 'Sin Datos', 'Sin Password', '2022-10-31', '2022-09-20', 'admin');

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
(1, NULL, NULL, NULL, NULL, 839),
(2, NULL, NULL, NULL, NULL, 836),
(3, NULL, NULL, NULL, NULL, 838),
(4, NULL, NULL, NULL, NULL, 835),
(5, NULL, NULL, NULL, NULL, 837),
(6, NULL, NULL, NULL, NULL, 841),
(7, NULL, NULL, NULL, NULL, 840),
(8, NULL, NULL, NULL, NULL, 842),
(9, NULL, NULL, NULL, NULL, 844),
(10, NULL, NULL, NULL, NULL, 843),
(11, NULL, NULL, NULL, NULL, 845),
(12, NULL, NULL, NULL, NULL, 846),
(13, NULL, NULL, NULL, NULL, 847),
(14, NULL, NULL, NULL, NULL, 849),
(15, NULL, NULL, NULL, NULL, 848),
(16, NULL, NULL, NULL, NULL, 850),
(17, NULL, NULL, NULL, NULL, 851),
(18, NULL, NULL, NULL, NULL, 852),
(19, NULL, NULL, NULL, NULL, 853),
(20, NULL, NULL, NULL, NULL, 854),
(21, NULL, NULL, NULL, NULL, 855),
(22, NULL, NULL, NULL, NULL, 857),
(23, NULL, NULL, NULL, NULL, 856),
(24, NULL, NULL, NULL, NULL, 858),
(25, NULL, NULL, NULL, NULL, 859),
(26, NULL, NULL, NULL, NULL, 860),
(27, NULL, NULL, NULL, NULL, 862),
(28, NULL, NULL, NULL, NULL, 861),
(29, NULL, NULL, NULL, NULL, 863),
(30, NULL, NULL, NULL, NULL, 864),
(31, NULL, NULL, NULL, NULL, 865),
(32, NULL, NULL, NULL, NULL, 867),
(33, NULL, NULL, NULL, NULL, 866),
(34, NULL, NULL, NULL, NULL, 868),
(35, NULL, NULL, NULL, NULL, 869),
(36, NULL, NULL, NULL, NULL, 870),
(37, NULL, NULL, NULL, NULL, 872),
(38, NULL, NULL, NULL, NULL, 873),
(39, NULL, NULL, NULL, NULL, 871),
(40, NULL, NULL, NULL, NULL, 874),
(41, NULL, NULL, NULL, NULL, 875),
(42, NULL, NULL, NULL, NULL, 878),
(43, NULL, NULL, NULL, NULL, 876),
(44, NULL, NULL, NULL, NULL, 877),
(45, NULL, NULL, NULL, NULL, 879),
(46, NULL, NULL, NULL, NULL, 880),
(47, NULL, NULL, NULL, NULL, 881),
(48, NULL, NULL, NULL, NULL, 882),
(49, NULL, NULL, NULL, NULL, 883),
(50, NULL, NULL, NULL, NULL, 884),
(51, NULL, NULL, NULL, NULL, 885),
(52, NULL, NULL, NULL, NULL, 886),
(53, NULL, NULL, NULL, NULL, 887),
(54, NULL, NULL, NULL, NULL, 888),
(55, NULL, NULL, NULL, NULL, 889),
(56, NULL, NULL, NULL, NULL, 890),
(57, NULL, NULL, NULL, NULL, 891),
(58, NULL, NULL, NULL, NULL, 892),
(59, NULL, NULL, NULL, NULL, 893),
(60, NULL, NULL, NULL, NULL, 894),
(61, NULL, NULL, NULL, NULL, 895),
(62, NULL, NULL, NULL, NULL, 896),
(63, NULL, NULL, NULL, NULL, 898),
(64, NULL, NULL, NULL, NULL, 897),
(65, NULL, NULL, NULL, NULL, 899),
(66, NULL, NULL, NULL, NULL, 900),
(67, NULL, NULL, NULL, NULL, 901),
(68, NULL, NULL, NULL, NULL, 902),
(69, NULL, NULL, NULL, NULL, 903),
(70, NULL, NULL, NULL, NULL, 904),
(71, NULL, NULL, NULL, NULL, 905),
(72, NULL, NULL, NULL, NULL, 906),
(73, NULL, NULL, NULL, NULL, 907),
(74, NULL, NULL, NULL, NULL, 908),
(75, NULL, NULL, NULL, NULL, 909),
(76, NULL, NULL, NULL, NULL, 910),
(77, NULL, NULL, NULL, NULL, 911),
(78, NULL, NULL, NULL, NULL, 913),
(79, NULL, NULL, NULL, NULL, 912),
(80, NULL, NULL, NULL, NULL, 914),
(81, NULL, NULL, NULL, NULL, 916),
(82, NULL, NULL, NULL, NULL, 915),
(83, NULL, NULL, NULL, NULL, 917),
(84, NULL, NULL, NULL, NULL, 918),
(85, NULL, NULL, NULL, NULL, 919),
(86, NULL, NULL, NULL, NULL, 920),
(87, NULL, NULL, NULL, NULL, 921),
(88, NULL, NULL, NULL, NULL, 922),
(89, NULL, NULL, NULL, NULL, 923),
(90, NULL, NULL, NULL, NULL, 924),
(91, NULL, NULL, NULL, NULL, 926),
(92, NULL, NULL, NULL, NULL, 925),
(93, NULL, NULL, NULL, NULL, 927),
(94, NULL, NULL, NULL, NULL, 928),
(95, NULL, NULL, NULL, NULL, 929),
(96, NULL, NULL, NULL, NULL, 930),
(97, NULL, NULL, NULL, NULL, 931),
(98, NULL, NULL, NULL, NULL, 932),
(99, NULL, NULL, NULL, NULL, 933),
(100, NULL, NULL, NULL, NULL, 934),
(101, NULL, NULL, NULL, NULL, 935),
(102, NULL, NULL, NULL, NULL, 936),
(103, NULL, NULL, NULL, NULL, 938),
(104, NULL, NULL, NULL, NULL, 939),
(105, NULL, NULL, NULL, NULL, 940),
(106, NULL, NULL, NULL, NULL, 937),
(107, NULL, NULL, NULL, NULL, 941),
(108, NULL, NULL, NULL, NULL, 945),
(109, NULL, NULL, NULL, NULL, 944),
(110, NULL, NULL, NULL, NULL, 942),
(111, NULL, NULL, NULL, NULL, 943),
(112, NULL, NULL, NULL, NULL, 946),
(113, NULL, NULL, NULL, NULL, 947),
(114, NULL, NULL, NULL, NULL, 948),
(115, NULL, NULL, NULL, NULL, 949),
(116, NULL, NULL, NULL, NULL, 950),
(117, NULL, NULL, NULL, NULL, 951),
(118, NULL, NULL, NULL, NULL, 952),
(119, NULL, NULL, NULL, NULL, 954),
(120, NULL, NULL, NULL, NULL, 953),
(121, NULL, NULL, NULL, NULL, 955),
(122, NULL, NULL, NULL, NULL, 956),
(123, NULL, NULL, NULL, NULL, 957),
(124, NULL, NULL, NULL, NULL, 959),
(125, NULL, NULL, NULL, NULL, 958),
(126, NULL, NULL, NULL, NULL, 960),
(127, NULL, NULL, NULL, NULL, 961),
(128, NULL, NULL, NULL, NULL, 962),
(129, NULL, NULL, NULL, NULL, 963),
(130, NULL, NULL, NULL, NULL, 964),
(131, NULL, NULL, NULL, NULL, 965),
(132, NULL, NULL, NULL, NULL, 966),
(133, NULL, NULL, NULL, NULL, 967),
(134, NULL, NULL, NULL, NULL, 969),
(135, NULL, NULL, NULL, NULL, 968),
(136, NULL, NULL, NULL, NULL, 970),
(137, NULL, NULL, NULL, NULL, 971),
(138, NULL, NULL, NULL, NULL, 972),
(139, NULL, NULL, NULL, NULL, 973),
(140, NULL, NULL, NULL, NULL, 974),
(141, NULL, NULL, NULL, NULL, 975),
(142, NULL, NULL, NULL, NULL, 977),
(143, NULL, NULL, NULL, NULL, 976),
(144, NULL, NULL, NULL, NULL, 978),
(145, NULL, NULL, NULL, NULL, 979),
(146, NULL, NULL, NULL, NULL, 980),
(147, NULL, NULL, NULL, NULL, 982),
(148, NULL, NULL, NULL, NULL, 983),
(149, NULL, NULL, NULL, NULL, 981),
(150, NULL, NULL, NULL, NULL, 985),
(151, NULL, NULL, NULL, NULL, 984),
(152, NULL, NULL, NULL, NULL, 988),
(153, NULL, NULL, NULL, NULL, 986),
(154, NULL, NULL, NULL, NULL, 987),
(155, NULL, NULL, NULL, NULL, 989),
(156, NULL, NULL, NULL, NULL, 990),
(157, NULL, NULL, NULL, NULL, 992),
(158, NULL, NULL, NULL, NULL, 993),
(159, NULL, NULL, NULL, NULL, 993);

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
(1, 844, 'mensaje respondido', 'admin', '2022-11-02 09:25:48', 'si'),
(2, 844, 'mensaje respondido', 'admin', '2022-11-02 09:26:45', 'si'),
(3, 844, 'mensaje respondido', 'admin', '2022-11-02 09:27:47', 'si'),
(4, 844, 'mensaje respondido', 'admin', '2022-11-02 09:28:31', 'si'),
(5, 844, 'mensaje respondido', 'admin', '2022-11-02 09:29:03', 'si'),
(6, 844, 'mensaje respondido', 'admin', '2022-11-02 09:30:03', 'si'),
(7, 844, 'mensaje respondido', 'admin', '2022-11-02 09:30:57', 'si'),
(8, 844, 'correctos', 'admin', '2022-11-02 09:31:40', 'si'),
(9, 844, 'correctos', 'admin', '2022-11-02 09:32:30', 'si'),
(10, 844, '', 'admin', '2022-11-02 09:33:12', 'si'),
(11, 844, 'correctos', 'admin', '2022-11-02 09:59:51', 'si');

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
(1, NULL, NULL, NULL, NULL, 839),
(2, NULL, NULL, NULL, NULL, 836),
(3, NULL, NULL, NULL, NULL, 838),
(4, NULL, NULL, NULL, NULL, 835),
(5, NULL, NULL, NULL, NULL, 837),
(6, NULL, NULL, NULL, NULL, 841),
(7, NULL, NULL, NULL, NULL, 840),
(8, NULL, NULL, NULL, NULL, 842),
(9, NULL, NULL, NULL, NULL, 843),
(10, NULL, NULL, NULL, NULL, 844),
(11, NULL, NULL, NULL, NULL, 845),
(12, NULL, NULL, NULL, NULL, 846),
(13, NULL, NULL, NULL, NULL, 847),
(14, NULL, NULL, NULL, NULL, 848),
(15, NULL, NULL, NULL, NULL, 849),
(16, NULL, NULL, NULL, NULL, 850),
(17, NULL, NULL, NULL, NULL, 853),
(18, NULL, NULL, NULL, NULL, 851),
(19, NULL, NULL, NULL, NULL, 852),
(20, NULL, NULL, NULL, NULL, 854),
(21, NULL, NULL, NULL, NULL, 855),
(22, NULL, NULL, NULL, NULL, 856),
(23, NULL, NULL, NULL, NULL, 857),
(24, NULL, NULL, NULL, NULL, 858),
(25, NULL, NULL, NULL, NULL, 859),
(26, NULL, NULL, NULL, NULL, 860),
(27, NULL, NULL, NULL, NULL, 862),
(28, NULL, NULL, NULL, NULL, 863),
(29, NULL, NULL, NULL, NULL, 861),
(30, NULL, NULL, NULL, NULL, 864),
(31, NULL, NULL, NULL, NULL, 865),
(32, NULL, NULL, NULL, NULL, 867),
(33, NULL, NULL, NULL, NULL, 866),
(34, NULL, NULL, NULL, NULL, 868),
(35, NULL, NULL, NULL, NULL, 869),
(36, NULL, NULL, NULL, NULL, 870),
(37, NULL, NULL, NULL, NULL, 872),
(38, NULL, NULL, NULL, NULL, 873),
(39, NULL, NULL, NULL, NULL, 871),
(40, NULL, NULL, NULL, NULL, 874),
(41, NULL, NULL, NULL, NULL, 875),
(42, NULL, NULL, NULL, NULL, 878),
(43, NULL, NULL, NULL, NULL, 877),
(44, NULL, NULL, NULL, NULL, 876),
(45, NULL, NULL, NULL, NULL, 879),
(46, NULL, NULL, NULL, NULL, 880),
(47, NULL, NULL, NULL, NULL, 881),
(48, NULL, NULL, NULL, NULL, 883),
(49, NULL, NULL, NULL, NULL, 882),
(50, NULL, NULL, NULL, NULL, 884),
(51, NULL, NULL, NULL, NULL, 885),
(52, NULL, NULL, NULL, NULL, 886),
(53, NULL, NULL, NULL, NULL, 887),
(54, NULL, NULL, NULL, NULL, 888),
(55, NULL, NULL, NULL, NULL, 889),
(56, NULL, NULL, NULL, NULL, 890),
(57, NULL, NULL, NULL, NULL, 891),
(58, NULL, NULL, NULL, NULL, 892),
(59, NULL, NULL, NULL, NULL, 893),
(60, NULL, NULL, NULL, NULL, 894),
(61, NULL, NULL, NULL, NULL, 895),
(62, NULL, NULL, NULL, NULL, 896),
(63, NULL, NULL, NULL, NULL, 897),
(64, NULL, NULL, NULL, NULL, 898),
(65, NULL, NULL, NULL, NULL, 899),
(66, NULL, NULL, NULL, NULL, 900),
(67, NULL, NULL, NULL, NULL, 901),
(68, NULL, NULL, NULL, NULL, 903),
(69, NULL, NULL, NULL, NULL, 902),
(70, NULL, NULL, NULL, NULL, 904),
(71, NULL, NULL, NULL, NULL, 905),
(72, NULL, NULL, NULL, NULL, 906),
(73, NULL, NULL, NULL, NULL, 908),
(74, NULL, NULL, NULL, NULL, 907),
(75, NULL, NULL, NULL, NULL, 909),
(76, NULL, NULL, NULL, NULL, 910),
(77, NULL, NULL, NULL, NULL, 911),
(78, NULL, NULL, NULL, NULL, 913),
(79, NULL, NULL, NULL, NULL, 912),
(80, NULL, NULL, NULL, NULL, 914),
(81, NULL, NULL, NULL, NULL, 916),
(82, NULL, NULL, NULL, NULL, 915),
(83, NULL, NULL, NULL, NULL, 917),
(84, NULL, NULL, NULL, NULL, 918),
(85, NULL, NULL, NULL, NULL, 919),
(86, NULL, NULL, NULL, NULL, 920),
(87, NULL, NULL, NULL, NULL, 921),
(88, NULL, NULL, NULL, NULL, 922),
(89, NULL, NULL, NULL, NULL, 923),
(90, NULL, NULL, NULL, NULL, 924),
(91, NULL, NULL, NULL, NULL, 925),
(92, NULL, NULL, NULL, NULL, 926),
(93, NULL, NULL, NULL, NULL, 927),
(94, NULL, NULL, NULL, NULL, 928),
(95, NULL, NULL, NULL, NULL, 929),
(96, NULL, NULL, NULL, NULL, 931),
(97, NULL, NULL, NULL, NULL, 930),
(98, NULL, NULL, NULL, NULL, 932),
(99, NULL, NULL, NULL, NULL, 933),
(100, NULL, NULL, NULL, NULL, 934),
(101, NULL, NULL, NULL, NULL, 935),
(102, NULL, NULL, NULL, NULL, 936),
(103, NULL, NULL, NULL, NULL, 938),
(104, NULL, NULL, NULL, NULL, 939),
(105, NULL, NULL, NULL, NULL, 940),
(106, NULL, NULL, NULL, NULL, 937),
(107, NULL, NULL, NULL, NULL, 941),
(108, NULL, NULL, NULL, NULL, 945),
(109, NULL, NULL, NULL, NULL, 942),
(110, NULL, NULL, NULL, NULL, 943),
(111, NULL, NULL, NULL, NULL, 944),
(112, NULL, NULL, NULL, NULL, 946),
(113, NULL, NULL, NULL, NULL, 947),
(114, NULL, NULL, NULL, NULL, 948),
(115, NULL, NULL, NULL, NULL, 949),
(116, NULL, NULL, NULL, NULL, 950),
(117, NULL, NULL, NULL, NULL, 951),
(118, NULL, NULL, NULL, NULL, 952),
(119, NULL, NULL, NULL, NULL, 953),
(120, NULL, NULL, NULL, NULL, 954),
(121, NULL, NULL, NULL, NULL, 955),
(122, NULL, NULL, NULL, NULL, 956),
(123, NULL, NULL, NULL, NULL, 957),
(124, NULL, NULL, NULL, NULL, 958),
(125, NULL, NULL, NULL, NULL, 959),
(126, NULL, NULL, NULL, NULL, 960),
(127, NULL, NULL, NULL, NULL, 961),
(128, NULL, NULL, NULL, NULL, 962),
(129, NULL, NULL, NULL, NULL, 963),
(130, NULL, NULL, NULL, NULL, 964),
(131, NULL, NULL, NULL, NULL, 965),
(132, NULL, NULL, NULL, NULL, 966),
(133, NULL, NULL, NULL, NULL, 967),
(134, NULL, NULL, NULL, NULL, 968),
(135, NULL, NULL, NULL, NULL, 969),
(136, NULL, NULL, NULL, NULL, 970),
(137, NULL, NULL, NULL, NULL, 971),
(138, NULL, NULL, NULL, NULL, 972),
(139, NULL, NULL, NULL, NULL, 973),
(140, NULL, NULL, NULL, NULL, 974),
(141, NULL, NULL, NULL, NULL, 975),
(142, NULL, NULL, NULL, NULL, 977),
(143, NULL, NULL, NULL, NULL, 976),
(144, NULL, NULL, NULL, NULL, 979),
(145, NULL, NULL, NULL, NULL, 978),
(146, NULL, NULL, NULL, NULL, 980),
(147, NULL, NULL, NULL, NULL, 983),
(148, NULL, NULL, NULL, NULL, 982),
(149, NULL, NULL, NULL, NULL, 981),
(150, NULL, NULL, NULL, NULL, 984),
(151, NULL, NULL, NULL, NULL, 985),
(152, NULL, NULL, NULL, NULL, 986),
(153, NULL, NULL, NULL, NULL, 988),
(154, NULL, NULL, NULL, NULL, 987),
(155, NULL, NULL, NULL, NULL, 989),
(156, NULL, NULL, NULL, NULL, 990),
(157, NULL, NULL, NULL, NULL, 993),
(158, NULL, NULL, NULL, NULL, 993),
(159, NULL, NULL, NULL, NULL, 992);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimientoprincipal`
--

CREATE TABLE `seguimientoprincipal` (
  `fkIdRegistroSegPrincipal` int(11) DEFAULT NULL,
  `usuario` varchar(450) DEFAULT NULL,
  `fechaseguimiento` date DEFAULT NULL,
  `estatusSeguimiento` varchar(450) DEFAULT 'Sin cambios',
  `comentarios` varchar(1000) DEFAULT 'Sin comentarios',
  `idseguimientoPrincipal` int(11) NOT NULL,
  `estacionPrincipal` varchar(45) DEFAULT NULL,
  `subEstatus` varchar(45) DEFAULT NULL,
  `respuestaSolera` varchar(450) DEFAULT 'Sin cambios',
  `personaContactada` varchar(450) DEFAULT 'Sin cambios',
  `tipodePersona` varchar(450) DEFAULT 'Sin cambios',
  `contacto` varchar(450) DEFAULT 'Sin cambios',
  `integraciondeexpediente` varchar(45) DEFAULT 'Sin cambios',
  `facturaciondeservicio` varchar(45) DEFAULT 'Sin cambios',
  `termino` varchar(45) DEFAULT 'Sin cambios',
  `fechaasigncion` varchar(45) DEFAULT NULL,
  `usuarioAsignado` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `seguimientoprincipal`
--

INSERT INTO `seguimientoprincipal` (`fkIdRegistroSegPrincipal`, `usuario`, `fechaseguimiento`, `estatusSeguimiento`, `comentarios`, `idseguimientoPrincipal`, `estacionPrincipal`, `subEstatus`, `respuestaSolera`, `personaContactada`, `tipodePersona`, `contacto`, `integraciondeexpediente`, `facturaciondeservicio`, `termino`, `fechaasigncion`, `usuarioAsignado`) VALUES
(836, 'Teresa Medina', '2022-11-02', 'SIN CONTACTO', 'SE MARCA A TODOS LOS NUMEROS PERO NO DAN LINEA Y OTROS ENTRAN A BUZON, LOS MENSAJES NO LLEGAN Y EL UNICO QUE SI A VISTO MENSAJES PERO NO CONTESTA ES EL 3338229588,  EL NUEVO NUMERO NO TIMBRA Y MANDA A BUZON, SE SOLICITA A COORDINACION CERRAR SINIESTRO', 62, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(836, 'Teresa Medina', '2022-11-01', 'SIN CONTACTO', 'SE MARCA AL NUEVO NUMERO PERO ENTRA DIRECTO A BUZON Y LOS MENSAJES DE WHATS NO LE LLEGAN', 63, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(836, 'Teresa Medina', '2022-10-31', 'SIN CONTACTO', 'SE MARCA AL NUEVO TELEFONO DE CONTACTO, NO DA TONO, SE MANDA MENSAJE DE WHATS', 64, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(836, 'Ivet Gonz lez', '2022-10-29', 'SIN CONTACTO', 'SE BRINDA DATO ADICIONAL', 65, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(836, 'Teresa Medina', '2022-10-28', 'SIN CONTACTO', '1ER, TEL, MANDA A BUZON SIN TIMBRAR, NO LE LLEGAN LOS WHATS    2DO. NO CONTESTA SE MANDA WHATS PERO NO LE LLEGAN  3ER. NO CONTESTA Y SE ENVIA WHATS, LOS VE PERO NO CONTESTA  4TO SE MARCA Y MANDA A BUZON , SE MANDA WHATS PERO NO LE LLEGA, SE SOLICITA A COORDINACION NUEVOS NUMEROS DE CONTACTO', 66, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(836, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA AL 1ER. TEL Y MANDA DIRECTO A BUZON, SE MANDA WHATS PERO NO LLEGAN LOS MENSAJES,  2DO TEL NO CONTESTA SE ENVIA WHATS NUEVAMENTE, HA VISTO LOS MENSAJES PERO NO CONTESTA,  3ER TEL  NO CONTESTA SE ENVIA WHATS ,  4 TO TEL  MANDA DIRECTO A BUZON , SE MANDA WHATS NUEVAMENTE PERO NO LOS RECIBE,', 67, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(836, 'Ivet Gonz lez', '2022-10-27', 'SIN CONTACTO', 'SE MARCA AL 1ER. TEL Y MANDA DIRECTO A BUZON, SE MANDA WHATS PERO NO LLEGAN LOS MENSAJES, 2DO TEL NO CONTESTA SE ENVIA WHATS NUEVAMENTE, HA VISTO LOS MENSAJES PERO NO CONTESTA, 3ER TEL NO CONTESTA SE ENVIA WHATS , 4 TO TEL MANDA DIRECTO A BUZON , SE MANDA WHATS NUEVAMENTE PERO NO LOS RECIBE,', 68, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(836, 'Teresa Medina', '2022-10-25', 'SIN CONTACTO', '1ER TEL, NO ENTRA LLAMADA Y NO CONTESTA WHATS   2DO. TEL MANDA DIRECTO A BUZON  3ER. TEL  NO CONTESTA SE MANDA WHATS 4TO. MANDA DIRECTO A BUZON, SE ENVIA WHATS', 69, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(836, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 70, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(836, 'Teresa Medina', '2022-10-20', 'SIN CONTACTO', '17/10/2022  SE MARCA 2 VECES Y MANDA DIRECTO A BUZON, SE ENVIA WHATS,   20/10/2022  NO CONTESTA Y SE VUELVE A ENVIAR WHATS', 71, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(836, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA EL SR. MEDINA QUE ESTA REUNIENDO LOS DOCUMENTOS Y EN BREVE LOS ENVIA', 72, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(835, 'Ivet Gonz lez', '2022-10-20', 'CONCLUIDO POR OTRAS VIAS (BARRA, OFICINA, BROKER)', 'SE CIERRA SINIESTRO YA QUE NA YA CONCLUYO SU TRAMITE POR MEDIO DE BARRA Y YA FUE REPARADA SU UNIDAD', 73, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(837, 'Ivet Gonz lez', '2022-10-28', 'DATOS INCORRECTOS', 'SE CIERRA SINIESTRO YA QUE EN GEAS NO HAY DATO ADICIONAL Y EN GOOGLE NO APARECE EMPRESA', 84, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(837, 'Ivet Gonz lez', '2022-10-27', 'SIN CONTACTO', 'NO SE CUENTA CO DATOS ADICIONALES EN GEAS, PENDIENTE DE CIERRE', 85, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(837, 'Teresa Medina', '2022-10-26', 'SIN CONTACTO', 'PROPORCIONA COORDINACION EL MISO TELEFONO DEL HOSPITAL ARBOLEDAS, NO CONOCEN A LOS TITULARES Y TAMPOCO LA UNIDAD', 86, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(837, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 87, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(837, 'Teresa Medina', '2022-10-25', 'SIN CONTACTO', 'EN ESPERA DE CIERRE DE SINIESTRO', 88, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(837, 'Teresa Medina', '2022-10-21', 'SIN CONTACTO', 'ME CONTACTO AL TEL‚FONO PROPORCIONADO POR COORDINACION Y ES DEL HOSPITAL ARBOLEDAS, ME COMUNICAN A 3  REAS DIFERENTES Y NO CONOCEN A ESA PERSONA Y DESCONOCEN EL VEHICULO COMO UNIDAD PARA EL SERVICIO DEL HOSPITAL', 89, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(837, 'Teresa Medina', '2022-10-20', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA EL SR. GUSTAVO VAZQUEZ QUE NUNCA A TENIDO UN SINIESTRO CON ANA SEGUROS', 90, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(838, 'Teresa Medina', '2022-11-02', 'DE 1 A 3 DOCUMENTOS', 'COMENTA ERICK IVAN QUE CUANDO TENGA LOS DOCUMENTOS LOS ENVIARA, QUE ESTA SATURADO DE TRABAJO', 95, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(838, 'Teresa Medina', '2022-11-01', 'DE 1 A 3 DOCUMENTOS', 'SE MARCA PERO MANDA A BUZON, SE ENVIA MENSAJE DE WHATS SOLICITANDO SUS DOCUMENTOS', 96, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(838, 'Teresa Medina', '2022-10-31', 'DE 1 A 3 DOCUMENTOS', 'CONTESTA WHATS EN DONDE SE INFORMO QUE TAMBIEN POR ESE MEDIO PUEDE ENVIAR DOCUMENTOS', 97, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(838, 'Teresa Medina', '2022-10-28', 'DE 1 A 3 DOCUMENTOS', 'SE ENVIA WHATS SOLICITANDO SUS DOCUMENTOS', 98, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(838, 'Teresa Medina', '2022-10-27', 'DE 1 A 3 DOCUMENTOS', 'COMENTA ERICK IVAN QUE NO HA TENIDO TIEMPO DE ENVIAR LOS DOCUMENTOS, QUE LE DE TIEMPO', 99, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(838, 'Teresa Medina', '2022-10-26', 'DE 1 A 3 DOCUMENTOS', 'SE MARCA PERO MANDA DIRECTO A BUZON, SE MANDA CORREO DE SEGUIMIENTO', 100, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(838, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 101, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(838, 'Teresa Medina', '2022-10-24', 'DE 1 A 3 DOCUMENTOS', 'NOS COMENTA QUE LOS DOCUMENTOS LOS SUBIO A LA PLATAFORMA DE LA OTRA EMPRESA, SE SOLICITA LOS ENVIE O SUBA A NUESTRA PLATAFORMA', 102, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(838, 'Teresa Medina', '2022-10-21', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA AL SR. MEDINA Y SOLICITA SE LE ENVIE NUEVAMENTE EL LISTADO, SE MANDA POR CORREO', 103, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(838, 'Teresa Medina', '2022-10-21', 'DE 1 A 3 DOCUMENTOS', 'ENVIA POR CORREO RFC Y COMPROBANTE DE DOMICILIO, FALTA FACTURA, INE, PODER NOTARIAL, EDO DE CTA ACTUALIZADO, POLIZA, BAJA Y TENENCIAS (LA POLIZA, BAJA Y TENENCIAS  QUE ENVIO, SON DE OTRA UNIDAD), SE INFORMA POR CORREO', 104, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(838, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA EL SR. MEDINA QUE ESTA REUNIENDO LOS DOCUMENTOS Y EN BREVE LOS ENVIA', 105, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(839, 'Ivet Gonz lez', '2022-10-26', 'DATOS INCORRECTOS', 'SE CIERRA SINIESTRO YA QUE EN GEAS NO SE CUENTA CON DATO ADICIONAL Y EMPRESA NO APARECE EN GOOGLE', 106, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(839, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 107, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(839, 'Teresa Medina', '2022-10-24', 'SIN CONTACTO', 'NOS COMPARTEN NUEVO CONTACTO INTERNATIONAL BUSINESS AND BEST MONEY SA DE CV 3326009442, EL CUAL ES EQUIVOCADO Y SOLICITA NO SE LE ESTE MARCANDO, SE BUSCA LA EMPRESA POR INTERNET PERO NO HAY MAS DATOS', 108, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(839, 'Teresa Medina', '2022-10-21', 'SIN CONTACTO', 'SE SOLICITA A COORDINACION NUEVO NUMERO DE CONTACTO', 109, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(839, 'Teresa Medina', '2022-10-20', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA EL SR. RAFAEL SANCHEZ QUE TIENE UN A¤O QUE DEJO DE LABORAR CON EL DUE¤O DE LA UNIDAD Y NO CUENTA CON MAS DATOS', 110, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(840, 'Teresa Medina', '2022-11-02', 'SIN CONTACTO', '1ER TEL NO DA TONO Y ENTRA DIRECTO A BUZON    2DO TEL, ES DE EMPRESA Y ENTRA DIRECTO A BUZON, SE SOLICITA A COORDINACION EL CIERRE DE SINIESTRO', 128, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(840, 'Teresa Medina', '2022-11-01', 'SIN CONTACTO', '1ER. TEL NO DA LINEA Y MANDA DIRECTO A BUZON, NO LE LLEGAN LOS MENSAJES DE WHATS   2DO. TEL ENTRA DIRECTO A BUZON Y NO HAY MAS NUMEROS REGISTRADOS EN INTERNET', 129, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(840, 'Teresa Medina', '2022-10-31', 'SIN CONTACTO', '1ER. TEL  NO DA LINA, LOS MENSAJES DE WHATS NO LE LLEGAN  2DO TEL. ES DE UNA EMPRESA PERO ENTRA DIRECTO A BUZON', 130, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(840, 'Teresa Medina', '2022-10-28', 'SIN CONTACTO', 'SE VUELVE A MARCAR Y MANDA A BUZON DIRECTAMENTE, LOS MENSAJES DE WHATS SIN LLEGAR (NO HAY TELEFONOS ADICIONES DE CONTACTO)', 131, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(840, 'Ivet Gonz lez', '2022-10-28', 'SIN CONTACTO', 'NO SE CUENTA CON DATO ADICIONAL EN GEAS, SE GOOGLEA Y SE AGREGA DATO ADICIONAL', 132, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(840, 'Teresa Medina', '2022-10-27', 'SIN CONTACTO', 'SE MARCA Y MANDA DIRECTO A BUZON, LOS MENSAJES DE WHATS NO LE LLEGAN', 133, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(840, 'Teresa Medina', '2022-10-25', 'SIN CONTACTO', 'SE MARCA Y MANDO DIRECTO A BUZON, LOS MENSAJES DE WHATS NO LLEGAN, SE SOLICITA A COORDINACION TELEFONOS ADICIONALES', 134, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(840, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 135, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(840, 'Teresa Medina', '2022-10-21', 'SIN CONTACTO', 'SE MARCA Y MANDA A BUZON, SE HABIA ENVIO AYER MENSAJE POR WHATS  PERO AL PARECER ESTA TOTALMENTE DESCONECTADO, INTENTAR POSTERIORMENTE', 136, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(840, 'Teresa Medina', '2022-10-20', 'SIN CONTACTO', 'SE MARCA Y MANDA DIRECTO A BUZON, SE ENVA WHATS, NO HAY CORREO', 137, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(840, 'Teresa Medina', '2022-10-19', 'SIN CONTACTO', 'SE MARCA NUEVAMENTE Y MANDA A BUZON, SE ENVIA SMS', 138, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(841, 'Teresa Medina', '2022-11-02', 'SIN CONTACTO', 'SE MARCA NUEVAMENTE AL NUEVO NUMERO PERO AUNQUE ENTRA LA LLAMADA CORTA Y LOS MENSAJES DE WHATS SE ELIMINAN A LAS 24 HORAS', 139, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(841, 'Teresa Medina', '2022-11-01', 'SIN CONTACTO', 'SE ARCA NUEVAMENTE AL 3333931873 PERO MANDA A BUZON Y LOS MENSAJES DE WHATS LOS BORRA EN AUTOMATICO', 140, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(841, 'Teresa Medina', '2022-10-31', 'SIN CONTACTO', 'SE MARCA AL SR. BENJAMIN TORRES   DOS VECES PERO NO CONTESTA ENTRA A BUZON, SE ENVIA WHATS , CABE MENCIONAR QUE EL USUARIO CUENTA CON APLICACION DE PREDETERMINADA QUE BORRA LOS MENSAJES A LAS 24 HORAS', 141, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(841, 'Teresa Medina', '2022-10-28', 'SIN CONTACTO', 'SE MARCA AL NUEVO NUMERO DE CONTACTO PERO ENTRA A BUZON SIN TIMBRAR, SE ENVIA WHATS', 142, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(841, 'Teresa Medina', '2022-10-27', 'SIN CONTACTO', 'SE CONTACTA A LA SRITA RUBI ESTEFANIA GOMEZ FRANCO Y COMENTA QUE NO TIENE MOTO Y NINGUN SINIESTRO CON ANA, SE CANALIZA A COORDINACI¢N PARA NUEVOS DATOS O CIERRE', 143, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(841, 'Ivet Gonz lez', '2022-10-27', 'SIN CONTACTO', 'SE BRINDA DATO ADICIONAL', 144, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(841, 'Teresa Medina', '2022-10-26', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA AL PRIMER TELEFONO Y SE CORROBORA NUMERO, NOS PROPORCIONA EL CORREO Y SE MARCA PERO ENTRA A BUZON, SE ENVIA WHATS', 145, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(841, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 146, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(841, 'Teresa Medina', '2022-10-25', 'SIN CONTACTO', 'EN ESPERA DE RESPUESTA POR PARTE DE COORDINACION', 147, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(841, 'Teresa Medina', '2022-10-21', 'SIN CONTACTO', 'SE CONTACTA AL NUMERO REGISTRADO Y COMPARTE NUEVO TELEFONO DE CONTACTO EL CUAL ESTA ERRADO', 148, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(841, 'Teresa Medina', '2022-10-21', 'SIN CONTACTO', 'SE SOLICITA A COORDINACION TELEFONOS ADICIONALES DE CONTACTO', 149, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(842, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'CONTESTA EL SR. ROGELIO Y COMENTA QUE INGRESO DOCUMENTOS EL 8 DIC 2021 Y QUE SE PARO EL PROCESO PORQUE LE DESCONTABAN UN PORCENTAJE POR SER UNIDAD DE SALVAMENTO, EL TARMITE LO LLEVA CON BERTHA ORDO¤EZ  Y ESTAN POR RESOLVER EL ASUNTO', 150, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(842, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'SE SOLICITA A COORDINACION CERRAR SINIESTRO', 151, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(842, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'CONTAESTA WHATS Y PROPORCIONA DATOS DEL SR. ROGELIO  552770 0514 QUIEN LLEVA EL TRAMITE, SE MARCA PERO NO CONTESTA,  SE ENVIA MENSAJE DE WHATS', 152, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(842, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA NUEVAMENTE PERO NO CONTESTA, TAMPOCO A CONTESTADO LOS MENSAJES DE WHATS', 153, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(842, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA VARIAS VECES PERO NO CONTESTA Y MANDA A BUZON, SE VUELVE A MANDAR WHATS SOLICITANDO ACUSE DE RECEPCION DE ORIGINALES (EL MENSAJE ANTERIOR YA LO VIO PERO NO HA CONTESTADO)', 154, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(842, 'Ivet Gonz lez', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'EN SISTEMA AUN NO SE VE REFLEJADO EL PAGO DE ESTE SINIESTRO, FAVOR DE SOLICITAR SU ACUSE A NA.', 155, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(842, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA PERO NO CONTESTA, SE ENVIA WHATS SOLICITANDO EL ACUSE DE RECEPCION DE ORIGINALES', 156, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(842, 'Ivet Gonz lez', '2022-10-26', 'CON CONTACTO SIN DOCUMENTOS', 'PENDIENTE DE RESPUESTA POR PARTE DE GEAS YA QUE NA COMENTA QUE YA SE LE PAGO, SE SOLICITA APOYO A LAURA', 157, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(842, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 158, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(842, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'SE ESCALA A COORDINACION PARA CIERRE DE SINIESTRO', 159, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(842, 'Teresa Medina', '2022-10-18', 'TOTAL DE DOCUMENTOS', 'SE CONTACTA AL SR. FRANCISCO JAVIER MARTINEZ QUINTO Y NOS COMENTA QUE YA ENTREGO ORIGINALES EN LA ASEGURADORA Y ESTAN EN ESPERA DE DICTAMEN POR UNA SITUACION CON  LA COBERTURA DE SU POLIZA', 160, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(843, 'Teresa Medina', '2022-10-28', 'SIN CONTACTO', 'EN ESPERA DE CIERRE DE SINIESTRO POR FALTA DE CONTACTO', 161, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(843, 'Ivet Gonz lez', '2022-10-28', 'DATOS INCORRECTOS', 'SE CIERRASINIESTRO YA QUE EN GEAS NO HAY DATO ADICIONAL Y EN EL BRINDADO ESTA EQUIVOCADO', 162, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(843, 'Teresa Medina', '2022-10-26', 'SIN CONTACTO', 'PROPORCIONAN MISMOS NUMERO, SE SOLICITA A COORDINACION OTROS DATOS ADICIONES', 163, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(843, 'Ivet Gonz lez', '2022-10-26', 'SIN CONTACTO', 'PENDIENTE DE CIERRE YA QUE EN GEAS NO HAY MAS DATOS ADICIONALES', 164, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(843, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 165, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(843, 'Teresa Medina', '2022-10-25', 'SIN CONTACTO', 'EN ESPERA DE PARTE DE COORDINACION', 166, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(843, 'Teresa Medina', '2022-10-20', 'SIN CONTACTO', 'SE MARCA A LOS NUEVOS TELEFONOS DE CONTACTO Y UNO ES DE CONDOMINIOS SANTA ANITA Y NO CONOCEN NI A LA ASEGURADA NI AL SR. DEL TORO, EL SEGUNDO CONTESTA EL SR. DEL TORO YE INFORMA QUE NO TIENE SEGURO CON ANA, O CONOCE A LA ASEGURADA Y NO TIENE UN AUDI', 167, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(843, 'Teresa Medina', '2022-10-19', 'SIN CONTACTO', 'TELEFONO  INEXISTENTE, NO HAY CORREO', 168, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(843, 'Teresa Medina', '2022-10-18', 'SIN CONTACTO', 'TELEFONO INEXISTENTE, MARCAR MA¤ANA, NO HAY CORREO REGISTRADO', 169, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(843, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'SE ESCALA A COORDINACION PARA CIERRE DE SINIESTRO', 170, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(843, 'Teresa Medina', '2022-10-18', 'TOTAL DE DOCUMENTOS', 'SE CONTACTA AL SR. FRANCISCO JAVIER MARTINEZ QUINTO Y NOS COMENTA QUE YA ENTREGO ORIGINALES EN LA ASEGURADORA Y ESTAN EN ESPERA DE DICTAMEN POR UNA SITUACION CON  LA COBERTURA DE SU POLIZA', 171, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(844, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE ENTREGA DE ORIGIANLES (7/11/2022)', 172, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(844, 'Teresa Medina', '2022-11-01', 'DE 7 A 10 DOCUMENTOS', 'ENTREGARA ORIGINALES EL 7 DE NOVIEMBRE A LAS 11', 173, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(844, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO AL 3310136227 CON ALEXA CARDENAS, ENVIO POR WHATS LISTADO Y SE SOLICITA EL ENVIO DE SUS DOCUMENTOS', 174, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(844, 'Teresa Medina', '2022-10-31', 'DE 7 A 10 DOCUMENTOS', 'COMPLETA DOCUMENTOS, EN ESPERA POR PARTE DEL AREA DE COORDINACION RESPECTO AL CONTRATO BANCARIO', 175, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(844, 'Teresa Medina', '2022-10-31', 'DE 7 A 10 DOCUMENTOS', 'SE GENERA CITA PARA ENTREGA DE ORIGINALES EL DIA 7 DE NOVIEMBRE A LAS 11 EN L ZARO C RDENAS 3590 COL. JARDINES DE SAN IGNACIO ZAPOPAN', 176, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(844, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA Y NO CONTESTA, SE MANDA WHATS PREGUNTANDO SI CANALIZO MI CORREO A LA SRITA. CARDENAS', 177, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(844, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO AL SEGUNDO TELEFONO Y COMENTA EL SR. MORGAN QUE LE FALTAN ALGUNOS DOCUMENTOS, ME COMUNICA A LA SRITA ALEXA CARDENAS Y ME SOLICITA LE ENVIE MI CORREO POR WHATS PARA MANDAR LOS DOCUMENTOS', 178, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(844, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA AL 1ER. TELEFONO PERO NOS PROPORCIONA NUEVO CONTACTO MORGAN DE LA CRUZ Y NUMERO TELEFONICON SE LLAMA PERO MANDA A BUZON, SE ENVIA WHATS DE SEGUIMIENTO', 179, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(844, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 180, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(844, 'Teresa Medina', '2022-10-18', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA AL SR. VICTOR MANUEL DE LA CRUZ Y COMENTA QUE SOLO LE FALTA UN REFRENDO, SE SOLICITA ENVIE DOCUMENTOS POR CORREO PARA SU VALIDACION, QUEDA DE MANADARLOS A LA BREVEDAD', 181, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(844, 'Teresa Medina', '2022-10-18', 'TOTAL DE DOCUMENTOS', 'SE CONTACTA AL SR. FRANCISCO JAVIER MARTINEZ QUINTO Y NOS COMENTA QUE YA ENTREGO ORIGINALES EN LA ASEGURADORA Y ESTAN EN ESPERA DE DICTAMEN POR UNA SITUACION CON  LA COBERTURA DE SU POLIZA', 182, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(845, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'BUSCO LA FINANCIERA EN INTERNET SIN EXITO, SE SOLICITA AL LIC. LOPEZ NOS PROPORCIONE LOS DATOS, PERO COMENTA QUE SE EQUIVOCO DE NOMBRE, QUE PREGUNTARA A SU PRIMA Y EN BREVE ME DARA', 183, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(845, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'SE SOLICITA MAS DATOS DE CONTACTO A COORDINACION', 184, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(845, 'Ivet Gonz lez', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'SE BRINDA DATO ADICIONAL ELVA GRISELDA BAEZA URIBE 3319756807', 185, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(845, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTA EL LIC. MARTIN LOPEZ PRIMO DE LA ASEGURADA Y COMENTA QUE LA FINANCIERA NO LES HA APOYADO POR UN TEMA DE PAGOS VENCIDOS, COMPARTE EL NOMBRE DE LA FINANCIERA PERO LOS TELEFONOS REGISTRADOS EN INTERNET  NO EXISTEN SE SOLICITA PROPORCIONE TELEFONO DIRECTO DE CONTACTO', 186, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(845, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA NUEVAMENTE PERO NO CONTESTA Y ENTRA A BUZON , SE MANDA MENSAJE DE WHATS (NO HA CONTESTADO NINGUN WHATS)', 187, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(845, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA 2 VECES Y MANDA A BUZON Y SE ENVIA NUEVAMENTE WHATS QUE HA VISTO PERO NO HA CONTESTADO', 188, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(845, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'TEL 2 SE MARCA VARIAS VECES Y MANDA A BUZON, SE ENVIA NUEVAMENTE WHATS (EL ANTERIOR NO LO HA CONTESTADO)', 189, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(845, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 190, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(845, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'TEL 2, SE MARCA  Y MANDA A BUZON, SE ENVIA WHATS DE SEGUIMIENTO (NO CONTESTO EL ANTERIOR MENSAJE)', 191, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(845, 'Teresa Medina', '2022-10-20', 'CON CONTACTO SIN DOCUMENTOS', 'CONTESTA MENSAJE Y SE ENVIA LISTADO POR WHAT', 192, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(845, 'Teresa Medina', '2022-10-19', 'SIN CONTACTO', 'SE MARCA SIN EXITO, MANDA A BUZON, SE VUELVE ENVIAR SMS', 193, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(845, 'Teresa Medina', '2022-10-18', 'SIN CONTACTO', 'SE MARCA AL PRIMER NUMERO Y NOS PROPORCIONA EL USUARIO EL 3322095023, SE MARCA TRES VECES PERO NO CONTESTA Y MANDA A BUZON, SE ENVIA SMS DE SEGUIMIENTO', 194, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(846, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA 2 VECES Y NO CONTESTA ENTRA A BUZON, SE ENVIA OTRO MENSAJE DE WHATS, CABE MENCIONAR QUE EL OTRO MENSAJE NO LO HA CONTESTADO', 195, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(846, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'COMPARTE EL SR. MORALES DATOS DE LA PERSONA QUE LLEVA EL SINIESTRO (MARCO CARRILLO 554377 5230)  PERO NO CONTESTA, SE MANDA WHATS', 196, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(846, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA DOS VECES Y NO CONTESTA , MANDA A BUZON, SE MANDA MWNSAJE DE WHATS', 197, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(846, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'SE LE ENVIA MENSAJE DE WHATS SOLICITANDO DOCUMENTOS PARA REVISION', 198, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(846, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA AL 5537175707 DEL SR. GUILLERMO MORALES PERO NO CONTESTA, SE ENVIA WHATS DE SEGUIMIENTO Y CONTESTA QUE ESTA EN PROCESO, SE ENVIA LISTADO PARA QUE ENVIE DOCUMENTOS', 199, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(846, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 200, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(846, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA AL TELEFONO 2 Y MANDA A BUZON, SE ENVIA CORREO DE SEGUIMIENTO SOLICITANDO DOCUMENTOS', 201, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(846, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'SE REENVIA POR CORREO  CHECK LIST PARA EL ENVIO DE DOCUMENTOS', 202, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(846, 'Teresa Medina', '2022-10-18', 'CON CONTACTO SIN DOCUMENTOS', 'TELEFONO NO DISPONOBLE 5543905863, SE MARCA EL 5537175707 Y PROPORCIONA CORREO GUILLERMO.MORALES@LOGITEL.COM.MX PARA ENVIAR LISTADO', 203, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(846, 'Teresa Medina', '2022-10-20', 'CON CONTACTO SIN DOCUMENTOS', 'CONTESTA MENSAJE Y SE ENVIA LISTADO POR WHAT', 204, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(846, 'Teresa Medina', '2022-10-19', 'SIN CONTACTO', 'SE MARCA SIN EXITO, MANDA A BUZON, SE VUELVE ENVIAR SMS', 205, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(846, 'Teresa Medina', '2022-10-18', 'SIN CONTACTO', 'SE MARCA AL PRIMER NUMERO Y NOS PROPORCIONA EL USUARIO EL 3322095023, SE MARCA TRES VECES PERO NO CONTESTA Y MANDA A BUZON, SE ENVIA SMS DE SEGUIMIENTO', 206, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(847, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'SOLICITO TIEMPO AUN NO CUENTA CON DOCUMENTOS', 207, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(847, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO CON EL SR. MORENO Y COMENTA QUE RECIBIO EL LISTADO DE TODOS LOS SINIESTROS QUE TIENEN PERO QUE AUN NO TIENEN NINGUN DOCUMENTOS PARA REVISION, SOLICITA TIEMPO', 208, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(847, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'SE ENVIA CORREO DE SEGUIMIENTO PARA EL ENVIO DE DOCUMENTOS', 209, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(847, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'SE ENVIA LISTADO POR CORREO DE LOS SINIESTROS PENDIENTES POR DOCUMENTAR', 210, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(847, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 211, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(847, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA AL PRIMER NUMERO Y PROPORCIONAN NUEVO CONTACTO  FEDERICO MORENO 3330070401 VEHICULOS.PATRIMONIO@GMAIL.COM, SE ENVIA CORREO CON LISTADO  Y LIGA', 212, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(847, 'Teresa Medina', '2022-10-18', 'SIN CONTACTO', 'COMENTA LA PERSONA QUE CONTESTO QUE ES UNA PATRULLA Y EL NOMBRE  Y TELEFONO QUE APARECE COMO TITULAR NO TIENE NADA QUE VER CON EL ASUNTO, SE MARCA AL TELEFONO 3332583776 TELEFONO REGISTRADO (33325837762) POR EL ANTERIOR DESPACHO Y MANDA DIRECTO A BUZON, SE INTENTARA MAS TARDE', 213, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(848, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'SOLICITO TIEMPO AUN NO CUENTA CON DOCUMENTOS', 219, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(848, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO CON EL SR. MORENO Y COMENTA QUE RECIBIO EL LISTADO DE TODOS LOS SINIESTROS QUE TIENEN PERO QUE AUN NO TIENEN NINGUN DOCUMENTOS PARA REVISION, SOLICITA TIEMPO', 220, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(848, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'SE MANDA  CORREO DE SEGUIMIENTO PARA EL ENVIO DE DOCUMENTOS', 221, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(848, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'SE ENVIA LISTADO POR CORREO DE LOS SINIESTROS PENDIENTES POR DOCUMENTAR', 222, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(848, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 223, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(848, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'SE REENVIA CORREO CON LISTADO A FEDERICO MORENO QUIEN ES ENCARGADO DE LA GESTION DE SINIESTROS, EN CUANTO PUEDA SUBIRA DOCUMENTOS', 224, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(848, 'Teresa Medina', '2022-10-18', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA AL TELEFONO 3330070401 CON EL SE¤OR FEDERICO MORENO Y PROPORCIONA CORREO VEHICULOS.PATRIMONIO@GMAIL.COM Y SE SOLICITA ENVIE DOCUMENTOS PARA REVISION', 225, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(849, 'Teresa Medina', '2022-11-02', 'SIN CONTACTO', '1ER TEL EQUIVOCADO,   2DO. TEL EQUIVOCADO   3ER. NUMERO NO EXISTE, SE SOLICITA A COORDINACI¢N EL CIERRE DEL SINIESTRO', 231, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(849, 'Teresa Medina', '2022-11-01', 'SIN CONTACTO', 'LOS TELEFONOS DE CONTACTO NO FUNCIONAN Y SE MANDA CORREO (CABE MENCIONAR QUE NO HA CONTESTADO LOS ANTERIORES)', 232, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(849, 'Teresa Medina', '2022-10-31', 'SIN CONTACTO', 'SE MARCA PERO NO CONTESTA, SE MANDA MENSAJE DE WHATS PERO NO LE LLEGAN, SE ENVIA NUEVAMENTE CORREO DE SEGUIMIENTO (NO HA CONTESTADO LOS ANTERIORES)', 233, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(849, 'Teresa Medina', '2022-10-28', 'SIN CONTACTO', 'SE ENVIA NUEVAMENTE CORREO DE SEGUIIENTO, NO HAY MAS CONTACTO', 234, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(849, 'Ivet Gonz lez', '2022-10-27', 'SIN CONTACTO', 'SE BRINDAN DATOS ADICIONALES A TERE', 235, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(849, 'Teresa Medina', '2022-10-27', 'SIN CONTACTO', 'SE MARCA AL PRIMER TEL PROPORCIONADO POR COODINACION ( 3314176333) PERO EL USUARIO NO CONOCE AL SR. OMAR VILLARREAL ANGUIANO Y TAMPOCO A LA UNIDAD, SE MARCA AL SEGUNDO NUMERO Y NO EXISTE 3336744671SE ENVIA CORREO', 236, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(849, 'Ivet Gonz lez', '2022-10-26', 'SIN CONTACTO', 'SE SOLICITA DATO ADICIONAL DE CONTACTO A LAURA', 237, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(849, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 238, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(849, 'Teresa Medina', '2022-10-25', 'SIN CONTACTO', 'EN ESPERA POR PARTE DE COORDINACION', 239, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(849, 'Teresa Medina', '2022-10-21', 'SIN CONTACTO', 'SE SOLICITA APOYO A CORDINACION PARA MAS TELEFONOS DE CONTACTOS', 240, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(849, 'Teresa Medina', '2022-10-18', 'SIN CONTACTO', 'SE MARCA AL NUMERO REGISTRADO Y NO CONTESTA, SE ENVIA MENSAJE SMS, LLAMAR MAS TRADE', 241, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(849, 'Teresa Medina', '2022-10-18', 'CON CONTACTO SIN DOCUMENTOS', 'NOS CONTACTA EL SR. ABRAHAM OMAR GOMEZ ESTEBAN E INFORMA QUE EL CONDUCIA EL AUTO QUE SE SINIESTRO, SE LE SOLICITA EL CONTACTO DEL DUE¤O DE LA UNIDAD PERO SE NIEGA A PROPORCIONARLOS, SE LE SOLICITA BRINDE LOS DATOS A LA PERSONA INDICADA', 242, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(850, 'Ivet Gonz lez', '2022-10-28', 'DATOS INCORRECTOS', 'SE CIERRA SINIESTRO YA QUE NO HYA DATOS ADICIONALES EN GEAS Y DATO BRINDADO ESTA EQUIVOCADO Y EL OTRO NO EXISTE', 243, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(850, 'Teresa Medina', '2022-10-27', 'SIN CONTACTO', 'SE INFORMA A COORDINACION QUE EL TELEFONO NUEVO QUE COMPARTIERON ESTA ERRADO Y EN LA EMPRESA QUE SE INVESTIGO TAMPOCO RECONOCEN A LA PERSONA NI LA UNIDAD', 244, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(850, 'Teresa Medina', '2022-10-26', 'SIN CONTACTO', 'EL NUEVO TELEFONICO QUE COMPARTE COORDINACION ES DE ANA SEGUROS Y NO CONOCEN AL TERCERO', 245, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(850, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 246, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(850, 'Teresa Medina', '2022-10-25', 'SIN CONTACTO', 'EN ESPERA DE RESPUESTA POR PARTE DE COORDINACION', 247, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(850, 'Teresa Medina', '2022-10-20', 'SIN CONTACTO', 'SE LLAMA AL NUEVO TELEFONO DE CONTACTO Y NO CONOCEN AL SR. RUBEN GARCIA QUIRARTE (5553228266 RC PERSONAS2,040.3090000 - ANA TRAMITADOR TURISTAS)', 248, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(850, 'Teresa Medina', '2022-10-18', 'TOTAL DE DOCUMENTOS', 'SIN DATOS DE CONTACTO', 249, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(851, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA COORDINACION QUE NO TIENEN PAGO REFLEJADO, HABLAR MA¥ANA A ANA PARA CORROBORAR RECEPCION DE ORIGINALES', 255, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(851, 'Teresa Medina', '2022-11-01', 'SIN CONTACTO', 'ME CONTACTO CON LA SRITA SANABRIA E INFORMA QUE LA EMPRESA EUROELCTRICA  SA DE CV YA ENTREGO DOCUMENTOS EN LA CDMX, SE SOLICITA ESTATUS A COORDINACION', 256, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(851, 'Teresa Medina', '2022-10-31', 'SIN CONTACTO', 'SE CONTACTA AL NUEVO TELEFONO DE CONTACTO Y ES UNA EMPRESA EN DONDE RECONOCEN A LA SRITA FLOR SANABRIA, PERO NO CONTESTA LA EXTENSION, LLAMAR MAS TARDE', 257, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(851, 'Teresa Medina', '2022-10-28', 'SIN CONTACTO', 'SE LE SOLICITA NUEVAMENTE POR WHATS CORROBORE EL TELEFONO QUE EL COMPARTIO CON ANTERIORIDAD', 258, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(851, 'Teresa Medina', '2022-10-27', 'SIN CONTACTO', 'SE MARCA AL 1ER. NUMERO DONDE ANTERIORMENTE NOS HABIAN PROPORCIONADO EL SEGUNDO TELEFONO DE CONTACTO EL CUAL NO EXISTE, PERO NO QUISO ATENDERME YA QUE ESTABA TRABAJANDO, SE MANDA WHATS SOLICITANDO CORROBORE NUMERO , CABE MENCIONAR QUE EL ANTERIOR WHATS NO LO HA CONTESTADO', 259, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(851, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 260, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(851, 'Teresa Medina', '2022-10-25', 'SIN CONTACTO', 'SE MARCA AL 1ER. NUMERO Y MANDA A BUZON, SE ENVIA WHATS SOLICITANDO NUEVO NUMERO DE CONTACTO', 261, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(851, 'Teresa Medina', '2022-10-18', 'SIN CONTACTO', 'SE MARCA AL PRIMER TELEFONO Y CONTESTA EL SR. LUIS  GONZALEZ Y COMENTA QUE NO ES CON EL EL TRAMITE Y PROPORCIONA EL 5555804780  EL CUAL NO EXISTE, SE MANDA POR WHATS Y SOLICITA CORROBORE TELEFONO', 262, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(852, 'Ivet Gonz lez', '2022-10-26', 'DATOS INCORRECTOS', 'SE CIERRA SINIESTRO YA QUE NO SE CUENTA CON DATO ADICIONAL', 267, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(852, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 268, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(852, 'Teresa Medina', '2022-10-24', 'SIN CONTACTO', 'SE SOLICITA A COORDINACION CERRAR SINIESTRO POR FALTA DE CONTACTO', 269, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(852, 'Teresa Medina', '2022-10-21', 'SIN CONTACTO', 'SE PROPORCIONA NUEVO NUMERO PERO ES DE ANA SEGUROS', 270, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(852, 'Teresa Medina', '2022-10-19', 'SIN CONTACTO', 'TELEFONO INCORRECTO, NO HAY CORREO', 271, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(852, 'Teresa Medina', '2022-10-18', 'SIN CONTACTO', 'SE MARCA AL TELEFONO REGISTARDO Y ES INCORRECTO, INTENTAR MA¤ANA NUEVAMENTE', 272, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(853, 'Ivet Gonz lez', '2022-10-27', 'CONCLUIDO POR OTRAS VIAS (BARRA, OFICINA, BROKER)', 'ASEGURADORA CONFIRMA PAGO. SE CIERRA SINIESTRO', 279, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(853, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 280, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(853, 'Ivet Gonz lez', '2022-10-21', 'TERMINADO POR PROCESO COMPLETO', 'ASEGURADORA CONFIRMA PAGO. SE CIERRA SINIESTRO', 281, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(853, 'Teresa Medina', '2022-10-18', 'TOTAL DE DOCUMENTOS', 'COMENTA EL SR. REGALADO QUE YA FUE INDEMNIZADA LA UNIDAD', 282, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(854, 'Ivet Gonz lez', '2022-10-27', 'CONCLUIDO POR OTRAS VIAS (BARRA, OFICINA, BROKER)', 'ASEGURADORA CONFIRMA PAGO. SE CIERRA SINIESTRO', 291, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(854, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 292, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL);
INSERT INTO `seguimientoprincipal` (`fkIdRegistroSegPrincipal`, `usuario`, `fechaseguimiento`, `estatusSeguimiento`, `comentarios`, `idseguimientoPrincipal`, `estacionPrincipal`, `subEstatus`, `respuestaSolera`, `personaContactada`, `tipodePersona`, `contacto`, `integraciondeexpediente`, `facturaciondeservicio`, `termino`, `fechaasigncion`, `usuarioAsignado`) VALUES
(854, 'Ivet Gonz lez', '2022-10-21', 'TERMINADO POR PROCESO COMPLETO', 'ASEGURADORA CONFIRMA PAGO. SE CIERRA SINIESTRO', 293, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(854, 'Teresa Medina', '2022-10-18', 'TOTAL DE DOCUMENTOS', 'COMENTA EL SE¤OR MONTA¤O QUE YA LIQUIDARON EL PAGO DE RESTOS Y SOLO RETIRARA SU UNIDAD DEL CORRALON', 294, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(855, 'Ivet Gonz lez', '2022-10-27', 'TERMINADO POR PROCESO COMPLETO', 'CONFIRMAN SINIESTRO PAGADO, SE CIERRA', 303, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(855, 'Ivet Gonz lez', '2022-10-27', 'CONCLUIDO POR OTRAS VIAS (BARRA, OFICINA, BROKER)', 'CONFIRMAN SINIESTRO PAGADO, SE CIERRA', 304, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(855, 'Ivet Gonz lez', '2022-10-26', 'CON CONTACTO SIN DOCUMENTOS', 'SE SOLICITA APOYO A LAURA PARA VALIDAR EN GEAS SI YA ESTA PAGADO, PENDIENTE DE CIERRE', 305, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(855, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 306, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(855, 'Teresa Medina', '2022-10-25', 'SIN CONTACTO', 'SE MARCA Y MANDA DIRECTO A BUZON,  SE ENVIA WHATS DE SEGUIMIENTO', 307, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(855, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'CONTESTA MENSAJE E INFORMA QUE YA ESTA PAGADA SU UNIDAD , SE SOLICITA A COORDINACION INVESTIGUE Y CIERRE', 308, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(855, 'Teresa Medina', '2022-10-19', 'SIN CONTACTO', 'MANDA DIRECTO A BUZON, SE  ENVIA SMS PERO REGRESA EL MENSAJE', 309, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(855, 'Teresa Medina', '2022-10-18', 'SIN CONTACTO', 'TELEFONO APAGADO O FUERA DE SERVICIO. INTENTAR MAS TARDE', 310, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(855, 'Teresa Medina', '2022-10-18', 'SIN CONTACTO', 'SE MARCA NUEVAMENTE Y CONTINUA APGADO O FUERA DE SERVICIO', 311, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(856, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'CONTACTA A MARCOS CARRILLO Y COMENTA QUE LLEVA EL TRAMITE CON UN BROKER PERO QUE LE FALTA UNA TENENCIA, SE COMENTA QUE ENVIE SUS DOCUMENTOS A LA BREVEDAD POSIBLE Y SE CONDONA LA TENENCIA FALTANTE,  QUEDA DE ENVIAR DOCUMENTOS', 315, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(856, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'ME COMPARTEN EL CONTACTO DEL SR. MARCO CARRILLO AL 55 4377 5230 QUIEN LLEVA LOS SINIESTROS, ENVIO WHATS', 316, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(856, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'HACER CASO OMISO AL COMENTARIO ANTERIOR', 317, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(856, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'CONTACTO AL SR. MORALES Y SE PROPORCIONA CORREO PARA QUE ENVIE DOCUMENTOS', 318, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(856, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'ME COMPARTEN EL CONTACTO DEL SR. MARCO CARRILLO AL  55 4377 5230 QUIEN LLEVA LOS SINIESTROS, ENVIO WHATS', 319, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(856, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'NO CONTESTA Y MANDA A BUZON, CONTESTA WHATS  SOLICITANDO MI HORARIO PARA MARCARME', 320, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(856, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'PROPORCIONAN NUEVO CONTACTO 5537175707 DEL SR. GUILLERMO MORALES  QUIEN LLEVA LOS SINIESTROS EN LA EMPRESA, NO CONTESTA SE ENVIA WHATS', 321, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(856, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 322, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(856, 'Teresa Medina', '2022-10-24', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA NUEVAMENTE AL SR. FLAVIO Y QUEDA DE PROPORCIONARME EL CONTACTO DE LA ENCRAGADA DE FLOTILLAS PARA QUE ME INFORME SI YA FUE PAGADO O AUN NO', 323, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(856, 'Teresa Medina', '2022-10-24', 'CON CONTACTO SIN DOCUMENTOS', 'NOS PROPORCIONAN NUEVO CONTACTO Y SE ENVIA LISTADO AL CORREO DEL SR. GUILLERMO MORALES  PARA QUE ENVIE DOCUMENTOS', 324, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(856, 'Teresa Medina', '2022-10-18', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO AL 5543649967  E INFORMAN QUE EL SR. MOISES LUNA YA NO LABORA CON ELLOS Y ME PROPORCIONAN VARIOS CONTACTOS EN DONDE ME INFORMA EL ULTIMO SR. FLAVIO GERENTE DE OPERACIONES  ( 33 1764 3579) QUE INDAGARA CON LA EMPRESA SI YA SE FINIQUITO O NO, QUEDA EN CONTACTARME EN CUANTO TENGA LA INFORMACION', 325, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(858, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE PAGO', 326, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(858, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE PAGO', 327, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(858, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE QUE SE REFLEJE EL PAGO', 328, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(858, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'PENDIENTE POR CORROBORAR INFORMACION POR PARTE DE COORDINACION Y CERRAR', 329, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(858, 'Ivet Gonz lez', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'SE VALIA EN GEAS, PAGO NO RELEJADO EN ESPERA DEL MISMO, PENDIENTE POR CERRAR', 330, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(858, 'Ivet Gonz lez', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'EN SISTEMA NO SE REFLEJA NING£N PAGADO A NA, FAVOR DE SOLICITAR ACUSE', 331, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(858, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'CONTACTO AL SR. FRANCISCO RAMIREZ Y COMENTA QUE ERA UNIDAD ARRENDADA CON ALD AUTOMOTIVE Y QUE ELLOS HICIERON LA GESTION Y YA LE DIERON LA PARTE CORRESPONDIENTE A EL, NO CUENTA CON ACUSE', 332, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(858, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO A LA ARRENDADORA Y COMENTA LA SRITA.  ANDREA VILLANTE  QUE YA ENVIARON LOS DOCUMENTOS A LA ASEGURADORA Y QUIEN RECIBIO FUE  PABLO ANGEL RAMIREZ  Y LA SRITA. VIRIDIANA DE LA ROSA DE PAGOS ES QUIEN LLEVA SU CASO EN CUANTO AL PAGO', 333, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(858, 'Ivet Gonz lez', '2022-10-26', 'CON CONTACTO SIN DOCUMENTOS', 'SE SOLICITA APOYO A LAURA PARA CONFIRMAR PAGO, PENDIENTE DE CIERRE', 334, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(858, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 335, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(858, 'Teresa Medina', '2022-10-25', 'DE 7 A 10 DOCUMENTOS', 'EN ESPERA DE RESPUSTA POR PARTE DE LA ASEGURADORA', 336, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(858, 'Ivet Gonz lez', '2022-10-21', 'DE 7 A 10 DOCUMENTOS', 'EN ESPERA DE RESPUESTA POR PARTE DE ASEGURADORA PARA SU SEGUIMIENTO', 337, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(858, 'Teresa Medina', '2022-10-18', 'CON CONTACTO SIN DOCUMENTOS', 'LLAMO AL TELEFONO DE CONTACTO Y ME PROPORCIONAN CONTACTO Y NUMERO E INFORMA EL SR. FRANCISCO RAMIREZ  QUE YA FUE FINIQUITADA LA UNIDAD', 338, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(857, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE JUICIO DE NULIDAD EN DICIEMBRE', 339, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(857, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE JUICIO DE NULIDAD', 340, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(857, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE QUE SE CUMPLA EL PLAZO DEL JUICIO DE NULIDAD', 341, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(857, 'Ivet Gonz lez', '2022-10-26', 'CON CONTACTO SIN DOCUMENTOS', 'SE ESCALA SINIESTRO YA QUE NA CONTARA CON SU JUICIO HASTA EL MES DE DICIEMBRE.', 342, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(857, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 343, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(857, 'Teresa Medina', '2022-10-24', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE JUICIO DE NULIDAD (DICIEMBRE)', 344, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(857, 'Teresa Medina', '2022-10-18', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA QUE ESTA PENDIENTE UN JUICIO DE NULIDAD POR MULTAS Y QUE HASTA DICIEMBRE LE DAN RESPUESTA, SOLICITO SUS DOCUMENTOS PERO CUELGA LA LLAMADA Y NO CONTESTA MAS, SE LE INFORMO QUE ESTARE REALIZANDO LLAMADAS PERIODICAS PARA SABER COMO VA EL JUICIO', 345, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(859, 'Ivet Gonz lez', '2022-10-27', 'CONCLUIDO POR OTRAS VIAS (BARRA, OFICINA, BROKER)', 'ASEGURADORA CONFIRMA QUE YA ESTA ESTA PAGADO, SE CIERRA SINIESTRO', 346, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(859, 'Ivet Gonz lez', '2022-10-21', 'TERMINADO POR PROCESO COMPLETO', 'ASEGURADORA CONFIRMA QUE YA ESTA ESTA PAGADO, SE CIERRA SINIESTRO', 347, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(859, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA EL SR. SOLIS QUE CONTACTO A SU PRIMO Y LE INFORMO QUE YA LE PAGARON LA UNIDAD', 348, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(859, 'Teresa Medina', '2022-10-18', 'CON CONTACTO SIN DOCUMENTOS', 'CONTACTO AL SR. MARIO SOLIS  AL TELEFONO REGISTRADO Y SOLICITA LE LLAME MA¤ANA PARA PROPORCIONARME EL NUMERO DE SU PRIMO', 349, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(860, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE VISTO BUENO', 350, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(860, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE JURIDICO EN CUANTO VOBO DE REFACTURA', 351, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(860, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DEL VOBO  POR PARTE DE JURIDICO', 352, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(860, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA LA SRITA, LEDEZMA QUE LA REFACTURA SE ENCUENTRA EN JURIDICO Y QUE AUN NO LE HAN DADO EL VISTO BUENO, SE LE INFORMA QUE TIENE QUE ESTAR AL PENDIENTE DE LA RESPUESTA', 353, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(860, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA A LA FINANCIERA PERO NO CONETA LA OPERADORA, INTENTAR MAS TARDE', 354, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(860, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 355, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(860, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE RESPUESTA POR PARTE DE LA ASEGURADORA', 356, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(860, 'Teresa Medina', '2022-10-18', 'CON CONTACTO SIN DOCUMENTOS', 'CONTACTO A SANDRA LEDEZMA AL 5551181000 Y COMENTA QUE ESTA EN ESPERA DE QUE ANA SEGUROS LE DE RESPUESTA EN CUANTO A SU REFACTURA, SOLICITA SE LE INFORME EL ESTATUS', 357, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(862, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA EL LIC. HUMBERTO QUE TIENE MUCHO TRABAJO PERO QUE EN BREVE ME ENVIA LOS DOCUMENTOS, SE ENVIA LISTADO POR WHATS', 358, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(862, 'Teresa Medina', '2022-11-01', 'DE 1 A 3 DOCUMENTOS', 'SE MARCA PERO MANDA A BUZON, SE ENVIA MENSAJE POR WHATS', 359, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(862, 'Teresa Medina', '2022-10-31', 'DE 1 A 3 DOCUMENTOS', '2DO TEL NO DISPONIBLE, NOS CONTESTA EL WHATS Y COMENTA QUE ESTA SATURADO DE TRABAJO', 360, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(862, 'Teresa Medina', '2022-10-28', 'DE 1 A 3 DOCUMENTOS', 'SE MARCA Y NO CONTESTA, SE MANDA WHATS, EL ANTERIOR NO LO HA VISTO', 361, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(862, 'Teresa Medina', '2022-10-26', 'DE 1 A 3 DOCUMENTOS', 'SE MARCA TIMBRA DOS VECES Y MANDA A BUZON, SE ENVIA WHATS DE SEGUIMIENTO', 362, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(862, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 363, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(862, 'Teresa Medina', '2022-10-24', 'DE 1 A 3 DOCUMENTOS', 'SE CONTACTA AL SR. HERIBERTO Y COMENTA QUE YA HABIA ENVIADO DOCUMENTOS A LA ANTERIOR EMPRESA, SE SOLICITA NOS LOS MANDE PARA REVISION, ENVIA RFC Y SE SOLICITAN DOCUMENTOS FALTANTES', 364, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(862, 'Teresa Medina', '2022-10-18', 'CON CONTACTO SIN DOCUMENTOS', 'CONTACTO AL SR. LEONARDO LOPEZ  Y COMENTA QUE ME LLAMA PARA DARME LOS DATOS DE LA PERSONA QUE LLEVA EL SINIESTRO', 365, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(861, 'Ivet Gonz lez', '2022-10-27', 'CONCLUIDO POR OTRAS VIAS (BARRA, OFICINA, BROKER)', 'SE CIERRA SINIESTRO YA QUE NA YA CONCLUYO SU TRAMITE Y YA LE PAGARON', 366, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(861, 'Ivet Gonz lez', '2022-10-20', 'TERMINADO ENTREGA ORIGINALES EN OFICINA', 'SE CIERRA SINIESTRO YA QUE NA YA CONCLUYO SU TRAMITE EN OFICINA', 367, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(861, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA EL SR. ISRAEL GONZALEZ RAMIREZ QUE YA ENTREGO SUS DOCUMENTOS Y QUE QUEDARON EN PAGARLE EL DIA 15 DE OCTUBRE, SOLICITA ESTATUS DEL MISMO', 368, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(863, 'Teresa Medina', '2022-11-02', 'DE 4 A 6 DOCUMENTOS', 'COMENTA QUE LA FINANCIERA NO DA RESPUESTA, SE SOLICITA ENVIE LOS DOCUMENTOS PARA DARLE RAPIDEZ AL TRAMITE, REALIZA CHAT DE GRUPO CON LA FINANCIERA Y NOSOTROS Y MANDA DOCUMENTOS, FALTA COPIA DE FACTURA, RFC , ESTADO DE CUENTA Y POLIZA COMENTA QUE A LA BREVEDAD LOS ENVIA', 369, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(863, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO A ANA SEGUROS CON LA SRITA VIRIDIANA  DE LA ROSA Y COMENTA QUE LA FINANCIERA SOLO INGRESO DOCUMENTOS DIGITALES Y QUE FALTABAN TENENCIAS, SE BUSCA TEL  DE LA FINANCIERA EN INTERNET 33 3585 9287 PERO NO HAY RESPUESTA DE LA OPERADORA, SE MARCA 2 VECES, SE INFORMA  AL ASEGURADO  POR TELEFONO Y SE SOLICITAN LOS DOCUMENTOS', 370, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(863, 'Teresa Medina', '2022-11-01', 'DE 4 A 6 DOCUMENTOS', 'ENVIA DOCUMENTOS POR WHATS  FALTA COPIA DE FACTURA, RFC , ESTADO DE CUENTA Y POLIZA', 371, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(863, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO A LA ASEGURADORA PERO NO CONTESTAN EN NINGUNA EXTENSION PARA VARIDAR SI YA ENTREGO LA FINANCIERA LOS DOCUMENTOS', 372, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(863, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'NO SE MARCA, EN ESPERA DEL LUNES PARA SABER SI YA INGRESO DOCUMENTOS SU FINANCIERA', 373, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(863, 'Teresa Medina', '2022-10-26', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA EL SR. LOPEZ QUE LE AVISARON DE LA FINANCIERA QUE INGRESARIAN DOCUMENTOS EN ESTOS DIAS, QUEDO EN MARCAR EL LUNES PARA QUE ME INFORME EL AVANCE, TAMBIEN SE LE COMENTA QUE  SI NO HAN INGRESADO LOS DOCUMENTOS ME LOS HAGA LLEGAR A MI', 374, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(863, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 375, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(863, 'Teresa Medina', '2022-10-24', 'CON CONTACTO SIN DOCUMENTOS', 'CONTESTA CORREO Y COMENTA QUE LA FINANCIERA LLEVA SU CASO Y SOLO ESTAN ALARGANDO SU PROCESO, SE SOLICITA ENVIE DOCUMENTOS PARA VALIDACION', 376, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(863, 'Teresa Medina', '2022-10-19', 'SIN CONTACTO', 'SE MARCA Y MANDA DIRECTO A BUZON, SE ENVIA CORREO DE SEGUIMIENTO Y SE MARCARA MAS TARDE', 377, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-11-02', 'SIN CONTACTO', 'SE MARCA PERO ENTRA A BUZON DIRECTO,  HABLAR MA¥ANA DE OTRO NUMERO', 378, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-11-02', 'SIN CONTACTO', 'SE MARCA PERO ENTRA A BUZON DIRECTO,  HABLAR MA¥ANA DE OTRO NUMERO', 379, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-11-01', 'SIN CONTACTO', 'MARCO PEO ENTRA DIRECTO A UN BUZON', 380, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-11-01', 'SIN CONTACTO', 'MARCO PEO ENTRA DIRECTO A UN BUZON', 381, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-10-31', 'SIN CONTACTO', 'SE MARCA AL TELEFONO Y ENTRA DIRECTO A BUZON, NO LE LLEGAN LOS MENSAJES DE WHATS Y NO HAY MAS TELEFONOS DE CONTACTO', 382, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-10-31', 'SIN CONTACTO', 'SE MARCA AL TELEFONO Y ENTRA DIRECTO A BUZON, NO LE LLEGAN LOS MENSAJES DE WHATS Y NO HAY MAS TELEFONOS DE CONTACTO', 383, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Marisol Zarza', '2022-10-29', 'SIN CONTACTO', 'SE REALIZA MARCACION AL NUMERO 5586413690 PERO ENVIA DIRECTO AL BUZON', 384, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Marisol Zarza', '2022-10-29', 'SIN CONTACTO', 'SE REALIZA MARCACION AL NUMERO 5586413690 PERO ENVIA DIRECTO AL BUZON', 385, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-10-28', 'SIN CONTACTO', 'SE MARCA MANDA DIRECTOA BUZON, LOS WHATS NO LE LLEGAN, SE SOLICITA A CORRDINACION DATOS ADICIONALES', 386, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Ivet Gonz lez', '2022-10-28', 'SIN CONTACTO', 'NO SE CUENTA CON DATOS ADICIONALES', 387, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-10-28', 'SIN CONTACTO', 'SE MARCA MANDA DIRECTOA BUZON, LOS WHATS NO LE LLEGAN, SE SOLICITA A CORRDINACION DATOS ADICIONALES', 388, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Ivet Gonz lez', '2022-10-28', 'SIN CONTACTO', 'NO SE CUENTA CON DATOS ADICIONALES', 389, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-10-27', 'SIN CONTACTO', 'SE MARCA Y NO DA TONO, LOS WHATS NO LE LLEGAN, AL PARECER ME BLOQUEO PORQUE EL PRIMER WHATS SI LE LLEGO', 390, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-10-27', 'SIN CONTACTO', 'SE MARCA Y NO DA TONO, LOS WHATS NO LE LLEGAN, AL PARECER ME BLOQUEO PORQUE EL PRIMER WHATS SI LE LLEGO', 391, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 392, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-10-25', 'SIN CONTACTO', 'SIGUE MNANDANDO A BUZON Y SE ENVIA WHATS DE SEGUIMIENTO', 393, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 394, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-10-25', 'SIN CONTACTO', 'SIGUE MNANDANDO A BUZON Y SE ENVIA WHATS DE SEGUIMIENTO', 395, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-10-24', 'SIN CONTACTO', 'SE MARCA Y MANDA DIRECTO A BUZON', 396, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-10-24', 'SIN CONTACTO', 'SE ENVIA WHATS APP', 397, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-10-24', 'SIN CONTACTO', 'SE MARCA Y MANDA DIRECTO A BUZON', 398, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-10-24', 'SIN CONTACTO', 'SE ENVIA WHATS APP', 399, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-10-19', 'SIN CONTACTO', 'SE MARCA AL NUMERO REGISTRADO Y MANDA DIRECTO A BUZON, LLAMAR MAS TARDE', 400, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(864, 'Teresa Medina', '2022-10-19', 'SIN CONTACTO', 'SE MARCA AL NUMERO REGISTRADO Y MANDA DIRECTO A BUZON, LLAMAR MAS TARDE', 401, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(865, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'NO HAY MAS DATOS ADICIONALES, SE SOLICITA A COORDINACI¢N CERRAR SINIESTRO', 402, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(865, 'Teresa Medina', '2022-11-01', 'SIN CONTACTO', 'SE SOLICITA A COORDINACION UN NUEVO CONTACTO', 403, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(865, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTESTA LA USUARIA NUEVAMENTE Y ESCUCHA QUE LE HABLAMOS DE ANA SEGUROS PERO SE RIE Y CUELGA, YA SE HABIA TENIDO CONTACTO CON ELLA PERO NO RESPONDE NI LOS WHATS', 404, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(865, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA Y NO CONTESTA, EL WHATS QUE SE MANDO AYER YA LO VIO PERO NO CONTESTA, SE SOLICITAN DATOS ADICIONALES A COORDINACION', 405, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(865, 'Ivet Gonz lez', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'NO SE CUENTA CON DATO ADICIONAL EL GEAS', 406, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(865, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA Y AL PREGUNTAR POR MELISSA LIZBETH CAMARENA CUELGA, SE MANDA WHATS, CABE MENCIONAR QUE EL ANTERIOR MENSAJE NO LO HA CONTESTADO', 407, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(865, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 408, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(865, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO CON LA SRITA. MELISSA LIZBETH CAMARENA RIOS Y CORTA LA LLAMADA,  SE INTENTA Y NO CONTESTA, SE ENVIA CORREO Y WHATS DE SEGUIMIENTO', 409, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(865, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA A LA SRITA. CAMARENA Y SE ENVIA CORREO PARA QUE OS HAGA LLEGAR LOS DOCUMENTOS', 410, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(866, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'SOLICITO TIEMPO AUN NO CUENTA CON DOCUMENTOS', 411, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(866, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO CON EL SR. MORENO Y COMENTA QUE RECIBIO EL LISTADO DE TODOS LOS SINIESTROS QUE TIENEN PERO QUE AUN NO TIENEN NINGUN DOCUMENTOS PARA REVISION, SOLICITA TIEMPO', 412, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(866, 'Marisol Zarza', '2022-10-29', 'CON CONTACTO SIN DOCUMENTOS', 'ME COMUNICO CON FEDERICO MORENO AL NUMERO 3330070401 COMENTA QUE EL TIENE QUE SOLICITAR LA DOCUMENTACION AL AREA CORRESPONDIENTE ESPERA YA CONTAR CON ELLA A MAS TARDAR EL DIA MARTES Y NOS LA ENVIARA POR WHATSAPP', 413, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(866, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'SE ENVIA CORREO RECORDATORIO PARA EL ENVIO DE DOCUMENTOS', 414, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(866, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA Y SE LE ENVIA EL LISTADO POR CORREO DE LAS UNIDADES POR DOCUMENTAR', 415, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(866, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 416, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(866, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA AL SR. MORENO NUEVAMENTE QUIEN LLEVA LOS SINIESTROS DEL MUNICIPIO, COMENTA QUE EN CUANTO PUEDA ENVIARA DOCUMENTOS', 417, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(866, 'Teresa Medina', '2022-10-19', 'SIN CONTACTO', 'COMENTA LA SRITA ALICIA S NCHEZ QUE CONTACTE AL SR. FEDERICO (NO SABE APELLIDO) AL 3330070401, QUE EL VE LAS PTïS DEL MUNICIPIO, SE MARCA Y MANDA A BUZON, MARCAR MAS TARDE', 418, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(866, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO CON EL SR. FEDERICO Y COMENTA QUE LE FALTA LA BAJA, SE ENVIA LIGA PARA CARGA DE DOCUMENTOS', 419, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(867, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'SOLICITO TIEMPO AUN NO CUENTA CON DOCUMENTOS', 420, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(867, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO CON EL SR. MORENO Y COMENTA QUE RECIBIO EL LISTADO DE TODOS LOS SINIESTROS QUE TIENEN PERO QUE AUN NO TIENEN NINGUN DOCUMENTOS PARA REVISION, SOLICITA TIEMPO', 421, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(867, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'SE ENVIA CORREO RECORDATORIO PARA EL ENVIO DE DOCUMENTOS', 422, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(867, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'SE ENVIA LISTADO POR CORREO CON LOS SINIESTROS PENDIENTES DE DOCUMENTAR', 423, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(867, 'Teresa Medina', '2022-10-26', 'CON CONTACTO SIN DOCUMENTOS', 'NOS CONTACTAMOS CON EL SR. FEDERICO Y COMENTA QUE EL LLEVARA TODOS LOS SINIESTROS DEL MUNICIPIO, SOLICITA PACIENCIA PORQUE ES NUEVO EN EL CARGO', 424, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(867, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 425, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(867, 'Teresa Medina', '2022-10-24', 'CON CONTACTO SIN DOCUMENTOS', 'SE LLAMA Y NOS PROPORCIONAN NUEVO CONTACTO  FEDERICO DE PATRIMONIO, TEL 3330070401, PERO MANDA DIRECTO A BUZON, SE ENVIO WHATS SIN RESPUESTA', 426, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(867, 'Teresa Medina', '2022-10-21', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE RESUESTA POR WHAT, SOLICITA LIGA , SE ENVIA LIGA POR WHATS', 427, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(868, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'CONTESTA WHATS  Y COMENTA QUE LE FALTA LA BAJA, SOLICITA CARTA DE PERDIDA TOTAL Y SE LE CANALIZA A LA ASEGURADORA, SE SOLICITA ENVIE LOS DOCUMENTOS RESTANTES', 428, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(868, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'NUEVAMENTE SE MARCA PERO MANDA A BUZON, SE ENVIA WHATS SOLICITANDO DOCUMENTOS PARA REVISION', 429, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(868, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA 2 VECES PERO MANDA A BUZON, CONTESTA WHATS INFORMANDO QUE EL ME CONTACTA', 430, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(868, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA AL SR. TEJEDA PERO NO CONTESTA, SE ENVIA WHATS, CABE MENCIONAR QUE EL ANTERIOR MENSAJE NO LO HA CONTESTADO', 431, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(868, 'Teresa Medina', '2022-10-26', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA Y MANDA A BUZON, SE ENVIA WHATS SOLICITADO DOCUMENTOS, QUEDA EN ENVIARLOS', 432, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(868, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 433, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(868, 'Teresa Medina', '2022-10-24', 'CON CONTACTO SIN DOCUMENTOS', 'SE PREGUNTA POR WHATS SI YA CUENTA LOS DOCUMENTOS PARA REVISION', 434, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(868, 'Teresa Medina', '2022-10-19', 'SIN CONTACTO', 'SE MARCA DOS VECES Y MANDA DIRECTO A BUZON, SE ENVIA WHATS DE SEGUIMIENTO', 435, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(868, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA AL LIC. TEJEDA QUIEN LLEVARA EL PROCESO DE IDEMNIZACION Y SE ENVIA POR WHATS EL LISTADO', 436, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(869, 'Teresa Medina', '2022-11-02', 'DE 7 A 10 DOCUMENTOS', 'EN ESPERA DE BAJA', 437, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(869, 'Teresa Medina', '2022-11-01', 'DE 7 A 10 DOCUMENTOS', 'EN ESPERA DE LA BAJA DE PLACAS', 438, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(869, 'Teresa Medina', '2022-10-31', 'DE 7 A 10 DOCUMENTOS', 'EN ESPERA DE BAJA DE PLACAS', 439, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(869, 'Ivet Gonz lez', '2022-10-29', 'DE 7 A 10 DOCUMENTOS', 'ME COMUNICO CON NA COMENTA QUE SUS PLACAS SON FEDERALES  DE TURISMO, ES POR ELLO QUE SU BAJA DEMORA DE 3 A 4 SEMANAS.', 440, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(869, 'Teresa Medina', '2022-10-28', 'DE 7 A 10 DOCUMENTOS', 'EN ESPERA DE LA BAJA DE SUS PLACAS', 441, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(869, 'Teresa Medina', '2022-10-27', 'DE 7 A 10 DOCUMENTOS', 'SE CONTACTA AL SR. MANZANO, ENVIA PODER NOTARIAL Y COMENTA QUE EL TRAMITE DE SUS PLACAS TARDARA APROXIMADAMENTE DE 3 A 4 SEMANAS', 442, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(869, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 443, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(869, 'Teresa Medina', '2022-10-24', 'CON CONTACTO SIN DOCUMENTOS', 'SE SOLICITA ENVIE NUEVAMENTE LOS DOCUMENTOS YA QUE NO LLEGARON, COMENTA QUE EN BREVE LOS MANDA', 444, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(869, 'Teresa Medina', '2022-10-24', 'DE 7 A 10 DOCUMENTOS', 'ENVIA DOCUMENTOS FALTA BAJA, TENENCIAS Y PODER NOTARIAL', 445, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(869, 'Teresa Medina', '2022-10-21', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA Y SE SOLICITA LOS DOCUMENTOS CON QUE CUENTA, QUEDA DE ENVIARLOS A LA BREVEDAD (TIENE PLACAS FEDERALES, NO HAY TENENCIAS)', 446, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(869, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA AL SR. MANZANO Y COMENTA QUE SOLO LE FALTA LA BAJA DE PLACAS, PERO SE HA ATRASADO YA QUE PERDIERON EN EL CORRALON LAS LAMINAS, SE ENVIA POR CORREO LISTADO PARA REVISION DE LOS DOCUMENTOS CON QUE CUENTA', 447, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(870, 'Ivet Gonz lez', '2022-10-27', 'CONCLUIDO POR OTRAS VIAS (BARRA, OFICINA, BROKER)', 'SE VALIDA EN GEAS, SINIESTRO PAGADO', 448, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(870, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 449, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(870, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA EL SE¥OR DIAZ QUE YA LE PAGARON EN JULIO Y NO CUENTA CON ACUSE, SE CANALIZA A COORDINACION PARA SU CIERRE', 450, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(870, 'Ivet Gonz lez', '2022-10-25', 'TERMINADO POR PROCESO COMPLETO', 'SE VALIDA EN GEAS, SINIESTRO PAGADO', 451, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(870, 'Teresa Medina', '2022-10-24', 'CON CONTACTO SIN DOCUMENTOS', 'SOLICITA LE MARQUE A LAS 12.30 ESTA OCUPADO', 452, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(870, 'Teresa Medina', '2022-10-19', 'SIN CONTACTO', 'SE MARCA 2 VECES Y ENTRA A BUZON, INTENTAR MAS TARDE', 453, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(871, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA Y COMENTA QUE TIENE MUCHO TRABAJO, SE LE INFORMA QUE LA UNIDAD SE DEVALUA CON EL TIEMPO Y ES IMPORTANTE MANDE SUS DOCUMENTOS, INFORMA QUE A LA BREVEDAD LOS ENVIARA', 454, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(871, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA PERO NO CONTESTA, SE EVIA WHATS DE SEGUIMIENTO', 455, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(871, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'SE ENVIA CORREO DE SEGUIMIENTO', 456, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(871, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO CON FRANCISCO LOZANO Y ME COMENTA QUE TRABAJA TARDE Y NOCHE Y SE LE COMPLICA ENVIAR DOCUMENTOS, SE LE INFORMA QUE LOSPUEDE ENVIAR POR WHATS Y PROMETE ENVIARLOS EN CUANTO PUEDA', 457, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(871, 'Teresa Medina', '2022-10-26', 'CON CONTACTO SIN DOCUMENTOS', 'SE LE MARCA Y SOLICITA SE LE MARQUE EL DIA DE MA¤ANA', 458, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(871, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 459, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(871, 'Teresa Medina', '2022-10-24', 'CON CONTACTO SIN DOCUMENTOS', 'SE REENVIA LISTADO PARA QUE ENVIE DOCUMENTOS', 460, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(871, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'SE ENVIA CORREO CON LISTADO PARA QUE ENVIE LOS DOCUMENTOS CON QUE CUENTA, LE FALTA LA BAJA DE PLACAS', 461, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(872, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'MARCAR EL 4 DE NOVIEMBRE', 462, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(872, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'MARCAR HSTA EL 4 DE NOVIEMBRE', 463, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(872, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'SOLICIT¢ QUE SE LE MARQUE EL VIERNES 4 DE NOVIEMBRE PORQUE ESTA EN CIERRE', 464, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(872, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO CON EL SR. ACEVES Y COMENTA QUE AUN NO TIENE AVANCE PORQUE ESTAN EN CIERRE, SOLICITA LE MARQUE EL PROXIMO VIERNES', 465, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(872, 'Teresa Medina', '2022-10-26', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO CON EL SR. SERGIO ACEVES  DE CREDIJAL Y COMENTA QUE YA HABIA INGRESADO LOS DOCUMENTOS PERO LE SOLICITARON UNA CARTA DE DESISTIMIENTO DEL BENEFICIARIO PREFERENTE, QUE EN CUANTO SE LA PROPORCIONEN INGRESARA DOCUMENTOS YA FUERON VALIDADOS DIRECTAMEBNTE EN ANA', 466, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(872, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 467, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(872, 'Teresa Medina', '2022-10-24', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA AL SR. ARELLANO PARA SOLICITAR LOS DATOS DE CONTACTO DE LA PERSONA QUE LLEVA EL TRAMITE,  LOS COMPARTE Y SOLICITE SE LE APOYE PARA QUE SE FINIQUITE SU UNIDAD.   VICTOR ESTRADA DE SEGURO CREDIJAL TEL  3331289003', 468, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(872, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA EL SR. RAUL ROMERO ARELLANO QUE FUE UNA UNIDAD ARRENDADA Y QUE LO VIERON DIRECTAMENTE CON ELLOS, QUE TIENE ENTENDIDO QUE YA FUE FINIQUITADA', 469, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(873, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'SE SOLICITA ESTATUS A COORDINACION', 470, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(873, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE RESPUESTA', 471, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(873, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'SE SOLICITA ESTATUS A COORDINACION', 472, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(873, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE RESPUESTA POR PARTE DEL AREA LEGAL', 473, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(873, 'Ivet Gonz lez', '2022-10-26', 'CON CONTACTO SIN DOCUMENTOS', 'QUEDAMOS EN ESPERA DE RESPUESTA DEL AREA LEGAL', 474, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(873, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 475, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(873, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'SE ESCALA SINIESTRO, EN ESPERA DE RESPUESTA', 476, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(873, 'Teresa Medina', '2022-10-21', 'CON CONTACTO SIN DOCUMENTOS', 'SE SOLICITA OFICIO DE LIEBRACION PARA PROCEDER AL PAGO', 477, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL);
INSERT INTO `seguimientoprincipal` (`fkIdRegistroSegPrincipal`, `usuario`, `fechaseguimiento`, `estatusSeguimiento`, `comentarios`, `idseguimientoPrincipal`, `estacionPrincipal`, `subEstatus`, `respuestaSolera`, `personaContactada`, `tipodePersona`, `contacto`, `integraciondeexpediente`, `facturaciondeservicio`, `termino`, `fechaasigncion`, `usuarioAsignado`) VALUES
(873, 'Teresa Medina', '2022-10-21', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA EL ASEGURADO  QUE ESE ROBO SUCEDI¢ HACE 16 A¤OS Y EL DUE¤O EN ESE MOMENTO ERA LA ASEGURADORA ABBA, FUE A SOLICITARLO Y LE PIDEN UNA CARTA EXPEDIDA POR ANA EN DONDE INDIQUE QUE ESTAMOS SOLICITANDO EL OFICIO DE LIBERACI¢N PARA INDEMNIZACI¢N, SOLICITA SE LE APOYE CON DICHA CARTA PORQUE COMENTA QUE YA LLEVA MUCHO TIEMPO PERDIDO', 478, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(873, 'Teresa Medina', '2022-10-19', 'SIN CONTACTO', 'SE MARCA VARIAS VECES Y MANDA A BUZON, SE ENVIA SMS, LLAMAR MAS TARDE', 479, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(873, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA AL SR. ADAN NAVARRO Y COMENTA QUE YA ENTREGO ORIGINALES, ENVIA CONTRARECIBO PARA APRESURAR PAGO', 480, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(874, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'MARCAR  HASTA EL JUEVES A LA ARRENDADORA', 481, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(874, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'MARCAR EL JUEVES A LA ARRENDADORA', 482, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(874, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA POR PARTE DEL AREA DE INVESTIGACIONES DE LA ARRENDADORA, MARCAR EL JUEVES', 483, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(874, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA POR PARTE DEL AREA DE INVESTIGACIONES DE LA ARRENDADORA', 484, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(874, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO A LA ARRENDADORA Y COMENTA EL SR. JONATHAN GARCIA QUE NO HAY INFORMACION REAL QUE VA A INVESTIGAR Y ENVIARA EL REPORTE DEL ESTATUS POR CORREO', 485, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(874, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 486, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(874, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA Y MANDA A BUZON, SE SOLICITA POR WHATS LOS DATOS DE LA ARRENDADORA PARA SOLICITAR EL ESTATUS', 487, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(874, 'Teresa Medina', '2022-10-21', 'CON CONTACTO SIN DOCUMENTOS', 'SE SOLICITAN DATOS DE LA ARRENDADORA, QUEDA EN MANDARLOS POR CORREO', 488, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(874, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'CONTACTO A AGUSTIN BLANCO CERVANTES Y COMENTA QUE QUIERE SABER EN QUE SE ENCUENTRA EL PROCESO, YA QUE ES UNIDAD ARRENDADA Y EN TEORIA YA SE ENTREGO LA DOCUMENTACION  Y LE URGE UNA NUEVA UNIDAD, SOLICITA ESTATUS DEL TRAMITE', 489, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(875, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE CIERRE DE SINIESTRO (AGENTE LLEVA EL TRAMITE)', 490, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(875, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE RESPUESTA', 491, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(875, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE RESPUESTA (AGENTE PABLO ANGEL RAMIREZ)', 492, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(875, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE RESPUESTA', 493, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(875, 'Ivet Gonz lez', '2022-10-26', 'CON CONTACTO SIN DOCUMENTOS', 'SE SOLICITA APOYO A LAURA YA QUE AGENTE NO QUIERE BRINDAR EVIDENCIA DE SEGUIMIENTO, EN ESPERA DE RESPUESTA', 494, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(875, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 495, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(875, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE RESPUESTA POR PARTE DE COORDINACION', 496, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(875, 'Teresa Medina', '2022-10-20', 'CON CONTACTO SIN DOCUMENTOS', 'COMPARTE NUEVO CONTACTO AGENTE PABLO ANGEL RAMIREZ BERZUNZA 5528557135 CORREO PABLOANGELRB@ANASEGUROS.COM.MX', 497, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(875, 'Teresa Medina', '2022-10-20', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO CON EL AGENTE PABLO ANGEL RAMIREZ Y COMETA QUE EL LLEVA EL TRAMITE DEL SINIESTRO Y SOLICITA NO SE LE ESTE MARCANDO PORQUE LO REPORTARA A LA ASEGURADORA', 498, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(875, 'Teresa Medina', '2022-10-19', 'SIN CONTACTO', 'SE MARCA VARIAS VECES Y MANDA A BUZON, SE ENVIA WHATS, MARCAR MAS TARDE', 499, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(876, 'Teresa Medina', '2022-11-02', 'DE 7 A 10 DOCUMENTOS', 'NOS COMENTA QUE NO PAGO LAS TENENCIAS Y QUE TIENE MULTAS MUY ALTAS, QUIERE SABER CUANTO SE LE PAGARA PARA SABER SI DOCUMENTA LA PT O NO, SE LE DA UN APROXIMADO  Y NOS INFORMA QUE VA A PENSAR SI  LE CONVIENE', 500, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(876, 'Teresa Medina', '2022-11-01', 'DE 4 A 6 DOCUMENTOS', 'ENVIA FACTURA,  CURP, RFC, INE, TENENCIA 2020 Y TARJETA DE CIRCULACION, FALTA BAJA, TENENCIAS 2021 Y 2022, COMPROBANTE DE DOMICILIO, ESTADO DE CTA Y POLIZA, SE INFORMA POR WHATS', 501, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(876, 'Teresa Medina', '2022-11-01', 'DE 7 A 10 DOCUMENTOS', 'ENVIA ESTADO DE CUENTA Y COMPROBANTE DE DOMICILIO, PERO INFORMA QUE HOY ME COMUNICA SI CONTINUARA CON EL TRAMITE, YA QUE NUNCA PAGO LAS TENENCIAS Y SI REBASA AL MONTO QUE LE INDEMIZARAN NO PROCEDERA CON AL PT', 502, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(876, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA DOS VECES SIN EXITO Y SE MANDA NUEVAMENTE MENSAJE POR WHATS', 503, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(876, 'Marisol Zarza', '2022-10-29', 'CON CONTACTO SIN DOCUMENTOS', 'ME COMUNICO CON JOEL ARMANDO RAMIREZ  SE LE SOLICITA  DOCUMENTACION COMENTA QUE LA ENVIARA EL DIA DE HOY ATRAVEZ DE WHATSAPP', 504, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(876, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA EL SR. RAMIREZ QUE AUN NO HA LLAMADO A LA ASEGURADORA', 505, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(876, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 506, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(876, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA EL SR. RAMIREZ QUE NO HA PODIDO HABLAR A LA ASEGURADORA, MARCAR POSTERIORMENTE', 507, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(876, 'Teresa Medina', '2022-10-20', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA POR WHATS Y COMENTA QUE NO TIENE LAS TENENCIAS NI BAJA DE PLACAS Y QUIERE SABER CUANTO ES LO QUE SE LE PAGARA, PARA SABER SI CONTINUA CON EL TRAMITE O RETIRA SU MOTO, SE COMPARTE TELEFONO DE LA ASEGURADORA', 508, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(876, 'Teresa Medina', '2022-10-19', 'SIN CONTACTO', 'SE MARCA EN VARIAS OCASIONES Y SE ENVIA WHATS', 509, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(877, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'MARCAR EL JUEVES A ANA SEGUROS', 510, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(877, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTO A ANA SEGUROS PARA SOLICITAR EL ESTATUS DE PAGO Y COMENTA ZAIRA PALMA QUE LE MARQUE EL JUEVES PARA DARME UNA RESPUESTA, YA QUE LA CHICA ENCARGADA DE ESA ZONA NO SE ENCUENTRA', 511, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(877, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA A ANA SEGUROS PARA SOLICITAR ESTATUS DE PAGO PERO NADIE CONTESTA LA EXTENSIONES,ESO HA SIDO DURANTE TODO EL DIA (3.12)', 512, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(877, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'ME CONTACTA A ANA SEGUROS PARA SOLICITAR EL ESTATUS DE PAGO, PERO MENCIONA LA SRITA ZAIRA PALMA QUE LE LLAME EL LUNES QUE SE ENCUENTRA LA PERSONA ENCARGADA DE ESA ZONA', 513, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(877, 'Teresa Medina', '2022-10-27', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA AL SR. LEMUS PERO MANDA A BUZON, SE ENVIA WHATS PREGUNTANDO PORQUE MEDIO ENVIO LAS LLAVES', 514, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(877, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 515, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(877, 'Teresa Medina', '2022-10-25', 'CON CONTACTO SIN DOCUMENTOS', 'EN ESPERA DE RESPUESTA E ANA SEGUROS, YA ENTREGO TODA LA DOCUMENTACION', 516, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(877, 'Teresa Medina', '2022-10-21', 'CON CONTACTO SIN DOCUMENTOS', 'CONTACTO AL SR. LEMUS SOLICITANDO EL RECIBO DE LA ENTREGA DE ORIGINALES Y COMENTA QUE NO LE PROPORCIONARON NADA, SOLO QUE LE LLAMARON POSTERIORMENTE PARA PEDIRLES  LAS LLAVES Y YA LAS MANDO HACE MAS DE 15 DIAS, SOLICITA SABER QUE ESTA PASANDO CON SU PAGO', 517, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(877, 'Teresa Medina', '2022-10-19', 'SIN CONTACTO', '1ER. TEL O CONTESTA SE ENVIA SMS,  2DO. TEL SE CONTACTA A LA EMPRESA Y ME INFORMAN LA SRITA MAYRA SANCHEZ  QUE YA ESTA DESCONECTADO Y NO HAY FORMA DE LOCALIZARLO  Y LE PASARAN EL MENSAJE, DEJO DATOS, LLAMAR MA¤ANA', 518, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(877, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'NOS CONTACTA EL  SR. GUSTAVO LEMUS INFORMANDO QUE YA ENTREGO ORIGINALES, QUE SOLO FALTABA LA LLAVE PERO QUE LA ENVIO HACE 15 DIAS Y NO HA RECIBIDO RESPUESTA, SOLICITA ESTATUS DE SU PAGO', 519, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(878, 'Ivet Gonz lez', '2022-10-20', 'CONCLUIDO POR OTRAS VIAS (BARRA, OFICINA, BROKER)', 'SE CIERRA SINIESTRO YA QUE CONFIMA ASEGURADORA QUE EL PAGO YA FUE  REALIZADO', 520, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(878, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'COMENTA LA SRITA. ILIANA DEL ROCIO GARCIA GARCIA QUE YA ENTREGO ORIGINALES EL DIA 03/10/2022 Y QUIERE SABER EL ESTATUS DEL MISMO', 521, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(879, 'Ivet Gonz lez', '2022-10-27', 'CONCLUIDO POR OTRAS VIAS (BARRA, OFICINA, BROKER)', 'CONFIRMA ASEGURADORA QUE EL TRAMITE YA ESTA FINALIZADO, SE CIERRA SINIESTRO', 522, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(879, 'Ivet Gonz lez', '2022-10-21', 'TERMINADO POR PROCESO COMPLETO', 'CONFIRMA ASEGURADORA QUE EL TRAMITE YA ESTA FINALIZADO, SE CIERRA SINIESTRO', 523, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(879, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'SE CONTACTA A LA SRITA. CINTHIA REYNOZO GARCIA E INFORMA QUE YA CONCLUYO SU TRAMITE', 524, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(880, 'Teresa Medina', '2022-11-02', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA DOS VECES PERO MANDA A BUZON, NO HA CONTESTADO WHATS, MARCAR MA¥ANA DE OTRO NUMERO', 525, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(880, 'Teresa Medina', '2022-11-01', 'CON CONTACTO SIN DOCUMENTOS', 'NUEVAMENTE SE MARCA DOS VECES Y MANDA A BUZON, SE ENVIA CORREO DE SEGUIMIENTO, CABE MENCIONAR QUE A VISTO LOS MENSAJES PERO NO CONTESTA', 526, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(880, 'Teresa Medina', '2022-10-31', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA DOS VECES SIN EXITO, LOS MENSAJES DE WHATS NO LOS HA CONTESTADO', 527, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(880, 'Teresa Medina', '2022-10-28', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA 2 VECES Y NO CONTESTA, SE ENVIA NUEVAMENTE WHATS, CABE MENCIONAR QUE NO HA CONTESTADO EL MENSAJE ANTERIOR', 528, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(880, 'Teresa Medina', '2022-10-26', 'CON CONTACTO SIN DOCUMENTOS', 'SE MARCA Y MANDA A BUZON, SE ENVIA WHATS SOLICITANDO DOCUMENTOS', 529, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(880, 'Ivet Gonz lez', '2022-10-25', 'ASIGNACION A INTEGRADOR Teresa Medina', '', 530, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(880, 'Teresa Medina', '2022-10-24', 'CON CONTACTO SIN DOCUMENTOS', 'SE REENVIA CORREO CON LISTADO', 531, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL),
(880, 'Teresa Medina', '2022-10-19', 'CON CONTACTO SIN DOCUMENTOS', 'SE ENVIA CORREO CON LISTADO,Y LIGA PARA CARGAR DOCUMENTOS,  COMENTA QUE AUN NO LOS COMPLETA PERO QUE EN BREVE LOS ENVIA', 532, NULL, NULL, 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', 'Sin cambios', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(25) NOT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `contrasena` varchar(30) DEFAULT NULL,
  `privilegios` varchar(45) DEFAULT NULL,
  `nombreReal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `usuario`, `contrasena`, `privilegios`, `nombreReal`) VALUES
(1, 'admin', '1234', 'root', 'Juan Perez');

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
-- Indices de la tabla `seguimientoprincipal`
--
ALTER TABLE `seguimientoprincipal`
  ADD PRIMARY KEY (`idseguimientoPrincipal`),
  ADD KEY `fkIdRegistroSegPrincipal` (`fkIdRegistroSegPrincipal`);

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
  MODIFY `iddocumentosaprobados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=838;

--
-- AUTO_INCREMENT de la tabla `encuestaplataforma`
--
ALTER TABLE `encuestaplataforma`
  MODIFY `idencuestaPlataforma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estadoproceso`
--
ALTER TABLE `estadoproceso`
  MODIFY `idProceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de la tabla `fechasseguimiento`
--
ALTER TABLE `fechasseguimiento`
  MODIFY `idFechasseguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `idimagenes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `infoauto`
--
ALTER TABLE `infoauto`
  MODIFY `idAuto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de la tabla `infocarga`
--
ALTER TABLE `infocarga`
  MODIFY `idinfocarga` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `infocliente`
--
ALTER TABLE `infocliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de la tabla `infosiniestro`
--
ALTER TABLE `infosiniestro`
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=994;

--
-- AUTO_INCREMENT de la tabla `insertarregistros`
--
ALTER TABLE `insertarregistros`
  MODIFY `idInsertarRegistros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de la tabla `mensajesseguimientos`
--
ALTER TABLE `mensajesseguimientos`
  MODIFY `idmensajesSeguimientos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  MODIFY `idSeguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de la tabla `seguimientoprincipal`
--
ALTER TABLE `seguimientoprincipal`
  MODIFY `idseguimientoPrincipal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=533;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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

--
-- Filtros para la tabla `seguimientoprincipal`
--
ALTER TABLE `seguimientoprincipal`
  ADD CONSTRAINT `fkIdRegistroSegPrincipal` FOREIGN KEY (`fkIdRegistroSegPrincipal`) REFERENCES `infosiniestro` (`idRegistro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
