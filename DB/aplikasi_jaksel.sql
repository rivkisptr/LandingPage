-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2024 at 05:59 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id` int(11) NOT NULL,
  `nama_kelurahan` varchar(255) NOT NULL,
  `asal_kecamatan` varchar(255) NOT NULL,
  `slug_kecamatan` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id`, `nama_kelurahan`, `asal_kecamatan`, `slug_kecamatan`, `slug`, `link`) VALUES
(1, 'Gandaria Selatan', 'Cilandak', 'Cilandak', 'gandaria-selatan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/gandariaSelatan'),
(2, 'Cilandak Barat', 'Cilandak', 'Cilandak', 'cilandak-barat', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/gandariaSelatan'),
(3, 'Lebak Bulus', 'Cilandak', 'Cilandak', 'lebak-bulus', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/lebakBulus'),
(4, 'Cipete Selatan', 'Cilandak', 'Cilandak', 'cipete-selatan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/cipeteSelatan'),
(5, 'Pondok Labu', 'Cilandak', 'Cilandak', 'pondok-labu', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pondokLabu'),
(6, 'Jagakarsa', 'Jagakarsa', 'Jagakarsa', 'jagakarsa', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/jagakarsa'),
(7, 'Tanjung Barat', 'Jagakarsa', 'Jagakarsa', 'tanjung-barat', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/tanjungBarat'),
(8, 'Lenteng Agung', 'Jagakarsa', 'Jagakarsa', 'lenteng-agung', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/lentengAgung'),
(9, 'Cipedak', 'Jagakarsa', 'Jagakarsa', 'cipedak', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/cipedak'),
(10, 'Ciganjur', 'Jagakarsa', 'Jagakarsa', 'ciganjur', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/ciganjur'),
(11, 'Srengseng Sawah', 'Jagakarsa', 'Jagakarsa', 'srengseng-sawah', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/srengsengSawah'),
(12, 'Cipete Utara', 'Kebayoran Baru', 'Kebayoran-Baru', 'cipete-utara', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/cipeteUtara'),
(13, 'Gunung', 'Kebayoran Baru', 'Kebayoran-Baru', 'gunung', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/gunung'),
(14, 'Gandaria Utara', 'Kebayoran Baru', 'Kebayoran-Baru', 'gandaria-utara', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/gandariaUtara'),
(15, 'Petogogan', 'Kebayoran Baru', 'Kebayoran-Baru', 'petogogan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/petogogan'),
(16, 'Rawa Barat', 'Kebayoran Baru', 'Kebayoran-Baru', 'rawa-barat', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/rawaBarat'),
(17, 'Kramat Pela', 'Kebayoran Baru', 'Kebayoran-Baru', 'kramat-pela', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kramatPela'),
(18, 'Senayan', 'Kebayoran Baru', 'Kebayoran-Baru', 'senayan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/senayan'),
(19, 'Selong', 'Kebayoran Baru', 'Kebayoran-Baru', 'selong', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/selong'),
(20, 'Melawai', 'Kebayoran Baru', 'Kebayoran-Baru', 'melawai', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/melawai'),
(21, 'Pulo', 'Kebayoran Baru', 'Kebayoran-Baru', 'pulo', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pulo'),
(22, 'Kebayoran Lama Selatan', 'Kebayoran Lama', 'Kebayoran-Lama', 'kebayoran-lama-selatan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kebayoranLamaSelatan'),
(23, 'Kebayoran Lama Utara', 'Kebayoran Lama', 'Kebayoran-Lama', 'kebayoran-lama-utara', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kebayoranLamaUtara'),
(24, 'Cipulir', 'Kebayoran Lama', 'Kebayoran-Lama', 'cipulir', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/cipulir'),
(25, 'Grogol Selatan', 'Kebayoran Lama', 'Kebayoran-Lama', 'grogol-selatan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/grogolSelatan'),
(26, 'Grogol Utara', 'Kebayoran Lama', 'Kebayoran-Lama', 'grogol-utara', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/grogolUtara'),
(27, 'Pondok Pinang', 'Kebayoran Lama', 'Kebayoran-Lama', 'pondok-pinang', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pondokPinang'),
(28, 'Duren Tiga', 'Pancoran', 'Pancoran', 'duren-tiga', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/durenTiga'),
(29, 'Kalibata', 'Pancoran', 'Pancoran', 'kalibata', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kalibata'),
(30, 'Pancoran', 'Pancoran', 'Pancoran', 'pancoran', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pancoran'),
(31, 'Rawa Jati', 'Pancoran', 'Pancoran', 'rawa-jati', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/rawaJati'),
(32, 'Pengadegan', 'Pancoran', 'Pancoran', 'pengadegan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pengadegan'),
(33, 'Cikoko', 'Pancoran', 'Pancoran', 'cikoko', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/cikoko'),
(34, 'Bangka', 'Mampang Prapatan', 'Mampang-Prapatan', 'bangka', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/bangka'),
(35, 'Kuningan Barat', 'Mampang Prapatan', 'Mampang-Prapatan', 'kuningan-barat', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kuninganBarat'),
(36, 'Pela Mampang', 'Mampang Prapatan', 'Mampang-Prapatan', 'pela-mampang', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pelaMampang'),
(37, 'Mampang Prapatan', 'Mampang Prapatan', 'Mampang-Prapatan', 'mampang-prapatan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/mampangPrapatan'),
(38, 'Tegal Parang', 'Mampang Prapatan', 'Mampang-Prapatan', 'tegal-parang', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/tegalParang'),
(39, 'Cilandak Timur', 'Pasar Minggu', 'Pasar-Minggu', 'cilandak-timur', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/cilandakTimur'),
(40, 'Ragunan', 'Pasar Minggu', 'Pasar-Minggu', 'ragunan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/ragunan'),
(41, 'Pejaten Timur', 'Pasar Minggu', 'Pasar-Minggu', 'pejaten-timur', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pejatenTimur'),
(42, 'Jati Padang', 'Pasar Minggu', 'Pasar-Minggu', 'jati-padang', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/jatiPadang'),
(43, 'Kebagusan', 'Pasar Minggu', 'Pasar-Minggu', 'kebagusan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kebagusan'),
(44, 'Pejaten Barat', 'Pasar Minggu', 'Pasar-Minggu', 'pejaten-barat', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pejatenBarat'),
(45, 'Pasar Minggu', 'Pasar Minggu', 'Pasar-Minggu', 'pasar-minggu', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pasarMinggu'),
(46, 'Pesanggrahan', 'Pesanggrahan', 'Pesanggrahan', 'pesanggrahan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pesanggrahan'),
(47, 'Bintaro', 'Pesanggrahan', 'Pesanggrahan', 'bintaro', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/bintaro'),
(48, 'Ulujami', 'Pesanggrahan', 'Pesanggrahan', 'ulujami', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/ulujami'),
(49, 'Petukangan Selatan', 'Pesanggrahan', 'Pesanggrahan', 'petukangan-selatan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/petukanganSelatan'),
(50, 'Petukangan Utara', 'Pesanggrahan', 'Pesanggrahan', 'petukangan-utara', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/petukanganUtara'),
(51, 'Pasar Manggis', 'Setia Budi', 'Setia-Budi', 'pasar-manggis', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pasarManggis'),
(52, 'Karet Semanggi', 'Setia Budi', 'Setia-Budi', 'karet-semanggi', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/karetSemanggi'),
(53, 'Menteng Atas', 'Setia Budi', 'Setia-Budi', 'menteng-atas', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/mentengAtas'),
(54, 'Karet Kuningan', 'Setia Budi', 'Setia-Budi', 'karet-kuningan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/karetKuningan'),
(55, 'Kuningan Timur', 'Setia Budi', 'Setia-Budi', 'kuningan-timur', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kuninganTimur'),
(56, 'Setiabudi', 'Setia Budi', 'Setia-Budi', 'setiabudi', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/setiabudi'),
(57, 'Guntur', 'Setia Budi', 'Setia-Budi', 'guntur', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/guntur'),
(58, 'Karet', 'Setia Budi', 'Setia-Budi', 'karet', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/karet'),
(59, 'Menteng Dalam', 'Tebet', 'Tebet', 'menteng-dalam', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/mentengDalam'),
(60, 'Kebon Baru', 'Tebet', 'Tebet', 'kebon-baru', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kebonBaru'),
(61, 'Bukit Duri', 'Tebet', 'Tebet', 'bukit-duri', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/bukitDuri'),
(62, 'Manggarai Selatan', 'Tebet', 'Tebet', 'manggarai-selatan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/manggaraiSelatan'),
(63, 'Tebet Barat', 'Tebet', 'Tebet', 'tebet-barat', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/tebetBarat'),
(64, 'Tebet Timur', 'Tebet', 'Tebet', 'tebet-timur', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/tebetTimur'),
(65, 'Manggarai', 'Tebet', 'Tebet', 'manggarai', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/manggarai');

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
