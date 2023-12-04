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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `co_no` int NOT NULL AUTO_INCREMENT,
  `user_no` int NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `cu_no` int NOT NULL,
  `co_comment` varchar(500) NOT NULL,
  `co_update` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`co_no`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,'SkyWalker877',1,'좋은 정보 감사합니다!','2023-11-27 12:15:19'),(2,2,'SilverDragon211',2,'훈련 중에 어떤 간식을 주는 게 좋을까요?','2023-11-26 16:38:30'),(3,3,'MysticGarden644',1,'강아지 키우는데 꿀팁 좀!','2023-11-26 16:38:30'),(4,4,'OceanWave333',3,'오늘은 어떤 트릭을 가르쳐 볼까요?','2023-11-26 16:38:30'),(5,5,'Starlight888',4,'간식 추천 부탁드려요!','2023-11-26 16:38:30'),(6,6,'FirePhoenix422',4,'강아지의 소셜라이징 방법에 대해 알아봐요.','2023-11-26 16:38:30'),(7,7,'EnigmaQuest199',5,'훈련 중에 주의할 점이 있을까요?','2023-11-26 16:38:30'),(8,8,'RainbowSerenity8',6,'강아지 키우는데 필요한 용품들','2023-11-26 16:38:30'),(9,9,'NightCrawler567',6,'애견 미용 관련 정보 부탁드립니다.','2023-11-26 16:38:30'),(10,10,'GalaxyExplorer778',6,'강아지의 건강을 지키기 위한 방법','2023-11-26 16:38:30'),(11,11,'BlueThunder228',7,'풍선 터트리기를 가르쳐 볼까요?','2023-11-26 16:38:30'),(12,12,'SolarHarmony455',8,'강아지와의 놀이 시간을 즐기는 법','2023-11-26 16:38:30'),(13,13,'EmeraldJourney133',9,'애견 훈련소에서의 즐거운 경험 공유','2023-11-26 16:38:30'),(14,14,'DreamCatcher994',10,'첫 애견훈련소 방문! 어떻게 준비해야 할까요?','2023-11-26 16:38:30'),(15,15,'CrimsonHawk668',11,'애견훈련소에서의 친구 만들기','2023-11-26 16:38:30'),(16,16,'WhisperingPines16',12,'강아지와 함께하는 야외 활동 추천','2023-11-26 16:38:30'),(17,17,'LunaRising289',12,'강아지의 스트레스 해소 방법','2023-11-26 16:38:30'),(18,18,'CelestialVoyage18',13,'피부 건강을 지키는 간단한 방법','2023-11-26 16:38:30'),(19,19,'ShadowFrost1212',13,'애견훈련소에서의 일상 속 이야기','2023-11-26 16:38:30'),(20,20,'EvergreenMystic20',13,'강아지와 함께하는 힐링 타임','2023-11-26 16:38:30'),(21,21,'AzureWanderer393',14,'강아지와 함께하는 야외 활동의 재미','2023-11-26 16:38:30'),(22,22,'CrystalFrost888',15,'좋은 훈련법 공유 부탁드려요!','2023-11-26 16:38:30'),(23,23,'MysticDreamer177',15,'애견훈련소에서의 소소한 일상 이야기','2023-11-26 16:38:30'),(24,24,'MidnightHowler24',16,'강아지의 건강한 먹거리에 대한 조언','2023-11-26 16:38:30'),(25,25,'PhoenixBlaze644',16,'훈련 중에 강아지의 집중력을 높이는 방법','2023-11-26 16:38:30'),(26,26,'MysticSerenade26',17,'강아지와 함께하는 야간 산책의 추천 장소','2023-11-26 16:38:30'),(27,27,'SilverLantern211',18,'애견훈련소에서의 친구들과의 만남','2023-11-26 16:38:30'),(28,28,'SolarEclipse377',18,'강아지의 털 관리에 대한 팁 공유','2023-11-26 16:38:30'),(29,29,'LunarPulse899',19,'훈련 중에 강아지의 스트레스를 완화하는 방법','2023-11-26 16:38:30'),(30,30,'EnchantedWhisper30',20,'강아지와 함께하는 즐거운 물놀이','2023-11-26 16:38:30');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
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
