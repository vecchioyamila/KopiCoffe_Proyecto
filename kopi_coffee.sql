-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-08-2020 a las 06:44:09
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kopi_coffee`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `description` text COLLATE utf16_spanish2_ci NOT NULL,
  `long_description` text COLLATE utf16_spanish2_ci NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) COLLATE utf16_spanish2_ci DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `product_name`, `description`, `long_description`, `price`, `image`, `stock`, `status`, `ts_create`, `ts_update`) VALUES
(1, 'Leche de Almendras Original Silk', 'Leche a base de almendra marca Silk.\r\n100% Vegetal.', 'Leche a base de almendra marca Silk.\r\n\r\n100% Vegetal.\r\n\r\nSin colorantes ni conservantes.\r\n\r\nFuente de calcio y fortificada con vitaminas B12, D y E.\r\n\r\nFuente de energía.\r\nFácil digestión.', 230, 'images/menu/silk-almendras.jpg', 10, 0, '2020-08-11 20:28:31', '2020-08-11 20:28:31'),
(3, 'Leche de Almendras con Vainilla Sin Azúcar Silk', 'Leche a base de almendra marca Silk.\r\n100% Vegetal.', 'Leche a base de almendra marca Silk.\r\n100% Vegetal.\r\nSin colorantes ni conservantes.\r\nFuente de calcio y fortificada con vitaminas B12, D y E.\r\nFuente de energía.\r\nFácil digestión.', 230, 'images/menu/silk-vainilla.jpg', 10, 0, '2020-08-12 20:24:21', '2020-08-12 20:24:21'),
(8, 'Leche de Almendras con Chocolate Silk', 'Leche a base de almendra marca Silk.\r\n100% Vegetal.', 'Leche a base de almendra marca Silk.\r\n100% Vegetal.\r\nSin colorantes ni conservantes.\r\nFuente de calcio y fortificada con vitaminas B12, D y E.\r\nFuente de energía.\r\nFácil digestión.', 230, 'images/menu/silk-chocolate.jpg', 10, 0, '2020-08-18 18:22:12', '2020-08-18 18:22:12'),
(9, 'Pack Tipo Italiano + Brasil 250g', '1 x Café Molido Tipo Italiano 250g\r\n1 x Café Molido Brasil 250g\r\n', '1 x Café Molido Tipo Italiano 250g\r\n1 x Café Molido Brasil 250g\r\nRecomendado para cafeteras de filtro', 660, 'images/menu/granoscafe250.jpg', 10, 0, '2020-08-18 19:04:35', '2020-08-18 19:04:35'),
(10, 'Pack Tipo Italiano + Brasil 500g', '1 x Café Molido Brasil 500g\r\n1 x Café Molido Tipo Italiano 500g', '1 x Café Molido Brasil 500g\r\n1 x Café Molido Tipo Italiano 500g\r\nRecomendado para cafeteras de filtro\r\n\r\n', 1160, 'images/menu/granoscafe500.jpg', 10, 0, '2020-08-18 19:06:48', '2020-08-18 19:06:48'),
(11, 'Cafe Tostado Etiopía 1KG', 'Café de especialidad seleccionado tostado.\r\nTostado artesanalmente!\r\n', 'Café de especialidad seleccionado tostado\r\nTostado artesanalmente!\r\nSi sos amante del café o barista no podés dejar de probarlo!\r\nMarcadas notas frutales y achocolatadas con una nota limón que da un balance perfecto.', 3990, 'images/menu/ethiopiancoffee.jpg', 10, 0, '2020-08-18 19:40:41', '2020-08-18 19:40:41'),
(12, 'Cafetera Chemex Classic', 'La mejor cafetera para preparar café filtrado\r\nSe obtienen los sabores ORIGINALES del café', 'Cafeteras CHEMEX 6 tazas\r\n-Capacidad: 6 tazas (880 ML)\r\n-Material: Vidrio y madera\r\n-La mejor cafetera para preparar café filtrado\r\n-Se obtienen los sabores ORIGINALES del café', 6850, 'images/menu/chemex.jpg', 10, 0, '2020-08-18 20:08:18', '2020-08-18 20:08:18'),
(13, 'Cafetera Prensa Francesa', 'La prensa francesa es uno de los métodos más simples para un café fácilmente e intenso en tu hogar.', 'La prensa francesa es uno de los métodos más simples para un café fácilmente e intenso en tu hogar. Según los entendidos es el método más noble de tomar café. Su preparación es muy simple,con café molido (grueso) y agua caliente dejandola estacionar unos minutos, gracias a sus émbolo que logra filtrar el café con presión lograrás una excelente y rica bebida.', 6260, 'images/menu/prensafrancesa.jpg', 10, 1, '2020-08-18 20:10:39', '2020-08-18 20:10:39'),
(14, 'Cafetera Oster Primalatte', 'Prepara en casa combinaciones de café y leche capaces de competir con las recetas de los mejores baristas.', 'La experiencia de un café intenso y auténtico que ofrece la cafetera Oster® PrimaLatte® ahora se maximiza aún más en su segunda generación con un desempeño superior y calidad profesional. Prepara en casa combinaciones de café y leche capaces de competir con las recetas de los mejores baristas. Con solo presionar un botón optienes un espresso, un cappuccino o un lattte… tres estilos de café para cada gusto o personalidad.\r\n', 29.999, 'images/menu/expresomaquina.jpg', 10, 0, '2020-08-18 20:15:54', '2020-08-18 20:15:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salesitems`
--

