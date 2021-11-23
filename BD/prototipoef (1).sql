-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2021 a las 21:24:23
-- Versión del servidor: 8.0.26
-- Versión de PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prototipoef`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion`
--
create database prototipoef;
use prototipoef;
CREATE TABLE `aplicacion` (
  `pkId` varchar(15) NOT NULL,
  `fkIdModulo` varchar(15) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `estado` int NOT NULL,
  `rutaChm` varchar(180) NOT NULL,
  `rutaHtml` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aplicacion`
--

INSERT INTO `aplicacion` (`pkId`, `fkIdModulo`, `nombre`, `estado`, `rutaChm`, `rutaHtml`) VALUES
('0001', '1', 'Login Seguridad HSC', 1, '1', '0'),
('0002', '1', 'Registrar Usuario', 1, '2', '0'),
('0003', '1', 'Mantenimiento Aplicación', 1, '3', '0'),
('0004', '1', 'Mantenimiento Perfil', 1, '4', '0'),
('0005', '1', 'Asignación de Aplicación a Perfiles', 1, '5', '0'),
('0006', '1', 'Asignación de Aplicación a Usuarios', 1, '6', '0'),
('0007', '1', 'Asignación de Perfiles a Usuarios', 1, '7', '0'),
('0008', '1', 'Asignación Permisos', 1, '8', '0'),
('0009', '1', 'Recuperar Contraseña', 1, '9', '0'),
('0010', '1', 'Cambiar Contraseña', 1, '10', '0'),
('0011', '1', 'Consulta Bitácora', 1, '11', '0'),
('0012', '1', 'Mantenimiento Módulo', 1, '12', '0'),
('2020', '2', 'MantenimientoConta2020', 1, 'Ayudas/ayuda1.chm', '/AyudasSobreMantenimientos.html/'),
('2025', '2', 'MantenimientoBanco2025', 1, 'Ayudas/ayuda1.chm', '/AyudasSobreMantenimientos.html/'),
('2030', '2', 'MantenimientoTipo2030', 1, 'Ayudas/ayuda1.chm', '/AyudasSobreMantenimientos.html/'),
('2035', '2', 'MovimientosBancarios2035', 1, 'Ayudas/ayuda1.chm', '/AyudasSobreMantenimientos.html/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacionperfil`
--

CREATE TABLE `aplicacionperfil` (
  `fkIdPerfil` varchar(15) NOT NULL,
  `fkIdAplicacion` varchar(15) NOT NULL,
  `permisoEscritura` int DEFAULT NULL,
  `permisoLectura` int DEFAULT NULL,
  `permisoModificar` int DEFAULT NULL,
  `permisoEliminar` int DEFAULT NULL,
  `permisoImprimir` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banco`
--

CREATE TABLE `banco` (
  `IdBanco` varchar(15) NOT NULL,
  `nombreBanco` varchar(20) NOT NULL,
  `direccionBanco` varchar(25) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banco`
--

INSERT INTO `banco` (`IdBanco`, `nombreBanco`, `direccionBanco`, `estado`) VALUES
('1', 'BAM', 'Zona 10', 'A'),
('2', 'PROMERICA', 'Zona 10', 'A'),
('3', 'BAC', 'Zona 10', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacorausuario`
--

CREATE TABLE `bitacorausuario` (
  `pkId` int NOT NULL,
  `fkIdUsuario` varchar(15) NOT NULL,
  `host` varchar(45) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `fkIdModulo` varchar(15) NOT NULL,
  `fkIdAplicacion` varchar(15) NOT NULL,
  `accion` varchar(200) NOT NULL,
  `conexionFecha` date DEFAULT NULL,
  `conexionHora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bitacorausuario`
--

INSERT INTO `bitacorausuario` (`pkId`, `fkIdUsuario`, `host`, `ip`, `fkIdModulo`, `fkIdAplicacion`, `accion`, `conexionFecha`, `conexionHora`) VALUES
(1, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '11:43:38'),
(2, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '11:43:53'),
(3, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0012', 'Entrada a la Vista', '2021-11-23', '11:43:57'),
(4, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0012', 'Inserción realizada', '2021-11-23', '11:44:09'),
(5, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0003', 'Entrada a la Vista', '2021-11-23', '11:44:17'),
(6, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0003', 'Inserción realizada', '2021-11-23', '11:44:52'),
(7, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0003', 'Inserción realizada', '2021-11-23', '11:45:34'),
(8, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0003', 'Inserción realizada', '2021-11-23', '11:46:09'),
(9, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0006', 'Entrada a la Vista', '2021-11-23', '11:46:42'),
(10, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0006', 'Consulta', '2021-11-23', '11:46:47'),
(11, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0006', 'Asignar', '2021-11-23', '11:46:51'),
(12, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0006', 'Asignar', '2021-11-23', '11:46:53'),
(13, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0006', 'Asignar', '2021-11-23', '11:46:56'),
(14, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0008', 'Entrada a la Vista', '2021-11-23', '11:47:00'),
(15, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0008', 'Guardar', '2021-11-23', '11:47:13'),
(16, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0008', 'Guardar', '2021-11-23', '11:47:19'),
(17, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0008', 'Guardar', '2021-11-23', '11:47:25'),
(18, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'Salir', '2021-11-23', '11:47:43'),
(19, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'insertar', '2021-11-23', '11:47:50'),
(20, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Salir', '2021-11-23', '11:47:52'),
(21, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '11:59:34'),
(22, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '12:02:46'),
(23, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'insertar', '2021-11-23', '12:02:58'),
(24, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'Salir', '2021-11-23', '12:03:01'),
(25, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '12:07:05'),
(26, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'Salir', '2021-11-23', '12:07:16'),
(27, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'Salir', '2021-11-23', '12:07:23'),
(28, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'insertar', '2021-11-23', '12:07:28'),
(29, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Salir', '2021-11-23', '12:07:31'),
(30, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '12:12:33'),
(31, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Salir', '2021-11-23', '12:12:44'),
(32, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '12:41:59'),
(33, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '12:42:20'),
(34, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '12:42:28'),
(35, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0003', 'Entrada a la Vista', '2021-11-23', '12:42:31'),
(36, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0003', 'Inserción realizada', '2021-11-23', '12:42:56'),
(37, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0007', 'Entrada a la Vista', '2021-11-23', '12:43:04'),
(38, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0006', 'Entrada a la Vista', '2021-11-23', '12:43:08'),
(39, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0006', 'Consulta', '2021-11-23', '12:43:13'),
(40, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0006', 'Asignar', '2021-11-23', '12:43:16'),
(41, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0008', 'Entrada a la Vista', '2021-11-23', '12:43:20'),
(42, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0008', 'Guardar', '2021-11-23', '12:43:34'),
(43, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '12:43:50'),
(44, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'insertar', '2021-11-23', '12:44:01'),
(45, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'Salir', '2021-11-23', '12:44:04'),
(46, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '12:47:28'),
(47, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'insertar', '2021-11-23', '12:47:38'),
(48, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'guardar', '2021-11-23', '12:47:46'),
(49, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'Salir', '2021-11-23', '12:47:48'),
(50, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'insertar', '2021-11-23', '12:47:54'),
(51, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'guardar', '2021-11-23', '12:48:58'),
(52, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'Salir', '2021-11-23', '12:49:01'),
(53, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'insertar', '2021-11-23', '12:49:08'),
(54, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'guardar', '2021-11-23', '12:49:55'),
(55, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Salir', '2021-11-23', '12:49:56'),
(56, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'insertar', '2021-11-23', '12:50:03'),
(57, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'Salir', '2021-11-23', '12:50:09'),
(58, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '12:55:11'),
(59, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Salir', '2021-11-23', '12:59:53'),
(60, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'Salir', '2021-11-23', '13:00:58'),
(61, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'Salir', '2021-11-23', '13:02:44'),
(62, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'Salir', '2021-11-23', '13:06:12'),
(63, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '13:18:16'),
(64, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Ayuda', '2021-11-23', '13:18:26'),
(65, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Salir', '2021-11-23', '13:18:38'),
(66, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'Ayuda', '2021-11-23', '13:18:43'),
(67, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'Salir', '2021-11-23', '13:18:50'),
(68, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'Ayuda', '2021-11-23', '13:18:56'),
(69, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'Salir', '2021-11-23', '13:19:01'),
(70, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'Ayuda', '2021-11-23', '13:19:08'),
(71, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'Salir', '2021-11-23', '13:19:17'),
(72, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '13:26:27'),
(73, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'reporteador', '2021-11-23', '13:26:38'),
(74, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Salir', '2021-11-23', '13:26:43'),
(75, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '13:33:03'),
(76, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'Ayuda', '2021-11-23', '13:33:11'),
(77, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'Salir', '2021-11-23', '13:33:14'),
(78, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '13:36:43'),
(79, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'reporteador', '2021-11-23', '13:36:55'),
(80, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'reporteador', '2021-11-23', '13:36:59'),
(81, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'Salir', '2021-11-23', '13:37:00'),
(82, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'Ayuda', '2021-11-23', '13:37:04'),
(83, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'Salir', '2021-11-23', '13:37:05'),
(84, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Ayuda', '2021-11-23', '13:37:10'),
(85, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Salir', '2021-11-23', '13:37:11'),
(86, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '13:38:25'),
(87, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'Salir', '2021-11-23', '13:38:32'),
(88, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'reporteador', '2021-11-23', '13:38:39'),
(89, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'Salir', '2021-11-23', '13:38:42'),
(90, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '13:44:51'),
(91, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'reporteador', '2021-11-23', '13:45:02'),
(92, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'Salir', '2021-11-23', '13:45:04'),
(93, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '13:59:03'),
(94, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'insertar', '2021-11-23', '13:59:33'),
(95, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'guardar', '2021-11-23', '13:59:54'),
(96, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Boton Siguiente', '2021-11-23', '14:00:00'),
(97, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Boton Anterior', '2021-11-23', '14:00:01'),
(98, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Boton Siguiente', '2021-11-23', '14:00:01'),
(99, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Boton Anterior', '2021-11-23', '14:00:02'),
(100, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Boton Siguiente', '2021-11-23', '14:00:04'),
(101, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'modificar', '2021-11-23', '14:00:06'),
(102, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'guardar', '2021-11-23', '14:00:11'),
(103, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Boton Siguiente', '2021-11-23', '14:00:12'),
(104, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'eliminar', '2021-11-23', '14:00:20'),
(105, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Boton Siguiente', '2021-11-23', '14:00:22'),
(106, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Ayuda', '2021-11-23', '14:00:24'),
(107, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Ayuda', '2021-11-23', '14:00:27'),
(108, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '14:09:42'),
(109, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'Ayuda', '2021-11-23', '14:09:51'),
(110, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'reporteador', '2021-11-23', '14:09:54'),
(111, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '1', '0001', 'Inicio de sesión exitoso', '2021-11-23', '14:12:40'),
(112, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'insertar', '2021-11-23', '14:13:06'),
(113, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'guardar', '2021-11-23', '14:13:26'),
(114, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Boton Siguiente', '2021-11-23', '14:13:28'),
(115, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Boton Siguiente', '2021-11-23', '14:13:29'),
(116, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Boton Anterior', '2021-11-23', '14:13:29'),
(117, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Boton Anterior', '2021-11-23', '14:13:30'),
(118, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Boton Siguiente', '2021-11-23', '14:13:30'),
(119, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'modificar', '2021-11-23', '14:13:33'),
(120, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'guardar', '2021-11-23', '14:13:36'),
(121, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Boton Siguiente', '2021-11-23', '14:13:40'),
(122, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'eliminar', '2021-11-23', '14:13:42'),
(123, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Boton Siguiente', '2021-11-23', '14:13:44'),
(124, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Boton Siguiente', '2021-11-23', '14:13:44'),
(125, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Boton Anterior', '2021-11-23', '14:13:44'),
(126, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Ayuda', '2021-11-23', '14:13:47'),
(127, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'reporteador', '2021-11-23', '14:14:02'),
(128, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2020', 'Salir', '2021-11-23', '14:14:09'),
(129, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'insertar', '2021-11-23', '14:14:17'),
(130, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'guardar', '2021-11-23', '14:14:37'),
(131, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'Boton Siguiente', '2021-11-23', '14:14:38'),
(132, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'Boton Anterior', '2021-11-23', '14:14:39'),
(133, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'Boton Siguiente', '2021-11-23', '14:14:39'),
(134, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'modificar', '2021-11-23', '14:14:41'),
(135, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'guardar', '2021-11-23', '14:14:44'),
(136, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'modificar', '2021-11-23', '14:14:46'),
(137, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'Boton Siguiente', '2021-11-23', '14:14:48'),
(138, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'guardar', '2021-11-23', '14:14:52'),
(139, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'Boton Siguiente', '2021-11-23', '14:14:54'),
(140, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'eliminar', '2021-11-23', '14:14:56'),
(141, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'Boton Siguiente', '2021-11-23', '14:14:58'),
(142, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'Ayuda', '2021-11-23', '14:15:01'),
(143, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'reporteador', '2021-11-23', '14:15:12'),
(144, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2025', 'Salir', '2021-11-23', '14:15:17'),
(145, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'insertar', '2021-11-23', '14:15:24'),
(146, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'guardar', '2021-11-23', '14:15:34'),
(147, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'Boton Siguiente', '2021-11-23', '14:15:35'),
(148, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'eliminar', '2021-11-23', '14:15:37'),
(149, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'Boton Siguiente', '2021-11-23', '14:15:38'),
(150, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'modificar', '2021-11-23', '14:15:38'),
(151, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'guardar', '2021-11-23', '14:15:41'),
(152, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'Ayuda', '2021-11-23', '14:15:44'),
(153, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'reporteador', '2021-11-23', '14:15:56'),
(154, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2030', 'Salir', '2021-11-23', '14:16:02'),
(155, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'insertar', '2021-11-23', '14:16:10'),
(156, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'guardar', '2021-11-23', '14:16:41'),
(157, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'eliminar', '2021-11-23', '14:16:45'),
(158, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'Boton Anterior', '2021-11-23', '14:16:50'),
(159, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'Boton Siguiente', '2021-11-23', '14:16:51'),
(160, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'Boton Anterior', '2021-11-23', '14:16:52'),
(161, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'modificar', '2021-11-23', '14:16:53'),
(162, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'guardar', '2021-11-23', '14:16:57'),
(163, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'Ayuda', '2021-11-23', '14:17:02'),
(164, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'reporteador', '2021-11-23', '14:17:14'),
(165, '1', 'DESKTOP-7BQFKM6', '192.168.1.7', '2', '2035', 'Salir', '2021-11-23', '14:17:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega`
--

CREATE TABLE `bodega` (
  `pkid` varchar(15) NOT NULL,
  `fkidTipobodega` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(65) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Pkid` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `idTipo` varchar(15) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `nit` varchar(15) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `estatus` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `idCuenta` varchar(15) NOT NULL,
  `nombre` varchar(65) DEFAULT NULL,
  `idTipoCuenta` varchar(15) DEFAULT NULL,
  `cargo` float DEFAULT '0',
  `abono` float DEFAULT '0',
  `saldoAcumulado` float DEFAULT '0',
  `estado` varchar(1) DEFAULT NULL,
  `idCuentaPadre` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentaconta`
--

CREATE TABLE `cuentaconta` (
  `IdCuenta` varchar(15) NOT NULL,
  `FkidBanco` varchar(15) NOT NULL,
  `nombreCuentaC` varchar(20) NOT NULL,
  `tipoCuentaC` varchar(25) NOT NULL,
  `direccionCuentaC` varchar(25) NOT NULL,
  `EstadoCuentaC` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuentaconta`
--

INSERT INTO `cuentaconta` (`IdCuenta`, `FkidBanco`, `nombreCuentaC`, `tipoCuentaC`, `direccionCuentaC`, `EstadoCuentaC`) VALUES
('1', '2', 'Adolfo Monterroso', 'Ahorro Quetzales', '12941284212', 'A'),
('2', '1', 'Josue Monterroso', 'Monetaria Quetzales', '12891312', 'I'),
('3', '3', 'Michelle Monterroso', 'Ahorro Quetzales', '18932', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentasbancos`
--

CREATE TABLE `cuentasbancos` (
  `IdCuenta` varchar(15) NOT NULL,
  `FkidBanco` varchar(15) NOT NULL,
  `nombreCuentaB` varchar(20) NOT NULL,
  `tipoCuentaB` varchar(25) NOT NULL,
  `direccionCuentaB` varchar(25) NOT NULL,
  `EstadoCuentaB` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuentasbancos`
--

INSERT INTO `cuentasbancos` (`IdCuenta`, `FkidBanco`, `nombreCuentaB`, `tipoCuentaB`, `direccionCuentaB`, `EstadoCuentaB`) VALUES
('1', '1', 'Bam Monetaria', 'Quetzales Monetaria', '128910298', 'A'),
('2', '2', 'Promerica Ahorro', 'Ahorro Quetzales', '18934', 'I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `pkIdEmpleado` varchar(15) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `fechaDeNacimiento` varchar(45) NOT NULL,
  `sueldo` float NOT NULL,
  `correo` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `contratado` varchar(45) NOT NULL,
  `añosDeExperiencia` int NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `fechaContratacion` date NOT NULL,
  `finDeContrato` date NOT NULL,
  `fkIdPuesto` varchar(15) NOT NULL,
  `fkIdEmpresa` varchar(15) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`pkIdEmpleado`, `nombre`, `apellido`, `fechaDeNacimiento`, `sueldo`, `correo`, `direccion`, `contratado`, `añosDeExperiencia`, `telefono`, `fechaContratacion`, `finDeContrato`, `fkIdPuesto`, `fkIdEmpresa`, `estado`) VALUES
('1', 'María', 'Hernandez', '1999-09-25', 4000, 'cmaria@gmail.com', 'zona 11', '4', 5, '789654123', '2016-10-25', '2021-12-25', '1', '1', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `idEmpresa` varchar(15) NOT NULL,
  `nit` varchar(13) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `direccion` text NOT NULL,
  `telefono` int NOT NULL,
  `estatus` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`idEmpresa`, `nit`, `nombre`, `direccion`, `telefono`, `estatus`) VALUES
('1', '65464-k', 'hotel san carlos', 'zona 6 de mixco', 65467654, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formapago`
--

CREATE TABLE `formapago` (
  `Pkid` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `estatus` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuesto`
--

CREATE TABLE `impuesto` (
  `idImpuesto` varchar(15) NOT NULL,
  `nombre` varchar(65) DEFAULT NULL,
  `porcentaje` float DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `Pkid` varchar(15) NOT NULL,
  `fkidsucursal` varchar(15) NOT NULL,
  `Fktipoinventario` varchar(15) NOT NULL,
  `fkidbodega` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea`
--

CREATE TABLE `linea` (
  `idLinea` varchar(15) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `idMarca` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `idMarca` varchar(15) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `pkId` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`pkId`, `nombre`, `descripcion`, `estado`) VALUES
('1', 'Seguridad', 'Módulo de Seguridad', '1'),
('2', 'bancos', 'examen final adolfo', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moneda`
--

CREATE TABLE `moneda` (
  `Pkid` varchar(15) NOT NULL,
  `nombreMoneda` varchar(30) NOT NULL,
  `estadoMoneda` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `moneda`
--

INSERT INTO `moneda` (`Pkid`, `nombreMoneda`, `estadoMoneda`) VALUES
('1', 'Quetzales', 'A'),
('2', 'Dolares', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientobanco`
--

CREATE TABLE `movimientobanco` (
  `idmovimiento` varchar(15) NOT NULL,
  `concepto` varchar(150) NOT NULL,
  `idtipo` varchar(15) NOT NULL,
  `cargo` float DEFAULT NULL,
  `abono` float DEFAULT NULL,
  `Pkid` varchar(15) DEFAULT NULL,
  `IdCuenta` varchar(15) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `movimientobanco`
--

INSERT INTO `movimientobanco` (`idmovimiento`, `concepto`, `idtipo`, `cargo`, `abono`, `Pkid`, `IdCuenta`, `estado`) VALUES
('1', 'Compra', '1', 1000, 100, '1', '1', 'I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `pkId` varchar(15) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`pkId`, `nombre`, `estado`) VALUES
('1', 'Administrador', '1'),
('2', 'Vendedor', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polizadetalle`
--

CREATE TABLE `polizadetalle` (
  `idPolizaEncabezado` varchar(15) NOT NULL,
  `fechaPoliza` date NOT NULL,
  `idCuenta` varchar(15) NOT NULL,
  `saldo` float DEFAULT NULL,
  `idTipoOperacion` varchar(15) DEFAULT NULL,
  `concepto` varchar(65) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polizaencabezado`
--

CREATE TABLE `polizaencabezado` (
  `idPolizaEncabezado` varchar(15) NOT NULL,
  `fechaPoliza` date NOT NULL,
  `idTipoPoliza` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `pkid` varchar(15) NOT NULL,
  `fkinventario` varchar(15) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Fkidlinea` varchar(15) NOT NULL,
  `Stock` int NOT NULL,
  `StockMaximo` int NOT NULL,
  `StockMinimo` int NOT NULL,
  `Costo` float NOT NULL,
  `Precio` float NOT NULL,
  `Estatus` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProveedor` varchar(15) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(500) NOT NULL,
  `telefono` int NOT NULL,
  `email` varchar(200) NOT NULL,
  `idEmpresa` varchar(15) DEFAULT NULL,
  `stsproveedor` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `pkIdPuesto` varchar(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `añosDeExperiencia` int DEFAULT NULL,
  `fkIdPuestoSuperior` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `puesto`
--

INSERT INTO `puesto` (`pkIdPuesto`, `nombre`, `añosDeExperiencia`, `fkIdPuestoSuperior`) VALUES
('1', 'Gerente', 10, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_consultas`
--

CREATE TABLE `registro_consultas` (
  `id_registro` int NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `consulta` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE `reporte` (
  `idReporte` varchar(15) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `ruta` varchar(180) NOT NULL,
  `idAplicacion` varchar(15) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reporte`
--

INSERT INTO `reporte` (`idReporte`, `nombre`, `ruta`, `idAplicacion`, `estado`) VALUES
('1', 'Reporte Conta', 'reportes/contareporte.rpt', '2020', 'A'),
('2', 'Reporte Banco', 'reportes/bancodereporte.rpt', '2025', 'A'),
('3', 'Reporte operaciones', 'reportes/operacionreporte.rpt', '2030', 'A'),
('4', 'Reporte operaciones', 'reportes/movimientoreporte.rpt', '2035', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `idSucursal` varchar(15) NOT NULL,
  `idEmpresa` varchar(15) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `direccion` text NOT NULL,
  `telefono` int NOT NULL,
  `codigoPostal` int NOT NULL,
  `estatus` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipobodega`
--

CREATE TABLE `tipobodega` (
  `pkid` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocambio`
--

CREATE TABLE `tipocambio` (
  `idTipoc` varchar(15) NOT NULL,
  `fkidMoneda` varchar(15) NOT NULL,
  `fechaTipoC` date NOT NULL,
  `cambioTipoC` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocliente`
--

CREATE TABLE `tipocliente` (
  `idTipo` varchar(15) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `estatus` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocuenta`
--

CREATE TABLE `tipocuenta` (
  `idTipoCuenta` varchar(15) NOT NULL,
  `nombre` varchar(65) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoinventario`
--

CREATE TABLE `tipoinventario` (
  `Pkid` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `estatus` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomovimiento`
--

CREATE TABLE `tipomovimiento` (
  `idtipo` varchar(15) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipomovimiento`
--

INSERT INTO `tipomovimiento` (`idtipo`, `nombre`, `estado`) VALUES
('1', 'Credito', 'A'),
('2', 'Hipoteca', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipooperacion`
--

CREATE TABLE `tipooperacion` (
  `idTipoOperacion` varchar(15) NOT NULL,
  `nombre` varchar(65) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopoliza`
--

CREATE TABLE `tipopoliza` (
  `idTipoPoliza` varchar(15) NOT NULL,
  `descripcion` varchar(65) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `pkId` varchar(15) NOT NULL,
  `fkIdEmpleado` varchar(15) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `intento` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`pkId`, `fkIdEmpleado`, `nombre`, `contraseña`, `estado`, `intento`) VALUES
('1', '1', 'admin', 'LKAekHU9EtweB49HAaTRfg==', '1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioaplicacion`
--

CREATE TABLE `usuarioaplicacion` (
  `fkIdUsuario` varchar(15) NOT NULL,
  `fkIdAplicacion` varchar(15) NOT NULL,
  `permisoEscritura` int DEFAULT NULL,
  `permisoLectura` int DEFAULT NULL,
  `permisoModificar` int DEFAULT NULL,
  `permisoEliminar` int DEFAULT NULL,
  `permisoImprimir` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarioaplicacion`
--

INSERT INTO `usuarioaplicacion` (`fkIdUsuario`, `fkIdAplicacion`, `permisoEscritura`, `permisoLectura`, `permisoModificar`, `permisoEliminar`, `permisoImprimir`) VALUES
('1', '2020', 1, 1, 1, 1, 1),
('1', '2025', 1, 1, 1, 1, 1),
('1', '2030', 1, 1, 1, 1, 1),
('1', '2035', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioaplicacionasignados`
--

CREATE TABLE `usuarioaplicacionasignados` (
  `fkIdUsuario` varchar(15) NOT NULL,
  `fkIdAplicacion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioperfil`
--

CREATE TABLE `usuarioperfil` (
  `fkIdUsuario` varchar(15) NOT NULL,
  `fkIdPerfil` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwpermisosperfil`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vwpermisosperfil` (
`permisoEscritura` int
,`permisoLectura` int
,`permisoModificar` int
,`permisoEliminar` int
,`permisoImprimir` int
,`pkIdPerfil` varchar(15)
,`Perfil` varchar(45)
,`pkIdAplicacion` varchar(15)
,`Aplicacion` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwpermisosusuario`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vwpermisosusuario` (
`permisoEscritura` int
,`permisoLectura` int
,`permisoModificar` int
,`permisoEliminar` int
,`permisoImprimir` int
,`pkIdUsuario` varchar(15)
,`Usuario` varchar(30)
,`pkIdAplicacion` varchar(15)
,`Aplicacion` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vwpermisosperfil`
--
DROP TABLE IF EXISTS `vwpermisosperfil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwpermisosperfil`  AS SELECT `a`.`permisoEscritura` AS `permisoEscritura`, `a`.`permisoLectura` AS `permisoLectura`, `a`.`permisoModificar` AS `permisoModificar`, `a`.`permisoEliminar` AS `permisoEliminar`, `a`.`permisoImprimir` AS `permisoImprimir`, `b`.`pkId` AS `pkIdPerfil`, `b`.`nombre` AS `Perfil`, `c`.`pkId` AS `pkIdAplicacion`, `c`.`nombre` AS `Aplicacion` FROM ((`aplicacionperfil` `a` join `perfil` `b` on((`b`.`pkId` = `a`.`fkIdPerfil`))) join `aplicacion` `c` on((`c`.`pkId` = `a`.`fkIdAplicacion`))) ORDER BY `a`.`fkIdPerfil` ASC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vwpermisosusuario`
--
DROP TABLE IF EXISTS `vwpermisosusuario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwpermisosusuario`  AS SELECT `a`.`permisoEscritura` AS `permisoEscritura`, `a`.`permisoLectura` AS `permisoLectura`, `a`.`permisoModificar` AS `permisoModificar`, `a`.`permisoEliminar` AS `permisoEliminar`, `a`.`permisoImprimir` AS `permisoImprimir`, `b`.`pkId` AS `pkIdUsuario`, `b`.`nombre` AS `Usuario`, `c`.`pkId` AS `pkIdAplicacion`, `c`.`nombre` AS `Aplicacion` FROM ((`usuarioaplicacion` `a` join `usuario` `b` on((`b`.`pkId` = `a`.`fkIdUsuario`))) join `aplicacion` `c` on((`c`.`pkId` = `a`.`fkIdAplicacion`))) ORDER BY `a`.`fkIdUsuario` ASC ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD PRIMARY KEY (`pkId`),
  ADD KEY `fkIdModulo` (`fkIdModulo`);

--
-- Indices de la tabla `aplicacionperfil`
--
ALTER TABLE `aplicacionperfil`
  ADD KEY `fkIdAplicacion` (`fkIdAplicacion`),
  ADD KEY `fkIdPerfil` (`fkIdPerfil`);

--
-- Indices de la tabla `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`IdBanco`);

--
-- Indices de la tabla `bitacorausuario`
--
ALTER TABLE `bitacorausuario`
  ADD PRIMARY KEY (`pkId`),
  ADD KEY `fkIdUsuario` (`fkIdUsuario`),
  ADD KEY `fkIdModulo` (`fkIdModulo`),
  ADD KEY `fkIdAplicacion` (`fkIdAplicacion`);

--
-- Indices de la tabla `bodega`
--
ALTER TABLE `bodega`
  ADD PRIMARY KEY (`pkid`),
  ADD KEY `fkidTipobodega` (`fkidTipobodega`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Pkid`),
  ADD KEY `idTipo` (`idTipo`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`idCuenta`),
  ADD KEY `idTipoCuenta` (`idTipoCuenta`),
  ADD KEY `idCuentaPadre` (`idCuentaPadre`);

--
-- Indices de la tabla `cuentaconta`
--
ALTER TABLE `cuentaconta`
  ADD PRIMARY KEY (`IdCuenta`),
  ADD KEY `FkidBanco` (`FkidBanco`);

--
-- Indices de la tabla `cuentasbancos`
--
ALTER TABLE `cuentasbancos`
  ADD PRIMARY KEY (`IdCuenta`),
  ADD KEY `FkidBanco` (`FkidBanco`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`pkIdEmpleado`),
  ADD KEY `fkIdPuesto` (`fkIdPuesto`),
  ADD KEY `fkIdEmpresa` (`fkIdEmpresa`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idEmpresa`);

--
-- Indices de la tabla `formapago`
--
ALTER TABLE `formapago`
  ADD PRIMARY KEY (`Pkid`);

--
-- Indices de la tabla `impuesto`
--
ALTER TABLE `impuesto`
  ADD PRIMARY KEY (`idImpuesto`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`Pkid`),
  ADD KEY `Fktipoinventario` (`Fktipoinventario`),
  ADD KEY `fkidsucursal` (`fkidsucursal`),
  ADD KEY `fkidbodega` (`fkidbodega`);

--
-- Indices de la tabla `linea`
--
ALTER TABLE `linea`
  ADD PRIMARY KEY (`idLinea`),
  ADD KEY `idMarca` (`idMarca`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`idMarca`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`pkId`);

--
-- Indices de la tabla `moneda`
--
ALTER TABLE `moneda`
  ADD PRIMARY KEY (`Pkid`);

--
-- Indices de la tabla `movimientobanco`
--
ALTER TABLE `movimientobanco`
  ADD PRIMARY KEY (`idmovimiento`),
  ADD KEY `idtipo` (`idtipo`),
  ADD KEY `Pkid` (`Pkid`),
  ADD KEY `IdCuenta` (`IdCuenta`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`pkId`);

--
-- Indices de la tabla `polizadetalle`
--
ALTER TABLE `polizadetalle`
  ADD PRIMARY KEY (`idPolizaEncabezado`,`fechaPoliza`,`idCuenta`),
  ADD KEY `idCuenta` (`idCuenta`),
  ADD KEY `idTipoOperacion` (`idTipoOperacion`);

--
-- Indices de la tabla `polizaencabezado`
--
ALTER TABLE `polizaencabezado`
  ADD PRIMARY KEY (`idPolizaEncabezado`,`fechaPoliza`),
  ADD KEY `idTipoPoliza` (`idTipoPoliza`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`pkid`),
  ADD KEY `Fkidlinea` (`Fkidlinea`),
  ADD KEY `fkinventario` (`fkinventario`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idProveedor`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`pkIdPuesto`);

--
-- Indices de la tabla `registro_consultas`
--
ALTER TABLE `registro_consultas`
  ADD PRIMARY KEY (`id_registro`);

--
-- Indices de la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD PRIMARY KEY (`idReporte`),
  ADD KEY `idAplicacion` (`idAplicacion`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`idSucursal`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Indices de la tabla `tipobodega`
--
ALTER TABLE `tipobodega`
  ADD PRIMARY KEY (`pkid`);

--
-- Indices de la tabla `tipocambio`
--
ALTER TABLE `tipocambio`
  ADD PRIMARY KEY (`idTipoc`),
  ADD KEY `fkidMoneda` (`fkidMoneda`);

--
-- Indices de la tabla `tipocliente`
--
ALTER TABLE `tipocliente`
  ADD PRIMARY KEY (`idTipo`);

--
-- Indices de la tabla `tipocuenta`
--
ALTER TABLE `tipocuenta`
  ADD PRIMARY KEY (`idTipoCuenta`);

--
-- Indices de la tabla `tipoinventario`
--
ALTER TABLE `tipoinventario`
  ADD PRIMARY KEY (`Pkid`);

--
-- Indices de la tabla `tipomovimiento`
--
ALTER TABLE `tipomovimiento`
  ADD PRIMARY KEY (`idtipo`);

--
-- Indices de la tabla `tipooperacion`
--
ALTER TABLE `tipooperacion`
  ADD PRIMARY KEY (`idTipoOperacion`);

--
-- Indices de la tabla `tipopoliza`
--
ALTER TABLE `tipopoliza`
  ADD PRIMARY KEY (`idTipoPoliza`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`pkId`),
  ADD KEY `fkIdEmpleado` (`fkIdEmpleado`);

--
-- Indices de la tabla `usuarioaplicacion`
--
ALTER TABLE `usuarioaplicacion`
  ADD KEY `fkIdAplicacion` (`fkIdAplicacion`),
  ADD KEY `fkIdUsuario` (`fkIdUsuario`);

--
-- Indices de la tabla `usuarioaplicacionasignados`
--
ALTER TABLE `usuarioaplicacionasignados`
  ADD KEY `fkIdAplicacion` (`fkIdAplicacion`),
  ADD KEY `fkIdUsuario` (`fkIdUsuario`);

--
-- Indices de la tabla `usuarioperfil`
--
ALTER TABLE `usuarioperfil`
  ADD KEY `fkIdPerfil` (`fkIdPerfil`),
  ADD KEY `fkIdUsuario` (`fkIdUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacorausuario`
--
ALTER TABLE `bitacorausuario`
  MODIFY `pkId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT de la tabla `registro_consultas`
--
ALTER TABLE `registro_consultas`
  MODIFY `id_registro` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD CONSTRAINT `aplicacion_ibfk_1` FOREIGN KEY (`fkIdModulo`) REFERENCES `modulo` (`pkId`);

--
-- Filtros para la tabla `aplicacionperfil`
--
ALTER TABLE `aplicacionperfil`
  ADD CONSTRAINT `aplicacionperfil_ibfk_1` FOREIGN KEY (`fkIdAplicacion`) REFERENCES `aplicacion` (`pkId`),
  ADD CONSTRAINT `aplicacionperfil_ibfk_2` FOREIGN KEY (`fkIdPerfil`) REFERENCES `perfil` (`pkId`);

--
-- Filtros para la tabla `bitacorausuario`
--
ALTER TABLE `bitacorausuario`
  ADD CONSTRAINT `bitacorausuario_ibfk_1` FOREIGN KEY (`fkIdUsuario`) REFERENCES `usuario` (`pkId`),
  ADD CONSTRAINT `bitacorausuario_ibfk_2` FOREIGN KEY (`fkIdModulo`) REFERENCES `modulo` (`pkId`),
  ADD CONSTRAINT `bitacorausuario_ibfk_3` FOREIGN KEY (`fkIdAplicacion`) REFERENCES `aplicacion` (`pkId`);

--
-- Filtros para la tabla `bodega`
--
ALTER TABLE `bodega`
  ADD CONSTRAINT `bodega_ibfk_1` FOREIGN KEY (`fkidTipobodega`) REFERENCES `tipobodega` (`pkid`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idTipo`) REFERENCES `tipocliente` (`idTipo`);

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `cuenta_ibfk_1` FOREIGN KEY (`idTipoCuenta`) REFERENCES `tipocuenta` (`idTipoCuenta`),
  ADD CONSTRAINT `cuenta_ibfk_2` FOREIGN KEY (`idCuentaPadre`) REFERENCES `cuenta` (`idCuenta`);

--
-- Filtros para la tabla `cuentaconta`
--
ALTER TABLE `cuentaconta`
  ADD CONSTRAINT `cuentaconta_ibfk_1` FOREIGN KEY (`FkidBanco`) REFERENCES `banco` (`IdBanco`);

--
-- Filtros para la tabla `cuentasbancos`
--
ALTER TABLE `cuentasbancos`
  ADD CONSTRAINT `cuentasbancos_ibfk_1` FOREIGN KEY (`FkidBanco`) REFERENCES `banco` (`IdBanco`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`fkIdPuesto`) REFERENCES `puesto` (`pkIdPuesto`),
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`fkIdEmpresa`) REFERENCES `empresa` (`idEmpresa`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`Fktipoinventario`) REFERENCES `tipoinventario` (`Pkid`),
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`fkidsucursal`) REFERENCES `sucursal` (`idSucursal`),
  ADD CONSTRAINT `inventario_ibfk_3` FOREIGN KEY (`fkidbodega`) REFERENCES `bodega` (`pkid`);

--
-- Filtros para la tabla `linea`
--
ALTER TABLE `linea`
  ADD CONSTRAINT `linea_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`);

--
-- Filtros para la tabla `movimientobanco`
--
ALTER TABLE `movimientobanco`
  ADD CONSTRAINT `movimientobanco_ibfk_1` FOREIGN KEY (`idtipo`) REFERENCES `tipomovimiento` (`idtipo`),
  ADD CONSTRAINT `movimientobanco_ibfk_2` FOREIGN KEY (`Pkid`) REFERENCES `moneda` (`Pkid`),
  ADD CONSTRAINT `movimientobanco_ibfk_3` FOREIGN KEY (`IdCuenta`) REFERENCES `cuentasbancos` (`IdCuenta`);

--
-- Filtros para la tabla `polizadetalle`
--
ALTER TABLE `polizadetalle`
  ADD CONSTRAINT `polizadetalle_ibfk_1` FOREIGN KEY (`idPolizaEncabezado`) REFERENCES `polizaencabezado` (`idPolizaEncabezado`),
  ADD CONSTRAINT `polizadetalle_ibfk_2` FOREIGN KEY (`idCuenta`) REFERENCES `cuenta` (`idCuenta`),
  ADD CONSTRAINT `polizadetalle_ibfk_3` FOREIGN KEY (`idTipoOperacion`) REFERENCES `tipooperacion` (`idTipoOperacion`);

--
-- Filtros para la tabla `polizaencabezado`
--
ALTER TABLE `polizaencabezado`
  ADD CONSTRAINT `polizaencabezado_ibfk_1` FOREIGN KEY (`idTipoPoliza`) REFERENCES `tipopoliza` (`idTipoPoliza`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`Fkidlinea`) REFERENCES `linea` (`idLinea`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`fkinventario`) REFERENCES `inventario` (`Pkid`);

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`);

--
-- Filtros para la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`idAplicacion`) REFERENCES `aplicacion` (`pkId`);

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`);

--
-- Filtros para la tabla `tipocambio`
--
ALTER TABLE `tipocambio`
  ADD CONSTRAINT `tipocambio_ibfk_1` FOREIGN KEY (`fkidMoneda`) REFERENCES `moneda` (`Pkid`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`fkIdEmpleado`) REFERENCES `empleado` (`pkIdEmpleado`);

--
-- Filtros para la tabla `usuarioaplicacion`
--
ALTER TABLE `usuarioaplicacion`
  ADD CONSTRAINT `usuarioaplicacion_ibfk_1` FOREIGN KEY (`fkIdAplicacion`) REFERENCES `aplicacion` (`pkId`),
  ADD CONSTRAINT `usuarioaplicacion_ibfk_2` FOREIGN KEY (`fkIdUsuario`) REFERENCES `usuario` (`pkId`);

--
-- Filtros para la tabla `usuarioaplicacionasignados`
--
ALTER TABLE `usuarioaplicacionasignados`
  ADD CONSTRAINT `usuarioaplicacionasignados_ibfk_1` FOREIGN KEY (`fkIdAplicacion`) REFERENCES `aplicacion` (`pkId`),
  ADD CONSTRAINT `usuarioaplicacionasignados_ibfk_2` FOREIGN KEY (`fkIdUsuario`) REFERENCES `usuario` (`pkId`);

--
-- Filtros para la tabla `usuarioperfil`
--
ALTER TABLE `usuarioperfil`
  ADD CONSTRAINT `usuarioperfil_ibfk_1` FOREIGN KEY (`fkIdPerfil`) REFERENCES `perfil` (`pkId`),
  ADD CONSTRAINT `usuarioperfil_ibfk_2` FOREIGN KEY (`fkIdUsuario`) REFERENCES `usuario` (`pkId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
