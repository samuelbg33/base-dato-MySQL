-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proveedor_db
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `personeria_juridica` enum('natural','juridica') NOT NULL,
  `nit` varchar(20) NOT NULL,
  `razon_social` varchar(100) NOT NULL,
  `representante_legal` varchar(100) NOT NULL,
  `telefono_contacto` varchar(15) NOT NULL,
  `email_contacto` varchar(100) NOT NULL,
  `ciudad_id` int DEFAULT NULL,
  `departamento_id` int DEFAULT NULL,
  `pais_id` int DEFAULT NULL,
  `direccion` varchar(200) NOT NULL,
  `ruta_rut` varchar(200) NOT NULL,
  `rut_file_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ciudad_id` (`ciudad_id`),
  KEY `departamento_id` (`departamento_id`),
  KEY `pais_id` (`pais_id`),
  CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudad` (`id`),
  CONSTRAINT `proveedor_ibfk_2` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`id`),
  CONSTRAINT `proveedor_ibfk_3` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-21 20:14:46
