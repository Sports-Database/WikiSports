-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: nba
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
-- Table structure for table `games`
--
USE wiki_sports;
DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `GameId` int NOT NULL,
  `HomeId` int DEFAULT NULL,
  `AwayId` int DEFAULT NULL,
  `seasonId` int DEFAULT NULL,
  PRIMARY KEY (`GameId`),
  KEY `Team1Id_idx` (`HomeId`),
  KEY `Team2Id_idx` (`AwayId`),
  KEY `fk_SeasonId` (`seasonId`),
  CONSTRAINT `fk_AwayId` FOREIGN KEY (`AwayId`) REFERENCES `teams` (`id`),
  CONSTRAINT `fk_HomeId` FOREIGN KEY (`HomeId`) REFERENCES `teams` (`id`),
  CONSTRAINT `fk_SeasonId` FOREIGN KEY (`seasonId`) REFERENCES `seasons` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,1,2,1),(2,1,3,1),(3,1,4,1),(4,1,5,1),(5,1,6,1),(6,1,7,1),(7,1,8,1),(8,1,9,1),(9,1,10,1),(10,1,11,1),(11,1,12,1),(12,1,13,1),(13,1,14,1),(14,1,15,1),(15,1,16,1),(16,1,17,1),(17,1,18,1),(18,1,19,1),(19,1,20,1),(20,1,21,1),(21,1,22,1),(22,1,23,1),(23,1,24,1),(24,1,25,1),(25,1,26,1),(26,1,27,1),(27,1,28,1),(28,1,29,1),(29,1,30,1),(30,2,3,1),(31,2,4,1),(32,2,5,1),(33,2,6,1),(34,2,7,1),(35,2,8,1),(36,2,9,1),(37,2,10,1),(38,2,11,1),(39,2,12,1),(40,2,13,1),(41,2,14,1),(42,2,15,1),(43,2,16,1),(44,2,17,1),(45,2,18,1),(46,2,19,1),(47,2,20,1),(48,2,21,1),(49,2,22,1),(50,2,23,1),(51,2,24,1),(52,2,25,1),(53,2,26,1),(54,2,27,1),(55,2,28,1),(56,2,29,1),(57,2,30,1),(58,3,4,1),(59,3,5,1),(60,3,6,1),(61,3,7,1),(62,3,8,1),(63,3,9,1),(64,3,10,1),(65,3,11,1),(66,3,12,1),(67,3,13,1),(68,3,14,1),(69,3,15,1),(70,3,16,1),(71,3,17,1),(72,3,18,1),(73,3,19,1),(74,3,20,1),(75,3,21,1),(76,3,22,1),(77,3,23,1),(78,3,24,1),(79,3,25,1),(80,3,26,1),(81,3,27,1),(82,3,28,1),(83,3,29,1),(84,3,30,1),(85,4,5,1),(86,4,6,1),(87,4,7,1),(88,4,8,1),(89,4,9,1),(90,4,10,1),(91,4,11,1),(92,4,12,1),(93,4,13,1),(94,4,14,1),(95,4,15,1),(96,4,16,1),(97,4,17,1),(98,4,18,1),(99,4,19,1),(100,4,20,1),(101,4,21,1),(102,4,22,1),(103,4,23,1),(104,4,24,1),(105,4,25,1),(106,4,26,1),(107,4,27,1),(108,4,28,1),(109,4,29,1),(110,4,30,1),(111,5,6,1),(112,5,7,1),(113,5,8,1),(114,5,9,1),(115,5,10,1),(116,5,11,1),(117,5,12,1),(118,5,13,1),(119,5,14,1),(120,5,15,1),(121,5,16,1),(122,5,17,1),(123,5,18,1),(124,5,19,1),(125,5,20,1),(126,5,21,1),(127,5,22,1),(128,5,23,1),(129,5,24,1),(130,5,25,1),(131,5,26,1),(132,5,27,1),(133,5,28,1),(134,5,29,1),(135,5,30,1),(136,6,7,1),(137,6,8,1),(138,6,9,1),(139,6,10,1),(140,6,11,1),(141,6,12,1),(142,6,13,1),(143,6,14,1),(144,6,15,1),(145,6,16,1),(146,6,17,1),(147,6,18,1),(148,6,19,1),(149,6,20,1),(150,6,21,1),(151,6,22,1),(152,6,23,1),(153,6,24,1),(154,6,25,1),(155,6,26,1),(156,6,27,1),(157,6,28,1),(158,6,29,1),(159,6,30,1),(160,7,8,1),(161,7,9,1),(162,7,10,1),(163,7,11,1),(164,7,12,1),(165,7,13,1),(166,7,14,1),(167,7,15,1),(168,7,16,1),(169,7,17,1),(170,7,18,1),(171,7,19,1),(172,7,20,1),(173,7,21,1),(174,7,22,1),(175,7,23,1),(176,7,24,1),(177,7,25,1),(178,7,26,1),(179,7,27,1),(180,7,28,1),(181,7,29,1),(182,7,30,1),(183,8,9,1),(184,8,10,1),(185,8,11,1),(186,8,12,1),(187,8,13,1),(188,8,14,1),(189,8,15,1),(190,8,16,1),(191,8,17,1),(192,8,18,1),(193,8,19,1),(194,8,20,1),(195,8,21,1),(196,8,22,1),(197,8,23,1),(198,8,24,1),(199,8,25,1),(200,8,26,1),(201,8,27,1),(202,8,28,1),(203,8,29,1),(204,8,30,1),(205,9,10,1),(206,9,11,1),(207,9,12,1),(208,9,13,1),(209,9,14,1),(210,9,15,1),(211,9,16,1),(212,9,17,1),(213,9,18,1),(214,9,19,1),(215,9,20,1),(216,9,21,1),(217,9,22,1),(218,9,23,1),(219,9,24,1),(220,9,25,1),(221,9,26,1),(222,9,27,1),(223,9,28,1),(224,9,29,1),(225,9,30,1),(226,10,11,1),(227,10,12,1),(228,10,13,1),(229,10,14,1),(230,10,15,1),(231,10,16,1),(232,10,17,1),(233,10,18,1),(234,10,19,1),(235,10,20,1),(236,10,21,1),(237,10,22,1),(238,10,23,1),(239,10,24,1),(240,10,25,1),(241,10,26,1),(242,10,27,1),(243,10,28,1),(244,10,29,1),(245,10,30,1),(246,11,12,1),(247,11,13,1),(248,11,14,1),(249,11,15,1),(250,11,16,1),(251,11,17,1),(252,11,18,1),(253,11,19,1),(254,11,20,1),(255,11,21,1),(256,11,22,1),(257,11,23,1),(258,11,24,1),(259,11,25,1),(260,11,26,1),(261,11,27,1),(262,11,28,1),(263,11,29,1),(264,11,30,1),(265,12,13,1),(266,12,14,1),(267,12,15,1),(268,12,16,1),(269,12,17,1),(270,12,18,1),(271,12,19,1),(272,12,20,1),(273,12,21,1),(274,12,22,1),(275,12,23,1),(276,12,24,1),(277,12,25,1),(278,12,26,1),(279,12,27,1),(280,12,28,1),(281,12,29,1),(282,12,30,1),(283,13,14,1),(284,13,15,1),(285,13,16,1),(286,13,17,1),(287,13,18,1),(288,13,19,1),(289,13,20,1),(290,13,21,1),(291,13,22,1),(292,13,23,1),(293,13,24,1),(294,13,25,1),(295,13,26,1),(296,13,27,1),(297,13,28,1),(298,13,29,1),(299,13,30,1),(300,14,15,1),(301,14,16,1),(302,14,17,1),(303,14,18,1),(304,14,19,1),(305,14,20,1),(306,14,21,1),(307,14,22,1),(308,14,23,1),(309,14,24,1),(310,14,25,1),(311,14,26,1),(312,14,27,1),(313,14,28,1),(314,14,29,1),(315,14,30,1),(316,15,16,1),(317,15,17,1),(318,15,18,1),(319,15,19,1),(320,15,20,1),(321,15,21,1),(322,15,22,1),(323,15,23,1),(324,15,24,1),(325,15,25,1),(326,15,26,1),(327,15,27,1),(328,15,28,1),(329,15,29,1),(330,15,30,1),(331,16,17,1),(332,16,18,1),(333,16,19,1),(334,16,20,1),(335,16,21,1),(336,16,22,1),(337,16,23,1),(338,16,24,1),(339,16,25,1),(340,16,26,1),(341,16,27,1),(342,16,28,1),(343,16,29,1),(344,16,30,1),(345,17,18,1),(346,17,19,1),(347,17,20,1),(348,17,21,1),(349,17,22,1),(350,17,23,1),(351,17,24,1),(352,17,25,1),(353,17,26,1),(354,17,27,1),(355,17,28,1),(356,17,29,1),(357,17,30,1),(358,18,19,1),(359,18,20,1),(360,18,21,1),(361,18,22,1),(362,18,23,1),(363,18,24,1),(364,18,25,1),(365,18,26,1),(366,18,27,1),(367,18,28,1),(368,18,29,1),(369,18,30,1),(370,19,20,1),(371,19,21,1),(372,19,22,1),(373,19,23,1),(374,19,24,1),(375,19,25,1),(376,19,26,1),(377,19,27,1),(378,19,28,1),(379,19,29,1),(380,19,30,1),(381,20,21,1),(382,20,22,1),(383,20,23,1),(384,20,24,1),(385,20,25,1),(386,20,26,1),(387,20,27,1),(388,20,28,1),(389,20,29,1),(390,20,30,1),(391,21,22,1),(392,21,23,1),(393,21,24,1),(394,21,25,1),(395,21,26,1),(396,21,27,1),(397,21,28,1),(398,21,29,1),(399,21,30,1),(400,22,23,1),(401,22,24,1),(402,22,25,1),(403,22,26,1),(404,22,27,1),(405,22,28,1),(406,22,29,1),(407,22,30,1),(408,23,24,1),(409,23,25,1),(410,23,26,1),(411,23,27,1),(412,23,28,1),(413,23,29,1),(414,23,30,1),(415,24,25,1),(416,24,26,1),(417,24,27,1),(418,24,28,1),(419,24,29,1),(420,24,30,1),(421,25,26,1),(422,25,27,1),(423,25,28,1),(424,25,29,1),(425,25,30,1),(426,26,27,1),(427,26,28,1),(428,26,29,1),(429,26,30,1),(430,27,28,1),(431,27,29,1),(432,27,30,1),(433,28,29,1),(434,28,30,1),(435,29,30,1),(436,2,1,1),(437,3,1,1),(438,4,1,1),(439,5,1,1),(440,6,1,1),(441,7,1,1),(442,8,1,1),(443,9,1,1),(444,10,1,1),(445,11,1,1),(446,12,1,1),(447,13,1,1),(448,14,1,1),(449,15,1,1),(450,16,1,1),(451,17,1,1),(452,18,1,1),(453,19,1,1),(454,20,1,1),(455,21,1,1),(456,22,1,1),(457,23,1,1),(458,24,1,1),(459,25,1,1),(460,26,1,1),(461,27,1,1),(462,28,1,1),(463,29,1,1),(464,30,1,1),(465,3,2,1),(466,4,2,1),(467,5,2,1),(468,6,2,1),(469,7,2,1),(470,8,2,1),(471,9,2,1),(472,10,2,1),(473,11,2,1),(474,12,2,1),(475,13,2,1),(476,14,2,1),(477,15,2,1),(478,16,2,1),(479,17,2,1),(480,18,2,1),(481,19,2,1),(482,20,2,1),(483,21,2,1),(484,22,2,1),(485,23,2,1),(486,24,2,1),(487,25,2,1),(488,26,2,1),(489,27,2,1),(490,28,2,1),(491,29,2,1),(492,30,2,1),(493,4,3,1),(494,5,3,1),(495,6,3,1),(496,7,3,1),(497,8,3,1),(498,9,3,1),(499,10,3,1),(500,11,3,1),(501,12,3,1),(502,13,3,1),(503,14,3,1),(504,15,3,1),(505,16,3,1),(506,17,3,1),(507,18,3,1),(508,19,3,1),(509,20,3,1),(510,21,3,1),(511,22,3,1),(512,23,3,1),(513,24,3,1),(514,25,3,1),(515,26,3,1),(516,27,3,1),(517,28,3,1),(518,29,3,1),(519,30,3,1),(520,5,4,1),(521,6,4,1),(522,7,4,1),(523,8,4,1),(524,9,4,1),(525,10,4,1),(526,11,4,1),(527,12,4,1),(528,13,4,1),(529,14,4,1),(530,15,4,1),(531,16,4,1),(532,17,4,1),(533,18,4,1),(534,19,4,1),(535,20,4,1),(536,21,4,1),(537,22,4,1),(538,23,4,1),(539,24,4,1),(540,25,4,1),(541,26,4,1),(542,27,4,1),(543,28,4,1),(544,29,4,1),(545,30,4,1),(546,6,5,1),(547,7,5,1),(548,8,5,1),(549,9,5,1),(550,10,5,1),(551,11,5,1),(552,12,5,1),(553,13,5,1),(554,14,5,1),(555,15,5,1),(556,16,5,1),(557,17,5,1),(558,18,5,1),(559,19,5,1),(560,20,5,1),(561,21,5,1),(562,22,5,1),(563,23,5,1),(564,24,5,1),(565,25,5,1),(566,26,5,1),(567,27,5,1),(568,28,5,1),(569,29,5,1),(570,30,5,1),(571,7,6,1),(572,8,6,1),(573,9,6,1),(574,10,6,1),(575,11,6,1),(576,12,6,1),(577,13,6,1),(578,14,6,1),(579,15,6,1),(580,16,6,1),(581,17,6,1),(582,18,6,1),(583,19,6,1),(584,20,6,1),(585,21,6,1),(586,22,6,1),(587,23,6,1),(588,24,6,1),(589,25,6,1),(590,26,6,1),(591,27,6,1),(592,28,6,1),(593,29,6,1),(594,30,6,1),(595,8,7,1),(596,9,7,1),(597,10,7,1),(598,11,7,1),(599,12,7,1),(600,13,7,1),(601,14,7,1),(602,15,7,1),(603,16,7,1),(604,17,7,1),(605,18,7,1),(606,19,7,1),(607,20,7,1),(608,21,7,1),(609,22,7,1),(610,23,7,1),(611,24,7,1),(612,25,7,1),(613,26,7,1),(614,27,7,1),(615,28,7,1),(616,29,7,1),(617,30,7,1),(618,9,8,1),(619,10,8,1),(620,11,8,1),(621,12,8,1),(622,13,8,1),(623,14,8,1),(624,15,8,1),(625,16,8,1),(626,17,8,1),(627,18,8,1),(628,19,8,1),(629,20,8,1),(630,21,8,1),(631,22,8,1),(632,23,8,1),(633,24,8,1),(634,25,8,1),(635,26,8,1),(636,27,8,1),(637,28,8,1),(638,29,8,1),(639,30,8,1),(640,10,9,1),(641,11,9,1),(642,12,9,1),(643,13,9,1),(644,14,9,1),(645,15,9,1),(646,16,9,1),(647,17,9,1),(648,18,9,1),(649,19,9,1),(650,20,9,1),(651,21,9,1),(652,22,9,1),(653,23,9,1),(654,24,9,1),(655,25,9,1),(656,26,9,1),(657,27,9,1),(658,28,9,1),(659,29,9,1),(660,30,9,1),(661,11,10,1),(662,12,10,1),(663,13,10,1),(664,14,10,1),(665,15,10,1),(666,16,10,1),(667,17,10,1),(668,18,10,1),(669,19,10,1),(670,20,10,1),(671,21,10,1),(672,22,10,1),(673,23,10,1),(674,24,10,1),(675,25,10,1),(676,26,10,1),(677,27,10,1),(678,28,10,1),(679,29,10,1),(680,30,10,1),(681,12,11,1),(682,13,11,1),(683,14,11,1),(684,15,11,1),(685,16,11,1),(686,17,11,1),(687,18,11,1),(688,19,11,1),(689,20,11,1),(690,21,11,1),(691,22,11,1),(692,23,11,1),(693,24,11,1),(694,25,11,1),(695,26,11,1),(696,27,11,1),(697,28,11,1),(698,29,11,1),(699,30,11,1),(700,13,12,1),(701,14,12,1),(702,15,12,1),(703,16,12,1),(704,17,12,1),(705,18,12,1),(706,19,12,1),(707,20,12,1),(708,21,12,1),(709,22,12,1),(710,23,12,1),(711,24,12,1),(712,25,12,1),(713,26,12,1),(714,27,12,1),(715,28,12,1),(716,29,12,1),(717,30,12,1),(718,14,13,1),(719,15,13,1),(720,16,13,1),(721,17,13,1),(722,18,13,1),(723,19,13,1),(724,20,13,1),(725,21,13,1),(726,22,13,1),(727,23,13,1),(728,24,13,1),(729,25,13,1),(730,26,13,1),(731,27,13,1),(732,28,13,1),(733,29,13,1),(734,30,13,1),(735,15,14,1),(736,16,14,1),(737,17,14,1),(738,18,14,1),(739,19,14,1),(740,20,14,1),(741,21,14,1),(742,22,14,1),(743,23,14,1),(744,24,14,1),(745,25,14,1),(746,26,14,1),(747,27,14,1),(748,28,14,1),(749,29,14,1),(750,30,14,1),(751,16,15,1),(752,17,15,1),(753,18,15,1),(754,19,15,1),(755,20,15,1),(756,21,15,1),(757,22,15,1),(758,23,15,1),(759,24,15,1),(760,25,15,1),(761,26,15,1),(762,27,15,1),(763,28,15,1),(764,29,15,1),(765,30,15,1),(766,17,16,1),(767,18,16,1),(768,19,16,1),(769,20,16,1),(770,21,16,1),(771,22,16,1),(772,23,16,1),(773,24,16,1),(774,25,16,1),(775,26,16,1),(776,27,16,1),(777,28,16,1),(778,29,16,1),(779,30,16,1),(780,18,17,1),(781,19,17,1),(782,20,17,1),(783,21,17,1),(784,22,17,1),(785,23,17,1),(786,24,17,1),(787,25,17,1),(788,26,17,1),(789,27,17,1),(790,28,17,1),(791,29,17,1),(792,30,17,1),(793,19,18,1),(794,20,18,1),(795,21,18,1),(796,22,18,1),(797,23,18,1),(798,24,18,1),(799,25,18,1),(800,26,18,1),(801,27,18,1),(802,28,18,1),(803,29,18,1),(804,30,18,1),(805,20,19,1),(806,21,19,1),(807,22,19,1),(808,23,19,1),(809,24,19,1),(810,25,19,1),(811,26,19,1),(812,27,19,1),(813,28,19,1),(814,29,19,1),(815,30,19,1),(816,21,20,1),(817,22,20,1),(818,23,20,1),(819,24,20,1),(820,25,20,1),(821,26,20,1),(822,27,20,1),(823,28,20,1),(824,29,20,1),(825,30,20,1),(826,22,21,1),(827,23,21,1),(828,24,21,1),(829,25,21,1),(830,26,21,1),(831,27,21,1),(832,28,21,1),(833,29,21,1),(834,30,21,1),(835,23,22,1),(836,24,22,1),(837,25,22,1),(838,26,22,1),(839,27,22,1),(840,28,22,1),(841,29,22,1),(842,30,22,1),(843,24,23,1),(844,25,23,1),(845,26,23,1),(846,27,23,1),(847,28,23,1),(848,29,23,1),(849,30,23,1),(850,25,24,1),(851,26,24,1),(852,27,24,1),(853,28,24,1),(854,29,24,1),(855,30,24,1),(856,26,25,1),(857,27,25,1),(858,28,25,1),(859,29,25,1),(860,30,25,1),(861,27,26,1),(862,28,26,1),(863,29,26,1),(864,30,26,1),(865,28,27,1),(866,29,27,1),(867,30,27,1),(868,29,28,1),(869,30,28,1),(870,30,29,1),(871,1,2,2),(872,1,3,2),(873,1,4,2),(874,1,5,2),(875,1,6,2),(876,1,7,2),(877,1,8,2),(878,1,9,2),(879,1,10,2),(880,1,11,2),(881,1,12,2),(882,1,13,2),(883,1,14,2),(884,1,15,2),(885,1,16,2),(886,1,17,2),(887,1,18,2),(888,1,19,2),(889,1,20,2),(890,1,21,2),(891,1,22,2),(892,1,23,2),(893,1,24,2),(894,1,25,2),(895,1,26,2),(896,1,27,2),(897,1,28,2),(898,1,29,2),(899,1,30,2),(900,2,3,2),(901,2,4,2),(902,2,5,2),(903,2,6,2),(904,2,7,2),(905,2,8,2),(906,2,9,2),(907,2,10,2),(908,2,11,2),(909,2,12,2),(910,2,13,2),(911,2,14,2),(912,2,15,2),(913,2,16,2),(914,2,17,2),(915,2,18,2),(916,2,19,2),(917,2,20,2),(918,2,21,2),(919,2,22,2),(920,2,23,2),(921,2,24,2),(922,2,25,2),(923,2,26,2),(924,2,27,2),(925,2,28,2),(926,2,29,2),(927,2,30,2),(928,3,4,2),(929,3,5,2),(930,3,6,2),(931,3,7,2),(932,3,8,2),(933,3,9,2),(934,3,10,2),(935,3,11,2),(936,3,12,2),(937,3,13,2),(938,3,14,2),(939,3,15,2),(940,3,16,2),(941,3,17,2),(942,3,18,2),(943,3,19,2),(944,3,20,2),(945,3,21,2),(946,3,22,2),(947,3,23,2),(948,3,24,2),(949,3,25,2),(950,3,26,2),(951,3,27,2),(952,3,28,2),(953,3,29,2),(954,3,30,2),(955,4,5,2),(956,4,6,2),(957,4,7,2),(958,4,8,2),(959,4,9,2),(960,4,10,2),(961,4,11,2),(962,4,12,2),(963,4,13,2),(964,4,14,2),(965,4,15,2),(966,4,16,2),(967,4,17,2),(968,4,18,2),(969,4,19,2),(970,4,20,2),(971,4,21,2),(972,4,22,2),(973,4,23,2),(974,4,24,2),(975,4,25,2),(976,4,26,2),(977,4,27,2),(978,4,28,2),(979,4,29,2),(980,4,30,2),(981,5,6,2),(982,5,7,2),(983,5,8,2),(984,5,9,2),(985,5,10,2),(986,5,11,2),(987,5,12,2),(988,5,13,2),(989,5,14,2),(990,5,15,2),(991,5,16,2),(992,5,17,2),(993,5,18,2),(994,5,19,2),(995,5,20,2),(996,5,21,2),(997,5,22,2),(998,5,23,2),(999,5,24,2),(1000,5,25,2),(1001,5,26,2),(1002,5,27,2),(1003,5,28,2),(1004,5,29,2),(1005,5,30,2),(1006,6,7,2),(1007,6,8,2),(1008,6,9,2),(1009,6,10,2),(1010,6,11,2),(1011,6,12,2),(1012,6,13,2),(1013,6,14,2),(1014,6,15,2),(1015,6,16,2),(1016,6,17,2),(1017,6,18,2),(1018,6,19,2),(1019,6,20,2),(1020,6,21,2),(1021,6,22,2),(1022,6,23,2),(1023,6,24,2),(1024,6,25,2),(1025,6,26,2),(1026,6,27,2),(1027,6,28,2),(1028,6,29,2),(1029,6,30,2),(1030,7,8,2),(1031,7,9,2),(1032,7,10,2),(1033,7,11,2),(1034,7,12,2),(1035,7,13,2),(1036,7,14,2),(1037,7,15,2),(1038,7,16,2),(1039,7,17,2),(1040,7,18,2),(1041,7,19,2),(1042,7,20,2),(1043,7,21,2),(1044,7,22,2),(1045,7,23,2),(1046,7,24,2),(1047,7,25,2),(1048,7,26,2),(1049,7,27,2),(1050,7,28,2),(1051,7,29,2),(1052,7,30,2),(1053,8,9,2),(1054,8,10,2),(1055,8,11,2),(1056,8,12,2),(1057,8,13,2),(1058,8,14,2),(1059,8,15,2),(1060,8,16,2),(1061,8,17,2),(1062,8,18,2),(1063,8,19,2),(1064,8,20,2),(1065,8,21,2),(1066,8,22,2),(1067,8,23,2),(1068,8,24,2),(1069,8,25,2),(1070,8,26,2),(1071,8,27,2),(1072,8,28,2),(1073,8,29,2),(1074,8,30,2),(1075,9,10,2),(1076,9,11,2),(1077,9,12,2),(1078,9,13,2),(1079,9,14,2),(1080,9,15,2),(1081,9,16,2),(1082,9,17,2),(1083,9,18,2),(1084,9,19,2),(1085,9,20,2),(1086,9,21,2),(1087,9,22,2),(1088,9,23,2),(1089,9,24,2),(1090,9,25,2),(1091,9,26,2),(1092,9,27,2),(1093,9,28,2),(1094,9,29,2),(1095,9,30,2),(1096,10,11,2),(1097,10,12,2),(1098,10,13,2),(1099,10,14,2),(1100,10,15,2),(1101,10,16,2),(1102,10,17,2),(1103,10,18,2),(1104,10,19,2),(1105,10,20,2),(1106,10,21,2),(1107,10,22,2),(1108,10,23,2),(1109,10,24,2),(1110,10,25,2),(1111,10,26,2),(1112,10,27,2),(1113,10,28,2),(1114,10,29,2),(1115,10,30,2),(1116,11,12,2),(1117,11,13,2),(1118,11,14,2),(1119,11,15,2),(1120,11,16,2),(1121,11,17,2),(1122,11,18,2),(1123,11,19,2),(1124,11,20,2),(1125,11,21,2),(1126,11,22,2),(1127,11,23,2),(1128,11,24,2),(1129,11,25,2),(1130,11,26,2),(1131,11,27,2),(1132,11,28,2),(1133,11,29,2),(1134,11,30,2),(1135,12,13,2),(1136,12,14,2),(1137,12,15,2),(1138,12,16,2),(1139,12,17,2),(1140,12,18,2),(1141,12,19,2),(1142,12,20,2),(1143,12,21,2),(1144,12,22,2),(1145,12,23,2),(1146,12,24,2),(1147,12,25,2),(1148,12,26,2),(1149,12,27,2),(1150,12,28,2),(1151,12,29,2),(1152,12,30,2),(1153,13,14,2),(1154,13,15,2),(1155,13,16,2),(1156,13,17,2),(1157,13,18,2),(1158,13,19,2),(1159,13,20,2),(1160,13,21,2),(1161,13,22,2),(1162,13,23,2),(1163,13,24,2),(1164,13,25,2),(1165,13,26,2),(1166,13,27,2),(1167,13,28,2),(1168,13,29,2),(1169,13,30,2),(1170,14,15,2),(1171,14,16,2),(1172,14,17,2),(1173,14,18,2),(1174,14,19,2),(1175,14,20,2),(1176,14,21,2),(1177,14,22,2),(1178,14,23,2),(1179,14,24,2),(1180,14,25,2),(1181,14,26,2),(1182,14,27,2),(1183,14,28,2),(1184,14,29,2),(1185,14,30,2),(1186,15,16,2),(1187,15,17,2),(1188,15,18,2),(1189,15,19,2),(1190,15,20,2),(1191,15,21,2),(1192,15,22,2),(1193,15,23,2),(1194,15,24,2),(1195,15,25,2),(1196,15,26,2),(1197,15,27,2),(1198,15,28,2),(1199,15,29,2),(1200,15,30,2),(1201,16,17,2),(1202,16,18,2),(1203,16,19,2),(1204,16,20,2),(1205,16,21,2),(1206,16,22,2),(1207,16,23,2),(1208,16,24,2),(1209,16,25,2),(1210,16,26,2),(1211,16,27,2),(1212,16,28,2),(1213,16,29,2),(1214,16,30,2),(1215,17,18,2),(1216,17,19,2),(1217,17,20,2),(1218,17,21,2),(1219,17,22,2),(1220,17,23,2),(1221,17,24,2),(1222,17,25,2),(1223,17,26,2),(1224,17,27,2),(1225,17,28,2),(1226,17,29,2),(1227,17,30,2),(1228,18,19,2),(1229,18,20,2),(1230,18,21,2),(1231,18,22,2),(1232,18,23,2),(1233,18,24,2),(1234,18,25,2),(1235,18,26,2),(1236,18,27,2),(1237,18,28,2),(1238,18,29,2),(1239,18,30,2),(1240,19,20,2),(1241,19,21,2),(1242,19,22,2),(1243,19,23,2),(1244,19,24,2),(1245,19,25,2),(1246,19,26,2),(1247,19,27,2),(1248,19,28,2),(1249,19,29,2),(1250,19,30,2),(1251,20,21,2),(1252,20,22,2),(1253,20,23,2),(1254,20,24,2),(1255,20,25,2),(1256,20,26,2),(1257,20,27,2),(1258,20,28,2),(1259,20,29,2),(1260,20,30,2),(1261,21,22,2),(1262,21,23,2),(1263,21,24,2),(1264,21,25,2),(1265,21,26,2),(1266,21,27,2),(1267,21,28,2),(1268,21,29,2),(1269,21,30,2),(1270,22,23,2),(1271,22,24,2),(1272,22,25,2),(1273,22,26,2),(1274,22,27,2),(1275,22,28,2),(1276,22,29,2),(1277,22,30,2),(1278,23,24,2),(1279,23,25,2),(1280,23,26,2),(1281,23,27,2),(1282,23,28,2),(1283,23,29,2),(1284,23,30,2),(1285,24,25,2),(1286,24,26,2),(1287,24,27,2),(1288,24,28,2),(1289,24,29,2),(1290,24,30,2),(1291,25,26,2),(1292,25,27,2),(1293,25,28,2),(1294,25,29,2),(1295,25,30,2),(1296,26,27,2),(1297,26,28,2),(1298,26,29,2),(1299,26,30,2),(1300,27,28,2),(1301,27,29,2),(1302,27,30,2),(1303,28,29,2),(1304,28,30,2),(1305,29,30,2),(1306,2,1,2),(1307,3,1,2),(1308,4,1,2),(1309,5,1,2),(1310,6,1,2),(1311,7,1,2),(1312,8,1,2),(1313,9,1,2),(1314,10,1,2),(1315,11,1,2),(1316,12,1,2),(1317,13,1,2),(1318,14,1,2),(1319,15,1,2),(1320,16,1,2),(1321,17,1,2),(1322,18,1,2),(1323,19,1,2),(1324,20,1,2),(1325,21,1,2),(1326,22,1,2),(1327,23,1,2),(1328,24,1,2),(1329,25,1,2),(1330,26,1,2),(1331,27,1,2),(1332,28,1,2),(1333,29,1,2),(1334,30,1,2),(1335,3,2,2),(1336,4,2,2),(1337,5,2,2),(1338,6,2,2),(1339,7,2,2),(1340,8,2,2),(1341,9,2,2),(1342,10,2,2),(1343,11,2,2),(1344,12,2,2),(1345,13,2,2),(1346,14,2,2),(1347,15,2,2),(1348,16,2,2),(1349,17,2,2),(1350,18,2,2),(1351,19,2,2),(1352,20,2,2),(1353,21,2,2),(1354,22,2,2),(1355,23,2,2),(1356,24,2,2),(1357,25,2,2),(1358,26,2,2),(1359,27,2,2),(1360,28,2,2),(1361,29,2,2),(1362,30,2,2),(1363,4,3,2),(1364,5,3,2),(1365,6,3,2),(1366,7,3,2),(1367,8,3,2),(1368,9,3,2),(1369,10,3,2),(1370,11,3,2),(1371,12,3,2),(1372,13,3,2),(1373,14,3,2),(1374,15,3,2),(1375,16,3,2),(1376,17,3,2),(1377,18,3,2),(1378,19,3,2),(1379,20,3,2),(1380,21,3,2),(1381,22,3,2),(1382,23,3,2),(1383,24,3,2),(1384,25,3,2),(1385,26,3,2),(1386,27,3,2),(1387,28,3,2),(1388,29,3,2),(1389,30,3,2),(1390,5,4,2),(1391,6,4,2),(1392,7,4,2),(1393,8,4,2),(1394,9,4,2),(1395,10,4,2),(1396,11,4,2),(1397,12,4,2),(1398,13,4,2),(1399,14,4,2),(1400,15,4,2),(1401,16,4,2),(1402,17,4,2),(1403,18,4,2),(1404,19,4,2),(1405,20,4,2),(1406,21,4,2),(1407,22,4,2),(1408,23,4,2),(1409,24,4,2),(1410,25,4,2),(1411,26,4,2),(1412,27,4,2),(1413,28,4,2),(1414,29,4,2),(1415,30,4,2),(1416,6,5,2),(1417,7,5,2),(1418,8,5,2),(1419,9,5,2),(1420,10,5,2),(1421,11,5,2),(1422,12,5,2),(1423,13,5,2),(1424,14,5,2),(1425,15,5,2),(1426,16,5,2),(1427,17,5,2),(1428,18,5,2),(1429,19,5,2),(1430,20,5,2),(1431,21,5,2),(1432,22,5,2),(1433,23,5,2),(1434,24,5,2),(1435,25,5,2),(1436,26,5,2),(1437,27,5,2),(1438,28,5,2),(1439,29,5,2),(1440,30,5,2),(1441,7,6,2),(1442,8,6,2),(1443,9,6,2),(1444,10,6,2),(1445,11,6,2),(1446,12,6,2),(1447,13,6,2),(1448,14,6,2),(1449,15,6,2),(1450,16,6,2),(1451,17,6,2),(1452,18,6,2),(1453,19,6,2),(1454,20,6,2),(1455,21,6,2),(1456,22,6,2),(1457,23,6,2),(1458,24,6,2),(1459,25,6,2),(1460,26,6,2),(1461,27,6,2),(1462,28,6,2),(1463,29,6,2),(1464,30,6,2),(1465,8,7,2),(1466,9,7,2),(1467,10,7,2),(1468,11,7,2),(1469,12,7,2),(1470,13,7,2),(1471,14,7,2),(1472,15,7,2),(1473,16,7,2),(1474,17,7,2),(1475,18,7,2),(1476,19,7,2),(1477,20,7,2),(1478,21,7,2),(1479,22,7,2),(1480,23,7,2),(1481,24,7,2),(1482,25,7,2),(1483,26,7,2),(1484,27,7,2),(1485,28,7,2),(1486,29,7,2),(1487,30,7,2),(1488,9,8,2),(1489,10,8,2),(1490,11,8,2),(1491,12,8,2),(1492,13,8,2),(1493,14,8,2),(1494,15,8,2),(1495,16,8,2),(1496,17,8,2),(1497,18,8,2),(1498,19,8,2),(1499,20,8,2),(1500,21,8,2),(1501,22,8,2),(1502,23,8,2),(1503,24,8,2),(1504,25,8,2),(1505,26,8,2),(1506,27,8,2),(1507,28,8,2),(1508,29,8,2),(1509,30,8,2),(1510,10,9,2),(1511,11,9,2),(1512,12,9,2),(1513,13,9,2),(1514,14,9,2),(1515,15,9,2),(1516,16,9,2),(1517,17,9,2),(1518,18,9,2),(1519,19,9,2),(1520,20,9,2),(1521,21,9,2),(1522,22,9,2),(1523,23,9,2),(1524,24,9,2),(1525,25,9,2),(1526,26,9,2),(1527,27,9,2),(1528,28,9,2),(1529,29,9,2),(1530,30,9,2),(1531,11,10,2),(1532,12,10,2),(1533,13,10,2),(1534,14,10,2),(1535,15,10,2),(1536,16,10,2),(1537,17,10,2),(1538,18,10,2),(1539,19,10,2),(1540,20,10,2),(1541,21,10,2),(1542,22,10,2),(1543,23,10,2),(1544,24,10,2),(1545,25,10,2),(1546,26,10,2),(1547,27,10,2),(1548,28,10,2),(1549,29,10,2),(1550,30,10,2),(1551,12,11,2),(1552,13,11,2),(1553,14,11,2),(1554,15,11,2),(1555,16,11,2),(1556,17,11,2),(1557,18,11,2),(1558,19,11,2),(1559,20,11,2),(1560,21,11,2),(1561,22,11,2),(1562,23,11,2),(1563,24,11,2),(1564,25,11,2),(1565,26,11,2),(1566,27,11,2),(1567,28,11,2),(1568,29,11,2),(1569,30,11,2),(1570,13,12,2),(1571,14,12,2),(1572,15,12,2),(1573,16,12,2),(1574,17,12,2),(1575,18,12,2),(1576,19,12,2),(1577,20,12,2),(1578,21,12,2),(1579,22,12,2),(1580,23,12,2),(1581,24,12,2),(1582,25,12,2),(1583,26,12,2),(1584,27,12,2),(1585,28,12,2),(1586,29,12,2),(1587,30,12,2),(1588,14,13,2),(1589,15,13,2),(1590,16,13,2),(1591,17,13,2),(1592,18,13,2),(1593,19,13,2),(1594,20,13,2),(1595,21,13,2),(1596,22,13,2),(1597,23,13,2),(1598,24,13,2),(1599,25,13,2),(1600,26,13,2),(1601,27,13,2),(1602,28,13,2),(1603,29,13,2),(1604,30,13,2),(1605,15,14,2),(1606,16,14,2),(1607,17,14,2),(1608,18,14,2),(1609,19,14,2),(1610,20,14,2),(1611,21,14,2),(1612,22,14,2),(1613,23,14,2),(1614,24,14,2),(1615,25,14,2),(1616,26,14,2),(1617,27,14,2),(1618,28,14,2),(1619,29,14,2),(1620,30,14,2),(1621,16,15,2),(1622,17,15,2),(1623,18,15,2),(1624,19,15,2),(1625,20,15,2),(1626,21,15,2),(1627,22,15,2),(1628,23,15,2),(1629,24,15,2),(1630,25,15,2),(1631,26,15,2),(1632,27,15,2),(1633,28,15,2),(1634,29,15,2),(1635,30,15,2),(1636,17,16,2),(1637,18,16,2),(1638,19,16,2),(1639,20,16,2),(1640,21,16,2),(1641,22,16,2),(1642,23,16,2),(1643,24,16,2),(1644,25,16,2),(1645,26,16,2),(1646,27,16,2),(1647,28,16,2),(1648,29,16,2),(1649,30,16,2),(1650,18,17,2),(1651,19,17,2),(1652,20,17,2),(1653,21,17,2),(1654,22,17,2),(1655,23,17,2),(1656,24,17,2),(1657,25,17,2),(1658,26,17,2),(1659,27,17,2),(1660,28,17,2),(1661,29,17,2),(1662,30,17,2),(1663,19,18,2),(1664,20,18,2),(1665,21,18,2),(1666,22,18,2),(1667,23,18,2),(1668,24,18,2),(1669,25,18,2),(1670,26,18,2),(1671,27,18,2),(1672,28,18,2),(1673,29,18,2),(1674,30,18,2),(1675,20,19,2),(1676,21,19,2),(1677,22,19,2),(1678,23,19,2),(1679,24,19,2),(1680,25,19,2),(1681,26,19,2),(1682,27,19,2),(1683,28,19,2),(1684,29,19,2),(1685,30,19,2),(1686,21,20,2),(1687,22,20,2),(1688,23,20,2),(1689,24,20,2),(1690,25,20,2),(1691,26,20,2),(1692,27,20,2),(1693,28,20,2),(1694,29,20,2),(1695,30,20,2),(1696,22,21,2),(1697,23,21,2),(1698,24,21,2),(1699,25,21,2),(1700,26,21,2),(1701,27,21,2),(1702,28,21,2),(1703,29,21,2),(1704,30,21,2),(1705,23,22,2),(1706,24,22,2),(1707,25,22,2),(1708,26,22,2),(1709,27,22,2),(1710,28,22,2),(1711,29,22,2),(1712,30,22,2),(1713,24,23,2),(1714,25,23,2),(1715,26,23,2),(1716,27,23,2),(1717,28,23,2),(1718,29,23,2),(1719,30,23,2),(1720,25,24,2),(1721,26,24,2),(1722,27,24,2),(1723,28,24,2),(1724,29,24,2),(1725,30,24,2),(1726,26,25,2),(1727,27,25,2),(1728,28,25,2),(1729,29,25,2),(1730,30,25,2),(1731,27,26,2),(1732,28,26,2),(1733,29,26,2),(1734,30,26,2),(1735,28,27,2),(1736,29,27,2),(1737,30,27,2),(1738,29,28,2),(1739,30,28,2),(1740,30,29,2),(1741,1,2,3),(1742,1,3,3),(1743,1,4,3),(1744,1,5,3),(1745,1,6,3),(1746,1,7,3),(1747,1,8,3),(1748,1,9,3),(1749,1,10,3),(1750,1,11,3),(1751,1,12,3),(1752,1,13,3),(1753,1,14,3),(1754,1,15,3),(1755,1,16,3),(1756,1,17,3),(1757,1,18,3),(1758,1,19,3),(1759,1,20,3),(1760,1,21,3),(1761,1,22,3),(1762,1,23,3),(1763,1,24,3),(1764,1,25,3),(1765,1,26,3),(1766,1,27,3),(1767,1,28,3),(1768,1,29,3),(1769,1,30,3),(1770,2,3,3),(1771,2,4,3),(1772,2,5,3),(1773,2,6,3),(1774,2,7,3),(1775,2,8,3),(1776,2,9,3),(1777,2,10,3),(1778,2,11,3),(1779,2,12,3),(1780,2,13,3),(1781,2,14,3),(1782,2,15,3),(1783,2,16,3),(1784,2,17,3),(1785,2,18,3),(1786,2,19,3),(1787,2,20,3),(1788,2,21,3),(1789,2,22,3),(1790,2,23,3),(1791,2,24,3),(1792,2,25,3),(1793,2,26,3),(1794,2,27,3),(1795,2,28,3),(1796,2,29,3),(1797,2,30,3),(1798,3,4,3),(1799,3,5,3),(1800,3,6,3),(1801,3,7,3),(1802,3,8,3),(1803,3,9,3),(1804,3,10,3),(1805,3,11,3),(1806,3,12,3),(1807,3,13,3),(1808,3,14,3),(1809,3,15,3),(1810,3,16,3),(1811,3,17,3),(1812,3,18,3),(1813,3,19,3),(1814,3,20,3),(1815,3,21,3),(1816,3,22,3),(1817,3,23,3),(1818,3,24,3),(1819,3,25,3),(1820,3,26,3),(1821,3,27,3),(1822,3,28,3),(1823,3,29,3),(1824,3,30,3),(1825,4,5,3),(1826,4,6,3),(1827,4,7,3),(1828,4,8,3),(1829,4,9,3),(1830,4,10,3),(1831,4,11,3),(1832,4,12,3),(1833,4,13,3),(1834,4,14,3),(1835,4,15,3),(1836,4,16,3),(1837,4,17,3),(1838,4,18,3),(1839,4,19,3),(1840,4,20,3),(1841,4,21,3),(1842,4,22,3),(1843,4,23,3),(1844,4,24,3),(1845,4,25,3),(1846,4,26,3),(1847,4,27,3),(1848,4,28,3),(1849,4,29,3),(1850,4,30,3),(1851,5,6,3),(1852,5,7,3),(1853,5,8,3),(1854,5,9,3),(1855,5,10,3),(1856,5,11,3),(1857,5,12,3),(1858,5,13,3),(1859,5,14,3),(1860,5,15,3),(1861,5,16,3),(1862,5,17,3),(1863,5,18,3),(1864,5,19,3),(1865,5,20,3),(1866,5,21,3),(1867,5,22,3),(1868,5,23,3),(1869,5,24,3),(1870,5,25,3),(1871,5,26,3),(1872,5,27,3),(1873,5,28,3),(1874,5,29,3),(1875,5,30,3),(1876,6,7,3),(1877,6,8,3),(1878,6,9,3),(1879,6,10,3),(1880,6,11,3),(1881,6,12,3),(1882,6,13,3),(1883,6,14,3),(1884,6,15,3),(1885,6,16,3),(1886,6,17,3),(1887,6,18,3),(1888,6,19,3),(1889,6,20,3),(1890,6,21,3),(1891,6,22,3),(1892,6,23,3),(1893,6,24,3),(1894,6,25,3),(1895,6,26,3),(1896,6,27,3),(1897,6,28,3),(1898,6,29,3),(1899,6,30,3),(1900,7,8,3),(1901,7,9,3),(1902,7,10,3),(1903,7,11,3),(1904,7,12,3),(1905,7,13,3),(1906,7,14,3),(1907,7,15,3),(1908,7,16,3),(1909,7,17,3),(1910,7,18,3),(1911,7,19,3),(1912,7,20,3),(1913,7,21,3),(1914,7,22,3),(1915,7,23,3),(1916,7,24,3),(1917,7,25,3),(1918,7,26,3),(1919,7,27,3),(1920,7,28,3),(1921,7,29,3),(1922,7,30,3),(1923,8,9,3),(1924,8,10,3),(1925,8,11,3),(1926,8,12,3),(1927,8,13,3),(1928,8,14,3),(1929,8,15,3),(1930,8,16,3),(1931,8,17,3),(1932,8,18,3),(1933,8,19,3),(1934,8,20,3),(1935,8,21,3),(1936,8,22,3),(1937,8,23,3),(1938,8,24,3),(1939,8,25,3),(1940,8,26,3),(1941,8,27,3),(1942,8,28,3),(1943,8,29,3),(1944,8,30,3),(1945,9,10,3),(1946,9,11,3),(1947,9,12,3),(1948,9,13,3),(1949,9,14,3),(1950,9,15,3),(1951,9,16,3),(1952,9,17,3),(1953,9,18,3),(1954,9,19,3),(1955,9,20,3),(1956,9,21,3),(1957,9,22,3),(1958,9,23,3),(1959,9,24,3),(1960,9,25,3),(1961,9,26,3),(1962,9,27,3),(1963,9,28,3),(1964,9,29,3),(1965,9,30,3),(1966,10,11,3),(1967,10,12,3),(1968,10,13,3),(1969,10,14,3),(1970,10,15,3),(1971,10,16,3),(1972,10,17,3),(1973,10,18,3),(1974,10,19,3),(1975,10,20,3),(1976,10,21,3),(1977,10,22,3),(1978,10,23,3),(1979,10,24,3),(1980,10,25,3),(1981,10,26,3),(1982,10,27,3),(1983,10,28,3),(1984,10,29,3),(1985,10,30,3),(1986,11,12,3),(1987,11,13,3),(1988,11,14,3),(1989,11,15,3),(1990,11,16,3),(1991,11,17,3),(1992,11,18,3),(1993,11,19,3),(1994,11,20,3),(1995,11,21,3),(1996,11,22,3),(1997,11,23,3),(1998,11,24,3),(1999,11,25,3),(2000,11,26,3),(2001,11,27,3),(2002,11,28,3),(2003,11,29,3),(2004,11,30,3),(2005,12,13,3),(2006,12,14,3),(2007,12,15,3),(2008,12,16,3),(2009,12,17,3),(2010,12,18,3),(2011,12,19,3),(2012,12,20,3),(2013,12,21,3),(2014,12,22,3),(2015,12,23,3),(2016,12,24,3),(2017,12,25,3),(2018,12,26,3),(2019,12,27,3),(2020,12,28,3),(2021,12,29,3),(2022,12,30,3),(2023,13,14,3),(2024,13,15,3),(2025,13,16,3),(2026,13,17,3),(2027,13,18,3),(2028,13,19,3),(2029,13,20,3),(2030,13,21,3),(2031,13,22,3),(2032,13,23,3),(2033,13,24,3),(2034,13,25,3),(2035,13,26,3),(2036,13,27,3),(2037,13,28,3),(2038,13,29,3),(2039,13,30,3),(2040,14,15,3),(2041,14,16,3),(2042,14,17,3),(2043,14,18,3),(2044,14,19,3),(2045,14,20,3),(2046,14,21,3),(2047,14,22,3),(2048,14,23,3),(2049,14,24,3),(2050,14,25,3),(2051,14,26,3),(2052,14,27,3),(2053,14,28,3),(2054,14,29,3),(2055,14,30,3),(2056,15,16,3),(2057,15,17,3),(2058,15,18,3),(2059,15,19,3),(2060,15,20,3),(2061,15,21,3),(2062,15,22,3),(2063,15,23,3),(2064,15,24,3),(2065,15,25,3),(2066,15,26,3),(2067,15,27,3),(2068,15,28,3),(2069,15,29,3),(2070,15,30,3),(2071,16,17,3),(2072,16,18,3),(2073,16,19,3),(2074,16,20,3),(2075,16,21,3),(2076,16,22,3),(2077,16,23,3),(2078,16,24,3),(2079,16,25,3),(2080,16,26,3),(2081,16,27,3),(2082,16,28,3),(2083,16,29,3),(2084,16,30,3),(2085,17,18,3),(2086,17,19,3),(2087,17,20,3),(2088,17,21,3),(2089,17,22,3),(2090,17,23,3),(2091,17,24,3),(2092,17,25,3),(2093,17,26,3),(2094,17,27,3),(2095,17,28,3),(2096,17,29,3),(2097,17,30,3),(2098,18,19,3),(2099,18,20,3),(2100,18,21,3),(2101,18,22,3),(2102,18,23,3),(2103,18,24,3),(2104,18,25,3),(2105,18,26,3),(2106,18,27,3),(2107,18,28,3),(2108,18,29,3),(2109,18,30,3),(2110,19,20,3),(2111,19,21,3),(2112,19,22,3),(2113,19,23,3),(2114,19,24,3),(2115,19,25,3),(2116,19,26,3),(2117,19,27,3),(2118,19,28,3),(2119,19,29,3),(2120,19,30,3),(2121,20,21,3),(2122,20,22,3),(2123,20,23,3),(2124,20,24,3),(2125,20,25,3),(2126,20,26,3),(2127,20,27,3),(2128,20,28,3),(2129,20,29,3),(2130,20,30,3),(2131,21,22,3),(2132,21,23,3),(2133,21,24,3),(2134,21,25,3),(2135,21,26,3),(2136,21,27,3),(2137,21,28,3),(2138,21,29,3),(2139,21,30,3),(2140,22,23,3),(2141,22,24,3),(2142,22,25,3),(2143,22,26,3),(2144,22,27,3),(2145,22,28,3),(2146,22,29,3),(2147,22,30,3),(2148,23,24,3),(2149,23,25,3),(2150,23,26,3),(2151,23,27,3),(2152,23,28,3),(2153,23,29,3),(2154,23,30,3),(2155,24,25,3),(2156,24,26,3),(2157,24,27,3),(2158,24,28,3),(2159,24,29,3),(2160,24,30,3),(2161,25,26,3),(2162,25,27,3),(2163,25,28,3),(2164,25,29,3),(2165,25,30,3),(2166,26,27,3),(2167,26,28,3),(2168,26,29,3),(2169,26,30,3),(2170,27,28,3),(2171,27,29,3),(2172,27,30,3),(2173,28,29,3),(2174,28,30,3),(2175,29,30,3),(2176,2,1,3),(2177,3,1,3),(2178,4,1,3),(2179,5,1,3),(2180,6,1,3),(2181,7,1,3),(2182,8,1,3),(2183,9,1,3),(2184,10,1,3),(2185,11,1,3),(2186,12,1,3),(2187,13,1,3),(2188,14,1,3),(2189,15,1,3),(2190,16,1,3),(2191,17,1,3),(2192,18,1,3),(2193,19,1,3),(2194,20,1,3),(2195,21,1,3),(2196,22,1,3),(2197,23,1,3),(2198,24,1,3),(2199,25,1,3),(2200,26,1,3),(2201,27,1,3),(2202,28,1,3),(2203,29,1,3),(2204,30,1,3),(2205,3,2,3),(2206,4,2,3),(2207,5,2,3),(2208,6,2,3),(2209,7,2,3),(2210,8,2,3),(2211,9,2,3),(2212,10,2,3),(2213,11,2,3),(2214,12,2,3),(2215,13,2,3),(2216,14,2,3),(2217,15,2,3),(2218,16,2,3),(2219,17,2,3),(2220,18,2,3),(2221,19,2,3),(2222,20,2,3),(2223,21,2,3),(2224,22,2,3),(2225,23,2,3),(2226,24,2,3),(2227,25,2,3),(2228,26,2,3),(2229,27,2,3),(2230,28,2,3),(2231,29,2,3),(2232,30,2,3),(2233,4,3,3),(2234,5,3,3),(2235,6,3,3),(2236,7,3,3),(2237,8,3,3),(2238,9,3,3),(2239,10,3,3),(2240,11,3,3),(2241,12,3,3),(2242,13,3,3),(2243,14,3,3),(2244,15,3,3),(2245,16,3,3),(2246,17,3,3),(2247,18,3,3),(2248,19,3,3),(2249,20,3,3),(2250,21,3,3),(2251,22,3,3),(2252,23,3,3),(2253,24,3,3),(2254,25,3,3),(2255,26,3,3),(2256,27,3,3),(2257,28,3,3),(2258,29,3,3),(2259,30,3,3),(2260,5,4,3),(2261,6,4,3),(2262,7,4,3),(2263,8,4,3),(2264,9,4,3),(2265,10,4,3),(2266,11,4,3),(2267,12,4,3),(2268,13,4,3),(2269,14,4,3),(2270,15,4,3),(2271,16,4,3),(2272,17,4,3),(2273,18,4,3),(2274,19,4,3),(2275,20,4,3),(2276,21,4,3),(2277,22,4,3),(2278,23,4,3),(2279,24,4,3),(2280,25,4,3),(2281,26,4,3),(2282,27,4,3),(2283,28,4,3),(2284,29,4,3),(2285,30,4,3),(2286,6,5,3),(2287,7,5,3),(2288,8,5,3),(2289,9,5,3),(2290,10,5,3),(2291,11,5,3),(2292,12,5,3),(2293,13,5,3),(2294,14,5,3),(2295,15,5,3),(2296,16,5,3),(2297,17,5,3),(2298,18,5,3),(2299,19,5,3),(2300,20,5,3),(2301,21,5,3),(2302,22,5,3),(2303,23,5,3),(2304,24,5,3),(2305,25,5,3),(2306,26,5,3),(2307,27,5,3),(2308,28,5,3),(2309,29,5,3),(2310,30,5,3),(2311,7,6,3),(2312,8,6,3),(2313,9,6,3),(2314,10,6,3),(2315,11,6,3),(2316,12,6,3),(2317,13,6,3),(2318,14,6,3),(2319,15,6,3),(2320,16,6,3),(2321,17,6,3),(2322,18,6,3),(2323,19,6,3),(2324,20,6,3),(2325,21,6,3),(2326,22,6,3),(2327,23,6,3),(2328,24,6,3),(2329,25,6,3),(2330,26,6,3),(2331,27,6,3),(2332,28,6,3),(2333,29,6,3),(2334,30,6,3),(2335,8,7,3),(2336,9,7,3),(2337,10,7,3),(2338,11,7,3),(2339,12,7,3),(2340,13,7,3),(2341,14,7,3),(2342,15,7,3),(2343,16,7,3),(2344,17,7,3),(2345,18,7,3),(2346,19,7,3),(2347,20,7,3),(2348,21,7,3),(2349,22,7,3),(2350,23,7,3),(2351,24,7,3),(2352,25,7,3),(2353,26,7,3),(2354,27,7,3),(2355,28,7,3),(2356,29,7,3),(2357,30,7,3),(2358,9,8,3),(2359,10,8,3),(2360,11,8,3),(2361,12,8,3),(2362,13,8,3),(2363,14,8,3),(2364,15,8,3),(2365,16,8,3),(2366,17,8,3),(2367,18,8,3),(2368,19,8,3),(2369,20,8,3),(2370,21,8,3),(2371,22,8,3),(2372,23,8,3),(2373,24,8,3),(2374,25,8,3),(2375,26,8,3),(2376,27,8,3),(2377,28,8,3),(2378,29,8,3),(2379,30,8,3),(2380,10,9,3),(2381,11,9,3),(2382,12,9,3),(2383,13,9,3),(2384,14,9,3),(2385,15,9,3),(2386,16,9,3),(2387,17,9,3),(2388,18,9,3),(2389,19,9,3),(2390,20,9,3),(2391,21,9,3),(2392,22,9,3),(2393,23,9,3),(2394,24,9,3),(2395,25,9,3),(2396,26,9,3),(2397,27,9,3),(2398,28,9,3),(2399,29,9,3),(2400,30,9,3),(2401,11,10,3),(2402,12,10,3),(2403,13,10,3),(2404,14,10,3),(2405,15,10,3),(2406,16,10,3),(2407,17,10,3),(2408,18,10,3),(2409,19,10,3),(2410,20,10,3),(2411,21,10,3),(2412,22,10,3),(2413,23,10,3),(2414,24,10,3),(2415,25,10,3),(2416,26,10,3),(2417,27,10,3),(2418,28,10,3),(2419,29,10,3),(2420,30,10,3),(2421,12,11,3),(2422,13,11,3),(2423,14,11,3),(2424,15,11,3),(2425,16,11,3),(2426,17,11,3),(2427,18,11,3),(2428,19,11,3),(2429,20,11,3),(2430,21,11,3),(2431,22,11,3),(2432,23,11,3),(2433,24,11,3),(2434,25,11,3),(2435,26,11,3),(2436,27,11,3),(2437,28,11,3),(2438,29,11,3),(2439,30,11,3),(2440,13,12,3),(2441,14,12,3),(2442,15,12,3),(2443,16,12,3),(2444,17,12,3),(2445,18,12,3),(2446,19,12,3),(2447,20,12,3),(2448,21,12,3),(2449,22,12,3),(2450,23,12,3),(2451,24,12,3),(2452,25,12,3),(2453,26,12,3),(2454,27,12,3),(2455,28,12,3),(2456,29,12,3),(2457,30,12,3),(2458,14,13,3),(2459,15,13,3),(2460,16,13,3),(2461,17,13,3),(2462,18,13,3),(2463,19,13,3),(2464,20,13,3),(2465,21,13,3),(2466,22,13,3),(2467,23,13,3),(2468,24,13,3),(2469,25,13,3),(2470,26,13,3),(2471,27,13,3),(2472,28,13,3),(2473,29,13,3),(2474,30,13,3),(2475,15,14,3),(2476,16,14,3),(2477,17,14,3),(2478,18,14,3),(2479,19,14,3),(2480,20,14,3),(2481,21,14,3),(2482,22,14,3),(2483,23,14,3),(2484,24,14,3),(2485,25,14,3),(2486,26,14,3),(2487,27,14,3),(2488,28,14,3),(2489,29,14,3),(2490,30,14,3),(2491,16,15,3),(2492,17,15,3),(2493,18,15,3),(2494,19,15,3),(2495,20,15,3),(2496,21,15,3),(2497,22,15,3),(2498,23,15,3),(2499,24,15,3),(2500,25,15,3),(2501,26,15,3),(2502,27,15,3),(2503,28,15,3),(2504,29,15,3),(2505,30,15,3),(2506,17,16,3),(2507,18,16,3),(2508,19,16,3),(2509,20,16,3),(2510,21,16,3),(2511,22,16,3),(2512,23,16,3),(2513,24,16,3),(2514,25,16,3),(2515,26,16,3),(2516,27,16,3),(2517,28,16,3),(2518,29,16,3),(2519,30,16,3),(2520,18,17,3),(2521,19,17,3),(2522,20,17,3),(2523,21,17,3),(2524,22,17,3),(2525,23,17,3),(2526,24,17,3),(2527,25,17,3),(2528,26,17,3),(2529,27,17,3),(2530,28,17,3),(2531,29,17,3),(2532,30,17,3),(2533,19,18,3),(2534,20,18,3),(2535,21,18,3),(2536,22,18,3),(2537,23,18,3),(2538,24,18,3),(2539,25,18,3),(2540,26,18,3),(2541,27,18,3),(2542,28,18,3),(2543,29,18,3),(2544,30,18,3),(2545,20,19,3),(2546,21,19,3),(2547,22,19,3),(2548,23,19,3),(2549,24,19,3),(2550,25,19,3),(2551,26,19,3),(2552,27,19,3),(2553,28,19,3),(2554,29,19,3),(2555,30,19,3),(2556,21,20,3),(2557,22,20,3),(2558,23,20,3),(2559,24,20,3),(2560,25,20,3),(2561,26,20,3),(2562,27,20,3),(2563,28,20,3),(2564,29,20,3),(2565,30,20,3),(2566,22,21,3),(2567,23,21,3),(2568,24,21,3),(2569,25,21,3),(2570,26,21,3),(2571,27,21,3),(2572,28,21,3),(2573,29,21,3),(2574,30,21,3),(2575,23,22,3),(2576,24,22,3),(2577,25,22,3),(2578,26,22,3),(2579,27,22,3),(2580,28,22,3),(2581,29,22,3),(2582,30,22,3),(2583,24,23,3),(2584,25,23,3),(2585,26,23,3),(2586,27,23,3),(2587,28,23,3),(2588,29,23,3),(2589,30,23,3),(2590,25,24,3),(2591,26,24,3),(2592,27,24,3),(2593,28,24,3),(2594,29,24,3),(2595,30,24,3),(2596,26,25,3),(2597,27,25,3),(2598,28,25,3),(2599,29,25,3),(2600,30,25,3),(2601,27,26,3),(2602,28,26,3),(2603,29,26,3),(2604,30,26,3),(2605,28,27,3),(2606,29,27,3),(2607,30,27,3),(2608,29,28,3),(2609,30,28,3),(2610,30,29,3);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-04 15:34:46
