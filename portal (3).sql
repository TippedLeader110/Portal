-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2019 at 03:50 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah` (`judul` VARCHAR(50), `nama_kategori` VARCHAR(50), `isi` VARCHAR(100), `tanggal` DATE, `s` TEXT, `nama` TEXT)  BEGIN
INSERT INTO allpost VALUES(judul,nama_kategori,isi,tanggal,s,nama);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `allpost`
-- (See below for the actual view)
--
CREATE TABLE `allpost` (
`nama` text
,`judul` text
,`tanggal` date
,`status` text
,`nama_kategori` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `dropdown`
-- (See below for the actual view)
--
CREATE TABLE `dropdown` (
`id_item` int(10)
,`label` text
,`link` text
,`id_sub` int(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `fitur`
--

CREATE TABLE `fitur` (
  `id_fitur` int(10) NOT NULL,
  `link` text NOT NULL,
  `label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fitur`
--

INSERT INTO `fitur` (`id_fitur`, `link`, `label`) VALUES
(10, 'about', ''),
(11, 'pict', '');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` text NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `id_mapel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `id_jabatan`, `alamat`, `id_mapel`) VALUES
(1, 'Suparno', 1, 'Jl Jangkar', 8),
(2, 'Sumirna', 2, 'Jl Pensil', 2),
(3, 'Edi', 4, 'Jl Rol', 3),
(4, 'Indah', 4, 'Jl Penghapus', 9),
(5, 'Endra', 4, 'Jl Pulpen', 6),
(6, 'Putri', 5, 'Jl Kelir ', 5),
(7, 'Nur', 5, 'Jl Beo', 7),
(8, 'Alya', 3, 'Jl Garuda', 1);

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(10) NOT NULL,
  `nama_sekolah` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `sejarah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_sekolah`, `visi`, `misi`, `sejarah`) VALUES
(1, 'ALI MTFCKER 4EVE', 'MENJADI SEKOLAH YANG TERBELAKANG DAN DIPENUHI WIBU', '-MENJADI SEKOLAH TERBELAKANG\r\n-LULUSAN MENJADI WIBU\r\n-MENCINTAI GRAND BLUE SEGENAP HATI\r\n-HANYA NIGGA YANG DAPAT MASUK', 'SEKOLAH INI DICIPTAKAN OLEH ALI HIDAYAT SETELAH DIUSIR DARI WAKANDA');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan_guru`
--

