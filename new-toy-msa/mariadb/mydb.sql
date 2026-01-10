/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.1.2-MariaDB, for osx10.20 (arm64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	12.1.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `my_topic_users`
--

DROP TABLE IF EXISTS `my_topic_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_topic_users` (
  `id` int(11) NOT NULL,
  `user_id` text DEFAULT NULL,
  `pwd` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_topic_users`
--

LOCK TABLES `my_topic_users` WRITE;
/*!40000 ALTER TABLE `my_topic_users` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `my_topic_users` VALUES
(1,'user1','test1111','User name','2026-01-04 23:25:27.000'),
(2,'admin','admin1111','Administrator','2026-01-04 23:27:51.000'),
(3,'user4','user444','User4','2026-01-04 23:35:59.000'),
(3,'user5','user555','User5','2026-01-04 23:35:59.000');
/*!40000 ALTER TABLE `my_topic_users` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(120) NOT NULL,
  `qty` int(11) DEFAULT 0,
  `unit_price` int(11) DEFAULT 0,
  `total_rpice` int(11) DEFAULT 0,
  `user_id` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `total_price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `orders` VALUES
(1,'CATALOG-001',10,1500,0,'6cc2ae5a-a3e1-4e04-b8a6-00fb905d4d73','ccb7fac2-5f85-4b45-81bd-1b1c655c3040','2026-01-05 18:03:06',15000),
(2,'CATALOG-003',10,1500,0,'6cc2ae5a-a3e1-4e04-b8a6-00fb905d4d73','d98e41af-2ec6-403e-9041-960ce09d994e','2026-01-05 18:32:48',15000),
(3,'CATALOG-004',10,1500,0,'6cc2ae5a-a3e1-4e04-b8a6-00fb905d4d73','fc629b5c-34dd-48f4-8b8d-26ab8e28c698','2026-01-05 18:32:56',15000),
(4,'CATALOG-005',14,1500,0,'6cc2ae5a-a3e1-4e04-b8a6-00fb905d4d73','2c6b1aaf-657a-45ea-b0bc-a8e750321450','2026-01-05 18:33:36',21000),
(5,'CATALOG-006',15,1500,0,'6cc2ae5a-a3e1-4e04-b8a6-00fb905d4d73','b5d25965-9011-448d-ab03-59c6680972ca','2026-01-05 18:33:45',22500);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `users` VALUES
(1,'user1','test1111','User name','2026-01-04 23:25:27'),
(2,'admin','admin1111','Administrator','2026-01-04 23:27:51'),
(3,'user4','user444','User4','2026-01-04 23:35:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-01-10 22:38:26
