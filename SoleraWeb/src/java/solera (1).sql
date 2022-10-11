-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2022 a las 20:59:07
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
  `identificacionOficial` varchar(5) DEFAULT NULL,
  `comprobanteDeDomicilio` varchar(5) DEFAULT NULL,
  `informacionAdicional` varchar(5) DEFAULT NULL,
  `facturaDelVehiculo` varchar(5) DEFAULT NULL,
  `tenencias` varchar(5) DEFAULT NULL,
  `baja` varchar(5) DEFAULT NULL,
  `estadodeCuenta` varchar(5) DEFAULT NULL,
  `denuncia` varchar(5) DEFAULT NULL,
  `acreditacion` varchar(5) DEFAULT NULL,
  `fkIdRegistroDocsAprobados` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `documentosaprobados`
--

INSERT INTO `documentosaprobados` (`iddocumentosaprobados`, `identificacionOficial`, `comprobanteDeDomicilio`, `informacionAdicional`, `facturaDelVehiculo`, `tenencias`, `baja`, `estadodeCuenta`, `denuncia`, `acreditacion`, `fkIdRegistroDocsAprobados`) VALUES
(1, 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 2),
(2, 'false', 'false', 'true', 'true', 'false', 'false', 'false', 'false', 'false', 3),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 61),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 64),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 68),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 72),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 71),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 73),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 74);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoproceso`
--

CREATE TABLE `estadoproceso` (
  `idProceso` int(11) NOT NULL,
  `estacionProceso` varchar(45) DEFAULT NULL,
  `estatusOperativo` varchar(45) DEFAULT NULL,
  `subEstatusProceso` varchar(45) DEFAULT NULL,
  `usuarioSeguimiento` varchar(45) DEFAULT NULL,
  `fkIdRegistroEstadoProceso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estadoproceso`
--

INSERT INTO `estadoproceso` (`idProceso`, `estacionProceso`, `estatusOperativo`, `subEstatusProceso`, `usuarioSeguimiento`, `fkIdRegistroEstadoProceso`) VALUES
(1, 'Cancelado', 'Sin Contacto', 'correcto', NULL, 2),
(2, 'Terminado', 'Datos incorrectos', NULL, NULL, 3),
(3, 'Cancelado', NULL, NULL, NULL, 4),
(4, 'Nuevo', NULL, NULL, NULL, 6),
(5, 'Terminado', NULL, NULL, NULL, 7),
(6, 'Terminado', NULL, NULL, NULL, 8),
(7, NULL, NULL, NULL, NULL, 55),
(8, NULL, NULL, NULL, NULL, 56),
(9, NULL, NULL, NULL, NULL, 58),
(10, NULL, NULL, NULL, NULL, 57),
(11, NULL, NULL, NULL, NULL, 59),
(12, NULL, NULL, NULL, NULL, 60),
(13, NULL, NULL, NULL, NULL, 61),
(14, NULL, NULL, NULL, NULL, 62),
(15, NULL, NULL, NULL, NULL, 64),
(16, NULL, NULL, NULL, NULL, 63),
(17, NULL, NULL, NULL, NULL, 66),
(18, NULL, NULL, NULL, NULL, 65),
(19, NULL, NULL, NULL, NULL, 67),
(20, NULL, NULL, NULL, NULL, 68),
(21, NULL, NULL, NULL, NULL, 70),
(22, NULL, NULL, NULL, NULL, 69),
(23, NULL, NULL, NULL, NULL, 71),
(24, NULL, NULL, NULL, NULL, 72),
(25, NULL, NULL, NULL, NULL, 74),
(26, NULL, NULL, NULL, NULL, 73);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechasseguimiento`
--

