DROP DATABASE IF EXISTS EBE;
CREATE DATABASE EBE;
USE EBE;

-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ebe
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `ClientID` varchar(7) NOT NULL,
  `ClientName` varchar(45) DEFAULT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Zip` char(5) DEFAULT NULL,
  PRIMARY KEY (`ClientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES ('ABG56','Alachua Birders Guild','3763 Main','Gainesville','FL','32601'),('ACCL35','Alachua County Cat Lovers','2347 Oak','Gainesville','FL','32604'),('FKK57','Friday Knight Knitters','3433 Third','Gainesville','FL','32611'),('GBG88','Gainesville Board Game','9294 Pine','Gainesville','FL','32611'),('GCC44','Gainesville Car Club','2818 Ninth','Gainesville','FL','32606'),('GDA69','Gainesville Dachshund Association ','8288 Elm','Gainesville','FL','32612'),('GFSL87','Gator Fantasy Sports League','6403 Hill','Gainesville','FL','32606'),('GHA85','Gainesville Husky Association ','8945 Washington','Gainesville','FL','32601'),('GIP63','Gator Cinephiles','6430 Washington','Gainesville','FL','32608'),('NFM68','North Florida Makers','2710 Cherry St. ','Gainesville','FL','32602'),('NFP66','North Florida Photographers','4921 Oak','Gainesville','FL','32604');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `ClientID` varchar(7) NOT NULL,
  `ContactName` varchar(45) NOT NULL,
  `ContactPhone` char(17) DEFAULT NULL,
  `ContactEmail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ClientID`,`ContactName`),
  CONSTRAINT `FK_ClientContact` FOREIGN KEY (`ClientID`) REFERENCES `client` (`ClientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES ('ABG56','David Hodgson','(352) 356 - 2941','davhod@outlook.com'),('ABG56','Jon Morris','(352) 597 - 2927','jonmor@hotmail.com'),('ACCL35','Adams Jay','(352) 422 - 6613','adamsjay@outlook.com'),('ACCL35','David Johnson','(352) 865 - 7100','davjohns@outlook.com'),('ACCL35','Mark Harui','(352) 673 - 1757','mha@gmail.com'),('FKK57','Derik Stenerson','(352) 165 - 2279','derikst@outlook.com'),('FKK57','Sharon Hoepf','(352) 208 - 6574','shahoe@outlook.com'),('GBG88','Garrett Young','(352) 113 - 2704','garryo@gmail.com'),('GBG88','Julie Bankert','(352) 391 - 3955','jb@gmail.com'),('GBG88','Nicole Smith','(352) 377 - 8566','nicoles@outlook.com'),('GBG88','Willis Johnson','(352) 950 - 8889','wjohn@gmail.com'),('GCC44','Annette Hill ','(352) 695 - 2863','anhill @outlook.com'),('GCC44','Elsa Leavitt','(352) 401 - 1983','eleavitt@hotmail.com'),('GCC44','Netz Merav','(352) 516 - 2416','netmerav@gmail.com'),('GCC44','Samantha Smith','(352) 572 - 5323','sasmi@hotmail.com'),('GCC44','Spencer Low','(352) 743 - 1411','spelo@gmail.com'),('GDA69','George Jiang','(352) 806 - 5403','gejian@yahoo.com'),('GDA69','Stephanie Conroy','(352) 453 - 9602','stephanieconr@yahoo.com'),('GHA85','Anthony Chor','(352) 971 - 4055','anthoch@hotmail.com'),('GHA85','Jason Watters','(352) 502 - 8297','jasowatters@yahoo.com'),('GHA85','Robert Zare','(352) 737 - 4553','robezare@gmail.com'),('GIP63','Corinna Bolender','(352) 630 - 6646','corinbolend@gmail.com'),('GIP63','Eric Parkinson','(352) 885 - 3032','erpar@gmail.com'),('GIP63','John Arthur','(352) 445 - 4249','joart@hotmail.com'),('GIP63','Ryan Calafato','(352) 324 - 5163','ryacalafat@gmail.com'),('NFM68','Jo Brown','(352) 241 - 3640','jbr@outlook.com'),('NFP66','Carol Philips','(352) 428 - 2769','carophilip@gmail.com'),('NFP66','Garry Garreth','(352) 868 - 9678','garrgarret@outlook.com'),('NFP66','John Emory','(352) 978 - 5770','jemory@gmail.com'),('NFP66','Margie Shoop','(352) 744 - 1664','margshoop@gmail.com'),('NFP66','Mike Tiano','(352) 472 - 1989','miti@gmail.com');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_contact`
--

DROP TABLE IF EXISTS `event_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_contact` (
  `ClientID` varchar(7) NOT NULL,
  `ContactName` varchar(45) NOT NULL,
  `EventCode` varchar(12) NOT NULL,
  PRIMARY KEY (`ClientID`,`ContactName`,`EventCode`),
  KEY `FK_EC_Event_idx` (`EventCode`),
  CONSTRAINT `FK_EC_Contact` FOREIGN KEY (`ClientID`, `ContactName`) REFERENCES `contact` (`ClientID`, `ContactName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_EC_Event` FOREIGN KEY (`EventCode`) REFERENCES `events` (`EventCode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_contact`
--

LOCK TABLES `event_contact` WRITE;
/*!40000 ALTER TABLE `event_contact` DISABLE KEYS */;
INSERT INTO `event_contact` VALUES ('ABG56','Jon Morris','ABG20171014'),('ABG56','David Hodgson','ABG20171021'),('ABG56','Jon Morris','ABG20171028'),('ABG56','David Hodgson','ABG2017107'),('ABG56','Jon Morris','ABG20171111'),('ABG56','David Hodgson','ABG20171118'),('ABG56','Jon Morris','ABG20171125'),('ABG56','David Hodgson','ABG2017114'),('ABG56','David Hodgson','ABG20171216'),('ABG56','David Hodgson','ABG2017122'),('ABG56','Jon Morris','ABG20171223'),('ABG56','David Hodgson','ABG20171230'),('ABG56','Jon Morris','ABG2017129'),('ACCL35','David Johnson','ACC20171010'),('ACCL35','Mark Harui','ACC20171010'),('ACCL35','Adams Jay','ACC20171017'),('ACCL35','Mark Harui','ACC20171017'),('ACCL35','Adams Jay','ACC20171024'),('ACCL35','David Johnson','ACC20171024'),('ACCL35','Adams Jay','ACC2017103'),('ACCL35','David Johnson','ACC2017103'),('ACCL35','David Johnson','ACC20171031'),('ACCL35','Adams Jay','ACC20171114'),('ACCL35','David Johnson','ACC20171114'),('ACCL35','David Johnson','ACC20171121'),('ACCL35','Mark Harui','ACC20171128'),('ACCL35','Mark Harui','ACC2017117'),('FKK57','Sharon Hoepf','FKK20171020'),('FKK57','Sharon Hoepf','FKK2017106'),('FKK57','Sharon Hoepf','FKK20171117'),('FKK57','Sharon Hoepf','FKK2017113'),('FKK57','Sharon Hoepf','FKK2017121'),('FKK57','Sharon Hoepf','FKK20171215'),('FKK57','Sharon Hoepf','FKK20171229'),('GBG88','Garrett Young','GBG20171018'),('GBG88','Julie Bankert','GBG20171018'),('GBG88','Garrett Young','GBG20171118'),('GBG88','Julie Bankert','GBG20171118'),('GBG88','Garrett Young','GBG20171218'),('GBG88','Julie Bankert','GBG20171218'),('GCC44','Annette Hill ','GCC2017123'),('GCC44','Elsa Leavitt','GCC2017123'),('GCC44','Netz Merav','GCC2017123'),('GCC44','Samantha Smith','GCC2017123'),('GDA69','George Jiang','GDA2017107'),('GDA69','Stephanie Conroy','GDA2017107'),('GHA85','Anthony Chor','GHA2017106'),('GHA85','Jason Watters','GHA2017106'),('GHA85','Robert Zare','GHA2017106'),('GHA85','Anthony Chor','GHA2017113'),('GHA85','Jason Watters','GHA2017113'),('GHA85','Robert Zare','GHA2017113'),('GHA85','Anthony Chor','GHA2017121'),('GHA85','Jason Watters','GHA2017121'),('GHA85','Robert Zare','GHA2017121'),('GIP63','Corinna Bolender','GIP20171018'),('GIP63','Eric Parkinson','GIP20171018'),('GIP63','John Arthur','GIP20171018'),('GIP63','Ryan Calafato','GIP20171018'),('GIP63','Corinna Bolender','GIP2017104'),('GIP63','Eric Parkinson','GIP2017104'),('GIP63','Corinna Bolender','GIP2017111'),('GIP63','Eric Parkinson','GIP2017111'),('GIP63','Corinna Bolender','GIP20171115'),('GIP63','Eric Parkinson','GIP20171115'),('GIP63','Corinna Bolender','GIP20171129'),('GIP63','Corinna Bolender','GIP20171213'),('NFP66','Mike Tiano','NFP20171016'),('NFP66','Mike Tiano','NFP2017102'),('NFP66','Carol Philips','NFP20171023'),('NFP66','Mike Tiano','NFP20171030'),('NFP66','Carol Philips','NFP2017109'),('NFP66','Mike Tiano','NFP20171113'),('NFP66','Carol Philips','NFP20171118'),('NFP66','Garry Garreth','NFP20171118'),('NFP66','John Emory','NFP20171118'),('NFP66','Margie Shoop','NFP20171118'),('NFP66','Carol Philips','NFP20171120'),('NFP66','Mike Tiano','NFP20171127'),('NFP66','Carol Philips','NFP2017116'),('NFP66','Mike Tiano','NFP20171211'),('NFP66','Carol Philips','NFP20171218'),('NFP66','Mike Tiano','NFP20171225'),('NFP66','Carol Philips','NFP2017124');
/*!40000 ALTER TABLE `event_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `EventCode` varchar(12) NOT NULL,
  `EventName` varchar(45) NOT NULL,
  `Description` varchar(150) DEFAULT NULL,
  `EventDate` date DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `Ticket` tinyint(4) DEFAULT NULL,
  `VenueID` char(7) NOT NULL,
  `ClientID` varchar(7) NOT NULL,
  PRIMARY KEY (`EventCode`),
  KEY `FK_Events_Venue_idx` (`ClientID`),
  KEY `FK_Events_Venue` (`VenueID`),
  CONSTRAINT `FK_Events_Client` FOREIGN KEY (`ClientID`) REFERENCES `client` (`ClientID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Events_Venue` FOREIGN KEY (`VenueID`) REFERENCES `venue` (`VenueID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES ('ABG20171014','Saturday Morning Birding','Join the Alachua County Birders every satursday morning in the nature parks around Gainesville. ','2017-10-14','06:00:00','08:00:00',0,'BAN5067','ABG56'),('ABG20171021','Saturday Morning Birding','Join the Alachua County Birders every satursday morning in the nature parks around Gainesville. ','2017-10-21','06:00:00','08:00:00',0,'CLN5067','ABG56'),('ABG20171028','Saturday Morning Birding','Join the Alachua County Birders every satursday morning in the nature parks around Gainesville. ','2017-10-28','06:00:00','08:00:00',0,'CNP5067','ABG56'),('ABG2017107','Saturday Morning Birding','Join the Alachua County Birders every satursday morning in the nature parks around Gainesville. ','2017-10-07','06:00:00','08:00:00',0,'ARP5067','ABG56'),('ABG20171111','Saturday Morning Birding','Join the Alachua County Birders every satursday morning in the nature parks around Gainesville. ','2017-11-11','06:00:00','08:00:00',0,'CNP5067','ABG56'),('ABG20171118','Saturday Morning Birding','Join the Alachua County Birders every satursday morning in the nature parks around Gainesville. ','2017-11-18','06:00:00','08:00:00',0,'CNP5067','ABG56'),('ABG20171125','Saturday Morning Birding','Join the Alachua County Birders every satursday morning in the nature parks around Gainesville. ','2017-11-25','06:00:00','08:00:00',0,'CNP5067','ABG56'),('ABG2017114','Saturday Morning Birding','Join the Alachua County Birders every satursday morning in the nature parks around Gainesville. ','2017-11-04','06:00:00','08:00:00',0,'CNP5067','ABG56'),('ABG20171216','Saturday Morning Birding','Join the Alachua County Birders every satursday morning in the nature parks around Gainesville. ','2017-12-16','06:00:00','08:00:00',0,'CNP5067','ABG56'),('ABG2017122','Saturday Morning Birding','Join the Alachua County Birders every satursday morning in the nature parks around Gainesville. ','2017-12-02','06:00:00','08:00:00',0,'CNP5067','ABG56'),('ABG20171223','Saturday Morning Birding','Join the Alachua County Birders every satursday morning in the nature parks around Gainesville. ','2017-12-23','06:00:00','08:00:00',0,'CNP5067','ABG56'),('ABG20171230','Saturday Morning Birding','Join the Alachua County Birders every satursday morning in the nature parks around Gainesville. ','2017-12-30','06:00:00','08:00:00',0,'CNP5067','ABG56'),('ABG2017129','Saturday Morning Birding','Join the Alachua County Birders every satursday morning in the nature parks around Gainesville. ','2017-12-09','06:00:00','08:00:00',0,'CNP5067','ABG56'),('ACC20171010','Cat Lovers Tuesday Night Meeting ','Weekly Cat Lovers Meeting ','2017-10-10','18:00:00','20:00:00',0,'FTC5648','ACCL35'),('ACC20171017','Cat Lovers Tuesday Night Meeting ','Weekly Cat Lovers Meeting ','2017-10-17','18:00:00','20:00:00',0,'FTC5648','ACCL35'),('ACC20171024','Cat Lovers Tuesday Night Meeting ','Weekly Cat Lovers Meeting ','2017-10-24','18:00:00','20:00:00',0,'FTC5648','ACCL35'),('ACC2017103','Cat Lovers Tuesday Night Meeting ','Weekly Cat Lovers Meeting ','2017-10-03','18:00:00','20:00:00',0,'FTC5648','ACCL35'),('ACC20171031','Cat Lovers Tuesday Night Meeting ','Weekly Cat Lovers Meeting ','2017-10-31','18:00:00','20:00:00',0,'FTC5648','ACCL35'),('ACC20171114','Cat Lovers Tuesday Night Meeting ','Weekly Cat Lovers Meeting ','2017-11-14','18:00:00','20:00:00',0,'FTC5648','ACCL35'),('ACC20171121','Cat Lovers Tuesday Night Meeting ','Weekly Cat Lovers Meeting ','2017-11-21','18:00:00','20:00:00',0,'FTC5648','ACCL35'),('ACC20171128','Cat Lovers Tuesday Night Meeting ','Weekly Cat Lovers Meeting ','2017-11-28','18:00:00','20:00:00',0,'FTC5648','ACCL35'),('ACC2017117','Cat Lovers Tuesday Night Meeting ','Weekly Cat Lovers Meeting ','2017-11-07','18:00:00','20:00:00',0,'FTC5648','ACCL35'),('FKK20171020','Friday Knitters Meet','Stop by and knit with us. Light refreshments wil be provided. RSVP Required.','2017-10-20','18:00:00','22:00:00',0,'GCC1458','FKK57'),('FKK2017106','Friday Knitters Meet','Stop by and knit with us. Light refreshments wil be provided. RSVP Required.','2017-10-06','18:00:00','22:00:00',0,'GCC1458','FKK57'),('FKK20171117','Friday Knitters Meet','Stop by and knit with us. Light refreshments wil be provided. RSVP Required.','2017-11-17','18:00:00','22:00:00',0,'GCC1458','FKK57'),('FKK2017113','Friday Knitters Meet','Stop by and knit with us. Light refreshments wil be provided. RSVP Required.','2017-11-03','18:00:00','22:00:00',0,'GCC1458','FKK57'),('FKK2017121','Friday Knitters Meet','Stop by and knit with us. Light refreshments wil be provided. RSVP Required.','2017-12-01','18:00:00','22:00:00',0,'GCC1458','FKK57'),('FKK20171215','Friday Knitters Meet','Stop by and knit with us. Light refreshments wil be provided. RSVP Required.','2017-12-15','18:00:00','22:00:00',0,'GCC1458','FKK57'),('FKK20171229','Friday Knitters Meet','Stop by and knit with us. Light refreshments wil be provided. RSVP Required.','2017-12-29','18:00:00','22:00:00',0,'GCC1458','FKK57'),('GBG20171018','October Board Game Tournament','Monthly Board Game Night Come join us and play in our tournaments. Tickets sold at the door. ','2017-10-18','09:00:00','21:00:00',1,'PLA9793','GBG88'),('GBG20171118','November Board Game Tournament','Monthly Board Game Night Come join us and play in our tournaments. Tickets sold at the door. ','2017-11-18','09:00:00','21:00:00',1,'PLA9793','GBG88'),('GBG20171218','December Board Game Tournament','Monthly Board Game Night Come join us and play in our tournaments. Tickets sold at the door. ','2017-12-18','09:00:00','21:00:00',1,'PLA9793','GBG88'),('GCC2017123','Annual Vintage Car Show','The Annual Vintage Car Show. Please contact organizers if you would like to display your own vintage car. Tickets available at gate.','2017-12-03','10:00:00','15:00:00',1,'GCC1458','GCC44'),('GDA2017107','Weiner Dog Derby ','Annual Weiner Dog Derby','2017-10-07','09:00:00','12:00:00',1,'CNP5067','GDA69'),('GHA2017106','Huskies Monthly Meetup ','Gainesville area huskies meeting. First Friday of every month','2017-10-06','19:00:00','22:00:00',0,'BAU0049','GHA85'),('GHA2017113','Huskies Monthly Meetup ','Gainesville area huskies meeting. First Friday of every month','2017-11-03','19:00:00','22:00:00',0,'BAU0049','GHA85'),('GHA2017121','Huskies Monthly Meetup ','Gainesville area huskies meeting. First Friday of every month','2017-12-01','19:00:00','22:00:00',0,'BAU0049','GHA85'),('GIP20171018','Cinephiles Movie Night ','Biweekly Movie Night','2017-10-18','20:00:00','23:00:00',1,'JOL9337','GIP63'),('GIP2017104','Cinephiles Movie Night ','Biweekly Movie Night','2017-10-04','20:00:00','23:00:00',1,'JOL9337','GIP63'),('GIP2017111','Cinephiles Movie Night ','Biweekly Movie Night','2017-11-01','20:00:00','23:00:00',1,'JOL9337','GIP63'),('GIP20171115','Cinephiles Movie Night ','Biweekly Movie Night','2017-11-15','20:00:00','23:00:00',1,'JOL9337','GIP63'),('GIP20171129','Cinephiles Movie Night ','Biweekly Movie Night','2017-11-29','20:00:00','23:00:00',1,'JOL9337','GIP63'),('GIP20171213','Cinephiles Movie Night ','Biweekly Movie Night','2017-12-13','20:00:00','23:00:00',1,'JOL9337','GIP63'),('NFP20171016','Weekly Photographers Meetup','Weekly meetup for local photographers to share tips and critiques. ','2017-10-16','20:00:00','22:00:00',0,'FTC5648','NFP66'),('NFP2017102','Weekly Photographers Meetup','Weekly meetup for local photographers to share tips and critiques. ','2017-10-02','20:00:00','22:00:00',0,'FTC5648','NFP66'),('NFP20171023','Weekly Photographers Meetup','Weekly meetup for local photographers to share tips and critiques. ','2017-10-23','20:00:00','22:00:00',0,'SWR9267','NFP66'),('NFP20171030','Weekly Photographers Meetup','Weekly meetup for local photographers to share tips and critiques. ','2017-10-30','20:00:00','22:00:00',0,'FTC5648','NFP66'),('NFP2017109','Weekly Photographers Meetup','Weekly meetup for local photographers to share tips and critiques. ','2017-10-09','20:00:00','22:00:00',0,'SWR9267','NFP66'),('NFP20171113','Weekly Photographers Meetup','Weekly meetup for local photographers to share tips and critiques. ','2017-11-13','20:00:00','22:00:00',0,'FTC5648','NFP66'),('NFP20171118','Annual Photography Show','This is a tickted event to view the best work of local photographers. ','2017-11-18','09:00:00','22:00:00',1,'HIP4477','NFP66'),('NFP20171120','Weekly Photographers Meetup','Weekly meetup for local photographers to share tips and critiques. ','2017-11-20','20:00:00','22:00:00',0,'SWR9267','NFP66'),('NFP20171127','Weekly Photographers Meetup','Weekly meetup for local photographers to share tips and critiques. ','2017-11-27','20:00:00','22:00:00',0,'FTC5648','NFP66'),('NFP2017116','Weekly Photographers Meetup','Weekly meetup for local photographers to share tips and critiques. ','2017-11-06','20:00:00','22:00:00',0,'SWR9267','NFP66'),('NFP20171211','Weekly Photographers Meetup','Weekly meetup for local photographers to share tips and critiques. ','2017-12-11','20:00:00','22:00:00',0,'FTC5648','NFP66'),('NFP20171218','Weekly Photographers Meetup','Weekly meetup for local photographers to share tips and critiques. ','2017-12-18','20:00:00','22:00:00',0,'SWR9267','NFP66'),('NFP20171225','Weekly Photographers Meetup','Weekly meetup for local photographers to share tips and critiques. ','2017-12-25','20:00:00','22:00:00',0,'FTC5648','NFP66'),('NFP2017124','Weekly Photographers Meetup','Weekly meetup for local photographers to share tips and critiques. ','2017-12-04','20:00:00','22:00:00',0,'SWR9267','NFP66');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `non_ticketed_events`
--

DROP TABLE IF EXISTS `non_ticketed_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `non_ticketed_events` (
  `EventCode` varchar(12) NOT NULL,
  `GuestList` tinyint(4) DEFAULT NULL,
  `ExpectedAttendance` int(11) DEFAULT NULL,
  `ActualAttendance` int(11) DEFAULT NULL,
  PRIMARY KEY (`EventCode`),
  CONSTRAINT `FK_NonTicketedEvents` FOREIGN KEY (`EventCode`) REFERENCES `events` (`EventCode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `non_ticketed_events`
--

LOCK TABLES `non_ticketed_events` WRITE;
/*!40000 ALTER TABLE `non_ticketed_events` DISABLE KEYS */;
INSERT INTO `non_ticketed_events` VALUES ('ABG20171014',-1,NULL,NULL),('ABG20171021',0,NULL,NULL),('ABG20171028',-1,NULL,NULL),('ABG2017107',0,NULL,NULL),('ABG20171111',-1,NULL,NULL),('ABG20171118',0,NULL,NULL),('ABG20171125',-1,NULL,NULL),('ABG2017114',0,NULL,NULL),('ABG20171216',0,NULL,NULL),('ABG2017122',0,NULL,NULL),('ABG20171223',-1,NULL,NULL),('ABG20171230',0,NULL,NULL),('ABG2017129',-1,NULL,NULL),('ACC20171010',1,30,29),('ACC20171017',1,30,20),('ACC20171024',1,30,31),('ACC2017103',1,30,23),('ACC20171031',1,30,28),('ACC20171114',1,30,35),('ACC20171121',1,30,24),('ACC20171128',1,30,15),('ACC2017117',1,30,29),('FKK20171020',1,45,56),('FKK2017106',1,45,42),('FKK20171117',1,45,51),('FKK2017113',1,45,46),('FKK2017121',1,45,32),('FKK20171215',1,45,51),('FKK20171229',1,45,39),('GBG20171218',0,30,36),('GCC2017123',0,30,37),('GHA2017106',0,NULL,NULL),('GHA2017113',0,NULL,NULL),('GHA2017121',0,NULL,NULL),('GIP20171018',0,NULL,NULL),('NFP20171016',0,30,29),('NFP2017102',0,30,21),('NFP20171023',0,30,27),('NFP20171030',0,30,23),('NFP2017109',0,30,28),('NFP20171113',0,30,24),('NFP20171118',0,30,25),('NFP20171120',0,30,32),('NFP20171127',0,30,43),('NFP2017116',0,30,41),('NFP20171211',-1,NULL,NULL),('NFP20171218',-1,NULL,NULL),('NFP20171225',-1,NULL,NULL),('NFP2017124',0,30,34);
/*!40000 ALTER TABLE `non_ticketed_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketed_events`
--

DROP TABLE IF EXISTS `ticketed_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketed_events` (
  `EventCode` varchar(12) NOT NULL,
  `TicketPrice` int(11) DEFAULT NULL,
  `TicketsAvailable` int(11) DEFAULT NULL,
  `TicketsSold` int(11) DEFAULT NULL,
  `WristBands` tinyint(1) DEFAULT NULL,
  `HandStamp` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`EventCode`),
  CONSTRAINT `FK_TicketedEvents` FOREIGN KEY (`EventCode`) REFERENCES `events` (`EventCode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketed_events`
--

LOCK TABLES `ticketed_events` WRITE;
/*!40000 ALTER TABLE `ticketed_events` DISABLE KEYS */;
INSERT INTO `ticketed_events` VALUES ('GBG20171018',15,150,86,0,1),('GBG20171118',15,150,160,0,1),('GBG20171218',15,150,137,0,1),('GCC2017123',20,100,100,1,0),('GDA2017107',5,250,250,1,0),('GIP20171018',10,50,50,0,0),('GIP2017104',10,50,50,0,0),('GIP2017111',10,50,38,0,0),('GIP20171115',10,50,34,0,0),('GIP20171129',10,50,33,0,0),('GIP20171213',10,50,26,0,0);
/*!40000 ALTER TABLE `ticketed_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue` (
  `VenueID` char(7) NOT NULL,
  `VenueName` varchar(45) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Street` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `State` char(2) NOT NULL,
  `Zip` char(5) NOT NULL,
  `Parking` tinyint(4) NOT NULL,
  `LocationContactName` varchar(100) DEFAULT NULL,
  `LocationContactNumber` char(14) DEFAULT NULL,
  PRIMARY KEY (`VenueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` VALUES ('ARP5067','Alfred A. Ring Park ',500,'1801 NW 23rd Blvd.','Gainesville','FL','32605',0,'Adams Jay','(352) 334-5067'),('BAN5067','Bivens Arm Nature Park',500,'3650 S Main St, ','Gainesville','FL','32608',1,'Adams Jay','(352) 334-5067'),('BAU0049','Baughman Center ',150,'982 Museum Rd','Gainesville','FL','32611',1,'Burnell Dana','(352) 249-0049'),('CLN5067','Clear Lake Nature Park',500,'5480 SW 1 Ave','Gainesville','FL','32607',1,'Adams Jay','(352) 334-5067'),('CNP5067','Cofrin Nature Park',500,'4810 NW 8th Av','Gainesville','FL','32605',1,'Adams Jay','(352) 334-5067'),('FTC5648','The Fat Tuscan Cafe ',50,'725 NE 1st St ','Gainesville','FL','32601',1,'Caron Rob','(352) 505-5648'),('GCC0426','Gainesville Garden Club',125,'1350 NW 75 St','Gainesville','FL','32601',1,'Maxwell Taylor','(352) 331-0426'),('GCC1458','Gainesville Country Club',200,'7300 SW 35th Way','Gainesville','FL','32608',1,'Hill Annie','(352) 372-1458'),('HEA9523','Heartwood Soundstage',200,'619 S Main St','Gainesville','FL','32601',0,'Wadia Rohinton','(786) 838-9523'),('HIP4477','Hippodrome State Theatre',125,'25 SE 2nd Pl','Gainesville','FL','32601',1,'Salmre Ivo','(352) 375-4477'),('JOL9337','Jolie Events',260,'6 W University Ave','Gainesville','FL','32601',1,'Honning Annette','(352) 377-9337'),('KAN4981','Kanapaha Botanical Gardens',300,'4700 Sw 58th Dr','Gainesville','FL','32608',1,'Clark Brian','(352) 372-4981'),('PLA9793','Plantation Hall',200,'5100 SW 91st Terrace','Gainesville','FL','32608',0,'Ismert Erik','(352) 378-9793'),('SBI6760','Sweetwater Branch Inn',40,'625 E University Ave','Gainesville','FL','32601',1,'Wu Pengw','(352) 373-6760'),('SWR9267','The Swamp Restaurant',70,'1642 W University Ave','Gainesville','FL','32601',0,'Zabokritski Eugene','(352) 377-9267'),('THO5064','Thomas Center',100,'302 NE 6th Ave','Gainesville','FL','32601',1,'Crayton Terry','(352) 334-5064'),('WOO1178','The Wooly',200,'20 N Main St.','Gainesville','FL','32601',0,'Shai Bassli','(352) 278-1178');
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-14 22:26:43

--#1
/*
List the event code, name and description, date, start time, and end time for all the ticketed events only. 
Sort the results by the date in ascending order.
*/

SELECT EventCode, EventName, Description, eventDate, StartTime, EndTime
FROM Events
WHERE ticket = 1
ORDER BY 5 ASC;

--#2
/*
How many venues in Gainesville offer parking?
*/

SELECT COUNT(DISTINCT venueID) VenuesWithParking
FROM venue
WHERE parking = 1;

--#3
/*
Which venues have had the most events scheduled? 
To answer this question, list all the VenueIDs along with the number of events they have had scheduled 
and sort your results showing the venue with the most number of events first.
*/

SELECT VenueId, COUNT(*) NumberOfEvents
FROM events
GROUP BY VenueID
ORDER BY 2 DESC;

--#4
/*
Are there any sold out events? 
List the event code and the revenue generated (Revenue = TicketPrice * TicketsSold) 
and sort the results in the descending order of the revenue generated.
*/

SELECT eventcode, (TicketPrice * TicketsSold) Revenue
FROM ticketed_events
WHERE ticketsSold = TicketsAvailable
ORDER BY 2 DESC; 

--#5
/*
What is the average duration of the ticketed and the non-ticketed events? 
List the type of event and average duration in your results. 
HINT: You will have to use a MySQL function that can be used to subtract TIME data types. 
OPTIONAL BONUS: Use a function so that the query displays Ticketed and NonTicketed instead of 0 and 1. 
No extra points for this, just the knowledge that you are awesome at SQL : )
*/

SELECT (CASE WHEN ticket = 1 THEN 'Ticketed' ELSE 'Non-Ticketed' END) EventType, AVG(TIMEDIFF(Endtime,StartTime)) EventDuration
FROM events
GROUP BY 1;


--#6
/*
How many contact people does each client have? 
Your results should list the Client ID and the count of number of contacts.
*/

select clientId, count(*) NumberOfContacts
from event_contact
group by 1;

--#7
/*
How many events has each contact person organized? 
Your results should list the Client ID, Contact Name and the Number of Events Organized. 
Sort your results in descending order of the number of events and only display the top 5 event organizers.
*/

select clientId, contactName, count(*) EventsOrganized
from event_contact
group by 2,1
order by 3 desc
limit 5;

--#8
/*
List the details for each client’s contacts. 
Your results should display the client name, contact name, contact phone contact email address 
and number of events that they have organized. 
Sort your results by client name.
*/

SELECT cl.clientName, co.contactName, co.contactPhone, co.ContactEmail, COUNT(*) EventsOrganized
FROM client cl JOIN contact co ON cl.clientId=co.clientId RIGHT JOIN event_contact ec ON co.contactName=ec.contactName
GROUP BY 2, 3, 4
ORDER BY 1;

--#9
/*
List the details of events as shown below. 
Your query should include those clients who may not have had a single event yet. Your results should return 11 rows.
Client Name,	Number of Non Ticketed Events,	Number of Ticketed Events,	Earliest Events,	Latest Events
*/

SELECT cl.clientName, COUNT(IF(ticket = 0,1,NULL)) NonTicketedEvents, COUNT(IF(ticket=1,1,NULL)) TicketedEvents, 
MIN(EventDate) EarliestEvent, MAX(eventDate) LatestEvent 
FROM client cl LEFT JOIN events e ON cl.clientID=e.clientID 
GROUP BY 1;

--#10
/*
For each event, list the event name, date, venue name, venue capacity, event duration (end time – start time) and the attendance. 
In the case of ticketed events, attendance is the number of tickets sold. 
In the case of non-ticketed events, attendance should be the actual attendance.
Do not include any events where the attendance was not recorded and sort your results in the descending order of attendance.
*/

SELECT eventName, eventDate, venueName, Capacity, TIMEDIFF(Endtime,startTime) Duration, ticketssold Attendance
FROM events e, venue v, ticketed_events t
WHERE e.venueID=v.venueID AND e.eventCode=t.eventCode 
GROUP BY e.eventName, e.eventDate
HAVING Attendance > 0
UNION
SELECT eventName, eventDate, venueName, Capacity, TIMEDIFF(Endtime,startTime) Duration, ActualAttendance Attendance
FROM events e, venue v, non_ticketed_events n
WHERE e.venueID=v.venueID AND e.eventCode=n.eventCode 
GROUP BY e.eventName, e.eventDate
HAVING Attendance > 0
ORDER BY attendance DESC;

--#11
/*
Which three venues are the most popular for non-ticketed events? 
List the Venue ID, Venue Name, no of non-ticketed events and capacity. 
*/

SELECT v.venueId, v.venueName, COUNT(e.eventCode) NumberOfNonTicketedEvents, capacity
FROM venue v, events e, non_ticketed_events n 
WHERE v.venueID=e.venueID AND e.eventCode=n.eventCode
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 3;

--#12
/*
Which event has been organized by the most number of contact people? 
List the name of the event and the count of the number of people who organized the event.
*/

select e.eventName, count(ec.eventCode) PeopleOrganizing
from events e join event_contact ec on e.eventCode=ec.eventCode
group by 1
order by 2 desc 
limit 1;

--#13
/*
Which 10 contact people have organized the most number of events? 
List the client name, contact name and the number of events that have been organized.
*/

select cl.clientname, ec.contactName, count(ec.contactName) EventsOrganized
from client cl join event_contact ec on cl.clientID=ec.clientid
group by 2,1
order by 3 desc
limit 10;

--#14
/*
Create a view called EventDetails that contains the following information from the Event, Client and Venue tables.
ClientID, ClientName, ClientAddress,
EventCode, EventName, Description, EventDate, StartTime, EndTime, Ticket,
VenueID, VenueName, Capacity, VenueAddress, Parking
Use the CONCAT function to combine the Street, City, State and Zip fields for the two address fields
(don’t forget to add spaces between the fields – the addresses should not be displayed as one long word).
*/

create view EventDetails as 
select cl.clientID, cl.clientName, concat(cl.street,', ',cl.city,', ',cl.state,', ',cl.zip) clientAddress,
e.eventcode, e.eventName, e.description, e.eventdate, e.starttime, e.endtime, (case when ticket = 1 then 'ticketed' else 'non-ticketed' end) EventType,
v.venueID, v.venueName, v.capacity, concat(v.street,', ',v.city,', ', v.state,', ', v.zip) venueAddress, (case when parking = 1 then 'Guest Parking' else 'No Parking' end) VenueParking
from client cl, events e, venue v
where cl.clientID=e.clientID and e.venueID=v.venueID;
