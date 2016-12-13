CREATE DATABASE  IF NOT EXISTS `database321_project` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `database321_project`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: database321_project
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Temporary table structure for view `Alumni`
--

DROP TABLE IF EXISTS `Alumni`;
/*!50001 DROP VIEW IF EXISTS `Alumni`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Alumni` (
  `stuID` tinyint NOT NULL,
  `lName` tinyint NOT NULL,
  `fName` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `contactNum` tinyint NOT NULL,
  `major` tinyint NOT NULL,
  `gpa` tinyint NOT NULL,
  `academicYear` tinyint NOT NULL,
  `cohort` tinyint NOT NULL,
  `degreeCompleted` tinyint NOT NULL,
  `totalCredits` tinyint NOT NULL,
  `userName` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `CompaniesTable`
--

DROP TABLE IF EXISTS `CompaniesTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompaniesTable` (
  `companiesTableID` int(3) NOT NULL DEFAULT '0',
  `compID` int(6) DEFAULT NULL,
  PRIMARY KEY (`companiesTableID`),
  KEY `CompaniesTable_compid_fk` (`compID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CompaniesTable`
--

LOCK TABLES `CompaniesTable` WRITE;
/*!40000 ALTER TABLE `CompaniesTable` DISABLE KEYS */;
INSERT INTO `CompaniesTable` VALUES (412,19283),(17,102936),(925,19273),(243,435201),(825,835298);
/*!40000 ALTER TABLE `CompaniesTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `compID` int(6) NOT NULL AUTO_INCREMENT,
  `coordinatorID` int(6) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `contactNumber` varchar(15) NOT NULL,
  `industry` varchar(50) NOT NULL,
  `revenue` int(8) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `userName` varchar(25) NOT NULL,
  PRIMARY KEY (`compID`),
  KEY `Company_coordid_fk` (`coordinatorID`),
  KEY `Company_username_fk` (`userName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`srodriguez4`@`%.iona.edu`*/ /*!50003 TRIGGER Company_Updated_Username 
AFTER UPDATE ON Company
FOR EACH ROW 
        UPDATE Users
        SET userName = NEW.userName
        WHERE userName = OLD.userName */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `Computer_Science`
--

