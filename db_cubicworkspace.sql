-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2017 at 08:14 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

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
  `codeuser` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecategoryadmin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codeadmin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `codeuser`, `codecategoryadmin`, `codeadmin`, `phone`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, '13', '2', 'ADM004', '1', '51633.PNG', 'Y', '2017-08-22 23:56:50', '2017-09-11 23:19:10'),
(31, '10', '2', 'ADM006', '11', '39684.PNG', 'Y', '2017-08-24 01:21:45', '2017-08-24 01:21:45'),
(35, '3', '2', 'ADM009', '1234', '56275.PNG', 'Y', '2017-09-06 21:27:00', '2017-09-07 01:58:24'),
(37, '3', '2', 'ADM010', '10200202', '58106.jpg', 'Y', '2017-09-06 21:48:27', '2017-09-07 01:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `adminspartnerships`
--

CREATE TABLE `adminspartnerships` (
  `id` int(10) UNSIGNED NOT NULL,
  `codecompanypartnership` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codeuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adminspartnerships`
--

INSERT INTO `adminspartnerships` (`id`, `codecompanypartnership`, `codeuser`, `phone`, `image`, `address`, `status`, `created_at`, `updated_at`) VALUES
(8, '7', '10', '1', '97366.png', '1', 'Y', '2017-08-23 00:05:41', '2017-09-12 00:40:11');

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

--
-- Dumping data for table `billingcompanyservices`
--

INSERT INTO `billingcompanyservices` (`id`, `name`, `codecompanyservices`, `codecompanypartnership`, `codebilling`, `quota`, `currentquota`, `usedquota`, `currentquotauser`, `nowquotauser`, `information`, `registerdate`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Billing Company Services', '5', '7', 'BIL003', 111, 1, 1, 1, 1, '11', '2017-09-12 12:42:30', 'Y', '2017-09-07 00:02:51', '2017-09-12 05:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `bookingspaces`
--

CREATE TABLE `bookingspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `codebookingspace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `datein` datetime NOT NULL,
  `dateout` datetime NOT NULL,
  `currentquotauser` int(11) NOT NULL,
  `nowquotauser` int(11) NOT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateregister` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookingspaces`
--

INSERT INTO `bookingspaces` (`id`, `codebookingspace`, `codecompanypartnership`, `codebilling`, `codeservices`, `codeuser`, `codepaymentmethode`, `invoice`, `name`, `email`, `phone`, `address`, `quota`, `quotauser`, `price`, `totalprice`, `datein`, `dateout`, `currentquotauser`, `nowquotauser`, `information`, `dateregister`, `status`, `created_at`, `updated_at`) VALUES
(2, 'CBS002', '7', '2', '2', '12', '1', '11', 'Nava Gia', 'navagiaginasta@gmail.com', '87820033395', 'Cianjur', 11, 1, 1, 1, '2017-09-12 12:50:43', '2017-09-12 12:50:43', 1, 11, '1', '2017-09-12 12:50:43', 'Y', '2017-09-07 00:36:31', '2017-09-12 05:50:43');

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
(3, 'Pelatihan', 'CTE002', 'Pelatihan', 'Y', '2017-09-12 06:02:46', '2017-09-12 06:02:46');

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
(5, 'Slider', 'CTM001', 'Slider', 'Y', '2017-09-11 21:33:22', '2017-09-11 21:33:34');

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
(1, 'Category Payment Methode1', 'CPM001', 'Category Payment Methode1', 'N', '2017-08-28 05:39:22', '2017-09-07 01:13:38');

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
(3, 'Category Services1', 'CTS002', '2', 'Y', '2017-08-23 22:22:23', '2017-09-06 23:20:12'),
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
(2, 'Cianjur', '2', 'CIT001', 'Cianjur', 'Y', '2017-08-22 11:44:40', '2017-09-12 00:55:03'),
(3, 'Bandung', '2', 'CIT002', 'Bandung', 'Y', '2017-09-12 06:30:05', '2017-09-12 06:30:05');

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
  `registerdate` datetime NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `favicon`, `logo`, `email`, `phone`, `fax`, `address`, `maps`, `profile`, `history`, `description`, `vision`, `mision`, `registerdate`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Workspace 53', '20028.png', '46349.png', 'workspace@gmail.com', '022-4200000', '022-4200000', 'Jl. Naripan no.53 Bandung', '-', '<p>Workspace 53 tergolong co-working space baru dan menarik. Lokasinya yang berada di tengah kota Bandung, fasilitas yang lengkap namun dengan harga yang terjangkau menjadi pilihan yang tepat bagi start-up yang sedang mencari co-working space. Lebih dari sekadar ruang bekerja, Workspace menyediakan ekosistem bisnis yang menunjang perkembangan start-up. Selain co-working space dan Office Room yang bisa disewa perbulan, Workspace juga menyediakan Meeting Room dan Virtual Office. Kantin dan coffee shop dengan pilihan menu yang bervariasi juga menambah kenyamanan start-up bekerja di Workspace 53.</p>', 'Workspace 53 mulai beroperasi pada bulan Oktober 2017.', '<p><strong>Workspace</strong> menyediakan coworking space, office room, meeting room, dan virtual office. Fasilitas yang disediakan untuk coworking space di antaranya: - High speed internet access - 1 private locker for the team - Free flow coffee &amp; tea in pantry area - Team table max 6 person</p>', 'Menjadi tempat tumbuh kembang kewirausahaan Indonesia melalui coworking space', 'Menyediakan ruang dan ekosistem bisnis untuk start-up dan wirausahawan', '2017-09-12 07:45:14', 'Y', '2017-08-21 17:00:00', '2017-09-12 00:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `companypartnerships`
--

CREATE TABLE `companypartnerships` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codecompanypartnership` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codetagservices` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `faq` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registerdate` datetime NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companypartnerships`
--

INSERT INTO `companypartnerships` (`id`, `name`, `codecompanypartnership`, `codetagservices`, `favicon`, `logo`, `email`, `phone`, `fax`, `address`, `maps`, `codecountry`, `codecity`, `profile`, `history`, `description`, `vision`, `mision`, `faq`, `information`, `registerdate`, `status`, `created_at`, `updated_at`) VALUES
(7, 'CO&CO', 'COP001', '3', '80994.jpg', '98118.jpg', 'navagiaginasta@gmail.com', '87820033395', '87820033395', 'Cianjur', '-', '2', '2', '-', '1', '1', '1', '1', '<p>1</p>', '1', '2017-09-14 04:05:32', 'Y', '2017-09-12 00:37:53', '2017-09-13 21:05:32'),
(8, 'FREENOVATION', 'COP002', '3', '83540.jpg', '20336.jpg', 'fvdfvfdv@gmail.com', '087820033395', '87820033395', '-', '-', '2', '2', '-', '-', '-', '-', '-', '<p>-</p>', '-', '2017-09-13 12:39:12', 'Y', '2017-09-12 06:32:41', '2017-09-13 05:39:12'),
(9, 'Bandung Digital Valley', 'COP003', '3', '85158.jpg', '46376.jpg', 'bdv@gmail.com', '0', '0', '-', '-', '2', '3', '-', '-', '-', '-', '-', '<p>-</p>', '-', '2017-09-13 12:39:37', 'Y', '2017-09-13 05:34:43', '2017-09-13 05:39:37'),
(10, 'PT.DYCODE INDONESIA', 'COP004', '3', '66913.jpg', '37513.jpg', 'dycode@gmail.com', '0', '0', 'Jl.Sari Asih no.54', '-', '2', '3', '-', '-', '-', '-', '-', '<p>-</p>', '-', '2017-09-13 13:27:38', 'Y', '2017-09-13 05:40:55', '2017-09-13 06:27:38');

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
  `registerdate` datetime NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companyservices`
--

INSERT INTO `companyservices` (`id`, `name`, `codecompanyservices`, `codecompanypartnership`, `codetagservices`, `codeservices`, `codecity`, `quota`, `price`, `quotauser`, `information`, `registerdate`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Special Packages3', 'COS002', '10', '5', '2', '3', 20, 5000000, 20, 'Special Packages3', '2017-09-13 13:25:34', 'Y', '2017-08-23 21:49:27', '2017-09-13 06:25:34'),
(8, 'Special Packages2', 'COS005', '9', '5', '2', '3', 100, 700000, 20, 'Special Packages2', '2017-09-13 13:28:11', 'Y', '2017-09-12 09:30:25', '2017-09-13 06:28:11'),
(13, 'Special Packages1', 'COS009', '7', '5', '4', '2', 100, 200000, 20, 'Special Packages1', '2017-09-14 04:57:12', 'Y', '2017-09-12 22:32:14', '2017-09-13 21:57:12'),
(14, 'Special Packages4', 'COS010', '7', '2,5', '5', '2', 20, 20, 10, 'Special Packages4', '2017-09-14 04:32:47', 'N', '2017-09-13 21:30:18', '2017-09-13 21:32:47');

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
(1, '2', '3', 'EVT001', '1', '1', '2017-09-12 13:03:36', 1, '34302.PNG', '1', 'Y', '2017-08-28 04:51:23', '2017-09-12 06:03:36');

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

--
-- Dumping data for table `historybillingcompanyservices`
--

INSERT INTO `historybillingcompanyservices` (`id`, `name`, `codecompanyservices`, `codecompanypartnership`, `codebilling`, `quota`, `currentquota`, `usedquota`, `price`, `currentquotauser`, `nowquotauser`, `information`, `datetime`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', '7', '7', '1', 3, 4, 5, 8, 6, 7, '9', '2017-09-12 12:44:48', 'Y', '2017-08-23 17:00:00', '2017-09-12 05:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `historybookingspaces`
--

CREATE TABLE `historybookingspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `codebookingspace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `historybookingspaces` (`id`, `codebookingspace`, `codecompanypartnership`, `codebilling`, `codeservices`, `codeuser`, `invoice`, `name`, `email`, `phone`, `address`, `quota`, `quotauser`, `price`, `totalprice`, `datein`, `dateout`, `currentquotauser`, `nowquotauser`, `information`, `datetime`, `status`, `created_at`, `updated_at`) VALUES
(1, '11', '5', '4', '2', '51', '61', 'Nava Gia', 'navagiaginasta@gmail.com', '87820033395', 'Cianjur', 111, 121, 131, 141, '2017-09-07 07:52:49', '2017-09-07 07:52:49', 151, 161, '171', '2017-09-07 07:52:49', 'N', '2017-08-28 05:13:31', '2017-09-07 00:52:49');

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
(1, '100+ Partnership', 'HEADER', '100+ Partnership', 'Prepared do an dissuade whatever steepest.', '35922.png', 'Y', '2017-08-21 17:00:00', '2017-09-12 22:06:25'),
(3, '300+ Basecamp', 'HEADER', '300+ Basecamp', 'Tastes giving in passed direct me valley supply.', '29987.png', 'Y', '2017-09-11 22:51:07', '2017-09-12 06:22:55'),
(4, '20000+ Happy Customers', 'HEADER', '20000+ Happy Customers', 'Devonshire invitation discovered indulgence.', '48448.png', 'Y', '2017-09-11 22:51:59', '2017-09-11 22:51:59'),
(5, 'Easy to Booking', 'SERVICES', 'pe-7s-users', 'Blind would equal while oh mr lain led and fact none. One preferred sportsmen resolving the happiness continued. High at of in loud rich true.', '59505.png', 'Y', '2017-09-13 06:32:43', '2017-09-13 07:02:56'),
(6, 'Quality Facilities', 'SERVICES', 'pe-7s-home', 'Admiration stimulated cultivated reasonable be projection possession of. Real no near room ye bred sake if some. Is arranging furnished knowledge.', '90495.png', 'Y', '2017-09-13 06:47:47', '2017-09-13 07:03:08'),
(7, 'Comfortable Room', 'SERVICES', 'pe-7s-car', 'Effect twenty indeed beyond for not had county. The use him without greatly can private. Increasing it unpleasant no of contrasted no continuing.', '37239.png', 'Y', '2017-09-13 06:50:17', '2017-09-13 07:02:34');

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
(4, 'Slider', '5', 'MED001', '#', '12 September 2017 - 11:30', 'Cubic Workspace', '68664.jpg', 'Y', '2017-09-11 21:35:27', '2017-09-11 22:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `codeuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `phone` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registerdate` datetime NOT NULL,
  `lastlogin` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `codeuser`, `institution`, `birthday`, `phone`, `address`, `image`, `description`, `information`, `registerdate`, `lastlogin`, `status`, `created_at`, `updated_at`) VALUES
(1, 'CMB001', '11', '2017-08-01', '21', '31', '94527.jpg', '41', '51', '2017-08-28 12:27:23', '2017-08-28 12:27:23', 'Y', '2017-08-28 05:26:46', '2017-08-28 05:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'wqdqeqf111', 'qefqefef@gmail.com1111', '234234', 'dfsdfsdfds1111', 'Y', '2017-08-28 09:27:14', '2017-08-28 09:27:46');

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
(1, 'Payment Methodes1', '1', 'PAM001', '31', 41, '51', '23881.PNG', 'N', '2017-08-28 05:38:01', '2017-09-12 05:58:12');

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
(2, 'CoWorking', '4', 'SER001', '1231', 'Y', '2017-08-23 22:07:48', '2017-09-13 20:33:18'),
(4, 'Office', '3', 'SER002', 'Office', 'Y', '2017-09-13 20:33:30', '2017-09-13 20:33:30'),
(5, 'Residence', '3', 'SER003', 'Residence', 'Y', '2017-09-13 20:33:41', '2017-09-13 20:33:41');

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
(1, 'FB1', 'www.fb.com1', '11', 'Y', '2017-08-28 05:32:50', '2017-08-28 05:33:03');

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
(3, '-', 'navagiaginasta@gmail.com', 'N', '2017-09-13 07:43:32', '2017-09-13 07:43:32'),
(4, '-', 'admin@example.com', 'N', '2017-09-13 07:44:24', '2017-09-13 07:44:24'),
(5, '-', 'ketut@gmail.com', 'N', '2017-09-13 07:46:33', '2017-09-13 07:46:33'),
(7, '-', 'andrey@gmail.com', 'N', '2017-09-13 07:57:33', '2017-09-13 07:57:33'),
(10, '-', 'nav@gmail.com', 'N', '2017-09-13 09:45:40', '2017-09-13 09:45:40');

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
(2, 'Hot Service', 'CTS001', '2', 'COMPANY SERVICES', 'Hot Service', 'Y', '2017-08-22 19:47:57', '2017-09-13 05:42:30'),
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
(2, '2', '55210.jpg', '2', '2', 'N', '2017-08-28 05:21:34', '2017-08-28 05:21:57');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('USER','ADMIN PARTNERSHIP','ADMIN') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastlogin` datetime NOT NULL,
  `registerdate` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `codeuser`, `email`, `password`, `remember_token`, `status`, `user_id`, `provider_id`, `lastlogin`, `registerdate`, `created_at`, `updated_at`) VALUES
(3, 'Nava Gia Ginasta', 'USR001', 'navagiaginasta@gmail.com', '$2y$10$wnEhcBgMsVXUz8hyw/uZ3Ot6Br2ggdo6hGCzFmARKAJqkjeA3us02', 'hsX2sRfvR2oJ19ARDGwfRhsL4ZORwpt0ncllkjCm0cVV47GWjxsEgavlge7h', 'ADMIN', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-08-19 05:52:17', '2017-08-19 05:52:17'),
(10, 'admin@cubic.co.id', 'USR002', 'admin@cubic.co.id', '$2y$10$p5BM.1OpC08eews3rBFJEuuS46ifZ/2Ez1q7Ofkko3H/XNEb5el/2', 'LwlflPD1uq86fXbMo0hLo5xT0Qdb6In01v6bPpEuKT14B4YOi06EnG67c3p5', 'ADMIN', '', '', '2017-09-01 15:06:49', '2017-09-01 15:06:49', '2017-08-23 01:20:18', '2017-09-01 08:06:49'),
(13, 'user', 'USR004', 'user@gmail.com', '$2y$10$6eo7DNUnVkVvAm5rUAcweOnkHiL9qSVcFL2jFn4m22FheL6AitaCe', 'yQvDXJb7JW8RDF66WXcrOQxoGmPBYYfwD9pWiDbs8y4RFAtc6sw97cRomfz8', 'USER', '', '', '2017-09-01 16:14:09', '2017-09-01 16:14:09', '2017-09-01 09:14:09', '2017-09-01 09:14:09'),
(14, 'Nava Gia', 'USR005', 'navagiaginasta2@gmail.com', '$2y$10$Ek.5jo6WrLaOkqs/iuuL7OuiIvVOj5m6W0Sf.pePtUt9b65eujvpW', NULL, 'USER', '', '', '2017-09-12 13:43:03', '2017-09-12 13:43:03', '2017-09-12 06:43:03', '2017-09-12 06:43:03'),
(15, 'Nava Gia', 'USR006', 'navagiaginasta@gmail.com', '$2y$10$ijE/rhQT1/MICrUQTyOleuKhwmgkIq2mGQjWyjBINrozcfJ6.GEEq', NULL, 'USER', '', '', '2017-09-12 13:43:13', '2017-09-12 13:43:13', '2017-09-12 06:43:13', '2017-09-12 06:43:13'),
(16, 'Nava Gia', 'USR007', 'navagiaginasta@gmail.com', '$2y$10$va6bVQcLwwvpFM0eCE/grudsJ/OtXYs4oxkLBNQnYC3BbluMH1gUG', NULL, 'USER', '', '', '2017-09-12 13:43:23', '2017-09-12 13:43:23', '2017-09-12 06:43:23', '2017-09-12 06:43:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codeuser` (`codeuser`),
  ADD KEY `codeuser_2` (`codeuser`);

--
-- Indexes for table `adminspartnerships`
--
ALTER TABLE `adminspartnerships`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `adminspartnerships`
--
ALTER TABLE `adminspartnerships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `billingcompanyservices`
--
ALTER TABLE `billingcompanyservices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bookingspaces`
--
ALTER TABLE `bookingspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categoryadmins`
--
ALTER TABLE `categoryadmins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categoryevents`
--
ALTER TABLE `categoryevents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `companypartnerships`
--
ALTER TABLE `companypartnerships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `companyservices`
--
ALTER TABLE `companyservices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `countrys`
--
ALTER TABLE `countrys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `historybillingcompanyservices`
--
ALTER TABLE `historybillingcompanyservices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `historybookingspaces`
--
ALTER TABLE `historybookingspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `informasicompanies`
--
ALTER TABLE `informasicompanies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `paymentmethodes`
--
ALTER TABLE `paymentmethodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sosialmedias`
--
ALTER TABLE `sosialmedias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tagservices`
--
ALTER TABLE `tagservices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
