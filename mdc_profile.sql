-- MySQL dump 10.18  Distrib 10.3.27-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: mdc
-- ------------------------------------------------------
-- Server version	10.3.27-MariaDB-0+deb10u1

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
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `profile_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `examination_id_list` varchar(500) NOT NULL,
  `class` varchar(30) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (-1,'Record Type','174','oc'),(0,'Basic Infomation','1,2,3,4,162,163,5,6,68','tc'),(1,'Clinical Information','160,161,164,165','tc'),(2,'Travel History','12,13,14,15','tc'),(3,'Exposure history','16','tc'),(4,'Comorbidities','17,18,19,20,22,22,23,24','tc'),(5,'Vitals on Admission','25,26,27,28','tc'),(6,'Systemic Examination (on Admission)','29,30,31,32,33,34,35,36,153,154,155','tc'),(7,'Investigations','166,170,167,171,172,173','tc'),(8,'Treatment Given','48,49,50,51,52,53,54,55,56,64,146,147,148,149,150,151,152','tc'),(9,'Vitals at Discharge','57,58,65,66','tc'),(10,'Advice on Discharge','59,60,61,62,67','oc'),(12,'History(CVS)','11,70,72,79',''),(13,'History(CNS)','71,73,74,75,76,77,78,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127','tc'),(14,'History ( GIT )','80,81,82,83,84,85,86,87,37,88,89,90,91,92','tc'),(15,'History ( Renal )','93,94,95,96,97,98,99,100,129','tc'),(16,'History (General)','7,126,128,130,131',''),(17,'History(RS)','8,9,10,132','tc'),(18,'Treatment','168,169',''),(101,'Transfer','1001,1002,1005,1003,1004','');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-20 17:47:56
