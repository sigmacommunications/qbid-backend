-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2025 at 02:19 PM
-- Server version: 10.3.39-MariaDB
-- PHP Version: 8.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qbid`
--

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `quote_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `coverletter` varchar(255) DEFAULT NULL,
  `expertise` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `attachment` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` enum('pending','accept','reject') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `user_id`, `quote_id`, `email`, `coverletter`, `expertise`, `fullname`, `phone`, `attachment`, `price`, `status`, `created_at`, `updated_at`) VALUES
(217, '78', '159', 'qbid@yahoo.com', 'got you', 'Heavy Duty Vehicles', 'chris', '8176902562', NULL, NULL, 'accept', '2025-07-29 01:13:55', '2025-07-29 01:21:14'),
(219, '80', '160', 'be4@gmail.com', 'asdasdasdasdasdasdasdasdasdsdadasdasdasdasdasda', 'Auto repair', 'be', '1544787877', NULL, 3200, 'accept', '2025-08-04 11:42:11', '2025-08-21 03:14:12'),
(221, '80', '163', 'be4@gmail.com', 'yshhshhshshhsbshbsjsbjsbsjbsjsbn', 'Auto repair', 'be', '1544787877', NULL, 200, 'accept', '2025-08-04 13:45:07', '2025-08-04 13:50:26'),
(222, '83', '165', 'ven@gmail.com', 'undefined', 'Auto repair', 'Vendor', '1234567890', NULL, 1000, 'pending', '2025-08-07 22:20:33', '2025-08-07 22:20:33'),
(223, '80', '165', 'be4@gmail.com', 'dgdgdgdgdgdggdgdhgggggggggggggggggggfghfhhfhfhfhfhfhfh', 'Auto repair', 'be', '1544787877', NULL, 750, 'pending', '2025-08-08 09:34:00', '2025-08-08 09:39:29'),
(224, '80', '164', 'be4@gmail.com', 'gagdasgdagdhagdhagagahdahdadagshdahdvahzzsfsdfsfsf', 'plumbing Projects', 'be', '1544787877', NULL, 90, 'accept', '2025-08-08 10:46:44', '2025-08-11 09:42:03'),
(225, '83', '160', 'ven@gmail.com', 'xzXzXzXzXzXz', 'plumbing Projects', 'Vendor', '1234567890', NULL, 11111, 'reject', '2025-08-09 02:43:09', '2025-08-21 03:14:12'),
(226, '80', '166', 'be4@gmail.com', 'Tap on a clip to paste it in the text box.Tap on a clip to paste it in the text box.Tap on a clip to paste it in the text box.', 'Auto repair', 'be', '1544787877', NULL, 240, 'accept', '2025-08-11 10:45:49', '2025-08-11 10:54:27'),
(227, '80', '167', 'be4@gmail.com', 'Welcome to Gboard clipboard, any text you copy will be saved here.Welcome to Gboard clipboard, any text you copy will be saved', 'Auto repair', 'be', '1544787877', NULL, 500, 'accept', '2025-08-11 12:13:42', '2025-08-11 14:28:33'),
(229, '80', '168', 'be4@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Auto repair', 'be', '1544787877', NULL, 1900, 'pending', '2025-08-18 12:44:53', '2025-08-18 12:44:53'),
(230, '78', '160', 'chrisnevins@rocketmail.com', '6 months or 6k mikes warranty and a loaner if needed no charge', 'Auto repair', 'fast auto', '8176902562', NULL, NULL, 'reject', '2025-08-21 02:51:06', '2025-08-21 03:14:12'),
(231, '84', '165', 'nevinsdrew@gmail.com', 'w what\'s up let\'s here get it done', 'Auto repair', 'Shawn', '8178754838', NULL, NULL, 'pending', '2025-08-21 03:49:17', '2025-08-21 03:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `bid_helps`
--

CREATE TABLE `bid_helps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `quote_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `state` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bid_help_images`
--

CREATE TABLE `bid_help_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bid_help_id` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bid_images`
--

CREATE TABLE `bid_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bid_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bid_images`
--

INSERT INTO `bid_images` (`id`, `bid_id`, `image`, `created_at`, `updated_at`) VALUES
(67, 217, 'https://qbid.cstmpanel.com/uploads/bid/6969099f30ec62689f64b40f0bf4991bQbid.jpg', '2025-07-29 01:13:55', '2025-07-29 01:13:55'),
(69, 219, 'https://qbid.cstmpanel.com/uploads/bid/cf6b8568c8d72ab7e2584358be542b63Qbid.jpg', '2025-08-04 11:42:11', '2025-08-04 11:42:11'),
(70, 219, 'https://qbid.cstmpanel.com/uploads/bid/b12dfab7159bf1876436693ed813a98bQbid.jpg', '2025-08-04 11:46:48', '2025-08-04 11:46:48'),
(71, 219, 'https://qbid.cstmpanel.com/uploads/bid/66f14fa56e1ee861346fe92ed2bc0244Qbid.jpg', '2025-08-04 11:47:16', '2025-08-04 11:47:16'),
(73, 220, 'https://qbid.cstmpanel.com/uploads/bid/61cc5907e21ec2557b96450c9352f9c8Qbid.jpg', '2025-08-04 12:48:11', '2025-08-04 12:48:11'),
(74, 221, 'https://qbid.cstmpanel.com/uploads/bid/d25f7eedf9dcd27883acf7248b61d7cbQbid.jpg', '2025-08-04 13:45:08', '2025-08-04 13:45:08'),
(76, 223, 'https://qbid.cstmpanel.com/uploads/bid/bbe55ff3a413851121eeeb2fcadffeefQbid.jpg', '2025-08-08 10:26:38', '2025-08-08 10:26:38'),
(79, 226, 'https://qbid.cstmpanel.com/uploads/bid/d801b433efc8e8a0f695b7682021699dQbid.jpg', '2025-08-11 10:45:49', '2025-08-11 10:45:49'),
(80, 227, 'https://qbid.cstmpanel.com/uploads/bid/b0f2181786c589eb21c749e033218c02Qbid.jpg', '2025-08-11 12:13:42', '2025-08-11 12:13:42'),
(82, 229, 'https://qbid.cstmpanel.com/uploads/bid/f98e991eeecfa486b3c3cafdd8f5cec0Qbid.jpg', '2025-08-18 12:44:53', '2025-08-18 12:44:53'),
(83, 229, 'https://qbid.cstmpanel.com/uploads/bid/aebff7e2387a83d73aa03f9e49f89ee2Qbid.jpg', '2025-08-18 12:44:54', '2025-08-18 12:44:54'),
(84, 230, 'https://qbid.cstmpanel.com/uploads/bid/8933b2e3b1db11e89fb2bee984bffb09Qbid.jpg', '2025-08-21 02:51:06', '2025-08-21 02:51:06'),
(85, 231, 'https://qbid.cstmpanel.com/uploads/bid/369f1ac9c8e5066e3301390cd9bdfcc7Qbid.jpg', '2025-08-21 03:49:17', '2025-08-21 03:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `user_id`, `target_id`, `created_at`, `updated_at`) VALUES
(1, 22, 7, '2024-06-11 18:58:19', '2024-06-11 18:58:19'),
(3, 1, 2, '2024-06-20 14:56:22', '2024-06-20 14:56:22'),
(4, 52, 53, '2024-06-21 10:35:40', '2024-06-21 10:35:40'),
(5, 52, 38, '2024-06-28 08:42:34', '2024-06-28 08:42:34'),
(6, 2, 53, '2024-07-18 13:45:39', '2024-07-18 13:45:39'),
(7, 2, 38, '2024-07-18 13:46:28', '2024-07-18 13:46:28'),
(8, 58, 59, '2024-10-01 16:53:57', '2024-10-01 16:53:57'),
(9, 61, 63, '2024-10-29 11:36:31', '2024-10-29 11:36:31'),
(10, 65, 64, '2024-10-29 12:47:34', '2024-10-29 12:47:34'),
(11, 67, 66, '2024-11-04 23:26:43', '2024-11-04 23:26:43'),
(12, 68, 69, '2024-11-05 10:39:19', '2024-11-05 10:39:19'),
(13, 68, 70, '2024-11-05 13:48:16', '2024-11-05 13:48:16'),
(14, 72, 73, '2024-12-09 20:23:43', '2024-12-09 20:23:43'),
(15, 65, 38, '2024-12-23 16:05:00', '2024-12-23 16:05:00'),
(16, 74, 75, '2025-01-08 17:40:35', '2025-01-08 17:40:35'),
(17, 77, 75, '2025-01-14 16:20:17', '2025-01-14 16:20:17'),
(18, 72, 38, '2025-01-17 17:30:26', '2025-01-17 17:30:26'),
(19, 79, 78, '2025-07-29 01:21:14', '2025-07-29 01:21:14'),
(20, 81, 80, '2025-08-04 13:50:27', '2025-08-04 13:50:27'),
(21, 79, 80, '2025-08-21 03:14:12', '2025-08-21 03:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `text` text DEFAULT NULL,
  `user` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`user`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `is_read` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `chat_id`, `user_id`, `target_id`, `text`, `user`, `created_at`, `is_read`, `updated_at`, `deleted_at`) VALUES
(112, 19, 79, 78, 'Congrats! Your bid for the My truck Repairs has been accepted', '{\"_id\":79,\"name\":\"chris\",\"avatar\":\"https:\\/\\/qbid.cstmpanel.com\\/uploads\\/user\\/profiles\\/59cf22358cc98433bf1b29ebbdefd07ajpg\"}', '2025-07-29 01:21:14', 0, '2025-07-29 01:21:14', NULL),
(113, 20, 81, 80, 'Congrats! Your bid for the testing has been accepted', '{\"_id\":81,\"name\":\"member\",\"avatar\":\"https:\\/\\/qbid.cstmpanel.com\\/uploads\\/user\\/profiles\\/6b7e1539511907913c0f999f3791938ejpg\"}', '2025-08-04 13:50:27', 0, '2025-08-04 13:50:27', NULL),
(114, 20, 81, 80, 'Congrats! Your bid for the testsda has been accepted', '{\"_id\":81,\"name\":\"member\",\"avatar\":\"https:\\/\\/qbid.cstmpanel.com\\/uploads\\/user\\/profiles\\/6b7e1539511907913c0f999f3791938ejpg\"}', '2025-08-11 09:42:04', 0, '2025-08-11 09:42:04', NULL),
(115, 20, 81, 80, 'Congrats! Your bid for the test bid has been accepted', '{\"_id\":81,\"name\":\"member\",\"avatar\":\"https:\\/\\/qbid.cstmpanel.com\\/uploads\\/user\\/profiles\\/6b7e1539511907913c0f999f3791938ejpg\"}', '2025-08-11 10:54:27', 0, '2025-08-11 10:54:27', NULL),
(116, 20, 81, 80, 'Congrats! Your bid for the testing has been accepted', '{\"_id\":81,\"name\":\"member\",\"avatar\":\"https:\\/\\/qbid.cstmpanel.com\\/uploads\\/user\\/profiles\\/6b7e1539511907913c0f999f3791938ejpg\"}', '2025-08-11 14:28:33', 0, '2025-08-11 14:28:33', NULL),
(117, 21, 79, 80, 'Congrats! Your bid for the Fix my truck engine has been accepted', '{\"_id\":79,\"name\":\"chris\",\"avatar\":\"https:\\/\\/qbid.cstmpanel.com\\/uploads\\/user\\/profiles\\/59cf22358cc98433bf1b29ebbdefd07ajpg\"}', '2025-08-21 03:14:12', 0, '2025-08-21 03:14:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_05_03_000001_create_customer_columns', 1),
(9, '2019_05_03_000002_create_subscriptions_table', 1),
(10, '2019_05_03_000003_create_subscription_items_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2022_11_03_095742_create_reset_code_passwords_table', 1),
(14, '2023_10_23_103213_create_quotes_table', 2),
(15, '2023_10_23_103859_create_quote_images_table', 3),
(16, '2023_10_23_141758_create_bids_table', 4),
(17, '2023_10_24_161601_create_bid_helps_table', 5),
(18, '2023_10_24_161940_create_bid_help_images_table', 5),
(19, '2023_10_30_175658_create_reviews_table', 6),
(20, '2023_11_01_124159_create_supports_table', 7),
(21, '2024_03_22_050840_create_notifications_table', 8),
(23, '2024_03_22_050845_create_notifications_table', 9),
(24, '2024_03_22_071152_create_quote_helps_table', 10),
(25, '2014_10_28_175635_create_threads_table', 11),
(26, '2014_10_28_175710_create_messages_table', 11),
(27, '2014_10_28_180224_create_participants_table', 11),
(28, '2014_11_03_154831_add_soft_deletes_to_participants_table', 11),
(29, '2014_12_04_124531_add_softdeletes_to_threads_table', 11),
(30, '2017_03_30_152742_add_soft_deletes_to_messages_table', 11),
(31, '2024_06_05_144545_create_conversation_table', 11),
(32, '2024_07_05_100910_create_bid_images_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quote_id` int(11) NOT NULL,
  `service_preference` varchar(250) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `body`, `user_id`, `quote_id`, `service_preference`, `read_at`, `created_at`, `updated_at`) VALUES
(157, 'Bid Request', 'MR chris nevins applied on your Quote', 79, 159, NULL, NULL, '2025-07-29 00:53:03', '2025-07-29 00:53:03'),
(158, 'Bid Request', 'MR chris nevins applied on your Quote', 79, 159, NULL, NULL, '2025-07-29 01:13:55', '2025-07-29 01:13:55'),
(159, 'Bid Accept', 'Congrats! Your bid for the My truck Repairs has been accepted', 78, 159, NULL, NULL, '2025-07-29 01:21:14', '2025-07-29 01:21:14'),
(160, 'Bid Update', 'MR be 4 updated the bid on your Quote', 79, 160, NULL, NULL, '2025-07-30 16:49:31', '2025-08-04 11:46:48'),
(161, 'Bid Request', 'MR be 4 applied on your Quote', 79, 160, NULL, NULL, '2025-08-04 11:42:11', '2025-08-04 11:42:11'),
(162, 'Bid Update', 'MR be 4 updated the bid on your Quote', 81, 161, NULL, NULL, '2025-08-04 12:44:35', '2025-08-04 12:48:11'),
(163, 'Bid Rejected', 'Your bid ahgsdgasdgasd is rejected.', 80, 161, NULL, NULL, '2025-08-04 13:20:22', '2025-08-04 13:20:22'),
(164, 'Bid Request', 'MR be 4 applied on your Quote', 81, 163, NULL, NULL, '2025-08-04 13:45:07', '2025-08-04 13:45:07'),
(165, 'Bid Accept', 'Congrats! Your bid for the testing has been accepted', 80, 163, NULL, NULL, '2025-08-04 13:50:26', '2025-08-04 13:50:26'),
(166, 'Bid Update', 'MR be 4 updated the bid on your Quote', 82, 165, NULL, NULL, '2025-08-07 22:20:33', '2025-08-08 09:38:16'),
(167, 'Bid Request', 'MR be 4 applied on your Quote', 82, 165, NULL, NULL, '2025-08-08 09:34:00', '2025-08-08 09:34:00'),
(168, 'Bid Update', 'MR be 4 updated the bid on your Quote', 81, 164, NULL, NULL, '2025-08-08 10:46:44', '2025-08-08 11:03:37'),
(169, 'Bid Request', 'MR Vendor Vendor applied on your Quote', 79, 160, NULL, NULL, '2025-08-09 02:43:09', '2025-08-09 02:43:09'),
(170, 'Bid Accept', 'Congrats! Your bid for the testsda has been accepted', 80, 164, NULL, NULL, '2025-08-11 09:42:03', '2025-08-11 09:42:03'),
(171, 'Quote Complete', 'testing has request to complete', 80, 163, NULL, NULL, '2025-08-11 09:42:16', '2025-08-11 09:42:16'),
(172, 'Bid Request', 'MR be 4 applied on your Quote', 81, 166, NULL, NULL, '2025-08-11 10:45:49', '2025-08-11 10:45:49'),
(173, 'Bid Accept', 'Congrats! Your bid for the test bid has been accepted', 80, 166, NULL, NULL, '2025-08-11 10:54:27', '2025-08-11 10:54:27'),
(174, 'Quote Complete', 'testsda has request to complete', 80, 164, NULL, NULL, '2025-08-11 11:44:28', '2025-08-11 11:44:28'),
(175, 'Quote Complete', 'test bid has request to complete', 80, 166, NULL, NULL, '2025-08-11 11:55:09', '2025-08-11 11:55:09'),
(176, 'Bid Request', 'MR be 4 applied on your Quote', 81, 167, NULL, NULL, '2025-08-11 12:02:21', '2025-08-11 12:02:21'),
(177, 'Bid Request', 'MR be 4 applied on your Quote', 81, 167, NULL, NULL, '2025-08-11 12:03:53', '2025-08-11 12:03:53'),
(178, 'Bid Request', 'MR be 4 applied on your Quote', 81, 167, NULL, NULL, '2025-08-11 12:08:30', '2025-08-11 12:08:30'),
(179, 'Bid Request', 'MR be 4 applied on your Quote', 81, 167, NULL, NULL, '2025-08-11 12:13:42', '2025-08-11 12:13:42'),
(180, 'Bid Accept', 'Congrats! Your bid for the testing has been accepted', 80, 167, NULL, NULL, '2025-08-11 14:28:33', '2025-08-11 14:28:33'),
(181, 'Bid Request', 'MR be 4 applied on your Quote', 81, 168, NULL, NULL, '2025-08-18 12:34:55', '2025-08-18 12:34:55'),
(182, 'Bid Request', 'MR be 4 applied on your Quote', 81, 168, NULL, NULL, '2025-08-18 12:44:53', '2025-08-18 12:44:53'),
(183, 'Bid Request', 'MR chris nevins applied on your Quote', 79, 160, NULL, NULL, '2025-08-21 02:51:06', '2025-08-21 02:51:06'),
(184, 'Bid Accept', 'Congrats! Your bid for the Fix my truck engine has been accepted', 80, 160, NULL, NULL, '2025-08-21 03:14:12', '2025-08-21 03:14:12'),
(185, 'Bid Request', 'MR Shawn Railey applied on your Quote', 82, 165, NULL, NULL, '2025-08-21 03:49:16', '2025-08-21 03:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00b8a543cc8c5a71321ac6ab38949dccc5740b2bd122343bf484bb05b02dd981cc0cce45b8353de1', 1, 1, 'app_api', '[]', 0, '2023-11-23 10:33:40', '2023-11-23 10:33:40', '2024-11-23 15:33:40'),
('00ba6198c9c892ad051d508ca9c3106e51b934c49d9c86ab3f88865a6bedff92a03cb923b7e25d8c', 2, 1, 'qbidapi', '[]', 0, '2023-11-16 05:58:33', '2023-11-16 05:58:34', '2024-11-16 10:58:33'),
('00d74fdc39c05adcd4f03cf3c077c193613f094c3e9f857d3aef3f803c1c836ac14698f9d58c4f92', 2, 1, 'app_api', '[]', 0, '2023-11-24 20:29:12', '2023-11-24 20:29:12', '2024-11-24 15:29:12'),
('00ef33d40da5f531652bd4bd915967544dadd68039d98a2a92d474cee9e5bcf8e0b6f87a8d3f1248', 19, 1, 'qbidapi', '[]', 0, '2023-11-16 04:03:49', '2023-11-16 04:03:49', '2024-11-16 09:03:49'),
('01513546e0ea03b86e245378ced7aa96e5719595263acc46fe4e88b8ecd7405d98e1157eed679d5a', 3, 1, 'app_api', '[]', 0, '2023-11-01 03:28:23', '2023-11-01 03:28:23', '2024-11-01 08:28:23'),
('0199a15ae51e497d49bc00cebf39418db02afbebbfcf6251fef19163f911e11d14ee3beb0a3011f4', 3, 1, 'app_api', '[]', 0, '2023-10-30 08:55:46', '2023-10-30 08:55:46', '2024-10-30 13:55:46'),
('0208ebeeab1dcee6f667940e3e9d70bf976764dda087077d3f1dc1b28c8c09edebe82ed7f1060642', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-15 17:52:33', '2023-12-15 17:52:33', '2024-12-15 12:52:33'),
('02a39c2323c1eddfd786a1b070116200ea2888fc3ae716e9548c7dc54abadd51561b4b53b840b832', 7, 1, 'app_api', '[]', 0, '2023-11-23 03:47:03', '2023-11-23 03:47:03', '2024-11-23 08:47:03'),
('03108c66c8c7e02440c89b9d0d0f3a1402c992d6a55e976562d85b7ea58ba49b06dff3f9f2fde3b0', 1, 1, 'app_api', '[]', 0, '2023-11-16 09:37:12', '2023-11-16 09:37:12', '2024-11-16 14:37:12'),
('03ad928ec23b916dbafb669740195dc209cec5cbf8230c7e2ef5e53e033c77fc126fcc17be4b5fd7', 2, 1, 'app_api', '[]', 0, '2023-11-09 10:00:25', '2023-11-09 10:00:25', '2024-11-09 15:00:25'),
('043b3a79abaa8f07c068378cc1bd5815449544c204be1e8732de49379fe890d85abc025d7ffba2a7', 3, 1, 'app_api', '[]', 0, '2023-11-10 04:12:50', '2023-11-10 04:12:50', '2024-11-10 09:12:50'),
('047e7ea3dd4ae07f1a44363b58feaed67cc51afc4dafd593df0fa09ad8530eac90b02891889fef56', 2, 1, 'app_api', '[]', 0, '2023-11-14 06:22:08', '2023-11-14 06:22:08', '2024-11-14 11:22:08'),
('053e522c792adb5261a90d279c3f7aa57a3a5f392bf136bb2fd2952877ad32a6d0c0338bac5fa91d', 3, 1, 'app_api', '[]', 0, '2023-11-10 03:50:17', '2023-11-10 03:50:17', '2024-11-10 08:50:17'),
('0584688d28309b5cc2e10447613d7acafa941b377a99839018ed102685203dd44d2d9d13b8cf66b7', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:01:22', '2023-11-23 11:01:22', '2024-11-23 16:01:22'),
('05a4860d3164b1c29964b626427db39d4cda6ebf93f5ffbd823f3f4a41c26a28c27bee35b37a83e7', 39, 1, 'qbidapp_api', '[]', 0, '2024-02-27 16:52:30', '2024-02-27 16:52:30', '2025-02-27 16:52:30'),
('05c75acfe1f9aa6d61b89015d676124ad39cfd4d4b55a9b7d46487fbffef33abf01417ba7ff19cfb', 3, 1, 'app_api', '[]', 0, '2023-11-16 04:26:27', '2023-11-16 04:26:27', '2024-11-16 09:26:27'),
('0670471496fa0d3b5f69acf7831cdc43352fc2b9f1437c0a8b3ced81e73bf933318a758a229c8374', 32, 1, 'qbidapp_api', '[]', 0, '2024-01-20 20:42:43', '2024-01-20 20:42:43', '2025-01-20 15:42:43'),
('06bc87a5ef7c7cae5f960455fc2279dbf7a821ba694704d2d44aa7dfe0eccefda31817cd6da3b14e', 10, 1, 'app_api', '[]', 0, '2023-11-23 10:12:24', '2023-11-23 10:12:24', '2024-11-23 15:12:24'),
('0748e02c99ad243934b1f13c3e949b170a9b47c0357f594ef23773794caf587cd792b8fa69d98e9d', 3, 1, 'app_api', '[]', 0, '2023-11-16 04:27:02', '2023-11-16 04:27:02', '2024-11-16 09:27:02'),
('0859affe5d4450e99be44be6a48836f356460f797a09bbba3a60f2128695ee6913aa1fe0c2f3ee41', 36, 1, 'qbidapp_api', '[]', 0, '2024-01-31 17:57:13', '2024-01-31 17:57:13', '2025-01-31 12:57:13'),
('099a93fc43105ad5fb8cf23de9340a5e02dd81bc907e712f0a4a960fd4c6edd806b6f7bc718155d7', 3, 1, 'app_api', '[]', 0, '2023-11-03 03:31:32', '2023-11-03 03:31:32', '2024-11-03 08:31:32'),
('0a30d88d70ef26e036c013df1908f85327dd4278f757396a65f29cc55a2c2ed6e68dc336c0313b4b', 2, 1, 'app_api', '[]', 0, '2023-10-25 08:58:19', '2023-10-25 08:58:19', '2024-10-25 13:58:19'),
('0a6e9b032afea1a2eaaf75b3e3dbfbd2d75e5d4606d41249d46f382ce408bc7ae5c6239e6a68527e', 31, 1, 'qbidapp_api', '[]', 0, '2024-02-27 16:54:19', '2024-02-27 16:54:19', '2025-02-27 16:54:19'),
('0a8b76e0ae46ab3c644a7b973cb25e2a59bf2a669e6e5e3143f39bf15e1258a430d92d4926619578', 1, 1, 'app_api', '[]', 0, '2023-11-24 20:09:07', '2023-11-24 20:09:07', '2024-11-24 15:09:07'),
('0ae66e1141383c59849858737af29c17ce2ecef2930f154922dcea7db563ac42492b35f47603ee8e', 2, 1, 'app_api', '[]', 0, '2023-11-10 08:36:56', '2023-11-10 08:36:56', '2024-11-10 13:36:56'),
('0bf99be58ce8a1b04b4f2711354a8c80cf96927d19a95998caba1316ba49c0eb330955a8b256d2d0', 3, 1, 'app_api', '[]', 0, '2023-11-01 10:44:08', '2023-11-01 10:44:08', '2024-11-01 15:44:08'),
('0d3d5513e8c335b91ff8bdc2db2a417d972b7e35a4beb704e17d716ba1081c9e25dfec279d95414f', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:06:56', '2023-11-23 11:06:56', '2024-11-23 16:06:56'),
('0d5391d02f19d350936a49b5519aee6de972693e95f2fb0fd31a847a191bff087b8b3e901ebf6149', 2, 1, 'app_api', '[]', 0, '2023-10-25 08:00:42', '2023-10-25 08:00:42', '2024-10-25 13:00:42'),
('0deb01ec89ed827219ad44d78c271fc2474f86f2cfc7396ce644482a58b9f36ef9073f07e028bfa6', 2, 1, 'app_api', '[]', 0, '2023-10-30 10:07:25', '2023-10-30 10:07:25', '2024-10-30 15:07:25'),
('0e4140d33b970a552450a58dbfbe0669cf4d9becc296bc25620a03c2d424876e95745e1f94630e02', 36, 1, 'qbidapp_api', '[]', 0, '2024-01-31 17:57:29', '2024-01-31 17:57:29', '2025-01-31 12:57:29'),
('0e9cce62c9deb6e5daabc370efa0d9f573b2632485461dd00e01f6c3a4436bd31ece2e1dbb76bb44', 3, 1, 'app_api', '[]', 0, '2023-11-06 06:30:20', '2023-11-06 06:30:20', '2024-11-06 11:30:20'),
('0ebb8086211b69301d0e5338ee623884b249f1dbf0561894674dd01367120c507b7844bfc6bc8d5c', 3, 1, 'app_api', '[]', 0, '2023-11-15 05:29:13', '2023-11-15 05:29:14', '2024-11-15 10:29:13'),
('0eec07f80ae5a7eea87864cab34b580713a0ddc13bac5a2cfde4f57de98c9193bcc5c3560f8c60e7', 1, 1, 'app_api', '[]', 0, '2023-11-16 09:51:41', '2023-11-16 09:51:41', '2024-11-16 14:51:41'),
('0fb553dc07a3d171b97b1e3632c15545ce936c6f2a5fa4468c992ad2adc5caeccfcbcad73d58d053', 2, 1, 'app_api', '[]', 0, '2023-11-09 10:08:46', '2023-11-09 10:08:46', '2024-11-09 15:08:46'),
('0ff0ff2033b42dee7fea0b03874a43bd03322748d5e4d3e987cddc456773879ea368176734d6290e', 3, 1, 'app_api', '[]', 0, '2023-10-25 09:51:59', '2023-10-25 09:51:59', '2024-10-25 14:51:59'),
('103ca31bb3eac71b69f4ba146868d811b2a28a31c78a428d735c839fafa710e29bf467138e1430ed', 3, 1, 'app_api', '[]', 0, '2023-10-26 06:11:58', '2023-10-26 06:11:58', '2024-10-26 11:11:58'),
('104ed1e7f2aca55e62967fb556acdb2d9903af150eb01035fdcb1e400a253e4960a78c3e33a2fc7d', 2, 1, 'app_api', '[]', 0, '2023-11-21 06:37:28', '2023-11-21 06:37:29', '2024-11-21 11:37:28'),
('11955a59255cee64578eba446ad2deb07a61da34e496c08e076127dea6aeba9b211c30bae7617769', 2, 1, 'app_api', '[]', 0, '2023-11-15 05:16:20', '2023-11-15 05:16:20', '2024-11-15 10:16:20'),
('11fe3a44f09cf1032cbe36a80eafbc5916bff1e3a0ae3a4ae08a598db87bbb3f3deafac4008477c9', 36, 1, 'qbidapp_api', '[]', 0, '2024-01-31 17:57:17', '2024-01-31 17:57:17', '2025-01-31 12:57:17'),
('127f9d2588fc44fcb6306d89c1f54223607de1981b9faf8b3b76fcdcf211cbbc221f99e0b7633ca9', 1, 1, 'app_api', '[]', 0, '2023-11-21 06:39:49', '2023-11-21 06:39:49', '2024-11-21 11:39:49'),
('13439a96656a785ea20eb11be14f9f1e4252d90d75b28b2d9df033b7401f2cc1ecbef96253a846f1', 2, 1, 'app_api', '[]', 0, '2023-10-30 06:42:07', '2023-10-30 06:42:07', '2024-10-30 11:42:07'),
('137b6b6afdc02cfe60aaa24a0aa4c8741002c7623bb23b3cc961c0fd4416b2367347cfea6e87a6f6', 2, 1, 'app_api', '[]', 0, '2023-10-25 08:41:31', '2023-10-25 08:41:31', '2024-10-25 13:41:31'),
('157468c9a04ab17c7aae70d3df6691eacb4c55be31bd3dd015277821851ddb387ff9740bf474203c', 37, 1, 'qbidapp_api', '[]', 0, '2024-03-20 05:20:55', '2024-03-20 05:20:55', '2025-03-20 05:20:55'),
('15c5cc09b44aad170ab89735118e6f3cbe8b6eac112d8e3a574828d0a65cc616503aa4d4a101675d', 3, 1, 'app_api', '[]', 0, '2023-11-09 10:48:29', '2023-11-09 10:48:29', '2024-11-09 15:48:29'),
('178703da06d537e2127c637a65a0306ee7e5a00659b29733b392d93dfc9c770ba01c165081f65491', 2, 1, 'app_api', '[]', 0, '2023-11-02 06:48:52', '2023-11-02 06:48:53', '2024-11-02 11:48:52'),
('17c90abdf2afdfe82617f62d74326802bbe79c992f98100e8f12cae1b00bc4caef72e3384f7e7cdc', 2, 1, 'app_api', '[]', 0, '2023-10-27 10:02:10', '2023-10-27 10:02:10', '2024-10-27 15:02:10'),
('17de9c8d5df7c45a2e0391df926d9492e04c012cc603777e4b10d24f3e3c00265793e789df789986', 3, 1, 'qbidapp_api', '[]', 0, '2024-02-27 17:36:19', '2024-02-27 17:36:19', '2025-02-27 17:36:19'),
('1853051f9592a0f2b2b4775a3d38ec1ef0fc6dccc40890705773cdfafb918d6d72f7ad564f876384', 1, 1, 'app_api', '[]', 0, '2023-11-23 10:58:40', '2023-11-23 10:58:40', '2024-11-23 15:58:40'),
('1a64684d579cbcca2fd75a9c5e426972d0dadc81c94527bb433691682853364a540f7bb1f5996093', 1, 1, 'app_api', '[]', 0, '2023-11-24 20:13:57', '2023-11-24 20:13:57', '2024-11-24 15:13:57'),
('1ad331f32e75bf5ef889f5628f042df176ff5b34c21b3b73e5845d870c708d71b98260fa3b80d962', 37, 1, 'qbidapp_api', '[]', 0, '2024-02-01 13:51:53', '2024-02-01 13:51:53', '2025-02-01 08:51:53'),
('1b5303658779251ba90adeeb3ceb2e7e9cab5b84a329a38d425f0142a983de5b4bb1d30d2b5aeb07', 10, 1, 'qbidapi', '[]', 0, '2023-11-02 03:15:38', '2023-11-02 03:15:38', '2024-11-02 08:15:38'),
('1b651bcfc27f8b10bcbaefa4f6a77ecb3834fa8bfb6b35875610fd5777142b86bac219f1929577a4', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-14 16:43:48', '2023-12-14 16:43:48', '2024-12-14 11:43:48'),
('1c37b561768e793dad3983a4d381eae43e008dd0b37da7ad2f15f2616b8d5378852e67cfb1bbb576', 3, 1, 'app_api', '[]', 0, '2023-10-26 08:30:09', '2023-10-26 08:30:09', '2024-10-26 13:30:09'),
('1ca3eab8cfe7e29b6ccdbcccc06a68ec3279a50cfd47523fa5bb6e8aea184b65359d33c8edc8a58b', 2, 1, 'app_api', '[]', 0, '2023-10-27 03:05:13', '2023-10-27 03:05:13', '2024-10-27 08:05:13'),
('1d19049882ceeb4685f34d2acdaf59175f89b2c2470c78ddb146ddae39ce2e57ccf473bb433aa163', 7, 1, 'app_api', '[]', 0, '2023-11-22 10:20:41', '2023-11-22 10:20:41', '2024-11-22 15:20:41'),
('1d48b647599f9c4a69d8e5c89051bfc0a973111d71f69929ca9da78645e14a2006d62d67c341680c', 3, 1, 'app_api', '[]', 0, '2023-11-03 03:31:31', '2023-11-03 03:31:31', '2024-11-03 08:31:31'),
('1d73e509502667d049da809048d137710814718fc54899f005dc572608e108e339fcc880094046a7', 37, 1, 'qbidapp_api', '[]', 0, '2024-02-01 13:05:45', '2024-02-01 13:05:45', '2025-02-01 08:05:45'),
('1d743b2de06444ff06d6c763b6e2f68fe1f3f7bb8664ee5dcf19e3a8a1b998400b4bc817d7d58193', 36, 1, 'qbidapp_api', '[]', 0, '2024-01-31 17:56:40', '2024-01-31 17:56:40', '2025-01-31 12:56:40'),
('1dd5279797bf856d103135f205b97590100063fdd0bd463329f4ed2a6320696be903bd4f17200e57', 14, 1, 'qbidapp_api', '[]', 0, '2024-01-16 01:11:48', '2024-01-16 01:11:48', '2025-01-15 20:11:48'),
('1e012ffbd5c430abddce15bd0fd755576a0e269cf0d2ffca47b47f6e09e22fad90d8f022b5ab64fd', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:16:58', '2023-11-23 11:16:58', '2024-11-23 16:16:58'),
('1e6e73cb8d843d464d4dace66ca6d2c91d592e24deb0b5b717c926fade55f19c500d66741bb1f5b2', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-14 18:34:36', '2023-12-14 18:34:36', '2024-12-14 13:34:36'),
('1fb3cc45d0f187d252b9810d9d91db6a62f96a2a37c21f3226b0fd852c6fa0938b3335dcb00003e3', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:36:34', '2023-11-23 11:36:34', '2024-11-23 16:36:34'),
('1feb2ac1214c09146f377142f8126782af596be0cf6553c219c22b09cc0d9abcba078f21759defdb', 20, 1, 'qbidapp_api', '[]', 0, '2024-01-04 02:55:06', '2024-01-04 02:55:06', '2025-01-03 21:55:06'),
('201c21bb8159a6fad542b0550e742fc8e739717eca4fd240b8367ecff5cf390c42c11ea54997cec1', 3, 1, 'app_api', '[]', 0, '2023-10-30 06:39:45', '2023-10-30 06:39:45', '2024-10-30 11:39:45'),
('204737cc5e52ed67ed5d03ffb11430655e1d0b6a0870bdb90bd81600d2f579dc8cfd69fef3ab98cc', 2, 1, 'app_api', '[]', 0, '2023-10-30 08:40:16', '2023-10-30 08:40:16', '2024-10-30 13:40:16'),
('206fd346bea23fb584a700ee67e0a2f1ffc22104cc6fb29491872f8a57a7f51711813e0945445534', 1, 1, 'app_api', '[]', 0, '2023-11-23 10:39:01', '2023-11-23 10:39:01', '2024-11-23 15:39:01'),
('2099ada4752dfa01903d02eb73a9f55da34b0b753f91c5ad69d9357fbff19ff93a55a38895d7d05e', 37, 1, 'qbidapp_api', '[]', 0, '2024-02-01 13:29:13', '2024-02-01 13:29:13', '2025-02-01 08:29:13'),
('20e2b124155f80a0b0c38e6c4944152a89187424c9a3ff37082c23b49b9be9dc2e33398fb68c1a63', 8, 1, 'qbidapi', '[]', 0, '2023-11-01 05:48:48', '2023-11-01 05:48:48', '2024-11-01 10:48:48'),
('20fa19c099dd6ad4a2bc0ced11c557e3c152a5705d86fd54e1ab66da109da3a46c2a37e28dcf2eed', 36, 1, 'qbidapp_api', '[]', 0, '2024-02-01 13:25:58', '2024-02-01 13:25:58', '2025-02-01 08:25:58'),
('21959348f3b95e14be6ccab49b9e10f2cb395f02f2771298e5352177e9dbef585f5a10c0fc254dea', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:08:39', '2023-11-23 11:08:39', '2024-11-23 16:08:39'),
('21dd9fa3c0ae005a2270c074acf7c12b225bf44c80ee85e823f387e19567d6adfd6536914ae29bd8', 2, 1, 'app_api', '[]', 0, '2023-11-01 09:41:46', '2023-11-01 09:41:47', '2024-11-01 14:41:46'),
('22078d94668cb144a86a507a4496663341b68b79d1444b0f3a5a093e15bbbd252fa83acf9ac57e26', 2, 1, 'app_api', '[]', 0, '2023-10-27 02:57:54', '2023-10-27 02:57:54', '2024-10-27 07:57:54'),
('22140dfa1df275159689151c8072d118f012ae5f4def7e526d79a9b30f5b8f72867c77819bba5de7', 36, 1, 'qbidapp_api', '[]', 0, '2024-02-01 15:26:18', '2024-02-01 15:26:18', '2025-02-01 10:26:18'),
('22bf6467144a195eaca4871b3b1433a8f875f0b1ebee2a518d9277f340e57aec19a51f04d0e8cd8a', 2, 1, 'qbidapp_api', '[]', 0, '2024-03-20 05:37:55', '2024-03-20 05:37:55', '2025-03-20 05:37:55'),
('22ebe43f8a67fe372d7da137bea657702f5df6f6520f6f3c032ba209fd8df3641c5f55121df7803d', 3, 1, 'app_api', '[]', 0, '2023-10-25 08:45:10', '2023-10-25 08:45:10', '2024-10-25 13:45:10'),
('23bc8fe1e095cb02ebda2afd25ca75d13273bfc70d87c9a486152105cf07653d9c02114ff176ae7c', 4, 1, 'app_api', '[]', 0, '2023-11-22 10:55:23', '2023-11-22 10:55:23', '2024-11-22 15:55:23'),
('24358694b24a57d5bc31951e44817daca5454bc20911609a644e63363c99947b6587ce2ffdfef3ab', 17, 1, 'qbidapp_api', '[]', 0, '2023-12-14 15:49:33', '2023-12-14 15:49:33', '2024-12-14 10:49:33'),
('24a91110dbd283a62775af4730142f4c8c9f501d7f6f90e79f7b0a8aa0aa7e0de78e0b04b338f3e4', 37, 1, 'qbidapp_api', '[]', 0, '2024-02-01 15:19:44', '2024-02-01 15:19:44', '2025-02-01 10:19:44'),
('25317773e4ec0c4fd3eacceb11b7c61bdb5d5380854d806d5377970dd0034904642aaacc99fd43aa', 3, 1, 'app_api', '[]', 0, '2023-11-16 04:27:08', '2023-11-16 04:27:08', '2024-11-16 09:27:08'),
('2532f63a81ec11ad8ec35056493b9a4c625ce9391aeffe8bc3144e5c0138606238b1db1207d266fa', 3, 1, 'app_api', '[]', 0, '2023-11-02 03:42:10', '2023-11-02 03:42:10', '2024-11-02 08:42:10'),
('253e4eb975312a100b135d25257167ff9e59cea48aaad7af8da176e25e2bfeebe0ce510323c1631e', 30, 1, 'qbidapp_api', '[]', 0, '2024-01-16 04:49:17', '2024-01-16 04:49:17', '2025-01-15 23:49:17'),
('2676e95b4eb398ff7687b9b17a7761994069d87ad652f4ce45bfef81df94ea9c375949cc12060bb9', 2, 1, 'app_api', '[]', 0, '2023-11-09 05:07:33', '2023-11-09 05:07:33', '2024-11-09 10:07:33'),
('26a2cf16bcbd337a9265a68f61ba976231bd05f208959c2c7297a3e69bb3dae5979dd334f146224f', 1, 1, 'app_api', '[]', 0, '2023-11-17 05:03:51', '2023-11-17 05:03:51', '2024-11-17 10:03:51'),
('26bf4a250d15596d154945d66354c8f422d159a8bb300f387e22f88938d9f72244123254cd534e82', 3, 1, 'app_api', '[]', 0, '2023-11-02 06:10:59', '2023-11-02 06:10:59', '2024-11-02 11:10:59'),
('2743f75865e2e43768787bf1f3effcb1ef56fdea7ad535b9654541c26237cb55e53feb95817e6c09', 2, 1, 'app_api', '[]', 0, '2023-11-02 06:02:09', '2023-11-02 06:02:09', '2024-11-02 11:02:09'),
('2798c81f319de45d286f8b7015608944d6b97b5aba98c8dc4d19164a3576d97a5a4db63c6bcc0564', 7, 1, 'app_api', '[]', 0, '2023-11-23 09:31:12', '2023-11-23 09:31:12', '2024-11-23 14:31:12'),
('28e3a8ad923642031f8cc19fe83291477fee613107dd74ae10034cb49615daf3a11ace7dc1610de4', 14, 1, 'qbidapp_api', '[]', 0, '2024-02-01 15:13:39', '2024-02-01 15:13:39', '2025-02-01 10:13:39'),
('28f465e86b1d3f706e6c95ebad67adfcff474e2daf2b3c08a7e74fe5303d77a2312f771230eb331a', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-15 18:40:23', '2023-12-15 18:40:23', '2024-12-15 13:40:23'),
('294700f2be01ce16d22329a2c448f5f5b4bfea85e1d9fb13bbcdbc673966273afba11fd0b376cd9d', 1, 1, 'app_api', '[]', 0, '2023-10-26 05:41:10', '2023-10-26 05:41:10', '2024-10-26 10:41:10'),
('29a58555e71f4d93be0d3169598b953a9c7d71d6f1367199dc82c5aab5e9a3bd08ea450de5bf7156', 10, 1, 'app_api', '[]', 0, '2023-11-23 05:04:43', '2023-11-23 05:04:43', '2024-11-23 10:04:43'),
('2abcf5fc034a707406e6ce5fd7c4b778e0ac23d45e1fa2af90fbbf10041eb7d90065d2f3732754fb', 21, 1, 'qbidapi', '[]', 0, '2024-01-04 02:57:22', '2024-01-04 02:57:22', '2025-01-03 21:57:22'),
('2ac230814dbee831bc86ce039d45fde3819893a9db7a18fc0e9212af412352801a32f54ad32d2c7e', 2, 1, 'app_api', '[]', 0, '2023-11-23 13:36:52', '2023-11-23 13:36:52', '2024-11-23 18:36:52'),
('2b69bab02f77445155b362410aa9bb354cd8527ab8d0907de0e6f09d173bfd66b8704d537e3e7305', 1, 1, 'app_api', '[]', 0, '2023-11-17 04:02:38', '2023-11-17 04:02:38', '2024-11-17 09:02:38'),
('2b734dea82fc94b08e74beb9da20e1a77a54a2268f03430f7e66d0ca8a12aa0a7a75d805083bd277', 1, 1, 'app_api', '[]', 0, '2023-10-31 10:40:20', '2023-10-31 10:40:20', '2024-10-31 15:40:20'),
('2c69e569e4eb87e934fb04cdc27c242b4cc5dfc007c88a58dcc472b58252506bedc5efd78120435a', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-15 15:05:58', '2023-12-15 15:05:58', '2024-12-15 10:05:58'),
('2c854b68ade5bd138b09920ccaf0e5fd47ba8621aaddb0f7500cd01df9c9a57bb7414252dfdab560', 2, 1, 'app_api', '[]', 0, '2023-11-23 11:11:00', '2023-11-23 11:11:00', '2024-11-23 16:11:00'),
('2ca29f3fca51ba644475d42cc642cf8e000e49aa2bcc7343e51b13792b8e51b995cbd036ff8846c6', 18, 1, 'qbidapp_api', '[]', 0, '2024-02-01 17:11:34', '2024-02-01 17:11:34', '2025-02-01 12:11:34'),
('2d493a317143a6f58ac13bad801139292a49a920bc4667bf59cf8b27d8cd8bfb868f901edd831ab5', 10, 1, 'qbidapi', '[]', 0, '2023-11-23 03:39:15', '2023-11-23 03:39:15', '2024-11-23 08:39:15'),
('2de078f21f57a03b7612c56b5dea4d72095c6ae406b2e7230c293953c3837d8508c4b1a1630682f9', 2, 1, 'app_api', '[]', 0, '2023-11-21 10:06:04', '2023-11-21 10:06:04', '2024-11-21 15:06:04'),
('2e37ece84399e1d05309f610b550001901c543db065fc051a48caa873b7b7c02d2974bcf29a8d42e', 1, 1, 'qbidapp_api', '[]', 0, '2023-12-05 17:51:11', '2023-12-05 17:51:11', '2024-12-05 12:51:11'),
('2e6336810a228be4ec2d059f3b43861661da5dc2d8fb3f970107e26a0ebcb95e1c985857983b2b43', 39, 1, 'qbidapi', '[]', 0, '2024-02-27 16:39:21', '2024-02-27 16:39:21', '2025-02-27 16:39:21'),
('2ee00d5d3e7dd02d639601833de49723163548555f905a3b5301cab4288160c30d0963ae70be48d3', 2, 1, 'app_api', '[]', 0, '2023-10-30 07:51:56', '2023-10-30 07:51:57', '2024-10-30 12:51:56'),
('2f6f470ffd6366ee0ae1f4c4eafae260bb5d27628b77c63026209da4f4bbd00025235b58cfcde51f', 1, 1, 'app_api', '[]', 0, '2023-11-23 10:58:18', '2023-11-23 10:58:18', '2024-11-23 15:58:18'),
('2f720a728bb3cbcd737df75e8b77de850a578fb87d8ec4692dacdc0fd43656ed25267e08dcdb9bf2', 1, 1, 'app_api', '[]', 0, '2023-11-21 10:32:09', '2023-11-21 10:32:09', '2024-11-21 15:32:09'),
('2fa33f4ef2f5f4833116ed782d10fe0690df47c098f4e2f1ca35c6e6794a40f1bf7848a3c5cf07c0', 2, 1, 'app_api', '[]', 0, '2023-11-01 06:20:51', '2023-11-01 06:20:52', '2024-11-01 11:20:51'),
('303db4f10cbccb864758c9ac50a1519f44a9074e54a6780b484cc07055b5cbb68ef62a76a3012662', 36, 1, 'qbidapp_api', '[]', 0, '2024-01-31 17:56:48', '2024-01-31 17:56:48', '2025-01-31 12:56:48'),
('307fcd23a132d2cdd20d6036fef178a60749e1f602c318f8ddb1ca7c04307c3d0b03879db8425d33', 31, 1, 'qbidapi', '[]', 0, '2024-01-16 04:50:55', '2024-01-16 04:50:55', '2025-01-15 23:50:55'),
('3122e8a5a1d94122bfb3a6d4e14793d477da42fc4ab0897c9813415ea5b91528984b39342578a214', 3, 1, 'app_api', '[]', 0, '2023-10-26 11:27:58', '2023-10-26 11:27:58', '2024-10-26 16:27:58'),
('3130f5c76a8f1844754764083dbd4e5522b1c58a9715001ae0bcced3cbe6b87925352d2b060fec32', 2, 1, 'app_api', '[]', 0, '2023-10-30 08:58:05', '2023-10-30 08:58:05', '2024-10-30 13:58:05'),
('32b93a56adbc5ed6cb1fc7efe70ec9a3d005cb5e1538efc2aa2e8b0b748c2453524d33c419a3e26e', 1, 1, 'qbidapi', '[]', 0, '2023-11-16 05:21:10', '2023-11-16 05:21:10', '2024-11-16 10:21:10'),
('339c46765c29d0222f54286e5e40a5c6256d0b9fd9e649bfc99f7a62181cb80886df85efcbbf7c7c', 3, 1, 'app_api', '[]', 0, '2023-11-16 04:26:19', '2023-11-16 04:26:19', '2024-11-16 09:26:19'),
('33a32636160e619ebf603a088db4b2afde1b69d0d7fd445b37cd0df77b9680685b9eee917890f9a0', 10, 1, 'app_api', '[]', 0, '2023-11-23 05:45:16', '2023-11-23 05:45:17', '2024-11-23 10:45:16'),
('33a573d661164b9a75892e92e925247f40e611839607a1ed2ff0266582f076f0e7fa8435f56f0d73', 2, 1, 'app_api', '[]', 0, '2023-11-06 04:57:48', '2023-11-06 04:57:48', '2024-11-06 09:57:48'),
('345ef875e51834a4a1b402b263c7c2265ea67518714ca2c9e17a992f6470762bf90032b1035d0328', 22, 1, 'qbidapi', '[]', 0, '2024-01-04 03:03:29', '2024-01-04 03:03:29', '2025-01-03 22:03:29'),
('350aa9553a2c69c9e2ee9820c88eb5c72d1b545cd06e0251e5d58a92fe62727cd91741e813633aff', 3, 1, 'qbidapi', '[]', 0, '2023-10-25 06:55:09', '2023-10-25 06:55:09', '2024-10-25 11:55:09'),
('35f2ad797c3733949c652cba6108827872e60d17836125080e4eb1727f7357779d9f075aa7609125', 3, 1, 'app_api', '[]', 0, '2023-11-01 05:52:03', '2023-11-01 05:52:03', '2024-11-01 10:52:03'),
('3674b99bcce7966c7dc1fdc4905bf0b2da0a3ef1dd87d1d2f496bfbeebd2b072f801716471bc8e2a', 9, 1, 'qbidapi', '[]', 0, '2023-11-02 02:53:59', '2023-11-02 02:53:59', '2024-11-02 07:53:59'),
('37a8cca33ceac833dc81b2a4754086455f462da74aae76d8110a0534a6477672ff16c6cba5a1fae0', 17, 1, 'qbidapp_api', '[]', 0, '2023-12-14 16:01:41', '2023-12-14 16:01:41', '2024-12-14 11:01:41'),
('37e53704aa77189f1e33d21242fddff0acdac158e748bc7781d16775435d0fa7836f3103398448d1', 2, 1, 'app_api', '[]', 0, '2023-10-26 08:12:03', '2023-10-26 08:12:03', '2024-10-26 13:12:03'),
('380ec7238b3848e8d85cc3cf1a7282af3e5fb2897008b1de747f41469f7597c9c9b766507e5649f4', 37, 1, 'qbidapp_api', '[]', 0, '2024-02-01 17:11:58', '2024-02-01 17:11:58', '2025-02-01 12:11:58'),
('3829439d9bfa530d15bcf058b55d3aa57864e61fbd2c00df86336365675eeb8dac3925bbcfd40872', 1, 1, 'app_api', '[]', 0, '2023-11-23 10:48:08', '2023-11-23 10:48:08', '2024-11-23 15:48:08'),
('387c47bc07194e9315e0a8d034ab56d34d74b71268514db64f5aac8559d6ee0c36d19f2fb170863f', 1, 1, 'qbidapp_api', '[]', 0, '2023-12-14 13:42:34', '2023-12-14 13:42:34', '2024-12-14 08:42:34'),
('38cb3162d96676993ba7f42aac83b9daaef742e4e7a0e1ec057d4192d9042a574ea3edf716181fa1', 19, 1, 'qbidapp_api', '[]', 0, '2024-01-04 02:51:23', '2024-01-04 02:51:23', '2025-01-03 21:51:23'),
('39bd8fc54b6b6ae946b85411fb8718eb77269e8d8cf12bb3ce7f8da49e97e5ac6f79b0e08b029468', 7, 1, 'app_api', '[]', 0, '2023-11-23 10:36:51', '2023-11-23 10:36:51', '2024-11-23 15:36:51'),
('3a86a800f5e3f6f53f82bba469805db157a4a53eb07507377fedaa5c9c5cff302f039b55ee17bdb5', 31, 1, 'qbidapp_api', '[]', 0, '2024-02-27 16:55:42', '2024-02-27 16:55:42', '2025-02-27 16:55:42'),
('3b39ace69df6f11759363a4a3f66690aa9812600bf1d5a2deac62e67c058bef2b6f193c6e3300631', 3, 1, 'app_api', '[]', 0, '2023-10-31 11:07:32', '2023-10-31 11:07:32', '2024-10-31 16:07:32'),
('3b5289ed95a4691ebf3e1f8ddbe59f5b2b7561b40d1c49d80009789726f4228b260005b39a756d24', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-15 16:04:15', '2023-12-15 16:04:15', '2024-12-15 11:04:15'),
('3d517452ba1714b7c1fce1f3925b6ffa7320150127cba83d4345c52cce0cae2698fc06c7ce0ddd33', 18, 1, 'qbidapi', '[]', 0, '2023-12-14 18:38:13', '2023-12-14 18:38:13', '2024-12-14 13:38:13'),
('3d5973343a980fc6a4bcbd1db4261d4b3528a5109a8789e6dd5dfa6e460315868fb8fa2586ade774', 2, 1, 'app_api', '[]', 0, '2023-11-02 09:01:50', '2023-11-02 09:01:50', '2024-11-02 14:01:50'),
('3d9e1ded1c06c1d96bdbd438cddf0a0154e5390556e5cbef730abe3ea3b90a43c0dcf1c250f7e034', 19, 1, 'qbidapp_api', '[]', 0, '2024-01-04 02:48:21', '2024-01-04 02:48:21', '2025-01-03 21:48:21'),
('3da345a8af7dfd1ed4dde09d413f00d8bc8dde5af788044f0bbb12f2568b4a7f8e636e03c62213f4', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-14 13:19:45', '2023-12-14 13:19:45', '2024-12-14 08:19:45'),
('3dab88d3336938e6d60875190f6546ddb273ec2e591e22dd6e10f6beaa2a0492699c36e9c087eda0', 1, 1, 'app_api', '[]', 0, '2023-11-24 20:09:06', '2023-11-24 20:09:06', '2024-11-24 15:09:06'),
('3e204c487389f28c268ba90779eff145a966e8a3ea62576a31c378b40800131714866f7bf032f6c4', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-15 20:29:23', '2023-12-15 20:29:23', '2024-12-15 15:29:23'),
('3e490cae727eaeb75ecf9411c71c7787038657a94f5698d5bdf0fe5cf144ef072b057c430626944f', 10, 1, 'app_api', '[]', 0, '2023-11-23 13:07:23', '2023-11-23 13:07:23', '2024-11-23 18:07:23'),
('3e6d5ab861f4a6aeabecf83bdb327f955d65545329a2c72f47d3cfeb1b142336995300732c9e4687', 17, 1, 'qbidapp_api', '[]', 0, '2023-12-14 14:14:56', '2023-12-14 14:14:56', '2024-12-14 09:14:56'),
('3ef13d399e6f5365e352021b4e356a0331e999455bc06d87e081df27b578ffde0a4349ba58f8d49a', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-15 19:32:57', '2023-12-15 19:32:57', '2024-12-15 14:32:57'),
('403d60ba332d3fefb4e0e84b0e7443d7d940b2ee1fde0498a9fbb00c94cc02aca2aa2abce6fe4a5b', 37, 1, 'qbidapp_api', '[]', 0, '2024-02-01 13:48:13', '2024-02-01 13:48:13', '2025-02-01 08:48:13'),
('404067ef85e2151af3412f4128b5f1ae24ceb568399acb8875b65889727caf78fe1574e2caebb4f4', 7, 1, 'app_api', '[]', 0, '2023-11-22 10:43:52', '2023-11-22 10:43:52', '2024-11-22 15:43:52'),
('407ae7190afde5ced219f0416242b33b0541a5ab7bddebe332255df35faccf78b567bdc15a095145', 4, 1, 'qbidapi', '[]', 0, '2023-10-27 09:56:29', '2023-10-27 09:56:29', '2024-10-27 14:56:29'),
('40f7ba6fcec4e86ac40ac889f4953bb483115e8e2b3216fa02e2cc1e1b10dbc5431fddec37a4c34d', 7, 1, 'app_api', '[]', 0, '2023-11-23 05:24:46', '2023-11-23 05:24:46', '2024-11-23 10:24:46'),
('420e48c5d42243c98044126e4f705236c531866083f81b8768331a24d2f8560536be823f28367c96', 2, 1, 'app_api', '[]', 0, '2023-11-21 05:06:15', '2023-11-21 05:06:15', '2024-11-21 10:06:15'),
('422ad26038afaae265db7c81bb2a9a5a85f36f813eb549c34f18c2d856d43326da78d615588d833c', 39, 1, 'qbidapp_api', '[]', 0, '2024-02-27 16:41:59', '2024-02-27 16:41:59', '2025-02-27 16:41:59'),
('42763ee7fa9090b3fad044a62b944aa907efcde2db6168e336b150e843ac5d68f760ef5b78781924', 38, 1, 'qbidapp_api', '[]', 0, '2024-02-01 15:28:18', '2024-02-01 15:28:18', '2025-02-01 10:28:18'),
('4372fc2822d96fa84e287923eb2e2f11997c858ebb0b1ade2eca51b33a5d313a8181451a382e539f', 6, 1, 'app_api', '[]', 0, '2023-11-17 03:35:19', '2023-11-17 03:35:19', '2024-11-17 08:35:19'),
('43f7df5696767f6cfe8b8edf139deda8beb52876da13e28e7cb44a839f91c0d1901024c6b51923c1', 1, 1, 'qbidapp_api', '[]', 0, '2023-12-14 13:42:12', '2023-12-14 13:42:12', '2024-12-14 08:42:12'),
('4444cf31beacc51b2e8b20031eff2961d52531dc19f9296de82ebc53a35b7dac85cb2f55d82880f7', 3, 1, 'app_api', '[]', 0, '2023-11-14 07:24:13', '2023-11-14 07:24:13', '2024-11-14 12:24:13'),
('460f0aac83e5325faf743d4abfdce6832e607d1d3527b5363e980e9a0f0c2c675e00fa9ac6ed954b', 3, 1, 'app_api', '[]', 0, '2023-11-16 04:41:28', '2023-11-16 04:41:28', '2024-11-16 09:41:28'),
('464ba960fb3e51e561ce3a88981f121f685f0477f41e46d18251990cb72040cffc44d48272f8055d', 3, 1, 'app_api', '[]', 0, '2023-11-02 06:19:28', '2023-11-02 06:19:28', '2024-11-02 11:19:28'),
('466c1863c8f78120f84ec5f95d634b8568dc64e866d2c346eef9ff7265a343973c6b14d2a9cba6e4', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-15 20:35:53', '2023-12-15 20:35:53', '2024-12-15 15:35:53'),
('47f22de5a70fe5782ccebc0d988efef1f6f6212189d8221d7b9bd942b1a870be758710760eefeb87', 1, 1, 'app_api', '[]', 0, '2023-11-21 10:27:50', '2023-11-21 10:27:50', '2024-11-21 15:27:50'),
('484005b72d5bdc7333d70eb88cac6faf52fe1394a97e203f0565a97c7a1205b4bca35dc4b76083b0', 26, 1, 'qbidapp_api', '[]', 0, '2024-01-16 04:47:59', '2024-01-16 04:47:59', '2025-01-15 23:47:59'),
('489ea61b23abbdfc057fda064a810dbd6900a5f4b6f2c59e1f5e7152b3fbc91291cf83d7eee1bc58', 33, 1, 'qbidapp_api', '[]', 0, '2024-01-20 20:46:17', '2024-01-20 20:46:17', '2025-01-20 15:46:17'),
('48eb9286816deb1788b1a33ac9b44abd8765928d90dd65ec8c4da6ae34eb5c2a7ba7134f83ae48be', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:23:51', '2023-11-23 11:23:51', '2024-11-23 16:23:51'),
('493e5e2b33bdc5a10a4c64480a810f50dc2b29ba165120399ecd340757b193f6e3291643c723d657', 2, 1, 'app_api', '[]', 0, '2023-10-26 10:24:06', '2023-10-26 10:24:06', '2024-10-26 15:24:06'),
('4a201b03de838641945236c99ec6862d97760255d72f10fd8f7639288d8cd6565f329e39ec0fdc07', 10, 1, 'app_api', '[]', 0, '2023-11-23 10:27:59', '2023-11-23 10:27:59', '2024-11-23 15:27:59'),
('4a4f8fb142a5a2d1e262ba6256107e45ca48566f6e0d127b2e654dfc2446c0a52f067efb588219e0', 2, 1, 'app_api', '[]', 0, '2023-11-09 10:52:10', '2023-11-09 10:52:10', '2024-11-09 15:52:10'),
('4a8be5adc67cb3d730a7039a247a9b7aae03723146e7bda2c0fec73f1db54749602e2f1634470d00', 17, 1, 'qbidapp_api', '[]', 0, '2024-02-07 21:53:41', '2024-02-07 21:53:41', '2025-02-07 21:53:41'),
('4aa93e98e28958212001153e28f3866731f84a4eda339d687db42fba0b73b53dbee65abc13ea267e', 17, 1, 'qbidapp_api', '[]', 0, '2023-12-14 13:59:42', '2023-12-14 13:59:42', '2024-12-14 08:59:42'),
('4acdfac5e14bf4ded4231f43f59f722b49474cb0eeb54f4cff637da447dffa81187f4ef0530329be', 36, 1, 'qbidapp_api', '[]', 0, '2024-02-01 15:14:57', '2024-02-01 15:14:57', '2025-02-01 10:14:57'),
('4b6aec0127757b7b4d11784d3c756921370d2b8e509f2dd866fcf9835fee882c58d301dd5ef776d7', 3, 1, 'app_api', '[]', 0, '2023-10-27 08:44:51', '2023-10-27 08:44:51', '2024-10-27 13:44:51'),
('4c4e309d11a37e38a2fe248f7971a82e9534878cdc6d531be4e1797936951f24ec5e9935f2322a45', 2, 1, 'app_api', '[]', 0, '2023-11-14 06:10:45', '2023-11-14 06:10:45', '2024-11-14 11:10:45'),
('4c75466d24427cc8bf339cbb8247fe887507faa42e1bcbee12911947236f173e66674a345b26439e', 1, 1, 'app_api', '[]', 0, '2023-11-22 10:37:48', '2023-11-22 10:37:48', '2024-11-22 15:37:48'),
('4c7c70e758728ca446acdec1b52919db19bcd861b7636ecef21f8ee32535c1317c917622e69e6760', 1, 1, 'app_api', '[]', 0, '2023-11-23 10:58:26', '2023-11-23 10:58:26', '2024-11-23 15:58:26'),
('4d90f07ebd57054f213b4d253c627102040cd453d298a3035d9919701b5fba4164382718ba0299e0', 2, 1, 'app_api', '[]', 0, '2023-11-06 06:40:21', '2023-11-06 06:40:22', '2024-11-06 11:40:21'),
('4da1064b493f70c3f58463cceb85d6240f660e77a741a773f6b9bf0c75cdcaf8f911f8ef3d95fb57', 2, 1, 'app_api', '[]', 0, '2023-11-16 04:48:32', '2023-11-16 04:48:32', '2024-11-16 09:48:32'),
('4df62fab4e09c222d9f98612a48fffeba9c272f104705087ff1c9c33dc6950c1b168f5f3ab3b616e', 2, 1, 'app_api', '[]', 0, '2023-11-06 05:19:32', '2023-11-06 05:19:32', '2024-11-06 10:19:32'),
('4e36f2720b76aac1bfd1936c57726ebb5833f23c6bf2cc838f043213ddb86e400ff5a2161c9282d4', 7, 1, 'app_api', '[]', 0, '2023-11-23 03:50:45', '2023-11-23 03:50:45', '2024-11-23 08:50:45'),
('5175144e2b8ea9a619361b0f416b17330c50ae92a5422f290342ea6c40665e987b4294bffcf4ed62', 2, 1, 'qbidapp_api', '[]', 0, '2024-03-20 05:36:25', '2024-03-20 05:36:25', '2025-03-20 05:36:25'),
('52fdcd3c027489662c07e3fed84d4d19230da41b7bba97dfcc6eaa12359df1d6d7d5a5227c19f193', 3, 1, 'app_api', '[]', 0, '2023-11-06 07:56:04', '2023-11-06 07:56:04', '2024-11-06 12:56:04'),
('5330c0758f1f01251647fc2555d5c63a22c1f256509ca318045b1cb54e94f4eefa244248986807c2', 3, 1, 'app_api', '[]', 0, '2023-10-30 07:52:11', '2023-10-30 07:52:11', '2024-10-30 12:52:11'),
('53376beddd9122ca40fa58df64806bde62244d9f3c52f8a8ba4a58f91a2f684f9f0068cbbba12d69', 29, 1, 'qbidapp_api', '[]', 0, '2024-01-16 04:46:15', '2024-01-16 04:46:15', '2025-01-15 23:46:15'),
('544fb2ddb0ea0e5a6350ca7af365801a643052fa7df9eba77911e5dc0d79893aeb52d30c58b9084a', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-15 20:26:58', '2023-12-15 20:26:58', '2024-12-15 15:26:58'),
('5544708a1ffb15f0078ec4b124e38161dfeb0a8d71e3899cbcaf4c5b4da772c610c420bb3b98edaf', 3, 1, 'app_api', '[]', 0, '2023-11-06 06:19:40', '2023-11-06 06:19:40', '2024-11-06 11:19:40'),
('570cc032b94281f55543b092957029ce37c4675bd790e836d889d4ab0b23ee011db07e62b3c4008e', 2, 1, 'app_api', '[]', 0, '2023-11-17 05:12:07', '2023-11-17 05:12:07', '2024-11-17 10:12:07'),
('57636ee783311e31f96b7ef906ce528b0c1204dfe5363139911b09700b0fed575b08a7a1254a3701', 29, 1, 'qbidapp_api', '[]', 0, '2024-01-16 04:19:05', '2024-01-16 04:19:05', '2025-01-15 23:19:05'),
('57a329d3c30fd0878c52c11d5f68b7a1eecb49ce6737fd4af5d2d633a6438309cb2016105b67eca9', 3, 1, 'app_api', '[]', 0, '2023-10-25 10:02:22', '2023-10-25 10:02:22', '2024-10-25 15:02:22'),
('57ca3f8848a9fa3d0001748e7e2ae9675faae31e1b630391bb7fa0db9fa06ac95d2f4e5045395ece', 18, 1, 'qbidapi', '[]', 0, '2023-11-15 03:32:23', '2023-11-15 03:32:23', '2024-11-15 08:32:23'),
('584cc26e5cfcce990d13693c6acc8a0070a97a8511274e97d436753bd2a6b78135ae38c44b4f6866', 17, 1, 'qbidapp_api', '[]', 0, '2023-12-14 17:58:15', '2023-12-14 17:58:15', '2024-12-14 12:58:15'),
('58780401dea4dd8cb3f304b0923e2a585b2734bceb18d3d9124ad701288e35da6e9194521bc30ca3', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-14 18:00:31', '2023-12-14 18:00:31', '2024-12-14 13:00:31'),
('591bfd62feb5786c235048d1ecfebcf0f1f3d04877eb4afbcf66e0d5f72ebe217cd036029e2c6906', 7, 1, 'app_api', '[]', 0, '2023-11-23 04:08:36', '2023-11-23 04:08:36', '2024-11-23 09:08:36'),
('5a066f60e2ec99d5656d3341f7df92b13b117ed83c9fc68952ef548239763abc937dd3fa55c05866', 2, 1, 'app_api', '[]', 0, '2023-11-16 10:08:52', '2023-11-16 10:08:52', '2024-11-16 15:08:52'),
('5a3b2c1a35f305f921fd41f3999ebdae9a0871b4b7afeee59c730280bb76b45d4c593b421c1f1089', 3, 1, 'qbidapi', '[]', 0, '2023-11-16 08:53:22', '2023-11-16 08:53:22', '2024-11-16 13:53:22'),
('5a6c53d5cfe827ca8e9212d25078fa8988b9d9891275e30a2fd71a9c20a292e5f188969cfd8ac255', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-14 13:40:08', '2023-12-14 13:40:08', '2024-12-14 08:40:08'),
('5a9daebfad54f894448804d2b94d7986073d0be33d0a0c7a7e003ff5368a5e9841f3701b9f884d6a', 1, 1, 'app_api', '[]', 0, '2023-11-23 10:26:48', '2023-11-23 10:26:48', '2024-11-23 15:26:48'),
('5baab70e5826a04611b3ba4e69d107e5255c2278f52d0866ce93f9b09cd157632288d35ad9898deb', 15, 1, 'qbidapi', '[]', 0, '2023-12-14 13:07:25', '2023-12-14 13:07:25', '2024-12-14 08:07:25'),
('5d5d45868e1cf2a1dd3908340d8b0f26d8942b5427e0d2cc46ad8f703ef0aed612ef04b8fcaa5e35', 2, 1, 'app_api', '[]', 0, '2023-10-25 07:53:35', '2023-10-25 07:53:35', '2024-10-25 12:53:35'),
('5e3cd4d1bc94ce3bd47615a26fd05fcbaca2308afab6f8c7a9071fdf725b58e24465b548ec024320', 3, 1, 'app_api', '[]', 0, '2023-11-06 04:30:37', '2023-11-06 04:30:37', '2024-11-06 09:30:37'),
('5e64e6b3eed3450238ace00363573f05da58bae7536f947c53d2a3417bda99f5ac14b79c2d37f74b', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-15 15:43:51', '2023-12-15 15:43:51', '2024-12-15 10:43:51'),
('5f910d4172828e6eaec5e0f4010ddcbf7e82bd7f7655ce6d732305a4f77eeabe7d528199be19e773', 39, 1, 'qbidapp_api', '[]', 0, '2024-02-27 19:43:44', '2024-02-27 19:43:44', '2025-02-27 19:43:44'),
('616bd5825f56e866204a24f05b42c9453c23a9c8fd10b0bda5591c4e84c27b14b8127bf33c096244', 37, 1, 'qbidapp_api', '[]', 0, '2024-02-01 14:46:23', '2024-02-01 14:46:23', '2025-02-01 09:46:23'),
('61df370b6f96949a8a94490a9c3dd10caf0893c4babde6c0da9f6ef3e321fa396c128bff60e46fb9', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:04:33', '2023-11-23 11:04:33', '2024-11-23 16:04:33'),
('61fc39b5cba3a798425cd514c3d956b9f29fcfecad4744d743c1ea1652d6744b82b8bc097bf9d11e', 27, 1, 'qbidapp_api', '[]', 0, '2024-03-20 05:17:42', '2024-03-20 05:17:42', '2025-03-20 05:17:42'),
('62cdfd873d4e41744a181301aa75f0a0601b826108fe32bd3fe0fd9c5789f1c8704b68c62d8c00ab', 14, 1, 'qbidapp_api', '[]', 0, '2024-02-01 15:10:57', '2024-02-01 15:10:57', '2025-02-01 10:10:57'),
('62dfb793c20368abb758a1c9fa6ed3c32c946a3291cd3bc40e753f4797996c5adf2e777e7ddcc665', 7, 1, 'qbidapi', '[]', 0, '2023-10-30 09:31:15', '2023-10-30 09:31:15', '2024-10-30 14:31:15'),
('6316b9ee9a5172360534cc38de4c16ec8bd219e2fbbeff409c92604e08015dac28bb7eaadc9f3d03', 7, 1, 'app_api', '[]', 0, '2023-11-23 03:50:45', '2023-11-23 03:50:45', '2024-11-23 08:50:45'),
('63c808f457bed048f5e45a94d81d7747dacd513adbb680f870ad78d0e10a8a8c2feb33b0cfaab441', 2, 1, 'app_api', '[]', 0, '2023-11-02 10:36:33', '2023-11-02 10:36:33', '2024-11-02 15:36:33'),
('6402d5ed338ed0a7576766674ad7c71d7287eb5f3e7c349a2d075f45b0e34013afccb9665c53131e', 33, 1, 'qbidapi', '[]', 0, '2024-01-20 07:32:52', '2024-01-20 07:32:53', '2025-01-20 02:32:52'),
('64686ee9254518fffed972b56d5ca61f4b657f4552fa2fc94920645e74ff0d116bc48e17409a1de6', 1, 1, 'qbidapp_api', '[]', 0, '2023-12-14 17:57:13', '2023-12-14 17:57:13', '2024-12-14 12:57:13'),
('64cf1d875e945cc3289b295bae89505a33f1b472efeaeaefdc6890a1da6d8a5c8d68faac6cec0972', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:07:40', '2023-11-23 11:07:40', '2024-11-23 16:07:40'),
('65d2c726a43912d5d4edd96610a5242be80f2a599e833defb6b7227303e3534f3bdafb542b9e6249', 2, 1, 'app_api', '[]', 0, '2023-10-31 11:03:50', '2023-10-31 11:03:50', '2024-10-31 16:03:50'),
('65e68699a29fd0d8455b223e8e69080f3b0f597ae6f0cd7097e13ec3b843db423d5d679bec53a9cf', 6, 1, 'app_api', '[]', 0, '2023-11-17 03:35:30', '2023-11-17 03:35:30', '2024-11-17 08:35:30'),
('660dada87f6de2052ce598d91dd0107993ea08585193b8f3a4b43f246c9be0b93637c8619453aa39', 21, 1, 'qbidapp_api', '[]', 0, '2024-01-04 02:59:11', '2024-01-04 02:59:11', '2025-01-03 21:59:11'),
('6684da20d3f3a297a83625739a2a6eb8d141db496b5c575bb31ee5db0aa306b0b8da2d7b237e7df4', 1, 1, 'app_api', '[]', 0, '2023-11-23 10:29:34', '2023-11-23 10:29:34', '2024-11-23 15:29:34'),
('677107f5fdaf0e0c8e06cb615b74f397ca47a538d3858c1a3871679ac3fc700afff88dc8086e9f4e', 2, 1, 'app_api', '[]', 0, '2023-11-16 03:50:29', '2023-11-16 03:50:29', '2024-11-16 08:50:29'),
('682885a81179e3ec8d6a91608b538d035ca7a33b275c9c10ab7b38f22d4c0ace339bf5d24126791b', 30, 1, 'qbidapi', '[]', 0, '2024-01-16 04:40:08', '2024-01-16 04:40:08', '2025-01-15 23:40:08'),
('694ba5afeddb3368ea081f37c90c04190b235570527ce52f552e122c13ae9649d9a83ad301bd28c8', 3, 1, 'app_api', '[]', 0, '2023-11-09 10:46:12', '2023-11-09 10:46:12', '2024-11-09 15:46:12'),
('6b6a887023d48e8c1b58dbd05302e2b17aeb007041bf91170c9c2bc4c6aaa144d725f30a4d622e4d', 1, 1, 'app_api', '[]', 0, '2023-11-23 10:47:06', '2023-11-23 10:47:06', '2024-11-23 15:47:06'),
('6b8b2d163d80ac9aeeac3aceef7b7d2a7f16cd1bc0e2ad5c714fc31c3236f907702b8a3f378df7b1', 4, 1, 'app_api', '[]', 0, '2023-11-16 09:48:43', '2023-11-16 09:48:43', '2024-11-16 14:48:43'),
('6b8f0d97502fde0ef60d94cb9ad94c6b391964d5bc883be14a19bc61462b3fb47d54e957240edd2d', 14, 1, 'qbidapi', '[]', 0, '2023-11-03 09:53:57', '2023-11-03 09:53:58', '2024-11-03 14:53:57'),
('6bb4cf80bf1c07ce8de21481f664e6690afeee4c6a6539538600fadfe2d29e265cc322a397310ff0', 9, 1, 'qbidapi', '[]', 0, '2023-11-23 03:36:14', '2023-11-23 03:36:14', '2024-11-23 08:36:14'),
('6bd8c72d599afcb35731902829c9d9a60482666c46902e9af09867099f95170cd8e61397448cb4af', 12, 1, 'qbidapi', '[]', 0, '2023-11-03 06:16:06', '2023-11-03 06:16:07', '2024-11-03 11:16:06'),
('6d2f22aa4827d05da6ec0cde776e472b618dad4b3811765029e77b683421beebffa416b694c4de5b', 2, 1, 'app_api', '[]', 0, '2023-11-16 09:53:24', '2023-11-16 09:53:24', '2024-11-16 14:53:24'),
('6dc5a5248961eacf89d5415814854b6b053150c51ffa29205efac004d6a1d8d85bfd8581f14d0565', 39, 1, 'qbidapp_api', '[]', 0, '2024-02-27 19:39:54', '2024-02-27 19:39:54', '2025-02-27 19:39:54'),
('6dc62ec9f396b09769e287b0aeb7eef4147b3482ee457287a6461b181c771d1aabd70997e3349274', 11, 1, 'qbidapi', '[]', 0, '2023-11-03 05:39:45', '2023-11-03 05:39:46', '2024-11-03 10:39:45'),
('6dceb0c6cb1d2ef7a9ea042bf549f9d46094c6ba52e4cd0e40215e69fed5599144dc234903af8ce2', 2, 1, 'app_api', '[]', 0, '2023-11-17 05:03:18', '2023-11-17 05:03:18', '2024-11-17 10:03:18'),
('6dd8247d814ee946a510e1d6ece989f9b44d5e459cbabb4a6d3605aba2e30a3265b20782be6a5526', 1, 1, 'app_api', '[]', 0, '2023-11-24 20:00:56', '2023-11-24 20:00:56', '2024-11-24 15:00:56'),
('6f1e36e5fa135eab7d70f48886985aea33f3accb9f51a863b44731bd1b70663ebacff36b8004d26a', 3, 1, 'app_api', '[]', 0, '2023-10-31 10:47:05', '2023-10-31 10:47:05', '2024-10-31 15:47:05'),
('6f301e02cbc10a5235400e783e82aaf6f1bfb72f481cd44e0c47b0010ffd4b0f6aa5e76c4c62f1bb', 3, 1, 'app_api', '[]', 0, '2023-11-01 07:45:03', '2023-11-01 07:45:03', '2024-11-01 12:45:03'),
('6f7640ee1f0904b24e446135e7b74cad363445333a1d73d15f6afb9c14ddd7684397903a86b2e09c', 10, 1, 'app_api', '[]', 0, '2023-11-23 03:49:03', '2023-11-23 03:49:03', '2024-11-23 08:49:03'),
('702709caafb2e82ef1ced9608d1a593eb5fbd87d7ede116f2790681660bc7a8ee73733f3f9667620', 27, 1, 'qbidapp_api', '[]', 0, '2024-03-20 05:17:05', '2024-03-20 05:17:05', '2025-03-20 05:17:05'),
('70cb454240ff04b3989a245331a5d3d329a62077cba2eb2ccd9965068a1abb9bb9cc6a37582c6880', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-14 15:59:17', '2023-12-14 15:59:17', '2024-12-14 10:59:17'),
('71a246e607905f8ae3fd3e90558c83b4b0f13b3be8d5612f16947bc298036e0271c9d1299818d331', 3, 1, 'app_api', '[]', 0, '2023-11-01 05:17:22', '2023-11-01 05:17:22', '2024-11-01 10:17:22'),
('71cb015ce9cf912a03aff76cfa56247d0c055d1439bd1d7cbf60a1b020059ae0e2a94df742541a34', 3, 1, 'app_api', '[]', 0, '2023-10-26 11:27:52', '2023-10-26 11:27:52', '2024-10-26 16:27:52'),
('72343cd52ac2241cabfa4e83567d57d205a4b0ec70512791bd337768eed1b3a77563a4ac1efe6713', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-15 15:07:00', '2023-12-15 15:07:00', '2024-12-15 10:07:00'),
('731c3b6237fbdbf3f262599c457b65be85e59a3c34a9492788b8c3fc15c85a566efe924fb58e437f', 3, 1, 'app_api', '[]', 0, '2023-10-27 06:13:39', '2023-10-27 06:13:39', '2024-10-27 11:13:39'),
('742770dceb4d92217bf079aff52d13a7bcd8783b216f6576e66f6199b1d2fa7f571d9e2b2853656e', 3, 1, 'app_api', '[]', 0, '2023-11-02 09:37:35', '2023-11-02 09:37:35', '2024-11-02 14:37:35'),
('743f933d5bb9450c8d1bc595d6d051c10b277bac13a0b83374d8b3cfadddc2bc9908b6bdcaf8904b', 7, 1, 'app_api', '[]', 0, '2023-11-24 20:16:25', '2023-11-24 20:16:25', '2024-11-24 15:16:25'),
('753b6f7139568f8abcdfa09459a50c6616b98231da3a11d6d7cbcac12a63d26e71d8becbb02e1a2a', 3, 1, 'app_api', '[]', 0, '2023-10-26 10:21:45', '2023-10-26 10:21:45', '2024-10-26 15:21:45'),
('7553b78462d8ab7519b91fb9ef66bf374c2b6d49a4fd8f72dfed85a5b93a65a3ba0e96741e1d04f1', 36, 1, 'qbidapp_api', '[]', 0, '2024-02-01 15:21:33', '2024-02-01 15:21:33', '2025-02-01 10:21:33'),
('75e8019ea43e95f4f2e923fa3fa0dfafca8acb32d7525b5f45214ea9517627c65cd5d7caa6f35357', 1, 1, 'qbidapp_api', '[]', 0, '2023-12-15 14:55:54', '2023-12-15 14:55:54', '2024-12-15 09:55:54'),
('7600f01bb015d918b55458a866a6a62bd2c05d14cb74416eaff6e2faaa45e1f87177af0c84f4c5fc', 2, 1, 'app_api', '[]', 0, '2023-10-27 06:14:08', '2023-10-27 06:14:08', '2024-10-27 11:14:08'),
('760aa56dede0a55e9c37dbcae047fc1189858815864648bd6005fe1a732b99f76255f556fcf0e7d1', 2, 1, 'app_api', '[]', 0, '2023-11-02 04:07:05', '2023-11-02 04:07:05', '2024-11-02 09:07:05'),
('760e617aa5311b4a4d9f319b0cc83e4abefc9f4abaa52844077dd972ae4a4acf2bfd3e94ac482c7a', 38, 1, 'qbidapi', '[]', 0, '2024-02-01 15:25:00', '2024-02-01 15:25:00', '2025-02-01 10:25:00'),
('77d2a9974f422d40431d29af45a5ed05d8ef18aa6231ec2582ea235e5d823f7f80d8dc74b648081e', 1, 1, 'app_api', '[]', 0, '2023-11-17 03:48:11', '2023-11-17 03:48:11', '2024-11-17 08:48:11'),
('7866782e86db25e73da5f2ff19d41e5a3da5ea4e06bfd39cbd244564d88c492ce6656e9479a069cf', 1, 1, 'qbidapp_api', '[]', 0, '2023-12-15 14:29:54', '2023-12-15 14:29:54', '2024-12-15 09:29:54'),
('789bd59905eede1a5d9d1b7c6d35376d26e81e4fbd14249f2f2ed6d7d24f5386f197e82d6a471d0c', 2, 1, 'app_api', '[]', 0, '2023-11-10 04:56:01', '2023-11-10 04:56:01', '2024-11-10 09:56:01'),
('7922882878359660482033fb8f4b0ae1f0a6cf6aa0b3914b71119803920072540da7996bf8bb2ba4', 14, 1, 'qbidapp_api', '[]', 0, '2024-02-01 15:11:11', '2024-02-01 15:11:11', '2025-02-01 10:11:11'),
('793fc3d5fed129cf2f8a9434991e3e227011dec6f9c79c34f61943482f0c44b1ac4a4733df28144a', 14, 1, 'qbidapi', '[]', 0, '2023-12-05 17:56:44', '2023-12-05 17:56:44', '2024-12-05 12:56:44'),
('794c640307ae5b23ff26b5c7519b6787d5f6601aa2af15f177279afe484cfa4721b246a7a1ceeccb', 1, 1, 'app_api', '[]', 0, '2023-11-23 10:57:04', '2023-11-23 10:57:04', '2024-11-23 15:57:04'),
('79546fa90df379d159257dad3f99ac41cf7767557969a8dd35918cb16df0bef188150d0e52734db0', 3, 1, 'app_api', '[]', 0, '2023-10-31 11:07:24', '2023-10-31 11:07:25', '2024-10-31 16:07:24'),
('796fa59dd3c0a6a2615de8aaa94e33a72fa235622711cb6aa6d527dfb237965ab62a7ea7b73aa87f', 3, 1, 'app_api', '[]', 0, '2023-10-26 06:15:17', '2023-10-26 06:15:17', '2024-10-26 11:15:17'),
('7a8c726d9439933b2b8e13707f11f65383a161c5cc5364901aed2a7cb678d0bd279fa2a94e9c0c3f', 7, 1, 'qbidapp_api', '[]', 0, '2023-12-14 18:15:05', '2023-12-14 18:15:05', '2024-12-14 13:15:05'),
('7accc531da4724516e27624604ced3211f529bde6dbd59eb4eb61bbc9647268b2cd1ea53828920f5', 1, 1, 'app_api', '[]', 0, '2023-11-24 20:17:26', '2023-11-24 20:17:26', '2024-11-24 15:17:26'),
('7b73c3405634dfbdba087844078e15839e51ff0a9823f2949da108ccb526f161cefdfad655252869', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-05 20:04:54', '2023-12-05 20:04:55', '2024-12-05 15:04:54'),
('7bbd190a511d4981836715fd043d59ee8c92cb0620ee2300fe869bb0b3d6b34e0c466b5cdbd53d62', 17, 1, 'qbidapp_api', '[]', 0, '2023-12-14 13:47:21', '2023-12-14 13:47:21', '2024-12-14 08:47:21'),
('7c5804e18fc35878e85be92aca58763454813bec143410bf9d142e17e5c998f1238bfbfd98936465', 3, 1, 'app_api', '[]', 0, '2023-11-09 10:42:08', '2023-11-09 10:42:08', '2024-11-09 15:42:08'),
('7cc0829d5beffd95d667dcab2f8830418999c057692a280a0f106ae7cf9721fa45f704e348c7d173', 3, 1, 'app_api', '[]', 0, '2023-10-31 03:41:46', '2023-10-31 03:41:46', '2024-10-31 08:41:46'),
('7cc3ed40112c9b396bbd1c2c10ee227aa25991f86a049d09bd23e470470b7a6ce63b9b65512d4d02', 2, 1, 'app_api', '[]', 0, '2023-11-03 05:13:58', '2023-11-03 05:13:58', '2024-11-03 10:13:58'),
('7d9321097afd38529201dbe636e162baf920f857e93b5511f5331d01bcee1ff8964128363730a1d7', 2, 1, 'app_api', '[]', 0, '2023-11-03 09:36:27', '2023-11-03 09:36:27', '2024-11-03 14:36:27'),
('7dd4ebc7d9ac5730bd82777b4bc92892f518b342e11d3bb842cc41e26290d4e39ea26903a8354fd7', 20, 1, 'qbidapp_api', '[]', 0, '2024-01-04 02:53:45', '2024-01-04 02:53:45', '2025-01-03 21:53:45'),
('7de8fac4f44420ba3e1546e8544c255a3c12160dc7069087dc765b6a78526ba4ccc0d045861d60b5', 1, 1, 'app_api', '[]', 0, '2023-11-23 10:48:36', '2023-11-23 10:48:36', '2024-11-23 15:48:36'),
('7df190356f4fa0a13e2e9fa29411bce78b85ec0c37d909a2d9f2c987d87f881966615adc84d42d71', 3, 1, 'app_api', '[]', 0, '2023-11-16 04:26:30', '2023-11-16 04:26:30', '2024-11-16 09:26:30'),
('7e3092f397d9f57a8987314f864c015ebe6e9b86b55f29584332c7167caeab4cce5b0b7be1d47a50', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-14 18:03:35', '2023-12-14 18:03:35', '2024-12-14 13:03:35'),
('7e66ece3af32140ca22013aafd782b88a1cfb3a339cc126fcd9d8d882562289bd654f2bba18fa7c6', 26, 1, 'qbidapp_api', '[]', 0, '2024-01-16 04:20:48', '2024-01-16 04:20:49', '2025-01-15 23:20:48'),
('7e984a75c207a8bcc12836cedfc115eb6aed70bc3b23df4f4f78ee534d7fbd93345db19cfd04395f', 3, 1, 'app_api', '[]', 0, '2023-11-01 07:44:22', '2023-11-01 07:44:22', '2024-11-01 12:44:22'),
('7ea83c9785e2a6350602ca7f2b3a718ef44360551b8cc3f9221c14c31fa8c76ab2f86c7353dee99e', 3, 1, 'app_api', '[]', 0, '2023-10-25 08:01:08', '2023-10-25 08:01:08', '2024-10-25 13:01:08'),
('7f44d6f393e9a9b9b1fb89087890223d4925c2dae259c78e40ddd02d734f31094c5658ae20610334', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-05 19:25:50', '2023-12-05 19:25:51', '2024-12-05 14:25:50'),
('7f6d93d3599c10137c78dac0e81a926e28074718512be37a56f02c4a4c38f5cb249d55e58509642d', 8, 1, 'app_api', '[]', 0, '2023-11-22 09:11:49', '2023-11-22 09:11:49', '2024-11-22 14:11:49'),
('80242fea9b14c6675319062b12a4dcd86124473a85f2a663d1598f9b652c9bf553a9a48650efef95', 3, 1, 'app_api', '[]', 0, '2023-11-09 03:18:02', '2023-11-09 03:18:03', '2024-11-09 08:18:02'),
('80d37bfd346254e52d3e0e50bc55efe00fa6efdfd997f6714f352110faec039fc1f2a57f6a99e0a3', 2, 1, 'app_api', '[]', 0, '2023-11-23 09:29:35', '2023-11-23 09:29:36', '2024-11-23 14:29:35'),
('81379dae95533c99925025c192ce28e867697186a47d2e31cf3827b40e82c1f9ebf38cd8a8974ad6', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-15 20:39:16', '2023-12-15 20:39:16', '2024-12-15 15:39:16'),
('8141edde4687d63a72b9ed442330fda779483fb3f8155adc33f665c0a05124ef55beb5e0b98ac9fe', 2, 1, 'app_api', '[]', 0, '2023-11-24 17:27:00', '2023-11-24 17:27:00', '2024-11-24 12:27:00'),
('83dec8058efdca0b367eede30261f751e693cf6f9bf9bce5ab0d0ebdd027ce83ab1f4213d4e73b48', 1, 1, 'qbidapi', '[]', 0, '2023-10-25 06:28:33', '2023-10-25 06:28:33', '2024-10-25 11:28:33'),
('84c36d3cf0682417d29132e514f0c2f07b919793b3f05f0560b3f7a59deaa5abd28dd5ba7668d5ab', 31, 1, 'qbidapp_api', '[]', 0, '2024-02-27 20:07:08', '2024-02-27 20:07:08', '2025-02-27 20:07:08'),
('853f2d116e5bc9e94c4131e7255faf6a4860e47a01fcf27ec72283513f4ee0a5fb0cb66ed5a97ec3', 1, 1, 'qbidapp_api', '[]', 0, '2023-12-14 17:57:13', '2023-12-14 17:57:13', '2024-12-14 12:57:13'),
('85ac52264c3a0603a4138e011c659f1cda9bdb7ea648b897c3050d2e93072d66fdb04b6b0a42737f', 2, 1, 'app_api', '[]', 0, '2023-11-09 04:27:36', '2023-11-09 04:27:36', '2024-11-09 09:27:36'),
('86065210856914c487cdff04dd85fbf0ea07902ec5a8ffe188a4676e6420bc242b5cea0382189e88', 6, 1, 'qbidapi', '[]', 0, '2023-11-16 10:07:53', '2023-11-16 10:07:53', '2024-11-16 15:07:53'),
('8631b3cf825d117ae1da2a0beb57f7e68e28a6927382c7aa9879e29e7a114f9b3c3d0d84ed372e2c', 27, 1, 'qbidapp_api', '[]', 0, '2024-03-20 05:17:08', '2024-03-20 05:17:08', '2025-03-20 05:17:08'),
('86b4d99de87a782095f6a65b002752d0cdab71c20c12cd964feeca89f773145392330e9c91714545', 2, 1, 'app_api', '[]', 0, '2023-10-30 11:19:22', '2023-10-30 11:19:22', '2024-10-30 16:19:22'),
('871aee7b57f020d6d3b48a1ea1450da37ab3e21f0015aa24e61452a807f24637334686bfbba7718b', 26, 1, 'qbidapp_api', '[]', 0, '2024-01-16 04:42:32', '2024-01-16 04:42:32', '2025-01-15 23:42:32'),
('8743e60299096faffd989664a47b5781ce6d202d916799a4459f8a334189649c884f9fffbd0bd3f5', 37, 1, 'qbidapp_api', '[]', 0, '2024-02-01 17:11:58', '2024-02-01 17:11:58', '2025-02-01 12:11:58'),
('88b6c13eb06dcbcb02fcc7241a891ed3dbd64c55a56d4e4b7e70e59693c9fb3c653f4a68e1fac580', 2, 1, 'app_api', '[]', 0, '2023-10-31 03:21:08', '2023-10-31 03:21:08', '2024-10-31 08:21:08'),
('8a36af64132336de9e0af2455536b0a92a21080847093aa38e508a0b3028084d6d94045200c93382', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-15 20:43:38', '2023-12-15 20:43:38', '2024-12-15 15:43:38'),
('8a373e2b67c773b6afeae6731be6f898d4572808221e9440dd81389d27519fedb0ef9a519d171bd4', 26, 1, 'qbidapi', '[]', 0, '2024-01-16 01:03:10', '2024-01-16 01:03:10', '2025-01-15 20:03:10'),
('8a6e0931d0f79e10b162f87bf395d8acb99d00ca223e852cd734c24559b5fcc7435b2a960fef58f4', 39, 1, 'qbidapp_api', '[]', 0, '2024-02-27 16:56:13', '2024-02-27 16:56:13', '2025-02-27 16:56:13'),
('8a7023c0e80f04fc4184431cfcdf22fa437dfcf56453c6c1c6cac9fc1278c38882767a281a8ddb63', 8, 1, 'app_api', '[]', 0, '2023-11-22 08:59:52', '2023-11-22 08:59:52', '2024-11-22 13:59:52');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('8a830304a67d118e047390d349ec49a8732743824396b55981f4c2d0e7548ddb384e6c18f34ed073', 1, 1, 'qbidapp_api', '[]', 0, '2023-12-14 13:11:42', '2023-12-14 13:11:42', '2024-12-14 08:11:42'),
('8b6d27e6f48b2e63db2897997e7e16ecf37441667176ecf6f6113b8dd10971e595c50a24e6c54abd', 3, 1, 'app_api', '[]', 0, '2023-10-27 03:03:36', '2023-10-27 03:03:37', '2024-10-27 08:03:36'),
('8d1a98a439a2790a06b584b3b9302f80d3d09cb6d14ea2f3732f5104e16fd9598e091e4a0cf1fc78', 1, 1, 'app_api', '[]', 0, '2023-11-23 10:57:35', '2023-11-23 10:57:35', '2024-11-23 15:57:35'),
('8d25e8a062e093bf561beb2ac1e8284b229c29f619ca19f113578d59d6bafa9c74e79b1508db1aaa', 10, 1, 'app_api', '[]', 0, '2023-11-23 06:18:26', '2023-11-23 06:18:26', '2024-11-23 11:18:26'),
('8d32c8ed6bc29cb867e4e5ae68edefd5e57bc13fb77fca1a52089bf33057325e29f3ec92b791f0e0', 37, 1, 'qbidapi', '[]', 0, '2024-02-01 12:50:56', '2024-02-01 12:50:57', '2025-02-01 07:50:56'),
('8e767d4db95150bfe9bedcec4bd6fbefeec34b498262408c21f2b6df46d259497f8a9dac86a96e56', 29, 1, 'qbidapi', '[]', 0, '2024-01-16 03:49:54', '2024-01-16 03:49:54', '2025-01-15 22:49:54'),
('8e79dbc8111fdd9875fdd7ea176f3890ea3af829dadb9e8514b0f83ad08ff3727ded867216f015e4', 26, 1, 'qbidapp_api', '[]', 0, '2024-01-19 21:11:48', '2024-01-19 21:11:48', '2025-01-19 16:11:48'),
('8f1121e13daf1b41777c73f5c15e1ada3193f56d22a4fc2c48a51d78da1862ce4e9df2dcd1a6654d', 3, 1, 'app_api', '[]', 0, '2023-10-30 11:05:53', '2023-10-30 11:05:53', '2024-10-30 16:05:53'),
('8fa4e20ba7ac0b2df5259668f2ade9949ddff19dc6f4cf0e56dfe602b1bbdad078e783d5636790eb', 2, 1, 'app_api', '[]', 0, '2023-10-26 10:20:58', '2023-10-26 10:20:58', '2024-10-26 15:20:58'),
('8fe1bf3156b0cc0c143af239d4e69d0500c0dfb7e16101643aa5f09f205dec864e0afc0b5daf6d38', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-15 17:33:47', '2023-12-15 17:33:47', '2024-12-15 12:33:47'),
('8feacbb10291062ddb9bf145d54e9ca1ff3ab1185954a543050a362a9346b346223744fc7fc7a311', 3, 1, 'app_api', '[]', 0, '2023-11-14 06:50:59', '2023-11-14 06:50:59', '2024-11-14 11:50:59'),
('8ff5483016f7816187c62e25f7c6da33a0b0d81635cf0925f9f809b2311e8122e0729a8f00fbb01c', 3, 1, 'app_api', '[]', 0, '2023-11-09 10:54:51', '2023-11-09 10:54:51', '2024-11-09 15:54:51'),
('9204dc1b357f312edb192b4f85cd34deaaf577ab5fd826b22aba08170e4978e8f9ff533b15c8fb7e', 2, 1, 'app_api', '[]', 0, '2023-11-03 04:35:19', '2023-11-03 04:35:19', '2024-11-03 09:35:19'),
('9356a8f4bcb7eac0f82d475513fa321bd1f4f0336949893ce0602056717544e5363584305922333f', 2, 1, 'app_api', '[]', 0, '2023-11-20 09:58:35', '2023-11-20 09:58:35', '2024-11-20 14:58:35'),
('93cb9c0a74f2d21625856258cf966306648ea23cac117a61a32a4d5ee029871e21ab6961ae5ab168', 7, 1, 'app_api', '[]', 0, '2023-11-23 05:21:12', '2023-11-23 05:21:12', '2024-11-23 10:21:12'),
('940378943da9bb55036f8df7ca70d4055cacc4d565bb0082507c04373ddccc62e24a74a60e784251', 2, 1, 'app_api', '[]', 0, '2023-11-09 08:21:30', '2023-11-09 08:21:30', '2024-11-09 13:21:30'),
('9479f14aa1229e4bf90d19f3364367561a302c1e7f8b80cff85dd7bb2536ab585bf842fae445a410', 7, 1, 'app_api', '[]', 0, '2023-11-22 10:39:36', '2023-11-22 10:39:36', '2024-11-22 15:39:36'),
('963ac8f44bba5e1a2e6d35dcc862d20793c956f15647789362540e0e91d6a4d5b4cdf39db0ea1ada', 20, 1, 'qbidapp_api', '[]', 0, '2024-01-04 02:49:03', '2024-01-04 02:49:03', '2025-01-03 21:49:03'),
('96aea936aa50665f26b6b12c15b0d672751b65e1abe0fc642539db68a996d238e9053d87f1437b42', 3, 1, 'app_api', '[]', 0, '2023-11-02 10:24:28', '2023-11-02 10:24:28', '2024-11-02 15:24:28'),
('976dae77d977fe618bab6281d1134321e7558384e9cf5657a409b261b7498d8f0514481e6bcee18c', 11, 1, 'qbidapi', '[]', 0, '2023-11-24 19:44:52', '2023-11-24 19:44:52', '2024-11-24 14:44:52'),
('9808dad1613495469c2c85342b71ab5d5eca4fad976d6f2b35cdb54ebb90f7ef045c7771d47b5f9b', 4, 1, 'qbidapi', '[]', 0, '2023-11-16 09:43:02', '2023-11-16 09:43:02', '2024-11-16 14:43:02'),
('980be276425fb710512134e3fe7c6a51abe84064e1e321d2c4b93ff705eda6888419a92d8573feb2', 2, 1, 'app_api', '[]', 0, '2023-11-14 07:33:41', '2023-11-14 07:33:41', '2024-11-14 12:33:41'),
('9823182710144ad76a4afacd3bf11f9dfd6546c5b5b3ba784acff9ae2af51393ca74dc30271646a7', 3, 1, 'app_api', '[]', 0, '2023-11-03 09:39:40', '2023-11-03 09:39:40', '2024-11-03 14:39:40'),
('98439b356290aec3bc224545a968acc510182113555f9cf2d9157bd9155f23559e14936aeb961e9b', 2, 1, 'qbidapp_api', '[]', 0, '2024-01-16 01:32:03', '2024-01-16 01:32:03', '2025-01-15 20:32:03'),
('98c60a6f176774a99026ba7277f8d6cd41de25127443537dc63409da04bf5d9e38be0c560cbe2ea2', 26, 1, 'qbidapp_api', '[]', 0, '2024-01-16 03:52:14', '2024-01-16 03:52:14', '2025-01-15 22:52:14'),
('98eb873e2725aeaaf31893dcb020c62cb7f0bce27952ebbd361d330101b710ef8c942b48aa85d0de', 17, 1, 'qbidapp_api', '[]', 0, '2023-12-15 14:35:10', '2023-12-15 14:35:10', '2024-12-15 09:35:10'),
('98fea0468c7b448e5ae678e530304b2598dccb6f711de4955a10eb4a5bffc6a682b34b682070fd9c', 3, 1, 'app_api', '[]', 0, '2023-11-10 03:51:22', '2023-11-10 03:51:22', '2024-11-10 08:51:22'),
('996dceb912199958d1a4f42ba41bd93561bb44973ae834116ced508519478a8c6fe7582f58fd0c45', 24, 1, 'qbidapi', '[]', 0, '2024-01-16 00:54:42', '2024-01-16 00:54:42', '2025-01-15 19:54:42'),
('999946a79b46e5b3f3b562f8e1e5cdb100a661f60006216b79ea99c445712e12e6b8e0369ddf728f', 1, 1, 'app_api', '[]', 0, '2023-11-09 10:46:54', '2023-11-09 10:46:54', '2024-11-09 15:46:54'),
('9a2e0c9f343675b3ef463a67d9571c333c138205eaa58170c4501bcbff51d0afe8a554e892d55aca', 2, 1, 'app_api', '[]', 0, '2023-10-26 06:48:23', '2023-10-26 06:48:23', '2024-10-26 11:48:23'),
('9ae6cef7aace4162ca3dcb1e9f85e01beecf8938a4f7c1bc56fd73eb13d288b13f426c7c47ee31e2', 3, 1, 'qbidapp_api', '[]', 0, '2024-03-20 05:35:26', '2024-03-20 05:35:26', '2025-03-20 05:35:26'),
('9b1d36a5abdf9a1ce2da56b05aa694e4a8d78e46ec15d784fb714021ff72276a311aae7758b5b05c', 3, 1, 'app_api', '[]', 0, '2023-11-02 08:05:01', '2023-11-02 08:05:02', '2024-11-02 13:05:01'),
('9b74cbcaed598810fede0c83da0200392cf2c6023f1f52d3b31a9419518db273c859fb6d01014b26', 3, 1, 'app_api', '[]', 0, '2023-11-16 09:31:28', '2023-11-16 09:31:28', '2024-11-16 14:31:28'),
('9c0a5471f09a63a085f12a26dba373b7e50a3f96b294d76663fd6c4b6af74a5c704de3c6af33f13b', 2, 1, 'app_api', '[]', 0, '2023-11-14 06:52:08', '2023-11-14 06:52:08', '2024-11-14 11:52:08'),
('9c38374870f4869d8a9d7f4e2184a25bc2ab00dc5388dba549e25d1c6e25c168b075da2dee01165a', 36, 1, 'qbidapp_api', '[]', 0, '2024-02-01 14:42:36', '2024-02-01 14:42:36', '2025-02-01 09:42:36'),
('9c50c280bd669b150ac435bba2861faea02e327623ec98a697a00ff608b023911b6574c0df9f8660', 7, 1, 'app_api', '[]', 0, '2023-11-23 05:56:30', '2023-11-23 05:56:30', '2024-11-23 10:56:30'),
('9d40d85be3732f2b4179a4e38f51bafe69e39ce4d4fb9ad36865a41c0e81dff5a63c497b70ed60da', 7, 1, 'app_api', '[]', 0, '2023-11-23 10:50:05', '2023-11-23 10:50:05', '2024-11-23 15:50:05'),
('9d976712b72312d4ba9e8a7b9bb1620e1005bb38d9e03a0b6ef5c5ce4858056e76bd1674fb304b64', 3, 1, 'app_api', '[]', 0, '2023-11-03 05:21:03', '2023-11-03 05:21:03', '2024-11-03 10:21:03'),
('9e2cbbe641ad41533f78fbcc0d06fc1a5222ae7393437db5b1d36fb07ab86a18333a9f0a6940bddd', 1, 1, 'app_api', '[]', 0, '2023-11-21 10:32:38', '2023-11-21 10:32:38', '2024-11-21 15:32:38'),
('9eba094ba16a4fa26333864913d8cabf20e9bc335e5c5806dd986a4098538322611b46f5862b1a56', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-14 13:36:27', '2023-12-14 13:36:27', '2024-12-14 08:36:27'),
('9f23a0a7433b32952e3c5a59afcbe4210e333a07eea758ec5cb6d80c0c51709a6c44f30e70dbeb0b', 3, 1, 'app_api', '[]', 0, '2023-10-26 06:51:16', '2023-10-26 06:51:16', '2024-10-26 11:51:16'),
('9f9d96309e6761a543cdebabdd84a5bc9a8f82451cb4db18d7e162732ed6a32187239ef4e71e4185', 7, 1, 'app_api', '[]', 0, '2023-11-23 03:22:25', '2023-11-23 03:22:25', '2024-11-23 08:22:25'),
('a02f134de3b6f4348dee10c0f840cb26a31ff41904b419efa64d0b245f508eb19132924b830857f8', 17, 1, 'qbidapi', '[]', 0, '2023-11-14 05:49:47', '2023-11-14 05:49:48', '2024-11-14 10:49:47'),
('a10fda2d50052c32aacd6e8bdaa1de6daaa9a52c6563056e69438df0e3b0e3d9ce9706454f30757a', 3, 1, 'app_api', '[]', 0, '2023-11-15 03:41:56', '2023-11-15 03:41:56', '2024-11-15 08:41:56'),
('a12eda83a7c47bac93e3b5598eeda6dd9e4209dd2eb0c385d09c3f98d28965f24b25fd0b1a55f631', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:07:21', '2023-11-23 11:07:21', '2024-11-23 16:07:21'),
('a194a7d304800726974a9d86cb4e06b35f8e7690eaa6739be1b47ab667bb24ead999579e7330adf7', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-14 15:46:47', '2023-12-14 15:46:47', '2024-12-14 10:46:47'),
('a376187b772d76fa9cbe7328ce2838f08beaa8e9625b9b054ff214a801d4c95ca22667037daa817c', 25, 1, 'qbidapp_api', '[]', 0, '2024-01-16 01:00:42', '2024-01-16 01:00:42', '2025-01-15 20:00:42'),
('a4411086236858b421050607cf1bee6f4e5a13354717d9d85c7736981298bcc002b24bcbe7e02d23', 8, 1, 'app_api', '[]', 0, '2023-11-24 20:36:35', '2023-11-24 20:36:35', '2024-11-24 15:36:35'),
('a44433c5048b6e03a934c705c610d983a9bafb74c2dc68844178a5c6bdeedb20270aeed8726e0f04', 3, 1, 'app_api', '[]', 0, '2023-11-09 09:18:41', '2023-11-09 09:18:41', '2024-11-09 14:18:41'),
('a4a8ec9c96b268b99e6023d4b7f769c3ebc0c5ecd91b55bc7947a81c2712ec9ebbafa23050f5abd8', 2, 1, 'app_api', '[]', 0, '2023-10-27 09:21:07', '2023-10-27 09:21:07', '2024-10-27 14:21:07'),
('a520b175fa52a068aae84dc65230493e29ce58b0ac6a8dc3cbcd2b8a1e979627e3bbdb987af82a79', 13, 1, 'app_api', '[]', 0, '2023-12-04 15:48:09', '2023-12-04 15:48:09', '2024-12-04 10:48:09'),
('a535ce6e0cc6d5ff6904358fd512afedf381247fac43ac1fd783e3dae94fd25682abe87944ac9c39', 1, 1, 'app_api', '[]', 0, '2023-11-21 05:08:39', '2023-11-21 05:08:39', '2024-11-21 10:08:39'),
('a6dc5f0bb36de2fa82cc2c973e1c41afdcb2853767fd06285a06aee0c7081f70a1d6fad609da5880', 16, 1, 'qbidapi', '[]', 0, '2023-12-14 13:28:51', '2023-12-14 13:28:51', '2024-12-14 08:28:51'),
('a75156472e99aa5e5c43b2f6233f63154b96c25206e48f013b1600c89d4b8abf4843aa29f9661168', 3, 1, 'app_api', '[]', 0, '2023-10-25 09:52:07', '2023-10-25 09:52:07', '2024-10-25 14:52:07'),
('a7a8e5615c1233d24c19d0b597c7c2a5e143b719167a594cc2893f480b1665e6391aec5a94ca901c', 6, 1, 'qbidapi', '[]', 0, '2023-10-30 09:17:17', '2023-10-30 09:17:17', '2024-10-30 14:17:17'),
('a7fbd6ee4cc3f9d9cb3b7edf005e564bc59bc1da62671a36d8827f697f2317a82b9972c36ace8cb3', 1, 1, 'app_api', '[]', 0, '2023-11-22 10:14:17', '2023-11-22 10:14:17', '2024-11-22 15:14:17'),
('a8a34a20d8e7a4d179e8887b6dbd0600eefa1be0cf079e3cf675468a16e8aa4fce456c8fbed822dc', 2, 1, 'app_api', '[]', 0, '2023-11-02 11:06:30', '2023-11-02 11:06:30', '2024-11-02 16:06:30'),
('a94cd4850605baef220b9ead6cd2607271c0a2e0effb55994c5dbef6ac12818ff518511385929ab3', 37, 1, 'qbidapp_api', '[]', 0, '2024-02-01 17:11:26', '2024-02-01 17:11:26', '2025-02-01 12:11:26'),
('a9686e29cb5253f22fc1d865d63ab0dfd057726d23a3c106f2c77afeaa3fce9a2bc7eb9c1d3fef99', 2, 1, 'app_api', '[]', 0, '2023-10-30 08:58:04', '2023-10-30 08:58:04', '2024-10-30 13:58:04'),
('ac0938956796fee3f51476a9867af4d7c02b454d5480a78074a6e2232e9f343263008a75ef5fa83a', 1, 1, 'app_api', '[]', 0, '2023-11-20 11:07:31', '2023-11-20 11:07:32', '2024-11-20 16:07:31'),
('ace0fa1d83c2d471047c4fac09aaf24239cdd08e4e712439bb2a771619ebe8966175404e82c54700', 2, 1, 'app_api', '[]', 0, '2023-11-06 06:20:46', '2023-11-06 06:20:46', '2024-11-06 11:20:46'),
('ace1baef58c4f6152649e902fb337dfcaa986659ed7d642284c2cfd45a69a4def3e8af29e14df36f', 3, 1, 'app_api', '[]', 0, '2023-10-30 10:51:38', '2023-10-30 10:51:38', '2024-10-30 15:51:38'),
('acefa41550de4c4d88553ed14a3db3168d6454db50b04970155d60985b87a5fbb456f0f9d80a3f9b', 35, 1, 'qbidapi', '[]', 0, '2024-01-20 20:58:06', '2024-01-20 20:58:06', '2025-01-20 15:58:06'),
('ad631bc6fb0573ea5af97a7e38fa6754827e7a48f0f8bc1ffccf66a5285cdd7bf8efe2505d605508', 7, 1, 'app_api', '[]', 0, '2023-11-23 09:49:55', '2023-11-23 09:49:55', '2024-11-23 14:49:55'),
('adb48b615df0f941eac8b1a04aa5f99bdca233b0f3eb9d1d0eff8b9508e677975ec122e4a19ade8a', 2, 1, 'app_api', '[]', 0, '2023-11-03 05:21:52', '2023-11-03 05:21:52', '2024-11-03 10:21:52'),
('adfd359d2cee52060e0ce6744a3d9cfd32e39c3cad3cf16e25eb88f2f54d01d2c7b99615b6529bb6', 36, 1, 'qbidapi', '[]', 0, '2024-01-31 17:48:28', '2024-01-31 17:48:28', '2025-01-31 12:48:28'),
('aea2d833b0f1742908fcef56ad3594c982da65e43c5f36cd01f5fbb0e43bf62291fb49b533a327ee', 2, 1, 'app_api', '[]', 0, '2023-10-27 03:20:14', '2023-10-27 03:20:14', '2024-10-27 08:20:14'),
('aea318f2a88af0216937aa459f9385a732af0019e6fac4c27448381ac4022ced73383226d3984bce', 15, 1, 'qbidapi', '[]', 0, '2023-11-03 09:58:37', '2023-11-03 09:58:37', '2024-11-03 14:58:37'),
('aee553c4dc2a869c07832d624d6b553bbda2e312d3921bf2d53fc86b1ca74d58090966e9447eeeec', 3, 1, 'app_api', '[]', 0, '2023-11-02 03:42:04', '2023-11-02 03:42:04', '2024-11-02 08:42:04'),
('af1591fb687f6e66c751f649d0e4be19460fc557c1cc9603072d2c680119e6eb598281153044b244', 8, 1, 'app_api', '[]', 0, '2023-11-22 09:11:37', '2023-11-22 09:11:38', '2024-11-22 14:11:37'),
('afe94613f59852c33fcd9826eaa11877a1ed484dbe3273c4c94ce7559303f64232420a465911cb5a', 14, 1, 'qbidapp_api', '[]', 0, '2024-02-01 15:17:45', '2024-02-01 15:17:45', '2025-02-01 10:17:45'),
('afff1276872dbb6c4d9a273b15e788031dfbff15481a9e7849b6ac16a97976b2f1ebc8dbc709f447', 13, 1, 'qbidapi', '[]', 0, '2023-12-04 15:47:17', '2023-12-04 15:47:17', '2024-12-04 10:47:17'),
('b0a16d53d0b71729ad7380583d8deee5b757605f424bff5a89096f74d6fa2e327fd6cb50b14be42e', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:08:51', '2023-11-23 11:08:51', '2024-11-23 16:08:51'),
('b0bb1fc1aff40128bad257f5f623ab29678df5b019c9ec7bed5c8c94cc5d3bbcc59baaf7a704877e', 3, 1, 'app_api', '[]', 0, '2023-11-09 04:28:26', '2023-11-09 04:28:26', '2024-11-09 09:28:26'),
('b0d84073396d8fa8cda2a39d403fe22c8e1eaf5e2076c874f38b786ee8203d34b89ee90eb682d575', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:15:32', '2023-11-23 11:15:32', '2024-11-23 16:15:32'),
('b12a8a8405c1330cbef536b63c72f15eb08fbf508d2f177c2cf80287f3ae9afa566788e4d2dd1472', 3, 1, 'app_api', '[]', 0, '2023-11-03 05:12:23', '2023-11-03 05:12:23', '2024-11-03 10:12:23'),
('b3205066582482039836e7bfaa23727658e3f9deaa5f2ab4c723b8dc8541d2c5555e96e1cb284c2c', 36, 1, 'qbidapp_api', '[]', 0, '2024-02-01 13:01:30', '2024-02-01 13:01:31', '2025-02-01 08:01:30'),
('b4683904ee11d71e9f2ee051b0e70aae0b8192efe8098c3e65e48180b5a279d4fa5d9e2068071a0f', 2, 1, 'app_api', '[]', 0, '2023-11-24 17:07:08', '2023-11-24 17:07:08', '2024-11-24 12:07:08'),
('b46d35669da71cc6597eebb2a406544d61b66aa77d66b55994d9f1eeee46653ab0d09af2e1179f1e', 18, 1, 'qbidapp_api', '[]', 0, '2024-02-01 17:11:36', '2024-02-01 17:11:36', '2025-02-01 12:11:36'),
('b649052b757aac19e94330d3e26ba5d26bf80c8d37a3a0a4c867fc0be879d407db95e9b2a6c6a07d', 16, 1, 'qbidapi', '[]', 0, '2023-11-06 06:16:17', '2023-11-06 06:16:17', '2024-11-06 11:16:17'),
('b651072383c34764aa2a28e5f7d81a83936f738ce1e3381d2323c22860e5e70143281d56c93bd624', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-15 14:34:18', '2023-12-15 14:34:18', '2024-12-15 09:34:18'),
('b702f461839f307e023e73d4f612cb929661a619a4289336ca41d806f7d9ac55bcb98ddf579b5273', 5, 1, 'qbidapi', '[]', 0, '2023-11-16 10:02:19', '2023-11-16 10:02:19', '2024-11-16 15:02:19'),
('b7661a4b781cbbd0b099159885db008e5cc79feca3405676b8c24a7d7d3d77bebfb55f3749470ca6', 36, 1, 'qbidapp_api', '[]', 0, '2024-02-01 15:31:38', '2024-02-01 15:31:38', '2025-02-01 10:31:38'),
('b7693883c1519c3c7b6290720efef9e9147034fd158453377f913b653aa276bc6c2cfcf11a462e90', 6, 1, 'app_api', '[]', 0, '2023-11-17 03:35:21', '2023-11-17 03:35:21', '2024-11-17 08:35:21'),
('b780512c74a008f076ab5de2d0500d2075feb3b56f7c8052c1c0d1eb4b46ef3b20371b9e749141da', 3, 1, 'app_api', '[]', 0, '2023-11-06 04:59:39', '2023-11-06 04:59:39', '2024-11-06 09:59:39'),
('b79d072651890dd3898596b507905c90a7fa0f440007fe977b868fec13e85df9c22829451abf6cfd', 13, 1, 'qbidapi', '[]', 0, '2023-11-03 07:12:11', '2023-11-03 07:12:11', '2024-11-03 12:12:11'),
('b914e3d970c755d33d4f8fdee018bce138f80ea69127bda102412a6b7fb08cc4041ee79e185abb6f', 5, 1, 'qbidapi', '[]', 0, '2023-10-30 09:13:44', '2023-10-30 09:13:44', '2024-10-30 14:13:44'),
('b96bc251aa24a4ec4fe92507cd6b3a19447a0fdba718893f1f0019d087f2b72e4e2c38fb850727fc', 3, 1, 'app_api', '[]', 0, '2023-11-06 08:38:13', '2023-11-06 08:38:13', '2024-11-06 13:38:13'),
('b9d62349126486752dc370343c3d07bf286d413cb7c619c92998cab10bdc5c2c608d15a3ee72ae0b', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:12:13', '2023-11-23 11:12:13', '2024-11-23 16:12:13'),
('ba123586c0e0b4d155acd8c9b8de4d33d918a3cd7e96cb6703b8b825594374d71497aa3f3af9f4c2', 19, 1, 'qbidapi', '[]', 0, '2024-01-04 02:40:52', '2024-01-04 02:40:52', '2025-01-03 21:40:52'),
('ba9f68c3a61fc0d725c1f56ccf476f330e8d31f7d10c6bb8b2a9284235fa9e0aebb588b6b32de5f0', 20, 1, 'qbidapp_api', '[]', 0, '2024-01-04 02:54:50', '2024-01-04 02:54:50', '2025-01-03 21:54:50'),
('baf5d90b95f8029f8d888a234c4b51a17f3ea19c569c885aa34e93f5c9cbf87341bac052d0a9f8a6', 7, 1, 'qbidapi', '[]', 0, '2023-11-22 08:02:29', '2023-11-22 08:02:29', '2024-11-22 13:02:29'),
('bb43c211929568d73e9bb1621cf318964c905e3edd32a01e66b82b2a58f44513f5018c8ba61e0592', 2, 1, 'app_api', '[]', 0, '2023-10-30 10:59:13', '2023-10-30 10:59:13', '2024-10-30 15:59:13'),
('bb44a901d4dd22c72be8fac3c4fe6dff379c68e4ec0e5d8bd018cf58a6c5ce06e660ae2c2fe4d775', 2, 1, 'app_api', '[]', 0, '2023-11-09 11:02:09', '2023-11-09 11:02:10', '2024-11-09 16:02:09'),
('bc429ba8288cf9566cadda6005fd4559416cae0928a12c2d254259c7710cd501e69dec40cb59cbcf', 2, 1, 'app_api', '[]', 0, '2023-11-03 05:11:31', '2023-11-03 05:11:31', '2024-11-03 10:11:31'),
('bd3433d495894b2a9732a6a2939985da1edc087abfae4efbe3a1853984b467513945842b431b52eb', 36, 1, 'qbidapp_api', '[]', 0, '2024-02-01 13:49:15', '2024-02-01 13:49:15', '2025-02-01 08:49:15'),
('bd44e8522851d9bc9188c071d6702db5bb254ed54f1554cfeb4754a4b03a02ff3a579acebe3f383a', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:12:24', '2023-11-23 11:12:24', '2024-11-23 16:12:24'),
('be52330d8a470787b00e31a76275e365e7e31363faa67002a92de2d2ff3722205960a3b07d7d6c88', 2, 1, 'app_api', '[]', 0, '2023-11-01 06:00:21', '2023-11-01 06:00:22', '2024-11-01 11:00:21'),
('be9b8ee91c59f84b31ce1130ebc38d3dd5f332d92fa5cda6723bbcfee6ae79aa7f87e7f8d5c8d035', 3, 1, 'app_api', '[]', 0, '2023-10-27 03:03:30', '2023-10-27 03:03:30', '2024-10-27 08:03:30'),
('bec6004000c2e864c7ea9904aacceb43843850ce99c30cf590f64641e91d9b3e1a66bf826a31edab', 3, 1, 'app_api', '[]', 0, '2023-10-30 06:47:10', '2023-10-30 06:47:10', '2024-10-30 11:47:10'),
('bf0e820dda2240894a8b37c838727a6ea8b69376575433993c5d3697c88b0f42627cf3c42e6032b0', 39, 1, 'qbidapp_api', '[]', 0, '2024-02-27 16:54:54', '2024-02-27 16:54:54', '2025-02-27 16:54:54'),
('bfe0da2a738584f3689f3c1c80db0d71ce8622c5251382ce621d57dff0aaca7848f8e4c6e94e0e55', 3, 1, 'app_api', '[]', 0, '2023-10-26 06:16:36', '2023-10-26 06:16:36', '2024-10-26 11:16:36'),
('c14c928dd7262795fca512935a9b73822b41874955650bc6039e4b4aa5ad0ce5aae64896964ae5c1', 1, 1, 'app_api', '[]', 0, '2023-11-21 10:23:14', '2023-11-21 10:23:14', '2024-11-21 15:23:14'),
('c154746b5d77c30fb5aef45e4ec113f8132816c4c31ee79b1f6698e5f31959b79427bdb5b02f68e3', 3, 1, 'app_api', '[]', 0, '2023-10-30 06:39:35', '2023-10-30 06:39:36', '2024-10-30 11:39:35'),
('c18a8a4e69b709e4ee08c99d7e6b7e2aefa3d8b196d55841f99d35beb0d498ee5a9308d10e3eb258', 32, 1, 'qbidapp_api', '[]', 0, '2024-02-16 02:56:29', '2024-02-16 02:56:29', '2025-02-16 02:56:29'),
('c1cf95d7f462741b296cd80d1fabf8109a01079eaafc1d4164164af129e966eb074ecde8ace65ac9', 1, 1, 'app_api', '[]', 0, '2023-11-24 19:03:33', '2023-11-24 19:03:34', '2024-11-24 14:03:33'),
('c2341aa451f83298fd05ecf94456ee17a6dd6a21c0f4dc199ef454e12874384d1f7862f397f0d96e', 3, 1, 'app_api', '[]', 0, '2023-10-25 08:42:52', '2023-10-25 08:42:52', '2024-10-25 13:42:52'),
('c2a7c2a40c5afd27a984f480a48d749c43f773324243037d28205af339e75dc13a74733b3330bdbb', 3, 1, 'qbidapp_api', '[]', 0, '2024-02-27 17:55:53', '2024-02-27 17:55:53', '2025-02-27 17:55:53'),
('c2c31a44db5608f9b48c40c3bcf7bfbb03328a20cf1c81a22efef04b89893b0503d37d6f28c95bf4', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-05 19:42:25', '2023-12-05 19:42:26', '2024-12-05 14:42:25'),
('c33bd4eb9bd1d34df9ba1e72c4045970f2ae52fc9fd3ff7233068a06bff1712a51b341f4bb56c7b4', 12, 1, 'qbidapi', '[]', 0, '2023-11-24 19:51:29', '2023-11-24 19:51:29', '2024-11-24 14:51:29'),
('c3ae8f0199fa2cf29ddeb1b7a3a7b61b7e54591a133de2049916738eb5d2fd27c876a01252c4a632', 2, 1, 'app_api', '[]', 0, '2023-10-31 03:38:08', '2023-10-31 03:38:08', '2024-10-31 08:38:08'),
('c41828c4590422b3cb5c4a90819064d22a189167a5310ed9aed4fc6c4cf9bc0becf1cc4aef17e21d', 37, 1, 'qbidapp_api', '[]', 0, '2024-02-01 14:46:23', '2024-02-01 14:46:23', '2025-02-01 09:46:23'),
('c427b1c29c688179c848aa8c5166defede21df039a26c97eafbabaac0e05e69387c4ff7545b128a5', 3, 1, 'app_api', '[]', 0, '2023-11-02 10:18:00', '2023-11-02 10:18:00', '2024-11-02 15:18:00'),
('c48901574fbffe5b3d440d911f8afbc357bd13acfc979846cb360cc81ae3ce56931c247fcf482918', 7, 1, 'app_api', '[]', 0, '2023-11-23 06:35:38', '2023-11-23 06:35:38', '2024-11-23 11:35:38'),
('c4ef4e53805aca0d977b79e096adc163e9c0b95c42189b04214553f9035b83c95824e5a49aa38e13', 3, 1, 'app_api', '[]', 0, '2023-11-16 04:26:27', '2023-11-16 04:26:27', '2024-11-16 09:26:27'),
('c545982ccfd94d587aa0ad171d76fd344113b2848c8a28e7e64ae97b2002bdd32eba7519a08437af', 1, 1, 'app_api', '[]', 0, '2023-11-23 10:39:07', '2023-11-23 10:39:07', '2024-11-23 15:39:07'),
('c5772655ac4d9231fc18360d56c2427ebc05111bdc4a8659c7b11ce72b902ad1a4aaa8100741d31a', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:18:01', '2023-11-23 11:18:01', '2024-11-23 16:18:01'),
('c630da0865a23ebf53d550f8369f26c845d8ed37703681f74e54b1447da3e63e7d5ab28a242f68fb', 3, 1, 'qbidapp_api', '[]', 0, '2024-03-20 05:19:54', '2024-03-20 05:19:54', '2025-03-20 05:19:54'),
('c66f53299954f4238f24d56c7db265f54cc1700cf82902958e8fde8d0dd5a0cca846f0ce438b669e', 2, 1, 'app_api', '[]', 0, '2023-11-01 04:44:02', '2023-11-01 04:44:02', '2024-11-01 09:44:02'),
('c6a7007efa72a0b3a63142ae436688aaacd7215d381340221135c2d53b688061d653ea47995a3c80', 7, 1, 'app_api', '[]', 0, '2023-11-23 10:13:12', '2023-11-23 10:13:12', '2024-11-23 15:13:12'),
('c6bc426d6f289f88992e9e9e222b08451fddf943d7a00356742840ff6e216580f87f8084453299ec', 1, 1, 'app_api', '[]', 0, '2023-11-09 10:45:07', '2023-11-09 10:45:07', '2024-11-09 15:45:07'),
('c7c53c69b9b261f352be24fb3c6b7ebb14477677f80559fbb20cb3ef93a9fdb369ce95e6c9705024', 3, 1, 'qbidapp_api', '[]', 0, '2024-03-20 05:21:59', '2024-03-20 05:21:59', '2025-03-20 05:21:59'),
('c7edf8d3b8b40407b25d66f52808dd41f43172356995ef39bf735c33c5fca9f891692139fcfa97f0', 10, 1, 'app_api', '[]', 0, '2023-11-23 09:38:36', '2023-11-23 09:38:36', '2024-11-23 14:38:36'),
('c81878aa1fc2ea2f66bc17280438986fe095e4b902cbe2b779ca1db7265140edec42719d58e43d4b', 3, 1, 'app_api', '[]', 0, '2023-11-09 10:03:18', '2023-11-09 10:03:18', '2024-11-09 15:03:18'),
('c825ec39035f4ba100e0a24c53781745526bf7338b1249f84dce8b8465b13595254571ef23cc1ec9', 3, 1, 'app_api', '[]', 0, '2023-11-02 05:08:30', '2023-11-02 05:08:30', '2024-11-02 10:08:30'),
('c8624270fb68aa6f21d870592514e44af484680deb252e024654ac5ab7ce2ce0bcee74ce6fd95e34', 2, 1, 'app_api', '[]', 0, '2023-11-06 08:50:50', '2023-11-06 08:50:50', '2024-11-06 13:50:50'),
('c8bb74902e7a4adc692f01c8700e4532732bd63f35bd05111befabfc49b78d8760d6e5435f18fd49', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-05 19:33:56', '2023-12-05 19:33:56', '2024-12-05 14:33:56'),
('cb556b6b104541575ddf6838ac3cd6d47fd66fca1e9700aeca49941eb2482931629ea593a5238d94', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:09:10', '2023-11-23 11:09:10', '2024-11-23 16:09:10'),
('cdad5801e1fca220b1ee3521bf2b6fa3efee1dd8c65c32b7652becea0c223195e5d304ed8c947c66', 27, 1, 'qbidapi', '[]', 0, '2024-01-16 01:14:41', '2024-01-16 01:14:42', '2025-01-15 20:14:41'),
('ce45aa7e793680cd96cd670941a878409e0c977d017fdf480f69fb35aa6264ea5b1b146ae8b1136b', 2, 1, 'app_api', '[]', 0, '2023-10-25 10:26:25', '2023-10-25 10:26:25', '2024-10-25 15:26:25'),
('cec315710e76153892adc7a1125f627e267093a497c1b6c9e112bf3dd9f1503ab4d09b0fe1b97d7e', 37, 1, 'qbidapp_api', '[]', 0, '2024-02-01 13:48:13', '2024-02-01 13:48:13', '2025-02-01 08:48:13'),
('cfb9a428ab75236c03f5718390eb5fb261877044134f6d7c4fae0d0cb6d654a48f5ce1b63d82adc6', 3, 1, 'app_api', '[]', 0, '2023-11-10 04:12:49', '2023-11-10 04:12:49', '2024-11-10 09:12:49'),
('d077b1e955dc13a7c5461e278cf68828d2e889737f0beac17d42930451417574a35dc1053d0b59cf', 3, 1, 'app_api', '[]', 0, '2023-11-01 07:44:53', '2023-11-01 07:44:53', '2024-11-01 12:44:53'),
('d0a0e49c9e0f77ff9ff9cbc2afec5362caa8b04a3385def58ae94b2ba92da4e96ad5a78fc659dd5a', 16, 1, 'qbidapp_api', '[]', 0, '2023-12-14 13:41:11', '2023-12-14 13:41:11', '2024-12-14 08:41:11'),
('d16b17f8224908e86be66788438819b0ef83a1f157274163d73905bd0c9199544c4a984e039dc715', 2, 1, 'app_api', '[]', 0, '2023-11-17 03:31:23', '2023-11-17 03:31:23', '2024-11-17 08:31:23'),
('d1ba9f41feb9e109bbda3cbacebc53d5bdd0c94ad5e1ab59e91014474654ac69f233d9cc286ba393', 2, 1, 'app_api', '[]', 0, '2023-10-30 06:12:37', '2023-10-30 06:12:38', '2024-10-30 11:12:37'),
('d1ef963e4c117ff38052e7728710108562515493c3092fbe481cb1be5b1b4b8a7517c332781219bd', 36, 1, 'qbidapp_api', '[]', 0, '2024-01-31 17:57:13', '2024-01-31 17:57:13', '2025-01-31 12:57:13'),
('d23e2ab9fb47ae52cbb27c19339916dd7fd4ab73d485e7ccb0639e4de8db1acf8f31427bfa7fb0b1', 3, 1, 'app_api', '[]', 0, '2023-11-03 07:43:10', '2023-11-03 07:43:10', '2024-11-03 12:43:10'),
('d247726489f5911f82fa7060ddf504cd82346c7fb78d7f25fac39a7bb54d65298fc591fa5b67dacc', 20, 1, 'qbidapi', '[]', 0, '2024-01-04 02:46:21', '2024-01-04 02:46:21', '2025-01-03 21:46:21'),
('d42286ac0315bb4baaae4a323f30020865109601c2365d48be193e7f8c3606945bde8ec84c879034', 3, 1, 'app_api', '[]', 0, '2023-11-16 04:27:37', '2023-11-16 04:27:37', '2024-11-16 09:27:37'),
('d5cde8ad26fa4218016ae4e6915cd89662a7d7b07d0b10f1cf8aab88f795cf83d5fc1c3f906238ad', 31, 1, 'qbidapp_api', '[]', 0, '2024-02-27 16:40:27', '2024-02-27 16:40:27', '2025-02-27 16:40:27'),
('d78bcadbb140323b20bd945729342bfc62483f27cf98930ef71bd51d5711b92b848472dc1acae0d8', 26, 1, 'qbidapp_api', '[]', 0, '2024-01-16 04:14:55', '2024-01-16 04:14:55', '2025-01-15 23:14:55'),
('d7cf2b4021a478b572b86536dd83da4f85d41c8b97e01bf4309f45f744dd5b8e2473bd6e061681cb', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-15 20:10:20', '2023-12-15 20:10:20', '2024-12-15 15:10:20'),
('d87457eb0c45305dd785013009ebb11db5af696c31f0a1265b5cc1c87fd1689dd2e8bd6c01cc6984', 2, 1, 'app_api', '[]', 0, '2023-10-25 07:07:40', '2023-10-25 07:07:40', '2024-10-25 12:07:40'),
('d8c6a0c9772655ac8967ca9f8519a0bc706446a416bbe5589e68acfec63a44b04049739c8288f538', 2, 1, 'app_api', '[]', 0, '2023-10-30 08:15:53', '2023-10-30 08:15:54', '2024-10-30 13:15:53'),
('d909ebb8a25bc35947410f4610fbdbcf6809bdbb8e226298702ce533cbbb4480f568e495b8b91cb9', 1, 1, 'app_api', '[]', 0, '2023-11-24 20:24:42', '2023-11-24 20:24:42', '2024-11-24 15:24:42'),
('d9625c2206c0c892b9e7ade174166d14f3e1b1fcb358ec5507db9f2f679eb077c13894efc96b7610', 1, 1, 'app_api', '[]', 0, '2023-11-21 06:33:02', '2023-11-21 06:33:03', '2024-11-21 11:33:02'),
('da15bea1d85c731b60280cd3b24507e02fa2a18812d6779b829893d93fb53935480991ad4ae8ea5e', 1, 1, 'app_api', '[]', 0, '2023-11-24 20:31:38', '2023-11-24 20:31:38', '2024-11-24 15:31:38'),
('db22299f92375a4451ff56fa98cada907f9be630f739aa167be62405d7b6a2eabf7a430bdf26b58f', 37, 1, 'qbidapp_api', '[]', 0, '2024-02-01 17:11:28', '2024-02-01 17:11:28', '2025-02-01 12:11:28'),
('dc3e533d3ed9496bc5133b1c693f1378b0f3b0d923f31719fc9cd592e2767254faf0889c92a1139d', 25, 1, 'qbidapi', '[]', 0, '2024-01-16 00:56:57', '2024-01-16 00:56:57', '2025-01-15 19:56:57'),
('dc89dfcf7d3c562f003e7f181c17e47da773da16a1bf0562162b0a7a3add513a93845f8478f376f0', 3, 1, 'app_api', '[]', 0, '2023-11-06 05:18:08', '2023-11-06 05:18:08', '2024-11-06 10:18:08'),
('dcfa47008dfaccc6a14b14a1e16547780d89a0d9cb016e8467ac6350d0d983b9fa0a8048c04a8acb', 14, 1, 'qbidapp_api', '[]', 0, '2024-02-27 18:08:35', '2024-02-27 18:08:35', '2025-02-27 18:08:35'),
('dd2bf8a91fe53669f335b99d2a82f866dc42aff2e3a634530b377bdea4f20e4f4add6c97b001a104', 31, 1, 'qbidapp_api', '[]', 0, '2024-02-27 16:45:48', '2024-02-27 16:45:48', '2025-02-27 16:45:48'),
('de1431230ca379277496f2ca0f0f4084f41886302f36a48f7301b8e8e452d00b12a0b193e34d43ba', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:05:11', '2023-11-23 11:05:11', '2024-11-23 16:05:11'),
('ded2c4556071eaae84a0079b262fab56fd5e85390a0bf32d1e839adc44ef81e6b9ed008119e80bfc', 34, 1, 'qbidapi', '[]', 0, '2024-01-20 20:52:53', '2024-01-20 20:52:54', '2025-01-20 15:52:53'),
('e0224c158c4572146e8b3ce9bb54b1f415c6355830ed1a1cec61ab1a7e935dc5e1a4c3088cea69fe', 1, 1, 'app_api', '[]', 0, '2023-11-23 10:49:03', '2023-11-23 10:49:03', '2024-11-23 15:49:03'),
('e05b50b60d9222ca693f407d53567bfff2f884a7af67e5304dea272a4678bb6251304037ad9389b1', 10, 1, 'app_api', '[]', 0, '2023-11-23 04:03:08', '2023-11-23 04:03:08', '2024-11-23 09:03:08'),
('e076f3eb7467dcb22b098b622a333b8c1acc3b8ec86671dccf1a58861f706f3afccee43517aaeced', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-15 21:10:46', '2023-12-15 21:10:46', '2024-12-15 16:10:46'),
('e07abd39f77cf648f1d24e979f98e76a0441b2b4a1209c428e6d0b244e685cb2d1b6cd5f05192179', 3, 1, 'qbidapp_api', '[]', 0, '2024-02-27 19:17:13', '2024-02-27 19:17:13', '2025-02-27 19:17:13'),
('e083671be6a49de878d5e6f1861255f835e24a4bcc6e4abf2719c9cd36dedf52b8907e4f9fac63cb', 2, 1, 'app_api', '[]', 0, '2023-10-31 05:23:11', '2023-10-31 05:23:11', '2024-10-31 10:23:11'),
('e08c60f1e87728b7baeba22eeed95ba1c6819f73228cd28fe845aa0c9cde1a9d7793b2c948f8dfa2', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-15 19:28:41', '2023-12-15 19:28:41', '2024-12-15 14:28:41'),
('e0e644e307bdb12e7644bd58f7456e3eb20a854608718c728c7c71c7cf335d33f9a8915c3f421b29', 1, 1, 'qbidapp_api', '[]', 0, '2023-12-06 15:21:30', '2023-12-06 15:21:30', '2024-12-06 10:21:30'),
('e0f401d49c941de234769e14058cf1ec582655515d36a64fb24cb85d45aaa993afac96078e247eec', 1, 1, 'app_api', '[]', 0, '2023-11-17 03:33:09', '2023-11-17 03:33:09', '2024-11-17 08:33:09'),
('e1b968f68b2305dbc1371917459bb1f91b5088990f54ee78867557986da7a7f8fe23ea49d8624dd4', 20, 1, 'qbidapp_api', '[]', 0, '2024-01-04 02:55:01', '2024-01-04 02:55:01', '2025-01-03 21:55:01'),
('e2600e4e9d4fc159680c02dc14114979d2d692319b56810d8bdc3dd2e10be2e3c709862cb9a40390', 2, 1, 'app_api', '[]', 0, '2023-10-31 08:43:28', '2023-10-31 08:43:28', '2024-10-31 13:43:28'),
('e388c849d16161a0ca0864b64a34cdb46649a942371f7b3c9bcbea374cb4acfe89140a595f0934e4', 3, 1, 'app_api', '[]', 0, '2023-10-30 08:33:50', '2023-10-30 08:33:50', '2024-10-30 13:33:50'),
('e58e15062f145604be7d2248f7a05fa900befab94b170e9684835eeb1d2255769b014e537bd99fa8', 2, 1, 'app_api', '[]', 0, '2023-11-17 05:03:23', '2023-11-17 05:03:24', '2024-11-17 10:03:23'),
('e5c25b2e1eda813947bbbc3b6ec33d9306c7382760ff0ff1ec9ad5171597ca471ea9a672d864b576', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-15 15:11:18', '2023-12-15 15:11:18', '2024-12-15 10:11:18'),
('e5d9dec1f4d654509f73ef8522a57bcd2fbf0485e0be75fa282e302efbb8e15c5d2b0a69fe3cf6e2', 2, 1, 'qbidapp_api', '[]', 0, '2023-12-14 14:04:12', '2023-12-14 14:04:12', '2024-12-14 09:04:12'),
('e66695d96e7df2998fb63a016ecc9d328867ed1c19fced0bfa966c746eaa2d81a01ba084d31fb830', 13, 1, 'qbidapp_api', '[]', 0, '2023-12-04 16:00:04', '2023-12-04 16:00:04', '2024-12-04 11:00:04'),
('e71d4266ed7c177859d0f7d74422028db696922facc9fcb7ddd6aba90c5c54731c94015765c5f8d5', 2, 1, 'qbidapp_api', '[]', 0, '2024-02-07 23:02:43', '2024-02-07 23:02:43', '2025-02-07 23:02:43'),
('e7af9df03866cfc22ba2f9942d68afc8618ab2b5ab62af3465989eda91bca91fe76761bf0f46d124', 26, 1, 'qbidapp_api', '[]', 0, '2024-01-19 21:10:19', '2024-01-19 21:10:19', '2025-01-19 16:10:19'),
('e95f7722d6a31dfbaf41cc18946e2f5effc47fc34ccfb2f7a4db83f258df4c7b624be6767db892d9', 2, 1, 'app_api', '[]', 0, '2023-11-16 09:44:51', '2023-11-16 09:44:51', '2024-11-16 14:44:51'),
('eb247e27589b1965023e12035b086c0d3796247a3b34144d2386c769e41d589e3562b496c10846bf', 1, 1, 'qbidapp_api', '[]', 0, '2023-12-06 15:26:23', '2023-12-06 15:26:23', '2024-12-06 10:26:23'),
('eb60565397d26815cc8d775f599d73c14c75cd533d09f49d1446edd3059fec0ae6e3e44c5eb28458', 2, 1, 'app_api', '[]', 0, '2023-11-06 08:18:01', '2023-11-06 08:18:01', '2024-11-06 13:18:01'),
('ec23181b4471583c3de033d5cdd509a0cd09ac074c085833531d117ee16a416f1cb7b199538960ef', 1, 1, 'app_api', '[]', 0, '2023-11-23 10:54:07', '2023-11-23 10:54:07', '2024-11-23 15:54:07'),
('ec367c4801a33ea1b6ea0566841b6d1a770a40bb57cef4fe015323727e33b48791791ccc924a36e0', 3, 1, 'app_api', '[]', 0, '2023-10-31 04:50:28', '2023-10-31 04:50:28', '2024-10-31 09:50:28'),
('ec52a41a200d0bfed54a7a607d3521dff5d76adb076b32a3bbaccc1a0e5f5dbffe97e2d9c4186177', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-15 20:59:24', '2023-12-15 20:59:24', '2024-12-15 15:59:24'),
('ece048f43ea8812309f4c0f9baedf71c0eea36231a8e91e453e318552de8fdf0c8f046846650f298', 3, 1, 'app_api', '[]', 0, '2023-11-16 04:50:26', '2023-11-16 04:50:26', '2024-11-16 09:50:26'),
('ee216bbe177b3a34a466fb7b58da895d0215b341e494f6a7e199f8f5ab4ae3dd1228929b3ed6523e', 36, 1, 'qbidapp_api', '[]', 0, '2024-02-01 13:47:05', '2024-02-01 13:47:05', '2025-02-01 08:47:05'),
('ee27d5145eeb6fb5b0955af4b599050393ac92ab49a9d7c707c55106fcaf850323895054117dc81c', 4, 1, 'app_api', '[]', 0, '2023-11-22 10:42:59', '2023-11-22 10:42:59', '2024-11-22 15:42:59'),
('eeac3ee4d9cdab68e00bab1cbb949f9e200f653179fa4a48431dc965bf60fc417efe3674de1284ac', 2, 1, 'app_api', '[]', 0, '2023-10-26 08:48:05', '2023-10-26 08:48:06', '2024-10-26 13:48:05'),
('eec436de40cb8f635a755ce32229900252676eae9999b9f2fbb0cd0c34d7fb1c88f4091ff5be0cf3', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-05 18:15:39', '2023-12-05 18:15:39', '2024-12-05 13:15:39'),
('efb5cb799cd0c9d17abb52c8c6853c35c087086d3981d795351a3d6cef08f8cd4ce09474298430e1', 1, 1, 'app_api', '[]', 0, '2023-11-23 10:37:50', '2023-11-23 10:37:50', '2024-11-23 15:37:50'),
('effbf61bc108ff7ed546991b23de086cb6aa76cb390a21fa0e9f7840989c179e192b413175e31d3d', 31, 1, 'qbidapp_api', '[]', 0, '2024-02-27 19:41:27', '2024-02-27 19:41:27', '2025-02-27 19:41:27'),
('f004ed155d08bf56aa03571aba52bc61e78ea3c864a36e89d936741bb49d70640e02dcf1d1c552a5', 3, 1, 'app_api', '[]', 0, '2023-11-03 03:30:47', '2023-11-03 03:30:47', '2024-11-03 08:30:47'),
('f08b0168f5fa9eacdbe2f00317ba44e1990a272c3e0051485b9e1afca73555a4d3dda7f56d4f4c6d', 3, 1, 'app_api', '[]', 0, '2023-11-03 03:31:39', '2023-11-03 03:31:39', '2024-11-03 08:31:39'),
('f0a8a09cd79d4d96b1a4824a395eb2b0095af95a02a48e7f1c51f22ca855a0a982ced486527642e7', 3, 1, 'app_api', '[]', 0, '2023-11-14 06:00:02', '2023-11-14 06:00:02', '2024-11-14 11:00:02'),
('f17c4b422e81483ad2a7fe79140064cc77f62a13ffc53c084e535e065d3edea3d27ffdecf8d590d4', 3, 1, 'app_api', '[]', 0, '2023-11-10 05:30:59', '2023-11-10 05:30:59', '2024-11-10 10:30:59'),
('f1e37f59eb48f579610acfc89b3359f4dc8fcd8ec2a65640bcf364ddfbe0d8200b6b74760d2e6490', 3, 1, 'app_api', '[]', 0, '2023-11-16 04:00:00', '2023-11-16 04:00:00', '2024-11-16 09:00:00'),
('f20ec0b7b678d07813275a6e619387605368573eb131829d7c574c93306b90a8531cac4cccc20078', 31, 1, 'qbidapp_api', '[]', 0, '2024-02-27 17:01:31', '2024-02-27 17:01:31', '2025-02-27 17:01:31'),
('f210b493db65fd37cfbbc66e535c6a44866e00ac95ad115d823ea9d66d4134e83db5c0f6eb7bbfa4', 2, 1, 'qbidapi', '[]', 0, '2023-10-25 06:35:47', '2023-10-25 06:35:47', '2024-10-25 11:35:47'),
('f2167c7cd5682fdce10a3dc310122ce1dab8f4a158f0243c3f20cbaa116081ba76d571fc232a0ebc', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:20:19', '2023-11-23 11:20:20', '2024-11-23 16:20:19'),
('f2d0616fec1f1d89d19e5000570e87408446f73753f8b282e5ce2074012e1c09fd3886b838d33661', 2, 1, 'app_api', '[]', 0, '2023-11-06 04:27:32', '2023-11-06 04:27:32', '2024-11-06 09:27:32'),
('f2faece383d4a7fa7f1027b11eccce0b5a242192e81c0f1cf58b5002794bdd6912f41d350acbbbbb', 1, 1, 'app_api', '[]', 0, '2023-11-23 11:07:58', '2023-11-23 11:07:58', '2024-11-23 16:07:58'),
('f31b7546e0289b64d3b05872dee8c3483a038649ee6c23cec4d31afc6ce99300f7297aebb45568ef', 1, 1, 'app_api', '[]', 0, '2023-11-09 10:45:55', '2023-11-09 10:45:55', '2024-11-09 15:45:55'),
('f35cbc250a52103487c41cce2a8b9389ecba377378150e8e09a0a0ecb903c751edbb38d146484540', 10, 1, 'app_api', '[]', 0, '2023-11-23 05:22:44', '2023-11-23 05:22:44', '2024-11-23 10:22:44'),
('f3cfa7da2818b58c2198c61e419b16b236114bea15ac027b5560e7d7e56d318404f8d0a214d8ee68', 2, 1, 'app_api', '[]', 0, '2023-11-09 04:27:36', '2023-11-09 04:27:36', '2024-11-09 09:27:36'),
('f47fde86839333b2e373be44d2a7a1d5ca2b207f458ee194facec9b814d9ebb20846cbccc7fb3eaa', 2, 1, 'app_api', '[]', 0, '2023-10-25 09:00:55', '2023-10-25 09:00:55', '2024-10-25 14:00:55'),
('f4a37285016499073adc78a236d4669950ff6bbe2aea238262704e533e89bdbeddcbc8cf56865491', 28, 1, 'qbidapi', '[]', 0, '2024-01-16 01:34:12', '2024-01-16 01:34:12', '2025-01-15 20:34:12'),
('f555a8cb58ac023cee9ebe3caba5c4fa9e466884b524179a49a29e0e8bf0f2358f99a93014833220', 3, 1, 'app_api', '[]', 0, '2023-11-01 06:04:20', '2023-11-01 06:04:20', '2024-11-01 11:04:20'),
('f629f91499d36ab8f52064dd06af6f2413b882aed63476d598284cc9394f17808baa21df1e13b828', 3, 1, 'app_api', '[]', 0, '2023-11-10 03:51:16', '2023-11-10 03:51:16', '2024-11-10 08:51:16'),
('f7fee9e6e95a3b2e335216681e186b92eb9a61173fcbe328ab313d55341062ee399221840d33c231', 36, 1, 'qbidapp_api', '[]', 0, '2024-01-31 17:57:28', '2024-01-31 17:57:29', '2025-01-31 12:57:28'),
('f8d5739fbcda251dd661b83bfef95cd7fb788dd2338b26cd61da453c6e858661a6cb0e3217c52cab', 2, 1, 'app_api', '[]', 0, '2023-10-30 07:51:57', '2023-10-30 07:51:57', '2024-10-30 12:51:57'),
('f95a0f10e340b1d2524b38f3640fe908c6e8c50e7e2fa83938b29321f72c8bbe5df2152edf4f73e5', 2, 1, 'app_api', '[]', 0, '2023-11-24 17:10:03', '2023-11-24 17:10:04', '2024-11-24 12:10:03'),
('f97be4946f01e46329ff324d70cd5814f23995c1ec29d26b66ad246bd4b40f5f824086bf226e01e3', 8, 1, 'qbidapi', '[]', 0, '2023-11-22 08:03:20', '2023-11-22 08:03:20', '2024-11-22 13:03:20'),
('fa5a19e1c0973c05d3db550164e3374977042c84a58c15b886fe2cfcf457ee9d027cf1fd3f7cbb9a', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-15 18:43:50', '2023-12-15 18:43:51', '2024-12-15 13:43:50'),
('fa5ed49118e4e78c0c3c702aa3281cbe5017b4b6077841ef379910033faf8d21276d7eba99d0fba1', 4, 1, 'app_api', '[]', 0, '2023-11-22 10:41:15', '2023-11-22 10:41:15', '2024-11-22 15:41:15'),
('fb2e8c2adf1cf3eb43c22a28e6062474e0728afd799676335ecbc1a0a1f59a699a669d8b5f2347ac', 32, 1, 'qbidapi', '[]', 0, '2024-01-20 07:17:33', '2024-01-20 07:17:33', '2025-01-20 02:17:33'),
('fc776abf458eafbc64dbdd7bf17572e4e4f5a852bdf163ff8f1f7c223028bae50ea2d25f6ee16703', 2, 1, 'app_api', '[]', 0, '2023-11-06 05:22:17', '2023-11-06 05:22:17', '2024-11-06 10:22:17'),
('fc856b0514af73a1de2cca26f458bd25c1371be1119e73c03c051526abe30c8fbca11ac6468d08cf', 2, 1, 'app_api', '[]', 0, '2023-11-02 09:50:08', '2023-11-02 09:50:09', '2024-11-02 14:50:08'),
('fce698f74ee920603242a47e5309680823d403a03720efbf927f4fb680a902391297cbaf7166726e', 14, 1, 'qbidapp_api', '[]', 0, '2023-12-06 15:27:12', '2023-12-06 15:27:13', '2024-12-06 10:27:12'),
('fd8655c0db01484b120693028f3ea47d5d9bf1182f9278ede5e37b70395fc27e2b501a04a55459ce', 26, 1, 'qbidapp_api', '[]', 0, '2024-01-16 04:52:47', '2024-01-16 04:52:47', '2025-01-15 23:52:47'),
('fe9c4692b40772570754d57153fd6bb6cccca40971bce91dea1ace1d90bb84d763884c0d822a8e0d', 3, 1, 'app_api', '[]', 0, '2023-11-06 06:38:47', '2023-11-06 06:38:47', '2024-11-06 11:38:47'),
('ff50d6a9f32e43ca48e78e63d6b5c51eab055c4204753f303c78c2c9ce0116397eae533c87ca2cb8', 17, 1, 'qbidapi', '[]', 0, '2023-12-14 13:45:01', '2023-12-14 13:45:01', '2024-12-14 08:45:01'),
('ffa24ebaab93ba5e833415507be5b657506f79c72f5452bff641d27137f056af1b0829452730b933', 3, 1, 'app_api', '[]', 0, '2023-11-10 08:43:11', '2023-11-10 08:43:11', '2024-11-10 13:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Nk5S1QKWWJXoJs10iBGKmolMRipQn15OjiNjAgFG', NULL, 'http://localhost', 1, 0, 0, '2023-10-18 07:35:53', '2023-10-18 07:35:53'),
(2, NULL, 'Laravel Password Grant Client', 't8fuGI9W9qUAdi8ZtpaBB2VsBZEnzXCxgYjIkj6a', 'users', 'http://localhost', 0, 1, 0, '2023-10-18 07:35:53', '2023-10-18 07:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-10-18 07:35:53', '2023-10-18 07:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_read` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'qbidapp_api', '8917bc262045a6afe3b1d51b09ec2421bc9ccdcf8703d8005eb42a7a7e9dd1db', '[\"*\"]', '2024-06-20 11:27:04', NULL, '2024-03-20 05:38:27', '2024-06-20 11:27:04'),
(2, 'App\\Models\\User', 3, 'qbidapp_api', '86e7207013186711d260080f633400c32c54cd17db303d54f26a7c8a6d9f7d9c', '[\"*\"]', '2024-03-22 05:21:13', NULL, '2024-03-20 05:47:25', '2024-03-22 05:21:13'),
(3, 'App\\Models\\User', 37, 'qbidapp_api', '02f37f3ca665db44ae5dece8431cbc320bd9850b47433f4395366d5b79fc2548', '[\"*\"]', NULL, NULL, '2024-03-20 06:22:34', '2024-03-20 06:22:34'),
(4, 'App\\Models\\User', 37, 'qbidapp_api', 'cdcf69118bb3e855f3b9a927da618f009e62c64d1690caffea77f03fb9f110a4', '[\"*\"]', NULL, NULL, '2024-03-20 06:22:38', '2024-03-20 06:22:38'),
(5, 'App\\Models\\User', 37, 'qbidapp_api', 'c625aeefa3bb1e3eeff33e94fd2e085d02f57ed67c653b5ac6b7a344a6718802', '[\"*\"]', '2024-03-22 07:48:44', NULL, '2024-03-20 06:22:59', '2024-03-22 07:48:44'),
(6, 'App\\Models\\User', 2, 'qbidapp_api', '1c527dac9e09901b5e15aa226b6dbb7878297b7ea903ad4347f00f15b92d287d', '[\"*\"]', '2024-03-20 07:12:18', NULL, '2024-03-20 07:07:37', '2024-03-20 07:12:18'),
(7, 'App\\Models\\User', 37, 'qbidapp_api', '712ec1e995a822dcb3861a291792aad98bf8546559b24a26e2704fc09ce64478', '[\"*\"]', '2024-03-20 07:19:13', NULL, '2024-03-20 07:14:30', '2024-03-20 07:19:13'),
(8, 'App\\Models\\User', 3, 'qbidapp_api', '874f5cc98894361a44abb44aa5d7484db81190d72319c7de52632322e765a4d4', '[\"*\"]', '2024-03-20 07:23:44', NULL, '2024-03-20 07:21:49', '2024-03-20 07:23:44'),
(9, 'App\\Models\\User', 37, 'qbidapp_api', 'a043e522192feb29f6c79b525e108d1d98d8f0bc096cbad5edb07bd6fcbfa560', '[\"*\"]', NULL, NULL, '2024-03-20 07:24:08', '2024-03-20 07:24:08'),
(10, 'App\\Models\\User', 37, 'qbidapp_api', '1ee017966737e51e4418a80a76478c9444622dceb04159477a7b4f6b826d6838', '[\"*\"]', '2024-03-20 07:28:31', NULL, '2024-03-20 07:24:27', '2024-03-20 07:28:31'),
(11, 'App\\Models\\User', 3, 'qbidapp_api', '1f81ac93f112d6b4ecf0e9ca875b68febf44e27de56f0be6c89e384219a9cad2', '[\"*\"]', '2024-03-20 07:36:32', NULL, '2024-03-20 07:31:00', '2024-03-20 07:36:32'),
(12, 'App\\Models\\User', 37, 'qbidapp_api', '8dc09ab520fb4b17eaf1c0d0c7c2cefe5601b3a4e6301e9718be6b9010de8f53', '[\"*\"]', '2024-03-20 07:44:40', NULL, '2024-03-20 07:38:08', '2024-03-20 07:44:40'),
(13, 'App\\Models\\User', 3, 'qbidapp_api', 'c22bf892092407cb74bb48a970e628a5a586e0e8d2020b9729352a6284653df9', '[\"*\"]', '2024-03-20 07:54:40', NULL, '2024-03-20 07:45:35', '2024-03-20 07:54:40'),
(14, 'App\\Models\\User', 37, 'qbidapp_api', '2bc06ef55fd426f2a25d03b0cc9b2074b771b8faf438089abacaf2e1ec6a2bd7', '[\"*\"]', '2024-03-20 09:12:07', NULL, '2024-03-20 07:55:07', '2024-03-20 09:12:07'),
(15, 'App\\Models\\User', 3, 'qbidapp_api', '284e87a48628199595b066dd059bd8b527a39ab2c4932b282c524bf7857e1fe5', '[\"*\"]', '2024-03-20 09:36:06', NULL, '2024-03-20 09:12:38', '2024-03-20 09:36:06'),
(16, 'App\\Models\\User', 37, 'qbidapp_api', '67b706457408c800aa07028b0a9680744c1899d9bbdc98cf8bed5067cf9b855e', '[\"*\"]', '2024-03-20 09:53:41', NULL, '2024-03-20 09:36:37', '2024-03-20 09:53:41'),
(17, 'App\\Models\\User', 3, 'qbidapp_api', '41a84d0a5ceb337c37f2958083faf7536ccfec2c991fc07c25ea1e6f2838fee3', '[\"*\"]', '2024-03-20 10:52:20', NULL, '2024-03-20 09:54:04', '2024-03-20 10:52:20'),
(18, 'App\\Models\\User', 37, 'qbidapp_api', '25b19afb0a7b2960b158032c96bb4a0984278cda9484037af9d7160606795506', '[\"*\"]', NULL, NULL, '2024-03-20 10:52:43', '2024-03-20 10:52:43'),
(19, 'App\\Models\\User', 37, 'qbidapp_api', 'de2f1d2f9245544c2302c92a30107c05ca2e1761dbb3e7a8c2a58e2b1e90cbf9', '[\"*\"]', NULL, NULL, '2024-03-20 10:52:47', '2024-03-20 10:52:47'),
(20, 'App\\Models\\User', 37, 'qbidapp_api', '72492c7c3ac5fbd7a903a9f0b9618669c13abc7b1fca75d73de115727c1cc3b4', '[\"*\"]', '2024-03-20 11:07:39', NULL, '2024-03-20 10:53:08', '2024-03-20 11:07:39'),
(21, 'App\\Models\\User', 3, 'qbidapp_api', '3c5270b3cc365ccaf942756faf1a3bdfb8626f4968d16891f689429ccc11db5a', '[\"*\"]', '2024-03-20 11:13:04', NULL, '2024-03-20 11:12:35', '2024-03-20 11:13:04'),
(22, 'App\\Models\\User', 37, 'qbidapp_api', 'e765817b05673259fe1c43673003d8c87b77648f1171fbfa154c3d6fba836262', '[\"*\"]', '2024-03-20 11:13:47', NULL, '2024-03-20 11:13:44', '2024-03-20 11:13:47'),
(23, 'App\\Models\\User', 37, 'qbidapp_api', '9e26ef2775cadacd3bb2dc6d923ff3d39624ba2ce0b280478215d7a1f7b8ebaf', '[\"*\"]', '2024-03-20 11:14:52', NULL, '2024-03-20 11:13:45', '2024-03-20 11:14:52'),
(24, 'App\\Models\\User', 3, 'qbidapp_api', 'e1e4182e15d1e6646738b9aa67ead2d5ec348b5986549235f0e5472c728c8d01', '[\"*\"]', '2024-03-20 11:18:24', NULL, '2024-03-20 11:15:27', '2024-03-20 11:18:24'),
(25, 'App\\Models\\User', 37, 'qbidapp_api', '67e087bad1fee22148f418dab62ed7693cbb5c8aa56e55a5e178c0261de7d234', '[\"*\"]', '2024-03-20 11:19:38', NULL, '2024-03-20 11:18:52', '2024-03-20 11:19:38'),
(26, 'App\\Models\\User', 3, 'qbidapp_api', '920dc0c962e1ef4683ab94267268f3592d968e9bb885e20daf58878b9bce53a4', '[\"*\"]', '2024-03-20 11:22:03', NULL, '2024-03-20 11:20:08', '2024-03-20 11:22:03'),
(27, 'App\\Models\\User', 37, 'qbidapp_api', 'bcde51e673a3a97026912757104ff9e194283c60796585224b3d00d8623cf345', '[\"*\"]', '2024-03-20 11:23:40', NULL, '2024-03-20 11:22:50', '2024-03-20 11:23:40'),
(28, 'App\\Models\\User', 3, 'qbidapp_api', 'ec28bba5ce09a0bfe9136441ddb9a1fd0bd6df3efc1c93e69cc4c5b1c094af52', '[\"*\"]', '2024-03-20 11:29:42', NULL, '2024-03-20 11:24:08', '2024-03-20 11:29:42'),
(29, 'App\\Models\\User', 37, 'qbidapp_api', 'ac2fd1c510f283716fc8eeeba6405ea1d2a260812049241d849ee2b693964d7e', '[\"*\"]', '2024-03-20 11:31:20', NULL, '2024-03-20 11:30:34', '2024-03-20 11:31:20'),
(30, 'App\\Models\\User', 3, 'qbidapp_api', '6d7c1374c8fd4fa4d0d867e76508d2d51de5c55539a4e3a5614977eb374d1446', '[\"*\"]', '2024-03-20 11:44:49', NULL, '2024-03-20 11:37:53', '2024-03-20 11:44:49'),
(31, 'App\\Models\\User', 37, 'qbidapp_api', '6718d050b6d181ed84d7441d92264452124035016ece712a4479210289599491', '[\"*\"]', '2024-03-20 11:46:27', NULL, '2024-03-20 11:45:30', '2024-03-20 11:46:27'),
(32, 'App\\Models\\User', 3, 'qbidapp_api', '52e838f9951f89372cd3082583814c7a0fe755bc2639435dcc33bbcbf1e54079', '[\"*\"]', '2024-03-21 08:32:14', NULL, '2024-03-20 11:47:48', '2024-03-21 08:32:14'),
(33, 'App\\Models\\User', 38, 'qbidapp_api', 'cd9135a74aa8862d4b4b0c417ef1bb952512ad38d787ad7f0066efab482f1b1c', '[\"*\"]', '2024-03-21 08:33:38', NULL, '2024-03-21 08:32:56', '2024-03-21 08:33:38'),
(34, 'App\\Models\\User', 3, 'qbidapp_api', '7def8acc92f44f188f80f635789e4fa93f44992ec0723076d23f23c8f3f87f74', '[\"*\"]', '2024-03-21 08:42:50', NULL, '2024-03-21 08:36:09', '2024-03-21 08:42:50'),
(35, 'App\\Models\\User', 2, 'qbidapp_api', '5a199e5e42071e3cce2e12bf1b24a817e8755e78b6dcd9fdc16146823009265d', '[\"*\"]', '2024-03-21 08:46:47', NULL, '2024-03-21 08:43:12', '2024-03-21 08:46:47'),
(36, 'App\\Models\\User', 38, 'qbidapp_api', '5442567b22969933f85c50d7988db0be93a5bbdf00b178b4969b91dbf6718ebc', '[\"*\"]', NULL, NULL, '2024-03-21 08:47:15', '2024-03-21 08:47:15'),
(37, 'App\\Models\\User', 38, 'qbidapp_api', 'bae1b71d0f23cbee8fc565d9e15a512c8c0357695dffaebb61aa2b83a0e0c76f', '[\"*\"]', NULL, NULL, '2024-03-21 08:47:18', '2024-03-21 08:47:18'),
(38, 'App\\Models\\User', 38, 'qbidapp_api', '1d38d91fdc74c2ebf7592a3eec9cc201565f829c7daa45b527aece277421d98e', '[\"*\"]', NULL, NULL, '2024-03-21 08:47:41', '2024-03-21 08:47:41'),
(39, 'App\\Models\\User', 37, 'qbidapp_api', 'ea6ab0991501cc086a75bba6957dc3aee866ce64e5b7af0d1fda928406a1ed61', '[\"*\"]', NULL, NULL, '2024-03-21 08:48:02', '2024-03-21 08:48:02'),
(40, 'App\\Models\\User', 27, 'qbidapp_api', 'cfcb6e724c9b7b500f7f868a995ea2b328b7a36ace9e0078e2d776c8340d56c1', '[\"*\"]', NULL, NULL, '2024-03-21 08:48:42', '2024-03-21 08:48:42'),
(41, 'App\\Models\\User', 37, 'qbidapp_api', '3e001dc92b8dcdf4912b7e6cfc8955e340c85e07e32e9723dec4754604d580da', '[\"*\"]', '2024-03-21 08:51:14', NULL, '2024-03-21 08:48:57', '2024-03-21 08:51:14'),
(42, 'App\\Models\\User', 2, 'qbidapp_api', '37427fa5954b2353847b96e8e9c851cbb4ada28532eaba2bff42b577bd53c994', '[\"*\"]', '2024-03-21 08:57:48', NULL, '2024-03-21 08:51:42', '2024-03-21 08:57:48'),
(43, 'App\\Models\\User', 3, 'qbidapp_api', '49a68697a3fa22622ff0ac784b57e76163250a16ae9f80a20b85bbb91acfdcfa', '[\"*\"]', '2024-03-21 09:06:03', NULL, '2024-03-21 08:58:14', '2024-03-21 09:06:03'),
(44, 'App\\Models\\User', 2, 'qbidapp_api', 'c30a208843371bf43a9172c07676f9824a9382cf335aa3617688aa235ec47a72', '[\"*\"]', '2024-03-21 09:21:34', NULL, '2024-03-21 09:07:05', '2024-03-21 09:21:34'),
(45, 'App\\Models\\User', 37, 'qbidapp_api', '1803aff11b24d41d4053539d26f662c74e45cf4b0179316b492b114bdbb7e724', '[\"*\"]', NULL, NULL, '2024-03-21 09:22:13', '2024-03-21 09:22:13'),
(46, 'App\\Models\\User', 27, 'qbidapp_api', 'e7d024c5b25f9f65456c8dfb1eaffc3884224450d9f62e93ef4232b55660a4a3', '[\"*\"]', NULL, NULL, '2024-03-21 09:23:50', '2024-03-21 09:23:50'),
(47, 'App\\Models\\User', 37, 'qbidapp_api', '11d587fc42afe10e6d501a2fc1744cfc8d35ed444dd74dd128175ec730fd0881', '[\"*\"]', '2024-03-21 10:04:30', NULL, '2024-03-21 09:24:02', '2024-03-21 10:04:30'),
(48, 'App\\Models\\User', 3, 'qbidapp_api', '30d9510d2b450b98e9732486cf6fa0fbeefa31edd5b9d4ffe3b01c1b5d08056d', '[\"*\"]', '2024-03-21 10:12:41', NULL, '2024-03-21 10:07:35', '2024-03-21 10:12:41'),
(49, 'App\\Models\\User', 37, 'qbidapp_api', '115f19f71cb086b3a71263f4d4ee3ecc48e23f1cecd860792e3eaca953628df3', '[\"*\"]', '2024-03-21 11:19:43', NULL, '2024-03-21 10:13:44', '2024-03-21 11:19:43'),
(50, 'App\\Models\\User', 3, 'qbidapp_api', 'dd6e41b33eee504872f5616ba1c7ecb87dc8463b709036e5940d238473c37059', '[\"*\"]', '2024-03-22 07:37:41', NULL, '2024-03-21 11:21:22', '2024-03-22 07:37:41'),
(51, 'App\\Models\\User', 37, 'qbidapp_api', 'fc99571dde883ee0d8443abdc2dd217a09a72b42c83851c0eeb6c5d5819420d9', '[\"*\"]', '2024-03-22 07:50:55', NULL, '2024-03-22 07:38:07', '2024-03-22 07:50:55'),
(52, 'App\\Models\\User', 3, 'qbidapp_api', 'e93f10c37afd3871dd8438b527ae8e27e5e2abc523f6a2c66c8cf655aaf0f8b7', '[\"*\"]', '2024-03-22 10:34:44', NULL, '2024-03-22 07:51:26', '2024-03-22 10:34:44'),
(53, 'App\\Models\\User', 37, 'qbidapp_api', '20f6533c3732397d5d7681b0154ec743c2210091f4e14362657ab085080fd38c', '[\"*\"]', '2024-03-22 10:36:06', NULL, '2024-03-22 10:35:13', '2024-03-22 10:36:06'),
(54, 'App\\Models\\User', 3, 'qbidapp_api', 'a0a72652f7895ea727fdc7476f12d3b7817e864dc7a3e0fe80b7764e4f302189', '[\"*\"]', '2024-06-20 10:53:20', NULL, '2024-03-22 10:36:28', '2024-06-20 10:53:20'),
(55, 'App\\Models\\User', 37, 'qbidapp_api', 'b11ed059aa0f9df81a5ebd11a16d23cea8f3e5674c14fcf2a7fccc42514f0aa3', '[\"*\"]', '2024-03-22 11:45:24', NULL, '2024-03-22 11:03:39', '2024-03-22 11:45:24'),
(56, 'App\\Models\\User', 3, 'qbidapp_api', 'c9424263c5540e143a152b53a09201d0c783865cf23f060d2ce7445a8b1ed502', '[\"*\"]', '2024-03-22 11:47:40', NULL, '2024-03-22 11:45:45', '2024-03-22 11:47:40'),
(57, 'App\\Models\\User', 37, 'qbidapp_api', '7f92b4a07e97309a225bb240b18230cbab594047726b37ebd83c743df3d2624e', '[\"*\"]', '2024-03-22 11:48:44', NULL, '2024-03-22 11:48:06', '2024-03-22 11:48:44'),
(58, 'App\\Models\\User', 3, 'qbidapp_api', '8440fc2c5a54f49dfa4bed7b1cdba292d73fa988fba8658962d2305957cbab48', '[\"*\"]', '2024-03-22 11:56:46', NULL, '2024-03-22 11:49:06', '2024-03-22 11:56:46'),
(59, 'App\\Models\\User', 37, 'qbidapp_api', 'a85c1332a4238cc648fbd25bcf566e69bafb9485d82de6873fb64ab0fed2c995', '[\"*\"]', '2024-03-22 11:57:39', NULL, '2024-03-22 11:57:12', '2024-03-22 11:57:39'),
(60, 'App\\Models\\User', 3, 'qbidapp_api', '89964877e4101215de9a1804f98dbf3926c40d62871451f7e01fd35044199c6c', '[\"*\"]', '2024-03-22 12:00:06', NULL, '2024-03-22 11:58:15', '2024-03-22 12:00:06'),
(61, 'App\\Models\\User', 37, 'qbidapp_api', 'fba571be2a3f6b54ee34718c61e159a977af9be5db106ab841e05e06ca057e19', '[\"*\"]', '2024-03-22 12:19:45', NULL, '2024-03-22 12:00:36', '2024-03-22 12:19:45'),
(62, 'App\\Models\\User', 3, 'qbidapp_api', '8f359cbc15be4d5b787865cc75fb3c1eb53301ff7158add994eb3e5c0e245bd0', '[\"*\"]', '2024-04-01 04:35:10', NULL, '2024-03-22 12:20:14', '2024-04-01 04:35:10'),
(63, 'App\\Models\\User', 3, 'qbidapp_api', '4c8233fbfd8be110e141cb15caaaf195d35dd4a9488059294b64c845939d5324', '[\"*\"]', '2024-03-22 17:01:09', NULL, '2024-03-22 17:00:07', '2024-03-22 17:01:09'),
(64, 'App\\Models\\User', 37, 'qbidapp_api', '1f16ae428fc8609ee89886f22e4eca352354cce79ab0bc1b5bf216a238ed7cc0', '[\"*\"]', '2024-03-22 17:02:13', NULL, '2024-03-22 17:01:33', '2024-03-22 17:02:13'),
(65, 'App\\Models\\User', 3, 'qbidapp_api', '7ea1665ae677b6b248c5c4f61b1b554427bacf1ad600a7469f7f00d859548675', '[\"*\"]', '2024-03-22 17:05:49', NULL, '2024-03-22 17:02:40', '2024-03-22 17:05:49'),
(66, 'App\\Models\\User', 37, 'qbidapp_api', '8d97ab1be0d072329e258d15f9c67af0e1ba3c04ceaa5bfcde114469debe186f', '[\"*\"]', '2024-03-22 17:07:10', NULL, '2024-03-22 17:06:14', '2024-03-22 17:07:10'),
(67, 'App\\Models\\User', 3, 'qbidapp_api', '23a41fbbb0d1d1f86bd7c54078391d554df064b7defeedd79b2ca0b35303a524', '[\"*\"]', '2024-04-11 11:12:30', NULL, '2024-03-22 17:07:35', '2024-04-11 11:12:30'),
(68, 'App\\Models\\User', 2, 'qbidapp_api', '013cf3385be96d506c85436359ad3db3bc2d12817330681372514b9f53962b48', '[\"*\"]', '2024-03-28 05:17:24', NULL, '2024-03-28 05:13:06', '2024-03-28 05:17:24'),
(69, 'App\\Models\\User', 27, 'qbidapp_api', '01efc0d0b6b57136a9801cd0140add1a5de37333042ec69989ed73a6ee2137fd', '[\"*\"]', NULL, NULL, '2024-04-01 04:36:04', '2024-04-01 04:36:04'),
(70, 'App\\Models\\User', 38, 'qbidapp_api', '9dd96cc65990d0c224ed07587625343cc4c7c3f23f074a012aa4ebf1c30351fa', '[\"*\"]', '2024-04-01 06:15:44', NULL, '2024-04-01 04:37:08', '2024-04-01 06:15:44'),
(71, 'App\\Models\\User', 2, 'qbidapp_api', 'c7bfff7b533ad7d1c727eafad5cf0efe2edc93bcf1ce3f2ddbccec5f9519b739', '[\"*\"]', '2024-04-01 06:16:39', NULL, '2024-04-01 06:16:15', '2024-04-01 06:16:39'),
(72, 'App\\Models\\User', 38, 'qbidapp_api', 'b627a44c91c1018721729d7ac0f60aa45a535486db71a121d2f124a53b5c3d6f', '[\"*\"]', '2024-04-01 06:24:22', NULL, '2024-04-01 06:17:06', '2024-04-01 06:24:22'),
(73, 'App\\Models\\User', 40, 'qbidapi', 'ba4ba804af967d5797ac309f5c2346b6227fb700ec76517d748b7f2827eb81fb', '[\"*\"]', '2024-05-10 17:45:16', NULL, '2024-05-10 17:42:26', '2024-05-10 17:45:16'),
(74, 'App\\Models\\User', 41, 'qbidapi', '2600bb7ffa53850db620a73483a85349fa86159b2f93fced90afdbb09458bb7b', '[\"*\"]', '2024-05-10 17:56:52', NULL, '2024-05-10 17:48:39', '2024-05-10 17:56:52'),
(75, 'App\\Models\\User', 40, 'qbidapp_api', 'b3b8e64ced578ea7ab53f33f7ef8c77affedde823af6acbb6070f1360ad4c300', '[\"*\"]', '2024-05-10 17:57:50', NULL, '2024-05-10 17:57:21', '2024-05-10 17:57:50'),
(76, 'App\\Models\\User', 41, 'qbidapp_api', 'bb727ca41a54dee19f854360f66beaa38ada857efa99600cb6c6402212761275', '[\"*\"]', NULL, NULL, '2024-05-10 17:58:09', '2024-05-10 17:58:09'),
(77, 'App\\Models\\User', 41, 'qbidapp_api', 'ad88e28af45f7ccf4eedba162c80cafae28f5529e5f38ae62bc069bc8393163d', '[\"*\"]', '2024-05-10 17:59:35', NULL, '2024-05-10 17:58:30', '2024-05-10 17:59:35'),
(78, 'App\\Models\\User', 40, 'qbidapp_api', 'ff001da7fe1eb52a24c10d1cf6ccc23c2267b75c582c48a745720ea56fc2d32a', '[\"*\"]', '2024-05-10 18:00:07', NULL, '2024-05-10 17:59:52', '2024-05-10 18:00:07'),
(79, 'App\\Models\\User', 41, 'qbidapp_api', '7049bf2c4398cf0f5dcc1965d0b614f4c4cd0f11eea8bb88b0aec24670c8bfea', '[\"*\"]', '2024-05-10 18:08:52', NULL, '2024-05-10 18:00:22', '2024-05-10 18:08:52'),
(80, 'App\\Models\\User', 40, 'qbidapp_api', '7484a03780ca52bfd746611bcfe28a07f11377f3760eb782e47af8602994d58f', '[\"*\"]', '2024-05-13 15:19:02', NULL, '2024-05-13 15:17:55', '2024-05-13 15:19:02'),
(81, 'App\\Models\\User', 31, 'qbidapp_api', '35253222a2051d1036be804a4adf69728642982852d852fb3e913efe62d8b51e', '[\"*\"]', '2024-05-13 15:20:33', NULL, '2024-05-13 15:19:21', '2024-05-13 15:20:33'),
(82, 'App\\Models\\User', 40, 'qbidapp_api', 'bc0099105363e9b5bf67733760db87616d20abc94fc0a22ef6289d8516c81608', '[\"*\"]', '2024-05-13 15:21:48', NULL, '2024-05-13 15:20:54', '2024-05-13 15:21:48'),
(83, 'App\\Models\\User', 31, 'qbidapp_api', '2b00f74b1f0a5723cad58f91f60bb70185cfb72844fc24f78e8a5ee85f4fddd2', '[\"*\"]', '2024-05-13 15:22:31', NULL, '2024-05-13 15:22:05', '2024-05-13 15:22:31'),
(84, 'App\\Models\\User', 40, 'qbidapp_api', '685785888f425b5af72a7992a4ad2b1df3404126c3608d43ca2250c60d05b334', '[\"*\"]', '2024-05-13 15:24:31', NULL, '2024-05-13 15:23:38', '2024-05-13 15:24:31'),
(85, 'App\\Models\\User', 31, 'qbidapp_api', 'fb0876d3424ff9642257f81d33d2f77735b869512131e32e81514b3cbcc1150a', '[\"*\"]', '2024-05-13 15:25:49', NULL, '2024-05-13 15:24:46', '2024-05-13 15:25:49'),
(86, 'App\\Models\\User', 40, 'qbidapp_api', '1b5062d414d027e8878095e99df98becacafa3bd6f2258a9f8e6d94137b93094', '[\"*\"]', '2024-05-13 15:31:33', NULL, '2024-05-13 15:27:34', '2024-05-13 15:31:33'),
(87, 'App\\Models\\User', 31, 'qbidapp_api', '4c7c17492fd6af5f07e7c2f9706bb2aa11e7c3776f2cf867f3ef930cea28c522', '[\"*\"]', '2024-05-13 15:32:54', NULL, '2024-05-13 15:31:47', '2024-05-13 15:32:54'),
(88, 'App\\Models\\User', 40, 'qbidapp_api', '21699e5f99ac1c9ebc93800cd95052ec4a8b3ef3f35df29bf0df2b45ec427409', '[\"*\"]', '2024-05-13 15:33:20', NULL, '2024-05-13 15:33:09', '2024-05-13 15:33:20'),
(89, 'App\\Models\\User', 31, 'qbidapp_api', 'd4467acc6f9026999df17d65e05766e8243c7b80ce6193027636e014408780fa', '[\"*\"]', '2024-05-13 15:34:11', NULL, '2024-05-13 15:33:34', '2024-05-13 15:34:11'),
(90, 'App\\Models\\User', 2, 'qbidapp_api', '2c92b85eac61673b2050dd1b6fd7c991c11159258ab15b284d15b206f8aaec0a', '[\"*\"]', '2024-05-13 16:33:30', NULL, '2024-05-13 16:21:23', '2024-05-13 16:33:30'),
(91, 'App\\Models\\User', 27, 'qbidapp_api', '70a5b9826d58f99af1fe7f672e0a4ee1372ad081765548f39205686116e6b2ed', '[\"*\"]', NULL, NULL, '2024-05-13 16:41:24', '2024-05-13 16:41:24'),
(92, 'App\\Models\\User', 27, 'qbidapp_api', '91ca377593436c9dddd10b3f10c76f667336229c993be83bff499881386337cc', '[\"*\"]', NULL, NULL, '2024-05-13 16:41:51', '2024-05-13 16:41:51'),
(93, 'App\\Models\\User', 27, 'qbidapp_api', '1e9e777f3d91174f5b0fcb6b9d174a83aec462fc46bb033c2034161cc8791848', '[\"*\"]', NULL, NULL, '2024-05-13 16:43:03', '2024-05-13 16:43:03'),
(94, 'App\\Models\\User', 27, 'qbidapp_api', '7aa9edad5566e1db28e080ea7711ec71ac42af81ae6eba21cd56e37be2a0ea0d', '[\"*\"]', '2024-05-13 16:45:59', NULL, '2024-05-13 16:45:57', '2024-05-13 16:45:59'),
(95, 'App\\Models\\User', 27, 'qbidapp_api', '4329300ead82827b25998ea83227712fec31b4bca9f73da5835c83a47c23b94f', '[\"*\"]', '2024-05-13 16:46:16', NULL, '2024-05-13 16:45:57', '2024-05-13 16:46:16'),
(96, 'App\\Models\\User', 42, 'qbidapi', '748e0627dc6739ad7be10b5cf9bd5f1d397dbb32e339c49f2b123ae611a4b5ee', '[\"*\"]', '2024-05-13 17:02:54', NULL, '2024-05-13 16:51:16', '2024-05-13 17:02:54'),
(97, 'App\\Models\\User', 27, 'qbidapp_api', 'b218ee088a4a8cb9351d43f6f1c6065e100a5dad4e4f11fff1a36d9072bd8bcd', '[\"*\"]', '2024-05-13 17:14:31', NULL, '2024-05-13 17:04:08', '2024-05-13 17:14:31'),
(98, 'App\\Models\\User', 42, 'qbidapp_api', 'ea9ab8431a59138490c1feda1d22108dc10641c192276e5e7c8f7ea815cb4db7', '[\"*\"]', '2024-05-13 17:20:49', NULL, '2024-05-13 17:15:03', '2024-05-13 17:20:49'),
(99, 'App\\Models\\User', 27, 'qbidapp_api', '598ae0f830ccd47012514087992d19e6c37ee8201393b9382778b3b11127cfde', '[\"*\"]', '2024-05-13 17:21:28', NULL, '2024-05-13 17:21:25', '2024-05-13 17:21:28'),
(100, 'App\\Models\\User', 27, 'qbidapp_api', 'd40174186730e7156cffe66419cd993acfdee7669a157e300239bdf5e7402d47', '[\"*\"]', '2024-05-13 17:24:21', NULL, '2024-05-13 17:21:25', '2024-05-13 17:24:21'),
(101, 'App\\Models\\User', 42, 'qbidapp_api', 'f9cca7d2c05268984b795f09814ba443314ff431e2b2817a57f95c61e82774f6', '[\"*\"]', '2024-05-13 17:29:15', NULL, '2024-05-13 17:24:55', '2024-05-13 17:29:15'),
(102, 'App\\Models\\User', 27, 'qbidapp_api', 'df793e37f7275b3d8acf798fad9efdd9be2f97436c86b286b8fb321dce3a497c', '[\"*\"]', '2024-05-13 17:42:48', NULL, '2024-05-13 17:30:02', '2024-05-13 17:42:48'),
(103, 'App\\Models\\User', 42, 'qbidapp_api', 'e4c2662d96c2d6b0c50bdd73a4981a933578f9e7f15e676bd74d4028aba171dc', '[\"*\"]', '2024-05-13 17:48:07', NULL, '2024-05-13 17:43:22', '2024-05-13 17:48:07'),
(104, 'App\\Models\\User', 27, 'qbidapp_api', '741d853155e6a6763ebb8b2fdc01e90d89cddb86d7ecd5efa036bd3ae4a5a7be', '[\"*\"]', '2024-05-13 17:50:43', NULL, '2024-05-13 17:48:41', '2024-05-13 17:50:43'),
(105, 'App\\Models\\User', 42, 'qbidapp_api', 'df8a06cd1a1bf23337d3fd6af67f424e7b00a24d27d0b92b4e39c6aee5d655cd', '[\"*\"]', '2024-05-13 17:57:05', NULL, '2024-05-13 17:51:52', '2024-05-13 17:57:05'),
(106, 'App\\Models\\User', 27, 'qbidapp_api', 'b81932456951eac984c836852235a58bbf436d32141064a20f7cfd87e2a441e9', '[\"*\"]', '2024-05-13 17:59:35', NULL, '2024-05-13 17:57:40', '2024-05-13 17:59:35'),
(107, 'App\\Models\\User', 42, 'qbidapp_api', 'ff9cb90e16d61f1dc7db10e0a309f1d2daedcd318cf5586bd547428cab51bd27', '[\"*\"]', '2024-05-14 13:41:48', NULL, '2024-05-14 13:39:15', '2024-05-14 13:41:48'),
(108, 'App\\Models\\User', 2, 'qbidapp_api', '4037cec63647e6a77c8f32175636d194992226c6b062d5ed71f4e80099be4478', '[\"*\"]', '2024-05-14 13:46:35', NULL, '2024-05-14 13:46:31', '2024-05-14 13:46:35'),
(109, 'App\\Models\\User', 2, 'qbidapp_api', 'e5993fb3fbcd6d17a785493104728fdf9b3e6ba8c163922154e801e5b535756b', '[\"*\"]', '2024-05-14 13:50:29', NULL, '2024-05-14 13:46:31', '2024-05-14 13:50:29'),
(110, 'App\\Models\\User', 1, 'qbidapp_api', 'd75b1326e7b2a9ff5e34599324737117c29fdd9f03a0cd99c8d61675d299aee4', '[\"*\"]', NULL, NULL, '2024-05-14 13:51:28', '2024-05-14 13:51:28'),
(111, 'App\\Models\\User', 1, 'qbidapp_api', 'a5706b7bc9ae6e45c84c162f52a16e9b3e9b19fea4bb39233df587bb47682a8a', '[\"*\"]', NULL, NULL, '2024-05-14 13:51:34', '2024-05-14 13:51:34'),
(112, 'App\\Models\\User', 1, 'qbidapp_api', '2992aaa39801603ba0caf3e5f1e7489a10da6bca3f7138602fbe4496932e9128', '[\"*\"]', NULL, NULL, '2024-05-14 13:51:43', '2024-05-14 13:51:43'),
(113, 'App\\Models\\User', 1, 'qbidapp_api', '00e64b6047bb943bb0422e726fcff2b2615962b40408f622f65c4ac27a805348', '[\"*\"]', NULL, NULL, '2024-05-14 13:52:24', '2024-05-14 13:52:24'),
(114, 'App\\Models\\User', 1, 'qbidapp_api', '5867bfc44ce5700bff8850fdca9a86b8cce500851c597f3baab760a735da7a48', '[\"*\"]', NULL, NULL, '2024-05-14 13:53:40', '2024-05-14 13:53:40'),
(115, 'App\\Models\\User', 1, 'qbidapp_api', 'c8171f3b69dc0762a4d9b8ca8b5698c4d36ab667b754668d37415157d775ea61', '[\"*\"]', NULL, NULL, '2024-05-14 13:53:47', '2024-05-14 13:53:47'),
(116, 'App\\Models\\User', 38, 'qbidapp_api', '43696fa260a5b1753196193102e21ba3a9672c643b441ba0166ce087c66dcbe0', '[\"*\"]', '2024-05-14 13:59:24', NULL, '2024-05-14 13:55:07', '2024-05-14 13:59:24'),
(117, 'App\\Models\\User', 40, 'qbidapp_api', '1b138b6249e6dd8e299125500d57871447daca8ac67290dc2b2581d4fac9611b', '[\"*\"]', '2024-05-14 18:54:13', NULL, '2024-05-14 18:53:40', '2024-05-14 18:54:13'),
(118, 'App\\Models\\User', 31, 'qbidapp_api', '5ea3e90a26220c256c8fff9c26eb9caf9ca1539a2b9231b3449ad6bf36bc0925', '[\"*\"]', '2024-05-14 18:54:39', NULL, '2024-05-14 18:54:29', '2024-05-14 18:54:39'),
(119, 'App\\Models\\User', 40, 'qbidapp_api', 'ccff679de1259fd8287c14d78316511e596c876247e3ad108fd81279affff855', '[\"*\"]', '2024-05-14 19:45:11', NULL, '2024-05-14 18:55:09', '2024-05-14 19:45:11'),
(120, 'App\\Models\\User', 31, 'qbidapp_api', '35130e9110691b8850fbfe333304f7703caeac0d4cfa876563b4345f747787a1', '[\"*\"]', '2024-05-14 19:47:43', NULL, '2024-05-14 19:45:24', '2024-05-14 19:47:43'),
(121, 'App\\Models\\User', 40, 'qbidapp_api', '63b3a5bfa95fdbdc79566f5412e378ad29d726d135be698ff5986d6a80a4dad8', '[\"*\"]', '2024-05-14 19:48:16', NULL, '2024-05-14 19:48:04', '2024-05-14 19:48:16'),
(122, 'App\\Models\\User', 31, 'qbidapp_api', 'ce57cdb23868a441b29b8057a1beacc6f03d3018b5f47ec22dc9f7f924d8e09f', '[\"*\"]', '2024-05-14 19:48:58', NULL, '2024-05-14 19:48:28', '2024-05-14 19:48:58'),
(123, 'App\\Models\\User', 40, 'qbidapp_api', 'f0b1f0bf151f314609896daeb025cd08f8c507d65758321a8e299514a3040d3e', '[\"*\"]', '2024-05-16 15:46:50', NULL, '2024-05-14 19:49:14', '2024-05-16 15:46:50'),
(124, 'App\\Models\\User', 2, 'qbidapp_api', 'de555014cb13edf71a238c49e2e9520cd768e046427be3aefa39d9438337cf97', '[\"*\"]', '2024-05-16 09:35:10', NULL, '2024-05-15 16:11:53', '2024-05-16 09:35:10'),
(125, 'App\\Models\\User', 2, 'qbidapp_api', 'def04ba442bbe330d0a0f4b2e07cb0ebbfaeb717a97b29c7ef6cce34cffe994c', '[\"*\"]', '2024-05-15 16:34:16', NULL, '2024-05-15 16:21:19', '2024-05-15 16:34:16'),
(126, 'App\\Models\\User', 42, 'qbidapp_api', '9cf9149bf8e03ea03e80931d5dfe1853201bced8e9067bfe9f7eb9e676cc2a3c', '[\"*\"]', '2024-05-16 09:41:35', NULL, '2024-05-16 09:36:17', '2024-05-16 09:41:35'),
(127, 'App\\Models\\User', 2, 'qbidapp_api', '93a73e78a5b280f54a43cfef8f0a97a0822a1ab4e7c16b518909eb0b6ad44abd', '[\"*\"]', '2024-05-16 09:47:39', NULL, '2024-05-16 09:42:26', '2024-05-16 09:47:39'),
(128, 'App\\Models\\User', 2, 'qbidapp_api', '75dd84523124a06a19bf09407d424cdd694e4778dcbbe5daa770eb2764f6ee8e', '[\"*\"]', '2024-05-16 09:53:46', NULL, '2024-05-16 09:53:42', '2024-05-16 09:53:46'),
(129, 'App\\Models\\User', 2, 'qbidapp_api', 'e75d512ffec2ff7b10f275e6e226928044baa8bdd725bcd22e0ca7b385e7168e', '[\"*\"]', '2024-05-16 10:21:42', NULL, '2024-05-16 09:53:42', '2024-05-16 10:21:42'),
(130, 'App\\Models\\User', 2, 'qbidapp_api', '2fc408337516ffe439ef1a78fafe41268dafd2cd940e9878fe1b97df1cb1ecbd', '[\"*\"]', '2024-05-16 10:31:13', NULL, '2024-05-16 10:31:09', '2024-05-16 10:31:13'),
(131, 'App\\Models\\User', 2, 'qbidapp_api', '2d2d461d889d1a010c066e07c4410a34f56520811b8661a241d6c062fa5a4b5a', '[\"*\"]', '2024-05-16 12:05:27', NULL, '2024-05-16 10:31:10', '2024-05-16 12:05:27'),
(132, 'App\\Models\\User', 2, 'qbidapp_api', '85aa7bb411a9acdd531137d6d1f491ff25e0a262824b845594f9e5b9d52b256b', '[\"*\"]', '2024-05-16 12:19:46', NULL, '2024-05-16 12:14:26', '2024-05-16 12:19:46'),
(133, 'App\\Models\\User', 2, 'qbidapp_api', 'cef100f62ed4a64bea99bf2832e5ce49ad2fde8447be454866183a4669034103', '[\"*\"]', '2024-05-16 12:45:57', NULL, '2024-05-16 12:34:56', '2024-05-16 12:45:57'),
(134, 'App\\Models\\User', 43, 'qbidapi', '7738451bd9bdbfd958dab612414a522af3e04dbaf0560865cb3c3cde71de85ed', '[\"*\"]', '2024-05-16 16:04:28', NULL, '2024-05-16 14:44:43', '2024-05-16 16:04:28'),
(135, 'App\\Models\\User', 7, 'qbidapp_api', 'e059c2d098f19f6dbe0901ca3dbc48bb5a3f243bfa46622b73d88187242c18dc', '[\"*\"]', '2024-05-16 14:52:49', NULL, '2024-05-16 14:52:46', '2024-05-16 14:52:49'),
(136, 'App\\Models\\User', 7, 'qbidapp_api', 'e596d0b66bed1b0f5c98e2b79e0649552f2dbfa25f7e7dc32f4914253f56c8e0', '[\"*\"]', '2024-05-16 15:29:48', NULL, '2024-05-16 14:52:46', '2024-05-16 15:29:48'),
(137, 'App\\Models\\User', 43, 'qbidapp_api', 'caf52e116355967429192731f507f4b3ef3d2e27a368fc38b105b7c8470a9716', '[\"*\"]', '2024-05-16 18:01:47', NULL, '2024-05-16 15:33:27', '2024-05-16 18:01:47'),
(138, 'App\\Models\\User', 40, 'qbidapp_api', 'fb75a87963a0eb9923e8c82d39896dddedc048140f22b72db46676c65e673d5e', '[\"*\"]', '2024-05-16 15:48:27', NULL, '2024-05-16 15:47:12', '2024-05-16 15:48:27'),
(139, 'App\\Models\\User', 31, 'qbidapp_api', 'db176bd0a2888624eec473c914b7dffc5fba985382eb3d8d58e9a61150031e41', '[\"*\"]', '2024-05-16 15:51:33', NULL, '2024-05-16 15:48:39', '2024-05-16 15:51:33'),
(140, 'App\\Models\\User', 40, 'qbidapp_api', '2d7ab7504dff8b7ce2143a0de86adb6ec21f4c7871db491ede02d968db37f0c9', '[\"*\"]', '2024-05-16 15:52:03', NULL, '2024-05-16 15:51:49', '2024-05-16 15:52:03'),
(141, 'App\\Models\\User', 31, 'qbidapp_api', '8fd60e3c2705cfe656f50849257e3bf9b90807c3eaf8ee2fa0f2592944e8048d', '[\"*\"]', '2024-05-16 15:52:28', NULL, '2024-05-16 15:52:15', '2024-05-16 15:52:28'),
(142, 'App\\Models\\User', 40, 'qbidapp_api', '159e2863318cf0a33ed8d35a0eabcb90eace4bd16d1b2b44d58d8cdc49ce2327', '[\"*\"]', '2024-05-16 15:53:08', NULL, '2024-05-16 15:52:43', '2024-05-16 15:53:08'),
(143, 'App\\Models\\User', 31, 'qbidapp_api', '2fbdf18fdb637e839ed9723b071b4c60bb89efbe19842abfd9506f8c4b8cae90', '[\"*\"]', '2024-05-17 17:39:09', NULL, '2024-05-16 15:53:39', '2024-05-17 17:39:09'),
(144, 'App\\Models\\User', 32, 'qbidapp_api', '34794b29d5f78534160daf8952f182f3c9f1c4e97eb1fc1d7fbe0baaaf67e103', '[\"*\"]', NULL, NULL, '2024-05-16 16:44:35', '2024-05-16 16:44:35'),
(145, 'App\\Models\\User', 32, 'qbidapp_api', 'a74ea9eb61aae6bbfbe7b0031882a550675307aa68e3301e160910e341364c12', '[\"*\"]', NULL, NULL, '2024-05-16 16:50:03', '2024-05-16 16:50:03'),
(146, 'App\\Models\\User', 32, 'qbidapp_api', '68187d700f3687daa2f33004f70a1db8eac490a73584f8fadbae3a8d38ce2380', '[\"*\"]', NULL, NULL, '2024-05-16 16:50:10', '2024-05-16 16:50:10'),
(147, 'App\\Models\\User', 32, 'qbidapp_api', '3df0738ec8cfad0affb274e87a0eceaf025b3f41a67ccf5b9d686be54204e075', '[\"*\"]', NULL, NULL, '2024-05-16 16:50:23', '2024-05-16 16:50:23'),
(148, 'App\\Models\\User', 32, 'qbidapp_api', '4ca91e7f66a3b5f69e2f55f4d5de9fe17b8ad7fcba0492b77ecd6f27090222e3', '[\"*\"]', '2024-05-16 16:53:52', NULL, '2024-05-16 16:50:55', '2024-05-16 16:53:52'),
(149, 'App\\Models\\User', 32, 'qbidapp_api', '43afef2fa7c49ed097a14b03323f6b1669aa57988d18a75caaf9a16b0372f3ff', '[\"*\"]', NULL, NULL, '2024-05-16 16:54:50', '2024-05-16 16:54:50'),
(150, 'App\\Models\\User', 32, 'qbidapp_api', 'cd45db6566c30594ebb4e4c4e08016aacf2315738769667e7020ed1f0bf95504', '[\"*\"]', NULL, NULL, '2024-05-16 16:56:10', '2024-05-16 16:56:10'),
(151, 'App\\Models\\User', 32, 'qbidapp_api', 'd8656480a2db37585fed6c5d8b849d3f88a00d59fb05155ec7f48ccf4c4c50e7', '[\"*\"]', '2024-05-23 15:28:08', NULL, '2024-05-16 16:56:55', '2024-05-23 15:28:08'),
(152, 'App\\Models\\User', 2, 'qbidapp_api', 'fd9477b908ddd5c8ad8ff91d382c0045e8258bc875dced10e884bed2338085a2', '[\"*\"]', '2024-05-16 17:51:24', NULL, '2024-05-16 17:50:54', '2024-05-16 17:51:24'),
(153, 'App\\Models\\User', 43, 'qbidapp_api', 'f43c89194572d1911aed87de422436cf678c47c9e8206ed1a962b8b8c4199389', '[\"*\"]', '2024-05-16 17:52:27', NULL, '2024-05-16 17:52:22', '2024-05-16 17:52:27'),
(154, 'App\\Models\\User', 43, 'qbidapp_api', 'b16cee4129c2bd78cc19f499e791020d78ac55902e4b5ef2f71e47d039a35f21', '[\"*\"]', '2024-05-17 15:59:03', NULL, '2024-05-16 17:52:23', '2024-05-17 15:59:03'),
(155, 'App\\Models\\User', 27, 'qbidapp_api', '31def553e01cd6fcd1e9d55b9589b68e19a8c1f2b731aec298afd3f7676dfcff', '[\"*\"]', '2024-05-17 16:06:16', NULL, '2024-05-17 16:06:11', '2024-05-17 16:06:16'),
(156, 'App\\Models\\User', 27, 'qbidapp_api', '874ffdfbc9bfd280847cb17dcd0422185e0114f61f97e327f4c0b8cb538de2c0', '[\"*\"]', '2024-05-23 09:06:47', NULL, '2024-05-17 16:06:11', '2024-05-23 09:06:47'),
(157, 'App\\Models\\User', 40, 'qbidapp_api', 'd1ddac2ec5fa6b87be9518c3de2baba4425d2dc2dcf43d9bd7afa2b8038bf64e', '[\"*\"]', '2024-05-17 17:41:27', NULL, '2024-05-17 17:39:25', '2024-05-17 17:41:27'),
(158, 'App\\Models\\User', 31, 'qbidapp_api', 'd9ebf894d356a5919123d5cc047ef7748a48a94d92dc1a585d1cda76fe0c7227', '[\"*\"]', '2024-05-17 17:43:35', NULL, '2024-05-17 17:41:42', '2024-05-17 17:43:35'),
(159, 'App\\Models\\User', 40, 'qbidapp_api', 'c05adaa8a4b37dad514f3a0eca2d4690c5c89bce01252db5899f7d45a345b19e', '[\"*\"]', '2024-05-17 17:44:45', NULL, '2024-05-17 17:43:48', '2024-05-17 17:44:45'),
(160, 'App\\Models\\User', 31, 'qbidapp_api', 'df113d62d1b003c7492c3cd777035b5561ba30c4f643f02d0151e220c79643d9', '[\"*\"]', '2024-05-17 17:47:26', NULL, '2024-05-17 17:45:06', '2024-05-17 17:47:26'),
(161, 'App\\Models\\User', 40, 'qbidapp_api', '3b253f3138536ced9b287a85f30321cbb5ce32e8f0bb3e537b6102b431511423', '[\"*\"]', '2024-05-17 17:50:43', NULL, '2024-05-17 17:47:42', '2024-05-17 17:50:43'),
(162, 'App\\Models\\User', 31, 'qbidapp_api', 'c0675146a0b917f424d040cbe7addd223495864dfea5206e7449b2cf131775ad', '[\"*\"]', '2024-05-17 18:05:00', NULL, '2024-05-17 17:50:59', '2024-05-17 18:05:00'),
(163, 'App\\Models\\User', 40, 'qbidapp_api', '791858f481cfdcf5005c66e610d096e5bae50db8125cfac395916f4c95609c2c', '[\"*\"]', '2024-05-17 18:09:14', NULL, '2024-05-17 18:05:19', '2024-05-17 18:09:14'),
(164, 'App\\Models\\User', 38, 'qbidapp_api', 'b6626b55a2eedafeb9e2b2370818b91e66ee5d9bf1080b884e532fb20d012db2', '[\"*\"]', '2024-05-23 09:13:46', NULL, '2024-05-23 09:07:20', '2024-05-23 09:13:46'),
(165, 'App\\Models\\User', 44, 'qbidapi', '88b691c7bc3f75af58dfcfb323ad9780e7d9398129c5bec7c409ab02156a5bb0', '[\"*\"]', NULL, NULL, '2024-05-29 13:40:08', '2024-05-29 13:40:08'),
(166, 'App\\Models\\User', 45, 'qbidapi', 'b054c7d2fc3c789833151caab60c5eec19dc788e39ee5ebdbfcae5041993bd77', '[\"*\"]', NULL, NULL, '2024-05-29 13:49:54', '2024-05-29 13:49:54'),
(167, 'App\\Models\\User', 46, 'qbidapi', 'a1ce5988ca49ee8cd88bceb44448ac6383391c18d60345b21e99325ba8d28aa5', '[\"*\"]', NULL, NULL, '2024-05-29 13:51:38', '2024-05-29 13:51:38'),
(168, 'App\\Models\\User', 47, 'qbidapi', '5f035d6524a94c7859d2c103a4473951f2f2a9bd00fc593ffac53636699637c8', '[\"*\"]', NULL, NULL, '2024-05-29 13:52:47', '2024-05-29 13:52:47'),
(169, 'App\\Models\\User', 40, 'qbidapp_api', 'c9c79b35dd0eb0e4ab0874ea1ecad0a7930922ee4d551c82070e2cd51e80c870', '[\"*\"]', '2024-05-29 16:23:29', NULL, '2024-05-29 16:22:48', '2024-05-29 16:23:29'),
(170, 'App\\Models\\User', 48, 'qbidapi', 'efdefaf9fbd34290ded7b69ef84c729a37489db6097e12fb6ce96f54b32fd798', '[\"*\"]', '2024-05-29 16:30:28', NULL, '2024-05-29 16:26:32', '2024-05-29 16:30:28'),
(171, 'App\\Models\\User', 40, 'qbidapp_api', 'c608b6e4cb8923b1f0ffbf75f18368ef9891e6fd7c317ca078794260a0d60d8c', '[\"*\"]', '2024-05-29 16:32:23', NULL, '2024-05-29 16:31:02', '2024-05-29 16:32:23'),
(172, 'App\\Models\\User', 48, 'qbidapp_api', 'b525c64659469d5b2bf872d0c8fb613bc848b975bc8e0daac636c26709b315c6', '[\"*\"]', '2024-05-29 16:34:43', NULL, '2024-05-29 16:32:39', '2024-05-29 16:34:43'),
(173, 'App\\Models\\User', 40, 'qbidapp_api', 'e5535267130e5473b2cbef01177efc4023ca5f0cbab42b434caa849661039256', '[\"*\"]', '2024-05-29 16:35:14', NULL, '2024-05-29 16:34:56', '2024-05-29 16:35:14'),
(174, 'App\\Models\\User', 48, 'qbidapp_api', 'adaf6ca176aea61db955325a510e33742a83ba906aedf0c8f420624873bbd41d', '[\"*\"]', '2024-05-29 16:38:49', NULL, '2024-05-29 16:35:31', '2024-05-29 16:38:49'),
(175, 'App\\Models\\User', 49, 'qbidapi', '3b09dec5e89841b24ea690a8ac5901e7d726f8b3e52143d27b8db590657a7072', '[\"*\"]', '2024-05-29 17:13:36', NULL, '2024-05-29 16:42:15', '2024-05-29 17:13:36'),
(176, 'App\\Models\\User', 40, 'qbidapp_api', '0c8870e8eecc0b553e30a40712872d9e2fe3281be887d8e2d1cfcc614f4b2bda', '[\"*\"]', '2024-05-31 15:37:41', NULL, '2024-05-29 17:13:52', '2024-05-31 15:37:41'),
(177, 'App\\Models\\User', 2, 'qbidapp_api', 'b1ec6515edb92dad9147e10eefd3bbdf9b674812d4fe7776d12ce34490493f4d', '[\"*\"]', '2024-05-31 07:49:26', NULL, '2024-05-31 07:46:51', '2024-05-31 07:49:26'),
(178, 'App\\Models\\User', 2, 'qbidapp_api', 'ce7cad220ba21a308119e325bf8982f32e5693e1823e6aeaf765888e81dbf53d', '[\"*\"]', '2024-05-31 07:46:54', NULL, '2024-05-31 07:46:51', '2024-05-31 07:46:54'),
(179, 'App\\Models\\User', 38, 'qbidapp_api', '73dcb5314f438d9eb74b1ec0050c520b1d5066d5cf5573eca95393d90a6393a0', '[\"*\"]', '2024-05-31 07:54:37', NULL, '2024-05-31 07:49:54', '2024-05-31 07:54:37'),
(180, 'App\\Models\\User', 50, 'qbidapi', 'd7ac68ec46e9c3715a1fa5aa4706cbee9e2e1437ef399851d6bc071a4280c659', '[\"*\"]', '2024-05-31 13:05:47', NULL, '2024-05-31 13:05:26', '2024-05-31 13:05:47'),
(181, 'App\\Models\\User', 51, 'qbidapi', 'b5b455024a1469707e82d57c07c380c901a741f5a0613cd2b1ed39ae4dab0a50', '[\"*\"]', '2024-05-31 15:43:36', NULL, '2024-05-31 15:41:21', '2024-05-31 15:43:36'),
(182, 'App\\Models\\User', 2, 'qbidapp_api', 'f6a93a7393a87ea7f947aa06e8c337c80e8980cb323b4b38baeecb90ba4166bd', '[\"*\"]', '2024-06-11 08:06:27', NULL, '2024-06-05 11:33:43', '2024-06-11 08:06:27'),
(183, 'App\\Models\\User', 2, 'qbidapp_api', '6f499051a7779d8d409a9ec1ba27670a6183178ddd27a23a0eaea1ecd272dae9', '[\"*\"]', NULL, NULL, '2024-06-05 17:52:50', '2024-06-05 17:52:50'),
(184, 'App\\Models\\User', 2, 'qbidapp_api', 'a6c06b6c3024d0ff12e910cc07d75e43602e871142982899fe7a8cb58a84f83d', '[\"*\"]', '2024-06-20 15:12:53', NULL, '2024-06-11 18:57:04', '2024-06-20 15:12:53'),
(185, 'App\\Models\\User', 2, 'qbidapp_api', '0680ac036153750e7711234a4ed2c78ca3d269e3bc190af841d54f75b6336d21', '[\"*\"]', '2024-06-12 11:37:12', NULL, '2024-06-12 10:48:14', '2024-06-12 11:37:12'),
(186, 'App\\Models\\User', 3, 'qbidapp_api', '5069fdd4bff0cae26fe9f4e27780456f77d944cafce1f4da40f7e97599658270', '[\"*\"]', '2024-06-12 11:00:10', NULL, '2024-06-12 10:49:07', '2024-06-12 11:00:10'),
(187, 'App\\Models\\User', 7, 'qbidapp_api', 'aa9c0eed3182ea1c480d51aae021a24c4e71d21eb98a2d584c913a92ae851b1a', '[\"*\"]', '2024-06-13 14:49:33', NULL, '2024-06-12 11:01:57', '2024-06-13 14:49:33'),
(188, 'App\\Models\\User', 48, 'qbidapp_api', 'b9388db61ade04b512696a9e2dd5d1dca6fc57540dc6cedfe9adaa4c590a6b84', '[\"*\"]', NULL, NULL, '2024-06-13 18:52:50', '2024-06-13 18:52:50'),
(189, 'App\\Models\\User', 52, 'qbidapi', 'e3c52ef27d66e91df6741188c183859e6d6319001ab261e60e6faee318199c0c', '[\"*\"]', '2024-06-13 18:56:54', NULL, '2024-06-13 18:54:31', '2024-06-13 18:56:54'),
(190, 'App\\Models\\User', 49, 'qbidapp_api', 'befbed5c55fcc4712e71064ab4a4a53e388d6b2125443d334a405ebda884209d', '[\"*\"]', NULL, NULL, '2024-06-13 18:57:11', '2024-06-13 18:57:11'),
(191, 'App\\Models\\User', 53, 'qbidapi', '7c898ad7a760624387c9ced256a10ecd69f98a13140510d65846569cbc002456', '[\"*\"]', '2024-06-13 19:02:42', NULL, '2024-06-13 18:58:59', '2024-06-13 19:02:42'),
(192, 'App\\Models\\User', 52, 'qbidapp_api', '8f594197b7d85ab658b7cd27687d239a6ddc400f7e4e5aee1bb52374277b893c', '[\"*\"]', '2024-06-13 19:04:14', NULL, '2024-06-13 19:02:58', '2024-06-13 19:04:14'),
(193, 'App\\Models\\User', 53, 'qbidapp_api', '8057303911062b5696fa242adaaa62de59b3d123361dc7173e3b7dd83952b21d', '[\"*\"]', '2024-06-14 16:31:33', NULL, '2024-06-13 19:04:31', '2024-06-14 16:31:33'),
(194, 'App\\Models\\User', 48, 'qbidapp_api', 'f419fc4d944db4ace670474f7a00203e00bf0d50b7598d0d5aea58cfd13ff3d8', '[\"*\"]', NULL, NULL, '2024-06-14 16:32:00', '2024-06-14 16:32:00'),
(195, 'App\\Models\\User', 52, 'qbidapp_api', '98ecd028791888a718f824096e7b5f39b28bc0b76fb1a95554fded4ef432df60', '[\"*\"]', '2024-06-14 16:32:40', NULL, '2024-06-14 16:32:07', '2024-06-14 16:32:40'),
(196, 'App\\Models\\User', 53, 'qbidapp_api', 'e309959479db86b76f7bdb6b65d609199166d42750991a1d70183e0f3edcc36e', '[\"*\"]', '2024-06-14 16:33:45', NULL, '2024-06-14 16:32:56', '2024-06-14 16:33:45'),
(197, 'App\\Models\\User', 2, 'qbidapp_api', 'ea0c0ea939e17a8f83c072679c58e6aefbc0b5b735a9f139a6b482824f01dd86', '[\"*\"]', '2024-06-14 17:00:42', NULL, '2024-06-14 16:57:02', '2024-06-14 17:00:42'),
(198, 'App\\Models\\User', 52, 'qbidapp_api', '5dcdba439be85e004061832b8a964ed0e8e6e2528d8b761c97c20c24f45bc6ab', '[\"*\"]', '2024-07-18 12:13:57', NULL, '2024-06-14 17:01:32', '2024-07-18 12:13:57'),
(199, 'App\\Models\\User', 53, 'qbidapp_api', '8d7f2106563e4a45ce7ec023604faf859aec3e119e826f8e3d7221c21a46d8f2', '[\"*\"]', '2024-06-20 10:48:42', NULL, '2024-06-14 17:03:29', '2024-06-20 10:48:42'),
(200, 'App\\Models\\User', 53, 'qbidapp_api', '4f0e526c814cffb079a3a3f00ce1977781f1f7ad94724b7ce11aacbfddd6434d', '[\"*\"]', '2024-07-26 12:37:25', NULL, '2024-06-20 10:48:58', '2024-07-26 12:37:25'),
(201, 'App\\Models\\User', 1, 'qbidapp_api', 'c1e1bd06ee2cfbc2af3815189065a85a9d9c81452d86d3e5e1e60996c0ce601e', '[\"*\"]', '2024-09-30 10:58:29', NULL, '2024-06-20 14:55:21', '2024-09-30 10:58:29'),
(202, 'App\\Models\\User', 2, 'qbidapp_api', 'bdb2de401b6f87c852a1828661bec29f9c3469ddcde90bd6131b2cfd933c9bee', '[\"*\"]', '2024-06-20 15:39:04', NULL, '2024-06-20 14:57:03', '2024-06-20 15:39:04'),
(203, 'App\\Models\\User', 53, 'qbidapp_api', '4285fd464fcda8f81daa6a1fbb58295478ece7773190438afd1c1078a583b2e2', '[\"*\"]', '2024-06-21 13:05:53', NULL, '2024-06-21 12:54:26', '2024-06-21 13:05:53'),
(204, 'App\\Models\\User', 48, 'qbidapp_api', '750107ea6f5de88fb3bb693a956f73e1f41c42a8b1bea5762abd4ea4d67e4ea6', '[\"*\"]', NULL, NULL, '2024-06-21 13:06:11', '2024-06-21 13:06:11'),
(205, 'App\\Models\\User', 48, 'qbidapp_api', '23504993426ebfcee9070e5e169e91067cf8321ad68c3f3b1b78a40d8a898143', '[\"*\"]', NULL, NULL, '2024-06-21 13:06:13', '2024-06-21 13:06:13'),
(206, 'App\\Models\\User', 52, 'qbidapp_api', 'c36097316cf11b93b342bc8ed97f61ca0f8db52bd05d7b3c8a25dfcd6d725655', '[\"*\"]', '2024-07-18 11:59:58', NULL, '2024-06-21 13:06:19', '2024-07-18 11:59:58'),
(207, 'App\\Models\\User', 48, 'qbidapp_api', '2551ccacdc29d8bf51061eb57794289c7e6d440b65c3e03b25969a50d3394ca1', '[\"*\"]', NULL, NULL, '2024-06-24 17:25:19', '2024-06-24 17:25:19'),
(208, 'App\\Models\\User', 52, 'qbidapp_api', 'acb480514f1ec562b2238ee1f88342f6bac4d59e10a70984ae42b3b422f0d65f', '[\"*\"]', '2024-06-24 17:26:41', NULL, '2024-06-24 17:25:26', '2024-06-24 17:26:41'),
(209, 'App\\Models\\User', 53, 'qbidapp_api', '54acf76da1d10303f150557cb8bb38264e79521708f85f041cc9b33f762f5415', '[\"*\"]', '2024-06-24 17:27:53', NULL, '2024-06-24 17:27:01', '2024-06-24 17:27:53'),
(210, 'App\\Models\\User', 48, 'qbidapp_api', '47fc4a173c4f30eb62247be3f5b07e8636e06707edb218733aaee7e4ddc930f7', '[\"*\"]', NULL, NULL, '2024-06-24 17:28:11', '2024-06-24 17:28:11'),
(211, 'App\\Models\\User', 52, 'qbidapp_api', '7794632057c1cfd0e0d96e84d1ee82b2569e48b50be961cf0acfcda67047dc9e', '[\"*\"]', '2024-06-24 17:28:46', NULL, '2024-06-24 17:28:18', '2024-06-24 17:28:46'),
(212, 'App\\Models\\User', 53, 'qbidapp_api', '6ce34ccab9f7e067093f09788d37330a26ae9b5291969fbe346f29951fe0d9df', '[\"*\"]', '2024-06-24 17:31:56', NULL, '2024-06-24 17:29:01', '2024-06-24 17:31:56'),
(213, 'App\\Models\\User', 52, 'qbidapp_api', '28c82a2c981c7eba6f50845141bf384310c7ec47e1764bed90f875f6013e40bd', '[\"*\"]', '2024-06-24 17:32:25', NULL, '2024-06-24 17:32:13', '2024-06-24 17:32:25'),
(214, 'App\\Models\\User', 53, 'qbidapp_api', 'ac151adef2a820e9c0eb67cfd132a18536f7204282cbb31559b1556a20114f21', '[\"*\"]', '2024-06-25 15:02:55', NULL, '2024-06-24 17:32:43', '2024-06-25 15:02:55'),
(215, 'App\\Models\\User', 53, 'qbidapp_api', 'c770b24864f1b0c0460bdb4b71f64441eb2e2276cd5b3a34eb8e548de63d0e6c', '[\"*\"]', '2024-06-27 15:11:13', NULL, '2024-06-25 15:03:43', '2024-06-27 15:11:13'),
(216, 'App\\Models\\User', 53, 'qbidapp_api', '54d96d38d03443abec320a477788cb2b75a123e5bdfdcc2b54e709a030cf93a8', '[\"*\"]', '2024-06-26 12:50:38', NULL, '2024-06-26 12:42:42', '2024-06-26 12:50:38'),
(217, 'App\\Models\\User', 52, 'qbidapp_api', '027abbe80ca65d19b2ab7f9cc5611cb44560ab9b682fd88ac58e669da373463b', '[\"*\"]', '2024-06-27 15:06:27', NULL, '2024-06-27 14:31:50', '2024-06-27 15:06:27'),
(218, 'App\\Models\\User', 53, 'qbidapp_api', '4c69e949a4e52b380e24e0ed0d94960ef59874ec47078d2ea763f6f707793c3f', '[\"*\"]', '2024-06-27 15:11:35', NULL, '2024-06-27 15:07:01', '2024-06-27 15:11:35'),
(219, 'App\\Models\\User', 52, 'qbidapp_api', '3264d85b341c55c28023d4ff2b6488582c16d1c31b0a38405b8cfd1a1140d573', '[\"*\"]', '2024-06-27 15:21:43', NULL, '2024-06-27 15:11:24', '2024-06-27 15:21:43'),
(220, 'App\\Models\\User', 52, 'qbidapp_api', 'd034d6fd102e772a4c2e05924c8f8a7dea361f25fcd40efcbeca90c7ce02fa8f', '[\"*\"]', '2024-06-27 15:21:57', NULL, '2024-06-27 15:12:02', '2024-06-27 15:21:57'),
(221, 'App\\Models\\User', 53, 'qbidapp_api', 'a165adff68a4fe5369e013d60e6d5e8048c347697d5084cb250b60f6a6898dfc', '[\"*\"]', '2024-06-27 15:22:35', NULL, '2024-06-27 15:21:58', '2024-06-27 15:22:35'),
(222, 'App\\Models\\User', 52, 'qbidapp_api', 'c25debda541e754d4e80029b14a58adca8ec7d9ef689b401cdd0fdfeba83fb6c', '[\"*\"]', '2024-06-27 15:22:53', NULL, '2024-06-27 15:22:15', '2024-06-27 15:22:53'),
(223, 'App\\Models\\User', 52, 'qbidapp_api', '722613b6a38f33defecb161c06fc8b1d8d8bc7e8086d8f0ed8b44edd72afa9b3', '[\"*\"]', '2024-06-27 15:24:24', NULL, '2024-06-27 15:22:50', '2024-06-27 15:24:24'),
(224, 'App\\Models\\User', 52, 'qbidapp_api', 'c2362d2d4523016a7ea24d857961882923d2e29aecffea59faedf0a4b7dd8b6d', '[\"*\"]', '2024-06-27 15:36:31', NULL, '2024-06-27 15:23:12', '2024-06-27 15:36:31'),
(225, 'App\\Models\\User', 53, 'qbidapp_api', '088efd38690909129090c6445397f2ac2ad0e89a245480f68a3b4e754fa8bfdc', '[\"*\"]', '2024-06-27 15:24:56', NULL, '2024-06-27 15:24:45', '2024-06-27 15:24:56'),
(226, 'App\\Models\\User', 52, 'qbidapp_api', '93cc752712a2b897164164e9524459159d5d141c1b18e20e98098e15c6878a16', '[\"*\"]', '2024-06-27 15:26:13', NULL, '2024-06-27 15:25:07', '2024-06-27 15:26:13'),
(227, 'App\\Models\\User', 53, 'qbidapp_api', 'e8a86948fa4286048d6a088e93c8e32955c500c9dc502558322e6b92ba84a4aa', '[\"*\"]', '2024-06-27 15:27:55', NULL, '2024-06-27 15:26:26', '2024-06-27 15:27:55'),
(228, 'App\\Models\\User', 52, 'qbidapp_api', '2b88389e537f537b432c8e15ba9f954c904ea4ec0b0d1f12f21aee78fd09ef33', '[\"*\"]', '2024-06-27 15:31:41', NULL, '2024-06-27 15:28:26', '2024-06-27 15:31:41'),
(229, 'App\\Models\\User', 53, 'qbidapp_api', 'd8bd7a8f1fdc4ec1cc8b1b257d7bd89dbaea0012f8f5bf9217565a7288fd6c4a', '[\"*\"]', '2024-06-27 15:34:41', NULL, '2024-06-27 15:31:57', '2024-06-27 15:34:41'),
(230, 'App\\Models\\User', 52, 'qbidapp_api', 'ddb2da0ee63d503c8b90783d60e7bc98761a25a86c5d066ba20b99e19a4cb38c', '[\"*\"]', '2024-06-27 15:36:44', NULL, '2024-06-27 15:34:55', '2024-06-27 15:36:44'),
(231, 'App\\Models\\User', 53, 'qbidapp_api', '076b2b6d18fbfe9c3af925303faad521e3ead6ae5aba3386c152c2abd102cb34', '[\"*\"]', '2024-06-27 15:42:14', NULL, '2024-06-27 15:37:03', '2024-06-27 15:42:14'),
(232, 'App\\Models\\User', 53, 'qbidapp_api', '97f8e55c1e30c31f2e3917d4edde331413032a6b40529b4008f049b20aadc701', '[\"*\"]', '2024-06-27 15:38:52', NULL, '2024-06-27 15:37:38', '2024-06-27 15:38:52'),
(233, 'App\\Models\\User', 52, 'qbidapp_api', '9dc1315e99259eb6921cd1fe2356f9f76b3a74b39a5c2db66f02824b180a7dfc', '[\"*\"]', '2024-06-27 16:13:42', NULL, '2024-06-27 15:39:12', '2024-06-27 16:13:42'),
(234, 'App\\Models\\User', 52, 'qbidapp_api', '31593b9c2e3381176dd2e3042504ab885532632f81365ef8c994e0a7cb5ca406', '[\"*\"]', '2024-07-05 20:56:20', NULL, '2024-06-27 15:42:52', '2024-07-05 20:56:20'),
(235, 'App\\Models\\User', 53, 'qbidapp_api', 'c778fd58897a6bb2d0939c8db1f78749c7632317cb35af07928c42769072fc36', '[\"*\"]', '2024-06-28 11:20:56', NULL, '2024-06-27 16:13:57', '2024-06-28 11:20:56'),
(236, 'App\\Models\\User', 2, 'qbidapp_api', '8ae19e161d17fa23ec325adcd0095654887b2304c30fdebf892d8b2890c7af40', '[\"*\"]', '2024-06-28 08:11:45', NULL, '2024-06-28 08:10:30', '2024-06-28 08:11:45'),
(237, 'App\\Models\\User', 48, 'qbidapp_api', 'c5e185217cec956b55cb76abb9866967f7f0d9195ad73b0b71ebc8f15f561685', '[\"*\"]', NULL, NULL, '2024-06-28 08:12:17', '2024-06-28 08:12:17'),
(238, 'App\\Models\\User', 48, 'qbidapp_api', 'b66ab654e1a37f5d494f26c046d7e6dfa184bc85546b2231edb4251a4cbe7825', '[\"*\"]', NULL, NULL, '2024-06-28 08:12:17', '2024-06-28 08:12:17'),
(239, 'App\\Models\\User', 48, 'qbidapp_api', '92ea316d3170e6be0cc1ae6cbaa63e02e0a00406f48a5ab765743e06669c8087', '[\"*\"]', NULL, NULL, '2024-06-28 08:12:26', '2024-06-28 08:12:26'),
(240, 'App\\Models\\User', 52, 'qbidapp_api', 'b557f6df51183779d15ed49aabaa306a756a33c32f7edd29ca8a13e8a1c06a51', '[\"*\"]', '2024-06-28 08:35:03', NULL, '2024-06-28 08:12:40', '2024-06-28 08:35:03'),
(241, 'App\\Models\\User', 38, 'qbidapp_api', 'ce95e547e52f0bae97ef55be5e3cf1fe77885193e3f27d9d5bc7d415e6c68409', '[\"*\"]', '2024-06-28 08:40:31', NULL, '2024-06-28 08:35:34', '2024-06-28 08:40:31'),
(242, 'App\\Models\\User', 52, 'qbidapp_api', '6bb50ac3187b8d72190d79a67f5c173109c3821b4dfb4b1462d59a1d6fd0cf6e', '[\"*\"]', '2024-06-28 09:20:59', NULL, '2024-06-28 08:41:40', '2024-06-28 09:20:59'),
(243, 'App\\Models\\User', 38, 'qbidapp_api', 'd37a27a7eac2b47dfb32262d865a350b10fb6e18387bc7e543b17d184d7d0a28', '[\"*\"]', '2024-06-28 09:36:27', NULL, '2024-06-28 09:21:34', '2024-06-28 09:36:27'),
(244, 'App\\Models\\User', 52, 'qbidapp_api', '70dce9056d0bfd03d76b5c9ef17836b3240de8976f29ec7c61470171a1044153', '[\"*\"]', '2024-06-28 09:37:58', NULL, '2024-06-28 09:36:45', '2024-06-28 09:37:58'),
(245, 'App\\Models\\User', 38, 'qbidapp_api', 'cb7b1695e0cbfdc24468122d7b84c2e07ba22c024b49a3681c54dec1a83b8619', '[\"*\"]', '2024-06-28 09:39:05', NULL, '2024-06-28 09:38:42', '2024-06-28 09:39:05'),
(246, 'App\\Models\\User', 52, 'qbidapp_api', '2d5e82f82160ed9ac2b9f58d01d098aa82862e61d42f4fcd89b3cdc50935fb7c', '[\"*\"]', '2024-06-28 10:37:36', NULL, '2024-06-28 09:39:28', '2024-06-28 10:37:36'),
(247, 'App\\Models\\User', 38, 'qbidapp_api', '5c19ebd769c393139dabf10a4198fa316a3a2b30dc95d2718a6f9add76d66754', '[\"*\"]', '2024-06-28 11:15:10', NULL, '2024-06-28 10:38:29', '2024-06-28 11:15:10'),
(248, 'App\\Models\\User', 53, 'qbidapp_api', '7a46a625e69b3fe06f8ea2f8a53cd0662fd5937517be65755f9080f01f4a72a3', '[\"*\"]', '2024-06-28 11:32:12', NULL, '2024-06-28 11:15:47', '2024-06-28 11:32:12'),
(249, 'App\\Models\\User', 52, 'qbidapp_api', 'f2f2b46a1ef50a7ae8380e343593d2b9591c50ce3f75461d1bc542213217e21a', '[\"*\"]', '2024-06-28 11:21:23', NULL, '2024-06-28 11:21:16', '2024-06-28 11:21:23'),
(250, 'App\\Models\\User', 2, 'qbidapp_api', 'c725dbb3095e329484dc3eb2b3ec0fa830101ff6990d2a811d7cb01505d1241d', '[\"*\"]', '2024-06-28 11:34:44', NULL, '2024-06-28 11:32:39', '2024-06-28 11:34:44'),
(251, 'App\\Models\\User', 38, 'qbidapp_api', 'f26db2c8c657d786302153287c4076bfc3443a3d7c459865e934551ebb664234', '[\"*\"]', '2024-06-28 11:41:53', NULL, '2024-06-28 11:35:18', '2024-06-28 11:41:53'),
(252, 'App\\Models\\User', 2, 'qbidapp_api', '2ccc768bc4020ddbb2cba257f69a5967c04bf8b08a38ab2a650838f10b5180a3', '[\"*\"]', '2024-06-28 11:45:36', NULL, '2024-06-28 11:42:25', '2024-06-28 11:45:36'),
(253, 'App\\Models\\User', 54, 'qbidapi', 'e4e780235cf382ea2d00c8f9b2b3e9dd9b278edd01717c3d69ba5ac96c4b3f1f', '[\"*\"]', '2024-06-28 15:23:51', NULL, '2024-06-28 15:18:58', '2024-06-28 15:23:51'),
(254, 'App\\Models\\User', 2, 'qbidapp_api', 'e3cdf8548ff6c73f9b5591d09bb2a55e22ea1232e2495dd2852f72aff28399f2', '[\"*\"]', '2024-06-28 15:24:23', NULL, '2024-06-28 15:24:10', '2024-06-28 15:24:23'),
(255, 'App\\Models\\User', 52, 'qbidapp_api', 'e142a7ab9cfa9dc53abc1e68d6fb1b0517d6e69b8088f215f19710c056e9f66f', '[\"*\"]', '2024-06-28 15:33:10', NULL, '2024-06-28 15:24:40', '2024-06-28 15:33:10');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(256, 'App\\Models\\User', 55, 'qbidapi', 'e1dfd8bb3371699dc1331129a77c874cb238ee1e525510423f1c5efe77acbf7c', '[\"*\"]', '2024-06-28 15:38:56', NULL, '2024-06-28 15:37:38', '2024-06-28 15:38:56'),
(257, 'App\\Models\\User', 52, 'qbidapp_api', '24e1b334d058bdab6aa8f50e4b00fbd6a103a936f43e822dd1fadbf0418ba118', '[\"*\"]', '2024-06-28 15:42:33', NULL, '2024-06-28 15:39:14', '2024-06-28 15:42:33'),
(258, 'App\\Models\\User', 55, 'qbidapp_api', '81e3123ae0f5b13b612c88d8832ff29e785ba6ee57ebc0e8f5ce4d79354a60f0', '[\"*\"]', '2024-06-28 15:44:06', NULL, '2024-06-28 15:42:55', '2024-06-28 15:44:06'),
(259, 'App\\Models\\User', 55, 'qbidapp_api', '7aaeed24bb900a842c3b1878277884a69f791242b2d708c41b80384894c656d2', '[\"*\"]', '2024-06-28 15:44:58', NULL, '2024-06-28 15:44:30', '2024-06-28 15:44:58'),
(260, 'App\\Models\\User', 52, 'qbidapp_api', '19cff916cf8990e1d4090f73ea7f4d89b47f449f0a2f17cd1906177f6892afe6', '[\"*\"]', '2024-06-28 15:47:30', NULL, '2024-06-28 15:45:17', '2024-06-28 15:47:30'),
(261, 'App\\Models\\User', 53, 'qbidapp_api', '86c8a7f4f0f894264dcaebf5debee4e88b7e2a68dd9998353994ca26c2018e18', '[\"*\"]', '2024-07-01 18:03:07', NULL, '2024-06-28 15:47:54', '2024-07-01 18:03:07'),
(262, 'App\\Models\\User', 52, 'qbidapp_api', '492da6ad1554e507a246f8793cb16e1e762d9e8f74812cb781acccfd7cd5ba03', '[\"*\"]', '2024-06-28 17:00:31', NULL, '2024-06-28 16:57:43', '2024-06-28 17:00:31'),
(263, 'App\\Models\\User', 53, 'qbidapp_api', '27f447d01040025ceaf49a8983a6338f042c013357588cadea294cd92b8783e8', '[\"*\"]', '2024-07-01 20:05:21', NULL, '2024-06-28 17:01:13', '2024-07-01 20:05:21'),
(264, 'App\\Models\\User', 52, 'qbidapp_api', 'f4ed671230d8f158cf291bec34340fd0acf7d4143e2bfc73e949962e1aa6a93d', '[\"*\"]', '2024-06-28 17:26:31', NULL, '2024-06-28 17:23:26', '2024-06-28 17:26:31'),
(265, 'App\\Models\\User', 52, 'qbidapp_api', '853a25beec9b374f67ca9f8ba85e1f62c07af0fe7062ad4f1700b1735ddde92c', '[\"*\"]', '2024-06-28 17:23:28', NULL, '2024-06-28 17:23:26', '2024-06-28 17:23:28'),
(266, 'App\\Models\\User', 54, 'qbidapp_api', 'bd0b9c76a7d1d2d9f77b51d502d3d0ba020c4ad577b5c974063c3305ced0696b', '[\"*\"]', '2024-06-28 17:30:03', NULL, '2024-06-28 17:27:05', '2024-06-28 17:30:03'),
(267, 'App\\Models\\User', 2, 'qbidapp_api', '91c4fcf5684179e602b6f28421b2fd7c190c9c39783f1cdcd135587143b66c09', '[\"*\"]', '2024-07-04 09:53:15', NULL, '2024-06-28 17:30:42', '2024-07-04 09:53:15'),
(268, 'App\\Models\\User', 54, 'qbidapp_api', 'c1aad914bc72c7dc31933b440f030950ef117b8a21e0331ec274e6428b6ec123', '[\"*\"]', '2024-08-01 10:28:27', NULL, '2024-06-28 17:37:18', '2024-08-01 10:28:27'),
(269, 'App\\Models\\User', 2, 'qbidapp_api', '7fea30518c9cebe5648698b7eec3c7bd6fc6ba6c1f9afc8a6b39d8099e208c6b', '[\"*\"]', '2024-07-18 11:01:04', NULL, '2024-07-01 18:03:56', '2024-07-18 11:01:04'),
(270, 'App\\Models\\User', 52, 'qbidapp_api', 'ea38b35d687e756f84f67cc9166281675c5d7fe25402e7d1ac4dd4520fdc8edb', '[\"*\"]', '2024-07-01 20:06:22', NULL, '2024-07-01 20:05:35', '2024-07-01 20:06:22'),
(271, 'App\\Models\\User', 53, 'qbidapp_api', '092ce396966329b60fccade498e016fd55973b120a195fed64916d50060e3833', '[\"*\"]', '2024-07-04 09:56:35', NULL, '2024-07-04 09:53:45', '2024-07-04 09:56:35'),
(272, 'App\\Models\\User', 2, 'qbidapp_api', '2627b722307ea6fab8c3809c0fc5bafc28a981ff4b2d125337579204bdfa8599', '[\"*\"]', '2024-07-04 09:56:59', NULL, '2024-07-04 09:56:57', '2024-07-04 09:56:59'),
(273, 'App\\Models\\User', 2, 'qbidapp_api', '757cbdfea694d6d146324c37c3aff4cd9dca2a351b9810305c9eea0420ee9412', '[\"*\"]', '2024-07-04 10:17:58', NULL, '2024-07-04 09:56:57', '2024-07-04 10:17:58'),
(274, 'App\\Models\\User', 53, 'qbidapp_api', '9c0c5fc1a5eacec9e82e86f96a1c8ffb458894ac82a72af6b950acbfd4204bb4', '[\"*\"]', '2024-07-04 10:21:15', NULL, '2024-07-04 10:18:35', '2024-07-04 10:21:15'),
(275, 'App\\Models\\User', 38, 'qbidapp_api', 'd98649e28a52c56f4053568ecfbe8944820ca890acb8e9b2df2bb2047e548b2b', '[\"*\"]', '2024-07-04 10:27:37', NULL, '2024-07-04 10:21:53', '2024-07-04 10:27:37'),
(276, 'App\\Models\\User', 2, 'qbidapp_api', '57e8eed8c90bcba411205b2045794def9c0aac27c342e6b2e92a36d1b9c139eb', '[\"*\"]', '2024-07-04 10:32:53', NULL, '2024-07-04 10:28:01', '2024-07-04 10:32:53'),
(277, 'App\\Models\\User', 38, 'qbidapp_api', '6f0b5d672f5624e542fec4274b82275ab9bf834c4da6431298e9c69a0858d35d', '[\"*\"]', '2024-07-04 11:43:39', NULL, '2024-07-04 10:33:20', '2024-07-04 11:43:39'),
(278, 'App\\Models\\User', 2, 'qbidapp_api', '8ef04e84d9e9a9eb2ba58f947a482f6f037cc3bfd2e1d9888e0c1b895c4ebaf6', '[\"*\"]', '2024-07-04 11:45:18', NULL, '2024-07-04 11:44:05', '2024-07-04 11:45:18'),
(279, 'App\\Models\\User', 38, 'qbidapp_api', '9e2adbf4a0578f116666fc5f93e35156cfd64cc0d8025e688f9196b03eee76c6', '[\"*\"]', '2024-07-04 14:09:08', NULL, '2024-07-04 11:45:43', '2024-07-04 14:09:08'),
(280, 'App\\Models\\User', 53, 'qbidapp_api', '4cbe9ee563077ce359041fede89be4dd2f34dd0dc9e7db56ed4561c61a36ba60', '[\"*\"]', '2024-07-04 14:27:11', NULL, '2024-07-04 14:09:08', '2024-07-04 14:27:11'),
(281, 'App\\Models\\User', 52, 'qbidapp_api', '520ca73db8bebf76d1c15bf5395fcb952c0e323442a694143faab5094fca942e', '[\"*\"]', '2024-07-04 14:28:46', NULL, '2024-07-04 14:27:36', '2024-07-04 14:28:46'),
(282, 'App\\Models\\User', 38, 'qbidapp_api', 'd661ecd4ff2cd5c77a774b425143b6ddb08d33e63cc978bea643cc79114b065d', '[\"*\"]', '2024-07-04 14:55:38', NULL, '2024-07-04 14:29:11', '2024-07-04 14:55:38'),
(283, 'App\\Models\\User', 53, 'qbidapp_api', '42003e571c2a24c909441dc44731732cf7405047737f603792241c2f81da3b20', '[\"*\"]', '2024-07-04 15:02:43', NULL, '2024-07-04 14:56:05', '2024-07-04 15:02:43'),
(284, 'App\\Models\\User', 52, 'qbidapp_api', 'c0c7fe47d953a7998a79b8daf7b530cad260c67d641a28465d83912aae18f3a9', '[\"*\"]', '2024-07-04 15:23:27', NULL, '2024-07-04 15:04:44', '2024-07-04 15:23:27'),
(285, 'App\\Models\\User', 53, 'qbidapp_api', '0ecd8e160b6c396d4cac4e0551cc308b06b04a9efa1e01fab91b180d1b648b06', '[\"*\"]', NULL, NULL, '2024-07-04 15:23:59', '2024-07-04 15:23:59'),
(286, 'App\\Models\\User', 53, 'qbidapp_api', '9632b061babebf336886a21b5d5c44117fbfd926ab8cb207de671239c169d798', '[\"*\"]', NULL, NULL, '2024-07-04 15:24:05', '2024-07-04 15:24:05'),
(287, 'App\\Models\\User', 53, 'qbidapp_api', '7e846318da08e7edde6344994d213b15faadcdf4b604fc13f4e56cf7422db39a', '[\"*\"]', '2024-07-04 15:29:37', NULL, '2024-07-04 15:24:26', '2024-07-04 15:29:37'),
(288, 'App\\Models\\User', 52, 'qbidapp_api', '47839722268f6e02bf89f2b9c67bee9af83ca6dfe2d608f4ef891c73c34f89e1', '[\"*\"]', '2024-07-04 16:04:37', NULL, '2024-07-04 15:30:06', '2024-07-04 16:04:37'),
(289, 'App\\Models\\User', 38, 'qbidapp_api', 'e9e355ccaa441a486225a392b82f0f3dcdd8d21c6941a5d6dfbf260aaf823181', '[\"*\"]', '2024-07-05 10:23:15', NULL, '2024-07-05 10:21:12', '2024-07-05 10:23:15'),
(290, 'App\\Models\\User', 52, 'qbidapp_api', '6570801fb26641aff4245d7ef99259a515c464eb2f15bc4e6897fe6f60bff4e8', '[\"*\"]', '2024-07-05 10:30:39', NULL, '2024-07-05 10:23:43', '2024-07-05 10:30:39'),
(291, 'App\\Models\\User', 38, 'qbidapp_api', '200cc3bee835cde254fd70ca78073d99cc8b686513eac1e201c3958b99cc02bc', '[\"*\"]', '2024-07-05 10:38:38', NULL, '2024-07-05 10:31:00', '2024-07-05 10:38:38'),
(292, 'App\\Models\\User', 2, 'qbidapp_api', '81424655f9f3c015bb5e2f08d73578a185d2d9a712de0155bd797481d3d3ba05', '[\"*\"]', '2024-07-05 10:42:15', NULL, '2024-07-05 10:39:27', '2024-07-05 10:42:15'),
(293, 'App\\Models\\User', 53, 'qbidapp_api', 'ffdf0966d46b371a8d00496f10e72d07ebe0014b11efe2754d80734d9b2cbd70', '[\"*\"]', '2024-07-05 10:52:43', NULL, '2024-07-05 10:42:46', '2024-07-05 10:52:43'),
(294, 'App\\Models\\User', 2, 'qbidapp_api', '749d7c51cf759ffcb3ae9c4de1a81c9e4b0b6c9108531252ecfa717ecde8f375', '[\"*\"]', '2024-07-05 11:53:47', NULL, '2024-07-05 10:53:08', '2024-07-05 11:53:47'),
(295, 'App\\Models\\User', 38, 'qbidapp_api', '3bdeae13fc2cd72b1dd87f1cb11209eafd8a627e201b2b37cf749d3f3e4e1d2a', '[\"*\"]', '2024-07-05 11:56:54', NULL, '2024-07-05 11:54:15', '2024-07-05 11:56:54'),
(296, 'App\\Models\\User', 53, 'qbidapp_api', 'e1ef4a4aa118d7895624fc96fccc5f806d3716a819733ad6e724d05d1f5373a4', '[\"*\"]', '2024-07-05 12:00:20', NULL, '2024-07-05 11:57:23', '2024-07-05 12:00:20'),
(297, 'App\\Models\\User', 2, 'qbidapp_api', '5c886ffe06bbc9049a2d33f488b531fd2777fff4f90b1d5c57b5111bbf1c0cef', '[\"*\"]', '2024-07-05 12:40:26', NULL, '2024-07-05 12:00:45', '2024-07-05 12:40:26'),
(298, 'App\\Models\\User', 38, 'qbidapp_api', '38086c15ce2ffdc18ecc2293e2cc7de054f6d9643ae3db18de32766d95751353', '[\"*\"]', '2024-07-05 12:42:29', NULL, '2024-07-05 12:41:03', '2024-07-05 12:42:29'),
(299, 'App\\Models\\User', 2, 'qbidapp_api', '3e1901df6fb5c9e49504e7fcc34f7a779198aba422dc568649838ad914bb7235', '[\"*\"]', '2024-07-24 13:00:19', NULL, '2024-07-05 12:42:48', '2024-07-24 13:00:19'),
(300, 'App\\Models\\User', 52, 'qbidapp_api', '48b8718f433002b8f189e7eb720fa54e034d84af45fce53c4925c7e106a11dd5', '[\"*\"]', '2024-07-05 16:21:31', NULL, '2024-07-05 16:00:59', '2024-07-05 16:21:31'),
(301, 'App\\Models\\User', 53, 'qbidapp_api', 'b79bc499353529dfbacdb8d78fb7e02b0d5390d150084820b117c48ff384958f', '[\"*\"]', '2024-07-05 16:21:58', NULL, '2024-07-05 16:21:42', '2024-07-05 16:21:58'),
(302, 'App\\Models\\User', 52, 'qbidapp_api', 'f9fefe2f5452e9b04cc2fdf3dc4fec01eb5380eb699aca4725a01df42b30f561', '[\"*\"]', '2024-07-05 16:23:20', NULL, '2024-07-05 16:22:13', '2024-07-05 16:23:20'),
(303, 'App\\Models\\User', 53, 'qbidapp_api', '9d2028edab715975bb7ae0089fa4ea2021f384048c3cda26afbd2f94365ffaa6', '[\"*\"]', '2024-07-05 16:24:12', NULL, '2024-07-05 16:23:32', '2024-07-05 16:24:12'),
(304, 'App\\Models\\User', 52, 'qbidapp_api', '36047c4fad5d3dbec5788d6a0c49c9c3a35c71aa9b41a8b5440b7dc6e9c110b2', '[\"*\"]', '2024-07-25 23:12:27', NULL, '2024-07-05 16:24:25', '2024-07-25 23:12:27'),
(305, 'App\\Models\\User', 52, 'qbidapp_api', '98e2dfab21d47f6ce872b60532481a34869ef264317d5dc080a8bc9c655d69fb', '[\"*\"]', '2024-07-23 16:49:27', NULL, '2024-07-05 20:58:49', '2024-07-23 16:49:27'),
(306, 'App\\Models\\User', 38, 'qbidapp_api', '9e33fdf92b9013d09e19e8d5a9c66212cbabe9461abc17929d6ffd9e1f1027d5', '[\"*\"]', '2024-07-18 11:30:22', NULL, '2024-07-18 11:29:55', '2024-07-18 11:30:22'),
(307, 'App\\Models\\User', 2, 'qbidapp_api', '1e46737b336dd4d9d49acc60feaad0dd9596b16969fbd1434444deaa63f02021', '[\"*\"]', '2024-07-18 12:56:20', NULL, '2024-07-18 11:30:47', '2024-07-18 12:56:20'),
(308, 'App\\Models\\User', 2, 'qbidapp_api', 'd03c13cd79f2456690e7df7eae1d885c8e6fa8ee67c4f32c9b96a23d38e5c0e4', '[\"*\"]', '2024-07-18 13:47:06', NULL, '2024-07-18 13:44:45', '2024-07-18 13:47:06'),
(309, 'App\\Models\\User', 53, 'qbidapp_api', 'f44b826da552f3a818953f161aedf9da45384e3f249d966007ffbc14890a754d', '[\"*\"]', '2024-07-18 13:49:32', NULL, '2024-07-18 13:47:30', '2024-07-18 13:49:32'),
(310, 'App\\Models\\User', 52, 'qbidapp_api', '622f5245b43fd9c0af47234d72c588481732291c04a99e8e7832c3371eed0513', '[\"*\"]', '2024-07-18 16:03:26', NULL, '2024-07-18 13:49:55', '2024-07-18 16:03:26'),
(311, 'App\\Models\\User', 48, 'qbidapp_api', '2ec3d58b4adafc6e6adeab50a5ac8c3c84484c8210d64da125ce502d238bce4b', '[\"*\"]', '2024-07-29 14:01:09', NULL, '2024-07-23 16:50:21', '2024-07-29 14:01:09'),
(312, 'App\\Models\\User', 49, 'qbidapp_api', '12cb9bf75fd55d8f8b232a6ed6524e28181076caea63ea2e2a854d193e36eb68', '[\"*\"]', NULL, NULL, '2024-07-25 23:14:00', '2024-07-25 23:14:00'),
(313, 'App\\Models\\User', 52, 'qbidapp_api', '195cce89912832d9245c46c1176ad9d07a7f5e301b431b9b86930a4078edb8b8', '[\"*\"]', NULL, NULL, '2024-07-25 23:14:16', '2024-07-25 23:14:16'),
(314, 'App\\Models\\User', 49, 'qbidapp_api', '8661b128ce5e65f5d383df35865d63c7f5a71f671f83803e10fbcde8e8d88a90', '[\"*\"]', NULL, NULL, '2024-07-25 23:14:34', '2024-07-25 23:14:34'),
(315, 'App\\Models\\User', 53, 'qbidapp_api', '738896b2e8f7869450405b1cf8bb3b6c58c97ac02038f9eb1286ac411218cc69', '[\"*\"]', '2024-07-25 23:15:25', NULL, '2024-07-25 23:14:40', '2024-07-25 23:15:25'),
(316, 'App\\Models\\User', 52, 'qbidapp_api', 'ec08ccf156501399e6af2db89257edce5d329dc83064d43488778ce0b7966953', '[\"*\"]', '2024-07-25 23:22:47', NULL, '2024-07-25 23:15:47', '2024-07-25 23:22:47'),
(317, 'App\\Models\\User', 2, 'qbidapp_api', 'a159e4149ccbc4795a4204aed4ac1dd50ecf905f18c544165ed4ed3d0a99f7f8', '[\"*\"]', '2024-07-26 12:49:24', NULL, '2024-07-26 12:37:54', '2024-07-26 12:49:24'),
(318, 'App\\Models\\User', 52, 'qbidapp_api', '952fcfd17c40a6386ad9b54c58e8556212e3c5fba0bebcca2f061ae6a8361b4f', '[\"*\"]', '2024-07-29 15:05:38', NULL, '2024-07-26 18:30:33', '2024-07-29 15:05:38'),
(319, 'App\\Models\\User', 52, 'qbidapp_api', 'e322bd4ff6dada25d34a403a9c0d633ead24a9eb276534d3632ab5792c59f47c', '[\"*\"]', '2024-07-30 15:55:48', NULL, '2024-07-29 14:04:20', '2024-07-30 15:55:48'),
(320, 'App\\Models\\User', 52, 'qbidapp_api', '4cd9dc4db6cede649d1d1c246154e4f84d670de2f6aeca783ac9f9bbc8c0bf53', '[\"*\"]', '2024-07-30 16:07:57', NULL, '2024-07-30 16:06:37', '2024-07-30 16:07:57'),
(321, 'App\\Models\\User', 2, 'qbidapp_api', '72db252c1139880c96e3818a1ce2a040b8551ee480f169328a885929bd4e53ba', '[\"*\"]', NULL, NULL, '2024-08-12 11:17:04', '2024-08-12 11:17:04'),
(322, 'App\\Models\\User', 2, 'qbidapp_api', '21478c6e9ebc654717240eb4e6a4248ae704dd7c1c10dcdf4c646981bb472f31', '[\"*\"]', '2024-08-12 13:10:07', NULL, '2024-08-12 13:09:51', '2024-08-12 13:10:07'),
(323, 'App\\Models\\User', 2, 'qbidapp_api', '663e03cc53bd89c8eade020757d20d647f517e88b970279bc6dff59b2f8f35be', '[\"*\"]', '2024-09-30 16:14:37', NULL, '2024-09-26 10:07:43', '2024-09-30 16:14:37'),
(324, 'App\\Models\\User', 19, 'qbidapp_api', 'b0a1f9d40e7dc6e91e073de00243ce9288554c32ea22f59a23db94134f9db77b', '[\"*\"]', '2024-09-30 18:44:15', NULL, '2024-09-30 18:44:05', '2024-09-30 18:44:15'),
(325, 'App\\Models\\User', 2, 'qbidapp_api', '7796fd8431e7044846a00250e8c3a3bc827f234ca93b0c91bdbadcb091952f1c', '[\"*\"]', '2024-10-01 16:16:55', NULL, '2024-10-01 15:43:12', '2024-10-01 16:16:55'),
(326, 'App\\Models\\User', 1, 'qbidapp_api', 'b0cdf7c9b142e18cd559c90b9f477361d5c600a57cd0b40d10124c2f7094cc4f', '[\"*\"]', NULL, NULL, '2024-10-01 15:44:06', '2024-10-01 15:44:06'),
(327, 'App\\Models\\User', 1, 'qbidapp_api', '82820ca92237865a38cad486200d82e260f192ed494316a351c96c0969784c96', '[\"*\"]', NULL, NULL, '2024-10-01 15:44:14', '2024-10-01 15:44:14'),
(328, 'App\\Models\\User', 1, 'qbidapp_api', '6e066bfabd8ce4559f2cef134e3c70ca4f87f45bb3bb63aee4a791a14c55b8be', '[\"*\"]', NULL, NULL, '2024-10-01 15:44:24', '2024-10-01 15:44:24'),
(329, 'App\\Models\\User', 1, 'qbidapp_api', '79056acf89c5a7a4ba90cf713930414ed43d5f0ffd6fb0a50654c0cbc7312762', '[\"*\"]', NULL, NULL, '2024-10-01 15:44:52', '2024-10-01 15:44:52'),
(330, 'App\\Models\\User', 1, 'qbidapp_api', '2a4855d7a15705f9b12487f06b172c0249f021f4027f55a1f37e12792cd5455f', '[\"*\"]', NULL, NULL, '2024-10-01 15:46:04', '2024-10-01 15:46:04'),
(331, 'App\\Models\\User', 1, 'qbidapp_api', '5cdf80dea0087a81ecf80b34906fc8be02cc6b04b9b7ea5b89dd1f510b4fdd58', '[\"*\"]', NULL, NULL, '2024-10-01 15:46:57', '2024-10-01 15:46:57'),
(332, 'App\\Models\\User', 1, 'qbidapp_api', 'f7774df98d035654b59ce56ced953da30808b9121f816919c9e082153df4fe9c', '[\"*\"]', '2024-10-01 15:57:47', NULL, '2024-10-01 15:55:38', '2024-10-01 15:57:47'),
(333, 'App\\Models\\User', 1, 'qbidapp_api', 'c9203f2f3b98512b11f18a1d953929340d290f75dfb4242ba471c480ad1b5486', '[\"*\"]', NULL, NULL, '2024-10-01 15:58:18', '2024-10-01 15:58:18'),
(334, 'App\\Models\\User', 1, 'qbidapp_api', 'b39ae5fbcf3d37427d71f350ea753b115dadcc4ec1bd8ad44b6e85181d041bcc', '[\"*\"]', NULL, NULL, '2024-10-01 15:58:46', '2024-10-01 15:58:46'),
(335, 'App\\Models\\User', 38, 'qbidapp_api', 'a41bd37368f6b7c99ab5061cf084229e38c9ab53c5974735e5b0b2fce7623414', '[\"*\"]', '2024-10-01 16:23:01', NULL, '2024-10-01 15:59:49', '2024-10-01 16:23:01'),
(336, 'App\\Models\\User', 56, 'qbidapi', 'fce3c2a1b4e90103d51397a31ee5abe4f5bc1a7f475502e1922d285de9493908', '[\"*\"]', '2024-10-01 16:20:32', NULL, '2024-10-01 16:19:08', '2024-10-01 16:20:32'),
(337, 'App\\Models\\User', 57, 'qbidapi', 'efda102f4a3ed09d7718e6110c41b658e8c9e063419dbcc36850cce6572abd48', '[\"*\"]', '2024-10-01 16:40:55', NULL, '2024-10-01 16:26:17', '2024-10-01 16:40:55'),
(338, 'App\\Models\\User', 58, 'qbidapi', '8842019b55045bce434d0649a8df4c4b96988af98587e612f8ead85d41e53d13', '[\"*\"]', '2024-10-02 11:14:24', NULL, '2024-10-01 16:47:31', '2024-10-02 11:14:24'),
(339, 'App\\Models\\User', 59, 'qbidapi', '609ea741e357c0fa624574b2ed1653bb0f2175a2051834707e1e3069c886e8ce', '[\"*\"]', '2024-10-02 11:30:53', NULL, '2024-10-01 16:50:24', '2024-10-02 11:30:53'),
(340, 'App\\Models\\User', 60, 'qbidapi', 'ee6f73d170aecd30fef2614d2952ce32cd3a2cae10162f118700f8755834ccc3', '[\"*\"]', '2024-10-02 11:22:31', NULL, '2024-10-02 11:16:47', '2024-10-02 11:22:31'),
(341, 'App\\Models\\User', 58, 'qbidapp_api', '43ca3892382a5985658babfdebd0ef14466021bcd9248def6e2bb398d9f4930f', '[\"*\"]', NULL, NULL, '2024-10-02 11:24:45', '2024-10-02 11:24:45'),
(342, 'App\\Models\\User', 58, 'qbidapp_api', '7b5d4c23c5738470518e51e05947f53d6335a33361175d5af591f9bf84f5be39', '[\"*\"]', '2024-10-02 11:30:14', NULL, '2024-10-02 11:24:45', '2024-10-02 11:30:14'),
(343, 'App\\Models\\User', 58, 'qbidapp_api', '041d7a6316b94bdc07de53764823fd43c7778450e9568c29ea3efd85602213e1', '[\"*\"]', '2024-10-02 17:22:58', NULL, '2024-10-02 17:17:41', '2024-10-02 17:22:58'),
(344, 'App\\Models\\User', 59, 'qbidapp_api', '860c0f0ec0fab97ef2d9945f0ba4d97fe2e1ba5946e25e05b5265e0599be06f0', '[\"*\"]', '2024-10-02 17:21:33', NULL, '2024-10-02 17:19:17', '2024-10-02 17:21:33'),
(345, 'App\\Models\\User', 2, 'qbidapp_api', '55d8b95be0c7619c1ee5f1c840738644f71dec405b1fd21c7c82f765bdb34f6e', '[\"*\"]', '2024-10-29 12:33:44', NULL, '2024-10-29 09:02:15', '2024-10-29 12:33:44'),
(346, 'App\\Models\\User', 2, 'qbidapp_api', '3fa327ca21f47eb4878abc52fdcd27bb9d31d29ab3e71e1fa2c61c920222609d', '[\"*\"]', '2024-10-29 11:28:40', NULL, '2024-10-29 11:25:25', '2024-10-29 11:28:40'),
(347, 'App\\Models\\User', 38, 'qbidapp_api', '49a94c1173b20a4356ddfe9fd61b7edc9b86ec854307f9cc439801342194f130', '[\"*\"]', '2024-10-29 11:28:36', NULL, '2024-10-29 11:25:50', '2024-10-29 11:28:36'),
(348, 'App\\Models\\User', 61, 'qbidapi', 'ccd57166fa8a812261c74566e1b0db47f1fa71c7756b9e8ad05849a7ae134507', '[\"*\"]', '2024-10-29 11:49:48', NULL, '2024-10-29 11:29:57', '2024-10-29 11:49:48'),
(349, 'App\\Models\\User', 62, 'qbidapi', '2c6d8f2af1fe0772818191fa8d7945c0bb01aaaabcbd81f8ca6074988e90480a', '[\"*\"]', '2024-10-29 11:30:47', NULL, '2024-10-29 11:30:25', '2024-10-29 11:30:47'),
(350, 'App\\Models\\User', 63, 'qbidapi', '480a685b518ee5b638ea6d484e03e50448728073df85371dd850b674af70d299', '[\"*\"]', '2024-10-29 12:39:57', NULL, '2024-10-29 11:33:05', '2024-10-29 12:39:57'),
(351, 'App\\Models\\User', 64, 'qbidapi', '9b4078d9b5e590d08887995ceb43f5cf011a38409892caea534f478540e70d33', '[\"*\"]', '2024-10-30 12:21:28', NULL, '2024-10-29 12:39:03', '2024-10-30 12:21:28'),
(352, 'App\\Models\\User', 65, 'qbidapi', 'ec90e86bf2dd14173c68fc94cafaa7823c75c2566198829a106e277bbb60999a', '[\"*\"]', '2024-11-05 10:33:41', NULL, '2024-10-29 12:41:23', '2024-11-05 10:33:41'),
(353, 'App\\Models\\User', 66, 'qbidapi', '2954cae6ce62b64dd46b62cc26ccf7c106090519e31ac3095eb7e9c7f76d53b3', '[\"*\"]', '2024-11-04 23:18:15', NULL, '2024-11-04 23:17:25', '2024-11-04 23:18:15'),
(354, 'App\\Models\\User', 66, 'qbidapp_api', 'ed16c8be1634e710b363c4e354d6d114a3331816b50e802bdfb52b6edf31b427', '[\"*\"]', '2024-11-04 23:29:54', NULL, '2024-11-04 23:18:24', '2024-11-04 23:29:54'),
(355, 'App\\Models\\User', 67, 'qbidapi', '5d17581b2bacb51095e4acbe94decc7886c40a772893a2b0748ec91e2dda7b0c', '[\"*\"]', '2024-11-04 23:29:11', NULL, '2024-11-04 23:20:01', '2024-11-04 23:29:11'),
(356, 'App\\Models\\User', 2, 'qbidapp_api', 'f1008a7062fd2297e70ed9d81eb6ef5954c7e26437bb9c0ba38b37d4f45df78f', '[\"*\"]', '2024-11-05 10:03:52', NULL, '2024-11-05 10:02:16', '2024-11-05 10:03:52'),
(357, 'App\\Models\\User', 38, 'qbidapp_api', 'd8d79d409cc4508a3a0f6c1a9a230710a1b1709671f3b014bc3215635c06322f', '[\"*\"]', '2024-11-05 10:33:26', NULL, '2024-11-05 10:04:30', '2024-11-05 10:33:26'),
(358, 'App\\Models\\User', 2, 'qbidapp_api', '9a755e55db940f131d521525be8959d5a4101887f25fd1c6543e22d9ee530c81', '[\"*\"]', '2024-11-05 10:49:14', NULL, '2024-11-05 10:06:34', '2024-11-05 10:49:14'),
(359, 'App\\Models\\User', 68, 'qbidapi', '83ab9390378681ff9bc6de3328e63b5b78a4249695ea12931654f9894b8ae574', '[\"*\"]', '2024-11-05 10:40:38', NULL, '2024-11-05 10:35:56', '2024-11-05 10:40:38'),
(360, 'App\\Models\\User', 69, 'qbidapi', '698016c403c98c85a646ea05bf6ff3d362a2396dab1594986a2cdca2915d09d9', '[\"*\"]', '2024-11-05 12:13:47', NULL, '2024-11-05 10:37:27', '2024-11-05 12:13:47'),
(361, 'App\\Models\\User', 68, 'qbidapp_api', '6bdbb65cfb438df9de848e38e9749954d4adf99302f74925ee8c83aff57bc085', '[\"*\"]', '2024-11-05 12:48:09', NULL, '2024-11-05 10:45:51', '2024-11-05 12:48:09'),
(362, 'App\\Models\\User', 68, 'qbidapp_api', 'f227d8b5e32da95273fcc0aa617e7c79112ec3c319a9452be9c42e14dc3057b1', '[\"*\"]', '2024-11-05 10:55:03', NULL, '2024-11-05 10:49:33', '2024-11-05 10:55:03'),
(363, 'App\\Models\\User', 69, 'qbidapp_api', '698f25712a513ba49137ab1f24bf94f4b546f1bfa5507be29118b12a3b30c559', '[\"*\"]', '2024-11-05 11:13:41', NULL, '2024-11-05 10:56:42', '2024-11-05 11:13:41'),
(364, 'App\\Models\\User', 69, 'qbidapp_api', '4f14ecd528706c072e623f8f512f1df17a034ef4d5e100af2883708953b5af9c', '[\"*\"]', '2024-11-05 11:45:41', NULL, '2024-11-05 10:56:54', '2024-11-05 11:45:41'),
(365, 'App\\Models\\User', 70, 'qbidapi', '8b57bb8c0aba84bffaa4a2df984350a5c5d6898747e46c4661f4ea3f900af4b4', '[\"*\"]', '2024-11-05 12:17:47', NULL, '2024-11-05 11:44:44', '2024-11-05 12:17:47'),
(366, 'App\\Models\\User', 68, 'qbidapp_api', '0a7811531db2b82a85dd58d02d6e4cfb55b14a0d289008df14e5b896cf2f6edc', '[\"*\"]', '2024-11-05 12:24:57', NULL, '2024-11-05 12:09:31', '2024-11-05 12:24:57'),
(367, 'App\\Models\\User', 68, 'qbidapp_api', 'f5d73d2a097bea0f65afa690259950f03ecd70599d20caa6dba6c82e0663fb3c', '[\"*\"]', '2024-11-05 13:03:06', NULL, '2024-11-05 12:14:19', '2024-11-05 13:03:06'),
(368, 'App\\Models\\User', 68, 'qbidapp_api', '49aec92b347133e9a59f757be17808e05c3d1a005194753a787963fc3e9bfdd2', '[\"*\"]', '2024-11-05 13:35:34', NULL, '2024-11-05 12:18:15', '2024-11-05 13:35:34'),
(369, 'App\\Models\\User', 68, 'qbidapp_api', 'e04220df2f5cd2b655023f61a736de06125ae2422a04ec6b3e7d3638dadb42b8', '[\"*\"]', '2024-11-05 13:39:17', NULL, '2024-11-05 13:33:56', '2024-11-05 13:39:17'),
(370, 'App\\Models\\User', 70, 'qbidapp_api', '8635afcb59e3dd7d192e6b2d067b23d40f024e7d3436e084c497ec4eef0757e6', '[\"*\"]', '2024-11-05 13:39:50', NULL, '2024-11-05 13:37:28', '2024-11-05 13:39:50'),
(371, 'App\\Models\\User', 68, 'qbidapp_api', '1d9c45f0fd2ecdbd630140f92bca9c00811af9c60e38cc11ba8204b3400f7ce4', '[\"*\"]', '2024-11-05 13:41:02', NULL, '2024-11-05 13:40:01', '2024-11-05 13:41:02'),
(372, 'App\\Models\\User', 68, 'qbidapp_api', '8198556c2198603ffadbda672aa200340461dde4ea78981d2cf18c3d987027a2', '[\"*\"]', '2024-11-05 13:41:35', NULL, '2024-11-05 13:41:13', '2024-11-05 13:41:35'),
(373, 'App\\Models\\User', 68, 'qbidapp_api', 'f71ef79b0238650e4aecdca7defddb2313c9d456a40db2f99d2307e47924dd18', '[\"*\"]', '2024-11-05 13:48:18', NULL, '2024-11-05 13:41:57', '2024-11-05 13:48:18'),
(374, 'App\\Models\\User', 70, 'qbidapp_api', 'fb1e558a19af7e2668f3f5d03f36af685213166de4e50bc4fdf27d62a371e256', '[\"*\"]', '2024-11-05 13:44:10', NULL, '2024-11-05 13:43:49', '2024-11-05 13:44:10'),
(375, 'App\\Models\\User', 66, 'qbidapp_api', '2be80edfb2f941ae3aaeed8cc6a50471ebebaf4427952f8ad3b701d1b7a83236', '[\"*\"]', NULL, NULL, '2024-11-05 17:29:24', '2024-11-05 17:29:24'),
(376, 'App\\Models\\User', 66, 'qbidapp_api', '5f67e32b20ceef64db90069d7f6c9abbfd1d87e1a5d8a51acc708bc126709e1c', '[\"*\"]', NULL, NULL, '2024-11-05 17:29:50', '2024-11-05 17:29:50'),
(377, 'App\\Models\\User', 66, 'qbidapp_api', 'bcca1a11102aaf0a75b2dd6b08f832c193741d381287dcc629d165f85eb7a27c', '[\"*\"]', '2024-11-05 17:42:01', NULL, '2024-11-05 17:30:02', '2024-11-05 17:42:01'),
(378, 'App\\Models\\User', 67, 'qbidapp_api', 'e04fa73728a1d0ab6802ceaf5e9deaf9e669f31188c2cc51a09d4582528b1dcb', '[\"*\"]', '2024-11-25 16:17:50', NULL, '2024-11-05 17:30:18', '2024-11-25 16:17:50'),
(379, 'App\\Models\\User', 71, 'qbidapi', 'b92b1d6e1bcc7a76e773366e66b61e3e83dcb5f44b921d0128d831583b361308', '[\"*\"]', '2024-12-09 20:05:57', NULL, '2024-11-25 16:19:03', '2024-12-09 20:05:57'),
(380, 'App\\Models\\User', 72, 'qbidapi', '8d50164fc3b2e1a7a97841d1dbee216be33c01b4118a39c3fbbad891e2daf1fc', '[\"*\"]', '2024-11-25 21:57:41', NULL, '2024-11-25 21:48:59', '2024-11-25 21:57:41'),
(381, 'App\\Models\\User', 73, 'qbidapi', '04b72637fb0611c3d118d169fd8b3a22fc610b93d284aa6132ee14b5d296a848', '[\"*\"]', '2024-11-29 17:55:22', NULL, '2024-11-25 22:00:49', '2024-11-29 17:55:22'),
(382, 'App\\Models\\User', 38, 'qbidapp_api', '04ad5831ba5fa9b5c9f149b8f3afa20016581d5c9434f793230eadda53b9a5d6', '[\"*\"]', '2025-03-27 07:31:36', NULL, '2024-11-28 13:48:49', '2025-03-27 07:31:36'),
(383, 'App\\Models\\User', 72, 'qbidapp_api', '3d2c19ab2bc7c88f64a4e46bb08c79a5fa91a0aef9efb27a5ad6fd359dd11b55', '[\"*\"]', '2024-11-29 17:56:26', NULL, '2024-11-29 17:56:00', '2024-11-29 17:56:26'),
(384, 'App\\Models\\User', 72, 'qbidapp_api', '8dfb8b02fe25503e6d4011b1f0c42d1f184f9395a7065dad877614ef4a038dcb', '[\"*\"]', NULL, NULL, '2024-11-29 17:56:56', '2024-11-29 17:56:56'),
(385, 'App\\Models\\User', 72, 'qbidapp_api', '50cb173c8d2717a444c10790c3e9c7611bd6c61495771374482202e3921d589b', '[\"*\"]', NULL, NULL, '2024-11-29 17:57:08', '2024-11-29 17:57:08'),
(386, 'App\\Models\\User', 72, 'qbidapp_api', '475982cbeac16c51a2cecbda68a22642b7e8931c324bb0d7e53b7650529ea406', '[\"*\"]', NULL, NULL, '2024-11-29 17:58:10', '2024-11-29 17:58:10'),
(387, 'App\\Models\\User', 72, 'qbidapp_api', 'b6558f5dd285a41b4eb41745618c6eca7d10a44296ac0b56bde7e9fcd786d521', '[\"*\"]', NULL, NULL, '2024-11-29 17:58:40', '2024-11-29 17:58:40'),
(388, 'App\\Models\\User', 73, 'qbidapp_api', '780881b9d1ade7315ebe31e4812fc3e36c4ed1f034ed93b398af2ac421ef8b0e', '[\"*\"]', '2024-11-29 18:04:32', NULL, '2024-11-29 18:01:05', '2024-11-29 18:04:32'),
(389, 'App\\Models\\User', 72, 'qbidapp_api', '1b4a28893643df6f22f3a28436d192494554882fb0b2a42dc96a202078f55b03', '[\"*\"]', '2024-11-29 18:29:30', NULL, '2024-11-29 18:05:01', '2024-11-29 18:29:30'),
(390, 'App\\Models\\User', 73, 'qbidapp_api', 'cfe453b1b3342f235d266a13b17c35d8f5df773d4527444424220862db93208f', '[\"*\"]', '2024-11-29 18:44:35', NULL, '2024-11-29 18:29:56', '2024-11-29 18:44:35'),
(391, 'App\\Models\\User', 72, 'qbidapp_api', '0121d205dff39a4e6a2620d6faa3bd7fa11a88192af9c8302193be17720584fc', '[\"*\"]', '2024-12-09 19:41:41', NULL, '2024-11-29 18:45:56', '2024-12-09 19:41:41'),
(392, 'App\\Models\\User', 73, 'qbidapp_api', 'ed6b4c5b801090e63df777b45c8e7d7d55126e36305a0876e9fcb131d45c1438', '[\"*\"]', '2024-12-09 20:06:09', NULL, '2024-12-09 19:42:00', '2024-12-09 20:06:09'),
(393, 'App\\Models\\User', 72, 'qbidapp_api', 'cb9b2a8ce8469ae00ce623c68c42fabb0b2702934b9985bfa9bd89b313bba5a4', '[\"*\"]', '2024-12-09 20:07:03', NULL, '2024-12-09 20:06:45', '2024-12-09 20:07:03'),
(394, 'App\\Models\\User', 72, 'qbidapp_api', '0415482b8f75c263fab44e0c91a931f3fac9a1505bb93da4a62e96aa0ab3f76d', '[\"*\"]', '2024-12-09 20:11:47', NULL, '2024-12-09 20:07:06', '2024-12-09 20:11:47'),
(395, 'App\\Models\\User', 73, 'qbidapp_api', 'bd7bd62fa4f0cf5427c7615ab062db4e1af03764a5cd8365ad8af31feb593479', '[\"*\"]', '2024-12-09 20:14:29', NULL, '2024-12-09 20:12:42', '2024-12-09 20:14:29'),
(396, 'App\\Models\\User', 72, 'qbidapp_api', '7bb908cfc702dfee60bab8f9fbb3b9a88bda1d57de1c66d5b556bf79a25f23f8', '[\"*\"]', '2024-12-09 20:15:41', NULL, '2024-12-09 20:14:46', '2024-12-09 20:15:41'),
(397, 'App\\Models\\User', 73, 'qbidapp_api', '958bc16f85f0a2c93f5993b219d3269d4690ca9314ff8d4f809a8a4d2262c1ad', '[\"*\"]', '2024-12-09 20:20:32', NULL, '2024-12-09 20:16:20', '2024-12-09 20:20:32'),
(398, 'App\\Models\\User', 72, 'qbidapp_api', 'f6d17ff1e3a9a8f772e64672d36506b09a9dc4c8647e74e063675ffab0ad3fc7', '[\"*\"]', '2024-12-09 20:23:50', NULL, '2024-12-09 20:20:55', '2024-12-09 20:23:50'),
(399, 'App\\Models\\User', 73, 'qbidapp_api', '7f445e0e1555941b7cae251d23440a5dc9dfe9330715706b95e0ee22f3cac2b6', '[\"*\"]', '2024-12-09 20:27:50', NULL, '2024-12-09 20:24:14', '2024-12-09 20:27:50'),
(400, 'App\\Models\\User', 38, 'qbidapp_api', '427972c5d23b7202b459ef88a6e1d0e4c38f4481d2be9aa1ad8418b654aac4cc', '[\"*\"]', '2024-12-19 11:08:18', NULL, '2024-12-19 11:06:02', '2024-12-19 11:08:18'),
(401, 'App\\Models\\User', 2, 'qbidapp_api', '3e461df49e32a93a9c65a2b951b26374327e30d7cea2348e1f524b6eb953f217', '[\"*\"]', '2024-12-19 12:28:56', NULL, '2024-12-19 11:08:47', '2024-12-19 12:28:56'),
(402, 'App\\Models\\User', 38, 'qbidapp_api', '6bee65c01064d409965fd416c2eee620d22426ec7c219e01c72f58cf0513dd99', '[\"*\"]', NULL, NULL, '2024-12-19 12:03:36', '2024-12-19 12:03:36'),
(403, 'App\\Models\\User', 38, 'qbidapp_api', 'd0c355fa09ec9e9071368dcd0f66f2a28cfe3e4011984e3d9318baff7e50ef8b', '[\"*\"]', '2024-12-19 13:05:11', NULL, '2024-12-19 12:13:07', '2024-12-19 13:05:11'),
(404, 'App\\Models\\User', 2, 'qbidapp_api', '894afb6874a554578e780ca24a188662aade5156a042e22d5df7d09ba318ddc4', '[\"*\"]', '2024-12-19 16:52:51', NULL, '2024-12-19 13:36:33', '2024-12-19 16:52:51'),
(405, 'App\\Models\\User', 38, 'qbidapp_api', '8f0683a76bbd7a4090fac4fb7162787b2a8cd6c64e40921d85cb8f0bdc9e8d13', '[\"*\"]', '2024-12-20 10:32:28', NULL, '2024-12-19 17:53:57', '2024-12-20 10:32:28'),
(406, 'App\\Models\\User', 38, 'qbidapp_api', 'd45cb4b50650470de4154d400784ffb2f878a64a22735b3582f6bb448334e084', '[\"*\"]', '2024-12-20 17:44:35', NULL, '2024-12-20 10:33:52', '2024-12-20 17:44:35'),
(407, 'App\\Models\\User', 2, 'qbidapp_api', '5310ee9a22f74d6e7f6bfb86e970bfba87e150914942379e323773c3d8f8e958', '[\"*\"]', '2024-12-20 11:45:23', NULL, '2024-12-20 11:43:29', '2024-12-20 11:45:23'),
(408, 'App\\Models\\User', 38, 'qbidapp_api', 'a5303d05645e0c81cae0986473d39b11cab6f96e24dd20b0ff6a96c189e02bf6', '[\"*\"]', '2024-12-20 12:03:39', NULL, '2024-12-20 11:45:52', '2024-12-20 12:03:39'),
(409, 'App\\Models\\User', 2, 'qbidapp_api', '167db11c63bcef5e1873108414e4fba7a1647135c7518b093b7d24f033e95e27', '[\"*\"]', '2024-12-20 12:24:19', NULL, '2024-12-20 12:07:14', '2024-12-20 12:24:19'),
(410, 'App\\Models\\User', 38, 'qbidapp_api', 'b9a3640451ae96f532ea3d0a1096c42962f13daf3533c15f17c2c4bf6c80731d', '[\"*\"]', '2025-01-09 16:19:33', NULL, '2024-12-20 12:26:12', '2025-01-09 16:19:33'),
(411, 'App\\Models\\User', 2, 'qbidapp_api', '7482167ed5542afb8a1528fb8292fe6728f46394684f556affa5c9f7d5c0cbc1', '[\"*\"]', '2024-12-20 12:51:32', NULL, '2024-12-20 12:51:15', '2024-12-20 12:51:32'),
(412, 'App\\Models\\User', 38, 'qbidapp_api', 'f9dca1b423b9bcb7bfb4b7e1a4afd8d9d0e00fe4c2c015641fa74070155ff4de', '[\"*\"]', '2024-12-20 12:59:56', NULL, '2024-12-20 12:52:04', '2024-12-20 12:59:56'),
(413, 'App\\Models\\User', 2, 'qbidapp_api', '5c2f44efd47ba3e91eb7d97c98b307d9ec4a80f7c4be095dd7dcc217cf2e4317', '[\"*\"]', '2024-12-20 13:04:05', NULL, '2024-12-20 13:00:10', '2024-12-20 13:04:05'),
(414, 'App\\Models\\User', 38, 'qbidapp_api', '360e3deffd1c85f320edcb819aed7c458a170069054e9eced35160e61a128c9b', '[\"*\"]', '2024-12-20 15:06:54', NULL, '2024-12-20 13:04:23', '2024-12-20 15:06:54'),
(415, 'App\\Models\\User', 2, 'qbidapp_api', '8a12e15f9c550f30275afe75f2cb5c7ad21ff2be6869257c079611f9f5e37fdf', '[\"*\"]', '2024-12-20 14:41:36', NULL, '2024-12-20 14:18:49', '2024-12-20 14:41:36'),
(416, 'App\\Models\\User', 38, 'qbidapp_api', '52fef7068ed13ceb12161ad69542523b5d71344610586409afdb51ecf13c3bca', '[\"*\"]', '2024-12-20 15:51:51', NULL, '2024-12-20 14:45:45', '2024-12-20 15:51:51'),
(417, 'App\\Models\\User', 38, 'qbidapp_api', '8f797ba430ec6c66c076b1e6449078a80192f2a879207e9eb5593bbb72050ea7', '[\"*\"]', '2024-12-20 18:08:53', NULL, '2024-12-20 15:56:28', '2024-12-20 18:08:53'),
(418, 'App\\Models\\User', 65, 'qbidapp_api', '8ce26f75f976ae5ca7cc55654c35753493a0f828a35a698ad7be30bc12b2b75b', '[\"*\"]', '2024-12-30 09:12:05', NULL, '2024-12-20 18:09:14', '2024-12-30 09:12:05'),
(419, 'App\\Models\\User', 72, 'qbidapp_api', '8b5fdb3ece6b0d22779da5f911c993b9b597c19f75f6a1d3538a5a4104d4d4ae', '[\"*\"]', '2024-12-22 03:25:20', NULL, '2024-12-22 02:11:17', '2024-12-22 03:25:20'),
(420, 'App\\Models\\User', 38, 'qbidapp_api', '233955b6ca78a08a9e43d5469c0c53efa3b3f4b21061668bace24825fe2fe3a6', '[\"*\"]', NULL, NULL, '2024-12-23 11:53:19', '2024-12-23 11:53:19'),
(421, 'App\\Models\\User', 38, 'qbidapp_api', '6d95acd20d5403dc76aa68e926c121db0b862b8c484e5394646cdce3dd5b6592', '[\"*\"]', NULL, NULL, '2024-12-23 11:53:25', '2024-12-23 11:53:25'),
(422, 'App\\Models\\User', 38, 'qbidapp_api', '3f7a0a5a50a4edefcefda995f08d4ef81feeae46ce9cbbe996516004a3670b62', '[\"*\"]', '2024-12-23 16:45:41', NULL, '2024-12-23 11:54:00', '2024-12-23 16:45:41'),
(423, 'App\\Models\\User', 65, 'qbidapp_api', '345503d0a545673c554504037745b629ea93d6fe9c81c23e91717b86b6671141', '[\"*\"]', '2024-12-23 16:45:05', NULL, '2024-12-23 11:57:43', '2024-12-23 16:45:05'),
(424, 'App\\Models\\User', 65, 'qbidapp_api', '0394fcd40086c36edb45eed0ad904e6b2b61d55343721f7accc39388163ddda2', '[\"*\"]', '2024-12-23 16:49:37', NULL, '2024-12-23 16:45:27', '2024-12-23 16:49:37'),
(425, 'App\\Models\\User', 38, 'qbidapp_api', '0f797974dc4cdc1c540ea826a4c1d50fcbba080b8077e853420aa2e3d163e69a', '[\"*\"]', '2024-12-30 09:31:17', NULL, '2024-12-23 16:47:50', '2024-12-30 09:31:17'),
(426, 'App\\Models\\User', 38, 'qbidapp_api', '64fa229834c67a883963ab5e751347df88eddc2f084ff7baf8d3c44af22dd2c2', '[\"*\"]', '2024-12-30 09:14:28', NULL, '2024-12-30 09:12:57', '2024-12-30 09:14:28'),
(427, 'App\\Models\\User', 2, 'qbidapp_api', '923e1d688e379eec4f01f1c9e5a7ba55b73115238a0c460bfd04d21aaa532a22', '[\"*\"]', '2024-12-30 10:11:42', NULL, '2024-12-30 09:39:05', '2024-12-30 10:11:42'),
(428, 'App\\Models\\User', 38, 'qbidapp_api', 'bf9913789c9a8814a119bd022ee13ad08b5f940fd0505906c81e392632e23c20', '[\"*\"]', '2024-12-30 10:28:22', NULL, '2024-12-30 10:12:44', '2024-12-30 10:28:22'),
(429, 'App\\Models\\User', 2, 'qbidapp_api', '27436434d1fd3a81b287530012df4657bac9a600d64e9cdc7d3af272489243b2', '[\"*\"]', '2024-12-30 11:18:55', NULL, '2024-12-30 10:28:45', '2024-12-30 11:18:55'),
(430, 'App\\Models\\User', 38, 'qbidapp_api', '09523043cdbdaea891b5d1b729274e0b951d69224e24d1a70a1d2547b8c1a321', '[\"*\"]', '2024-12-30 11:26:47', NULL, '2024-12-30 11:19:22', '2024-12-30 11:26:47'),
(431, 'App\\Models\\User', 2, 'qbidapp_api', 'fddbb7fd3d4c20ab5c4d6ba71331b0ac4ec67aabfe64f861ebd11cc6036250c9', '[\"*\"]', '2024-12-30 11:27:05', NULL, '2024-12-30 11:27:03', '2024-12-30 11:27:05'),
(432, 'App\\Models\\User', 2, 'qbidapp_api', 'a316d219be1a07a9994c95bcd1ba4cfe4e9c8918ac2f95de39a2e5719174a466', '[\"*\"]', '2024-12-30 11:30:36', NULL, '2024-12-30 11:27:04', '2024-12-30 11:30:36'),
(433, 'App\\Models\\User', 38, 'qbidapp_api', '4502acbfb5190ccc86fb446aef92ec803c31bd2ea77955f944e3254fd021f976', '[\"*\"]', NULL, NULL, '2024-12-30 11:31:29', '2024-12-30 11:31:29'),
(434, 'App\\Models\\User', 38, 'qbidapp_api', '42e7d681ef94a1cf99ac58f26d8ad482e12b0dc434e9acad33f9b569130ae1b2', '[\"*\"]', NULL, NULL, '2024-12-30 11:31:35', '2024-12-30 11:31:35'),
(435, 'App\\Models\\User', 38, 'qbidapp_api', '273355726a486a786f7f65e5c31827b9e661ecf20b45891745f34afc7a04bd2e', '[\"*\"]', '2024-12-30 11:42:25', NULL, '2024-12-30 11:32:02', '2024-12-30 11:42:25'),
(436, 'App\\Models\\User', 2, 'qbidapp_api', '58342eb6d0dc30e2a6c835a1822012892dab8726ea5458c51809d711a4dbfce7', '[\"*\"]', '2024-12-30 11:45:19', NULL, '2024-12-30 11:42:49', '2024-12-30 11:45:19'),
(437, 'App\\Models\\User', 65, 'qbidapp_api', '3f7da67329f28ea68be857975ce0e5ce3016c62eec6f49fa8f28b8a9c7885b61', '[\"*\"]', '2024-12-30 12:01:53', NULL, '2024-12-30 11:45:37', '2024-12-30 12:01:53'),
(438, 'App\\Models\\User', 38, 'qbidapp_api', '487857ba82d22c302ed4325b57f9882ad9ed5ad9cb16a66471ed946dd4214701', '[\"*\"]', '2024-12-30 15:52:37', NULL, '2024-12-30 11:52:22', '2024-12-30 15:52:37'),
(439, 'App\\Models\\User', 65, 'qbidapp_api', 'a4cf004f2d28136f935011b04c78e59ecab775abba5f7d95a2182bd23b4a7f2b', '[\"*\"]', '2024-12-30 12:00:06', NULL, '2024-12-30 12:00:05', '2024-12-30 12:00:06'),
(440, 'App\\Models\\User', 65, 'qbidapp_api', '3efae95198d8fb0209a64759c49c903f8b72701d92ea1eceb399345aa30f74de', '[\"*\"]', '2024-12-30 13:39:13', NULL, '2024-12-30 12:00:05', '2024-12-30 13:39:13'),
(441, 'App\\Models\\User', 38, 'qbidapp_api', '3b61222579a8f4e0a538f6f50bcd950dcc10176949d2d67d5526e6ed2994ecbf', '[\"*\"]', '2024-12-30 13:39:45', NULL, '2024-12-30 13:39:31', '2024-12-30 13:39:45'),
(442, 'App\\Models\\User', 38, 'qbidapp_api', 'ec5cd46b3749796ff3d75be9fd105c97928a5b55e7bad3bcbe57961dd194a5af', '[\"*\"]', '2024-12-30 13:43:49', NULL, '2024-12-30 13:40:17', '2024-12-30 13:43:49'),
(443, 'App\\Models\\User', 65, 'qbidapp_api', '9d1c0cb2a3398818cbda66ffcf58129faae4dbb64338d5c972f0a96a5d8ac3fe', '[\"*\"]', '2024-12-30 14:38:24', NULL, '2024-12-30 13:44:17', '2024-12-30 14:38:24'),
(444, 'App\\Models\\User', 38, 'qbidapp_api', '05fce0fcc896748d96721d27772a993240f79215c04fb8718445524a99bb6f76', '[\"*\"]', '2024-12-30 15:53:57', NULL, '2024-12-30 14:27:25', '2024-12-30 15:53:57'),
(445, 'App\\Models\\User', 2, 'qbidapp_api', '81aaef44fd30ad0e6c65726dea03a1198b34446f115bdcbb51608f6b4052dd21', '[\"*\"]', '2025-01-02 14:00:55', NULL, '2025-01-02 11:16:00', '2025-01-02 14:00:55'),
(446, 'App\\Models\\User', 38, 'qbidapp_api', '88c12ff6b3b8ed381bf251f845dcbc61f7cd8a10fff62ccef24675056252b210', '[\"*\"]', '2025-01-02 14:18:13', NULL, '2025-01-02 14:01:29', '2025-01-02 14:18:13'),
(447, 'App\\Models\\User', 2, 'qbidapp_api', '643989ae70ddf2b63d410a8aed2fa9eebd750288706a5e9b2ab50e75eedf8faf', '[\"*\"]', '2025-01-02 14:21:01', NULL, '2025-01-02 14:19:05', '2025-01-02 14:21:01'),
(448, 'App\\Models\\User', 38, 'qbidapp_api', '09126f7ad15fadc58b4dfff7bfa3908a12e78f435fdbc991aa3d7ba6403c72c9', '[\"*\"]', '2025-01-02 15:07:40', NULL, '2025-01-02 14:21:36', '2025-01-02 15:07:40'),
(449, 'App\\Models\\User', 38, 'qbidapp_api', '4fb527660c845d360e81bf8cbcd91753866f7388333a0556c864d411655dec84', '[\"*\"]', '2025-01-02 15:19:04', NULL, '2025-01-02 15:14:51', '2025-01-02 15:19:04'),
(450, 'App\\Models\\User', 65, 'qbidapp_api', '629a67b03bf4d2fcbca183d6630e9998d1f4c03581c35143f34c7a3403c9d5d9', '[\"*\"]', '2025-01-02 15:23:15', NULL, '2025-01-02 15:19:26', '2025-01-02 15:23:15'),
(451, 'App\\Models\\User', 2, 'qbidapp_api', 'c446f4233f143a86828591f729d1f7ecaba1dfbce10f15df88417064df6697e7', '[\"*\"]', '2025-01-02 15:24:43', NULL, '2025-01-02 15:23:35', '2025-01-02 15:24:43'),
(452, 'App\\Models\\User', 38, 'qbidapp_api', '77f8d474b6f27cdcc13488fd031846604a5abb0806f6f83ef91fb65cd997a471', '[\"*\"]', '2025-01-02 15:25:10', NULL, '2025-01-02 15:25:06', '2025-01-02 15:25:10'),
(453, 'App\\Models\\User', 38, 'qbidapp_api', '56730f0791bad69c825c48f848ed110bf5d4b3f5740a9031020905889e6b872e', '[\"*\"]', '2025-01-02 15:26:39', NULL, '2025-01-02 15:25:06', '2025-01-02 15:26:39'),
(454, 'App\\Models\\User', 2, 'qbidapp_api', '47894598b3ec2a13d16692293ee56702e85ab58b0f35ddc50663db159b08bc18', '[\"*\"]', '2025-01-02 15:28:08', NULL, '2025-01-02 15:27:21', '2025-01-02 15:28:08'),
(455, 'App\\Models\\User', 74, 'qbidapi', '49e68a9394311718a118bd9693f6ffc3a23806140513de46e0b0df2a4037ba5b', '[\"*\"]', '2025-01-08 16:04:19', NULL, '2025-01-08 15:44:08', '2025-01-08 16:04:19'),
(456, 'App\\Models\\User', 75, 'qbidapi', 'b158b7d77bc03cc335d76635ef7de4ed117e5f1f3c4d234ed00607acfa7c82d4', '[\"*\"]', '2025-01-08 17:33:25', NULL, '2025-01-08 16:06:13', '2025-01-08 17:33:25'),
(457, 'App\\Models\\User', 76, 'qbidapi', 'b36269ec798a412ccaabf3bbbc9913f826f5b80cdf4e1bb83fcded9d9272ec41', '[\"*\"]', '2025-01-08 17:39:54', NULL, '2025-01-08 17:39:07', '2025-01-08 17:39:54'),
(458, 'App\\Models\\User', 74, 'qbidapp_api', '7a6c68914ea36ad3d4c83f0331e37ba7c0d5a748f18c47866c2057b843d7143c', '[\"*\"]', '2025-01-08 17:41:01', NULL, '2025-01-08 17:40:08', '2025-01-08 17:41:01'),
(459, 'App\\Models\\User', 75, 'qbidapp_api', '06375cc23e4d09abb0b2d5f235d87ecf813fba92b13f600a265abd0122bddf5f', '[\"*\"]', '2025-01-08 17:43:01', NULL, '2025-01-08 17:41:17', '2025-01-08 17:43:01'),
(460, 'App\\Models\\User', 74, 'qbidapp_api', 'e4f9ec34d8154af5977aa10b9cb9ab77918d646e3510baefa5e781d6750f7e1f', '[\"*\"]', '2025-01-10 01:15:21', NULL, '2025-01-08 17:43:14', '2025-01-10 01:15:21'),
(461, 'App\\Models\\User', 2, 'qbidapp_api', '9258a101fe7e94e3cc7af811bbe11aa54eaa6df0f8350b26c657174800bfd27f', '[\"*\"]', '2025-01-09 08:34:41', NULL, '2025-01-09 08:33:31', '2025-01-09 08:34:41'),
(462, 'App\\Models\\User', 38, 'qbidapp_api', 'c10e3449f2d2711f3ab2f36941db3591959ff5bc4fc89b65cdd85c74b4ced727', '[\"*\"]', '2025-01-09 11:23:26', NULL, '2025-01-09 08:39:55', '2025-01-09 11:23:26'),
(463, 'App\\Models\\User', 2, 'qbidapp_api', '82041244f5c567df0db05610ee4f66c1a25c69ae2f219d4a27e7cdb551e0aa5d', '[\"*\"]', '2025-01-09 11:24:24', NULL, '2025-01-09 11:23:48', '2025-01-09 11:24:24'),
(464, 'App\\Models\\User', 38, 'qbidapp_api', '92e58850218324e856e427562957f817cd5888209c0861a03318ec961109250a', '[\"*\"]', '2025-01-09 11:39:03', NULL, '2025-01-09 11:25:32', '2025-01-09 11:39:03'),
(465, 'App\\Models\\User', 2, 'qbidapp_api', '7ebd9a96cfa87d87d2d6d4ed4189db62a2b7d9f301753bec03378eb714303ed5', '[\"*\"]', '2025-01-09 11:40:22', NULL, '2025-01-09 11:39:17', '2025-01-09 11:40:22'),
(466, 'App\\Models\\User', 38, 'qbidapp_api', 'f1b15c61db4595c0e3fb049de8979f5a53522d368b4a1a7ac21afee0a92f5ba5', '[\"*\"]', '2025-01-14 13:32:55', NULL, '2025-01-09 11:43:25', '2025-01-14 13:32:55'),
(467, 'App\\Models\\User', 2, 'qbidapp_api', '33e47cd0ceffbf65ef6ab04bdc36ec5d1eed25b77b96ed1f0250589a122cabb4', '[\"*\"]', '2025-01-09 11:44:00', NULL, '2025-01-09 11:43:53', '2025-01-09 11:44:00'),
(468, 'App\\Models\\User', 2, 'qbidapp_api', '04e8ed9693c9715de8cbff9b8a8de5b0a35e02235f5d4facc505764eaf8b6621', '[\"*\"]', '2025-01-13 11:03:01', NULL, '2025-01-09 11:43:54', '2025-01-13 11:03:01'),
(469, 'App\\Models\\User', 75, 'qbidapp_api', '654853e4eb6559d852f3897a03445f5cc79403bbfe5e1c8aaa4319258e65915e', '[\"*\"]', '2025-01-10 01:15:44', NULL, '2025-01-10 01:15:35', '2025-01-10 01:15:44'),
(470, 'App\\Models\\User', 2, 'qbidapp_api', '4f94f31c3727a79b0bc6199ff5482cf414c5c6b59eeb0793d47edc2490adaa1f', '[\"*\"]', '2025-01-13 11:34:49', NULL, '2025-01-13 11:10:48', '2025-01-13 11:34:49'),
(471, 'App\\Models\\User', 38, 'qbidapp_api', '371d2867ff9e2b4f0780cad73d423b852041a28e1836b910580967dcf58e0092', '[\"*\"]', '2025-01-13 11:39:48', NULL, '2025-01-13 11:35:14', '2025-01-13 11:39:48'),
(472, 'App\\Models\\User', 2, 'qbidapp_api', '6f4049d371f255c507b78f4dd9db8ea4cc3c4bc42c6b3525511ded8b597838ae', '[\"*\"]', '2025-01-13 11:47:39', NULL, '2025-01-13 11:40:30', '2025-01-13 11:47:39'),
(473, 'App\\Models\\User', 38, 'qbidapp_api', 'de763a77b5822fe211455ad423a6053693af58dc41aea65dceb3362539f9296b', '[\"*\"]', '2025-01-13 12:29:39', NULL, '2025-01-13 11:48:21', '2025-01-13 12:29:39'),
(474, 'App\\Models\\User', 2, 'qbidapp_api', '349728d371a479c334d648ece7172e9e79e3224080297cf108c11bd67d308e00', '[\"*\"]', '2025-01-13 12:42:35', NULL, '2025-01-13 12:30:22', '2025-01-13 12:42:35'),
(475, 'App\\Models\\User', 38, 'qbidapp_api', '118416689ec8f650ddc1b4510c4e9da3f0fca61441e7ee639e860f70b42bf499', '[\"*\"]', '2025-01-13 12:50:55', NULL, '2025-01-13 12:45:21', '2025-01-13 12:50:55'),
(476, 'App\\Models\\User', 2, 'qbidapp_api', 'f54142e5f233a44f2aa502fbd53b159464b7ce3c73c970a52c662e526922e326', '[\"*\"]', '2025-01-13 14:12:05', NULL, '2025-01-13 12:51:22', '2025-01-13 14:12:05'),
(477, 'App\\Models\\User', 38, 'qbidapp_api', 'a4ae0087f4d25e46445675402c96fcf004db076989279825d0f38fa49809bbd5', '[\"*\"]', '2025-01-13 14:16:01', NULL, '2025-01-13 14:14:07', '2025-01-13 14:16:01'),
(478, 'App\\Models\\User', 2, 'qbidapp_api', '0a17834a8a9e3d0db110968fc9b564597d377ad60fd26a0d84d7ea353b766f28', '[\"*\"]', '2025-01-13 14:36:39', NULL, '2025-01-13 14:16:44', '2025-01-13 14:36:39'),
(479, 'App\\Models\\User', 38, 'qbidapp_api', '4eb774e587feafe959f26e57f02ea71a64936299ad99248367ae08e70e4264b3', '[\"*\"]', '2025-01-13 14:45:26', NULL, '2025-01-13 14:39:38', '2025-01-13 14:45:26'),
(480, 'App\\Models\\User', 2, 'qbidapp_api', '5b1970a451a96bc965b524ce2992d0c8da6d89f2160fe1dfe4a6cdf83cd7c601', '[\"*\"]', '2025-01-13 14:50:03', NULL, '2025-01-13 14:45:59', '2025-01-13 14:50:03'),
(481, 'App\\Models\\User', 2, 'qbidapp_api', '6256bd277cc188f9972020cdc49212b5d32f1ab4dd865d430014e2a654568cc5', '[\"*\"]', '2025-01-14 13:32:11', NULL, '2025-01-14 12:08:34', '2025-01-14 13:32:11'),
(482, 'App\\Models\\User', 77, 'qbidapi', '4a40ff045610b0f7ddbdb146be4593fb50a0905b010d75a4630c6bc2294c11bc', '[\"*\"]', '2025-01-14 16:17:56', NULL, '2025-01-14 16:15:03', '2025-01-14 16:17:56'),
(483, 'App\\Models\\User', 74, 'qbidapp_api', '45de7bcaa235896e83f15f5972078066411c6d24701bdd0f9e7052b0b69ba419', '[\"*\"]', NULL, NULL, '2025-01-14 16:18:10', '2025-01-14 16:18:10'),
(484, 'App\\Models\\User', 75, 'qbidapp_api', 'cef68cae129d83e6fd826ab88c1cd34f12a221af2dd58eac0f543be53f184269', '[\"*\"]', '2025-01-14 16:19:38', NULL, '2025-01-14 16:18:37', '2025-01-14 16:19:38'),
(485, 'App\\Models\\User', 77, 'qbidapp_api', 'd00ca532d10892c91fa34322154996a21cf840b4db58c78979fc30a33dd01205', '[\"*\"]', '2025-01-14 16:20:35', NULL, '2025-01-14 16:19:54', '2025-01-14 16:20:35'),
(486, 'App\\Models\\User', 75, 'qbidapp_api', '320dae780556f37561cfd416d03a56e4e74a61949f85b3aa7021e6675042b19c', '[\"*\"]', '2025-01-14 16:22:01', NULL, '2025-01-14 16:20:55', '2025-01-14 16:22:01'),
(487, 'App\\Models\\User', 72, 'qbidapp_api', 'c6ba0c529f2a1b9ff966aec08417f0e497d85010334cc1912c68f55d5236498e', '[\"*\"]', '2025-01-23 20:27:01', NULL, '2025-01-17 17:29:18', '2025-01-23 20:27:01'),
(488, 'App\\Models\\User', 72, 'qbidapp_api', 'f3a9a8d421e50f813b77027caa2b80cc99c8523745a807699940cb39b8679dce', '[\"*\"]', '2025-01-29 23:04:23', NULL, '2025-01-29 22:54:43', '2025-01-29 23:04:23'),
(489, 'App\\Models\\User', 2, 'qbidapp_api', 'a5af5b0d6fa1e1b14e82f04f206d4a17eace137a2b582920a35b64b8164f4c84', '[\"*\"]', '2025-03-05 10:26:36', NULL, '2025-03-05 10:15:59', '2025-03-05 10:26:36'),
(490, 'App\\Models\\User', 38, 'qbidapp_api', 'ff030a8cf2ce44b952e0865ffc10e9cbcf51387900f437f0759612a1b0955899', '[\"*\"]', '2025-04-06 08:16:49', NULL, '2025-03-05 10:28:26', '2025-04-06 08:16:49'),
(491, 'App\\Models\\User', 72, 'qbidapp_api', '8ba83105677fdf897abf9c61645bb39bedcbbca2eb3c717b06ddd054fd65f0da', '[\"*\"]', '2025-05-20 03:27:29', NULL, '2025-04-14 16:41:20', '2025-05-20 03:27:29'),
(492, 'App\\Models\\User', 72, 'qbidapp_api', '02e8d2e34197d0439b073d274a715502f1688df36314c51d04aa4381fc030ef5', '[\"*\"]', NULL, NULL, '2025-05-20 03:31:15', '2025-05-20 03:31:15'),
(493, 'App\\Models\\User', 72, 'qbidapp_api', 'fd912383bcc76694497994f0942b25777e7abd42d6c3fa433ae82e161a7ba99f', '[\"*\"]', NULL, NULL, '2025-05-20 03:32:05', '2025-05-20 03:32:05'),
(494, 'App\\Models\\User', 72, 'qbidapp_api', '31030ff2902f86d5fd880d90c3fdca42327aa22a4e54905acc6dffdb872b4b0e', '[\"*\"]', NULL, NULL, '2025-05-20 03:32:14', '2025-05-20 03:32:14'),
(495, 'App\\Models\\User', 72, 'qbidapp_api', 'ec3dc495d39cc93f984c563de862548ed408a3d4b1e2457a5a70eb254aae688b', '[\"*\"]', NULL, NULL, '2025-05-20 03:32:42', '2025-05-20 03:32:42'),
(496, 'App\\Models\\User', 72, 'qbidapp_api', 'f5eb281d5f919e06aa12307f3f227316b7c800795d5c6d96efb0277adbacb4ce', '[\"*\"]', NULL, NULL, '2025-05-20 03:34:22', '2025-05-20 03:34:22'),
(497, 'App\\Models\\User', 72, 'qbidapp_api', '7249cc20dae452ec23b226b7a9a9cd960a34903c1bb868f1a2bb82c2f4f530cb', '[\"*\"]', NULL, NULL, '2025-05-20 03:34:27', '2025-05-20 03:34:27'),
(498, 'App\\Models\\User', 78, 'qbidapi', '561ecb66adc1024fcc80f2e4534037f39793241ec95efe20f4b5dc3bd0b2b5d7', '[\"*\"]', '2025-07-11 01:50:22', NULL, '2025-07-11 01:49:09', '2025-07-11 01:50:22'),
(499, 'App\\Models\\User', 78, 'qbidapp_api', '19e4ba76fe620e6f0bec4f953fc4605f0faa0c41decaeb42e4c55d361618b6fe', '[\"*\"]', NULL, NULL, '2025-07-28 23:28:15', '2025-07-28 23:28:15'),
(500, 'App\\Models\\User', 79, 'qbidapi', '374541edfe6038a565292054ba5d94618de38462ae3844670ba15ccd6d5e0c9d', '[\"*\"]', '2025-07-28 23:50:17', NULL, '2025-07-28 23:33:58', '2025-07-28 23:50:17'),
(501, 'App\\Models\\User', 79, 'qbidapp_api', 'fcc915c97c6e3896fb2acdd8ec5cdbe8da21caf27069b556fba307a9902fac96', '[\"*\"]', NULL, NULL, '2025-07-29 00:39:16', '2025-07-29 00:39:16'),
(502, 'App\\Models\\User', 78, 'qbidapp_api', '0aca5d3c2ed65b43faca61e6e5b57e51374076ff25b8255c1881f93c97b68752', '[\"*\"]', NULL, NULL, '2025-07-29 00:39:39', '2025-07-29 00:39:39'),
(503, 'App\\Models\\User', 78, 'qbidapp_api', '004a043076fbb3fadcfc52a8e6304589bf970f357cf452ba78776b43cecdcd57', '[\"*\"]', NULL, NULL, '2025-07-29 00:39:45', '2025-07-29 00:39:45'),
(504, 'App\\Models\\User', 79, 'qbidapp_api', '6c8176722be22d527f0d1f14519e097cec17d8f3d4d37dfc6438079fd020b23b', '[\"*\"]', '2025-07-29 00:44:33', NULL, '2025-07-29 00:39:58', '2025-07-29 00:44:33'),
(505, 'App\\Models\\User', 78, 'qbidapp_api', '96413fda2726d73b7e59462c9ff72ba7315c85ce35c63530834e874ae90dc0e4', '[\"*\"]', '2025-07-29 01:14:29', NULL, '2025-07-29 00:45:00', '2025-07-29 01:14:29'),
(506, 'App\\Models\\User', 78, 'qbidapp_api', '4ed99f275e71e7e5802480bbe9fdd4a1e4de95642f504a332849e032fbc67bc8', '[\"*\"]', NULL, NULL, '2025-07-29 01:14:48', '2025-07-29 01:14:48'),
(507, 'App\\Models\\User', 79, 'qbidapp_api', 'cdd6f96b8d26af67054ae060008c21ce6c9f7588663045b746875898708722e6', '[\"*\"]', '2025-07-29 01:25:04', NULL, '2025-07-29 01:15:00', '2025-07-29 01:25:04'),
(508, 'App\\Models\\User', 79, 'qbidapp_api', '3f4f700e88b0444f7d570ced7dacb5aa9ef8d94636b1d3c32b991ef243cbdc28', '[\"*\"]', NULL, NULL, '2025-07-29 01:25:20', '2025-07-29 01:25:20'),
(509, 'App\\Models\\User', 78, 'qbidapp_api', '98bcf63db02921c68ae9378f3343e6cfd49464a35ba6e3cfb975f945bd010e24', '[\"*\"]', '2025-07-30 16:10:42', NULL, '2025-07-29 01:25:37', '2025-07-30 16:10:42');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(510, 'App\\Models\\User', 79, 'qbidapp_api', '23bd884b4b113c2e38a8409e7a4433af3a347bfd919449263b9088e77f72c4a0', '[\"*\"]', '2025-07-30 16:18:45', NULL, '2025-07-30 16:11:01', '2025-07-30 16:18:45'),
(511, 'App\\Models\\User', 78, 'qbidapp_api', '2b8fd80290f7034192185866bed858c60095958924a67e19b6acd2cad98f0ba2', '[\"*\"]', '2025-08-21 02:54:13', NULL, '2025-07-30 16:19:23', '2025-08-21 02:54:13'),
(512, 'App\\Models\\User', 80, 'qbidapi', '102ef1cb9ad8ba6da125e3afaa60233a1564fe7e2e7eedbecd16c90772c9102b', '[\"*\"]', '2025-08-04 10:41:43', NULL, '2025-08-04 10:37:49', '2025-08-04 10:41:43'),
(513, 'App\\Models\\User', 81, 'qbidapi', '0e8b72924f265671727aba6c69f4451458b13b45b08181a1a14a885a9c1604ff', '[\"*\"]', '2025-08-04 11:31:29', NULL, '2025-08-04 10:43:58', '2025-08-04 11:31:29'),
(514, 'App\\Models\\User', 80, 'qbidapp_api', 'ff609639b7e8bbb2e1fae9647f1639770a2aea0d35d20244bb0379729ebc09ac', '[\"*\"]', '2025-08-04 11:49:05', NULL, '2025-08-04 11:32:07', '2025-08-04 11:49:05'),
(515, 'App\\Models\\User', 81, 'qbidapp_api', 'c9ab56b7d22a5c3f9b3389d0d261b8800f376132d0cbd4747156c000416877a0', '[\"*\"]', '2025-08-07 08:28:04', NULL, '2025-08-04 11:49:33', '2025-08-07 08:28:04'),
(516, 'App\\Models\\User', 80, 'qbidapp_api', '576fa731667365b49d5c443a1b720a963cb5a0dfce261cabd7e944cc3953dea5', '[\"*\"]', '2025-08-04 11:59:30', NULL, '2025-08-04 11:59:27', '2025-08-04 11:59:30'),
(517, 'App\\Models\\User', 80, 'qbidapp_api', 'e8e8320cca2e8b2f34fa3563760b3212dd2d5030d877a601d28cead52e5aaaa1', '[\"*\"]', '2025-08-18 11:48:25', NULL, '2025-08-04 11:59:29', '2025-08-18 11:48:25'),
(518, 'App\\Models\\User', 80, 'qbidapp_api', 'c9c27a133c4ea2c313225df8ff98708034d57c8a559999d7b9d84b6eb7e0ce85', '[\"*\"]', '2025-08-05 14:27:02', NULL, '2025-08-05 12:47:43', '2025-08-05 14:27:02'),
(519, 'App\\Models\\User', 82, 'qbidapi', 'c11e9dd4e24492c9c1b8e3d576f890d5a0aebae2b5943f65a436a9a56a038f0a', '[\"*\"]', '2025-08-07 22:11:05', NULL, '2025-08-07 22:06:37', '2025-08-07 22:11:05'),
(520, 'App\\Models\\User', 83, 'qbidapi', 'e8ba9d66f70c3f3867dff655493b9888f3a34a05241ec56e8a70ded757994c92', '[\"*\"]', '2025-08-07 22:18:16', NULL, '2025-08-07 22:14:43', '2025-08-07 22:18:16'),
(521, 'App\\Models\\User', 82, 'qbidapp_api', 'c5795c23b759f688f914abc48ff4986cf55974cd42d5a7ea27a4433db797a884', '[\"*\"]', '2025-08-07 22:20:00', NULL, '2025-08-07 22:18:28', '2025-08-07 22:20:00'),
(522, 'App\\Models\\User', 83, 'qbidapp_api', '57c4a139d800eb08e9c6dd770dedf3048ae3808cacec7c606fd31f1ce927513a', '[\"*\"]', '2025-08-09 02:47:51', NULL, '2025-08-07 22:20:15', '2025-08-09 02:47:51'),
(523, 'App\\Models\\User', 80, 'qbidapp_api', '7bd38373b49433a7ce347f91df9bf8fc7df06ba1280fafef63be1f6b7440bc4c', '[\"*\"]', '2025-08-08 11:06:40', NULL, '2025-08-08 09:06:12', '2025-08-08 11:06:40'),
(524, 'App\\Models\\User', 81, 'qbidapp_api', 'aa644bdf191a1532c9af79c36ffc64da1d772a1516a01ca64861f5aaeabdd998', '[\"*\"]', '2025-08-11 09:25:22', NULL, '2025-08-08 11:07:04', '2025-08-11 09:25:22'),
(525, 'App\\Models\\User', 82, 'qbidapp_api', 'f0100887dfe99023903d9fa03d5f35c1525661eb9285c36f5e052f3b95297e54', '[\"*\"]', '2025-08-09 02:48:13', NULL, '2025-08-09 02:48:01', '2025-08-09 02:48:13'),
(526, 'App\\Models\\User', 80, 'qbidapp_api', 'abbacdd9e88f8bec302f2972f5a14c6134662c07aed671f334c6e21146cf45ce', '[\"*\"]', '2025-08-11 09:40:38', NULL, '2025-08-11 09:26:03', '2025-08-11 09:40:38'),
(527, 'App\\Models\\User', 81, 'qbidapp_api', '52a97fc58e44698dd16a8c95906e435531eebd1435161868ec3efb2423990a5b', '[\"*\"]', '2025-08-11 10:54:30', NULL, '2025-08-11 09:41:00', '2025-08-11 10:54:30'),
(528, 'App\\Models\\User', 81, 'qbidapp_api', 'cbe7955f8c44976894db59312ecbd93c0abba99ed548eb55fdf279a1adeeba57', '[\"*\"]', '2025-08-18 12:33:23', NULL, '2025-08-11 11:22:46', '2025-08-18 12:33:23'),
(529, 'App\\Models\\User', 80, 'qbidapp_api', '8f63a725fd03eb9b2607faa3c12adf7a411ffc15d59d4ba72a0b35d347939cba', '[\"*\"]', '2025-08-18 12:47:29', NULL, '2025-08-18 12:33:47', '2025-08-18 12:47:29'),
(530, 'App\\Models\\User', 79, 'qbidapp_api', 'a8791cd58b7b9af54aa58b916cc4a2a815cabe7627e67c9ae5b825b5d93523fd', '[\"*\"]', '2025-08-21 03:20:29', NULL, '2025-08-21 03:11:50', '2025-08-21 03:20:29'),
(531, 'App\\Models\\User', 84, 'qbidapi', '3a5deb30e03887490629ddd61893fa916b2b0a0f6139e673c050dc573e23a948', '[\"*\"]', '2025-08-21 03:59:31', NULL, '2025-08-21 03:26:48', '2025-08-21 03:59:31'),
(532, 'App\\Models\\User', 79, 'qbidapp_api', 'b33fa93e164e8b0d7b4de1f26a805bb73056e22b6276fc8b6d3680d3f63ebbc2', '[\"*\"]', '2025-08-21 04:03:05', NULL, '2025-08-21 03:59:50', '2025-08-21 04:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `negotiator_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `quoted_price` varchar(255) DEFAULT NULL,
  `asking_price` varchar(255) DEFAULT NULL,
  `offering_percentage` varchar(255) DEFAULT NULL,
  `negotiator_amount` int(11) DEFAULT 0,
  `service_preference` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `lat` varchar(250) DEFAULT NULL,
  `lng` varchar(250) DEFAULT NULL,
  `status` enum('review','pending','onGoing','accepted','rejected','completed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `user_id`, `negotiator_id`, `title`, `state`, `city`, `quoted_price`, `asking_price`, `offering_percentage`, `negotiator_amount`, `service_preference`, `notes`, `type`, `lat`, `lng`, `status`, `created_at`, `updated_at`) VALUES
(159, '79', 78, 'My truck Repairs', 'tx', 'Fort Worth', '3680.00', '2950', '10', 73, 'Heavy Duty Vehicles', 'please hurry also need a loaner if so it would be a huge way of securing my Business can you please hurry', 'quote', '34.1171873', '-84.5300737', 'onGoing', '2025-07-28 23:50:06', '2025-07-29 01:21:14'),
(160, '79', 80, 'Fix my truck engine', 'tx', 'celina', '4500.00', '3500.00', '10', 100, 'Auto repair', 'engine blew up needs a new engine the dealership said it would take forever', 'quote', '40.8225576', '-81.5017233', 'onGoing', '2025-07-30 16:18:35', '2025-08-21 03:14:12'),
(163, '81', 80, 'testing', 'USA', '15456', '250', '200', '10', 5, 'Auto repair', 'sdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'quote', '37.4220936', '-122.083922', 'review', '2025-08-04 13:40:31', '2025-08-11 09:42:26'),
(164, '81', 80, 'testsda', 'USA', '25455', '480', '400', '10', 8, 'Auto repair', 'sahiddiasdyasdiy', 'quote', '37.4220936', '-122.083922', 'completed', '2025-08-05 13:25:48', '2025-08-11 11:44:28'),
(165, '82', NULL, 'Car Paint', 'New York', '10001', '100000000', '1000', '2', 1999980, 'Auto repair', 'cfffffffffffff', 'quote', '24.860734', '67.001136', 'pending', '2025-08-07 22:19:53', '2025-08-07 22:19:53'),
(166, '81', 80, 'test bid', 'USA', '3565', '300', '250', '10', 5, 'Auto repair', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'quote', '37.4220936', '-122.083922', 'review', '2025-08-11 10:36:31', '2025-08-11 13:02:55'),
(167, '81', 80, 'testing', 'USA', '3546', '520', '500', '10', 2, 'Auto repair', 'Welcome to Gboard clipboard, any text you copy will be saved here.Welcome to Gboard clipboard, any text you copy will be saved here.', 'quote', 'undefined', 'undefined', 'onGoing', '2025-08-11 11:54:34', '2025-08-11 14:28:33'),
(168, '81', NULL, 'tester quote', 'USA', '01234', '2500', '2000', '10', 50, 'Auto repair', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'quote', 'undefined', 'undefined', 'pending', '2025-08-18 12:30:48', '2025-08-18 12:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `quote_helps`
--

CREATE TABLE `quote_helps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `negotiator_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `service_preference` varchar(255) DEFAULT NULL,
  `offered_price` int(11) NOT NULL DEFAULT 0,
  `negotiator_tip` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `status` enum('review','pending','onGoing','accepted','rejected','completed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quote_images`
--

CREATE TABLE `quote_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quote_id` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quote_images`
--

INSERT INTO `quote_images` (`id`, `quote_id`, `image`, `created_at`, `updated_at`) VALUES
(188, '159', 'https://qbid.cstmpanel.com/uploads/quotes/c730cb2587f205c14ec32a70682616a2Qbid.jpg', '2025-07-28 23:50:06', '2025-07-28 23:50:06'),
(189, '160', 'https://qbid.cstmpanel.com/uploads/quotes/99f72185a0aa1f368932d8020341bbbbQbid.jpg', '2025-07-30 16:18:35', '2025-07-30 16:18:35'),
(190, '161', 'https://qbid.cstmpanel.com/uploads/quotes/aba3b3113566f5d4fae73666f3bb02acQbid.png', '2025-08-04 11:51:05', '2025-08-04 11:51:05'),
(192, '163', 'https://qbid.cstmpanel.com/uploads/quotes/f796d45cce979fbed673cef1f648f517Qbid.png', '2025-08-04 13:40:31', '2025-08-04 13:40:31'),
(194, '165', 'https://qbid.cstmpanel.com/uploads/quotes/ebfe4bf86e85c27a7d7da36c94f99ae5Qbid.jpg', '2025-08-07 22:19:53', '2025-08-07 22:19:53'),
(195, '164', 'https://qbid.cstmpanel.com/uploads/quotes/3d262ad017485150863aaa8aba8f4e3aQbid.jpg', '2025-08-08 11:08:03', '2025-08-08 11:08:03'),
(196, '166', 'https://qbid.cstmpanel.com/uploads/quotes/ee967cad46daca84002ca16a0037dc4cQbid.jpg', '2025-08-11 10:36:31', '2025-08-11 10:36:31'),
(197, '166', 'https://qbid.cstmpanel.com/uploads/quotes/12cca391a44eaa7ad33fede25617f215Qbid.jpg', '2025-08-11 10:36:31', '2025-08-11 10:36:31'),
(198, '167', 'https://qbid.cstmpanel.com/uploads/quotes/8c4c14d538c7bd01bcfa0d75c9794f1bQbid.jpg', '2025-08-11 11:54:34', '2025-08-11 11:54:34'),
(199, '168', 'https://qbid.cstmpanel.com/uploads/quotes/d34591ef138ce65cde13efec49b76d2dQbid.jpg', '2025-08-18 12:30:48', '2025-08-18 12:30:48'),
(200, '168', 'https://qbid.cstmpanel.com/uploads/quotes/079caeef60c26f2fa41286464bd80dfeQbid.jpg', '2025-08-18 12:30:48', '2025-08-18 12:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `reset_code_passwords`
--

CREATE TABLE `reset_code_passwords` (
  `email` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `quote_id` varchar(255) NOT NULL,
  `assign_user_id` int(11) DEFAULT NULL,
  `rating` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `quote_id`, `assign_user_id`, `rating`, `text`, `created_at`, `updated_at`) VALUES
(73, '81', '163', NULL, '3', 'hghfhfhfh', '2025-08-11 09:42:26', '2025-08-11 09:42:26'),
(74, '81', '163', NULL, '2', 'hghfhfhfh', '2025-08-11 09:44:13', '2025-08-11 09:44:13'),
(75, '81', '163', NULL, '2', 'hghfhfhfh', '2025-08-11 09:44:28', '2025-08-11 09:44:28'),
(76, '81', '163', NULL, '2', 'hghfhfhfh', '2025-08-11 09:47:19', '2025-08-11 09:47:19'),
(77, '81', '166', NULL, '2', 'sdasdasa', '2025-08-11 13:02:55', '2025-08-11 13:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supports`
--

INSERT INTO `supports` (`id`, `user_id`, `name`, `phone`, `email`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, '3', 'jhon', '242421', 'jhon@gmail.com', 'asd', 'sadlhasdjkn kjbnjk sbnjksdbk bkjsn jk', '2023-11-01 09:37:15', '2023-11-01 09:37:15'),
(2, '2', 'name', '7894561235', 'email@gmail.com', 'saskf', 'sdhfkshfkj ksdfhksdjhfk dkjfhsdkjfh kdjfhslkhf dkfjhskdjfh dkfhksjhf kdshfsfhiu kdfhiufh sdhfiue', '2023-11-02 04:54:06', '2023-11-02 04:54:06'),
(3, '2', 'name', '1231231231', 'email@gmail.com', 'subject', 'dkjfhsdkjfh dksjfhslkjfh sdkfjhskjdf skdjfhskdj ksd djdjkfks ksdjfhsb kjsdfh ksdjfh ksdjfh skdfg djfh ksdjfh', '2023-11-02 04:59:49', '2023-11-02 04:59:49'),
(4, '3', 'jhon', '242421', 'jhon@gmail.com', 'asd', 'sadlhasdjkn kjbnjk sbnjksdbk bkjsn jk', '2023-11-02 09:49:23', '2023-11-02 09:49:23'),
(5, '41', 'hi', '522225252525252525252525', 'asffgujnbcfyhbcfggvccggvc@gmail.com', 'q12wr45yhugff', 'x6gcg5c5GC6GC5TV4TV5TV5TV5TV5TV5yvy5v5TV6TV6TV6TV6TV6TV6TV6yvy6v6HV6HV6TV6HV6HV6HV6HV6h', '2024-05-10 18:07:47', '2024-05-10 18:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `language` varchar(250) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `expertise` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `email_code` varchar(250) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role` enum('admin','Qbid Negotiator','Qbid Member','Business Qbidder') DEFAULT 'Qbid Member',
  `lat` varchar(250) DEFAULT NULL,
  `lng` varchar(250) DEFAULT NULL,
  `radius` varchar(250) DEFAULT NULL,
  `rating` varchar(250) DEFAULT NULL,
  `numb_jobs_done` int(11) DEFAULT NULL,
  `coverphoto` varchar(250) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `device_token` longtext DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) DEFAULT NULL,
  `pm_type` varchar(255) DEFAULT NULL,
  `pm_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `company_name`, `email`, `phone`, `email_verified_at`, `password`, `language`, `address`, `expertise`, `city`, `state`, `email_code`, `zip`, `photo`, `role`, `lat`, `lng`, `radius`, `rating`, `numb_jobs_done`, `coverphoto`, `status`, `device_token`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(78, 'chris', 'nevins', 'Auto Craft', 'qbid@yahoo.com', '8176902562', '2025-07-11 01:49:09', '$2y$10$xCjMgWAsldpf16NcKYHjyee49GNZZtZ29GnNuNa/z.fYQvycZV2NG', '[\"English\"]', '3108 stonefield', '[\"Auto repair\",\"Heavy Duty Vehicles\",\"Medium duty mechanical repair diesel\"]', 'The colony', 'tx', NULL, '75056', 'https://qbid.cstmpanel.com/uploads/user/profiles/ba9226c56673df676ae0ab09aceebf09jpg', 'Business Qbidder', '33.4297984', '-111.8986906', '30', NULL, NULL, NULL, 'active', 'frATNvfcQh6PnB6eMtLbhL:APA91bETvE7iPNdKiNpIef4LG8mRErVDzpgnasCE503TXtEahGHA62WyDj1AfXIv-pqNIjLy1ucBVQ7IbGexqYC3N-LhXpmDj3GSpBucwN2nRidEmQywWQ8', NULL, '2025-07-11 01:49:09', '2025-08-21 02:54:14', NULL, NULL, NULL, NULL),
(79, 'chris', 'nevins', NULL, 'chrisnevins@rocketmail.com', '8176902562', '2025-07-28 23:33:58', '$2y$10$js.a33u5Vko.upr1Ojm9ZejtZ/v7ksDw8eAZTgoETsCVXaTyGzEfy', NULL, '3108 Stonefield', NULL, 'The Colony', 'Tx', NULL, '7505644', 'https://qbid.cstmpanel.com/uploads/user/profiles/59cf22358cc98433bf1b29ebbdefd07ajpg', 'Qbid Member', NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'dfrkyFlgRY-on7vCOp1Qw-:APA91bH2s45o1VZWvhMdGz95OTS1otslHFiQ1rX2H8LxY2ZO9beq7uNZ9n8vc7Wns4hu1DNokv9txzu85ptClXwobcmjkOWPFWsGrCfYXps8g-_UV3Eyxh8', NULL, '2025-07-28 23:33:58', '2025-08-21 03:11:50', NULL, NULL, NULL, NULL),
(80, 'be', '4', 'test company', 'be4@gmail.com', '1544787877', '2025-08-04 10:37:49', '$2y$10$T/Oz1ILxXTwRvUKkg/ivxe27uskY1uOF4nkAodjpzg8MvyPDNqzxW', '[\"English\"]', 'New York usa', '[\"Auto repair\"]', 'new york', 'USA', NULL, '1544', 'https://qbid.cstmpanel.com/uploads/user/profiles/bc2a8bc046bc00af1060ad08a2fe6b8cpng', 'Business Qbidder', '37.4220936', '-122.083922', '20', NULL, NULL, NULL, 'active', 'cIDUFqFFTm2HunPWasl-Ey:APA91bFBKlck72v0EWgS21vAOZU5I1QdRr5mYIzoVdpWg7O06xvPJBTngK_J72mPdMDjG-s6QCj1QeXqZ0B9KPGEl1sjpKchdm4rcd_h7WSoUyiYRoM9qp0', NULL, '2025-08-04 10:37:49', '2025-08-18 12:33:47', NULL, NULL, NULL, NULL),
(81, 'member', '2', NULL, 'member2@gmail.com', '5499978', '2025-08-04 10:43:58', '$2y$10$EWhJAcbCIsxu2spTSeZMVOM8RUlqRyGwsH9wZ1AAJt52lQmy0re2u', NULL, 'new York USA', NULL, 'New York', 'USA', NULL, '4877', 'https://qbid.cstmpanel.com/uploads/user/profiles/6b7e1539511907913c0f999f3791938ejpg', 'Qbid Member', NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'cIDUFqFFTm2HunPWasl-Ey:APA91bFBKlck72v0EWgS21vAOZU5I1QdRr5mYIzoVdpWg7O06xvPJBTngK_J72mPdMDjG-s6QCj1QeXqZ0B9KPGEl1sjpKchdm4rcd_h7WSoUyiYRoM9qp0', NULL, '2025-08-04 10:43:58', '2025-08-11 11:22:46', NULL, NULL, NULL, NULL),
(82, 'Mo', 'Mo', NULL, 'mo@gmail.com', '1234567890', '2025-08-07 22:06:37', '$2y$10$o0Ny3AXG7NhUZgySCIJfp.E4qDr9Z7PPi2WnvDaR7qAy.GgkdNzGu', NULL, 'New York', NULL, 'New York', 'New York', NULL, '1001', 'https://qbid.cstmpanel.com/uploads/user/profiles/2eade24e8c07012f99ed261f4c681d9ejpg', 'Qbid Member', NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'ddHYX7NSS0q25ejGFPfsvI:APA91bG2loyS9bo6I2rCnr2mk7YtM9ZL4VZ_0EnLbU0mP4i4Bh2nIsmABK64gJqqo3I1DgCFcnJWKCK_2T45rRVDimzR9IGhgHjPNL6Q_L7Pkvtt3ZBwnK4', NULL, '2025-08-07 22:06:37', '2025-08-07 22:06:37', NULL, NULL, NULL, NULL),
(83, 'Vendor', 'Vendor', 'Twitter', 'ven@gmail.com', '1234567890', '2025-08-07 22:14:43', '$2y$10$XlCtPVA5o8PwRa9KcTaR7.UNouH9tVjCgMRrkP2tfsFKTYpvwWMrG', '[\"English\"]', 'New York', '[\"Auto repair\",\"plumbing Projects\",\"HAVC repair\\/Replacement\",\"Handyman Projects\",\"Heavy Duty Vehicles\",\"Medium duty mechanical repair diesel\",\"Roof Replacement\",\"Home Remodel\",\"Pool Builder\\/Remodel\",\"Power Sport Mechanical Repair\",\"Garage door install or repair\",\"Painting int\\/ext\",\"Carpet\\/tile\\/wood flooring\",\"Back yard Grill installs\",\"Fence repair\\/install\",\"Landscape projects\",\"Outdoor kitchen projects\",\"Sprinkler installation projects\",\"Wedding event planners\",\"Solar installation\",\"Concrete projects\",\"Marine\\/boat\\/ Repairs\",\"RV\\/cramper\\/repairs\"]', 'New York', 'New York', NULL, '10001', 'https://qbid.cstmpanel.com/uploads/user/profiles/333126fcc476f046cc645bb5fad2fc8ajpg', 'Business Qbidder', '24.860734', '67.001136', '60', NULL, NULL, NULL, 'active', 'ddHYX7NSS0q25ejGFPfsvI:APA91bG2loyS9bo6I2rCnr2mk7YtM9ZL4VZ_0EnLbU0mP4i4Bh2nIsmABK64gJqqo3I1DgCFcnJWKCK_2T45rRVDimzR9IGhgHjPNL6Q_L7Pkvtt3ZBwnK4', NULL, '2025-08-07 22:14:43', '2025-08-07 22:14:48', NULL, NULL, NULL, NULL),
(84, 'Shawn', 'Railey', 'Shawn\'s Garage', 'nevinsdrew@gmail.com', '8178754838', '2025-08-21 03:26:48', '$2y$10$RCysFFI5bOjCdcEd8TUJEOG9r2dkCrCA0F455v1bTDK66fGJcxtke', '[\"English\"]', '6908 meadow ridge', '[\"Auto repair\",\"Medium duty mechanical repair diesel\"]', 'North Richland Hills', 'TX', NULL, '76180', 'https://qbid.cstmpanel.com/uploads/user/profiles/451c5708a36a17be8ddc93c9e9666420jpg', 'Business Qbidder', '33.4297863', '-111.8986801', '40', NULL, NULL, NULL, 'active', 'dfrkyFlgRY-on7vCOp1Qw-:APA91bH2s45o1VZWvhMdGz95OTS1otslHFiQ1rX2H8LxY2ZO9beq7uNZ9n8vc7Wns4hu1DNokv9txzu85ptClXwobcmjkOWPFWsGrCfYXps8g-_UV3Eyxh8', NULL, '2025-08-21 03:26:48', '2025-08-21 03:27:09', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bid_helps`
--
ALTER TABLE `bid_helps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bid_help_images`
--
ALTER TABLE `bid_help_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bid_images`
--
ALTER TABLE `bid_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_recipient_id_foreign` (`user_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quote_helps`
--
ALTER TABLE `quote_helps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quote_images`
--
ALTER TABLE `quote_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reset_code_passwords`
--
ALTER TABLE `reset_code_passwords`
  ADD KEY `reset_code_passwords_email_index` (`email`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `bid_helps`
--
ALTER TABLE `bid_helps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bid_help_images`
--
ALTER TABLE `bid_help_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bid_images`
--
ALTER TABLE `bid_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=533;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `quote_helps`
--
ALTER TABLE `quote_helps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `quote_images`
--
ALTER TABLE `quote_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_recipient_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