DROP TABLE IF EXISTS `Computer_Science`;
/*!50001 DROP VIEW IF EXISTS `Computer_Science`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Computer_Science` (
  `stuID` tinyint NOT NULL,
  `lName` tinyint NOT NULL,
  `fName` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `contactNum` tinyint NOT NULL,
  `major` tinyint NOT NULL,
  `gpa` tinyint NOT NULL,
  `academicYear` tinyint NOT NULL,
  `cohort` tinyint NOT NULL,
  `degreeCompleted` tinyint NOT NULL,
  `totalCredits` tinyint NOT NULL,
  `userName` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Files`
--

DROP TABLE IF EXISTS `Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Files` (
  `filesID` int(6) NOT NULL AUTO_INCREMENT,
  `stuID` int(6) DEFAULT NULL,
  `student_transcript` varchar(25) DEFAULT NULL,
  `student_Resume` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`filesID`),
  KEY `Files_stuid_fk` (`stuID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Files`
--

LOCK TABLES `Files` WRITE;
/*!40000 ALTER TABLE `Files` DISABLE KEYS */;
INSERT INTO `Files` VALUES (6,8,'CDavis Transcript','CDavis Resume'),(7,7,'TArrot Transcript','TArrot Resume'),(8,6,'BMadison Transcript','BMadison Resume'),(9,9,'TStark Transcript','TStark Resume'),(10,11,'RDescarte Transcript','RDescarte Resume');
/*!40000 ALTER TABLE `Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `Freshman_Students`
--

DROP TABLE IF EXISTS `Freshman_Students`;
/*!50001 DROP VIEW IF EXISTS `Freshman_Students`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Freshman_Students` (
  `stuID` tinyint NOT NULL,
  `lName` tinyint NOT NULL,
  `fName` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `contactNum` tinyint NOT NULL,
  `major` tinyint NOT NULL,
  `gpa` tinyint NOT NULL,
  `academicYear` tinyint NOT NULL,
  `cohort` tinyint NOT NULL,
  `degreeCompleted` tinyint NOT NULL,
  `totalCredits` tinyint NOT NULL,
  `userName` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `Graduate_Students`
--

DROP TABLE IF EXISTS `Graduate_Students`;
/*!50001 DROP VIEW IF EXISTS `Graduate_Students`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Graduate_Students` (
  `stuID` tinyint NOT NULL,
  `lName` tinyint NOT NULL,
  `fName` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `contactNum` tinyint NOT NULL,
  `major` tinyint NOT NULL,
  `gpa` tinyint NOT NULL,
  `academicYear` tinyint NOT NULL,
  `cohort` tinyint NOT NULL,
  `degreeCompleted` tinyint NOT NULL,
  `totalCredits` tinyint NOT NULL,
  `userName` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Intern_Coordinator`
--

DROP TABLE IF EXISTS `Intern_Coordinator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Intern_Coordinator` (
  `empID` int(6) NOT NULL AUTO_INCREMENT,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `studentsTableID` int(3) DEFAULT NULL,
  `companiesTableID` int(3) DEFAULT NULL,
  `userName` varchar(25) NOT NULL,
  PRIMARY KEY (`empID`),
  KEY `Intern_Coordinator_studentstableid_fk` (`studentsTableID`),
  KEY `Intern_Coordinator_companiestableid_fk` (`companiesTableID`),
  KEY `Intern_Coordinator_username_fk` (`userName`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intern_Coordinator`
--

LOCK TABLES `Intern_Coordinator` WRITE;
/*!40000 ALTER TABLE `Intern_Coordinator` DISABLE KEYS */;
INSERT INTO `Intern_Coordinator` VALUES (1,'Mike','Brians',1,412,'MBrians'),(2,'Alecia','Goldrich',2,17,'AleciaG'),(3,'Mickey','Grahams',3,925,'TFord'),(4,'Tom','Ford',4,243,'MGrahams'),(5,'Benjamin','Franklin',5,825,'BFranklin');
/*!40000 ALTER TABLE `Intern_Coordinator` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`srodriguez4`@`%.iona.edu`*/ /*!50003 TRIGGER Coordinator_changed_Username
AFTER UPDATE ON Intern_Coordinator
FOR EACH ROW 
        UPDATE Users
        SET userName = NEW.userName
        WHERE userName = OLD.userName */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Job`
--

DROP TABLE IF EXISTS `Job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Job` (
  `jobID` int(6) NOT NULL AUTO_INCREMENT,
  `compID` int(6) NOT NULL,
  `jobType` varchar(25) NOT NULL,
  `positionTitle` varchar(25) NOT NULL,
  `jobDescription` varchar(255) DEFAULT NULL,
  `relatedMajor` varchar(30) NOT NULL,
  `minGPA` float(4,2) DEFAULT NULL,
  `desiredAcademicYear` varchar(10) DEFAULT NULL,
  `requirements` varchar(255) NOT NULL,
  `division` varchar(25) DEFAULT NULL,
  `postDate` date DEFAULT NULL,
  `expirationDate` date DEFAULT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `minSalary` int(6) DEFAULT NULL,
  PRIMARY KEY (`jobID`),
  KEY `Job_compid_fk` (`compID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Job`
--

LOCK TABLES `Job` WRITE;
/*!40000 ALTER TABLE `Job` DISABLE KEYS */;
INSERT INTO `Job` VALUES (1,1,'type','postitle','description','History',3.80,'year','requirements','division','0000-00-00','0000-00-00','skills',0),(2,2,'jobType','position title','job Description','History',3.90,'desired Ye','Requirements','division','0000-00-00','0000-00-00','skills',20),(3,1,'Jarvis Engineer','Engineer','Make a badass AI','Computer Engineering',4.00,'Freshman','Requirements','Division','0000-00-00','0000-00-00','Skills',0);
/*!40000 ALTER TABLE `Job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Job_History`
--

DROP TABLE IF EXISTS `Job_History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Job_History` (
  `jobHistoryID` int(6) NOT NULL AUTO_INCREMENT,
  `stuID` int(6) NOT NULL,
  `jobID` int(6) NOT NULL,
  PRIMARY KEY (`jobHistoryID`),
  KEY `Job_History_stuid_fk` (`stuID`),
  KEY `Job_History_jobid_fk` (`jobID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Job_History`
--

LOCK TABLES `Job_History` WRITE;
/*!40000 ALTER TABLE `Job_History` DISABLE KEYS */;
INSERT INTO `Job_History` VALUES (10,8,192863),(11,7,816273),(12,6,816253),(13,9,615245),(14,11,715243);
/*!40000 ALTER TABLE `Job_History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `Junior_Students`
--

