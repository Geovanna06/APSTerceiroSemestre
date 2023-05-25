CREATE DATABASE  IF NOT EXISTS `controle_ongs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `controle_ongs`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: controle_ongs
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `ongs`
--

DROP TABLE IF EXISTS `ongs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ongs` (
  `id_ong` int NOT NULL AUTO_INCREMENT,
  `nome_ong` varchar(50) NOT NULL,
  `email_ong` varchar(100) DEFAULT NULL,
  `cnpj_ong` varchar(14) NOT NULL,
  `telefone_ong` varchar(11) DEFAULT NULL,
  `endereco_ong` varchar(200) DEFAULT NULL,
  `senha_ong` varchar(8) NOT NULL,
  `objetivo_ong` varchar(200) DEFAULT NULL,
  `qtbeneficiados_ong` int DEFAULT NULL,
  PRIMARY KEY (`id_ong`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ongs`
--

LOCK TABLES `ongs` WRITE;
/*!40000 ALTER TABLE `ongs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ongs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receber`
--

DROP TABLE IF EXISTS `receber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receber` (
  `id_ong` int NOT NULL AUTO_INCREMENT,
  `Arroz` tinyint(1) DEFAULT NULL,
  `Feijao` tinyint(1) DEFAULT NULL,
  `Oleo` tinyint(1) DEFAULT NULL,
  `Macarrao` tinyint(1) DEFAULT NULL,
  `Molho` tinyint(1) DEFAULT NULL,
  `Sal` tinyint(1) DEFAULT NULL,
  `Acucar` tinyint(1) DEFAULT NULL,
  `FarinhaMandioca` tinyint(1) DEFAULT NULL,
  `FubaMimoso` tinyint(1) DEFAULT NULL,
  `Cafe` tinyint(1) DEFAULT NULL,
  `Bolacha` tinyint(1) DEFAULT NULL,
  `Achocolatado` tinyint(1) DEFAULT NULL,
  KEY `id_ong` (`id_ong`),
  CONSTRAINT `receber_ibfk_1` FOREIGN KEY (`id_ong`) REFERENCES `ongs` (`id_ong`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receber`
--

LOCK TABLES `receber` WRITE;
/*!40000 ALTER TABLE `receber` DISABLE KEYS */;
/*!40000 ALTER TABLE `receber` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-25 14:42:50
