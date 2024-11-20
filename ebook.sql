-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 20, 2024 at 02:45 PM
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
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'TClTKzjmIaYpIUwdxs84brSb5fBtbUo5', 1, '2024-11-06 08:30:20', '2024-11-06 03:30:20', '2024-11-06 03:30:20'),
(3, 3, 'GS35k90GTllj0lQ6cie02uPtvPoqRA9Y', 1, '2024-11-07 07:15:45', '2024-11-07 02:15:45', '2024-11-07 02:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` text COLLATE utf8mb4_unicode_ci,
  `causer_id` int DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `batch_uuid` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `event`, `causer_id`, `causer_type`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'user', 'login', 1, 'Modules\\User\\Entities\\User', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\"}}', NULL, '2024-11-07 01:52:17', '2024-11-07 01:52:17'),
(2, 'category', 'created', 1, 'Modules\\Category\\Entities\\Category', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"slug\":\"sci-fi\",\"is_searchable\":true,\"is_active\":true,\"updated_at\":\"2024-11-07T06:57:13.000000Z\",\"created_at\":\"2024-11-07T06:57:13.000000Z\",\"id\":1,\"name\":\"sci-fi\",\"translations\":[{\"locale\":\"en\",\"name\":\"sci-fi\",\"category_id\":1,\"id\":1}]},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 01:57:13', '2024-11-07 01:57:13'),
(3, 'ebook', 'updated', 1, 'Modules\\Ebook\\Entities\\Ebook', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"user_id\":\"1\",\"slug\":\"laudantium-deserunt\",\"file_type\":\"upload\",\"file_url\":null,\"embed_code\":null,\"isbn\":\"210\",\"price\":\"417\",\"buy_url\":\"Enim amet nihil mai\",\"publication_year\":\"1977\",\"book_edition\":\"In adipisci doloremq\",\"number_of_pages\":\"607\",\"book_language\":\"Vel minim totam inve\",\"country_origin\":\"Aut delectus sint\",\"viewed\":0,\"download\":0,\"password\":\"Iure id non laborios\",\"is_featured\":true,\"is_private\":false,\"is_active\":true,\"deleted_at\":null,\"created_at\":\"2024-11-07T06:59:29.000000Z\",\"updated_at\":\"2024-11-07T07:01:07.000000Z\",\"title\":\"Laudantium deserunt\",\"description\":\"<p>Quis qui doloremque<\\/p>\",\"short_description\":\"Est incidunt et nih\",\"publisher\":\"Paki Harrington\",\"key_word\":\"Et aut dolore tempor\",\"target_reader\":\"Tempor quidem conseq\",\"translations\":[{\"id\":1,\"ebook_id\":1,\"locale\":\"en\",\"title\":\"Laudantium deserunt\",\"description\":\"<p>Quis qui doloremque<\\/p>\",\"short_description\":\"Est incidunt et nih\",\"publisher\":\"Paki Harrington\",\"key_word\":\"Et aut dolore tempor\",\"target_reader\":\"Tempor quidem conseq\"}],\"meta\":{\"id\":1,\"entity_type\":\"Modules\\\\Ebook\\\\Entities\\\\Ebook\",\"entity_id\":1,\"created_at\":\"2024-11-07T06:59:29.000000Z\",\"updated_at\":\"2024-11-07T06:59:29.000000Z\",\"meta_title\":null,\"meta_keywords\":[],\"meta_description\":null,\"translations\":[{\"id\":1,\"meta_data_id\":1,\"locale\":\"en\",\"meta_title\":null,\"meta_keywords\":[],\"meta_description\":null}]}},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 02:01:07', '2024-11-07 02:01:07'),
(4, 'ebook', 'updated', 1, 'Modules\\Ebook\\Entities\\Ebook', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"user_id\":\"1\",\"slug\":\"laudantium-deserunt\",\"file_type\":\"upload\",\"file_url\":null,\"embed_code\":null,\"isbn\":\"210\",\"price\":\"417\",\"buy_url\":\"Enim amet nihil mai\",\"publication_year\":\"1977\",\"book_edition\":\"In adipisci doloremq\",\"number_of_pages\":\"607\",\"book_language\":\"Vel minim totam inve\",\"country_origin\":\"Aut delectus sint\",\"viewed\":3,\"download\":0,\"password\":\"Iure id non laborios\",\"is_featured\":true,\"is_private\":false,\"is_active\":true,\"deleted_at\":null,\"created_at\":\"2024-11-07T06:59:29.000000Z\",\"updated_at\":\"2024-11-07T07:05:30.000000Z\",\"title\":\"Laudantium deserunt\",\"description\":\"<p>Quis qui doloremque<\\/p>\",\"short_description\":\"Est incidunt et nih\",\"publisher\":\"Paki Harrington\",\"key_word\":\"Et aut dolore tempor\",\"target_reader\":\"Tempor quidem conseq\",\"translations\":[{\"id\":1,\"ebook_id\":1,\"locale\":\"en\",\"title\":\"Laudantium deserunt\",\"description\":\"<p>Quis qui doloremque<\\/p>\",\"short_description\":\"Est incidunt et nih\",\"publisher\":\"Paki Harrington\",\"key_word\":\"Et aut dolore tempor\",\"target_reader\":\"Tempor quidem conseq\"}],\"meta\":{\"id\":1,\"entity_type\":\"Modules\\\\Ebook\\\\Entities\\\\Ebook\",\"entity_id\":1,\"created_at\":\"2024-11-07T06:59:29.000000Z\",\"updated_at\":\"2024-11-07T06:59:29.000000Z\",\"meta_title\":null,\"meta_keywords\":[],\"meta_description\":null,\"translations\":[{\"id\":1,\"meta_data_id\":1,\"locale\":\"en\",\"meta_title\":null,\"meta_keywords\":[],\"meta_description\":null}]}},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 02:06:29', '2024-11-07 02:06:29'),
(5, 'ebook', 'updated', 1, 'Modules\\Ebook\\Entities\\Ebook', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"user_id\":\"1\",\"slug\":\"laudantium-deserunt\",\"file_type\":\"upload\",\"file_url\":null,\"embed_code\":null,\"isbn\":\"210\",\"price\":\"417\",\"buy_url\":\"Enim amet nihil mai\",\"publication_year\":\"1977\",\"book_edition\":\"In adipisci doloremq\",\"number_of_pages\":\"607\",\"book_language\":\"Vel minim totam inve\",\"country_origin\":\"Aut delectus sint\",\"viewed\":3,\"download\":0,\"password\":\"Iure id non laborios\",\"is_featured\":true,\"is_private\":true,\"is_active\":true,\"deleted_at\":null,\"created_at\":\"2024-11-07T06:59:29.000000Z\",\"updated_at\":\"2024-11-07T07:06:41.000000Z\",\"title\":\"Laudantium deserunt\",\"description\":\"<p>Quis qui doloremque<\\/p>\",\"short_description\":\"Est incidunt et nih\",\"publisher\":\"Paki Harrington\",\"key_word\":\"Et aut dolore tempor\",\"target_reader\":\"Tempor quidem conseq\",\"translations\":[{\"id\":1,\"ebook_id\":1,\"locale\":\"en\",\"title\":\"Laudantium deserunt\",\"description\":\"<p>Quis qui doloremque<\\/p>\",\"short_description\":\"Est incidunt et nih\",\"publisher\":\"Paki Harrington\",\"key_word\":\"Et aut dolore tempor\",\"target_reader\":\"Tempor quidem conseq\"}],\"meta\":{\"id\":1,\"entity_type\":\"Modules\\\\Ebook\\\\Entities\\\\Ebook\",\"entity_id\":1,\"created_at\":\"2024-11-07T06:59:29.000000Z\",\"updated_at\":\"2024-11-07T06:59:29.000000Z\",\"meta_title\":null,\"meta_keywords\":[],\"meta_description\":null,\"translations\":[{\"id\":1,\"meta_data_id\":1,\"locale\":\"en\",\"meta_title\":null,\"meta_keywords\":[],\"meta_description\":null}]}},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 02:06:41', '2024-11-07 02:06:41'),
(6, 'ebook', 'updated', 1, 'Modules\\Ebook\\Entities\\Ebook', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"user_id\":\"1\",\"slug\":\"laudantium-deserunt\",\"file_type\":\"upload\",\"file_url\":null,\"embed_code\":null,\"isbn\":\"210\",\"price\":\"417\",\"buy_url\":\"Enim amet nihil mai\",\"publication_year\":\"1977\",\"book_edition\":\"In adipisci doloremq\",\"number_of_pages\":\"607\",\"book_language\":\"Vel minim totam inve\",\"country_origin\":\"Aut delectus sint\",\"viewed\":5,\"download\":0,\"password\":null,\"is_featured\":true,\"is_private\":false,\"is_active\":true,\"deleted_at\":null,\"created_at\":\"2024-11-07T06:59:29.000000Z\",\"updated_at\":\"2024-11-07T07:07:39.000000Z\",\"title\":\"Laudantium deserunt\",\"description\":\"<p>Quis qui doloremque<\\/p>\",\"short_description\":\"Est incidunt et nih\",\"publisher\":\"Paki Harrington\",\"key_word\":\"Et aut dolore tempor\",\"target_reader\":\"Tempor quidem conseq\",\"translations\":[{\"id\":1,\"ebook_id\":1,\"locale\":\"en\",\"title\":\"Laudantium deserunt\",\"description\":\"<p>Quis qui doloremque<\\/p>\",\"short_description\":\"Est incidunt et nih\",\"publisher\":\"Paki Harrington\",\"key_word\":\"Et aut dolore tempor\",\"target_reader\":\"Tempor quidem conseq\"}],\"meta\":{\"id\":1,\"entity_type\":\"Modules\\\\Ebook\\\\Entities\\\\Ebook\",\"entity_id\":1,\"created_at\":\"2024-11-07T06:59:29.000000Z\",\"updated_at\":\"2024-11-07T06:59:29.000000Z\",\"meta_title\":null,\"meta_keywords\":[],\"meta_description\":null,\"translations\":[{\"id\":1,\"meta_data_id\":1,\"locale\":\"en\",\"meta_title\":null,\"meta_keywords\":[],\"meta_description\":null}]}},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 02:07:39', '2024-11-07 02:07:39'),
(7, 'role', 'updated', 4, 'Modules\\User\\Entities\\Role', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":4,\"slug\":\"user-XVit148Y\",\"name\":\"User\",\"permissions\":{\"admin.activity.index\":false,\"admin.ebooks.index\":false,\"admin.ebooks.create\":false,\"admin.ebooks.edit\":false,\"admin.ebooks.destroy\":false},\"created_at\":\"2024-11-06T09:00:17.000000Z\",\"updated_at\":\"2024-11-07T07:11:37.000000Z\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 02:11:37', '2024-11-07 02:11:37'),
(8, 'role', 'updated', 2, 'Modules\\User\\Entities\\Role', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":2,\"slug\":\"user\",\"name\":\"User\",\"permissions\":{\"admin.ebooks.index\":false,\"admin.ebooks.create\":false,\"admin.ebooks.edit\":false,\"admin.ebooks.destroy\":false},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T07:13:27.000000Z\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 02:13:27', '2024-11-07 02:13:27'),
(9, 'user', 'created', 3, 'Modules\\User\\Entities\\User', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"first_name\":\"Sufyan\",\"last_name\":\"Khanzada\",\"username\":\"sufyan\",\"email\":\"sufyan@gmail.com\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"permissions\":[],\"updated_at\":\"2024-11-07T07:15:45.000000Z\",\"created_at\":\"2024-11-07T07:15:45.000000Z\",\"id\":3,\"full_name\":\"Sufyan Khanzada\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 02:15:45', '2024-11-07 02:15:45'),
(10, 'user', 'login', 3, 'Modules\\User\\Entities\\User', NULL, 3, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":3,\"first_name\":\"Sufyan\",\"last_name\":\"Khanzada\",\"username\":\"sufyan\",\"email\":\"sufyan@gmail.com\",\"permissions\":[],\"last_login\":\"2024-11-07T07:16:25.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-07T07:15:45.000000Z\",\"updated_at\":\"2024-11-07T07:16:25.000000Z\",\"full_name\":\"Sufyan Khanzada\"},\"causer\":{\"id\":3,\"first_name\":\"Sufyan\",\"last_name\":\"Khanzada\",\"username\":\"sufyan\",\"email\":\"sufyan@gmail.com\",\"permissions\":[],\"last_login\":\"2024-11-07T07:16:25.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-07T07:15:45.000000Z\",\"updated_at\":\"2024-11-07T07:16:25.000000Z\",\"full_name\":\"Sufyan Khanzada\"}}', NULL, '2024-11-07 02:16:25', '2024-11-07 02:16:25'),
(11, 'user', 'updated', 3, 'Modules\\User\\Entities\\User', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":3,\"first_name\":\"Sufyan\",\"last_name\":\"Khanzada\",\"username\":\"sufyan\",\"email\":\"sufyan@gmail.com\",\"permissions\":{\"admin.ebooks.index\":false,\"admin.ebooks.create\":false,\"admin.ebooks.edit\":false,\"admin.ebooks.destroy\":false},\"last_login\":\"2024-11-07T07:16:25.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-07T07:15:45.000000Z\",\"updated_at\":\"2024-11-07T07:17:30.000000Z\",\"full_name\":\"Sufyan Khanzada\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 02:17:30', '2024-11-07 02:17:30'),
(12, 'role', 'updated', 2, 'Modules\\User\\Entities\\Role', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":2,\"slug\":\"user\",\"name\":\"User\",\"permissions\":{\"admin.ebooks.index\":false,\"admin.ebooks.create\":false,\"admin.ebooks.edit\":false,\"admin.ebooks.destroy\":false},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T07:13:27.000000Z\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 02:23:36', '2024-11-07 02:23:36'),
(13, 'user', 'updated', 3, 'Modules\\User\\Entities\\User', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":3,\"first_name\":\"Sufyan\",\"last_name\":\"Khanzada\",\"username\":\"sufyan\",\"email\":\"sufyan@gmail.com\",\"permissions\":{\"admin.ebooks.index\":false,\"admin.ebooks.create\":false,\"admin.ebooks.edit\":false,\"admin.ebooks.destroy\":false},\"last_login\":\"2024-11-07T07:16:25.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-07T07:15:45.000000Z\",\"updated_at\":\"2024-11-07T07:17:30.000000Z\",\"full_name\":\"Sufyan Khanzada\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 02:23:47', '2024-11-07 02:23:47'),
(14, 'role', 'updated', 2, 'Modules\\User\\Entities\\Role', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":2,\"slug\":\"user\",\"name\":\"User\",\"permissions\":{\"admin.activity.index\":false,\"admin.authors.index\":false,\"admin.authors.create\":false,\"admin.authors.edit\":false,\"admin.authors.destroy\":false,\"admin.categories.index\":false,\"admin.categories.create\":false,\"admin.categories.edit\":false,\"admin.categories.destroy\":false,\"admin.comment.index\":false,\"admin.comment.create\":false,\"admin.comment.edit\":false,\"admin.comment.destroy\":false,\"admin.ebooks.index\":false,\"admin.ebooks.create\":false,\"admin.ebooks.edit\":false,\"admin.ebooks.destroy\":false,\"admin.reportedebooks.index\":false,\"admin.reportedebooks.destroy\":false,\"admin.files.index\":false,\"admin.files.create\":false,\"admin.files.destroy\":false,\"admin.menus.index\":false,\"admin.menus.create\":false,\"admin.menus.edit\":false,\"admin.menus.destroy\":false,\"admin.menu_items.index\":false,\"admin.menu_items.create\":false,\"admin.menu_items.edit\":false,\"admin.menu_items.destroy\":false,\"admin.pages.index\":false,\"admin.pages.create\":false,\"admin.pages.edit\":false,\"admin.pages.destroy\":false,\"admin.reviews.index\":false,\"admin.reviews.edit\":false,\"admin.reviews.destroy\":false,\"admin.settings.edit\":false,\"admin.sliders.index\":false,\"admin.sliders.create\":false,\"admin.sliders.edit\":false,\"admin.sliders.destroy\":false,\"admin.translations.index\":false,\"admin.translations.edit\":false,\"admin.users.index\":false,\"admin.users.create\":false,\"admin.users.edit\":false,\"admin.users.destroy\":false,\"admin.roles.index\":false,\"admin.roles.create\":false,\"admin.roles.edit\":false,\"admin.roles.destroy\":false,\"admin.cynoebook.edit\":false},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T07:24:49.000000Z\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 02:24:49', '2024-11-07 02:24:49'),
(15, 'user', 'updated', 3, 'Modules\\User\\Entities\\User', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":3,\"first_name\":\"Sufyan\",\"last_name\":\"Khanzada\",\"username\":\"sufyan\",\"email\":\"sufyan@gmail.com\",\"permissions\":{\"admin.activity.index\":false,\"admin.authors.index\":false,\"admin.authors.create\":false,\"admin.authors.edit\":false,\"admin.authors.destroy\":false,\"admin.categories.index\":false,\"admin.categories.create\":false,\"admin.categories.edit\":false,\"admin.categories.destroy\":false,\"admin.comment.index\":false,\"admin.comment.create\":false,\"admin.comment.edit\":false,\"admin.comment.destroy\":false,\"admin.ebooks.index\":false,\"admin.ebooks.create\":false,\"admin.ebooks.edit\":false,\"admin.ebooks.destroy\":false,\"admin.reportedebooks.index\":false,\"admin.reportedebooks.destroy\":false,\"admin.files.index\":false,\"admin.files.create\":false,\"admin.files.destroy\":false,\"admin.menus.index\":false,\"admin.menus.create\":false,\"admin.menus.edit\":false,\"admin.menus.destroy\":false,\"admin.menu_items.index\":false,\"admin.menu_items.create\":false,\"admin.menu_items.edit\":false,\"admin.menu_items.destroy\":false,\"admin.pages.index\":false,\"admin.pages.create\":false,\"admin.pages.edit\":false,\"admin.pages.destroy\":false,\"admin.reviews.index\":false,\"admin.reviews.edit\":false,\"admin.reviews.destroy\":false,\"admin.settings.edit\":false,\"admin.sliders.index\":false,\"admin.sliders.create\":false,\"admin.sliders.edit\":false,\"admin.sliders.destroy\":false,\"admin.translations.index\":false,\"admin.translations.edit\":false,\"admin.users.index\":false,\"admin.users.create\":false,\"admin.users.edit\":false,\"admin.users.destroy\":false,\"admin.roles.index\":false,\"admin.roles.create\":false,\"admin.roles.edit\":false,\"admin.roles.destroy\":false,\"admin.cynoebook.edit\":false},\"last_login\":\"2024-11-07T07:16:25.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-07T07:15:45.000000Z\",\"updated_at\":\"2024-11-07T07:25:15.000000Z\",\"full_name\":\"Sufyan Khanzada\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 02:25:15', '2024-11-07 02:25:15');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `event`, `causer_id`, `causer_type`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(16, 'user', 'updated', 3, 'Modules\\User\\Entities\\User', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":3,\"first_name\":\"Sufyan\",\"last_name\":\"Khanzada\",\"username\":\"sufyan\",\"email\":\"sufyan@gmail.com\",\"permissions\":[],\"last_login\":\"2024-11-07T07:16:25.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-07T07:15:45.000000Z\",\"updated_at\":\"2024-11-07T07:25:36.000000Z\",\"full_name\":\"Sufyan Khanzada\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 02:25:36', '2024-11-07 02:25:36'),
(17, 'role', 'updated', 2, 'Modules\\User\\Entities\\Role', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":2,\"slug\":\"user\",\"name\":\"User\",\"permissions\":[],\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T07:25:42.000000Z\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 02:25:42', '2024-11-07 02:25:42'),
(18, 'setting', 'updated', NULL, NULL, NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 05:08:16', '2024-11-07 05:08:16'),
(19, 'setting', 'updated', NULL, NULL, NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-07T06:52:17.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-07T06:52:17.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-07 05:08:57', '2024-11-07 05:08:57'),
(20, 'user', 'login', 1, 'Modules\\User\\Entities\\User', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-11T09:54:59.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-11T09:54:59.000000Z\",\"full_name\":\"Huzaifa Shamoon\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-11T09:54:59.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-11T09:54:59.000000Z\",\"full_name\":\"Huzaifa Shamoon\"}}', NULL, '2024-11-11 04:54:59', '2024-11-11 04:54:59'),
(21, 'user', 'login', 1, 'Modules\\User\\Entities\\User', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-11T15:44:56.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-11T15:44:56.000000Z\",\"full_name\":\"Huzaifa Shamoon\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-11T15:44:56.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-11T15:44:56.000000Z\",\"full_name\":\"Huzaifa Shamoon\"}}', NULL, '2024-11-11 10:44:56', '2024-11-11 10:44:56'),
(22, 'setting', 'updated', NULL, NULL, NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-11T15:44:56.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-11T15:44:56.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-11T15:44:56.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-11T15:44:56.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-11 10:45:20', '2024-11-11 10:45:20'),
(23, 'setting', 'updated', NULL, NULL, NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-11T15:44:56.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-11T15:44:56.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-11T15:44:56.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-11T15:44:56.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-11 10:51:48', '2024-11-11 10:51:48'),
(24, 'setting', 'updated', NULL, NULL, NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-11T15:44:56.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-11T15:44:56.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-11T15:44:56.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-11T15:44:56.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-11 10:53:16', '2024-11-11 10:53:16'),
(25, 'user', 'login', 1, 'Modules\\User\\Entities\\User', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-11T15:59:16.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-11T15:59:16.000000Z\",\"full_name\":\"Huzaifa Shamoon\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-11T15:59:16.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-11T15:59:16.000000Z\",\"full_name\":\"Huzaifa Shamoon\"}}', NULL, '2024-11-11 10:59:16', '2024-11-11 10:59:16'),
(26, 'menu', 'updated', 1, 'Modules\\Menu\\Entities\\Menu', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"is_active\":true,\"created_at\":\"2019-07-23T04:40:47.000000Z\",\"updated_at\":\"2019-07-23T04:40:47.000000Z\",\"name\":\"Main Menu\",\"translations\":[{\"id\":1,\"menu_id\":1,\"locale\":\"en\",\"name\":\"Main Menu\"}]},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-11T15:59:16.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-11T15:59:16.000000Z\",\"full_name\":\"Huzaifa Shamoon\",\"roles\":[{\"id\":1,\"slug\":\"admin\",\"name\":\"Admin\",\"permissions\":{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true},\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\",\"pivot\":{\"user_id\":1,\"role_id\":1,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-06T08:30:20.000000Z\"}}]}}', NULL, '2024-11-11 11:00:20', '2024-11-11 11:00:20'),
(27, 'user', 'login', 1, 'Modules\\User\\Entities\\User', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-19T13:24:39.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-19T13:24:39.000000Z\",\"full_name\":\"Huzaifa Shamoon\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-19T13:24:39.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-19T13:24:39.000000Z\",\"full_name\":\"Huzaifa Shamoon\"}}', NULL, '2024-11-19 08:24:39', '2024-11-19 08:24:39'),
(28, 'user', 'login', 1, 'Modules\\User\\Entities\\User', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-20T06:57:35.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-20T06:57:35.000000Z\",\"full_name\":\"Huzaifa Shamoon\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-20T06:57:35.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-20T06:57:35.000000Z\",\"full_name\":\"Huzaifa Shamoon\"}}', NULL, '2024-11-20 01:57:35', '2024-11-20 01:57:35'),
(29, 'user', 'login', 1, 'Modules\\User\\Entities\\User', NULL, 1, 'Modules\\User\\Entities\\User', '{\"subject\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-20T13:15:27.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-20T13:15:27.000000Z\",\"full_name\":\"Huzaifa Shamoon\"},\"causer\":{\"id\":1,\"first_name\":\"Huzaifa\",\"last_name\":\"Shamoon\",\"username\":\"Admin\",\"email\":\"admin@gmail.com\",\"permissions\":null,\"last_login\":\"2024-11-20T13:15:27.000000Z\",\"about\":null,\"facebook\":null,\"twitter\":null,\"google\":null,\"instagram\":null,\"linkedin\":null,\"youtube\":null,\"created_at\":\"2024-11-06T08:30:20.000000Z\",\"updated_at\":\"2024-11-20T13:15:27.000000Z\",\"full_name\":\"Huzaifa Shamoon\"}}', NULL, '2024-11-20 08:15:27', '2024-11-20 08:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `user_id`, `slug`, `is_active`, `is_verified`, `created_at`, `updated_at`) VALUES
(1, 1, 'ricks-william', 1, 1, '2020-04-12 19:54:07', '2020-04-27 06:43:04'),
(3, 1, 'j-k', 1, 1, '2020-04-12 19:59:09', '2020-04-27 06:50:06'),
(4, 1, 'elizabeth', 1, 1, '2020-04-12 20:02:44', '2020-04-27 18:22:05'),
(5, 1, 'lucy -ellmann', 1, 1, '2020-04-12 23:34:05', '2020-04-27 18:22:49'),
(18, 1, 'william feaver', 1, 1, '2020-04-13 01:45:31', '2020-04-27 18:34:34'),
(27, 1, 'olivia-laing', 1, 1, '2020-04-13 01:45:33', '2020-04-27 18:41:02'),
(31, 1, 'nicholls-jr', 1, 1, '2020-04-17 00:09:25', '2020-04-27 18:41:44'),
(34, 1, 'niks-vags', 1, 1, '2020-04-29 07:01:56', '2021-11-13 01:49:43'),
(36, 1, 'edmundo-de-amicis', 1, 0, '2020-06-05 10:28:44', '2021-11-13 01:49:21'),
(41, 1, 'robert-t.-kiyosaki', 1, 1, '2020-12-05 15:53:34', '2021-11-13 01:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `author_translations`
--

CREATE TABLE `author_translations` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `author_translations`
--

INSERT INTO `author_translations` (`id`, `author_id`, `locale`, `name`, `description`) VALUES
(1, 1, 'en', 'Rick William', '<p>Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(2, 3, 'en', 'J. K.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(3, 4, 'en', 'Elizabeth', '<p>Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(4, 5, 'en', 'Lucy Ellmann', '<p>Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(17, 18, 'en', 'William Feaver', '<p>Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(26, 27, 'en', 'Olivia Laing', '<p>Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(30, 31, 'en', 'Nicholls JR', '<p>Lorem Ipsum is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(33, 34, 'en', 'Niks Vags', NULL),
(35, 36, 'en', 'Edmundo de Amicis', NULL),
(40, 41, 'en', 'Robert T. Kiyosaki', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `ebook_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `ebook_id`, `created_at`, `updated_at`) VALUES
(11, 1, 4, '2024-11-20 04:27:22', '2024-11-20 04:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int UNSIGNED DEFAULT NULL,
  `is_searchable` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `slug`, `position`, `is_searchable`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, 'articles', 0, 1, 1, '2019-07-22 07:42:13', '2020-04-15 07:50:00'),
(2, NULL, 'arts-music', 1, 1, 1, '2019-07-22 07:42:25', '2020-02-19 09:33:42'),
(4, NULL, 'biography', 8, 1, 1, '2019-07-22 23:51:32', '2020-02-19 09:33:42'),
(5, NULL, 'business-finance', 2, 1, 1, '2019-07-23 00:33:52', '2020-02-19 09:33:42'),
(6, NULL, 'comics-mangas', 14, 1, 1, '2019-07-23 00:43:23', '2020-02-19 09:33:42'),
(10, NULL, 'education', 20, 1, 1, '2019-07-23 00:43:48', '2020-02-19 09:33:42'),
(11, 5, 'accounting', 3, 0, 1, '2019-07-23 00:50:30', '2020-02-19 09:33:42'),
(12, 5, 'business-reference', 4, 0, 1, '2019-07-23 00:50:41', '2020-02-19 09:33:42'),
(13, 5, 'economics', 5, 0, 1, '2019-07-23 00:51:08', '2020-02-19 09:33:42'),
(14, 5, 'finance-investing', 6, 0, 1, '2019-07-23 00:51:37', '2020-02-19 09:33:42'),
(15, 5, 'marketing-sales', 7, 0, 1, '2019-07-23 00:51:46', '2020-02-19 09:33:42'),
(16, 4, 'historical', 9, 0, 1, '2019-07-23 00:56:51', '2020-02-19 09:33:42'),
(17, 4, 'literary', 10, 0, 1, '2019-07-23 00:57:12', '2020-02-19 09:33:42'),
(18, 4, 'political', 11, 0, 1, '2019-07-23 00:57:30', '2020-02-19 09:33:42'),
(19, 4, 'religious', 12, 0, 1, '2019-07-23 00:57:57', '2020-02-19 09:33:42'),
(20, 4, 'sports', 13, 0, 1, '2019-07-23 00:58:13', '2020-02-19 09:33:42'),
(21, 6, 'crime-mystery', 15, 0, 1, '2019-07-23 01:04:08', '2020-02-19 09:33:42'),
(22, 6, 'horror', 17, 0, 1, '2019-07-23 01:04:48', '2020-02-19 09:33:42'),
(23, 6, 'fantasy', 16, 0, 1, '2019-07-23 01:05:35', '2020-02-19 09:33:42'),
(24, 6, 'romance', 18, 0, 1, '2019-07-23 01:05:40', '2020-02-19 09:33:42'),
(25, 6, 'science-fiction', 19, 0, 1, '2019-07-23 01:05:49', '2020-02-19 09:33:42'),
(26, NULL, 'kids', 27, 1, 1, '2019-07-23 01:06:28', '2020-02-19 09:33:42'),
(27, NULL, 'periodicals', 23, 1, 1, '2019-07-23 01:07:03', '2020-02-19 09:33:42'),
(28, 26, 'animals', 28, 0, 1, '2019-07-23 01:07:22', '2020-02-19 09:33:42'),
(29, 26, 'school-tools', 31, 0, 1, '2019-07-23 01:07:35', '2020-02-19 09:33:42'),
(30, 26, 'technology', 32, 0, 1, '2019-07-23 01:07:41', '2020-02-19 09:33:42'),
(31, 26, 'my-family-my-feelings-my-friends', 30, 0, 1, '2019-07-23 01:07:56', '2020-02-19 09:33:42'),
(32, 27, 'automotive', 24, 0, 1, '2019-07-23 01:08:58', '2020-02-19 09:33:42'),
(34, 27, 'lifestyle', 25, 0, 1, '2019-07-23 01:09:33', '2020-02-19 09:33:42'),
(35, 27, 'women-s-interest', 26, 0, 1, '2019-07-23 01:10:08', '2020-02-19 09:33:42'),
(36, NULL, 'food-recipes', 21, 1, 1, '2019-07-23 01:12:23', '2020-02-19 09:33:42'),
(37, NULL, 'health-fitness', 22, 1, 1, '2019-07-23 01:12:50', '2020-02-19 09:33:42'),
(38, 26, 'early-learning', 29, 0, 1, '2019-07-23 01:49:46', '2020-02-19 09:33:42'),
(40, 26, 'my-feelings', 33, 0, 1, '2020-02-05 22:51:24', '2020-02-19 09:33:42'),
(41, 26, 'my-friends', 34, 0, 1, '2020-02-05 22:51:32', '2020-02-19 09:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Articles'),
(2, 2, 'en', 'Arts and Music'),
(4, 4, 'en', 'Biography and Memoir'),
(5, 5, 'en', 'Business and Finance'),
(6, 6, 'en', 'Comics and Graphic Novels'),
(10, 10, 'en', 'Education'),
(11, 11, 'en', 'Accounting'),
(12, 12, 'en', 'Business Reference'),
(13, 13, 'en', 'Economics'),
(14, 14, 'en', 'Finance and Investing'),
(15, 15, 'en', 'Marketing and Sales'),
(16, 16, 'en', 'Historical'),
(17, 17, 'en', 'Literary'),
(18, 18, 'en', 'Political'),
(19, 19, 'en', 'Religious'),
(20, 20, 'en', 'Sports'),
(21, 21, 'en', 'Crime and Mystery'),
(22, 22, 'en', 'Horror'),
(23, 23, 'en', 'Fantasy'),
(24, 24, 'en', 'Romance'),
(25, 25, 'en', 'Science Fiction'),
(26, 26, 'en', 'Kids'),
(27, 27, 'en', 'Periodicals'),
(28, 28, 'en', 'Animals'),
(29, 29, 'en', 'School Tools'),
(30, 30, 'en', 'Technology'),
(31, 31, 'en', 'My Family'),
(32, 32, 'en', 'Automotive'),
(34, 34, 'en', 'Lifestyle'),
(35, 35, 'en', 'Women\'s Interest'),
(36, 36, 'en', 'Food - Recipes'),
(37, 37, 'en', 'Health and Fitness'),
(38, 38, 'en', 'Early Learning'),
(40, 40, 'en', 'My Feelings'),
(41, 41, 'en', 'My Friends');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `commenter_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commenter_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `child_id` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, 1, '101-animals-stories', 'upload', NULL, NULL, '978-3-18-15453-0', '260', NULL, '2019', NULL, NULL, NULL, NULL, 1292, 100, NULL, 1, 0, 1, NULL, '2019-07-23 01:58:50', '2024-11-20 03:05:35'),
(3, 1, 'the-eternals', 'upload', NULL, NULL, '896-3-16-458236-0', '340', '#', '2012', NULL, NULL, NULL, NULL, 828, 65, NULL, 1, 0, 1, NULL, '2019-07-23 04:45:38', '2024-11-20 05:08:35'),
(4, 1, 'mighty-thor', 'upload', NULL, NULL, '652-3-16-789123-0', '130', '#', '2015', NULL, NULL, NULL, NULL, 1072, 51, NULL, 1, 0, 1, NULL, '2019-07-23 04:49:48', '2024-11-20 04:27:29'),
(5, 1, 'secret-wars', 'upload', NULL, NULL, '652-3-16-895623-0', '390', '#', '2016', NULL, NULL, NULL, NULL, 863, 66, NULL, 1, 0, 1, NULL, '2019-07-23 04:54:02', '2024-11-20 09:44:49'),
(6, 1, 'batman-last-knight-on-earth', 'upload', NULL, NULL, '123-3-16-452178-0', '380', NULL, '2019', NULL, NULL, NULL, NULL, 772, 65, NULL, 0, 0, 1, NULL, '2019-07-23 05:00:29', '2021-03-22 06:09:42'),
(7, 1, 'star-wars-darth-vader-dark-lord-of-the-sith', 'upload', NULL, NULL, '753-3-16-951235-0', '360', NULL, '2017', NULL, NULL, NULL, NULL, 678, 43, NULL, 0, 0, 1, NULL, '2019-07-23 05:03:07', '2022-07-20 23:56:35'),
(8, 1, 'batman-damned', 'upload', NULL, NULL, '014-3-16-569874-0', '240', NULL, '2019', NULL, NULL, NULL, NULL, 567, 48, NULL, 0, 0, 1, NULL, '2019-07-23 05:10:29', '2024-11-20 03:10:37'),
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
(22, 1, 'making-lifestyle-changes-10-steps-to-help-you-succeed', 'upload', NULL, NULL, 'sadfsafdfdsg', '60', '#', '2019', NULL, NULL, NULL, NULL, 3751, 117, NULL, 0, 0, 1, NULL, '2019-07-23 07:12:51', '2024-11-20 03:06:48'),
(23, 1, 'dark-money', 'upload', NULL, NULL, '123-3-16-452178-0', '140', NULL, '2016', NULL, NULL, NULL, NULL, 237, 13, NULL, 0, 0, 1, NULL, '2019-07-23 07:23:22', '2022-07-14 19:30:04'),
(24, 1, 'success-through-a-positive', 'upload', NULL, NULL, '123-3-16-452178-0', '90', NULL, '2018', NULL, NULL, NULL, NULL, 230, 13, NULL, 0, 0, 1, NULL, '2019-07-23 07:24:01', '2022-01-21 01:41:16'),
(25, 1, 'steve-jobs', 'upload', NULL, NULL, '123-3-16-452178-0', '60', NULL, '2016', NULL, NULL, NULL, NULL, 315, 21, NULL, 0, 0, 1, NULL, '2019-07-23 08:09:08', '2022-01-21 01:31:57'),
(26, 1, 'einstein', 'upload', NULL, NULL, '123-3-16-452178-0', '380', NULL, '2012', NULL, NULL, NULL, NULL, 312, 16, NULL, 0, 0, 1, NULL, '2019-07-23 08:15:45', '2022-07-20 00:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `ebook_authors`
--

CREATE TABLE `ebook_authors` (
  `ebook_id` int UNSIGNED NOT NULL,
  `author_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ebook_authors`
--

INSERT INTO `ebook_authors` (`ebook_id`, `author_id`) VALUES
(1, 1),
(5, 1),
(7, 1),
(10, 1),
(11, 1),
(13, 1),
(17, 1),
(25, 1),
(26, 1),
(7, 3),
(11, 3),
(17, 3),
(3, 4),
(10, 4),
(12, 4),
(20, 4),
(22, 4),
(26, 4),
(6, 5),
(8, 5),
(18, 5),
(21, 5),
(23, 5),
(25, 5),
(1, 18),
(8, 18),
(14, 18),
(15, 18),
(2, 27),
(4, 27),
(5, 27),
(9, 27),
(16, 27),
(9, 31),
(10, 31),
(14, 31),
(19, 31),
(20, 31),
(24, 31);

-- --------------------------------------------------------

--
-- Table structure for table `ebook_categories`
--

CREATE TABLE `ebook_categories` (
  `ebook_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ebook_categories`
--

INSERT INTO `ebook_categories` (`ebook_id`, `category_id`) VALUES
(9, 1),
(23, 4),
(24, 4),
(25, 4),
(26, 4),
(17, 5),
(18, 5),
(20, 5),
(21, 5),
(1, 6),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(15, 10),
(16, 10),
(17, 12),
(21, 13),
(18, 14),
(20, 15),
(25, 16),
(26, 16),
(24, 17),
(23, 18),
(4, 21),
(8, 22),
(3, 23),
(6, 23),
(1, 24),
(7, 25),
(2, 26),
(10, 26),
(19, 27),
(2, 28),
(10, 29),
(10, 30),
(22, 34),
(10, 35),
(19, 35),
(11, 36),
(12, 36),
(13, 36),
(13, 37),
(14, 37),
(2, 38);

-- --------------------------------------------------------

--
-- Table structure for table `ebook_downloads`
--

CREATE TABLE `ebook_downloads` (
  `id` int UNSIGNED NOT NULL,
  `ebook_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ebook_downloads`
--

INSERT INTO `ebook_downloads` (`id`, `ebook_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2022-02-25 22:40:02', '2022-02-25 22:40:02'),
(2, 23, 1, '2022-02-25 22:40:29', '2022-02-25 22:40:29');

-- --------------------------------------------------------

--
-- Table structure for table `ebook_translations`
--

CREATE TABLE `ebook_translations` (
  `id` int UNSIGNED NOT NULL,
  `ebook_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `publisher` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_word` text COLLATE utf8mb4_unicode_ci,
  `target_reader` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ebook_translations`
--

INSERT INTO `ebook_translations` (`id`, `ebook_id`, `locale`, `title`, `description`, `short_description`, `publisher`, `key_word`, `target_reader`) VALUES
(1, 1, 'en', 'Spider-Man: Far From Home', '<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Jon Watts', NULL, NULL),
(2, 2, 'en', '101 Animals Stories', '<p>101 Animals Stories- the ebook featuring zoological garden of animals- crocodiles, bears, fish, wolves, lions, tigers, monkeys and more&mdash;to delight children with their exciting tricks and adventures. Each story woven a simple language and supported with stately illustrations imparts valuable life-lessons.</p>', '101 Animals Stories- the ebook featuring zoological garden of animals', 'Dreamland Publications', NULL, NULL),
(3, 3, 'en', 'The Eternals', '<p>You are thousands of years old. You have amazing powers. You have watched civilizations rise and fall. So why does no one remember any of this? Bestselling Author Neil Gaiman (Marvel: 1602, Anansi Boys, Sandman) is joined by superstar artist John Romita Jr. (Amazing Spider-Man, Wolverine) to present a tale that will change the Eternals and the Marvel Universe forever! Collects Eternals (2006) #1-7.</p>', 'You are thousands of years old. You have amazing powers. You have watched civilizations rise and fall', 'John', NULL, NULL),
(4, 4, 'en', 'Mighty Thor', '<p>When Dr. Jane Foster lifts the mystic hammer Mjolnir, she is transformed into the Goddess of Thunder, the Mighty Thor! Her enemies are many as Asgard descends further into chaos, and unrest threatens to spread throughout the Ten Realms. Yet she wages her greatest battle against a far more personal foe: the cancer killing her mortal form. When Loki steps back into Thor\'s life, will it ease her troubles or only add to her pain? There\'s no such question about Malekith as he continues to fan the flames of a looming War of Realms &mdash; when he isn\'t wedding planning, that is! And as Asgard is torn apart, the skies will shake in one of the bloodiest battles of all time: It\'s Thor vs. Odin like never before!</p>', 'When Dr. Jane Foster lifts the mystic hammer Mjolnir, she is transformed into the Goddess of Thunder, the Mighty Thor!', 'Jason Aaron', NULL, NULL),
(5, 5, 'en', 'Secret Wars', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Jonathan Hickman', NULL, NULL),
(6, 6, 'en', 'Batman: Last Knight on Earth', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Scott Snyder & Greg Capullo', NULL, NULL),
(7, 7, 'en', 'Star Wars: Darth Vader: Dark Lord Of The Sith', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Charles Soule', NULL, NULL),
(8, 8, 'en', 'Batman: Damned', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Brian Azzarello & Lee Bermejo', NULL, NULL),
(9, 9, 'en', 'Article 5', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Kristen Simmons', NULL, NULL),
(10, 10, 'en', 'My First Book of Patterns Capital Letters', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Wonder House Books', NULL, NULL),
(11, 11, 'en', 'Famous Indian Recipes', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Alka Keswani & Deepak Keswani', NULL, NULL),
(12, 12, 'en', 'The Complete Indian Diet', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem', 'Charlie Mason', NULL, NULL),
(13, 13, 'en', 'The Keto Reset Diet', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Mark Sisson', NULL, NULL),
(14, 14, 'en', 'How Not To Die', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Michael Greger, Gene Stone', NULL, NULL),
(15, 15, 'en', 'PHP The Complete Reference', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Steven Holzner', NULL, NULL),
(16, 16, 'en', 'C++ Programming in easy steps, 5th Edition', '<p><strong>C++ Programming in easy steps, 5<sup>th</sup>&nbsp;Edition</strong>&nbsp;shows you&nbsp;how to program in the powerful C++ language. Now, in its fifth edition, this guide gives complete examples that illustrate each aspect with colourized source code.</p>\r\n<p><strong>C++ Programming in easy steps, 5<sup>th</sup>&nbsp;Edition</strong>&nbsp;begins by explaining how to install a free C++ compiler so you&nbsp;can quickly begin to create your&nbsp;own executable programs by copying the book&rsquo;s examples. It demonstrates all the C++ language basics before moving on to provide examples of Object Oriented Programming (OOP).</p>\r\n<p>C++ is not platform-dependent, so programs can be created on any operating system. Most illustrations in this book depict output on the Windows operating system purely because it is the most widely used desktop platform. The examples can also be created on other platforms such as Linux or macOS.</p>\r\n<p>The book concludes by demonstrating how you&nbsp;can use your&nbsp;acquired knowledge to create programs graphically using a modern C++ Integrated Development Environment (IDE), such as Microsoft&rsquo;s Visual Studio Community Edition.</p>\r\n<p><strong>C++ Programming in easy steps, 5<sup>th</sup>&nbsp;Edition</strong>&nbsp;has an easy-to-follow style that will appeal to:</p>\r\n<ul>\r\n<li>anyone who wants to begin programming in C++</li>\r\n<li>programmers moving from another programming language</li>\r\n<li>students who are&nbsp;studying C++ Programming at school or college</li>\r\n<li>those seeking a career in computing who need a fundamental understanding of object oriented programming</li>\r\n</ul>\r\n<p>This book makes no assumption that you have&nbsp;previous knowledge of any programming language so it is suitable for the beginner to programming in C++, whether you&nbsp;know C or not.</p>', 'C++ Programming in easy steps, 5th Edition shows you how to program in the powerful C++ language. Now, in its fifth edition, this guide gives complete examples that illustrate each aspect with colourized source code.', 'easy steps', NULL, NULL),
(17, 17, 'en', 'The Lean Startup', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged', 'Lean Startup', NULL, NULL),
(18, 18, 'en', 'Business Adventures', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Adventures', NULL, NULL),
(19, 19, 'en', 'The Politics of Women\'s Interests', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Louise Chappell & Lisa Hill', NULL, NULL),
(20, 20, 'en', 'The One Minute Manager', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Minute Manager', NULL, NULL),
(21, 21, 'en', 'Target Manager', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Manager', NULL, NULL),
(22, 22, 'en', 'Making Lifestyle Changes: 10 Steps to Help You Succeed', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Lauren Vento', NULL, NULL),
(23, 23, 'en', 'Dark Money', 'What is Lorem Ipsum? Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'Jane Mayer', 'abc.xyz', 'ad,ad,ad'),
(24, 24, 'en', 'Success Through a Positive', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'NiksVags', NULL, NULL),
(25, 25, 'en', 'Steve Jobs', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'Steve Jobs', NULL, NULL),
(26, 26, 'en', 'Einstein', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free f</p>', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'Einstein', 'abc.xyz', 'ad,ad,ad');

-- --------------------------------------------------------

--
-- Table structure for table `ebook_views`
--

CREATE TABLE `ebook_views` (
  `id` int UNSIGNED NOT NULL,
  `ebook_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ebook_views`
--

INSERT INTO `ebook_views` (`id`, `ebook_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 23, 1, '2022-02-21 20:06:50', '2022-02-21 20:06:50'),
(2, 22, 1, '2022-02-21 20:09:25', '2022-02-21 20:09:25'),
(3, 5, 1, '2022-02-22 20:40:47', '2022-02-22 20:40:47'),
(4, 3, 1, '2022-02-22 23:00:05', '2022-02-22 23:00:05'),
(5, 26, 1, '2022-02-22 23:00:22', '2022-02-22 23:00:22'),
(6, 4, 1, '2022-03-07 01:29:13', '2022-03-07 01:29:13'),
(7, 7, 1, '2022-07-20 23:56:35', '2022-07-20 23:56:35'),
(8, 1, 1, '2024-11-07 05:11:56', '2024-11-07 05:11:56'),
(9, 9, 1, '2024-11-07 05:12:19', '2024-11-07 05:12:19'),
(10, 2, 1, '2024-11-20 02:59:10', '2024-11-20 02:59:10'),
(11, 8, 1, '2024-11-20 03:10:37', '2024-11-20 03:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `entity_files`
--

CREATE TABLE `entity_files` (
  `id` int UNSIGNED NOT NULL,
  `files_id` int UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint UNSIGNED NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entity_files`
--

INSERT INTO `entity_files` (`id`, `files_id`, `entity_type`, `entity_id`, `zone`, `created_at`, `updated_at`) VALUES
(596, 254, 'Modules\\Author\\Entities\\Author', 1, 'author_image', '2021-11-13 01:39:45', '2021-11-13 01:39:45'),
(597, 254, 'Modules\\Author\\Entities\\Author', 3, 'author_image', '2021-11-13 01:40:06', '2021-11-13 01:40:06'),
(598, 254, 'Modules\\Author\\Entities\\Author', 4, 'author_image', '2021-11-13 01:40:27', '2021-11-13 01:40:27'),
(599, 254, 'Modules\\Author\\Entities\\Author', 5, 'author_image', '2021-11-13 01:40:48', '2021-11-13 01:40:48'),
(600, 254, 'Modules\\Author\\Entities\\Author', 18, 'author_image', '2021-11-13 01:41:08', '2021-11-13 01:41:08'),
(601, 254, 'Modules\\Author\\Entities\\Author', 27, 'author_image', '2021-11-13 01:41:32', '2021-11-13 01:41:32'),
(602, 254, 'Modules\\Author\\Entities\\Author', 31, 'author_image', '2021-11-13 01:41:46', '2021-11-13 01:41:46'),
(605, 254, 'Modules\\Author\\Entities\\Author', 36, 'author_image', '2021-11-13 01:49:21', '2021-11-13 01:49:21'),
(606, 254, 'Modules\\Author\\Entities\\Author', 41, 'author_image', '2021-11-13 01:49:34', '2021-11-13 01:49:34'),
(607, 254, 'Modules\\Author\\Entities\\Author', 34, 'author_image', '2021-11-13 01:49:43', '2021-11-13 01:49:43'),
(608, 258, 'Modules\\User\\Entities\\User', 1, 'avatar', '2021-11-13 01:50:57', '2021-11-13 01:50:57'),
(611, 256, 'Modules\\Ebook\\Entities\\Ebook', 1, 'book_cover', '2022-01-21 00:29:56', '2022-01-21 00:29:56'),
(612, 261, 'Modules\\Ebook\\Entities\\Ebook', 1, 'book_file', '2022-01-21 00:29:56', '2022-01-21 00:29:56'),
(613, 256, 'Modules\\Ebook\\Entities\\Ebook', 2, 'book_cover', '2022-01-21 00:30:53', '2022-01-21 00:30:53'),
(614, 261, 'Modules\\Ebook\\Entities\\Ebook', 2, 'book_file', '2022-01-21 00:30:53', '2022-01-21 00:30:53'),
(615, 256, 'Modules\\Ebook\\Entities\\Ebook', 3, 'book_cover', '2022-01-21 00:31:21', '2022-01-21 00:31:21'),
(616, 261, 'Modules\\Ebook\\Entities\\Ebook', 3, 'book_file', '2022-01-21 00:31:21', '2022-01-21 00:31:21'),
(617, 256, 'Modules\\Ebook\\Entities\\Ebook', 4, 'book_cover', '2022-01-21 00:31:50', '2022-01-21 00:31:50'),
(618, 261, 'Modules\\Ebook\\Entities\\Ebook', 4, 'book_file', '2022-01-21 00:31:50', '2022-01-21 00:31:50'),
(619, 256, 'Modules\\Ebook\\Entities\\Ebook', 5, 'book_cover', '2022-01-21 00:32:22', '2022-01-21 00:32:22'),
(620, 261, 'Modules\\Ebook\\Entities\\Ebook', 5, 'book_file', '2022-01-21 00:32:22', '2022-01-21 00:32:22'),
(621, 256, 'Modules\\Ebook\\Entities\\Ebook', 6, 'book_cover', '2022-01-21 00:32:37', '2022-01-21 00:32:37'),
(622, 261, 'Modules\\Ebook\\Entities\\Ebook', 6, 'book_file', '2022-01-21 00:32:37', '2022-01-21 00:32:37'),
(623, 256, 'Modules\\Ebook\\Entities\\Ebook', 7, 'book_cover', '2022-01-21 00:32:54', '2022-01-21 00:32:54'),
(624, 261, 'Modules\\Ebook\\Entities\\Ebook', 7, 'book_file', '2022-01-21 00:32:54', '2022-01-21 00:32:54'),
(625, 256, 'Modules\\Ebook\\Entities\\Ebook', 8, 'book_cover', '2022-01-21 00:33:09', '2022-01-21 00:33:09'),
(626, 261, 'Modules\\Ebook\\Entities\\Ebook', 8, 'book_file', '2022-01-21 00:33:09', '2022-01-21 00:33:09'),
(627, 256, 'Modules\\Ebook\\Entities\\Ebook', 9, 'book_cover', '2022-01-21 01:25:31', '2022-01-21 01:25:31'),
(628, 261, 'Modules\\Ebook\\Entities\\Ebook', 9, 'book_file', '2022-01-21 01:25:31', '2022-01-21 01:25:31'),
(629, 256, 'Modules\\Ebook\\Entities\\Ebook', 10, 'book_cover', '2022-01-21 01:25:48', '2022-01-21 01:25:48'),
(630, 261, 'Modules\\Ebook\\Entities\\Ebook', 10, 'book_file', '2022-01-21 01:25:48', '2022-01-21 01:25:48'),
(631, 256, 'Modules\\Ebook\\Entities\\Ebook', 11, 'book_cover', '2022-01-21 01:26:06', '2022-01-21 01:26:06'),
(632, 261, 'Modules\\Ebook\\Entities\\Ebook', 11, 'book_file', '2022-01-21 01:26:06', '2022-01-21 01:26:06'),
(633, 256, 'Modules\\Ebook\\Entities\\Ebook', 13, 'book_cover', '2022-01-21 01:26:37', '2022-01-21 01:26:37'),
(634, 261, 'Modules\\Ebook\\Entities\\Ebook', 13, 'book_file', '2022-01-21 01:26:37', '2022-01-21 01:26:37'),
(635, 256, 'Modules\\Ebook\\Entities\\Ebook', 12, 'book_cover', '2022-01-21 01:26:58', '2022-01-21 01:26:58'),
(636, 261, 'Modules\\Ebook\\Entities\\Ebook', 12, 'book_file', '2022-01-21 01:26:58', '2022-01-21 01:26:58'),
(637, 256, 'Modules\\Ebook\\Entities\\Ebook', 14, 'book_cover', '2022-01-21 01:27:21', '2022-01-21 01:27:21'),
(638, 261, 'Modules\\Ebook\\Entities\\Ebook', 14, 'book_file', '2022-01-21 01:27:21', '2022-01-21 01:27:21'),
(639, 256, 'Modules\\Ebook\\Entities\\Ebook', 15, 'book_cover', '2022-01-21 01:27:42', '2022-01-21 01:27:42'),
(640, 261, 'Modules\\Ebook\\Entities\\Ebook', 15, 'book_file', '2022-01-21 01:27:42', '2022-01-21 01:27:42'),
(641, 256, 'Modules\\Ebook\\Entities\\Ebook', 16, 'book_cover', '2022-01-21 01:27:56', '2022-01-21 01:27:56'),
(642, 261, 'Modules\\Ebook\\Entities\\Ebook', 16, 'book_file', '2022-01-21 01:27:56', '2022-01-21 01:27:56'),
(643, 256, 'Modules\\Ebook\\Entities\\Ebook', 17, 'book_cover', '2022-01-21 01:28:15', '2022-01-21 01:28:15'),
(644, 261, 'Modules\\Ebook\\Entities\\Ebook', 17, 'book_file', '2022-01-21 01:28:15', '2022-01-21 01:28:15'),
(645, 256, 'Modules\\Ebook\\Entities\\Ebook', 18, 'book_cover', '2022-01-21 01:28:38', '2022-01-21 01:28:38'),
(646, 261, 'Modules\\Ebook\\Entities\\Ebook', 18, 'book_file', '2022-01-21 01:28:38', '2022-01-21 01:28:38'),
(647, 256, 'Modules\\Ebook\\Entities\\Ebook', 19, 'book_cover', '2022-01-21 01:29:52', '2022-01-21 01:29:52'),
(648, 261, 'Modules\\Ebook\\Entities\\Ebook', 19, 'book_file', '2022-01-21 01:29:52', '2022-01-21 01:29:52'),
(649, 256, 'Modules\\Ebook\\Entities\\Ebook', 20, 'book_cover', '2022-01-21 01:30:10', '2022-01-21 01:30:10'),
(650, 261, 'Modules\\Ebook\\Entities\\Ebook', 20, 'book_file', '2022-01-21 01:30:10', '2022-01-21 01:30:10'),
(651, 256, 'Modules\\Ebook\\Entities\\Ebook', 21, 'book_cover', '2022-01-21 01:30:33', '2022-01-21 01:30:33'),
(652, 261, 'Modules\\Ebook\\Entities\\Ebook', 21, 'book_file', '2022-01-21 01:30:33', '2022-01-21 01:30:33'),
(653, 256, 'Modules\\Ebook\\Entities\\Ebook', 22, 'book_cover', '2022-01-21 01:30:56', '2022-01-21 01:30:56'),
(654, 261, 'Modules\\Ebook\\Entities\\Ebook', 22, 'book_file', '2022-01-21 01:30:56', '2022-01-21 01:30:56'),
(655, 256, 'Modules\\Ebook\\Entities\\Ebook', 23, 'book_cover', '2022-01-21 01:31:13', '2022-01-21 01:31:13'),
(656, 261, 'Modules\\Ebook\\Entities\\Ebook', 23, 'book_file', '2022-01-21 01:31:13', '2022-01-21 01:31:13'),
(657, 256, 'Modules\\Ebook\\Entities\\Ebook', 24, 'book_cover', '2022-01-21 01:31:32', '2022-01-21 01:31:32'),
(658, 261, 'Modules\\Ebook\\Entities\\Ebook', 24, 'book_file', '2022-01-21 01:31:32', '2022-01-21 01:31:32'),
(659, 256, 'Modules\\Ebook\\Entities\\Ebook', 25, 'book_cover', '2022-01-21 01:31:57', '2022-01-21 01:31:57'),
(660, 261, 'Modules\\Ebook\\Entities\\Ebook', 25, 'book_file', '2022-01-21 01:31:57', '2022-01-21 01:31:57'),
(685, 256, 'Modules\\Ebook\\Entities\\Ebook', 26, 'book_cover', '2022-03-07 02:31:28', '2022-03-07 02:31:28'),
(686, 261, 'Modules\\Ebook\\Entities\\Ebook', 26, 'book_file', '2022-03-07 02:31:28', '2022-03-07 02:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_lists`
--

CREATE TABLE `favorite_lists` (
  `user_id` int UNSIGNED NOT NULL,
  `ebook_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorite_lists`
--

INSERT INTO `favorite_lists` (`user_id`, `ebook_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-03-16 04:37:13', '2021-03-16 04:37:13'),
(1, 5, '2021-01-07 23:29:44', '2021-01-07 23:29:44'),
(1, 8, '2021-01-23 10:06:23', '2021-01-23 10:06:23'),
(1, 9, '2020-08-23 22:03:51', '2020-08-23 22:03:51'),
(1, 11, '2020-11-13 12:12:23', '2020-11-13 12:12:23'),
(1, 17, '2020-11-27 19:08:39', '2020-11-27 19:08:39'),
(1, 18, '2021-01-21 16:32:25', '2021-01-21 16:32:25'),
(1, 22, '2020-06-04 08:23:42', '2020-06-04 08:23:42'),
(1, 25, '2021-01-18 10:27:58', '2021-01-18 10:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `download` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `user_id`, `filename`, `disk`, `path`, `extension`, `mime`, `size`, `download`, `created_at`, `updated_at`) VALUES
(253, 1, 'banner-section-image.png', 'public_storage', 'media/GhSZ343hxoBgpW3o02aAwKNziy19mcMCKiOf9mHw.png', 'png', 'image/png', '3194', 0, '2021-11-13 01:39:16', '2021-11-13 01:39:16'),
(254, 1, 'author-image.png', 'public_storage', 'media/lAEi1BySpss2miarR0l5tyRYjzueeRrKQWzx4HVP.png', 'png', 'image/png', '368', 0, '2021-11-13 01:39:16', '2021-11-13 01:39:16'),
(255, 1, 'newsletter.png', 'public_storage', 'media/WiXE6kEUxElADQAUwuajnc0mltSgfUwxfv84ecCp.png', 'png', 'image/png', '881', 0, '2021-11-13 01:39:17', '2021-11-13 01:39:17'),
(256, 1, 'ebook-image.png', 'public_storage', 'media/2GKvTqbwntp5DnViZB7hpqBOgKKfShvmNnowyXju.png', 'png', 'image/png', '842', 0, '2021-11-13 01:39:17', '2021-11-13 01:39:17'),
(257, 1, 'slider-image.png', 'public_storage', 'media/t7aF8p1kj7Yct1NoeYrafuQMcKEETojGKalgPJQu.png', 'png', 'image/png', '3083', 0, '2021-11-13 01:39:18', '2021-11-13 01:39:18'),
(258, 1, 'user-image.png', 'public_storage', 'media/Oo0PLOqfGfgPJTtzHfv08pKjbcNlUnwJ6PwKvUss.png', 'png', 'image/png', '368', 0, '2021-11-13 01:39:18', '2021-11-13 01:39:18'),
(259, 1, 'ebook-icon.png', 'public_storage', 'media/frsB8gmEF0oganhB8IiHKDYrraZ4QhZy1hiHR7Hf.png', 'png', 'image/png', '8289', 0, '2021-11-13 01:55:50', '2021-11-13 01:55:50'),
(260, 1, 'ebook-favicon.png', 'public_storage', 'media/WlEiXjeSWO8km2PCVSmgBwVXwnxsBdF2cvaHCVXW.png', 'png', 'image/png', '1566', 0, '2021-11-13 01:56:06', '2021-11-13 01:56:06'),
(261, 1, 'dymmy-pdf.pdf', 'public_storage', 'media/ac8VeGByDI1coUj2cGsKnkCS6bMEaPH0v5MYoBEt.pdf', 'pdf', 'application/pdf', '132569', 3, '2022-01-21 00:29:41', '2022-02-25 22:40:29');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-07-22 23:40:47', '2019-07-22 23:40:47'),
(2, 1, '2019-07-23 00:44:50', '2019-07-23 00:44:50'),
(3, 1, '2019-07-23 01:16:17', '2019-07-23 01:16:17'),
(4, 1, '2019-07-23 01:20:18', '2019-07-23 01:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `page_id` int UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int UNSIGNED DEFAULT NULL,
  `is_root` tinyint(1) NOT NULL DEFAULT '0',
  `is_fluid` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `parent_id`, `category_id`, `page_id`, `type`, `url`, `target`, `position`, `is_root`, `is_fluid`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, 'URL', NULL, '_self', 0, 1, 0, 1, '2019-07-22 23:40:47', '2019-07-22 23:40:47'),
(2, 1, 1, NULL, NULL, 'url', '/', '_self', 0, 0, 0, 1, '2019-07-22 23:42:51', '2020-04-23 00:14:03'),
(3, 1, 1, NULL, NULL, 'url', '/ebooks', '_self', 2, 0, 0, 1, '2019-07-22 23:43:26', '2020-02-10 23:31:04'),
(4, 1, 1, NULL, 1, 'page', NULL, '_self', 1, 0, 0, 1, '2019-07-22 23:43:41', '2020-02-10 23:31:04'),
(5, 1, 1, NULL, 4, 'page', NULL, '_self', 4, 0, 0, 1, '2019-07-22 23:44:29', '2020-02-10 23:32:39'),
(7, 2, NULL, NULL, NULL, 'URL', NULL, '_self', 0, 1, 0, 1, '2019-07-23 00:44:50', '2019-07-23 00:44:50'),
(8, 2, 7, 1, NULL, 'category', NULL, '_self', 1, 0, 0, 1, '2019-07-23 00:45:17', '2020-02-26 22:52:22'),
(9, 2, 7, 2, NULL, 'category', NULL, '_self', 2, 0, 0, 1, '2019-07-23 00:45:33', '2020-02-26 22:52:22'),
(12, 2, 7, 5, NULL, 'category', NULL, '_self', 3, 0, 0, 1, '2019-07-23 00:46:30', '2020-02-26 22:52:22'),
(15, 2, 7, 4, NULL, 'category', NULL, '_self', 4, 0, 0, 1, '2019-07-23 00:58:42', '2020-02-26 22:52:22'),
(16, 2, 7, 10, NULL, 'category', NULL, '_self', 6, 0, 0, 1, '2019-07-23 01:01:28', '2020-02-26 22:52:22'),
(20, 2, 7, 6, NULL, 'category', NULL, '_self', 5, 0, 0, 1, '2019-07-23 01:13:38', '2020-02-26 22:52:22'),
(21, 2, 7, 36, NULL, 'category', NULL, '_self', 9, 0, 0, 1, '2019-07-23 01:14:02', '2020-04-22 19:15:33'),
(22, 2, 7, 37, NULL, 'category', NULL, '_self', 8, 0, 0, 1, '2019-07-23 01:14:31', '2020-04-22 19:15:33'),
(23, 2, 7, 27, NULL, 'category', NULL, '_self', 10, 0, 0, 1, '2019-07-23 01:14:57', '2020-04-22 19:15:33'),
(24, 2, 7, 26, NULL, 'category', NULL, '_self', 7, 0, 0, 1, '2019-07-23 01:15:14', '2020-04-22 19:15:33'),
(25, 3, NULL, NULL, NULL, 'URL', NULL, '_self', 0, 1, 0, 1, '2019-07-23 01:16:17', '2019-07-23 01:16:17'),
(26, 3, 25, 1, NULL, 'category', NULL, '_self', 0, 0, 0, 1, '2019-07-23 01:16:34', '2019-07-23 01:18:25'),
(27, 3, 25, 5, NULL, 'category', NULL, '_self', 1, 0, 0, 1, '2019-07-23 01:16:46', '2019-07-23 01:18:25'),
(28, 3, 25, 4, NULL, 'category', NULL, '_self', 2, 0, 0, 1, '2019-07-23 01:16:59', '2019-07-23 01:18:25'),
(29, 3, 25, 6, NULL, 'category', NULL, '_self', 3, 0, 0, 1, '2019-07-23 01:17:12', '2019-07-23 01:18:25'),
(30, 3, 25, 37, NULL, 'category', NULL, '_self', 5, 0, 0, 1, '2019-07-23 01:17:26', '2019-07-23 01:18:25'),
(31, 3, 25, 36, NULL, 'category', NULL, '_self', 4, 0, 0, 1, '2019-07-23 01:18:18', '2019-07-23 01:18:25'),
(32, 4, NULL, NULL, NULL, 'URL', NULL, '_self', 0, 1, 0, 1, '2019-07-23 01:20:18', '2019-07-23 01:20:18'),
(33, 4, 32, NULL, 1, 'url', 'authors', '_self', 4, 0, 0, 1, '2019-07-23 01:20:31', '2020-04-27 06:32:10'),
(34, 4, 32, NULL, 3, 'page', NULL, '_self', 1, 0, 0, 1, '2019-07-23 01:21:23', '2020-04-27 06:32:07'),
(35, 4, 32, NULL, 2, 'page', NULL, '_self', 2, 0, 0, 1, '2019-07-23 01:21:51', '2020-04-27 06:32:09'),
(36, 4, 32, NULL, NULL, 'url', '/users', '_self', 5, 0, 0, 1, '2019-07-23 01:22:29', '2020-04-27 06:32:11'),
(37, 4, 32, NULL, 1, 'page', NULL, '_self', 0, 0, 0, 1, '2019-07-23 01:22:46', '2020-04-27 06:31:41'),
(38, 4, 32, NULL, 5, 'page', NULL, '_self', 3, 0, 0, 1, '2019-07-23 01:26:05', '2020-04-27 06:32:10'),
(39, 5, NULL, NULL, NULL, 'URL', NULL, '_self', 0, 1, 0, 1, '2020-01-02 03:17:09', '2020-01-02 03:17:09'),
(40, 1, 1, NULL, NULL, 'url', 'contact', '_self', NULL, 0, 0, 1, '2020-02-11 02:30:48', '2020-02-11 02:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item_translations`
--

CREATE TABLE `menu_item_translations` (
  `id` int UNSIGNED NOT NULL,
  `menu_item_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item_translations`
--

INSERT INTO `menu_item_translations` (`id`, `menu_item_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'root'),
(2, 2, 'en', 'Home'),
(3, 3, 'en', 'Documents'),
(4, 4, 'en', 'About Us'),
(5, 5, 'en', 'Faq'),
(7, 7, 'en', 'root'),
(8, 8, 'en', 'Articles'),
(9, 9, 'en', 'Arts & Music'),
(12, 12, 'en', 'Business & Finance'),
(15, 15, 'en', 'Biography & Memoir'),
(16, 16, 'en', 'Education'),
(20, 20, 'en', 'Comics & Graphic Novels'),
(21, 21, 'en', 'Food/Recipes'),
(22, 22, 'en', 'Health & Fitness'),
(23, 23, 'en', 'Periodicals'),
(24, 24, 'en', 'Kids'),
(25, 25, 'en', 'root'),
(26, 26, 'en', 'Articles'),
(27, 27, 'en', 'Business & Finance'),
(28, 28, 'en', 'Biography & Memoir'),
(29, 29, 'en', 'Comics & Graphic Novels'),
(30, 30, 'en', 'Health & Fitness'),
(31, 31, 'en', 'Food/Recipes'),
(32, 32, 'en', 'root'),
(33, 33, 'en', 'Our Authors'),
(34, 34, 'en', 'Privacy Policy'),
(35, 35, 'en', 'Terms & Conditions'),
(36, 36, 'en', 'All Users'),
(37, 37, 'en', 'About Us'),
(38, 38, 'en', 'Help'),
(39, 39, 'en', 'root'),
(40, 40, 'en', 'Contact Us');

-- --------------------------------------------------------

--
-- Table structure for table `menu_translations`
--

CREATE TABLE `menu_translations` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_translations`
--

INSERT INTO `menu_translations` (`id`, `menu_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Main Menu'),
(2, 2, 'en', 'ALL Categories'),
(3, 3, 'en', 'Popular Categories'),
(4, 4, 'en', 'Get to Know Us');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` int UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `entity_type`, `entity_id`, `created_at`, `updated_at`) VALUES
(1, 'Modules\\Ebook\\Entities\\Ebook', 1, '2019-07-22 08:02:20', '2019-07-22 08:02:20'),
(2, 'Modules\\Page\\Entities\\Page', 1, '2019-07-22 23:26:09', '2019-07-22 23:26:09'),
(3, 'Modules\\Page\\Entities\\Page', 2, '2019-07-22 23:33:50', '2019-07-22 23:33:50'),
(4, 'Modules\\Page\\Entities\\Page', 3, '2019-07-22 23:34:58', '2019-07-22 23:34:58'),
(5, 'Modules\\Page\\Entities\\Page', 4, '2019-07-22 23:37:29', '2019-07-22 23:37:29'),
(6, 'Modules\\Page\\Entities\\Page', 5, '2019-07-23 01:25:16', '2019-07-23 01:25:16'),
(7, 'Modules\\Ebook\\Entities\\Ebook', 2, '2019-07-23 01:58:50', '2019-07-23 01:58:50'),
(8, 'Modules\\Ebook\\Entities\\Ebook', 3, '2019-07-23 04:45:39', '2019-07-23 04:45:39'),
(9, 'Modules\\Ebook\\Entities\\Ebook', 4, '2019-07-23 04:49:48', '2019-07-23 04:49:48'),
(10, 'Modules\\Ebook\\Entities\\Ebook', 5, '2019-07-23 04:54:02', '2019-07-23 04:54:02'),
(11, 'Modules\\Ebook\\Entities\\Ebook', 6, '2019-07-23 05:00:29', '2019-07-23 05:00:29'),
(12, 'Modules\\Ebook\\Entities\\Ebook', 7, '2019-07-23 05:03:07', '2019-07-23 05:03:07'),
(13, 'Modules\\Ebook\\Entities\\Ebook', 8, '2019-07-23 05:10:29', '2019-07-23 05:10:29'),
(14, 'Modules\\Ebook\\Entities\\Ebook', 9, '2019-07-23 05:23:10', '2019-07-23 05:23:10'),
(15, 'Modules\\Ebook\\Entities\\Ebook', 10, '2019-07-23 05:31:55', '2019-07-23 05:31:55'),
(16, 'Modules\\Ebook\\Entities\\Ebook', 11, '2019-07-23 05:45:22', '2019-07-23 05:45:22'),
(17, 'Modules\\Ebook\\Entities\\Ebook', 12, '2019-07-23 05:45:33', '2019-07-23 05:45:33'),
(18, 'Modules\\Ebook\\Entities\\Ebook', 13, '2019-07-23 05:57:45', '2019-07-23 05:57:45'),
(19, 'Modules\\Ebook\\Entities\\Ebook', 14, '2019-07-23 05:57:54', '2019-07-23 05:57:54'),
(20, 'Modules\\Ebook\\Entities\\Ebook', 15, '2019-07-23 06:12:25', '2019-07-23 06:12:25'),
(21, 'Modules\\Ebook\\Entities\\Ebook', 16, '2019-07-23 06:12:31', '2019-07-23 06:12:31'),
(22, 'Modules\\Ebook\\Entities\\Ebook', 17, '2019-07-23 06:45:23', '2019-07-23 06:45:23'),
(23, 'Modules\\Ebook\\Entities\\Ebook', 18, '2019-07-23 06:48:15', '2019-07-23 06:48:15'),
(24, 'Modules\\Ebook\\Entities\\Ebook', 19, '2019-07-23 06:51:32', '2019-07-23 06:51:32'),
(25, 'Modules\\Ebook\\Entities\\Ebook', 20, '2019-07-23 06:59:02', '2019-07-23 06:59:02'),
(26, 'Modules\\Ebook\\Entities\\Ebook', 21, '2019-07-23 07:02:38', '2019-07-23 07:02:38'),
(27, 'Modules\\Ebook\\Entities\\Ebook', 22, '2019-07-23 07:12:51', '2019-07-23 07:12:51'),
(28, 'Modules\\Ebook\\Entities\\Ebook', 23, '2019-07-23 07:23:22', '2019-07-23 07:23:22'),
(29, 'Modules\\Ebook\\Entities\\Ebook', 24, '2019-07-23 07:24:01', '2019-07-23 07:24:01'),
(30, 'Modules\\Ebook\\Entities\\Ebook', 25, '2019-07-23 08:09:08', '2019-07-23 08:09:08'),
(31, 'Modules\\Ebook\\Entities\\Ebook', 26, '2019-07-23 08:15:45', '2019-07-23 08:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data_translations`
--

CREATE TABLE `meta_data_translations` (
  `id` int UNSIGNED NOT NULL,
  `meta_data_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data_translations`
--

INSERT INTO `meta_data_translations` (`id`, `meta_data_id`, `locale`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 'en', 'Spider Man far from home', '[\"spider man\",\"far from home\",null]', 'Spider Man far from home saf sad fsafs'),
(2, 2, 'en', 'about us', '[\"about us\",\"ebook\",\"ebooks\",\"about\"]', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
(3, 3, 'en', 'Terms &amp; Conditions', '[\"terms\",\"conditions\"]', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but als'),
(4, 4, 'en', 'Privacy Policy', '[\"Privacy\",\"Policy\"]', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(5, 5, 'en', 'FAQ', '[\"faq\",\"question\",\"answers\"]', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.'),
(6, 6, 'en', 'Help', '[\"help\"]', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since'),
(7, 7, 'en', '101 Animals Stories', '[\"Animals\",\"Stories\",\"kids\"]', '101 Animals Stories- the ebook featuring zoological garden of animals'),
(8, 8, 'en', 'The Eternals', '[\"The Eternals\"]', 'You are thousands of years old. You have amazing powers. You have watched civilizations rise and fall'),
(9, 9, 'en', 'Mighty Thor', '[\"Mighty Thor\"]', 'When Dr. Jane Foster lifts the mystic hammer Mjolnir, she is transformed into the Goddess of Thunder, the Mighty Thor!'),
(10, 10, 'en', 'Secret Wars', '[\"Secret Wars\"]', 'Collects Secret Wars #1-9, Free Comic Book Day 2015 Secret Wars #0 (Secret Wars story).  The Marvel Universe is no more! The interdimensional Incursions have eliminated each and every alternate universe one by one.'),
(11, 11, 'en', 'Batman: Last Knight on Earth', '[\"Batman: Last Knight on Earth\"]', 'Bruce Wayne wakes up in Arkham Asylum. Young. Sane. And...he was never Batman. So begins this sprawling tale of the Dark Knight as he embarks on a quest through a devastated DC landscape featuring a massive cast of familiar faces from the DC Universe'),
(12, 12, 'en', 'Star Wars: Darth Vader: Dark Lord Of The Sith', '[\"Star Wars\",\"Darth Vader\",\"Dark Lord Of The Sith\"]', 'Collects Darth Vader (2017) #13-18 And Darth Vader Annual #2.'),
(13, 13, 'en', 'Batman: Damned', '[\"Batman: Damned\"]', 'The stunning conclusion to the groundbreaking miniseries by the critically acclaimed team of writer Brian Azzarello and artist Lee Bermejo is here!'),
(14, 14, 'en', 'Article', '[\"Article\"]', 'New York, Los Angeles, and Washington, D.C., have been abandoned.\r\n\r\nThe Bill of Rights has been revoked, and replaced with the Moral Statutes.'),
(15, 15, 'en', 'My First Book of Patterns Capital Letters', '[\"My First Book of Patterns Capital Letters\"]', 'My First Book of Patterns Capital Letters'),
(16, 16, 'en', 'Famous Indian Recipes', '[\"Famous Indian Recipes\"]', 'The Five Recipes shared in this Book are some of the most famous food in India.'),
(17, 17, 'en', NULL, '[]', 'Whether you are looking for the best way to prepare your favorite Indian foods, Or you are gearing up for a trip to India and need to get a taste of the local cuisine.'),
(18, 18, 'en', 'The Keto Reset Diet', '[\"The Keto Reset Diet\"]', 'Mounting scientific research suggests that eating a ketogenic diet could represent one of the greatest nutritional breakthroughs of our time—and that it might be the healthiest and most effective weight-loss strategy ever.'),
(19, 19, 'en', 'How Not To Die', '[\"How Not To Die\"]', 'This book may help those who are susceptible to illnesses that can be prevented with proper nutrition\' His Holiness the Dalai Lama'),
(20, 20, 'en', 'PHP The Complete Reference', '[\"PHP The Complete Reference\"]', 'Your One-Stop Guide to Web Development with PHP--Covers PHP 5.2 Build dynamic, cross-browser Web applications with PHP--the server-side programming language that\'s taken the Internet by storm.'),
(21, 21, 'en', 'C++ Programming in easy steps, 5th Edition', '[\"C++ Programming in easy steps\",\"5th Edition\"]', 'C++ Programming in easy steps, 5th Edition shows you how to program in the powerful C++ language. Now, in its fifth edition, this guide gives complete examples that illustrate each aspect with colourized source code.'),
(22, 22, 'en', 'The Lean Startup', '[\"Startup\"]', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged'),
(23, 23, 'en', NULL, '[]', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(24, 24, 'en', 'The Politics of Women\'s Interests', '[\"The Politics of Women\'s Interests\"]', 'This new study reveals how institutional practices and discourses shape the way men and women are conceived of, and how through this process, gender stereotypes and expectations are created.'),
(25, 25, 'en', 'The One Minute Manager', '[\"manager\"]', 'This new study reveals how institutional practices and discourses shape the way men and women are conceived of, and how through this process, gender stereotypes and expectations are created.'),
(26, 26, 'en', 'Target Manager', '[\"target\"]', 'This new study reveals how institutional practices and discourses shape the way men and women are conceived of, and how through this process, gender stereotypes and expectations are created.'),
(27, 27, 'en', 'Making Lifestyle Changes: 10 Steps to Help You Succeed', '[\"Making Lifestyle Changes: 10 Steps to Help You Succeed\"]', 'It doesn\'t matter if you want to lose weight, make more money, be more financially secure, quit smoking, or improve your relationships, all goals require changes in your actions'),
(28, 28, 'en', 'Dark Money', '[]', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s'),
(29, 29, 'en', NULL, '[]', NULL),
(30, 30, 'en', NULL, '[]', NULL),
(31, 31, 'en', NULL, '[]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_06_30_113500_create_comments_table', 1),
(2, '2019_08_24_104134_create_sliders_table', 1),
(3, '2019_08_24_105134_create_slider_translations_table', 1),
(4, '2019_08_24_105234_create_slider_slides_table', 1),
(5, '2019_08_24_105534_create_slider_slide_translations_table', 1),
(6, '2019_08_30_061505_create_pages_table', 1),
(7, '2019_08_30_061505_create_settings_table', 1),
(8, '2019_08_30_061605_create_page_translations_table', 1),
(9, '2019_08_30_061712_create_setting_translations_table', 1),
(10, '2019_08_30_102225_create_translations_table', 1),
(11, '2019_08_30_102429_create_translation_translations_table', 1),
(12, '2019_09_01_061505_create_meta_data_table', 1),
(13, '2019_09_01_061605_create_meta_data_translations_table', 1),
(14, '2019_09_01_160015_create_menus_table', 1),
(15, '2019_09_01_160138_create_menu_translations_table', 1),
(16, '2019_09_01_160753_create_menu_items_table', 1),
(17, '2019_09_01_160804_create_menu_item_translation_table', 1),
(18, '2019_09_17_083103_migration_cartalyst_sentinel', 1),
(19, '2019_09_24_054528_create_activity_log_table', 1),
(20, '2019_09_24_104134_create_files_table', 1),
(21, '2019_09_25_083103_create_authors_table', 1),
(22, '2019_09_25_083103_create_categories_table', 1),
(23, '2019_09_25_092538_add_fields_to_users_table', 1),
(24, '2019_09_25_092538_create_author_translations_table', 1),
(25, '2019_09_25_092538_create_category_translations_table', 1),
(26, '2019_09_25_104134_create_entity_files_table', 1),
(27, '2019_10_24_163159_create_ebooks_table', 1),
(28, '2019_10_24_163222_create_ebook_translations_table', 1),
(29, '2019_10_24_163319_create_ebook_authors_table', 1),
(30, '2019_10_24_163319_create_ebook_categories_table', 1),
(31, '2019_10_25_163159_create_favorite_lists_table', 1),
(32, '2019_10_25_163159_create_reviews_table', 1),
(33, '2019_10_27_182852_create_reported_ebooks_table', 1),
(34, '2020_04_07_102818_add_more_fields_to_ebooks_table', 1),
(35, '2020_05_11_085648_add_file_type_embed_code_fields_to_ebooks_table', 1),
(36, '2020_06_14_120806_add_download_field_to_ebooks_table', 1),
(37, '2021_10_08_094936_alter_table_ebooks', 1),
(38, '2022_02_21_163319_create_ebook_downloads_table', 1),
(39, '2022_02_21_163319_create_ebook_views_table', 1),
(40, '2022_12_19_100519_add_batch_uuid_column_to_activity_log_table', 1),
(41, '2022_12_19_100519_add_event_column_to_activity_log_table', 1),
(42, '2024_11_07_080900_create_user_ebook_table', 2),
(43, '2024_11_19_132127_create_carts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'about-us', 1, '2019-07-22 23:26:09', '2019-07-22 23:26:09'),
(2, 'terms-conditions', 1, '2019-07-22 23:33:50', '2019-07-22 23:35:06'),
(3, 'privacy-policy', 1, '2019-07-22 23:34:58', '2019-07-22 23:34:58'),
(4, 'faq', 1, '2019-07-22 23:37:29', '2019-07-22 23:37:29'),
(5, 'help', 1, '2019-07-23 01:25:16', '2019-07-23 01:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` int UNSIGNED NOT NULL,
  `page_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `name`, `body`) VALUES
(1, 1, 'en', 'About Us', '<div>\n<h2>About Us</h2>\n<p> </p>\n<h4>What is Lorem Ipsum?</h4>\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p> </p>\n</div>\n<div>\n<h4>Why do we use it?</h4>\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n</div>\n<p> </p>\n<div>\n<h4>Where does it come from?</h4>\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<p> </p>\n</div>\n<div>\n<h4>Where can I get some?</h4>\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n</div>'),
(2, 2, 'en', 'Terms And  Conditions', '<div>\n<h2>Terms &amp; Conditions</h2>\n<p> </p>\n<h4>What is Lorem Ipsum?</h4>\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p> </p>\n</div>\n<div>\n<h4>Why do we use it?</h4>\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n</div>\n<p> </p>\n<div>\n<h4>Where does it come from?</h4>\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<p> </p>\n</div>\n<div>\n<h4>Where can I get some?</h4>\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n</div>'),
(3, 3, 'en', 'Privacy Policy', '<div>\n<h2>Privacy Policy</h2>\n<p> </p>\n<h4>What is Lorem Ipsum?</h4>\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p> </p>\n</div>\n<div>\n<h4>Why do we use it?</h4>\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n</div>\n<p> </p>\n<div>\n<h4>Where does it come from?</h4>\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<p> </p>\n</div>\n<div>\n<h4>Where can I get some?</h4>\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n</div>'),
(4, 4, 'en', 'FAQ', '<h1>Need an answer, have a question?</h1>\n<p> </p>\n<h3>Frequently Asked Questions</h3>\n<p> </p>\n<h4>Question 1, Lorem Ipsum is simply dummy text of the printing and typesetting industry:</h4>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>\n<p> </p>\n<h4>Question 2, Lorem Ipsum is simply dummy text of the printing and typesetting industry:</h4>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>\n<p> </p>\n<h4>Question 3, Lorem Ipsum is simply dummy text of the printing and typesetting industry:</h4>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>\n<p> </p>\n<h4>Question 4, Lorem Ipsum is simply dummy text of the printing and typesetting industry:</h4>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>\n<p> </p>\n<h4>Question 5, Lorem Ipsum is simply dummy text of the printing and typesetting industry:</h4>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>\n<p> </p>\n<h4>Question 6, Lorem Ipsum is simply dummy text of the printing and typesetting industry:</h4>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>\n<p> </p>\n<h4>Question 7, Lorem Ipsum is simply dummy text of the printing and typesetting industry:</h4>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>\n<p> </p>\n<h4>Question 8, Lorem Ipsum is simply dummy text of the printing and typesetting industry:</h4>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>\n<p> </p>\n<h4>Question 9, Lorem Ipsum is simply dummy text of the printing and typesetting industry:</h4>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>'),
(5, 5, 'en', 'Help', '<div>\n<h2>Help</h2>\n<p> </p>\n<h4>What is Lorem Ipsum?</h4>\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p> </p>\n</div>\n<div>\n<h4>Why do we use it?</h4>\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n</div>\n<p> </p>\n<div>\n<h4>Where does it come from?</h4>\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<p> </p>\n</div>\n<div>\n<h4>Where can I get some?</h4>\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'BrxbQu497JV1YewTMwQ79KNeLTeXumMY', '2024-11-07 01:52:17', '2024-11-07 01:52:17'),
(5, 1, 'DZjBraSUftGh20N0IbjFRY0V5A3VOLwc', '2024-11-11 10:59:16', '2024-11-11 10:59:16'),
(6, 1, 'JmfKClB34WM42bczKVkPJ0pTh4P41VnK', '2024-11-19 08:24:39', '2024-11-19 08:24:39'),
(7, 1, 's3U0VWAOdDo7w5Ha10Q36Dfc7nS7wNF9', '2024-11-20 01:57:35', '2024-11-20 01:57:35'),
(8, 1, 'MCGtpPw6WhOq4prm7UHV1R3e3MLMDQJ4', '2024-11-20 08:15:27', '2024-11-20 08:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reported_ebooks`
--

CREATE TABLE `reported_ebooks` (
  `id` int UNSIGNED NOT NULL,
  `ebook_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reported_ebooks`
--

INSERT INTO `reported_ebooks` (`id`, `ebook_id`, `user_id`, `reason`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'this is not working', NULL, '2020-02-04 23:50:44', '2020-02-04 23:50:44'),
(9, 10, 1, 'I am testing the demo version', NULL, '2020-05-01 07:14:27', '2020-05-01 07:14:27'),
(14, 17, 1, 'test message for testing', NULL, '2020-08-18 06:41:05', '2020-08-18 06:41:05'),
(15, 2, 1, 'Thực sự thì đ** hiểu đó là cái gì luôn', NULL, '2020-08-28 06:42:16', '2020-08-28 06:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int UNSIGNED NOT NULL,
  `reviewer_id` int UNSIGNED DEFAULT NULL,
  `ebook_id` int UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `reviewer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `reviewer_id`, `ebook_id`, `rating`, `reviewer_name`, `comment`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 4, 18, 5, 'niks vags', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', 1, '2019-07-23 07:13:42', '2019-07-23 07:13:42'),
(2, 4, 2, 5, 'niks vags', 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', 1, '2019-07-23 07:15:46', '2019-07-23 07:15:46'),
(3, 4, 22, 4, 'niks vags', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 1, '2019-07-23 08:01:46', '2019-07-23 08:01:46'),
(4, 4, 6, 5, 'niks vags', 'it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 1, '2019-07-23 08:02:17', '2019-07-23 08:02:17'),
(5, 4, 7, 5, 'niks vags', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised', 1, '2019-07-23 08:03:13', '2019-07-23 08:03:13'),
(6, 4, 1, 4, 'niks vags', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old', 1, '2019-07-23 08:17:08', '2019-07-23 08:17:08'),
(7, 4, 3, 3, 'niks vags', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 1, '2019-07-23 08:17:50', '2019-07-23 08:17:50'),
(8, 4, 4, 5, 'niks vags', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.', 1, '2019-07-23 08:18:36', '2019-07-23 08:18:36'),
(9, 4, 10, 4, 'niks vags', 'How did his mind work? What made him a genius? Isaacson’s biography shows how his scientific imagination sprang from the rebellious nature of his personality. His fascinating story is a testament to the connection between creativity and freedom.', 1, '2019-07-23 08:19:11', '2019-07-23 08:19:11'),
(10, 4, 24, 5, 'niks vags', 'These traits are just as vital for this new century of globalization, in which our success will depend on our creativity, as they were for the beginning of the last century, when Einstein helped usher in the modern age.', 1, '2019-07-23 08:19:52', '2019-07-23 08:19:52'),
(11, 4, 21, 5, 'niks vags', 'He produced the two most famous paintings in history, The Last Supper and the Mona Lisa. With a passion that sometimes became obsessive', 1, '2019-07-23 08:20:44', '2019-07-23 08:20:44'),
(12, 4, 19, 4, 'niks vags', 'They examine regional, national and international institutions including the EU, ICC and UN and take a broad view of political institutions to include bureaucracy; federalism; legal structures; parliaments; voting and electoral institutions; and media coverage of women’s involvement in such institutions.', 1, '2019-07-23 08:21:31', '2019-07-23 08:21:31'),
(13, 4, 9, 5, 'niks vags', 'There are no more police—instead, there are soldiers. There are no more fines for bad behavior—instead, there are arrests, trials, and maybe worse. People who get arrested usually don\'t come back.', 1, '2019-07-23 08:22:20', '2019-07-23 08:22:20'),
(14, 4, 26, 5, 'niks vags', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 1, '2019-07-23 08:23:33', '2019-07-23 08:23:33'),
(15, 4, 16, 4, 'niks vags', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has', 1, '2019-07-23 08:24:19', '2020-04-27 06:37:46'),
(16, 1, 1, 5, 'Cyno Admin', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has', 1, '2020-02-10 00:41:53', '2020-04-27 06:37:37'),
(17, 1, 5, 5, 'Cyno Admin', 'Review', 1, '2020-02-10 00:43:03', '2020-02-10 00:43:03'),
(18, 1, 1, 4, 'Cyno Admin', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has', 1, '2020-02-12 00:31:09', '2020-04-27 06:37:09'),
(19, 1, 1, 5, 'Rick William', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has', 1, '2020-02-12 00:31:43', '2020-04-27 06:37:06'),
(20, 1, 1, 5, 'Rock W', 'Lorem Ipsum is not simply random text.', 1, '2020-02-12 00:32:42', '2020-02-12 00:33:03'),
(21, 1, 1, 5, 'Joy mark', 'Lorem Ipsum is not simply random text.', 1, '2020-02-12 00:34:03', '2020-02-12 00:34:17'),
(22, 18, 8, 4, 'Demo User', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has', 1, '2020-02-19 06:56:16', '2020-04-27 06:36:58'),
(23, 18, 14, 5, 'Demo User', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has', 1, '2020-02-19 06:56:53', '2020-04-27 06:36:53'),
(25, 1, 26, 4, 'Cyno Admin', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has', 1, '2020-03-04 01:44:10', '2020-04-27 06:36:20'),
(26, 1, 1, 4, 'Cyno Admin', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has', 1, '2020-04-23 04:15:09', '2020-04-27 06:36:07'),
(27, 1, 15, 5, 'Cyno Admin', 'Great', 1, '2020-05-03 07:15:43', '2020-05-03 07:15:43'),
(28, 1, 15, 5, 'Cyno Admin', 'Great', 1, '2020-05-03 07:16:06', '2020-05-03 07:16:06'),
(30, 1, 6, 4, 'Cyno Admin', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 1, '2020-05-22 18:32:14', '2020-05-22 18:32:14'),
(31, 1, 6, 2, 'Cyno Admin', 'Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites', 1, '2020-05-22 18:33:22', '2020-05-22 18:33:22'),
(35, 18, 15, 5, 'demo demo', 'love it', 1, '2020-06-04 10:43:27', '2020-06-04 10:43:27'),
(36, 18, 15, 5, 'demo demo', 'still love it', 1, '2020-06-04 10:44:06', '2020-06-04 10:44:06'),
(37, NULL, 18, 5, 'Hello', 'I love this', 1, '2020-06-05 04:24:25', '2020-06-05 04:24:25'),
(42, 1, 25, 4, 'Cyno Admin', 'Maso', 1, '2020-06-22 20:29:16', '2020-06-22 20:29:16'),
(43, 1, 25, 1, 'Cyno Admin', 'Metro', 1, '2020-06-22 20:29:49', '2020-06-22 20:29:49'),
(47, NULL, 3, 3, 'Tổ AT NPSC', 'Bjsj có thể', 1, '2020-08-28 06:13:56', '2020-08-28 06:13:56'),
(48, NULL, 2, 5, 'Rick William', 'This review is working fine', 1, '2020-09-21 06:31:25', '2020-09-21 06:31:25'),
(50, 1, 13, 5, 'demo demo', 'dfdsdfdf', 1, '2020-12-06 14:48:41', '2020-12-06 14:48:41'),
(51, NULL, 2, 3, 'Tester', 'Just testing', 1, '2020-12-12 05:46:28', '2020-12-12 05:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.files.index\":true,\"admin.files.create\":true,\"admin.files.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.settings.edit\":true,\"admin.ebooks.index\":true,\"admin.ebooks.create\":true,\"admin.ebooks.edit\":true,\"admin.ebooks.destroy\":true,\"admin.reportedebooks.index\":true,\"admin.reportedebooks.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.authors.index\":true,\"admin.authors.create\":true,\"admin.authors.edit\":true,\"admin.authors.destroy\":true,\"admin.activity.index\":true,\"admin.cynoebook.edit\":true,\"admin.comment.index\":true,\"admin.comment.create\":true,\"admin.comment.edit\":true,\"admin.comment.destroy\":true}', '2024-11-06 03:30:20', '2024-11-06 03:30:20'),
(2, 'user', 'User', '[]', '2024-11-06 03:30:20', '2024-11-07 02:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plainValue` text COLLATE utf8mb4_unicode_ci,
  `isTranslatable` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `plainValue`, `isTranslatable`, `created_at`, `updated_at`) VALUES
(1, 'site_name', NULL, 1, '2019-12-31 03:11:08', '2019-12-31 03:11:08'),
(2, 'site_email', 's:15:\"admin@gmail.com\";', 0, '2019-12-31 03:11:08', '2021-11-13 02:03:20'),
(3, 'active_theme', 's:9:\"Cynoebook\";', 0, '2019-12-31 03:11:09', '2019-12-31 03:11:09'),
(4, 'supported_locales', 'a:2:{i:0;s:2:\"ar\";i:1;s:2:\"en\";}', 0, '2019-12-31 03:11:09', '2021-11-13 02:03:40'),
(5, 'default_locale', 's:2:\"en\";', 0, '2019-12-31 03:11:09', '2020-04-15 07:21:59'),
(6, 'default_timezone', 's:3:\"UTC\";', 0, '2019-12-31 03:11:09', '2019-12-31 03:11:09'),
(7, 'user_role', 's:1:\"2\";', 0, '2019-12-31 03:11:09', '2019-12-31 03:11:09'),
(8, 'allow_registrations', 's:1:\"1\";', 0, '2019-12-31 03:11:09', '2019-12-31 03:11:09'),
(9, 'auto_approve_user', 's:1:\"0\";', 0, '2019-12-31 03:11:09', '2020-04-29 06:10:22'),
(10, 'default_file_size', 's:2:\"10\";', 0, '2019-12-31 03:11:09', '2019-12-31 03:11:09'),
(11, 'reviews_enabled', 'b:1;', 0, '2019-12-31 03:11:09', '2019-12-31 03:11:09'),
(12, 'auto_approve_reviews', 's:1:\"1\";', 0, '2019-12-31 03:11:09', '2020-02-19 06:31:10'),
(13, 'cynoebook_copyright_text', 's:61:\"Copyright © {{ site_name }} {{ year }}. All rights reserved.\";', 1, '2019-12-31 03:11:09', '2020-02-04 00:14:04'),
(14, 'welcome_email', 's:1:\"0\";', 0, '2020-01-01 03:24:13', '2020-04-29 06:10:22'),
(15, 'auto_approve_ebook', 's:1:\"0\";', 0, '2020-01-01 03:24:13', '2020-04-29 06:10:48'),
(16, 'email_from_address', 'N;', 0, '2020-01-01 03:24:14', '2021-11-13 02:03:21'),
(17, 'email_from_name', 'N;', 0, '2020-01-01 03:24:14', '2021-11-13 02:03:21'),
(18, 'email_host', 'N;', 0, '2020-01-01 03:24:14', '2021-11-13 02:03:21'),
(19, 'email_port', 'N;', 0, '2020-01-01 03:24:14', '2021-11-13 02:03:21'),
(20, 'email_username', 'N;', 0, '2020-01-01 03:24:14', '2021-11-13 02:03:21'),
(21, 'email_password', 's:8:\"admin123\";', 0, '2020-01-01 03:24:14', '2021-11-13 02:03:40'),
(22, 'email_encryption', 'N;', 0, '2020-01-01 03:24:14', '2020-02-26 20:22:41'),
(23, 'custom_css', 'N;', 0, '2020-01-01 03:24:15', '2020-04-27 18:09:32'),
(24, 'maintenance_mode', 's:1:\"0\";', 0, '2020-01-01 03:24:15', '2020-01-01 03:24:15'),
(25, 'allowed_ips', 'N;', 0, '2020-01-01 03:24:15', '2020-02-26 20:22:41'),
(26, 'facebook_login_enabled', 's:1:\"0\";', 0, '2020-01-01 03:24:15', '2021-11-13 02:03:21'),
(27, 'facebook_login_app_id', 'N;', 0, '2020-01-01 03:24:15', '2021-11-13 02:03:21'),
(28, 'facebook_login_app_secret', 'N;', 0, '2020-01-01 03:24:15', '2021-11-13 02:03:21'),
(29, 'google_login_enabled', 's:1:\"0\";', 0, '2020-01-01 03:24:15', '2021-11-13 02:03:21'),
(30, 'google_login_client_id', 'N;', 0, '2020-01-01 03:24:15', '2021-11-13 02:03:21'),
(31, 'google_login_client_secret', 'N;', 0, '2020-01-01 03:24:15', '2021-11-13 02:03:21'),
(32, 'googleanalyticscode', 'N;', 0, '2020-01-01 03:24:15', '2020-04-27 18:09:32'),
(33, 'custom_js', 'N;', 0, '2020-01-01 03:24:15', '2020-04-27 18:09:32'),
(34, 'cynoebook_theme', 's:11:\"theme-black\";', 0, '2020-02-04 00:14:02', '2020-04-25 06:12:51'),
(35, 'cynoebook_mail_theme', 's:11:\"theme-black\";', 0, '2020-02-04 00:14:03', '2020-02-04 00:14:03'),
(36, 'cynoebook_layout', 's:13:\"slider_layout\";', 0, '2020-02-04 00:14:04', '2020-02-06 01:13:41'),
(37, 'cynoebook_slider', 's:1:\"1\";', 0, '2020-02-04 00:14:04', '2020-02-06 01:13:41'),
(38, 'cynoebook_privacy_page', 's:1:\"3\";', 0, '2020-02-04 00:14:04', '2020-02-06 01:13:42'),
(39, 'cynoebook_footer_summary', NULL, 1, '2020-02-04 00:14:04', '2020-02-04 00:14:04'),
(40, 'cynoebook_category_menu_title', NULL, 1, '2020-02-04 00:14:04', '2020-02-04 00:14:04'),
(41, 'cynoebook_footer_menu_title_1', NULL, 1, '2020-02-04 00:14:04', '2020-02-04 00:14:04'),
(42, 'cynoebook_footer_menu_title_2', NULL, 1, '2020-02-04 00:14:04', '2020-02-04 00:14:04'),
(43, 'contact_info', NULL, 1, '2020-02-04 00:14:05', '2020-02-04 00:14:05'),
(44, 'cynoebook_feature_1_title', NULL, 1, '2020-02-04 00:14:05', '2020-02-04 00:14:05'),
(45, 'cynoebook_feature_1_subtitle', NULL, 1, '2020-02-04 00:14:05', '2020-02-04 00:14:05'),
(46, 'cynoebook_feature_2_title', NULL, 1, '2020-02-04 00:14:05', '2020-02-04 00:14:05'),
(47, 'cynoebook_feature_2_subtitle', NULL, 1, '2020-02-04 00:14:05', '2020-02-04 00:14:05'),
(48, 'cynoebook_feature_3_title', NULL, 1, '2020-02-04 00:14:06', '2020-02-04 00:14:06'),
(49, 'cynoebook_feature_3_subtitle', NULL, 1, '2020-02-04 00:14:06', '2020-02-04 00:14:06'),
(50, 'cynoebook_feature_4_title', NULL, 1, '2020-02-04 00:14:06', '2020-02-04 00:14:06'),
(51, 'cynoebook_feature_4_subtitle', NULL, 1, '2020-02-04 00:14:06', '2020-02-04 00:14:06'),
(52, 'cynoebook_featured_ebooks_section_title', NULL, 1, '2020-02-04 00:14:06', '2020-02-04 00:14:06'),
(53, 'cynoebook_banner_section_1_banner_file_id', NULL, 1, '2020-02-04 00:14:06', '2020-02-04 00:14:06'),
(54, 'cynoebook_banner_section_1_banner_caption_1', NULL, 1, '2020-02-04 00:14:06', '2020-02-04 00:14:06'),
(55, 'cynoebook_banner_section_1_banner_caption_2', NULL, 1, '2020-02-04 00:14:06', '2020-02-04 00:14:06'),
(56, 'cynoebook_banner_section_1_banner_call_to_action_text', NULL, 1, '2020-02-04 00:14:06', '2020-02-04 00:14:06'),
(57, 'cynoebook_recent_ebooks_section_title', NULL, 1, '2020-02-04 00:14:06', '2020-02-04 00:14:06'),
(58, 'cynoebook_banner_section_2_banner_file_id', NULL, 1, '2020-02-04 00:14:07', '2020-02-04 00:14:07'),
(59, 'cynoebook_banner_section_2_banner_caption_1', NULL, 1, '2020-02-04 00:14:07', '2020-02-04 00:14:07'),
(60, 'cynoebook_banner_section_2_banner_caption_2', NULL, 1, '2020-02-04 00:14:07', '2020-02-04 00:14:07'),
(61, 'cynoebook_banner_section_2_banner_call_to_action_text', NULL, 1, '2020-02-04 00:14:07', '2020-02-04 00:14:07'),
(62, 'cynoebook_primary_menu', 's:1:\"1\";', 0, '2020-02-04 00:14:07', '2020-02-10 23:20:38'),
(63, 'cynoebook_category_menu', 's:1:\"2\";', 0, '2020-02-04 00:14:07', '2020-02-06 01:13:42'),
(64, 'cynoebook_footer_menu_1', 's:1:\"3\";', 0, '2020-02-04 00:14:07', '2020-02-06 01:13:43'),
(65, 'cynoebook_footer_menu_2', 's:1:\"4\";', 0, '2020-02-04 00:14:07', '2020-02-06 01:13:43'),
(66, 'cynoebook_fb_link', 's:1:\"#\";', 0, '2020-02-04 00:14:07', '2020-02-04 19:08:57'),
(67, 'cynoebook_twitter_link', 's:1:\"#\";', 0, '2020-02-04 00:14:07', '2020-02-04 19:08:57'),
(68, 'cynoebook_instagram_link', 's:1:\"#\";', 0, '2020-02-04 00:14:07', '2020-02-04 19:08:57'),
(69, 'cynoebook_linkedin_link', 's:1:\"#\";', 0, '2020-02-04 00:14:07', '2020-02-04 19:08:57'),
(70, 'cynoebook_pinterest_link', 's:1:\"#\";', 0, '2020-02-04 00:14:07', '2020-02-04 19:08:57'),
(71, 'cynoebook_google_plus_link', 's:1:\"#\";', 0, '2020-02-04 00:14:07', '2020-02-04 19:08:57'),
(72, 'cynoebook_youtube_link', 's:1:\"#\";', 0, '2020-02-04 00:14:07', '2020-02-04 19:08:57'),
(73, 'cynoebook_ad1_section_enabled', 's:1:\"0\";', 0, '2020-02-04 00:14:07', '2021-11-13 02:00:11'),
(74, 'cynoebook_ad_1', 's:15:\"Advertisement 1\";', 0, '2020-02-04 00:14:07', '2020-02-04 19:13:31'),
(75, 'cynoebook_ad2_section_enabled', 's:1:\"0\";', 0, '2020-02-04 00:14:07', '2021-11-13 02:00:11'),
(76, 'cynoebook_ad_2', 's:15:\"Advertisement 2\";', 0, '2020-02-04 00:14:07', '2020-02-04 19:13:32'),
(77, 'cynoebook_ad3_section_enabled', 's:1:\"0\";', 0, '2020-02-04 00:14:07', '2021-11-13 02:00:11'),
(78, 'cynoebook_ad_3', 's:15:\"Advertisement 3\";', 0, '2020-02-04 00:14:08', '2020-02-04 19:13:33'),
(79, 'cynoebook_home_ad1_section_enabled', 's:1:\"0\";', 0, '2020-02-04 00:14:08', '2020-04-28 02:06:27'),
(80, 'cynoebook_home_ad_1', 's:15:\"Advertisement 1\";', 0, '2020-02-04 00:14:08', '2020-02-10 23:58:43'),
(81, 'cynoebook_features_section_enabled', 's:1:\"1\";', 0, '2020-02-04 00:14:08', '2020-02-04 03:30:23'),
(82, 'cynoebook_feature_1_icon', 's:7:\"fa-book\";', 0, '2020-02-04 00:14:08', '2020-02-10 23:54:17'),
(83, 'cynoebook_feature_2_icon', 's:9:\"fa-upload\";', 0, '2020-02-04 00:14:08', '2020-02-10 23:54:17'),
(84, 'cynoebook_feature_3_icon', 's:16:\"fa-user-circle-o\";', 0, '2020-02-04 00:14:08', '2020-02-10 23:54:17'),
(85, 'cynoebook_feature_4_icon', 's:11:\"fa-download\";', 0, '2020-02-04 00:14:08', '2020-02-10 23:54:17'),
(86, 'cynoebook_featured_ebooks_carousel_section_enabled', 's:1:\"1\";', 0, '2020-02-04 00:14:08', '2020-02-04 19:16:47'),
(87, 'cynoebook_featured_ebooks_section_total_ebooks', 's:2:\"12\";', 0, '2020-02-04 00:14:08', '2020-02-09 20:55:01'),
(88, 'cynoebook_banner_section_1_enabled', 's:1:\"1\";', 0, '2020-02-04 00:14:08', '2020-02-04 19:37:54'),
(89, 'cynoebook_banner_section_1_banner_call_to_action_url', 's:29:\"ebooks?category=comics-mangas\";', 0, '2020-02-04 00:14:08', '2020-02-19 06:36:37'),
(90, 'cynoebook_banner_section_1_banner_open_in_new_window', 's:1:\"1\";', 0, '2020-02-04 00:14:08', '2020-02-04 19:37:54'),
(91, 'cynoebook_home_ad2_section_enabled', 's:1:\"0\";', 0, '2020-02-04 00:14:08', '2020-04-28 02:06:27'),
(92, 'cynoebook_home_ad_2', 's:15:\"Advertisement 2\";', 0, '2020-02-04 00:14:08', '2020-02-04 19:37:01'),
(93, 'cynoebook_recent_ebooks_section_enabled', 's:1:\"1\";', 0, '2020-02-04 00:14:08', '2020-02-04 19:37:01'),
(94, 'cynoebook_recent_ebooks_section_total_ebooks', 's:1:\"8\";', 0, '2020-02-04 00:14:08', '2020-02-06 01:21:45'),
(95, 'cynoebook_banner_section_2_enabled', 's:1:\"1\";', 0, '2020-02-04 00:14:08', '2020-02-04 19:37:01'),
(96, 'cynoebook_banner_section_2_banner_call_to_action_url', 's:32:\"ebooks?category=business-finance\";', 0, '2020-02-04 00:14:08', '2020-02-19 06:36:37'),
(97, 'cynoebook_banner_section_2_banner_open_in_new_window', 's:1:\"1\";', 0, '2020-02-04 00:14:09', '2020-02-04 00:59:43'),
(98, 'cynoebook_home_ad3_section_enabled', 's:1:\"0\";', 0, '2020-02-04 00:14:09', '2020-04-28 02:06:28'),
(99, 'cynoebook_home_ad_3', 's:15:\"Advertisement 3\";', 0, '2020-02-04 00:14:09', '2020-02-04 19:37:02'),
(100, 'cynoebook_ebook_carousel_section_ebooks', 'N;', 0, '2020-02-04 00:14:09', '2020-02-26 23:10:17'),
(101, 'cynoebook_slider_banner_file_id', NULL, 1, '2020-02-04 02:02:04', '2020-02-04 02:02:04'),
(102, 'cynoebook_slider_banner_caption_1', NULL, 1, '2020-02-04 02:02:04', '2020-02-04 02:02:04'),
(103, 'cynoebook_slider_banner_caption_2', NULL, 1, '2020-02-04 02:02:05', '2020-02-04 02:02:05'),
(104, 'cynoebook_slider_banner_call_to_action_text', NULL, 1, '2020-02-04 02:02:05', '2020-02-04 02:02:05'),
(105, 'cynoebook_slider_banner_call_to_action_url', 's:1:\"#\";', 0, '2020-02-04 02:02:06', '2020-02-04 03:27:11'),
(106, 'cynoebook_slider_banner_open_in_new_window', 's:1:\"1\";', 0, '2020-02-04 02:02:06', '2020-02-04 03:27:12'),
(107, 'cynoebook_header_logo', NULL, 1, '2020-02-04 19:08:56', '2020-02-04 19:08:56'),
(108, 'cynoebook_footer_logo', NULL, 1, '2020-02-04 19:08:56', '2020-02-04 19:08:56'),
(109, 'cynoebook_mail_logo', NULL, 1, '2020-02-04 19:08:56', '2020-02-04 19:08:56'),
(110, 'cynoebook_favicon', 's:3:\"260\";', 0, '2020-02-04 19:08:57', '2021-11-13 02:00:11'),
(111, 'cynoebook_footer_two', NULL, 1, '2020-02-13 02:46:18', '2020-02-13 02:46:18'),
(112, 'cynoebook_footer_two_title', NULL, 1, '2020-02-13 02:57:23', '2020-02-13 02:57:23'),
(113, 'enable_registrations', 's:1:\"1\";', 0, '2020-03-03 20:34:46', '2020-03-03 20:34:46'),
(114, 'enable_ebook_upload', 's:1:\"0\";', 0, '2020-03-03 20:46:37', '2024-11-07 05:08:57'),
(115, 'enable_ebook_report', 's:1:\"1\";', 0, '2020-03-03 23:02:22', '2020-03-03 23:02:22'),
(116, 'enable_ebook_print', 's:1:\"1\";', 0, '2020-03-03 23:02:22', '2020-03-03 23:02:22'),
(117, 'enable_ebook_download', 's:1:\"1\";', 0, '2020-03-03 23:02:22', '2021-03-23 05:30:20'),
(118, 'cynoebook_popular_ebooks_section_title', NULL, 1, '2020-03-03 23:45:49', '2020-03-03 23:45:49'),
(119, 'cynoebook_popular_ebooks_carousel_section_enabled', 's:1:\"1\";', 0, '2020-03-03 23:45:50', '2020-03-03 23:45:50'),
(120, 'cynoebook_popular_ebooks_section_total_ebooks', 's:1:\"8\";', 0, '2020-03-03 23:45:50', '2020-03-04 01:42:46'),
(121, 'cynoebook_popular_ebooks_by', 's:4:\"view\";', 0, '2020-03-04 00:40:28', '2020-04-28 02:07:18'),
(122, 'cynoebook_category_tabs_section_title', NULL, 1, '2020-04-15 00:10:23', '2020-04-15 00:10:23'),
(123, 'cynoebook_category_tabs_section_tab_1_title', NULL, 1, '2020-04-15 00:10:23', '2020-04-15 00:10:23'),
(124, 'cynoebook_category_tabs_section_tab_2_title', NULL, 1, '2020-04-15 00:10:23', '2020-04-15 00:10:23'),
(125, 'cynoebook_category_tabs_section_tab_3_title', NULL, 1, '2020-04-15 00:10:24', '2020-04-15 00:10:24'),
(126, 'cynoebook_category_tabs_section_tab_4_title', NULL, 1, '2020-04-15 00:10:24', '2020-04-15 00:10:24'),
(127, 'cynoebook_category_tabs_section_tab_5_title', NULL, 1, '2020-04-15 00:10:24', '2020-04-15 00:10:24'),
(128, 'cynoebook_category_tabs_section_enabled', 's:1:\"1\";', 0, '2020-04-15 00:10:25', '2020-04-15 00:18:36'),
(129, 'cynoebook_category_tabs_section_tab_1_category', 's:1:\"6\";', 0, '2020-04-15 00:10:25', '2020-04-28 02:08:44'),
(130, 'cynoebook_category_tabs_section_tab_1_total_ebooks', 's:1:\"4\";', 0, '2020-04-15 00:10:25', '2020-04-15 01:16:15'),
(131, 'cynoebook_category_tabs_section_tab_2_category', 's:1:\"2\";', 0, '2020-04-15 00:10:25', '2020-04-15 00:18:23'),
(132, 'cynoebook_category_tabs_section_tab_2_total_ebooks', 's:1:\"6\";', 0, '2020-04-15 00:10:25', '2020-04-15 01:16:15'),
(133, 'cynoebook_category_tabs_section_tab_3_category', 's:1:\"5\";', 0, '2020-04-15 00:10:25', '2020-04-15 01:16:15'),
(134, 'cynoebook_category_tabs_section_tab_3_total_ebooks', 's:1:\"8\";', 0, '2020-04-15 00:10:25', '2020-04-15 01:16:15'),
(135, 'cynoebook_category_tabs_section_tab_4_category', 's:2:\"26\";', 0, '2020-04-15 00:10:25', '2020-04-28 02:08:44'),
(136, 'cynoebook_category_tabs_section_tab_4_total_ebooks', 's:2:\"10\";', 0, '2020-04-15 00:10:25', '2020-04-15 01:16:15'),
(137, 'cynoebook_category_tabs_section_tab_5_category', 'N;', 0, '2020-04-15 00:10:25', '2020-04-15 01:40:55'),
(138, 'cynoebook_category_tabs_section_tab_5_total_ebooks', 'N;', 0, '2020-04-15 00:10:25', '2020-04-15 01:40:55'),
(139, 'cynoebook_authors_section_title', NULL, 1, '2020-04-27 00:37:44', '2020-04-27 00:37:44'),
(140, 'cynoebook_users_section_title', NULL, 1, '2020-04-27 00:37:44', '2020-04-27 00:37:44'),
(141, 'cynoebook_authors_section_enabled', 's:1:\"0\";', 0, '2020-04-27 00:37:45', '2024-11-20 08:18:52'),
(142, 'cynoebook_authors_order_by', 's:17:\"top_by_book_count\";', 0, '2020-04-27 00:37:45', '2020-04-27 00:44:28'),
(143, 'cynoebook_authors_section_total_authors', 's:1:\"4\";', 0, '2020-04-27 00:37:45', '2020-04-27 00:43:02'),
(144, 'cynoebook_users_section_enabled', 's:1:\"0\";', 0, '2020-04-27 00:37:45', '2024-11-20 08:18:48'),
(145, 'cynoebook_users_order_by', 's:17:\"top_by_book_count\";', 0, '2020-04-27 00:37:46', '2020-04-27 00:52:01'),
(146, 'cynoebook_users_section_total_authors', 's:1:\"4\";', 0, '2020-04-27 00:37:46', '2020-04-27 00:51:38'),
(147, 'cookie_bar_enabled', 's:1:\"1\";', 0, '2021-03-23 05:30:20', '2021-03-23 05:40:37'),
(148, 'theme_logo_header_color', 's:5:\"dark2\";', 0, '2021-03-23 05:30:20', '2024-11-07 05:08:15'),
(149, 'theme_navbar_header_color', 's:5:\"dark2\";', 0, '2021-03-23 05:30:20', '2024-11-07 05:08:15'),
(150, 'theme_sidebar_color', 's:5:\"dark2\";', 0, '2021-03-23 05:30:20', '2024-11-07 05:08:15'),
(151, 'theme_background_color', 's:3:\"bg3\";', 0, '2021-03-23 05:30:20', '2021-03-23 05:30:20'),
(152, 'member_only_reading_books', 's:1:\"0\";', 0, '2021-03-23 05:30:20', '2021-03-23 05:30:20'),
(153, 'enable_comment', 's:7:\"disable\";', 0, '2021-03-23 05:30:20', '2024-11-07 05:08:15'),
(154, 'ebook_vide_mode', 's:4:\"grid\";', 0, '2021-03-23 05:30:20', '2021-03-23 05:30:20'),
(155, 'newsletter_enabled', 's:1:\"0\";', 0, '2021-03-23 05:30:20', '2021-11-13 02:03:21'),
(156, 'newsletter_display', 's:4:\"both\";', 0, '2021-03-23 05:30:20', '2021-03-23 05:30:20'),
(157, 'mailchimp_api_key', 'N;', 0, '2021-03-23 05:30:20', '2021-11-13 02:03:21'),
(158, 'mailchimp_list_id', 'N;', 0, '2021-03-23 05:30:20', '2021-11-13 02:03:21'),
(159, 'newsletter_bg_image', 's:3:\"255\";', 0, '2021-03-23 05:30:20', '2021-11-13 02:01:26'),
(160, 'daily_ebook_upload_limit', 's:1:\"5\";', 0, '2021-11-12 23:37:03', '2021-11-13 02:03:21'),
(161, 'cynoebook_Categories_menu_dropdown_enabled', 's:1:\"0\";', 0, '2021-11-13 00:23:01', '2021-11-13 00:23:01'),
(162, 'cynoebook_inspired_by_your_browsing_history_section_title', NULL, 1, '2021-11-13 00:23:01', '2021-11-13 00:23:01'),
(163, 'cynoebook_inspired_by_your_browsing_history_section_enabled', 's:1:\"1\";', 0, '2021-11-13 00:23:02', '2021-11-13 00:23:02'),
(164, 'cynoebook_inspired_by_your_browsing_history_section_total_ebooks', 's:1:\"8\";', 0, '2021-11-13 00:23:02', '2021-11-13 00:23:02'),
(165, 'meta_title', 'N;', 0, '2022-07-20 00:42:40', '2022-07-20 01:21:16'),
(167, 'meta_description', 'N;', 0, '2022-07-20 00:42:40', '2022-07-20 01:21:16'),
(169, 'meta_keywords', 'a:0:{}', 0, '2022-07-20 01:45:41', '2022-07-20 01:47:05'),
(170, 'enable_ebook_share_qrcode_button', 's:1:\"0\";', 0, '2024-11-07 05:08:15', '2024-11-07 05:08:15'),
(171, 'enable_file_preview', 's:1:\"0\";', 0, '2024-11-07 05:08:15', '2024-11-07 05:08:15'),
(172, 'disqus_comment_code', 'N;', 0, '2024-11-07 05:08:15', '2024-11-07 05:08:15'),
(173, 'captcha_type', 's:14:\"custom_captcha\";', 0, '2024-11-07 05:08:16', '2024-11-07 05:08:16'),
(174, 'invisible_captcha_site_key', 'N;', 0, '2024-11-07 05:08:16', '2024-11-07 05:08:16'),
(175, 'invisible_captcha_secret_Key', 'N;', 0, '2024-11-07 05:08:16', '2024-11-07 05:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` int UNSIGNED NOT NULL,
  `setting_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `value`) VALUES
(1, 1, 'en', 's:10:\"Adam eBook\";'),
(2, 39, 'en', 's:151:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s\";'),
(3, 13, 'en', 's:61:\"Copyright © {{ site_name }} {{ year }}. All rights reserved.\";'),
(4, 40, 'en', 's:14:\"ALL Categories\";'),
(5, 41, 'en', 's:18:\"Popular Categories\";'),
(6, 42, 'en', 's:14:\"Get to Know Us\";'),
(7, 43, 'en', 's:572:\"<div class=\"contact-info\">\r\n<div class=\"contact-text\">\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>\r\n<p>&nbsp;</p>\r\n<h4>Phone</h4>\r\n123-456-7890</div>\r\n</div>\r\n<div class=\"contact-info\">\r\n<div class=\"contact-text\">\r\n<h4>Email</h4>\r\ninfo@ebook.com</div>\r\n</div>\r\n<div class=\"contact-info\">\r\n<div class=\"contact-text\">\r\n<h4>Address</h4>\r\n4850 Angus Road, New York, New York - 10022</div>\r\n<div class=\"contact-text\">Phone No &ndash; 123-456-7890</div>\r\n</div>\";'),
(8, 44, 'en', 's:14:\"eBooks Library\";'),
(9, 45, 'en', 's:22:\"View / Download eBooks\";'),
(10, 46, 'en', 's:15:\"Upload / Manage\";'),
(11, 47, 'en', 's:11:\"Your eBooks\";'),
(12, 48, 'en', 's:14:\"Private eBooks\";'),
(13, 49, 'en', 's:12:\"Member Only!\";'),
(14, 50, 'en', 's:16:\"Protected eBooks\";'),
(15, 51, 'en', 's:18:\"Password Protected\";'),
(16, 52, 'en', 's:18:\"Featured Documents\";'),
(17, 53, 'en', 's:3:\"253\";'),
(18, 54, 'en', 's:16:\"Comics Documents\";'),
(19, 55, 'en', 's:35:\"With full of new adventures stories\";'),
(20, 56, 'en', 's:8:\"View all\";'),
(21, 57, 'en', 's:16:\"Recent Documents\";'),
(22, 58, 'en', 's:3:\"253\";'),
(23, 59, 'en', 's:18:\"Business Documents\";'),
(24, 60, 'en', 's:42:\"How to raise your business to the up level\";'),
(25, 61, 'en', 's:8:\"View All\";'),
(26, 101, 'en', 's:1:\"5\";'),
(27, 102, 'en', 's:9:\"Caption 1\";'),
(28, 103, 'en', 's:9:\"Caption 2\";'),
(29, 104, 'en', 's:19:\"Call to Action Text\";'),
(30, 107, 'en', 's:3:\"259\";'),
(31, 108, 'en', 's:3:\"259\";'),
(32, 109, 'en', 's:3:\"259\";'),
(33, 111, 'en', 's:262:\"<p><strong>Address : </strong> 4850 Angus Road, New York, New York - 10022</p>\r\n<p><strong>Mail us : </strong><a title=\"Mail to: yourmail@domain.com\" href=\"mailto:yourmail@domain.com\">yourmail@domain.com</a></p>\r\n<p><strong>Phone : </strong>+1 23 456 789 012</p>\";'),
(34, 112, 'en', 's:12:\"Contact Info\";'),
(65, 118, 'en', 's:17:\"Popular Documents\";'),
(66, 122, 'en', 's:18:\"Popular Categories\";'),
(67, 123, 'en', 's:6:\"Comics\";'),
(68, 124, 'en', 's:12:\"Arts & Music\";'),
(69, 125, 'en', 's:8:\"Business\";'),
(70, 126, 'en', 's:4:\"Kids\";'),
(71, 127, 'en', 'N;'),
(72, 139, 'en', 's:11:\"Top Authors\";'),
(73, 140, 'en', 's:9:\"Top Users\";'),
(74, 162, 'en', 's:33:\"Inspired By Your Browsing History\";');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int UNSIGNED NOT NULL,
  `autoplay` tinyint(1) DEFAULT NULL,
  `autoplay_speed` int DEFAULT NULL,
  `arrows` tinyint(1) DEFAULT NULL,
  `dots` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `autoplay`, `autoplay_speed`, `arrows`, `dots`, `created_at`, `updated_at`) VALUES
(1, 1, 3000, 1, NULL, '2019-07-23 00:03:47', '2019-07-23 00:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slides`
--

CREATE TABLE `slider_slides` (
  `id` int UNSIGNED NOT NULL,
  `slider_id` int UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `call_to_action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in_new_window` tinyint(1) DEFAULT NULL,
  `position` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_slides`
--

INSERT INTO `slider_slides` (`id`, `slider_id`, `options`, `call_to_action_url`, `open_in_new_window`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"caption_1\":{\"color\":null,\"delay\":null,\"effect\":\"fadeInRight\"},\"caption_2\":{\"color\":\"white\",\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_3\":{\"color\":\"#8fce00\",\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"color\":null,\"bgcolor\":\"white\",\"delay\":null,\"effect\":\"fadeInUp\"}}', NULL, 0, 0, '2019-07-23 00:03:47', '2020-04-27 06:24:45'),
(5, 1, '{\"caption_1\":{\"color\":\"#cc0000\",\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"color\":\"#8fce00\",\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_3\":{\"color\":\"#6a329f\",\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"color\":\"#cc0000\",\"bgcolor\":\"black\",\"delay\":null,\"effect\":\"fadeInUp\"}}', NULL, 0, 1, '2019-07-23 00:43:18', '2020-04-27 06:24:45'),
(7, 1, '{\"caption_1\":{\"color\":null,\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"color\":null,\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_3\":{\"color\":null,\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"color\":null,\"bgcolor\":null,\"delay\":null,\"effect\":\"fadeInUp\"}}', NULL, 0, 2, '2019-07-23 00:54:39', '2020-04-25 22:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slide_translations`
--

CREATE TABLE `slider_slide_translations` (
  `id` int UNSIGNED NOT NULL,
  `slider_slide_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files_id` int UNSIGNED DEFAULT NULL,
  `caption_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_to_action_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_slide_translations`
--

INSERT INTO `slider_slide_translations` (`id`, `slider_slide_id`, `locale`, `files_id`, `caption_1`, `caption_2`, `caption_3`, `call_to_action_text`) VALUES
(1, 1, 'en', 257, NULL, NULL, NULL, NULL),
(5, 5, 'en', 257, NULL, NULL, NULL, NULL),
(7, 7, 'en', 257, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slider_translations`
--

CREATE TABLE `slider_translations` (
  `id` int UNSIGNED NOT NULL,
  `slider_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_translations`
--

INSERT INTO `slider_translations` (`id`, `slider_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Main slider');

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2024-11-07 01:52:11', '2024-11-07 01:52:11'),
(2, NULL, 'ip', '127.0.0.1', '2024-11-07 01:52:11', '2024-11-07 01:52:11'),
(3, 1, 'user', NULL, '2024-11-07 01:52:11', '2024-11-07 01:52:11'),
(4, NULL, 'global', NULL, '2024-11-11 04:54:48', '2024-11-11 04:54:48'),
(5, NULL, 'ip', '127.0.0.1', '2024-11-11 04:54:48', '2024-11-11 04:54:48'),
(6, 1, 'user', NULL, '2024-11-11 04:54:48', '2024-11-11 04:54:48'),
(7, NULL, 'global', NULL, '2024-11-19 08:24:34', '2024-11-19 08:24:34'),
(8, NULL, 'ip', '127.0.0.1', '2024-11-19 08:24:34', '2024-11-19 08:24:34'),
(9, 1, 'user', NULL, '2024-11-19 08:24:34', '2024-11-19 08:24:34'),
(10, NULL, 'global', NULL, '2024-11-20 01:57:26', '2024-11-20 01:57:26'),
(11, NULL, 'ip', '127.0.0.1', '2024-11-20 01:57:26', '2024-11-20 01:57:26'),
(12, 1, 'user', NULL, '2024-11-20 01:57:26', '2024-11-20 01:57:26'),
(13, NULL, 'global', NULL, '2024-11-20 01:57:31', '2024-11-20 01:57:31'),
(14, NULL, 'ip', '127.0.0.1', '2024-11-20 01:57:31', '2024-11-20 01:57:31'),
(15, 1, 'user', NULL, '2024-11-20 01:57:31', '2024-11-20 01:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `key`, `created_at`, `updated_at`) VALUES
(1, 'eBook', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translation_translations`
--

CREATE TABLE `translation_translations` (
  `id` int UNSIGNED NOT NULL,
  `translation_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translation_translations`
--

INSERT INTO `translation_translations` (`id`, `translation_id`, `locale`, `value`) VALUES
(1, 1, 'Document', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` datetime DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `permissions`, `last_login`, `about`, `facebook`, `twitter`, `google`, `instagram`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'Huzaifa', 'Shamoon', 'Admin', 'admin@gmail.com', '$2y$10$qLFUhrIPC5PvAqmxqdmdk.IENZKEVOPIJH6SQQCuGZ3pOAg44TSTi', NULL, '2024-11-20 13:15:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-06 03:30:20', '2024-11-20 08:15:27'),
(3, 'Sufyan', 'Khanzada', 'sufyan', 'sufyan@gmail.com', '$2y$10$FQKWy9r31U0lTApOsO4Mue1hNRCu..bLL78tCx616YFq17aunVRGm', '[]', '2024-11-07 07:16:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-07 02:15:45', '2024-11-07 02:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_ebook`
--

CREATE TABLE `user_ebook` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `ebook_id` int UNSIGNED NOT NULL,
  `purchased` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_ebook`
--

INSERT INTO `user_ebook` (`id`, `user_id`, `ebook_id`, `purchased`, `created_at`, `updated_at`) VALUES
(2, 1, 5, 1, NULL, NULL),
(3, 1, 2, 1, NULL, NULL),
(4, 1, 8, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-11-06 03:30:20', '2024-11-06 03:30:20'),
(3, 2, '2024-11-07 02:15:45', '2024-11-07 02:15:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_slug_unique` (`slug`),
  ADD KEY `authors_user_id_foreign` (`user_id`);

--
-- Indexes for table `author_translations`
--
ALTER TABLE `author_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `author_translations_author_id_locale_unique` (`author_id`,`locale`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commenter_id_commenter_type_index` (`commenter_id`,`commenter_type`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`),
  ADD KEY `comments_child_id_foreign` (`child_id`);

--
-- Indexes for table `ebooks`
--
ALTER TABLE `ebooks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ebooks_slug_unique` (`slug`),
  ADD KEY `ebooks_user_id_foreign` (`user_id`);

--
-- Indexes for table `ebook_authors`
--
ALTER TABLE `ebook_authors`
  ADD PRIMARY KEY (`ebook_id`,`author_id`),
  ADD KEY `ebook_authors_author_id_foreign` (`author_id`);

--
-- Indexes for table `ebook_categories`
--
ALTER TABLE `ebook_categories`
  ADD PRIMARY KEY (`ebook_id`,`category_id`),
  ADD KEY `ebook_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `ebook_downloads`
--
ALTER TABLE `ebook_downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ebook_downloads_ebook_id_foreign` (`ebook_id`),
  ADD KEY `ebook_downloads_user_id_foreign` (`user_id`);

--
-- Indexes for table `ebook_translations`
--
ALTER TABLE `ebook_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ebook_translations_ebook_id_locale_unique` (`ebook_id`,`locale`);
ALTER TABLE `ebook_translations` ADD FULLTEXT KEY `title` (`title`,`publisher`,`key_word`,`target_reader`);

--
-- Indexes for table `ebook_views`
--
ALTER TABLE `ebook_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ebook_views_ebook_id_foreign` (`ebook_id`),
  ADD KEY `ebook_views_user_id_foreign` (`user_id`);

--
-- Indexes for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_files_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  ADD KEY `entity_files_files_id_index` (`files_id`),
  ADD KEY `entity_files_zone_index` (`zone`);

--
-- Indexes for table `favorite_lists`
--
ALTER TABLE `favorite_lists`
  ADD PRIMARY KEY (`user_id`,`ebook_id`),
  ADD KEY `favorite_lists_ebook_id_foreign` (`ebook_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_user_id_index` (`user_id`),
  ADD KEY `files_filename_index` (`filename`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_parent_id_foreign` (`parent_id`),
  ADD KEY `menu_items_page_id_foreign` (`page_id`),
  ADD KEY `menu_items_menu_id_index` (`menu_id`);

--
-- Indexes for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_item_translations_menu_item_id_locale_unique` (`menu_item_id`,`locale`);

--
-- Indexes for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_translations_menu_id_locale_unique` (`menu_id`,`locale`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_data_entity_type_entity_id_index` (`entity_type`,`entity_id`);

--
-- Indexes for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meta_data_translations_meta_data_id_locale_unique` (`meta_data_id`,`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_translations_page_id_locale_unique` (`page_id`,`locale`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`),
  ADD KEY `persistences_user_id_foreign` (`user_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_user_id_foreign` (`user_id`);

--
-- Indexes for table `reported_ebooks`
--
ALTER TABLE `reported_ebooks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reported_ebooks_ebook_id_foreign` (`ebook_id`),
  ADD KEY `reported_ebooks_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_reviewer_id_index` (`reviewer_id`),
  ADD KEY `reviews_ebook_id_index` (`ebook_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_translations_setting_id_locale_unique` (`setting_id`,`locale`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_slides_slider_id_foreign` (`slider_id`);

--
-- Indexes for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_slide_translations_slider_slide_id_locale_unique` (`slider_slide_id`,`locale`);

--
-- Indexes for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_translations_slider_id_locale_unique` (`slider_id`,`locale`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_foreign` (`user_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_key_index` (`key`);

--
-- Indexes for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translation_translations_translation_id_locale_unique` (`translation_id`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_ebook`
--
ALTER TABLE `user_ebook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ebook_user_id_foreign` (`user_id`),
  ADD KEY `user_ebook_ebook_id_foreign` (`ebook_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `author_translations`
--
ALTER TABLE `author_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ebooks`
--
ALTER TABLE `ebooks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ebook_downloads`
--
ALTER TABLE `ebook_downloads`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ebook_translations`
--
ALTER TABLE `ebook_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ebook_views`
--
ALTER TABLE `ebook_views`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `entity_files`
--
ALTER TABLE `entity_files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=687;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `menu_translations`
--
ALTER TABLE `menu_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reported_ebooks`
--
ALTER TABLE `reported_ebooks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_slides`
--
ALTER TABLE `slider_slides`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slider_translations`
--
ALTER TABLE `slider_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translation_translations`
--
ALTER TABLE `translation_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_ebook`
--
ALTER TABLE `user_ebook`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `author_translations`
--
ALTER TABLE `author_translations`
  ADD CONSTRAINT `author_translations_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ebooks`
--
ALTER TABLE `ebooks`
  ADD CONSTRAINT `ebooks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ebook_authors`
--
ALTER TABLE `ebook_authors`
  ADD CONSTRAINT `ebook_authors_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ebook_authors_ebook_id_foreign` FOREIGN KEY (`ebook_id`) REFERENCES `ebooks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ebook_categories`
--
ALTER TABLE `ebook_categories`
  ADD CONSTRAINT `ebook_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ebook_categories_ebook_id_foreign` FOREIGN KEY (`ebook_id`) REFERENCES `ebooks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ebook_downloads`
--
ALTER TABLE `ebook_downloads`
  ADD CONSTRAINT `ebook_downloads_ebook_id_foreign` FOREIGN KEY (`ebook_id`) REFERENCES `ebooks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ebook_downloads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ebook_translations`
--
ALTER TABLE `ebook_translations`
  ADD CONSTRAINT `ebook_translations_ebook_id_foreign` FOREIGN KEY (`ebook_id`) REFERENCES `ebooks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ebook_views`
--
ALTER TABLE `ebook_views`
  ADD CONSTRAINT `ebook_views_ebook_id_foreign` FOREIGN KEY (`ebook_id`) REFERENCES `ebooks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ebook_views_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD CONSTRAINT `entity_files_files_id_foreign` FOREIGN KEY (`files_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorite_lists`
--
ALTER TABLE `favorite_lists`
  ADD CONSTRAINT `favorite_lists_ebook_id_foreign` FOREIGN KEY (`ebook_id`) REFERENCES `ebooks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorite_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD CONSTRAINT `menu_item_translations_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD CONSTRAINT `menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD CONSTRAINT `meta_data_translations_meta_data_id_foreign` FOREIGN KEY (`meta_data_id`) REFERENCES `meta_data` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `persistences`
--
ALTER TABLE `persistences`
  ADD CONSTRAINT `persistences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reported_ebooks`
--
ALTER TABLE `reported_ebooks`
  ADD CONSTRAINT `reported_ebooks_ebook_id_foreign` FOREIGN KEY (`ebook_id`) REFERENCES `ebooks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reported_ebooks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ebook_id_foreign` FOREIGN KEY (`ebook_id`) REFERENCES `ebooks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD CONSTRAINT `slider_slides_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD CONSTRAINT `slider_slide_translations_slider_slide_id_foreign` FOREIGN KEY (`slider_slide_id`) REFERENCES `slider_slides` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD CONSTRAINT `slider_translations_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `throttle`
--
ALTER TABLE `throttle`
  ADD CONSTRAINT `throttle_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD CONSTRAINT `translation_translations_translation_id_foreign` FOREIGN KEY (`translation_id`) REFERENCES `translations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_ebook`
--
ALTER TABLE `user_ebook`
  ADD CONSTRAINT `user_ebook_ebook_id_foreign` FOREIGN KEY (`ebook_id`) REFERENCES `ebooks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_ebook_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
