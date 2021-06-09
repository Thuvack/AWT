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
-- Table structure for table `countries_languages`
--

DROP TABLE IF EXISTS `countries_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_languages` (
  `country_code` varchar(5) NOT NULL,
  `language_code` varchar(5) NOT NULL,
  PRIMARY KEY (`country_code`,`language_code`),
  KEY `fk_countries_has_languages_languages1_idx` (`language_code`),
  KEY `fk_countries_has_languages_countries_idx` (`country_code`),
  CONSTRAINT `fk_countries_has_languages_countries` FOREIGN KEY (`country_code`) REFERENCES `countries` (`country_code`),
  CONSTRAINT `fk_countries_has_languages_languages1` FOREIGN KEY (`language_code`) REFERENCES `languages` (`language_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_languages`
--

LOCK TABLES `countries_languages` WRITE;
/*!40000 ALTER TABLE `countries_languages` DISABLE KEYS */;
INSERT INTO `countries_languages` VALUES ('DJ','aa'),('ER','aa'),('ET','aa'),('DZ','aao'),('ESH','aao'),('LY','aao'),('MA','aao'),('ML','aao'),('MR','aao'),('NE','aao'),('GH','abr'),('GH','ada'),('DZ','aeb'),('TN','aeb'),('NA','af'),('ZA','af'),('GH','ak'),('ET','am'),('ER','apd'),('SD','apd'),('SS','apd'),('DJ','ar'),('DZ','ar'),('EG','ar'),('ESH','ar'),('KM','ar'),('LY','ar'),('MA','ar'),('MR','ar'),('SD','ar'),('SO','ar'),('TD','ar'),('TN','ar'),('TZ','ar'),('DZ','arq '),('MA','ary'),('EG','arz'),('EG','avl'),('DZ','ayl'),('EG','ayl'),('LY','ayl'),('NE','ayl'),('TD','ayl'),('TN','ayl'),('BF','ber'),('DZ','ber'),('EG','ber'),('LY','ber'),('MA','ber'),('ML','ber'),('MR','ber'),('NG','ber'),('TN','ber'),('MU','bho'),('ZA','bho'),('ML','bm'),('ZW','bwg'),('GH','ee'),('TG','ee'),('BF','ff'),('BJ','ff'),('GH','ff'),('GM','ff'),('GN','ff'),('GW','ff'),('ML','ff'),('MR','ff'),('NE','ff'),('SL','ff'),('SN','ff'),('TG','ff'),('BJ','fon'),('NG','fon'),('TG','fon'),('GH','gaa'),('BJ','ha'),('CI','ha'),('CM','ha'),('GH','ha'),('NE','ha'),('NG','ha'),('TG','ha'),('GQ','ig'),('NG','ig'),('DZ','kab'),('CV','kea'),('AO','kg'),('CD','kg'),('CG','kg'),('KE','ki'),('TZ','ki'),('UG','ki'),('AO','kmb'),('UG','lg'),('CD','ln'),('CF','ln'),('CG','ln'),('CD','lua'),('CM','luo'),('KE','luo'),('TZ','luo'),('MU','mfe'),('MG','mg'),('CD','mkw'),('CG','mkw'),('BF','mos'),('BJ','mos'),('CI','mos'),('GH','mos'),('ML','mos'),('TG','mos'),('NA','naq'),('BW','nd'),('ZW','nd'),('MZ','ndc'),('ZW','ndc'),('BW','nmq'),('ZW','nmq'),('ZA','nr'),('ZA','nso'),('MW','ny'),('MZ','ny'),('ZM','ny'),('ZW','ny'),('ET','om'),('KE','om'),('DJ','os'),('ET','os'),('KE','os'),('SO','os'),('BI','rn'),('CD','rn'),('RW','rn'),('TZ','rn'),('UG','rn'),('CD','rw'),('RW','rw'),('TZ','rw'),('UG','rw'),('ZM','seh'),('CD','sg'),('CF','sg'),('TD','sg'),('CM','shu'),('NE','shu'),('NG','shu'),('SD','shu'),('SS','shu'),('TD','shu'),('ZW','sn'),('DJ','so'),('ET','so'),('KE','so'),('SO','so'),('MZ','ss'),('SZ','ss'),('ZA','ss'),('LS','st'),('ZA','st'),('ZW','st'),('BI','sw'),('CD','sw'),('KE','sw'),('KM','sw'),('MG','sw'),('MW','sw'),('MYT','sw'),('MZ','sw'),('RW','sw'),('SO','sw'),('TZ','sw'),('UG','sw'),('ZM','sw'),('MG','swb'),('MYT','swb'),('MW','swk'),('ER','ti'),('ET','ti'),('BW','tn'),('ZA','tn'),('ZW','tn'),('ZM','toi'),('ZW','toi'),('MZ','ts'),('SZ','ts'),('ZA','ts'),('ZW','ts'),('MW','tum'),('TZ','tum'),('ZM','tum'),('GH','tw'),('AO','umb'),('ZA','ve'),('ZW','ve'),('GM','wo'),('MR','wo'),('SN','wo'),('ZA','xh'),('ZW','xh'),('BJ','yo'),('NG','yo'),('TG','yo'),('KM','zdj'),('MG','zdj'),('REU','zdj'),('LS','zu'),('SZ','zu'),('ZA','zu');
/*!40000 ALTER TABLE `countries_languages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-09 14:25:54
