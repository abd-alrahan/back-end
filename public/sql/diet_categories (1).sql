-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27 مايو 2024 الساعة 13:41
-- إصدار الخادم: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sports`
--

-- --------------------------------------------------------

--
-- بنية الجدول `diet_categories`
--

CREATE TABLE  IF NOT EXISTS `diet_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `diet_categories`
--

INSERT INTO `diet_categories` ( `name`, `created_at`, `updated_at`, `image`) VALUES
( 'weight loss diet', '2024-05-27 07:40:22', '2024-05-27 07:40:22', 'category_diet\\بشكل عام.jpg'),
( 'Muscly Building diet', '2024-05-27 07:41:02', '2024-05-27 07:41:02', 'category_diet\\عضلات.png'),
( 'flexibiliy diet', '2024-05-27 07:41:16', '2024-05-27 07:41:16', 'category_diet\\فليكسيبيلتي.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diet_categories`
--
-- ALTER TABLE `diet_categories`
--   ADD PRIMARY KEY (`id`);

-- --
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diet_categories`
--
-- ALTER TABLE `diet_categories`
--   MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
-- COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
