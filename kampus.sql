/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.20 : Database - kampus
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kampus` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kampus`;

/*Table structure for table `detail_menu` */

DROP TABLE IF EXISTS `detail_menu`;

CREATE TABLE `detail_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `detail_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FkMenu_idx` (`menu_id`),
  KEY `FkDetailUser_idx` (`detail_user`),
  CONSTRAINT `FkDetailUser` FOREIGN KEY (`detail_user`) REFERENCES `detail_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FkMenu` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `detail_menu` */

/*Table structure for table `detail_user` */

DROP TABLE IF EXISTS `detail_user`;

CREATE TABLE `detail_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `negara` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `detail_user` */

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `jumlah_order` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `url` varchar(45) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `negara` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_user` int(11) NOT NULL,
  `user` varchar(45) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `negara` varchar(45) NOT NULL,
  `tanggalLahir` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `detail_user_idx` (`detail_user`),
  CONSTRAINT `detail_user` FOREIGN KEY (`detail_user`) REFERENCES `detail_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
