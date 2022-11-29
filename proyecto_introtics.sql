-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2022 a las 03:24:50
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_introtics`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `ISO` varchar(3) NOT NULL,
  `nombre_estado` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`ISO`, `nombre_estado`) VALUES
('AGS', 'Aguascalientes'),
('BCN', 'Baja California'),
('BCS', 'Baja California Sur'),
('CAM', 'Campeche'),
('CHI', 'Chihuahua'),
('CHP', 'Chiapas'),
('COA', 'Coahuila'),
('COL', 'Colima'),
('DIF', 'Ciudad de México'),
('DUR', 'Durango'),
('GRO', 'Guerrero'),
('GTO', 'Guanajuato'),
('HGO', 'Hidalgo'),
('JAL', 'Jalisco'),
('MEX', 'México'),
('MIC', 'Michoacán'),
('MOR', 'Morelos'),
('NAY', 'Nayarit'),
('NLE', 'Nuevo León'),
('OAX', 'Oaxaca'),
('PUE', 'Puebla'),
('QRO', 'Querétaro'),
('ROO', 'Quintana Roo'),
('SIN', 'Sinaloa'),
('SLP', 'San Luis Potosí'),
('SON', 'Sonora'),
('TAB', 'Tabasco'),
('TAM', 'Tamaulipas'),
('TLX', 'Tlaxcala'),
('VER', 'Veracruz'),
('YUC', 'Yucatán'),
('ZAC', 'Zacatecas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `ISOestado` varchar(3) NOT NULL,
  `nombre_municipio` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`ISOestado`, `nombre_municipio`) VALUES
('AGS', 'Aguascalientes'),
('AGS', 'Asientos'),
('AGS', 'Calvillo'),
('AGS', 'Cosío'),
('AGS', 'Tepezalá'),
('BCN', 'Ensenada'),
('BCN', 'Mexicali'),
('BCN', 'Playas de Rosarito'),
('BCN', 'Tecate'),
('BCN', 'Tijuana'),
('BCS', 'Comondú'),
('BCS', 'La paz'),
('BCS', 'Loreto'),
('BCS', 'Los cabos'),
('BCS', 'Mulegé'),
('CAM', 'Campeche'),
('CAM', 'Candelaria'),
('CAM', 'Carmen'),
('CAM', 'Palizada'),
('CAM', 'Tenabo'),
('CHI', 'Aldama'),
('CHI', 'Allende'),
('CHI', 'Chihuahua'),
('CHI', 'Coronado'),
('CHI', 'Guadalupe'),
('CHP', 'El Bosque'),
('CHP', 'La libertad'),
('CHP', 'Tapachula'),
('CHP', 'Tuxtla Gutiérrez'),
('CHP', 'Villaflores'),
('COA', 'Abasolo'),
('COA', 'Candela'),
('COA', 'Escobedo'),
('COA', 'Juárez'),
('COA', 'Monclova'),
('COL', 'Armería'),
('COL', 'Colima'),
('COL', 'Cuauhtémoc'),
('COL', 'Manzanillo'),
('COL', 'Tecomán'),
('DIF', 'Azcapotzalco'),
('DIF', 'Benito Juárez'),
('DIF', 'Cuauhtémoc'),
('DIF', 'Iztapalapa'),
('DIF', 'Xochimilco'),
('DUR', 'Canelas'),
('DUR', 'Durango'),
('DUR', 'Guadalupe Victoria'),
('DUR', 'Tamazula'),
('DUR', 'Vicente Guerrero'),
('GTO', 'Abasolo'),
('GTO', 'Cortazar'),
('GTO', 'Guanajuato'),
('GTO', 'León'),
('GTO', 'Ocampo'),
('ROO', 'Benito Juárez'),
('ROO', 'Cozumel'),
('ROO', 'Othón P. Blanco'),
('ROO', 'Solidaridad'),
('ROO', 'Tulum'),
('SIN', 'Ahome'),
('SIN', 'Culiacán'),
('SIN', 'Guasave'),
('SIN', 'Mazatlán'),
('SIN', 'Navolato'),
('SLP', 'Ciudad Valles'),
('SLP', 'Matehuala'),
('SLP', 'Rioverde'),
('SLP', 'San Luis Potosí'),
('SLP', 'Soledad de Graciano Sánchez'),
('SON', 'Cajeme'),
('SON', 'Hermosillo'),
('SON', 'Navojoa'),
('SON', 'Nogales'),
('SON', 'San Luis Río Colorado'),
('TAB', 'Cárdenas'),
('TAB', 'Centro'),
('TAB', 'Comalcalco'),
('TAB', 'Huimanguillo'),
('TAB', 'Macuspana'),
('TAM', 'Matamoros'),
('TAM', 'Nuevo Laredo'),
('TAM', 'Reynosa'),
('TAM', 'Tampico'),
('TAM', 'Victoria'),
('TLX', 'Apizaco'),
('TLX', 'Chiautempan'),
('TLX', 'Huamantla'),
('TLX', 'San Pablo del Monte'),
('TLX', 'Tlaxcala'),
('VER', 'Coatzacoalcos'),
('VER', 'Córdoba'),
('VER', 'Papantla'),
('VER', 'Veracruz'),
('VER', 'Xalapa'),
('YUC', 'Chacsinkín'),
('YUC', 'Kanasín'),
('YUC', 'Mérida'),
('YUC', 'Tizimín'),
('YUC', 'Valladolid'),
('ZAC', 'Fresnillo'),
('ZAC', 'Guadalupe'),
('ZAC', 'Pinos'),
('ZAC', 'Río Grande'),
('ZAC', 'Zacatecas'),
('HGO', 'Acatlán'),
('HGO', 'Epazoyucan'),
('HGO', 'Huehuetla'),
('HGO', 'Jaltocán'),
('HGO', 'Metepec'),
('JAL', 'Guadalajara'),
('JAL', 'Jocotepec'),
('JAL', 'La Barca'),
('JAL', 'Mazamitla'),
('JAL', 'Mixtlán'),
('MEX', 'Santo Tomás'),
('MEX', 'Sultepec'),
('MEX', 'Tecámac'),
('MEX', 'Villa Guerrero'),
('MEX', 'Zumpango'),
('MIC', 'Churumuco'),
('MIC', 'Ixtlán'),
('MIC', 'La Huacana'),
('MIC', 'Lagunillas'),
('MIC', 'Múgica'),
('MOR', 'Ayala'),
('MOR', 'Cuernavaca'),
('MOR', 'Jojutla'),
('MOR', 'Mazatepec'),
('MOR', 'Temoac'),
('NAY', 'Rosamorada'),
('NAY', 'San Blas'),
('NAY', 'Tepic'),
('NAY', 'Tuxpan'),
('NAY', 'Xalisco'),
('NLE', 'Cerralvo'),
('NLE', 'China'),
('NLE', 'El Carmen'),
('NLE', 'Juárez'),
('NLE', 'Monterrey'),
('OAX', 'Abejones'),
('OAX', 'Calihualá'),
('OAX', 'Chahuites'),
('OAX', 'Huatepec'),
('OAX', 'La Pe'),
('PUE', 'Atzala'),
('PUE', 'Coronango'),
('PUE', 'Guadalupe Victoria'),
('PUE', 'Jalpan'),
('PUE', 'Tilapa'),
('QRO', 'Corregidora'),
('QRO', 'Huimilpan'),
('QRO', 'Peñamiller'),
('QRO', 'Tequisquiapan'),
('QRO', 'Tolimán'),
('GRO', 'Apaxtla'),
('GRO', 'Copala'),
('GRO', 'Cuatepec'),
('GRO', 'Igualapa'),
('GRO', 'Tecoanapa');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`ISO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
