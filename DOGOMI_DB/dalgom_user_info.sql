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
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `user_no` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `user_pw` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_birth` date NOT NULL,
  `user_call` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_joindate` date DEFAULT NULL,
  `user_state` int NOT NULL,
  PRIMARY KEY (`user_no`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'SkyWalker877','P@ssw0rd123','김지은','2023-11-26','010-5555-1234','john.doe@example.com','2023-11-26',1),(2,'SilverDragon211','Secur1tyC0de','이성우','2023-11-26','010-9876-5432','alice.smith@gmail.com','2023-11-26',1),(3,'MysticGarden644','Str0ngP@ss!','박예린','2023-11-26','010-1234-5678','emma.jones@yahoo.com','2023-11-26',1),(4,'OceanWave333','H1ddenKey$21','최준호','2023-11-26','010-8765-4321','robert.williams@hotmail.com','2023-11-26',1),(5,'Starlight888','Sh1eld@nLock','정하늘','2023-11-26','010-2345-6789','lisa.miller@outlook.com','2023-11-26',1),(6,'FirePhoenix422','Blue7iger$','김종현','2023-11-26','010-5678-1234','david.jackson@gmail.com','2023-11-26',1),(7,'EnigmaQuest199','F0rtr3ss@Home','최은서','2023-11-26','010-4321-8765','sarah.martin@yahoo.com','2023-11-26',1),(8,'RainbowSerenity8','Crypt1cP@ss','이태영','2023-11-26','010-7890-1234','kevin.thomas@hotmail.com','2023-11-26',1),(9,'NightCrawler567','S@f3H@rb0r','손소민','2023-11-26','010-8765-0987','olivia.brown@outlook.com','2023-11-26',1),(10,'GalaxyExplorer778','V1gil@ntP@ss','박준영','2023-11-26','010-3210-9876','daniel.evans@gmail.com','2023-11-26',1),(11,'BlueThunder228','IronG@t3P@ss','김수빈','2023-11-26','010-5432-1098','emily.johnson@yahoo.com','2023-11-26',1),(12,'SolarHarmony455','Saf3Vault!','이승민','2023-11-26','010-8901-2345','james.davis@hotmail.com','2023-11-26',1),(13,'EmeraldJourney133','Guard1@nKey','김현아','2023-11-26','010-4567-8901','sophia.wilson@outlook.com','2023-11-26',1),(14,'DreamCatcher994','AlphaB3ta123','박지훈','2023-11-26','010-1098-7654','ethan.white@gmail.com','2023-11-26',1),(15,'CrimsonHawk668','V3r1fyM3!','김예원','2023-11-26','010-2345-6789','mia.taylor@yahoo.com','2023-11-26',1),(16,'WhisperingPines16','Secr3tC0d3X','최민준','2023-11-26','010-8765-4321','noah.anderson@hotmail.com','2023-11-26',1),(17,'LunaRising289','P@ssP@r@d0x','이지연','2023-11-26','010-5678-1234','ava.jackson@outlook.com','2023-11-26',1),(18,'CelestialVoyage18','CyberSecr3t!','강찬우','2023-11-26','010-1234-5678','liam.smith@gmail.com','2023-11-26',1),(19,'ShadowFrost1212','Saf3Gu@rd007','김민서','2023-11-26','010-4321-8765','isabella.miller@yahoo.com','2023-11-26',1),(20,'EvergreenMystic20','LockD0wn!','임하윤','2023-11-26','010-7890-1234','benjamin.thomas@hotmail.com','2023-11-26',1),(21,'AzureWanderer393','P@ssw0rdPr0','강현우','2023-11-26','010-8765-0987','grace.davis@gmail.com','2023-11-26',1),(22,'CrystalFrost888','Sh1eldM@ster','김소희','2023-11-26','010-3210-9876','samuel.jones@yahoo.com','2023-11-26',1),(23,'MysticDreamer177','Encryp7edP@ss','박세진','2023-11-26','010-5432-1098','sophie.evans@hotmail.com','2023-11-26',1),(24,'MidnightHowler24','F0rb1dd3n@cc3ss','최은채','2023-11-26','010-8901-2345','jack.brown@outlook.com','2023-11-26',1),(25,'PhoenixBlaze644','S3cureZ0n3!','이승호','2023-11-26','010-4567-8901','abigail.wilson@gmail.com','2023-11-26',1),(26,'MysticSerenade26','Gu@rd1@nK3y!','임가영','2023-11-26','010-1098-7654','lucas.anderson@yahoo.com','2023-11-26',1),(27,'SilverLantern211','P@ssw0rdH@ven','주용준','2023-11-26','010-2345-6789','avery.taylor@hotmail.com','2023-11-26',1),(28,'SolarEclipse377','StealthP@ss!','이민지','2023-11-26','010-8765-4321','ethan.martin@outlook.com','2023-11-26',1),(29,'LunarPulse899','R3s1st@n7P@ss','윤수진','2023-11-26','010-5678-1234','audrey.johnson@gmail.com','2023-11-26',1),(30,'EnchantedWhisper30','Ultim@teC0d3!','장용준','2023-11-26','010-1234-5678','henry.smith@yahoo.com','2023-11-26',1);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
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
