-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2018 a las 03:49:25
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gimnasio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `idAlumno` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `matricula` varchar(10) DEFAULT NULL,
  `fotoAlumno` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`idAlumno`, `nombre`, `matricula`, `fotoAlumno`) VALUES
(11, 'Hector mendoza', '10', 'uploads/Hector mendoza.png'),
(12, 'Erik Garcia', '11', 'uploads/Erik Garcia.jpg'),
(13, 'Cristobal Noriega', 'E29', 'uploads/Cristobal Noriega.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `idClase` int(11) NOT NULL,
  `materia` varchar(45) DEFAULT NULL,
  `horaInicio` varchar(5) DEFAULT NULL,
  `horaFin` varchar(5) DEFAULT NULL,
  `alumno1` varchar(45) DEFAULT NULL,
  `alumno2` varchar(45) DEFAULT NULL,
  `alumno3` varchar(45) DEFAULT NULL,
  `alumno4` varchar(45) DEFAULT NULL,
  `alumno5` varchar(45) DEFAULT NULL,
  `alumno6` varchar(45) DEFAULT NULL,
  `alumno7` varchar(45) DEFAULT NULL,
  `alumno8` varchar(45) DEFAULT NULL,
  `alumno9` varchar(45) DEFAULT NULL,
  `alumno10` varchar(45) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `profesor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`idClase`, `materia`, `horaInicio`, `horaFin`, `alumno1`, `alumno2`, `alumno3`, `alumno4`, `alumno5`, `alumno6`, `alumno7`, `alumno8`, `alumno9`, `alumno10`, `descripcion`, `profesor`) VALUES
(6, 'Pilates', '9', '10', 'Hector mendoza', 'Erik Garcia', '', '', '', '', '', '', '', '', 'Hacer Pilates', 'Jose Portugal'),
(7, 'Yoga', '8:00', '9:00', 'Hector mendoza', 'Erik Garcia', 'Cristobal Noriega', '', '', '', '', '', '', '', 'Yoga', 'Dr. Manhattan'),
(8, 'Spinning', '8:00', '9:00', 'Erik Garcia', 'Hector mendoza', 'Cristobal Noriega', '', '', '', '', '', '', '', 'Spninning hardcore', 'Emi ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `idEvento` int(11) NOT NULL,
  `horaInicio` varchar(5) DEFAULT NULL,
  `horaFin` varchar(5) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`idEvento`, `horaInicio`, `horaFin`, `fecha`, `foto`, `descripcion`) VALUES
(10, '22:00', '23:00', '2017-12-06', 'uploads/Pesas.jpg', 'Pesas'),
(11, '22:00', '23:00', '2017-12-18', 'uploads/Torneo de Lol.jpg', 'Torneo de Lol'),
(12, '8', '9', '2017-12-11', 'uploads/final .png', 'final '),
(13, '8', '9', '2017-12-24', 'uploads/Olimpiadas.jpg', 'Olimpiadas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1496649671),
('m130524_201442_init', 1496649925);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `idProfesor` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`idProfesor`, `nombre`, `foto`) VALUES
(9, 'Jose Portugal', 'uploads/Jose Portugal.jpg'),
(13, 'Batman', 'uploads/Batman.jpg'),
(14, 'Emi ', 'uploads/Emi .jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'lp', 'EhkUah3Fd3UaRcG5sWRGhzEevx9dOXEA', '$2y$13$L4y4yO48T.PRYTbAPILZqOCvAW6yBzbC4QqrGXfVqDUXVXm8OL7H2', 'DOvxh-e6Odf-e1sAHpB4GYjOgugSItN__1497260515', 'lp@correo.com', 10, 1497258095, 1497260515),
(2, 'frodo', '5CtWYK_9Z-9sEkmKzD90wwcWn-oMEFJy', '$2y$13$.rcYp9ry7LCkWo0V5Wvrf.UVjUCkUOZHPPK8FDG10kX6KRCDmBir6', NULL, 'cristobal.930814@gmail.com', 10, 1511849110, 1511849110),
(3, 'senpai', '', '123', NULL, 'senpai@gmail.com', 10, 1512440543, 1512440543);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`idAlumno`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`idClase`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`idEvento`);

--
-- Indices de la tabla `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`idProfesor`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `idAlumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
  MODIFY `idClase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `idEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `idProfesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
