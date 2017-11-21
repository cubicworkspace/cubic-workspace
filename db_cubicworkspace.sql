-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 21, 2017 at 03:10 AM
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
  `codecategoryadmin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codeadmin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `codecategoryadmin`, `codeadmin`, `phone`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(44, 'Nava', 'admin@admin.com', '$2y$10$lVlJenLkWQapOjB93f604u.dJihIfupp1uaOql0KRoVlRAPdTL0OS', '', '', '', '', 'Y', 'lf9oXHqu5hQl0E9MAFc2aFIPEChs9i6LfPemifGKb6ileII3fQaYhf8Gmh4q', '2017-11-08 05:39:07', '2017-11-08 05:39:07');

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
(12, 'Special Packages1', 'COS001', '7', '', 10, 10, 0, 0, 0, 'Infromation', '2017-10-03 14:16:47', 'Y', '2017-10-03 07:16:47', '2017-10-03 07:16:47'),
(13, 'Special Packages2', 'COS002', '9', '', 100, 100, 0, 0, 0, 'Infromation', '2017-10-03 14:18:13', 'Y', '2017-10-03 07:18:13', '2017-10-03 07:18:13'),
(14, 'Special Packages3', 'COS003', '7', '', 10, 10, 0, 0, 0, 'Information', '2017-10-03 14:19:17', 'Y', '2017-10-03 07:19:17', '2017-10-03 07:19:17'),
(15, 'Special Packages 4', '', '7', '', 100, 100, 0, 0, 0, 'Information', '2017-11-06 06:58:17', 'Y', '2017-10-03 07:40:45', '2017-11-06 02:58:17'),
(18, 'Special Packages5', 'COS005', '9', '', 10, 10, 0, 0, 0, 'Special Packages5', '2017-10-22 12:47:53', 'Y', '2017-10-22 05:47:54', '2017-10-22 05:47:54'),
(20, 'Individual desk', 'COS006', '7', '', 10, 10, 0, 0, 0, 'Individual desk', '2017-11-07 11:16:34', 'Y', '2017-11-07 07:16:34', '2017-11-07 07:16:34'),
(21, 'Team tables', 'COS007', '7', '', 2, 2, 0, 0, 0, 'Team tables', '2017-11-07 11:17:25', 'Y', '2017-11-07 07:17:25', '2017-11-07 07:17:25');

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
(1, 'CBS001', '20', '10', '', '2', '34', '1', '57479', 'Nava Gia Ginasta', 'navagiaginasta@gmail.com', '-', '-', 0, 0, 10000000, 70000000, '2017-10-05', '2017-11-12', 0, 0, '', '', 'N', '2017-10-05 07:09:34', 'Y', '2017-10-05 00:09:34', '2017-10-19 01:38:34'),
(3, 'CBS002', '20', '10', '', '2', '34', '1', '60740', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '-', '-', 0, 0, 10000000, 30000000, '2017-10-01', '2017-11-04', 0, 0, '', '76967.PNG', 'Y', '2017-10-05 07:15:10', 'Y', '2017-10-05 00:15:10', '2017-10-27 00:46:02'),
(4, 'CBS003', '20', '10', '', '2', '32', '2', '63480', 'Krishna YF', 'nantayp@gmail.com', '-', '-', 0, 0, 10000000, 0, '2017-10-13', '2017-10-13', 0, 0, '', '', 'N', '2017-10-13 07:27:53', 'Y', '2017-10-13 00:27:53', '2017-10-24 22:45:10'),
(5, 'CBS004', '21', '9', '', '4', '34', '2', '13262', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '085720148795', '-', 0, 0, 20000000, 240000000, '2017-11-06', '2017-11-06', 0, 0, '', '', 'N', '2017-11-06 06:59:13', 'Y', '2017-10-13 01:33:58', '2017-11-06 02:59:13'),
(6, 'CBS005', '23', '8', '', '5', '34', '2', '42715', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '-', '-', 0, 0, 3500000, 7000000, '2017-10-19', '2017-10-21', 0, 0, '', '', 'N', '2017-10-19 06:25:11', 'Y', '2017-10-18 23:25:11', '2017-10-19 00:08:37'),
(10, 'CBS006', '35', '7', '', '2', '37', '1', '68810', 'Krisnanta Yudha Pratama', 'the_gunheal@yahoo.co.id', '085740172949', 'bandung', 0, 0, 3500000, 3500000, '2017-11-09', '2017-11-10', 0, 0, '', '', 'N', '2017-11-07 12:24:20', 'N', '2017-11-07 08:24:20', '2017-11-07 08:24:20'),
(11, 'CBS007', '35', '7', '', '2', '38', '1', '23645', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '0', '-', 0, 0, 3500000, 3500000, '2017-11-07', '2017-11-08', 0, 0, '', '', 'N', '2017-11-07 12:33:57', 'N', '2017-11-07 08:33:57', '2017-11-07 08:33:57'),
(12, 'CBS008', '35', '7', '', '2', '38', '1', '23645', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '0', '-', 0, 0, 3500000, 3500000, '2017-11-07', '2017-11-08', 0, 0, '', '', 'N', '2017-11-07 12:34:42', 'N', '2017-11-07 08:34:42', '2017-11-07 08:34:42'),
(13, 'CBS009', '35', '7', '', '2', '38', '1', '91352', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '0', '-', 0, 0, 3500000, 10500000, '2017-11-07', '2017-11-10', 0, 0, '', '', 'N', '2017-11-07 12:35:32', 'N', '2017-11-07 08:35:32', '2017-11-07 08:35:32'),
(14, 'CBS010', '35', '7', '', '2', '38', '1', '64462', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '-', '-', 0, 0, 3500000, 35000000, '2017-11-07', '2017-11-17', 0, 0, '', '', 'N', '2017-11-07 12:40:57', 'N', '2017-11-07 08:40:57', '2017-11-07 08:40:57'),
(15, 'CBS011', '35', '7', '', '2', '38', '1', '64462', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '-', '-', 0, 0, 3500000, 35000000, '2017-11-07', '2017-11-17', 0, 0, '', '', 'N', '2017-11-07 12:41:30', 'N', '2017-11-07 08:41:30', '2017-11-07 08:41:30'),
(16, 'CBS012', '35', '7', '', '2', '38', '1', '64462', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '-', '-', 0, 0, 3500000, 35000000, '2017-11-07', '2017-11-17', 0, 0, '', '', 'N', '2017-11-07 12:41:54', 'N', '2017-11-07 08:41:54', '2017-11-07 08:41:54'),
(17, 'CBS013', '23', '7', '', '4', '38', '2', '76227', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '0', '0', 0, 0, 4000000, 4000000, '2017-11-07', '2017-11-08', 0, 0, '', '', 'N', '2017-11-07 12:51:38', 'N', '2017-11-07 08:51:38', '2017-11-07 08:51:38'),
(18, 'CBS014', '23', '7', '', '4', '38', '2', '23881', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '0', '0', 0, 0, 4000000, 4000000, '2017-11-07', '2017-11-08', 0, 0, '', '', 'N', '2017-11-07 13:02:10', 'N', '2017-11-07 09:02:10', '2017-11-07 09:02:10'),
(19, 'CBS014', '23', '7', '', '4', '38', '2', '23881', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '0', '0', 0, 0, 4000000, 4000000, '2017-11-07', '2017-11-08', 0, 0, '', '', 'N', '2017-11-07 13:02:10', 'N', '2017-11-07 09:02:10', '2017-11-07 09:02:10'),
(20, 'CBS015', '22', '8', '', '6', '37', '2', '61584', 'Krisnanta Yudha Pratama', 'the_gunheal@yahoo.co.id', '085740172949', 'bandung', 0, 0, 750000, 2250000, '2017-11-08', '2017-11-11', 0, 0, '', '', 'N', '2017-11-07 13:06:59', 'N', '2017-11-07 09:06:59', '2017-11-07 09:06:59'),
(21, 'CBS016', '34', '7', '', '2', '38', '2', '45276', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '0877777111', 'Bandung', 0, 0, 650000, 10400000, '2017-11-08', '2017-11-24', 0, 0, '', '', 'N', '2017-11-08 03:17:28', 'N', '2017-11-08 00:17:28', '2017-11-08 00:17:28'),
(22, 'CBS017', '34', '7', '', '2', '43', '2', '79622', 'Nava Gia Ginasta', 'navagiaginasta@gmail.com', '-', '-', 0, 0, 650000, 5200000, '2017-11-14', '2017-11-22', 0, 0, '', '67907.png', 'N', '2017-11-14 15:32:16', 'N', '2017-11-14 08:32:16', '2017-11-16 19:56:15'),
(23, 'CBS018', '35', '7', '', '2', '43', '2', '86735', 'Nava Gia', 'navagiaginasta@gmail.com', '0223111000', '-', 0, 0, 3500000, 101500000, '2017-11-01', '2017-11-30', 0, 0, '', '50300.jpg', 'Y', '2017-11-19 19:35:18', 'N', '2017-11-19 12:35:18', '2017-11-19 12:39:11'),
(24, 'CBS019', '34', '7', '', '2', '43', '2', '72421', 'Nava Gia', 'navagiaginasta@gmail.com', '0223111000', '-', 0, 0, 650000, 650000, '2017-11-01', '2017-11-02', 0, 0, '', '', 'N', '2017-11-19 19:47:53', 'N', '2017-11-19 12:47:53', '2017-11-19 12:47:53'),
(25, 'CBS020', '34', '7', '', '2', '38', '2', '92037', 'Nava Gia Ginasta', 'nava.webdevelopers@gmail.com', '0223111000', '-', 0, 0, 650000, 97500000, '2017-02-01', '2017-07-01', 0, 0, '', '', 'N', '2017-11-20 15:31:39', 'N', '2017-11-20 08:31:39', '2017-11-20 08:31:39');

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
(25, 35, 7, 'admin@cubic.co.id', '0223111000', '2017-11-30', '00:00', 'N', '2017-11-20 01:18:04', '2017-11-20 01:18:04'),
(26, 35, 7, 'admin@cubic.co.id', '0223111000', '2017-10-01', '00:12', 'N', '2017-11-20 01:28:31', '2017-11-20 01:28:31'),
(27, 35, 7, 'admin@cubic.co.idzzzz', '22111', '2017-12-01', '02:22', 'N', '2017-11-20 01:29:07', '2017-11-20 01:29:07'),
(28, 34, 7, 'admin@cubic.co.id', '0223111000', '1970-01-01', '10:20', 'N', '2017-11-20 08:05:30', '2017-11-20 08:05:30'),
(29, 35, 7, 'navagiaginasta@m.com', '0223111000', '2017-11-20', '10:11', 'N', '2017-11-20 08:10:00', '2017-11-20 08:10:00');

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
(4, 'Solo', '4', 'CIT003', 'solo', 'Y', '2017-09-26 09:28:34', '2017-09-26 09:28:57');

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
(1, 'Workshare', '14675.png', '20171119194241.png', 'workspace@gmail.com', '087877693842', '-', 'Jl. Naripan no.53 Bandung', '-6.9202047, 107.6138110', '<p>Workshare adalah platform yang menghubungkan rekan kerja dan ruang kerja di seluruh dunia.</p>', 'Workshare mulai beroperasi pada bulan November 2017.', '<p>Workspace merupakan platfroom penyediakan coworking space, office room, meeting room, dan virtual office dengan kemudahan sistem booking dan pembayaran.</p>', '- Menjadi salah satu perusahaan agen ruang kerja coworking terbaik di Indonesia\r\n- Berkontribusi untuk meningkatkan pertumbuhan dan perkembangan wirausaha\r\ndi Indonesia', '- Berikan kenyamanan dan kenyamanan bagi pengusaha dan pemilik tempat kerja\r\n- Membawa pelayanan terbaik\r\n- Bangun ekosistem bisnis yang membuat pengusaha indonesia berkembang', '<p>faq</p>', '2018-11-19', 'Y', 'navagiaginasta@gmail.com | 087820033395', '2017-08-21 17:00:00', '2017-11-19 12:42:41');

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
(7, 'Workspace . 53', 'COP001', '3', '', 'workspace53_1.jpg', '46122.jpg', 'workspace53bdg@gmail.com', '087877693842', '0', 'Jl. Naripan no.53', '-6.920577, 107.615890', '2', '3', '1', '-', '-', '-', '-', '<p>1</p>', '1', '2017-11-19 19:33:45', 'Y', '2017-09-12 00:37:53', '2017-11-19 12:33:45'),
(8, 'Postcard', 'COP002', '3', '', 'Postcard.jpg', '47616.jpg', 'postcard@gmail.com', '087820033395', '87820033395', 'Jl. WR Supratman no.29', '-6.9057208,107.6088645', '2', '3', '-', '-', '-', '-', '-', '<p>-</p>', '-', '2017-11-06 09:25:53', 'Y', '2017-09-12 06:32:41', '2017-11-06 05:25:53'),
(16, 'CO & CO', 'COP003', '3', '19', '35011.jpg', '23570.png', 'coco@gmail.com', '0223111000', '', 'Bandung', '-6.897141, 107.613727', '2', '3', '', '', '', '', '', '', '', '2017-11-19 19:31:32', 'Y', '2017-11-15 01:54:52', '2017-11-19 12:31:32'),
(17, 'Bandung Digital Valley (BDV)', 'COP004', '3', '', '97279.jpg', '33699.jpg', 'bdv@gmail.com', '0223111000', '-', 'Gegerkalong', '-6.870076, 107.586559', '2', '3', 'Profile', 'History', 'Description', 'Visi', 'Misi', '<p>-</p>', 'Information', '2017-11-19 19:29:13', 'Y', '2017-11-19 12:24:32', '2017-11-19 12:29:13');

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
  `statusbooking` enum('PERBULAN','PERHARI') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PERBULAN',
  `registerdate` datetime NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companyservices`