CREATE TABLE `jabatan_guru` (
  `id_jabatan` int(11) NOT NULL,
  `jabatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan_guru`
--

INSERT INTO `jabatan_guru` (`id_jabatan`, `jabatan`) VALUES
(1, 'Kepala Sekolah'),
(2, 'Wakil Kepala Sekolah'),
(3, 'Petugas Tata Usaha'),
(4, 'Guru PNS'),
(5, 'Guru Honorer');

-- --------------------------------------------------------

--
-- Stand-in structure for view `jumlah_fitur`
-- (See below for the actual view)
--
CREATE TABLE `jumlah_fitur` (
`jumlah_fitur` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jumlah_guru`
-- (See below for the actual view)
--
CREATE TABLE `jumlah_guru` (
`jumlah_guru` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jumlah_navbar`
-- (See below for the actual view)
--
CREATE TABLE `jumlah_navbar` (
`jumlah_navbar` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jumlah_post`
-- (See below for the actual view)
--
CREATE TABLE `jumlah_post` (
`jumlah_post` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jumlah_siswa`
-- (See below for the actual view)
--
CREATE TABLE `jumlah_siswa` (
`jumlah_siswa` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jumlah_tema`
-- (See below for the actual view)
--
CREATE TABLE `jumlah_tema` (
`jumlah_tema` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'ali');

-- --------------------------------------------------------

--
-- Stand-in structure for view `ket_guru`
-- (See below for the actual view)
--
CREATE TABLE `ket_guru` (
`id_guru` int(11)
,`nama_guru` text
,`alamat` varchar(50)
,`jabatan` text
,`mapel` text
);

-- --------------------------------------------------------

--
-- Table structure for table `log_nilai`
--

CREATE TABLE `log_nilai` (
  `id_siswa` int(11) NOT NULL,
  `b_indonesia` int(11) NOT NULL,
  `matematika` int(11) NOT NULL,
  `b_inggris` int(11) NOT NULL,
  `ipa` int(11) NOT NULL,
  `waktu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_siswa`
--

CREATE TABLE `log_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` int(11) NOT NULL,
  `matematika` int(11) NOT NULL,
  `b_inggris` int(11) NOT NULL,
  `b.indonesia` int(11) NOT NULL,
  `ipa` int(11) NOT NULL,
  `waktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `id_container` int(10) NOT NULL,
  `id_fitur` int(10) NOT NULL,
  `weight` text NOT NULL,
  `height` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`id_container`, `id_fitur`, `weight`, `height`) VALUES
(10, 10, '300px', '200px');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `mapel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `mapel`) VALUES
(1, 'MateMatika'),
(2, 'Fisika'),
(3, 'Kimia'),
(4, 'Biologi'),
(5, 'Pkn'),
(6, 'Sejarah'),
(7, 'B Indonesia'),
(8, 'B Inggrish'),
(9, 'Penjas'),
(10, 'Seni Budaya');

-- --------------------------------------------------------

--
-- Table structure for table `navdrop`
--

CREATE TABLE `navdrop` (
  `id_navdrop` int(10) NOT NULL,
  `tipe` text NOT NULL,
  `warna` text NOT NULL,
  `id_navbar` int(10) NOT NULL,
  `font` text NOT NULL,
  `label` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `navdrop`
--

INSERT INTO `navdrop` (`id_navdrop`, `tipe`, `warna`, `id_navbar`, `font`, `label`, `link`) VALUES
(1, 'item', 'black', 10, 'fantasy', '', 'about');

-- --------------------------------------------------------

--
-- Table structure for table `navitem`
--

CREATE TABLE `navitem` (
  `id_item` int(10) NOT NULL,
  `id_sort` int(11) NOT NULL,
  `tipe` enum('drop','item') NOT NULL,
  `warna` text NOT NULL,
  `label` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `navitem`
--

INSERT INTO `navitem` (`id_item`, `id_sort`, `tipe`, `warna`, `label`, `link`) VALUES
(1, 1, 'item', 'green', 'pertama', 'pertama'),
(3, 3, 'item', 'kedua', 'kedua', 'kuda'),
(4, 4, 'item', 'green', 'ketiga', 'pertama'),
(2, 2, 'drop', 'kedua', 'keempat', 'kuda');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `matematika` int(11) NOT NULL,
  `b_inggris` int(11) NOT NULL,
  `b_indonesia` int(11) NOT NULL,
  `ipa` int(11) NOT NULL,
  `foto_skhun` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `nilai_siswa`
-- (See below for the actual view)
--
CREATE TABLE `nilai_siswa` (
`nis` int(11)
,`nama_siswa` varchar(50)
,`matematika` int(11)
,`b_inggris` int(11)
,`b_indonesia` int(11)
,`ipa` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `nofitur`
-- (See below for the actual view)
--
CREATE TABLE `nofitur` (
`id_fitur` int(10)
,`link` text
);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` int(10) NOT NULL,
  `judul` text NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `isi` varchar(500) NOT NULL,
  `tanggal` date NOT NULL,
  `status` text NOT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `judul`, `id_kategori`, `isi`, `tanggal`, `status`, `id_user`) VALUES
(1, 'PENGUMUMAN PEMENANG', 1, 'ALI MEMENANGKAN KEJUARAAN KENIGAAN DENGAN TOTAL KEMENANGAN 10-0 MELAWAN NIGERIA', '2019-05-01', 'WOW', 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` int(11) NOT NULL,
  `id_nilai` int(11) NOT NULL,
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
  `tahun_lulus` int(7) NOT NULL,
  `status` enum('aktif','tidak aktif','pending') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `siswa`
--
DELIMITER $$
CREATE TRIGGER `hapus_siswa` AFTER DELETE ON `siswa` FOR EACH ROW BEGIN
INSERT INTO log_siswa
set nis = OLD.nis,
nama_siswa = OLD.nama_siswa,
jenis_kel = OLD.jenis_kel,
alamat = old.alamat,
waktu = now();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `subnavitem`
--

CREATE TABLE `subnavitem` (
  `id_sub` int(10) NOT NULL,
  `id_item` int(10) NOT NULL,
  `label` text NOT NULL,
  `link` text NOT NULL,
  `tipe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subnavitem`
--

INSERT INTO `subnavitem` (`id_sub`, `id_item`, `label`, `link`, `tipe`) VALUES
(1, 2, 'www', 'www', 'item'),
(2, 2, 'www', 'www', 'item');

-- --------------------------------------------------------

--
-- Table structure for table `tema`
--

CREATE TABLE `tema` (
  `id_tema` int(10) NOT NULL,
  `warna_tema` text NOT NULL,
  `label` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tema`
--

INSERT INTO `tema` (`id_tema`, `warna_tema`, `label`) VALUES
(2, 'green', 'Hijau'),
(5, 'Blue', 'Biru'),
(6, 'Yellow', 'kuning');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` text NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`) VALUES
(1, 'admin', '', 'admin');

-- --------------------------------------------------------

--
-- Structure for view `allpost`
--
DROP TABLE IF EXISTS `allpost`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `allpost`  AS  select `user`.`nama` AS `nama`,`post`.`judul` AS `judul`,`post`.`tanggal` AS `tanggal`,`post`.`status` AS `status`,`kategori`.`nama_kategori` AS `nama_kategori` from ((`post` join `user` on((`post`.`id_user` = `user`.`id_user`))) join `kategori` on((`post`.`id_kategori` = `kategori`.`id_kategori`))) ;

-- --------------------------------------------------------

--
-- Structure for view `dropdown`
--
DROP TABLE IF EXISTS `dropdown`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dropdown`  AS  select `navitem`.`id_item` AS `id_item`,`subnavitem`.`label` AS `label`,`subnavitem`.`link` AS `link`,`subnavitem`.`id_sub` AS `id_sub` from (`navitem` join `subnavitem`) where (`subnavitem`.`id_item` = `navitem`.`id_item`) ;

-- --------------------------------------------------------

--
-- Structure for view `jumlah_fitur`
--
DROP TABLE IF EXISTS `jumlah_fitur`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jumlah_fitur`  AS  select count(0) AS `jumlah_fitur` from `fitur` ;

-- --------------------------------------------------------

--
-- Structure for view `jumlah_guru`
--
DROP TABLE IF EXISTS `jumlah_guru`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jumlah_guru`  AS  select count(0) AS `jumlah_guru` from `guru` ;

-- --------------------------------------------------------

--
-- Structure for view `jumlah_navbar`
--
DROP TABLE IF EXISTS `jumlah_navbar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jumlah_navbar`  AS  select count(0) AS `jumlah_navbar` from `navitem` ;

-- --------------------------------------------------------

--
-- Structure for view `jumlah_post`
--
DROP TABLE IF EXISTS `jumlah_post`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jumlah_post`  AS  select count(0) AS `jumlah_post` from `post` ;

-- --------------------------------------------------------

--
-- Structure for view `jumlah_siswa`
--
DROP TABLE IF EXISTS `jumlah_siswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jumlah_siswa`  AS  select count(0) AS `jumlah_siswa` from `siswa` ;

-- --------------------------------------------------------

--
-- Structure for view `jumlah_tema`
--
DROP TABLE IF EXISTS `jumlah_tema`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jumlah_tema`  AS  select count(0) AS `jumlah_tema` from `tema` ;

-- --------------------------------------------------------

--
-- Structure for view `ket_guru`
--
DROP TABLE IF EXISTS `ket_guru`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ket_guru`  AS  select `guru`.`id_guru` AS `id_guru`,`guru`.`nama_guru` AS `nama_guru`,`guru`.`alamat` AS `alamat`,`jabatan_guru`.`jabatan` AS `jabatan`,`mapel`.`mapel` AS `mapel` from ((`guru` join `jabatan_guru` on((`guru`.`id_jabatan` = `jabatan_guru`.`id_jabatan`))) join `mapel` on((`guru`.`id_mapel` = `mapel`.`id_mapel`))) ;

-- --------------------------------------------------------

--
-- Structure for view `nilai_siswa`
--
DROP TABLE IF EXISTS `nilai_siswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nilai_siswa`  AS  select `siswa`.`nis` AS `nis`,`siswa`.`nama_siswa` AS `nama_siswa`,`nilai`.`matematika` AS `matematika`,`nilai`.`b_inggris` AS `b_inggris`,`nilai`.`b_indonesia` AS `b_indonesia`,`nilai`.`ipa` AS `ipa` from (`nilai` join `siswa` on((`siswa`.`id_nilai` = `nilai`.`id_nilai`))) ;

-- --------------------------------------------------------

--
-- Structure for view `nofitur`
--
DROP TABLE IF EXISTS `nofitur`;

CREATE ALGORITHM=UNDEFINED DEFINER=`portal`@`localhost` SQL SECURITY DEFINER VIEW `nofitur`  AS  select `fitur`.`id_fitur` AS `id_fitur`,`fitur`.`link` AS `link` from `fitur` where (not(exists(select 1 from `main` where (`fitur`.`id_fitur` = `main`.`id_fitur`)))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fitur`
--
ALTER TABLE `fitur`
  ADD PRIMARY KEY (`id_fitur`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD KEY `jabatan_id` (`id_jabatan`),
  ADD KEY `mapel_id` (`id_mapel`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `jabatan_guru`
--
ALTER TABLE `jabatan_guru`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `kategori_id` (`id_kategori`),
  ADD KEY `user_id` (`id_user`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `nilai_id` (`id_nilai`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `jabatan_id` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan_guru` (`id_jabatan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mapel_id` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `kategori_id` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `nilai_id` FOREIGN KEY (`id_nilai`) REFERENCES `nilai` (`id_nilai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