CREATE TABLE `salesitems` (
  `id_salesitems` int(11) NOT NULL,
  `lote` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_userinfo` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `ts_update` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_create` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

--
-- Volcado de datos para la tabla `salesitems`
--

INSERT INTO `salesitems` (`id_salesitems`, `lote`, `id_product`, `id_userinfo`, `price`, `quantity`, `status`, `ts_update`, `ts_create`) VALUES
(28, 0, 8, 0, 230, 1, 0, '2020-08-19 01:18:23', '2020-08-19 01:18:23'),
(29, 0, 13, 0, 6260, 1, 0, '2020-08-19 01:18:30', '2020-08-19 01:18:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userinfo`
--

CREATE TABLE `userinfo` (
  `id_userinfo` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `surname` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `email` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `usuario` varchar(20) COLLATE utf16_spanish2_ci NOT NULL,
  `password` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `dni` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `address` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `phone` varchar(15) COLLATE utf16_spanish2_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

--
-- Volcado de datos para la tabla `userinfo`
--

INSERT INTO `userinfo` (`id_userinfo`, `name`, `surname`, `email`, `usuario`, `password`, `dni`, `address`, `phone`, `status`, `ts_create`, `ts_update`) VALUES
(1, 'Yamila', 'vecchio', 'vecchioyamila@gmail.com', 'vecchioyamila', '123456', '35989804', 'Avenida Illia1722', '56546456', 0, '2020-08-10 23:03:37', '2020-08-10 23:03:37'),
(6, 'Lucas', 'Cariddi', 'cariddilucas@gmail.com', 'lcariddi', '252525', '36288986', 'Avenida Illia 1700', '25252525', 0, '2020-08-10 23:24:13', '2020-08-10 23:24:13'),
(7, 'Sofia', 'Ortiz', 'sofiadaianaortiz@hotmail.com', 'sofiao', '141414', '93424395', 'Calle Falsa 123', '56546456', 0, '2020-08-11 18:15:57', '2020-08-11 18:15:57'),
(8, 'Matias', 'Rodriguez', 'matirodriguez@gmail.com', 'matiasrodriguez', '123456', '14945540', 'Uruguay 2222', '56546456', 0, '2020-08-19 01:17:18', '2020-08-19 01:17:18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name` (`product_name`);

--
-- Indices de la tabla `salesitems`
--
ALTER TABLE `salesitems`
  ADD PRIMARY KEY (`id_salesitems`),
  ADD UNIQUE KEY `id_product` (`id_product`);

--
-- Indices de la tabla `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id_userinfo`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `salesitems`
--
ALTER TABLE `salesitems`
  MODIFY `id_salesitems` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id_userinfo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
