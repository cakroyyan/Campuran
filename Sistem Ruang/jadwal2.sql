/*
SQLyog Community v12.2.6 (64 bit)
MySQL - 5.6.25 : Database - jadwal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jadwal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jadwal`;

/*Table structure for table `pegawai` */

DROP TABLE IF EXISTS `pegawai`;

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,
  `nip` int(11) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `pegawai` */

insert  into `pegawai`(`id_pegawai`,`nip`,`password`) values 
(2,1995,'8705abafe34ec59b72d298de04e899ca'),
(3,123,'f87f8f834b237ad853fb44cccaa18952'),
(4,9001,'c3daba8ba04565423e12eb8cb6237b46');

/*Table structure for table `peminjaman` */

DROP TABLE IF EXISTS `peminjaman`;

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ruang` int(11) DEFAULT NULL,
  `nama_acara` varchar(1000) DEFAULT NULL,
  `nama_peminjam` varchar(200) DEFAULT NULL,
  `tgl_awal` datetime DEFAULT NULL,
  `tgl_akhir` datetime DEFAULT NULL,
  `tgl_pesan` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `peminjaman` */

insert  into `peminjaman`(`id`,`id_ruang`,`nama_acara`,`nama_peminjam`,`tgl_awal`,`tgl_akhir`,`tgl_pesan`) values 
(2,1,'sapi6','sapi7','2016-10-28 08:55:00','2016-10-13 08:52:00','2016-10-28 08:55:32'),
(3,11,'rapar rektor dengan jajarannya','pak teguh','2016-10-04 19:30:00','2016-10-11 15:14:00','2016-10-28 09:20:25'),
(4,9,'Rapat Remun','M.Abdul Aziz','2016-10-04 08:49:00','2016-10-04 13:49:00','2016-10-31 07:40:50'),
(5,1,'sapiderman','sapii','2016-10-28 08:49:00','2016-10-31 02:52:00','2016-10-30 18:23:00'),
(6,1,'JAJAL MAS smean sempak','AIZ','2016-10-28 08:49:00','2016-10-30 00:23:00','2016-10-30 20:07:00');

/*Table structure for table `ruang` */

DROP TABLE IF EXISTS `ruang`;

CREATE TABLE `ruang` (
  `id_ruang` int(11) NOT NULL AUTO_INCREMENT,
  `nama_ruang` varchar(200) DEFAULT NULL,
  `tempat` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `status` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_ruang`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `ruang` */

insert  into `ruang`(`id_ruang`,`nama_ruang`,`tempat`,`jumlah`,`status`) values 
(1,'SAC','SAC lt3',100,1),
(2,'Auditorium','Auditorium',1000,1),
(3,'Sport Center','Samping Twin Tower',2000,1),
(4,'Meeting Room ','Twin Tower Lt 9',0,1),
(5,'Teater Room ','Twin Tower Lt2-3',0,1),
(6,'Ruang Sidang Rektorat Lama','Rektorat Lama Lt2',50,1),
(7,'Ruang Rapat Rektor dan Wakil Rektor','',0,3),
(8,'Ruang Rapat Biro Akademik','',0,3),
(9,'Ruang Rapat Biro Keuangan','',0,3),
(10,'Ruang Rapat Biro SPI','',0,3),
(11,'Ruang Rapat Guru Besar','',0,3),
(12,'Mobil','',0,4);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
