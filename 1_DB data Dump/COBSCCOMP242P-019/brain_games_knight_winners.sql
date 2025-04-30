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
-- Table structure for table `knight_winners`
--

DROP TABLE IF EXISTS `knight_winners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knight_winners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `date_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `move_count` int NOT NULL,
  `path` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knight_winners`
--

LOCK TABLES `knight_winners` WRITE;
/*!40000 ALTER TABLE `knight_winners` DISABLE KEYS */;
INSERT INTO `knight_winners` VALUES (19,'shaz','2025-04-30 20:43:20',44,'[\"a1\",\"b3\",\"a5\",\"b7\",\"d8\",\"f7\",\"g5\",\"h3\",\"g1\",\"e2\",\"f4\",\"h5\",\"g7\",\"e8\",\"d6\",\"f5\",\"h4\",\"g2\",\"f4\",\"e6\",\"c7\",\"a6\",\"b8\",\"c6\",\"e5\",\"d3\",\"b4\",\"a2\",\"b1\",\"d2\",\"e4\",\"f2\",\"d1\",\"b2\",\"a4\",\"c5\",\"d7\",\"c3\",\"e2\",\"f4\",\"h5\",\"g3\",\"e4\",\"f6\"]'),(20,'pipi','2025-04-30 20:43:20',47,'[\"h1\",\"f2\",\"d1\",\"b2\",\"a4\",\"c5\",\"e4\",\"g3\",\"h5\",\"g7\",\"f5\",\"e7\",\"c6\",\"a7\",\"b5\",\"d6\",\"f5\",\"g3\",\"h1\",\"f2\",\"d3\",\"b4\",\"a2\",\"c1\",\"e2\",\"g1\",\"h3\",\"f4\",\"d3\",\"b2\",\"a4\",\"c3\",\"e4\",\"d6\",\"b5\",\"a3\",\"b1\",\"d2\",\"f1\",\"g3\",\"h5\",\"f6\",\"d7\",\"b6\",\"a8\"]'),(21,'loli','2025-04-30 20:43:20',40,'[\"c1\",\"a2\",\"b4\",\"d5\",\"f4\",\"h5\",\"g3\",\"e2\",\"f4\",\"d3\",\"c1\",\"b3\",\"a5\",\"b7\",\"d6\",\"e4\",\"c3\",\"a4\",\"c5\",\"e6\",\"f8\",\"d7\",\"b8\",\"a6\",\"b4\",\"d5\",\"f6\",\"h7\",\"g5\",\"e6\",\"c7\",\"b5\",\"a3\",\"c2\",\"d4\",\"f3\",\"g1\",\"h3\"]'),(22,'mani','2025-04-30 20:43:20',43,'[\"d1\",\"b2\",\"a4\",\"c3\",\"e4\",\"f6\",\"h5\",\"g3\",\"e2\",\"c1\",\"a2\",\"b4\",\"a6\",\"b8\",\"d7\",\"f8\",\"h7\",\"g5\",\"e6\",\"c7\",\"a8\",\"b6\",\"c4\",\"a3\",\"b1\",\"d2\",\"f3\",\"g1\",\"h3\",\"f2\",\"d3\",\"b4\",\"c6\",\"e5\",\"g4\",\"h2\",\"f1\",\"e3\",\"g2\",\"h4\",\"f5\"]');
/*!40000 ALTER TABLE `knight_winners` ENABLE KEYS */;
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
