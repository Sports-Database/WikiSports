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
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `fanbase` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` VALUES (1,'Portland Trail Blazers','a.espncdn.com/i/teamlogos/nba/500/por.png',37940288),(2,'Los Angeles Lakers','a.espncdn.com/i/teamlogos/nba/500/lal.png',36436251),(3,'Golden State Warriors','a.espncdn.com/i/teamlogos/nba/500/gs.png',18360392),(4,'Dallas Mavericks','a.espncdn.com/i/teamlogos/nba/500/dal.png',18493210),(5,'Houston Rockets','a.espncdn.com/i/teamlogos/nba/500/hou.png',30384874),(6,'Brooklyn Nets','a.espncdn.com/i/teamlogos/nba/500/bkn.png',46444743),(7,'New York Knicks','a.espncdn.com/i/teamlogos/nba/500/ny.png',48069094),(8,'Utah Jazz','a.espncdn.com/i/teamlogos/nba/500/utah.png',8011240),(9,'Memphis Grizzlies','a.espncdn.com/i/teamlogos/nba/500/mem.png',17848921),(10,'Denver Nuggets','a.espncdn.com/i/teamlogos/nba/500/den.png',15210888),(11,'Sacramento Kings','a.espncdn.com/i/teamlogos/nba/500/sac.png',15507676),(12,'New Orleans Pelicans','a.espncdn.com/i/teamlogos/nba/500/no.png',24905716),(13,'Los Angeles Clippers','a.espncdn.com/i/teamlogos/nba/500/lac.png',28005555),(14,'Minnesota Timberwolves','a.espncdn.com/i/teamlogos/nba/500/min.png',15310628),(15,'Boston Celtics','a.espncdn.com/i/teamlogos/nba/500/bos.png',28536478),(16,'Chicago Bulls','a.espncdn.com/i/teamlogos/nba/500/chi.png',46750505),(17,'Toronto Raptors','a.espncdn.com/i/teamlogos/nba/500/tor.png',12143092),(18,'Miami Heat','a.espncdn.com/i/teamlogos/nba/500/mia.png',42463948),(19,'Milwaukee Bucks','a.espncdn.com/i/teamlogos/nba/500/mil.png',39890467),(20,'Detroit Pistons','a.espncdn.com/i/teamlogos/nba/500/det.png',22060489),(21,'Philadelphia 76ers','a.espncdn.com/i/teamlogos/nba/500/phi.png',26631046),(22,'Atlanta Hawks','a.espncdn.com/i/teamlogos/nba/500/atl.png',16973763),(23,'Washington Wizards','a.espncdn.com/i/teamlogos/nba/500/wsh.png',40975680),(24,'Charlotte Hornets','a.espncdn.com/i/teamlogos/nba/500/cha.png',17957112),(25,'Indiana Pacers','a.espncdn.com/i/teamlogos/nba/500/ind.png',45858523),(26,'Cleveland Cavaliers','a.espncdn.com/i/teamlogos/nba/500/cle.png',39421281),(27,'Orlando Magic','a.espncdn.com/i/teamlogos/nba/500/orl.png',9530836),(28,'San Antonio Spurs','a.espncdn.com/i/teamlogos/nba/500/sa.png',8390338),(29,'Phoenix Suns','a.espncdn.com/i/teamlogos/nba/500/phx.png',49359184),(30,'Oklahoma City Thunder','a.espncdn.com/i/teamlogos/nba/500/okc.png',42624905);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
