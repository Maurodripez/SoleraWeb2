-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-10-2022 a las 05:33:55
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
(1, 'true', 'false', 'false', 'true', 'true', 'true', 'true', 'true', 'true', 2),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);

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
(6, 'Terminado', NULL, NULL, NULL, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechasseguimiento`
--

CREATE TABLE `fechasseguimiento` (
  `idFechasseguimiento` int(11) NOT NULL,
  `fechaSeguimiento` varchar(45) DEFAULT NULL,
  `fechaDecretacion` varchar(45) DEFAULT NULL,
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

INSERT INTO `fechasseguimiento` (`idFechasseguimiento`, `fechaSeguimiento`, `fechaDecretacion`, `fechaContactoCliente`, `fechaPrimerEnvioDoc`, `fechaIntegracionexpedienteCompleto`, `fechaTermino`, `contactoFinal`, `siClienteOtro`, `numDatosincorrectos`, `fecharecepcionDocOriginales`, `fechaPago`, `docCompletosCorrectos`, `noindicaFaltantes`, `importePagado`, `comentarios`, `detalles`, `linea`, `guia`, `refactura`, `aviso`, `fkidRegistro`) VALUES
(2, '2022-09-15', '', NULL, '2022-09-18', '2022-10-12', '2019-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(3, '2022-09-16', '', NULL, '2022-09-18', '2022-10-12', '2019-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(4, NULL, '', NULL, '2022-09-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(6, NULL, '', NULL, '2022-09-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6),
(7, NULL, '', NULL, '2022-04-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7),
(8, NULL, '', NULL, '2020-09-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8);

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
(13, 'Identificacion oficial', 'C:\\Users\\SEAS\\Desktop\\SoleraWeb\\SoleraWeb\\web\\documentos\\2\\cute (12).jpg', 2, '2022-10-05', 'cute (12).jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infoauto`
--

CREATE TABLE `infoauto` (
  `idAuto` int(11) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `numSerie` varchar(45) NOT NULL,
  `valorIndemnizacion` varchar(45) NOT NULL,
  `fkIdRegistro` int(11) NOT NULL,
  `valorComercial` varchar(45) NOT NULL,
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
(8, 'SUZUKI', 'IGNIS', '2019', '123456789', '0', 8, '', NULL);

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
(8, '0', NULL, NULL, NULL, 8, 'Carolina May', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infosiniestro`
--

CREATE TABLE `infosiniestro` (
  `idRegistro` int(11) NOT NULL,
  `numSiniestro` varchar(9) NOT NULL,
  `poliza` varchar(10) NOT NULL,
  `afectado` varchar(25) NOT NULL,
  `tipoDeCaso` varchar(45) NOT NULL,
  `cobertura` varchar(25) NOT NULL,
  `fechaSiniestro` date NOT NULL,
  `estado` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `region` varchar(200) NOT NULL,
  `ubicacionTaller` varchar(45) NOT NULL,
  `financiado` varchar(25) NOT NULL,
  `regimenFiscal` varchar(25) NOT NULL,
  `estatusCliente` varchar(20) NOT NULL,
  `comentariosCliente` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `datosAudatex` varchar(45) DEFAULT NULL,
  `passwordExterno` varchar(45) DEFAULT NULL,
  `fechaCarga` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tabla para la informacion del siniestro';

--
-- Volcado de datos para la tabla `infosiniestro`
--

INSERT INTO `infosiniestro` (`idRegistro`, `numSiniestro`, `poliza`, `afectado`, `tipoDeCaso`, `cobertura`, `fechaSiniestro`, `estado`, `ciudad`, `region`, `ubicacionTaller`, `financiado`, `regimenFiscal`, `estatusCliente`, `comentariosCliente`, `datosAudatex`, `passwordExterno`, `fechaCarga`) VALUES
(2, '12424141', '123124', 'T', 'Inundacion', 'DM', '2022-09-24', 'Chiapas', 'Todos-Ninguna', 'Layout ZG H: Monterrey', ' Toluca', 'No', 'Persona fisica', 'revision', 'sin comentarios', 'werwe', 'dfgh', '2022-09-23'),
(3, 'SIN000031', '1234569532', 'T', 'Incendio', 'DM', '2022-07-27', 'Michoacan', 'Todos-Ninguna', 'Layout ZG B: Acapulco-Toluca-Pachuca-Cuernavaca', ' Cancun', 'Si', 'Persona fisica', 'Documento incorrecto', 'sin comentarios', 'null2', ' Campeche', '2022-08-10'),
(4, 'SIN000032', '1234569533', 'T', 'COLISION', 'RT', '2022-07-27', 'Ciudad de Mexico', 'PUEBLA', 'LAYOUT ZG - C', 'NO LOCALIZADO', 'NO', 'PE', 'Enviado', NULL, NULL, NULL, '2022-07-10'),
(6, 'SIN000033', '1234569534', 'T', 'COLISION', 'RT', '2022-07-27', 'Estado de Mexico', 'PUEBLA', 'LAYOUT ZG - C', 'NO LOCALIZADO', 'NO', 'PE', 'Enviado', NULL, NULL, NULL, '2022-06-01'),
(7, 'SIN000031', '1234569535', 'T', 'COLISION', 'RT', '2022-07-27', 'Oaxaca', 'PUEBLA', 'LAYOUT ZG - C', 'NO LOCALIZADO', 'NO', 'PE', 'Enviado', NULL, NULL, NULL, '2022-05-13'),
(8, 'SIN000131', '1234567890', '1', 'Colision', 'DM', '2022-09-07', 'Aguascalientes', 'Todos-Ninguna', 'A: Guadalajara, Colima, Nayarit', 'as', 'Si', 'Persona fisica', 'Documento incorrecto', 'ASD', 'ser', 'qwqwe', '2022-09-13');

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
(2, 'No atendido', '', 'Asegurado', 'Si', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE `seguimiento` (
  `idSeguimiento` int(11) NOT NULL,
  `fkIdUsuario` int(11) NOT NULL,
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
(2, 0, NULL, NULL, 'correctos', 3);

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
  ADD PRIMARY KEY (`idSeguimiento`);

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
  MODIFY `iddocumentosaprobados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estadoproceso`
--
ALTER TABLE `estadoproceso`
  MODIFY `idProceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `fechasseguimiento`
--
ALTER TABLE `fechasseguimiento`
  MODIFY `idFechasseguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `idimagenes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `infoauto`
--
ALTER TABLE `infoauto`
  MODIFY `idAuto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `infocarga`
--
ALTER TABLE `infocarga`
  MODIFY `idinfocarga` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `infocliente`
--
ALTER TABLE `infocliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `infosiniestro`
--
ALTER TABLE `infosiniestro`
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `insertarregistros`
--
ALTER TABLE `insertarregistros`
  MODIFY `idInsertarRegistros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  MODIFY `idSeguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
