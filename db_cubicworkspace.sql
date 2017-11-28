-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2017 at 09:35 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cubicworkspace`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecategoryadmin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `re_password`, `codecategoryadmin`, `phone`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nava', 'admin@admin.com', '$2y$10$lVlJenLkWQapOjB93f604u.dJihIfupp1uaOql0KRoVlRAPdTL0OS', '10051995', '', '', '', 'Y', 'qaWSbyeqh4TpAIHIGogWL4QO7xqOGturlIQvEBv3KPD54EF5jrD7nTlyY8cY', '2017-11-08 05:39:07', '2017-11-08 05:39:07'),
(48, 'cubic inc', 'admin@cubic.co.id', '$2y$10$UYiCaYF/XEPf6N5f9IhgIejhaOYoVH2UIzl08yS7iJtki1Xn7eIRG', '', '2', '12', '20171126040720.png', 'Y', 'kKCI0Qm8dkraZobKycnvz458F5suRUJeYoLFZLuT1KwoUyMts1BX6E9u3cJ6', '2017-11-25 06:27:22', '2017-11-25 21:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `billingcompanyservices`
--

CREATE TABLE `billingcompanyservices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecompanyservices` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecompanypartnership` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codebilling` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quota` int(11) NOT NULL,
  `currentquota` int(11) NOT NULL,
  `usedquota` int(11) NOT NULL,
  `currentquotauser` int(11) NOT NULL,
  `nowquotauser` int(11) NOT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registerdate` datetime NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookingspaces`
--

CREATE TABLE `bookingspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `codebookingspace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecompanyservices` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecompanypartnership` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codebilling` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codeservices` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codeuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codepaymentmethode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quota` int(11) NOT NULL,
  `quotauser` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `datein` date NOT NULL,
  `dateout` date NOT NULL,
  `currentquotauser` int(11) NOT NULL,
  `nowquotauser` int(11) NOT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadpayment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statuspayment` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `dateregister` datetime NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookingspaces`
--

INSERT INTO `bookingspaces` (`id`, `codebookingspace`, `codecompanyservices`, `codecompanypartnership`, `codebilling`, `codeservices`, `codeuser`, `codepaymentmethode`, `invoice`, `name`, `email`, `phone`, `address`, `quota`, `quotauser`, `price`, `totalprice`, `datein`, `dateout`, `currentquotauser`, `nowquotauser`, `information`, `uploadpayment`, `statuspayment`, `dateregister`, `status`, `created_at`, `updated_at`) VALUES
(1, 'CBS001', '34', '22', '', '2', '2', '2', '86496', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '0229393939', 'Bandung', 0, 0, 650000, 19500000, '2017-10-01', '2018-01-01', 0, 0, 'Ini information', '81829.jpg', 'Y', '2017-11-26 12:17:49', 'N', '2017-11-26 05:09:03', '2017-11-27 19:16:41'),
(2, 'CBS002', '20', '23', '', '4', '2', '2', '50814', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '-', '-', 0, 0, 10000000, 610000000, '2017-04-01', '2017-06-01', 0, 0, '', '', 'N', '2017-11-28 04:15:55', 'N', '2017-11-27 21:15:55', '2017-11-27 21:15:55'),
(3, 'CBS003', '21', '22', '', '4', '2', '2', '97462', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '-', '-', 0, 0, 22000000, 154000000, '2017-11-01', '2017-11-08', 0, 0, '', '', 'Y', '2017-11-28 04:16:48', 'N', '2017-11-27 21:16:48', '2017-11-27 21:16:48'),
(4, 'CBS004', '21', '22', '', '4', '2', '2', '45459', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '0878200033395', '-', 0, 0, 22000000, 242000000, '2017-11-28', '2017-12-09', 0, 0, '', '', 'N', '2017-11-28 04:22:12', 'N', '2017-11-27 21:22:12', '2017-11-27 21:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `bookingtours`
--

CREATE TABLE `bookingtours` (
  `id` int(10) NOT NULL,
  `codecompanyservices` int(50) NOT NULL,
  `codecompanypartnership` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` text NOT NULL,
  `status` enum('Y','N') DEFAULT 'Y',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingtours`
--

INSERT INTO `bookingtours` (`id`, `codecompanyservices`, `codecompanypartnership`, `email`, `phone`, `date`, `time`, `status`, `created_at`, `updated_at`) VALUES
(1, 23, 22, 'navagiaginasta@gmail.com', '087820033395', '2017-12-01', '11:00', 'Y', '2017-11-28 07:52:42', '2017-11-28 00:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `categoryadmins`
--

CREATE TABLE `categoryadmins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecategoryadmin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoryadmins`
--

INSERT INTO `categoryadmins` (`id`, `name`, `codecategoryadmin`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'ADMIN ALL ACCESS', 'CTA001', '2', 'N', '2017-08-22 10:50:07', '2017-08-22 10:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `categoryevents`
--

CREATE TABLE `categoryevents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecategoryevent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoryevents`
--

INSERT INTO `categoryevents` (`id`, `name`, `codecategoryevent`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Pelatihan', 'CTE002', 'Pelatihan', 'Y', '2017-09-12 06:02:46', '2017-09-12 06:02:46'),
(4, 'Seminar', 'CTE003', 'Seminar', 'Y', '2017-09-26 07:07:59', '2017-09-26 07:07:59'),
(5, 'Meetup', 'CTE004', 'Meetup', 'Y', '2017-09-26 07:08:18', '2017-09-26 07:09:36'),
(6, 'Bussiness', 'CTE005', 'bisnis', 'Y', '2017-09-26 09:20:21', '2017-09-26 09:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `categorymedia`
--

CREATE TABLE `categorymedia` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecategorymedia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorymedia`
--

