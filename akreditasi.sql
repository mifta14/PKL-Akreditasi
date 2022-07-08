-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 08:14 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akreditasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `nidn_nidk` varchar(100) NOT NULL,
  `pendidikan_s2` varchar(100) NOT NULL,
  `pendidikan_s3` varchar(100) NOT NULL,
  `bidang_keahlian` varchar(100) NOT NULL,
  `kesesuaian_kompetensi` varchar(100) NOT NULL,
  `jabatan_akademik_id` int(11) NOT NULL,
  `sertifikat_pendidik_profesional` varchar(100) NOT NULL,
  `sertifikat_kompetensi` varchar(100) NOT NULL,
  `matkul_diampu_PS_akreditasi` varchar(100) NOT NULL,
  `kesesuaian_keahlian` varchar(100) NOT NULL,
  `matkul_diampu_PS_lain` varchar(100) NOT NULL,
  `perusahaan` varchar(100) NOT NULL,
  `pendidikan_tertinggi` varchar(100) NOT NULL,
  `bobot_kredit` varchar(100) NOT NULL,
  `tipe` enum('tetap','tidak tetap','industri','') NOT NULL,
  `nama_program_studi` varchar(50) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nama_dosen`, `nidn_nidk`, `pendidikan_s2`, `pendidikan_s3`, `bidang_keahlian`, `kesesuaian_kompetensi`, `jabatan_akademik_id`, `sertifikat_pendidik_profesional`, `sertifikat_kompetensi`, `matkul_diampu_PS_akreditasi`, `kesesuaian_keahlian`, `matkul_diampu_PS_lain`, `perusahaan`, `pendidikan_tertinggi`, `bobot_kredit`, `tipe`, `nama_program_studi`, `status`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(5, 'bayu', '12434', 'a', 'a', 'it', 'ya', 2, 'a', 'a', 'a', 'a', 'a', '', '', '', 'tetap', 'Teknik Informatika', 'ENABLE', '2022-07-07 00:25:26', NULL, NULL, 22),
(6, 'huda', '4656', '', '', 'a', '', 0, '', 'a', 'siko', '', '', 'PT', 'a', '3', 'industri', 'Sistem Informasi', 'ENABLE', '2022-07-07 01:00:29', NULL, NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `failed_login`
--

CREATE TABLE `failed_login` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `name`, `mime`, `dir`, `table`, `table_id`, `status`, `created_at`, `updated_at`) VALUES
(202, '6950c16c9bcc6995f376b297f163175982589.JPG', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175982589.JPG', 'user', 22, 'ENABLE', '2022-01-12 18:31:04', '2022-05-25 11:08:51'),
(205, '', '', '', 'dosen', 1, 'ENABLE', '2022-05-24 22:36:11', NULL),
(206, '', '', '', 'mahasiswa', 3, 'ENABLE', '2022-06-06 20:41:24', NULL),
(207, '', '', '', 'dosen', 2, 'ENABLE', '2022-06-06 21:26:05', NULL),
(212, '', '', '', 'user', 25, 'ENABLE', '2022-06-14 11:53:57', NULL),
(215, '', '', '', 'dosen', 5, 'ENABLE', '2022-07-07 00:25:26', NULL),
(216, '', '', '', 'dosen', 6, 'ENABLE', '2022-07-07 01:00:29', NULL),
(217, '', '', '', 'user', 27, 'ENABLE', '2022-07-08 13:06:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ipk_lulusan`
--

