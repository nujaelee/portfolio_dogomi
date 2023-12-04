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
-- Table structure for table `pet`
--

DROP TABLE IF EXISTS `pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet` (
  `p_no` int NOT NULL AUTO_INCREMENT,
  `p_name` varchar(50) NOT NULL,
  `p_birth` date DEFAULT NULL,
  `user_no` int NOT NULL,
  `p_gender` varchar(50) NOT NULL,
  `p_blood` varchar(50) NOT NULL,
  `p_size` varchar(50) NOT NULL,
  `p_weight` double NOT NULL,
  `p_vaccine` text NOT NULL,
  `p_kind` text NOT NULL,
  PRIMARY KEY (`p_no`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet`
--

LOCK TABLES `pet` WRITE;
/*!40000 ALTER TABLE `pet` DISABLE KEYS */;
INSERT INTO `pet` VALUES (1,'뽀롱이','2023-11-26',1,'수컷(중성x)','DEA 1.1','대형',15.5,'기초1차','골든 리트리버'),(2,'뭉치','2023-11-26',2,'수컷(중성o)','DEA 1.2','중형',12.75,'기초2차','푸들'),(3,'코코','2023-11-26',3,'암컷','DEA 3','소형',8.2,'기초3차','요크셔 테리어'),(4,'두부','2023-11-26',4,'수컷(중성o)','DEA 4','대형',22.1,'기초4차','비글'),(5,'랄프','2023-11-26',5,'암컷','DEA 5','중형',18.6,'기초5차','시베리안 허스키'),(6,'별이','2023-11-26',6,'수컷(중성x)','DEA 6','소형',5.8,'기초6차','도베르만'),(7,'초코','2023-11-26',7,'수컷(중성o)','DEA 1.1','대형',25.3,'추가접종완료','말티즈'),(8,'루나','2023-11-26',8,'암컷','DEA 1.2','중형',14.9,'기초1차','말라뮤트'),(9,'별빛','2023-11-26',9,'수컷(중성o)','DEA 3','소형',7.4,'기초2차','불독'),(10,'토리','2023-11-26',10,'암컷','DEA 4','대형',28.6,'기초3차','달마시안'),(11,'쿠키','2023-11-26',11,'수컷(중성x)','DEA 5','중형',16.8,'기초4차','포메라니안'),(12,'고니','2023-11-26',12,'수컷(중성o)','DEA 6','소형',6.9,'기초5차','시바'),(13,'라이언','2023-11-26',13,'암컷','DEA 1.1','대형',19.2,'기초6차','시츄'),(14,'뿌리','2023-11-26',14,'수컷(중성x)','DEA 1.2','중형',14.5,'추가접종완료','골든 리트리버'),(15,'콩이','2023-11-26',15,'수컷(중성o)','DEA 3','소형',7.6,'기초1차','푸들'),(16,'멍멍이','2023-11-26',16,'암컷','DEA 4','대형',26.8,'기초2차','요크셔 테리어'),(17,'코코넛','2023-11-26',17,'수컷(중성o)','DEA 5','중형',18.4,'기초3차','비글'),(18,'미로','2023-11-26',18,'암컷','DEA 6','소형',5.5,'기초4차','시베리안 허스키'),(19,'토끼','2023-11-26',19,'수컷(중성x)','DEA 1.1','대형',23.9,'기초5차','도베르만'),(20,'코튼','2023-11-26',20,'수컷(중성o)','DEA 1.2','중형',15.8,'기초6차','말티즈'),(21,'소금이','2023-11-26',21,'암컷','DEA 3','소형',6.7,'추가접종완료','말라뮤트'),(22,'빵이','2023-11-26',22,'수컷(중성o)','DEA 4','대형',27.1,'기초1차','불독'),(23,'뚜루','2023-11-26',23,'암컷','DEA 5','중형',16.2,'기초2차','달마시안'),(24,'미니','2023-11-26',24,'수컷(중성x)','DEA 6','소형',6.3,'기초3차','포메라니안'),(25,'마카롱','2023-11-26',25,'수컷(중성o)','DEA 1.1','대형',21.8,'기초4차','시바'),(26,'토비','2023-11-26',26,'암컷','DEA 1.2','중형',13.7,'기초5차','시츄'),(27,'뽀뽀','2023-11-26',27,'수컷(중성o)','DEA 3','소형',7.9,'기초6차','골든 리트리버'),(28,'곰돌이','2023-11-26',28,'암컷','DEA 4','대형',24.3,'추가접종완료','푸들'),(29,'미미','2023-11-26',29,'수컷(중성x)','DEA 5','중형',17.1,'기초1차','요크셔 테리어'),(30,'사랑이','2023-11-26',30,'수컷(중성o)','DEA 6','소형',6.1,'기초2차','비글');
/*!40000 ALTER TABLE `pet` ENABLE KEYS */;
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
