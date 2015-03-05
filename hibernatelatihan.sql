/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.20 : Database - hibernatelatihan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hibernatelatihan` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hibernatelatihan`;

/*Table structure for table `ngasal` */

DROP TABLE IF EXISTS `ngasal`;

CREATE TABLE `ngasal` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ngasal` */

/*Table structure for table `t_customer` */

DROP TABLE IF EXISTS `t_customer`;

CREATE TABLE `t_customer` (
  `ID` varchar(255) NOT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kodePos` int(11) NOT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `NAMA_BELAKANG` varchar(100) DEFAULT NULL,
  `NAMA_DEPAN` varchar(100) NOT NULL,
  `PHONE` varchar(15) NOT NULL,
  `PERSON_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_dg1geknj5j87g3a0tq2txwid0` (`PERSON_ID`),
  CONSTRAINT `FK_dg1geknj5j87g3a0tq2txwid0` FOREIGN KEY (`PERSON_ID`) REFERENCES `t_person` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_customer` */

/*Table structure for table `t_person` */

DROP TABLE IF EXISTS `t_person`;

CREATE TABLE `t_person` (
  `ID` varchar(255) NOT NULL,
  `GAMBAR` longblob,
  `KRITIK_SARAN` longtext,
  `NAMA` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(200) DEFAULT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  `TANGGAL_JOINT` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_8ftvq66wws26drh443pky7sjj` (`NAMA`,`PASSWORD`),
  UNIQUE KEY `UK_r47daljoihkci2ieafl2h9lfw` (`NAMA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_person` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
