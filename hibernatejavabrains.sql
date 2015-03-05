/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.20 : Database - hibernatejavabrains
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hibernatejavabrains` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hibernatejavabrains`;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`nama`) values ('402881824a35cc71014a35cc75fc0000','Runi');

/*Table structure for table `user_details` */

DROP TABLE IF EXISTS `user_details`;

CREATE TABLE `user_details` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `Home_City_Name` varchar(255) DEFAULT NULL,
  `Home_Pin_Code` varchar(255) DEFAULT NULL,
  `Home_State_Name` varchar(255) DEFAULT NULL,
  `Home_Street_Name` varchar(255) DEFAULT NULL,
  `joinedDate` date DEFAULT NULL,
  `Office_City_Name` varchar(255) DEFAULT NULL,
  `Office_Pin_Code` varchar(255) DEFAULT NULL,
  `Office_State_Name` varchar(255) DEFAULT NULL,
  `Office_Street_Name` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_details` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
