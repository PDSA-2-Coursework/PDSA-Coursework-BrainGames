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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tic_tac_toe_players`
--

LOCK TABLES `tic_tac_toe_players` WRITE;
/*!40000 ALTER TABLE `tic_tac_toe_players` DISABLE KEYS */;
INSERT INTO `tic_tac_toe_players` VALUES (1,'wimukthi','2025-04-30 13:41:37'),(2,'wimukthi','2025-04-30 14:11:32'),(3,'nimal','2025-04-30 14:12:02'),(4,'kamal','2025-04-30 14:12:42'),(5,'wimukthi','2025-04-30 14:13:18'),(6,'wimukthi','2025-04-30 14:15:25'),(7,'wimu','2025-04-30 14:15:47'),(8,'wimukthi','2025-04-30 14:16:18'),(9,'wimu','2025-04-30 14:17:46'),(10,'wimu','2025-04-30 14:18:09'),(11,'wimukthi','2025-04-30 14:18:36'),(12,'wimuk','2025-04-30 14:18:57'),(13,'wimukthi','2025-04-30 14:19:26'),(14,'wimuk','2025-04-30 14:19:59'),(15,'wimukthi','2025-04-30 14:20:21');
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

-- Dump completed on 2025-04-30 20:50:06
