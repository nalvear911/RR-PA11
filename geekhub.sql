-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-10-2024 a las 05:59:51
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `geekhub`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE IF NOT EXISTS `carrito` (
  `id_carrito` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_carrito`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id_carrito`, `id_usuario`, `fecha_creacion`) VALUES
(1, 1, '2024-10-26 00:00:00'),
(2, 2, '2024-10-26 00:00:00'),
(3, 3, '2024-10-26 00:00:00'),
(4, 4, '2024-10-26 00:00:00'),
(5, 5, '2024-10-26 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'Electrónica', 'Dispositivos electrónicos y gadgets.'),
(2, 'Ropa', 'Vestimenta y accesorios de moda.'),
(3, 'Accesorios', 'Complementos para dispositivos y más.'),
(4, 'Muebles', 'Muebles para el hogar y oficina.'),
(5, 'Coleccionables', 'Artículos coleccionables y de edición limitada.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `id_usuario`, `fecha_registro`) VALUES
(1, 1, '2024-10-25 21:01:15'),
(2, 2, '2024-10-25 21:01:15'),
(3, 3, '2024-10-25 21:01:15'),
(4, 4, '2024-10-25 21:01:15'),
(5, 5, '2024-10-25 21:01:15'),
(6, 1, '2024-10-25 21:02:14'),
(7, 2, '2024-10-25 21:02:14'),
(8, 3, '2024-10-25 21:02:14'),
(9, 4, '2024-10-25 21:02:14'),
(10, 5, '2024-10-25 21:02:14'),
(11, 1, '2024-10-26 00:00:00'),
(12, 2, '2024-10-26 00:00:00'),
(13, 3, '2024-10-26 00:00:00'),
(14, 4, '2024-10-26 00:00:00'),
(15, 5, '2024-10-26 00:00:00'),
(16, 1, '2024-10-26 00:00:00'),
(17, 2, '2024-10-26 00:00:00'),
(18, 3, '2024-10-26 00:00:00'),
(19, 4, '2024-10-26 00:00:00'),
(20, 5, '2024-10-26 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cupones`
--

CREATE TABLE IF NOT EXISTS `cupones` (
  `id_cupon` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(100) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `tipo_descuento` varchar(50) DEFAULT NULL,
  `requisitos` text,
  PRIMARY KEY (`id_cupon`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `cupones`
--

INSERT INTO `cupones` (`id_cupon`, `codigo`, `descuento`, `tipo_descuento`, `requisitos`) VALUES
(1, 'DESCUENTO10', 10.00, 'Porcentaje', 'Válido en compras mayores a 100000'),
(2, 'ENVIOGRATIS', 0.00, 'Envío', 'Envío gratis en compras mayores a 200000'),
(3, 'OFERTA20', 20.00, 'Porcentaje', 'Válido en productos seleccionados'),
(4, 'BLACKFRIDAY', 50.00, 'Porcentaje', 'Solo en Black Friday'),
(5, 'FESTIVIDAD', 15.00, 'Porcentaje', 'Válido en temporada de festividades');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleorden`
--

CREATE TABLE IF NOT EXISTS `detalleorden` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_orden` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `costo_envio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `id_orden` (`id_orden`),
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion_envio`
--

CREATE TABLE IF NOT EXISTS `direccion_envio` (
  `id_direccion` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(20) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_direccion`),
  KEY `id_cliente` (`id_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `direccion_envio`
--

INSERT INTO `direccion_envio` (`id_direccion`, `id_cliente`, `direccion`, `ciudad`, `codigo_postal`, `pais`) VALUES
(1, 1, 'Calle 123', 'Bogotá', '110111', 'Colombia'),
(2, 2, 'Avenida 456', 'Medellín', '050001', 'Colombia'),
(3, 3, 'Carrera 789', 'Cali', '760001', 'Colombia'),
(4, 4, 'Calle 101', 'Barranquilla', '080001', 'Colombia'),
(5, 5, 'Avenida 202', 'Cartagena', '130001', 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE IF NOT EXISTS `inventario` (
  `id_inventario` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad_disponible` int(11) DEFAULT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_inventario`),
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `id_producto`, `cantidad_disponible`, `ubicacion`) VALUES
(1, 1, 10, 'Almacén A'),
(2, 2, 15, 'Almacén B'),
(3, 3, 20, 'Almacén C'),
(4, 4, 5, 'Almacén D'),
(5, 5, 8, 'Almacén E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_carrito`
--

CREATE TABLE IF NOT EXISTS `item_carrito` (
  `id_item` int(11) NOT NULL AUTO_INCREMENT,
  `id_carrito` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `descuento_aplicado` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_item`),
  KEY `fk_carrito` (`id_carrito`),
  KEY `fk_producto` (`id_producto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE IF NOT EXISTS `orden` (
  `id_orden` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `fecha_orden` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `costo_envio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_orden`),
  KEY `id_cliente` (`id_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `orden`
--

INSERT INTO `orden` (`id_orden`, `id_cliente`, `fecha_orden`, `total`, `estado`, `costo_envio`) VALUES
(1, 1, '2024-10-25 21:13:59', 200000.00, 'Pendiente', 5000.00),
(2, 2, '2024-10-25 21:13:59', 150000.00, 'Completada', 0.00),
(3, 3, '2024-10-25 21:13:59', 300000.00, 'Pendiente', 10000.00),
(4, 4, '2024-10-25 21:13:59', 250000.00, 'Completada', 0.00),
(5, 5, '2024-10-25 21:13:59', 400000.00, 'Cancelada', 0.00),
(6, 1, '2024-10-26 00:00:00', 200000.00, 'Pendiente', 5000.00),
(7, 2, '2024-10-26 00:00:00', 150000.00, 'Completada', 0.00),
(8, 3, '2024-10-26 00:00:00', 300000.00, 'Pendiente', 10000.00),
(9, 4, '2024-10-26 00:00:00', 250000.00, 'Completada', 0.00),
(10, 5, '2024-10-26 00:00:00', 400000.00, 'Cancelada', 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE IF NOT EXISTS `pagos` (
  `id_pago` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `fecha_pago` datetime DEFAULT NULL,
  `estado_transaccion` varchar(50) DEFAULT NULL,
  `id_transaccion_externa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `id_cliente` (`id_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id_pago`, `id_cliente`, `monto`, `fecha_pago`, `estado_transaccion`, `id_transaccion_externa`) VALUES
(1, 1, 200000.00, '2024-10-26 00:00:00', 'Exitoso', 'TX12345'),
(2, 2, 80000.00, '2024-10-26 00:00:00', 'Exitoso', 'TX12346'),
(3, 3, 144000.00, '2024-10-26 00:00:00', 'Pendiente', 'TX12347'),
(4, 4, 170000.00, '2024-10-26 00:00:00', 'Exitoso', 'TX12348'),
(5, 5, 180000.00, '2024-10-26 00:00:00', 'Fallido', 'TX12349');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqr`
--

CREATE TABLE IF NOT EXISTS `pqr` (
  `id_pqr` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `descripcion` text,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id_pqr`),
  KEY `id_cliente` (`id_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `pqr`
--

INSERT INTO `pqr` (`id_pqr`, `id_cliente`, `tipo`, `descripcion`, `fecha`) VALUES
(1, 1, 'Consulta', 'Consulta sobre el producto X', '2024-10-25 22:08:09'),
(2, 2, 'Queja', 'Queja sobre el servicio', '2024-10-25 22:08:09'),
(3, 3, 'Sugerencia', 'Sugerencia para mejorar el sitio', '2024-10-25 22:08:09'),
(4, 4, 'Consulta', 'Consulta sobre el envío', '2024-10-25 22:08:09'),
(5, 5, 'Queja', 'Queja sobre el producto recibido', '2024-10-25 22:08:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `imagen_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_categoria` (`id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_categoria`, `marca`, `modelo`, `imagen_url`) VALUES
(1, 'Auriculares NeonTech', 'Auriculares inalámbricos con tecnología de cancelación de ruido y luces LED personalizables.', 120000.00, 10, 1, 'NeonTech', 'Model 1', 'img-productos/audifonos-1.png'),
(2, 'Teclado Mecánico CyberStrike', 'Teclado mecánico RGB con switches intercambiables y diseño compacto ideal para gaming.', 80000.00, 10, 1, 'CyberStrike', 'Model 1', 'img-productos/teclado-1.png'),
(3, 'Camiseta HoloWave', 'Camiseta de algodón con estampado holográfico reactivo a la luz.', 48000.00, 10, 2, 'HoloWave', 'Model 1', 'img-productos/camisa-1.png'),
(4, 'Mochila Anti-Gravity', 'Mochila ergonómica con sistema de distribución de peso y paneles de carga solar.', 170000.00, 10, 3, 'Anti-Gravity', 'Model 1', 'img-productos/mochila-1.png'),
(5, 'Lámpara NeoPixel', 'Lámpara futurista con control por voz y millones de colores RGB.', 90000.00, 10, 4, 'NeoPixel', 'Model 1', 'img-productos/lampara-1.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reseñas`
--

CREATE TABLE IF NOT EXISTS `reseñas` (
  `id_reseña` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `calificacion` int(11) DEFAULT NULL,
  `comentario` text,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id_reseña`),
  KEY `id_producto` (`id_producto`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `reseñas`
--

INSERT INTO `reseñas` (`id_reseña`, `id_producto`, `id_usuario`, `calificacion`, `comentario`, `fecha`) VALUES
(1, 1, 1, 5, 'Excelente producto!', '2024-10-25 22:07:23'),
(2, 2, 2, 4, 'Buena calidad.', '2024-10-25 22:07:23'),
(3, 3, 3, 5, 'Me encanta!', '2024-10-25 22:07:23'),
(4, 4, 4, 3, 'Cumple su función.', '2024-10-25 22:07:23'),
(5, 5, 5, 4, 'Muy útil.', '2024-10-25 22:07:23'),
(6, 1, 1, 5, 'Excelente producto!', '2024-10-26 00:00:00'),
(7, 2, 2, 4, 'Buena calidad.', '2024-10-26 00:00:00'),
(8, 3, 3, 5, 'Me encanta!', '2024-10-26 00:00:00'),
(9, 4, 4, 3, 'Cumple su función.', '2024-10-26 00:00:00'),
(10, 5, 5, 4, 'Muy útil.', '2024-10-26 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(255) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_completo`, `telefono`, `correo`, `contrasena`) VALUES
(1, 'Juan Pérez', NULL, 'juan.perez@example.com', NULL),
(2, 'Carla Prueba', '1234567891', 'carlaesprueba@gmail.com', '123456'),
(3, 'Nelly Paola', '3223378856', 'nelly@gmail.com', '123456'),
(4, 'Carla Tatiana Valderrama', '3186275644', 'carla@gmail.com', '123456'),
(5, 'Carla Tatiana Valderrama Garzon', '3186275644', 'ct.valderrama25@gmail.com', '123456');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `detalleorden`
--
ALTER TABLE `detalleorden`
  ADD CONSTRAINT `detalleorden_ibfk_1` FOREIGN KEY (`id_orden`) REFERENCES `orden` (`id_orden`),
  ADD CONSTRAINT `detalleorden_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `direccion_envio`
--
ALTER TABLE `direccion_envio`
  ADD CONSTRAINT `direccion_envio_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `item_carrito`
--
ALTER TABLE `item_carrito`
  ADD CONSTRAINT `fk_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_carrito` FOREIGN KEY (`id_carrito`) REFERENCES `carrito` (`id_carrito`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_carrito_ibfk_1` FOREIGN KEY (`id_carrito`) REFERENCES `carrito` (`id_carrito`),
  ADD CONSTRAINT `item_carrito_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `orden_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `pqr`
--
ALTER TABLE `pqr`
  ADD CONSTRAINT `pqr_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);

--
-- Filtros para la tabla `reseñas`
--
ALTER TABLE `reseñas`
  ADD CONSTRAINT `rese@0xas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `rese@0xas_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
