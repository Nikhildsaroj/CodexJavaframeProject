CREATE DATABASE  IF NOT EXISTS `codex` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `codex`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: codex
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `coursesdetails`
--

DROP TABLE IF EXISTS `coursesdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coursesdetails` (
  `CourseID` int NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CourseDescription` text COLLATE utf8mb4_general_ci,
  `CoursePrice` double DEFAULT NULL,
  `Instructor` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Duration` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`CourseID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursesdetails`
--

LOCK TABLES `coursesdetails` WRITE;
/*!40000 ALTER TABLE `coursesdetails` DISABLE KEYS */;
INSERT INTO `coursesdetails` VALUES (1,' Introduction to Programming','This course offers a comprehensive introduction to the fundamentals of programming. Students will learn basic concepts such as variables, data types, control structures, and functions. The course covers essential programming languages including Python and JavaScript, providing a hands-on approach to solving problems and building simple applications. Ideal for beginners with no prior programming experience.',499,'Tony Stark','6 Weeks'),(2,'Blockchain Essentials','This course explains the foundations of blockchain technology, its uses in cryptocurrency, and how to develop decentralized applications (DApps) using Solidity.',999,'Natasha Romanoff','8 Weeks'),(4,' Artificial Intelligence for Beginners','Learn the fundamentals of AI, including neural networks, deep learning, and natural language processing using Python and TensorFlow.',699,'Stephen Strange',' 6 Weeks'),(5,'Cloud Computing with AWS',' Explore cloud computing fundamentals and AWS services such as EC2, S3, and Lambda. Learn how to build, deploy, and manage cloud-based applications.',799,'Carol Danvers','9 Weeks'),(6,'Big Data Analytics','This course covers big data concepts, tools like Hadoop and Spark, and techniques for analyzing large datasets to extract meaningful insights.',899,'Scott Lang','9 Weeks');
/*!40000 ALTER TABLE `coursesdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailed_reviews`
--

DROP TABLE IF EXISTS `detailed_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detailed_reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `rating` int NOT NULL,
  `overall_experience` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `recommendation` enum('yes','no') COLLATE utf8mb4_general_ci NOT NULL,
  `improvements` text COLLATE utf8mb4_general_ci,
  `submissionDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailed_reviews`
--

LOCK TABLES `detailed_reviews` WRITE;
/*!40000 ALTER TABLE `detailed_reviews` DISABLE KEYS */;
INSERT INTO `detailed_reviews` VALUES (2,'Nikhil Saroj','wd@gmail.com',5,'excellent','yes','Add more courses and add userdash board','2024-01-27 17:27:22'),(3,'Goja Sataro','jjk@gamil.com',5,'excellent','yes','Also give Big Project ','2024-01-27 17:32:37'),(5,'Dheeraj Saroj ','dds@gmail.com',4,'good','yes','NA','2024-01-28 08:50:07'),(6,'Asta ','ast@gmail.com',4,'good','yes','nothing','2024-01-30 15:56:01'),(7,'Asta ','ast@gmail.com',4,'good','yes','nothing','2024-01-30 15:57:25'),(8,'Asta ','danbahadurn22cs@student.mes.ac.in',4,'excellent','yes','hbjh','2024-01-30 16:15:37'),(9,'Nikhil Saroj','wd@gmail.com',5,'excellent','yes','ib','2024-01-30 16:31:40'),(10,'Goja Sataro','amit@gmail.com',3,'excellent','no','azaz','2024-01-30 16:32:17'),(11,'Asta ','danbahadurn22cs@student.mes.ac.in',4,'excellent','yes','hbjh','2024-01-30 18:00:29'),(12,'Harshitab','har@gmail.com',4,'good','yes','uawnwhb','2024-01-31 07:40:14'),(13,'Smita ','smita@gmail.com',5,'excellent','yes','nothing','2024-02-05 05:29:24'),(14,'Nikhil Saroj','nikhilsaroj.ai@gmail.com',5,'excellent','yes','have a user  dashboard ','2024-09-10 20:11:47');
/*!40000 ALTER TABLE `detailed_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `enrolleduser_details`
--

DROP TABLE IF EXISTS `enrolleduser_details`;
/*!50001 DROP VIEW IF EXISTS `enrolleduser_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `enrolleduser_details` AS SELECT 
 1 AS `UserID`,
 1 AS `Name`,
 1 AS `Email`,
 1 AS `Contact`,
 1 AS `course_id`,
 1 AS `course_name`,
 1 AS `instructor`,
 1 AS `course_price`,
 1 AS `duration`,
 1 AS `enrollment_datetime`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `enrollment_details`
--

DROP TABLE IF EXISTS `enrollment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_details` (
  `enrollment_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `language_preferences` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `course_id` int NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `instructor` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `course_price` decimal(10,2) NOT NULL,
  `duration` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `enrollment_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`enrollment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_details`
--

LOCK TABLES `enrollment_details` WRITE;
/*!40000 ALTER TABLE `enrollment_details` DISABLE KEYS */;
INSERT INTO `enrollment_details` VALUES (10,'Gojo Sataro','jjk@gamil.com','9049813168','Tokyo','Kanto','Japan','2024-01-03','Male','English',21,'Robotics and Autonomous Systems','Tonk Stark',1299.00,'12','2024-01-24 18:48:25'),(11,'NIKhil Saroj','nds@gmail.com','9049813165','Tokyo','Kanto','Japan','2024-01-09','Male','French',5,' Core Java  ','Gojo Sataro',999.00,'5','2024-01-27 19:50:57'),(13,'Smita','smita@gmail.com','34356354732','panvel','maharatsa ','india','2024-02-14','Female','French',15,'Mobile App Development with React Native',' Dr. Alex Johnson',2599.00,'10','2024-02-05 05:28:22'),(16,'Baymax','danbahadurn22cs@student.mes.ac.in','4656453644','thane','maharastra','india','2024-07-04','Male','English',5,' Core Java  ','Gojo Sataro',999.00,'5 Weeks','2024-07-04 12:32:18'),(17,'Nikhil Saroj','danbahadurn22cs@student.mes.ac.in','9049813168','Tokyo','Kanto','Japan','2024-07-16','Male','Spanish',26,'Introduction to Artificial Intelligence','Tony Stark',699.00,'3 Weeks','2024-07-07 17:41:29'),(23,'nikhil','nikhilsaroj.ai@gmail.com','2312312323','mumbai','wc','wcw','2024-07-18','Male','English',1,' Introduction to Programming','Tony Stark',499.00,'3 Weeks','2024-07-21 09:29:17'),(24,'Nikhil Saroj','nikhildsaroj23@gmail.com','9049813168','mumbai','Tokiyo','UK','2024-09-03','Male','English',1,' Introduction to Programming','Tony Stark',499.00,'3 Weeks','2024-09-10 18:04:13'),(25,'Nikhil Saroj','nikhildsaroj23@gmail.com','9049813168','mumbai','Tokiyo','UK','2024-09-03','Male','English',1,' Introduction to Programming','Tony Stark',499.00,'3 Weeks','2024-09-10 18:06:28'),(26,'Nikhil Saroj','nikhildsaroj23@gmail.com','9049813168','mumbai','Tokiyo','UK','2024-09-03','Male','English',1,' Introduction to Programming','Tony Stark',499.00,'3 Weeks','2024-09-10 18:06:35'),(27,'Nikhil Saroj','nikhilsaroj.ai@gmail.com','9049813168','Seoul','Gyeonggi Province','Japan','2004-02-23','Male','French',2,'Blockchain Essentials','Natasha Romanoff',999.00,'8 Weeks','2024-09-10 19:26:47');
/*!40000 ALTER TABLE `enrollment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Contact` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'NIKhil Saroj','nds@gmail.com','9876543211','12','2023-12-24 18:48:27'),(3,'Nikhil D Saroj','nik@gmail.com','9766828727','12341234','2023-12-24 19:13:49'),(4,'Amit','amit@gmail.com','0987654321','33443344','2023-12-26 16:53:25'),(8,'Dheeraj','dds@gmail.com','1233211233','11111111','2023-12-31 07:41:37'),(10,'Sukuna ','jjk@gamil.com','3421111112','1212','2024-01-24 18:32:32'),(11,'Prakash ','pra@gmail.com','7899888999','1212','2024-01-27 17:19:05'),(13,'Black Clover ','asta@gmail.com','6899677867','3333','2024-02-05 03:47:11'),(14,'vidhi','vidhi@gmail.com','9638527410','1234','2024-02-05 04:17:26'),(15,'Smita ','smita@gmail.com','9513578462','1234','2024-02-05 05:22:52'),(17,'Harshita Pal','danbahadurn22cs@student.mes.ac.in','1233211233','1111','2024-07-04 10:07:27'),(18,'Prakash Kumavat','prakashk22cs@student.mes.ac.in','8879697449','0909','2024-07-04 10:58:29'),(19,'Nikhil Saroj','nikhildsaroj23@gmail.com','9438494943','1111','2024-09-10 17:51:28'),(20,'Nikhil Saroj','nikhilsaoj.ai@gmail.com','9049813168','1234','2024-09-10 19:10:09'),(21,'Nikhil Saroj','nikhilsaroj.ai@gmail.com','9049813168','123nds','2024-09-10 19:13:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vip_members`
--

DROP TABLE IF EXISTS `vip_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vip_members` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `membership_plan` enum('BASIC','STANDARD','PREMIUM') NOT NULL,
  `payment_method` enum('CREDIT_CARD','UPI','PAYTM','GOOGLE_PAY') NOT NULL,
  `card_number` varchar(16) DEFAULT NULL,
  `card_expiry_date` varchar(5) DEFAULT NULL,
  `card_cvv` varchar(4) DEFAULT NULL,
  `upi_id` varchar(100) DEFAULT NULL,
  `paytm_number` varchar(15) DEFAULT NULL,
  `google_pay_number` varchar(15) DEFAULT NULL,
  `vip_key` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_address` (`email_address`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip_members`
--

LOCK TABLES `vip_members` WRITE;
/*!40000 ALTER TABLE `vip_members` DISABLE KEYS */;
INSERT INTO `vip_members` VALUES (12,'Amit Kumar Mehta','amitkumarm22cs@student.mes.ac.in','BASIC','GOOGLE_PAY',NULL,NULL,NULL,NULL,NULL,'7875652974','Z9QKGRRL7','2024-09-10 10:25:05'),(19,'Prakash kumavat','prakashk22cs@student.mes.ac.in','PREMIUM','CREDIT_CARD','7865678765677897','08/34','789',NULL,NULL,NULL,'Y91DOJOOY','2024-09-10 11:00:25'),(20,'Nikhil Saroj','nikhilsaroj.ai@gmail.com','PREMIUM','PAYTM',NULL,NULL,NULL,NULL,'9049813168',NULL,'8O91D3YS9','2024-09-10 19:35:19');
/*!40000 ALTER TABLE `vip_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `enrolleduser_details`
--

/*!50001 DROP VIEW IF EXISTS `enrolleduser_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `enrolleduser_details` AS select `u`.`UserID` AS `UserID`,`u`.`Name` AS `Name`,`u`.`Email` AS `Email`,`u`.`Contact` AS `Contact`,`e`.`course_id` AS `course_id`,`e`.`course_name` AS `course_name`,`e`.`instructor` AS `instructor`,`e`.`course_price` AS `course_price`,`e`.`duration` AS `duration`,`e`.`enrollment_datetime` AS `enrollment_datetime` from (`users` `u` join `enrollment_details` `e` on((`u`.`Email` = `e`.`email`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-11  2:28:39
