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
-- Table structure for table `tic_tac_toe_computer_moves`
--

DROP TABLE IF EXISTS `tic_tac_toe_computer_moves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tic_tac_toe_computer_moves` (
  `id` int NOT NULL AUTO_INCREMENT,
  `game_id` int DEFAULT NULL,
  `move_number` int DEFAULT NULL,
  `time_taken` double DEFAULT NULL,
  `algorithm_used` varchar(50) DEFAULT NULL,
  `recorded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `game_id` (`game_id`),
  CONSTRAINT `tic_tac_toe_computer_moves_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `tic_tac_toe_game_results` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tic_tac_toe_computer_moves`
--

LOCK TABLES `tic_tac_toe_computer_moves` WRITE;
/*!40000 ALTER TABLE `tic_tac_toe_computer_moves` DISABLE KEYS */;
INSERT INTO `tic_tac_toe_computer_moves` VALUES (1,1,1,963.892,'alpha-beta','2025-04-30 14:21:09'),(2,1,2,901.821,'alpha-beta','2025-04-30 14:21:10'),(3,1,3,690.438,'alpha-beta','2025-04-30 14:21:12'),(4,1,4,612.276,'alpha-beta','2025-04-30 14:21:14'),(5,1,5,415.218,'alpha-beta','2025-04-30 14:21:15'),(6,1,6,331.166,'alpha-beta','2025-04-30 14:21:16'),(7,1,7,187.805,'alpha-beta','2025-04-30 14:21:17'),(8,1,8,158.163,'alpha-beta','2025-04-30 14:21:18'),(9,1,9,69.327,'alpha-beta','2025-04-30 14:21:20'),(10,1,10,32.912,'alpha-beta','2025-04-30 14:21:21'),(11,1,11,31.901,'alpha-beta','2025-04-30 14:21:21'),(12,1,12,2.045,'alpha-beta','2025-04-30 14:21:22'),(13,2,1,1974.008,'minimax','2025-04-30 14:21:43'),(14,2,2,1700.612,'minimax','2025-04-30 14:21:46'),(15,2,3,1392.166,'minimax','2025-04-30 14:21:48'),(16,2,4,1075.077,'minimax','2025-04-30 14:21:51'),(17,2,5,691.078,'minimax','2025-04-30 14:21:53'),(18,2,6,437.983,'minimax','2025-04-30 14:21:55'),(19,2,7,308.165,'minimax','2025-04-30 14:21:56'),(20,2,8,165.085,'minimax','2025-04-30 14:21:57'),(21,2,9,99.127,'minimax','2025-04-30 14:21:58'),(22,2,10,35.031,'minimax','2025-04-30 14:21:59'),(23,2,11,8.537,'minimax','2025-04-30 14:22:00'),(24,2,12,0.998,'minimax','2025-04-30 14:22:00'),(25,3,1,1020.057,'alpha-beta','2025-04-30 14:22:15'),(26,3,2,940.864,'alpha-beta','2025-04-30 14:22:17'),(27,3,3,750.666,'alpha-beta','2025-04-30 14:22:18'),(28,3,4,738.285,'alpha-beta','2025-04-30 14:22:20'),(29,3,5,515.025,'alpha-beta','2025-04-30 14:22:21'),(30,3,6,339.462,'alpha-beta','2025-04-30 14:22:23'),(31,3,7,234.384,'alpha-beta','2025-04-30 14:22:24'),(32,3,8,148.83,'alpha-beta','2025-04-30 14:22:25'),(33,3,9,99.383,'alpha-beta','2025-04-30 14:22:26'),(34,3,10,35.944,'alpha-beta','2025-04-30 14:22:27'),(35,3,11,19.927,'alpha-beta','2025-04-30 14:22:27'),(36,4,1,1030.612,'alpha-beta','2025-04-30 14:22:41'),(37,4,2,890.345,'alpha-beta','2025-04-30 14:22:43'),(38,4,3,791.284,'alpha-beta','2025-04-30 14:22:45'),(39,4,4,551.248,'alpha-beta','2025-04-30 14:22:46'),(40,4,5,418.402,'alpha-beta','2025-04-30 14:22:47'),(41,4,6,343.793,'alpha-beta','2025-04-30 14:22:48'),(42,4,7,255.753,'alpha-beta','2025-04-30 14:22:49'),(43,4,8,183.637,'alpha-beta','2025-04-30 14:22:50'),(44,4,9,106.417,'alpha-beta','2025-04-30 14:22:51'),(45,4,10,38.889,'alpha-beta','2025-04-30 14:22:52'),(46,4,11,19.936,'alpha-beta','2025-04-30 14:22:52'),(47,4,12,0.997,'alpha-beta','2025-04-30 14:22:53'),(48,5,1,980.52,'alpha-beta','2025-04-30 14:23:11'),(49,5,2,847.75,'alpha-beta','2025-04-30 14:23:12'),(50,5,3,709.034,'alpha-beta','2025-04-30 14:23:13'),(51,5,4,604.592,'alpha-beta','2025-04-30 14:23:13'),(52,5,5,421.56,'alpha-beta','2025-04-30 14:23:14'),(53,5,6,330.392,'alpha-beta','2025-04-30 14:23:16'),(54,5,7,217.685,'alpha-beta','2025-04-30 14:23:16'),(55,5,8,121.449,'alpha-beta','2025-04-30 14:23:17'),(56,5,9,98.582,'alpha-beta','2025-04-30 14:23:18'),(57,5,10,62.494,'alpha-beta','2025-04-30 14:23:19'),(58,5,11,11.019,'alpha-beta','2025-04-30 14:23:20'),(59,5,12,3.979,'alpha-beta','2025-04-30 14:23:20'),(60,6,1,2035.482,'minimax','2025-04-30 14:23:34'),(61,6,2,1610.867,'minimax','2025-04-30 14:23:37'),(62,6,3,1481.237,'minimax','2025-04-30 14:23:39'),(63,6,4,1261.867,'minimax','2025-04-30 14:23:41'),(64,6,5,1085.698,'minimax','2025-04-30 14:23:42'),(65,6,6,512.653,'minimax','2025-04-30 14:23:43'),(66,6,7,307.649,'minimax','2025-04-30 14:23:45'),(67,6,8,180.901,'minimax','2025-04-30 14:23:45'),(68,6,9,112.327,'minimax','2025-04-30 14:23:46'),(69,6,10,41.282,'minimax','2025-04-30 14:23:47'),(70,6,11,29.91,'minimax','2025-04-30 14:23:48'),(71,6,12,4.055,'minimax','2025-04-30 14:23:49'),(72,7,1,2239.012,'minimax','2025-04-30 14:24:03'),(73,7,2,1657.701,'minimax','2025-04-30 14:24:06'),(74,7,3,1468.564,'minimax','2025-04-30 14:24:08'),(75,7,4,1633.007,'minimax','2025-04-30 14:24:10'),(76,7,5,936.81,'minimax','2025-04-30 14:24:12'),(77,7,6,546.087,'minimax','2025-04-30 14:24:13'),(78,7,7,347.174,'minimax','2025-04-30 14:24:14'),(79,7,8,198.561,'minimax','2025-04-30 14:24:15'),(80,7,9,75.316,'minimax','2025-04-30 14:24:16'),(81,7,10,28.952,'minimax','2025-04-30 14:24:17'),(82,7,11,11.961,'minimax','2025-04-30 14:24:18'),(83,7,12,0.997,'minimax','2025-04-30 14:24:19'),(84,8,1,1075.345,'alpha-beta','2025-04-30 14:24:30'),(85,8,2,910.518,'alpha-beta','2025-04-30 14:24:32'),(86,8,3,745.901,'alpha-beta','2025-04-30 14:24:33'),(87,8,4,644.444,'alpha-beta','2025-04-30 14:24:35'),(88,8,5,429.857,'alpha-beta','2025-04-30 14:24:36'),(89,8,6,342.225,'alpha-beta','2025-04-30 14:24:37'),(90,8,7,433.079,'alpha-beta','2025-04-30 14:24:39'),(91,8,8,262.891,'alpha-beta','2025-04-30 14:24:40'),(92,8,9,127.26,'alpha-beta','2025-04-30 14:24:41'),(93,8,10,63.879,'alpha-beta','2025-04-30 14:24:42'),(94,8,11,16.007,'alpha-beta','2025-04-30 14:24:43'),(95,8,12,2.988,'alpha-beta','2025-04-30 14:24:44');
/*!40000 ALTER TABLE `tic_tac_toe_computer_moves` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-30 20:39:42
