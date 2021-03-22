CREATE DATABASE  IF NOT EXISTS `awt` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `awt`;
-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: awt
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `country_code` varchar(5) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `population_size` int NOT NULL,
  `census_year` int DEFAULT NULL,
  PRIMARY KEY (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('AO','Angola',24383301,2014),('BF','Burkina Faso',18450494,2015),('BI','Burundi',9823828,2015),('BJ','Benin',10008749,2013),('BW','Botswana',2024904,2011),('CD','Democratic Republic of the Congo',86026000,2019),('CF','Central African Republic',3859139,2017),('CG','Republic of the Congo',3697490,2007),('CI','Ivory Coast',22671331,2014),('CM','Cameroon',21917602,2015),('CV','Cape Verde',491875,2010),('DJ','Djibouti',864618,2011),('DZ','Algeria',43000420,2019),('EG','Egypt',100173395,2020),('ER','Eritrea',6536000,2014),('ESH','Western Sahara[5]',510713,2014),('ET','Ethiopia',112078730,2019),('GA','Gabon',1802278,2013),('GH','Ghana',27043093,2014),('GM','Gambia',1882450,2013),('GN','Guinea',10628972,2014),('GQ','Equatorial Guinea',1222442,2015),('GW','Guinea-Bissau',1530673,2015),('KE','Kenya',47564296,2019),('KM','Comoros',806200,2016),('LR','Liberia',3476608,2008),('LS','Lesotho',1894194,2011),('LY','Libya',5298152,2006),('MA','Morocco',35795289,2020),('MG','Madagascar',22434363,2014),('ML','Mali',14528662,2009),('MR','Mauritania',3718678,2016),('MU','Mauritius',1261208,2014),('MW','Malawi',16832900,2016),('MYT','Mayotte (France)',212600,2012),('MZ','Mozambique',28013000,2015),('NA','Namibia',2280700,2015),('NE','Niger',17138707,2012),('NG','Nigeria',200963599,2019),('REU','Réunion (France)',840974,2013),('RW','Rwanda',10515973,2012),('SC','Seychelles',90945,2010),('SD','Sudan',42268269,2020),('SHN','Saint Helena, Ascension and Tristan da Cunha (UK)',5633,2016),('SL','Sierra Leone',6348350,2014),('SN','Senegal',14354690,2015),('SO','Somalia',22316895,2019),('SS','South Sudan',8260490,2008),('ST','São Tomé and Príncipe',201784,2018),('SZ','Eswatini',1119375,2015),('TD','Chad',11039873,2009),('TG','Togo',6191155,2010),('TN','Tunisia',10982754,2014),('TZ','Tanzania',59531155,2020),('UG','Uganda',34634650,2014),('ZA','South Africa',58775022,2019),('ZM','Zambia',15473905,2015),('ZW','Zimbabwe',13061239,2012);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-15 12:54:02
