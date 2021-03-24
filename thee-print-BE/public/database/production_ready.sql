-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2021 at 09:11 AM
-- Server version: 5.5.62-cll
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theeprin_beta`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_conversations`
--

CREATE TABLE `chat_conversations` (
  `id` int(20) NOT NULL,
  `title` text,
  `user1` bigint(20) NOT NULL,
  `user2` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL COMMENT 'personal message, group message',
  `last_sent_message` text NOT NULL,
  `seen_by` varchar(100) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'date created',
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'date of update'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_conversations`
--

INSERT INTO `chat_conversations` (`id`, `title`, `user1`, `user2`, `type`, `last_sent_message`, `seen_by`, `is_deleted`, `created_at`, `update_at`) VALUES
(1, 'Inquiries', 1, 255, 'Group Message', 'asdasdsad', ',255,255,255,255,255,1,1,', 0, '2021-02-18 07:43:58', '2021-02-18 09:05:51'),
(2, 'Inquiries', 1, 256, 'Group Message', '2', ',1,1,1,', 0, '2021-02-18 07:44:20', '2021-02-18 07:44:24'),
(3, 'Inquiries', 1, 263, 'Group Message', '', ',263,263,1,263,263,', 0, '2021-02-18 08:44:03', '2021-02-18 08:48:25'),
(4, 'Inquiries', 1, 262, 'Group Message', 'asd', ',1,1,1,1,', 0, '2021-02-18 09:12:04', '2021-02-18 09:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `chat_conversation_messages`
--

CREATE TABLE `chat_conversation_messages` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `chat_conversation_id` bigint(20) NOT NULL,
  `message` text,
  `deleted` varchar(3) DEFAULT 'no' COMMENT 'yes or no',
  `seen_by` varchar(150) NOT NULL,
  `deleted_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'date created',
  `update_at` datetime NOT NULL COMMENT 'date updated'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_conversation_messages`
--

INSERT INTO `chat_conversation_messages` (`id`, `user_id`, `chat_conversation_id`, `message`, `deleted`, `seen_by`, `deleted_by`, `created_at`, `update_at`) VALUES
(1, 1, 1, '1', 'no', '', '', '2021-02-18 07:43:58', '2021-02-18 15:43:58'),
(2, 255, 1, '2', 'no', '', '', '2021-02-18 07:44:03', '2021-02-18 15:44:03'),
(3, 1, 1, '3', 'no', '', '', '2021-02-18 07:44:07', '2021-02-18 15:44:07'),
(4, 1, 2, '1', 'no', '', '', '2021-02-18 07:44:20', '2021-02-18 15:44:20'),
(5, 1, 2, '2', 'no', '', '', '2021-02-18 07:44:24', '2021-02-18 15:44:24'),
(6, 255, 1, '', 'no', '', '', '2021-02-18 07:56:19', '2021-02-18 15:56:19'),
(7, 255, 1, '', 'no', '', '', '2021-02-18 08:43:38', '2021-02-18 16:43:38'),
(8, 263, 3, 'hello', 'no', '', ',263,', '2021-02-18 08:44:03', '2021-02-18 16:44:05'),
(9, 1, 3, 'hello', 'no', '', ',263,', '2021-02-18 08:44:22', '2021-02-18 16:44:34'),
(10, 255, 1, '\n', 'no', '', '', '2021-02-18 08:45:15', '2021-02-18 16:45:15'),
(11, 255, 1, '\n', 'no', '', '', '2021-02-18 08:45:15', '2021-02-18 16:45:15'),
(12, 255, 1, '\n', 'no', '', '', '2021-02-18 08:45:15', '2021-02-18 16:45:15'),
(13, 255, 1, '\n', 'no', '', '', '2021-02-18 08:45:24', '2021-02-18 16:45:24'),
(14, 255, 1, '\n', 'no', '', '', '2021-02-18 08:45:24', '2021-02-18 16:45:24'),
(15, 255, 1, '\n', 'no', '', '', '2021-02-18 08:45:24', '2021-02-18 16:45:24'),
(16, 255, 1, '\n', 'no', '', '', '2021-02-18 08:45:25', '2021-02-18 16:45:25'),
(17, 255, 1, '\n', 'no', '', '', '2021-02-18 08:45:25', '2021-02-18 16:45:25'),
(18, 255, 1, 'asd', 'no', '', '', '2021-02-18 08:46:29', '2021-02-18 16:46:29'),
(19, 255, 1, '\n', 'no', '', '', '2021-02-18 08:46:33', '2021-02-18 16:46:33'),
(20, 255, 1, '\n', 'no', '', '', '2021-02-18 08:47:11', '2021-02-18 16:47:11'),
(21, 255, 1, '\n', 'no', '', '', '2021-02-18 08:47:13', '2021-02-18 16:47:13'),
(22, 255, 1, '\n', 'no', '', '', '2021-02-18 08:47:13', '2021-02-18 16:47:13'),
(23, 255, 1, '\n', 'no', '', '', '2021-02-18 08:47:45', '2021-02-18 16:47:45'),
(24, 263, 3, '', 'no', '', '', '2021-02-18 08:48:17', '2021-02-18 16:48:17'),
(25, 263, 3, '\n', 'no', '', '', '2021-02-18 08:48:17', '2021-02-18 16:48:17'),
(59, 1, 4, 'asd', 'no', '', '', '2021-02-18 09:13:06', '2021-02-18 17:13:06'),
(58, 1, 4, '', 'no', '', '', '2021-02-18 09:12:10', '2021-02-18 17:12:10'),
(57, 1, 4, '', 'no', '', '', '2021-02-18 09:12:04', '2021-02-18 17:12:04'),
(56, 1, 1, 'asdasdsad', 'no', '', '', '2021-02-18 09:05:51', '2021-02-18 17:05:51'),
(55, 1, 1, 'asd', 'no', '', '', '2021-02-18 09:05:47', '2021-02-18 17:05:47'),
(54, 255, 1, 'asdasd', 'no', '', '', '2021-02-18 09:05:21', '2021-02-18 17:05:21'),
(53, 255, 1, 'asd', 'no', '', '', '2021-02-18 09:02:54', '2021-02-18 17:02:54'),
(52, 255, 1, 'asd', 'no', '', '', '2021-02-18 09:02:53', '2021-02-18 17:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `chat_conversation_users`
--

CREATE TABLE `chat_conversation_users` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `chat_conversation_id` bigint(20) NOT NULL,
  `status` varchar(20) DEFAULT 'inactive' COMMENT 'active inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'date created',
  `update_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_conversation_users`
--

INSERT INTO `chat_conversation_users` (`id`, `user_id`, `chat_conversation_id`, `status`, `created_at`, `update_at`) VALUES
(1, 1, 1, 'inactive', '2021-02-18 07:43:58', '2021-02-18 15:43:58'),
(2, 254, 1, 'inactive', '2021-02-18 07:43:58', '2021-02-18 15:43:58'),
(3, 258, 1, 'inactive', '2021-02-18 07:43:58', '2021-02-18 15:43:58'),
(4, 260, 1, 'inactive', '2021-02-18 07:43:58', '2021-02-18 15:43:58'),
(5, 1, 1, 'inactive', '2021-02-18 07:43:58', '2021-02-18 15:43:58'),
(6, 1, 2, 'inactive', '2021-02-18 07:44:20', '2021-02-18 15:44:20'),
(7, 254, 2, 'inactive', '2021-02-18 07:44:20', '2021-02-18 15:44:20'),
(8, 258, 2, 'inactive', '2021-02-18 07:44:20', '2021-02-18 15:44:20'),
(9, 260, 2, 'inactive', '2021-02-18 07:44:20', '2021-02-18 15:44:20'),
(10, 1, 2, 'inactive', '2021-02-18 07:44:20', '2021-02-18 15:44:20'),
(11, 1, 3, 'inactive', '2021-02-18 08:44:03', '2021-02-18 16:44:03'),
(12, 254, 3, 'inactive', '2021-02-18 08:44:03', '2021-02-18 16:44:03'),
(13, 258, 3, 'inactive', '2021-02-18 08:44:03', '2021-02-18 16:44:03'),
(14, 260, 3, 'inactive', '2021-02-18 08:44:03', '2021-02-18 16:44:03'),
(15, 263, 3, 'inactive', '2021-02-18 08:44:03', '2021-02-18 16:44:03'),
(16, 1, 4, 'inactive', '2021-02-18 09:12:04', '2021-02-18 17:12:04'),
(17, 254, 4, 'inactive', '2021-02-18 09:12:04', '2021-02-18 17:12:04'),
(18, 258, 4, 'inactive', '2021-02-18 09:12:04', '2021-02-18 17:12:04'),
(19, 260, 4, 'inactive', '2021-02-18 09:12:04', '2021-02-18 17:12:04'),
(20, 1, 4, 'inactive', '2021-02-18 09:12:04', '2021-02-18 17:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `cms_about_thee_prints`
--

CREATE TABLE `cms_about_thee_prints` (
  `cms_about_thee_print_id` int(10) NOT NULL,
  `cms_about_thee_print_logo` varchar(100) NOT NULL,
  `cms_about_thee_print_logo1` varchar(100) NOT NULL,
  `cms_about_thee_print_title` varchar(400) NOT NULL,
  `cms_about_thee_print_description` varchar(400) NOT NULL,
  `cms_about_thee_print_mission` varchar(400) NOT NULL,
  `cms_about_thee_print_vision` varchar(400) NOT NULL,
  `created_at` datetime NOT NULL,
  `cms_about_thee_print_update` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_about_thee_prints`
--

INSERT INTO `cms_about_thee_prints` (`cms_about_thee_print_id`, `cms_about_thee_print_logo`, `cms_about_thee_print_logo1`, `cms_about_thee_print_title`, `cms_about_thee_print_description`, `cms_about_thee_print_mission`, `cms_about_thee_print_vision`, `created_at`, `cms_about_thee_print_update`, `updated_at`) VALUES
(1, '084659-BXTJYIQ5.png', '205909-LSR2OMOO.png', 'Hi, we are Thee Print', 'We make sure we achieve  our customer\'s standard and satisfaction . Our expertise lies not only in using  the latest technology is signage making, but also in understanding the importance of effective of signage and brand recognition.', 'We deliver the best print services by providing a complete package in-terms of printing needs to maintain & escalate satisfied customers.', '  To be most recognized & trusted one stop shop supplier of printing needs by December 2024.', '2020-12-16 09:23:49', '1', '2021-02-19 08:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `cms_core_values`
--

CREATE TABLE `cms_core_values` (
  `cms_core_values_id` int(10) NOT NULL,
  `cms_core_values_icon` varchar(400) NOT NULL,
  `cms_core_values_title` varchar(400) NOT NULL,
  `cms_core_values_description` varchar(400) NOT NULL,
  `cms_core_values_icon1` varchar(400) NOT NULL,
  `cms_core_values_title1` varchar(400) NOT NULL,
  `cms_core_values_description1` varchar(400) NOT NULL,
  `cms_core_values_icon2` varchar(400) NOT NULL,
  `cms_core_values_title2` varchar(400) NOT NULL,
  `cms_core_values_description2` varchar(400) NOT NULL,
  `cms_core_values_icon3` varchar(400) NOT NULL,
  `cms_core_values_title3` varchar(400) NOT NULL,
  `cms_core_values_description3` varchar(400) NOT NULL,
  `created_at` datetime NOT NULL,
  `cms_core_values_update` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_core_values`
--

INSERT INTO `cms_core_values` (`cms_core_values_id`, `cms_core_values_icon`, `cms_core_values_title`, `cms_core_values_description`, `cms_core_values_icon1`, `cms_core_values_title1`, `cms_core_values_description1`, `cms_core_values_icon2`, `cms_core_values_title2`, `cms_core_values_description2`, `cms_core_values_icon3`, `cms_core_values_title3`, `cms_core_values_description3`, `created_at`, `cms_core_values_update`, `updated_at`) VALUES
(1, '111010-N2Y4W1OK.png', 'Innovative', '<p>Being able to adapt to the latest industry trends and utilize new technoligies to bring fresh products and services to customers.</p>', '111010-DWITCL1T.png', 'Malasakit', '<p>Equip employees with proper tools, training, and benefits to provide the workmanship needed to create quality products and services.</p>', '111010-GCEFEYJH.png', 'Professionalism', '<p>Provide through and excellence service throughout every transaction process, from account acquisition &nbsp;to product and up until the after-sales support.</p>', '111010-ON8OU1MG.png', 'Client Centric', '<p>Create positive experience and build lasting customer relationships by maximizing service and/or product offerings.</p>', '2020-12-17 12:19:48', '1', '2021-02-18 12:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `cms_featured_partners`
--

CREATE TABLE `cms_featured_partners` (
  `cms_featured_partners_id` int(10) NOT NULL,
  `cms_featured_partners_logo` varchar(100) NOT NULL,
  `cms_featured_partners_logo1` varchar(100) NOT NULL,
  `cms_featured_partners_logo2` varchar(100) NOT NULL,
  `cms_featured_partners_logo3` varchar(100) NOT NULL,
  `cms_featured_partners_logo4` varchar(100) NOT NULL,
  `cms_featured_partners_updated` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_featured_partners`
--

INSERT INTO `cms_featured_partners` (`cms_featured_partners_id`, `cms_featured_partners_logo`, `cms_featured_partners_logo1`, `cms_featured_partners_logo2`, `cms_featured_partners_logo3`, `cms_featured_partners_logo4`, `cms_featured_partners_updated`, `created_at`, `updated_at`) VALUES
(1, '162750-RCSQSNB3.png', '134546-0ABVJS4Q.png', '162510-68FRBXWH.png', '162237-ZRRUG0F5.png', '162816-3D37JVZA.png', '1', '2020-12-17 14:44:22', '2021-02-18 16:28:16');

-- --------------------------------------------------------

--
-- Table structure for table `cms_privacies`
--

CREATE TABLE `cms_privacies` (
  `privacy_id` int(11) NOT NULL,
  `privacy_content` text NOT NULL,
  `privacy_updated_by` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_privacies`
--

INSERT INTO `cms_privacies` (`privacy_id`, `privacy_content`, `privacy_updated_by`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>THEE PRINT INC. SECURITY &nbsp;</strong></p><p>Personal information provided on the website and online credit card transactions are transmitted through a secure server. We are committed to handling your personal information with high standards of information security. We take appropriate physical, electronic, and administrative steps to maintain the security and accuracy of personally identifiable information we collect, including limiting the number of people who have physical access to our database servers, as well as employing electronic security systems and password protections that guard against unauthorized access.</p><p>Our website uses encryption technology, like Secure Sockets Layer (SSL), to protect your personal information during data transport. SSL encrypts ordering information such as your name, address, and credit card number. Our Customer Care center and stores also operate over a private, secure network. Please note that email is not encrypted and is not considered to be a secure means of transmitting credit card information.</p><p><strong>THEE PRINT INC. PRIVACY POLICY</strong></p><p>To help us achieve our goal of providing the highest quality products and services, we use information from our interactions with you and other customers, as well as from other parties. Because we respect your privacy, we have implemented procedures to ensure that your personal information is handled in a safe, secure, and responsible manner. We have posted this privacy policy in order to explain our information collection practices and the choices you have about the way information is collected and used.</p><p>As we continue to develop the <strong>THEE PRINT INC.</strong> website and take advantage of advances in technology to improve the services we offer, this privacy policy likely will change. We therefore encourage you to refer to this policy on an ongoing basis so that you understand our current privacy policy.</p><p><strong>THE INFORMATION WE COLLECT</strong></p><p>Our customer’s welfare and privacy is of importance to us. You can opt to visit the <strong>THEE PRINT INC. </strong>platform and navigate anonymously. We will only collect information from you if you create an account with us. When you create a Thee Print Account, or otherwise provide us with your personal information through the Platform, the personal information we collect may include you’re:</p><p>Name</p><p>Delivery Address</p><p>Email Address</p><p>Contact Number</p><p>Mobile Number</p><p>Date of Birth</p><p>Gender</p><p>We can only collect your personal information if you voluntarily submit the information to us but if you choose not to submit your personal information to us or withdraw your consent to our use of your personal information, you may not be able to access all parts of this website or participate in all of its features, pricing, and product selection. You may access and update your personal information submitted to us at any time.</p><p>If you sign up to THEE PRINT INC. using your social media account, we may access information about you which you have voluntarily provided under your social media account and we will manage your personal data which we have collected in accordance with <strong>THEE PRINT INC</strong>. privacy policy.</p><p><strong>HOW WE USE THE INFORMATION WE COLLECT</strong></p><p>The personal information we collect from you will be used, or shared with third parties (including related companies, third party service providers, and third party sellers), for some or all of the following purposes:</p><p>Fulfillment and delivery of products purchased, and updating on the status thereof;</p><p>Processing of orders, including payment processing;</p><p>Providing of relevant product information, responding to queries and requests, and other customer support functions;</p><p>Preventing, detecting, and investigating disputes or fraud, and analyzing and managing commercial risks;</p><p>Analytics and tracking;</p><p>Conducting market research and surveys to enable <strong>THEE PRINT INC.</strong> to understand and determine customer preferences and demographics, to develop special offers, and marketing programs of products and services, and to improve customer experience;</p><p>Developing and providing additional products, services, and benefits, including promotions, loyalty and rewards programs;&nbsp;</p><p>Advertising and marketing products and services or relevant products and services from our preferred partners, administering contests, competitions and marketing campaigns;</p><p>Purposes which are reasonably related to the aforesaid;</p><p><strong>COLLECTION OF COMPUTER DATA</strong></p><p>Whenever you visit <strong>THEE PRINT INC.</strong> servers will automatically record information that your browser sends whenever you visit a website. This data may include:</p><p>Your computer\'s IP address</p><p>Browser type</p><p>Webpage you were visiting before you came to our Platform</p><p>The pages within the Platform which you visit</p><p>The time spent on those pages, items and information searched for on the Platform, access times and dates, and other statistics.</p><p>This information is collected for analysis and evaluation in order to help us improve the Platform and the services and products we provide.</p><p><strong>SECURITY</strong></p><p>We are committed to ensuring that your information is secure. In order to prevent unauthorized access or disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.</p><p><strong>THEE PRINT INC.</strong> secures all information collected. For your safety, kindly use unique numbers, letters and special characters as your account’s password and do not share your password to anyone. If you suspect that your privacy has been breached or your password has been compromised, immediately contact us through our customer service.</p><p><strong>OTHERS WITH WHOM WE SHARE YOUR INFORMATION</strong></p><p>Service Providers: We also may disclose information to outside companies that help us bring you the products and services we offer. For example, we may work with an outside company to: (a) manage a database of customer information; (b) assist us in distributing emails; (c) assist us with direct marketing and data collection; (d) provide us storage and analysis; (d) provide fraud prevention; and (e) provide other services designed to assist us in maximizing our business potential. We require that these outside companies agree to keep confidential all information we share with them and to use the information only to perform their obligations in our agreements with them.</p><p>Other Companies: We may provide information to carefully select outside companies when we believe their products or services may be of interest to you.</p><p>Business Transitions: We may transfer or share a copy of personal information about you in the event that <strong>THEE PRINT INC.</strong> or one of its properties, affiliates, or subsidiaries goes through a business transition, such as a merger, being acquired by another company, or selling a portion of its assets. You will be notified via email or prominent notice on our website prior to a change of ownership or control of your personal information, if your personal information will be used contrary to this policy. However, nothing in this Privacy Policy is intended to interfere with the ability of <strong>THEE PRINT INC.</strong> to transfer all or part of its business and/or assets to an affiliate or independent third party at any time, for any purpose, without any limitation whatsoever.</p><p><strong>THEE PRINT INC.</strong> specifically reserves the right to transfer or share a copy of personally identifiable information collected from its websites to the buyer of that portion of its business relating to that information.</p><p>Compliance With Law: We may provide access to information when legally required to do so, to cooperate with police investigations or other legal proceedings, to protect against misuse or unauthorized use of our website, to limit our legal liability, and to protect our rights or to protect the rights, property, or safety of visitors of this website or the public.</p><p><strong>THEE PRINT INC.</strong> partners with advertising companies to place our advertising on publisher websites on the Internet. These advertising companies collect anonymous information about your visits to our web site. This technology involves the use of third party cookies that allow them to develop personalized advertising so that it directly relates to offers that may be of interest to you. You may choose to opt-out of this service we have with our third-party advertising partner. We may also use <strong>THEE PRINT INC. </strong>cookies to provide similar enhanced online marketing to you based on your interests and preferences. You may also choose to opt out of these enhanced online marketing ads.</p><p><strong>YOU’RE CHOICES REGARDING USE OF THE INFORMATION WE COLLECT</strong></p><p>You have several choices regarding our handling of your nonpublic personally identifiable information.</p><p>Direct Mail or Telephone Marketing: If you shop at the <strong>THEE PRINT INC. </strong>stores and wish to be removed from the list of customers that receive direct mail or telemarketing calls, please send us a message to <strong>THEE PRINT INC.</strong> Contact Us page and state one of the following:</p><p>\"NO MAIL OFFERS\" (if you don\'t want to receive offers by mail);</p><p>\"NO PHONE OFFERS\" (if you don\'t want to receive offers by phone);</p><p>\"NO PHONE OR MAIL OFFERS\" (if you don\'t want to receive either).</p><p>Because customer lists often are prepared well in advance of an offering (sometimes a few months before the offer is made), you may continue to receive some offers after you send us a request not to use your information for specified marketing purposes. We appreciate your patience and understanding in giving us time to carry out your request.</p><p><strong>COOKIES, WEB BEACONS, AND HOW WE USE THEM</strong></p><p>A cookie is a small file which asks permission to be placed on your computer\'s hard drive. Once you agree, the file is added and the cookie helps analyze web traffic or lets you know when you visit a particular site. Cookies allow web applications to respond to you as an individual. The web application can tailor its operations to your needs, likes and dislikes by gathering and remembering information about your preferences.</p><p>We use traffic log cookies to identify which pages are being used. This helps us analyze data about web page traffic and improve our website in order to tailor it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system.</p><p>Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful and which you do not. A cookie in no way gives us access to your computer or any information about you, other than the data you choose to share with us. You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. This may prevent you from taking full advantage of the website.</p><p>A \"web beacon\" or \"pixel tag\" or \"clear gif\" is typically a one-pixel image, used to pass information from your computer or mobile device to a website.</p><p>We use cookies and web beacons to keep track of what you have in your shopping cart and to remember you when you return to the website as well as to identify the pages you click on during your visit to our site and the name of the website you visited immediately before clicking to the <strong>THEE PRINT INC.</strong> website. We use this information to improve our site design, product assortments, customer service, and special promotions. You can, of course, disable cookies and web beacons on your computer by indicating this in the preferences or options menus in your browser. However, it is possible that some parts of our website will not operate correctly if you disable cookies. We may also use web beacons, and other technologies, to help track whether our communications are reaching you, to measure their effectiveness, or to collect certain non-personal information about your computer, device, or browser in order to allow us to better design future communications to you.</p><p>We may contract with third parties who may use cookies and web beacons and collect information on our behalf or provide services such as credit card processing, shipping, promotional services, or data management. We call them our Customer Care Partners. These third parties are prohibited by our contract with them from sharing that information with anyone other than us or our other Customer Care Partners.</p><p><strong>ONLINE ACCOUNT REGISTRATION</strong></p><p>To make online shopping faster and easier, you may register on the <strong>THEE PRINT INC. </strong>website. As a registered customer, you only have to enter your shipping addresses and billing information once; they will be securely stored with us for your future use. Using your name and a password of your choice, you may access your account online at any time to add, delete, or change information. If you are using a public computer, we strongly encourage you to Sign Out when you finish shopping. Your information will still be stored with us but it will not be accessible to anyone else from that computer.</p><p><strong>EMAILS</strong></p><p>You will receive promotional emails from us only if you have asked to receive them. If you do not want to receive email from <strong>THEE PRINT INC.</strong> or its affiliates you can click on the \"Unsubscribe\" link at the bottom of any email communication sent by us. Please allow us 3 business days from when the request was received to complete the removal, as some of our promotions may already have been in process before you submitted your request.</p><p><strong>CHANGES TO THE PRIVACY POLICY</strong></p><p><strong>THEE PRINT INC.</strong> reserves the right to modify and change the Privacy Policy at any time. Any changes to this policy will be published on the Platform.</p><p><strong>CONTACTING THEE PRINT INC.</strong></p><p>If you have any queries, comments or concerns, or require any help, please feel free to contact us through our customer service at <strong>0977-849-3382 </strong>and email: <a href=\"mailto:info@theeprint.com.ph\"><strong>info@theeprint.com.ph</strong></a>&nbsp;</p><p>&nbsp;</p>', '1', '2020-12-11 09:07:23', '2021-02-16 11:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `cms_products`
--

CREATE TABLE `cms_products` (
  `cms_products_id` int(10) NOT NULL,
  `cms_products_logo` varchar(100) NOT NULL,
  `cms_products_services_category` varchar(45) NOT NULL,
  `cms_products_name` varchar(100) NOT NULL,
  `cms_products_update` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_products`
--

INSERT INTO `cms_products` (`cms_products_id`, `cms_products_logo`, `cms_products_services_category`, `cms_products_name`, `cms_products_update`, `created_at`, `updated_at`) VALUES
(36, '085726-FK3VTCQP.png', 'Large Format Printing', 'Wall Murai', '', '2021-02-05 08:57:26', '2021-02-05 08:57:26'),
(37, '085847-SERI27DV.png', 'Large Format Printing', 'Vinyl Sticker', '', '2021-02-05 08:58:47', '2021-02-05 08:58:47'),
(38, '085920-LRHPWMYW.png', 'Large Format Printing', 'Clear Sticker', '', '2021-02-05 08:59:20', '2021-02-05 08:59:20'),
(39, '085954-5SKR7WCU.png', 'Large Format Printing', 'Sticker on SIntra', '', '2021-02-05 08:59:54', '2021-02-05 08:59:54'),
(40, '090045-PZKJ6ZGK.png', 'Digital Offset Printing', 'Business Cards', '', '2021-02-05 09:00:45', '2021-02-05 09:00:45'),
(41, '090110-G3P0QNVA.png', 'Digital Offset Printing', 'Flyers', '', '2021-02-05 09:01:10', '2021-02-05 09:01:10'),
(42, '090151-P34JPJHV.png', 'Digital Offset Printing', 'Posters', '', '2021-02-05 09:01:51', '2021-02-05 09:01:51'),
(43, '090356-VB8JIJ09.png', 'Digital Offset Printing', 'Catalogue/Brochure', '', '2021-02-05 09:03:56', '2021-02-05 09:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `cms_products_categories`
--

CREATE TABLE `cms_products_categories` (
  `cms_products_category_id` int(11) NOT NULL,
  `cms_products_category_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_products_categories`
--

INSERT INTO `cms_products_categories` (`cms_products_category_id`, `cms_products_category_name`, `created_at`, `updated_at`) VALUES
(1, 'Large Format Printing', '2020-12-18 16:09:29', '2020-12-18 16:09:29'),
(2, 'Installation', '2020-12-18 16:09:29', '2020-12-18 16:09:29'),
(3, 'Digital Offset Printing', '2020-12-18 16:10:13', '2020-12-18 16:10:13');

-- --------------------------------------------------------

--
-- Table structure for table `cms_services`
--

CREATE TABLE `cms_services` (
  `cms_services_id` int(10) NOT NULL,
  `cms_services_logo` varchar(400) NOT NULL,
  `cms_services_title` varchar(400) NOT NULL,
  `cms_services_description` text NOT NULL,
  `cms_services_logo1` varchar(400) NOT NULL,
  `cms_services_title1` varchar(400) NOT NULL,
  `cms_services_description1` text NOT NULL,
  `cms_services_logo2` varchar(400) NOT NULL,
  `cms_services_title2` varchar(400) NOT NULL,
  `cms_services_description2` varchar(400) NOT NULL,
  `created_at` datetime NOT NULL,
  `cms_services_update` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_services`
--

INSERT INTO `cms_services` (`cms_services_id`, `cms_services_logo`, `cms_services_title`, `cms_services_description`, `cms_services_logo1`, `cms_services_title1`, `cms_services_description1`, `cms_services_logo2`, `cms_services_title2`, `cms_services_description2`, `created_at`, `cms_services_update`, `updated_at`) VALUES
(1, '104504-63DN3NKB.png', 'Large format printing', '<p>Wide format printing using variety of machines such as Mimaki Ecosolvent printers, UV roll to roll &nbsp;and flat bed at different sizes and innovative &nbsp;execution</p><ul><li>Vinyl Sticker</li><li>Canvas</li><li>Photopaper</li><li>Backlit Film</li><li>Clear Sticker</li><li>Banner Cloth</li><li>Sticker on Board</li><li>Tarpaulin</li><li>Perforated Sticker</li></ul>', '104504-N93KEKP3.png', 'Digital offset printing', '<p>Smaller scale printing technology that caters minimum quantity with a great speed without sacrificing print quality.</p><ul><li>Flyers</li><li>Business Card</li><li>Brochure</li><li>Poster</li><li>Invitation</li><li>Satin Sticker</li><li>Product Boxes</li><li>Perforated Sticker</li></ul>', '104504-51N0GC5R.png', 'Installation', '<p>Provides expertise of installation services at different printing substrates applications.</p>', '2020-12-16 15:53:22', '1', '2021-02-10 08:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `cms_terms`
--

CREATE TABLE `cms_terms` (
  `term_id` int(11) NOT NULL,
  `term_content` text NOT NULL,
  `term_updated_by` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms_terms`
--

INSERT INTO `cms_terms` (`term_id`, `term_content`, `term_updated_by`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>THEE PRINT INC. </strong>operate this website <a href=\"http://www.theeprint.com.ph/\"><strong>www.theeprint.com.ph</strong></a><strong> . </strong>THEE PRINT INC. are hereinafter referred to as \"we\" or \"us\". &nbsp;</p><p><strong>Please read these terms a</strong>nd conditions carefully before using this website. Your use of this website confirms your unconditional acceptance of the following terms and conditions. If you do not accept these terms and conditions, do not use this website.</p><p>&nbsp;</p><p><strong>PRODUCTS, CONTENT AND </strong><i><strong>SPECIFICATIONS</strong></i></p><p>All features, content, specifications, products and prices of products and services described or depicted on this website are subject to change at any time without notice. Certain weights, measures and similar descriptions are approximate and are provided for convenience purposes only. We make all reasonable efforts to accurately display the attributes of our products, including the applicable colors; however, the actual color you see will depend on your computer system and we cannot guarantee that your computer will accurately display such colors. Unless otherwise stated, all product images are for illustration purposes only and therefore, may not include certain items as standard. The inclusion of any products or services in this website at a particular time does not imply or warrant that these products or services will be available at any time. It is your responsibility to ascertain and obey all applicable local and international laws (including minimum age requirements) in regard to the possession, use and sale of any item purchased from this website. By placing an order, you represent that the products ordered will be used only in a lawful manner.</p><p>&nbsp;</p><p><strong>ACCURACY OF INFORMATION</strong></p><p>We attempt to ensure that information on this website is complete, accurate and current. Despite our efforts, the information on this website may occasionally be inaccurate, incomplete or out of date. We make no representation as to the completeness, accuracy or validity of any information on this website. For example, products included on the website may be unavailable, may have different attributes than those listed, or may actually carry a different price than that stated on the website. In addition, we may make changes in information about price and availability without notice. While it is our practice to confirm orders by email, the receipt of an email order confirmation does not constitute our acceptance of an order or our confirmation of an offer to sell a product or service. We reserve the right, without prior notice, to limit the order quantity on any product or service and/or to refuse service to any customer. We also may require verification of information prior to the acceptance and/or shipment of any order.</p><p>&nbsp;</p><p><strong>USE OF THIS WEBSITE</strong></p><p>The website design and all text, graphics, information, content, and other material displayed on or that can be downloaded from this website are either the property of, or used with permission by, <strong>THEE PRINT INC.</strong> and are protected by copyright, trademark and other laws and may not be used except as permitted in these Terms and Conditions or with the prior written permission of the owner of such material. You may not modify the information or materials located on this website in any way or reproduce or publicly display, perform, or distribute or otherwise use any such materials for any public or commercial purpose. Any unauthorized use of any such information or materials may violate copyright laws, trademark laws, laws of privacy and publicity, and other laws and regulations. You are responsible for maintaining the confidentiality of your account information and password and for restricting access to such information and to your computer. You agree to accept responsibility for all activities that occur under your account or password.</p><p>&nbsp;</p><p><strong>TRADEMARKS</strong></p><p>Certain trademarks, trade names, service marks and logos used or displayed on this website are registered and unregistered trademarks, trade names and service marks of <strong>THEE PRINT INC.</strong> Other trademarks, trade names and service marks used or displayed on this website are the registered and unregistered trademarks, trade names and service marks of their respective owners. Nothing contained on this website grants or should be construed as granting, by implication, estoppel, or otherwise, any license or right to use any trademarks, trade names, service marks or logos displayed on this website without our written permission or the written permission of such third party owner.</p><p>&nbsp;</p><p><strong>LINKING TO THIS WEBSITE</strong></p><p>Any permitted links to this website must comply will all applicable laws, rule and regulations.<br>&nbsp;</p><p><strong>THIRD PARTY LINKS</strong></p><p>From time to time, this website may contain links to websites that are not owned, operated or controlled by us or our affiliates. All such links are provided solely as a convenience to you. If you use these links, you will leave this website. Neither we nor any of our affiliates are responsible for any content, materials or other information located on or accessible from any other website. Neither we nor any of our affiliates endorse, guarantee, or make any representations or warranties regarding any other website, or any content, materials or other information located or accessible from such websites, or the results that you may obtain from using such websites. If you decide to access any other website linked to or from this website, you do so entirely at your own risk.</p><p>&nbsp;</p><p><strong>INAPPROPRIATE MATERIAL</strong></p><p>You are prohibited from posting or transmitting any unlawful, threatening, defamatory, libelous, obscene, pornographic or profane material or any material that could constitute or encourage conduct that would be considered a criminal offence or give rise to civil liability, or otherwise violate any law. In addition to any remedies that we may have at law or in equity, if we reasonably determine that you have violated or are likely to violate the foregoing prohibitions, we may take any action we reasonably deem necessary to cure or prevent the violation, including without limitation, the immediate removal from this website of the related materials.</p><p>&nbsp;</p><p><strong>USER INFORMATION</strong></p><p>Other than personally identifiable information, which is subject to this website’s Privacy Policy, any material, information, suggestions, ideas, concepts, know-how, techniques, questions, comments or other communication you transmit or post to this website in any manner is and will be considered non-confidential and non-proprietary. We shall have no obligation to use, return, review, or respond to any customer communication. We will have no liability related to the content of any such customer communication, whether or not arising under the laws of copyright, libel, privacy, obscenity, or otherwise. We retain the right to remove any or all User Communications that includes any material we deem inappropriate or unacceptable.</p><p>&nbsp;</p><p><strong>DISCLAIMERS</strong></p><p>Your use of this website is at your risk. The materials and services provided in connection with this website are provided \"as is\" without any warranties of any kind including warranties of merchantability, fitness for a particular purpose, or non-infringement of intellectual property. Neither we nor any of our affiliates warrant the accuracy or completeness of the materials or services on or through this website. The materials and services on or through this website may be out of date, and neither we nor any of their affiliates make any commitment or assumes any duty to update such materials or services. The foregoing exclusions of implied warranties do not apply to the extent prohibited by law. Please refer to your local laws for any such prohibitions.</p><p>&nbsp;</p><p><strong>LIMITATIONS OF LIABILITY</strong></p><p>We assume no responsibility, and shall not be liable for, any damages to, or viruses that may infect, your computer, telecommunication equipment, or other property caused by or arising from your access to, use of, or browsing this website or your downloading of any materials, from this website. In no event will we, our respective officers, directors, employees, shareholders, affiliates, parent corporations, agents, successors, assigns, retail partners nor any party involved in the creation, production or transmission of this website be liable to any party for any indirect, special, punitive, incidental or consequential damages (including, without limitation, those resulting from lost profits, lost data or business interruption) arising out of the use, inability to use, or the results of use of this website, any websites linked to this website, or the materials, information or services contained at any or all such websites, whether based on warranty, contract, tort or any other legal theory and whether or not advised of the possibility of such damages. The foregoing limitations of liability do not apply to the extent prohibited by law. Please refer to your local laws for any such prohibitions.</p><p>&nbsp;</p><p><strong>REVISIONS TO THESE TERMS AND CONDITIONS</strong></p><p>We may revise these Terms and Conditions at any time and from time to time by updating this posting. You should visit this page from time to time to review the then current Terms and Conditions because they are binding on you. Certain provisions of these Terms and Conditions may be superseded by expressly designated legal notices or terms located on particular pages at this website.</p><p>&nbsp;</p><p><strong>CHOICE OF LAW; JURISDICTION</strong></p><p>These Terms and Conditions supersede any other agreement between you and us to the extent necessary to resolve any inconsistency or ambiguity between them. These Terms and Conditions will be governed by and construed in accordance with the laws of the Philippines, without giving effect to any principles of conflicts of laws. A printed version of these Terms and Conditions shall be admissible in judicial and administrative proceedings based upon or relating to these Terms and Conditions to the same extent and subject to the same conditions as other business documents and records originally generated and maintained in printed form.</p><p>&nbsp;</p><p><strong>TERMINATION</strong></p><p>You or we may suspend or terminate your account or your use of this website at any time, for any reason or for no reason. You are personally liable for any orders that you place or charges that you incur prior to termination. We reserve the right to change, suspend, or discontinue all or any aspect of this website at any time without notice.</p>', '1', '2020-12-11 11:05:16', '2021-02-17 13:13:04');

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
(1, '1', 0, '55/56 Bin Row, Dapitan City, 6329 Quirino', 1, 'Main Branch', '', '', '', '', 'Lara', 'Handog', '12321313131', '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(2, '2', 0, '9999 Jp Rizal St., Obando, Bulacan', 1, 'HQ', '', '', '', '', 'Alexander', 'Cave', '09163047698', '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(3, '5', 0, 'UNIT 1 Dli Generics Building153 P. Cruz Street New Zaniga 1550, Mandaluyong, City', 1, 'Work', '', '', '', '', 'Jennifer', 'Catinig', '09061525999', '2021-02-18 16:38:19', '2021-02-18 16:38:19');

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
  `job_order_item_qty` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `job_order_item_price` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `job_order_item_unit` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `job_order_item_remark` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_order_items`
--

INSERT INTO `job_order_items` (`job_order_item_id`, `job_order_id`, `job_order_item_product_id`, `job_order_item_length`, `job_order_item_width`, `job_order_item_qty`, `job_order_item_price`, `job_order_item_unit`, `job_order_item_remark`, `created_at`, `updated_at`) VALUES
(1, 1, 82, '10', '10', '5', '1.00', '0', '', '2021-02-17 14:12:52', '2021-02-17 14:12:52'),
(2, 2, 82, '12', '12', '1', '3.00', '0', 'canvas', '2021-02-17 15:04:21', '2021-02-17 15:04:21'),
(3, 3, 61, '25', '25', '1', '3.00', '1', 'Mall Directional Floor Stickers', '2021-02-17 15:28:45', '2021-02-17 15:28:45'),
(4, 3, 61, '2', '2', '1', '3.00', '1', 'Menu Board Backlit', '2021-02-17 15:28:46', '2021-02-17 15:28:46'),
(5, 4, 82, '2', '2', '20', '1.00', '0', 'none', '2021-02-18 11:11:56', '2021-02-18 11:11:56'),
(6, 5, 83, '1', '1', '1', '1.00', '0', 'flyers', '2021-02-18 11:56:44', '2021-02-18 11:56:44'),
(7, 6, 83, '1', '1', '1', '1.00', '0', 'sample decription', '2021-02-18 12:05:54', '2021-02-18 12:05:54'),
(9, 7, 84, '1', '1', '1', '1.00', '0', 'sample', '2021-02-18 12:55:36', '2021-02-18 12:55:36'),
(12, 8, 59, '1', '1', '1', '0.35', '0', 'sample ', '2021-02-18 13:25:57', '2021-02-18 13:25:57'),
(13, 9, 70, '1', '1', '1', '0.50', '0', 'sa', '2021-02-18 13:40:58', '2021-02-18 13:40:58'),
(15, 11, 60, '1', '1', '1', '0.28', '0', 'sample', '2021-02-18 14:07:45', '2021-02-18 14:07:45'),
(16, 12, 55, '1', '1', '1', '0.35', '0', 'sample', '2021-02-18 14:11:09', '2021-02-18 14:11:09'),
(17, 13, 69, '1', '1', '1', '0.38', '0', 'sample test', '2021-02-18 14:15:46', '2021-02-18 14:15:46'),
(18, 14, 53, '1', '1', '1', '0.24', '0', 'sample test', '2021-02-18 14:16:59', '2021-02-18 14:16:59'),
(19, 15, 53, '1', '1', '1', '3.00', '0', 'sample', '2021-02-18 14:20:34', '2021-02-18 14:20:34'),
(20, 16, 59, '1', '1', '1', '0.35', '0', 'sample', '2021-02-18 14:21:21', '2021-02-18 14:21:21'),
(21, 17, 81, '1', '1', '1', '3.00', '0', 'sample', '2021-02-18 14:22:25', '2021-02-18 14:22:25'),
(22, 10, 53, '1', '1', '1', '0.24', '0', 'sa', '2021-02-18 14:28:03', '2021-02-18 14:28:03'),
(23, 18, 53, '1', '1', '1', '0.24', '0', 'sample test', '2021-02-18 15:32:39', '2021-02-18 15:32:39'),
(24, 19, 83, '1', '1', '1', '1.00', '0', 'sample description', '2021-02-18 15:46:29', '2021-02-18 15:46:29'),
(26, 20, 87, '12', '12', '1', '1.00', '0', 'none', '2021-02-18 16:15:50', '2021-02-18 16:15:50'),
(27, 21, 87, '12', '12', '12', '1.00', '0', 'none', '2021-02-18 16:16:43', '2021-02-18 16:16:43'),
(28, 22, 74, '2', '2', '20', '0.57', '0', 'none', '2021-02-18 16:28:32', '2021-02-18 16:28:32'),
(29, 23, 68, '2', '2', '12', '0.35', '0', 'none', '2021-02-18 16:32:37', '2021-02-18 16:32:37'),
(30, 24, 59, '1', '1', '1', '0.35', '0', '', '2021-02-18 16:34:46', '2021-02-18 16:34:46'),
(31, 25, 84, '1', '1', '1', '1.00', '0', '', '2021-02-18 16:35:15', '2021-02-18 16:35:15'),
(32, 26, 75, '1', '1', '1', '0.59', '0', '', '2021-02-18 16:38:10', '2021-02-18 16:38:10'),
(33, 27, 87, '2', '2', '1', '38.00', '0', 'none', '2021-02-18 16:51:06', '2021-02-18 16:51:06'),
(34, 27, 87, '', '', '', '38.00', '0', '', '2021-02-18 16:51:07', '2021-02-18 16:51:07'),
(35, 28, 70, '12', '12', '12', '21.00', '0', 'none', '2021-02-18 16:51:35', '2021-02-18 16:51:35'),
(36, 29, 87, '23', '23', '23', '38.00', '0', 'none', '2021-02-18 16:53:06', '2021-02-18 16:53:06');

-- --------------------------------------------------------

--
-- Table structure for table `job_order_logs`
--

CREATE TABLE `job_order_logs` (
  `job_order_log_id` int(10) UNSIGNED NOT NULL,
  `job_order_request_id` int(45) NOT NULL,
  `job_order_status` int(45) NOT NULL,
  `job_order_request_remark` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_order_logs`
--

INSERT INTO `job_order_logs` (`job_order_log_id`, `job_order_request_id`, `job_order_status`, `job_order_request_remark`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '', '2021-02-17 14:15:06', '2021-02-17 14:15:06'),
(2, 1, 3, '', '2021-02-17 14:16:30', '2021-02-17 14:16:30'),
(3, 1, 4, '', '2021-02-17 14:17:07', '2021-02-17 14:17:07'),
(4, 2, 1, '', '2021-02-17 15:05:02', '2021-02-17 15:05:02'),
(5, 2, 2, '', '2021-02-17 15:07:54', '2021-02-17 15:07:54'),
(6, 2, 3, '', '2021-02-17 15:14:19', '2021-02-17 15:14:19'),
(7, 2, 4, '', '2021-02-17 15:15:04', '2021-02-17 15:15:04'),
(8, 1, 3, '', '2021-02-17 15:19:45', '2021-02-17 15:19:45'),
(9, 2, 9, '', '2021-02-17 15:21:49', '2021-02-17 15:21:49'),
(10, 1, 4, '', '2021-02-17 15:27:47', '2021-02-17 15:27:47'),
(11, 3, 2, '', '2021-02-17 15:29:13', '2021-02-17 15:29:13'),
(12, 5, 1, '', '2021-02-18 11:56:57', '2021-02-18 11:56:57'),
(13, 5, 1, '', '2021-02-18 11:59:40', '2021-02-18 11:59:40'),
(14, 5, 1, '', '2021-02-18 12:00:34', '2021-02-18 12:00:34'),
(15, 5, 1, '', '2021-02-18 12:01:57', '2021-02-18 12:01:57'),
(16, 5, 1, '', '2021-02-18 12:02:49', '2021-02-18 12:02:49'),
(17, 5, 1, '', '2021-02-18 12:03:39', '2021-02-18 12:03:39'),
(18, 6, 6, '', '2021-02-18 12:06:03', '2021-02-18 12:06:03'),
(19, 6, 6, '', '2021-02-18 12:06:39', '2021-02-18 12:06:39'),
(20, 5, 2, '', '2021-02-18 12:16:09', '2021-02-18 12:16:09'),
(21, 5, 3, '', '2021-02-18 12:16:30', '2021-02-18 12:16:30'),
(22, 7, 2, '', '2021-02-18 12:55:47', '2021-02-18 12:55:47'),
(23, 7, 3, '', '2021-02-18 12:56:00', '2021-02-18 12:56:00'),
(24, 8, 1, '', '2021-02-18 13:16:59', '2021-02-18 13:16:59'),
(25, 8, 1, '', '2021-02-18 13:20:00', '2021-02-18 13:20:00'),
(26, 8, 1, '', '2021-02-18 13:20:51', '2021-02-18 13:20:51'),
(27, 8, 1, '', '2021-02-18 13:23:39', '2021-02-18 13:23:39'),
(28, 8, 1, '', '2021-02-18 13:25:01', '2021-02-18 13:25:01'),
(29, 8, 1, '', '2021-02-18 13:25:04', '2021-02-18 13:25:04'),
(30, 8, 1, '', '2021-02-18 13:26:04', '2021-02-18 13:26:04'),
(31, 8, 1, '', '2021-02-18 13:28:21', '2021-02-18 13:28:21'),
(32, 8, 1, '', '2021-02-18 13:29:04', '2021-02-18 13:29:04'),
(33, 8, 1, '', '2021-02-18 13:29:17', '2021-02-18 13:29:17'),
(34, 8, 1, '', '2021-02-18 13:29:26', '2021-02-18 13:29:26'),
(35, 8, 1, '', '2021-02-18 13:29:47', '2021-02-18 13:29:47'),
(36, 8, 1, '', '2021-02-18 13:30:19', '2021-02-18 13:30:19'),
(37, 8, 1, '', '2021-02-18 13:30:29', '2021-02-18 13:30:29'),
(38, 1, 9, '', '2021-02-18 13:34:50', '2021-02-18 13:34:50'),
(39, 7, 4, '', '2021-02-18 13:39:32', '2021-02-18 13:39:32'),
(40, 7, 9, '', '2021-02-18 13:39:47', '2021-02-18 13:39:47'),
(41, 9, 2, '', '2021-02-18 13:41:07', '2021-02-18 13:41:07'),
(42, 10, 2, '', '2021-02-18 13:45:39', '2021-02-18 13:45:39'),
(43, 10, 2, '', '2021-02-18 13:46:14', '2021-02-18 13:46:14'),
(44, 10, 7, '', '2021-02-18 13:49:02', '2021-02-18 13:49:02'),
(45, 6, 1, '', '2021-02-18 14:00:41', '2021-02-18 14:00:41'),
(46, 6, 1, '', '2021-02-18 14:06:12', '2021-02-18 14:06:12'),
(47, 11, 6, '', '2021-02-18 14:07:50', '2021-02-18 14:07:50'),
(48, 11, 1, '', '2021-02-18 14:10:02', '2021-02-18 14:10:02'),
(49, 12, 6, '', '2021-02-18 14:11:12', '2021-02-18 14:11:12'),
(50, 12, 1, '', '2021-02-18 14:11:37', '2021-02-18 14:11:37'),
(51, 13, 1, '', '2021-02-18 14:15:54', '2021-02-18 14:15:54'),
(52, 14, 1, '', '2021-02-18 14:17:06', '2021-02-18 14:17:06'),
(53, 15, 6, '', '2021-02-18 14:20:38', '2021-02-18 14:20:38'),
(54, 16, 1, '', '2021-02-18 14:21:28', '2021-02-18 14:21:28'),
(55, 17, 6, '', '2021-02-18 14:22:30', '2021-02-18 14:22:30'),
(56, 17, 6, '', '2021-02-18 14:25:05', '2021-02-18 14:25:05'),
(57, 10, 8, '', '2021-02-18 14:30:14', '2021-02-18 14:30:14'),
(58, 7, 8, '', '2021-02-18 14:32:37', '2021-02-18 14:32:37'),
(59, 2, 8, '', '2021-02-18 14:35:05', '2021-02-18 14:35:05'),
(60, 9, 3, '', '2021-02-18 14:35:48', '2021-02-18 14:35:48'),
(61, 9, 3, '', '2021-02-18 14:36:09', '2021-02-18 14:36:09'),
(62, 18, 1, '', '2021-02-18 15:33:28', '2021-02-18 15:33:28'),
(63, 17, 6, '', '2021-02-18 15:45:42', '2021-02-18 15:45:42'),
(64, 9, 8, '', '2021-02-18 15:47:16', '2021-02-18 15:47:16'),
(65, 22, 2, '', '2021-02-18 16:32:07', '2021-02-18 16:32:07'),
(66, 23, 2, '', '2021-02-18 16:33:00', '2021-02-18 16:33:00'),
(67, 24, 1, '', '2021-02-18 16:34:55', '2021-02-18 16:34:55'),
(68, 25, 1, '', '2021-02-18 16:35:32', '2021-02-18 16:35:32'),
(69, 26, 1, '', '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(70, 28, 2, '', '2021-02-18 16:52:00', '2021-02-18 16:52:00'),
(71, 29, 1, '', '2021-02-18 16:53:14', '2021-02-18 16:53:14'),
(72, 23, 3, '', '2021-02-18 17:14:23', '2021-02-18 17:14:23'),
(73, 22, 3, '', '2021-02-18 17:16:07', '2021-02-18 17:16:07'),
(74, 28, 3, '', '2021-02-18 17:20:17', '2021-02-18 17:20:17'),
(75, 23, 3, '', '2021-02-18 17:25:17', '2021-02-18 17:25:17'),
(76, 22, 3, '', '2021-02-18 17:27:34', '2021-02-18 17:27:34'),
(77, 22, 4, '', '2021-02-18 17:28:34', '2021-02-18 17:28:34'),
(78, 22, 3, '', '2021-02-18 17:29:11', '2021-02-18 17:29:11'),
(79, 22, 4, '', '2021-02-18 17:29:55', '2021-02-18 17:29:55'),
(80, 22, 3, '', '2021-02-18 17:30:52', '2021-02-18 17:30:52'),
(81, 5, 3, '', '2021-02-18 17:31:17', '2021-02-18 17:31:17'),
(82, 23, 3, '', '2021-02-18 17:33:14', '2021-02-18 17:33:14'),
(83, 23, 4, '', '2021-02-18 17:33:32', '2021-02-18 17:33:32'),
(84, 22, 3, '', '2021-02-18 17:33:59', '2021-02-18 17:33:59'),
(85, 22, 4, '', '2021-02-18 17:34:18', '2021-02-18 17:34:18'),
(86, 5, 3, '', '2021-02-18 17:37:34', '2021-02-18 17:37:34'),
(87, 23, 3, '', '2021-02-18 17:40:54', '2021-02-18 17:40:54'),
(88, 23, 4, '', '2021-02-18 17:41:30', '2021-02-18 17:41:30'),
(89, 22, 3, '', '2021-02-18 17:45:17', '2021-02-18 17:45:17'),
(90, 5, 3, '', '2021-02-18 17:46:29', '2021-02-18 17:46:29'),
(91, 23, 3, '', '2021-02-18 17:48:55', '2021-02-18 17:48:55'),
(92, 5, 3, '', '2021-02-18 17:52:16', '2021-02-18 17:52:16'),
(93, 5, 4, '', '2021-02-18 17:52:33', '2021-02-18 17:52:33'),
(94, 23, 4, '', '2021-02-18 17:53:49', '2021-02-18 17:53:49'),
(95, 22, 3, '', '2021-02-18 17:55:30', '2021-02-18 17:55:30'),
(96, 5, 3, '', '2021-02-18 17:55:56', '2021-02-18 17:55:56'),
(97, 5, 4, '', '2021-02-18 17:56:26', '2021-02-18 17:56:26'),
(98, 23, 3, '', '2021-02-18 17:58:26', '2021-02-18 17:58:26'),
(99, 23, 4, '', '2021-02-18 17:58:47', '2021-02-18 17:58:47'),
(100, 22, 3, '', '2021-02-18 18:01:07', '2021-02-18 18:01:07'),
(101, 22, 4, '', '2021-02-18 18:01:45', '2021-02-18 18:01:45'),
(102, 5, 3, '', '2021-02-18 18:04:43', '2021-02-18 18:04:43'),
(103, 5, 3, '', '2021-02-18 18:06:55', '2021-02-18 18:06:55'),
(104, 23, 3, '', '2021-02-18 18:07:16', '2021-02-18 18:07:16'),
(105, 23, 4, '', '2021-02-18 18:07:30', '2021-02-18 18:07:30'),
(106, 22, 3, '', '2021-02-18 18:08:04', '2021-02-18 18:08:04'),
(107, 5, 4, '', '2021-02-18 18:08:17', '2021-02-18 18:08:17'),
(108, 23, 3, '', '2021-02-18 18:11:31', '2021-02-18 18:11:31'),
(109, 23, 4, '', '2021-02-18 18:11:50', '2021-02-18 18:11:50'),
(110, 22, 3, '', '2021-02-18 18:14:42', '2021-02-18 18:14:42'),
(111, 22, 4, '', '2021-02-18 18:15:08', '2021-02-18 18:15:08'),
(112, 23, 3, '', '2021-02-18 18:56:00', '2021-02-18 18:56:00'),
(113, 23, 4, '', '2021-02-18 18:56:54', '2021-02-18 18:56:54'),
(114, 22, 3, '', '2021-02-18 18:58:18', '2021-02-18 18:58:18'),
(115, 22, 4, '', '2021-02-18 18:58:56', '2021-02-18 18:58:56'),
(116, 5, 3, '', '2021-02-18 19:01:29', '2021-02-18 19:01:29'),
(117, 5, 4, '', '2021-02-18 19:02:55', '2021-02-18 19:02:55'),
(118, 5, 3, '', '2021-02-18 19:08:18', '2021-02-18 19:08:18'),
(119, 5, 4, '', '2021-02-18 19:09:23', '2021-02-18 19:09:23'),
(120, 23, 3, '', '2021-02-18 19:11:31', '2021-02-18 19:11:31'),
(121, 23, 4, '', '2021-02-18 19:12:41', '2021-02-18 19:12:41'),
(122, 22, 3, '', '2021-02-18 19:22:20', '2021-02-18 19:22:20'),
(123, 22, 4, '', '2021-02-18 19:23:02', '2021-02-18 19:23:02'),
(124, 1, 3, '', '2021-02-18 19:27:29', '2021-02-18 19:27:29'),
(125, 1, 4, '', '2021-02-18 19:29:03', '2021-02-18 19:29:03'),
(126, 23, 3, '', '2021-02-18 19:37:28', '2021-02-18 19:37:28'),
(127, 23, 4, '', '2021-02-18 19:38:19', '2021-02-18 19:38:19'),
(128, 22, 3, '', '2021-02-18 19:41:06', '2021-02-18 19:41:06'),
(129, 22, 4, '', '2021-02-18 19:42:05', '2021-02-18 19:42:05'),
(130, 5, 3, '', '2021-02-18 19:44:12', '2021-02-18 19:44:12'),
(131, 5, 4, '', '2021-02-18 19:45:14', '2021-02-18 19:45:14'),
(132, 5, 3, '', '2021-02-18 19:46:38', '2021-02-18 19:46:38');

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
  `job_order_payment_date` datetime NOT NULL,
  `job_order_due_date` datetime NOT NULL,
  `job_order_total` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `admin_archived` tinyint(1) NOT NULL DEFAULT '0',
  `partner_archived` tinyint(1) NOT NULL DEFAULT '0',
  `updated_by` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_order_requests`
--

INSERT INTO `job_order_requests` (`job_order_request_id`, `job_order_user_id`, `job_order_quote_num`, `job_order_project_name`, `job_order_delivery_address`, `job_order_remarks`, `job_order_status`, `job_order_payment_status`, `job_order_payment_date`, `job_order_due_date`, `job_order_total`, `admin_archived`, `partner_archived`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1', '21-0001', 'Phantom Coffee', '1', '', 2, 0, '2021-02-17 14:17:07', '2021-02-26 00:00:00', '560', 0, 1, '1', '2021-02-17 14:12:52', '2021-02-18 19:29:03'),
(2, '2', '21-0002', 'Print now', '2', '', 4, 1, '2021-02-17 15:15:05', '2021-02-18 00:00:00', '483.84', 1, 1, '1', '2021-02-17 15:04:21', '2021-02-18 14:35:05'),
(3, '2', '21-0003', 'So Fast Print', '2', 'asap', 2, 0, '0000-00-00 00:00:00', '2021-02-19 00:00:00', '2113.44', 0, 0, '254', '2021-02-17 15:28:45', '2021-02-17 15:29:13'),
(4, '1', '', 'Flyers', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-03-31 00:00:00', '89.6', 0, 0, '1', '2021-02-18 11:11:56', '2021-02-18 11:11:56'),
(5, '1', '21-0004', 'Project Test 1', '1', '', 3, 0, '2021-02-18 19:45:17', '2021-02-24 00:00:00', '1.12', 0, 0, '1', '2021-02-18 11:56:44', '2021-02-18 19:46:38'),
(6, '1', '', 'Project Test 2', '1', '', 1, 0, '0000-00-00 00:00:00', '2021-02-26 00:00:00', '1.12', 0, 0, '1', '2021-02-18 12:05:54', '2021-02-18 14:00:41'),
(7, '1', '21-0005', 'Project Test 3', '1', '', 4, 1, '2021-02-18 13:39:32', '2021-03-03 00:00:00', '1.12', 1, 1, '1', '2021-02-18 12:28:59', '2021-02-18 14:32:38'),
(8, '1', '', 'Project test 2', '1', '', 1, 0, '0000-00-00 00:00:00', '2021-02-19 00:00:00', '0.392', 0, 0, '1', '2021-02-18 13:16:50', '2021-02-18 13:26:04'),
(9, '1', '21-0006', 'Project Test 4', '1', '', 3, 0, '0000-00-00 00:00:00', '2021-03-12 00:00:00', '0.56', 1, 0, '1', '2021-02-18 13:40:58', '2021-02-18 15:47:16'),
(10, '1', '21-0008', 'project test 5', '1', '', 7, 0, '0000-00-00 00:00:00', '2021-02-27 00:00:00', '0.2688', 1, 0, '1', '2021-02-18 13:45:28', '2021-02-18 14:30:14'),
(11, '1', '', 'sample project', '1', '', 1, 0, '0000-00-00 00:00:00', '2021-02-25 00:00:00', '0.3136', 0, 0, '1', '2021-02-18 14:07:45', '2021-02-18 14:10:02'),
(12, '1', '', 'sample project test', '1', '', 1, 0, '0000-00-00 00:00:00', '2021-03-04 00:00:00', '0.392', 0, 0, '1', '2021-02-18 14:11:09', '2021-02-18 14:11:38'),
(13, '1', '', 'Sample test', '1', '', 1, 0, '0000-00-00 00:00:00', '2021-03-05 00:00:00', '0.4256', 0, 0, '1', '2021-02-18 14:15:46', '2021-02-18 14:15:55'),
(14, '1', '', 'sample test 1', '1', '', 1, 0, '0000-00-00 00:00:00', '2021-03-04 00:00:00', '0.2688', 0, 0, '1', '2021-02-18 14:16:59', '2021-02-18 14:17:06'),
(15, '2', '', 'sample test 3', '2', '', 6, 0, '0000-00-00 00:00:00', '2021-02-24 00:00:00', '3.36', 0, 0, '1', '2021-02-18 14:20:34', '2021-02-18 14:20:38'),
(16, '1', '', 'sample test 4', '1', '', 1, 0, '0000-00-00 00:00:00', '2021-03-03 00:00:00', '0.392', 0, 0, '1', '2021-02-18 14:21:21', '2021-02-18 14:21:28'),
(17, '2', '', 'sample test 5', '2', '', 6, 0, '0000-00-00 00:00:00', '2021-03-10 00:00:00', '3.36', 0, 0, '1', '2021-02-18 14:22:24', '2021-02-18 14:22:31'),
(18, '1', '', 'Sample test 6', '1', '', 1, 0, '0000-00-00 00:00:00', '2021-02-18 00:00:00', '0.2688', 0, 0, '1', '2021-02-18 15:32:38', '2021-02-18 15:33:28'),
(19, '1', '', 'Sample Test 7', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-02-18 00:00:00', '1.12', 0, 0, '1', '2021-02-18 15:46:29', '2021-02-18 15:46:29'),
(20, '1', '', 'HVU', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-02-27 00:00:00', '161.28', 0, 0, '1', '2021-02-18 16:14:16', '2021-02-18 16:15:50'),
(21, '1', '', 'HVU', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-02-25 00:00:00', '1935.36', 0, 0, '1', '2021-02-18 16:16:43', '2021-02-18 16:16:43'),
(22, '1', '21-0008', 'HPV', '1', '', 4, 1, '2021-02-18 19:43:11', '2021-02-24 00:00:00', '45.6', 0, 0, '1', '2021-02-18 16:28:32', '2021-02-18 19:43:11'),
(23, '1', '21-0009', 'HGF', '1', '', 4, 1, '2021-02-18 19:39:06', '2021-02-27 00:00:00', '16.8', 0, 0, '1', '2021-02-18 16:32:37', '2021-02-18 19:39:06'),
(24, '1', '', 'test', '1', '', 1, 0, '0000-00-00 00:00:00', '2021-02-19 00:00:00', '0.392', 0, 0, '1', '2021-02-18 16:34:46', '2021-02-18 16:34:55'),
(25, '1', '', 'test', '1', '', 1, 0, '0000-00-00 00:00:00', '2021-03-06 00:00:00', '1.12', 0, 0, '1', '2021-02-18 16:35:15', '2021-02-18 16:35:32'),
(26, '1', '', 'test 3', '1', '', 1, 0, '0000-00-00 00:00:00', '2021-02-19 00:00:00', '0.6608', 0, 0, '1', '2021-02-18 16:38:10', '2021-02-18 16:38:19'),
(27, '5', '', 'Basics', '3', '', 0, 0, '0000-00-00 00:00:00', '2021-03-25 00:00:00', '170.24', 0, 0, '5', '2021-02-18 16:51:06', '2021-02-18 16:51:06'),
(28, '5', '21-0010', 'Basics', '3', '', 3, 0, '0000-00-00 00:00:00', '2021-03-12 00:00:00', '36288', 0, 0, '1', '2021-02-18 16:51:35', '2021-02-18 17:20:17'),
(29, '5', '', 'HPF', '3', '', 1, 0, '0000-00-00 00:00:00', '2021-02-26 00:00:00', '517827.52', 0, 0, '5', '2021-02-18 16:53:05', '2021-02-18 16:53:14');

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
(2, 'SOLVENT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'UV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'ADD ON BOARD', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
  `notification_data` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `notification_link` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `notification_read` tinyint(1) NOT NULL,
  `notification_isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notification_type`, `notification_sender`, `notification_receiver`, `notification_data`, `notification_link`, `notification_read`, `notification_isDeleted`, `created_at`, `updated_at`) VALUES
(1, '3', '255', '1', '', '255', 1, 0, '2021-02-17 13:51:41', '2021-02-17 13:51:41'),
(2, '3', '255', '254', '', '255', 1, 0, '2021-02-17 13:51:41', '2021-02-17 13:51:41'),
(3, '1', '255', '1', '', '1', 1, 0, '2021-02-17 14:12:52', '2021-02-17 14:12:52'),
(4, '1', '255', '254', '', '1', 1, 0, '2021-02-17 14:12:53', '2021-02-17 14:12:53'),
(5, '2', '255', '1', '', '1', 1, 0, '2021-02-17 14:15:06', '2021-02-17 14:15:06'),
(6, '2', '255', '254', '', '1', 1, 0, '2021-02-17 14:15:06', '2021-02-17 14:15:41'),
(10, '3', '256', '1', '', '256', 1, 0, '2021-02-17 14:59:07', '2021-02-17 14:59:07'),
(11, '3', '256', '254', '', '256', 0, 0, '2021-02-17 14:59:07', '2021-02-17 14:59:07'),
(12, '1', '256', '1', '', '2', 1, 0, '2021-02-17 15:04:21', '2021-02-17 15:04:21'),
(13, '1', '256', '254', '', '2', 0, 0, '2021-02-17 15:04:21', '2021-02-17 15:04:21'),
(14, '2', '256', '1', '', '2', 1, 0, '2021-02-17 15:07:54', '2021-02-17 15:07:54'),
(15, '2', '256', '254', '', '2', 1, 0, '2021-02-17 15:07:54', '2021-02-17 15:26:48'),
(16, '4', '1', '256', 'Your job order 21-0002 is now being processed. ', '2', 1, 0, '2021-02-17 15:14:19', '2021-02-17 15:19:33'),
(17, '5', '1', '256', 'You job order  21-0002 has been delivered. ', '2', 0, 0, '2021-02-17 15:15:04', '2021-02-17 15:15:04'),
(18, '6', '1', '256', 'Your payment for job order  21-0002 has been confirmed..', '2', 0, 0, '2021-02-17 15:15:04', '2021-02-17 15:15:04'),
(20, '5', '1', '255', 'You job order  21-0001 has been delivered. ', '1', 1, 1, '2021-02-17 15:27:47', '2021-02-18 11:53:28'),
(21, '1', '256', '1', '', '3', 1, 0, '2021-02-17 15:28:46', '2021-02-17 15:28:46'),
(22, '1', '256', '254', '', '3', 0, 0, '2021-02-17 15:28:46', '2021-02-17 15:28:46'),
(23, '2', '2', '1', '', '3', 1, 0, '2021-02-17 15:29:13', '2021-02-17 15:29:13'),
(24, '2', '2', '254', '', '3', 0, 0, '2021-02-17 15:29:13', '2021-02-17 15:29:13'),
(25, '1', '255', '1', '', '4', 1, 0, '2021-02-18 11:11:56', '2021-02-18 11:11:56'),
(26, '1', '255', '254', '', '4', 0, 0, '2021-02-18 11:11:56', '2021-02-18 11:11:56'),
(27, '1', '255', '258', '', '4', 0, 0, '2021-02-18 11:11:56', '2021-02-18 11:11:56'),
(28, '1', '255', '1', '', '5', 1, 0, '2021-02-18 11:56:44', '2021-02-18 11:56:44'),
(29, '1', '255', '254', '', '5', 0, 0, '2021-02-18 11:56:44', '2021-02-18 11:56:44'),
(30, '1', '255', '258', '', '5', 0, 0, '2021-02-18 11:56:44', '2021-02-18 11:56:44'),
(31, '1', '255', '1', '', '6', 1, 1, '2021-02-18 12:05:54', '2021-02-18 12:15:32'),
(32, '1', '255', '254', '', '6', 0, 0, '2021-02-18 12:05:54', '2021-02-18 12:05:54'),
(33, '1', '255', '258', '', '6', 0, 0, '2021-02-18 12:05:54', '2021-02-18 12:05:54'),
(34, '2', '255', '1', '', '5', 1, 0, '2021-02-18 12:16:09', '2021-02-18 12:16:09'),
(35, '2', '255', '254', '', '5', 0, 0, '2021-02-18 12:16:09', '2021-02-18 12:16:09'),
(36, '2', '255', '258', '', '5', 0, 0, '2021-02-18 12:16:09', '2021-02-18 12:16:09'),
(37, '4', '1', '255', 'Your job order 21-0004 is now being processed. ', '5', 1, 1, '2021-02-18 12:16:30', '2021-02-18 12:16:41'),
(38, '1', '255', '1', '', '7', 1, 0, '2021-02-18 12:28:59', '2021-02-18 12:28:59'),
(39, '1', '255', '254', '', '7', 0, 0, '2021-02-18 12:28:59', '2021-02-18 12:28:59'),
(40, '1', '255', '258', '', '7', 0, 0, '2021-02-18 12:28:59', '2021-02-18 12:28:59'),
(41, '2', '255', '1', '', '7', 1, 0, '2021-02-18 12:55:46', '2021-02-18 12:55:54'),
(42, '2', '255', '254', '', '7', 0, 0, '2021-02-18 12:55:47', '2021-02-18 12:55:47'),
(43, '2', '255', '258', '', '7', 0, 0, '2021-02-18 12:55:47', '2021-02-18 12:55:47'),
(44, '2', '255', '259', '', '7', 0, 0, '2021-02-18 12:55:47', '2021-02-18 12:55:47'),
(45, '2', '255', '260', '', '7', 0, 0, '2021-02-18 12:55:47', '2021-02-18 12:55:47'),
(46, '4', '1', '255', 'Your job order 21-0005 is now being processed. ', '7', 1, 1, '2021-02-18 12:56:00', '2021-02-18 12:56:13'),
(47, '1', '255', '1', '', '8', 1, 0, '2021-02-18 13:16:50', '2021-02-18 13:16:50'),
(48, '1', '255', '254', '', '8', 0, 0, '2021-02-18 13:16:50', '2021-02-18 13:16:50'),
(49, '1', '255', '258', '', '8', 0, 0, '2021-02-18 13:16:50', '2021-02-18 13:16:50'),
(50, '1', '255', '259', '', '8', 0, 0, '2021-02-18 13:16:50', '2021-02-18 13:16:50'),
(51, '1', '255', '260', '', '8', 0, 0, '2021-02-18 13:16:50', '2021-02-18 13:16:50'),
(52, '5', '1', '255', 'You job order  21-0005 has been delivered. ', '7', 1, 0, '2021-02-18 13:39:32', '2021-02-18 13:39:32'),
(53, '6', '1', '255', 'Your payment for job order  21-0005 has been confirmed..', '7', 1, 0, '2021-02-18 13:39:32', '2021-02-18 13:39:32'),
(54, '1', '255', '1', '', '9', 1, 0, '2021-02-18 13:40:58', '2021-02-18 13:40:58'),
(55, '1', '255', '254', '', '9', 0, 0, '2021-02-18 13:40:58', '2021-02-18 13:40:58'),
(56, '1', '255', '258', '', '9', 0, 0, '2021-02-18 13:40:58', '2021-02-18 13:40:58'),
(57, '1', '255', '259', '', '9', 0, 0, '2021-02-18 13:40:58', '2021-02-18 13:40:58'),
(58, '1', '255', '260', '', '9', 0, 0, '2021-02-18 13:40:58', '2021-02-18 13:40:58'),
(59, '2', '255', '1', '', '9', 1, 0, '2021-02-18 13:41:07', '2021-02-18 13:41:07'),
(60, '2', '255', '254', '', '9', 0, 0, '2021-02-18 13:41:07', '2021-02-18 13:41:07'),
(61, '2', '255', '258', '', '9', 0, 0, '2021-02-18 13:41:07', '2021-02-18 13:41:07'),
(62, '2', '255', '259', '', '9', 0, 0, '2021-02-18 13:41:07', '2021-02-18 13:41:07'),
(63, '2', '255', '260', '', '9', 0, 0, '2021-02-18 13:41:07', '2021-02-18 13:41:07'),
(64, '1', '255', '1', '', '10', 1, 0, '2021-02-18 13:45:28', '2021-02-18 13:45:28'),
(65, '1', '255', '254', '', '10', 0, 0, '2021-02-18 13:45:28', '2021-02-18 13:45:28'),
(66, '1', '255', '258', '', '10', 0, 0, '2021-02-18 13:45:28', '2021-02-18 13:45:28'),
(67, '1', '255', '259', '', '10', 0, 0, '2021-02-18 13:45:28', '2021-02-18 13:45:28'),
(68, '1', '255', '260', '', '10', 0, 0, '2021-02-18 13:45:28', '2021-02-18 13:45:28'),
(69, '2', '255', '1', '', '10', 1, 0, '2021-02-18 13:45:39', '2021-02-18 13:45:39'),
(70, '2', '255', '254', '', '10', 0, 0, '2021-02-18 13:45:39', '2021-02-18 13:45:39'),
(71, '2', '255', '258', '', '10', 0, 0, '2021-02-18 13:45:39', '2021-02-18 13:45:39'),
(72, '2', '255', '259', '', '10', 0, 0, '2021-02-18 13:45:39', '2021-02-18 13:45:39'),
(73, '2', '255', '260', '', '10', 0, 0, '2021-02-18 13:45:39', '2021-02-18 13:45:39'),
(74, '2', '255', '1', '', '10', 1, 0, '2021-02-18 13:46:14', '2021-02-18 13:46:14'),
(75, '2', '255', '254', '', '10', 0, 0, '2021-02-18 13:46:14', '2021-02-18 13:46:14'),
(76, '2', '255', '258', '', '10', 0, 0, '2021-02-18 13:46:14', '2021-02-18 13:46:14'),
(77, '2', '255', '259', '', '10', 0, 0, '2021-02-18 13:46:14', '2021-02-18 13:46:14'),
(78, '2', '255', '260', '', '10', 0, 0, '2021-02-18 13:46:14', '2021-02-18 13:46:14'),
(79, '1', '255', '1', '', '11', 1, 0, '2021-02-18 14:07:45', '2021-02-18 14:07:45'),
(80, '1', '255', '254', '', '11', 0, 0, '2021-02-18 14:07:45', '2021-02-18 14:07:45'),
(81, '1', '255', '258', '', '11', 0, 0, '2021-02-18 14:07:45', '2021-02-18 14:07:45'),
(82, '1', '255', '259', '', '11', 0, 0, '2021-02-18 14:07:45', '2021-02-18 14:07:45'),
(83, '1', '255', '260', '', '11', 0, 0, '2021-02-18 14:07:45', '2021-02-18 14:07:45'),
(84, '1', '255', '1', '', '12', 1, 0, '2021-02-18 14:11:09', '2021-02-18 14:11:09'),
(85, '1', '255', '254', '', '12', 0, 0, '2021-02-18 14:11:09', '2021-02-18 14:11:09'),
(86, '1', '255', '258', '', '12', 0, 0, '2021-02-18 14:11:09', '2021-02-18 14:11:09'),
(87, '1', '255', '259', '', '12', 0, 0, '2021-02-18 14:11:09', '2021-02-18 14:11:09'),
(88, '1', '255', '260', '', '12', 0, 0, '2021-02-18 14:11:09', '2021-02-18 14:11:09'),
(89, '1', '255', '1', '', '13', 1, 0, '2021-02-18 14:15:46', '2021-02-18 14:15:46'),
(90, '1', '255', '254', '', '13', 0, 0, '2021-02-18 14:15:46', '2021-02-18 14:15:46'),
(91, '1', '255', '258', '', '13', 0, 0, '2021-02-18 14:15:46', '2021-02-18 14:15:46'),
(92, '1', '255', '259', '', '13', 0, 0, '2021-02-18 14:15:46', '2021-02-18 14:15:46'),
(93, '1', '255', '260', '', '13', 0, 0, '2021-02-18 14:15:46', '2021-02-18 14:15:46'),
(94, '1', '255', '1', '', '14', 1, 0, '2021-02-18 14:16:59', '2021-02-18 14:16:59'),
(95, '1', '255', '254', '', '14', 0, 0, '2021-02-18 14:16:59', '2021-02-18 14:16:59'),
(96, '1', '255', '258', '', '14', 0, 0, '2021-02-18 14:17:00', '2021-02-18 14:17:00'),
(97, '1', '255', '259', '', '14', 0, 0, '2021-02-18 14:17:00', '2021-02-18 14:17:00'),
(98, '1', '255', '260', '', '14', 0, 0, '2021-02-18 14:17:00', '2021-02-18 14:17:00'),
(99, '1', '256', '1', '', '15', 1, 0, '2021-02-18 14:20:34', '2021-02-18 14:20:34'),
(100, '1', '256', '254', '', '15', 0, 0, '2021-02-18 14:20:34', '2021-02-18 14:20:34'),
(101, '1', '256', '258', '', '15', 0, 0, '2021-02-18 14:20:35', '2021-02-18 14:20:35'),
(102, '1', '256', '259', '', '15', 0, 0, '2021-02-18 14:20:35', '2021-02-18 14:20:35'),
(103, '1', '256', '260', '', '15', 0, 0, '2021-02-18 14:20:35', '2021-02-18 14:20:35'),
(104, '1', '255', '1', '', '16', 1, 0, '2021-02-18 14:21:21', '2021-02-18 14:21:21'),
(105, '1', '255', '254', '', '16', 0, 0, '2021-02-18 14:21:21', '2021-02-18 14:21:21'),
(106, '1', '255', '258', '', '16', 0, 0, '2021-02-18 14:21:21', '2021-02-18 14:21:21'),
(107, '1', '255', '259', '', '16', 0, 0, '2021-02-18 14:21:21', '2021-02-18 14:21:21'),
(108, '1', '255', '260', '', '16', 0, 0, '2021-02-18 14:21:21', '2021-02-18 14:21:21'),
(109, '1', '256', '1', '', '17', 1, 0, '2021-02-18 14:22:25', '2021-02-18 14:22:25'),
(110, '1', '256', '254', '', '17', 0, 0, '2021-02-18 14:22:25', '2021-02-18 14:22:25'),
(111, '1', '256', '258', '', '17', 0, 0, '2021-02-18 14:22:25', '2021-02-18 14:22:25'),
(112, '1', '256', '259', '', '17', 0, 0, '2021-02-18 14:22:25', '2021-02-18 14:22:25'),
(113, '1', '256', '260', '', '17', 0, 0, '2021-02-18 14:22:25', '2021-02-18 14:22:25'),
(114, '4', '1', '255', 'Your job order 21-0006 is now being processed. ', '9', 1, 0, '2021-02-18 14:35:48', '2021-02-18 14:35:48'),
(115, '4', '1', '255', 'Your job order 21-0006 is now being processed. ', '9', 1, 0, '2021-02-18 14:36:09', '2021-02-18 14:36:09'),
(116, '1', '255', '1', '', '18', 1, 0, '2021-02-18 15:32:39', '2021-02-18 15:32:39'),
(117, '1', '255', '254', '', '18', 0, 0, '2021-02-18 15:32:39', '2021-02-18 15:32:39'),
(118, '1', '255', '258', '', '18', 0, 0, '2021-02-18 15:32:39', '2021-02-18 15:32:39'),
(119, '1', '255', '260', '', '18', 0, 0, '2021-02-18 15:32:39', '2021-02-18 15:32:39'),
(120, '1', '255', '1', '', '19', 1, 0, '2021-02-18 15:46:29', '2021-02-18 15:46:29'),
(121, '1', '255', '254', '', '19', 0, 0, '2021-02-18 15:46:29', '2021-02-18 15:46:29'),
(122, '1', '255', '258', '', '19', 0, 0, '2021-02-18 15:46:29', '2021-02-18 15:46:29'),
(123, '1', '255', '260', '', '19', 0, 0, '2021-02-18 15:46:29', '2021-02-18 15:46:29'),
(124, '1', '255', '1', '', '20', 1, 0, '2021-02-18 16:14:16', '2021-02-18 16:14:16'),
(125, '1', '255', '254', '', '20', 0, 0, '2021-02-18 16:14:16', '2021-02-18 16:14:16'),
(126, '1', '255', '258', '', '20', 0, 0, '2021-02-18 16:14:16', '2021-02-18 16:14:16'),
(127, '1', '255', '260', '', '20', 0, 0, '2021-02-18 16:14:16', '2021-02-18 16:14:16'),
(128, '1', '255', '1', '', '21', 1, 0, '2021-02-18 16:16:43', '2021-02-18 16:16:43'),
(129, '1', '255', '254', '', '21', 0, 0, '2021-02-18 16:16:43', '2021-02-18 16:16:43'),
(130, '1', '255', '258', '', '21', 0, 0, '2021-02-18 16:16:43', '2021-02-18 16:16:43'),
(131, '1', '255', '260', '', '21', 0, 0, '2021-02-18 16:16:43', '2021-02-18 16:16:43'),
(132, '1', '255', '1', '', '22', 1, 0, '2021-02-18 16:28:32', '2021-02-18 16:28:32'),
(133, '1', '255', '254', '', '22', 0, 0, '2021-02-18 16:28:32', '2021-02-18 16:28:32'),
(134, '1', '255', '258', '', '22', 0, 0, '2021-02-18 16:28:32', '2021-02-18 16:28:32'),
(135, '1', '255', '260', '', '22', 0, 0, '2021-02-18 16:28:32', '2021-02-18 16:28:32'),
(136, '2', '1', '1', '', '22', 1, 0, '2021-02-18 16:32:07', '2021-02-18 16:32:07'),
(137, '2', '1', '254', '', '22', 0, 0, '2021-02-18 16:32:07', '2021-02-18 16:32:07'),
(138, '2', '1', '258', '', '22', 0, 0, '2021-02-18 16:32:07', '2021-02-18 16:32:07'),
(139, '2', '1', '260', '', '22', 0, 0, '2021-02-18 16:32:07', '2021-02-18 16:32:07'),
(140, '1', '255', '1', '', '23', 1, 0, '2021-02-18 16:32:37', '2021-02-18 16:32:37'),
(141, '1', '255', '254', '', '23', 0, 0, '2021-02-18 16:32:37', '2021-02-18 16:32:37'),
(142, '1', '255', '258', '', '23', 0, 0, '2021-02-18 16:32:37', '2021-02-18 16:32:37'),
(143, '1', '255', '260', '', '23', 0, 0, '2021-02-18 16:32:37', '2021-02-18 16:32:37'),
(144, '2', '1', '1', '', '23', 1, 0, '2021-02-18 16:33:00', '2021-02-18 16:33:00'),
(145, '2', '1', '254', '', '23', 0, 0, '2021-02-18 16:33:00', '2021-02-18 16:33:00'),
(146, '2', '1', '258', '', '23', 0, 0, '2021-02-18 16:33:00', '2021-02-18 16:33:00'),
(147, '2', '1', '260', '', '23', 0, 0, '2021-02-18 16:33:00', '2021-02-18 16:33:00'),
(148, '1', '255', '1', '', '24', 1, 0, '2021-02-18 16:34:46', '2021-02-18 16:34:46'),
(149, '1', '255', '254', '', '24', 0, 0, '2021-02-18 16:34:46', '2021-02-18 16:34:46'),
(150, '1', '255', '258', '', '24', 0, 0, '2021-02-18 16:34:46', '2021-02-18 16:34:46'),
(151, '1', '255', '260', '', '24', 0, 0, '2021-02-18 16:34:46', '2021-02-18 16:34:46'),
(152, '1', '255', '1', '', '25', 1, 0, '2021-02-18 16:35:15', '2021-02-18 16:35:15'),
(153, '1', '255', '254', '', '25', 0, 0, '2021-02-18 16:35:15', '2021-02-18 16:35:15'),
(154, '1', '255', '258', '', '25', 0, 0, '2021-02-18 16:35:15', '2021-02-18 16:35:15'),
(155, '1', '255', '260', '', '25', 0, 0, '2021-02-18 16:35:15', '2021-02-18 16:35:15'),
(156, '1', '255', '1', '', '26', 1, 0, '2021-02-18 16:38:10', '2021-02-18 16:38:10'),
(157, '1', '255', '254', '', '26', 0, 0, '2021-02-18 16:38:10', '2021-02-18 16:38:10'),
(158, '1', '255', '258', '', '26', 0, 0, '2021-02-18 16:38:10', '2021-02-18 16:38:10'),
(159, '1', '255', '260', '', '26', 0, 0, '2021-02-18 16:38:10', '2021-02-18 16:38:10'),
(160, '3', '263', '1', '', '263', 1, 0, '2021-02-18 16:43:36', '2021-02-18 16:43:36'),
(161, '3', '263', '254', '', '263', 0, 0, '2021-02-18 16:43:36', '2021-02-18 16:43:36'),
(162, '3', '263', '258', '', '263', 0, 0, '2021-02-18 16:43:36', '2021-02-18 16:43:36'),
(163, '3', '263', '260', '', '263', 0, 0, '2021-02-18 16:43:36', '2021-02-18 16:43:36'),
(164, '1', '263', '1', '', '27', 1, 0, '2021-02-18 16:51:07', '2021-02-18 16:51:07'),
(165, '1', '263', '254', '', '27', 0, 0, '2021-02-18 16:51:07', '2021-02-18 16:51:07'),
(166, '1', '263', '258', '', '27', 0, 0, '2021-02-18 16:51:07', '2021-02-18 16:51:07'),
(167, '1', '263', '260', '', '27', 0, 0, '2021-02-18 16:51:07', '2021-02-18 16:51:07'),
(168, '1', '263', '1', '', '28', 1, 0, '2021-02-18 16:51:35', '2021-02-18 16:51:35'),
(169, '1', '263', '254', '', '28', 0, 0, '2021-02-18 16:51:35', '2021-02-18 16:51:35'),
(170, '1', '263', '258', '', '28', 0, 0, '2021-02-18 16:51:35', '2021-02-18 16:51:35'),
(171, '1', '263', '260', '', '28', 0, 0, '2021-02-18 16:51:35', '2021-02-18 16:51:35'),
(172, '2', '263', '1', '', '28', 1, 0, '2021-02-18 16:52:00', '2021-02-18 16:52:00'),
(173, '2', '263', '254', '', '28', 0, 0, '2021-02-18 16:52:00', '2021-02-18 16:52:00'),
(174, '2', '263', '258', '', '28', 0, 0, '2021-02-18 16:52:00', '2021-02-18 16:52:00'),
(175, '2', '263', '260', '', '28', 0, 0, '2021-02-18 16:52:00', '2021-02-18 16:52:00'),
(176, '1', '263', '1', '', '29', 1, 0, '2021-02-18 16:53:06', '2021-02-18 16:53:06'),
(177, '1', '263', '254', '', '29', 0, 0, '2021-02-18 16:53:06', '2021-02-18 16:53:06'),
(178, '1', '263', '258', '', '29', 0, 0, '2021-02-18 16:53:06', '2021-02-18 16:53:06'),
(179, '1', '263', '260', '', '29', 0, 0, '2021-02-18 16:53:06', '2021-02-18 16:53:06'),
(180, '4', '1', '255', 'Your job order 21-0009 is now being processed. ', '23', 1, 0, '2021-02-18 17:14:24', '2021-02-18 17:14:24'),
(181, '4', '1', '255', 'Your job order 21-0008 is now being processed. ', '22', 1, 0, '2021-02-18 17:16:07', '2021-02-18 17:16:07'),
(182, '4', '1', '263', 'Your job order 21-0010 is now being processed. ', '28', 0, 0, '2021-02-18 17:20:17', '2021-02-18 17:20:17'),
(183, '4', '1', '255', 'Your job order 21-0009 is now being processed. ', '23', 1, 0, '2021-02-18 17:25:18', '2021-02-18 17:25:18'),
(184, '4', '1', '255', 'Your job order 21-0008 is now being processed. ', '22', 1, 0, '2021-02-18 17:27:34', '2021-02-18 17:27:34'),
(185, '5', '1', '255', 'You job order  21-0008 has been delivered. ', '22', 1, 0, '2021-02-18 17:28:34', '2021-02-18 17:28:34'),
(186, '4', '1', '255', 'Your job order 21-0008 is now being processed. ', '22', 1, 0, '2021-02-18 17:29:11', '2021-02-18 17:29:11'),
(187, '5', '1', '255', 'You job order  21-0008 has been delivered. ', '22', 1, 0, '2021-02-18 17:29:55', '2021-02-18 17:29:55'),
(188, '4', '1', '255', 'Your job order 21-0008 is now being processed. ', '22', 1, 0, '2021-02-18 17:30:52', '2021-02-18 17:30:52'),
(189, '4', '1', '255', 'Your job order 21-0004 is now being processed. ', '5', 1, 0, '2021-02-18 17:31:18', '2021-02-18 17:31:18'),
(190, '4', '1', '255', 'Your job order 21-0009 is now being processed. ', '23', 1, 0, '2021-02-18 17:33:14', '2021-02-18 17:33:14'),
(191, '5', '1', '255', 'You job order  21-0009 has been delivered. ', '23', 1, 0, '2021-02-18 17:33:32', '2021-02-18 17:33:32'),
(192, '6', '1', '255', 'Your payment for job order  21-0009 has been confirmed..', '23', 1, 0, '2021-02-18 17:33:49', '2021-02-18 17:33:49'),
(193, '4', '1', '255', 'Your job order 21-0008 is now being processed. ', '22', 1, 0, '2021-02-18 17:33:59', '2021-02-18 17:33:59'),
(194, '5', '1', '255', 'You job order  21-0008 has been delivered. ', '22', 1, 0, '2021-02-18 17:34:18', '2021-02-18 17:34:18'),
(195, '6', '1', '255', 'Your payment for job order  21-0008 has been confirmed..', '22', 1, 0, '2021-02-18 17:34:18', '2021-02-18 17:34:18'),
(196, '4', '1', '255', 'Your job order 21-0004 is now being processed. ', '5', 1, 0, '2021-02-18 17:37:34', '2021-02-18 17:37:34'),
(197, '4', '1', '255', 'Your job order 21-0009 is now being processed. ', '23', 1, 0, '2021-02-18 17:40:54', '2021-02-18 17:40:54'),
(198, '5', '1', '255', 'You job order  21-0009 has been delivered. ', '23', 1, 0, '2021-02-18 17:41:30', '2021-02-18 17:41:30'),
(199, '6', '1', '255', 'Your payment for job order  21-0009 has been confirmed..', '23', 1, 0, '2021-02-18 17:42:56', '2021-02-18 17:42:56'),
(200, '4', '1', '255', 'Your job order 21-0008 is now being processed. ', '22', 1, 0, '2021-02-18 17:45:17', '2021-02-18 17:45:17'),
(201, '4', '1', '255', 'Your job order 21-0004 is now being processed. ', '5', 1, 0, '2021-02-18 17:46:29', '2021-02-18 17:46:29'),
(202, '4', '1', '255', 'Your job order 21-0009 is now being processed. ', '23', 1, 0, '2021-02-18 17:48:55', '2021-02-18 17:48:55'),
(203, '6', '1', '255', 'Your payment for job order  21-0009 has been confirmed..', '23', 1, 0, '2021-02-18 17:49:24', '2021-02-18 17:49:24'),
(204, '4', '1', '255', 'Your job order 21-0004 is now being processed. ', '5', 1, 0, '2021-02-18 17:52:17', '2021-02-18 17:52:17'),
(205, '5', '1', '255', 'You job order  21-0004 has been delivered. ', '5', 1, 0, '2021-02-18 17:52:34', '2021-02-18 17:52:34'),
(206, '5', '1', '255', 'You job order  21-0009 has been delivered. ', '23', 1, 0, '2021-02-18 17:53:50', '2021-02-18 17:53:50'),
(207, '6', '1', '255', 'Your payment for job order  21-0009 has been confirmed..', '23', 1, 0, '2021-02-18 17:53:50', '2021-02-18 17:53:50'),
(208, '4', '1', '255', 'Your job order 21-0008 is now being processed. ', '22', 1, 0, '2021-02-18 17:55:30', '2021-02-18 17:55:30'),
(209, '4', '1', '255', 'Your job order 21-0004 is now being processed. ', '5', 1, 0, '2021-02-18 17:55:56', '2021-02-18 17:55:56'),
(210, '5', '1', '255', 'You job order  21-0004 has been delivered. ', '5', 1, 0, '2021-02-18 17:56:26', '2021-02-18 17:56:26'),
(211, '6', '1', '255', 'Your payment for job order  21-0004 has been confirmed..', '5', 1, 0, '2021-02-18 17:56:26', '2021-02-18 17:56:26'),
(212, '4', '1', '255', 'Your job order 21-0009 is now being processed. ', '23', 1, 0, '2021-02-18 17:58:26', '2021-02-18 17:58:26'),
(213, '5', '1', '255', 'You job order  21-0009 has been delivered. ', '23', 1, 0, '2021-02-18 17:58:47', '2021-02-18 17:58:47'),
(214, '6', '1', '255', 'Your payment for job order  21-0009 has been confirmed..', '23', 1, 0, '2021-02-18 17:59:15', '2021-02-18 17:59:15'),
(215, '4', '1', '255', 'Your job order 21-0008 is now being processed. ', '22', 1, 0, '2021-02-18 18:01:07', '2021-02-18 18:01:07'),
(216, '5', '1', '255', 'You job order  21-0008 has been delivered. ', '22', 1, 0, '2021-02-18 18:01:45', '2021-02-18 18:01:45'),
(217, '6', '1', '255', 'Your payment for job order  21-0008 has been confirmed..', '22', 1, 0, '2021-02-18 18:02:09', '2021-02-18 18:02:09'),
(218, '4', '1', '255', 'Your job order 21-0004 is now being processed. ', '5', 1, 0, '2021-02-18 18:04:43', '2021-02-18 18:04:43'),
(219, '4', '1', '255', 'Your job order 21-0004 is now being processed. ', '5', 1, 0, '2021-02-18 18:06:56', '2021-02-18 18:06:56'),
(220, '4', '1', '255', 'Your job order 21-0009 is now being processed. ', '23', 1, 0, '2021-02-18 18:07:16', '2021-02-18 18:07:16'),
(221, '5', '1', '255', 'You job order  21-0009 has been delivered. ', '23', 1, 0, '2021-02-18 18:07:30', '2021-02-18 18:07:30'),
(222, '6', '1', '255', 'Your payment for job order  21-0009 has been confirmed..', '23', 1, 0, '2021-02-18 18:07:44', '2021-02-18 18:07:44'),
(223, '4', '1', '255', 'Your job order 21-0008 is now being processed. ', '22', 1, 0, '2021-02-18 18:08:04', '2021-02-18 18:08:04'),
(224, '5', '1', '255', 'You job order  21-0004 has been delivered. ', '5', 1, 0, '2021-02-18 18:08:17', '2021-02-18 18:08:17'),
(225, '6', '1', '255', 'Your payment for job order  21-0004 has been confirmed..', '5', 1, 0, '2021-02-18 18:08:17', '2021-02-18 18:08:17'),
(226, '4', '1', '255', 'Your job order 21-0009 is now being processed. ', '23', 1, 0, '2021-02-18 18:11:32', '2021-02-18 18:11:32'),
(227, '5', '1', '255', 'You job order  21-0009 has been delivered. ', '23', 1, 0, '2021-02-18 18:11:50', '2021-02-18 18:11:50'),
(228, '6', '1', '255', 'Your payment for job order  21-0009 has been confirmed..', '23', 1, 0, '2021-02-18 18:12:10', '2021-02-18 18:12:10'),
(229, '4', '1', '255', 'Your job order 21-0008 is now being processed. ', '22', 1, 0, '2021-02-18 18:14:42', '2021-02-18 18:14:42'),
(230, '5', '1', '255', 'You job order  21-0008 has been delivered. ', '22', 1, 0, '2021-02-18 18:15:08', '2021-02-18 18:15:08'),
(231, '6', '1', '255', 'Your payment for job order  21-0008 has been confirmed..', '22', 1, 0, '2021-02-18 18:15:29', '2021-02-18 18:15:29'),
(232, '4', '1', '255', 'Your job order 21-0009 is now being processed. ', '23', 1, 0, '2021-02-18 18:56:00', '2021-02-18 18:56:00'),
(233, '5', '1', '255', 'You job order  21-0009 has been delivered. ', '23', 1, 0, '2021-02-18 18:56:54', '2021-02-18 18:56:54'),
(234, '6', '1', '255', 'Your payment for job order  21-0009 has been confirmed..', '23', 1, 0, '2021-02-18 18:57:40', '2021-02-18 18:57:40'),
(235, '4', '1', '255', 'Your job order 21-0008 is now being processed. ', '22', 1, 0, '2021-02-18 18:58:18', '2021-02-18 18:58:18'),
(236, '5', '1', '255', 'You job order  21-0008 has been delivered. ', '22', 1, 0, '2021-02-18 18:58:56', '2021-02-18 18:58:56'),
(237, '6', '1', '255', 'Your payment for job order  21-0008 has been confirmed..', '22', 1, 0, '2021-02-18 18:58:56', '2021-02-18 18:58:56'),
(238, '4', '1', '255', 'Your job order 21-0004 is now being processed. ', '5', 1, 0, '2021-02-18 19:01:29', '2021-02-18 19:01:29'),
(239, '5', '1', '255', 'You job order  21-0004 has been delivered. ', '5', 1, 0, '2021-02-18 19:02:55', '2021-02-18 19:02:55'),
(240, '6', '1', '255', 'Your payment for job order  21-0004 has been confirmed..', '5', 1, 0, '2021-02-18 19:02:55', '2021-02-18 19:02:55'),
(241, '4', '1', '255', 'Your job order 21-0004 is now being processed. ', '5', 1, 0, '2021-02-18 19:08:18', '2021-02-18 19:08:18'),
(242, '5', '1', '255', 'You job order  21-0004 has been delivered. ', '5', 1, 0, '2021-02-18 19:09:23', '2021-02-18 19:09:23'),
(243, '6', '1', '255', 'Your payment for job order  21-0004 has been confirmed..', '5', 1, 0, '2021-02-18 19:10:30', '2021-02-18 19:10:30'),
(244, '4', '1', '255', 'Your job order 21-0009 is now being processed. ', '23', 1, 0, '2021-02-18 19:11:31', '2021-02-18 19:11:31'),
(245, '5', '1', '255', 'You job order  21-0009 has been delivered. ', '23', 1, 0, '2021-02-18 19:12:41', '2021-02-18 19:12:41'),
(246, '6', '1', '255', 'Your payment for job order  21-0009 has been confirmed..', '23', 1, 0, '2021-02-18 19:12:41', '2021-02-18 19:12:41'),
(247, '4', '1', '255', 'Your job order 21-0008 is now being processed. ', '22', 1, 0, '2021-02-18 19:22:20', '2021-02-18 19:22:20'),
(248, '5', '1', '255', 'You job order  21-0008 has been delivered. ', '22', 1, 0, '2021-02-18 19:23:02', '2021-02-18 19:23:02'),
(249, '6', '1', '255', 'Your payment for job order  21-0008 has been confirmed..', '22', 1, 0, '2021-02-18 19:23:02', '2021-02-18 19:23:02'),
(250, '4', '1', '255', 'Your job order 21-0001 is now being processed. ', '1', 1, 0, '2021-02-18 19:27:29', '2021-02-18 19:27:29'),
(251, '5', '1', '255', 'You job order  21-0001 has been delivered. ', '1', 1, 0, '2021-02-18 19:29:03', '2021-02-18 19:29:03'),
(252, '4', '1', '255', 'Your job order 21-0009 is now being processed. ', '23', 1, 0, '2021-02-18 19:37:28', '2021-02-18 19:37:28'),
(253, '5', '1', '255', 'You job order  21-0009 has been delivered. ', '23', 1, 0, '2021-02-18 19:38:19', '2021-02-18 19:38:19'),
(254, '6', '1', '255', 'Your payment for job order  21-0009 has been confirmed..', '23', 1, 0, '2021-02-18 19:39:06', '2021-02-18 19:39:06'),
(255, '4', '1', '255', 'Your job order 21-0008 is now being processed. ', '22', 0, 0, '2021-02-18 19:41:06', '2021-02-18 19:41:06'),
(256, '5', '1', '255', 'You job order  21-0008 has been delivered. ', '22', 0, 0, '2021-02-18 19:42:06', '2021-02-18 19:42:06'),
(257, '6', '1', '255', 'Your payment for job order  21-0008 has been confirmed..', '22', 0, 0, '2021-02-18 19:43:11', '2021-02-18 19:43:11'),
(258, '4', '1', '255', 'Your job order 21-0004 is now being processed. ', '5', 0, 0, '2021-02-18 19:44:12', '2021-02-18 19:44:12'),
(259, '5', '1', '255', 'You job order  21-0004 has been delivered. ', '5', 0, 0, '2021-02-18 19:45:14', '2021-02-18 19:45:14'),
(260, '6', '1', '255', 'Your payment for job order  21-0004 has been confirmed..', '5', 0, 0, '2021-02-18 19:45:17', '2021-02-18 19:45:17'),
(261, '4', '1', '255', 'Your job order 21-0004 is now being processed. ', '5', 0, 0, '2021-02-18 19:46:38', '2021-02-18 19:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `notification_types`
--

CREATE TABLE `notification_types` (
  `notification_type_id` int(10) UNSIGNED NOT NULL,
  `notification_type_description` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `notification_message` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notification_types`
--

INSERT INTO `notification_types` (`notification_type_id`, `notification_type_description`, `notification_message`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'New Price Check', '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'New Job Order', '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Job Order is Being Processed', 'Your job order job_order_id is now being processed. ', '1', '0000-00-00 00:00:00', '2021-02-02 18:10:12'),
(4, 'Job Order is Delivered', 'You job order  job_order_id has been delivered. ', '1', '0000-00-00 00:00:00', '2021-02-02 18:10:12'),
(5, 'Pending Payment', 'Your payment for job order  job_order_id is still pending. Kindly settle the payment on or before the due date.', '1', '0000-00-00 00:00:00', '2021-02-02 18:10:12'),
(6, 'Paid', 'Your payment for job order  job_order_id has been confirmed..', '1', '0000-00-00 00:00:00', '2021-02-02 18:10:12'),
(7, 'New Login', '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Decline Order', '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(1, '255', 'Hotshot Coffee', '123312313213', '134620-OTLUABN7.png', '1', '55/56 Bin Row, Dapitan City, 6329 Quirino', '2021-02-17 13:46:20', '2021-02-18 14:49:38'),
(2, '256', 'Af Print', '123456789', '152505-IPURXJT1.png', '1', '62a abonifacio st. USA', '2021-02-17 14:52:04', '2021-02-17 15:25:05'),
(3, '261', 'Flat Tops', '000355464896', '144019-QYJG21AX.png', '1', 'Fort Bonifacio Taguig City', '2021-02-18 14:40:19', '2021-02-18 14:40:19'),
(4, '262', 'Curly Tops', '215544886845', '144350-ZLGS9G5X.png', '1', 'Makati City', '2021-02-18 14:43:50', '2021-02-18 14:43:50'),
(5, '263', 'Gandia Resort', '091625566877', '163817-6J7KOGPK.png', '1', 'UNIT 1 Dli Generics Building153 P. Cruz Street New Zaniga 1550, Mandaluyong, City', '2021-02-18 16:38:17', '2021-02-18 16:38:17');

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
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_item_code`, `product_machine_print`, `product_media`, `product_description`, `product_status`, `isDeleted`, `created_at`, `updated_at`) VALUES
(50, 'TPECO01', '1', 'Generic Sticker', 'Outdoor White Backing', 1, 0, '2021-02-04 16:40:16', '2021-02-04 16:40:16'),
(51, 'TPECO02', '1', 'Generic Sticker', 'Outdoor Black Backing', 1, 0, '2021-02-04 16:41:04', '2021-02-04 16:41:04'),
(52, 'TPECO03', '1', 'Premium Sticker', 'Outdoor White Backing', 1, 0, '2021-02-04 16:41:40', '2021-02-04 16:41:40'),
(53, 'TPECO04', '1', 'Premium Sticker GB', 'Outdoor Gray Backing', 1, 0, '2021-02-04 16:42:47', '2021-02-04 16:42:47'),
(54, 'TPECO05', '1', 'Premium Sticker BB', 'Outdoor Black Backing', 1, 0, '2021-02-04 17:09:21', '2021-02-04 17:09:21'),
(55, 'TPECO06', '1', 'Clear Sticker', 'Transparent Sticker', 1, 0, '2021-02-04 17:10:12', '2021-02-04 17:10:12'),
(56, 'TPECO07', '1', 'Ultraclear Sticker', 'High Transparent Sticker', 1, 0, '2021-02-04 17:11:10', '2021-02-04 17:11:10'),
(57, 'TPECO08', '1', 'Backlit Sticker', 'Lighted Sticker', 1, 0, '2021-02-04 17:11:52', '2021-02-04 17:11:52'),
(58, 'TPECO09', '1', 'Perforated Sticker', 'One Way Trans Perforated', 1, 0, '2021-02-04 17:12:54', '2021-02-04 17:12:54'),
(59, 'TPECO10', '1', 'Reflectorized Sticker', 'Honeycomb Reflector', 1, 0, '2021-02-04 17:13:42', '2021-02-04 17:17:54'),
(60, 'TPECO11', '1', 'Photopaper', 'Photopaper', 1, 0, '2021-02-04 17:14:49', '2021-02-04 17:18:03'),
(61, 'TPECO012', '1', 'Floor Sticker Generic', 'Thin Laminate', 1, 0, '2021-02-04 17:16:40', '2021-02-04 17:16:40'),
(62, 'TPECO13', '1', 'Floor Sticker Premium', 'Thick Laminate', 1, 0, '2021-02-04 17:17:17', '2021-02-04 17:18:10'),
(63, 'TPSOL01', '2', 'Tarpaulin 7 OZ', 'Tarpaulin 7 OZ', 1, 0, '2021-02-04 17:19:03', '2021-02-04 17:19:03'),
(64, 'TPSOL02', '2', 'Tarpaulin 10 OZ', 'Tarpaulin 10 OZ', 1, 0, '2021-02-04 17:19:45', '2021-02-04 17:19:45'),
(65, 'TPSOL03', '2', 'Tarpaulin 13 OZ', 'Tarpaulin 13 OZ', 1, 0, '2021-02-04 17:20:19', '2021-02-04 17:20:19'),
(66, 'TPSOL04', '2', 'Tarpaulin 15 OZ', 'Tarpaulin 15 OZ', 1, 0, '2021-02-04 17:21:03', '2021-02-04 17:21:03'),
(67, 'TPSOL05', '2', 'Tarpaulin 18 OZ', 'Tarpaulin 18 OZ', 1, 0, '2021-02-04 17:22:02', '2021-02-04 17:22:02'),
(68, 'TPSOL06', '2', 'Panaflex', 'Lighted', 1, 0, '2021-02-04 17:22:32', '2021-02-04 17:22:32'),
(69, 'TPSOL07', '2', 'Reflectorized Tarpaulin', 'Reflectorized Tarpaulin', 1, 0, '2021-02-04 17:23:52', '2021-02-04 17:23:52'),
(70, 'TPUV01', '2', 'Generic Sticker', 'Outdoor White Backing', 1, 0, '2021-02-04 17:24:41', '2021-02-04 17:24:41'),
(71, 'TPUV02', '3', 'Generic Sticker', 'Outdoor Black Backing', 1, 0, '2021-02-04 17:25:22', '2021-02-04 17:25:22'),
(72, 'TPUV03', '3', 'Premium Sticker', 'Outdoor White Backing', 1, 0, '2021-02-04 17:26:43', '2021-02-04 17:26:43'),
(73, 'TPUV04', '3', 'Premium Sticker GB', 'Outdoor White Blacking', 1, 0, '2021-02-05 09:07:33', '2021-02-05 09:07:33'),
(74, 'TPUV05', '3', 'Premium Sticker BB', 'Outdoor Black Backing', 1, 0, '2021-02-05 09:08:29', '2021-02-05 09:08:29'),
(75, 'TPUV06', '3', 'Clear Sticker', 'Transparent Stickerr', 1, 0, '2021-02-05 09:08:57', '2021-02-15 09:36:11'),
(76, 'TPUV07', '3', 'Ultraclear Sticker', 'High Transparent Sticker', 1, 0, '2021-02-05 09:09:32', '2021-02-05 09:09:32'),
(77, 'TPUV08', '3', 'Backlit Sticker', 'Lighted Sticker', 1, 0, '2021-02-05 09:10:02', '2021-02-05 09:10:02'),
(78, 'TPUV09', '3', 'Perforated Sticker', 'One Way Trans Perforated', 1, 0, '2021-02-05 09:10:37', '2021-02-05 09:10:37'),
(79, 'TPUV010', '3', 'Reflectorized Sticker', 'Honeycomb Reflector', 1, 0, '2021-02-05 09:11:34', '2021-02-05 09:11:34'),
(80, 'TPUV011', '3', 'Photopaper', 'Photopaper', 1, 0, '2021-02-05 09:12:00', '2021-02-05 09:12:00'),
(81, 'TPUV012', '3', 'Fabric', 'Cloth Coated', 1, 0, '2021-02-05 09:12:28', '2021-02-05 09:12:28'),
(82, 'TPUV013', '3', 'Canvas', 'Art Canvas', 1, 0, '2021-02-05 09:12:50', '2021-02-05 09:12:50'),
(83, 'TPBD01', '4', 'Sintra 1.5 MM', 'Sintra Board', 1, 0, '2021-02-05 09:13:23', '2021-02-15 10:43:42'),
(84, 'TPBD02', '4', 'Sintra 3MM', 'Sintra Board', 1, 0, '2021-02-05 09:14:02', '2021-02-05 09:14:02'),
(85, 'TPBD03', '4', 'Sintra 6MM', 'Sintra Board', 1, 0, '2021-02-05 09:14:26', '2021-02-05 09:14:26'),
(86, 'TPBD04', '4', 'Sintra 9MM', 'Sintra Board', 1, 0, '2021-02-05 09:14:54', '2021-02-05 09:14:54'),
(87, 'TPBD05', '4', 'Foamboard 5MM', 'Foam Board', 1, 0, '2021-02-05 09:15:22', '2021-02-05 09:15:22'),
(97, 'MGSHT', '1', 'Sticker on Magnetic Sheet', 'Sticker on Magnetic Sheet Standard Printing', 1, 0, '2021-02-17 14:54:40', '2021-02-17 14:54:40'),
(98, 'test', '2', 'test', 'test', 1, 1, '2021-02-18 14:51:09', '2021-02-18 14:52:46');

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
(1, '1', '51', 0.25, 36.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(2, '1', '50', 0.21, 30.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(3, '1', '52', 0.22, 32.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(4, '1', '55', 0.35, 51.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(5, '1', '54', 0.24, 34.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(6, '1', '56', 0.45, 65.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(7, '1', '53', 0.24, 34.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(8, '1', '59', 0.35, 50.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(9, '1', '57', 0.49, 70.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(10, '1', '58', 0.49, 70.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(11, '1', '64', 0.25, 36.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(12, '1', '63', 0.21, 30.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(13, '1', '62', 0.69, 100.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(14, '1', '67', 0.24, 34.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(15, '1', '65', 0.22, 32.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(16, '1', '60', 0.28, 40.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(17, '1', '61', 0.35, 50.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(18, '1', '72', 0.57, 82.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(19, '1', '82', 1.00, 1.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(20, '1', '78', 0.90, 130.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(21, '1', '81', 1.00, 1.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(22, '1', '79', 0.63, 130.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(23, '1', '87', 1.00, 1.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(24, '1', '80', 0.69, 90.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(25, '1', '75', 0.59, 85.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(26, '1', '86', 1.00, 1.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(27, '1', '73', 0.57, 82.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(28, '1', '74', 0.57, 82.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(29, '1', '71', 0.57, 82.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(30, '1', '69', 0.38, 55.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(31, '1', '76', 0.83, 120.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(32, '1', '83', 1.00, 1.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(33, '1', '66', 0.24, 34.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(34, '1', '70', 0.50, 72.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(35, '1', '77', 0.90, 130.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(36, '1', '68', 0.35, 51.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(37, '1', '91', 1.00, 1.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(38, '1', '85', 1.00, 1.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(39, '1', '84', 1.00, 1.00, '2021-02-09 13:27:32', '2021-02-09 13:27:32'),
(40, '2', '50', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(41, '2', '51', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(42, '2', '53', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(43, '2', '52', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(44, '2', '55', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(45, '2', '56', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(46, '2', '54', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(47, '2', '58', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(48, '2', '57', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(49, '2', '61', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(50, '2', '59', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(51, '2', '60', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(52, '2', '62', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(53, '2', '63', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(54, '2', '64', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(55, '2', '68', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(56, '2', '65', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(57, '2', '70', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(58, '2', '71', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(59, '2', '67', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(60, '2', '69', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(61, '2', '73', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(62, '2', '66', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(63, '2', '75', 3.00, 3.00, '2021-02-09 14:12:37', '2021-02-09 14:12:37'),
(64, '2', '72', 3.00, 3.00, '2021-02-09 14:12:38', '2021-02-09 14:12:38'),
(65, '2', '77', 3.00, 3.00, '2021-02-09 14:12:38', '2021-02-09 14:12:38'),
(66, '2', '74', 3.00, 3.00, '2021-02-09 14:12:38', '2021-02-09 14:12:38'),
(67, '2', '78', 3.00, 3.00, '2021-02-09 14:12:38', '2021-02-09 14:12:38'),
(68, '2', '82', 3.00, 3.00, '2021-02-09 14:12:38', '2021-02-09 14:12:38'),
(69, '2', '76', 3.00, 3.00, '2021-02-09 14:12:38', '2021-02-09 14:12:38'),
(70, '2', '84', 3.00, 3.00, '2021-02-09 14:12:38', '2021-02-09 14:12:38'),
(71, '2', '79', 3.00, 3.00, '2021-02-09 14:12:38', '2021-02-09 14:12:38'),
(72, '2', '85', 3.00, 3.00, '2021-02-09 14:12:38', '2021-02-09 14:12:38'),
(73, '2', '83', 3.00, 3.00, '2021-02-09 14:12:38', '2021-02-09 14:12:38'),
(74, '2', '87', 3.00, 3.00, '2021-02-09 14:12:38', '2021-02-09 14:12:38'),
(75, '2', '81', 3.00, 3.00, '2021-02-09 14:12:38', '2021-02-09 14:12:38'),
(76, '2', '91', 2.00, 2.00, '2021-02-09 14:12:38', '2021-02-09 14:12:38'),
(77, '2', '80', 3.00, 3.00, '2021-02-09 14:12:38', '2021-02-09 14:12:38'),
(78, '2', '86', 3.00, 3.00, '2021-02-09 14:12:38', '2021-02-09 14:12:38'),
(79, '3', '51', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(80, '3', '55', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(81, '3', '50', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(82, '3', '53', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(83, '3', '52', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(84, '3', '54', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(85, '3', '59', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(86, '3', '58', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(87, '3', '57', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(88, '3', '56', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(89, '3', '65', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(90, '3', '64', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(91, '3', '62', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(92, '3', '66', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(93, '3', '63', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(94, '3', '68', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(95, '3', '61', 3.00, 3.00, '2021-02-09 14:33:06', '2021-02-09 14:33:06'),
(96, '3', '70', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(97, '3', '67', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(98, '3', '69', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(99, '3', '73', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(100, '3', '71', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(101, '3', '60', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(102, '3', '75', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(103, '3', '72', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(104, '3', '74', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(105, '3', '79', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(106, '3', '77', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(107, '3', '76', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(108, '3', '78', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(109, '3', '80', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(110, '3', '87', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(111, '3', '83', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(112, '3', '82', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(113, '3', '86', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(114, '3', '81', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(115, '3', '84', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(116, '3', '91', 2.00, 23.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(117, '3', '85', 3.00, 3.00, '2021-02-09 14:33:07', '2021-02-09 14:33:07'),
(118, '4', '50', 0.21, 30.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(119, '4', '51', 0.25, 36.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(120, '4', '52', 0.22, 32.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(121, '4', '53', 0.24, 34.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(122, '4', '54', 0.24, 34.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(123, '4', '60', 0.28, 40.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(124, '4', '57', 0.49, 70.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(125, '4', '59', 0.35, 50.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(126, '4', '55', 0.35, 51.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(127, '4', '56', 0.45, 65.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(128, '4', '63', 0.21, 30.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(129, '4', '62', 0.69, 100.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(130, '4', '65', 0.22, 32.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(131, '4', '58', 0.49, 70.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(132, '4', '61', 0.35, 50.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(133, '4', '70', 0.50, 72.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(134, '4', '66', 0.24, 34.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(135, '4', '67', 0.24, 34.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(136, '4', '64', 0.25, 36.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(137, '4', '68', 0.35, 51.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(138, '4', '69', 0.38, 55.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(139, '4', '72', 0.57, 82.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(140, '4', '91', 1.00, 1.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(141, '4', '87', 1.00, 1.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(142, '4', '71', 0.57, 82.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(143, '4', '73', 0.57, 82.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(144, '4', '78', 0.90, 130.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(145, '4', '74', 0.57, 82.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(146, '4', '86', 1.00, 1.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(147, '4', '81', 1.00, 1.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(148, '4', '80', 0.69, 90.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(149, '4', '76', 0.83, 120.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(150, '4', '83', 1.00, 1.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(151, '4', '82', 1.00, 1.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(152, '4', '79', 0.63, 130.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(153, '4', '77', 0.90, 130.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(154, '4', '84', 1.00, 1.00, '2021-02-09 14:48:48', '2021-02-09 14:48:48'),
(155, '4', '75', 0.59, 85.00, '2021-02-09 14:48:49', '2021-02-09 14:48:49'),
(156, '4', '85', 1.00, 1.00, '2021-02-09 14:48:49', '2021-02-09 14:48:49'),
(157, '1', '92', 1.00, 1.00, '2021-02-10 09:11:47', '2021-02-10 09:11:47'),
(158, '1', '50', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(159, '1', '52', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(160, '1', '54', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(161, '1', '51', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(162, '1', '53', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(163, '1', '55', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(164, '1', '59', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(165, '1', '57', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(166, '1', '56', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(167, '1', '58', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(168, '1', '62', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(169, '1', '66', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(170, '1', '61', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(171, '1', '60', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(172, '1', '68', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(173, '1', '64', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(174, '1', '69', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(175, '1', '73', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(176, '1', '67', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(177, '1', '74', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(178, '1', '65', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(179, '1', '63', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(180, '1', '75', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(181, '1', '72', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(182, '1', '70', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(183, '1', '71', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(184, '1', '78', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(185, '1', '77', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(186, '1', '76', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(187, '1', '80', 3.00, 3.00, '2021-02-10 14:13:16', '2021-02-10 14:13:16'),
(188, '1', '79', 3.00, 3.00, '2021-02-10 14:13:17', '2021-02-10 14:13:17'),
(189, '1', '92', 3.00, 3.00, '2021-02-10 14:13:17', '2021-02-10 14:13:17'),
(190, '1', '82', 3.00, 3.00, '2021-02-10 14:13:17', '2021-02-10 14:13:17'),
(191, '1', '86', 3.00, 3.00, '2021-02-10 14:13:17', '2021-02-10 14:13:17'),
(192, '1', '81', 3.00, 3.00, '2021-02-10 14:13:17', '2021-02-10 14:13:17'),
(193, '1', '87', 3.00, 3.00, '2021-02-10 14:13:17', '2021-02-10 14:13:17'),
(194, '1', '84', 3.00, 3.00, '2021-02-10 14:13:17', '2021-02-10 14:13:17'),
(195, '1', '83', 3.00, 3.00, '2021-02-10 14:13:17', '2021-02-10 14:13:17'),
(196, '1', '85', 3.00, 3.00, '2021-02-10 14:13:17', '2021-02-10 14:13:17'),
(197, '1', '91', 3.00, 3.00, '2021-02-10 14:13:17', '2021-02-10 14:13:17'),
(198, '2', '51', 2.00, 2.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(199, '2', '50', 1.00, 1.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(200, '2', '53', 4.00, 4.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(201, '2', '56', 7.00, 7.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(202, '2', '54', 5.00, 5.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(203, '2', '52', 3.00, 3.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(204, '2', '60', 11.00, 11.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(205, '2', '57', 8.00, 8.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(206, '2', '55', 6.00, 6.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(207, '2', '59', 10.00, 10.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(208, '2', '58', 9.00, 9.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(209, '2', '66', 17.00, 17.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(210, '2', '62', 13.00, 13.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(211, '2', '63', 14.00, 14.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(212, '2', '64', 15.00, 15.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(213, '2', '61', 12.00, 12.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(214, '2', '72', 23.00, 23.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(215, '2', '71', 22.00, 22.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(216, '2', '68', 19.00, 19.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(217, '2', '65', 16.00, 16.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(218, '2', '69', 20.00, 20.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(219, '2', '67', 18.00, 18.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(220, '2', '74', 25.00, 25.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(221, '2', '75', 26.00, 26.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(222, '2', '70', 21.00, 21.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(223, '2', '73', 24.00, 24.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(224, '2', '85', 36.00, 36.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(225, '2', '84', 35.00, 35.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(226, '2', '80', 31.00, 31.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(227, '2', '76', 27.00, 27.00, '2021-02-10 14:30:01', '2021-02-10 14:30:01'),
(228, '2', '77', 28.00, 28.00, '2021-02-10 14:30:02', '2021-02-10 14:30:02'),
(229, '2', '86', 37.00, 37.00, '2021-02-10 14:30:02', '2021-02-10 14:30:02'),
(230, '2', '78', 29.00, 29.00, '2021-02-10 14:30:02', '2021-02-10 14:30:02'),
(231, '2', '82', 33.00, 33.00, '2021-02-10 14:30:02', '2021-02-10 14:30:02'),
(232, '2', '87', 38.00, 38.00, '2021-02-10 14:30:02', '2021-02-10 14:30:02'),
(233, '2', '79', 30.00, 30.00, '2021-02-10 14:30:02', '2021-02-10 14:30:02'),
(234, '2', '81', 32.00, 32.00, '2021-02-10 14:30:02', '2021-02-10 14:30:02'),
(235, '2', '83', 34.00, 34.00, '2021-02-10 14:30:02', '2021-02-10 14:30:02'),
(236, '3', '50', 1.00, 1.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(237, '3', '51', 2.00, 2.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(238, '3', '52', 3.00, 3.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(239, '3', '53', 4.00, 4.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(240, '3', '54', 5.00, 5.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(241, '3', '57', 8.00, 8.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(242, '3', '55', 6.00, 6.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(243, '3', '58', 9.00, 9.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(244, '3', '59', 10.00, 10.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(245, '3', '56', 7.00, 7.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(246, '3', '62', 13.00, 13.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(247, '3', '61', 12.00, 12.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(248, '3', '65', 16.00, 16.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(249, '3', '63', 14.00, 14.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(250, '3', '60', 11.00, 11.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(251, '3', '67', 18.00, 18.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(252, '3', '66', 17.00, 17.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(253, '3', '72', 23.00, 23.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(254, '3', '68', 19.00, 19.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(255, '3', '70', 21.00, 21.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(256, '3', '69', 20.00, 20.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(257, '3', '73', 24.00, 24.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(258, '3', '71', 22.00, 22.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(259, '3', '64', 15.00, 15.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(260, '3', '74', 25.00, 25.00, '2021-02-10 14:40:07', '2021-02-10 14:40:07'),
(261, '3', '76', 27.00, 27.00, '2021-02-10 14:40:08', '2021-02-10 14:40:08'),
(262, '3', '77', 28.00, 28.00, '2021-02-10 14:40:08', '2021-02-10 14:40:08'),
(263, '3', '79', 30.00, 30.00, '2021-02-10 14:40:08', '2021-02-10 14:40:08'),
(264, '3', '75', 26.00, 26.00, '2021-02-10 14:40:08', '2021-02-10 14:40:08'),
(265, '3', '80', 31.00, 31.00, '2021-02-10 14:40:08', '2021-02-10 14:40:08'),
(266, '3', '81', 32.00, 32.00, '2021-02-10 14:40:08', '2021-02-10 14:40:08'),
(267, '3', '78', 29.00, 29.00, '2021-02-10 14:40:08', '2021-02-10 14:40:08'),
(268, '3', '86', 37.00, 37.00, '2021-02-10 14:40:08', '2021-02-10 14:40:08'),
(269, '3', '82', 33.00, 33.00, '2021-02-10 14:40:08', '2021-02-10 14:40:08'),
(270, '3', '83', 34.00, 34.00, '2021-02-10 14:40:08', '2021-02-10 14:40:08'),
(271, '3', '85', 36.00, 36.00, '2021-02-10 14:40:08', '2021-02-10 14:40:08'),
(272, '3', '87', 38.00, 38.00, '2021-02-10 14:40:08', '2021-02-10 14:40:08'),
(273, '3', '84', 35.00, 35.00, '2021-02-10 14:40:08', '2021-02-10 14:40:08'),
(274, '4', '51', 2.00, 2.00, '2021-02-10 14:44:03', '2021-02-10 14:44:03'),
(275, '4', '50', 1.00, 1.00, '2021-02-10 14:44:03', '2021-02-10 14:44:03'),
(276, '4', '53', 4.00, 4.00, '2021-02-10 14:44:03', '2021-02-10 14:44:03'),
(277, '4', '54', 5.00, 5.00, '2021-02-10 14:44:03', '2021-02-10 14:44:03'),
(278, '4', '55', 6.00, 6.00, '2021-02-10 14:44:03', '2021-02-10 14:44:03'),
(279, '4', '52', 3.00, 3.00, '2021-02-10 14:44:03', '2021-02-10 14:44:03'),
(280, '4', '61', 12.00, 12.00, '2021-02-10 14:44:03', '2021-02-10 14:44:03'),
(281, '4', '58', 9.00, 9.00, '2021-02-10 14:44:03', '2021-02-10 14:44:03'),
(282, '4', '64', 15.00, 15.00, '2021-02-10 14:44:03', '2021-02-10 14:44:03'),
(283, '4', '60', 11.00, 11.00, '2021-02-10 14:44:03', '2021-02-10 14:44:03'),
(284, '4', '63', 14.00, 14.00, '2021-02-10 14:44:03', '2021-02-10 14:44:03'),
(285, '4', '57', 8.00, 8.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(286, '4', '68', 19.00, 19.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(287, '4', '67', 18.00, 18.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(288, '4', '66', 17.00, 17.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(289, '4', '62', 13.00, 13.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(290, '4', '75', 26.00, 26.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(291, '4', '59', 10.00, 10.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(292, '4', '65', 16.00, 16.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(293, '4', '71', 22.00, 22.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(294, '4', '56', 7.00, 7.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(295, '4', '70', 21.00, 21.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(296, '4', '78', 29.00, 29.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(297, '4', '74', 25.00, 25.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(298, '4', '81', 32.00, 32.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(299, '4', '79', 30.00, 30.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(300, '4', '77', 28.00, 28.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(301, '4', '69', 20.00, 20.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(302, '4', '80', 31.00, 31.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(303, '4', '72', 23.00, 23.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(304, '4', '73', 24.00, 24.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(305, '4', '76', 27.00, 27.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(306, '4', '82', 33.00, 33.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(307, '4', '84', 35.00, 35.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(308, '4', '83', 34.00, 34.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(309, '4', '85', 36.00, 36.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(310, '4', '86', 37.00, 37.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(311, '4', '87', 38.00, 38.00, '2021-02-10 14:44:04', '2021-02-10 14:44:04'),
(312, '5', '52', 3.00, 3.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(313, '5', '50', 1.00, 1.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(314, '5', '51', 2.00, 2.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(315, '5', '53', 4.00, 4.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(316, '5', '62', 13.00, 13.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(317, '5', '61', 12.00, 12.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(318, '5', '56', 7.00, 7.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(319, '5', '59', 10.00, 10.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(320, '5', '55', 6.00, 6.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(321, '5', '58', 9.00, 9.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(322, '5', '60', 11.00, 11.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(323, '5', '65', 16.00, 16.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(324, '5', '54', 5.00, 5.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(325, '5', '64', 15.00, 15.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(326, '5', '57', 8.00, 8.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(327, '5', '66', 17.00, 17.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(328, '5', '63', 14.00, 14.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(329, '5', '67', 18.00, 18.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(330, '5', '87', 38.00, 38.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(331, '5', '68', 19.00, 19.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(332, '5', '70', 21.00, 21.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(333, '5', '72', 23.00, 23.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(334, '5', '71', 22.00, 22.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(335, '5', '73', 24.00, 24.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(336, '5', '69', 20.00, 20.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(337, '5', '78', 29.00, 29.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(338, '5', '77', 28.00, 28.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(339, '5', '76', 27.00, 27.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(340, '5', '75', 26.00, 26.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(341, '5', '74', 25.00, 25.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(342, '5', '82', 33.00, 33.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(343, '5', '80', 31.00, 31.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(344, '5', '83', 34.00, 34.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(345, '5', '79', 30.00, 30.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(346, '5', '81', 32.00, 32.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(347, '5', '85', 36.00, 36.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(348, '5', '84', 35.00, 35.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(349, '5', '86', 37.00, 37.00, '2021-02-10 14:48:46', '2021-02-10 14:48:46'),
(350, '6', '50', 1.00, 1.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(351, '6', '53', 4.00, 4.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(352, '6', '54', 5.00, 5.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(353, '6', '52', 3.00, 3.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(354, '6', '55', 6.00, 6.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(355, '6', '51', 2.00, 2.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(356, '6', '57', 8.00, 8.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(357, '6', '64', 15.00, 15.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(358, '6', '56', 7.00, 7.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(359, '6', '59', 10.00, 10.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(360, '6', '58', 9.00, 9.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(361, '6', '60', 11.00, 11.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(362, '6', '63', 14.00, 14.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(363, '6', '66', 17.00, 17.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(364, '6', '62', 13.00, 13.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(365, '6', '61', 12.00, 12.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(366, '6', '65', 16.00, 16.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(367, '6', '67', 18.00, 18.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(368, '6', '72', 23.00, 23.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(369, '6', '73', 24.00, 24.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(370, '6', '68', 19.00, 19.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(371, '6', '70', 21.00, 21.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(372, '6', '69', 20.00, 20.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(373, '6', '71', 22.00, 22.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(374, '6', '76', 27.00, 27.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(375, '6', '78', 29.00, 29.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(376, '6', '77', 28.00, 28.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(377, '6', '74', 25.00, 25.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(378, '6', '84', 35.00, 35.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(379, '6', '85', 36.00, 36.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(380, '6', '81', 32.00, 32.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(381, '6', '82', 33.00, 33.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(382, '6', '80', 31.00, 31.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(383, '6', '75', 26.00, 26.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(384, '6', '79', 30.00, 30.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(385, '6', '83', 34.00, 34.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(386, '6', '86', 37.00, 37.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(387, '6', '87', 38.00, 38.00, '2021-02-10 14:52:10', '2021-02-10 14:52:10'),
(388, '7', '54', 5.00, 5.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(389, '7', '57', 8.00, 8.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(390, '7', '56', 7.00, 7.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(391, '7', '51', 2.00, 2.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(392, '7', '53', 4.00, 4.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(393, '7', '52', 3.00, 3.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(394, '7', '58', 9.00, 9.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(395, '7', '55', 6.00, 6.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(396, '7', '50', 1.00, 1.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(397, '7', '61', 12.00, 12.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(398, '7', '62', 13.00, 13.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(399, '7', '60', 11.00, 11.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(400, '7', '59', 10.00, 10.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(401, '7', '66', 17.00, 17.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(402, '7', '64', 15.00, 15.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(403, '7', '63', 14.00, 14.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(404, '7', '65', 16.00, 16.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(405, '7', '67', 18.00, 18.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(406, '7', '72', 23.00, 23.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(407, '7', '71', 22.00, 22.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(408, '7', '68', 19.00, 19.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(409, '7', '69', 20.00, 20.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(410, '7', '70', 21.00, 21.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(411, '7', '75', 26.00, 26.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(412, '7', '74', 25.00, 25.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(413, '7', '77', 28.00, 28.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(414, '7', '78', 29.00, 29.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(415, '7', '79', 30.00, 30.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(416, '7', '76', 27.00, 27.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(417, '7', '73', 24.00, 24.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(418, '7', '81', 32.00, 32.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(419, '7', '80', 31.00, 31.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(420, '7', '82', 33.00, 33.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(421, '7', '83', 34.00, 34.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(422, '7', '85', 36.00, 36.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(423, '7', '84', 35.00, 35.00, '2021-02-10 14:59:34', '2021-02-10 14:59:34'),
(424, '7', '86', 37.00, 37.00, '2021-02-10 14:59:35', '2021-02-10 14:59:35'),
(425, '7', '87', 38.00, 38.00, '2021-02-10 14:59:35', '2021-02-10 14:59:35'),
(426, '8', '50', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(427, '8', '51', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(428, '8', '53', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(429, '8', '52', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(430, '8', '56', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(431, '8', '57', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(432, '8', '54', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(433, '8', '58', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(434, '8', '59', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(435, '8', '55', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(436, '8', '60', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(437, '8', '62', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(438, '8', '69', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(439, '8', '68', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(440, '8', '70', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(441, '8', '67', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(442, '8', '65', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(443, '8', '66', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(444, '8', '64', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(445, '8', '63', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(446, '8', '74', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(447, '8', '71', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(448, '8', '73', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(449, '8', '75', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(450, '8', '76', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(451, '8', '87', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(452, '8', '72', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(453, '8', '80', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(454, '8', '61', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(455, '8', '78', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(456, '8', '77', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(457, '8', '79', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(458, '8', '86', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(459, '8', '81', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(460, '8', '82', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(461, '8', '85', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(462, '8', '83', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(463, '8', '84', 3.00, 3.00, '2021-02-11 14:43:50', '2021-02-11 14:43:50'),
(464, '9', '51', 0.25, 36.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(465, '9', '50', 0.21, 30.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(466, '9', '54', 0.24, 34.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(467, '9', '59', 0.35, 50.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(468, '9', '56', 0.45, 65.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(469, '9', '60', 0.28, 40.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(470, '9', '52', 0.22, 32.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(471, '9', '53', 0.24, 34.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(472, '9', '55', 0.35, 51.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(473, '9', '63', 0.21, 30.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(474, '9', '58', 0.49, 70.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(475, '9', '57', 0.49, 70.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(476, '9', '61', 0.35, 50.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(477, '9', '65', 0.22, 32.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(478, '9', '62', 0.69, 100.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(479, '9', '70', 0.50, 72.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(480, '9', '72', 0.57, 82.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(481, '9', '64', 0.25, 36.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(482, '9', '68', 0.35, 51.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(483, '9', '69', 0.38, 55.00, '2021-02-11 15:38:45', '2021-02-11 15:38:45'),
(484, '9', '67', 0.24, 34.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(485, '9', '66', 0.24, 34.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(486, '9', '71', 0.57, 82.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(487, '9', '74', 0.57, 82.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(488, '9', '75', 0.59, 85.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(489, '9', '73', 0.57, 82.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(490, '9', '79', 0.63, 130.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(491, '9', '81', 1.00, 1.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(492, '9', '76', 0.83, 120.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(493, '9', '80', 0.69, 90.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(494, '9', '78', 0.90, 130.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(495, '9', '86', 1.00, 1.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(496, '9', '82', 1.00, 1.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(497, '9', '87', 1.00, 1.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(498, '9', '85', 1.00, 1.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(499, '9', '84', 1.00, 11.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(500, '9', '77', 0.90, 130.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(501, '9', '83', 1.00, 1.00, '2021-02-11 15:38:46', '2021-02-11 15:38:46'),
(502, '10', '51', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(503, '10', '50', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(504, '10', '52', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(505, '10', '53', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(506, '10', '55', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(507, '10', '56', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(508, '10', '58', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(509, '10', '57', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(510, '10', '54', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(511, '10', '59', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(512, '10', '61', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(513, '10', '60', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(514, '10', '62', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(515, '10', '65', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(516, '10', '63', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(517, '10', '64', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(518, '10', '69', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(519, '10', '66', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(520, '10', '67', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(521, '10', '68', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(522, '10', '70', 3.00, 3.00, '2021-02-11 16:00:40', '2021-02-11 16:00:40'),
(523, '10', '72', 3.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(524, '10', '71', 3.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(525, '10', '74', 3.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(526, '10', '73', 3.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(527, '10', '78', 3.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(528, '10', '76', 3.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(529, '10', '77', 3.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(530, '10', '79', 3.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(531, '10', '80', 3.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(532, '10', '75', 3.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(533, '10', '81', 3.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(534, '10', '82', 3.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(535, '10', '87', 3.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(536, '10', '85', 3.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(537, '10', '86', 4.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(538, '10', '84', 3.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(539, '10', '83', 3.00, 3.00, '2021-02-11 16:00:41', '2021-02-11 16:00:41'),
(540, '11', '52', 3.00, 3.00, '2021-02-15 09:16:34', '2021-02-15 09:16:34'),
(541, '11', '50', 3.00, 3.00, '2021-02-15 09:16:34', '2021-02-15 09:16:34'),
(542, '11', '51', 3.00, 3.00, '2021-02-15 09:16:34', '2021-02-15 09:16:34'),
(543, '11', '54', 3.00, 3.00, '2021-02-15 09:16:34', '2021-02-15 09:16:34'),
(544, '11', '53', 3.00, 3.00, '2021-02-15 09:16:34', '2021-02-15 09:16:34'),
(545, '11', '55', 3.00, 3.00, '2021-02-15 09:16:34', '2021-02-15 09:16:34'),
(546, '11', '57', 3.00, 3.00, '2021-02-15 09:16:34', '2021-02-15 09:16:34'),
(547, '11', '61', 3.00, 3.00, '2021-02-15 09:16:34', '2021-02-15 09:16:34'),
(548, '11', '62', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(549, '11', '60', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(550, '11', '65', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(551, '11', '70', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(552, '11', '59', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(553, '11', '64', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(554, '11', '68', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(555, '11', '63', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(556, '11', '56', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(557, '11', '85', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(558, '11', '58', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(559, '11', '67', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(560, '11', '69', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(561, '11', '66', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(562, '11', '71', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(563, '11', '73', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(564, '11', '72', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(565, '11', '74', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(566, '11', '76', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(567, '11', '75', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(568, '11', '82', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(569, '11', '78', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(570, '11', '77', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(571, '11', '80', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(572, '11', '81', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(573, '11', '84', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(574, '11', '86', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(575, '11', '79', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(576, '11', '83', 3.00, 3.00, '2021-02-15 09:16:35', '2021-02-15 09:16:35'),
(577, '11', '87', 3.00, 3.00, '2021-02-15 09:16:36', '2021-02-15 09:16:36'),
(578, '12', '51', 3.00, 3.00, '2021-02-16 11:52:03', '2021-02-16 11:52:03'),
(579, '12', '50', 3.00, 3.00, '2021-02-16 11:52:03', '2021-02-16 11:52:03'),
(580, '12', '52', 3.00, 3.00, '2021-02-16 11:52:03', '2021-02-16 11:52:03'),
(581, '12', '54', 3.00, 3.00, '2021-02-16 11:52:03', '2021-02-16 11:52:03'),
(582, '12', '53', 3.00, 3.00, '2021-02-16 11:52:03', '2021-02-16 11:52:03'),
(583, '12', '55', 3.00, 3.00, '2021-02-16 11:52:03', '2021-02-16 11:52:03'),
(584, '12', '60', 3.00, 3.00, '2021-02-16 11:52:03', '2021-02-16 11:52:03'),
(585, '12', '58', 3.00, 3.00, '2021-02-16 11:52:03', '2021-02-16 11:52:03'),
(586, '12', '57', 3.00, 3.00, '2021-02-16 11:52:03', '2021-02-16 11:52:03'),
(587, '12', '56', 3.00, 3.00, '2021-02-16 11:52:03', '2021-02-16 11:52:03'),
(588, '12', '59', 3.00, 3.00, '2021-02-16 11:52:03', '2021-02-16 11:52:03'),
(589, '12', '80', 3.00, 3.00, '2021-02-16 11:52:03', '2021-02-16 11:52:03'),
(590, '12', '65', 3.00, 3.00, '2021-02-16 11:52:03', '2021-02-16 11:52:03'),
(591, '12', '64', 3.00, 3.00, '2021-02-16 11:52:03', '2021-02-16 11:52:03'),
(592, '12', '61', 3.00, 3.00, '2021-02-16 11:52:03', '2021-02-16 11:52:03'),
(593, '12', '74', 3.00, 3.00, '2021-02-16 11:52:03', '2021-02-16 11:52:03'),
(594, '12', '66', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(595, '12', '67', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(596, '12', '63', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(597, '12', '62', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(598, '12', '68', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(599, '12', '72', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(600, '12', '75', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(601, '12', '73', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(602, '12', '71', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(603, '12', '70', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(604, '12', '69', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(605, '12', '76', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(606, '12', '79', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(607, '12', '78', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(608, '12', '81', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(609, '12', '77', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(610, '12', '82', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(611, '12', '84', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(612, '12', '83', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(613, '12', '87', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(614, '12', '86', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(615, '12', '85', 3.00, 3.00, '2021-02-16 11:52:04', '2021-02-16 11:52:04'),
(616, '13', '55', 6.00, 6.00, '2021-02-16 16:11:47', '2021-02-16 16:11:47'),
(617, '13', '56', 7.00, 7.00, '2021-02-16 16:11:47', '2021-02-16 16:11:47'),
(618, '13', '50', 1.00, 1.00, '2021-02-16 16:11:47', '2021-02-16 16:11:47'),
(619, '13', '52', 3.00, 3.00, '2021-02-16 16:11:47', '2021-02-16 16:11:47'),
(620, '13', '51', 2.00, 2.00, '2021-02-16 16:11:47', '2021-02-16 16:11:47'),
(621, '13', '54', 5.00, 5.00, '2021-02-16 16:11:47', '2021-02-16 16:11:47'),
(622, '13', '53', 4.00, 4.00, '2021-02-16 16:11:47', '2021-02-16 16:11:47'),
(623, '13', '58', 9.00, 9.00, '2021-02-16 16:11:47', '2021-02-16 16:11:47'),
(624, '13', '61', 12.00, 12.00, '2021-02-16 16:11:47', '2021-02-16 16:11:47'),
(625, '13', '60', 11.00, 11.00, '2021-02-16 16:11:47', '2021-02-16 16:11:47'),
(626, '13', '57', 8.00, 8.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(627, '13', '63', 14.00, 14.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(628, '13', '64', 15.00, 15.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(629, '13', '66', 17.00, 17.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(630, '13', '68', 19.00, 19.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(631, '13', '85', 36.00, 36.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(632, '13', '72', 23.00, 23.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(633, '13', '62', 13.00, 13.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(634, '13', '67', 18.00, 18.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(635, '13', '84', 35.00, 35.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(636, '13', '59', 10.00, 10.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(637, '13', '65', 16.00, 16.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(638, '13', '74', 25.00, 25.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(639, '13', '87', 38.00, 38.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(640, '13', '73', 24.00, 24.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(641, '13', '70', 21.00, 21.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(642, '13', '71', 22.00, 22.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(643, '13', '77', 28.00, 28.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(644, '13', '86', 37.00, 37.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(645, '13', '69', 20.00, 20.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(646, '13', '78', 29.00, 29.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(647, '13', '83', 34.00, 34.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(648, '13', '75', 26.00, 26.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(649, '13', '82', 33.00, 33.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(650, '13', '94', 39.00, 39.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(651, '13', '81', 32.00, 32.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(652, '13', '80', 31.00, 31.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(653, '13', '76', 27.00, 27.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(654, '13', '79', 30.00, 30.00, '2021-02-16 16:11:48', '2021-02-16 16:11:48'),
(655, '13', '95', 10.00, 10.00, '2021-02-16 16:14:44', '2021-02-16 16:14:44'),
(656, '9', '94', 1.00, 1.00, '2021-02-17 09:09:25', '2021-02-17 09:09:25'),
(657, '9', '95', 1.00, 1.00, '2021-02-17 09:09:25', '2021-02-17 09:09:25'),
(658, '14', '52', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(659, '14', '51', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(660, '14', '50', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(661, '14', '54', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(662, '14', '53', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(663, '14', '56', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(664, '14', '55', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(665, '14', '57', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00');
INSERT INTO `product_prices` (`product_price_id`, `product_price_partner_id`, `product_id`, `product_price_sqm`, `product_price_sqf`, `created_at`, `updated_at`) VALUES
(666, '14', '58', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(667, '14', '59', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(668, '14', '60', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(669, '14', '63', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(670, '14', '61', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(671, '14', '62', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(672, '14', '65', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(673, '14', '64', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(674, '14', '67', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(675, '14', '69', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(676, '14', '68', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(677, '14', '70', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(678, '14', '66', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(679, '14', '71', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(680, '14', '73', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(681, '14', '78', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(682, '14', '72', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(683, '14', '75', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(684, '14', '77', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(685, '14', '79', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(686, '14', '76', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(687, '14', '74', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(688, '14', '84', 3.00, 3.00, '2021-02-17 11:33:00', '2021-02-17 11:33:00'),
(689, '14', '81', 3.00, 3.00, '2021-02-17 11:33:01', '2021-02-17 11:33:01'),
(690, '14', '82', 3.00, 3.00, '2021-02-17 11:33:01', '2021-02-17 11:33:01'),
(691, '14', '83', 3.00, 3.00, '2021-02-17 11:33:01', '2021-02-17 11:33:01'),
(692, '14', '80', 3.00, 3.00, '2021-02-17 11:33:01', '2021-02-17 11:33:01'),
(693, '14', '85', 3.00, 3.00, '2021-02-17 11:33:01', '2021-02-17 11:33:01'),
(694, '14', '86', 3.00, 3.00, '2021-02-17 11:33:01', '2021-02-17 11:33:01'),
(695, '14', '94', 3.00, 3.00, '2021-02-17 11:33:01', '2021-02-17 11:33:01'),
(696, '14', '87', 3.00, 3.00, '2021-02-17 11:33:01', '2021-02-17 11:33:01'),
(697, '14', '95', 3.00, 3.00, '2021-02-17 11:33:01', '2021-02-17 11:33:01'),
(698, '15', '50', 0.21, 30.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(699, '15', '51', 0.25, 36.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(700, '15', '52', 0.22, 32.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(701, '15', '57', 0.49, 70.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(702, '15', '56', 0.45, 65.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(703, '15', '53', 0.24, 34.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(704, '15', '58', 0.49, 70.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(705, '15', '60', 0.28, 40.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(706, '15', '59', 0.35, 50.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(707, '15', '61', 0.35, 50.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(708, '15', '54', 0.24, 34.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(709, '15', '68', 0.35, 51.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(710, '15', '67', 0.24, 34.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(711, '15', '71', 0.57, 82.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(712, '15', '64', 0.25, 36.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(713, '15', '55', 0.35, 51.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(714, '15', '62', 0.69, 100.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(715, '15', '63', 0.21, 30.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(716, '15', '66', 0.24, 34.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(717, '15', '73', 0.57, 82.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(718, '15', '74', 0.57, 82.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(719, '15', '69', 0.38, 55.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(720, '15', '65', 0.22, 32.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(721, '15', '70', 0.50, 72.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(722, '15', '72', 0.57, 82.00, '2021-02-17 11:35:04', '2021-02-17 11:35:04'),
(723, '15', '80', 0.69, 90.00, '2021-02-17 11:35:05', '2021-02-17 11:35:05'),
(724, '15', '77', 0.90, 130.00, '2021-02-17 11:35:05', '2021-02-17 11:35:05'),
(725, '15', '75', 0.59, 85.00, '2021-02-17 11:35:05', '2021-02-17 11:35:05'),
(726, '15', '78', 0.90, 130.00, '2021-02-17 11:35:05', '2021-02-17 11:35:05'),
(727, '15', '81', 1.00, 1.00, '2021-02-17 11:35:05', '2021-02-17 11:35:05'),
(728, '15', '76', 0.83, 120.00, '2021-02-17 11:35:05', '2021-02-17 11:35:05'),
(729, '15', '79', 0.63, 130.00, '2021-02-17 11:35:05', '2021-02-17 11:35:05'),
(730, '15', '86', 1.00, 1.00, '2021-02-17 11:35:05', '2021-02-17 11:35:05'),
(731, '15', '83', 1.00, 1.00, '2021-02-17 11:35:05', '2021-02-17 11:35:05'),
(732, '15', '82', 1.00, 1.00, '2021-02-17 11:35:05', '2021-02-17 11:35:05'),
(733, '15', '94', 1.00, 11.00, '2021-02-17 11:35:05', '2021-02-17 11:35:05'),
(734, '15', '84', 1.00, 1.00, '2021-02-17 11:35:05', '2021-02-17 11:35:05'),
(735, '15', '95', 1.00, 1.00, '2021-02-17 11:35:05', '2021-02-17 11:35:05'),
(736, '15', '87', 1.00, 1.00, '2021-02-17 11:35:05', '2021-02-17 11:35:05'),
(737, '15', '85', 1.00, 1.00, '2021-02-17 11:35:05', '2021-02-17 11:35:05'),
(738, '1', '52', 0.22, 32.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(739, '1', '50', 0.21, 30.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(740, '1', '51', 0.25, 36.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(741, '1', '53', 0.24, 34.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(742, '1', '54', 0.24, 34.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(743, '1', '56', 0.45, 65.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(744, '1', '57', 0.49, 70.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(745, '1', '55', 0.35, 51.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(746, '1', '58', 0.49, 70.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(747, '1', '80', 0.63, 90.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(748, '1', '62', 0.69, 100.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(749, '1', '59', 0.35, 50.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(750, '1', '61', 0.35, 50.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(751, '1', '81', 0.69, 100.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(752, '1', '60', 0.28, 40.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(753, '1', '79', 0.90, 130.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(754, '1', '63', 0.21, 30.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(755, '1', '65', 0.22, 32.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(756, '1', '66', 0.24, 34.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(757, '1', '68', 0.35, 51.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(758, '1', '87', 0.35, 51.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(759, '1', '70', 0.50, 72.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(760, '1', '72', 0.57, 82.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(761, '1', '64', 0.25, 36.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(762, '1', '71', 0.57, 82.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(763, '1', '73', 0.57, 82.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(764, '1', '77', 0.90, 130.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(765, '1', '75', 0.59, 85.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(766, '1', '67', 0.24, 34.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(767, '1', '69', 0.38, 55.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(768, '1', '76', 0.83, 120.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(769, '1', '74', 0.57, 82.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(770, '1', '83', 0.20, 29.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(771, '1', '86', 0.63, 90.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(772, '1', '84', 0.35, 51.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(773, '1', '85', 0.56, 80.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(774, '1', '78', 0.90, 130.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(775, '1', '82', 0.69, 100.00, '2021-02-17 13:46:21', '2021-02-17 13:46:21'),
(776, '2', '52', 0.22, 32.00, '2021-02-17 14:52:05', '2021-02-17 14:52:05'),
(777, '2', '57', 0.49, 70.00, '2021-02-17 14:52:05', '2021-02-17 14:52:05'),
(778, '2', '50', 0.21, 30.00, '2021-02-17 14:52:05', '2021-02-17 14:52:05'),
(779, '2', '55', 0.35, 51.00, '2021-02-17 14:52:05', '2021-02-17 14:52:05'),
(780, '2', '53', 0.24, 34.00, '2021-02-17 14:52:05', '2021-02-17 14:52:05'),
(781, '2', '54', 0.24, 34.00, '2021-02-17 14:52:05', '2021-02-17 14:52:05'),
(782, '2', '51', 0.25, 36.00, '2021-02-17 14:52:05', '2021-02-17 14:52:05'),
(783, '2', '58', 0.49, 70.00, '2021-02-17 14:52:05', '2021-02-17 14:52:05'),
(784, '2', '59', 0.35, 50.00, '2021-02-17 14:52:05', '2021-02-17 14:52:05'),
(785, '2', '56', 0.45, 65.00, '2021-02-17 14:52:05', '2021-02-17 14:52:05'),
(786, '2', '61', 0.35, 50.00, '2021-02-17 14:52:05', '2021-02-17 14:52:05'),
(787, '2', '60', 0.28, 40.00, '2021-02-17 14:52:05', '2021-02-17 14:52:05'),
(788, '2', '65', 0.22, 32.00, '2021-02-17 14:52:05', '2021-02-17 14:52:05'),
(789, '2', '64', 0.25, 36.00, '2021-02-17 14:52:05', '2021-02-17 14:52:05'),
(790, '2', '63', 0.21, 30.00, '2021-02-17 14:52:05', '2021-02-17 14:52:05'),
(791, '2', '62', 0.69, 100.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(792, '2', '66', 0.24, 34.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(793, '2', '67', 0.24, 34.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(794, '2', '68', 0.35, 51.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(795, '2', '69', 0.38, 55.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(796, '2', '70', 0.50, 72.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(797, '2', '79', 0.90, 130.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(798, '2', '74', 0.57, 82.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(799, '2', '72', 0.57, 82.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(800, '2', '78', 0.90, 130.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(801, '2', '75', 0.59, 85.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(802, '2', '80', 0.63, 90.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(803, '2', '76', 0.83, 120.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(804, '2', '84', 0.35, 51.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(805, '2', '71', 0.57, 82.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(806, '2', '83', 0.20, 29.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(807, '2', '81', 0.69, 100.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(808, '2', '86', 0.63, 90.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(809, '2', '77', 0.90, 130.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(810, '2', '85', 0.56, 80.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(811, '2', '73', 0.57, 82.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(812, '2', '87', 0.35, 51.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(813, '2', '82', 0.69, 100.00, '2021-02-17 14:52:06', '2021-02-17 14:52:06'),
(814, '3', '54', 5.00, 5.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(815, '3', '55', 6.00, 6.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(816, '3', '50', 1.00, 1.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(817, '3', '51', 2.00, 2.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(818, '3', '53', 4.00, 4.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(819, '3', '57', 8.00, 8.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(820, '3', '52', 3.00, 3.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(821, '3', '61', 12.00, 12.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(822, '3', '56', 7.00, 7.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(823, '3', '64', 15.00, 15.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(824, '3', '60', 11.00, 11.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(825, '3', '58', 9.00, 9.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(826, '3', '59', 10.00, 10.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(827, '3', '63', 14.00, 14.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(828, '3', '62', 13.00, 13.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(829, '3', '65', 16.00, 16.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(830, '3', '71', 22.00, 22.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(831, '3', '82', 33.00, 33.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(832, '3', '69', 20.00, 20.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(833, '3', '68', 19.00, 19.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(834, '3', '66', 17.00, 17.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(835, '3', '74', 25.00, 25.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(836, '3', '75', 26.00, 26.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(837, '3', '67', 18.00, 18.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(838, '3', '70', 21.00, 21.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(839, '3', '78', 29.00, 29.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(840, '3', '73', 24.00, 24.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(841, '3', '72', 23.00, 23.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(842, '3', '79', 30.00, 30.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(843, '3', '76', 27.00, 27.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(844, '3', '77', 28.00, 28.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(845, '3', '85', 36.00, 36.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(846, '3', '84', 35.00, 35.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(847, '3', '87', 38.00, 38.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(848, '3', '81', 32.00, 32.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(849, '3', '97', 39.00, 39.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(850, '3', '80', 31.00, 31.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(851, '3', '86', 37.00, 37.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(852, '3', '83', 34.00, 34.00, '2021-02-18 14:40:20', '2021-02-18 14:40:20'),
(853, '5', '51', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(854, '5', '50', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(855, '5', '54', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(856, '5', '53', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(857, '5', '52', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(858, '5', '56', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(859, '5', '62', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(860, '5', '59', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(861, '5', '57', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(862, '5', '61', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(863, '5', '60', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(864, '5', '63', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(865, '5', '68', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(866, '5', '58', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(867, '5', '64', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(868, '5', '66', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(869, '5', '65', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(870, '5', '70', 3.00, 3.00, '2021-02-18 16:38:18', '2021-02-18 16:38:18'),
(871, '5', '55', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(872, '5', '69', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(873, '5', '71', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(874, '5', '73', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(875, '5', '67', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(876, '5', '72', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(877, '5', '78', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(878, '5', '74', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(879, '5', '77', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(880, '5', '75', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(881, '5', '76', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(882, '5', '87', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(883, '5', '79', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(884, '5', '83', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(885, '5', '81', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(886, '5', '82', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(887, '5', '84', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(888, '5', '97', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(889, '5', '80', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(890, '5', '85', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19'),
(891, '5', '86', 3.00, 3.00, '2021-02-18 16:38:19', '2021-02-18 16:38:19');

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
(1, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE3MDE6Mjc6MjlwbQ==', 1, '2021-02-17 21:27:29', '2021-02-17 13:27:29', '2021-02-17 13:27:29'),
(2, '254', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE3MDE6MzE6MTZwbQ==', 1, '2021-02-17 21:31:16', '2021-02-17 13:31:16', '2021-02-17 13:31:16'),
(3, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE3MDE6Mzc6NTJwbQ==', 1, '2021-02-17 21:37:52', '2021-02-17 13:37:52', '2021-02-17 13:37:52'),
(4, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE3MDE6NDQ6MjBwbQ==', 1, '2021-02-17 21:44:20', '2021-02-17 13:44:20', '2021-02-17 13:44:20'),
(5, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE3MDE6NDg6NDBwbQ==', 1, '2021-02-17 21:48:40', '2021-02-17 13:48:40', '2021-02-17 13:48:40'),
(6, '255', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE3MDE6NTE6NDFwbQ==', 1, '2021-02-17 21:51:41', '2021-02-17 13:51:41', '2021-02-17 13:51:41'),
(7, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE3MDE6NTk6NDhwbQ==', 1, '2021-02-17 21:59:48', '2021-02-17 13:59:48', '2021-02-17 13:59:48'),
(8, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE3MDI6MDk6MDdwbQ==', 1, '2021-02-17 22:09:07', '2021-02-17 14:09:07', '2021-02-17 14:09:07'),
(9, '255', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE3MDI6MTE6NThwbQ==', 1, '2021-02-17 22:11:58', '2021-02-17 14:11:58', '2021-02-17 14:11:58'),
(10, '255', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE3MDI6MTI6MTlwbQ==', 1, '2021-02-17 22:12:19', '2021-02-17 14:12:19', '2021-02-17 14:12:19'),
(11, '254', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE3MDI6MTM6NTJwbQ==', 1, '2021-02-17 22:13:52', '2021-02-17 14:13:52', '2021-02-17 14:13:52'),
(12, '254', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE3MDI6NDE6NDlwbQ==', 1, '2021-02-17 22:41:49', '2021-02-17 14:41:49', '2021-02-17 14:41:49'),
(13, '256', 'KjNCQkM3MTBGNTk4NDNBOTg3QTVDRjUwQ0FCRTNBNDMwMjVFOTczMkYyMDIxLTAyLTE3MDI6NTk6MDdwbQ==', 1, '2021-02-17 22:59:07', '2021-02-17 14:59:07', '2021-02-17 14:59:07'),
(14, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE3MDM6MTM6NTZwbQ==', 1, '2021-02-17 23:13:56', '2021-02-17 15:13:56', '2021-02-17 15:13:56'),
(15, '254', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE3MDM6MTQ6MjFwbQ==', 1, '2021-02-17 23:14:21', '2021-02-17 15:14:21', '2021-02-17 15:14:21'),
(16, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE3MDM6MTQ6NThwbQ==', 1, '2021-02-17 23:14:58', '2021-02-17 15:14:58', '2021-02-17 15:14:58'),
(17, '258', 'KjMzNUQ1MjE4ODUzNjU4NzBDMzIzQjE5QTZDRTYyQTEzMzUxODdGQ0EyMDIxLTAyLTE3MDM6NDI6MjJwbQ==', 1, '2021-02-17 23:42:22', '2021-02-17 15:42:22', '2021-02-17 15:42:22'),
(18, '255', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDg6MjI6MDdhbQ==', 1, '2021-02-18 16:22:07', '2021-02-18 08:22:07', '2021-02-18 08:22:07'),
(19, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDg6MjQ6MDNhbQ==', 1, '2021-02-18 16:24:03', '2021-02-18 08:24:03', '2021-02-18 08:24:03'),
(20, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDg6Mjg6MTZhbQ==', 1, '2021-02-18 16:28:16', '2021-02-18 08:28:16', '2021-02-18 08:28:16'),
(21, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDg6Mzg6MjRhbQ==', 1, '2021-02-18 16:38:24', '2021-02-18 08:38:24', '2021-02-18 08:38:24'),
(22, '255', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDg6NTI6MTVhbQ==', 1, '2021-02-18 16:52:15', '2021-02-18 08:52:15', '2021-02-18 08:52:15'),
(23, '254', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDk6MDA6MzhhbQ==', 1, '2021-02-18 17:00:38', '2021-02-18 09:00:38', '2021-02-18 09:00:38'),
(24, '255', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDk6MDI6MTJhbQ==', 1, '2021-02-18 17:02:12', '2021-02-18 09:02:12', '2021-02-18 09:02:12'),
(25, '255', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDk6MjI6NTBhbQ==', 1, '2021-02-18 17:22:50', '2021-02-18 09:22:50', '2021-02-18 09:22:50'),
(26, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MTE6NTA6MzJhbQ==', 1, '2021-02-18 19:50:32', '2021-02-18 11:50:32', '2021-02-18 11:50:32'),
(27, '255', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MTE6NTE6NDRhbQ==', 1, '2021-02-18 19:51:44', '2021-02-18 11:51:44', '2021-02-18 11:51:44'),
(28, '255', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MTI6Mjg6MzVwbQ==', 1, '2021-02-18 20:28:35', '2021-02-18 12:28:35', '2021-02-18 12:28:35'),
(29, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDM6MzA6MjlwbQ==', 1, '2021-02-18 23:30:29', '2021-02-18 15:30:29', '2021-02-18 15:30:29'),
(30, '255', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDM6MzI6MDdwbQ==', 1, '2021-02-18 23:32:07', '2021-02-18 15:32:07', '2021-02-18 15:32:07'),
(31, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDM6NDE6MjFwbQ==', 1, '2021-02-18 23:41:21', '2021-02-18 15:41:21', '2021-02-18 15:41:21'),
(32, '255', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDM6NTY6MTNwbQ==', 1, '2021-02-18 23:56:13', '2021-02-18 15:56:13', '2021-02-18 15:56:13'),
(33, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDQ6MjM6MzFwbQ==', 1, '2021-02-19 00:23:31', '2021-02-18 16:23:31', '2021-02-18 16:23:31'),
(34, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDQ6MjQ6NDBwbQ==', 1, '2021-02-19 00:24:40', '2021-02-18 16:24:40', '2021-02-18 16:24:40'),
(35, '255', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDQ6MzQ6MjlwbQ==', 1, '2021-02-19 00:34:29', '2021-02-18 16:34:29', '2021-02-18 16:34:29'),
(36, '263', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDQ6NDM6MzVwbQ==', 1, '2021-02-19 00:43:35', '2021-02-18 16:43:35', '2021-02-18 16:43:35'),
(37, '263', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDQ6NDg6MTBwbQ==', 1, '2021-02-19 00:48:10', '2021-02-18 16:48:10', '2021-02-18 16:48:10'),
(38, '263', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDQ6NTA6MjhwbQ==', 1, '2021-02-19 00:50:28', '2021-02-18 16:50:28', '2021-02-18 16:50:28'),
(39, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDU6MDU6MzlwbQ==', 1, '2021-02-19 01:05:39', '2021-02-18 17:05:39', '2021-02-18 17:05:39'),
(40, '263', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDU6MTc6MjBwbQ==', 1, '2021-02-19 01:17:20', '2021-02-18 17:17:20', '2021-02-18 17:17:20'),
(41, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDY6NTE6MTlwbQ==', 1, '2021-02-19 02:51:19', '2021-02-18 18:51:19', '2021-02-18 18:51:19'),
(42, '255', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE4MDc6MzE6MjlwbQ==', 1, '2021-02-19 03:31:29', '2021-02-18 19:31:29', '2021-02-18 19:31:29'),
(43, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE5MDg6MDk6MzBhbQ==', 1, '2021-02-19 16:09:30', '2021-02-19 08:09:30', '2021-02-19 08:09:30'),
(44, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTE5MDg6NDY6MDBhbQ==', 1, '2021-02-19 16:46:00', '2021-02-19 08:46:00', '2021-02-19 08:46:00');

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
  `web_notification` tinyint(1) NOT NULL DEFAULT '1',
  `email_notification` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_role_id`, `user_last_login`, `user_status`, `web_notification`, `email_notification`, `created_at`, `updated_at`) VALUES
(1, 'kaelreyes', 'kaelreyes12@hotmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '1', '2021-02-19 08:46:01', '1', 1, 1, '2021-01-04 13:59:14', '2021-02-19 08:46:01'),
(254, '', 'henrymonzon.lns@hotmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '1', '2021-02-18 09:00:38', '1', 1, 1, '2021-02-17 01:29:48', '2021-02-18 09:00:38'),
(255, '', 'larahandog@hotmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '2', '2021-02-18 07:31:29', '1', 1, 1, '2021-02-17 01:46:19', '2021-02-18 19:39:47'),
(256, '', 'aferev@theeprint.com.ph', '*3BBC710F59843A987A5CF50CABE3A43025E9732F', '2', '2021-02-17 02:59:07', '1', 1, 1, '2021-02-17 02:52:03', '2021-02-17 14:59:07'),
(258, '', 'ace@karatulamarketing.com', '*335D521885365870C323B19A6CE62A1335187FCA', '1', '2021-02-17 03:42:22', '1', 1, 1, '2021-02-17 03:40:57', '2021-02-17 15:42:22'),
(259, '', 'romelpostano@gmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '2', NULL, '1', 1, 1, '2021-02-18 12:36:21', '0000-00-00 00:00:00'),
(260, '', 'mark@zuckerberg.com', '98a34d77f225e257e460bde878023be0', '1', NULL, '1', 1, 1, '2021-02-18 12:43:03', '0000-00-00 00:00:00'),
(261, '', 'juana@gmail.com', 'edadea4eaaff8bb0fe120384010e2a3a', '2', NULL, '1', 1, 1, '2021-02-18 02:40:14', '0000-00-00 00:00:00'),
(262, '', 'jaypee@gmail.com', '5147fe1d4075180acfdada02c2d42646', '2', NULL, '1', 1, 1, '2021-02-18 02:43:47', '0000-00-00 00:00:00'),
(263, '', 'cecilvelgar@gmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '2', '2021-02-18 05:17:20', '1', 1, 1, '2021-02-18 04:38:16', '2021-02-18 17:17:20');

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
(1, '1', 'Michael', 'Reyes', '09153088452', '115318-UOZW8BQZ.png', '2021-01-04 07:59:36', '2021-02-17 12:03:06'),
(221, '254', 'Henry', 'Monzon', '09152587822', '132948-PBVVFW2Q.png', '2021-02-17 13:29:48', '2021-02-17 13:29:48'),
(222, '255', 'Lara', 'Handog', '12312321312', '134619-0PZNA9Q9.png', '2021-02-17 13:46:19', '2021-02-18 14:49:38'),
(223, '256', 'Alexander', 'Cave', '09163047698', '145203-XP6XXPYP.png', '2021-02-17 14:52:03', '2021-02-17 15:25:05'),
(225, '258', 'Aldrine Ace', 'Pontecilla', '0916856492', '154057-8XRK4Z5X.png', '2021-02-17 15:40:57', '2021-02-17 15:43:29'),
(226, '259', 'test', 'test', '12123213123', '123621-SNY4RTTU.png', '2021-02-18 12:36:21', '2021-02-18 12:36:21'),
(227, '260', 'mark', 'zuckerberg', '23233333233', '124303-BXRJZ9AY.png', '2021-02-18 12:43:03', '2021-02-18 12:43:03'),
(228, '259', 'Romel', 'Postrano', '12312321312', '134619-0PZNA9Q9.png', '2021-02-17 13:46:19', '2021-02-17 13:46:19'),
(229, '261', 'Juana', 'Dela Cruz', '09454889218', '144014-D2XCZWBX.png', '2021-02-18 14:40:14', '2021-02-18 14:40:14'),
(230, '262', 'jaypee', 'salazar', '09454889218', '144347-DDXXYCWJ.png', '2021-02-18 14:43:47', '2021-02-18 14:43:47'),
(231, '263', 'Katlyn Mae', 'Magbago', '09066898770', '163816-L4T5JGZ3.png', '2021-02-18 16:38:16', '2021-02-18 16:38:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_conversations`
--
ALTER TABLE `chat_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_conversation_messages`
--
ALTER TABLE `chat_conversation_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_conversation_users`
--
ALTER TABLE `chat_conversation_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_about_thee_prints`
--
ALTER TABLE `cms_about_thee_prints`
  ADD PRIMARY KEY (`cms_about_thee_print_id`);

--
-- Indexes for table `cms_core_values`
--
ALTER TABLE `cms_core_values`
  ADD PRIMARY KEY (`cms_core_values_id`);

--
-- Indexes for table `cms_featured_partners`
--
ALTER TABLE `cms_featured_partners`
  ADD PRIMARY KEY (`cms_featured_partners_id`);

--
-- Indexes for table `cms_privacies`
--
ALTER TABLE `cms_privacies`
  ADD PRIMARY KEY (`privacy_id`);

--
-- Indexes for table `cms_products`
--
ALTER TABLE `cms_products`
  ADD PRIMARY KEY (`cms_products_id`);

--
-- Indexes for table `cms_services`
--
ALTER TABLE `cms_services`
  ADD PRIMARY KEY (`cms_services_id`);

--
-- Indexes for table `cms_terms`
--
ALTER TABLE `cms_terms`
  ADD PRIMARY KEY (`term_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_conversations`
--
ALTER TABLE `chat_conversations`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chat_conversation_messages`
--
ALTER TABLE `chat_conversation_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `chat_conversation_users`
--
ALTER TABLE `chat_conversation_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cms_about_thee_prints`
--
ALTER TABLE `cms_about_thee_prints`
  MODIFY `cms_about_thee_print_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_core_values`
--
ALTER TABLE `cms_core_values`
  MODIFY `cms_core_values_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_featured_partners`
--
ALTER TABLE `cms_featured_partners`
  MODIFY `cms_featured_partners_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_privacies`
--
ALTER TABLE `cms_privacies`
  MODIFY `privacy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_products`
--
ALTER TABLE `cms_products`
  MODIFY `cms_products_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `cms_services`
--
ALTER TABLE `cms_services`
  MODIFY `cms_services_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_terms`
--
ALTER TABLE `cms_terms`
  MODIFY `term_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_addresses`
--
ALTER TABLE `company_addresses`
  MODIFY `company_address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `forgot_passwords`
--
ALTER TABLE `forgot_passwords`
  MODIFY `forgot_password_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_order_items`
--
ALTER TABLE `job_order_items`
  MODIFY `job_order_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `job_order_logs`
--
ALTER TABLE `job_order_logs`
  MODIFY `job_order_log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `job_order_requests`
--
ALTER TABLE `job_order_requests`
  MODIFY `job_order_request_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `machine_prints`
--
ALTER TABLE `machine_prints`
  MODIFY `machine_print_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `notification_types`
--
ALTER TABLE `notification_types`
  MODIFY `notification_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `partner_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `product_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=892;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `token_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `user_profile_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
