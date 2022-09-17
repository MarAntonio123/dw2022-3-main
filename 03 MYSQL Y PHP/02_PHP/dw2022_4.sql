-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-09-2022 a las 22:24:30
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
-- Base de datos: `dw2022_4`
--
CREATE DATABASE IF NOT EXISTS `dw2022_4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dw2022_4`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actores`
--

DROP TABLE IF EXISTS `actores`;
CREATE TABLE `actores` (
  `act_id` int(10) UNSIGNED NOT NULL,
  `act_nombres` varchar(100) NOT NULL,
  `act_apellidos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actores`
--

INSERT INTO `actores` (`act_id`, `act_nombres`, `act_apellidos`) VALUES
(1, 'Tom', 'Holland'),
(2, 'Zendaya', 'Colleman'),
(3, 'Benedict', 'Cumberbach'),
(4, 'Elizabeth', 'Olsen'),
(5, 'Keanu', 'Reeves'),
(6, 'Carrie-Anne', 'Moss'),
(7, 'Jack', 'Nicolson'),
(8, 'Shelly', 'Duvall'),
(9, 'Leonardo', 'DiCaprio'),
(10, 'Kate', 'Winslet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directores`
--

DROP TABLE IF EXISTS `directores`;
CREATE TABLE `directores` (
  `dire_id` int(11) NOT NULL,
  `dire_nombres` varchar(50) NOT NULL,
  `dire_apellidos` varchar(50) NOT NULL,
  `dire_img` text DEFAULT NULL,
  `dire_pais` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `directores`
--

INSERT INTO `directores` (`dire_id`, `dire_nombres`, `dire_apellidos`, `dire_img`, `dire_pais`) VALUES
(1, 'Jon', 'Watts', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Jon_Watts_by_Gage_Skidmore.jpg/800px-Jon_Watts_by_Gage_Skidmore.jpg', 'Argentina'),
(2, 'San', 'Raini', 'https://upload.wikimedia.org/wikipedia/commons/8/83/Sam_Raimi_by_Gage_Skidmore_2.jpg', 'Colombia'),
(3, 'Lana', 'Wachowski', 'https://image.tmdb.org/t/p/w300/4nE4ttPQBuw1virOz0LYT08c1Vm.jpg', 'Rusia'),
(4, 'Chistopher', 'Nolen', 'https://upload.wikimedia.org/wikipedia/commons/9/95/Christopher_Nolan_Cannes_2018.jpg', 'EE.UU'),
(5, 'Stanly', 'Kubric', 'https://es.web.img3.acsta.net/r_1280_720/pictures/210/522/21052290_20131024085323717.jpg', 'España'),
(6, 'James', 'Cameron', 'https://upload.wikimedia.org/wikipedia/commons/f/fe/James_Cameron_by_Gage_Skidmore.jpg', 'Croacia'),
(8, 'Akira ', 'Kurosawa', 'https://image.tmdb.org/t/p/w500/uCFWmYXu0EqF5Bd6zWaOS4FxvEB.jpg', 'Japon'),
(13, 'Roberto Gomez', 'Bolaños', 'https://mx.web.img2.acsta.net/pictures/14/01/03/13/34/142094.jpg', 'mexico'),
(14, 'Michael ', 'Bay', 'https://akns-images.eonline.com/eol_images/Entire_Site/2013917/rs_634x1024-131017074859-634.Michael-Bay-Attacked.jl.101713_copy.jpg?fit=around%7C634:1024&output-quality=90&crop=634:1024;center,top', 'EE.UU'),
(15, ' Robert ', 'Kirkman', 'https://upload.wikimedia.org/wikipedia/commons/7/72/Robert_Kirkman_by_Gage_Skidmore_3.jpg', 'EE.UU'),
(16, 'Stephen ', 'Sommers', 'https://images.mubicdn.net/images/cast_member/23848/cache-67857-1354126759/image-w856.jpg', 'suezia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
CREATE TABLE `peliculas` (
  `peli_id` int(10) UNSIGNED NOT NULL,
  `peli_nombre` varchar(255) NOT NULL COMMENT 'aqui va el nombre de la peli',
  `peli_img` text DEFAULT NULL,
  `peli_genero` varchar(100) NOT NULL,
  `peli_fecha_estreno` date NOT NULL,
  `peli_restricciones` varchar(20) NOT NULL COMMENT 'ejem PG = publico en general',
  `peli_dire_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`peli_id`, `peli_nombre`, `peli_img`, `peli_genero`, `peli_fecha_estreno`, `peli_restricciones`, `peli_dire_id`) VALUES
(1, 'Matrixs', 'https://es.web.img3.acsta.net/medias/nmedia/18/72/16/76/20065616.jpg', 'ciencia ficcion', '2021-12-15', 'PG', 4),
(2, 'Dr. Strange: En el multiverso de la locura', 'https://dam.smashmexico.com.mx/wp-content/uploads/2022/02/doctor-strange-nuevo-poster.jpg', 'ciencia ficción', '2022-05-05', 'PG-16', 5),
(3, 'EL ARO', 'https://www.ecartelera.com/carteles/16300/16312/001_p.jpg', 'Terror', '1999-12-24', 'PG-15', 6),
(4, 'Interestellar', 'https://media.elmostrador.cl/2014/11/interestelarafiche.jpg', 'Drama', '2014-10-10', 'PG-18', 5),
(5, 'El Resplandor', 'https://www.libros-prohibidos.com/wp-content/uploads/2016/02/El-resplandor-portada.jpg', 'Terror', '1980-02-02', 'PG-18', 5),
(6, 'Titanic', 'https://img.gruporeforma.com/imagenes/630x945/4/854/3853436.jpg', 'Drama Romantico', '1997-07-07', 'PG', 2),
(7, 'El código enigma', NULL, 'bélica', '2017-08-19', 'PG-16', NULL),
(14, 'como ñiños', 'https://dmtinc.cl/imagenes/IUe4.jpg', 'comedia', '2022-08-23', 'PG-25', 5),
(15, 'tortugas ninja', 'https://as01.epimg.net/meristation/imagenes/2021/03/13/album/1615628719_920634_1615629130_album_grande.jpg', 'dibujos', '2022-09-13', 'PG-26', 3),
(16, 'Piter pan y las aventuras', 'https://cdn.teleticket.com.pe/images/eventos/pat023_md.jpg', 'dibujo', '2022-09-06', 'PG-26', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

DROP TABLE IF EXISTS `personajes`;
CREATE TABLE `personajes` (
  `per_act_id` int(11) NOT NULL,
  `per_peli_id` int(11) NOT NULL,
  `per_nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`per_act_id`, `per_peli_id`, `per_nombre`) VALUES
(1, 1, 'spiderman'),
(2, 1, 'MJ'),
(3, 1, 'Dr. Strange'),
(3, 2, 'Dr. Strange'),
(4, 2, 'Bruja Escarlata'),
(7, 5, 'Jack Torrance'),
(8, 5, 'Wendy Torrance'),
(9, 6, 'Jack'),
(10, 6, 'Rose');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE `personas` (
  `per_id` int(10) UNSIGNED NOT NULL,
  `per_nombres` varchar(100) NOT NULL,
  `per_apellidos` varchar(100) NOT NULL,
  `per_dni` char(8) NOT NULL,
  `per_img` text DEFAULT NULL,
  `per_fecha_nac` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actores`
--
ALTER TABLE `actores`
  ADD PRIMARY KEY (`act_id`);

--
-- Indices de la tabla `directores`
--
ALTER TABLE `directores`
  ADD PRIMARY KEY (`dire_id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`peli_id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`per_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actores`
--
ALTER TABLE `actores`
  MODIFY `act_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `directores`
--
ALTER TABLE `directores`
  MODIFY `dire_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `peli_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `per_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
