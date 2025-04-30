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
-- Table structure for table `hanoi_game_results`
--

DROP TABLE IF EXISTS `hanoi_game_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hanoi_game_results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_name` varchar(255) NOT NULL,
  `moves` text NOT NULL,
  `move_count` int NOT NULL,
  `disks` int NOT NULL,
  `pegs` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hanoi_game_results`
--

LOCK TABLES `hanoi_game_results` WRITE;
/*!40000 ALTER TABLE `hanoi_game_results` DISABLE KEYS */;
INSERT INTO `hanoi_game_results` VALUES (5,'shaz','[\'A -> B\', \'A -> C\', \'B -> C\', \'A -> D\', \'A -> B\', \'D -> B\', \'A -> D\', \'B -> A\', \'B -> D\', \'A -> D\', \'C -> B\', \'C -> D\', \'B -> D\']',13,5,4),(6,'iop','[\'A -> C\', \'A -> B\', \'C -> B\', \'A -> C\', \'B -> A\', \'B -> C\', \'A -> C\', \'A -> B\', \'C -> B\', \'C -> A\', \'B -> A\', \'C -> B\', \'A -> C\', \'A -> B\', \'C -> B\', \'A -> C\', \'B -> A\', \'B -> C\', \'A -> C\', \'B -> A\', \'C -> B\', \'C -> A\', \'B -> A\', \'B -> C\', \'A -> C\', \'A -> B\', \'C -> B\', \'A -> C\', \'B -> A\', \'B -> C\', \'A -> C\']',31,5,3),(7,'shazna','[\'A -> C\', \'A -> B\', \'C -> B\', \'A -> C\', \'B -> A\', \'B -> C\', \'A -> C\', \'A -> B\', \'C -> B\', \'C -> A\', \'B -> A\', \'C -> B\', \'A -> C\', \'A -> B\', \'C -> B\', \'A -> C\', \'B -> A\', \'B -> C\', \'A -> C\', \'B -> A\', \'C -> B\', \'C -> A\', \'B -> A\', \'B -> C\', \'A -> C\', \'A -> B\', \'C -> B\', \'A -> C\', \'B -> A\', \'B -> C\', \'A -> C\']',31,5,3),(8,'shazna','[\'A -> B\', \'A -> C\', \'B -> C\', \'A -> D\', \'A -> B\', \'D -> B\', \'A -> D\', \'B -> A\', \'B -> D\', \'C -> B\', \'A -> D\', \'C -> D\', \'B -> D\']',13,5,4),(9,'shaz','[\'A -> B\', \'A -> C\', \'B -> C\', \'A -> D\', \'A -> B\', \'D -> B\', \'A -> D\', \'B -> A\', \'B -> D\', \'A -> D\', \'C -> B\', \'C -> D\', \'B -> D\']',13,5,4),(10,'shaz','[\'A -> B\', \'A -> C\', \'B -> C\', \'A -> D\', \'A -> B\', \'D -> B\', \'A -> D\', \'B -> A\', \'B -> D\', \'A -> D\', \'C -> B\', \'C -> D\', \'B -> D\']',13,5,4),(11,'jake','[\'A -> C\', \'A -> B\', \'C -> B\', \'A -> C\', \'B -> A\', \'B -> C\', \'A -> C\', \'A -> B\', \'C -> B\', \'C -> A\', \'B -> A\', \'C -> B\', \'A -> C\', \'A -> B\', \'C -> B\', \'A -> C\', \'B -> A\', \'B -> C\', \'A -> C\', \'B -> A\', \'C -> B\', \'C -> A\', \'B -> A\', \'B -> C\', \'A -> C\', \'A -> B\', \'C -> B\', \'A -> C\', \'B -> A\', \'B -> C\', \'A -> C\']',31,5,3);
/*!40000 ALTER TABLE `hanoi_game_results` ENABLE KEYS */;
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
