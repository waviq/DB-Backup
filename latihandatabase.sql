/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.20 : Database - latihandatabase
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`latihandatabase` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `latihandatabase`;

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `kode` varchar(10) NOT NULL,
  `namaBarang` varchar(20) DEFAULT NULL,
  `kategoriBarang` varchar(20) DEFAULT NULL,
  `harga` int(20) DEFAULT NULL,
  `stok` int(20) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `barang` */

insert  into `barang`(`kode`,`namaBarang`,`kategoriBarang`,`harga`,`stok`) values ('001','Buku','Alat Tulis',1500,7),('002','Hape','Elektronik',50000,4),('005','Balon Meletus','Mainan',2500,4),('006','Kamera SLR','Elektronik',500000,11),('008','Balon Meletus','Mainan',2500,9);

/*Table structure for table `kontak` */

DROP TABLE IF EXISTS `kontak`;

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(25) DEFAULT NULL,
  `tanggalLahir` date DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `telfon` varchar(15) DEFAULT NULL,
  `alamat` varchar(350) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `kontak` */

insert  into `kontak`(`id`,`nama`,`tanggalLahir`,`email`,`telfon`,`alamat`) values (1,'waviq','2014-12-07','waviq.subkhi@gmail.com','085642868886','Tegal'),(2,'sesya','2014-12-07','waviq.subkhi@gmail.com','085642868886','Tegal'),(3,'samsul','2014-12-07','waviq.subkhi@gmail.com','085642868886','Tegal'),(4,'waviq S','2014-12-03','waviq.subkhi@gmail.com','085642868886','tegal'),(5,'Umi salamah','2014-12-06','umisalamah.ayu@gmail.com','085642783000','gumayun');

/*Table structure for table `mahasiswa` */

DROP TABLE IF EXISTS `mahasiswa`;

CREATE TABLE `mahasiswa` (
  `id` varchar(10) NOT NULL,
  `nama` varchar(15) DEFAULT NULL,
  `Alamat` varchar(30) DEFAULT NULL,
  `noTelp` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mahasiswa` */

/*Table structure for table `penjualan` */

DROP TABLE IF EXISTS `penjualan`;

CREATE TABLE `penjualan` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `kode` varchar(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `penjualan` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
