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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tic_tac_toe_game_results`
--

LOCK TABLES `tic_tac_toe_game_results` WRITE;
/*!40000 ALTER TABLE `tic_tac_toe_game_results` DISABLE KEYS */;
INSERT INTO `tic_tac_toe_game_results` VALUES (1,'wimukthi','-','alpha-beta',191.976,'Draw','2025-04-30 13:41:37'),(2,'wimukthi','-','minimax',394.659,'Draw','2025-04-30 14:11:32'),(3,'nimal','-','alpha-beta',192.026,'Draw','2025-04-30 14:12:02'),(4,'kamal','-','alpha-beta',207.972,'Draw','2025-04-30 14:12:42'),(5,'wimukthi','-','minimax',393.886,'Draw','2025-04-30 14:13:18'),(6,'wimukthi','O','alpha-beta',200.178,'Lose','2025-04-30 14:15:25'),(7,'wimu','-','alpha-beta',190.092,'Draw','2025-04-30 14:15:47'),(8,'wimukthi','-','minimax',397.067,'Draw','2025-04-30 14:16:18'),(9,'wimu','O','minimax',398.363,'Lose','2025-04-30 14:17:46'),(10,'wimu','X','minimax',418.031,'Win','2025-04-30 14:18:09'),(11,'wimukthi','O','minimax',397.831,'Lose','2025-04-30 14:18:36'),(12,'wimuk','X','minimax',401.49399999999997,'Win','2025-04-30 14:18:57'),(13,'wimukthi','O','alpha-beta',197.999,'Lose','2025-04-30 14:19:26'),(14,'wimuk','-','alpha-beta',252.847,'Draw','2025-04-30 14:20:00'),(15,'wimukthi','O','alpha-beta',199.261,'Lose','2025-04-30 14:20:21');
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

-- Dump completed on 2025-04-30 20:50:06
