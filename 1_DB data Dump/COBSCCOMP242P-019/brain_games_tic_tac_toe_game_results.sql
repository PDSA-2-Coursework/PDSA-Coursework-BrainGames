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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tic_tac_toe_game_results`
--

LOCK TABLES `tic_tac_toe_game_results` WRITE;
/*!40000 ALTER TABLE `tic_tac_toe_game_results` DISABLE KEYS */;
INSERT INTO `tic_tac_toe_game_results` VALUES (1,'jj','O','alpha-beta',725.6360000000001,'Lose','2025-04-30 08:54:52'),(2,'def','O','alpha-beta',747.8629999999999,'Lose','2025-04-30 08:58:23'),(6,'shaz','-','alpha-beta',600.067,'Draw','2025-04-30 13:26:09'),(7,'alice','-','alpha-beta',736.394,'Draw','2025-04-30 13:26:31'),(8,'max','-','alpha-beta',681.183,'Draw','2025-04-30 13:27:06'),(9,'rob','-','alpha-beta',736.6149999999999,'Draw','2025-04-30 13:28:36'),(10,'tom','-','alpha-beta',714.9580000000001,'Draw','2025-04-30 13:28:57'),(11,'Shazna','-','alpha-beta',786.6579999999999,'Draw','2025-04-30 13:29:19'),(12,'rainy','X','alpha-beta',648.083,'Win','2025-04-30 13:31:40'),(13,'shazna','X','alpha-beta',719.3989999999999,'Win','2025-04-30 13:32:01'),(14,'moana','-','alpha-beta',986.434,'Draw','2025-04-30 13:32:16'),(15,'esla','-','alpha-beta',712.292,'Draw','2025-04-30 13:32:39'),(16,'rena','-','alpha-beta',703.394,'Draw','2025-04-30 13:32:58'),(17,'shazna','O','minimax',1226.9720000000002,'Lose','2025-04-30 13:35:09'),(18,'reena','O','minimax',1175.013,'Lose','2025-04-30 13:35:33'),(19,'meena','-','minimax',1246.645,'Draw','2025-04-30 13:37:17'),(20,'kip','-','minimax',1210.3850000000002,'Draw','2025-04-30 13:37:35'),(21,'shazna','X','minimax',1227.7920000000001,'Win','2025-04-30 13:37:56'),(22,'tenny','O','minimax',1208.839,'Lose','2025-04-30 13:38:57'),(23,'tesi','X','minimax',1176.81,'Win','2025-04-30 13:40:58'),(24,'loli','X','minimax',1207.761,'Win','2025-04-30 13:41:13'),(25,'tina','O','minimax',1257.8049999999998,'Lose','2025-04-30 13:41:39');
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

-- Dump completed on 2025-04-30 20:49:46
