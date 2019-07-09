-- MySQL dump 10.16  Distrib 10.1.35-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: sisko
-- ------------------------------------------------------
-- Server version	10.1.35-MariaDB

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
  `jumlah_siswa_aktif` tinyint NOT NULL,
  `jumlah_siswa_pending` tinyint NOT NULL,
  `jumlah_siswa_seleksi` tinyint NOT NULL
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
  `nip` varchar(18) NOT NULL,
  `nama_guru` text NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `foto` text,
  PRIMARY KEY (`nip`),
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
INSERT INTO `guru` VALUES ('123131231','Ali',4,'Jalan Patumbak',9,'2c80953541237d5a3a88d5af78da25ff.jpg'),('1231942141391','Ali Hidayat',1,'Patumbak',1,NULL),('123213131','Guru A',5,'1231',2,NULL),('1924414812491','Ihsan Maulana',2,'SS',1,NULL),('213131313','Guru B',5,'1312321',3,NULL);
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
INSERT INTO `identitas` VALUES (1,'TEST','<p>&nbsp;&nbsp;&ldquo;Berprestasi dilandasi Iman, Taqwa dan Berbudaya Lingkungan serta Berwawasan Global&rdquo;</p>\n','<p>1.&nbsp; &nbsp;Mewujudkan pendidikan untuk menghasilkan prestasi dan lulusa berkwalitas tinggi yang peduli dengan lingkungan hidup</p>\n\n<p>2. &nbsp; Mewujudkan sumber daya manusia yang beriman, produktif, kreatif, inofatif dan efektif</p>\n\n<p>3. &nbsp; Mewujudkan pengembangan inovasi pembelajaran sesuai tuntutan</p>\n\n<p>4. &nbsp; Mewujudkan sumber daya manusia yang peduli dalam mencegahan pencemaran, mencegahan kerusakan lingkungan dan melestarikan lingkungan hidup</p>\n\n<p>5. &nbsp; Mewujudkan sarana prasarana reprensentatif dan up to date</p>\n\n<p>6. &nbsp; Mewujudkan pengelolaan pendidikan yang professional</p>\n\n<p>7. &nbsp; Mewujudkan sistim penilaian yang berafiliasi</p>\n\n<p>8. &nbsp; Mewujudkan budaya yang berkualifikasi</p>\n\n<p>9. &nbsp; Mewujudkan Sekolah yang bersih,hijau dan meminimalis hasil sampah yang tidak bermanfaat</p>\n\n<p>10. Mewujudkan manusia Indonesia yang mampu berkontribusi pada kehidupan bermasyarakat, berbangsa, bernegara dalam peradaban dunia</p>\n\n<p>11. Mewujudkan generasi emas, sehat tanpa narkoba</p>\n','SEKOLAH INI DICIPTAKAN OLEH ALI HIDAYAT SETELAH DIUSIR DARI WAKANDA',2,2,0,2019,40,'2019-06-28','<h3>Syarat Pendaftaran</h3>\n\n<ol>\n	<li>Telah dinyatakan lulus dan memiliki Ijazah/SKL dari SMP/ MTs/ SMPLB/ Paket B;</li>\n	<li>Berusia paling tinggi 21 (dua puluh satu) ( awal Tahun Pelajaran 2017/2018).</li>\n</ol>\n\n<h3>Pemberkasan</h3>\n\n<ol>\n	<li>Foto Copy Ijazah/SHUN/Surat Keterangan Lulus dari sekolah asal dan dilegalisir sebanyak 1 lembar, serta menyerahkan aslinya pada sekolah tempat mendaftar ( dijadwal yang di tentukan ).</li>\n	<li>Pas foto berwarna ukuran 3 x 4 cm sebanyak 2 lembar.</li>\n</ol>\n\n<h3>Cara Mendaftar</h3>\n\n<ol>\n	<li>Daftar akun pada halaman daftar ( tombol daftar di atas )</li>\n	<li>Setelah mengisi semua form pendaftaran , peserta didik baru diharapkan mengantarkan berkas yang diminta ke sekolah untuk verifikasi</li>\n	<li>Setelah verifikasi peserta didik baru dapat menunggu hasil seleksi di tanggal yang di tentukan yaitu ( 2019-07-15 )</li>\n</ol>\n\n<h3>Catatan Tambahan</h3>\n\n<ol>\n	<li>Saat verifikasi di kenakan biaya pendaftaran sebesar Rp.100.000,00</li>\n</ol>\n','dc581c17dde66f731764fcf1d81df3ba.png',80,'<p>Nomor Telp. : 021-XXXXX</p>\n\n<p>Email : schoo@demo.com</p>\n');
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `seleksi_done` AFTER UPDATE ON `identitas` FOR EACH ROW BEGIN
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
-- Temporary table structure for view `join_sisver`
--

