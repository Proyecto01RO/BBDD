-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2017 a las 18:35:22
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_proyecto01ro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anunci`
--

CREATE TABLE `anunci` (
  `anu_id` int(4) NOT NULL,
  `anu_titol` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anu_data_anunci` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `anu_data_robatori` date NOT NULL,
  `anu_ubicacio_robatori` varchar(35) COLLATE utf8_spanish_ci NOT NULL,
  `anu_descripcio_robatori` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `anu_marca` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `anu_model` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `anu_color` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `anu_antiguitat` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `anu_descripcio` text COLLATE utf8_spanish_ci NOT NULL,
  `anu_numero_serie` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `anu_foto` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `anu_compensacio` decimal(4,2) DEFAULT NULL,
  `anu_estat` enum('Robada','Encontrada','','') COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `anunci`
--

INSERT INTO `anunci` (`anu_id`, `anu_titol`, `anu_data_anunci`, `anu_data_robatori`, `anu_ubicacio_robatori`, `anu_descripcio_robatori`, `anu_marca`, `anu_model`, `anu_color`, `anu_antiguitat`, `anu_descripcio`, `anu_numero_serie`, `anu_foto`, `anu_compensacio`, `anu_estat`) VALUES
(1, 'Bici robada', '2017-10-13 14:10:48', '2017-10-09', 'Barcelona', 'Me han robado la bici en el barrio de Bellvitge.', 'Giant', 'TCX SLR 2', 'Blanca', '2 años', 'La bici era bonita y me la han robado en el barrio de Bellvitge.', '1234567890', '/img/bicirobada.jpg', '20.00', 'Robada'),
(2, 'Urgente me han robado la bici', '2017-10-20 15:20:32', '2017-10-01', 'Madrid', 'Una bici de carreras', 'Trek', 'Domane S5', 'Roja', '2 meses', 'Descripción general.', '0987654321', '/img/bicirobada2.jpg', '1.00', 'Encontrada'),
(3, 'Me han robado la bici', '2017-10-20 15:20:37', '2017-10-12', 'Sevilla', 'Bici BMX', 'Marca123', 'BMX420', 'Verde', '1 año.', 'Me robaron la bici al lado de la Giralda.', '09876543212', '/img/fotoo.jpg', '99.99', 'Robada'),
(4, 'Titulo Bici Robada 4', '2017-10-19 14:39:35', '2017-10-18', 'Ciudad 4', 'Descripcion robo 4', 'Marca 4', 'Modelo 4', 'Color 4', 'Antigüedad 4', 'Descripcion 4', '4', '/img/foto4.jpg', '20.00', 'Robada'),
(5, 'Titulo Bici Robada 5', '2017-10-19 14:39:35', '0000-00-00', 'Ciudad 5', 'Descripcion robo 5', 'Marca 5', 'Modelo 5', 'Color 5', 'Antigüedad 5', 'Descripcion 5', '5', '/img/foto5.jpg', '20.00', 'Robada'),
(6, 'Titulo Bici Robada 6', '2017-10-19 14:39:35', '0000-00-00', 'Ciudad 6', 'Descripcion robo 6', 'Marca 6', 'Modelo 6', 'Color 6', 'Antigüedad 6', 'Descripcion 6', '6', '/img/foto6.jpg', '20.00', 'Robada'),
(7, 'Titulo Bici Robada 7', '2017-10-19 14:39:35', '0000-00-00', 'Ciudad 7', 'Descripcion robo 7', 'Marca 7', 'Modelo 7', 'Color 7', 'Antigüedad 7', 'Descripcion 7', '7', '/img/foto7.jpg', '20.00', 'Robada'),
(8, 'Titulo Bici Robada 8', '2017-10-19 14:39:35', '2017-12-20', 'Ciudad 8', 'Descripcion robo 8', 'Marca 8', 'Modelo 8', 'Color 8', 'Antigüedad 8', 'Descripcion 8', '8', '/img/foto8.jpg', '20.00', 'Robada'),
(9, 'Titulo Bici Robada 9', '2017-10-19 14:39:35', '2017-12-20', 'Ciudad 9', 'Descripcion robo 9', 'Marca 9', 'Modelo 9', 'Color 9', 'Antigüedad 9', 'Descripcion 9', '9', '/img/foto9.jpg', '20.00', 'Robada'),
(10, 'Titulo Bici Robada 10', '2017-10-19 14:39:35', '2017-12-20', 'Ciudad 10', 'Descripcion robo 10', 'Marca 10', 'Modelo 10', 'Color 10', 'Antigüedad 10', 'Descripcion 10', '10', '/img/foto10.jpg', '20.00', 'Robada'),
(11, 'Titulo Bici Robada 11', '2017-10-19 14:39:35', '2017-12-20', 'Ciudad 11', 'Descripcion robo 11', 'Marca 11', 'Modelo 11', 'Color 11', 'Antigüedad 11', 'Descripcion 11', '11', '/img/foto11.jpg', '20.00', 'Robada'),
(12, 'Titulo Bici Robada 12', '2017-10-19 14:39:35', '2017-12-20', 'Ciudad 12', 'Descripcion robo 12', 'Marca 12', 'Modelo 12', 'Color 12', 'Antigüedad 12', 'Descripcion 12', '12', '/img/foto12.jpg', '20.00', 'Robada'),
(13, 'Titulo Bici Robada 13', '2017-10-19 14:39:35', '2017-12-20', 'Ciudad 13', 'Descripcion robo 13', 'Marca 13', 'Modelo 13', 'Color 13', 'Antigüedad 13', 'Descripcion 13', '13', '/img/foto13.jpg', '20.00', 'Robada'),
(14, 'Titulo Bici Robada 14', '2017-10-19 14:47:50', '2017-12-20', 'Ciudad 14', 'Descripcion robo 14', 'Marca 14', 'Modelo 14', 'Color 14', 'Antigüedad 14', 'Descripcion 14', '14', '/img/foto14.jpg', '20.00', 'Robada'),
(15, 'Titulo Bici Robada 15', '2017-10-19 14:47:50', '2017-12-20', 'Ciudad 15', 'Descripcion robo 15', 'Marca 15', 'Modelo 15', 'Color 15', 'Antigüedad 15', 'Descripcion 15', '15', '/img/foto15.jpg', '20.00', 'Robada'),
(16, 'Titulo Bici Robada 16', '2017-10-19 14:47:50', '2017-12-20', 'Ciudad 16', 'Descripcion robo 16', 'Marca 16', 'Modelo 16', 'Color 16', 'Antigüedad 16', 'Descripcion 16', '16', '/img/foto16.jpg', '20.00', 'Robada'),
(17, 'Titulo Bici Robada 17', '2017-10-19 14:47:50', '2017-12-20', 'Ciudad 17', 'Descripcion robo 17', 'Marca 17', 'Modelo 17', 'Color 17', 'Antigüedad 17', 'Descripcion 17', '17', '/img/foto17.jpg', '20.00', 'Robada'),
(18, 'Titulo Bici Robada 18', '2017-10-19 14:47:50', '2017-12-20', 'Ciudad 18', 'Descripcion robo 18', 'Marca 18', 'Modelo 18', 'Color 18', 'Antigüedad 18', 'Descripcion 18', '18', '/img/foto18.jpg', '20.00', 'Robada'),
(19, 'Titulo Bici Robada 19', '2017-10-19 14:47:50', '2017-12-20', 'Ciudad 19', 'Descripcion robo 19', 'Marca 19', 'Modelo 19', 'Color 19', 'Antigüedad 19', 'Descripcion 19', '19', '/img/foto19.jpg', '20.00', 'Robada'),
(20, 'Titulo Bici Robada 20', '2017-10-19 14:47:50', '2017-12-20', 'Ciudad 20', 'Descripcion robo 20', 'Marca 20', 'Modelo 20', 'Color 20', 'Antigüedad 20', 'Descripcion 20', '20', '/img/foto20.jpg', '20.00', 'Robada'),
(21, 'Titulo Bici Robada 21', '2017-10-19 14:48:38', '2017-12-20', 'Ciudad 21', 'Descripcion robo 21', 'Marca 21', 'Modelo 21', 'Color 21', 'Antigüedad 21', 'Descripcion 21', '21', '/img/foto21.jpg', '20.00', 'Robada'),
(22, 'Titulo Bici Robada 22', '2017-10-19 14:48:38', '2017-12-20', 'Ciudad 22', 'Descripcion robo 22', 'Marca 22', 'Modelo 22', 'Color 22', 'Antigüedad 22', 'Descripcion 22', '22', '/img/foto22.jpg', '20.00', 'Robada'),
(23, 'Titulo Bici Robada 23', '2017-10-19 14:48:38', '2017-12-20', 'Ciudad 23', 'Descripcion robo 23', 'Marca 23', 'Modelo 23', 'Color 23', 'Antigüedad 23', 'Descripcion 23', '23', '/img/foto23.jpg', '20.00', 'Robada'),
(24, 'Titulo Bici Robada 24', '2017-10-19 14:48:38', '2017-12-20', 'Ciudad 24', 'Descripcion robo 24', 'Marca 24', 'Modelo 24', 'Color 24', 'Antigüedad 24', 'Descripcion 24', '24', '/img/foto24.jpg', '20.00', 'Robada'),
(25, 'Titulo Bici Robada 25', '2017-10-19 14:48:38', '2017-12-20', 'Ciudad 25', 'Descripcion robo 25', 'Marca 25', 'Modelo 25', 'Color 25', 'Antigüedad 25', 'Descripcion 25', '25', '/img/foto25.jpg', '20.00', 'Robada'),
(26, 'Titulo Bici Robada 26', '2017-10-19 14:48:38', '2017-12-20', 'Ciudad 26', 'Descripcion robo 26', 'Marca 26', 'Modelo 26', 'Color 26', 'Antigüedad 26', 'Descripcion 26', '26', '/img/foto26.jpg', '20.00', 'Robada'),
(27, 'Titulo Bici Robada 27', '2017-10-19 14:48:38', '2017-12-20', 'Ciudad 27', 'Descripcion robo 27', 'Marca 27', 'Modelo 27', 'Color 27', 'Antigüedad 27', 'Descripcion 27', '27', '/img/foto27.jpg', '20.00', 'Robada'),
(28, 'Titulo Bici Robada 28', '2017-10-19 14:48:38', '2017-12-20', 'Ciudad 28', 'Descripcion robo 28', 'Marca 28', 'Modelo 28', 'Color 28', 'Antigüedad 28', 'Descripcion 28', '28', '/img/foto28.jpg', '20.00', 'Robada'),
(29, 'Titulo Bici Robada 29', '2017-10-19 14:48:38', '2017-12-20', 'Ciudad 29', 'Descripcion robo 29', 'Marca 29', 'Modelo 29', 'Color 29', 'Antigüedad 29', 'Descripcion 29', '29', '/img/foto29.jpg', '20.00', 'Robada'),
(30, 'Titulo Bici Robada 30', '2017-10-19 14:48:38', '2017-12-20', 'Ciudad 30', 'Descripcion robo 30', 'Marca 30', 'Modelo 30', 'Color 30', 'Antigüedad 30', 'Descripcion 30', '30', '/img/foto30.jpg', '20.00', 'Robada');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anunci`
--
ALTER TABLE `anunci`
  ADD PRIMARY KEY (`anu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anunci`
--
ALTER TABLE `anunci`
  MODIFY `anu_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
