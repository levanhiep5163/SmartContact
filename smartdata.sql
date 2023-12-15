-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: smartcontact
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS contact;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE contact (
  c_id int NOT NULL,
  `description` longtext,
  email varchar(255) DEFAULT NULL,
  image varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  phone varchar(255) DEFAULT NULL,
  second_name varchar(255) DEFAULT NULL,
  `work` varchar(255) DEFAULT NULL,
  user_id int DEFAULT NULL,
  PRIMARY KEY (c_id),
  KEY FKe07k4jcfdophemi6j1lt84b61 (user_id),
  CONSTRAINT FKe07k4jcfdophemi6j1lt84b61 FOREIGN KEY (user_id) REFERENCES `user` (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES contact WRITE;
/*!40000 ALTER TABLE contact DISABLE KEYS */;
INSERT INTO contact VALUES (255,'<p>i am a developer</p>','angelina@gmail.com','girl2.jpg','Angelina','0328095163','angelina','Software Engineer',1852),(1052,'<p>Testing software</p>','leyla@gmail.com','girl1.jpg','Leyla','012654789','leyla','Tester',1852),(1102,'<p>She is a beautiful model</p>','lili@gmail.com','girl.jpg','LiLi','025874136','lili','Model',1852),(1202,'<p>I am a ceo</p>','lisa@gmail.com','girl3.jpg','Lisa','01267744325','lisa','CEO',1852),(1203,'<p>I am a java developer</p>','nashaki@gmail.com','girl4.jpg','Nashaki','0123456789','nashaki','Software Engineer',1852),(1252,'<p>I am a coder</p>','emma@gmail.com','girl8.jpg','Emma','0145693258','emma','Coder',1852),(1302,'<p>I am a tester</p>','sakira@gmail.com','girl5.jpg','Shakira','0325469874','shakira','Tester',1852),(1303,'<p>I am a CEO</p>','shauni@gmail.com','girl7.jpg','Shauni ','0328095163','shauni','CEO',1852),(1352,'<p>I am a Software Developer</p>','kevin@gmail.com','2.jpg','Hiep Pinpoy','0328095163','kevin','Software Engineer',1852),(1452,'<p>I am a software engineer</p>','shauni@gmail.com','girl8.jpg','Shauni Raw','0328095163','shauni','Software Engineer',1902),(1552,'<p>I am a software engineer</p>','lisa@gmail.com','girl.jpg','Lisa','032145896','lisa','Software Engineer',2002),(1602,'<p>I am a Software Engineer</p>','pen@gmail.com','2.jpg','Hiep','0328095163','kevin','Software Engineer',2052);
/*!40000 ALTER TABLE contact ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_seq`
--

DROP TABLE IF EXISTS contact_seq;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE contact_seq (
  next_val bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_seq`
--

LOCK TABLES contact_seq WRITE;
/*!40000 ALTER TABLE contact_seq DISABLE KEYS */;
INSERT INTO contact_seq VALUES (1701);
/*!40000 ALTER TABLE contact_seq ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS user;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  id int NOT NULL,
  about varchar(500) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  enabled bit(1) NOT NULL,
  image varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY UK_ob8kqyqqgmefl0aco34akdtpe (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES user WRITE;
/*!40000 ALTER TABLE user DISABLE KEYS */;
INSERT INTO user VALUES (1754,'I am developer','hiep@gmail.com',_binary '','default.png','Hiep','123456','ROLE_USER'),(1755,'I am a developer','hieple4325@gmail.com',_binary '','default.png','Hiep Le','123456','ROLE_USER'),(1802,'I am java programmer','levanhiep@gmail.com',_binary '','default.png','Le Van Hiep','$2a$10$/NRuC7ac42WgJ4WZo60pV.oCw2q/0d6FBWoR8fNIAaznXkrj9Mkoq','ROLE_USER'),(1852,'xsxsxsxsx','pinpoy1206@gmail.com',_binary '','default.png','Pinpoy','$2a$10$YqhQFJNV37fucL1.iDWEueiORUTDQ3Of8ja8O8bkR9uI/0dNU.yiu','ROLE_USER'),(1902,'I am a programmer, currently learning to build java applications.','john@gmail.com',_binary '','default.png','John Cena','$2a$10$yw.KDotyNWzSRLHVR5vLp.PbAJNgLB3oCm05KdHLg60e.myZOTJEC','ROLE_USER'),(2002,'cdcd','vanhiep464612@gmail.com',_binary '','default.png','Hiep','$2a$10$hdjQ7Lw/UufFCAvzx0fCyu6AuYxEGz4UebtKq.PKkumRfYcrHbHiC','ROLE_USER'),(2052,'I am a soffware engineer','pen@gmail.com',_binary '','default.png','Pen','$2a$10$FYErXl.tLEDLW41uFOGc3exrxDzFGk0OMy4e2P4WYExpDsqHeFXJ6','ROLE_USER'),(2053,'I am a Software Engineer','lehiep5163@gmail.com',_binary '','default.png','Lê Văn Hiệp','$2a$10$0yIo0VbzH3KWfHtQA2iOVOjjlY610WlJbZURZE2OkROejz7Xxs/ma','ROLE_USER');
/*!40000 ALTER TABLE user ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_seq`
--

DROP TABLE IF EXISTS user_seq;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE user_seq (
  next_val bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_seq`
--

LOCK TABLES user_seq WRITE;
/*!40000 ALTER TABLE user_seq DISABLE KEYS */;
INSERT INTO user_seq VALUES (2151);
/*!40000 ALTER TABLE user_seq ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-15 20:19:24