DROP TABLE IF EXISTS `join_sisver`;
/*!50001 DROP VIEW IF EXISTS `join_sisver`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `join_sisver` (
  `nomor_verifikasi` tinyint NOT NULL,
  `nis` tinyint NOT NULL,
  `nama_siswa` tinyint NOT NULL,
  `alamat` tinyint NOT NULL,
  `tgl_lahir` tinyint NOT NULL,
  `jenis_kel` tinyint NOT NULL,
  `thn_ajaran` tinyint NOT NULL,
  `nama_ayah` tinyint NOT NULL,
  `pend_akhir_ayah` tinyint NOT NULL,
  `pekerjaan_ayah` tinyint NOT NULL,
  `nama_ibu` tinyint NOT NULL,
  `pend_akhir_ibu` tinyint NOT NULL,
  `pekerjaan_ibu` tinyint NOT NULL,
  `alamat_ortu` tinyint NOT NULL,
  `nama_wali` tinyint NOT NULL,
  `pend_akhir_wali` tinyint NOT NULL,
  `pekerjaan_wali` tinyint NOT NULL,
  `alamat_wali` tinyint NOT NULL,
  `sekolah_asal` tinyint NOT NULL,
  `alamat_sekolah` tinyint NOT NULL,
  `tahun_lulus` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `jurusan` tinyint NOT NULL,
  `agama` tinyint NOT NULL,
  `foto_skhun` tinyint NOT NULL,
  `nilai_avg` tinyint NOT NULL,
  `foto` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
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
  `id_mapel` tinyint NOT NULL,
  `nip` tinyint NOT NULL,
  `nama_guru` tinyint NOT NULL,
  `jabatan` tinyint NOT NULL,
  `mapel` tinyint NOT NULL,
  `alamat` tinyint NOT NULL,
  `foto` tinyint NOT NULL
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
  `nis` int(11) NOT NULL,
  `nama_siswa` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` text NOT NULL,
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
INSERT INTO `navitem` VALUES (2,2,'item','green','Seleksi Mutasi','http://localhost/Portal/Artikel/sekolah/23'),(3,3,'item','kedua','Desember 2018','http://localhost/Portal/Artikel/sekolah/35'),(1,1,'item','green','Edufair','http://localhost/Portal/Artikel/sekolah/24'),(4,4,'drop','','demo','http://localhost/Portal/Artikel/sekolah/19');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai`
--

LOCK TABLES `nilai` WRITE;
/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
INSERT INTO `nilai` VALUES (1,1,2,50),(2,1,1,50),(3,1,3,50),(4,1,4,50),(5,140,1,80),(6,140,2,80),(7,140,4,80),(8,140,3,80);
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
INSERT INTO `post` VALUES (19,'UPACARA HARI LAHIR PANCASILA 1 JUNI BERLANGSUNG ',7,'<p>Hari Sabtu, 1 Juni 2019 bertepatan dengan 27 Ramadhan 1440 H, melaksanakan Upacara hari kelahiran Pancasila bertempat di lapangan sekolah. Ada yang menarik dari upacara kali ini karena pertama: bertepatan dengan bulan suci Ramadhan hari yang ke 27 dan beberapa guru maupun karyawan ada yang sudah pulang kampung halaman dalam menyambut hari raya Idul Fitri, kedua : Kepala sekolah meminta agar yang sudah pulang kampung ikut melaksanakan upacara di wilayah masing-masing dengan bergabung ke sekola','2019-07-03','public',7,'e2d23dc53a9afd1bd2d799a40188c008.jpg','UPACARA-HARI-LAHIR-PANCASILA-1-JUNI-BERLANGSUNG'),(20,'5 SMA NEGERI TERBAIK DKI JAKARTA BERDASARKAN UN 2019',7,'<p><br />\nBerikut link 5 SMA Negeri Terbaik DKI Jakarta&nbsp;<br />\nSilakan klik di sini<br />\n<br />\n<a href=\"http://kom.ps/AFzILA\">http://kom.ps/AFzILA</a>&nbsp;</p>\n','2019-07-01','public',7,'74402a38f31b42b809ac2ec35596d16e.jpg','5-SMA-NEGERI-TERBAIK-DKI-JAKARTA-BERDASARKAN-UN-2019'),(21,'KEGIATAN KUNJUNGAN KE PERUSAHAAN',7,'<p>Selasa, 11 Desember 2018 sejumlah siswa dan guru kewirausahaan SMAN 78 Jakarta melakukan kegiatan kunjungan perusahaan ke Pabrik Nestle Indonesia di Karawang, Jawa Barat. Kegiatan ini berlangsung satu hari dari pukul 7.30 sampai pukul 16.00 dan berjalan dengan tertib lancar.&nbsp;<br />\n<br />\nAgenda kunjungan perusahaan ini merupakan program sekolah rujukan tahun 2018. SMAN 78 Jakarta merupakan salah satu sekolah yang dipercaya oleh kementrian untuk melaksanakan progran sekolah Rujukan sejak','2018-12-03','public',7,'fadaf01b0acc481a1ae5b1b0037c644f.jpg','KEGIATAN-KUNJUNGAN-KE-PERUSAHAAN'),(22,'PERINGANTAN MAULID NABI MUHAMMAD SAW.1440 H',7,'<p>Tanggal 6 November 2018/1440 H&nbsp;diselenggarakan peringatan Maulid Nabi Muhammad SAW dengan penceramah Ustadz Hidayat Arifianto dan bintang tamu Agung Juna. Tema Malid Nabi kali ini adalah &quot;Our Guidance&quot; The Best of Mankind&nbsp;<br />\n<br />\nKegiatan ini dimeriahkan dengan penampilan Hafiz mmunity , Marawis, pembacaan Riwayat Nabi Muhammad SAW dan host dari siswa rohis yang cukup keren. Kegiatan ini didahului dengan sambutan Kepala Sekolah, Kepala sekolah dalam sambutannya menga','2018-12-07','public',7,'a2d8b53917a8e8bd704f866d75d621a6.jpg','PERINGANTAN-MAULID-NABI-MUHAMMAD-SAW1440-H'),(23,'SELEKSI_MUTASI2018',7,'<p>Proses Seleksi Mutasi siswa untuk Semester Genap tahun 2017/2018 :&nbsp;<br />\n<br />\n<br />\nDengan materi seleksi :&nbsp;<br />\n<br />\nTahap I Hari Jumat&nbsp;<br />\n<br />\nKelas X --&gt; Matematika dan Bahasa &amp; Sastra Indonesia<br />\n<br />\nKelas XI --&gt; Matematika dan Fisika<br />\n<br />\n<br />\nTahap II hari Senin<br />\n<br />\nKelas X --&gt; Bahasa &amp; Sastra Inggris dan Antropologi<br />\n<br />\nKelas XI --&gt; Kimia dan Biologi<br />\n<br />\n<br />\n<br />\nJumlah alokasi kursi koson','2018-02-12','public',7,'a5b3cfae2c096df17a207dc4fd1a0b68.jpg','SELEKSI_MUTASI2018'),(24,'Edufair 2017',7,'<p>EDUFAIR TAHUN 2017&nbsp;<br />\n<br />\nAcara rutin tahunan yang bermanfaat untuk memberikan informasi mengenai perguruan tinggi dalam negeri maupun perguruan tinggi yang ada di luar negeri, serta kiat-kiat untuk mendapatkan bea siswa yang ada di dalam maupun diluar negeri. Mari kita kunjungi dan ramaikan.&nbsp;</p>\n','2017-10-03','public',7,'fcf63868ea7a91e770c6df4ae57fb6b7.jpg','Edufair-2017'),(25,'MENGELOLA KONFLIK DI SEKOLAH',9,'<p>MENGELOLA KONFLIK DI SEKOLAH&nbsp;<br />\nOleh :Dr. Saryono, M.si&nbsp;<br />\n<br />\nPengertian Konflik&nbsp;<br />\nMenurut Mc Shane dkk (2010: 328) Konflik adalah suatu proses di mana satu pihak merasa bahwa Kepentingannya ditentang atau tidak disetujui oleh pihak lain (conflictis a process in which one party perceives that his or hers interests are beingopposed or negatively affected by another party).&nbsp;<br />\n<br />\nMenurut Schermehorn dkk (2005 : 338) Konflik terjadi ketika pihak-pihak','2018-10-01','public',7,'f792859a5e96250b1f53463dab04a859.jpg','MENGELOLA-KONFLIK-DI-SEKOLAH'),(30,'Putus Rindu',9,'<p>Nama : Muhammad Rafi Syamsudi&nbsp;<br />\nKelas : X IPS A<br />\n<br />\nDianggap namun tak dirasa&nbsp;<br />\nMungkin begini rasanya&nbsp;<br />\nHampa dan menyiksa&nbsp;<br />\n<br />\nDirundung pilu menyesakkan dada&nbsp;<br />\nIa tak pernah merasa&nbsp;<br />\nTak pernah menghargai pula&nbsp;<br />\n<br />\nBodoh&nbsp;<br />\nUntuk apa memikirkannya?&nbsp;<br />\nSeperti jejak kaki disebuah pantai&nbsp;<br />\nSeperti oksigen yang dibutuhkan namun tak dihargai&nbsp;<br />\n<br />\nKecewa namun gundah&','2016-06-05','public',7,'0d24d738cb77e83311e919a05b3aeca4.jpg','Putus-Rindu'),(31,'Aie es? Segar di mulut, gegar di perut',9,'<p>Oleh Nicholas Yamahoki (XI MIA H/25/2016)<br />\n<br />\nApapun makanannya, minumnya air es. Pernah dengar kalimat tersebut? Ya, mungkin kalimat tersebut pernah terbesit di benak kamu-kamu yang lagi baca artikel ini, apalagi kalo abis makan makanan yang puedesss atau makan soto yang panas-panas atau makanan panas yang superrrr pedes. Wah, pastinya minuman pertama yang paling ampuh mengusir panas, ya air es atau air dingin.&nbsp;<br />\n<br />\nNamun, tahukah kamu bahwa minum air dingin sehabis ma','2016-05-03','public',7,'9dad0608f6c03a6d125f655760972f85.jpg','Aie-es-Segar-di-mulut-gegar-di-perut'),(32,'TARI SAMAN SMAN 78 MERAIH PRESTASI MEMBANGGAKAN.',8,'<p>Ekstrakurikuler Tari Ratoh Jaroe SMA Negeri 78 Jakarta berhasil meraih prestasi di SKYFEST 2019 yang merupakan acara tahunan dari SMA Labschool Kebayoran. Lomba tersebut diadakan pada tanggal 9 Februari 2019 yang diikuti oleh 13 peserta, diantaranya SMAN 78 Jakarta, SMAN 65 Jakarta, SMAI Al Azhar BSD, SMAN 1 Tangerang, dll. Tim tersebut tampil diurutan ke-5 dengan didampingi oleh syekh Teuku Admiral.&nbsp;<br />\nDi ajang tersebut, ICES (sebutan untuk ekstrakurikuler Tari Ratoh Jaroe) berhasil','2019-02-10','public',7,'93ab7e3d067a8e090c14412d949548ae.jpg','TARI-SAMAN-SMAN-78-MERAIH-PRESTASI-MEMBANGGAKAN'),(33,'PAMERAN KARYA SENI RUPA BERBAHAN DAUR ULANG DI KEMENTRIAN LINGKUNGAN HIDUP DAN KEHUTANAN 2018',8,'<p>Tanggal 21 Desember 2018, Karya Peserta didik SMAN 78 Jakarta dalam bidang Seni Rupa khususnya yang berbahan daur ulang dipamerkan di Gedung Kementrian Lingkungan Hidup dan kehutanan. Selain SMAN 78 ikut pameran juga SMAN 23, SMAN 42, dan sekolah lain yang berjenjang SD dan SMP. Peserta pameran merupakan sekolah yang mendapat penhargaan sebagai sekolah Adiwiyata Nasional dan Adiwiyata Mandiri tahun 2018. SMA Negeri 78 Jakarta mendapat penghargaan sebagai sekolah Adiwiyata Mandiri yang sebelum','2018-11-03','public',7,'bf916b44f944bd984a5e04b8e88a27f9.jpg','PAMERAN-KARYA-SENI-RUPA-BERBAHAN-DAUR-ULANG-DI-KEMENTRIAN-LINGKUNGAN-HIDUP-DAN-KEHUTANAN-2018'),(34,'BUKU KARYA PESERTA DIDIK ',8,'<p>Buku Karya Pesera didik SMAN 78 diantaranya adalah :&nbsp;<br />\n1. Syair Emas ( Tulisan guru dan siswa sman 78 Jakarta)&nbsp;<br />\n2. Dark Moon karya Monica Niken&nbsp;<br />\n3. High School with Belt karya Abraham wiliam&nbsp;<br />\n4. Majalah AKSARA.</p>\n','2018-07-03','public',7,'0a0064853fa2d0a3d7dac3fe73d9ba41.jpg','BUKU-KARYA-PESERTA-DIDIK'),(35,'SEMARAK DESEMBER 2018',8,'<p>Kamis, 13 desember 2018 terdiri atas gabungan tiga kegiatan yaitu pekan olah raga dan seni,&nbsp;<br />\ndesember hijau, dan Jupan Eksport Tournament (JET). Kegiatan ini di adakan dalam rangka berakhirnya penilaian akhir semesterGanjil tahun pelajaran 2018-2019. Cabang perlombaan olah raga yang diselenggarakana dalaha futsal, basket, pingpong, dan badminton. Sedangkan perlombaan seni antara lain lomba seni kriya, green fashion, menghias pot, dan poster digital. Kemudian ada perlombaan mobile l','2018-05-03','public',7,'653217889523e112e84e4c1f5c84948b.jpg','SEMARAK-DESEMBER-2018'),(36,'PERINGANTAN MAULID NABI MUHAMMAD SAW.1440 H',8,'<p>Tanggal 6 November 2018/1440 H di Lapangan SMAN 78 Jakarta diselenggarakan peringatan Maulid Nabi Muhammad SAW dengan penceramah Ustadz Hidayat Arifianto dan bintang tamu Agung Juna. Tema Malid Nabi kali ini adalah &quot;Our Guidance&quot; The Best of Mankind. Kegiatan ini dimeriahkan dengan penampilan Hafiz mmunity SMAN 78, Marawis, pembacaan Riwayat Nabi Muhammad SAW dan host dari siswa rohis yang cukup keren. Kegiatan ini didahului dengan sambutan kepala SMAN 78 Jakarta DR. Saryono, M.Si, ','2018-11-06','public',7,'4c65d269be18cbce3cfdbe62c78a9be5.jpg','PERINGANTAN-MAULID-NABI-MUHAMMAD-SAW1440-H');
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
) ENGINE=InnoDB AUTO_INCREMENT=201902140 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswa`
--

LOCK TABLES `siswa` WRITE;
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` VALUES (2019011,'Yunita Sari','Jl. Simpang Gajah Mada ','0000-00-00','Perempuan','2016.0','Juwaidi','S1','PNS','Rika','S1','PNS','Jl. Simpang Gajah Mada ','','','','','SMP Nusan Penida','Jl. Setia Budi',NULL,'aktif','ipa','','b79ccd305c82c6403fc6d438d258366c.jpg',50,NULL),(2019012,'Irwan Gunawan','Perumahan Griya Giri','0000-00-00','Laki-laki','2016.0','Ridwan Yusuf','S1','PNS','Alya Nir','SMA','Rumah Tangga','Perumahan Griya Giri','','','','','SMP N 30','Jl. Melati',NULL,'aktif','ipa','',NULL,50,NULL),(2019013,'Yulia Khairunisa','Jl. Kapten Griya','0000-00-00','Perempuan','2016.0','','','','','','','','Jamal ','S1','PNS','Jl. Kapten Griya','SMP N 30','Jl. Melati',NULL,'aktif','ipa','',NULL,50,NULL),(2019014,'Adi Pratama','Jl. Griya Sari','0000-00-00','Laki-laki','2016.0','Gunawan','S1','Dosen','Siri Jumaiti','SMA','Penjual','Jl. Griya Sari ','','','','','SMP N 7','Jl. Pringan',NULL,'aktif','ipa','',NULL,50,NULL),(2019015,'Ahmad Pratama','JL. Sangkar','0000-00-00','Laki-laki','2016.0','Badrun','S1','PNS','Sari Yulia','SMA','Rumah Tangga','Jl. Sangkar','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ipa','',NULL,50,NULL),(2019016,'Dita Rahmadani','Jl. Ujung Siri','0000-00-00','Perempuan','2016.0','','','','','','','','Badrun Gunawan','SMA','Penjual','Jl. Ujung Siri','SMP N 1','Jl. Mawar',NULL,'aktif','ipa','',NULL,50,NULL),(2019017,'Fitriayani','Jl. Mawar Sari','0000-00-00','Perempuan','2016.0','Riky Gunawan','S1','PNS','Fani','SMP','Rumah Tangga','Jl Mawar Sari','','','','','SMP N 30','Jl. Melati',NULL,'aktif','ipa','',NULL,50,NULL),(2019018,'Miftahul','Jl. Anggrek','0000-00-00','Laki-laki','2016.0','Andri','SMA','Penjual','Fina','SMA','Rumah Tangga','Jl. Anggrek','','','','','SMP Petani','Jl. Sawah',NULL,'aktif','ipa','',NULL,50,NULL),(2019019,'Indra Aswari','Jl. Lereng Lembah','0000-00-00','Laki-laki','2016.0','Ginting Siregar','S1','PNS','Farah Jaskiah','S1','Pegawai Bank','Jl. Lereng Lembah','','','','','SMP Pancasila','Jl. Simp Pos',NULL,'aktif','ipa','',NULL,50,NULL),(20190110,'Rahma Aulia','Jl. Jangkar','0000-00-00','Perempuan','2016.0','Ridwan Kamil','S1','Guru','Zaskiah Sungkar','S1','Guru','Jl Jangkar','','','','','SMP N 1','Jl. Melati',NULL,'aktif','ipa','',NULL,50,NULL),(20190111,'Anika Andriani','Jl. Pulpen','0000-00-00','Perempuan','2016.0','Disra Jamal','S1 ','Guru','Rahma ','SMA','Rumah Tangga','Jl. Pulpen','','','','','SMP N 30','Jl. Melati',NULL,'aktif','ipa','',NULL,50,NULL),(20190112,'Oktavia Vira','Jl. Pulpen','0000-00-00','Perempuan','2016.0','Disra Jamal','S1','Guru','Rahma ','SMA','Rumah Tangga','Jl. Pulpen','','','','','SMP N 30','Jl. Melati',NULL,'aktif','ipa','',NULL,50,NULL),(20190113,'Muhammad Ahmad','Jl. Beo','0000-00-00','Laki-laki','2016.0','Indra Tami','S1','Pengusaha','Rida Oktavia','S1','Rumah Tangga','','','','','','SMP Nusan Penida','Jl. Setia Budi',NULL,'aktif','ipa','',NULL,50,NULL),(20190114,'Niken Tamara','Jl. Langgar','0000-00-00','Perempuan','2016.0','Purnomo ','S1','PNS','Nur Cahya','S1','Guru','Jl. Langgar','','','','','SMP N 7 ','Jl. Pringan',NULL,'aktif','ipa','',NULL,50,NULL),(20190115,'Wicaksonon Putra','Jl. Berjaya','0000-00-00','Laki-laki','2016.0','Putra Dwi','S1','Penjual','Nuril ','S1','Guru','Jl. Berjaya','','','','','SMP N 1 ','Jl. Melati',NULL,'aktif','ipa','',NULL,50,NULL),(20190116,'Gani Purnama','Jl. Selimut','0000-00-00','Laki-laki','2016.0','Banyu Mas','SMA','TNI','Martina ','S3','Dosen','Jl. Selimut','','','','','SMP Sultan','Jl. Tanjung Rejo',NULL,'aktif','ipa','',NULL,50,NULL),(20190117,'Gina Putri','Jl. Barbasia Nili','0000-00-00','Perempuan','2016.0','Satria Musto','S1','Polisi','Mila Dini','S1','Guru','Jl. Barbasia Nili','','','','','SMP N 10','Jl. Ringroad',NULL,'aktif','ipa','',NULL,50,NULL),(20190118,'Muhammad Ari','Jl. Biduri','0000-00-00','Laki-laki','2016.0','Ananda','S1','PNS','Dini Rahma','S1','PNS','JL. Biduri','','','','','SMP  Swasta','Jl. Ahmad Yani',NULL,'aktif','ipa','',NULL,50,NULL),(20190119,'M Ridwan Tarigan','Jl. Asoka','0000-00-00','Laki-laki','2016.0','Muhanda','S1','PNS','Lala Riri','SMP','Rumah Tangga','Jl. Asoka','','','','','SMP Telkom','Jl. Simp Selayang',NULL,'aktif','ipa','',NULL,50,NULL),(20190120,'Anisa Barus','Jl. A.H Nasution','0000-00-00','Perempuan','2016.0','Jono','S2','Dosen','Jumayati','SMA','Penjual','Jl. A.H Nasution','','','','','SMP N 7','Jl. Pringan',NULL,'aktif','ipa','',NULL,50,NULL),(20190121,'M Rosadi ','Jl. Raya Licin','0000-00-00','Laki-laki','2016.0','Agung','S1','PNS','Ajeng','SMA','Penjual','Jl. Raya Licin','','','','','SMP N 30','Jl. Melati',NULL,'aktif','ipa','',NULL,50,NULL),(20190122,'Nur Andina Rahma','Jl. Muwarma','0000-00-00','Perempuan','2016.0','','','','','','','','Budi Gunawan','S1','PNS','Jl. Muwarma','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ipa','',NULL,50,NULL),(20190123,'Brastila Lesti','Jl. Banterang','0000-00-00','Perempuan','2016.0','','','','','','','','Ridwan Jamal','SMA','TNI','Jl. Banterang','SMP N 10','Jl. Ringroad',NULL,'aktif','ipa','',NULL,50,NULL),(20190124,'Dinda Lala','Jl. Klontang','0000-00-00','Perempuan','2016.0','Gunawan Purnomo','SMA','Penjual','Aulia Rahma','SMA','Penjual','Jl. Klontang','','','','','SMP Telkom','Jl. Simp Selayang',NULL,'aktif','ipa','',NULL,50,NULL),(20190125,'Bayhaqi Daulay','Jl. Eka Rasmi','0000-00-00','Laki-laki','2016.0','Haqi Jono','S1','PNS','Fitriayani','SMA','Rumah Tangga','Jl. Eka Rasmi','','','','','SMP Muhamadiah','Jl. Seta Budi',NULL,'aktif','ipa','',NULL,50,NULL),(20190126,'Banyu Dwi','Jl. Purnama Jaya','0000-00-00','Laki-laki','2016.0','','','','','','','','Vira Oktavia','S1','Guru','Jl. Purnama Jaya','SMP N 30','Jl. Melati',NULL,'aktif','ipa','',NULL,50,NULL),(20190190,'Yunita Sari','Jl. Simpang Gajah Mada ','0000-00-00','Perempuan','2019.0','Gunawan Ginting','S1','PNS','Rika','S1','PNS','Jl. Simpang Gajah Mada ','','','','','SMP Nusan Penida','Jl. Setia Budi',NULL,'aktif','ipa','',NULL,50,NULL),(20190191,'Gunawn Irwan','Perumahan Griya Giri','0000-00-00','Laki-laki','2019.0','Ridwan ','S1','PNS','Alya Nir','SMA','Rumah Tangga','Perumahan Griya Giri','','','','','SMP N 30','Jl. Melati',NULL,'aktif','ipa','',NULL,50,NULL),(20190192,'Nur Khairunisa','Jl. Kapten Griya','0000-00-00','Perempuan','2019.0','','','','','','','','Jamal ','S1','PNS','Jl. Kapten Griya','SMP N 30','Jl. Melati',NULL,'aktif','ipa','',NULL,50,NULL),(20190193,'Hendra Pratama','Jl. Griya Sari','0000-00-00','Laki-laki','2019.0','Junaidi','S1','Dosen','Siri Jumaiti','SMA','Penjual','Jl. Griya Sari ','','','','','SMP N 7','Jl. Pringan',NULL,'aktif','ipa','',NULL,50,NULL),(20190194,'Ahmad Adi','JL. Sangkar','0000-00-00','Laki-laki','2019.0','Badrun','S1','PNS','Sari Yulia','SMA','Rumah Tangga','Jl. Sangkar','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ipa','',NULL,50,NULL),(20190195,'Dita Rahmadina','Jl. Ujung Siri','0000-00-00','Perempuan','2019.0','','','','','','','','Badrun Gunawan','SMA','Penjual','Jl. Ujung Siri','SMP N 1','Jl. Mawar',NULL,'aktif','ipa','',NULL,50,NULL),(20190196,'Fitriayani Nadia','Jl. Mawar Sari','0000-00-00','Perempuan','2019.0','Riky Gunawan','S1','PNS','Fani','SMP','Rumah Tangga','Jl Mawar Sari','','','','','SMP N 30','Jl. Melati',NULL,'aktif','ipa','',NULL,50,NULL),(20190197,'Muhammad Miftahul','Jl. Anggrek','0000-00-00','Laki-laki','2019.0','Andri','SMA','Penjual','Fina','SMA','Rumah Tangga','Jl. Anggrek','','','','','SMP Petani','Jl. Sawah',NULL,'aktif','ipa','',NULL,50,NULL),(20190198,'Indra Aswari','Jl. Lereng Lembah','0000-00-00','Laki-laki','2019.0','Ginting Siregar','S1','PNS','Farah Jaskiah','S1','Pegawai Bank','Jl. Lereng Lembah','','','','','SMP Pancasila','Jl. Simp Pos',NULL,'aktif','ipa','',NULL,50,NULL),(20190227,'Ameta Dian Fachira','Jl. Bougeinville 2','0000-00-00','Perempuan','2016.0','Zulkilfi','S1','PNS','Yetti','S1','PNS','Jl. Bougeinville 2','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','',NULL,50,NULL),(20190228,'Rafika Aigo','Jl. Purnama Jaya','0000-00-00','Perempuan','2016.0','Muhammad Udin','S1','Guru','Ananda','SMA','Rumah Tangga','Jl. Purnama Jaya','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','',NULL,50,NULL),(20190229,'Dinda Nazli','Jl. Bougeinville 3','0000-00-00','Perempuan','2017.0','Budi','SMA','Penjual','Ana','SMA','Penjual','Jl. Bougeinville 3','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','',NULL,50,NULL),(20190230,'Anto Siregar','Jl. Satu Jiah','0000-00-00','Laki-laki','2017.0',' Kiki','S1','Pekerja Kantoran','Jesica','S1','PNS','Jl. Satu Jua','','','','','SMP Santa Thomas','Jl. Katamso',NULL,'aktif','ips','Kristen',NULL,50,NULL),(20190231,'Legardo Hamoloan','Jl. Asisi','0000-00-00','Laki-laki','2017.0','Jans',' SMA','TNI','Selvi','S1','PNS','Jl. Asisi','','','','','SMP Nusan Penida','Jl. Setia Budi',NULL,'aktif','ips','Kristen',NULL,50,NULL),(20190232,'Johan ','Jl. Pembangunan','0000-00-00','Laki-laki','2017.0','Motoharu','SMA','Polisi','Fenni Lim','S1','Rumah Tangga','Jl. Pembangunan','','','','','SMP Santa Thomas','Jl. Katamso',NULL,'aktif','ips','Kristen',NULL,50,NULL),(20190233,'Yusuf Aldiansyah','Jl. Eka Rasmi','0000-00-00','Laki-laki','2017.0',' Fauzan','S1','PNS','Yessi','S1','PNS','Jl. Eka Rasmi','','','','','SMP N 30','Jl. Melati',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190234,'Defina Yenatta','Jl. Ujung Siri','0000-00-00','Perempuan','2017.0','Muhammad Ari','S1','Penjual','Dian Ningsih','S1','Dosen','Jl. Ujung Sari','','','','','SMP N 10','Jl. Ringroad',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190235,'Nael','Jl. Juanita','0000-00-00','Laki-laki','2017.0','Victor Thalib','S1','Guru','Heven','S1','Guru','Jl. Juanita','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','Kristen',NULL,50,NULL),(20190236,'Thoriq Owen','Jl. Karya Jaya','0000-00-00','Laki-laki','2017.0','Angga Satrio','S1','PNS','Okki ','S1','Guru',' Jl. Karya Jaya','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190237,'Kayla Hayyan','Jl. Jaya Karya','0000-00-00','Perempuan','2017.0','Eko Joko','SMA','Penjual','Nadia','SMA','Penjual','Jl. Jaya Karya','','','','','SMP Muhamadiah','Jl. Setia Budi',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190238,'Assidiq Salma','Jl. Perabotan','0000-00-00','Perempuan','2017.0','Fauzan Johan','S1','Pekerja Kantoran','Ulfi Nadia','S1','PNS','Jl. Perabotan','','','','','SMP Pancasila','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190239,'Siska','Jl. Rata rata','0000-00-00','Perempuan','2017.0','Bisma','S1','PNS','Ratna','S1',' PNS','Jl. Rata rata','','','','','SMP Telkom','Jl. Simp Selayang',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190240,'Crish ','Jl. Perumahan','0000-00-00','Laki-laki','2017.0','Jackie','S1','Pengusaha','Linlin','S1','Rumah Tangga','Jl. Perumahan','','','','','SMP Santa Thomas','Jl. Katamso',NULL,'aktif','ips','Budha',NULL,50,NULL),(20190241,'Eggy Saputra Tama','Jl. Kudus','0000-00-00','Laki-laki','2017.0','Budionon','S1','PNS','Afiful Aufa','S1 ','Penjual','Jl. Kudus','','','','','SMP Telkom','Jl. Simp Selayang',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190242,'Rian Febrianto','Jl. Penyabungan','0000-00-00','Laki-laki','2017.0','Bahdrul Fitriana','SMA','Satpam','Nur Fatiah','SMP','Penjual','Jl. Penyabungan','','','','','SMP N 30 ',' Jl. Melati',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190243,'Andri Siregar','Jl. Pembangunan','0000-00-00','Laki-laki','2017.0','Dedi Siregar','S1','PNS',' Nazli','S1','PNS','Jl. Pembangunan','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','Kristen',NULL,50,NULL),(20190244,'Yusri ','Jl. Mawar Sari','0000-00-00','Laki-laki','2017.0','','','','','','','','Rahmat Anto','S1',' Penjual','Jl. Mawar','SMP Santa Thomas','Jl. Katamso',NULL,'aktif','ips','Budha',NULL,50,NULL),(20190245,'Ram Hevelio','Jl. Perumahan','0000-00-00','Laki-laki','2017.0','Rio Pratama','S1','Pengusaha','Ananda ','S1 ','Rumah Tangga','Jl. Perumahan','','','','','SMP Santa Thomas','Jl. Katamso',NULL,'aktif','ips','Budha',NULL,50,NULL),(20190246,'Baiq Agustina','Jl. Aeikmel','0000-00-00','Laki-laki','2017.0','Abdul Mukti','S1','PNS','Marwah',' S1','PNS','Jl. Aeikmil','','','','','SMP Muhamadiah','Jl. Setia Budi',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190247,'Handri Pathurrahman','Jl. Lili','0000-00-00','Laki-laki','2017.0','Jaka Susanto','SMA','Penjual','Madriah Jumiah','SMA ','Rumah Tangga','Jl. Lili','','','','','SMP Muhamadiah','Jl. Setia Budi',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190248,'Novia Zanwadi','Jl. Lulilas','0000-00-00','Perempuan','2017.0','','','','','','','','Riwanti','S2','Dosen','Jl. Lulila','SMP Pancasila','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190249,'Khaerul Umam','Jl. Jangkar','0000-00-00','Laki-laki','2017.0','','','','','','','','Jokok Dana','S1','PNS','Jl. Jangkar','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190250,' Jansfour','Jl. Negri','0000-00-00','Laki-laki','2017.0','','','','','','','','Bayu','SMA','TNI','Jl. Negri','SMP Santa Thomas','Jl. Katamso',NULL,'aktif','ips','Kristen',NULL,50,NULL),(20190251,'Andri Wahyu A.R','Jl. Oktober','0000-00-00','Perempuan','2017.0','Bambang Surio','SMA','Guru','Dwi Lestari','SMA','Polwan','Jl. Oktober','','','','','SMP Nusan Penida','Jl. Setia Budi',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190252,'Holifathul Ilmiah','Jl. Sekar','0000-00-00','Laki-laki','2017.0','','','','','','','','Ismail','SMA','Polisi','Jl. Sekar','SMP N 1',' Jl. Mawar',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190253,'Ana Farhana','Jl. Kolili','0000-00-00','Perempuan','2017.0','Muhammad Hasan','S1','PNS','Nizar','S1','Guru',' Jl. Kolili','','','','','SMP N 10','Jl. Ringroad',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190254,'Edi Fargusen','Jl. Kakkao','0000-00-00','Laki-laki','2017.0','Bambang Surio','S1','Guru','Lilia Jessia','S1 ','PNS','Jl. Kakkao','','','','','SMP Telkom','Jl. Simp Selayang',NULL,'aktif','ips','Kristen',NULL,50,NULL),(20190255,'Iin Indriawati','Jl. Banyuwangi','0000-00-00','Perempuan','2017.0','Warman','SMA','Penjual','Alisa','S1','PNS','Jl. Banyuwangi','','','','','SMP Muhamadiah','Jl. Setia budi',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190256,'Hadriatnti Intan ','Jl. Bulan bulan','0000-00-00','Perempuan','2017.0','Warman','SMA','Penjual','Alisa','S2','PNS','Jl. Bulan bulan','Giflani Nizar','S1','Pengusaha','Jl. Bulan bulan','SMP N 30','Jl. Melati',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190257,'Intan ','Jl. November','0000-00-00','Perempuan','2017.0','Warman','SMA','Penjual','Alisa','S2','PNS','Jl. November','','','','','SMP N 31','Jl. Melati',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190258,'Hadriatnti','Jl. Raya Licin','0000-00-00','Perempuan','2017.0','Warman','SMA','Penjual','Alisa','S1','PNS','Jl. Raya Licin','','','','','SMP N 32','Jl. Melati',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190259,'Indriawati','Jl. Lici Raya','0000-00-00','Perempuan','2017.0','Muhammad Hasan','S1','PNS','Nizar','S1','Polwan','Jl. Lici Raya','','','','','SMP N 33','Jl. Melati',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190260,'Fani Dilia','Jl. Marunjungjuang','0000-00-00','Perempuan','2018.0','Josika','S1','PNS','Jesicca','S1','PNS','Jl. Maranjuangjuang','','','','','SMP Telkom','Jl. Simp Selayang',NULL,'aktif','ips','Kristen',NULL,50,NULL),(20190261,'Shofa Adelia ','Jl. Baru','0000-00-00','Perempuan','2018.0','Wahyutri Utomo','SMA','Polisi','Tuty Nur ','S1 ','Guru',' Jl. Baru','','','','','SMP Nusan Penida','Jl. Setia Budi',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190262,'Nurul Nur Atika',' Jl. Pembangunan','0000-00-00','Perempuan','2018.0','Ali','S1','PNS','Nadia ','S1','Guru','Jl. Pembangunan','','','','','SMP Muhamadiah','Jl. Setia Budi',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190263,'M Ihsan Maulana','Jl Bougeinville ','0000-00-00','Laki-laki','2018.0','Zulfan','S2','Dosen','Rina','S1','Guru','Jl. Bougeinville','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190264,'Elya Wardhani','Jl. Langgar','0000-00-00','Perempuan','2018.0','Edi','SMA','Penjual','Ana','SMA','Penjual','Jl. Langgar','','','','','SMP N 7','Jl. Pringan',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190265,'Dina Undzila','Jl. Tasbih','0000-00-00','Perempuan','2018.0','Daniel Fadly','S1','PNS','Mya Utami','S1','Dosen','Jl. Tasbih','','','','','SMP N 1','Jl. Mawar',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190266,'Wina ','Jl. Negri','0000-00-00','Perempuan','2018.0','Rafly Himawasyah','S1','Guru','Adelia Fadly','SMA','Rumah Tangga','Jl. Negri','','','','','SMP Santa Thomas','Jl. Katamso',NULL,'aktif','ips','Kristen',NULL,50,NULL),(20190267,'Wisnu Wardato','Jl. Sereng','0000-00-00','Laki-laki','2018.0','Withanto','SD',' Penjual','Pipi Adelia','S1','Guru','Jl. Sereng','','','','','SMP Santa Thomas','Jl. Katamso',NULL,'aktif','ips','Kristen',NULL,50,NULL),(20190268,'Muhammad Alfitrah','Jl. Sumatra Utara','0000-00-00','Laki-laki','2018.0','Dimas Pratama','S1','Pengusaha','Dinda Pratama','S1','Guru','Jl. Sumatra Utara','','','','','SMP N 30','Jl. Melati',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190269,'Firmansyah Alfi','Jl. Kapten Ilyas','0000-00-00','Laki-laki','2018.0','Adi Pratama','S2','Dosen','Aulia Rahma','S1','PNS','Jl. Kapten Ilyas','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190270,'Firman Utomo','Jl. K.H Dewantara','0000-00-00','Laki-laki','2018.0','Ramadhani','S1','Guru','Rahma Andini','S1','Pegawai Bank','Jl K.H Dewantara','','','','','SMP Telkom','Jl. Simp Selayang',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190271,'Wahyu Widianto','Jl. Gunung Sari','0000-00-00','Laki-laki','2018.0','','','','','','','','Anik','S1','Guru','Jl. Gunung Sari','SMP Pancasila','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190272,'Aldion ','Jl. Prambanan','0000-00-00','Laki-laki','2018.0','Alfi Cen','S1','Penjual','Lilia Jessica','S1',' PNS','Jl. Prambanan','','','','','SMP Santa Thomas','Jl. Katamso',NULL,'aktif','ips','Budha',NULL,50,NULL),(20190273,'Riski Wahyudi','Jl. Prambanan','0000-00-00','Laki-laki','2018.0','Alfi Cen','S2','Penjual','Lilia Jessica','S2',' PNS','Jl. Prambanan','','','','','SMP Santa Thomas','Jl. Katamso',NULL,'aktif','ips','Budha',NULL,50,NULL),(20190274,'Yudha ','Jl. Perjuangan','0000-00-00','Laki-laki','2018.0','Warianto','S1','PNS','Wanda Dewi','S1','PNS','Jl. Perjuangan','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190275,'Wanda Kususma ','Jl. Mundziri','0000-00-00','Perempuan','2018.0','Ahmad','S1','Pegawai Kantor',' Jeni','SMA','Rumah Tangga','Jl. Mundziri','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190276,'Muhammad Amin','Jl. Dr Mansyur','0000-00-00','Laki-laki','2018.0','Redy Gunawan','S2','Dosen',' Giselle','SMA','Rumah Tangga','Jl. Dr Mansyur','','','','','SMP Pancasila','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190277,'Rikki ','Jl. Asoka 1','0000-00-00','Laki-laki','2018.0','','','','','','','','Daniel','S1','PNS','Jl. Asoka 1','SMP Telkom','Jl. Simp Selayang',NULL,'aktif','ips','Kristen',NULL,50,NULL),(20190278,' Indah Ramadhani','Jl. Budi Seia','0000-00-00','Perempuan','2018.0','Ahmad',' S1','PNS','Nur','SMA','Rumah Tangga',' Jl. Budi Seia','','','','',' SMP N 7','Jl. Pringan',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190279,'Tanjug Gunawan','Jl Bougeinville ','0000-00-00','Laki-laki','2018.0','','','','','','','','Jamaliya','S1','PNS',' Jl. Bougeinville','SMP N 30','Jl. Melati',NULL,'aktif','ips','Kristen',NULL,50,NULL),(20190280,'Ali Hidayat','Jl. Jauhitam','0000-00-00','Laki-laki','2018.0','Fahmi Rizal','S1','Guru','Nadia Siti','SMA','Penjual','Jl. Jauhitam','','','','','SMP Muhamadiah','Jl. Setia Budi',NULL,'aktif','ips','',NULL,50,NULL),(20190281,' Ibnu Rezky','Jl. Setia Budi','0000-00-00','Laki-laki','2018.0','Muhammad Fakhri','S1',' PNS','Nur Atikah','S1 ','PNS','Jl. Setia Budi','','','','','SMP N 7','Jl. Pringan',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190282,'Rahmad Amin','Jl. Dr Mansyur','0000-00-00','Laki-laki','2018.0','Irfan','S1','PNS ','Reza Melani','SMA ','Rumah Tangga','Jl. Dr Mansyur','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190283,'Abadi Tarigan','Jl. Asoka','0000-00-00','Laki-laki','2018.0','Leo Tarigan','SMA','TNI','Jesicca','S1','PNS','Jl. Asoka','','','','','SMP Santa Thomas','Jl. Katamso',NULL,'aktif','ips','Kristen',NULL,50,NULL),(20190284,'Egik ','Jl. Garuda','0000-00-00','Laki-laki','2018.0','','','','','','','','Fahmi ','S1','PNS','Jl. Garuda','SMP Nusan Penida','Jl. Setia Budi',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190285,'Rahma Adinda','Jl. Dr Mansyur','0000-00-00','Perempuan','2018.0','Dandi','S1','Pekerja Kantoran','Arini','S1 ','Pegawai Bank','Jl. Dr Mansyur','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190286,'Jenie Andini','Jl. Perumahan','0000-00-00','Perempuan','2018.0','Jans','S1','Pengusaha','Leli','S1','Rumah Tangga','Jl. Perumahan','','','','','SMP N 1','Jl. Mawar',NULL,'aktif','ips','Budha',NULL,50,NULL),(20190287,'Anggika ','Jl. Mawar no 2','0000-00-00','Perempuan','2018.0','','','','','','','','Lianda','S1','Pegawai Kantor',' ',' SMP N 1','Jl. Mawar',NULL,'aktif','ips','Kristen',NULL,50,NULL),(20190288,'Naufal','Jl. Azmi no 7','0000-00-00','Laki-laki','2018.0','Fachrul','S1','Guru','Marischa','S1','Guru','Jl. Azmi no 1','','','','','SMP Pancasila','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190289,'Amelia Fakhirah','Jl. Pembangunan','0000-00-00','Perempuan','2018.0','Muhammad Maulana','S1','PNS','Nur Nasywa ',' S1','Polwan','Jl. Pembangunan','','','','','SMP Nusan Penida','Jl. Setia Budi',NULL,'aktif','ips','Islam',NULL,50,NULL),(20190299,'Dinda Nazli','Jl. Bougeinville 3','0000-00-00','Perempuan','2019.0','Budi','SMA','Penjual','Ana','SMA','Penjual','Jl. Bougeinville 3','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','',NULL,50,NULL),(201901125,'Wicaksonon Putra','Jl. Berjaya','0000-00-00','Laki-laki','2019.0','Putra Dwi','S1','Penjual','Nuril ','S1','Guru','Jl. Berjaya','','','','','SMP N 1 ','Jl. Melati',NULL,'aktif','ipa','',NULL,30,NULL),(201901126,'Gani Purnama','Jl. Selimut','0000-00-00','Laki-laki','2019.0','Banyu Mas','SMA','TNI','Martina ','S3','Dosen','Jl. Selimut','','','','','SMP Sultan','Jl. Tanjung Rejo',NULL,'aktif','ipa','',NULL,30,NULL),(201901127,'Gina Putri','Jl. Barbasia Nili','0000-00-00','Perempuan','2019.0','Satria Musto','S1','Polisi','Mila Dini','S1','Guru','Jl. Barbasia Nili','','','','','SMP N 10','Jl. Ringroad',NULL,'aktif','ipa','',NULL,30,NULL),(201901128,'Muhammad Ari','Jl. Biduri','0000-00-00','Laki-laki','2019.0','Ananda','S1','PNS','Dini Rahma','S1','PNS','JL. Biduri','','','','','SMP  Swasta','Jl. Ahmad Yani',NULL,'aktif','ipa','',NULL,30,NULL),(201901129,'M Ridwan Tarigan','Jl. Asoka','0000-00-00','Laki-laki','2019.0','Muhanda','S1','PNS','Lala Riri','SMP','Rumah Tangga','Jl. Asoka','','','','','SMP Telkom','Jl. Simp Selayang',NULL,'aktif','ipa','',NULL,30,NULL),(201901140,'Ali','Patumbak','1999-02-09','Laki-laki','2019','22','2','2','2','2','22','2','2','2','2','2','SMP 1','Patumbak',2018,'aktif','ipa','Islam','412d67af7e1bfd545f6cec1d4593fde6.jpg',80,NULL),(201902100,'Anto Siregar','Jl. Satu Jiah','0000-00-00','Laki-laki','2019.0',' Kiki','S1','Pekerja Kantoran','Jesica','S1','PNS','Jl. Satu Jua','','','','','SMP Santa Thomas','Jl. Katamso',NULL,'aktif','ips','Kristen',NULL,50,NULL),(201902115,'Dina Undzila','Jl. Tasbih','0000-00-00','Perempuan','2019.0','Daniel Fadly','S1','PNS','Mya Utami','S1','Dosen','Jl. Tasbih','','','','','SMP N 1','Jl. Mawar',NULL,'aktif','ips','Islam',NULL,30,NULL),(201902116,'Wina ','Jl. Negri','0000-00-00','Perempuan','2019.0','Rafly Himawasyah','S1','Guru','Adelia Fadly','SMA','Rumah Tangga','Jl. Negri','','','','','SMP Santa Thomas','Jl. Katamso',NULL,'aktif','ips','Kristen',NULL,30,NULL),(201902117,'Wisnu Wardato','Jl. Sereng','0000-00-00','Laki-laki','2019.0','Withanto','SD',' Penjual','Pipi Adelia','S1','Guru','Jl. Sereng','','','','','SMP Santa Thomas','Jl. Katamso',NULL,'aktif','ips','Kristen',NULL,30,NULL),(201902118,'Muhammad Alfitrah','Jl. Sumatra Utara','0000-00-00','Laki-laki','2019.0','Dimas Pratama','S1','Pengusaha','Dinda Pratama','S1','Guru','Jl. Sumatra Utara','','','','','SMP N 30','Jl. Melati',NULL,'aktif','ips','Islam',NULL,30,NULL),(201902119,'Firmansyah Alfi','Jl. Kapten Ilyas','0000-00-00','Laki-laki','2019.0','Adi Pratama','S2','Dosen','Aulia Rahma','S1','PNS','Jl. Kapten Ilyas','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,30,NULL),(201902130,'Ali Hidayat','Jl. Jauhitam','0000-00-00','Laki-laki','2019.0','Fahmi Rizal','S1','Guru','Nadia Siti','SMA','Penjual','Jl. Jauhitam','','','','','SMP Muhamadiah','Jl. Setia Budi',NULL,'aktif','ips','',NULL,30,NULL),(201902131,' Ibnu Rezky','Jl. Setia Budi','0000-00-00','Laki-laki','2019.0','Muhammad Fakhri','S1',' PNS','Nur Atikah','S1 ','PNS','Jl. Setia Budi','','','','','SMP N 7','Jl. Pringan',NULL,'aktif','ips','Islam',NULL,30,NULL),(201902132,'Rahmad Amin','Jl. Dr Mansyur','0000-00-00','Laki-laki','2019.0','Irfan','S1','PNS ','Reza Melani','SMA ','Rumah Tangga','Jl. Dr Mansyur','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,30,NULL),(201902133,'Abadi Tarigan','Jl. Asoka','0000-00-00','Laki-laki','2019.0','Leo Tarigan','SMA','TNI','Jesicca','S1','PNS','Jl. Asoka','','','','','SMP Santa Thomas','Jl. Katamso',NULL,'aktif','ips','Kristen',NULL,30,NULL),(201902134,'Egik ','Jl. Garuda','0000-00-00','Laki-laki','2019.0','','','','','','','','Fahmi ','S1','PNS','Jl. Garuda','SMP Nusan Penida','Jl. Setia Budi',NULL,'aktif','ips','Islam',NULL,30,NULL),(201902135,'Rahma Adinda','Jl. Dr Mansyur','0000-00-00','Perempuan','2019.0','Dandi','S1','Pekerja Kantoran','Arini','S1 ','Pegawai Bank','Jl. Dr Mansyur','','','','','SMP Dharma','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,30,NULL),(201902136,'Jenie Andini','Jl. Perumahan','0000-00-00','Perempuan','2019.0','Jans','S1','Pengusaha','Leli','S1','Rumah Tangga','Jl. Perumahan','','','','','SMP N 1','Jl. Mawar',NULL,'aktif','ips','Budha',NULL,30,NULL),(201902137,'Anggika ','Jl. Mawar no 2','0000-00-00','Perempuan','2019.0','','','','','','','','Lianda','S1','Pegawai Kantor',' ',' SMP N 1','Jl. Mawar',NULL,'aktif','ips','Kristen',NULL,30,NULL),(201902138,'Naufal','Jl. Azmi no 7','0000-00-00','Laki-laki','2019.0','Fachrul','S1','Guru','Marischa','S1','Guru','Jl. Azmi no 1','','','','','SMP Pancasila','Jl. Dr Mansyur',NULL,'aktif','ips','Islam',NULL,30,NULL),(201902139,'Amelia Fakhirah','Jl. Pembangunan','0000-00-00','Perempuan','2019.0','Muhammad Maulana','S1','PNS','Nur Nasywa ',' S1','Polwan','Jl. Pembangunan','','','','','SMP Nusan Penida','Jl. Setia Budi',NULL,'aktif','ips','Islam',NULL,30,NULL);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `verifikasi_data` AFTER INSERT ON `siswa` FOR EACH ROW INSERT INTO verifikasi (nomor_verifikasi,habis_waktu, nis, STATUS) VALUES (concat(year(curdate()),new.nis),curdate(), new.nis, 'gagal') */;;
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
set nilai_a = (select tahun_penerimaan from identitas);
set new.nis = concat(nilai_a,'0',jur,old.nis);

end IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
INSERT INTO `user` VALUES (2,'Muhammad Bayhaqi Daulay','bayhaqi','5b75bd843edb24b0ace1d5eba6625272',2),(3,'Admin Demo','admin','0192023a7bbd73250516f069df18b500',2),(5,'DEMO','demo','fe01ce2a7fbac8fafaed7c982a04e229',1),(7,'ihsan','ihsan','f9c8074d5a013e0729373f8f74cd0648',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifikasi`
--

DROP TABLE IF EXISTS `verifikasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verifikasi` (
  `nomor_verifikasi` varchar(20) NOT NULL,
  `habis_waktu` date NOT NULL,
  `nis` int(11) NOT NULL,
  `status` enum('sukses','gagal') DEFAULT NULL,
  PRIMARY KEY (`nomor_verifikasi`),
  KEY `nis` (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifikasi`
--

LOCK TABLES `verifikasi` WRITE;
/*!40000 ALTER TABLE `verifikasi` DISABLE KEYS */;
INSERT INTO `verifikasi` VALUES ('20191','2019-07-04',1,'sukses'),('201910','2019-07-04',10,'sukses'),('2019100','2019-07-04',100,'sukses'),('2019101','2019-07-04',101,'sukses'),('2019102','2019-07-04',102,'sukses'),('2019103','2019-07-04',103,'sukses'),('2019104','2019-07-04',104,'sukses'),('2019105','2019-07-04',105,'sukses'),('2019106','2019-07-04',106,'sukses'),('2019107','2019-07-04',107,'sukses'),('2019108','2019-07-04',108,'sukses'),('2019109','2019-07-04',109,'sukses'),('201911','2019-07-04',11,'sukses'),('2019110','2019-07-04',110,'sukses'),('2019111','2019-07-04',111,'sukses'),('2019112','2019-07-04',112,'sukses'),('2019113','2019-07-04',113,'sukses'),('2019114','2019-07-04',114,'sukses'),('2019115','2019-07-04',115,'sukses'),('2019116','2019-07-04',116,'sukses'),('2019117','2019-07-04',117,'sukses'),('2019118','2019-07-04',118,'sukses'),('2019119','2019-07-04',119,'sukses'),('201912','2019-07-04',12,'sukses'),('2019120','2019-07-04',120,'sukses'),('2019121','2019-07-04',121,'sukses'),('2019122','2019-07-04',122,'sukses'),('2019123','2019-07-04',123,'sukses'),('2019124','2019-07-04',124,'sukses'),('2019125','2019-07-04',125,'sukses'),('2019126','2019-07-04',126,'sukses'),('2019127','2019-07-04',127,'sukses'),('2019128','2019-07-04',128,'sukses'),('2019129','2019-07-04',129,'sukses'),('201913','2019-07-04',13,'sukses'),('2019130','2019-07-04',130,'sukses'),('2019131','2019-07-04',131,'sukses'),('2019132','2019-07-04',132,'sukses'),('2019133','2019-07-04',133,'sukses'),('2019134','2019-07-04',134,'sukses'),('2019135','2019-07-04',135,'sukses'),('2019136','2019-07-04',136,'sukses'),('2019137','2019-07-04',137,'sukses'),('2019138','2019-07-04',138,'sukses'),('2019139','2019-07-04',139,'sukses'),('201914','2019-07-04',14,'sukses'),('2019140','2019-07-04',140,'sukses'),('201915','2019-07-04',15,'sukses'),('201916','2019-07-04',16,'sukses'),('201917','2019-07-04',17,'sukses'),('201918','2019-07-04',18,'sukses'),('201919','2019-07-04',19,'sukses'),('20192','2019-07-04',2,'sukses'),('201920','2019-07-04',20,'sukses'),('201921','2019-07-04',21,'sukses'),('201922','2019-07-04',22,'sukses'),('201923','2019-07-04',23,'sukses'),('201924','2019-07-04',24,'sukses'),('201925','2019-07-04',25,'sukses'),('201926','2019-07-04',26,'sukses'),('201927','2019-07-04',27,'sukses'),('201928','2019-07-04',28,'sukses'),('201929','2019-07-04',29,'sukses'),('20193','2019-07-04',3,'sukses'),('201930','2019-07-04',30,'sukses'),('201931','2019-07-04',31,'sukses'),('201932','2019-07-04',32,'sukses'),('201933','2019-07-04',33,'sukses'),('201934','2019-07-04',34,'sukses'),('201935','2019-07-04',35,'sukses'),('201936','2019-07-04',36,'sukses'),('201937','2019-07-04',37,'sukses'),('201938','2019-07-04',38,'sukses'),('201939','2019-07-04',39,'sukses'),('20194','2019-07-04',4,'sukses'),('201940','2019-07-04',40,'sukses'),('201941','2019-07-04',41,'sukses'),('201942','2019-07-04',42,'sukses'),('201943','2019-07-04',43,'sukses'),('201944','2019-07-04',44,'sukses'),('201945','2019-07-04',45,'sukses'),('201946','2019-07-04',46,'sukses'),('201947','2019-07-04',47,'sukses'),('201948','2019-07-04',48,'sukses'),('201949','2019-07-04',49,'sukses'),('20195','2019-07-04',5,'sukses'),('201950','2019-07-04',50,'sukses'),('201951','2019-07-04',51,'sukses'),('201952','2019-07-04',52,'sukses'),('201953','2019-07-04',53,'sukses'),('201954','2019-07-04',54,'sukses'),('201955','2019-07-04',55,'sukses'),('201956','2019-07-04',56,'sukses'),('201957','2019-07-04',57,'sukses'),('201958','2019-07-04',58,'sukses'),('201959','2019-07-04',59,'sukses'),('20196','2019-07-04',6,'sukses'),('201960','2019-07-04',60,'sukses'),('201961','2019-07-04',61,'sukses'),('201962','2019-07-04',62,'sukses'),('201963','2019-07-04',63,'sukses'),('201964','2019-07-04',64,'sukses'),('201965','2019-07-04',65,'sukses'),('201966','2019-07-04',66,'sukses'),('201967','2019-07-04',67,'sukses'),('201968','2019-07-04',68,'sukses'),('201969','2019-07-04',69,'sukses'),('20197','2019-07-04',7,'sukses'),('201970','2019-07-04',70,'sukses'),('201971','2019-07-04',71,'sukses'),('201972','2019-07-04',72,'sukses'),('201973','2019-07-04',73,'sukses'),('201974','2019-07-04',74,'sukses'),('201975','2019-07-04',75,'sukses'),('201976','2019-07-04',76,'sukses'),('201977','2019-07-04',77,'sukses'),('201978','2019-07-04',78,'sukses'),('201979','2019-07-04',79,'sukses'),('20198','2019-07-04',8,'sukses'),('201980','2019-07-04',80,'sukses'),('201981','2019-07-04',81,'sukses'),('201982','2019-07-04',82,'sukses'),('201983','2019-07-04',83,'sukses'),('201984','2019-07-04',84,'sukses'),('201985','2019-07-04',85,'sukses'),('201986','2019-07-04',86,'sukses'),('201987','2019-07-04',87,'sukses'),('201988','2019-07-04',88,'sukses'),('201989','2019-07-04',89,'sukses'),('20199','2019-07-04',9,'sukses'),('201990','2019-07-04',90,'sukses'),('201991','2019-07-04',91,'sukses'),('201992','2019-07-04',92,'sukses'),('201993','2019-07-04',93,'sukses'),('201994','2019-07-04',94,'sukses'),('201995','2019-07-04',95,'sukses'),('201996','2019-07-04',96,'sukses'),('201997','2019-07-04',97,'sukses'),('201998','2019-07-04',98,'sukses'),('201999','2019-07-04',99,'sukses');
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_seleksi` BEFORE UPDATE ON `verifikasi` FOR EACH ROW IF(new.status='sukses')
THEN
UPDATE siswa SET STATUS = 'seleksi' WHERE nis = new.nis;
END IF */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ver_success_1` BEFORE DELETE ON `verifikasi` FOR EACH ROW BEGIN
IF(old.status='sukses')
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
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `auto_delete_exp_verifikasi` ON SCHEDULE EVERY 300 MINUTE STARTS '2019-06-28 10:57:46' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'hapus yang kadaluarsa waktu verifikasi nya' DO DELETE FROM verifikasi WHERE habis_waktu < NOW() - INTERVAL 7 DAY AND STATUS = 'gagal' */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `auto_hapuslog_3tahun` */;;
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
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `auto_hapuslog_3tahun` ON SCHEDULE EVERY 3 YEAR STARTS '2019-07-04 03:01:13' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
TRUNCATE log_siswa;
TRUNCATE log_nilai;
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
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
/*!50001 VIEW `allcount` AS select count(0) AS `jumlah_guru`,(select count(0) from `allpost`) AS `jumlah_post`,(select count(0) from `siswa` where (`siswa`.`status` = 'aktif')) AS `jumlah_siswa_aktif`,(select count(0) from `siswa` where (`siswa`.`status` = 'pending')) AS `jumlah_siswa_pending`,(select count(0) from `siswa` where (`siswa`.`status` = 'seleksi')) AS `jumlah_siswa_seleksi` from `ket_guru` */;
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
-- Final view structure for view `join_sisver`
--

/*!50001 DROP TABLE IF EXISTS `join_sisver`*/;
/*!50001 DROP VIEW IF EXISTS `join_sisver`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp932 */;
/*!50001 SET character_set_results     = cp932 */;
/*!50001 SET collation_connection      = cp932_japanese_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `join_sisver` AS select `b`.`nomor_verifikasi` AS `nomor_verifikasi`,`siswa`.`nis` AS `nis`,`siswa`.`nama_siswa` AS `nama_siswa`,`siswa`.`alamat` AS `alamat`,`siswa`.`tgl_lahir` AS `tgl_lahir`,`siswa`.`jenis_kel` AS `jenis_kel`,`siswa`.`thn_ajaran` AS `thn_ajaran`,`siswa`.`nama_ayah` AS `nama_ayah`,`siswa`.`pend_akhir_ayah` AS `pend_akhir_ayah`,`siswa`.`pekerjaan_ayah` AS `pekerjaan_ayah`,`siswa`.`nama_ibu` AS `nama_ibu`,`siswa`.`pend_akhir_ibu` AS `pend_akhir_ibu`,`siswa`.`pekerjaan_ibu` AS `pekerjaan_ibu`,`siswa`.`alamat_ortu` AS `alamat_ortu`,`siswa`.`nama_wali` AS `nama_wali`,`siswa`.`pend_akhir_wali` AS `pend_akhir_wali`,`siswa`.`pekerjaan_wali` AS `pekerjaan_wali`,`siswa`.`alamat_wali` AS `alamat_wali`,`siswa`.`sekolah_asal` AS `sekolah_asal`,`siswa`.`alamat_sekolah` AS `alamat_sekolah`,`siswa`.`tahun_lulus` AS `tahun_lulus`,`siswa`.`status` AS `status`,`siswa`.`jurusan` AS `jurusan`,`siswa`.`agama` AS `agama`,`siswa`.`foto_skhun` AS `foto_skhun`,`siswa`.`nilai_avg` AS `nilai_avg`,`siswa`.`foto` AS `foto` from (`siswa` join `verifikasi` `b` on((`siswa`.`nis` = `b`.`nis`))) */;
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
/*!50001 SET character_set_client      = cp932 */;
/*!50001 SET character_set_results     = cp932 */;
/*!50001 SET collation_connection      = cp932_japanese_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ket_guru` AS select `a`.`id_mapel` AS `id_mapel`,`a`.`nip` AS `nip`,`a`.`nama_guru` AS `nama_guru`,`b`.`jabatan` AS `jabatan`,`c`.`mapel` AS `mapel`,`a`.`alamat` AS `alamat`,`a`.`foto` AS `foto` from ((`guru` `a` join `jabatan_guru` `b` on((`a`.`id_jabatan` = `b`.`id_jabatan`))) join `mapel` `c` on((`c`.`id_mapel` = `a`.`id_mapel`))) */;
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

-- Dump completed on 2019-07-09 10:36:25
