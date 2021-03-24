-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2020 at 12:41 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theeprint`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_addresses`
--

CREATE TABLE `company_addresses` (
  `company_address_id` int(10) UNSIGNED NOT NULL,
  `partner_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `company_address_type` tinyint(1) NOT NULL,
  `company_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_address_default` tinyint(1) NOT NULL,
  `company_address_label` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `company_address_brgy` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `company_address_city` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `company_address_province` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `company_address_post_code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `company_address_person_firstname` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `company_address_person_lastname` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `company_address_contact` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company_addresses`
--

INSERT INTO `company_addresses` (`company_address_id`, `partner_id`, `company_address_type`, `company_address`, `company_address_default`, `company_address_label`, `company_address_brgy`, `company_address_city`, `company_address_province`, `company_address_post_code`, `company_address_person_firstname`, `company_address_person_lastname`, `company_address_contact`, `created_at`, `updated_at`) VALUES
(54, '58', 0, 'Tambo Entertainment City, 1 Aseana Ave, Parañaque, 1701 Metro Manila', 0, 'HQ', '', '', '', '', 'May', ' Gozarin', '12312321313', '2020-12-20 14:30:51', '2020-12-20 16:12:01'),
(55, '58', 0, 'Blk B2 Lot 23 Dayaon Street, Brgy. San Simon, Dasmarinas City, Cavite', 0, 'Dasmarinas Branch', '', '', '', '', 'Michael', 'Reyes', '12345678900', '2020-12-20 15:49:46', '2020-12-20 16:12:01'),
(56, '58', 0, '34 A. Soriano Street, Brgy. Daang Amaya III, Tanza Cavite', 0, 'Tanza Branch', '', '', '', '', 'May', 'Gozarin', '32324324324', '2020-12-20 16:06:06', '2020-12-20 16:12:01'),
(61, '58', 0, 'asddas', 0, 'asdas', '', '', '', '', 'asdas', 'asd', '12312313123', '2020-12-20 16:42:23', '2020-12-20 16:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `forgot_passwords`
--

CREATE TABLE `forgot_passwords` (
  `forgot_password_id` int(10) UNSIGNED NOT NULL,
  `forgot_password_user` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `forgot_password_token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `forgot_password_expiration` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `forgot_passwords`
--

INSERT INTO `forgot_passwords` (`forgot_password_id`, `forgot_password_user`, `forgot_password_token`, `forgot_password_expiration`, `updated_at`, `created_at`) VALUES
(10, '1', 'a2FlbHJleWVzMTJAaG90bWFpbC5jb20yMDIwLTExLTI3MDU6MDA6NTNwbQ==', '2020-11-29 01:00:53', '2020-11-27 00:00:00', '2020-11-27 00:00:00'),
(11, '1', 'a2FlbHJleWVzMTJAaG90bWFpbC5jb20yMDIwLTEyLTAyMTE6MDU6MjBhbQ==', '2020-12-03 19:05:20', '2020-12-02 00:00:00', '2020-12-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `job_order_items`
--

CREATE TABLE `job_order_items` (
  `job_order_item_id` int(10) UNSIGNED NOT NULL,
  `job_order_id` int(45) NOT NULL,
  `job_order_item_product_id` int(45) NOT NULL,
  `job_order_item_length` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `job_order_item_width` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `job_order_item_qty` int(45) NOT NULL,
  `job_order_item_price` int(45) NOT NULL,
  `job_order_item_unit` int(45) NOT NULL,
  `job_order_item_remark` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_order_logs`
--

CREATE TABLE `job_order_logs` (
  `job_order_log_id` int(10) UNSIGNED NOT NULL,
  `job_order_request_id` int(45) NOT NULL,
  `job_order_status` int(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_order_requests`
--

CREATE TABLE `job_order_requests` (
  `job_order_request_id` int(10) UNSIGNED NOT NULL,
  `job_order_user_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `job_order_quote_num` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `job_order_project_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `job_order_delivery_address` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `job_order_remarks` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `job_order_status` int(11) NOT NULL COMMENT '0',
  `job_order_payment_status` int(11) NOT NULL COMMENT '0',
  `job_order_due_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_order_requests`
--

INSERT INTO `job_order_requests` (`job_order_request_id`, `job_order_user_id`, `job_order_quote_num`, `job_order_project_name`, `job_order_delivery_address`, `job_order_remarks`, `job_order_status`, `job_order_payment_status`, `job_order_due_date`, `created_at`, `updated_at`) VALUES
(17, '58', '', 'as', '54', '', 0, 0, '2020-12-17 00:00:00', '2020-12-20 17:04:30', '2020-12-20 17:04:30'),
(18, '58', '', '', '54', '', 0, 0, '0000-00-00 00:00:00', '2020-12-20 17:12:15', '2020-12-20 17:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `machine_prints`
--

CREATE TABLE `machine_prints` (
  `machine_print_id` int(10) UNSIGNED NOT NULL,
  `machine_print` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `machine_prints`
--

INSERT INTO `machine_prints` (`machine_print_id`, `machine_print`, `created_at`, `updated_at`) VALUES
(1, 'ECOSOL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'ECOSOL2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `message_sender` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `message_receiver` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `message_status` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2020_11_26_024916_create_users_table', 1),
('2020_11_26_024917_create_user_roles_table', 1),
('2020_11_26_024918_create_products_table', 1),
('2020_11_26_024919_create_machine_prints_table', 1),
('2020_11_26_024920_create_job_order_requests_table', 1),
('2020_11_26_024921_create_job_order_items_table', 1),
('2020_11_26_024922_create_notifications_table', 1),
('2020_11_26_024923_create_notification_types_table', 1),
('2020_11_26_024924_create_user_profiles_table', 1),
('2020_11_26_024925_create_partners_table', 1),
('2020_11_26_024926_create_company_addresses_table', 1),
('2020_11_26_024927_create_messages_table', 1),
('2020_11_26_024928_create_tokens_table', 1),
('2020_11_26_024929_create_forgot_password_table', 1),
('2020_11_26_024930_create_job_order_logs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(10) UNSIGNED NOT NULL,
  `notification_type` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `notification_sender` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `notification_receiver` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `notification_data` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `notification_read_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_types`
--

CREATE TABLE `notification_types` (
  `notification_type_id` int(10) UNSIGNED NOT NULL,
  `notification_type_description` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `partner_id` int(10) UNSIGNED NOT NULL,
  `partner_user` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `partner_company` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `partner_tin_number` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `partner_logo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `partner_status` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `partner_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`partner_id`, `partner_user`, `partner_company`, `partner_tin_number`, `partner_logo`, `partner_status`, `partner_address`, `created_at`, `updated_at`) VALUES
(58, '109', 'Happy Shop', '121321323', '141355-PQVKDN3H.png', '1', 'Dasmarinas Cavite', '2020-12-20 14:13:55', '2020-12-20 14:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_item_code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `product_machine_print` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `product_media` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `product_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_status` tinyint(1) NOT NULL COMMENT '0',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_item_code`, `product_machine_print`, `product_media`, `product_description`, `product_status`, `isDeleted`, `created_at`, `updated_at`) VALUES
(25, 'Test', '1', 'asd', 'description 1', 0, 0, '2020-12-20 14:05:04', '2020-12-20 14:05:23'),
(26, 'asd', '2', 'asd', 'description 2', 1, 0, '2020-12-20 14:07:23', '2020-12-20 14:12:37'),
(27, 'asdasd', '2', 'asdasd', 'description 3', 1, 0, '2020-12-20 14:07:23', '2020-12-20 14:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_prices`
--

CREATE TABLE `product_prices` (
  `product_price_id` int(11) NOT NULL,
  `product_price_partner_id` varchar(45) NOT NULL,
  `product_id` varchar(45) NOT NULL,
  `product_price_sqm` decimal(10,2) NOT NULL,
  `product_price_sqf` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_prices`
--

INSERT INTO `product_prices` (`product_price_id`, `product_price_partner_id`, `product_id`, `product_price_sqm`, `product_price_sqf`, `created_at`, `updated_at`) VALUES
(96, '58', '25', '12.00', '12.00', '2020-12-20 14:13:55', '2020-12-20 14:13:55'),
(97, '58', '26', '13.00', '13.00', '2020-12-20 14:13:55', '2020-12-20 14:13:55'),
(98, '58', '27', '13.00', '13.00', '2020-12-20 14:13:55', '2020-12-20 14:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `token_id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `token_type` tinyint(1) NOT NULL COMMENT '0',
  `token_expiration` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`token_id`, `user_id`, `token`, `token_type`, `token_expiration`, `updated_at`, `created_at`) VALUES
(102, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIwLTEyLTIwMTI6MDE6NTlwbQ==', 1, '2020-12-20 20:01:59', '2020-12-20 12:01:59', '2020-12-20 12:01:59'),
(103, '109', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIwLTEyLTIwMTA6MTk6MDhwbQ==', 1, '2020-12-21 06:19:08', '2020-12-20 22:19:09', '2020-12-20 22:19:09'),
(104, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIwLTEyLTIwMTA6MzA6MjFwbQ==', 1, '2020-12-21 06:30:21', '2020-12-20 22:30:21', '2020-12-20 22:30:21'),
(105, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIwLTEyLTIwMTE6NDI6NTFwbQ==', 1, '2020-12-21 07:42:51', '2020-12-20 23:42:51', '2020-12-20 23:42:51'),
(106, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIwLTEyLTIxMTI6MDQ6NTZhbQ==', 1, '2020-12-21 08:04:56', '2020-12-21 00:04:56', '2020-12-21 00:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `user_role_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `user_last_login` datetime DEFAULT NULL,
  `user_status` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `web_notification` tinyint(1) NOT NULL DEFAULT 1,
  `email_notification` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_role_id`, `user_last_login`, `user_status`, `web_notification`, `email_notification`, `created_at`, `updated_at`) VALUES
(1, 'kaelreyes', 'kaelreyes12@hotmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '1', '2020-12-21 12:04:56', '1', 1, 1, '2020-12-03 16:18:50', '2020-12-21 00:04:56'),
(109, '', 'romelpostrano@gmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '2', '2020-12-20 10:19:09', '1', 1, 1, '2020-12-20 02:13:54', '2020-12-20 22:19:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `user_profile_id` int(10) UNSIGNED NOT NULL,
  `user_profile_user_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `user_profile_first_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `user_profile_last_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `user_profile_phone` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `user_profile_avatar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`user_profile_id`, `user_profile_user_id`, `user_profile_first_name`, `user_profile_last_name`, `user_profile_phone`, `user_profile_avatar`, `created_at`, `updated_at`) VALUES
(1, '1', 'Michael', 'Reyes', '', '011009-O8IDD45D.png', '0000-00-00 00:00:00', '2020-12-03 08:18:50'),
(76, '109', 'Romel', 'Postrano', '12313231231', '141354-RDKBILYQ.png', '2020-12-20 14:13:54', '2020-12-20 14:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_addresses`
--
ALTER TABLE `company_addresses`
  ADD PRIMARY KEY (`company_address_id`);

--
-- Indexes for table `forgot_passwords`
--
ALTER TABLE `forgot_passwords`
  ADD PRIMARY KEY (`forgot_password_id`);

--
-- Indexes for table `job_order_items`
--
ALTER TABLE `job_order_items`
  ADD PRIMARY KEY (`job_order_item_id`);

--
-- Indexes for table `job_order_logs`
--
ALTER TABLE `job_order_logs`
  ADD PRIMARY KEY (`job_order_log_id`);

--
-- Indexes for table `job_order_requests`
--
ALTER TABLE `job_order_requests`
  ADD PRIMARY KEY (`job_order_request_id`);

--
-- Indexes for table `machine_prints`
--
ALTER TABLE `machine_prints`
  ADD PRIMARY KEY (`machine_print_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_types`
--
ALTER TABLE `notification_types`
  ADD PRIMARY KEY (`notification_type_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`partner_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`product_price_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`token_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`user_profile_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_addresses`
--
ALTER TABLE `company_addresses`
  MODIFY `company_address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `forgot_passwords`
--
ALTER TABLE `forgot_passwords`
  MODIFY `forgot_password_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `job_order_items`
--
ALTER TABLE `job_order_items`
  MODIFY `job_order_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_order_logs`
--
ALTER TABLE `job_order_logs`
  MODIFY `job_order_log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_order_requests`
--
ALTER TABLE `job_order_requests`
  MODIFY `job_order_request_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `machine_prints`
--
ALTER TABLE `machine_prints`
  MODIFY `machine_print_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_types`
--
ALTER TABLE `notification_types`
  MODIFY `notification_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `partner_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `product_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `token_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `user_profile_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