INSERT INTO `categorymedia` (`id`, `name`, `codecategorymedia`, `description`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Slider', 'CTM001', 'Slider', 'N', '2017-09-11 21:33:22', '2017-09-26 10:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `categorypaymentmethodes`
--

CREATE TABLE `categorypaymentmethodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecategorypaymentmethode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorypaymentmethodes`
--

INSERT INTO `categorypaymentmethodes` (`id`, `name`, `codecategorypaymentmethode`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Category Payment Methode1', 'CPM001', 'Category Payment Methode1', 'Y', '2017-08-28 05:39:22', '2017-11-06 03:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `categoryservices`
--

CREATE TABLE `categoryservices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecategoryservices` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoryservices`
--

INSERT INTO `categoryservices` (`id`, `name`, `codecategoryservices`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Category Services 1', 'CTS002', 'My Category Services', 'N', '2017-08-23 22:22:23', '2017-11-06 02:57:02'),
(4, 'Category Services2', 'CTS003', 'Category Services2', 'Y', '2017-09-06 23:20:51', '2017-09-06 23:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `citys`
--

CREATE TABLE `citys` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecountry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `citys`
--

INSERT INTO `citys` (`id`, `name`, `codecountry`, `codecity`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Cimahi', '2', 'CIT001', 'Cimahi', 'Y', '2017-08-22 11:44:40', '2017-11-06 03:08:58'),
(3, 'Bandung', '3', 'CIT002', 'Bandung', 'Y', '2017-09-12 06:30:05', '2017-09-12 06:30:05'),
(4, 'Jakarta', '4', 'CIT003', 'Jakarta', 'Y', '2017-09-26 09:28:34', '2017-09-26 09:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `maps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `history` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mision` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `registerdate` date NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `favicon`, `logo`, `email`, `phone`, `fax`, `address`, `maps`, `profile`, `history`, `description`, `vision`, `mision`, `faq`, `registerdate`, `status`, `author`, `created_at`, `updated_at`) VALUES
(1, 'Workshare', '23200.jpg', '20171128043933.png', 'workspace@gmail.com', '087877693842', '-', 'Jl. Naripan no.53 Bandung', '-6.9202047, 107.6138110', '<p>Workshare adalah platform yang menghubungkan rekan kerja dan ruang kerja di seluruh dunia.</p>', 'Workshare mulai beroperasi pada bulan November 2017.', '<p>Workspace merupakan platfroom penyediakan coworking space, office room, meeting room, dan virtual office dengan kemudahan sistem booking dan pembayaran.</p>', '- Menjadi salah satu perusahaan agen ruang kerja coworking terbaik di Indonesia\r\n- Berkontribusi untuk meningkatkan pertumbuhan dan perkembangan wirausaha\r\ndi Indonesia', '- Berikan kenyamanan dan kenyamanan bagi pengusaha dan pemilik tempat kerja\r\n- Membawa pelayanan terbaik\r\n- Bangun ekosistem bisnis yang membuat pengusaha indonesia berkembang', '<p>faq</p>', '2017-11-28', 'Y', 'navagiaginasta@gmail.com | 087820033395', '2017-08-21 17:00:00', '2017-11-27 21:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `companypartnerships`
--

CREATE TABLE `companypartnerships` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecompanypartnership` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codetagservices` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codepartner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `maps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecountry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mision` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registerdate` datetime NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companypartnerships`
--

INSERT INTO `companypartnerships` (`id`, `name`, `codecompanypartnership`, `codetagservices`, `codepartner`, `favicon`, `logo`, `email`, `phone`, `fax`, `address`, `maps`, `codecountry`, `codecity`, `profile`, `history`, `description`, `vision`, `mision`, `faq`, `information`, `registerdate`, `status`, `created_at`, `updated_at`) VALUES
(22, 'Workspace . 53', 'COP008', '3', '1', '30843.png', '18612.png', 'workspace53@gmail.com', '08718111111', '', 'Jl.Naripan no.53', '-6.920577, 107.615890', '2', '3', 'workspace adalah suatu tempat yg memungkinkan Anda untuk mengelola window di layar Anda. Bisa dibayangkan workspace sebagai layar virtual, yang dapat di pindah dari satu workspaces ke workspaces lain kapan saja. Setiap workspaces terdiri dari desktop, pan', 'workspace adalah suatu tempat yg memungkinkan Anda untuk mengelola window di layar Anda. Bisa dibayangkan workspace sebagai layar virtual, yang dapat di pindah dari satu workspaces ke workspaces lain kapan saja. Setiap workspaces terdiri dari desktop, pan', 'workspace adalah suatu tempat yg memungkinkan Anda untuk mengelola window di layar Anda. Bisa dibayangkan workspace sebagai layar virtual, yang dapat di pindah dari satu workspaces ke workspaces lain kapan saja. Setiap workspaces terdiri dari desktop, panel, dan menu yang sama. Tapi didalam workspaces, anda dapat menjalankan aplikasi berbeda, membuka aplikasi berbeda dalam setiap workspaces. Aplikasi pada setiap workspaces akan tetap berada di dalamnya pada saat anda berpindah ke workspaces yg lain.', 'workspace adalah suatu tempat yg memungkinkan Anda untuk mengelola window di layar Anda. Bisa dibayangkan workspace sebagai layar virtual, yang dapat di pindah dari satu workspaces ke workspaces lain kapan saja. Setiap workspaces terdiri dari desktop, panel, dan menu yang sama. Tapi didalam workspaces, anda dapat menjalankan aplikasi berbeda, membuka aplikasi berbeda dalam setiap workspaces. Aplikasi pada setiap workspaces akan tetap berada di dalamnya pada saat anda berpindah ke workspaces yg lain.', 'workspace adalah suatu tempat yg memungkinkan Anda untuk mengelola window di layar Anda. Bisa dibayangkan workspace sebagai layar virtual, yang dapat di pindah dari satu workspaces ke workspaces lain kapan saja. Setiap workspaces terdiri dari desktop, panel, dan menu yang sama. Tapi didalam workspaces, anda dapat menjalankan aplikasi berbeda, membuka aplikasi berbeda dalam setiap workspaces. Aplikasi pada setiap workspaces akan tetap berada di dalamnya pada saat anda berpindah ke workspaces yg lain.', '<p>workspace adalah suatu tempat yg memungkinkan Anda untuk mengelola window di layar Anda. Bisa dibayangkan workspace sebagai layar virtual, yang dapat di pindah dari satu workspaces ke workspaces lain kapan saja. Setiap workspaces terdiri dari desktop, panel, dan menu yang sama. Tapi didalam workspaces, anda dapat menjalankan aplikasi berbeda, membuka aplikasi berbeda dalam setiap workspaces. Aplikasi pada setiap workspaces akan tetap berada di dalamnya pada saat anda berpindah ke workspaces yg lain.</p>', 'workspace adalah suatu tempat yg memungkinkan Anda untuk mengelola window di layar Anda. Bisa dibayangkan workspace sebagai layar virtual, yang dapat di pindah dari satu workspaces ke workspaces lain kapan saja. Setiap workspaces terdiri dari desktop, pan', '2017-11-26 09:29:05', 'Y', '2017-11-26 01:59:44', '2017-11-27 22:23:37'),
(23, 'Postcard', 'COP009', '3', '2', '87415.jpg', '20854.jpg', 'portcard@gmail.com', '089688728861', '', 'Jl. W.R. Supratman No.29, Cihapit, Bandung Wetan', '-6.905619, 107.629854', '2', '3', 'postcard adalah suatu tempat yg memungkinkan Anda untuk mengelola window di layar Anda. Bisa dibayangkan postcard sebagai layar virtual, yang dapat di pindah dari satu postcards ke postcards lain kapan saja. Setiap postcards terdiri dari desktop, pan', 'postcard adalah suatu tempat yg memungkinkan Anda untuk mengelola window di layar Anda. Bisa dibayangkan postcard sebagai layar virtual, yang dapat di pindah dari satu postcards ke postcards lain kapan saja. Setiap postcards terdiri dari desktop, pan', 'postcard adalah suatu tempat yg memungkinkan Anda untuk mengelola window di layar Anda. Bisa dibayangkan postcard sebagai layar virtual, yang dapat di pindah dari satu postcards ke postcards lain kapan saja. Setiap postcards terdiri dari desktop, pan', 'postcard adalah suatu tempat yg memungkinkan Anda untuk mengelola window di layar Anda. Bisa dibayangkan postcard sebagai layar virtual, yang dapat di pindah dari satu postcards ke postcards lain kapan saja. Setiap postcards terdiri dari desktop, pan', 'postcard adalah suatu tempat yg memungkinkan Anda untuk mengelola window di layar Anda. Bisa dibayangkan postcard sebagai layar virtual, yang dapat di pindah dari satu postcards ke postcards lain kapan saja. Setiap postcards terdiri dari desktop, pan', '<p>postcard adalah suatu tempat yg memungkinkan Anda untuk mengelola window di layar Anda. Bisa dibayangkan postcard sebagai layar virtual, yang dapat di pindah dari satu postcards ke postcards lain kapan saja. Setiap postcards terdiri dari desktop, pan</p>', 'postcard adalah suatu tempat yg memungkinkan Anda untuk mengelola window di layar Anda. Bisa dibayangkan postcard sebagai layar virtual, yang dapat di pindah dari satu postcards ke postcards lain kapan saja. Setiap postcards terdiri dari desktop, pan', '2017-11-26 09:27:16', 'Y', '2017-11-26 02:00:58', '2017-11-27 22:09:05'),
(24, 'CO & CO', 'COP010', '3', '3', '64128.jpg', '55868.jpg', 'coco@gmail.com', '08211199922', '', 'Jl. Dipatiukur No.5, Lebakgede, Coblong, Kota Bandung, Jawa Barat 40132', '-6.895582, 107.613598', '2', '3', 'Our mission is to create a space, where freelancers, travelers, entrepreneurs, professionals, digital nomads, creators, innovators, students and creative communities can work together, meet up, share experiences and get things done.', 'Nurture a warm and embracing environment where we can build social and professional networks as well as collaborative opportunities, where we can make positive socio-economical impact to local, regional and the international communities.', 'Improving and help create businesses and opening doors to quality mentorships, consultations, channels, the access to capital and connect with corporations and related government bodies.', 'Our mission is to create a space, where freelancers, travelers, entrepreneurs, professionals, digital nomads, creators, innovators, students and creative communities can work together, meet up, share experiences and get things done.\r\n\r\nNurture a warm and embracing environment where we can build social and professional networks as well as collaborative opportunities, where we can make positive socio-economical impact to local, regional and the international communities.\r\n\r\nImproving and help create businesses and opening doors to quality mentorships, consultations, channels, the access to capital and connect with corporations and related government bodies.\r\n\r\nCO&CO is the invisible umbrella, under which our members collide and  connect, engage, converge and collaborate.', 'Our mission is to create a space, where freelancers, travelers, entrepreneurs, professionals, digital nomads, creators, innovators, students and creative communities can work together, meet up, share experiences and get things done.\r\n\r\nNurture a warm and embracing environment where we can build social and professional networks as well as collaborative opportunities, where we can make positive socio-economical impact to local, regional and the international communities.\r\n\r\nImproving and help create businesses and opening doors to quality mentorships, consultations, channels, the access to capital and connect with corporations and related government bodies.\r\n\r\nCO&CO is the invisible umbrella, under which our members collide and  connect, engage, converge and collaborate.', '<p>&nbsp;Our mission is to create a space, where freelancers, travelers, entrepreneurs, professionals, digital nomads, creators, innovators, students and creative communities can work together, meet up, share experiences and get things done.&nbsp; Nurture a warm and embracing environment where we can build social and professional networks as well as collaborative opportunities, where we can make positive socio-economical impact to local, regional and the international communities.&nbsp; Improving and help create businesses and opening doors to quality mentorships, consultations, channels, the access to capital and connect with corporations and related government bodies.&nbsp; CO&amp;CO is the invisible umbrella, under which our members collide and&nbsp; connect, engage, converge and collaborate.</p>', 'Our mission is to create a space, where freelancers, travelers, entrepreneurs, professionals, digital nomads, creators, innovators, students and creative communities can work together, meet up, share experiences and get things done.  Nurture a warm and em', '2017-11-26 09:18:48', 'Y', '2017-11-26 02:01:41', '2017-11-27 22:09:10'),
(25, 'Bandung Digital Valley (BDV)', 'COP011', '3', '4', '17580.png', '42852.png', 'bdv@gmail.com', '02212312304', '', 'Jl.Gegerkalong hilir no.70', '-6.872809, 107.586769', '2', '3', 'Indigo Creative Nation merupakan program apresiasi kepada startup/entrepreneur yang dinilai berhasil membuat ide, produk, maupun bisnis inovatif digital yang diinginkan pelanggan (right product), serta mendorong tumbuhnya digitalpreneur baru dalam industr', 'Indigo Creative Nation merupakan program apresiasi kepada startup/entrepreneur yang dinilai berhasil membuat ide, produk, maupun bisnis inovatif digital yang diinginkan pelanggan (right product), serta mendorong tumbuhnya digitalpreneur baru dalam industr', 'Indigo Creative Nation merupakan program apresiasi kepada startup/entrepreneur yang dinilai berhasil membuat ide, produk, maupun bisnis inovatif digital yang diinginkan pelanggan (right product), serta mendorong tumbuhnya digitalpreneur baru dalam industri digital.', 'Indigo Creative Nation merupakan program apresiasi kepada startup/entrepreneur yang dinilai berhasil membuat ide, produk, maupun bisnis inovatif digital yang diinginkan pelanggan (right product), serta mendorong tumbuhnya digitalpreneur baru dalam industri digital.', 'Indigo Creative Nation merupakan program apresiasi kepada startup/entrepreneur yang dinilai berhasil membuat ide, produk, maupun bisnis inovatif digital yang diinginkan pelanggan (right product), serta mendorong tumbuhnya digitalpreneur baru dalam industri digital.', '<p>Indigo Creative Nation merupakan program apresiasi kepada startup/entrepreneur yang dinilai berhasil membuat ide, produk, maupun bisnis inovatif digital yang diinginkan pelanggan (right product), serta mendorong tumbuhnya digitalpreneur baru dalam industri digital.</p>', 'Indigo Creative Nation merupakan program apresiasi kepada startup/entrepreneur yang dinilai berhasil membuat ide, produk, maupun bisnis inovatif digital yang diinginkan pelanggan (right product), serta mendorong tumbuhnya digitalpreneur baru dalam industr', '2017-11-28 05:09:43', 'Y', '2017-11-26 02:02:28', '2017-11-27 22:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `companyservices`
--

CREATE TABLE `companyservices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecompanyservices` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecompanypartnership` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codetagservices` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codeservices` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecity` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quota` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quotauser` int(11) NOT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusbooking` enum('bulan','hari') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'bulan',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registerdate` datetime NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companyservices`
--

INSERT INTO `companyservices` (`id`, `name`, `codecompanyservices`, `codecompanypartnership`, `codetagservices`, `codeservices`, `codecity`, `quota`, `price`, `quotauser`, `information`, `statusbooking`, `image`, `registerdate`, `status`, `created_at`, `updated_at`) VALUES
(20, 'Postcard Cafe 1', 'COS001', '23', '5', '4', '3', 1, 10000000, 20, 'Office room 1', 'bulan', '15536.jpg', '2017-11-26 10:15:08', 'Y', '2017-10-03 07:16:47', '2017-11-26 03:15:08'),
(21, 'Team tables', 'COS002', '22', '5', '4', '3', 4, 22000000, 5, 'Information', 'hari', '27068.png', '2017-11-26 11:37:15', 'Y', '2017-10-03 07:18:13', '2017-11-26 04:37:15'),
(22, 'Individual', 'COS003', '22', '5', '6', '3', 10, 750000, 10, 'Individual', 'bulan', '64135.png', '2017-11-26 11:37:44', 'Y', '2017-10-03 07:19:17', '2017-11-26 04:37:44'),
(23, 'Workspace 53', 'COS004', '22', '2', '4', '3', 2, 4000000, 10, 'Office room 1', 'bulan', '29739.png', '2017-11-26 11:40:20', 'Y', '2017-10-03 07:40:45', '2017-11-26 04:40:20'),
(33, 'Postcard Cafe 2', 'COS005', '23', '2', '4', '3', 1, 5500000, 9, 'Office room 2', 'bulan', '70812.png', '2017-11-26 11:41:02', 'Y', '2017-10-22 05:47:53', '2017-11-26 04:41:02'),
(34, 'Individual desk', 'COS006', '22', '2', '2', '3', 10, 650000, 10, 'Individual desk', 'bulan', '81106.png', '2017-11-26 11:38:44', 'Y', '2017-11-07 07:16:34', '2017-11-26 04:38:44'),
(35, 'Team tables', 'COS007', '22', '2', '2', '3', 2, 3500000, 10, 'Team tables', 'hari', '84202.png', '2017-11-26 11:38:23', 'Y', '2017-11-07 07:17:25', '2017-11-26 04:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `countrys`
--

CREATE TABLE `countrys` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecountry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countrys`
--

INSERT INTO `countrys` (`id`, `name`, `codecountry`, `flag`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Indonesia', 'COU001', '55988.png', 'Indonesia', 'N', '2017-08-22 11:40:21', '2017-09-12 00:51:13');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecategoryevent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codeevent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `quota` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `codecategoryevent`, `codeevent`, `url`, `description`, `datetime`, `quota`, `image`, `address`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Fintech Now: Learn More About Financial Technology', '4', 'EVT002', 'http://kolaborasi.co/wp-content/uploads/2017/10/WhatsApp-Image-2017-10-23-at-7.21.37-PM-1200x1200.jpeg', 'The world has evolved and financial technology is not only a new innovation but also takes part in our daily life. We use it with or without our notice.\r\n\r\nOne of the most popular fintech sector is P2P Lending. It has transformed the way small business ge', '2017-11-06 07:15:58', 10, '48095.jpeg', 'Bandung', 'Y', '2017-09-26 06:58:44', '2017-11-06 03:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `historybillingcompanyservices`
--

CREATE TABLE `historybillingcompanyservices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecompanyservices` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecompanypartnership` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codebilling` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quota` int(11) NOT NULL,
  `currentquota` int(11) NOT NULL,
  `usedquota` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `currentquotauser` int(11) NOT NULL,
  `nowquotauser` int(11) NOT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `historybookingspaces`
--

CREATE TABLE `historybookingspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `codebookingspace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecompanyservice` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecompanypartnership` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codebilling` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codeservices` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codeuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quota` int(11) NOT NULL,
  `quotauser` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `datein` datetime NOT NULL,
  `dateout` datetime NOT NULL,
  `currentquotauser` int(11) NOT NULL,
  `nowquotauser` int(11) NOT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `historybookingspaces`
--

INSERT INTO `historybookingspaces` (`id`, `codebookingspace`, `codecompanyservice`, `codecompanypartnership`, `codebilling`, `codeservices`, `codeuser`, `invoice`, `name`, `email`, `phone`, `address`, `quota`, `quotauser`, `price`, `totalprice`, `datein`, `dateout`, `currentquotauser`, `nowquotauser`, `information`, `datetime`, `status`, `created_at`, `updated_at`) VALUES
(1, '11', '', '5', '4', '2', '51', '61', 'Nava Gia', 'navagiaginasta@gmail.com', '87820033395', 'Cianjur', 111, 121, 131, 141, '2017-09-07 07:52:49', '2017-09-07 07:52:49', 151, 161, '171', '2017-09-07 07:52:49', 'N', '2017-08-28 05:13:31', '2017-09-07 00:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `informasicompanies`
--

CREATE TABLE `informasicompanies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryinfromasi` enum('HEADER','BOOKING','SERVICES','OFFICE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'OFFICE',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `informasicompanies`
--

INSERT INTO `informasicompanies` (`id`, `name`, `categoryinfromasi`, `title`, `description`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, '100+ Partners', 'HEADER', '100+ Partners', '', '35922.png', 'Y', '2017-08-21 17:00:00', '2017-11-06 03:34:05'),
(3, '300+ Basecamp', 'HEADER', '300+ Basecamp', '', '29987.png', 'Y', '2017-09-11 22:51:07', '2017-11-06 03:34:48'),
(4, '20000+ Happy Customers', 'HEADER', '20000+ Happy Customers', '', '48448.png', 'Y', '2017-09-11 22:51:59', '2017-11-06 03:34:26'),
(5, 'Easy Information', 'SERVICES', 'pe-7s-users', 'Ease of finding information about the desired\r\nworkplace at a particular location and time', '59505.png', 'Y', '2017-09-13 06:32:43', '2017-11-06 06:09:33'),
(6, 'Easy to Choose', 'SERVICES', 'pe-7s-home', 'Easy to choose the type of workplace and\r\nfacilities needed', '90495.png', 'Y', '2017-09-13 06:47:47', '2017-11-06 06:09:55'),
(7, 'Easy Booking Process', 'SERVICES', 'pe-7s-car', 'Ease of booking and payment process', '37239.png', 'Y', '2017-09-13 06:50:17', '2017-11-06 06:10:39'),
(8, 'Workshare', 'OFFICE', 'Workshare', 'Jl. Naripan no.53 Bandung, 022-4200000, workspace@gmail.com', '20170926150218.png', 'Y', '2017-09-26 08:02:18', '2017-10-27 01:12:54'),
(9, 'CUBIC INC', 'OFFICE', 'CUBIC INC', 'Jl. Naripan no.53 Bandung, 022-4200000, workspace@gmail.com', '20170926150252.png', 'Y', '2017-09-26 08:02:52', '2017-09-26 08:02:52'),
(10, 'Bandung Creative City Forum', 'OFFICE', 'Bandung Creative City Forum', 'Jl. Naripan no.53 Bandung, 022-4200000, workspace@gmail.com', '20170926150331.jpg', 'Y', '2017-09-26 08:03:31', '2017-09-26 08:03:31'),
(11, 'Join the Comunity', 'SERVICES', 'pe-7s-users', 'Opportunity to join the community and\r\ncollaborate with other coworkers', '59505.png', 'Y', '2017-10-31 22:00:00', '2017-11-22 03:00:00'),
(12, 'Events', 'SERVICES', 'pe-7s-users', 'Got access to coworking space events', '59505.png', 'Y', '2017-11-05 20:00:00', '2017-11-05 20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecategorymedia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codemedia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `name`, `codecategorymedia`, `codemedia`, `url`, `date`, `writer`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Workshare', '5', 'MED001', '#', '12 September 2017 - 11:30', '', '68664.jpg', 'Y', '2017-09-11 21:35:27', '2017-11-06 05:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `mediacompanyservices`
--

CREATE TABLE `mediacompanyservices` (
  `id` int(10) NOT NULL,
  `name` varchar(150) NOT NULL,
  `codecompanyservices` int(10) NOT NULL,
  `codecompanypartnership` int(10) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mediacompanyservices`
--

INSERT INTO `mediacompanyservices` (`id`, `name`, `codecompanyservices`, `codecompanypartnership`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, '22222222', 21, 0, '20171128063904.jpeg', 'Y', '2017-11-27 23:39:04', '2017-11-27 23:39:04'),
(5, 'Nava Gia', 22, 22, '20171128064004.jpeg', 'Y', '2017-11-27 23:40:04', '2017-11-27 23:40:04'),
(6, '322', 23, 22, '39304.jpeg', 'Y', '2017-11-28 07:00:42', '2017-11-27 23:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `codeuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `phone` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registerdate` datetime NOT NULL,
  `lastlogin` datetime NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `codeuser`, `email`, `institution`, `birthday`, `phone`, `address`, `image`, `description`, `information`, `registerdate`, `lastlogin`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'navagiaginasta@gmail.com', 'Crop Project', '1995-01-01', '087820033395', 'Kp.Haurwangi RT.02/04 Cianjur', '', 'Adalah Seorang Mahasiswa', 'Mahasiswa kesayangan Politeknik pos indonesia', '2017-11-25 11:28:46', '2017-11-25 11:28:46', 'N', '2017-11-25 04:28:46', '2017-11-25 04:47:37'),
(2, '2', 'nava.webdevelopers@gmail.com', 'Poltekpos', '1970-01-01', '087820033395', 'Cianjur', '', '-', '-', '2017-11-26 12:02:55', '2017-11-26 12:02:55', 'N', '2017-11-26 05:02:55', '2017-11-26 05:16:34'),
(3, '', 'nava.webdevelopers@gmail.com', '-', '2017-11-28', '-', '-', '', '-', '-', '2017-11-28 04:14:17', '2017-11-28 04:14:17', 'N', '2017-11-27 21:14:17', '2017-11-27 21:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'wqdqeqf111', 'qefqefef@gmail.com1111', '234234', 'dfsdfsdfds1111', 'Y', '2017-08-28 09:27:14', '2017-08-28 09:27:46'),
(4, 'Nava Gia', 'navagiaginasta@gmail.com', 'konfirmasi pemabyaran dengan invoices 11812', 'konfirmasi pemabyaran dengan invoices 11812konfirmasi pemabyaran dengan invoices 11812konfirmasi pemabyaran dengan invoices 11812konfirmasi pemabyaran dengan invoices 11812', 'N', '2017-09-26 08:59:19', '2017-09-26 08:59:19'),
(5, 'Ketut Adi Wijanarko', 'ketut@gmail.com', 'sudah beres', 'sudah beres pak sudah beres paksudah beres paksudah beres paksudah beres paksudah beres paksudah beres paksudah beres paksudah beres paksudah beres paksudah beres paksudah beres paksudah beres paksudah beres pak', 'N', '2017-09-26 10:58:02', '2017-09-26 10:58:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `email`, `password`, `re_password`, `phone`, `image`, `address`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Workspace . 53', 'workspace53@gmail.com', '$2y$10$k/liHvS/gUK6rkEwebXAWORPTNWXfOM/QHhYAMOKweIDcIxtZlrfq', '10051995', '08718111111', '18612.png', 'Jl.Naripan no.53', 'Y', 'zc2HxD59GpgbaOGPPpYH9TWbsB6flXFr7Dp7mI4pCH79Cv7KC2aXStFLuhIa', '2017-11-26 01:59:43', '2017-11-26 01:59:43'),
(2, 'Postcard', 'portcard@gmail.com', '$2y$10$2Q8qUQL5LOm1cqZu.rhSc.nqUZDkYKfd/CRysAGi57BaiiPiFSgmK', '10051995', '089688728861', '69764.jpeg', 'Jl. W.R. Supratman No.29, Cihapit, Bandung Wetan', 'Y', '9g4TMD6KanDkvP1rw1ZAHgqhXgW0QdWdRkS35HOMpjP0XeO0wx6UKtK2eRp6', '2017-11-26 02:00:58', '2017-11-26 02:00:58'),
(3, 'CO & CO', 'coco@gmail.com', '$2y$10$5K5sGlNZnh77ikoVhx6TBeqX5Y6oQLcJM696CCitWxE4RsAWnLslm', '10051995', '08211199922', '92551.jpeg', 'Jl. Dipatiukur No.5, Lebakgede, Coblong, Kota Bandung, Jawa Barat 40132', 'Y', '85GgfugnxXz1vtaw8oNg1ZCzChfnxcDH3wleyRr4IQiPLxowOd0Yygd3vGDZ', '2017-11-26 02:01:41', '2017-11-26 02:01:41'),
(4, 'Bandung Digital Valley (BDV)', 'bdv@gmail.com', '$2y$10$8s7kNeesLCFy/yvAgLkI8.ppJLgLvLrvfvbdTv1jsBzzPTR4Wnd.e', '10051995', '02212312304', '42852.png', 'Jl.Gegerkalong hilir no.70', 'N', 'PEtyoLK5j4HEcQ8rRaxpZSgAlCwcqu356wInjcQJwz5Y1Q8J8ISgoOuiIVOv', '2017-11-26 02:02:28', '2017-11-26 02:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethodes`
--

CREATE TABLE `paymentmethodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecategorypaymentmethode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codepaymentmethode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nouser` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymentmethodes`
--

INSERT INTO `paymentmethodes` (`id`, `name`, `codecategorypaymentmethode`, `codepaymentmethode`, `nameuser`, `nouser`, `description`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(2, 'MANDIRI', '1', 'PAM002', 'Dian Adriani David', 2147483647, 'Bank Mandiri a/n Dian Adriani David\r\nNo. Rek : 132-00-2081188-2', '39583.jpg', 'Y', '2017-09-24 07:15:49', '2017-11-07 08:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecategoryservices` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codeservices` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `codecategoryservices`, `codeservices`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Co Working', '4', 'SER001', '1231', 'Y', '2017-08-23 22:07:48', '2017-11-06 02:56:17'),
(4, 'Office', '3', 'SER002', 'Office', 'Y', '2017-09-13 20:33:30', '2017-09-13 20:33:30'),
(5, 'Residence', '3', 'SER003', 'Residence', 'Y', '2017-09-13 20:33:41', '2017-09-13 20:33:41'),
(6, 'Individual', '3', 'SER004', 'Individual', 'Y', '2017-11-07 07:03:30', '2017-11-07 07:03:30');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_providers`
--

INSERT INTO `social_providers` (`id`, `user_id`, `provider_id`, `provider`, `created_at`, `updated_at`) VALUES
(1, 1, '112227416377852186762', 'google', '2017-11-25 04:28:46', '2017-11-25 04:28:46'),
(2, 2, '1399194833534278', 'facebook', '2017-11-26 05:02:55', '2017-11-26 05:02:55'),
(3, 2, '104059642855903038031', 'google', '2017-11-27 21:14:17', '2017-11-27 21:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `sosialmedias`
--

CREATE TABLE `sosialmedias` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sosialmedias`
--

INSERT INTO `sosialmedias` (`id`, `name`, `url`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'http://www.facebook.com', 'fa fa-facebook', 'Y', '2017-08-28 05:32:50', '2017-09-26 08:24:11'),
(2, 'Twitter', 'http://www.twitter.com', 'fa fa-twitter', 'Y', '2017-09-26 08:18:37', '2017-09-26 08:24:26'),
(3, 'Google Plus', 'http://www.google.com', 'fa fa-google-plus', 'Y', '2017-09-26 08:19:41', '2017-09-26 08:24:18'),
(4, 'Instagram', 'https://instagram.com', 'fa fa-instagram', 'Y', '2017-09-26 09:05:11', '2017-09-26 10:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `name`, `email`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Nava Gia', 'navagiaginasta@gmail.com', 'N', '2017-09-13 07:43:32', '2017-09-26 09:12:19'),
(4, '-', 'admin@example.com', 'N', '2017-09-13 07:44:24', '2017-09-13 07:44:24'),
(5, '-', 'ketut@gmail.com', 'N', '2017-09-13 07:46:33', '2017-09-13 07:46:33'),
(7, '-', 'andrey@gmail.com', 'N', '2017-09-13 07:57:33', '2017-09-13 07:57:33'),
(10, '-', 'nav@gmail.com', 'N', '2017-09-13 09:45:40', '2017-09-13 09:45:40'),
(11, '-', 'ry@gmail.com', 'N', '2017-09-20 02:47:44', '2017-09-20 02:47:44'),
(12, 'ker', 'ketut@gmail.com', 'Y', '2017-09-26 09:11:53', '2017-09-26 09:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `tagcompanyservices`
--

CREATE TABLE `tagcompanyservices` (
  `codecompanyservices` int(10) UNSIGNED NOT NULL,
  `codetagservices` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tagcompanyservices`
--

INSERT INTO `tagcompanyservices` (`codecompanyservices`, `codetagservices`, `created_at`, `updated_at`) VALUES
(20, 2, '2017-10-03 07:16:47', '2017-10-03 07:16:47'),
(21, 2, '2017-10-03 07:18:13', '2017-10-03 07:18:13'),
(22, 5, '2017-10-03 07:19:17', '2017-10-03 07:19:17'),
(23, 5, '2017-10-03 07:40:45', '2017-10-03 07:40:45'),
(24, 5, '2017-10-03 07:59:53', '2017-10-03 07:59:53'),
(25, 5, '2017-10-03 08:02:37', '2017-10-03 08:02:37'),
(26, 5, '2017-10-03 08:03:30', '2017-10-03 08:03:30'),
(26, 7, '2017-10-03 08:03:30', '2017-10-03 08:03:30'),
(27, 5, '2017-10-03 08:20:23', '2017-10-03 08:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `tagservices`
--

CREATE TABLE `tagservices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codetagservices` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codeservices` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `choosetagservices` enum('PARTNERSHIP','COMPANY SERVICES') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PARTNERSHIP',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tagservices`
--

INSERT INTO `tagservices` (`id`, `name`, `codetagservices`, `codeservices`, `choosetagservices`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Hot Services', 'CTS001', '2', 'COMPANY SERVICES', 'Hot Services', 'Y', '2017-08-22 19:47:57', '2017-11-06 02:55:33'),
(3, 'Top Basecamp', 'CTS002', '2', 'PARTNERSHIP', 'Top Basecamp', 'Y', '2017-08-22 19:48:08', '2017-09-12 22:21:42'),
(5, 'Special', 'CTS003', '2', 'COMPANY SERVICES', 'Special', 'Y', '2017-09-12 22:25:28', '2017-09-13 06:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `image`, `job`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nava Gia Ginasta', '43327.jpg', 'Web Developers', 'Developers Cubic Workspace', 'Y', '2017-09-26 01:55:00', '2017-09-26 02:01:00'),
(2, 'Ketut Adi Wijanarko', '40881.jpg', 'Analyst', 'Desain Analyst', 'Y', '2017-09-26 02:00:38', '2017-09-26 02:00:38'),
(3, 'Krishna YF', '77240.jpg', 'Bussiness', 'Bussiness', 'Y', '2017-09-26 02:01:33', '2017-09-26 02:01:33'),
(4, 'M.Nurkamal', '20891.jpg', 'Java Developers', 'Programmer', 'Y', '2017-09-26 02:02:51', '2017-09-26 02:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nava Gia Ginasta', '\"Fast response, friendly, and I am really happy with the service of Workspace. I\'ve tried to find an office by myself and it didn\'t work.\"', '27467.jpg', 'Y', '2017-08-28 05:31:55', '2017-09-13 07:04:20'),
(2, 'Ketut Adi Wijanarko', '\"Excellent service. Workspace has deep understanding in office market and a structured way in organizing the information that make it easy for customers to quickly assess options.\".', '58499.jpg', 'Y', '2017-09-13 07:05:27', '2017-09-13 07:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codeuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastlogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `registerdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `codeuser`, `email`, `password`, `re_password`, `remember_token`, `lastlogin`, `registerdate`, `created_at`, `updated_at`) VALUES
(1, 'Nava Gia Ginasta', 'USR001', 'navagiaginasta@gmail.com', '', '', 'ndBZdIKEYd5OVrpBByQCsIKH01txqUghmeKiNxMKRPmNq99JwaMGLh01JUNi', '2017-11-28 03:50:11', '0000-00-00 00:00:00', '2017-11-25 04:28:46', '2017-11-25 04:28:46'),
(2, 'Nava Gia Ginasta', '', 'nava.webdevelopers@gmail.com', '', '', 'Av5NRICljQS4JQgkrmbquDAUIWrftQayxf9wvPA6I0yaEYLiIxRQwS2vgPDg', '2017-11-28 04:14:17', '0000-00-00 00:00:00', '2017-11-26 05:02:55', '2017-11-26 05:02:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codeuser` (`email`),
  ADD KEY `codeuser_2` (`email`);

--
-- Indexes for table `billingcompanyservices`
--
ALTER TABLE `billingcompanyservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookingspaces`
--
ALTER TABLE `bookingspaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookingtours`
--
ALTER TABLE `bookingtours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoryadmins`
--
ALTER TABLE `categoryadmins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoryevents`
--
ALTER TABLE `categoryevents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorymedia`
--
ALTER TABLE `categorymedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorypaymentmethodes`
--
ALTER TABLE `categorypaymentmethodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoryservices`
--
ALTER TABLE `categoryservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `citys`
--
ALTER TABLE `citys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companypartnerships`
--
ALTER TABLE `companypartnerships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`(191)),
  ADD KEY `codepartner` (`codepartner`(191)),
  ADD KEY `codepartner_2` (`codepartner`(191));

--
-- Indexes for table `companyservices`
--
ALTER TABLE `companyservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countrys`
--
ALTER TABLE `countrys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historybillingcompanyservices`
--
ALTER TABLE `historybillingcompanyservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historybookingspaces`
--
ALTER TABLE `historybookingspaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasicompanies`
--
ALTER TABLE `informasicompanies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mediacompanyservices`
--
ALTER TABLE `mediacompanyservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`(191));

--
-- Indexes for table `paymentmethodes`
--
ALTER TABLE `paymentmethodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sosialmedias`
--
ALTER TABLE `sosialmedias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tagcompanyservices`
--
ALTER TABLE `tagcompanyservices`
  ADD PRIMARY KEY (`codecompanyservices`,`codetagservices`),
  ADD KEY `tagcompanyservices_codecompanyservices_index` (`codecompanyservices`),
  ADD KEY `tagcompanyservices_codetagservices_index` (`codetagservices`);

--
-- Indexes for table `tagservices`
--
ALTER TABLE `tagservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `name` (`name`(191)),
  ADD KEY `codeuser` (`codeuser`(191)),
  ADD KEY `id_2` (`id`),
  ADD KEY `name_2` (`name`(191)),
  ADD KEY `id_3` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `billingcompanyservices`
--
ALTER TABLE `billingcompanyservices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookingspaces`
--
ALTER TABLE `bookingspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bookingtours`
--
ALTER TABLE `bookingtours`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categoryadmins`
--
ALTER TABLE `categoryadmins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categoryevents`
--
ALTER TABLE `categoryevents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categorymedia`
--
ALTER TABLE `categorymedia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categorypaymentmethodes`
--
ALTER TABLE `categorypaymentmethodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categoryservices`
--
ALTER TABLE `categoryservices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `citys`
--
ALTER TABLE `citys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companypartnerships`
--
ALTER TABLE `companypartnerships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `companyservices`
--
ALTER TABLE `companyservices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `countrys`
--
ALTER TABLE `countrys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `historybillingcompanyservices`
--
ALTER TABLE `historybillingcompanyservices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `historybookingspaces`
--
ALTER TABLE `historybookingspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `informasicompanies`
--
ALTER TABLE `informasicompanies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mediacompanyservices`
--
ALTER TABLE `mediacompanyservices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `paymentmethodes`
--
ALTER TABLE `paymentmethodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sosialmedias`
--
ALTER TABLE `sosialmedias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tagservices`
--
ALTER TABLE `tagservices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
