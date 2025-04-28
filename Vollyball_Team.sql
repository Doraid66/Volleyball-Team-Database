-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--


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
-- Table structure for table `Location`
--

DROP TABLE IF EXISTS `Location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `type` enum('Head','Branch') COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `province` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `web_address` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `max_capacity` int DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  CONSTRAINT `Location_chk_1` CHECK ((`type` IN ('Head', 'Branch')))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Location`
--

LOCK TABLES `Location` WRITE;
/*!40000 ALTER TABLE `Location` DISABLE KEYS */;
INSERT INTO `Location` VALUES (1,'Branch','Tigers','456 rue','montreal','QC','h7h3h3','5146786787','tigers.ca',200),(2,'Head','Lions','123 rue','montreal','QC','h7h1h1','5141231234','lions.ca',500),(3,'Branch','Aligators','787 st','toronto','ON','h1h8h8','5146786788','Aligators.ca',250),(4,'Branch','Parrots','1512 rue','montreal','QC','h7h2h2','5148292822','Parrots.ca',230),(5,'Branch','Mooses','151 rue','montreal','QC','g2g4t3','5149892645','Mooses.ca',200),(6,'Branch','Elks','15 rue','montreal','QC','d2d2d2','5143892498','Elks.ca',400),(7,'Branch','Wombats','1 rue','toronto','QC','p3p3l3','5141749807','Wombats.ca',250),(8,'Branch','Turtles','9861 rue','toronto','QC','h7h9p9','5149839232','Turtles.ca',300),(9,'Branch','Sharks','98 rue','toronto','QC','1k15j5','5149886754','Sharks.ca',260),(10,'Branch','Whales','91 rue','montreal','QC','h9h1d1','5141117878','Whales.ca',240);
/*!40000 ALTER TABLE `Location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_member`
--

DROP TABLE IF EXISTS `club_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club_member` (
  `club_member_number` int NOT NULL AUTO_INCREMENT,
  `location_id` int NOT NULL,
  `fname` char(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `lname` char(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `bdate` date NOT NULL,
  `height` decimal(5,2) DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `social_id` int NOT NULL,
  `medicare` int DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `city` char(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `province` char(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `postal_code` varchar(10) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `my_family_member` int NOT NULL,
  `active` tinyint(1) DEFAULT '0',
  `relationship` enum('Father','Mother','Grandfather','Grandmother','Tutor','Partner','Friend','Other') COLLATE utf8mb3_unicode_ci NOT NULL,
  `gender` enum('M','F') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`club_member_number`),
  UNIQUE KEY `social_id` (`social_id`),
  UNIQUE KEY `medicare` (`medicare`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_member`
--

LOCK TABLES `club_member` WRITE;
/*!40000 ALTER TABLE `club_member` DISABLE KEYS */;
INSERT INTO `club_member` VALUES (1,2,'Steve','Doe','2010-05-15',1.65,55.50,2001,12345,'123-456-7890','123 Maple St','Toronto','Ontario','M4B1B3',1,1,'Father','M','steve.doe@gmail.com'),(2,10,'Alice','Doe','2009-03-10',1.72,60.00,2002,67890,'987-654-3210','123 Maple St','Toronto','Ontario','M4B1B3',1,1,'Father','F','alice.doe@gmail.com'),(3,1,'Bill','Doe','2010-05-15',1.55,55.50,2003,32495,'438-456-7890','123 Maple St','Toronto','Ontario','M4B1B3',1001,1,'Father','M','bill.doe@gmail.com'),(6,2,'Lily','Johnson','2011-05-15',1.70,62.20,2004,29423,'222-456-2222','789 Pine Crescent','Vancouver','British-Columbia','V5N3K4',1007,1,'Mother','F','lily.johnson@gmail.com'),(7,2,'Jill','Johnson','2011-05-16',1.72,62.20,2005,54967,'222-456-2223','789 Pine Crescent','Vancouver','British-Columbia','V5N3K4',1007,1,'Mother','M','jill.johnson@gmail.com'),(8,3,'Tayce','Taylor','2014-05-01',1.45,55.20,2006,11345,'111-456-2222','987 Elm Street','Calgary','Alberta','T2P3H4',1009,1,'Other','F','tayce.taylor@gmail.com'),(9,3,'Trent','Taylor','2013-05-01',1.50,65.20,2007,77348,'111-456-2223','987 Elm Street','Calgary','Alberta','T2P3H4',1010,1,'Other','M','trent.taylor@gmail.com'),(10,3,'Bob','Smith','2010-05-01',1.39,58.20,2008,39459,'514-456-3485','456 Oak Avenue','Montreal','Quebec','H1A2B3',1005,1,'Grandfather','M','bob.smith@gmail.com'),(11,2,'Rob','Smith','2010-05-01',1.49,59.20,2009,49532,'514-456-3485','456 Oak Avenue','Montreal','Quebec','H1A2B3',1005,1,'Grandfather','M','rob.smith@gmail.com'),(12,2,'Maggie','Smith','2011-05-01',1.42,47.20,2010,21312,'514-456-3485','456 Oak Avenue','Montreal','Quebec','H1A2B3',1006,1,'Grandmother','F','maggie.smith@gmail.com'),(13,2,'Luis','Smith','2006-04-01',1.39,58.20,2011,9332,'514-456-4385','456 Oak Avenue','Montreal','Quebec','H1A2B3',1005,0,'Grandfather','M','luis.smith@gmail.com'),(25,3,'Mangio','Mangolini','2013-04-04',1.20,60.00,4002,NULL,NULL,NULL,'yukon','Nunavut',NULL,2,0,'Father','M',NULL);
/*!40000 ALTER TABLE `club_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_member_location`
--

DROP TABLE IF EXISTS `club_member_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club_member_location` (
  `club_member_number` int NOT NULL,
  `location_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  KEY `club_member_number` (`club_member_number`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `club_member_location_ibfk_1` FOREIGN KEY (`club_member_number`) REFERENCES `club_member` (`club_member_number`),
  CONSTRAINT `club_member_location_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `Location` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_member_location`
--

LOCK TABLES `club_member_location` WRITE;
/*!40000 ALTER TABLE `club_member_location` DISABLE KEYS */;
INSERT INTO `club_member_location` VALUES (1,1,'2025-01-01','2025-04-01'),(2,1,'2025-01-01','2025-04-01'),(3,1,'2025-01-01',NULL),(6,2,'2025-01-01',NULL),(7,2,'2025-01-01','2025-04-01'),(8,3,'2025-02-01',NULL),(9,3,'2025-02-01',NULL),(10,2,'2021-01-01','2025-04-01'),(11,2,'2021-01-01',NULL),(12,2,'2021-01-01',NULL),(13,2,'2021-01-01',NULL),(1,3,'2025-04-01','2025-04-01'),(1,2,'2025-04-01',NULL),(2,10,'2025-04-01',NULL),(7,3,'2025-04-01','2025-04-01'),(7,2,'2025-04-01',NULL),(10,3,'2025-04-01',NULL),(25,3,'2025-04-04',NULL);
/*!40000 ALTER TABLE `club_member_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_location`
--

DROP TABLE IF EXISTS `family_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `family_location` (
  `family_id` int NOT NULL,
  `location_id` int NOT NULL,
  PRIMARY KEY (`family_id`,`location_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `family_location_ibfk_1` FOREIGN KEY (`family_id`) REFERENCES `family_member` (`family_id`) ON DELETE CASCADE,
  CONSTRAINT `family_location_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `Location` (`location_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_location`
--

LOCK TABLES `family_location` WRITE;
/*!40000 ALTER TABLE `family_location` DISABLE KEYS */;
INSERT INTO `family_location` VALUES (1,1),(4,1),(1,2),(5,2),(2,3),(3,4),(4,5);
/*!40000 ALTER TABLE `family_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_member`
--

DROP TABLE IF EXISTS `family_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `family_member` (
  `family_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `birth_date` date DEFAULT NULL,
  `SIN` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `medicare_card_num` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `telephone_number` varchar(15) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `province` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `postal_code` varchar(10) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`family_id`),
  UNIQUE KEY `SIN` (`SIN`),
  UNIQUE KEY `medicare_card_num` (`medicare_card_num`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_member`
--

LOCK TABLES `family_member` WRITE;
/*!40000 ALTER TABLE `family_member` DISABLE KEYS */;
INSERT INTO `family_member` VALUES (1,'John','Doe','1980-05-15','123456789','MC123456','514-123-4567','123 Main St','Montreal','Quebec','H3A 1B1','john.doe@example.com'),(2,'Sarah','Smith','1975-08-22','987654321','MC987654','438-987-6543','456 Elm St','Laval','Quebec','H7V 1A2','sarah.smith@example.com'),(3,'Michael','Brown','1990-12-10','456123789','MC456123','450-555-1234','789 Pine St','Quebec City','Quebec','G1V 4H2','michael.brown@example.com'),(4,'Emily','Johnson','1985-03-25','789456123','MC789456','514-321-7890','101 Maple Ave','Montreal','Quebec','H4B 2L5','emily.johnson@example.com'),(5,'David','Lee','1978-09-17','321654987','MC321654','514-444-5555','202 Oak Blvd','Longueuil','Quebec','J4K 1A8','david.lee@example.com');
/*!40000 ALTER TABLE `family_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formation`
--

DROP TABLE IF EXISTS `formation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formation` (
  `formation_id` int NOT NULL,
  `team1` int NOT NULL,
  `team2` int NOT NULL,
  `type` enum('training','game') COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` int NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `team1_score` int DEFAULT NULL,
  `team2_score` int DEFAULT NULL,
  PRIMARY KEY (`formation_id`),
  KEY `team1_idx` (`team1`),
  KEY `team2_idx` (`team2`),
  KEY `fk_formation_address` (`address`),
  CONSTRAINT `fk_formation_address` FOREIGN KEY (`address`) REFERENCES `Location` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `team1` FOREIGN KEY (`team1`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `team2` FOREIGN KEY (`team2`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formation`
--

LOCK TABLES `formation` WRITE;
/*!40000 ALTER TABLE `formation` DISABLE KEYS */;
INSERT INTO `formation` VALUES (1,1,2,'game',2,'2025-04-01','12:00:00',21,23),(2,2,4,'game',10,'2025-05-01','15:00:00',23,25),(3,1,4,'training',2,'2025-05-02','16:00:00',NULL,NULL),(4,4,2,'game',3,'2025-06-15','15:00:00',NULL,NULL),(5,2,1,'game',4,'2025-06-18','12:00:00',NULL,NULL),(6,4,1,'game',6,'2025-06-20','13:00:00',NULL,NULL),(7,1,4,'game',8,'2025-07-20','13:00:00',NULL,NULL),(8,4,2,'game',2,'2025-08-25','14:00:00',NULL,NULL);
/*!40000 ALTER TABLE `formation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formation_assignment`
--

DROP TABLE IF EXISTS `formation_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formation_assignment` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `formation_number` int NOT NULL,
  `team_id` int NOT NULL,
  `player_id` int NOT NULL,
  `role` enum('outside hitter','opposite','setter','middle blocker','libero','defensive specialist','serving specialist') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`assignment_id`),
  KEY `fk_assignment_formation_number` (`formation_number`),
  KEY `fk_assignment_team_id` (`team_id`),
  KEY `fk_assignment_player` (`player_id`),
  CONSTRAINT `fk_assignment_formation_number` FOREIGN KEY (`formation_number`) REFERENCES `formation` (`formation_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_assignment_player` FOREIGN KEY (`player_id`) REFERENCES `club_member` (`club_member_number`) ON DELETE CASCADE,
  CONSTRAINT `fk_assignment_team_id` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formation_assignment`
--

LOCK TABLES `formation_assignment` WRITE;
/*!40000 ALTER TABLE `formation_assignment` DISABLE KEYS */;
INSERT INTO `formation_assignment` VALUES (1,1,2,3,'libero'),(2,1,1,10,'outside hitter'),(3,2,4,3,'setter'),(4,3,1,7,'outside hitter'),(5,3,4,3,'middle blocker'),(6,4,2,3,'opposite'),(7,5,1,3,'outside hitter'),(8,6,4,3,'defensive specialist'),(9,7,1,3,'serving specialist');
/*!40000 ALTER TABLE `formation_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_log`
--

DROP TABLE IF EXISTS `notification_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_log` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `club_member_id` int NOT NULL,
  `subject` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb3_unicode_ci,
  `notification_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `club_member_id` (`club_member_id`),
  CONSTRAINT `notification_log_ibfk_1` FOREIGN KEY (`club_member_id`) REFERENCES `club_member` (`club_member_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_log`
--

LOCK TABLES `notification_log` WRITE;
/*!40000 ALTER TABLE `notification_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `club_member_id` int NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `date_of_payment` date NOT NULL,
  `method_of_payment` enum('cash','debit','credit card') COLLATE utf8mb3_unicode_ci NOT NULL,
  `date_of_membership_payment` int DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `club_member_id` (`club_member_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`club_member_id`) REFERENCES `club_member` (`club_member_number`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,50.00,'2025-04-01','credit card',2025),(2,1,50.00,'2025-04-01','credit card',2025),(3,2,100.00,'2025-03-01','debit',2025),(4,3,100.00,'2025-03-01','cash',2025),(5,6,25.00,'2025-03-01','cash',2025),(6,6,25.00,'2025-03-02','cash',2025),(7,6,25.00,'2025-03-02','cash',2025),(9,6,30.00,'2025-03-02','cash',2025),(10,7,100.00,'2025-01-02','credit card',2025),(11,8,100.00,'2025-01-02','credit card',2025),(12,9,100.00,'2025-02-02','credit card',2025),(13,10,110.00,'2025-02-02','debit',2025),(14,11,70.00,'2025-03-12','debit',2025),(15,11,30.00,'2025-03-13','debit',2025),(16,12,80.00,'2025-03-13','cash',2025),(17,12,10.00,'2025-03-13','cash',2025),(18,12,10.00,'2025-03-14','cash',2025),(19,12,10.00,'2025-03-14','cash',2025),(21,13,100.00,'2025-03-14','cash',2025);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnel` (
  `firstName` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `lastName` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `socialSecurityNumber` int NOT NULL,
  `medicareCardNumber` int DEFAULT NULL,
  `telephoneNumber` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `province` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `postalCode` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `emailAddress` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rolePersonnel` enum('administrator','captain','coach','assistant coach','manager','other','general manager','deputy manager','treasurer','secretary') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `mandateType` enum('volunteer','salaried') COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`socialSecurityNumber`),
  UNIQUE KEY `medicareCardNumber` (`medicareCardNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel`
--

LOCK TABLES `personnel` WRITE;
/*!40000 ALTER TABLE `personnel` DISABLE KEYS */;
INSERT INTO `personnel` VALUES ('John','Doe','1985-05-12',1001,111222333,'4161234567','123 Maple Street','Toronto','Ontario','M4B1B3','john.doe@example.com','administrator','salaried'),('Robert ','Smith','1950-11-22',1005,555666777,'5141231234','456 Oak Avenue','Montreal','Quebec','H1A2B3','robert.smith@email.com','general manager','salaried'),('Linda','Johnson','1975-03-29',1007,777888999,'6046543210','789 Pine Crescent','Vancouver','British Columbia','V5N3K4','linda.johnson@example.com','assistant coach','salaried'),('Hani','bou','1999-01-10',455676,876212,'5147474848','878 rue','Laval','Quebec','h2h1i4','hani@hotmail.com','coach','salaried'),('Fadi','khalil','2001-01-01',767623,998855,'5146726743','828 rue','Montral','Quebec','h8h8h8','fadi@hotmail.com','general manager','salaried'),('Michael ','Brown','1975-06-18',12345678,852963178,'5558901234','147 Elm St','Halifax ','Nova Scotia','B3J2X5','michael.brown@gmail.com','general manager','salaried'),('Benjamin','Franklin','1972-06-21',109228901,889683871,'5144326689','120 Ashmore St','Chateauguay','Quebec','C3C1Y9','benjamin.franklin@email.com','administrator','volunteer'),('Thomas','Bennett','1981-06-22',111209923,456123448,'5556543210','753 Oakwood St','Hamilton','Ontario','L8P4W1','thomas.bennett@gmail.com','general manager','salaried'),('David ','Clark','1987-09-25',123452232,369147009,'5559012345','258 Fir St','Saskatoon','Saskatchewan','S7K5M3','david.clark@email.com','administrator','volunteer'),('Pierre ','Dubois','1975-04-10',123457783,987654001,'418765321','15 Rue de la paix','Quebec','Quebec','G1A2B3','pierre.dubois@email.com','general manager','salaried'),('Olivia','Parker','1988-09-12',222335677,789032145,'5559876543','951 Redwood St','Victoria','British Columbia','V8W1G9','olivia.parker@example.com','assistant coach','salaried'),('Sophia','Lefebvre','1980-06-22',234561223,456238559,'5141234567','48 Avenue des Pins','Montreal','Quebec','H3A1X9','sophia.lefebvre@gmail.com','general manager','salaried'),('Jessica ','White','1992-04-14',234567330,159357226,'5550123456','369 Spruce St','Ottawa','Ontario','K1A0B1','jessica.white@email.com','general manager','salaried'),('Laurent ','Moreau','1988-03-17',345672211,654987001,'4502345678','75 Boulevard Saint-Michel','Laval','Quebec','H7N4R5','Laurent.moreau@email.com','general manager','salaried'),('Camille ','Roy','1992-12-05',452229750,789000124,'5813456789','92 Chemin du Lac','Gatineau ','Quebec','J8T5B6','camille.roy@example.com','general manager','salaried'),('John','Thompson','1980-05-12',456789012,135677441,'5552345678','144  Main St','Toronto','Ontario','M1A2B3','john.thomspon@example.com','coach','salaried'),('Benny','Blue','1970-05-08',556776556,667866787,'5154432222','190 Apple St','Montreal','Quebec','A1AP2P','benny.blue@gmail.com','treasurer','salaried'),('Etienne ','Gagnon','1985-08-29',567009123,321654992,'8194567890','27 Rue des Cedres','Sherbrooke','Quebec','J1H3W4','etienne.gagnon@example.com','administrator','volunteer'),('Sarah ','Mitchell','1985-07-22',567890123,654321001,'5553456789','456 Oak St','Vancouver','British Columbia','V5K1Z3','sara.mitchell@email.com','deputy manager','salaried'),('Claire Bouchard','Pepiton','1990-11-14',611111234,852368993,'4505679098','63 Rue Sainte-Catherine','Longueuil','Quebec','J4H1Z3','claire.bouchard@gmail.com','administrator','salaried'),('Robert','Carter','1978-03-15',678901234,789654112,'5554567890','789 Pine St','Montreal','Quebec','H2X3L4','robert.carter@email.com','treasurer','salaried'),('Bob','Lesveque','1986-09-05',778445783,246987512,'5147748561','829 rue saint','Montreal','Quebec','h2h4h4','bob@gmail.com','general manager','salaried'),('Emily','Rodriguez','1990-11-05',789012345,321789665,'5555678901','321 Birch St','Calgary','Alberta','T2P4M8','emily/.rodriguez@email.com','secretary','volunteer'),('James','Wilson','1982-08-30',890123456,987123445,'5556789012','567 Maple St','Edmonton','Alberta','T5J2N9','james.wilson@email.com','administrator','volunteer'),('Laura ','Adams','1995-12-10',901234567,741852344,'5557890123','890 Cedar St','Winnipeg','Manitoba','R3C1A2','laura.adams@gmail.com','administrator','salaried');
/*!40000 ALTER TABLE `personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secondary_family_member`
--

DROP TABLE IF EXISTS `secondary_family_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secondary_family_member` (
  `sec_member_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `telephone_number` varchar(15) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `relationship` enum('Father','Mother','Grandfather','Grandmother','Uncle','Aunt','Tutor','Partner','Friend','Other') COLLATE utf8mb3_unicode_ci NOT NULL,
  `family_id` int DEFAULT NULL,
  PRIMARY KEY (`sec_member_id`),
  KEY `family_id` (`family_id`),
  CONSTRAINT `secondary_family_member_ibfk_1` FOREIGN KEY (`family_id`) REFERENCES `family_member` (`family_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secondary_family_member`
--

LOCK TABLES `secondary_family_member` WRITE;
/*!40000 ALTER TABLE `secondary_family_member` DISABLE KEYS */;
INSERT INTO `secondary_family_member` VALUES (1,'Jane','Doe','514-222-3333','Aunt',1),(2,'Mark','Smith','438-555-6789','Uncle',2),(3,'Sophia','Brown','450-999-0000','Grandmother',3),(4,'Daniel','Johnson','514-888-9999','Partner',4),(5,'Laura','Lee','514-666-7777','Friend',5);
/*!40000 ALTER TABLE `secondary_family_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` enum('Boys','Girls') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `captain` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  PRIMARY KEY (`team_id`),
  KEY `fk_team_location` (`location_id`),
  KEY `fk_team_captain` (`captain`),
  CONSTRAINT `fk_team_captain` FOREIGN KEY (`captain`) REFERENCES `family_member` (`family_id`) ON DELETE SET NULL,
  CONSTRAINT `fk_team_location` FOREIGN KEY (`location_id`) REFERENCES `Location` (`location_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Tigers','Boys',1,1),(2,'Mooses','Boys',5,5),(3,'Parrots','Girls',4,4),(4,'Sharks','Boys',3,9);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `working_at`
--

DROP TABLE IF EXISTS `working_at`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `working_at` (
  `location_id` int NOT NULL,
  `socialSecurityNumber` int NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`location_id`,`socialSecurityNumber`,`startDate`),
  KEY `socialSecurityNumber_idx` (`socialSecurityNumber`),
  CONSTRAINT `location_id` FOREIGN KEY (`location_id`) REFERENCES `Location` (`location_id`),
  CONSTRAINT `socialSecurityNumber` FOREIGN KEY (`socialSecurityNumber`) REFERENCES `personnel` (`socialSecurityNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `working_at`
--

LOCK TABLES `working_at` WRITE;
/*!40000 ALTER TABLE `working_at` DISABLE KEYS */;
INSERT INTO `working_at` VALUES (1,1005,'2023-01-01',NULL),(2,767623,'2025-02-01',NULL),(2,109228901,'2021-12-12','2025-01-01'),(2,556776556,'2017-03-05','2020-03-05'),(2,567890123,'2023-06-10',NULL),(2,678901234,'2020-12-27',NULL),(2,789012345,'2021-11-11',NULL),(2,890123456,'2024-07-19',NULL),(2,901234567,'2023-09-09',NULL),(3,12345678,'2022-01-09',NULL),(3,456789012,'2022-12-06',NULL),(4,1007,'2023-09-11',NULL),(4,455676,'2024-01-05',NULL),(4,767623,'2024-12-14',NULL),(4,778445783,'2024-03-05',NULL),(5,111209923,'2025-02-15',NULL),(6,123457783,'2023-07-19',NULL),(7,234561223,'2025-02-09',NULL),(8,1001,'2022-06-28',NULL),(8,234567330,'2022-11-11',NULL),(8,611111234,'2023-06-04','2024-06-04'),(9,345672211,'2023-10-12',NULL),(10,452229750,'2024-12-14',NULL);
/*!40000 ALTER TABLE `working_at` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-04 20:10:18
