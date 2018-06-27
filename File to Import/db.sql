-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: immasterlist
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.32-MariaDB

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
-- Table structure for table `tbl_associate_list`
--

DROP TABLE IF EXISTS `tbl_associate_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_associate_list` (
  `eid` int(11) NOT NULL,
  `ntid` varchar(45) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `jobLevel` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `supNtid` varchar(45) DEFAULT NULL,
  `tower` varchar(100) DEFAULT NULL,
  `dateHired` date DEFAULT NULL,
  `costCenter` int(11) DEFAULT NULL,
  `directReport` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `regular` varchar(100) DEFAULT NULL,
  `fullTime` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `birthDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_associate_list`
--

LOCK TABLES `tbl_associate_list` WRITE;
/*!40000 ALTER TABLE `tbl_associate_list` DISABLE KEYS */;
INSERT INTO `tbl_associate_list` VALUES (62499,'calera00','Argin','Lerit','Associate - Lead','Argin.Lerit@ingrammicro.com','usgatv00','Global Service Delivery','2010-06-14',2147483647,'Yes','Male','Business Solutions Lead','Regular','Full time','Manila','3/29'),(63341,'usarga00','Alvin','Argonia','Associate','Alvin.Argonia@IngramMicro.com','calera00','Global Services Delivery','2010-08-02',2147483647,'No','Male','Bus & Systems Analyst   Svs','Regular','Full time','Manila','11/21'),(63551,'D1GRUEM0','Michael','Gruet','Associate','Michael.Gruet@IngramMicro.com','calera00','Global Services Delivery','2010-08-02',2147483647,'No','Male','Bus Process Mgt Analyst','Regular','Full time','Manila','9/14'),(63664,'ushuam00','Michael','Huang','Associate - Lead','Michael.Huang@ingrammicro.com','usgatv00','Global Service Delivery','2010-08-16',2147483647,'Yes','Male','Business Solutions Lead','Regular','Full time','Manila','4/5'),(70133,'usesem00','Mark Francis','Eseo','Associate','Mark.Eseo@ingrammicro.com','calera00','Global Services Delivery','2012-04-09',2147483647,'No','Male','Bus Process Mgt Analyst','Regular','Full time','Manila','11/4'),(82245,'uscuen01','Noel','Cuevas','Associate','Noel.Cuevas@ingrammicro.com','calera00','Global Services Delivery','2013-10-22',2147483647,'No','Male','Bus Process Mgt Analyst','Regular','Full time','Manila','11/5'),(92415,'usduma00','Alexandra Denise','Dumandan','Associate','Alexandra.Dumandan@ingrammicro.com','calera00','Global Services Delivery','2015-04-27',2147483647,'No','Female','Bus & Systems Analyst   Svs','Regular','Full time','Manila','11/18'),(93988,'usrabj00','Jeanette','Rabacio','Associate','Jeanette.Rabacio@ingrammicro.com','ushuam00','Global Services Delivery','2015-06-29',2147483647,'No','Female','Sr Web Designer','Regular','Full time','Manila','6/22'),(101779,'usmarm01','Matthew','Marte','Associate','Matthew.Marte@ingrammicro.com','calera00','Global Services Delivery','2016-03-10',2147483647,'No','Male','Department Systems Analyst','Regular','Full time','Manila','2/18'),(102512,'usdalo00','Orly','Daluyo','Associate','Orly.Daluyo@ingrammicro.com','calera00','Global Services Delivery','2016-03-31',2147483647,'No','Male','Bus Process Mgt Analyst','Regular','Full time','Manila','12/31'),(108206,'usjacj03','Jose III','Jacinto','Associate - Lead','Jose.Jacinto@ingrammicro.com','usmore04','Global Services Delivery','2016-08-10',2147483647,'No','Male','Transition Lead','Regular','Full time','Manila','9/24'),(108378,'uspagf00','Francis Jerome','Pagaragan','Associate','Francis.Pagaragan@ingrammicro.com','ushuam00','Global Services Delivery','2017-03-25',2147483647,'No','Male','Junior Developer','Regular','Full time','Manila','6/17'),(108484,'uslegc00','Charmaine Andrea','Legaspi','Associate','Charmaine.Legaspi@ingrammicro.com','ushuam00','Global Services Delivery','2016-08-25',2147483647,'No','Female','Junior Developer','Regular','Full time','Manila','4/6'),(112963,'ussapj01','John Eric','Sapungan','Associate','JohnEric.Sapungan@ingrammicro.com','ushuam00','Global Services Delivery','2017-02-09',2147483647,'No','Male','Sr Web Developer','Regular','Full time','Manila','1/9'),(113329,'usyerj00','Julius Jim','Yerro','Associate','Julius.Yerro@ingrammicro.com','ushuam00','Global Services Delivery','2017-02-27',2147483647,'No','Male','Sr Web Developer','Regular','Full time','Manila','9/19');
/*!40000 ALTER TABLE `tbl_associate_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-27 14:20:56
