-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 02:24 AM
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
  `slug` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `nama_kecamatan`, `slug`, `link`) VALUES
(1, 'Cilandak', 'cilandak', 'https://selatan.jakarta.go.id/modul/kecamatan/cilandak/'),
(2, 'Jagakarsa', 'jagakarsa', 'https://selatan.jakarta.go.id/modul/kecamatan/jagakarsa/'),
(3, 'Kebayoran Baru', 'kebayoran-baru', 'https://selatan.jakarta.go.id/modul/kecamatan/kebayoranBaru/'),
(4, 'Kebayoran Lama', 'kebayoran-lama', 'https://selatan.jakarta.go.id/modul/kecamatan/kebayoranLama/'),
(5, 'Pancoran', 'pancoran', 'https://selatan.jakarta.go.id/modul/kecamatan/pancoran/'),
(6, 'Mampang Prapatan', 'mampang-prapatan', 'https://selatan.jakarta.go.id/modul/kecamatan/mampangPrapatan/'),
(7, 'Pasar Minggu', 'pasar-minggu', 'https://selatan.jakarta.go.id/modul/kecamatan/pasarMinggu/'),
(8, 'Pesanggrahan', 'pesanggrahan', 'https://selatan.jakarta.go.id/modul/kecamatan/pesanggrahan/'),
(9, 'Setiabudi', 'setiabudi', 'https://selatan.jakarta.go.id/modul/kecamatan/setiaBudi/'),
(10, 'Tebet', 'tebet', 'https://selatan.jakarta.go.id/modul/kecamatan/tebet/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
