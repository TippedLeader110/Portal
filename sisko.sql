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
  `slug` tinyint NOT NULL,
  `id_post` tinyint NOT NULL,
  `isi` tinyint NOT NULL,
  `judul` tinyint NOT NULL,
  `nama` tinyint NOT NULL,
  `tanggal` tinyint NOT NULL,
  `id_kategori` tinyint NOT NULL,
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
  `foto` text,
  PRIMARY KEY (`id_guru`),
  KEY `jabatan_id` (`id_jabatan`),
  KEY `mapel_id` (`id_mapel`),
  CONSTRAINT `jabatan_id` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan_guru` (`id_jabatan`) ON UPDATE CASCADE,
  CONSTRAINT `mapel_id` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guru`
--

LOCK TABLES `guru` WRITE;
/*!40000 ALTER TABLE `guru` DISABLE KEYS */;
INSERT INTO `guru` VALUES (1,'1231942141391','Ali Hidayat',1,'Patumbak',1,NULL),(2,'1924414812491','Ihsan Maulana',2,'SS',1,NULL),(3,'123213131','Guru A',5,'1231',2,NULL),(4,'213131313','Guru B',5,'1312321',3,NULL),(5,'123131231','Ali',4,'Jalan Patumbak',9,'2c80953541237d5a3a88d5af78da25ff.jpg');
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
  `maks_ipa` int(11) DEFAULT NULL,
  `tutup_pendaftaran` date DEFAULT NULL,
  `note` text,
  `logo` text,
  `maks_ips` int(11) DEFAULT NULL,
  `kontak_lokasi` text,
  PRIMARY KEY (`id_identitas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitas`
--

LOCK TABLES `identitas` WRITE;
/*!40000 ALTER TABLE `identitas` DISABLE KEYS */;
INSERT INTO `identitas` VALUES (1,'DEMO SCHOOL','<p>&nbsp;&nbsp;&ldquo;Berprestasi dilandasi Iman, Taqwa dan Berbudaya Lingkungan serta Berwawasan Global&rdquo;</p>\n','<p>1.&nbsp; &nbsp;Mewujudkan pendidikan untuk menghasilkan prestasi dan lulusa berkwalitas tinggi yang peduli dengan lingkungan hidup</p>\n\n<p>2. &nbsp; Mewujudkan sumber daya manusia yang beriman, produktif, kreatif, inofatif dan efektif</p>\n\n<p>3. &nbsp; Mewujudkan pengembangan inovasi pembelajaran sesuai tuntutan</p>\n\n<p>4. &nbsp; Mewujudkan sumber daya manusia yang peduli dalam mencegahan pencemaran, mencegahan kerusakan lingkungan dan melestarikan lingkungan hidup</p>\n\n<p>5. &nbsp; Mewujudkan sarana prasarana reprensentatif dan up to date</p>\n\n<p>6. &nbsp; Mewujudkan pengelolaan pendidikan yang professional</p>\n\n<p>7. &nbsp; Mewujudkan sistim penilaian yang berafiliasi</p>\n\n<p>8. &nbsp; Mewujudkan budaya yang berkualifikasi</p>\n\n<p>9. &nbsp; Mewujudkan Sekolah yang bersih,hijau dan meminimalis hasil sampah yang tidak bermanfaat</p>\n\n<p>10. Mewujudkan manusia Indonesia yang mampu berkontribusi pada kehidupan bermasyarakat, berbangsa, bernegara dalam peradaban dunia</p>\n\n<p>11. Mewujudkan generasi emas, sehat tanpa narkoba</p>\n','SEKOLAH INI DICIPTAKAN OLEH ALI HIDAYAT SETELAH DIUSIR DARI WAKANDA',2,1,1,2019,2,'2019-06-28','<h3>Syarat Pendaftaran</h3>\n\n<ol>\n	<li>Telah dinyatakan lulus dan memiliki Ijazah/SKL dari SMP/ MTs/ SMPLB/ Paket B;</li>\n	<li>Berusia paling tinggi 21 (dua puluh satu) ( awal Tahun Pelajaran 2017/2018).</li>\n</ol>\n\n<h3>Pemberkasan</h3>\n\n<ol>\n	<li>Foto Copy Ijazah/SHUN/Surat Keterangan Lulus dari sekolah asal dan dilegalisir sebanyak 1 lembar, serta menyerahkan aslinya pada sekolah tempat mendaftar ( dijadwal yang di tentukan ).</li>\n	<li>Pas foto berwarna ukuran 3 x 4 cm sebanyak 2 lembar.</li>\n</ol>\n\n<h3>Cara Mendaftar</h3>\n\n<ol>\n	<li>Daftar akun pada halaman daftar ( tombol daftar di atas )</li>\n	<li>Setelah mengisi semua form pendaftaran , peserta didik baru diharapkan mengantarkan berkas yang diminta ke sekolah untuk verifikasi</li>\n	<li>Setelah verifikasi peserta didik baru dapat menunggu hasil seleksi di tanggal yang di tentukan yaitu ( 2019-07-15 )</li>\n</ol>\n\n<h3>Catatan Tambahan</h3>\n\n<ol>\n	<li>Saat verifikasi di kenakan biaya pendaftaran sebesar Rp.100.000,00</li>\n</ol>\n','dc581c17dde66f731764fcf1d81df3ba.png',2,'<p>Nomor Telp. : 021-XXXXX</p>\n\n<p>Email : schoo@demo.com</p>\n');
/*!40000 ALTER TABLE `identitas` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `sisko` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `done_seleksi` BEFORE UPDATE ON `identitas` FOR EACH ROW BEGIN
DECLARE lim_ipa integer;
DECLARE lim_ips integer;
DECLARE temp integer;

IF new.penerimaan=0
THEN
	SET temp= (select count(*) from siswa where status = 'seleksi' and jurusan = 'ipa');
	IF old.maks_ipa>temp OR old.maks_ipa=temp
	THEN
		UPDATE siswa set status = 'aktif' WHERE STATUS = 'seleksi' AND jurusan = 'ipa';
	ELSE
		set lim_ipa = (temp-old.maks_ipa);
		DELETE FROM siswa where status = 'seleksi' and jurusan = 'ipa' ORDER BY nilai_avg  ASC limit lim_ipa;		
		UPDATE siswa set status = 'aktif' WHERE STATUS = 'seleksi' AND jurusan = 'ipa';
	END IF;
	SET temp= (select count(*) from siswa where status = 'seleksi' and jurusan = 'ips');
	IF old.maks_ips>temp OR old.maks_ips=temp
	THEN
		UPDATE siswa set status = 'aktif' WHERE STATUS = 'seleksi' AND jurusan = 'ips';
	ELSE
		set lim_ips = (temp-old.maks_ips);
		DELETE FROM siswa where status = 'seleksi' and jurusan = 'ips' ORDER BY nilai_avg  ASC limit lim_ips;		
		UPDATE siswa set status = 'aktif' WHERE STATUS = 'seleksi' AND jurusan = 'ips';
	END IF;
	
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `sisko` CHARACTER SET utf8 COLLATE utf8_general_ci ;

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `img`
--

LOCK TABLES `img` WRITE;
/*!40000 ALTER TABLE `img` DISABLE KEYS */;
INSERT INTO `img` VALUES (25,'7cf31b8677ce07568abbcdee27115c53.jpg','Kunjungan ke perusahaan','public'),(28,'371500040bd3299fda012f096af9d173.jpg','Semarak Desember 2018','public'),(29,'e3c5aef93524556a88b58bd30ad1831a.jpg','Upacara hari lahir pancasila','public'),(30,'6e94c6c75220174954553d65965c976e.jpg','Peringatan Maulid Nabi','public'),(31,'7b09bd0397424c1954d22af2da6ca63b.jpg','Tari Saman Meraih Prestasi','public'),(33,'66d9af5f92e0d1c48a674157b97b87d4.jpg','Cheerleader','public'),(34,'69a4336bb4bdf18589d700fc11bb44a1.jpg','Kegiatan setelah UTS','public'),(35,'04f12532da462f902dcf33ded467e0f9.jpg','Tim Futsal','public');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (7,'News'),(8,'Kegiatan Siswa'),(9,'Literasi');
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
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `nama_siswa` int(11) NOT NULL,
  `matematika` int(11) NOT NULL,
  `b_inggris` int(11) NOT NULL,
  `b.indonesia` int(11) NOT NULL,
  `ipa` int(11) NOT NULL,
  `waktu` date NOT NULL,
  `status` enum('ubah','hapus') NOT NULL,
  KEY `id_siswa` (`id_siswa`)
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
INSERT INTO `navitem` VALUES (1,1,'item','green','pertama','http://localhost/Portal/Artikel/sekolah/15'),(3,3,'item','kedua','kedua','http://localhost/Portal/Artikel/5'),(4,4,'item','green','ketiga','pertama'),(5,5,'drop','','Unamed',''),(6,6,'drop','','Unamed',''),(7,7,'drop','','Unamed','');
/*!40000 ALTER TABLE `navitem` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `sisko` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `maks` BEFORE INSERT ON `navitem` FOR EACH ROW BEGIN
DECLARE nilai integer;
SELECT COUNT(*) INTO @cnt FROM navitem;
  IF nilai >= 6 THEN
    call error();
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `sisko` CHARACTER SET utf8 COLLATE utf8_general_ci ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai`
--

LOCK TABLES `nilai` WRITE;
/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `sisko` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
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
ALTER DATABASE `sisko` CHARACTER SET utf8 COLLATE utf8_general_ci ;
ALTER DATABASE `sisko` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
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
ALTER DATABASE `sisko` CHARACTER SET utf8 COLLATE utf8_general_ci ;

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
  `judul` mediumtext NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `isi` varchar(500) NOT NULL,
  `tanggal` date NOT NULL,
  `status` mediumtext NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `cover` mediumtext,
  `slug` mediumtext,
  PRIMARY KEY (`id_post`),
  KEY `user_id` (`id_user`),
  KEY `kategori_id` (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (15,'Forum Penerimaan Siswa Baru Sebentar Lagi Dibuka',NULL,'<p>Penerimaan siswa didik baru&nbsp;</p>\n','2019-06-17','public',3,'bf3968965c2329d9d9f3ab0e5cba9e44.png',NULL),(17,'ww',NULL,'<p>awd</p>\n','2019-06-30','public',3,'08ca7a11a068140494cd05be0bf352d4.jpg','ww'),(18,'coba',NULL,'<p>ww</p>\n','2019-06-30','public',3,'b439c50ba76ba30d1ecbca44988c6447.jpg','coba'),(19,'UPACARA HARI LAHIR PANCASILA 1 JUNI BERLANGSUNG ',7,'<p>Hari Sabtu, 1 Juni 2019 bertepatan dengan 27 Ramadhan 1440 H, melaksanakan Upacara hari kelahiran Pancasila bertempat di lapangan sekolah. Ada yang menarik dari upacara kali ini karena pertama: bertepatan dengan bulan suci Ramadhan hari yang ke 27 dan beberapa guru maupun karyawan ada yang sudah pulang kampung halaman dalam menyambut hari raya Idul Fitri, kedua : Kepala sekolah meminta agar yang sudah pulang kampung ikut melaksanakan upacara di wilayah masing-masing dengan bergabung ke sekola','2019-07-03','public',7,'e2d23dc53a9afd1bd2d799a40188c008.jpg','UPACARA-HARI-LAHIR-PANCASILA-1-JUNI-BERLANGSUNG'),(20,'5 SMA NEGERI TERBAIK DKI JAKARTA BERDASARKAN UN 2019',7,'<p><br />\nBerikut link 5 SMA Negeri Terbaik DKI Jakarta&nbsp;<br />\nSilakan klik di sini<br />\n<br />\n<a href=\"http://kom.ps/AFzILA\">http://kom.ps/AFzILA</a>&nbsp;</p>\n','2019-07-01','public',7,'74402a38f31b42b809ac2ec35596d16e.jpg','5-SMA-NEGERI-TERBAIK-DKI-JAKARTA-BERDASARKAN-UN-2019'),(21,'KEGIATAN KUNJUNGAN KE PERUSAHAAN',7,'<p>Selasa, 11 Desember 2018 sejumlah siswa dan guru kewirausahaan SMAN 78 Jakarta melakukan kegiatan kunjungan perusahaan ke Pabrik Nestle Indonesia di Karawang, Jawa Barat. Kegiatan ini berlangsung satu hari dari pukul 7.30 sampai pukul 16.00 dan berjalan dengan tertib lancar.&nbsp;<br />\n<br />\nAgenda kunjungan perusahaan ini merupakan program sekolah rujukan tahun 2018. SMAN 78 Jakarta merupakan salah satu sekolah yang dipercaya oleh kementrian untuk melaksanakan progran sekolah Rujukan sejak','2018-12-03','public',7,'fadaf01b0acc481a1ae5b1b0037c644f.jpg','KEGIATAN-KUNJUNGAN-KE-PERUSAHAAN'),(22,'PERINGANTAN MAULID NABI MUHAMMAD SAW.1440 H',7,'<p>Tanggal 6 November 2018/1440 H&nbsp;diselenggarakan peringatan Maulid Nabi Muhammad SAW dengan penceramah Ustadz Hidayat Arifianto dan bintang tamu Agung Juna. Tema Malid Nabi kali ini adalah &quot;Our Guidance&quot; The Best of Mankind&nbsp;<br />\n<br />\nKegiatan ini dimeriahkan dengan penampilan Hafiz mmunity , Marawis, pembacaan Riwayat Nabi Muhammad SAW dan host dari siswa rohis yang cukup keren. Kegiatan ini didahului dengan sambutan Kepala Sekolah, Kepala sekolah dalam sambutannya menga','2018-12-07','public',7,'a2d8b53917a8e8bd704f866d75d621a6.jpg','PERINGANTAN-MAULID-NABI-MUHAMMAD-SAW1440-H'),(23,'SELEKSI_MUTASI2018',7,'<p>Proses Seleksi Mutasi siswa untuk Semester Genap tahun 2017/2018 :&nbsp;<br />\n<br />\n<br />\nDengan materi seleksi :&nbsp;<br />\n<br />\nTahap I Hari Jumat&nbsp;<br />\n<br />\nKelas X --&gt; Matematika dan Bahasa &amp; Sastra Indonesia<br />\n<br />\nKelas XI --&gt; Matematika dan Fisika<br />\n<br />\n<br />\nTahap II hari Senin<br />\n<br />\nKelas X --&gt; Bahasa &amp; Sastra Inggris dan Antropologi<br />\n<br />\nKelas XI --&gt; Kimia dan Biologi<br />\n<br />\n<br />\n<br />\nJumlah alokasi kursi koson','2018-02-12','public',7,'a5b3cfae2c096df17a207dc4fd1a0b68.jpg','SELEKSI_MUTASI2018'),(24,'Edufair 2017',7,'<p>EDUFAIR TAHUN 2017&nbsp;<br />\n<br />\nAcara rutin tahunan yang bermanfaat untuk memberikan informasi mengenai perguruan tinggi dalam negeri maupun perguruan tinggi yang ada di luar negeri, serta kiat-kiat untuk mendapatkan bea siswa yang ada di dalam maupun diluar negeri. Mari kita kunjungi dan ramaikan.&nbsp;</p>\n','2017-10-03','public',7,'fcf63868ea7a91e770c6df4ae57fb6b7.jpg','Edufair-2017'),(25,'MENGELOLA KONFLIK DI SEKOLAH',9,'<p>MENGELOLA KONFLIK DI SEKOLAH&nbsp;<br />\nOleh :Dr. Saryono, M.si&nbsp;<br />\n<br />\nPengertian Konflik&nbsp;<br />\nMenurut Mc Shane dkk (2010: 328) Konflik adalah suatu proses di mana satu pihak merasa bahwa Kepentingannya ditentang atau tidak disetujui oleh pihak lain (conflictis a process in which one party perceives that his or hers interests are beingopposed or negatively affected by another party).&nbsp;<br />\n<br />\nMenurut Schermehorn dkk (2005 : 338) Konflik terjadi ketika pihak-pihak','2018-10-01','public',7,'f792859a5e96250b1f53463dab04a859.jpg','MENGELOLA-KONFLIK-DI-SEKOLAH'),(30,'Putus Rindu',9,'<p>Nama : Muhammad Rafi Syamsudi&nbsp;<br />\nKelas : X IPS A<br />\n<br />\nDianggap namun tak dirasa&nbsp;<br />\nMungkin begini rasanya&nbsp;<br />\nHampa dan menyiksa&nbsp;<br />\n<br />\nDirundung pilu menyesakkan dada&nbsp;<br />\nIa tak pernah merasa&nbsp;<br />\nTak pernah menghargai pula&nbsp;<br />\n<br />\nBodoh&nbsp;<br />\nUntuk apa memikirkannya?&nbsp;<br />\nSeperti jejak kaki disebuah pantai&nbsp;<br />\nSeperti oksigen yang dibutuhkan namun tak dihargai&nbsp;<br />\n<br />\nKecewa namun gundah&','2016-06-05','public',7,'0d24d738cb77e83311e919a05b3aeca4.jpg','Putus-Rindu'),(31,'Aie es? Segar di mulut, gegar di perut',9,'<p>Oleh Nicholas Yamahoki (XI MIA H/25/2016)<br />\n<br />\nApapun makanannya, minumnya air es. Pernah dengar kalimat tersebut? Ya, mungkin kalimat tersebut pernah terbesit di benak kamu-kamu yang lagi baca artikel ini, apalagi kalo abis makan makanan yang puedesss atau makan soto yang panas-panas atau makanan panas yang superrrr pedes. Wah, pastinya minuman pertama yang paling ampuh mengusir panas, ya air es atau air dingin.&nbsp;<br />\n<br />\nNamun, tahukah kamu bahwa minum air dingin sehabis ma','2016-05-03','public',7,'9dad0608f6c03a6d125f655760972f85.jpg','Aie-es-Segar-di-mulut-gegar-di-perut'),(32,'TARI SAMAN SMAN 78 MERAIH PRESTASI MEMBANGGAKAN.',8,'<p>Ekstrakurikuler Tari Ratoh Jaroe SMA Negeri 78 Jakarta berhasil meraih prestasi di SKYFEST 2019 yang merupakan acara tahunan dari SMA Labschool Kebayoran. Lomba tersebut diadakan pada tanggal 9 Februari 2019 yang diikuti oleh 13 peserta, diantaranya SMAN 78 Jakarta, SMAN 65 Jakarta, SMAI Al Azhar BSD, SMAN 1 Tangerang, dll. Tim tersebut tampil diurutan ke-5 dengan didampingi oleh syekh Teuku Admiral.&nbsp;<br />\nDi ajang tersebut, ICES (sebutan untuk ekstrakurikuler Tari Ratoh Jaroe) berhasil','2019-02-10','public',7,'93ab7e3d067a8e090c14412d949548ae.jpg','TARI-SAMAN-SMAN-78-MERAIH-PRESTASI-MEMBANGGAKAN'),(33,'PAMERAN KARYA SENI RUPA BERBAHAN DAUR ULANG DI KEMENTRIAN LINGKUNGAN HIDUP DAN KEHUTANAN 2018',8,'<p>Tanggal 21 Desember 2018, Karya Peserta didik SMAN 78 Jakarta dalam bidang Seni Rupa khususnya yang berbahan daur ulang dipamerkan di Gedung Kementrian Lingkungan Hidup dan kehutanan. Selain SMAN 78 ikut pameran juga SMAN 23, SMAN 42, dan sekolah lain yang berjenjang SD dan SMP. Peserta pameran merupakan sekolah yang mendapat penhargaan sebagai sekolah Adiwiyata Nasional dan Adiwiyata Mandiri tahun 2018. SMA Negeri 78 Jakarta mendapat penghargaan sebagai sekolah Adiwiyata Mandiri yang sebelum','2018-11-03','public',7,'bf916b44f944bd984a5e04b8e88a27f9.jpg','PAMERAN-KARYA-SENI-RUPA-BERBAHAN-DAUR-ULANG-DI-KEMENTRIAN-LINGKUNGAN-HIDUP-DAN-KEHUTANAN-2018'),(34,'BUKU KARYA PESERTA DIDIK ',8,'<p>Buku Karya Pesera didik SMAN 78 diantaranya adalah :&nbsp;<br />\n1. Syair Emas ( Tulisan guru dan siswa sman 78 Jakarta)&nbsp;<br />\n2. Dark Moon karya Monica Niken&nbsp;<br />\n3. High School with Belt karya Abraham wiliam&nbsp;<br />\n4. Majalah AKSARA.</p>\n','2018-07-03','public',7,'0a0064853fa2d0a3d7dac3fe73d9ba41.jpg','BUKU-KARYA-PESERTA-DIDIK'),(35,'SEMARAK DESEMBER 2018',8,'<p>Kamis, 13 desember 2018 terdiri atas gabungan tiga kegiatan yaitu pekan olah raga dan seni,&nbsp;<br />\ndesember hijau, dan Jupan Eksport Tournament (JET). Kegiatan ini di adakan dalam rangka berakhirnya penilaian akhir semesterGanjil tahun pelajaran 2018-2019. Cabang perlombaan olah raga yang diselenggarakana dalaha futsal, basket, pingpong, dan badminton. Sedangkan perlombaan seni antara lain lomba seni kriya, green fashion, menghias pot, dan poster digital. Kemudian ada perlombaan mobile l','2018-05-03','public',7,'653217889523e112e84e4c1f5c84948b.jpg','SEMARAK-DESEMBER-2018'),(36,'PERINGANTAN MAULID NABI MUHAMMAD SAW.1440 H',8,'<p>Tanggal 6 November 2018/1440 H di Lapangan SMAN 78 Jakarta diselenggarakan peringatan Maulid Nabi Muhammad SAW dengan penceramah Ustadz Hidayat Arifianto dan bintang tamu Agung Juna. Tema Malid Nabi kali ini adalah &quot;Our Guidance&quot; The Best of Mankind. Kegiatan ini dimeriahkan dengan penampilan Hafiz mmunity SMAN 78, Marawis, pembacaan Riwayat Nabi Muhammad SAW dan host dari siswa rohis yang cukup keren. Kegiatan ini didahului dengan sambutan kepala SMAN 78 Jakarta DR. Saryono, M.Si, ','2018-11-06','public',7,'4c65d269be18cbce3cfdbe62c78a9be5.jpg','PERINGANTAN-MAULID-NABI-MUHAMMAD-SAW1440-H');
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
  `foto` text,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswa`
--

LOCK TABLES `siswa` WRITE;
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` VALUES (1,'','','0000-00-00','Laki-laki','2019','','','','','','','',NULL,NULL,NULL,NULL,'','',NULL,'seleksi','ipa',NULL,NULL,50,NULL),(2,'','','0000-00-00','Laki-laki','2019','','','','','','','',NULL,NULL,NULL,NULL,'','',NULL,'seleksi','ipa',NULL,NULL,50,NULL),(4,'','','0000-00-00','Laki-laki','2019','','','','','','','',NULL,NULL,NULL,NULL,'','',NULL,'seleksi','ipa',NULL,NULL,50,NULL),(6,'','','0000-00-00','Laki-laki','2019','','','','','','','',NULL,NULL,NULL,NULL,'','',NULL,'seleksi','ips',NULL,NULL,50,NULL),(7,'','','0000-00-00','Laki-laki','2019','','','','','','','',NULL,NULL,NULL,NULL,'','',NULL,'seleksi','ips',NULL,NULL,50,NULL);
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `sisko` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
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
ALTER DATABASE `sisko` CHARACTER SET utf8 COLLATE utf8_general_ci ;
ALTER DATABASE `sisko` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `sukses_seleksi` BEFORE UPDATE ON `siswa` FOR EACH ROW BEGIN
DECLARE jur integer;
DECLARE nilai_a integer;
IF old.jurusan = 'ipa'
THEN
SET jur = 1;
ELSEIF old.jurusan = 'ips'
THEN
SET jur = 2;
end IF;

IF new.status = 'aktif'
THEN
set new.nis = concat(year(curdate()),'0',jur,old.nis);
end IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `sisko` CHARACTER SET utf8 COLLATE utf8_general_ci ;

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
-- Temporary table structure for view `tempsiswa`
--

DROP TABLE IF EXISTS `tempsiswa`;
/*!50001 DROP VIEW IF EXISTS `tempsiswa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `tempsiswa` (
  `nis` tinyint NOT NULL,
  `jurusan` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `urutipa`
--

DROP TABLE IF EXISTS `urutipa`;
/*!50001 DROP VIEW IF EXISTS `urutipa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `urutipa` (
  `nis` tinyint NOT NULL,
  `NUM` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `urutips`
--

DROP TABLE IF EXISTS `urutips`;
/*!50001 DROP VIEW IF EXISTS `urutips`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `urutips` (
  `nis` tinyint NOT NULL,
  `NUM` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'Muhammad Bayhaqi Daulay','bayhaqi','5b75bd843edb24b0ace1d5eba6625272',2),(3,'Admin Demo','admin','0192023a7bbd73250516f069df18b500',2),(5,'DEMO','demo','fe01ce2a7fbac8fafaed7c982a04e229',2),(7,'ihsan','ihsan','f9c8074d5a013e0729373f8f74cd0648',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifikasi`
--

LOCK TABLES `verifikasi` WRITE;
/*!40000 ALTER TABLE `verifikasi` DISABLE KEYS */;
INSERT INTO `verifikasi` VALUES (1,'2019-07-03',1),(2,'2019-07-03',2),(3,'2019-07-03',3),(4,'2019-07-03',4),(5,'2019-07-03',5),(6,'2019-07-03',6),(7,'2019-07-03',7);
/*!40000 ALTER TABLE `verifikasi` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `sisko` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
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
ALTER DATABASE `sisko` CHARACTER SET utf8 COLLATE utf8_general_ci ;

--
-- Dumping events for database 'sisko'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `auto_delete_exp_verifikasi` */;
DELIMITER ;;
ALTER DATABASE `sisko` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;;
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
ALTER DATABASE `sisko` CHARACTER SET utf8 COLLATE utf8_general_ci ;;
/*!50106 DROP EVENT IF EXISTS `auto_waktu_pendaftaran` */;;
DELIMITER ;;
ALTER DATABASE `sisko` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;;
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
ALTER DATABASE `sisko` CHARACTER SET utf8 COLLATE utf8_general_ci ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'sisko'
--
/*!50003 DROP PROCEDURE IF EXISTS `allpost` */;
ALTER DATABASE `sisko` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
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
a.slug, a.tanggal ,a.id_post, a.judul, a.cover ,c.nama ,a.id_kategori, a.status , b.nama_kategori FROM post a inner join kategori b on a.id_kategori=b.id_kategori inner join user c on c.id_user = a.id_user where a.id_kategori = AN;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `sisko` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `error` */;
ALTER DATABASE `sisko` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `error`()
    NO SQL
select 'penuh_lord' ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `sisko` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `mypost` */;
ALTER DATABASE `sisko` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
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
a.id_post,a.slug, a.judul, c.nama ,a.id_kategori, a.status , b.nama_kategori FROM post a inner join kategori b on a.id_kategori=b.id_kategori inner join user c on c.id_user = a.id_user where c.id_user=A;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `sisko` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `nismaker` */;
ALTER DATABASE `sisko` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nismaker`(IN `nisa` INT(4), IN `jur` INT(4))
    NO SQL
BEGIN
DECLARE nilai_a integer;
set nilai_a = (select num from urutsiswa WHERE nis = nisa);
UPDATE siswa SET nis = concat(year(curdate()),'0',jur,nilai_a) where nis = nisa;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `sisko` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `postname` */;
ALTER DATABASE `sisko` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
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
a.id_post, a.slug ,a.judul, c.nama ,a.id_kategori, a.status , b.nama_kategori FROM post a inner join kategori b on a.id_kategori=b.id_kategori inner join user c on c.id_user = a.id_user where a.id_kategori=ID and a.judul like CONCAT('%', @name, '%')
LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `sisko` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `reset` */;
ALTER DATABASE `sisko` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp932 */ ;
/*!50003 SET character_set_results = cp932 */ ;
/*!50003 SET collation_connection  = cp932_japanese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reset`()
begin
alter table siswa auto_increment = 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `sisko` CHARACTER SET utf8 COLLATE utf8_general_ci ;

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
/*!50001 VIEW `allpost` AS select `a`.`slug` AS `slug`,`a`.`id_post` AS `id_post`,`a`.`isi` AS `isi`,`a`.`judul` AS `judul`,`b`.`nama` AS `nama`,`a`.`tanggal` AS `tanggal`,`d`.`id_kategori` AS `id_kategori`,`a`.`status` AS `status`,`d`.`nama_kategori` AS `nama_kategori`,`a`.`cover` AS `cover` from ((`post` `a` join `user` `b` on((`a`.`id_user` = `b`.`id_user`))) join `kategori` `d` on((`a`.`id_kategori` = `d`.`id_kategori`))) */;
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

--
-- Final view structure for view `tempsiswa`
--

/*!50001 DROP TABLE IF EXISTS `tempsiswa`*/;
/*!50001 DROP VIEW IF EXISTS `tempsiswa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp932 */;
/*!50001 SET character_set_results     = cp932 */;
/*!50001 SET collation_connection      = cp932_japanese_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tempsiswa` AS select `a`.`nis` AS `nis`,`a`.`jurusan` AS `jurusan` from (`siswa` `a` join `identitas` `b`) where (`a`.`thn_ajaran` = `b`.`tahun_penerimaan`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `urutipa`
--

/*!50001 DROP TABLE IF EXISTS `urutipa`*/;
/*!50001 DROP VIEW IF EXISTS `urutipa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp932 */;
/*!50001 SET character_set_results     = cp932 */;
/*!50001 SET collation_connection      = cp932_japanese_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `urutipa` AS select `t`.`nis` AS `nis`,((select count(0) from `tempsiswa` where ((`tempsiswa`.`nis` < `t`.`nis`) and (`tempsiswa`.`jurusan` = 'ipa'))) + 1) AS `NUM` from `tempsiswa` `t` where (`t`.`jurusan` = 'ipa') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `urutips`
--

/*!50001 DROP TABLE IF EXISTS `urutips`*/;
/*!50001 DROP VIEW IF EXISTS `urutips`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp932 */;
/*!50001 SET character_set_results     = cp932 */;
/*!50001 SET collation_connection      = cp932_japanese_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `urutips` AS select `t`.`nis` AS `nis`,((select count(0) from `tempsiswa` where ((`tempsiswa`.`nis` < `t`.`nis`) and (`tempsiswa`.`jurusan` = 'ips'))) + 1) AS `NUM` from `tempsiswa` `t` where (`t`.`jurusan` = 'ips') */;
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

-- Dump completed on 2019-07-03 18:29:33