CREATE TABLE `fechasseguimiento` (
  `idFechasseguimiento` int(11) NOT NULL,
  `fechaSeguimiento` varchar(45) DEFAULT NULL,
  `fechaContactoCliente` varchar(45) DEFAULT NULL,
  `fechaPrimerEnvioDoc` date DEFAULT NULL,
  `fechaIntegracionexpedienteCompleto` varchar(45) DEFAULT NULL,
  `fechaTermino` varchar(45) DEFAULT NULL,
  `contactoFinal` varchar(45) DEFAULT NULL,
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
(2, '2022-09-15', NULL, '2022-09-18', '2022-10-12', '2019-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(3, '2022-09-16', NULL, '2022-09-18', '2022-10-12', '2019-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(4, NULL, NULL, '2022-09-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(6, NULL, NULL, '2022-09-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6),
(7, NULL, NULL, '2022-04-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7),
(8, NULL, NULL, '2020-09-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 61),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 64),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 68),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 71),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 72),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 74),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 73);

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
(13, 'Identificacion oficial', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\2\\cute (12).jpg', 2, '2022-10-05', 'cute (12).jpg'),
(14, 'Comprobante de domicilio', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\3\\cute (12).jpg', 3, '2022-10-07', 'cute (12).jpg'),
(15, 'Informacion adicional', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\3\\cute (10).jpg', 3, '2022-10-07', 'cute (10).jpg'),
(16, 'Identificacion oficial', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\3\\cute (11).jpg', 3, '2022-10-07', 'cute (11).jpg'),
(17, 'Tenencias', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\2\\', 2, '2022-10-11', '2Tenencias.txt'),
(18, 'Baja.txt', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\2\\', 2, '2022-10-11', '2Baja');

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
(2, 'etwrtt', 'revision', 'comentariosCliente', 'tyutr', 'tyu', 2, 'tyu', 'tyr'),
(3, 'Persona fisica', ' Campeche', 'revision', 'Persona fisica', 'null2', 3, 'Enviado', 'Si'),
(4, '', '', '', '', '0', 4, '', NULL),
(6, '', '', '', '', '0', 6, '', NULL),
(7, '', '', '', '', '0', 7, '', NULL),
(8, 'SUZUKI', 'IGNIS', '2019', '123456789', '0', 8, '', NULL),
(13, 'toyota', '2019', 'yris', '89080776868', NULL, 53, NULL, NULL),
(14, 'suzuki', '2019', 'ignis', '23425636756585856', NULL, 54, NULL, NULL),
(15, 'suzuki', '2019', 'ignis', '23425636756585856', NULL, 55, NULL, NULL),
(16, 'toyota', '2019', 'yris', '89080776868', NULL, 56, NULL, NULL),
(17, 'suzuki', '2019', 'ignis', '23425636756585856', NULL, 57, NULL, NULL),
(18, 'toyota', '2019', 'yris', '89080776868', NULL, 58, NULL, NULL),
(19, 'suzuki', '2019', 'ignis', '23425636756585856', NULL, 59, NULL, NULL),
(20, 'toyota', '2019', 'yris', '89080776868', NULL, 60, NULL, NULL),
(21, 'toyota', '2019', 'yris', '89080776868', NULL, 62, NULL, NULL),
(22, 'suzuki', '2019', 'ignis', '23425636756585856', NULL, 61, NULL, NULL),
(23, 'toyota', '2019', 'yris', '89080776868', NULL, 64, NULL, NULL),
(24, 'suzuki', '2019', 'ignis', '23425636756585856', NULL, 63, NULL, NULL),
(25, 'toyota', '2019', 'yris', '89080776868', NULL, 66, NULL, NULL),
(26, 'suzuki', '2019', 'ignis', '23425636756585856', NULL, 65, NULL, NULL),
(27, 'suzuki', '2019', 'ignis', '23425636756585856', NULL, 67, NULL, NULL),
(28, 'toyota', '2019', 'yris', '89080776868', NULL, 68, NULL, NULL),
(29, 'suzuki', '2019', 'ignis', '23425636756585856', NULL, 69, NULL, NULL),
(30, 'toyota', '2019', 'yris', '89080776868', NULL, 70, NULL, NULL),
(31, 'toyota', '2019', 'yris', '89080776868', NULL, 72, NULL, NULL),
(32, 'suzuki', '2019', 'ignis', '23425636756585856', NULL, 71, NULL, NULL),
(33, 'suzuki', '2019', 'ignis', '23425636756585856', NULL, 73, NULL, NULL),
(34, 'toyota', '2019', 'yris', '89080776868', NULL, 74, NULL, NULL);

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
  `telefonoPrincipal` varchar(10) NOT NULL,
  `telefonosecundario` varchar(10) DEFAULT NULL,
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
(3, 'ertew', 'erwu', 'eryutr', 'wet', 2, 'Martin lopez', 'treu', 'ghjghj'),
(4, 'sfsd', 'sdfsdf', 'nullsdfsdf', 'sdfsd', 3, 'null22', 'ssfsd', '0'),
(5, '0', NULL, NULL, NULL, 4, 'Sebastian PAz', NULL, NULL),
(6, '0', NULL, NULL, NULL, 6, 'Mariana Romero', NULL, NULL),
(7, '0', NULL, NULL, NULL, 7, 'Mario Martinez', NULL, NULL),
(8, '0', NULL, NULL, NULL, 8, 'Carolina May', NULL, NULL),
(14, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 54, 'Marin', NULL, NULL),
(15, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 53, 'Martha', NULL, NULL),
(16, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 55, 'Marin', NULL, NULL),
(17, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 56, 'Martha', NULL, NULL),
(18, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 57, 'Marin', NULL, NULL),
(19, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 58, 'Martha', NULL, NULL),
(20, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 59, 'Marin', NULL, NULL),
(21, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 60, 'Martha', NULL, NULL),
(22, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 62, 'Martha', NULL, NULL),
(23, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 61, 'Marin', NULL, NULL),
(24, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 64, 'Martha', NULL, NULL),
(25, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 63, 'Marin', NULL, NULL),
(26, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 65, 'Marin', NULL, NULL),
(27, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 66, 'Martha', NULL, NULL),
(28, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 68, 'Martha', NULL, NULL),
(29, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 67, 'Marin', NULL, NULL),
(30, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 69, 'Marin', NULL, NULL),
(31, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 70, 'Martha', NULL, NULL),
(32, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 72, 'Martha', NULL, NULL),
(33, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 71, 'Marin', NULL, NULL),
(34, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 73, 'Marin', NULL, NULL),
(35, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 74, 'Martha', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infosiniestro`
--

CREATE TABLE `infosiniestro` (
  `idRegistro` int(11) NOT NULL,
  `numSiniestro` varchar(9) DEFAULT NULL,
  `poliza` varchar(10) DEFAULT NULL,
  `afectado` varchar(25) DEFAULT NULL,
  `tipoDeCaso` varchar(45) DEFAULT NULL,
  `cobertura` varchar(25) DEFAULT NULL,
  `fechaSiniestro` date DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `region` varchar(200) DEFAULT NULL,
  `ubicacionTaller` varchar(45) DEFAULT NULL,
  `financiado` varchar(25) DEFAULT NULL,
  `regimenFiscal` varchar(25) DEFAULT NULL,
  `estatusCliente` varchar(20) DEFAULT NULL,
  `comentariosCliente` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `datosAudatex` varchar(45) DEFAULT NULL,
  `passwordExterno` varchar(45) DEFAULT NULL,
  `fechaCarga` date DEFAULT NULL,
  `fechaDecreto` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tabla para la informacion del siniestro';

--
-- Volcado de datos para la tabla `infosiniestro`
--

INSERT INTO `infosiniestro` (`idRegistro`, `numSiniestro`, `poliza`, `afectado`, `tipoDeCaso`, `cobertura`, `fechaSiniestro`, `estado`, `ciudad`, `region`, `ubicacionTaller`, `financiado`, `regimenFiscal`, `estatusCliente`, `comentariosCliente`, `datosAudatex`, `passwordExterno`, `fechaCarga`, `fechaDecreto`) VALUES
(2, '12424141', '123124', 'T', 'Inundacion', 'DM', '2022-09-24', 'Chiapas', 'Todos-Ninguna', 'Layout ZG H: Monterrey', ' Toluca', 'No', 'Persona fisica', 'revision', 'sin comentarios', 'werwe', 'dfgh', '2022-09-23', NULL),
(3, 'SIN000031', '1234569532', 'T', 'Incendio', 'DM', '2022-07-27', 'Michoacan', 'Todos-Ninguna', 'Layout ZG B: Acapulco-Toluca-Pachuca-Cuernavaca', ' Cancun', 'Si', 'Persona fisica', 'Documento incorrecto', 'sin comentarios', 'null2', ' Campeche', '2022-08-10', NULL),
(4, 'SIN000032', '1234569533', 'T', 'COLISION', 'RT', '2022-07-27', 'Ciudad de Mexico', 'PUEBLA', 'Layout ZG B: Acapulco-Toluca-Pachuca-Cuernavaca', 'NO LOCALIZADO', 'NO', 'PE', 'Enviado', NULL, NULL, NULL, '2022-07-10', NULL),
(6, 'SIN000033', '1234569534', 'T', 'COLISION', 'RT', '2022-07-27', 'Estado de Mexico', 'PUEBLA', 'Layout ZG B: Acapulco-Toluca-Pachuca-Cuernavaca', 'NO LOCALIZADO', 'NO', 'PE', 'Enviado', NULL, NULL, NULL, '2022-06-01', NULL),
(7, 'SIN000031', '1234569535', 'T', 'COLISION', 'RT', '2022-07-27', 'Oaxaca', 'PUEBLA', 'Layout ZG H: Monterrey', 'NO LOCALIZADO', 'NO', 'PE', 'Enviado', NULL, NULL, NULL, '2022-05-13', NULL),
(8, 'SIN000131', '1234567890', '1', 'Colision', 'DM', '2022-09-07', 'Aguascalientes', 'Todos-Ninguna', 'Layout ZG D: Merida-Cancun-Tuxtla-Villahermosa-Campeche', 'as', 'Si', 'Persona fisica', 'Documento incorrecto', 'ASD', 'ser', 'qwqwe', '2022-09-13', NULL),
(53, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-10-11'),
(54, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-12-11'),
(55, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-12-11'),
(56, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-10-11'),
(57, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-12-11'),
(58, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-10-11'),
(59, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-12-11'),
(60, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-10-11'),
(61, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-12-11'),
(62, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-10-11'),
(63, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-12-11'),
(64, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-10-11'),
(65, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-12-11'),
(66, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-10-11'),
(67, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-12-11'),
(68, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-10-11'),
(69, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-12-11'),
(70, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-10-11'),
(71, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-12-11'),
(72, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-10-11'),
(73, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-12-11'),
(74, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', NULL, NULL, NULL, NULL, '2022-10-11', '2022-10-11');

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
(1, 'No atendido', 'asegurado', 'Asegurado', 'Si', 2),
(2, 'No atendido', '', 'Asegurado', 'Si', 3),
(3, NULL, NULL, NULL, NULL, 55),
(4, NULL, NULL, NULL, NULL, 56),
(5, NULL, NULL, NULL, NULL, 58),
(6, NULL, NULL, NULL, NULL, 57),
(7, NULL, NULL, NULL, NULL, 59),
(8, NULL, NULL, NULL, NULL, 60),
(9, NULL, NULL, NULL, NULL, 62),
(10, NULL, NULL, NULL, NULL, 61),
(11, NULL, NULL, NULL, NULL, 64),
(12, NULL, NULL, NULL, NULL, 63),
(13, NULL, NULL, NULL, NULL, 66),
(14, NULL, NULL, NULL, NULL, 65),
(15, NULL, NULL, NULL, NULL, 67),
(16, NULL, NULL, NULL, NULL, 68),
(17, NULL, NULL, NULL, NULL, 70),
(18, NULL, NULL, NULL, NULL, 69),
(19, NULL, NULL, NULL, NULL, 72),
(20, NULL, NULL, NULL, NULL, 71),
(21, NULL, NULL, NULL, NULL, 74),
(22, NULL, NULL, NULL, NULL, 73);

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
(1, 0, NULL, NULL, 'correctos', 2),
(2, 0, NULL, NULL, 'correctos', 3),
(3, NULL, NULL, NULL, NULL, 74),
(4, NULL, NULL, NULL, NULL, 73);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(25) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `contrasena` varchar(30) NOT NULL,
  `privilegios` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `usuario`, `contrasena`, `privilegios`) VALUES
(1, 'root', '1234', 'admin');

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
  MODIFY `iddocumentosaprobados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `estadoproceso`
--
ALTER TABLE `estadoproceso`
  MODIFY `idProceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `fechasseguimiento`
--
ALTER TABLE `fechasseguimiento`
  MODIFY `idFechasseguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `idimagenes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `infoauto`
--
ALTER TABLE `infoauto`
  MODIFY `idAuto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `infocarga`
--
ALTER TABLE `infocarga`
  MODIFY `idinfocarga` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `infocliente`
--
ALTER TABLE `infocliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `infosiniestro`
--
ALTER TABLE `infosiniestro`
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `insertarregistros`
--
ALTER TABLE `insertarregistros`
  MODIFY `idInsertarRegistros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  MODIFY `idSeguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Filtros para la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD CONSTRAINT `fkIdRegistroSeguimiento` FOREIGN KEY (`fkIdRegistroSeguimiento`) REFERENCES `infosiniestro` (`idRegistro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
