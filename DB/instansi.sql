-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 02:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_jaksel`
--

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE `instansi` (
  `id` int(11) NOT NULL,
  `nama_instansi` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`id`, `nama_instansi`, `slug`) VALUES
(1, 'Bagian Umum dan Protokol', 'bagumum'),
(2, 'Bagian Program, Pelaporan dan Keuangan', 'bagprogram'),
(3, 'Bagian Kesra', 'bagkesra'),
(4, 'Bagian Pemerintahan', 'bagpem'),
(5, 'Bagian Hukum', 'baghukum'),
(6, 'Satpol PP', 'satpol'),
(7, 'Suku Badan Perencanaan Pembangunan Kota', 'subanper'),
(8, 'Suku Bagian Kesbang Pol', 'subankes'),
(9, 'Suku Dinas Komunikasi, Informasi dan Statistik', 'sudinkom'),
(10, 'Suku Badan Pengelola Keuangan', 'subanpeng'),
(11, 'Suku Dinas Pendidikan Wilayah II', 'sudinpend-II'),
(12, 'Bagian Perekonomian', 'bagekonomi'),
(13, 'Bagian Penataan dan Lingkungan Hidup', 'bagnataan'),
(14, 'Inspektur Pembantu', 'inspektur'),
(15, 'Suku Dinas Pendidikan Wilayah I', 'sudinpend-I'),
(16, 'Bagian Kepegawaian Ketatalaksanaan dan Pelayanan Publik', 'bagpegawai'),
(17, 'Suku Dinas Ketahanan Pangan, Kelautan dan Pertanian', 'sudintahanan'),
(18, 'Suku Dinas Pemuda dan Olahraga', 'sudinpemuda'),
(19, 'Suku Dinas Kebudayaan', 'sudinbudaya'),
(20, 'Unit PTSP', 'ptsp'),
(21, 'Suku Badan Pendapatan Daerah', 'subandapatan'),
(22, 'Suku Badan Pengelola Aset', 'subanaset'),
(23, 'Suku Dinas Kehutanan dan Taman Kota', 'sudinhutan'),
(24, 'Suku Dinas Perumahan Rakyat dan Kawasan Pemukiman', 'sudinrumah'),
(25, 'Suku Dinas Energi dan Ketenaga Kerjaan', 'sudinenergi'),
(26, 'Suku Badan Kepegawaian Kota', 'subanpegawai'),
(27, 'Suku Dinas Sosial', 'sudinsosial'),
(28, 'Unit PPBJ', 'ppbj'),
(29, 'Suku Dinas Cipta Karya, Tata Ruang dan Pertanahan', 'sudinkarya'),
(30, 'Suku Dinas Perindustrian dan KUKM', 'sudinindus'),
(31, 'Suku Dinas Bina Marga', 'sudinbina'),
(32, 'Suku Dinas Sumber Daya Air', 'sudinsumber'),
(33, 'Suku Dinas Pariwisata', 'sudinwisata'),
(34, 'Suku Dinas Penanggulangan Kebakaran dan Penyelamatan', 'sudinnyelamat'),
(35, 'Suku Dinas Perhubungan', 'sudinhub'),
(36, 'Suku Dinas Kependudukan dan Catatan Sipil', 'sudinpenduduk'),
(37, 'Suku Dinas Kesehatan Perpustakaan dan Arsip', 'sudinsehat'),
(38, 'Suku Dinas Lingkungan Hidup', 'sudinkungan'),
(39, 'Suku Dinas PPAPP', 'sudinppapp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instansi`
--
ALTER TABLE `instansi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
