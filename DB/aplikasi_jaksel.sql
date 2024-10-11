-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2024 at 06:02 AM
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
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `nama_kecamatan` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `nama_kecamatan`, `slug`) VALUES
(1, 'Cilandak', 'cilandak'),
(2, 'Jagakarsa', 'jagakarsa'),
(3, 'Kebayoran Baru', 'kebayoran-baru'),
(4, 'Kebayoran Lama', 'kebayoran-lama'),
(5, 'Pancoran', 'pancoran'),
(6, 'Mampang Prapatan', 'mampang-prapatan'),
(7, 'Pasar Minggu', 'pasar-minggu'),
(8, 'Pesanggrahan', 'pesanggrahan'),
(9, 'Setiabudi', 'setiabudi'),
(10, 'Tebet', 'tebet'),
(11, 'Cilandak', 'cilandak');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id` int(11) NOT NULL,
  `nama_kelurahan` varchar(255) NOT NULL,
  `asal_kecamatan` varchar(255) NOT NULL,
  `slug_kecamatan` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id`, `nama_kelurahan`, `asal_kecamatan`, `slug_kecamatan`, `slug`) VALUES
(1, 'Gandaria Selatan', 'Cilandak', 'Cilandak', 'gandaria-selatan'),
(2, 'Cilandak Barat', 'Cilandak', 'Cilandak', 'cilandak-barat'),
(3, 'Lebak Bulus', 'Cilandak', 'Cilandak', 'lebak-bulus'),
(4, 'Cipete Selatan', 'Cilandak', 'Cilandak', 'cipete-selatan'),
(5, 'Pondok Labu', 'Cilandak', 'Cilandak', 'pondok-labu'),
(6, 'Jagakarsa', 'Jagakarsa', 'Jagakarsa', 'jagakarsa'),
(7, 'Tanjung Barat', 'Jagakarsa', 'Jagakarsa', 'tanjung-barat'),
(8, 'Lenteng Agung', 'Jagakarsa', 'Jagakarsa', 'lenteng-agung'),
(9, 'Cipedak', 'Jagakarsa', 'Jagakarsa', 'cipedak'),
(10, 'Ciganjur', 'Jagakarsa', 'Jagakarsa', 'ciganjur'),
(11, 'Srengseng Sawah', 'Jagakarsa', 'Jagakarsa', 'srengseng-sawah'),
(12, 'Cipete Utara', 'Kebayoran Baru', 'Kebayoran-Baru', 'cipete-utara'),
(13, 'Gunung', 'Kebayoran Baru', 'Kebayoran-Baru', 'gunung'),
(14, 'Gandaria Utara', 'Kebayoran Baru', 'Kebayoran-Baru', 'gandaria-utara'),
(15, 'Petogogan', 'Kebayoran Baru', 'Kebayoran-Baru', 'petogogan'),
(16, 'Rawa Barat', 'Kebayoran Baru', 'Kebayoran-Baru', 'rawa-barat'),
(17, 'Kramat Pela', 'Kebayoran Baru', 'Kebayoran-Baru', 'kramat-pela'),
(18, 'Senayan', 'Kebayoran Baru', 'Kebayoran-Baru', 'senayan'),
(19, 'Selong', 'Kebayoran Baru', 'Kebayoran-Baru', 'selong'),
(20, 'Melawai', 'Kebayoran Baru', 'Kebayoran-Baru', 'melawai'),
(21, 'Pulo', 'Kebayoran Baru', 'Kebayoran-Baru', 'pulo'),
(22, 'Kebayoran Lama Selatan', 'Kebayoran Lama', 'Kebayoran-Lama', 'kebayoran-lama-selatan'),
(23, 'Kebayoran Lama Utara', 'Kebayoran Lama', 'Kebayoran-Lama', 'kebayoran-lama-utara'),
(24, 'Cipulir', 'Kebayoran Lama', 'Kebayoran-Lama', 'cipulir'),
(25, 'Grogol Selatan', 'Kebayoran Lama', 'Kebayoran-Lama', 'grogol-selatan'),
(26, 'Grogol Utara', 'Kebayoran Lama', 'Kebayoran-Lama', 'grogol-utara'),
(27, 'Pondok Pinang', 'Kebayoran Lama', 'Kebayoran-Lama', 'pondok-pinang'),
(28, 'Duren Tiga', 'Pancoran', 'Pancoran', 'duren-tiga'),
(29, 'Kalibata', 'Pancoran', 'Pancoran', 'kalibata'),
(30, 'Pancoran', 'Pancoran', 'Pancoran', 'pancoran'),
(31, 'Rawa Jati', 'Pancoran', 'Pancoran', 'rawa-jati'),
(32, 'Pengadegan', 'Pancoran', 'Pancoran', 'pengadegan'),
(33, 'Cikoko', 'Pancoran', 'Pancoran', 'cikoko'),
(34, 'Bangka', 'Mampang Prapatan', 'Mampang-Prapatan', 'bangka'),
(35, 'Kuningan Barat', 'Mampang Prapatan', 'Mampang-Prapatan', 'kuningan-barat'),
(36, 'Pela Mampang', 'Mampang Prapatan', 'Mampang-Prapatan', 'pela-mampang'),
(37, 'Mampang Prapatan', 'Mampang Prapatan', 'Mampang-Prapatan', 'mampang-prapatan'),
(38, 'Tegal Parang', 'Mampang Prapatan', 'Mampang-Prapatan', 'tegal-parang'),
(39, 'Cilandak Timur', 'Pasar Minggu', 'Pasar-Minggu', 'cilandak-timur'),
(40, 'Ragunan', 'Pasar Minggu', 'Pasar-Minggu', 'ragunan'),
(41, 'Pejaten Timur', 'Pasar Minggu', 'Pasar-Minggu', 'pejaten-timur'),
(42, 'Jati Padang', 'Pasar Minggu', 'Pasar-Minggu', 'jati-padang'),
(43, 'Kebagusan', 'Pasar Minggu', 'Pasar-Minggu', 'kebagusan'),
(44, 'Pejaten Barat', 'Pasar Minggu', 'Pasar-Minggu', 'pejaten-barat'),
(45, 'Pasar Minggu', 'Pasar Minggu', 'Pasar-Minggu', 'pasar-minggu'),
(46, 'Pesanggrahan', 'Pesanggrahan', 'Pesanggrahan', 'pesanggrahan'),
(47, 'Bintaro', 'Pesanggrahan', 'Pesanggrahan', 'bintaro'),
(48, 'Ulujami', 'Pesanggrahan', 'Pesanggrahan', 'ulujami'),
(49, 'Petukangan Selatan', 'Pesanggrahan', 'Pesanggrahan', 'petukangan-selatan'),
(50, 'Petukangan Utara', 'Pesanggrahan', 'Pesanggrahan', 'petukangan-utara'),
(51, 'Pasar Manggis', 'Setia Budi', 'Setia-Budi', 'pasar-manggis'),
(52, 'Karet Semanggi', 'Setia Budi', 'Setia-Budi', 'karet-semanggi'),
(53, 'Menteng Atas', 'Setia Budi', 'Setia-Budi', 'menteng-atas'),
(54, 'Karet Kuningan', 'Setia Budi', 'Setia-Budi', 'karet-kuningan'),
(55, 'Kuningan Timur', 'Setia Budi', 'Setia-Budi', 'kuningan-timur'),
(56, 'Setiabudi', 'Setia Budi', 'Setia-Budi', 'setiabudi'),
(57, 'Guntur', 'Setia Budi', 'Setia-Budi', 'guntur'),
(58, 'Karet', 'Setia Budi', 'Setia-Budi', 'karet'),
(59, 'Menteng Dalam', 'Tebet', 'Tebet', 'menteng-dalam'),
(60, 'Kebon Baru', 'Tebet', 'Tebet', 'kebon-baru'),
(61, 'Bukit Duri', 'Tebet', 'Tebet', 'bukit-duri'),
(62, 'Manggarai Selatan', 'Tebet', 'Tebet', 'manggarai-selatan'),
(63, 'Tebet Barat', 'Tebet', 'Tebet', 'tebet-barat'),
(64, 'Tebet Timur', 'Tebet', 'Tebet', 'tebet-timur'),
(65, 'Manggarai', 'Tebet', 'Tebet', 'manggarai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
