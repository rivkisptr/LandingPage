-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 02:23 AM
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
(1, 'Gandaria Selatan', 'Cilandak', 'cilandak', 'gandaria-selatan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/gandariaSelatan'),
(2, 'Cilandak Barat', 'Cilandak', 'cilandak', 'cilandak-barat', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/gandariaSelatan'),
(3, 'Lebak Bulus', 'Cilandak', 'cilandak', 'lebak-bulus', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/lebakBulus'),
(4, 'Cipete Selatan', 'Cilandak', 'cilandak', 'cipete-selatan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/cipeteSelatan'),
(5, 'Pondok Labu', 'Cilandak', 'cilandak', 'pondok-labu', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pondokLabu'),
(6, 'Jagakarsa', 'Jagakarsa', 'jagakarsa', 'jagakarsa', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/jagakarsa'),
(7, 'Tanjung Barat', 'Jagakarsa', 'jagakarsa', 'tanjung-barat', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/tanjungBarat'),
(8, 'Lenteng Agung', 'Jagakarsa', 'jagakarsa', 'lenteng-agung', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/lentengAgung'),
(9, 'Cipedak', 'Jagakarsa', 'jagakarsa', 'cipedak', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/cipedak'),
(10, 'Ciganjur', 'Jagakarsa', 'jagakarsa', 'ciganjur', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/ciganjur'),
(11, 'Srengseng Sawah', 'Jagakarsa', 'jagakarsa', 'srengseng-sawah', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/srengsengSawah'),
(12, 'Cipete Utara', 'Kebayoran Baru', 'kebayoran-baru', 'cipete-utara', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/cipeteUtara'),
(13, 'Gunung', 'Kebayoran Baru', 'kebayoran-baru', 'gunung', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/gunung'),
(14, 'Gandaria Utara', 'Kebayoran Baru', 'kebayoran-baru', 'gandaria-utara', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/gandariaUtara'),
(15, 'Petogogan', 'Kebayoran Baru', 'kebayoran-baru', 'petogogan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/petogogan'),
(16, 'Rawa Barat', 'Kebayoran Baru', 'kebayoran-baru', 'rawa-barat', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/rawaBarat'),
(17, 'Kramat Pela', 'Kebayoran Baru', 'kebayoran-baru', 'kramat-pela', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kramatPela'),
(18, 'Senayan', 'Kebayoran Baru', 'kebayoran-baru', 'senayan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/senayan'),
(19, 'Selong', 'Kebayoran Baru', 'kebayoran-baru', 'selong', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/selong'),
(20, 'Melawai', 'Kebayoran Baru', 'kebayoran-baru', 'melawai', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/melawai'),
(21, 'Pulo', 'Kebayoran Baru', 'kebayoran-baru', 'pulo', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pulo'),
(22, 'Kebayoran Lama Selatan', 'Kebayoran Lama', 'kebayoran-lama', 'kebayoran-lama-selatan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kebayoranLamaSelatan'),
(23, 'Kebayoran Lama Utara', 'Kebayoran Lama', 'kebayoran-lama', 'kebayoran-lama-utara', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kebayoranLamaUtara'),
(24, 'Cipulir', 'Kebayoran Lama', 'kebayoran-lama', 'cipulir', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/cipulir'),
(25, 'Grogol Selatan', 'Kebayoran Lama', 'kebayoran-lama', 'grogol-selatan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/grogolSelatan'),
(26, 'Grogol Utara', 'Kebayoran Lama', 'kebayoran-lama', 'grogol-utara', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/grogolUtara'),
(27, 'Pondok Pinang', 'Kebayoran Lama', 'kebayoran-lama', 'pondok-pinang', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pondokPinang'),
(28, 'Duren Tiga', 'Pancoran', 'pancoran', 'duren-tiga', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/durenTiga'),
(29, 'Kalibata', 'Pancoran', 'pancoran', 'kalibata', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kalibata'),
(30, 'Pancoran', 'Pancoran', 'pancoran', 'pancoran', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pancoran'),
(31, 'Rawa Jati', 'Pancoran', 'pancoran', 'rawa-jati', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/rawaJati'),
(32, 'Pengadegan', 'Pancoran', 'pancoran', 'pengadegan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pengadegan'),
(33, 'Cikoko', 'Pancoran', 'pancoran', 'cikoko', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/cikoko'),
(34, 'Bangka', 'Mampang Prapatan', 'mampang-prapatan', 'bangka', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/bangka'),
(35, 'Kuningan Barat', 'Mampang Prapatan', 'mampang-prapatan', 'kuningan-barat', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kuninganBarat'),
(36, 'Pela Mampang', 'Mampang Prapatan', 'mampang-prapatan', 'pela-mampang', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pelaMampang'),
(37, 'Mampang Prapatan', 'Mampang Prapatan', 'mampang-prapatan', 'mampang-prapatan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/mampangPrapatan'),
(38, 'Tegal Parang', 'Mampang Prapatan', 'mampang-prapatan', 'tegal-parang', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/tegalParang'),
(39, 'Cilandak Timur', 'Pasar Minggu', 'pasar-minggu', 'cilandak-timur', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/cilandakTimur'),
(40, 'Ragunan', 'Pasar Minggu', 'pasar-minggu', 'ragunan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/ragunan'),
(41, 'Pejaten Timur', 'Pasar Minggu', 'pasar-minggu', 'pejaten-timur', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pejatenTimur'),
(42, 'Jati Padang', 'Pasar Minggu', 'pasar-minggu', 'jati-padang', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/jatiPadang'),
(43, 'Kebagusan', 'Pasar Minggu', 'pasar-minggu', 'kebagusan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kebagusan'),
(44, 'Pejaten Barat', 'Pasar Minggu', 'pasar-minggu', 'pejaten-barat', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pejatenBarat'),
(45, 'Pasar Minggu', 'Pasar Minggu', 'pasar-minggu', 'pasar-minggu', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pasarMinggu'),
(46, 'Pesanggrahan', 'Pesanggrahan', 'pesanggrahan', 'pesanggrahan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pesanggrahan'),
(47, 'Bintaro', 'Pesanggrahan', 'pesanggrahan', 'bintaro', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/bintaro'),
(48, 'Ulujami', 'Pesanggrahan', 'pesanggrahan', 'ulujami', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/ulujami'),
(49, 'Petukangan Selatan', 'Pesanggrahan', 'pesanggrahan', 'petukangan-selatan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/petukanganSelatan'),
(50, 'Petukangan Utara', 'Pesanggrahan', 'pesanggrahan', 'petukangan-utara', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/petukanganUtara'),
(51, 'Pasar Manggis', 'Setia Budi', 'setia-budi', 'pasar-manggis', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pasarManggis'),
(52, 'Karet Semanggi', 'Setia Budi', 'setia-budi', 'karet-semanggi', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/karetSemanggi'),
(53, 'Menteng Atas', 'Setia Budi', 'setia-budi', 'menteng-atas', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/mentengAtas'),
(54, 'Karet Kuningan', 'Setia Budi', 'setia-budi', 'karet-kuningan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/karetKuningan'),
(55, 'Kuningan Timur', 'Setia Budi', 'setia-budi', 'kuningan-timur', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kuninganTimur'),
(56, 'Setiabudi', 'Setia Budi', 'setia-budi', 'setiabudi', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/setiabudi'),
(57, 'Guntur', 'Setia Budi', 'setia-budi', 'guntur', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/guntur'),
(58, 'Karet', 'Setia Budi', 'setia-budi', 'karet', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/karet'),
(59, 'Menteng Dalam', 'Tebet', 'tebet', 'menteng-dalam', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/mentengDalam'),
(60, 'Kebon Baru', 'Tebet', 'tebet', 'kebon-baru', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kebonBaru'),
(61, 'Bukit Duri', 'Tebet', 'tebet', 'bukit-duri', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/bukitDuri'),
(62, 'Manggarai Selatan', 'Tebet', 'tebet', 'manggarai-selatan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/manggaraiSelatan'),
(63, 'Tebet Barat', 'Tebet', 'tebet', 'tebet-barat', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/tebetBarat'),
(64, 'Tebet Timur', 'Tebet', 'tebet', 'tebet-timur', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/tebetTimur'),
(65, 'Manggarai', 'Tebet', 'tebet', 'manggarai', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/manggarai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
