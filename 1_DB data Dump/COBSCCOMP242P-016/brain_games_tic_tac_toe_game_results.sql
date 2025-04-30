CREATE DATABASE  IF NOT EXISTS `brain_games` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `brain_games`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: brain_games
-- ------------------------------------------------------
-- Server version	8.0.33

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tic_tac_toe_game_results`
--

LOCK TABLES `tic_tac_toe_game_results` WRITE;
/*!40000 ALTER TABLE `tic_tac_toe_game_results` DISABLE KEYS */;
INSERT INTO `tic_tac_toe_game_results` VALUES (1,'PlayerA','O','alpha-beta',547.596,'Lose','2025-04-30 13:11:53'),(2,'PlayerB','-','alpha-beta',518.759,'Draw','2025-04-30 13:13:13'),(3,'PlayerC','X','alpha-beta',552.354,'Win','2025-04-30 13:13:40'),(4,'PlayerD','-','alpha-beta',544.8290000000001,'Draw','2025-04-30 13:14:04'),(5,'PlayerE','-','alpha-beta',521.8849999999999,'Draw','2025-04-30 13:14:42'),(6,'PlayerF','X','alpha-beta',513.097,'Win','2025-04-30 13:15:29'),(7,'PlayerG','-','alpha-beta',510.099,'Draw','2025-04-30 13:15:52'),(8,'PlayerH','O','alpha-beta',519.649,'Lose','2025-04-30 13:16:17'),(9,'PlayerI','O','alpha-beta',595.167,'Lose','2025-04-30 13:16:49'),(10,'PlayerJ','X','alpha-beta',523.726,'Win','2025-04-30 13:17:51'),(11,'aPlayer','O','minimax',976.4849999999999,'Lose','2025-04-30 13:18:42'),(12,'bPlayer','O','minimax',1033.4509999999998,'Lose','2025-04-30 13:19:06'),(13,'cPlayer','O','minimax',1031.791,'Lose','2025-04-30 13:19:36'),(14,'dPlayer','X','minimax',1071.196,'Win','2025-04-30 13:19:57'),(15,'ePlayer','-','minimax',1018.997,'Draw','2025-04-30 13:20:22'),(16,'fPlayer','X','minimax',1057.251,'Win','2025-04-30 13:27:51'),(17,'gPlayer','-','minimax',1009.6239999999999,'Draw','2025-04-30 13:28:22'),(18,'hPlayer','O','minimax',1015.3370000000001,'Lose','2025-04-30 13:28:49'),(19,'iPlayer','O','minimax',1026.165,'Lose','2025-04-30 13:29:10'),(20,'jPlayer','O','minimax',1108.2059999999997,'Lose','2025-04-30 13:29:57');
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

-- Dump completed on 2025-04-30 20:51:11
