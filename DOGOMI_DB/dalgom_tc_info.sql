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
-- Table structure for table `tc_info`
--

DROP TABLE IF EXISTS `tc_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc_info` (
  `tc_no` int NOT NULL AUTO_INCREMENT,
  `tc_id` varchar(100) NOT NULL,
  `tc_pw` varchar(100) NOT NULL,
  `tc_name` varchar(100) NOT NULL,
  `tc_call` varchar(50) NOT NULL,
  `tc_email` varchar(100) NOT NULL,
  `tc_main_ad` varchar(100) NOT NULL,
  `tc_sub_ad` text NOT NULL,
  `tc_joindate` date DEFAULT NULL,
  `tc_confirm` int DEFAULT NULL,
  `tc_img` text,
  `tc_leader` varchar(50) NOT NULL,
  `tc_businesse_no` varchar(50) NOT NULL,
  PRIMARY KEY (`tc_no`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_info`
--

LOCK TABLES `tc_info` WRITE;
/*!40000 ALTER TABLE `tc_info` DISABLE KEYS */;
INSERT INTO `tc_info` VALUES (1,'Bolt','Shadowy1','강아지마을','010-1111-2222','user1@gmail.com','서울특별시','강남구 역삼동','2023-11-27',1,'/img/tc/tc_img1.gif','김지수','123-45-67890'),(2,'Tide','Blazing2','별이키우는집','010-3333-4444','contact2@yahoo.com','서울특별시','종로구 혜화동','2023-11-27',1,'/img/dog2.png','이현우','234-56-78901'),(3,'Warp','Thunder3','행복한토론소','010-5555-6666','example3@hotmail.com','서울특별시','서대문구 창천동','2023-11-27',1,'/img/tc/tc_img3.png','박소연','345-67-89012'),(4,'Hike','Crystal4','애견멍멍휴게소','010-7777-8888','test4@outlook.com','인천광역시','동대문구 제기동','2023-11-27',1,'/img/tc/tc_img4.gif','정태영','456-78-90123'),(5,'Nest','Diamond5','산책길마을','010-9999-0000','mail5@aol.com','인천광역시','영등포구 여의도동','2023-11-27',1,'/img/tc/tc_img5.jpg','송지은','567-89-01234'),(6,'Pave','Unknown6','코코스놀이터','010-1234-5678','abcde6@naver.com','인천광역시','서초구 방배동','2023-11-27',1,'/img/tc/tc_img6.png','강성민','678-90-12345'),(7,'Jolt','Maverick7','푸들파크','010-2468-1357','user7@gmail.com','경기도','강서구 등촌동','2023-11-27',1,'/img/tc/tc_img7.gif','조현지','789-01-23456'),(8,'Vast','Victory8','강아지도서관','010-9876-5432','contact8@yahoo.com','경기도','마포구 서교동','2023-11-27',1,'/img/dog2.png','백승호','890-12-34567'),(9,'Torn','Explorer9','반려동물행복도장','010-8765-4321','example9@hotmail.com','경기도','성동구 성수동','2023-11-27',1,'/img/tc/tc_img9.gif','임수진','901-23-45678'),(10,'Glow','Phoenix10','도그파크마을','010-1357-2468','test10@outlook.com','강원도','송파구 잠실동','2023-11-27',1,'/img/tc/tc_img10.jpg','홍진우','012-34-56789'),(11,'Zest','Infinity11','해피독하우스','010-1122-3344','mail11@aol.com','강원도','강북구 수유동','2023-11-27',1,'/img/tc/tc_img11.gif','서영호','123-45-67890'),(12,'Dusk','Serpent12','신나는애견놀이터','010-5566-7788','abcde12@naver.com','강원도','은평구 대조동','2023-11-27',1,'/img/tc/tc_img12.jpg','김민지','234-56-78901'),(13,'Lung','Journey13','행복한케어센터','010-9900-1122','user13@gmail.com','충남','강동구 천호동','2023-11-27',1,'/img/tc/tc_img13.gif','신동우','345-67-89012'),(14,'Myth','Whiskey14','멍멍카페','010-1212-3434','contact14@yahoo.com','충남','도봉구 창동','2023-11-27',1,'/img/tc/tc_img14.gif','최가영','456-78-90123'),(15,'Oath','Triumph15','반려견마을','010-5656-7878','example15@hotmail.com','충남','관악구 신림동','2023-11-27',1,'/img/dog2.png','윤범진','567-89-01234'),(16,'Curb','Elevate16','사랑스러운애견놀이터','010-7878-5656','test16@outlook.com','세종특별자치시','강남구 논현동','2023-11-27',1,'/img/tc/tc_img16.gif','이서연','678-90-12345'),(17,'Puma','Liberty17','댕댕이와의만남','010-3434-1212','mail17@aol.com','세종특별자치시','중구 명동','2023-11-27',1,'/img/tc/tc_img17.png','임재현','789-01-23456'),(18,'Veil','Firefly18','애견파라다이스','010-2121-4343','abcde18@naver.com','세종특별자치시','성북구 석관동','2023-11-27',1,'/img/tc/tc_img1.gif','전유진','890-12-34567'),(19,'Vibe','Harmony19','산책로동반카페','010-6767-8989','user19@gmail.com','대전광역시','금천구 가산동','2023-11-27',1,'/img/tc/tc_img2.jpg','김동민','901-23-45678'),(20,'Yarn','Stellar20','햇살가득한애견공원','010-8989-6767','contact20@yahoo.com','대전광역시','중랑구 신내동','2023-11-27',1,'/img/tc/tc_img3.png','정하은','012-34-56789'),(21,'Dine','Horizon21','힐링멍멍스페이스','010-4343-2121','example21@hotmail.com','대전광역시','강서구 화곡동','2023-11-27',1,'/img/dog2.png','오재원','123-45-67890'),(22,'Jade','Avalanche22','러블리애견하우스','010-9911-2233','test22@outlook.com','충북','양천구 목동','2023-11-27',1,'/img/tc/tc_img5.jpg','박은지','234-56-78901'),(23,'Rave','Velocity23','동글동글애견놀이터','010-3344-5566','mail23@aol.com','충북','광진구 자양동','2023-11-27',1,'/img/tc/tc_img6.png','강민호','345-67-89012'),(24,'Tint','Eclipse24','모래놀이하는집','010-8899-0011','abcde24@naver.com','충북','강남구 일원동','2023-11-27',1,'/img/dog2.png','이지수','456-78-90123'),(25,'Dive','Quantum25','행복한애견카페','010-3210-5432','user25@gmail.com','경북','송파구 풍납동','2023-11-27',1,'/img/tc/tc_img8.png','황재은','567-89-01234'),(26,'Quad','Nebula26','바람나무공원','010-6789-1234','contact26@yahoo.com','경북','강북구 미아동','2023-11-27',1,'/img/tc/tc_img9.gif','정승현','678-90-12345'),(27,'Ogre','Adventure27','별이떠오르는집','010-4321-8765','example27@hotmail.com','경북','동작구 사당동','2023-11-27',1,'/img/dog2.png','최소미','789-01-23456'),(28,'Moss','Spectrum28','강아지와의만남','010-7654-3210','test28@outlook.com','전북','용산구 이태원동','2023-11-27',1,'/img/dog2.png','김우진','890-12-34567'),(29,'Lush','Velocity29','신나는애견데이트','010-1122-3344','mail29@aol.com','전북','서대문구 남가좌동','2023-11-27',1,'/img/tc/tc_img12.jpg','손현주','901-23-45678'),(30,'Echo','Obsidian30','따뜻한애견휴식장','010-5566-7788','abcde30@naver.com','전북','성동구 마장동','2023-11-27',1,'/img/tc/tc_img13.gif','임태우','012-34-56789'),(31,'Keen','Radiant31','친구와함께','010-9900-1122','user31@gmail.com','대구광역시','도봉구 도봉동','2023-11-27',1,'/img/tc/tc_img14.gif','신미래','123-45-67890'),(32,'Opal','Celestial32','애견휴식천국','010-1212-3434','contact32@yahoo.com','대구광역시','강동구 성내동','2023-11-27',1,'/img/tc/tc_img15.jpg','나준호','234-56-78901'),(33,'Kite','Adventure33','댕댕이숲','010-5656-7878','example33@hotmail.com','대구광역시','강남구 개포동','2023-11-27',1,'/img/tc/tc_img16.gif','한수진','345-67-89012'),(34,'Rive','Dynamic34','마음이통하는집','010-7878-5656','test34@outlook.com','경남','중구 소공동','2023-11-27',1,'/img/tc/tc_img17.png','이진호','456-78-90123'),(35,'Ploy','Serenity35','강아지와함께하는집','010-3434-1212','mail35@aol.com','경남','관악구 봉천동','2023-11-27',1,'/img/dog2.png','김수빈','567-89-01234'),(36,'Jinx','Infinite36','행복한애견카페','010-2121-4343','abcde36@naver.com','경남','강북구 번동','2023-11-27',1,'/img/tc/tc_img2.jpg','오영진','678-90-12345'),(37,'Pint','Nebula37','모래밭놀이터','010-6767-8989','user37@gmail.com','울산광역시','성북구 동선동','2023-11-27',1,'/img/tc/tc_img3.png','박지민','789-01-23456'),(38,'Axle','Venture38','애견과함께하는공간','010-8989-6767','contact38@yahoo.com','울산광역시','송파구 방이동','2023-11-27',1,'/img/tc/tc_img4.gif','정호석','890-12-34567'),(39,'Gush','Ascend39','동글동글한집','010-4343-2121','example39@hotmail.com','울산광역시','구로구 구로동','2023-11-27',1,'/img/tc/tc_img5.jpg','임지원','901-23-45678'),(40,'Yoke','Uprising40','애견놀이마을','010-9911-2233','test40@outlook.com','부산광역시','강서구 마곡동','2023-11-27',1,'/img/tc/tc_img6.png','강준영','012-34-56789'),(41,'Sway','Luminous41','즐거운애견하우스','010-3344-5566','mail41@aol.com','부산광역시','노원구 공릉동','2023-11-27',1,'/img/tc/tc_img7.gif','최유진','123-45-67890'),(42,'Wisp','Resilient42','노을풍경애견놀이터','010-8899-0011','abcde42@naver.com','부산광역시','강남구 수서동','2023-11-27',1,'/img/tc/tc_img8.png','김동현','234-56-78901'),(43,'Luna','Valiant43','함께하는애견스페이스','010-3210-5432','user43@gmail.com','광주광역시','중랑구 면목동','2023-11-27',1,'/img/tc/tc_img9.gif','소윤서','345-67-89012'),(44,'Fume','Eternity44','신나는애견데이트','010-6789-1234','contact44@yahoo.com','광주광역시','동대문구 이문동','2023-11-27',1,'/img/tc/tc_img10.jpg','황범준','456-78-90123'),(45,'Peak','Galactic45','햇살가득한애견휴식공간','010-4321-8765','example45@hotmail.com','광주광역시','서대문구 북가좌동','2023-11-27',1,'/img/tc/tc_img11.gif','이하늘','567-89-01234'),(46,'Aura','Paramount46','마음이통하는집','010-7654-3210','test46@outlook.com','전남','양천구 신월동','2023-11-27',1,'/img/tc/tc_img12.jpg','정태린','678-90-12345'),(47,'Haul','Mystic47','강아지와의만남','010-1122-3344','mail47@aol.com','전남','성동구 옥수동','2023-11-27',1,'/img/tc/tc_img13.gif','박지호','789-01-23456'),(48,'Veto','Quantum48','공원에서놀자','010-5566-7788','abcde48@naver.com','전남','은평구 불광동','2023-11-27',1,'/img/tc/tc_img14.gif','유하나','890-12-34567'),(50,'Lure','Paramount50','산책로동반카페','010-1212-3434','contact50@yahoo.com','제주시','동작구 대방동','2023-11-27',1,'/img/tc/tc_img16.gif','전나은','012-34-56789'),(51,'Grit','Odyssey51','애견하우스','010-5656-7878','example51@hotmail.com','제주시','강동구 둔촌동','2023-11-27',1,'/img/dog2.png','이태양','123-45-67890'),(52,'user123','Passw0rd!','퍼피 러브','010-6612-1328','kittycatlover123@gmail.com','서울특별시','강남구 청담동','2023-11-27',0,'/img/tc/tc_img7.gif','신유정','234-56-78901'),(53,'coolUser','Secure123@','해피 테일','010-7246-7872','galacticpizzaenthusiast@yahoo.com','인천광역시','마포구 합정동','2023-11-27',0,'/img/tc/tc_img8.png','오민석','345-67-89012'),(54,'myAccount','StrongP@ss','강아지 멜로디','010-4216-3615','unicornwhisperer@hotmail.com','부산광역시','송파구 잠실동','2023-11-27',0,'/img/tc/tc_img9.gif','조현우','456-78-90123'),(55,'techGeek','Pasedwaord35@3','펫스마일','010-3186-5154','sushisamurai666@outlook.com','제주시','종로구 인사동','2023-11-27',0,'/img/tc/tc_img10.jpg','최윤서','567-89-01234');
/*!40000 ALTER TABLE `tc_info` ENABLE KEYS */;
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
