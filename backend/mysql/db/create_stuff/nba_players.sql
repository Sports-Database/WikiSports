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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `id` int NOT NULL COMMENT '	',
  `name` varchar(30) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` (id,name) VALUES (1,'Nicolas Batum'),(2,'LaMarcus Aldridge'),(3,'Robin Lopez'),(4,'Wesley Matthews'),(5,'Damian Lillard'),(6,'Thomas Robinson'),(7,'Maurice Williams'),(8,'Will Barton'),(9,'Dorell Wright'),(10,'Earl Watson'),(11,'CJ McCollum'),(12,'Meyers Leonard'),(13,'Victor Claver'),(14,'Kent Bazemore'),(15,'Pau Gasol'),(16,'Chris Kaman'),(17,'Jodie Meeks'),(18,'Kendall Marshall'),(19,'Steve Nash'),(20,'Xavier Henry'),(21,'Robert Sacre'),(22,'Ryan Kelly'),(23,'Nick Young'),(24,'Marshon Brooks'),(25,'Jordan Hill'),(26,'Wesley Johnson'),(27,'Andre Iguodala'),(28,'Draymond Green'),(29,'Jermaine O\'Neal'),(30,'Klay Thompson'),(31,'Stephen Curry'),(32,'Marreese Speights'),(33,'Harrison Barnes'),(34,'Steve Blake'),(35,'Jordan Crawford'),(36,'Hilton Armstrong'),(37,'Andrew Bogut'),(38,'David Lee'),(39,'Shawn Marion'),(40,'Dirk Nowitzki'),(41,'Samuel Dalembert'),(42,'Monta Ellis'),(43,'Jose Calderon'),(44,'Vince Carter'),(45,'Brandan Wright'),(46,'Devin Harris'),(47,'Jae Crowder'),(48,'DeJuan Blair'),(49,'Wayne Ellington'),(50,'Bernard James'),(51,'Shane Larkin'),(52,'Chandler Parsons'),(53,'Donatas Motiejunas'),(54,'Omer Asik'),(55,'James Harden'),(56,'Jeremy Lin'),(57,'Omri Casspi'),(58,'Francisco Garcia'),(59,'Isaiah Canaan'),(60,'Jordan Hamilton'),(61,'Patrick Beverley'),(62,'Dwight Howard'),(63,'Terrence Jones'),(64,'Greg Smith'),(65,'Joe Johnson'),(66,'Paul Pierce'),(67,'Mason Plumlee'),(68,'Shaun Livingston'),(69,'Deron Williams'),(70,'Alan Anderson'),(71,'Andray Blatche'),(72,'Mizra Teletovic'),(73,'Jorge Gutierrez'),(74,'Marquis Teague'),(75,'Jason Collins'),(76,'Andrei Kirilenko'),(77,'Marcus Thornton'),(78,'JR Smith'),(79,'Carmelo Anthony'),(80,'Tyson Chandler'),(81,'Iman Shumpert'),(82,'Raymond Felton'),(83,'Timothy Hardaway Jr.'),(84,'Pablo Prigioni'),(85,'Cole Aldrich'),(86,'Jeremy Tyler'),(87,'Shannon Brown'),(88,'Toure Murry'),(89,'Amar\'e Stoudemire'),(90,'Richard Jefferson'),(91,'Marvin Williams'),(92,'Derrick Favors'),(93,'Gordon Hayward'),(94,'Trey Burke'),(95,'Enes Kanter'),(96,'Alec Burks'),(97,'Diante Garrett'),(98,'Ian Clark'),(99,'Rudy Gobert'),(100,'Jeremy Evans'),(101,'John Lucas III'),(102,'Brandon Rush'),(103,'Tayshaun Prince'),(104,'Zach Randolph'),(105,'Marc Gasol'),(106,'Courtney Lee'),(107,'Mike Conley'),(108,'Nick Calathes'),(109,'Ed Davis'),(110,'Mike Miller'),(111,'Kosta Koufos'),(112,'Tony Allen'),(113,'James Johnson'),(114,'Jon Leuer'),(115,'Beno Udrih'),(116,'Quincy Miller'),(117,'Kenneth Faried'),(118,'Timofey Mozgov'),(119,'Randy Foye'),(120,'Ty Lawson'),(121,'Darrell Arthur'),(122,'Evan Fournier'),(123,'Aaron Brooks'),(124,'Jan Vesely'),(125,'Wilson Chandler'),(126,'JJ Hickson'),(127,'Anthony Randolph'),(128,'Nate Robinson'),(129,'Rudy Gay'),(130,'Reggie Evans'),(131,'DeMarcus Cousins'),(132,'Ben McLemore'),(133,'Ray McCallum'),(134,'Travis Outlaw'),(135,'Derrick Williams'),(136,'Jared Cunningham'),(137,'Jason Thompson'),(138,'Quincy Acy'),(139,'Aaron Gray'),(140,'Isaiah Thomas'),(141,'Al-Farouq Aminu'),(142,'Anthony Davis'),(143,'Greg Stiemsma'),(144,'Tyreke Evans'),(145,'Brian Roberts'),(146,'Darius Miller'),(147,'Alexis Ajinca'),(148,'Austin Rivers'),(149,'Anthony Morrow'),(150,'Jeff Withey'),(151,'Luke Babbitt'),(152,'Eric Gordon'),(153,'Jason Smith'),(154,'Matt Barnes'),(155,'Jared Dudley'),(156,'DeAndre Jordan'),(157,'Darren Collison'),(158,'Chris Paul'),(159,'Hidayet Turkoglu'),(160,'Willie Green'),(161,'Reggie Bullock'),(162,'Ryan Hollins'),(163,'Glen Davis'),(164,'Jamal Crawford'),(165,'Danny Granger'),(166,'Blake Griffin'),(167,'Corey Brewer'),(168,'Kevin Love'),(169,'Hidayet Turkoglu'),(170,'Kevin Martin'),(171,'Ricky Rubio'),(172,'Gorgui Dieng'),(173,'Jose Barea'),(174,'Dante Cunningham'),(175,'Chase Budinger'),(176,'Robbie Hummel'),(177,'Shabazz Muhammad'),(178,'Luc Mbah a Moute'),(179,'Alexey Shved'),(180,'Jeff Green'),(181,'Brandon Bass'),(182,'Kris Humphries'),(183,'Avery Bradley'),(184,'Jerryd Bayless'),(185,'Jared Sullinger'),(186,'Christapher Johnson'),(187,'Phil Pressey'),(188,'Kelly Olynyk'),(189,'Chris Babb'),(190,'Joel Anthony'),(191,'Rajon Rondo'),(192,'Mike Dunleavy'),(193,'Carlos Boozer'),(194,'Joakim Noah'),(195,'Jimmy Butler'),(196,'Kirk Hinrich'),(197,'DJ Augustin'),(198,'Taj Gibson'),(199,'Nazr Mohammed'),(200,'Tony Snell'),(201,'Jimmer Fredette'),(202,'Erik Murphy'),(203,'Tornike Shengelia'),(204,'Terrence Ross'),(205,'Amir Johnson'),(206,'Jonas Valanciunas'),(207,'Demar DeRozan'),(208,'Kyle Lowry'),(209,'Patrick Patterson'),(210,'Steve Novak'),(211,'John Salmons'),(212,'Greivis Vasquez'),(213,'Chuck Hayes'),(214,'Nando De Colo'),(215,'Landry Fields'),(216,'Tyler Hansbrough'),(217,'Lebron James'),(218,'Udonis Haslem'),(219,'Chris Bosh'),(220,'Toney Douglas'),(221,'Mario Chalmers'),(222,'Rashad Lewis'),(223,'Norris Cole'),(224,'James Jones'),(225,'Chris Andersen'),(226,'Shane Battier'),(227,'Michael Beasley'),(228,'Justin Hamilton'),(229,'Dwayne Wade'),(230,'Khris Middleton'),(231,'Jeff Adrien'),(232,'Zaza Pachulia'),(233,'Ramon Sessions'),(234,'Brandon Knight'),(235,'Giannis Antetokounmpo'),(236,'John Henson'),(237,'Ekpe Udoh'),(238,'Ersan Ilyasova'),(239,'OJ Mayo'),(240,'Miroslav Raduljica'),(241,'DJ Stephens'),(242,'Nate Wolters'),(243,'Josh Smith'),(244,'Greg Monroe'),(245,'Andre Drummond'),(246,'Kyle Singler'),(247,'Brandon Jennings'),(248,'Rodney Stuckey'),(249,'Jonas Jerebko'),(250,'Kentavious Caldwell-Pope'),(251,'Will Bynum'),(252,'Charlie Villanueva'),(253,'Luigi Datome'),(254,'Tony Mitchell'),(255,'Peyton Siva'),(256,'Hollis Thompson'),(257,'Thaddeus Young'),(258,'Henry Sims'),(259,'James Anderson'),(260,'Michael Carter-Williams'),(261,'Tony Wroten'),(262,'Jarvis Varnado'),(263,'Elliot Williams'),(264,'Casper Ware'),(265,'Brandon Davies'),(266,'Arnett Moultrie'),(267,'James Nunnally'),(268,'DeMarre Carroll'),(269,'Paul Millsap'),(270,'Pero Antic'),(271,'Kyle Korver'),(272,'Jeff Teague'),(273,'Louis Williams'),(274,'Elton Brand'),(275,'Mike Scott'),(276,'Dennis Schroder'),(277,'Mike Muscala'),(278,'Shelvin Mack'),(279,'Cartier Martin'),(280,'Trevor Ariza'),(281,'Trevor Booker'),(282,'Marcin Gortat'),(283,'Bradley Beal'),(284,'John Wall'),(285,'Drew Gooden'),(286,'Martell Webster'),(287,'Al Harrington'),(288,'Andre Miller'),(289,'Kevin Seraphin'),(290,'Otto Porter'),(291,'Chris Singleton'),(292,'Garrett Temple'),(293,'Michael Kidd-Gilchrist'),(294,'Josh McRoberts'),(295,'Al Jefferson'),(296,'Gerald Henderson'),(297,'Kemba Walker'),(298,'Cody Zeller'),(299,'Bismack Biyombo'),(300,'Gary Neal'),(301,'Luke Ridnour'),(302,'Chris Douglas-Roberts'),(303,'Jannero Pargo'),(304,'Anthony Tolliver'),(305,'DJ White'),(306,'Paul George'),(307,'David West'),(308,'Roy Hibbert'),(309,'Lance Stephenson'),(310,'George Hill'),(311,'Luis Scola'),(312,'Evan Turner'),(313,'Ian Mahinmi'),(314,'Rasual Butler'),(315,'Donald Sloan'),(316,'Lavoy Allen'),(317,'Chris Copeland'),(318,'Solomon Hill'),(319,'Luol Deng'),(320,'Tristan Thompson'),(321,'Spencer Hawes'),(322,'Dion Waiters'),(323,'Kyrie Irving'),(324,'Jarrett Jack'),(325,'Matthew Dellavedova'),(326,'Tyler Zeller'),(327,'Alonzo Gee'),(328,'Sergey Karasev'),(329,'Scotty Hopson'),(330,'Anderson Varejao'),(331,'Maurice Harkless'),(332,'Kyle O\'Quinn'),(333,'Nikola Vucevic'),(334,'Arron Afflalo'),(335,'Jameer Nelson'),(336,'Andrew Nicholson'),(337,'Victor Oladipo'),(338,'Etwaun Moore'),(339,'Tobias Harris'),(340,'Doron Lamb'),(341,'Dewayne Dedmon'),(342,'Jason Maxiell'),(343,'Ronnie Price'),(344,'Julyan Stone'),(345,'Ray Allen'),(346,'Ronny Turiaf'),(347,'Kawhi Leonard'),(348,'Tim Duncan'),(349,'Boris Diaw'),(350,'Daniel Green'),(351,'Tony Parker'),(352,'Emanuel Ginobli'),(353,'Tiago Splitter'),(354,'Patrick Mills'),(355,'Marco Belinelli'),(356,'Jeff Ayres'),(357,'Cory Joseph'),(358,'Aron Baynes'),(359,'Austin Daye'),(360,'PJ Tucker'),(361,'Channing Frye'),(362,'Miles Plumlee'),(363,'Goran Dragic'),(364,'Eric Bledsoe'),(365,'Gerald Green'),(366,'Markieff Morris'),(367,'Marcus Morris'),(368,'Ish Smith'),(369,'Dionte Christmas'),(370,'Archie Goodwin'),(371,'Alex Len'),(372,'Shavlik Randolph'),(373,'Orlando Johnson'),(374,'Royce White'),(375,'Damion James'),(376,'Kevin Durant'),(377,'Serge Ibaka'),(378,'Kendrick Perkins'),(379,'Andre Roberson'),(380,'Russell Westbrook'),(381,'Caron Butler'),(382,'Steven Adams'),(383,'Nick Collison'),(384,'Reggie Jackson'),(385,'Derek Fisher'),(386,'Jeremy Lamb'),(387,'Perry Jones'),(388,'Hasheem Thabeet'),(389,'JJ Redick'),(390,'Dwight Buycks'),(391,'David Lee'),(392,'Nikola Pekovic');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
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
