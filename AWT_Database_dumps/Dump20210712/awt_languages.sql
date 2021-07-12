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
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `language_code` varchar(5) NOT NULL,
  `language_name` varchar(120) NOT NULL,
  `language_name_one` varchar(120) DEFAULT NULL,
  `language_name_two` varchar(120) DEFAULT NULL,
  `first_language_speakers` int DEFAULT NULL,
  `second_language_speakers` int DEFAULT NULL,
  PRIMARY KEY (`language_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES ('aa','Afar','Afar Af','Afaraf',1973800,NULL),('aao','Algerian Saharan Arabic','Tamanrasset Arabic','Tamanghasset Arabic',110000,NULL),('abr','Abron','Bono','Brong',1393000,NULL),('ada','Dangme','Adaŋgbi',NULL,800000,NULL),('aeb','Tunisian Arabic','Tounsi',NULL,11200000,NULL),('af','Afrikaans',NULL,NULL,7200000,NULL),('ak','Akan',NULL,NULL,11139000,NULL),('am','Amharic','Amarəñña',NULL,21800000,NULL),('apd','Sudanese Arabic',NULL,NULL,31900000,NULL),('ar','Arabic','al-ʿarabiyyah',NULL,150000000,NULL),('arq ','Algerian Arabic','Darja',NULL,42500000,NULL),('ary','Moroccan Arabic','Darija',NULL,30551000,NULL),('arz','Egyptian Arabic','Masri',NULL,62422000,NULL),('avl','Eastern Egyptian Bedawi Arabic',NULL,NULL,1150000,NULL),('ayl','Libyan Arabic',NULL,NULL,4025000,NULL),('ber','Berber','Tamazight',NULL,16000000,NULL),('bho','Bhojpuri',NULL,NULL,65300,NULL),('bm','Bambara','bamanankan',NULL,4100000,NULL),('bwg','Sena','Barwe',NULL,258960,NULL),('ee','Ewe','Èʋegbe',NULL,5000000,NULL),('ff','Fulani','Fulah','Fulfulde',65000000,NULL),('fon','Fon','fɔ̀ngbè ','fõbè',2200000,NULL),('gaa','Ga','Gã',NULL,745000,NULL),('ha','Hausa','Halshen',NULL,80000000,NULL),('ig','Igbo',NULL,NULL,45000000,NULL),('kab','Kabyle','Taqbaylit',NULL,5600000,NULL),('kea','Cape Verdean Creole','Kriolu','Kriol ',871000,NULL),('kg','Kongo','Kikongo',NULL,6500000,NULL),('ki','Gikuyu','Kikuyu',NULL,6600000,NULL),('kmb','Kimbundu','North Mbundu',NULL,2100000,NULL),('lg','Luganda',NULL,NULL,8200000,NULL),('ln','Lingala',NULL,NULL,15000000,NULL),('lua','Tshiluba','Luba-Kasai',NULL,6300000,NULL),('luo','Luo','Dholuo',NULL,4200000,NULL),('mfe','Mauritian Creole','Morisien',NULL,1090000,NULL),('mg','Malagasy',NULL,NULL,25000000,NULL),('mkw','Kituba',NULL,NULL,5400000,NULL),('mos','Mossi','Mooré',NULL,7830000,NULL),('naq','Khoekhoe','Nama','Damara',200000,NULL),('nd','Northern Ndebele',NULL,NULL,1600000,NULL),('ndc','Ndau','Chindau','Njao',2400000,NULL),('nmq','Nambya','Nanzva',NULL,100000,NULL),('nr','Southern Ndebele',NULL,NULL,1100000,NULL),('nso','Northern Sotho','Sepedi',NULL,4700000,NULL),('ny','Chewa','Chichewa','Chinyanja',12000000,NULL),('om','Oromo','Afaan Oromoo',NULL,34000000,NULL),('os','Somali','Af Soomaali',NULL,16000000,NULL),('rn','Kirundi','Rundi',NULL,8800000,NULL),('rw','Kinyarwanda','Ikinyarwanda',NULL,9800000,NULL),('seh','Sena',NULL,NULL,1086040,NULL),('sg','Sango','Yângâ tî sängö',NULL,450000,NULL),('shu','Chadian Arabic','Shuwa',NULL,1600000,NULL),('sn','Shona','chiShona',NULL,15000000,NULL),('so','Soomaaliga ','Af Soomaali',NULL,16000000,NULL),('ss','Swazi','siSwati',NULL,2300000,NULL),('st','Sesotho','Sotho',NULL,5600000,NULL),('sw','Swahili','Kiswahili',NULL,15000000,NULL),('swb','Maore','Shimaore',NULL,152000,NULL),('swk','Sena',NULL,NULL,255000,NULL),('ti','Tigrinya',' tigriññā',NULL,9000000,NULL),('tn','Tswana','Setswana',NULL,5200000,NULL),('toi','Tonga',NULL,NULL,1500000,NULL),('ts','Tsonga','Xitsonga',NULL,12000000,NULL),('tum','Tumbuka','Chitumbuka',NULL,1546000,NULL),('tw','Twi','Akan Kasa',NULL,9000000,NULL),('umb','Umbundu',NULL,NULL,9500000,NULL),('ve','Tshivenda','Venda',NULL,1300000,NULL),('wo','Wolof',NULL,NULL,5454000,NULL),('xh','Xhosa','isiXhosa',NULL,8200000,NULL),('yo','Yoruba','Èdè Yorùbá',NULL,40000000,NULL),('zdj','Comorian','shikomori','Shimasiwa',948000,NULL),('zu','Zulu','isiZulu',NULL,12000000,NULL);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
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
