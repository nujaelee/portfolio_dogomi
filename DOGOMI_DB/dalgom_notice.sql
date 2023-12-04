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
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `nt_no` int NOT NULL AUTO_INCREMENT,
  `nt_title` varchar(50) NOT NULL,
  `nt_content` varchar(200) NOT NULL,
  `nt_date` date DEFAULT NULL,
  `nt_state` int NOT NULL,
  PRIMARY KEY (`nt_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'서비스 안정화를 위한 리뷰 일시 중단 안내','안녕하세요. 달곰입니다.\r\n2023 달곰의 회원가입수가 매우 높아질 것이 예상되어, 안정적인 서비스 제공을 위해 리뷰 커뮤니티의 운영을 일시 중단합니다.\r\n\r\n■ 적용 일시: 11/17(금) 22시 ~ 별도 공지 시점까지\r\n\r\n- 리뷰 커뮤니티의 서비스 재개 시점은 추후 별도 공지 예정\r\n- 11월 17일(금) 22시까지 작성한 리뷰는 정상적으로 남아있음','2023-11-26',1),(2,'달곰 리뷰 추천 이벤트 종료 사전 안내','안녕하세요. 달곰입니다.\r\n더욱 간소한 리뷰 작성 환경을 조성하기 위해 리뷰 서비스를 종료합니다.\r\n\r\n■ 종료 일시\r\n\r\n2023년 12월 14일 15시','2023-11-26',1),(3,'개인정보처리방침 개정 내용 사전 안내 (12/14 시행)','안녕하세요. 달곰입니다.\r\n\r\n12/14(목)부터 개인정보처리방침이 일부 변경될 예정입니다.\r\n\r\n달곰은 회원님의 개인정보를 안전하게 활용하고 보호하기 위한 노력과 관련 법규 준수에 최선을 다하고 있습니다.','2023-11-26',1),(4,'안드로이드 OS 최소지원버전 관련 안내','안녕하세요, 달곰입니다.\r\n\r\n안드로이드 OS 지원 버전을 상향 조정하게 되어 안내드립니다.\r\n높은 보안 수준을 유지하기 위한 부득이한 조치로 사용자 여러분의 너그러운 양해를 부탁드리며, 상세 내용은 아래와 같습니다.\r\n\r\n■ 중단대상 : 안드로이드 OS 9.0 버전 미만\r\n\r\n■ 중단일정 : 2022년 12월 20일 부터','2023-11-26',1),(5,'인터넷 익스플로러(IE) 지원 종료 안내','안녕하세요. 달곰입니다.\r\n\r\n마이크로소프트(MS)의 공식 지원이 종료되는 인터넷 익스플로러(IE)에 대한 업데이트 지원을 종료합니다.\r\n지원 종료일은 2022년 11월 24일 금요일이며 사유는 보안 업데이트 미진행 등 정보 보호에 취약한 브라우저 지원 중단입니다.\r\n\r\n권장 브라우저 : 구글 크롬(Chrome), 네이버 웨일(Whale) 등 최신 브라우저','2023-11-26',1),(6,'고객센터 운영 시간 확대 안내','안녕하세요. 달곰입니다.\r\n\r\n달곰을 이용해주시는 고객님들께 더 좋은 서비스로 보답하고자 고객센터 운영 시간을 확대합니다.\r\n\r\n- 변경 전: 점심시간(낮 12시~오후 1시) 상담 운영 제외\r\n- 변경 후: 제외 시간 없이 상담 운영\r\n\r\n※ 고객센터 이용 안내\r\n- 운영 시간: 오전 9시 ~ 오후 6시(토/일/공휴일은 제외)','2023-11-26',1),(7,'친구 및 쪽지 서비스 종료 안내','안녕하세요. 달곰입니다.\r\n\r\n친구 및 쪽지 서비스가 2023년 11월 7일 종료됨을 안내해 드립니다.\r\n\r\n친구: 맞팔 목록, 팔로워 목록, 팔로잉 목록, 친구요청(팔로잉) 서비스\r\n쪽지: 받은 쪽지, 보낸 쪽지, 쪽지보관함 목록, 쪽지 발송 서비스\r\n\r\n마이페이지 내 메뉴 제거일: 2023년 11월 9일\r\n\r\n서비스 종료일 : 2023년 11월 9일','2023-11-26',1),(8,'닉네임 등록 정책 변경 안내','안녕하세요. 달곰입니다.\r\n닉네임 등록 정책이 변경되어 안내해 드립니다.\r\n\r\n(기존)\r\n - 입력은 최대 10자 이내\r\n - 중복 닉네임 불가\r\n\r\n(변경)\r\n - 입력은 최대 15자 이내\r\n - 중복 닉네임 불가\r\n - 금칙어 불가\r\n - 닉네임의 처음과 마지막 부분 공백 사용 불가\r\n\r\n정책 시행일 : 2023년 11월 14일','2023-11-26',1),(9,'달곰 신규 회원 가입 혜택 변경 안내','달곰 신규 회원 가입 혜택이 변경되었습니다.\r\n\r\n달곰 회원으로 가입하시고 더 큰 혜택을 누려보세요.\r\n\r\n[가입혜택]\r\n최대 15만 원 할인 쿠폰팩 증정\r\n(15%X 2 / 10% / 7% / 3만 원 / 2만 원 / 1만 원 / 5천 원 / 3천 원 / 2천 원 )\r\n\r\n[적용일시]\r\n12/30(토) 오전 10시부터','2023-11-26',1),(10,'리뷰 도용 관련 공지 입니다.','리뷰 도용 관련 공지입니다.\r\n\r\n최근 타인의 리뷰를 도용하여 리뷰를 작성하는 사례들에 대한 신고가 들어오고 있습니다.\r\n\r\n리뷰를 도용한 경우 해당 카테고리의 리뷰 작성으로 부터 받을 수 있는 최대 조회수의 수치가 초기화 되며,\r\n\r\n1년 간 커뮤니티의 이용이 차단됩니다.\r\n\r\n반드시 본인이 수료한 훈련의 후기만을 등록해주시기 바랍니다.','2023-11-26',1);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
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
