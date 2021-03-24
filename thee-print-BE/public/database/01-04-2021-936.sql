-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 04, 2021 at 02:37 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, '085530-9M6WYWUU.png', '085530-3TO7R6LE.png', 'Hi, we areThee Print.', 'We make sure we achieve our customer\'s standard and satisfaction. Our expertise lies not only in using the latest technology in signage making, but, also in understanding the importance of effective signage and brand recognition.sssss', 'We deliver the best print services by providing a complete package in-terms of printing needs to maintain & escalate satisfied customers.', 'To be most recognized & trusted one stop shop supplier of printing needs by December 2024.', '2020-12-16 09:23:49', 'Romel Postrano', '2021-01-04 09:02:32');

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
(1, '062606-Y63SAPJ2.png', 'dasdsaasd122rerwrwedsadsada', '<p>12dsadasdewrwerwedasdasd</p>', '062606-SV2W9PUG.png', '21sdasdrerwersdasdas', '<p>dasdas223erwerdsadsada</p>', '062606-XRTD2GD3.png', '132213sadasdewrwedsdadas', '<p>23133dasdasrewrwersadsadas</p>', '062606-5LF9CTKW.png', '3123dsadasrewrewdsadsa', '<p>312321dsadsadrewrewrdsadsadas</p>', '2020-12-17 12:19:48', 'Romel Postrano', '2020-12-17 06:26:06');

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
(1, '081336-PILJ16U4.png', '081336-HXJ5EL5S.png', '081336-SAZFOUE3.png', '081336-NYW1QG3K.jpg', '081336-T1L0HV3F.png', 'Romel Postrano', '2020-12-17 14:44:22', '2020-12-17 08:13:36');

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
(1, '<p><strong>THEE PRINT INC. SECURITY</strong></p><p>Personal information provided on the website and online credit card transactions are transmitted through a secure server. We are committed to handling your personal information with high standards of information security. We take appropriate physical, electronic, and administrative steps to maintain the security and accuracy of personally identifiable information we collect, including limiting the number of people who have physical access to our database servers, as well as employing electronic security systems and password protections that guard against unauthorized access.</p><p>Our website uses encryption technology, like Secure Sockets Layer (SSL), to protect your personal information during data transport. SSL encrypts ordering information such as your name, address, and credit card number. Our Customer Care center and stores also operate over a private, secure network. Please note that email is not encrypted and is not considered to be a secure means of transmitting credit card information.</p><p><strong>THEE PRINT INC. PRIVACY POLICY</strong></p><p>To help us achieve our goal of providing the highest quality products and services, we use information from our interactions with you and other customers, as well as from other parties. Because we respect your privacy, we have implemented procedures to ensure that your personal information is handled in a safe, secure, and responsible manner. We have posted this privacy policy in order to explain our information collection practices and the choices you have about the way information is collected and used.</p><p>As we continue to develop the <strong>THEE PRINT INC.</strong> website and take advantage of advances in technology to improve the services we offer, this privacy policy likely will change. We therefore encourage you to refer to this policy on an ongoing basis so that you understand our current privacy policy.</p><p><strong>THE INFORMATION WE COLLECT</strong></p><p>Our customer’s welfare and privacy is of importance to us. You can opt to visit the <strong>THEE PRINT INC. </strong>platform and navigate anonymously. We will only collect information from you if you create an account with us. When you create a Thee Print Account, or otherwise provide us with your personal information through the Platform, the personal information we collect may include you’re:</p><p>Name</p><p>Delivery Address</p><p>Email Address</p><p>Contact Number</p><p>Mobile Number</p><p>Date of Birth</p><p>Gender</p><p>We can only collect your personal information if you voluntarily submit the information to us but if you choose not to submit your personal information to us or withdraw your consent to our use of your personal information, you may not be able to access all parts of this website or participate in all of its features, pricing, and product selection. You may access and update your personal information submitted to us at any time.</p><p>If you sign up to THEE PRINT INC. using your social media account, we may access information about you which you have voluntarily provided under your social media account and we will manage your personal data which we have collected in accordance with <strong>THEE PRINT INC</strong>. privacy policy.</p><p><strong>HOW WE USE THE INFORMATION WE COLLECT</strong></p><p>The personal information we collect from you will be used, or shared with third parties (including related companies, third party service providers, and third party sellers), for some or all of the following purposes:</p><p>Fulfillment and delivery of products purchased, and updating on the status thereof;</p><p>Processing of orders, including payment processing;</p><p>Providing of relevant product information, responding to queries and requests, and other customer support functions;</p><p>Preventing, detecting, and investigating disputes or fraud, and analyzing and managing commercial risks;</p><p>Analytics and tracking;</p><p>Conducting market research and surveys to enable <strong>THEE PRINT INC.</strong> to understand and determine customer preferences and demographics, to develop special offers, and marketing programs of products and services, and to improve customer experience;</p><p>Developing and providing additional products, services, and benefits, including promotions, loyalty and rewards programs;&nbsp;</p><p>Advertising and marketing products and services or relevant products and services from our preferred partners, administering contests, competitions and marketing campaigns;</p><p>Purposes which are reasonably related to the aforesaid;</p><p><strong>COLLECTION OF COMPUTER DATA</strong></p><p>Whenever you visit <strong>THEE PRINT INC.</strong> servers will automatically record information that your browser sends whenever you visit a website. This data may include:</p><p>Your computer\'s IP address</p><p>Browser type</p><p>Webpage you were visiting before you came to our Platform</p><p>The pages within the Platform which you visit</p><p>The time spent on those pages, items and information searched for on the Platform, access times and dates, and other statistics.</p><p>This information is collected for analysis and evaluation in order to help us improve the Platform and the services and products we provide.</p><p><strong>SECURITY</strong></p><p>We are committed to ensuring that your information is secure. In order to prevent unauthorized access or disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.</p><p><strong>THEE PRINT INC.</strong> secures all information collected. For your safety, kindly use unique numbers, letters and special characters as your account’s password and do not share your password to anyone. If you suspect that your privacy has been breached or your password has been compromised, immediately contact us through our customer service.</p><p><strong>OTHERS WITH WHOM WE SHARE YOUR INFORMATION</strong></p><p>Service Providers: We also may disclose information to outside companies that help us bring you the products and services we offer. For example, we may work with an outside company to: (a) manage a database of customer information; (b) assist us in distributing emails; (c) assist us with direct marketing and data collection; (d) provide us storage and analysis; (d) provide fraud prevention; and (e) provide other services designed to assist us in maximizing our business potential. We require that these outside companies agree to keep confidential all information we share with them and to use the information only to perform their obligations in our agreements with them.</p><p>Other Companies: We may provide information to carefully select outside companies when we believe their products or services may be of interest to you.</p><p>Business Transitions: We may transfer or share a copy of personal information about you in the event that <strong>THEE PRINT INC.</strong> or one of its properties, affiliates, or subsidiaries goes through a business transition, such as a merger, being acquired by another company, or selling a portion of its assets. You will be notified via email or prominent notice on our website prior to a change of ownership or control of your personal information, if your personal information will be used contrary to this policy. However, nothing in this Privacy Policy is intended to interfere with the ability of <strong>THEE PRINT INC.</strong> to transfer all or part of its business and/or assets to an affiliate or independent third party at any time, for any purpose, without any limitation whatsoever.</p><p><strong>THEE PRINT INC.</strong> specifically reserves the right to transfer or share a copy of personally identifiable information collected from its websites to the buyer of that portion of its business relating to that information.</p><p>Compliance With Law: We may provide access to information when legally required to do so, to cooperate with police investigations or other legal proceedings, to protect against misuse or unauthorized use of our website, to limit our legal liability, and to protect our rights or to protect the rights, property, or safety of visitors of this website or the public.</p><p><strong>THEE PRINT INC.</strong> partners with advertising companies to place our advertising on publisher websites on the Internet. These advertising companies collect anonymous information about your visits to our web site. This technology involves the use of third party cookies that allow them to develop personalized advertising so that it directly relates to offers that may be of interest to you. You may choose to opt-out of this service we have with our third-party advertising partner. We may also use <strong>THEE PRINT INC. </strong>cookies to provide similar enhanced online marketing to you based on your interests and preferences. You may also choose to opt out of these enhanced online marketing ads.</p><p><strong>YOU’RE CHOICES REGARDING USE OF THE INFORMATION WE COLLECT</strong></p><p>You have several choices regarding our handling of your nonpublic personally identifiable information.</p><p>Direct Mail or Telephone Marketing: If you shop at the <strong>THEE PRINT INC. </strong>stores and wish to be removed from the list of customers that receive direct mail or telemarketing calls, please send us a message to <strong>THEE PRINT INC.</strong> Contact Us page and state one of the following:</p><p>\"NO MAIL OFFERS\" (if you don\'t want to receive offers by mail);</p><p>\"NO PHONE OFFERS\" (if you don\'t want to receive offers by phone);</p><p>\"NO PHONE OR MAIL OFFERS\" (if you don\'t want to receive either).</p><p>Because customer lists often are prepared well in advance of an offering (sometimes a few months before the offer is made), you may continue to receive some offers after you send us a request not to use your information for specified marketing purposes. We appreciate your patience and understanding in giving us time to carry out your request.</p><p><strong>COOKIES, WEB BEACONS, AND HOW WE USE THEM</strong></p><p>A cookie is a small file which asks permission to be placed on your computer\'s hard drive. Once you agree, the file is added and the cookie helps analyze web traffic or lets you know when you visit a particular site. Cookies allow web applications to respond to you as an individual. The web application can tailor its operations to your needs, likes and dislikes by gathering and remembering information about your preferences.</p><p>We use traffic log cookies to identify which pages are being used. This helps us analyze data about web page traffic and improve our website in order to tailor it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system.</p><p>Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful and which you do not. A cookie in no way gives us access to your computer or any information about you, other than the data you choose to share with us. You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. This may prevent you from taking full advantage of the website.</p><p>A \"web beacon\" or \"pixel tag\" or \"clear gif\" is typically a one-pixel image, used to pass information from your computer or mobile device to a website.</p><p>We use cookies and web beacons to keep track of what you have in your shopping cart and to remember you when you return to the website as well as to identify the pages you click on during your visit to our site and the name of the website you visited immediately before clicking to the <strong>THEE PRINT INC.</strong> website. We use this information to improve our site design, product assortments, customer service, and special promotions. You can, of course, disable cookies and web beacons on your computer by indicating this in the preferences or options menus in your browser. However, it is possible that some parts of our website will not operate correctly if you disable cookies. We may also use web beacons, and other technologies, to help track whether our communications are reaching you, to measure their effectiveness, or to collect certain non-personal information about your computer, device, or browser in order to allow us to better design future communications to you.</p><p>We may contract with third parties who may use cookies and web beacons and collect information on our behalf or provide services such as credit card processing, shipping, promotional services, or data management. We call them our Customer Care Partners. These third parties are prohibited by our contract with them from sharing that information with anyone other than us or our other Customer Care Partners.</p><p><strong>ONLINE ACCOUNT REGISTRATION</strong></p><p>To make online shopping faster and easier, you may register on the <strong>THEE PRINT INC. </strong>website. As a registered customer, you only have to enter your shipping addresses and billing information once; they will be securely stored with us for your future use. Using your name and a password of your choice, you may access your account online at any time to add, delete, or change information. If you are using a public computer, we strongly encourage you to Sign Out when you finish shopping. Your information will still be stored with us but it will not be accessible to anyone else from that computer.</p><p><strong>EMAILS</strong></p><p>You will receive promotional emails from us only if you have asked to receive them. If you do not want to receive email from <strong>THEE PRINT INC.</strong> or its affiliates you can click on the \"Unsubscribe\" link at the bottom of any email communication sent by us. Please allow us 3 business days from when the request was received to complete the removal, as some of our promotions may already have been in process before you submitted your request.</p><p><strong>CHANGES TO THE PRIVACY POLICY</strong></p><p><strong>THEE PRINT INC.</strong> reserves the right to modify and change the Privacy Policy at any time. Any changes to this policy will be published on the Platform.</p><p><strong>CONTACTING THEE PRINT INC.</strong></p><p>If you have any queries, comments or concerns, or require any help, please feel free to contact us through our customer service at <strong>0977-849-3382 </strong>and email: <a href=\"mailto:info@theeprint.com.ph\"><strong>info@theeprint.com.ph</strong></a>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', 'romel', '2020-12-11 09:07:23', '2020-12-11 08:37:09');

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
(27, '031751-H2C3ZZOA.png', 'Large Format Printing', 'Magazines', '', '2020-12-21 06:47:41', '2020-12-22 03:17:51'),
(28, '064809-EA3T93DO.png', 'Large Format Printing', 'Bulletin Board', '', '2020-12-21 06:48:09', '2020-12-21 06:48:09'),
(29, '071134-POFILU1T.png', 'Digital Offset Printing', 'choyking', '', '2020-12-21 07:11:34', '2020-12-21 07:11:34'),
(30, '032733-07XY0C32.jpg', 'Digital Offset Printing', 'Playboy Magazine', '', '2020-12-22 02:28:33', '2020-12-22 03:27:33');

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
(1, '091006-Y8OLSGFF.png', '3423423', '<p class=\"fs-16 fw-400 col-9\" style=\"color: #2C2C39; margin-left: -14px;\">\r\n                    far far away, behind the word mountains, far from the countries\r\n                    Vokalia and Consonantia, there live the blind texts.\r\n                </p>\r\n                <div class=\"row\">\r\n                    <div class=\"col-md-5\">\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Vinyl Sticker</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Canvas</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Photopaper</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Backlit Film</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Clear Sticker</p>\r\n                    </div>    \r\n                    <div class=\"col-md-7\">\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Banner Cloth</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Sticker on Board</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Tarpaulin</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Perforated Sticker</p>\r\n                    </div>\r\n                </div>', '091135-J8AKSMI1.png', '4234234', '<p class=\"fs-16 fw-400 col-9\" style=\"color: #2C2C39; margin-left: -14px;\">\r\n                    far far away, behind the word mountains, far from the countries\r\n                    Vokalia and Consonantia, there live the blind texts.\r\n                </p>\r\n                <div class=\"row\">\r\n                    <div class=\"col-md-5\">\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #C0024A;\"></i-feather>Flyers</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #C0024A;\"></i-feather>Business Card</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #C0024A;\"></i-feather>Brochure</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #C0024A;\"></i-feather>Poster</p>\r\n                    </div>    \r\n\r\n                    <div class=\"col-md-7\">\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #C0024A;\"></i-feather>Invitation</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #C0024A;\"></i-feather>Satin Sticker</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #C0024A;\"></i-feather>Product Boxes</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #C0024A;\"></i-feather>Perforated Sticker</p>\r\n                    </div>\r\n                </div>', '091314-KS9YO0DB.png', '242342313', '<p>4234234234</p>', '2020-12-16 15:53:22', 'Romel Postrano', '2021-01-04 09:13:14');

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
(1, '<p><strong>THEE PRINT INC.</strong> operate this website <a href=\"http://www.theeprint.com.ph/\"><strong>www.theeprint.com.ph</strong></a><strong> . </strong>THEE PRINT INC. are hereinafter referred to as \"we\" or \"us\".</p><p>Please read these terms and conditions carefully before using this website. Your use of this website confirms your unconditional acceptance of the following terms and conditions. If you do not accept these terms and conditions, do not use this website.</p><p>&nbsp;</p><p><strong>PRODUCTS, CONTENT AND SPECIFICATIONS</strong></p><p>All features, content, specifications, products and prices of products and services described or depicted on this website are subject to change at any time without notice. Certain weights, measures and similar descriptions are approximate and are provided for convenience purposes only. We make all reasonable efforts to accurately display the attributes of our products, including the applicable colors; however, the actual color you see will depend on your computer system and we cannot guarantee that your computer will accurately display such colors. Unless otherwise stated, all product images are for illustration purposes only and therefore, may not include certain items as standard. The inclusion of any products or services in this website at a particular time does not imply or warrant that these products or services will be available at any time. It is your responsibility to ascertain and obey all applicable local and international laws (including minimum age requirements) in regard to the possession, use and sale of any item purchased from this website. By placing an order, you represent that the products ordered will be used only in a lawful manner.</p><p>&nbsp;</p><p><strong>ACCURACY OF INFORMATION</strong></p><p>We attempt to ensure that information on this website is complete, accurate and current. Despite our efforts, the information on this website may occasionally be inaccurate, incomplete or out of date. We make no representation as to the completeness, accuracy or validity of any information on this website. For example, products included on the website may be unavailable, may have different attributes than those listed, or may actually carry a different price than that stated on the website. In addition, we may make changes in information about price and availability without notice. While it is our practice to confirm orders by email, the receipt of an email order confirmation does not constitute our acceptance of an order or our confirmation of an offer to sell a product or service. We reserve the right, without prior notice, to limit the order quantity on any product or service and/or to refuse service to any customer. We also may require verification of information prior to the acceptance and/or shipment of any order.</p><p>&nbsp;</p><p><strong>USE OF THIS WEBSITE</strong></p><p>The website design and all text, graphics, information, content, and other material displayed on or that can be downloaded from this website are either the property of, or used with permission by, <strong>THEE PRINT INC.</strong> and are protected by copyright, trademark and other laws and may not be used except as permitted in these Terms and Conditions or with the prior written permission of the owner of such material. You may not modify the information or materials located on this website in any way or reproduce or publicly display, perform, or distribute or otherwise use any such materials for any public or commercial purpose. Any unauthorized use of any such information or materials may violate copyright laws, trademark laws, laws of privacy and publicity, and other laws and regulations. You are responsible for maintaining the confidentiality of your account information and password and for restricting access to such information and to your computer. You agree to accept responsibility for all activities that occur under your account or password.</p><p>&nbsp;</p><p><strong>TRADEMARKS</strong></p><p>Certain trademarks, trade names, service marks and logos used or displayed on this website are registered and unregistered trademarks, trade names and service marks of <strong>THEE PRINT INC.</strong> Other trademarks, trade names and service marks used or displayed on this website are the registered and unregistered trademarks, trade names and service marks of their respective owners. Nothing contained on this website grants or should be construed as granting, by implication, estoppel, or otherwise, any license or right to use any trademarks, trade names, service marks or logos displayed on this website without our written permission or the written permission of such third party owner.</p><p>&nbsp;</p><p><strong>LINKING TO THIS WEBSITE</strong></p><p>Any permitted links to this website must comply will all applicable laws, rule and regulations.<br>&nbsp;</p><p><strong>THIRD PARTY LINKS</strong></p><p>From time to time, this website may contain links to websites that are not owned, operated or controlled by us or our affiliates. All such links are provided solely as a convenience to you. If you use these links, you will leave this website. Neither we nor any of our affiliates are responsible for any content, materials or other information located on or accessible from any other website. Neither we nor any of our affiliates endorse, guarantee, or make any representations or warranties regarding any other website, or any content, materials or other information located or accessible from such websites, or the results that you may obtain from using such websites. If you decide to access any other website linked to or from this website, you do so entirely at your own risk.</p><p>&nbsp;</p><p><strong>INAPPROPRIATE MATERIAL</strong></p><p>You are prohibited from posting or transmitting any unlawful, threatening, defamatory, libelous, obscene, pornographic or profane material or any material that could constitute or encourage conduct that would be considered a criminal offence or give rise to civil liability, or otherwise violate any law. In addition to any remedies that we may have at law or in equity, if we reasonably determine that you have violated or are likely to violate the foregoing prohibitions, we may take any action we reasonably deem necessary to cure or prevent the violation, including without limitation, the immediate removal from this website of the related materials.</p><p>&nbsp;</p><p><strong>USER INFORMATION</strong></p><p>Other than personally identifiable information, which is subject to this website’s Privacy Policy, any material, information, suggestions, ideas, concepts, know-how, techniques, questions, comments or other communication you transmit or post to this website in any manner is and will be considered non-confidential and non-proprietary. We shall have no obligation to use, return, review, or respond to any customer communication. We will have no liability related to the content of any such customer communication, whether or not arising under the laws of copyright, libel, privacy, obscenity, or otherwise. We retain the right to remove any or all User Communications that includes any material we deem inappropriate or unacceptable.</p><p>&nbsp;</p><p><strong>DISCLAIMERS</strong></p><p>Your use of this website is at your risk. The materials and services provided in connection with this website are provided \"as is\" without any warranties of any kind including warranties of merchantability, fitness for a particular purpose, or non-infringement of intellectual property. Neither we nor any of our affiliates warrant the accuracy or completeness of the materials or services on or through this website. The materials and services on or through this website may be out of date, and neither we nor any of their affiliates make any commitment or assumes any duty to update such materials or services. The foregoing exclusions of implied warranties do not apply to the extent prohibited by law. Please refer to your local laws for any such prohibitions.</p><p>&nbsp;</p><p><strong>LIMITATIONS OF LIABILITY</strong></p><p>We assume no responsibility, and shall not be liable for, any damages to, or viruses that may infect, your computer, telecommunication equipment, or other property caused by or arising from your access to, use of, or browsing this website or your downloading of any materials, from this website. In no event will we, our respective officers, directors, employees, shareholders, affiliates, parent corporations, agents, successors, assigns, retail partners nor any party involved in the creation, production or transmission of this website be liable to any party for any indirect, special, punitive, incidental or consequential damages (including, without limitation, those resulting from lost profits, lost data or business interruption) arising out of the use, inability to use, or the results of use of this website, any websites linked to this website, or the materials, information or services contained at any or all such websites, whether based on warranty, contract, tort or any other legal theory and whether or not advised of the possibility of such damages. The foregoing limitations of liability do not apply to the extent prohibited by law. Please refer to your local laws for any such prohibitions.</p><p>&nbsp;</p><p><strong>REVISIONS TO THESE TERMS AND CONDITIONS</strong></p><p>We may revise these Terms and Conditions at any time and from time to time by updating this posting. You should visit this page from time to time to review the then current Terms and Conditions because they are binding on you. Certain provisions of these Terms and Conditions may be superseded by expressly designated legal notices or terms located on particular pages at this website.</p><p>&nbsp;</p><p><strong>CHOICE OF LAW; JURISDICTION</strong></p><p>These Terms and Conditions supersede any other agreement between you and us to the extent necessary to resolve any inconsistency or ambiguity between them. These Terms and Conditions will be governed by and construed in accordance with the laws of the Philippines, without giving effect to any principles of conflicts of laws. A printed version of these Terms and Conditions shall be admissible in judicial and administrative proceedings based upon or relating to these Terms and Conditions to the same extent and subject to the same conditions as other business documents and records originally generated and maintained in printed form.</p><p>&nbsp;</p><p><strong>TERMINATION</strong></p><p>You or we may suspend or terminate your account or your use of this website at any time, for any reason or for no reason. You are personally liable for any orders that you place or charges that you incur prior to termination. We reserve the right to change, suspend, or discontinue all or any aspect of this website at any time without notice.<br><br>&nbsp;</p>', 'romel', '2020-12-11 11:05:16', '2020-12-11 08:42:51');

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
(61, '58', 0, 'asddas', 0, 'asdas', '', '', '', '', 'asdas', 'asd', '12312313123', '2020-12-20 16:42:23', '2020-12-20 16:42:23'),
(62, '62', 0, 'asdadasds', 1, 'Test', '', '', '', '', 'asdasd', 'asdsadsd', '12312321321', '2020-12-26 04:27:34', '2020-12-26 04:27:34'),
(63, '63', 0, 'asdasdasd', 1, 'asdad', '', '', '', '', 'asdas', 'asdasdsd', '12312313221', '2020-12-26 21:14:15', '2020-12-26 21:14:15'),
(64, '64', 0, 'asdasdas', 1, 'asdasds', '', '', '', '', 'asdas', 'asdas', '12312313123', '2020-12-26 22:06:47', '2020-12-26 22:06:47');

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
  `job_order_request_remark` text COLLATE utf8_unicode_ci NOT NULL,
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
  `job_order_total` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notification_type`, `notification_sender`, `notification_receiver`, `notification_data`, `notification_read_at`, `created_at`, `updated_at`) VALUES
(58, '7', '115', '1', '', '0000-00-00 00:00:00', '2020-12-26 00:00:00', '2020-12-26 22:08:20'),
(59, '1', '64', '1', '', '0000-00-00 00:00:00', '2020-12-26 00:00:00', '2020-12-26 22:08:47'),
(60, '2', '64', '1', '', '0000-00-00 00:00:00', '2020-12-26 00:00:00', '2020-12-26 22:09:19'),
(61, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-26 00:00:00', '2020-12-26 22:09:32'),
(62, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-26 00:00:00', '2020-12-26 22:12:32'),
(63, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-26 00:00:00', '2020-12-26 22:13:28'),
(64, '4', '1', '64', 'You job order has been delivered', '0000-00-00 00:00:00', '2020-12-26 00:00:00', '2020-12-26 22:13:46'),
(65, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-26 00:00:00', '2020-12-26 22:13:46'),
(66, '8', '1', '64', '', '0000-00-00 00:00:00', '2020-12-26 00:00:00', '2020-12-26 22:16:12'),
(67, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-26 00:00:00', '2020-12-26 22:17:33'),
(68, '8', '1', '64', '', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 16:55:57'),
(69, '8', '1', '64', '', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 16:55:58'),
(70, '4', '1', '64', 'You job order has been delivered', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:28:47'),
(71, '4', '1', '64', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:28:47'),
(72, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:29:10'),
(73, '4', '1', '64', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:29:10'),
(74, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:29:23'),
(75, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:29:23'),
(76, '4', '1', '64', 'You job order has been delivered', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:32:28'),
(77, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:32:28'),
(78, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:33:26'),
(79, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:33:26'),
(80, '4', '1', '64', 'You job order has been delivered', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:33:34'),
(81, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:33:34'),
(82, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:33:39'),
(83, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:33:39'),
(84, '4', '1', '64', 'You job order has been delivered', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:36:32'),
(85, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:36:32'),
(86, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:36:38'),
(87, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:36:38'),
(88, '4', '1', '64', 'You job order has been delivered', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:38:31'),
(89, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:38:31'),
(90, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:38:55'),
(91, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:38:55'),
(92, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:39:34'),
(93, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:39:34'),
(94, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:39:39'),
(95, '4', '1', '64', 'You job order has been delivered', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:39:47'),
(96, '4', '1', '64', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:39:47'),
(97, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:40:17'),
(98, '4', '1', '64', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:40:17'),
(99, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:43:21'),
(100, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:43:21'),
(101, '4', '1', '64', 'You job order has been delivered', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:43:27'),
(102, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:43:27'),
(103, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:43:33'),
(104, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:43:33'),
(105, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:43:37'),
(106, '4', '1', '64', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:43:37'),
(107, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:44:25'),
(108, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:44:25'),
(109, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:46:37'),
(110, '4', '1', '64', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:46:37'),
(111, '4', '1', '64', 'You job order has been delivered', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:46:47'),
(112, '4', '1', '64', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:46:47'),
(113, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:47:05'),
(114, '4', '1', '64', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:47:05'),
(115, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:47:10'),
(116, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:47:10'),
(117, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:47:14'),
(118, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:47:14'),
(119, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:47:22'),
(120, '4', '1', '64', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:47:22'),
(121, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:47:28'),
(122, '4', '1', '64', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:47:28'),
(123, '4', '1', '64', 'You job order has been delivered', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:47:49'),
(124, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:47:50'),
(125, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:48:07'),
(126, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:48:07'),
(127, '4', '1', '64', 'You job order has been delivered', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:54:20'),
(128, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:54:20'),
(129, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:54:30'),
(130, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 17:54:30'),
(131, '4', '1', '64', 'You job order has been delivered', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 20:21:51'),
(132, '4', '1', '64', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 20:21:51'),
(133, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 20:27:17'),
(134, '4', '1', '64', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 20:27:17'),
(135, '4', '1', '64', 'You job order has been delivered', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 20:27:30'),
(136, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 20:27:30'),
(137, '3', '1', '64', 'Your job order is now being processed', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 20:27:36'),
(138, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 20:27:36'),
(139, '4', '1', '64', 'You job order has been delivered', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 20:27:44'),
(140, '4', '1', '64', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 20:27:44'),
(141, '4', '1', '64', 'You job order has been delivered', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 20:31:36'),
(142, '4', '1', '64', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 20:31:36'),
(143, '4', '1', '64', 'You job order has been delivered', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 20:31:48'),
(144, '4', '1', '64', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2020-12-27 00:00:00', '2020-12-27 20:31:48'),
(145, '1', '64', '1', '', '0000-00-00 00:00:00', '2020-12-28 00:00:00', '2020-12-28 09:18:08'),
(146, '2', '64', '1', '', '0000-00-00 00:00:00', '2020-12-28 00:00:00', '2020-12-28 09:18:25'),
(147, '1', '64', '1', '', '0000-00-00 00:00:00', '2020-12-29 00:00:00', '2020-12-29 16:50:21'),
(148, '2', '64', '1', '', '0000-00-00 00:00:00', '2020-12-29 00:00:00', '2020-12-29 16:55:58'),
(149, '1', '64', '1', '', '0000-00-00 00:00:00', '2020-12-29 00:00:00', '2020-12-29 16:56:15'),
(150, '2', '64', '1', '', '0000-00-00 00:00:00', '2020-12-29 00:00:00', '2020-12-29 16:56:25'),
(151, '1', '64', '1', '', '0000-00-00 00:00:00', '2020-12-29 00:00:00', '2020-12-29 16:56:48'),
(152, '2', '64', '1', '', '0000-00-00 00:00:00', '2020-12-29 00:00:00', '2020-12-29 16:56:56');

-- --------------------------------------------------------

--
-- Table structure for table `notification_types`
--

CREATE TABLE `notification_types` (
  `notification_type_id` int(10) UNSIGNED NOT NULL,
  `notification_type_description` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `notification_mesage` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notification_types`
