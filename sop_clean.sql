-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 12, 2022 at 07:24 PM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sop_clean`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_login`
--

CREATE TABLE `failed_login` (
  `id` int NOT NULL,
  `ip_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `failed_login`
--

INSERT INTO `failed_login` (`id`, `ip_address`, `date`) VALUES
(14, '139.193.221.242', '2020-09-18 15:41:04'),
(17, '139.193.221.242', '2020-09-18 15:42:46'),
(18, '139.193.221.242', '2020-09-18 15:43:39'),
(19, '139.193.221.242', '2020-09-18 17:07:32'),
(20, '::1', '2020-09-18 17:11:24'),
(21, '::1', '2020-09-18 17:11:24'),
(22, '139.193.221.242', '2020-09-18 17:23:27'),
(23, '180.242.181.210', '2020-09-18 17:25:38'),
(24, '180.242.181.210', '2020-09-18 17:25:42'),
(25, '180.242.181.210', '2020-09-18 17:32:30'),
(26, '180.242.181.210', '2020-09-18 17:32:48'),
(27, '180.242.181.210', '2020-09-18 17:32:56'),
(28, '36.70.11.212', '2020-09-21 13:46:07'),
(29, '36.70.11.212', '2020-09-21 13:46:14'),
(30, '140.0.29.54', '2021-07-23 14:12:47'),
(32, '::1', '2021-09-20 20:21:15'),
(33, '125.166.159.69', '2021-10-11 13:57:55'),
(34, '127.0.0.1', '2022-01-12 18:47:39'),
(35, '127.0.0.1', '2022-01-12 18:47:42'),
(36, '127.0.0.1', '2022-01-12 19:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mime` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `dir` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `table` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `table_id` int DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `name`, `mime`, `dir`, `table`, `table_id`, `status`, `created_at`, `updated_at`) VALUES
(202, '6950c16c9bcc6995f376b297f163175965469.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175965469.jpg', 'user', 22, 'ENABLE', '2022-01-12 18:31:04', '2022-01-12 18:32:56'),
(203, '6950c16c9bcc6995f376b297f163175959659.png', 'image/png', 'webfile/6950c16c9bcc6995f376b297f163175959659.png', 'user', 23, 'ENABLE', '2022-01-12 18:59:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `konfig`
--

CREATE TABLE `konfig` (
  `id` int NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `status` enum('ENABLE','DISABLE') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `konfig`
--

INSERT INTO `konfig` (`id`, `slug`, `value`, `status`, `created_at`, `updated_at`) VALUES
(6, 'APPLICATION', 'Godzillab App', 'ENABLE', '2019-02-18 15:28:44', '2020-07-16 22:42:17'),
(7, 'LOGO', 'data:image/png;base64,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', 'ENABLE', '2019-02-18 15:29:32', '2020-09-17 15:59:29'),
(8, 'LOGIN_BACKGROUND', 'background-image: url(\'https://images.unsplash.com/photo-1585241645927-c7a8e5840c42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80\');background-size: cover;background-position: center;', 'ENABLE', '2019-02-18 15:29:52', '2019-04-29 10:57:19'),
(9, 'COLOR_HEADER', 'background: linear-gradient(to right,#0052D4,#65C7F7);', 'DISABLE', '2019-02-18 15:30:24', '2019-02-18 15:31:08'),
(10, 'VERSION', '1.0.0', 'ENABLE', '2019-02-18 15:30:39', NULL),
(11, 'COPYRIGHT', '© 2019 <a href=\"http://smartsoftstudio.com/\" target=\"_blank\">SmartSoft Studio</a>.</strong> All rights     reserved.', 'ENABLE', '2019-02-18 15:32:01', '2019-02-19 10:27:32'),
(12, 'SKIN', 'skin-black', 'ENABLE', '2019-02-18 15:34:01', '2020-07-16 22:42:34'),
(13, 'TITLE_APPLICATION', 'Godzillab App', 'ENABLE', '2019-02-18 15:39:54', '2020-01-13 14:49:04'),
(14, 'APPLICATION_SMALL', 'GZB', 'ENABLE', '2019-02-18 15:42:41', '2019-02-18 15:43:24'),
(15, 'LOGIN_BOX', 'background : #000 !important ; ', 'ENABLE', '2019-02-18 15:45:53', '2019-02-18 15:58:53'),
(16, 'TITLE_LOGIN_APPLICATION', 'Godzillab App', 'ENABLE', '2019-02-18 15:47:41', '2020-01-13 14:49:15'),
(17, 'LOGIN_TITLE', 'Godzillab App', 'ENABLE', '2019-02-18 15:48:55', '2020-01-13 14:48:52'),
(24, 'LOGIN', '0', 'ENABLE', '2019-02-21 14:12:14', '2019-12-02 13:18:52'),
(27, 'CAPTCHA', '1', 'ENABLE', '2020-09-17 16:00:18', '2020-09-18 17:29:48'),
(28, 'FAIL_ATTEMP', '0', 'ENABLE', '2020-09-17 16:00:50', NULL),
(29, 'EMAIL_VERIFICATION', '0', 'ENABLE', NULL, NULL),
(30, 'REGISTER', '0', 'ENABLE', NULL, NULL),
(31, 'ONE_TIME_LOGIN', '1', 'ENABLE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `log_id` int NOT NULL,
  `log_created_at` datetime DEFAULT NULL,
  `log_created_by` int DEFAULT NULL,
  `log_action` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `log_tablename` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `log_jsondata` text CHARACTER SET latin1 COLLATE latin1_swedish_ci
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
(14753, '2022-01-12 19:22:46', 22, 'updateData', 'role', '{\"id\":\"20\",\"role\":\"Mahasiswa\",\"slug\":\"mahasiswa\",\"status\":\"ENABLE\",\"menu\":\"[\\\"39\\\",\\\"29\\\",\\\"46\\\",\\\"50\\\",\\\"49\\\"]\",\"created_at\":\"2022-01-12 18:58:32\",\"updated_at\":\"2022-01-12 19:20:38\"}');

-- --------------------------------------------------------

--
-- Table structure for table `menu_master`
--

CREATE TABLE `menu_master` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `type` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `function` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `urutan` int DEFAULT NULL,
  `parent` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `notif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_master`
--

INSERT INTO `menu_master` (`id`, `name`, `type`, `icon`, `link`, `function`, `urutan`, `parent`, `notif`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Beranda', 'menu', 'fa fa-dashboard', 'home', 'home/index', 5, '0', '', 'DISABLE', '2019-01-17 14:33:33', '2020-05-28 13:29:36'),
(21, 'Role Permission', 'menu', 'fa fa-info', '#', NULL, 5, '0', '', 'ENABLE', '2020-01-22 11:47:49', NULL),
(39, 'Master', 'label', '', '', '', 2, '0', '', 'ENABLE', '2021-01-25 18:29:46', NULL),
(18, 'User', 'menu', 'fa fa-users', 'master/user', 'master/user/index', 7, '0', '', 'ENABLE', '2019-12-02 07:53:51', '2020-05-28 13:30:19'),
(20, 'Konfigurasi', 'menu', 'fa fa-gears', 'master/konfig', 'master/konfig/index', 6, '0', '', 'ENABLE', '2020-01-22 11:35:29', '2020-05-28 08:56:05'),
(22, 'Master Menu', 'menu', 'fa fa-circle', 'master/menu_master', 'master/menu_master/index', 1, '21', '', 'ENABLE', '2020-01-22 11:49:09', '2020-05-28 13:30:00'),
(23, 'Role', 'menu', 'fa fa-info', 'master/role', 'master/role/index', 2, '21', '', 'ENABLE', '2020-01-22 12:07:17', '2020-05-28 08:59:11'),
(28, 'KONFIGURASI', 'label', '', '', NULL, 4, '0', '', 'ENABLE', '2020-05-18 10:45:34', NULL),
(29, 'Menu', 'label', '', '', NULL, 1, '0', '', 'ENABLE', '2020-05-18 10:46:48', NULL),
(35, 'CRUD Generator', 'menu', 'fa fa-refresh', 'crud', 'crud/index', 8, '0', '', 'ENABLE', '2020-09-17 11:10:37', NULL),
(50, 'Kelas', 'menu', 'fa fa-home', 'master/kelas', 'master/kelas/index', 2, '46', '', 'ENABLE', '2022-01-12 19:14:13', NULL),
(46, 'Master Data', 'menu', 'fa fa-database', '#', 'access/index', 3, '0', '', 'ENABLE', '2021-09-27 20:05:51', NULL),
(49, 'Jurusan', 'menu', 'fa fa-home', 'master/jurusan', 'master/jurusan/index', 1, '46', '', 'ENABLE', '2022-01-12 19:13:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `role` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `slug` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` enum('DISABLE','ENABLE') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `menu` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`, `slug`, `status`, `menu`, `created_at`, `updated_at`) VALUES
(17, 'Admin', 'admin', 'ENABLE', '[\"29\",\"46\",\"28\",\"21\",\"22\",\"23\",\"20\",\"18\",\"35\",\"49\",\"50\"]', '2018-10-12 17:03:59', '2022-01-12 19:14:31'),
(20, 'Mahasiswa', 'mahasiswa', 'ENABLE', '[\"29\",\"46\",\"50\",\"49\"]', '2022-01-12 18:58:32', '2022-01-12 19:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `session_login`
--

CREATE TABLE `session_login` (
  `id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `ip_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `session_login`
--

INSERT INTO `session_login` (`id`, `date`, `ip_address`, `user_id`) VALUES
(72, '2021-09-09 09:00:09', '139.193.21.133', 1),
(73, '2021-09-09 13:30:20', '182.2.71.11', 1),
(74, '2021-09-10 14:19:21', '::1', 1),
(75, '2021-09-10 17:21:43', '182.2.75.29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `session_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `role_slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `role_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '0',
  `wrong` int DEFAULT NULL,
  `active` datetime DEFAULT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `is_email` int DEFAULT '0',
  `last_email` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `session_id`, `username`, `name`, `email`, `password`, `role_id`, `role_slug`, `role_name`, `desc`, `status`, `wrong`, `active`, `token`, `is_email`, `last_email`, `created_at`, `updated_at`) VALUES
(22, NULL, 'admin', 'Administrator', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', 17, 'admin', 'Admin', '-', '0', 1, NULL, NULL, 0, NULL, '2022-01-12 18:31:04', '2022-01-12 18:32:57'),
(23, NULL, 'mahasiswa', 'Mahasiswa', 'mahasiswa@gmail.com', '0192023a7bbd73250516f069df18b500', 20, 'mahasiswa', 'Mahasiswa', '-', '0', NULL, NULL, NULL, 0, NULL, '2022-01-12 18:59:52', NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `konfig`
--
ALTER TABLE `konfig`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`log_id`) USING BTREE;

--
-- Indexes for table `menu_master`
--
ALTER TABLE `menu_master`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`,`created_at`) USING BTREE;

--
-- Indexes for table `session_login`
--
ALTER TABLE `session_login`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_login`
--
ALTER TABLE `failed_login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `konfig`
--
ALTER TABLE `konfig`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `log_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14754;

--
-- AUTO_INCREMENT for table `menu_master`
--
ALTER TABLE `menu_master`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `session_login`
--
ALTER TABLE `session_login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
