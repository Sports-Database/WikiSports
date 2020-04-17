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
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts` (
  `playerId` int NOT NULL,
  `length` int NOT NULL,
  `salaryPerYear` int NOT NULL,
  KEY `playerId` (`playerId`),
  CONSTRAINT `contracts_ibfk_1` FOREIGN KEY (`playerId`) REFERENCES `players` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` VALUES (1,1,10393677),(2,4,15653822),(3,3,17311702),(4,1,22662078),(5,3,20270215),(6,3,19036106),(7,4,16510259),(8,4,15455567),(9,1,20427052),(10,1,16641241),(11,2,24589951),(12,3,20388469),(13,3,22132605),(14,3,14194319),(15,4,7246672),(16,2,22151659),(17,4,13329742),(18,4,9611881),(19,1,15340922),(20,2,7866708),(21,1,24111614),(22,1,22369819),(23,2,18834505),(24,1,10800764),(25,3,5284633),(26,4,16822150),(27,3,19159182),(28,4,9236897),(29,3,9206328),(30,3,8654387),(31,3,4725790),(32,2,14657116),(33,4,15333345),(34,2,20023208),(35,3,12674907),(36,3,10501449),(37,4,17936736),(38,1,6053040),(39,2,15409522),(40,1,20661573),(41,1,11327812),(42,2,11750781),(43,4,8187810),(44,2,11353762),(45,1,18552484),(46,1,23290925),(47,4,20136564),(48,1,18920065),(49,2,6311941),(50,3,24455952),(51,2,22481964),(52,1,9988127),(53,2,10521644),(54,4,12695746),(55,1,15708261),(56,2,12989757),(57,3,17288720),(58,1,2443399),(59,4,14031873),(60,2,18715746),(61,2,18348782),(62,1,1809742),(63,1,18172629),(64,3,17131134),(65,1,15837205),(66,2,12237198),(67,4,19953187),(68,1,24457764),(69,3,2668988),(70,2,7898482),(71,4,7447112),(72,1,8950332),(73,3,14374990),(74,4,19021749),(75,3,14432499),(76,2,15912679),(77,3,16065264),(78,1,8383721),(79,2,10633774),(80,1,5088582),(81,3,7538805),(82,1,4191329),(83,4,22440422),(84,1,6584354),(85,1,3021323),(86,4,24552475),(87,3,1823509),(88,1,6034628),(89,3,19819686),(90,3,10308660),(91,2,15028090),(92,4,21064169),(93,3,6400069),(94,3,19554345),(95,4,23911210),(96,3,16717782),(97,1,21586395),(98,2,3463845),(99,1,5314525),(100,2,1579643),(101,4,5229844),(102,4,11205938),(103,4,11323838),(104,4,21829334),(105,2,3373157),(106,3,11201588),(107,3,4574786),(108,1,21239770),(109,3,10115587),(110,2,3091383),(111,2,20823663),(112,2,14303098),(113,3,6550845),(114,3,24524189),(115,2,5540132),(116,3,16718362),(117,4,24282548),(118,1,16470722),(119,2,11453887),(120,2,13518858),(121,2,12767040),(122,1,18748220),(123,4,21504706),(124,4,12734286),(125,2,2476449),(126,2,22343722),(127,2,20812503),(128,4,13286499),(129,1,15090968),(130,2,2327492),(131,3,7060838),(132,2,6700867),(133,3,19468258),(134,4,4680157),(135,1,3316667),(136,4,7115818),(137,4,11280772),(138,4,22365100),(139,3,3568376),(140,2,24029741),(141,4,1973589),(142,4,22298607),(143,2,2790940),(144,2,16135239),(145,1,6328032),(146,4,19073293),(147,1,12506549),(148,1,20237618),(149,2,24180203),(150,3,11402337),(151,1,7728068),(152,3,10684868),(153,2,15959328),(154,1,16603268),(155,1,14984658),(156,4,18565056),(157,4,10176116),(158,1,23135387),(159,2,18840151),(160,4,11609360),(161,3,2360823),(162,3,23859964),(163,1,10253801),(164,2,17309031),(165,1,8665119),(166,3,14715101),(167,2,20934073),(168,2,14584156),(169,3,5082051),(170,3,14231485),(171,3,15722439),(172,4,10977159),(173,2,7303738),(174,3,24031761),(175,2,16560052),(176,4,2668268),(177,4,19250360),(178,2,1810192),(179,1,10400951),(180,3,20213367),(181,3,13333833),(182,2,24957468),(183,4,16459253),(184,3,15043537),(185,4,17365565),(186,4,12344789),(187,4,9440323),(188,3,20199166),(189,3,11839911),(190,1,24489345),(191,3,2075335),(192,3,14967751),(193,1,10775173),(194,4,16254004),(195,3,15054018),(196,2,10936035),(197,4,6678859),(198,4,8058410),(199,2,14356506),(200,3,19963945),(201,4,12009612),(202,2,7629061),(203,4,7727186),(204,3,10142073),(205,4,7257383),(206,4,12429041),(207,4,15496366),(208,4,6332196),(209,4,18886961),(210,3,3851286),(211,1,12963146),(212,3,21784688),(213,4,15355527),(214,3,13764749),(215,1,9019610),(216,2,24195516),(217,2,15498354),(218,1,5977970),(219,3,10814933),(220,1,18109701),(221,1,2209503),(222,3,4741082),(223,4,3284718),(224,4,12054464),(225,1,22457346),(226,3,1535490),(227,3,10577691),(228,4,14296968),(229,1,10427408),(230,3,2599242),(231,1,18884305),(232,2,18809690),(233,1,9734477),(234,4,14608143),(235,1,19751773),(236,1,10236370),(237,4,23942749),(238,2,17548298),(239,2,16039392),(240,1,12465048),(241,1,17441548),(242,2,18869479),(243,3,3607755),(244,3,18915079),(245,2,13402848),(246,3,2821750),(247,4,9041825),(248,1,2349916),(249,1,15594966),(250,1,7719988),(251,2,2736165),(252,2,19434732),(253,3,21439206),(254,4,5166578),(255,3,11767547),(256,1,5369191),(257,2,18282815),(258,1,16941264),(259,2,17339227),(260,1,5583341),(261,4,11124518),(262,1,21055049),(263,1,7790293),(264,3,17673210),(265,2,6867080),(266,4,21842650),(267,2,20453171),(268,1,11802025),(269,4,9300927),(270,3,2691206),(271,1,17224435),(272,4,3955763),(273,1,6301264),(274,3,19267396),(275,2,19865111),(276,1,17511506),(277,1,3023851),(278,1,19184152),(279,4,6870751),(280,2,13984932),(281,4,22847156),(282,1,24740418),(283,1,17655999),(284,2,17629363),(285,3,6447148),(286,1,19040090),(287,1,23761583),(288,1,13729470),(289,2,10953006),(290,4,10922364),(291,2,10046787),(292,1,11049162),(293,1,20474860),(294,1,3117683),(295,2,2889445),(296,1,13824164),(297,3,11724412),(298,1,7087363),(299,3,24000265),(300,2,23145947),(301,1,19779306),(302,3,22716535),(303,3,15251053),(304,2,21911690),(305,4,24369446),(306,2,6525051),(307,2,22289062),(308,2,3026123),(309,4,12698135),(310,3,12170348),(311,4,3273015),(312,2,16369167),(313,2,17660129),(314,3,23846167),(315,2,23418975),(316,4,20369637),(317,3,15143106),(318,3,15136882),(319,2,23937080),(320,4,15028923),(321,4,9095381),(322,2,24626594),(323,2,8985839),(324,4,18360076),(325,2,3508272),(326,1,22767369),(327,2,20943747),(328,2,3478865),(329,1,10695346),(330,4,10023105),(331,2,1779269),(332,4,6185888),(333,1,19684405),(334,2,2261712),(335,1,5625675),(336,1,13667763),(337,3,7070125),(338,2,12481991),(339,1,2649444),(340,1,4469239),(341,2,5068393),(342,4,4609571),(343,1,12366274),(344,3,15001692),(345,1,6840209),(346,4,12464672),(347,1,5885200),(348,4,7327999),(349,4,17889914),(350,3,1684037),(351,3,16341966),(352,3,19420508),(353,4,6123828),(354,2,16329166),(355,3,2240889),(356,2,19067223),(357,3,10740979),(358,2,12189882),(359,3,16020975),(360,2,22009790),(361,1,22846417),(362,3,17996485),(363,4,16308335),(364,2,17078062),(365,1,22760173),(366,2,14639334),(367,4,23919827),(368,1,13119249),(369,2,13633831),(370,3,23471668),(371,2,15485139),(372,4,15347934),(373,3,7098007),(374,4,22607349),(375,1,7801006),(376,4,14538568),(377,3,13978056),(378,1,6293026),(379,4,23829595),(380,2,13043523),(381,4,17000934),(382,2,19020531),(383,1,24606722),(384,4,3474544),(385,4,5387996),(386,3,19152628),(387,2,11440817),(388,3,1918599),(389,4,12382756),(390,2,22308590),(391,4,10253559),(392,3,20515297);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
