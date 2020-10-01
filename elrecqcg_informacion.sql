-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 01-10-2020 a las 03:22:47
-- Versión del servidor: 5.6.41-84.1
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `elrecqcg_informacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CANJES`
--

CREATE TABLE `CANJES` (
  `ID_CANJE` bigint(20) UNSIGNED NOT NULL,
  `ID_PARTICIPANTE` bigint(20) NOT NULL,
  `ID_CODIGO` bigint(20) DEFAULT NULL,
  `CANTIDAD` int(5) NOT NULL,
  `FECHA` date NOT NULL,
  `USUARIO` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `CANJES`
--

INSERT INTO `CANJES` (`ID_CANJE`, `ID_PARTICIPANTE`, `ID_CODIGO`, `CANTIDAD`, `FECHA`, `USUARIO`) VALUES
(1, 1, 1, 50, '2020-09-25', 'READMIN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CODIGOS`
--

CREATE TABLE `CODIGOS` (
  `ID_CODIGO` bigint(20) UNSIGNED NOT NULL,
  `ID_PAIS` bigint(20) NOT NULL,
  `CODIGO` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ESTADO` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `CODIGOS`
--

INSERT INTO `CODIGOS` (`ID_CODIGO`, `ID_PAIS`, `CODIGO`, `ESTADO`) VALUES
(1, 1, 'I8F8D45D8855D85D', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CREDITOS`
--

CREATE TABLE `CREDITOS` (
  `ID_CREDITO` bigint(20) UNSIGNED NOT NULL,
  `ID_PARTICIPANTE` bigint(20) NOT NULL,
  `ID_TIENDA` bigint(20) DEFAULT NULL,
  `TIPO` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `CANTIDAD` int(5) NOT NULL,
  `FACTURA` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ARCHIVO` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FECHA` date NOT NULL,
  `USUARIO` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `CREDITOS`
--

INSERT INTO `CREDITOS` (`ID_CREDITO`, `ID_PARTICIPANTE`, `ID_TIENDA`, `TIPO`, `CANTIDAD`, `FACTURA`, `ARCHIVO`, `FECHA`, `USUARIO`) VALUES
(1, 1, 1, 'FACTURA', 100, NULL, 'ejemplo001.jpg', '2020-09-26', 'JAIRBUIR'),
(2, 1, 1, 'FACTURA', 130, '5654gb', 'ejemplo001.jpg', '2020-09-27', 'READMIN'),
(3, 1, 2, 'FACTURA', 130, 'lt-855888', 'ejemplo001.jpg', '2020-09-27', 'READMIN'),
(4, 1, 3, 'FACTURA', 180, 'tuut-55555', 'ejemplo001.jpg', '2020-09-27', 'READMIN'),
(5, 1, 4, 'FACTURA', 200, '898989', 'ejemplo001.jpg', '2020-09-27', 'READMIN'),
(6, 1, 5, 'FACTURA', 120, 'Ter-656565', 'ejemplo001.jpg', '2020-09-27', 'READMIN'),
(7, 1, 1, 'FACTURA', 120, 'Fe-95555', 'ejemplo001.jpg', '2020-09-27', 'READMIN'),
(8, 1, 6, 'FACTURA', 155, 'FE-5656565', 'ejemplo001.jpg', '2020-09-27', 'READMIN'),
(9, 1, 7, 'FACTURA', 220, 'fe-5544', 'ejemplo002.jpg', '2020-09-27', 'READMIN'),
(10, 1, 8, 'FACTURA', 155, 'fe-155', 'ejemplo001.jpg', '2020-09-27', 'READMIN'),
(11, 1, 9, 'FACTURA', 2, '123', 'logo dtv.jpg', '2020-09-27', 'READMIN'),
(12, 1, 10, 'FACTURA', 210, 'FESE', 'ejemplo002.jpg', '2020-09-28', 'READMIN'),
(13, 2, 11, 'FACTURA', 123456, '123456', 'Imagen3.jpg', '2020-09-29', 'READMIN'),
(14, 2, 11, 'FACTURA', 200, '123456', 'Imagen3.jpg', '2020-09-29', 'READMIN'),
(15, 2, 11, 'FACTURA', 100, '123456', 'Imagen3.jpg', '2020-09-29', 'READMIN'),
(16, 2, 11, 'FACTURA', 200, '123456', 'Imagen3.jpg', '2020-09-29', 'READMIN'),
(17, 2, 11, 'FACTURA', 200, '123456', 'Imagen3.jpg', '2020-09-29', 'READMIN'),
(18, 6, 12, 'FACTURA', 100, '123456', 'Imagen3.jpg', '2020-09-29', 'READMIN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PAISES`
--

CREATE TABLE `PAISES` (
  `ID_PAIS` bigint(20) UNSIGNED NOT NULL,
  `NOMBRE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `CODIGO_TELEFONICO` varchar(3) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PAISES`
--

INSERT INTO `PAISES` (`ID_PAIS`, `NOMBRE`, `CODIGO_TELEFONICO`) VALUES
(1, 'COLOMBIA', '57'),
(2, 'ECUADOR', '593'),
(3, 'PERÚ', '51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PARTICIPANTES`
--

CREATE TABLE `PARTICIPANTES` (
  `ID_PARTICIPANTE` bigint(20) UNSIGNED NOT NULL,
  `ID_PAIS` bigint(20) NOT NULL,
  `NOMBRES` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `APELLIDOS` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ANO_NACIMIENTO` int(4) NOT NULL,
  `MES_NACIMIENTO` int(2) NOT NULL,
  `DIA_NACIMIENTO` int(2) NOT NULL,
  `IDENTIFICACION` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `TELEFONO` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PARTICIPANTES`
--

INSERT INTO `PARTICIPANTES` (`ID_PARTICIPANTE`, `ID_PAIS`, `NOMBRES`, `APELLIDOS`, `ANO_NACIMIENTO`, `MES_NACIMIENTO`, `DIA_NACIMIENTO`, `IDENTIFICACION`, `TELEFONO`, `EMAIL`, `FECHA`) VALUES
(1, 1, 'JAIRO ALEJANDRO', 'BUITRAGO ROMERO', 1973, 11, 5, '7878787878', '7878787878', '', '2020-09-25'),
(2, 2, 'Alejandro', 'Buitrago', 1983, 5, 15, '989898899', '9898988998', '', '2020-09-25'),
(3, 3, 'María', 'Duarte', 2000, 12, 31, '99699999', '9969999988', '', '2020-09-25'),
(4, 1, 'Josee', 'Josee', 1974, 12, 5, '777777777', '7777777778', '', '2020-09-29'),
(5, 1, 'Sergio', 'Corredor', 2002, 15, 5, '4454554545', '3106198777', '', '2020-09-29'),
(6, 1, 'CARLOS TEST', 'PEDROZA TEST', 1990, 1, 1, '1372377312', '3186819767', 'capvam@hotmail.com', '2020-09-29'),
(7, 1, 'CARLOS TEST', 'PEDROZA TEST', 1990, 25, 12, '1372377313', '3186819767', 'capvam@hotmail.com', '2020-09-29'),
(8, 1, 'Carlos Andres', 'Pedroza Vargas', 1977, 11, 1, '1372377314', '3186819767', '', '2020-09-29'),
(9, 1, 'aaaa', 'aaaa', 1990, 1, 1, '1372377315', '3186819767', 'capvam@gmail.com', '2020-09-29'),
(10, 1, 'PRUEBA ', 'DOS', 1973, 11, 8, '4545454544', '787878787656', '', '2020-09-29'),
(11, 1, 'aaaa', 'PEDROZA TEST', 1990, 12, 20, '1372377318', '3186819767', 'capvam@gmail.com', '2020-09-29'),
(12, 1, 'aaaa', 'aaaa', 1980, 12, 20, '1372377316', '3186819767', 'capvam@gmail.com', '2020-09-29'),
(13, 1, 'aaaa', 'aaaa', 1990, 1, 20, '1372377317', '3186819767', 'cccc@hotmail.com', '2020-09-29'),
(14, 1, 'aa', 'aa', 2000, 12, 20, '1372377329', '3186819767', 'capvam@gmail.com', '2020-09-29'),
(15, 1, 'Carlos Andres', 'Pedroza Vargas', 2002, 1, 20, '1372377319', '3186819767', 'capvam@gmail.com', '2020-09-29'),
(16, 2, 'Julian', 'Alvarez', 2008, 12, 20, '13723773', '3186819767', 'capvam@hotmail.com', '2020-09-29'),
(17, 1, 'jose', 'diaz', 2000, 10, 2, '12347858', '3156980622', 'alonso@gmail.com', '2020-09-30'),
(18, 2, 'manuel', 'jimenez', 1978, 12, 12, '9088666', '9879006666', 'mjimenez@gmail.com', '2020-09-30'),
(19, 2, 'manuel', 'Jimenez', 1978, 12, 12, '797943701', '3002368892', 'mjimenezpulido@gmail.com', '2020-09-30'),
(20, 1, 'Carlos', 'Pedroza', 2000, 12, 20, '1372377311', '3186819767', 'capvam@gmail.com', '2020-09-30'),
(23, 1, 'Carlos Andres', 'Pedroza Vargas', 1990, 3, 20, '137237731', '3186819767', 'capvam@hotmail.com', '2020-09-30'),
(24, 1, 'Carlos Prueba', 'Pedroza Prueba', 1998, 12, 20, '13723771', '3186819767', 'capvam@gmail.com', '2020-09-30'),
(25, 1, 'Gabriel', 'Jimenez', 1978, 12, 12, '797943702', '3002368892', 'gabrieljimenezpulido@gmail.com', '2020-09-30'),
(26, 1, 'Gabriel', 'Perez', 1978, 3, 12, '797943703', '3002368892', 'g.jimenez@ydigitalmedia.com', '2020-10-01'),
(27, 1, 'Alejandro', 'Salcedo', 1973, 11, 5, '791111111111', '791111111111', '', '2020-10-01'),
(28, 1, 'Maria', 'Sanchez', 1973, 11, 5, '722222222', '7222222222', '', '2020-10-01'),
(29, 1, 'Clara', 'Perez', 2000, 11, 5, '7111111111111', '7111111111111', '', '2020-10-01'),
(30, 1, 'Carmen', 'Salcedo', 2001, 1, 1, '19999999999', '19999999999', '', '2020-10-01'),
(31, 1, 'Jose', 'Ochoa', 2001, 12, 1, '963369963', '96336996366', '', '2020-10-01'),
(32, 1, 'Sandra', 'bernate', 2001, 1, 1, '53535353535', '53535353535', '', '2020-10-01'),
(33, 1, 'Carlos', 'Estupiñan', 2001, 11, 1, '5454545445555', '5454545445555', '', '2020-10-01'),
(34, 1, 'Lia', 'Sua', 2001, 1, 1, '95159515951', '95159515951', '', '2020-10-01'),
(35, 1, 'Lua', 'Caarmen', 2001, 11, 24, '2424242424', '2424242424', '', '2020-10-01'),
(36, 1, 'Carlos', 'Amador', 2001, 1, 1, '3535353535', '3535353535', '', '2020-10-01'),
(37, 1, 'Clarita', 'Enseguida', 2001, 1, 1, '4848484848', '4848484848', '', '2020-10-01'),
(38, 1, 'Luz', 'Amparo', 2001, 1, 1, '454545454878', '454545454878', '', '2020-10-01'),
(39, 1, 'Luz', 'Guzman', 2001, 1, 1, '1233445567', '1233445567', '', '2020-10-01'),
(40, 1, 'Luz', 'Ocampo', 2001, 1, 1, '484848656565', '484848656565', '', '2020-10-01'),
(41, 1, 'Clarita', 'ocampos', 2001, 1, 1, '12121211212', '12121211212', '', '2020-10-01'),
(42, 1, 'Luz', 'Atertua', 2001, 1, 1, '954789657', '9547896570', '', '2020-10-01'),
(43, 1, 'Luz', 'Carl', 2001, 1, 1, '787878787879', '787878787879', '', '2020-10-01'),
(44, 1, 'Carl', 'Sagan', 2001, 1, 1, '45454544888', '45454544888', '', '2020-10-01'),
(45, 1, 'Carlos', 'Sua', 2001, 1, 1, '4644465440', '4644465440', '', '2020-10-01'),
(46, 1, 'Carlos', 'Sua', 2001, 1, 1, '6757657654', '6757657654', '', '2020-10-01'),
(47, 1, 'Luz', 'Manrrique', 2002, 10, 1, '787878978787', '787878978787', '', '2020-10-01'),
(48, 1, 'Maria', 'Sagan', 2002, 10, 2, '7854654564', '7854654564', '', '2020-10-01'),
(49, 1, 'Clara', 'Sagan', 2002, 10, 1, '4564564564654', '4564564564654', '', '2020-10-01'),
(50, 1, 'Josue', 'Salcedo', 2002, 10, 1, '67867867867', '67867867867', '', '2020-10-01'),
(51, 1, 'Claita', 'Salcedo', 2002, 10, 1, '6567564654', '6567564654', '', '2020-10-01'),
(52, 1, 'maria', 'Cano', 2002, 10, 1, '532467543654', '532467543654', '', '2020-10-01'),
(53, 1, 'KFHJDSKH', 'FDSFDSFDAS', 2002, 10, 2, '34653245435', '34653245435', '', '2020-10-01'),
(54, 1, 'trtrytryt', 'rtytryt', 2002, 10, 1, '9883789753', '9883789753', '', '2020-10-01'),
(55, 1, 'fsdfdsfds', 'fdsfdsdsfds', 2002, 10, 2, '453454543', '45345454388', '', '2020-10-01'),
(56, 1, 'fdsfds', 'fdsfdsf', 2002, 11, 10, '98478754375', '98478754375', '', '2020-10-01'),
(57, 1, 'dsfdsf', 'dfsdsfdsf', 2002, 12, 10, '345435435', '3454354359', '', '2020-10-01'),
(58, 1, 'dfdsf', 'fdsfdsf', 2002, 10, 15, '765675675675', '765675675675', '', '2020-10-01'),
(59, 1, 'David', 'Angulo', 1970, 5, 5, '79247159', '3168335151', 'davidanguloarbelaez@gmail.com', '2020-10-01'),
(60, 1, 'AAAA', 'AAAAA', 2002, 10, 10, '45435435435', '45435435435', '', '2020-10-01'),
(61, 1, 'rerewrer', 'erewrer', 2002, 10, 10, '23432432324', '23432432324', '', '2020-10-01'),
(62, 1, 'dffgdhgfh', 'jhdsjfhdsjh', 2002, 11, 10, '7665656756', '7665656756', '', '2020-10-01'),
(63, 1, 'fdsfdsfds', 'dsfdsfdsf', 2002, 9, 1, '4354354543534', '4354354543534', '', '2020-10-01'),
(64, 1, 'dfdsfdsfds', 'dsfdsfdsdsf', 2002, 9, 1, '4354354543543', '4354354543543', '', '2020-10-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TIENDAS`
--

CREATE TABLE `TIENDAS` (
  `ID_TIENDA` bigint(20) UNSIGNED NOT NULL,
  `ID_PAIS` bigint(20) NOT NULL,
  `NIT` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `NOMBRE` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `DIRECCION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TELEFONO` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `TIENDAS`
--

INSERT INTO `TIENDAS` (`ID_TIENDA`, `ID_PAIS`, `NIT`, `NOMBRE`, `DIRECCION`, `TELEFONO`) VALUES
(1, 1, '989898989', 'EL PORTAL', NULL, NULL),
(2, 1, '2222222', 'La tienda de beto', 'cl 888 9 8', '7858448'),
(3, 1, '56787898', 'la Caida', 'dg 78 8 7', '9898989898'),
(4, 1, '44545454', 'pruebaTienda', 'cl 4 4 5', '8989898'),
(5, 1, '898980443', 'La tia de lucho', 'Cr 4 3 2', '565656565'),
(6, 1, '000292929', 'El tablazo', 'Cl 3 3 3', '565656565'),
(7, 1, '93938888', 'eL CHAVITO', 'cL 4 4 4', '656546'),
(8, 1, '155155', 'la cacharreria', 'AV 12 2 2', '43543543'),
(9, 1, '900', 'test1GJ', '7801 NW 37TH ST', '3055920839'),
(10, 1, '8989898877', 'Portal EY', '', ''),
(11, 2, '123456', '123456', '123456', 'aaaaaa'),
(12, 1, '123456', '123456', '123456', 'aaaaaa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USUARIOS`
--

CREATE TABLE `USUARIOS` (
  `ID_USUARIO` bigint(20) UNSIGNED NOT NULL,
  `NOMBRE_USUARIO` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FECHA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `USUARIOS`
--

INSERT INTO `USUARIOS` (`ID_USUARIO`, `NOMBRE_USUARIO`, `PASSWORD`, `FECHA`) VALUES
(1, 'readmin', '824a0bba69febf7067d02fcb31bb52a8ba70313bd11ecaaff3fbaca311aadbce', '2020-09-21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CANJES`
--
ALTER TABLE `CANJES`
  ADD PRIMARY KEY (`ID_CANJE`),
  ADD UNIQUE KEY `ID_CANJE` (`ID_CANJE`) USING BTREE;

--
-- Indices de la tabla `CODIGOS`
--
ALTER TABLE `CODIGOS`
  ADD PRIMARY KEY (`ID_CODIGO`),
  ADD UNIQUE KEY `CODIGO` (`CODIGO`),
  ADD UNIQUE KEY `ID_CODIGO` (`ID_CODIGO`) USING BTREE;

--
-- Indices de la tabla `CREDITOS`
--
ALTER TABLE `CREDITOS`
  ADD PRIMARY KEY (`ID_CREDITO`),
  ADD UNIQUE KEY `ID_CREDITO` (`ID_CREDITO`) USING BTREE;

--
-- Indices de la tabla `PAISES`
--
ALTER TABLE `PAISES`
  ADD PRIMARY KEY (`ID_PAIS`),
  ADD UNIQUE KEY `ID_PAIS` (`ID_PAIS`);

--
-- Indices de la tabla `PARTICIPANTES`
--
ALTER TABLE `PARTICIPANTES`
  ADD PRIMARY KEY (`ID_PARTICIPANTE`),
  ADD UNIQUE KEY `ID_PARTICIPANTE` (`ID_PARTICIPANTE`) USING BTREE,
  ADD UNIQUE KEY `UC_Person_pp` (`ID_PAIS`,`IDENTIFICACION`);

--
-- Indices de la tabla `TIENDAS`
--
ALTER TABLE `TIENDAS`
  ADD PRIMARY KEY (`ID_TIENDA`),
  ADD UNIQUE KEY `ID_TIENDA` (`ID_TIENDA`) USING BTREE;

--
-- Indices de la tabla `USUARIOS`
--
ALTER TABLE `USUARIOS`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD UNIQUE KEY `ID_USUARIO` (`ID_USUARIO`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `CANJES`
--
ALTER TABLE `CANJES`
  MODIFY `ID_CANJE` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `CODIGOS`
--
ALTER TABLE `CODIGOS`
  MODIFY `ID_CODIGO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `CREDITOS`
--
ALTER TABLE `CREDITOS`
  MODIFY `ID_CREDITO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `PAISES`
--
ALTER TABLE `PAISES`
  MODIFY `ID_PAIS` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `PARTICIPANTES`
--
ALTER TABLE `PARTICIPANTES`
  MODIFY `ID_PARTICIPANTE` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `TIENDAS`
--
ALTER TABLE `TIENDAS`
  MODIFY `ID_TIENDA` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `USUARIOS`
--
ALTER TABLE `USUARIOS`
  MODIFY `ID_USUARIO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
