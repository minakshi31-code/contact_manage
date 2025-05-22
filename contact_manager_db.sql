-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2025 at 07:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact_manager_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `full_name`, `mobile_number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kökten Adal', '903338859342', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(2, 'Hamma Abdurrezak', '903331563682', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(3, 'Güleycan Şensal', '903332557114', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(4, 'Suadiye Ratip', '903339163726', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(5, 'Barik Nurşide', '903333323749', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(6, 'Hanifi Emineeylem', '903332763531', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(7, 'Nakiye Oğulkan', '903336168924', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(8, 'Hamsiye Cerit', '903333544579', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(9, 'Mahfi Hülâgü', '903338937773', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(10, 'Esmeray Nurihayat', '903331688759', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(11, 'Şennur Nazifer', '903335326326', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(12, 'Çetinok Seden', '903331614182', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(13, 'Vuslat Erimşah', '903339551194', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(14, 'Şeküre Ruhiye', '903338792165', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(15, 'İmran Ümmehan', '903336971156', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(16, 'Yavuzbay Hiçsönmez', '903338839473', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(17, 'Nevzete Abdulgafur', '903331453851', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(18, 'Aksüyek Sal', '903332481491', '2025-05-21 17:58:29', '2025-05-21 18:42:13', '2025-05-21 18:42:13'),
(19, 'Ferhat Kılıçaslan', '903336861354', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(20, 'Fereç Tomurcuk', '903334141534', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(21, 'Balkız Alabegüm', '903338826359', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(22, 'Adulle Nesim', '903335364556', '2025-05-21 17:58:29', '2025-05-21 18:42:06', '2025-05-21 18:42:06'),
(23, 'Sevdal Bilhan', '903338634743', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(24, 'Hariz Budunal', '903331193335', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(25, 'Alnıak Atız', '903335676454', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(26, 'Haşmet Taşgan', '903336185991', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(27, 'Salli Necife', '903336692117', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(28, 'Türeli Selçen', '903335588146', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(29, 'Boray Ümit', '903337741455', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(30, 'Aktemür Akbora', '9033341391', '2025-05-21 17:58:29', '2025-05-21 18:42:46', NULL),
(31, 'Yediveren Muhammetali', '903338483755', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(32, 'Baltaş Tonguç', '903333724797', '2025-05-21 17:58:29', '2025-05-21 18:43:37', '2025-05-21 18:43:37'),
(33, 'Tepegöz Ferize', '903339528318', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(34, 'Selen Arısal', '903339524786', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(35, 'Abdulcabbar Mahizar', '903336782359', '2025-05-21 17:58:29', '2025-05-21 17:58:44', '2025-05-21 17:58:44'),
(36, 'İyem Emre', '903338238835', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(37, 'Muazzam Lâmia', '903331348678', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(38, 'İlten Eripek', '903333758172', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(39, 'Zerrin Resul', '903339276424', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(40, 'İlalan Telmize', '903333563723', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(41, 'Hamise Sertan', '903338263265', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(42, 'Zubeyde Berk', '903337281496', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(43, 'Feda Balsarı', '903334969618', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(44, 'Müsemme Civanşir', '903332556491', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(45, 'Aydınyol Fitnet', '903337783478', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(46, 'Çoğa Bigüm', '903334133666', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(47, 'Şehrinaz Raşide', '903332677248', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(48, 'Naif Rukhiya', '903338252766', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(49, 'Azat Nilden', '903339324656', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(50, 'Gamze Korday', '903339442367', '2025-05-21 17:58:29', '2025-05-21 17:58:29', NULL),
(51, 'Minakshi123', '1231231230', '2025-05-21 18:17:25', '2025-05-21 18:19:05', NULL),
(52, 'ytert', '1231231236', '2025-05-21 18:41:59', '2025-05-21 18:41:59', NULL),
(53, 'Aksüyek Sal', '903332481491', '2025-05-21 18:46:27', '2025-05-21 18:46:27', NULL),
(54, 'Adulle Nesim', '903335364556', '2025-05-21 18:46:27', '2025-05-21 18:46:27', NULL),
(55, 'Aktemür Akbora', '903334139141', '2025-05-21 18:46:27', '2025-05-21 18:46:27', NULL),
(56, 'Baltaş Tonguç', '903333724797', '2025-05-21 18:46:27', '2025-05-21 18:46:27', NULL),
(57, 'Abdulcabbar Mahizar', '678903332359', '2025-05-21 18:46:27', '2025-05-22 05:27:09', NULL),
(58, 'Abdulcabbar Mahizar', '903336782359', '2025-05-22 05:40:36', '2025-05-22 05:47:24', '2025-05-22 05:47:24'),
(59, 'test', '1231231123', '2025-05-22 05:42:18', '2025-05-22 05:42:18', NULL),
(60, 'test123', '123123123', '2025-05-22 05:43:41', '2025-05-22 05:43:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 15),
(1, 'App\\Models\\User', 16),
(1, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 10);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Superadmin', 'web', '2023-09-23 11:48:29', '2023-09-23 11:48:29', NULL),
(2, 'Administrator', 'web', '2023-09-23 11:48:29', '2023-09-23 11:48:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 1),
(2, 2),
(2, 4),
(3, 1),
(3, 2),
(3, 4),
(4, 1),
(5, 1),
(5, 2),
(5, 4),
(6, 1),
(6, 2),
(6, 4),
(7, 1),
(7, 2),
(7, 4),
(8, 1),
(8, 4),
(76, 5),
(78, 5),
(80, 5),
(82, 5),
(84, 5),
(86, 5),
(88, 5),
(90, 5),
(92, 5),
(94, 5),
(96, 5),
(98, 5),
(100, 5),
(102, 5),
(104, 5),
(106, 5),
(113, 5),
(115, 5),
(117, 5),
(119, 5),
(121, 5),
(123, 5),
(124, 5),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(246, 15),
(247, 1),
(247, 15),
(248, 1),
(249, 1),
(250, 1);

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `type` enum('mail','sms','push_notification') DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `parameters` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=Block,1=Active',
  `template_id` varchar(191) NOT NULL,
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
  `full_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `country_code` varchar(191) NOT NULL DEFAULT '+91',
  `profile_photo` text DEFAULT NULL,
  `mobile_number` varchar(191) DEFAULT NULL,
  `alternate_mobile_number` varchar(15) NOT NULL,
  `is_phone_verify` int(11) NOT NULL DEFAULT 0,
  `otp` varchar(191) DEFAULT NULL,
  `otp_expiration` datetime DEFAULT NULL,
  `address_line_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `village` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `city_town` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `district` varchar(255) DEFAULT NULL,
  `taluka` varchar(255) DEFAULT NULL,
  `state_id` int(11) NOT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pincode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `age` int(11) NOT NULL,
  `education` varchar(255) NOT NULL,
  `education_certificate` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `create_by` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `fcm_id` varchar(191) DEFAULT NULL,
  `pm_code` varchar(255) DEFAULT NULL,
  `rv_code` varchar(255) DEFAULT NULL,
  `other_usercode` varchar(255) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `subscriptionStartDate` date DEFAULT NULL,
  `subscriptionEndDate` date DEFAULT NULL,
  `api_token` varchar(255) DEFAULT NULL,
  `assignFlag` tinyint(4) NOT NULL,
  `payment_done` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `first_name`, `middle_name`, `last_name`, `email`, `password`, `email_verified_at`, `country_code`, `profile_photo`, `mobile_number`, `alternate_mobile_number`, `is_phone_verify`, `otp`, `otp_expiration`, `address_line_1`, `address_line_2`, `village`, `city_id`, `city_town`, `district`, `taluka`, `state_id`, `state`, `pincode`, `nationality`, `sex`, `marital_status`, `date_of_birth`, `age`, `education`, `education_certificate`, `is_active`, `is_verified`, `create_by`, `remember_token`, `last_login`, `fcm_id`, `pm_code`, `rv_code`, `other_usercode`, `latitude`, `longitude`, `subscriptionStartDate`, `subscriptionEndDate`, `api_token`, `assignFlag`, `payment_done`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'Admin', 'Admin', 'K', 'admin@admin.com', '$2y$10$2k9qYP4BxEmCQXlq3uX7xu7clneXI6FOHQLWnTsYUgk1IInkUulOm', NULL, '+91', '', '9527650699', '', 1, '1234', '2023-11-08 22:27:55', '', '', '', 0, '', NULL, NULL, 0, '', '', '', '', '', '0000-00-00', 0, '', '', 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2023-09-29 09:58:21', '2024-07-30 13:54:33', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templates_slug_unique` (`slug`),
  ADD KEY `templates_type_index` (`type`),
  ADD KEY `templates_status_index` (`status`),
  ADD KEY `templates_slug_type_index` (`slug`,`type`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `full_name` (`full_name`),
  ADD KEY `city_town` (`city_town`),
  ADD KEY `district` (`district`),
  ADD KEY `pincode` (`pincode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
