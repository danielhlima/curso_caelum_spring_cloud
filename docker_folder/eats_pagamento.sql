-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: eats_pagamento
-- ------------------------------------------------------
-- Server version	5.7.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `flyway_schema_history`
--

DROP TABLE IF EXISTS `flyway_schema_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_schema_history`
--

LOCK TABLES `flyway_schema_history` WRITE;
/*!40000 ALTER TABLE `flyway_schema_history` DISABLE KEYS */;
INSERT INTO `flyway_schema_history` VALUES (1,'0001','cria-tabela-pagamento','SQL','V0001__cria-tabela-pagamento.sql',1711564591,'root','2019-11-14 00:19:08',330,1),(2,'0002','migra-dados-de-pagamento','SQL','V0002__migra-dados-de-pagamento.sql',-468351203,'root','2019-11-14 00:19:08',5,1);
/*!40000 ALTER TABLE `flyway_schema_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagamento` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `valor` decimal(19,2) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `numero` varchar(19) DEFAULT NULL,
  `expiracao` varchar(7) NOT NULL,
  `codigo` varchar(3) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `forma_de_pagamento_id` bigint(20) NOT NULL,
  `pedido_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,51.80,'ANDERSON DA SILVA','1111 2222 3333 4444','2022-07','123','CRIADO',2,1),(2,29.50,'danil','1231 2312 3123 1232','2021-02','123','CONFIRMADO',4,2),(3,29.50,'danil','3333 3333 3333 3333','2032-03','789','CONFIRMADO',4,7),(4,174.30,'danil','3333 3333 3333 3333','2011-02','123','CONFIRMADO',2,8),(5,29.50,'danil','2222 2222 2222 2222','2020-01','222','CONFIRMADO',3,9),(6,29.50,'danil','2222 2222 2222 2222','2023-01','222','CONFIRMADO',4,10),(7,29.50,'danil','2222 2222 2222 2222','2200-05','222','CONFIRMADO',2,11),(8,29.50,'dfs','3333 3333 3333 3333','2020-02','345','CONFIRMADO',4,12),(9,29.50,'danil','3333 3333 3333 3333','2020-02','343','CONFIRMADO',3,13),(10,29.50,'danil','3333 3333 3333 3333','2020-02','782','CONFIRMADO',4,14),(11,29.50,'a','1___ ____ ____ ____','2020-01','1__','CONFIRMADO',4,15),(12,29.50,'1','1___ ____ ____ ____','2019-01','1__','CONFIRMADO',3,16),(13,29.50,'3','3333 3333 3333 3333','5050-02','234','CONFIRMADO',2,17),(14,29.50,'danil','3___ ____ ____ ____','2020-03','333','CONFIRMADO',3,18);
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-14  0:54:20
