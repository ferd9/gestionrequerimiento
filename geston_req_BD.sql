-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-08-2024 a las 18:10:08
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `geston_req`
--
CREATE DATABASE IF NOT EXISTS `geston_req` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `geston_req`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analista_ti`
--

CREATE TABLE `analista_ti` (
  `id_analista` bigint(20) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sistema_especialidad` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `analista_ti`
--

INSERT INTO `analista_ti` (`id_analista`, `nombre`, `sistema_especialidad`) VALUES
(1, 'Pablo', 'Análisis'),
(3, 'Malena', 'Finance'),
(4, 'Meggy', 'Basic Industries'),
(5, 'Maynard', 'n/a'),
(6, 'Lucas', 'Consumer Services'),
(7, 'Goober', 'n/a'),
(8, 'Osbourn', 'Consumer Services'),
(9, 'Ase', 'Health Care'),
(10, 'Erin', 'n/a'),
(11, 'Seumas', 'n/a'),
(12, 'Ellyn', 'Consumer Services'),
(13, 'Amalea', 'Basic Industries'),
(14, 'Shari', 'Consumer Non-Durables'),
(15, 'Billi', 'Consumer Services'),
(16, 'Alverta', 'Consumer Services'),
(17, 'Hinze', 'Finance'),
(18, 'Carlin', 'Transportation'),
(19, 'Whitaker', 'Health Care'),
(20, 'Red', 'Finance'),
(21, 'Devora', 'Energy'),
(22, 'Udall', 'Health Care'),
(23, 'Peggy', 'Health Care'),
(24, 'Bidget', 'Consumer Services'),
(25, 'Armin', 'Public Utilities'),
(26, 'Bevan', 'Miscellaneous'),
(27, 'Henry', 'Capital Goods'),
(28, 'Natale', 'Health Care'),
(29, 'Baillie', 'Finance'),
(30, 'Lauree', 'Basic Industries'),
(31, 'Wenonah', 'Finance'),
(32, 'Clary', 'Technology'),
(33, 'Anett', 'Consumer Services'),
(34, 'Nicola', 'Health Care'),
(35, 'Micheal', 'Health Care'),
(36, 'Paula', 'Consumer Services'),
(37, 'Ashley', 'Health Care'),
(38, 'Elenore', 'Technology'),
(39, 'Tadeas', 'Consumer Services'),
(40, 'Mart', 'Miscellaneous'),
(41, 'Dyana', 'Capital Goods'),
(42, 'Bob', 'n/a'),
(43, 'Kali', 'Technology'),
(44, 'Alair', 'Technology'),
(45, 'Gina', 'Miscellaneous'),
(46, 'Faydra', 'Public Utilities'),
(47, 'Carleton', 'Health Care'),
(48, 'Karlotta', 'Consumer Non-Durables'),
(49, 'Neddy', 'n/a'),
(50, 'Easter', 'Finance'),
(51, 'Cynthy', 'Consumer Services'),
(52, 'Perice', 'Consumer Services'),
(53, 'Devy', 'Public Utilities'),
(54, 'Junina', 'Consumer Services'),
(55, 'Charmain', 'Finance'),
(56, 'Nestor', 'n/a'),
(57, 'Zacherie', 'n/a'),
(58, 'Willi', 'Finance'),
(59, 'Iago', 'n/a'),
(60, 'Willyt', 'Consumer Services'),
(61, 'Emery', 'n/a'),
(62, 'Marielle', 'Finance'),
(63, 'Blinni', 'Consumer Durables'),
(64, 'Dar', 'Health Care'),
(65, 'Jorry', 'n/a'),
(66, 'Bruno', 'n/a'),
(67, 'Ikey', 'Transportation'),
(68, 'Averil', 'Technology'),
(69, 'Alexis', 'Public Utilities'),
(70, 'Suzi', 'Finance'),
(71, 'Nance', 'Finance'),
(72, 'Darline', 'Transportation'),
(73, 'Erminie', 'Consumer Non-Durables'),
(74, 'Pearle', 'n/a'),
(75, 'Val', 'n/a'),
(76, 'Martyn', 'n/a'),
(77, 'Milo', 'Finance'),
(78, 'Siouxie', 'Finance'),
(79, 'Corrie', 'Health Care'),
(80, 'Virgilio', 'n/a'),
(81, 'Clarance', 'Finance'),
(82, 'Bud', 'n/a'),
(83, 'Prudy', 'Consumer Non-Durables'),
(84, 'Carlotta', 'Technology'),
(85, 'Charisse', 'Finance'),
(86, 'Constanta', 'Finance'),
(87, 'Grazia', 'Consumer Services'),
(88, 'Elmo', 'n/a'),
(89, 'Jareb', 'Transportation'),
(90, 'Rodolfo', 'n/a'),
(91, 'Ofilia', 'Consumer Durables'),
(92, 'Susanne', 'Finance'),
(93, 'Brittni', 'Energy'),
(94, 'Rose', 'Finance'),
(95, 'Hortensia', 'n/a'),
(96, 'Wittie', 'Health Care'),
(97, 'Sibylle', 'Capital Goods'),
(98, 'Bald', 'Transportation'),
(99, 'Gunilla', 'n/a'),
(100, 'Shela', 'Basic Industries'),
(101, 'Jazmin', 'Consumer Non-Durables'),
(102, 'Cordelie', 'Finance'),
(103, 'Beale', 'Technology'),
(104, 'Jamaal', 'Finance'),
(105, 'Joceline', 'Transportation'),
(106, 'Alexis', 'n/a'),
(107, 'Hew', 'Capital Goods'),
(108, 'Jessie', 'n/a'),
(109, 'Stanislaw', 'n/a'),
(110, 'Padget', 'n/a'),
(111, 'Waldon', 'Consumer Services'),
(112, 'Anestassia', 'Health Care'),
(113, 'Sanderson', 'Finance'),
(114, 'Kerrie', 'Finance'),
(115, 'Faun', 'n/a'),
(116, 'Emogene', 'Finance'),
(117, 'Livia', 'Consumer Services'),
(118, 'Licha', 'Finance'),
(119, 'Brianna', 'Health Care'),
(120, 'Eada', 'Technology'),
(121, 'Edin', 'n/a'),
(122, 'Riccardo', 'n/a'),
(123, 'Bobine', 'Health Care'),
(124, 'Yevette', 'Consumer Services'),
(125, 'Lydia', 'n/a'),
(126, 'Em', 'n/a'),
(127, 'Neron', 'n/a'),
(128, 'Ansley', 'Technology'),
(129, 'Rockie', 'Transportation'),
(130, 'Flemming', 'n/a'),
(131, 'Louisette', 'Technology'),
(132, 'De', 'Consumer Non-Durables'),
(133, 'Brennen', 'Energy'),
(134, 'Nichols', 'Health Care'),
(135, 'Tiphani', 'Transportation'),
(136, 'Andromache', 'n/a'),
(137, 'Laurette', 'Finance'),
(138, 'Wallache', 'Energy'),
(139, 'Hynda', 'Health Care'),
(140, 'Roldan', 'Health Care'),
(141, 'Oswell', 'Consumer Services'),
(142, 'Lindy', 'n/a'),
(143, 'Nikoletta', 'Finance'),
(144, 'Ravi', 'Capital Goods'),
(145, 'Rosabel', 'Consumer Services'),
(146, 'Raimundo', 'Finance'),
(147, 'Nathanil', 'Transportation'),
(148, 'Leola', 'n/a'),
(149, 'Carlita', 'Consumer Services'),
(150, 'Moselle', 'Consumer Services'),
(151, 'Alexia', 'Energy'),
(152, 'Maye', 'Finance'),
(153, 'Laird', 'Basic Industries'),
(154, 'Harp', 'Technology'),
(155, 'Hermia', 'Consumer Non-Durables'),
(156, 'Ema', 'n/a'),
(157, 'Mahmud', 'Consumer Services'),
(158, 'Leanna', 'Consumer Services'),
(159, 'Halette', 'Health Care'),
(160, 'Marvin', 'Finance'),
(161, 'Harvey', 'n/a'),
(162, 'Doris', 'Capital Goods'),
(163, 'Zsazsa', 'Capital Goods'),
(164, 'Raffaello', 'Health Care'),
(165, 'Boothe', 'Finance'),
(166, 'Dela', 'Energy'),
(167, 'Lionel', 'Basic Industries'),
(168, 'Udell', 'n/a'),
(169, 'Aurthur', 'n/a'),
(170, 'Steffie', 'Consumer Services'),
(171, 'Jayme', 'n/a'),
(172, 'Modestine', 'n/a'),
(173, 'Annmarie', 'Technology'),
(174, 'Diana', 'Technology'),
(175, 'Joachim', 'Capital Goods'),
(176, 'Elianore', 'Capital Goods'),
(177, 'Merline', 'n/a'),
(178, 'Alis', 'Health Care'),
(179, 'Ericka', 'Health Care'),
(180, 'Cordy', 'Public Utilities'),
(181, 'Ruth', 'Health Care'),
(182, 'Raychel', 'Finance'),
(183, 'Morgen', 'Capital Goods'),
(184, 'Jerrilyn', 'Technology'),
(185, 'Shayne', 'n/a'),
(186, 'Hildagarde', 'n/a'),
(187, 'Benjamen', 'Technology'),
(188, 'Martina', 'Miscellaneous'),
(189, 'Lewie', 'Energy'),
(190, 'Lowell', 'Capital Goods'),
(191, 'Issie', 'Miscellaneous'),
(192, 'Prue', 'Finance'),
(193, 'Dorothea', 'Technology'),
(194, 'Tamma', 'Finance'),
(195, 'Felice', 'Finance'),
(196, 'Lorne', 'Consumer Services'),
(197, 'Willy', 'Consumer Services'),
(198, 'Oliver', 'Finance'),
(199, 'Bert', 'Health Care'),
(200, 'Jone', 'Capital Goods'),
(201, 'Mord', 'Capital Goods'),
(202, 'Perkin', 'Consumer Services');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinador_helpdesk`
--

CREATE TABLE `coordinador_helpdesk` (
  `id_coordinador` bigint(20) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `coordinador_helpdesk`
--

INSERT INTO `coordinador_helpdesk` (`id_coordinador`, `nombre`) VALUES
(1, 'Saul'),
(3, 'Patrice'),
(4, 'Bondie'),
(5, 'Phillipp'),
(6, 'Freida'),
(7, 'Winnah'),
(8, 'Margalit'),
(9, 'Bettine'),
(10, 'Jolynn'),
(11, 'Loydie'),
(12, 'Jdavie'),
(13, 'Briano'),
(14, 'Pepi'),
(15, 'Craig'),
(16, 'Wainwright'),
(17, 'Ondrea'),
(18, 'Shayna'),
(19, 'Benton'),
(20, 'Holly'),
(21, 'Dorothea'),
(22, 'Merwyn'),
(23, 'Colman'),
(24, 'Peggy'),
(25, 'Torre'),
(26, 'Ellery'),
(27, 'Helenka'),
(28, 'Clim'),
(29, 'Drona'),
(30, 'Vicky'),
(31, 'Nettle'),
(32, 'Joycelin'),
(33, 'Sim'),
(34, 'Rudolph'),
(35, 'Ogden'),
(36, 'Gillie'),
(37, 'Darby'),
(38, 'Nelle'),
(39, 'Marilin'),
(40, 'Jessalyn'),
(41, 'Sofia'),
(42, 'Miner'),
(43, 'Koressa'),
(44, 'Charity'),
(45, 'Kelsy'),
(46, 'Annelise'),
(47, 'Charlotte'),
(48, 'Ardella'),
(49, 'Noreen'),
(50, 'Emlen'),
(51, 'Yulma'),
(52, 'Mil'),
(53, 'Valeda'),
(54, 'Enos'),
(55, 'Berna'),
(56, 'Fairfax'),
(57, 'Jacklyn'),
(58, 'Moishe'),
(59, 'Crissy'),
(60, 'Lindsey'),
(61, 'Merrilee'),
(62, 'Sybil'),
(63, 'Thea'),
(64, 'Stefano'),
(65, 'Gisela'),
(66, 'Stepha'),
(67, 'Jerrold'),
(68, 'Dorree'),
(69, 'Berny'),
(70, 'Carmina'),
(71, 'Julia'),
(72, 'Cord'),
(73, 'Jerome'),
(74, 'Tommi'),
(75, 'Juliann'),
(76, 'Iorgo'),
(77, 'Gerta'),
(78, 'Odessa'),
(79, 'Carolus'),
(80, 'Ulric'),
(81, 'Benjamin'),
(82, 'Cherida'),
(83, 'Juan'),
(84, 'Winny'),
(85, 'Delphine'),
(86, 'Marillin'),
(87, 'Joseph'),
(88, 'Porty'),
(89, 'Angelina'),
(90, 'Nancie'),
(91, 'Wolfgang'),
(92, 'Kaiser'),
(93, 'Zarla'),
(94, 'Angie'),
(95, 'Judye'),
(96, 'Dougy'),
(97, 'Arvin'),
(98, 'Jacquetta'),
(99, 'Broddie'),
(100, 'Cornell'),
(101, 'Roch'),
(102, 'Drew'),
(103, 'Roman'),
(104, 'Benoit'),
(105, 'Carlo'),
(106, 'Dev'),
(107, 'Roseann'),
(108, 'Fredia'),
(109, 'Remy'),
(110, 'Tallie'),
(111, 'Hewett'),
(112, 'Marcile'),
(113, 'Junia'),
(114, 'Orelle'),
(115, 'Francyne'),
(116, 'Ophelie'),
(117, 'Maurice'),
(118, 'Cheslie'),
(119, 'Molly'),
(120, 'Mace'),
(121, 'Chane'),
(122, 'York'),
(123, 'Glynn'),
(124, 'Randee'),
(125, 'Kara'),
(126, 'Walden'),
(127, 'Shelley'),
(128, 'Mariana'),
(129, 'Leigha'),
(130, 'Cherise'),
(131, 'Isabel'),
(132, 'Eduardo'),
(133, 'Alvy'),
(134, 'Prudence'),
(135, 'Nanci'),
(136, 'Haslett'),
(137, 'Jillane'),
(138, 'Rog'),
(139, 'Guillaume'),
(140, 'Dolores'),
(141, 'Raffaello'),
(142, 'Isak'),
(143, 'Jocko'),
(144, 'Quinta'),
(145, 'Ikey'),
(146, 'Jacki'),
(147, 'Marcellus'),
(148, 'Biddy'),
(149, 'Meryl'),
(150, 'Stillmann'),
(151, 'Jamison'),
(152, 'Teodora'),
(153, 'Arvin'),
(154, 'Augustine'),
(155, 'Kincaid'),
(156, 'Cecil'),
(157, 'Dana'),
(158, 'Rheba'),
(159, 'Farlay'),
(160, 'Ive'),
(161, 'Gage'),
(162, 'Sandie'),
(163, 'Rand'),
(164, 'Halsy'),
(165, 'Llywellyn'),
(166, 'Tab'),
(167, 'Thatch'),
(168, 'Karel'),
(169, 'Laughton'),
(170, 'Bonni'),
(171, 'Brana'),
(172, 'Janka'),
(173, 'Adolpho'),
(174, 'Gilda'),
(175, 'Rebbecca'),
(176, 'Rosalie'),
(177, 'Thane'),
(178, 'Charleen'),
(179, 'Peri'),
(180, 'Madella'),
(181, 'Shanon'),
(182, 'Maryrose'),
(183, 'Jerrilee'),
(184, 'Jimmie'),
(185, 'Ricky'),
(186, 'Isadora'),
(187, 'Billi'),
(188, 'Demetrius'),
(189, 'Sergent'),
(190, 'Bordy'),
(191, 'Riobard'),
(192, 'Teodorico'),
(193, 'Daveen'),
(194, 'Elora'),
(195, 'Candra'),
(196, 'Jade'),
(197, 'Yuma'),
(198, 'Park'),
(199, 'Moina'),
(200, 'Dawna'),
(201, 'Tobey'),
(202, 'Gretta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `epica`
--

CREATE TABLE `epica` (
  `id_epica` bigint(20) NOT NULL,
  `nombre_epica` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `id_propuesta` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia_usuario`
