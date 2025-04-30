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
-- Table structure for table `tic_tac_toe_game_results`
--

DROP TABLE IF EXISTS `tic_tac_toe_game_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tic_tac_toe_game_results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_name` varchar(50) DEFAULT NULL,
  `player_type` char(1) DEFAULT NULL,
  `algorithm_used` varchar(50) DEFAULT NULL,
  `time_taken` double DEFAULT NULL,
  `result` varchar(20) DEFAULT NULL,
  `played_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tic_tac_toe_game_results`
--

LOCK TABLES `tic_tac_toe_game_results` WRITE;
/*!40000 ALTER TABLE `tic_tac_toe_game_results` DISABLE KEYS */;
INSERT INTO `tic_tac_toe_game_results` VALUES (1,'Erandi','-','alpha-beta',4396.964000000001,'Draw','2025-04-30 14:21:06'),(2,'Erandi','-','minimax',7887.867000000001,'Draw','2025-04-30 14:21:32'),(3,'Erandi','O','alpha-beta',4842.827,'Lose','2025-04-30 14:22:12'),(4,'Erandi','-','alpha-beta',4631.313,'Draw','2025-04-30 14:22:39'),(5,'Erandi','-','alpha-beta',4409.0560000000005,'Draw','2025-04-30 14:23:09'),(6,'Erandi','-','minimax',8663.928,'Draw','2025-04-30 14:23:31'),(7,'Erandi','-','minimax',9144.141999999998,'Draw','2025-04-30 14:23:59'),(8,'Erandi','-','alpha-beta',5054.393999999999,'Draw','2025-04-30 14:24:27');
/*!40000 ALTER TABLE `tic_tac_toe_game_results` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-30 20:39:43
