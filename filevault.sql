-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: filevaultdb
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `file_master`
--

DROP TABLE IF EXISTS `file_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_master` (
  `File_Id` int NOT NULL AUTO_INCREMENT,
  `File_Name` varchar(45) DEFAULT NULL,
  `File_Type` varchar(45) DEFAULT NULL,
  `File_Desc` varchar(45) DEFAULT NULL,
  `User_Id` int DEFAULT NULL,
  `File_Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`File_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_master`
--

LOCK TABLES `file_master` WRITE;
/*!40000 ALTER TABLE `file_master` DISABLE KEYS */;
INSERT INTO `file_master` VALUES (1,'66.pdf','pdf','dfdfgsdfg',2,'20200731164649'),(2,'66.doc','doc','sfrwerwer',2,'20200731165127'),(3,'2.pdf','.pdf','demo file upload',5,'20200801183203'),(4,'3.pdf','.pdf','demo file upload',5,'20200801184407'),(5,'1.pdf','.pdf','demo file upload',5,'20200801184940'),(6,'2.2.pdf','.2.pdf','demo file upload',5,'20200801185510'),(7,'2.2d.pdf','.2d.pdf','demo file upload',5,'20200801185935'),(8,'2.pdf','.pdf','demo file upload',5,'20200801190556'),(9,'1.pdf','.pdf','demo file upload',5,'20200801191015'),(10,'2.pdf','.pdf','demo file upload',5,'20200801192103'),(11,'3.pdf','.pdf','demo file upload',5,'20200801194828'),(12,'1.pdf','.pdf','demo file upload',5,'20200801194828'),(13,'1.pdf','.pdf','demo file upload',5,'20200801195313'),(14,'2.pdf','.pdf','demo file upload',5,'20200801195313'),(15,'1.pdf','.pdf','demo file upload',5,'20200801201416'),(16,'22Kv replacement print.docx','.docx','demo file upload',8,'20200801202929');
/*!40000 ALTER TABLE `file_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_master` (
  `User_Id` int NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(45) DEFAULT NULL,
  `User_Institute` varchar(45) DEFAULT NULL,
  `User_Email` varchar(45) DEFAULT NULL,
  `User_Password` varchar(45) DEFAULT NULL,
  `User_Active_Status` varchar(45) DEFAULT 'N',
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_master`
--

LOCK TABLES `user_master` WRITE;
/*!40000 ALTER TABLE `user_master` DISABLE KEYS */;
INSERT INTO `user_master` VALUES (1,'me','me','me@me.com','me','Y'),(2,'demo','demo','demo@abc.com','demo','Y'),(3,'try','try','try@abc.com','try','N'),(4,'demo','demo','','xf','N'),(5,'demo','demo','ujjwalgedam@gmail.com','demo','Y'),(6,'demo','demo','demo@abc.com','demo','N'),(7,'demo','demo','demo@abc.com','demo','N'),(8,'salemm','ctel','meet.saleem.khan@gmail.com','saleem','Y');
/*!40000 ALTER TABLE `user_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-12 20:57:56
