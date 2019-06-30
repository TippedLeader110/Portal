-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: sisko
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
  `judul` tinyint NOT NULL,
  `nama` tinyint NOT NULL,
  `tanggal` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `nama_kategori` tinyint NOT NULL,
  `cover` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `guru`
--

DROP TABLE IF EXISTS `guru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guru` (
  `id_guru` int(4) NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) NOT NULL,
  `nama_guru` text NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  PRIMARY KEY (`id_guru`),
  KEY `jabatan_id` (`id_jabatan`),
  KEY `mapel_id` (`id_mapel`),
  CONSTRAINT `jabatan_id` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan_guru` (`id_jabatan`) ON UPDATE CASCADE,
  CONSTRAINT `mapel_id` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guru`
--

LOCK TABLES `guru` WRITE;
/*!40000 ALTER TABLE `guru` DISABLE KEYS */;
INSERT INTO `guru` VALUES (1,'1231942141391','Ali Hidayat',1,'Patumbak',1),(2,'1924414812491','Ihsan Maulana',2,'SS',1),(3,'123213131','Guru A',5,'1231',2),(4,'213131313','Guru B',5,'1312321',3);
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
  `tutup_pendaftaran` date DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id_identitas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitas`
--

LOCK TABLES `identitas` WRITE;
/*!40000 ALTER TABLE `identitas` DISABLE KEYS */;
INSERT INTO `identitas` VALUES (1,'DEMO SCHOOL','<p>&nbsp;&nbsp;&ldquo;Berprestasi dilandasi Iman, Taqwa dan Berbudaya Lingkungan serta Berwawasan Global&rdquo;</p>\n','<p>1.&nbsp; &nbsp;Mewujudkan pendidikan untuk menghasilkan prestasi dan lulusa berkwalitas tinggi yang peduli dengan lingkungan hidup</p>\n\n<p>2. &nbsp; Mewujudkan sumber daya manusia yang beriman, produktif, kreatif, inofatif dan efektif</p>\n\n<p>3. &nbsp; Mewujudkan pengembangan inovasi pembelajaran sesuai tuntutan</p>\n\n<p>4. &nbsp; Mewujudkan sumber daya manusia yang peduli dalam mencegahan pencemaran, mencegahan kerusakan lingkungan dan melestarikan lingkungan hidup</p>\n\n<p>5. &nbsp; Mewujudkan sarana prasarana reprensentatif dan up to date</p>\n\n<p>6. &nbsp; Mewujudkan pengelolaan pendidikan yang professional</p>\n\n<p>7. &nbsp; Mewujudkan sistim penilaian yang berafiliasi</p>\n\n<p>8. &nbsp; Mewujudkan budaya yang berkualifikasi</p>\n\n<p>9. &nbsp; Mewujudkan Sekolah yang bersih,hijau dan meminimalis hasil sampah yang tidak bermanfaat</p>\n\n<p>10. Mewujudkan manusia Indonesia yang mampu berkontribusi pada kehidupan bermasyarakat, berbangsa, bernegara dalam peradaban dunia</p>\n\n<p>11. Mewujudkan generasi emas, sehat tanpa narkoba</p>\n','SEKOLAH INI DICIPTAKAN OLEH ALI HIDAYAT SETELAH DIUSIR DARI WAKANDA',2,2,1,2019,250,'2019-06-28','<h3>Syarat Pendaftaran</h3>\n\n<ol>\n	<li>Telah dinyatakan lulus dan memiliki Ijazah/SKL dari SMP/ MTs/ SMPLB/ Paket B;</li>\n	<li>Berusia paling tinggi 21 (dua puluh satu) ( awal Tahun Pelajaran 2017/2018).</li>\n</ol>\n\n<h3>Pemberkasan</h3>\n\n<ol>\n	<li>Foto Copy Ijazah/SHUN/Surat Keterangan Lulus dari sekolah asal dan dilegalisir sebanyak 1 lembar, serta menyerahkan aslinya pada sekolah tempat mendaftar ( dijadwal yang di tentukan ).</li>\n	<li>Pas foto berwarna ukuran 3 x 4 cm sebanyak 2 lembar.</li>\n</ol>\n\n<h3>Cara Mendaftar</h3>\n\n<ol>\n	<li>Daftar akun pada halaman daftar ( tombol daftar di atas )</li>\n	<li>Setelah mengisi semua form pendaftaran , peserta didik baru diharapkan mengantarkan berkas yang diminta ke sekolah untuk verifikasi</li>\n	<li>Setelah verifikasi peserta didik baru dapat menunggu hasil seleksi di tanggal yang di tentukan yaitu ( 2019-07-15 )</li>\n</ol>\n\n<h3>Catatan Tambahan</h3>\n\n<ol>\n	<li>Saat verifikasi di kenakan biaya pendaftaran sebesar Rp.100.000,00</li>\n</ol>\n');
/*!40000 ALTER TABLE `identitas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `done_seleksi` AFTER UPDATE ON `identitas` FOR EACH ROW BEGIN
DECLARE nilai integer;
set nilai = old.maks;
IF new.penerimaan=0
THEN 
UPDATE siswa set status = 'gagal' WHERE STATUS = 'seleksi';
DELETE FROM siswa where status = 'gagal' ORDER BY nis  DESC limit nilai;
end IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `img`
--

