-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.20-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema tomcat_realm
--

CREATE DATABASE IF NOT EXISTS tomcat_realm;
USE tomcat_realm;

--
-- Definition of table `tomcat_roles`
--

DROP TABLE IF EXISTS `tomcat_roles`;
CREATE TABLE `tomcat_roles` (
  `role_name` varchar(20) NOT NULL,
  PRIMARY KEY (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tomcat_roles`
--

/*!40000 ALTER TABLE `tomcat_roles` DISABLE KEYS */;
INSERT INTO `tomcat_roles` (`role_name`) VALUES 
 ('dude'),
 ('manager'),
 ('manager-gui'),
 ('manager-jmx'),
 ('manager-script'),
 ('manager-status');
/*!40000 ALTER TABLE `tomcat_roles` ENABLE KEYS */;


--
-- Definition of table `tomcat_users`
--

DROP TABLE IF EXISTS `tomcat_users`;
CREATE TABLE `tomcat_users` (
  `user_name` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tomcat_users`
--

/*!40000 ALTER TABLE `tomcat_users` DISABLE KEYS */;
INSERT INTO `tomcat_users` (`user_name`,`password`) VALUES 
 ('eswari','bala'),
 ('vignesh','bala');
/*!40000 ALTER TABLE `tomcat_users` ENABLE KEYS */;


--
-- Definition of table `tomcat_users_roles`
--

DROP TABLE IF EXISTS `tomcat_users_roles`;
CREATE TABLE `tomcat_users_roles` (
  `user_name` varchar(20) NOT NULL,
  `role_name` varchar(20) NOT NULL,
  PRIMARY KEY (`user_name`,`role_name`),
  KEY `tomcat_users_roles_foreign_key_2` (`role_name`),
  CONSTRAINT `tomcat_users_roles_foreign_key_1` FOREIGN KEY (`user_name`) REFERENCES `tomcat_users` (`user_name`),
  CONSTRAINT `tomcat_users_roles_foreign_key_2` FOREIGN KEY (`role_name`) REFERENCES `tomcat_roles` (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tomcat_users_roles`
--

/*!40000 ALTER TABLE `tomcat_users_roles` DISABLE KEYS */;
INSERT INTO `tomcat_users_roles` (`user_name`,`role_name`) VALUES 
 ('eswari','dude'),
 ('vignesh','dude'),
 ('eswari','manager'),
 ('eswari','manager-gui'),
 ('eswari','manager-jmx'),
 ('eswari','manager-script'),
 ('eswari','manager-status');
/*!40000 ALTER TABLE `tomcat_users_roles` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
