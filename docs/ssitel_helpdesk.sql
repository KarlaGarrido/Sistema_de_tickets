-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2023 a las 20:01:46
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ssitel_helpdesk`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_prioridad`
--

CREATE TABLE `categorias_prioridad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tiempo_de_resolucion` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias_prioridad`
--

INSERT INTO `categorias_prioridad` (`id`, `nombre`, `tiempo_de_resolucion`) VALUES
(1, 'BAJA', '04:00:00'),
(2, 'NORMAL', '02:00:00'),
(3, 'EMERGENCIA', '01:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_documento`
--

CREATE TABLE `td_documento` (
  `doc_id` int(11) NOT NULL,
  `tick_id` int(11) NOT NULL,
  `doc_nom` varchar(400) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `td_documento`
--

INSERT INTO `td_documento` (`doc_id`, `tick_id`, `doc_nom`, `fech_crea`, `est`) VALUES
(1, 28, 'correccion de examen GARRIDO DE LA CRUZ.pdf', '2023-05-11 10:09:40', 1),
(2, 29, 'marco de Minsky Proyecto diagrama.pdf', '2023-05-11 10:10:55', 1),
(3, 29, 'SSITELConsultar Ticket.pdf', '2023-05-11 10:10:55', 1),
(4, 29, 'SSITELMantenimiento Usuario.pdf', '2023-05-11 10:10:55', 1),
(5, 30, 'correccion de examen GARRIDO DE LA CRUZ.pdf', '2023-05-11 10:28:07', 1),
(6, 30, 'correccion de examen.docx.pdf', '2023-05-11 10:28:07', 1),
(7, 31, 'correccion de examen GARRIDO DE LA CRUZ.pdf', '2023-05-11 10:34:28', 1),
(8, 31, 'correccion de examen.docx.pdf', '2023-05-11 10:34:28', 1),
(9, 32, 'ÁRBOL DE BÚSQUEDA (JUEGO DEL DOMINÓ MEXICANO).pdf', '2023-05-11 18:05:03', 1),
(10, 32, 'Avances Proyectos.pdf', '2023-05-11 18:05:03', 1),
(11, 32, 'correccion de examen.docx.pdf', '2023-05-11 18:05:03', 1),
(12, 36, 'ÁRBOL DE BÚSQUEDA (JUEGO DEL DOMINÓ MEXICANO).pdf', '2023-05-11 19:03:40', 1),
(13, 36, 'SSITELConsultar Ticket.xlsx', '2023-05-11 19:03:40', 1),
(14, 36, 'SSITELDetalle Ticket.pdf', '2023-05-11 19:03:40', 1),
(15, 50, 'ÁRBOL DE BÚSQUEDA (JUEGO DEL DOMINÓ MEXICANO).pdf', '2023-05-14 09:01:17', 1),
(16, 0, 'Letra A.txt', '2023-05-15 09:24:00', 1),
(17, 0, 'Letra A.txt', '2023-05-15 09:24:02', 1),
(18, 0, 'Letra A.txt', '2023-05-15 09:24:03', 1),
(19, 0, 'Letra A.txt', '2023-05-15 09:24:03', 1),
(20, 0, 'Letra A.txt', '2023-05-15 09:24:03', 1),
(21, 0, 'Letra A.txt', '2023-05-15 09:24:03', 1),
(22, 0, 'Letra A.txt', '2023-05-15 09:24:03', 1),
(23, 0, 'Letra A.txt', '2023-05-15 09:24:03', 1),
(24, 0, 'Letra A.txt', '2023-05-15 16:38:22', 1),
(25, 58, 'correccion de examen.docx.pdf', '2023-05-15 22:38:52', 1),
(26, 60, 'CONSULTA.txt', '2023-05-16 00:29:29', 1),
(27, 62, 'CONSULTA.txt', '2023-05-16 10:52:08', 1),
(28, 63, 'Sistema de ticketsConsultar ticket.pdf', '2023-05-18 18:09:13', 1),
(29, 64, 'CONSULTA.txt', '2023-05-19 16:40:38', 1),
(30, 66, '9.1 Do you crime worry you.pdf', '2023-05-22 10:01:02', 1),
(31, 0, 'Sistema de ticketsConsultar ticket.pdf', '2023-05-22 10:35:45', 1),
(32, 68, 'Mapa corregido sin API.txt', '2023-05-22 10:44:27', 1),
(33, 69, 'Sistema de ticketsConsultar ticket.pdf', '2023-05-22 10:46:45', 1),
(34, 71, 'Sistema de ticketsConsultar ticket.pdf', '2023-05-23 12:27:22', 1),
(35, 73, 'SSITELConsultar Ticket.pdf', '2023-05-26 12:42:55', 1),
(36, 75, 'Carta presentacion.pdf', '2023-06-22 16:16:46', 1),
(37, 76, '3.-Formulario-EGEL_D-IELEC-1.pdf', '2023-06-23 16:41:58', 1),
(38, 77, '2023-06-06.pdf', '2023-06-25 12:13:31', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_ticketdetalle`
--

CREATE TABLE `td_ticketdetalle` (
  `tickd_id` int(11) NOT NULL,
  `tick_id` int(11) NOT NULL,
  `usu_id` int(11) NOT NULL,
  `tickd_descrip` varchar(9000) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `td_ticketdetalle`
--

INSERT INTO `td_ticketdetalle` (`tickd_id`, `tick_id`, `usu_id`, `tickd_descrip`, `fech_crea`, `est`) VALUES
(1, 1, 2, '<p>favor de responder mensaje</p>', '2023-05-08 19:41:37', 1),
(2, 1, 5, 'Ticket Re-Abierto...', '2023-05-14 11:33:40', 1),
(3, 1, 5, 'Ticket Re-Abierto...', '2023-05-14 11:34:19', 1),
(4, 5, 5, 'Ticket Re-Abierto...', '2023-05-15 11:39:20', 1),
(5, 2, 5, 'Ticket Re-Abierto...', '2023-05-15 16:42:24', 1),
(6, 40, 5, 'Ticket Re-Abierto...', '2023-05-15 16:43:07', 1),
(7, 51, 5, 'Ticket Re-Abierto...', '2023-05-15 16:43:47', 1),
(8, 52, 5, 'Ticket Re-Abierto...', '2023-05-15 16:44:25', 1),
(9, 37, 6, '<p>fddf</p>', '2023-05-15 19:15:51', 1),
(10, 58, 6, '<p>PRUEBA DE MENSAJE</p>', '2023-05-15 22:39:36', 1),
(11, 58, 5, 'PRUEBA DE RESPUESTA', '2023-05-15 22:40:15', 1),
(12, 58, 5, 'Ticket Re-Abierto...', '2023-05-15 22:43:22', 1),
(13, 61, 6, '<p>mensaje de prueba</p>', '2023-05-16 07:33:04', 1),
(14, 61, 5, '<p>prueba de mensaje</p>', '2023-05-16 07:33:57', 1),
(15, 61, 5, 'Ticket Re-Abierto...', '2023-05-16 07:36:11', 1),
(16, 50, 6, 'Ticket Re-Abierto...', '2023-05-16 13:03:56', 1),
(17, 50, 6, '<p>Nuevamente soporte</p>', '2023-05-16 13:04:30', 1),
(18, 11, 5, '<p>test</p>', '2023-05-16 13:49:33', 1),
(19, 49, 5, 'Ticket Re-Abierto...', '2023-05-16 13:49:44', 1),
(20, 1, 5, 'Ticket Re-Abierto...', '2023-05-16 13:49:50', 1),
(21, 59, 6, 'Ticket Re-Abierto...', '2023-05-18 10:16:10', 1),
(22, 63, 6, '<p>hola ayuda</p>', '2023-05-18 18:09:41', 1),
(23, 64, 6, '<p>TEST DE MENSAJE</p>', '2023-05-19 16:41:56', 1),
(24, 64, 5, '<p>test</p>', '2023-05-19 16:46:17', 1),
(25, 64, 5, 'Ticket Re-Abierto...', '2023-05-19 16:46:56', 1),
(26, 64, 5, 'Ticket Re-Abierto...', '2023-05-19 17:01:45', 1),
(27, 71, 6, '<p>DETALLE A CORREGIR, LA SUCATEGORIA, ELIMINARLA </p><p>ESTABLECER NUEVO FORMATO DE TABLA DE TICKETS PARA EMPLEADOS Y SOPORTE </p><p>SLA </p><p><br></p>', '2023-05-23 12:28:16', 1),
(28, 71, 6, '<p>REVISAR POR QUE DENTRO DEL SISTEMA NO CIERRA EL TICKET<br></p>', '2023-05-23 12:28:34', 1),
(29, 38, 6, '<p>preuba de mensaje</p>', '2023-05-26 12:51:25', 1),
(30, 58, 5, 'Ticket Re-Abierto...', '2023-05-31 15:54:20', 1),
(31, 75, 5, 'INTERACCION DE MENSAJES', '2023-06-22 16:18:27', 1),
(32, 76, 6, '<p>solicito apoyo</p>', '2023-06-23 16:42:58', 1),
(33, 76, 5, '<p>recibiendo apoyo&nbsp;</p>', '2023-06-23 16:44:42', 1),
(34, 79, 6, '<p>Ya reinicie el equipo pero no puedo trabajar con mi laptop</p>', '2023-06-26 13:27:29', 1),
(35, 79, 5, 'Ticket Re-Abierto...', '2023-06-26 14:18:54', 1),
(36, 79, 5, 'Ticket Re-Abierto...', '2023-06-26 18:00:52', 1),
(37, 72, 6, '<p><img src=\"data:image/png;base64,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', '2023-06-27 11:15:38', 1),
(38, 57, 5, 'Ticket Re-Abierto...', '2023-06-27 11:24:54', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_caracter`
--

CREATE TABLE `tm_caracter` (
  `procesador` int(11) DEFAULT NULL,
  `so` int(11) DEFAULT NULL,
  `ram_base` int(11) DEFAULT NULL,
  `hdd` int(11) DEFAULT NULL,
  `ssd` int(11) DEFAULT NULL,
  `est` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_categoria`
--

CREATE TABLE `tm_categoria` (
  `cat_id` int(11) NOT NULL,
  `cat_nom` varchar(150) NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_categoria`
--

INSERT INTO `tm_categoria` (`cat_id`, `cat_nom`, `est`) VALUES
(1, 'Desarrollo', 1),
(2, 'Soporte TI', 1),
(3, 'Mantenimiento', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_computo`
--

CREATE TABLE `tm_computo` (
  `compu_id` int(11) NOT NULL,
  `compu_tipo` varchar(150) DEFAULT NULL,
  `compu_mar` varchar(150) DEFAULT NULL,
  `compu_mod` varchar(150) DEFAULT NULL,
  `compu_ser` varchar(150) DEFAULT NULL,
  `est_compu` varchar(20) DEFAULT NULL,
  `resp_id` varchar(25) DEFAULT NULL,
  `usu_nom` varchar(150) DEFAULT NULL,
  `usu_ap` varchar(150) DEFAULT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_computo`
--

INSERT INTO `tm_computo` (`compu_id`, `compu_tipo`, `compu_mar`, `compu_mod`, `compu_ser`, `est_compu`, `resp_id`, `usu_nom`, `usu_ap`, `fech_crea`, `est`) VALUES
(1, 'LAPTOP', 'DELL', 'Dell G15 5515', '5L6YJP3', '', '', '1', '', NULL, 1),
(2, 'LAPTOP', 'DELL', 'Dell G15 5515', '5L8YLP9', 'asignado', '123456', '9', '', NULL, 1),
(3, 'LAPTOP', 'HP', 'COMPAQ', 'DSANASD90WKDAS', '', '', NULL, '', NULL, 1),
(4, 'CPU', 'DELL', 'OPTIPLEX', 'ASWD546', 'asignado', '146213', '6', '', NULL, 1),
(5, 'CPU', 'HP', 'ALL IN ONE', '52ADSF2SAD454', '', '', NULL, '', NULL, 1),
(6, 'CPU', 'DELL', 'OPTIPLEX', '544DCA48', 'dañado', '', NULL, '', '2023-06-18 05:13:57', 1),
(7, 'LAPTOP', 'HP', 'COMPAQ', 'DHER83HLKDO9U3', 'robado', '498432', NULL, '', '2023-06-19 18:16:21', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_prioridad`
--

CREATE TABLE `tm_prioridad` (
  `prio_id` int(11) NOT NULL,
  `prio_nom` varchar(50) NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_prioridad`
--

INSERT INTO `tm_prioridad` (`prio_id`, `prio_nom`, `est`) VALUES
(1, 'Bajo', 1),
(2, 'Medio', 1),
(3, 'Alto', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_responsiva`
--

CREATE TABLE `tm_responsiva` (
  `resp_id` int(11) NOT NULL,
  `usu_nom` varchar(150) NOT NULL,
  `usu_ap` varchar(150) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_elim` datetime NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_subcategoria`
--

CREATE TABLE `tm_subcategoria` (
  `cats_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `cats_nom` varchar(150) NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_subcategoria`
--

INSERT INTO `tm_subcategoria` (`cats_id`, `cat_id`, `cats_nom`, `est`) VALUES
(1, 1, 'Modificacion de modulos', 1),
(2, 1, 'Creacion de nuevo usuario', 1),
(3, 2, 'Correo electronico', 1),
(4, 2, 'Teclado', 1),
(5, 3, 'Firma de correo', 1),
(6, 3, 'Otros', 1),
(7, 1, 'Error en el sistema', 1),
(8, 1, 'Otro', 1),
(9, 2, 'Mensaje de error', 1),
(10, 2, 'Office', 1),
(11, 2, 'Otro', 1),
(12, 3, 'Otro', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_tareas`
--

CREATE TABLE `tm_tareas` (
  `tarea_id` int(11) NOT NULL,
  `tarea_titulo` varchar(150) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_entre` datetime NOT NULL,
  `fech_inicio` datetime NOT NULL,
  `fech_fin` datetime NOT NULL,
  `tarea_descrip` varchar(4000) NOT NULL,
  `tarea_doc` varchar(4000) NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_telefonia`
--

CREATE TABLE `tm_telefonia` (
  `tel_id` int(11) NOT NULL,
  `tel_num` varchar(15) NOT NULL,
  `tel_tipo` varchar(150) NOT NULL,
  `tel_mar` varchar(150) NOT NULL,
  `tel_mod` varchar(150) NOT NULL,
  `tel_ser` varchar(150) NOT NULL,
  `est_tel` varchar(150) NOT NULL,
  `resp_id` varchar(150) NOT NULL,
  `usu_nom` varchar(150) NOT NULL,
  `usu_ap` varchar(150) NOT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_telefonia`
--

INSERT INTO `tm_telefonia` (`tel_id`, `tel_num`, `tel_tipo`, `tel_mar`, `tel_mod`, `tel_ser`, `est_tel`, `resp_id`, `usu_nom`, `usu_ap`, `fech_crea`, `est`) VALUES
(1, '', 'Móvil', 'SAMSUNG', 'S20 FE', 'FDSF-4568-52', 'Disponible', '', 'Sin asignar', '', '2023-06-01 12:13:45', 1),
(2, '', 'Móvil', 'MOTOROLA', 'E7 PLUS', 'SADKJOFA456213', 'DISPONIBLE', '', 'Sin asignar', '', '2023-06-01 12:13:45', 1),
(3, '5546338788', 'CHIP', 'TELCEL', 'No aplica', 'TRHKOKFD6666G4F8452', 'ASIGNADO', '59623', 'Fernanda', 'Ramírez', '2023-06-01 12:13:45', 1),
(4, '5566324132', 'Móvil', 'ALCATEL', '5030A', '8ASDSA-1554DSA-551A-152', 'Asignado', '43509', 'Raúl', 'Jímenez', '2023-06-18 05:29:02', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_ticket`
--

CREATE TABLE `tm_ticket` (
  `tick_id` int(11) NOT NULL,
  `usu_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `cats_id` int(11) NOT NULL,
  `tick_titulo` varchar(250) NOT NULL,
  `tick_descrip` varchar(9000) NOT NULL,
  `tick_estado` varchar(15) DEFAULT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `usu_asig` int(11) DEFAULT NULL,
  `fech_asig` datetime DEFAULT NULL,
  `tick_estre` int(11) DEFAULT NULL,
  `tick_coment` varchar(300) DEFAULT NULL,
  `fech_cierre` datetime DEFAULT NULL,
  `prio_id` int(11) DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_ticket`
--

INSERT INTO `tm_ticket` (`tick_id`, `usu_id`, `cat_id`, `cats_id`, `tick_titulo`, `tick_descrip`, `tick_estado`, `fech_crea`, `usu_asig`, `fech_asig`, `tick_estre`, `tick_coment`, `fech_cierre`, `prio_id`, `est`) VALUES
(1, 2, 1, 1, 'TEST DE DESARROLLO', '<p>TEST DE DESARRROLLO&nbsp;</p>', 'Abierto', '2023-05-05 20:21:23', 3, '2023-05-08 20:45:22', 5, 'BUEN SERVICIO', NULL, 1, 1),
(2, 2, 2, 2, 'TEST DE SOPORTE', '<p>TEST DE SOPORTE TI</p>', 'Abierto', '2023-05-06 09:30:10', 4, '2023-05-10 09:44:35', NULL, NULL, '2023-05-18 12:19:59', 1, 1),
(3, 2, 3, 2, 'TEST DISEÑO EMPRESARIAL', '<p>TEST DISEÑO EMPRESARIAL</p>', 'Abierto', '2023-05-06 10:20:00', 4, '2023-05-10 11:36:37', NULL, NULL, NULL, 2, 1),
(4, 2, 1, 4, 'test', '<p>sda,.nsadihwqpofdh</p>', 'Abierto', '2023-05-06 15:45:20', 3, '2023-05-11 19:08:20', NULL, NULL, NULL, 2, 1),
(5, 2, 1, 4, 's.cmñx<ljc', '<p>s.,andfpqwerjfaslmfËWJtf</p>', 'Abierto', '2023-05-07 10:23:00', 7, '2023-05-15 11:39:10', NULL, NULL, NULL, 1, 1),
(6, 2, 2, 1, 'monitor', '<p>asignacion de monitor</p>', 'Abierto', '2023-05-07 13:15:20', 7, '2023-05-15 16:41:57', NULL, NULL, NULL, 2, 1),
(7, 2, 1, 1, 'ESTA ES UNA PRUEBA', '<p>ESTO ES UNA PRUEBA</p>', 'Abierto', '2023-05-07 16:30:45', 3, '2023-05-10 09:44:50', NULL, NULL, NULL, 2, 1),
(8, 2, 2, 1, 'PRUEBA DE SOPORTE', '<p>CAMBIO 1</p>', 'Abierto', '2023-05-08 20:29:29', 3, '2023-05-10 12:28:42', NULL, NULL, NULL, 1, 1),
(9, 2, 2, 1, 'PRUEBA DE DOCUMENTO', '<p>SE REALIZA PRUEBA DE TICKET CON ARCHIVOS</p>', 'Abierto', '2023-05-10 12:20:25', 3, '2023-05-10 12:28:47', NULL, NULL, NULL, 3, 1),
(10, 2, 2, 3, 'monitor', '<p>PRUEBA DE DOCUMENTOS</p>', 'Abierto', '2023-05-10 12:26:32', 3, '2023-05-10 12:28:52', NULL, NULL, NULL, 3, 1),
(11, 2, 3, 1, 'TEST', '<p>PRUEBA</p>', 'Abierto', '2023-05-10 16:05:53', 3, '2023-05-16 13:48:50', NULL, NULL, NULL, 3, 1),
(23, 2, 1, 1, 'Test 75876455687', '<p>gcgnhrtyerd</p>', 'Abierto', '2023-05-10 17:21:34', 8, '2023-05-19 16:45:58', NULL, NULL, NULL, 2, 1),
(24, 2, 1, 1, 'Nuevo modulo', '<p>xfhshsrhrsrsf</p>', 'Abierto', '2023-05-10 17:27:12', 8, '2023-05-19 17:01:20', NULL, NULL, NULL, 2, 1),
(25, 2, 2, 2, 'monitor  S4353TGFE556', '<p>ER23RFEWR23</p>', 'Abierto', '2023-05-10 17:28:51', 8, '2023-05-23 12:44:57', NULL, NULL, NULL, 2, 1),
(26, 2, 2, 2, 'monitor  WQR235RRE', '<p>49U503ERFHPERQER</p>', 'Abierto', '2023-05-10 17:33:34', NULL, NULL, NULL, NULL, NULL, 2, 1),
(27, 2, 2, 2, 'monitor', '<p>Solicitud de asignacion de monitor&nbsp;</p>', 'Abierto', '2023-05-10 21:21:30', NULL, NULL, NULL, NULL, NULL, 2, 1),
(28, 2, 2, 3, 'PRUEBA DE DOCUMENTOS', '<p>PRUEBA DE DOCUMENTOS</p><p><br></p>', 'Abierto', '2023-05-11 10:09:40', 7, '2023-05-23 12:44:45', NULL, NULL, NULL, 2, 1),
(29, 2, 1, 2, 'PRUEBA 2 DE DOCUMENTACION', '<p>PRUEBA 2 DE DOCUMENTACION CON MAS ARCHIVOS</p>', 'Abierto', '2023-05-11 10:10:55', NULL, NULL, NULL, NULL, NULL, 2, 1),
(30, 2, 3, 3, 'prueba de documentacion con diseño', '<p>prueba de documentacion con cambio de diseño&nbsp;</p>', 'Abierto', '2023-05-11 10:28:07', 3, '2023-05-24 12:34:30', NULL, NULL, NULL, 1, 1),
(31, 2, 3, 2, 'prueba de documentacion/conexion y destalle', '<p>prueba</p>', 'Abierto', '2023-05-11 10:34:28', 5, '2023-05-23 12:53:46', NULL, NULL, NULL, 2, 1),
(32, 2, 1, 3, 'lsidjg0se9u', '<p>ñdzlfmáeojf</p>', 'Abierto', '2023-05-11 18:05:03', 5, '2023-05-16 13:48:39', NULL, NULL, NULL, 2, 1),
(33, 2, 3, 2, 'ñsa,fwqpkr+q3', '<p>sdl+wqdk+</p>', 'Abierto', '2023-05-11 18:12:17', 9, '2023-06-06 20:36:57', NULL, NULL, NULL, 1, 1),
(34, 2, 3, 2, 'dsañdmñlwqs', '<p>dwqdnñwqd</p>', 'Abierto', '2023-05-11 18:13:57', NULL, NULL, NULL, NULL, NULL, 2, 1),
(35, 2, 1, 3, 'a.DMÑlaj{AD', '<p>lwdk&nbsp; &nbsp; powdxkDN</p>', 'Abierto', '2023-05-11 18:14:18', 1, '2023-06-20 16:20:32', NULL, NULL, NULL, 1, 1),
(36, 2, 2, 3, 'monitor', '<p>FAVOR DE MANDAR MONITOR</p>', 'Abierto', '2023-05-11 19:03:40', 9, '2023-06-20 16:20:12', NULL, NULL, NULL, 3, 1),
(37, 6, 1, 0, 'PRUEBA EMAIL', '<p>PRIMERA PRUEBA E MAIL</p>', 'Abierto', '2023-05-11 20:20:14', NULL, NULL, NULL, NULL, NULL, 3, 1),
(38, 6, 1, 0, 'test 2 email', '<p>test</p>', 'Abierto', '2023-05-11 20:26:37', NULL, NULL, NULL, NULL, NULL, 3, 1),
(39, 6, 1, 0, 'TEST 3 EMAIL', '<p>DESARROLLANDO PRUEBA</p>', 'Abierto', '2023-05-11 20:28:21', NULL, NULL, NULL, NULL, NULL, 3, 1),
(40, 6, 2, 0, 'EMAIL TEST', '<p>PRUEBA DE EMAIL</p>', 'Abierto', '2023-05-11 20:44:26', NULL, NULL, NULL, NULL, NULL, 3, 1),
(41, 6, 3, 0, 'TEST DE CORREO', '<p>TEST</p>', 'Abierto', '2023-05-12 10:36:22', NULL, NULL, NULL, NULL, NULL, 2, 1),
(42, 6, 2, 0, 'TEST DE CORREO', '<p>DKWQH0FHWQ</p>', 'Abierto', '2023-05-12 10:37:01', NULL, NULL, NULL, NULL, NULL, 2, 1),
(43, 6, 1, 0, 'Test', '<p>WAfdñ;S+DPKSA+F</p>', 'Abierto', '2023-05-12 10:41:29', NULL, NULL, NULL, NULL, NULL, 1, 1),
(44, 6, 1, 0, 'TEST DE CORREO ELECTRONICO', '<p>DSF-MASÓFJ</p>', 'Abierto', '2023-05-12 11:01:58', NULL, NULL, NULL, NULL, NULL, 2, 1),
(45, 2, 3, 0, 'test de correo gmail', '<p>test de correo gmail</p>', 'Abierto', '2023-05-12 11:48:43', NULL, NULL, NULL, NULL, NULL, 2, 1),
(46, 2, 2, 0, 'PRUEBA DE CORREO ELECTRONICO ', '<p>PRUEBA DE CORREO ELECTRONICO PARA GMAIL</p><p><br></p>', 'Abierto', '2023-05-12 12:17:05', NULL, NULL, NULL, NULL, NULL, 3, 1),
(47, 2, 1, 0, 'prueba test correo', '<p>z&lt;sldq´wojrf\'wqfnc</p>', 'Abierto', '2023-05-13 20:23:28', 5, '2023-05-14 08:52:02', NULL, NULL, NULL, 3, 1),
(48, 6, 3, 0, 'TEST DE PRUEBA DE CORREO', '<p>CORREO DE PRUEBA</p>', 'Abierto', '2023-05-14 08:13:41', 3, '2023-05-14 08:21:21', NULL, NULL, NULL, 2, 1),
(49, 6, 3, 0, 'prueba 2 de EMAIL', '<p>segunda prueba</p>', 'Abierto', '2023-05-14 08:16:56', 3, '2023-05-14 08:18:31', NULL, NULL, NULL, 1, 1),
(50, 6, 2, 0, 'Correo electronico no funciona', '<p>Mi correo electronico no funciona , no puedo ingresar</p>', 'Abierto', '2023-05-14 09:01:17', 5, '2023-05-14 09:02:38', NULL, NULL, NULL, 1, 1),
(51, 6, 3, 0, 'PRUEBA ANTES DE MODIFICAR', '<p>ANTES DE CAMBIAR&nbsp;</p>', 'Abierto', '2023-05-14 11:58:00', 3, '2023-05-15 16:44:10', NULL, NULL, '2023-05-14 14:22:52', 2, 1),
(52, 2, 3, 0, 'PRUEBA DE ENCUESTA DE ATENCION', '<p>ENCUESTA DE SATISFACCION</p>', 'Abierto', '2023-05-14 13:16:10', 1, '2023-05-14 13:17:07', 5, 'Excelente servicio 5 estrellas', '2023-05-14 16:50:54', 1, 1),
(53, 5, 1, 0, 'test', '<p>test</p>', 'Abierto', '2023-05-14 14:19:31', NULL, NULL, NULL, NULL, NULL, 2, 1),
(54, 6, 2, 0, 'Prueba test ', '<p>PRUEBA DE PRIORIDAD</p>', 'Cerrado', '2023-05-14 14:50:12', NULL, NULL, NULL, NULL, NULL, 2, 1),
(55, 6, 1, 0, 'CORRECCION DE ERRORES', '<p>correccion de error</p>', 'Abierto', '2023-05-15 18:52:06', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(56, 6, 1, 0, 'prueba repeticion', '<p>sadasdhjp</p>', 'Abierto', '2023-05-15 20:03:31', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(57, 6, 3, 5, 'Test', '<p>fdlsadfjóajsf</p>', 'Abierto', '2023-05-15 22:31:15', 7, '2023-05-15 23:53:56', NULL, NULL, NULL, NULL, 1),
(58, 6, 2, 3, 'PRUEBA DE SOPORTE TI', '<p>TEST</p>', 'Abierto', '2023-05-15 22:38:52', 1, '2023-05-15 22:43:18', NULL, NULL, NULL, NULL, 1),
(59, 6, 3, 5, 'PREUBA FINAL DEL DIA', '<p>PREUBA TEST</p>', 'Abierto', '2023-05-16 00:17:12', 5, '2023-05-16 00:18:10', NULL, NULL, NULL, NULL, 1),
(60, 6, 2, 4, 'PRUEBA FINAL 16 DE MAYO', '<p>SADSAD</p>', 'Cerrado', '2023-05-16 00:29:29', 7, '2023-05-16 00:30:12', NULL, NULL, '2023-05-16 00:32:40', NULL, 1),
(61, 6, 2, 3, 'Test matutino', '<p>kgkhclkjhkc</p>', 'Cerrado', '2023-05-16 07:32:33', 5, '2023-05-16 07:33:44', 4, 'mejorar en tiempos', '2023-05-16 07:35:31', NULL, 1),
(62, 6, 2, 3, 'TEST REUNION', '<p>TEST DE TICKET</p>', 'Abierto', '2023-05-16 10:52:08', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(63, 6, 2, 3, 'prueba', '<p>saludo</p>', 'Abierto', '2023-05-18 18:09:13', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(64, 6, 2, 3, 'TEST IA', '<p>TEST DE IA</p>', 'Abierto', '2023-05-19 16:40:38', NULL, NULL, 5, 'test', NULL, NULL, 1),
(65, 6, 2, 3, 'Test PRUEBA', '<p>SDSDS</p>', 'Abierto', '2023-05-22 09:21:40', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(66, 6, 1, 1, 'test de nuevo ticket', '<p>prueba de desarrollo&nbsp;</p>', 'Abierto', '2023-05-22 10:01:02', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(67, 6, 1, 1, 'prueba nuevo ticket', '<p>prueba</p>', 'Abierto', '2023-05-22 10:40:09', 7, '2023-05-26 12:57:11', NULL, NULL, NULL, NULL, 1),
(68, 6, 2, 3, 'test de nuevo ticket', '<p>test de chrome</p>', 'Abierto', '2023-05-22 10:44:27', 3, '2023-06-27 11:19:02', NULL, NULL, NULL, NULL, 1),
(69, 6, 2, 3, 'test firefox', '<p>prueba desde firefox<br></p>', 'Abierto', '2023-05-22 10:46:45', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(70, 6, 2, 3, 'prueba de nuevo ticket', '<p>PRUEBA DE CAT 2 SUBCATEGORIA-ACTIVADO</p>', 'Abierto', '2023-05-22 10:59:39', 1, '2023-05-22 11:36:05', NULL, NULL, NULL, NULL, 1),
(71, 6, 2, 3, 'PREUBA DIA 23 MAYO', '<p>PRUEBA DE 23 DE MAYO<br></p>', 'Abierto', '2023-05-23 12:27:22', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(72, 6, 2, 3, 'TICKET PARA SLA HORARIO ', '<p>PRUEBA DE TICKET ABIERTO DENTRO DE HORARIO( SE REALIZA CONSULTA)</p>', 'Abierto', '2023-05-26 13:59:59', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(73, 6, 2, 3, 'Test', '<p>test</p>', 'Abierto', '2023-05-26 12:42:55', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(74, 6, 2, 3, 'Test', '<p>mensaje de prueba</p>', 'Abierto', '2023-06-03 14:42:17', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(75, 6, 2, 3, 'TICKET DE PRUEBA', '<p>MENSAJE DE PRUEBA PARA SISTEMA DE TICKETS</p>', 'Abierto', '2023-06-22 16:16:46', 5, '2023-06-22 16:17:57', NULL, NULL, NULL, NULL, 1),
(76, 6, 2, 3, 'prueba reunion', '<p>mensaje de prueba</p>', 'Abierto', '2023-06-23 16:41:58', 7, '2023-06-23 16:44:27', NULL, NULL, NULL, NULL, 1),
(77, 6, 2, 3, 'prueba', '<p>mensaje</p>', 'Abierto', '2023-06-25 12:13:31', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(78, 6, 2, 11, 'Test', '<p>mensaje otro</p>', 'Abierto', '2023-06-26 11:37:59', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(79, 6, 2, 11, 'Laptop lenta', 'Solicito apoyo , desde que inicie mi horario laboral tengo problemas con mi laptop, esta muy lenta&nbsp;', 'Abierto', '2023-06-26 11:58:29', 3, '2023-06-26 14:15:56', NULL, NULL, NULL, NULL, 1),
(80, 6, 2, 11, 'mensaje de presentacion', '<p>mensaje</p>', 'Abierto', '2023-06-27 11:13:40', 5, '2023-06-27 11:34:46', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_usuario`
--

CREATE TABLE `tm_usuario` (
  `usu_id` int(11) NOT NULL,
  `usu_nom` varchar(150) DEFAULT NULL,
  `usu_ap` varchar(150) DEFAULT NULL,
  `usu_correo` varchar(150) NOT NULL,
  `usu_pass` varchar(50) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `fech_modi` datetime DEFAULT NULL,
  `fech_elim` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_usuario`
--

INSERT INTO `tm_usuario` (`usu_id`, `usu_nom`, `usu_ap`, `usu_correo`, `usu_pass`, `rol_id`, `fech_crea`, `fech_modi`, `fech_elim`, `est`) VALUES
(1, 'Juan', 'Rodriguez', 'juan.rm@gmail.com', '123456', 2, '2023-05-08 19:05:16', NULL, NULL, 1),
(2, 'Karla', 'Garrido', 'karla.garrido@gmail.com', '123456', 1, '2023-05-08 19:06:50', NULL, NULL, 1),
(3, 'Soporte', 'TI', 'soporte_ti@gmail.com', '123456', 2, '2023-05-09 11:03:06', NULL, NULL, 1),
(4, 'Marco', 'Torres', 'marco.torres@gmail.com', 'qwerty', 1, '2023-05-09 13:20:52', NULL, NULL, 1),
(5, 'Soporte', 'Cruz', 'soporte.cruz@outlook.com', '@G4rr1d01234', 2, '2023-05-11 20:18:40', NULL, NULL, 1),
(6, 'Empleado', '1', 'empleado_1.cruz@outlook.com', '@G4rr1d01234', 1, '2023-05-11 20:19:18', NULL, NULL, 1),
(7, 'Antonio', 'Gonzalez', 'test@test.com', '123456', 2, '2023-05-15 11:27:05', NULL, NULL, 1),
(8, 'inteligencia', 'Artificial', 'IA@gmail.com', '123456', 2, '2023-05-15 16:40:48', NULL, NULL, 1),
(9, 'Fernando', 'Ramirez', 'prueba@ramirez.net', '123456', 2, '2023-05-16 13:26:58', NULL, NULL, 1),
(10, 'Francisco', 'Puchys', 'puchys@latoso.net', '123456', 1, '2023-05-18 18:12:31', NULL, NULL, 1),
(11, 'Desarrollo', '1', 'desarrollo.cruz@outlook.com', '@G4rr1d01234', 3, '2023-06-15 13:26:17', NULL, NULL, 1),
(12, 'Usuario ', 'Prueba', 'prueba.usuario@email.com', 'soporte1', 1, '2023-06-21 07:25:50', NULL, NULL, 1),
(13, 'ALUMNOS', 'APELLIDO', 'alumno@apellido.com', '123456', 2, '2023-06-22 16:19:26', NULL, NULL, 1),
(14, 'Soporte', 'Prueba', 'sopprueba@email.com', '123456', 1, '2023-06-23 16:43:42', NULL, NULL, 1),
(15, 'Soporte', 'prueba 2', 'soporte_prueba@gmail.com', '123456', 1, '2023-06-27 11:17:24', NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias_prioridad`
--
ALTER TABLE `categorias_prioridad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `td_documento`
--
ALTER TABLE `td_documento`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indices de la tabla `td_ticketdetalle`
--
ALTER TABLE `td_ticketdetalle`
  ADD PRIMARY KEY (`tickd_id`);

--
-- Indices de la tabla `tm_categoria`
--
ALTER TABLE `tm_categoria`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `tm_computo`
--
ALTER TABLE `tm_computo`
  ADD PRIMARY KEY (`compu_id`);

--
-- Indices de la tabla `tm_prioridad`
--
ALTER TABLE `tm_prioridad`
  ADD PRIMARY KEY (`prio_id`);

--
-- Indices de la tabla `tm_responsiva`
--
ALTER TABLE `tm_responsiva`
  ADD PRIMARY KEY (`resp_id`);

--
-- Indices de la tabla `tm_subcategoria`
--
ALTER TABLE `tm_subcategoria`
  ADD PRIMARY KEY (`cats_id`);

--
-- Indices de la tabla `tm_tareas`
--
ALTER TABLE `tm_tareas`
  ADD PRIMARY KEY (`tarea_id`);

--
-- Indices de la tabla `tm_telefonia`
--
ALTER TABLE `tm_telefonia`
  ADD PRIMARY KEY (`tel_id`);

--
-- Indices de la tabla `tm_ticket`
--
ALTER TABLE `tm_ticket`
  ADD PRIMARY KEY (`tick_id`);

--
-- Indices de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  ADD PRIMARY KEY (`usu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias_prioridad`
--
ALTER TABLE `categorias_prioridad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `td_documento`
--
ALTER TABLE `td_documento`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `td_ticketdetalle`
--
ALTER TABLE `td_ticketdetalle`
  MODIFY `tickd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `tm_categoria`
--
ALTER TABLE `tm_categoria`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tm_computo`
--
ALTER TABLE `tm_computo`
  MODIFY `compu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tm_prioridad`
--
ALTER TABLE `tm_prioridad`
  MODIFY `prio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tm_responsiva`
--
ALTER TABLE `tm_responsiva`
  MODIFY `resp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tm_subcategoria`
--
ALTER TABLE `tm_subcategoria`
  MODIFY `cats_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tm_tareas`
--
ALTER TABLE `tm_tareas`
  MODIFY `tarea_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tm_telefonia`
--
ALTER TABLE `tm_telefonia`
  MODIFY `tel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tm_ticket`
--
ALTER TABLE `tm_ticket`
  MODIFY `tick_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
