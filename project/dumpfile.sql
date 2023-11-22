-- MariaDB dump 10.19-11.3.0-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: board
-- ------------------------------------------------------
-- Server version	11.3.0-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `address` varchar(255) DEFAULT NULL,
  `age` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `test_idex` (`name`),
  KEY `test2_idex` (`name`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES
(1,'kim',NULL,NULL,'user',NULL,10),
(2,'hong',NULL,NULL,'admin',NULL,2),
(3,'woo',NULL,NULL,'user',NULL,100),
(4,'park',NULL,NULL,'user',NULL,255),
(5,'test','test@naver,com',NULL,'user',NULL,79),
(6,'cho','abc@naver.com',NULL,'user',NULL,2),
(7,'lee',NULL,NULL,'user',NULL,3),
(8,'a','happy story',NULL,'user',NULL,NULL),
(51,'hello word0',NULL,NULL,'user',NULL,0),
(52,'hello word1',NULL,NULL,'user',NULL,1),
(53,'hello word2',NULL,NULL,'user',NULL,2),
(54,'hello word3',NULL,NULL,'user',NULL,3),
(55,'hello word4',NULL,NULL,'user',NULL,4),
(56,'hello word5',NULL,NULL,'user',NULL,5),
(57,'hello word6',NULL,NULL,'user',NULL,6),
(58,'hello word7',NULL,NULL,'user',NULL,7),
(59,'hello word8',NULL,NULL,'user',NULL,8),
(60,'hello word9',NULL,NULL,'user',NULL,9),
(61,'hello word10',NULL,NULL,'user',NULL,10),
(62,'hello word11',NULL,NULL,'user',NULL,11),
(63,'hello word12',NULL,NULL,'user',NULL,12),
(64,'hello word13',NULL,NULL,'user',NULL,13),
(65,'hello word14',NULL,NULL,'user',NULL,14),
(66,'hello word15',NULL,NULL,'user',NULL,15),
(67,'hello word16',NULL,NULL,'user',NULL,16),
(68,'hello word17',NULL,NULL,'user',NULL,17),
(69,'hello word18',NULL,NULL,'user',NULL,18),
(70,'hello word19',NULL,NULL,'user',NULL,19),
(71,'hello word20',NULL,NULL,'user',NULL,20),
(72,'hello word21',NULL,NULL,'user',NULL,21),
(73,'hello word22',NULL,NULL,'user',NULL,22),
(74,'hello word23',NULL,NULL,'user',NULL,23),
(75,'hello word24',NULL,NULL,'user',NULL,24),
(76,'hello word25',NULL,NULL,'user',NULL,25),
(77,'hello word26',NULL,NULL,'user',NULL,26),
(78,'hello word27',NULL,NULL,'user',NULL,27),
(79,'hello word28',NULL,NULL,'user',NULL,28),
(80,'hello word29',NULL,NULL,'user',NULL,29),
(81,'hello word30',NULL,NULL,'user',NULL,30),
(82,'hello word31',NULL,NULL,'user',NULL,31),
(83,'hello word32',NULL,NULL,'user',NULL,32),
(84,'hello word33',NULL,NULL,'user',NULL,33),
(85,'hello word34',NULL,NULL,'user',NULL,34),
(86,'hello word35',NULL,NULL,'user',NULL,35),
(87,'hello word36',NULL,NULL,'user',NULL,36),
(88,'hello word37',NULL,NULL,'user',NULL,37),
(89,'hello word38',NULL,NULL,'user',NULL,38),
(90,'hello word39',NULL,NULL,'user',NULL,39),
(91,'hello word40',NULL,NULL,'user',NULL,40),
(92,'hello word41',NULL,NULL,'user',NULL,41),
(93,'hello word42',NULL,NULL,'user',NULL,42),
(94,'hello word43',NULL,NULL,'user',NULL,43),
(95,'hello word44',NULL,NULL,'user',NULL,44),
(96,'hello word45',NULL,NULL,'user',NULL,45),
(97,'hello word46',NULL,NULL,'user',NULL,46),
(98,'hello word47',NULL,NULL,'user',NULL,47),
(99,'hello word48',NULL,NULL,'user',NULL,48),
(100,'hello word49',NULL,NULL,'user',NULL,49),
(101,'hello word50',NULL,NULL,'user',NULL,50),
(102,'hello word51',NULL,NULL,'user',NULL,51),
(103,'hello word52',NULL,NULL,'user',NULL,52),
(104,'hello word53',NULL,NULL,'user',NULL,53),
(105,'hello word54',NULL,NULL,'user',NULL,54),
(106,'hello word55',NULL,NULL,'user',NULL,55),
(107,'hello word56',NULL,NULL,'user',NULL,56),
(108,'hello word57',NULL,NULL,'user',NULL,57),
(109,'hello word58',NULL,NULL,'user',NULL,58),
(110,'hello word59',NULL,NULL,'user',NULL,59),
(111,'hello word60',NULL,NULL,'user',NULL,60),
(112,'hello word61',NULL,NULL,'user',NULL,61),
(113,'hello word62',NULL,NULL,'user',NULL,62),
(114,'hello word63',NULL,NULL,'user',NULL,63),
(115,'hello word64',NULL,NULL,'user',NULL,64),
(116,'hello word65',NULL,NULL,'user',NULL,65),
(117,'hello word66',NULL,NULL,'user',NULL,66),
(118,'hello word67',NULL,NULL,'user',NULL,67),
(119,'hello word68',NULL,NULL,'user',NULL,68),
(120,'hello word69',NULL,NULL,'user',NULL,69),
(121,'hello word70',NULL,NULL,'user',NULL,70),
(122,'hello word71',NULL,NULL,'user',NULL,71),
(123,'hello word72',NULL,NULL,'user',NULL,72),
(124,'hello word73',NULL,NULL,'user',NULL,73),
(125,'hello word74',NULL,NULL,'user',NULL,74),
(126,'hello word75',NULL,NULL,'user',NULL,75),
(127,'hello word76',NULL,NULL,'user',NULL,76),
(128,'hello word77',NULL,NULL,'user',NULL,77),
(129,'hello word78',NULL,NULL,'user',NULL,78),
(130,'hello word79',NULL,NULL,'user',NULL,79),
(131,'hello word80',NULL,NULL,'user',NULL,80),
(132,'hello word81',NULL,NULL,'user',NULL,81),
(133,'hello word82',NULL,NULL,'user',NULL,82),
(134,'hello word83',NULL,NULL,'user',NULL,83),
(135,'hello word84',NULL,NULL,'user',NULL,84),
(136,'hello word85',NULL,NULL,'user',NULL,85),
(137,'hello word86',NULL,NULL,'user',NULL,86),
(138,'hello word87',NULL,NULL,'user',NULL,87),
(139,'hello word88',NULL,NULL,'user',NULL,88),
(140,'hello word89',NULL,NULL,'user',NULL,89),
(141,'hello word90',NULL,NULL,'user',NULL,90),
(142,'hello word91',NULL,NULL,'user',NULL,91),
(143,'hello word92',NULL,NULL,'user',NULL,92),
(144,'hello word93',NULL,NULL,'user',NULL,93),
(145,'hello word94',NULL,NULL,'user',NULL,94),
(146,'hello word95',NULL,NULL,'user',NULL,95),
(147,'hello word96',NULL,NULL,'user',NULL,96),
(148,'hello word97',NULL,NULL,'user',NULL,97),
(149,'hello word98',NULL,NULL,'user',NULL,98),
(150,'hello word99',NULL,NULL,'user',NULL,99),
(151,'hello word50',NULL,NULL,'user',NULL,50),
(152,'hello word51',NULL,NULL,'user',NULL,51),
(153,'hello word52',NULL,NULL,'user',NULL,52),
(154,'hello word53',NULL,NULL,'user',NULL,53),
(155,'hello word54',NULL,NULL,'user',NULL,54),
(156,'hello word55',NULL,NULL,'user',NULL,55),
(157,'hello word56',NULL,NULL,'user',NULL,56),
(158,'hello word57',NULL,NULL,'user',NULL,57),
(159,'hello word58',NULL,NULL,'user',NULL,58),
(160,'hello word59',NULL,NULL,'user',NULL,59),
(161,'hello word60',NULL,NULL,'user',NULL,60),
(162,'hello word61',NULL,NULL,'user',NULL,61),
(163,'hello word62',NULL,NULL,'user',NULL,62),
(164,'hello word63',NULL,NULL,'user',NULL,63),
(165,'hello word64',NULL,NULL,'user',NULL,64),
(166,'hello word65',NULL,NULL,'user',NULL,65),
(167,'hello word66',NULL,NULL,'user',NULL,66),
(168,'hello word67',NULL,NULL,'user',NULL,67),
(169,'hello word68',NULL,NULL,'user',NULL,68),
(170,'hello word69',NULL,NULL,'user',NULL,69),
(171,'hello word70',NULL,NULL,'user',NULL,70),
(172,'hello word71',NULL,NULL,'user',NULL,71),
(173,'hello word72',NULL,NULL,'user',NULL,72),
(174,'hello word73',NULL,NULL,'user',NULL,73),
(175,'hello word74',NULL,NULL,'user',NULL,74),
(176,'hello word75',NULL,NULL,'user',NULL,75),
(177,'hello word76',NULL,NULL,'user',NULL,76),
(178,'hello word77',NULL,NULL,'user',NULL,77),
(179,'hello word78',NULL,NULL,'user',NULL,78),
(180,'hello word79',NULL,NULL,'user',NULL,79),
(181,'hello word80',NULL,NULL,'user',NULL,80),
(182,'hello word81',NULL,NULL,'user',NULL,81),
(183,'hello word82',NULL,NULL,'user',NULL,82),
(184,'hello word83',NULL,NULL,'user',NULL,83),
(185,'hello word84',NULL,NULL,'user',NULL,84),
(186,'hello word85',NULL,NULL,'user',NULL,85),
(187,'hello word86',NULL,NULL,'user',NULL,86),
(188,'hello word87',NULL,NULL,'user',NULL,87),
(189,'hello word88',NULL,NULL,'user',NULL,88),
(190,'hello word89',NULL,NULL,'user',NULL,89),
(191,'hello word90',NULL,NULL,'user',NULL,90),
(192,'hello word91',NULL,NULL,'user',NULL,91),
(193,'hello word92',NULL,NULL,'user',NULL,92),
(194,'hello word93',NULL,NULL,'user',NULL,93),
(195,'hello word94',NULL,NULL,'user',NULL,94),
(196,'hello word95',NULL,NULL,'user',NULL,95),
(197,'hello word96',NULL,NULL,'user',NULL,96),
(198,'hello word97',NULL,NULL,'user',NULL,97),
(199,'hello word98',NULL,NULL,'user',NULL,98),
(200,'hello word99',NULL,NULL,'user',NULL,99);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `price` decimal(10,3) DEFAULT NULL,
  `created_time` datetime(6) DEFAULT current_timestamp(6),
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `test3_index` (`title`,`author_id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES
(1,'a','happy story',1,123.000,'2021-11-17 16:24:24.961945'),
(2,'a','sad story',2,12.000,'2022-11-17 16:24:24.961945'),
(3,'e','fun story',3,155.000,'2020-11-17 16:24:24.961945'),
(4,'z','comedy story',4,614.000,'2023-11-17 16:24:24.961945'),
(5,'d','honor story',1,465.000,'2023-11-20 16:24:24.961945'),
(6,'c',NULL,3,135.000,'2023-11-17 22:53:04.533895'),
(8,'k','SF',1,123.000,'2023-11-20 11:33:03.733063'),
(9,'k','SF',1,434.000,'2023-11-20 11:40:01.298254'),
(10,'r',NULL,4,123.000,'2023-11-20 14:18:08.957957'),
(105,'a','happy',1,NULL,'2023-11-22 14:31:31.726323');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `test_view`
--

DROP TABLE IF EXISTS `test_view`;
/*!50001 DROP VIEW IF EXISTS `test_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `test_view` AS SELECT
 1 AS `name`,
  1 AS `email` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `test_view`
--

/*!50001 DROP VIEW IF EXISTS `test_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `test_view` AS select `author`.`name` AS `name`,`author`.`email` AS `email` from `author` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-22 17:14:31
