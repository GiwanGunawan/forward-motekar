-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 19, 2021 at 09:37 AM
-- Server version: 10.3.27-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `motekari_forward`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36', NULL, '2021-02-06 11:12:10');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'Giwan', 1, '2021-02-06 09:56:43', 0),
(2, '::1', 'Giwan', 1, '2021-02-06 10:09:08', 0),
(3, '::1', 'Giwan', 1, '2021-02-06 10:09:29', 0),
(4, '::1', 'Giwan', 1, '2021-02-06 10:10:31', 0),
(5, '::1', 'coco', NULL, '2021-02-06 10:13:35', 0),
(6, '::1', 'cobacoba@gmail.com', 3, '2021-02-06 10:13:46', 1),
(7, '::1', 'giwangunawan@gmail.com', 4, '2021-02-06 10:18:20', 1),
(8, '::1', 'test', 8, '2021-02-06 10:39:53', 0),
(9, '::1', 'test', 8, '2021-02-06 10:40:15', 0),
(10, '::1', 'test', 8, '2021-02-06 10:42:38', 0),
(11, '::1', 'giwan', 9, '2021-02-06 10:45:56', 0),
(12, '::1', 'giwangunawan@gmail.com', 12, '2021-02-06 11:12:09', 1),
(13, '::1', 'giwangunawan@gmail.com', 12, '2021-02-06 11:18:04', 1),
(14, '::1', 'giwangunawan@gmail.com', 12, '2021-02-06 19:49:42', 1),
(15, '::1', 'giwangunawan@gmail.com', 12, '2021-02-07 03:07:02', 1),
(16, '::1', 'giwangunawan@gmail.com', 12, '2021-02-07 09:06:26', 1),
(17, '::1', 'giwangunawan@gmail.com', 12, '2021-02-07 09:12:42', 1),
(18, '::1', 'giwangunawan@gmail.com', 12, '2021-02-07 20:22:25', 1),
(19, '::1', 'Giwan Gunawan', NULL, '2021-02-08 16:39:05', 0),
(20, '::1', 'giwangunawan@gmail.com', 12, '2021-02-08 16:39:15', 1),
(21, '::1', 'giwangunawan@gmail.com', 12, '2021-02-09 00:47:01', 1),
(22, '::1', 'giwangunawan@gmail.com', 12, '2021-02-09 17:57:17', 1),
(23, '::1', 'giwangunawan@gmail.com', 12, '2021-02-10 08:39:16', 1),
(24, '::1', 'giwangunawan@gmail.com', 12, '2021-02-10 17:12:31', 1),
(25, '::1', 'giwangunawan@gmail.com', 12, '2021-02-11 02:14:11', 1),
(26, '::1', 'giwangunawan@gmail.com', 12, '2021-02-11 04:19:24', 1),
(27, '::1', 'Giwan Gunawan', NULL, '2021-02-11 11:39:14', 0),
(28, '::1', 'Giwan Gunawan', NULL, '2021-02-11 11:39:27', 0),
(29, '::1', 'Giwan Gunawan', NULL, '2021-02-11 11:39:41', 0),
(30, '::1', 'giwangunawan@gmail.com', 12, '2021-02-11 11:39:49', 1),
(31, '::1', 'giwangunawan@gmail.com', 12, '2021-02-11 19:05:08', 1),
(32, '::1', 'fsdfd', NULL, '2021-02-12 10:17:40', 0),
(33, '::1', 'giwangunawan@gmail.com', 12, '2021-02-12 10:17:53', 1),
(34, '::1', 'giwangunawan@gmail.com', 12, '2021-02-12 20:14:15', 1),
(35, '::1', 'giwangunawan@gmail.com', 12, '2021-02-13 09:26:29', 1),
(36, '::1', 'giwangunawan@gmail.com', 12, '2021-02-13 20:49:14', 1),
(37, '::1', 'giwangunawan@gmail.com', 12, '2021-02-14 02:08:40', 1),
(38, '::1', 'giwangunawan@gmail.com', 12, '2021-02-14 20:23:13', 1),
(39, '::1', 'giwangunawan@gmail.com', 12, '2021-02-14 22:34:11', 1),
(40, '::1', 'giwangunawan@gmail.com', 12, '2021-02-15 00:56:31', 1),
(41, '::1', 'giwangunawan@gmail.com', 12, '2021-02-15 05:04:05', 1),
(42, '::1', 'giwangunawan@gmail.com', 12, '2021-02-15 09:43:44', 1),
(43, '::1', 'giwangunawan@gmail.com', 12, '2021-02-15 21:42:13', 1),
(44, '::1', 'giwangunawan@gmail.com', 12, '2021-02-16 04:03:13', 1),
(45, '::1', 'giwangunawan@gmail.com', 12, '2021-02-16 17:32:34', 1),
(46, '::1', 'giwangunawan@gmail.com', 12, '2021-02-16 18:00:25', 1),
(47, '::1', 'giwangunawan@gmail.com', 12, '2021-02-16 21:54:19', 1),
(48, '::1', 'Giwan Gunawan', NULL, '2021-02-17 00:51:29', 0),
(49, '::1', 'giwangunawan@gmail.com', 12, '2021-02-17 00:51:38', 1),
(50, '::1', 'giwangunawan@gmail.com', 12, '2021-02-17 16:48:49', 1),
(51, '::1', 'giwangunawan@gmail.com', 12, '2021-02-18 08:45:45', 1),
(52, '::1', 'giwangunawan@gmail.com', 12, '2021-02-18 19:28:29', 1),
(53, '::1', 'giwangunawan@gmail.com', 12, '2021-02-19 00:52:08', 1),
(54, '::1', 'giwangunawan@gmail.com', 12, '2021-02-19 03:54:26', 1),
(55, '::1', 'giwangunawan@gmail.com', 12, '2021-02-19 20:39:13', 1),
(56, '::1', 'Giwan Gunawan', NULL, '2021-02-20 08:03:18', 0),
(57, '::1', 'giwangunawan@gmail.com', 12, '2021-02-20 08:03:26', 1),
(58, '::1', 'giwangunawan@gmail.com', 12, '2021-02-20 19:45:56', 1),
(59, '::1', 'Zahra', NULL, '2021-02-20 20:01:10', 0),
(60, '::1', 'Zahra', NULL, '2021-02-20 20:01:35', 0),
(61, '::1', 'zahrababeth@gmail.com', NULL, '2021-02-20 20:02:59', 0),
(62, '::1', 'giwangunawan@gmail.com', 12, '2021-02-20 20:03:07', 1),
(63, '::1', 'giwangunawan@gmail.com', 12, '2021-02-23 22:36:15', 1),
(64, '::1', 'giwangunawan@gmail.com', 12, '2021-02-23 22:37:13', 1),
(65, '::1', 'zahra', NULL, '2021-02-23 23:56:08', 0),
(66, '::1', 'zahra', NULL, '2021-02-23 23:56:47', 0),
(67, '::1', 'zahra', NULL, '2021-02-23 23:57:00', 0),
(68, '::1', 'giwangunawan@gmail.com', 12, '2021-02-23 23:57:11', 1),
(69, '::1', 'cobacoba@gmail.com', 16, '2021-02-23 23:57:46', 1),
(70, '::1', 'giwangunawan@gmail.com', 12, '2021-02-25 09:27:20', 1),
(71, '::1', 'giwangunawan@gmail.com', 12, '2021-02-25 18:37:50', 1),
(72, '::1', 'admin@gmail.com', 18, '2021-02-28 05:07:58', 1),
(73, '::1', 'admin@gmail.com', 18, '2021-02-28 18:26:20', 1),
(74, '::1', 'admin@gmail.com', 18, '2021-03-01 09:58:06', 1),
(75, '125.161.139.131', 'admin@gmail.com', 1, '2021-03-01 12:00:18', 1),
(76, '125.161.139.131', 'admin@gmail.com', 1, '2021-03-01 12:02:32', 1),
(77, '125.161.139.131', 'admin@gmail.com', 1, '2021-03-01 12:03:53', 1),
(78, '125.161.139.131', 'admin@gmail.com', 1, '2021-03-01 12:04:44', 1),
(79, '125.161.139.131', 'admin@gmail.com', 1, '2021-03-01 12:05:47', 1),
(80, '125.161.139.131', 'admin@gmail.com', 1, '2021-03-01 19:34:02', 1),
(81, '118.97.57.11', 'admin@gmail.com', 1, '2021-03-01 20:24:21', 1),
(82, '125.161.139.131', 'admin@gmail.com', 1, '2021-03-01 22:33:52', 1),
(83, '125.161.136.57', 'admin@gmail.com', 1, '2021-03-02 19:22:12', 1),
(84, '182.2.164.20', 'Giwan Gunawan', NULL, '2021-03-03 06:03:32', 0),
(85, '182.2.164.20', 'Giwangunawan', NULL, '2021-03-03 06:11:19', 0),
(86, '182.2.164.20', 'Giwan gunawan', NULL, '2021-03-03 07:02:45', 0),
(87, '182.2.164.20', 'Giwan gunawan', NULL, '2021-03-03 07:04:07', 0),
(88, '182.2.164.20', 'Giwan gunawan', NULL, '2021-03-03 07:04:19', 0),
(89, '118.97.57.13', 'Giwan Gunawan', NULL, '2021-03-03 19:19:04', 0),
(90, '125.161.138.134', 'admin@gmail.com', 1, '2021-03-03 19:35:33', 1),
(91, '180.244.234.130', 'admin@gmail.com', 1, '2021-03-03 21:20:07', 1),
(92, '180.244.234.130', 'admin@gmail.com', 1, '2021-03-03 21:52:20', 1),
(93, '125.161.138.134', 'admin@gmail.com', 1, '2021-03-03 22:33:00', 1),
(94, '180.244.234.130', 'admin@gmail.com', 1, '2021-03-04 05:10:41', 1),
(95, '180.244.232.218', 'admin@gmail.com', 1, '2021-03-08 00:42:04', 1),
(96, '36.71.167.100', 'Giwan Gunawan', NULL, '2021-03-08 00:42:52', 0),
(97, '36.71.167.100', 'admin@gmail.com', 1, '2021-03-08 00:43:07', 1),
(98, '125.161.138.73', 'admin@gmail.com', 1, '2021-03-08 00:45:18', 1),
(99, '125.161.138.214', 'admin@gmail.com', 1, '2021-03-08 23:05:44', 1),
(100, '125.161.138.73', 'admin@gmail.com', 1, '2021-03-09 09:59:39', 1),
(101, '125.161.138.73', 'admin@gmail.com', 1, '2021-03-09 11:10:42', 1),
(102, '125.161.138.73', 'admin@gmail.com', 1, '2021-03-09 11:57:55', 1),
(103, '125.161.138.73', 'admin@gmail.com', 1, '2021-03-09 11:58:50', 1),
(104, '125.161.138.73', 'admin@gmail.com', 1, '2021-03-09 12:02:59', 1),
(105, '125.161.138.73', 'admin@gmail.com', 1, '2021-03-09 12:11:14', 1),
(106, '125.161.138.73', 'admin@gmail.com', 1, '2021-03-09 23:51:11', 1),
(107, '36.78.11.138', 'admin@gmail.com', 1, '2021-03-10 02:57:35', 1),
(108, '125.165.155.152', 'admin@gmail.com', 1, '2021-03-10 20:37:52', 1),
(109, '125.165.155.152', 'admin@gmail.com', 1, '2021-03-11 19:35:22', 1),
(110, '125.165.155.152', 'admin@gmail.com', 1, '2021-03-13 21:33:39', 1),
(111, '125.165.155.152', 'admin@gmail.com', 1, '2021-03-14 12:20:42', 1),
(112, '125.165.155.152', 'admin@gmail.com', 1, '2021-03-16 11:38:45', 1),
(113, '36.67.5.101', 'admin@gmail.com', 1, '2021-03-16 22:37:24', 1),
(114, '125.161.136.34', 'admin@gmail.com', 1, '2021-03-17 20:50:20', 1),
(115, '125.161.136.34', 'admin@gmail.com', 1, '2021-03-18 08:27:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dataappreciation`
--

CREATE TABLE `dataappreciation` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_personnel` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nik_ta` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `tanggal_appreciation` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `datafraud`
--

CREATE TABLE `datafraud` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_personnel` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nik_ta` varchar(255) DEFAULT NULL,
  `jenis_pelaporan` varchar(255) DEFAULT NULL,
  `label_odp` varchar(255) DEFAULT NULL,
  `pelapor` varchar(255) DEFAULT NULL,
  `hp_pelapor` varchar(255) DEFAULT NULL,
  `tanggal_pelaporan` date DEFAULT NULL,
  `evident_fraud` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `upload_gambar` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datafraud`
--

INSERT INTO `datafraud` (`id`, `id_personnel`, `slug`, `nama`, `nik`, `nik_ta`, `jenis_pelaporan`, `label_odp`, `pelapor`, `hp_pelapor`, `tanggal_pelaporan`, `evident_fraud`, `keterangan`, `upload_gambar`, `created_at`, `updated_at`) VALUES
(1, 472, NULL, 'Erwin', '-', '16961744', 'Tarikan Bodong', '-', 'Arwan', NULL, '2021-03-01', 'Teknisi sudah diinterogasi dan mengakui memasang perangkat di rumah yg ada DC dan layanan aktif', '', '', '2021-03-08 13:51:40', '2021-03-14 10:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `datajenispelaporan`
--

CREATE TABLE `datajenispelaporan` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `jenis_pelaporan` varchar(255) DEFAULT NULL,
  `jumlah_jenis_pelaporan` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datajenispelaporan`
--

INSERT INTO `datajenispelaporan` (`id`, `slug`, `jenis_pelaporan`, `jumlah_jenis_pelaporan`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Pungutan Liar', NULL, '1989-09-23 07:39:00', '2021-02-11 03:21:53'),
(2, NULL, 'ODP Gendong', NULL, '2000-04-26 15:25:55', '2021-02-11 03:21:53'),
(3, NULL, 'ODP Arisan', NULL, '2001-06-08 08:33:29', '2021-02-11 03:21:53'),
(4, NULL, 'Tarikan Bodong', NULL, '1975-02-15 01:12:29', '2021-02-11 03:21:53'),
(5, NULL, 'Pemerasan', NULL, NULL, NULL),
(6, NULL, 'Laporan Lainnya', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `datalevel`
--

CREATE TABLE `datalevel` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datalevel`
--

INSERT INTO `datalevel` (`id`, `slug`, `level`, `created_at`, `updated_at`) VALUES
(1, NULL, 'UBIS', NULL, NULL),
(2, NULL, 'DATEL', NULL, NULL),
(3, NULL, 'WITEL', NULL, NULL),
(4, NULL, 'REGIONAL', NULL, NULL),
(5, NULL, 'NASIONAL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dataloker`
--

CREATE TABLE `dataloker` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `loker` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dataloker`
--

INSERT INTO `dataloker` (`id`, `slug`, `loker`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ASO', NULL, NULL),
(2, NULL, 'WAN', NULL, NULL),
(3, NULL, 'CCAN', NULL, NULL),
(4, NULL, 'AMQE', NULL, NULL),
(5, NULL, 'DAMAN', NULL, NULL),
(6, NULL, 'OPTIMA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `datapersonnel`
--

CREATE TABLE `datapersonnel` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nik_ta` varchar(255) DEFAULT NULL,
  `loker` varchar(255) DEFAULT NULL,
  `stream` varchar(255) DEFAULT NULL,
  `sto` varchar(255) DEFAULT NULL,
  `witel` varchar(255) DEFAULT NULL,
  `mitra` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `upload_gambar` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datapersonnel`
--

INSERT INTO `datapersonnel` (`id`, `slug`, `nama`, `nik`, `nik_ta`, `loker`, `stream`, `sto`, `witel`, `mitra`, `alamat`, `upload_gambar`, `created_at`, `updated_at`) VALUES
(1, '', 'TOTOH ROHAYAT', '3271040506610026', '61180006', '', '', '', '', 'TELKOM AKSES', 'Perumahan Bogor Raya Permai Blok FE 7 no 8 A, RT 3 / RW 13 Kel.Curug,Kec.Bogor Barat,Kodya Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '', 'DWI VIYANTO', '3204050402920007', '925596', '', '', '', '', 'TELKOM AKSES', 'Villa bogor indah 3 Blok BC1 No.15. Kedunghalang. Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '', 'JIHAN PRIANANDA', '3209211106920006', '19920011', '', '', '', '', 'TELKOM AKSES', 'JALAN KAPLING 1 NO 243C DESA ADIDHARMA KABUPATEN CIREBON', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '', 'R ADHIKA NANDA PRASETYA', '3174082907920005', '925610', '', '', '', '', 'TELKOM AKSES', 'JL. TIMO NO.1/D, KOMP.PLN, PUREN TIGA RT.001/RW.013', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '', 'GETMY RIYANTO SUHERMAN', '3271042701830001', '18830024', '', '', '', '', 'TELKOM AKSES', 'Jl.amasandi taman muara RT.001 RW.015 Kel. Pasir Jaya', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '', 'IQBAL IMAMZAH', '3271050701950005', '20950901', '', '', '', '', 'TELKOM AKSES', 'JLN.PEMBANGUNAN KAUM RT 05 RW 11 NO 05', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '', 'EGI MULYANA', '3271044108960014', '20961231', '', '', '', '', 'TELKOM AKSES', 'Taman Muara Kel. Pasir Jaya RT.03/09 Bogor 16119', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '', 'MUMPUNI WIDYASTUTI', '3201046108860002', '18860066', '', '', '', '', 'TELKOM AKSES', 'JL. Siaga No.29A RT.002 RW.002, Bogor, 16710', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '', 'FAJRI WICAKSANA', '3201371712890001', '19890076', '', '', '', '', 'TELKOM AKSES', 'KOMP. BPN BLOK A-6/18 TAJURHALANG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '', 'PAHREZA FAJRI SULAEMAN', '3201291101880006', '18880019', '', '', '', '', 'TELKOM AKSES', 'Bukit Asri Cromas Blok A2 No12 Rt,007 Rw.013', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '', 'FIQIH SAFITRI', '3201136202900000', '18900142', '', '', '', '', 'TELKOM AKSES', 'Jl. H. Muhadi RT.007 RW.005, Citayam- Bojonggede', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '', 'AYU DIASAPUTRI', '3271064201970003', '19970195', '', '', '', '', 'TELKOM AKSES', 'JL. CEMPAKA II TAMAN CIMANGGU RT.002/008 KEDUNG WARINGIN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '', 'ANDRIAN', '3201320303940004', '19940027', '', '', '', '', 'TELKOM AKSES', 'Kp. Bantar Kopo RT.012/004 No.73 Bantarjati Klapa nunggal', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '', 'M. ARIANANDRA', '3201043112910001', '20910500', '', '', '', '', 'TELKOM AKSES', 'BTN. Ciluar Permai Jl. Belimbing III No.20 RT.01/09 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '', 'ANDIKA SAPUTRA', '3276051410920001', '20920703', '', '', '', '', 'TELKOM AKSES', 'Jl. Pakarena IV No.251 Rt.08/011 Depok 16411', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '', 'WIJI ADIYA UTARI', '3511116108930003', '19930059', '', '', '', '', 'TELKOM AKSES', 'Jl. Susilo 2A, No. 16, Grogol Jakarta Barat', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '', 'SITI YUYUN YUARSIH', '3201296310900001', '19900066', '', '', '', '', 'TELKOM AKSES', 'CURUG PERMAI BLOK K NO. 5 RT 004/010', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '', 'MARISYA ROSDIANA', '3217094708890020', '20890122', '', '', '', '', 'TELKOM AKSES', 'JL.SASAK PERUM GRIYA AMANAH RESIDENCE DEPOK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '', 'EKO ARMANTO', '3671062606880004', '885766', '', '', '', '', 'TELKOM AKSES', 'Jl. Batas Paninggilan RT.002 RW.007, Paninggilan Utara, Ciledug, Tangerang, 15153', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '', 'DEDI SURYATMAN', '3201010909620006', '19620001', '', '', '', '', 'TELKOM AKSES', 'Perum Puri Nirwana I Blok U No.12A Cibinong', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '', 'TEDY SAPUTRA', '3271032511940005', '18940271', '', '', '', '', 'TELKOM AKSES', 'PULO GEULIS RT01/04 BABAKANPASAR BOGOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '', 'ARIM NDARU HUTAMI', '3312105102960002', '19960169', '', '', '', '', 'TELKOM AKSES', 'Jl. PALAD No.34, Pulogadung', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '', 'YANUAR ANDIKA', '3201031801870007', '19870054', '', '', '', '', 'TELKOM AKSES', 'Kp.Lanbau No.60 Karang Asem Barat RT.05/10', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '', 'YOBERT CHRISTOPHER ARDILEZ', '3276010506950011', '20950712', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'Permata Depok C4-8 RT.002/007 Kel. Pondok Jaya , Cipayung', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '', 'MUHAMAD APIP PERMANA', '3271050209930005', '20930825', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'Graha Indah Kedunghalang Rt.03/08 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, '', 'KHOIROTUL WASILAH', '3276085502960001', '20960809', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'Kebon Duren RT.003/001 Kalimulya Cilodong', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, '', 'FADLY ARDIANSYAH', '3271052407950008', '18970487', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'BTN TANAH BARU BLOK F3/8 RT 05/09 BOGOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, '', 'RIZKY ENGGAR PRAYOGA', '3201041601950006', '20950707', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'Kp parakan kembang rt 02/13 kecamatan sukaraja kab bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, '', 'EKI FAKHRI RAMADHAN', '3276071501980001', '20980809', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'Kp.Lio Citayam RT.006/007', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, '', 'ROSHUL MILA PUTRA GUMILAR SUHANTO', '3202130501970005', '19970068', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'Kp. Angkrong RT.041/017 Sundawenang Parungkuda', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, '', 'YUNITA NURDIANTI INDAH', '3271014306940017', '20940709', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'Jl. Kapten Yusuf No.27 RT.002/001 Cikaret', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, '', 'MUHAMMAD WILDAN JARURULLAH', '3271011103970006', '20971300', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'BANTAR KEMANG RT.001/007 BOGOR 16143', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, '', 'I NYOMAN RIO ADI SAPUTRA', '3201043006920005', '20920887', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'CIJUJUNG PERMAI BLOK Q NO.17', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, '', 'IWAN ANDRIANSYAH', '3275031103790042', '20790003', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'Kp. Munjul RT 01 RW 06. Desa Cibadak, Kec. Sukaresmi, Kab. Cianjur, Jawa Barat', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, '', 'DUDDY YULIADI', '3276022807900008', '19900115', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'komp. Bukit cengkeh 1 NO. 12A Blok G2 Jl. Jayapura', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, '', 'JOHAN PURNAMA', '3271042007910007', '20910036', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'JL. Jabaru 2 no 3 Rt 2/5 Bogor Barat', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, '', 'KANIA MAULIDINA', '3271055808950003', '19950024', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'Ciluar RT.001/001 ciluar Bogor Utara', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, '', 'ASTRI SEPTIANI', '3271045601940002', '20940690', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'Selakopi RT.001-004 Pasir Mulya', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, '', 'SUTISNA', '3201332512970003', '20960090', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'Jl AMD Kp . Gunung Cilingcing NO.53 Rt.01 Rw.03 Kec. Cisangen Kab Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, '', 'ASRULLAH ZULKARNAEN', '3201032304970003', '20970929', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'Kp.Gudang Citeureup RT.002/009', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, '', 'RADEN DELI PRIANANDA', '3201152212920001', '20920723', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'Perum.PGRI Ciampea Endah M/9', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, '', 'DENINDRA DIOWIRA ASHAR', '3271042010970010', '18970261', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'JL. MEKAR SALUYU RT 03/16 BOGOR BARAT', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, '', 'WIYADHIKA FADHLURROHMAN', '3201132008980005', '18980302', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'TAMAN RAYA CITAYAM BL.E2/8 RT06/12 RAWAPANJANG BOJONG GEDE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, '', 'ADE RANGGA MOHAMAD ISRAF', '3273022008980006', '20961229', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'cirapuhan rt 007/001 no 8 kelurahan dago kecamatan coblong', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, '', 'DENI PURNAMA', '3201032702970003', '20971366', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'Kp. Kebon Kopi RT.002/009 Citeureup', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, '', 'RAKA WILLY AZHARI', '3201131310970003', '20971273', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'PURI ARTHA SENTOSA BLOK D8 NO 24 RT 04/008', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, '', 'RENDI SYAMSUDIN', '3276031212910004', '18910164', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'KP. KEBUN KOPI RT03/07 KEL. PENGASINAN KEC. SAWANGAN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, '', 'M ILHAM HERMANTO', '3201131005990007', '18990287', 'WH', 'ADMIN', '', '', 'TELKOM AKSES', 'BUKIT WARINGIN BLOK I3/25 RT 06/14 CIMANGGIS BOJONG GEDE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, '', 'HEDY SUBIYANTO', '3374152302900003', '906267', '', '', '', '', 'TELKOM AKSES', 'Jl. Candi Kencana II C28, Semarang', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, '', 'RUDIONO', '3271051307670002', '18670008', 'CCAN', '', '', '', 'TELKOM AKSES', 'Jl Palupuh Bawah Tegal Gundil Rt.06Rw.02 no.69 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, '', 'ACHMAD GUSPIOKA FAHMI M', '3175032810930005', '20930810', 'CCAN', '', '', '', 'TELKOM AKSES', 'Tanjung Lengkong RT.04/07 Bidara Cina Jatinegara', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, '', 'DHARA SUKMA SANISKARA', '3175095408910001', '17910542', 'CCAN', '', '', '', 'TELKOM AKSES', 'Jl. Raya Centex Gg.Galur No.65, RT.004 RW.009, Ciracas,Jakarta Timur, 31740', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, '', 'MUHAMMAD RIFKI', '3201132001920009', '18920448', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP.BOJONGGEDE RT.004 RW.013 BOJONGGEDE BOJONGGEDE BOGOR JAWA BARAT', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, '', 'AZIZ SURYADI', '3276111504940004', '18940315', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp. Kandang Kel. Duren Seribu Kec. Bojongsari Depok', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, '', 'SYARIF HIDAYAT', '3201031505960006', '18960706', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp.Babakan Ds.Tarikolot RT.01/05 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, '', 'RYAN RIZKY PRAHASTA', '3201070109870002', '18870079', 'CCAN', '', '', '', 'TELKOM AKSES', 'CILEUNGSI INDAH C.86 RT.006 RW.009 CILEUNGSI KIDUL CILEUNGSI BOGOR JAWA BARAT', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, '', 'JUNAEDI', '3201052110940004', '18940269', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP. BABAKAN RAWAHAUR RT 02/05 SENTUL BABAKAN MADANG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, '', 'SOFYAN SYAH RAHMAN', '3276051301920014', '20920727', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp. Sidamukti, Cilodong Depok 16045 RT.02/02', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, '', 'RUDI SETIAWAN', '3208011409970002', '19970248', 'CCAN', '', '', '', 'TELKOM AKSES', 'KARANG ASEM TIMUR RT.002/003', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, '', 'RAIS PUTRA PAMUNGKAS', '3201062507970003', '20971550', 'CCAN', '', '', '', 'TELKOM AKSES', 'JONGGOL BOGOR RT 02 RW 09', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, '', 'MASDIAL', '1305032905940002', '94190022', 'CCAN', '', '', '', 'TELKOM AKSES', 'Jl. Perhubungan Perumahan Griya Jati Asri Blok F1 No. 16', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, '', 'YUSUF BIL ASHARI SYAHRU RAMADHAN', '3201302901980002', '19980243', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP.SETU LEUTIK DESA SINARSARI KEC.DRAMAGA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, '', 'MUHAMAD RUDIANSYAH', '3201290407950001', '19950256', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. CIOMAS PERMAI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, '', 'ANDRIANSYAH', '3201302006960002', '20960801', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp. Randu Sari Desa Sinarsari RT.06/03', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, '', 'MUHAMMAD KHAUTSAR PELU', '8171030704930001', '18930257', 'CCAN', '', '', '', 'TELKOM AKSES', 'VILLA CIOMAS INDAH JL. GARUDA RAYA BLOK Q9 NO. 4, CIOMAS', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, '', 'SARIPUDIN', '3201220708890010', '19890111', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP. PARAKAN TIGA RT.001/006 CIGUDEG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, '', 'FAISAL AZIS', '3271051412940008', '19940220', 'CCAN', '', '', '', 'TELKOM AKSES', 'KAUM SARI RT.002/005 CIBULUH', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, '', 'AHMAD MUHAJIR', '3276010605970001', '19970247', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. BULAK TIMUR RT.006/009', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, '', 'DEDE HIDAYAT', '3201401206920002', '20920707', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp. Tapos Babakan RT.003/001 Desa Tapos II Kec. Tenjolaya Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, '', 'ADITIYA PRATAMA', '3201150812910001', '20910489', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp. Babakan Nyamplung RT.02/05', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, '', 'SAMUEL SIAHAAN', '3201110806910003', '18910163', 'CCAN', '', '', '', 'TELKOM AKSES', 'PERM. TAMAN SARI BUKIT DAMAI BLOK A5 N5 KAB. BOGOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, '', 'NOVA ARIF SUNARYA', '3201011411920010', '20920720', 'CCAN', '', '', '', 'TELKOM AKSES', 'Pabuaran Asri 2 Blok A3 No. 6 RT.009/006 Kel. Pabuaran Kec. Cibinong', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, '', 'KHATMAN', '1871122706850002', '19850038', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. PERWIRA 1 LK. III NO.15', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, '', 'RUSMAN', '3271042012930005', '20931056', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP. CURUG INDUK RT.05 RW.13', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, '', 'GERI HERMAWAN', '3276052808960006', '19960123', 'CCAN', '', '', '', 'TELKOM AKSES', 'LINGK. CIKUMPA RT.001/002 MEKARJAYA SUKMAJAYA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, '', 'GINANJAR ADI SAPUTRA', '3674071202930002', '18930505', 'CCAN', '', '', '', 'TELKOM AKSES', 'PERUM.AMARAPURA BLOK F3 / 6 KADEMANGAN KEC.SETU', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, '', 'MOCHAMAD ABDUL SAFII', '3316010509940004', '20940699', 'CCAN', '', '', '', 'TELKOM AKSES', 'Dk.DUKUHAN Ds.DOPLANG Rt.28/04 Kec.JATI Kab.BLORA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, '', 'HABIEB ALWI', '1271102104990005', '18990461', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. Datuk Kabu LK VII, Gg. Pak Reban', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, '', 'ANDRI IRAWAN', '3271041304920002', '19920095', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. CIFOR KP. RAWAJAHA RT.03/03 16115', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, '', 'EKA SISWANTO PRASETYO', '3201330209980008', '18980178', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP BAMBU KUNING RT.006/003', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, '', 'SIGIT SULISTYO HADI', '3271060902640005', '64200016', '', '', '', '', 'TELKOM AKSES', 'BOGOR RAYA PERMAI BLOK FG NO.4 RT. 2 RW.4 KODE POS 16166', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, '', 'UGI PAMBAGYO', '3276052703800009', '805843', 'ASO', '', '', '', 'TELKOM AKSES', 'Jl. Merawan 8 No 207 Rt 3/10 Depok Timur', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, '', 'RIZKY WIDIANTO', '3276051910950008', '20950058', 'ASO', 'ADMIN', '', '', 'TELKOM AKSES', 'Jl Proklamasi Blok C No 24 RT04/23 Depok', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, '', 'WAVI WALIPILQORI', '3201290907940006', '19940042', 'AMQE', '', '', '', 'TELKOM AKSES', 'JL.CIOMAS GG.MANGGAH KP.SUKAJAYA RT.01/02', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, '', 'DEDE HIDAYATULLAH', '3201042001980001', '18980582', 'AMQE', '', '', '', 'TELKOM AKSES', 'KP. GUNUNG GEULIS RT 01 RW 01', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, '', 'NANDANG SUNANDAR', '3271051501960007', '18960589', 'AMQE', '', '', '', 'TELKOM AKSES', 'KP. KRAMAT RT05/01 JL, PANGERAN SOGIRI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, '', 'RIZWAN RIZKI SONJAYA', '3201042005930003', '20930048', 'AMQE', '', '', '', 'TELKOM AKSES', 'KP.Bojong Honje Desa Gunung geulis Kec.Sukaraja', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, '', 'MUHAMMAD RIZKY FEBRIANSYAH', '3201041702930004', '20931194', 'AMQE', '', '', '', 'TELKOM AKSES', 'CILUAR PERMAI BLOK E.1 NO 26 RT 01 RW 09', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, '', 'RADEN ALDY DEWAYANA', '3201032605940003', '20940916', 'AMQE', '', '', '', 'TELKOM AKSES', 'KP. BOJONG RT.01/04 TARIKOLOT', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, '', 'RAMADHAN PRATAMA', '3276051001970014', '20971318', 'AMQE', '', '', '', 'TELKOM AKSES', 'KP. SUGUTAMU RT. 08/21 KEC. SUKMAJAYA KEL. MEKARJAYA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, '', 'SAMSI RIZAL', '3201281204910007', '20910037', 'AMQE', '', '', '', 'TELKOM AKSES', 'KP.PONDOK BITUNG RT.05/02 SUKAHARJA CIJERUK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, '', 'IBROHIM', '3201331007960001', '20971320', 'AMQE', '', '', '', 'TELKOM AKSES', 'KP. CILANGKAP RT. 009/008', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, '', 'JAINI', '1801142112960001', '20961230', 'AMQE', '', '', '', 'TELKOM AKSES', 'JL. ASOKA RAYA , SLIPI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, '', 'AGUNG FAHRIZAL', '3276050303970004', '20970926', 'AMQE', '', '', '', 'TELKOM AKSES', 'jl. Mandor Samin RT.002/005 Kelurahan Kalibaru', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, '', 'IRWAN NUR MUHAMMAD', '3201130304880008', '17880818', 'AMQE', '', '', '', 'TELKOM AKSES', 'KP SUDI MAMPIR RT 03/12', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, '', 'EMAN SULAEMAN', '3201072104840012', '18840047', 'DAMAN', '', '', '', 'TELKOM AKSES', 'KP.RAWA ILAT RT.004 RW.009 DAYEUH CILEUNGSI BOGOR JAWA BARAT.16820', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, '', 'KURNIAWAN YANUAR', '3201252710960002', '19960031', 'DAMAN', '', '', '', 'TELKOM AKSES', 'KP. CIREKO', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, '', 'PANJI PRASETIO', '3276072809940002', '18930365', 'DAMAN', '', '', '', 'TELKOM AKSES', 'JL. BENDA BARAT RT06/06 NO. 12 KEL. CIPAYUNG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, '', 'MOCHAMMAD ILHAMSYAH', '3271011702970002', '18970520', 'DAMAN', '', '', '', 'TELKOM AKSES', 'JL. SOEMANTADIREDJA KP.NAGREG RT02/12 PAMOYANAN BOGOR SELATAN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, '', 'MUH ALFAIZIN', '3175090109970002', '20970160', 'DAMAN', '', '', '', 'TELKOM AKSES', 'JL BLOK DUKU RT 013 RW 010 CIBUBUR CIRACAS', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, '', 'ALAN NUARI', '3276061201960003', '19960183', 'DAMAN', '', '', '', 'TELKOM AKSES', 'JL. ARIEF RAHMAN HAKIM', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, '', 'WARID JAHARRUDIN', '3271050106920007', '18920306', 'DAMAN', '', '', '', 'TELKOM AKSES', 'GG. PELITA 1 RT04/18 KEL. TEGAL GUNDIL KEC. BOGOR UTARA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, '', 'MOHAMMAD FAJAR', '3201262611940003', '18940580', 'DAMAN', '', '', '', 'TELKOM AKSES', 'KP. CIPAYUNG RT05/04 MEGAMENDUNG BOGOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, '', 'TOPAN SAPUTRA', '3201261609990003', '18990155', 'AMQE', '', '', '', 'TELKOM AKSES', 'RANGGA MEKAR RT 002/013', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, '', 'AHMAD FAHMI', '3201130807970001', '20970161', 'AMQE', '', '', '', 'TELKOM AKSES', 'Jl Duren Baru Rt.02 rw.06 Ds. Susukan Kec. Bojong Gede Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, '', 'JUNAEDI', '3201040706950008', '19950120', 'AMQE', '', '', '', 'TELKOM AKSES', 'CIMANDALA RT.003/001 SUKARAJA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, '', 'BANGUN DWINDRA RAMADHANA', '3201011803930004', '19930038', 'AMQE', '', '', '', 'TELKOM AKSES', 'PERUM BCE BLOK C.05 RT.05/09', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, '', 'MUHAMAD PALDIANSYAH', '3201272411950006', '20951144', 'AMQE', '', '', '', 'TELKOM AKSES', 'KP CARINGIN DESA CARINGIN KEC CARINGIN RT 03 RW 02', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, '', 'ANGGITA AYU DEFITRI', '3275044612020010', '20020073', 'AMQE', '', '', '', 'TELKOM AKSES', 'PEKAYON JAYA RT 002 RW 021 KEL PEKAYON JAYA KEC BEKASI SELATAN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, '', 'KHAERUDIN', '3201012102750004', '18750034', 'AMQE', '', '', '', 'TELKOM AKSES', 'KOMP PADURENAN RT 03/03 CIBINONG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, '', 'WIRA YUDA PERKASA', '3201131502940002', '18940745', 'AMQE', '', '', '', 'TELKOM AKSES', 'Perum Bambu Kuning Blok B1 No.2 ,10/14 Bojong Gede,Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, '', 'MUHAMMAD NASHRON MARUF', '3603120203020004', '20020062', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'PERUM TAMAN WALET SL-12/02 RT/RW 007/012 SINDANG SARI PASAR KEMIS TANGERANG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, '', 'RANDY MAHARDHIKA TRIANGGONO', '3173020612011001', '20010096', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'JLN. KUMBANG RAYA, RT2/1 NO99, PEGADUNGAN, KALIDERES, JAKARTA BARAT', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, '', 'SYAHRUL RAMADHAN', '3173010512010014', '20010097', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'JL. RAWA BUAYA RT/RW 001/007 KEL. DURI KOSAMBI KEC.CENGKARENG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, '', 'SYAMSUL MUARIF', '3173062704010004', '20010098', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'JL RAWA LELE RT 010 RW 001 KEL PEGADUNGAN KEC KALIDERES', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, '', 'WAHYU PRATAMA', '3173010907010001', '20010099', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'JL. PESING POGLAR RT003/005', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, '', 'RAGIL ALIF FATAH', '3173052105021003', '20020063', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'JL. PESING KONENG RT 15/02 KEL. KEDOYA UTARA KEC. KEBON JERUK JAKARTA BARAT', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, '', 'CLAVO NEOCHRIS GADJA NERU', '3201290101920007', '17920773', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Pondok Kencana Permai Blok D No 42 D Rt 004 Rw 013 Bogor 16610', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, '', 'CECEP RUSWANDI', '3271060702780012', '19780013', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Jl.Pondok Rumput No.1 RT.01/11 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, '', 'ANGGA PUTRA INDRA', '3276080505930001', '20930051', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Jl. Swadaya Rt11/4 No 75 Depok', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, '', 'SOFYAN SAHURI', '3201072401740007', '18740034', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP TENGAH RT 03/06 CILEUNGSI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, '', 'RENDY FERDIANSYAH', '3275012906890021', '18890177', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'KP.MURUHARJA RT/RW 001/003 DS.CIAPUS KEC.CIOMAS', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, '', 'FEBRIAN CANDRA VALENTINE', '3271011402910008', '20910803', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'KP BAKOM URUG RT 02 RW 06', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, '', 'MUHAMMAD FAIZ RIZQI', '3271040101940012', '19940176', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'Kp. bojong sari Rt 03/04 desa ciapus kecamatan ciomas', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, '', 'ERIS SALMAN', '3202131710920006', '20920709', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'Kp. Angkrong RT.40/17 Sukabumi', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, '', 'MUHAMMAD NUR RAHMADI', '7371112604890001', '18890214', 'AMQE', '', '', '', 'TELKOM AKSES', 'Jl R Hanafiah No . 24 Kel.Cimahar Kec. Bogor Utara , Kota Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, '', 'RIZKA RACHMAWATI', '3172055812971001', '20970948', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Jl. Pademangan IV Gg.19 RT.016/008 Pademangan Timur', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, '', 'NURHASANAH', '3271065211950004', '19950207', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'KP. PABUARAN RT 03/02 KEL. MEKARWANGI KEC. TANAH SAREAL', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, '', 'IRMA PURNAMA SARI', '3201136203960005', '19960019', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'BUKIT WARINGIN BLOK E/5 NO.09 RT 4/RW 10 BOJONG GEDE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, '', 'DESTY RAHMAWATI', '3201306112930003', '20930073', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Kp.Cihedung Kecil RT.002/004', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, '', 'MUMUH MUHAMAD', '3271052408870004', '19870037', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'SINDANG SARI RT01/11', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, '', 'YAYAN HANDAYANI', '3201025304900009', '19900113', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'GUNUNG PUTRI UTARA NO.18 RT002/013', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, '', 'SUTRISNO', '1807022001940002', '19940174', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'DUSUN X SUMBER DAYA RT053/027', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, '', 'TIA MUTIARA', '3201124807960003', '19960177', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'CURUG RT05/RW13 NO.23', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, '', 'HENI ANGGRAENI', '3201127101950001', '19950201', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'JLN BARU SALABENDA KP PARAKAN SALAK RT01/02 NO 23', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, '', 'BAYU MUFAHIR', '3201042712940004', '20940917', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'DESA PASIR JAMBU RT.01/01 KEC. SUKARAJA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, '', 'YANI ANDRIYANI', '3271046708870007', '19870036', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'CILENDEK TIMUR RT 5 /RW 06', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, '', 'EKA SURA SUNJAYA', '3271050110860007', '19860032', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'KP.BOJONG RT 003/005', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, '', 'NINING RATNINGSIH', '3271054305780016', '19780033', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'VILLA BOGOR INDAH 2 BLOK AA 10 NO 24 RT. 01/14 KEDUNGHALANG BOGOR 16158', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, '', 'BINSAR SUMIARAHMAD', '3271021510960001', '18960587', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'KP. MUARA RT 03/09 SINDANGRASA BOGOR TIMUR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, '', 'FAHMI MAULADANA ACHMAD', '3204103008920003', '20920045', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Bandung, Margaasih jl jati baru E13/2 Kab. Bandung', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, '', 'NUR AMALIA', '3201266109960001', '20960818', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Kp. Pasir angin RT.04/01 Kab. BGR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, '', 'HENDRA RAHAYADI', '3201292904920005', '18920156', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Puri Alam Kencana 2 Blok P1 No 5 RT.02 RW.08 Kel. Nanggewer Mekar Kec.Cibinong', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, '', 'RAHMAT FADHILLAH', '3201133003920001', '20920046', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Perum.Bojong Gede Indah Blok GR.16 RT.04/17', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, '', 'MUHAMAD ISKANDAR BAGIR', '3271022012910006', '20910708', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Jl. Loader RT.04/08 Kel Baranang Siang Kec.Bogor Timur', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, '', 'SAPRUDIN', '1801180206980004', '19980008', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'DUSUN SUBAN 1 RT : 002/RW : 001 KEL. SUBAN KEC. MERBAU MATARAM KAB. LAMPUNG SELATAN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, '', 'ALFITRA ARMAN', '3201371104910001', '18910150', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'PERM. PARUNG PERMATA INDAH BLOK F1/12 RT 04/12 BOGOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, '', 'MAHAR MARANA S.', '3204120804010003', '21190018', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'LAMAJANG RT/RW 004/007 DESA CITEUREUP KEC. DAYEUHKOLOT', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, '', 'VIRDA FAJRIASTUTI', '3201134409990007', '18990460', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'KP GARDU RAYA RT 01/02, DESA CIBITUNG WETAN, KEC PAMIJAHAN, KAB BOGOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, '', 'MUHAMAD MURSYIDI', '3271041412920007', '18920157', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'KP. TARIKOLOT RT01/014 GUNUNG BATU', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, '', 'MUHAMAD ARIFIN', '3276052210920003', '18920446', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Jl.H.Abdul Gani No.19 RT.04 RW.03 Depok', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, '', 'DENNY MULYAWARMAN', '3201122308750002', '18750022', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Kampung Pondok Udik No.11 RT 01 / RW 001 KEMANG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, '', 'RIFKI ABDURAHMAN', '3272012411950022', '18950374', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Jl kebon kembang rt 04 rw 010 kota sukabumi', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, '', 'AHMAD DZAR AL-GHIFARI', '3276010505960016', '20960799', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Jl.Merpati 3 No.125 RT.003/13', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, '', 'DIKI ARIYADI', '3327101704990001', '18990304', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'DESA SERANG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, '', 'LUKMAN HAKIM', '3276010806700009', '18700021', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP.LIO JL. KEMBANG II RT 004 / RW 013 KEC.PANCORAN MAS', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, '', 'TOPAN HARYANTO', '3201122212900002', '19900177', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP. JAMPANG GG RAMBUTAN RT.003/001', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, '', 'RAKHMATULLOH', '3276051007880010', '18880117', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'PROKLAMASI RAYA RT09/02 ABADIJAYA SUKMAJAYA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, '', 'CALVIN HATTA PRAMANA', '3201041510910008', '19910134', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'JL KESATRIAN VIII NO.13 RT.025 RW.003', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, '', 'EKO AJI SAPUTERA', '3174092206910001', '20910496', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Jl. Jagakarsa RT.012/007 Jakarta Selatan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, '', 'TRY BUDI SEPTIANDOKO', '3201132409970005', '20971319', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'PERUM ANEKA GAS BLOK A3 NO. 2 CITAYAM', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, '', 'ILHAM SYARIEF', '3201011102970016', '20971324', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'DIAN ASRI 2 BLOK D-13 NO.06 CIBINONG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, '', 'ROBBI', '3276061711790004', '18790026', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP KEMIRI SAWAH RT 003 / RW 015 No.54', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, '', 'TEDI JUNAEDI', '3271020106950003', '20951146', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP MUARA KAJUR RT 03 RW 09 SINDANG RASA BOGOR TIMUR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, '', 'JAMALUDIN', '3271052806930003', '19930124', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP. PETIR RT.001/004 CIMAHPAR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, '', 'FEBRIAN BUHAIRY', '3201041402970001', '20971276', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'JEMBATAN HITAM CIJUJUNG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, '', 'AJI SAPUTRA WIJAYANTO', '3276022505940007', '20940887', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'JL. PAUS 3 BLOK BE NO.2 SUKATANI DEPOK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, '', 'RULLY YATMAN', '3201071509810006', '18810033', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP.RAWA HINGKIK RT.002 RW.001 LIMUS NUNGGAL CILEUNGSI BOGOR JAWA BARAT.16820', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, '', 'GURUH PERMANA', '3202391809960001', '19960071', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP. CIKUPA RT.001/006', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, '', 'R. AHDIYAT', '3216223010750007', '18750033', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP PARUNG BANTENG RT 01/01 CIBARUSAH', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, '', 'CUCU SAEPULLOH', '3201071911770010', '18770042', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP.BPM RT.02RW.016 CILEUNGSI CILEUNGSI BOGOR JAWA BARAT.16820', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, '', 'DEDE RIANSYAH', '3202391206970002', '19970320', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP. CIKARET RT. 001/009 KEL.NYALINDUNG KEC.NYALINDUNG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, '', 'BUDI SETIAWAN', '3201130609900002', '20900266', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Kp.Pulo RT.05/01 Kedung Waringin RT.05/01', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, '', 'DAUD RAKHMAN', '3175091211750008', '18750021', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'JL.Cibubur 1 RT 02 /RW 012 No.36', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, '', 'MUHAMMAD ARIEF', '3276032105920002', '19920150', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Pamulang Village Blok D.30', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, '', 'ANDRIYANSAH', '3201130912950005', '19950196', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP. WARINGIN JAYA RT.04/004 BOJONG GEDE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, '', 'ILHAM MAULANA AKBAR', '3201380912960002', '19960265', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP.CITUGU RT.005/011 KEL. TUGUJAYA KEC.CIGOMBANG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, '', 'AGUS PRIYANTO', '3309140504950001', '19950114', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KLISAT RT.003/004 GROGOLAN KARANGGEDE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, '', 'IRSAN NUGRAHA', '3201011903940008', '18940265', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'DIAN ASRI 2 BLOK D.13 NO.12 RT 06/15 PABUARAN CIBINONG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, '', 'YUSUF KHAERUDIN', '3276020307970013', '20970953', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Jl. Pekapuran Gg. Belong RT.07/022 Depok', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, '', 'TEIFA NUKI MARONDO', '3271051301910001', '20910633', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'JL. PAKUAN NO.58 RT.05/08', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, '', 'ADRI FEBRIYANSYAH RAMADHAN', '3276050802970004', '19970143', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KEBON DUREN RT.02 RW.03 KALIMULYA CILODONG DEPOK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, '', 'MOHAMMAD ARFIRI', '3671081708970009', '18970528', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Jl Wisma Melati 4 Blok A 3 No.35 Kel. Gembor Kec . Periuk', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, '', 'MUHAMAD NUR ARIFIN', '3276050906970009', '20970943', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Lingkungan Cikumpa RT.001/002 No.17', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, '', 'CHANDRA NUGRAHA SAPUTRA', '3276061002980002', '19980156', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'JL. NUSANTARA RAYA GG. HENCAT NO. 73 RT 003/013, BEJI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, '', 'IMAM RIZKY', '3276072212950001', '20950696', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Jalan rawageni rt 07 rw 07', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, '', 'WANDIANA', '3201031008900002', '18900209', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Kp. Pabuaran RT 003 / RW 007 Cicadas Gunung Putri Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, '', 'WAHYUDIN', '3201030104930005', '19940245', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KARANGGAN TUA RT 001\\008 DESA.KARANGGAN KEC.GUNUNG PUTRI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, '', 'ARUNG SAMUDRA FIRDIANTO', '1271133105990001', '18990459', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP.Pedongkelan No 12 RT 2 RW 15 Pulo Gadung Jakarta Timur', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, '', 'FAJAR DWI KUSUMA SARDANI', '3201012209910007', '18910278', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Kp.Cipayung No.35 RT.02 RW.09 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, '', 'FIKRI ALAMSYAH', '3276051705960015', '19960108', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'LINGK. CIKUMPA RT.001/002 MEKARJAYA SUKMAJAYA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, '', 'ABDUSSALAM', '3276050405890007', '20890021', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Lingkungan Cikumpa Rt 1/2 Depok 2 Tengah kec.sukmajaya kel.mekarjaya NO.121', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, '', 'GUSTI FATAHILLAH', '3276051811970003', '20971367', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP. MELATI RT.003/030 SUKMAJAYA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, '', 'IMRON HERLAMBANG', '3276060804980001', '20980909', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'JL.KEMIRI JAYA RT 08/01 No.23A Beji', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, '', 'RENDI', '3276011705950001', '19950065', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Kp. Pitara gg. Saiyan RT.005/019 Pancoran Mas', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, '', 'SANUSI', '3276050102790004', '18790038', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP BENDUNGAN RT 03/08 CILODONG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, '', 'BAGAS PANDU PRASETYO AJI', '3271040512970006', '18970216', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'JL. ELANG NO 13 CURUG INDAH', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, '', 'VICKY PRADANA HANS NUARI', '3201132502940004', '18940266', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'GRIYA YASA LESTARI BL.G5/4 BOJONG GEDE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, '', 'PAWIT SUBARKAH APRIYANTO', '3201374704890001', '18890041', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'GRIYA CENDEKIA C7 NO. 20 RT. 04/06, CURUG, GUNUNG SINDUR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, '', 'ALDO CHANIAGO', '3271042605970013', '20971317', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'JL. RAYA SEMPLAK GG. MARGAJAYA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, '', 'MUHAMAD HAFIZ IQBAL', '3201300804970004', '20970942', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Kp. Manggis RT.04/04 Dramaga Bogor 16680', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, '', 'ACHMAD FACHRRUOZIE', '3174070812951002', '19950198', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'JL.H SAIDI GURU NO 47', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, '', 'MUHAMMAD FAIZAL MAULANA', '3175052910950004', '18950366', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Jln.pertengahan rt.013/rw.003 cijantung', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, '', 'BONDAN PRASETYO', '3271041407980008', '18980241', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'CURUG PERMAI BLOK. L2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, '', 'ADITIYAWIBOWO', '3174011704970002', '20970165', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Jl Kp Bali Matraman rt.13 rw.01 ,NO.15 Jakarta Selatan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, '', 'EKA SUDAHYAR', '3276020904960002', '20960806', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Kp. Cimpaeun RT.004/004 Depok', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, '', 'TAUFIQ FAZARUDIN', '3174091604951001', '19950066', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP. SETU RT.003/001 CIGANJUR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, '', 'HASAN NURDIN', '3271042102740002', '17740712', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Kp Jawa RT 01 RW 07 Kel. Situgede Kec. Bogor Barat Kota Bogor 16115', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, '', 'REZA RAMADHANI', '3271041406840010', '18840020', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Jl Amasandi Taman Muara Rt 004 Rw 009 Pasirjaya', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, '', 'RIFQI AL AMIN DESTYADI', '3202322012920001', '20920726', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Kp. Selajambu Ds. Wanasari RT.21/05 Sukabumi', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, '', 'DENI LESMANA', '3271060107920006', '20920044', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP.SEREMPED 003/007 SUKADAMAI TANAH SAREAL BOGOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, '', 'DEDENG WAHYUDIN', '3211071308930005', '20930815', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Dsn Cacaban Ds. Cacaban RT.10/04 Kec. Conggeang- Sumedang 45391', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, '', 'BAMBANG IRAWAN', '3271050409880018', '20880085', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Cilendek Timur RT.003/006', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, '', 'DEDE HENDI', '3201270704950006', '18970259', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP. BABAKAN RT 14/04 CIMANDE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, '', 'HERDI PRIANA', '3201251506930007', '19930025', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP. JOGJOGAN RT.001/002 JOGJOGAN CISARUA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, '', 'ANGGA WARISMA', '3271062108940010', '18940553', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP. SITUPETE KEL SUKADAMAI KEC TANAH SAREAL', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, '', 'ANGGI CAHYADI', '3271031206950012', '18950647', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'JL. KEBON KOPI RT02/06 BOGOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, '', 'DIMAS BRAHMANTYA', '3271061501890014', '20890212', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP. SIRNASARI KEL PAGELARAN RT.02 RW.06', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, '', 'ANDIKA RACHMAN', '3271043105940001', '18940592', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Gunung Batu Gg Bengkong Rt 02 Rw 10 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, '', 'DARUL FADLI', '3201040707930001', '19930193', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'CIJUJUNG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, '', 'RAKA PAISAL', '3271042205940010', '20940702', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Komplek IPB I Sindang Barang Loji RT.003/008 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, '', 'SAEFUL BAHRI', '3271040507950006', '20950709', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Jl. Hegarmanah III No.54 RT.01/08 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, '', 'DEVI ARIYANTO', '3201190712920005', '18920147', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP. GEDONG SAWAH RT 05/01 JASINGA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, '', 'ABD ROHMAN', '3201121507940003', '18940240', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP. SALABENDA RT 04/06 KEMANG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, '', 'HAMDAN', '3201221211920005', '20951145', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP PARAKAN 3 DESA SUKARAKSA RT 001 RW 006', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, '', 'AGUNG ADRIANTO', '3213021404970001', '20970925', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'kp darmaga rt 1 rw 2 desa darmaga kecamatan ci salak kabupaten subang', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, '', 'GIRI SUSENO', '3201122107930009', '20930818', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Kp. Kiara I RT.06/03 Ds. Pabuaran Kemang-Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, '', 'DONI RIYADI', '3271060505870005', '18870118', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Jl. Kebon Pedes Rt.002/Rw.009 Gg.Kemuning III No.17', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, '', 'TEGUH WIYONO', '3271031109740013', '17740711', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'Kp Gudang Rt 004 Rw 001 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, '', 'HARIS FIRMANSYAH', '3271061410840013', '20840003', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Kebon Pedes Rt 6/9', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, '', 'RIFAN MUNAWAR', '3201251910930003', '20930829', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Kp. Cipari No. 37 RT 03/03 Ds. Leuwimalang Cisarua-Bogor 16750', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, '', 'MUSTAR', '3201032004760005', '18760040', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'KP BOJONG RT 02/04 CITERUEP', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, '', 'IMAN JULIANTO', '3601121007900004', '19900006', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Jl Jend Sudirman No 104 RT01/09 Labuan 42264', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, '', 'GIAN HAKIKI', '3329040811950002', '19950020', 'ASO', 'ASSURANCE', '', '', 'TELKOM AKSES', 'DK SAWANGAN RT 13/02, KEL. WANATIRTA, KEC. PAGUYANGAN KAB. BREBES', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, '', 'IWAN HERIYANTO', '3271022411820004', '826010', 'CCAN', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Kalibata No 14 A Rt 03 Rw 03 Bogor Utara 16153', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, '', 'CALVIN DESTIANO', '3201111712920003', '18920311', 'CCAN', 'ASSURANCE', '', '', 'TELKOM AKSES', 'Desacibinong Jl. Pahlawan No.47, Gunung Sindur', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, '', 'AYU NURHAYATI', '3206244510960008', '20960802', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP.CINTAWNA PEUNTAS RT/RW 001/004 Desa Singasari Kecamatan Singaparna', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, '', 'MUHAMMAD LUTHFI SALEH', '3201030209920009', '19920096', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp Gudang RT001/009 Kel Karang Asem Barat Kec Citeureup', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, '', 'DAUD MUBAROK YUSUF', '3271052009850008', '19850023', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP KRAMAT RT 02/01 TANAH BARU', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, '', 'SARIPUDIN BIN BAYONG', '3201070509850025', '18850091', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP RAWA JAMUN TR 03/04 CELEUNGSI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, '', 'OCEP NUGRAHA', '3201082810850001', '18850092', 'CCAN', '', '', '', 'TELKOM AKSES', 'TEGALENCONG RT 02/01 CARIU', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, '', 'ANDRIA', '3201250201860006', '20860041', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp. Cibogo Rt.01/03 Ds. Ciseeng Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, '', 'ANDI HERMANTO', '3201012511860004', '18860070', 'CCAN', '', '', '', 'TELKOM AKSES', 'KOMP PABUARAN INDAH BL I6/03', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, '', 'NANANG', '3602090504940001', '20951042', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP. BALI KEL. DURI KEPA KEC. KEBON JERUK PROV. DKI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, '', 'ARTA ELMIAWAN', '3505111712810001', '20810009', 'CCAN', '', '', '', 'TELKOM AKSES', 'cikondang RT/RW. 009/004 Katulampa Bogor Timur', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, '', 'AGUS TRI SUSILO', '3404172401880001', '20880084', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. Lapangan Tembak Rt 006/001 Cilandak Timur Kec. Pasarminggu DKI Jakarta Selatan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, '', 'MUHAMMAD FATONI', '3201291907860002', '20860018', 'CCAN', '', '', '', 'TELKOM AKSES', 'Bukit Asri Ciomas Indah A1 No 1 RT 07/13 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, '', 'BOY RELANDO TUMPAL PARULIAN PURBA', '3271050702970002', '20971368', 'CCAN', '', '', '', 'TELKOM AKSES', 'Jl. Pangeran Sogiri 350 Tanah Baru RT.005/002 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, '', 'MUCHTAR', '3271041703760005', '19760018', 'CCAN', '', '', '', 'TELKOM AKSES', 'Gg.Salim Cilendek Timur RT.03/01 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, '', 'AGUS SALIM', '3201011111860007', '18860071', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP CIKARET RT 03/07 CIBINONG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, '', 'JIM RIZKY PRATAMA', '3271052907880003', '20880015', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP Kramat kelTanah Baru Rt 5/1 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, '', 'DIAN SUPARDI', '3201291305910003', '20910650', 'CCAN', '', '', '', 'TELKOM AKSES', 'LALADON GEDE GG II RT.02/04', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, '', 'WAHYU RAMDANI', '3271021202940011', '19940121', 'CCAN', '', '', '', 'TELKOM AKSES', 'CIHEULEUT RT.04 RW.08', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `datapersonnel` (`id`, `slug`, `nama`, `nik`, `nik_ta`, `loker`, `stream`, `sto`, `witel`, `mitra`, `alamat`, `upload_gambar`, `created_at`, `updated_at`) VALUES
(254, '', 'CEPI MAULANA', '3271042801840009', '846048', 'CCAN', '', '', '', 'TELKOM AKSES', 'Cilubang nagrak rt 001/004 No.36', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, '', 'KEVIN FERDINAND PAATH', '3271051906980010', '19970070', 'CCAN', '', '', '', 'TELKOM AKSES', 'Jl. Pangeran Sogiri 263 bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, '', 'NOVAN RUSFIYANA', '3271040511930008', '20931219', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. CIREMAI UJUNG NO 10 RT 3 / RW 2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, '', 'MUHAMAD YUDA DARMA', '3201250408930002', '20931001', 'CCAN', '', '', '', 'TELKOM AKSES', 'Jl. Raya Puncak Kpg. Anyar RT.03/03 Kel Cisarua Bgr', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, '', 'MUHAMMAD LEDIYANA YUSUP. ST', '3201382202860001', '20860020', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP. Cinangka Rt 02/09 desa tugujaya kecamatan cigombong kabupaten Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, '', 'ANDI GUNAWAN', '3271010202900018', '20900264', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp.Bojong Pesantren RT.02/03', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, '', 'AGUNG OKTAFIAN HAZRI', '3275061610970009', '19970069', 'CCAN', '', '', '', 'TELKOM AKSES', 'Jl.Maengket Raya No.26 Depok', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, '', 'ITAR SUTARI', '3271032307740003', '74180001', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. PANARAGAN KIDUL RT.005/05', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, '', 'DIAN KUDUS', '3211172810910002', '20910494', 'CCAN', '', '', '', 'TELKOM AKSES', 'Jln Suradinata RT04/01 Dsn. Sukamulya Ds. Gunasari Kec. Sumedang Selatan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, '', 'HENRI SARIPUDIN', '3201122407870004', '18870088', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp.Poncol desa pondok udik RT 01 / RW 01 NO.11 KEC.KEMANG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, '', 'AGIL HARSENO', '3271040510920011', '20920051', 'CCAN', '', '', '', 'TELKOM AKSES', 'Gang Menteng No 8 Rt 3/2 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, '', 'MOCHAMAD ARRI PERMANA', '3271030910920004', '20920052', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. Rumah sakit 2 babakan fakultas Rt3/5 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, '', 'ADITYA PRASETYO', '3201041105960002', '18960707', 'CCAN', '', '', '', 'TELKOM AKSES', 'Perum.Cijujung Permai Blok Q No.7 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, '', 'MUHAMAD HAFDI PULUNGAN', '3271031510940007', '18940705', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL CIWARINGIN KAUM RT 04/05', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, '', 'ADE AGUNG TRIYONO', '3271060512930015', '20931000', 'CCAN', '', '', '', 'TELKOM AKSES', 'PONDOK RUMPUT RT.02/05', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, '', 'YUSUP ANDRIYANTO', '3272050701950001', '955056', 'CCAN', '', '', '', 'TELKOM AKSES', 'Btn Jayaraksa Blok M No. 11 ,002/007, Kec Baros,', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, '', 'KRISBIANTO', '3674031610980003', '19980151', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. PONDOK AREN NO.53 RT.002/04', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, '', 'ANDI RIAN FAUZI', '3201031912950002', '20950690', 'CCAN', '', '', '', 'TELKOM AKSES', 'Jl. Pahlawan Gg. Machsan RT.02/02 ds. Karang Asem Citereup', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, '', 'LERRY FERDHIAN', '3272052501980001', '20980810', 'CCAN', '', '', '', 'TELKOM AKSES', 'Genteng Kel. Baros RT.02 RW.03 Sukabumi 43161', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, '', 'SUSWANDI', '3201030406900008', '19900108', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp.sentul rt 01/02', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, '', 'MUR ROFIK', '3329032008920010', '20920717', 'CCAN', '', '', '', 'TELKOM AKSES', 'DESA CIPAMBUAN RT/RW 01/01 BABAKAN MADANG SENTUL BOGOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, '', 'MUHAMMAD ZEIN ERIF AL AMIN', '3201040209930001', '19930298', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP. SUKARAJA RT.002/005', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, '', 'M. SANDI SETIA', '3201382503910002', '20910635', 'CCAN', '', '', '', 'TELKOM AKSES', 'CIAWI RT.02/07 BOGOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, '', 'IRFAN YUDVI FADLURROHMAN', '3201012911970002', '20970936', 'CCAN', '', '', '', 'TELKOM AKSES', 'Nirwana Estate Blok R.17', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, '', 'THESAR ADITYA', '3201012912770004', '18770036', 'CCAN', '', '', '', 'TELKOM AKSES', 'KOMP SURYA PRAJA PERMAI BL F4/18', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, '', 'EKO PURWANTO', '3201132502920006', '18920447', 'CCAN', '', '', '', 'TELKOM AKSES', 'Perum.Bukit Waringin Blok E5 No.9', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, '', 'WISNU MANDALA PUTRO', '3201132709920001', '20920054', 'CCAN', '', '', '', 'TELKOM AKSES', 'Perum Bukit Waringin Blok E/6 Rt7/10 Bogor NO 30', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, '', 'AHMAD SAHID RUSTENDI', '3271022309950010', '19950118', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. RAYA WANGUN TENGAH RT.02 RW.03 SINDANG SARI BOGOR TIMUR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, '', 'ALI ASHABULAH', '3206332807930001', '18930506', 'CCAN', '', '', '', 'TELKOM AKSES', 'kp karang asem timur 01/04 kec.Citeureup kab.Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, '', 'SYAMAN JAYA', '3271030306940004', '20940706', 'CCAN', '', '', '', 'TELKOM AKSES', 'Komp. Balitnak Blok D14 RT.003/006 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, '', 'HENDRI KURNIAWAN', '3318121304890001', '19890081', 'CCAN', '', '', '', 'TELKOM AKSES', 'Ds.Jimbaran kec.margorejo Kab,Pati RT08/01', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, '', 'DHIKA ERIYANDA', '3204062810970001', '20970175', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp. Babakan Rt 003 Rw 005 Kel Karadenan Kec Cibinong', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, '', 'INDRA MELAFIEAR', '3201071309820007', '18820067', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP TENGAH RT 01/05 CILEUNGSI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, '', 'SUPRAPTO', '3276020710820005', '18820068', 'CCAN', '', '', '', 'TELKOM AKSES', 'CIMPAEUN RT 03/08 DEPOK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, '', 'HILMAN PRIYANA', '3207182309830004', '18830048', 'CCAN', '', '', '', 'TELKOM AKSES', 'Perumahan Bukit Serpong Indah BL K5/7 Cibinong Gunung Sindur Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, '', 'RACHMAT MAULANA', '3201250402820015', '21820001', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp.JOGJOGAN RT.001/2, DESA.JOGJOGAN,CISARUA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, '', 'IMAM PERMANA', '3201261104840001', '20840004', 'CCAN', '', '', '', 'TELKOM AKSES', 'Perum Bambu kuning Blok A3 No 9 Rt 1/14 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, '', 'ALPIN NURCAHYA', '3201360507910004', '18910298', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP.NAGRAK RT.001 RW.001 ANTAJAYA TANJUNGSARI CARIU BOGOR JAWA BARAT', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, '', 'JAKA SAPUTRA', '3271060702850018', '19850014', 'CCAN', '', '', '', 'TELKOM AKSES', 'BUBULAK GG.ARJUNA RT01/06 KEBON PEDES TANAH SAREAL BOGOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, '', 'SURYADI', '3271030206890006', '20890022', 'CCAN', '', '', '', 'TELKOM AKSES', 'Jl ME.Wira gg.Cikang Rt 05/04 Kp.Jati Parung Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, '', 'YOGIE HERYAWAN', '3201132205930001', '20930831', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp. Gedong Bojong Gede RT.02/10 no 25 bogor 16922', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, '', 'MOHAMMAD TAUFIK HIDAYAT', '3275062305940006', '20940700', 'CCAN', '', '', '', 'TELKOM AKSES', 'Jl. Lame Kp. Kalimanggis No. 05 RT.003/005 Kel. Jatikarya Kec. Jatisampurna', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, '', 'DEDE MULYADI', '3201041112880001', '19880001', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP. TEGAL LEGA RT 03/01 BOGOR TENGAH', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, '', 'SUHENDRA', '3201132410780003', '18780032', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp sudimampir rt 03/12', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, '', 'NUR ICHSAN SEPTALEMAN', '3271022309950007', '20950905', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP. MUARA KEL SINDANG RASA RT.03/04', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, '', 'TUBAGUS RUDY DARMAWAN', '3271040708800023', '18800010', 'CCAN', '', '', '', 'TELKOM AKSES', 'Bogor Raya Permai blok FM 3 No 16 RT 004 RW 14 Kel Curug Kec Bogor Barat', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, '', 'DEDY SOERYADI', '3276022609700005', '18700018', 'CCAN', '', '', '', 'TELKOM AKSES', 'LEMBAH NIRMALA 1 BLOK G NO.4 KELURAHAN MEKARSARI KECAMATAN CIMANGGIS', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, '', 'ILHAM KURNIAWAN', '3201130710940003', '18940586', 'CCAN', '', '', '', 'TELKOM AKSES', 'Jl. Kampung Citayem ,002/005', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, '', 'SYARIFUDDIN', '3671060407960002', '18960705', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kampung Pulo No.52 RT.03/RW.01 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, '', 'HAMZAH ARFAH', '3271041610950008', '18950723', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp Babakan Rt 04 Rw 11 Bogor 16115', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, '', 'SADAM HUSAEN', '3201131602910006', '18910060', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP. CITAYEM', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, '', 'ANDIKA PUTRA UTAMA', '3201371204950002', '20950691', 'CCAN', '', '', '', 'TELKOM AKSES', 'Pura Bojong Gede Blok R5/23 RT.03/17', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, '', 'ANGGA ARDI FEBI ANTO', '3271042809920004', '18920144', 'CCAN', '', '', '', 'TELKOM AKSES', 'BABAKAN LIO RT 05/11 BALUMBANG JAYA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, '', 'TRI NOVIANTO', '3276022111870003', '18870087', 'CCAN', '', '', '', 'TELKOM AKSES', 'jl Sono Kembang VI no 151 rt 05 rw 08 sukmajaya depok', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, '', 'EDVAN WIJAYA', '3201041002750001', '18750023', 'CCAN', '', '', '', 'TELKOM AKSES', 'Mega Sentul Alamanda K-2 ,Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, '', 'M. FIQRI NUGRAHA', '3201252910950003', '19950047', 'CCAN', '', '', '', 'TELKOM AKSES', 'DESA CILEMBER CISARUA,KP KADU GEDE RT 02/01', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, '', 'HARY HANDIKA', '3201011401900002', '20900268', 'CCAN', '', '', '', 'TELKOM AKSES', 'Pondok Rajeg Indah Blok D/39', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, '', 'ASEP SUKMA YUDA', '3201010809880012', '18880115', 'CCAN', '', '', '', 'TELKOM AKSES', 'KEBON DUREN RT001/004', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, '', 'ERVAN SETIAWAN', '3201131504970005', '20970934', 'CCAN', '', '', '', 'TELKOM AKSES', 'Pondok Bambu Kuning A1 No.1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, '', 'AGUNG WIBOWO', '3174041108990006', '18990306', 'CCAN', '', '', '', 'TELKOM AKSES', 'Taman Raya Citayam Blok F2 No.32 RT.01/13 Desa rawa panjang, Bojonggede, Kab. Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, '', 'AZI HERNAWAN', '3201292305930003', '18930503', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp.Cibogel RT.004 RW.013 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, '', 'PRAYOGA NUGRAHA SANTOSA', '3271053012900004', '20900392', 'CCAN', '', '', '', 'TELKOM AKSES', 'kp.kandang roda RT.001 RW.004', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, '', 'DIKI PERMANA', '3201161909910006', '20910038', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp. Cimangir Rt 4/3 desa Galuga kecamatan Cibungbulang', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, '', 'JAMALUDIN', '3271050608900004', '18900211', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kampung Ceger, Rt.04 Rw. 05 No.35, Tegal Gundil', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, '', 'MUHAMAD FAHMI ISMARDIANSYA', '3271042702075990', '18910279', 'CCAN', '', '', '', 'TELKOM AKSES', 'Perumahan curug permai blok K no 5 rt/rw 04/10 kel CURUG kec Kota Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, '', 'LUKMAN NUR HAKIM', '3201011910860007', '18860056', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP CIKEMPONG RT 04/09 PAKANSARI CIBINONG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, '', 'RAMA WIJAYA', '3271062107950013', '20950704', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. Tugu wates kedung halang RT.001/001 no.7 kel.Sukaresmi kec.Tanah sareal', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, '', 'BAMBANG PURNOMO', '3201131710930003', '18930509', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp.citayam rt002/005 ds.ragajaya kec.bojonggede', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, '', 'MUHAMAD JAELANI', '3271010110950015', '20950904', 'CCAN', '', '', '', 'TELKOM AKSES', 'SIRNAGALIH RT.01/02 DESA HARJASARI KOTA BOGOR SELATAN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, '', 'MUHAMAD SYIDIQ PERMANA', '3273262608970002', '20970209', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL CIJAMBE NO.49 RT.04 RW.06 KEL.PASIRENDAH KEC.UJUNGBERUNG BANDUNG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, '', 'SUHARDIAN', '3201342307930006', '20931025', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. ATS KP. PASIR GAOK RT.01/03', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, '', 'IMAM SOLIHAT', '3271062006760021', '18760035', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kdh sentral sukaresmi 04/04 bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, '', 'MUHAMMAD YUSUF', '3271030301790009', '19790019', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL.TERAPI 1B BLOK BU NO.4 RT02 RW 16 BUMI MENTENG ASRI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, '', 'ANDI HERMAWAN', '3276032611950004', '18950370', 'CCAN', '', '', '', 'TELKOM AKSES', 'Villa Pamulang DF 17 No.6 Jalan At - Taqwa 4 RT.3/10, Pondok Petir -Bojong sari', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, '', 'NICKO LANDA KEMALA', '3271030910920007', '20920719', 'CCAN', '', '', '', 'TELKOM AKSES', 'jln veteran panaragan kidul no 42 rt 001/006 Kec Bogor Tengah Kota Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, '', 'REALLITA HAYATI', '3201374106920001', '20920724', 'CCAN', '', '', '', 'TELKOM AKSES', 'Perum Pura Bojong Gede Blok F4/16 Jl. Lampung V bgr', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, '', 'FARHAN NUR FADLILA', '3201271709980002', '19980200', 'CCAN', '', '', '', 'TELKOM AKSES', 'Jln.Raya Sukabumi, Kp Cikereteg Rt01/04', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, '', 'NURSAL FACHRIZAL HAKIM', '3271042303970016', '19970150', 'CCAN', '', '', '', 'TELKOM AKSES', 'CILUBANG TONGGOH RT.001/002 SITUGEDE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, '', 'SONY SOFYANDI', '3201070406760012', '18760039', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP TENGAH RT 01/06 CILEUNGSI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, '', 'EKO WIBISONO', '3271023110940009', '18940270', 'CCAN', '', '', '', 'TELKOM AKSES', 'BLOK AB RT 02/10 KATULAMPA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, '', 'MUCHAMAD RIDWAN', '3201042010890001', '18890029', 'CCAN', '', '', '', 'TELKOM AKSES', 'CILUAR PERMAI BLOK F 1/28 RT 05/09 CIJUJUNG SUKARAJA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, '', 'SYAHRUL RAMADHAN', '3201381501970001', '18970258', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP. Cibolang RT 01/06, banjarwangi, ciawi kab.bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, '', 'ACEP SYAEFUDIN', '3201011709900001', '19900114', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. RAYA PEMDA DARUSAALAM', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, '', 'PANJI PAMUNGKAS', '3201132907920003', '20920919', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP. SUDI MAMPIR JL. KEMUNING III NO 27 RT 03 RW 04 BOGOR 16320', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, '', 'FAJAR SANTIKA BUDIMAN', '3520070305950004', '19950204', 'CCAN', '', '', '', 'TELKOM AKSES', 'jl.sindang barang sekolahan rt01/rw05 sindangbarang bogor barat', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, '', 'M.ADITYA YUDHISTIRA', '3271051506850016', '855961', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. CIREMAI UJUNG NO. 14 KEL. BANTARJATI ATAS KEC. BOGOR UTARA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, '', 'WAHYU MAULANA', '3271011309930016', '18930372', 'CCAN', '', '', '', 'TELKOM AKSES', 'Jl. Raya Tajur Biotrop Kampung Gandok Rt 04 RW.05 Kel. Pakuan Kec. Bogor Selatan No.06', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, '', 'SUHARTONO', '3201310303900004', '19900024', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kp. Kabandungan RT.003/004 sirnagalih Taman sari', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, '', 'LUKMAN NURHAKIM', '3271041505920004', '19920015', 'CCAN', '', '', '', 'TELKOM AKSES', 'CIJAHE RT.006/001 CURUG MEKAR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, '', 'ANGGI PRATAMA PUTRA', '3201291208890002', '18890148', 'CCAN', '', '', '', 'TELKOM AKSES', 'Ciomas Permai Blok D 19 No 6-7 RT 002 RW 009 16610 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, '', 'ANGKI RAMADHAN', '3276052901960006', '20960091', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. Akasia 5 no 154 Rt 6/3 Depok', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, '', 'JUNITA WULANDARI', '3276054706900006', '17900944', 'CCAN', '', '', '', 'TELKOM AKSES', 'Komp. Cimangis Indah Blok V15 Rt.002 Rw.005, Depok, 16415', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, '', 'BAMBANG PURNAMA ALAM', '3201141709900005', '20900390', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. MOH NUR NO.53 KP. BANYUSARI RT.01/08', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, '', 'RICKY FIRMANSYAH', '3271040707930017', '20930053', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL. Pinus Raya no 11 Rt 3/5 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, '', 'RIDWAN HARDIANSYAH', '3271051805960011', '19960022', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP. BABAKAN CIMAHPAR RT 005/008 KEL. CIMAHPAR KEC. BOGOR UTARA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, '', 'EKO YUDHA PRASETYO', '3201202108970001', '20971280', 'CCAN', '', '', '', 'TELKOM AKSES', 'JALAN ANYSANU 14 NO 1 PERUMNAS I PARUNG PANJANG BOGOR RT 4 RW 7 BOGOR 16360', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, '', 'ERDYANSYAH SETIAWAN', '3271061101940008', '19940060', 'CCAN', '', '', '', 'TELKOM AKSES', 'Kedung Halang Sentral RT.03/04 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, '', 'SAHRUL INDRA', '3276052911770005', '18770035', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL.Ramin 3 No.22 RT 01 / RW 08', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, '', 'MUHAMMAD RIVANI', '3173051910010002', '20010033', 'CCAN', '', '', '', 'TELKOM AKSES', 'KEBON JERUK RT 003 RW 013 KEC KEL KEBON JERUK JAKARTA BARAT', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, '', 'PUTRA RAMA GUSTIANTORO', '3173010712010012', '20010034', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL H SANUSI RT 004 RW 004 KEL RAWA BUAYA KEC CENGKARENG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, '', 'RANGGA PRAWIRA', '3603120806010006', '20010035', 'CCAN', '', '', '', 'TELKOM AKSES', 'JL DAHLIA VI E 25/22 PD INDAH RT 010/011 KEL KUTABUMI KEC PASAR KEMIS', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, '', 'MOHAMAD FERDIANSYAH', '3201132002020001', '20020017', 'CCAN', '', '', '', 'TELKOM AKSES', 'KP BOJONGGEDE RT 004 / 013 KEL KEC BOJONGGEDE KAB BOGOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, '', 'MICHAEL D SABNANI', '3271050803870007', '876860', 'CCAN', '', '', '', 'TELKOM AKSES', 'BTN Tanah Baru Blok F2 no. 5 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, '', 'ATMAJAYA', '3201012504870019', '91190004', 'CCAN', '', '', '', 'TELKOM AKSES', 'KAMPUNG CIKARET rt 003/006', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, '', 'TAUFIK HIDAYAT', '3211251104930002', '19930043', 'CCAN', '', '', '', 'TELKOM AKSES', 'DUSUN MARELENG RT.10/04 DESA CIPELANG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, '', 'DONO FANBERI', '3271033006970009', '20970931', 'CCAN', '', '', '', 'TELKOM AKSES', 'Jl.Veteran Aspol Panaragan RT.004/004 No.24 Blok.C', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, '', 'YUSUF NOVAL ABIDIN', '3276010708980005', '19980121', 'CCAN', 'PROVISIONING', '', '', 'TELKOM AKSES', 'KP. PANCORAN MAS RT 006/006 PANCORAN MAS', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, '', 'GUNAWAN SAPUTRA', '3276060512980001', '19980098', 'CCAN', 'PROVISIONING', '', '', 'TELKOM AKSES', 'JL. M ALI 2 TANAH BARU', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, '', 'TEGUH MASTU', '3271063103900004', '20900272', 'CCAN', 'PROVISIONING', '', '', 'TELKOM AKSES', 'kp. Situ pete RT.03/07 bogor 16165', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, '', 'IQBAL MAULANA IBRAHIM', '3201151708950014', '18950645', 'CCAN', 'PROVISIONING', '', '', 'TELKOM AKSES', 'JL.DRAMAGA TANJAKAN RT 3 RW 5 DRAMAGA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, '', 'SUPYAN SAURI', '3201082901070001', '18970486', 'CCAN', 'PROVISIONING', '', '', 'TELKOM AKSES', 'CISARUA RT 02/12', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, '', 'RIFALDI PUTRA', '3301100906981003', '19980126', 'CCAN', 'PROVISIONING', '', '', 'TELKOM AKSES', 'JL.H ASMAWI GG.CENDANA NO.03 RT.03/05 BEJI KOTA DEPOK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, '', 'INDRA RAMADHAN', '3174012401980001', '19980124', 'CCAN', 'PROVISIONING', '', '', 'TELKOM AKSES', 'PERSADA II RT 08 / RW 015 , TEBET , JAKARTA SELATAN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, '', 'ANDRI MARDIANA', '3275095202910008', '20900382', 'CCAN', 'PROVISIONING', '', '', 'TELKOM AKSES', 'KP CAKUNG PAYANGAN KEL JATISARI KEC JATIASIH RT 001 RW 005 BEKASI 17426', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, '', 'EGAR MAULANA PUTRA', '3203062408910250', '20910634', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'JL. ATANG SENJAYA KP. ANYAR BTR KAMBING RT.03/06', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, '', 'MUHAMMAD IHSAN MUBAROK', '3271032706900004', '19900049', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'Babakan Situ Daun Tenjolaya Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, '', 'DEDEN MUHAMMAD HAMDI', '3201291008940004', '20940691', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'Villa Ciomas Indah Blok P10 No.26 RT.03/10 Bogor 16610', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, '', 'ANDI MAULANA', '3271011909910009', '19910215', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'KP.JAWA RT.003/001 DS. KOTA BATU KEC. CIOMAS', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, '', 'HENDRI RIASMAN', '3173040505880021', '855825', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'BOGOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, '', 'WIDAYANTI', '3271016611950002', '19950113', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'KP. NANGGERANG RT.001/006 RANGGAMEKAR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, '', 'ABDUL AZIS', '3271020910950007', '19950057', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'JL. PARUNG BANTENG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, '', 'JUWANDA', '3271062410810006', '20810004', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'Kedung Hanlang Sentral Sukaresmi Rt 3/4 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, '', 'IWAN DARMAWAN', '3201012305870002', '18870086', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'KP BEDAHAN RT 01/02', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, '', 'HERI HERYANTO', '3201012409880008', '18880116', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'DEPOK ALAM LESTARI BLOK B3.NO8 RT 001 / 014 HARAPAN JAYA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, '', 'TITO RAHMAN PERDANA', '3271050803910002', '20910707', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'Jl.Drupada Raya No. 14', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, '', 'JOHAN CHRISTIAN SIANIPAR', '3174011906900007', '906483', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'Gudang Peluru Blok.P/382 RT.009 RW.003 Jakarta', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, '', 'BASUKI PANORANGAN', '3171030311900001', '906141', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'Jl Remaja 2 Rt. 003 Rw. 08 Kel.Cempaka Baru Kec. Kemayoran No . 37 Jakarta Pusat', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, '', 'SUTARDI', '3201071511720009', '18720009', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'Kp Cipicung Mekarsari Cileungsi Rt 10 Rw 04 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, '', 'ROBI ALDI AWALUDIN', '3201012607970003', '20971551', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'LINGKUNGAN 02 CITATAH DALAM CIRIUNG - CIBINONG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, '', 'FACHRI EKA ADITYAWAN', '3276011406950004', '18950903', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'Jl.Raya citayam Gg.Masjid Al falah, Rt.06/Rw.05, No.85, Kel Ratujaya, Kec. Cipayung, Depok', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, '', 'TAUFIK HIDAYAT', '3175042211710004', '18710013', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'Cililitan Besar Rt. 008/09 No 52, Kramat Jati, Jakarta Timur', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, '', 'PRAJA MULYA PUTRA', '3173032805920001', '20920917', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'PERUMAHAN BOJONG GEDE INDAH jl. bromo 4 blok HH no. 12 RT 002 RW 019 Bojonggede', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, '', 'NURDIANSYAH', '3276022309940012', '18940706', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'Kp.Palsigunung ,006/01 No.54,Cimanggis Depok', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, '', 'ANDIKA CHERY SERANO', '3276082805930002', '18930208', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'Jl Abdul Gani I. Perumahan Ferari Bulak Indah Blok A1 No 10 RT 006 RW 002, Kode pos: 16414 Kel. Kalibaru Kec. Cilodong', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, '', 'AMY CHAIDIR', '3276060503910002', '20910490', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'kp. gedong rt.03/19 kel. kemirimuka kec.beji depok', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, '', 'IWAN SUPRIATNA', '3201012409750010', '19750008', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'JL.H. Abdul Hadi No. 41 RT 04/04 Kp.Curug Kel. Pakansari', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, '', 'DEDE NORMAN', '3276030207720006', '18720014', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'JL.PAHLAWAN NO.11 RT 02 / RW 09 CINANGKA SAWANGAN DEPOK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, '', 'REZA ASQALANY', '3175091104850004', '18850023', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'Jl. Blok Ringin RT.006 RW.003, Cibubur, Ciracas', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, '', 'ARIO PANGESTU', '3175090609950001', '20950694', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'Jl.Suci No.16 Kel.Susukan Jakarta Timur', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, '', 'GUNAWAN IZHAMI', '3276010105900005', '18900210', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'Jl. Pitara Raya Gg. Mandiri III, 003/015, Depok 16436', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, '', 'HAMDINI RIZKI AWALIYAH', '3275126005940005', '18940707', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'PONDOK MELATI RT.002 RW.009 NO.49 JATIWARNA PONDOK MELATI BEKASI JAWA BARAT.14715', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, '', 'AISYAH IDRIS', '3271065203730018', '19730008', 'ASO', 'PROVISIONING', '', '', 'TELKOM AKSES', 'Jl.SHOLEH ISKANDAR KP SEREMPED RT02/04 NO.18', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, '', 'PANDU PRATAMA MURTI', '3271033110910004', '916020', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Kp. Neglasari No.26 RT 03 RW 04 Kelurahan Cibuluh Kecamatan Bogor Utara', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, '', 'ANDRY RENALDY', '3201040808930004', '18930191', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'KP. PASIRKAKAPA RT 02/03 PASIRLAJA SUKARAJA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, '', 'REFINA DUPI HANDINI', '3271056105980008', '20980813', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Kp. Neglasari RT.003/004 Cibuluh', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, '', 'MUHAMAD IRFAN', '3271031207980002', '19980202', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Panaragan Baru rt. 001/005', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, '', 'ARIA WITJAKSONO', '3174090508970006', '20970166', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Perum Jatijajar Blok A26 no 10 Rt 7/10 Depok', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, '', 'GAMAL ADILA', '3271062911950012', '19950193', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'kp cibuluh kedung badak rt 06/03 no 28 kelurahan kedung badak kecamatan tanah sareal', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, '', 'KHOIRUNISSA ZAHRANI S', '3201134704990001', '995053', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Griya Waringin Elok B8 No.9RT.01/08', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, '', 'PRIYANTO', '3174022202970002', '19970025', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Jl Karet Belakang No 23 RT10/07 Kel Karet Kuningan Jakarta Selatan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, '', 'DINA DELIYANTI SE', '3271046103810009', '19810015', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Cilendek Timur rt001/007 kel Cilendek Timur kota Bogor Barat', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, '', 'PUTRI AYU MUTIARA', '3271065903890022', '20890272', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'PERUM BUKIT KAYUMANIS BLOK AB NO.32', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, '', 'RAKHA NURDIANSYAH', '3175021407960001', '20961395', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'JL.RAYA KEDUNG HALANG WATES RT 01 RW 01', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, '', 'WAHYUDIN', '3202190803910001', '20910505', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Kp. Ciaul RT.005 RW.002 Mekarjaya Kabandungan Sukabumi', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, '', 'ANISA SHAFIRA', '3276065305000003', '20180063', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'JL. KETAPANG NO.14 RT 4 RW 9 DEPOK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, '', 'DARY EKADANA LUKMANTORO', '3201302805970001', '19970135', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'IPB ALAM SINAR SARI RT.04/04', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, '', 'MUHAMAD NAFIS', '3271040205980013', '19980201', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'GG BENGKONG NO 53 RT 001/010 KELURAHAN GUNUNG BATU KECAMATAN BOGOR BARAT', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, '', 'MUHAMMAD RIZKI AMRINALDI', '3271012805970007', '19970256', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Tajur Kel Pakuan No.170', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, '', 'MUHAMAD JAENUDIN', '3201293008900001', '20900381', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'KP. BOJONG SARI RT.04 RW.04 CIAPUS', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, '', 'MAYA NOVIANTI', '3201046211980003', '19980066', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Kp. Bojong Kemang RT.001/001 Desa Cikeas Kecamatan sukaraja Kabupaten Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, '', 'FARIZ TAUPIK TEBE AL AMRI', '3271011012930022', '19930026', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Bakom Sari Kel. Harjasari RT.03/12 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, '', 'KARLINA NURHAYATI', '3211106603950004', '20950698', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Dusun Sumber Desa Bojongloa RT.23/11', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, '', 'ANANDA NABILA LESTARI', '3271016310980007', '19980199', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'Komplek Kehutanan Desa Muarasari Rt. 001/003', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, '', 'SELSA SINTIA', '3273215909000002', '20190004', 'ASO', 'HELPDESK', '', '', 'TELKOM AKSES', 'MENGGER TENGAH RT/RW 001/001 KEL. MENGGER KEC. BANDUNG KIDUL', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, '', 'RUSWAN', '3201292101760002', '20760001', 'WAN', 'LAINNYA', '', '', 'TELKOM AKSES', 'Kp. Sukajaya Desa Pagelaran Kec. Ciomas Rt 1/2 Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, '', 'ANGGA SETIAWAN MAURIKA', '3204080410920006', '925777', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'Jl Goong No 3 Turangga , Bandung', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, '', 'RAHMAN PAMUNGKAS', '3276022501920001', '18920174', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'Kp Areman RT 10 RW 07 No 44 Kelurahan Tugu Cimanggis', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, '', 'RESTI MANDALAWATI', '3271046003910009', '18910327', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'JL. Cilendek Timur No.84 RT.01 RW.04, Bogor, 16112', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, '', 'MUHAMMAD RIDWAN', '3175081206980004', '20980953', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'JL. KERJA BAKTI KP. MAKASAR NO 45 RT 04 RW 04 JAKARTA TIMUR 13570', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, '', 'FIKRI FAJAR SETIAWAN', '3276061405980001', '19980150', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'JL. MARGONDA RAYA GG. SWADAYA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, '', 'ANISA RISKI', '3271015102980010', '19980197', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'Bakom Tani rt. 004/005', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, '', 'MOCH. FACHRI RAMDANI', '3271012501980008', '19980196', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'Jln. Kapten yusuf cikaret GG.Madrasah Rt 002/001', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, '', 'CALVIN NOVRYAN RAHADITYA', '3271040411980003', '19980195', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'JLN. ARIA SURIALAGA NO.65 RT/RW 05/01 KELURAHAN PASIR KUDA KECAMATAN BOGOR BARAT, BOGOR 16119', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, '', 'DIMAS DWI NUGROHO', '3201371708970004', '19970254', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'pondok mutiara blook d1/26 rt. 003/011', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, '', 'NIKEN SEKARWATI', '3201016812930001', '18930501', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'Pondok Rajeg Indah Blok.H No.27 Rt. 04 / Rw. 09 Bogor 16914', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, '', 'SARAH TRIANA FEBRIYANTI', '3271015302980015', '19980198', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'KP.NAGERANG RT.001/006', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, '', 'ADITYA BAYU SANCAKA', '3271051109910007', '916017', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'Kp.Ceger Permai No.54 RT.003 RW.011, Kelurahan Tegal Gundir Kec Bogor Utara', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, '', 'HARRY WIBISONO', '1271196407980001', '20980911', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'jl.SAMUDRA RAYA KP GROGOL Rt.4 Rw.2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, '', 'NUGROHO RAMDHANI', '3271042602960010', '18960537', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'GG. TARYONO NO.40 RT01/04 KEL. SEMPLAK BOGOR, KEC. BOGOR BARAT, KOTA BOFOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, '', 'AHMAD ROSADI', '3271042112940007', '19940081', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'GUNUNG BATU JL. PURBASARI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, '', 'RIO ANGKASA PUTRA', '3276011810950004', '20950903', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'JL. KEKUPU Rt. 3 Rw. 13', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, '', 'MUHAMMAD RAMADHAN SUBANDI', '3201082112980001', '18980177', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'KP. PALAHLAR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, '', 'ALAMSYAH', '3201291010840011', '20840052', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'Bojong Menteng Rt.001/001 Kel. Ciomas Kec. Ciomas', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, '', 'JOKO PRAKOSO', '3201042411930004', '20931024', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'PERUMAHAN CIJUJUNG PERMAI W9', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, '', 'MOCHAMAD RYAN SEFTIAN', '3201150909920003', '18920103', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'KP. PABUARAN KAUM RT. 005/002', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, '', 'RONAL ALDIANSYAH', '3601052110960003', '20961232', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'KP. BABAKAN BUNGUR DS TARUMA NEGARA RT.07/03', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, '', 'BUDIMAN YUNUS', '3276022201930002', '19930017', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'KP.CILANGKAP RT.003/003 TAPOS DEPOK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, '', 'MUHAMAD WILDAN PRASETYA', '3271041008980032', '20980955', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'JL. RANTE KP. BARU RT. 04/13', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, '', 'ZENAL ARIFIN', '3201240702920007', '18920101', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'KP CIBOLANG RT 004 RW 005 KEL TELUK PINANG KEC CIAWI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, '', 'BAYU EKA FITRI RIANTO', '3601110303950002', '20951049', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'KP. BABAKAN DESA KADUBERA RT/RW :012/003 KEC. PICUNG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, '', 'MUHAMMAD EKO PRASETYO', '3271062206910004', '20910504', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'Jl.Perdana Masjid Budi agung RT.02/10', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, '', 'WILSON AKBAR', '3201292210970001', '19970255', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'Jl Taman Pagelaran Blok C3 NO22 Ciomas', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, '', 'CHANDRA DIWANTARA', '3174023112900004', '20900435', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'Perum Bojong Depok Baru I Blok OE24 No.24 RT002/023', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, '', 'DANU BIMO PRASETYO', '6301031312950001', '17950669', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'PURA BOJONGGEDE BLOK P-2/05 RT 004 RW 017 KEL/KEC TAJUR HALANG BOGOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, '', 'REYNALDI', '3271040505980003', '18980323', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'JL. RAYA SEMPLAK KANTOR POS GIRO RT03/01 SEMPLAK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, '', 'MUHAMMAD FACHRIKA SIKUMBANG', '1272031208940010', '19940112', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'KAUM PANDAK RT.003/013 KARADENAN CIBINONG', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, '', 'AHMAD ABU RIZAL', '3328162509960004', '20961061', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'GEMBONGDADI RT 07 RW 04 KEC. SURADADI KAB. TEGAL', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, '', 'RICKY FIRNANDO', '1601073007950001', '20951050', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'KP. CIBOGEL GG. KEBAYAN, RT/002 RW/002', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, '', 'AGUNG DWI HADI', '3201070804980007', '20980910', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'JL. KH UMAR RAWAJLAT KP. MAMPI BARAT Rt.6 Rw.3', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, '', 'SIGIT SAPUTRA', '3201300607930001', '19950050', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'JL.BABAKAN TENGAH NO.70 RT.02/08 KEL BABAKAN KEC. PRAMAGA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, '', 'MUHAMAD NURLANGGA', '3201302711950005', '18950157', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'DRAMAGA LEBAK SARI RT 002/002', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, '', 'PEPEN SUPENDI', '3201391104930002', '19950346', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'kp.jatake RT04/06 Des.Cimanggu1 Kec.cibungbulang Kab. Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, '', 'HENDI GUNAWAN', '3271011212950020', '19950206', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'BOJONG PESANTREN RT.002/003 BOJONG KERTA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, '', 'JAJANG SIROJUDIN BULKINI', '3204280301950001', '20950697', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'Jl. Kenanga No.25 Rancaekek Kencana, Kec. Rancaekek', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, '', 'JULFI MULIA DRISMAWAN', '3271040210900015', '19900102', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'BOJONG BARU RT.01 RW.02 BOGOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, '', 'ADE SISRAN DAWI', '3275100401930008', '20930963', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'KP RADEN RT 01 RW 05 NO.51 BEKASI 17432', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, '', 'IMAN AGUS FAISAL', '3276060508980002', '19980155', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'JL. MARGONDA RAYA, GG. KERAMAT BATAS 003/007 NO.10', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, '', 'HAFIZH FIKRI', '3174102109930001', '18930407', 'AMQE', 'LAINNYA', '', '', 'TELKOM AKSES', 'Jl. Perdatang Terusan RT.003 RW.005 No.001', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, '', 'BASYAR TAUHID HADI', '3201131006870008', '876872', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'Jl. H. Muhadi, Kp. Pabuaran No. 21 RT.007 RW.005, Pbuaran Bojong Gede, Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, '', 'IIS YULISDA', '3201256411930004', '20940694', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'Jl. Raya Puncak Desa Cilember RT.02/01', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, '', 'DWI ANDI PURNOMO', '3201012912950009', '18950741', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'Bukit Pabuaran Indah Blok K6 No.8 RT.014 RW.017, Kabupaten Bogor, 16916', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, '', 'ADE AGUSTINA SIAHAAN', '3201296108950006', '19950347', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'Perumahan Bukit Asri Ciomas Blok A1/10 RT 07/13 BOGOR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, '', 'FADILLAH ROSIS', '3175042002980006', '20980952', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'JL. AL - AMIN 3 NO 25 RT 008 RW 06 JAKARTA TIMUR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, '', 'IRVAN HENDRAWAN', '3211180908820010', '19820008', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'Lingkungan serma muchtar baru no 69,rt/rw 005,,kecamatan sumedang utara', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, '', 'DIAN SURYANI', '3271066201700004', '20700007', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'Bukit Kayu Manis R.15 Kel.Kayu Manis', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, '', 'ABDUL ROZAK', '3271040503890008', '20890213', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'Grand Sutera Blok H6/33 Rt 04/13 Leuwiliang Bogor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, '', 'HUSNI RISWANTORO', '3671112910860001', '17860420', 'OPTIMA', 'LAINNYA', '', '', 'TELKOM AKSES', 'Jl. Arwana No.07 RT.002 RW.006, Kunciran Indah, Tangerang, 15144', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, '', 'SUPRIATNA', '3276052101890004', '19890080', 'DAMAN', 'LAINNYA', '', '', 'TELKOM AKSES', 'Perum Kopwani Village II Blok E/6 RT.002/011 Kelurahan Kalibaru Kecamatan Cilodong Kota Depok', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, NULL, 'Erwin', '-', '16961744', 'ASO', 'PROVISIONING', 'BOO', 'BOGOR', 'KES', 'bogor', NULL, '2021-03-08 13:49:12', '2021-03-08 13:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `datastream`
--

CREATE TABLE `datastream` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `stream` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datastream`
--

INSERT INTO `datastream` (`id`, `slug`, `stream`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ASSURANCE', NULL, NULL),
(2, NULL, 'PROVISIONING', NULL, NULL),
(3, NULL, 'HELPDESK', NULL, NULL),
(4, NULL, 'ADMIN', NULL, NULL),
(5, NULL, 'LAINNYA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `datawitel`
--

CREATE TABLE `datawitel` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `witel` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datawitel`
--

INSERT INTO `datawitel` (`id`, `slug`, `witel`, `created_at`, `updated_at`) VALUES
(1, NULL, 'BOGOR', NULL, NULL),
(2, NULL, 'LAINNYA', NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1612625244, 1),
(17, '2021-02-07-024605', 'App\\Database\\Migrations\\Datapersonnel', 'default', 'App', 1613035243, 2),
(18, '2021-02-08-225712', 'App\\Database\\Migrations\\Datafraud', 'default', 'App', 1613035243, 2),
(19, '2021-02-09-103317', 'App\\Database\\Migrations\\Datajenispelaporan', 'default', 'App', 1613035243, 2),
(20, '2021-02-15-164656', 'App\\Database\\Migrations\\Dataloker', 'default', 'App', 1613408747, 3),
(21, '2021-02-15-164705', 'App\\Database\\Migrations\\Datastream', 'default', 'App', 1613408747, 3),
(22, '2021-02-15-170133', 'App\\Database\\Migrations\\Datawitel', 'default', 'App', 1613408747, 3),
(24, '2021-02-17-032533', 'App\\Database\\Migrations\\Datalevel', 'default', 'App', 1613532730, 4),
(26, '2021-02-17-032017', 'App\\Database\\Migrations\\Dataappreciate', 'default', 'App', 1613534750, 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin@gmail.com', 'admin', '$2y$10$bJT7rhkpZadc1/u9cAbkfeHfc5GxtqJHBIija1JtbphD/Lt2MhaLa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-02-28 05:07:52', '2021-02-28 05:07:52', NULL);

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
-- Indexes for table `dataappreciation`
--
ALTER TABLE `dataappreciation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datafraud`
--
ALTER TABLE `datafraud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datajenispelaporan`
--
ALTER TABLE `datajenispelaporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datalevel`
--
ALTER TABLE `datalevel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataloker`
--
ALTER TABLE `dataloker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datapersonnel`
--
ALTER TABLE `datapersonnel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datastream`
--
ALTER TABLE `datastream`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datawitel`
--
ALTER TABLE `datawitel`
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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `dataappreciation`
--
ALTER TABLE `dataappreciation`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datafraud`
--
ALTER TABLE `datafraud`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `datajenispelaporan`
--
ALTER TABLE `datajenispelaporan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `datalevel`
--
ALTER TABLE `datalevel`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dataloker`
--
ALTER TABLE `dataloker`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `datapersonnel`
--
ALTER TABLE `datapersonnel`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=473;

--
-- AUTO_INCREMENT for table `datastream`
--
ALTER TABLE `datastream`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `datawitel`
--
ALTER TABLE `datawitel`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
