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
-- Table structure for table `countries_economic_zones`
--

DROP TABLE IF EXISTS `countries_economic_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_economic_zones` (
  `zone_code` varchar(25) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  PRIMARY KEY (`zone_code`,`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_economic_zones`
--

LOCK TABLES `countries_economic_zones` WRITE;
/*!40000 ALTER TABLE `countries_economic_zones` DISABLE KEYS */;
INSERT INTO `countries_economic_zones` VALUES ('CEN-SAD','BF'),('CEN-SAD','BJ'),('CEN-SAD','CF'),('CEN-SAD','CI'),('CEN-SAD','CV'),('CEN-SAD','DJ'),('CEN-SAD','EG'),('CEN-SAD','ER'),('CEN-SAD','GH'),('CEN-SAD','GM'),('CEN-SAD','GN'),('CEN-SAD','GW'),('CEN-SAD','KE'),('CEN-SAD','KM'),('CEN-SAD','LR'),('CEN-SAD','LY'),('CEN-SAD','MA'),('CEN-SAD','ML'),('CEN-SAD','MR'),('CEN-SAD','NE'),('CEN-SAD','NG'),('CEN-SAD','SD'),('CEN-SAD','SL'),('CEN-SAD','SN'),('CEN-SAD','SO'),('CEN-SAD','ST'),('CEN-SAD','TD'),('CEN-SAD','TG'),('CEN-SAD','TN'),('COMESA','BI'),('COMESA','CD'),('COMESA','DJ'),('COMESA','EG'),('COMESA','ER'),('COMESA','ET'),('COMESA','KE'),('COMESA','KM'),('COMESA','LY'),('COMESA','MG'),('COMESA','MU'),('COMESA','MW'),('COMESA','RW'),('COMESA','SC'),('COMESA','SD'),('COMESA','SO'),('COMESA','SZ'),('COMESA','TN'),('COMESA','UG'),('COMESA','ZM'),('COMESA','ZW'),('EAC','BI'),('EAC','KE'),('EAC','RW'),('EAC','SS'),('EAC','TZ'),('EAC','UG'),('ECCAS','AO'),('ECCAS','BI'),('ECCAS','CD'),('ECCAS','CF'),('ECCAS','CG'),('ECCAS','CM'),('ECCAS','CV'),('ECCAS','GA'),('ECCAS','GQ'),('ECCAS','RW'),('ECCAS','ST'),('ECOWAS','BF'),('ECOWAS','BJ'),('ECOWAS','CI'),('ECOWAS','CV'),('ECOWAS','GH'),('ECOWAS','GM'),('ECOWAS','GN'),('ECOWAS','GW'),('ECOWAS','LR'),('ECOWAS','ML'),('ECOWAS','NE'),('ECOWAS','NG'),('ECOWAS','SL'),('ECOWAS','SN'),('ECOWAS','TG'),('IGAD','DJ'),('IGAD','ER'),('IGAD','ET'),('IGAD','KE'),('IGAD','SD'),('IGAD','SO'),('IGAD','SS'),('IGAD','UG'),('SADC','AO'),('SADC','BW'),('SADC','CD'),('SADC','LS'),('SADC','MG'),('SADC','MU'),('SADC','MW'),('SADC','MZ'),('SADC','NA'),('SADC','SC'),('SADC','SZ'),('SADC','TZ'),('SADC','ZA'),('SADC','ZM'),('SADC','ZW'),('UMA','DZ'),('UMA','LY'),('UMA','MA'),('UMA','MR'),('UMA','TN');
/*!40000 ALTER TABLE `countries_economic_zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-15 12:54:03
