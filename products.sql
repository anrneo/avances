-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2020 a las 12:44:50
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `avances`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `existencia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_bodega` bigint(20) NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `nombre`, `codigo`, `existencia`, `id_bodega`, `descripcion`, `estado`, `created_at`, `updated_at`) VALUES
(2, 'carlosssssss', 'villaaaaaaaaaa', '41', 4, 'xxxxxxxx', '3', '2020-07-02 12:45:42', '2020-07-02 12:45:42'),
(4, 'sdsd', 'sdsd', '45', 2, 'sdsd', '1', '2020-07-02 12:51:01', '2020-07-02 12:51:01'),
(6, 'yyyyyyyyyy', 'yyyyyyyyyyy', '8', 2, 'ttttttttttt', '1', '2020-07-02 12:58:37', '2020-07-02 12:58:37'),
(9, 'errere', 'ererer', '78', 4, 'ererer', '2', '2020-07-02 13:59:08', '2020-07-02 13:59:08'),
(10, 'werwer', 'wewe', '3', 1, 'wewe', '2', '2020-07-02 15:41:08', '2020-07-02 15:41:08');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
