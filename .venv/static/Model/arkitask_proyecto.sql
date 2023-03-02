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
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `IdProyecto` int NOT NULL,
  `NombreProyecto` varchar(40) NOT NULL,
  `FechaRealizacion` date NOT NULL,
  `CodigoProyecto` varchar(30) NOT NULL,
  `FechaEntrega` date NOT NULL,
  `Estado` varchar(15) NOT NULL,
  `Descripcion` varchar(250) DEFAULT NULL,
  `pro_IdCatalogo` int NOT NULL,
  `pro_IdGrupo` int NOT NULL,
  `pro_IdTipoProyecto` int NOT NULL,
  PRIMARY KEY (`IdProyecto`),
  KEY `pro_IdCatalogo` (`pro_IdCatalogo`),
  KEY `pro_IdGrupo` (`pro_IdGrupo`),
  KEY `pro_IdTipoProyecto` (`pro_IdTipoProyecto`),
  CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`pro_IdCatalogo`) REFERENCES `catalogo` (`IdCatalogo`),
  CONSTRAINT `proyecto_ibfk_2` FOREIGN KEY (`pro_IdGrupo`) REFERENCES `grupotrabajo` (`IdGrupo`),
  CONSTRAINT `proyecto_ibfk_3` FOREIGN KEY (`pro_IdTipoProyecto`) REFERENCES `tipoproyecto` (`IdTipoProyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
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
