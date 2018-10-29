-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-10-2018 a las 16:02:24
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda_db`
--
CREATE DATABASE IF NOT EXISTS `agenda_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `agenda_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `fecha_inicio` varchar(20) NOT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `hora_inicio` varchar(20) DEFAULT NULL,
  `hora_fin` varchar(20) DEFAULT NULL,
  `allday` tinyint(1) DEFAULT NULL,
  `fk_usuarios` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `titulo`, `fecha_inicio`, `fecha_fin`, `hora_inicio`, `hora_fin`, `allday`, `fk_usuarios`) VALUES
(2, 'CumpleaÃ±os de Nidia', '2018-10-28', '', ':00', ':00', 1, 'adyrroystevens@mail.com'),
(3, 'CumpleaÃ±os de Antonia', '2018-10-26', '', ':00', ':00', 1, 'adyrroystevens@mail.com'),
(4, 'CumpleaÃ±os de Katia', '2018-10-24', '', ':00', ':00', 1, 'adyrroystevens@mail.com'),
(5, 'CumpleaÃ±os de Jessenia', '2018-10-25', '', ':00', ':00', 1, 'adyrroystevens@mail.com'),
(6, 'CumpleaÃ±os de la Bruja', '2018-10-31', '2018-11-01', '07:00:00', '07:00:00', 0, 'adyrroystevens@mail.com'),
(7, 'CumpleaÃ±os de la Bruja', '2018-10-31', '2018-11-01', '07:00:00', '07:00:00', 0, 'adyrroystevens@mail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `email` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`email`, `nombre`, `password`, `fecha_nacimiento`) VALUES
('adyrroystevens@mail.com', 'alvaro', '$2y$10$SvS..aAvmeAgY8FnTpbUT.j08F5rICYeiQm4dpl00m0O3McSOvQG.', '1984-10-07'),
('carlos@mail.com', 'carlos', '$2y$10$CKtvyp6EMBZHMnbA4bgLpOFnXOn./QLqHDsHQhiDJv2QP4kjy..rK', '1997-12-03'),
('demo@mail.com', 'Usuario Demo', '$2y$10$TZRZt4cb/j54ZWfCGM9BoeN.1z4tES/rYlRRJc2tS7t0e5/mNmPOu', '1998-09-08'),
('usuario@mail.com', 'usuario', '$2y$10$oehYLZno8Cm7g6799HRmietD/ps.turmjQ.RUcLZJv4oJ54mXdFc2', '1997-12-03');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuarios` (`fk_usuarios`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `fk_usuarioemail_evento` FOREIGN KEY (`fk_usuarios`) REFERENCES `usuarios` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
