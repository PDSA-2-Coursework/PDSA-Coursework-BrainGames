CREATE DATABASE  IF NOT EXISTS `brain_games` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `brain_games`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: brain_games
-- ------------------------------------------------------
-- Server version	8.0.42

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsp_results`
--

LOCK TABLES `tsp_results` WRITE;
/*!40000 ALTER TABLE `tsp_results` DISABLE KEYS */;
INSERT INTO `tsp_results` VALUES (1,'Erandi','G','[\"A\", \"C\", \"D\", \"F\", \"I\"]','[\"G\", \"A\", \"F\", \"I\", \"C\", \"D\", \"G\"]',381,2.99,0,0,'2025-04-30 20:21:18'),(2,'Erandi','I','[\"A\", \"B\", \"C\"]','[\"I\", \"B\", \"A\", \"C\", \"I\"]',253,0,0,0,'2025-04-30 20:21:42'),(3,'Erandi','I','[\"A\", \"C\", \"E\"]','[\"I\", \"E\", \"C\", \"A\", \"I\"]',294,0,0,0,'2025-04-30 20:22:31'),(4,'Erandi','C','[\"E\", \"F\", \"G\"]','[\"C\", \"E\", \"G\", \"F\", \"C\"]',268,0,0,0,'2025-04-30 20:23:37'),(5,'Erandi','D','[\"F\", \"G\", \"J\"]','[\"D\", \"G\", \"J\", \"F\", \"D\"]',272,0,0,0,'2025-04-30 20:24:27');
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

-- Dump completed on 2025-04-30 20:39:39
