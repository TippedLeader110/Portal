-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2019 at 12:54 PM
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
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` int(10) NOT NULL,
  `judul` mediumtext NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `isi` varchar(500) NOT NULL,
  `tanggal` date NOT NULL,
  `status` mediumtext NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `cover` mediumtext,
  `slug` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `judul`, `id_kategori`, `isi`, `tanggal`, `status`, `id_user`, `cover`, `slug`) VALUES
(15, 'Forum Penerimaan Siswa Baru Sebentar Lagi Dibuka', NULL, '<p>Penerimaan siswa didik baru&nbsp;</p>\n', '2019-06-17', 'public', 3, 'bf3968965c2329d9d9f3ab0e5cba9e44.png', NULL),
(17, 'ww', NULL, '<p>awd</p>\n', '2019-06-30', 'public', 3, '08ca7a11a068140494cd05be0bf352d4.jpg', 'ww'),
(18, 'coba', NULL, '<p>ww</p>\n', '2019-06-30', 'public', 3, 'b439c50ba76ba30d1ecbca44988c6447.jpg', 'coba'),
(19, 'UPACARA HARI LAHIR PANCASILA 1 JUNI BERLANGSUNG ', 7, '<p>Hari Sabtu, 1 Juni 2019 bertepatan dengan 27 Ramadhan 1440 H, melaksanakan Upacara hari kelahiran Pancasila bertempat di lapangan sekolah. Ada yang menarik dari upacara kali ini karena pertama: bertepatan dengan bulan suci Ramadhan hari yang ke 27 dan beberapa guru maupun karyawan ada yang sudah pulang kampung halaman dalam menyambut hari raya Idul Fitri, kedua : Kepala sekolah meminta agar yang sudah pulang kampung ikut melaksanakan upacara di wilayah masing-masing dengan bergabung ke sekola', '2019-07-03', 'public', 7, 'e2d23dc53a9afd1bd2d799a40188c008.jpg', 'UPACARA-HARI-LAHIR-PANCASILA-1-JUNI-BERLANGSUNG'),
(20, '5 SMA NEGERI TERBAIK DKI JAKARTA BERDASARKAN UN 2019', 7, '<p><br />\nBerikut link 5 SMA Negeri Terbaik DKI Jakarta&nbsp;<br />\nSilakan klik di sini<br />\n<br />\n<a href=\"http://kom.ps/AFzILA\">http://kom.ps/AFzILA</a>&nbsp;</p>\n', '2019-07-01', 'public', 7, '74402a38f31b42b809ac2ec35596d16e.jpg', '5-SMA-NEGERI-TERBAIK-DKI-JAKARTA-BERDASARKAN-UN-2019'),
(21, 'KEGIATAN KUNJUNGAN KE PERUSAHAAN', 7, '<p>Selasa, 11 Desember 2018 sejumlah siswa dan guru kewirausahaan SMAN 78 Jakarta melakukan kegiatan kunjungan perusahaan ke Pabrik Nestle Indonesia di Karawang, Jawa Barat. Kegiatan ini berlangsung satu hari dari pukul 7.30 sampai pukul 16.00 dan berjalan dengan tertib lancar.&nbsp;<br />\n<br />\nAgenda kunjungan perusahaan ini merupakan program sekolah rujukan tahun 2018. SMAN 78 Jakarta merupakan salah satu sekolah yang dipercaya oleh kementrian untuk melaksanakan progran sekolah Rujukan sejak', '2018-12-03', 'public', 7, 'fadaf01b0acc481a1ae5b1b0037c644f.jpg', 'KEGIATAN-KUNJUNGAN-KE-PERUSAHAAN'),
(22, 'PERINGANTAN MAULID NABI MUHAMMAD SAW.1440 H', 7, '<p>Tanggal 6 November 2018/1440 H&nbsp;diselenggarakan peringatan Maulid Nabi Muhammad SAW dengan penceramah Ustadz Hidayat Arifianto dan bintang tamu Agung Juna. Tema Malid Nabi kali ini adalah &quot;Our Guidance&quot; The Best of Mankind&nbsp;<br />\n<br />\nKegiatan ini dimeriahkan dengan penampilan Hafiz mmunity , Marawis, pembacaan Riwayat Nabi Muhammad SAW dan host dari siswa rohis yang cukup keren. Kegiatan ini didahului dengan sambutan Kepala Sekolah, Kepala sekolah dalam sambutannya menga', '2018-12-07', 'public', 7, 'a2d8b53917a8e8bd704f866d75d621a6.jpg', 'PERINGANTAN-MAULID-NABI-MUHAMMAD-SAW1440-H'),
(23, 'SELEKSI_MUTASI2018', 7, '<p>Proses Seleksi Mutasi siswa untuk Semester Genap tahun 2017/2018 :&nbsp;<br />\n<br />\n<br />\nDengan materi seleksi :&nbsp;<br />\n<br />\nTahap I Hari Jumat&nbsp;<br />\n<br />\nKelas X --&gt; Matematika dan Bahasa &amp; Sastra Indonesia<br />\n<br />\nKelas XI --&gt; Matematika dan Fisika<br />\n<br />\n<br />\nTahap II hari Senin<br />\n<br />\nKelas X --&gt; Bahasa &amp; Sastra Inggris dan Antropologi<br />\n<br />\nKelas XI --&gt; Kimia dan Biologi<br />\n<br />\n<br />\n<br />\nJumlah alokasi kursi koson', '2018-02-12', 'public', 7, 'a5b3cfae2c096df17a207dc4fd1a0b68.jpg', 'SELEKSI_MUTASI2018'),
(24, 'Edufair 2017', 7, '<p>EDUFAIR TAHUN 2017&nbsp;<br />\n<br />\nAcara rutin tahunan yang bermanfaat untuk memberikan informasi mengenai perguruan tinggi dalam negeri maupun perguruan tinggi yang ada di luar negeri, serta kiat-kiat untuk mendapatkan bea siswa yang ada di dalam maupun diluar negeri. Mari kita kunjungi dan ramaikan.&nbsp;</p>\n', '2017-10-03', 'public', 7, 'fcf63868ea7a91e770c6df4ae57fb6b7.jpg', 'Edufair-2017'),
(25, 'MENGELOLA KONFLIK DI SEKOLAH', 9, '<p>MENGELOLA KONFLIK DI SEKOLAH&nbsp;<br />\nOleh :Dr. Saryono, M.si&nbsp;<br />\n<br />\nPengertian Konflik&nbsp;<br />\nMenurut Mc Shane dkk (2010: 328) Konflik adalah suatu proses di mana satu pihak merasa bahwa Kepentingannya ditentang atau tidak disetujui oleh pihak lain (conflictis a process in which one party perceives that his or hers interests are beingopposed or negatively affected by another party).&nbsp;<br />\n<br />\nMenurut Schermehorn dkk (2005 : 338) Konflik terjadi ketika pihak-pihak', '2018-10-01', 'public', 7, 'f792859a5e96250b1f53463dab04a859.jpg', 'MENGELOLA-KONFLIK-DI-SEKOLAH'),
(30, 'Putus Rindu', 9, '<p>Nama : Muhammad Rafi Syamsudi&nbsp;<br />\nKelas : X IPS A<br />\n<br />\nDianggap namun tak dirasa&nbsp;<br />\nMungkin begini rasanya&nbsp;<br />\nHampa dan menyiksa&nbsp;<br />\n<br />\nDirundung pilu menyesakkan dada&nbsp;<br />\nIa tak pernah merasa&nbsp;<br />\nTak pernah menghargai pula&nbsp;<br />\n<br />\nBodoh&nbsp;<br />\nUntuk apa memikirkannya?&nbsp;<br />\nSeperti jejak kaki disebuah pantai&nbsp;<br />\nSeperti oksigen yang dibutuhkan namun tak dihargai&nbsp;<br />\n<br />\nKecewa namun gundah&', '2016-06-05', 'public', 7, '0d24d738cb77e83311e919a05b3aeca4.jpg', 'Putus-Rindu'),
(31, 'Aie es? Segar di mulut, gegar di perut', 9, '<p>Oleh Nicholas Yamahoki (XI MIA H/25/2016)<br />\n<br />\nApapun makanannya, minumnya air es. Pernah dengar kalimat tersebut? Ya, mungkin kalimat tersebut pernah terbesit di benak kamu-kamu yang lagi baca artikel ini, apalagi kalo abis makan makanan yang puedesss atau makan soto yang panas-panas atau makanan panas yang superrrr pedes. Wah, pastinya minuman pertama yang paling ampuh mengusir panas, ya air es atau air dingin.&nbsp;<br />\n<br />\nNamun, tahukah kamu bahwa minum air dingin sehabis ma', '2016-05-03', 'public', 7, '9dad0608f6c03a6d125f655760972f85.jpg', 'Aie-es-Segar-di-mulut-gegar-di-perut'),
(32, 'TARI SAMAN SMAN 78 MERAIH PRESTASI MEMBANGGAKAN.', 8, '<p>Ekstrakurikuler Tari Ratoh Jaroe SMA Negeri 78 Jakarta berhasil meraih prestasi di SKYFEST 2019 yang merupakan acara tahunan dari SMA Labschool Kebayoran. Lomba tersebut diadakan pada tanggal 9 Februari 2019 yang diikuti oleh 13 peserta, diantaranya SMAN 78 Jakarta, SMAN 65 Jakarta, SMAI Al Azhar BSD, SMAN 1 Tangerang, dll. Tim tersebut tampil diurutan ke-5 dengan didampingi oleh syekh Teuku Admiral.&nbsp;<br />\nDi ajang tersebut, ICES (sebutan untuk ekstrakurikuler Tari Ratoh Jaroe) berhasil', '2019-02-10', 'public', 7, '93ab7e3d067a8e090c14412d949548ae.jpg', 'TARI-SAMAN-SMAN-78-MERAIH-PRESTASI-MEMBANGGAKAN'),
(33, 'PAMERAN KARYA SENI RUPA BERBAHAN DAUR ULANG DI KEMENTRIAN LINGKUNGAN HIDUP DAN KEHUTANAN 2018', 8, '<p>Tanggal 21 Desember 2018, Karya Peserta didik SMAN 78 Jakarta dalam bidang Seni Rupa khususnya yang berbahan daur ulang dipamerkan di Gedung Kementrian Lingkungan Hidup dan kehutanan. Selain SMAN 78 ikut pameran juga SMAN 23, SMAN 42, dan sekolah lain yang berjenjang SD dan SMP. Peserta pameran merupakan sekolah yang mendapat penhargaan sebagai sekolah Adiwiyata Nasional dan Adiwiyata Mandiri tahun 2018. SMA Negeri 78 Jakarta mendapat penghargaan sebagai sekolah Adiwiyata Mandiri yang sebelum', '2018-11-03', 'public', 7, 'bf916b44f944bd984a5e04b8e88a27f9.jpg', 'PAMERAN-KARYA-SENI-RUPA-BERBAHAN-DAUR-ULANG-DI-KEMENTRIAN-LINGKUNGAN-HIDUP-DAN-KEHUTANAN-2018'),
(34, 'BUKU KARYA PESERTA DIDIK ', 8, '<p>Buku Karya Pesera didik SMAN 78 diantaranya adalah :&nbsp;<br />\n1. Syair Emas ( Tulisan guru dan siswa sman 78 Jakarta)&nbsp;<br />\n2. Dark Moon karya Monica Niken&nbsp;<br />\n3. High School with Belt karya Abraham wiliam&nbsp;<br />\n4. Majalah AKSARA.</p>\n', '2018-07-03', 'public', 7, '0a0064853fa2d0a3d7dac3fe73d9ba41.jpg', 'BUKU-KARYA-PESERTA-DIDIK'),
(35, 'SEMARAK DESEMBER 2018', 8, '<p>Kamis, 13 desember 2018 terdiri atas gabungan tiga kegiatan yaitu pekan olah raga dan seni,&nbsp;<br />\ndesember hijau, dan Jupan Eksport Tournament (JET). Kegiatan ini di adakan dalam rangka berakhirnya penilaian akhir semesterGanjil tahun pelajaran 2018-2019. Cabang perlombaan olah raga yang diselenggarakana dalaha futsal, basket, pingpong, dan badminton. Sedangkan perlombaan seni antara lain lomba seni kriya, green fashion, menghias pot, dan poster digital. Kemudian ada perlombaan mobile l', '2018-05-03', 'public', 7, '653217889523e112e84e4c1f5c84948b.jpg', 'SEMARAK-DESEMBER-2018'),
(36, 'PERINGANTAN MAULID NABI MUHAMMAD SAW.1440 H', 8, '<p>Tanggal 6 November 2018/1440 H di Lapangan SMAN 78 Jakarta diselenggarakan peringatan Maulid Nabi Muhammad SAW dengan penceramah Ustadz Hidayat Arifianto dan bintang tamu Agung Juna. Tema Malid Nabi kali ini adalah &quot;Our Guidance&quot; The Best of Mankind. Kegiatan ini dimeriahkan dengan penampilan Hafiz mmunity SMAN 78, Marawis, pembacaan Riwayat Nabi Muhammad SAW dan host dari siswa rohis yang cukup keren. Kegiatan ini didahului dengan sambutan kepala SMAN 78 Jakarta DR. Saryono, M.Si, ', '2018-11-06', 'public', 7, '4c65d269be18cbce3cfdbe62c78a9be5.jpg', 'PERINGANTAN-MAULID-NABI-MUHAMMAD-SAW1440-H');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `user_id` (`id_user`),
  ADD KEY `kategori_id` (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
