-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2017 at 09:03 AM
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
(3, 'Nava Gia Ginasta', 'USR001', 'navagiaginasta@gmail.com', '$2y$10$wnEhcBgMsVXUz8hyw/uZ3Ot6Br2ggdo6hGCzFmARKAJqkjeA3us02', 'rYdqeDADiRNJDY5ZdaZ6igj6xHAoLzenoB2llPxpQ6xUDvMZIJTFaSu5vQKE', 'ADMIN', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-08-19 05:52:17', '2017-08-19 05:52:17'),
(10, 'admin@cubic.co.id', 'USR002', 'admin@cubic.co.id', '$2y$10$p5BM.1OpC08eews3rBFJEuuS46ifZ/2Ez1q7Ofkko3H/XNEb5el/2', 'LwlflPD1uq86fXbMo0hLo5xT0Qdb6In01v6bPpEuKT14B4YOi06EnG67c3p5', 'ADMIN', '', '', '2017-09-01 15:06:49', '2017-09-01 15:06:49', '2017-08-23 01:20:18', '2017-09-01 08:06:49'),
(12, 'Ketut', 'USR003', 'ketut@gmail.com', '$2y$10$VVC1BynwwOBdggGvlBwUouSG1EGLdqL/U/c7wBdgCR4YEDycaTAcq', 'AF6mHZVoTbzlfUpAqR2fxouCn1aKMMgsM4f2aqId1v8bsPgaGFyb8AcWq3Ks', 'ADMIN PARTNERSHIP', '', '', '2017-09-01 16:23:40', '2017-09-01 16:23:40', '2017-08-23 02:19:58', '2017-09-01 09:23:41'),
(13, 'user', 'USR004', 'user@gmail.com', '$2y$10$6eo7DNUnVkVvAm5rUAcweOnkHiL9qSVcFL2jFn4m22FheL6AitaCe', 'yQvDXJb7JW8RDF66WXcrOQxoGmPBYYfwD9pWiDbs8y4RFAtc6sw97cRomfz8', 'USER', '', '', '2017-09-01 16:14:09', '2017-09-01 16:14:09', '2017-09-01 09:14:09', '2017-09-01 09:14:09');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