LOCK TABLES `img` WRITE;
/*!40000 ALTER TABLE `img` DISABLE KEYS */;
INSERT INTO `img` VALUES (8,'3053546ffb15ee0aa5fb558792a08b44.PNG','DMEO','public'),(11,'5ca7b43ac177d97000b5f6fe1230661f.png','DMEO','private'),(12,'809640fcddb6905385eb4986ed5270a9.PNG','demo','public'),(13,'432018ef1dfa918af243c31ff8694758.PNG','demo','public'),(14,'f40fad3f9b9fb8d2a4c7c8e7a7ff7374.PNG','ww','public'),(15,'bb6b2cf23d6f3603fa1553d0f9745c4f.PNG','ww','public'),(16,'8b57fad322bbd43149398588ae8c2932.PNG','ww','public'),(17,'9785e05b14941782972befd7ef939032.png','wwww','public'),(18,'c36b05881d40579c54e2f1d4a14022d3.png','wwww','public'),(19,'c228a489be7041a621221d5420b7d05c.png','wwww','public'),(20,'1c4fa5642eade641abdbbf36e393e1d5.png','wwww','public'),(21,'db28442f1fe70ac1271d0e5b42567b5d.png','www','public'),(22,'bfbc776c7a4056328ebec0cf581db09f.png','ww','public'),(23,'444b9dd2ff7a73bc1efe784099bab717.png','ww','public'),(24,'e3032b8172bda13f11f6a9463fc408cf.PNG','ww','public');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (4,'Acara'),(6,'Kesiswaan');
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
  `waktu` date NOT NULL,
  `status` enum('ubah','hapus') NOT NULL
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
-- Table structure for table `mapelujian`
--

