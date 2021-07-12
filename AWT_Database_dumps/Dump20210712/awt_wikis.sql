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
  `localization_level` decimal(3,2) DEFAULT '0.00',
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`wiki_name`,`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikis`
--

LOCK TABLES `wikis` WRITE;
/*!40000 ALTER TABLE `wikis` DISABLE KEYS */;
INSERT INTO `wikis` VALUES ('aa-Wikibooks',0,0,0,0.00,'2010-01-01 00:00:00'),('aa-Wikibooks',0,2,0,0.00,'2020-11-15 00:00:00'),('aa-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('aa-Wikipedia',0,22,1,0.00,'2020-11-15 00:00:00'),('aa-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('aa-Wikitionary',0,25,1,0.00,'2020-11-15 00:00:00'),('aeb-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('aeb-Wikipedia',0,84,1,0.00,'2020-11-15 00:00:00'),('aeb-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('aeb-Wikitionary',0,7,1,0.00,'2020-11-15 00:00:00'),('af-Wikibooks',0,0,0,0.00,'2010-01-01 00:00:00'),('af-Wikibooks',19064,23,3,0.99,'2020-11-15 00:00:00'),('af-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('af-Wikipedia',0,17002,17002,0.00,'2011-02-11 00:00:00'),('af-Wikipedia',0,22115,22115,0.00,'2012-04-13 00:00:00'),('af-Wikipedia',0,24821,24821,0.00,'2012-11-16 00:00:00'),('af-Wikipedia',0,26752,26752,0.00,'2013-05-09 00:00:00'),('af-Wikipedia',0,31756,31756,0.00,'2014-06-17 00:00:00'),('af-Wikipedia',0,33392,33392,0.00,'2014-10-29 00:00:00'),('af-Wikipedia',0,35856,35856,0.00,'2015-06-26 00:00:00'),('af-Wikipedia',0,39065,39065,0.00,'2016-03-05 00:00:00'),('af-Wikipedia',0,42732,42732,0.00,'2016-11-24 00:00:00'),('af-Wikipedia',0,46824,46824,0.00,'2017-09-05 00:00:00'),('af-Wikipedia',0,50275,50275,0.00,'2018-06-30 00:00:00'),('af-Wikipedia',0,76932,76932,0.00,'2019-03-27 00:00:00'),('af-Wikipedia',26225827,86657,86657,0.99,'2019-11-09 00:00:00'),('af-Wikipedia',32633461,94877,200,0.99,'2020-11-15 00:00:00'),('af-Wikisource',0,0,0,0.00,'2010-01-01 00:00:00'),('af-Wikisource',0,207,0,0.99,'2020-11-15 00:00:00'),('af-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('af-Wikitionary',559051,21991,12,0.99,'2020-11-15 00:00:00'),('ak-Wikibooks',0,0,0,0.00,'2010-01-01 00:00:00'),('ak-Wikibooks',0,12,1,0.06,'2020-11-15 00:00:00'),('ak-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('ak-Wikipedia',128640,1326,31,0.06,'2020-11-15 00:00:00'),('am-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('am-Wikipedia',0,6738,6738,0.00,'2011-02-11 00:00:00'),('am-Wikipedia',0,11572,11572,0.00,'2012-04-13 00:00:00'),('am-Wikipedia',0,11806,11806,0.00,'2012-11-16 00:00:00'),('am-Wikipedia',0,12360,12360,0.00,'2013-05-09 00:00:00'),('am-Wikipedia',0,15968,15968,0.00,'2014-06-17 00:00:00'),('am-Wikipedia',0,16229,16229,0.00,'2014-10-29 00:00:00'),('am-Wikipedia',0,12950,12950,0.00,'2015-06-26 00:00:00'),('am-Wikipedia',0,13031,13031,0.00,'2016-03-05 00:00:00'),('am-Wikipedia',0,13279,13279,0.00,'2016-11-24 00:00:00'),('am-Wikipedia',0,13789,13789,0.00,'2017-09-05 00:00:00'),('am-Wikipedia',0,14286,14286,0.00,'2018-06-30 00:00:00'),('am-Wikipedia',0,14545,14545,0.00,'2019-03-27 00:00:00'),('am-Wikipedia',1369786,14789,14789,0.62,'2019-11-09 00:00:00'),('am-Wikipedia',1472927,14901,47,0.73,'2020-11-15 00:00:00'),('am-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('am-Wikitionary',39501,217,6,0.73,'2020-11-15 00:00:00'),('ar-Wikibooks',0,0,0,0.00,'2010-01-01 00:00:00'),('ar-Wikibooks',1235161,816,19,1.00,'2020-11-15 00:00:00'),('ar-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('ar-Wikipedia',334415495,1077990,4940,1.00,'2020-11-15 00:00:00'),('ar-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('ar-Wikitionary',904380,66559,29,1.00,'2020-11-15 00:00:00'),('arq-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('arq-Wikipedia',0,906,2,0.89,'2020-11-15 00:00:00'),('arq-Wikisource',0,0,0,0.00,'2010-01-01 00:00:00'),('arq-Wikisource',0,3,0,0.89,'2020-11-15 00:00:00'),('arq-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('arq-Wikitionary',0,1002,2,0.89,'2020-11-15 00:00:00'),('ary-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('ary-Wikipedia',363584,2957,35,0.99,'2020-11-15 00:00:00'),('ary-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('ary-Wikitionary',0,464,1,0.99,'2020-11-15 00:00:00'),('arz-Wikibooks',0,0,0,0.00,'2010-01-01 00:00:00'),('arz-Wikibooks',0,345,1,0.85,'2020-11-15 00:00:00'),('arz-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('arz-Wikipedia',0,0,0,0.00,'2011-02-11 00:00:00'),('arz-Wikipedia',0,8433,8433,0.00,'2012-04-13 00:00:00'),('arz-Wikipedia',0,0,0,0.00,'2012-11-16 00:00:00'),('arz-Wikipedia',0,12440,12440,0.00,'2013-05-09 00:00:00'),('arz-Wikipedia',0,12934,12934,0.00,'2014-06-17 00:00:00'),('arz-Wikipedia',0,14192,14192,0.00,'2014-10-29 00:00:00'),('arz-Wikipedia',0,14192,14192,0.00,'2015-06-26 00:00:00'),('arz-Wikipedia',0,14839,14839,0.00,'2016-03-05 00:00:00'),('arz-Wikipedia',0,15959,15959,0.00,'2016-11-24 00:00:00'),('arz-Wikipedia',0,17138,17138,0.00,'2017-09-05 00:00:00'),('arz-Wikipedia',0,18605,18605,0.00,'2018-06-30 00:00:00'),('arz-Wikipedia',0,20379,20379,0.00,'2019-03-27 00:00:00'),('arz-Wikipedia',3645788,21983,21983,0.86,'2019-11-09 00:00:00'),('arz-Wikipedia',218673883,1165638,160,0.85,'2020-11-15 00:00:00'),('arz-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('arz-Wikitionary',0,345,1,0.85,'2020-11-15 00:00:00'),('ayl-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('ayl-Wikipedia',0,4,1,0.00,'2020-11-15 00:00:00'),('bho-Wikibooks',0,0,0,0.00,'2010-01-01 00:00:00'),('bho-Wikibooks',0,5,1,0.99,'2020-11-15 00:00:00'),('bho-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('bho-Wikipedia',1067212,7384,43,0.99,'2020-11-15 00:00:00'),('bho-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('bho-Wikitionary',0,284,1,0.99,'2020-11-15 00:00:00'),('bm-Wikibooks',0,0,0,0.00,'2010-01-01 00:00:00'),('bm-Wikibooks',0,4,1,0.17,'2020-11-15 00:00:00'),('bm-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('bm-Wikipedia',53461,671,13,0.17,'2020-11-15 00:00:00'),('bm-Wikisource',0,0,0,0.00,'2010-01-01 00:00:00'),('bm-Wikisource',0,4,0,0.17,'2020-11-15 00:00:00'),('bm-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('bm-Wikitionary',0,206,2,0.17,'2020-11-15 00:00:00'),('ee-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('ee-Wikipedia',36013,361,12,0.60,'2020-11-15 00:00:00'),('ee-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('ee-Wikitionary',0,44,1,0.60,'2020-11-15 00:00:00'),('ff-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('ff-Wikipedia',62766,274,7,0.85,'2020-11-15 00:00:00'),('fon-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('fon-Wikipedia',0,13,4,0.31,'2020-11-15 00:00:00'),('gaa-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('gaa-Wikipedia',0,4,0,0.74,'2020-11-15 00:00:00'),('ha-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('ha-Wikipedia',0,0,0,0.00,'2011-02-11 00:00:00'),('ha-Wikipedia',0,0,0,0.00,'2012-04-13 00:00:00'),('ha-Wikipedia',0,0,0,0.00,'2012-11-16 00:00:00'),('ha-Wikipedia',0,0,0,0.00,'2013-05-09 00:00:00'),('ha-Wikipedia',0,0,0,0.00,'2014-06-17 00:00:00'),('ha-Wikipedia',0,1386,1386,0.00,'2014-10-29 00:00:00'),('ha-Wikipedia',0,1345,1345,0.00,'2015-06-26 00:00:00'),('ha-Wikipedia',0,1360,1360,0.00,'2016-03-05 00:00:00'),('ha-Wikipedia',0,1400,1400,0.00,'2016-11-24 00:00:00'),('ha-Wikipedia',0,1525,1525,0.00,'2017-09-05 00:00:00'),('ha-Wikipedia',0,1856,1856,0.00,'2018-06-30 00:00:00'),('ha-Wikipedia',0,3447,3447,0.00,'2019-03-27 00:00:00'),('ha-Wikipedia',381280,3981,3981,0.56,'2019-11-09 00:00:00'),('ha-Wikipedia',1266676,6094,51,0.61,'2020-11-15 00:00:00'),('ha-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('ha-Wikitionary',15152,284,3,0.61,'2020-11-15 00:00:00'),('ig-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('ig-Wikipedia',0,0,0,0.00,'2011-02-11 00:00:00'),('ig-Wikipedia',0,0,0,0.00,'2012-04-13 00:00:00'),('ig-Wikipedia',0,0,0,0.00,'2012-11-16 00:00:00'),('ig-Wikipedia',0,0,0,0.00,'2013-05-09 00:00:00'),('ig-Wikipedia',0,0,0,0.00,'2014-06-17 00:00:00'),('ig-Wikipedia',0,1017,1017,0.00,'2014-10-29 00:00:00'),('ig-Wikipedia',0,1019,1019,0.00,'2015-06-26 00:00:00'),('ig-Wikipedia',0,1112,1112,0.00,'2016-03-05 00:00:00'),('ig-Wikipedia',0,1284,1284,0.00,'2016-11-24 00:00:00'),('ig-Wikipedia',0,1384,1384,0.00,'2017-09-05 00:00:00'),('ig-Wikipedia',0,1320,1320,0.00,'2018-06-30 00:00:00'),('ig-Wikipedia',0,1397,1397,0.00,'2019-03-27 00:00:00'),('ig-Wikipedia',194283,1432,1432,0.74,'2019-11-09 00:00:00'),('ig-Wikipedia',429482,1776,41,0.79,'2020-11-15 00:00:00'),('ig-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('ig-Wikitionary',0,720,1,0.79,'2020-11-15 00:00:00'),('kab-Wikibooks',0,0,0,0.00,'2010-01-01 00:00:00'),('kab-Wikibooks',0,1,1,0.98,'2020-11-15 00:00:00'),('kab-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('kab-Wikipedia',0,0,0,0.00,'2011-02-11 00:00:00'),('kab-Wikipedia',0,0,0,0.00,'2012-04-13 00:00:00'),('kab-Wikipedia',0,1144,1144,0.00,'2012-11-16 00:00:00'),('kab-Wikipedia',0,1503,1503,0.00,'2013-05-09 00:00:00'),('kab-Wikipedia',0,1876,1876,0.00,'2014-06-17 00:00:00'),('kab-Wikipedia',0,1967,1967,0.00,'2014-10-29 00:00:00'),('kab-Wikipedia',0,2296,2296,0.00,'2015-06-26 00:00:00'),('kab-Wikipedia',0,2643,2643,0.00,'2016-03-05 00:00:00'),('kab-Wikipedia',0,2847,2847,0.00,'2016-11-24 00:00:00'),('kab-Wikipedia',0,2887,2887,0.00,'2017-09-05 00:00:00'),('kab-Wikipedia',0,2844,2844,0.00,'2018-06-30 00:00:00'),('kab-Wikipedia',0,2909,2909,0.00,'2019-03-27 00:00:00'),('kab-Wikipedia',408667,4289,4289,0.99,'2019-11-09 00:00:00'),('kab-Wikipedia',552959,5038,30,0.98,'2020-11-15 00:00:00'),('kab-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('kab-Wikitionary',0,14,1,0.98,'2020-11-15 00:00:00'),('kea-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('kea-Wikipedia',0,7,0,0.31,'2020-11-15 00:00:00'),('kea-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('kea-Wikitionary',0,182381,1,0.31,'2020-11-15 00:00:00'),('kg-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('kg-Wikipedia',0,0,0,0.00,'2011-02-11 00:00:00'),('kg-Wikipedia',0,0,0,0.00,'2012-04-13 00:00:00'),('kg-Wikipedia',0,0,0,0.00,'2012-11-16 00:00:00'),('kg-Wikipedia',0,0,0,0.00,'2013-05-09 00:00:00'),('kg-Wikipedia',0,0,0,0.00,'2014-06-17 00:00:00'),('kg-Wikipedia',0,0,0,0.00,'2014-10-29 00:00:00'),('kg-Wikipedia',0,0,0,0.00,'2015-06-26 00:00:00'),('kg-Wikipedia',0,1122,1122,0.00,'2016-03-05 00:00:00'),('kg-Wikipedia',0,1173,1173,0.00,'2016-11-24 00:00:00'),('kg-Wikipedia',0,1176,1176,0.00,'2017-09-05 00:00:00'),('kg-Wikipedia',0,1179,1179,0.00,'2018-06-30 00:00:00'),('kg-Wikipedia',0,1193,1193,0.00,'2019-03-27 00:00:00'),('kg-Wikipedia',30009,1198,1198,0.27,'2019-11-09 00:00:00'),('kg-Wikipedia',34017,1211,14,0.33,'2020-11-15 00:00:00'),('ki-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('ki-Wikipedia',0,0,0,0.00,'2011-02-11 00:00:00'),('ki-Wikipedia',0,0,0,0.00,'2012-04-13 00:00:00'),('ki-Wikipedia',0,0,0,0.00,'2012-11-16 00:00:00'),('ki-Wikipedia',0,0,0,0.00,'2013-05-09 00:00:00'),('ki-Wikipedia',0,0,0,0.00,'2014-06-17 00:00:00'),('ki-Wikipedia',0,0,0,0.00,'2014-10-29 00:00:00'),('ki-Wikipedia',0,0,0,0.00,'2015-06-26 00:00:00'),('ki-Wikipedia',0,0,0,0.00,'2016-03-05 00:00:00'),('ki-Wikipedia',0,0,0,0.00,'2016-11-24 00:00:00'),('ki-Wikipedia',0,1349,1349,0.00,'2017-09-05 00:00:00'),('ki-Wikipedia',0,1357,1357,0.00,'2018-06-30 00:00:00'),('ki-Wikipedia',0,1358,1358,0.00,'2019-03-27 00:00:00'),('ki-Wikipedia',38452,1364,1364,0.00,'2019-11-09 00:00:00'),('ki-Wikipedia',35160,1366,15,0.01,'2020-11-15 00:00:00'),('ki-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('ki-Wikitionary',0,182379,1,0.01,'2020-11-15 00:00:00'),('lg-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('lg-Wikipedia',0,0,0,0.00,'2011-02-11 00:00:00'),('lg-Wikipedia',0,0,0,0.00,'2012-04-13 00:00:00'),('lg-Wikipedia',0,0,0,0.00,'2012-11-16 00:00:00'),('lg-Wikipedia',0,0,0,0.00,'2013-05-09 00:00:00'),('lg-Wikipedia',0,0,0,0.00,'2014-06-17 00:00:00'),('lg-Wikipedia',0,0,0,0.00,'2014-10-29 00:00:00'),('lg-Wikipedia',0,0,0,0.00,'2015-06-26 00:00:00'),('lg-Wikipedia',0,0,0,0.00,'2016-03-05 00:00:00'),('lg-Wikipedia',0,1082,1082,0.00,'2016-11-24 00:00:00'),('lg-Wikipedia',0,1153,1153,0.00,'2017-09-05 00:00:00'),('lg-Wikipedia',0,1162,1162,0.00,'2018-06-30 00:00:00'),('lg-Wikipedia',0,1169,1169,0.00,'2019-03-27 00:00:00'),('lg-Wikipedia',482412,1178,1178,0.48,'2019-11-09 00:00:00'),('lg-Wikipedia',473941,1210,13,0.57,'2020-11-15 00:00:00'),('lg-Wikisource',0,0,0,0.00,'2010-01-01 00:00:00'),('lg-Wikisource',0,3,0,0.57,'2020-11-15 00:00:00'),('lg-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('lg-Wikitionary',0,182380,1,0.57,'2020-11-15 00:00:00'),('ln-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('ln-Wikipedia',0,1394,1394,0.00,'2011-02-11 00:00:00'),('ln-Wikipedia',0,1816,1816,0.00,'2012-04-13 00:00:00'),('ln-Wikipedia',0,1951,1951,0.00,'2012-11-16 00:00:00'),('ln-Wikipedia',0,2025,2025,0.00,'2013-05-09 00:00:00'),('ln-Wikipedia',0,2077,2077,0.00,'2014-06-17 00:00:00'),('ln-Wikipedia',0,2087,2087,0.00,'2014-10-29 00:00:00'),('ln-Wikipedia',0,2062,2062,0.00,'2015-06-26 00:00:00'),('ln-Wikipedia',0,2131,2131,0.00,'2016-03-05 00:00:00'),('ln-Wikipedia',0,2777,2777,0.00,'2016-11-24 00:00:00'),('ln-Wikipedia',0,2915,2915,0.00,'2017-09-05 00:00:00'),('ln-Wikipedia',0,3023,3023,0.00,'2018-06-30 00:00:00'),('ln-Wikipedia',0,3099,3099,0.00,'2019-03-27 00:00:00'),('ln-Wikipedia',228560,3127,3127,0.41,'2019-11-09 00:00:00'),('ln-Wikipedia',235307,3178,17,0.53,'2020-11-15 00:00:00'),('ln-Wikisource',0,0,0,0.00,'2010-01-01 00:00:00'),('ln-Wikisource',0,3,0,0.53,'2020-11-15 00:00:00'),('ln-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('ln-Wikitionary',2299,674,2,0.53,'2020-11-15 00:00:00'),('lua-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('lua-Wikipedia',0,2,1,0.00,'2020-11-15 00:00:00'),('luo-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('luo-Wikipedia',0,5,1,0.00,'2020-11-15 00:00:00'),('mfe-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('mfe-Wikipedia',0,78,1,0.25,'2020-11-15 00:00:00'),('mg-Wikibooks',0,0,0,0.00,'2010-01-01 00:00:00'),('mg-Wikibooks',29199,14,1,0.97,'2020-11-15 00:00:00'),('mg-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('mg-Wikipedia',0,3806,3806,0.00,'2011-02-11 00:00:00'),('mg-Wikipedia',0,36767,36767,0.00,'2012-04-13 00:00:00'),('mg-Wikipedia',0,38753,38753,0.00,'2012-11-16 00:00:00'),('mg-Wikipedia',0,45361,45361,0.00,'2013-05-09 00:00:00'),('mg-Wikipedia',0,47144,47144,0.00,'2014-06-17 00:00:00'),('mg-Wikipedia',0,47061,47061,0.00,'2014-10-29 00:00:00'),('mg-Wikipedia',0,79329,79329,0.00,'2015-06-26 00:00:00'),('mg-Wikipedia',0,81240,81240,0.00,'2016-03-05 00:00:00'),('mg-Wikipedia',0,82799,82799,0.00,'2016-11-24 00:00:00'),('mg-Wikipedia',0,84634,84634,0.00,'2017-09-05 00:00:00'),('mg-Wikipedia',0,84996,84996,0.00,'2018-06-30 00:00:00'),('mg-Wikipedia',0,91519,91519,0.00,'2019-03-27 00:00:00'),('mg-Wikipedia',7850349,92184,92184,0.97,'2019-11-09 00:00:00'),('mg-Wikipedia',8346534,93398,44,0.97,'2020-11-15 00:00:00'),('mg-Wikisource',0,0,0,0.00,'2010-01-01 00:00:00'),('mg-Wikisource',0,9,0,0.97,'2020-11-15 00:00:00'),('mg-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('mg-Wikitionary',67094310,3726180,10,0.97,'2020-11-15 00:00:00'),('mkw-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('mkw-Wikipedia',0,2,1,0.00,'2020-11-15 00:00:00'),('mos-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('mos-Wikipedia',0,1,1,0.00,'2020-11-15 00:00:00'),('nd-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('nd-Wikipedia',0,6,1,0.00,'2020-11-15 00:00:00'),('nr-Wikipedia',0,0,0,0.00,'2008-05-01 00:00:00'),('nr-Wikipedia',0,0,0,0.00,'2008-12-16 00:00:00'),('nr-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('nr-Wikipedia',0,0,0,0.00,'2011-02-11 00:00:00'),('nr-Wikipedia',0,0,0,0.00,'2012-04-13 00:00:00'),('nr-Wikipedia',0,0,0,0.00,'2012-11-16 00:00:00'),('nr-Wikipedia',0,0,0,0.00,'2013-05-09 00:00:00'),('nr-Wikipedia',0,0,0,0.00,'2014-06-17 00:00:00'),('nr-Wikipedia',0,0,0,0.00,'2014-10-29 00:00:00'),('nr-Wikipedia',0,0,0,0.00,'2015-06-26 00:00:00'),('nr-Wikipedia',0,12,12,0.00,'2016-03-05 00:00:00'),('nr-Wikipedia',0,12,12,0.00,'2016-11-24 00:00:00'),('nr-Wikipedia',0,12,12,0.00,'2017-09-05 00:00:00'),('nr-Wikipedia',0,12,12,0.00,'2018-06-30 00:00:00'),('nr-Wikipedia',350,11,11,0.00,'2019-03-27 00:00:00'),('nr-Wikipedia',0,11,1,0.00,'2020-11-15 00:00:00'),('nso-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('nso-Wikipedia',0,0,0,0.00,'2011-02-11 00:00:00'),('nso-Wikipedia',0,0,0,0.00,'2012-04-13 00:00:00'),('nso-Wikipedia',0,0,0,0.00,'2012-11-16 00:00:00'),('nso-Wikipedia',0,0,0,0.00,'2013-05-09 00:00:00'),('nso-Wikipedia',0,0,0,0.00,'2014-06-17 00:00:00'),('nso-Wikipedia',0,0,0,0.00,'2014-10-29 00:00:00'),('nso-Wikipedia',0,1000,1000,0.00,'2015-06-26 00:00:00'),('nso-Wikipedia',0,2830,2830,0.00,'2016-03-05 00:00:00'),('nso-Wikipedia',0,7605,7605,0.00,'2016-11-24 00:00:00'),('nso-Wikipedia',0,7823,7823,0.00,'2017-09-05 00:00:00'),('nso-Wikipedia',0,8050,8050,0.00,'2018-06-30 00:00:00'),('nso-Wikipedia',0,8018,8018,0.00,'2019-03-27 00:00:00'),('nso-Wikipedia',257938,8173,8173,0.59,'2019-11-09 00:00:00'),('nso-Wikipedia',266006,8217,9,0.68,'2020-11-15 00:00:00'),('nso-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('nso-Wikitionary',0,80,1,0.68,'2020-11-15 00:00:00'),('ny-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('ny-Wikipedia',154700,765,14,0.13,'2020-11-15 00:00:00'),('ny-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('ny-Wikitionary',0,1,1,0.13,'2020-11-15 00:00:00'),('om-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('om-Wikipedia',225294,858,13,0.57,'2020-11-15 00:00:00'),('om-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('om-Wikitionary',1446,343,1,0.57,'2020-11-15 00:00:00'),('rn-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('rn-Wikipedia',45085,616,10,0.00,'2020-11-15 00:00:00'),('rw-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('rw-Wikipedia',0,1501,1501,0.00,'2011-02-11 00:00:00'),('rw-Wikipedia',0,1807,1807,0.00,'2012-04-13 00:00:00'),('rw-Wikipedia',0,1807,1807,0.00,'2012-11-16 00:00:00'),('rw-Wikipedia',0,1817,1817,0.00,'2013-05-09 00:00:00'),('rw-Wikipedia',0,1832,1832,0.00,'2014-06-17 00:00:00'),('rw-Wikipedia',0,1834,1834,0.00,'2014-10-29 00:00:00'),('rw-Wikipedia',0,1780,1780,0.00,'2015-06-26 00:00:00'),('rw-Wikipedia',0,1785,1785,0.00,'2016-03-05 00:00:00'),('rw-Wikipedia',0,1799,1799,0.00,'2016-11-24 00:00:00'),('rw-Wikipedia',0,1810,1810,0.00,'2017-09-05 00:00:00'),('rw-Wikipedia',0,1823,1823,0.00,'2018-06-30 00:00:00'),('rw-Wikipedia',0,1822,1822,0.00,'2019-03-27 00:00:00'),('rw-Wikipedia',112802,1824,1824,0.20,'2019-11-09 00:00:00'),('rw-Wikipedia',191423,1947,34,0.03,'2020-11-15 00:00:00'),('rw-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('rw-Wikitionary',10133,367,4,0.03,'2020-11-15 00:00:00'),('sg-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('sg-Wikipedia',14756,266,7,0.25,'2020-11-15 00:00:00'),('sg-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('sg-Wikitionary',1213,122,8,0.25,'2020-11-15 00:00:00'),('sn-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('sn-Wikipedia',0,0,0,0.00,'2011-02-11 00:00:00'),('sn-Wikipedia',0,0,0,0.00,'2012-04-13 00:00:00'),('sn-Wikipedia',0,1272,1272,0.00,'2012-11-16 00:00:00'),('sn-Wikipedia',0,1421,1421,0.00,'2013-05-09 00:00:00'),('sn-Wikipedia',0,2077,2077,0.00,'2014-06-17 00:00:00'),('sn-Wikipedia',0,2091,2091,0.00,'2014-10-29 00:00:00'),('sn-Wikipedia',0,2321,2321,0.00,'2015-06-26 00:00:00'),('sn-Wikipedia',0,2459,2459,0.00,'2016-03-05 00:00:00'),('sn-Wikipedia',0,2638,2638,0.00,'2016-11-24 00:00:00'),('sn-Wikipedia',0,2851,2851,0.00,'2017-09-05 00:00:00'),('sn-Wikipedia',0,3630,3630,0.00,'2018-06-30 00:00:00'),('sn-Wikipedia',0,4270,4270,0.00,'2019-03-27 00:00:00'),('sn-Wikipedia',375594,4837,4837,0.10,'2019-11-09 00:00:00'),('sn-Wikipedia',618399,6342,27,0.12,'2020-11-15 00:00:00'),('sn-Wikisource',0,0,0,0.00,'2010-01-01 00:00:00'),('sn-Wikisource',0,3,0,0.12,'2020-11-15 00:00:00'),('sn-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('sn-Wikitionary',0,2,1,0.12,'2020-11-15 00:00:00'),('so-Wikibooks',0,0,0,0.00,'2010-01-01 00:00:00'),('so-Wikibooks',0,48,1,0.81,'2020-11-15 00:00:00'),('so-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('so-Wikipedia',0,1639,1639,0.00,'2011-02-11 00:00:00'),('so-Wikipedia',0,2354,2354,0.00,'2012-04-13 00:00:00'),('so-Wikipedia',0,0,0,0.00,'2012-11-16 00:00:00'),('so-Wikipedia',0,3646,3646,0.00,'2013-05-09 00:00:00'),('so-Wikipedia',0,3680,3680,0.00,'2014-06-17 00:00:00'),('so-Wikipedia',0,3446,3446,0.00,'2014-10-29 00:00:00'),('so-Wikipedia',0,3446,3446,0.00,'2015-06-26 00:00:00'),('so-Wikipedia',0,3878,3878,0.00,'2016-03-05 00:00:00'),('so-Wikipedia',0,4322,4322,0.00,'2016-11-24 00:00:00'),('so-Wikipedia',0,4727,4727,0.00,'2017-09-05 00:00:00'),('so-Wikipedia',0,4898,4898,0.00,'2018-06-30 00:00:00'),('so-Wikipedia',0,5455,5455,0.00,'2019-03-27 00:00:00'),('so-Wikipedia',1519623,5676,5676,0.59,'2019-11-09 00:00:00'),('so-Wikipedia',1672413,5881,72,0.81,'2020-11-15 00:00:00'),('so-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('so-Wikitionary',14326,1639,7,0.81,'2020-11-15 00:00:00'),('ss-Wikipedia',0,116,116,0.00,'2008-05-01 00:00:00'),('ss-Wikipedia',0,146,146,0.00,'2008-12-16 00:00:00'),('ss-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('ss-Wikipedia',0,308,308,0.00,'2011-02-11 00:00:00'),('ss-Wikipedia',0,361,361,0.00,'2012-04-13 00:00:00'),('ss-Wikipedia',0,363,363,0.00,'2012-11-16 00:00:00'),('ss-Wikipedia',0,364,364,0.00,'2013-05-09 00:00:00'),('ss-Wikipedia',0,400,400,0.00,'2014-06-17 00:00:00'),('ss-Wikipedia',0,408,408,0.00,'2014-10-29 00:00:00'),('ss-Wikipedia',0,410,410,0.00,'2015-06-26 00:00:00'),('ss-Wikipedia',0,412,412,0.00,'2016-03-05 00:00:00'),('ss-Wikipedia',0,419,419,0.00,'2016-11-24 00:00:00'),('ss-Wikipedia',0,432,432,0.00,'2017-09-05 00:00:00'),('ss-Wikipedia',0,439,439,0.00,'2018-06-30 00:00:00'),('ss-Wikipedia',53835,467,467,0.16,'2019-03-27 00:00:00'),('ss-Wikipedia',65908,520,13,0.20,'2020-11-15 00:00:00'),('ss-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('ss-Wikitionary',4585,293,1,0.20,'2020-11-15 00:00:00'),('st-Wikipedia',0,53,53,0.00,'2008-05-01 00:00:00'),('st-Wikipedia',0,68,68,0.00,'2008-12-16 00:00:00'),('st-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('st-Wikipedia',0,117,117,0.00,'2011-02-11 00:00:00'),('st-Wikipedia',0,145,145,0.00,'2012-04-13 00:00:00'),('st-Wikipedia',0,151,151,0.00,'2012-11-16 00:00:00'),('st-Wikipedia',0,188,188,0.00,'2013-05-09 00:00:00'),('st-Wikipedia',0,197,197,0.00,'2014-06-17 00:00:00'),('st-Wikipedia',0,202,202,0.00,'2014-10-29 00:00:00'),('st-Wikipedia',0,223,223,0.00,'2015-06-26 00:00:00'),('st-Wikipedia',0,299,299,0.00,'2016-03-05 00:00:00'),('st-Wikipedia',0,341,341,0.00,'2016-11-24 00:00:00'),('st-Wikipedia',0,523,523,0.00,'2017-09-05 00:00:00'),('st-Wikipedia',0,539,539,0.00,'2018-06-30 00:00:00'),('st-Wikipedia',40537,546,546,0.08,'2019-03-27 00:00:00'),('st-Wikipedia',107428,794,16,0.18,'2020-11-15 00:00:00'),('st-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('st-Wikitionary',65416,1346,3,0.18,'2020-11-15 00:00:00'),('sw-Wikibooks',0,0,0,0.00,'2010-01-01 00:00:00'),('sw-Wikibooks',0,19,1,0.85,'2020-11-15 00:00:00'),('sw-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('sw-Wikipedia',0,21244,21244,0.00,'2011-02-11 00:00:00'),('sw-Wikipedia',0,23481,23481,0.00,'2012-04-13 00:00:00'),('sw-Wikipedia',0,24519,24519,0.00,'2012-11-16 00:00:00'),('sw-Wikipedia',0,25265,25265,0.00,'2013-05-09 00:00:00'),('sw-Wikipedia',0,26349,26349,0.00,'2014-06-17 00:00:00'),('sw-Wikipedia',0,27021,27021,0.00,'2014-10-29 00:00:00'),('sw-Wikipedia',0,29127,29127,0.00,'2015-06-26 00:00:00'),('sw-Wikipedia',0,32565,32565,0.00,'2016-03-05 00:00:00'),('sw-Wikipedia',0,34613,34613,0.00,'2016-11-24 00:00:00'),('sw-Wikipedia',0,37443,37443,0.00,'2017-09-05 00:00:00'),('sw-Wikipedia',0,42773,42773,0.00,'2018-06-30 00:00:00'),('sw-Wikipedia',0,49028,49028,0.00,'2019-03-27 00:00:00'),('sw-Wikipedia',7181502,54545,54545,0.77,'2019-11-09 00:00:00'),('sw-Wikipedia',8464013,60060,151,0.85,'2020-11-15 00:00:00'),('sw-Wikisource',0,0,0,0.00,'2010-01-01 00:00:00'),('sw-Wikisource',0,31,0,0.85,'2020-11-15 00:00:00'),('sw-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('sw-Wikitionary',159961,14050,5,0.85,'2020-11-15 00:00:00'),('ti-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('ti-Wikipedia',32250,199,13,0.43,'2020-11-15 00:00:00'),('ti-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('ti-Wikitionary',3224,117,1,0.43,'2020-11-15 00:00:00'),('tn-Wikipedia',0,66,66,0.00,'2008-05-01 00:00:00'),('tn-Wikipedia',0,102,102,0.00,'2008-12-16 00:00:00'),('tn-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('tn-Wikipedia',0,105,105,0.00,'2011-02-11 00:00:00'),('tn-Wikipedia',0,490,490,0.00,'2012-04-13 00:00:00'),('tn-Wikipedia',0,497,497,0.00,'2012-11-16 00:00:00'),('tn-Wikipedia',0,495,495,0.00,'2013-05-09 00:00:00'),('tn-Wikipedia',0,510,510,0.00,'2014-06-17 00:00:00'),('tn-Wikipedia',0,513,513,0.00,'2014-10-29 00:00:00'),('tn-Wikipedia',0,503,503,0.00,'2015-06-26 00:00:00'),('tn-Wikipedia',0,538,538,0.00,'2016-03-05 00:00:00'),('tn-Wikipedia',0,615,615,0.00,'2016-11-24 00:00:00'),('tn-Wikipedia',0,639,639,0.00,'2017-09-05 00:00:00'),('tn-Wikipedia',0,641,641,0.00,'2018-06-30 00:00:00'),('tn-Wikipedia',280682,641,641,0.11,'2019-03-27 00:00:00'),('tn-Wikipedia',290262,712,14,0.14,'2020-11-15 00:00:00'),('tn-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('tn-Wikitionary',1152,106,2,0.14,'2020-11-15 00:00:00'),('ts-Wikipedia',0,71,71,0.00,'2008-05-01 00:00:00'),('ts-Wikipedia',0,150,150,0.00,'2008-12-16 00:00:00'),('ts-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('ts-Wikipedia',0,185,185,0.00,'2011-02-11 00:00:00'),('ts-Wikipedia',0,193,193,0.00,'2012-04-13 00:00:00'),('ts-Wikipedia',0,243,243,0.00,'2012-11-16 00:00:00'),('ts-Wikipedia',0,240,240,0.00,'2013-05-09 00:00:00'),('ts-Wikipedia',0,303,303,0.00,'2014-06-17 00:00:00'),('ts-Wikipedia',0,309,309,0.00,'2014-10-29 00:00:00'),('ts-Wikipedia',0,266,266,0.00,'2015-06-26 00:00:00'),('ts-Wikipedia',0,352,352,0.00,'2016-03-05 00:00:00'),('ts-Wikipedia',0,390,390,0.00,'2016-11-24 00:00:00'),('ts-Wikipedia',0,526,526,0.00,'2017-09-05 00:00:00'),('ts-Wikipedia',0,562,562,0.00,'2018-06-30 00:00:00'),('ts-Wikipedia',116831,584,584,0.50,'2019-03-27 00:00:00'),('ts-Wikipedia',152426,699,12,0.60,'2020-11-15 00:00:00'),('ts-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('ts-Wikitionary',6900,362,1,0.60,'2020-11-15 00:00:00'),('tum-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('tum-Wikipedia',28996,589,13,0.00,'2020-11-15 00:00:00'),('tw-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('tw-Wikipedia',66866,713,10,0.09,'2020-11-15 00:00:00'),('tw-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('tw-Wikitionary',0,8,1,0.09,'2020-11-15 00:00:00'),('umb-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('umb-Wikipedia',0,1,1,0.00,'2020-11-15 00:00:00'),('ve-Wikipedia',0,112,112,0.00,'2008-05-01 00:00:00'),('ve-Wikipedia',0,120,120,0.00,'2008-12-16 00:00:00'),('ve-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('ve-Wikipedia',0,192,192,0.00,'2011-02-11 00:00:00'),('ve-Wikipedia',0,190,190,0.00,'2012-04-13 00:00:00'),('ve-Wikipedia',0,194,194,0.00,'2012-11-16 00:00:00'),('ve-Wikipedia',0,204,204,0.00,'2013-05-09 00:00:00'),('ve-Wikipedia',0,209,209,0.00,'2014-06-17 00:00:00'),('ve-Wikipedia',0,208,208,0.00,'2014-10-29 00:00:00'),('ve-Wikipedia',0,151,151,0.00,'2015-06-26 00:00:00'),('ve-Wikipedia',0,228,228,0.00,'2016-03-05 00:00:00'),('ve-Wikipedia',0,238,238,0.00,'2016-11-24 00:00:00'),('ve-Wikipedia',0,256,256,0.00,'2017-09-05 00:00:00'),('ve-Wikipedia',0,256,256,0.00,'2018-06-30 00:00:00'),('ve-Wikipedia',28002,265,265,0.00,'2019-03-27 00:00:00'),('ve-Wikipedia',34213,370,8,0.00,'2020-11-15 00:00:00'),('wo-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('wo-Wikipedia',0,1096,1096,0.00,'2011-02-11 00:00:00'),('wo-Wikipedia',0,1116,1116,0.00,'2012-04-13 00:00:00'),('wo-Wikipedia',0,1129,1129,0.00,'2012-11-16 00:00:00'),('wo-Wikipedia',0,1161,1161,0.00,'2013-05-09 00:00:00'),('wo-Wikipedia',0,1201,1201,0.00,'2014-06-17 00:00:00'),('wo-Wikipedia',0,1148,1148,0.00,'2014-10-29 00:00:00'),('wo-Wikipedia',0,1023,1023,0.00,'2015-06-26 00:00:00'),('wo-Wikipedia',0,1044,1044,0.00,'2016-03-05 00:00:00'),('wo-Wikipedia',0,1058,1058,0.00,'2016-11-24 00:00:00'),('wo-Wikipedia',0,1157,1157,0.00,'2017-09-05 00:00:00'),('wo-Wikipedia',0,1166,1166,0.00,'2018-06-30 00:00:00'),('wo-Wikipedia',0,1183,1183,0.00,'2019-03-27 00:00:00'),('wo-Wikipedia',562461,1353,1353,0.81,'2019-11-09 00:00:00'),('wo-Wikipedia',647547,1419,13,0.82,'2020-11-15 00:00:00'),('wo-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('wo-Wikitionary',52506,2570,4,0.82,'2020-11-15 00:00:00'),('xh-Wikipedia',0,100,100,0.00,'2008-05-01 00:00:00'),('xh-Wikipedia',0,109,109,0.00,'2008-12-16 00:00:00'),('xh-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('xh-Wikipedia',0,116,116,0.00,'2011-02-11 00:00:00'),('xh-Wikipedia',0,136,136,0.00,'2012-04-13 00:00:00'),('xh-Wikipedia',0,141,141,0.00,'2012-11-16 00:00:00'),('xh-Wikipedia',0,148,148,0.00,'2013-05-09 00:00:00'),('xh-Wikipedia',0,333,333,0.00,'2014-06-17 00:00:00'),('xh-Wikipedia',0,380,380,0.00,'2014-10-29 00:00:00'),('xh-Wikipedia',0,356,356,0.00,'2015-06-26 00:00:00'),('xh-Wikipedia',0,473,473,0.00,'2016-03-05 00:00:00'),('xh-Wikipedia',0,576,576,0.00,'2016-11-24 00:00:00'),('xh-Wikipedia',0,708,708,0.00,'2017-09-05 00:00:00'),('xh-Wikipedia',0,738,738,0.00,'2018-06-30 00:00:00'),('xh-Wikipedia',205978,790,790,0.30,'2019-03-27 00:00:00'),('xh-Wikipedia',241922,1063,20,0.33,'2020-11-15 00:00:00'),('xh-Wikisource',0,0,0,0.00,'2010-01-01 00:00:00'),('xh-Wikisource',0,3,0,0.33,'2020-11-15 00:00:00'),('xh-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('xh-Wikitionary',0,38,1,0.33,'2020-11-15 00:00:00'),('yo-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('yo-Wikipedia',0,12174,12174,0.00,'2011-02-11 00:00:00'),('yo-Wikipedia',0,29894,29894,0.00,'2012-04-13 00:00:00'),('yo-Wikipedia',0,30158,30158,0.00,'2012-11-16 00:00:00'),('yo-Wikipedia',0,30585,30585,0.00,'2013-05-09 00:00:00'),('yo-Wikipedia',0,30910,30910,0.00,'2014-06-17 00:00:00'),('yo-Wikipedia',0,30989,30989,0.00,'2014-10-29 00:00:00'),('yo-Wikipedia',0,31068,31068,0.00,'2015-06-26 00:00:00'),('yo-Wikipedia',0,31172,31172,0.00,'2016-03-05 00:00:00'),('yo-Wikipedia',0,31483,31483,0.00,'2016-11-24 00:00:00'),('yo-Wikipedia',0,31577,31577,0.00,'2017-09-05 00:00:00'),('yo-Wikipedia',0,31672,31672,0.00,'2018-06-30 00:00:00'),('yo-Wikipedia',0,31865,31865,0.00,'2019-03-27 00:00:00'),('yo-Wikipedia',1226307,31961,31961,0.97,'2019-11-09 00:00:00'),('yo-Wikipedia',1775866,33074,52,0.99,'2020-11-15 00:00:00'),('yo-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('yo-Wikitionary',0,182381,1,0.99,'2020-11-15 00:00:00'),('zu-Wikibooks',0,0,0,0.00,'2010-01-01 00:00:00'),('zu-Wikibooks',0,4,1,0.37,'2020-11-15 00:00:00'),('zu-Wikipedia',0,141,141,0.00,'2008-05-01 00:00:00'),('zu-Wikipedia',0,182,182,0.00,'2008-12-16 00:00:00'),('zu-Wikipedia',0,0,0,0.00,'2010-01-01 00:00:00'),('zu-Wikipedia',0,209,209,0.00,'2011-02-11 00:00:00'),('zu-Wikipedia',0,483,483,0.00,'2012-04-13 00:00:00'),('zu-Wikipedia',0,568,568,0.00,'2012-11-16 00:00:00'),('zu-Wikipedia',0,579,579,0.00,'2013-05-09 00:00:00'),('zu-Wikipedia',0,630,630,0.00,'2014-06-17 00:00:00'),('zu-Wikipedia',0,686,686,0.00,'2014-10-29 00:00:00'),('zu-Wikipedia',0,683,683,0.00,'2015-06-26 00:00:00'),('zu-Wikipedia',0,742,742,0.00,'2016-03-05 00:00:00'),('zu-Wikipedia',0,777,777,0.00,'2016-11-24 00:00:00'),('zu-Wikipedia',0,942,942,0.00,'2017-09-05 00:00:00'),('zu-Wikipedia',0,959,959,0.00,'2018-06-30 00:00:00'),('zu-Wikipedia',134238,1066,1066,0.22,'2019-03-27 00:00:00'),('zu-Wikipedia',305813,5038,26,0.37,'2020-11-15 00:00:00'),('zu-Wikisource',0,0,0,0.00,'2010-01-01 00:00:00'),('zu-Wikisource',0,2,0,0.37,'2020-11-15 00:00:00'),('zu-Wikitionary',0,0,0,0.00,'2010-01-01 00:00:00'),('zu-Wikitionary',9755,1111,4,0.37,'2020-11-15 00:00:00');
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

-- Dump completed on 2021-07-12 14:49:13
