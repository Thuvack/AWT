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
-- Table structure for table `wikis`
--

DROP TABLE IF EXISTS `wikis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wikis` (
  `wiki_name` varchar(50) NOT NULL,
  `word_count` int NOT NULL,
  `page_count` int NOT NULL,
  `active_editors` int DEFAULT '0',
  `localization_level` int DEFAULT '0',
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`wiki_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikis`
--

LOCK TABLES `wikis` WRITE;
/*!40000 ALTER TABLE `wikis` DISABLE KEYS */;
INSERT INTO `wikis` VALUES ('aa-Wikibooks',0,0,0,0,'2010-01-01 00:00:00'),('aa-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('aa-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('aeb-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('aeb-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('af-Wikibooks',0,0,0,0,'2010-01-01 00:00:00'),('af-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('af-Wikisource',0,0,0,0,'2010-01-01 00:00:00'),('af-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('ak-Wikibooks',0,0,0,0,'2010-01-01 00:00:00'),('ak-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('am-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('am-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('ar-Wikibooks',0,0,0,0,'2010-01-01 00:00:00'),('ar-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('ar-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('arq-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('arq-Wikisource',0,0,0,0,'2010-01-01 00:00:00'),('arq-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('ary-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('ary-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('arz-Wikibooks',0,0,0,0,'2010-01-01 00:00:00'),('arz-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('arz-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('ayl-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('bho-Wikibooks',0,0,0,0,'2010-01-01 00:00:00'),('bho-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('bho-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('bm-Wikibooks',0,0,0,0,'2010-01-01 00:00:00'),('bm-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('bm-Wikisource',0,0,0,0,'2010-01-01 00:00:00'),('bm-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('ee-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('ee-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('ff-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('fon-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('gaa-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('ha-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('ha-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('ig-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('ig-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('kab-Wikibooks',0,0,0,0,'2010-01-01 00:00:00'),('kab-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('kab-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('kea-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('kea-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('kg-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('ki-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('ki-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('lg-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('lg-Wikisource',0,0,0,0,'2010-01-01 00:00:00'),('lg-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('ln-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('ln-Wikisource',0,0,0,0,'2010-01-01 00:00:00'),('ln-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('lua-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('luo-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('mfe-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('mg-Wikibooks',0,0,0,0,'2010-01-01 00:00:00'),('mg-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('mg-Wikisource',0,0,0,0,'2010-01-01 00:00:00'),('mg-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('mkw-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('mos-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('nd-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('nr-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('nso-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('nso-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('ny-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('ny-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('om-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('om-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('rn-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('rw-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('rw-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('sg-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('sg-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('sn-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('sn-Wikisource',0,0,0,0,'2010-01-01 00:00:00'),('sn-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('so-Wikibooks',0,0,0,0,'2010-01-01 00:00:00'),('so-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('so-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('ss-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('ss-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('st-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('st-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('sw-Wikibooks',0,0,0,0,'2010-01-01 00:00:00'),('sw-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('sw-Wikisource',0,0,0,0,'2010-01-01 00:00:00'),('sw-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('ti-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('ti-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('tn-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('tn-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('ts-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('ts-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('tum-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('tw-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('tw-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('umb-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('ve-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('wo-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('wo-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('xh-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('xh-Wikisource',0,0,0,0,'2010-01-01 00:00:00'),('xh-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('yo-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('yo-Wikitionary',0,0,0,0,'2010-01-01 00:00:00'),('zu-Wikibooks',0,0,0,0,'2010-01-01 00:00:00'),('zu-Wikipedia',0,0,0,0,'2010-01-01 00:00:00'),('zu-Wikisource',0,0,0,0,'2010-01-01 00:00:00'),('zu-Wikitionary',0,0,0,0,'2010-01-01 00:00:00');
/*!40000 ALTER TABLE `wikis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-14 19:16:12
