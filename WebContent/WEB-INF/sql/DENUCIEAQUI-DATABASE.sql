CREATE DATABASE  IF NOT EXISTS `denucieja` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `denucieja`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: denucieja
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `arquivo`
--

DROP TABLE IF EXISTS `arquivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arquivo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DADOS` longblob NOT NULL,
  `FORMATO_ARQUIVO` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `denuncia`
--

DROP TABLE IF EXISTS `denuncia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `denuncia` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(2000) NOT NULL,
  `ENDERECO` varchar(300) DEFAULT NULL,
  `TIPO_DENUNCIA` varchar(45) NOT NULL,
  `CATEGORIA_DENUNCIA` varchar(45) NOT NULL,
  `LATITUDE` varchar(300) DEFAULT NULL,
  `LONGITUDE` varchar(300) DEFAULT NULL,
  `NOME_DENUNCIANTE` varchar(500) DEFAULT NULL,
  `EMAIL_DENUNCIANTE` varchar(300) DEFAULT NULL,
  `TELEFONE_PRINCIPAL` varchar(30) DEFAULT NULL,
  `DATA_CRIACAO` datetime DEFAULT NULL,
  `TELEFONE_AUXILIAR` varchar(30) DEFAULT NULL,
  `ENDERECO_REFERENCIA` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `denuncia_arquivo`
--

DROP TABLE IF EXISTS `denuncia_arquivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `denuncia_arquivo` (
  `ID_ARQUIVO` int(11) NOT NULL,
  `ID_DENUNCIA` int(11) NOT NULL,
  KEY `FK_DENUNCIA_ARQUIVO_ID_ARQUIVO_idx` (`ID_ARQUIVO`),
  KEY `FK_DENUNCIA_ARQUIVO_ID_DENUNCIA_idx` (`ID_DENUNCIA`),
  CONSTRAINT `FK_DENUNCIA_ARQUIVO_ID_ARQUIVO` FOREIGN KEY (`ID_ARQUIVO`) REFERENCES `arquivo` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_DENUNCIA_ARQUIVO_ID_DENUNCIA` FOREIGN KEY (`ID_DENUNCIA`) REFERENCES `denuncia` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-13  4:06:29
