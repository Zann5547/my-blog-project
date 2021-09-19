-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 19, 2021 at 07:13 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', 'laravel-2021-07-14-60ee715b99bb6.png', '2021-07-13 23:08:43', '2021-07-13 23:08:44'),
(2, 'Php', 'php', 'php-2021-07-14-60ee71b65a5fd.png', '2021-07-13 23:10:14', '2021-07-13 23:10:15'),
(3, 'HTML', 'html', 'html-2021-07-14-60ee72c439c5d.jpg', '2021-07-13 23:14:44', '2021-07-13 23:14:45'),
(4, 'Vue js', 'vue-js', 'vue-js-2021-07-14-60ee732482146.png', '2021-07-13 23:16:20', '2021-07-13 23:16:21'),
(5, 'Laravel & Vue', 'laravel-vue', 'laravel-vue-2021-07-14-60ee73efd76ea.jpg', '2021-07-13 23:19:43', '2021-07-13 23:19:44'),
(6, 'github', 'github', 'github-2021-07-14-60ee744ad78a2.png', '2021-07-13 23:21:14', '2021-07-13 23:21:15'),
(7, 'Forge', 'forge', 'forge-2021-07-14-60ee74e18a7fe.jpg', '2021-07-13 23:23:45', '2021-07-13 23:23:45'),
(8, 'CSS', 'css', 'css-2021-07-14-60ee7518c6abb.jpg', '2021-07-13 23:24:40', '2021-07-13 23:24:41'),
(9, 'JavaScript', 'javascript', 'javascript-2021-07-14-60ee75692a610.jpg', '2021-07-13 23:26:01', '2021-07-13 23:26:01'),
(10, 'Python', 'python', 'python-2021-07-14-60ee75b864226.png', '2021-07-13 23:27:20', '2021-07-13 23:27:21'),
(11, 'Ammi', 'ammi', 'ammi-2021-08-02-6107f91ee4b4e.jpg', '2021-08-02 07:54:38', '2021-08-02 07:54:40'),
(12, 'Relax', 'relax', 'relax-2021-08-26-6127a96c70f63.jpg', '2021-08-26 08:47:08', '2021-08-26 08:47:14');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`) VALUES
(4, 1, 2, '2021-07-14 00:58:07', '2021-07-14 00:58:07'),
(5, 2, 2, '2021-07-14 00:58:07', '2021-07-14 00:58:07'),
(6, 5, 2, '2021-07-14 00:58:07', '2021-07-14 00:58:07'),
(7, 1, 3, '2021-07-14 01:02:15', '2021-07-14 01:02:15'),
(8, 2, 3, '2021-07-14 01:02:15', '2021-07-14 01:02:15'),
(9, 5, 3, '2021-07-14 01:02:15', '2021-07-14 01:02:15'),
(10, 2, 4, '2021-07-14 01:08:04', '2021-07-14 01:08:04'),
(11, 7, 4, '2021-07-14 01:08:04', '2021-07-14 01:08:04'),
(12, 7, 5, '2021-07-14 01:15:30', '2021-07-14 01:15:30'),
(13, 10, 5, '2021-07-14 01:15:30', '2021-07-14 01:15:30'),
(14, 3, 6, '2021-07-14 01:17:17', '2021-07-14 01:17:17'),
(15, 8, 6, '2021-07-14 01:17:17', '2021-07-14 01:17:17'),
(16, 9, 6, '2021-07-14 01:17:17', '2021-07-14 01:17:17'),
(17, 1, 7, '2021-07-14 01:19:32', '2021-07-14 01:19:32'),
(18, 4, 7, '2021-07-14 01:19:32', '2021-07-14 01:19:32'),
(19, 5, 7, '2021-07-14 01:19:32', '2021-07-14 01:19:32'),
(20, 9, 7, '2021-07-14 01:19:32', '2021-07-14 01:19:32'),
(21, 6, 8, '2021-07-14 01:31:57', '2021-07-14 01:31:57'),
(22, 7, 8, '2021-07-14 01:31:57', '2021-07-14 01:31:57'),
(23, 3, 9, '2021-07-14 01:33:53', '2021-07-14 01:33:53'),
(24, 8, 9, '2021-07-14 01:33:53', '2021-07-14 01:33:53'),
(25, 9, 9, '2021-07-14 01:33:53', '2021-07-14 01:33:53'),
(26, 3, 10, '2021-07-14 01:35:40', '2021-07-14 01:35:40'),
(27, 8, 10, '2021-07-14 01:35:40', '2021-07-14 01:35:40'),
(28, 9, 10, '2021-07-14 01:35:40', '2021-07-14 01:35:40'),
(29, 1, 11, '2021-07-14 02:00:23', '2021-07-14 02:00:23'),
(30, 2, 11, '2021-07-14 02:00:23', '2021-07-14 02:00:23'),
(31, 4, 11, '2021-07-14 02:00:23', '2021-07-14 02:00:23'),
(32, 5, 11, '2021-07-14 02:00:23', '2021-07-14 02:00:23'),
(33, 1, 12, '2021-07-14 02:11:41', '2021-07-14 02:11:41'),
(34, 6, 12, '2021-07-14 02:11:41', '2021-07-14 02:11:41'),
(35, 7, 12, '2021-07-14 02:11:41', '2021-07-14 02:11:41'),
(36, 10, 12, '2021-07-14 02:11:41', '2021-07-14 02:11:41'),
(37, 3, 13, '2021-07-14 05:08:56', '2021-07-14 05:08:56'),
(38, 8, 13, '2021-07-14 05:08:56', '2021-07-14 05:08:56'),
(39, 1, 14, '2021-08-02 07:59:01', '2021-08-02 07:59:01'),
(40, 2, 14, '2021-08-02 07:59:01', '2021-08-02 07:59:01'),
(41, 3, 14, '2021-08-02 07:59:01', '2021-08-02 07:59:01'),
(42, 4, 14, '2021-08-02 07:59:01', '2021-08-02 07:59:01'),
(43, 2, 15, '2021-08-02 08:02:32', '2021-08-02 08:02:32'),
(44, 3, 15, '2021-08-02 08:02:32', '2021-08-02 08:02:32'),
(45, 5, 15, '2021-08-02 08:02:32', '2021-08-02 08:02:32'),
(46, 2, 16, '2021-09-03 08:08:06', '2021-09-03 08:08:06'),
(47, 4, 16, '2021-09-03 08:08:06', '2021-09-03 08:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Laravel 6', '2021-07-14 00:59:34', '2021-07-14 00:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"6ed9d281-07e3-4276-b8df-a5d8f3b7d304\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"07ac1e3a-b692-48b2-a204-8889e1f50598\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626245905, 1626245905),
(2, 'default', '{\"uuid\":\"73251896-e07f-4189-9f79-bec811dbc979\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"e177c6d3-b8e1-4067-a232-475b2f3d176a\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626246210, 1626246210),
(3, 'default', '{\"uuid\":\"705b5e06-1e51-4018-8658-19086a76a613\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"80005a54-5edb-4c34-8de5-870ae7e65d56\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626246930, 1626246930),
(4, 'default', '{\"uuid\":\"c69867b5-3f6e-4656-80ff-95c408f0b155\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"9c43e67d-33fb-4afe-983b-cce66bc101ad\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626247037, 1626247037),
(5, 'default', '{\"uuid\":\"dea422aa-5eb6-4d9c-a637-dd260e89c7ff\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"116bf920-198f-4589-851c-d8cd7ff9bc90\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626247172, 1626247172),
(6, 'default', '{\"uuid\":\"f8b6049d-d2e3-4a9d-9cb8-6cdda566b958\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"7d8b0d6b-2370-41c8-8995-dbdcf5f52dcf\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626247213, 1626247213),
(7, 'default', '{\"uuid\":\"53f585e9-60e7-4098-be5b-1fa45b5587a4\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"fa0138e0-e81e-4f6f-8ba5-0897b71219d2\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626247217, 1626247217),
(8, 'default', '{\"uuid\":\"fcb01cc0-1932-47dc-85b7-d653548ae722\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"ab69df38-c868-4899-84fc-a3e0a53db024\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626247223, 1626247223),
(9, 'default', '{\"uuid\":\"774282b1-c6ea-4930-936e-68a18f5d18bc\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"a1a2660d-7269-4f27-8093-cd7ac121773c\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626247917, 1626247917),
(10, 'default', '{\"uuid\":\"5a8ef1f6-305e-4114-9ec5-27ea30b1c6bc\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"4406e568-cc7f-42f1-ac43-93f6c8bff411\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626248033, 1626248033),
(11, 'default', '{\"uuid\":\"1b453e17-4c29-48d8-8666-bc90b92c6c7b\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"c5015fb3-7314-4339-a1fb-f5a076c61153\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626248140, 1626248140),
(12, 'default', '{\"uuid\":\"2b48158a-b00f-4583-8462-d04a34f5328d\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"1891a339-ac79-45a3-b51c-3c829f684aa2\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626248274, 1626248274),
(13, 'default', '{\"uuid\":\"36878096-01d2-4d9c-bcdd-42b47ae3ac09\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"3bc5fe13-a5d1-4ab0-97ff-769ac17d3d9a\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626248278, 1626248278),
(14, 'default', '{\"uuid\":\"f149da37-6d8e-441f-b537-886cf2517778\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"41cc95cf-5441-444d-8235-88041519beb4\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626248281, 1626248281),
(15, 'default', '{\"uuid\":\"b059b4eb-5234-4ef5-a5fe-0b5121388596\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"da255755-6f94-497f-95d5-d9afd666a6e7\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626250303, 1626250303),
(16, 'default', '{\"uuid\":\"4efe102e-e937-42f3-8c0f-465e3059ad25\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:4;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"5ef1a737-0dca-4842-9034-6d824dd6393f\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626250373, 1626250373),
(17, 'default', '{\"uuid\":\"8eb5f6cf-d3cb-43dd-aa53-950290c266ad\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"2b383864-2bde-40ed-a334-c05b22fb1f05\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626260936, 1626260936),
(18, 'default', '{\"uuid\":\"66386dd8-a24d-4972-9dda-56a95dcc0183\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:5;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"20e15c9a-1cad-477f-aab7-2352ecf4b0be\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1626261059, 1626261059),
(19, 'default', '{\"uuid\":\"bde294c8-b257-4234-9537-68b4f86d8adf\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"fe351b75-c8e2-49b1-b3ee-40fb9ef40201\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1627912956, 1627912956),
(20, 'default', '{\"uuid\":\"7aeb248e-102b-40b1-b2df-61ab045f81ea\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"8eb285b3-ba16-468f-9572-4b17ce930c46\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1627913062, 1627913062),
(21, 'default', '{\"uuid\":\"a7648f4a-ed18-4998-83b1-1f73ccfb4d55\",\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"bc701c95-cb5e-402d-96f1-dc102a1ec0ba\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1630678087, 1630678087),
(22, 'default', '{\"uuid\":\"123dae1e-e920-4848-b2fa-cb17ecbab5e2\",\"displayName\":\"App\\\\Notifications\\\\AuthorPostApproved\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApproved\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"3f149c2a-ff35-46ca-9c9e-65430536af63\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1630678203, 1630678203),
(23, 'default', '{\"uuid\":\"b648c5d1-3593-474e-87fa-499835d5d787\",\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":1:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:13:\\\"ammi@blog.com\\\";}}}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":10:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"fc62dd2a-0918-47b8-85af-8406c2176e77\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1630678203, 1630678203);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_06_30_175643_create_roles_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_07_01_095314_create_tags_table', 1),
(6, '2021_07_01_133304_create_categories_table', 1),
(7, '2021_07_03_185655_create_posts_table', 1),
(8, '2021_07_03_185846_create_category_post_table', 1),
(9, '2021_07_03_185905_create_post_tag_table', 1),
(10, '2021_07_09_135700_create_subscribers_table', 1),
(11, '2021_07_09_170535_create_jobs_table', 1),
(12, '2021_07_11_140904_create_post_user_table', 1),
(13, '2021_07_12_152426_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(2, 1, 'Your First Laravel Project', 'your-first-laravel-project', 'your-first-laravel-project-2021-07-14-60ee8afe2d0ec.png', '<p>Laravel is a web application framework with expressive, elegant syntax. A web framework provides a structure and starting point for creating your application, allowing you to focus on creating something amazing while we sweat the details.</p>\r\n<p>Laravel strives to provide an amazing developer experience while providing powerful features such as thorough dependency injection, an expressive database abstraction layer, queues and scheduled jobs, unit and integration testing, and more.</p>\r\n<p>Whether you are new to PHP or web frameworks or have years of experience, Laravel is a framework that can grow with you. We\'ll help you take your first steps as a web developer or give you a boost as you take your expertise to the next level. We can\'t wait to see what you build.</p>\r\n<p>&nbsp;</p>\r\n<h3 id=\"why-laravel\"><a href=\"https://laravel.com/docs/8.x#why-laravel\">Why Laravel?</a></h3>\r\n<p>There are a variety of tools and frameworks available to you when building a web application. However, we believe Laravel is the best choice for building modern, full-stack web applications.</p>\r\n<h4>A Progressive Framework</h4>\r\n<p>We like to call Laravel a \"progressive\" framework. By that, we mean that Laravel grows with you. If you\'re just taking your first steps into web development, Laravel\'s vast library of documentation, guides, and&nbsp;<a href=\"https://laracasts.com/\">video tutorials</a>&nbsp;will help you learn the ropes without becoming overwhelmed.</p>\r\n<p>If you\'re a senior developer, Laravel gives you robust tools for&nbsp;<a href=\"https://laravel.com/docs/8.x/container\">dependency injection</a>,&nbsp;<a href=\"https://laravel.com/docs/8.x/testing\">unit testing</a>,&nbsp;<a href=\"https://laravel.com/docs/8.x/queues\">queues</a>,&nbsp;<a href=\"https://laravel.com/docs/8.x/broadcasting\">real-time events</a>, and more. Laravel is fine-tuned for building professional web applications and ready to handle enterprise work loads.</p>\r\n<h4>A Scalable Framework</h4>\r\n<p>Laravel is incredibly scalable. Thanks to the scaling-friendly nature of PHP and Laravel\'s built-in support for fast, distributed cache systems like Redis, horizontal scaling with Laravel is a breeze. In fact, Laravel applications have been easily scaled to handle hundreds of millions of requests per month.</p>\r\n<p>Need extreme scaling? Platforms like&nbsp;<a href=\"https://vapor.laravel.com/\">Laravel Vapor</a>&nbsp;allow you to run your Laravel application at nearly limitless scale on AWS\'s latest serverless technology.</p>\r\n<h4>A Community Framework</h4>\r\n<p>Laravel combines the best packages in the PHP ecosystem to offer the most robust and developer friendly framework available. In addition, thousands of talented developers from around the world have&nbsp;<a href=\"https://github.com/laravel/framework\">contributed to the framework</a>. Who knows, maybe you\'ll even become a Laravel contributor.</p>', 1, 1, 1, '2021-07-14 00:58:07', '2021-07-14 00:59:01'),
(3, 1, 'Eloquent: Getting Started', 'eloquent-getting-started', 'eloquent-getting-started-2021-07-14-60ee8bf5d8823.png', '<p>To get started, let\'s create an Eloquent model. Models typically live in the&nbsp;<code>app\\Models</code>&nbsp;directory and extend the&nbsp;<code>Illuminate\\Database\\Eloquent\\Model</code>&nbsp;class. You may use the&nbsp;<code>make:model</code>&nbsp;<a href=\"https://laravel.com/docs/8.x/artisan\">Artisan command</a>&nbsp;to generate a new model:</p>\r\n<pre class=\" language-php\" tabindex=\"0\"><code class=\" language-php\">php artisan make<span class=\"token punctuation\">:</span>model Flight</code></pre>\r\n<p>If you would like to generate a&nbsp;<a href=\"https://laravel.com/docs/8.x/migrations\">database migration</a>&nbsp;when you generate the model, you may use the&nbsp;<code>--migration</code>&nbsp;or&nbsp;<code>-m</code>&nbsp;option:</p>\r\n<pre class=\" language-php\" tabindex=\"0\"><code class=\" language-php\">php artisan make<span class=\"token punctuation\">:</span>model Flight <span class=\"token operator\">--</span>migration</code></pre>\r\n<p>You may generate various other types of classes when generating a model, such as factories, seeders, and controllers. In addition, these options may be combined to create multiple classes at once:</p>\r\n<pre class=\" language-bash\" tabindex=\"0\"><code class=\" language-bash\"><span class=\"token comment\"># Generate a model and a FlightFactory class...</span>\r\nphp artisan make:model Flight --factory\r\nphp artisan make:model Flight -f\r\n\r\n<span class=\"token comment\"># Generate a model and a FlightSeeder class...</span>\r\nphp artisan make:model Flight --seed\r\nphp artisan make:model Flight -s\r\n\r\n<span class=\"token comment\"># Generate a model and a FlightController class...</span>\r\nphp artisan make:model Flight --controller\r\nphp artisan make:model Flight -c\r\n\r\n<span class=\"token comment\"># Generate a model and a migration, factory, seeder, and controller...</span>\r\nphp artisan make:model Flight -mfsc\r\n\r\n<span class=\"token comment\"># Shortcut to generate a model, migration, factory, seeder, and controller...</span>\r\nphp artisan make:model Flight --all\r\n\r\n<span class=\"token comment\"># Generate a pivot model...</span>\r\nphp artisan make:model Member --pivot</code></pre>\r\n<p>&nbsp;</p>\r\n<h2 id=\"eloquent-model-conventions\"><a href=\"https://laravel.com/docs/8.x/eloquent#eloquent-model-conventions\">Eloquent Model Conventions</a></h2>\r\n<p>Models generated by the&nbsp;<code>make:model</code>&nbsp;command will be placed in the&nbsp;<code>app/Models</code>&nbsp;directory. Let\'s examine a basic model class and discuss some of Eloquent\'s key conventions:</p>\r\n<pre class=\" language-php\" tabindex=\"0\"><code class=\" language-php\"><span class=\"token php language-php\"><span class=\"token delimiter important\">&lt;?php</span>\r\n\r\n<span class=\"token keyword\">namespace</span> <span class=\"token package\">App<span class=\"token punctuation\">\\</span>Models</span><span class=\"token punctuation\">;</span>\r\n\r\n<span class=\"token keyword\">use</span> <span class=\"token package\">Illuminate<span class=\"token punctuation\">\\</span>Database<span class=\"token punctuation\">\\</span>Eloquent<span class=\"token punctuation\">\\</span>Model</span><span class=\"token punctuation\">;</span>\r\n\r\n<span class=\"token keyword\">class</span> <span class=\"token class-name-definition class-name\">Flight</span> <span class=\"token keyword\">extends</span> <span class=\"token class-name\">Model</span>\r\n<span class=\"token punctuation\">{</span>\r\n    <span class=\"token comment\">//</span>\r\n<span class=\"token punctuation\">}</span></span></code></pre>\r\n<p>&nbsp;</p>\r\n<h3 id=\"table-names\"><a href=\"https://laravel.com/docs/8.x/eloquent#table-names\">Table Names</a></h3>\r\n<p>After glancing at the example above, you may have noticed that we did not tell Eloquent which database table corresponds to our&nbsp;<code>Flight</code>&nbsp;model. By convention, the \"snake case\", plural name of the class will be used as the table name unless another name is explicitly specified. So, in this case, Eloquent will assume the&nbsp;<code>Flight</code>&nbsp;model stores records in the&nbsp;<code>flights</code>&nbsp;table, while an&nbsp;<code>AirTrafficController</code>&nbsp;model would store records in an&nbsp;<code>air_traffic_controllers</code>&nbsp;table.</p>\r\n<p>If your model\'s corresponding database table does not fit this convention, you may manually specify the model\'s table name by defining a&nbsp;<code>table</code>&nbsp;property on the model:</p>\r\n<pre class=\" language-php\" tabindex=\"0\"><code class=\" language-php\"><span class=\"token php language-php\"><span class=\"token delimiter important\">&lt;?php</span>\r\n\r\n<span class=\"token keyword\">namespace</span> <span class=\"token package\">App<span class=\"token punctuation\">\\</span>Models</span><span class=\"token punctuation\">;</span>\r\n\r\n<span class=\"token keyword\">use</span> <span class=\"token package\">Illuminate<span class=\"token punctuation\">\\</span>Database<span class=\"token punctuation\">\\</span>Eloquent<span class=\"token punctuation\">\\</span>Model</span><span class=\"token punctuation\">;</span>\r\n\r\n<span class=\"token keyword\">class</span> <span class=\"token class-name-definition class-name\">Flight</span> <span class=\"token keyword\">extends</span> <span class=\"token class-name\">Model</span>\r\n<span class=\"token punctuation\">{</span>\r\n    <span class=\"token comment\">/**\r\n     * The table associated with the model.\r\n     *\r\n     * @var string\r\n     */</span>\r\n    <span class=\"token keyword\">protected</span> <span class=\"token variable\">$table</span> <span class=\"token operator\">=</span> <span class=\"token string single-quoted-string\">\'my_flights\'</span><span class=\"token punctuation\">;</span>\r\n<span class=\"token punctuation\">}</span></span></code></pre>\r\n<p>&nbsp;</p>\r\n<h3 id=\"primary-keys\"><a href=\"https://laravel.com/docs/8.x/eloquent#primary-keys\">Primary Keys</a></h3>\r\n<p>Eloquent will also assume that each model\'s corresponding database table has a primary key column named&nbsp;<code>id</code>. If necessary, you may define a protected&nbsp;<code>$primaryKey</code>&nbsp;property on your model to specify a different column that serves as your model\'s primary key:</p>\r\n<pre class=\" language-php\" tabindex=\"0\"><code class=\" language-php\"><span class=\"token php language-php\"><span class=\"token delimiter important\">&lt;?php</span>\r\n\r\n<span class=\"token keyword\">namespace</span> <span class=\"token package\">App<span class=\"token punctuation\">\\</span>Models</span><span class=\"token punctuation\">;</span>\r\n\r\n<span class=\"token keyword\">use</span> <span class=\"token package\">Illuminate<span class=\"token punctuation\">\\</span>Database<span class=\"token punctuation\">\\</span>Eloquent<span class=\"token punctuation\">\\</span>Model</span><span class=\"token punctuation\">;</span>\r\n\r\n<span class=\"token keyword\">class</span> <span class=\"token class-name-definition class-name\">Flight</span> <span class=\"token keyword\">extends</span> <span class=\"token class-name\">Model</span>\r\n<span class=\"token punctuation\">{</span>\r\n    <span class=\"token comment\">/**\r\n     * The primary key associated with the table.\r\n     *\r\n     * @var string\r\n     */</span>\r\n    <span class=\"token keyword\">protected</span> <span class=\"token variable\">$primaryKey</span> <span class=\"token operator\">=</span> <span class=\"token string single-quoted-string\">\'flight_id\'</span><span class=\"token punctuation\">;</span>\r\n<span class=\"token punctuation\">}</span></span></code></pre>\r\n<p>In addition, Eloquent assumes that the primary key is an incrementing integer value, which means that Eloquent will automatically cast the primary key to an integer. If you wish to use a non-incrementing or a non-numeric primary key you must define a public&nbsp;<code>$incrementing</code>&nbsp;property on your model that is set to&nbsp;<code>false</code>:</p>\r\n<pre class=\" language-php\" tabindex=\"0\"><code class=\" language-php\"><span class=\"token php language-php\"><span class=\"token delimiter important\">&lt;?php</span>\r\n\r\n<span class=\"token keyword\">class</span> <span class=\"token class-name-definition class-name\">Flight</span> <span class=\"token keyword\">extends</span> <span class=\"token class-name\">Model</span>\r\n<span class=\"token punctuation\">{</span>\r\n    <span class=\"token comment\">/**\r\n     * Indicates if the model\'s ID is auto-incrementing.\r\n     *\r\n     * @var bool\r\n     */</span>\r\n    <span class=\"token keyword\">public</span> <span class=\"token variable\">$incrementing</span> <span class=\"token operator\">=</span> <span class=\"token constant boolean\">false</span><span class=\"token punctuation\">;</span>\r\n<span class=\"token punctuation\">}</span></span></code></pre>\r\n<p>If your model\'s primary key is not an integer, you should define a protected&nbsp;<code>$keyType</code>&nbsp;property on your model. This property should have a value of&nbsp;<code>string</code>:</p>\r\n<pre class=\" language-php\" tabindex=\"0\"><code class=\" language-php\"><span class=\"token php language-php\"><span class=\"token delimiter important\">&lt;?php</span>\r\n\r\n<span class=\"token keyword\">class</span> <span class=\"token class-name-definition class-name\">Flight</span> <span class=\"token keyword\">extends</span> <span class=\"token class-name\">Model</span>\r\n<span class=\"token punctuation\">{</span>\r\n    <span class=\"token comment\">/**\r\n     * The data type of the auto-incrementing ID.\r\n     *\r\n     * @var string\r\n     */</span>\r\n    <span class=\"token keyword\">protected</span> <span class=\"token variable\">$keyType</span> <span class=\"token operator\">=</span> <span class=\"token string single-quoted-string\">\'string\'</span><span class=\"token punctuation\">;</span>\r\n<span class=\"token punctuation\">}</span></span></code></pre>\r\n<p>&nbsp;</p>\r\n<h4 id=\"composite-primary-keys\"><a href=\"https://laravel.com/docs/8.x/eloquent#composite-primary-keys\">\"Composite\" Primary Keys</a></h4>\r\n<p>Eloquent requires each model to have at least one uniquely identifying \"ID\" that can serve as its primary key. \"Composite\" primary keys are not supported by Eloquent models. However, you are free to add additional multi-column, unique indexes to your database tables in addition to the table\'s uniquely identifying primary key.</p>', 0, 1, 1, '2021-07-14 01:02:15', '2021-07-14 01:03:30'),
(4, 1, 'Solid php tutorial', 'solid-php-tutorial', 'solid-php-tutorial-2021-07-14-60ee8d535df58.png', '<p>Laravel\'s&nbsp;<a href=\"https://laravel.com/docs/8.x/database-testing#defining-model-factories\">model factories</a>&nbsp;feature has been totally rewritten to support classes and is not compatible with Laravel 7.x style factories. However, to ease the upgrade process, a new&nbsp;<code>laravel/legacy-factories</code>&nbsp;package has been created to continue using your existing factories with Laravel 8.x. You may install this package via Composer:</p>\r\n<pre class=\" language-php\" tabindex=\"0\"><code class=\" language-php\">composer <span class=\"token keyword\">require</span> laravel<span class=\"token operator\">/</span>legacy<span class=\"token operator\">-</span>factories</code></pre>\r\n<p>&nbsp;</p>\r\n<h4 id=\"the-castable-interface\"><a href=\"https://laravel.com/docs/8.x/upgrade#the-castable-interface\">The&nbsp;<code>Castable</code>&nbsp;Interface</a></h4>\r\n<p><strong>Likelihood Of Impact: Low</strong></p>\r\n<p>The&nbsp;<code>castUsing</code>&nbsp;method of the&nbsp;<code>Castable</code>&nbsp;interface has been updated to accept an array of arguments. If you are implementing this interface you should update your implementation accordingly:</p>\r\n<pre class=\" language-php\" tabindex=\"0\"><code class=\" language-php\"><span class=\"token keyword\">public</span> <span class=\"token keyword\">static</span> <span class=\"token keyword\">function</span> <span class=\"token function-definition function\">castUsing</span><span class=\"token punctuation\">(</span><span class=\"token keyword type-hint\">array</span> <span class=\"token variable\">$arguments</span><span class=\"token punctuation\">)</span><span class=\"token punctuation\">;</span></code></pre>\r\n<p>&nbsp;</p>\r\n<h4 id=\"increment-decrement-events\"><a href=\"https://laravel.com/docs/8.x/upgrade#increment-decrement-events\">Increment / Decrement Events</a></h4>\r\n<p><strong>Likelihood Of Impact: Low</strong></p>\r\n<p>Proper \"update\" and \"save\" related model events will now be dispatched when executing the&nbsp;<code>increment</code>&nbsp;or&nbsp;<code>decrement</code>&nbsp;methods on Eloquent model instances.</p>\r\n<p>&nbsp;</p>\r\n<h3 id=\"events\"><a href=\"https://laravel.com/docs/8.x/upgrade#events\">Events</a></h3>\r\n<p>&nbsp;</p>\r\n<h4 id=\"the-event-service-provider-class\"><a href=\"https://laravel.com/docs/8.x/upgrade#the-event-service-provider-class\">The&nbsp;<code>EventServiceProvider</code>&nbsp;Class</a></h4>\r\n<p><strong>Likelihood Of Impact: Low</strong></p>\r\n<p>If your&nbsp;<code>App\\Providers\\EventServiceProvider</code>&nbsp;class contains a&nbsp;<code>register</code>&nbsp;function, you should ensure that you call&nbsp;<code>parent::register</code>&nbsp;at the beginning of this method. Otherwise, your application\'s events will not be registered.</p>\r\n<p>&nbsp;</p>\r\n<h4 id=\"the-dispatcher-contract\"><a href=\"https://laravel.com/docs/8.x/upgrade#the-dispatcher-contract\">The&nbsp;<code>Dispatcher</code>&nbsp;Contract</a></h4>\r\n<p><strong>Likelihood Of Impact: Low</strong></p>\r\n<p>The&nbsp;<code>listen</code>&nbsp;method of the&nbsp;<code>Illuminate\\Contracts\\Events\\Dispatcher</code>&nbsp;contract has been updated to make the&nbsp;<code>$listener</code>&nbsp;property optional. This change was made to support automatic detection of handled event types via reflection. If you are manually implementing this interface, you should update your implementation accordingly:</p>\r\n<pre class=\" language-php\" tabindex=\"0\"><code class=\" language-php\"><span class=\"token keyword\">public</span> <span class=\"token keyword\">function</span> <span class=\"token function-definition function\">listen</span><span class=\"token punctuation\">(</span><span class=\"token variable\">$events</span><span class=\"token punctuation\">,</span> <span class=\"token variable\">$listener</span> <span class=\"token operator\">=</span> <span class=\"token constant\">null</span><span class=\"token punctuation\">)</span><span class=\"token punctuation\">;</span></code></pre>\r\n<p>&nbsp;</p>\r\n<h3 id=\"framework\"><a href=\"https://laravel.com/docs/8.x/upgrade#framework\">Framework</a></h3>\r\n<p>&nbsp;</p>\r\n<h4 id=\"maintenance-mode-updates\"><a href=\"https://laravel.com/docs/8.x/upgrade#maintenance-mode-updates\">Maintenance Mode Updates</a></h4>\r\n<p><strong>Likelihood Of Impact: Optional</strong></p>\r\n<p>The&nbsp;<a href=\"https://laravel.com/docs/8.x/configuration#maintenance-mode\">maintenance mode</a>&nbsp;feature of Laravel has been improved in Laravel 8.x. Pre-rendering the maintenance mode template is now supported and eliminates the chances of end users encountering errors during maintenance mode. However, to support this, the following lines must be added to your&nbsp;<code>public/index.php</code>&nbsp;file. These lines should be placed directly under the existing&nbsp;<code>LARAVEL_START</code>&nbsp;constant definition:</p>\r\n<pre class=\" language-php\" tabindex=\"0\"><code class=\" language-php\"><span class=\"token function\">define</span><span class=\"token punctuation\">(</span><span class=\"token string single-quoted-string\">\'LARAVEL_START\'</span><span class=\"token punctuation\">,</span> <span class=\"token function\">microtime</span><span class=\"token punctuation\">(</span><span class=\"token constant boolean\">true</span><span class=\"token punctuation\">)</span><span class=\"token punctuation\">)</span><span class=\"token punctuation\">;</span>\r\n\r\n<span class=\"token keyword\">if</span> <span class=\"token punctuation\">(</span><span class=\"token function\">file_exists</span><span class=\"token punctuation\">(</span><span class=\"token constant\">__DIR__</span><span class=\"token operator\">.</span><span class=\"token string single-quoted-string\">\'/../storage/framework/maintenance.php\'</span><span class=\"token punctuation\">)</span><span class=\"token punctuation\">)</span> <span class=\"token punctuation\">{</span>\r\n    <span class=\"token keyword\">require</span> <span class=\"token constant\">__DIR__</span><span class=\"token operator\">.</span><span class=\"token string single-quoted-string\">\'/../storage/framework/maintenance.php\'</span><span class=\"token punctuation\">;</span>\r\n<span class=\"token punctuation\">}</span></code></pre>\r\n<p>&nbsp;</p>\r\n<h4 id=\"artisan-down-message\"><a href=\"https://laravel.com/docs/8.x/upgrade#artisan-down-message\">The&nbsp;<code>php artisan down --message</code>&nbsp;Option</a></h4>\r\n<p><strong>Likelihood Of Impact: Medium</strong></p>\r\n<p>The&nbsp;<code>--message</code>&nbsp;option of the&nbsp;<code>php artisan down</code>&nbsp;command has been removed. As an alternative, consider&nbsp;<a href=\"https://laravel.com/docs/8.x/configuration#maintenance-mode\">pre-rendering your maintenance mode views</a>&nbsp;with the message of your choice.</p>\r\n<p>&nbsp;</p>\r\n<h4 id=\"php-artisan-serve-no-reload-option\"><a href=\"https://laravel.com/docs/8.x/upgrade#php-artisan-serve-no-reload-option\">The&nbsp;<code>php artisan serve --no-reload</code>&nbsp;Option</a></h4>\r\n<p><strong>Likelihood Of Impact: Low</strong></p>\r\n<p>A&nbsp;<code>--no-reload</code>&nbsp;option has been added to the&nbsp;<code>php artisan serve</code>&nbsp;command. This will instruct the built-in server to not reload the server when environment file changes are detected. This option is primarily helpful when running Laravel Dusk tests in a CI environment.</p>', 0, 1, 1, '2021-07-14 01:08:04', '2021-07-14 01:08:04'),
(5, 2, 'Something New', 'something-new', 'something-new-2021-07-14-60ee8f10bdf3e.png', '<p>Quisque tincidunt aliquam eleifend non ad augue scelerisque, quis integer semper tempor egestas. Lacus quisque massa sociis tristique nisi augue cum ultrices placerat vehicula quis urna, vitae mus et fringilla pretium vel dignissim turpis nascetur elementum ac, sociosqu imperdiet per tempor potenti lobortis ullamcorper phasellus ante mi sed. Litora cum pharetra elementum malesuada tincidunt posuere lacinia lacus sollicitudin, gravida velit iaculis maecenas nunc faucibus aenean imperdiet duis, senectus est per libero semper quis quam habitant. Himenaeos per cras ut eu sagittis vel nisi fringilla varius penatibus cursus phasellus primis, ligula ullamcorper torquent quisque vitae platea pharetra rhoncus consequat facilisi arcu. Integer maecenas sem morbi vestibulum libero aptent molestie massa auctor, habitasse condimentum neque ad fringilla sollicitudin praesent mi, diam blandit quisque sociis facilisis velit convallis suspendisse. Cursus parturient duis pharetra faucibus nam ac dignissim semper inceptos gravida potenti risus natoque odio felis, ligula viverra quam quis morbi placerat condimentum at ut orci sollicitudin tristique erat. Interdum augue hac non tempor laoreet ad metus dis, arcu porttitor diam potenti nibh vestibulum taciti, netus at neque consequat nunc libero nam.</p>\r\n<p>&nbsp;</p>\r\n<p>Libero quisque rhoncus varius lobortis laoreet morbi arcu dis purus vehicula, imperdiet venenatis luctus a gravida curabitur ornare torquent. Senectus ornare dignissim augue in sollicitudin commodo mattis, posuere nam ligula platea suscipit luctus, mauris pretium purus volutpat interdum magnis. Mollis ornare laoreet per bibendum conubia convallis ligula, accumsan class dapibus viverra curabitur lacinia platea ridiculus, ante dictum est et taciti habitasse. Eu fusce accumsan vestibulum leo risus facilisis torquent hendrerit, blandit tempus scelerisque libero praesent quis dapibus, facilisi hac tristique mi mauris sagittis bibendum. Vitae pharetra vivamus quis posuere venenatis ac tortor lectus, orci turpis fames suscipit fusce nibh lacus, congue vehicula ridiculus praesent vel sed ullamcorper. Luctus aenean tristique cum euismod interdum montes malesuada duis, ultricies nunc proin nec mi viverra id leo, habitant sed felis eu tempus himenaeos imperdiet. Pharetra metus sociosqu parturient nulla facilisis sagittis mus ultrices, sed habitant interdum hendrerit fringilla accumsan placerat, urna lobortis suscipit aptent nibh ultricies erat. Laoreet dapibus vulputate dictumst tempus risus vehicula dignissim, quis cursus justo nunc id duis parturient enim, lectus conubia natoque iaculis vestibulum viverra. Cubilia dictum felis eget mi auctor dis cursus senectus, nisl faucibus nunc erat augue suspendisse sem tristique curae, metus tempus lacinia in eros tortor nulla. Nostra at risus nam pretium mi convallis euismod congue, class nisl hendrerit dignissim eleifend hac netus, parturient potenti ornare aliquam mus sociis interdum.</p>', 0, 1, 1, '2021-07-14 01:15:30', '2021-07-14 01:20:12'),
(6, 2, 'All About Tailwind CSS', 'all-about-tailwind-css', 'all-about-tailwind-css-2021-07-14-60ee8f7aecde4.png', '<ul class=\"toggle-output group\">\r\n<li><a class=\"rt mini-btn active\" href=\"chrome-extension://pglahbfamjiifnafcicdibiiabpakkkb/popup.html\">Rich Text</a></li>\r\n<li><a class=\"html mini-btn\" href=\"chrome-extension://pglahbfamjiifnafcicdibiiabpakkkb/popup.html\">HTML</a></li>\r\n</ul>\r\n<div class=\"output-container scrollbars\"><a class=\"copy mini-btn icon\" href=\"chrome-extension://pglahbfamjiifnafcicdibiiabpakkkb/popup.html\">Copy</a>\r\n<div id=\"output\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipiscing elit varius quisque tempus augue facilisi, porta hac consequat cum viverra lectus natoque vehicula ac vulputate. Ligula odio mauris facilisis sociosqu suspendisse tristique purus non, gravida urna inceptos senectus quis fringilla consequat cum, posuere penatibus a vestibulum curae lectus aliquam. Ullamcorper lobortis cubilia diam fermentum vehicula rutrum in id, varius morbi sociis gravida feugiat porttitor viverra eros, parturient ac libero tellus ridiculus per interdum. Porttitor dapibus dui vehicula lobortis inceptos litora hendrerit eu vel netus pharetra commodo mauris natoque, tristique aliquet tortor integer posuere phasellus sem curabitur sagittis venenatis semper fringilla.</p>\r\n<p>Id mattis suscipit tincidunt augue ridiculus tempus vivamus imperdiet himenaeos aptent mi, blandit maecenas ligula vel sociis mus congue nisi consequat magna, litora fames eros pulvinar morbi neque ultricies interdum est fermentum. Torquent conubia iaculis lectus turpis ligula fames est, fusce felis leo cum sociosqu arcu mattis, nec semper praesent eleifend vestibulum potenti. Risus mi donec scelerisque class neque netus sem id non aptent, nunc eleifend hac porta nulla odio justo imperdiet sed, phasellus aenean egestas suspendisse facilisi vel dui platea laoreet. Dignissim sollicitudin ad dictumst est felis aptent iaculis blandit cum taciti, augue parturient integer lacus sagittis tellus hac posuere primis, venenatis congue lectus massa facilisi placerat varius tincidunt accumsan.</p>\r\n<p>Egestas nisl aliquam sed fusce mattis vel lacus vestibulum, suspendisse dictum et odio accumsan vitae malesuada, auctor conubia tempor duis sociosqu nulla montes. Parturient vitae erat penatibus leo arcu diam congue venenatis integer neque, in purus montes etiam dignissim nulla euismod ridiculus inceptos. Platea curae eros penatibus per fermentum phasellus, ultricies netus morbi donec enim cubilia pellentesque, vel habitasse sociosqu fringilla arcu. Euismod aliquam ornare velit sem suspendisse congue felis vulputate, commodo vehicula habitant bibendum lectus blandit. Platea lectus mi varius nunc erat leo, vehicula sagittis laoreet dictumst suscipit, ullamcorper fringilla hendrerit ut quam.</p>\r\n<p>Facilisis massa ornare dis primis fames imperdiet mus ut, erat curabitur auctor ridiculus suspendisse gravida volutpat, himenaeos bibendum mollis nulla ac blandit aliquet. Maecenas porttitor interdum aptent arcu feugiat montes, curae litora at consequat in, auctor fringilla ornare eleifend volutpat. Mi placerat aenean etiam suscipit tortor hac nibh auctor montes pretium, dictumst proin neque iaculis cras maecenas magnis congue. Leo nunc eget non volutpat bibendum aliquet mus dapibus, magnis arcu augue mollis curabitur facilisis. Egestas ad purus pharetra donec pellentesque rutrum, senectus luctus maecenas fusce quisque fermentum, massa tristique ullamcorper malesuada cubilia. Conubia fusce taciti metus luctus sagittis nascetur volutpat ac parturient, in maecenas curae faucibus diam leo torquent massa cras pharetra, velit lacus penatibus iaculis rhoncus libero tellus etiam.</p>\r\n<p>Dapibus magna feugiat phasellus diam sodales parturient tempor, iaculis massa taciti curae aptent facilisi, commodo habitant viverra semper pellentesque dictumst. Ad phasellus torquent imperdiet sagittis pharetra etiam massa nisl, odio quis risus quisque euismod venenatis ut, magnis commodo interdum donec fusce iaculis sed. Fermentum nam magnis potenti pulvinar metus lectus purus condimentum ullamcorper egestas, bibendum est mauris dapibus vitae dictum natoque primis luctus eleifend himenaeos, conubia vivamus arcu quam eget congue tristique tempor cum. Nulla penatibus hendrerit parturient molestie semper at ad vehicula, lacus felis fermentum arcu himenaeos euismod imperdiet mi hac, magna aliquam vel nam pellentesque tempor dui. Pharetra ultricies congue semper duis dapibus sociosqu nam vitae natoque, fames tempor et dictumst laoreet massa aliquam lectus, sagittis phasellus scelerisque viverra blandit curae sapien nulla. Dictum facilisis ornare porttitor cursus suscipit interdum eros nullam, tincidunt et platea placerat egestas nam dignissim cum, litora gravida luctus urna massa hendrerit feugiat.</p>\r\n<p>Varius platea arcu fermentum bibendum curae accumsan augue purus mauris sem etiam, ultricies vulputate himenaeos sapien fringilla blandit mollis aenean iaculis interdum, mi luctus class libero donec quisque litora laoreet velit primis. Quis dui ultrices donec integer aptent sapien dignissim felis fermentum luctus, metus orci curae libero porta pharetra rutrum facilisi fusce ridiculus, ornare ullamcorper massa vestibulum praesent mollis molestie cras vitae. Aenean scelerisque laoreet morbi platea posuere nulla cursus himenaeos, dictumst tellus quam felis nullam iaculis pellentesque. Ultrices cum duis conubia risus taciti, nisi tellus mauris semper fames, facilisi sodales quis pretium. Feugiat curabitur semper dignissim netus a tristique ornare sociis montes suspendisse felis pellentesque nec, sollicitudin mauris litora cras penatibus mattis erat quam tincidunt velit ultrices. Dictumst elementum lectus curae varius natoque ligula nostra praesent felis, eleifend odio vulputate sed facilisis nisi ante cum vitae metus, commodo blandit dapibus arcu ad leo phasellus nisl. Nunc eu dictumst magnis interdum orci condimentum penatibus pulvinar fames pharetra dis malesuada, placerat fringilla dapibus leo mattis elementum quam vivamus phasellus libero.</p>\r\n<p>Facilisis at quisque posuere eget nullam eu quam potenti quis, tempor dignissim sollicitudin ac venenatis malesuada in luctus convallis, curae aliquam torquent curabitur donec platea fusce primis. A duis mollis commodo sociosqu eget malesuada, lacinia venenatis erat nostra id leo, parturient sociis aliquam dis nullam.</p>\r\n<p>Quam suspendisse ornare sem consequat faucibus maecenas rhoncus curae fringilla, aenean ultrices nisi conubia pulvinar gravida pretium quisque, dapibus penatibus bibendum commodo lobortis eget dignissim cursus. Cursus fermentum non porta eros mi pharetra inceptos tristique nam rutrum nibh id, conubia ligula ridiculus eget nostra lectus nascetur ultrices taciti mollis molestie platea, consequat egestas montes semper praesent accumsan nec et sapien pellentesque bibendum. Tristique nisi aliquet non viverra tellus, cum faucibus luctus rhoncus congue, taciti sociosqu praesent hendrerit. Ornare imperdiet eget habitasse lectus faucibus nisl, dignissim vel auctor ad pulvinar diam mollis, integer condimentum cras primis lacus. Sociis massa netus vitae pulvinar himenaeos tempor sed malesuada tortor praesent faucibus posuere, libero dapibus odio augue donec nam fames leo aptent aenean.</p>\r\n</div>\r\n</div>', 1, 1, 1, '2021-07-14 01:17:17', '2021-07-14 01:46:52'),
(7, 2, 'Vue Js Framework', 'vue-js-framework', 'vue-js-framework-2021-07-14-60ee900395bb2.png', '<h4 id=\"artisan-down-message\"><a href=\"https://laravel.com/docs/8.x/upgrade#artisan-down-message\">The&nbsp;<code>php artisan down --message</code>&nbsp;Option</a></h4>\r\n<p><strong>Likelihood Of Impact: Medium</strong></p>\r\n<p>The&nbsp;<code>--message</code>&nbsp;option of the&nbsp;<code>php artisan down</code>&nbsp;command has been removed. As an alternative, consider&nbsp;<a href=\"https://laravel.com/docs/8.x/configuration#maintenance-mode\">pre-rendering your maintenance mode views</a>&nbsp;with the message of your choice.</p>\r\n<p>&nbsp;</p>\r\n<h4 id=\"php-artisan-serve-no-reload-option\"><a href=\"https://laravel.com/docs/8.x/upgrade#php-artisan-serve-no-reload-option\">The&nbsp;<code>php artisan serve --no-reload</code>&nbsp;Option</a></h4>\r\n<p><strong>Likelihood Of Impact: Low</strong></p>\r\n<p>A&nbsp;<code>--no-reload</code>&nbsp;option has been added to the&nbsp;<code>php artisan serve</code>&nbsp;command. This will instruct the built-in server to not reload the server when environment file changes are detected. This option is primarily helpful when running Laravel Dusk tests in a CI environment.</p>\r\n<p>&nbsp;</p>\r\n<h4 id=\"manager-app-property\"><a href=\"https://laravel.com/docs/8.x/upgrade#manager-app-property\">Manager&nbsp;<code>$app</code>&nbsp;Property</a></h4>\r\n<p><strong>Likelihood Of Impact: Low</strong></p>\r\n<p>The previously deprecated&nbsp;<code>$app</code>&nbsp;property of the&nbsp;<code>Illuminate\\Support\\Manager</code>&nbsp;class has been removed. If you were relying on this property, you should use the&nbsp;<code>$container</code>&nbsp;property instead.</p>\r\n<p>&nbsp;</p>\r\n<h4 id=\"the-elixir-helper\"><a href=\"https://laravel.com/docs/8.x/upgrade#the-elixir-helper\">The&nbsp;<code>elixir</code>&nbsp;Helper</a></h4>\r\n<p><strong>Likelihood Of Impact: Low</strong></p>\r\n<p>The previously deprecated&nbsp;<code>elixir</code>&nbsp;helper has been removed. Applications still using this method are encouraged to upgrade to&nbsp;<a href=\"https://github.com/JeffreyWay/laravel-mix\">Laravel Mix</a>.</p>\r\n<p>&nbsp;</p>\r\n<h3 id=\"mail\"><a href=\"https://laravel.com/docs/8.x/upgrade#mail\">Mail</a></h3>\r\n<p>&nbsp;</p>\r\n<h4 id=\"the-sendnow-method\"><a href=\"https://laravel.com/docs/8.x/upgrade#the-sendnow-method\">The&nbsp;<code>sendNow</code>&nbsp;Method</a></h4>\r\n<p><strong>Likelihood Of Impact: Low</strong></p>\r\n<p>The previously deprecated&nbsp;<code>sendNow</code>&nbsp;method has been removed. Instead, please use the&nbsp;<code>send</code>&nbsp;method.</p>\r\n<p>&nbsp;</p>\r\n<h3 id=\"pagination\"><a href=\"https://laravel.com/docs/8.x/upgrade#pagination\">Pagination</a></h3>\r\n<p>&nbsp;</p>\r\n<h4 id=\"pagination-defaults\"><a href=\"https://laravel.com/docs/8.x/upgrade#pagination-defaults\">Pagination Defaults</a></h4>\r\n<p><strong>Likelihood Of Impact: High</strong></p>\r\n<p>The paginator now uses the&nbsp;<a href=\"https://tailwindcss.com/\">Tailwind CSS framework</a>&nbsp;for its default styling. In order to keep using Bootstrap, you should add the following method call to the&nbsp;<code>boot</code>&nbsp;method of your application\'s&nbsp;<code>AppServiceProvider</code>:</p>\r\n<pre class=\" language-php\" tabindex=\"0\"><code class=\" language-php\"><span class=\"token keyword\">use</span> <span class=\"token package\">Illuminate<span class=\"token punctuation\">\\</span>Pagination<span class=\"token punctuation\">\\</span>Paginator</span><span class=\"token punctuation\">;</span>\r\n\r\n<span class=\"token class-name static-context\">Paginator</span><span class=\"token operator\">::</span><span class=\"token function\">useBootstrap</span><span class=\"token punctuation\">(</span><span class=\"token punctuation\">)</span><span class=\"token punctuation\">;</span></code></pre>\r\n<p>&nbsp;</p>\r\n<h3 id=\"queue\"><a href=\"https://laravel.com/docs/8.x/upgrade#queue\">Queue</a></h3>\r\n<p>&nbsp;</p>\r\n<h4 id=\"queue-retry-after-method\"><a href=\"https://laravel.com/docs/8.x/upgrade#queue-retry-after-method\">The&nbsp;<code>retryAfter</code>&nbsp;Method</a></h4>\r\n<p><strong>Likelihood Of Impact: High</strong></p>\r\n<p>For consistency with other features of Laravel, the&nbsp;<code>retryAfter</code>&nbsp;method and&nbsp;<code>retryAfter</code>&nbsp;property of queued jobs, mailers, notifications, and listeners have been renamed to&nbsp;<code>backoff</code>. You should update the name of this method / property in the relevant classes in your application.</p>\r\n<p>&nbsp;</p>\r\n<h4 id=\"queue-timeout-at-property\"><a href=\"https://laravel.com/docs/8.x/upgrade#queue-timeout-at-property\">The&nbsp;<code>timeoutAt</code>&nbsp;Property</a></h4>\r\n<p><strong>Likelihood Of Impact: High</strong></p>\r\n<p>The&nbsp;<code>timeoutAt</code>&nbsp;property of queued jobs, notifications, and listeners has been renamed to&nbsp;<code>retryUntil</code>. You should update the name of this property in the relevant classes in your application.</p>\r\n<p>&nbsp;</p>\r\n<h4 id=\"queue-allOnQueue-allOnConnection\"><a href=\"https://laravel.com/docs/8.x/upgrade#queue-allOnQueue-allOnConnection\">The&nbsp;<code>allOnQueue()</code>&nbsp;/&nbsp;<code>allOnConnection()</code>&nbsp;Methods</a></h4>\r\n<p><strong>Likelihood Of Impact: High</strong></p>\r\n<p>For consistency with other dispatching methods, the&nbsp;<code>allOnQueue()</code>&nbsp;and&nbsp;<code>allOnConnection()</code>&nbsp;methods used with job chaining have been removed. You may use the&nbsp;<code>onQueue()</code>&nbsp;and&nbsp;<code>onConnection()</code>&nbsp;methods instead. These methods should be called before calling the&nbsp;<code>dispatch</code>&nbsp;method:</p>\r\n<pre class=\" language-php\" tabindex=\"0\"><code class=\" language-php\"><span class=\"token class-name static-context\">ProcessPodcast</span><span class=\"token operator\">::</span><span class=\"token function\">withChain</span><span class=\"token punctuation\">(</span><span class=\"token punctuation\">[</span>\r\n    <span class=\"token keyword\">new</span> <span class=\"token class-name\">OptimizePodcast</span><span class=\"token punctuation\">,</span>\r\n    <span class=\"token keyword\">new</span> <span class=\"token class-name\">ReleasePodcast</span>\r\n<span class=\"token punctuation\">]</span><span class=\"token punctuation\">)</span><span class=\"token operator\">-&gt;</span><span class=\"token function\">onConnection</span><span class=\"token punctuation\">(</span><span class=\"token string single-quoted-string\">\'redis\'</span><span class=\"token punctuation\">)</span><span class=\"token operator\">-&gt;</span><span class=\"token function\">onQueue</span><span class=\"token punctuation\">(</span><span class=\"token string single-quoted-string\">\'podcasts\'</span><span class=\"token punctuation\">)</span><span class=\"token operator\">-&gt;</span><span class=\"token function\">dispatch</span><span class=\"token punctuation\">(</span><span class=\"token punctuation\">)</span><span class=\"token punctuation\">;</span></code></pre>\r\n<p>Note that this change only affects code using the&nbsp;<code>withChain</code>&nbsp;method. The&nbsp;<code>allOnQueue()</code>&nbsp;and&nbsp;<code>allOnConnection()</code>&nbsp;are still available when using the global&nbsp;<code>dispatch()</code>&nbsp;helper.</p>\r\n<p>&nbsp;</p>\r\n<h4 id=\"failed-jobs-table-batch-support\"><a href=\"https://laravel.com/docs/8.x/upgrade#failed-jobs-table-batch-support\">Failed Jobs Table Batch Support</a></h4>\r\n<p><strong>Likelihood Of Impact: Optional</strong></p>\r\n<p>If you plan to use the&nbsp;<a href=\"https://laravel.com/docs/8.x/queues#job-batching\">job batching</a>&nbsp;features of Laravel 8.x, your&nbsp;<code>failed_jobs</code>&nbsp;database table will need to be updated. First, a new&nbsp;<code>uuid</code>&nbsp;column should be added to your table:</p>\r\n<pre class=\" language-php\" tabindex=\"0\"><code class=\" language-php\"><span class=\"token keyword\">use</span> <span class=\"token package\">Illuminate<span class=\"token punctuation\">\\</span>Database<span class=\"token punctuation\">\\</span>Schema<span class=\"token punctuation\">\\</span>Blueprint</span><span class=\"token punctuation\">;</span>\r\n<span class=\"token keyword\">use</span> <span class=\"token package\">Illuminate<span class=\"token punctuation\">\\</span>Support<span class=\"token punctuation\">\\</span>Facades<span class=\"token punctuation\">\\</span>Schema</span><span class=\"token punctuation\">;</span>\r\n\r\n<span class=\"token class-name static-context\">Schema</span><span class=\"token operator\">::</span><span class=\"token function\">table</span><span class=\"token punctuation\">(</span><span class=\"token string single-quoted-string\">\'failed_jobs\'</span><span class=\"token punctuation\">,</span> <span class=\"token keyword\">function</span> <span class=\"token punctuation\">(</span><span class=\"token class-name type-declaration\">Blueprint</span> <span class=\"token variable\">$table</span><span class=\"token punctuation\">)</span> <span class=\"token punctuation\">{</span>\r\n    <span class=\"token variable\">$table</span><span class=\"token operator\">-&gt;</span><span class=\"token keyword type-declaration\">string</span><span class=\"token punctuation\">(</span><span class=\"token string single-quoted-string\">\'uuid\'</span><span class=\"token punctuation\">)</span><span class=\"token operator\">-&gt;</span><span class=\"token function\">after</span><span class=\"token punctuation\">(</span><span class=\"token string single-quoted-string\">\'id\'</span><span class=\"token punctuation\">)</span><span class=\"token operator\">-&gt;</span><span class=\"token function\">nullable</span><span class=\"token punctuation\">(</span><span class=\"token punctuation\">)</span><span class=\"token operator\">-&gt;</span><span class=\"token function\">unique</span><span class=\"token punctuation\">(</span><span class=\"token punctuation\">)</span><span class=\"token punctuation\">;</span>\r\n<span class=\"token punctuation\">}</span><span class=\"token punctuation\">)</span><span class=\"token punctuation\">;</span></code></pre>\r\n<p>Next, the&nbsp;<code>failed.driver</code>&nbsp;configuration option within your&nbsp;<code>queue</code>&nbsp;configuration file should be updated to&nbsp;<code>database-uuids</code>.</p>\r\n<p>In addition, you may wish to generate UUIDs for your existing failed jobs:</p>\r\n<pre class=\" language-php\" tabindex=\"0\"><code class=\" language-php\"><span class=\"token class-name static-context\">DB</span><span class=\"token operator\">::</span><span class=\"token function\">table</span><span class=\"token punctuation\">(</span><span class=\"token string single-quoted-string\">\'failed_jobs\'</span><span class=\"token punctuation\">)</span><span class=\"token operator\">-&gt;</span><span class=\"token function\">whereNull</span><span class=\"token punctuation\">(</span><span class=\"token string single-quoted-string\">\'uuid\'</span><span class=\"token punctuation\">)</span><span class=\"token operator\">-&gt;</span><span class=\"token function\">cursor</span><span class=\"token punctuation\">(</span><span class=\"token punctuation\">)</span><span class=\"token operator\">-&gt;</span><span class=\"token function\">each</span><span class=\"token punctuation\">(</span><span class=\"token keyword\">function</span> <span class=\"token punctuation\">(</span><span class=\"token variable\">$job</span><span class=\"token punctuation\">)</span> <span class=\"token punctuation\">{</span>\r\n    <span class=\"token class-name static-context\">DB</span><span class=\"token operator\">::</span><span class=\"token function\">table</span><span class=\"token punctuation\">(</span><span class=\"token string single-quoted-string\">\'failed_jobs\'</span><span class=\"token punctuation\">)</span>\r\n        <span class=\"token operator\">-&gt;</span><span class=\"token function\">where</span><span class=\"token punctuation\">(</span><span class=\"token string single-quoted-string\">\'id\'</span><span class=\"token punctuation\">,</span> <span class=\"token variable\">$job</span><span class=\"token operator\">-&gt;</span><span class=\"token property\">id</span><span class=\"token punctuation\">)</span>\r\n        <span class=\"token operator\">-&gt;</span><span class=\"token function\">update</span><span class=\"token punctuation\">(</span><span class=\"token punctuation\">[</span><span class=\"token string single-quoted-string\">\'uuid\'</span> <span class=\"token operator\">=&gt;</span> <span class=\"token punctuation\">(</span><span class=\"token keyword type-casting\">string</span><span class=\"token punctuation\">)</span> <span class=\"token class-name class-name-fully-qualified static-context\">Illuminate<span class=\"token punctuation\">\\</span>Support<span class=\"token punctuation\">\\</span>Str</span><span class=\"token operator\">::</span><span class=\"token function\">uuid</span><span class=\"token punctuation\">(</span><span class=\"token punctuation\">)</span><span class=\"token punctuation\">]</span><span class=\"token punctuation\">)</span><span class=\"token punctuation\">;</span>\r\n<span class=\"token punctuation\">}</span><span class=\"token punctuation\">)</span><span class=\"token punctuation\">;</span></code></pre>\r\n<p>&nbsp;</p>\r\n<h3 id=\"routing\"><a href=\"https://laravel.com/docs/8.x/upgrade#routing\">Routing</a></h3>\r\n<p>&nbsp;</p>\r\n<h4 id=\"automatic-controller-namespace-prefixing\"><a href=\"https://laravel.com/docs/8.x/upgrade#automatic-controller-namespace-prefixing\">Automatic Controller Namespace Prefixing</a></h4>\r\n<p><strong>Likelihood Of Impact: Optional</strong></p>\r\n<p>In previous releases of Laravel, the&nbsp;<code>RouteServiceProvider</code>&nbsp;class contained a&nbsp;<code>$namespace</code>&nbsp;property with a value of&nbsp;<code>App\\Http\\Controllers</code>. The value of this property was used to automatically prefix controller route declarations and controller route URL generation such as when calling the&nbsp;<code>action</code>&nbsp;helper.</p>\r\n<p>In Laravel 8, this property is set to&nbsp;<code>null</code>&nbsp;by default. This allows your controller route declarations to use the standard PHP callable syntax, which provides better support for jumping to the controller class in many IDEs:</p>\r\n<pre class=\" language-php\" tabindex=\"0\"><code class=\" language-php\"><span class=\"token keyword\">use</span> <span class=\"token package\">App<span class=\"token punctuation\">\\</span>Http<span class=\"token punctuation\">\\</span>Controllers<span class=\"token punctuation\">\\</span>UserController</span><span class=\"token punctuation\">;</span>\r\n\r\n<span class=\"token comment\">// Using PHP callable syntax...</span>\r\n<span class=\"token class-name static-context\">Route</span><span class=\"token operator\">::</span><span class=\"token function\">get</span><span class=\"token punctuation\">(</span><span class=\"token string single-quoted-string\">\'/users\'</span><span class=\"token punctuation\">,</span> <span class=\"token punctuation\">[</span><span class=\"token class-name static-context\">UserController</span><span class=\"token operator\">::</span><span class=\"token keyword\">class</span><span class=\"token punctuation\">,</span> <span class=\"token string single-quoted-string\">\'index\'</span><span class=\"token punctuation\">]</span><span class=\"token punctuation\">)</span><span class=\"token punctuation\">;</span>\r\n\r\n<span class=\"token comment\">// Using string syntax...</span>\r\n<span class=\"token class-name static-context\">Route</span><span class=\"token operator\">::</span><span class=\"token function\">get</span><span class=\"token punctuation\">(</span><span class=\"token string single-quoted-string\">\'/users\'</span><span class=\"token punctuation\">,</span> <span class=\"token string single-quoted-string\">\'App\\Http\\Controllers\\UserController@index\'</span><span class=\"token punctuation\">)</span><span class=\"token punctuation\">;</span></code></pre>\r\n<p>In most cases, this won\'t impact applications that are being upgraded because your&nbsp;<code>RouteServiceProvider</code>&nbsp;will still contain the&nbsp;<code>$namespace</code>&nbsp;property with its previous value. However, if you upgrade your application by creating a brand new Laravel project, you may encounter this as a breaking change.</p>\r\n<p>If you would like to continue using the original auto-prefixed controller routing, you can simply set the value of the&nbsp;<code>$namespace</code>&nbsp;property within your&nbsp;<code>RouteServiceProvider</code>&nbsp;and update the route registrations within the&nbsp;<code>boot</code>&nbsp;method to use the&nbsp;<code>$namespace</code>&nbsp;property:</p>', 1, 1, 1, '2021-07-14 01:19:32', '2021-07-14 01:45:54');
INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(8, 3, 'Getting to know us better in GITHUB', 'getting-to-know-us-better-in-github', 'getting-to-know-us-better-in-github-2021-07-14-60ee92eba01fa.png', '<div class=\"article-grid-head\">\r\n<div class=\"d-flex flex-items-baseline flex-justify-between\">\r\n<h1 class=\"my-4 border-bottom-0\">Types of GitHub accounts</h1>\r\n<div class=\"d-none d-lg-block ml-2\">&nbsp;</div>\r\n</div>\r\n<div class=\"lead-mktg\">\r\n<p>Your user account is your identity on GitHub. Your user account can be a member of any number of organizations. Organizations can belong to enterprise accounts.</p>\r\n</div>\r\n</div>\r\n<div class=\"article-grid-toc border-bottom border-xl-0 pb-4 mb-5 pb-xl-0 mb-xl-0\">\r\n<div class=\"article-grid-toc-content\">\r\n<h2 id=\"in-this-article\" class=\"f5 mb-2\"><a class=\"Link--primary\" href=\"https://docs.github.com/en/get-started/learning-about-github/types-of-github-accounts#in-this-article\">In this article</a></h2>\r\n<ul class=\"list-style-none pl-0 f5 mb-0\">\r\n<li class=\"ml-0 mb-2 lh-condensed\"><a href=\"https://docs.github.com/en/get-started/learning-about-github/types-of-github-accounts#personal-user-accounts\">Personal user accounts</a></li>\r\n<li class=\"ml-0 mb-2 lh-condensed\"><a href=\"https://docs.github.com/en/get-started/learning-about-github/types-of-github-accounts#organization-accounts\">Organization accounts</a></li>\r\n<li class=\"ml-0 mb-2 lh-condensed\"><a href=\"https://docs.github.com/en/get-started/learning-about-github/types-of-github-accounts#enterprise-accounts\">Enterprise accounts</a></li>\r\n<li class=\"ml-0 mb-2 lh-condensed\"><a href=\"https://docs.github.com/en/get-started/learning-about-github/types-of-github-accounts#further-reading\">Further reading</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"markdown-body\">\r\n<div id=\"article-contents\" class=\"article-grid-body\">\r\n<p>For a full list of features for each GitHub product, see \"<a href=\"https://docs.github.com/en/github/getting-started-with-github/githubs-products\">GitHub\'s products</a>.\"</p>\r\n<h2 id=\"personal-user-accounts\"><a href=\"https://docs.github.com/en/get-started/learning-about-github/types-of-github-accounts#personal-user-accounts\">Personal user accounts</a></h2>\r\n<p>Every person who uses GitHub has their own user account, which includes:</p>\r\n<ul>\r\n<li>Unlimited public and private repositories with GitHub Free</li>\r\n<li>Unlimited collaborators with GitHub Free</li>\r\n<li>Additional features for private repositories with GitHub Pro</li>\r\n<li>Ability to&nbsp;<a href=\"https://docs.github.com/en/articles/inviting-collaborators-to-a-personal-repository\">invite repository collaborators</a></li>\r\n</ul>\r\n</div>\r\n</div>', 1, 1, 1, '2021-07-14 01:31:57', '2021-07-14 01:45:23'),
(9, 3, 'All About HTML', 'all-about-html', 'all-about-html-2021-07-14-60ee935ef2434.png', '<h1>HTML: HyperText Markup Language</h1>\r\n<p class=\"summary\"><strong>HTML</strong>&nbsp;(HyperText Markup Language) is the most basic building block of the Web. It defines the meaning and structure of web content. Other technologies besides HTML are generally used to describe a web page\'s appearance/presentation (<a href=\"https://developer.mozilla.org/en-US/docs/Web/CSS\">CSS</a>) or functionality/behavior (<a href=\"https://developer.mozilla.org/en-US/docs/Web/JavaScript\">JavaScript</a>).</p>\r\n<p>\"Hypertext\" refers to links that connect web pages to one another, either within a single website or between websites. Links are a fundamental aspect of the Web. By uploading content to the Internet and linking it to pages created by other people, you become an active participant in the World Wide Web.</p>\r\n<p>HTML uses \"markup\" to annotate text, images, and other content for display in a Web browser. HTML markup includes special \"elements\" such as&nbsp;<a href=\"https://devdocs.io/html/element/head\"><code>&lt;head&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/title\"><code>&lt;title&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/body\"><code>&lt;body&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/header\"><code>&lt;header&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/footer\"><code>&lt;footer&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/article\"><code>&lt;article&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/section\"><code>&lt;section&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/p\"><code>&lt;p&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/div\"><code>&lt;div&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/span\"><code>&lt;span&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/img\"><code>&lt;img&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/aside\"><code>&lt;aside&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/audio\"><code>&lt;audio&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/canvas\"><code>&lt;canvas&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/datalist\"><code>&lt;datalist&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/details\"><code>&lt;details&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/embed\"><code>&lt;embed&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/nav\"><code>&lt;nav&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/output\"><code>&lt;output&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/progress\"><code>&lt;progress&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/video\"><code>&lt;video&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/ul\"><code>&lt;ul&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/ol\"><code>&lt;ol&gt;</code></a>,&nbsp;<a href=\"https://devdocs.io/html/element/li\"><code>&lt;li&gt;</code></a>&nbsp;and many others.</p>\r\n<p>An HTML element is set off from other text in a document by \"tags\", which consist of the element name surrounded by \"<code>&lt;</code>\" and \"<code>&gt;</code>\". The name of an element inside a tag is case insensitive. That is, it can be written in uppercase, lowercase, or a mixture. For example, the&nbsp;<code>&lt;title&gt;</code>&nbsp;tag can be written as&nbsp;<code>&lt;Title&gt;</code>,&nbsp;<code>&lt;TITLE&gt;</code>, or in any other way.</p>\r\n<p>The articles below can help you learn more about HTML.</p>\r\n<h2 id=\"key_resources\">Key resources</h2>\r\n<dl>\r\n<dt>HTML Introduction</dt>\r\n<dd>If you\'re new to Web development, be sure to read our&nbsp;<a href=\"https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/HTML_basics\">HTML Basics</a>&nbsp;article to learn what HTML is and how to use it.</dd>\r\n<dt>HTML Tutorials</dt>\r\n<dd>For articles about how to use HTML, as well as tutorials and complete examples, check out our&nbsp;<a href=\"https://developer.mozilla.org/en-US/docs/Learn/HTML\">HTML Learning Area</a>.</dd>\r\n<dt>HTML Reference</dt>\r\n<dd>In our extensive&nbsp;<a href=\"https://devdocs.io/html/reference\">HTML reference</a>&nbsp;section, you\'ll find the details about every element and attribute in HTML.</dd>\r\n</dl>\r\n<div class=\"callout\">\r\n<h4 id=\"looking_to_become_a_front-end_web_developer\">Looking to become a front-end web developer?</h4>\r\n<p>We have put together a course that includes all the essential information you need to work towards your goal.</p>\r\n<p><a href=\"https://developer.mozilla.org/en-US/docs/Learn/Front-end_web_developer\"><strong>Get started</strong></a></p>\r\n</div>\r\n<h2 id=\"beginners_tutorials\">Beginner\'s tutorials</h2>\r\n<p>Our&nbsp;<a href=\"https://developer.mozilla.org/en-US/docs/Learn/HTML\">HTML Learning Area</a>&nbsp;features multiple modules that teach HTML from the ground up &mdash; no previous knowledge required.</p>\r\n<dl>\r\n<dt><a href=\"https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML\">Introduction to HTML</a></dt>\r\n<dd>This module sets the stage, getting you used to important concepts and syntax such as looking at applying HTML to text, how to create hyperlinks, and how to use HTML to structure a web page.</dd>\r\n<dt><a href=\"https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding\">Multimedia and embedding</a></dt>\r\n<dd>This module explores how to use HTML to include multimedia in your web pages, including the different ways that images can be included, and how to embed video, audio, and even entire other webpages.</dd>\r\n<dt><a href=\"https://developer.mozilla.org/en-US/docs/Learn/HTML/Tables\">HTML tables</a></dt>\r\n<dd>Representing tabular data on a webpage in an understandable, accessible way can be a challenge. This module covers basic table markup, along with more complex features such as implementing captions and summaries.</dd>\r\n<dt><a href=\"https://developer.mozilla.org/en-US/docs/Learn/Forms\">HTML forms</a></dt>\r\n<dd>Forms are a very important part of the Web &mdash; these provide much of the functionality you need for interacting with websites, e.g. registering and logging in, sending feedback, buying products, and more. This module gets you started with creating the client-side/front-end parts of forms.</dd>\r\n<dt><a href=\"https://developer.mozilla.org/en-US/docs/Learn/HTML/Howto\">Use HTML to solve common problems</a></dt>\r\n<dd>Provides links to sections of content explaining how to use HTML to solve very common problems when creating a web page: dealing with titles, adding images or videos, emphasizing content, creating a basic form, etc.</dd>\r\n</dl>', 1, 1, 1, '2021-07-14 01:33:53', '2021-07-14 04:52:20'),
(10, 3, 'All About Advanced CSS', 'all-about-advanced-css', 'all-about-advanced-css-2021-07-14-60ee93cb81798.png', '<h1>CSS reference</h1>\r\n<p>Use this&nbsp;<strong>CSS reference</strong>&nbsp;to browse an&nbsp;<a href=\"https://devdocs.io/css/#index\">alphabetical index</a>&nbsp;of all of the standard&nbsp;<a href=\"https://developer.mozilla.org/en-US/docs/Web/CSS\">CSS</a>&nbsp;properties,&nbsp;<a href=\"https://devdocs.io/css/pseudo-classes\">pseudo-classes</a>,&nbsp;<a href=\"https://devdocs.io/css/pseudo-elements\">pseudo-elements</a>,&nbsp;<a href=\"https://devdocs.io/css/css_types\">data types</a>,&nbsp;<a href=\"https://devdocs.io/css/css_functions\">functional notations</a>&nbsp;and&nbsp;<a href=\"https://devdocs.io/css/at-rule\">at-rules</a>. You can also browse&nbsp;<a href=\"https://devdocs.io/css/#concepts\">key CSS concepts</a>&nbsp;and a list of&nbsp;<a href=\"https://devdocs.io/css/#selectors\">selectors organized by type</a>. Also included is a brief&nbsp;<a href=\"https://devdocs.io/css/#dom-css_cssom\">DOM-CSS / CSSOM reference</a>.</p>\r\n<h2 id=\"basic_rule_syntax\">Basic rule syntax</h2>\r\n<h3 id=\"style_rule_syntax\">Style rule syntax</h3>\r\n<pre class=\" language-css\" data-language=\"css\"><span class=\"token selector\">style-rule ::=\r\n    selectors-list</span> <span class=\"token punctuation\">{</span>\r\n      properties-list\r\n    <span class=\"token punctuation\">}</span>\r\n</pre>\r\n<p>... where :</p>\r\n<pre class=\" language-css\" data-language=\"css\"><span class=\"token property\">selectors-list</span> <span class=\"token punctuation\">:</span><span class=\"token punctuation\">:</span>=\r\n    selector[<span class=\"token punctuation\">:</span>pseudo-class] [<span class=\"token punctuation\">:</span><span class=\"token punctuation\">:</span>pseudo-element]\r\n    [<span class=\"token punctuation\">,</span> selectors-list]\r\n\r\n<span class=\"token property\">properties-list</span> <span class=\"token punctuation\">:</span><span class=\"token punctuation\">:</span>=\r\n    [<span class=\"token property\">property</span> <span class=\"token punctuation\">:</span> value] [<span class=\"token punctuation\">;</span> properties-list]\r\n</pre>\r\n<p>See the index of&nbsp;<a href=\"https://devdocs.io/css/#selectors\"><em>selectors</em></a>,&nbsp;<a href=\"https://devdocs.io/css/#pseudo\"><em>pseudo-classes</em></a>, and&nbsp;<em><a href=\"https://devdocs.io/css/#pseudo\">pseudo-elements</a></em>&nbsp;below. The syntax for each specified&nbsp;<em>value</em>&nbsp;depends on the data type defined for each specified&nbsp;<em>property</em>.</p>\r\n<h4 id=\"style_rule_examples\">Style rule examples</h4>\r\n<pre class=\" language-css\" data-language=\"css\"><span class=\"token selector\">strong</span> <span class=\"token punctuation\">{</span>\r\n  <span class=\"token property\">color</span><span class=\"token punctuation\">:</span> red<span class=\"token punctuation\">;</span>\r\n<span class=\"token punctuation\">}</span>\r\n\r\n<span class=\"token selector\">div.menu-bar li:hover &gt; ul</span> <span class=\"token punctuation\">{</span>\r\n  <span class=\"token property\">display</span><span class=\"token punctuation\">:</span> block<span class=\"token punctuation\">;</span>\r\n<span class=\"token punctuation\">}</span>\r\n</pre>\r\n<p>For a beginner-level introduction to the syntax of selectors, see our&nbsp;<a href=\"https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Selectors\">guide on CSS Selectors</a>. Be aware that any&nbsp;<a href=\"https://devdocs.io/css/syntax\">syntax</a>&nbsp;error in a rule definition invalidates the entire rule. Invalid rules are ignored by the browser. Note that CSS rule definitions are entirely (ASCII)&nbsp;<a href=\"https://www.w3.org/TR/css-syntax-3/#intro\" rel=\" noopener\">text-based</a>, whereas DOM-CSS / CSSOM (the rule management system) is&nbsp;<a href=\"https://www.w3.org/TR/cssom/#introduction\" rel=\" noopener\">object-based</a>.</p>\r\n<h3 id=\"at-rule_syntax\">At-rule syntax</h3>\r\n<p>As the structure of at-rules varies widely, please see&nbsp;<a href=\"https://devdocs.io/css/at-rule\">At-rule</a>&nbsp;to find the syntax of the specific one you want.</p>\r\n<h2 id=\"index\">Index</h2>', 0, 1, 1, '2021-07-14 01:35:40', '2021-07-14 01:38:01'),
(11, 1, 'We are using relationships', 'we-are-using-relationships', 'we-are-using-relationships-2021-07-14-60ee9995abacb.png', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit aliquam velit, pharetra luctus vel vehicula himenaeos morbi mauris. Scelerisque ultrices sem lobortis id velit arcu etiam habitant dictumst, erat pulvinar dis vestibulum sociis est quam libero, et litora hendrerit netus pretium rutrum gravida class. Convallis viverra integer augue quisque himenaeos quis sodales in quam, rutrum eros risus sapien penatibus sociis sociosqu aliquam vehicula, duis euismod est morbi pulvinar hendrerit laoreet lectus mattis, facilisi commodo hac ac diam aliquet a lacinia. Tristique duis egestas litora purus dis tempus placerat nisl, at in dictumst aliquet consequat congue mollis, proin vel morbi pulvinar vivamus magna class. Vehicula vivamus non venenatis enim conubia per nibh ornare gravida, sapien bibendum egestas rutrum ut a blandit elementum posuere, varius consequat facilisis porttitor parturient malesuada donec pharetra. Commodo quisque mus ac arcu risus purus dis magnis, penatibus felis sem dictum et porttitor id ligula fringilla, libero tellus tincidunt lectus eu convallis leo. Arcu sapien venenatis a ultrices quisque justo volutpat auctor elementum augue, hendrerit cubilia sodales luctus curae nascetur velit purus eros, sed natoque est netus eu condimentum magnis praesent conubia.</p>\r\n<p>Proin nisi iaculis gravida quisque nunc mi erat, consequat posuere fermentum in condimentum dis, imperdiet dapibus suspendisse nascetur et ridiculus. Cubilia nisl luctus laoreet donec eget euismod metus augue magna id in, mauris dictum vestibulum cras rutrum sociosqu consequat a venenatis accumsan lectus urna, tincidunt pellentesque ultricies nibh ridiculus eros tristique penatibus odio erat. Iaculis praesent mi inceptos sociis imperdiet natoque vehicula aenean dis, volutpat donec vitae tortor auctor tellus congue nec dictum, ad conubia et sapien erat penatibus dictumst placerat. Curae enim vulputate eleifend venenatis quam, sociis aptent magnis dictum primis blandit, diam sagittis vehicula magna. Lacinia euismod himenaeos et curabitur lectus dictum at, nibh luctus ad fames non in mattis, duis rutrum bibendum tellus dui vitae. Tempus aptent volutpat sem ultricies eget interdum purus nunc felis, egestas aenean elementum hendrerit penatibus torquent cras at luctus, conubia mus dictumst proin platea litora natoque facilisis.</p>\r\n<p>Ligula rhoncus odio posuere sollicitudin risus litora viverra, egestas eleifend tortor nullam donec penatibus, tempor vel platea accumsan integer laoreet. Iaculis venenatis a montes risus arcu urna tortor congue fames, facilisi libero vehicula in ut scelerisque ridiculus sem, aptent feugiat est nunc potenti conubia eu at. Est dui blandit tellus rutrum mi mattis parturient fusce sollicitudin tincidunt, odio lobortis pellentesque viverra taciti nullam nam vulputate porta litora commodo, gravida rhoncus quisque suspendisse cras primis justo sagittis velit. Vivamus velit metus mattis aliquam maecenas varius natoque congue viverra vehicula, massa gravida nibh senectus augue tincidunt curabitur nisi molestie. Ullamcorper ornare cras iaculis neque, donec placerat purus hendrerit, vel felis sollicitudin. Posuere ac purus massa scelerisque nostra elementum ut cum lacinia morbi porttitor augue imperdiet arcu nam, rutrum lobortis risus cursus erat parturient eget fusce id turpis ultrices duis dis platea. Nisi viverra vitae platea at libero mollis molestie posuere, blandit pellentesque cras phasellus erat dictumst curae morbi, sollicitudin lacus imperdiet etiam primis tempor sapien.</p>\r\n<p>Eget hac metus nam elementum aenean viverra sapien luctus, tincidunt gravida mauris tempor rhoncus nullam parturient. Fermentum non auctor inceptos varius primis tincidunt, torquent aliquam ultrices quam orci, dis molestie neque nostra eros. Iaculis quam parturient habitasse vulputate blandit nec leo volutpat, etiam ad egestas felis laoreet commodo platea feugiat, rutrum at lacus aenean porttitor venenatis nisi. Pulvinar arcu risus nunc neque ornare venenatis laoreet lacinia, mollis felis imperdiet erat phasellus est cubilia, duis pretium mattis per auctor potenti ultricies. Tristique turpis proin dictumst parturient dapibus porta semper dictum euismod iaculis leo, natoque nulla ridiculus nascetur malesuada aenean curae facilisis maecenas tempus facilisi vivamus, ac cubilia est condimentum cum pharetra auctor interdum luctus tincidunt. Arcu pharetra eleifend id gravida inceptos fermentum vulputate neque, quisque ad laoreet fusce platea class nostra sed aptent, montes posuere velit potenti orci urna donec. Enim luctus lectus cubilia iaculis rhoncus sodales platea imperdiet molestie, egestas velit praesent venenatis tortor parturient pharetra sociosqu a risus, montes bibendum fusce quam aptent eget non augue. Dictum nullam nostra id fringilla eleifend sociosqu tellus himenaeos, ultrices fames in aptent massa vehicula posuere turpis tempus, eget platea duis phasellus eu aliquet interdum. Congue penatibus convallis nostra pulvinar interdum eros cubilia mi, quisque curabitur velit quis aliquet placerat gravida, volutpat mollis facilisis est nisi lectus rutrum.</p>\r\n<p>Morbi vel per pellentesque nibh senectus sollicitudin vivamus erat dui metus iaculis duis vitae, magnis pretium laoreet est volutpat feugiat sagittis fringilla suspendisse varius turpis. At dignissim viverra tempus hendrerit nunc sed massa, est cum id vehicula malesuada conubia, fusce accumsan metus euismod molestie per. Inceptos orci class ornare eu pulvinar sem sociosqu nascetur porttitor, velit iaculis nam ultricies id cursus turpis lobortis fusce facilisis, duis blandit fames urna hendrerit etiam mauris dui. Pharetra feugiat primis accumsan iaculis molestie urna porttitor euismod, dis tellus nisl magna ultrices non est, fames eleifend neque habitasse class ut tortor. Per arcu vivamus dis aptent dictumst massa conubia scelerisque, sociis pellentesque sed est facilisis commodo habitant nulla tortor, in feugiat imperdiet orci urna rutrum pulvinar. Nascetur nisl ullamcorper ac aliquet massa ultrices ante, scelerisque primis accumsan inceptos cubilia tempor quam, dis egestas magna libero sollicitudin penatibus. Maecenas cursus convallis class torquent pretium hendrerit sollicitudin, praesent orci vel sociosqu dictum taciti, consequat nascetur facilisi fringilla etiam sem.</p>\r\n<p>Tempor aliquam pulvinar congue fames curabitur nisl dui rutrum at, quis rhoncus auctor justo ullamcorper imperdiet nisi sollicitudin, proin dictumst est velit tellus vivamus praesent suspendisse. Sodales hac suspendisse vivamus pharetra nunc phasellus egestas, justo ullamcorper porttitor nam tortor sociosqu cubilia ornare, velit mattis porta quis tempus ridiculus. Vestibulum porta nec tincidunt rutrum vulputate tempor vivamus nullam, montes eget aliquam habitasse aliquet ultrices blandit pretium, phasellus ut pharetra quisque mi neque non. Nunc in condimentum litora imperdiet maecenas dui ultrices aliquam, magna nec semper</p>', 1, 1, 1, '2021-07-14 02:00:23', '2021-07-14 02:00:48'),
(12, 4, 'Getting to know really us', 'getting-to-know-really-us', 'getting-to-know-really-us-2021-07-14-60ee9c3d19bae.jpg', '<div class=\"output-container scrollbars\">\r\n<div id=\"output\">\r\n<ul>\r\n<li>Lorem ipsum dolor sit amet consectetur, adipiscing elit penatibus aenean.</li>\r\n<li>Odio curabitur rhoncus cum lectus, vivamus orci conubia.</li>\r\n<li>Cum feugiat phasellus nam, nisi litora.</li>\r\n<li>Ut aliquet dapibus aenean ultrices ligula, feugiat ridiculus nullam.</li>\r\n<li>Nunc est elementum quis feugiat, proin luctus.</li>\r\n<li>Mattis fusce rutrum arcu fringilla, nostra nascetur mus.</li>\r\n<li>Rutrum cum metus suspendisse commodo, leo justo hac, montes maecenas magna.</li>\r\n<li>Porttitor nullam faucibus fringilla consequat, quisque feugiat.</li>\r\n<li>Porttitor eget vestibulum neque senectus, enim sem nascetur.</li>\r\n<li>Nostra venenatis bibendum curae egestas, augue parturient et.</li>\r\n<li>Justo vestibulum sem ligula, suspendisse nulla molestie sodales, pharetra massa.</li>\r\n<li>Vehicula nulla penatibus iaculis vestibulum, interdum tellus.</li>\r\n<li>Penatibus tortor himenaeos senectus viverra, auctor etiam.</li>\r\n<li>Malesuada donec sed rutrum leo magnis, nascetur porta blandit congue.</li>\r\n<li>Euismod pulvinar quam eleifend ultricies egestas, metus cum nisl bibendum.</li>\r\n<li>Auctor diam nibh quisque iaculis, suscipit curae dis.</li>\r\n<li>Magna dapibus convallis auctor neque platea, senectus nunc tempor.</li>\r\n<li>Auctor laoreet feugiat morbi cursus at, vel suscipit condimentum.</li>\r\n<li>Elementum ornare vitae nam tempor donec, auctor felis lacinia himenaeos.</li>\r\n<li>Suscipit dapibus at quis tempor laoreet, dictum vehicula aliquam.</li>\r\n<li>Venenatis purus curae posuere platea parturient, cum iaculis risus.</li>\r\n<li>Malesuada morbi vel commodo platea, eget quis ullamcorper.</li>\r\n<li>Magnis ridiculus vehicula ullamcorper semper, suscipit ante pretium.</li>\r\n<li>Vulputate quam sodales enim nascetur aptent, class condimentum laoreet.</li>\r\n<li>Consequat orci malesuada pulvinar sapien, sagittis rhoncus.</li>\r\n<li>Ornare consequat nisi odio ut in, risus congue nunc scelerisque.</li>\r\n<li>Dignissim platea lacus sodales risus, mus mattis.</li>\r\n<li>Integer tellus varius quis viverra platea, facilisi nullam montes vitae.</li>\r\n<li>Sociosqu aptent per hac velit, ridiculus est suspendisse.</li>\r\n<li>Semper sociosqu non pellentesque duis orci, class pretium pharetra tellus.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>', 3, 1, 1, '2021-07-14 02:11:41', '2021-08-02 08:08:43'),
(13, 5, 'Lorem ipsum', 'lorem-ipsum', 'lorem-ipsum-2021-07-14-60eec5c7bbe6c.jpg', '<div class=\"output-container\">\r\n<div id=\"output\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipiscing elit at sapien convallis, quam nulla dignissim faucibus euismod tincidunt pharetra curae ultrices vel, dapibus et nostra praesent fusce senectus mus facilisi potenti.</p>\r\n<div class=\"output-container\">\r\n<div id=\"output\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipiscing elit at sapien convallis, quam nulla dignissim faucibus euismod tincidunt pharetra curae ultrices vel, dapibus et nostra praesent fusce senectus mus facilisi potenti.</p>\r\n<div class=\"output-container\">\r\n<div id=\"output\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipiscing elit at sapien convallis, quam nulla dignissim faucibus euismod tincidunt pharetra curae ultrices vel, dapibus et nostra praesent fusce senectus mus facilisi potenti.</p>\r\n<div class=\"output-container scrollbars\">\r\n<div id=\"output\">\r\n<ul>\r\n<li>Lorem ipsum dolor sit amet consectetur, adipiscing elit dapibus.</li>\r\n<li>Primis euismod nec habitant sapien venenatis, eros lectus vulputate vivamus.</li>\r\n<li>Facilisis imperdiet blandit metus taciti, pretium gravida.</li>\r\n<li>Mollis arcu blandit vulputate non, sodales nec mauris.</li>\r\n<li>Habitant nam tellus scelerisque per, fermentum libero lectus, sociis volutpat integer.</li>\r\n<li>Rhoncus pretium facilisi inceptos, vivamus et, vehicula integer.</li>\r\n<li>Pretium primis hendrerit torquent morbi, elementum vehicula eu.</li>\r\n<li>Commodo a montes cras sollicitudin, ad quisque vehicula.</li>\r\n<li>Laoreet aptent natoque egestas, sagittis habitasse montes penatibus, aliquam etiam.</li>\r\n<li>Ligula eleifend natoque taciti mollis conubia, a torquent sociosqu posuere.</li>\r\n<li>Aliquam est blandit non pharetra, viverra nostra felis.</li>\r\n<li>Molestie mi luctus nec cras pulvinar, magna a aliquam.</li>\r\n<li>Torquent tellus sociosqu varius molestie gravida, quisque erat pharetra.</li>\r\n<li>Risus ullamcorper dictumst odio, tristique inceptos, non purus.</li>\r\n<li>Varius risus dignissim dictumst duis cum, montes potenti blandit lobortis.</li>\r\n<li>Potenti dictumst pulvinar mi, faucibus enim.</li>\r\n<li>Commodo ornare velit rutrum lectus dui, augue montes euismod.</li>\r\n<li>Euismod laoreet in morbi blandit, sociosqu lacinia.</li>\r\n<li>Litora himenaeos risus hendrerit dignissim, pretium taciti senectus.</li>\r\n<li>Sodales nascetur sapien curae justo, rutrum arcu semper.</li>\r\n<li>Facilisi proin parturient dignissim aptent felis, in sem phasellus.</li>\r\n<li>Magnis tortor non vehicula cubilia mattis habitasse, morbi suscipit integer dapibus laoreet.</li>\r\n<li>Augue laoreet posuere diam consequat erat, torquent arcu at.</li>\r\n<li>Posuere elementum blandit volutpat bibendum egestas, at curae etiam.</li>\r\n<li>Potenti laoreet justo consequat nostra non libero, viverra id suspendisse platea hac.</li>\r\n<li>Auctor malesuada quis sem dui, sociosqu bibendum.</li>\r\n<li>Lacus morbi semper purus condimentum volutpat, eros tincidunt nascetur sem.</li>\r\n<li>Per fringilla mollis vestibulum egestas aliquam, rhoncus iaculis malesuada auctor.</li>\r\n<li>Risus curabitur ut dignissim euismod consequat, leo condimentum rutrum.</li>\r\n<li>Vulputate fames fringilla vivamus quis, vel gravida massa.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 2, 1, 1, '2021-07-14 05:08:56', '2021-08-02 08:00:16'),
(14, 1, 'We are using relationships altogether', 'we-are-using-relationships-altogether', 'we-are-using-relationships-altogether-2021-08-02-6107fa21dbf3a.png', '<ul>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>\r\n<li>Ante phasellus laoreet lobortis ridiculus penatibus, vulputate egestas congue.</li>\r\n<li>Pharetra inceptos condimentum rhoncus, neque commodo.</li>\r\n<li>Volutpat nec fames natoque diam, dictum conubia.</li>\r\n<li>Id urna cras sociosqu nec, curae justo fermentum.</li>\r\n<li>Ultricies potenti arcu massa auctor ante, primis nulla turpis fames.</li>\r\n<li>Quam convallis placerat interdum nullam tincidunt, dictumst feugiat auctor.</li>\r\n<li>Class himenaeos gravida nostra mus magnis, faucibus dictumst bibendum.</li>\r\n</ul>', 0, 1, 1, '2021-08-02 07:59:01', '2021-08-02 07:59:01'),
(15, 2, 'Getting to know really us better', 'getting-to-know-really-us-better', 'getting-to-know-really-us-better-2021-08-02-6107faf59c9ae.png', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent hendrerit, quisque quam pretium felis litora mauris dis cras, mattis nullam porta fusce tellus platea in placerat. Fusce scelerisque mus class in tortor sem montes nisi, nascetur proin bibendum cursus placerat etiam praesent, viverra lacinia et posuere tellus dictumst vel. At cursus leo odio turpis ut varius nisi accumsan parturient habitant habitasse nam, feugiat risus quam a porttitor fringilla nostra vel consequat donec. Erat duis purus fusce nulla arcu aliquam ante lacus, sociosqu eros habitant mattis feugiat tellus cras, sollicitudin parturient convallis integer rutrum augue orci. Interdum euismod sollicitudin congue curabitur quam ultrices dignissim neque, morbi ante primis felis non nulla facilisi, tristique commodo ad enim mi aptent urna. Sodales eleifend bibendum egestas fusce dictum tincidunt justo scelerisque platea ante semper sagittis cubilia hendrerit, rhoncus porttitor velit potenti tempus massa luctus etiam ac nisi euismod dapibus faucibus. Ante cras arcu taciti penatibus rhoncus maecenas et sodales malesuada curabitur netus neque accumsan, viverra porta euismod tempus metus imperdiet leo augue tincidunt dictumst fames pulvinar suspendisse, per fermentum dui duis nostra habitasse magnis ac luctus egestas urna torquent. Massa vulputate vitae phasellus penatibus integer neque hac mi, habitasse at dis vel et pellentesque accumsan, pharetra lectus sodales euismod velit aliquam nunc.</p>', 1, 1, 1, '2021-08-02 08:02:32', '2021-08-24 08:30:46'),
(16, 2, 'fdsoigjfdgdfsg', 'fdsoigjfdgdfsg', 'fdsoigjfdgdfsg-2021-09-03-61322c440da6d.png', '<p>werfgdgdfgdf sgdfgsdfg dfsgdsgdfsg</p>', 0, 1, 1, '2021-09-03 08:08:06', '2021-09-03 08:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(4, 2, 1, '2021-07-14 00:58:07', '2021-07-14 00:58:07'),
(5, 2, 2, '2021-07-14 00:58:07', '2021-07-14 00:58:07'),
(6, 2, 6, '2021-07-14 00:58:07', '2021-07-14 00:58:07'),
(7, 3, 1, '2021-07-14 01:02:15', '2021-07-14 01:02:15'),
(8, 3, 2, '2021-07-14 01:02:15', '2021-07-14 01:02:15'),
(9, 3, 8, '2021-07-14 01:02:15', '2021-07-14 01:02:15'),
(10, 4, 6, '2021-07-14 01:08:04', '2021-07-14 01:08:04'),
(11, 5, 2, '2021-07-14 01:15:30', '2021-07-14 01:15:30'),
(12, 5, 6, '2021-07-14 01:15:30', '2021-07-14 01:15:30'),
(13, 6, 3, '2021-07-14 01:17:17', '2021-07-14 01:17:17'),
(14, 6, 4, '2021-07-14 01:17:17', '2021-07-14 01:17:17'),
(15, 6, 5, '2021-07-14 01:17:17', '2021-07-14 01:17:17'),
(16, 7, 1, '2021-07-14 01:19:32', '2021-07-14 01:19:32'),
(17, 7, 2, '2021-07-14 01:19:32', '2021-07-14 01:19:32'),
(18, 7, 3, '2021-07-14 01:19:32', '2021-07-14 01:19:32'),
(19, 7, 6, '2021-07-14 01:19:32', '2021-07-14 01:19:32'),
(20, 7, 7, '2021-07-14 01:19:32', '2021-07-14 01:19:32'),
(21, 8, 2, '2021-07-14 01:31:57', '2021-07-14 01:31:57'),
(22, 8, 4, '2021-07-14 01:31:57', '2021-07-14 01:31:57'),
(23, 8, 5, '2021-07-14 01:31:57', '2021-07-14 01:31:57'),
(24, 8, 6, '2021-07-14 01:31:57', '2021-07-14 01:31:57'),
(25, 9, 2, '2021-07-14 01:33:53', '2021-07-14 01:33:53'),
(26, 9, 4, '2021-07-14 01:33:53', '2021-07-14 01:33:53'),
(27, 9, 5, '2021-07-14 01:33:53', '2021-07-14 01:33:53'),
(28, 10, 2, '2021-07-14 01:35:40', '2021-07-14 01:35:40'),
(29, 10, 3, '2021-07-14 01:35:40', '2021-07-14 01:35:40'),
(30, 10, 4, '2021-07-14 01:35:40', '2021-07-14 01:35:40'),
(31, 10, 5, '2021-07-14 01:35:40', '2021-07-14 01:35:40'),
(32, 10, 6, '2021-07-14 01:35:40', '2021-07-14 01:35:40'),
(33, 11, 1, '2021-07-14 02:00:23', '2021-07-14 02:00:23'),
(34, 11, 3, '2021-07-14 02:00:23', '2021-07-14 02:00:23'),
(35, 11, 4, '2021-07-14 02:00:23', '2021-07-14 02:00:23'),
(36, 11, 5, '2021-07-14 02:00:23', '2021-07-14 02:00:23'),
(37, 11, 6, '2021-07-14 02:00:23', '2021-07-14 02:00:23'),
(38, 12, 1, '2021-07-14 02:11:41', '2021-07-14 02:11:41'),
(39, 12, 3, '2021-07-14 02:11:41', '2021-07-14 02:11:41'),
(40, 12, 5, '2021-07-14 02:11:41', '2021-07-14 02:11:41'),
(41, 12, 6, '2021-07-14 02:11:41', '2021-07-14 02:11:41'),
(42, 12, 7, '2021-07-14 02:11:41', '2021-07-14 02:11:41'),
(43, 12, 8, '2021-07-14 02:11:41', '2021-07-14 02:11:41'),
(44, 13, 2, '2021-07-14 05:08:56', '2021-07-14 05:08:56'),
(45, 13, 4, '2021-07-14 05:08:56', '2021-07-14 05:08:56'),
(46, 13, 5, '2021-07-14 05:08:56', '2021-07-14 05:08:56'),
(47, 13, 6, '2021-07-14 05:08:56', '2021-07-14 05:08:56'),
(48, 14, 1, '2021-08-02 07:59:01', '2021-08-02 07:59:01'),
(49, 14, 2, '2021-08-02 07:59:01', '2021-08-02 07:59:01'),
(50, 14, 3, '2021-08-02 07:59:01', '2021-08-02 07:59:01'),
(51, 15, 1, '2021-08-02 08:02:32', '2021-08-02 08:02:32'),
(52, 15, 2, '2021-08-02 08:02:32', '2021-08-02 08:02:32'),
(53, 15, 6, '2021-08-02 08:02:32', '2021-08-02 08:02:32'),
(54, 16, 1, '2021-09-03 08:08:06', '2021-09-03 08:08:06'),
(55, 16, 3, '2021-09-03 08:08:06', '2021-09-03 08:08:06'),
(56, 16, 4, '2021-09-03 08:08:06', '2021-09-03 08:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `post_user`
--

CREATE TABLE `post_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_user`
--

INSERT INTO `post_user` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2021-07-14 00:59:09', '2021-07-14 00:59:09'),
(2, 10, 1, '2021-07-14 01:39:32', '2021-07-14 01:39:32'),
(3, 8, 1, '2021-07-14 01:39:36', '2021-07-14 01:39:36'),
(4, 5, 1, '2021-07-14 01:39:40', '2021-07-14 01:39:40'),
(5, 6, 1, '2021-07-14 01:39:45', '2021-07-14 01:39:45'),
(6, 12, 1, '2021-07-14 02:13:25', '2021-07-14 02:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Author', 'author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'ammi@blog.com', '2021-08-02 08:06:37', '2021-08-02 08:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'laravel', 'laravel', '2021-07-14 00:45:16', '2021-07-14 00:45:16'),
(2, 'carrer', 'carrer', '2021-07-14 00:45:31', '2021-07-14 00:45:31'),
(3, 'javaScript', 'javascript', '2021-07-14 00:45:54', '2021-07-14 00:45:54'),
(4, 'html', 'html', '2021-07-14 00:46:03', '2021-07-14 00:46:03'),
(5, 'css', 'css', '2021-07-14 00:46:09', '2021-07-14 00:46:09'),
(6, 'programming language', 'programming-language', '2021-07-14 00:46:31', '2021-07-14 00:46:31'),
(7, 'Vue js', 'vue-js', '2021-07-14 00:46:41', '2021-08-02 07:59:59'),
(8, 'relation', 'relation', '2021-07-14 00:47:08', '2021-07-14 00:47:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT '2',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `about` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `image`, `about`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Estyaque', 'admin', 'admin@blog.com', NULL, '$2y$10$pAOUdhomAwGExvs/lWandOWgsbzQ5hGM2aQB9Jd7Oe8NhrrCLyI/6', 'estyaque-2021-07-14-60ee88dd28a90.jpg', 'Lorem ipsum dolor sit amet consectetur adipiscing elit dictum phasellus, est senectus convallis sociis tellus quisque faucibus augue, cum mollis suscipit at vel scelerisque sociosqu magna. Porta cursus litora nullam nec hac parturient placerat, mauris eu ante aptent sapien nibh tempus tellus, lacinia consequat dapibus suscipit neque urna. Eu habitasse rhoncus torquent posuere dis parturient platea dictumst ac, dui vitae nam massa velit aenean a porttitor, magnis fames nascetur sodales tortor dapibus ullamcorper luctus. Sed class ad potenti non tellus conubia blandit habitant fringilla, natoque quisque auctor mus accumsan nec primis hendrerit lacinia ultricies', NULL, '2021-07-01 05:05:07', '2021-07-14 00:49:01'),
(2, 2, 'Author', 'author', 'author@blog.com', NULL, '$2y$10$SD3tYdmAXhuXfQEmgJ.6iOqL4fVGa0u6FZV6W3gtBGhKQ56eQpngO', 'author-2021-07-14-60ee8eb50c0fc.png', 'Lorem ipsum dolor sit amet consectetur adipiscing elit senectus nostra platea, rhoncus leo nascetur nulla posuere hac volutpat lacus dignissim pulvinar, habitant aptent sociosqu per consequat placerat parturient ornare mollis.', NULL, '2021-07-02 05:05:12', '2021-07-14 01:13:57'),
(3, 2, 'Zann', 'zann', 'zann@blog.com', NULL, '$2y$10$NBx0.YItwaciu0mSIMe4Deg0qb1pG8LVufuRE3Y8g5LYq8G2Jn9QC', 'zann-2021-07-14-60ee942623590.png', 'Lorem ipsum dolor sit amet consectetur adipiscing elit rhoncus litora arcu quisque quis, sociosqu non fermentum est bibendum netus tincidunt posuere blandit sem conubia. Metus donec risus nunc, dignissim mus.', NULL, '2021-07-14 01:28:46', '2021-07-14 01:37:10'),
(4, 2, 'Fatema', 'fatema', 'fatema@blog.com', NULL, '$2y$10$.3jtmN14ajOl1USqFq8j5OLmNsdFxRoXKlbmuZmFIOzNgkcAha416', 'fatema-2021-07-14-60ee9bed57ff1.png', 'Lorem ipsum dolor sit amet consectetur adipiscing elit fusce etiam torquent, velit purus bibendum commodo montes inceptos ad vehicula quis varius, tempus conubia erat tortor mi vivamus volutpat in aptent.', NULL, '2021-07-14 02:09:03', '2021-07-14 02:10:21'),
(5, 2, 'Tanvir', 'tanvir', 'tanvir@blog.com', NULL, '$2y$10$wT1YFzZ4qM8NZWMDOIizdeJZKM.VQsx3HhF78L6.13VL3sYrJ2Fbm', 'tanvir-2021-07-14-60eec5f794ad1.png', 'Lorem ipsum dolor sit amet consectetur adipiscing elit dictumst congue volutpat, lobortis mus enim euismod libero nullam at tempor aliquet dignissim, ultrices ut blandit tempus massa senectus etiam parturient morbi.', NULL, '2021-07-14 05:06:17', '2021-07-14 05:09:43'),
(6, 2, 'Ammi', 'ammi', 'ammi@gmail.com', NULL, '$2y$10$ayO4J486ImGYC6i8Z7mjwe3s9bREnFx0bTgKGvW7eJ0xuvDJn02oe', 'default.png', NULL, NULL, '2021-08-02 08:10:01', '2021-08-02 08:10:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post_category_id_foreign` (`category_id`),
  ADD KEY `category_post_post_id_foreign` (`post_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user_post_id_foreign` (`post_id`),
  ADD KEY `post_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `post_user`
--
ALTER TABLE `post_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_user`
--
ALTER TABLE `post_user`
  ADD CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
