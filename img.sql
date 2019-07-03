-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2019 at 12:53 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisko`
--

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

CREATE TABLE `img` (
  `id_img` int(4) NOT NULL,
  `link` text NOT NULL,
  `deskripsi` text NOT NULL,
  `tipe` enum('public','private') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `img`
--

INSERT INTO `img` (`id_img`, `link`, `deskripsi`, `tipe`) VALUES
(25, '7cf31b8677ce07568abbcdee27115c53.jpg', 'Kunjungan ke perusahaan', 'public'),
(28, '371500040bd3299fda012f096af9d173.jpg', 'Semarak Desember 2018', 'public'),
(29, 'e3c5aef93524556a88b58bd30ad1831a.jpg', 'Upacara hari lahir pancasila', 'public'),
(30, '6e94c6c75220174954553d65965c976e.jpg', 'Peringatan Maulid Nabi', 'public'),
(31, '7b09bd0397424c1954d22af2da6ca63b.jpg', 'Tari Saman Meraih Prestasi', 'public'),
(33, '66d9af5f92e0d1c48a674157b97b87d4.jpg', 'Cheerleader', 'public'),
(34, '69a4336bb4bdf18589d700fc11bb44a1.jpg', 'Kegiatan setelah UTS', 'public'),
(35, '04f12532da462f902dcf33ded467e0f9.jpg', 'Tim Futsal', 'public');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id_img`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `img`
--
ALTER TABLE `img`
  MODIFY `id_img` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