--

CREATE TABLE `historia_usuario` (
  `id_historia` bigint(20) NOT NULL,
  `descripcion` text COLLATE utf8_bin DEFAULT NULL,
  `id_propuesta` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefe_area`
--

CREATE TABLE `jefe_area` (
  `id_jefe` bigint(20) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propuesta_solucion`
--

CREATE TABLE `propuesta_solucion` (
  `id_propuesta` bigint(20) NOT NULL,
  `texto_propuesta` text COLLATE utf8_bin DEFAULT NULL,
  `estimacion_tiempo` int(11) DEFAULT NULL,
  `num_programadores` int(11) DEFAULT NULL,
  `autorizada_solicitante` tinyint(1) DEFAULT NULL,
  `autorizada_jefe` tinyint(1) DEFAULT NULL,
  `id_requerimiento` bigint(20) DEFAULT NULL,
  `id_jefe` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requerimiento`
--

CREATE TABLE `requerimiento` (
  `id_requerimiento` bigint(20) NOT NULL,
  `nombre_solicitud` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `descripcion_solicitud` text COLLATE utf8_bin DEFAULT NULL,
  `anexo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fecha_solicitud` date DEFAULT NULL,
  `id_solicitante` bigint(20) DEFAULT NULL,
  `id_coordinador` bigint(20) DEFAULT NULL,
  `id_analista` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `requerimiento`
--

INSERT INTO `requerimiento` (`id_requerimiento`, `nombre_solicitud`, `descripcion_solicitud`, `anexo`, `fecha_solicitud`, `id_solicitante`, `id_coordinador`, `id_analista`) VALUES
(3, 'Correccion de vistas', 'corrgir actualizado y mejorado', 'actualizacion de interface', '2024-03-03', 2, 1, 1),
(6, 'Verificacion de porceso', 'una descricpion corta', 'aod', '2024-08-28', 2, 14, NULL),
(7, 'algo para corregir', 'dsfasdfa', 'sdfasdf', '2024-08-21', 50, 123, 105);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitante`
--

CREATE TABLE `solicitante` (
  `id_solicitante` bigint(20) NOT NULL,
  `nombres` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `apellidos` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `solicitante`
--

INSERT INTO `solicitante` (`id_solicitante`, `nombres`, `apellidos`, `area`) VALUES
(1, 'Jose', 'Lopez', 'Planificación'),
(2, 'Manuel', 'Echevarria', 'Análisis'),
(3, 'Adrian', 'Torbett', 'Energy Transfer Partners, L.P.'),
(4, 'Denice', 'Bibbie', 'John Hancock Investors Trust'),
(5, 'Aaren', 'Dumphy', 'ICF International, Inc.'),
(6, 'Janos', 'Chalke', 'Trinity Biotech plc'),
(7, 'Geno', 'Desantis', 'Public Service Enterprise Group Incorporated'),
(8, 'Hildegaard', 'Walasik', 'Advanced Semiconductor Engineering, Inc.'),
(9, 'Laina', 'Janc', 'Edge Therapeutics, Inc.'),
(10, 'Fraze', 'Keasy', 'EQT GP Holdings, LP'),
(11, 'Shaina', 'Tittletross', 'TiVo Corporation'),
(12, 'Chrissie', 'Kikke', 'Wells Fargo & Company'),
(13, 'Abelard', 'Calcutt', 'MGM Growth Properties LLC'),
(14, 'Jeffy', 'Absolom', 'Atossa Genetics Inc.'),
(15, 'Putnam', 'Devanny', 'Meta Financial Group, Inc.'),
(16, 'Mel', 'Karlik', 'Blackrock MuniHoldings New Jersey Insured Fund, Inc.'),
(17, 'Kettie', 'Manginot', 'Astronics Corporation'),
(18, 'Margot', 'Allbon', 'Boston Private Financial Holdings, Inc.'),
(19, 'Stephan', 'Asty', 'Hudbay Minerals Inc.'),
(20, 'Ingra', 'McNess', 'Nuveen California AMT-Free Quality Municipal Income Fund'),
(21, 'Shelia', 'Jeanel', 'Entercom Communications Corporation'),
(22, 'Petronille', 'Ewbach', 'Hawkins, Inc.'),
(23, 'Tim', 'Tipping', 'Valero Energy Partners LP'),
(24, 'Carny', 'Mundie', 'Sino-Global Shipping America, Ltd.'),
(25, 'Mart', 'Fligg', 'Monmouth Real Estate Investment Corporation'),
(26, 'Clywd', 'Danhel', 'MOCON, Inc.'),
(27, 'Kore', 'McIlmurray', 'The Charles Schwab Corporation'),
(28, 'Ashla', 'Leah', 'Summer Infant, Inc.'),
(29, 'Kyle', 'Overton', 'Heartland Express, Inc.'),
(30, 'Etheline', 'Wrintmore', 'RCI Hospitality Holdings, Inc.'),
(31, 'Felecia', 'Carden', 'Lsb Industries Inc.'),
(32, 'Darcy', 'Redmond', 'Invesco Plc'),
(33, 'Audry', 'Rickersey', 'Invesco Trust  for Investment Grade New York Municipal'),
(34, 'Bronson', 'Hulatt', 'Hudson Technologies, Inc.'),
(35, 'Martin', 'Biasio', 'Intuit Inc.'),
(36, 'Manon', 'Walliker', 'TESSCO Technologies Incorporated'),
(37, 'Cass', 'Kondratenya', 'Rosetta Genomics Ltd.'),
(38, 'Sayre', 'Money', 'STERIS plc'),
(39, 'Abbey', 'Le Grys', 'J P Morgan Chase & Co'),
(40, 'Christi', 'Estrella', 'Akebia Therapeutics, Inc.'),
(41, 'Abbi', 'Clacey', 'China XD Plastics Company Limited'),
(42, 'Ignazio', 'Goforth', 'Banco Santander Brasil SA'),
(43, 'Trace', 'Yanez', 'Impax Laboratories, Inc.'),
(44, 'Tansy', 'Casale', 'Minerva Neurosciences, Inc'),
(45, 'Lowell', 'Franzoli', 'Akorn, Inc.'),
(46, 'Giacobo', 'Reignard', 'MagneGas Corporation'),
(47, 'Lev', 'Warsap', 'Canterbury Park Holding Corporation'),
(48, 'Adiana', 'Henriquet', 'Templeton Emerging Markets Fund'),
(49, 'Anna-maria', 'Dri', 'Kimco Realty Corporation'),
(50, 'Josselyn', 'Wilse', 'Tucows Inc.'),
(51, 'Christina', 'Bisiker', 'Orbital ATK, Inc.'),
(52, 'Roobbie', 'Ocheltree', 'Corbus Pharmaceuticals Holdings, Inc.'),
(53, 'Merrielle', 'Yorston', 'bebe stores, inc.'),
(54, 'Dev', 'Alans', 'Fonar Corporation'),
(55, 'Irina', 'Gogin', 'Fate Therapeutics, Inc.'),
(56, 'Cliff', 'McCullouch', 'Petroleo Brasileiro S.A.- Petrobras'),
(57, 'Kienan', 'Seacombe', 'Helen of Troy Limited'),
(58, 'Alberik', 'Flitcroft', 'USD Partners LP'),
(59, 'Yolane', 'Lankham', 'PartnerRe Ltd.'),
(60, 'Eddi', 'Ros', 'Baytex Energy Corp'),
(61, 'Clair', 'Minet', 'Sonoma Pharmaceuticals, Inc.'),
(62, 'Genvieve', 'Dybell', 'RAIT Financial Trust'),
(63, 'Mike', 'Alpe', 'Harris Corporation'),
(64, 'Willis', 'Smoote', 'Drive Shack Inc.'),
(65, 'Mufi', 'Rooper', 'Ocean Rig UDW Inc.'),
(66, 'Wilmer', 'Mandrey', 'MSB Financial Corp.'),
(67, 'Minni', 'Traher', 'AngloGold Ashanti Limited'),
(68, 'Milli', 'Tinner', 'Entergy New Orleans, Inc.'),
(69, 'Farrand', 'Cassin', 'PowerShares Russell 1000 Low Beta Equal Weight Portfolio'),
(70, 'Torey', 'Dobel', 'Nuveen New York Municipal Value Fund, Inc.'),
(71, 'Anne-marie', 'Keogh', 'Western Asset Municipal High Income Fund, Inc.'),
(72, 'Laurie', 'Cockett', 'Reinsurance Group of America, Incorporated'),
(73, 'Wood', 'Yendall', 'American Tower Corporation (REIT)'),
(74, 'Bowie', 'Woodcraft', 'BlackLine, Inc.'),
(75, 'Agace', 'O\' Byrne', 'Moneygram International, Inc.'),
(76, 'Jordain', 'Luetkemeyers', 'Parker Drilling Company'),
(77, 'Dorisa', 'Everill', 'RAIT Financial Trust'),
(78, 'Adriana', 'De Vaan', 'Cascadian Therapeutics, Inc.'),
(79, 'Joachim', 'Cornick', 'Synnex Corporation'),
(80, 'Emogene', 'Favel', 'Pegasystems Inc.'),
(81, 'Halie', 'Canto', 'Energy Focus, Inc.'),
(82, 'Magdalene', 'Eltun', 'Provident Financial Services, Inc'),
(83, 'Rachael', 'Lechmere', 'Steel Partners Holdings LP'),
(84, 'Lotta', 'Arrol', 'Public Storage'),
(85, 'Brandon', 'Glazyer', 'Tile Shop Hldgs, Inc.'),
(86, 'Alasdair', 'Sanbrooke', 'National Security Group, Inc.'),
(87, 'Yancey', 'Coxhell', 'Total S.A.'),
(88, 'Giorgi', 'Westoll', 'Zillow Group, Inc.'),
(89, 'Royal', 'Entissle', 'Sunoco LP'),
(90, 'Paquito', 'Folbige', 'WSFS Financial Corporation'),
(91, 'Jo', 'Finicj', 'Argan, Inc.'),
(92, 'Benjy', 'Malham', 'Superior Uniform Group, Inc.'),
(93, 'Amalle', 'Faulds', 'Westwood Holdings Group Inc'),
(94, 'Mano', 'Brawn', 'Eaton Vance Tax-Managed Buy-Write Income Fund'),
(95, 'Walliw', 'Ohrt', 'Logitech International S.A.'),
(96, 'Cathe', 'Itscowicz', 'Legg Mason BW Global Income Opportunities Fund Inc.'),
(97, 'Aaren', 'Estcot', 'Santander Consumer USA Holdings Inc.'),
(98, 'Nelia', 'Fairman', 'iShares GNMA Bond ETF'),
(99, 'Tomas', 'Girodias', 'SEI Investments Company'),
(100, 'Teodora', 'Tuckley', 'First Trust Large Cap Value AlphaDEX Fund'),
(101, 'Carin', 'Jahan', 'Capitol Acquisition Corp. III'),
(102, 'Dudley', 'Argente', 'Spartan Motors, Inc.'),
(103, 'Lindsy', 'Bever', 'Atwood Oceanics, Inc.'),
(104, 'Bibi', 'Kingswood', 'Neurocrine Biosciences, Inc.'),
(105, 'Dorothy', 'Sprull', 'SPI Energy Co., Ltd.'),
(106, 'Carlota', 'Colliver', 'Brocade Communications Systems, Inc.'),
(107, 'Dell', 'McPhilemy', 'Intermolecular, Inc.'),
(108, 'Ximenez', 'Durek', 'Santander Holdings USA, Inc.'),
(109, 'Cami', 'Banfill', 'LegacyTexas Financial Group, Inc.'),
(110, 'Anestassia', 'Cattanach', 'H&E Equipment Services, Inc.'),
(111, 'Bianca', 'Davitt', 'Archer-Daniels-Midland Company'),
(112, 'Elberta', 'Warden', 'Lamar Advertising Company'),
(113, 'Spike', 'Peach', 'New Senior Investment Group Inc.'),
(114, 'Clay', 'Crookes', 'Vanguard Short-Term Corporate Bond ETF'),
(115, 'Curry', 'Mertgen', 'BLDRS Asia 50 ADR Index Fund'),
(116, 'Drusilla', 'Archdeacon', 'WAVE Life Sciences Ltd.'),
(117, 'Cairistiona', 'Teenan', 'SmartFinancial, Inc.'),
(118, 'Floria', 'Frewer', 'Twenty-First Century Fox, Inc.'),
(119, 'Maurine', 'Moryson', 'Extended Stay America, Inc.'),
(120, 'Gerrard', 'Gaskins', 'Materion Corporation'),
(121, 'Gillie', 'Badam', 'Vornado Realty Trust'),
(122, 'Katusha', 'Walster', 'Intrawest Resorts Holdings, Inc.'),
(123, 'Daron', 'Lovat', 'Medley Management Inc.'),
(124, 'Randie', 'Kislingbury', 'Bank of America Corporation'),
(125, 'Gardy', 'Grigoliis', 'KKR Real Estate Finance Trust Inc.'),
(126, 'Benita', 'Cannicott', 'Crawford & Company'),
(127, 'Dianna', 'Paramore', 'Western Asset High Income Fund II Inc.'),
(128, 'Elora', 'Woodson', 'Cincinnati Financial Corporation'),
(129, 'Prentiss', 'Gyngell', 'Vocera Communications, Inc.'),
(130, 'Nelli', 'Scholling', 'Check-Cap Ltd.'),
(131, 'Marguerite', 'Garmons', 'Jensyn Acquistion Corp.'),
(132, 'Libby', 'Stodd', 'Twitter, Inc.'),
(133, 'Minetta', 'Piatto', 'PNC Financial Services Group, Inc. (The)'),
(134, 'Oberon', 'Truckett', 'Argo Group International Holdings, Ltd.'),
(135, 'Liana', 'Pearmine', 'U.S. Silica Holdings, Inc.'),
(136, 'Malvin', 'Magarrell', 'CONSOL Energy Inc.'),
(137, 'Dell', 'Springall', 'Kaman Corporation'),
(138, 'Lindy', 'Bovey', 'John Bean Technologies Corporation'),
(139, 'Lyda', 'Hallgath', 'Kronos Worldwide Inc'),
(140, 'Stepha', 'Shillitto', 'Iteris, Inc.'),
(141, 'Stirling', 'Coppo', 'SEACOR Holdings, Inc.'),
(142, 'Marshal', 'Tims', 'Babcock'),
(143, 'Rice', 'Cuffe', 'Vornado Realty Trust'),
(144, 'Michal', 'Tomaszczyk', 'Intuit Inc.'),
(145, 'Hasty', 'Beardwell', 'Trex Company, Inc.'),
(146, 'Ailyn', 'Papen', 'Orion Group Holdings, Inc.'),
(147, 'Lucille', 'Ramirez', 'Yirendai Ltd.'),
(148, 'Mellisa', 'Dunk', 'Applied Genetic Technologies Corporation'),
(149, 'Brande', 'Pannaman', 'Digital Realty Trust, Inc.'),
(150, 'Gray', 'Romer', 'First Trust Nasdaq Transportation ETF'),
(151, 'Evy', 'Keher', 'PPL Corporation'),
(152, 'Ashia', 'Guyan', 'Fresenius Medical Care Corporation'),
(153, 'Angelica', 'Carswell', 'Citigroup Inc.'),
(154, 'Leroi', 'Buck', 'Boston Properties, Inc.'),
(155, 'Antons', 'Emmens', 'Trimble Inc.'),
(156, 'Erroll', 'Gudgin', 'Acacia Communications, Inc.'),
(157, 'Elizabeth', 'Deakin', 'J & J Snack Foods Corp.'),
(158, 'Gerrie', 'Spilstead', 'Phillips 66'),
(159, 'Purcell', 'Brotherwood', 'Silver Run Acquisition Corporation II'),
(160, 'Nicolas', 'Clapton', 'Sonoma Pharmaceuticals, Inc.'),
(161, 'Bronnie', 'Roja', 'Automatic Data Processing, Inc.'),
(162, 'Ebenezer', 'Ballay', 'PIMCO Municipal Income Fund III'),
(163, 'Jess', 'Dillon', 'Acasti Pharma, Inc.'),
(164, 'Chantalle', 'Ruthen', 'Forrester Research, Inc.'),
(165, 'Rey', 'Antognozzii', 'Davis Select Financial ETF'),
(166, 'Heath', 'Sparshott', 'Kelly Services, Inc.'),
(167, 'Zenia', 'Housegoe', 'United Bancshares, Inc.'),
(168, 'Korrie', 'Pote', 'Playa Hotels & Resorts N.V.'),
(169, 'Christal', 'Hunnam', 'SG Blocks, Inc.'),
(170, 'Burke', 'Pawel', 'FlexShopper, Inc.'),
(171, 'Anabelle', 'Arthy', 'W.W. Grainger, Inc.'),
(172, 'Iggy', 'McKue', 'Cyclacel Pharmaceuticals, Inc.'),
(173, 'Juditha', 'Powney', 'Spark Energy, Inc.'),
(174, 'Sandie', 'Middlemass', 'GMS Inc.'),
(175, 'Farlie', 'Fairbanks', 'TCF Financial Corporation'),
(176, 'Cyndy', 'Laweles', 'WMIH Corp.'),
(177, 'Merlina', 'Petticrow', 'KCAP Financial, Inc.'),
(178, 'Chandal', 'Hane', 'Align Technology, Inc.'),
(179, 'Emmaline', 'Abisetti', 'Gabelli NextShares Trust'),
(180, 'Randi', 'Skentelbury', 'Spectra Energy Partners, LP'),
(181, 'Darrell', 'Kilduff', 'First Trust NASDAQ Cybersecurity ETF'),
(182, 'Carce', 'Waryk', 'M III Acquisition Corp.'),
(183, 'Clarey', 'Treece', 'Synovus Financial Corp.'),
(184, 'Pru', 'Gheraldi', 'Bill Barrett Corporation'),
(185, 'Robb', 'Kira', 'Comp En De Mn Cemig ADS'),
(186, 'Pearl', 'Muzzollo', 'MFC Bancorp Ltd.'),
(187, 'Tamiko', 'Brockhouse', 'Franklin Resources, Inc.'),
(188, 'Daisy', 'Lemm', 'Syngenta AG'),
(189, 'Brook', 'Gentner', 'Urstadt Biddle Properties Inc.'),
(190, 'Morey', 'Bettenay', 'Financial Engines, Inc.'),
(191, 'Tally', 'Nowell', 'Aircastle Limited'),
(192, 'Jermain', 'Duffan', 'InterDigital, Inc.'),
(193, 'Harland', 'Riddington', 'Alliance National Municipal Income Fund Inc'),
(194, 'Cesare', 'Alton', 'Southern California Edison Company'),
(195, 'Hatty', 'Dickie', 'PowerShares S&P SmallCap Consumer Staples Portfolio'),
(196, 'Corliss', 'Heckle', 'Xunlei Limited'),
(197, 'Lesley', 'Alsopp', 'Summit State Bank'),
(198, 'Oralee', 'Halsall', 'iShares FTSE EPRA/NAREIT Europe Index Fund'),
(199, 'Sile', 'Franceschelli', 'Pinnacle Foods, Inc.'),
(200, 'Kelly', 'Breeder', 'Intercontinental Hotels Group'),
(201, 'Evelyn', 'Beston', 'Benitec Biopharma Limited'),
(202, 'Bronny', 'Mainston', 'Ecology and Environment, Inc.'),
(203, 'Grenville', 'Titley', 'GTY Technology Holdings, Inc.'),
(204, 'Merrilee', 'Shooter', 'Kate Spade & Company'),
(205, 'Margareta', 'Cluckie', 'OncoMed Pharmaceuticals, Inc.'),
(206, 'Lynelle', 'Mournian', 'BankFinancial Corporation'),
(207, 'Rosy', 'Speek', 'P & F Industries, Inc.'),
(208, 'Leonidas', 'Ladel', 'CME Group Inc.'),
(209, 'Ramsey', 'Bridgestock', 'Gladstone Commercial Corporation'),
(210, 'Madonna', 'Hutten', 'Kingsway Financial Services, Inc.'),
(211, 'Annetta', 'Wolford', 'Sears Holdings Corporation'),
(212, 'Mariska', 'Chessil', 'Dynegy Inc.'),
(213, 'Billy', 'Crummy', 'ICC Holdings, Inc.'),
(214, 'Hanson', 'Jon', 'Texas Capital Bancshares, Inc.'),
(215, 'Timmi', 'Philler', 'Alcentra Capital Corp.'),
(216, 'Jonell', 'Melby', 'Anavex Life Sciences Corp.'),
(217, 'Dal', 'Emanuel', 'Sphere 3D Corp.'),
(218, 'Adlai', 'Stronough', 'Assured Guaranty Ltd.'),
(219, 'Egan', 'Reay', 'Atossa Genetics Inc.'),
(220, 'Carling', 'Sterre', 'PAREXEL International Corporation'),
(221, 'Joy', 'Garm', 'Korea Fund, Inc. (The)'),
(222, 'Jaquenette', 'Pybworth', 'Main Street Capital Corporation'),
(223, 'Uriel', 'Cleaton', 'Hingham Institution for Savings'),
(224, 'Jerad', 'Tayler', 'Pandora Media, Inc.'),
(225, 'Walton', 'Tetlow', 'OraSure Technologies, Inc.'),
(226, 'Darnall', 'Stubbington', 'Global X Internet of Things ETF'),
(227, 'Mikol', 'Staniford', 'First Trust TCW Opportunistic Fixed Income ETF'),
(228, 'Clay', 'Klagges', 'Kimberly-Clark Corporation'),
(229, 'Glenda', 'Clarycott', 'Blackrock MuniYield Quality Fund III, Inc.'),
(230, 'Marlyn', 'Softley', 'Transcat, Inc.'),
(231, 'Fred', 'Gery', 'First Trust Energy Infrastructure Fund'),
(232, 'Nevile', 'Kardos-Stowe', 'Ark Restaurants Corp.'),
(233, 'Kenn', 'Sprigings', 'Conduent Incorporated'),
(234, 'Sibbie', 'Padbery', 'BlackRock Municipal Income Investment Trust'),
(235, 'Germana', 'Witherby', 'SpartanNash Company'),
(236, 'Debbie', 'Summerton', 'LaSalle Hotel Properties'),
(237, 'Sashenka', 'Redmain', 'Willdan Group, Inc.'),
(238, 'Erminia', 'Haslam', 'Charles River Laboratories International, Inc.'),
(239, 'Reginald', 'McKall', 'Vanguard Total International Stock ETF'),
(240, 'Pearl', 'MacGuffie', 'Ashford Hospitality Trust Inc'),
(241, 'Jody', 'Semorad', 'Pzena Investment Management Inc'),
(242, 'Justus', 'Sprouls', 'LCI Industries '),
(243, 'Nevins', 'Sherborne', 'Aflac Incorporated'),
(244, 'Urbain', 'Snow', 'Golar LNG Partners LP'),
(245, 'Kaitlynn', 'Roussell', 'Kinder Morgan, Inc.'),
(246, 'Reeba', 'Swyre', 'Eagle Bancorp Montana, Inc.'),
(247, 'Zacharias', 'Betchley', 'Choice Hotels International, Inc.'),
(248, 'Alex', 'Katzmann', 'Aqua America, Inc.'),
(249, 'Libbey', 'Killeen', 'Taylor Devices, Inc.'),
(250, 'Lusa', 'Longo', 'Preferred Apartment Communities, Inc.'),
(251, 'Rayshell', 'Perroni', 'Electronics for Imaging, Inc.'),
(252, 'Linea', 'Grant', 'DURECT Corporation'),
(253, 'Meagan', 'Laslett', 'Meridian Bioscience Inc.'),
(254, 'Juieta', 'Cotton', 'Nuveen Massachusetts Municipal Income Fund'),
(255, 'Goraud', 'Huxster', 'PennantPark Floating Rate Capital Ltd.'),
(256, 'Griswold', 'Curror', 'Yingli Green Energy Holding Company Limited'),
(257, 'Christal', 'Fellon', 'Vornado Realty Trust'),
(258, 'Morlee', 'Basilotta', 'Western Union Company (The)'),
(259, 'Karon', 'McNeilley', 'iPath US Treasury 10-year Bull ETN'),
(260, 'Wade', 'Heintz', 'Hovnanian Enterprises Inc'),
(261, 'Madalena', 'Tidman', 'Gartner, Inc.'),
(262, 'Demetria', 'Cantopher', 'PowerShares S&P SmallCap Utilities Portfolio'),
(263, 'Keefe', 'MacClenan', 'United States Cellular Corporation'),
(264, 'Smitty', 'Whitlow', 'Assured Guaranty Ltd.'),
(265, 'Caleb', 'Stokell', 'HomeStreet, Inc.'),
(266, 'Devonne', 'McGlaughn', 'Dr Pepper Snapple Group, Inc'),
(267, 'Joyann', 'Gorini', 'Lannett Co Inc'),
(268, 'Shelba', 'Astall', 'Eaton Vance Enhance Equity Income Fund'),
(269, 'Lynnell', 'Wharrier', '1347 Property Insurance Holdings, Inc.'),
(270, 'Donna', 'Warton', 'ACNB Corporation'),
(271, 'Elita', 'Flather', 'Calamos Global Dynamic Income Fund'),
(272, 'Alexine', 'Nutton', 'PIMCO California Municipal Income Fund III'),
(273, 'Shelly', 'Atger', 'Evercore Partners Inc'),
(274, 'Benedicto', 'Parramore', 'China Life Insurance Company Limited'),
(275, 'Emelda', 'Start', 'Hartford Financial Services Group, Inc. (The)'),
(276, 'Leonora', 'Tenby', 'Atento S.A.'),
(277, 'Gillian', 'Gorriessen', 'Boise Cascade, L.L.C.'),
(278, 'Alanna', 'Matias', 'Royal Dutch Shell PLC'),
(279, 'Riane', 'Bidnall', 'Guaranty Federal Bancshares, Inc.'),
(280, 'Murray', 'Hacking', 'Hess Midstream Partners LP'),
(281, 'Audie', 'France', 'Costamare Inc.'),
(282, 'Jessi', 'Fuller', 'Rowan Companies plc'),
(283, 'Gina', 'Guidini', 'Hallmark Financial Services, Inc.'),
(284, 'Steffane', 'Whettleton', 'A-Mark Precious Metals, Inc.'),
(285, 'De', 'Bonnar', 'XL Group Ltd.'),
(286, 'Hetty', 'Brookfield', 'Cass Information Systems, Inc'),
(287, 'Carline', 'Tallowin', 'Cempra, Inc.'),
(288, 'Nataline', 'Fernyhough', 'TAL Education Group'),
(289, 'Ive', 'Newson', 'HV Bancorp, Inc.'),
(290, 'Cecily', 'Aggus', 'First Trust High Income Long Short Fund'),
(291, 'Vivienne', 'Scragg', 'Children\'s Place, Inc. (The)'),
(292, 'Felicio', 'Cristofari', 'LPL Financial Holdings Inc.'),
(293, 'Beniamino', 'Farfolomeev', 'Flagstar Bancorp, Inc.'),
(294, 'Ali', 'Glazier', 'MicroStrategy Incorporated'),
(295, 'Brook', 'Leppingwell', 'HollyFrontier Corporation'),
(296, 'Sena', 'Orrin', 'MVC Capital, Inc.'),
(297, 'Garwin', 'Brothers', 'Harvard Bioscience, Inc.'),
(298, 'Jennee', 'Chilver', 'Spirit Realty Capital, Inc.'),
(299, 'Branden', 'Hassin', 'iKang Healthcare Group, Inc.'),
(300, 'Lee', 'Filipyev', 'iPath US Treasury 10-year Bear ETN'),
(301, 'Abram', 'Bough', 'First Trust NASDAQ-100 Ex-Technology Sector Index Fund'),
(302, 'Sherilyn', 'Jelk', 'Great Lakes Dredge & Dock Corporation'),
(303, 'Austina', 'Musico', 'Tiffany & Co.'),
(304, 'Cher', 'Thomke', 'Hess Corporation'),
(305, 'Kirstyn', 'Limbourne', 'America Movil, S.A.B. de C.V.'),
(306, 'Glyn', 'Heugle', 'Alpine Global Premier Properties Fund'),
(307, 'Giorgio', 'Yu', 'Blackstone GSO Long Short Credit Income Fund'),
(308, 'Steffie', 'Duffus', 'ARC Group Worldwide, Inc.'),
(309, 'Abner', 'Marians', 'Berry Global Group, Inc.'),
(310, 'Gayel', 'Giannazzo', 'National CineMedia, Inc.'),
(311, 'Ulla', 'MacAirt', 'Echo Global Logistics, Inc.'),
(312, 'Maurizio', 'Stairs', 'American Financial Group, Inc.'),
(313, 'Berke', 'Cerith', 'JetBlue Airways Corporation'),
(314, 'Olympie', 'Morphew', 'Domtar Corporation'),
(315, 'Dawna', 'Nollet', 'Colgate-Palmolive Company'),
(316, 'Reuben', 'Lucia', 'Voya International High Dividend Equity Income Fund'),
(317, 'Felisha', 'Gretton', 'Five Oaks Investment Corp.'),
(318, 'Gabriell', 'Werrett', 'Frontline Ltd.'),
(319, 'Patric', 'Dailly', 'Hershey Company (The)'),
(320, 'Ashlan', 'Wattins', 'Quintiles IMS Holdings, Inc.'),
(321, 'Yulma', 'Scurfield', 'Hartford Financial Services Group, Inc. (The)'),
(322, 'Britt', 'Grennan', 'Voya International High Dividend Equity Income Fund'),
(323, 'Heindrick', 'Vlasyuk', 'Five Point Holdings, LLC'),
(324, 'Vernen', 'Hatrey', 'New York Community Bancorp, Inc.'),
(325, 'Lockwood', 'Jedraszczyk', 'Corvus Pharmaceuticals, Inc.'),
(326, 'Coriss', 'Yggo', 'Drive Shack Inc.'),
(327, 'Thomasine', 'Corriea', 'Reinsurance Group of America, Incorporated'),
(328, 'Richard', 'McGlynn', 'Oramed Pharmaceuticals Inc.'),
(329, 'Shanta', 'Dearman', 'Retail Properties of America, Inc.'),
(330, 'Tracy', 'Matushevich', 'Valero Energy Corporation'),
(331, 'Jacenta', 'Beazley', 'Fomento Economico Mexicano S.A.B. de C.V.'),
(332, 'Constantino', 'Orthmann', 'Medpace Holdings, Inc.'),
(333, 'Windy', 'Braffington', 'Pinnacle West Capital Corporation'),
(334, 'Wake', 'Weale', 'Laboratory Corporation of America Holdings'),
(335, 'Noam', 'Regina', 'Medigus Ltd.'),
(336, 'Elysee', 'Brandenburg', 'Anworth Mortgage Asset  Corporation'),
(337, 'Lishe', 'Kisbey', 'Goldman Sachs Group, Inc. (The)'),
(338, 'Gonzales', 'Kevis', 'American Assets Trust, Inc.'),
(339, 'Storm', 'Haworth', 'QUALCOMM Incorporated'),
(340, 'Lorilyn', 'Laroux', 'World Acceptance Corporation'),
(341, 'Hermy', 'Flobert', 'Blackrock MuniYield Investment QualityFund'),
(342, 'Veronique', 'Lavarack', 'Arrow Electronics, Inc.'),
(343, 'Wildon', 'Verheyden', 'Kyocera Corporation'),
(344, 'Tiffani', 'Meharry', 'Retail Properties of America, Inc.'),
(345, 'Beitris', 'Hedau', 'Electrum Special Acquisition Corporation'),
(346, 'Flore', 'McGreary', 'Myriad Genetics, Inc.'),
(347, 'Pincus', 'Abrahmson', 'Atlas Financial Holdings, Inc.'),
(348, 'Elvin', 'Jobke', 'Sphere 3D Corp.'),
(349, 'Milka', 'Minto', 'Noble Corporation'),
(350, 'Yolande', 'Esherwood', 'Capitol Federal Financial, Inc.'),
(351, 'Dunn', 'Chaplin', 'Trinity Industries, Inc.'),
(352, 'Meredithe', 'Shrieve', 'PrivateBancorp, Inc.'),
(353, 'Giuditta', 'Unger', 'HSBC Holdings plc'),
(354, 'Ulises', 'Lymbourne', 'Tetra Technologies, Inc.'),
(355, 'Coop', 'Orwin', 'Electronic Arts Inc.'),
(356, 'Sonnie', 'Filipic', 'Dell Technologies Inc.'),
(357, 'Van', 'Calles', 'Sandy Spring Bancorp, Inc.'),
(358, 'Hershel', 'Izakovitz', 'AZZ Inc.'),
(359, 'Marlowe', 'Borrott', 'Blackrock Core Bond Trust'),
(360, 'Blondie', 'Astell', 'Viking Therapeutics, Inc.'),
(361, 'Wilhelmina', 'Gerler', 'Associated Banc-Corp'),
(362, 'Flory', 'Dunniom', 'Jumei International Holding Limited'),
(363, 'Evangelin', 'Panichelli', 'NVE Corporation'),
(364, 'Brianne', 'Pawlett', 'Gabelli Equity Trust, Inc. (The)'),
(365, 'Almira', 'Hehl', 'BCE, Inc.'),
(366, 'Kally', 'Christin', 'REGENXBIO Inc.'),
(367, 'Ameline', 'Hallgarth', 'Euronav NV'),
(368, 'Nicole', 'Chiles', 'Zoe\'s Kitchen, Inc.'),
(369, 'Devora', 'Fishlee', 'Marathon Petroleum Corporation'),
(370, 'Clo', 'Tithecote', 'Global Blood Therapeutics, Inc.'),
(371, 'Vina', 'Dearth', 'Bel Fuse Inc.'),
(372, 'Evey', 'Gainsborough', 'Natl Westminster Pfd'),
(373, 'Beatrisa', 'Di Domenico', 'Nuveen California Municipal Value Fund, Inc.'),
(374, 'Carolynn', 'Heinecke', 'Franklin Financial Network, Inc.'),
(375, 'Ives', 'Fryman', 'Chimerix, Inc.'),
(376, 'Rodolph', 'Desborough', 'Putnam Premier Income Trust'),
(377, 'Bogart', 'Baty', 'Coupa Software Incorporated'),
(378, 'Harrie', 'Bortolini', 'Biohaven Pharmaceutical Holding Company Ltd.'),
(379, 'Rodolfo', 'Raleston', 'Amtech Systems, Inc.'),
(380, 'Alexandr', 'Arnaudot', 'Customers Bancorp, Inc'),
(381, 'Garland', 'Carragher', 'iStar Financial Inc.'),
(382, 'Bjorn', 'Chapier', 'Qwest Corporation'),
(383, 'Kacie', 'Haworth', 'Allstate Corporation (The)'),
(384, 'Kasey', 'Callis', 'Horace Mann Educators Corporation'),
(385, 'Shir', 'Hayth', 'ServiceMaster Global Holdings, Inc.'),
(386, 'Bettye', 'Perone', 'Royal Caribbean Cruises Ltd.'),
(387, 'Matthiew', 'McNerlin', 'ASV Holdings, Inc.'),
(388, 'Lucienne', 'Minichi', 'Eleven Biotherapeutics, Inc.'),
(389, 'Gloria', 'Chesney', 'Shire plc'),
(390, 'Emalia', 'Yurasov', 'Bright Horizons Family Solutions Inc.'),
(391, 'Hubert', 'Trulock', 'PAR Technology Corporation'),
(392, 'Rahal', 'Fingleton', 'DSW Inc.'),
(393, 'Marcy', 'Bonny', 'First Trust Small Cap Growth AlphaDEX Fund'),
(394, 'Leif', 'Errigo', 'PacWest Bancorp'),
(395, 'Farleigh', 'Chisolm', 'Hunter Maritime Acquisition Corp.'),
(396, 'Zeb', 'Mulliner', 'China Unicom (Hong Kong) Ltd'),
(397, 'Kizzie', 'Pudney', 'Yield10 Bioscience, Inc.'),
(398, 'Huntington', 'Gravatt', 'Vocera Communications, Inc.'),
(399, 'Missy', 'Hazeldine', 'vTv Therapeutics Inc.'),
(400, 'Daniel', 'Cash', 'Scotts Miracle-Gro Company (The)'),
(401, 'Angeli', 'Aslie', 'M&T Bank Corporation'),
(402, 'Raymund', 'Alejo', 'Camping World Holdings, Inc.'),
(403, 'Rafaellle', 'Steely', 'Natural Health Trends Corp.'),
(404, 'Lenora', 'Spinozzi', 'Diebold Nixdorf Incorporated'),
(405, 'Lacee', 'Dickings', 'Sunrun Inc.'),
(406, 'Nan', 'Wyness', 'OHA Investment Corporation'),
(407, 'Reena', 'Mulliner', 'MV Oil Trust'),
(408, 'Ania', 'Lauthian', 'Cardiovascular Systems, Inc.'),
(409, 'Shayne', 'Dow', 'Tetra Technologies, Inc.'),
(410, 'Diena', 'Hernik', 'First Financial Northwest, Inc.'),
(411, 'Eda', 'Gazey', 'CVR Energy Inc.'),
(412, 'Josephine', 'Serjent', 'AptarGroup, Inc.'),
(413, 'Conway', 'Bees', 'Koss Corporation'),
(414, 'Marsha', 'Lineen', 'Micron Technology, Inc.'),
(415, 'Nickolai', 'Abad', 'Dover Motorsports, Inc.'),
(416, 'Gaylord', 'Anshell', 'AMC Networks Inc.'),
(417, 'Adiana', 'Yakebovich', 'Entergy Louisiana, Inc.'),
(418, 'Robinson', 'Stiell', 'Molina Healthcare Inc'),
(419, 'Marylee', 'Heathfield', 'Avista Healthcare Public Acquisition Corp.'),
(420, 'Joellyn', 'Standeven', 'Royal Bancshares of Pennsylvania, Inc.'),
(421, 'Georgina', 'Condy', 'Eaton Vance Short Diversified Income Fund'),
(422, 'Collen', 'Gaskoin', 'Yandex N.V.'),
(423, 'Freda', 'Sidnell', 'Medallion Financial Corp.'),
(424, 'Silvan', 'Fairham', 'Syneron Medical Ltd.'),
(425, 'Gualterio', 'Ciccoloi', 'Taiwan Fund, Inc. (The)'),
(426, 'Mona', 'Cantua', 'DENTSPLY SIRONA Inc.'),
(427, 'Fifine', 'Jirek', 'Vanguard Russell 2000 Value ETF'),
(428, 'Silva', 'Steuhlmeyer', 'China HGS Real Estate, Inc.'),
(429, 'Trev', 'Elcott', 'Chegg, Inc.'),
(430, 'Brad', 'Haney`', 'UNIVERSAL INSURANCE HOLDINGS INC'),
(431, 'Maribel', 'Dennes', 'Korea Electric Power Corporation'),
(432, 'Giffy', 'Hallowes', 'Quanta Services, Inc.'),
(433, 'Jinny', 'Clemas', 'Scudder Strategic Income Trust'),
(434, 'Carree', 'Canniffe', 'Innovative Industrial Properties, Inc.'),
(435, 'Meriel', 'Toghill', 'Cooper Companies, Inc. (The)'),
(436, 'Elena', 'Galier', 'US Ecology, Inc.'),
(437, 'Geri', 'Dopson', 'BlackBerry Limited'),
(438, 'Chery', 'Schulter', 'Nuveen California AMT-Free Quality Municipal Income Fund'),
(439, 'Flora', 'Klement', 'US Ecology, Inc.'),
(440, 'Huntley', 'Collier', 'Turning Point Brands, Inc.'),
(441, 'Barnie', 'Howood', 'Calix, Inc'),
(442, 'Cassey', 'Laverack', 'Tekla Life Sciences Investors'),
(443, 'Fidole', 'Llewellin', 'Silgan Holdings Inc.'),
(444, 'Jabez', 'Mayo', 'NewJersey Resources Corporation'),
(445, 'Mufinella', 'Stidever', 'Community Healthcare Trust Incorporated'),
(446, 'Raphael', 'Hoffman', 'Cesca Therapeutics Inc.'),
(447, 'Kora', 'Shew', 'Realty Income Corporation'),
(448, 'Mag', 'Wordsley', 'Kimco Realty Corporation'),
(449, 'Veronike', 'Ornillos', 'Southern First Bancshares, Inc.'),
(450, 'Salome', 'Fenney', 'Centene Corporation'),
(451, 'Kat', 'Newens', 'Preferred Bank'),
(452, 'Dagmar', 'Kreuzer', 'Rexnord Corporation'),
(453, 'Waring', 'Rao', 'Assured Guaranty Ltd.'),
(454, 'Adore', 'Wedlake', 'Xilinx, Inc.'),
(455, 'Gilberta', 'Blondelle', 'Onvia, Inc.'),
(456, 'Norina', 'Warsap', 'PowerShares S&P SmallCap Financials Portfolio'),
(457, 'Joannes', 'Hillum', 'Fidelity and Guaranty Life'),
(458, 'Danila', 'Pre', 'BanColombia S.A.'),
(459, 'Morgen', 'O\'Flynn', 'WashingtonFirst Bankshares Inc'),
(460, 'Teresa', 'Byron', 'Royal Bank Of Canada'),
(461, 'Jill', 'Danilovitch', 'IPG Photonics Corporation'),
(462, 'Barnabas', 'Bridgland', 'Community Health Systems, Inc.'),
(463, 'Karilynn', 'Biford', 'Capital Product Partners L.P.'),
(464, 'Vivianna', 'Snare', 'VelocityShares VIX Short-Term ETN'),
(465, 'Fey', 'Silber', 'Fifth Street Finance Corp.'),
(466, 'Neely', 'Grimm', 'Brasilagro Cia Brasileira De Propriedades Agricolas'),
(467, 'Ray', 'Napoleon', 'Verint Systems Inc.'),
(468, 'Rhiamon', 'Gostage', 'Cerecor Inc.'),
(469, 'Jarret', 'Ludy', 'Principal Shareholder Yield Index ETF'),
(470, 'Trey', 'Rothwell', 'WESCO International, Inc.'),
(471, 'Pippy', 'Dran', 'Moleculin Biotech, Inc.'),
(472, 'Web', 'Reddle', 'QCR Holdings, Inc.'),
(473, 'Marthe', 'Butterley', 'ChinaCache International Holdings Ltd.'),
(474, 'Philippine', 'Scholard', 'Willbros Group, Inc.'),
(475, 'Yorker', 'Gregorace', 'Independent Bank Corporation'),
(476, 'Mikol', 'Casetti', 'OFG Bancorp'),
(477, 'Harmony', 'Farquarson', 'Amazon.com, Inc.'),
(478, 'Conney', 'Johnigan', 'Boston Scientific Corporation'),
(479, 'Lorenza', 'Arrol', 'Acceleron Pharma Inc.'),
(480, 'Jeane', 'Poskitt', 'Nuveen New York Municipal Value Fund, Inc.'),
(481, 'Clemmy', 'Hackelton', 'HTG Molecular Diagnostics, Inc.'),
(482, 'Jere', 'Blencoe', 'Threshold Pharmaceuticals, Inc.'),
(483, 'Ernest', 'Tune', 'China Natural Resources, Inc.'),
(484, 'Brett', 'Camacho', 'Prudential Public Limited Company'),
(485, 'Saundra', 'Janus', 'Taiwan Semiconductor Manufacturing Company Ltd.'),
(486, 'Addy', 'Nono', 'E.I. du Pont de Nemours and Company'),
(487, 'Aguie', 'Tatford', 'icad inc.'),
(488, 'Lionello', 'Raffeorty', 'Nuveen Tax-Advantaged Dividend Growth Fund'),
(489, 'Guinna', 'Sharrock', 'Tennessee Valley Authority'),
(490, 'Ortensia', 'Boice', 'Orange'),
(491, 'Ronnica', 'Clardge', 'Arch Capital Group Ltd.'),
(492, 'Zaria', 'Esmonde', 'Hemisphere Media Group, Inc.'),
(493, 'Cele', 'MacCrosson', 'Global X Conscious Companies ETF'),
(494, 'Daisy', 'Hempshall', 'Pimco Corporate & Income Opportunity Fund'),
(495, 'Gerda', 'Blankett', 'Amplify Online Retail ETF'),
(496, 'Ceil', 'Gannaway', 'Dr Pepper Snapple Group, Inc'),
(497, 'Roddy', 'Gronauer', 'Deutsche Bank AG'),
(498, 'Mallissa', 'Dunk', 'PowerShares DWA Utilities Momentum Portfolio'),
(499, 'Alic', 'Ettritch', 'Windstream Holdings, Inc.'),
(500, 'Devon', 'Strickler', 'OceanFirst Financial Corp.'),
(501, 'Massimo', 'Carlan', 'BGC Partners, Inc.'),
(502, 'Bonni', 'O\'Brogane', 'Marchex, Inc.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `analista_ti`
--
ALTER TABLE `analista_ti`
  ADD PRIMARY KEY (`id_analista`);

--
-- Indices de la tabla `coordinador_helpdesk`
--
ALTER TABLE `coordinador_helpdesk`
  ADD PRIMARY KEY (`id_coordinador`);

--
-- Indices de la tabla `epica`
--
ALTER TABLE `epica`
  ADD PRIMARY KEY (`id_epica`),
  ADD KEY `id_propuesta` (`id_propuesta`);

--
-- Indices de la tabla `historia_usuario`
--
ALTER TABLE `historia_usuario`
  ADD PRIMARY KEY (`id_historia`),
  ADD KEY `id_propuesta` (`id_propuesta`);

--
-- Indices de la tabla `jefe_area`
--
ALTER TABLE `jefe_area`
  ADD PRIMARY KEY (`id_jefe`);

--
-- Indices de la tabla `propuesta_solucion`
--
ALTER TABLE `propuesta_solucion`
  ADD PRIMARY KEY (`id_propuesta`),
  ADD KEY `id_requerimiento` (`id_requerimiento`),
  ADD KEY `id_jefe` (`id_jefe`);

--
-- Indices de la tabla `requerimiento`
--
ALTER TABLE `requerimiento`
  ADD PRIMARY KEY (`id_requerimiento`),
  ADD KEY `id_solicitante` (`id_solicitante`),
  ADD KEY `id_coordinador` (`id_coordinador`),
  ADD KEY `id_analista` (`id_analista`);

--
-- Indices de la tabla `solicitante`
--
ALTER TABLE `solicitante`
  ADD PRIMARY KEY (`id_solicitante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `analista_ti`
--
ALTER TABLE `analista_ti`
  MODIFY `id_analista` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT de la tabla `coordinador_helpdesk`
--
ALTER TABLE `coordinador_helpdesk`
  MODIFY `id_coordinador` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT de la tabla `epica`
--
ALTER TABLE `epica`
  MODIFY `id_epica` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historia_usuario`
--
ALTER TABLE `historia_usuario`
  MODIFY `id_historia` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jefe_area`
--
ALTER TABLE `jefe_area`
  MODIFY `id_jefe` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `propuesta_solucion`
--
ALTER TABLE `propuesta_solucion`
  MODIFY `id_propuesta` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `requerimiento`
--
ALTER TABLE `requerimiento`
  MODIFY `id_requerimiento` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `solicitante`
--
ALTER TABLE `solicitante`
  MODIFY `id_solicitante` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `epica`
--
ALTER TABLE `epica`
  ADD CONSTRAINT `epica_ibfk_1` FOREIGN KEY (`id_propuesta`) REFERENCES `propuesta_solucion` (`id_propuesta`);

--
-- Filtros para la tabla `historia_usuario`
--
ALTER TABLE `historia_usuario`
  ADD CONSTRAINT `historia_usuario_ibfk_1` FOREIGN KEY (`id_propuesta`) REFERENCES `propuesta_solucion` (`id_propuesta`);

--
-- Filtros para la tabla `propuesta_solucion`
--
ALTER TABLE `propuesta_solucion`
  ADD CONSTRAINT `propuesta_solucion_ibfk_1` FOREIGN KEY (`id_requerimiento`) REFERENCES `requerimiento` (`id_requerimiento`),
  ADD CONSTRAINT `propuesta_solucion_ibfk_2` FOREIGN KEY (`id_jefe`) REFERENCES `jefe_area` (`id_jefe`);

--
-- Filtros para la tabla `requerimiento`
--
ALTER TABLE `requerimiento`
  ADD CONSTRAINT `requerimiento_ibfk_1` FOREIGN KEY (`id_solicitante`) REFERENCES `solicitante` (`id_solicitante`),
  ADD CONSTRAINT `requerimiento_ibfk_2` FOREIGN KEY (`id_coordinador`) REFERENCES `coordinador_helpdesk` (`id_coordinador`),
  ADD CONSTRAINT `requerimiento_ibfk_3` FOREIGN KEY (`id_analista`) REFERENCES `analista_ti` (`id_analista`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
