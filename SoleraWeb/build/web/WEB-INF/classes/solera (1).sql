-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2022 a las 21:00:10
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
(10, '2022-10-31', NULL, '2022-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 844),
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
(1, 'Baja de placas', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\844\\Bajadeplacasbaja.pdf', 844, '2022-10-31', 'Bajadeplacasbaja.pdf'),
(2, 'Comprobante de domicilio', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\844\\Comprobante de domicilio-10_00_comprobante de domicilio.pdf', 844, '2022-10-31', 'Comprobante de domicilio-10_00_comprobante de domicilio.pdf'),
(3, 'Estado de cuenta', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\844\\Estado de cuenta-10_00_contrato bancario 1.jfif', 844, '2022-10-31', 'Estado de cuenta-10_00_contrato bancario 1.jfif'),
(4, 'Curp', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\844\\Curp-10_00_curp.pdf', 844, '2022-10-31', 'Curp-10_00_curp.pdf'),
(5, 'Identificacion oficial', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\844\\Identificacion oficial-10_00_ine.pdf', 844, '2022-10-31', 'Identificacion oficial-10_00_ine.pdf'),
(6, 'Poliza', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\844\\Poliza-10_00_poliza.pdf', 844, '2022-10-31', 'Poliza-10_00_poliza.pdf'),
(7, 'Tenencias', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\844\\Tenencias-10_00_tenencias.pdf', 844, '2022-10-31', 'Tenencias-10_00_tenencias.pdf'),
(8, 'Informacion adicional', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\844\\Informacion adicional-10_00_formato de finiquito.docx', 844, '2022-10-31', 'Informacion adicional-10_00_formato de finiquito.docx');

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
(1, 'admin', '1234', 'root', 'admin');

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
  MODIFY `iddocumentosaprobados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

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
  MODIFY `idimagenes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `idmensajesSeguimientos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  MODIFY `idSeguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