DROP TABLE IF EXISTS `Junior_Students`;
/*!50001 DROP VIEW IF EXISTS `Junior_Students`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Junior_Students` (
  `stuID` tinyint NOT NULL,
  `lName` tinyint NOT NULL,
  `fName` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `contactNum` tinyint NOT NULL,
  `major` tinyint NOT NULL,
  `gpa` tinyint NOT NULL,
  `academicYear` tinyint NOT NULL,
  `cohort` tinyint NOT NULL,
  `degreeCompleted` tinyint NOT NULL,
  `totalCredits` tinyint NOT NULL,
  `userName` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `Senior_Students`
--

DROP TABLE IF EXISTS `Senior_Students`;
/*!50001 DROP VIEW IF EXISTS `Senior_Students`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Senior_Students` (
  `stuID` tinyint NOT NULL,
  `lName` tinyint NOT NULL,
  `fName` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `contactNum` tinyint NOT NULL,
  `major` tinyint NOT NULL,
  `gpa` tinyint NOT NULL,
  `academicYear` tinyint NOT NULL,
  `cohort` tinyint NOT NULL,
  `degreeCompleted` tinyint NOT NULL,
  `totalCredits` tinyint NOT NULL,
  `userName` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `Six_Figure_Jobs`
--

DROP TABLE IF EXISTS `Six_Figure_Jobs`;
/*!50001 DROP VIEW IF EXISTS `Six_Figure_Jobs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Six_Figure_Jobs` (
  `jobID` tinyint NOT NULL,
  `compID` tinyint NOT NULL,
  `jobType` tinyint NOT NULL,
  `positionTitle` tinyint NOT NULL,
  `jobDescription` tinyint NOT NULL,
  `relatedMajor` tinyint NOT NULL,
  `minGPA` tinyint NOT NULL,
  `desiredAcademicYear` tinyint NOT NULL,
  `requirements` tinyint NOT NULL,
  `division` tinyint NOT NULL,
  `postDate` tinyint NOT NULL,
  `expirationDate` tinyint NOT NULL,
  `skills` tinyint NOT NULL,
  `minSalary` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Skills`
--

DROP TABLE IF EXISTS `Skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Skills` (
  `skillsID` int(6) NOT NULL AUTO_INCREMENT,
  `stuID` int(6) DEFAULT NULL,
  `firstSkill` varchar(25) DEFAULT NULL,
  `secondSkill` varchar(25) DEFAULT NULL,
  `thirdSkill` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`skillsID`),
  KEY `Skills_stuid_fk` (`stuID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Skills`
--

LOCK TABLES `Skills` WRITE;
/*!40000 ALTER TABLE `Skills` DISABLE KEYS */;
INSERT INTO `Skills` VALUES (4,8,'SQL','Java','C++'),(5,7,'Book Keeping','',''),(6,6,'Quck Learner','',''),(7,9,'Quick Typer','',''),(8,11,'Book Keeping','','');
/*!40000 ALTER TABLE `Skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `Sophomore_Students`
--

DROP TABLE IF EXISTS `Sophomore_Students`;
/*!50001 DROP VIEW IF EXISTS `Sophomore_Students`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Sophomore_Students` (
  `stuID` tinyint NOT NULL,
  `lName` tinyint NOT NULL,
  `fName` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `contactNum` tinyint NOT NULL,
  `major` tinyint NOT NULL,
  `gpa` tinyint NOT NULL,
  `academicYear` tinyint NOT NULL,
  `cohort` tinyint NOT NULL,
  `degreeCompleted` tinyint NOT NULL,
  `totalCredits` tinyint NOT NULL,
  `userName` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Student` (
  `stuID` int(6) NOT NULL AUTO_INCREMENT,
  `lName` varchar(20) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contactNum` varchar(15) NOT NULL,
  `major` varchar(30) DEFAULT NULL,
  `gpa` float(4,2) DEFAULT NULL,
  `academicYear` varchar(10) NOT NULL,
  `cohort` date NOT NULL,
  `degreeCompleted` date DEFAULT NULL,
  `totalCredits` int(3) DEFAULT NULL,
  `userName` varchar(25) NOT NULL,
  PRIMARY KEY (`stuID`),
  KEY `Student_username_fk` (`userName`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES (8,'Davis','Chris','210 Stone Brook Plaze, New Jersey','ChrisIsDAvis@yahoo.com','9141826354','History',3.50,'Senior','2014-05-11','2014-05-11',85,'CDavis3'),(7,'Arrot','Trey','22 Blue blvd., New York','ImTrey@gmail.com','9148162735','Economics',2.50,'Sophmore','2016-05-12','2016-05-12',65,'TArrot2'),(6,'Madison','Billy','111 Cedric Avenue, New York','BillyMadison@gmail.com','9145273342','Compuer Science',3.50,'Junior','2015-05-12','2015-05-12',65,'BMadison1'),(9,'Stark','Tony','10880 Malibu Point, Malibu California','imIronMan@aol.com','3151825365','Computer Engineering',4.00,'Freshman','2017-05-11','2017-05-11',25,'TStark0'),(11,'DesCarte','Ralph','10 RedWall Ave., New York','TheRealDesCarte@gmail.com','9141526172','Mathamatics',4.00,'Senior','2014-04-29','2014-04-29',100,'RDescartes1');
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`srodriguez4`@`%.iona.edu`*/ /*!50003 TRIGGER Student_Has_Changed_Username
AFTER UPDATE ON Student 
FOR EACH ROW 
        UPDATE Users
        SET userName = NEW.userName
        WHERE userName = OLD.userName */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `StudentsTable`
