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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `id` int NOT NULL COMMENT '	',
  `name` varchar(30) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

INSERT INTO `players` VALUES (1,'Kemba Walker','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/walkeke02.jpg'),(2,'Marcus Smart','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/smartma01.jpg'),(3,'Brad Wanamaker','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/wanambr01.jpg'),(4,'Tremont Waters','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/watertr01.jpg'),(5,'Carsen Edwards','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/edwarca01.jpg'),(6,'Romeo Langford','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/langfro01.jpg'),(7,'Jaylen Brown','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/brownja02.jpg'),(8,'Javonte Green','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/greenja02.jpg'),(9,'Jayson Tatum','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/tatumja01.jpg'),(10,'Gordon Heyward','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/haywago01.jpg'),(11,'Grant Williams','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/willigr01.jpg'),(12,'Semi Ojeleye','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/ojelese01.jpg'),(13,'Daniel Theis','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/theisda01.jpg'),(14,'Enes Kanter','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/kanteen01.jpg'),(15,'Robert Williams','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/williro04.jpg'),(16,'Tacko Fall','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/fallta01.jpg'),(17,'Vincent Poirier','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/poirivi01.jpg'),(18,'Kemba Walker','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/walkeke02.jpg'),(19,'Marcus Smart','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/smartma01.jpg'),(20,'Brad Wanamaker','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/wanambr01.jpg'),(21,'Tremont Waters','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/watertr01.jpg'),(22,'Carsen Edwards','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/edwarca01.jpg'),(23,'Romeo Langford','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/langfro01.jpg'),(24,'Jaylen Brown','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/brownja02.jpg'),(25,'Javonte Green','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/greenja02.jpg'),(26,'Jayson Tatum','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/tatumja01.jpg'),(27,'Gordon Heyward','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/haywago01.jpg'),(28,'Grant Williams','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/willigr01.jpg'),(29,'Semi Ojeleye','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/ojelese01.jpg'),(30,'Daniel Theis','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/theisda01.jpg'),(31,'Enes Kanter','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/kanteen01.jpg'),(32,'Robert Williams','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/williro04.jpg'),(33,'Tacko Fall','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/fallta01.jpg'),(34,'Vincent Poirier','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/poirivi01.jpg'),(35,'Kyle Lowry','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/lowryky01.jpg'),(36,'Fred VanVleet','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/vanvlfr01.jpg'),(37,'Normal Powell','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/powelno01.jpg'),(38,'Terence Davis','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/daviste02.jpg'),(39,'Matt Thomas','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/thomama02.jpg'),(40,'OG Anunoby','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/anunoog01.jpg'),(41,'Patrick McCaw','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mccawpa01.jpg'),(42,'Rondae Hollis-Jefferson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/holliro01.jpg'),(43,'Oshae Brissett','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/brissos01.jpg'),(44,'Malcolm Miller','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/millema01.jpg'),(45,'Paul Watson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/antetko01.jpg (No player image)'),(46,'Pascal Siakam','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/siakapa01.jpg'),(47,'Stanley Johnson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/johnsst04.jpg'),(48,'Chris Boucher','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bouchch01.jpg'),(49,'Marc Gasol','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/gasolma01.jpg'),(50,'Serge Ibaka','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/ibakase01.jpg'),(51,'Dewan Hernandez','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/hernade01.jpg'),(52,'Collin Sexton','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/sextoco01.jpg'),(53,'Darius Garland','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/garlada01.jpg'),(54,'Dante Exum','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/exumda01.jpg'),(55,'Matthew Dellavedova','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/dellama01.jpg'),(56,'Matt Mooney','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/moonema01.jpg'),(57,'Cedi Osman','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/osmande01.jpg'),(58,'Kevin Porter Jr.','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/porteke02.jpg'),(59,'Alfonzo McKinnie','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mckinal01.jpg'),(60,'Dean Wade','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/wadede01.jpg'),(61,'Andre Drummond','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/drumman01.jpg'),(62,'Kevin Love','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/loveke01.jpg'),(63,'Tristan Thompson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/thomptr01.jpg'),(64,'Larry Nance Jr.','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/nancela02.jpg'),(65,'Ante Zizic','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/zizican01.jpg'),(66,'Dylan Windler','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/windldy01.jpg'),(67,'Zach LaVine','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/lavinza01.jpg'),(68,'Tomas Satoransky','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/satorto01.jpg'),(69,'Kris Dunn','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/dunnkr01.jpg'),(70,'Ryan Arcidiacono','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/arcidry01.jpg'),(71,'Shaquille Harrison','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/harrish01.jpg'),(72,'Coby White','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/whiteco01.jpg'),(73,'Adam Mokoka','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mokokad01.jpg'),(74,'Max Strus','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/strusma01.jpg'),(75,'Otto Porter','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/porteot01.jpg'),(76,'Denzel Valentine','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/valende01.jpg'),(77,'Chandler Hutchison','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/hutchch01.jpg'),(78,'Lauri Markkanen','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/markkla01.jpg'),(79,'Thaddeus Young','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/youngth01.jpg'),(80,'Wendell Carter Jr.','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/cartewe01.jpg'),(81,'Daniel Gafford','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/gaffoda01.jpg'),(82,'Luke Kornet','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/kornelu01.jpg'),(83,'Cristiano Felicio','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/feliccr01.jpg'),(84,'Eric Bledsoe','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bledser01.jpg'),(85,'George Hill','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/hillge01.jpg'),(86,'Frank Mason III','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/masonfr01.jpg'),(87,'Donte DiVincenzo','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/divindo01.jpg'),(88,'Pat Connaughton','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/connapa01.jpg'),(89,'Cameron Reynolds','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/reynoca01.jpg'),(90,'Kris Middleton','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/middlkh01.jpg'),(91,'Wesley Matthews','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/matthwe02.jpg'),(92,'Sterling Brown','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/brownst02.jpg'),(93,'Thanasis Antetokounmpo','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/antetth01.jpg'),(94,'Giannis Antetokounmpo','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/antetgi01.jpg'),(95,'Ersan Ilyasova','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/ilyaser01.jpg'),(96,'Marvin Williams','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/willima02.jpg'),(97,'D.J. Wilson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/wilsodj01.jpg'),(98,'Kyle Korver','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/korveky01.jpg'),(99,'Brook Lopez','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/lopezbr01.jpg'),(100,'Robin Lopez','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/lopezro01.jpg'),(101,'Goran Dragic','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/dragigo01.jpg'),(102,'Gabe Vincent','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/vincega01.jpg'),(103,'Kendrick Nunn','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/nunnke01.jpg'),(104,'Tyler Herro','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/herroty01.jpg'),(105,'Jimmy Bulter','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/butleji01.jpg'),(106,'Derrick Jones Jr.','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/jonesde02.jpg'),(107,'Andre Iguodala','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/iguodan01.jpg'),(108,'Jae Crowder','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/crowdja01.jpg'),(109,'Solomon Hill','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/hillso01.jpg'),(110,'KZ Okpala','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/okpalkz01.jpg'),(111,'Duncan Robinson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/robindu01.jpg'),(112,'Chris Silva','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/silvach01.jpg'),(113,'Kyle Alexander','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/silvach01.jpg'),(114,'Bam Adebayo','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/adebaba01.jpg'),(115,'Meyers Leonard','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/leoname01.jpg'),(116,'Kelly Olynyk','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/olynyke01.jpg'),(117,'Udonis Haslem','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/hasleud01.jpg'),(118,'Ben Simmons','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/simmobe01.jpg'),(119,'Raul Neto','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/netora01.jpg'),(120,'Shake Milton','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/miltosh01.jpg'),(121,'Zhaire Smith','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/smithzh01.jpg'),(122,'Furkan Korkmaz','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/korkmfu01.jpg'),(123,'Alec Burks','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/burksal01.jpg'),(124,'Matisse Thybulle','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/thybuma01.jpg'),(125,'Marial Shayok','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/shayoma01.jpg'),(126,'Josh Richardson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/richajo01.jpg'),(127,'Glenn Robinson III','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/robingl02.jpg'),(128,'Tobias Harris','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/harrito02.jpg'),(129,'Mike Scott','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/scottmi01.jpg'),(130,'Joel Embiid','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/embiijo01.jpg'),(131,'Al Horford','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/horfoal01.jpg'),(132,'Kyle O’Quinn','d2cwpp38twqe55.cloudfront.net/req/202001262/images/players/oquinky01.jpg'),(133,'Norvel Pelle','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/pelleno01.jpg'),(134,'Elfrid Payton','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/paytoel01.jpg'),(135,'Frank Ntilikina','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/ntilila01.jpg'),(136,'Dennis Smith Jr.','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/smithde03.jpg'),(137,'Allonzo Trier','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/trieral01.jpg'),(138,'Kadeem Allen','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/allenka01.jpg'),(139,'RJ Barrett','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/barrerj01.jpg'),(140,'Wayne Ellington','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/ellinwa01.jpg'),(141,'Damyean Dotson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/dotsoda01.jpg'),(142,'Maurice Harkless','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/harklma01.jpg'),(143,'Reggie Bullock','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bullore01.jpg'),(144,'Ignas Brazdeikis','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/brazdig01.jpg'),(145,'Kevin Knox','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/knoxke01.jpg'),(146,'Kenny Wooten','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/antetko01.jpg (No player image)'),(147,'Julius Randle','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/randlju01.jpg'),(148,'Mitchell Robinson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/robinmi01.jpg'),(149,'Bobby Portis','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/portibo01.jpg'),(150,'Taj Gibson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/gibsota01.jpg'),(151,'Victor Oladipo','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/oladivi01.jpg'),(152,'Malcom Brogdon','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/brogdma01.jpg'),(153,'Aaron Holiday','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/holidaa01.jpg'),(154,'T.J. McConnell','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mccontj01.jpg'),(155,'Edmond Sumner','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/sumneed01.jpg'),(156,'Justin Holiday','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/holidju01.jpg'),(157,'Brian Bowen','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bowenbr02.jpg'),(158,'Naz Mitrou-Long','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mitrona01.jpg'),(159,'T.J. Warren','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/warretj01.jpg'),(160,'Jeremy Lamb','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/lambje01.jpg'),(161,'JaKarr Sampson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/sampsja02.jpg'),(162,'T.J. Leaf','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/leaftj01.jpg'),(163,'Doug McDermott','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mcderdo01.jpg'),(164,'Alize Johnson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/johnsal02.jpg'),(165,'Domantas Sabonis','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/sabondo01.jpg'),(166,'Myles Turner','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/turnemy01.jpg'),(167,'Goga Bitadze','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bitadgo01.jpg'),(168,'Langston Galloway','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/gallola01.jpg'),(169,'Derrick Rose','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/rosede01.jpg'),(170,'Brandon Knight','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/knighbr03.jpg'),(171,'Jordan Bone','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bonejo01.jpg'),(172,'Luke Kennard','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/kennalu01.jpg'),(173,'Bruce Brown','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/brownbr01.jpg'),(174,'Khyri Thomas','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/thomakh01.jpg'),(175,'Sviatoslav Mykhailiuk','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mykhasv01.jpg'),(176,'Sekou Doumbouya','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/doumbse01.jpg'),(177,'Tony Snell','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/snellto01.jpg'),(178,'Louis King','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/kinglo02.jpg'),(179,'Blakce Griffin','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/griffbl01.jpg'),(180,'Christian Wood','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/woodch01.jpg'),(181,'Thom Maker','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/makerth01.jpg'),(182,'John Henson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/hensojo01.jpg'),(183,'Markelle Fultz','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/fultzma01.jpg'),(184,'D.J. Augustin','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/augusdj01.jpg'),(185,'Michael Carter-Williams','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/cartemi01.jpg'),(186,'Melvin Frazier','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/frazime01.jpg'),(187,'Evin Fournier','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/fournev01.jpg'),(188,'Terrence Ross','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/rosste01.jpg'),(189,'Wesley Iwundu','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/iwundwe01.jpg'),(190,'James Ennis','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/ennisja01.jpg'),(191,'Vic Law','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/lawvi01.jpg'),(192,'B.J. Johnson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/johnsbj01.jpg'),(193,'Jonathan Isaac','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/isaacjo01.jpg'),(194,'Aaron Gordon','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/gordoaa01.jpg'),(195,'Al-Farouq Aminu','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/aminual01.jpg'),(196,'Gary Clark','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/clarkga01.jpg'),(197,'Nikola Vucevic','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/vucevni01.jpg'),(198,'Khem Birch','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/birchkh01.jpg'),(199,'Mohamed Bamba','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bambamo01.jpg'),(200,'Kyrie Irving','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/irvinky01.jpg'),(201,'Spencer Dinwiddie','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/dinwisp01.jpg'),(202,'Garrett Temple','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/templga01.jpg'),(203,'Chris Chiozza','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/chiozch01.jpg'),(204,'Jeremiah Martin','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/martije02.jpg'),(205,'Theo Pinson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/pinsoth01.jpg'),(206,'Caris LeVert','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/leverca01.jpg'),(207,'Joe Harris','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/harrijo01.jpg'),(208,'Taurean Prince','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/princta02.jpg'),(209,'Dzanan Musa','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/musadz01.jpg'),(210,'Timothe Luwawu-Cabarrot','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/luwawti01.jpg'),(211,'Rodions Kurucs','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/kurucro01.jpg'),(212,'Wilson Chandler','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/chandwi01.jpg'),(213,'Nicolas Claxton','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/claxtni01.jpg'),(214,'Kevin Durant','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/duranke01.jpg'),(215,'Jarrett Allen','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/duranke01.jpg'),(216,'DeAndre Jordan','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/jordade01.jpg'),(217,'Ish Smith','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/smithis01.jpg'),(218,'Shabazz Napier','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/napiesh01.jpg'),(219,'Isaac Bonga','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bongais01.jpg'),(220,'John Wall','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/walljo01.jpg'),(221,'Gary Payton II','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/paytoga02.jpg'),(222,'Bradley Beal','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bealbr01.jpg'),(223,'Garrison Mathews','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mathega01.jpg'),(224,'Jerome Robinson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/robinje01.jpg'),(225,'Troy Brown Jr.','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/browntr01.jpg'),(226,'Admiral Schofield','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/schofad01.jpg'),(227,'Rui Hachimura','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/hachiru01.jpg'),(228,'David Bertans','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bertada01.jpg'),(229,'Thomas Bryant','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bryanth01.jpg'),(230,'Moritz Wagner','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/wagnemo01.jpg'),(231,'Ian Mahinmi','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mahinia01.jpg'),(232,'Johnathan Williams','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/willijo04.jpg'),(233,'Anzejs Pasecniks','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/antetko01.jpg (No player image)'),(234,'Trae Young','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/youngtr01.jpg'),(235,'Jeff Teague','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/teaguje01.jpg'),(236,'Brandon Goodwin','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/goodwbr01.jpg'),(237,'Kevin Huerter','d2cwpp38twqe55.cloudfront.net/req/202001262/images/players/huertke01.jpg'),(238,'Treveon Graham','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/grahatr01.jpg'),(239,'De-Andre Hunter','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/huntede01.jpg'),(240,'DeAndre’ Bembry','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bembrde01.jpg'),(241,'Cam Reddish','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/reddica01.jpg'),(242,'Charlie Brown','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/brownch02.jpg'),(243,'John Collins','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/collijo01.jpg'),(244,'Vince Carter','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/cartevi01.jpg'),(245,'Clint Capela','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/capelca01.jpg'),(246,'Dewayne Dedmon','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/dedmode01.jpg'),(247,'Skal Labissiere','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/labissk01.jpg'),(248,'Bruno Fernando','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/fernabr01.jpg'),(249,'Damian Jones','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/jonesda03.jpg'),(250,'Devonte’ Graham','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/grahade01.jpg'),(251,'Terry Rozier','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/roziete01.jpg'),(252,'Kobi Simmons','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/simmoko01.jpg'),(253,'Dwayne Bacon','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bacondw01.jpg'),(254,'Malik Monk','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/monkma01.jpg'),(255,'Miles Bridges','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bridgmi02.jpg'),(256,'Nicolas Batum','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/batumni01.jpg'),(257,'Cody Martin','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/martico01.jpg'),(258,'Caleb Martin','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/martica02.jpg'),(259,'PJ Washington','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/washipj01.jpg'),(260,'Ray Spalding','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/spaldra01.jpg'),(261,'Jalen McDaniels','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mcdanja01.jpg'),(262,'Bismack Biyombo','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/biyombi01.jpg'),(263,'Cody Zeller','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/zelleco01.jpg'),(264,'Willy Hernangomez','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/hernawi01.jpg'),(265,'Avery Bradley','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bradlav01.jpg'),(266,'Rajon Rondo','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/rondora01.jpg'),(267,'Quinn Cook','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/cookqu01.jpg'),(268,'Alex Caruso','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/carusal01.jpg'),(269,'Danny Green','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/greenda02.jpg'),(270,'Kentavious Caldwell-Pope','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/caldwke01.jpg'),(271,'Troy Daniels','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/danietr01.jpg'),(272,'Talen Horton-Tucker','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/hortota01.jpg'),(273,'Lebron James','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/jamesle01.jpg'),(274,'Kyle Kuzma','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/kuzmaky01.jpg'),(275,'Jared Dudley','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/dudleja01.jpg'),(276,'Marieff Morris','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/morrima02.jpg'),(277,'Kostas Antetokounmpo','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/antetko01.jpg'),(278,'Devontae Cacok','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/antetko01.jpg (No player image)'),(279,'Anthony Davis','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/davisan02.jpg'),(280,'JaVale McGee','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mcgeeja01.jpg'),(281,'Dwight Howard','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/howardw01.jpg'),(282,'Reggie Jackson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/jacksre01.jpg'),(283,'Patrick Beverley','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/beverpa01.jpg'),(284,'Lou Williams','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/willilo02.jpg'),(285,'Landry Shamet','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/shamela01.jpg'),(286,'Rodney McGruder','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mcgruro01.jpg'),(287,'Terance Mann','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mannte01.jpg'),(288,'Amier Coffey','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/coffeam01.jpg'),(289,'Kawhi Leonard','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/leonaka01.jpg'),(290,'Paul George','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/georgpa01.jpg'),(291,'Marcus Morris','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/morrima03.jpg'),(292,'JaMychal Green','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/greenja01.jpg'),(293,'Patrick Patterson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/pattepa01.jpg'),(294,'Johnathan Motley','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/motlejo01.jpg'),(295,'Ivica Zubac','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/zubaciv01.jpg'),(296,'Montrezl Harrell','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/harremo01.jpg'),(297,'Mfiondu Kabengele','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/kabenmf01.jpg'),(298,'Jamal Murray','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/murraja01.jpg'),(299,'Jordan McRae','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mcraejo01.jpg'),(300,'Monte Morris','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/morrimo01.jpg'),(301,'PJ Dozier','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/doziepj01.jpg'),(302,'Gary Harris','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/harriga01.jpg'),(303,'Will Barton','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bartowi01.jpg'),(304,'Torrey Craig','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/craigto01.jpg'),(305,'Keita Bates-Diop','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bateske01.jpg'),(306,'Vlatko Cancer','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/cancavl01.jpg'),(307,'Paul Millsap','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/millspa01.jpg'),(308,'Michael Porter Jr.','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/portemi01.jpg'),(309,'Jerami Grant','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/grantje01.jpg'),(310,'Nikola Jokic','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/jokicni01.jpg'),(311,'Mason Plumlee','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/plumlma01.jpg'),(312,'Noah Vonleh','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/vonleno01.jpg'),(313,'Bol Bol','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bolbo01.jpg'),(314,'Mike Conley','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/conlemi01.jpg'),(315,'Jordan Clarkson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/clarkjo01.jpg'),(316,'Emmanuel Mudiay','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mudiaem01.jpg'),(317,'Justin Wright-Foreman','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/wrighju02.jpg'),(318,'Nigel Williams-Goss','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/willini01.jpg'),(319,'Donovan Mitchell','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mitchdo01.jpg'),(320,'Miye Oni','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/onimi01.jpg'),(321,'Rayjon Tucker','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/tuckera01.jpg'),(322,'Bojan Bogdanovic','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bogdabo02.jpg'),(323,'Joe Ingles','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/inglejo01.jpg'),(324,'Royce O’Neale','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/onealro01.jpg'),(325,'Jarrell Brantley','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/brantja01.jpg'),(326,'Georges Niang','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/niangge01.jpg'),(327,'Juwan Morgan','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/morgaju01.jpg'),(328,'Rudy Gobert','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/goberru01.jpg'),(329,'Ed Davis','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/davised01.jpg'),(330,'Tony Bradley','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bradlto01.jpg'),(331,'Chris Paul','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/paulch01.jpg'),(332,'Shai Gilgeous-Alexander','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/gilgesh01.jpg'),(333,'Dennis Schroder','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/schrode01.jpg'),(334,'Luguentz Dort','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/dortlu01.jpg'),(335,'Deonte Burton','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/burtode02.jpg'),(336,'Terrance Ferguson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/fergute01.jpg'),(337,'Adnre Roberson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/roberan03.jpg'),(338,'Hamidou Diallo','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/diallha01.jpg'),(339,'Abdel Nader','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/naderab01.jpg'),(340,'Isaiah Roby','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/robyis01.jpg'),(341,'Danilo Gallinari','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/gallida01.jpg'),(342,'Darius Bazley','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bazleda01.jpg'),(343,'Kevin Hervey','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/herveke01.jpg'),(344,'Steven Adams','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/adamsst01.jpg'),(345,'Nerlens Noel','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/noelne01.jpg'),(346,'Mike Muscala','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/muscami01.jpg'),(347,'James Harden','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/hardeja01.jpg'),(348,'Russell Westbrook','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/westbru01.jpg'),(349,'Eric Gordon','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/gordoer01.jpg'),(350,'Austin Rivers','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/riverau01.jpg'),(351,'Ben McLemore','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/mclembe01.jpg'),(352,'Chris Clemons','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/clemoch01.jpg'),(353,'Michael Frazier','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/frazimi01.jpg'),(354,'William Howard','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/antetko01.jpg (No player image)'),(355,'Danuel House','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/houseda01.jpg'),(356,'Bruno Cabocle','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/cabocbr01.jpg'),(357,'Robert Covington','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/covinro01.jpg'),(358,'P.J. Tucker','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/tuckepj01.jpg'),(359,'Jeff Green','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/greenje02.jpg'),(360,'DeMarre Carroll','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/carrode01.jpg'),(361,'Thabo Sefolosha','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/sefolth01.jpg'),(362,'Isaiah Hartenstein','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/harteis01.jpg'),(363,'Tyson Chandler','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/chandty01.jpg'),(364,'Luka Doncic','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/doncilu01.jpg'),(365,'Seth Curry','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/curryse01.jpg'),(366,'Jalen Brunson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/brunsja01.jpg'),(367,'J.J. Barea','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/bareajo01.jpg'),(368,'Delon Wright','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/wrighde01.jpg'),(369,'Tim Hardaway Jr.','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/hardati02.jpg'),(370,'Courtney Lee','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/leeco01.jpg'),(371,'Josh Reaves','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/reavejo02.jpg'),(372,'Antonius Cleveland','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/clevean01.jpg'),(373,'Kristaps Porzingis','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/porzikr01.jpg'),(374,'Dorian Finney-Smith','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/finnedo01.jpg'),(375,'Justin Jackson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/jacksju01.jpg'),(376,'Michael Kidd-Gilchrist','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/kiddgmi01.jpg'),(377,'Dwight Powell','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/poweldw01.jpg'),(378,'Maxi Kleber','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/klebima01.jpg'),(379,'Boban Marjanovic','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/marjabo01.jpg'),(380,'Willie Cauley-Stein','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/caulewi01.jpg'),(381,'Ja Morant','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/moranja01.jpg'),(382,'Tyus Jones','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/jonesty01.jpg'),(383,'De’Anthony Melton','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/meltode01.jpg'),(384,'Grayson Allen','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/allengr01.jpg'),(385,'John Konchar','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/konchjo01.jpg'),(386,'Marko Guduric','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/gudurma01.jpg'),(387,'Dillon Brooks','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/brookdi01.jpg'),(388,'Josh Jackson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/jacksjo02.jpg'),(389,'Yuta Watanabe','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/watanyu01.jpg'),(390,'Justise Winslow','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/winslju01.jpg'),(391,'Brandon Clarke','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/clarkbr01.jpg'),(392,'Kyle Anderson','d2cwpp38twqe55.cloudfront.net/req/202002042/images/players/anderky01.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
