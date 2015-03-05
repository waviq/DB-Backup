/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.20 : Database - hibernate
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hibernate` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hibernate`;

/*Table structure for table `alamatmahasiswa` */

DROP TABLE IF EXISTS `alamatmahasiswa`;

CREATE TABLE `alamatmahasiswa` (
  `idAlamatMahasiswa` int(11) NOT NULL AUTO_INCREMENT,
  `alamatDetail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idAlamatMahasiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `alamatmahasiswa` */

insert  into `alamatmahasiswa`(`idAlamatMahasiswa`,`alamatDetail`) values (1,'Tegal, Jawa Tengah'),(2,'Tegal, Jawa Tengah'),(3,'Tegal, Jawa Tengah');

/*Table structure for table `alamatmahasiswa_mahasiswa` */

DROP TABLE IF EXISTS `alamatmahasiswa_mahasiswa`;

CREATE TABLE `alamatmahasiswa_mahasiswa` (
  `AlamatMahasiswa_idAlamatMahasiswa` int(11) NOT NULL,
  `mahasiswa_idMahasiswa` int(11) NOT NULL,
  PRIMARY KEY (`AlamatMahasiswa_idAlamatMahasiswa`,`mahasiswa_idMahasiswa`),
  UNIQUE KEY `UK_p60h4gt0hr5rtd68pwm56n8mc` (`mahasiswa_idMahasiswa`),
  CONSTRAINT `FK_92r6ke1a7jnvae3jpwmf58ilg` FOREIGN KEY (`AlamatMahasiswa_idAlamatMahasiswa`) REFERENCES `alamatmahasiswa` (`idAlamatMahasiswa`),
  CONSTRAINT `FK_p60h4gt0hr5rtd68pwm56n8mc` FOREIGN KEY (`mahasiswa_idMahasiswa`) REFERENCES `mahasiswa` (`idMahasiswa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `alamatmahasiswa_mahasiswa` */

insert  into `alamatmahasiswa_mahasiswa`(`AlamatMahasiswa_idAlamatMahasiswa`,`mahasiswa_idMahasiswa`) values (1,1),(1,2);

/*Table structure for table `karyawan` */

DROP TABLE IF EXISTS `karyawan`;

CREATE TABLE `karyawan` (
  `idKaryawan` int(11) NOT NULL AUTO_INCREMENT,
  `alamat` varchar(255) DEFAULT NULL,
  `namaKaryawan` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`idKaryawan`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `karyawan` */

insert  into `karyawan`(`idKaryawan`,`alamat`,`namaKaryawan`,`tanggal`) values (2,'Semarang, Jawa Tengah','Sesya zafarani Ikhsan','2014-12-10'),(3,'Tegal, Jawa Tengah','Runi','2014-12-10'),(5,'Tegal, Jawa Tengah','Sesya zafarani Ikhsan','2014-12-10'),(6,'Tegal, Jawa Tengah','Waviq Subhi','2014-12-10'),(8,'Tegal, Jawa Tengah','Umi Salamah','2014-12-10');

/*Table structure for table `mahasiswa` */

DROP TABLE IF EXISTS `mahasiswa`;

CREATE TABLE `mahasiswa` (
  `idMahasiswa` int(11) NOT NULL AUTO_INCREMENT,
  `namaMahasiswa` varchar(255) DEFAULT NULL,
  `alamatMahasiswa_idAlamatMahasiswa` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMahasiswa`),
  KEY `FK_27j0k8w6xccbd8skcg7lrh1k1` (`alamatMahasiswa_idAlamatMahasiswa`),
  CONSTRAINT `FK_27j0k8w6xccbd8skcg7lrh1k1` FOREIGN KEY (`alamatMahasiswa_idAlamatMahasiswa`) REFERENCES `alamatmahasiswa` (`idAlamatMahasiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `mahasiswa` */

insert  into `mahasiswa`(`idMahasiswa`,`namaMahasiswa`,`alamatMahasiswa_idAlamatMahasiswa`) values (1,'Bintang',1),(2,'Waviq Subhi',1),(3,'Bintang',2),(4,'Waviq Subhi',2),(5,'Waviq Subhi',3),(6,'Bintang Ramadhani',3);

/*Table structure for table `mahasiswadua` */

DROP TABLE IF EXISTS `mahasiswadua`;

CREATE TABLE `mahasiswadua` (
  `idMahasiswaDua` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idMahasiswaDua`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `mahasiswadua` */

insert  into `mahasiswadua`(`idMahasiswaDua`,`nama`) values (1,'Waviq Subhi'),(2,'Sesya Zafarani'),(3,'Waviq Subhi'),(4,'Sesya Zafarani');

/*Table structure for table `mahasiswadua_sertivikatmahasiswa` */

DROP TABLE IF EXISTS `mahasiswadua_sertivikatmahasiswa`;

CREATE TABLE `mahasiswadua_sertivikatmahasiswa` (
  `MahasiswaDua_idMahasiswaDua` int(11) NOT NULL,
  `sertivikatMahasiswa_idSertivikat` int(11) NOT NULL,
  PRIMARY KEY (`MahasiswaDua_idMahasiswaDua`,`sertivikatMahasiswa_idSertivikat`),
  KEY `FK_1214fxfikhjcg4i63sxhegukf` (`sertivikatMahasiswa_idSertivikat`),
  CONSTRAINT `FK_1214fxfikhjcg4i63sxhegukf` FOREIGN KEY (`sertivikatMahasiswa_idSertivikat`) REFERENCES `sertivikatmahasiswa` (`idSertivikat`),
  CONSTRAINT `FK_49hrhxnuoco8hd37oyefc5iag` FOREIGN KEY (`MahasiswaDua_idMahasiswaDua`) REFERENCES `mahasiswadua` (`idMahasiswaDua`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mahasiswadua_sertivikatmahasiswa` */

/*Table structure for table `mahasiswadua_sertivikatmahasswa` */

DROP TABLE IF EXISTS `mahasiswadua_sertivikatmahasswa`;

CREATE TABLE `mahasiswadua_sertivikatmahasswa` (
  `MahasiswaDua_idMahasiswaDua` int(11) NOT NULL,
  `sertivikatMahasiswa_idSertivikat` int(11) NOT NULL,
  PRIMARY KEY (`MahasiswaDua_idMahasiswaDua`,`sertivikatMahasiswa_idSertivikat`),
  KEY `FK_lcc1qibb4a2mywqhr4ovk8qn9` (`sertivikatMahasiswa_idSertivikat`),
  CONSTRAINT `FK_lcc1qibb4a2mywqhr4ovk8qn9` FOREIGN KEY (`sertivikatMahasiswa_idSertivikat`) REFERENCES `sertivikatmahasswa` (`idSertivikat`),
  CONSTRAINT `FK_na7sp4cascis19d7xiwhn734e` FOREIGN KEY (`MahasiswaDua_idMahasiswaDua`) REFERENCES `mahasiswadua` (`idMahasiswaDua`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mahasiswadua_sertivikatmahasswa` */

insert  into `mahasiswadua_sertivikatmahasswa`(`MahasiswaDua_idMahasiswaDua`,`sertivikatMahasiswa_idSertivikat`) values (1,1),(2,2);

/*Table structure for table `sertivikatmahasiswa` */

DROP TABLE IF EXISTS `sertivikatmahasiswa`;

CREATE TABLE `sertivikatmahasiswa` (
  `idSertivikat` int(11) NOT NULL AUTO_INCREMENT,
  `namaSertivikat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idSertivikat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sertivikatmahasiswa` */

/*Table structure for table `sertivikatmahasswa` */

DROP TABLE IF EXISTS `sertivikatmahasswa`;

CREATE TABLE `sertivikatmahasswa` (
  `idSertivikat` int(11) NOT NULL AUTO_INCREMENT,
  `namaSertivikat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idSertivikat`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `sertivikatmahasswa` */

insert  into `sertivikatmahasswa`(`idSertivikat`,`namaSertivikat`) values (1,'JAVA Sertivikat'),(2,'Oracle Sertivikat');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

/*Table structure for table `student_detail` */

DROP TABLE IF EXISTS `student_detail`;

CREATE TABLE `student_detail` (
  `student_id` int(11) NOT NULL,
  `student_mobile_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student_detail` */

/*Table structure for table `student_information` */

DROP TABLE IF EXISTS `student_information`;

CREATE TABLE `student_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nama_Lengkap` varchar(255) NOT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student_information` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
