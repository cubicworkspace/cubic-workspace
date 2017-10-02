-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2017 at 05:27 PM
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
(41, '10', '2', 'ADM001', '87820033395', '97122.jpg', 'N', '2017-09-14 15:18:53', '2017-09-14 15:19:22'),
(42, 'Nava Gia Ginasta', '2', 'ADM002', '87820033395', '54888.png', 'Y', '2017-09-14 15:21:51', '2017-09-14 15:22:13');

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
(4, 'Billing Company Services', '5', '7', 'BIL003', 11, 10, 1, 1, 1, '11', '2017-09-12 12:42:30', 'Y', '2017-09-07 00:02:51', '2017-09-12 05:42:30'),
(6, 'Special Packages10', '17', '7', '', 10, 10, 0, 0, 0, '1', '2017-09-26 16:32:05', 'Y', '2017-09-23 01:37:15', '2017-09-26 09:32:05'),
(8, 'Wer', 'COS012', '8', '', 3, 3, 0, 0, 0, 'wer', '2017-09-26 17:08:11', 'Y', '2017-09-26 10:08:11', '2017-09-26 10:08:11'),
(9, 'sp', 'COS012', '8', '', 20, 20, 0, 0, 0, 'sps', '2017-09-26 17:49:05', 'Y', '2017-09-26 10:49:05', '2017-09-26 10:49:05');

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
  `dateregister` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookingspaces`
--

INSERT INTO `bookingspaces` (`id`, `codebookingspace`, `codecompanyservices`, `codecompanypartnership`, `codebilling`, `codeservices`, `codeuser`, `codepaymentmethode`, `invoice`, `name`, `email`, `phone`, `address`, `quota`, `quotauser`, `price`, `totalprice`, `datein`, `dateout`, `currentquotauser`, `nowquotauser`, `information`, `dateregister`, `status`, `created_at`, `updated_at`) VALUES
(2, 'CBS002', '8', '7', '2', '2', '12', '1', '11', 'Nava Gia', 'navagiaginasta@gmail.com', '87820033395', 'Cianjur', 11, 1, 1, 1, '2017-09-20', '2017-09-22', 1, 11, '1', '2017-09-12 12:50:43', 'Y', '2017-09-07 00:36:31', '2017-09-12 05:50:43'),
(36, 'CBS003', '5', '10', '', '2', '13', '1', '36072', 'user', 'user@gmail.com', '0', 'Sarijadi Bandung', 0, 0, 5000000, 15000000, '1970-01-01', '0000-00-00', 0, 0, '', '2017-09-25 10:48:32', 'N', '2017-09-25 03:48:32', '2017-09-25 03:48:32'),
(37, 'CBS004', '5', '10', '', '2', '13', '1', '83960', 'user', 'user@gmail.com', '087820033395', 'Sarijadi Bandung', 0, 0, 5000000, 135000000, '2017-09-01', '2017-09-28', 0, 0, '', '2017-09-25 10:49:41', 'N', '2017-09-25 03:49:41', '2017-09-25 03:49:41'),
(38, 'CBS005', '5', '10', '', '2', '13', '1', '20562', 'user', 'user@gmail.com', '0', 'Sarijadi Bandung', 0, 0, 5000000, 10000000, '2017-09-01', '2017-09-03', 0, 0, '', '2017-09-25 11:13:33', 'N', '2017-09-25 04:13:33', '2017-09-25 04:13:33'),
(39, 'CBS006', '5', '10', '', '2', '13', '1', '17069', 'user', 'user@gmail.com', '0', 'Sarijadi Bandung', 0, 0, 5000000, 150000000, '2017-09-01', '2017-10-01', 0, 0, '', '2017-09-25 12:22:55', 'N', '2017-09-25 05:22:55', '2017-09-25 05:22:55'),
(40, 'CBS007', '8', '9', '', '2', '13', '2', '89976', 'user', 'user@gmail.com', '0', 'Sarijadi Bandung', 0, 0, 700000, 1400000, '2017-09-01', '2017-09-03', 0, 0, '', '2017-09-25 17:12:25', 'N', '2017-09-25 10:12:25', '2017-09-25 10:12:25'),
(41, 'CBS008', '5', '10', '', '2', '13', '1', '86850', 'user', 'user@gmail.com', '087820033395', 'Jl.Sari Asih no.51 Sarijadi-Bandung 40151', 0, 0, 5000000, 300000000, '2017-08-01', '2017-09-30', 0, 0, '', '2017-09-25 22:38:41', 'N', '2017-09-25 15:38:41', '2017-09-25 15:38:41'),
(42, 'CBS009', '5', '10', '', '2', '13', '2', '28266', 'user', 'user@gmail.com', '12121', 'bandung', 0, 0, 5000000, 5000000, '2017-09-01', '2017-09-02', 0, 0, '', '2017-09-25 23:05:01', 'N', '2017-09-25 16:05:01', '2017-09-25 16:05:01'),
(43, 'CBS010', '5', '10', '', '2', '13', '1', '93611', 'user', 'user@gmail.com', '0', 'bdg', 0, 0, 5000000, 20000000, '2017-09-26', '2017-09-30', 0, 0, '', '2017-09-26 04:59:44', 'N', '2017-09-25 21:59:44', '2017-09-25 21:59:44'),
(44, 'CBS011', '5', '10', '', '2', '13', '1', '60986', 'user', 'user@gmail.com', '0', '0', 0, 0, 5000000, 5000000, '2017-09-02', '2017-09-03', 0, 0, '', '2017-09-26 08:43:17', 'N', '2017-09-26 01:43:17', '2017-09-26 01:43:17'),
(45, 'CBS012', '5', '10', '', '2', '13', '1', '63596', 'user', 'user@gmail.com', '087820033395', 'Cianjur', 0, 0, 5000000, 145000000, '2017-09-01', '2017-09-30', 0, 0, '', '2017-09-26 15:36:03', 'N', '2017-09-26 08:36:03', '2017-09-26 08:36:03'),
(46, 'CBS013', '5', '10', '', '2', '13', '2', '48963', 'user', 'user@gmail.com', '0', '0', 0, 0, 5000000, 15000000, '2017-09-27', '2017-09-30', 0, 0, '', '2017-09-27 06:02:04', 'N', '2017-09-26 23:02:04', '2017-09-26 23:02:04');

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
(6, 5, 10, 'navagiaginasta@gmail.com', '087820033395', '2017-09-23', '09:11', 'N', '2017-09-23 01:57:54', '2017-09-23 01:57:54'),
(7, 14, 7, 'navagiaginasta@gmail.com', '87820033395', '2017-09-29', '01:22', 'N', '2017-09-23 02:05:40', '2017-09-23 02:05:40'),
(8, 5, 10, 'navagiaginasta@gmail.com', '87820033395', '2017-09-02', '02:00', 'N', '2017-09-23 02:19:32', '2017-09-23 02:19:32'),
(9, 5, 10, 'ex@gmail.com', '87820033395', '2017-09-09', '03:33', 'N', '2017-09-23 02:20:44', '2017-09-23 02:20:44'),
(10, 5, 10, 'navagiaginasta@gmail.com', '087820033395', '2017-09-09', '03:03', 'N', '2017-09-23 02:21:20', '2017-09-23 02:21:20'),
(11, 8, 9, 'navagiaginasta@gmail.com', '087820033395', '2017-09-08', '00:11', 'N', '2017-09-23 02:22:48', '2017-09-23 02:22:48'),
(12, 8, 9, 'navagiaginasta@gmail.com', '87820033395', '2017-09-29', '16:22', 'N', '2017-09-23 02:31:34', '2017-09-23 02:31:34'),
(13, 8, 9, 'navagiaginasta@gmail.com', 'e', '2017-09-08', '00:01', 'N', '2017-09-23 02:32:13', '2017-09-23 02:32:13'),
(14, 8, 9, 'admin@example.com', '87820033395', '2017-09-23', '14:03', 'N', '2017-09-23 02:32:57', '2017-09-23 02:32:57'),
(15, 13, 7, 'navagiaginasta@gmail.com', '87820033395', '2017-09-04', '01:01', 'N', '2017-09-23 02:33:51', '2017-09-23 02:33:51'),
(16, 5, 10, 'aliando@gmail.com', '010101', '0000-00-00', '02:02', 'N', '2017-09-24 03:56:59', '2017-09-24 03:56:59'),
(17, 5, 10, 'kp@gmail.com', '0899999', '0000-00-00', '10:20', 'N', '2017-09-26 23:26:48', '2017-09-26 23:26:48');

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
(3, 'Category Services1', 'CTS002', '2', 'N', '2017-08-23 22:22:23', '2017-09-26 09:54:01'),
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
(3, 'Bandung', '2', 'CIT002', 'Bandung', 'Y', '2017-09-12 06:30:05', '2017-09-12 06:30:05'),
(4, 'Solo', '2', 'CIT003', 'solo', 'Y', '2017-09-26 09:28:34', '2017-09-26 09:28:57');

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
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `favicon`, `logo`, `email`, `phone`, `fax`, `address`, `maps`, `profile`, `history`, `description`, `vision`, `mision`, `registerdate`, `status`, `author`, `created_at`, `updated_at`) VALUES
(1, 'Workspace 53', '55565.png', '20170926175403.png', 'workspace@gmail.com', '087820033395', '022-4200000', 'Jl. Naripan no.53 Bandung', '-6.873364, 107.575632', '<p>Workspace 53 tergolong co-working space baru dan menarik. Lokasinya yang berada di tengah kota Bandung, fasilitas yang lengkap namun dengan harga yang terjangkau menjadi pilihan yang tepat bagi start-up yang sedang mencari co-working space. Lebih dari sekadar ruang bekerja, Workspace menyediakan ekosistem bisnis yang menunjang perkembangan start-up. Selain co-working space dan Office Room yang bisa disewa perbulan, Workspace juga menyediakan Meeting Room dan Virtual Office. Kantin dan coffee shop dengan pilihan menu yang bervariasi juga menambah kenyamanan start-up bekerja di Workspace 53.</p>', 'Workspace 53 mulai beroperasi pada bulan Oktober 2017.', '<p>Workspace menyediakan coworking space, office room, meeting room, dan virtual office. Fasilitas yang disediakan untuk coworking space di antaranya: - High speed internet access - 1 private locker for the team - Free flow coffee &amp; tea in pantry area - Team table max 6 person</p>', 'Menjadi tempat tumbuh kembang kewirausahaan Indonesia melalui coworking space', 'Menyediakan ruang dan ekosistem bisnis untuk start-up dan wirausahawan', '2017-09-26 17:59:23', 'Y', 'navagiaginasta@gmail.com | 087820033395', '2017-08-21 17:00:00', '2017-09-26 10:59:23');

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

INSERT INTO `companypartnerships` (`id`, `name`, `codecompanypartnership`, `codetagservices`, `favicon`, `logo`, `email`, `phone`, `fax`, `address`, `maps`, `codecountry`, `codecity`, `profile`, `history`, `description`, `vision`, `mision`, `faq`, `information`, `registerdate`, `status`, `created_at`, `updated_at`) VALUES
(7, 'CO&CO', 'COP001', '3', '90160.png', '93038.png', 'navagiaginasta@gmail.com', '87820033395', '87820033395', 'Cianjur', '-6.873364, 107.575632', '2', '2', 'Profile CO&CO', '1', '1', '1', '1', '<p>Unpacked now declared put you confined daughter improved. Celebrated imprudence few interested especially reasonable off one. Wonder bed elinor family secure met. It want gave west into high no in. Depend repair met before man admire see and. An he obsUnpacked now declared put you confined daughter improved. Celebrated imprudence few interested especially reasonable off one. Wonder bed elinor family secure met. It want gave west into high no in. Depend repair met before man admire see and. An he obsUnpacked now declared put you confined daughter improved. Celebrated imprudence few interested especially reasonable off one. Wonder bed elinor family secure met. It want gave west into high no in. Depend repair met before man admire see and. An he obsUnpacked now declared put you confined daughter improved. Celebrated imprudence few interested especially reasonable off one. Wonder bed elinor family secure met. It want gave west into high no in. Depend repair met before man admire see and. An he obsUnpacked now declared put you confined daughter improved. Celebrated imprudence few interested especially reasonable off one. Wonder bed elinor family secure met. It want gave west into high no in. Depend repair met before man admire see and</p>', '1', '2017-09-26 09:11:06', 'Y', '2017-09-12 00:37:53', '2017-09-26 02:11:07'),
(8, 'FREENOVATION', 'COP002', '3', '85768.jpg', '59979.PNG', 'fvdfvfdv@gmail.com', '087820033395', '87820033395', '-', '-6.9057208,107.6088645', '2', '2', '-', '-', '-', '-', '-', '<p>-</p>', '-', '2017-09-26 17:47:23', 'Y', '2017-09-12 06:32:41', '2017-09-26 10:47:23'),
(9, 'Bandung Digital Valley', 'COP003', '3', '85158.jpg', '46376.jpg', 'bdv@gmail.com', '08919199191', '0', 'Jl.Sari Asih no.54-', '-6.873364, 107.575632', '2', '3', '-', '-', 'His exquisite sincerity education shameless ten earnestly breakfast add. So we me unknown as improve hastily sitting forming. Especially favourable compliment but thoroughly unreserved saw she themselves. Sufficient impossible him may ten insensible put continuing. Oppose exeter income simple few joy cousin but twenty. Scale began quiet up short wrong in in. Sportsmen shy forfeited engrossed may can.', '-', '-', '<p>-</p>', '-', '2017-09-13 12:39:37', 'Y', '2017-09-13 05:34:43', '2017-09-13 05:39:37'),
(10, 'PT.DYCODE INDONESIA', 'COP004', '3', '66913.jpg', '37513.jpg', 'dycode@gmail.com', '0', '0', 'Jl.Sari Asih no.54', '-6.873364, 107.575632', '2', '3', '-', '-', '-', '-', '-', '<p>-</p>', '-', '2017-09-13 13:27:38', 'Y', '2017-09-13 05:40:55', '2017-09-13 06:27:38'),
(11, 'ws', 'COP005', '3', '69528.PNG', '22042.png', 'ketut@gmail.com', '087820033395', 'we3232', '32323223', 'ed', '2', '2', 'deed', 'dede', 'ded', 'ded', 'ed', '<p>dede</p>', 'ded', '2017-09-26 17:15:06', 'N', '2017-09-26 10:13:22', '2017-09-26 10:15:06');

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
(8, 'Special Packages2', 'COS005', '9', '5', '2', '3', 100, 700000, 20, 'Special Packages2', '2017-09-26 17:48:35', 'Y', '2017-09-12 09:30:25', '2017-09-26 10:48:35'),
(13, 'Special Packages1', 'COS009', '7', '5', '4', '2', 200, 200000, 20, 'Modern air conditioned coach with reclining seats, TV for showing DVDs, and toilet', '2017-09-20 15:00:49', 'Y', '2017-09-12 22:32:14', '2017-09-20 08:00:49'),
(14, 'Special Packages4', 'COS010', '7', '2,5', '5', '2', 20, 2000000, 10, 'Special Packages4', '2017-09-15 07:06:53', 'Y', '2017-09-13 21:30:18', '2017-09-15 00:06:53'),
(17, 'Special Packages10', 'COS011', '7', '-', '2', '2', 10, 200000, 20, '1', '2017-09-23 08:37:15', 'Y', '2017-09-23 01:37:15', '2017-09-23 01:37:15');

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
(2, 'Indonesia', 'COU001', '55988.png', 'Indonesia', 'N', '2017-08-22 11:40:21', '2017-09-12 00:51:13'),
(3, 'India', 'COU002', '13488.PNG', 'India', 'N', '2017-09-26 09:30:59', '2017-09-26 09:31:27');

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
(1, 'Workshop Startup', '3', 'EVT001', '', 'Description Description', '2017-09-26 14:16:18', 10, '57527.jpg', 'Bandung Creative City Forum', 'Y', '2017-09-26 06:52:58', '2017-09-26 07:16:18'),
(2, '100+ Partnership Pelatihan', '3', 'EVT002', '', 'Description', '2017-09-26 14:16:10', 10, '25087.jpg', 'Bandung', 'Y', '2017-09-26 06:58:44', '2017-09-26 07:16:10'),
(3, 'Video Kegiatan Event', '3', 'EVT003', 'https://player.vimeo.com/video/71319358', 'description', '2017-09-26 14:20:34', 0, '17857.jpg', '0', 'Y', '2017-09-26 07:15:24', '2017-09-26 07:20:34');

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
(1, '100+ Partnership', 'HEADER', '100+ Partnership', 'Prepared do an dissuade whatever steepest.', '35922.png', 'Y', '2017-08-21 17:00:00', '2017-09-12 22:06:25'),
(3, '300+ Basecamp', 'HEADER', '300+ Basecamp', 'Tastes giving in passed direct me valley supply.', '29987.png', 'Y', '2017-09-11 22:51:07', '2017-09-12 06:22:55'),
(4, '20000+ Happy Customers', 'HEADER', '20000+ Happy Customers', 'Devonshire invitation discovered indulgence.', '48448.png', 'Y', '2017-09-11 22:51:59', '2017-09-11 22:51:59'),
(5, 'Easy to Booking', 'SERVICES', 'pe-7s-users', 'Blind would equal while oh mr lain led and fact none. One preferred sportsmen resolving the happiness continued. High at of in loud rich true.', '59505.png', 'Y', '2017-09-13 06:32:43', '2017-09-13 07:02:56'),
(6, 'Quality Facilities', 'SERVICES', 'pe-7s-home', 'Admiration stimulated cultivated reasonable be projection possession of. Real no near room ye bred sake if some. Is arranging furnished knowledge.', '90495.png', 'Y', '2017-09-13 06:47:47', '2017-09-13 07:03:08'),
(7, 'Comfortable Room', 'SERVICES', 'pe-7s-car', 'Effect twenty indeed beyond for not had county. The use him without greatly can private. Increasing it unpleasant no of contrasted no continuing.', '37239.png', 'Y', '2017-09-13 06:50:17', '2017-09-13 07:02:34'),
(8, 'Workspace 53', 'OFFICE', 'Workspace 53', 'Jl. Naripan no.53 Bandung, 022-4200000, workspace@gmail.com', '20170926150218.png', 'Y', '2017-09-26 08:02:18', '2017-09-26 08:02:18'),
(9, 'CUBIC INC', 'OFFICE', 'CUBIC INC', 'Jl. Naripan no.53 Bandung, 022-4200000, workspace@gmail.com', '20170926150252.png', 'Y', '2017-09-26 08:02:52', '2017-09-26 08:02:52'),
(10, 'Bandung Creative City Forum', 'OFFICE', 'Bandung Creative City Forum', 'Jl. Naripan no.53 Bandung, 022-4200000, workspace@gmail.com', '20170926150331.jpg', 'Y', '2017-09-26 08:03:31', '2017-09-26 08:03:31');

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
(2, 'MEDIA COMPANY SERVICES1', 5, 7, '20170920165951.jpg', 'Y', '2017-09-20 16:59:51', '2017-09-20 09:59:51'),
(3, 'MEDIA COMPANY SERVICES3', 5, 7, '20170920170047.jpg', 'Y', '2017-09-20 10:00:47', '2017-09-20 10:00:47'),
(4, 'MEDIA COMPANY SERVICES3', 5, 7, '20170920170712.jpg', 'Y', '2017-09-20 17:07:12', '2017-09-20 10:07:12'),
(5, 'MEDIA COMPANY SERVICES4', 5, 7, '20170920170731.jpg', 'Y', '2017-09-20 10:07:31', '2017-09-20 10:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `codeuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, '13', 'user@gmail.com', 'poltekpos', '0101', '087820033395', 'Sarijadi Bandung', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y', NULL, NULL),
(2, 'CMB001', '', 'poltek', '2017-12-13', '23232323', 'srwrwrwrwrwrwwrrwrw', '45494.PNG', 'qqqqqqqqqqqqqqqqqq', 'qrrrrrrrrrrrrrrrrrr', '2017-09-26 16:13:44', '2017-09-26 16:13:44', 'Y', '2017-09-26 09:13:22', '2017-09-26 09:13:44');

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
(1, 'Transfer Bank', '1', 'PAM001', '-', 0, '-', '94121.jpg', 'Y', '2017-09-24 07:15:24', '2017-09-24 07:15:24'),
(2, 'Bayar Dimuk', '1', 'PAM002', '-', 0, '-', '84584.jpg', 'Y', '2017-09-24 07:15:49', '2017-09-24 07:15:49');

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
(14, 24, '112227416377852186762', 'google', '2017-09-20 01:22:38', '2017-09-20 01:22:38'),
(15, 26, '1403911603062601', 'facebook', '2017-09-20 01:41:50', '2017-09-20 01:41:50'),
(16, 28, '103641933537457165916', 'google', '2017-09-20 09:04:20', '2017-09-20 09:04:20'),
(17, 26, '104059642855903038031', 'google', '2017-09-25 02:27:37', '2017-09-25 02:27:37');

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
(13, 2, '2017-09-15 00:10:49', '2017-09-15 00:10:49'),
(14, 5, '2017-09-15 00:06:53', '2017-09-15 00:06:53'),
(16, 2, '2017-09-23 01:33:59', '2017-09-23 01:33:59'),
(16, 5, '2017-09-23 01:33:59', '2017-09-23 01:33:59'),
(17, 2, '2017-09-23 01:37:15', '2017-09-23 01:37:15'),
(17, 5, '2017-09-23 01:37:15', '2017-09-23 01:37:15'),
(18, 5, '2017-09-26 10:08:11', '2017-09-26 10:08:11'),
(19, 2, '2017-09-26 10:49:06', '2017-09-26 10:49:06'),
(19, 5, '2017-09-26 10:49:06', '2017-09-26 10:49:06'),
(34, 2, NULL, NULL),
(34, 5, NULL, NULL),
(35, 2, '2017-09-15 00:07:08', '2017-09-15 00:07:08'),
(35, 5, '2017-09-15 04:51:13', '2017-09-15 04:51:13'),
(36, 2, '2017-09-15 05:20:11', '2017-09-15 05:20:11');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('USER','ADMIN PARTNERSHIP','ADMIN') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `lastlogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `registerdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `codeuser`, `email`, `password`, `remember_token`, `status`, `lastlogin`, `registerdate`, `created_at`, `updated_at`) VALUES
(3, 'Nava Gia Ginasta', 'USR001', 'nava@gmail.com', '$2y$10$wnEhcBgMsVXUz8hyw/uZ3Ot6Br2ggdo6hGCzFmARKAJqkjeA3us02', 'BzoWYeV61ln6I3VtMCN8L3CZX5ryhS4Q4zPm0VwOCjHBh8CoJiQjgBiXYVkb', 'ADMIN', '2017-09-27 07:02:23', '0000-00-00 00:00:00', '2017-08-19 05:52:17', '2017-08-19 05:52:17'),
(10, 'admin@cubic.co.id', 'USR002', 'admin@cubic.co.id', '$2y$10$p5BM.1OpC08eews3rBFJEuuS46ifZ/2Ez1q7Ofkko3H/XNEb5el/2', 'LwlflPD1uq86fXbMo0hLo5xT0Qdb6In01v6bPpEuKT14B4YOi06EnG67c3p5', 'ADMIN', '2017-09-01 08:06:49', '2017-09-01 08:06:49', '2017-08-23 01:20:18', '2017-09-01 08:06:49'),
(13, 'user', 'USR004', 'user@gmail.com', '$2y$10$6eo7DNUnVkVvAm5rUAcweOnkHiL9qSVcFL2jFn4m22FheL6AitaCe', 'i8kVlQdwVhhafztZkq3ndWeCPTpx1CIjkW1MPwZc3Ch84eR2Bvzq4NDNckyf', 'USER', '2017-09-27 06:04:24', '2017-09-01 09:14:09', '2017-09-01 09:14:09', '2017-09-01 09:14:09'),
(14, 'Nava Gia', 'USR005', 'nava2@gmail.com', '$2y$10$Ek.5jo6WrLaOkqs/iuuL7OuiIvVOj5m6W0Sf.pePtUt9b65eujvpW', NULL, 'USER', '2017-09-12 06:43:03', '2017-09-12 06:43:03', '2017-09-12 06:43:03', '2017-09-12 06:43:03'),
(24, 'Nava Gia Ginasta', '', 'navagiaginasta@gmail.com', '', '7wIeIXGxwDrR3o1Dkbh9LdcdJPllgdA0ojulgdH5OsQ73yf5kzvdQQVXX1r8', 'USER', '2017-09-20 18:02:02', '0000-00-00 00:00:00', '2017-09-20 01:22:38', '2017-09-20 01:22:38'),
(25, 'Nava Gia', '', 'navagiaginasta222@gmail.com', '$2y$10$FIwI9eEs6KLDZjznv0DEpepySp5XreSN5qcEN9bjmEXarHQUXIWjK', 'h8Mih29GIpSXujHWOVGdElRbgrm0zeYE7Z36VKEZCqWIjqiGFYimqqQrT6qq', 'USER', '2017-09-20 09:04:34', '2017-09-20 01:36:54', '2017-09-20 01:36:54', '2017-09-20 01:36:54'),
(26, 'Nava Gia Ginasta', '', 'nava.webdevelopers@gmail.com', '', '33pfOCHRRyIL8Pw2Cio9cHAJqsm4I0EoTCEPVoLYwjKPCHoDYlawxn1XD9dL', 'USER', '2017-09-26 08:18:04', '0000-00-00 00:00:00', '2017-09-20 01:41:49', '2017-09-20 01:41:49'),
(28, 'DEmpat SatuD', '', 'd4.ti.1d.polpos@gmail.com', '', 'JKuVtfdkYohGkl7uz30Yoo442mSNJx27FpJNihRCKOWfFAxzxhLx0ApKVL40', 'USER', '2017-09-24 12:07:52', '0000-00-00 00:00:00', '2017-09-20 09:04:20', '2017-09-20 09:04:20'),
(31, 'a', 'USR006', 'a@gmail.com', '$2y$10$t9lY6QdTG6Cn738YlHD5a.2QPf.6XNmCyDBqvEsSEUo2jmCwB2.CO', NULL, 'USER', '2017-09-24 05:44:23', '2017-09-24 05:44:23', '2017-09-24 05:44:23', '2017-09-24 05:44:23');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `adminspartnerships`
--
ALTER TABLE `adminspartnerships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `billingcompanyservices`
--
ALTER TABLE `billingcompanyservices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `bookingspaces`
--
ALTER TABLE `bookingspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `bookingtours`
--
ALTER TABLE `bookingtours`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `companyservices`
--
ALTER TABLE `companyservices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `countrys`
--
ALTER TABLE `countrys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mediacompanyservices`
--
ALTER TABLE `mediacompanyservices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
-- AUTO_INCREMENT for table `paymentmethodes`
--
ALTER TABLE `paymentmethodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
