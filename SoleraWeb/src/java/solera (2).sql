-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2022 a las 20:54:35
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
  `identificacionOficial` varchar(5) DEFAULT 'false',
  `comprobanteDeDomicilio` varchar(5) DEFAULT 'false',
  `informacionAdicional` varchar(5) DEFAULT 'false',
  `facturaDelVehiculo` varchar(5) DEFAULT 'false',
  `tenencias` varchar(5) DEFAULT 'false',
  `baja` varchar(5) DEFAULT 'false',
  `estadodeCuenta` varchar(5) DEFAULT 'false',
  `denuncia` varchar(5) DEFAULT 'false',
  `acreditacion` varchar(5) DEFAULT 'false',
  `fkIdRegistroDocsAprobados` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `documentosaprobados`
--

INSERT INTO `documentosaprobados` (`iddocumentosaprobados`, `identificacionOficial`, `comprobanteDeDomicilio`, `informacionAdicional`, `facturaDelVehiculo`, `tenencias`, `baja`, `estadodeCuenta`, `denuncia`, `acreditacion`, `fkIdRegistroDocsAprobados`) VALUES
(23, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 76),
(24, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 75),
(25, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 78),
(26, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 77),
(27, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 80),
(28, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 79),
(29, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 81),
(30, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 82),
(31, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 83),
(32, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 84),
(33, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 85),
(34, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 86),
(35, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 87),
(36, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 88),
(37, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 89),
(38, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 90),
(39, 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 91);

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
(27, 'Cancelado', 'Datos incorrectos', NULL, NULL, 76),
(28, 'Nuevo', 'Nuevo', NULL, NULL, 75),
(29, 'Nuevo', 'Nuevo', NULL, NULL, 78),
(30, 'Nuevo', 'Nuevo', NULL, NULL, 77),
(33, 'Nuevo', 'Nuevo', NULL, NULL, 80),
(34, 'Nuevo', 'Nuevo', NULL, NULL, 79),
(35, 'Nuevo', 'Nuevo', NULL, NULL, 81),
(36, 'Nuevo', 'Nuevo', NULL, NULL, 82),
(37, 'Nuevo', 'Nuevo', NULL, NULL, 83),
(38, 'Nuevo', 'Nuevo', NULL, NULL, 84),
(39, 'Nuevo', 'Nuevo', NULL, NULL, 85),
(40, 'Nuevo', 'Nuevo', NULL, NULL, 86),
(41, 'Nuevo', 'Nuevo', NULL, NULL, 87),
(42, 'Nuevo', 'Nuevo', NULL, NULL, 88),
(43, 'Nuevo', 'Nuevo', NULL, NULL, 89),
(44, 'Nuevo', 'Nuevo', NULL, NULL, 90),
(45, 'Nuevo', 'Nuevo', NULL, NULL, 91);

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
(29, '2022-10-19', NULL, '2019-09-23', '2022-09-01', '2022-09-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 76),
(30, NULL, NULL, '2022-10-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78),
(33, NULL, NULL, '2022-10-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 77),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80),
(36, NULL, NULL, '2022-10-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 81),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 84),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 85),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86),
(42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 87),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 88),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 89),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 91);

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
(26, 'Identificacion oficial', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\75\\foto_parzibyte.me (7).png', 75, '2022-10-12', 'foto_parzibyte.me (7).png'),
(27, 'Identificacion oficial', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\77\\foto_parzibyte.me (7).png', 77, '2022-10-12', 'foto_parzibyte.me (7).png'),
(29, 'Comprobante de domicilio.txt', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\81\\Comprobante de domicilio.txt', 81, '2022-10-12', '81Comprobante de domicilio.txt');

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
(41, 'suzuki', '2019', 'ignis', '23425636756585856', NULL, 81, NULL, NULL),
(42, 'toyota', '2019', 'yris', '89080776868', NULL, 82, NULL, NULL),
(43, 'suzuki', '2019', 'ignis', '23425636756585856', NULL, 83, NULL, NULL),
(44, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 84, NULL, NULL),
(45, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 85, NULL, NULL),
(46, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 86, NULL, NULL),
(47, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 87, NULL, NULL),
(48, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 88, NULL, NULL),
(49, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 89, NULL, NULL),
(50, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 90, NULL, NULL),
(51, 'suzuki', '2020', 'swift', '242433457353412000', NULL, 91, NULL, NULL);

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
(36, 'null', 'Martha', 'sdadasd@sdfs.com', 'null', 76, '89080776868', '457576', '67976967'),
(37, '2342525235', '13537656', 'null', 'sdad@sdfs.com', 75, 'Marin', 'null', 'null'),
(38, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 78, 'Marin', NULL, NULL),
(39, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 77, 'Martha', NULL, NULL),
(40, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 80, 'Martha', NULL, NULL),
(41, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 79, 'Marin', NULL, NULL),
(42, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 81, 'Marin', NULL, NULL),
(43, '457576', '67976967', NULL, 'sdadasd@sdfs.com', 82, 'Martha', NULL, NULL),
(44, '2342525235', '13537656', NULL, 'sdad@sdfs.com', 83, 'Marin', NULL, NULL),
(45, '4456789783', '', NULL, 'may@gil.com', 84, 'mario', NULL, NULL),
(46, '4456789783', '', NULL, 'may@gil.com', 85, 'mario', NULL, NULL),
(47, '4456789783', '', NULL, 'may@gil.com', 86, 'mario', NULL, NULL),
(48, '4456789783', '', NULL, 'may@gil.com', 87, 'mario', NULL, NULL),
(49, '4456789783', '', NULL, 'may@gil.com', 88, 'mario', NULL, NULL),
(50, '4456789783', '', NULL, 'may@gil.com', 89, 'mario', NULL, NULL),
(51, '4456789783', '', NULL, 'may@gil.com', 90, 'mario', NULL, NULL),
(52, '4456789783', '', NULL, 'may@gil.com', 91, 'mario', NULL, NULL);

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
(75, '1234', '12345', 'A', '', 'DM', '2020-12-12', '', '', '', 'Tlalpan', '', 'Persona fisica', 'Enviado', 'qweqe', 'Sin Datos', 'Sin Password', '2022-10-11', '2022-12-11'),
(76, '2343', '45646', 'A', 'Incendio', 'DM', '2020-10-12', 'Estado de Mexico', 'Todos-Ninguna', 'Layout ZG A: Guadalajara-Colima-Nayarit', ' Toluca', 'Si', 'Persona fisica', 'Documento incorrecto', 'Persona fisicaa', 'Sin Datos', 'Sin Password', '2022-10-12', '2022-10-11'),
(77, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', NULL, NULL, 'Sin Datos', 'Sin Password', '2022-10-12', '2022-10-11'),
(78, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', NULL, NULL, 'Sin Datos', 'Sin Password', '2022-10-12', '2022-12-11'),
(79, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', NULL, NULL, 'Sin Datos', 'Sin Password', '2022-10-12', '2022-12-11'),
(80, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', NULL, NULL, 'Sin Datos', 'Sin Password', '2022-10-12', '2022-10-11'),
(81, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-12', '2022-12-11'),
(82, '2343', '45646', 'A', NULL, 'DM', '2020-10-12', NULL, 'Puebla', NULL, 'Benito Juarez', NULL, 'Persona fisica', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-12', '2022-10-11'),
(83, '1234', '12345', 'A', NULL, 'DM', '2020-12-12', NULL, 'Chiapas', NULL, 'Tlalpan', NULL, 'Persona fisica', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2022-12-11'),
(84, '1234', '1234', 'a', NULL, 'dm', '2018-09-11', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2018-11-10'),
(85, '1234', '1234', 'a', NULL, 'dm', '2018-09-11', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2018-11-10'),
(86, '1234', '1234', 'a', NULL, 'dm', '2018-09-11', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2018-11-10'),
(87, '1234', '1234', 'a', NULL, 'dm', '2018-09-12', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2018-11-10'),
(88, '1234', '1234', 'a', NULL, 'dm', '2018-09-12', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2018-11-10'),
(89, '1234', '1234', 'a', NULL, 'dm', '2018-10-12', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2018-11-10'),
(90, '1234', '1234', 'a', NULL, 'dm', '2018-10-11', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2018-12-10'),
(91, '1234', '1234', 'a', NULL, 'dm', '2018-10-12', NULL, 'cdmx', NULL, 'Tlalpan', NULL, 'fisico', 'Sin Estatus', NULL, 'Sin Datos', 'Sin Password', '2022-10-14', '2018-12-11');

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
(24, NULL, NULL, NULL, NULL, 75),
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
(39, NULL, NULL, NULL, NULL, 91);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajesseguimientos`
--

CREATE TABLE `mensajesseguimientos` (
  `idmensajesSeguimientos` int(11) NOT NULL,
  `fkmensgSeguimientos` int(11) DEFAULT NULL,
  `mensajes` varchar(1000) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `fechaMensaje` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mensajesseguimientos`
--

INSERT INTO `mensajesseguimientos` (`idmensajesSeguimientos`, `fkmensgSeguimientos`, `mensajes`, `usuario`, `fechaMensaje`) VALUES
(1, 75, 'esta todo correcto', 'Solera', '2022-10-14'),
(2, 76, 'este es un mensaje de pruweba', 'Solera', '2022-10-14'),
(3, 76, 'correctos', 'Solera', '2022-10-14'),
(4, 75, 'envie docs', 'marin', '2022-10-15'),
(5, 75, 'qweqeqqweqe', 'Marin', '2022-10-15'),
(6, 75, 'envio los documetnos listos', 'Marin', '2022-10-15');

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
(21, NULL, NULL, NULL, NULL, 91);

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
  MODIFY `iddocumentosaprobados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `estadoproceso`
--
ALTER TABLE `estadoproceso`
  MODIFY `idProceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `fechasseguimiento`
--
ALTER TABLE `fechasseguimiento`
  MODIFY `idFechasseguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `idimagenes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `infoauto`
--
ALTER TABLE `infoauto`
  MODIFY `idAuto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `infocarga`
--
ALTER TABLE `infocarga`
  MODIFY `idinfocarga` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `infocliente`
--
ALTER TABLE `infocliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `infosiniestro`
--
ALTER TABLE `infosiniestro`
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `insertarregistros`
--
ALTER TABLE `insertarregistros`
  MODIFY `idInsertarRegistros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `mensajesseguimientos`
--
ALTER TABLE `mensajesseguimientos`
  MODIFY `idmensajesSeguimientos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  MODIFY `idSeguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
