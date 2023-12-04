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
-- Table structure for table `community`
--

DROP TABLE IF EXISTS `community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community` (
  `cu_no` int NOT NULL AUTO_INCREMENT,
  `user_no` int DEFAULT NULL,
  `user_id` varchar(50) NOT NULL,
  `cu_title` varchar(50) NOT NULL,
  `cu_img` varchar(200) NOT NULL,
  `cu_content` varchar(500) NOT NULL,
  `cu_update` datetime DEFAULT CURRENT_TIMESTAMP,
  `cu_viewcnt` int DEFAULT NULL,
  `co_cnt` int DEFAULT NULL,
  PRIMARY KEY (`cu_no`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community`
--

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;
INSERT INTO `community` VALUES (1,1,'SkyWalker877','강아지 훈련 Q&A','/img/cu_img1.gif','강아지 훈련에 대한 궁금증을 나눠보세요.','2023-11-26 16:38:30',NULL,NULL),(2,2,'SilverDragon211','훈련소 첫 방문 후기','','애견 훈련소를 처음 가본 후기를 남겨주세요.','2023-11-26 16:38:30',NULL,NULL),(3,3,'MysticGarden644','강아지 친구 만들기','/img/te/te_img2.png','훈련소에서 다른 강아지 친구들을 만나보고 소식 나눠요.','2023-11-26 16:38:30',NULL,NULL),(4,4,'OceanWave333','최고의 훈련 비법은?','/img/cu_img1.gif','강아지를 훈련시키는 데 가장 효과적인 방법은 무엇일까요? 공유해주세요!','2023-11-26 16:38:30',NULL,NULL),(5,5,'Starlight888','훈련 중 재미난 에피소드','','훈련 중에 웃기거나 재미있는 에피소드를 함께 나눠보아요.','2023-11-26 16:38:30',NULL,NULL),(6,6,'FirePhoenix422','강아지 훈련 꿀팁','','훈련을 더 효과적으로 하는 꿀팁을 알려주세요.','2023-11-26 16:38:30',NULL,NULL),(7,7,'EnigmaQuest199','훈련 성공 사례 공유','/img/review/re_img2.png','훈련을 통해 성공적으로 개선된 사례를 나눠주세요.','2023-11-26 16:38:30',NULL,NULL),(8,8,'RainbowSerenity8','훈련 속 힐링 시간','','강아지와의 훈련 시간이 힐링이 되는 순간을 공유해주세요.','2023-11-26 16:38:30',NULL,NULL),(9,9,'NightCrawler567','애견 훈련소 추천','/img/cu_img1.gif','여러분이 경험한 좋은 애견 훈련소를 추천해주세요.','2023-11-26 16:38:30',NULL,NULL),(10,10,'GalaxyExplorer778','훈련을 마치고 느낀 점','','강아지 훈련을 마치고 느낀 소감을 나눠주세요.','2023-11-26 16:38:30',NULL,NULL),(11,11,'BlueThunder228','강아지 키우기 고수들 모임','/img/te/te_img4.png','강아지 키우기에 자신 있는 분들끼리 모여서 정보를 공유해요.','2023-11-26 16:38:30',NULL,NULL),(12,12,'SolarHarmony455','훈련 중 발생한 문제 해결법','','훈련 중에 발생한 문제들을 해결하는 노하우를 나눠봅시다.','2023-11-26 16:38:30',NULL,NULL),(13,13,'EmeraldJourney133','훈련소에서의 신기한 친구들','','훈련소에서 만난 다양한 종류의 강아지들 소개합니다.','2023-11-26 16:38:30',NULL,NULL),(14,14,'DreamCatcher994','강아지 훈련 속 스트레스 해소법','/img/review/re_img3.png','강아지 훈련 중 생길 수 있는 스트레스를 해소하는 방법을 알려주세요.','2023-11-26 16:38:30',NULL,NULL),(15,15,'CrimsonHawk668','훈련 중 발생한 웃긴 에피소드','','훈련 중 웃기거나 재미있는 에피소드를 함께 나눠보아요.','2023-11-26 16:38:30',NULL,NULL),(16,16,'WhisperingPines16','강아지 훈련 Q&A','/img/te/te_img3.png','강아지 훈련에 대한 궁금증을 나눠보세요.','2023-11-26 16:38:30',NULL,NULL),(17,17,'LunaRising289','훈련소 첫 방문 후기','','애견 훈련소를 처음 가본 후기를 남겨주세요.','2023-11-26 16:38:30',NULL,NULL),(18,18,'CelestialVoyage18','강아지 친구 만들기','/img/te/te_img5.png','훈련소에서 다른 강아지 친구들을 만나보고 소식 나눠요.','2023-11-26 16:38:30',NULL,NULL),(19,19,'ShadowFrost1212','최고의 훈련 비법은?','/img/review/re_img2.png','강아지를 훈련시키는 데 가장 효과적인 방법은 무엇일까요? 공유해주세요!','2023-11-26 16:38:30',NULL,NULL),(20,20,'EvergreenMystic20','훈련 중 재미난 에피소드','','훈련 중에 웃기거나 재미있는 에피소드를 함께 나눠보아요.','2023-11-26 16:38:30',NULL,NULL),(21,21,'AzureWanderer393','강아지 훈련 꿀팁','','훈련을 더 효과적으로 하는 꿀팁을 알려주세요.','2023-11-26 16:38:30',NULL,NULL),(22,22,'CrystalFrost888','훈련 성공 사례 공유','/img/cu_img1.gif','훈련을 통해 성공적으로 개선된 사례를 나눠주세요.','2023-11-26 16:38:30',NULL,NULL),(23,23,'MysticDreamer177','훈련 속 힐링 시간','','강아지와의 훈련 시간이 힐링이 되는 순간을 공유해주세요.','2023-11-26 16:38:30',NULL,NULL),(24,24,'MidnightHowler24','애견 훈련소 추천','/img/te/te_img1.png','여러분이 경험한 좋은 애견 훈련소를 추천해주세요.','2023-11-26 16:38:30',NULL,NULL),(25,25,'PhoenixBlaze644','훈련을 마치고 느낀 점','','강아지 훈련을 마치고 느낀 소감을 나눠주세요.','2023-11-26 16:38:30',NULL,NULL),(26,26,'MysticSerenade26','강아지 키우기 고수들 모임','/img/te/te_img2.png','강아지 키우기에 자신 있는 분들끼리 모여서 정보를 공유해요.','2023-11-26 16:38:30',NULL,NULL),(27,27,'SilverLantern211','훈련 중 발생한 문제 해결법','','훈련 중에 발생한 문제들을 해결하는 노하우를 나눠봅시다.','2023-11-26 16:38:30',NULL,NULL),(28,28,'SolarEclipse377','훈련소에서의 신기한 친구들','','훈련소에서 만난 다양한 종류의 강아지들 소개합니다.','2023-11-26 16:38:30',NULL,NULL),(29,29,'LunarPulse899','강아지 훈련 속 스트레스 해소법','/img/review/re_img8.png','강아지 훈련 중 생길 수 있는 스트레스를 해소하는 방법을 알려주세요.','2023-11-26 16:38:30',NULL,NULL),(30,30,'EnchantedWhisper30','훈련 중 발생한 웃긴 에피소드','','훈련 중 웃기거나 재미있는 에피소드를 함께 나눠보아요.','2023-11-26 16:38:30',NULL,NULL);
/*!40000 ALTER TABLE `community` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-01  9:17:01
