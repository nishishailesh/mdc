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
-- Table structure for table `examination`
--

DROP TABLE IF EXISTS `examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examination` (
  `examination_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `description` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `edit_specification` varchar(1000) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`examination_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100002 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination`
--

LOCK TABLES `examination` WRITE;
/*!40000 ALTER TABLE `examination` DISABLE KEYS */;
INSERT INTO `examination` VALUES (1,'MRD','',''),(2,'Name','',''),(3,'Age','',''),(4,'Gender','','{\"type\":\"select\",\"option\":\",M,F,O\"}'),(5,'Date of Admission','','{\"type\":\"date\"}'),(6,'Date of Discharge','','{\"type\":\"date\"}'),(7,'Fever Since (Days)','',''),(8,'Cough Since (Days)','',''),(9,'Sore Thtoat Since (Days)','',''),(10,'Breathlessness Since (Days)','',''),(11,'Chest Pain Since (Days)','',''),(12,'Country of Visit','',''),(13,'Date of Departure','','{\"type\":\"date\"}'),(14,'Date of Arrival','','{\"type\":\"date\"}'),(15,'Other Travel History','',''),(16,'Exposure','','{\"type\":\"select\",\"option\":\",Present,Absent\"}'),(17,'Hypertention','','{\"type\":\"select\",\"option\":\",Present,Absent\"}'),(18,'Diabetes Mellitus','','{\"type\":\"select\",\"option\":\",Present,Absent\"}'),(19,'Bronchial Asthma','','{\"type\":\"select\",\"option\":\",Present,Absent\"}'),(20,'Chronic Renal Disease','','{\"type\":\"select\",\"option\":\",Present,Absent\"}'),(21,'COPD','','{\"type\":\"select\",\"option\":\",Present,Absent\"}'),(22,'Malignancy','','{\"type\":\"select\",\"option\":\",Present,Absent\"}'),(23,'Heart Disease','','{\"type\":\"select\",\"option\":\",Present,Absent\"}'),(24,'Other Diseases','',''),(25,'Temperature (F)','-','{“type”:”number”,”step”:”0.1”}'),(26,'Pulse Rate/min','-','{“type”:”number”}'),(27,'BP (Sys/Dia) in mm/Hg','-',''),(28,'SpO2 (%)','-','{“type”:”number”}'),(29,'Respiratory Rate / min','-','{“type”:”number”}'),(30,'Accessory Muscle Usage','-','{\"type\":\"select\",\"option\":\",Present,Absent\"}'),(31,'Nasal Flaring','-','{\"type\":\"select\",\"option\":\",Present,Absent\"}'),(32,'Intercostal Indrawing','-','{\"type\":\"select\",\"option\":\",Present,Absent\"}'),(33,'Stridor','-','{\"type\":\"select\",\"option\":\",Present,Absent\"}'),(34,'Wheeze','-','{\"type\":\"select\",\"option\":\",Present,Absent\"}'),(35,'Crepitation','-','{\"type\":\"select\",\"option\":\",Present,Absent\"}'),(36,'Other Systemic Findings','-',''),(37,'Chest X Ray','-',''),(38,'HRCT Thorax','-',''),(39,'Other Radiology','-',''),(40,'Hb (gm/dL)','-',''),(41,'TCL (/cmm)','-',''),(42,'Platelet (/cmm)','-',''),(43,'CRP (mg/dL)','-',''),(44,'Creatinine (mg/dL)','-',''),(45,'ALT (U/L)','-',''),(46,'Other Lab Tests','-',''),(47,'RT-PCR of oro-nasopharyngeal Swab','-',''),(48,'Backrest','-','{\"type\":\"select\",\"option\":\",Given, Not Given\"}'),(49,'Room Air(Days)','-','{“type”:”number”}'),(50,'O2 Inhalation (Days)','-','{“type”:”number”}'),(51,'Mechanical Ventilation (Start Date)','-','{\"type\":\"date\"}'),(52,'Mechanical Ventilation (End Date)','-','{\"type\":\"date\"}'),(53,'Cap Osetlamavir 75 mg BD X 5 Days','-','{\"type\":\"select\",\"option\":\",Given, Not Given\"}'),(54,'Tab Azithromycin 500 mg OD X 5 Days','-','{\"type\":\"select\",\"option\":\",Given, Not Given\"}'),(55,'Tab Chloroquine 500 mg BD X 5 Days','-','{\"type\":\"select\",\"option\":\",Given, Not Given\"}'),(56,'Other Treatment','-',''),(57,'Temperature at Discharge (F)','-','{\"type\":\"number\",\"step\":\"0.1\"}'),(58,'PR at Discharge (/min)','-','{\"type\":\"number\"}'),(59,'Home Isolation till','-','{\"type\":\"date\"}'),(60,'Cap Osetlamavir 75 mg BD for days','-','{\"type\":\"number\"}'),(61,'Cap Omeprazole 20 mg BD','-','{\"type\":\"number\"}'),(62,'Tab MVBC/FA','-','{\"type\":\"number\"}'),(63,'Outcome','-','{\"type\":\"select\",\"option\":\",Improved,Cured, Status Quo\"}'),(64,'IV Fluids',NULL,''),(65,'BP (Sys/Dia) in mm/Hg',NULL,''),(66,'SpO2 (%)',NULL,'{\"type\":\"number\"}'),(67,'Other Advices','For Discharge',''),(68,'Discharge Type',NULL,'{\"type\":\"select\",\"option\":\",DOR,Discharge,LAMA,DAMA\"}'),(69,'Affidavit',NULL,''),(70,'Palpitation(Days)',NULL,''),(71,'Giddiness(Days)',NULL,''),(72,'pedal oedema(Days)',NULL,''),(73,'Weakness(Days)',NULL,''),(74,'Tingling(Days)',NULL,''),(75,'Numbness(Days)',NULL,''),(76,'Altered Sensorium(Days)',NULL,''),(77,'Tremors(Days)',NULL,''),(78,'Fesciculations(Days)',NULL,''),(79,'Gabaraman(Days)',NULL,''),(80,'Loose Stool',NULL,''),(81,'Constipation',NULL,''),(82,'Abdomenal distension',NULL,''),(83,'Anorexia',NULL,''),(84,'Nausea Vomiting',NULL,''),(85,'Hemetemesis',NULL,''),(86,'Bleeding P/R',NULL,''),(87,'Black Stool',NULL,''),(88,'Altered Sleep Pattern',NULL,''),(89,'Yellow discoloration of Sclera',NULL,''),(90,'Petecheal spots',NULL,''),(91,'Weightloss/Gain',NULL,''),(92,'Genital Ulcer',NULL,''),(93,'DECREASED URINE OUTPUT',NULL,''),(94,'HEMATURIA',NULL,''),(95,'BURNING MICTURITION',NULL,''),(96,'DIFFICULTY IN MICTURITION',NULL,''),(97,'GENERALISED SWELLING',NULL,''),(98,'HICCOUGH ',NULL,''),(99,'DYSUREA',NULL,''),(100,'IMPOTENCE',NULL,''),(101,'CONVULSION',NULL,''),(102,'ABNORMAL SENSATION OF SMELL',NULL,''),(103,'DIMINISHED / BLURRING VISION ',NULL,''),(104,'SQUINT ',NULL,''),(105,'DIPLOPIA',NULL,''),(106,'DROOPING OF EYE LID',NULL,''),(107,'DIFFICULTY IN CHEWING',NULL,''),(108,'LOSS OF SENSATION OVER FACE ',NULL,''),(109,'DEVIATION OF MOUTH',NULL,''),(110,'FACIAL ASYMMETRY',NULL,''),(111,'LOSS OF TASTE',NULL,''),(112,'VERTIGO / TINNITUS / DEAFNESS',NULL,''),(113,'NASAL REGURGITATION',NULL,''),(114,'HORSENESS OF VOICE',NULL,''),(115,'DYSPHAGIA',NULL,''),(116,'WASTING / INVOLUNTARY MOVEMENT OF TONQUE',NULL,''),(117,'CHANGE IN VOICE / SPEECH',NULL,''),(118,'MUSCLE WASTING',NULL,''),(119,'MUSCLE HYPERTROPHY',NULL,''),(120,'GAIT ABNORMALITY',NULL,''),(121,'EAR DISCHARGE ','',''),(122,'ROOT PAIN','',''),(123,'GIRDLE LIKE SENSATION','',''),(124,'SENSATION OF WALKING ON COTTON ','',''),(125,'INCOORDINATION','',''),(126,'HEADACHE','',''),(127,'DELIRIUM','',''),(128,'EASY FATIGABILITY','',''),(129,'FACIAL PUFFINESS','',''),(130,'JOINING PAIN ','',''),(131,'SUBCUTANEOUS NODULE','',''),(132,'HEMOPTYSIS','',''),(133,'UREA','',''),(134,'CALCIUM','',''),(135,'K+','',''),(136,'HCT','',''),(137,'AMYLASE','',''),(138,'LIPASE','',''),(139,'HBA1C','',''),(140,'FBS / PP2BS','',''),(141,'RBS','',''),(142,'LIPID PROFILE','',''),(143,'TOTAL PROTEIN','',''),(144,'ALBUMIN','',''),(145,'PHOSPHORUS','',''),(146,'ANTIBIOTICS','',''),(147,'ANTACIDS','',''),(148,'ANTIEMETICS','',''),(149,'IV FLUIDS','',''),(150,'NSAIDS','',''),(151,'ANTIHYPERTESIVE','',''),(152,'ANTI - DIABETICS','',''),(153,'CVS','',''),(154,'RS','',''),(155,'P/A','',''),(160,'DIAGNOSIS','',''),(161,'Chief Complain','',''),(162,'OPD Number','',''),(163,'Indoor Number','',''),(164,'On Admission','',''),(165,'On Discharge','',''),(166,'Laboratory on admission','',''),(167,'Radiology on admission','',''),(168,'Treatment Given','',''),(169,'Advice on Discharge','',''),(170,'Laboratory on discharge',NULL,''),(171,'Radiology on Discharge',NULL,''),(172,'ECG on Admission',NULL,''),(173,'ECG on discharge',NULL,''),(1001,'transfer type','Care Center Location','{\"type\":\"select\",\"option\":\",in,out\",\"help\":\" \"}'),(1002,'source location','Care Center Location','{\"type\":\"select\",\"option\":\",NCHS:E0,NCHS:E1,NCHS:E3\",\"help\":\" \"}'),(1003,'transfer reason','Reason','{\"help\":\" \"}'),(1004,'transfer authorization','details of document authorizing transfer','{\"type\":\"blob\",\"help\":\"photo,scanned document\"}'),(1005,'destination location','Care Center Location','{\"type\":\"select\",\"option\":\",NCHS:E0,NCHS:E1,NCHS:E3\",\"help\":\" \"}');
/*!40000 ALTER TABLE `examination` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-28  0:14:19
