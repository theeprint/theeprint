-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 08, 2021 at 07:50 PM
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
(1, '205909-VX5VPSBS.png', '205909-LSR2OMOO.png', 'Hi, we are Thee Print', 'Printerssss', 'We deliver the best print services by providing a complete package in-terms of printing needs to maintain & escalate satisfied customers.', '  To be most recognized & trusted one stop shop supplier of printing needs by December 2024.', '2020-12-16 09:23:49', '1', '2021-02-05 17:43:40');

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
(1, '111010-N2Y4W1OK.png', 'Innovative', '<p>Being able to adapt to the latest industry trends and utilize new technoligies to bring fresh products and services to customers.</p>', '111010-DWITCL1T.png', 'Malasakit', '<p>Equip employees with proper tools, training, and benefits to provide the workmanship needed to create quality products and services.</p>', '111010-GCEFEYJH.png', 'Professionalism', '<p>Provide through and excellence service throughout every transaction process, from account acquisition &nbsp;to product and up until the after-sales support.</p>', '111010-ON8OU1MG.png', 'Client Focus', '<p>Create positive experience and build lasting customer relationships by maximizing service and/or product offerings.</p>', '2020-12-17 12:19:48', '1', '2021-02-04 16:02:24');

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
(1, '160729-ZZSHD1C6.png', '160729-H839RZW2.png', '160729-CEYOMFNC.png', '134306-CVHU5F7N.png', '134306-YSUFKHFJ.png', '1', '2020-12-17 14:44:22', '2021-02-04 16:07:29');

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
(1, '<p><strong>THEE PRINT INC. </strong><i><strong>SECURITY &nbsp;</strong></i></p><p>Personal information provided on the website and online credit card transactions are transmitted through a secure server. We are committed to handling your personal information with high standards of information security. We take appropriate physical, electronic, and administrative steps to maintain the security and accuracy of personally identifiable information we collect, including limiting the number of people who have physical access to our database servers, as well as employing electronic security systems and password protections that guard against unauthorized access.</p><p>Our website uses encryption technology, like Secure Sockets Layer (SSL), to protect your personal information during data transport. SSL encrypts ordering information such as your name, address, and credit card number. Our Customer Care center and stores also operate over a private, secure network. Please note that email is not encrypted and is not considered to be a secure means of transmitting credit card information.</p><p><strong>THEE PRINT INC. PRIVACY POLICY</strong></p><p>To help us achieve our goal of providing the highest quality products and services, we use information from our interactions with you and other customers, as well as from other parties. Because we respect your privacy, we have implemented procedures to ensure that your personal information is handled in a safe, secure, and responsible manner. We have posted this privacy policy in order to explain our information collection practices and the choices you have about the way information is collected and used.</p><p>As we continue to develop the <strong>THEE PRINT INC.</strong> website and take advantage of advances in technology to improve the services we offer, this privacy policy likely will change. We therefore encourage you to refer to this policy on an ongoing basis so that you understand our current privacy policy.</p><p><strong>THE INFORMATION WE COLLECT</strong></p><p>Our customer’s welfare and privacy is of importance to us. You can opt to visit the <strong>THEE PRINT INC. </strong>platform and navigate anonymously. We will only collect information from you if you create an account with us. When you create a Thee Print Account, or otherwise provide us with your personal information through the Platform, the personal information we collect may include you’re:</p><p>Name</p><p>Delivery Address</p><p>Email Address</p><p>Contact Number</p><p>Mobile Number</p><p>Date of Birth</p><p>Gender</p><p>We can only collect your personal information if you voluntarily submit the information to us but if you choose not to submit your personal information to us or withdraw your consent to our use of your personal information, you may not be able to access all parts of this website or participate in all of its features, pricing, and product selection. You may access and update your personal information submitted to us at any time.</p><p>If you sign up to THEE PRINT INC. using your social media account, we may access information about you which you have voluntarily provided under your social media account and we will manage your personal data which we have collected in accordance with <strong>THEE PRINT INC</strong>. privacy policy.</p><p><strong>HOW WE USE THE INFORMATION WE COLLECT</strong></p><p>The personal information we collect from you will be used, or shared with third parties (including related companies, third party service providers, and third party sellers), for some or all of the following purposes:</p><p>Fulfillment and delivery of products purchased, and updating on the status thereof;</p><p>Processing of orders, including payment processing;</p><p>Providing of relevant product information, responding to queries and requests, and other customer support functions;</p><p>Preventing, detecting, and investigating disputes or fraud, and analyzing and managing commercial risks;</p><p>Analytics and tracking;</p><p>Conducting market research and surveys to enable <strong>THEE PRINT INC.</strong> to understand and determine customer preferences and demographics, to develop special offers, and marketing programs of products and services, and to improve customer experience;</p><p>Developing and providing additional products, services, and benefits, including promotions, loyalty and rewards programs;&nbsp;</p><p>Advertising and marketing products and services or relevant products and services from our preferred partners, administering contests, competitions and marketing campaigns;</p><p>Purposes which are reasonably related to the aforesaid;</p><p><strong>COLLECTION OF COMPUTER DATA</strong></p><p>Whenever you visit <strong>THEE PRINT INC.</strong> servers will automatically record information that your browser sends whenever you visit a website. This data may include:</p><p>Your computer\'s IP address</p><p>Browser type</p><p>Webpage you were visiting before you came to our Platform</p><p>The pages within the Platform which you visit</p><p>The time spent on those pages, items and information searched for on the Platform, access times and dates, and other statistics.</p><p>This information is collected for analysis and evaluation in order to help us improve the Platform and the services and products we provide.</p><p><strong>SECURITY</strong></p><p>We are committed to ensuring that your information is secure. In order to prevent unauthorized access or disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.</p><p><strong>THEE PRINT INC.</strong> secures all information collected. For your safety, kindly use unique numbers, letters and special characters as your account’s password and do not share your password to anyone. If you suspect that your privacy has been breached or your password has been compromised, immediately contact us through our customer service.</p><p><strong>OTHERS WITH WHOM WE SHARE YOUR INFORMATION</strong></p><p>Service Providers: We also may disclose information to outside companies that help us bring you the products and services we offer. For example, we may work with an outside company to: (a) manage a database of customer information; (b) assist us in distributing emails; (c) assist us with direct marketing and data collection; (d) provide us storage and analysis; (d) provide fraud prevention; and (e) provide other services designed to assist us in maximizing our business potential. We require that these outside companies agree to keep confidential all information we share with them and to use the information only to perform their obligations in our agreements with them.</p><p>Other Companies: We may provide information to carefully select outside companies when we believe their products or services may be of interest to you.</p><p>Business Transitions: We may transfer or share a copy of personal information about you in the event that <strong>THEE PRINT INC.</strong> or one of its properties, affiliates, or subsidiaries goes through a business transition, such as a merger, being acquired by another company, or selling a portion of its assets. You will be notified via email or prominent notice on our website prior to a change of ownership or control of your personal information, if your personal information will be used contrary to this policy. However, nothing in this Privacy Policy is intended to interfere with the ability of <strong>THEE PRINT INC.</strong> to transfer all or part of its business and/or assets to an affiliate or independent third party at any time, for any purpose, without any limitation whatsoever.</p><p><strong>THEE PRINT INC.</strong> specifically reserves the right to transfer or share a copy of personally identifiable information collected from its websites to the buyer of that portion of its business relating to that information.</p><p>Compliance With Law: We may provide access to information when legally required to do so, to cooperate with police investigations or other legal proceedings, to protect against misuse or unauthorized use of our website, to limit our legal liability, and to protect our rights or to protect the rights, property, or safety of visitors of this website or the public.</p><p><strong>THEE PRINT INC.</strong> partners with advertising companies to place our advertising on publisher websites on the Internet. These advertising companies collect anonymous information about your visits to our web site. This technology involves the use of third party cookies that allow them to develop personalized advertising so that it directly relates to offers that may be of interest to you. You may choose to opt-out of this service we have with our third-party advertising partner. We may also use <strong>THEE PRINT INC. </strong>cookies to provide similar enhanced online marketing to you based on your interests and preferences. You may also choose to opt out of these enhanced online marketing ads.</p><p><strong>YOU’RE CHOICES REGARDING USE OF THE INFORMATION WE COLLECT</strong></p><p>You have several choices regarding our handling of your nonpublic personally identifiable information.</p><p>Direct Mail or Telephone Marketing: If you shop at the <strong>THEE PRINT INC. </strong>stores and wish to be removed from the list of customers that receive direct mail or telemarketing calls, please send us a message to <strong>THEE PRINT INC.</strong> Contact Us page and state one of the following:</p><p>\"NO MAIL OFFERS\" (if you don\'t want to receive offers by mail);</p><p>\"NO PHONE OFFERS\" (if you don\'t want to receive offers by phone);</p><p>\"NO PHONE OR MAIL OFFERS\" (if you don\'t want to receive either).</p><p>Because customer lists often are prepared well in advance of an offering (sometimes a few months before the offer is made), you may continue to receive some offers after you send us a request not to use your information for specified marketing purposes. We appreciate your patience and understanding in giving us time to carry out your request.</p><p><strong>COOKIES, WEB BEACONS, AND HOW WE USE THEM</strong></p><p>A cookie is a small file which asks permission to be placed on your computer\'s hard drive. Once you agree, the file is added and the cookie helps analyze web traffic or lets you know when you visit a particular site. Cookies allow web applications to respond to you as an individual. The web application can tailor its operations to your needs, likes and dislikes by gathering and remembering information about your preferences.</p><p>We use traffic log cookies to identify which pages are being used. This helps us analyze data about web page traffic and improve our website in order to tailor it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system.</p><p>Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful and which you do not. A cookie in no way gives us access to your computer or any information about you, other than the data you choose to share with us. You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. This may prevent you from taking full advantage of the website.</p><p>A \"web beacon\" or \"pixel tag\" or \"clear gif\" is typically a one-pixel image, used to pass information from your computer or mobile device to a website.</p><p>We use cookies and web beacons to keep track of what you have in your shopping cart and to remember you when you return to the website as well as to identify the pages you click on during your visit to our site and the name of the website you visited immediately before clicking to the <strong>THEE PRINT INC.</strong> website. We use this information to improve our site design, product assortments, customer service, and special promotions. You can, of course, disable cookies and web beacons on your computer by indicating this in the preferences or options menus in your browser. However, it is possible that some parts of our website will not operate correctly if you disable cookies. We may also use web beacons, and other technologies, to help track whether our communications are reaching you, to measure their effectiveness, or to collect certain non-personal information about your computer, device, or browser in order to allow us to better design future communications to you.</p><p>We may contract with third parties who may use cookies and web beacons and collect information on our behalf or provide services such as credit card processing, shipping, promotional services, or data management. We call them our Customer Care Partners. These third parties are prohibited by our contract with them from sharing that information with anyone other than us or our other Customer Care Partners.</p><p><strong>ONLINE ACCOUNT REGISTRATION</strong></p><p>To make online shopping faster and easier, you may register on the <strong>THEE PRINT INC. </strong>website. As a registered customer, you only have to enter your shipping addresses and billing information once; they will be securely stored with us for your future use. Using your name and a password of your choice, you may access your account online at any time to add, delete, or change information. If you are using a public computer, we strongly encourage you to Sign Out when you finish shopping. Your information will still be stored with us but it will not be accessible to anyone else from that computer.</p><p><strong>EMAILS</strong></p><p>You will receive promotional emails from us only if you have asked to receive them. If you do not want to receive email from <strong>THEE PRINT INC.</strong> or its affiliates you can click on the \"Unsubscribe\" link at the bottom of any email communication sent by us. Please allow us 3 business days from when the request was received to complete the removal, as some of our promotions may already have been in process before you submitted your request.</p><p><strong>CHANGES TO THE PRIVACY POLICY</strong></p><p><strong>THEE PRINT INC.</strong> reserves the right to modify and change the Privacy Policy at any time. Any changes to this policy will be published on the Platform.</p><p><strong>CONTACTING THEE PRINT INC.</strong></p><p>If you have any queries, comments or concerns, or require any help, please feel free to contact us through our customer service at <strong>0977-849-3382 </strong>and email: <a href=\"mailto:info@theeprint.com.ph\"><strong>info@theeprint.com.ph</strong></a>&nbsp;</p><p>&nbsp;</p>', '1', '2020-12-11 09:07:23', '2021-02-05 15:29:48');

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
(1, '104504-63DN3NKB.png', 'Large format printing', '<p>far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p><ul><li>Vinyl Sticker</li><li>Canvas</li><li>Photopaper</li><li>Backlit Film</li><li>Clear Sticker</li><li>Banner Cloth</li><li>Sticker on Board</li><li>Tarpaulin</li><li>Perforated Sticker</li></ul>', '104504-N93KEKP3.png', 'Digital offset printing', '<p>far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p><p>Flyers</p><p>Business Card</p><p>Brochure</p><p>Poster</p><p>Invitation</p><p>Satin Sticker</p><p>Product Boxes</p><p>Perforated Sticker</p>', '104504-51N0GC5R.png', 'Installation', '<p class=\"fs-16 fw-400 col-9\" style=\"color: #2C2C39; margin-left: -14px;\">\r\n                    Far far away, behind the word mountains, far from the countries\r\n                    Vokalia and Consonantia, there live the blind texts. Separated they\r\n                    live in Bookmarksgrove right at the coast of the Semantics.\r\n                </p>', '2020-12-16 15:53:22', '1', '2021-01-20 11:55:58');

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
(1, '<p><strong>THEE PRINT INC. </strong>operate this website <a href=\"http://www.theeprint.com.ph/\"><strong>www.theeprint.com.ph</strong></a><strong> . </strong>THEE PRINT INC. are hereinafter referred to as \"we\" or \"us\".&nbsp;</p><p><strong>Please read these terms a</strong>nd conditions carefully before using this website. Your use of this website confirms your unconditional acceptance of the following terms and conditions. If you do not accept these terms and conditions, do not use this website.</p><p>&nbsp;</p><p><strong>PRODUCTS, CONTENT AND </strong><i><strong>SPECIFICATIONS</strong></i></p><p>All features, content, specifications, products and prices of products and services described or depicted on this website are subject to change at any time without notice. Certain weights, measures and similar descriptions are approximate and are provided for convenience purposes only. We make all reasonable efforts to accurately display the attributes of our products, including the applicable colors; however, the actual color you see will depend on your computer system and we cannot guarantee that your computer will accurately display such colors. Unless otherwise stated, all product images are for illustration purposes only and therefore, may not include certain items as standard. The inclusion of any products or services in this website at a particular time does not imply or warrant that these products or services will be available at any time. It is your responsibility to ascertain and obey all applicable local and international laws (including minimum age requirements) in regard to the possession, use and sale of any item purchased from this website. By placing an order, you represent that the products ordered will be used only in a lawful manner.</p><p>&nbsp;</p><p><strong>ACCURACY OF INFORMATION</strong></p><p>We attempt to ensure that information on this website is complete, accurate and current. Despite our efforts, the information on this website may occasionally be inaccurate, incomplete or out of date. We make no representation as to the completeness, accuracy or validity of any information on this website. For example, products included on the website may be unavailable, may have different attributes than those listed, or may actually carry a different price than that stated on the website. In addition, we may make changes in information about price and availability without notice. While it is our practice to confirm orders by email, the receipt of an email order confirmation does not constitute our acceptance of an order or our confirmation of an offer to sell a product or service. We reserve the right, without prior notice, to limit the order quantity on any product or service and/or to refuse service to any customer. We also may require verification of information prior to the acceptance and/or shipment of any order.</p><p>&nbsp;</p><p><strong>USE OF THIS WEBSITE</strong></p><p>The website design and all text, graphics, information, content, and other material displayed on or that can be downloaded from this website are either the property of, or used with permission by, <strong>THEE PRINT INC.</strong> and are protected by copyright, trademark and other laws and may not be used except as permitted in these Terms and Conditions or with the prior written permission of the owner of such material. You may not modify the information or materials located on this website in any way or reproduce or publicly display, perform, or distribute or otherwise use any such materials for any public or commercial purpose. Any unauthorized use of any such information or materials may violate copyright laws, trademark laws, laws of privacy and publicity, and other laws and regulations. You are responsible for maintaining the confidentiality of your account information and password and for restricting access to such information and to your computer. You agree to accept responsibility for all activities that occur under your account or password.</p><p>&nbsp;</p><p><strong>TRADEMARKS</strong></p><p>Certain trademarks, trade names, service marks and logos used or displayed on this website are registered and unregistered trademarks, trade names and service marks of <strong>THEE PRINT INC.</strong> Other trademarks, trade names and service marks used or displayed on this website are the registered and unregistered trademarks, trade names and service marks of their respective owners. Nothing contained on this website grants or should be construed as granting, by implication, estoppel, or otherwise, any license or right to use any trademarks, trade names, service marks or logos displayed on this website without our written permission or the written permission of such third party owner.</p><p>&nbsp;</p><p><strong>LINKING TO THIS WEBSITE</strong></p><p>Any permitted links to this website must comply will all applicable laws, rule and regulations.<br>&nbsp;</p><p><strong>THIRD PARTY LINKS</strong></p><p>From time to time, this website may contain links to websites that are not owned, operated or controlled by us or our affiliates. All such links are provided solely as a convenience to you. If you use these links, you will leave this website. Neither we nor any of our affiliates are responsible for any content, materials or other information located on or accessible from any other website. Neither we nor any of our affiliates endorse, guarantee, or make any representations or warranties regarding any other website, or any content, materials or other information located or accessible from such websites, or the results that you may obtain from using such websites. If you decide to access any other website linked to or from this website, you do so entirely at your own risk.</p><p>&nbsp;</p><p><strong>INAPPROPRIATE MATERIAL</strong></p><p>You are prohibited from posting or transmitting any unlawful, threatening, defamatory, libelous, obscene, pornographic or profane material or any material that could constitute or encourage conduct that would be considered a criminal offence or give rise to civil liability, or otherwise violate any law. In addition to any remedies that we may have at law or in equity, if we reasonably determine that you have violated or are likely to violate the foregoing prohibitions, we may take any action we reasonably deem necessary to cure or prevent the violation, including without limitation, the immediate removal from this website of the related materials.</p><p>&nbsp;</p><p><strong>USER INFORMATION</strong></p><p>Other than personally identifiable information, which is subject to this website’s Privacy Policy, any material, information, suggestions, ideas, concepts, know-how, techniques, questions, comments or other communication you transmit or post to this website in any manner is and will be considered non-confidential and non-proprietary. We shall have no obligation to use, return, review, or respond to any customer communication. We will have no liability related to the content of any such customer communication, whether or not arising under the laws of copyright, libel, privacy, obscenity, or otherwise. We retain the right to remove any or all User Communications that includes any material we deem inappropriate or unacceptable.</p><p>&nbsp;</p><p><strong>DISCLAIMERS</strong></p><p>Your use of this website is at your risk. The materials and services provided in connection with this website are provided \"as is\" without any warranties of any kind including warranties of merchantability, fitness for a particular purpose, or non-infringement of intellectual property. Neither we nor any of our affiliates warrant the accuracy or completeness of the materials or services on or through this website. The materials and services on or through this website may be out of date, and neither we nor any of their affiliates make any commitment or assumes any duty to update such materials or services. The foregoing exclusions of implied warranties do not apply to the extent prohibited by law. Please refer to your local laws for any such prohibitions.</p><p>&nbsp;</p><p><strong>LIMITATIONS OF LIABILITY</strong></p><p>We assume no responsibility, and shall not be liable for, any damages to, or viruses that may infect, your computer, telecommunication equipment, or other property caused by or arising from your access to, use of, or browsing this website or your downloading of any materials, from this website. In no event will we, our respective officers, directors, employees, shareholders, affiliates, parent corporations, agents, successors, assigns, retail partners nor any party involved in the creation, production or transmission of this website be liable to any party for any indirect, special, punitive, incidental or consequential damages (including, without limitation, those resulting from lost profits, lost data or business interruption) arising out of the use, inability to use, or the results of use of this website, any websites linked to this website, or the materials, information or services contained at any or all such websites, whether based on warranty, contract, tort or any other legal theory and whether or not advised of the possibility of such damages. The foregoing limitations of liability do not apply to the extent prohibited by law. Please refer to your local laws for any such prohibitions.</p><p>&nbsp;</p><p><strong>REVISIONS TO THESE TERMS AND CONDITIONS</strong></p><p>We may revise these Terms and Conditions at any time and from time to time by updating this posting. You should visit this page from time to time to review the then current Terms and Conditions because they are binding on you. Certain provisions of these Terms and Conditions may be superseded by expressly designated legal notices or terms located on particular pages at this website.</p><p>&nbsp;</p><p><strong>CHOICE OF LAW; JURISDICTION</strong></p><p>These Terms and Conditions supersede any other agreement between you and us to the extent necessary to resolve any inconsistency or ambiguity between them. These Terms and Conditions will be governed by and construed in accordance with the laws of the Philippines, without giving effect to any principles of conflicts of laws. A printed version of these Terms and Conditions shall be admissible in judicial and administrative proceedings based upon or relating to these Terms and Conditions to the same extent and subject to the same conditions as other business documents and records originally generated and maintained in printed form.</p><p>&nbsp;</p><p><strong>TERMINATION</strong></p><p>You or we may suspend or terminate your account or your use of this website at any time, for any reason or for no reason. You are personally liable for any orders that you place or charges that you incur prior to termination. We reserve the right to change, suspend, or discontinue all or any aspect of this website at any time without notice.</p>', '1', '2020-12-11 11:05:16', '2021-02-05 17:43:19');

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
(1, '1', 0, '#48 Emilio Aguinaldo Hiway Dasmarinas, Cavite', 0, 'HQ', '', '', '', '', 'Juan', 'Dela Cruz', '09153088452', '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(2, '2', 0, 'Don Placido Campos Avenue, Dasmariñas, Cavite', 1, 'Dasmarinas Branch', '', '', '', '', 'Ize', 'Henzon', '13212123211', '2021-02-05 09:27:42', '2021-02-05 09:27:42'),
(3, '3', 0, '1604 - A New York Mansion, Montreal St. Brgy E Rodriquez Cubao, Quezon City', 0, 'Office', '', '', '', '', 'Romel', 'Postrano', '09454889218', '2021-02-05 11:23:15', '2021-02-05 11:29:20'),
(4, '3', 0, 'Blk 37 Lot 17 Phase 2B Southville 2 Brgy Aguado Trece Martires City, Cavite', 0, 'Home', '', '', '', '', 'Romel', 'Postrano', '09454889218', '2021-02-05 11:26:30', '2021-02-05 11:29:20'),
(5, '3', 0, 'Daang Amaya, Tanza Cavite', 1, 'Office', '', '', '', '', 'Romel', 'Postrano', '09454889218', '2021-02-05 11:29:21', '2021-02-05 11:29:21'),
(6, '4', 0, '40/85 Mann Stream, Poblacion, Tabaco 4571 Basilan', 0, 'Office', '', '', '', '', 'Felipe Mariano ', 'Socro', '9152587534', '2021-02-05 13:44:27', '2021-02-05 15:26:53'),
(7, '4', 0, 'Amaya 3, Tanza Cavite', 0, 'Office', '', '', '', '', 'Ethan', 'Powers', '09987654321', '2021-02-05 13:52:35', '2021-02-05 15:26:53'),
(8, '4', 0, 'Indang, Indonesia', 0, 'Office 2', '', '', '', '', 'John', 'Budiman', '232323232', '2021-02-05 15:25:55', '2021-02-05 15:26:53'),
(9, '4', 0, 'Indang Indangan', 0, 'Office 2', '', '', '', '', 'Marc', 'Budiman', '2323232', '2021-02-05 15:26:24', '2021-02-05 15:26:53'),
(10, '4', 0, 'Singapore', 1, 'office 3', '', '', '', '', 'Erika', 'Budiman', '042424242', '2021-02-05 15:26:53', '2021-02-05 15:26:53'),
(11, '5', 0, '222 Gree ', 1, 'Home', '', '', '', '', 'Harley', 'Magbago', '09152588752', '2021-02-08 13:54:38', '2021-02-08 13:54:38'),
(12, '6', 0, '915 Manduke', 1, 'Main Office', '', '', '', '', 'Lark', 'Laroya', '09656888898', '2021-02-08 14:12:08', '2021-02-08 14:12:08'),
(13, '9', 0, '343 tutubi street bulacan', 1, 'Home', '', '', '', '', 'Julie', 'Ganap', '09265688878', '2021-02-08 17:12:24', '2021-02-08 17:12:24');

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
(1, '218', 'c14b1ce84282a621bd532bedd8e9e06e', '2021-02-06 13:57:17', '2021-02-05 13:57:17', '2021-02-05 13:57:17'),
(2, '219', '33134299186b1f664e73b13ce47874aa', '2021-02-06 17:44:26', '2021-02-05 17:44:26', '2021-02-05 17:44:26'),
(3, '220', '96a68bf3137b6c2146e162aaf7bace3c', '2021-02-09 09:41:36', '2021-02-08 09:41:36', '2021-02-08 09:41:36'),
(4, '1', 'ae12239eb6a2afbcf22a8b1484fca0a6', '2021-02-09 09:58:05', '2021-02-08 09:58:05', '2021-02-08 09:58:05'),
(5, '218', '41d3c59ec7e2545444cf774f2ae36bc8', '2021-02-09 14:29:49', '2021-02-08 14:29:49', '2021-02-08 14:29:49'),
(6, '218', '62797f2fb215ca96e7955cd27e5f8fc8', '2021-02-09 16:19:12', '2021-02-08 16:19:12', '2021-02-08 16:19:12');

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
(2, 2, 61, '21', '12', '2', '23.00', '0', 'Lorem ipsum', '2021-02-05 09:27:34', '2021-02-05 09:27:34'),
(7, 4, 60, '2', '2', '23', '21.00', '0', 'none', '2021-02-05 09:44:39', '2021-02-05 09:44:39'),
(8, 5, 66, '10', '310', '2', '33.00', '0', 'none', '2021-02-05 09:56:58', '2021-02-05 09:56:58'),
(9, 6, 60, '1', '1', '1', '21.00', '0', 'Test Description', '2021-02-05 10:27:12', '2021-02-05 10:27:12'),
(11, 8, 83, '1', '1', '1', '67.00', '0', 'asdasd', '2021-02-05 10:37:43', '2021-02-05 10:37:43'),
(13, 9, 56, '1', '1', '1', '13.00', '0', 'asdadsd', '2021-02-05 10:39:13', '2021-02-05 10:39:13'),
(15, 3, 68, '5', '5', '50', '37.00', '0', 'none', '2021-02-05 10:41:00', '2021-02-05 10:41:00'),
(16, 10, 51, '1', '12', '1', '3.00', '0', 'sample description', '2021-02-05 10:44:53', '2021-02-05 10:44:53'),
(17, 11, 59, '1', '1', '1', '19.00', '0', '1a', '2021-02-05 10:51:10', '2021-02-05 10:51:10'),
(18, 12, 59, '1', '1', '1', '19.00', '0', 'asdasd', '2021-02-05 11:25:59', '2021-02-05 11:25:59'),
(19, 13, 54, '1', '2', '1', '1.00', '0', 'sample description', '2021-02-05 11:30:52', '2021-02-05 11:30:52'),
(20, 14, 57, '2', '1', '1', '1.00', '0', 'sample description', '2021-02-05 11:39:58', '2021-02-05 11:39:58'),
(21, 15, 69, '1', '1', '1', '1.00', '0', 'sample description', '2021-02-05 11:40:58', '2021-02-05 11:40:58'),
(22, 16, 59, '1', '1', '1', '1.00', '0', 'sample description', '2021-02-05 11:41:42', '2021-02-05 11:41:42'),
(23, 17, 84, '1', '1', '1', '69.00', '0', 'asdadsa', '2021-02-05 11:42:11', '2021-02-05 11:42:11'),
(24, 18, 87, '1', '1', '1', '1.00', '0', 'sample description', '2021-02-05 11:47:50', '2021-02-05 11:47:50'),
(25, 19, 68, '1', '1', '1', '1.00', '0', 'asdasd', '2021-02-05 11:53:21', '2021-02-05 11:53:21'),
(26, 20, 70, '1', '1', '1', '1.00', '0', 'sample description', '2021-02-05 12:11:55', '2021-02-05 12:11:55'),
(27, 21, 70, '1', '1', '1', '1.00', '0', 'sample description', '2021-02-05 12:11:57', '2021-02-05 12:11:57'),
(28, 21, 70, '1', '1', '1', '1.00', '0', 'sample description', '2021-02-05 12:11:57', '2021-02-05 12:11:57'),
(29, 22, 78, '1', '1', '1', '1.00', '0', 'sample description', '2021-02-05 12:14:36', '2021-02-05 12:14:36'),
(30, 23, 60, '1', '1', '1', '1.00', '0', 'sample description', '2021-02-05 13:07:08', '2021-02-05 13:07:08'),
(31, 24, 75, '5', '10', '5', '21.00', '1', 'Stickers', '2021-02-05 13:56:03', '2021-02-05 13:56:03'),
(32, 25, 83, '20', '60', '2', '32.00', '0', 'SINTRA', '2021-02-05 14:03:06', '2021-02-05 14:03:06'),
(33, 26, 65, '32', '22', '11', '31.00', '0', 'Remarked', '2021-02-05 14:56:08', '2021-02-05 14:56:08'),
(34, 26, 56, '232', '3232', '11', '50.00', '1', 'Remarked', '2021-02-05 14:56:08', '2021-02-05 14:56:08'),
(35, 27, 69, '12', '12', '2', '11.00', '0', '32', '2021-02-05 15:27:14', '2021-02-05 15:27:14'),
(36, 28, 84, '123', '456', '1', '32.00', '0', 'description', '2021-02-05 15:41:52', '2021-02-05 15:41:52'),
(38, 29, 53, '1', '1', '1', '7.00', '0', 'dsadsa', '2021-02-08 09:31:24', '2021-02-08 09:31:24'),
(39, 30, 64, '1', '1', '1', '29.00', '0', '1', '2021-02-08 09:36:21', '2021-02-08 09:36:21'),
(40, 31, 62, '1', '1', '1', '25.00', '0', 'test', '2021-02-08 09:37:11', '2021-02-08 09:37:11'),
(41, 32, 59, '1', '1', '1', '19.00', '0', 'asd', '2021-02-08 14:42:51', '2021-02-08 14:42:51'),
(42, 33, 64, '1', '1', '1', '29.00', '0', 'asdadsad', '2021-02-08 14:45:06', '2021-02-08 14:45:06'),
(43, 34, 57, '1', '1', '1', '15.00', '0', '1', '2021-02-08 14:45:52', '2021-02-08 14:45:52'),
(47, 1, 68, '32', '22', '10', '37.00', '0', 'ffffff', '2021-02-08 14:57:34', '2021-02-08 14:57:34'),
(49, 37, 66, '1', '1', '1', '33.00', '0', '1', '2021-02-08 15:01:03', '2021-02-08 15:01:03'),
(51, 35, 53, '1', '1', '1', '7.00', '0', 'asdasdsa', '2021-02-08 15:03:25', '2021-02-08 15:03:25'),
(53, 36, 66, '1', '1', '1', '33.00', '0', 'asdsadsd', '2021-02-08 15:04:02', '2021-02-08 15:04:02'),
(54, 7, 86, '1', '1', '2', '73.00', '0', 'asdsadsad', '2021-02-08 15:04:12', '2021-02-08 15:04:12'),
(57, 39, 58, '2', '2', '2', '2.00', '0', 'wala', '2021-02-08 15:15:54', '2021-02-08 15:15:54'),
(59, 38, 66, '1', '1', '1', '33.00', '0', 'Test Lang', '2021-02-08 15:16:09', '2021-02-08 15:16:09'),
(63, 40, 66, '1', '1', '1', '33.00', '0', '1', '2021-02-08 15:21:31', '2021-02-08 15:21:31'),
(64, 41, 70, '5', '5', '10', '11.00', '0', 'black', '2021-02-08 16:26:05', '2021-02-08 16:26:05'),
(65, 42, 87, '2', '2', '29', '2.00', '0', 'none', '2021-02-08 17:13:40', '2021-02-08 17:13:40'),
(66, 43, 79, '2', '2', '14', '2.00', '0', 'none', '2021-02-08 17:21:01', '2021-02-08 17:21:01'),
(68, 44, 91, '1', '1', '1', '1.00', '0', 'asdsadsa', '2021-02-08 19:46:52', '2021-02-08 19:46:52');

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
(1, 1, 2, '', '2021-02-05 09:26:19', '2021-02-05 09:26:19'),
(2, 2, 1, '', '2021-02-05 09:27:42', '2021-02-05 09:27:42'),
(3, 2, 1, '', '2021-02-05 09:32:52', '2021-02-05 09:32:52'),
(4, 1, 3, '', '2021-02-05 09:36:29', '2021-02-05 09:36:29'),
(5, 2, 1, '', '2021-02-05 09:37:03', '2021-02-05 09:37:03'),
(6, 2, 2, '', '2021-02-05 09:37:13', '2021-02-05 09:37:13'),
(7, 2, 7, '', '2021-02-05 09:37:18', '2021-02-05 09:37:18'),
(8, 2, 8, '', '2021-02-05 09:37:56', '2021-02-05 09:37:56'),
(9, 3, 2, '', '2021-02-05 09:40:31', '2021-02-05 09:40:31'),
(10, 3, 3, '', '2021-02-05 09:40:39', '2021-02-05 09:40:39'),
(11, 3, 3, '', '2021-02-05 09:42:41', '2021-02-05 09:42:41'),
(12, 3, 4, '', '2021-02-05 09:42:46', '2021-02-05 09:42:46'),
(13, 4, 2, '', '2021-02-05 09:44:49', '2021-02-05 09:44:49'),
(14, 4, 7, '', '2021-02-05 09:44:54', '2021-02-05 09:44:54'),
(15, 3, 9, '', '2021-02-05 09:47:45', '2021-02-05 09:47:45'),
(16, 5, 2, '', '2021-02-05 09:57:14', '2021-02-05 09:57:14'),
(17, 5, 5, 'ty', '2021-02-05 09:57:47', '2021-02-05 09:57:47'),
(18, 6, 2, '', '2021-02-05 10:32:26', '2021-02-05 10:32:26'),
(19, 7, 2, '', '2021-02-05 10:35:50', '2021-02-05 10:35:50'),
(20, 1, 3, '', '2021-02-05 10:39:59', '2021-02-05 10:39:59'),
(21, 1, 4, '', '2021-02-05 10:40:47', '2021-02-05 10:40:47'),
(22, 6, 3, '', '2021-02-05 10:41:48', '2021-02-05 10:41:48'),
(23, 1, 4, '', '2021-02-05 10:44:38', '2021-02-05 10:44:38'),
(24, 6, 4, '', '2021-02-05 10:45:01', '2021-02-05 10:45:01'),
(25, 11, 2, '', '2021-02-05 10:51:25', '2021-02-05 10:51:25'),
(26, 11, 3, '', '2021-02-05 10:52:07', '2021-02-05 10:52:07'),
(27, 11, 4, '', '2021-02-05 10:53:28', '2021-02-05 10:53:28'),
(28, 11, 4, '', '2021-02-05 10:54:21', '2021-02-05 10:54:21'),
(29, 13, 2, '', '2021-02-05 11:32:39', '2021-02-05 11:32:39'),
(30, 13, 3, '', '2021-02-05 11:36:39', '2021-02-05 11:36:39'),
(31, 13, 3, '', '2021-02-05 11:37:25', '2021-02-05 11:37:25'),
(32, 16, 2, '', '2021-02-05 11:42:00', '2021-02-05 11:42:00'),
(33, 16, 3, '', '2021-02-05 11:42:33', '2021-02-05 11:42:33'),
(34, 17, 2, '', '2021-02-05 11:42:41', '2021-02-05 11:42:41'),
(35, 17, 3, '', '2021-02-05 11:43:49', '2021-02-05 11:43:49'),
(36, 17, 4, '', '2021-02-05 11:46:13', '2021-02-05 11:46:13'),
(37, 17, 4, '', '2021-02-05 11:46:48', '2021-02-05 11:46:48'),
(38, 17, 3, '', '2021-02-05 11:47:13', '2021-02-05 11:47:13'),
(39, 17, 3, '', '2021-02-05 11:47:30', '2021-02-05 11:47:30'),
(40, 17, 4, '', '2021-02-05 11:47:39', '2021-02-05 11:47:39'),
(41, 17, 3, '', '2021-02-05 11:47:53', '2021-02-05 11:47:53'),
(42, 18, 2, '', '2021-02-05 11:48:03', '2021-02-05 11:48:03'),
(43, 18, 3, '', '2021-02-05 11:48:29', '2021-02-05 11:48:29'),
(44, 19, 2, '', '2021-02-05 11:57:40', '2021-02-05 11:57:40'),
(45, 19, 7, '', '2021-02-05 12:01:00', '2021-02-05 12:01:00'),
(46, 19, 9, '', '2021-02-05 12:09:35', '2021-02-05 12:09:35'),
(47, 20, 2, '', '2021-02-05 12:12:36', '2021-02-05 12:12:36'),
(48, 20, 3, '', '2021-02-05 12:12:56', '2021-02-05 12:12:56'),
(49, 22, 2, '', '2021-02-05 12:14:52', '2021-02-05 12:14:52'),
(50, 22, 3, '', '2021-02-05 12:15:07', '2021-02-05 12:15:07'),
(51, 22, 4, '', '2021-02-05 12:16:07', '2021-02-05 12:16:07'),
(52, 20, 4, '', '2021-02-05 12:16:38', '2021-02-05 12:16:38'),
(53, 13, 4, '', '2021-02-05 12:17:08', '2021-02-05 12:17:08'),
(54, 13, 4, '', '2021-02-05 12:18:02', '2021-02-05 12:18:02'),
(55, 16, 3, '', '2021-02-05 12:18:34', '2021-02-05 12:18:34'),
(56, 18, 3, '', '2021-02-05 12:19:55', '2021-02-05 12:19:55'),
(57, 23, 2, '', '2021-02-05 13:07:28', '2021-02-05 13:07:28'),
(58, 23, 7, '', '2021-02-05 13:08:30', '2021-02-05 13:08:30'),
(59, 24, 2, '', '2021-02-05 13:56:37', '2021-02-05 13:56:37'),
(60, 25, 1, '', '2021-02-05 14:03:41', '2021-02-05 14:03:41'),
(61, 25, 1, '', '2021-02-05 14:04:17', '2021-02-05 14:04:17'),
(62, 25, 2, '', '2021-02-05 14:04:30', '2021-02-05 14:04:30'),
(63, 25, 7, '', '2021-02-05 14:05:18', '2021-02-05 14:05:18'),
(64, 4, 8, '', '2021-02-05 14:33:38', '2021-02-05 14:33:38'),
(65, 25, 8, '', '2021-02-05 14:34:14', '2021-02-05 14:34:14'),
(66, 24, 3, '', '2021-02-05 14:44:47', '2021-02-05 14:44:47'),
(67, 24, 3, '', '2021-02-05 14:45:07', '2021-02-05 14:45:07'),
(68, 24, 4, '', '2021-02-05 14:46:13', '2021-02-05 14:46:13'),
(69, 7, 3, '', '2021-02-05 14:47:08', '2021-02-05 14:47:08'),
(70, 7, 3, '', '2021-02-05 14:47:23', '2021-02-05 14:47:23'),
(71, 6, 4, '', '2021-02-05 14:47:39', '2021-02-05 14:47:39'),
(72, 26, 6, '', '2021-02-05 14:56:20', '2021-02-05 14:56:20'),
(73, 26, 2, '', '2021-02-05 14:57:31', '2021-02-05 14:57:31'),
(74, 26, 3, '', '2021-02-05 14:58:18', '2021-02-05 14:58:18'),
(75, 26, 4, '', '2021-02-05 14:58:38', '2021-02-05 14:58:38'),
(76, 26, 9, '', '2021-02-05 15:00:37', '2021-02-05 15:00:37'),
(77, 27, 2, '', '2021-02-05 15:31:01', '2021-02-05 15:31:01'),
(78, 27, 5, 'You are not worthy', '2021-02-05 15:31:20', '2021-02-05 15:31:20'),
(79, 26, 4, '', '2021-02-05 15:31:56', '2021-02-05 15:31:56'),
(80, 41, 2, '', '2021-02-08 16:26:17', '2021-02-08 16:26:17'),
(81, 41, 3, '', '2021-02-08 16:26:27', '2021-02-08 16:26:27'),
(82, 41, 4, '', '2021-02-08 16:30:32', '2021-02-08 16:30:32'),
(83, 42, 2, '', '2021-02-08 17:13:58', '2021-02-08 17:13:58'),
(84, 42, 3, '', '2021-02-08 17:14:33', '2021-02-08 17:14:33'),
(85, 43, 2, '', '2021-02-08 17:23:20', '2021-02-08 17:23:20'),
(86, 43, 7, '', '2021-02-08 17:23:28', '2021-02-08 17:23:28'),
(87, 43, 9, '', '2021-02-08 17:23:34', '2021-02-08 17:23:34');

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
(1, '1', '21-0001', 'Test Project', '1', '', 4, 1, '2021-02-05 02:44:38', '2021-02-17 00:00:00', '291737.6', 0, 0, '1', '2021-02-05 09:23:57', '2021-02-08 14:57:34'),
(2, '1', '21-0002', 'test 1', '1', '', 7, 0, '0000-00-00 00:00:00', '2021-02-19 00:00:00', '12983.04', 1, 0, '1', '2021-02-05 09:27:34', '2021-02-05 09:37:56'),
(3, '1', '21-0003', 'Protocode Flyers', '1', 'ASAP', 4, 1, '2021-02-05 01:42:46', '2021-02-26 00:00:00', '51800', 0, 1, '1', '2021-02-05 09:40:02', '2021-02-05 10:41:00'),
(4, '1', '21-0004', 'Magazines', '1', '', 7, 0, '0000-00-00 00:00:00', '2021-02-24 00:00:00', '2163.84', 1, 0, '1', '2021-02-05 09:44:38', '2021-02-05 14:33:39'),
(5, '1', '21-0005', 'Tarpaulin', '1', 'ASAP', 5, 0, '0000-00-00 00:00:00', '2021-02-18 00:00:00', '229152', 0, 0, '1', '2021-02-05 09:56:58', '2021-02-05 09:57:48'),
(6, '2', '21-0006', 'Mcdonals Tarpauline', '2', '', 4, 1, '2021-02-05 06:47:40', '2021-03-09 00:00:00', '23.52', 0, 0, '1', '2021-02-05 10:27:12', '2021-02-05 14:47:39'),
(7, '2', '21-0007', 'Billboard', '2', '', 3, 1, '2021-02-05 06:47:23', '2021-03-13 00:00:00', '163.52', 0, 0, '1', '2021-02-05 10:35:18', '2021-02-08 15:04:12'),
(8, '2', '', 'asd', '2', '', 0, 0, '0000-00-00 00:00:00', '2021-03-03 00:00:00', '75.04', 0, 0, '2', '2021-02-05 10:37:43', '2021-02-05 10:37:43'),
(9, '1', '', '1asd', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-02-25 00:00:00', '14.56', 0, 0, '1', '2021-02-05 10:39:02', '2021-02-05 10:39:13'),
(10, '1', '', 'Power Plus', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-02-06 00:00:00', '40.32', 0, 0, '1', '2021-02-05 10:44:53', '2021-02-05 10:44:53'),
(11, '2', '21-0008', 'Test Project', '2', '', 4, 1, '2021-02-05 02:54:21', '2021-03-09 00:00:00', '21.28', 0, 0, '1', '2021-02-05 10:51:10', '2021-02-05 10:54:21'),
(12, '2', '', 'asdasd', '2', '', 0, 0, '0000-00-00 00:00:00', '2021-03-04 00:00:00', '21.28', 0, 0, '2', '2021-02-05 11:25:59', '2021-02-05 11:25:59'),
(13, '3', '21-0009', 'Arch', '3', '', 4, 1, '2021-02-05 04:18:03', '2021-02-17 00:00:00', '2.24', 0, 0, '1', '2021-02-05 11:30:52', '2021-02-05 12:18:03'),
(14, '3', '', 'Mang Inasal', '4', '', 0, 0, '0000-00-00 00:00:00', '2021-02-17 00:00:00', '2.24', 0, 0, '3', '2021-02-05 11:39:58', '2021-02-05 11:39:58'),
(15, '3', '', 'Mang Inasal', '4', '', 0, 0, '0000-00-00 00:00:00', '2021-02-17 00:00:00', '1.12', 0, 0, '3', '2021-02-05 11:40:58', '2021-02-05 11:40:58'),
(16, '3', '21-0010', 'Mang Inasal ', '4', '', 3, 1, '2021-02-05 04:18:37', '2021-02-17 00:00:00', '1.12', 0, 0, '1', '2021-02-05 11:41:42', '2021-02-05 12:18:36'),
(17, '2', '21-0011', 'Socket Testing', '2', '', 3, 1, '2021-02-05 03:47:54', '2021-03-12 00:00:00', '77.28', 0, 0, '1', '2021-02-05 11:42:11', '2021-02-05 11:47:54'),
(18, '3', '21-0012', 'Centos', '3', '', 3, 1, '2021-02-05 04:19:55', '2021-02-17 00:00:00', '1.12', 0, 0, '1', '2021-02-05 11:47:50', '2021-02-05 12:19:55'),
(19, '3', '21-0013', 'dsadsa', '5', '', 7, 0, '0000-00-00 00:00:00', '2021-02-12 00:00:00', '1.12', 0, 1, '3', '2021-02-05 11:53:21', '2021-02-05 12:09:35'),
(20, '3', '21-0014', 'Kuya J', '3', '', 4, 0, '0000-00-00 00:00:00', '2021-02-17 00:00:00', '1.12', 0, 0, '1', '2021-02-05 12:11:52', '2021-02-05 12:16:41'),
(21, '3', '', 'Kuya J', '3', '', 0, 0, '0000-00-00 00:00:00', '2021-02-17 00:00:00', '3.36', 0, 0, '3', '2021-02-05 12:11:56', '2021-02-05 12:11:56'),
(22, '3', '21-0015', 'Mocking Jay', '4', '', 4, 0, '0000-00-00 00:00:00', '2021-02-17 00:00:00', '1.12', 0, 0, '1', '2021-02-05 12:14:36', '2021-02-05 12:16:09'),
(23, '3', '21-0016', 'Elly Project', '5', '', 7, 0, '0000-00-00 00:00:00', '2021-02-12 00:00:00', '1.12', 0, 0, '3', '2021-02-05 13:07:08', '2021-02-05 13:08:30'),
(24, '4', '21-0017', 'TheePrint', '7', '', 4, 1, '2021-02-05 06:46:13', '2021-02-11 00:00:00', '5880', 0, 0, '1', '2021-02-05 13:56:03', '2021-02-05 14:46:13'),
(25, '4', '21-0018', 'Rubic', '6', '', 7, 0, '0000-00-00 00:00:00', '2021-02-05 00:00:00', '86016', 1, 0, '1', '2021-02-05 14:03:06', '2021-02-05 14:34:14'),
(26, '4', '21-0019', 'po', '7', 'Hi', 4, 1, '2021-02-05 07:31:56', '2021-02-26 00:00:00', '462160455.68', 0, 1, '1', '2021-02-05 14:56:08', '2021-02-05 15:31:56'),
(27, '4', '21-0020', 'EDAN CLUB BANNER', '8', 'None', 5, 0, '0000-00-00 00:00:00', '2021-12-12 00:00:00', '3548.16', 0, 0, '1', '2021-02-05 15:27:14', '2021-02-05 15:31:20'),
(28, '4', '', 'Kolin', '7', '', 0, 0, '0000-00-00 00:00:00', '2020-02-04 00:00:00', '2010193.92', 0, 0, '4', '2021-02-05 15:41:52', '2021-02-05 15:41:52'),
(29, '1', '', 'dasds', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-02-11 00:00:00', '7.84', 0, 0, '1', '2021-02-08 09:31:24', '2021-02-08 09:31:24'),
(30, '1', '', 'test', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-02-23 00:00:00', '32.48', 0, 0, '1', '2021-02-08 09:36:21', '2021-02-08 09:36:21'),
(31, '1', '', 'test 2', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-03-04 00:00:00', '28', 0, 0, '1', '2021-02-08 09:37:11', '2021-02-08 09:37:11'),
(32, '1', '', 'Test Prokect', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-02-24 00:00:00', '21.28', 0, 0, '1', '2021-02-08 14:42:51', '2021-02-08 14:42:51'),
(33, '1', '', 'Test Ulet', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-03-04 00:00:00', '32.48', 0, 0, '1', '2021-02-08 14:45:06', '2021-02-08 14:45:06'),
(34, '1', '', 'test project', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-03-03 00:00:00', '16.8', 0, 0, '1', '2021-02-08 14:45:52', '2021-02-08 14:45:52'),
(35, '1', '', 'asd', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-03-09 00:00:00', '7.84', 0, 0, '1', '2021-02-08 14:47:21', '2021-02-08 15:03:25'),
(36, '1', '', 'asdadsad', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-02-26 00:00:00', '36.96', 0, 0, '1', '2021-02-08 14:57:59', '2021-02-08 15:04:02'),
(37, '1', '', 'asdasdasd', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-03-01 00:00:00', '36.96', 0, 0, '1', '2021-02-08 15:01:03', '2021-02-08 15:01:03'),
(38, '1', '', 'Test', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-02-24 00:00:00', '36.96', 0, 0, '215', '2021-02-08 15:15:43', '2021-02-08 15:16:09'),
(39, '5', '', 'Kinabukasan flyers', '11', '', 0, 0, '0000-00-00 00:00:00', '2021-02-28 00:00:00', '17.92', 0, 0, '1', '2021-02-08 15:15:43', '2021-02-08 15:15:54'),
(40, '1', '', 'asd', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-02-16 00:00:00', '36.96', 0, 0, '215', '2021-02-08 15:17:11', '2021-02-08 15:21:31'),
(41, '4', '21-0021', 'magazine', '8', '', 4, 0, '0000-00-00 00:00:00', '2021-02-26 00:00:00', '3080', 0, 0, '1', '2021-02-08 16:26:05', '2021-02-08 16:30:32'),
(42, '9', '21-0022', 'Makabayan Tarpaulin', '13', 'this is a test ', 3, 0, '0000-00-00 00:00:00', '2021-02-27 00:00:00', '259.84', 0, 0, '1', '2021-02-08 17:13:40', '2021-02-08 17:14:33'),
(43, '9', '21-0023', 'Makabyan sticker', '13', '', 7, 0, '0000-00-00 00:00:00', '2021-02-20 00:00:00', '125.44', 0, 1, '9', '2021-02-08 17:21:01', '2021-02-08 17:23:34'),
(44, '1', '', 'test', '1', '', 0, 0, '0000-00-00 00:00:00', '2021-02-08 00:00:00', '1.12', 0, 0, '1', '2021-02-08 19:45:36', '2021-02-08 19:46:52');

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
(1, '3', '215', '1', '', '215', 1, 0, '2021-02-05 00:00:00', '2021-02-05 14:11:09'),
(6, '3', '216', '1', '', '216', 1, 0, '2021-02-05 09:36:06', '2021-02-05 10:04:14'),
(20, '1', '216', '1', '', '6', 1, 0, '2021-02-05 10:27:12', '2021-02-05 10:32:16'),
(21, '2', '216', '1', '', '6', 1, 0, '2021-02-05 10:32:26', '2021-02-05 10:34:52'),
(22, '1', '216', '1', '', '7', 1, 0, '2021-02-05 10:35:18', '2021-02-05 10:35:26'),
(23, '2', '216', '1', '', '7', 1, 0, '2021-02-05 10:35:50', '2021-02-05 10:38:27'),
(24, '1', '216', '1', '', '8', 1, 0, '2021-02-05 10:37:43', '2021-02-05 10:37:49'),
(25, '1', '215', '1', '', '9', 1, 0, '2021-02-05 10:39:02', '2021-02-05 10:51:35'),
(26, '4', '1', '215', 'Your job order 21-0001 is now being processed. ', '1', 1, 1, '2021-02-05 10:39:59', '2021-02-08 14:37:31'),
(27, '6', '1', '215', 'Your payment for job order  21-0001 has been confirmed..', '1', 1, 1, '2021-02-05 10:39:59', '2021-02-08 14:05:29'),
(28, '5', '1', '215', 'You job order  21-0001 has been delivered. ', '1', 1, 1, '2021-02-05 10:40:47', '2021-02-08 14:04:40'),
(29, '6', '1', '215', 'Your payment for job order  21-0001 has been confirmed..', '1', 1, 1, '2021-02-05 10:40:47', '2021-02-08 14:02:29'),
(30, '4', '1', '216', 'Your job order 21-0006 is now being processed. ', '6', 1, 0, '2021-02-05 10:41:48', '2021-02-05 10:50:01'),
(31, '5', '1', '215', 'You job order  21-0001 has been delivered. ', '1', 1, 1, '2021-02-05 10:44:38', '2021-02-08 14:01:39'),
(32, '6', '1', '215', 'Your payment for job order  21-0001 has been confirmed..', '1', 1, 1, '2021-02-05 10:44:38', '2021-02-08 13:14:29'),
(33, '1', '215', '1', '', '10', 1, 0, '2021-02-05 10:44:53', '2021-02-05 11:19:05'),
(34, '5', '1', '216', 'You job order  21-0006 has been delivered. ', '6', 1, 0, '2021-02-05 10:45:01', '2021-02-05 10:50:02'),
(35, '1', '216', '1', '', '11', 1, 0, '2021-02-05 10:51:10', '2021-02-05 10:51:47'),
(36, '2', '216', '1', '', '11', 1, 0, '2021-02-05 10:51:25', '2021-02-05 11:19:18'),
(37, '4', '1', '216', 'Your job order 21-0008 is now being processed. ', '11', 1, 0, '2021-02-05 10:52:07', '2021-02-05 10:52:30'),
(38, '5', '1', '216', 'You job order  21-0008 has been delivered. ', '11', 1, 0, '2021-02-05 10:53:28', '2021-02-05 10:53:54'),
(39, '5', '1', '216', 'You job order  21-0008 has been delivered. ', '11', 1, 0, '2021-02-05 10:54:21', '2021-02-05 11:41:03'),
(40, '6', '1', '216', 'Your payment for job order  21-0008 has been confirmed..', '11', 1, 0, '2021-02-05 10:54:21', '2021-02-05 10:54:45'),
(41, '3', '217', '1', '', '217', 1, 0, '2021-02-05 11:20:41', '2021-02-05 11:27:23'),
(42, '1', '216', '1', '', '12', 1, 0, '2021-02-05 11:25:59', '2021-02-05 11:27:11'),
(43, '1', '217', '1', '', '13', 1, 0, '2021-02-05 11:30:52', '2021-02-05 11:39:33'),
(44, '2', '217', '1', '', '13', 1, 0, '2021-02-05 11:32:39', '2021-02-05 11:39:25'),
(45, '4', '1', '217', 'Your job order 21-0009 is now being processed. ', '13', 0, 0, '2021-02-05 11:36:39', '2021-02-05 11:36:39'),
(46, '4', '1', '217', 'Your job order 21-0009 is now being processed. ', '13', 0, 0, '2021-02-05 11:37:26', '2021-02-05 11:37:26'),
(47, '1', '217', '1', '', '14', 1, 0, '2021-02-05 11:39:58', '2021-02-05 11:40:44'),
(48, '1', '217', '1', '', '15', 1, 0, '2021-02-05 11:40:59', '2021-02-05 11:43:36'),
(49, '1', '217', '1', '', '16', 1, 0, '2021-02-05 11:41:42', '2021-02-05 11:43:29'),
(50, '2', '217', '1', '', '16', 1, 0, '2021-02-05 11:42:00', '2021-02-05 11:43:04'),
(51, '1', '216', '1', '', '17', 1, 0, '2021-02-05 11:42:11', '2021-02-05 11:42:24'),
(52, '4', '1', '217', 'Your job order 21-0010 is now being processed. ', '16', 0, 0, '2021-02-05 11:42:33', '2021-02-05 11:42:33'),
(53, '2', '216', '1', '', '17', 1, 0, '2021-02-05 11:42:41', '2021-02-05 11:43:40'),
(54, '4', '1', '216', 'Your job order 21-0011 is now being processed. ', '17', 1, 0, '2021-02-05 11:43:49', '2021-02-05 11:46:27'),
(55, '5', '1', '216', 'You job order  21-0011 has been delivered. ', '17', 1, 0, '2021-02-05 11:46:14', '2021-02-05 11:46:34'),
(56, '5', '1', '216', 'You job order  21-0011 has been delivered. ', '17', 1, 0, '2021-02-05 11:46:51', '2021-02-05 11:46:51'),
(57, '6', '1', '216', 'Your payment for job order  21-0011 has been confirmed..', '17', 1, 0, '2021-02-05 11:46:52', '2021-02-05 11:46:52'),
(58, '4', '1', '216', 'Your job order 21-0011 is now being processed. ', '17', 1, 0, '2021-02-05 11:47:13', '2021-02-05 11:47:13'),
(59, '6', '1', '216', 'Your payment for job order  21-0011 has been confirmed..', '17', 1, 0, '2021-02-05 11:47:13', '2021-02-05 11:47:13'),
(60, '4', '1', '216', 'Your job order 21-0011 is now being processed. ', '17', 1, 0, '2021-02-05 11:47:30', '2021-02-05 11:47:30'),
(61, '6', '1', '216', 'Your payment for job order  21-0011 has been confirmed..', '17', 1, 0, '2021-02-05 11:47:30', '2021-02-05 11:47:30'),
(62, '5', '1', '216', 'You job order  21-0011 has been delivered. ', '17', 1, 0, '2021-02-05 11:47:39', '2021-02-05 11:47:39'),
(63, '6', '1', '216', 'Your payment for job order  21-0011 has been confirmed..', '17', 1, 1, '2021-02-05 11:47:39', '2021-02-05 11:57:36'),
(64, '1', '217', '1', '', '18', 1, 0, '2021-02-05 11:47:50', '2021-02-05 11:48:01'),
(65, '4', '1', '216', 'Your job order 21-0011 is now being processed. ', '17', 1, 0, '2021-02-05 11:47:53', '2021-02-05 11:58:45'),
(66, '6', '1', '216', 'Your payment for job order  21-0011 has been confirmed..', '17', 1, 1, '2021-02-05 11:47:54', '2021-02-05 11:55:13'),
(67, '2', '217', '1', '', '18', 1, 0, '2021-02-05 11:48:03', '2021-02-05 11:48:09'),
(68, '4', '1', '217', 'Your job order 21-0012 is now being processed. ', '18', 0, 0, '2021-02-05 11:48:30', '2021-02-05 11:48:30'),
(69, '1', '217', '1', '', '19', 1, 0, '2021-02-05 11:53:22', '2021-02-05 12:04:16'),
(70, '2', '217', '1', '', '19', 1, 0, '2021-02-05 11:57:40', '2021-02-05 12:04:33'),
(71, '1', '217', '1', '', '20', 1, 0, '2021-02-05 12:11:56', '2021-02-05 12:11:56'),
(72, '1', '217', '1', '', '21', 1, 0, '2021-02-05 12:11:57', '2021-02-05 12:11:57'),
(73, '2', '217', '1', '', '20', 1, 0, '2021-02-05 12:12:36', '2021-02-05 12:12:36'),
(74, '4', '1', '217', 'Your job order 21-0014 is now being processed. ', '20', 0, 0, '2021-02-05 12:12:56', '2021-02-05 12:12:56'),
(75, '1', '217', '1', '', '22', 1, 0, '2021-02-05 12:14:36', '2021-02-05 12:14:36'),
(76, '2', '217', '1', '', '22', 1, 0, '2021-02-05 12:14:52', '2021-02-05 12:14:52'),
(77, '4', '1', '217', 'Your job order 21-0015 is now being processed. ', '22', 0, 0, '2021-02-05 12:15:07', '2021-02-05 12:15:07'),
(78, '5', '1', '217', 'You job order  21-0015 has been delivered. ', '22', 0, 0, '2021-02-05 12:16:08', '2021-02-05 12:16:08'),
(79, '5', '1', '217', 'You job order  21-0014 has been delivered. ', '20', 0, 0, '2021-02-05 12:16:40', '2021-02-05 12:16:40'),
(80, '5', '1', '217', 'You job order  21-0009 has been delivered. ', '13', 0, 0, '2021-02-05 12:17:08', '2021-02-05 12:17:08'),
(81, '5', '1', '217', 'You job order  21-0009 has been delivered. ', '13', 0, 0, '2021-02-05 12:18:03', '2021-02-05 12:18:03'),
(82, '6', '1', '217', 'Your payment for job order  21-0009 has been confirmed..', '13', 0, 0, '2021-02-05 12:18:03', '2021-02-05 12:18:03'),
(83, '4', '1', '217', 'Your job order 21-0010 is now being processed. ', '16', 0, 0, '2021-02-05 12:18:35', '2021-02-05 12:18:35'),
(84, '6', '1', '217', 'Your payment for job order  21-0010 has been confirmed..', '16', 0, 0, '2021-02-05 12:18:35', '2021-02-05 12:18:35'),
(85, '4', '1', '217', 'Your job order 21-0012 is now being processed. ', '18', 0, 0, '2021-02-05 12:19:55', '2021-02-05 12:19:55'),
(86, '6', '1', '217', 'Your payment for job order  21-0012 has been confirmed..', '18', 0, 0, '2021-02-05 12:19:55', '2021-02-05 12:19:55'),
(87, '1', '217', '1', '', '23', 1, 0, '2021-02-05 13:07:08', '2021-02-05 13:07:08'),
(88, '2', '217', '1', '', '23', 1, 0, '2021-02-05 13:07:28', '2021-02-05 13:07:28'),
(89, '3', '218', '1', '', '218', 1, 1, '2021-02-05 13:50:09', '2021-02-08 14:16:18'),
(90, '1', '218', '1', '', '24', 1, 0, '2021-02-05 13:56:03', '2021-02-05 13:56:03'),
(91, '2', '218', '1', '', '24', 1, 0, '2021-02-05 13:56:36', '2021-02-05 14:28:56'),
(92, '1', '218', '1', '', '25', 1, 1, '2021-02-05 14:03:06', '2021-02-08 14:15:29'),
(93, '2', '218', '1', '', '25', 1, 0, '2021-02-05 14:04:30', '2021-02-05 14:28:43'),
(94, '4', '1', '218', 'Your job order 21-0017 is now being processed. ', '24', 0, 0, '2021-02-05 14:44:47', '2021-02-05 14:44:47'),
(95, '4', '1', '218', 'Your job order 21-0017 is now being processed. ', '24', 0, 0, '2021-02-05 14:45:08', '2021-02-05 14:45:08'),
(96, '6', '1', '218', 'Your payment for job order  21-0017 has been confirmed..', '24', 0, 0, '2021-02-05 14:45:08', '2021-02-05 14:45:08'),
(97, '5', '1', '218', 'You job order  21-0017 has been delivered. ', '24', 0, 0, '2021-02-05 14:46:13', '2021-02-05 14:46:13'),
(98, '6', '1', '218', 'Your payment for job order  21-0017 has been confirmed..', '24', 0, 0, '2021-02-05 14:46:13', '2021-02-05 14:46:13'),
(99, '4', '1', '216', 'Your job order 21-0007 is now being processed. ', '7', 0, 0, '2021-02-05 14:47:08', '2021-02-05 14:47:08'),
(100, '4', '1', '216', 'Your job order 21-0007 is now being processed. ', '7', 0, 0, '2021-02-05 14:47:23', '2021-02-05 14:47:23'),
(101, '6', '1', '216', 'Your payment for job order  21-0007 has been confirmed..', '7', 0, 0, '2021-02-05 14:47:23', '2021-02-05 14:47:23'),
(102, '5', '1', '216', 'You job order  21-0006 has been delivered. ', '6', 0, 0, '2021-02-05 14:47:39', '2021-02-05 14:47:39'),
(103, '6', '1', '216', 'Your payment for job order  21-0006 has been confirmed..', '6', 0, 0, '2021-02-05 14:47:39', '2021-02-05 14:47:39'),
(104, '1', '218', '1', '', '26', 1, 0, '2021-02-05 14:56:08', '2021-02-05 14:56:08'),
(105, '2', '4', '1', '', '26', 1, 1, '2021-02-05 14:57:31', '2021-02-08 14:16:11'),
(106, '4', '1', '218', 'Your job order 21-0019 is now being processed. ', '26', 0, 0, '2021-02-05 14:58:18', '2021-02-05 14:58:18'),
(107, '5', '1', '218', 'You job order  21-0019 has been delivered. ', '26', 0, 0, '2021-02-05 14:58:38', '2021-02-05 14:58:38'),
(108, '1', '218', '1', '', '27', 1, 1, '2021-02-05 15:27:14', '2021-02-08 14:16:08'),
(109, '2', '4', '1', '', '27', 1, 1, '2021-02-05 15:31:01', '2021-02-08 14:15:17'),
(110, '8', '1', '4', '', '27', 0, 0, '2021-02-05 15:31:20', '2021-02-05 15:31:20'),
(111, '5', '1', '218', 'You job order  21-0019 has been delivered. ', '26', 0, 0, '2021-02-05 15:31:56', '2021-02-05 15:31:56'),
(112, '6', '1', '218', 'Your payment for job order  21-0019 has been confirmed..', '26', 1, 0, '2021-02-05 15:31:56', '2021-02-05 15:32:53'),
(113, '1', '218', '1', '', '28', 1, 1, '2021-02-05 15:41:52', '2021-02-08 14:16:05'),
(114, '1', '1', '1', '', '', 1, 1, '2021-02-08 00:00:00', '2021-02-08 14:15:26'),
(115, '1', '1', '219', '', '', 0, 0, '2021-02-08 00:00:00', '2021-02-08 09:31:24'),
(116, '1', '1', '1', '', '', 1, 1, '2021-02-08 00:00:00', '2021-02-08 14:15:14'),
(117, '1', '1', '219', '', '', 0, 0, '2021-02-08 00:00:00', '2021-02-08 09:36:21'),
(118, '1', '1', '1', '', '', 1, 1, '2021-02-08 00:00:00', '2021-02-08 14:15:09'),
(119, '1', '1', '219', '', '', 0, 0, '2021-02-08 00:00:00', '2021-02-08 09:37:11'),
(120, '1', '1', '1', '', '', 1, 0, '2021-02-08 00:00:00', '2021-02-08 14:42:51'),
(121, '1', '1', '219', '', '', 0, 0, '2021-02-08 00:00:00', '2021-02-08 14:42:51'),
(122, '1', '1', '220', '', '', 0, 0, '2021-02-08 00:00:00', '2021-02-08 14:42:51'),
(123, '1', '1', '1', '', '', 1, 0, '2021-02-08 00:00:00', '2021-02-08 14:45:06'),
(124, '1', '1', '219', '', '', 0, 0, '2021-02-08 00:00:00', '2021-02-08 14:45:06'),
(125, '1', '1', '220', '', '', 0, 0, '2021-02-08 00:00:00', '2021-02-08 14:45:06'),
(126, '1', '1', '1', '', '', 1, 0, '2021-02-08 00:00:00', '2021-02-08 14:45:52'),
(127, '1', '1', '219', '', '', 0, 0, '2021-02-08 00:00:00', '2021-02-08 14:45:52'),
(128, '1', '1', '220', '', '', 0, 0, '2021-02-08 00:00:00', '2021-02-08 14:45:52'),
(129, '1', '1', '1', '', '', 0, 0, '2021-02-08 00:00:00', '2021-02-08 14:47:22'),
(130, '1', '1', '219', '', '', 0, 0, '2021-02-08 00:00:00', '2021-02-08 14:47:22'),
(131, '1', '1', '220', '', '', 0, 0, '2021-02-08 00:00:00', '2021-02-08 14:47:22'),
(132, '1', '215', '1', '', '36', 0, 0, '2021-02-08 14:57:59', '2021-02-08 14:57:59'),
(133, '1', '215', '219', '', '36', 0, 0, '2021-02-08 14:57:59', '2021-02-08 14:57:59'),
(134, '1', '215', '220', '', '36', 0, 0, '2021-02-08 14:57:59', '2021-02-08 14:57:59'),
(135, '1', '215', '1', '', '37', 0, 0, '2021-02-08 15:01:03', '2021-02-08 15:01:03'),
(136, '1', '215', '219', '', '37', 0, 0, '2021-02-08 15:01:03', '2021-02-08 15:01:03'),
(137, '1', '215', '220', '', '37', 0, 0, '2021-02-08 15:01:03', '2021-02-08 15:01:03'),
(138, '1', '215', '1', '', '38', 0, 0, '2021-02-08 15:15:43', '2021-02-08 15:15:43'),
(139, '1', '215', '219', '', '38', 0, 0, '2021-02-08 15:15:43', '2021-02-08 15:15:43'),
(140, '1', '215', '220', '', '38', 0, 0, '2021-02-08 15:15:43', '2021-02-08 15:15:43'),
(141, '1', '221', '1', '', '39', 0, 0, '2021-02-08 15:15:43', '2021-02-08 15:15:43'),
(142, '1', '221', '219', '', '39', 0, 0, '2021-02-08 15:15:43', '2021-02-08 15:15:43'),
(143, '1', '221', '220', '', '39', 0, 0, '2021-02-08 15:15:43', '2021-02-08 15:15:43'),
(144, '1', '215', '1', '', '40', 1, 0, '2021-02-08 15:17:12', '2021-02-08 16:08:09'),
(145, '1', '215', '219', '', '40', 0, 0, '2021-02-08 15:17:12', '2021-02-08 15:17:12'),
(146, '1', '215', '220', '', '40', 0, 0, '2021-02-08 15:17:12', '2021-02-08 15:17:12'),
(147, '1', '218', '1', '', '41', 0, 0, '2021-02-08 16:26:06', '2021-02-08 16:26:06'),
(148, '1', '218', '219', '', '41', 0, 0, '2021-02-08 16:26:06', '2021-02-08 16:26:06'),
(149, '1', '218', '220', '', '41', 0, 0, '2021-02-08 16:26:06', '2021-02-08 16:26:06'),
(150, '2', '4', '1', '', '41', 0, 0, '2021-02-08 16:26:17', '2021-02-08 16:26:17'),
(151, '2', '4', '219', '', '41', 0, 0, '2021-02-08 16:26:17', '2021-02-08 16:26:17'),
(152, '2', '4', '220', '', '41', 0, 0, '2021-02-08 16:26:17', '2021-02-08 16:26:17'),
(153, '4', '1', '218', 'Your job order 21-0021 is now being processed. ', '41', 0, 0, '2021-02-08 16:26:28', '2021-02-08 16:26:28'),
(154, '5', '1', '218', 'You job order  21-0021 has been delivered. ', '41', 0, 0, '2021-02-08 16:30:32', '2021-02-08 16:30:32'),
(155, '3', '225', '1', '', '225', 0, 0, '2021-02-08 17:13:01', '2021-02-08 17:13:01'),
(156, '3', '225', '219', '', '225', 0, 0, '2021-02-08 17:13:01', '2021-02-08 17:13:01'),
(157, '3', '225', '220', '', '225', 0, 0, '2021-02-08 17:13:01', '2021-02-08 17:13:01'),
(158, '1', '225', '1', '', '42', 0, 0, '2021-02-08 17:13:40', '2021-02-08 17:13:40'),
(159, '1', '225', '219', '', '42', 0, 0, '2021-02-08 17:13:40', '2021-02-08 17:13:40'),
(160, '1', '225', '220', '', '42', 0, 0, '2021-02-08 17:13:40', '2021-02-08 17:13:40'),
(161, '2', '225', '1', '', '42', 0, 0, '2021-02-08 17:13:57', '2021-02-08 17:13:57'),
(162, '2', '225', '219', '', '42', 0, 0, '2021-02-08 17:13:57', '2021-02-08 17:13:57'),
(163, '2', '225', '220', '', '42', 0, 0, '2021-02-08 17:13:57', '2021-02-08 17:13:57'),
(164, '4', '1', '225', 'Your job order 21-0022 is now being processed. ', '42', 0, 0, '2021-02-08 17:14:33', '2021-02-08 17:14:33'),
(165, '1', '225', '1', '', '43', 0, 0, '2021-02-08 17:21:01', '2021-02-08 17:21:01'),
(166, '1', '225', '219', '', '43', 0, 0, '2021-02-08 17:21:01', '2021-02-08 17:21:01'),
(167, '1', '225', '220', '', '43', 0, 0, '2021-02-08 17:21:01', '2021-02-08 17:21:01'),
(168, '2', '225', '1', '', '43', 0, 0, '2021-02-08 17:23:20', '2021-02-08 17:23:20'),
(169, '2', '225', '219', '', '43', 0, 0, '2021-02-08 17:23:20', '2021-02-08 17:23:20'),
(170, '2', '225', '220', '', '43', 0, 0, '2021-02-08 17:23:20', '2021-02-08 17:23:20'),
(171, '1', '215', '1', '', '44', 0, 0, '2021-02-08 19:45:36', '2021-02-08 19:45:36'),
(172, '1', '215', '219', '', '44', 0, 0, '2021-02-08 19:45:36', '2021-02-08 19:45:36'),
(173, '1', '215', '220', '', '44', 0, 0, '2021-02-08 19:45:36', '2021-02-08 19:45:36');

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
(1, '215', 'Protocode', '123131232132', '090813-M1Y1XFUK.png', '1', '#48 Emilio Aguinaldo High Way, Dasmarinas City, Cavite', '2021-02-05 09:08:13', '2021-02-05 09:08:13'),
(2, '216', 'Mcdonalds', '123123213213', '092740-AN9L7C2A.png', '1', 'Don Placido Campos Avenue, Dasmariñas, Cavite', '2021-02-05 09:27:40', '2021-02-05 09:27:40'),
(3, '217', 'Urdreams Travel and Tours', '123456789012', '110911-KRCYB26J.png', '1', '1640 - A New York Mansion Montreal St. Brgy E Rodriquez Cubao, Quezon City', '2021-02-05 11:09:11', '2021-02-05 11:09:11'),
(4, '218', 'WearAPairs', '456123789', '134425-YRPBGO20.png', '1', '40/85 Mann Stream Street, Poblacion, Tabaco 4571 Basilan', '2021-02-05 13:44:25', '2021-02-08 14:30:26'),
(5, '221', 'Kinabukasan', '564545477', '135436-RPGRIQSE.png', '1', '569 Kawit', '2021-02-08 13:54:36', '2021-02-08 17:06:28'),
(6, '222', 'Kalinga', '02266868888', '141206-DYR56YVD.png', '1', '1888 kabute street', '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(7, '223', 'asdsdsad', '123123213213', '161349-9PQWA5IK.png', '1', 'asdasdsdsadsad', '2021-02-08 16:13:49', '2021-02-08 16:13:49'),
(8, '224', 'asdasd', '112321313232', '161937-PVXO2VVD.png', '1', 'adadsadsadsa', '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(9, '225', 'Makabayan', '0949464565', '171222-4ATI38MA.png', '1', '0090 tutubi street bulacan', '2021-02-08 17:12:23', '2021-02-08 17:12:23');

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
(75, 'TPUV06', '3', 'Clear Sticker', 'Transparent Sticker', 1, 0, '2021-02-05 09:08:57', '2021-02-05 09:08:57'),
(76, 'TPUV07', '3', 'Ultraclear Sticker', 'High Transparent Sticker', 1, 0, '2021-02-05 09:09:32', '2021-02-05 09:09:32'),
(77, 'TPUV08', '3', 'Backlit Sticker', 'Lighted Sticker', 1, 0, '2021-02-05 09:10:02', '2021-02-05 09:10:02'),
(78, 'TPUV09', '3', 'Perforated Sticker', 'One Way Trans Perforated', 1, 0, '2021-02-05 09:10:37', '2021-02-05 09:10:37'),
(79, 'TPUV010', '3', 'Reflectorized Sticker', 'Honeycomb Reflector', 1, 0, '2021-02-05 09:11:34', '2021-02-05 09:11:34'),
(80, 'TPUV011', '3', 'Photopaper', 'Photopaper', 1, 0, '2021-02-05 09:12:00', '2021-02-05 09:12:00'),
(81, 'TPUV012', '3', 'Fabric', 'Cloth Coated', 1, 0, '2021-02-05 09:12:28', '2021-02-05 09:12:28'),
(82, 'TPUV013', '3', 'Canvas', 'Art Canvas', 1, 0, '2021-02-05 09:12:50', '2021-02-05 09:12:50'),
(83, 'TPBD01', '4', 'Sintra 1.5 MM', 'Sintra Board', 1, 0, '2021-02-05 09:13:23', '2021-02-05 09:13:23'),
(84, 'TPBD02', '4', 'Sintra 3MM', 'Sintra Board', 1, 0, '2021-02-05 09:14:02', '2021-02-05 09:14:02'),
(85, 'TPBD03', '4', 'Sintra 6MM', 'Sintra Board', 1, 0, '2021-02-05 09:14:26', '2021-02-05 09:14:26'),
(86, 'TPBD04', '4', 'Sintra 9MM', 'Sintra Board', 1, 0, '2021-02-05 09:14:54', '2021-02-05 09:14:54'),
(87, 'TPBD05', '4', 'Foamboard 5MM', 'Foam Board', 1, 0, '2021-02-05 09:15:22', '2021-02-05 09:15:22'),
(88, 'MRC-2131', '3', 'Sticky Notes', 'Outdoor Play Stickers', 1, 1, '2021-02-05 13:47:18', '2021-02-08 11:08:44'),
(89, 'TEST', '1', 'TEST', 'This is a test', 1, 1, '2021-02-08 10:54:10', '2021-02-08 11:10:12'),
(90, 'TEST2', '1', '121', 'asdadad', 1, 1, '2021-02-08 10:54:31', '2021-02-08 11:10:18'),
(91, 'test product', '1', 'asdasdas', 'new test product', 1, 0, '2021-02-08 19:17:08', '2021-02-08 19:17:08');

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
(1, '1', '51', 3.00, 4.00, '2021-02-05 09:08:13', '2021-02-05 09:08:13'),
(2, '1', '52', 5.00, 6.00, '2021-02-05 09:08:13', '2021-02-05 09:08:13'),
(3, '1', '55', 11.00, 12.00, '2021-02-05 09:08:13', '2021-02-05 09:08:13'),
(4, '1', '53', 7.00, 8.00, '2021-02-05 09:08:13', '2021-02-05 09:08:13'),
(5, '1', '54', 9.00, 10.00, '2021-02-05 09:08:13', '2021-02-05 09:08:13'),
(6, '1', '58', 17.00, 18.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(7, '1', '57', 15.00, 16.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(8, '1', '59', 19.00, 20.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(9, '1', '56', 13.00, 14.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(10, '1', '50', 1.00, 2.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(11, '1', '65', 31.00, 32.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(12, '1', '67', 35.00, 36.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(13, '1', '66', 33.00, 34.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(14, '1', '61', 23.00, 24.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(15, '1', '64', 29.00, 30.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(16, '1', '68', 37.00, 38.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(17, '1', '62', 25.00, 26.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(18, '1', '72', 45.00, 46.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(19, '1', '71', 43.00, 44.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(20, '1', '60', 21.00, 22.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(21, '1', '63', 27.00, 28.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(22, '1', '70', 41.00, 42.00, '2021-02-05 09:08:14', '2021-02-05 09:08:14'),
(23, '1', '69', 39.00, 40.00, '2021-02-05 09:08:14', '2021-02-08 19:10:16'),
(24, '2', '52', 5.00, 6.00, '2021-02-05 09:27:40', '2021-02-05 09:27:40'),
(25, '2', '54', 9.00, 10.00, '2021-02-05 09:27:40', '2021-02-05 09:27:40'),
(26, '2', '50', 1.00, 2.00, '2021-02-05 09:27:40', '2021-02-05 09:27:40'),
(27, '2', '53', 7.00, 8.00, '2021-02-05 09:27:40', '2021-02-05 09:27:40'),
(28, '2', '55', 11.00, 12.00, '2021-02-05 09:27:40', '2021-02-05 09:27:40'),
(29, '2', '56', 13.00, 14.00, '2021-02-05 09:27:40', '2021-02-05 09:27:40'),
(30, '2', '58', 17.00, 18.00, '2021-02-05 09:27:40', '2021-02-05 09:27:40'),
(31, '2', '59', 19.00, 20.00, '2021-02-05 09:27:40', '2021-02-05 09:27:40'),
(32, '2', '57', 15.00, 16.00, '2021-02-05 09:27:40', '2021-02-05 09:27:40'),
(33, '2', '60', 21.00, 22.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(34, '2', '51', 3.00, 4.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(35, '2', '63', 27.00, 28.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(36, '2', '64', 29.00, 30.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(37, '2', '62', 25.00, 26.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(38, '2', '70', 41.00, 42.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(39, '2', '65', 31.00, 32.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(40, '2', '66', 33.00, 34.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(41, '2', '69', 39.00, 40.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(42, '2', '68', 37.00, 38.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(43, '2', '61', 23.00, 24.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(44, '2', '67', 35.00, 36.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(45, '2', '73', 47.00, 48.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(46, '2', '72', 45.00, 46.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(47, '2', '74', 49.00, 50.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(48, '2', '71', 43.00, 44.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(49, '2', '75', 51.00, 52.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(50, '2', '77', 55.00, 56.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(51, '2', '78', 57.00, 58.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(52, '2', '76', 53.00, 54.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(53, '2', '80', 61.00, 62.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(54, '2', '82', 65.00, 66.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(55, '2', '81', 63.00, 64.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(56, '2', '79', 59.00, 60.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(57, '2', '85', 71.00, 72.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(58, '2', '83', 67.00, 68.00, '2021-02-05 09:27:41', '2021-02-05 09:27:41'),
(59, '2', '84', 69.00, 70.00, '2021-02-05 09:27:42', '2021-02-05 09:27:42'),
(60, '2', '87', 75.00, 76.00, '2021-02-05 09:27:42', '2021-02-05 09:27:42'),
(61, '2', '86', 73.00, 74.00, '2021-02-05 09:27:42', '2021-02-05 09:27:42'),
(62, '3', '51', 1.00, 1.00, '2021-02-05 11:09:12', '2021-02-05 11:09:12'),
(63, '3', '53', 1.00, 1.00, '2021-02-05 11:09:12', '2021-02-05 11:09:12'),
(64, '3', '52', 1.00, 1.00, '2021-02-05 11:09:12', '2021-02-05 11:09:12'),
(65, '3', '54', 1.00, 1.00, '2021-02-05 11:09:12', '2021-02-05 11:09:12'),
(66, '3', '50', 1.00, 1.00, '2021-02-05 11:09:12', '2021-02-05 11:09:12'),
(67, '3', '59', 1.00, 1.00, '2021-02-05 11:09:18', '2021-02-05 11:09:18'),
(68, '3', '56', 1.00, 1.00, '2021-02-05 11:09:18', '2021-02-05 11:09:18'),
(69, '3', '55', 1.00, 1.00, '2021-02-05 11:09:18', '2021-02-05 11:09:18'),
(70, '3', '58', 1.00, 1.00, '2021-02-05 11:09:18', '2021-02-05 11:09:18'),
(71, '3', '62', 1.00, 1.00, '2021-02-05 11:09:18', '2021-02-05 11:09:18'),
(72, '3', '71', 1.00, 1.00, '2021-02-05 11:09:18', '2021-02-05 11:09:18'),
(73, '3', '60', 1.00, 1.00, '2021-02-05 11:09:19', '2021-02-05 11:09:19'),
(74, '3', '68', 1.00, 1.00, '2021-02-05 11:09:19', '2021-02-05 11:09:19'),
(75, '3', '80', 1.00, 1.00, '2021-02-05 11:09:19', '2021-02-05 11:09:19'),
(76, '3', '69', 1.00, 1.00, '2021-02-05 11:09:19', '2021-02-05 11:09:19'),
(77, '3', '67', 1.00, 1.00, '2021-02-05 11:09:19', '2021-02-05 11:09:19'),
(78, '3', '63', 1.00, 1.00, '2021-02-05 11:09:20', '2021-02-05 11:09:20'),
(79, '3', '76', 1.00, 1.00, '2021-02-05 11:09:20', '2021-02-05 11:09:20'),
(80, '3', '65', 1.00, 1.00, '2021-02-05 11:09:20', '2021-02-05 11:09:20'),
(81, '3', '64', 1.00, 1.00, '2021-02-05 11:09:20', '2021-02-05 11:09:20'),
(82, '3', '61', 1.00, 1.00, '2021-02-05 11:09:20', '2021-02-05 11:09:20'),
(83, '3', '70', 1.00, 1.00, '2021-02-05 11:09:20', '2021-02-05 11:09:20'),
(84, '3', '66', 1.00, 1.00, '2021-02-05 11:09:20', '2021-02-05 11:09:20'),
(85, '3', '81', 1.00, 1.00, '2021-02-05 11:09:20', '2021-02-05 11:09:20'),
(86, '3', '72', 1.00, 1.00, '2021-02-05 11:09:20', '2021-02-05 11:09:20'),
(87, '3', '74', 1.00, 1.00, '2021-02-05 11:09:21', '2021-02-05 11:09:21'),
(88, '3', '79', 1.00, 1.00, '2021-02-05 11:09:21', '2021-02-05 11:09:21'),
(89, '3', '83', 1.00, 1.00, '2021-02-05 11:09:21', '2021-02-05 11:09:21'),
(90, '3', '75', 1.00, 1.00, '2021-02-05 11:09:21', '2021-02-05 11:09:21'),
(91, '3', '57', 1.00, 1.00, '2021-02-05 11:09:21', '2021-02-05 11:09:21'),
(92, '3', '78', 1.00, 1.00, '2021-02-05 11:09:22', '2021-02-05 11:09:22'),
(93, '3', '82', 1.00, 1.00, '2021-02-05 11:09:22', '2021-02-05 11:09:22'),
(94, '3', '73', 1.00, 1.00, '2021-02-05 11:09:22', '2021-02-05 11:09:22'),
(95, '3', '87', 1.00, 1.00, '2021-02-05 11:09:22', '2021-02-05 11:09:22'),
(96, '4', '53', 20.00, 20.00, '2021-02-05 13:44:26', '2021-02-05 13:44:26'),
(97, '4', '55', 30.00, 30.00, '2021-02-05 13:44:26', '2021-02-05 13:44:26'),
(98, '4', '51', 10.00, 10.00, '2021-02-05 13:44:26', '2021-02-05 13:44:26'),
(99, '4', '50', 10.00, 10.00, '2021-02-05 13:44:26', '2021-02-05 13:44:26'),
(100, '4', '54', 20.00, 20.00, '2021-02-05 13:44:26', '2021-02-05 13:44:26'),
(101, '4', '56', 50.00, 50.00, '2021-02-05 13:44:26', '2021-02-05 13:44:26'),
(102, '4', '61', 41.00, 41.00, '2021-02-05 13:44:26', '2021-02-05 13:44:26'),
(103, '4', '52', 20.00, 20.00, '2021-02-05 13:44:26', '2021-02-05 13:44:26'),
(104, '4', '60', 24.00, 14.00, '2021-02-05 13:44:26', '2021-02-05 13:44:26'),
(105, '4', '68', 22.00, 22.00, '2021-02-05 13:44:26', '2021-02-05 13:44:26'),
(106, '4', '58', 44.00, 44.00, '2021-02-05 13:44:26', '2021-02-05 13:44:26'),
(107, '4', '57', 31.00, 31.00, '2021-02-05 13:44:26', '2021-02-05 13:44:26'),
(108, '4', '59', 99.00, 97.00, '2021-02-05 13:44:26', '2021-02-05 13:44:26'),
(109, '4', '67', 22.00, 22.00, '2021-02-05 13:44:26', '2021-02-05 13:44:26'),
(110, '4', '65', 20.00, 20.00, '2021-02-05 13:44:26', '2021-02-05 13:44:26'),
(111, '4', '66', 20.00, 20.00, '2021-02-05 13:44:26', '2021-02-05 13:44:26'),
(112, '4', '62', 12.00, 12.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(113, '4', '64', 20.00, 20.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(114, '4', '72', 32.00, 32.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(115, '4', '74', 12.00, 12.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(116, '4', '63', 18.00, 18.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(117, '4', '71', 11.00, 11.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(118, '4', '80', 21.00, 21.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(119, '4', '82', 21.00, 21.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(120, '4', '86', 32.00, 32.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(121, '4', '87', 32.00, 32.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(122, '4', '76', 12.00, 12.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(123, '4', '73', 32.00, 32.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(124, '4', '75', 12.00, 21.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(125, '4', '77', 12.00, 12.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(126, '4', '78', 12.00, 12.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(127, '4', '81', 21.00, 21.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(128, '4', '84', 32.00, 32.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(129, '4', '83', 32.00, 32.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(130, '4', '79', 21.00, 21.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(131, '4', '70', 11.00, 11.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(132, '4', '85', 32.00, 32.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(133, '4', '69', 11.00, 11.00, '2021-02-05 13:44:27', '2021-02-05 13:44:27'),
(134, '5', '51', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(135, '5', '52', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(136, '5', '50', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(137, '5', '56', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(138, '5', '57', 22.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(139, '5', '53', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(140, '5', '54', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(141, '5', '55', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(142, '5', '58', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(143, '5', '59', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(144, '5', '61', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(145, '5', '65', 2.00, 22.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(146, '5', '60', 2.00, 22.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(147, '5', '68', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(148, '5', '64', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(149, '5', '67', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(150, '5', '62', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(151, '5', '63', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(152, '5', '69', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(153, '5', '70', 22.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(154, '5', '66', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(155, '5', '71', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(156, '5', '72', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(157, '5', '73', 2.00, 2.00, '2021-02-08 13:54:37', '2021-02-08 13:54:37'),
(158, '5', '80', 2.00, 22.00, '2021-02-08 13:54:38', '2021-02-08 13:54:38'),
(159, '5', '78', 2.00, 2.00, '2021-02-08 13:54:38', '2021-02-08 13:54:38'),
(160, '5', '79', 22.00, 2.00, '2021-02-08 13:54:38', '2021-02-08 13:54:38'),
(161, '5', '74', 2.00, 2.00, '2021-02-08 13:54:38', '2021-02-08 13:54:38'),
(162, '5', '77', 2.00, 2.00, '2021-02-08 13:54:38', '2021-02-08 13:54:38'),
(163, '5', '76', 2.00, 2.00, '2021-02-08 13:54:38', '2021-02-08 13:54:38'),
(164, '5', '81', 22.00, 2.00, '2021-02-08 13:54:38', '2021-02-08 13:54:38'),
(165, '5', '83', 2.00, 2.00, '2021-02-08 13:54:38', '2021-02-08 13:54:38'),
(166, '5', '82', 2.00, 22.00, '2021-02-08 13:54:38', '2021-02-08 13:54:38'),
(167, '5', '75', 2.00, 2.00, '2021-02-08 13:54:38', '2021-02-08 13:54:38'),
(168, '5', '85', 2.00, 2.00, '2021-02-08 13:54:38', '2021-02-08 13:54:38'),
(169, '5', '86', 2.00, 2.00, '2021-02-08 13:54:38', '2021-02-08 13:54:38'),
(170, '5', '84', 22.00, 2.00, '2021-02-08 13:54:38', '2021-02-08 13:54:38'),
(171, '5', '87', 2.00, 2.00, '2021-02-08 13:54:38', '2021-02-08 13:54:38'),
(172, '6', '51', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(173, '6', '50', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(174, '6', '53', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(175, '6', '52', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(176, '6', '54', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(177, '6', '55', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(178, '6', '59', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(179, '6', '56', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(180, '6', '57', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(181, '6', '58', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(182, '6', '61', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(183, '6', '60', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(184, '6', '62', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(185, '6', '64', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(186, '6', '63', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(187, '6', '65', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(188, '6', '66', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(189, '6', '68', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(190, '6', '67', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(191, '6', '69', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(192, '6', '70', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(193, '6', '71', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(194, '6', '73', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(195, '6', '72', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(196, '6', '74', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(197, '6', '81', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(198, '6', '76', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(199, '6', '80', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(200, '6', '75', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(201, '6', '77', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(202, '6', '78', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(203, '6', '82', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(204, '6', '79', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(205, '6', '85', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(206, '6', '83', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(207, '6', '86', 2.00, 2.00, '2021-02-08 14:12:07', '2021-02-08 14:12:07'),
(208, '6', '87', 2.00, 2.00, '2021-02-08 14:12:08', '2021-02-08 14:12:08'),
(209, '6', '84', 2.00, 2.00, '2021-02-08 14:12:08', '2021-02-08 14:12:08'),
(210, '7', '50', 1.00, 1.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(211, '7', '56', 7.00, 7.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(212, '7', '55', 6.00, 6.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(213, '7', '51', 2.00, 2.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(214, '7', '53', 4.00, 4.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(215, '7', '54', 5.00, 5.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(216, '7', '57', 8.00, 8.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(217, '7', '60', 11.00, 11.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(218, '7', '52', 3.00, 3.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(219, '7', '59', 10.00, 10.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(220, '7', '58', 9.00, 9.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(221, '7', '63', 14.00, 14.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(222, '7', '61', 12.00, 12.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(223, '7', '64', 15.00, 15.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(224, '7', '66', 17.00, 17.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(225, '7', '62', 13.00, 13.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(226, '7', '65', 16.00, 16.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(227, '7', '73', 24.00, 24.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(228, '7', '67', 18.00, 18.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(229, '7', '68', 19.00, 19.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(230, '7', '70', 21.00, 21.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(231, '7', '72', 23.00, 23.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(232, '7', '77', 28.00, 28.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(233, '7', '80', 31.00, 31.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(234, '7', '74', 25.00, 25.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(235, '7', '78', 29.00, 29.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(236, '7', '79', 30.00, 30.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(237, '7', '76', 27.00, 27.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(238, '7', '71', 22.00, 22.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(239, '7', '69', 20.00, 20.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(240, '7', '75', 26.00, 26.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(241, '7', '83', 34.00, 34.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(242, '7', '81', 32.00, 32.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(243, '7', '85', 36.00, 36.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(244, '7', '82', 33.00, 33.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(245, '7', '87', 38.00, 38.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(246, '7', '86', 37.00, 37.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(247, '7', '84', 35.00, 35.00, '2021-02-08 16:13:50', '2021-02-08 16:13:50'),
(248, '8', '51', 0.25, 36.00, '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(249, '8', '50', 0.21, 30.00, '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(250, '8', '52', 0.22, 32.00, '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(251, '8', '54', 0.24, 34.00, '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(252, '8', '53', 0.24, 34.00, '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(253, '8', '58', 0.49, 70.00, '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(254, '8', '60', 0.28, 40.00, '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(255, '8', '55', 0.35, 51.00, '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(256, '8', '59', 0.35, 50.00, '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(257, '8', '56', 0.45, 65.00, '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(258, '8', '61', 0.35, 50.00, '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(259, '8', '57', 0.49, 70.00, '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(260, '8', '64', 0.25, 36.00, '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(261, '8', '63', 0.21, 30.00, '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(262, '8', '62', 0.69, 100.00, '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(263, '8', '65', 0.22, 32.00, '2021-02-08 16:19:37', '2021-02-08 16:19:37'),
(264, '8', '66', 0.24, 34.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(265, '8', '71', 0.57, 82.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(266, '8', '69', 0.38, 55.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(267, '8', '67', 0.24, 34.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(268, '8', '68', 0.35, 51.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(269, '8', '72', 0.57, 82.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(270, '8', '70', 0.50, 72.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(271, '8', '74', 0.57, 82.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(272, '8', '73', 0.57, 82.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(273, '8', '78', 0.90, 130.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(274, '8', '76', 0.83, 120.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(275, '8', '77', 0.90, 130.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(276, '8', '80', 0.63, 90.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(277, '8', '79', 0.90, 130.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(278, '8', '75', 0.59, 85.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(279, '8', '81', 0.69, 100.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(280, '8', '84', 0.35, 51.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(281, '8', '85', 0.56, 80.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(282, '8', '82', 0.69, 100.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(283, '8', '83', 0.20, 29.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(284, '8', '86', 0.63, 90.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(285, '8', '87', 0.35, 51.00, '2021-02-08 16:19:38', '2021-02-08 16:19:38'),
(286, '9', '50', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(287, '9', '54', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(288, '9', '52', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(289, '9', '51', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(290, '9', '53', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(291, '9', '63', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(292, '9', '55', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(293, '9', '57', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(294, '9', '56', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(295, '9', '61', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(296, '9', '58', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(297, '9', '65', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(298, '9', '60', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(299, '9', '62', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(300, '9', '59', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(301, '9', '81', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(302, '9', '84', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(303, '9', '64', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(304, '9', '69', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(305, '9', '68', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(306, '9', '66', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(307, '9', '73', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(308, '9', '70', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(309, '9', '67', 2.00, 2.00, '2021-02-08 17:12:23', '2021-02-08 17:12:23'),
(310, '9', '82', 2.00, 2.00, '2021-02-08 17:12:24', '2021-02-08 17:12:24'),
(311, '9', '77', 2.00, 2.00, '2021-02-08 17:12:24', '2021-02-08 17:12:24'),
(312, '9', '75', 2.00, 2.00, '2021-02-08 17:12:24', '2021-02-08 17:12:24'),
(313, '9', '71', 2.00, 2.00, '2021-02-08 17:12:24', '2021-02-08 17:12:24'),
(314, '9', '74', 2.00, 2.00, '2021-02-08 17:12:24', '2021-02-08 17:12:24'),
(315, '9', '72', 2.00, 2.00, '2021-02-08 17:12:24', '2021-02-08 17:12:24'),
(316, '9', '76', 2.00, 2.00, '2021-02-08 17:12:24', '2021-02-08 17:12:24'),
(317, '9', '79', 2.00, 2.00, '2021-02-08 17:12:24', '2021-02-08 17:12:24'),
(318, '9', '85', 2.00, 2.00, '2021-02-08 17:12:24', '2021-02-08 17:12:24'),
(319, '9', '78', 2.00, 2.00, '2021-02-08 17:12:24', '2021-02-08 17:12:24'),
(320, '9', '80', 2.00, 2.00, '2021-02-08 17:12:24', '2021-02-08 17:12:24'),
(321, '9', '86', 2.00, 2.00, '2021-02-08 17:12:24', '2021-02-08 17:12:24'),
(322, '9', '87', 2.00, 2.00, '2021-02-08 17:12:24', '2021-02-08 17:12:24'),
(323, '9', '83', 2.00, 2.00, '2021-02-08 17:12:24', '2021-02-08 17:12:24'),
(324, '1', '86', 14.00, 14.00, '2021-02-08 19:11:25', '2021-02-08 19:11:25'),
(325, '1', '79', 7.00, 7.00, '2021-02-08 19:11:25', '2021-02-08 19:11:25'),
(326, '1', '73', 1.00, 1.00, '2021-02-08 19:11:25', '2021-02-08 19:11:25'),
(327, '1', '82', 10.00, 10.00, '2021-02-08 19:11:25', '2021-02-08 19:11:25'),
(328, '1', '76', 4.00, 4.00, '2021-02-08 19:11:25', '2021-02-08 19:11:25'),
(329, '1', '84', 12.00, 12.00, '2021-02-08 19:11:25', '2021-02-08 19:11:25'),
(330, '1', '83', 11.00, 11.00, '2021-02-08 19:11:25', '2021-02-08 19:11:25'),
(331, '1', '78', 6.00, 6.00, '2021-02-08 19:11:25', '2021-02-08 19:11:25'),
(332, '1', '74', 2.00, 2.00, '2021-02-08 19:11:25', '2021-02-08 19:11:25'),
(333, '1', '75', 3.00, 3.00, '2021-02-08 19:11:25', '2021-02-08 19:11:25'),
(334, '1', '87', 15.00, 15.00, '2021-02-08 19:11:25', '2021-02-08 19:11:25'),
(335, '1', '85', 13.00, 13.00, '2021-02-08 19:11:25', '2021-02-08 19:11:25'),
(336, '1', '80', 8.00, 8.00, '2021-02-08 19:11:25', '2021-02-08 19:11:25'),
(337, '1', '77', 5.00, 5.00, '2021-02-08 19:11:25', '2021-02-08 19:11:25'),
(338, '1', '81', 9.00, 9.00, '2021-02-08 19:11:25', '2021-02-08 19:11:25'),
(339, '1', '91', 1.00, 1.00, '2021-02-08 19:20:29', '2021-02-08 19:20:29');

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
(1, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI2MDM6NTk6MjlwbQ==', 1, '2021-01-26 23:59:29', '2021-01-26 15:59:29', '2021-01-26 15:59:29'),
(2, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI2MDQ6MDg6MzJwbQ==', 1, '2021-01-27 00:08:32', '2021-01-26 16:08:32', '2021-01-26 16:08:32'),
(3, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI2MDQ6MTM6MjVwbQ==', 1, '2021-01-27 00:13:25', '2021-01-26 16:13:25', '2021-01-26 16:13:25'),
(4, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI2MDQ6MjI6MzFwbQ==', 1, '2021-01-27 00:22:31', '2021-01-26 16:22:31', '2021-01-26 16:22:31'),
(5, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI2MDQ6Mjk6MjRwbQ==', 1, '2021-01-27 00:29:24', '2021-01-26 16:29:24', '2021-01-26 16:29:24'),
(6, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI2MDQ6NTY6MDhwbQ==', 1, '2021-01-27 00:56:08', '2021-01-26 16:56:08', '2021-01-26 16:56:08'),
(7, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDg6MzY6MjFhbQ==', 1, '2021-01-27 16:36:21', '2021-01-27 08:36:21', '2021-01-27 08:36:21'),
(8, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDk6MzQ6NDRhbQ==', 1, '2021-01-27 17:34:44', '2021-01-27 09:34:44', '2021-01-27 09:34:44'),
(9, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDk6Mzk6MTBhbQ==', 1, '2021-01-27 17:39:10', '2021-01-27 09:39:10', '2021-01-27 09:39:10'),
(10, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDk6Mzk6NTlhbQ==', 1, '2021-01-27 17:39:59', '2021-01-27 09:39:59', '2021-01-27 09:39:59'),
(11, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDk6NTU6MDlhbQ==', 1, '2021-01-27 17:55:09', '2021-01-27 09:55:09', '2021-01-27 09:55:09'),
(12, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDI6NTM6NDNwbQ==', 1, '2021-01-27 22:53:43', '2021-01-27 14:53:43', '2021-01-27 14:53:43'),
(13, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDQ6NDI6NTJwbQ==', 1, '2021-01-28 00:42:52', '2021-01-27 16:42:52', '2021-01-27 16:42:52'),
(14, '193', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDQ6NDQ6MDRwbQ==', 1, '2021-01-28 00:44:04', '2021-01-27 16:44:04', '2021-01-27 16:44:04'),
(15, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDQ6NDc6MzdwbQ==', 1, '2021-01-28 00:47:37', '2021-01-27 16:47:37', '2021-01-27 16:47:37'),
(16, '193', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDQ6NDg6MjRwbQ==', 1, '2021-01-28 00:48:24', '2021-01-27 16:48:24', '2021-01-27 16:48:24'),
(17, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDQ6NTA6MTdwbQ==', 1, '2021-01-28 00:50:17', '2021-01-27 16:50:17', '2021-01-27 16:50:17'),
(18, '193', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDQ6NTE6MDNwbQ==', 1, '2021-01-28 00:51:03', '2021-01-27 16:51:03', '2021-01-27 16:51:03'),
(19, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDQ6NTc6MDlwbQ==', 1, '2021-01-28 00:57:09', '2021-01-27 16:57:09', '2021-01-27 16:57:09'),
(20, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDU6MDA6MDdwbQ==', 1, '2021-01-28 01:00:07', '2021-01-27 17:00:07', '2021-01-27 17:00:07'),
(21, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDU6MDE6MzRwbQ==', 1, '2021-01-28 01:01:34', '2021-01-27 17:01:34', '2021-01-27 17:01:34'),
(22, '193', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDU6MDQ6MDRwbQ==', 1, '2021-01-28 01:04:04', '2021-01-27 17:04:04', '2021-01-27 17:04:04'),
(23, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDU6MzE6MjNwbQ==', 1, '2021-01-28 01:31:23', '2021-01-27 17:31:23', '2021-01-27 17:31:23'),
(24, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MDk6Mjg6MjhwbQ==', 1, '2021-01-28 05:28:28', '2021-01-27 21:28:28', '2021-01-27 21:28:28'),
(25, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MTA6NDM6MzNwbQ==', 1, '2021-01-28 06:43:33', '2021-01-27 22:43:33', '2021-01-27 22:43:33'),
(26, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI3MTA6NDU6NDNwbQ==', 1, '2021-01-28 06:45:43', '2021-01-27 22:45:43', '2021-01-27 22:45:43'),
(27, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI4MTI6MDU6MzBhbQ==', 1, '2021-01-28 08:05:30', '2021-01-28 00:05:30', '2021-01-28 00:05:30'),
(28, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI4MDc6NTY6MDBhbQ==', 1, '2021-01-28 15:56:00', '2021-01-28 07:56:00', '2021-01-28 07:56:00'),
(29, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI4MDc6NTY6MTVhbQ==', 1, '2021-01-28 15:56:15', '2021-01-28 07:56:15', '2021-01-28 07:56:15'),
(30, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI4MDk6NTE6MDRhbQ==', 1, '2021-01-28 17:51:04', '2021-01-28 09:51:04', '2021-01-28 09:51:04'),
(31, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI4MTA6MjI6MTFhbQ==', 1, '2021-01-28 18:22:11', '2021-01-28 10:22:11', '2021-01-28 10:22:11'),
(32, '194', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI4MTA6MzY6MjVhbQ==', 1, '2021-01-28 18:36:25', '2021-01-28 10:36:25', '2021-01-28 10:36:25'),
(33, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI4MTA6NDQ6MDJhbQ==', 1, '2021-01-28 18:44:02', '2021-01-28 10:44:02', '2021-01-28 10:44:02'),
(34, '194', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI4MTA6NDQ6MDlhbQ==', 1, '2021-01-28 18:44:09', '2021-01-28 10:44:09', '2021-01-28 10:44:09'),
(35, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI4MTA6NDc6NTVhbQ==', 1, '2021-01-28 18:47:55', '2021-01-28 10:47:55', '2021-01-28 10:47:55'),
(36, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTA6NTg6MDlhbQ==', 1, '2021-01-28 18:58:09', '2021-01-28 10:58:09', '2021-01-28 10:58:09'),
(37, '1', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAxLTI4MTE6MDg6MTNhbQ==', 1, '2021-01-28 19:08:13', '2021-01-28 11:08:13', '2021-01-28 11:08:13'),
(38, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MDg6MzdhbQ==', 1, '2021-01-28 19:08:37', '2021-01-28 11:08:37', '2021-01-28 11:08:37'),
(39, '195', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI4MTE6MTA6MjZhbQ==', 1, '2021-01-28 19:10:26', '2021-01-28 11:10:26', '2021-01-28 11:10:26'),
(40, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MTI6NTNhbQ==', 1, '2021-01-28 19:12:53', '2021-01-28 11:12:53', '2021-01-28 11:12:53'),
(41, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MTI6NTVhbQ==', 1, '2021-01-28 19:12:55', '2021-01-28 11:12:55', '2021-01-28 11:12:55'),
(42, '1', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAxLTI4MTE6MTU6MjRhbQ==', 1, '2021-01-28 19:15:24', '2021-01-28 11:15:24', '2021-01-28 11:15:24'),
(43, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MTU6MjlhbQ==', 1, '2021-01-28 19:15:29', '2021-01-28 11:15:29', '2021-01-28 11:15:29'),
(44, '1', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAxLTI4MTE6MjE6MzNhbQ==', 1, '2021-01-28 19:21:33', '2021-01-28 11:21:33', '2021-01-28 11:21:33'),
(45, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTBhbQ==', 1, '2021-01-28 19:24:10', '2021-01-28 11:24:10', '2021-01-28 11:24:10'),
(46, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTBhbQ==', 1, '2021-01-28 19:24:10', '2021-01-28 11:24:10', '2021-01-28 11:24:10'),
(47, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTBhbQ==', 1, '2021-01-28 19:24:10', '2021-01-28 11:24:10', '2021-01-28 11:24:10'),
(48, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTBhbQ==', 1, '2021-01-28 19:24:10', '2021-01-28 11:24:10', '2021-01-28 11:24:10'),
(49, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTFhbQ==', 1, '2021-01-28 19:24:11', '2021-01-28 11:24:11', '2021-01-28 11:24:11'),
(50, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTFhbQ==', 1, '2021-01-28 19:24:11', '2021-01-28 11:24:11', '2021-01-28 11:24:11'),
(51, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTFhbQ==', 1, '2021-01-28 19:24:11', '2021-01-28 11:24:11', '2021-01-28 11:24:11'),
(52, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTFhbQ==', 1, '2021-01-28 19:24:11', '2021-01-28 11:24:11', '2021-01-28 11:24:11'),
(53, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTFhbQ==', 1, '2021-01-28 19:24:11', '2021-01-28 11:24:11', '2021-01-28 11:24:11'),
(54, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTFhbQ==', 1, '2021-01-28 19:24:11', '2021-01-28 11:24:11', '2021-01-28 11:24:11'),
(55, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTFhbQ==', 1, '2021-01-28 19:24:11', '2021-01-28 11:24:11', '2021-01-28 11:24:11'),
(56, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTFhbQ==', 1, '2021-01-28 19:24:11', '2021-01-28 11:24:11', '2021-01-28 11:24:11'),
(57, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTFhbQ==', 1, '2021-01-28 19:24:11', '2021-01-28 11:24:11', '2021-01-28 11:24:11'),
(58, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTFhbQ==', 1, '2021-01-28 19:24:11', '2021-01-28 11:24:11', '2021-01-28 11:24:11'),
(59, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTFhbQ==', 1, '2021-01-28 19:24:11', '2021-01-28 11:24:11', '2021-01-28 11:24:11'),
(60, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTFhbQ==', 1, '2021-01-28 19:24:11', '2021-01-28 11:24:11', '2021-01-28 11:24:11'),
(61, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTFhbQ==', 1, '2021-01-28 19:24:11', '2021-01-28 11:24:11', '2021-01-28 11:24:11'),
(62, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTFhbQ==', 1, '2021-01-28 19:24:11', '2021-01-28 11:24:11', '2021-01-28 11:24:11'),
(63, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTFhbQ==', 1, '2021-01-28 19:24:11', '2021-01-28 11:24:11', '2021-01-28 11:24:11'),
(64, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTJhbQ==', 1, '2021-01-28 19:24:12', '2021-01-28 11:24:12', '2021-01-28 11:24:12'),
(65, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTJhbQ==', 1, '2021-01-28 19:24:12', '2021-01-28 11:24:12', '2021-01-28 11:24:12'),
(66, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTJhbQ==', 1, '2021-01-28 19:24:12', '2021-01-28 11:24:12', '2021-01-28 11:24:12'),
(67, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTJhbQ==', 1, '2021-01-28 19:24:12', '2021-01-28 11:24:12', '2021-01-28 11:24:12'),
(68, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTJhbQ==', 1, '2021-01-28 19:24:12', '2021-01-28 11:24:12', '2021-01-28 11:24:12'),
(69, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTJhbQ==', 1, '2021-01-28 19:24:12', '2021-01-28 11:24:12', '2021-01-28 11:24:12'),
(70, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTJhbQ==', 1, '2021-01-28 19:24:12', '2021-01-28 11:24:12', '2021-01-28 11:24:12'),
(71, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTJhbQ==', 1, '2021-01-28 19:24:12', '2021-01-28 11:24:12', '2021-01-28 11:24:12'),
(72, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTJhbQ==', 1, '2021-01-28 19:24:12', '2021-01-28 11:24:12', '2021-01-28 11:24:12'),
(73, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTJhbQ==', 1, '2021-01-28 19:24:12', '2021-01-28 11:24:12', '2021-01-28 11:24:12'),
(74, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6MjQ6MTJhbQ==', 1, '2021-01-28 19:24:12', '2021-01-28 11:24:12', '2021-01-28 11:24:12'),
(75, '195', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTI4MTE6NDI6MDVhbQ==', 1, '2021-01-28 19:42:05', '2021-01-28 11:42:05', '2021-01-28 11:42:05'),
(76, '195', 'KkZEOEU4ODU2Mzc1NTBCODJEMEQ1Q0MzODM4Q0FDN0VGNDUzNkUxRDQyMDIxLTAxLTI4MDE6MjM6MzVwbQ==', 1, '2021-01-28 21:23:35', '2021-01-28 13:23:35', '2021-01-28 13:23:35'),
(77, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI4MDE6MjQ6MTJwbQ==', 1, '2021-01-28 21:24:12', '2021-01-28 13:24:12', '2021-01-28 13:24:12'),
(78, '195', 'KkZEOEU4ODU2Mzc1NTBCODJEMEQ1Q0MzODM4Q0FDN0VGNDUzNkUxRDQyMDIxLTAxLTI4MDE6MzU6MjdwbQ==', 1, '2021-01-28 21:35:27', '2021-01-28 13:35:27', '2021-01-28 13:35:27'),
(79, '197', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAxLTI4MDE6Mzg6MzVwbQ==', 1, '2021-01-28 21:38:35', '2021-01-28 13:38:35', '2021-01-28 13:38:35'),
(80, '195', 'KkZEOEU4ODU2Mzc1NTBCODJEMEQ1Q0MzODM4Q0FDN0VGNDUzNkUxRDQyMDIxLTAxLTI4MDE6NDA6MDNwbQ==', 1, '2021-01-28 21:40:03', '2021-01-28 13:40:03', '2021-01-28 13:40:03'),
(81, '1', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAxLTI4MDE6NDI6NDFwbQ==', 1, '2021-01-28 21:42:41', '2021-01-28 13:42:41', '2021-01-28 13:42:41'),
(82, '1', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAxLTI4MDE6NTY6MjdwbQ==', 1, '2021-01-28 21:56:27', '2021-01-28 13:56:27', '2021-01-28 13:56:27'),
(83, '197', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAxLTI4MDE6NTc6MjZwbQ==', 1, '2021-01-28 21:57:26', '2021-01-28 13:57:26', '2021-01-28 13:57:26'),
(84, '195', 'KkZEOEU4ODU2Mzc1NTBCODJEMEQ1Q0MzODM4Q0FDN0VGNDUzNkUxRDQyMDIxLTAxLTI4MDI6MDc6MjlwbQ==', 1, '2021-01-28 22:07:29', '2021-01-28 14:07:29', '2021-01-28 14:07:29'),
(85, '1', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAxLTI4MDI6MTg6MDdwbQ==', 1, '2021-01-28 22:18:07', '2021-01-28 14:18:07', '2021-01-28 14:18:07'),
(86, '195', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI4MDI6Mjk6MThwbQ==', 1, '2021-01-28 22:29:18', '2021-01-28 14:29:18', '2021-01-28 14:29:18'),
(87, '194', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI4MDI6MzY6MjlwbQ==', 1, '2021-01-28 22:36:29', '2021-01-28 14:36:29', '2021-01-28 14:36:29'),
(88, '194', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI4MDI6Mzc6NTlwbQ==', 1, '2021-01-28 22:37:59', '2021-01-28 14:37:59', '2021-01-28 14:37:59'),
(89, '198', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI4MDI6NDE6MjNwbQ==', 1, '2021-01-28 22:41:23', '2021-01-28 14:41:23', '2021-01-28 14:41:23'),
(90, '1', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAxLTI4MDM6MzA6MjhwbQ==', 1, '2021-01-28 23:30:28', '2021-01-28 15:30:28', '2021-01-28 15:30:28'),
(91, '195', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI4MDM6NTI6NDdwbQ==', 1, '2021-01-28 23:52:47', '2021-01-28 15:52:47', '2021-01-28 15:52:47'),
(92, '1', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAxLTI4MDQ6MzE6MDdwbQ==', 1, '2021-01-29 00:31:07', '2021-01-28 16:31:07', '2021-01-28 16:31:07'),
(93, '196', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAxLTI4MDQ6MzM6NDBwbQ==', 1, '2021-01-29 00:33:40', '2021-01-28 16:33:40', '2021-01-28 16:33:40'),
(94, '1', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAxLTI4MDQ6MzQ6MTdwbQ==', 1, '2021-01-29 00:34:17', '2021-01-28 16:34:17', '2021-01-28 16:34:17'),
(95, '1', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAxLTI5MDk6MzE6MTdhbQ==', 1, '2021-01-29 17:31:17', '2021-01-29 09:31:17', '2021-01-29 09:31:17'),
(96, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MDk6MzE6NDhhbQ==', 1, '2021-01-29 17:31:48', '2021-01-29 09:31:48', '2021-01-29 09:31:48'),
(97, '1', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAxLTI5MDk6MzU6MDJhbQ==', 1, '2021-01-29 17:35:02', '2021-01-29 09:35:02', '2021-01-29 09:35:02'),
(98, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MDk6NTI6MDVhbQ==', 1, '2021-01-29 17:52:05', '2021-01-29 09:52:05', '2021-01-29 09:52:05'),
(99, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MDk6NTI6MjNhbQ==', 1, '2021-01-29 17:52:23', '2021-01-29 09:52:23', '2021-01-29 09:52:23'),
(100, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MDk6NTI6NDlhbQ==', 1, '2021-01-29 17:52:49', '2021-01-29 09:52:49', '2021-01-29 09:52:49'),
(101, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MDk6NTU6MzRhbQ==', 1, '2021-01-29 17:55:34', '2021-01-29 09:55:35', '2021-01-29 09:55:35'),
(102, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MTA6MDI6MzFhbQ==', 1, '2021-01-29 18:02:31', '2021-01-29 10:02:31', '2021-01-29 10:02:31'),
(103, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MTA6MDM6MDlhbQ==', 1, '2021-01-29 18:03:09', '2021-01-29 10:03:09', '2021-01-29 10:03:09'),
(104, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MTA6MTc6MTdhbQ==', 1, '2021-01-29 18:17:17', '2021-01-29 10:17:17', '2021-01-29 10:17:17'),
(105, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MTA6MTg6MDVhbQ==', 1, '2021-01-29 18:18:05', '2021-01-29 10:18:05', '2021-01-29 10:18:05'),
(106, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MTA6MjU6NDNhbQ==', 1, '2021-01-29 18:25:43', '2021-01-29 10:25:43', '2021-01-29 10:25:43'),
(107, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MTA6MzE6MThhbQ==', 1, '2021-01-29 18:31:18', '2021-01-29 10:31:18', '2021-01-29 10:31:18'),
(108, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MTA6NDU6NTdhbQ==', 1, '2021-01-29 18:45:57', '2021-01-29 10:45:57', '2021-01-29 10:45:57'),
(109, '194', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MTA6NTU6MTZhbQ==', 1, '2021-01-29 18:55:16', '2021-01-29 10:55:16', '2021-01-29 10:55:16'),
(110, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MTE6NTQ6MjhhbQ==', 1, '2021-01-29 19:54:28', '2021-01-29 11:54:28', '2021-01-29 11:54:28'),
(111, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MTE6NTU6MzFhbQ==', 1, '2021-01-29 19:55:31', '2021-01-29 11:55:31', '2021-01-29 11:55:31'),
(112, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MDI6NDY6MDJwbQ==', 1, '2021-01-29 22:46:02', '2021-01-29 14:46:02', '2021-01-29 14:46:02'),
(113, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MDI6NDk6MTVwbQ==', 1, '2021-01-29 22:49:15', '2021-01-29 14:49:15', '2021-01-29 14:49:15'),
(114, '193', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MDI6NDk6MjlwbQ==', 1, '2021-01-29 22:49:29', '2021-01-29 14:49:29', '2021-01-29 14:49:29'),
(115, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MDM6NDk6MzVwbQ==', 1, '2021-01-29 23:49:35', '2021-01-29 15:49:35', '2021-01-29 15:49:35'),
(116, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MDQ6MDA6MjRwbQ==', 1, '2021-01-30 00:00:24', '2021-01-29 16:00:24', '2021-01-29 16:00:24'),
(117, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MDU6MjE6MjJwbQ==', 1, '2021-01-30 01:21:22', '2021-01-29 17:21:22', '2021-01-29 17:21:22'),
(118, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MDU6MzM6MjVwbQ==', 1, '2021-01-30 01:33:25', '2021-01-29 17:33:25', '2021-01-29 17:33:25'),
(119, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MDc6MDE6MzdwbQ==', 1, '2021-01-30 03:01:37', '2021-01-29 19:01:37', '2021-01-29 19:01:37'),
(120, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTI5MDc6MDE6NTVwbQ==', 1, '2021-01-30 03:01:55', '2021-01-29 19:01:55', '2021-01-29 19:01:55'),
(121, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTMwMDY6MDU6MTZwbQ==', 1, '2021-01-31 02:05:16', '2021-01-30 18:05:16', '2021-01-30 18:05:16'),
(122, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTMwMDY6MTA6MDVwbQ==', 1, '2021-01-31 02:10:05', '2021-01-30 18:10:05', '2021-01-30 18:10:05'),
(123, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTMwMDY6MjU6MDJwbQ==', 1, '2021-01-31 02:25:02', '2021-01-30 18:25:02', '2021-01-30 18:25:02'),
(124, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTMwMDY6Mjg6NDJwbQ==', 1, '2021-01-31 02:28:42', '2021-01-30 18:28:42', '2021-01-30 18:28:42'),
(125, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTMwMDY6MzE6MzVwbQ==', 1, '2021-01-31 02:31:35', '2021-01-30 18:31:35', '2021-01-30 18:31:35'),
(126, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDg6NDc6MTlhbQ==', 1, '2021-02-01 16:47:19', '2021-02-01 08:47:19', '2021-02-01 08:47:19'),
(127, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDg6NDg6NDlhbQ==', 1, '2021-02-01 16:48:49', '2021-02-01 08:48:49', '2021-02-01 08:48:49'),
(128, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDg6NTE6MzlhbQ==', 1, '2021-02-01 16:51:39', '2021-02-01 08:51:39', '2021-02-01 08:51:39'),
(129, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDg6NTE6MzlhbQ==', 1, '2021-02-01 16:51:39', '2021-02-01 08:51:39', '2021-02-01 08:51:39'),
(130, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDg6NTY6MzlhbQ==', 1, '2021-02-01 16:56:39', '2021-02-01 08:56:39', '2021-02-01 08:56:39'),
(131, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAxMDk6MDU6MzZhbQ==', 1, '2021-02-01 17:05:36', '2021-02-01 09:05:36', '2021-02-01 09:05:36'),
(132, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDk6MTg6NTZhbQ==', 1, '2021-02-01 17:18:56', '2021-02-01 09:18:56', '2021-02-01 09:18:56'),
(133, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAxMDk6MjE6MTNhbQ==', 1, '2021-02-01 17:21:13', '2021-02-01 09:21:13', '2021-02-01 09:21:13'),
(134, '199', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAxMDk6Mzk6NDNhbQ==', 1, '2021-02-01 17:39:43', '2021-02-01 09:39:43', '2021-02-01 09:39:43'),
(135, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAxMDk6NDM6NDNhbQ==', 1, '2021-02-01 17:43:43', '2021-02-01 09:43:43', '2021-02-01 09:43:43'),
(136, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDk6NDk6NThhbQ==', 1, '2021-02-01 17:49:58', '2021-02-01 09:49:58', '2021-02-01 09:49:58'),
(137, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDk6NTM6MjZhbQ==', 1, '2021-02-01 17:53:26', '2021-02-01 09:53:26', '2021-02-01 09:53:26'),
(138, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMTA6MjM6NTNhbQ==', 1, '2021-02-01 18:23:53', '2021-02-01 10:23:53', '2021-02-01 10:23:53'),
(139, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMTA6MjY6MDdhbQ==', 1, '2021-02-01 18:26:07', '2021-02-01 10:26:07', '2021-02-01 10:26:07'),
(140, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMTA6NDA6MjBhbQ==', 1, '2021-02-01 18:40:20', '2021-02-01 10:40:20', '2021-02-01 10:40:20'),
(141, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMTA6NDY6MTRhbQ==', 1, '2021-02-01 18:46:14', '2021-02-01 10:46:14', '2021-02-01 10:46:14'),
(142, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMTA6NDY6MjlhbQ==', 1, '2021-02-01 18:46:29', '2021-02-01 10:46:29', '2021-02-01 10:46:29'),
(143, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMTA6NTU6NTVhbQ==', 1, '2021-02-01 18:55:55', '2021-02-01 10:55:55', '2021-02-01 10:55:55'),
(144, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMTA6NTc6NTRhbQ==', 1, '2021-02-01 18:57:54', '2021-02-01 10:57:54', '2021-02-01 10:57:54'),
(145, '199', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAxMTE6MDE6MDRhbQ==', 1, '2021-02-01 19:01:04', '2021-02-01 11:01:04', '2021-02-01 11:01:04'),
(146, '199', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAxMTE6MDc6NDVhbQ==', 1, '2021-02-01 19:07:45', '2021-02-01 11:07:45', '2021-02-01 11:07:45'),
(147, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAxMTE6MjA6MDNhbQ==', 1, '2021-02-01 19:20:03', '2021-02-01 11:20:03', '2021-02-01 11:20:03'),
(148, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMTE6MjI6NDhhbQ==', 1, '2021-02-01 19:22:48', '2021-02-01 11:22:48', '2021-02-01 11:22:48'),
(149, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMTE6MjM6MDBhbQ==', 1, '2021-02-01 19:23:00', '2021-02-01 11:23:00', '2021-02-01 11:23:00'),
(150, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAxMTE6MzU6MTZhbQ==', 1, '2021-02-01 19:35:16', '2021-02-01 11:35:16', '2021-02-01 11:35:16'),
(151, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMTI6MzE6NDBwbQ==', 1, '2021-02-01 20:31:40', '2021-02-01 12:31:40', '2021-02-01 12:31:40'),
(152, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDE6MDA6MTJwbQ==', 1, '2021-02-01 21:00:12', '2021-02-01 13:00:12', '2021-02-01 13:00:12'),
(153, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDE6MDE6MjVwbQ==', 1, '2021-02-01 21:01:25', '2021-02-01 13:01:25', '2021-02-01 13:01:25'),
(154, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDE6MTQ6NTlwbQ==', 1, '2021-02-01 21:14:59', '2021-02-01 13:14:59', '2021-02-01 13:14:59'),
(155, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDE6MTk6MzBwbQ==', 1, '2021-02-01 21:19:30', '2021-02-01 13:19:30', '2021-02-01 13:19:30'),
(156, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDE6Mzg6MjBwbQ==', 1, '2021-02-01 21:38:20', '2021-02-01 13:38:20', '2021-02-01 13:38:20'),
(157, '207', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDE6NDI6MjRwbQ==', 1, '2021-02-01 21:42:24', '2021-02-01 13:42:24', '2021-02-01 13:42:24'),
(158, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDE6NDM6NDhwbQ==', 1, '2021-02-01 21:43:48', '2021-02-01 13:43:48', '2021-02-01 13:43:48'),
(159, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDE6NDY6MjFwbQ==', 1, '2021-02-01 21:46:21', '2021-02-01 13:46:21', '2021-02-01 13:46:21'),
(160, '193', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDE6NDg6MjFwbQ==', 1, '2021-02-01 21:48:21', '2021-02-01 13:48:21', '2021-02-01 13:48:21'),
(161, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDE6NTA6MjdwbQ==', 1, '2021-02-01 21:50:27', '2021-02-01 13:50:27', '2021-02-01 13:50:27'),
(162, '198', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDE6NTQ6MTZwbQ==', 1, '2021-02-01 21:54:16', '2021-02-01 13:54:16', '2021-02-01 13:54:16'),
(163, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDI6MDQ6NDBwbQ==', 1, '2021-02-01 22:04:40', '2021-02-01 14:04:40', '2021-02-01 14:04:40'),
(164, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDI6MDc6NTBwbQ==', 1, '2021-02-01 22:07:50', '2021-02-01 14:07:50', '2021-02-01 14:07:50'),
(165, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDI6MDk6MDVwbQ==', 1, '2021-02-01 22:09:05', '2021-02-01 14:09:05', '2021-02-01 14:09:05'),
(166, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDI6MTY6NDZwbQ==', 1, '2021-02-01 22:16:46', '2021-02-01 14:16:46', '2021-02-01 14:16:46'),
(167, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDI6Mjc6NDBwbQ==', 1, '2021-02-01 22:27:40', '2021-02-01 14:27:40', '2021-02-01 14:27:40'),
(168, '193', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDM6MDE6NDVwbQ==', 1, '2021-02-01 23:01:45', '2021-02-01 15:01:45', '2021-02-01 15:01:45'),
(169, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDM6MDc6MjZwbQ==', 1, '2021-02-01 23:07:26', '2021-02-01 15:07:26', '2021-02-01 15:07:26'),
(170, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDM6MjA6MDdwbQ==', 1, '2021-02-01 23:20:07', '2021-02-01 15:20:07', '2021-02-01 15:20:07'),
(171, '193', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDM6NDg6MTJwbQ==', 1, '2021-02-01 23:48:12', '2021-02-01 15:48:12', '2021-02-01 15:48:12'),
(172, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDQ6MDA6MTNwbQ==', 1, '2021-02-02 00:00:13', '2021-02-01 16:00:13', '2021-02-01 16:00:13'),
(173, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDQ6MDc6NDNwbQ==', 1, '2021-02-02 00:07:43', '2021-02-01 16:07:43', '2021-02-01 16:07:43'),
(174, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDQ6MTA6MDRwbQ==', 1, '2021-02-02 00:10:04', '2021-02-01 16:10:04', '2021-02-01 16:10:04'),
(175, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDQ6MTM6MDNwbQ==', 1, '2021-02-02 00:13:03', '2021-02-01 16:13:03', '2021-02-01 16:13:03'),
(176, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDQ6MTc6NTRwbQ==', 1, '2021-02-02 00:17:54', '2021-02-01 16:17:54', '2021-02-01 16:17:54'),
(177, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDU6MDE6MjZwbQ==', 1, '2021-02-02 01:01:26', '2021-02-01 17:01:26', '2021-02-01 17:01:26'),
(178, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDU6MDQ6MzJwbQ==', 1, '2021-02-02 01:04:32', '2021-02-01 17:04:32', '2021-02-01 17:04:32'),
(179, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDU6MDk6NDNwbQ==', 1, '2021-02-02 01:09:43', '2021-02-01 17:09:43', '2021-02-01 17:09:43'),
(180, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDU6MTE6MzlwbQ==', 1, '2021-02-02 01:11:39', '2021-02-01 17:11:39', '2021-02-01 17:11:39'),
(181, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDU6MTM6MzhwbQ==', 1, '2021-02-02 01:13:38', '2021-02-01 17:13:38', '2021-02-01 17:13:38'),
(182, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDU6MTQ6MTlwbQ==', 1, '2021-02-02 01:14:19', '2021-02-01 17:14:19', '2021-02-01 17:14:19'),
(183, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDU6MTk6MjFwbQ==', 1, '2021-02-02 01:19:21', '2021-02-01 17:19:21', '2021-02-01 17:19:21'),
(184, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDU6MjI6MTdwbQ==', 1, '2021-02-02 01:22:17', '2021-02-01 17:22:17', '2021-02-01 17:22:17'),
(185, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDY6MDg6NDRwbQ==', 1, '2021-02-02 02:08:44', '2021-02-01 18:08:44', '2021-02-01 18:08:44'),
(186, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDY6MTA6NTBwbQ==', 1, '2021-02-02 02:10:50', '2021-02-01 18:10:50', '2021-02-01 18:10:50'),
(187, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAxMDY6Mzg6NTNwbQ==', 1, '2021-02-02 02:38:53', '2021-02-01 18:38:53', '2021-02-01 18:38:53'),
(188, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDk6NTA6MjVhbQ==', 1, '2021-02-02 17:50:25', '2021-02-02 09:50:25', '2021-02-02 09:50:25'),
(189, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAyMDk6NTE6MzVhbQ==', 1, '2021-02-02 17:51:35', '2021-02-02 09:51:35', '2021-02-02 09:51:35'),
(190, '200', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMTA6NDE6MjlhbQ==', 1, '2021-02-02 18:41:29', '2021-02-02 10:41:29', '2021-02-02 10:41:29'),
(191, '200', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMTA6NDM6MzhhbQ==', 1, '2021-02-02 18:43:38', '2021-02-02 10:43:38', '2021-02-02 10:43:38'),
(192, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMTA6NTE6MjhhbQ==', 1, '2021-02-02 18:51:28', '2021-02-02 10:51:28', '2021-02-02 10:51:28'),
(193, '200', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMTA6NTQ6MDdhbQ==', 1, '2021-02-02 18:54:07', '2021-02-02 10:54:07', '2021-02-02 10:54:07'),
(194, '200', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMTA6NTU6NDhhbQ==', 1, '2021-02-02 18:55:48', '2021-02-02 10:55:48', '2021-02-02 10:55:48'),
(195, '200', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMTA6NTg6MjNhbQ==', 1, '2021-02-02 18:58:23', '2021-02-02 10:58:23', '2021-02-02 10:58:23'),
(196, '200', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMTE6MDE6MDdhbQ==', 1, '2021-02-02 19:01:07', '2021-02-02 11:01:07', '2021-02-02 11:01:07'),
(197, '200', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMTE6MTE6MDNhbQ==', 1, '2021-02-02 19:11:03', '2021-02-02 11:11:03', '2021-02-02 11:11:03'),
(198, '200', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMTE6NDE6NDdhbQ==', 1, '2021-02-02 19:41:47', '2021-02-02 11:41:47', '2021-02-02 11:41:47'),
(199, '202', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMTE6NDM6NDRhbQ==', 1, '2021-02-02 19:43:44', '2021-02-02 11:43:44', '2021-02-02 11:43:44'),
(200, '202', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMTE6NDg6MzlhbQ==', 1, '2021-02-02 19:48:39', '2021-02-02 11:48:39', '2021-02-02 11:48:39'),
(201, '202', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMTE6NTA6NTZhbQ==', 1, '2021-02-02 19:50:56', '2021-02-02 11:50:56', '2021-02-02 11:50:56'),
(202, '202', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMTE6NTc6MjdhbQ==', 1, '2021-02-02 19:57:27', '2021-02-02 11:57:27', '2021-02-02 11:57:27'),
(203, '199', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAyMDE6MTk6NDBwbQ==', 1, '2021-02-02 21:19:40', '2021-02-02 13:19:40', '2021-02-02 13:19:40'),
(204, '202', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDE6MjA6MDlwbQ==', 1, '2021-02-02 21:20:09', '2021-02-02 13:20:09', '2021-02-02 13:20:09'),
(205, '202', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDE6MjE6NDVwbQ==', 1, '2021-02-02 21:21:45', '2021-02-02 13:21:45', '2021-02-02 13:21:45'),
(206, '199', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAyMDE6MjE6NTVwbQ==', 1, '2021-02-02 21:21:55', '2021-02-02 13:21:55', '2021-02-02 13:21:55'),
(207, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDE6NDA6NTFwbQ==', 1, '2021-02-02 21:40:51', '2021-02-02 13:40:51', '2021-02-02 13:40:51'),
(208, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDE6NDk6MjVwbQ==', 1, '2021-02-02 21:49:25', '2021-02-02 13:49:25', '2021-02-02 13:49:25'),
(209, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDI6MDk6MDRwbQ==', 1, '2021-02-02 22:09:04', '2021-02-02 14:09:04', '2021-02-02 14:09:04'),
(210, '203', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDI6MzI6MjRwbQ==', 1, '2021-02-02 22:32:24', '2021-02-02 14:32:24', '2021-02-02 14:32:24'),
(211, '203', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDI6MzM6NTJwbQ==', 1, '2021-02-02 22:33:52', '2021-02-02 14:33:52', '2021-02-02 14:33:52'),
(212, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDI6Mzk6NDFwbQ==', 1, '2021-02-02 22:39:41', '2021-02-02 14:39:41', '2021-02-02 14:39:41'),
(213, '204', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDI6NDA6MjBwbQ==', 1, '2021-02-02 22:40:20', '2021-02-02 14:40:20', '2021-02-02 14:40:20'),
(214, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAyMDI6NDA6MjFwbQ==', 1, '2021-02-02 22:40:21', '2021-02-02 14:40:21', '2021-02-02 14:40:21'),
(215, '204', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDI6NDE6NTlwbQ==', 1, '2021-02-02 22:41:59', '2021-02-02 14:41:59', '2021-02-02 14:41:59'),
(216, '199', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAyMDI6NDM6NTRwbQ==', 1, '2021-02-02 22:43:54', '2021-02-02 14:43:54', '2021-02-02 14:43:54'),
(217, '204', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDI6NDQ6MzlwbQ==', 1, '2021-02-02 22:44:39', '2021-02-02 14:44:39', '2021-02-02 14:44:39'),
(218, '204', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDI6NDY6MDRwbQ==', 1, '2021-02-02 22:46:04', '2021-02-02 14:46:04', '2021-02-02 14:46:04'),
(219, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAyMDI6NDY6NDBwbQ==', 1, '2021-02-02 22:46:40', '2021-02-02 14:46:40', '2021-02-02 14:46:40'),
(220, '205', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDI6NDc6MDdwbQ==', 1, '2021-02-02 22:47:07', '2021-02-02 14:47:07', '2021-02-02 14:47:07'),
(221, '195', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDI6NDg6MTVwbQ==', 1, '2021-02-02 22:48:15', '2021-02-02 14:48:15', '2021-02-02 14:48:15'),
(222, '206', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDI6NDk6MzVwbQ==', 1, '2021-02-02 22:49:35', '2021-02-02 14:49:35', '2021-02-02 14:49:35'),
(223, '204', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDI6NTY6MzhwbQ==', 1, '2021-02-02 22:56:38', '2021-02-02 14:56:38', '2021-02-02 14:56:38'),
(224, '205', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDI6NTk6MzFwbQ==', 1, '2021-02-02 22:59:31', '2021-02-02 14:59:31', '2021-02-02 14:59:31'),
(225, '205', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDM6MDI6MDhwbQ==', 1, '2021-02-02 23:02:08', '2021-02-02 15:02:08', '2021-02-02 15:02:08'),
(226, '205', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDM6MDM6NTZwbQ==', 1, '2021-02-02 23:03:56', '2021-02-02 15:03:56', '2021-02-02 15:03:56'),
(227, '205', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDM6MDc6MTlwbQ==', 1, '2021-02-02 23:07:19', '2021-02-02 15:07:19', '2021-02-02 15:07:19'),
(228, '205', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDM6MDk6MDFwbQ==', 1, '2021-02-02 23:09:01', '2021-02-02 15:09:01', '2021-02-02 15:09:01'),
(229, '203', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDM6Mjk6MDRwbQ==', 1, '2021-02-02 23:29:04', '2021-02-02 15:29:04', '2021-02-02 15:29:04'),
(230, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDU6NDM6MDdwbQ==', 1, '2021-02-03 01:43:07', '2021-02-02 17:43:07', '2021-02-02 17:43:07'),
(231, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAyMDc6MTU6MzJwbQ==', 1, '2021-02-03 03:15:32', '2021-02-02 19:15:32', '2021-02-02 19:15:32'),
(232, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDg6MjU6NDBhbQ==', 1, '2021-02-03 16:25:40', '2021-02-03 08:25:40', '2021-02-03 08:25:40'),
(233, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDg6MzM6MTlhbQ==', 1, '2021-02-03 16:33:19', '2021-02-03 08:33:19', '2021-02-03 08:33:19'),
(234, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDg6Mzg6MTVhbQ==', 1, '2021-02-03 16:38:15', '2021-02-03 08:38:15', '2021-02-03 08:38:15'),
(235, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDg6NDQ6MTBhbQ==', 1, '2021-02-03 16:44:10', '2021-02-03 08:44:10', '2021-02-03 08:44:10'),
(236, '203', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDg6NDU6NThhbQ==', 1, '2021-02-03 16:45:58', '2021-02-03 08:45:58', '2021-02-03 08:45:58'),
(237, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDg6NTg6MDRhbQ==', 1, '2021-02-03 16:58:04', '2021-02-03 08:58:04', '2021-02-03 08:58:04'),
(238, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDk6MDA6MTZhbQ==', 1, '2021-02-03 17:00:16', '2021-02-03 09:00:16', '2021-02-03 09:00:16'),
(239, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDk6MzU6MDdhbQ==', 1, '2021-02-03 17:35:07', '2021-02-03 09:35:07', '2021-02-03 09:35:07'),
(240, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDk6MzU6NDNhbQ==', 1, '2021-02-03 17:35:43', '2021-02-03 09:35:43', '2021-02-03 09:35:43'),
(241, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAzMTA6MDE6MzlhbQ==', 1, '2021-02-03 18:01:39', '2021-02-03 10:01:39', '2021-02-03 10:01:39'),
(242, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMTA6MjM6MjhhbQ==', 1, '2021-02-03 18:23:28', '2021-02-03 10:23:28', '2021-02-03 10:23:28'),
(243, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMTA6MjQ6NTBhbQ==', 1, '2021-02-03 18:24:50', '2021-02-03 10:24:50', '2021-02-03 10:24:50'),
(244, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMTA6MzA6MjdhbQ==', 1, '2021-02-03 18:30:27', '2021-02-03 10:30:27', '2021-02-03 10:30:27'),
(245, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMTA6MzM6NTRhbQ==', 1, '2021-02-03 18:33:54', '2021-02-03 10:33:54', '2021-02-03 10:33:54'),
(246, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMTA6Mzc6NDRhbQ==', 1, '2021-02-03 18:37:44', '2021-02-03 10:37:44', '2021-02-03 10:37:44'),
(247, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMTA6NDg6NTdhbQ==', 1, '2021-02-03 18:48:57', '2021-02-03 10:48:57', '2021-02-03 10:48:57'),
(248, '199', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAzMTE6MDQ6MzJhbQ==', 1, '2021-02-03 19:04:32', '2021-02-03 11:04:32', '2021-02-03 11:04:32'),
(249, '195', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMTE6MDU6MDdhbQ==', 1, '2021-02-03 19:05:07', '2021-02-03 11:05:07', '2021-02-03 11:05:07'),
(250, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAzMTE6MDg6NTVhbQ==', 1, '2021-02-03 19:08:55', '2021-02-03 11:08:55', '2021-02-03 11:08:55'),
(251, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMTE6MTU6NTZhbQ==', 1, '2021-02-03 19:15:56', '2021-02-03 11:15:56', '2021-02-03 11:15:56'),
(252, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMTE6NDQ6MjZhbQ==', 1, '2021-02-03 19:44:26', '2021-02-03 11:44:26', '2021-02-03 11:44:26'),
(253, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMTE6NTI6NTlhbQ==', 1, '2021-02-03 19:52:59', '2021-02-03 11:52:59', '2021-02-03 11:52:59'),
(254, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMTE6NTM6MjhhbQ==', 1, '2021-02-03 19:53:28', '2021-02-03 11:53:28', '2021-02-03 11:53:28'),
(255, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMTE6NTg6MTVhbQ==', 1, '2021-02-03 19:58:15', '2021-02-03 11:58:15', '2021-02-03 11:58:15'),
(256, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDE6NTM6NDJwbQ==', 1, '2021-02-03 21:53:42', '2021-02-03 13:53:42', '2021-02-03 13:53:42'),
(257, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDI6MDI6MTlwbQ==', 1, '2021-02-03 22:02:19', '2021-02-03 14:02:19', '2021-02-03 14:02:19'),
(258, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDI6MTA6MjhwbQ==', 1, '2021-02-03 22:10:28', '2021-02-03 14:10:28', '2021-02-03 14:10:28'),
(259, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDI6Mzg6MDRwbQ==', 1, '2021-02-03 22:38:04', '2021-02-03 14:38:04', '2021-02-03 14:38:04'),
(260, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAzMDQ6NDg6NTlwbQ==', 1, '2021-02-04 00:48:59', '2021-02-03 16:48:59', '2021-02-03 16:48:59'),
(261, '195', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDQ6NDk6NDhwbQ==', 1, '2021-02-04 00:49:48', '2021-02-03 16:49:48', '2021-02-03 16:49:48'),
(262, '209', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTAzMDQ6NTU6NThwbQ==', 1, '2021-02-04 00:55:58', '2021-02-03 16:55:58', '2021-02-03 16:55:58'),
(263, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDY6MjU6MjJwbQ==', 1, '2021-02-04 02:25:22', '2021-02-03 18:25:22', '2021-02-03 18:25:22'),
(264, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDY6MzM6MjVwbQ==', 1, '2021-02-04 02:33:25', '2021-02-03 18:33:25', '2021-02-03 18:33:25'),
(265, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDY6NDg6NTBwbQ==', 1, '2021-02-04 02:48:50', '2021-02-03 18:48:50', '2021-02-03 18:48:50'),
(266, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDg6Mzk6NDhwbQ==', 1, '2021-02-04 04:39:48', '2021-02-03 20:39:48', '2021-02-03 20:39:48'),
(267, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTAzMDg6NDU6MzhwbQ==', 1, '2021-02-04 04:45:38', '2021-02-03 20:45:38', '2021-02-03 20:45:38'),
(268, '194', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDg6MTg6MDVhbQ==', 1, '2021-02-04 16:18:05', '2021-02-04 08:18:05', '2021-02-04 08:18:05'),
(269, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDg6MTg6MzJhbQ==', 1, '2021-02-04 16:18:32', '2021-02-04 08:18:32', '2021-02-04 08:18:32'),
(270, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDg6MTk6MTJhbQ==', 1, '2021-02-04 16:19:12', '2021-02-04 08:19:12', '2021-02-04 08:19:12'),
(271, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTA0MDg6MjU6MzBhbQ==', 1, '2021-02-04 16:25:30', '2021-02-04 08:25:30', '2021-02-04 08:25:30'),
(272, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDg6MzM6NDlhbQ==', 1, '2021-02-04 16:33:49', '2021-02-04 08:33:49', '2021-02-04 08:33:49'),
(273, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDg6NDY6MTBhbQ==', 1, '2021-02-04 16:46:10', '2021-02-04 08:46:10', '2021-02-04 08:46:10'),
(274, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDg6NTA6NTNhbQ==', 1, '2021-02-04 16:50:53', '2021-02-04 08:50:53', '2021-02-04 08:50:53'),
(275, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDk6MzY6MDRhbQ==', 1, '2021-02-04 17:36:04', '2021-02-04 09:36:04', '2021-02-04 09:36:04'),
(276, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDk6MzY6MzlhbQ==', 1, '2021-02-04 17:36:39', '2021-02-04 09:36:39', '2021-02-04 09:36:39'),
(277, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDk6NDY6MDRhbQ==', 1, '2021-02-04 17:46:04', '2021-02-04 09:46:04', '2021-02-04 09:46:04'),
(278, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDk6NDc6MTBhbQ==', 1, '2021-02-04 17:47:10', '2021-02-04 09:47:10', '2021-02-04 09:47:10'),
(279, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDk6NTA6MTRhbQ==', 1, '2021-02-04 17:50:14', '2021-02-04 09:50:14', '2021-02-04 09:50:14'),
(280, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDk6NTA6MzJhbQ==', 1, '2021-02-04 17:50:32', '2021-02-04 09:50:32', '2021-02-04 09:50:32'),
(281, '208', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDk6NTI6NDJhbQ==', 1, '2021-02-04 17:52:42', '2021-02-04 09:52:42', '2021-02-04 09:52:42'),
(282, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTA0MDk6NTQ6MjJhbQ==', 1, '2021-02-04 17:54:22', '2021-02-04 09:54:22', '2021-02-04 09:54:22'),
(283, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MTA6MDI6NTVhbQ==', 1, '2021-02-04 18:02:55', '2021-02-04 10:02:55', '2021-02-04 10:02:55'),
(284, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MTA6MjY6MDBhbQ==', 1, '2021-02-04 18:26:00', '2021-02-04 10:26:00', '2021-02-04 10:26:00'),
(285, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MTA6NTI6MTJhbQ==', 1, '2021-02-04 18:52:12', '2021-02-04 10:52:12', '2021-02-04 10:52:12'),
(286, '192', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MTA6NTI6NTVhbQ==', 1, '2021-02-04 18:52:55', '2021-02-04 10:52:55', '2021-02-04 10:52:55'),
(287, '194', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MTA6NTM6MTFhbQ==', 1, '2021-02-04 18:53:11', '2021-02-04 10:53:11', '2021-02-04 10:53:11'),
(288, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MTA6NTQ6MTJhbQ==', 1, '2021-02-04 18:54:12', '2021-02-04 10:54:12', '2021-02-04 10:54:12'),
(289, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MTE6MTA6MTRhbQ==', 1, '2021-02-04 19:10:14', '2021-02-04 11:10:14', '2021-02-04 11:10:14'),
(290, '194', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MTE6MTk6MDZhbQ==', 1, '2021-02-04 19:19:06', '2021-02-04 11:19:06', '2021-02-04 11:19:06'),
(291, '211', 'KjZGQzEzQ0FBOUY0M0NBNkY3NEIzODRBOTkzNzI3NjMyRTYzQUU5NzAyMDIxLTAyLTA0MTE6MjA6NDdhbQ==', 1, '2021-02-04 19:20:47', '2021-02-04 11:20:47', '2021-02-04 11:20:47');
INSERT INTO `tokens` (`token_id`, `user_id`, `token`, `token_type`, `token_expiration`, `updated_at`, `created_at`) VALUES
(292, '211', 'KjZGQzEzQ0FBOUY0M0NBNkY3NEIzODRBOTkzNzI3NjMyRTYzQUU5NzAyMDIxLTAyLTA0MTE6MjI6NTZhbQ==', 1, '2021-02-04 19:22:56', '2021-02-04 11:22:56', '2021-02-04 11:22:56'),
(293, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MTE6MzU6MjhhbQ==', 1, '2021-02-04 19:35:28', '2021-02-04 11:35:28', '2021-02-04 11:35:28'),
(294, '211', 'KjZGQzEzQ0FBOUY0M0NBNkY3NEIzODRBOTkzNzI3NjMyRTYzQUU5NzAyMDIxLTAyLTA0MTE6Mzk6MDRhbQ==', 1, '2021-02-04 19:39:04', '2021-02-04 11:39:04', '2021-02-04 11:39:04'),
(295, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MTE6Mzk6NDFhbQ==', 1, '2021-02-04 19:39:41', '2021-02-04 11:39:41', '2021-02-04 11:39:41'),
(296, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDE6MTU6NTVwbQ==', 1, '2021-02-04 21:15:55', '2021-02-04 13:15:55', '2021-02-04 13:15:55'),
(297, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDE6MjM6NTRwbQ==', 1, '2021-02-04 21:23:54', '2021-02-04 13:23:54', '2021-02-04 13:23:54'),
(298, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDE6MjQ6NThwbQ==', 1, '2021-02-04 21:24:58', '2021-02-04 13:24:59', '2021-02-04 13:24:59'),
(299, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTA0MDE6MjY6MTJwbQ==', 1, '2021-02-04 21:26:12', '2021-02-04 13:26:12', '2021-02-04 13:26:12'),
(300, '212', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTA0MDE6MzI6NTVwbQ==', 1, '2021-02-04 21:32:55', '2021-02-04 13:32:55', '2021-02-04 13:32:55'),
(301, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDE6MzM6MjFwbQ==', 1, '2021-02-04 21:33:21', '2021-02-04 13:33:21', '2021-02-04 13:33:21'),
(302, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDE6NDI6MDhwbQ==', 1, '2021-02-04 21:42:08', '2021-02-04 13:42:08', '2021-02-04 13:42:08'),
(303, '191', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDE6NDI6MDhwbQ==', 1, '2021-02-04 21:42:08', '2021-02-04 13:42:09', '2021-02-04 13:42:09'),
(304, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTA0MDE6NDQ6MDBwbQ==', 1, '2021-02-04 21:44:00', '2021-02-04 13:44:00', '2021-02-04 13:44:00'),
(305, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDI6MTM6MzFwbQ==', 1, '2021-02-04 22:13:31', '2021-02-04 14:13:31', '2021-02-04 14:13:31'),
(306, '194', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDI6MTg6MjlwbQ==', 1, '2021-02-04 22:18:29', '2021-02-04 14:18:29', '2021-02-04 14:18:29'),
(307, '193', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDI6MzU6MTVwbQ==', 1, '2021-02-04 22:35:15', '2021-02-04 14:35:15', '2021-02-04 14:35:15'),
(308, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDI6NTc6MjRwbQ==', 1, '2021-02-04 22:57:24', '2021-02-04 14:57:24', '2021-02-04 14:57:24'),
(309, '194', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDM6NDI6MzBwbQ==', 1, '2021-02-04 23:42:30', '2021-02-04 15:42:30', '2021-02-04 15:42:30'),
(310, '199', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTA0MDM6NTM6MDhwbQ==', 1, '2021-02-04 23:53:08', '2021-02-04 15:53:08', '2021-02-04 15:53:08'),
(311, '199', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTA0MDM6NTM6MDlwbQ==', 1, '2021-02-04 23:53:09', '2021-02-04 15:53:09', '2021-02-04 15:53:09'),
(312, '193', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDQ6MDM6NDVwbQ==', 1, '2021-02-05 00:03:45', '2021-02-04 16:03:45', '2021-02-04 16:03:45'),
(313, '194', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDQ6MDk6NDZwbQ==', 1, '2021-02-05 00:09:46', '2021-02-04 16:09:46', '2021-02-04 16:09:46'),
(314, '194', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDQ6MjY6NDlwbQ==', 1, '2021-02-05 00:26:49', '2021-02-04 16:26:49', '2021-02-04 16:26:49'),
(315, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDQ6Mjc6NTlwbQ==', 1, '2021-02-05 00:27:59', '2021-02-04 16:27:59', '2021-02-04 16:27:59'),
(316, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDQ6MzA6NDJwbQ==', 1, '2021-02-05 00:30:42', '2021-02-04 16:30:42', '2021-02-04 16:30:42'),
(317, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDQ6Mzg6MThwbQ==', 1, '2021-02-05 00:38:18', '2021-02-04 16:38:18', '2021-02-04 16:38:18'),
(318, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA0MDU6MjE6MDdwbQ==', 1, '2021-02-05 01:21:07', '2021-02-04 17:21:07', '2021-02-04 17:21:07'),
(319, '195', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDg6Mjc6MzdhbQ==', 1, '2021-02-05 16:27:37', '2021-02-05 08:27:37', '2021-02-05 08:27:37'),
(320, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTA1MDg6Mzc6MTVhbQ==', 1, '2021-02-05 16:37:15', '2021-02-05 08:37:15', '2021-02-05 08:37:15'),
(321, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTA1MDg6NDA6NDNhbQ==', 1, '2021-02-05 16:40:43', '2021-02-05 08:40:43', '2021-02-05 08:40:43'),
(322, '195', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDg6NTE6MTNhbQ==', 1, '2021-02-05 16:51:13', '2021-02-05 08:51:13', '2021-02-05 08:51:13'),
(323, '201', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAyLTA1MDg6NTI6MzVhbQ==', 1, '2021-02-05 16:52:35', '2021-02-05 08:52:35', '2021-02-05 08:52:35'),
(324, '195', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDg6NTU6MTNhbQ==', 1, '2021-02-05 16:55:13', '2021-02-05 08:55:13', '2021-02-05 08:55:13'),
(325, '215', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDk6MDg6NTRhbQ==', 1, '2021-02-05 17:08:54', '2021-02-05 09:08:54', '2021-02-05 09:08:54'),
(326, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDk6MTU6NThhbQ==', 1, '2021-02-05 17:15:58', '2021-02-05 09:15:58', '2021-02-05 09:15:58'),
(327, '215', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDk6MjM6MjJhbQ==', 1, '2021-02-05 17:23:22', '2021-02-05 09:23:22', '2021-02-05 09:23:22'),
(328, '216', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDk6MzA6MjdhbQ==', 1, '2021-02-05 17:30:27', '2021-02-05 09:30:27', '2021-02-05 09:30:27'),
(329, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDk6MzU6NTFhbQ==', 1, '2021-02-05 17:35:51', '2021-02-05 09:35:51', '2021-02-05 09:35:51'),
(330, '216', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDk6MzY6MDZhbQ==', 1, '2021-02-05 17:36:06', '2021-02-05 09:36:06', '2021-02-05 09:36:06'),
(331, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDk6MzY6MjFhbQ==', 1, '2021-02-05 17:36:21', '2021-02-05 09:36:21', '2021-02-05 09:36:21'),
(332, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDk6Mzg6MjdhbQ==', 1, '2021-02-05 17:38:27', '2021-02-05 09:38:27', '2021-02-05 09:38:27'),
(333, '215', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDk6NDI6MDlhbQ==', 1, '2021-02-05 17:42:09', '2021-02-05 09:42:09', '2021-02-05 09:42:09'),
(334, '215', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDk6NTE6NDBhbQ==', 1, '2021-02-05 17:51:40', '2021-02-05 09:51:40', '2021-02-05 09:51:40'),
(335, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MTA6Mzk6MzVhbQ==', 1, '2021-02-05 18:39:35', '2021-02-05 10:39:35', '2021-02-05 10:39:35'),
(336, '216', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MTA6NDk6NDBhbQ==', 1, '2021-02-05 18:49:40', '2021-02-05 10:49:40', '2021-02-05 10:49:40'),
(337, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MTA6NTA6MzlhbQ==', 1, '2021-02-05 18:50:39', '2021-02-05 10:50:39', '2021-02-05 10:50:39'),
(338, '217', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAyLTA1MTE6MjA6MzlhbQ==', 1, '2021-02-05 19:20:39', '2021-02-05 11:20:39', '2021-02-05 11:20:39'),
(339, '215', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MTE6MzA6MTdhbQ==', 1, '2021-02-05 19:30:17', '2021-02-05 11:30:17', '2021-02-05 11:30:17'),
(340, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MTE6Mzk6NTRhbQ==', 1, '2021-02-05 19:39:54', '2021-02-05 11:39:54', '2021-02-05 11:39:54'),
(341, '215', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MTE6NDI6NTBhbQ==', 1, '2021-02-05 19:42:50', '2021-02-05 11:42:50', '2021-02-05 11:42:50'),
(342, '217', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAyLTA1MTI6MDY6NTBwbQ==', 1, '2021-02-05 20:06:50', '2021-02-05 12:06:50', '2021-02-05 12:06:50'),
(343, '217', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAyLTA1MDE6MDY6MTFwbQ==', 1, '2021-02-05 21:06:11', '2021-02-05 13:06:11', '2021-02-05 13:06:11'),
(344, '216', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDE6MTU6MTlwbQ==', 1, '2021-02-05 21:15:19', '2021-02-05 13:15:19', '2021-02-05 13:15:19'),
(345, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDE6Mjc6MjJwbQ==', 1, '2021-02-05 21:27:22', '2021-02-05 13:27:22', '2021-02-05 13:27:22'),
(346, '218', 'KjlCOTIyODA2REUwRDZDNjk0RUZDODk1REY5MDAzNjhGOUE4RkIxMDkyMDIxLTAyLTA1MDE6NTA6MDhwbQ==', 1, '2021-02-05 21:50:08', '2021-02-05 13:50:08', '2021-02-05 13:50:08'),
(347, '218', 'KjlCOTIyODA2REUwRDZDNjk0RUZDODk1REY5MDAzNjhGOUE4RkIxMDkyMDIxLTAyLTA1MDE6NTQ6NDlwbQ==', 1, '2021-02-05 21:54:49', '2021-02-05 13:54:49', '2021-02-05 13:54:49'),
(348, '218', 'KjlCOTIyODA2REUwRDZDNjk0RUZDODk1REY5MDAzNjhGOUE4RkIxMDkyMDIxLTAyLTA1MDE6NTg6MDJwbQ==', 1, '2021-02-05 21:58:02', '2021-02-05 13:58:02', '2021-02-05 13:58:02'),
(349, '218', 'KkQzNUM1QUI3NDhFOEIwNEExQjIxMzJGOUYzMEVENDMwODQ0NjdBMTYyMDIxLTAyLTA1MDE6NTg6NDRwbQ==', 1, '2021-02-05 21:58:44', '2021-02-05 13:58:44', '2021-02-05 13:58:44'),
(350, '218', 'KjlCOTIyODA2REUwRDZDNjk0RUZDODk1REY5MDAzNjhGOUE4RkIxMDkyMDIxLTAyLTA1MDM6MjY6MjJwbQ==', 1, '2021-02-05 23:26:22', '2021-02-05 15:26:22', '2021-02-05 15:26:22'),
(351, '218', 'KjlCOTIyODA2REUwRDZDNjk0RUZDODk1REY5MDAzNjhGOUE4RkIxMDkyMDIxLTAyLTA1MDM6MzI6MTVwbQ==', 1, '2021-02-05 23:32:15', '2021-02-05 15:32:15', '2021-02-05 15:32:15'),
(352, '218', 'KjlCOTIyODA2REUwRDZDNjk0RUZDODk1REY5MDAzNjhGOUE4RkIxMDkyMDIxLTAyLTA1MDM6NDA6MzdwbQ==', 1, '2021-02-05 23:40:37', '2021-02-05 15:40:37', '2021-02-05 15:40:37'),
(353, '217', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAyLTA1MDQ6NTA6NTlwbQ==', 1, '2021-02-06 00:50:59', '2021-02-05 16:50:59', '2021-02-05 16:50:59'),
(354, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDQ6NTI6MjJwbQ==', 1, '2021-02-06 00:52:22', '2021-02-05 16:52:22', '2021-02-05 16:52:22'),
(355, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA1MDU6MDI6MTNwbQ==', 1, '2021-02-06 01:02:13', '2021-02-05 17:02:13', '2021-02-05 17:02:13'),
(356, '217', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAyLTA4MDg6Mjc6NTZhbQ==', 1, '2021-02-08 16:27:56', '2021-02-08 08:27:56', '2021-02-08 08:27:56'),
(357, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDg6MzM6MjBhbQ==', 1, '2021-02-08 16:33:20', '2021-02-08 08:33:20', '2021-02-08 08:33:20'),
(358, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDk6MDA6MTNhbQ==', 1, '2021-02-08 17:00:13', '2021-02-08 09:00:13', '2021-02-08 09:00:13'),
(359, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDk6MTE6MzBhbQ==', 1, '2021-02-08 17:11:30', '2021-02-08 09:11:30', '2021-02-08 09:11:30'),
(360, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDk6MTk6MzlhbQ==', 1, '2021-02-08 17:19:39', '2021-02-08 09:19:39', '2021-02-08 09:19:39'),
(361, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDk6NTg6NDNhbQ==', 1, '2021-02-08 17:58:43', '2021-02-08 09:58:43', '2021-02-08 09:58:43'),
(362, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MTA6MDM6MDFhbQ==', 1, '2021-02-08 18:03:01', '2021-02-08 10:03:01', '2021-02-08 10:03:01'),
(363, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MTA6NDU6MDNhbQ==', 1, '2021-02-08 18:45:03', '2021-02-08 10:45:03', '2021-02-08 10:45:03'),
(364, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MTE6MDI6MzVhbQ==', 1, '2021-02-08 19:02:35', '2021-02-08 11:02:35', '2021-02-08 11:02:35'),
(365, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MTE6MTI6MDNhbQ==', 1, '2021-02-08 19:12:03', '2021-02-08 11:12:03', '2021-02-08 11:12:03'),
(366, '216', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MTE6MTI6NTJhbQ==', 1, '2021-02-08 19:12:52', '2021-02-08 11:12:52', '2021-02-08 11:12:52'),
(367, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MTE6MTM6MjNhbQ==', 1, '2021-02-08 19:13:23', '2021-02-08 11:13:23', '2021-02-08 11:13:23'),
(368, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MTE6NDI6MjVhbQ==', 1, '2021-02-08 19:42:25', '2021-02-08 11:42:25', '2021-02-08 11:42:25'),
(369, '215', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDE6MDQ6MDVwbQ==', 1, '2021-02-08 21:04:05', '2021-02-08 13:04:05', '2021-02-08 13:04:05'),
(370, '215', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDE6MTE6MzdwbQ==', 1, '2021-02-08 21:11:37', '2021-02-08 13:11:37', '2021-02-08 13:11:37'),
(371, '215', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDE6MTI6NThwbQ==', 1, '2021-02-08 21:12:58', '2021-02-08 13:12:58', '2021-02-08 13:12:58'),
(372, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDI6MDY6MTRwbQ==', 1, '2021-02-08 22:06:14', '2021-02-08 14:06:14', '2021-02-08 14:06:14'),
(373, '216', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDI6Mjc6MjBwbQ==', 1, '2021-02-08 22:27:20', '2021-02-08 14:27:20', '2021-02-08 14:27:20'),
(374, '215', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDI6MzQ6MTlwbQ==', 1, '2021-02-08 22:34:19', '2021-02-08 14:34:19', '2021-02-08 14:34:19'),
(375, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDI6NDY6NThwbQ==', 1, '2021-02-08 22:46:58', '2021-02-08 14:46:58', '2021-02-08 14:46:58'),
(376, '215', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDM6MDk6MTdwbQ==', 1, '2021-02-08 23:09:17', '2021-02-08 15:09:17', '2021-02-08 15:09:17'),
(377, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDM6MTA6MzBwbQ==', 1, '2021-02-08 23:10:30', '2021-02-08 15:10:30', '2021-02-08 15:10:30'),
(378, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDM6MTQ6MTdwbQ==', 1, '2021-02-08 23:14:17', '2021-02-08 15:14:17', '2021-02-08 15:14:17'),
(379, '215', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDM6MTU6MTRwbQ==', 1, '2021-02-08 23:15:14', '2021-02-08 15:15:14', '2021-02-08 15:15:14'),
(380, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDM6MjU6NDRwbQ==', 1, '2021-02-08 23:25:44', '2021-02-08 15:25:44', '2021-02-08 15:25:44'),
(381, '218', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAyLTA4MDQ6MjA6MDhwbQ==', 1, '2021-02-09 00:20:08', '2021-02-08 16:20:08', '2021-02-08 16:20:08'),
(382, '218', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAyLTA4MDQ6MjU6MTlwbQ==', 1, '2021-02-09 00:25:19', '2021-02-08 16:25:19', '2021-02-08 16:25:19'),
(383, '218', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAyLTA4MDU6MDk6MDlwbQ==', 1, '2021-02-09 01:09:09', '2021-02-08 17:09:09', '2021-02-08 17:09:09'),
(384, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDU6MTA6MDZwbQ==', 1, '2021-02-09 01:10:06', '2021-02-08 17:10:06', '2021-02-08 17:10:06'),
(385, '225', 'KjA0QjA0MTEwOTRBMTk4RTg2MUUyRUE0RTlBNkU0MDQ2MkZBQ0E2QTcyMDIxLTAyLTA4MDU6MTM6MDFwbQ==', 1, '2021-02-09 01:13:01', '2021-02-08 17:13:01', '2021-02-08 17:13:01'),
(386, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAyLTA4MDU6MTQ6MjNwbQ==', 1, '2021-02-09 01:14:23', '2021-02-08 17:14:23', '2021-02-08 17:14:23');

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
(1, 'kaelreyes', 'kaelreyes12@hotmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '1', '2021-02-08 05:14:23', '1', 1, 1, '2021-01-04 13:59:14', '2021-02-08 17:14:23'),
(215, '', 'kaeleak12@gmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '2', '2021-02-08 03:15:14', '1', 1, 1, '2021-02-05 09:08:11', '2021-02-08 15:15:14'),
(216, '', 'pulpsy14@gmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '2', '2021-02-08 02:27:20', '1', 1, 1, '2021-02-05 09:27:39', '2021-02-08 14:27:20'),
(217, '', 'romelpostrano@gmail.com', '*0CA69D254654746CE4C232B6B2AFE397D4E153DF', '2', '2021-02-08 08:27:57', '1', 1, 1, '2021-02-05 11:09:06', '2021-02-08 08:27:57'),
(218, '', 'ellasantos203@gmail.com', '*04B0411094A198E861E2EA4E9A6E40462FACA6A7', '2', '2021-02-08 05:09:09', '1', 1, 1, '2021-02-05 01:44:24', '2021-02-08 17:09:09'),
(219, '', 'marcrennielrint@gmail.com', '*BE6F4196D2EB0650E819744BCA416914EDC4737D', '1', NULL, '1', 1, 1, '2021-02-05 05:36:26', '2021-02-08 09:37:50'),
(220, '', 'kael12@gmail.com', '335a40af4867edfdb603f63320de2861', '1', NULL, '1', 1, 1, '2021-02-08 09:41:02', '0000-00-00 00:00:00'),
(221, '', 'eleanormaesantos@gmail.com', '5158543e850ffd162812ffacf3a3b070', '2', NULL, '1', 1, 1, '2021-02-08 01:54:35', '2021-02-08 17:06:28'),
(222, '', 'kalingapo@testdummykun.com', '7e142aa2b8c8438b01eef5dd6268d81f', '2', NULL, '1', 1, 1, '2021-02-08 02:12:05', '0000-00-00 00:00:00'),
(223, '', 'asdasdasdsa@asdsaddad.com', 'ea9b9ea677c5788ced1a744d4675928e', '2', NULL, '1', 1, 1, '2021-02-08 04:13:47', '0000-00-00 00:00:00'),
(224, '', 'adasdas@aqweqewq.com', '98de8cfb0dee88085d9740507e33167a', '2', NULL, '1', 1, 1, '2021-02-08 04:19:36', '0000-00-00 00:00:00'),
(225, '', 'cecilvelgar@gmail.com', '*04B0411094A198E861E2EA4E9A6E40462FACA6A7', '2', '2021-02-08 05:13:01', '1', 1, 1, '2021-02-08 05:12:20', '2021-02-08 17:13:01');

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
(1, '1', 'Michaela', 'Reyes', '09153088452', '115318-UOZW8BQZ.png', '2021-01-04 07:59:36', '2021-02-05 15:39:58'),
(182, '215', 'May', 'Gozarin', '09368851037', '090811-OM6OOEHK.png', '2021-02-05 09:08:11', '2021-02-05 09:08:11'),
(183, '216', 'Kenneth', 'Yang', '12321321321', '092739-WZ8LT899.png', '2021-02-05 09:27:39', '2021-02-05 09:27:39'),
(184, '217', 'Romel', 'Postrano', '09454889218', '110906-W36YFXJB.png', '2021-02-05 11:09:06', '2021-02-05 11:09:06'),
(185, '218', 'Matthew Roy ', 'Artus', '09152587539', '134424-CYY3Y827.png', '2021-02-05 13:44:24', '2021-02-08 14:30:26'),
(186, '219', 'Marcuz', 'Rintz', '09552838203', '173626-L6YLQ846.png', '2021-02-05 17:36:26', '2021-02-05 17:39:09'),
(187, '220', 'Mark', 'Zuckerberg', '09153088452', '094102-UR1ZWE19.png', '2021-02-08 09:41:02', '2021-02-08 09:41:02'),
(188, '221', 'Lucas', 'Hambog', '09158787877', '135435-J49SDLDI.png', '2021-02-08 13:54:35', '2021-02-08 17:06:28'),
(189, '222', 'Justin', 'Maakit', '09265868688', '141205-V395O0NF.png', '2021-02-08 14:12:06', '2021-02-08 14:12:06'),
(190, '223', 'asdsadsa', 'asdasdsdasdsa', '12312321321', '161347-QH2Q8VXU.png', '2021-02-08 16:13:47', '2021-02-08 16:13:47'),
(191, '224', 'asdadsd', 'asdsadsds', '12312321321', '161936-STV3KWMB.png', '2021-02-08 16:19:36', '2021-02-08 16:19:36'),
(192, '225', 'Janine', 'Santos', '09656888877', '171220-EIH05O8U.png', '2021-02-08 17:12:21', '2021-02-08 17:12:21');

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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `chat_conversation_messages`
--
ALTER TABLE `chat_conversation_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `chat_conversation_users`
--
ALTER TABLE `chat_conversation_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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
  MODIFY `company_address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `forgot_passwords`
--
ALTER TABLE `forgot_passwords`
  MODIFY `forgot_password_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `job_order_items`
--
ALTER TABLE `job_order_items`
  MODIFY `job_order_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `job_order_logs`
--
ALTER TABLE `job_order_logs`
  MODIFY `job_order_log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `job_order_requests`
--
ALTER TABLE `job_order_requests`
  MODIFY `job_order_request_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `notification_types`
--
ALTER TABLE `notification_types`
  MODIFY `notification_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `partner_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `product_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `token_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `user_profile_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
