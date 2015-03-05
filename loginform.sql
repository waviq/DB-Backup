/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.20 : Database - loginform
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`loginform` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `loginform`;

/*Table structure for table `table_user` */

DROP TABLE IF EXISTS `table_user`;

CREATE TABLE `table_user` (
  `column_username` varchar(45) NOT NULL,
  `colum_password` varchar(45) NOT NULL,
  PRIMARY KEY (`column_username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `table_user` */

insert  into `table_user`(`column_username`,`colum_password`) values ('waviq','12345'),('waviqsub','12345');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
