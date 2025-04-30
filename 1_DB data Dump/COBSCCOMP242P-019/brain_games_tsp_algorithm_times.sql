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
-- Table structure for table `tsp_algorithm_times`
--

DROP TABLE IF EXISTS `tsp_algorithm_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tsp_algorithm_times` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_name` varchar(100) NOT NULL,
  `round_number` int NOT NULL,
  `brute_force_time` float DEFAULT NULL,
  `greedy_time` float DEFAULT NULL,
  `dp_time` float DEFAULT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsp_algorithm_times`
--

LOCK TABLES `tsp_algorithm_times` WRITE;
/*!40000 ALTER TABLE `tsp_algorithm_times` DISABLE KEYS */;
INSERT INTO `tsp_algorithm_times` VALUES (1,'shaz',1,0,0,0,'2025-04-30 14:33:23'),(2,'shaz',2,1.03,0,0,'2025-04-30 14:34:48'),(3,'shaz',3,0,0,0,'2025-04-30 14:40:15'),(4,'shaz',1,0,0,0.99,'2025-04-30 16:56:01'),(5,'shaz',2,0,0,0,'2025-04-30 16:57:27'),(6,'shaz',1,1.03,0,0,'2025-04-30 19:27:38'),(7,'shaz',2,1.01,0,0,'2025-04-30 19:28:04'),(8,'shaz',3,0,0,0,'2025-04-30 19:28:42'),(9,'shaz',4,0,0,1,'2025-04-30 19:29:07'),(10,'shaz',5,0,0,0,'2025-04-30 19:29:26'),(11,'shaz',6,0,0,0,'2025-04-30 19:29:52'),(12,'shaz',7,0,0,0,'2025-04-30 19:30:09'),(13,'shaz',8,0,0,0,'2025-04-30 19:30:26'),(14,'shaz',9,0,0,0,'2025-04-30 19:30:56'),(15,'shaz',10,0,0,0,'2025-04-30 19:31:19'),(16,'shaz',11,0,0,0,'2025-04-30 19:31:33'),(17,'shaz',12,0,0,0,'2025-04-30 19:32:04'),(18,'shaz',13,0,0,0,'2025-04-30 19:32:15'),(19,'shaz',14,0,0,0,'2025-04-30 19:32:35'),(20,'shaz',15,0,0,1.04,'2025-04-30 19:33:01'),(21,'shaz',16,1.01,0,0,'2025-04-30 19:33:23'),(22,'shaz',17,0,0,0,'2025-04-30 19:33:37'),(23,'shaz',18,0,0,0,'2025-04-30 19:34:01');
/*!40000 ALTER TABLE `tsp_algorithm_times` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-30 20:49:51
