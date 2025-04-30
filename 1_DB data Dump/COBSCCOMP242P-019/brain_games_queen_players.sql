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
-- Table structure for table `queen_players`
--

DROP TABLE IF EXISTS `queen_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queen_players` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `positions` varchar(255) NOT NULL,
  `solution_id` int DEFAULT NULL,
  `submitted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `time_taken_s` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `solution_id` (`solution_id`),
  CONSTRAINT `players_ibfk_1` FOREIGN KEY (`solution_id`) REFERENCES `queen_solutions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queen_players`
--

LOCK TABLES `queen_players` WRITE;
/*!40000 ALTER TABLE `queen_players` DISABLE KEYS */;
INSERT INTO `queen_players` VALUES (3,'test','[(0, 0), (1, 4), (2, 7), (3, 5), (4, 2), (5, 6), (6, 1), (7, 3)]',829,'2025-04-30 09:34:41',12.95),(4,'test','[(0, 0), (1, 4), (2, 7), (3, 5), (4, 2), (5, 6), (6, 1), (7, 3)]',829,'2025-04-30 09:37:29',180.89),(5,'shaz','[(0, 0), (1, 4), (2, 7), (3, 5), (4, 2), (5, 6), (6, 1), (7, 3)]',829,'2025-04-30 14:33:13',16.96),(6,'tom','[(0, 0), (1, 5), (2, 7), (3, 2), (4, 6), (5, 3), (6, 1), (7, 4)]',830,'2025-04-30 14:33:34',38.25),(7,'yule','[(0, 0), (1, 6), (2, 3), (3, 5), (4, 7), (5, 1), (6, 4), (7, 2)]',831,'2025-04-30 14:34:00',64.08),(8,'meena','[(0, 0), (1, 6), (2, 4), (3, 7), (4, 1), (5, 3), (6, 5), (7, 2)]',832,'2025-04-30 14:34:28',92.05),(9,'monica','[(0, 1), (1, 3), (2, 5), (3, 7), (4, 2), (5, 0), (6, 6), (7, 4)]',833,'2025-04-30 14:36:10',194.59),(10,'noni','[(0, 1), (1, 5), (2, 0), (3, 6), (4, 3), (5, 7), (6, 2), (7, 4)]',836,'2025-04-30 14:39:47',411.44),(11,'pini','[(0, 1), (1, 6), (2, 2), (3, 5), (4, 7), (5, 4), (6, 0), (7, 3)]',838,'2025-04-30 14:41:30',514.53),(12,'tili','[(0, 1), (1, 5), (2, 7), (3, 2), (4, 0), (5, 3), (6, 6), (7, 4)]',837,'2025-04-30 14:41:58',542.63),(13,'tres','[(0, 0), (1, 4), (2, 7), (3, 5), (4, 2), (5, 6), (6, 1), (7, 3)]',829,'2025-04-30 14:43:05',609.17),(14,'popo','[(0, 0), (1, 4), (2, 7), (3, 5), (4, 2), (5, 6), (6, 1), (7, 3)]',829,'2025-04-30 14:47:36',880.36),(15,'popo','[(0, 0), (1, 4), (2, 7), (3, 5), (4, 2), (5, 6), (6, 1), (7, 3)]',829,'2025-04-30 14:47:48',892.1);
/*!40000 ALTER TABLE `queen_players` ENABLE KEYS */;
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