CREATE TABLE `ipk_lulusan` (
  `id` int(11) NOT NULL,
  `tahun_lulus` year(4) NOT NULL,
  `jumlah_lulusan` int(11) NOT NULL,
  `ipk_min` double NOT NULL,
  `ipk_rata_rata` double NOT NULL,
  `ipk_maks` double NOT NULL,
  `nama_program_studi` varchar(50) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ipk_lulusan`
--

INSERT INTO `ipk_lulusan` (`id`, `tahun_lulus`, `jumlah_lulusan`, `ipk_min`, `ipk_rata_rata`, `ipk_maks`, `nama_program_studi`, `status`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(1, 2022, 130, 3, 3.3, 3.7, 'Sistem Informasi', 'ENABLE', '2022-07-07 00:55:58', NULL, NULL, 22),
(2, 2022, 134, 3.1, 3.6, 3.9, 'Teknik Informatika', 'ENABLE', '2022-07-07 01:29:54', NULL, NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan_akademik`
--

CREATE TABLE `jabatan_akademik` (
  `id` int(11) NOT NULL,
  `jabatan_akademik` varchar(100) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan_akademik`
--

INSERT INTO `jabatan_akademik` (`id`, `jabatan_akademik`, `status`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(1, 'Tenaga Pengajar', 'ENABLE', '2022-05-22 20:47:34', NULL, NULL, 22),
(2, 'Asisten Ahli', 'ENABLE', '2022-05-22 20:47:46', NULL, NULL, 22),
(3, 'Lektor', 'ENABLE', '2022-05-22 20:47:57', NULL, NULL, 22),
(4, 'Lektor Kepala', 'ENABLE', '2022-05-22 20:48:14', NULL, NULL, 22),
(5, 'Guru Besar', 'ENABLE', '2022-05-22 20:48:29', NULL, NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_program`
--

CREATE TABLE `jenis_program` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_program`
--

INSERT INTO `jenis_program` (`id`, `nama`, `status`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(1, 'D3', 'ENABLE', '2022-02-10 21:24:29', NULL, NULL, 22),
(2, 'Sarjana', 'ENABLE', '2022-02-10 21:24:36', NULL, NULL, 22),
(3, 'Sarjana Terapan', 'ENABLE', '2022-04-08 08:32:52', NULL, NULL, 22),
(4, 'Magister', 'ENABLE', '2022-04-08 08:33:05', NULL, NULL, 22),
(5, 'Magister Terapan', 'ENABLE', '2022-04-08 08:33:14', NULL, NULL, 22),
(6, 'Doktor', 'ENABLE', '2022-04-08 08:33:24', NULL, NULL, 22),
(7, 'Doktor Terapan', 'ENABLE', '2022-04-08 08:33:54', NULL, NULL, 22),
(8, 'mahasiswa', 'ENABLE', '2022-07-01 09:28:44', NULL, NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_publikasi`
--

CREATE TABLE `jenis_publikasi` (
  `id` int(11) NOT NULL,
  `jenis_publikasi` varchar(100) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_publikasi`
--

INSERT INTO `jenis_publikasi` (`id`, `jenis_publikasi`, `status`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(1, 'Jurnal penelitian tidak terakreditasi', 'ENABLE', '2022-06-06 23:52:01', NULL, NULL, 22),
(2, 'Jurnal penelitian nasional terakreditasi', 'ENABLE', '2022-06-06 23:52:12', NULL, NULL, 22),
(3, 'Jurnal penelitian internasional', 'ENABLE', '2022-06-06 23:52:21', NULL, NULL, 22),
(4, 'Jurnal penelitian internasional bereputasi', 'ENABLE', '2022-06-06 23:52:30', NULL, NULL, 22),
(5, 'Seminar wilayah/lokal/perguruan tinggi', 'ENABLE', '2022-06-06 23:52:39', NULL, NULL, 22),
(6, 'Seminar nasional', 'ENABLE', '2022-06-06 23:52:50', NULL, NULL, 22),
(7, 'Seminar internasional', 'ENABLE', '2022-06-06 23:53:06', NULL, NULL, 22),
(8, 'Pagelaran/pameran/presentasi dalam forum di tingkat wilayah', 'ENABLE', '2022-06-06 23:53:14', NULL, NULL, 22),
(9, 'Pagelaran/pameran/presentasi dalam forum di tingkat nasional', 'ENABLE', '2022-06-06 23:53:22', NULL, NULL, 22),
(10, 'Pagelaran/pameran/presentasi dalam forum di tingkat internasional', 'ENABLE', '2022-06-06 23:53:33', NULL, NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_publikasi_ilmiah_dtps`
--

CREATE TABLE `jenis_publikasi_ilmiah_dtps` (
  `id` int(11) NOT NULL,
  `jenis_publikasi` varchar(100) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_publikasi_ilmiah_dtps`
--

INSERT INTO `jenis_publikasi_ilmiah_dtps` (`id`, `jenis_publikasi`, `status`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(1, 'Jurnal penelitian tidak terakreditasi', 'ENABLE', '2022-06-06 23:33:24', NULL, NULL, 22),
(2, 'Jurnal penelitian nasional terakreditasi', 'ENABLE', '2022-06-06 23:33:36', NULL, NULL, 22),
(4, 'Jurnal penelitian internasional', 'ENABLE', '2022-06-06 23:34:47', NULL, NULL, 22),
(5, 'Jurnal penelitian internasional bereputasi', 'ENABLE', '2022-06-06 23:35:03', NULL, NULL, 22),
(6, 'Seminar wilayah/lokal/perguruan tinggi', 'ENABLE', '2022-06-06 23:35:20', NULL, NULL, 22),
(7, 'Seminar nasional', 'ENABLE', '2022-06-06 23:35:32', NULL, NULL, 22),
(10, 'Seminar internasional', 'ENABLE', '2022-06-06 23:36:26', NULL, NULL, 22),
(11, 'Tulisan di media massa wilayah', 'ENABLE', '2022-06-06 23:36:50', NULL, NULL, 22),
(12, 'Tulisan di media massa nasional', 'ENABLE', '2022-06-06 23:37:01', NULL, NULL, 22),
(13, 'Tulisan di media massa internasional', 'ENABLE', '2022-06-06 23:37:16', NULL, NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `karya_ilmiah_dtps_disitasi`
--

CREATE TABLE `karya_ilmiah_dtps_disitasi` (
  `id` int(11) NOT NULL,
  `nama_dosen_id` int(11) NOT NULL,
  `judul_artikel` text NOT NULL,
  `jumlah_sitasi` text NOT NULL,
  `nama_program_studi` varchar(50) NOT NULL,
  `tahun` year(4) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karya_ilmiah_dtps_disitasi`
--

INSERT INTO `karya_ilmiah_dtps_disitasi` (`id`, `nama_dosen_id`, `judul_artikel`, `jumlah_sitasi`, `nama_program_studi`, `tahun`, `status`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(2, 5, 'website akreditasi', '30', 'Teknik Informatika', 2022, 'ENABLE', '2022-07-07 01:08:00', NULL, NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `kerjasama`
--

CREATE TABLE `kerjasama` (
  `id` int(11) NOT NULL,
  `lembaga_mitra` varchar(100) NOT NULL,
  `tingkat` varchar(100) NOT NULL,
  `tipe_tingkat` enum('internasional','nasional','lokal','') NOT NULL,
  `judul_kegiatan` varchar(100) NOT NULL,
  `manfaat` varchar(100) NOT NULL,
  `waktu_durasi` varchar(100) NOT NULL,
  `bukti_kerjasama` varchar(100) NOT NULL,
  `tahun_berakhir` year(4) NOT NULL,
  `tipe_kerjasama` enum('pendidikan','penelitian','pengabdian','') NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `nama_program_studi` varchar(50) NOT NULL,
  `tahun` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `halaman` varchar(155) NOT NULL,
  `komentar` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `user_id`, `tanggal`, `halaman`, `komentar`) VALUES
(25, 25, '2022-06-14', 'program_studi', 'oke'),
(26, 25, '2022-07-06', 'program_studi', 'sip');

-- --------------------------------------------------------

--
-- Table structure for table `konfig`
--

CREATE TABLE `konfig` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `konfig`
--

INSERT INTO `konfig` (`id`, `slug`, `value`, `status`, `created_at`, `updated_at`) VALUES
(6, 'APPLICATION', 'Akreditasi Online ', 'ENABLE', '2019-02-18 15:28:44', '2020-07-16 22:42:17'),
(7, 'LOGO', 'https://upload.wikimedia.org/wikipedia/en/5/53/Ma_Chung_University_logo_and_font.svg', 'ENABLE', '2019-02-18 15:29:32', '2020-09-17 15:59:29'),
(8, 'LOGIN_BACKGROUND', 'background-image: url(\'https://cdn-2.tstatic.net/surabaya/foto/bank/images/universitas-ma-chung-memberikan-kemudahan.jpg\');background-size: cover;background-position: center;', 'ENABLE', '2019-02-18 15:29:52', '2019-04-29 10:57:19'),
(9, 'COLOR_HEADER', 'background: linear-gradient(to right,#0052D4,#65C7F7);', 'DISABLE', '2019-02-18 15:30:24', '2019-02-18 15:31:08'),
(10, 'VERSION', '1.0.0', 'ENABLE', '2019-02-18 15:30:39', NULL),
(11, 'COPYRIGHT', '© 2022 <a href=\"\" target=\"_blank\">Miftakhul Jannah</a>.</strong> All rights     reserved.', 'ENABLE', '2019-02-18 15:32:01', '2019-02-19 10:27:32'),
(12, 'SKIN', 'skin-blue', 'ENABLE', '2019-02-18 15:34:01', '2020-07-16 22:42:34'),
(13, 'TITLE_APPLICATION', 'Akreditasi Online', 'ENABLE', '2019-02-18 15:39:54', '2020-01-13 14:49:04'),
(14, 'APPLICATION_SMALL', 'Akreditasi', 'ENABLE', '2019-02-18 15:42:41', '2019-02-18 15:43:24'),
(15, 'LOGIN_BOX', 'background : #fff !important ; ', 'ENABLE', '2019-02-18 15:45:53', '2019-02-18 15:58:53'),
(16, 'TITLE_LOGIN_APPLICATION', 'Akreditasi Online', 'ENABLE', '2019-02-18 15:47:41', '2020-01-13 14:49:15'),
(17, 'LOGIN_TITLE', 'Akreditasi Online', 'ENABLE', '2019-02-18 15:48:55', '2020-01-13 14:48:52'),
(24, 'LOGIN', '0', 'ENABLE', '2019-02-21 14:12:14', '2019-12-02 13:18:52'),
(27, 'CAPTCHA', '1', 'ENABLE', '2020-09-17 16:00:18', '2020-09-18 17:29:48'),
(28, 'FAIL_ATTEMP', '0', 'ENABLE', '2020-09-17 16:00:50', NULL),
(29, 'EMAIL_VERIFICATION', '0', 'ENABLE', NULL, NULL),
(30, 'REGISTER', '0', 'ENABLE', NULL, NULL),
(31, 'ONE_TIME_LOGIN', '1', 'ENABLE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kurikulum_capaian_rencana_pembelajaran`
--

CREATE TABLE `kurikulum_capaian_rencana_pembelajaran` (
  `id` int(11) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `nama_matkul` varchar(100) NOT NULL,
  `matkul_kompetensi` enum('V','-') NOT NULL,
  `sks_kuliah` varchar(30) NOT NULL,
  `sks_seminar` varchar(50) NOT NULL,
  `sks_praktikum_pkl` varchar(50) NOT NULL,
  `konversi_kredit_ke_jam` varchar(50) NOT NULL,
  `cp_sikap` enum('V','-') NOT NULL,
  `cp_pengetahuan` enum('V','-') NOT NULL,
  `cp_keterampilan_umum` enum('V','-') NOT NULL,
  `cp_keterampilan_khusus` enum('V','-') NOT NULL,
  `dokumen_rencana_pembelajaran` varchar(100) NOT NULL,
  `unit_penyelengara` varchar(100) NOT NULL,
  `nama_program_studi` varchar(50) NOT NULL,
  `tahun` varchar(30) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_created_at` datetime DEFAULT NULL,
  `log_created_by` int(11) DEFAULT NULL,
  `log_action` varchar(500) DEFAULT NULL,
  `log_tablename` varchar(500) DEFAULT NULL,
  `log_jsondata` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(14662, '2022-01-12 18:30:25', 1, 'deleteData', 'user', '{\"id\":\"1\",\"session_id\":\"Z2dZWUtFMHFaNHIzcVJwT3JNc2NYWm9zdVp0V01DSmlUcTl6MkNUQ0tJWT0=\",\"username\":\"smartsoft\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@gmail.com\",\"password\":\"21232f297a57a5a743894a0e4a801fc3\",\"role_id\":\"17\",\"role_slug\":\"admin\",\"role_name\":\"Admin\",\"desc\":\"dddf\",\"status\":\"0\",\"wrong\":\"4\",\"active\":\"2021-09-20 08:53:16\",\"token\":\"\",\"is_email\":\"0\",\"last_email\":\"2020-09-18 17:24:42\",\"created_at\":\"2018-02-23 16:09:49\",\"updated_at\":\"2021-07-23 14:55:32\"}'),
(14663, '2022-01-12 18:30:25', 1, 'deleteData', 'file', '{\"id\":\"40\",\"name\":\"6950c16c9bcc6995f376b297f163175991861.png\",\"mime\":\"image\\/png\",\"dir\":\"webfile\\/6950c16c9bcc6995f376b297f163175991861.png\",\"table\":\"user\",\"table_id\":\"1\",\"status\":null,\"created_at\":null,\"updated_at\":\"2020-10-28 13:36:29\"}'),
(14664, '2022-01-12 18:30:27', 1, 'deleteData', 'user', '{\"id\":\"13\",\"session_id\":null,\"username\":\"smartsoft2\",\"name\":\"Smartsoft Studio\",\"email\":\"mail@gmail.com\",\"password\":\"21232f297a57a5a743894a0e4a801fc3\",\"role_id\":\"18\",\"role_slug\":\"peserta\",\"role_name\":\"Peserta\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":\"2\",\"active\":null,\"token\":\"WHl6MlBxVGJTL293WUFEUGtPUTFBTVlnMHQzYjJEUEs4cmVERktWRFp2QT0=\",\"is_email\":\"0\",\"last_email\":\"2020-09-18 15:32:00\",\"created_at\":\"2020-01-22 11:21:47\",\"updated_at\":\"2020-05-28 14:59:02\"}'),
(14665, '2022-01-12 18:30:30', 1, 'deleteData', 'user', '{\"id\":\"20\",\"session_id\":\"\",\"username\":\"admin\",\"name\":\"Bayu Briyan El Roy\",\"email\":\"bayubriyanelroy@gmail.com\",\"password\":\"21232f297a57a5a743894a0e4a801fc3\",\"role_id\":\"17\",\"role_slug\":\"admin\",\"role_name\":\"Admin\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":\"5\",\"active\":\"2021-10-18 18:26:14\",\"token\":\"WEFBdU94WEZwTzFLbXJzd2NJWUhESVkwbVFvVGlOazZmL2Y0UTk5aDZNRT0=\",\"is_email\":\"0\",\"last_email\":\"2020-09-18 15:38:59\",\"created_at\":\"2020-09-18 15:38:38\",\"updated_at\":\"2020-09-21 17:34:56\"}'),
(14666, '2022-01-12 18:30:32', 1, 'deleteData', 'user', '{\"id\":\"21\",\"session_id\":\"\",\"username\":\"sistemmikir\",\"name\":\"Iqbal luthfi\",\"email\":\"sistem.mikir@gmail.com\",\"password\":\"35d3d08c3d7b7f445ceb8e726a87b26c\",\"role_id\":\"18\",\"role_slug\":\"peserta\",\"role_name\":\"Peserta\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":null,\"active\":null,\"token\":\"\",\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2020-09-18 17:30:26\",\"updated_at\":\"2020-09-18 17:33:37\"}'),
(14667, '2022-01-12 18:32:56', 1, 'updateData', 'file', '{\"id\":\"202\",\"name\":\"6950c16c9bcc6995f376b297f163175950610.png\",\"mime\":\"image\\/png\",\"dir\":\"webfile\\/6950c16c9bcc6995f376b297f163175950610.png\",\"table\":\"user\",\"table_id\":\"22\",\"status\":\"ENABLE\",\"created_at\":\"2022-01-12 18:31:04\",\"updated_at\":null}'),
(14668, '2022-01-12 18:32:57', 1, 'updateData', 'user', '{\"id\":\"22\",\"session_id\":null,\"username\":\"admin\",\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"17\",\"role_slug\":\"admin\",\"role_name\":\"Admin\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":null,\"active\":null,\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:31:04\",\"updated_at\":null}'),
(14669, '2022-01-12 18:36:45', 1, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"ams_bundana\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(14670, '2022-01-12 18:36:45', 1, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"http:\\/\\/101.50.3.204\\/sop_clean\\/assets\\/logo.png\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(14671, '2022-01-12 18:36:45', 1, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/coloredbrain.com\\/wp-content\\/uploads\\/2016\\/07\\/login-background.jpg\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(14672, '2022-01-12 18:36:45', 1, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(14673, '2022-01-12 18:36:45', 1, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-blue-light\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(14674, '2022-01-12 18:36:45', 1, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Sabertani\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(14675, '2022-01-12 18:36:45', 1, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"SBT\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(14676, '2022-01-12 18:36:45', 1, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #fff !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(14677, '2022-01-12 18:36:45', 1, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Sabertani\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(14678, '2022-01-12 18:36:45', 1, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Sabertani\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(14679, '2022-01-12 18:36:45', 1, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(14680, '2022-01-12 18:36:45', 1, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(14681, '2022-01-12 18:36:45', 1, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(14682, '2022-01-12 18:36:45', 1, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14683, '2022-01-12 18:36:45', 1, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14684, '2022-01-12 18:36:45', 1, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14685, '2022-01-12 18:36:55', NULL, 'updateData', 'user', '{\"id\":\"22\",\"session_id\":null,\"username\":\"admin\",\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"17\",\"role_slug\":\"admin\",\"role_name\":\"Admin\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":null,\"active\":null,\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:31:04\",\"updated_at\":\"2022-01-12 18:32:57\"}'),
(14686, '2022-01-12 18:39:16', 22, 'updateData', 'role', '{\"id\":\"19\",\"role\":\"Klinik\",\"slug\":\"klinik\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\"]\",\"created_at\":\"2018-10-24 10:29:54\",\"updated_at\":\"2021-10-18 18:32:07\"}'),
(14687, '2022-01-12 18:39:17', 22, 'updateData', 'role', '{\"id\":\"18\",\"role\":\"Medis\",\"slug\":\"medis\",\"status\":\"ENABLE\",\"menu\":\"[\\\"37\\\",\\\"38\\\",\\\"29\\\"]\",\"created_at\":\"2018-10-24 10:29:54\",\"updated_at\":\"2021-12-10 16:34:33\"}'),
(14688, '2022-01-12 18:40:32', 22, 'deleteData', 'role', '{\"id\":\"19\",\"role\":\"Klinik\",\"slug\":\"klinik\",\"status\":\"DISABLE\",\"menu\":\"[\\\"29\\\"]\",\"created_at\":\"2018-10-24 10:29:54\",\"updated_at\":\"2021-10-18 18:32:07\"}'),
(14689, '2022-01-12 18:41:38', 22, 'deleteData', 'role', '{\"id\":\"18\",\"role\":\"Medis\",\"slug\":\"medis\",\"status\":\"DISABLE\",\"menu\":\"[\\\"37\\\",\\\"38\\\",\\\"29\\\"]\",\"created_at\":\"2018-10-24 10:29:54\",\"updated_at\":\"2021-12-10 16:34:33\"}'),
(14690, '2022-01-12 18:47:11', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(14691, '2022-01-12 18:47:11', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"http:\\/\\/127.0.0.1\\/Godzillab\\/sop_clean\\/webfile\\/6950c16c9bcc6995f376b297f163175965469.jpg\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(14692, '2022-01-12 18:47:11', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/images.unsplash.com\\/photo-1585241645927-c7a8e5840c42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(14693, '2022-01-12 18:47:11', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(14694, '2022-01-12 18:47:11', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(14695, '2022-01-12 18:47:11', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(14696, '2022-01-12 18:47:11', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"GZB\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(14697, '2022-01-12 18:47:11', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #fff !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(14698, '2022-01-12 18:47:11', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(14699, '2022-01-12 18:47:11', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(14700, '2022-01-12 18:47:11', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(14701, '2022-01-12 18:47:11', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(14702, '2022-01-12 18:47:11', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(14703, '2022-01-12 18:47:11', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14704, '2022-01-12 18:47:11', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14705, '2022-01-12 18:47:11', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14706, '2022-01-12 18:47:39', NULL, 'insertData', 'failed_login', '{\"ip_address\":\"127.0.0.1\",\"date\":\"2022-01-12 18:47:39\"}'),
(14707, '2022-01-12 18:47:42', NULL, 'insertData', 'failed_login', '{\"ip_address\":\"127.0.0.1\",\"date\":\"2022-01-12 18:47:42\"}'),
(14708, '2022-01-12 18:48:17', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(14709, '2022-01-12 18:48:17', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAa0AAAB1CAMAAADKkk7zAAAAllBMVEXw7FEAAADz71L08FL381Nxbybt6VD381Ts6FDp5U+9ukA7OhTi3kwLCwTf20u6tz\\/AvUFraSR3dSjJxkSyrzwJCQOCgCwvLhBmZCNQTxvMyUVEQxd9eyquqzvb10phYCE1NBIREQabmDQsKw9KSRmMii9bWR\\/V0UgnJg0bGgmmozgVFQedmjWnpDgfHgpWVB0iIgz\\/\\/Vf6DV7rAAAfLElEQVR4nOVdh5bbsI6VKffey7jXcRvb+\\/8\\/tyIpSsRlEfPO22xOgszYE1uiJIIEgYvCqFRMx+XyvVgul4v3cnlabJeny3u7uGzfl8t2y3+388WNnrGYO+hIj2u5jktpMB8s6Rkf7csB\\/\\/XQLj3nXRlW0p\\/KMHlpqbvMPhpyWrVKLlqspqvpNPk987fz6ug8kpylWp4OV6vVdMjbSBoSLenH7be80eRH\\/CavZ0mH80HRU14xKr7o5avRqDc4VZM\\/6lGjEVWjRjWKojpLXiIWlZs7csa2HTPGYhYjVc+06bV5CFB5fCVnzMvZV\\/m5ybX4BZl4UW9xd5F2Rr+sfxM35vLzTq\\/G1Jni87erBx5rxvSmq26+arTr15iDal\\/6ga1N7DowO+Eujizm1uVL8MRH8fqln\\/Fux44DWf+jH7jcFDYdqb5Nqedq2rzWKD1l8U2uwlRPneiDZcdbugBa+C7sNE6ruvPeymRuzYufiXXF5Crk1mlU3DF0yvjY2x7qR04bxW3XDh3tjFvAGYrUTZ1przH1+bBh\\/9ykKdyS+0iNrp6BVV7oRz5rxQ8ju7iIW60AZrFvXYZcvnyH\\/uh9\\/1PcdsQ2upR9B0+tKEpv6ramg4ed0s9\\/aFtlWCFz2t9pd5Z3riN1mlfdz9TVRUynWyxhkpnPVYMCbn2KxWAiCPuP\\/IyT9wz2fckPvfZD+p5IjXXA7aRXaqenoCDc2G+UkaWEEB65cR6pk+fh2GavHbgohzzOhnecn1vX74BJGlUP+Rmtvv+MWJMiw3ZA47QbQwaPpJq6qSEd47Vp+vmACkKPeBvS7ixPnUdq1PLcabyeaEfew+QF1zO83GoFDX7W3mZn7PoFA4V9ZQJn8gzr+nI+Hbfhy5ZaGj5r+gws\\/fwB4q1GlhKd9tCdzCkydRp7uq6mr96PdlA3sK+Fn1vLZlC\\/aMrUrmBmJRRX1MGzQP0uHmft34NOENRINf\\/WBgReKrV3KCCppaDRrg0tzAKYNXMrhMlIqmhHXtzrG6H61MutVi+wY57ZcwX0f7xWesYlSBDyuavO2PeDBWG8Vlehn5eVwHvD8WddOBG6UHHBzh3XkRrdfXfa1udx6AhkvZmHW7OwmZUsW0pSXXshyk07HZr7Q8iaKC6gFor3dzC3ykrYHOgAqiupDRphNZfmSCBKG+4jczr6LEk20pTKWfAzJbfo5FbHJ3jJtZXydQ07Qy3nt9AL5HrGIfAEflOpnr4Ho2qjFh0Qb98nZ8\\/Tjo\\/7IUDG0yfe4rsG1M3Dlq2I600TJ7fGIXqlaCTt\\/Vkv7AylAC8C2+fmicQzHsH8zdGVJT0l66glXOKwd3VEC3SMp\\/NI7RzvhCnr6uchcNlKqLFzcOv1DGVWVB6IMz6BzErYK9fYc\\/AVomgteugXBGGshCfgBA0lIEEjbFdKLgKN0HNkTgUgjWYC3ILUbknloZ1bt1+QOV0xWm\\/r4M5nTXGNcNMpEYVCTk2j9BTG\\/+AvHPBMXiw3pdDFLrM0ZPncqb+XQHccBQjCnXcBl4ZuSgBBRkyi1UyC1fTEeGzl1u0AlmNcSyjmb0kj4i\\/+LkHyp2QWyItaTjh4WJ+f8cFPo1jxwHy+EV9tHoeoHbUb7Xajm\\/y2u+1uvZu8tDddQ7lkyikA4jYep4LwBIP\\/Z+\\/q+QVtnI0DNMKBd2rJp0npDF9uev2Emvy32QcMr3a2cmtVJV1WPnMnlotEv8DUr9+1My5r6DIhjUAQxuvL9sK9ZfzlfQbdYMyNpMlucbqcFif+I4n72\\/i\\/sdEjB3tnNJQMmlbtn5t0d7TgITTIgXSs9IWjvHKd7WYpHVd05JYvNm4Zyt3NchChBzWEWFcXFx9orrrnn47ondDlYEpty4IuGqIlmgnCPZrACn7+CtYIR3Ck04jOCUw51oX\\/P\\/NDL4DoVvV2QGtmbauWAWZr3Cu8vwEsA039S4BVY\\/El2PqM6sVf9Db9XXQylA\\/2lbY2BzGm7gvUZimbrTSH7izuC0MvaYxh7Gkw9RRU1rXezpIKgHj8sHFr9csoJrqQiAdxWrM0h\\/Phrp+B\\/e\\/too6p3zCFVR0ccxQkbd2N6D5py9UAQbikF437dCXQ\\/UsoCGtEwgyAD0ObdQxmDRVrVkIdI9LdN58xHcdtsdABUEK9lNiZXqV5GBmkRu+eYmesmwq8Vw9uyfmE1ybMkwBBCEZD9UBdhDqScQLTuEE8Z2sQhBcbt5a0r+LxxzyGEsq6sf4lwKdx72F+yL51XHs\\/hmfwrZt705fHumlrW0B0Ffx8QaTX2fobb76oK0qlI2hIX29AobTeGVLGsvFea+iBqtbRxi2cgMV+7SnoLkQQXmCyi3FfgQWFLBzoP3SvKiUD7xMnKK6AssLUBF7BeHSLN4itqAUIwjMYUM8BGBgat1AQkq5eIppsxeCpdZ3rUU664bJKJiNqhNw07ODsIbLuTFdXGnICNLSZNilXDB9\\/KvAMDXvvah2141pRVyQzAtXNBSx9upIB902jrp7Ah7mVW20Qa4WieokCRzcg9yhXefAO+s5JnMIL4XGPJF5YwKgsJAlEUPY5qM2eEKZF95cFIc7n8cdt3UCUSdwjnjPoo+bMxq0KqFgH4wikFUhfMhcM7xD\\/cOizEU7ha8UVDG9BmQcH1GOX798jCAe06wO0Y+BN1BjOcGTm3IKZGxNBuKDDXIRTmNxqQuODwjuEi7aJqYkaIV\\/TcPbUyEK3si10VppMG+bUqiljAAV0NdU9HuDyajg1QkPXdaOJ2c2DajBCi00PWwQp3iCKMRWg0uA3uAV+NNYvFIQfkHVNfT4fbV8uEdElohNXQTfOYIsezSxjQ0B\\/p6olDvYvp8o5g0Wh93IdmfUFwkArBL9YbgCDjx8QAhCg31y5N7i1skxAP0FIEFVs3uC+Ec0N0H70ddHarb9b8DjWzmRBBcJkFOAzgDhCt857oYMhIOoT9D\\/WLc0Qj88BeIA3awTIONkUY4NbwNL2rwpCGgqKzUm5Cogu1fhhFfQozbjCCnpm8RVrizLKiVqvrOsWbxBm0rg4j0zp9QM3fy61MJYkkzw30JAoGkq9lHIFMbi1RHfOXvuy01oQEjIKXB9UEGLEkYgTnQGiSy14YP7G2Zk7i9dVcz91MMw9vQqExsaQcaETKAGeI1M6weO2X2iJR\\/VMw8VwysZdJZdwInfP6nLSILcA9KEa4anfJiQWzFXkOQMkQ1VII8So1w\\/9FPplvHbp73uby08bn1twySgfPyipNbeoxyDaYkEIoFOctA1eDw03MfTZWHMK1giz1GMBtzB2hoYCDcHvJR4UMLcNOQOiSWTCCMC8JBay9A7toqklYo\\/JkADZGaCpKpH+BPE2tLZu9n3AonAF9a97Ku1BAY0z+BoljI\\/UiAJuodlKDMcbPiiXeS+UdbretLQm3aDTicg6gDKdBoTpJ+G3q0lhFOkKicT7dWPWGOxUKAgBdKqtX6UZxF3kgceVkGQFeY9rpZcDt8BRRcXErAn6hLioGwUrlebQNUIQnkBcjEmmIawqfUdg7N6Wv6CrK+AcYj+puB3QU6giRvvC59SxEvQ\\/9x1AoEBUzgbHOTTYieVoEuXWHgQvzZLZwtARwhRWjzbR72AyxqK5FaIbepQshDRUnyU72eRgrB8MSGSWYgae+7bb9gatrDt3HpkSmPUCs5uDYG+rnjc0eydpWA7lFkouIggnGNXFVcIWnqFrDDsAiGWcKApCstBRG4R1HYGxVnxwowm1D7pkVNYWmsZO8fZBH39RssIetT8+ms8gSLKunwcmYLCe1qOUW1tflswN7TUuwdD1QQQLJt2IsQ\\/4F+vpSt8Rs07t+dj7sSUqu67bK+imUL0EOG3kFoSVduiR9qcVxgSYEdrSMg2dWnr3EG7tQXJFxBzcwnp5ePAEQ6elnkzGM5wh7GZAYihYAszHrPLsUW2PRdY\\/UI8zXz6Exno0QjyySBDeAJqo8wdDmzBbWY9NE4exEtOBN8KtDygFG4\\/jWa5QYKnTtEHQUVlXyGw8Q+dvBzrZkWZ\\/tIC5tKEdXLqdirEbYNbu+JxjExbkIg86orffXC4vEW5RN3kK1TFifTQTbi3oDcY05NsWvV8BxO9HPwFQy\\/jA1QkES750jf+InlB7x3xZxiXFbdCXr5DIcLf0ACEP55GSOihlhAqJGlUGOU9DE2zSWGhJhFuIfvsEIeM8v2GCIZkLAAfWpSCk\\/KWCcBiUXWoL9GfUC\\/ZjuVlxKoxHt18cBHa5KJQIc0XqQi6DMhT3Umk9CY8r11cDwi1we357HFUySqmFehPBkGCiiBzWCSKlxDSGzrQnz29tfpI2EWktRCJTMXbEdEB3QiQGO7kOTAkTY6XyNwPFL3PE78JTNpiWg69zC7JnaO7LC2UIN1sh8ZAa0y24qki68YIlkOfMurZ+MUBtcWWK1AcKQo94u6Bfznlk2jLomlKjwqynLK9y9Qvc0sKYdW6dHdkzsn2M8xdngFj2uT5kpAwIwpgABFuIMLIKwqlFDsZ9mofqKkeCSqob+QMFmxVhhNByCt5iToKK7zETbPQyQXhSbvTr3ELDkQhC0NYEw9EC+yLCfWRp7oElRYj1C8OlZvMn4SAWbYOPCtVjBcmgZ9ft44f7ZN0CjBAyyVXQLYiBrEtfiMRojo1uF77UlnaNW1jegJiDO8RnuaYC+mlMivwYQaRc\\/CIWS5aDK66CFoxwb8tOY+CxXKIynUr+Fup5D\\/MC6ePCkeOCxI0h6n47y33kQU3o\\/f96v67Xz\\/XKXz4P7IZ81mjcAiFFsz4An5WCEPO8CeZ2oN9JDRsEDF3owJ8U\\/1g605ZRaUQTu2IPwNlcdkdsY+8XJUSi4iN7ApImIqbya6FaAuvp2g66NK044RXr4xAxgRUFhuY9go8f1QkujYzaSmQ5AEFYt6AHNqPS9KogTqDuC+Zl262\\/98DbUIARAp6rpgO6dpUyDh51gJYxF04THDm3vFk9hrbGJQMY04y4eXGEiOZ2CJYQDRqDSM0uutn0wTp6f2cWwE6cjbLZHc6FWKa\\/oMkEDAZ234vPwehh3XSKTjFUXn\\/SFwLb2pKZcwuyZ2juC4CkMs8I5hvNq0GYTTQ3AEH41Be6I8ivtRkPZvMJQc3DkrscyQkkrdtzX8EF2XmkIKydlzpXMBI008JAY2NEowXrg2jNGbeumCWjD7wHwL0CnDScErpg2WMQqWgOQ8po+DvtIgvgarOLLfGGIAjrqiHQ8zbuECZwYG8KCpoApKicHFiDgI1kn6LtToc5eO7I4ppxa4DVjPQWsP0qv+wCzujpE8WedIMSgIY70i4yBaEVtzajnT8AyShBCOWvPGVKrvBkTX8dXfSttO0CL9MXUBC2dfMAUyrivfZlxi1QKmmW3tYG3mL+NBWEcKOiOSgUQlFjSLOnuUycJrZSQ7EJ\\/G7h0sq4tAaiWgkNcL+PH4uuZAMdggvVHOrccSrqrV0w+FX\\/UnELC2pVde0ZvcZClbthYKc+Fww7VHwKzdQ94Y4WFzxG5omrWiIyXRk4kFDqEYSQUlkgCI2iK+kFjWT7NAoC623G5Ekh4K9Grq24dTGi7TVCjFB4i9Cf09cFIdxRGjuNtZV8Ub3fiB7Yq7ac99h5GMivtG90S4\\/cri1fBKxBe4Ci2SbVGYxlayM1S\\/AyZXWyBF1R+SbdoLgFOBdN7DjRHop\\/uLYGsi4iSgEkgcuEuQXIU2ITYqSFkQd0tmgYtvgyMEmrd\\/vnNDiLtgAQhF8QLtEroiQGJsKnniqsHUcznpYYHEGKqaTcwsQOmjeNAAJnjJFNoZskaAVHYnxb0Y3sGvBsuKrsbMGetmhDVzkSKLnsKVyHLfjD3zHAoqHWkDMus3IJmoFeTxEVgMKr9AFTbu3AcCShLQZmwTFUzMAmqz0Y67FQFxEDJgvHA3NbURDa3He2BBgMVeqmowjDubrO7B502rlzyDndYDXNwDSzIo1UMlCb2pCu9oMoKbcQ\\/SaCcAG5jz98RmOeCJkoFXgC0RwmkBKw5FKQEAmqQ9qPlh6HXICsrxGqcYcwwTik0QsGYaJLZv6ZyWXW2nHxXTeNZ2DYH6gnKOUWWDI0hhOWUSFbUOGJiUkCCmZbzCKIiacaITrWwYrCpUTeiC0MCUsrq4bQx+8UbxNEAvyCEKfWj0LrtwbuIrsIdQ9aMolyC0PvJbdeEO9CcLEHYhb89rG0GPHxPzBTmqsTGKVPEl4xt7VOPRStPj55QmXb6o9ltlkqUbHksttz\\/2s+fpA7WnUCjJNJPeEtiPgu9glqJLk19eFib6xtwft+GHvOQNeHENio8ZPlYGnV+BXtrfjgty1mDJMTVSTBFisVOPsfq1z5oz4hPjof5xPUwtKG0N3+1If5CbRmRAgkt2Bto6oWSjDOmA4aP8R0woQ5IbGwpAhZGiu0NcgufVviB6OqTQ4aAaeqIcjvLzudJUYL3qhPTErIIT+jRk6qfiBcT7oB1oM2QqWCW6gRNvVRi15jUSzpBkOVIGk3ek3pLDQWOl0CPDA2joiHqw3Mja31bQ1FLBWEWE676kT+rmile50lEJ8ro83lnWCcuwz02SFUqsu6CXqN0ZoU3MIKyySxo4ISjKspAxSEetchICeaQ42QgCUzVMOI19jmL3bkXeFyqjYMgeB7qogRwgCF+951ZMkEwzQ0fY7WViymAGIKpKsBWTcNeM6tCZYaoxqhDQzF5BGaEAk9JgUh2IREAgAQS+uNnGx2sSEkJGHeqOo9iAgLTz2PvT5+sCvy+uVm\\/akUyQCzsbHyNGea5ZxbWNBspCtkGA8u9nVDLyzJn4Z9hWS25A1dl8TsQwxYZ\\/51ZMMHHYVwQeBlsaWwMG\\/cNTggo9CdpF6y5CVpphkuW9KriDU8iNd4hykChgDg3MJQQRrjZ8MssCYgERcVW8LcEhFdotDhKqgz32oXGxJd0gzUY5XHjwuzM\\/W8dESfvSfYaYLhgtW87ycoEGQoD1YjIV2N9ZTMTMOIBwLAsKfB7DYlCwOXiWCBVVBKSSyjR4z0N8h4XSO02sWRQz5h1VK1nMLVI7cghCgBb61PA8\\/V1hmIYk5IrAc4931RYpbQ+4RbS9RE9O+PwMqYi7UrxrvocwGTcb6FmoSbgRCRjNV+NQNiZ\\/OTOJOFcRQppqJ4c8MTmOTic21BGBvJ+z3gGBOIlLFzm65NzRAjNK8YmROQzE70e4km0IVNdBcE6oRWcnOEIQnqIICYq9cd1KHEAW1H1OYDjhvZNy3xxHLOMHrBk7WFDrdYV3NxRZM2zsrWN1lX0zlgG5JR6ePdP\\/FsC6QExcNX+yvNDK8gWrnXzsCFTnuGgU0OVl16GoS\\/xz+puK1Q2eypXQW1PhvusCgjaT6VdZJmaCKK4ipG9Xd9jht7Jln0m8goaEZwsQcG8HHJgAlzJCoQsyWlZxTDyomNgAZELgiPtrw69uOaGq7lFBMi3XoexSN9ItOIJSUJ55j2HNX4+EQfP+nqI6wgI4uDISrNabNUEEJKCxtxy94rCGGipHiLq9SIuE3Mfcilj23PsRihzoyw0IoCTK\\/gjRk5w9+NKqYejdDM9tEUJ2NHJxEmN0DVVG8P6ilZS7tFxvawZDhhLXcO90zQ8CN6EwJyYhxjTiu5zS1Iu1xOWTd9ajgrXECKeQYNY+q5WxDika5qHZww0knPTTQ24RP4AUZlkgRwDDGy+rYjY2ST4BJYLIXfa\\/Flk3UpwZ7M6XyGYGFfLSiWR6c\\/bIuWGbmWEaaYq1GEBVic4q2DfrlEM5iUxJQRb5NS9n8Dz2V5qb0OVhFJTUhMfdncSp2EJnv+MgE+WA29CNZK1hzmVMGNG4TZWkH9rqKdciYPkQ64F9x896ydsqK3qUkA2wZxHhgCC62otIsdOtbOq+l0yn\\/ly\\/Qs\\/nyZ2ETjcKYkStINRT8inisDuDpbccgYId2YlwvDWp+j+\\/n5PDzPz8PhcIYKIGNrwlgEEF3EyuVaLfuB74RkMPYrKte0U2iHSYUBa0FF8tDkH3+ni0ru9sIQWEGuChol03To2z\\/nV8+olr3w1dK4T1KDLqWy8FCgZZxu6LZfl22bWEnxjug045tiyY2y8JSeHauJdnhZD0kodRlaqi3LqQjZ4T09Jd+u1HqZmruAdQc3N00FYSdoW2WRsGeYtM4jEevOcG2bfRilPRecxx+7tmSLJofwTelSzMKyvYH18Eaqih\\/DN77NQaeHFR80QqFywlj9KH3isC22ObhixU2MWxA4bwug5qwGvr0ymrBKFoHVZzB1TufWL+zPrbbeCduxPXeKYF6l5wq9DMaY121Ty2Ot4u5NuY8\\/4MKi+GBQoSyZy7UCpmSObAyLTE\\/iWPs0cFqwutMejIyoETcpn1LgJtFZz2L1KPd95nbrzGoX99z2DwY4q6DKfZDs4I6wSdC+o2LhNKZWttoa2qD8vr83wSjXrTjKJUlumWUCXM1kvraAXV9ZbtWEDwcN6Lnb\\/MUeEMLoJmXMoEZoJw4kH0OOlL5V9Bjliqy9Ee4ZOVk+t13At+lrZG4L6qQMs8BcdQvVfzJEYhu8\\/3KOtpoOh6hgQ0I4I8s3xP08rSTCI97Fx6XFSBHPZXnJrkfT9rDcog+bFMxT3lJw6xNYhVIDUwtFYfUnW4A6oTu8a4vrzipPer5tHzDaOMsdCJrY3LQNW1e4po7TRC9NcLfJnWS+YG6yg6o+ZgnfccFeyoq0jZqGRVce55FCuD2ck7RKJ6iMc2JuDKJkJC1lpeXCOkkM6CAFW8xvzP7e6I4tq0k\\/C5QwZR\\/WJbnl36dcEQlN9\\/M31jc\\/wXIDLtL8ORj7I8mbqt0Cl4xykH5ChoqAXE4hIkAErM0wUvCuwcRWbn2b1RisVC4oMCoi1HrF7UDAJAaiEoq\\/9KQj9LA6iG0y2bm06YMFdbEwqCmL+gziAYc9wgQhH7JYTo9EfOFWkIIOpVeQ1VdUDVZwy9gw2EZkg8uTZ77ENJ8vTF6zPAXBqP4qv\\/dXWoLOyHz8QeJNhAEGHcn1d4g4zCvMCPrYNLB5kM1ZLdyYTnBrHyAKqd9r7362+Jsg7K+wRbF6yKRJxXaGp7gFJ6hfm8WG7oIuzjNzsZSgnXgQMYLN1IXTsfRl9RRU\\/b1XuD2AjIMPwJJqNDnFaUnGGxo4XgnSCLXQW+s6F3v1QR6ZpZeMY9mOaVNGv7BRLOoCnKO4mGojDtTDtQDUW8MVYxZXS69xraBpFltq79i5tfyfchHBrseXyHEcphyNipumZ9mWRAgGNunZ\\/eb0JV663yN1+OF79PU14v9Go\\/5Xf8Tfkn\\/07xHX8+79fq\\/f7PV7zWYve2vyt+TvXvLST16aiYAdjEbfSZuiUdE2RA2fR7Ll5DdpntPoWboe+s2E+upHUU9cpMffxsUb56lsu1YhzWjgaGfnOg4ucIXvl4JOy8XyvXi\\/L+\\/tZTvYVt5Z6yfbpMUcQYMetwenPf\\/d3\\/Z79fn+0dnvO+Iff+E\\/4le9yDdxZKcz4T+ThMRf8k18JF+SD7j2NEmusk9IvHCCWxGXEe1mxD+VNMkblK2nH\\/KrFjPLtifr\\/ysdbSpVUTGYf4b+MG5hQfgwOfjP0B\\/GraHVLvYb+P8Q\\/VncOtmMM6hb\\/i\\/TH8Wth9UpXw5Qlv4R+qO4NbCZkMxvF\\/9f0iSLTBP\\/uN4m35A6SoFMA872Ha6LJgrpY58oq7fH65bQ5\\/Z6vT6v6+fzOe6Sn+N1N9u1Et06\\/Ib+JG7ZNpvm3ob5fD5Qv5wq\\/B+nIf8Z8mi3Ff+3Gk5X09UqiztTcWWHw\\/nwvD8P6+fP\\/Wf9M\\/5Zr9fj+3i8Fv8k9ZKfXo\\/\\/Oig1jYTVlfxLSdpVI0nc\\/kossG\\/+upGm3+a7y3\\/a3W673Wg3OFXr1Wo1SsZlLCzzWtldXsAgP7c6iRmyfz2ut9fn+roKOuY0O85ySsYJ\\/5HU2u1S2+rUOnFanPiOu29Ol\\/f8sp0nRpbs+Uou53p22IPxMDYe+FXOgsTon1mUGSEaV8aBiAw1EC8CZRB\\/pB\\/9EgmQIpgi+WJ7uKpn920PtxbJGOTEAxITuicD8b6+r3\\/S8dcbj90jTxr+0lrv55SNty+JMgjafLc33Xa30RUjrd7NoABMifsnqPpThOTauXXZRNmykY4GMQD\\/w5FXNNjUSMu8+78S2PjXkOZj\\/zVuFbvv\\/w9Iqylrs4v\\/enr+mnGicQuTxX8H5QUOAsMN\\/iZinvznQm5dfn9\\/5YHSJ5u\\/+O8m5s5tCuBWaHjif\\/F+sygnzPH8ByjuuncYDeHW+Xf3WFZX3+4v\\/qsp3hTtZFPArfdv5lacBTS0vv+1qWUtCfxL3Cr93huO80BpbwjV30jMU4Q5lFuhiVn\\/HcoXWaxN+9cTa\\/xn7lXCrcFv5VYWPNcqDqv\\/y8hf9DCQW7vfuNbnBWVvQcGnfxP1i6ObArj1+o2iMN+\\/dVqXcJUAaRUe+ys4l3lwTWb06kcw+nWN8a+Tl\\/RzJuHdDO7lf9ciiaFl+BuPR4sj\\/i0H56ocnqvGHKaLk7eI\\/80frMo7sRpXeWIxf4nqLHmrR9VqPXmvVqvjX\\/CReLhVOpfDcWUvaQCjBWVMPsoLTt948Favd38eDufzdLpaiWoCfwQNshftE\\/mh+CN5mfO3Qf6ivfGX+WA+GKgX6fCZzwuDPAO5tez1m6O+Sc2+CoeTMXBNHXYXH\\/UzJL4nA+QKaJ1BzxPupLvdeFDXf\\/wU\\/wr9L6gzd4EMtZiaAAAAAElFTkSuQmCC\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(14710, '2022-01-12 18:48:17', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/images.unsplash.com\\/photo-1585241645927-c7a8e5840c42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(14711, '2022-01-12 18:48:17', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(14712, '2022-01-12 18:48:17', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(14713, '2022-01-12 18:48:17', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(14714, '2022-01-12 18:48:17', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"GZB\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(14715, '2022-01-12 18:48:17', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #fff !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(14716, '2022-01-12 18:48:17', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(14717, '2022-01-12 18:48:17', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(14718, '2022-01-12 18:48:17', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(14719, '2022-01-12 18:48:17', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(14720, '2022-01-12 18:48:17', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(14721, '2022-01-12 18:48:17', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14722, '2022-01-12 18:48:17', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14723, '2022-01-12 18:48:17', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14724, '2022-01-12 18:48:52', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(14725, '2022-01-12 18:48:52', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAa0AAAB1CAMAAADKkk7zAAAAllBMVEXw7FEAAADz71L08FL381Nxbybt6VD381Ts6FDp5U+9ukA7OhTi3kwLCwTf20u6tz\\/AvUFraSR3dSjJxkSyrzwJCQOCgCwvLhBmZCNQTxvMyUVEQxd9eyquqzvb10phYCE1NBIREQabmDQsKw9KSRmMii9bWR\\/V0UgnJg0bGgmmozgVFQedmjWnpDgfHgpWVB0iIgz\\/\\/Vf6DV7rAAAfLElEQVR4nOVdh5bbsI6VKffey7jXcRvb+\\/8\\/tyIpSsRlEfPO22xOgszYE1uiJIIEgYvCqFRMx+XyvVgul4v3cnlabJeny3u7uGzfl8t2y3+388WNnrGYO+hIj2u5jktpMB8s6Rkf7csB\\/\\/XQLj3nXRlW0p\\/KMHlpqbvMPhpyWrVKLlqspqvpNPk987fz6ug8kpylWp4OV6vVdMjbSBoSLenH7be80eRH\\/CavZ0mH80HRU14xKr7o5avRqDc4VZM\\/6lGjEVWjRjWKojpLXiIWlZs7csa2HTPGYhYjVc+06bV5CFB5fCVnzMvZV\\/m5ybX4BZl4UW9xd5F2Rr+sfxM35vLzTq\\/G1Jni87erBx5rxvSmq26+arTr15iDal\\/6ga1N7DowO+Eujizm1uVL8MRH8fqln\\/Fux44DWf+jH7jcFDYdqb5Nqedq2rzWKD1l8U2uwlRPneiDZcdbugBa+C7sNE6ruvPeymRuzYufiXXF5Crk1mlU3DF0yvjY2x7qR04bxW3XDh3tjFvAGYrUTZ1przH1+bBh\\/9ykKdyS+0iNrp6BVV7oRz5rxQ8ju7iIW60AZrFvXYZcvnyH\\/uh9\\/1PcdsQ2upR9B0+tKEpv6ramg4ed0s9\\/aFtlWCFz2t9pd5Z3riN1mlfdz9TVRUynWyxhkpnPVYMCbn2KxWAiCPuP\\/IyT9wz2fckPvfZD+p5IjXXA7aRXaqenoCDc2G+UkaWEEB65cR6pk+fh2GavHbgohzzOhnecn1vX74BJGlUP+Rmtvv+MWJMiw3ZA47QbQwaPpJq6qSEd47Vp+vmACkKPeBvS7ixPnUdq1PLcabyeaEfew+QF1zO83GoFDX7W3mZn7PoFA4V9ZQJn8gzr+nI+Hbfhy5ZaGj5r+gws\\/fwB4q1GlhKd9tCdzCkydRp7uq6mr96PdlA3sK+Fn1vLZlC\\/aMrUrmBmJRRX1MGzQP0uHmft34NOENRINf\\/WBgReKrV3KCCppaDRrg0tzAKYNXMrhMlIqmhHXtzrG6H61MutVi+wY57ZcwX0f7xWesYlSBDyuavO2PeDBWG8Vlehn5eVwHvD8WddOBG6UHHBzh3XkRrdfXfa1udx6AhkvZmHW7OwmZUsW0pSXXshyk07HZr7Q8iaKC6gFor3dzC3ykrYHOgAqiupDRphNZfmSCBKG+4jczr6LEk20pTKWfAzJbfo5FbHJ3jJtZXydQ07Qy3nt9AL5HrGIfAEflOpnr4Ho2qjFh0Qb98nZ8\\/Tjo\\/7IUDG0yfe4rsG1M3Dlq2I600TJ7fGIXqlaCTt\\/Vkv7AylAC8C2+fmicQzHsH8zdGVJT0l66glXOKwd3VEC3SMp\\/NI7RzvhCnr6uchcNlKqLFzcOv1DGVWVB6IMz6BzErYK9fYc\\/AVomgteugXBGGshCfgBA0lIEEjbFdKLgKN0HNkTgUgjWYC3ILUbknloZ1bt1+QOV0xWm\\/r4M5nTXGNcNMpEYVCTk2j9BTG\\/+AvHPBMXiw3pdDFLrM0ZPncqb+XQHccBQjCnXcBl4ZuSgBBRkyi1UyC1fTEeGzl1u0AlmNcSyjmb0kj4i\\/+LkHyp2QWyItaTjh4WJ+f8cFPo1jxwHy+EV9tHoeoHbUb7Xajm\\/y2u+1uvZu8tDddQ7lkyikA4jYep4LwBIP\\/Z+\\/q+QVtnI0DNMKBd2rJp0npDF9uev2Emvy32QcMr3a2cmtVJV1WPnMnlotEv8DUr9+1My5r6DIhjUAQxuvL9sK9ZfzlfQbdYMyNpMlucbqcFif+I4n72\\/i\\/sdEjB3tnNJQMmlbtn5t0d7TgITTIgXSs9IWjvHKd7WYpHVd05JYvNm4Zyt3NchChBzWEWFcXFx9orrrnn47ondDlYEpty4IuGqIlmgnCPZrACn7+CtYIR3Ck04jOCUw51oX\\/P\\/NDL4DoVvV2QGtmbauWAWZr3Cu8vwEsA039S4BVY\\/El2PqM6sVf9Db9XXQylA\\/2lbY2BzGm7gvUZimbrTSH7izuC0MvaYxh7Gkw9RRU1rXezpIKgHj8sHFr9csoJrqQiAdxWrM0h\\/Phrp+B\\/e\\/too6p3zCFVR0ccxQkbd2N6D5py9UAQbikF437dCXQ\\/UsoCGtEwgyAD0ObdQxmDRVrVkIdI9LdN58xHcdtsdABUEK9lNiZXqV5GBmkRu+eYmesmwq8Vw9uyfmE1ybMkwBBCEZD9UBdhDqScQLTuEE8Z2sQhBcbt5a0r+LxxzyGEsq6sf4lwKdx72F+yL51XHs\\/hmfwrZt705fHumlrW0B0Ffx8QaTX2fobb76oK0qlI2hIX29AobTeGVLGsvFea+iBqtbRxi2cgMV+7SnoLkQQXmCyi3FfgQWFLBzoP3SvKiUD7xMnKK6AssLUBF7BeHSLN4itqAUIwjMYUM8BGBgat1AQkq5eIppsxeCpdZ3rUU664bJKJiNqhNw07ODsIbLuTFdXGnICNLSZNilXDB9\\/KvAMDXvvah2141pRVyQzAtXNBSx9upIB902jrp7Ah7mVW20Qa4WieokCRzcg9yhXefAO+s5JnMIL4XGPJF5YwKgsJAlEUPY5qM2eEKZF95cFIc7n8cdt3UCUSdwjnjPoo+bMxq0KqFgH4wikFUhfMhcM7xD\\/cOizEU7ha8UVDG9BmQcH1GOX798jCAe06wO0Y+BN1BjOcGTm3IKZGxNBuKDDXIRTmNxqQuODwjuEi7aJqYkaIV\\/TcPbUyEK3si10VppMG+bUqiljAAV0NdU9HuDyajg1QkPXdaOJ2c2DajBCi00PWwQp3iCKMRWg0uA3uAV+NNYvFIQfkHVNfT4fbV8uEdElohNXQTfOYIsezSxjQ0B\\/p6olDvYvp8o5g0Wh93IdmfUFwkArBL9YbgCDjx8QAhCg31y5N7i1skxAP0FIEFVs3uC+Ec0N0H70ddHarb9b8DjWzmRBBcJkFOAzgDhCt857oYMhIOoT9D\\/WLc0Qj88BeIA3awTIONkUY4NbwNL2rwpCGgqKzUm5Cogu1fhhFfQozbjCCnpm8RVrizLKiVqvrOsWbxBm0rg4j0zp9QM3fy61MJYkkzw30JAoGkq9lHIFMbi1RHfOXvuy01oQEjIKXB9UEGLEkYgTnQGiSy14YP7G2Zk7i9dVcz91MMw9vQqExsaQcaETKAGeI1M6weO2X2iJR\\/VMw8VwysZdJZdwInfP6nLSILcA9KEa4anfJiQWzFXkOQMkQ1VII8So1w\\/9FPplvHbp73uby08bn1twySgfPyipNbeoxyDaYkEIoFOctA1eDw03MfTZWHMK1giz1GMBtzB2hoYCDcHvJR4UMLcNOQOiSWTCCMC8JBay9A7toqklYo\\/JkADZGaCpKpH+BPE2tLZu9n3AonAF9a97Ku1BAY0z+BoljI\\/UiAJuodlKDMcbPiiXeS+UdbretLQm3aDTicg6gDKdBoTpJ+G3q0lhFOkKicT7dWPWGOxUKAgBdKqtX6UZxF3kgceVkGQFeY9rpZcDt8BRRcXErAn6hLioGwUrlebQNUIQnkBcjEmmIawqfUdg7N6Wv6CrK+AcYj+puB3QU6giRvvC59SxEvQ\\/9x1AoEBUzgbHOTTYieVoEuXWHgQvzZLZwtARwhRWjzbR72AyxqK5FaIbepQshDRUnyU72eRgrB8MSGSWYgae+7bb9gatrDt3HpkSmPUCs5uDYG+rnjc0eydpWA7lFkouIggnGNXFVcIWnqFrDDsAiGWcKApCstBRG4R1HYGxVnxwowm1D7pkVNYWmsZO8fZBH39RssIetT8+ms8gSLKunwcmYLCe1qOUW1tflswN7TUuwdD1QQQLJt2IsQ\\/4F+vpSt8Rs07t+dj7sSUqu67bK+imUL0EOG3kFoSVduiR9qcVxgSYEdrSMg2dWnr3EG7tQXJFxBzcwnp5ePAEQ6elnkzGM5wh7GZAYihYAszHrPLsUW2PRdY\\/UI8zXz6Exno0QjyySBDeAJqo8wdDmzBbWY9NE4exEtOBN8KtDygFG4\\/jWa5QYKnTtEHQUVlXyGw8Q+dvBzrZkWZ\\/tIC5tKEdXLqdirEbYNbu+JxjExbkIg86orffXC4vEW5RN3kK1TFifTQTbi3oDcY05NsWvV8BxO9HPwFQy\\/jA1QkES750jf+InlB7x3xZxiXFbdCXr5DIcLf0ACEP55GSOihlhAqJGlUGOU9DE2zSWGhJhFuIfvsEIeM8v2GCIZkLAAfWpSCk\\/KWCcBiUXWoL9GfUC\\/ZjuVlxKoxHt18cBHa5KJQIc0XqQi6DMhT3Umk9CY8r11cDwi1we357HFUySqmFehPBkGCiiBzWCSKlxDSGzrQnz29tfpI2EWktRCJTMXbEdEB3QiQGO7kOTAkTY6XyNwPFL3PE78JTNpiWg69zC7JnaO7LC2UIN1sh8ZAa0y24qki68YIlkOfMurZ+MUBtcWWK1AcKQo94u6Bfznlk2jLomlKjwqynLK9y9Qvc0sKYdW6dHdkzsn2M8xdngFj2uT5kpAwIwpgABFuIMLIKwqlFDsZ9mofqKkeCSqob+QMFmxVhhNByCt5iToKK7zETbPQyQXhSbvTr3ELDkQhC0NYEw9EC+yLCfWRp7oElRYj1C8OlZvMn4SAWbYOPCtVjBcmgZ9ft44f7ZN0CjBAyyVXQLYiBrEtfiMRojo1uF77UlnaNW1jegJiDO8RnuaYC+mlMivwYQaRc\\/CIWS5aDK66CFoxwb8tOY+CxXKIynUr+Fup5D\\/MC6ePCkeOCxI0h6n47y33kQU3o\\/f96v67Xz\\/XKXz4P7IZ81mjcAiFFsz4An5WCEPO8CeZ2oN9JDRsEDF3owJ8U\\/1g605ZRaUQTu2IPwNlcdkdsY+8XJUSi4iN7ApImIqbya6FaAuvp2g66NK044RXr4xAxgRUFhuY9go8f1QkujYzaSmQ5AEFYt6AHNqPS9KogTqDuC+Zl262\\/98DbUIARAp6rpgO6dpUyDh51gJYxF04THDm3vFk9hrbGJQMY04y4eXGEiOZ2CJYQDRqDSM0uutn0wTp6f2cWwE6cjbLZHc6FWKa\\/oMkEDAZ234vPwehh3XSKTjFUXn\\/SFwLb2pKZcwuyZ2juC4CkMs8I5hvNq0GYTTQ3AEH41Be6I8ivtRkPZvMJQc3DkrscyQkkrdtzX8EF2XmkIKydlzpXMBI008JAY2NEowXrg2jNGbeumCWjD7wHwL0CnDScErpg2WMQqWgOQ8po+DvtIgvgarOLLfGGIAjrqiHQ8zbuECZwYG8KCpoApKicHFiDgI1kn6LtToc5eO7I4ppxa4DVjPQWsP0qv+wCzujpE8WedIMSgIY70i4yBaEVtzajnT8AyShBCOWvPGVKrvBkTX8dXfSttO0CL9MXUBC2dfMAUyrivfZlxi1QKmmW3tYG3mL+NBWEcKOiOSgUQlFjSLOnuUycJrZSQ7EJ\\/G7h0sq4tAaiWgkNcL+PH4uuZAMdggvVHOrccSrqrV0w+FX\\/UnELC2pVde0ZvcZClbthYKc+Fww7VHwKzdQ94Y4WFzxG5omrWiIyXRk4kFDqEYSQUlkgCI2iK+kFjWT7NAoC623G5Ekh4K9Grq24dTGi7TVCjFB4i9Cf09cFIdxRGjuNtZV8Ub3fiB7Yq7ac99h5GMivtG90S4\\/cri1fBKxBe4Ci2SbVGYxlayM1S\\/AyZXWyBF1R+SbdoLgFOBdN7DjRHop\\/uLYGsi4iSgEkgcuEuQXIU2ITYqSFkQd0tmgYtvgyMEmrd\\/vnNDiLtgAQhF8QLtEroiQGJsKnniqsHUcznpYYHEGKqaTcwsQOmjeNAAJnjJFNoZskaAVHYnxb0Y3sGvBsuKrsbMGetmhDVzkSKLnsKVyHLfjD3zHAoqHWkDMus3IJmoFeTxEVgMKr9AFTbu3AcCShLQZmwTFUzMAmqz0Y67FQFxEDJgvHA3NbURDa3He2BBgMVeqmowjDubrO7B502rlzyDndYDXNwDSzIo1UMlCb2pCu9oMoKbcQ\\/SaCcAG5jz98RmOeCJkoFXgC0RwmkBKw5FKQEAmqQ9qPlh6HXICsrxGqcYcwwTik0QsGYaJLZv6ZyWXW2nHxXTeNZ2DYH6gnKOUWWDI0hhOWUSFbUOGJiUkCCmZbzCKIiacaITrWwYrCpUTeiC0MCUsrq4bQx+8UbxNEAvyCEKfWj0LrtwbuIrsIdQ9aMolyC0PvJbdeEO9CcLEHYhb89rG0GPHxPzBTmqsTGKVPEl4xt7VOPRStPj55QmXb6o9ltlkqUbHksttz\\/2s+fpA7WnUCjJNJPeEtiPgu9glqJLk19eFib6xtwft+GHvOQNeHENio8ZPlYGnV+BXtrfjgty1mDJMTVSTBFisVOPsfq1z5oz4hPjof5xPUwtKG0N3+1If5CbRmRAgkt2Bto6oWSjDOmA4aP8R0woQ5IbGwpAhZGiu0NcgufVviB6OqTQ4aAaeqIcjvLzudJUYL3qhPTErIIT+jRk6qfiBcT7oB1oM2QqWCW6gRNvVRi15jUSzpBkOVIGk3ek3pLDQWOl0CPDA2joiHqw3Mja31bQ1FLBWEWE676kT+rmile50lEJ8ro83lnWCcuwz02SFUqsu6CXqN0ZoU3MIKyySxo4ISjKspAxSEetchICeaQ42QgCUzVMOI19jmL3bkXeFyqjYMgeB7qogRwgCF+951ZMkEwzQ0fY7WViymAGIKpKsBWTcNeM6tCZYaoxqhDQzF5BGaEAk9JgUh2IREAgAQS+uNnGx2sSEkJGHeqOo9iAgLTz2PvT5+sCvy+uVm\\/akUyQCzsbHyNGea5ZxbWNBspCtkGA8u9nVDLyzJn4Z9hWS25A1dl8TsQwxYZ\\/51ZMMHHYVwQeBlsaWwMG\\/cNTggo9CdpF6y5CVpphkuW9KriDU8iNd4hykChgDg3MJQQRrjZ8MssCYgERcVW8LcEhFdotDhKqgz32oXGxJd0gzUY5XHjwuzM\\/W8dESfvSfYaYLhgtW87ycoEGQoD1YjIV2N9ZTMTMOIBwLAsKfB7DYlCwOXiWCBVVBKSSyjR4z0N8h4XSO02sWRQz5h1VK1nMLVI7cghCgBb61PA8\\/V1hmIYk5IrAc4931RYpbQ+4RbS9RE9O+PwMqYi7UrxrvocwGTcb6FmoSbgRCRjNV+NQNiZ\\/OTOJOFcRQppqJ4c8MTmOTic21BGBvJ+z3gGBOIlLFzm65NzRAjNK8YmROQzE70e4km0IVNdBcE6oRWcnOEIQnqIICYq9cd1KHEAW1H1OYDjhvZNy3xxHLOMHrBk7WFDrdYV3NxRZM2zsrWN1lX0zlgG5JR6ePdP\\/FsC6QExcNX+yvNDK8gWrnXzsCFTnuGgU0OVl16GoS\\/xz+puK1Q2eypXQW1PhvusCgjaT6VdZJmaCKK4ipG9Xd9jht7Jln0m8goaEZwsQcG8HHJgAlzJCoQsyWlZxTDyomNgAZELgiPtrw69uOaGq7lFBMi3XoexSN9ItOIJSUJ55j2HNX4+EQfP+nqI6wgI4uDISrNabNUEEJKCxtxy94rCGGipHiLq9SIuE3Mfcilj23PsRihzoyw0IoCTK\\/gjRk5w9+NKqYejdDM9tEUJ2NHJxEmN0DVVG8P6ilZS7tFxvawZDhhLXcO90zQ8CN6EwJyYhxjTiu5zS1Iu1xOWTd9ajgrXECKeQYNY+q5WxDika5qHZww0knPTTQ24RP4AUZlkgRwDDGy+rYjY2ST4BJYLIXfa\\/Flk3UpwZ7M6XyGYGFfLSiWR6c\\/bIuWGbmWEaaYq1GEBVic4q2DfrlEM5iUxJQRb5NS9n8Dz2V5qb0OVhFJTUhMfdncSp2EJnv+MgE+WA29CNZK1hzmVMGNG4TZWkH9rqKdciYPkQ64F9x896ydsqK3qUkA2wZxHhgCC62otIsdOtbOq+l0yn\\/ly\\/Qs\\/nyZ2ETjcKYkStINRT8inisDuDpbccgYId2YlwvDWp+j+\\/n5PDzPz8PhcIYKIGNrwlgEEF3EyuVaLfuB74RkMPYrKte0U2iHSYUBa0FF8tDkH3+ni0ru9sIQWEGuChol03To2z\\/nV8+olr3w1dK4T1KDLqWy8FCgZZxu6LZfl22bWEnxjug045tiyY2y8JSeHauJdnhZD0kodRlaqi3LqQjZ4T09Jd+u1HqZmruAdQc3N00FYSdoW2WRsGeYtM4jEevOcG2bfRilPRecxx+7tmSLJofwTelSzMKyvYH18Eaqih\\/DN77NQaeHFR80QqFywlj9KH3isC22ObhixU2MWxA4bwug5qwGvr0ymrBKFoHVZzB1TufWL+zPrbbeCduxPXeKYF6l5wq9DMaY121Ty2Ot4u5NuY8\\/4MKi+GBQoSyZy7UCpmSObAyLTE\\/iWPs0cFqwutMejIyoETcpn1LgJtFZz2L1KPd95nbrzGoX99z2DwY4q6DKfZDs4I6wSdC+o2LhNKZWttoa2qD8vr83wSjXrTjKJUlumWUCXM1kvraAXV9ZbtWEDwcN6Lnb\\/MUeEMLoJmXMoEZoJw4kH0OOlL5V9Bjliqy9Ee4ZOVk+t13At+lrZG4L6qQMs8BcdQvVfzJEYhu8\\/3KOtpoOh6hgQ0I4I8s3xP08rSTCI97Fx6XFSBHPZXnJrkfT9rDcog+bFMxT3lJw6xNYhVIDUwtFYfUnW4A6oTu8a4vrzipPer5tHzDaOMsdCJrY3LQNW1e4po7TRC9NcLfJnWS+YG6yg6o+ZgnfccFeyoq0jZqGRVce55FCuD2ck7RKJ6iMc2JuDKJkJC1lpeXCOkkM6CAFW8xvzP7e6I4tq0k\\/C5QwZR\\/WJbnl36dcEQlN9\\/M31jc\\/wXIDLtL8ORj7I8mbqt0Cl4xykH5ChoqAXE4hIkAErM0wUvCuwcRWbn2b1RisVC4oMCoi1HrF7UDAJAaiEoq\\/9KQj9LA6iG0y2bm06YMFdbEwqCmL+gziAYc9wgQhH7JYTo9EfOFWkIIOpVeQ1VdUDVZwy9gw2EZkg8uTZ77ENJ8vTF6zPAXBqP4qv\\/dXWoLOyHz8QeJNhAEGHcn1d4g4zCvMCPrYNLB5kM1ZLdyYTnBrHyAKqd9r7362+Jsg7K+wRbF6yKRJxXaGp7gFJ6hfm8WG7oIuzjNzsZSgnXgQMYLN1IXTsfRl9RRU\\/b1XuD2AjIMPwJJqNDnFaUnGGxo4XgnSCLXQW+s6F3v1QR6ZpZeMY9mOaVNGv7BRLOoCnKO4mGojDtTDtQDUW8MVYxZXS69xraBpFltq79i5tfyfchHBrseXyHEcphyNipumZ9mWRAgGNunZ\\/eb0JV663yN1+OF79PU14v9Go\\/5Xf8Tfkn\\/07xHX8+79fq\\/f7PV7zWYve2vyt+TvXvLST16aiYAdjEbfSZuiUdE2RA2fR7Ll5DdpntPoWboe+s2E+upHUU9cpMffxsUb56lsu1YhzWjgaGfnOg4ucIXvl4JOy8XyvXi\\/L+\\/tZTvYVt5Z6yfbpMUcQYMetwenPf\\/d3\\/Z79fn+0dnvO+Iff+E\\/4le9yDdxZKcz4T+ThMRf8k18JF+SD7j2NEmusk9IvHCCWxGXEe1mxD+VNMkblK2nH\\/KrFjPLtifr\\/ysdbSpVUTGYf4b+MG5hQfgwOfjP0B\\/GraHVLvYb+P8Q\\/VncOtmMM6hb\\/i\\/TH8Wth9UpXw5Qlv4R+qO4NbCZkMxvF\\/9f0iSLTBP\\/uN4m35A6SoFMA872Ha6LJgrpY58oq7fH65bQ5\\/Z6vT6v6+fzOe6Sn+N1N9u1Et06\\/Ib+JG7ZNpvm3ob5fD5Qv5wq\\/B+nIf8Z8mi3Ff+3Gk5X09UqiztTcWWHw\\/nwvD8P6+fP\\/Wf9M\\/5Zr9fj+3i8Fv8k9ZKfXo\\/\\/Oig1jYTVlfxLSdpVI0nc\\/kossG\\/+upGm3+a7y3\\/a3W673Wg3OFXr1Wo1SsZlLCzzWtldXsAgP7c6iRmyfz2ut9fn+roKOuY0O85ySsYJ\\/5HU2u1S2+rUOnFanPiOu29Ol\\/f8sp0nRpbs+Uou53p22IPxMDYe+FXOgsTon1mUGSEaV8aBiAw1EC8CZRB\\/pB\\/9EgmQIpgi+WJ7uKpn920PtxbJGOTEAxITuicD8b6+r3\\/S8dcbj90jTxr+0lrv55SNty+JMgjafLc33Xa30RUjrd7NoABMifsnqPpThOTauXXZRNmykY4GMQD\\/w5FXNNjUSMu8+78S2PjXkOZj\\/zVuFbvv\\/w9Iqylrs4v\\/enr+mnGicQuTxX8H5QUOAsMN\\/iZinvznQm5dfn9\\/5YHSJ5u\\/+O8m5s5tCuBWaHjif\\/F+sygnzPH8ByjuuncYDeHW+Xf3WFZX3+4v\\/qsp3hTtZFPArfdv5lacBTS0vv+1qWUtCfxL3Cr93huO80BpbwjV30jMU4Q5lFuhiVn\\/HcoXWaxN+9cTa\\/xn7lXCrcFv5VYWPNcqDqv\\/y8hf9DCQW7vfuNbnBWVvQcGnfxP1i6ObArj1+o2iMN+\\/dVqXcJUAaRUe+ys4l3lwTWb06kcw+nWN8a+Tl\\/RzJuHdDO7lf9ciiaFl+BuPR4sj\\/i0H56ocnqvGHKaLk7eI\\/80frMo7sRpXeWIxf4nqLHmrR9VqPXmvVqvjX\\/CReLhVOpfDcWUvaQCjBWVMPsoLTt948Favd38eDufzdLpaiWoCfwQNshftE\\/mh+CN5mfO3Qf6ivfGX+WA+GKgX6fCZzwuDPAO5tez1m6O+Sc2+CoeTMXBNHXYXH\\/UzJL4nA+QKaJ1BzxPupLvdeFDXf\\/wU\\/wr9L6gzd4EMtZiaAAAAAElFTkSuQmCC\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(14726, '2022-01-12 18:48:52', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/images.unsplash.com\\/photo-1585241645927-c7a8e5840c42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(14727, '2022-01-12 18:48:52', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(14728, '2022-01-12 18:48:52', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(14729, '2022-01-12 18:48:52', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(14730, '2022-01-12 18:48:52', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"GZB\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(14731, '2022-01-12 18:48:52', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #000 !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(14732, '2022-01-12 18:48:52', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(14733, '2022-01-12 18:48:52', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(14734, '2022-01-12 18:48:52', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(14735, '2022-01-12 18:48:52', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(14736, '2022-01-12 18:48:52', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(14737, '2022-01-12 18:48:52', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14738, '2022-01-12 18:48:52', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14739, '2022-01-12 18:48:52', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14740, '2022-01-12 19:07:04', 22, 'insertData', 'jurusan', '{\"jurusan\":\"Teknik Informasi\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14741, '2022-01-12 19:10:28', 22, 'insertData', 'kelas', '{\"kelas\":\"EKSC1\",\"jurusan_id\":\"1\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14742, '2022-01-12 19:14:31', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"46\\\",\\\"41\\\",\\\"42\\\",\\\"44\\\",\\\"43\\\",\\\"45\\\",\\\"28\\\",\\\"40\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"24\\\",\\\"20\\\",\\\"26\\\",\\\"18\\\",\\\"35\\\",\\\"47\\\",\\\"48\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2021-10-01 09:35:57\"}'),
(14743, '2022-01-12 19:19:01', 22, 'updateData', 'role', '{\"id\":\"20\",\"role\":\"Mahasiswa\",\"slug\":\"mahasiswa\",\"status\":\"ENABLE\",\"menu\":null,\"created_at\":\"2022-01-12 18:58:32\",\"updated_at\":null}'),
(14744, '2022-01-12 19:19:04', 22, 'updateData', 'role', '{\"id\":\"20\",\"role\":\"Mahasiswa\",\"slug\":\"mahasiswa\",\"status\":\"ENABLE\",\"menu\":\"[\\\"39\\\",\\\"29\\\",\\\"46\\\",\\\"50\\\",\\\"49\\\"]\",\"created_at\":\"2022-01-12 18:58:32\",\"updated_at\":\"2022-01-12 19:19:01\"}'),
(14745, '2022-01-12 19:19:09', 22, 'updateData', 'role', '{\"id\":\"20\",\"role\":\"Mahasiswa\",\"slug\":\"mahasiswa\",\"status\":\"ENABLE\",\"menu\":\"[\\\"39\\\",\\\"29\\\",\\\"46\\\",\\\"50\\\",\\\"49\\\"]\",\"created_at\":\"2022-01-12 18:58:32\",\"updated_at\":\"2022-01-12 19:19:04\"}'),
(14746, '2022-01-12 19:19:13', 22, 'updateData', 'role', '{\"id\":\"20\",\"role\":\"Mahasiswa\",\"slug\":\"mahasiswa\",\"status\":\"ENABLE\",\"menu\":\"[\\\"39\\\",\\\"29\\\",\\\"46\\\",\\\"50\\\",\\\"49\\\"]\",\"created_at\":\"2022-01-12 18:58:32\",\"updated_at\":\"2022-01-12 19:19:09\"}'),
(14747, '2022-01-12 19:19:14', 22, 'updateData', 'role', '{\"id\":\"20\",\"role\":\"Mahasiswa\",\"slug\":\"mahasiswa\",\"status\":\"ENABLE\",\"menu\":\"[\\\"39\\\",\\\"29\\\",\\\"46\\\",\\\"50\\\",\\\"49\\\"]\",\"created_at\":\"2022-01-12 18:58:32\",\"updated_at\":\"2022-01-12 19:19:13\"}'),
(14748, '2022-01-12 19:19:14', 22, 'updateData', 'role', '{\"id\":\"20\",\"role\":\"Mahasiswa\",\"slug\":\"mahasiswa\",\"status\":\"ENABLE\",\"menu\":\"[\\\"39\\\",\\\"29\\\",\\\"46\\\",\\\"50\\\",\\\"49\\\"]\",\"created_at\":\"2022-01-12 18:58:32\",\"updated_at\":\"2022-01-12 19:19:14\"}'),
(14749, '2022-01-12 19:19:15', 22, 'updateData', 'role', '{\"id\":\"20\",\"role\":\"Mahasiswa\",\"slug\":\"mahasiswa\",\"status\":\"ENABLE\",\"menu\":\"[\\\"39\\\",\\\"29\\\",\\\"46\\\",\\\"50\\\",\\\"49\\\"]\",\"created_at\":\"2022-01-12 18:58:32\",\"updated_at\":\"2022-01-12 19:19:14\"}'),
(14750, '2022-01-12 19:19:26', 22, 'updateData', 'role', '{\"id\":\"20\",\"role\":\"Mahasiswa\",\"slug\":\"mahasiswa\",\"status\":\"ENABLE\",\"menu\":\"[\\\"39\\\",\\\"29\\\",\\\"46\\\",\\\"50\\\",\\\"49\\\"]\",\"created_at\":\"2022-01-12 18:58:32\",\"updated_at\":\"2022-01-12 19:19:15\"}'),
(14751, '2022-01-12 19:20:38', 22, 'updateData', 'role', '{\"id\":\"20\",\"role\":\"Mahasiswa\",\"slug\":\"mahasiswa\",\"status\":\"ENABLE\",\"menu\":\"[\\\"39\\\",\\\"29\\\",\\\"46\\\",\\\"50\\\",\\\"49\\\"]\",\"created_at\":\"2022-01-12 18:58:32\",\"updated_at\":\"2022-01-12 19:19:26\"}'),
(14752, '2022-01-12 19:21:20', NULL, 'insertData', 'failed_login', '{\"ip_address\":\"127.0.0.1\",\"date\":\"2022-01-12 19:21:20\"}'),
(14753, '2022-01-12 19:22:46', 22, 'updateData', 'role', '{\"id\":\"20\",\"role\":\"Mahasiswa\",\"slug\":\"mahasiswa\",\"status\":\"ENABLE\",\"menu\":\"[\\\"39\\\",\\\"29\\\",\\\"46\\\",\\\"50\\\",\\\"49\\\"]\",\"created_at\":\"2022-01-12 18:58:32\",\"updated_at\":\"2022-01-12 19:20:38\"}'),
(14754, '2022-02-08 07:06:13', NULL, 'updateData', 'user', '{\"id\":\"22\",\"session_id\":null,\"username\":\"admin\",\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"17\",\"role_slug\":\"admin\",\"role_name\":\"Admin\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":\"1\",\"active\":null,\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:31:04\",\"updated_at\":\"2022-01-12 18:32:57\"}'),
(14755, '2022-02-08 07:06:35', NULL, 'updateData', 'user', '{\"id\":\"23\",\"session_id\":null,\"username\":\"mahasiswa\",\"name\":\"Mahasiswa\",\"email\":\"mahasiswa@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"20\",\"role_slug\":\"mahasiswa\",\"role_name\":\"Mahasiswa\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":null,\"active\":null,\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:59:52\",\"updated_at\":null}'),
(14756, '2022-02-08 07:12:05', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}');
INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(14757, '2022-02-08 07:12:05', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAa0AAAB1CAMAAADKkk7zAAAAllBMVEXw7FEAAADz71L08FL381Nxbybt6VD381Ts6FDp5U+9ukA7OhTi3kwLCwTf20u6tz\\/AvUFraSR3dSjJxkSyrzwJCQOCgCwvLhBmZCNQTxvMyUVEQxd9eyquqzvb10phYCE1NBIREQabmDQsKw9KSRmMii9bWR\\/V0UgnJg0bGgmmozgVFQedmjWnpDgfHgpWVB0iIgz\\/\\/Vf6DV7rAAAfLElEQVR4nOVdh5bbsI6VKffey7jXcRvb+\\/8\\/tyIpSsRlEfPO22xOgszYE1uiJIIEgYvCqFRMx+XyvVgul4v3cnlabJeny3u7uGzfl8t2y3+388WNnrGYO+hIj2u5jktpMB8s6Rkf7csB\\/\\/XQLj3nXRlW0p\\/KMHlpqbvMPhpyWrVKLlqspqvpNPk987fz6ug8kpylWp4OV6vVdMjbSBoSLenH7be80eRH\\/CavZ0mH80HRU14xKr7o5avRqDc4VZM\\/6lGjEVWjRjWKojpLXiIWlZs7csa2HTPGYhYjVc+06bV5CFB5fCVnzMvZV\\/m5ybX4BZl4UW9xd5F2Rr+sfxM35vLzTq\\/G1Jni87erBx5rxvSmq26+arTr15iDal\\/6ga1N7DowO+Eujizm1uVL8MRH8fqln\\/Fux44DWf+jH7jcFDYdqb5Nqedq2rzWKD1l8U2uwlRPneiDZcdbugBa+C7sNE6ruvPeymRuzYufiXXF5Crk1mlU3DF0yvjY2x7qR04bxW3XDh3tjFvAGYrUTZ1przH1+bBh\\/9ykKdyS+0iNrp6BVV7oRz5rxQ8ju7iIW60AZrFvXYZcvnyH\\/uh9\\/1PcdsQ2upR9B0+tKEpv6ramg4ed0s9\\/aFtlWCFz2t9pd5Z3riN1mlfdz9TVRUynWyxhkpnPVYMCbn2KxWAiCPuP\\/IyT9wz2fckPvfZD+p5IjXXA7aRXaqenoCDc2G+UkaWEEB65cR6pk+fh2GavHbgohzzOhnecn1vX74BJGlUP+Rmtvv+MWJMiw3ZA47QbQwaPpJq6qSEd47Vp+vmACkKPeBvS7ixPnUdq1PLcabyeaEfew+QF1zO83GoFDX7W3mZn7PoFA4V9ZQJn8gzr+nI+Hbfhy5ZaGj5r+gws\\/fwB4q1GlhKd9tCdzCkydRp7uq6mr96PdlA3sK+Fn1vLZlC\\/aMrUrmBmJRRX1MGzQP0uHmft34NOENRINf\\/WBgReKrV3KCCppaDRrg0tzAKYNXMrhMlIqmhHXtzrG6H61MutVi+wY57ZcwX0f7xWesYlSBDyuavO2PeDBWG8Vlehn5eVwHvD8WddOBG6UHHBzh3XkRrdfXfa1udx6AhkvZmHW7OwmZUsW0pSXXshyk07HZr7Q8iaKC6gFor3dzC3ykrYHOgAqiupDRphNZfmSCBKG+4jczr6LEk20pTKWfAzJbfo5FbHJ3jJtZXydQ07Qy3nt9AL5HrGIfAEflOpnr4Ho2qjFh0Qb98nZ8\\/Tjo\\/7IUDG0yfe4rsG1M3Dlq2I600TJ7fGIXqlaCTt\\/Vkv7AylAC8C2+fmicQzHsH8zdGVJT0l66glXOKwd3VEC3SMp\\/NI7RzvhCnr6uchcNlKqLFzcOv1DGVWVB6IMz6BzErYK9fYc\\/AVomgteugXBGGshCfgBA0lIEEjbFdKLgKN0HNkTgUgjWYC3ILUbknloZ1bt1+QOV0xWm\\/r4M5nTXGNcNMpEYVCTk2j9BTG\\/+AvHPBMXiw3pdDFLrM0ZPncqb+XQHccBQjCnXcBl4ZuSgBBRkyi1UyC1fTEeGzl1u0AlmNcSyjmb0kj4i\\/+LkHyp2QWyItaTjh4WJ+f8cFPo1jxwHy+EV9tHoeoHbUb7Xajm\\/y2u+1uvZu8tDddQ7lkyikA4jYep4LwBIP\\/Z+\\/q+QVtnI0DNMKBd2rJp0npDF9uev2Emvy32QcMr3a2cmtVJV1WPnMnlotEv8DUr9+1My5r6DIhjUAQxuvL9sK9ZfzlfQbdYMyNpMlucbqcFif+I4n72\\/i\\/sdEjB3tnNJQMmlbtn5t0d7TgITTIgXSs9IWjvHKd7WYpHVd05JYvNm4Zyt3NchChBzWEWFcXFx9orrrnn47ondDlYEpty4IuGqIlmgnCPZrACn7+CtYIR3Ck04jOCUw51oX\\/P\\/NDL4DoVvV2QGtmbauWAWZr3Cu8vwEsA039S4BVY\\/El2PqM6sVf9Db9XXQylA\\/2lbY2BzGm7gvUZimbrTSH7izuC0MvaYxh7Gkw9RRU1rXezpIKgHj8sHFr9csoJrqQiAdxWrM0h\\/Phrp+B\\/e\\/too6p3zCFVR0ccxQkbd2N6D5py9UAQbikF437dCXQ\\/UsoCGtEwgyAD0ObdQxmDRVrVkIdI9LdN58xHcdtsdABUEK9lNiZXqV5GBmkRu+eYmesmwq8Vw9uyfmE1ybMkwBBCEZD9UBdhDqScQLTuEE8Z2sQhBcbt5a0r+LxxzyGEsq6sf4lwKdx72F+yL51XHs\\/hmfwrZt705fHumlrW0B0Ffx8QaTX2fobb76oK0qlI2hIX29AobTeGVLGsvFea+iBqtbRxi2cgMV+7SnoLkQQXmCyi3FfgQWFLBzoP3SvKiUD7xMnKK6AssLUBF7BeHSLN4itqAUIwjMYUM8BGBgat1AQkq5eIppsxeCpdZ3rUU664bJKJiNqhNw07ODsIbLuTFdXGnICNLSZNilXDB9\\/KvAMDXvvah2141pRVyQzAtXNBSx9upIB902jrp7Ah7mVW20Qa4WieokCRzcg9yhXefAO+s5JnMIL4XGPJF5YwKgsJAlEUPY5qM2eEKZF95cFIc7n8cdt3UCUSdwjnjPoo+bMxq0KqFgH4wikFUhfMhcM7xD\\/cOizEU7ha8UVDG9BmQcH1GOX798jCAe06wO0Y+BN1BjOcGTm3IKZGxNBuKDDXIRTmNxqQuODwjuEi7aJqYkaIV\\/TcPbUyEK3si10VppMG+bUqiljAAV0NdU9HuDyajg1QkPXdaOJ2c2DajBCi00PWwQp3iCKMRWg0uA3uAV+NNYvFIQfkHVNfT4fbV8uEdElohNXQTfOYIsezSxjQ0B\\/p6olDvYvp8o5g0Wh93IdmfUFwkArBL9YbgCDjx8QAhCg31y5N7i1skxAP0FIEFVs3uC+Ec0N0H70ddHarb9b8DjWzmRBBcJkFOAzgDhCt857oYMhIOoT9D\\/WLc0Qj88BeIA3awTIONkUY4NbwNL2rwpCGgqKzUm5Cogu1fhhFfQozbjCCnpm8RVrizLKiVqvrOsWbxBm0rg4j0zp9QM3fy61MJYkkzw30JAoGkq9lHIFMbi1RHfOXvuy01oQEjIKXB9UEGLEkYgTnQGiSy14YP7G2Zk7i9dVcz91MMw9vQqExsaQcaETKAGeI1M6weO2X2iJR\\/VMw8VwysZdJZdwInfP6nLSILcA9KEa4anfJiQWzFXkOQMkQ1VII8So1w\\/9FPplvHbp73uby08bn1twySgfPyipNbeoxyDaYkEIoFOctA1eDw03MfTZWHMK1giz1GMBtzB2hoYCDcHvJR4UMLcNOQOiSWTCCMC8JBay9A7toqklYo\\/JkADZGaCpKpH+BPE2tLZu9n3AonAF9a97Ku1BAY0z+BoljI\\/UiAJuodlKDMcbPiiXeS+UdbretLQm3aDTicg6gDKdBoTpJ+G3q0lhFOkKicT7dWPWGOxUKAgBdKqtX6UZxF3kgceVkGQFeY9rpZcDt8BRRcXErAn6hLioGwUrlebQNUIQnkBcjEmmIawqfUdg7N6Wv6CrK+AcYj+puB3QU6giRvvC59SxEvQ\\/9x1AoEBUzgbHOTTYieVoEuXWHgQvzZLZwtARwhRWjzbR72AyxqK5FaIbepQshDRUnyU72eRgrB8MSGSWYgae+7bb9gatrDt3HpkSmPUCs5uDYG+rnjc0eydpWA7lFkouIggnGNXFVcIWnqFrDDsAiGWcKApCstBRG4R1HYGxVnxwowm1D7pkVNYWmsZO8fZBH39RssIetT8+ms8gSLKunwcmYLCe1qOUW1tflswN7TUuwdD1QQQLJt2IsQ\\/4F+vpSt8Rs07t+dj7sSUqu67bK+imUL0EOG3kFoSVduiR9qcVxgSYEdrSMg2dWnr3EG7tQXJFxBzcwnp5ePAEQ6elnkzGM5wh7GZAYihYAszHrPLsUW2PRdY\\/UI8zXz6Exno0QjyySBDeAJqo8wdDmzBbWY9NE4exEtOBN8KtDygFG4\\/jWa5QYKnTtEHQUVlXyGw8Q+dvBzrZkWZ\\/tIC5tKEdXLqdirEbYNbu+JxjExbkIg86orffXC4vEW5RN3kK1TFifTQTbi3oDcY05NsWvV8BxO9HPwFQy\\/jA1QkES750jf+InlB7x3xZxiXFbdCXr5DIcLf0ACEP55GSOihlhAqJGlUGOU9DE2zSWGhJhFuIfvsEIeM8v2GCIZkLAAfWpSCk\\/KWCcBiUXWoL9GfUC\\/ZjuVlxKoxHt18cBHa5KJQIc0XqQi6DMhT3Umk9CY8r11cDwi1we357HFUySqmFehPBkGCiiBzWCSKlxDSGzrQnz29tfpI2EWktRCJTMXbEdEB3QiQGO7kOTAkTY6XyNwPFL3PE78JTNpiWg69zC7JnaO7LC2UIN1sh8ZAa0y24qki68YIlkOfMurZ+MUBtcWWK1AcKQo94u6Bfznlk2jLomlKjwqynLK9y9Qvc0sKYdW6dHdkzsn2M8xdngFj2uT5kpAwIwpgABFuIMLIKwqlFDsZ9mofqKkeCSqob+QMFmxVhhNByCt5iToKK7zETbPQyQXhSbvTr3ELDkQhC0NYEw9EC+yLCfWRp7oElRYj1C8OlZvMn4SAWbYOPCtVjBcmgZ9ft44f7ZN0CjBAyyVXQLYiBrEtfiMRojo1uF77UlnaNW1jegJiDO8RnuaYC+mlMivwYQaRc\\/CIWS5aDK66CFoxwb8tOY+CxXKIynUr+Fup5D\\/MC6ePCkeOCxI0h6n47y33kQU3o\\/f96v67Xz\\/XKXz4P7IZ81mjcAiFFsz4An5WCEPO8CeZ2oN9JDRsEDF3owJ8U\\/1g605ZRaUQTu2IPwNlcdkdsY+8XJUSi4iN7ApImIqbya6FaAuvp2g66NK044RXr4xAxgRUFhuY9go8f1QkujYzaSmQ5AEFYt6AHNqPS9KogTqDuC+Zl262\\/98DbUIARAp6rpgO6dpUyDh51gJYxF04THDm3vFk9hrbGJQMY04y4eXGEiOZ2CJYQDRqDSM0uutn0wTp6f2cWwE6cjbLZHc6FWKa\\/oMkEDAZ234vPwehh3XSKTjFUXn\\/SFwLb2pKZcwuyZ2juC4CkMs8I5hvNq0GYTTQ3AEH41Be6I8ivtRkPZvMJQc3DkrscyQkkrdtzX8EF2XmkIKydlzpXMBI008JAY2NEowXrg2jNGbeumCWjD7wHwL0CnDScErpg2WMQqWgOQ8po+DvtIgvgarOLLfGGIAjrqiHQ8zbuECZwYG8KCpoApKicHFiDgI1kn6LtToc5eO7I4ppxa4DVjPQWsP0qv+wCzujpE8WedIMSgIY70i4yBaEVtzajnT8AyShBCOWvPGVKrvBkTX8dXfSttO0CL9MXUBC2dfMAUyrivfZlxi1QKmmW3tYG3mL+NBWEcKOiOSgUQlFjSLOnuUycJrZSQ7EJ\\/G7h0sq4tAaiWgkNcL+PH4uuZAMdggvVHOrccSrqrV0w+FX\\/UnELC2pVde0ZvcZClbthYKc+Fww7VHwKzdQ94Y4WFzxG5omrWiIyXRk4kFDqEYSQUlkgCI2iK+kFjWT7NAoC623G5Ekh4K9Grq24dTGi7TVCjFB4i9Cf09cFIdxRGjuNtZV8Ub3fiB7Yq7ac99h5GMivtG90S4\\/cri1fBKxBe4Ci2SbVGYxlayM1S\\/AyZXWyBF1R+SbdoLgFOBdN7DjRHop\\/uLYGsi4iSgEkgcuEuQXIU2ITYqSFkQd0tmgYtvgyMEmrd\\/vnNDiLtgAQhF8QLtEroiQGJsKnniqsHUcznpYYHEGKqaTcwsQOmjeNAAJnjJFNoZskaAVHYnxb0Y3sGvBsuKrsbMGetmhDVzkSKLnsKVyHLfjD3zHAoqHWkDMus3IJmoFeTxEVgMKr9AFTbu3AcCShLQZmwTFUzMAmqz0Y67FQFxEDJgvHA3NbURDa3He2BBgMVeqmowjDubrO7B502rlzyDndYDXNwDSzIo1UMlCb2pCu9oMoKbcQ\\/SaCcAG5jz98RmOeCJkoFXgC0RwmkBKw5FKQEAmqQ9qPlh6HXICsrxGqcYcwwTik0QsGYaJLZv6ZyWXW2nHxXTeNZ2DYH6gnKOUWWDI0hhOWUSFbUOGJiUkCCmZbzCKIiacaITrWwYrCpUTeiC0MCUsrq4bQx+8UbxNEAvyCEKfWj0LrtwbuIrsIdQ9aMolyC0PvJbdeEO9CcLEHYhb89rG0GPHxPzBTmqsTGKVPEl4xt7VOPRStPj55QmXb6o9ltlkqUbHksttz\\/2s+fpA7WnUCjJNJPeEtiPgu9glqJLk19eFib6xtwft+GHvOQNeHENio8ZPlYGnV+BXtrfjgty1mDJMTVSTBFisVOPsfq1z5oz4hPjof5xPUwtKG0N3+1If5CbRmRAgkt2Bto6oWSjDOmA4aP8R0woQ5IbGwpAhZGiu0NcgufVviB6OqTQ4aAaeqIcjvLzudJUYL3qhPTErIIT+jRk6qfiBcT7oB1oM2QqWCW6gRNvVRi15jUSzpBkOVIGk3ek3pLDQWOl0CPDA2joiHqw3Mja31bQ1FLBWEWE676kT+rmile50lEJ8ro83lnWCcuwz02SFUqsu6CXqN0ZoU3MIKyySxo4ISjKspAxSEetchICeaQ42QgCUzVMOI19jmL3bkXeFyqjYMgeB7qogRwgCF+951ZMkEwzQ0fY7WViymAGIKpKsBWTcNeM6tCZYaoxqhDQzF5BGaEAk9JgUh2IREAgAQS+uNnGx2sSEkJGHeqOo9iAgLTz2PvT5+sCvy+uVm\\/akUyQCzsbHyNGea5ZxbWNBspCtkGA8u9nVDLyzJn4Z9hWS25A1dl8TsQwxYZ\\/51ZMMHHYVwQeBlsaWwMG\\/cNTggo9CdpF6y5CVpphkuW9KriDU8iNd4hykChgDg3MJQQRrjZ8MssCYgERcVW8LcEhFdotDhKqgz32oXGxJd0gzUY5XHjwuzM\\/W8dESfvSfYaYLhgtW87ycoEGQoD1YjIV2N9ZTMTMOIBwLAsKfB7DYlCwOXiWCBVVBKSSyjR4z0N8h4XSO02sWRQz5h1VK1nMLVI7cghCgBb61PA8\\/V1hmIYk5IrAc4931RYpbQ+4RbS9RE9O+PwMqYi7UrxrvocwGTcb6FmoSbgRCRjNV+NQNiZ\\/OTOJOFcRQppqJ4c8MTmOTic21BGBvJ+z3gGBOIlLFzm65NzRAjNK8YmROQzE70e4km0IVNdBcE6oRWcnOEIQnqIICYq9cd1KHEAW1H1OYDjhvZNy3xxHLOMHrBk7WFDrdYV3NxRZM2zsrWN1lX0zlgG5JR6ePdP\\/FsC6QExcNX+yvNDK8gWrnXzsCFTnuGgU0OVl16GoS\\/xz+puK1Q2eypXQW1PhvusCgjaT6VdZJmaCKK4ipG9Xd9jht7Jln0m8goaEZwsQcG8HHJgAlzJCoQsyWlZxTDyomNgAZELgiPtrw69uOaGq7lFBMi3XoexSN9ItOIJSUJ55j2HNX4+EQfP+nqI6wgI4uDISrNabNUEEJKCxtxy94rCGGipHiLq9SIuE3Mfcilj23PsRihzoyw0IoCTK\\/gjRk5w9+NKqYejdDM9tEUJ2NHJxEmN0DVVG8P6ilZS7tFxvawZDhhLXcO90zQ8CN6EwJyYhxjTiu5zS1Iu1xOWTd9ajgrXECKeQYNY+q5WxDika5qHZww0knPTTQ24RP4AUZlkgRwDDGy+rYjY2ST4BJYLIXfa\\/Flk3UpwZ7M6XyGYGFfLSiWR6c\\/bIuWGbmWEaaYq1GEBVic4q2DfrlEM5iUxJQRb5NS9n8Dz2V5qb0OVhFJTUhMfdncSp2EJnv+MgE+WA29CNZK1hzmVMGNG4TZWkH9rqKdciYPkQ64F9x896ydsqK3qUkA2wZxHhgCC62otIsdOtbOq+l0yn\\/ly\\/Qs\\/nyZ2ETjcKYkStINRT8inisDuDpbccgYId2YlwvDWp+j+\\/n5PDzPz8PhcIYKIGNrwlgEEF3EyuVaLfuB74RkMPYrKte0U2iHSYUBa0FF8tDkH3+ni0ru9sIQWEGuChol03To2z\\/nV8+olr3w1dK4T1KDLqWy8FCgZZxu6LZfl22bWEnxjug045tiyY2y8JSeHauJdnhZD0kodRlaqi3LqQjZ4T09Jd+u1HqZmruAdQc3N00FYSdoW2WRsGeYtM4jEevOcG2bfRilPRecxx+7tmSLJofwTelSzMKyvYH18Eaqih\\/DN77NQaeHFR80QqFywlj9KH3isC22ObhixU2MWxA4bwug5qwGvr0ymrBKFoHVZzB1TufWL+zPrbbeCduxPXeKYF6l5wq9DMaY121Ty2Ot4u5NuY8\\/4MKi+GBQoSyZy7UCpmSObAyLTE\\/iWPs0cFqwutMejIyoETcpn1LgJtFZz2L1KPd95nbrzGoX99z2DwY4q6DKfZDs4I6wSdC+o2LhNKZWttoa2qD8vr83wSjXrTjKJUlumWUCXM1kvraAXV9ZbtWEDwcN6Lnb\\/MUeEMLoJmXMoEZoJw4kH0OOlL5V9Bjliqy9Ee4ZOVk+t13At+lrZG4L6qQMs8BcdQvVfzJEYhu8\\/3KOtpoOh6hgQ0I4I8s3xP08rSTCI97Fx6XFSBHPZXnJrkfT9rDcog+bFMxT3lJw6xNYhVIDUwtFYfUnW4A6oTu8a4vrzipPer5tHzDaOMsdCJrY3LQNW1e4po7TRC9NcLfJnWS+YG6yg6o+ZgnfccFeyoq0jZqGRVce55FCuD2ck7RKJ6iMc2JuDKJkJC1lpeXCOkkM6CAFW8xvzP7e6I4tq0k\\/C5QwZR\\/WJbnl36dcEQlN9\\/M31jc\\/wXIDLtL8ORj7I8mbqt0Cl4xykH5ChoqAXE4hIkAErM0wUvCuwcRWbn2b1RisVC4oMCoi1HrF7UDAJAaiEoq\\/9KQj9LA6iG0y2bm06YMFdbEwqCmL+gziAYc9wgQhH7JYTo9EfOFWkIIOpVeQ1VdUDVZwy9gw2EZkg8uTZ77ENJ8vTF6zPAXBqP4qv\\/dXWoLOyHz8QeJNhAEGHcn1d4g4zCvMCPrYNLB5kM1ZLdyYTnBrHyAKqd9r7362+Jsg7K+wRbF6yKRJxXaGp7gFJ6hfm8WG7oIuzjNzsZSgnXgQMYLN1IXTsfRl9RRU\\/b1XuD2AjIMPwJJqNDnFaUnGGxo4XgnSCLXQW+s6F3v1QR6ZpZeMY9mOaVNGv7BRLOoCnKO4mGojDtTDtQDUW8MVYxZXS69xraBpFltq79i5tfyfchHBrseXyHEcphyNipumZ9mWRAgGNunZ\\/eb0JV663yN1+OF79PU14v9Go\\/5Xf8Tfkn\\/07xHX8+79fq\\/f7PV7zWYve2vyt+TvXvLST16aiYAdjEbfSZuiUdE2RA2fR7Ll5DdpntPoWboe+s2E+upHUU9cpMffxsUb56lsu1YhzWjgaGfnOg4ucIXvl4JOy8XyvXi\\/L+\\/tZTvYVt5Z6yfbpMUcQYMetwenPf\\/d3\\/Z79fn+0dnvO+Iff+E\\/4le9yDdxZKcz4T+ThMRf8k18JF+SD7j2NEmusk9IvHCCWxGXEe1mxD+VNMkblK2nH\\/KrFjPLtifr\\/ysdbSpVUTGYf4b+MG5hQfgwOfjP0B\\/GraHVLvYb+P8Q\\/VncOtmMM6hb\\/i\\/TH8Wth9UpXw5Qlv4R+qO4NbCZkMxvF\\/9f0iSLTBP\\/uN4m35A6SoFMA872Ha6LJgrpY58oq7fH65bQ5\\/Z6vT6v6+fzOe6Sn+N1N9u1Et06\\/Ib+JG7ZNpvm3ob5fD5Qv5wq\\/B+nIf8Z8mi3Ff+3Gk5X09UqiztTcWWHw\\/nwvD8P6+fP\\/Wf9M\\/5Zr9fj+3i8Fv8k9ZKfXo\\/\\/Oig1jYTVlfxLSdpVI0nc\\/kossG\\/+upGm3+a7y3\\/a3W673Wg3OFXr1Wo1SsZlLCzzWtldXsAgP7c6iRmyfz2ut9fn+roKOuY0O85ySsYJ\\/5HU2u1S2+rUOnFanPiOu29Ol\\/f8sp0nRpbs+Uou53p22IPxMDYe+FXOgsTon1mUGSEaV8aBiAw1EC8CZRB\\/pB\\/9EgmQIpgi+WJ7uKpn920PtxbJGOTEAxITuicD8b6+r3\\/S8dcbj90jTxr+0lrv55SNty+JMgjafLc33Xa30RUjrd7NoABMifsnqPpThOTauXXZRNmykY4GMQD\\/w5FXNNjUSMu8+78S2PjXkOZj\\/zVuFbvv\\/w9Iqylrs4v\\/enr+mnGicQuTxX8H5QUOAsMN\\/iZinvznQm5dfn9\\/5YHSJ5u\\/+O8m5s5tCuBWaHjif\\/F+sygnzPH8ByjuuncYDeHW+Xf3WFZX3+4v\\/qsp3hTtZFPArfdv5lacBTS0vv+1qWUtCfxL3Cr93huO80BpbwjV30jMU4Q5lFuhiVn\\/HcoXWaxN+9cTa\\/xn7lXCrcFv5VYWPNcqDqv\\/y8hf9DCQW7vfuNbnBWVvQcGnfxP1i6ObArj1+o2iMN+\\/dVqXcJUAaRUe+ys4l3lwTWb06kcw+nWN8a+Tl\\/RzJuHdDO7lf9ciiaFl+BuPR4sj\\/i0H56ocnqvGHKaLk7eI\\/80frMo7sRpXeWIxf4nqLHmrR9VqPXmvVqvjX\\/CReLhVOpfDcWUvaQCjBWVMPsoLTt948Favd38eDufzdLpaiWoCfwQNshftE\\/mh+CN5mfO3Qf6ivfGX+WA+GKgX6fCZzwuDPAO5tez1m6O+Sc2+CoeTMXBNHXYXH\\/UzJL4nA+QKaJ1BzxPupLvdeFDXf\\/wU\\/wr9L6gzd4EMtZiaAAAAAElFTkSuQmCC\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(14758, '2022-02-08 07:12:05', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/images.unsplash.com\\/photo-1585241645927-c7a8e5840c42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(14759, '2022-02-08 07:12:06', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(14760, '2022-02-08 07:12:06', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(14761, '2022-02-08 07:12:06', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(14762, '2022-02-08 07:12:06', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"GZB\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(14763, '2022-02-08 07:12:06', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #000 !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(14764, '2022-02-08 07:12:06', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(14765, '2022-02-08 07:12:06', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(14766, '2022-02-08 07:12:06', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(14767, '2022-02-08 07:12:06', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(14768, '2022-02-08 07:12:06', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(14769, '2022-02-08 07:12:06', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14770, '2022-02-08 07:12:06', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14771, '2022-02-08 07:12:06', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14772, '2022-02-08 07:14:11', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(14773, '2022-02-08 07:14:11', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAa0AAAB1CAMAAADKkk7zAAAAllBMVEXw7FEAAADz71L08FL381Nxbybt6VD381Ts6FDp5U+9ukA7OhTi3kwLCwTf20u6tz\\/AvUFraSR3dSjJxkSyrzwJCQOCgCwvLhBmZCNQTxvMyUVEQxd9eyquqzvb10phYCE1NBIREQabmDQsKw9KSRmMii9bWR\\/V0UgnJg0bGgmmozgVFQedmjWnpDgfHgpWVB0iIgz\\/\\/Vf6DV7rAAAfLElEQVR4nOVdh5bbsI6VKffey7jXcRvb+\\/8\\/tyIpSsRlEfPO22xOgszYE1uiJIIEgYvCqFRMx+XyvVgul4v3cnlabJeny3u7uGzfl8t2y3+388WNnrGYO+hIj2u5jktpMB8s6Rkf7csB\\/\\/XQLj3nXRlW0p\\/KMHlpqbvMPhpyWrVKLlqspqvpNPk987fz6ug8kpylWp4OV6vVdMjbSBoSLenH7be80eRH\\/CavZ0mH80HRU14xKr7o5avRqDc4VZM\\/6lGjEVWjRjWKojpLXiIWlZs7csa2HTPGYhYjVc+06bV5CFB5fCVnzMvZV\\/m5ybX4BZl4UW9xd5F2Rr+sfxM35vLzTq\\/G1Jni87erBx5rxvSmq26+arTr15iDal\\/6ga1N7DowO+Eujizm1uVL8MRH8fqln\\/Fux44DWf+jH7jcFDYdqb5Nqedq2rzWKD1l8U2uwlRPneiDZcdbugBa+C7sNE6ruvPeymRuzYufiXXF5Crk1mlU3DF0yvjY2x7qR04bxW3XDh3tjFvAGYrUTZ1przH1+bBh\\/9ykKdyS+0iNrp6BVV7oRz5rxQ8ju7iIW60AZrFvXYZcvnyH\\/uh9\\/1PcdsQ2upR9B0+tKEpv6ramg4ed0s9\\/aFtlWCFz2t9pd5Z3riN1mlfdz9TVRUynWyxhkpnPVYMCbn2KxWAiCPuP\\/IyT9wz2fckPvfZD+p5IjXXA7aRXaqenoCDc2G+UkaWEEB65cR6pk+fh2GavHbgohzzOhnecn1vX74BJGlUP+Rmtvv+MWJMiw3ZA47QbQwaPpJq6qSEd47Vp+vmACkKPeBvS7ixPnUdq1PLcabyeaEfew+QF1zO83GoFDX7W3mZn7PoFA4V9ZQJn8gzr+nI+Hbfhy5ZaGj5r+gws\\/fwB4q1GlhKd9tCdzCkydRp7uq6mr96PdlA3sK+Fn1vLZlC\\/aMrUrmBmJRRX1MGzQP0uHmft34NOENRINf\\/WBgReKrV3KCCppaDRrg0tzAKYNXMrhMlIqmhHXtzrG6H61MutVi+wY57ZcwX0f7xWesYlSBDyuavO2PeDBWG8Vlehn5eVwHvD8WddOBG6UHHBzh3XkRrdfXfa1udx6AhkvZmHW7OwmZUsW0pSXXshyk07HZr7Q8iaKC6gFor3dzC3ykrYHOgAqiupDRphNZfmSCBKG+4jczr6LEk20pTKWfAzJbfo5FbHJ3jJtZXydQ07Qy3nt9AL5HrGIfAEflOpnr4Ho2qjFh0Qb98nZ8\\/Tjo\\/7IUDG0yfe4rsG1M3Dlq2I600TJ7fGIXqlaCTt\\/Vkv7AylAC8C2+fmicQzHsH8zdGVJT0l66glXOKwd3VEC3SMp\\/NI7RzvhCnr6uchcNlKqLFzcOv1DGVWVB6IMz6BzErYK9fYc\\/AVomgteugXBGGshCfgBA0lIEEjbFdKLgKN0HNkTgUgjWYC3ILUbknloZ1bt1+QOV0xWm\\/r4M5nTXGNcNMpEYVCTk2j9BTG\\/+AvHPBMXiw3pdDFLrM0ZPncqb+XQHccBQjCnXcBl4ZuSgBBRkyi1UyC1fTEeGzl1u0AlmNcSyjmb0kj4i\\/+LkHyp2QWyItaTjh4WJ+f8cFPo1jxwHy+EV9tHoeoHbUb7Xajm\\/y2u+1uvZu8tDddQ7lkyikA4jYep4LwBIP\\/Z+\\/q+QVtnI0DNMKBd2rJp0npDF9uev2Emvy32QcMr3a2cmtVJV1WPnMnlotEv8DUr9+1My5r6DIhjUAQxuvL9sK9ZfzlfQbdYMyNpMlucbqcFif+I4n72\\/i\\/sdEjB3tnNJQMmlbtn5t0d7TgITTIgXSs9IWjvHKd7WYpHVd05JYvNm4Zyt3NchChBzWEWFcXFx9orrrnn47ondDlYEpty4IuGqIlmgnCPZrACn7+CtYIR3Ck04jOCUw51oX\\/P\\/NDL4DoVvV2QGtmbauWAWZr3Cu8vwEsA039S4BVY\\/El2PqM6sVf9Db9XXQylA\\/2lbY2BzGm7gvUZimbrTSH7izuC0MvaYxh7Gkw9RRU1rXezpIKgHj8sHFr9csoJrqQiAdxWrM0h\\/Phrp+B\\/e\\/too6p3zCFVR0ccxQkbd2N6D5py9UAQbikF437dCXQ\\/UsoCGtEwgyAD0ObdQxmDRVrVkIdI9LdN58xHcdtsdABUEK9lNiZXqV5GBmkRu+eYmesmwq8Vw9uyfmE1ybMkwBBCEZD9UBdhDqScQLTuEE8Z2sQhBcbt5a0r+LxxzyGEsq6sf4lwKdx72F+yL51XHs\\/hmfwrZt705fHumlrW0B0Ffx8QaTX2fobb76oK0qlI2hIX29AobTeGVLGsvFea+iBqtbRxi2cgMV+7SnoLkQQXmCyi3FfgQWFLBzoP3SvKiUD7xMnKK6AssLUBF7BeHSLN4itqAUIwjMYUM8BGBgat1AQkq5eIppsxeCpdZ3rUU664bJKJiNqhNw07ODsIbLuTFdXGnICNLSZNilXDB9\\/KvAMDXvvah2141pRVyQzAtXNBSx9upIB902jrp7Ah7mVW20Qa4WieokCRzcg9yhXefAO+s5JnMIL4XGPJF5YwKgsJAlEUPY5qM2eEKZF95cFIc7n8cdt3UCUSdwjnjPoo+bMxq0KqFgH4wikFUhfMhcM7xD\\/cOizEU7ha8UVDG9BmQcH1GOX798jCAe06wO0Y+BN1BjOcGTm3IKZGxNBuKDDXIRTmNxqQuODwjuEi7aJqYkaIV\\/TcPbUyEK3si10VppMG+bUqiljAAV0NdU9HuDyajg1QkPXdaOJ2c2DajBCi00PWwQp3iCKMRWg0uA3uAV+NNYvFIQfkHVNfT4fbV8uEdElohNXQTfOYIsezSxjQ0B\\/p6olDvYvp8o5g0Wh93IdmfUFwkArBL9YbgCDjx8QAhCg31y5N7i1skxAP0FIEFVs3uC+Ec0N0H70ddHarb9b8DjWzmRBBcJkFOAzgDhCt857oYMhIOoT9D\\/WLc0Qj88BeIA3awTIONkUY4NbwNL2rwpCGgqKzUm5Cogu1fhhFfQozbjCCnpm8RVrizLKiVqvrOsWbxBm0rg4j0zp9QM3fy61MJYkkzw30JAoGkq9lHIFMbi1RHfOXvuy01oQEjIKXB9UEGLEkYgTnQGiSy14YP7G2Zk7i9dVcz91MMw9vQqExsaQcaETKAGeI1M6weO2X2iJR\\/VMw8VwysZdJZdwInfP6nLSILcA9KEa4anfJiQWzFXkOQMkQ1VII8So1w\\/9FPplvHbp73uby08bn1twySgfPyipNbeoxyDaYkEIoFOctA1eDw03MfTZWHMK1giz1GMBtzB2hoYCDcHvJR4UMLcNOQOiSWTCCMC8JBay9A7toqklYo\\/JkADZGaCpKpH+BPE2tLZu9n3AonAF9a97Ku1BAY0z+BoljI\\/UiAJuodlKDMcbPiiXeS+UdbretLQm3aDTicg6gDKdBoTpJ+G3q0lhFOkKicT7dWPWGOxUKAgBdKqtX6UZxF3kgceVkGQFeY9rpZcDt8BRRcXErAn6hLioGwUrlebQNUIQnkBcjEmmIawqfUdg7N6Wv6CrK+AcYj+puB3QU6giRvvC59SxEvQ\\/9x1AoEBUzgbHOTTYieVoEuXWHgQvzZLZwtARwhRWjzbR72AyxqK5FaIbepQshDRUnyU72eRgrB8MSGSWYgae+7bb9gatrDt3HpkSmPUCs5uDYG+rnjc0eydpWA7lFkouIggnGNXFVcIWnqFrDDsAiGWcKApCstBRG4R1HYGxVnxwowm1D7pkVNYWmsZO8fZBH39RssIetT8+ms8gSLKunwcmYLCe1qOUW1tflswN7TUuwdD1QQQLJt2IsQ\\/4F+vpSt8Rs07t+dj7sSUqu67bK+imUL0EOG3kFoSVduiR9qcVxgSYEdrSMg2dWnr3EG7tQXJFxBzcwnp5ePAEQ6elnkzGM5wh7GZAYihYAszHrPLsUW2PRdY\\/UI8zXz6Exno0QjyySBDeAJqo8wdDmzBbWY9NE4exEtOBN8KtDygFG4\\/jWa5QYKnTtEHQUVlXyGw8Q+dvBzrZkWZ\\/tIC5tKEdXLqdirEbYNbu+JxjExbkIg86orffXC4vEW5RN3kK1TFifTQTbi3oDcY05NsWvV8BxO9HPwFQy\\/jA1QkES750jf+InlB7x3xZxiXFbdCXr5DIcLf0ACEP55GSOihlhAqJGlUGOU9DE2zSWGhJhFuIfvsEIeM8v2GCIZkLAAfWpSCk\\/KWCcBiUXWoL9GfUC\\/ZjuVlxKoxHt18cBHa5KJQIc0XqQi6DMhT3Umk9CY8r11cDwi1we357HFUySqmFehPBkGCiiBzWCSKlxDSGzrQnz29tfpI2EWktRCJTMXbEdEB3QiQGO7kOTAkTY6XyNwPFL3PE78JTNpiWg69zC7JnaO7LC2UIN1sh8ZAa0y24qki68YIlkOfMurZ+MUBtcWWK1AcKQo94u6Bfznlk2jLomlKjwqynLK9y9Qvc0sKYdW6dHdkzsn2M8xdngFj2uT5kpAwIwpgABFuIMLIKwqlFDsZ9mofqKkeCSqob+QMFmxVhhNByCt5iToKK7zETbPQyQXhSbvTr3ELDkQhC0NYEw9EC+yLCfWRp7oElRYj1C8OlZvMn4SAWbYOPCtVjBcmgZ9ft44f7ZN0CjBAyyVXQLYiBrEtfiMRojo1uF77UlnaNW1jegJiDO8RnuaYC+mlMivwYQaRc\\/CIWS5aDK66CFoxwb8tOY+CxXKIynUr+Fup5D\\/MC6ePCkeOCxI0h6n47y33kQU3o\\/f96v67Xz\\/XKXz4P7IZ81mjcAiFFsz4An5WCEPO8CeZ2oN9JDRsEDF3owJ8U\\/1g605ZRaUQTu2IPwNlcdkdsY+8XJUSi4iN7ApImIqbya6FaAuvp2g66NK044RXr4xAxgRUFhuY9go8f1QkujYzaSmQ5AEFYt6AHNqPS9KogTqDuC+Zl262\\/98DbUIARAp6rpgO6dpUyDh51gJYxF04THDm3vFk9hrbGJQMY04y4eXGEiOZ2CJYQDRqDSM0uutn0wTp6f2cWwE6cjbLZHc6FWKa\\/oMkEDAZ234vPwehh3XSKTjFUXn\\/SFwLb2pKZcwuyZ2juC4CkMs8I5hvNq0GYTTQ3AEH41Be6I8ivtRkPZvMJQc3DkrscyQkkrdtzX8EF2XmkIKydlzpXMBI008JAY2NEowXrg2jNGbeumCWjD7wHwL0CnDScErpg2WMQqWgOQ8po+DvtIgvgarOLLfGGIAjrqiHQ8zbuECZwYG8KCpoApKicHFiDgI1kn6LtToc5eO7I4ppxa4DVjPQWsP0qv+wCzujpE8WedIMSgIY70i4yBaEVtzajnT8AyShBCOWvPGVKrvBkTX8dXfSttO0CL9MXUBC2dfMAUyrivfZlxi1QKmmW3tYG3mL+NBWEcKOiOSgUQlFjSLOnuUycJrZSQ7EJ\\/G7h0sq4tAaiWgkNcL+PH4uuZAMdggvVHOrccSrqrV0w+FX\\/UnELC2pVde0ZvcZClbthYKc+Fww7VHwKzdQ94Y4WFzxG5omrWiIyXRk4kFDqEYSQUlkgCI2iK+kFjWT7NAoC623G5Ekh4K9Grq24dTGi7TVCjFB4i9Cf09cFIdxRGjuNtZV8Ub3fiB7Yq7ac99h5GMivtG90S4\\/cri1fBKxBe4Ci2SbVGYxlayM1S\\/AyZXWyBF1R+SbdoLgFOBdN7DjRHop\\/uLYGsi4iSgEkgcuEuQXIU2ITYqSFkQd0tmgYtvgyMEmrd\\/vnNDiLtgAQhF8QLtEroiQGJsKnniqsHUcznpYYHEGKqaTcwsQOmjeNAAJnjJFNoZskaAVHYnxb0Y3sGvBsuKrsbMGetmhDVzkSKLnsKVyHLfjD3zHAoqHWkDMus3IJmoFeTxEVgMKr9AFTbu3AcCShLQZmwTFUzMAmqz0Y67FQFxEDJgvHA3NbURDa3He2BBgMVeqmowjDubrO7B502rlzyDndYDXNwDSzIo1UMlCb2pCu9oMoKbcQ\\/SaCcAG5jz98RmOeCJkoFXgC0RwmkBKw5FKQEAmqQ9qPlh6HXICsrxGqcYcwwTik0QsGYaJLZv6ZyWXW2nHxXTeNZ2DYH6gnKOUWWDI0hhOWUSFbUOGJiUkCCmZbzCKIiacaITrWwYrCpUTeiC0MCUsrq4bQx+8UbxNEAvyCEKfWj0LrtwbuIrsIdQ9aMolyC0PvJbdeEO9CcLEHYhb89rG0GPHxPzBTmqsTGKVPEl4xt7VOPRStPj55QmXb6o9ltlkqUbHksttz\\/2s+fpA7WnUCjJNJPeEtiPgu9glqJLk19eFib6xtwft+GHvOQNeHENio8ZPlYGnV+BXtrfjgty1mDJMTVSTBFisVOPsfq1z5oz4hPjof5xPUwtKG0N3+1If5CbRmRAgkt2Bto6oWSjDOmA4aP8R0woQ5IbGwpAhZGiu0NcgufVviB6OqTQ4aAaeqIcjvLzudJUYL3qhPTErIIT+jRk6qfiBcT7oB1oM2QqWCW6gRNvVRi15jUSzpBkOVIGk3ek3pLDQWOl0CPDA2joiHqw3Mja31bQ1FLBWEWE676kT+rmile50lEJ8ro83lnWCcuwz02SFUqsu6CXqN0ZoU3MIKyySxo4ISjKspAxSEetchICeaQ42QgCUzVMOI19jmL3bkXeFyqjYMgeB7qogRwgCF+951ZMkEwzQ0fY7WViymAGIKpKsBWTcNeM6tCZYaoxqhDQzF5BGaEAk9JgUh2IREAgAQS+uNnGx2sSEkJGHeqOo9iAgLTz2PvT5+sCvy+uVm\\/akUyQCzsbHyNGea5ZxbWNBspCtkGA8u9nVDLyzJn4Z9hWS25A1dl8TsQwxYZ\\/51ZMMHHYVwQeBlsaWwMG\\/cNTggo9CdpF6y5CVpphkuW9KriDU8iNd4hykChgDg3MJQQRrjZ8MssCYgERcVW8LcEhFdotDhKqgz32oXGxJd0gzUY5XHjwuzM\\/W8dESfvSfYaYLhgtW87ycoEGQoD1YjIV2N9ZTMTMOIBwLAsKfB7DYlCwOXiWCBVVBKSSyjR4z0N8h4XSO02sWRQz5h1VK1nMLVI7cghCgBb61PA8\\/V1hmIYk5IrAc4931RYpbQ+4RbS9RE9O+PwMqYi7UrxrvocwGTcb6FmoSbgRCRjNV+NQNiZ\\/OTOJOFcRQppqJ4c8MTmOTic21BGBvJ+z3gGBOIlLFzm65NzRAjNK8YmROQzE70e4km0IVNdBcE6oRWcnOEIQnqIICYq9cd1KHEAW1H1OYDjhvZNy3xxHLOMHrBk7WFDrdYV3NxRZM2zsrWN1lX0zlgG5JR6ePdP\\/FsC6QExcNX+yvNDK8gWrnXzsCFTnuGgU0OVl16GoS\\/xz+puK1Q2eypXQW1PhvusCgjaT6VdZJmaCKK4ipG9Xd9jht7Jln0m8goaEZwsQcG8HHJgAlzJCoQsyWlZxTDyomNgAZELgiPtrw69uOaGq7lFBMi3XoexSN9ItOIJSUJ55j2HNX4+EQfP+nqI6wgI4uDISrNabNUEEJKCxtxy94rCGGipHiLq9SIuE3Mfcilj23PsRihzoyw0IoCTK\\/gjRk5w9+NKqYejdDM9tEUJ2NHJxEmN0DVVG8P6ilZS7tFxvawZDhhLXcO90zQ8CN6EwJyYhxjTiu5zS1Iu1xOWTd9ajgrXECKeQYNY+q5WxDika5qHZww0knPTTQ24RP4AUZlkgRwDDGy+rYjY2ST4BJYLIXfa\\/Flk3UpwZ7M6XyGYGFfLSiWR6c\\/bIuWGbmWEaaYq1GEBVic4q2DfrlEM5iUxJQRb5NS9n8Dz2V5qb0OVhFJTUhMfdncSp2EJnv+MgE+WA29CNZK1hzmVMGNG4TZWkH9rqKdciYPkQ64F9x896ydsqK3qUkA2wZxHhgCC62otIsdOtbOq+l0yn\\/ly\\/Qs\\/nyZ2ETjcKYkStINRT8inisDuDpbccgYId2YlwvDWp+j+\\/n5PDzPz8PhcIYKIGNrwlgEEF3EyuVaLfuB74RkMPYrKte0U2iHSYUBa0FF8tDkH3+ni0ru9sIQWEGuChol03To2z\\/nV8+olr3w1dK4T1KDLqWy8FCgZZxu6LZfl22bWEnxjug045tiyY2y8JSeHauJdnhZD0kodRlaqi3LqQjZ4T09Jd+u1HqZmruAdQc3N00FYSdoW2WRsGeYtM4jEevOcG2bfRilPRecxx+7tmSLJofwTelSzMKyvYH18Eaqih\\/DN77NQaeHFR80QqFywlj9KH3isC22ObhixU2MWxA4bwug5qwGvr0ymrBKFoHVZzB1TufWL+zPrbbeCduxPXeKYF6l5wq9DMaY121Ty2Ot4u5NuY8\\/4MKi+GBQoSyZy7UCpmSObAyLTE\\/iWPs0cFqwutMejIyoETcpn1LgJtFZz2L1KPd95nbrzGoX99z2DwY4q6DKfZDs4I6wSdC+o2LhNKZWttoa2qD8vr83wSjXrTjKJUlumWUCXM1kvraAXV9ZbtWEDwcN6Lnb\\/MUeEMLoJmXMoEZoJw4kH0OOlL5V9Bjliqy9Ee4ZOVk+t13At+lrZG4L6qQMs8BcdQvVfzJEYhu8\\/3KOtpoOh6hgQ0I4I8s3xP08rSTCI97Fx6XFSBHPZXnJrkfT9rDcog+bFMxT3lJw6xNYhVIDUwtFYfUnW4A6oTu8a4vrzipPer5tHzDaOMsdCJrY3LQNW1e4po7TRC9NcLfJnWS+YG6yg6o+ZgnfccFeyoq0jZqGRVce55FCuD2ck7RKJ6iMc2JuDKJkJC1lpeXCOkkM6CAFW8xvzP7e6I4tq0k\\/C5QwZR\\/WJbnl36dcEQlN9\\/M31jc\\/wXIDLtL8ORj7I8mbqt0Cl4xykH5ChoqAXE4hIkAErM0wUvCuwcRWbn2b1RisVC4oMCoi1HrF7UDAJAaiEoq\\/9KQj9LA6iG0y2bm06YMFdbEwqCmL+gziAYc9wgQhH7JYTo9EfOFWkIIOpVeQ1VdUDVZwy9gw2EZkg8uTZ77ENJ8vTF6zPAXBqP4qv\\/dXWoLOyHz8QeJNhAEGHcn1d4g4zCvMCPrYNLB5kM1ZLdyYTnBrHyAKqd9r7362+Jsg7K+wRbF6yKRJxXaGp7gFJ6hfm8WG7oIuzjNzsZSgnXgQMYLN1IXTsfRl9RRU\\/b1XuD2AjIMPwJJqNDnFaUnGGxo4XgnSCLXQW+s6F3v1QR6ZpZeMY9mOaVNGv7BRLOoCnKO4mGojDtTDtQDUW8MVYxZXS69xraBpFltq79i5tfyfchHBrseXyHEcphyNipumZ9mWRAgGNunZ\\/eb0JV663yN1+OF79PU14v9Go\\/5Xf8Tfkn\\/07xHX8+79fq\\/f7PV7zWYve2vyt+TvXvLST16aiYAdjEbfSZuiUdE2RA2fR7Ll5DdpntPoWboe+s2E+upHUU9cpMffxsUb56lsu1YhzWjgaGfnOg4ucIXvl4JOy8XyvXi\\/L+\\/tZTvYVt5Z6yfbpMUcQYMetwenPf\\/d3\\/Z79fn+0dnvO+Iff+E\\/4le9yDdxZKcz4T+ThMRf8k18JF+SD7j2NEmusk9IvHCCWxGXEe1mxD+VNMkblK2nH\\/KrFjPLtifr\\/ysdbSpVUTGYf4b+MG5hQfgwOfjP0B\\/GraHVLvYb+P8Q\\/VncOtmMM6hb\\/i\\/TH8Wth9UpXw5Qlv4R+qO4NbCZkMxvF\\/9f0iSLTBP\\/uN4m35A6SoFMA872Ha6LJgrpY58oq7fH65bQ5\\/Z6vT6v6+fzOe6Sn+N1N9u1Et06\\/Ib+JG7ZNpvm3ob5fD5Qv5wq\\/B+nIf8Z8mi3Ff+3Gk5X09UqiztTcWWHw\\/nwvD8P6+fP\\/Wf9M\\/5Zr9fj+3i8Fv8k9ZKfXo\\/\\/Oig1jYTVlfxLSdpVI0nc\\/kossG\\/+upGm3+a7y3\\/a3W673Wg3OFXr1Wo1SsZlLCzzWtldXsAgP7c6iRmyfz2ut9fn+roKOuY0O85ySsYJ\\/5HU2u1S2+rUOnFanPiOu29Ol\\/f8sp0nRpbs+Uou53p22IPxMDYe+FXOgsTon1mUGSEaV8aBiAw1EC8CZRB\\/pB\\/9EgmQIpgi+WJ7uKpn920PtxbJGOTEAxITuicD8b6+r3\\/S8dcbj90jTxr+0lrv55SNty+JMgjafLc33Xa30RUjrd7NoABMifsnqPpThOTauXXZRNmykY4GMQD\\/w5FXNNjUSMu8+78S2PjXkOZj\\/zVuFbvv\\/w9Iqylrs4v\\/enr+mnGicQuTxX8H5QUOAsMN\\/iZinvznQm5dfn9\\/5YHSJ5u\\/+O8m5s5tCuBWaHjif\\/F+sygnzPH8ByjuuncYDeHW+Xf3WFZX3+4v\\/qsp3hTtZFPArfdv5lacBTS0vv+1qWUtCfxL3Cr93huO80BpbwjV30jMU4Q5lFuhiVn\\/HcoXWaxN+9cTa\\/xn7lXCrcFv5VYWPNcqDqv\\/y8hf9DCQW7vfuNbnBWVvQcGnfxP1i6ObArj1+o2iMN+\\/dVqXcJUAaRUe+ys4l3lwTWb06kcw+nWN8a+Tl\\/RzJuHdDO7lf9ciiaFl+BuPR4sj\\/i0H56ocnqvGHKaLk7eI\\/80frMo7sRpXeWIxf4nqLHmrR9VqPXmvVqvjX\\/CReLhVOpfDcWUvaQCjBWVMPsoLTt948Favd38eDufzdLpaiWoCfwQNshftE\\/mh+CN5mfO3Qf6ivfGX+WA+GKgX6fCZzwuDPAO5tez1m6O+Sc2+CoeTMXBNHXYXH\\/UzJL4nA+QKaJ1BzxPupLvdeFDXf\\/wU\\/wr9L6gzd4EMtZiaAAAAAElFTkSuQmCC\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(14774, '2022-02-08 07:14:11', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/images.unsplash.com\\/photo-1585241645927-c7a8e5840c42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(14775, '2022-02-08 07:14:12', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(14776, '2022-02-08 07:14:12', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(14777, '2022-02-08 07:14:12', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(14778, '2022-02-08 07:14:12', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"GZB\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(14779, '2022-02-08 07:14:12', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #000 !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(14780, '2022-02-08 07:14:12', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(14781, '2022-02-08 07:14:12', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Godzillab App\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(14782, '2022-02-08 07:14:12', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(14783, '2022-02-08 07:14:12', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(14784, '2022-02-08 07:14:12', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(14785, '2022-02-08 07:14:12', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14786, '2022-02-08 07:14:12', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14787, '2022-02-08 07:14:12', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14788, '2022-02-08 07:17:29', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(14789, '2022-02-08 07:17:29', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAa0AAAB1CAMAAADKkk7zAAAAllBMVEXw7FEAAADz71L08FL381Nxbybt6VD381Ts6FDp5U+9ukA7OhTi3kwLCwTf20u6tz\\/AvUFraSR3dSjJxkSyrzwJCQOCgCwvLhBmZCNQTxvMyUVEQxd9eyquqzvb10phYCE1NBIREQabmDQsKw9KSRmMii9bWR\\/V0UgnJg0bGgmmozgVFQedmjWnpDgfHgpWVB0iIgz\\/\\/Vf6DV7rAAAfLElEQVR4nOVdh5bbsI6VKffey7jXcRvb+\\/8\\/tyIpSsRlEfPO22xOgszYE1uiJIIEgYvCqFRMx+XyvVgul4v3cnlabJeny3u7uGzfl8t2y3+388WNnrGYO+hIj2u5jktpMB8s6Rkf7csB\\/\\/XQLj3nXRlW0p\\/KMHlpqbvMPhpyWrVKLlqspqvpNPk987fz6ug8kpylWp4OV6vVdMjbSBoSLenH7be80eRH\\/CavZ0mH80HRU14xKr7o5avRqDc4VZM\\/6lGjEVWjRjWKojpLXiIWlZs7csa2HTPGYhYjVc+06bV5CFB5fCVnzMvZV\\/m5ybX4BZl4UW9xd5F2Rr+sfxM35vLzTq\\/G1Jni87erBx5rxvSmq26+arTr15iDal\\/6ga1N7DowO+Eujizm1uVL8MRH8fqln\\/Fux44DWf+jH7jcFDYdqb5Nqedq2rzWKD1l8U2uwlRPneiDZcdbugBa+C7sNE6ruvPeymRuzYufiXXF5Crk1mlU3DF0yvjY2x7qR04bxW3XDh3tjFvAGYrUTZ1przH1+bBh\\/9ykKdyS+0iNrp6BVV7oRz5rxQ8ju7iIW60AZrFvXYZcvnyH\\/uh9\\/1PcdsQ2upR9B0+tKEpv6ramg4ed0s9\\/aFtlWCFz2t9pd5Z3riN1mlfdz9TVRUynWyxhkpnPVYMCbn2KxWAiCPuP\\/IyT9wz2fckPvfZD+p5IjXXA7aRXaqenoCDc2G+UkaWEEB65cR6pk+fh2GavHbgohzzOhnecn1vX74BJGlUP+Rmtvv+MWJMiw3ZA47QbQwaPpJq6qSEd47Vp+vmACkKPeBvS7ixPnUdq1PLcabyeaEfew+QF1zO83GoFDX7W3mZn7PoFA4V9ZQJn8gzr+nI+Hbfhy5ZaGj5r+gws\\/fwB4q1GlhKd9tCdzCkydRp7uq6mr96PdlA3sK+Fn1vLZlC\\/aMrUrmBmJRRX1MGzQP0uHmft34NOENRINf\\/WBgReKrV3KCCppaDRrg0tzAKYNXMrhMlIqmhHXtzrG6H61MutVi+wY57ZcwX0f7xWesYlSBDyuavO2PeDBWG8Vlehn5eVwHvD8WddOBG6UHHBzh3XkRrdfXfa1udx6AhkvZmHW7OwmZUsW0pSXXshyk07HZr7Q8iaKC6gFor3dzC3ykrYHOgAqiupDRphNZfmSCBKG+4jczr6LEk20pTKWfAzJbfo5FbHJ3jJtZXydQ07Qy3nt9AL5HrGIfAEflOpnr4Ho2qjFh0Qb98nZ8\\/Tjo\\/7IUDG0yfe4rsG1M3Dlq2I600TJ7fGIXqlaCTt\\/Vkv7AylAC8C2+fmicQzHsH8zdGVJT0l66glXOKwd3VEC3SMp\\/NI7RzvhCnr6uchcNlKqLFzcOv1DGVWVB6IMz6BzErYK9fYc\\/AVomgteugXBGGshCfgBA0lIEEjbFdKLgKN0HNkTgUgjWYC3ILUbknloZ1bt1+QOV0xWm\\/r4M5nTXGNcNMpEYVCTk2j9BTG\\/+AvHPBMXiw3pdDFLrM0ZPncqb+XQHccBQjCnXcBl4ZuSgBBRkyi1UyC1fTEeGzl1u0AlmNcSyjmb0kj4i\\/+LkHyp2QWyItaTjh4WJ+f8cFPo1jxwHy+EV9tHoeoHbUb7Xajm\\/y2u+1uvZu8tDddQ7lkyikA4jYep4LwBIP\\/Z+\\/q+QVtnI0DNMKBd2rJp0npDF9uev2Emvy32QcMr3a2cmtVJV1WPnMnlotEv8DUr9+1My5r6DIhjUAQxuvL9sK9ZfzlfQbdYMyNpMlucbqcFif+I4n72\\/i\\/sdEjB3tnNJQMmlbtn5t0d7TgITTIgXSs9IWjvHKd7WYpHVd05JYvNm4Zyt3NchChBzWEWFcXFx9orrrnn47ondDlYEpty4IuGqIlmgnCPZrACn7+CtYIR3Ck04jOCUw51oX\\/P\\/NDL4DoVvV2QGtmbauWAWZr3Cu8vwEsA039S4BVY\\/El2PqM6sVf9Db9XXQylA\\/2lbY2BzGm7gvUZimbrTSH7izuC0MvaYxh7Gkw9RRU1rXezpIKgHj8sHFr9csoJrqQiAdxWrM0h\\/Phrp+B\\/e\\/too6p3zCFVR0ccxQkbd2N6D5py9UAQbikF437dCXQ\\/UsoCGtEwgyAD0ObdQxmDRVrVkIdI9LdN58xHcdtsdABUEK9lNiZXqV5GBmkRu+eYmesmwq8Vw9uyfmE1ybMkwBBCEZD9UBdhDqScQLTuEE8Z2sQhBcbt5a0r+LxxzyGEsq6sf4lwKdx72F+yL51XHs\\/hmfwrZt705fHumlrW0B0Ffx8QaTX2fobb76oK0qlI2hIX29AobTeGVLGsvFea+iBqtbRxi2cgMV+7SnoLkQQXmCyi3FfgQWFLBzoP3SvKiUD7xMnKK6AssLUBF7BeHSLN4itqAUIwjMYUM8BGBgat1AQkq5eIppsxeCpdZ3rUU664bJKJiNqhNw07ODsIbLuTFdXGnICNLSZNilXDB9\\/KvAMDXvvah2141pRVyQzAtXNBSx9upIB902jrp7Ah7mVW20Qa4WieokCRzcg9yhXefAO+s5JnMIL4XGPJF5YwKgsJAlEUPY5qM2eEKZF95cFIc7n8cdt3UCUSdwjnjPoo+bMxq0KqFgH4wikFUhfMhcM7xD\\/cOizEU7ha8UVDG9BmQcH1GOX798jCAe06wO0Y+BN1BjOcGTm3IKZGxNBuKDDXIRTmNxqQuODwjuEi7aJqYkaIV\\/TcPbUyEK3si10VppMG+bUqiljAAV0NdU9HuDyajg1QkPXdaOJ2c2DajBCi00PWwQp3iCKMRWg0uA3uAV+NNYvFIQfkHVNfT4fbV8uEdElohNXQTfOYIsezSxjQ0B\\/p6olDvYvp8o5g0Wh93IdmfUFwkArBL9YbgCDjx8QAhCg31y5N7i1skxAP0FIEFVs3uC+Ec0N0H70ddHarb9b8DjWzmRBBcJkFOAzgDhCt857oYMhIOoT9D\\/WLc0Qj88BeIA3awTIONkUY4NbwNL2rwpCGgqKzUm5Cogu1fhhFfQozbjCCnpm8RVrizLKiVqvrOsWbxBm0rg4j0zp9QM3fy61MJYkkzw30JAoGkq9lHIFMbi1RHfOXvuy01oQEjIKXB9UEGLEkYgTnQGiSy14YP7G2Zk7i9dVcz91MMw9vQqExsaQcaETKAGeI1M6weO2X2iJR\\/VMw8VwysZdJZdwInfP6nLSILcA9KEa4anfJiQWzFXkOQMkQ1VII8So1w\\/9FPplvHbp73uby08bn1twySgfPyipNbeoxyDaYkEIoFOctA1eDw03MfTZWHMK1giz1GMBtzB2hoYCDcHvJR4UMLcNOQOiSWTCCMC8JBay9A7toqklYo\\/JkADZGaCpKpH+BPE2tLZu9n3AonAF9a97Ku1BAY0z+BoljI\\/UiAJuodlKDMcbPiiXeS+UdbretLQm3aDTicg6gDKdBoTpJ+G3q0lhFOkKicT7dWPWGOxUKAgBdKqtX6UZxF3kgceVkGQFeY9rpZcDt8BRRcXErAn6hLioGwUrlebQNUIQnkBcjEmmIawqfUdg7N6Wv6CrK+AcYj+puB3QU6giRvvC59SxEvQ\\/9x1AoEBUzgbHOTTYieVoEuXWHgQvzZLZwtARwhRWjzbR72AyxqK5FaIbepQshDRUnyU72eRgrB8MSGSWYgae+7bb9gatrDt3HpkSmPUCs5uDYG+rnjc0eydpWA7lFkouIggnGNXFVcIWnqFrDDsAiGWcKApCstBRG4R1HYGxVnxwowm1D7pkVNYWmsZO8fZBH39RssIetT8+ms8gSLKunwcmYLCe1qOUW1tflswN7TUuwdD1QQQLJt2IsQ\\/4F+vpSt8Rs07t+dj7sSUqu67bK+imUL0EOG3kFoSVduiR9qcVxgSYEdrSMg2dWnr3EG7tQXJFxBzcwnp5ePAEQ6elnkzGM5wh7GZAYihYAszHrPLsUW2PRdY\\/UI8zXz6Exno0QjyySBDeAJqo8wdDmzBbWY9NE4exEtOBN8KtDygFG4\\/jWa5QYKnTtEHQUVlXyGw8Q+dvBzrZkWZ\\/tIC5tKEdXLqdirEbYNbu+JxjExbkIg86orffXC4vEW5RN3kK1TFifTQTbi3oDcY05NsWvV8BxO9HPwFQy\\/jA1QkES750jf+InlB7x3xZxiXFbdCXr5DIcLf0ACEP55GSOihlhAqJGlUGOU9DE2zSWGhJhFuIfvsEIeM8v2GCIZkLAAfWpSCk\\/KWCcBiUXWoL9GfUC\\/ZjuVlxKoxHt18cBHa5KJQIc0XqQi6DMhT3Umk9CY8r11cDwi1we357HFUySqmFehPBkGCiiBzWCSKlxDSGzrQnz29tfpI2EWktRCJTMXbEdEB3QiQGO7kOTAkTY6XyNwPFL3PE78JTNpiWg69zC7JnaO7LC2UIN1sh8ZAa0y24qki68YIlkOfMurZ+MUBtcWWK1AcKQo94u6Bfznlk2jLomlKjwqynLK9y9Qvc0sKYdW6dHdkzsn2M8xdngFj2uT5kpAwIwpgABFuIMLIKwqlFDsZ9mofqKkeCSqob+QMFmxVhhNByCt5iToKK7zETbPQyQXhSbvTr3ELDkQhC0NYEw9EC+yLCfWRp7oElRYj1C8OlZvMn4SAWbYOPCtVjBcmgZ9ft44f7ZN0CjBAyyVXQLYiBrEtfiMRojo1uF77UlnaNW1jegJiDO8RnuaYC+mlMivwYQaRc\\/CIWS5aDK66CFoxwb8tOY+CxXKIynUr+Fup5D\\/MC6ePCkeOCxI0h6n47y33kQU3o\\/f96v67Xz\\/XKXz4P7IZ81mjcAiFFsz4An5WCEPO8CeZ2oN9JDRsEDF3owJ8U\\/1g605ZRaUQTu2IPwNlcdkdsY+8XJUSi4iN7ApImIqbya6FaAuvp2g66NK044RXr4xAxgRUFhuY9go8f1QkujYzaSmQ5AEFYt6AHNqPS9KogTqDuC+Zl262\\/98DbUIARAp6rpgO6dpUyDh51gJYxF04THDm3vFk9hrbGJQMY04y4eXGEiOZ2CJYQDRqDSM0uutn0wTp6f2cWwE6cjbLZHc6FWKa\\/oMkEDAZ234vPwehh3XSKTjFUXn\\/SFwLb2pKZcwuyZ2juC4CkMs8I5hvNq0GYTTQ3AEH41Be6I8ivtRkPZvMJQc3DkrscyQkkrdtzX8EF2XmkIKydlzpXMBI008JAY2NEowXrg2jNGbeumCWjD7wHwL0CnDScErpg2WMQqWgOQ8po+DvtIgvgarOLLfGGIAjrqiHQ8zbuECZwYG8KCpoApKicHFiDgI1kn6LtToc5eO7I4ppxa4DVjPQWsP0qv+wCzujpE8WedIMSgIY70i4yBaEVtzajnT8AyShBCOWvPGVKrvBkTX8dXfSttO0CL9MXUBC2dfMAUyrivfZlxi1QKmmW3tYG3mL+NBWEcKOiOSgUQlFjSLOnuUycJrZSQ7EJ\\/G7h0sq4tAaiWgkNcL+PH4uuZAMdggvVHOrccSrqrV0w+FX\\/UnELC2pVde0ZvcZClbthYKc+Fww7VHwKzdQ94Y4WFzxG5omrWiIyXRk4kFDqEYSQUlkgCI2iK+kFjWT7NAoC623G5Ekh4K9Grq24dTGi7TVCjFB4i9Cf09cFIdxRGjuNtZV8Ub3fiB7Yq7ac99h5GMivtG90S4\\/cri1fBKxBe4Ci2SbVGYxlayM1S\\/AyZXWyBF1R+SbdoLgFOBdN7DjRHop\\/uLYGsi4iSgEkgcuEuQXIU2ITYqSFkQd0tmgYtvgyMEmrd\\/vnNDiLtgAQhF8QLtEroiQGJsKnniqsHUcznpYYHEGKqaTcwsQOmjeNAAJnjJFNoZskaAVHYnxb0Y3sGvBsuKrsbMGetmhDVzkSKLnsKVyHLfjD3zHAoqHWkDMus3IJmoFeTxEVgMKr9AFTbu3AcCShLQZmwTFUzMAmqz0Y67FQFxEDJgvHA3NbURDa3He2BBgMVeqmowjDubrO7B502rlzyDndYDXNwDSzIo1UMlCb2pCu9oMoKbcQ\\/SaCcAG5jz98RmOeCJkoFXgC0RwmkBKw5FKQEAmqQ9qPlh6HXICsrxGqcYcwwTik0QsGYaJLZv6ZyWXW2nHxXTeNZ2DYH6gnKOUWWDI0hhOWUSFbUOGJiUkCCmZbzCKIiacaITrWwYrCpUTeiC0MCUsrq4bQx+8UbxNEAvyCEKfWj0LrtwbuIrsIdQ9aMolyC0PvJbdeEO9CcLEHYhb89rG0GPHxPzBTmqsTGKVPEl4xt7VOPRStPj55QmXb6o9ltlkqUbHksttz\\/2s+fpA7WnUCjJNJPeEtiPgu9glqJLk19eFib6xtwft+GHvOQNeHENio8ZPlYGnV+BXtrfjgty1mDJMTVSTBFisVOPsfq1z5oz4hPjof5xPUwtKG0N3+1If5CbRmRAgkt2Bto6oWSjDOmA4aP8R0woQ5IbGwpAhZGiu0NcgufVviB6OqTQ4aAaeqIcjvLzudJUYL3qhPTErIIT+jRk6qfiBcT7oB1oM2QqWCW6gRNvVRi15jUSzpBkOVIGk3ek3pLDQWOl0CPDA2joiHqw3Mja31bQ1FLBWEWE676kT+rmile50lEJ8ro83lnWCcuwz02SFUqsu6CXqN0ZoU3MIKyySxo4ISjKspAxSEetchICeaQ42QgCUzVMOI19jmL3bkXeFyqjYMgeB7qogRwgCF+951ZMkEwzQ0fY7WViymAGIKpKsBWTcNeM6tCZYaoxqhDQzF5BGaEAk9JgUh2IREAgAQS+uNnGx2sSEkJGHeqOo9iAgLTz2PvT5+sCvy+uVm\\/akUyQCzsbHyNGea5ZxbWNBspCtkGA8u9nVDLyzJn4Z9hWS25A1dl8TsQwxYZ\\/51ZMMHHYVwQeBlsaWwMG\\/cNTggo9CdpF6y5CVpphkuW9KriDU8iNd4hykChgDg3MJQQRrjZ8MssCYgERcVW8LcEhFdotDhKqgz32oXGxJd0gzUY5XHjwuzM\\/W8dESfvSfYaYLhgtW87ycoEGQoD1YjIV2N9ZTMTMOIBwLAsKfB7DYlCwOXiWCBVVBKSSyjR4z0N8h4XSO02sWRQz5h1VK1nMLVI7cghCgBb61PA8\\/V1hmIYk5IrAc4931RYpbQ+4RbS9RE9O+PwMqYi7UrxrvocwGTcb6FmoSbgRCRjNV+NQNiZ\\/OTOJOFcRQppqJ4c8MTmOTic21BGBvJ+z3gGBOIlLFzm65NzRAjNK8YmROQzE70e4km0IVNdBcE6oRWcnOEIQnqIICYq9cd1KHEAW1H1OYDjhvZNy3xxHLOMHrBk7WFDrdYV3NxRZM2zsrWN1lX0zlgG5JR6ePdP\\/FsC6QExcNX+yvNDK8gWrnXzsCFTnuGgU0OVl16GoS\\/xz+puK1Q2eypXQW1PhvusCgjaT6VdZJmaCKK4ipG9Xd9jht7Jln0m8goaEZwsQcG8HHJgAlzJCoQsyWlZxTDyomNgAZELgiPtrw69uOaGq7lFBMi3XoexSN9ItOIJSUJ55j2HNX4+EQfP+nqI6wgI4uDISrNabNUEEJKCxtxy94rCGGipHiLq9SIuE3Mfcilj23PsRihzoyw0IoCTK\\/gjRk5w9+NKqYejdDM9tEUJ2NHJxEmN0DVVG8P6ilZS7tFxvawZDhhLXcO90zQ8CN6EwJyYhxjTiu5zS1Iu1xOWTd9ajgrXECKeQYNY+q5WxDika5qHZww0knPTTQ24RP4AUZlkgRwDDGy+rYjY2ST4BJYLIXfa\\/Flk3UpwZ7M6XyGYGFfLSiWR6c\\/bIuWGbmWEaaYq1GEBVic4q2DfrlEM5iUxJQRb5NS9n8Dz2V5qb0OVhFJTUhMfdncSp2EJnv+MgE+WA29CNZK1hzmVMGNG4TZWkH9rqKdciYPkQ64F9x896ydsqK3qUkA2wZxHhgCC62otIsdOtbOq+l0yn\\/ly\\/Qs\\/nyZ2ETjcKYkStINRT8inisDuDpbccgYId2YlwvDWp+j+\\/n5PDzPz8PhcIYKIGNrwlgEEF3EyuVaLfuB74RkMPYrKte0U2iHSYUBa0FF8tDkH3+ni0ru9sIQWEGuChol03To2z\\/nV8+olr3w1dK4T1KDLqWy8FCgZZxu6LZfl22bWEnxjug045tiyY2y8JSeHauJdnhZD0kodRlaqi3LqQjZ4T09Jd+u1HqZmruAdQc3N00FYSdoW2WRsGeYtM4jEevOcG2bfRilPRecxx+7tmSLJofwTelSzMKyvYH18Eaqih\\/DN77NQaeHFR80QqFywlj9KH3isC22ObhixU2MWxA4bwug5qwGvr0ymrBKFoHVZzB1TufWL+zPrbbeCduxPXeKYF6l5wq9DMaY121Ty2Ot4u5NuY8\\/4MKi+GBQoSyZy7UCpmSObAyLTE\\/iWPs0cFqwutMejIyoETcpn1LgJtFZz2L1KPd95nbrzGoX99z2DwY4q6DKfZDs4I6wSdC+o2LhNKZWttoa2qD8vr83wSjXrTjKJUlumWUCXM1kvraAXV9ZbtWEDwcN6Lnb\\/MUeEMLoJmXMoEZoJw4kH0OOlL5V9Bjliqy9Ee4ZOVk+t13At+lrZG4L6qQMs8BcdQvVfzJEYhu8\\/3KOtpoOh6hgQ0I4I8s3xP08rSTCI97Fx6XFSBHPZXnJrkfT9rDcog+bFMxT3lJw6xNYhVIDUwtFYfUnW4A6oTu8a4vrzipPer5tHzDaOMsdCJrY3LQNW1e4po7TRC9NcLfJnWS+YG6yg6o+ZgnfccFeyoq0jZqGRVce55FCuD2ck7RKJ6iMc2JuDKJkJC1lpeXCOkkM6CAFW8xvzP7e6I4tq0k\\/C5QwZR\\/WJbnl36dcEQlN9\\/M31jc\\/wXIDLtL8ORj7I8mbqt0Cl4xykH5ChoqAXE4hIkAErM0wUvCuwcRWbn2b1RisVC4oMCoi1HrF7UDAJAaiEoq\\/9KQj9LA6iG0y2bm06YMFdbEwqCmL+gziAYc9wgQhH7JYTo9EfOFWkIIOpVeQ1VdUDVZwy9gw2EZkg8uTZ77ENJ8vTF6zPAXBqP4qv\\/dXWoLOyHz8QeJNhAEGHcn1d4g4zCvMCPrYNLB5kM1ZLdyYTnBrHyAKqd9r7362+Jsg7K+wRbF6yKRJxXaGp7gFJ6hfm8WG7oIuzjNzsZSgnXgQMYLN1IXTsfRl9RRU\\/b1XuD2AjIMPwJJqNDnFaUnGGxo4XgnSCLXQW+s6F3v1QR6ZpZeMY9mOaVNGv7BRLOoCnKO4mGojDtTDtQDUW8MVYxZXS69xraBpFltq79i5tfyfchHBrseXyHEcphyNipumZ9mWRAgGNunZ\\/eb0JV663yN1+OF79PU14v9Go\\/5Xf8Tfkn\\/07xHX8+79fq\\/f7PV7zWYve2vyt+TvXvLST16aiYAdjEbfSZuiUdE2RA2fR7Ll5DdpntPoWboe+s2E+upHUU9cpMffxsUb56lsu1YhzWjgaGfnOg4ucIXvl4JOy8XyvXi\\/L+\\/tZTvYVt5Z6yfbpMUcQYMetwenPf\\/d3\\/Z79fn+0dnvO+Iff+E\\/4le9yDdxZKcz4T+ThMRf8k18JF+SD7j2NEmusk9IvHCCWxGXEe1mxD+VNMkblK2nH\\/KrFjPLtifr\\/ysdbSpVUTGYf4b+MG5hQfgwOfjP0B\\/GraHVLvYb+P8Q\\/VncOtmMM6hb\\/i\\/TH8Wth9UpXw5Qlv4R+qO4NbCZkMxvF\\/9f0iSLTBP\\/uN4m35A6SoFMA872Ha6LJgrpY58oq7fH65bQ5\\/Z6vT6v6+fzOe6Sn+N1N9u1Et06\\/Ib+JG7ZNpvm3ob5fD5Qv5wq\\/B+nIf8Z8mi3Ff+3Gk5X09UqiztTcWWHw\\/nwvD8P6+fP\\/Wf9M\\/5Zr9fj+3i8Fv8k9ZKfXo\\/\\/Oig1jYTVlfxLSdpVI0nc\\/kossG\\/+upGm3+a7y3\\/a3W673Wg3OFXr1Wo1SsZlLCzzWtldXsAgP7c6iRmyfz2ut9fn+roKOuY0O85ySsYJ\\/5HU2u1S2+rUOnFanPiOu29Ol\\/f8sp0nRpbs+Uou53p22IPxMDYe+FXOgsTon1mUGSEaV8aBiAw1EC8CZRB\\/pB\\/9EgmQIpgi+WJ7uKpn920PtxbJGOTEAxITuicD8b6+r3\\/S8dcbj90jTxr+0lrv55SNty+JMgjafLc33Xa30RUjrd7NoABMifsnqPpThOTauXXZRNmykY4GMQD\\/w5FXNNjUSMu8+78S2PjXkOZj\\/zVuFbvv\\/w9Iqylrs4v\\/enr+mnGicQuTxX8H5QUOAsMN\\/iZinvznQm5dfn9\\/5YHSJ5u\\/+O8m5s5tCuBWaHjif\\/F+sygnzPH8ByjuuncYDeHW+Xf3WFZX3+4v\\/qsp3hTtZFPArfdv5lacBTS0vv+1qWUtCfxL3Cr93huO80BpbwjV30jMU4Q5lFuhiVn\\/HcoXWaxN+9cTa\\/xn7lXCrcFv5VYWPNcqDqv\\/y8hf9DCQW7vfuNbnBWVvQcGnfxP1i6ObArj1+o2iMN+\\/dVqXcJUAaRUe+ys4l3lwTWb06kcw+nWN8a+Tl\\/RzJuHdDO7lf9ciiaFl+BuPR4sj\\/i0H56ocnqvGHKaLk7eI\\/80frMo7sRpXeWIxf4nqLHmrR9VqPXmvVqvjX\\/CReLhVOpfDcWUvaQCjBWVMPsoLTt948Favd38eDufzdLpaiWoCfwQNshftE\\/mh+CN5mfO3Qf6ivfGX+WA+GKgX6fCZzwuDPAO5tez1m6O+Sc2+CoeTMXBNHXYXH\\/UzJL4nA+QKaJ1BzxPupLvdeFDXf\\/wU\\/wr9L6gzd4EMtZiaAAAAAElFTkSuQmCC\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(14790, '2022-02-08 07:17:30', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/images.unsplash.com\\/photo-1585241645927-c7a8e5840c42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(14791, '2022-02-08 07:17:30', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(14792, '2022-02-08 07:17:30', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(14793, '2022-02-08 07:17:30', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(14794, '2022-02-08 07:17:30', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"Akreditasi\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(14795, '2022-02-08 07:17:30', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #000 !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(14796, '2022-02-08 07:17:30', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(14797, '2022-02-08 07:17:30', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(14798, '2022-02-08 07:17:31', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(14799, '2022-02-08 07:17:31', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(14800, '2022-02-08 07:17:31', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(14801, '2022-02-08 07:17:31', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14802, '2022-02-08 07:17:31', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14803, '2022-02-08 07:17:31', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14804, '2022-02-08 07:18:50', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(14805, '2022-02-08 07:18:50', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"https:\\/\\/1.bp.blogspot.com\\/-vgoIDafa4xQ\\/W90ckjIrV8I\\/AAAAAAAAPlA\\/wVO5F_yrpjchn2z2cU3fWRC9M1io1kozQCLcBGAs\\/s1600\\/Ban-Pt.png\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(14806, '2022-02-08 07:18:50', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/images.unsplash.com\\/photo-1585241645927-c7a8e5840c42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(14807, '2022-02-08 07:18:50', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(14808, '2022-02-08 07:18:50', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(14809, '2022-02-08 07:18:50', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(14810, '2022-02-08 07:18:51', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"Akreditasi\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(14811, '2022-02-08 07:18:51', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #000 !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(14812, '2022-02-08 07:18:51', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(14813, '2022-02-08 07:18:51', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(14814, '2022-02-08 07:18:51', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(14815, '2022-02-08 07:18:51', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(14816, '2022-02-08 07:18:51', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(14817, '2022-02-08 07:18:51', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14818, '2022-02-08 07:18:51', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14819, '2022-02-08 07:18:51', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14820, '2022-02-08 07:19:04', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(14821, '2022-02-08 07:19:05', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"https:\\/\\/1.bp.blogspot.com\\/-vgoIDafa4xQ\\/W90ckjIrV8I\\/AAAAAAAAPlA\\/wVO5F_yrpjchn2z2cU3fWRC9M1io1kozQCLcBGAs\\/s1600\\/Ban-Pt.png\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(14822, '2022-02-08 07:19:05', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/images.unsplash.com\\/photo-1585241645927-c7a8e5840c42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(14823, '2022-02-08 07:19:05', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(14824, '2022-02-08 07:19:05', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-blue-light\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}');
INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(14825, '2022-02-08 07:19:05', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(14826, '2022-02-08 07:19:05', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"Akreditasi\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(14827, '2022-02-08 07:19:05', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #000 !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(14828, '2022-02-08 07:19:05', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(14829, '2022-02-08 07:19:05', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(14830, '2022-02-08 07:19:05', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(14831, '2022-02-08 07:19:05', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(14832, '2022-02-08 07:19:05', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(14833, '2022-02-08 07:19:05', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14834, '2022-02-08 07:19:05', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14835, '2022-02-08 07:19:05', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14836, '2022-02-08 07:21:10', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(14837, '2022-02-08 07:21:10', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"https:\\/\\/1.bp.blogspot.com\\/-vgoIDafa4xQ\\/W90ckjIrV8I\\/AAAAAAAAPlA\\/wVO5F_yrpjchn2z2cU3fWRC9M1io1kozQCLcBGAs\\/s1600\\/Ban-Pt.png\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(14838, '2022-02-08 07:21:10', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/images.unsplash.com\\/photo-1585241645927-c7a8e5840c42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(14839, '2022-02-08 07:21:10', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(14840, '2022-02-08 07:21:10', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-blue\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(14841, '2022-02-08 07:21:10', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(14842, '2022-02-08 07:21:10', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"Akreditasi\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(14843, '2022-02-08 07:21:10', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #000 !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(14844, '2022-02-08 07:21:11', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(14845, '2022-02-08 07:21:11', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(14846, '2022-02-08 07:21:11', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(14847, '2022-02-08 07:21:11', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(14848, '2022-02-08 07:21:11', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(14849, '2022-02-08 07:21:11', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14850, '2022-02-08 07:21:11', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14851, '2022-02-08 07:21:11', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14852, '2022-02-08 07:24:31', NULL, 'updateData', 'user', '{\"id\":\"22\",\"session_id\":null,\"username\":\"admin\",\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"17\",\"role_slug\":\"admin\",\"role_name\":\"Admin\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":\"2\",\"active\":null,\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:31:04\",\"updated_at\":\"2022-01-12 18:32:57\"}'),
(14853, '2022-02-08 07:24:34', NULL, 'updateData', 'user', '{\"id\":\"22\",\"session_id\":null,\"username\":\"admin\",\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"17\",\"role_slug\":\"admin\",\"role_name\":\"Admin\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":\"3\",\"active\":null,\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:31:04\",\"updated_at\":\"2022-01-12 18:32:57\"}'),
(14854, '2022-02-08 07:24:56', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(14855, '2022-02-08 07:24:56', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"https:\\/\\/1.bp.blogspot.com\\/-vgoIDafa4xQ\\/W90ckjIrV8I\\/AAAAAAAAPlA\\/wVO5F_yrpjchn2z2cU3fWRC9M1io1kozQCLcBGAs\\/s1600\\/Ban-Pt.png\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(14856, '2022-02-08 07:24:56', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/image.freepik.com\\/free-vector\\/cartoon-urban-cityscape-with-college-academy-students-university-architecture-background_212168-968.jpg?w=900\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(14857, '2022-02-08 07:24:57', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(14858, '2022-02-08 07:24:57', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-blue\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(14859, '2022-02-08 07:24:57', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(14860, '2022-02-08 07:24:57', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"Akreditasi\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(14861, '2022-02-08 07:24:57', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #000 !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(14862, '2022-02-08 07:24:57', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(14863, '2022-02-08 07:24:57', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(14864, '2022-02-08 07:24:57', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(14865, '2022-02-08 07:24:57', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(14866, '2022-02-08 07:24:57', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(14867, '2022-02-08 07:24:57', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14868, '2022-02-08 07:24:57', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14869, '2022-02-08 07:24:57', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14870, '2022-02-08 07:25:59', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(14871, '2022-02-08 07:25:59', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"https:\\/\\/1.bp.blogspot.com\\/-vgoIDafa4xQ\\/W90ckjIrV8I\\/AAAAAAAAPlA\\/wVO5F_yrpjchn2z2cU3fWRC9M1io1kozQCLcBGAs\\/s1600\\/Ban-Pt.png\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(14872, '2022-02-08 07:25:59', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/image.freepik.com\\/free-vector\\/cartoon-urban-cityscape-with-college-academy-students-university-architecture-background_212168-968.jpg?w=900\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(14873, '2022-02-08 07:25:59', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(14874, '2022-02-08 07:25:59', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-blue\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(14875, '2022-02-08 07:25:59', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(14876, '2022-02-08 07:25:59', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"Akreditasi\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(14877, '2022-02-08 07:26:00', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #0099ff !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(14878, '2022-02-08 07:26:00', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(14879, '2022-02-08 07:26:00', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(14880, '2022-02-08 07:26:00', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(14881, '2022-02-08 07:26:00', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(14882, '2022-02-08 07:26:00', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(14883, '2022-02-08 07:26:00', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14884, '2022-02-08 07:26:00', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14885, '2022-02-08 07:26:00', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14886, '2022-02-08 07:37:32', NULL, 'updateData', 'user', '{\"id\":\"22\",\"session_id\":null,\"username\":\"admin\",\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"17\",\"role_slug\":\"admin\",\"role_name\":\"Admin\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":\"4\",\"active\":null,\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:31:04\",\"updated_at\":\"2022-01-12 18:32:57\"}'),
(14887, '2022-02-08 07:38:09', NULL, 'updateData', 'user', '{\"id\":\"23\",\"session_id\":null,\"username\":\"mahasiswa\",\"name\":\"Mahasiswa\",\"email\":\"mahasiswa@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"20\",\"role_slug\":\"mahasiswa\",\"role_name\":\"Mahasiswa\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":\"1\",\"active\":null,\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:59:52\",\"updated_at\":null}'),
(14888, '2022-02-08 07:43:17', NULL, 'updateData', 'user', '{\"id\":\"22\",\"session_id\":null,\"username\":\"admin\",\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"17\",\"role_slug\":\"admin\",\"role_name\":\"Admin\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":\"5\",\"active\":\"2022-02-08 07:42:32\",\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:31:04\",\"updated_at\":\"2022-01-12 18:32:57\"}'),
(14889, '2022-02-08 07:44:19', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(14890, '2022-02-08 07:44:19', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"https:\\/\\/1.bp.blogspot.com\\/-vgoIDafa4xQ\\/W90ckjIrV8I\\/AAAAAAAAPlA\\/wVO5F_yrpjchn2z2cU3fWRC9M1io1kozQCLcBGAs\\/s1600\\/Ban-Pt.png\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(14891, '2022-02-08 07:44:19', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/image.freepik.com\\/free-vector\\/cartoon-urban-cityscape-with-college-academy-students-university-architecture-background_212168-968.jpg?w=900\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(14892, '2022-02-08 07:44:19', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(14893, '2022-02-08 07:44:19', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-blue\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(14894, '2022-02-08 07:44:19', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(14895, '2022-02-08 07:44:19', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"Akreditasi\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(14896, '2022-02-08 07:44:20', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #fff !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(14897, '2022-02-08 07:44:20', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(14898, '2022-02-08 07:44:20', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(14899, '2022-02-08 07:44:20', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(14900, '2022-02-08 07:44:20', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(14901, '2022-02-08 07:44:20', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(14902, '2022-02-08 07:44:20', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14903, '2022-02-08 07:44:20', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14904, '2022-02-08 07:44:20', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14905, '2022-02-10 20:51:03', NULL, 'updateData', 'user', '{\"id\":\"22\",\"session_id\":null,\"username\":\"admin\",\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"17\",\"role_slug\":\"admin\",\"role_name\":\"Admin\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":\"0\",\"active\":\"2022-02-08 07:42:32\",\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:31:04\",\"updated_at\":\"2022-01-12 18:32:57\"}'),
(14906, '2022-02-10 21:23:59', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"46\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"18\\\",\\\"35\\\",\\\"49\\\",\\\"50\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-01-12 19:14:31\"}'),
(14907, '2022-02-10 21:24:28', 22, 'insertData', 'jenis_program', '{\"nama\":\"D3\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14908, '2022-02-10 21:24:36', 22, 'insertData', 'jenis_program', '{\"nama\":\"Sarjana\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14909, '2022-02-10 21:28:17', 22, 'insertData', 'peringkat_akreditasi', '{\"nama\":\"Unggul\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14910, '2022-02-10 21:30:39', 22, 'updateData', 'menu_master', '{\"id\":\"49\",\"name\":\"Jurusan\",\"type\":\"menu\",\"icon\":\"fa fa-home\",\"link\":\"master\\/jurusan\",\"function\":\"master\\/jurusan\\/index\",\"urutan\":\"3\",\"parent\":\"46\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2022-01-12 19:13:59\",\"updated_at\":null}'),
(14911, '2022-02-10 21:30:43', 22, 'updateData', 'menu_master', '{\"id\":\"50\",\"name\":\"Kelas\",\"type\":\"menu\",\"icon\":\"fa fa-home\",\"link\":\"master\\/kelas\",\"function\":\"master\\/kelas\\/index\",\"urutan\":\"4\",\"parent\":\"46\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2022-01-12 19:14:13\",\"updated_at\":null}'),
(14912, '2022-02-10 21:31:15', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"46\\\",\\\"50\\\",\\\"49\\\",\\\"51\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"18\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-02-10 21:23:59\"}'),
(14913, '2022-02-10 21:32:44', 22, 'insertData', 'peringkat_akreditasi', '{\"nama\":\"A\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14914, '2022-04-08 08:28:40', NULL, 'updateData', 'user', '{\"id\":\"22\",\"session_id\":null,\"username\":\"admin\",\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"17\",\"role_slug\":\"admin\",\"role_name\":\"Admin\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":\"1\",\"active\":\"2022-02-08 07:42:32\",\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:31:04\",\"updated_at\":\"2022-01-12 18:32:57\"}'),
(14915, '2022-04-08 08:28:48', NULL, 'updateData', 'user', '{\"id\":\"22\",\"session_id\":null,\"username\":\"admin\",\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"17\",\"role_slug\":\"admin\",\"role_name\":\"Admin\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":\"2\",\"active\":\"2022-02-08 07:42:32\",\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:31:04\",\"updated_at\":\"2022-01-12 18:32:57\"}'),
(14916, '2022-04-08 08:32:51', 22, 'insertData', 'jenis_program', '{\"nama\":\"Sarjana Terapan\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14917, '2022-04-08 08:33:05', 22, 'insertData', 'jenis_program', '{\"nama\":\"Magister\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14918, '2022-04-08 08:33:14', 22, 'insertData', 'jenis_program', '{\"nama\":\"Magister Terapan\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14919, '2022-04-08 08:33:24', 22, 'insertData', 'jenis_program', '{\"nama\":\"Doktor\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14920, '2022-04-08 08:33:54', 22, 'insertData', 'jenis_program', '{\"nama\":\"Doktor Terapan\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14921, '2022-04-08 08:34:29', 22, 'insertData', 'peringkat_akreditasi', '{\"nama\":\"Baik Sekali\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14922, '2022-04-08 08:35:03', 22, 'insertData', 'peringkat_akreditasi', '{\"nama\":\"B\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14923, '2022-04-08 08:35:11', 22, 'insertData', 'peringkat_akreditasi', '{\"nama\":\"Baik\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14924, '2022-04-08 08:35:19', 22, 'insertData', 'peringkat_akreditasi', '{\"nama\":\"C\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14925, '2022-04-08 08:35:27', 22, 'insertData', 'peringkat_akreditasi', '{\"nama\":\"Minimum\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14926, '2022-05-20 22:00:27', NULL, 'updateData', 'user', '{\"id\":\"22\",\"session_id\":null,\"username\":\"admin\",\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"17\",\"role_slug\":\"admin\",\"role_name\":\"Admin\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":\"3\",\"active\":\"2022-02-08 07:42:32\",\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:31:04\",\"updated_at\":\"2022-01-12 18:32:57\"}'),
(14927, '2022-05-20 22:22:48', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"18\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-02-10 21:31:15\"}'),
(14928, '2022-05-20 22:32:56', 22, 'insertData', 'program_studi', '{\"jenis_program_id\":\"1\",\"nama_program_studi\":\"zcxfdf\",\"peringkat_akreditasi_id\":\"1\",\"no_tanggal_sk\":\"86999090jh\",\"tanggal_kadaluarsa\":\"2022-05-16\",\"jumlah_mahasiswa\":\"56\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14929, '2022-05-20 22:32:56', 22, 'insertData', 'file', '{\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"program_studi\",\"table_id\":1,\"status\":\"ENABLE\",\"created_at\":\"2022-05-20 22:32:56\"}'),
(14930, '2022-05-20 22:44:58', 22, 'deleteData', 'file', '{\"id\":\"204\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"program_studi\",\"table_id\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2022-05-20 22:32:56\",\"updated_at\":null}'),
(14931, '2022-05-20 22:44:59', 22, 'deleteData', 'program_studi', '{\"id\":\"1\",\"jenis_program_id\":\"1\",\"nama_program_studi\":\"zcxfdf\",\"peringkat_akreditasi_id\":\"1\",\"no_tanggal_sk\":\"86999090jh\",\"tanggal_kadaluarsa\":\"2022-05-16\",\"jumlah_mahasiswa\":\"56\",\"status\":\"ENABLE\",\"created_at\":\"2022-05-20 22:32:56\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(14932, '2022-05-20 22:45:20', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"53\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-20 22:22:48\"}'),
(14933, '2022-05-20 22:45:40', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"DISABLE\",\"menu\":\"[\\\"29\\\",\\\"53\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-20 22:22:48\"}'),
(14934, '2022-05-20 22:47:51', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"53\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-20 22:22:48\"}'),
(14935, '2022-05-20 22:47:56', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"DISABLE\",\"menu\":\"[\\\"29\\\",\\\"53\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-20 22:22:48\"}'),
(14936, '2022-05-20 22:48:05', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"53\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-20 22:22:48\"}'),
(14937, '2022-05-20 23:05:46', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"53\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-20 22:48:05\"}'),
(14938, '2022-05-20 23:05:53', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"DISABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"53\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-20 22:48:05\"}'),
(14939, '2022-05-20 23:06:02', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"53\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-20 22:48:05\"}'),
(14940, '2022-05-22 20:47:03', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"53\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-20 23:06:02\"}'),
(14941, '2022-05-22 20:47:33', 22, 'insertData', 'jabatan_akademik', '{\"jabatan_akademik\":\"Tenaga Pengajar\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14942, '2022-05-22 20:47:46', 22, 'insertData', 'jabatan_akademik', '{\"jabatan_akademik\":\"Asisten Ahli\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14943, '2022-05-22 20:47:57', 22, 'insertData', 'jabatan_akademik', '{\"jabatan_akademik\":\"Lektor\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14944, '2022-05-22 20:48:14', 22, 'insertData', 'jabatan_akademik', '{\"jabatan_akademik\":\"Lektor Kepala\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14945, '2022-05-22 20:48:29', 22, 'insertData', 'jabatan_akademik', '{\"jabatan_akademik\":\"Guru Besar\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14946, '2022-05-22 20:51:10', 22, 'insertData', 'tahun_akademik', '{\"tahun_akademik\":\"TS\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14947, '2022-05-22 20:51:19', 22, 'insertData', 'tahun_akademik', '{\"tahun_akademik\":\"TS-1\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14948, '2022-05-22 20:51:29', 22, 'insertData', 'tahun_akademik', '{\"tahun_akademik\":\"TS-2\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14949, '2022-05-22 20:51:38', 22, 'insertData', 'tahun_akademik', '{\"tahun_akademik\":\"TS-3\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14950, '2022-05-22 20:51:46', 22, 'insertData', 'tahun_akademik', '{\"tahun_akademik\":\"TS-4\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(14951, '2022-05-22 20:53:02', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"53\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-22 20:47:03\"}'),
(14952, '2022-05-22 21:08:09', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"53\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-22 20:53:02\"}'),
(14953, '2022-05-24 21:08:06', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"58\\\",\\\"53\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-22 21:08:09\"}'),
(14954, '2022-05-24 22:20:01', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(14955, '2022-05-24 22:20:01', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/en\\/5\\/53\\/Ma_Chung_University_logo_and_font.svg\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(14956, '2022-05-24 22:20:01', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/cdn-2.tstatic.net\\/surabaya\\/foto\\/bank\\/images\\/universitas-ma-chung-memberikan-kemudahan.jpg\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(14957, '2022-05-24 22:20:01', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(14958, '2022-05-24 22:20:01', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-blue\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(14959, '2022-05-24 22:20:01', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(14960, '2022-05-24 22:20:01', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"Akreditasi\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(14961, '2022-05-24 22:20:01', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #fff !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(14962, '2022-05-24 22:20:01', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(14963, '2022-05-24 22:20:01', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(14964, '2022-05-24 22:20:01', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(14965, '2022-05-24 22:20:01', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(14966, '2022-05-24 22:20:01', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(14967, '2022-05-24 22:20:01', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14968, '2022-05-24 22:20:02', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14969, '2022-05-24 22:20:02', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14970, '2022-05-24 22:20:24', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(14971, '2022-05-24 22:20:24', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/en\\/5\\/53\\/Ma_Chung_University_logo_and_font.svg\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(14972, '2022-05-24 22:20:24', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/cdn-2.tstatic.net\\/surabaya\\/foto\\/bank\\/images\\/universitas-ma-chung-memberikan-kemudahan.jpg\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(14973, '2022-05-24 22:20:25', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(14974, '2022-05-24 22:20:25', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-blue\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(14975, '2022-05-24 22:20:25', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(14976, '2022-05-24 22:20:25', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"Akreditasi\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(14977, '2022-05-24 22:20:25', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #fff !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(14978, '2022-05-24 22:20:25', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(14979, '2022-05-24 22:20:25', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(14980, '2022-05-24 22:20:25', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(14981, '2022-05-24 22:20:25', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(14982, '2022-05-24 22:20:25', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(14983, '2022-05-24 22:20:25', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14984, '2022-05-24 22:20:25', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14985, '2022-05-24 22:20:25', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(14986, '2022-05-24 22:21:00', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(14987, '2022-05-24 22:21:00', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/en\\/5\\/53\\/Ma_Chung_University_logo_and_font.svg\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(14988, '2022-05-24 22:21:00', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/cdn-2.tstatic.net\\/surabaya\\/foto\\/bank\\/images\\/universitas-ma-chung-memberikan-kemudahan.jpg\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(14989, '2022-05-24 22:21:00', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(14990, '2022-05-24 22:21:00', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-blue\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(14991, '2022-05-24 22:21:00', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(14992, '2022-05-24 22:21:00', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"Akreditasi\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(14993, '2022-05-24 22:21:00', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #fff !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(14994, '2022-05-24 22:21:00', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(14995, '2022-05-24 22:21:01', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(14996, '2022-05-24 22:21:01', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(14997, '2022-05-24 22:21:01', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(14998, '2022-05-24 22:21:01', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(14999, '2022-05-24 22:21:01', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15000, '2022-05-24 22:21:01', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15001, '2022-05-24 22:21:01', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15002, '2022-05-24 22:21:10', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(15003, '2022-05-24 22:21:10', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/en\\/5\\/53\\/Ma_Chung_University_logo_and_font.svg\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(15004, '2022-05-24 22:21:10', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/cdn-2.tstatic.net\\/surabaya\\/foto\\/bank\\/images\\/universitas-ma-chung-memberikan-kemudahan.jpg\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(15005, '2022-05-24 22:21:10', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(15006, '2022-05-24 22:21:10', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-blue\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(15007, '2022-05-24 22:21:10', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(15008, '2022-05-24 22:21:10', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"Akreditasi\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(15009, '2022-05-24 22:21:10', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #fff !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(15010, '2022-05-24 22:21:10', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(15011, '2022-05-24 22:21:10', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(15012, '2022-05-24 22:21:10', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(15013, '2022-05-24 22:21:10', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(15014, '2022-05-24 22:21:10', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(15015, '2022-05-24 22:21:10', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15016, '2022-05-24 22:21:10', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15017, '2022-05-24 22:21:10', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15018, '2022-05-24 22:21:24', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Akreditasi Online 00\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(15019, '2022-05-24 22:21:24', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/en\\/5\\/53\\/Ma_Chung_University_logo_and_font.svg\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(15020, '2022-05-24 22:21:24', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/cdn-2.tstatic.net\\/surabaya\\/foto\\/bank\\/images\\/universitas-ma-chung-memberikan-kemudahan.jpg\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(15021, '2022-05-24 22:21:24', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(15022, '2022-05-24 22:21:24', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-blue\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(15023, '2022-05-24 22:21:24', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}');
INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(15024, '2022-05-24 22:21:24', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"Akreditasi\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(15025, '2022-05-24 22:21:24', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #fff !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(15026, '2022-05-24 22:21:24', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(15027, '2022-05-24 22:21:24', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(15028, '2022-05-24 22:21:24', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(15029, '2022-05-24 22:21:24', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(15030, '2022-05-24 22:21:24', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(15031, '2022-05-24 22:21:24', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15032, '2022-05-24 22:21:24', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15033, '2022-05-24 22:21:24', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15034, '2022-05-24 22:21:46', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Akreditasi Online \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(15035, '2022-05-24 22:21:46', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/en\\/5\\/53\\/Ma_Chung_University_logo_and_font.svg\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(15036, '2022-05-24 22:21:46', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/cdn-2.tstatic.net\\/surabaya\\/foto\\/bank\\/images\\/universitas-ma-chung-memberikan-kemudahan.jpg\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(15037, '2022-05-24 22:21:46', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(15038, '2022-05-24 22:21:47', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-blue\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(15039, '2022-05-24 22:21:47', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(15040, '2022-05-24 22:21:47', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"Akreditasi\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(15041, '2022-05-24 22:21:47', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #fff !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(15042, '2022-05-24 22:21:47', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(15043, '2022-05-24 22:21:47', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(15044, '2022-05-24 22:21:47', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(15045, '2022-05-24 22:21:47', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(15046, '2022-05-24 22:21:47', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(15047, '2022-05-24 22:21:47', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15048, '2022-05-24 22:21:47', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15049, '2022-05-24 22:21:47', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15050, '2022-05-24 22:22:02', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Akreditasi Online \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(15051, '2022-05-24 22:22:02', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/en\\/5\\/53\\/Ma_Chung_University_logo_and_font.svg\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(15052, '2022-05-24 22:22:02', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/cdn-2.tstatic.net\\/surabaya\\/foto\\/bank\\/images\\/universitas-ma-chung-memberikan-kemudahan.jpg\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(15053, '2022-05-24 22:22:02', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(15054, '2022-05-24 22:22:02', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-blue\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(15055, '2022-05-24 22:22:02', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(15056, '2022-05-24 22:22:02', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"Akreditasi\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(15057, '2022-05-24 22:22:02', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #fff !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(15058, '2022-05-24 22:22:02', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(15059, '2022-05-24 22:22:02', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(15060, '2022-05-24 22:22:02', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(15061, '2022-05-24 22:22:02', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(15062, '2022-05-24 22:22:02', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(15063, '2022-05-24 22:22:02', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15064, '2022-05-24 22:22:03', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15065, '2022-05-24 22:22:03', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15066, '2022-05-24 22:22:09', 22, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"Akreditasi Online \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(15067, '2022-05-24 22:22:09', 22, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/en\\/5\\/53\\/Ma_Chung_University_logo_and_font.svg\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2020-09-17 15:59:29\"}'),
(15068, '2022-05-24 22:22:10', 22, 'updateData', 'konfig', '{\"id\":\"8\",\"slug\":\"LOGIN_BACKGROUND\",\"value\":\"background-image: url(\'https:\\/\\/cdn-2.tstatic.net\\/surabaya\\/foto\\/bank\\/images\\/universitas-ma-chung-memberikan-kemudahan.jpg\');background-size: cover;background-position: center;\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:52\",\"updated_at\":\"2019-04-29 10:57:19\"}'),
(15069, '2022-05-24 22:22:10', 22, 'updateData', 'konfig', '{\"id\":\"10\",\"slug\":\"VERSION\",\"value\":\"1.0.01\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:30:39\",\"updated_at\":null}'),
(15070, '2022-05-24 22:22:10', 22, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-blue\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:42:34\"}'),
(15071, '2022-05-24 22:22:10', 22, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2020-01-13 14:49:04\"}'),
(15072, '2022-05-24 22:22:10', 22, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"Akreditasi\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(15073, '2022-05-24 22:22:10', 22, 'updateData', 'konfig', '{\"id\":\"15\",\"slug\":\"LOGIN_BOX\",\"value\":\"background : #fff !important ; \",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:45:53\",\"updated_at\":\"2019-02-18 15:58:53\"}'),
(15074, '2022-05-24 22:22:10', 22, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2020-01-13 14:49:15\"}'),
(15075, '2022-05-24 22:22:10', 22, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"Akreditasi Online\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(15076, '2022-05-24 22:22:10', 22, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:18:52\"}'),
(15077, '2022-05-24 22:22:10', 22, 'updateData', 'konfig', '{\"id\":\"27\",\"slug\":\"CAPTCHA\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:18\",\"updated_at\":\"2020-09-18 17:29:48\"}'),
(15078, '2022-05-24 22:22:10', 22, 'updateData', 'konfig', '{\"id\":\"28\",\"slug\":\"FAIL_ATTEMP\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2020-09-17 16:00:50\",\"updated_at\":null}'),
(15079, '2022-05-24 22:22:10', 22, 'updateData', 'konfig', '{\"id\":\"29\",\"slug\":\"EMAIL_VERIFICATION\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15080, '2022-05-24 22:22:10', 22, 'updateData', 'konfig', '{\"id\":\"30\",\"slug\":\"REGISTER\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15081, '2022-05-24 22:22:10', 22, 'updateData', 'konfig', '{\"id\":\"31\",\"slug\":\"ONE_TIME_LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(15082, '2022-05-24 22:24:46', 22, 'updateData', 'menu_master', '{\"id\":\"59\",\"name\":\"Dosen\",\"type\":\"menu\",\"icon\":\"fa fa-user-circle\",\"link\":\"master\\/dosen\",\"function\":\"master\\/dosen\\/index\",\"urutan\":\"5\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2022-05-24 21:07:31\",\"updated_at\":null}'),
(15083, '2022-05-24 22:32:23', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"58\\\",\\\"53\\\",\\\"59\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-24 21:08:06\"}'),
(15084, '2022-05-24 22:36:11', 22, 'insertData', 'dosen', '{\"nama_dosen\":\"a\",\"nidn_nidk\":\"a\",\"pendidikan_s2\":\"a\",\"pendidikan_s3\":\"a\",\"bidang_keahlian\":\"a\",\"kesesuaian_kompetensi\":\"a\",\"jabatan_akademik_id\":\"1\",\"sertifikat_pendidik_profesional\":\"a\",\"sertifikat_kompetensi\":\"a\",\"matkul_diampu_PS_akreditasi\":\"a\",\"kesesuaian_keahlian\":\"a\",\"matkul_diampu_PS_lain\":\"a\",\"tipe\":\"tetap\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15085, '2022-05-24 22:36:11', 22, 'insertData', 'file', '{\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"dosen\",\"table_id\":1,\"status\":\"ENABLE\",\"created_at\":\"2022-05-24 22:36:11\"}'),
(15086, '2022-05-25 11:07:42', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"58\\\",\\\"53\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-24 22:32:23\"}'),
(15087, '2022-05-25 11:08:12', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"58\\\",\\\"53\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-25 11:07:42\"}'),
(15088, '2022-05-25 11:08:51', 22, 'updateData', 'file', '{\"id\":\"202\",\"name\":\"6950c16c9bcc6995f376b297f163175965469.jpg\",\"mime\":\"image\\/jpeg\",\"dir\":\"webfile\\/6950c16c9bcc6995f376b297f163175965469.jpg\",\"table\":\"user\",\"table_id\":\"22\",\"status\":\"ENABLE\",\"created_at\":\"2022-01-12 18:31:04\",\"updated_at\":\"2022-01-12 18:32:56\"}'),
(15089, '2022-05-25 11:08:51', 22, 'updateData', 'user', '{\"id\":\"22\",\"session_id\":null,\"username\":\"admin\",\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"17\",\"role_slug\":\"admin\",\"role_name\":\"Admin\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":\"4\",\"active\":\"2022-02-08 07:42:32\",\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:31:04\",\"updated_at\":\"2022-01-12 18:32:57\"}'),
(15090, '2022-05-25 15:25:33', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"58\\\",\\\"53\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"23\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-25 11:08:12\"}'),
(15091, '2022-06-06 19:03:05', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"58\\\",\\\"53\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"23\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-05-25 15:25:33\"}'),
(15092, '2022-06-06 19:24:32', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"58\\\",\\\"53\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-06 19:03:05\"}'),
(15093, '2022-06-06 19:33:31', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"63\\\",\\\"58\\\",\\\"53\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-06 19:24:32\"}'),
(15094, '2022-06-06 19:43:55', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"58\\\",\\\"53\\\",\\\"63\\\",\\\"64\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-06 19:33:31\"}'),
(15095, '2022-06-06 19:53:25', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"58\\\",\\\"53\\\",\\\"63\\\",\\\"64\\\",\\\"65\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-06 19:43:55\"}'),
(15096, '2022-06-06 20:26:01', NULL, 'updateData', 'user', '{\"id\":\"22\",\"session_id\":null,\"username\":\"admin\",\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"17\",\"role_slug\":\"admin\",\"role_name\":\"Admin\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":\"4\",\"active\":\"2022-02-08 07:42:32\",\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:31:04\",\"updated_at\":\"2022-05-25 11:08:51\"}'),
(15097, '2022-06-06 20:39:00', NULL, 'updateData', 'user', '{\"id\":\"22\",\"session_id\":null,\"username\":\"admin\",\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"17\",\"role_slug\":\"admin\",\"role_name\":\"Admin\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":\"5\",\"active\":\"2022-06-06 20:31:01\",\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:31:04\",\"updated_at\":\"2022-05-25 11:08:51\"}'),
(15098, '2022-06-06 20:40:49', 22, 'insertData', 'mahasiswa', '{\"nim\":\"32414\",\"nama_mahasiswa\":\"sfasf\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15099, '2022-06-06 20:41:11', 22, 'insertData', 'mahasiswa', '{\"nim\":\"32414\",\"nama_mahasiswa\":\"sfasf\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15100, '2022-06-06 20:41:24', 22, 'insertData', 'mahasiswa', '{\"nim\":\"2423425\",\"nama_mahasiswa\":\"sdsf\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15101, '2022-06-06 20:41:24', 22, 'insertData', 'file', '{\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"mahasiswa\",\"table_id\":3,\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 20:41:24\"}'),
(15102, '2022-06-06 20:42:01', 22, 'deleteData', 'mahasiswa', '{\"id\":\"1\",\"nim\":\"32414\",\"nama_mahasiswa\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 20:40:49\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15103, '2022-06-06 20:42:05', 22, 'deleteData', 'mahasiswa', '{\"id\":\"2\",\"nim\":\"32414\",\"nama_mahasiswa\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 20:41:11\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15104, '2022-06-06 20:42:08', 22, 'deleteData', 'mahasiswa', '{\"id\":\"3\",\"nim\":\"2423425\",\"nama_mahasiswa\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 20:41:24\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15105, '2022-06-06 20:46:24', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"58\\\",\\\"53\\\",\\\"63\\\",\\\"64\\\",\\\"65\\\",\\\"66\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-06 19:53:25\"}'),
(15106, '2022-06-06 20:53:58', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"67\\\",\\\"58\\\",\\\"53\\\",\\\"63\\\",\\\"64\\\",\\\"65\\\",\\\"66\\\",\\\"68\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-06 20:46:24\"}'),
(15107, '2022-06-06 20:59:22', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"67\\\",\\\"58\\\",\\\"53\\\",\\\"63\\\",\\\"64\\\",\\\"65\\\",\\\"66\\\",\\\"68\\\",\\\"69\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-06 20:53:58\"}'),
(15108, '2022-06-06 21:26:05', 22, 'insertData', 'dosen', '{\"nama_dosen\":\"bayu\",\"nidn_nidk\":\"21424\",\"pendidikan_s2\":\"ew\",\"pendidikan_s3\":\"qwe\",\"bidang_keahlian\":\"qwe\",\"kesesuaian_kompetensi\":\"weq\",\"jabatan_akademik_id\":\"2\",\"sertifikat_pendidik_profesional\":\"qwew\",\"sertifikat_kompetensi\":\"qwe\",\"matkul_diampu_PS_akreditasi\":\"wq\",\"kesesuaian_keahlian\":\"ew\",\"matkul_diampu_PS_lain\":\"wqe\",\"tipe\":\"tetap\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15109, '2022-06-06 21:26:05', 22, 'insertData', 'file', '{\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"dosen\",\"table_id\":2,\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 21:26:05\"}'),
(15110, '2022-06-06 21:26:33', 22, 'insertData', 'mahasiswa', '{\"nim\":\"311710014\",\"nama_mahasiswa\":\"mifta\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15111, '2022-06-06 21:27:33', 22, 'updateData', 'mahasiswa', '{\"id\":\"4\",\"nim\":\"311710014\",\"nama_mahasiswa\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 21:26:33\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15112, '2022-06-06 21:27:48', 22, 'insertData', 'penelitian_dtps_melibatkan_mahasiswa', '{\"nama_dosen_id\":\"2\",\"tema_penelitian_sesuai_roadmap\":\"fder\",\"nama_mahasiswa_id\":\"4\",\"judul_kegiatan\":\"rtet\",\"tahun\":\"2021\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15113, '2022-06-06 21:31:42', 22, 'insertData', 'penelitian_dtps_menjadi_rujukan_tema_tesis_disertasi', '{\"nama_dosen_id\":\"2\",\"tema_penelitian_sesuai_roadmap\":\"sad\",\"nama_mahasiswa_id\":\"4\",\"judul_tesis_disertasi\":\"sad\",\"tahun\":\"2020\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15114, '2022-06-06 22:26:01', 22, 'insertData', 'dosen', '{\"nama_dosen\":\"sdad\",\"nidn_nidk\":\"12434\",\"pendidikan_tertinggi\":\"ew\",\"bidang_keahlian\":\"erw\",\"jabatan_akademik_id\":\"4\",\"sertifikat_pendidik_profesional\":\"ewr\",\"sertifikat_kompetensi\":\"ewr\",\"matkul_diampu_PS_akreditasi\":\"wr\",\"kesesuaian_keahlian\":\"wer\",\"tipe\":\"Tidak Tetap\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15115, '2022-06-06 22:26:01', 22, 'insertData', 'file', '{\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"dosen\",\"table_id\":3,\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 22:26:01\"}'),
(15116, '2022-06-06 22:44:45', 22, 'insertData', 'dosen', '{\"nama_dosen\":\"huda\",\"nidn_nidk\":\"23124\",\"perusahaan\":\"dsaf\",\"pendidikan_tertinggi\":\"saf\",\"bidang_keahlian\":\"sfaf\",\"sertifikat_kompetensi\":\"af\",\"matkul_diampu_PS_akreditasi\":\"adf\",\"bobot_kredit\":\"fad\",\"tipe\":\"industri\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15117, '2022-06-06 22:44:45', 22, 'insertData', 'file', '{\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"dosen\",\"table_id\":4,\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 22:44:45\"}'),
(15118, '2022-06-06 22:50:43', 22, 'insertData', 'rekognisi_dtps', '{\"nama_dosen_id\":\"4\",\"bidang_keahlian\":\"sfaf\",\"rekognisi_bukti_pendukung\":\"sad\",\"tingkat\":\"wilayah\",\"tahun\":\"sada\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15119, '2022-06-06 22:51:01', 22, 'insertData', 'rekognisi_dtps', '{\"nama_dosen_id\":\"3\",\"bidang_keahlian\":\"qerrrrrrrrrrrrrrrrrrrrrrrrrr\",\"rekognisi_bukti_pendukung\":\"wqrqwrqwrerq\",\"tingkat\":\"nasional\",\"tahun\":\"2021\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15120, '2022-06-06 22:57:10', 22, 'deleteData', 'rekognisi_dtps', '{\"id\":\"1\",\"nama_dosen_id\":\"4\",\"bidang_keahlian\":\"sfaf\",\"rekognisi_bukti_pendukung\":\"sad\",\"tingkat\":\"wilayah\",\"tahun\":\"0000\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 22:50:43\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15121, '2022-06-06 22:57:14', 22, 'deleteData', 'rekognisi_dtps', '{\"id\":\"2\",\"nama_dosen_id\":\"3\",\"bidang_keahlian\":\"qerrrrrrrrrrrrrrrrrrrrrrrrrr\",\"rekognisi_bukti_pendukung\":\"wqrqwrqwrerq\",\"tingkat\":\"nasional\",\"tahun\":\"2021\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 22:51:01\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15122, '2022-06-06 22:57:28', 22, 'insertData', 'karya_ilmiah_dtps_disitasi', '{\"nama_dosen_id\":\"4\",\"judul_artikel\":\"fdhdt\",\"jumlah_sitasi\":\"4636\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15123, '2022-06-06 22:58:49', 22, 'deleteData', 'karya_ilmiah_dtps_disitasi', '{\"id\":\"1\",\"nama_dosen_id\":\"4\",\"judul_artikel\":\"fdhdt\",\"jumlah_sitasi\":\"4636\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 22:57:28\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15124, '2022-06-06 22:59:13', 22, 'insertData', 'produk_jasa_dtps_yang_diadopsi_oleh_industri_masyarakat', '{\"nama_dosen_id\":\"3\",\"nama_produk_jasa\":\"asd\",\"deskripsi\":\"sadad\",\"bukti\":\"asdsads\",\"tahun\":\"2020\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15125, '2022-06-06 23:01:04', 22, 'deleteData', 'produk_jasa_dtps_yang_diadopsi_oleh_industri_masyarakat', '{\"id\":\"1\",\"nama_dosen_id\":\"3\",\"nama_produk_jasa\":\"asd\",\"deskripsi\":\"sadad\",\"bukti\":\"asdsads\",\"tahun\":\"2020\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 22:59:13\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15126, '2022-06-06 23:02:38', 22, 'insertData', 'mata_kuliah', '{\"kode\":\"IF0011372814\",\"nama\":\"Pemrograman\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15127, '2022-06-06 23:03:02', 22, 'insertData', 'penelitian_pkm', '{\"judul\":\"Aplikasi deteksi tanaman\",\"nama_dosen_id\":\"4\",\"mata_kuliah_id\":\"1\",\"bentuk_integrasi\":\"abab\",\"tahun\":\"2020\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15128, '2022-06-06 23:05:34', 22, 'deleteData', 'penelitian_dtps_melibatkan_mahasiswa', '{\"id\":\"1\",\"nama_dosen_id\":\"2\",\"tema_penelitian_sesuai_roadmap\":\"fder\",\"nama_mahasiswa_id\":\"4\",\"judul_kegiatan\":\"rtet\",\"tahun\":\"2021\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 21:27:48\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15129, '2022-06-06 23:06:03', 22, 'insertData', 'penelitian_dtps_melibatkan_mahasiswa', '{\"nama_dosen_id\":\"4\",\"tema_penelitian_sesuai_roadmap\":\"aplikasi\",\"nama_mahasiswa_id\":\"4\",\"judul_kegiatan\":\"live in\",\"tahun\":\"2021\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15130, '2022-06-06 23:06:24', 22, 'deleteData', 'penelitian_dtps_menjadi_rujukan_tema_tesis_disertasi', '{\"id\":\"1\",\"nama_dosen_id\":\"2\",\"tema_penelitian_sesuai_roadmap\":\"sad\",\"nama_mahasiswa_id\":\"4\",\"judul_tesis_disertasi\":\"sad\",\"tahun\":\"2020\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 21:31:42\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15131, '2022-06-06 23:06:46', 22, 'insertData', 'penelitian_dtps_menjadi_rujukan_tema_tesis_disertasi', '{\"nama_dosen_id\":\"4\",\"tema_penelitian_sesuai_roadmap\":\"aplikasi pintar\",\"nama_mahasiswa_id\":\"4\",\"judul_tesis_disertasi\":\"az\",\"tahun\":\"2021\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15132, '2022-06-06 23:07:18', 22, 'insertData', 'pkm_dtps_melibatkan_mahasiswa', '{\"nama_dosen_id\":\"3\",\"tema_pkm_sesuai_roadmap\":\"sayur\",\"nama_mahasiswa_id\":\"4\",\"judul_kegiatan\":\"aplikasi sayur\",\"tahun\":\"2020\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15133, '2022-06-06 23:22:33', 22, 'insertData', 'program_studi', '{\"jenis_program_id\":\"2\",\"nama_program_studi\":\"Teknik Informatika\",\"peringkat_akreditasi_id\":\"4\",\"no_tanggal_sk\":\"938240328424\",\"tanggal_kadaluarsa\":\"2022-06-30\",\"jumlah_mahasiswa\":\"90\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15134, '2022-06-06 23:22:33', 22, 'insertData', 'file', '{\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"program_studi\",\"table_id\":2,\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 23:22:33\"}'),
(15135, '2022-06-06 23:23:27', 22, 'insertData', 'mahasiswa_asing', '{\"program_studi_id\":\"2\",\"jumlah_mahasiswa_aktif_ts2\":\"23\",\"jumlah_mahasiswa_aktif_ts1\":\"123\",\"jumlah_mahasiswa_aktif_ts\":\"123\",\"jumlah_mahasiswa_asing_penuh_waktu_ts2\":\"546\",\"jumlah_mahasiswa_asing_penuh_waktu_ts1\":\"23\",\"jumlah_mahasiswa_asing_penuh_waktu_ts\":\"314\",\"jumlah_mahasiswa_asing_paruh_waktu_ts2\":\"5\",\"jumlah_mahasiswa_asing_paruh_waktu_ts1\":\"245\",\"jumlah_mahasiswa_asing_paruh_waktu_ts\":\"2\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15136, '2022-06-06 23:31:34', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"67\\\",\\\"58\\\",\\\"53\\\",\\\"63\\\",\\\"64\\\",\\\"65\\\",\\\"66\\\",\\\"68\\\",\\\"69\\\",\\\"70\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-06 20:59:22\"}'),
(15137, '2022-06-06 23:33:24', 22, 'insertData', 'jenis_publikasi_ilmiah_dtps', '{\"jenis_publikasi\":\"Jurnal penelitian tidak terakreditasi\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15138, '2022-06-06 23:33:36', 22, 'insertData', 'jenis_publikasi_ilmiah_dtps', '{\"jenis_publikasi\":\"Jurnal penelitian nasional terakreditasi\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15139, '2022-06-06 23:34:47', 22, 'insertData', 'jenis_publikasi_ilmiah_dtps', '{\"jenis_publikasi\":\"Jurnal penelitian internasional\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15140, '2022-06-06 23:35:03', 22, 'insertData', 'jenis_publikasi_ilmiah_dtps', '{\"jenis_publikasi\":\"Jurnal penelitian internasional bereputasi\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15141, '2022-06-06 23:35:19', 22, 'insertData', 'jenis_publikasi_ilmiah_dtps', '{\"jenis_publikasi\":\"Seminar wilayah\\/lokal\\/perguruan tinggi\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15142, '2022-06-06 23:35:32', 22, 'insertData', 'jenis_publikasi_ilmiah_dtps', '{\"jenis_publikasi\":\"Seminar nasional\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15143, '2022-06-06 23:35:46', 22, 'insertData', 'jenis_publikasi_ilmiah_dtps', '{\"jenis_publikasi\":\"Tulisan di media massa wilayah\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15144, '2022-06-06 23:36:01', 22, 'insertData', 'jenis_publikasi_ilmiah_dtps', '{\"jenis_publikasi\":\"Tulisan di media massa nasional\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15145, '2022-06-06 23:36:26', 22, 'insertData', 'jenis_publikasi_ilmiah_dtps', '{\"jenis_publikasi\":\"Seminar internasional\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15146, '2022-06-06 23:36:32', 22, 'deleteData', 'jenis_publikasi_ilmiah_dtps', '{\"id\":\"8\",\"jenis_publikasi\":\"Tulisan di media massa wilayah\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 23:35:46\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15147, '2022-06-06 23:36:35', 22, 'deleteData', 'jenis_publikasi_ilmiah_dtps', '{\"id\":\"9\",\"jenis_publikasi\":\"Tulisan di media massa nasional\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 23:36:01\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15148, '2022-06-06 23:36:50', 22, 'insertData', 'jenis_publikasi_ilmiah_dtps', '{\"jenis_publikasi\":\"Tulisan di media massa wilayah\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15149, '2022-06-06 23:37:01', 22, 'insertData', 'jenis_publikasi_ilmiah_dtps', '{\"jenis_publikasi\":\"Tulisan di media massa nasional\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15150, '2022-06-06 23:37:15', 22, 'insertData', 'jenis_publikasi_ilmiah_dtps', '{\"jenis_publikasi\":\"Tulisan di media massa internasional\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15151, '2022-06-06 23:41:28', 22, 'insertData', 'publikasi_ilmiah_dtps', '{\"jenis_publikasi_id\":\"7\",\"jumlah_judul_ts2\":\"2\",\"jumlah_judul_ts1\":\"3\",\"jumlah_judul_ts\":\"5\",\"jumlah\":\"10\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15152, '2022-06-06 23:45:58', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"58\\\",\\\"71\\\",\\\"53\\\",\\\"63\\\",\\\"64\\\",\\\"65\\\",\\\"66\\\",\\\"68\\\",\\\"69\\\",\\\"70\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"67\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-06 23:31:34\"}'),
(15153, '2022-06-06 23:52:01', 22, 'insertData', 'jenis_publikasi', '{\"jenis_publikasi\":\"Jurnal penelitian tidak terakreditasi\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15154, '2022-06-06 23:52:12', 22, 'insertData', 'jenis_publikasi', '{\"jenis_publikasi\":\"Jurnal penelitian nasional terakreditasi\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15155, '2022-06-06 23:52:21', 22, 'insertData', 'jenis_publikasi', '{\"jenis_publikasi\":\"Jurnal penelitian internasional\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15156, '2022-06-06 23:52:30', 22, 'insertData', 'jenis_publikasi', '{\"jenis_publikasi\":\"Jurnal penelitian internasional bereputasi\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15157, '2022-06-06 23:52:39', 22, 'insertData', 'jenis_publikasi', '{\"jenis_publikasi\":\"Seminar wilayah\\/lokal\\/perguruan tinggi\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15158, '2022-06-06 23:52:49', 22, 'insertData', 'jenis_publikasi', '{\"jenis_publikasi\":\"Seminar nasional\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15159, '2022-06-06 23:53:06', 22, 'insertData', 'jenis_publikasi', '{\"jenis_publikasi\":\"Seminar internasional\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15160, '2022-06-06 23:53:14', 22, 'insertData', 'jenis_publikasi', '{\"jenis_publikasi\":\"Pagelaran\\/pameran\\/presentasi dalam forum di tingkat wilayah\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15161, '2022-06-06 23:53:22', 22, 'insertData', 'jenis_publikasi', '{\"jenis_publikasi\":\"Pagelaran\\/pameran\\/presentasi dalam forum di tingkat nasional\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15162, '2022-06-06 23:53:33', 22, 'insertData', 'jenis_publikasi', '{\"jenis_publikasi\":\"Pagelaran\\/pameran\\/presentasi dalam forum di tingkat internasional\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15163, '2022-06-06 23:56:57', 22, 'insertData', 'pagelaran_pameran_presentasi_publikasi_ilmiat_dtps', '{\"publikasi_ilmiah_id\":\"4\",\"jumlah_judul_ts2\":\"1\",\"jumlah_judul_ts1\":\"1\",\"jumlah_judul_ts\":\"1\",\"jumlah\":\"3\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15164, '2022-06-07 00:01:23', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"58\\\",\\\"71\\\",\\\"53\\\",\\\"63\\\",\\\"73\\\",\\\"64\\\",\\\"65\\\",\\\"66\\\",\\\"68\\\",\\\"69\\\",\\\"70\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"67\\\",\\\"72\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-06 23:45:58\"}'),
(15165, '2022-06-07 00:05:50', 22, 'insertData', 'sumber_pembiayaan', '{\"sumber_pembiayaan\":\"Perguruan Tinggi\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15166, '2022-06-07 00:05:58', 22, 'insertData', 'sumber_pembiayaan', '{\"sumber_pembiayaan\":\"Mandiri\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15167, '2022-06-07 00:06:07', 22, 'insertData', 'sumber_pembiayaan', '{\"sumber_pembiayaan\":\"Lembaga dalam negeri (diluar PT)\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15168, '2022-06-07 00:06:17', 22, 'insertData', 'sumber_pembiayaan', '{\"sumber_pembiayaan\":\"Lembaga luar negeri\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15169, '2022-06-07 00:12:12', 22, 'insertData', 'pnelitian_dtps', '{\"sumber_pembiayaan_id\":\"2\",\"jumlah_judul_penelitian_ts2\":\"5\",\"jumlah_judul_penelitian_ts1\":\"5\",\"jumlah_judul_penelitian_ts\":\"6\",\"jumlah\":\"16\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15170, '2022-06-07 00:15:27', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"58\\\",\\\"71\\\",\\\"53\\\",\\\"63\\\",\\\"73\\\",\\\"74\\\",\\\"64\\\",\\\"65\\\",\\\"66\\\",\\\"68\\\",\\\"69\\\",\\\"70\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"67\\\",\\\"72\\\",\\\"75\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-07 00:01:23\"}'),
(15171, '2022-06-07 00:40:37', 22, 'insertData', 'pkm_dtps', '{\"sumber_pembiayaan_id\":\"3\",\"jumlah_judul_pkm_ts2\":\"6\",\"jumlah_judul_pkm_ts1\":\"6\",\"jumlah_judul_pkm_ts\":\"4\",\"jumlah\":\"16\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15172, '2022-06-07 00:42:43', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"58\\\",\\\"71\\\",\\\"53\\\",\\\"63\\\",\\\"77\\\",\\\"73\\\",\\\"74\\\",\\\"64\\\",\\\"65\\\",\\\"66\\\",\\\"68\\\",\\\"69\\\",\\\"70\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"67\\\",\\\"72\\\",\\\"75\\\",\\\"76\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-07 00:15:27\"}'),
(15173, '2022-06-07 14:29:27', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"58\\\",\\\"71\\\",\\\"53\\\",\\\"63\\\",\\\"77\\\",\\\"78\\\",\\\"73\\\",\\\"74\\\",\\\"64\\\",\\\"65\\\",\\\"66\\\",\\\"68\\\",\\\"69\\\",\\\"70\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"67\\\",\\\"72\\\",\\\"75\\\",\\\"76\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-07 00:42:43\"}'),
(15174, '2022-06-07 14:47:47', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"58\\\",\\\"71\\\",\\\"67\\\",\\\"53\\\",\\\"63\\\",\\\"77\\\",\\\"78\\\",\\\"73\\\",\\\"74\\\",\\\"64\\\",\\\"65\\\",\\\"79\\\",\\\"66\\\",\\\"68\\\",\\\"69\\\",\\\"70\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"72\\\",\\\"75\\\",\\\"76\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-07 14:29:27\"}'),
(15175, '2022-06-07 14:49:32', 22, 'deleteData', 'user', '{\"id\":\"23\",\"session_id\":null,\"username\":\"mahasiswa\",\"name\":\"Mahasiswa\",\"email\":\"mahasiswa@gmail.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"20\",\"role_slug\":\"mahasiswa\",\"role_name\":\"Mahasiswa\",\"desc\":\"-\",\"status\":\"0\",\"wrong\":\"2\",\"active\":null,\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-01-12 18:59:52\",\"updated_at\":null}'),
(15176, '2022-06-07 14:49:34', 22, 'deleteData', 'file', '{\"id\":\"203\",\"name\":\"6950c16c9bcc6995f376b297f163175959659.png\",\"mime\":\"image\\/png\",\"dir\":\"webfile\\/6950c16c9bcc6995f376b297f163175959659.png\",\"table\":\"user\",\"table_id\":\"23\",\"status\":\"ENABLE\",\"created_at\":\"2022-01-12 18:59:52\",\"updated_at\":null}'),
(15177, '2022-06-07 14:52:20', 22, 'updateData', 'role', '{\"id\":\"20\",\"role\":\"Mahasiswa\",\"slug\":\"mahasiswa\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"46\\\",\\\"50\\\",\\\"49\\\"]\",\"created_at\":\"2022-01-12 18:58:32\",\"updated_at\":\"2022-01-12 19:22:46\"}'),
(15178, '2022-06-07 14:55:03', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"58\\\",\\\"71\\\",\\\"67\\\",\\\"53\\\",\\\"63\\\",\\\"77\\\",\\\"78\\\",\\\"73\\\",\\\"74\\\",\\\"64\\\",\\\"65\\\",\\\"79\\\",\\\"66\\\",\\\"68\\\",\\\"69\\\",\\\"70\\\",\\\"80\\\",\\\"81\\\",\\\"82\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"72\\\",\\\"75\\\",\\\"76\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-07 14:47:47\"}'),
(15179, '2022-06-07 14:55:19', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"58\\\",\\\"71\\\",\\\"67\\\",\\\"53\\\",\\\"63\\\",\\\"77\\\",\\\"78\\\",\\\"73\\\",\\\"74\\\",\\\"64\\\",\\\"65\\\",\\\"79\\\",\\\"66\\\",\\\"68\\\",\\\"69\\\",\\\"70\\\",\\\"80\\\",\\\"81\\\",\\\"82\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"72\\\",\\\"75\\\",\\\"76\\\",\\\"18\\\",\\\"21\\\",\\\"23\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-07 14:55:03\"}'),
(15180, '2022-06-14 13:58:11', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"okkk\"}'),
(15181, '2022-06-14 13:58:35', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"aaa\"}'),
(15182, '2022-06-14 14:00:02', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"sip\"}'),
(15183, '2022-06-14 14:00:08', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"sip\"}'),
(15184, '2022-06-14 14:00:19', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"sip bgt\\r\\n\"}'),
(15185, '2022-06-14 14:01:09', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"sip bgt\\r\\n\"}'),
(15186, '2022-06-14 14:10:22', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"sip bgt\\r\\n\"}'),
(15187, '2022-06-14 14:11:01', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"sip bgt\\r\\n\"}'),
(15188, '2022-06-14 14:12:36', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"sip bgt\\r\\n\"}'),
(15189, '2022-06-14 14:26:26', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"9\",\"komentar\":\"aa\\r\\n\\r\\n                      \\r\\n                        \\r\\n\\r\\n                        \"}'),
(15190, '2022-06-14 14:28:11', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"9\",\"komentar\":\"aa\\r\\n\\r\\n                      \\r\\n                        \\r\\n\\r\\n                        \"}'),
(15191, '2022-06-14 14:28:16', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"oke\"}'),
(15192, '2022-06-14 14:28:38', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"oke\"}'),
(15193, '2022-06-14 14:28:59', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"oke\\r\\n\"}'),
(15194, '2022-06-14 14:29:07', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"14\",\"komentar\":\"                          okelah\\r\\n                      \\r\\n                        \\r\\n\\r\\n                        \"}'),
(15195, '2022-06-14 14:32:31', 22, 'insertData', 'komentar', 'null'),
(15196, '2022-06-14 14:33:45', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"oke\"}'),
(15197, '2022-06-14 14:33:57', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"16\",\"komentar\":\"sip\\r\\n                      \\r\\n                        \\r\\n\\r\\n                        \"}'),
(15198, '2022-06-14 14:34:30', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"16\",\"komentar\":\"sip\\r\\n                      \\r\\n                        \\r\\n\\r\\n                        \"}'),
(15199, '2022-06-14 14:35:07', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"aaaa\"}'),
(15200, '2022-06-14 14:35:37', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"aaaa\"}'),
(15201, '2022-06-14 14:35:44', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"19\",\"komentar\":\"abb\\r\\n                      \\r\\n                        \\r\\n\\r\\n                        \"}'),
(15202, '2022-06-14 14:36:31', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"bagus\\r\\n\"}'),
(15203, '2022-06-14 14:36:39', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"bagus\\r\\n\"}'),
(15204, '2022-06-14 14:36:51', 22, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"22\",\"komentar\":\"bagus\\r\\n\"}'),
(15205, '2022-06-14 16:38:43', 25, 'insertData', 'komentar', '{\"halaman\":\"program_studi\",\"tanggal\":\"2022-06-14\",\"user_id\":\"25\",\"komentar\":\"oke\"}'),
(15206, '2022-07-01 09:28:43', 22, 'insertData', 'jenis_program', '{\"nama\":\"mahasiswa\",\"created_by\":\"22\",\"status\":\"ENABLE\"}');
INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(15207, '2022-07-01 09:31:48', 22, 'insertData', 'program_studi', '{\"jenis_program_id\":\"4\",\"nama_program_studi\":\"Sistem Informasi\",\"peringkat_akreditasi_id\":\"2\",\"no_tanggal_sk\":\"790-89879kljkjkjd\",\"tanggal_kadaluarsa\":\"2022-07-14\",\"jumlah_mahasiswa\":\"56\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15208, '2022-07-01 09:31:48', 22, 'insertData', 'file', '{\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"program_studi\",\"table_id\":3,\"status\":\"ENABLE\",\"created_at\":\"2022-07-01 09:31:48\"}'),
(15209, '2022-07-01 09:32:02', 22, 'deleteData', 'file', '{\"id\":\"210\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"program_studi\",\"table_id\":\"2\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 23:22:33\",\"updated_at\":null}'),
(15210, '2022-07-01 09:32:02', 22, 'deleteData', 'program_studi', '{\"id\":\"2\",\"jenis_program_id\":\"2\",\"nama_program_studi\":\"Teknik Informatika\",\"peringkat_akreditasi_id\":\"4\",\"no_tanggal_sk\":\"938240328424\",\"tanggal_kadaluarsa\":\"2022-06-30\",\"jumlah_mahasiswa\":\"90\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 23:22:33\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15211, '2022-07-01 09:38:06', 22, 'updateData', 'role', '{\"id\":\"22\",\"role\":\"Bagian Kerjasama\",\"slug\":\"Bagian Kerjasama\",\"status\":\"ENABLE\",\"menu\":null,\"created_at\":\"2022-07-01 09:32:59\",\"updated_at\":null}'),
(15212, '2022-07-06 23:29:20', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Super Admin\",\"slug\":\"super admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"58\\\",\\\"71\\\",\\\"67\\\",\\\"53\\\",\\\"63\\\",\\\"77\\\",\\\"78\\\",\\\"73\\\",\\\"74\\\",\\\"64\\\",\\\"65\\\",\\\"79\\\",\\\"66\\\",\\\"68\\\",\\\"69\\\",\\\"70\\\",\\\"80\\\",\\\"81\\\",\\\"82\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"72\\\",\\\"75\\\",\\\"76\\\",\\\"18\\\",\\\"21\\\",\\\"23\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-06-07 14:55:19\"}'),
(15213, '2022-07-06 23:29:33', 22, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Super Admin\",\"slug\":\"super admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"54\\\",\\\"62\\\",\\\"59\\\",\\\"60\\\",\\\"61\\\",\\\"58\\\",\\\"71\\\",\\\"67\\\",\\\"53\\\",\\\"63\\\",\\\"77\\\",\\\"78\\\",\\\"73\\\",\\\"74\\\",\\\"64\\\",\\\"65\\\",\\\"79\\\",\\\"66\\\",\\\"68\\\",\\\"69\\\",\\\"70\\\",\\\"80\\\",\\\"81\\\",\\\"82\\\",\\\"39\\\",\\\"46\\\",\\\"51\\\",\\\"52\\\",\\\"55\\\",\\\"56\\\",\\\"57\\\",\\\"72\\\",\\\"75\\\",\\\"76\\\",\\\"18\\\",\\\"28\\\",\\\"21\\\",\\\"23\\\",\\\"20\\\",\\\"35\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2022-07-06 23:29:20\"}'),
(15214, '2022-07-06 23:34:02', 22, 'deleteData', 'file', '{\"id\":\"213\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"program_studi\",\"table_id\":\"3\",\"status\":\"ENABLE\",\"created_at\":\"2022-07-01 09:31:48\",\"updated_at\":null}'),
(15215, '2022-07-06 23:34:02', 22, 'deleteData', 'program_studi', '{\"id\":\"3\",\"jenis_program_id\":\"4\",\"nama_program_studi\":\"Sistem Informasi\",\"peringkat_akreditasi_id\":\"2\",\"no_tanggal_sk\":\"790-89879kljkjkjd\",\"tahun_semester\":\"0000\",\"tanggal_kadaluarsa\":\"2022-07-14\",\"jumlah_mahasiswa\":\"56\",\"status\":\"ENABLE\",\"created_at\":\"2022-07-01 09:31:48\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15216, '2022-07-06 23:41:00', 22, 'insertData', 'program_studi', '{\"jenis_program_id\":\"2\",\"nama_program_studi\":\"Teknik Informatika\",\"peringkat_akreditasi_id\":\"5\",\"no_tanggal_sk\":\"938240328424\",\"tahun_semester\":\"2022\",\"tanggal_kadaluarsa\":\"2024-07-03\",\"jumlah_mahasiswa\":\"100\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15217, '2022-07-07 00:07:30', 22, 'deleteData', 'file', '{\"id\":\"208\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"dosen\",\"table_id\":\"3\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 22:26:01\",\"updated_at\":null}'),
(15218, '2022-07-07 00:07:30', 22, 'deleteData', 'dosen', '{\"id\":\"3\",\"nama_dosen\":\"sdad\",\"nidn_nidk\":\"12434\",\"pendidikan_s2\":\"\",\"pendidikan_s3\":\"\",\"bidang_keahlian\":\"erw\",\"kesesuaian_kompetensi\":\"\",\"jabatan_akademik_id\":\"4\",\"sertifikat_pendidik_profesional\":\"ewr\",\"sertifikat_kompetensi\":\"ewr\",\"matkul_diampu_PS_akreditasi\":\"wr\",\"kesesuaian_keahlian\":\"wer\",\"matkul_diampu_PS_lain\":\"\",\"perusahaan\":\"\",\"pendidikan_tertinggi\":\"ew\",\"bobot_kredit\":\"\",\"tipe\":\"tidak tetap\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 22:26:01\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15219, '2022-07-07 00:07:38', 22, 'deleteData', 'file', '{\"id\":\"209\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"dosen\",\"table_id\":\"4\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 22:44:45\",\"updated_at\":null}'),
(15220, '2022-07-07 00:07:38', 22, 'deleteData', 'dosen', '{\"id\":\"4\",\"nama_dosen\":\"huda\",\"nidn_nidk\":\"23124\",\"pendidikan_s2\":\"\",\"pendidikan_s3\":\"\",\"bidang_keahlian\":\"sfaf\",\"kesesuaian_kompetensi\":\"\",\"jabatan_akademik_id\":\"0\",\"sertifikat_pendidik_profesional\":\"\",\"sertifikat_kompetensi\":\"af\",\"matkul_diampu_PS_akreditasi\":\"adf\",\"kesesuaian_keahlian\":\"\",\"matkul_diampu_PS_lain\":\"\",\"perusahaan\":\"dsaf\",\"pendidikan_tertinggi\":\"saf\",\"bobot_kredit\":\"fad\",\"tipe\":\"industri\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 22:44:45\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15221, '2022-07-07 00:07:48', 22, 'deleteData', 'mahasiswa_asing', '{\"id\":\"1\",\"program_studi_id\":\"2\",\"jumlah_mahasiswa_aktif_ts2\":\"23\",\"jumlah_mahasiswa_aktif_ts1\":\"123\",\"jumlah_mahasiswa_aktif_ts\":\"123\",\"jumlah_mahasiswa_asing_penuh_waktu_ts2\":\"546\",\"jumlah_mahasiswa_asing_penuh_waktu_ts1\":\"23\",\"jumlah_mahasiswa_asing_penuh_waktu_ts\":\"314\",\"jumlah_mahasiswa_asing_paruh_waktu_ts2\":\"5\",\"jumlah_mahasiswa_asing_paruh_waktu_ts1\":\"245\",\"jumlah_mahasiswa_asing_paruh_waktu_ts\":\"2\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 23:23:27\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15222, '2022-07-07 00:07:56', 22, 'deleteData', 'mahasiswa', '{\"id\":\"4\",\"nim\":\"311710014\",\"nama_mahasiswa\":\"mifta\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 21:26:33\",\"updated_at\":\"2022-06-06 21:27:33\",\"updated_by\":null,\"created_by\":\"22\"}'),
(15223, '2022-07-07 00:08:09', 22, 'deleteData', 'pnelitian_dtps', '{\"id\":\"1\",\"sumber_pembiayaan_id\":\"2\",\"jumlah_judul_penelitian_ts2\":\"5\",\"jumlah_judul_penelitian_ts1\":\"5\",\"jumlah_judul_penelitian_ts\":\"6\",\"jumlah\":\"16\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-07 00:12:12\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15224, '2022-07-07 00:08:15', 22, 'deleteData', 'pkm_dtps', '{\"id\":\"1\",\"sumber_pembiayaan_id\":\"3\",\"jumlah_judul_pkm_ts2\":\"6\",\"jumlah_judul_pkm_ts1\":\"6\",\"jumlah_judul_pkm_ts\":\"4\",\"jumlah\":\"16\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-07 00:40:37\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15225, '2022-07-07 00:08:21', 22, 'deleteData', 'publikasi_ilmiah_dtps', '{\"id\":\"1\",\"jenis_publikasi_id\":\"7\",\"jumlah_judul_ts2\":\"2\",\"jumlah_judul_ts1\":\"3\",\"jumlah_judul_ts\":\"5\",\"jumlah\":\"10\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 23:41:28\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15226, '2022-07-07 00:08:29', 22, 'deleteData', 'pagelaran_pameran_presentasi_publikasi_ilmiat_dtps', '{\"id\":\"1\",\"publikasi_ilmiah_id\":\"4\",\"jumlah_judul_ts2\":\"1\",\"jumlah_judul_ts1\":\"1\",\"jumlah_judul_ts\":\"1\",\"jumlah\":\"3\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 23:56:57\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15227, '2022-07-07 00:08:48', 22, 'deleteData', 'penelitian_pkm', '{\"id\":\"1\",\"judul\":\"Aplikasi deteksi tanaman\",\"nama_dosen_id\":\"4\",\"mata_kuliah_id\":\"1\",\"bentuk_integrasi\":\"abab\",\"tahun\":\"2020\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 23:03:02\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15228, '2022-07-07 00:09:14', 22, 'deleteData', 'penelitian_dtps_melibatkan_mahasiswa', '{\"id\":\"2\",\"nama_dosen_id\":\"4\",\"tema_penelitian_sesuai_roadmap\":\"aplikasi\",\"nama_mahasiswa_id\":\"4\",\"judul_kegiatan\":\"live in\",\"tahun\":\"2021\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 23:06:03\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15229, '2022-07-07 00:09:22', 22, 'deleteData', 'penelitian_dtps_menjadi_rujukan_tema_tesis_disertasi', '{\"id\":\"2\",\"nama_dosen_id\":\"4\",\"tema_penelitian_sesuai_roadmap\":\"aplikasi pintar\",\"nama_mahasiswa_id\":\"4\",\"judul_tesis_disertasi\":\"az\",\"tahun\":\"2021\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 23:06:46\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15230, '2022-07-07 00:09:31', 22, 'deleteData', 'pkm_dtps_melibatkan_mahasiswa', '{\"id\":\"1\",\"nama_dosen_id\":\"3\",\"tema_pkm_sesuai_roadmap\":\"sayur\",\"nama_mahasiswa_id\":\"4\",\"judul_kegiatan\":\"aplikasi sayur\",\"tahun\":\"2020\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-06 23:07:18\",\"updated_at\":null,\"updated_by\":null,\"created_by\":\"22\"}'),
(15231, '2022-07-07 00:17:45', 22, 'insertData', 'program_studi', '{\"jenis_program_id\":\"2\",\"nama_program_studi\":\"Sistem Informasi\",\"peringkat_akreditasi_id\":\"5\",\"no_tanggal_sk\":\"790-89879kljkjkjd\",\"tahun_semester\":\"2022\",\"tanggal_kadaluarsa\":\"2022-12-31\",\"jumlah_mahasiswa\":\"90\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15232, '2022-07-07 00:25:26', 22, 'insertData', 'dosen', '{\"nama_dosen\":\"bayu\",\"nidn_nidk\":\"12434\",\"pendidikan_s2\":\"a\",\"pendidikan_s3\":\"a\",\"bidang_keahlian\":\"it\",\"kesesuaian_kompetensi\":\"ya\",\"jabatan_akademik_id\":\"2\",\"sertifikat_pendidik_profesional\":\"a\",\"sertifikat_kompetensi\":\"a\",\"matkul_diampu_PS_akreditasi\":\"a\",\"kesesuaian_keahlian\":\"a\",\"matkul_diampu_PS_lain\":\"a\",\"tipe\":\"tetap\",\"nama_program_studi\":\"Teknik Informatika\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15233, '2022-07-07 00:25:26', 22, 'insertData', 'file', '{\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"dosen\",\"table_id\":5,\"status\":\"ENABLE\",\"created_at\":\"2022-07-07 00:25:26\"}'),
(15234, '2022-07-07 00:55:58', 22, 'insertData', 'ipk_lulusan', '{\"tahun_lulus\":\"2022\",\"jumlah_lulusan\":\"130\",\"ipk_min\":\"3\",\"ipk_rata_rata\":\"3.3\",\"ipk_maks\":\"3.7\",\"nama_program_studi\":\"Sistem Informasi\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15235, '2022-07-07 01:00:29', 22, 'insertData', 'dosen', '{\"nama_dosen\":\"huda\",\"nidn_nidk\":\"4656\",\"perusahaan\":\"PT\",\"pendidikan_tertinggi\":\"a\",\"bidang_keahlian\":\"a\",\"sertifikat_kompetensi\":\"a\",\"matkul_diampu_PS_akreditasi\":\"siko\",\"bobot_kredit\":\"3\",\"tipe\":\"industri\",\"nama_program_studi\":\"Sistem Informasi\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15236, '2022-07-07 01:00:29', 22, 'insertData', 'file', '{\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"dosen\",\"table_id\":6,\"status\":\"ENABLE\",\"created_at\":\"2022-07-07 01:00:29\"}'),
(15237, '2022-07-07 01:07:59', 22, 'insertData', 'karya_ilmiah_dtps_disitasi', '{\"nama_dosen_id\":\"5\",\"judul_artikel\":\"website akreditasi\",\"jumlah_sitasi\":\"30\",\"nama_program_studi\":\"Teknik Informatika\",\"tahun\":\"2022\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15238, '2022-07-07 01:29:54', 22, 'insertData', 'ipk_lulusan', '{\"tahun_lulus\":\"2022\",\"jumlah_lulusan\":\"134\",\"ipk_min\":\"3.1\",\"ipk_rata_rata\":\"3.6\",\"ipk_maks\":\"3.9\",\"nama_program_studi\":\"Teknik Informatika\",\"created_by\":\"22\",\"status\":\"ENABLE\"}'),
(15239, '2022-07-08 13:00:59', 22, 'deleteData', 'user', '{\"id\":\"24\",\"session_id\":null,\"username\":\"kemahasiswaan\",\"name\":\"Bagian Kemahasiswaan\",\"email\":\"kemahasiswaan@gmail.com\",\"password\":\"e3f2dc4db51cf0ee4afffa3779dd30c8\",\"role_id\":\"20\",\"role_slug\":\"Bagian Kemahasiswaan\",\"role_name\":\"Bagian Kemahasiswaan\",\"desc\":\"Bagian Kemahasiswaan\",\"status\":\"0\",\"wrong\":null,\"active\":null,\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-06-07 14:53:34\",\"updated_at\":null}'),
(15240, '2022-07-08 13:00:59', 22, 'deleteData', 'file', '{\"id\":\"211\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"user\",\"table_id\":\"24\",\"status\":\"ENABLE\",\"created_at\":\"2022-06-07 14:53:34\",\"updated_at\":null}'),
(15241, '2022-07-08 13:01:04', 22, 'deleteData', 'user', '{\"id\":\"26\",\"session_id\":null,\"username\":\"Kerjasama\",\"name\":\"Bagian Kerjasama\",\"email\":\"kejasama@gmail.com\",\"password\":\"638ea140b3b02821c47b2667037875be\",\"role_id\":\"22\",\"role_slug\":\"Bagian Kerjasama\",\"role_name\":\"Bagian Kerjasama\",\"desc\":\"Bagian Kerjasama\",\"status\":\"0\",\"wrong\":null,\"active\":null,\"token\":null,\"is_email\":\"0\",\"last_email\":null,\"created_at\":\"2022-07-01 09:36:17\",\"updated_at\":null}'),
(15242, '2022-07-08 13:01:04', 22, 'deleteData', 'file', '{\"id\":\"214\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"user\",\"table_id\":\"26\",\"status\":\"ENABLE\",\"created_at\":\"2022-07-01 09:36:17\",\"updated_at\":null}'),
(15243, '2022-07-08 13:08:22', 22, 'updateData', 'role', '{\"id\":\"20\",\"role\":\"Bagian Kemahasiswaan\",\"slug\":\"Bagian Kemahasiswaan\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"58\\\",\\\"71\\\",\\\"67\\\",\\\"80\\\",\\\"81\\\",\\\"82\\\"]\",\"created_at\":\"2022-01-12 18:58:32\",\"updated_at\":\"2022-06-07 14:52:20\"}'),
(15244, '2022-07-08 13:08:52', 22, 'updateData', 'role', '{\"id\":\"22\",\"role\":\"Bagian Kerjasama\",\"slug\":\"Bagian Kerjasama\",\"status\":\"ENABLE\",\"menu\":\"[\\\"53\\\"]\",\"created_at\":\"2022-07-01 09:32:59\",\"updated_at\":\"2022-07-01 09:38:06\"}'),
(15245, '2022-07-08 13:10:10', 22, 'updateData', 'role', '{\"id\":\"21\",\"role\":\"Asesor\",\"slug\":\"Asesor\",\"status\":\"ENABLE\",\"menu\":null,\"created_at\":\"2022-06-14 11:52:56\",\"updated_at\":null}'),
(15246, '2022-07-08 13:11:48', 22, 'updateData', 'role', '{\"id\":\"21\",\"role\":\"Asesor\",\"slug\":\"Asesor\",\"status\":\"ENABLE\",\"menu\":\"null\",\"created_at\":\"2022-06-14 11:52:56\",\"updated_at\":\"2022-07-08 13:10:10\"}');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa_asing`
--

CREATE TABLE `mahasiswa_asing` (
  `id` int(11) NOT NULL,
  `program_studi_id` int(11) NOT NULL,
  `jumlah_mahasiswa_aktif_ts2` int(11) NOT NULL,
  `jumlah_mahasiswa_aktif_ts1` int(11) NOT NULL,
  `jumlah_mahasiswa_aktif_ts` int(11) NOT NULL,
  `jumlah_mahasiswa_asing_penuh_waktu_ts2` int(11) NOT NULL,
  `jumlah_mahasiswa_asing_penuh_waktu_ts1` int(11) NOT NULL,
  `jumlah_mahasiswa_asing_penuh_waktu_ts` int(11) NOT NULL,
  `jumlah_mahasiswa_asing_paruh_waktu_ts2` int(11) NOT NULL,
  `jumlah_mahasiswa_asing_paruh_waktu_ts1` int(11) NOT NULL,
  `jumlah_mahasiswa_asing_paruh_waktu_ts` int(11) NOT NULL,
  `nama_program_studi` varchar(50) NOT NULL,
  `tahun` varchar(30) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id`, `kode`, `nama`, `status`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(1, 'IF0011372814', 'Pemrograman', 'ENABLE', '2022-06-06 23:02:38', NULL, NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `menu_master`
--

CREATE TABLE `menu_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `function` varchar(255) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  `parent` varchar(255) DEFAULT NULL,
  `notif` varchar(255) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_master`
--

INSERT INTO `menu_master` (`id`, `name`, `type`, `icon`, `link`, `function`, `urutan`, `parent`, `notif`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Beranda', 'menu', 'fa fa-dashboard', 'home', 'home/index', 5, '0', '', 'DISABLE', '2019-01-17 14:33:33', '2020-05-28 13:29:36'),
(21, 'Role Permission', 'menu', 'fa fa-info', '#', NULL, 26, '0', '', 'ENABLE', '2020-01-22 11:47:49', NULL),
(39, 'Master', 'label', '', '', '', 22, '0', '', 'ENABLE', '2021-01-25 18:29:46', NULL),
(18, 'User', 'menu', 'fa fa-users', 'master/user', 'master/user/index', 24, '0', '', 'ENABLE', '2019-12-02 07:53:51', '2020-05-28 13:30:19'),
(20, 'Konfigurasi', 'menu', 'fa fa-gears', 'master/konfig', 'master/konfig/index', 27, '0', '', 'ENABLE', '2020-01-22 11:35:29', '2020-05-28 08:56:05'),
(22, 'Master Menu', 'menu', 'fa fa-circle', 'master/menu_master', 'master/menu_master/index', 1, '21', '', 'ENABLE', '2020-01-22 11:49:09', '2020-05-28 13:30:00'),
(23, 'Role', 'menu', 'fa fa-info', 'master/role', 'master/role/index', 2, '21', '', 'ENABLE', '2020-01-22 12:07:17', '2020-05-28 08:59:11'),
(28, 'KONFIGURASI', 'label', '', '', NULL, 25, '0', '', 'ENABLE', '2020-05-18 10:45:34', NULL),
(29, 'Menu', 'label', '', '', NULL, 1, '0', '', 'ENABLE', '2020-05-18 10:46:48', NULL),
(35, 'CRUD Generator', 'menu', 'fa fa-refresh', 'crud', 'crud/index', 28, '0', '', 'ENABLE', '2020-09-17 11:10:37', NULL),
(50, 'Kelas', 'menu', 'fa fa-home', 'master/kelas', 'master/kelas/index', 4, '46', '', 'DISABLE', '2022-01-12 19:14:13', NULL),
(46, 'Master Data', 'menu', 'fa fa-database', '#', 'access/index', 23, '0', '', 'ENABLE', '2021-09-27 20:05:51', NULL),
(49, 'Jurusan', 'menu', 'fa fa-home', 'master/jurusan', 'master/jurusan/index', 3, '46', '', 'DISABLE', '2022-01-12 19:13:59', NULL),
(51, 'Jenis Program', 'menu', 'fa fa-list', 'master/jenis_program', 'master/jenis_program/index', 2, '46', '', 'ENABLE', '2022-02-10 21:23:25', NULL),
(52, 'Peringkat Akreditasi', 'menu', 'fa fa-star', 'master/peringkat_akreditasi', 'master/peringkat_akreditasi/index', 5, '46', '', 'ENABLE', '2022-02-10 21:29:57', NULL),
(53, 'Kerjasama', 'menu', 'fa fa-hand-peace-o', 'master/kerjasama', 'master/kerjasama/index', 7, '0', '', 'ENABLE', '2022-05-20 22:21:05', NULL),
(54, 'Program Studi', 'menu', 'fa fa-archive', 'master/program_studi', 'master/program_studi/index', 2, '0', '', 'ENABLE', '2022-05-20 22:47:19', NULL),
(55, 'Mata Kuliah', 'menu', 'fa fa-book', 'master/mata_kuliah', 'master/mata_kuliah/index', 6, '46', '', 'ENABLE', '2022-05-20 23:05:20', NULL),
(56, 'Jabatan Akademik', 'menu', 'fa fa-archive', 'master/jabatan_akademik', 'master/jabatan_akademik/index', 3, '46', '', 'ENABLE', '2022-05-22 20:46:14', NULL),
(57, 'Tahun Akademik', 'menu', 'fa fa-calendar-check-o', 'master/tahun_akademik', 'master/tahun_akademik/index', 4, '46', '', 'ENABLE', '2022-05-22 20:52:44', NULL),
(58, 'Seleksi Mahasiswa Baru', 'menu', 'fa fa-user-plus', 'master/seleksi_mahasiswa_baru', 'master/seleksi_mahasiswa_baru/index', 5, '0', '', 'ENABLE', '2022-05-22 21:07:37', NULL),
(59, 'Dosen Tetap', 'menu', 'fa fa-user-circle', 'master/dosen', 'master/dosen/index', 1, '62', '', 'ENABLE', '2022-05-24 21:07:31', '2022-05-24 22:24:46'),
(60, 'Dosen Tidak Tetap', 'menu', 'fa fa-plane', 'master/dosen_tidaktetap', 'master/dosen_tidaktetap/index', 2, '62', '', 'ENABLE', '2022-05-24 22:26:00', NULL),
(61, 'Dosen Industri', 'menu', 'fa fa-plane', 'master/dosen_industri', 'master/dosen_industri/index', 3, '62', '', 'ENABLE', '2022-05-24 22:26:28', NULL),
(62, 'Dosen', 'menu', 'fa fa-plane', 'master/dosen', 'master/dosen/index', 3, '0', '', 'ENABLE', '2022-05-24 22:31:42', NULL),
(63, 'Pengakuan / Rekognisi DTPS', 'menu', 'fa fa-align-left', 'master/rekognisi_dtps', 'master/rekognisi_dtps/index', 4, '0', '', 'ENABLE', '2022-06-06 19:23:55', NULL),
(64, 'Karya Ilmiah DTPS yang Disitasi', 'menu', 'fa fa-bookmark', 'master/karya_ilmiah_dtps_disitasi', 'master/karya_ilmiah_dtps_disitasi/index', 17, '0', '', 'ENABLE', '2022-06-06 19:33:04', NULL),
(65, 'Produk/Jasa Dtps Diadopsi Oleh Industri/Masyarakat', 'menu', 'fa fa-check', 'master/produk_jasa_dtps_yang_diadopsi_oleh_industri_masyarakat', 'master/produk_jasa_dtps_yang_diadopsi_oleh_industri_masyarakat/index', 18, '0', '', 'ENABLE', '2022-06-06 19:43:25', NULL),
(66, 'Penelitian / PKM', 'menu', 'fa fa-search', 'master/penelitian_pkm', 'master/penelitian_pkm/index', 12, '0', '', 'ENABLE', '2022-06-06 19:52:18', NULL),
(67, 'Mahasiswa', 'menu', 'fa fa-users', 'master/mahasiswa', 'master/mahasiswa/index', 1, '46', '', 'ENABLE', '2022-06-06 20:44:35', NULL),
(68, 'Penelitian DTPS Melibatkan Mahasiswa', 'menu', 'fa fa-search-plus', 'master/penelitian_dtps_melibatkan_mahasiswa', 'master/penelitian_dtps_melibatkan_mahasiswa/index', 11, '0', '', 'ENABLE', '2022-06-06 20:45:09', NULL),
(69, 'Penelitian Dtps Menjadi Rujukan Tema Tesis / Disertasi', 'menu', 'fa fa-search-plus', 'master/penelitian_dtps_menjadi_rujukan_tema_tesis_disertasi', 'master/penelitian_dtps_menjadi_rujukan_tema_tesis_disertasi/index', 10, '0', '', 'ENABLE', '2022-06-06 20:53:15', NULL),
(70, 'PKM DTPS Melibatkan Mahasiswa', 'menu', 'fa fa-bookmark-o', 'master/pkm_dtps_melibatkan_mahasiswa', 'master/pkm_dtps_melibatkan_mahasiswa/index', 14, '0', '', 'ENABLE', '2022-06-06 20:59:00', NULL),
(71, 'Mahasiswa Asing', 'menu', 'fa fa-users', 'master/mahasiswa_asing', 'master/mahasiswa_asing/index', 6, '0', '', 'ENABLE', '2022-06-06 23:30:42', NULL),
(72, 'Jenis Publikasi Ilmiah DTPS', 'menu', 'fa fa-pencil', 'master/jenis_publikasi_ilmiah_dtps', 'master/jenis_publikasi_ilmiah_dtps/index', 7, '46', '', 'ENABLE', '2022-06-06 23:38:15', NULL),
(73, 'Publikasi Ilmiah DTPS', 'menu', 'fa fa-anchor', 'master/publikasi_ilmiah_dtps', 'master/publikasi_ilmiah_dtps/index', 15, '0', '', 'ENABLE', '2022-06-06 23:45:17', NULL),
(74, 'Pagelaran/Pameran/Presentasi/Publikasi Ilmiah DTPS', 'menu', 'fa fa-anchor', 'master/pagelaran_pameran_presentasi_publikasi_ilmiat_dtps', 'master/pagelaran_pameran_presentasi_publikasi_ilmiat_dtps/index', 16, '0', '', 'ENABLE', '2022-06-07 00:00:03', NULL),
(75, 'Jenis Publikasi', 'menu', 'fa fa-pencil', 'master/jenis_publikasi', 'master/jenis_publikasi/index', 8, '46', '', 'ENABLE', '2022-06-07 00:00:44', NULL),
(76, 'Sumber Pembiayaan', 'menu', 'fa fa-pencil', 'master/sumber_pembiayaan', 'master/sumber_pembiayaan/index', 9, '46', '', 'ENABLE', '2022-06-07 00:07:59', NULL),
(77, 'Penelitian DTPS', 'menu', 'fa fa-search', 'master/pnelitian_dtps', 'master/pnelitian_dtps/index', 9, '0', '', 'ENABLE', '2022-06-07 00:14:39', NULL),
(78, 'PKM DTPS', 'menu', 'fa fa-search', 'master/pkm_dtps', 'master/pkm_dtps/index', 13, '0', '', 'ENABLE', '2022-06-07 00:42:04', NULL),
(79, 'Kurikulum, Capaian  & Rencana Pembelajaran', 'menu', 'fa fa-book', 'master/kurikulum_capaian_rencana_pembelajaran', 'master/kurikulum_capaian_rencana_pembelajaran/index', 8, '0', '', 'ENABLE', '2022-06-07 14:28:06', NULL),
(80, 'IPK Lulusan', 'menu', 'fa fa-graduation-cap', 'master/ipk_lulusan', 'master/ipk_lulusan/index', 19, '0', '', 'ENABLE', '2022-06-07 14:37:39', NULL),
(81, 'Prestasi Akademik Mahasiswa', 'menu', 'fa fa-trophy', 'master/prestasi_akademik_mahasiswa', 'master/prestasi_akademik_mahasiswa/index', 20, '0', '', 'ENABLE', '2022-06-07 14:46:23', NULL),
(82, 'Prestasi Non Akademik Mahasiswa', 'menu', 'fa fa-trophy', 'master/prestasi_non_akademik', 'master/prestasi_non_akademik/index', 21, '0', '', 'ENABLE', '2022-06-07 14:46:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pagelaran_pameran_presentasi_publikasi_ilmiat_dtps`
--

CREATE TABLE `pagelaran_pameran_presentasi_publikasi_ilmiat_dtps` (
  `id` int(11) NOT NULL,
  `publikasi_ilmiah_id` int(11) NOT NULL,
  `jumlah_judul_ts2` int(11) NOT NULL,
  `jumlah_judul_ts1` int(11) NOT NULL,
  `jumlah_judul_ts` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama_program_studi` varchar(50) NOT NULL,
  `tahun` varchar(30) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penelitian_dtps_melibatkan_mahasiswa`
--

CREATE TABLE `penelitian_dtps_melibatkan_mahasiswa` (
  `id` int(11) NOT NULL,
  `nama_dosen_id` int(11) NOT NULL,
  `tema_penelitian_sesuai_roadmap` varchar(100) NOT NULL,
  `nama_mahasiswa_id` int(11) NOT NULL,
  `judul_kegiatan` varchar(100) NOT NULL,
  `tahun` year(4) NOT NULL,
  `nama_program_studi` varchar(50) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penelitian_dtps_menjadi_rujukan_tema_tesis_disertasi`
--

CREATE TABLE `penelitian_dtps_menjadi_rujukan_tema_tesis_disertasi` (
  `id` int(11) NOT NULL,
  `nama_dosen_id` int(11) NOT NULL,
  `tema_penelitian_sesuai_roadmap` varchar(100) NOT NULL,
  `nama_mahasiswa_id` int(11) NOT NULL,
  `judul_tesis_disertasi` varchar(100) NOT NULL,
  `tahun` year(4) NOT NULL,
  `nama_program_studi` varchar(50) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penelitian_pkm`
--

CREATE TABLE `penelitian_pkm` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `nama_dosen_id` int(11) NOT NULL,
  `mata_kuliah_id` int(11) NOT NULL,
  `bentuk_integrasi` varchar(100) NOT NULL,
  `tahun` year(4) NOT NULL,
  `nama_program_studi` varchar(50) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `peringkat_akreditasi`
--

CREATE TABLE `peringkat_akreditasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peringkat_akreditasi`
--

INSERT INTO `peringkat_akreditasi` (`id`, `nama`, `status`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(1, 'Unggul', 'ENABLE', '2022-02-10 21:28:17', NULL, NULL, 22),
(2, 'A', 'ENABLE', '2022-02-10 21:32:44', NULL, NULL, 22),
(3, 'Baik Sekali', 'ENABLE', '2022-04-08 08:34:29', NULL, NULL, 22),
(4, 'B', 'ENABLE', '2022-04-08 08:35:03', NULL, NULL, 22),
(5, 'Baik', 'ENABLE', '2022-04-08 08:35:11', NULL, NULL, 22),
(6, 'C', 'ENABLE', '2022-04-08 08:35:19', NULL, NULL, 22),
(7, 'Minimum', 'ENABLE', '2022-04-08 08:35:27', NULL, NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `pkm_dtps`
--

CREATE TABLE `pkm_dtps` (
  `id` int(11) NOT NULL,
  `sumber_pembiayaan_id` int(11) NOT NULL,
  `jumlah_judul_pkm_ts2` int(11) NOT NULL,
  `jumlah_judul_pkm_ts1` int(11) NOT NULL,
  `jumlah_judul_pkm_ts` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama_program_studi` varchar(50) NOT NULL,
  `tahun` varchar(30) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pkm_dtps_melibatkan_mahasiswa`
--

CREATE TABLE `pkm_dtps_melibatkan_mahasiswa` (
  `id` int(11) NOT NULL,
  `nama_dosen_id` int(11) NOT NULL,
  `tema_pkm_sesuai_roadmap` varchar(100) NOT NULL,
  `nama_mahasiswa_id` int(11) NOT NULL,
  `judul_kegiatan` varchar(100) NOT NULL,
  `tahun` year(4) NOT NULL,
  `nama_program_studi` varchar(50) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pnelitian_dtps`
--

CREATE TABLE `pnelitian_dtps` (
  `id` int(11) NOT NULL,
  `sumber_pembiayaan_id` int(11) NOT NULL,
  `jumlah_judul_penelitian_ts2` int(11) NOT NULL,
  `jumlah_judul_penelitian_ts1` int(11) NOT NULL,
  `jumlah_judul_penelitian_ts` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama_program_studi` varchar(50) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prestasi_akademik_mahasiswa`
--

CREATE TABLE `prestasi_akademik_mahasiswa` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(100) NOT NULL,
  `waktu_perolehan` year(4) NOT NULL,
  `tingkat` enum('Lokal','Nasional','Internasional') NOT NULL,
  `prestasi_yang_dicapai` varchar(100) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prestasi_non_akademik`
--

CREATE TABLE `prestasi_non_akademik` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(100) NOT NULL,
  `waktu_perolehan` year(4) NOT NULL,
  `tingkat` enum('Lokal','Nasional','Internasional') NOT NULL,
  `prestasi_yang_dicapai` varchar(100) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produk_jasa_dtps_yang_diadopsi_oleh_industri_masyarakat`
--

CREATE TABLE `produk_jasa_dtps_yang_diadopsi_oleh_industri_masyarakat` (
  `id` int(11) NOT NULL,
  `nama_dosen_id` int(11) NOT NULL,
  `nama_produk_jasa` varchar(100) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `bukti` varchar(100) NOT NULL,
  `tahun` year(4) NOT NULL,
  `nama_program_studi` varchar(50) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `program_studi`
--

CREATE TABLE `program_studi` (
  `id` int(11) NOT NULL,
  `jenis_program_id` int(11) NOT NULL,
  `nama_program_studi` varchar(150) NOT NULL,
  `peringkat_akreditasi_id` int(11) NOT NULL,
  `no_tanggal_sk` varchar(150) NOT NULL,
  `tahun_semester` year(4) NOT NULL,
  `tanggal_kadaluarsa` date NOT NULL,
  `jumlah_mahasiswa` int(11) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program_studi`
--

INSERT INTO `program_studi` (`id`, `jenis_program_id`, `nama_program_studi`, `peringkat_akreditasi_id`, `no_tanggal_sk`, `tahun_semester`, `tanggal_kadaluarsa`, `jumlah_mahasiswa`, `status`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(4, 2, 'Teknik Informatika', 5, '938240328424', 2022, '2024-07-03', 100, 'ENABLE', '2022-07-06 23:41:00', NULL, NULL, 22),
(5, 2, 'Sistem Informasi', 5, '790-89879kljkjkjd', 2022, '2022-12-31', 90, 'ENABLE', '2022-07-07 00:17:45', NULL, NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `publikasi_ilmiah_dtps`
--

CREATE TABLE `publikasi_ilmiah_dtps` (
  `id` int(11) NOT NULL,
  `jenis_publikasi_id` int(11) NOT NULL,
  `jumlah_judul_ts2` int(11) NOT NULL,
  `jumlah_judul_ts1` int(11) NOT NULL,
  `jumlah_judul_ts` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama_program_studi` varchar(50) NOT NULL,
  `tahun` varchar(30) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rekognisi_dtps`
--

CREATE TABLE `rekognisi_dtps` (
  `id` int(11) NOT NULL,
  `nama_dosen_id` int(11) NOT NULL,
  `bidang_keahlian` varchar(100) NOT NULL,
  `rekognisi_bukti_pendukung` varchar(100) NOT NULL,
  `tingkat` enum('wilayah','nasional','internasional','') NOT NULL,
  `tahun` year(4) NOT NULL,
  `nama_program_studi` varchar(50) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `status` enum('DISABLE','ENABLE') DEFAULT NULL,
  `menu` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`, `slug`, `status`, `menu`, `created_at`, `updated_at`) VALUES
(17, 'Super Admin', 'super admin', 'ENABLE', '[\"29\",\"54\",\"62\",\"59\",\"60\",\"61\",\"58\",\"71\",\"67\",\"53\",\"63\",\"77\",\"78\",\"73\",\"74\",\"64\",\"65\",\"79\",\"66\",\"68\",\"69\",\"70\",\"80\",\"81\",\"82\",\"39\",\"46\",\"51\",\"52\",\"55\",\"56\",\"57\",\"72\",\"75\",\"76\",\"18\",\"28\",\"21\",\"22\",\"23\",\"20\",\"35\"]', '2018-10-12 17:03:59', '2022-07-06 23:29:33'),
(20, 'LPPM', 'LPPM', 'ENABLE', '[\"29\",\"77\",\"69\",\"68\",\"66\",\"78\",\"70\",\"73\",\"74\",\"64\",\"65\"]', '2022-01-12 18:58:32', '2022-07-08 13:08:22'),
(21, 'Asesor', 'Asesor', 'ENABLE', 'null', '2022-06-14 11:52:56', '2022-07-08 13:11:48'),
(22, 'KKUI', 'KKUI', 'ENABLE', '[\"29\",\"53\"]', '2022-07-01 09:32:59', '2022-07-08 13:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `seleksi_mahasiswa_baru`
--

CREATE TABLE `seleksi_mahasiswa_baru` (
  `id` int(11) NOT NULL,
  `tahun_akademik` int(11) NOT NULL,
  `daya_tampung` int(11) NOT NULL,
  `pendaftar` int(11) NOT NULL,
  `lulus_seleksi` int(11) NOT NULL,
  `maba_reguler` int(11) NOT NULL,
  `maba_transfer` int(11) NOT NULL,
  `mahasiswa_aktif_reguler` int(11) NOT NULL,
  `mahasiswa_aktif_transfer` int(11) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `session_login`
--

CREATE TABLE `session_login` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sumber_pembiayaan`
--

CREATE TABLE `sumber_pembiayaan` (
  `id` int(11) NOT NULL,
  `sumber_pembiayaan` varchar(100) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sumber_pembiayaan`
--

INSERT INTO `sumber_pembiayaan` (`id`, `sumber_pembiayaan`, `status`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(1, 'Perguruan Tinggi', 'ENABLE', '2022-06-07 00:05:51', NULL, NULL, 22),
(2, 'Mandiri', 'ENABLE', '2022-06-07 00:05:58', NULL, NULL, 22),
(3, 'Lembaga dalam negeri (diluar PT)', 'ENABLE', '2022-06-07 00:06:07', NULL, NULL, 22),
(4, 'Lembaga luar negeri', 'ENABLE', '2022-06-07 00:06:17', NULL, NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `tahun_akademik`
--

CREATE TABLE `tahun_akademik` (
  `id` int(11) NOT NULL,
  `tahun_akademik` varchar(50) NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tahun_akademik`
--

INSERT INTO `tahun_akademik` (`id`, `tahun_akademik`, `status`, `created_at`, `updated_at`, `updated_by`, `created_by`) VALUES
(1, 'TS', 'ENABLE', '2022-05-22 20:51:10', NULL, NULL, 22),
(2, 'TS-1', 'ENABLE', '2022-05-22 20:51:19', NULL, NULL, 22),
(3, 'TS-2', 'ENABLE', '2022-05-22 20:51:29', NULL, NULL, 22),
(4, 'TS-3', 'ENABLE', '2022-05-22 20:51:38', NULL, NULL, 22),
(5, 'TS-4', 'ENABLE', '2022-05-22 20:51:46', NULL, NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `role_slug` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `wrong` int(11) DEFAULT NULL,
  `active` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `is_email` int(11) DEFAULT 0,
  `last_email` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `session_id`, `username`, `name`, `email`, `password`, `role_id`, `role_slug`, `role_name`, `desc`, `status`, `wrong`, `active`, `token`, `is_email`, `last_email`, `created_at`, `updated_at`) VALUES
(22, NULL, 'admin', 'Administrator', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', 17, 'admin', 'Admin', '-', '0', 0, '2022-06-06 20:31:01', NULL, 0, NULL, '2022-01-12 18:31:04', '2022-05-25 11:08:51'),
(25, NULL, 'asesor', 'Asesor', 'asesor@gmail.com', 'da113d70eb6bba2b1f007869b773907d', 21, 'Asesor', 'Asesor', '-', '0', NULL, NULL, NULL, 0, NULL, '2022-06-14 11:53:56', NULL),
(27, NULL, 'LPM', 'Lembaga Penjaminan Mutu', 'lpm@machung.ac.id', '2233426e3218e32d5e0a2d143d8399f4', 17, 'super admin', 'Super Admin', 'LPM', '0', NULL, NULL, NULL, 0, NULL, '2022-07-08 13:06:51', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_login`
--
ALTER TABLE `failed_login`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ipk_lulusan`
--
ALTER TABLE `ipk_lulusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan_akademik`
--
ALTER TABLE `jabatan_akademik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_program`
--
ALTER TABLE `jenis_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_publikasi`
--
ALTER TABLE `jenis_publikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_publikasi_ilmiah_dtps`
--
ALTER TABLE `jenis_publikasi_ilmiah_dtps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karya_ilmiah_dtps_disitasi`
--
ALTER TABLE `karya_ilmiah_dtps_disitasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kerjasama`
--
ALTER TABLE `kerjasama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konfig`
--
ALTER TABLE `konfig`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kurikulum_capaian_rencana_pembelajaran`
--
ALTER TABLE `kurikulum_capaian_rencana_pembelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`log_id`) USING BTREE;

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa_asing`
--
ALTER TABLE `mahasiswa_asing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_master`
--
ALTER TABLE `menu_master`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pagelaran_pameran_presentasi_publikasi_ilmiat_dtps`
--
ALTER TABLE `pagelaran_pameran_presentasi_publikasi_ilmiat_dtps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penelitian_dtps_melibatkan_mahasiswa`
--
ALTER TABLE `penelitian_dtps_melibatkan_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penelitian_dtps_menjadi_rujukan_tema_tesis_disertasi`
--
ALTER TABLE `penelitian_dtps_menjadi_rujukan_tema_tesis_disertasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penelitian_pkm`
--
ALTER TABLE `penelitian_pkm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peringkat_akreditasi`
--
ALTER TABLE `peringkat_akreditasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkm_dtps`
--
ALTER TABLE `pkm_dtps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkm_dtps_melibatkan_mahasiswa`
--
ALTER TABLE `pkm_dtps_melibatkan_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pnelitian_dtps`
--
ALTER TABLE `pnelitian_dtps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prestasi_akademik_mahasiswa`
--
ALTER TABLE `prestasi_akademik_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prestasi_non_akademik`
--
ALTER TABLE `prestasi_non_akademik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_jasa_dtps_yang_diadopsi_oleh_industri_masyarakat`
--
ALTER TABLE `produk_jasa_dtps_yang_diadopsi_oleh_industri_masyarakat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publikasi_ilmiah_dtps`
--
ALTER TABLE `publikasi_ilmiah_dtps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekognisi_dtps`
--
ALTER TABLE `rekognisi_dtps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`,`created_at`) USING BTREE;

--
-- Indexes for table `seleksi_mahasiswa_baru`
--
ALTER TABLE `seleksi_mahasiswa_baru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_login`
--
ALTER TABLE `session_login`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sumber_pembiayaan`
--
ALTER TABLE `sumber_pembiayaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_login`
--
ALTER TABLE `failed_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `ipk_lulusan`
--
ALTER TABLE `ipk_lulusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jabatan_akademik`
--
ALTER TABLE `jabatan_akademik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jenis_program`
--
ALTER TABLE `jenis_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jenis_publikasi`
--
ALTER TABLE `jenis_publikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jenis_publikasi_ilmiah_dtps`
--
ALTER TABLE `jenis_publikasi_ilmiah_dtps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `karya_ilmiah_dtps_disitasi`
--
ALTER TABLE `karya_ilmiah_dtps_disitasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kerjasama`
--
ALTER TABLE `kerjasama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `konfig`
--
ALTER TABLE `konfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `kurikulum_capaian_rencana_pembelajaran`
--
ALTER TABLE `kurikulum_capaian_rencana_pembelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15247;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mahasiswa_asing`
--
ALTER TABLE `mahasiswa_asing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_master`
--
ALTER TABLE `menu_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `pagelaran_pameran_presentasi_publikasi_ilmiat_dtps`
--
ALTER TABLE `pagelaran_pameran_presentasi_publikasi_ilmiat_dtps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penelitian_dtps_melibatkan_mahasiswa`
--
ALTER TABLE `penelitian_dtps_melibatkan_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penelitian_dtps_menjadi_rujukan_tema_tesis_disertasi`
--
ALTER TABLE `penelitian_dtps_menjadi_rujukan_tema_tesis_disertasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penelitian_pkm`
--
ALTER TABLE `penelitian_pkm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `peringkat_akreditasi`
--
ALTER TABLE `peringkat_akreditasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pkm_dtps`
--
ALTER TABLE `pkm_dtps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pkm_dtps_melibatkan_mahasiswa`
--
ALTER TABLE `pkm_dtps_melibatkan_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pnelitian_dtps`
--
ALTER TABLE `pnelitian_dtps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prestasi_akademik_mahasiswa`
--
ALTER TABLE `prestasi_akademik_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prestasi_non_akademik`
--
ALTER TABLE `prestasi_non_akademik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk_jasa_dtps_yang_diadopsi_oleh_industri_masyarakat`
--
ALTER TABLE `produk_jasa_dtps_yang_diadopsi_oleh_industri_masyarakat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `program_studi`
--
ALTER TABLE `program_studi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `publikasi_ilmiah_dtps`
--
ALTER TABLE `publikasi_ilmiah_dtps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rekognisi_dtps`
--
ALTER TABLE `rekognisi_dtps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `seleksi_mahasiswa_baru`
--
ALTER TABLE `seleksi_mahasiswa_baru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session_login`
--
ALTER TABLE `session_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `sumber_pembiayaan`
--
ALTER TABLE `sumber_pembiayaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
