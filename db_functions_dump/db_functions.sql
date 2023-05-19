-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db_functions
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.10.1

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
-- Table structure for table `dealership`
--

DROP TABLE IF EXISTS `dealership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealership` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `date_established` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealership`
--

LOCK TABLES `dealership` WRITE;
/*!40000 ALTER TABLE `dealership` DISABLE KEYS */;
INSERT INTO `dealership` VALUES (1,'adealer','Edmonton','2021-04-27'),(2,'adealer2','Edmonton','2016-09-14'),(3,'adealer2','Edmonton','2011-06-17');
/*!40000 ALTER TABLE `dealership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `for_sale_cars`
--

DROP TABLE IF EXISTS `for_sale_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `for_sale_cars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dealership_id` int(10) unsigned DEFAULT NULL,
  `price` float DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `year` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `for_sale_cars_FK` (`dealership_id`),
  CONSTRAINT `for_sale_cars_FK` FOREIGN KEY (`dealership_id`) REFERENCES `dealership` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `for_sale_cars`
--

LOCK TABLES `for_sale_cars` WRITE;
/*!40000 ALTER TABLE `for_sale_cars` DISABLE KEYS */;
INSERT INTO `for_sale_cars` VALUES (105,1,1400,'sunfire','2022-01-01'),(106,1,1400,'sunfire','2022-01-02'),(107,1,1400,'sunfire','2022-01-03'),(108,1,1400,'sunfire','2022-01-04'),(109,1,1400,'sunfire','2022-01-05'),(110,1,1400,'sunfire','2022-01-06'),(111,1,1400,'sunfire','2022-01-07'),(112,1,1400,'sunfire','2022-01-08'),(113,1,1400,'sunfire','2022-01-09'),(114,1,1400,'sunfire','2022-01-10'),(115,1,1400,'sunfire','2022-01-11'),(116,1,1400,'sunfire','2022-01-12'),(117,1,1400,'sunfire','2022-01-13'),(118,1,1400,'sunfire','2022-01-14'),(119,1,1400,'sunfire','2022-01-15'),(120,2,1400,'sunfire','2022-01-01'),(121,2,1400,'sunfire','2022-01-02'),(122,2,1400,'sunfire','2012-01-03'),(123,2,1400,'sunfire','2012-01-04'),(124,2,1400,'sunfire','2012-01-05'),(125,2,1400,'sunfire','2012-01-06'),(126,2,1400,'sunfire','2022-01-07'),(127,2,1400,'sunfire','2022-01-08'),(128,2,1400,'sunfire','2022-01-09'),(129,2,1400,'sunfire','2022-01-10'),(130,2,1400,'sunfire','2022-01-11'),(131,2,1400,'sunfire','2022-01-12'),(132,2,1400,'sunfire','2022-01-13'),(133,2,1400,'sunfire','2022-01-14'),(134,2,1400,'sunfire','2022-01-15');
/*!40000 ALTER TABLE `for_sale_cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_functions'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18 19:34:39
