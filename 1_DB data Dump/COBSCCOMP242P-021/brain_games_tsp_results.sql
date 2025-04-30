-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: brain_games
-- ------------------------------------------------------
-- Server version	8.0.41

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsp_results`
--

LOCK TABLES `tsp_results` WRITE;
/*!40000 ALTER TABLE `tsp_results` DISABLE KEYS */;
INSERT INTO `tsp_results` VALUES (1,'wimukthi','F','[\"A\", \"B\"]','[\"F\", \"B\", \"A\", \"F\"]',203,0.04,0.02,0.05,'2025-04-30 20:18:43'),(2,'wimukthi','J','[\"C\", \"E\"]','[\"J\", \"E\", \"C\", \"J\"]',249,0.03,0.01,0.04,'2025-04-30 20:18:59'),(3,'wimukthi','I','[\"A\", \"H\"]','[\"I\", \"H\", \"A\", \"I\"]',230,0.03,0.01,0.04,'2025-04-30 20:20:04'),(4,'wimukthi','I','[\"D\", \"E\"]','[\"I\", \"E\", \"D\", \"I\"]',225,0.03,0.01,0.04,'2025-04-30 20:20:30'),(5,'wimukthi','D','[\"B\", \"F\"]','[\"D\", \"F\", \"B\", \"D\"]',203,0.03,0.01,0.04,'2025-04-30 20:20:44'),(6,'wimukthi','E','[\"A\", \"B\"]','[\"E\", \"B\", \"A\", \"E\"]',183,0.04,0.01,0.04,'2025-04-30 20:20:56'),(7,'wimukthi','H','[\"E\", \"I\"]','[\"H\", \"E\", \"I\", \"H\"]',201,0.03,0.01,0.04,'2025-04-30 20:21:18'),(8,'wimukthi','H','[\"D\", \"E\"]','[\"H\", \"D\", \"E\", \"H\"]',201,0.03,0.01,0.04,'2025-04-30 20:21:29'),(9,'wimukthi','J','[\"A\", \"B\"]','[\"J\", \"B\", \"A\", \"J\"]',237,0.03,0.01,0.04,'2025-04-30 20:21:40'),(10,'wimukthi','G','[\"A\", \"B\"]','[\"G\", \"A\", \"B\", \"G\"]',196,0.02,0.01,0.02,'2025-04-30 20:22:08');
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

-- Dump completed on 2025-04-30 20:50:07
