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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `re_no` int NOT NULL AUTO_INCREMENT,
  `tc_no` int NOT NULL,
  `user_no` int NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `re_img` varchar(200) DEFAULT NULL,
  `re_content` varchar(500) DEFAULT NULL,
  `re_update` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`re_no`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,1,'SkyWalker877','/img/review/re_img1.png','애견 훈련소에서 훈련 받은 덕분에 우리 강아지가 예의 바르고 잘 키워지고 있어요. 특히 기본 명령어 학습이 빠르게 되어 집에서도 편하게 지내고 있습니다.','2023-11-26 16:38:30'),(2,2,2,'SilverDragon211','/img/review/re_img2.png','전문적이고 친절한 트레이너들 덕분에 우리 강아지가 놀라운 발전을 이루었어요. 특히 사회성 향상과 문제 행동의 개선이 눈에 띄어 기뻐합니다.','2023-11-26 16:38:30'),(3,3,3,'MysticGarden644','/img/review/re_img3.png','애견 훈련소에서의 경험이 너무 좋았어요. 훈련 중에는 항상 주인과 반려동물 사이의 믿음과 유대감을 강조해주셔서 강아지와의 소통이 원활해졌습니다.','2023-11-26 16:38:30'),(4,4,4,'OceanWave333','/img/review/re_img4.png','우리 강아지가 훈련소에서 배운 것들이 집에 돌아와서도 지속되고 있어요. 특히 실생활에서 활용할 수 있는 실용적인 훈련이라고 생각합니다.','2023-11-26 16:38:30'),(5,5,5,'Starlight888','/img/review/re_img5.png','애견 훈련소에서의 경험은 우리 가족과 강아지에게 큰 도움이 되었습니다. 트레이너들은 전문적이면서도 따뜻한 마음을 가지고 계셔서 좋았어요.','2023-11-26 16:38:30'),(6,6,6,'FirePhoenix422','/img/review/re_img6.png','훈련소에서는 강아지뿐만 아니라 주인에게도 교육을 제공해주셨어요. 특히 강아지의 심리적인 이해와 상호작용에 대한 통찰력을 얻을 수 있었습니다.','2023-11-26 16:38:30'),(7,7,7,'EnigmaQuest199','/img/review/re_img7.png','애견 훈련소는 환경도 깨끗하고 안전했습니다. 강아지들끼리 소통하며 배우는 과정이 너무 좋았어요.','2023-11-26 16:38:30'),(8,8,8,'RainbowSerenity8','/img/review/re_img8.png','강아지의 특성에 맞춘 맞춤 훈련 프로그램이 제공되어 더 빠르게 효과를 볼 수 있었습니다. 강아지의 성격과 특징을 고려한 접근이 정말 도움이 되었어요.','2023-11-26 16:38:30'),(9,9,9,'NightCrawler567','/img/review/re_img9.png','훈련소에서는 재미있는 훈련 놀이들을 통해 강아지의 호기심을 자극해주셨어요. 학습과 놀이가 결합되어 훈련이 지루하지 않았습니다.','2023-11-26 16:38:30'),(10,10,10,'GalaxyExplorer778','/img/review/re_img10.png','애견 훈련소에서의 경험 덕분에 우리 강아지가 다양한 환경에서도 안정적으로 행동하고 있어요. 외부 자극에도 민감하지 않게 변화했습니다.','2023-11-26 16:38:30'),(11,11,11,'BlueThunder228','/img/review/re_img1.png','훈련소에서 주인과 강아지 간의 상호작용을 중시해주셨어요. 그 결과로 우리 강아지가 주인의 신뢰를 얻어낸 것 같습니다.','2023-11-26 16:38:30'),(12,12,12,'SolarHarmony455','/img/review/re_img2.png','애견 훈련소의 효과는 놀라웠어요. 특히 사회화 훈련에서 다양한 강아지들과 친해져서 소통 능력이 향상되었습니다.','2023-11-26 16:38:30'),(13,13,13,'EmeraldJourney133','/img/review/re_img3.png','훈련소에서 제공하는 지속적인 지원과 가이드가 매우 유용했습니다. 집에서 발생하는 문제에 대한 조언을 받을 수 있어 좋았어요.','2023-11-26 16:38:30'),(14,14,14,'DreamCatcher994','/img/review/re_img4.png','훈련소의 강사들은 특히 인간-강아지 상호작용에 중점을 두어 굉장히 유익한 시간을 보낼 수 있었습니다.','2023-11-26 16:38:30'),(15,15,15,'CrimsonHawk668','/img/review/re_img5.png','애견 훈련소에서의 훈련은 강아지와 주인 간의 유대감을 증진시켜주었습니다. 이제 우리 강아지는 믿음직스럽게 따르고 있어요.','2023-11-26 16:38:30'),(16,16,16,'WhisperingPines16','/img/review/re_img6.png','훈련소에서 배운 기술들은 주인이 스스로도 실천하기에 편리하고 효과적입니다. 집에서도 간단한 명령어로 강아지를 다룰 수 있어 좋습니다.','2023-11-26 16:38:30'),(17,17,17,'LunaRising289','/img/review/re_img7.png','애견 훈련소에서의 경험은 우리 가족 모두에게 큰 선물이었습니다. 강아지와 함께 보내는 시간이 더 즐겁고 편안해졌어요.','2023-11-26 16:38:30'),(18,18,18,'CelestialVoyage18','/img/review/re_img8.png','훈련소에서 배운 것들이 우리 강아지의 행동을 긍정적으로 변화시켰습니다. 특히 문제 행동의 예방과 개선에 도움이 되었습니다.','2023-11-26 16:38:30'),(19,19,19,'ShadowFrost1212','/img/review/re_img9.png','훈련소에서의 훈련은 주인과 강아지 간의 신뢰를 증진시켜줬어요. 이제 우리 강아지에게 명령을 내리면 잘 따르고 있습니다.','2023-11-26 16:38:30'),(20,20,20,'EvergreenMystic20','/img/review/re_img10.png','애견 훈련소에서의 경험 덕분에 강아지와 더 깊은 유대관계를 형성할 수 있었습니다. 추천합니다!','2023-11-26 16:38:30'),(21,21,21,'AzureWanderer393','/img/review/re_img1.png','훈련소에서 주인과 강아지 간의 상호작용을 중시해주셨어요. 그 결과로 우리 강아지가 주인의 신뢰를 얻어낸 것 같습니다.','2023-11-26 16:38:30'),(22,22,22,'CrystalFrost888','/img/review/re_img2.png','애견 훈련소의 효과는 놀라웠어요. 특히 사회화 훈련에서 다양한 강아지들과 친해져서 소통 능력이 향상되었습니다.','2023-11-26 16:38:30'),(23,23,23,'MysticDreamer177','/img/review/re_img3.png','훈련소에서 제공하는 지속적인 지원과 가이드가 매우 유용했습니다. 집에서 발생하는 문제에 대한 조언을 받을 수 있어 좋았어요.','2023-11-26 16:38:30'),(24,24,24,'MidnightHowler24','/img/review/re_img4.png','훈련소의 강사들은 특히 인간-강아지 상호작용에 중점을 두어 굉장히 유익한 시간을 보낼 수 있었습니다.','2023-11-26 16:38:30'),(25,25,25,'PhoenixBlaze644','/img/review/re_img5.png','애견 훈련소에서의 훈련은 강아지와 주인 간의 유대감을 증진시켜주었습니다. 이제 우리 강아지는 믿음직스럽게 따르고 있어요.','2023-11-26 16:38:30'),(26,26,26,'MysticSerenade26','/img/review/re_img6.png','훈련소에서 배운 기술들은 주인이 스스로도 실천하기에 편리하고 효과적입니다. 집에서도 간단한 명령어로 강아지를 다룰 수 있어 좋습니다.','2023-11-26 16:38:30'),(27,27,27,'SilverLantern211','/img/review/re_img7.png','애견 훈련소에서의 경험은 우리 가족 모두에게 큰 선물이었습니다. 강아지와 함께 보내는 시간이 더 즐겁고 편안해졌어요.','2023-11-26 16:38:30'),(28,28,28,'SolarEclipse377','/img/review/re_img8.png','훈련소에서 배운 것들이 우리 강아지의 행동을 긍정적으로 변화시켰습니다. 특히 문제 행동의 예방과 개선에 도움이 되었습니다.','2023-11-26 16:38:30'),(29,29,29,'LunarPulse899','/img/review/re_img9.png','훈련소에서의 훈련은 주인과 강아지 간의 신뢰를 증진시켜줬어요. 이제 우리 강아지에게 명령을 내리면 잘 따르고 있습니다.','2023-11-26 16:38:30'),(30,30,30,'EnchantedWhisper30','/img/review/re_img10.png','애견 훈련소에서의 경험 덕분에 강아지와 더 깊은 유대관계를 형성할 수 있었습니다. 추천합니다!','2023-11-26 16:38:30');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
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
