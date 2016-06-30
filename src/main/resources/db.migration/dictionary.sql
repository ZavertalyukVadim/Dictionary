CREATE DATABASE  IF NOT EXISTS `dictionary` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dictionary`;
-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: dictionary
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `linked_image_address` varchar(100) DEFAULT '#',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Природні явища','#');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sense`
--

DROP TABLE IF EXISTS `sense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sense` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sense` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sense`
--

LOCK TABLES `sense` WRITE;
/*!40000 ALTER TABLE `sense` DISABLE KEYS */;
INSERT INTO `sense` VALUES (1,'Електричний розряд між хмарами або між хмарою і землею.');
/*!40000 ALTER TABLE `sense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synonym`
--

DROP TABLE IF EXISTS `synonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `synonym` (
  `word_id` int(10) unsigned NOT NULL,
  `synonym_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`word_id`,`synonym_id`),
  KEY `fk_synonym_2_idx` (`synonym_id`),
  CONSTRAINT `fk_synonym_1` FOREIGN KEY (`word_id`) REFERENCES `word` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_synonym_2` FOREIGN KEY (`synonym_id`) REFERENCES `word` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synonym`
--

LOCK TABLES `synonym` WRITE;
/*!40000 ALTER TABLE `synonym` DISABLE KEYS */;
INSERT INTO `synonym` VALUES (2,1),(1,2);
/*!40000 ALTER TABLE `synonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word`
--

DROP TABLE IF EXISTS `word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `word` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(45) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word`
--

LOCK TABLES `word` WRITE;
/*!40000 ALTER TABLE `word` DISABLE KEYS */;
INSERT INTO `word` VALUES (1,'Блискавка',1),(2,'Громовиця',1);
/*!40000 ALTER TABLE `word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word_sense`
--

DROP TABLE IF EXISTS `word_sense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `word_sense` (
  `word_id` int(10) unsigned NOT NULL,
  `sense_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`word_id`,`sense_id`),
  KEY `fk_word_sense_2_idx` (`sense_id`),
  CONSTRAINT `fk_word_sense_1` FOREIGN KEY (`word_id`) REFERENCES `word` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_word_sense_2` FOREIGN KEY (`sense_id`) REFERENCES `word` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word_sense`
--

LOCK TABLES `word_sense` WRITE;
/*!40000 ALTER TABLE `word_sense` DISABLE KEYS */;
INSERT INTO `word_sense` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `word_sense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dictionary'
--

--
-- Dumping routines for database 'dictionary'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-23 11:03:11
