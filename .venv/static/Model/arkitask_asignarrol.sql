-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: arkitask
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
-- Table structure for table `asignarrol`
--

DROP TABLE IF EXISTS `asignarrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignarrol` (
  `IdAsignarRol` int NOT NULL AUTO_INCREMENT,
  `asi_IdUsuario` int NOT NULL,
  `asi_IdRol` int NOT NULL,
  `asi_IdActividad` int NOT NULL,
  `asi_IdGrupo` int NOT NULL,
  PRIMARY KEY (`IdAsignarRol`),
  KEY `asi_IdUsuario` (`asi_IdUsuario`),
  KEY `asi_IdRol` (`asi_IdRol`),
  KEY `asi_IdActividad` (`asi_IdActividad`),
  KEY `asi_IdGrupo` (`asi_IdGrupo`),
  CONSTRAINT `asignarrol_ibfk_1` FOREIGN KEY (`asi_IdUsuario`) REFERENCES `usuario` (`IdUsuario`),
  CONSTRAINT `asignarrol_ibfk_2` FOREIGN KEY (`asi_IdRol`) REFERENCES `rol` (`IdRol`),
  CONSTRAINT `asignarrol_ibfk_3` FOREIGN KEY (`asi_IdActividad`) REFERENCES `actividades` (`IdActividad`),
  CONSTRAINT `asignarrol_ibfk_4` FOREIGN KEY (`asi_IdGrupo`) REFERENCES `grupotrabajo` (`IdGrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignarrol`
--

LOCK TABLES `asignarrol` WRITE;
/*!40000 ALTER TABLE `asignarrol` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignarrol` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-26 16:34:03
