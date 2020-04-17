-- Created by Joey Bongar
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: nba
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `league`
--

DROP TABLE IF EXISTS `league`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `league` (
  `seasonId` int NOT NULL,
  `MVPId` int NOT NULL,
  `scoringLeaderId` int NOT NULL,
  `assistLeaderId` int NOT NULL,
  `reboundLeaderId` int NOT NULL,
  `championId` int NOT NULL,
  KEY `seasonId` (`seasonId`),
  KEY `MVPId` (`MVPId`),
  KEY `scoringLeaderId` (`scoringLeaderId`),
  KEY `assistLeaderId` (`assistLeaderId`),
  KEY `reboundLeaderId` (`reboundLeaderId`),
  KEY `championId` (`championId`),
  CONSTRAINT `league_ibfk_1` FOREIGN KEY (`seasonId`) REFERENCES `seasons` (`id`),
  CONSTRAINT `league_ibfk_2` FOREIGN KEY (`MVPId`) REFERENCES `players` (`id`),
  CONSTRAINT `league_ibfk_3` FOREIGN KEY (`scoringLeaderId`) REFERENCES `players` (`id`),
  CONSTRAINT `league_ibfk_4` FOREIGN KEY (`assistLeaderId`) REFERENCES `players` (`id`),
  CONSTRAINT `league_ibfk_5` FOREIGN KEY (`reboundLeaderId`) REFERENCES `players` (`id`),
  CONSTRAINT `league_ibfk_6` FOREIGN KEY (`championId`) REFERENCES `teams` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `league`
--

INSERT INTO `league` VALUES (1,82,122,316,337,25),(2,261,327,188,266,20),(3,375,319,84,201,8);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
