-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dalgom
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `ev_no` int NOT NULL AUTO_INCREMENT,
  `ev_title` varchar(50) NOT NULL,
  `ev_img` varchar(200) NOT NULL,
  `ev_update` date DEFAULT NULL,
  `ev_img2` text NOT NULL,
  PRIMARY KEY (`ev_no`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'이벤트 1 제목입니다.','/img/event/event1_1.jpg','2023-11-26','/img/event/event1_2.jpg'),(2,'이벤트 2 제목입니다.','/img/event/event2_1.jpg','2023-11-26','/img/event/event2_2.jpg'),(3,'이벤트 3 제목입니다.','/img/event/event3_1.png','2023-11-26','/img/event/event3_2.jpg'),(4,'이벤트 4 제목입니다.','/img/event/event4_1.jpg','2023-11-26','/img/event/event4_2.jpg'),(5,'이벤트 5 제목입니다.','/img/event/event5_1.jpg','2023-11-26','/img/event/event5_2.jpg'),(6,'이벤트 6 제목입니다.','/img/event/event1_1.jpg','2023-11-26','/img/event/event1_2.jpg'),(7,'이벤트 7 제목입니다.','/img/event/event2_1.jpg','2023-11-26','/img/event/event2_2.jpg'),(8,'이벤트 8 제목입니다.','/img/event/event3_1.png','2023-11-26','/img/event/event3_2.jpg'),(9,'이벤트 9 제목입니다.','/img/event/event4_1.jpg','2023-11-26','/img/event/event4_2.jpg'),(10,'이벤트 10 제목입니다.','/img/event/event5_1.jpg','2023-11-26','/img/event/event5_2.jpg'),(11,'이벤트 11 제목입니다.','/img/event/event1_1.jpg','2023-11-26','/img/event/event1_2.jpg'),(12,'이벤트 12 제목입니다.','/img/event/event2_1.jpg','2023-11-26','/img/event/event2_2.jpg'),(13,'이벤트 13 제목입니다.','/img/event/event3_1.png','2023-11-26','/img/event/event3_2.jpg'),(14,'이벤트 14 제목입니다.','/img/event/event4_1.jpg','2023-11-26','/img/event/event4_2.jpg'),(15,'이벤트 15 제목입니다.','/img/event/event5_1.jpg','2023-11-26','/img/event/event5_2.jpg'),(16,'이벤트 16 제목입니다.','/img/event/event1_1.jpg','2023-11-26','/img/event/event1_2.jpg'),(17,'이벤트 17 제목입니다.','/img/event/event2_1.jpg','2023-11-26','/img/event/event2_2.jpg'),(18,'이벤트 18 제목입니다.','/img/event/event3_1.png','2023-11-26','/img/event/event3_2.jpg'),(19,'이벤트 19 제목입니다.','/img/event/event4_1.jpg','2023-11-26','/img/event/event4_2.jpg'),(20,'이벤트 20 제목입니다.','/img/event/event5_1.jpg','2023-11-26','/img/event/event5_2.jpg'),(21,'이벤트 21 제목입니다.','/img/event/event1_1.jpg','2023-11-26','/img/event/event1_2.jpg'),(22,'이벤트 22 제목입니다.','/img/event/event2_1.jpg','2023-11-26','/img/event/event2_2.jpg'),(23,'이벤트 23 제목입니다.','/img/event/event3_1.png','2023-11-26','/img/event/event3_2.jpg'),(24,'이벤트 24 제목입니다.','/img/event/event4_1.jpg','2023-11-26','/img/event/event4_2.jpg'),(25,'이벤트 25 제목입니다.','/img/event/event5_1.jpg','2023-11-26','/img/event/event5_2.jpg'),(26,'이벤트 26 제목입니다.','/img/event/event1_1.jpg','2023-11-26','/img/event/event1_2.jpg'),(27,'이벤트 27 제목입니다.','/img/event/event2_1.jpg','2023-11-26','/img/event/event2_2.jpg'),(28,'이벤트 28 제목입니다.','/img/event/event3_1.png','2023-11-26','/img/event/event3_2.jpg'),(29,'이벤트 29 제목입니다.','/img/event/event4_1.jpg','2023-11-26','/img/event/event4_2.jpg'),(30,'이벤트 30 제목입니다.','/img/event/event5_1.jpg','2023-11-26','/img/event/event5_2.jpg');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-01  9:17:02