--

INSERT INTO `companyservices` (`id`, `name`, `codecompanyservices`, `codecompanypartnership`, `codetagservices`, `codeservices`, `codecity`, `quota`, `price`, `quotauser`, `information`, `statusbooking`, `registerdate`, `status`, `created_at`, `updated_at`) VALUES
(20, 'Postcard Cafe 1', 'COS001', '8', '2', '4', '3', 1, 10000000, 20, 'Office room 1', 'PERBULAN', '2017-11-07 10:59:19', 'Y', '2017-10-03 07:16:47', '2017-11-07 06:59:19'),
(21, 'Team tables', 'COS002', '8', '5', '4', '3', 4, 22000000, 5, 'Information', 'PERBULAN', '2017-11-07 11:10:30', 'Y', '2017-10-03 07:18:13', '2017-11-07 07:10:30'),
(22, 'Individual', 'COS003', '17', '5', '6', '2', 10, 750000, 10, 'Individual', 'PERBULAN', '2017-11-19 19:45:06', 'Y', '2017-10-03 07:19:17', '2017-11-19 12:45:06'),
(23, 'Workspace 53', 'COS004', '7', '5', '4', '3', 2, 4000000, 10, 'Office room 1', 'PERBULAN', '2017-11-07 11:10:14', 'Y', '2017-10-03 07:40:45', '2017-11-07 07:10:14'),
(33, 'Postcard Cafe 2', 'COS005', '17', '2', '4', '3', 1, 5500000, 9, 'Office room 2', 'PERBULAN', '2017-11-19 19:44:31', 'Y', '2017-10-22 05:47:53', '2017-11-19 12:44:31'),
(34, 'Individual desk', 'COS006', '7', '5', '2', '3', 10, 650000, 10, 'Individual desk', 'PERBULAN', '2017-11-07 11:16:34', 'Y', '2017-11-07 07:16:34', '2017-11-07 07:16:34'),
(35, 'Team tables', 'COS007', '7', '2', '2', '3', 2, 3500000, 10, 'Team tables', 'PERHARI', '2017-11-07 11:17:25', 'Y', '2017-11-07 07:17:25', '2017-11-07 07:17:25');

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
(2, 'MEDIA COMPANY SERVICES 1', 20, 7, '20171027075821.jpg', 'Y', '2017-11-06 06:54:54', '2017-11-06 02:54:54'),
(3, 'MEDIA COMPANY SERVICES3', 22, 7, '20171027075811.jpg', 'Y', '2017-10-27 07:58:11', '2017-10-27 00:58:11'),
(4, 'MEDIA COMPANY SERVICES3', 21, 7, '20171027075628.jpg', 'Y', '2017-10-27 07:56:28', '2017-10-27 00:56:28'),
(5, 'MEDIA COMPANY SERVICES4', 23, 8, '20170920170731.jpg', 'Y', '2017-10-03 16:00:35', '2017-10-03 09:00:35'),
(6, 'Special Packages5', 35, 17, '20171119192741.jpg', 'Y', '2017-11-19 19:27:41', '2017-11-19 12:27:41'),
(7, 'Bandung Digital Valley (BDV)', 20, 17, '20171119192639.jpg', 'Y', '2017-11-19 12:26:39', '2017-11-19 12:26:39');

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
(1, '13', 'user@gmail.com', 'poltekpos', '0101', '087820033395', 'Sarijadi Bandung', '68256.png', '-', '-', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y', NULL, '2017-10-03 04:35:50'),
(2, 'CMB001', '', 'poltek', '2017-12-13', '23232323', 'srwrwrwrwrwrwwrrwrw', '45494.PNG', 'qqqqqqqqqqqqqqqqqq', 'qrrrrrrrrrrrrrrrrrr', '2017-09-26 16:13:44', '2017-09-26 16:13:44', 'Y', '2017-09-26 09:13:22', '2017-09-26 09:13:44'),
(3, '32', 'nantayp@gmail.com', 'Cubic', '10/04/2017', '085740172949', 'Antapani', '17301.PNG', '-', '-', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y', '2017-10-03 21:53:34', '2017-10-03 22:18:38'),
(4, 'USR008', 'ketut95@gmail.com', 'Poltekpos', '10/05/2017', '0871', '-', '71696.PNG', '-', '-', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y', '2017-10-04 22:20:01', '2017-10-04 22:20:01'),
(5, '38', 'nava.webdevelopers@gmail.com', '-', '2017-10-05 07:04:44', '-', '-', '11694.PNG', '-', '-', '2017-10-05 07:04:44', '2017-10-05 07:04:44', 'N', '2017-10-05 00:04:44', '2017-11-07 23:38:56'),
(6, '35', 'd4.ti.1d.polpos@gmail.com', '-', '2017-10-05 07:20:47', '-', '-', '13287.jpg', '-', '-', '2017-10-05 07:20:47', '2017-10-05 07:20:47', 'N', '2017-10-05 00:20:47', '2017-10-05 00:22:40'),
(7, '', 'the_gunheal@yahoo.co.id', '-', '2017-11-07 12:11:05', '-', '-', '', '-', '-', '2017-11-07 12:11:05', '2017-11-07 12:11:05', 'N', '2017-11-07 08:11:05', '2017-11-07 08:11:05'),
(8, '', 'the_gunheal@yahoo.co.id', '-', '2017-11-07 12:17:14', '-', '-', '', '-', '-', '2017-11-07 12:17:14', '2017-11-07 12:17:14', 'N', '2017-11-07 08:17:14', '2017-11-07 08:17:14'),
(9, '', 'nava.webdevelopers@gmail.com', '-', '2017-11-07 12:19:50', '-', '-', '', '-', '-', '2017-11-07 12:19:50', '2017-11-07 12:19:50', 'N', '2017-11-07 08:19:50', '2017-11-07 08:19:50'),
(10, '43', 'navagiaginasta@gmail.com', '-', '2017-11-07 13:25:14', '087820033395', '-', '', '-', '-', '2017-11-07 13:25:14', '2017-11-07 13:25:14', 'N', '2017-11-07 09:25:14', '2017-11-16 19:55:45'),
(11, '', 'navagiaginasta@gmail.com', '-', '2017-11-07 13:39:21', '-', '-', '', '-', '-', '2017-11-07 13:39:21', '2017-11-07 13:39:21', 'N', '2017-11-07 09:39:21', '2017-11-07 09:39:21'),
(12, '', 'nantayp@gmail.com', '-', '2017-11-07 13:39:43', '-', '-', '', '-', '-', '2017-11-07 13:39:43', '2017-11-07 13:39:43', 'N', '2017-11-07 09:39:43', '2017-11-07 09:39:43'),
(13, '', 'navagiaginasta@gmail.com', '-', '2017-11-07 13:41:14', '-', '-', '', '-', '-', '2017-11-07 13:41:14', '2017-11-07 13:41:14', 'N', '2017-11-07 09:41:14', '2017-11-07 09:41:14'),
(14, '', 'intandamay30@gmail.com', '-', '2017-11-07 13:53:53', '-', '-', '', '-', '-', '2017-11-07 13:53:53', '2017-11-07 13:53:53', 'N', '2017-11-07 09:53:53', '2017-11-07 09:53:53'),
(15, '', 'navagiaginasta@gmail.com', '-', '2017-11-08 02:21:12', '-', '-', '', '-', '-', '2017-11-08 02:21:12', '2017-11-08 02:21:12', 'N', '2017-11-07 23:21:12', '2017-11-07 23:21:12'),
(16, '', 'ketutadiwijanarko@gmail.com', '-', '2017-11-08 02:29:20', '-', '-', '', '-', '-', '2017-11-08 02:29:20', '2017-11-08 02:29:20', 'N', '2017-11-07 23:29:20', '2017-11-07 23:29:20'),
(17, 'USR009', 'agus1@gmail.com', 'bandung', '11/08/2017', '0988686868', 'bdg', '25901.jpg', '-', '-', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y', '2017-11-08 06:53:04', '2017-11-08 06:53:04'),
(18, '', 'nava.webdevelopers@gmail.com', '-', '2017-11-09 08:03:11', '-', '-', '', '-', '-', '2017-11-09 08:03:11', '2017-11-09 08:03:11', 'N', '2017-11-09 01:03:11', '2017-11-09 01:03:11'),
(19, '', 'nava.webdevelopers@gmail.com', '-', '2017-11-14 10:27:07', '-', '-', '', '-', '-', '2017-11-14 10:27:07', '2017-11-14 10:27:07', 'N', '2017-11-14 03:27:07', '2017-11-14 03:27:07'),
(20, 'USR010', 'agg@gmail.com', 'n', '11/15/2017', '0878200033395', 'bdg', '27097.png', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y', '2017-11-15 00:58:17', '2017-11-15 00:58:17');

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

INSERT INTO `partners` (`id`, `name`, `email`, `password`, `phone`, `image`, `address`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(10, 'cubic', 'admin@cubic.co.id', '$2y$10$ZXsGCKQN1xxlWdcklg.sguZuPelPA/BKPf8Xteu1TBSJ4N.JiNC/K', '', '', '', 'Y', 'jBBGP5j8HHNg61cSJxfkJRC2FF1Nezx787iO2nTGTKDgvNVcBO5gcLBg1wVq', '2017-11-09 02:10:07', '2017-11-09 02:10:07'),
(19, 'PT.NAVA WEB', 'navaweb@gmail.com', '$2y$10$gvvPXiBFwJ93LqTmKbc50OeIGsrldZe6AFPLFJVKGAUlfNC5pae2G', '087820033395', '66140.jpg', 'Bandung', 'Y', 'xnC3palY6QqeHwikIbX4X2opfiNeNRGSw2rII7XV9mlfscf3knTn2fdYloHX', '2017-11-15 01:54:52', '2017-11-15 01:54:52');

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
(22, 37, '10203541947227202', 'facebook', '2017-11-07 08:17:14', '2017-11-07 08:17:14'),
(23, 38, '1403911603062601', 'facebook', '2017-11-07 08:19:49', '2017-11-07 08:19:49'),
(28, 42, '110546214135486559339', 'google', '2017-11-07 09:53:52', '2017-11-07 09:53:52'),
(29, 43, '112227416377852186762', 'google', '2017-11-07 23:21:12', '2017-11-07 23:21:12'),
(30, 44, '109368980972916730456', 'google', '2017-11-07 23:29:20', '2017-11-07 23:29:20'),
(31, 38, '1399194833534278', 'facebook', '2017-11-09 01:03:11', '2017-11-09 01:03:11'),
(32, 38, '104059642855903038031', 'google', '2017-11-14 03:27:07', '2017-11-14 03:27:07');

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
(3, 'Nava Gia Ginasta', 'USR001', 'nava@gmail.com', '$2y$10$wnEhcBgMsVXUz8hyw/uZ3Ot6Br2ggdo6hGCzFmARKAJqkjeA3us02', 'rxKYZoXUxP6HDLsOsn8JEMhl5ql8qqqgWkzcH0W76bXf8ZB7YU2ienF0eapq', 'ADMIN', '2017-11-08 02:47:01', '0000-00-00 00:00:00', '2017-08-19 05:52:17', '2017-08-19 05:52:17'),
(10, 'admin@cubic.co.id', 'USR002', 'admin@cubic.co.id', '$2y$10$p5BM.1OpC08eews3rBFJEuuS46ifZ/2Ez1q7Ofkko3H/XNEb5el/2', 'WtC4qaBiDuM0keWc6n2aph7aMO26a0Eg2jvciyLTjv4wkedcYehrIbH5Af96', 'ADMIN', '2017-11-07 12:45:00', '2017-09-01 08:06:49', '2017-08-23 01:20:18', '2017-09-01 08:06:49'),
(13, 'user', 'USR004', 'user@gmail.com', '$2y$10$6eo7DNUnVkVvAm5rUAcweOnkHiL9qSVcFL2jFn4m22FheL6AitaCe', 'GWkIMUtLS10rFBKAn1EZ1HowVlohVv4avA9l9kxkH6QzSGkF7dzdkJgG68Jn', 'USER', '2017-10-04 04:52:02', '2017-09-01 09:14:09', '2017-09-01 09:14:09', '2017-09-01 09:14:09'),
(32, 'Krishna YF', 'USR007', 'nantayp@gmail.com', '$2y$10$EZSG9HQ2mNI5HwboTsaVyO0Ggqc3QwR.UogzMa.f8xRHLraleEKJm', 'onb1KtexBBMSz4RWO60ZOtDRuOJWHiuodCrOSgV1refGG0d6o9OazO5F0qyC', 'USER', '2017-10-13 07:43:03', '2017-10-03 21:53:34', '2017-10-03 21:53:34', '2017-10-03 21:53:34'),
(33, 'Ketut Adi Wijanarko', 'USR008', 'ketut95@gmail.com', '$2y$10$DT9ZwUayejyOIaX.ijFIHu1NqJGs2j8.SWIAJDCDdGKtByn4CrZYS', NULL, 'USER', '2017-10-04 22:20:00', '2017-10-04 22:20:00', '2017-10-04 22:20:01', '2017-10-04 22:20:01'),
(37, 'Krisnanta Yudha Pratama', '', 'the_gunheal@yahoo.co.id', '', 'JQUJkZBiw49By0ucpAlBhNSI0MceYWze2cHHtRDjZSrlWKx4ssccv87XXN30', 'USER', '2017-11-07 13:10:14', '0000-00-00 00:00:00', '2017-11-07 08:17:14', '2017-11-07 08:17:14'),
(38, 'Nava Gia Ginasta', '', 'nava.webdevelopers@gmail.com', '', 'boFFROe5H48WZfJF8s16lz9ow7OXnDK5nxiqyVUNgdfSnR0uYVODBziDg81F', 'USER', '2017-11-20 16:09:31', '0000-00-00 00:00:00', '2017-11-07 08:19:49', '2017-11-07 08:19:49'),
(42, 'Intan Damayanti', '', 'intandamay30@gmail.com', '', 'roJ78X5JQZtMZOJtY2DnHRIRcEIiZFs9liV8gI2rj3S1RBqnUFUDBxtgTxwR', 'USER', '2017-11-08 02:43:30', '0000-00-00 00:00:00', '2017-11-07 09:53:52', '2017-11-07 09:53:52'),
(43, 'Nava Gia', '', 'navagiaginasta@gmail.com', '', 'Y7wRScpUIEJTb7jTm1kLnarZ7MPAmFbZmarTvPEC8A60k48cCr1NEcVIKJBi', 'USER', '2017-11-19 19:41:12', '0000-00-00 00:00:00', '2017-11-07 23:21:12', '2017-11-16 19:55:28'),
(44, 'Ketut Adi', '', 'ketutadiwijanarko@gmail.com', '', NULL, 'USER', '2017-11-08 02:29:20', '0000-00-00 00:00:00', '2017-11-07 23:29:20', '2017-11-07 23:29:20'),
(45, 'agus', 'USR009', 'agus1@gmail.com', '$2y$10$4XgBTzbFgOB85rs6kFR7HeAwt0C1/dtGoULHdA9FETCqJsina.Nra', '8m2zgoEMiHaPHHoqYchLCREr03dxKHWPUk7qOgR3CPw9KMMmqC4Djsp1XZis', 'USER', '2017-11-08 14:33:46', '2017-11-08 06:53:04', '2017-11-08 06:53:04', '2017-11-08 06:53:04'),
(46, 'agus', 'USR010', 'agg@gmail.com', '$2y$10$vJk.agOQIyUU.d/juwUXB.plVIBegQc1M4Tc0YCdwCL7n2I2aR706', NULL, 'USER', '2017-11-15 00:58:17', '2017-11-15 00:58:17', '2017-11-15 00:58:17', '2017-11-15 00:58:17');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `billingcompanyservices`
--
ALTER TABLE `billingcompanyservices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `bookingspaces`
--
ALTER TABLE `bookingspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `bookingtours`
--
ALTER TABLE `bookingtours`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
