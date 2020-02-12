-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Feb 2020 pada 13.45
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evoting`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(35) NOT NULL DEFAULT '',
  `alamat` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(13) NOT NULL DEFAULT '',
  `username` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  `id_level` varchar(5) NOT NULL DEFAULT '',
  `NA` varchar(5) NOT NULL DEFAULT '',
  `TanggalBuat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Email` varchar(45) NOT NULL,
  `gcm` varchar(255) NOT NULL,
  `Foto` varchar(45) NOT NULL DEFAULT '',
  `ktp` varchar(45) NOT NULL,
  `wakil` varchar(45) NOT NULL,
  `ktp2` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `phone`, `username`, `password`, `id_level`, `NA`, `TanggalBuat`, `Email`, `gcm`, `Foto`, `ktp`, `wakil`, `ktp2`) VALUES
(1, 'Panitia', 'Jember', '085123456711', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', 'N', '0000-00-00 00:00:00', 'rara@gmail.com', '', '', '', '', ''),
(19, 'Moh Lukman Sholeh S.Kom', 'Pati', '0895663489928', 'kandidat', 'a94994c1f9d6c72599542b12d771d1bc', '3', '', '2019-04-04 19:04:43', '', '', '21.jpg', '3316543787600025', 'Dedi Kurniawan S.A.B', '3315427639800043'),
(20, 'David Heriwanto M.Kom', 'Jember', '087875667890 ', 'kandidat2', '2bffe16305577d9689a200067b878f65', '3', '', '2019-04-04 19:38:27', '', '', '6.jpg', '3334689987700089', 'Galih Saputra S.K.M', '333674589879700076'),
(23, 'Adora Salsabila', 'Kalimantan', '089745271342', 'Adora', 'c48b91661e19474b3769b4e7652ae03d', '2', '', '2020-01-15 19:48:05', '', '', '', '3312452256780014', '', ''),
(24, 'Aerilyn  Bellvania', 'Kalimantan', '0087342516723', 'Aerilyn ', 'a336f8054e8111a9f6ab98daab65e111', '2', '', '2020-01-15 19:50:23', '', '', '', '3315423614320015', '', ''),
(25, 'Alexi Bastian', 'Surabaya', '082134567881', 'Alexi', 'da40c761c23aa3f02058a33b0a4309c0', '2', '', '2020-01-15 19:52:35', '', '', '', '3315427653820016', '', ''),
(26, 'Buana Saputra', 'Medan', '081133425612', 'Buana', '9a3e1ce1a1a88bd15d8c4b4916bf1c7d', '2', '', '2020-01-15 20:13:46', '', '', '', '3315423674980017', '', ''),
(27, 'Baron Candra', 'Yogyakarta', '081223141234', 'Baron', '50e4029b7a1fd4028ed87b80eff78130', '2', '', '2020-01-15 20:17:14', '', '', '', '3312451347860018', '', ''),
(29, 'Bariâ€™a Ufaira Apsariani', 'Jakarta', '087513426509', 'Bariâ€™a ', 'ec1fa2b3057ece07a27339e1a3de0903', '2', '', '2020-01-15 20:20:54', '', '', '', '3312987765430019', '', ''),
(30, 'Barika Gantari Gatawati', 'Bali', '089555664231', 'Barika', '85343935e2a0261a8665772da2a4c088', '2', '', '2020-01-15 20:22:15', '', '', '', '3312998661240020', '', ''),
(31, 'Desmon Irwansyah', 'Lombok', '081223556178', 'Desmon', 'f274bb42a8aa0b37682ce62bac19d9a6', '2', '', '2020-01-15 20:23:37', '', '', '', '3317666437780021', '', ''),
(32, 'Damar Rahadi', 'Pati', '087653214567', 'Damar', '5281e2739edfe9c33343f1d9fd3897b7', '2', '', '2020-01-15 20:25:04', '', '', '', '3317775438320022', '', ''),
(33, 'Edwin Prasasti', 'Riau', '087654321654', 'Edwin', '80940426fb71d4561add22a5cc809244', '2', '', '2020-01-15 20:26:11', '', '', '', '3317884333210023', '', ''),
(34, 'Earlyta Arsyfa Salsabila', 'Semarang', '085423653421', 'Earlyta', '6c2385d09233027a6bce4b49f886407a', '2', '', '2020-01-15 20:28:10', '', '', '', '3315554448720024', '', ''),
(35, 'Fanny Maheswari', 'Solo', '081345671764', 'Fanny', 'b9e07fdf1b96de6ca76bc32532e806ad', '2', '', '2020-01-15 20:29:16', '', '', '', '3316733422140025', '', ''),
(36, 'Fani Inayatussolihah', 'Pati', '085712733244', 'Fani', '5a6c3117f5348275ca26005ae5e40f3c', '2', '', '2020-01-15 20:30:20', '', '', '', '3312556678310026', '', ''),
(37, 'Gati Mahika Maheswari', 'Lombok', '08999667331', 'Gati', '6eee5a657f74274ee4427b02454eae05', '2', '', '2020-01-15 20:31:51', '', '', '', '3314577888230026', '', ''),
(38, 'Gilang Saputra', 'Solo', '081234566779', 'Gilang', 'b47376a6ee2d365b14e3636121056ae6', '2', '', '2020-01-15 20:34:07', '', '', '', '3314455277620027', '', ''),
(39, 'Haidar Haigan', 'Lombok', '08966744321', 'Haidar', 'b0f62ba6be3771cf670ad32dbd3a30f5', '2', '', '2020-01-15 20:35:17', '', '', '', '3318885567230028', '', ''),
(40, 'Hagya Sophia', 'Yogyakarta', '081111554662', 'Hagya', '1a23f9cb29a9ea39809cea89c3178dda', '2', '', '2020-01-15 20:36:25', '', '', '', '3312556788230029', '', ''),
(41, 'Irfan Hakim', 'Bali', '087665544223', 'Irfan', '15ce3b106251f44af3a97a061631b089', '2', '', '2020-01-15 20:38:00', '', '', '', '3316665543320030', '', ''),
(42, 'Jani Hening Kemala', 'Semarang', '082136999778', 'Jani', '1bd3fef440fb17501cbe8c33fbb98e2d', '2', '', '2020-01-15 20:39:27', '', '', '', '3315547883210031', '', ''),
(43, 'Syahrul Nizam', 'Pati', '089556643218', 'Syahrul', '9986e0849a679e87c7174b0faa8e7e55', '2', '', '2020-01-15 20:41:20', '', '', '', '3318887564420032', '', ''),
(50, 'Siska Auliya', 'Yogyakarta', '087765543221', 'Siska', '46d8c90b96a7ca25df020f7615e5d1a0', '2', '', '2020-01-16 17:18:27', '', '', '', '3316633488930033', '', ''),
(51, 'Tri Handayani', 'Riau', '087123555672', 'Tri', '8b0b7acd122b2e972b4ca3ed105edfe7', '2', '', '2020-01-16 17:20:33', '', '', '', '3312452378830034', '', ''),
(52, 'Ummy Kholifah', 'Pati', '08765421990', 'Ummy', '8878d0da512f97308c0fa0d04d30a673', '2', '', '2020-01-16 17:21:38', '', '', '', '3315533226540035', '', ''),
(53, 'Vian nizar', 'Bali', '08744466512', 'Vian', 'f8906e2daaf2c07ac2c098172b3602f8', '2', '', '2020-01-16 17:24:07', '', '', '', '3316799956440036', '', ''),
(54, 'Zoy Maulana', 'Pati', '087765998654', 'Zoy', 'efb446a03fc5a0be7c278335a2615f6b', '2', '', '2020-01-16 17:26:16', '', '', '', '3315654325500037', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_level`
--

