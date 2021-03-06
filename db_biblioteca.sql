-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.21-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para db_biblioteca
CREATE DATABASE IF NOT EXISTS `db_biblioteca` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_biblioteca`;

-- Volcando estructura para tabla db_biblioteca.autor
CREATE TABLE IF NOT EXISTS `autor` (
  `id_autor` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `genero_literario` varchar(100) NOT NULL,
  `nacionalidad` varchar(100) NOT NULL,
  `estado` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_biblioteca.autor: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` (`id_autor`, `nombre`, `genero_literario`, `nacionalidad`, `estado`) VALUES
	(1, '	Gabriel José de la Concordia García Márquez	    ', 'Novela Cuento						', 'Colombia	', b'1'),
	(2, '	Ricardo Eliécer Neftalí Reyes Basoalto		    ', 'Poesia							', 'Chile		', b'1'),
	(3, '	Jorge Francisco Isidoro Luis Borges Acevedo	    ', 'Poesia Cuento Ensayo	    		', 'Argentina	', b'1'),
	(4, '	Jorge Mario Pedro Vargas Llosa				    ', 'Novela Cuento Ensayo Poesia		', 'Perú		', b'1'),
	(5, '	Mario Benedetti Farrugia				        ', 'Cuento Drama Novela Poesia Ensayo ', 'Uruguay	', b'1'),
	(6, '	Julio Florencio Cortázar				        ', 'Novela Cuento Poesia	    		', 'Belgica	', b'1'),
	(7, '	Juan Nepomuceno Carlos Pérez Rulfo Vizcaíno	    ', 'Cuento Novela						', 'Mexico		', b'1'),
	(8, '	Manuel Ricardo Palma Soriano				    ', 'Poesia Novela Drama Ensayo		', 'Perú		', b'1'),
	(9, '	José María Arguedas Altamirano				    ', 'Novela Cuento						', 'Perú		', b'1'),
	(10, '	Julio Ramón Ribeyro Zúñiga				        ', 'Novela Cuento						', 'Perú		', b'1'),
	(11, '	Ernesto Roque Sabato				            ', 'Novela Ensayo						', 'Argentina	', b'1'),
	(12, '	Carlos Fuentes Macías				            ', 'Novela Cuento Ensayo 	    		', 'Panama		', b'1'),
	(13, '	Alejo Carpentier y Valmont				        ', 'Novela Cuento Ensayo	    		', 'Suiza		', b'1'),
	(14, '	Octavio Irineo Paz Lozano				        ', 'Poesia Ensayo						', 'Mexico		', b'1'),
	(15, '	Adolfo Bioy Casares				                ', 'Novela Cuento Ensayo	    		', 'Argentino	', b'1'),
	(16, '	Osvaldo Soriano				                    ', 'Novela Cuento						', 'Argentino	', b'1'),
	(17, '	Rómulo Ángel del Monte Carmelo Gallegos Freire	', 'Novela Cuento						', 'Venezolano	', b'1'),
	(18, '	Vicente García Huidobro Fernández				', 'Poesia							', 'Chile		', b'1'),
	(19, '	Roberto Bolaño Ávalos				            ', 'Poesia Novela Cuento Ensayo		', 'Chile		', b'1'),
	(20, '	César Abraham Vallejo Mendoza				    ', 'Poesia Narrativa Ensayo	    	', 'Perú		', b'1');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;

