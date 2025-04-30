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
-- Table structure for table `tic_tac_toe_players`
--

DROP TABLE IF EXISTS `tic_tac_toe_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tic_tac_toe_players` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_name` varchar(50) DEFAULT NULL,
  `registered_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tic_tac_toe_players`
--

LOCK TABLES `tic_tac_toe_players` WRITE;
/*!40000 ALTER TABLE `tic_tac_toe_players` DISABLE KEYS */;
INSERT INTO `tic_tac_toe_players` VALUES (1,'shaz','2025-04-30 08:50:58'),(2,'jj','2025-04-30 08:54:52'),(3,'def','2025-04-30 08:58:23'),(7,'shaz','2025-04-30 13:26:09'),(8,'alice','2025-04-30 13:26:31'),(9,'max','2025-04-30 13:27:06'),(10,'rob','2025-04-30 13:28:36'),(11,'tom','2025-04-30 13:28:57'),(12,'Shazna','2025-04-30 13:29:19'),(13,'rainy','2025-04-30 13:31:40'),(14,'shazna','2025-04-30 13:32:01'),(15,'moana','2025-04-30 13:32:16'),(16,'esla','2025-04-30 13:32:39'),(17,'rena','2025-04-30 13:32:58'),(18,'shazna','2025-04-30 13:35:09'),(19,'reena','2025-04-30 13:35:33'),(20,'meena','2025-04-30 13:37:17'),(21,'kip','2025-04-30 13:37:35'),(22,'shazna','2025-04-30 13:37:56'),(23,'tenny','2025-04-30 13:38:57'),(24,'tesi','2025-04-30 13:40:58'),(25,'loli','2025-04-30 13:41:13'),(26,'tina','2025-04-30 13:41:39');
/*!40000 ALTER TABLE `tic_tac_toe_players` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-30 20:49:48