DROP TABLE IF EXISTS `mapelujian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapelujian` (
  `id_mujian` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mujian` varchar(40) NOT NULL,
  PRIMARY KEY (`id_mujian`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapelujian`
--

LOCK TABLES `mapelujian` WRITE;
/*!40000 ALTER TABLE `mapelujian` DISABLE KEYS */;
INSERT INTO `mapelujian` VALUES (1,'Matematika'),(2,'Bahasa Indonesia'),(3,'Bahasa Ingriss'),(4,'Ilmu Pengetahuan Alam');
/*!40000 ALTER TABLE `mapelujian` ENABLE KEYS */;
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
  `id_mujian` int(11) NOT NULL,
  `nilai` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_nilai`),
  KEY `nis` (`nis`),
  KEY `id_mujian` (`id_mujian`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai`
--

LOCK TABLES `nilai` WRITE;
/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
INSERT INTO `nilai` VALUES (1,1,2,40),(2,1,4,40),(3,1,1,40),(4,1,3,40);
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `siswa_avg_insert` AFTER INSERT ON `nilai` FOR EACH ROW BEGIN
DECLARE nilai_a integer;
set nilai_a = (select avg(nilai) from nilai where nis = new.nis);
update siswa SET nilai_avg = nilai_a WHERE nis = new.nis;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `siswa_avg_up` AFTER UPDATE ON `nilai` FOR EACH ROW BEGIN
DECLARE nilai_a integer;
set nilai_a = (select avg(nilai) from nilai where nis = new.nis);
update siswa SET nilai_avg = nilai_a WHERE nis = new.nis;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `nilai_seleksi`
--

DROP TABLE IF EXISTS `nilai_seleksi`;
/*!50001 DROP VIEW IF EXISTS `nilai_seleksi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `nilai_seleksi` (
  `nis` tinyint NOT NULL,
  `nilai_avg` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

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
INSERT INTO `post` VALUES (15,'Forum Penerimaan Siswa Baru Sebentar Lagi Dibuka',NULL,'<p>Penerimaan siswa didik baru&nbsp;</p>\n','2019-06-17','public',3,'bf3968965c2329d9d9f3ab0e5cba9e44.png');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siswa`
--

DROP TABLE IF EXISTS `siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siswa` (
  `nis` int(11) NOT NULL AUTO_INCREMENT,
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
  `nama_wali` varchar(50) DEFAULT NULL,
  `pend_akhir_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(20) DEFAULT NULL,
  `alamat_wali` varchar(50) DEFAULT NULL,
  `sekolah_asal` varchar(30) NOT NULL,
  `alamat_sekolah` varchar(50) NOT NULL,
  `tahun_lulus` int(7) DEFAULT NULL,
  `status` enum('aktif','tidak aktif','pending','gagal','seleksi') NOT NULL,
  `jurusan` enum('ipa','ips') DEFAULT NULL,
  `agama` enum('Islam','Budha','Kristen') DEFAULT NULL,
  `foto_skhun` text,
  `nilai_avg` int(11) DEFAULT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB AUTO_INCREMENT=201602064 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswa`
--

LOCK TABLES `siswa` WRITE;
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` VALUES (1,'Ashbi','2','1200-02-12','Laki-laki','2019','2','2','2','2','2','2','2','2','2',NULL,'2','2','2',2,'seleksi',NULL,'Islam','8e6b2e738dc393b5efb682c4f4bdab12.jpg',40),(201601001,'Yunita Sari','Jl. Simpang Gajah Mada ','2004-11-02','Perempuan','2016','Juwaidi','S1','PNS','Rika','S1','PNS','Jl. Simpang Gajah Mada ',NULL,NULL,NULL,NULL,'SMP Nusan Penida','Jl. Setia Budi',0,'aktif','ipa','',NULL,NULL),(201601002,'Irwan Gunawan','Perumahan Griya Giri','2004-09-16','Laki-laki','2016','Ridwan Yusuf','S1','PNS','Alya Nir','SMA','Rumah Tangga','Perumahan Griya Giri',NULL,NULL,NULL,NULL,'SMP N 30','Jl. Melati',0,'aktif','ipa','',NULL,NULL),(201601003,'Yulia Khairunisa','Jl. Kapten Griya','2016-09-04','Perempuan','2016','','','','','','','','Jamal ',NULL,'PNS','Jl. Kapten Griya','SMP N 30','Jl. Melati',0,'aktif','ipa','',NULL,NULL),(201601004,'Adi Pratama','Jl. Griya Sari','2016-08-11','Laki-laki','2016','Gunawan','S1','Dosen','Siri Jumaiti','SMA','Penjual','Jl. Griya Sari ',NULL,NULL,NULL,NULL,'SMP N 7','Jl. Pringan',0,'aktif','ipa','',NULL,NULL),(201601005,'Ahmad Pratama','JL. Sangkar','2017-09-03','Laki-laki','2016','Badrun','S1','PNS','Sari Yulia','SMA','Rumah Tangga','Jl. Sangkar',NULL,NULL,NULL,NULL,'SMP Dharma','Jl. Dr Mansyur',0,'aktif','ipa','',NULL,NULL),(201601006,'Dita Rahmadani','Jl. Ujung Siri','2016-12-08','Perempuan','2016','','','','','','','','Badrun Gunawan',NULL,'Penjual','Jl. Ujung Siri','SMP N 1','Jl. Mawar',0,'aktif','ipa','',NULL,NULL),(201601007,'Fitriayani','Jl. Mawar Sari','2017-08-22','Perempuan','2016','Riky Gunawan','S1','PNS','Fani','SMP','Rumah Tangga','Jl Mawar Sari',NULL,NULL,NULL,NULL,'SMP N 30','Jl. Melati',0,'aktif','ipa','',NULL,NULL),(201601008,'Miftahul','Jl. Anggrek','2016-11-11','Laki-laki','2016','Andri','SMA','Penjual','Fina','SMA','Rumah Tangga','Jl. Anggrek',NULL,NULL,NULL,NULL,'SMP Petani','Jl. Sawah',0,'aktif','ipa','',NULL,NULL),(201601009,'Indra Aswari','Jl. Lereng Lembah','2016-09-22','Laki-laki','2016','Ginting Siregar','S1','PNS','Farah Jaskiah','S1','Pegawai Bank','Jl. Lereng Lembah',NULL,NULL,NULL,NULL,'SMP Pancasila','Jl. Simp Pos',0,'aktif','ipa','',NULL,NULL),(201601010,'Rahma Aulia','Jl. Jangkar','2016-10-15','Perempuan','2016','Ridwan Kamil','S1','Guru','Zaskiah Sungkar','S1','Guru','Jl Jangkar',NULL,NULL,NULL,NULL,'SMP N 1','Jl. Melati',0,'aktif','ipa','',NULL,NULL),(201601011,'Anika Andriani','Jl. Pulpen','2002-09-07','Perempuan','2016','Disra Jamal','S1 ','Guru','Rahma ','SMA','Rumah Tangga','Jl. Pulpen',NULL,NULL,NULL,NULL,'SMP N 30','Jl. Melati',0,'aktif','ipa','',NULL,NULL),(201601012,'Oktavia Vira','Jl. Pulpen','2002-09-08','Perempuan','2016','Disra Jamal','S1','Guru','Rahma ','SMA','Rumah Tangga','Jl. Pulpen',NULL,NULL,NULL,NULL,'SMP N 30','Jl. Melati',0,'aktif','ipa','',NULL,NULL),(201601013,'Muhammad Ahmad','Jl. Beo','2002-09-09','Laki-laki','2016','Indra Tami','S1','Pengusaha','Rida Oktavia','S1','Rumah Tangga','',NULL,NULL,NULL,NULL,'SMP Nusan Penida','Jl. Setia Budi',0,'aktif','ipa','',NULL,NULL),(201601014,'Niken Tamara','Jl. Langgar','2002-09-10','Perempuan','2016','Purnomo ','S1','PNS','Nur Cahya','S1','Guru','Jl. Langgar',NULL,NULL,NULL,NULL,'SMP N 7 ','Jl. Pringan',0,'aktif','ipa','',NULL,NULL),(201601015,'Wicaksonon Putra','Jl. Berjaya','2002-09-11','Laki-laki','2016','Putra Dwi','S1','Penjual','Nuril ','S1','Guru','Jl. Berjaya',NULL,NULL,NULL,NULL,'SMP N 1 ','Jl. Melati',0,'aktif','ipa','',NULL,NULL),(201601016,'Gani Purnama','Jl. Selimut','2002-09-12','Laki-laki','2016','Banyu Mas','SMA','TNI','Martina ','S3','Dosen','Jl. Selimut',NULL,NULL,NULL,NULL,'SMP Sultan','Jl. Tanjung Rejo',0,'aktif','ipa','',NULL,NULL),(201601017,'Gina Putri','Jl. Barbasia Nili','2002-09-13','Perempuan','2016','Satria Musto','S1','Polisi','Mila Dini','S1','Guru','Jl. Barbasia Nili',NULL,NULL,NULL,NULL,'SMP N 10','Jl. Ringroad',0,'aktif','ipa','',NULL,NULL),(201601018,'Muhammad Ari','Jl. Biduri','2002-09-14','Laki-laki','2016','Ananda','S1','PNS','Dini Rahma','S1','PNS','JL. Biduri',NULL,NULL,NULL,NULL,'SMP  Swasta','Jl. Ahmad Yani',0,'aktif','ipa','',NULL,NULL),(201601019,'M Ridwan Tarigan','Jl. Asoka','2002-09-15','Laki-laki','2016','Muhanda','S1','PNS','Lala Riri','SMP','Rumah Tangga','Jl. Asoka',NULL,NULL,NULL,NULL,'SMP Telkom','Jl. Simp Selayang',0,'aktif','ipa','',NULL,NULL),(201601020,'Anisa Barus','Jl. A.H Nasution','2002-09-16','Perempuan','2016','Jono','S2','Dosen','Jumayati','SMA','Penjual','Jl. A.H Nasution',NULL,NULL,NULL,NULL,'SMP N 7','Jl. Pringan',0,'aktif','ipa','',NULL,NULL),(201601021,'M Rosadi ','Jl. Raya Licin','2002-09-17','Laki-laki','2016','Agung','S1','PNS','Ajeng','SMA','Penjual','Jl. Raya Licin',NULL,NULL,NULL,NULL,'SMP N 30','Jl. Melati',0,'aktif','ipa','',NULL,NULL),(201601022,'Nur Andina Rahma','Jl. Muwarma','2002-09-18','Perempuan','2016','','','','','','','','Budi Gunawan',NULL,'PNS','Jl. Muwarma','SMP Dharma','Jl. Dr Mansyur',0,'aktif','ipa','',NULL,NULL),(201601023,'Brastila Lesti','Jl. Banterang','2002-09-19','Perempuan','2016','','','','','','','','Ridwan Jamal',NULL,'TNI','Jl. Banterang','SMP N 10','Jl. Ringroad',0,'aktif','ipa','',NULL,NULL),(201601024,'Dinda Lala','Jl. Klontang','2002-09-20','Perempuan','2016','Gunawan Purnomo','SMA','Penjual','Aulia Rahma','SMA','Penjual','Jl. Klontang',NULL,NULL,NULL,NULL,'SMP Telkom','Jl. Simp Selayang',0,'aktif','ipa','',NULL,NULL),(201601025,'Bayhaqi Daulay','Jl. Eka Rasmi','2002-09-21','Laki-laki','2016','Haqi Jono','S1','PNS','Fitriayani','SMA','Rumah Tangga','Jl. Eka Rasmi',NULL,NULL,NULL,NULL,'SMP Muhamadiah','Jl. Seta Budi',0,'aktif','ipa','',NULL,NULL),(201601026,'Banyu Dwi','Jl. Purnama Jaya','2002-09-22','Laki-laki','2016','','','','','','','','Vira Oktavia',NULL,'Guru','Jl. Purnama Jaya','SMP N 30','Jl. Melati',0,'aktif','ipa','',NULL,NULL),(201602001,'Ameta Dian Fachira','Jl. Bougeinville 2','2002-06-20','Perempuan','2016','Zulkilfi','S1','PNS','Yetti','S1','PNS','Jl. Bougeinville 2',NULL,NULL,NULL,NULL,'SMP Dharma','Jl. Dr Mansyur',0,'aktif','ips','',NULL,NULL),(201602002,'Rafika Aigo','Jl. Purnama Jaya','2001-09-21','Perempuan','2016','Muhammad Udin','S1','Guru','Ananda','SMA','Rumah Tangga','Jl. Purnama Jaya',NULL,NULL,NULL,NULL,'SMP Dharma','Jl. Dr Mansyur',0,'aktif','ips','',NULL,NULL),(201602003,'Dinda Nazli','Jl. Bougeinville 3','2003-11-16','Perempuan','2017','Budi','SMA','Penjual','Ana','SMA','Penjual','Jl. Bougeinville 3',NULL,NULL,NULL,NULL,'SMP Dharma','Jl. Dr Mansyur',0,'aktif','ips','',NULL,NULL),(201602004,'Anto Siregar','Jl. Satu Jiah','0000-00-00','Laki-laki','2017',' Kiki','S1','Pekerja Kantoran','Jesica','S1','PNS','Jl. Satu Jua',NULL,NULL,NULL,NULL,'SMP Santa Thomas','Jl. Katamso',0,'aktif','ips','Kristen',NULL,NULL),(201602005,'Legardo Hamoloan','Jl. Asisi','2003-11-21','Laki-laki','2017','Jans',' SMA','TNI','Selvi','S1','PNS','Jl. Asisi',NULL,NULL,NULL,NULL,'SMP Nusan Penida','Jl. Setia Budi',0,'aktif','ips','Kristen',NULL,NULL),(201602006,'Johan ','Jl. Pembangunan','2003-01-22','Laki-laki','2017','Motoharu','SMA','Polisi','Fenni Lim','S1','Rumah Tangga','Jl. Pembangunan',NULL,NULL,NULL,NULL,'SMP Santa Thomas','Jl. Katamso',0,'aktif','ips','Kristen',NULL,NULL),(201602007,'Yusuf Aldiansyah','Jl. Eka Rasmi','2003-06-04','Laki-laki','2017',' Fauzan','S1','PNS','Yessi','S1','PNS','Jl. Eka Rasmi',NULL,NULL,NULL,NULL,'SMP N 30','Jl. Melati',0,'aktif','ips','Islam',NULL,NULL),(201602008,'Defina Yenatta','Jl. Ujung Siri','2003-07-07','Perempuan','2017','Muhammad Ari','S1','Penjual','Dian Ningsih','S1','Dosen','Jl. Ujung Sari',NULL,NULL,NULL,NULL,'SMP N 10','Jl. Ringroad',0,'aktif','ips','Islam',NULL,NULL),(201602009,'Nael','Jl. Juanita','2003-07-10','Laki-laki','2017','Victor Thalib','S1','Guru','Heven','S1','Guru','Jl. Juanita',NULL,NULL,NULL,NULL,'SMP Dharma','Jl. Dr Mansyur',0,'aktif','ips','Kristen',NULL,NULL),(201602010,'Thoriq Owen','Jl. Karya Jaya','2003-02-12','Laki-laki','2017','Angga Satrio','S1','PNS','Okki ','S1','Guru',' Jl. Karya Jaya',NULL,NULL,NULL,NULL,'SMP Dharma','Jl. Dr Mansyur',0,'aktif','ips','Islam',NULL,NULL),(201602011,'Kayla Hayyan','Jl. Jaya Karya','2003-03-21','Perempuan','2017','Eko Joko','SMA','Penjual','Nadia','SMA','Penjual','Jl. Jaya Karya',NULL,NULL,NULL,NULL,'SMP Muhamadiah','Jl. Setia Budi',0,'aktif','ips','Islam',NULL,NULL),(201602012,'Assidiq Salma','Jl. Perabotan','2003-11-14','Perempuan','2017','Fauzan Johan','S1','Pekerja Kantoran','Ulfi Nadia','S1','PNS','Jl. Perabotan',NULL,NULL,NULL,NULL,'SMP Pancasila','Jl. Dr Mansyur',0,'aktif','ips','Islam',NULL,NULL),(201602013,'Siska','Jl. Rata rata','2003-09-26','Perempuan','2017','Bisma','S1','PNS','Ratna','S1',' PNS','Jl. Rata rata',NULL,NULL,NULL,NULL,'SMP Telkom','Jl. Simp Selayang',0,'aktif','ips','Islam',NULL,NULL),(201602014,'Crish ','Jl. Perumahan','2003-03-22','Laki-laki','2017','Jackie','S1','Pengusaha','Linlin','S1','Rumah Tangga','Jl. Perumahan',NULL,NULL,NULL,NULL,'SMP Santa Thomas','Jl. Katamso',0,'aktif','ips','Budha',NULL,NULL),(201602015,'Eggy Saputra Tama','Jl. Kudus','2003-03-13','Laki-laki','2017','Budionon','S1','PNS','Afiful Aufa','S1 ','Penjual','Jl. Kudus',NULL,NULL,NULL,NULL,'SMP Telkom','Jl. Simp Selayang',0,'aktif','ips','Islam',NULL,NULL),(201602016,'Rian Febrianto','Jl. Penyabungan','2002-11-15','Laki-laki','2017','Bahdrul Fitriana','SMA','Satpam','Nur Fatiah','SMP','Penjual','Jl. Penyabungan',NULL,NULL,NULL,NULL,'SMP N 30 ',' Jl. Melati',0,'aktif','ips','Islam',NULL,NULL),(201602017,'Andri Siregar','Jl. Pembangunan','0000-00-00','Laki-laki','2017','Dedi Siregar','S1','PNS',' Nazli','S1','PNS','Jl. Pembangunan',NULL,NULL,NULL,NULL,'SMP Dharma','Jl. Dr Mansyur',0,'aktif','ips','Kristen',NULL,NULL),(201602018,'Yusri ','Jl. Mawar Sari','2003-12-21','Laki-laki','2017','','','','','','','','Rahmat Anto',NULL,' Penjual','Jl. Mawar','SMP Santa Thomas','Jl. Katamso',0,'aktif','ips','Budha',NULL,NULL),(201602019,'Ram Hevelio','Jl. Perumahan','0000-00-00','Laki-laki','2017','Rio Pratama','S1','Pengusaha','Ananda ','S1 ','Rumah Tangga','Jl. Perumahan',NULL,NULL,NULL,NULL,'SMP Santa Thomas','Jl. Katamso',0,'aktif','ips','Budha',NULL,NULL),(201602020,'Baiq Agustina','Jl. Aeikmel','2003-09-15','Laki-laki','2017','Abdul Mukti','S1','PNS','Marwah',' S1','PNS','Jl. Aeikmil',NULL,NULL,NULL,NULL,'SMP Muhamadiah','Jl. Setia Budi',0,'aktif','ips','Islam',NULL,NULL),(201602021,'Handri Pathurrahman','Jl. Lili','2003-01-21','Laki-laki','2017','Jaka Susanto','SMA','Penjual','Madriah Jumiah','SMA ','Rumah Tangga','Jl. Lili',NULL,NULL,NULL,NULL,'SMP Muhamadiah','Jl. Setia Budi',0,'aktif','ips','Islam',NULL,NULL),(201602022,'Novia Zanwadi','Jl. Lulilas','2003-07-16','Perempuan','2017','','','','','','','','Riwanti',NULL,'Dosen','Jl. Lulila','SMP Pancasila','Jl. Dr Mansyur',0,'aktif','ips','Islam',NULL,NULL),(201602023,'Khaerul Umam','Jl. Jangkar','2003-02-20','Laki-laki','2017','','','','','','','','Jokok Dana',NULL,'PNS','Jl. Jangkar','SMP Dharma','Jl. Dr Mansyur',0,'aktif','ips','Islam',NULL,NULL),(201602024,' Jansfour','Jl. Negri','2001-02-21','Laki-laki','2017','','','','','','','','Bayu',NULL,'TNI','Jl. Negri','SMP Santa Thomas','Jl. Katamso',0,'aktif','ips','Kristen',NULL,NULL),(201602025,'Andri Wahyu A.R','Jl. Oktober','2003-09-09','Perempuan','2017','Bambang Surio','SMA','Guru','Dwi Lestari','SMA','Polwan','Jl. Oktober',NULL,NULL,NULL,NULL,'SMP Nusan Penida','Jl. Setia Budi',0,'aktif','ips','Islam',NULL,NULL),(201602026,'Holifathul Ilmiah','Jl. Sekar','2003-11-08','Laki-laki','2017','','','','','','','','Ismail',NULL,'Polisi','Jl. Sekar','SMP N 1',' Jl. Mawar',0,'aktif','ips','Islam',NULL,NULL),(201602027,'Ana Farhana','Jl. Kolili','2003-09-09','Perempuan','2017','Muhammad Hasan','S1','PNS','Nizar','S1','Guru',' Jl. Kolili',NULL,NULL,NULL,NULL,'SMP N 10','Jl. Ringroad',0,'aktif','ips','Islam',NULL,NULL),(201602028,'Edi Fargusen','Jl. Kakkao','2003-01-17','Laki-laki','2017','Bambang Surio','S1','Guru','Lilia Jessia','S1 ','PNS','Jl. Kakkao',NULL,NULL,NULL,NULL,'SMP Telkom','Jl. Simp Selayang',0,'aktif','ips','Kristen',NULL,NULL),(201602029,'Iin Indriawati','Jl. Banyuwangi','2003-05-08','Perempuan','2017','Warman','SMA','Penjual','Alisa','S1','PNS','Jl. Banyuwangi',NULL,NULL,NULL,NULL,'SMP Muhamadiah','Jl. Setia budi',0,'aktif','ips','Islam',NULL,NULL),(201602030,'Hadriatnti Intan ','Jl. Bulan bulan','2003-07-11','Perempuan','2017','Warman','SMA','Penjual','Alisa','S2','PNS','Jl. Bulan bulan','Giflani Nizar',NULL,'Pengusaha','Jl. Bulan bulan','SMP N 30','Jl. Melati',0,'aktif','ips','Islam',NULL,NULL),(201602031,'Intan ','Jl. November','2003-07-12','Perempuan','2017','Warman','SMA','Penjual','Alisa','S2','PNS','Jl. November',NULL,NULL,NULL,NULL,'SMP N 31','Jl. Melati',0,'aktif','ips','Islam',NULL,NULL),(201602032,'Hadriatnti','Jl. Raya Licin','2003-07-13','Perempuan','2017','Warman','SMA','Penjual','Alisa','S1','PNS','Jl. Raya Licin',NULL,NULL,NULL,NULL,'SMP N 32','Jl. Melati',0,'aktif','ips','Islam',NULL,NULL),(201602033,'Indriawati','Jl. Lici Raya','2003-05-08','Perempuan','2017','Muhammad Hasan','S1','PNS','Nizar','S1','Polwan','Jl. Lici Raya',NULL,NULL,NULL,NULL,'SMP N 33','Jl. Melati',0,'aktif','ips','Islam',NULL,NULL),(201602034,'Fani Dilia','Jl. Marunjungjuang','2004-01-09','Perempuan','2018','Josika','S1','PNS','Jesicca','S1','PNS','Jl. Maranjuangjuang',NULL,NULL,NULL,NULL,'SMP Telkom','Jl. Simp Selayang',0,'aktif','ips','Kristen',NULL,NULL),(201602035,'Shofa Adelia ','Jl. Baru','2004-09-01','Perempuan','2018','Wahyutri Utomo','SMA','Polisi','Tuty Nur ','S1 ','Guru',' Jl. Baru',NULL,NULL,NULL,NULL,'SMP Nusan Penida','Jl. Setia Budi',0,'aktif','ips','Islam',NULL,NULL),(201602036,'Nurul Nur Atika',' Jl. Pembangunan','2003-09-03','Perempuan','2018','Ali','S1','PNS','Nadia ','S1','Guru','Jl. Pembangunan',NULL,NULL,NULL,NULL,'SMP Muhamadiah','Jl. Setia Budi',0,'aktif','ips','Islam',NULL,NULL),(201602037,'M Ihsan Maulana','Jl Bougeinville ','2004-11-09','Laki-laki','2018','Zulfan','S2','Dosen','Rina','S1','Guru','Jl. Bougeinville',NULL,NULL,NULL,NULL,'SMP Dharma','Jl. Dr Mansyur',0,'aktif','ips','Islam',NULL,NULL),(201602038,'Elya Wardhani','Jl. Langgar','2004-10-22','Perempuan','2018','Edi','SMA','Penjual','Ana','SMA','Penjual','Jl. Langgar',NULL,NULL,NULL,NULL,'SMP N 7','Jl. Pringan',0,'aktif','ips','Islam',NULL,NULL),(201602039,'Dina Undzila','Jl. Tasbih','2004-09-23','Perempuan','2018','Daniel Fadly','S1','PNS','Mya Utami','S1','Dosen','Jl. Tasbih',NULL,NULL,NULL,NULL,'SMP N 1','Jl. Mawar',0,'aktif','ips','Islam',NULL,NULL),(201602040,'Wina ','Jl. Negri','2004-09-04','Perempuan','2018','Rafly Himawasyah','S1','Guru','Adelia Fadly','SMA','Rumah Tangga','Jl. Negri',NULL,NULL,NULL,NULL,'SMP Santa Thomas','Jl. Katamso',0,'aktif','ips','Kristen',NULL,NULL),(201602041,'Wisnu Wardato','Jl. Sereng','2004-10-10','Laki-laki','2018','Withanto','SD',' Penjual','Pipi Adelia','S1','Guru','Jl. Sereng',NULL,NULL,NULL,NULL,'SMP Santa Thomas','Jl. Katamso',0,'aktif','ips','Kristen',NULL,NULL),(201602042,'Muhammad Alfitrah','Jl. Sumatra Utara','2004-08-11','Laki-laki','2018','Dimas Pratama','S1','Pengusaha','Dinda Pratama','S1','Guru','Jl. Sumatra Utara',NULL,NULL,NULL,NULL,'SMP N 30','Jl. Melati',0,'aktif','ips','Islam',NULL,NULL),(201602043,'Firmansyah Alfi','Jl. Kapten Ilyas','2004-11-05','Laki-laki','2018','Adi Pratama','S2','Dosen','Aulia Rahma','S1','PNS','Jl. Kapten Ilyas',NULL,NULL,NULL,NULL,'SMP Dharma','Jl. Dr Mansyur',0,'aktif','ips','Islam',NULL,NULL),(201602044,'Firman Utomo','Jl. K.H Dewantara','2005-12-09','Laki-laki','2018','Ramadhani','S1','Guru','Rahma Andini','S1','Pegawai Bank','Jl K.H Dewantara',NULL,NULL,NULL,NULL,'SMP Telkom','Jl. Simp Selayang',0,'aktif','ips','Islam',NULL,NULL),(201602045,'Wahyu Widianto','Jl. Gunung Sari','2004-09-19','Laki-laki','2018','','','','','','','','Anik',NULL,'Guru','Jl. Gunung Sari','SMP Pancasila','Jl. Dr Mansyur',0,'aktif','ips','Islam',NULL,NULL),(201602046,'Aldion ','Jl. Prambanan','0000-00-00','Laki-laki','2018','Alfi Cen','S1','Penjual','Lilia Jessica','S1',' PNS','Jl. Prambanan',NULL,NULL,NULL,NULL,'SMP Santa Thomas','Jl. Katamso',0,'aktif','ips','Budha',NULL,NULL),(201602047,'Riski Wahyudi','Jl. Prambanan','0000-00-00','Laki-laki','2018','Alfi Cen','S2','Penjual','Lilia Jessica','S2',' PNS','Jl. Prambanan',NULL,NULL,NULL,NULL,'SMP Santa Thomas','Jl. Katamso',0,'aktif','ips','Budha',NULL,NULL),(201602048,'Yudha ','Jl. Perjuangan','2003-09-21','Laki-laki','2018','Warianto','S1','PNS','Wanda Dewi','S1','PNS','Jl. Perjuangan',NULL,NULL,NULL,NULL,'SMP Dharma','Jl. Dr Mansyur',0,'aktif','ips','Islam',NULL,NULL),(201602049,'Wanda Kususma ','Jl. Mundziri','0000-00-00','Perempuan','2018','Ahmad','S1','Pegawai Kantor',' Jeni','SMA','Rumah Tangga','Jl. Mundziri',NULL,NULL,NULL,NULL,'SMP Dharma','Jl. Dr Mansyur',0,'aktif','ips','Islam',NULL,NULL),(201602050,'Muhammad Amin','Jl. Dr Mansyur','2004-11-21','Laki-laki','2018','Redy Gunawan','S2','Dosen',' Giselle','SMA','Rumah Tangga','Jl. Dr Mansyur',NULL,NULL,NULL,NULL,'SMP Pancasila','Jl. Dr Mansyur',0,'aktif','ips','Islam',NULL,NULL),(201602051,'Rikki ','Jl. Asoka 1','2004-04-23','Laki-laki','2018','','','','','','','','Daniel',NULL,'PNS','Jl. Asoka 1','SMP Telkom','Jl. Simp Selayang',0,'aktif','ips','Kristen',NULL,NULL),(201602052,' Indah Ramadhani','Jl. Budi Seia','2004-01-23','Perempuan','2018','Ahmad',' S1','PNS','Nur','SMA','Rumah Tangga',' Jl. Budi Seia',NULL,NULL,NULL,NULL,' SMP N 7','Jl. Pringan',0,'aktif','ips','Islam',NULL,NULL),(201602053,'Tanjug Gunawan','Jl Bougeinville ','2004-10-24','Laki-laki','2018','','','','','','','','Jamaliya',NULL,'PNS',' Jl. Bougeinville','SMP N 30','Jl. Melati',0,'aktif','ips','Kristen',NULL,NULL),(201602054,'Ali Hidayat','Jl. Jauhitam','2004-07-22','Laki-laki','2018','Fahmi Rizal','S1','Guru','Nadia Siti','SMA','Penjual','Jl. Jauhitam',NULL,NULL,NULL,NULL,'SMP Muhamadiah','Jl. Setia Budi',0,'aktif','ips','',NULL,NULL),(201602055,' Ibnu Rezky','Jl. Setia Budi','2004-08-03','Laki-laki','2018','Muhammad Fakhri','S1',' PNS','Nur Atikah','S1 ','PNS','Jl. Setia Budi',NULL,NULL,NULL,NULL,'SMP N 7','Jl. Pringan',0,'aktif','ips','Islam',NULL,NULL),(201602056,'Rahmad Amin','Jl. Dr Mansyur','2004-11-02','Laki-laki','2018','Irfan','S1','PNS ','Reza Melani','SMA ','Rumah Tangga','Jl. Dr Mansyur',NULL,NULL,NULL,NULL,'SMP Dharma','Jl. Dr Mansyur',0,'aktif','ips','Islam',NULL,NULL),(201602057,'Abadi Tarigan','Jl. Asoka','2004-12-21','Laki-laki','2018','Leo Tarigan','SMA','TNI','Jesicca','S1','PNS','Jl. Asoka',NULL,NULL,NULL,NULL,'SMP Santa Thomas','Jl. Katamso',0,'aktif','ips','Kristen',NULL,NULL),(201602058,'Egik ','Jl. Garuda','2004-01-02','Laki-laki','2018','','','','','','','','Fahmi ',NULL,'PNS','Jl. Garuda','SMP Nusan Penida','Jl. Setia Budi',0,'aktif','ips','Islam',NULL,NULL),(201602059,'Rahma Adinda','Jl. Dr Mansyur','2004-12-11','Perempuan','2018','Dandi','S1','Pekerja Kantoran','Arini','S1 ','Pegawai Bank','Jl. Dr Mansyur',NULL,NULL,NULL,NULL,'SMP Dharma','Jl. Dr Mansyur',0,'aktif','ips','Islam',NULL,NULL),(201602060,'Jenie Andini','Jl. Perumahan','2004-07-21','Perempuan','2018','Jans','S1','Pengusaha','Leli','S1','Rumah Tangga','Jl. Perumahan',NULL,NULL,NULL,NULL,'SMP N 1','Jl. Mawar',0,'aktif','ips','Budha',NULL,NULL),(201602061,'Anggika ','Jl. Mawar no 2','2004-08-02','Perempuan','2018','','','','','','','','Lianda',NULL,'Pegawai Kantor',' ',' SMP N 1','Jl. Mawar',0,'aktif','ips','Kristen',NULL,NULL),(201602062,'Naufal','Jl. Azmi no 7','2004-09-11','Laki-laki','2018','Fachrul','S1','Guru','Marischa','S1','Guru','Jl. Azmi no 1',NULL,NULL,NULL,NULL,'SMP Pancasila','Jl. Dr Mansyur',0,'aktif','ips','Islam',NULL,NULL),(201602063,'Amelia Fakhirah','Jl. Pembangunan','2004-05-21','Perempuan','2018','Muhammad Maulana','S1','PNS','Nur Nasywa ',' S1','Polwan','Jl. Pembangunan',NULL,NULL,NULL,NULL,'SMP Nusan Penida','Jl. Setia Budi',0,'aktif','ips','Islam',NULL,NULL);
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `verifikasi_data` AFTER INSERT ON `siswa` FOR EACH ROW INSERT INTO verifikasi (habis_waktu, nis) VALUES (curdate(), new.nis) */;;
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
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'Muhammad Bayhaqi Daulay','bayhaqi','5b75bd843edb24b0ace1d5eba6625272',2),(3,'Admin Demo','admin','0192023a7bbd73250516f069df18b500',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifikasi`
--

DROP TABLE IF EXISTS `verifikasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verifikasi` (
  `nomor_verifikasi` int(11) NOT NULL AUTO_INCREMENT,
  `habis_waktu` date NOT NULL,
  `nis` int(11) NOT NULL,
  PRIMARY KEY (`nomor_verifikasi`),
  KEY `nis` (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifikasi`
--

LOCK TABLES `verifikasi` WRITE;
/*!40000 ALTER TABLE `verifikasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `verifikasi` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ver_success_1` AFTER DELETE ON `verifikasi` FOR EACH ROW BEGIN
IF(old.habis_waktu='0000-00-00')
THEN
UPDATE siswa SET STATUS = 'seleksi' WHERE nis = old.nis;
ELSE
DELETE from siswa WHERE nis = old.nis and status = 'pending';
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'sisko'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `auto_delete_exp_verifikasi` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `auto_delete_exp_verifikasi` ON SCHEDULE EVERY 300 MINUTE STARTS '2019-06-28 10:57:46' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'hapus yang kadaluarsa waktu verifikasi nya' DO DELETE FROM verifikasi WHERE habis_waktu < NOW() - INTERVAL 7 DAY */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `auto_waktu_pendaftaran` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `auto_waktu_pendaftaran` ON SCHEDULE EVERY 300 MINUTE STARTS '2019-06-28 11:01:14' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
DECLARE nilai integer;
set nilai = "select penerimaan from identitas"; 
IF nilai <> 0 THEN
UPDATE identitas SET penerimaan = 0 WHERE tutup_pendaftaran = curdate() or tutup_pendaftaran < curdate();
END IF;
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'sisko'
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
/*!50001 VIEW `allpost` AS select `a`.`id_post` AS `id_post`,`a`.`isi` AS `isi`,`a`.`judul` AS `judul`,`b`.`nama` AS `nama`,`a`.`tanggal` AS `tanggal`,`a`.`status` AS `status`,`d`.`nama_kategori` AS `nama_kategori`,`a`.`cover` AS `cover` from ((`post` `a` join `user` `b` on((`a`.`id_user` = `b`.`id_user`))) join `kategori` `d` on((`a`.`id_kategori` = `d`.`id_kategori`))) */;
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

--
-- Final view structure for view `nilai_seleksi`
--

/*!50001 DROP TABLE IF EXISTS `nilai_seleksi`*/;
/*!50001 DROP VIEW IF EXISTS `nilai_seleksi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp932 */;
/*!50001 SET character_set_results     = cp932 */;
/*!50001 SET collation_connection      = cp932_japanese_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nilai_seleksi` AS select `nilai`.`nis` AS `nis`,avg(`nilai`.`nilai`) AS `nilai_avg` from `nilai` group by `nilai`.`nilai` desc,`nilai`.`nis` */;
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

-- Dump completed on 2019-06-30 12:51:03
