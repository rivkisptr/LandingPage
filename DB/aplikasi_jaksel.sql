-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2024 at 09:02 AM
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
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Default Admin');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'admin@kominfotik.com', 2, '2024-12-02 06:58:14', 1),
(2, '::1', 'admin@kominfotik.com', 2, '2024-12-02 07:02:06', 1),
(3, '::1', 'admin@kominfotik.com', 2, '2024-12-02 07:15:09', 1),
(4, '::1', 'admin@kominfotik.com', 2, '2024-12-02 07:17:56', 1),
(5, '::1', 'admin@kominfotik.com', 2, '2024-12-02 07:28:20', 1),
(6, '::1', 'admin@kominfotik.com', 2, '2024-12-02 07:29:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'Izin untuk mengatur akun '),
(2, 'manage-profile', 'Izin untuk mengatur profile'),
(3, 'manage-content', 'Izin untuk mengatur konten');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `jaksel_app`
--

CREATE TABLE `jaksel_app` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `nama_aplikasi` varchar(255) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `slug_instansi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jaksel_app`
--

INSERT INTO `jaksel_app` (`id`, `img`, `nama_aplikasi`, `deskripsi`, `link`, `slug_instansi`) VALUES
(1, 'Website-Kota-Adm-Jakarta-Selatan.png', 'Website Kota Adm Jakarta Selatan', 'Media Informasi Kota Adm Jakarta Selatan yang terdiri dari Berita, Agenda, Data dan Informasi', 'https://selatan.jakarta.go.id/', 'bagumum'),
(2, 'PPID-Jakarta-Selatan.png', 'PPID Jakarta Selatan', 'Website Pejabat Pengelola Informasi dan Dokumentasi (PPID) Sekretariat Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/ppid', ''),
(3, 'TechnoCare.png', 'Technocare LTIK', 'Layanan Help Desk Sudin Kominfotik Kota Adminitrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/technocare/', 'sudinkom'),
(4, 'Ekin-PJLP-Setko.png', 'Ekin PJLP Setko', 'Sistem pencatatan aktivitas kerja PJLP Setko Kota Adminitrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/pjlpsetko/', ''),
(5, 'Sinoli.png', 'Sinoli', 'Sistem Informasi non Litigasi Bagian Hukum Kota Adminitrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/hukum/sinoli/', ''),
(6, 'Siperbast.png', 'Siperbast', 'Sistem Informasi Penerbitan Berita Acara Serah Terima Bagian PLH', 'https://selatan.jakarta.go.id/modul/plh/siperbast', ''),
(7, 'E-Kinerja-PJLP.png', 'E-Kinerja PJLP', 'Sistem pencatatan aktivitas kerja PJLP Sudin Kominfotik Jakarta Selatan', 'https://selatan.jakarta.go.id/ekinerja-pjlp/', 'sudinkom'),
(8, 'Posko-Siaga-Bencana.png', 'Posko Siaga Bencana', 'Sistem pencatatan segala keperluan dan bantuan yang dibutuhkan dalam bencana', 'https://selatan.jakarta.go.id/modul/poskosiaga', ''),
(9, 'Destinasi-Jakarta-Selatan.png', 'Destinasi Jakarta Selatan', 'Peta destinasi pariwisata di Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/destinasi', 'sudinwisata'),
(10, 'Website-Bagian-Hukum.png', 'Website Bagian Hukum', 'Dokumentasi kegiatan bagian hukum', 'https://selatan.jakarta.go.id/modul/hukum/relaas/', ''),
(11, 'Meta-Gov-Layanan-24.png', 'Meta Gov Layanan 24 Jam', 'MetaGov JS Care melayani pertanyaan, Tentang Gambaran Umum Jakarta Selatan, Kewilayahan dan Lokasi Kantor-Kantor SKPD/UKPD di Kantor Walikota Adm Jakarta Selatan berbasis Chatbot', 'https://selatan.jakarta.go.id/modul/metagov-js-care', ''),
(12, 'Aplikasi-Space-Virtual.png', 'Aplikasi Space Virtual', 'Dokumentasi acara yang menggunakan virtual room', 'https://selatan.jakarta.go.id/modul/spacevirtual', ''),
(13, 'Website-Sudin-Nakertrans.png', 'Website Sudin Nakertrans', 'Informasi dan Dokumentasi Suku Dinas Tenaga Kerja dan Transmigrasi Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/nakertrans', ''),
(14, 'Website-Pencatatan-Hubungan-Industrial.png', 'Website Pencatatan Hubungan Industrial', 'Dokumentasi pencatatan perselisihan hubungan industrial Suku Dinas Tenaga Kerja dan Transmigrasi Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/nakertrans/pencatatan-hi/', ''),
(15, 'E-Relaas.png', 'E - Relaas', 'Dokumentasi surat relaas', 'https://selatan.jakarta.go.id/modul/hukum/relaas/', ''),
(16, 'Website-Suku-Dinas-Kebudayaan-Kota-Administrasi-Jakarta-Selatan.png', 'Website Suku Dinas Kebudayaan Kota Administrasi Jakarta Selatan', 'Informasi dan Dokumentasi Suku Dinas Kebudayaan Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/sudinbud', ''),
(17, 'SIPP.png', 'SIPP', 'Mengelola berkas pensiun pegawai dan Unggah berkas pengajuan pensiun', 'https://selatan.jakarta.go.id/modul/sipp', ''),
(18, 'Suku-Dinas-Perhubungan-Kota-Adm-Jakarta.png', 'Suku Dinas Perhubungan Kota Adm Jakarta', 'Website Sudin Perhubungan Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/sudinhub', ''),
(19, 'Bagian-Penata-Kota-dan-Lingkungan-Hidup-Jakarta-Selatan.png', 'Bagian Penata Kota dan Lingkungan Hidup Jakarta Selatan', 'Website Bagian PLH Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/pklh/', ''),
(20, 'E-Report.png', 'E-Report', 'Dokumentasi Laporan Kegiatan TP PKK Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/ereport/', ''),
(21, 'Aplikasi-Kalkulator-Gizi.png', 'Aplikasi Kalkulator Gizi', 'Aplikasi untuk memonitoring Indeks Masa Tumbuh Bayi dan Balita', 'https://selatan.jakarta.go.id/modul/kalgiz', ''),
(22, 'Posyandu-Kartini.png', 'Posyandu Kartini', 'Website Posyandu Kartini', 'https://selatan.jakarta.go.id/modul/posyandu', ''),
(23, 'PSN.png', 'PSN', 'Aplikasi Pemantau Jentik Kelurahan Cilandak Timur', 'https://selatan.jakarta.go.id/modul/kelurahan/cilandakTimur/psn/', ''),
(24, 'Sisirteco.png', 'Sisirteco', 'Sistem Monitoring kendaraan warga di sekitar Tebet Eco Park', 'https://selatan.jakarta.go.id/modul/sisirteco/', ''),
(25, 'Website-Data-DBD-Jakarta-Selatan.png', 'Website Data DBD Jakarta Selatan', 'Dashboard data DBD tingkat Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/dbd', ''),
(26, 'Website-Pendaftaran-PJLP.png', 'Website Pendaftaran PJLP', 'Dashboard Pendafraran PJLP Sudin Kominfotik Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/pendaftaran-pjlp', ''),
(27, 'Sinomari.png', 'Sinomari', 'Sistem Informasi Magang dan Riset Sudin Komunfotik Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/sinomari/', ''),
(28, 'Website-Sudin-Sosial.png', 'Website Sudin Sosial', 'Informasi dan Dokumentasi Suku Dinas Sosial Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/sudinsos', 'sudinsosial'),
(52, 'JakselApp.png', 'Aplikasi Test', 'Test', 'google.com', 'inspektur');

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
(51, 'Pasar Manggis', 'Setia Budi', 'setiabudi', 'pasar-manggis', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/pasarManggis'),
(52, 'Karet Semanggi', 'Setia Budi', 'setiabudi', 'karet-semanggi', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/karetSemanggi'),
(53, 'Menteng Atas', 'Setia Budi', 'setiabudi', 'menteng-atas', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/mentengAtas'),
(54, 'Karet Kuningan', 'Setia Budi', 'setiabudi', 'karet-kuningan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/karetKuningan'),
(55, 'Kuningan Timur', 'Setia Budi', 'setiabudi', 'kuningan-timur', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kuninganTimur'),
(56, 'Setiabudi', 'Setia Budi', 'setiabudi', 'setiabudi', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/setiabudi'),
(57, 'Guntur', 'Setia Budi', 'setiabudi', 'guntur', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/guntur'),
(58, 'Karet', 'Setia Budi', 'setiabudi', 'karet', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/karet'),
(59, 'Menteng Dalam', 'Tebet', 'tebet', 'menteng-dalam', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/mentengDalam'),
(60, 'Kebon Baru', 'Tebet', 'tebet', 'kebon-baru', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/kebonBaru'),
(61, 'Bukit Duri', 'Tebet', 'tebet', 'bukit-duri', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/bukitDuri'),
(62, 'Manggarai Selatan', 'Tebet', 'tebet', 'manggarai-selatan', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/manggaraiSelatan'),
(63, 'Tebet Barat', 'Tebet', 'tebet', 'tebet-barat', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/tebetBarat'),
(64, 'Tebet Timur', 'Tebet', 'tebet', 'tebet-timur', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/tebetTimur'),
(65, 'Manggarai', 'Tebet', 'tebet', 'manggarai', 'https://selatan.jakarta.go.id/modul/ppid/kelurahan/manggarai');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1733110526, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'admin@kominfotik.com', 'kominfotik', NULL, '$2y$10$axu4bJ0dCC5WWrSaTNIcsuY.TdJu14FKalNUYtV9Czmnew6Wkf03G', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-12-02 06:56:45', '2024-12-02 06:56:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jaksel_app`
--
ALTER TABLE `jaksel_app`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instansi`
--
ALTER TABLE `instansi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `jaksel_app`
--
ALTER TABLE `jaksel_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