-- Volcando estructura para tabla db_biblioteca.libro
CREATE TABLE IF NOT EXISTS `libro` (
  `id_libro` int(3) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `autor` int(3) NOT NULL,
  `anio` date NOT NULL,
  `editorial` varchar(100) NOT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_libro`),
  KEY `autor` (`autor`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla db_biblioteca.libro: ~268 rows (aproximadamente)
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` (`id_libro`, `titulo`, `autor`, `anio`, `editorial`, `estado`) VALUES
	(1, '	La hojarasca																		', 1, '1955-01-01', '	Abc didactica					', 1),
	(2, '	El coronel no tiene quien le escriba												', 1, '1961-01-01', '	Archivo general de la nacion	', 1),
	(3, '	La mala hora																		', 1, '1962-01-01', '	Bibliocombo didactico			', 1),
	(4, '	Cien años de soledad																', 1, '1967-01-01', '	Realidad colombiana 			', 1),
	(5, '	La increíble y triste historia de la cándida Eréndira y de su abuela desalmada		', 1, '1972-01-01', '	Abc didactica					', 1),
	(6, '	El otoño del patriarca																', 1, '1975-01-01', '	Archivo general de la nacion	', 1),
	(7, '	Crónica de una muerte anunciada														', 1, '1981-01-01', '	Bibliocombo didactico			', 1),
	(8, '	El amor en los tiempos del cólera													', 1, '1985-01-01', '	Realidad colombiana 			', 1),
	(9, '	El general en su laberinto															', 1, '1989-01-01', '	Abc didactica					', 1),
	(10, '	Del amor y otros demonios															', 1, '1994-01-01', '	Archivo general de la nacion	', 1),
	(11, '	Memoria de mis putas tristes														', 1, '2004-01-01', '	Bibliocombo didactico			', 1),
	(12, '	Crepusculario																		', 2, '1923-01-01', '	Claridad						', 1),
	(13, '	Tentativa del hombre infinito														', 2, '1926-01-01', '	Nascimiento						', 1),
	(14, '	El hondero entusiasta. Santiago, Empresa Letras, 1933.								', 2, '1933-01-01', '	Letras							', 1),
	(15, '	El habitante y su esperanza															', 2, '1926-01-01', '	Nascimiento						', 1),
	(16, '	Residencia en la Tierra 															', 2, '1935-01-01', '	Del arbol						', 1),
	(17, '	España en el corazón																', 2, '1937-01-01', '	Ercilla							', 1),
	(18, '	Nuevo canto de amor a Stalingrado													', 2, '1943-01-01', '	Claridad						', 1),
	(19, '	Canto general																		', 2, '1950-01-01', '	Losada							', 1),
	(20, '	Estravagario																		', 2, '1958-01-01', '	Nacional quimantú				', 1),
	(21, '	La espada encendida																	', 2, '1970-01-01', '	Losada							', 1),
	(22, '	Las piedras del cielo																', 2, '1970-01-01', '	Universitaria					', 1),
	(23, '	Fervor de Buenos Aires																', 3, '1923-01-01', '	Bosque 							', 1),
	(24, '	Luna de enfrente 																	', 3, '1925-01-01', '	Claridad						', 1),
	(25, '	Cuaderno San Martín 																', 3, '1929-01-01', '	Argenta							', 1),
	(26, '	El hacedor																			', 3, '1960-01-01', '	Mansalva 						', 1),
	(27, '	El otro, el mismo																	', 3, '1964-01-01', '	Claridad						', 1),
	(28, '	Para las seis cuerdas 																', 3, '1965-01-01', '	Bosque 							', 1),
	(29, '	Elogio de la sombra 																', 3, '1969-01-01', '	Claridad						', 1),
	(30, '	El oro de los tigres																', 3, '1972-01-01', '	Argenta							', 1),
	(31, '	 La rosa profunda																	', 3, '1975-01-01', '	Mansalva 						', 1),
	(32, '	 La moneda de hierro																', 3, '1976-01-01', '	Claridad						', 1),
	(33, '	 Historia de la noche																', 3, '1977-01-01', '	Bosque 							', 1),
	(34, '	La cifra																			', 3, '1981-01-01', '	Claridad						', 1),
	(35, '	Los conjurados																		', 3, '1985-01-01', '	Argenta							', 1),
	(36, '	La ciudad y los perros																', 4, '1963-01-01', '	Seix barral						', 1),
	(37, '	La casa verde																		', 4, '1966-01-01', '	Seix barral						', 1),
	(38, '	Conversación en La Catedral															', 4, '1969-01-01', '	Seix barral						', 1),
	(39, '	Pantaleón y las visitadoras															', 4, '1973-01-01', '	Seix barral						', 1),
	(40, '	La tía Julia y el escribidor														', 4, '1977-01-01', '	Seix barral						', 1),
	(41, '	La guerra del fin del mundo															', 4, '1981-01-01', '	Seix barral						', 1),
	(42, '	Historia de Mayta																	', 4, '1984-01-01', '	Seix barral						', 1),
	(43, '	¿Quién mató a Palomino Molero?														', 4, '1986-01-01', '	Seix barral						', 1),
	(44, '	El hablador																			', 4, '1987-01-01', '	Seix barral						', 1),
	(45, '	Elogio de la madrastra																', 4, '1988-01-01', '	Tusquets						', 1),
	(46, '	Lituma en los Andes 																', 4, '1993-01-01', '	Planeta							', 1),
	(47, '	Los cuadernos de don Rigoberto 														', 4, '1993-01-01', '	Alfaguara						', 1),
	(48, '	La fiesta del Chivo 																', 4, '1997-01-01', '	Alfaguara						', 1),
	(49, '	El Paraíso en la otra esquina														', 4, '2000-01-01', '	Alfaguara						', 1),
	(50, '	Travesuras de la niña mala 															', 4, '2003-01-01', '	Alfaguara						', 1),
	(51, '	El sueño del celta 																	', 4, '2006-01-01', '	Alfaguara						', 1),
	(52, '	El héroe discreto 																	', 4, '2010-01-01', '	Alfaguara						', 1),
	(53, '	Cinco esquinas 																		', 4, '2013-01-01', '	Alfaguara						', 1),
	(54, '	Esta mañana																			', 5, '1949-01-01', '	Talia							', 1),
	(55, '	Ustedes, por ejemplo 																', 5, '1953-01-01', '	Galerna							', 1),
	(56, '	El reportaje 																		', 5, '1958-01-01', '	Marcha							', 1),
	(57, '	Montevideanos 																		', 5, '1959-01-01', '	Trilce							', 1),
	(58, '	Ida y vuelta 																		', 5, '1963-01-01', '	Talia							', 1),
	(59, '	Datos para el viudo																	', 5, '1967-01-01', '	Galerna							', 1),
	(60, '	La muerte y otras sorpresas															', 5, '1968-01-01', '	Talia							', 1),
	(61, '	Con y sin nostalgia																	', 5, '1977-01-01', '	Galerna							', 1),
	(62, '	Cuentos, antología																	', 5, '1982-01-01', '	Marcha							', 1),
	(63, '	Geografías																			', 5, '1984-01-01', '	Trilce							', 1),
	(64, '	Cuentos completos																	', 5, '1986-01-01', '	Talia							', 1),
	(65, '	Recuerdos olvidados																	', 5, '1988-01-01', '	Trilce							', 1),
	(66, '	"Despistes y franquezas" 															', 5, '1989-01-01', '	Talia							', 1),
	(67, '	El césped y otros relatos															', 5, '1993-01-01', '	Galerna							', 1),
	(68, '	Buzón de tiempo																		', 5, '1999-01-01', '	Marcha							', 1),
	(69, '	La sirena viuda																		', 5, '1999-01-01', '	Trilce							', 1),
	(70, '	El porvenir de mi pasado															', 5, '2003-01-01', '	Talia							', 1),
	(71, '	Historias de París																	', 5, '2007-01-01', '	Galerna							', 1),
	(72, '	Los premios																			', 6, '1960-01-01', '	Meteora							', 1),
	(73, '	Rayuela																				', 6, '1963-01-01', '	Amarante						', 1),
	(74, '	62 Modelo para armar																', 6, '1968-01-01', '	Anagrama						', 1),
	(75, '	Libro de Manuel																		', 6, '1973-01-01', '	Meteora							', 1),
	(76, '	Divertimento 																		', 6, '1986-01-01', '	Amarante						', 1),
	(77, '	El examen																			', 6, '1986-01-01', '	Anagrama						', 1),
	(78, '	Diario de Andrés Favan																', 6, '1995-01-01', '	Meteora							', 1),
	(79, '	Bestiario																			', 6, '1951-01-01', '	Amarante						', 1),
	(80, '	Final del juego																		', 6, '1956-01-01', '	Anagrama						', 1),
	(81, '	Las armas secretas																	', 6, '1959-01-01', '	Meteora							', 1),
	(82, '	Todos los fuegos el fuego															', 6, '1966-01-01', '	Amarante						', 1),
	(83, '	Octaedro																			', 6, '1974-01-01', '	Anagrama						', 1),
	(84, '	Alguien que anda por ahí															', 6, '1977-01-01', '	Meteora							', 1),
	(85, '	Queremos tanto a Glenda																', 6, '1980-01-01', '	Amarante						', 1),
	(86, '	Deshoras																			', 6, '1982-01-01', '	Anagrama						', 1),
	(87, '	La otra orilla 																		', 6, '1994-01-01', '	Meteora							', 1),
	(88, '	La vida no es muy seria en sus cosas 												', 7, '1945-01-01', '	Antilope						', 1),
	(89, '	El Llano en llamas 																	', 7, '1953-01-01', '	Dieresis						', 1),
	(90, '	Un pedazo de noche, único fragmento que quedó de la novela El hijo del desaliento 	', 7, '1959-01-01', '	Tumbona							', 1),
	(91, '	Pedro Páramo 																		', 7, '1955-01-01', '	Antilope						', 1),
	(92, '	El gallo de oro 																	', 7, '1980-01-01', '	Dieresis						', 1),
	(93, '	El hijo del sol																		', 8, '1849-01-01', '	Andorra							', 1),
	(94, '	Consolación																			', 8, '1851-01-01', '	Iberoamericana					', 1),
	(95, '	Rodil, drama en tres actos															', 8, '1852-01-01', '	Atalaya							', 1),
	(96, '	La he biográficos																	', 8, '1854-01-01', '	Biblioteca nacional del perú	', 1),
	(97, '	El santo de Panchita, sainete														', 8, '1859-01-01', '	Casa de la cultura del perú		', 1),
	(98, '	Anales de la Inquisición de Lima													', 8, '1863-01-01', '	Colmena							', 1),
	(99, '	Congreso constituyente																', 8, '1867-01-01', '	Desco							', 1),
	(100, '	Armonías. Libro de un desterrado													', 8, '1895-01-01', '	Rodhas							', 1),
	(101, '	Lira americana																		', 8, '1895-01-01', '	Magreb							', 1),
	(102, '	Yawar fiesta																		', 9, '1941-01-01', '	Latinoamericana					', 1),
	(103, '	Diamantes y pedernales																', 9, '1954-01-01', '	Andorra							', 1),
	(104, '	Los ríos profundos																	', 9, '1958-01-01', '	Iberoamericana					', 1),
	(105, '	Todas las sangres																	', 9, '1964-01-01', '	Atalaya							', 1),
	(106, '	El zorro de arriba y el zorro de abajo 												', 9, '1971-01-01', '	Biblioteca nacional del perú	', 1),
	(107, '	Los gallinazos sin plumas. 															', 10, '1955-01-01', '	Casa de la cultura del perú		', 1),
	(108, '	Cuentos de circunstancias. 															', 10, '1958-01-01', '	Colmena							', 1),
	(109, '	Las botellas y los hombres. 														', 10, '1964-01-01', '	Desco							', 1),
	(110, '	Tres historias sublevantes. 														', 10, '1964-01-01', '	Rodhas							', 1),
	(111, '	Los cautivos. 																		', 10, '1972-01-01', '	Magreb							', 1),
	(112, '	El próximo mes me nivelo. 															', 10, '1972-01-01', '	Latinoamericana					', 1),
	(113, '	La palabra del mudo. 																', 10, '1974-01-01', '	Andorra							', 1),
	(114, '	Silvio en El Rosedal. 																', 10, '1977-01-01', '	Iberoamericana					', 1),
	(115, '	Sólo para fumadores. 																', 10, '1987-01-01', '	Atalaya							', 1),
	(116, '	Relatos santacrucinos. 																', 10, '1992-01-01', '	Biblioteca nacional del perú	', 1),
	(117, '	Uno y el Universo																	', 11, '1945-01-01', '	Bosque 							', 1),
	(118, '	Hombres y engranajes																', 11, '1951-01-01', '	Claridad						', 1),
	(119, '	Heterodoxia																			', 11, '1952-01-01', '	Argenta							', 1),
	(120, '	El otro rostro del peronismo														', 11, '1956-01-01', '	Mansalva 						', 1),
	(121, '	El caso Sábato: torturas y libertad de prensa. Carta abierta al general Aramburu	', 11, '1956-01-01', '	Claridad						', 1),
	(122, '	El escritor y sus fantasmas															', 11, '1963-01-01', '	Bosque 							', 1),
	(123, '	Tango, discusión y clave															', 11, '1963-01-01', '	Claridad						', 1),
	(124, '	Pedro Henríquez Ureña																', 11, '1967-01-01', '	Argenta							', 1),
	(125, '	Tres aproximaciones a la literatura													', 11, '1968-01-01', '	Mansalva 						', 1),
	(126, '	Eduardo Falú																		', 11, '1974-01-01', '	Claridad						', 1),
	(127, '	Carta a un joven escritor															', 11, '1975-01-01', '	Bosque 							', 1),
	(128, '	Diálogos con Jorge Luis Borges														', 11, '1976-01-01', '	Claridad						', 1),
	(129, '	La cultura en la encrucijada nacional												', 11, '1976-01-01', '	Argenta							', 1),
	(130, '	Apologías y rechazos																', 11, '1979-01-01', '	Mansalva 						', 1),
	(131, '	Los libros y su misión en la liberación e integración de la América Latina			', 11, '1979-01-01', '	Claridad						', 1),
	(132, '	Nunca más: informe de la Comisión Nacional sobre la Desaparición de Personas 		', 11, '1985-01-01', '	Bosque 							', 1),
	(133, '	Entre la letra y la sangre															', 11, '1988-01-01', '	Claridad						', 1),
	(134, '	Querido y remoto muchacho															', 11, '1990-01-01', '	Argenta							', 1),
	(135, '	Antes del fin 																		', 11, '1998-01-01', '	Mansalva 						', 1),
	(136, '	La resistencia																		', 11, '2000-01-01', '	Claridad						', 1),
	(137, '	España en los diarios de mi vejez													', 11, '2004-01-01', '	Bosque 							', 1),
	(138, '	La región más transparente															', 12, '1958-01-01', '	Balboa							', 1),
	(139, '	Las buenas conciencias																', 12, '1959-01-01', '	Cultural panameña				', 1),
	(140, '	La muerte de Artemio Cruz															', 12, '1962-01-01', '	Susaeta							', 1),
	(141, '	Aura, Ediciones Era, México, 1962													', 12, '1962-01-01', '	Barrios y barrios				', 1),
	(142, '	Zona Sagrada																		', 12, '1967-01-01', '	Balboa							', 1),
	(143, '	Cambio de piel																		', 12, '1967-01-01', '	Cultural panameña				', 1),
	(144, '	Cumpleaños, Serie del volador														', 12, '1969-01-01', '	Susaeta							', 1),
	(145, '	Terra nostra, Joaquín Mortiz														', 12, '1975-01-01', '	Barrios y barrios				', 1),
	(146, '	La cabeza de la hidra																', 12, '1978-01-01', '	Balboa							', 1),
	(147, '	Una familia lejana																	', 12, '1980-01-01', '	Cultural panameña				', 1),
	(148, '	Gringo viejo																		', 12, '1985-01-01', '	Susaeta							', 1),
	(149, '	Cristóbal Nonato																	', 12, '1987-01-01', '	Barrios y barrios				', 1),
	(150, '	Constancia, La desdichada, El prisionero de Las Lomas, Viva mi fama y Gente de razón', 12, '1995-01-01', '	Balboa							', 1),
	(151, '	La campaña																			', 12, '2002-01-01', '	Cultural panameña				', 1),
	(152, '	Diana o la cazadora solitaria														', 12, '1994-01-01', '	Susaeta							', 1),
	(153, '	Los años con Laura Díaz 															', 12, '1999-01-01', '	Barrios y barrios				', 1),
	(154, '	Instinto de Inez, Alfaguara															', 12, '2001-01-01', '	Balboa							', 1),
	(155, '	La silla del águila																	', 12, '2003-01-01', '	Cultural panameña				', 1),
	(156, '	La voluntad y la fortuna															', 12, '2008-01-01', '	Susaeta							', 1),
	(157, '	Adán en Edén																		', 12, '2009-01-01', '	Barrios y barrios				', 1),
	(158, '	Federico en su balcón																', 12, '2012-01-01', '	Balboa							', 1),
	(159, '	¡Écue-Yamba-O! 																		', 13, '1933-01-01', '	Editions paquet					', 1),
	(160, '	El reino de este mundo 																', 13, '1949-01-01', '	Unionsverlag					', 1),
	(161, '	Los pasos perdidos 																	', 13, '1953-01-01', '	Plaisir de lire					', 1),
	(162, '	El acoso 																			', 13, '1956-01-01', '	Realites sociales				', 1),
	(163, '	El siglo de las luces 																', 13, '1962-01-01', '	Daimon verlag ag				', 1),
	(164, '	Concierto barroco 																	', 13, '1974-01-01', '	Editions paquet					', 1),
	(165, '	El recurso del método 																', 13, '1974-01-01', '	Unionsverlag					', 1),
	(166, '	La consagración de la primavera 													', 13, '1978-01-01', '	Plaisir de lire					', 1),
	(167, '	El arpa y la sombra 																', 13, '1979-01-01', '	Realites sociales				', 1),
	(168, '	"El sacrificio" 																	', 13, '1923-01-01', '	Daimon verlag ag				', 1),
	(169, '	"Histoire de lunes" 																', 13, '1933-01-01', '	Editions paquet					', 1),
	(170, '	"Viaje a la semilla" 																', 13, '1944-01-01', '	Unionsverlag					', 1),
	(171, '	"Oficio de tinieblas" 																', 13, '1944-01-01', '	Plaisir de lire					', 1),
	(172, '	"Los fugitivos" 																	', 13, '1946-01-01', '	Realites sociales				', 1),
	(173, '	Piedra de sol																		', 14, '1957-01-01', '	Antilope						', 1),
	(174, '	La estación violenta																', 14, '1958-01-01', '	Dieresis						', 1),
	(175, '	Libertad bajo palabra																', 14, '1960-01-01', '	Tumbona							', 1),
	(176, '	Salamandra 																			', 14, '1962-01-01', '	Antilope						', 1),
	(177, '	Viento entero																		', 14, '1965-01-01', '	Dieresis						', 1),
	(178, '	Blanco, escrito en tres columnas; permite diferentes lecturas						', 14, '1967-01-01', '	Antilope						', 1),
	(179, '	Discos visuales, con Vicente Rojo													', 14, '1968-01-01', '	Dieresis						', 1),
	(180, '	Ladera este 																		', 14, '1969-01-01', '	Tumbona							', 1),
	(181, '	Topoemas																			', 14, '1971-01-01', '	Antilope						', 1),
	(182, '	Renga, con Jacques Roubaud, Edoardo Sanguineti y Charles Tomlinson					', 14, '1972-01-01', '	Dieresis						', 1),
	(183, '	El mono gramático 																	', 14, '1974-01-01', '	Antilope						', 1),
	(184, '	Pasado en claro																		', 14, '1975-01-01', '	Dieresis						', 1),
	(185, '	Vuelta 																				', 14, '1976-01-01', '	Tumbona							', 1),
	(186, '	Air Born/Hijos del aire, con Charles Tomlinson										', 14, '1979-01-01', '	Antilope						', 1),
	(187, '	Poemas 																				', 14, '1979-01-01', '	Dieresis						', 1),
	(188, '	Árbol adentro																		', 14, '1987-01-01', '	Antilope						', 1),
	(189, '	Obra poética 																		', 14, '1990-01-01', '	Dieresis						', 1),
	(190, '	Figuras y figuraciones																', 14, '1990-01-01', '	Tumbona							', 1),
	(191, '	La invención de Morel 																', 15, '1940-01-01', '	Bosque 							', 1),
	(192, '	Plan de evasión 																	', 15, '1945-01-01', '	Claridad						', 1),
	(193, '	El sueño de los héroes 																', 15, '1954-01-01', '	Argenta							', 1),
	(194, '	Diario de la guerra del cerdo 														', 15, '1969-01-01', '	Mansalva 						', 1),
	(195, '	Dormir al sol 																		', 15, '1973-01-01', '	Bosque 							', 1),
	(196, '	La aventura de un fotógrafo en La Plata 											', 15, '1985-01-01', '	Claridad						', 1),
	(197, '	Un campeón desparejo 																', 15, '1993-01-01', '	Argenta							', 1),
	(198, '	De un mundo a otro 																	', 15, '1998-01-01', '	Mansalva 						', 1),
	(199, '	La trama celeste 																	', 15, '1948-01-01', '	Bosque 							', 1),
	(200, '	Historia prodigiosa 																', 15, '1956-01-01', '	Claridad						', 1),
	(201, '	Guirnalda con amores 																', 15, '1959-01-01', '	Argenta							', 1),
	(202, '	El lado de la sombra 																', 15, '1962-01-01', '	Mansalva 						', 1),
	(203, '	El gran serafín 																	', 15, '1967-01-01', '	Bosque 							', 1),
	(204, '	El héroe de las mujeres 															', 15, '1978-01-01', '	Claridad						', 1),
	(205, '	Historias desaforadas 																', 15, '1986-01-01', '	Argenta							', 1),
	(206, '	Una muñeca rusa 																	', 15, '1991-01-01', '	Mansalva 						', 1),
	(207, '	Una magia modesta 																	', 15, '1997-01-01', '	Bosque 							', 1),
	(208, '	Triste, solitario y final 															', 16, '1973-01-01', '	Claridad						', 1),
	(209, '	No habrá más penas ni olvido 														', 16, '1978-01-01', '	Argenta							', 1),
	(210, '	Cuarteles de invierno 																', 16, '1980-01-01', '	Mansalva 						', 1),
	(211, '	A sus plantas rendido un león 														', 16, '1986-01-01', '	Bosque 							', 1),
	(212, '	Una sombra ya pronto serás 															', 16, '1990-01-01', '	Claridad						', 1),
	(213, '	El ojo de la Patria 																', 16, '1992-01-01', '	Argenta							', 1),
	(214, '	La hora sin sombra 																	', 16, '1995-01-01', '	Mansalva 						', 1),
	(215, '	Artistas, locos y criminales 														', 16, '1984-01-01', '	Bosque 							', 1),
	(216, '	Rebeldes, soñadores y fugitivos 													', 16, '1988-01-01', '	Claridad						', 1),
	(217, '	El Negro de París 																	', 16, '1989-01-01', '	Argenta							', 1),
	(218, '	Cuentos de los años felices 														', 16, '1993-01-01', '	Mansalva 						', 1),
	(219, '	Piratas, fantasmas y dinosaurios 													', 16, '1996-01-01', '	Bosque 							', 1),
	(220, '	Arqueros, ilusionistas y goleadores 												', 16, '1998-01-01', '	Claridad						', 1),
	(221, '	Cómicos, tiranos y leyendas 														', 16, '2012-01-01', '	Argenta							', 1),
	(222, '	Reinaldo Solar																		', 17, '1920-01-01', '	San pablo						', 1),
	(223, '	La trepadora																		', 17, '1925-01-01', '	Moore							', 1),
	(224, '	Doña Bárbara																		', 17, '1929-01-01', '	Emprendedor						', 1),
	(225, '	Cantaclaro																			', 17, '1934-01-01', '	La cueva						', 1),
	(226, '	Canaima																				', 17, '1935-01-01', '	San pablo						', 1),
	(227, '	Pobre negro																			', 17, '1937-01-01', '	Moore							', 1),
	(228, '	El forastero																		', 17, '1942-01-01', '	Emprendedor						', 1),
	(229, '	Sobre la misma tierra																', 17, '1943-01-01', '	La cueva						', 1),
	(230, '	La brizna de paja en el viento														', 17, '1952-01-01', '	San pablo						', 1),
	(231, '	El último patriota																	', 17, '1957-01-01', '	Moore							', 1),
	(232, '	Tierra bajo los pies 																', 17, '1973-01-01', '	Emprendedor						', 1),
	(233, '	Vientos contrarios																	', 18, '1923-01-01', '	Claridad						', 1),
	(234, '	Mío Cid Campeador																	', 18, '1929-01-01', '	Nascimiento						', 1),
	(235, '	Temblor de cielo																	', 18, '1931-01-01', '	Letras							', 1),
	(236, '	Altazor o el viaje en paracaídas													', 18, '1931-01-01', '	Nascimiento						', 1),
	(237, '	Tremblement de ciel																	', 18, '1932-01-01', '	Del arbol						', 1),
	(238, '	Gilles de Raíz																		', 18, '1932-01-01', '	Ercilla							', 1),
	(239, '	La próxima																			', 18, '1934-01-01', '	Claridad						', 1),
	(240, '	Papá o el diario de Alicia Mir														', 18, '1934-01-01', '	Losada							', 1),
	(241, '	Cagliostro																			', 18, '1934-01-01', '	Nacional quimantú				', 1),
	(242, '	En la luna																			', 18, '1934-01-01', '	Losada							', 1),
	(243, '	Tres inmensas novelas																', 18, '1935-01-01', '	Universitaria					', 1),
	(244, '	Sátiro o el poder de las palabras													', 18, '1935-01-01', '	Claridad						', 1),
	(245, '	Ver y palpar																		', 18, '1939-01-01', '	Nascimiento						', 1),
	(246, '	El ciudadano del olvido																', 18, '1941-01-01', '	Letras							', 1),
	(247, '	Consejos de un discípulo de Morrison a un fanático de Joyce 						', 19, '1984-01-01', '	Nascimiento						', 1),
	(248, '	La senda de los elefantes 															', 19, '1984-01-01', '	Del arbol						', 1),
	(249, '	La pista de hielo																	', 19, '1993-01-01', '	Ercilla							', 1),
	(250, '	La literatura nazi en América														', 19, '1996-01-01', '	Claridad						', 1),
	(251, '	Estrella distante																	', 19, '1996-01-01', '	Losada							', 1),
	(252, '	Los detectives salvajes																', 19, '1998-01-01', '	Nacional quimantú				', 1),
	(253, '	Amuleto																				', 19, '1999-01-01', '	Losada							', 1),
	(254, '	Nocturno de Chile																	', 19, '2000-01-01', '	Universitaria					', 1),
	(255, '	Amberes																				', 19, '2002-01-01', '	Claridad						', 1),
	(256, '	Una novelita lumpen																	', 19, '2002-01-01', '	Nascimiento						', 1),
	(257, '	2666																				', 19, '2004-01-01', '	Letras							', 1),
	(258, '	El Tercer Reich																		', 19, '2010-01-01', '	Nascimiento						', 1),
	(259, '	Los sinsabores del verdadero policía												', 19, '2011-01-01', '	Del arbol						', 1),
	(260, '	El espíritu de la ciencia-ficción													', 19, '2016-01-01', '	Ercilla							', 1),
	(261, '	Sepulcros de vaqueros																', 19, '2017-01-01', '	Claridad						', 1),
	(262, '	Escalas melografiadas 																', 20, '1923-01-01', '	Iberoamericana					', 1),
	(263, '	Fabla salvaje 																		', 20, '1923-01-01', '	Atalaya							', 1),
	(264, '	Más allá de la vida y de la muerte 													', 20, '1923-01-01', '	Biblioteca nacional del perú	', 1),
	(265, '	Los caynas 																			', 20, '1928-01-01', '	Casa de la cultura del perú		', 1),
	(266, '	Hacia el reino de los Sciris 														', 20, '1928-01-01', '	Colmena							', 1),
	(267, '	Hacia 1930																			', 20, '1930-01-01', '	Desco							', 1),
	(268, '	El tungsteno 																		', 20, '1931-01-01', '	Magreb							', 1);
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
