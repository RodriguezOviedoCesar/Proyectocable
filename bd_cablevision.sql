-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2021 a las 03:14:00
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_cablevision`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abonado`
--

CREATE TABLE `abonado` (
  `id_tipo` int(6) NOT NULL,
  `DNI` int(8) NOT NULL,
  `condicion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `abonado`
--

INSERT INTO `abonado` (`id_tipo`, `DNI`, `condicion`) VALUES
(20, 23764725, 'pago'),
(20, 23762434, 'consulta'),
(20, 43457454, 'consulta'),
(20, 24565544, 'reclamo'),
(20, 77868447, 'pago');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actas`
--

CREATE TABLE `actas` (
  `cod_acta` int(10) NOT NULL,
  `nombre_user` char(5) NOT NULL,
  `cantidad` int(100) NOT NULL,
  `descripcion` text NOT NULL,
  `serie` varchar(8) NOT NULL,
  `condicion` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actas`
--

INSERT INTO `actas` (`cod_acta`, `nombre_user`, `cantidad`, `descripcion`, `serie`, `condicion`) VALUES
(1, 'JUARO', 1, 'switch PLANET 24 Pue', '1Z3ER43', 'Guardado'),
(2, 'JUARO', 3, 'Equipos HP Brick', '454GHY65', 'Guardado'),
(3, 'CHEGU', 2, 'KIT DE HERRAMIENTAS ', '42443F42', 'Prestamo'),
(4, 'SMQUI', 3, 'SWITCH PLANET - 24 PUERTOS \nSWITCH TRENDNET - 16PUERTOS\nTESTEADOR DE CABLE UTP ', '232445D', 'Traslado'),
(5, 'CHEGU', 1, 'CABLE UTP - 60 metros', '434FSAD4', 'Traslado'),
(6, 'JORHU', 1, 'monitor Samsung 19 °', '1323ADAF', 'Envio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaborador`
--

CREATE TABLE `colaborador` (
  `id_tipo` int(6) NOT NULL,
  `DNI_COLA` int(8) NOT NULL,
  `area` varchar(30) NOT NULL,
  `jefe` varchar(30) NOT NULL,
  `cargo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colaborador`
--

INSERT INTO `colaborador` (`id_tipo`, `DNI_COLA`, `area`, `jefe`, `cargo`) VALUES
(10, 56346788, 'ATC', 'Jorge Molina', 'asesora ATC'),
(10, 35452343, 'RRHH', 'Maria Hernandez', 'sup seg y salud'),
(10, 42346788, 'Cajera', 'Lelia Chavez', 'asesora ATC'),
(10, 12346345, 'Finanzas', 'Soledad Nicacio', 'Asistente contable'),
(10, 77671245, 'Cobranzas', 'Jenny Placencia', 'asesora de cobranzas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `conteo` int(100) NOT NULL,
  `DNI` int(8) NOT NULL,
  `id_usuario` int(6) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `fecha_ingreso` datetime NOT NULL,
  `fecha_salida` datetime DEFAULT NULL,
  `observacion` text DEFAULT NULL,
  `id_tipo` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`conteo`, `DNI`, `id_usuario`, `nombre`, `fecha_ingreso`, `fecha_salida`, `observacion`, `id_tipo`) VALUES
(2, 56346788, 444444, 'Maricruz Chuan', '2021-06-07 07:35:21', '2021-06-07 17:35:21', 'viene solo para firmar y se retirara', 10),
(3, 35452343, 333333, 'Diana Quispe', '2021-06-08 07:35:58', '2021-06-08 17:35:58', 'ingreso labores', 10),
(6, 42346788, 222222, 'Cecilia Martinez', '2021-06-13 02:40:33', '2021-06-13 02:40:33', 'ingreso labores', 10),
(7, 12346345, 333333, 'Anali Diego', '2021-06-16 08:41:14', '2021-06-16 18:41:14', 'ingreso y trae laptop personal', 10),
(8, 77671245, 444444, 'Yesenia Clemente', '2021-06-09 05:42:13', '2021-06-13 02:42:12', 'salida con permiso', 10),
(9, 23764725, 444444, NULL, '2021-06-10 11:59:46', '2021-06-17 12:10:46', NULL, 20),
(10, 23762434, 333333, NULL, '2021-06-10 14:00:51', '2021-06-10 12:06:51', NULL, 20),
(11, 43457454, 333333, NULL, '2021-06-15 08:02:26', '2021-06-15 09:02:26', NULL, 20),
(12, 24565544, 222222, NULL, '2021-06-15 10:03:07', '2021-06-15 10:03:07', NULL, 20),
(13, 77868447, 222222, NULL, '2021-06-13 03:04:20', '2021-06-13 03:04:20', NULL, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_tipo`
--

CREATE TABLE `persona_tipo` (
  `id_tipo` int(6) NOT NULL,
  `nombre_tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona_tipo`
--

INSERT INTO `persona_tipo` (`id_tipo`, `nombre_tipo`) VALUES
(10, 'colaborador'),
(20, 'abonados'),
(30, 'proveedores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_tipo` int(6) NOT NULL,
  `DNI_PROV` int(8) NOT NULL,
  `RUC` varchar(11) NOT NULL,
  `nom_prov` varchar(30) NOT NULL,
  `encargado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_tipo`, `DNI_PROV`, `RUC`, `nom_prov`, `encargado`) VALUES
(30, 23734681, '20600456297', 'GRUPO GORILA SAC', 'Jorge Mendoza'),
(30, 38362611, '23450456297', 'CENTURY LINK', 'Andres Mangualaya');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_usuario` int(6) NOT NULL,
  `categoria` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_usuario`, `categoria`) VALUES
(111111, 'supervisor'),
(222222, 'Agente'),
(333333, 'Agente'),
(444444, 'Agente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_seg`
--

CREATE TABLE `usuario_seg` (
  `id_usuario` int(6) NOT NULL,
  `nombre_user` char(5) NOT NULL,
  `turno` varchar(10) NOT NULL,
  `password` varchar(12) NOT NULL,
  `sede` varchar(10) NOT NULL,
  `Nomape` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_seg`
--

INSERT INTO `usuario_seg` (`id_usuario`, `nombre_user`, `turno`, `password`, `sede`, `Nomape`) VALUES
(111111, 'CHEGU', 'Mañana', '12345', 'Manylsa', 'Checa Agusto'),
(222222, 'JUARO', 'Noche', '12345', 'Huaycan', 'Juan Romero'),
(333333, 'SMQUI', 'Tarde', '12345', 'Vitarte', 'Smith Quispe'),
(444444, 'JORHU', 'Mañana', '12345', 'Sol y Camp', 'Jorge Huaranga');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `abonado`
--
ALTER TABLE `abonado`
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `actas`
--
ALTER TABLE `actas`
  ADD PRIMARY KEY (`cod_acta`),
  ADD KEY `nombre_user` (`nombre_user`);

--
-- Indices de la tabla `colaborador`
--
ALTER TABLE `colaborador`
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`conteo`),
  ADD KEY `id_tipo` (`id_tipo`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `DNI` (`DNI`);

--
-- Indices de la tabla `persona_tipo`
--
ALTER TABLE `persona_tipo`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuario_seg`
--
ALTER TABLE `usuario_seg`
  ADD PRIMARY KEY (`id_usuario`,`nombre_user`),
  ADD KEY `nombre_user` (`nombre_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actas`
--
ALTER TABLE `actas`
  MODIFY `cod_acta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `conteo` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `abonado`
--
ALTER TABLE `abonado`
  ADD CONSTRAINT `abonado_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `persona_tipo` (`id_tipo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `colaborador`
--
ALTER TABLE `colaborador`
  ADD CONSTRAINT `colaborador_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `persona_tipo` (`id_tipo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD CONSTRAINT `ingresos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario_seg` (`id_usuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ingresos_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `persona_tipo` (`id_tipo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `persona_tipo` (`id_tipo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD CONSTRAINT `tipo_usuario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario_seg` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_seg`
--
ALTER TABLE `usuario_seg`
  ADD CONSTRAINT `usuario_seg_ibfk_1` FOREIGN KEY (`nombre_user`) REFERENCES `actas` (`nombre_user`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
