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
-- Table structure for table `regional_affiliates`
--

DROP TABLE IF EXISTS `regional_affiliates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regional_affiliates` (
  `language_code` varchar(5) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `affiliate_name` varchar(100) NOT NULL,
  `wiki_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`language_code`,`country_code`,`affiliate_name`),
  KEY `fk_languages_has_countries_countries1_idx` (`country_code`),
  CONSTRAINT `fk_languages_has_countries_countries1` FOREIGN KEY (`country_code`) REFERENCES `countries` (`country_code`),
  CONSTRAINT `fk_languages_has_countries_languages1` FOREIGN KEY (`language_code`) REFERENCES `languages` (`language_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regional_affiliates`
--

LOCK TABLES `regional_affiliates` WRITE;
/*!40000 ALTER TABLE `regional_affiliates` DISABLE KEYS */;
INSERT INTO `regional_affiliates` VALUES ('abr','CI','Wikimedia Community User Group Côte d\'Ivoire',''),('af','ZA','Wikimedia South Africa','af-Wikipedia'),('ak','GH','Open Foundation West Africa','ak-Wikipedia'),('apd','SS','Wikimedia Community User Group Sudan',''),('ar','DZ','Algeria Wikimedians User Group','ar-Wikipedia'),('ar','EG','Egypt Wikimedians User Group','ar-Wikipedia'),('ar','GN','Wikimedia Community User Group Guinea Conakry','ar-Wikipedia'),('ar','MA','Wikimedia MA User Group (Morocco)','ar-Wikipedia'),('ar','NG','Hausa Wikimedians User Group','ar-Wikipedia'),('ar','SS','Wikimedia Community User Group Sudan','ar-Wikipedia'),('ar','TD','Wikimedia Community User Group Tchad','ar-Wikipedia'),('ar','TN','Wikimedia Tunisia User Group','ar-Wikipedia'),('arz','EG','Egypt Wikimedians User Group','arz-Wikipedia'),('ber','DZ','Algeria Wikimedians User Group',''),('ber','DZ','Wikimedians of Tamazight User Group',''),('ber','MA','Wikimedia MA User Group (Morocco)',''),('ber','MA','Wikimedians of Tamazight User Group',''),('ber','TN','Wikimedians of Tamazight User Group',''),('bm','ML','Wikimedians of Mali User Group','bm-Wikipedia'),('ee','GH','Open Foundation West Africa','ee-Wikipedia'),('ee','GH','Wikimedia Ghana User Group','ee-Wikipedia'),('ff','BJ','Wikimédiens du Bénin User Group','ff-Wikipedia'),('ff','CM','Wikimedians of Cameroon User Group','ff-Wikipedia'),('ff','ML','Wikimedians of Mali User Group','ff-Wikipedia'),('fon','BJ','Wikimédiens du Bénin User Group','fon-Wikipedia'),('gaa','GH','Open Foundation West Africa','gaa-Wikipedia'),('gaa','GH','Wikimedia Ghana User Group','gaa-Wikipedia'),('ha','GH','Open Foundation West Africa','ha-Wikipedia'),('ha','GH','Wikimedia Ghana User Group','ha-Wikipedia'),('ha','NG','Hausa Wikimedians User Group','ha-Wikipedia'),('ha','NG','Wikimedia User Group Nigeria','ha-Wikipedia'),('ig','NG','Igbo Wikimedians User Group','ig-Wikipedia'),('ig','NG','Wikimedia User Group Nigeria','ig-Wikipedia'),('kg','CD','Wikimedians of Democratic Republic of Congo User Group','kg-Wikipedia'),('lg','UG','Wikimedia Community User Group Uganda','lg-Wikipedia'),('ln','CD','Wikimedians of Democratic Republic of Congo User Group','ln-Wikipedia'),('lua','CD','Wikimedians of Democratic Republic of Congo User Group','lua-Wikipedia'),('nr','ZA','Wikimedia South Africa','nr-Wikipedia'),('nso','ZA','Wikimedia South Africa','nso-Wikipedia'),('ss','ZA','Wikimedia South Africa','ss-Wikipedia'),('st','ZA','Wikimedia South Africa','st-Wikipedia'),('sw','CD','Wikimedians of Democratic Republic of Congo User Group','sw-Wikipedia'),('sw','TZ','Jenga Wikipedia ya Kiswahili','sw-Wikipedia'),('sw','TZ','Wikimedia Community User Group Tanzania','sw-Wikipedia'),('tn','ZA','Wikimedia South Africa','tn-Wikipedia'),('ts','ZA','Wikimedia South Africa','ts-Wikipedia'),('tw','BF','Dagbani_Wikimedians_User_Group','tw-Wikipedia'),('tw','GH','Dagbani_Wikimedians_User_Group','tw-Wikipedia'),('tw','GH','Open Foundation West Africa','tw-Wikipedia'),('tw','GH','Wikimedia Ghana User Group','tw-Wikipedia'),('ve','ZA','Wikimedia South Africa','ve-Wikipedia'),('xh','ZA','Wikimedia South Africa','xh-Wikipedia'),('yo','BJ','Wikimédiens du Bénin User Group','yo-Wikipedia'),('yo','NG','Wikimedia User Group Nigeria','yo-Wikipedia'),('yo','NG','Yoruba Wikimedians User Group','yo-Wikipedia'),('zu','ZA','Wikimedia South Africa','zu-Wikipedia');
/*!40000 ALTER TABLE `regional_affiliates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-22 15:13:09