--

DROP TABLE IF EXISTS `StudentsTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StudentsTable` (
  `studentsTableID` int(3) NOT NULL DEFAULT '0',
  `stuID` int(6) DEFAULT NULL,
  PRIMARY KEY (`studentsTableID`),
  KEY `StudentsTable_stuid_fk` (`stuID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StudentsTable`
--

LOCK TABLES `StudentsTable` WRITE;
/*!40000 ALTER TABLE `StudentsTable` DISABLE KEYS */;
INSERT INTO `StudentsTable` VALUES (1,8),(2,7),(3,6),(4,9),(5,11);
/*!40000 ALTER TABLE `StudentsTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `userID` int(6) NOT NULL AUTO_INCREMENT,
  `userName` varchar(25) NOT NULL,
  `passwrd` varchar(25) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (12,'MBrians','1234'),(13,'AleciaG','2345'),(14,'TFord','3456'),(15,'MGrahams','4567'),(16,'BFrankln','5678'),(1,'CDavis3','1234'),(2,'TStark0','jarvis');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `Alumni`
--

/*!50001 DROP TABLE IF EXISTS `Alumni`*/;
/*!50001 DROP VIEW IF EXISTS `Alumni`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`srodriguez4`@`%.iona.edu` SQL SECURITY DEFINER */
/*!50001 VIEW `Alumni` AS select `database321_project`.`Student`.`stuID` AS `stuID`,`database321_project`.`Student`.`lName` AS `lName`,`database321_project`.`Student`.`fName` AS `fName`,`database321_project`.`Student`.`address` AS `address`,`database321_project`.`Student`.`email` AS `email`,`database321_project`.`Student`.`contactNum` AS `contactNum`,`database321_project`.`Student`.`major` AS `major`,`database321_project`.`Student`.`gpa` AS `gpa`,`database321_project`.`Student`.`academicYear` AS `academicYear`,`database321_project`.`Student`.`cohort` AS `cohort`,`database321_project`.`Student`.`degreeCompleted` AS `degreeCompleted`,`database321_project`.`Student`.`totalCredits` AS `totalCredits`,`database321_project`.`Student`.`userName` AS `userName` from `Student` where (`database321_project`.`Student`.`academicYear` = 'Alumni') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Computer_Science`
--

/*!50001 DROP TABLE IF EXISTS `Computer_Science`*/;
/*!50001 DROP VIEW IF EXISTS `Computer_Science`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`srodriguez4`@`%.iona.edu` SQL SECURITY DEFINER */
/*!50001 VIEW `Computer_Science` AS select `database321_project`.`Student`.`stuID` AS `stuID`,`database321_project`.`Student`.`lName` AS `lName`,`database321_project`.`Student`.`fName` AS `fName`,`database321_project`.`Student`.`address` AS `address`,`database321_project`.`Student`.`email` AS `email`,`database321_project`.`Student`.`contactNum` AS `contactNum`,`database321_project`.`Student`.`major` AS `major`,`database321_project`.`Student`.`gpa` AS `gpa`,`database321_project`.`Student`.`academicYear` AS `academicYear`,`database321_project`.`Student`.`cohort` AS `cohort`,`database321_project`.`Student`.`degreeCompleted` AS `degreeCompleted`,`database321_project`.`Student`.`totalCredits` AS `totalCredits`,`database321_project`.`Student`.`userName` AS `userName` from `Student` where (`database321_project`.`Student`.`major` = 'Computer Science') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Freshman_Students`
--

/*!50001 DROP TABLE IF EXISTS `Freshman_Students`*/;
/*!50001 DROP VIEW IF EXISTS `Freshman_Students`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`srodriguez4`@`%.iona.edu` SQL SECURITY DEFINER */
/*!50001 VIEW `Freshman_Students` AS select `database321_project`.`Student`.`stuID` AS `stuID`,`database321_project`.`Student`.`lName` AS `lName`,`database321_project`.`Student`.`fName` AS `fName`,`database321_project`.`Student`.`address` AS `address`,`database321_project`.`Student`.`email` AS `email`,`database321_project`.`Student`.`contactNum` AS `contactNum`,`database321_project`.`Student`.`major` AS `major`,`database321_project`.`Student`.`gpa` AS `gpa`,`database321_project`.`Student`.`academicYear` AS `academicYear`,`database321_project`.`Student`.`cohort` AS `cohort`,`database321_project`.`Student`.`degreeCompleted` AS `degreeCompleted`,`database321_project`.`Student`.`totalCredits` AS `totalCredits`,`database321_project`.`Student`.`userName` AS `userName` from `Student` where (`database321_project`.`Student`.`academicYear` = 'Freshman') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Graduate_Students`
--

/*!50001 DROP TABLE IF EXISTS `Graduate_Students`*/;
/*!50001 DROP VIEW IF EXISTS `Graduate_Students`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`srodriguez4`@`%.iona.edu` SQL SECURITY DEFINER */
/*!50001 VIEW `Graduate_Students` AS select `database321_project`.`Student`.`stuID` AS `stuID`,`database321_project`.`Student`.`lName` AS `lName`,`database321_project`.`Student`.`fName` AS `fName`,`database321_project`.`Student`.`address` AS `address`,`database321_project`.`Student`.`email` AS `email`,`database321_project`.`Student`.`contactNum` AS `contactNum`,`database321_project`.`Student`.`major` AS `major`,`database321_project`.`Student`.`gpa` AS `gpa`,`database321_project`.`Student`.`academicYear` AS `academicYear`,`database321_project`.`Student`.`cohort` AS `cohort`,`database321_project`.`Student`.`degreeCompleted` AS `degreeCompleted`,`database321_project`.`Student`.`totalCredits` AS `totalCredits`,`database321_project`.`Student`.`userName` AS `userName` from `Student` where (`database321_project`.`Student`.`academicYear` = 'Graduate') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Junior_Students`
--

/*!50001 DROP TABLE IF EXISTS `Junior_Students`*/;
/*!50001 DROP VIEW IF EXISTS `Junior_Students`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`srodriguez4`@`%.iona.edu` SQL SECURITY DEFINER */
/*!50001 VIEW `Junior_Students` AS select `database321_project`.`Student`.`stuID` AS `stuID`,`database321_project`.`Student`.`lName` AS `lName`,`database321_project`.`Student`.`fName` AS `fName`,`database321_project`.`Student`.`address` AS `address`,`database321_project`.`Student`.`email` AS `email`,`database321_project`.`Student`.`contactNum` AS `contactNum`,`database321_project`.`Student`.`major` AS `major`,`database321_project`.`Student`.`gpa` AS `gpa`,`database321_project`.`Student`.`academicYear` AS `academicYear`,`database321_project`.`Student`.`cohort` AS `cohort`,`database321_project`.`Student`.`degreeCompleted` AS `degreeCompleted`,`database321_project`.`Student`.`totalCredits` AS `totalCredits`,`database321_project`.`Student`.`userName` AS `userName` from `Student` where (`database321_project`.`Student`.`academicYear` = 'Junior') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Senior_Students`
--

/*!50001 DROP TABLE IF EXISTS `Senior_Students`*/;
/*!50001 DROP VIEW IF EXISTS `Senior_Students`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`srodriguez4`@`%.iona.edu` SQL SECURITY DEFINER */
/*!50001 VIEW `Senior_Students` AS select `database321_project`.`Student`.`stuID` AS `stuID`,`database321_project`.`Student`.`lName` AS `lName`,`database321_project`.`Student`.`fName` AS `fName`,`database321_project`.`Student`.`address` AS `address`,`database321_project`.`Student`.`email` AS `email`,`database321_project`.`Student`.`contactNum` AS `contactNum`,`database321_project`.`Student`.`major` AS `major`,`database321_project`.`Student`.`gpa` AS `gpa`,`database321_project`.`Student`.`academicYear` AS `academicYear`,`database321_project`.`Student`.`cohort` AS `cohort`,`database321_project`.`Student`.`degreeCompleted` AS `degreeCompleted`,`database321_project`.`Student`.`totalCredits` AS `totalCredits`,`database321_project`.`Student`.`userName` AS `userName` from `Student` where (`database321_project`.`Student`.`academicYear` = 'Senior') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Six_Figure_Jobs`
--

/*!50001 DROP TABLE IF EXISTS `Six_Figure_Jobs`*/;
/*!50001 DROP VIEW IF EXISTS `Six_Figure_Jobs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`srodriguez4`@`%.iona.edu` SQL SECURITY DEFINER */
/*!50001 VIEW `Six_Figure_Jobs` AS select `database321_project`.`Job`.`jobID` AS `jobID`,`database321_project`.`Job`.`compID` AS `compID`,`database321_project`.`Job`.`jobType` AS `jobType`,`database321_project`.`Job`.`positionTitle` AS `positionTitle`,`database321_project`.`Job`.`jobDescription` AS `jobDescription`,`database321_project`.`Job`.`relatedMajor` AS `relatedMajor`,`database321_project`.`Job`.`minGPA` AS `minGPA`,`database321_project`.`Job`.`desiredAcademicYear` AS `desiredAcademicYear`,`database321_project`.`Job`.`requirements` AS `requirements`,`database321_project`.`Job`.`division` AS `division`,`database321_project`.`Job`.`postDate` AS `postDate`,`database321_project`.`Job`.`expirationDate` AS `expirationDate`,`database321_project`.`Job`.`skills` AS `skills`,`database321_project`.`Job`.`minSalary` AS `minSalary` from `Job` where (`database321_project`.`Job`.`minSalary` > 999999) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Sophomore_Students`
--

/*!50001 DROP TABLE IF EXISTS `Sophomore_Students`*/;
/*!50001 DROP VIEW IF EXISTS `Sophomore_Students`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`srodriguez4`@`%.iona.edu` SQL SECURITY DEFINER */
/*!50001 VIEW `Sophomore_Students` AS select `database321_project`.`Student`.`stuID` AS `stuID`,`database321_project`.`Student`.`lName` AS `lName`,`database321_project`.`Student`.`fName` AS `fName`,`database321_project`.`Student`.`address` AS `address`,`database321_project`.`Student`.`email` AS `email`,`database321_project`.`Student`.`contactNum` AS `contactNum`,`database321_project`.`Student`.`major` AS `major`,`database321_project`.`Student`.`gpa` AS `gpa`,`database321_project`.`Student`.`academicYear` AS `academicYear`,`database321_project`.`Student`.`cohort` AS `cohort`,`database321_project`.`Student`.`degreeCompleted` AS `degreeCompleted`,`database321_project`.`Student`.`totalCredits` AS `totalCredits`,`database321_project`.`Student`.`userName` AS `userName` from `Student` where (`database321_project`.`Student`.`academicYear` = 'Sophomore') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-04 18:25:46
