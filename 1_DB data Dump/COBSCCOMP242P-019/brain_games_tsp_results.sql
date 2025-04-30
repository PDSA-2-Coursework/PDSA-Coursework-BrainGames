CREATE DATABASE  IF NOT EXISTS `brain_games` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `brain_games`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: brain_games
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `tsp_results`
--

DROP TABLE IF EXISTS `tsp_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tsp_results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_name` varchar(100) NOT NULL,
  `home_city` varchar(100) NOT NULL,
  `selected_cities` text NOT NULL,
  `shortest_route` text NOT NULL,
  `route_cost` float NOT NULL,
  `brute_force_time` float DEFAULT NULL,
  `greedy_time` float DEFAULT NULL,
  `dp_time` float DEFAULT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsp_results`
--

LOCK TABLES `tsp_results` WRITE;
/*!40000 ALTER TABLE `tsp_results` DISABLE KEYS */;
INSERT INTO `tsp_results` VALUES (1,'shaz','J','[\"A\", \"D\"]','[\"J\", \"A\", \"D\", \"J\"]',202,0,0,0,'2025-04-30 14:40:15'),(2,'shaz','B','[\"A\", \"C\"]','[\"B\", \"A\", \"C\", \"B\"]',213,0,0,0,'2025-04-30 16:57:27'),(3,'shaz','J','[\"A\", \"B\"]','[\"J\", \"B\", \"A\", \"J\"]',180,0,0,0,'2025-04-30 19:28:42'),(4,'shaz','J','[\"A\", \"B\"]','[\"J\", \"A\", \"B\", \"J\"]',239,0,0,0,'2025-04-30 19:29:52'),(5,'shaz','F','[\"A\", \"J\"]','[\"F\", \"A\", \"J\", \"F\"]',238,0,0,0,'2025-04-30 19:30:09'),(6,'shaz','C','[\"A\", \"F\"]','[\"C\", \"A\", \"F\", \"C\"]',211,0,0,0,'2025-04-30 19:30:26'),(7,'shaz','C','[\"F\", \"I\"]','[\"C\", \"I\", \"F\", \"C\"]',196,0,0,0,'2025-04-30 19:30:56'),(8,'shaz','G','[\"B\", \"E\", \"I\"]','[\"G\", \"I\", \"E\", \"B\", \"G\"]',283,0,0,0,'2025-04-30 19:31:33'),(9,'shaz','A','[\"B\", \"E\"]','[\"A\", \"E\", \"B\", \"A\"]',230,0,0,0,'2025-04-30 19:32:04'),(10,'shaz','G','[\"A\", \"D\"]','[\"G\", \"D\", \"A\", \"G\"]',221,0,0,0,'2025-04-30 19:32:35'),(11,'shaz','F','[\"A\", \"D\"]','[\"F\", \"A\", \"D\", \"F\"]',211,0,0,0,'2025-04-30 19:33:37'),(12,'shaz','J','[\"A\", \"B\"]','[\"J\", \"A\", \"B\", \"J\"]',207,0,0,0,'2025-04-30 19:34:01');
/*!40000 ALTER TABLE `tsp_results` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-30 20:49:49