CREATE TABLE `user_level` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(45) NOT NULL DEFAULT '',
  `NA` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_level`
--

INSERT INTO `user_level` (`id`, `level`, `NA`) VALUES
(1, 'Administrator', 'N'),
(2, 'Pemilih', 'N'),
(3, 'Kandidat', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `votingkandidat`
--

CREATE TABLE `votingkandidat` (
  `id` int(10) UNSIGNED NOT NULL,
  `idkandidat` varchar(45) NOT NULL DEFAULT '',
  `TanggalBuat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userpilih` varchar(45) NOT NULL DEFAULT '',
  `Tanggal` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `votingkandidat`
--

INSERT INTO `votingkandidat` (`id`, `idkandidat`, `TanggalBuat`, `userpilih`, `Tanggal`) VALUES
(1, '19', '2019-04-04 21:39:24', 'lukman', '2019-04-04'),
(2, '20', '2019-04-04 21:39:24', 'Pemilih', '2019-04-04'),
(3, '19', '2019-04-28 19:21:03', 'lukman', '2019-04-28'),
(4, '20', '2020-01-03 22:00:10', 'lukman', '2020-01-03'),
(5, '19', '2020-01-17 02:50:19', 'Syahrul', '2020-01-16'),
(6, '20', '2020-01-17 02:53:20', 'Adora', '2020-01-16'),
(7, '19', '2020-01-17 02:58:33', 'Alexi', '2020-01-16'),
(8, '19', '2020-01-17 02:59:08', 'Buana', '2020-01-16'),
(9, '19', '2020-01-17 02:59:36', 'Baron', '2020-01-16'),
(10, '19', '2020-01-17 03:00:52', 'Barika', '2020-01-16'),
(11, '19', '2020-01-17 03:01:14', 'Desmon', '2020-01-16'),
(12, '19', '2020-01-17 03:01:34', 'Damar', '2020-01-16'),
(13, '19', '2020-01-17 03:01:55', 'Edwin', '2020-01-16'),
(14, '19', '2020-01-17 03:02:49', 'Earlyta', '2020-01-16'),
(15, '20', '2020-01-17 03:03:09', 'Fanny', '2020-01-16'),
(16, '20', '2020-01-17 03:04:00', 'Gati', '2020-01-16'),
(17, '19', '2020-01-17 03:04:22', 'Gilang', '2020-01-16'),
(18, '19', '2020-01-17 03:04:45', 'Haidar', '2020-01-16'),
(19, '19', '2020-01-17 03:05:45', 'Irfan', '2020-01-16'),
(20, '20', '2020-01-17 03:06:22', 'Jani', '2020-01-16'),
(21, '19', '2020-01-17 03:07:22', 'Siska', '2020-01-16'),
(22, '20', '2020-01-17 03:07:39', 'Tri', '2020-01-16'),
(23, '20', '2020-01-17 03:08:05', 'Ummy', '2020-01-16'),
(24, '20', '2020-01-17 03:08:22', 'Vian', '2020-01-16'),
(25, '19', '2020-01-17 03:08:46', 'Zoy', '2020-01-16'),
(26, '19', '2020-01-17 10:52:39', 'Syahrul', '2020-01-17'),
(27, '19', '2020-01-21 01:48:20', 'syahrul', '2020-01-20');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_user`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_user` (
`wakil` varchar(45)
,`ktp2` varchar(45)
,`ktp` varchar(45)
,`id` int(10) unsigned
,`nama` varchar(35)
,`Foto` varchar(45)
,`alamat` varchar(255)
,`phone` varchar(13)
,`username` varchar(45)
,`password` varchar(45)
,`id_level` varchar(5)
,`NA` varchar(5)
,`TanggalBuat` datetime
,`Email` varchar(45)
,`gcm` varchar(255)
,`NamaLevel` varchar(45)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_user`
--
DROP TABLE IF EXISTS `v_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_user`  AS  select `a`.`wakil` AS `wakil`,`a`.`ktp2` AS `ktp2`,`a`.`ktp` AS `ktp`,`a`.`id` AS `id`,`a`.`nama` AS `nama`,`a`.`Foto` AS `Foto`,`a`.`alamat` AS `alamat`,`a`.`phone` AS `phone`,`a`.`username` AS `username`,`a`.`password` AS `password`,`a`.`id_level` AS `id_level`,`a`.`NA` AS `NA`,`a`.`TanggalBuat` AS `TanggalBuat`,`a`.`Email` AS `Email`,`a`.`gcm` AS `gcm`,`b`.`level` AS `NamaLevel` from (`user` `a` left join `user_level` `b` on((`a`.`id_level` = `b`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `votingkandidat`
--
ALTER TABLE `votingkandidat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `votingkandidat`
--
ALTER TABLE `votingkandidat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
