-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2019 at 04:46 PM
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

-- --------------------------------------------------------

--
-- Stand-in structure for view `artikel`
-- (See below for the actual view)
--
CREATE TABLE `artikel` (
`id_post` int(10)
,`isi` varchar(500)
,`judul` text
,`kategori` text
,`tanggal` date
,`nama` text
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
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(10) NOT NULL,
  `logo` text NOT NULL,
  `nama_sekolah` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `sejarah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `logo`, `nama_sekolah`, `visi`, `misi`, `sejarah`) VALUES
(1, '\"back.jpg\"', 'SMA LUAR BIASA KEREN', 'MENJADI SEKOLAH YANG TERBELAKANG DAN DIPENUHI WIBU', '-MENJADI SEKOLAH TERBELAKANG\r\n-LULUSAN MENJADI WIBU\r\n-MENCINTAI GRAND BLUE SEGENAP HATI\r\n-HANYA NIGGA YANG DAPAT MASUK', 'SEKOLAH INI DICIPTAKAN OLEH ALI HIDAYAT SETELAH DIUSIR DARI WAKANDA');

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
-- Table structure for table `navitem`
--

CREATE TABLE `navitem` (
  `id_item` int(10) NOT NULL,
  `tipe` enum('drop','item') NOT NULL,
  `warna` text NOT NULL,
  `label` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `id_penulis` int(10) NOT NULL,
  `judul` text NOT NULL,
  `kategori` text NOT NULL,
  `isi` varchar(500) NOT NULL,
  `tanggal` date NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `id_penulis`, `judul`, `kategori`, `isi`, `tanggal`, `status`) VALUES
(1, 1, 'PENGUMUMAN PEMENANG', 'SEKOLAH', 'ALI MEMENANGKAN KEJUARAAN KENIGAAN DENGAN TOTAL KEMENANGAN 10-0 MELAWAN NIGERIA', '2019-05-01', 'WOW');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kel` enum('Laki-laki','Perempuan') NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `subnavitem`
--

CREATE TABLE `subnavitem` (
  `id_sub` int(10) NOT NULL,
  `id_item` int(10) NOT NULL,
  `label` text NOT NULL,
  `link` text NOT NULL,
  `tipe` enum('divider','item') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'black', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure for view `artikel`
--
DROP TABLE IF EXISTS `artikel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `artikel`  AS  select `post`.`id_post` AS `id_post`,`post`.`isi` AS `isi`,`post`.`judul` AS `judul`,`post`.`kategori` AS `kategori`,`post`.`tanggal` AS `tanggal`,`user`.`nama` AS `nama` from (`post` join `user`) where (`user`.`id` = `post`.`id_penulis`) ;

-- --------------------------------------------------------

--
-- Structure for view `dropdown`
--
DROP TABLE IF EXISTS `dropdown`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dropdown`  AS  select `navitem`.`id_item` AS `id_item`,`subnavitem`.`label` AS `label`,`subnavitem`.`link` AS `link`,`subnavitem`.`id_sub` AS `id_sub` from (`navitem` join `subnavitem` on((`subnavitem`.`id_item` = `navitem`.`id_item`))) ;

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
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `navitem`
--
ALTER TABLE `navitem`
  ADD PRIMARY KEY (`id_item`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `index` (`id_penulis`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`),
  ADD UNIQUE KEY `kode_kelas` (`kode_kelas`);

--
-- Indexes for table `subnavitem`
--
ALTER TABLE `subnavitem`
  ADD KEY `index` (`id_item`);

--
-- Indexes for table `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id_tema`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fitur`
--
ALTER TABLE `fitur`
  MODIFY `id_fitur` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tema`
--
ALTER TABLE `tema`
  MODIFY `id_tema` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subnavitem`
--
ALTER TABLE `subnavitem`
  ADD CONSTRAINT `subnavitem_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `navitem` (`id_item`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
