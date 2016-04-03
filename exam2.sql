-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: exam2
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.12.04.1

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
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matches` (
  `matchid` varchar(40) NOT NULL,
  `hostteamid` varchar(40) NOT NULL,
  `guestteamid` varchar(40) NOT NULL,
  `stadium` varchar(40) NOT NULL,
  `matchdate` date NOT NULL,
  `wonteamid` varchar(40) NOT NULL,
  `wontype` varchar(40) NOT NULL,
  `mainrefreeid` varchar(40) NOT NULL,
  `assistant1refreeid` varchar(40) NOT NULL,
  `assistant2refreeid` varchar(40) NOT NULL,
  PRIMARY KEY (`matchid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchresults`
--

DROP TABLE IF EXISTS `matchresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matchresults` (
  `wonteamid` varchar(40) NOT NULL,
  `wontype` varchar(40) NOT NULL,
  `points` int(11) DEFAULT NULL,
  `matchid` varchar(40) NOT NULL,
  PRIMARY KEY (`wonteamid`,`matchid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchresults`
--

LOCK TABLES `matchresults` WRITE;
/*!40000 ALTER TABLE `matchresults` DISABLE KEYS */;
INSERT INTO `matchresults` VALUES ('t101','win',2,'m001'),('t102','win',2,'m002'),('t103','win',2,'m003'),('t105','win',2,'m004'),('t105','win',2,'m005');
/*!40000 ALTER TABLE `matchresults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `playerid` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `bod` date NOT NULL,
  `startyear` date NOT NULL,
  `shirtnumber` int(11) NOT NULL,
  `teamid` varchar(40) NOT NULL,
  PRIMARY KEY (`playerid`),
  KEY `teamid` (`teamid`),
  CONSTRAINT `player_ibfk_1` FOREIGN KEY (`teamid`) REFERENCES `team` (`teamid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES ('p1001','pt1one','1960-02-09','1977-05-05',11,'t101'),('p1002','pt1two','1960-08-08','1979-05-06',12,'t101'),('p1003','pt1three','1961-01-22','1981-09-25',13,'t101'),('p1004','pt1four','1964-05-26','1980-12-15',14,'t101'),('p1005','pt1five','1960-01-01','1980-09-20',15,'t101'),('p2001','pt2one','1970-03-19','1982-05-25',21,'t102'),('p2002','pt2two','1970-06-28','1981-01-15',22,'t102'),('p2003','pt2three','1971-07-02','1986-05-05',23,'t102'),('p2004','pt2four','1974-09-06','1987-06-15',24,'t102'),('p2005','pt2five','1970-03-21','1980-12-03',25,'t102'),('p3001','pt3one','1962-02-09','1982-02-22',31,'t103'),('p3002','pt3two','1969-08-08','1989-07-16',32,'t103'),('p3003','pt3three','1961-01-02','1980-01-12',33,'t103'),('p3004','pt3four','1966-05-20','1986-08-01',34,'t103'),('p3005','pt3five','1967-01-21','1984-09-04',35,'t103'),('p4001','pt4one','1965-02-09','1987-12-25',41,'t104'),('p4002','pt4two','1963-08-28','1985-09-12',42,'t104'),('p4003','pt4three','1971-01-12','1989-03-19',43,'t104'),('p4004','pt4four','1974-05-16','1979-01-22',44,'t104'),('p4005','pt4five','1966-12-01','1979-05-12',45,'t104'),('p5001','pt5one','1961-02-09','1990-04-03',51,'t105'),('p5002','pt5two','1962-08-18','1982-05-01',52,'t105'),('p5003','pt5three','1961-01-12','1986-12-12',53,'t105'),('p5004','pt5four','1964-05-06','1989-05-15',54,'t105'),('p5005','pt5five','1969-01-21','1981-01-25',55,'t105'),('p6001','pt6one','1961-07-19','1980-01-22',61,'t106'),('p6002','pt6two','1963-08-21','1990-06-03',62,'t106'),('p6003','pt6three','1965-11-06','1989-12-25',63,'t106'),('p6004','pt6four','1966-05-14','1982-07-15',64,'t106'),('p6005','pt6five','1967-12-13','1986-05-08',65,'t106');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playergoals`
--

DROP TABLE IF EXISTS `playergoals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playergoals` (
  `playerid` varchar(40) NOT NULL,
  `noofgoals` int(11) DEFAULT NULL,
  `matchid` varchar(40) NOT NULL,
  `yellowcard` char(1) DEFAULT NULL,
  `redcard` char(1) DEFAULT NULL,
  PRIMARY KEY (`playerid`,`matchid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playergoals`
--

LOCK TABLES `playergoals` WRITE;
/*!40000 ALTER TABLE `playergoals` DISABLE KEYS */;
INSERT INTO `playergoals` VALUES ('p1001',3,'m1001','n','n'),('p1001',2,'m1002','n','n'),('p1001',9,'m1005','n','n'),('p1002',1,'m1001','n','n'),('p1003',6,'m1001','n','n'),('p1003',7,'m1005','n','n'),('p1004',4,'m1001','n','y'),('p1005',2,'m1001','n','n'),('p2001',0,'m1001','n','n'),('p2001',3,'m1002','n','n'),('p2002',1,'m1001','y','n'),('p2003',1,'m1001','n','y'),('p2004',0,'m1001','n','y'),('p2005',1,'m1001','y','n'),('p3001',2,'m1003','n','n'),('p4001',1,'m1003','n','n'),('p4001',5,'m1004','n','n'),('p4002',3,'m1003','n','n'),('p4004',1,'m1003','n','n'),('p5001',3,'m1004','n','n'),('p5001',1,'m1005','n','n'),('p5002',3,'m1004','n','n'),('p5002',3,'m1005','n','n'),('p5003',6,'m1004','n','n'),('p5003',2,'m1005','n','n'),('p5004',5,'m1004','n','n');
/*!40000 ALTER TABLE `playergoals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refree`
--

DROP TABLE IF EXISTS `refree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refree` (
  `refreeid` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `dob` date NOT NULL,
  `experience` int(11) NOT NULL,
  PRIMARY KEY (`refreeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refree`
--

LOCK TABLES `refree` WRITE;
/*!40000 ALTER TABLE `refree` DISABLE KEYS */;
INSERT INTO `refree` VALUES ('r1001','refreeone','1960-05-06',13),('r1002','refreetwe','1961-04-16',10),('r1003','refreethree','1961-12-16',11),('r1004','refreefour','1961-10-06',14),('r1005','refreefive','1962-01-31',12),('r1006','refreesix','1962-09-15',11),('r1007','refreeseven','1961-01-06',11),('r1008','refreeeight','1961-09-26',14);
/*!40000 ALTER TABLE `refree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `teamid` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `captainid` varchar(40) NOT NULL,
  `mainstadium` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  PRIMARY KEY (`teamid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES ('t101','teamone','p2001','onestadium','onecity'),('t102','teamtwo','p2002','twostadium','twocity'),('t103','teamthree','p3003','threestadium','threecity'),('t104','teamfour','p4004','fourstadium','fourcity'),('t105','teamfive','p5005','fivestadium','fivecity'),('t106','teamsix','p6001','sixstadium','sixcity');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-10 16:53:44
