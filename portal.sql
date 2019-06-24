-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: portal
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB

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
-- Temporary table structure for view `allcount`
--

DROP TABLE IF EXISTS `allcount`;
/*!50001 DROP VIEW IF EXISTS `allcount`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `allcount` (
  `jumlah_guru` tinyint NOT NULL,
  `jumlah_post` tinyint NOT NULL,
  `jumlah_navbar` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `allnavitem`
--

DROP TABLE IF EXISTS `allnavitem`;
/*!50001 DROP VIEW IF EXISTS `allnavitem`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `allnavitem` (
  `id_item` tinyint NOT NULL,
  `id_sort` tinyint NOT NULL,
  `tipe` tinyint NOT NULL,
  `warna` tinyint NOT NULL,
  `label` tinyint NOT NULL,
  `link` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `allpost`
--

DROP TABLE IF EXISTS `allpost`;
/*!50001 DROP VIEW IF EXISTS `allpost`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `allpost` (
  `id_post` tinyint NOT NULL,
  `isi` tinyint NOT NULL,
  `nama` tinyint NOT NULL,
  `judul` tinyint NOT NULL,
  `tanggal` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `nama_kategori` tinyint NOT NULL,
  `id_kategori` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `guru`
--

DROP TABLE IF EXISTS `guru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` text NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  PRIMARY KEY (`id_guru`),
  KEY `jabatan_id` (`id_jabatan`),
  KEY `mapel_id` (`id_mapel`),
  CONSTRAINT `jabatan_id` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan_guru` (`id_jabatan`) ON UPDATE CASCADE,
  CONSTRAINT `mapel_id` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guru`
--

LOCK TABLES `guru` WRITE;
/*!40000 ALTER TABLE `guru` DISABLE KEYS */;
INSERT INTO `guru` VALUES (1,'Suparno',1,'Jl Jangkar',8),(2,'Sumirna',2,'Jl Pensil',2),(3,'Edi',4,'Jl Rol',3),(4,'Indah',4,'Jl Penghapus',9),(5,'Endra',4,'Jl Pulpen',6),(6,'Putri',5,'Jl Kelir ',5),(7,'Nur',5,'Jl Beo',7),(8,'Alya',3,'Jl Garuda',1);
/*!40000 ALTER TABLE `guru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identitas`
--

DROP TABLE IF EXISTS `identitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identitas` (
  `id_identitas` int(10) NOT NULL,
  `nama_sekolah` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `sejarah` text NOT NULL,
  `lhome` int(11) DEFAULT NULL,
  `lartikel` int(11) DEFAULT NULL,
  `penerimaan` int(11) DEFAULT NULL,
  `tahun_penerimaan` int(11) DEFAULT NULL,
  `maks` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_identitas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitas`
--

LOCK TABLES `identitas` WRITE;
/*!40000 ALTER TABLE `identitas` DISABLE KEYS */;
INSERT INTO `identitas` VALUES (1,'DEMO SCHOOL','<p>&nbsp;&nbsp;&ldquo;Berprestasi dilandasi Iman, Taqwa dan Berbudaya Lingkungan serta Berwawasan Global&rdquo;</p>\n','<p>1.&nbsp; &nbsp;Mewujudkan pendidikan untuk menghasilkan prestasi dan lulusa berkwalitas tinggi yang peduli dengan lingkungan hidup</p>\n\n<p>2. &nbsp; Mewujudkan sumber daya manusia yang beriman, produktif, kreatif, inofatif dan efektif</p>\n\n<p>3. &nbsp; Mewujudkan pengembangan inovasi pembelajaran sesuai tuntutan</p>\n\n<p>4. &nbsp; Mewujudkan sumber daya manusia yang peduli dalam mencegahan pencemaran, mencegahan kerusakan lingkungan dan melestarikan lingkungan hidup</p>\n\n<p>5. &nbsp; Mewujudkan sarana prasarana reprensentatif dan up to date</p>\n\n<p>6. &nbsp; Mewujudkan pengelolaan pendidikan yang professional</p>\n\n<p>7. &nbsp; Mewujudkan sistim penilaian yang berafiliasi</p>\n\n<p>8. &nbsp; Mewujudkan budaya yang berkualifikasi</p>\n\n<p>9. &nbsp; Mewujudkan Sekolah yang bersih,hijau dan meminimalis hasil sampah yang tidak bermanfaat</p>\n\n<p>10. Mewujudkan manusia Indonesia yang mampu berkontribusi pada kehidupan bermasyarakat, berbangsa, bernegara dalam peradaban dunia</p>\n\n<p>11. Mewujudkan generasi emas, sehat tanpa narkoba</p>\n','SEKOLAH INI DICIPTAKAN OLEH ALI HIDAYAT SETELAH DIUSIR DARI WAKANDA',1,2,1,2019,250);
/*!40000 ALTER TABLE `identitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `img`
--

DROP TABLE IF EXISTS `img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `img` (
  `id_img` int(4) NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  `deskripsi` text NOT NULL,
  `tipe` enum('public','private') DEFAULT NULL,
  PRIMARY KEY (`id_img`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `img`
--

LOCK TABLES `img` WRITE;
/*!40000 ALTER TABLE `img` DISABLE KEYS */;
INSERT INTO `img` VALUES (8,'3053546ffb15ee0aa5fb558792a08b44.PNG','DMEO','public'),(11,'5ca7b43ac177d97000b5f6fe1230661f.png','DMEO','private'),(12,'809640fcddb6905385eb4986ed5270a9.PNG','demo','public'),(13,'432018ef1dfa918af243c31ff8694758.PNG','demo','public'),(14,'f40fad3f9b9fb8d2a4c7c8e7a7ff7374.PNG','ww','public'),(15,'bb6b2cf23d6f3603fa1553d0f9745c4f.PNG','ww','public'),(16,'8b57fad322bbd43149398588ae8c2932.PNG','ww','public'),(17,'9785e05b14941782972befd7ef939032.png','wwww','public'),(18,'c36b05881d40579c54e2f1d4a14022d3.png','wwww','public'),(19,'c228a489be7041a621221d5420b7d05c.png','wwww','public'),(20,'1c4fa5642eade641abdbbf36e393e1d5.png','wwww','public'),(21,'db28442f1fe70ac1271d0e5b42567b5d.png','www','public'),(22,'bfbc776c7a4056328ebec0cf581db09f.png','ww','public'),(23,'444b9dd2ff7a73bc1efe784099bab717.png','ww','public'),(24,'e3032b8172bda13f11f6a9463fc408cf.PNG','ww','public'),(29,'ca02a99be3a8df4df7e47cd863b7c574.png','www','public');
/*!40000 ALTER TABLE `img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jabatan_guru`
--

DROP TABLE IF EXISTS `jabatan_guru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jabatan_guru` (
  `id_jabatan` int(11) NOT NULL,
  `jabatan` text NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jabatan_guru`
--

LOCK TABLES `jabatan_guru` WRITE;
/*!40000 ALTER TABLE `jabatan_guru` DISABLE KEYS */;
INSERT INTO `jabatan_guru` VALUES (1,'Kepala Sekolah'),(2,'Wakil Kepala Sekolah'),(3,'Petugas Tata Usaha'),(4,'Guru PNS'),(5,'Guru Honorer');
/*!40000 ALTER TABLE `jabatan_guru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` text,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (1,'ali'),(2,'Kesiswaan'),(3,'Olahraga'),(4,'Acara');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ket_guru`
--

DROP TABLE IF EXISTS `ket_guru`;
/*!50001 DROP VIEW IF EXISTS `ket_guru`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ket_guru` (
  `id_guru` tinyint NOT NULL,
  `nama_guru` tinyint NOT NULL,
  `alamat` tinyint NOT NULL,
  `jabatan` tinyint NOT NULL,
  `mapel` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `log_nilai`
--

DROP TABLE IF EXISTS `log_nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_nilai` (
  `id_siswa` int(11) NOT NULL,
  `b_indonesia` int(11) NOT NULL,
  `matematika` int(11) NOT NULL,
  `b_inggris` int(11) NOT NULL,
  `ipa` int(11) NOT NULL,
  `waktu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_nilai`
--

LOCK TABLES `log_nilai` WRITE;
/*!40000 ALTER TABLE `log_nilai` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_nilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_siswa`
--

DROP TABLE IF EXISTS `log_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` int(11) NOT NULL,
  `matematika` int(11) NOT NULL,
  `b_inggris` int(11) NOT NULL,
  `b.indonesia` int(11) NOT NULL,
  `ipa` int(11) NOT NULL,
  `waktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_siswa`
--

LOCK TABLES `log_siswa` WRITE;
/*!40000 ALTER TABLE `log_siswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapel`
--

DROP TABLE IF EXISTS `mapel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `mapel` text NOT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapel`
--

LOCK TABLES `mapel` WRITE;
/*!40000 ALTER TABLE `mapel` DISABLE KEYS */;
INSERT INTO `mapel` VALUES (1,'MateMatika'),(2,'Fisika'),(3,'Kimia'),(4,'Biologi'),(5,'Pkn'),(6,'Sejarah'),(7,'B Indonesia'),(8,'B Inggrish'),(9,'Penjas'),(10,'Seni Budaya');
/*!40000 ALTER TABLE `mapel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navitem`
--

DROP TABLE IF EXISTS `navitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navitem` (
  `id_item` int(10) NOT NULL,
  `id_sort` int(11) NOT NULL,
  `tipe` enum('drop','item') NOT NULL,
  `warna` text NOT NULL,
  `label` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navitem`
--

LOCK TABLES `navitem` WRITE;
/*!40000 ALTER TABLE `navitem` DISABLE KEYS */;
INSERT INTO `navitem` VALUES (1,1,'item','green','pertama','http://localhost/Portal/Artikel/5'),(3,3,'item','kedua','kedua','http://localhost/Portal/Artikel/5'),(4,4,'item','green','ketiga','pertama'),(5,5,'drop','','Unamed','');
/*!40000 ALTER TABLE `navitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai`
--

DROP TABLE IF EXISTS `nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `nis` int(11) NOT NULL,
  `matematika` int(11) NOT NULL,
  `b_inggris` int(11) NOT NULL,
  `b_indonesia` int(11) NOT NULL,
  `ipa` int(11) NOT NULL,
  `foto_skhun` text NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai`
--

LOCK TABLES `nilai` WRITE;
/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp932 */ ;
/*!50003 SET character_set_results = cp932 */ ;
/*!50003 SET collation_connection  = cp932_japanese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER ubah_nilai
AFTER UPDATE ON nilai
FOR EACH ROW
BEGIN
INSERT INTO log_nilai
SET nis=old.nis,
matematika=old.matematika,
b_indonesia=old.b_indonesia,
b_inggris=old.b_inggris,
ipa=old.ipa,
waktu=NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id_post` int(10) NOT NULL AUTO_INCREMENT,
  `judul` text NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `isi` varchar(500) NOT NULL,
  `tanggal` date NOT NULL,
  `status` text NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `cover` text,
  PRIMARY KEY (`id_post`),
  KEY `user_id` (`id_user`),
  KEY `kategori_id` (`id_kategori`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `user_id` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (15,'Forum Penerimaan Siswa Baru Sebentar Lagi Dibuka',2,'<p>Penerimaan siswa didik baru&nbsp;</p>\n','2019-06-17','public',3,'bf3968965c2329d9d9f3ab0e5cba9e44.png');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siswa`
--

DROP TABLE IF EXISTS `siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siswa` (
  `nis` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kel` enum('Laki-laki','Perempuan') NOT NULL,
  `thn_ajaran` varchar(10) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `pend_akhir_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `pend_akhir_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(20) NOT NULL,
  `alamat_ortu` varchar(50) NOT NULL,
  `nama_wali` varchar(50) NOT NULL,
  `pekerjaan_wali` varchar(20) NOT NULL,
  `alamat_wali` varchar(50) NOT NULL,
  `sekolah_asal` varchar(30) NOT NULL,
  `alamat_sekolah` varchar(50) NOT NULL,
  `tahun_lulus` int(7) DEFAULT NULL,
  `status` enum('aktif','tidak aktif','pending') NOT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswa`
--

LOCK TABLES `siswa` WRITE;
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `hapus_siswa` AFTER DELETE ON `siswa` FOR EACH ROW BEGIN
INSERT INTO log_siswa
set nis = OLD.nis,
nama_siswa = OLD.nama_siswa,
jenis_kel = OLD.jenis_kel,
alamat = old.alamat,
waktu = now();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `subnavitem`
--

DROP TABLE IF EXISTS `subnavitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subnavitem` (
  `id_sub` int(10) NOT NULL,
  `id_item` int(10) NOT NULL,
  `label` text NOT NULL,
  `link` text NOT NULL,
  `tipe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subnavitem`
--

LOCK TABLES `subnavitem` WRITE;
/*!40000 ALTER TABLE `subnavitem` DISABLE KEYS */;
INSERT INTO `subnavitem` VALUES (1,2,'www','www','item'),(2,2,'www','www','item');
/*!40000 ALTER TABLE `subnavitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tema`
--

DROP TABLE IF EXISTS `tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tema` (
  `id_tema` int(10) NOT NULL,
  `warna_tema` text NOT NULL,
  `label` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tema`
--

LOCK TABLES `tema` WRITE;
/*!40000 ALTER TABLE `tema` DISABLE KEYS */;
INSERT INTO `tema` VALUES (2,'green','Hijau'),(5,'Blue','Biru'),(6,'Yellow','kuning');
/*!40000 ALTER TABLE `tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template`
--

DROP TABLE IF EXISTS `template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template` (
  `id_template` int(11) NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  `label` text NOT NULL,
  `img` text NOT NULL,
  PRIMARY KEY (`id_template`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template`
--

LOCK TABLES `template` WRITE;
/*!40000 ALTER TABLE `template` DISABLE KEYS */;
/*!40000 ALTER TABLE `template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `username` varchar(14) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','','admin'),(2,'Muhammad Bayhaqi Daulay','bayhaqi','5b75bd843edb24b0ace1d5eba6625272'),(3,'Demo Admin','admin','21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'portal'
--
/*!50003 DROP PROCEDURE IF EXISTS `allpost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `allpost`(IN `AN` INT(11))
BEGIN
SELECT 
a.id_post, a.judul, c.nama ,a.id_kategori, a.status , b.nama_kategori FROM post a inner join kategori b on a.id_kategori=b.id_kategori inner join user c on c.id_user = a.id_user where a.id_kategori = AN;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mypost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mypost`(IN `A` INT)
    NO SQL
BEGIN
SELECT 
a.id_post, a.judul, c.nama ,a.id_kategori, a.status , b.nama_kategori FROM post a inner join kategori b on a.id_kategori=b.id_kategori inner join user c on c.id_user = a.id_user where c.id_user=A;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `postname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `postname`(IN `ID` INT(11), IN `NAME` TEXT)
    NO SQL
BEGIN
SET @name = NAME;
SELECT 
a.id_post, a.judul, c.nama ,a.id_kategori, a.status , b.nama_kategori FROM post a inner join kategori b on a.id_kategori=b.id_kategori inner join user c on c.id_user = a.id_user where a.id_kategori=ID and a.judul like CONCAT('%', @name, '%')
LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `allcount`
--

/*!50001 DROP TABLE IF EXISTS `allcount`*/;
/*!50001 DROP VIEW IF EXISTS `allcount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp932 */;
/*!50001 SET character_set_results     = cp932 */;
/*!50001 SET collation_connection      = cp932_japanese_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allcount` AS select (select count(0) from `guru`) AS `jumlah_guru`,(select count(0) from `post`) AS `jumlah_post`,(select count(0) from `navitem`) AS `jumlah_navbar` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allnavitem`
--

/*!50001 DROP TABLE IF EXISTS `allnavitem`*/;
/*!50001 DROP VIEW IF EXISTS `allnavitem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allnavitem` AS select `navitem`.`id_item` AS `id_item`,`navitem`.`id_sort` AS `id_sort`,`navitem`.`tipe` AS `tipe`,`navitem`.`warna` AS `warna`,`navitem`.`label` AS `label`,`navitem`.`link` AS `link` from `navitem` order by `navitem`.`id_item` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allpost`
--

/*!50001 DROP TABLE IF EXISTS `allpost`*/;
/*!50001 DROP VIEW IF EXISTS `allpost`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp932 */;
/*!50001 SET character_set_results     = cp932 */;
/*!50001 SET collation_connection      = cp932_japanese_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allpost` AS select `a`.`id_post` AS `id_post`,`a`.`isi` AS `isi`,`c`.`nama` AS `nama`,`a`.`judul` AS `judul`,`a`.`tanggal` AS `tanggal`,`a`.`status` AS `status`,`b`.`nama_kategori` AS `nama_kategori`,`b`.`id_kategori` AS `id_kategori` from ((`post` `a` join `kategori` `b` on((`a`.`id_kategori` = `b`.`id_kategori`))) join `user` `c` on((`a`.`id_user` = `c`.`id_user`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ket_guru`
--

/*!50001 DROP TABLE IF EXISTS `ket_guru`*/;
/*!50001 DROP VIEW IF EXISTS `ket_guru`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ket_guru` AS select `guru`.`id_guru` AS `id_guru`,`guru`.`nama_guru` AS `nama_guru`,`guru`.`alamat` AS `alamat`,`jabatan_guru`.`jabatan` AS `jabatan`,`mapel`.`mapel` AS `mapel` from ((`guru` join `jabatan_guru` on((`guru`.`id_jabatan` = `jabatan_guru`.`id_jabatan`))) join `mapel` on((`guru`.`id_mapel` = `mapel`.`id_mapel`))) */;
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

-- Dump completed on 2019-06-24 16:12:20
