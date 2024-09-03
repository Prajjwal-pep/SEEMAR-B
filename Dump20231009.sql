CREATE DATABASE  IF NOT EXISTS `seema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `seema`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: seema
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `loginpage`
--

DROP TABLE IF EXISTS `loginpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginpage` (
  `index` int NOT NULL AUTO_INCREMENT,
  `Bankid` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `post` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`index`,`Bankid`),
  UNIQUE KEY `index_UNIQUE` (`index`),
  UNIQUE KEY `Bankid_UNIQUE` (`Bankid`),
  KEY `mrm_id_idx` (`Bankid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginpage`
--

LOCK TABLES `loginpage` WRITE;
/*!40000 ALTER TABLE `loginpage` DISABLE KEYS */;
INSERT INTO `loginpage` VALUES (1,'Omkar1','Gholap','mrm'),(2,'Ronak1','Katariya','mrm'),(6,'Prajjwal1','Pandey','ro'),(7,'Aditya1','Sampathkumar','ro');
/*!40000 ALTER TABLE `loginpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant`
--

DROP TABLE IF EXISTS `merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant` (
  `Name` varchar(45) NOT NULL,
  `Merchantid` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Location` varchar(45) NOT NULL,
  `Target` varchar(45) NOT NULL,
  `RoAssigned` varchar(45) NOT NULL,
  PRIMARY KEY (`Name`,`Merchantid`),
  UNIQUE KEY `Merchantid_UNIQUE` (`Merchantid`),
  KEY `RoAss_idx` (`RoAssigned`),
  CONSTRAINT `RoAss` FOREIGN KEY (`RoAssigned`) REFERENCES `ro` (`Bankid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant`
--

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
INSERT INTO `merchant` VALUES (' Aryan Patankar','APLE','Near Station','Ghatkopar','Standease','Aditya1'),('Arnav Sawnat','ASROMA','Near Station','Thakurli','Insurance','Prajjwal1'),('Pranav Pol','PPHato','Near Station','Nerul','BQR','Aditya1'),('Pranav Titambe','PTUSHA','Near Station','Kalyan','Loan','Prajjwal1'),('Siddhant Sathe','SSLO','Near Station','Thakurli','TID\'s','Prajjwal1');
/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mrm`
--

DROP TABLE IF EXISTS `mrm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mrm` (
  `Name` varchar(40) NOT NULL,
  `Bankid` varchar(45) NOT NULL,
  `Area_Assigned` varchar(45) NOT NULL,
  `PhoneNo` varchar(10) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Post` varchar(45) NOT NULL,
  PRIMARY KEY (`Bankid`),
  CONSTRAINT `mrm_id` FOREIGN KEY (`Bankid`) REFERENCES `loginpage` (`Bankid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mrm`
--

LOCK TABLES `mrm` WRITE;
/*!40000 ALTER TABLE `mrm` DISABLE KEYS */;
INSERT INTO `mrm` VALUES ('Omkar Gholap','Omkar1','Mumbai','9869334321','Near Fortis','Gholap','mrm'),('Ronak Katariya','Ronak1','Thane','9876548764','Near Station','Katariya','mrm');
/*!40000 ALTER TABLE `mrm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ro`
--

DROP TABLE IF EXISTS `ro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ro` (
  `Name` varchar(40) NOT NULL,
  `Bankid` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Area_Assigned` varchar(45) NOT NULL,
  `PhoneNo` varchar(10) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Post` varchar(45) NOT NULL,
  PRIMARY KEY (`Bankid`),
  CONSTRAINT `ro_id` FOREIGN KEY (`Bankid`) REFERENCES `loginpage` (`Bankid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ro`
--

LOCK TABLES `ro` WRITE;
/*!40000 ALTER TABLE `ro` DISABLE KEYS */;
INSERT INTO `ro` VALUES ('Aditya Samapthkumar','Aditya1','NearIIT','Kanjur','9875641234','gf','hgf'),('Prajjwal Pandey','Prajjwal1','Near Station','Kalyan','9879879879','wjhfkj','jwfgl');
/*!40000 ALTER TABLE `ro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-09 21:40:12
