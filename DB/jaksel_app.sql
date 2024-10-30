-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 01:59 AM
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
-- Table structure for table `jaksel_app`
--

CREATE TABLE `jaksel_app` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `nama_aplikasi` varchar(255) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jaksel_app`
--

INSERT INTO `jaksel_app` (`id`, `img`, `nama_aplikasi`, `deskripsi`, `link`) VALUES
(1, 'Website-Kota-Adm-Jakarta-Selatan.png', 'Website Kota Adm Jakarta Selatan', 'Media Informasi Kota Adm Jakarta Selatan yang terdiri dari Berita, Agenda, Data dan Informasi', 'https://selatan.jakarta.go.id/'),
(2, 'PPID-Jakarta-Selatan.png', 'PPID Jakarta Selatan', 'Website Pejabat Pengelola Informasi dan Dokumentasi (PPID) Sekretariat Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/ppid'),
(3, 'TechnoCare.png', 'Technocare LTIK', 'Layanan Help Desk Sudin Kominfotik Kota Adminitrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/technocare/'),
(4, 'Ekin-PJLP-Setko.png', 'Ekin PJLP Setko', 'Sistem pencatatan aktivitas kerja PJLP Setko Kota Adminitrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/pjlpsetko/'),
(5, 'Sinoli.png', 'Sinoli', 'Sistem Informasi non Litigasi Bagian Hukum Kota Adminitrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/hukum/sinoli/'),
(6, 'Siperbast.png', 'Siperbast', 'Sistem Informasi Penerbitan Berita Acara Serah Terima Bagian PLH', 'https://selatan.jakarta.go.id/modul/plh/siperbast'),
(7, 'E-Kinerja-PJLP.png', 'E-Kinerja PJLP', 'Sistem pencatatan aktivitas kerja PJLP Sudin Kominfotik Jakarta Selatan', 'https://selatan.jakarta.go.id/ekinerja-pjlp/'),
(8, 'Posko-Siaga-Bencana.png', 'Posko Siaga Bencana', 'Sistem pencatatan segala keperluan dan bantuan yang dibutuhkan dalam bencana', 'https://selatan.jakarta.go.id/modul/poskosiaga'),
(9, 'Destinasi-Jakarta-Selatan.png', 'Destinasi Jakarta Selatan', 'Peta destinasi pariwisata di Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/destinasi'),
(10, 'Website-Bagian-Hukum.png', 'Website Bagian Hukum', 'Dokumentasi kegiatan bagian hukum', 'https://selatan.jakarta.go.id/modul/hukum/relaas/'),
(11, 'Meta-Gov-Layanan-24.png', 'Meta Gov Layanan 24 Jam', 'MetaGov JS Care melayani pertanyaan, Tentang Gambaran Umum Jakarta Selatan, Kewilayahan dan Lokasi Kantor-Kantor SKPD/UKPD di Kantor Walikota Adm Jakarta Selatan berbasis Chatbot', 'https://selatan.jakarta.go.id/modul/metagov-js-care'),
(12, 'Aplikasi-Space-Virtual.png', 'Aplikasi Space Virtual', 'Dokumentasi acara yang menggunakan virtual room', 'https://selatan.jakarta.go.id/modul/spacevirtual'),
(13, 'Website-Sudin-Nakertrans.png', 'Website Sudin Nakertrans', 'Informasi dan Dokumentasi Suku Dinas Tenaga Kerja dan Transmigrasi Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/nakertrans'),
(14, 'Website-Pencatatan-Hubungan-Industrial.png', 'Website Pencatatan Hubungan Industrial', 'Dokumentasi pencatatan perselisihan hubungan industrial Suku Dinas Tenaga Kerja dan Transmigrasi Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/nakertrans/pencatatan-hi/'),
(15, 'E-Relaas.png', 'E - Relaas', 'Dokumentasi surat relaas', 'https://selatan.jakarta.go.id/modul/hukum/relaas/'),
(16, 'Website-Suku-Dinas-Kebudayaan-Kota-Administrasi-Jakarta-Selatan.png', 'Website Suku Dinas Kebudayaan Kota Administrasi Jakarta Selatan', 'Informasi dan Dokumentasi Suku Dinas Kebudayaan Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/sudinbud'),
(17, 'SIPP.png', 'SIPP', 'Mengelola berkas pensiun pegawai dan Unggah berkas pengajuan pensiun', 'https://selatan.jakarta.go.id/modul/sipp'),
(18, 'Suku-Dinas-Perhubungan-Kota-Adm-Jakarta.png', 'Suku Dinas Perhubungan Kota Adm Jakarta', 'Website Sudin Perhubungan Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/sudinhub'),
(19, 'Bagian-Penata-Kota-dan-Lingkungan-Hidup-Jakarta-Selatan.png', 'Bagian Penata Kota dan Lingkungan Hidup Jakarta Selatan', 'Website Bagian PLH Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/pklh/'),
(20, 'E-Report.png', 'E-Report', 'Dokumentasi Laporan Kegiatan TP PKK Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/ereport/'),
(21, 'Aplikasi-Kalkulator-Gizi.png', 'Aplikasi Kalkulator Gizi', 'Aplikasi untuk memonitoring Indeks Masa Tumbuh Bayi dan Balita', 'https://selatan.jakarta.go.id/modul/kalgiz'),
(22, 'Posyandu-Kartini.png', 'Posyandu Kartini', 'Website Posyandu Kartini', 'https://selatan.jakarta.go.id/modul/posyandu'),
(23, 'PSN.png', 'PSN', 'Aplikasi Pemantau Jentik Kelurahan Cilandak Timur', 'https://selatan.jakarta.go.id/modul/kelurahan/cilandakTimur/psn/'),
(24, 'Sisirteco.png', 'Sisirteco', 'Sistem Monitoring kendaraan warga di sekitar Tebet Eco Park', 'https://selatan.jakarta.go.id/modul/sisirteco/'),
(25, 'Website-Data-DBD-Jakarta-Selatan.png', 'Website Data DBD Jakarta Selatan', 'Dashboard data DBD tingkat Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/dbd'),
(26, 'Website-Pendaftaran-PJLP.png', 'Website Pendaftaran PJLP', 'Dashboard Pendafraran PJLP Sudin Kominfotik Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/pendaftaran-pjlp'),
(27, 'Sinomari.png', 'Sinomari', 'Sistem Informasi Magang dan Riset Sudin Komunfotik Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/sinomari/'),
(28, 'Website-Sudin-Sosial.png', 'Website Sudin Sosial', 'Informasi dan Dokumentasi Suku Dinas Sosial Kota Administrasi Jakarta Selatan', 'https://selatan.jakarta.go.id/modul/sudinsos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jaksel_app`
--
ALTER TABLE `jaksel_app`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jaksel_app`
--
ALTER TABLE `jaksel_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
