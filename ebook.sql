-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 11, 2024 at 03:12 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `ebooks`
--

CREATE TABLE `ebooks` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` text COLLATE utf8mb4_unicode_ci,
  `file_url` text COLLATE utf8mb4_unicode_ci,
  `embed_code` text COLLATE utf8mb4_unicode_ci,
  `isbn` text COLLATE utf8mb4_unicode_ci,
  `price` text COLLATE utf8mb4_unicode_ci,
  `buy_url` text COLLATE utf8mb4_unicode_ci,
  `publication_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_edition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_pages` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_origin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed` int UNSIGNED NOT NULL DEFAULT '0',
  `download` int NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ebooks`
--

INSERT INTO `ebooks` (`id`, `user_id`, `slug`, `file_type`, `file_url`, `embed_code`, `isbn`, `price`, `buy_url`, `publication_year`, `book_edition`, `number_of_pages`, `book_language`, `country_origin`, `viewed`, `download`, `password`, `is_featured`, `is_private`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'spider-man-far-from-home', 'upload', NULL, NULL, '978-3-16-148410-0', '320', NULL, '2019', NULL, NULL, NULL, NULL, 5278, 10, 'admin123', 1, 0, 1, NULL, '2019-07-22 08:02:20', '2024-11-07 05:11:56'),
(2, 1, '101-animals-stories', 'upload', NULL, NULL, '978-3-18-15453-0', '260', NULL, '2019', NULL, NULL, NULL, NULL, 1287, 100, NULL, 1, 0, 1, NULL, '2019-07-23 01:58:50', '2022-01-21 00:30:53'),
(3, 1, 'the-eternals', 'upload', NULL, NULL, '896-3-16-458236-0', '340', '#', '2012', NULL, NULL, NULL, NULL, 821, 65, NULL, 1, 0, 1, NULL, '2019-07-23 04:45:38', '2022-03-07 18:59:05'),
(4, 1, 'mighty-thor', 'upload', NULL, NULL, '652-3-16-789123-0', '130', '#', '2015', NULL, NULL, NULL, NULL, 1008, 51, NULL, 1, 0, 1, NULL, '2019-07-23 04:49:48', '2022-03-07 01:30:22'),
(5, 1, 'secret-wars', 'upload', NULL, NULL, '652-3-16-895623-0', '390', '#', '2016', NULL, NULL, NULL, NULL, 850, 66, NULL, 1, 0, 1, NULL, '2019-07-23 04:54:02', '2024-11-11 10:09:57'),
(6, 1, 'batman-last-knight-on-earth', 'upload', NULL, NULL, '123-3-16-452178-0', '380', NULL, '2019', NULL, NULL, NULL, NULL, 772, 65, NULL, 0, 0, 1, NULL, '2019-07-23 05:00:29', '2021-03-22 06:09:42'),
(7, 1, 'star-wars-darth-vader-dark-lord-of-the-sith', 'upload', NULL, NULL, '753-3-16-951235-0', '360', NULL, '2017', NULL, NULL, NULL, NULL, 678, 43, NULL, 0, 0, 1, NULL, '2019-07-23 05:03:07', '2022-07-20 23:56:35'),
(8, 1, 'batman-damned', 'upload', NULL, NULL, '014-3-16-569874-0', '240', NULL, '2019', NULL, NULL, NULL, NULL, 566, 48, NULL, 0, 0, 1, NULL, '2019-07-23 05:10:29', '2022-01-21 00:33:09'),
(9, 1, 'article-5', 'upload', NULL, NULL, '987-3-16-152036-0', '100', '#', '2012', NULL, NULL, NULL, NULL, 923, 51, NULL, 0, 0, 1, NULL, '2019-07-23 05:23:10', '2024-11-07 05:12:19'),
(10, 1, 'my-first-book-of-patterns-capital-letters', 'upload', NULL, NULL, '983-3-16-452178-0', '200', '#', '2018', NULL, NULL, NULL, NULL, 437, 23, NULL, 0, 0, 1, NULL, '2019-07-23 05:31:55', '2021-03-23 05:26:29'),
(11, 1, 'famous-indian-recipes', 'upload', NULL, NULL, '980-3-16-452103-0', '280', '#', '2012', NULL, NULL, NULL, NULL, 310, 29, NULL, 0, 0, 1, NULL, '2019-07-23 05:45:22', '2021-03-22 09:59:30'),
(12, 1, 'the-complete-indian-diet', 'upload', NULL, NULL, '963-3-16-452178-0', '20', NULL, '2018', NULL, NULL, NULL, NULL, 187, 11, NULL, 0, 0, 1, NULL, '2019-07-23 05:45:33', '2022-01-21 01:26:58'),
(13, 1, 'the-keto-reset-diet', 'upload', NULL, NULL, '023-3-16-7412365-0', '20', NULL, '2019', NULL, NULL, NULL, NULL, 244, 22, NULL, 0, 0, 1, NULL, '2019-07-23 05:57:45', '2021-03-23 07:35:43'),
(14, 1, 'how-not-to-die', 'upload', NULL, NULL, '852-3-16-475203-0', '60', NULL, '2019', NULL, NULL, NULL, NULL, 452, 7, NULL, 0, 0, 1, NULL, '2019-07-23 05:57:54', '2022-01-21 01:27:21'),
(15, 1, 'php-the-complete-reference', 'upload', NULL, NULL, '578-3-16-852014-0', '200', NULL, '2018', NULL, NULL, NULL, NULL, 1119, 62, NULL, 0, 0, 1, NULL, '2019-07-23 06:12:25', '2021-03-23 01:36:03'),
(16, 1, 'c++-programming-in-easy-steps-5th-edition', 'upload', NULL, NULL, '530-3-16-852364-0', '60', NULL, '2017', NULL, NULL, NULL, NULL, 2032, 39, NULL, 0, 0, 1, NULL, '2019-07-23 06:12:31', '2021-03-23 01:33:30'),
(17, 1, 'the-lean-startup', 'upload', NULL, NULL, '852-3-16-452178-0', '80', NULL, '2018', NULL, NULL, NULL, NULL, 710, 56, NULL, 0, 0, 1, NULL, '2019-07-23 06:45:23', '2022-01-21 01:28:14'),
(18, 1, 'business-adventures', 'upload', NULL, NULL, '530-3-16-452178-0', '240', NULL, '2016', NULL, NULL, NULL, NULL, 308, 27, NULL, 0, 0, 1, NULL, '2019-07-23 06:48:15', '2022-01-21 01:28:38'),
(19, 1, 'the-politics-of-women-s-interests', 'upload', NULL, NULL, '123-3-16-452178-0', '130', NULL, '2006', NULL, NULL, NULL, NULL, 170, 13, NULL, 0, 0, 1, NULL, '2019-07-23 06:51:32', '2022-01-21 01:29:52'),
(20, 1, 'the-one-minute-manager', 'upload', NULL, NULL, '123-3-16-452178-0', '320', NULL, '2015', NULL, NULL, NULL, NULL, 254, 18, NULL, 0, 0, 1, NULL, '2019-07-23 06:59:02', '2022-01-21 01:30:10'),
(21, 1, 'target-manager', 'upload', NULL, NULL, '123-3-16-452178-0', '50', NULL, '2018', NULL, NULL, NULL, NULL, 248, 19, NULL, 0, 0, 1, NULL, '2019-07-23 07:02:38', '2022-01-21 01:30:33'),
(22, 1, 'making-lifestyle-changes-10-steps-to-help-you-succeed', 'upload', NULL, NULL, 'sadfsafdfdsg', '60', '#', '2019', NULL, NULL, NULL, NULL, 3749, 117, NULL, 0, 0, 1, NULL, '2019-07-23 07:12:51', '2022-02-22 20:41:45'),
(23, 1, 'dark-money', 'upload', NULL, NULL, '123-3-16-452178-0', '140', NULL, '2016', NULL, NULL, NULL, NULL, 237, 13, NULL, 0, 0, 1, NULL, '2019-07-23 07:23:22', '2022-07-14 19:30:04'),
(24, 1, 'success-through-a-positive', 'upload', NULL, NULL, '123-3-16-452178-0', '90', NULL, '2018', NULL, NULL, NULL, NULL, 230, 13, NULL, 0, 0, 1, NULL, '2019-07-23 07:24:01', '2022-01-21 01:41:16'),
(25, 1, 'steve-jobs', 'upload', NULL, NULL, '123-3-16-452178-0', '60', NULL, '2016', NULL, NULL, NULL, NULL, 315, 21, NULL, 0, 0, 1, NULL, '2019-07-23 08:09:08', '2022-01-21 01:31:57'),
(26, 1, 'einstein', 'upload', NULL, NULL, '123-3-16-452178-0', '380', NULL, '2012', NULL, NULL, NULL, NULL, 312, 16, NULL, 0, 0, 1, NULL, '2019-07-23 08:15:45', '2022-07-20 00:42:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ebooks`
--
ALTER TABLE `ebooks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ebooks_slug_unique` (`slug`),
  ADD KEY `ebooks_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ebooks`
--
ALTER TABLE `ebooks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ebooks`
--
ALTER TABLE `ebooks`
  ADD CONSTRAINT `ebooks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