--

INSERT INTO `notification_types` (`notification_type_id`, `notification_type_description`, `notification_mesage`, `created_at`, `updated_at`) VALUES
(1, 'New Price Check', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'New Job Order', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Job Order is Being Processed', 'Your job order is now being processed', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Job Order is Delivered', 'You job order has been delivered', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Pending Payment', 'Your payment for job order is still pending. Kindly settle the payment on or before due date.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Paid', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'New Login', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Decline Order', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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

-- --------------------------------------------------------

--
-- Table structure for table `Sheet1`
--

CREATE TABLE `Sheet1` (
  `A` int(2) DEFAULT NULL,
  `B` varchar(7) DEFAULT NULL,
  `C` int(1) DEFAULT NULL,
  `D` varchar(22) DEFAULT NULL,
  `E` varchar(24) DEFAULT NULL,
  `F` int(1) DEFAULT NULL,
  `G` int(1) DEFAULT NULL,
  `H` varchar(19) DEFAULT NULL,
  `I` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Sheet1`
--

INSERT INTO `Sheet1` (`A`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`) VALUES
(1, 'TPECO01', 1, 'GENERIC STICKER', 'OUTDOOR WHITE BACKING', 1, 0, '2020-12-26 03:59:21', '2020-12-26 03:59:21'),
(2, 'TPECO02', 1, 'GENERIC STICKER', 'OUTDOOR BLACK BACKING', 1, 0, '2020-12-26 03:59:21', '2020-12-27 03:59:21'),
(3, 'TPECO03', 1, 'PREMIUM STICKER', 'OUTDOOR WHITE BACKING', 1, 0, '2020-12-26 03:59:21', '2020-12-28 03:59:21'),
(4, 'TPECO04', 1, 'PREMIUM STICKER GB', 'OUTDOOR GRAY BACKING', 1, 0, '2020-12-27 03:59:21', '2020-12-29 03:59:21'),
(5, 'TPECO05', 1, 'PREMIUM STICKER BB', 'OUTDOOR BLACK BACKING', 1, 0, '2020-12-28 03:59:21', '2020-12-30 03:59:21'),
(6, 'TPECO06', 1, 'CLEAR STICKER', 'TRANSPARENT STICKER', 1, 0, '2020-12-29 03:59:21', '2020-12-31 03:59:21'),
(7, 'TPECO07', 1, 'ULTRACLEAR STICKER', 'HIGHTRANSPARENT STICKER', 1, 0, '2020-12-30 03:59:21', '2021-01-01 03:59:21'),
(8, 'TPECO08', 1, 'BACKLIT STICKER', 'LIGHTED STICKER', 1, 0, '2020-12-31 03:59:21', '2021-01-02 03:59:21'),
(9, 'TPECO09', 1, 'PERFORATED STICKER', 'ONE WAY TRANS PERFORATED', 1, 0, '2021-01-01 03:59:21', '2021-01-03 03:59:21'),
(10, 'TPECO10', 1, 'REFELECTORIZED STICKER', 'HONEYCOMB REFELECTOR', 1, 0, '2021-01-02 03:59:21', '2021-01-04 03:59:21'),
(11, 'TPECO12', 1, 'PHOTOPAPER', 'PHOTOPAPER', 1, 0, '2021-01-03 03:59:21', '2021-01-05 03:59:21'),
(12, 'TPECO13', 1, 'FLOOR STICKER GENERIC', 'THIN LAMINATE', 1, 0, '2021-01-04 03:59:21', '2021-01-06 03:59:21'),
(13, 'TPECO14', 1, 'FLOOR STICKER PREMIUM', 'THICK LAMINATE', 1, 0, '2021-01-05 03:59:21', '2021-01-07 03:59:21');

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
(1, 'kaelreyes', 'kaelreyes12@hotmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '1', '2020-12-29 05:13:09', '1', 1, 1, '2020-12-03 16:18:50', '2020-12-29 17:13:09');

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
(1, '1', 'Michael', 'Reyes', '', '011009-O8IDD45D.png', '0000-00-00 00:00:00', '2020-12-03 08:18:50');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `cms_about_thee_prints`
--
ALTER TABLE `cms_about_thee_prints`
  MODIFY `cms_about_thee_print_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_core_values`
--
ALTER TABLE `cms_core_values`
  MODIFY `cms_core_values_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_featured_partners`
--
ALTER TABLE `cms_featured_partners`
  MODIFY `cms_featured_partners_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_privacies`
--
ALTER TABLE `cms_privacies`
  MODIFY `privacy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_products`
--
ALTER TABLE `cms_products`
  MODIFY `cms_products_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `company_address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `forgot_passwords`
--
ALTER TABLE `forgot_passwords`
  MODIFY `forgot_password_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `job_order_items`
--
ALTER TABLE `job_order_items`
  MODIFY `job_order_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `job_order_logs`
--
ALTER TABLE `job_order_logs`
  MODIFY `job_order_log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `job_order_requests`
--
ALTER TABLE `job_order_requests`
  MODIFY `job_order_request_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

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
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `notification_types`
--
ALTER TABLE `notification_types`
  MODIFY `notification_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `partner_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `product_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `token_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `user_profile_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
