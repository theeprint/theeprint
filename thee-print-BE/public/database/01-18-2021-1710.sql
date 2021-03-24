-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 18, 2021 at 05:10 PM
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
-- Database: `theeprin_staging`
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
(1, '205909-VX5VPSBS.png', '205909-LSR2OMOO.png', 'Hi, we are Thee Print. ', 'We make sure we achieve our customer\'s standard and satisfaction. Our expertise lies not only in using the latest technology in signage making, but, also in understanding the importance of effective signage and brand recognition. ', 'We deliver the best print services by providing a complete package in-terms of printing needs to maintain & escalate satisfied customers. ', 'To be most recognized & trusted one stop shop supplier of printing needs by December 2024.', '2020-12-16 09:23:49', '1', '2021-01-18 14:40:17');

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
(1, '111010-N2Y4W1OK.png', 'Innovative', '<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>', '111010-DWITCL1T.png', 'Malasakit', '<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>', '111010-GCEFEYJH.png', 'Professionalism', '<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>', '111010-ON8OU1MG.png', 'Client Focus', '<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>', '2020-12-17 12:19:48', '1', '2021-01-18 11:24:30');

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
(1, '134306-U6OPW0G1.png', '134306-KC9306YU.png', '134306-L0IMPUWI.png', '134306-CVHU5F7N.png', '134306-YSUFKHFJ.png', '1', '2020-12-17 14:44:22', '2021-01-18 13:43:06');

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
(1, '<p><strong>THEE PRINT INC. </strong><i><strong>SECURITY</strong></i></p><p>Personal information provided on the website and online credit card transactions are transmitted through a secure server. We are committed to handling your personal information with high standards of information security. We take appropriate physical, electronic, and administrative steps to maintain the security and accuracy of personally identifiable information we collect, including limiting the number of people who have physical access to our database servers, as well as employing electronic security systems and password protections that guard against unauthorized access.</p><p>Our website uses encryption technology, like Secure Sockets Layer (SSL), to protect your personal information during data transport. SSL encrypts ordering information such as your name, address, and credit card number. Our Customer Care center and stores also operate over a private, secure network. Please note that email is not encrypted and is not considered to be a secure means of transmitting credit card information.</p><p><strong>THEE PRINT INC. PRIVACY POLICY</strong></p><p>To help us achieve our goal of providing the highest quality products and services, we use information from our interactions with you and other customers, as well as from other parties. Because we respect your privacy, we have implemented procedures to ensure that your personal information is handled in a safe, secure, and responsible manner. We have posted this privacy policy in order to explain our information collection practices and the choices you have about the way information is collected and used.</p><p>As we continue to develop the <strong>THEE PRINT INC.</strong> website and take advantage of advances in technology to improve the services we offer, this privacy policy likely will change. We therefore encourage you to refer to this policy on an ongoing basis so that you understand our current privacy policy.</p><p><strong>THE INFORMATION WE COLLECT</strong></p><p>Our customer’s welfare and privacy is of importance to us. You can opt to visit the <strong>THEE PRINT INC. </strong>platform and navigate anonymously. We will only collect information from you if you create an account with us. When you create a Thee Print Account, or otherwise provide us with your personal information through the Platform, the personal information we collect may include you’re:</p><p>Name</p><p>Delivery Address</p><p>Email Address</p><p>Contact Number</p><p>Mobile Number</p><p>Date of Birth</p><p>Gender</p><p>We can only collect your personal information if you voluntarily submit the information to us but if you choose not to submit your personal information to us or withdraw your consent to our use of your personal information, you may not be able to access all parts of this website or participate in all of its features, pricing, and product selection. You may access and update your personal information submitted to us at any time.</p><p>If you sign up to THEE PRINT INC. using your social media account, we may access information about you which you have voluntarily provided under your social media account and we will manage your personal data which we have collected in accordance with <strong>THEE PRINT INC</strong>. privacy policy.</p><p><strong>HOW WE USE THE INFORMATION WE COLLECT</strong></p><p>The personal information we collect from you will be used, or shared with third parties (including related companies, third party service providers, and third party sellers), for some or all of the following purposes:</p><p>Fulfillment and delivery of products purchased, and updating on the status thereof;</p><p>Processing of orders, including payment processing;</p><p>Providing of relevant product information, responding to queries and requests, and other customer support functions;</p><p>Preventing, detecting, and investigating disputes or fraud, and analyzing and managing commercial risks;</p><p>Analytics and tracking;</p><p>Conducting market research and surveys to enable <strong>THEE PRINT INC.</strong> to understand and determine customer preferences and demographics, to develop special offers, and marketing programs of products and services, and to improve customer experience;</p><p>Developing and providing additional products, services, and benefits, including promotions, loyalty and rewards programs;&nbsp;</p><p>Advertising and marketing products and services or relevant products and services from our preferred partners, administering contests, competitions and marketing campaigns;</p><p>Purposes which are reasonably related to the aforesaid;</p><p><strong>COLLECTION OF COMPUTER DATA</strong></p><p>Whenever you visit <strong>THEE PRINT INC.</strong> servers will automatically record information that your browser sends whenever you visit a website. This data may include:</p><p>Your computer\'s IP address</p><p>Browser type</p><p>Webpage you were visiting before you came to our Platform</p><p>The pages within the Platform which you visit</p><p>The time spent on those pages, items and information searched for on the Platform, access times and dates, and other statistics.</p><p>This information is collected for analysis and evaluation in order to help us improve the Platform and the services and products we provide.</p><p><strong>SECURITY</strong></p><p>We are committed to ensuring that your information is secure. In order to prevent unauthorized access or disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.</p><p><strong>THEE PRINT INC.</strong> secures all information collected. For your safety, kindly use unique numbers, letters and special characters as your account’s password and do not share your password to anyone. If you suspect that your privacy has been breached or your password has been compromised, immediately contact us through our customer service.</p><p><strong>OTHERS WITH WHOM WE SHARE YOUR INFORMATION</strong></p><p>Service Providers: We also may disclose information to outside companies that help us bring you the products and services we offer. For example, we may work with an outside company to: (a) manage a database of customer information; (b) assist us in distributing emails; (c) assist us with direct marketing and data collection; (d) provide us storage and analysis; (d) provide fraud prevention; and (e) provide other services designed to assist us in maximizing our business potential. We require that these outside companies agree to keep confidential all information we share with them and to use the information only to perform their obligations in our agreements with them.</p><p>Other Companies: We may provide information to carefully select outside companies when we believe their products or services may be of interest to you.</p><p>Business Transitions: We may transfer or share a copy of personal information about you in the event that <strong>THEE PRINT INC.</strong> or one of its properties, affiliates, or subsidiaries goes through a business transition, such as a merger, being acquired by another company, or selling a portion of its assets. You will be notified via email or prominent notice on our website prior to a change of ownership or control of your personal information, if your personal information will be used contrary to this policy. However, nothing in this Privacy Policy is intended to interfere with the ability of <strong>THEE PRINT INC.</strong> to transfer all or part of its business and/or assets to an affiliate or independent third party at any time, for any purpose, without any limitation whatsoever.</p><p><strong>THEE PRINT INC.</strong> specifically reserves the right to transfer or share a copy of personally identifiable information collected from its websites to the buyer of that portion of its business relating to that information.</p><p>Compliance With Law: We may provide access to information when legally required to do so, to cooperate with police investigations or other legal proceedings, to protect against misuse or unauthorized use of our website, to limit our legal liability, and to protect our rights or to protect the rights, property, or safety of visitors of this website or the public.</p><p><strong>THEE PRINT INC.</strong> partners with advertising companies to place our advertising on publisher websites on the Internet. These advertising companies collect anonymous information about your visits to our web site. This technology involves the use of third party cookies that allow them to develop personalized advertising so that it directly relates to offers that may be of interest to you. You may choose to opt-out of this service we have with our third-party advertising partner. We may also use <strong>THEE PRINT INC. </strong>cookies to provide similar enhanced online marketing to you based on your interests and preferences. You may also choose to opt out of these enhanced online marketing ads.</p><p><strong>YOU’RE CHOICES REGARDING USE OF THE INFORMATION WE COLLECT</strong></p><p>You have several choices regarding our handling of your nonpublic personally identifiable information.</p><p>Direct Mail or Telephone Marketing: If you shop at the <strong>THEE PRINT INC. </strong>stores and wish to be removed from the list of customers that receive direct mail or telemarketing calls, please send us a message to <strong>THEE PRINT INC.</strong> Contact Us page and state one of the following:</p><p>\"NO MAIL OFFERS\" (if you don\'t want to receive offers by mail);</p><p>\"NO PHONE OFFERS\" (if you don\'t want to receive offers by phone);</p><p>\"NO PHONE OR MAIL OFFERS\" (if you don\'t want to receive either).</p><p>Because customer lists often are prepared well in advance of an offering (sometimes a few months before the offer is made), you may continue to receive some offers after you send us a request not to use your information for specified marketing purposes. We appreciate your patience and understanding in giving us time to carry out your request.</p><p><strong>COOKIES, WEB BEACONS, AND HOW WE USE THEM</strong></p><p>A cookie is a small file which asks permission to be placed on your computer\'s hard drive. Once you agree, the file is added and the cookie helps analyze web traffic or lets you know when you visit a particular site. Cookies allow web applications to respond to you as an individual. The web application can tailor its operations to your needs, likes and dislikes by gathering and remembering information about your preferences.</p><p>We use traffic log cookies to identify which pages are being used. This helps us analyze data about web page traffic and improve our website in order to tailor it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system.</p><p>Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful and which you do not. A cookie in no way gives us access to your computer or any information about you, other than the data you choose to share with us. You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. This may prevent you from taking full advantage of the website.</p><p>A \"web beacon\" or \"pixel tag\" or \"clear gif\" is typically a one-pixel image, used to pass information from your computer or mobile device to a website.</p><p>We use cookies and web beacons to keep track of what you have in your shopping cart and to remember you when you return to the website as well as to identify the pages you click on during your visit to our site and the name of the website you visited immediately before clicking to the <strong>THEE PRINT INC.</strong> website. We use this information to improve our site design, product assortments, customer service, and special promotions. You can, of course, disable cookies and web beacons on your computer by indicating this in the preferences or options menus in your browser. However, it is possible that some parts of our website will not operate correctly if you disable cookies. We may also use web beacons, and other technologies, to help track whether our communications are reaching you, to measure their effectiveness, or to collect certain non-personal information about your computer, device, or browser in order to allow us to better design future communications to you.</p><p>We may contract with third parties who may use cookies and web beacons and collect information on our behalf or provide services such as credit card processing, shipping, promotional services, or data management. We call them our Customer Care Partners. These third parties are prohibited by our contract with them from sharing that information with anyone other than us or our other Customer Care Partners.</p><p><strong>ONLINE ACCOUNT REGISTRATION</strong></p><p>To make online shopping faster and easier, you may register on the <strong>THEE PRINT INC. </strong>website. As a registered customer, you only have to enter your shipping addresses and billing information once; they will be securely stored with us for your future use. Using your name and a password of your choice, you may access your account online at any time to add, delete, or change information. If you are using a public computer, we strongly encourage you to Sign Out when you finish shopping. Your information will still be stored with us but it will not be accessible to anyone else from that computer.</p><p><strong>EMAILS</strong></p><p>You will receive promotional emails from us only if you have asked to receive them. If you do not want to receive email from <strong>THEE PRINT INC.</strong> or its affiliates you can click on the \"Unsubscribe\" link at the bottom of any email communication sent by us. Please allow us 3 business days from when the request was received to complete the removal, as some of our promotions may already have been in process before you submitted your request.</p><p><strong>CHANGES TO THE PRIVACY POLICY</strong></p><p><strong>THEE PRINT INC.</strong> reserves the right to modify and change the Privacy Policy at any time. Any changes to this policy will be published on the Platform.</p><p><strong>CONTACTING THEE PRINT INC.</strong></p><p>If you have any queries, comments or concerns, or require any help, please feel free to contact us through our customer service at <strong>0977-849-3382 </strong>and email: <a href=\"mailto:info@theeprint.com.ph\"><strong>info@theeprint.com.ph</strong></a>&nbsp;</p><p>asasdsadsad</p>', '136', '2020-12-11 09:07:23', '2021-01-07 14:16:42');

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
(27, '081944-ZBPU5RDM.png', 'Large Format Printing', 'Magazines', '1', '2020-12-21 06:47:41', '2021-01-05 08:19:44'),
(31, '134929-34F5KN9T.png', 'Large Format Printing', 'Paint', '1', '2021-01-04 13:48:13', '2021-01-11 11:20:03'),
(32, '153722-FCTZVFV1.png', 'Installation', 'Bulletin Board', '1', '2021-01-04 15:37:22', '2021-01-11 11:20:18'),
(33, '174549-PQXY1C6E.png', 'Large Format Printing', 'Tarpaulin', '1', '2021-01-04 17:43:21', '2021-01-11 11:20:30'),
(34, '175731-12TST981.png', 'Installation', 'Banner', '1', '2021-01-04 17:57:31', '2021-01-11 11:20:48'),
(35, '103941-NVI2LVF3.png', 'Digital Offset Printing', 'Mcdo', '1', '2021-01-05 10:39:41', '2021-01-05 10:39:41');

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
(1, '104504-63DN3NKB.png', 'Large format printing', '<p>far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p><p>Vinyl Sticker</p><p>Canvas</p><p>Photopaper</p><p>Backlit Film</p><p>Clear Sticker</p><p>Banner Cloth</p><p>Sticker on Board</p><p>Tarpaulin</p><p>Perforated Sticker</p>', '104504-N93KEKP3.png', 'Digital offset printing', '<p>far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p><p>Flyers</p><p>Business Card</p><p>Brochure</p><p>Poster</p><p>Invitation</p><p>Satin Sticker</p><p>Product Boxes</p><p>Perforated Sticker</p>', '104504-51N0GC5R.png', 'Installation', '<p class=\"fs-16 fw-400 col-9\" style=\"color: #2C2C39; margin-left: -14px;\">\r\n                    Far far away, behind the word mountains, far from the countries\r\n                    Vokalia and Consonantia, there live the blind texts. Separated they\r\n                    live in Bookmarksgrove right at the coast of the Semantics.\r\n                </p>', '2020-12-16 15:53:22', '1', '2021-01-18 10:45:03');

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
(1, '<p><i><strong>THEE PRINT INC</strong></i><strong>.</strong> operate this website <a href=\"http://www.theeprint.com.ph/\"><strong>www.theeprint.com.ph</strong></a><strong> . </strong>THEE PRINT INC. are hereinafter referred to as \"we\" or \"us\".</p><p><strong>Please read these terms a</strong>nd conditions carefully before using this website. Your use of this website confirms your unconditional acceptance of the following terms and conditions. If you do not accept these terms and conditions, do not use this website.</p><p>&nbsp;</p><p><strong>PRODUCTS, CONTENT AND </strong><i><strong>SPECIFICATIONS</strong></i></p><p>All features, content, specifications, products and prices of products and services described or depicted on this website are subject to change at any time without notice. Certain weights, measures and similar descriptions are approximate and are provided for convenience purposes only. We make all reasonable efforts to accurately display the attributes of our products, including the applicable colors; however, the actual color you see will depend on your computer system and we cannot guarantee that your computer will accurately display such colors. Unless otherwise stated, all product images are for illustration purposes only and therefore, may not include certain items as standard. The inclusion of any products or services in this website at a particular time does not imply or warrant that these products or services will be available at any time. It is your responsibility to ascertain and obey all applicable local and international laws (including minimum age requirements) in regard to the possession, use and sale of any item purchased from this website. By placing an order, you represent that the products ordered will be used only in a lawful manner.</p><p>&nbsp;</p><p><strong>ACCURACY OF INFORMATION</strong></p><p>We attempt to ensure that information on this website is complete, accurate and current. Despite our efforts, the information on this website may occasionally be inaccurate, incomplete or out of date. We make no representation as to the completeness, accuracy or validity of any information on this website. For example, products included on the website may be unavailable, may have different attributes than those listed, or may actually carry a different price than that stated on the website. In addition, we may make changes in information about price and availability without notice. While it is our practice to confirm orders by email, the receipt of an email order confirmation does not constitute our acceptance of an order or our confirmation of an offer to sell a product or service. We reserve the right, without prior notice, to limit the order quantity on any product or service and/or to refuse service to any customer. We also may require verification of information prior to the acceptance and/or shipment of any order.</p><p>&nbsp;</p><p><strong>USE OF THIS WEBSITE</strong></p><p>The website design and all text, graphics, information, content, and other material displayed on or that can be downloaded from this website are either the property of, or used with permission by, <strong>THEE PRINT INC.</strong> and are protected by copyright, trademark and other laws and may not be used except as permitted in these Terms and Conditions or with the prior written permission of the owner of such material. You may not modify the information or materials located on this website in any way or reproduce or publicly display, perform, or distribute or otherwise use any such materials for any public or commercial purpose. Any unauthorized use of any such information or materials may violate copyright laws, trademark laws, laws of privacy and publicity, and other laws and regulations. You are responsible for maintaining the confidentiality of your account information and password and for restricting access to such information and to your computer. You agree to accept responsibility for all activities that occur under your account or password.</p><p>&nbsp;</p><p><strong>TRADEMARKS</strong></p><p>Certain trademarks, trade names, service marks and logos used or displayed on this website are registered and unregistered trademarks, trade names and service marks of <strong>THEE PRINT INC.</strong> Other trademarks, trade names and service marks used or displayed on this website are the registered and unregistered trademarks, trade names and service marks of their respective owners. Nothing contained on this website grants or should be construed as granting, by implication, estoppel, or otherwise, any license or right to use any trademarks, trade names, service marks or logos displayed on this website without our written permission or the written permission of such third party owner.</p><p>&nbsp;</p><p><strong>LINKING TO THIS WEBSITE</strong></p><p>Any permitted links to this website must comply will all applicable laws, rule and regulations.<br>&nbsp;</p><p><strong>THIRD PARTY LINKS</strong></p><p>From time to time, this website may contain links to websites that are not owned, operated or controlled by us or our affiliates. All such links are provided solely as a convenience to you. If you use these links, you will leave this website. Neither we nor any of our affiliates are responsible for any content, materials or other information located on or accessible from any other website. Neither we nor any of our affiliates endorse, guarantee, or make any representations or warranties regarding any other website, or any content, materials or other information located or accessible from such websites, or the results that you may obtain from using such websites. If you decide to access any other website linked to or from this website, you do so entirely at your own risk.</p><p>&nbsp;</p><p><strong>INAPPROPRIATE MATERIAL</strong></p><p>You are prohibited from posting or transmitting any unlawful, threatening, defamatory, libelous, obscene, pornographic or profane material or any material that could constitute or encourage conduct that would be considered a criminal offence or give rise to civil liability, or otherwise violate any law. In addition to any remedies that we may have at law or in equity, if we reasonably determine that you have violated or are likely to violate the foregoing prohibitions, we may take any action we reasonably deem necessary to cure or prevent the violation, including without limitation, the immediate removal from this website of the related materials.</p><p>&nbsp;</p><p><strong>USER INFORMATION</strong></p><p>Other than personally identifiable information, which is subject to this website’s Privacy Policy, any material, information, suggestions, ideas, concepts, know-how, techniques, questions, comments or other communication you transmit or post to this website in any manner is and will be considered non-confidential and non-proprietary. We shall have no obligation to use, return, review, or respond to any customer communication. We will have no liability related to the content of any such customer communication, whether or not arising under the laws of copyright, libel, privacy, obscenity, or otherwise. We retain the right to remove any or all User Communications that includes any material we deem inappropriate or unacceptable.</p><p>&nbsp;</p><p><strong>DISCLAIMERS</strong></p><p>Your use of this website is at your risk. The materials and services provided in connection with this website are provided \"as is\" without any warranties of any kind including warranties of merchantability, fitness for a particular purpose, or non-infringement of intellectual property. Neither we nor any of our affiliates warrant the accuracy or completeness of the materials or services on or through this website. The materials and services on or through this website may be out of date, and neither we nor any of their affiliates make any commitment or assumes any duty to update such materials or services. The foregoing exclusions of implied warranties do not apply to the extent prohibited by law. Please refer to your local laws for any such prohibitions.</p><p>&nbsp;</p><p><strong>LIMITATIONS OF LIABILITY</strong></p><p>We assume no responsibility, and shall not be liable for, any damages to, or viruses that may infect, your computer, telecommunication equipment, or other property caused by or arising from your access to, use of, or browsing this website or your downloading of any materials, from this website. In no event will we, our respective officers, directors, employees, shareholders, affiliates, parent corporations, agents, successors, assigns, retail partners nor any party involved in the creation, production or transmission of this website be liable to any party for any indirect, special, punitive, incidental or consequential damages (including, without limitation, those resulting from lost profits, lost data or business interruption) arising out of the use, inability to use, or the results of use of this website, any websites linked to this website, or the materials, information or services contained at any or all such websites, whether based on warranty, contract, tort or any other legal theory and whether or not advised of the possibility of such damages. The foregoing limitations of liability do not apply to the extent prohibited by law. Please refer to your local laws for any such prohibitions.</p><p>&nbsp;</p><p><strong>REVISIONS TO THESE TERMS AND CONDITIONS</strong></p><p>We may revise these Terms and Conditions at any time and from time to time by updating this posting. You should visit this page from time to time to review the then current Terms and Conditions because they are binding on you. Certain provisions of these Terms and Conditions may be superseded by expressly designated legal notices or terms located on particular pages at this website.</p><p>&nbsp;</p><p><strong>CHOICE OF LAW; JURISDICTION</strong></p><p>These Terms and Conditions supersede any other agreement between you and us to the extent necessary to resolve any inconsistency or ambiguity between them. These Terms and Conditions will be governed by and construed in accordance with the laws of the Philippines, without giving effect to any principles of conflicts of laws. A printed version of these Terms and Conditions shall be admissible in judicial and administrative proceedings based upon or relating to these Terms and Conditions to the same extent and subject to the same conditions as other business documents and records originally generated and maintained in printed form.</p><p>&nbsp;</p><p><strong>TERMINATION</strong></p><p>You or we may suspend or terminate your account or your use of this website at any time, for any reason or for no reason. You are personally liable for any orders that you place or charges that you incur prior to termination. We reserve the right to change, suspend, or discontinue all or any aspect of this website at any time without notice.</p>', '1', '2020-12-11 11:05:16', '2021-01-07 16:09:59');

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
(64, '64', 0, 'asdasdas', 1, 'asdasds', '', '', '', '', 'asdas', 'asdas', '12312313123', '2020-12-26 22:06:47', '2020-12-26 22:06:47'),
(65, '65', 0, 'Dasmarinas, Cavite', 0, 'NEW EDIT 2', '', '', '', '', 'Romel', 'Postrano', '12312321321', '2021-01-04 10:28:00', '2021-01-11 15:15:51'),
(66, '66', 0, '47 Wiza Ferry Suite 648, Rosario 7720 Albayzxczxc', 1, 'Main Office', '', '', '', '', 'Henryzxc', 'Monzonzxczxc', '09152587522', '2021-01-04 13:12:23', '2021-01-11 13:11:04'),
(67, '68', 0, 'asd', 1, 'asdasdas', '', '', '', '', 'asd', 'asd', '12313213132', '2021-01-04 18:14:02', '2021-01-04 18:14:02'),
(68, '69', 0, 'asdasdad', 1, 'asdads', '', '', '', '', 'asdassdad', 'asdas', '12123213213', '2021-01-04 18:24:38', '2021-01-04 18:24:38'),
(69, '70', 0, 'sasdasd', 1, 'asda', '', '', '', '', 'asdas', 'asdasd', '13213131211', '2021-01-05 08:19:09', '2021-01-05 08:19:09'),
(70, '71', 0, '187 Sampaloc, Manila', 0, 'Work', '', '', '', '', 'Jason', 'Marasigan', '12312312313', '2021-01-05 14:10:04', '2021-01-06 09:46:38'),
(71, '71', 0, 'eeeeeeee', 0, 'eeeeeeeee', '', '', '', '', 'eeeeeeee', 'eeee', 'eeeeeeeeeee', '2021-01-06 09:46:21', '2021-01-06 09:46:38'),
(72, '71', 0, 'eeeee', 1, 'eeee', '', '', '', '', 'eeeeeee', 'eeeee', '45454545454', '2021-01-06 09:46:38', '2021-01-06 09:46:38'),
(73, '72', 0, 'sdfsdfsdf', 0, 'sdfsdf', '', '', '', '', 'sdf', 'sdf', '34242424', '2021-01-06 11:25:38', '2021-01-06 11:25:52'),
(74, '72', 0, 'werewrerrew', 1, 'erewrewr', '', '', '', '', 'ewrrewr', 'werewrrw', '09090090909', '2021-01-06 11:25:52', '2021-01-06 11:25:52'),
(75, '73', 0, 'asddasd', 1, 'asd', '', '', '', '', 'asdas', 'asdasd', '12312123213', '2021-01-06 13:14:23', '2021-01-06 13:14:23'),
(76, '81', 0, 'asdasd', 1, 'asdas', '', '', '', '', 'asdasd', 'asdasd', '09155152323', '2021-01-06 16:56:25', '2021-01-06 16:56:25'),
(77, '82', 0, '22112 makati city', 0, 'maka', '', '', '', '', 'Tania', 'Delacruz', '09152587520', '2021-01-06 17:05:18', '2021-01-06 17:05:18'),
(78, '84', 0, '68A Stroman Manors Suite 416, Sogod 2729 La Union', 1, 'Catering', '', '', '', '', 'Girly', 'Gandia', '09152587520', '2021-01-07 10:46:13', '2021-01-07 10:46:13'),
(79, '82', 0, 'billboardbillboardbillboardbillboardbillboardbillboardbillboardbillboardbillboardbillboardbillboardbbillboardbillboardbillboardbillboardbillboardbillboardbillboardbillboardbillboardbillboardbillboardbbillboardbillboardbillboardbillboardbillboardbilll', 0, 'dsadsadas', '', '', '', '', 'billboardbillboardbillboardbillboardbillboard', 'billboardbillboardbillboardbillboardbillboard', '11111111111', '2021-01-07 14:46:07', '2021-01-07 14:46:07'),
(80, '85', 0, '82 Kunde Causeway, Mandaue City 9492 Tawi-Tawi', 1, 'logo', '', '', '', '', 'angela', 'magbago', '09152598766', '2021-01-07 15:42:14', '2021-01-07 15:42:14'),
(81, '1', 0, 'asdasdad', 0, 'test', '', '', '', '', 'asdada', 'asdasda', '123131312', '2021-01-08 08:04:03', '2021-01-08 08:04:04'),
(82, '1', 0, 'asdasdad', 0, 'test', '', '', '', '', 'asdada', 'asdasda', '123131312', '2021-01-08 08:04:04', '2021-01-08 08:04:04'),
(83, '1', 0, 'asdasdad', 0, 'test', '', '', '', '', 'asdada', 'asdasda', '123131312', '2021-01-08 08:04:04', '2021-01-08 08:04:04'),
(84, '1', 0, 'asdasdad', 0, 'test', '', '', '', '', 'asdada', 'asdasda', '123131312', '2021-01-08 08:04:04', '2021-01-08 08:04:04'),
(85, '1', 0, 'asdasdad', 1, 'test', '', '', '', '', 'asdada', 'asdasda', '123131312', '2021-01-08 08:04:04', '2021-01-08 08:04:04'),
(86, '65', 0, 'asd', 0, 'test ', '', '', '', '', 'asdasd', 'asdsad', '12312313211', '2021-01-08 09:10:52', '2021-01-11 15:15:51'),
(87, '65', 0, 'asdad', 0, 'asda', '', '', '', '', 'asd', 'asdasd', '12313213213', '2021-01-08 09:19:48', '2021-01-11 15:15:51'),
(88, '65', 0, 'asd', 0, 'asd', '', '', '', '', 'asdsad', 'asdas', '12312321321', '2021-01-08 09:21:32', '2021-01-11 15:15:51'),
(89, '65', 0, 'dasdasd', 0, 'asd', '', '', '', '', 'asdad', 'asdasd', '12312312312', '2021-01-08 09:22:10', '2021-01-11 15:15:51'),
(90, '65', 0, 'asddasdsada', 0, 'NEW EDIT', '', '', '', '', 'asdweqe', 'eqwewqa', '32132111', '2021-01-08 09:23:51', '2021-01-11 15:15:51'),
(91, '87', 0, '333 Fern village, Cagayan De Oro City', 0, 'TAKOYAKI MAKI', '', '', '', '', 'Reynalyn', 'Hayag', '09155258723', '2021-01-11 12:00:17', '2021-01-11 12:00:17'),
(92, '88', 0, '1920 Tanza, Cavite', 1, 'Work', '', '', '', '', 'Iversonz', 'Castro', '09123123123', '2021-01-11 13:36:32', '2021-01-11 13:36:39'),
(93, '89', 0, '837 mahogany', 1, 'food circles', '', '', '', '', 'Kyla', 'Morales', '09232137231', '2021-01-11 13:38:10', '2021-01-11 13:38:10'),
(94, '65', 0, '1604-A New York Mansion Brgy E. Rodriquez Cubao, Quezon City', 1, 'Office', '', '', '', '', 'Elly', 'Dela Cruz', '09484889218', '2021-01-11 15:15:51', '2021-01-11 15:15:51'),
(95, '95', 0, 'akljsdhjakjsdaksj', 0, 'Work', '', '', '', '', 'asdasd', 'srndnd', '12315246735', '2021-01-14 13:22:52', '2021-01-14 13:22:52'),
(96, '77', 0, 'asdasdsada', 1, 'Test', '', '', '', '', 'asdasd', 'asdasd', '13213213123', '2021-01-15 09:40:38', '2021-01-15 09:40:38'),
(97, '99', 0, 'asdasddsa', 1, 'asdasd', '', '', '', '', 'sdasda', 'sdadssasd', '09152587520', '2021-01-15 09:56:06', '2021-01-15 09:56:06'),
(98, '78', 0, 'asdadasd', 1, 'asdasda', '', '', '', '', 'asd', 'asd', '12312321312', '2021-01-15 10:45:12', '2021-01-15 10:45:12'),
(99, '83', 0, 'asd', 1, 'Michael ', '', '', '', '', 'asd', 'asd', '12313213132', '2021-01-18 14:11:50', '2021-01-18 14:11:50');

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
(28, '1', 'a2FlbHJleWVzMTJAaG90bWFpbC5jb20yMDIxLTAxLTEzMTE6MDU6MjdhbQ==', '2021-01-14 11:05:27', '2021-01-13 11:05:27', '2021-01-13 11:05:27'),
(29, '1', 'a2FlbHJleWVzMTJAaG90bWFpbC5jb20yMDIxLTAxLTEzMTE6MDU6NTVhbQ==', '2021-01-14 11:05:55', '2021-01-13 11:05:55', '2021-01-13 11:05:55'),
(30, '1', '969fb4f6429617c3417d9ccc91aed293', '2021-01-14 11:07:25', '2021-01-13 11:07:25', '2021-01-13 11:07:25'),
(31, '1', '8c39867333e5629358d4dec28ce3e0a6', '2021-01-14 11:46:43', '2021-01-13 11:46:43', '2021-01-13 11:46:43'),
(32, '1', '18cdeab0bf9f082af474e97903b9c58a', '2021-01-14 11:57:37', '2021-01-13 11:57:37', '2021-01-13 11:57:37'),
(33, '1', '45bb39edf44f5eaa3ebf19bf7d58e6b8', '2021-01-14 11:58:36', '2021-01-13 11:58:36', '2021-01-13 11:58:36'),
(34, '1', '17bfcb167e33ff5877012302ef6ae9e9', '2021-01-14 11:59:28', '2021-01-13 11:59:28', '2021-01-13 11:59:28'),
(35, '1', 'e103851cc1e119ba51ccdd6fa92497fe', '2021-01-14 11:59:38', '2021-01-13 11:59:38', '2021-01-13 11:59:38'),
(36, '1', 'bf19251045fba6be3e0ef9310272d73b', '2021-01-14 14:45:06', '2021-01-13 14:45:06', '2021-01-13 14:45:06'),
(37, '116', '567107c2f8cee05638fea5fc28505e23', '2021-01-14 15:19:55', '2021-01-13 15:19:55', '2021-01-13 15:19:55'),
(38, '116', '702850db987d4e1e19fdd4e440f82696', '2021-01-14 17:00:49', '2021-01-13 17:00:49', '2021-01-13 17:00:49'),
(39, '153', 'efb3c370807fb86f72ec39ce1b672bcf', '2021-01-15 09:04:48', '2021-01-14 09:04:48', '2021-01-14 09:04:48'),
(40, '1', '08188e48b7d5f4a471c998394f605d86', '2021-01-15 09:23:55', '2021-01-14 09:23:55', '2021-01-14 09:23:55'),
(41, '160', 'c5d001879e3f655e2903c3fee96cc089', '2021-01-15 09:26:17', '2021-01-14 09:26:17', '2021-01-14 09:26:17'),
(42, '1', 'b86298dd34569279e38ff9ab4487fd71', '2021-01-15 09:26:58', '2021-01-14 09:26:58', '2021-01-14 09:26:58'),
(43, '160', '69d59b4306a1352ac084f55e0068bd0b', '2021-01-15 09:28:04', '2021-01-14 09:28:04', '2021-01-14 09:28:04'),
(44, '160', '145cb0f699213a9a734ce4ecbba7371e', '2021-01-15 09:30:35', '2021-01-14 09:30:35', '2021-01-14 09:30:35'),
(45, '160', '60c4f6eea8472289d979f8b30d4e4df4', '2021-01-15 09:35:10', '2021-01-14 09:35:10', '2021-01-14 09:35:10'),
(46, '160', '8bffe1d6bd4a612828d5999184a6ad2e', '2021-01-15 10:24:33', '2021-01-14 10:24:33', '2021-01-14 10:24:33'),
(47, '160', '3dc2929cc636f2cb3dcafe18009150cc', '2021-01-15 10:25:14', '2021-01-14 10:25:14', '2021-01-14 10:25:14'),
(48, '160', 'aad1d26e42ee02b74b13d8ad66f3e313', '2021-01-15 10:26:07', '2021-01-14 10:26:07', '2021-01-14 10:26:07'),
(49, '153', '7d1bf4cf5fd2dec17357fa3eac172c04', '2021-01-15 11:47:40', '2021-01-14 11:47:40', '2021-01-14 11:47:40'),
(50, '153', '3ab63aabf163d38a4f707a72315525f1', '2021-01-15 11:52:44', '2021-01-14 11:52:44', '2021-01-14 11:52:44'),
(51, '1', '68d2a662ac9262a515cdd689b6587da6', '2021-01-15 16:23:24', '2021-01-14 16:23:24', '2021-01-14 16:23:24'),
(52, '116', 'c392326e3a904b2ca83b000f5a21e9b2', '2021-01-15 16:38:41', '2021-01-14 16:38:41', '2021-01-14 16:38:41'),
(53, '116', '414f9555c530d098bd4c85c9e3142cd0', '2021-01-15 16:44:58', '2021-01-14 16:44:58', '2021-01-14 16:44:58'),
(54, '116', '52c63eb8c3e7aee09bd52ed40a53710e', '2021-01-15 16:45:20', '2021-01-14 16:45:20', '2021-01-14 16:45:20'),
(55, '116', 'ee8ec78490782003a4239bd52d5b4e65', '2021-01-15 17:28:44', '2021-01-14 17:28:44', '2021-01-14 17:28:44'),
(56, '1', 'ee59f000264b9c7ca30f3bc9cffc9d76', '2021-01-16 09:23:42', '2021-01-15 09:23:42', '2021-01-15 09:23:42'),
(57, '116', '23951ae3b0b3efaad1d18a3d6f1cf018', '2021-01-16 09:30:17', '2021-01-15 09:30:17', '2021-01-15 09:30:17'),
(58, '116', 'ff7e734cbf6e33a74cd03450b78336dd', '2021-01-16 09:57:28', '2021-01-15 09:57:28', '2021-01-15 09:57:28'),
(59, '155', 'ff8601baf5e5ced875bdd2625ba3c02f', '2021-01-16 14:32:25', '2021-01-15 14:32:25', '2021-01-15 14:32:25'),
(60, '116', '0f13b14ab268a34bf6f77821931736be', '2021-01-19 09:08:51', '2021-01-18 09:08:51', '2021-01-18 09:08:51'),
(61, '160', '856c248821b23600bcb4b8870573b128', '2021-01-19 09:10:30', '2021-01-18 09:10:30', '2021-01-18 09:10:30'),
(62, '1', '28f424fedd8457e8fb8fd502e4aafc10', '2021-01-17 10:50:07', '2021-01-19 10:29:54', '2021-01-18 10:29:54'),
(63, '1', 'adce3a5fe87e1b02a52ae652d4186f83', '2021-01-19 13:57:48', '2021-01-18 13:57:48', '2021-01-18 13:57:48'),
(64, '1', 'b4ca578e8890d66394d438007545db5f', '2021-01-19 15:34:42', '2021-01-18 15:34:42', '2021-01-18 15:34:42'),
(65, '1', 'b54feb52778ea5f59567f9852d9f708e', '2021-01-19 15:36:38', '2021-01-18 15:36:38', '2021-01-18 15:36:38'),
(66, '1', '9511af3fddc623d8e9fb48d954db568c', '2021-01-19 15:42:44', '2021-01-18 15:42:44', '2021-01-18 15:42:44'),
(67, '1', 'cf36715c398d2a4398817775259e6212', '2021-01-19 15:43:10', '2021-01-18 15:43:10', '2021-01-18 15:43:10');

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

--
-- Dumping data for table `job_order_items`
--

INSERT INTO `job_order_items` (`job_order_item_id`, `job_order_id`, `job_order_item_product_id`, `job_order_item_length`, `job_order_item_width`, `job_order_item_qty`, `job_order_item_price`, `job_order_item_unit`, `job_order_item_remark`, `created_at`, `updated_at`) VALUES
(61, 86, 30, '1', '1', 1, 12, 0, '', '2021-01-04 11:16:10', '2021-01-04 11:16:10'),
(62, 87, 30, '1', '1', 1, 12, 0, '', '2021-01-04 11:51:49', '2021-01-04 11:51:49'),
(63, 88, 30, '1', '1', 1, 12, 0, '', '2021-01-04 11:51:50', '2021-01-04 11:51:50'),
(64, 88, 30, '1', '1', 1, 12, 0, '', '2021-01-04 11:51:50', '2021-01-04 11:51:50'),
(65, 89, 30, '1', '1', 1, 1200, 0, '', '2021-01-04 12:41:37', '2021-01-04 12:41:37'),
(66, 90, 30, '1', '1', 1, 1200, 0, '', '2021-01-04 12:47:24', '2021-01-04 12:47:24'),
(67, 91, 30, '1', '1', 1, 1200, 0, '', '2021-01-04 12:53:15', '2021-01-04 12:53:15'),
(68, 92, 30, '1', '1', 1, 1200, 0, '', '2021-01-04 14:07:49', '2021-01-04 14:07:49'),
(69, 93, 30, '2', '2', 1, 5, 1, '', '2021-01-04 16:50:23', '2021-01-04 16:50:23'),
(70, 94, 30, '12', '12', 2, 5, 0, '', '2021-01-04 17:16:45', '2021-01-04 17:16:45'),
(71, 95, 30, '1', '1', 1, 1200, 0, '', '2021-01-05 08:31:27', '2021-01-05 08:31:27'),
(72, 96, 30, '12', '12', 1, 5, 0, '', '2021-01-05 11:10:34', '2021-01-05 11:10:34'),
(73, 97, 30, '12', '12', 1, 5, 0, '', '2021-01-05 11:21:48', '2021-01-05 11:21:48'),
(74, 98, 30, '12', '14', 1, 5, 0, '', '2021-01-05 11:31:45', '2021-01-05 11:31:45'),
(75, 99, 30, '12', '14', 1, 5, 0, '', '2021-01-05 11:55:56', '2021-01-05 11:55:56'),
(76, 100, 30, '5', '8', 1, 5, 0, '', '2021-01-05 11:56:37', '2021-01-05 11:56:37'),
(77, 101, 30, '2', '2', 1, 5, 0, '', '2021-01-05 14:57:30', '2021-01-05 14:57:30'),
(78, 102, 30, '2', '2', 1, 5, 0, '', '2021-01-05 14:57:31', '2021-01-05 14:57:31'),
(79, 102, 30, '2', '2', 1, 5, 0, '', '2021-01-05 14:57:31', '2021-01-05 14:57:31'),
(80, 103, 30, '1', '1', 1, 1200, 0, '', '2021-01-06 08:34:57', '2021-01-06 08:34:57'),
(81, 104, 30, '2', '1', 12, 5, 0, '', '2021-01-06 08:40:52', '2021-01-06 08:40:52'),
(82, 105, 30, '2', '1', 2, 5, 0, '', '2021-01-06 08:52:23', '2021-01-06 08:52:23'),
(83, 106, 30, '2', '1', 1, 10, 0, '', '2021-01-06 09:48:59', '2021-01-06 09:48:59'),
(84, 107, 30, '1', '1', 2, 5, 0, '', '2021-01-06 09:52:09', '2021-01-06 09:52:09'),
(85, 108, 30, '1', '2', 1, 5, 0, 'asasa', '2021-01-06 10:50:10', '2021-01-06 10:50:10'),
(86, 109, 30, '11', '11', 1, 1200, 0, '', '2021-01-06 10:53:06', '2021-01-06 10:53:06'),
(87, 110, 30, '2', '1', 2, 5, 0, '', '2021-01-06 10:57:11', '2021-01-06 10:57:11'),
(88, 111, 30, '12', '12', 1, 5, 0, '', '2021-01-06 10:59:00', '2021-01-06 10:59:00'),
(89, 112, 30, '12', '12', 1, 5, 0, '', '2021-01-06 11:00:22', '2021-01-06 11:00:22'),
(90, 113, 30, '1', '2', 1, 2, 0, '', '2021-01-06 11:02:08', '2021-01-06 11:02:08'),
(91, 114, 30, '5', '8', 4, 5, 0, '', '2021-01-06 11:02:22', '2021-01-06 11:02:22'),
(92, 115, 30, '1', '1', 1, 1200, 0, '', '2021-01-06 11:02:45', '2021-01-06 11:02:45'),
(93, 116, 30, '1', '1', 1, 1200, 0, '', '2021-01-06 11:13:12', '2021-01-06 11:13:12'),
(94, 117, 30, '5', '8', 1, 1200, 0, '', '2021-01-06 11:14:24', '2021-01-06 11:14:24'),
(95, 118, 30, '5', '8', 1, 5, 0, '', '2021-01-06 11:15:59', '2021-01-06 11:15:59'),
(96, 119, 30, '23', '12', 12, 5, 0, '', '2021-01-06 11:22:03', '2021-01-06 11:22:03'),
(97, 120, 30, '2', '1', 1, 2, 0, '', '2021-01-06 11:25:01', '2021-01-06 11:25:01'),
(98, 121, 30, '2', '1', 1, 2, 0, '', '2021-01-06 11:25:53', '2021-01-06 11:25:53'),
(99, 122, 40, '3', '2', 12, 1, 0, '', '2021-01-06 14:40:09', '2021-01-06 14:40:09'),
(100, 123, 30, '2', '1', 2, 1200, 0, '', '2021-01-06 14:49:10', '2021-01-06 14:49:10'),
(101, 124, 30, '1', '1', 1, 1200, 0, '', '2021-01-06 15:50:18', '2021-01-06 15:50:18'),
(102, 125, 30, '1', '1', 1, 1200, 0, '', '2021-01-06 15:58:15', '2021-01-06 15:58:15'),
(103, 126, 30, '1', '1', 1, 1200, 0, '', '2021-01-06 16:35:04', '2021-01-06 16:35:04'),
(104, 127, 30, '1', '1', 1, 1200, 0, '', '2021-01-06 16:42:09', '2021-01-06 16:42:09'),
(105, 128, 30, '1', '1', 1, 1200, 0, '', '2021-01-06 16:51:34', '2021-01-06 16:51:34'),
(106, 129, 30, '5', '8', 1, 5, 0, '', '2021-01-07 08:59:19', '2021-01-07 08:59:19'),
(107, 130, 30, '5', '8', 1, 5, 0, '', '2021-01-07 09:00:19', '2021-01-07 09:00:19'),
(108, 131, 30, '5', '8', 1, 5, 0, '', '2021-01-07 09:35:52', '2021-01-07 09:35:52'),
(109, 132, 30, '5', '8', 1, 5, 0, '', '2021-01-07 09:36:28', '2021-01-07 09:36:28'),
(110, 133, 40, '2', '2', 1, 1, 0, '', '2021-01-07 11:40:52', '2021-01-07 11:40:52'),
(111, 134, 40, '2', '2', 1, 1, 0, '', '2021-01-07 11:40:52', '2021-01-07 11:40:52'),
(112, 134, 40, '2', '2', 1, 1, 0, '', '2021-01-07 11:40:52', '2021-01-07 11:40:52'),
(113, 135, 30, '1', '5', 1, 1200, 0, '', '2021-01-07 11:49:31', '2021-01-07 11:49:31'),
(114, 136, 30, '12', '4', 1, 5, 0, '', '2021-01-07 11:58:34', '2021-01-07 11:58:34'),
(115, 137, 30, '11', '3', 1, 2, 0, '', '2021-01-07 12:02:54', '2021-01-07 12:02:54'),
(116, 138, 30, '11', '1', 1, 1, 0, '', '2021-01-07 12:05:38', '2021-01-07 12:05:38'),
(117, 139, 30, '11', '1', 1, 1, 0, '', '2021-01-07 12:05:39', '2021-01-07 12:05:39'),
(118, 139, 30, '11', '1', 1, 1, 0, '', '2021-01-07 12:05:39', '2021-01-07 12:05:39'),
(119, 140, 30, '1', '1', 1, 5, 0, '', '2021-01-07 12:06:29', '2021-01-07 12:06:29'),
(120, 141, 30, '12', '12', 1, 5, 0, '', '2021-01-07 12:25:28', '2021-01-07 12:25:28'),
(121, 142, 30, '1', '1', 1, 5, 0, '', '2021-01-07 13:24:12', '2021-01-07 13:24:12'),
(122, 143, 30, '1', '1', 1, 1200, 0, '', '2021-01-07 13:34:28', '2021-01-07 13:34:28'),
(123, 144, 38, '2', '2', 1, 1, 0, '', '2021-01-07 14:47:09', '2021-01-07 14:47:09'),
(124, 145, 40, '3', '3', 2, 1, 0, '', '2021-01-07 14:54:40', '2021-01-07 14:54:40'),
(125, 146, 40, '3', '2', 1, 1, 0, '', '2021-01-07 14:55:13', '2021-01-07 14:55:13'),
(126, 147, 30, '2', '2', 1, 1, 0, '', '2021-01-07 14:58:31', '2021-01-07 14:58:31'),
(127, 148, 30, '2', '2', 1, 1, 0, '', '2021-01-07 14:59:15', '2021-01-07 14:59:15'),
(128, 149, 30, '1', '1', 1, 1200, 0, '', '2021-01-08 12:21:08', '2021-01-08 12:21:08'),
(129, 150, 30, '1', '1', 1, 1200, 0, '', '2021-01-08 12:28:53', '2021-01-08 12:28:53'),
(130, 151, 30, '1', '1', 1, 1200, 0, '', '2021-01-08 12:28:53', '2021-01-08 12:28:53'),
(131, 151, 30, '1', '1', 1, 1200, 0, '', '2021-01-08 12:28:53', '2021-01-08 12:28:53'),
(132, 152, 30, '1', '1', 1, 5, 0, '', '2021-01-08 12:38:32', '2021-01-08 12:38:32'),
(133, 153, 30, '1', '1', 1, 5, 0, '', '2021-01-08 12:38:33', '2021-01-08 12:38:33'),
(134, 153, 30, '1', '1', 1, 5, 0, '', '2021-01-08 12:38:33', '2021-01-08 12:38:33'),
(135, 154, 30, '1', '1', 1, 1200, 0, '', '2021-01-08 13:24:51', '2021-01-08 13:24:51'),
(136, 155, 30, '1', '1', 1, 1200, 0, '', '2021-01-08 14:59:45', '2021-01-08 14:59:45'),
(137, 156, 30, '22', '1', 1, 1200, 0, '', '2021-01-08 15:02:27', '2021-01-08 15:02:27'),
(138, 157, 30, '1', '1', 1, 1200, 0, '', '2021-01-08 15:33:42', '2021-01-08 15:33:42'),
(139, 158, 30, '1', '1', 1, 1, 0, '', '2021-01-08 15:52:07', '2021-01-08 15:52:07'),
(140, 159, 30, '12', '1', 1, 1200, 0, '', '2021-01-08 16:01:46', '2021-01-08 16:01:46'),
(141, 160, 30, '1', '1', 1, 1200, 0, '', '2021-01-08 16:14:32', '2021-01-08 16:14:32'),
(142, 161, 30, '1', '1', 1, 1200, 0, 'product_description', '2021-01-08 16:23:26', '2021-01-08 16:23:26'),
(143, 162, 30, '1', '1', 1, 1200, 0, '', '2021-01-08 16:29:02', '2021-01-08 16:29:02'),
(144, 163, 30, '1', '1', 1, 1200, 0, '', '2021-01-08 16:33:51', '2021-01-08 16:33:51'),
(145, 164, 30, '1', '1', 1, 1200, 0, 'product_description', '2021-01-08 16:37:44', '2021-01-08 16:37:44'),
(146, 165, 30, '16', '24', 1, 5, 0, 'REST', '2021-01-11 14:02:45', '2021-01-11 14:02:45'),
(147, 166, 30, '12', '67', 1, 5, 0, 'asd', '2021-01-11 14:03:20', '2021-01-11 14:03:20'),
(148, 167, 30, '5', '9', 2, 5, 0, 'asdas', '2021-01-11 14:03:55', '2021-01-11 14:03:55'),
(149, 168, 39, '2', '2', 1, 2, 0, 'takoyaki', '2021-01-11 14:09:10', '2021-01-11 14:09:10'),
(150, 169, 39, '2', '1', 1, 2, 0, 're', '2021-01-11 14:10:21', '2021-01-11 14:10:21'),
(151, 170, 30, '12', '1', 1, 1200, 0, 'project name', '2021-01-11 14:59:20', '2021-01-11 14:59:20'),
(152, 171, 30, '12', '2', 1, 1200, 0, 'test test', '2021-01-11 15:09:42', '2021-01-11 15:09:42'),
(153, 172, 30, '1', '1', 1, 1200, 0, 'sda', '2021-01-11 15:10:31', '2021-01-11 15:10:31'),
(154, 173, 30, '1', '1', 1, 1200, 0, '1', '2021-01-11 15:16:46', '2021-01-11 15:16:46'),
(155, 174, 30, '8', '4', 1, 1200, 0, 'test', '2021-01-11 16:59:14', '2021-01-11 16:59:14'),
(156, 175, 30, '1', '1', 1, 1200, 0, 'Sample test', '2021-01-12 11:05:52', '2021-01-12 11:05:52'),
(157, 176, 30, '1', '1', 1, 1200, 0, 'Sample test', '2021-01-12 11:11:58', '2021-01-12 11:11:58'),
(158, 177, 30, '1', '1', 1, 1200, 0, 'ds', '2021-01-12 13:14:37', '2021-01-12 13:14:37'),
(159, 178, 30, '1', '1', 1, 1200, 0, '1', '2021-01-12 14:24:08', '2021-01-12 14:24:08'),
(160, 179, 30, '5', '10', 1, 5, 0, 'asdasdasd', '2021-01-12 16:21:30', '2021-01-12 16:21:30'),
(161, 180, 30, '14', '32', 1, 5, 0, 'asdasdasd', '2021-01-12 16:22:29', '2021-01-12 16:22:29'),
(162, 181, 30, '1', '1', 1, 1200, 0, 'dasd', '2021-01-13 08:34:37', '2021-01-13 08:34:37'),
(163, 182, 30, '2', '1', 1, 1200, 0, 'wqewq', '2021-01-13 08:35:22', '2021-01-13 08:35:22'),
(164, 183, 30, '2', '1', 1, 1200, 0, 'dsadsa', '2021-01-13 08:45:38', '2021-01-13 08:45:38'),
(165, 184, 30, '1', '2', 1, 1200, 0, 'sdsadas', '2021-01-13 08:46:38', '2021-01-13 08:46:38'),
(166, 185, 30, '2', '2', 1, 1200, 0, 'qaesa', '2021-01-13 08:47:54', '2021-01-13 08:47:54'),
(167, 186, 30, '1', '1', 1, 1200, 0, 'asdasd', '2021-01-13 08:51:18', '2021-01-13 08:51:18'),
(168, 187, 30, '1', '1', 1, 1200, 0, 'dsadas', '2021-01-13 08:51:37', '2021-01-13 08:51:37'),
(169, 188, 30, '1', '1', 1, 1200, 0, 'asdasdasd', '2021-01-13 08:52:48', '2021-01-13 08:52:48'),
(170, 189, 30, '1', '1', 1, 1200, 0, 'as', '2021-01-13 08:54:12', '2021-01-13 08:54:12'),
(171, 190, 30, '1', '1', 1, 1200, 0, 'dewds', '2021-01-13 09:32:33', '2021-01-13 09:32:33'),
(172, 191, 30, '12', '24', 1, 5, 0, 'TEST', '2021-01-13 09:47:33', '2021-01-13 09:47:33'),
(173, 192, 30, '1', '1', 1, 1200, 0, 'asasdadsa', '2021-01-13 09:50:17', '2021-01-13 09:50:17'),
(174, 193, 30, '1', '1', 2, 1, 0, 're', '2021-01-13 13:06:54', '2021-01-13 13:06:54'),
(175, 194, 43, '2', '1', 1, 1, 0, 'black', '2021-01-13 13:08:28', '2021-01-13 13:08:28'),
(176, 195, 30, '4', '5', 7, 1, 0, 'green', '2021-01-13 13:09:47', '2021-01-13 13:09:47'),
(177, 196, 30, '3', '2', 2, 10, 0, 'rre', '2021-01-13 13:14:22', '2021-01-13 13:14:22'),
(178, 197, 30, '1', '1', 1, 1200, 0, 'asdasd', '2021-01-14 10:20:40', '2021-01-14 10:20:40'),
(179, 198, 30, '12', '56', 1, 1, 0, 'asdasdzcvxcvbzc', '2021-01-14 11:07:36', '2021-01-14 11:07:36'),
(180, 199, 38, '12', '56', 1, 1, 0, 'afasasfas', '2021-01-14 11:13:17', '2021-01-14 11:13:17'),
(181, 200, 30, '12', '51', 1, 1200, 0, 'asdasxfb', '2021-01-14 11:22:37', '2021-01-14 11:22:37'),
(182, 201, 30, '3', '9', 2, 1200, 0, 'Sasdasdasdas', '2021-01-14 13:02:29', '2021-01-14 13:02:29'),
(183, 202, 30, '1', '1', 1, 2, 0, 'sdas', '2021-01-14 15:45:52', '2021-01-14 15:45:52'),
(184, 203, 38, '1', '1', 1, 1, 0, 'asdasdasdd', '2021-01-15 09:40:53', '2021-01-15 09:40:53'),
(185, 204, 30, '1', '1', 1, 2, 0, 'asdasdsads', '2021-01-15 09:50:00', '2021-01-15 09:50:00'),
(186, 205, 30, '1', '1', 1, 1200, 0, 'asdasadad', '2021-01-15 09:54:22', '2021-01-15 09:54:22'),
(187, 206, 30, '2', '2', 1, 2, 0, 'sda', '2021-01-15 09:58:25', '2021-01-15 09:58:25'),
(188, 207, 30, '2', '2', 1, 2, 0, 'sda', '2021-01-15 09:58:29', '2021-01-15 09:58:29'),
(189, 207, 30, '2', '2', 1, 2, 0, 'sda', '2021-01-15 09:58:29', '2021-01-15 09:58:29'),
(190, 208, 30, '2', '2', 2, 2, 0, 'rerereer', '2021-01-15 10:41:06', '2021-01-15 10:41:06'),
(191, 209, 30, '2', '2', 2, 2, 0, '2', '2021-01-15 10:43:31', '2021-01-15 10:43:31'),
(192, 210, 38, '1', '1', 1, 1, 0, '1', '2021-01-15 10:45:14', '2021-01-15 10:45:14'),
(193, 211, 30, '1', '1', 1, 1200, 0, 'adasd', '2021-01-15 10:46:45', '2021-01-15 10:46:45'),
(194, 212, 30, '1', '1', 1, 1, 0, '1', '2021-01-15 10:48:01', '2021-01-15 10:48:01'),
(195, 213, 43, '2', '2', 1, 2, 0, 'rere', '2021-01-15 10:51:38', '2021-01-15 10:51:38'),
(196, 214, 30, '1', '1', 1, 1200, 0, 'asdasd', '2021-01-15 10:53:35', '2021-01-15 10:53:35'),
(197, 215, 30, '1', '1', 1, 1, 0, 'sdadsd', '2021-01-15 10:54:06', '2021-01-15 10:54:06'),
(198, 216, 30, '12', '12', 1, 2, 0, 'rerererer', '2021-01-15 10:55:30', '2021-01-15 10:55:30'),
(199, 217, 30, '1', '1', 2, 2, 0, '3', '2021-01-15 14:56:03', '2021-01-15 14:56:03'),
(200, 218, 38, '1', '1', 1, 1, 0, 'adasdad', '2021-01-18 13:28:17', '2021-01-18 13:28:17'),
(201, 219, 38, '11', '11', 100, 1, 0, 'asd', '2021-01-18 14:03:22', '2021-01-18 14:03:22'),
(202, 220, 38, '12', '12', 1, 1, 0, 'adsadasd', '2021-01-18 14:08:59', '2021-01-18 14:08:59'),
(203, 221, 38, '1', '1', 1, 1, 0, 'asdasdsada', '2021-01-18 14:12:21', '2021-01-18 14:12:21'),
(204, 222, 38, '1', '1', 1, 1, 0, 'asasdsad', '2021-01-18 14:19:34', '2021-01-18 14:19:34');

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
(99, 86, 2, '', '2021-01-04 00:00:00', '2021-01-04 11:16:31'),
(100, 87, 1, '', '2021-01-04 00:00:00', '2021-01-04 11:51:56'),
(101, 86, 5, 'qqw', '2021-01-04 00:00:00', '2021-01-04 12:39:40'),
(102, 89, 2, '', '2021-01-04 00:00:00', '2021-01-04 12:42:04'),
(103, 89, 5, '', '2021-01-04 00:00:00', '2021-01-04 12:42:40'),
(104, 90, 2, '', '2021-01-04 00:00:00', '2021-01-04 12:47:37'),
(105, 90, 3, '', '2021-01-04 00:00:00', '2021-01-04 12:48:20'),
(106, 91, 2, '', '2021-01-04 00:00:00', '2021-01-04 12:54:06'),
(107, 92, 1, '', '2021-01-04 00:00:00', '2021-01-04 14:08:05'),
(108, 90, 4, '', '2021-01-04 00:00:00', '2021-01-04 16:14:26'),
(109, 94, 2, '', '2021-01-04 00:00:00', '2021-01-04 17:17:00'),
(110, 94, 2, '', '2021-01-04 00:00:00', '2021-01-04 17:17:32'),
(111, 98, 1, '', '2021-01-05 00:00:00', '2021-01-05 11:31:50'),
(112, 94, 3, '', '2021-01-05 00:00:00', '2021-01-05 11:42:39'),
(113, 94, 3, '', '2021-01-05 00:00:00', '2021-01-05 11:43:12'),
(114, 94, 4, '', '2021-01-05 00:00:00', '2021-01-05 11:43:33'),
(115, 94, 3, '', '2021-01-05 00:00:00', '2021-01-05 11:46:06'),
(116, 94, 4, '', '2021-01-05 00:00:00', '2021-01-05 11:46:22'),
(117, 100, 2, '', '2021-01-05 00:00:00', '2021-01-05 11:57:17'),
(118, 101, 2, '', '2021-01-05 00:00:00', '2021-01-05 14:57:41'),
(119, 101, 5, '', '2021-01-05 00:00:00', '2021-01-05 15:32:07'),
(120, 108, 2, '', '2021-01-06 00:00:00', '2021-01-06 10:50:32'),
(121, 108, 2, '', '2021-01-06 00:00:00', '2021-01-06 10:56:23'),
(122, 108, 2, '', '2021-01-06 00:00:00', '2021-01-06 10:56:24'),
(123, 108, 2, '', '2021-01-06 00:00:00', '2021-01-06 10:56:27'),
(124, 108, 2, '', '2021-01-06 00:00:00', '2021-01-06 10:56:27'),
(125, 110, 2, '', '2021-01-06 00:00:00', '2021-01-06 10:59:30'),
(126, 113, 1, '', '2021-01-06 00:00:00', '2021-01-06 11:02:13'),
(127, 116, 1, '', '2021-01-06 00:00:00', '2021-01-06 11:14:03'),
(128, 119, 2, '', '2021-01-06 00:00:00', '2021-01-06 11:22:20'),
(129, 121, 2, '', '2021-01-06 00:00:00', '2021-01-06 11:26:05'),
(130, 108, 3, '', '2021-01-06 00:00:00', '2021-01-06 11:34:36'),
(131, 124, 2, '', '2021-01-06 00:00:00', '2021-01-06 15:50:35'),
(132, 124, 2, '', '2021-01-06 00:00:00', '2021-01-06 15:50:36'),
(133, 124, 2, '', '2021-01-06 00:00:00', '2021-01-06 15:50:36'),
(134, 126, 2, '', '2021-01-06 00:00:00', '2021-01-06 16:36:19'),
(135, 126, 2, '', '2021-01-06 00:00:00', '2021-01-06 16:36:22'),
(136, 128, 2, '', '2021-01-06 00:00:00', '2021-01-06 16:53:14'),
(137, 128, 2, '', '2021-01-06 00:00:00', '2021-01-06 17:02:08'),
(138, 128, 2, '', '2021-01-06 00:00:00', '2021-01-06 17:04:56'),
(139, 128, 2, '', '2021-01-06 00:00:00', '2021-01-06 17:06:21'),
(140, 128, 2, '', '2021-01-06 00:00:00', '2021-01-06 17:07:59'),
(141, 133, 2, '', '2021-01-07 00:00:00', '2021-01-07 11:41:09'),
(142, 133, 3, '', '2021-01-07 00:00:00', '2021-01-07 11:44:08'),
(143, 133, 4, '', '2021-01-07 00:00:00', '2021-01-07 11:44:44'),
(144, 91, 5, '', '2021-01-07 00:00:00', '2021-01-07 11:47:48'),
(145, 140, 2, '', '2021-01-07 00:00:00', '2021-01-07 12:07:22'),
(146, 140, 2, '', '2021-01-07 00:00:00', '2021-01-07 12:09:37'),
(147, 140, 2, '', '2021-01-07 00:00:00', '2021-01-07 12:11:04'),
(148, 140, 2, '', '2021-01-07 00:00:00', '2021-01-07 12:12:56'),
(149, 140, 2, '', '2021-01-07 00:00:00', '2021-01-07 12:18:14'),
(150, 140, 2, '', '2021-01-07 00:00:00', '2021-01-07 12:23:25'),
(151, 141, 1, '', '2021-01-07 00:00:00', '2021-01-07 12:25:34'),
(152, 147, 2, '', '2021-01-07 00:00:00', '2021-01-07 14:58:54'),
(153, 148, 2, '', '2021-01-07 00:00:00', '2021-01-07 14:59:49'),
(154, 150, 2, '', '2021-01-08 00:00:00', '2021-01-08 12:31:30'),
(155, 150, 2, '', '2021-01-08 00:00:00', '2021-01-08 12:33:40'),
(156, 152, 2, '', '2021-01-08 00:00:00', '2021-01-08 12:39:46'),
(157, 100, 5, 'asdasdasdsaasd', '2021-01-08 00:00:00', '2021-01-08 14:31:01'),
(158, 110, 5, 'asdasdads', '2021-01-08 00:00:00', '2021-01-08 14:45:05'),
(159, 119, 5, 'asdasd', '2021-01-08 00:00:00', '2021-01-08 14:46:36'),
(160, 147, 5, 'asdasdad', '2021-01-08 00:00:00', '2021-01-08 14:49:34'),
(161, 156, 1, '', '2021-01-08 00:00:00', '2021-01-08 15:02:34'),
(162, 140, 5, 'eaeew', '2021-01-11 00:00:00', '2021-01-11 13:22:27'),
(163, 165, 2, '', '2021-01-11 00:00:00', '2021-01-11 14:02:58'),
(164, 166, 2, '', '2021-01-11 00:00:00', '2021-01-11 14:03:31'),
(165, 167, 2, '', '2021-01-11 00:00:00', '2021-01-11 14:04:06'),
(166, 141, 1, '', '2021-01-11 00:00:00', '2021-01-11 14:12:32'),
(167, 169, 2, '', '2021-01-11 00:00:00', '2021-01-11 14:13:34'),
(168, 170, 1, '', '2021-01-11 00:00:00', '2021-01-11 15:08:11'),
(169, 171, 1, '', '2021-01-11 00:00:00', '2021-01-11 15:09:53'),
(170, 172, 1, '', '2021-01-11 00:00:00', '2021-01-11 15:10:36'),
(171, 173, 2, '', '2021-01-11 00:00:00', '2021-01-11 15:16:58'),
(172, 171, 2, '', '2021-01-11 00:00:00', '2021-01-11 15:46:29'),
(173, 174, 2, '', '2021-01-11 00:00:00', '2021-01-11 17:04:28'),
(174, 173, 7, '', '2021-01-12 00:00:00', '2021-01-12 09:09:26'),
(175, 176, 1, '', '2021-01-12 00:00:00', '2021-01-12 11:12:07'),
(176, 171, 7, '', '2021-01-12 00:00:00', '2021-01-12 13:22:56'),
(177, 179, 1, '', '2021-01-12 00:00:00', '2021-01-12 16:21:36'),
(178, 180, 1, '', '2021-01-12 00:00:00', '2021-01-12 16:22:39'),
(179, 181, 1, '', '2021-01-13 00:00:00', '2021-01-13 08:34:48'),
(180, 182, 1, '', '2021-01-13 00:00:00', '2021-01-13 08:45:05'),
(181, 183, 1, '', '2021-01-13 00:00:00', '2021-01-13 08:45:44'),
(182, 184, 1, '', '2021-01-13 00:00:00', '2021-01-13 08:46:47'),
(183, 185, 1, '', '2021-01-13 00:00:00', '2021-01-13 08:48:00'),
(184, 186, 2, '', '2021-01-13 00:00:00', '2021-01-13 08:52:00'),
(185, 187, 2, '', '2021-01-13 00:00:00', '2021-01-13 08:52:00'),
(186, 188, 1, '', '2021-01-13 00:00:00', '2021-01-13 08:52:56'),
(187, 189, 1, '', '2021-01-13 00:00:00', '2021-01-13 08:54:18'),
(188, 190, 1, '', '2021-01-13 00:00:00', '2021-01-13 09:33:02'),
(189, 152, 7, '', '2021-01-13 00:00:00', '2021-01-13 09:59:13'),
(190, 124, 7, '', '2021-01-13 00:00:00', '2021-01-13 10:00:26'),
(191, 150, 7, '', '2021-01-13 00:00:00', '2021-01-13 10:00:39'),
(192, 165, 7, '', '2021-01-13 00:00:00', '2021-01-13 10:01:00'),
(193, 166, 7, '', '2021-01-13 00:00:00', '2021-01-13 10:01:11'),
(194, 167, 7, '', '2021-01-13 00:00:00', '2021-01-13 10:01:52'),
(195, 193, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:07:11'),
(196, 194, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(197, 194, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(198, 194, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(199, 194, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(200, 194, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(201, 194, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(202, 194, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:08:40'),
(203, 195, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(204, 195, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(205, 195, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(206, 195, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(207, 195, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(208, 195, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:10:05'),
(209, 195, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:10:05'),
(210, 196, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:14:38'),
(211, 196, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:14:38'),
(212, 196, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:14:38'),
(213, 196, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:14:38'),
(214, 196, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:14:38'),
(215, 196, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:14:43'),
(216, 196, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:14:45'),
(217, 196, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:14:45'),
(218, 196, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:14:46'),
(219, 196, 2, '', '2021-01-13 00:00:00', '2021-01-13 13:14:49'),
(220, 148, 5, 'di pede to', '2021-01-13 00:00:00', '2021-01-13 13:23:35'),
(221, 195, 5, 'e', '2021-01-13 00:00:00', '2021-01-13 13:24:23'),
(222, 87, 2, '', '2021-01-13 00:00:00', '2021-01-13 15:34:24'),
(223, 87, 2, '', '2021-01-13 00:00:00', '2021-01-13 15:34:28'),
(224, 90, 6, '', '2021-01-14 00:00:00', '2021-01-14 08:37:06'),
(225, 90, 8, '', '2021-01-14 00:00:00', '2021-01-14 08:50:12'),
(226, 94, 8, '', '2021-01-14 00:00:00', '2021-01-14 08:54:56'),
(227, 90, 9, '', '2021-01-14 00:00:00', '2021-01-14 09:09:45'),
(228, 86, 8, '', '2021-01-14 00:00:00', '2021-01-14 16:46:58'),
(229, 89, 8, '', '2021-01-14 00:00:00', '2021-01-14 17:01:07'),
(230, 89, 8, '', '2021-01-14 00:00:00', '2021-01-14 17:01:08'),
(231, 89, 8, '', '2021-01-14 00:00:00', '2021-01-14 17:01:09'),
(232, 89, 8, '', '2021-01-14 00:00:00', '2021-01-14 17:01:09'),
(233, 89, 8, '', '2021-01-14 00:00:00', '2021-01-14 17:01:10'),
(234, 89, 8, '', '2021-01-14 00:00:00', '2021-01-14 17:01:10'),
(235, 89, 8, '', '2021-01-14 00:00:00', '2021-01-14 17:01:10'),
(236, 89, 8, '', '2021-01-14 00:00:00', '2021-01-14 17:01:20'),
(237, 108, 8, '', '2021-01-14 00:00:00', '2021-01-14 17:01:28'),
(238, 91, 8, '', '2021-01-14 00:00:00', '2021-01-14 17:02:05'),
(239, 100, 8, '', '2021-01-14 00:00:00', '2021-01-14 17:02:27'),
(240, 101, 8, '', '2021-01-14 00:00:00', '2021-01-14 17:02:54'),
(241, 169, 5, 'asdasdas', '2021-01-14 00:00:00', '2021-01-14 17:04:43'),
(242, 174, 5, 'Pakyu', '2021-01-14 00:00:00', '2021-01-14 17:07:15'),
(243, 110, 8, '', '2021-01-15 00:00:00', '2021-01-15 08:33:41'),
(244, 186, 3, '', '2021-01-15 00:00:00', '2021-01-15 08:58:25'),
(245, 186, 4, '', '2021-01-15 00:00:00', '2021-01-15 08:58:40'),
(246, 186, 9, '', '2021-01-15 00:00:00', '2021-01-15 08:59:16'),
(247, 174, 9, '', '2021-01-15 00:00:00', '2021-01-15 09:04:29'),
(248, 86, 9, '', '2021-01-15 00:00:00', '2021-01-15 09:05:34'),
(249, 187, 5, 'sdfsad', '2021-01-15 00:00:00', '2021-01-15 09:32:52'),
(250, 199, 5, 'dasd', '2021-01-15 00:00:00', '2021-01-15 09:33:11'),
(251, 198, 5, 'fdsfs', '2021-01-15 00:00:00', '2021-01-15 09:33:51'),
(252, 126, 8, '', '2021-01-15 00:00:00', '2021-01-15 09:38:01'),
(253, 187, 9, '', '2021-01-15 00:00:00', '2021-01-15 09:38:48'),
(254, 121, 8, '', '2021-01-15 00:00:00', '2021-01-15 09:39:40'),
(255, 203, 6, '', '2021-01-15 00:00:00', '2021-01-15 09:41:02'),
(256, 87, 5, 'www', '2021-01-15 00:00:00', '2021-01-15 09:42:19'),
(257, 202, 5, 'ss', '2021-01-15 00:00:00', '2021-01-15 09:45:43'),
(258, 196, 5, 'efref', '2021-01-15 00:00:00', '2021-01-15 09:46:07'),
(259, 205, 2, '', '2021-01-15 00:00:00', '2021-01-15 09:54:36'),
(260, 209, 2, '', '2021-01-15 00:00:00', '2021-01-15 10:44:26'),
(261, 211, 2, '', '2021-01-15 00:00:00', '2021-01-15 10:46:58'),
(262, 212, 2, '', '2021-01-15 00:00:00', '2021-01-15 10:48:12'),
(263, 213, 2, '', '2021-01-15 00:00:00', '2021-01-15 10:51:49'),
(264, 215, 2, '', '2021-01-15 00:00:00', '2021-01-15 10:54:17'),
(265, 216, 2, '', '2021-01-15 00:00:00', '2021-01-15 10:55:40'),
(266, 215, 2, '', '2021-01-15 00:00:00', '2021-01-15 10:56:14'),
(267, 215, 2, '', '2021-01-15 00:00:00', '2021-01-15 10:56:47'),
(268, 217, 2, '', '2021-01-15 00:00:00', '2021-01-15 14:56:41'),
(269, 119, 8, '', '2021-01-15 00:00:00', '2021-01-15 15:00:30'),
(270, 218, 2, '', '2021-01-18 00:00:00', '2021-01-18 13:28:37'),
(271, 219, 2, '', '2021-01-18 00:00:00', '2021-01-18 14:03:41'),
(272, 220, 2, '', '2021-01-18 00:00:00', '2021-01-18 14:09:19'),
(273, 221, 2, '', '2021-01-18 00:00:00', '2021-01-18 14:12:55'),
(274, 221, 2, '', '2021-01-18 00:00:00', '2021-01-18 14:13:07'),
(275, 222, 2, '', '2021-01-18 00:00:00', '2021-01-18 14:19:44'),
(276, 222, 2, '', '2021-01-18 00:00:00', '2021-01-18 14:20:25'),
(277, 222, 2, '', '2021-01-18 00:00:00', '2021-01-18 14:21:53'),
(278, 222, 2, '', '2021-01-18 00:00:00', '2021-01-18 14:23:32'),
(279, 222, 2, '', '2021-01-18 00:00:00', '2021-01-18 14:23:49'),
(280, 222, 2, '', '2021-01-18 00:00:00', '2021-01-18 14:26:52'),
(281, 222, 2, '', '2021-01-18 00:00:00', '2021-01-18 14:28:26'),
(282, 222, 2, '', '2021-01-18 00:00:00', '2021-01-18 14:28:44'),
(283, 222, 2, '', '2021-01-18 00:00:00', '2021-01-18 14:29:00'),
(284, 222, 2, '', '2021-01-18 00:00:00', '2021-01-18 14:29:14'),
(285, 222, 2, '', '2021-01-18 00:00:00', '2021-01-18 14:30:22'),
(286, 222, 2, '', '2021-01-18 00:00:00', '2021-01-18 14:33:38'),
(287, 194, 3, '', '2021-01-18 00:00:00', '2021-01-18 15:44:03'),
(288, 205, 5, 'asdasdasd', '2021-01-18 00:00:00', '2021-01-18 15:44:12');

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
  `job_order_due_date` datetime NOT NULL,
  `job_order_total` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `admin_archived` tinyint(1) NOT NULL DEFAULT '0',
  `partner_archived` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_order_requests`
--

INSERT INTO `job_order_requests` (`job_order_request_id`, `job_order_user_id`, `job_order_quote_num`, `job_order_project_name`, `job_order_delivery_address`, `job_order_remarks`, `job_order_status`, `job_order_payment_status`, `job_order_due_date`, `job_order_total`, `admin_archived`, `partner_archived`, `created_at`, `updated_at`) VALUES
(86, '65', '21-0001', 'qwqwq', '65', 'asas', 5, 0, '2021-01-04 12:39:40', '13.44', 1, 1, '2021-01-04 11:16:10', '2021-01-15 09:05:34'),
(87, '65', '21-0035', 'qq', '65', '', 5, 0, '2021-01-04 11:51:56', '13.44', 0, 0, '2021-01-04 11:51:49', '2021-01-15 09:42:19'),
(88, '65', '', 'qq', '65', '', 0, 0, '2021-01-05 08:00:00', '40.32', 0, 0, '2021-01-04 11:51:50', '2021-01-04 11:51:50'),
(89, '65', '21-0002', 'qwqwqwq', '65', 'asas', 5, 0, '2021-01-04 12:42:41', '1344', 1, 0, '2021-01-04 12:41:37', '2021-01-14 17:01:07'),
(90, '65', '21-0003', 'qqqqqqqqqqq', '65', 'adsa', 4, 1, '2021-01-04 16:14:26', '1344', 1, 1, '2021-01-04 12:47:24', '2021-01-14 09:09:45'),
(91, '65', '21-0004', 'wqwqwq', '65', 'asasa', 5, 0, '2021-01-04 12:54:06', '1344', 1, 0, '2021-01-04 12:53:15', '2021-01-14 17:02:05'),
(92, '65', '', 'werwerew', '65', '', 1, 0, '2021-01-04 14:08:05', '1344', 0, 0, '2021-01-04 14:07:49', '2021-01-04 14:08:05'),
(93, '66', '', 'Coffee sticker', '66', '', 0, 0, '2021-01-06 08:00:00', '22.4', 0, 0, '2021-01-04 16:50:23', '2021-01-04 16:50:23'),
(94, '66', '21-0006', 'logo', '66', 'rererasddasddasasd', 4, 1, '2021-01-05 11:46:22', '1612.8', 1, 0, '2021-01-04 17:16:45', '2021-01-14 08:54:56'),
(95, '65', '', 'qwq', '65', '', 0, 0, '2021-01-06 08:00:00', '1344', 0, 0, '2021-01-05 08:31:27', '2021-01-05 08:31:27'),
(96, '66', '', 'Test Project', '66', '', 0, 0, '2021-02-14 08:00:00', '806.4', 0, 0, '2021-01-05 11:10:34', '2021-01-05 11:10:34'),
(97, '66', '', 'Test Project', '66', '', 0, 0, '2021-12-02 08:00:00', '806.4', 0, 0, '2021-01-05 11:21:48', '2021-01-05 11:21:48'),
(98, '66', '', 'tasdas', '66', '', 1, 0, '2021-01-05 11:31:52', '940.8', 0, 0, '2021-01-05 11:31:44', '2021-01-05 11:31:52'),
(99, '66', '', 'Python', '66', '', 0, 0, '2021-02-14 08:00:00', '940.8', 0, 0, '2021-01-05 11:55:56', '2021-01-05 11:55:56'),
(100, '66', '21-0006', 'Python', '66', 'TESAzxczxczx', 5, 0, '2021-01-05 11:57:17', '224', 1, 0, '2021-01-05 11:56:37', '2021-01-14 17:02:28'),
(101, '66', '21-0007', 'tofee', '66', 're', 5, 0, '2021-01-05 15:32:07', '22.4', 1, 0, '2021-01-05 14:57:30', '2021-01-14 17:02:54'),
(102, '66', '', 'tofee', '66', '', 0, 0, '2021-01-14 08:00:00', '67.2', 0, 0, '2021-01-05 14:57:31', '2021-01-05 14:57:31'),
(103, '65', '', 'test', '65', '', 0, 0, '2021-01-07 08:00:00', '1344', 0, 0, '2021-01-06 08:34:57', '2021-01-06 08:34:57'),
(104, '66', '', 'fort', '66', '', 0, 0, '2021-01-22 08:00:00', '134.4', 0, 0, '2021-01-06 08:40:52', '2021-01-06 08:40:52'),
(105, '66', '', 'fort', '66', '', 0, 0, '2021-01-11 08:00:00', '22.4', 0, 0, '2021-01-06 08:52:23', '2021-01-06 08:52:23'),
(106, '71', '', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', '71', '', 0, 0, '2021-01-16 08:00:00', '22.4', 0, 0, '2021-01-06 09:48:59', '2021-01-06 09:48:59'),
(107, '66', '', 'wewewewe', '66', '', 0, 0, '2021-01-22 08:00:00', '11.2', 0, 0, '2021-01-06 09:52:09', '2021-01-06 09:52:09'),
(108, '66', '21-0009', 'rere', '66', 'rerere', 3, 0, '2021-01-06 11:34:36', '11.2', 1, 0, '2021-01-06 10:50:09', '2021-01-14 17:01:28'),
(109, '65', '', 'qwqw', '65', '', 0, 0, '2021-01-07 08:00:00', '162624', 0, 0, '2021-01-06 10:53:06', '2021-01-06 10:53:06'),
(110, '66', '21-0009', 'yuyu', '66', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 5, 0, '2021-01-30 10:59:30', '22.4', 1, 0, '2021-01-06 10:57:11', '2021-01-15 08:33:41'),
(111, '66', '', 'Far far awayFar far awayFar far awayFar far awayFar far awayFar far awayFar far awayFar far awayaway', '66', '', 0, 0, '2021-12-12 08:00:00', '806.4', 0, 0, '2021-01-06 10:59:00', '2021-01-06 10:59:00'),
(112, '66', '', 'Teasdasdasd', '66', '', 0, 0, '2021-12-12 08:00:00', '806.4', 0, 0, '2021-01-06 11:00:21', '2021-01-06 11:00:21'),
(113, '71', '', 'eli', '72', '', 1, 0, '2021-01-06 11:02:13', '4.48', 0, 0, '2021-01-06 11:02:08', '2021-01-06 11:02:13'),
(114, '66', '', 'Test asdasdasd', '66', '', 0, 0, '2021-12-12 08:00:00', '896', 0, 0, '2021-01-06 11:02:21', '2021-01-06 11:02:21'),
(115, '65', '', 'asas', '65', '', 0, 0, '2021-01-12 08:00:00', '1344', 0, 0, '2021-01-06 11:02:45', '2021-01-06 11:02:45'),
(116, '65', '', 'as', '65', '', 1, 0, '2021-01-06 11:14:03', '1344', 0, 0, '2021-01-06 11:13:12', '2021-01-06 11:14:03'),
(117, '65', '', 'qwqwq', '65', '', 0, 0, '2021-01-07 08:00:00', '53760', 0, 0, '2021-01-06 11:14:24', '2021-01-06 11:14:24'),
(118, '66', '', 'asdasdasd', '66', '', 0, 0, '2021-01-27 08:00:00', '224', 0, 0, '2021-01-06 11:15:59', '2021-01-06 11:15:59'),
(119, '66', '21-0010', 'bts', '66', 'rerere', 5, 0, '2021-01-06 11:22:20', '18547.2', 1, 0, '2021-01-06 11:22:03', '2021-01-15 15:00:30'),
(120, '72', '', 'sasasas', '66', '', 0, 0, '2021-01-10 08:00:00', '4.48', 0, 0, '2021-01-06 11:25:01', '2021-01-06 11:25:01'),
(121, '72', '21-0011', 'wewewe', '73', 'e4rerre', 5, 0, '2021-01-06 11:26:05', '4.48', 1, 0, '2021-01-06 11:25:53', '2021-01-15 09:39:41'),
(122, '72', '', 'erwere', '74', '', 0, 0, '2021-01-21 08:00:00', '80.64', 0, 0, '2021-01-06 14:40:09', '2021-01-06 14:40:09'),
(123, '65', '', 'qweqw', '65', '', 0, 0, '2021-01-22 08:00:00', '5376', 0, 0, '2021-01-06 14:49:10', '2021-01-06 14:49:10'),
(124, '65', '21-0013', 'playtime', '65', 'test', 7, 0, '2021-01-06 15:50:35', '1344', 0, 0, '2021-01-06 15:50:18', '2021-01-13 10:00:26'),
(125, '65', '', 'qweqwe', '65', '', 0, 0, '2021-01-30 08:00:00', '1344', 0, 0, '2021-01-06 15:58:15', '2021-01-06 15:58:15'),
(126, '65', '21-0014', 'dsasadsa', '65', 'dsadsa', 5, 0, '2021-01-06 16:36:22', '1344', 1, 0, '2021-01-06 16:35:04', '2021-01-15 09:38:01'),
(127, '65', '', 'Test', '65', '', 0, 0, '2021-02-01 08:00:00', '1344', 0, 0, '2021-01-06 16:42:09', '2021-01-06 16:42:09'),
(128, '65', '21-0015', 'asdasd', '65', 'asdasd', 7, 0, '2021-01-25 17:06:21', '1344', 0, 0, '2021-01-30 16:51:34', '2021-01-14 10:45:12'),
(129, '66', '', 'Eggplant', '66', '', 0, 0, '2021-01-19 00:00:00', '224', 0, 0, '2021-01-07 08:59:19', '2021-01-07 08:59:19'),
(130, '66', '', 'Eggplant', '66', '', 0, 0, '2021-01-28 00:00:00', '224', 0, 0, '2021-01-07 09:00:19', '2021-01-07 09:00:19'),
(131, '66', '', 'asdasdas', '66', '', 0, 0, '2021-01-13 00:00:00', '224', 0, 0, '2021-01-07 09:35:51', '2021-01-07 09:35:51'),
(132, '66', '', 'zxczxc', '66', '', 0, 0, '2021-01-20 00:00:00', '224', 0, 0, '2021-01-07 09:36:28', '2021-01-07 09:36:28'),
(133, '81', '21-0015', 'tres', '76', 'rere', 4, 1, '2021-01-19 00:00:00', '4.48', 0, 0, '2021-01-07 11:40:51', '2021-01-07 11:44:44'),
(134, '81', '', 'tres', '76', '', 0, 0, '2021-01-19 00:00:00', '13.44', 0, 0, '2021-01-07 11:40:52', '2021-01-07 11:40:52'),
(135, '65', '', 'eqweqwewq', '65', '', 0, 0, '2021-01-08 00:00:00', '6720', 0, 0, '2021-01-07 11:49:31', '2021-01-07 11:49:31'),
(136, '66', '', 'eqwewqewq', '66', '', 0, 0, '2021-01-08 00:00:00', '268.8', 0, 0, '2021-01-07 11:58:34', '2021-01-07 11:58:34'),
(137, '72', '', 'eqweqwewqe', '73', '', 0, 0, '2021-01-08 00:00:00', '73.92', 0, 0, '2021-01-07 12:02:54', '2021-01-07 12:02:54'),
(138, '68', '', 'wqeqwe', '67', '', 0, 0, '2021-01-12 00:00:00', '12.32', 0, 0, '2021-01-07 12:05:38', '2021-01-07 12:05:38'),
(139, '68', '', 'wqeqwe', '67', '', 0, 0, '2021-01-12 00:00:00', '36.96', 0, 0, '2021-01-07 12:05:38', '2021-01-07 12:05:38'),
(140, '66', '21-0017', 'wqewqe', '66', 'dsadsadsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaddsadsadsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaddsadsadsaaaaaaaa', 5, 0, '2021-01-16 00:00:00', '5.6', 0, 0, '2021-01-07 12:06:29', '2021-01-11 13:22:27'),
(141, '66', '', '123qwerty', '66', '', 1, 0, '2021-01-08 00:00:00', '806.4', 0, 0, '2021-01-07 12:25:28', '2021-01-07 12:25:34'),
(142, '66', '', 'qwqwqw', '66', '', 0, 0, '2021-01-27 00:00:00', '5.6', 0, 0, '2021-01-07 13:24:12', '2021-01-07 13:24:12'),
(143, '65', '', 'wqewqewqewqe', '65', '', 0, 0, '2021-01-09 00:00:00', '1344', 0, 0, '2021-01-07 13:34:27', '2021-01-07 13:34:27'),
(144, '82', '', 'billboardbillboardbillboardbillboardbillboardbillboardbillboardbillboardbillboardbillboardbillboardb', '77', '', 0, 0, '2021-01-14 00:00:00', '4.48', 0, 0, '2021-01-07 14:47:09', '2021-01-07 14:47:09'),
(145, '82', '', 'dfsdf', '77', '', 0, 0, '2021-01-21 00:00:00', '20.16', 0, 0, '2021-01-07 14:54:40', '2021-01-07 14:54:40'),
(146, '82', '', 'trtrt', '77', '', 0, 0, '2021-01-15 00:00:00', '6.72', 0, 0, '2021-01-07 14:55:13', '2021-01-07 14:55:13'),
(147, '82', '21-0017', 'erer', '77', 'd', 5, 0, '2021-01-23 00:00:00', '4.48', 0, 0, '2021-01-07 14:58:31', '2021-01-08 14:49:34'),
(148, '82', '21-0018', 'sdsd', '77', 's', 5, 0, '2021-01-19 00:00:00', '4.48', 0, 0, '2021-01-07 14:59:15', '2021-01-13 13:23:35'),
(149, '65', '', 'qwqw', '90', '', 0, 0, '2021-01-09 00:00:00', '1344', 0, 0, '2021-01-08 12:21:08', '2021-01-08 12:21:08'),
(150, '65', '21-0020', 'sdfdsdfsd', '90', 'weda', 7, 0, '2021-01-08 00:00:00', '1344', 0, 0, '2021-01-08 12:28:53', '2021-01-13 10:00:39'),
(151, '65', '', 'sdfdsdfsd', '90', '', 0, 0, '2021-01-08 00:00:00', '4032', 0, 0, '2021-01-08 12:28:53', '2021-01-08 12:28:53'),
(152, '66', '21-0020', 'qwertyyyyyyyyyyyyyy', '66', '', 7, 0, '2021-01-15 00:00:00', '5.6', 0, 0, '2021-01-08 12:38:32', '2021-01-13 09:59:14'),
(153, '66', '', 'qwertyyyyyyyyyyyyyy', '66', '', 0, 0, '2021-01-15 00:00:00', '16.8', 0, 0, '2021-01-08 12:38:33', '2021-01-08 12:38:33'),
(154, '65', '', 'dsadsa', '90', '', 0, 0, '2021-01-28 00:00:00', '1344', 0, 0, '2021-01-08 13:24:50', '2021-01-08 13:24:50'),
(155, '65', '', 'asdasdasd', '86', '', 0, 0, '2021-01-15 00:00:00', '1344', 0, 0, '2021-01-08 14:59:45', '2021-01-08 14:59:45'),
(156, '65', '', 'qwqqwqwqwqwqwqwqw', '90', '', 1, 0, '2021-01-14 00:00:00', '29568', 0, 0, '2021-01-08 15:02:26', '2021-01-08 15:02:34'),
(157, '65', '', 'asa', '90', '', 0, 0, '2021-01-04 00:00:00', '1344', 0, 0, '2021-01-08 15:33:42', '2021-01-08 15:33:42'),
(158, '70', '', 'qweqwe', '69', '', 0, 0, '2021-01-05 00:00:00', '1.12', 0, 0, '2021-01-08 15:52:07', '2021-01-08 15:52:07'),
(159, '65', '', 'asasasa', '90', '', 0, 0, '2021-01-20 00:00:00', '16128', 0, 0, '2021-01-08 16:01:46', '2021-01-08 16:01:46'),
(160, '65', '', 'cute ako', '90', '', 0, 0, '2021-01-20 00:00:00', '1344', 0, 0, '2021-01-08 16:14:32', '2021-01-08 16:14:32'),
(161, '65', '', 'sadsdasdas', '90', '', 0, 0, '2021-01-14 00:00:00', '1344', 0, 0, '2021-01-08 16:23:26', '2021-01-08 16:23:26'),
(162, '65', '', 'qewqe', '65', '', 0, 0, '2021-01-13 00:00:00', '1344', 0, 0, '2021-01-08 16:29:02', '2021-01-08 16:29:02'),
(163, '65', '', 'sadasd', '65', '', 0, 0, '2021-01-20 00:00:00', '1344', 0, 0, '2021-01-08 16:33:51', '2021-01-08 16:33:51'),
(164, '65', '', 'product_description', '90', '', 0, 0, '2021-01-07 00:00:00', '1344', 0, 0, '2021-01-08 16:37:44', '2021-01-08 16:37:44'),
(165, '66', '21-0021', 'Kape', '66', 'RETS', 7, 0, '2021-01-20 00:00:00', '2150.4', 0, 0, '2021-01-11 14:02:45', '2021-01-13 10:01:00'),
(166, '66', '21-0022', 'JUICE', '66', 'TGEST', 7, 0, '2021-01-15 00:00:00', '4502.4', 0, 0, '2021-01-11 14:03:20', '2021-01-13 10:01:13'),
(167, '66', '21-0023', 'Banner!', '66', 'jghjghj', 7, 0, '2021-01-22 00:00:00', '504', 0, 0, '2021-01-11 14:03:55', '2021-01-13 10:01:52'),
(168, '87', '', 'TARPAULIN ', '91', '', 0, 0, '2021-02-24 00:00:00', '8.96', 0, 0, '2021-01-11 14:09:10', '2021-01-11 14:09:10'),
(169, '87', '21-0024', 'Tarpaulin', '91', '', 5, 0, '2021-01-14 00:00:00', '4.48', 0, 0, '2021-01-11 14:10:21', '2021-01-14 17:04:44'),
(170, '65', '', 'project', '90', '', 1, 0, '2021-01-12 00:00:00', '16128', 0, 0, '2021-01-11 14:59:20', '2021-01-11 15:08:11'),
(171, '65', '21-0026', 'Chowking', '90', '', 7, 0, '2021-01-12 00:00:00', '32256', 0, 0, '2021-01-11 15:09:42', '2021-01-12 13:22:56'),
(172, '65', '', 'sdsadsad', '90', '', 1, 0, '2021-01-12 00:00:00', '1344', 0, 0, '2021-01-11 15:10:31', '2021-01-11 15:10:36'),
(173, '65', '21-0025', 'Honey Bee', '94', '', 7, 0, '2021-01-12 00:00:00', '1344', 0, 0, '2021-01-11 15:16:46', '2021-01-12 09:09:26'),
(174, '65', '21-0027', 'Mang Inasal', '94', '', 5, 0, '2021-01-14 00:00:00', '43008', 0, 1, '2021-01-11 16:59:13', '2021-01-15 09:04:30'),
(175, '65', '', 'Bulletin Board', '94', '', 0, 0, '2021-01-20 00:00:00', '1344', 0, 0, '2021-01-12 11:05:52', '2021-01-12 11:05:52'),
(176, '65', '', 'Tokyo tokyo', '94', '', 1, 0, '2021-01-13 00:00:00', '1344', 0, 0, '2021-01-12 11:11:58', '2021-01-12 11:12:07'),
(177, '65', '', 'qwqwq', '94', '', 0, 0, '2021-01-14 00:00:00', '1344', 0, 0, '2021-01-12 13:14:37', '2021-01-12 13:14:37'),
(178, '65', '', 'qwq', '94', '', 0, 0, '2021-01-29 00:00:00', '1344', 0, 0, '2021-01-12 14:24:08', '2021-01-12 14:24:08'),
(179, '66', '', 'asdasd', '66', '', 1, 0, '2021-01-28 00:00:00', '280', 0, 0, '2021-01-12 16:21:30', '2021-01-12 16:21:36'),
(186, '65', '21-0028', 'Test', '94', '', 4, 0, '2021-01-26 00:00:00', '1344', 0, 1, '2021-01-13 08:51:18', '2021-01-15 08:59:16'),
(187, '65', '21-0029', 'hp', '94', '', 5, 0, '2021-01-14 00:00:00', '1344', 0, 1, '2021-01-13 08:51:35', '2021-01-15 09:38:48'),
(188, '65', '', 'Test', '94', '', 1, 0, '2021-01-26 00:00:00', '1344', 0, 0, '2021-01-13 08:52:46', '2021-01-13 08:52:56'),
(189, '65', '', 'intel', '94', '', 1, 0, '2021-01-14 00:00:00', '1344', 0, 0, '2021-01-13 08:54:12', '2021-01-13 08:54:18'),
(190, '65', '', 'qwewq', '94', '', 1, 0, '2021-01-12 00:00:00', '1344', 0, 0, '2021-01-13 09:32:33', '2021-01-13 09:33:02'),
(191, '66', '', 'Thee Print', '66', '', 0, 0, '2021-01-27 00:00:00', '1612.8', 0, 0, '2021-01-13 09:47:33', '2021-01-13 09:47:33'),
(192, '65', '', 'asdada', '94', '', 0, 0, '2021-01-27 00:00:00', '1344', 0, 0, '2021-01-13 09:50:17', '2021-01-13 09:50:17'),
(193, '82', '21-0030', 'tarp', '77', '', 5, 0, '2021-01-29 00:00:00', '2.24', 0, 0, '2021-01-13 13:06:54', '2021-01-14 16:17:13'),
(194, '89', '21-0032', 'rope', '93', '', 3, 0, '2021-02-27 00:00:00', '2.24', 0, 0, '2021-01-13 13:08:28', '2021-01-18 15:44:03'),
(195, '82', '21-0033', 'taw', '77', '', 5, 0, '2021-01-31 00:00:00', '156.8', 0, 0, '2021-01-13 13:09:47', '2021-01-13 13:24:23'),
(196, '71', '21-0034', 'sticker', '70', '', 5, 0, '2021-04-29 00:00:00', '134.4', 0, 0, '2021-01-13 13:14:21', '2021-01-15 09:46:08'),
(197, '65', '', 'aasd', '94', '', 6, 0, '2021-01-28 00:00:00', '1344', 0, 0, '2021-01-14 10:20:40', '2021-01-14 10:26:28'),
(198, '82', '21-0035', 'asdasdasd', '77', '', 5, 0, '2021-01-21 00:00:00', '752.64', 0, 0, '2021-01-14 11:07:36', '2021-01-15 09:33:51'),
(199, '84', '21-0036', 'dfhncghj', '78', '', 5, 0, '2021-01-07 00:00:00', '752.64', 0, 0, '2021-01-14 11:13:17', '2021-01-15 09:33:11'),
(200, '65', '', 'zxczzxczxc', '94', '', 1, 0, '2021-02-04 00:00:00', '822528', 0, 0, '2021-01-14 11:22:37', '2021-01-14 11:22:43'),
(201, '65', '', 'Chocolate', '65', '', 1, 0, '2021-01-30 00:00:00', '72576', 0, 0, '2021-01-14 13:02:29', '2021-01-14 13:02:35'),
(202, '81', '21-0037', 'asas', '76', '', 5, 0, '2021-01-16 00:00:00', '2.24', 0, 0, '2021-01-14 15:45:52', '2021-01-15 09:45:43'),
(203, '77', '', 'Test Project', '96', '', 6, 0, '2021-01-16 00:00:00', '1.12', 0, 0, '2021-01-15 09:40:53', '2021-01-15 09:41:02'),
(204, '72', '', 'Test Lang', '73', '', 0, 0, '2021-01-19 00:00:00', '2.24', 0, 0, '2021-01-15 09:50:00', '2021-01-15 09:50:00'),
(205, '65', '21-0038', 'Test Project', '86', '', 5, 0, '2021-01-16 00:00:00', '1344', 0, 0, '2021-01-15 09:54:21', '2021-01-18 15:44:13'),
(206, '99', '', 'T-shirt', '97', '', 0, 0, '2021-01-30 00:00:00', '8.96', 0, 0, '2021-01-15 09:58:24', '2021-01-15 09:58:24'),
(207, '99', '', 'T-shirt', '97', '', 0, 0, '2021-01-30 00:00:00', '26.88', 0, 0, '2021-01-15 09:58:29', '2021-01-15 09:58:29'),
(208, '72', '', 'rerereer', '74', '', 0, 0, '2021-01-29 00:00:00', '17.92', 0, 0, '2021-01-15 10:41:06', '2021-01-15 10:41:06'),
(209, '99', '21-0039', 'thesipt', '97', '', 2, 0, '2021-01-27 00:00:00', '17.92', 0, 0, '2021-01-15 10:43:31', '2021-01-15 10:44:26'),
(210, '78', '', 'sdfsdfsdfs', '98', '', 0, 0, '2021-01-16 00:00:00', '1.12', 0, 0, '2021-01-15 10:45:14', '2021-01-15 10:45:14'),
(211, '65', '21-0040', 'eqweqw', '94', '', 2, 0, '2021-01-15 00:00:00', '1344', 0, 0, '2021-01-15 10:46:45', '2021-01-15 10:46:58'),
(212, '70', '21-0041', 'eqwewqe', '69', '', 2, 0, '2021-01-20 00:00:00', '1.12', 0, 0, '2021-01-15 10:48:01', '2021-01-15 10:48:12'),
(213, '99', '21-0042', 'T shirttthee', '97', '', 2, 0, '2021-01-31 00:00:00', '8.96', 0, 0, '2021-01-15 10:51:38', '2021-01-15 10:51:50'),
(214, '65', '', 'test', '65', '', 0, 0, '2021-01-29 00:00:00', '1344', 0, 0, '2021-01-15 10:53:35', '2021-01-15 10:53:35'),
(215, '69', '21-0045', 'dasd', '68', '', 2, 0, '2021-01-20 00:00:00', '1.12', 0, 0, '2021-01-15 10:54:05', '2021-01-15 10:56:46'),
(216, '99', '21-0044', 'THEEE', '97', '', 2, 0, '2021-01-31 00:00:00', '322.56', 0, 0, '2021-01-15 10:55:30', '2021-01-15 10:55:41'),
(217, '72', '21-0045', 'yuyuy', '73', 'rerererere', 2, 0, '2021-01-20 00:00:00', '4.48', 0, 0, '2021-01-15 14:56:03', '2021-01-15 14:56:41'),
(218, '78', '21-0046', 'Test Project', '98', '', 2, 0, '2021-01-19 00:00:00', '1.12', 0, 0, '2021-01-18 13:28:16', '2021-01-18 13:28:37'),
(219, '81', '21-0047', 'asdad', '76', '', 2, 0, '2021-01-26 00:00:00', '13552', 0, 0, '2021-01-18 14:03:21', '2021-01-18 14:03:41'),
(220, '82', '21-0048', '1312312asdadasd', '77', '', 2, 0, '2021-01-19 00:00:00', '161.28', 0, 0, '2021-01-18 14:08:59', '2021-01-18 14:09:19'),
(221, '83', '21-0050', 'asdadsad', '99', '', 2, 0, '2021-01-31 00:00:00', '1.12', 0, 0, '2021-01-18 14:12:20', '2021-01-18 14:13:06'),
(222, '78', '21-0051', 'asdasdsads', '98', '', 2, 0, '2021-02-03 00:00:00', '1.12', 0, 0, '2021-01-18 14:19:34', '2021-01-18 14:33:38');

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
(152, '2', '64', '1', '', '0000-00-00 00:00:00', '2020-12-29 00:00:00', '2020-12-29 16:56:56'),
(153, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 11:16:10'),
(154, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 11:16:31'),
(155, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 11:51:50'),
(156, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 11:51:50'),
(157, '8', '1', '65', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 12:39:40'),
(158, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 12:41:37'),
(159, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 12:42:04'),
(160, '8', '1', '65', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 12:42:41'),
(161, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 12:47:24'),
(162, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 12:47:37'),
(163, '3', '1', '65', 'Your job order is now being processed', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 12:48:20'),
(164, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 12:53:15'),
(165, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 12:54:06'),
(166, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 14:07:49'),
(167, '4', '1', '65', 'You job order has been delivered', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 16:14:26'),
(168, '4', '1', '65', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 16:14:26'),
(169, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 16:50:23'),
(170, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 17:16:45'),
(171, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 17:17:00'),
(172, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-04 00:00:00', '2021-01-04 17:17:32'),
(173, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 08:31:27'),
(174, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 11:10:34'),
(175, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 11:21:48'),
(176, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 11:31:45'),
(177, '3', '1', '66', 'Your job order is now being processed', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 11:42:39'),
(178, '3', '1', '66', 'Your job order is now being processed', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 11:43:12'),
(179, '4', '1', '66', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 11:43:12'),
(180, '4', '1', '66', 'You job order has been delivered', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 11:43:33'),
(181, '4', '1', '66', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 11:43:33'),
(182, '3', '1', '66', 'Your job order is now being processed', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 11:46:06'),
(183, '4', '1', '66', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 11:46:07'),
(184, '4', '1', '66', 'You job order has been delivered', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 11:46:22'),
(185, '4', '1', '66', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 11:46:22'),
(186, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 11:55:56'),
(187, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 11:56:37'),
(188, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 11:57:17'),
(189, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 14:57:30'),
(190, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 14:57:31'),
(191, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 14:57:41'),
(192, '8', '1', '66', '', '0000-00-00 00:00:00', '2021-01-05 00:00:00', '2021-01-05 15:32:07'),
(193, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 08:34:58'),
(194, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 08:40:52'),
(195, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 08:52:24'),
(196, '1', '71', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 09:48:59'),
(197, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 09:52:09'),
(198, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 10:50:10'),
(199, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 10:50:31'),
(200, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 10:53:06'),
(201, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 10:56:23'),
(202, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 10:56:24'),
(203, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 10:56:27'),
(204, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 10:56:27'),
(205, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 10:57:11'),
(206, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 10:59:00'),
(207, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 10:59:30'),
(208, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 11:00:22'),
(209, '1', '71', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 11:02:08'),
(210, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 11:02:22'),
(211, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 11:02:45'),
(212, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 11:13:12'),
(213, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 11:14:24'),
(214, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 11:15:59'),
(215, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 11:22:03'),
(216, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 11:22:20'),
(217, '1', '72', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 11:25:01'),
(218, '1', '72', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 11:25:54'),
(219, '2', '72', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 11:26:05'),
(220, '3', '1', '66', 'Your job order is now being processed', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 11:34:36'),
(221, '1', '72', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 14:40:09'),
(222, '1', '72', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 14:40:09'),
(223, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 14:49:10'),
(224, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 14:49:10'),
(225, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 14:49:10'),
(226, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 15:50:18'),
(227, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 15:50:18'),
(228, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 15:50:18'),
(229, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 15:50:35'),
(230, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 15:50:35'),
(231, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 15:50:35'),
(232, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 15:50:35'),
(233, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 15:50:35'),
(234, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 15:50:35'),
(235, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 15:50:35'),
(236, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 15:50:36'),
(237, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 15:50:36'),
(238, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 15:58:15'),
(239, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 15:58:15'),
(240, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 15:58:15'),
(241, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:35:04'),
(242, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:35:04'),
(243, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:35:04'),
(244, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:36:19'),
(245, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:36:19'),
(246, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:36:19'),
(247, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:36:22'),
(248, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:36:22'),
(249, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:36:22'),
(250, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:42:09'),
(251, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:42:09'),
(252, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:42:09'),
(253, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:51:34'),
(254, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:51:34'),
(255, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:51:34'),
(256, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:53:14'),
(257, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:53:14'),
(258, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 16:53:14'),
(259, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 17:02:07'),
(260, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 17:02:08'),
(261, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 17:02:08'),
(262, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 17:04:56'),
(263, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 17:04:56'),
(264, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 17:04:56'),
(265, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 17:06:21'),
(266, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 17:06:21'),
(267, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 17:06:21'),
(268, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 17:07:59'),
(269, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 17:07:59'),
(270, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-06 00:00:00', '2021-01-06 17:07:59'),
(271, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 08:59:19'),
(272, '1', '66', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 08:59:19'),
(273, '1', '66', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 08:59:19'),
(274, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 09:00:19'),
(275, '1', '66', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 09:00:19'),
(276, '1', '66', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 09:00:19'),
(277, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 09:35:52'),
(278, '1', '66', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 09:35:52'),
(279, '1', '66', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 09:35:52'),
(280, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 09:36:28'),
(281, '1', '66', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 09:36:28'),
(282, '1', '66', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 09:36:28'),
(283, '1', '81', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:40:52'),
(284, '1', '81', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:40:52'),
(285, '1', '81', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:40:52'),
(286, '1', '81', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:40:53'),
(287, '1', '81', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:40:53'),
(288, '1', '81', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:40:53'),
(289, '2', '81', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:41:09'),
(290, '2', '81', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:41:09'),
(291, '2', '81', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:41:09'),
(292, '3', '1', '81', 'Your job order is now being processed', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:44:08'),
(293, '4', '1', '81', 'You job order has been delivered', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:44:44'),
(294, '4', '1', '81', 'Your payment for job order has been confirm', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:44:44'),
(295, '8', '1', '65', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:47:48'),
(296, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:49:31'),
(297, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:49:31'),
(298, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:49:31'),
(299, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:58:34'),
(300, '1', '66', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:58:34'),
(301, '1', '66', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 11:58:34'),
(302, '1', '72', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:02:54'),
(303, '1', '72', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:02:54'),
(304, '1', '72', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:02:54'),
(305, '1', '68', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:05:38'),
(306, '1', '68', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:05:38'),
(307, '1', '68', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:05:38'),
(308, '1', '68', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:05:39'),
(309, '1', '68', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:05:39'),
(310, '1', '68', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:05:39'),
(311, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:06:29'),
(312, '1', '66', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:06:29'),
(313, '1', '66', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:06:29'),
(314, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:07:22'),
(315, '2', '66', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:07:22'),
(316, '2', '66', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:07:22'),
(317, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:09:37'),
(318, '2', '66', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:09:37'),
(319, '2', '66', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:09:37'),
(320, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:11:04'),
(321, '2', '66', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:11:04'),
(322, '2', '66', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:11:04'),
(323, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:12:55'),
(324, '2', '66', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:12:55'),
(325, '2', '66', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:12:55'),
(326, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:18:14'),
(327, '2', '66', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:18:14'),
(328, '2', '66', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:18:14'),
(329, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:23:24'),
(330, '2', '66', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:23:24'),
(331, '2', '66', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:23:24'),
(332, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:25:28'),
(333, '1', '66', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:25:28'),
(334, '1', '66', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 12:25:29'),
(335, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 13:24:12'),
(336, '1', '66', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 13:24:12'),
(337, '1', '66', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 13:24:12'),
(338, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 13:34:28'),
(339, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 13:34:28'),
(340, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 13:34:28'),
(341, '1', '82', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:47:09'),
(342, '1', '82', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:47:09'),
(343, '1', '82', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:47:09'),
(344, '1', '82', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:54:40'),
(345, '1', '82', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:54:40'),
(346, '1', '82', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:54:40'),
(347, '1', '82', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:55:13'),
(348, '1', '82', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:55:13'),
(349, '1', '82', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:55:13'),
(350, '1', '82', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:58:31'),
(351, '1', '82', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:58:31'),
(352, '1', '82', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:58:31'),
(353, '2', '82', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:58:54'),
(354, '2', '82', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:58:54'),
(355, '2', '82', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:58:54'),
(356, '1', '82', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:59:15'),
(357, '1', '82', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:59:15'),
(358, '1', '82', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:59:15'),
(359, '2', '82', '1', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:59:48'),
(360, '2', '82', '136', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:59:48'),
(361, '2', '82', '144', '', '0000-00-00 00:00:00', '2021-01-07 00:00:00', '2021-01-07 14:59:48'),
(362, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:21:08'),
(363, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:21:08'),
(364, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:21:08'),
(365, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:21:08'),
(366, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:28:53'),
(367, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:28:53'),
(368, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:28:53'),
(369, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:28:53'),
(370, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:28:53'),
(371, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:28:53'),
(372, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:28:53'),
(373, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:28:53'),
(374, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:31:30'),
(375, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:31:30'),
(376, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:31:30'),
(377, '2', '65', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:31:30'),
(378, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:33:40'),
(379, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:33:40'),
(380, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:33:40'),
(381, '2', '65', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:33:40'),
(382, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:38:32'),
(383, '1', '66', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:38:33'),
(384, '1', '66', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:38:33'),
(385, '1', '66', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:38:33'),
(386, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:38:33'),
(387, '1', '66', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:38:33'),
(388, '1', '66', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:38:33'),
(389, '1', '66', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:38:33'),
(390, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:39:45'),
(391, '2', '66', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:39:46'),
(392, '2', '66', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:39:46'),
(393, '2', '66', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 12:39:46'),
(394, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 13:24:51'),
(395, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 13:24:51'),
(396, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 13:24:51'),
(397, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 13:24:51'),
(398, '8', '1', '66', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 14:31:01'),
(399, '8', '1', '66', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 14:45:05'),
(400, '8', '1', '66', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 14:46:36'),
(401, '8', '1', '82', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 14:49:34'),
(402, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 14:59:45'),
(403, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 14:59:45'),
(404, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 14:59:45'),
(405, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 14:59:45'),
(406, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 15:02:27'),
(407, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 15:02:27'),
(408, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 15:02:27'),
(409, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 15:02:27'),
(410, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 15:33:42'),
(411, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 15:33:42'),
(412, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 15:33:42'),
(413, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 15:33:42'),
(414, '1', '70', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 15:52:07'),
(415, '1', '70', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 15:52:07'),
(416, '1', '70', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 15:52:07'),
(417, '1', '70', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 15:52:07'),
(418, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:01:46'),
(419, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:01:46'),
(420, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:01:46'),
(421, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:01:47'),
(422, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:14:32'),
(423, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:14:32'),
(424, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:14:32'),
(425, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:14:32'),
(426, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:23:26'),
(427, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:23:26'),
(428, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:23:27'),
(429, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:23:27'),
(430, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:29:03'),
(431, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:29:03'),
(432, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:29:03'),
(433, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:29:03'),
(434, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:33:51'),
(435, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:33:51'),
(436, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:33:51'),
(437, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:33:51'),
(438, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:37:44'),
(439, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:37:44'),
(440, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:37:44'),
(441, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 16:37:44'),
(442, '8', '1', '66', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 13:22:27'),
(443, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:02:45'),
(444, '1', '66', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:02:45'),
(445, '1', '66', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:02:45'),
(446, '1', '66', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:02:45'),
(447, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:02:58'),
(448, '2', '66', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:02:58'),
(449, '2', '66', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:02:58'),
(450, '2', '66', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:02:58'),
(451, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:03:20'),
(452, '1', '66', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:03:20'),
(453, '1', '66', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:03:20'),
(454, '1', '66', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:03:20'),
(455, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:03:31'),
(456, '2', '66', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:03:31'),
(457, '2', '66', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:03:31'),
(458, '2', '66', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:03:31'),
(459, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:03:55'),
(460, '1', '66', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:03:55'),
(461, '1', '66', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:03:55'),
(462, '1', '66', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:03:55'),
(463, '2', '66', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:04:06'),
(464, '2', '66', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:04:06'),
(465, '2', '66', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:04:06'),
(466, '2', '66', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:04:06'),
(467, '1', '87', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:09:10'),
(468, '1', '87', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:09:10'),
(469, '1', '87', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:09:10'),
(470, '1', '87', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:09:10'),
(471, '1', '87', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:10:21'),
(472, '1', '87', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:10:21'),
(473, '1', '87', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:10:21'),
(474, '1', '87', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:10:21'),
(475, '2', '87', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:13:34'),
(476, '2', '87', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:13:34'),
(477, '2', '87', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:13:34'),
(478, '2', '87', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:13:34'),
(479, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:59:21'),
(480, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:59:21'),
(481, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:59:21'),
(482, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:59:21'),
(483, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 14:59:21'),
(484, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:09:42'),
(485, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:09:42'),
(486, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:09:42'),
(487, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:09:42'),
(488, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:09:42'),
(489, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:10:31'),
(490, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:10:32'),
(491, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:10:32'),
(492, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:10:32'),
(493, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:10:32'),
(494, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:16:47'),
(495, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:16:47'),
(496, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:16:47'),
(497, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:16:47'),
(498, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:16:47'),
(499, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:16:58'),
(500, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:16:58'),
(501, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:16:58'),
(502, '2', '65', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:16:58'),
(503, '2', '65', '155', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:16:58'),
(504, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:46:29'),
(505, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:46:29'),
(506, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:46:29'),
(507, '2', '65', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:46:29'),
(508, '2', '65', '155', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 15:46:29'),
(509, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 16:59:14'),
(510, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 16:59:14'),
(511, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 16:59:14'),
(512, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 16:59:14'),
(513, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 16:59:14'),
(514, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 17:04:28'),
(515, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 17:04:28'),
(516, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 17:04:28'),
(517, '2', '65', '150', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 17:04:28'),
(518, '2', '65', '155', '', '0000-00-00 00:00:00', '2021-01-11 00:00:00', '2021-01-11 17:04:28'),
(519, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 11:05:52'),
(520, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 11:05:52'),
(521, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 11:05:52'),
(522, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 11:05:52'),
(523, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 11:05:52'),
(524, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 11:11:58'),
(525, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 11:11:58'),
(526, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 11:11:58'),
(527, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 11:11:58'),
(528, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 11:11:58'),
(529, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 13:14:37'),
(530, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 13:14:37'),
(531, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 13:14:37'),
(532, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 13:14:37'),
(533, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 13:14:37'),
(534, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 14:24:08'),
(535, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 14:24:08'),
(536, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 14:24:08'),
(537, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 14:24:08'),
(538, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 14:24:08'),
(539, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 16:21:30');
INSERT INTO `notifications` (`notification_id`, `notification_type`, `notification_sender`, `notification_receiver`, `notification_data`, `notification_read_at`, `created_at`, `updated_at`) VALUES
(540, '1', '66', '136', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 16:21:30'),
(541, '1', '66', '144', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 16:21:30'),
(542, '1', '66', '150', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 16:21:30'),
(543, '1', '66', '155', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 16:21:30'),
(544, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 16:22:29'),
(545, '1', '66', '136', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 16:22:29'),
(546, '1', '66', '144', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 16:22:29'),
(547, '1', '66', '150', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 16:22:30'),
(548, '1', '66', '155', '', '0000-00-00 00:00:00', '2021-01-12 00:00:00', '2021-01-12 16:22:30'),
(549, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:34:37'),
(550, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:34:37'),
(551, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:34:37'),
(552, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:34:37'),
(553, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:34:37'),
(554, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:35:22'),
(555, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:35:22'),
(556, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:35:23'),
(557, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:35:23'),
(558, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:35:23'),
(559, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:45:38'),
(560, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:45:38'),
(561, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:45:38'),
(562, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:45:38'),
(563, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:45:38'),
(564, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:46:38'),
(565, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:46:38'),
(566, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:46:38'),
(567, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:46:38'),
(568, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:46:38'),
(569, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:47:54'),
(570, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:47:55'),
(571, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:47:55'),
(572, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:47:55'),
(573, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:47:55'),
(574, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:51:19'),
(575, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:51:19'),
(576, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:51:19'),
(577, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:51:19'),
(578, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:51:19'),
(579, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:51:37'),
(580, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:51:37'),
(581, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:51:37'),
(582, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:51:37'),
(583, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:51:37'),
(584, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:52:00'),
(585, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:52:00'),
(586, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:52:00'),
(587, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:52:00'),
(588, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:52:00'),
(589, '2', '65', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:52:00'),
(590, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:52:00'),
(591, '2', '65', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:52:00'),
(592, '2', '65', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:52:00'),
(593, '2', '65', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:52:00'),
(594, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:52:48'),
(595, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:52:48'),
(596, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:52:48'),
(597, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:52:48'),
(598, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:52:48'),
(599, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:54:12'),
(600, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:54:12'),
(601, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:54:12'),
(602, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:54:12'),
(603, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 08:54:12'),
(604, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 09:32:33'),
(605, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 09:32:33'),
(606, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 09:32:33'),
(607, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 09:32:33'),
(608, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 09:32:33'),
(609, '1', '66', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 09:47:33'),
(610, '1', '66', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 09:47:33'),
(611, '1', '66', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 09:47:33'),
(612, '1', '66', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 09:47:33'),
(613, '1', '66', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 09:47:34'),
(614, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 09:50:17'),
(615, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 09:50:17'),
(616, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 09:50:17'),
(617, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 09:50:17'),
(618, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 09:50:17'),
(619, '1', '82', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:06:54'),
(620, '1', '82', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:06:54'),
(621, '1', '82', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:06:54'),
(622, '1', '82', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:06:54'),
(623, '1', '82', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:06:54'),
(624, '2', '82', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:07:10'),
(625, '2', '82', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:07:10'),
(626, '2', '82', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:07:10'),
(627, '2', '82', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:07:10'),
(628, '2', '82', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:07:10'),
(629, '1', '89', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:28'),
(630, '1', '89', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:28'),
(631, '1', '89', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:28'),
(632, '1', '89', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:28'),
(633, '1', '89', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:28'),
(634, '2', '89', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:37'),
(635, '2', '89', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:37'),
(636, '2', '89', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:37'),
(637, '2', '89', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:37'),
(638, '2', '89', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:38'),
(639, '2', '89', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(640, '2', '89', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(641, '2', '89', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(642, '2', '89', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(643, '2', '89', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(644, '2', '89', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(645, '2', '89', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(646, '2', '89', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(647, '2', '89', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(648, '2', '89', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(649, '2', '89', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(650, '2', '89', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(651, '2', '89', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(652, '2', '89', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(653, '2', '89', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(654, '2', '89', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(655, '2', '89', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(656, '2', '89', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(657, '2', '89', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(658, '2', '89', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(659, '2', '89', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(660, '2', '89', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(661, '2', '89', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(662, '2', '89', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(663, '2', '89', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(664, '2', '89', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:39'),
(665, '2', '89', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:40'),
(666, '2', '89', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:40'),
(667, '2', '89', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:40'),
(668, '2', '89', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:08:40'),
(669, '1', '82', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:09:48'),
(670, '1', '82', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:09:48'),
(671, '1', '82', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:09:48'),
(672, '1', '82', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:09:48'),
(673, '1', '82', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:09:48'),
(674, '2', '82', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:02'),
(675, '2', '82', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:02'),
(676, '2', '82', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:02'),
(677, '2', '82', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(678, '2', '82', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(679, '2', '82', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(680, '2', '82', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(681, '2', '82', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(682, '2', '82', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(683, '2', '82', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(684, '2', '82', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(685, '2', '82', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(686, '2', '82', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(687, '2', '82', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(688, '2', '82', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(689, '2', '82', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(690, '2', '82', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(691, '2', '82', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(692, '2', '82', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(693, '2', '82', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(694, '2', '82', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(695, '2', '82', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(696, '2', '82', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(697, '2', '82', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(698, '2', '82', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(699, '2', '82', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(700, '2', '82', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:03'),
(701, '2', '82', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:04'),
(702, '2', '82', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:04'),
(703, '2', '82', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:04'),
(704, '2', '82', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:04'),
(705, '2', '82', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:04'),
(706, '2', '82', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:04'),
(707, '2', '82', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:04'),
(708, '2', '82', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:10:04'),
(709, '1', '71', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:23'),
(710, '1', '71', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:23'),
(711, '1', '71', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:23'),
(712, '1', '71', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:23'),
(713, '1', '71', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:23'),
(714, '2', '71', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(715, '2', '71', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(716, '2', '71', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(717, '2', '71', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(718, '2', '71', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(719, '2', '71', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(720, '2', '71', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(721, '2', '71', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(722, '2', '71', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(723, '2', '71', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(724, '2', '71', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(725, '2', '71', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(726, '2', '71', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(727, '2', '71', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(728, '2', '71', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(729, '2', '71', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(730, '2', '71', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:37'),
(731, '2', '71', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:38'),
(732, '2', '71', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:38'),
(733, '2', '71', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:38'),
(734, '2', '71', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:38'),
(735, '2', '71', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:38'),
(736, '2', '71', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:38'),
(737, '2', '71', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:38'),
(738, '2', '71', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:38'),
(739, '2', '71', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:42'),
(740, '2', '71', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:42'),
(741, '2', '71', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:42'),
(742, '2', '71', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:42'),
(743, '2', '71', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:42'),
(744, '2', '71', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:43'),
(745, '2', '71', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:43'),
(746, '2', '71', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:44'),
(747, '2', '71', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:44'),
(748, '2', '71', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:44'),
(749, '2', '71', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:44'),
(750, '2', '71', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:44'),
(751, '2', '71', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:44'),
(752, '2', '71', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:45'),
(753, '2', '71', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:45'),
(754, '2', '71', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:45'),
(755, '2', '71', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:45'),
(756, '2', '71', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:45'),
(757, '2', '71', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:45'),
(758, '2', '71', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:45'),
(759, '2', '71', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:48'),
(760, '2', '71', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:48'),
(761, '2', '71', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:48'),
(762, '2', '71', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:48'),
(763, '2', '71', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:14:48'),
(764, '8', '1', '82', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:23:35'),
(765, '8', '1', '82', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 13:24:23'),
(766, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 15:34:24'),
(767, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 15:34:24'),
(768, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 15:34:24'),
(769, '2', '65', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 15:34:24'),
(770, '2', '65', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 15:34:24'),
(771, '2', '65', '159', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 15:34:24'),
(772, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 15:34:27'),
(773, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 15:34:27'),
(774, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 15:34:28'),
(775, '2', '65', '150', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 15:34:28'),
(776, '2', '65', '155', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 15:34:28'),
(777, '2', '65', '159', '', '0000-00-00 00:00:00', '2021-01-13 00:00:00', '2021-01-13 15:34:28'),
(778, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 10:20:40'),
(779, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 10:20:41'),
(780, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 10:20:41'),
(781, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 10:20:41'),
(782, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 10:20:41'),
(783, '1', '65', '159', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 10:20:41'),
(784, '1', '65', '160', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 10:20:41'),
(785, '1', '82', '1', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:07:36'),
(786, '1', '82', '136', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:07:36'),
(787, '1', '82', '144', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:07:36'),
(788, '1', '82', '150', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:07:37'),
(789, '1', '82', '155', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:07:37'),
(790, '1', '82', '159', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:07:37'),
(791, '1', '82', '160', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:07:37'),
(792, '2', '82', '1', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:07:45'),
(793, '2', '82', '136', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:07:45'),
(794, '2', '82', '144', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:07:45'),
(795, '2', '82', '150', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:07:45'),
(796, '2', '82', '155', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:07:45'),
(797, '2', '82', '159', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:07:46'),
(798, '2', '82', '160', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:07:46'),
(799, '1', '84', '1', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:13:17'),
(800, '1', '84', '136', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:13:17'),
(801, '1', '84', '144', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:13:17'),
(802, '1', '84', '150', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:13:18'),
(803, '1', '84', '155', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:13:18'),
(804, '1', '84', '159', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:13:18'),
(805, '1', '84', '160', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:13:18'),
(806, '2', '84', '1', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:13:26'),
(807, '2', '84', '136', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:13:26'),
(808, '2', '84', '144', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:13:26'),
(809, '2', '84', '150', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:13:26'),
(810, '2', '84', '155', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:13:27'),
(811, '2', '84', '159', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:13:27'),
(812, '2', '84', '160', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:13:27'),
(813, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:22:38'),
(814, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:22:38'),
(815, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:22:38'),
(816, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:22:38'),
(817, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:22:38'),
(818, '1', '65', '159', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:22:38'),
(819, '1', '65', '160', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 11:22:38'),
(820, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 13:02:29'),
(821, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 13:02:29'),
(822, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 13:02:29'),
(823, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 13:02:29'),
(824, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 13:02:29'),
(825, '1', '65', '159', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 13:02:29'),
(826, '1', '65', '160', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 13:02:30'),
(827, '1', '81', '1', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 15:45:52'),
(828, '1', '81', '136', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 15:45:52'),
(829, '1', '81', '144', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 15:45:52'),
(830, '1', '81', '150', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 15:45:52'),
(831, '1', '81', '155', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 15:45:52'),
(832, '1', '81', '159', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 15:45:52'),
(833, '1', '81', '160', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 15:45:53'),
(834, '2', '81', '1', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 15:46:15'),
(835, '2', '81', '136', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 15:46:15'),
(836, '2', '81', '144', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 15:46:15'),
(837, '2', '81', '150', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 15:46:15'),
(838, '2', '81', '155', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 15:46:15'),
(839, '2', '81', '159', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 15:46:15'),
(840, '2', '81', '160', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 15:46:15'),
(841, '3', '1', '72', 'Your job order is now being processed.', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 16:07:50'),
(842, '8', '1', '72', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 16:09:33'),
(843, '8', '1', '65', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 16:11:44'),
(844, '8', '1', '82', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 16:17:13'),
(845, '8', '1', '87', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 17:04:44'),
(846, '8', '1', '65', '', '0000-00-00 00:00:00', '2021-01-14 00:00:00', '2021-01-14 17:07:16'),
(847, '3', '1', '65', 'Your job order is now being processed.as', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 08:58:25'),
(848, '4', '1', '65', 'You job order has been delivered.as', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 08:58:40'),
(849, '4', '1', '65', 'Your payment for job order is still pending. Kindly set', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 08:58:40'),
(850, '8', '1', '65', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:32:53'),
(851, '8', '1', '84', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:33:11'),
(852, '8', '1', '82', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:33:51'),
(853, '1', '77', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:40:53'),
(854, '1', '77', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:40:53'),
(855, '1', '77', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:40:53'),
(856, '1', '77', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:40:53'),
(857, '1', '77', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:40:54'),
(858, '1', '77', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:40:54'),
(859, '1', '77', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:40:54'),
(860, '8', '1', '65', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:42:19'),
(861, '8', '1', '81', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:45:43'),
(862, '8', '1', '71', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:46:08'),
(863, '1', '72', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:50:00'),
(864, '1', '72', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:50:00'),
(865, '1', '72', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:50:00'),
(866, '1', '72', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:50:00'),
(867, '1', '72', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:50:00'),
(868, '1', '72', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:50:00'),
(869, '1', '72', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:50:00'),
(870, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:54:22'),
(871, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:54:22'),
(872, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:54:22'),
(873, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:54:22'),
(874, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:54:22'),
(875, '1', '65', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:54:22'),
(876, '1', '65', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:54:22'),
(877, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:54:36'),
(878, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:54:36'),
(879, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:54:36'),
(880, '2', '65', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:54:36'),
(881, '2', '65', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:54:36'),
(882, '2', '65', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:54:36'),
(883, '2', '65', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:54:36'),
(884, '1', '99', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:58:25'),
(885, '1', '99', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:58:25'),
(886, '1', '99', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:58:25'),
(887, '1', '99', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:58:25'),
(888, '1', '99', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:58:25'),
(889, '1', '99', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:58:25'),
(890, '1', '99', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:58:25'),
(891, '1', '99', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:58:29'),
(892, '1', '99', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:58:29'),
(893, '1', '99', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:58:29'),
(894, '1', '99', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:58:29'),
(895, '1', '99', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:58:29'),
(896, '1', '99', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:58:29'),
(897, '1', '99', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 09:58:29'),
(898, '1', '72', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:41:06'),
(899, '1', '72', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:41:07'),
(900, '1', '72', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:41:07'),
(901, '1', '72', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:41:07'),
(902, '1', '72', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:41:07'),
(903, '1', '72', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:41:07'),
(904, '1', '72', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:41:07'),
(905, '1', '99', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:43:31'),
(906, '1', '99', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:43:31'),
(907, '1', '99', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:43:31'),
(908, '1', '99', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:43:31'),
(909, '1', '99', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:43:31'),
(910, '1', '99', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:43:31'),
(911, '1', '99', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:43:31'),
(912, '2', '99', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:44:26'),
(913, '2', '99', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:44:26'),
(914, '2', '99', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:44:26'),
(915, '2', '99', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:44:26'),
(916, '2', '99', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:44:26'),
(917, '2', '99', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:44:26'),
(918, '2', '99', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:44:26'),
(919, '1', '78', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:45:14'),
(920, '1', '78', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:45:14'),
(921, '1', '78', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:45:14'),
(922, '1', '78', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:45:14'),
(923, '1', '78', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:45:14'),
(924, '1', '78', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:45:14'),
(925, '1', '78', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:45:14'),
(926, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:46:45'),
(927, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:46:45'),
(928, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:46:46'),
(929, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:46:46'),
(930, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:46:46'),
(931, '1', '65', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:46:46'),
(932, '1', '65', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:46:46'),
(933, '2', '65', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:46:58'),
(934, '2', '65', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:46:58'),
(935, '2', '65', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:46:58'),
(936, '2', '65', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:46:58'),
(937, '2', '65', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:46:58'),
(938, '2', '65', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:46:58'),
(939, '2', '65', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:46:58'),
(940, '1', '70', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:48:01'),
(941, '1', '70', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:48:01'),
(942, '1', '70', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:48:01'),
(943, '1', '70', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:48:01'),
(944, '1', '70', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:48:01'),
(945, '1', '70', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:48:01'),
(946, '1', '70', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:48:01'),
(947, '2', '70', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:48:12'),
(948, '2', '70', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:48:12'),
(949, '2', '70', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:48:12'),
(950, '2', '70', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:48:12'),
(951, '2', '70', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:48:12'),
(952, '2', '70', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:48:12'),
(953, '2', '70', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:48:12'),
(954, '1', '99', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:51:38'),
(955, '1', '99', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:51:38'),
(956, '1', '99', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:51:38'),
(957, '1', '99', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:51:38'),
(958, '1', '99', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:51:38'),
(959, '1', '99', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:51:38'),
(960, '1', '99', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:51:38'),
(961, '2', '99', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:51:49'),
(962, '2', '99', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:51:49'),
(963, '2', '99', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:51:49'),
(964, '2', '99', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:51:49'),
(965, '2', '99', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:51:49'),
(966, '2', '99', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:51:49'),
(967, '2', '99', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:51:49'),
(968, '1', '65', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:53:35'),
(969, '1', '65', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:53:35'),
(970, '1', '65', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:53:35'),
(971, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:53:35'),
(972, '1', '65', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:53:35'),
(973, '1', '65', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:53:35'),
(974, '1', '65', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:53:35'),
(975, '1', '69', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:54:06'),
(976, '1', '69', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:54:06'),
(977, '1', '69', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:54:06'),
(978, '1', '69', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:54:06'),
(979, '1', '69', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:54:06'),
(980, '1', '69', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:54:06'),
(981, '1', '69', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:54:06'),
(982, '2', '69', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:54:17'),
(983, '2', '69', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:54:17'),
(984, '2', '69', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:54:17'),
(985, '2', '69', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:54:17'),
(986, '2', '69', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:54:17'),
(987, '2', '69', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:54:17'),
(988, '2', '69', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:54:17'),
(989, '1', '99', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:55:31'),
(990, '1', '99', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:55:31'),
(991, '1', '99', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:55:31'),
(992, '1', '99', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:55:31'),
(993, '1', '99', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:55:31'),
(994, '1', '99', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:55:31'),
(995, '1', '99', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:55:31'),
(996, '2', '99', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:55:40'),
(997, '2', '99', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:55:40'),
(998, '2', '99', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:55:40'),
(999, '2', '99', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:55:40'),
(1000, '2', '99', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:55:40'),
(1001, '2', '99', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:55:40'),
(1002, '2', '99', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:55:40'),
(1003, '2', '69', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:56:14'),
(1004, '2', '69', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:56:14'),
(1005, '2', '69', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:56:14'),
(1006, '2', '69', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:56:14'),
(1007, '2', '69', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:56:14'),
(1008, '2', '69', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:56:14'),
(1009, '2', '69', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:56:14'),
(1010, '2', '69', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:56:46'),
(1011, '2', '69', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:56:46'),
(1012, '2', '69', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:56:47'),
(1013, '2', '69', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:56:47'),
(1014, '2', '69', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:56:47'),
(1015, '2', '69', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:56:47'),
(1016, '2', '69', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 10:56:47'),
(1017, '1', '72', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 14:56:03'),
(1018, '1', '72', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 14:56:03'),
(1019, '1', '72', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 14:56:03'),
(1020, '1', '72', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 14:56:03'),
(1021, '1', '72', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 14:56:03'),
(1022, '1', '72', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 14:56:03'),
(1023, '1', '72', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 14:56:03'),
(1024, '2', '72', '1', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 14:56:41'),
(1025, '2', '72', '136', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 14:56:41'),
(1026, '2', '72', '144', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 14:56:41'),
(1027, '2', '72', '150', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 14:56:41'),
(1028, '2', '72', '155', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 14:56:41'),
(1029, '2', '72', '159', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 14:56:41'),
(1030, '2', '72', '160', '', '0000-00-00 00:00:00', '2021-01-15 00:00:00', '2021-01-15 14:56:41'),
(1031, '1', '78', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 13:28:17'),
(1032, '1', '78', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 13:28:17'),
(1033, '1', '78', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 13:28:17'),
(1034, '1', '78', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 13:28:17'),
(1035, '1', '78', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 13:28:17'),
(1036, '1', '78', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 13:28:17'),
(1037, '1', '78', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 13:28:17'),
(1038, '2', '78', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 13:28:36'),
(1039, '2', '78', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 13:28:37'),
(1040, '2', '78', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 13:28:37'),
(1041, '2', '78', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 13:28:37'),
(1042, '2', '78', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 13:28:37'),
(1043, '2', '78', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 13:28:37'),
(1044, '2', '78', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 13:28:37'),
(1045, '1', '81', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:03:22'),
(1046, '1', '81', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:03:22'),
(1047, '1', '81', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:03:22'),
(1048, '1', '81', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:03:22'),
(1049, '1', '81', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:03:22'),
(1050, '1', '81', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:03:22'),
(1051, '1', '81', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:03:22'),
(1052, '2', '81', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:03:41'),
(1053, '2', '81', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:03:41'),
(1054, '2', '81', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:03:41'),
(1055, '2', '81', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:03:41'),
(1056, '2', '81', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:03:41'),
(1057, '2', '81', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:03:41');
INSERT INTO `notifications` (`notification_id`, `notification_type`, `notification_sender`, `notification_receiver`, `notification_data`, `notification_read_at`, `created_at`, `updated_at`) VALUES
(1058, '2', '81', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:03:41'),
(1059, '1', '82', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:08:59'),
(1060, '1', '82', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:08:59'),
(1061, '1', '82', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:08:59'),
(1062, '1', '82', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:08:59'),
(1063, '1', '82', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:08:59'),
(1064, '1', '82', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:08:59'),
(1065, '1', '82', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:08:59'),
(1066, '2', '82', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:09:19'),
(1067, '2', '82', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:09:19'),
(1068, '2', '82', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:09:19'),
(1069, '2', '82', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:09:19'),
(1070, '2', '82', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:09:19'),
(1071, '2', '82', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:09:19'),
(1072, '2', '82', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:09:19'),
(1073, '1', '83', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:12:21'),
(1074, '1', '83', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:12:21'),
(1075, '1', '83', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:12:21'),
(1076, '1', '83', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:12:21'),
(1077, '1', '83', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:12:21'),
(1078, '1', '83', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:12:21'),
(1079, '1', '83', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:12:21'),
(1080, '2', '83', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:12:54'),
(1081, '2', '83', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:12:54'),
(1082, '2', '83', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:12:54'),
(1083, '2', '83', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:12:54'),
(1084, '2', '83', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:12:54'),
(1085, '2', '83', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:12:54'),
(1086, '2', '83', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:12:54'),
(1087, '2', '83', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:13:06'),
(1088, '2', '83', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:13:06'),
(1089, '2', '83', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:13:07'),
(1090, '2', '83', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:13:07'),
(1091, '2', '83', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:13:07'),
(1092, '2', '83', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:13:07'),
(1093, '2', '83', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:13:07'),
(1094, '1', '78', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:19:34'),
(1095, '1', '78', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:19:34'),
(1096, '1', '78', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:19:34'),
(1097, '1', '78', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:19:34'),
(1098, '1', '78', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:19:34'),
(1099, '1', '78', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:19:34'),
(1100, '1', '78', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:19:34'),
(1101, '2', '78', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:19:44'),
(1102, '2', '78', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:19:44'),
(1103, '2', '78', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:19:44'),
(1104, '2', '78', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:19:44'),
(1105, '2', '78', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:19:44'),
(1106, '2', '78', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:19:44'),
(1107, '2', '78', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:19:44'),
(1108, '2', '78', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:20:25'),
(1109, '2', '78', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:20:25'),
(1110, '2', '78', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:20:25'),
(1111, '2', '78', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:20:25'),
(1112, '2', '78', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:20:25'),
(1113, '2', '78', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:20:25'),
(1114, '2', '78', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:20:25'),
(1115, '2', '78', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:21:52'),
(1116, '2', '78', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:21:52'),
(1117, '2', '78', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:21:52'),
(1118, '2', '78', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:21:52'),
(1119, '2', '78', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:21:52'),
(1120, '2', '78', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:21:52'),
(1121, '2', '78', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:21:53'),
(1122, '2', '78', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:23:32'),
(1123, '2', '78', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:23:32'),
(1124, '2', '78', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:23:32'),
(1125, '2', '78', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:23:32'),
(1126, '2', '78', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:23:32'),
(1127, '2', '78', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:23:32'),
(1128, '2', '78', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:23:32'),
(1129, '2', '78', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:23:48'),
(1130, '2', '78', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:23:49'),
(1131, '2', '78', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:23:49'),
(1132, '2', '78', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:23:49'),
(1133, '2', '78', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:23:49'),
(1134, '2', '78', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:23:49'),
(1135, '2', '78', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:23:49'),
(1136, '2', '78', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:26:51'),
(1137, '2', '78', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:26:51'),
(1138, '2', '78', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:26:52'),
(1139, '2', '78', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:26:52'),
(1140, '2', '78', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:26:52'),
(1141, '2', '78', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:26:52'),
(1142, '2', '78', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:26:52'),
(1143, '2', '78', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:28:25'),
(1144, '2', '78', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:28:25'),
(1145, '2', '78', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:28:25'),
(1146, '2', '78', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:28:25'),
(1147, '2', '78', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:28:26'),
(1148, '2', '78', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:28:26'),
(1149, '2', '78', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:28:26'),
(1150, '2', '78', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:28:43'),
(1151, '2', '78', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:28:43'),
(1152, '2', '78', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:28:43'),
(1153, '2', '78', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:28:43'),
(1154, '2', '78', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:28:43'),
(1155, '2', '78', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:28:43'),
(1156, '2', '78', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:28:44'),
(1157, '2', '78', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:29:00'),
(1158, '2', '78', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:29:00'),
(1159, '2', '78', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:29:00'),
(1160, '2', '78', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:29:00'),
(1161, '2', '78', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:29:00'),
(1162, '2', '78', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:29:00'),
(1163, '2', '78', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:29:00'),
(1164, '2', '78', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:29:13'),
(1165, '2', '78', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:29:13'),
(1166, '2', '78', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:29:13'),
(1167, '2', '78', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:29:14'),
(1168, '2', '78', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:29:14'),
(1169, '2', '78', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:29:14'),
(1170, '2', '78', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:29:14'),
(1171, '2', '78', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:30:20'),
(1172, '2', '78', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:30:20'),
(1173, '2', '78', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:30:20'),
(1174, '2', '78', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:30:22'),
(1175, '2', '78', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:30:22'),
(1176, '2', '78', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:30:22'),
(1177, '2', '78', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:30:22'),
(1178, '2', '78', '1', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:33:38'),
(1179, '2', '78', '136', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:33:38'),
(1180, '2', '78', '144', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:33:38'),
(1181, '2', '78', '150', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:33:38'),
(1182, '2', '78', '155', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:33:38'),
(1183, '2', '78', '159', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:33:38'),
(1184, '2', '78', '160', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 14:33:38'),
(1185, '3', '1', '89', 'Your job order is now being processed.', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 15:44:03'),
(1186, '8', '1', '65', '', '0000-00-00 00:00:00', '2021-01-18 00:00:00', '2021-01-18 15:44:12');

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
(3, 'Job Order is Being Processed', 'Your job order is now being processed.', '1', '0000-00-00 00:00:00', '2021-01-18 14:08:00'),
(4, 'Job Order is Delivered', 'You job order has been delivered.', '1', '0000-00-00 00:00:00', '2021-01-18 14:08:00'),
(5, 'Pending Payment', 'Your payment for job order is still pending. Kindly settle the payment on or before the due date.', '1', '0000-00-00 00:00:00', '2021-01-18 14:08:00'),
(6, 'Paid', 'Your payment for job order has been confirmed.', '1', '0000-00-00 00:00:00', '2021-01-18 14:08:00'),
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
(65, '116', 'Mcdossss', '123445656', '154753-WOCNU9UY.png', '1', 'Dasmarinas, Cavitesnn', '2021-01-04 10:27:59', '2021-01-15 09:29:14'),
(66, '118', 'Coffee Cup', '36925812345', '161426-J1UFOFA1.png', '1', '47 Wiza Ferry Suite 648, Rosario 7720 Albay', '2021-01-04 13:12:23', '2021-01-07 16:14:26'),
(67, '119', 'asdasd', '123213213', '180345-BN5PEP3O.png', '1', 'asdsadsadasdas', '2021-01-04 18:03:45', '2021-01-04 18:03:45'),
(68, '120', 'test', '123123123', '181401-PVBO711V.png', '1', 'asdadsadasd', '2021-01-04 18:14:01', '2021-01-04 18:14:01'),
(69, '121', 'asdasd', '123132312', '182437-CEENS6BL.png', '1', 'asdsasdasdsadsadasdasdasasdsad', '2021-01-04 18:24:37', '2021-01-04 18:24:37'),
(70, '122', 'asdasd', 'asdasd', '081907-9XO9VHYB.png', '1', 'asdasd', '2021-01-05 08:19:08', '2021-01-05 08:19:08'),
(71, '123', 'Eggplant', '123123123', '141003-6QUX3QR5.png', '1', '187 Sampaloc, Manila', '2021-01-05 14:10:03', '2021-01-05 14:10:03'),
(72, '124', 'Rogue Company', '987654321', '142740-OGOQ33BZ.png', '1', '72 Lindgren Tunnel, Valencia 2073 Romblon', '2021-01-05 14:27:40', '2021-01-05 14:30:22'),
(74, '137', 'eqwewqeqw', '2313123', '140444-L0MOWUXD.png', '1', 'asdsadasdasasdsadasdasasdsadasdasasdsadasdasasdsadasdasasdsadasdasasdsadasdasasdsadasdasasdsadasdasa', '2021-01-06 14:04:44', '2021-01-11 14:53:37'),
(75, '138', 'wsqewqeqwew', '12321321', '141026-Y27WQCX4.png', '1', 'qweqwewq', '2021-01-06 14:10:26', '2021-01-06 14:10:26'),
(76, '139', 'asdsadsa', '323123', '141530-P9469SH3.png', '1', 'asdasdasasdsad', '2021-01-06 14:15:30', '2021-01-06 14:15:30'),
(77, '140', 'weqwe', '312312', '141714-V2GD2DR1.png', '1', 'qwewqeqwe', '2021-01-06 14:17:14', '2021-01-06 14:17:14'),
(78, '141', 'weqweqwe', '132123', '142024-AOFXW88J.png', '1', 'wqeqweqe', '2021-01-06 14:20:24', '2021-01-06 14:20:24'),
(79, '142', 'dwqeqw', '231', '142235-TAJ5Z8E4.png', '1', 'asdasd', '2021-01-06 14:22:35', '2021-01-06 14:22:35'),
(80, '143', 'tetetedst', '213213', '142346-7IOBM21C.png', '1', 'tereterewras', '2021-01-06 14:23:46', '2021-01-06 14:23:46'),
(81, '145', 'asdads', '43232323', '165624-G08GUYC9.png', '1', 'sddsfdfsdsadasdasd', '2021-01-06 16:56:24', '2021-01-06 16:56:24'),
(82, '146', 'elinors', '335345635', '113318-9XUVJFS7.png', '1', '3sdasdsdas3sdasdsdas3sdasdsdas3sdasdsdas3sdasdsdas3sdasdsdas3sdasdsdas3sdasdsdas3sdasdsdas3sdasdsdas', '2021-01-06 17:05:18', '2021-01-07 14:02:09'),
(83, '147', 'Phil', '123456789', '094023-6TH8JGWK.png', '1', 'Makati City', '2021-01-07 09:40:23', '2021-01-07 09:40:23'),
(84, '148', 'Joecater', '852963741', '104612-8L2F62VQ.png', '1', '68A Stroman Manors Suite 416, Sogod 2729 La Union', '2021-01-07 10:46:12', '2021-01-07 10:46:12'),
(85, '149', 'Sweetdill', '852741963', '154213-OVWSF3CC.png', '1', '82 Kunde Causeway, Mandaue City 9492 Tawi-Tawi', '2021-01-07 15:42:13', '2021-01-07 15:42:13'),
(86, '151', 'sadsadas', '2123', '133951-D1O33NSV.png', '1', 'asdsads', '2021-01-08 13:39:51', '2021-01-08 13:39:51'),
(87, '152', 'TAKOYAKI MAKI', '12334234324', '120016-Q110SMMA.png', '1', '1842 Fern Village, Cagayan de Oro city\n', '2021-01-11 12:00:16', '2021-01-11 12:00:16'),
(88, '153', 'Leaf', '123123123', '133702-FWLYZK1B.png', '1', 'Tanza, Cavite', '2021-01-11 13:26:02', '2021-01-11 13:37:02'),
(89, '154', 'foodcircles', '1.3476327463274325e+24', '133810-5QW6A1OV.png', '1', '837 Mahogany ', '2021-01-11 13:38:10', '2021-01-11 13:38:10'),
(90, '156', 'Dataplay', '123123213213', '083455-EMNVDC7A.png', '1', 'Tanza Cavite', '2021-01-13 08:34:55', '2021-01-13 08:34:55'),
(91, '157', 'Teststing', '123123213123', '084130-7XV5WMHZ.png', '1', 'tetsing lang', '2021-01-13 08:41:30', '2021-01-13 08:41:30'),
(92, '158', 'Shirtopia', '159753456', '115924-9JP5SHHR.png', '1', '70 Hilll Ridges, San Fabian 2297 Misamis Oriental', '2021-01-13 11:59:24', '2021-01-13 11:59:24'),
(93, '161', 'gytgui', '1546', '094000-1QJDWUVF.png', '1', 'nnkln', '2021-01-14 09:40:00', '2021-01-14 09:40:00'),
(94, '162', 'sadas', '4213', '094443-7SI3RRM1.png', '1', 'asdsa', '2021-01-14 09:44:43', '2021-01-14 09:44:43'),
(95, '163', 'Air Fryer', '901290341092', '132251-4IWKE9H8.png', '1', 'lkamflakd;las', '2021-01-14 13:22:51', '2021-01-14 13:22:51'),
(96, '164', 'asas', '12', '145900-QGIW7Y93.png', '1', 'dasdas', '2021-01-14 14:59:00', '2021-01-14 14:59:00'),
(97, '165', 'wqeqwe', '13213', '162240-B7RDC4HL.png', '1', 'adesadeqwae', '2021-01-14 16:22:40', '2021-01-14 16:22:40'),
(98, '166', 'wewew', '123123', '093140-ZO8YDHGJ.png', '1', 'dfsd', '2021-01-15 09:31:40', '2021-01-15 09:31:40'),
(99, '167', 'Portraithee', '455463243243', '095605-H7Q329KD.png', '1', 'sadasddasdasdasd', '2021-01-15 09:56:05', '2021-01-15 09:56:05'),
(100, '168', 'asdasdad', '123213213213', '120015-67D6K45R.png', '1', 'adsadadsadasd', '2021-01-15 12:00:15', '2021-01-15 12:00:15'),
(101, '169', 'asdsadsad', '123121321321', '130136-A0N0WD5M.png', '1', 'asdasdsadsad', '2021-01-15 13:01:36', '2021-01-15 13:01:36'),
(102, '170', 'asdasdasd', '131232132131', '131000-S5U6QTR2.png', '1', 'asdadsadasda', '2021-01-15 13:10:00', '2021-01-15 13:10:00');

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
(30, 'TPEC001', '2', 'Test Media1', 'Test description', 0, 0, '2021-01-04 10:25:24', '2021-01-18 11:42:39'),
(38, 'test', '1', 'asdasda', 'asdasdasd', 1, 0, '2021-01-06 09:06:00', '2021-01-14 13:37:31'),
(41, 'text', '1', 'text', 'text', 0, 0, '2021-01-06 16:18:21', '2021-01-14 15:30:06'),
(42, 'saddsad', '1', 'sadasdsa', 'asdasd', 0, 0, '2021-01-06 17:15:26', '2021-01-14 13:52:20'),
(43, 'cute', '2', 'cute', 'sample test', 1, 0, '2021-01-06 17:16:02', '2021-01-14 13:37:38');

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
(114, '65', '30', 1200.00, 12.00, '2021-01-04 10:28:00', '2021-01-04 12:08:23'),
(115, '66', '30', 5.00, 5.00, '2021-01-04 13:12:23', '2021-01-04 13:12:23'),
(116, '67', '30', 3.00, 3.00, '2021-01-04 18:03:46', '2021-01-06 14:43:48'),
(117, '68', '30', 1.00, 1.00, '2021-01-04 18:14:01', '2021-01-04 18:14:01'),
(118, '69', '30', 1.00, 1.00, '2021-01-04 18:24:38', '2021-01-04 18:24:38'),
(119, '70', '30', 1.00, 1.00, '2021-01-05 08:19:09', '2021-01-05 08:19:09'),
(120, '71', '30', 10.00, 15.00, '2021-01-05 14:10:04', '2021-01-05 14:10:04'),
(121, '72', '30', 2.00, 4.00, '2021-01-05 14:27:40', '2021-01-05 14:27:40'),
(122, '73', '39', 12.00, 12.00, '2021-01-06 13:14:23', '2021-01-06 13:14:23'),
(123, '73', '30', 1123.00, 12.00, '2021-01-06 13:14:23', '2021-01-06 13:14:23'),
(124, '73', '38', 12.00, 12.00, '2021-01-06 13:14:23', '2021-01-06 13:14:23'),
(125, '73', '40', 12.00, 12.00, '2021-01-06 13:14:23', '2021-01-06 13:14:23'),
(126, '74', '38', 1.00, 1.00, '2021-01-06 14:04:45', '2021-01-06 14:04:45'),
(127, '74', '30', 1.00, 1.00, '2021-01-06 14:04:45', '2021-01-06 14:04:45'),
(128, '74', '40', 1.00, 1.00, '2021-01-06 14:04:45', '2021-01-06 14:04:45'),
(129, '74', '39', 1.00, 1.00, '2021-01-06 14:04:45', '2021-01-06 14:04:45'),
(130, '75', '30', 1.00, 1.00, '2021-01-06 14:10:26', '2021-01-06 14:10:26'),
(131, '75', '38', 1.00, 1.00, '2021-01-06 14:10:26', '2021-01-06 14:10:26'),
(132, '75', '39', 1.00, 1.00, '2021-01-06 14:10:26', '2021-01-06 14:10:26'),
(133, '75', '40', 1.00, 1.00, '2021-01-06 14:10:26', '2021-01-06 14:10:26'),
(134, '76', '38', 1.00, 1.00, '2021-01-06 14:15:30', '2021-01-06 14:15:30'),
(135, '76', '39', 1.00, 1.00, '2021-01-06 14:15:30', '2021-01-06 14:15:30'),
(136, '76', '30', 1.00, 1.00, '2021-01-06 14:15:30', '2021-01-06 14:15:30'),
(137, '76', '40', 1.00, 1.00, '2021-01-06 14:15:30', '2021-01-06 14:15:30'),
(138, '77', '30', 1.00, 1.00, '2021-01-06 14:17:15', '2021-01-06 14:17:15'),
(139, '77', '38', 1.00, 1.00, '2021-01-06 14:17:15', '2021-01-06 14:17:15'),
(140, '77', '39', 1.00, 1.00, '2021-01-06 14:17:15', '2021-01-06 14:17:15'),
(141, '77', '40', 1.00, 1.00, '2021-01-06 14:17:15', '2021-01-06 14:17:15'),
(142, '78', '38', 1.00, 1.00, '2021-01-06 14:20:24', '2021-01-06 14:20:24'),
(143, '78', '30', 1.00, 1.00, '2021-01-06 14:20:24', '2021-01-06 14:20:24'),
(144, '78', '40', 1.00, 1.00, '2021-01-06 14:20:24', '2021-01-06 14:20:24'),
(145, '78', '39', 1.00, 1.00, '2021-01-06 14:20:24', '2021-01-06 14:20:24'),
(146, '79', '40', 1.00, 1.00, '2021-01-06 14:22:36', '2021-01-06 14:22:36'),
(147, '79', '30', 1.00, 1.00, '2021-01-06 14:22:36', '2021-01-06 14:22:36'),
(148, '79', '39', 1.00, 1.00, '2021-01-06 14:22:36', '2021-01-06 14:22:36'),
(149, '79', '38', 1.00, 1.00, '2021-01-06 14:22:36', '2021-01-06 14:22:36'),
(150, '80', '40', 1.00, 1.00, '2021-01-06 14:23:46', '2021-01-06 14:23:46'),
(151, '80', '30', 1.00, 1.00, '2021-01-06 14:23:46', '2021-01-06 14:23:46'),
(152, '80', '38', 1.00, 1.00, '2021-01-06 14:23:46', '2021-01-06 14:23:46'),
(153, '80', '39', 1.00, 1.00, '2021-01-06 14:23:46', '2021-01-06 14:23:46'),
(154, '81', '40', 1.00, 1.00, '2021-01-06 16:56:25', '2021-01-06 16:56:25'),
(155, '81', '30', 2.00, 1.00, '2021-01-06 16:56:25', '2021-01-06 16:56:25'),
(156, '81', '38', 1.00, 1.00, '2021-01-06 16:56:25', '2021-01-06 16:56:25'),
(157, '81', '39', 1.00, 1.00, '2021-01-06 16:56:25', '2021-01-06 16:56:25'),
(158, '81', '41', 1.00, 1.00, '2021-01-06 16:56:25', '2021-01-06 16:56:25'),
(159, '82', '38', 1.00, 1.00, '2021-01-06 17:05:18', '2021-01-06 17:05:18'),
(160, '82', '30', 1.00, 1.00, '2021-01-06 17:05:18', '2021-01-06 17:05:18'),
(161, '82', '40', 1.00, 1.00, '2021-01-06 17:05:18', '2021-01-06 17:05:18'),
(162, '82', '41', 1.00, 14.00, '2021-01-06 17:05:18', '2021-01-06 17:05:18'),
(163, '82', '39', 1.00, 1.00, '2021-01-06 17:05:18', '2021-01-06 17:05:18'),
(164, '83', '40', 1.00, 1.00, '2021-01-07 09:40:24', '2021-01-07 09:40:24'),
(165, '83', '38', 1.00, 1.00, '2021-01-07 09:40:24', '2021-01-07 09:40:24'),
(166, '83', '30', 1.00, 1.00, '2021-01-07 09:40:24', '2021-01-07 09:40:24'),
(167, '83', '39', 1.00, 1.00, '2021-01-07 09:40:24', '2021-01-07 09:40:24'),
(168, '83', '42', 1.00, 1.00, '2021-01-07 09:40:24', '2021-01-07 09:40:24'),
(169, '83', '41', 1.00, 1.00, '2021-01-07 09:40:24', '2021-01-07 09:40:24'),
(170, '83', '43', 1.00, 1.00, '2021-01-07 09:40:24', '2021-01-07 09:40:24'),
(171, '84', '40', 4.00, 1.00, '2021-01-07 10:46:13', '2021-01-07 10:46:13'),
(172, '84', '42', 2.00, 14.00, '2021-01-07 10:46:13', '2021-01-07 10:46:13'),
(173, '84', '30', 2.00, 2.00, '2021-01-07 10:46:13', '2021-01-07 10:46:13'),
(174, '84', '38', 1.00, 1.00, '2021-01-07 10:46:13', '2021-01-07 10:46:13'),
(175, '84', '41', 2.00, 4.00, '2021-01-07 10:46:13', '2021-01-07 10:46:13'),
(176, '84', '39', 23.00, 34.00, '2021-01-07 10:46:13', '2021-01-07 10:46:13'),
(177, '84', '43', 1.00, 2.00, '2021-01-07 10:46:13', '2021-01-07 10:46:13'),
(178, '85', '38', 1.00, 1.00, '2021-01-07 15:42:14', '2021-01-07 15:42:14'),
(179, '85', '42', 1.00, 1.00, '2021-01-07 15:42:14', '2021-01-07 15:42:14'),
(180, '85', '40', 1.00, 1.00, '2021-01-07 15:42:14', '2021-01-07 15:42:14'),
(181, '85', '30', 2.00, 1.00, '2021-01-07 15:42:14', '2021-01-07 15:42:14'),
(182, '85', '41', 1.00, 1.00, '2021-01-07 15:42:14', '2021-01-07 15:42:14'),
(183, '85', '39', 1.00, 1.00, '2021-01-07 15:42:14', '2021-01-07 15:42:14'),
(184, '85', '43', 1.00, 1.00, '2021-01-07 15:42:14', '2021-01-07 15:42:14'),
(185, '86', '38', 2.20, 1.00, '2021-01-08 13:39:51', '2021-01-08 13:39:51'),
(186, '86', '40', 2.20, 1.00, '2021-01-08 13:39:51', '2021-01-08 13:39:51'),
(187, '86', '42', 4.00, 1.00, '2021-01-08 13:39:51', '2021-01-08 13:39:51'),
(188, '86', '39', 2.20, 1.00, '2021-01-08 13:39:51', '2021-01-08 13:39:51'),
(189, '86', '30', 2.20, 1.00, '2021-01-08 13:39:51', '2021-01-08 13:39:51'),
(190, '86', '41', 5.45, 1.00, '2021-01-08 13:39:52', '2021-01-08 13:39:52'),
(191, '86', '43', 2.00, 2.00, '2021-01-08 13:39:52', '2021-01-08 13:39:52'),
(192, '87', '30', 2.30, 2.00, '2021-01-11 12:00:17', '2021-01-11 12:00:17'),
(193, '87', '38', 1.40, 2.00, '2021-01-11 12:00:17', '2021-01-11 12:00:17'),
(194, '87', '43', 2.00, 2.00, '2021-01-11 12:00:17', '2021-01-11 12:00:17'),
(195, '87', '40', 2.00, 2.00, '2021-01-11 12:00:17', '2021-01-11 12:00:17'),
(196, '87', '39', 2.00, 2.00, '2021-01-11 12:00:17', '2021-01-11 12:00:17'),
(197, '87', '42', 2.00, 2.00, '2021-01-11 12:00:17', '2021-01-11 12:00:17'),
(198, '87', '41', 2.00, 2.00, '2021-01-11 12:00:17', '2021-01-11 12:00:17'),
(199, '88', '38', 1.00, 1.00, '2021-01-11 13:26:02', '2021-01-11 13:26:02'),
(200, '88', '43', 1.00, 1.00, '2021-01-11 13:26:02', '2021-01-11 13:26:02'),
(201, '88', '30', 1.00, 1.00, '2021-01-11 13:26:02', '2021-01-11 13:26:02'),
(202, '88', '39', 1.00, 1.00, '2021-01-11 13:26:02', '2021-01-11 13:26:02'),
(203, '88', '42', 1.00, 1.00, '2021-01-11 13:26:02', '2021-01-11 13:26:02'),
(204, '88', '41', 1.00, 1.00, '2021-01-11 13:26:03', '2021-01-11 13:26:03'),
(205, '88', '40', 1.00, 1.00, '2021-01-11 13:26:04', '2021-01-11 13:26:04'),
(206, '89', '30', 1.00, 1.00, '2021-01-11 13:38:10', '2021-01-11 13:38:10'),
(207, '89', '38', 1.00, 1.00, '2021-01-11 13:38:10', '2021-01-11 13:38:10'),
(208, '89', '39', 1.00, 1.00, '2021-01-11 13:38:10', '2021-01-11 13:38:10'),
(209, '89', '41', 1.00, 1.00, '2021-01-11 13:38:10', '2021-01-11 13:38:10'),
(210, '89', '40', 1.00, 1.00, '2021-01-11 13:38:10', '2021-01-11 13:38:10'),
(211, '89', '43', 1.00, 1.00, '2021-01-11 13:38:10', '2021-01-11 13:38:10'),
(212, '89', '42', 1.00, 1.00, '2021-01-11 13:38:10', '2021-01-11 13:38:10'),
(213, '90', '30', 1.00, 1.00, '2021-01-13 08:34:56', '2021-01-13 08:34:56'),
(214, '90', '42', 1.00, 1.00, '2021-01-13 08:34:56', '2021-01-13 08:34:56'),
(215, '90', '41', 1.00, 1.00, '2021-01-13 08:34:56', '2021-01-13 08:34:56'),
(216, '90', '38', 1.00, 1.00, '2021-01-13 08:34:56', '2021-01-13 08:34:56'),
(217, '91', '42', 2.00, 2.00, '2021-01-13 08:41:31', '2021-01-13 08:41:31'),
(218, '91', '38', 2.00, 2.00, '2021-01-13 08:41:31', '2021-01-13 08:41:31'),
(219, '91', '30', 2.00, 2.00, '2021-01-13 08:41:31', '2021-01-13 08:41:31'),
(220, '91', '41', 2.00, 2.00, '2021-01-13 08:41:31', '2021-01-13 08:41:31'),
(221, '92', '42', 2.00, 23.00, '2021-01-13 11:59:24', '2021-01-13 11:59:24'),
(222, '92', '41', 1.00, 2.00, '2021-01-13 11:59:24', '2021-01-13 11:59:24'),
(223, '92', '38', 1.00, 1.00, '2021-01-13 11:59:24', '2021-01-13 11:59:24'),
(224, '92', '30', 2.30, 2.00, '2021-01-13 11:59:24', '2021-01-13 11:59:24'),
(225, '93', '42', 1.00, 1.00, '2021-01-14 09:40:01', '2021-01-14 09:40:01'),
(226, '93', '30', 1.00, 1.00, '2021-01-14 09:40:01', '2021-01-14 09:40:01'),
(227, '93', '41', 1.00, 1.00, '2021-01-14 09:40:01', '2021-01-14 09:40:01'),
(228, '93', '38', 1.00, 1.00, '2021-01-14 09:40:01', '2021-01-14 09:40:01'),
(229, '94', '30', 1.00, 1.00, '2021-01-14 09:44:44', '2021-01-14 09:44:44'),
(230, '94', '38', 1.00, 1.00, '2021-01-14 09:44:44', '2021-01-14 09:44:44'),
(231, '94', '42', 1.00, 1.00, '2021-01-14 09:44:44', '2021-01-14 09:44:44'),
(232, '94', '41', 1.00, 1.00, '2021-01-14 09:44:44', '2021-01-14 09:44:44'),
(233, '95', '30', 5.00, 2.00, '2021-01-14 13:22:52', '2021-01-14 13:22:52'),
(234, '95', '41', 15.00, 2.00, '2021-01-14 13:22:52', '2021-01-14 13:22:52'),
(235, '95', '38', 10.00, 2.00, '2021-01-14 13:22:52', '2021-01-14 13:22:52'),
(236, '95', '42', 20.00, 2.00, '2021-01-14 13:22:52', '2021-01-14 13:22:52'),
(237, '96', '43', 1.00, 1.00, '2021-01-14 14:59:01', '2021-01-14 14:59:01'),
(238, '96', '30', 1.00, 1.00, '2021-01-14 14:59:01', '2021-01-14 14:59:01'),
(239, '96', '38', 1.00, 1.00, '2021-01-14 14:59:01', '2021-01-14 14:59:01'),
(240, '97', '38', 1.00, 1.00, '2021-01-14 16:22:40', '2021-01-14 16:22:40'),
(241, '97', '30', 1.00, 1.00, '2021-01-14 16:22:40', '2021-01-14 16:22:40'),
(242, '97', '43', 1.00, 1.00, '2021-01-14 16:22:40', '2021-01-14 16:22:40'),
(243, '98', '30', 1.00, 1.00, '2021-01-15 09:31:40', '2021-01-15 09:31:40'),
(244, '98', '38', 1.00, 1.00, '2021-01-15 09:31:40', '2021-01-15 09:31:40'),
(245, '98', '43', 1.00, 1.00, '2021-01-15 09:31:40', '2021-01-15 09:31:40'),
(246, '99', '43', 2.00, 1.00, '2021-01-15 09:56:06', '2021-01-15 09:56:06'),
(247, '99', '30', 2.00, 1.00, '2021-01-15 09:56:06', '2021-01-15 09:56:06'),
(248, '99', '38', 2.00, 1.00, '2021-01-15 09:56:06', '2021-01-15 09:56:06'),
(249, '100', '30', 50.00, 50.00, '2021-01-15 12:00:16', '2021-01-15 12:00:16'),
(250, '100', '43', 70.00, 70.00, '2021-01-15 12:00:16', '2021-01-15 12:00:16'),
(251, '100', '38', 60.00, 60.00, '2021-01-15 12:00:16', '2021-01-15 12:00:16'),
(252, '101', '38', 60.00, 60.00, '2021-01-15 13:01:37', '2021-01-15 13:01:37'),
(253, '101', '30', 50.00, 50.00, '2021-01-15 13:01:37', '2021-01-15 13:01:37'),
(254, '101', '43', 60.00, 60.00, '2021-01-15 13:01:37', '2021-01-15 13:01:37'),
(255, '102', '38', 30.00, 40.00, '2021-01-15 13:10:00', '2021-01-15 13:10:00'),
(256, '102', '30', 10.00, 20.00, '2021-01-15 13:10:00', '2021-01-15 13:10:00'),
(257, '102', '43', 50.00, 60.00, '2021-01-15 13:10:00', '2021-01-15 13:10:00');

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
(162, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MTA6MjQ6NThhbQ==', 1, '2021-01-04 18:24:58', '2021-01-04 10:24:58', '2021-01-04 10:24:58'),
(163, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MTA6MzU6MjRhbQ==', 1, '2021-01-04 18:35:24', '2021-01-04 10:35:24', '2021-01-04 10:35:24'),
(164, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTA0MTA6NTI6MThhbQ==', 1, '2021-01-04 18:52:18', '2021-01-04 10:52:18', '2021-01-04 10:52:18'),
(165, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTA0MTA6NTM6MDRhbQ==', 1, '2021-01-04 18:53:04', '2021-01-04 10:53:04', '2021-01-04 10:53:04'),
(166, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTA0MTE6MDY6MzlhbQ==', 1, '2021-01-04 19:06:39', '2021-01-04 11:06:39', '2021-01-04 11:06:39'),
(167, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MTE6MzU6MTFhbQ==', 1, '2021-01-04 19:35:11', '2021-01-04 11:35:11', '2021-01-04 11:35:11'),
(168, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTA0MTE6NTE6MzFhbQ==', 1, '2021-01-04 19:51:31', '2021-01-04 11:51:31', '2021-01-04 11:51:31'),
(169, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MTE6NTI6MzRhbQ==', 1, '2021-01-04 19:52:34', '2021-01-04 11:52:34', '2021-01-04 11:52:34'),
(170, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MTE6NTY6MzhhbQ==', 1, '2021-01-04 19:56:38', '2021-01-04 11:56:38', '2021-01-04 11:56:38'),
(171, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MTE6NTk6MjhhbQ==', 1, '2021-01-04 19:59:28', '2021-01-04 11:59:28', '2021-01-04 11:59:28'),
(172, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MTI6MDA6MTdwbQ==', 1, '2021-01-04 20:00:17', '2021-01-04 12:00:17', '2021-01-04 12:00:17'),
(173, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTA0MTI6MTE6MDhwbQ==', 1, '2021-01-04 20:11:08', '2021-01-04 12:11:08', '2021-01-04 12:11:08'),
(174, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MTI6MTE6NDBwbQ==', 1, '2021-01-04 20:11:40', '2021-01-04 12:11:40', '2021-01-04 12:11:40'),
(175, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTA0MTI6NDA6NDNwbQ==', 1, '2021-01-04 20:40:43', '2021-01-04 12:40:43', '2021-01-04 12:40:43'),
(176, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MDE6MTM6MjFwbQ==', 1, '2021-01-04 21:13:21', '2021-01-04 13:13:21', '2021-01-04 13:13:21'),
(177, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MDE6MjU6MDBwbQ==', 1, '2021-01-04 21:25:00', '2021-01-04 13:25:00', '2021-01-04 13:25:00'),
(178, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MDE6MjU6MDdwbQ==', 1, '2021-01-04 21:25:07', '2021-01-04 13:25:07', '2021-01-04 13:25:07'),
(179, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MDI6MDQ6MTlwbQ==', 1, '2021-01-04 22:04:19', '2021-01-04 14:04:19', '2021-01-04 14:04:19'),
(180, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTA0MDI6MDY6NDRwbQ==', 1, '2021-01-04 22:06:44', '2021-01-04 14:06:44', '2021-01-04 14:06:44'),
(181, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTA0MDI6MTA6MDVwbQ==', 1, '2021-01-04 22:10:05', '2021-01-04 14:10:05', '2021-01-04 14:10:05'),
(182, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MDI6Mjg6MjlwbQ==', 1, '2021-01-04 22:28:29', '2021-01-04 14:28:29', '2021-01-04 14:28:29'),
(183, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MDI6NDM6MTNwbQ==', 1, '2021-01-04 22:43:13', '2021-01-04 14:43:13', '2021-01-04 14:43:13'),
(184, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MDI6NDY6MDRwbQ==', 1, '2021-01-04 22:46:04', '2021-01-04 14:46:04', '2021-01-04 14:46:04'),
(185, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MDM6NTg6NDJwbQ==', 1, '2021-01-04 23:58:42', '2021-01-04 15:58:42', '2021-01-04 15:58:42'),
(186, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MDQ6MTM6NDBwbQ==', 1, '2021-01-05 00:13:40', '2021-01-04 16:13:40', '2021-01-04 16:13:40'),
(187, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MDQ6NDk6MTlwbQ==', 1, '2021-01-05 00:49:19', '2021-01-04 16:49:19', '2021-01-04 16:49:19'),
(188, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MDU6MTI6MDVwbQ==', 1, '2021-01-05 01:12:05', '2021-01-04 17:12:05', '2021-01-04 17:12:05'),
(189, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MDY6MjI6MjNwbQ==', 1, '2021-01-05 02:22:23', '2021-01-04 18:22:23', '2021-01-04 18:22:23'),
(190, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MDg6NTc6NDhwbQ==', 1, '2021-01-05 04:57:48', '2021-01-04 20:57:48', '2021-01-04 20:57:48'),
(191, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA0MDk6MDY6MTJwbQ==', 1, '2021-01-05 05:06:12', '2021-01-04 21:06:12', '2021-01-04 21:06:12'),
(192, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTA1MDg6MjU6NTBhbQ==', 1, '2021-01-05 16:25:50', '2021-01-05 08:25:50', '2021-01-05 08:25:50'),
(193, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA1MDg6NDU6NTFhbQ==', 1, '2021-01-05 16:45:51', '2021-01-05 08:45:51', '2021-01-05 08:45:51'),
(194, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA1MDg6NTY6MTlhbQ==', 1, '2021-01-05 16:56:19', '2021-01-05 08:56:19', '2021-01-05 08:56:19'),
(195, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA1MDg6NTY6MTlhbQ==', 1, '2021-01-05 16:56:19', '2021-01-05 08:56:19', '2021-01-05 08:56:19'),
(196, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA1MDg6NTk6MDZhbQ==', 1, '2021-01-05 16:59:06', '2021-01-05 08:59:06', '2021-01-05 08:59:06'),
(197, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTA1MDk6MDY6MTdhbQ==', 1, '2021-01-05 17:06:17', '2021-01-05 09:06:17', '2021-01-05 09:06:17'),
(198, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA1MDk6MzQ6MTRhbQ==', 1, '2021-01-05 17:34:14', '2021-01-05 09:34:14', '2021-01-05 09:34:14'),
(199, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA1MTA6NDk6MzFhbQ==', 1, '2021-01-05 18:49:31', '2021-01-05 10:49:31', '2021-01-05 10:49:31'),
(200, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA1MTA6NTY6MzZhbQ==', 1, '2021-01-05 18:56:36', '2021-01-05 10:56:36', '2021-01-05 10:56:36'),
(201, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA1MTE6MDE6MDJhbQ==', 1, '2021-01-05 19:01:02', '2021-01-05 11:01:02', '2021-01-05 11:01:02'),
(202, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA1MTE6NDI6MjZhbQ==', 1, '2021-01-05 19:42:26', '2021-01-05 11:42:26', '2021-01-05 11:42:26'),
(203, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA1MTE6NDU6NTRhbQ==', 1, '2021-01-05 19:45:54', '2021-01-05 11:45:54', '2021-01-05 11:45:54'),
(204, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA1MTI6MjI6MDJwbQ==', 1, '2021-01-05 20:22:02', '2021-01-05 12:22:02', '2021-01-05 12:22:02'),
(205, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA1MDE6NDE6NTlwbQ==', 1, '2021-01-05 21:41:59', '2021-01-05 13:41:59', '2021-01-05 13:41:59'),
(206, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA1MDI6MTE6MzZwbQ==', 1, '2021-01-05 22:11:36', '2021-01-05 14:11:36', '2021-01-05 14:11:36'),
(207, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA1MDI6Mjc6MjlwbQ==', 1, '2021-01-05 22:27:29', '2021-01-05 14:27:29', '2021-01-05 14:27:29'),
(208, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA1MDI6NDc6MDNwbQ==', 1, '2021-01-05 22:47:03', '2021-01-05 14:47:03', '2021-01-05 14:47:03'),
(209, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTA1MDU6MTE6MzNwbQ==', 1, '2021-01-06 01:11:33', '2021-01-05 17:11:33', '2021-01-05 17:11:33'),
(210, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTA1MDU6MTg6NDZwbQ==', 1, '2021-01-06 01:18:46', '2021-01-05 17:18:46', '2021-01-05 17:18:46'),
(211, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA1MDU6MjA6MjFwbQ==', 1, '2021-01-06 01:20:21', '2021-01-05 17:20:21', '2021-01-05 17:20:21'),
(212, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTA1MDU6Mjc6MzVwbQ==', 1, '2021-01-06 01:27:35', '2021-01-05 17:27:35', '2021-01-05 17:27:35'),
(213, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDg6MjM6MTVhbQ==', 1, '2021-01-06 16:23:15', '2021-01-06 08:23:15', '2021-01-06 08:23:15'),
(214, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDg6MjM6MjRhbQ==', 1, '2021-01-06 16:23:24', '2021-01-06 08:23:24', '2021-01-06 08:23:24'),
(215, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDg6Mjc6MDVhbQ==', 1, '2021-01-06 16:27:05', '2021-01-06 08:27:05', '2021-01-06 08:27:05'),
(216, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDg6MzQ6MzRhbQ==', 1, '2021-01-06 16:34:34', '2021-01-06 08:34:34', '2021-01-06 08:34:34'),
(217, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDg6NTA6MzVhbQ==', 1, '2021-01-06 16:50:35', '2021-01-06 08:50:35', '2021-01-06 08:50:35'),
(218, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDg6NTE6MTJhbQ==', 1, '2021-01-06 16:51:12', '2021-01-06 08:51:12', '2021-01-06 08:51:12'),
(219, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDg6NTE6MTRhbQ==', 1, '2021-01-06 16:51:14', '2021-01-06 08:51:14', '2021-01-06 08:51:14'),
(220, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDk6MDQ6MTJhbQ==', 1, '2021-01-06 17:04:12', '2021-01-06 09:04:12', '2021-01-06 09:04:12'),
(221, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDk6MTM6MDFhbQ==', 1, '2021-01-06 17:13:01', '2021-01-06 09:13:01', '2021-01-06 09:13:01'),
(222, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDk6MTQ6MzlhbQ==', 1, '2021-01-06 17:14:39', '2021-01-06 09:14:39', '2021-01-06 09:14:39'),
(223, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDk6MTQ6NDdhbQ==', 1, '2021-01-06 17:14:47', '2021-01-06 09:14:47', '2021-01-06 09:14:47'),
(224, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDk6Mzk6NDNhbQ==', 1, '2021-01-06 17:39:43', '2021-01-06 09:39:43', '2021-01-06 09:39:43'),
(225, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDk6NTA6MTNhbQ==', 1, '2021-01-06 17:50:13', '2021-01-06 09:50:13', '2021-01-06 09:50:13'),
(226, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDk6NTA6MzhhbQ==', 1, '2021-01-06 17:50:38', '2021-01-06 09:50:38', '2021-01-06 09:50:38'),
(227, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MTA6MDE6NDNhbQ==', 1, '2021-01-06 18:01:43', '2021-01-06 10:01:43', '2021-01-06 10:01:43'),
(228, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MTA6NDg6MjlhbQ==', 1, '2021-01-06 18:48:29', '2021-01-06 10:48:29', '2021-01-06 10:48:29'),
(229, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MTA6NDk6MzZhbQ==', 1, '2021-01-06 18:49:36', '2021-01-06 10:49:36', '2021-01-06 10:49:36'),
(230, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MTE6NTE6MjBhbQ==', 1, '2021-01-06 19:51:20', '2021-01-06 11:51:20', '2021-01-06 11:51:20'),
(231, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MTE6NTQ6MDRhbQ==', 1, '2021-01-06 19:54:04', '2021-01-06 11:54:04', '2021-01-06 11:54:04'),
(232, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MTE6NTk6MDNhbQ==', 1, '2021-01-06 19:59:03', '2021-01-06 11:59:03', '2021-01-06 11:59:03'),
(233, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MTI6MTg6MTdwbQ==', 1, '2021-01-06 20:18:17', '2021-01-06 12:18:17', '2021-01-06 12:18:17'),
(234, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MTI6MTg6NDZwbQ==', 1, '2021-01-06 20:18:46', '2021-01-06 12:18:46', '2021-01-06 12:18:46'),
(235, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDE6MTE6MDVwbQ==', 1, '2021-01-06 21:11:05', '2021-01-06 13:11:05', '2021-01-06 13:11:05'),
(236, '133', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDE6MTU6MzBwbQ==', 1, '2021-01-06 21:15:30', '2021-01-06 13:15:30', '2021-01-06 13:15:30'),
(237, '135', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDE6MjU6MzVwbQ==', 1, '2021-01-06 21:25:35', '2021-01-06 13:25:35', '2021-01-06 13:25:35'),
(238, '136', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDE6MzA6NTlwbQ==', 1, '2021-01-06 21:30:59', '2021-01-06 13:30:59', '2021-01-06 13:30:59'),
(239, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDI6NDg6NTBwbQ==', 1, '2021-01-06 22:48:50', '2021-01-06 14:48:50', '2021-01-06 14:48:50'),
(240, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDI6NTU6MTZwbQ==', 1, '2021-01-06 22:55:16', '2021-01-06 14:55:16', '2021-01-06 14:55:16'),
(241, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDM6NDQ6MjFwbQ==', 1, '2021-01-06 23:44:21', '2021-01-06 15:44:21', '2021-01-06 15:44:21'),
(242, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDM6NDU6NTlwbQ==', 1, '2021-01-06 23:45:59', '2021-01-06 15:45:59', '2021-01-06 15:45:59'),
(243, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDM6NDY6MzRwbQ==', 1, '2021-01-06 23:46:34', '2021-01-06 15:46:34', '2021-01-06 15:46:34'),
(244, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6MDM6MDVwbQ==', 1, '2021-01-07 00:03:05', '2021-01-06 16:03:06', '2021-01-06 16:03:06'),
(245, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6MDQ6MDlwbQ==', 1, '2021-01-07 00:04:09', '2021-01-06 16:04:09', '2021-01-06 16:04:09'),
(246, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6MDU6NDBwbQ==', 1, '2021-01-07 00:05:40', '2021-01-06 16:05:40', '2021-01-06 16:05:40'),
(247, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6MDY6NDFwbQ==', 1, '2021-01-07 00:06:41', '2021-01-06 16:06:41', '2021-01-06 16:06:41'),
(248, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6MTc6NDlwbQ==', 1, '2021-01-07 00:17:49', '2021-01-06 16:17:49', '2021-01-06 16:17:49'),
(249, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6MjA6MTRwbQ==', 1, '2021-01-07 00:20:14', '2021-01-06 16:20:14', '2021-01-06 16:20:14'),
(250, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6MjE6MzlwbQ==', 1, '2021-01-07 00:21:39', '2021-01-06 16:21:39', '2021-01-06 16:21:39'),
(251, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6MjM6MTlwbQ==', 1, '2021-01-07 00:23:19', '2021-01-06 16:23:19', '2021-01-06 16:23:19'),
(252, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6MjY6MzZwbQ==', 1, '2021-01-07 00:26:36', '2021-01-06 16:26:36', '2021-01-06 16:26:36'),
(253, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6Mjc6MjJwbQ==', 1, '2021-01-07 00:27:22', '2021-01-06 16:27:22', '2021-01-06 16:27:22'),
(254, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6Mzc6NDJwbQ==', 1, '2021-01-07 00:37:42', '2021-01-06 16:37:42', '2021-01-06 16:37:42'),
(255, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6Mzc6NTZwbQ==', 1, '2021-01-07 00:37:56', '2021-01-06 16:37:56', '2021-01-06 16:37:56'),
(256, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6Mzk6MjlwbQ==', 1, '2021-01-07 00:39:29', '2021-01-06 16:39:29', '2021-01-06 16:39:29'),
(257, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6NDM6MzNwbQ==', 1, '2021-01-07 00:43:33', '2021-01-06 16:43:33', '2021-01-06 16:43:33'),
(258, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6NDQ6MTlwbQ==', 1, '2021-01-07 00:44:19', '2021-01-06 16:44:19', '2021-01-06 16:44:19'),
(259, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6NDU6MThwbQ==', 1, '2021-01-07 00:45:18', '2021-01-06 16:45:18', '2021-01-06 16:45:18'),
(260, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6NDk6MzdwbQ==', 1, '2021-01-07 00:49:37', '2021-01-06 16:49:37', '2021-01-06 16:49:37'),
(261, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDQ6NTI6MThwbQ==', 1, '2021-01-07 00:52:18', '2021-01-06 16:52:18', '2021-01-06 16:52:18'),
(262, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDU6MDU6NTZwbQ==', 1, '2021-01-07 01:05:56', '2021-01-06 17:05:56', '2021-01-06 17:05:56'),
(263, '146', 'KjA5MDhBMTQxN0FGNTVDOTVERjE2QTlFODBDNTVCRTgxODMyQkI3QjkyMDIxLTAxLTA2MDU6MDY6MzNwbQ==', 1, '2021-01-07 01:06:33', '2021-01-06 17:06:33', '2021-01-06 17:06:33'),
(264, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDU6MDc6MDVwbQ==', 1, '2021-01-07 01:07:05', '2021-01-06 17:07:05', '2021-01-06 17:07:05'),
(265, '146', 'KjA5MDhBMTQxN0FGNTVDOTVERjE2QTlFODBDNTVCRTgxODMyQkI3QjkyMDIxLTAxLTA2MDU6MDk6MDNwbQ==', 1, '2021-01-07 01:09:03', '2021-01-06 17:09:03', '2021-01-06 17:09:03'),
(266, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDU6MDk6NThwbQ==', 1, '2021-01-07 01:09:58', '2021-01-06 17:09:58', '2021-01-06 17:09:58'),
(267, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA2MDU6MjI6MThwbQ==', 1, '2021-01-07 01:22:18', '2021-01-06 17:22:18', '2021-01-06 17:22:18'),
(268, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDg6MzY6MTVhbQ==', 1, '2021-01-07 16:36:15', '2021-01-07 08:36:15', '2021-01-07 08:36:15'),
(269, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDg6NDY6MjBhbQ==', 1, '2021-01-07 16:46:20', '2021-01-07 08:46:20', '2021-01-07 08:46:20'),
(270, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDg6NTA6MDdhbQ==', 1, '2021-01-07 16:50:07', '2021-01-07 08:50:07', '2021-01-07 08:50:07'),
(271, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDg6NTA6NDNhbQ==', 1, '2021-01-07 16:50:43', '2021-01-07 08:50:43', '2021-01-07 08:50:43'),
(272, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDk6MTk6MTJhbQ==', 1, '2021-01-07 17:19:12', '2021-01-07 09:19:12', '2021-01-07 09:19:12'),
(273, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDk6MjI6NDRhbQ==', 1, '2021-01-07 17:22:44', '2021-01-07 09:22:44', '2021-01-07 09:22:44'),
(274, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDk6MjM6MTdhbQ==', 1, '2021-01-07 17:23:17', '2021-01-07 09:23:17', '2021-01-07 09:23:17'),
(275, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDk6Mjc6NDdhbQ==', 1, '2021-01-07 17:27:47', '2021-01-07 09:27:47', '2021-01-07 09:27:47'),
(276, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDk6NDk6MDBhbQ==', 1, '2021-01-07 17:49:00', '2021-01-07 09:49:00', '2021-01-07 09:49:00'),
(277, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTA6Mzk6NThhbQ==', 1, '2021-01-07 18:39:58', '2021-01-07 10:39:58', '2021-01-07 10:39:58'),
(278, '146', 'KjA5MDhBMTQxN0FGNTVDOTVERjE2QTlFODBDNTVCRTgxODMyQkI3QjkyMDIxLTAxLTA3MTA6NTI6NDVhbQ==', 1, '2021-01-07 18:52:45', '2021-01-07 10:52:45', '2021-01-07 10:52:45'),
(279, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTA6NTM6NTBhbQ==', 1, '2021-01-07 18:53:50', '2021-01-07 10:53:50', '2021-01-07 10:53:50'),
(280, '146', 'KjA5MDhBMTQxN0FGNTVDOTVERjE2QTlFODBDNTVCRTgxODMyQkI3QjkyMDIxLTAxLTA3MTA6NTk6MTVhbQ==', 1, '2021-01-07 18:59:15', '2021-01-07 10:59:16', '2021-01-07 10:59:16'),
(281, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6MDA6MDdhbQ==', 1, '2021-01-07 19:00:07', '2021-01-07 11:00:07', '2021-01-07 11:00:07'),
(282, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6MDA6MDdhbQ==', 1, '2021-01-07 19:00:07', '2021-01-07 11:00:07', '2021-01-07 11:00:07'),
(283, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6MDE6MDdhbQ==', 1, '2021-01-07 19:01:07', '2021-01-07 11:01:07', '2021-01-07 11:01:07'),
(284, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6MDE6MzZhbQ==', 1, '2021-01-07 19:01:36', '2021-01-07 11:01:36', '2021-01-07 11:01:36'),
(285, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6MDI6MzBhbQ==', 1, '2021-01-07 19:02:30', '2021-01-07 11:02:30', '2021-01-07 11:02:30'),
(286, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6MDU6MzFhbQ==', 1, '2021-01-07 19:05:31', '2021-01-07 11:05:31', '2021-01-07 11:05:31'),
(287, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6MDk6MDdhbQ==', 1, '2021-01-07 19:09:07', '2021-01-07 11:09:07', '2021-01-07 11:09:07'),
(288, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6MTE6MjhhbQ==', 1, '2021-01-07 19:11:28', '2021-01-07 11:11:28', '2021-01-07 11:11:28'),
(289, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6MTI6MjFhbQ==', 1, '2021-01-07 19:12:21', '2021-01-07 11:12:21', '2021-01-07 11:12:21'),
(290, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6MTM6NTJhbQ==', 1, '2021-01-07 19:13:52', '2021-01-07 11:13:52', '2021-01-07 11:13:52'),
(291, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6MTY6NTVhbQ==', 1, '2021-01-07 19:16:55', '2021-01-07 11:16:55', '2021-01-07 11:16:55'),
(292, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6NDQ6NDNhbQ==', 1, '2021-01-07 19:44:43', '2021-01-07 11:44:43', '2021-01-07 11:44:43'),
(293, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6NDc6MThhbQ==', 1, '2021-01-07 19:47:18', '2021-01-07 11:47:18', '2021-01-07 11:47:18'),
(294, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6NDg6NTJhbQ==', 1, '2021-01-07 19:48:52', '2021-01-07 11:48:52', '2021-01-07 11:48:52'),
(295, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6NDk6MjFhbQ==', 1, '2021-01-07 19:49:21', '2021-01-07 11:49:21', '2021-01-07 11:49:21'),
(296, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6NTM6NTRhbQ==', 1, '2021-01-07 19:53:54', '2021-01-07 11:53:54', '2021-01-07 11:53:54'),
(297, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MTE6NTU6NDhhbQ==', 1, '2021-01-07 19:55:48', '2021-01-07 11:55:48', '2021-01-07 11:55:48'),
(298, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6MTE6NTFwbQ==', 1, '2021-01-07 21:11:51', '2021-01-07 13:11:51', '2021-01-07 13:11:51'),
(299, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6MTM6MThwbQ==', 1, '2021-01-07 21:13:18', '2021-01-07 13:13:18', '2021-01-07 13:13:18'),
(300, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6MTM6NDZwbQ==', 1, '2021-01-07 21:13:46', '2021-01-07 13:13:46', '2021-01-07 13:13:46'),
(301, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6Mjc6MjZwbQ==', 1, '2021-01-07 21:27:26', '2021-01-07 13:27:26', '2021-01-07 13:27:26'),
(302, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6Mjc6NTdwbQ==', 1, '2021-01-07 21:27:57', '2021-01-07 13:27:57', '2021-01-07 13:27:57'),
(303, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6MzQ6MDVwbQ==', 1, '2021-01-07 21:34:05', '2021-01-07 13:34:05', '2021-01-07 13:34:05'),
(304, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6MzU6MTJwbQ==', 1, '2021-01-07 21:35:12', '2021-01-07 13:35:12', '2021-01-07 13:35:12'),
(305, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6NDc6MDNwbQ==', 1, '2021-01-07 21:47:03', '2021-01-07 13:47:03', '2021-01-07 13:47:03'),
(306, '136', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6NDc6MDZwbQ==', 1, '2021-01-07 21:47:06', '2021-01-07 13:47:06', '2021-01-07 13:47:06'),
(307, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6NDc6MzNwbQ==', 1, '2021-01-07 21:47:33', '2021-01-07 13:47:33', '2021-01-07 13:47:33'),
(308, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6NDc6NThwbQ==', 1, '2021-01-07 21:47:58', '2021-01-07 13:47:58', '2021-01-07 13:47:58'),
(309, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6NTE6MDJwbQ==', 1, '2021-01-07 21:51:02', '2021-01-07 13:51:02', '2021-01-07 13:51:02'),
(310, '136', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6NTI6NTFwbQ==', 1, '2021-01-07 21:52:51', '2021-01-07 13:52:51', '2021-01-07 13:52:51'),
(311, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6NTM6MThwbQ==', 1, '2021-01-07 21:53:18', '2021-01-07 13:53:18', '2021-01-07 13:53:18'),
(312, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6NTQ6MjZwbQ==', 1, '2021-01-07 21:54:26', '2021-01-07 13:54:26', '2021-01-07 13:54:26'),
(313, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6NTU6NTdwbQ==', 1, '2021-01-07 21:55:57', '2021-01-07 13:55:57', '2021-01-07 13:55:57'),
(314, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6NTc6NDNwbQ==', 1, '2021-01-07 21:57:43', '2021-01-07 13:57:43', '2021-01-07 13:57:43'),
(315, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDE6NTg6MzJwbQ==', 1, '2021-01-07 21:58:32', '2021-01-07 13:58:32', '2021-01-07 13:58:32'),
(316, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDI6MDA6MzdwbQ==', 1, '2021-01-07 22:00:37', '2021-01-07 14:00:37', '2021-01-07 14:00:37'),
(317, '136', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDI6MDI6MDVwbQ==', 1, '2021-01-07 22:02:05', '2021-01-07 14:02:05', '2021-01-07 14:02:05'),
(318, '146', 'KjA5MDhBMTQxN0FGNTVDOTVERjE2QTlFODBDNTVCRTgxODMyQkI3QjkyMDIxLTAxLTA3MDI6MDM6MDdwbQ==', 1, '2021-01-07 22:03:07', '2021-01-07 14:03:07', '2021-01-07 14:03:07'),
(319, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDI6MDU6MTlwbQ==', 1, '2021-01-07 22:05:19', '2021-01-07 14:05:19', '2021-01-07 14:05:19'),
(320, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDI6MjI6NDdwbQ==', 1, '2021-01-07 22:22:47', '2021-01-07 14:22:47', '2021-01-07 14:22:47'),
(321, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDI6Mjc6MjdwbQ==', 1, '2021-01-07 22:27:27', '2021-01-07 14:27:27', '2021-01-07 14:27:27'),
(322, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDI6NDU6MTVwbQ==', 1, '2021-01-07 22:45:15', '2021-01-07 14:45:15', '2021-01-07 14:45:15'),
(323, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDI6NDg6NTFwbQ==', 1, '2021-01-07 22:48:51', '2021-01-07 14:48:51', '2021-01-07 14:48:51'),
(324, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDI6NTQ6MTZwbQ==', 1, '2021-01-07 22:54:16', '2021-01-07 14:54:16', '2021-01-07 14:54:16'),
(325, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDQ6MDQ6NDJwbQ==', 1, '2021-01-08 00:04:42', '2021-01-07 16:04:42', '2021-01-07 16:04:42'),
(326, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDQ6MDU6MDdwbQ==', 1, '2021-01-08 00:05:07', '2021-01-07 16:05:07', '2021-01-07 16:05:07'),
(327, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDQ6MDg6MjFwbQ==', 1, '2021-01-08 00:08:21', '2021-01-07 16:08:21', '2021-01-07 16:08:21'),
(328, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDQ6MDk6MjlwbQ==', 1, '2021-01-08 00:09:29', '2021-01-07 16:09:29', '2021-01-07 16:09:29'),
(329, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDQ6MTA6MDdwbQ==', 1, '2021-01-08 00:10:07', '2021-01-07 16:10:07', '2021-01-07 16:10:07'),
(330, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDQ6MTQ6MDhwbQ==', 1, '2021-01-08 00:14:08', '2021-01-07 16:14:08', '2021-01-07 16:14:08'),
(331, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDQ6MTg6NTJwbQ==', 1, '2021-01-08 00:18:52', '2021-01-07 16:18:52', '2021-01-07 16:18:52'),
(332, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDQ6MjA6MTdwbQ==', 1, '2021-01-08 00:20:17', '2021-01-07 16:20:17', '2021-01-07 16:20:17'),
(333, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDQ6MjE6MDdwbQ==', 1, '2021-01-08 00:21:07', '2021-01-07 16:21:07', '2021-01-07 16:21:07'),
(334, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDQ6MjE6MjdwbQ==', 1, '2021-01-08 00:21:27', '2021-01-07 16:21:27', '2021-01-07 16:21:27'),
(335, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDQ6MjY6MTRwbQ==', 1, '2021-01-08 00:26:14', '2021-01-07 16:26:14', '2021-01-07 16:26:14'),
(336, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDQ6Mjg6NDFwbQ==', 1, '2021-01-08 00:28:41', '2021-01-07 16:28:41', '2021-01-07 16:28:41'),
(337, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA3MDU6MTU6MDdwbQ==', 1, '2021-01-08 01:15:07', '2021-01-07 17:15:07', '2021-01-07 17:15:07'),
(338, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDg6MDM6MjBhbQ==', 1, '2021-01-08 16:03:20', '2021-01-08 08:03:20', '2021-01-08 08:03:20'),
(339, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDg6MDY6MjlhbQ==', 1, '2021-01-08 16:06:29', '2021-01-08 08:06:29', '2021-01-08 08:06:29'),
(340, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDg6MTA6NDhhbQ==', 1, '2021-01-08 16:10:48', '2021-01-08 08:10:48', '2021-01-08 08:10:48'),
(341, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDg6NDE6MzhhbQ==', 1, '2021-01-08 16:41:38', '2021-01-08 08:41:38', '2021-01-08 08:41:38'),
(342, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDg6NDc6NDJhbQ==', 1, '2021-01-08 16:47:42', '2021-01-08 08:47:42', '2021-01-08 08:47:42'),
(343, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MTA6MDM6MzNhbQ==', 1, '2021-01-08 18:03:33', '2021-01-08 10:03:33', '2021-01-08 10:03:33'),
(344, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MTA6NTY6NDdhbQ==', 1, '2021-01-08 18:56:47', '2021-01-08 10:56:47', '2021-01-08 10:56:47'),
(345, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MTA6NTk6MzBhbQ==', 1, '2021-01-08 18:59:30', '2021-01-08 10:59:30', '2021-01-08 10:59:30'),
(346, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MTE6MDk6MzlhbQ==', 1, '2021-01-08 19:09:39', '2021-01-08 11:09:39', '2021-01-08 11:09:39'),
(347, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MTE6MTM6NTdhbQ==', 1, '2021-01-08 19:13:57', '2021-01-08 11:13:57', '2021-01-08 11:13:57'),
(348, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MTE6MzI6NTRhbQ==', 1, '2021-01-08 19:32:54', '2021-01-08 11:32:54', '2021-01-08 11:32:54'),
(349, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MTI6MzQ6MzBwbQ==', 1, '2021-01-08 20:34:30', '2021-01-08 12:34:30', '2021-01-08 12:34:30'),
(350, '136', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDE6NTI6NTVwbQ==', 1, '2021-01-08 21:52:55', '2021-01-08 13:52:55', '2021-01-08 13:52:55'),
(351, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDI6MjY6MDdwbQ==', 1, '2021-01-08 22:26:07', '2021-01-08 14:26:07', '2021-01-08 14:26:07'),
(352, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDI6Mjg6MDBwbQ==', 1, '2021-01-08 22:28:00', '2021-01-08 14:28:00', '2021-01-08 14:28:00'),
(353, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDI6Mjk6MDlwbQ==', 1, '2021-01-08 22:29:09', '2021-01-08 14:29:09', '2021-01-08 14:29:09'),
(354, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDI6MzA6MDdwbQ==', 1, '2021-01-08 22:30:07', '2021-01-08 14:30:07', '2021-01-08 14:30:07'),
(355, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDI6Mzg6MzBwbQ==', 1, '2021-01-08 22:38:30', '2021-01-08 14:38:30', '2021-01-08 14:38:30'),
(356, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDI6Mzk6MjZwbQ==', 1, '2021-01-08 22:39:26', '2021-01-08 14:39:26', '2021-01-08 14:39:26'),
(357, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDI6Mzk6NTRwbQ==', 1, '2021-01-08 22:39:54', '2021-01-08 14:39:54', '2021-01-08 14:39:54'),
(358, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDI6NDM6NThwbQ==', 1, '2021-01-08 22:43:58', '2021-01-08 14:43:58', '2021-01-08 14:43:58'),
(359, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDI6NTM6MDhwbQ==', 1, '2021-01-08 22:53:08', '2021-01-08 14:53:08', '2021-01-08 14:53:08'),
(360, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDI6NTg6MzJwbQ==', 1, '2021-01-08 22:58:32', '2021-01-08 14:58:32', '2021-01-08 14:58:32'),
(361, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDM6MzU6MzNwbQ==', 1, '2021-01-08 23:35:33', '2021-01-08 15:35:33', '2021-01-08 15:35:33'),
(362, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDM6Mzg6NDdwbQ==', 1, '2021-01-08 23:38:47', '2021-01-08 15:38:47', '2021-01-08 15:38:47'),
(363, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDQ6MjM6MDRwbQ==', 1, '2021-01-09 00:23:04', '2021-01-08 16:23:04', '2021-01-08 16:23:04'),
(364, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDQ6NDk6MjVwbQ==', 1, '2021-01-09 00:49:25', '2021-01-08 16:49:25', '2021-01-08 16:49:25'),
(365, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDQ6NTI6NDlwbQ==', 1, '2021-01-09 00:52:49', '2021-01-08 16:52:49', '2021-01-08 16:52:49'),
(366, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDU6MDE6MDBwbQ==', 1, '2021-01-09 01:01:00', '2021-01-08 17:01:00', '2021-01-08 17:01:00'),
(367, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDU6MTg6MjFwbQ==', 1, '2021-01-09 01:18:21', '2021-01-08 17:18:21', '2021-01-08 17:18:21'),
(368, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDU6MTk6MDdwbQ==', 1, '2021-01-09 01:19:07', '2021-01-08 17:19:07', '2021-01-08 17:19:07'),
(369, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDg6NDA6MzFhbQ==', 1, '2021-01-11 16:40:31', '2021-01-11 08:40:31', '2021-01-11 08:40:31'),
(370, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDg6NDE6MTdhbQ==', 1, '2021-01-11 16:41:17', '2021-01-11 08:41:17', '2021-01-11 08:41:17'),
(371, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDk6NTA6NDlhbQ==', 1, '2021-01-11 17:50:49', '2021-01-11 09:50:49', '2021-01-11 09:50:49'),
(372, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDk6NTE6NTBhbQ==', 1, '2021-01-11 17:51:50', '2021-01-11 09:51:50', '2021-01-11 09:51:50'),
(373, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDk6NTI6MjZhbQ==', 1, '2021-01-11 17:52:26', '2021-01-11 09:52:26', '2021-01-11 09:52:26'),
(374, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMTA6MDI6MzRhbQ==', 1, '2021-01-11 18:02:34', '2021-01-11 10:02:34', '2021-01-11 10:02:34'),
(375, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMTI6MDE6NTNwbQ==', 1, '2021-01-11 20:01:53', '2021-01-11 12:01:53', '2021-01-11 12:01:53'),
(376, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMTI6MDM6MTNwbQ==', 1, '2021-01-11 20:03:13', '2021-01-11 12:03:13', '2021-01-11 12:03:13'),
(377, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMTI6MDU6NTVwbQ==', 1, '2021-01-11 20:05:55', '2021-01-11 12:05:55', '2021-01-11 12:05:55'),
(378, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMTI6MTU6NTdwbQ==', 1, '2021-01-11 20:15:57', '2021-01-11 12:15:57', '2021-01-11 12:15:57'),
(379, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMTI6MjY6NDhwbQ==', 1, '2021-01-11 20:26:48', '2021-01-11 12:26:48', '2021-01-11 12:26:48'),
(380, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDE6MDg6NDlwbQ==', 1, '2021-01-11 21:08:49', '2021-01-11 13:08:49', '2021-01-11 13:08:49'),
(381, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDE6MTI6MThwbQ==', 1, '2021-01-11 21:12:18', '2021-01-11 13:12:18', '2021-01-11 13:12:18'),
(382, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDE6MTc6MTNwbQ==', 1, '2021-01-11 21:17:13', '2021-01-11 13:17:13', '2021-01-11 13:17:13'),
(383, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDE6MTg6MDhwbQ==', 1, '2021-01-11 21:18:08', '2021-01-11 13:18:08', '2021-01-11 13:18:08'),
(384, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDE6MjA6MjhwbQ==', 1, '2021-01-11 21:20:28', '2021-01-11 13:20:28', '2021-01-11 13:20:28'),
(385, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDE6MjI6MDVwbQ==', 1, '2021-01-11 21:22:05', '2021-01-11 13:22:05', '2021-01-11 13:22:05'),
(386, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDE6MjI6MjBwbQ==', 1, '2021-01-11 21:22:20', '2021-01-11 13:22:20', '2021-01-11 13:22:20'),
(387, '153', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDE6MjY6MzdwbQ==', 1, '2021-01-11 21:26:37', '2021-01-11 13:26:37', '2021-01-11 13:26:37'),
(388, '153', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDE6MzA6NDhwbQ==', 1, '2021-01-11 21:30:48', '2021-01-11 13:30:48', '2021-01-11 13:30:48'),
(389, '154', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDE6NDA6MzNwbQ==', 1, '2021-01-11 21:40:33', '2021-01-11 13:40:33', '2021-01-11 13:40:33'),
(390, '154', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDE6NDY6MDZwbQ==', 1, '2021-01-11 21:46:06', '2021-01-11 13:46:06', '2021-01-11 13:46:06'),
(391, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDE6NDg6MTRwbQ==', 1, '2021-01-11 21:48:14', '2021-01-11 13:48:14', '2021-01-11 13:48:14'),
(392, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDE6NDk6NTNwbQ==', 1, '2021-01-11 21:49:53', '2021-01-11 13:49:53', '2021-01-11 13:49:53'),
(393, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDI6MDY6NDlwbQ==', 1, '2021-01-11 22:06:49', '2021-01-11 14:06:49', '2021-01-11 14:06:49'),
(394, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDI6MTE6MDVwbQ==', 1, '2021-01-11 22:11:05', '2021-01-11 14:11:05', '2021-01-11 14:11:05'),
(395, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDI6MjI6MjNwbQ==', 1, '2021-01-11 22:22:23', '2021-01-11 14:22:23', '2021-01-11 14:22:23'),
(396, '155', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDI6MjU6NTRwbQ==', 1, '2021-01-11 22:25:54', '2021-01-11 14:25:54', '2021-01-11 14:25:54'),
(397, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDI6MzA6MDZwbQ==', 1, '2021-01-11 22:30:06', '2021-01-11 14:30:06', '2021-01-11 14:30:06'),
(398, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDI6MzM6MDhwbQ==', 1, '2021-01-11 22:33:08', '2021-01-11 14:33:08', '2021-01-11 14:33:08'),
(399, '155', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDI6MzM6MjJwbQ==', 1, '2021-01-11 22:33:22', '2021-01-11 14:33:22', '2021-01-11 14:33:22'),
(400, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDI6NTE6MDZwbQ==', 1, '2021-01-11 22:51:06', '2021-01-11 14:51:06', '2021-01-11 14:51:06'),
(401, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDI6NTQ6MzlwbQ==', 1, '2021-01-11 22:54:39', '2021-01-11 14:54:39', '2021-01-11 14:54:39'),
(402, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDI6NTU6MzhwbQ==', 1, '2021-01-11 22:55:38', '2021-01-11 14:55:38', '2021-01-11 14:55:38'),
(403, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDQ6MTA6MDhwbQ==', 1, '2021-01-12 00:10:08', '2021-01-11 16:10:08', '2021-01-11 16:10:08'),
(404, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDQ6MTU6MjdwbQ==', 1, '2021-01-12 00:15:27', '2021-01-11 16:15:27', '2021-01-11 16:15:27'),
(405, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTExMDQ6NTA6NTdwbQ==', 1, '2021-01-12 00:50:57', '2021-01-11 16:50:57', '2021-01-11 16:50:57'),
(406, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDg6MzY6MjhhbQ==', 1, '2021-01-12 16:36:28', '2021-01-12 08:36:28', '2021-01-12 08:36:28'),
(407, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDg6NDk6NDFhbQ==', 1, '2021-01-12 16:49:41', '2021-01-12 08:49:41', '2021-01-12 08:49:41'),
(408, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDg6NTE6NDNhbQ==', 1, '2021-01-12 16:51:43', '2021-01-12 08:51:43', '2021-01-12 08:51:43'),
(409, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDk6MDQ6NTVhbQ==', 1, '2021-01-12 17:04:55', '2021-01-12 09:04:55', '2021-01-12 09:04:55'),
(410, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDk6MDY6NTBhbQ==', 1, '2021-01-12 17:06:50', '2021-01-12 09:06:50', '2021-01-12 09:06:50'),
(411, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDk6MTE6NThhbQ==', 1, '2021-01-12 17:11:58', '2021-01-12 09:11:58', '2021-01-12 09:11:58'),
(412, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDk6MTM6MzFhbQ==', 1, '2021-01-12 17:13:31', '2021-01-12 09:13:31', '2021-01-12 09:13:31'),
(413, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDk6NDQ6NDZhbQ==', 1, '2021-01-12 17:44:46', '2021-01-12 09:44:46', '2021-01-12 09:44:46'),
(414, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMTA6MDY6NTJhbQ==', 1, '2021-01-12 18:06:52', '2021-01-12 10:06:52', '2021-01-12 10:06:52'),
(415, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMTE6MDk6MzJhbQ==', 1, '2021-01-12 19:09:32', '2021-01-12 11:09:32', '2021-01-12 11:09:32'),
(416, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMTE6MTg6MjBhbQ==', 1, '2021-01-12 19:18:20', '2021-01-12 11:18:20', '2021-01-12 11:18:20'),
(417, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMTI6MTA6MjBwbQ==', 1, '2021-01-12 20:10:20', '2021-01-12 12:10:20', '2021-01-12 12:10:20'),
(418, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDE6MjI6NDRwbQ==', 1, '2021-01-12 21:22:44', '2021-01-12 13:22:44', '2021-01-12 13:22:44'),
(419, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDE6MjM6NTdwbQ==', 1, '2021-01-12 21:23:57', '2021-01-12 13:23:57', '2021-01-12 13:23:57'),
(420, '153', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDQ6MDI6MjdwbQ==', 1, '2021-01-13 00:02:27', '2021-01-12 16:02:27', '2021-01-12 16:02:27'),
(421, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDQ6MDI6NTJwbQ==', 1, '2021-01-13 00:02:52', '2021-01-12 16:02:52', '2021-01-12 16:02:52'),
(422, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDQ6MDM6MTZwbQ==', 1, '2021-01-13 00:03:16', '2021-01-12 16:03:16', '2021-01-12 16:03:16'),
(423, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDQ6MTY6NTRwbQ==', 1, '2021-01-13 00:16:54', '2021-01-12 16:16:54', '2021-01-12 16:16:54'),
(424, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDQ6MTc6MTFwbQ==', 1, '2021-01-13 00:17:11', '2021-01-12 16:17:11', '2021-01-12 16:17:11'),
(425, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDQ6Mjk6MjZwbQ==', 1, '2021-01-13 00:29:26', '2021-01-12 16:29:26', '2021-01-12 16:29:26'),
(426, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDQ6MzM6MzhwbQ==', 1, '2021-01-13 00:33:38', '2021-01-12 16:33:38', '2021-01-12 16:33:38'),
(427, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDQ6MzY6MzRwbQ==', 1, '2021-01-13 00:36:34', '2021-01-12 16:36:34', '2021-01-12 16:36:34'),
(428, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDQ6NDM6MTlwbQ==', 1, '2021-01-13 00:43:19', '2021-01-12 16:43:19', '2021-01-12 16:43:19'),
(429, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDQ6NDQ6MDZwbQ==', 1, '2021-01-13 00:44:06', '2021-01-12 16:44:06', '2021-01-12 16:44:06'),
(430, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDQ6NTc6MzdwbQ==', 1, '2021-01-13 00:57:37', '2021-01-12 16:57:37', '2021-01-12 16:57:37'),
(431, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDU6MDU6MzZwbQ==', 1, '2021-01-13 01:05:36', '2021-01-12 17:05:36', '2021-01-12 17:05:36'),
(432, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDU6MDY6MTFwbQ==', 1, '2021-01-13 01:06:11', '2021-01-12 17:06:11', '2021-01-12 17:06:11'),
(433, '116', 'KkI1MTM0OTU3MDNERDMxQzRCMjI4MTNCNkZBMjkxRDhDREFGQzMxRDUyMDIxLTAxLTEyMDU6MDY6NTFwbQ==', 1, '2021-01-13 01:06:51', '2021-01-12 17:06:51', '2021-01-12 17:06:51'),
(434, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDU6MDc6MDVwbQ==', 1, '2021-01-13 01:07:05', '2021-01-12 17:07:05', '2021-01-12 17:07:05'),
(435, '155', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDU6MTQ6MjRwbQ==', 1, '2021-01-13 01:14:24', '2021-01-12 17:14:24', '2021-01-12 17:14:24'),
(436, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDU6MTQ6NDVwbQ==', 1, '2021-01-13 01:14:45', '2021-01-12 17:14:45', '2021-01-12 17:14:45'),
(437, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDU6MTQ6NTRwbQ==', 1, '2021-01-13 01:14:54', '2021-01-12 17:14:54', '2021-01-12 17:14:54'),
(438, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEyMDU6MTU6NDdwbQ==', 1, '2021-01-13 01:15:47', '2021-01-12 17:15:47', '2021-01-12 17:15:47'),
(439, '155', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAxLTEyMDU6MTY6MDlwbQ==', 1, '2021-01-13 01:16:09', '2021-01-12 17:16:09', '2021-01-12 17:16:09'),
(440, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDg6Mjk6MjBhbQ==', 1, '2021-01-13 16:29:20', '2021-01-13 08:29:20', '2021-01-13 08:29:20'),
(441, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDg6NTA6NDFhbQ==', 1, '2021-01-13 16:50:41', '2021-01-13 08:50:41', '2021-01-13 08:50:41'),
(442, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDg6NTM6NDJhbQ==', 1, '2021-01-13 16:53:42', '2021-01-13 08:53:42', '2021-01-13 08:53:42'),
(443, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDg6NTQ6MDdhbQ==', 1, '2021-01-13 16:54:07', '2021-01-13 08:54:07', '2021-01-13 08:54:07'),
(444, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDg6NTg6NDZhbQ==', 1, '2021-01-13 16:58:46', '2021-01-13 08:58:46', '2021-01-13 08:58:46'),
(445, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDk6MDI6MDZhbQ==', 1, '2021-01-13 17:02:06', '2021-01-13 09:02:06', '2021-01-13 09:02:06'),
(446, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDk6MDM6NTZhbQ==', 1, '2021-01-13 17:03:56', '2021-01-13 09:03:56', '2021-01-13 09:03:56'),
(447, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDk6MjM6MTRhbQ==', 1, '2021-01-13 17:23:14', '2021-01-13 09:23:14', '2021-01-13 09:23:14'),
(448, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDk6MjQ6MjVhbQ==', 1, '2021-01-13 17:24:25', '2021-01-13 09:24:25', '2021-01-13 09:24:25'),
(449, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDk6MjQ6NDJhbQ==', 1, '2021-01-13 17:24:42', '2021-01-13 09:24:42', '2021-01-13 09:24:42'),
(450, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDk6Mjg6NTZhbQ==', 1, '2021-01-13 17:28:56', '2021-01-13 09:28:56', '2021-01-13 09:28:56'),
(451, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDk6Mjk6MTRhbQ==', 1, '2021-01-13 17:29:14', '2021-01-13 09:29:14', '2021-01-13 09:29:14'),
(452, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDk6MzA6MjFhbQ==', 1, '2021-01-13 17:30:21', '2021-01-13 09:30:21', '2021-01-13 09:30:21');
INSERT INTO `tokens` (`token_id`, `user_id`, `token`, `token_type`, `token_expiration`, `updated_at`, `created_at`) VALUES
(453, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDk6NTA6MDBhbQ==', 1, '2021-01-13 17:50:00', '2021-01-13 09:50:00', '2021-01-13 09:50:00'),
(454, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDk6NTI6MTFhbQ==', 1, '2021-01-13 17:52:11', '2021-01-13 09:52:11', '2021-01-13 09:52:11'),
(455, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDk6NTI6MTJhbQ==', 1, '2021-01-13 17:52:12', '2021-01-13 09:52:12', '2021-01-13 09:52:12'),
(456, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDk6NTI6MzBhbQ==', 1, '2021-01-13 17:52:30', '2021-01-13 09:52:30', '2021-01-13 09:52:30'),
(457, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDk6NTY6NDBhbQ==', 1, '2021-01-13 17:56:40', '2021-01-13 09:56:40', '2021-01-13 09:56:40'),
(458, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMTA6MDA6MjFhbQ==', 1, '2021-01-13 18:00:21', '2021-01-13 10:00:21', '2021-01-13 10:00:21'),
(459, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMTA6MzY6NDlhbQ==', 1, '2021-01-13 18:36:49', '2021-01-13 10:36:49', '2021-01-13 10:36:49'),
(460, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMTA6NDk6NDZhbQ==', 1, '2021-01-13 18:49:46', '2021-01-13 10:49:46', '2021-01-13 10:49:46'),
(461, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMTA6NTE6NTNhbQ==', 1, '2021-01-13 18:51:53', '2021-01-13 10:51:53', '2021-01-13 10:51:53'),
(462, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMTE6MjM6MDBhbQ==', 1, '2021-01-13 19:23:00', '2021-01-13 11:23:00', '2021-01-13 11:23:00'),
(463, '1', 'KkI1MTM0OTU3MDNERDMxQzRCMjI4MTNCNkZBMjkxRDhDREFGQzMxRDUyMDIxLTAxLTEzMTE6NDc6NDdhbQ==', 1, '2021-01-13 19:47:47', '2021-01-13 11:47:47', '2021-01-13 11:47:47'),
(464, '155', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAxLTEzMTE6NTA6MDNhbQ==', 1, '2021-01-13 19:50:03', '2021-01-13 11:50:03', '2021-01-13 11:50:03'),
(465, '155', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAxLTEzMTE6NTI6MDZhbQ==', 1, '2021-01-13 19:52:06', '2021-01-13 11:52:06', '2021-01-13 11:52:06'),
(466, '155', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAxLTEzMTE6NTM6MDZhbQ==', 1, '2021-01-13 19:53:06', '2021-01-13 11:53:06', '2021-01-13 11:53:06'),
(467, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDE6MTc6MjBwbQ==', 1, '2021-01-13 21:17:20', '2021-01-13 13:17:20', '2021-01-13 13:17:20'),
(468, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDE6MjM6MjhwbQ==', 1, '2021-01-13 21:23:28', '2021-01-13 13:23:28', '2021-01-13 13:23:28'),
(469, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDE6MjQ6MzhwbQ==', 1, '2021-01-13 21:24:38', '2021-01-13 13:24:38', '2021-01-13 13:24:38'),
(470, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDE6MjY6NDlwbQ==', 1, '2021-01-13 21:26:49', '2021-01-13 13:26:49', '2021-01-13 13:26:49'),
(471, '146', 'KjA5MDhBMTQxN0FGNTVDOTVERjE2QTlFODBDNTVCRTgxODMyQkI3QjkyMDIxLTAxLTEzMDE6MzM6MzdwbQ==', 1, '2021-01-13 21:33:37', '2021-01-13 13:33:37', '2021-01-13 13:33:37'),
(472, '155', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAxLTEzMDE6MzY6NDFwbQ==', 1, '2021-01-13 21:36:41', '2021-01-13 13:36:41', '2021-01-13 13:36:41'),
(473, '155', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAxLTEzMDE6NDA6MDVwbQ==', 1, '2021-01-13 21:40:05', '2021-01-13 13:40:05', '2021-01-13 13:40:05'),
(474, '146', 'KjA5MDhBMTQxN0FGNTVDOTVERjE2QTlFODBDNTVCRTgxODMyQkI3QjkyMDIxLTAxLTEzMDE6NDE6MDlwbQ==', 1, '2021-01-13 21:41:09', '2021-01-13 13:41:09', '2021-01-13 13:41:09'),
(475, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDE6NDY6MDhwbQ==', 1, '2021-01-13 21:46:08', '2021-01-13 13:46:08', '2021-01-13 13:46:08'),
(476, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDE6NDg6MjBwbQ==', 1, '2021-01-13 21:48:20', '2021-01-13 13:48:20', '2021-01-13 13:48:20'),
(477, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDE6NTE6MTNwbQ==', 1, '2021-01-13 21:51:13', '2021-01-13 13:51:13', '2021-01-13 13:51:13'),
(478, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDE6NTY6NTJwbQ==', 1, '2021-01-13 21:56:52', '2021-01-13 13:56:52', '2021-01-13 13:56:52'),
(479, '155', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAxLTEzMDI6MTc6MTNwbQ==', 1, '2021-01-13 22:17:13', '2021-01-13 14:17:13', '2021-01-13 14:17:13'),
(480, '1', 'KkI1MTM0OTU3MDNERDMxQzRCMjI4MTNCNkZBMjkxRDhDREFGQzMxRDUyMDIxLTAxLTEzMDI6Mjc6NDBwbQ==', 1, '2021-01-13 22:27:40', '2021-01-13 14:27:40', '2021-01-13 14:27:40'),
(481, '1', 'KkI1MTM0OTU3MDNERDMxQzRCMjI4MTNCNkZBMjkxRDhDREFGQzMxRDUyMDIxLTAxLTEzMDI6NDg6MjhwbQ==', 1, '2021-01-13 22:48:28', '2021-01-13 14:48:28', '2021-01-13 14:48:28'),
(482, '1', 'KkI1MTM0OTU3MDNERDMxQzRCMjI4MTNCNkZBMjkxRDhDREFGQzMxRDUyMDIxLTAxLTEzMDI6NTE6MjZwbQ==', 1, '2021-01-13 22:51:26', '2021-01-13 14:51:26', '2021-01-13 14:51:26'),
(483, '159', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTEzMDM6MTI6MzBwbQ==', 1, '2021-01-13 23:12:30', '2021-01-13 15:12:30', '2021-01-13 15:12:30'),
(484, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTEzMDM6MjQ6MDlwbQ==', 1, '2021-01-13 23:24:09', '2021-01-13 15:24:09', '2021-01-13 15:24:09'),
(485, '1', 'KkI1MTM0OTU3MDNERDMxQzRCMjI4MTNCNkZBMjkxRDhDREFGQzMxRDUyMDIxLTAxLTEzMDM6NTc6MzBwbQ==', 1, '2021-01-13 23:57:30', '2021-01-13 15:57:30', '2021-01-13 15:57:30'),
(486, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTEzMDM6NTk6MTFwbQ==', 1, '2021-01-13 23:59:11', '2021-01-13 15:59:11', '2021-01-13 15:59:11'),
(487, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTEzMDQ6MTY6NDZwbQ==', 1, '2021-01-14 00:16:46', '2021-01-13 16:16:46', '2021-01-13 16:16:46'),
(488, '1', 'KkI1MTM0OTU3MDNERDMxQzRCMjI4MTNCNkZBMjkxRDhDREFGQzMxRDUyMDIxLTAxLTEzMDQ6MzY6MjdwbQ==', 1, '2021-01-14 00:36:27', '2021-01-13 16:36:27', '2021-01-13 16:36:27'),
(489, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE0MDg6MjM6MjZhbQ==', 1, '2021-01-14 16:23:26', '2021-01-14 08:23:26', '2021-01-14 08:23:26'),
(490, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE0MDk6MDI6NDBhbQ==', 1, '2021-01-14 17:02:40', '2021-01-14 09:02:40', '2021-01-14 09:02:40'),
(491, '1', 'KkI1MTM0OTU3MDNERDMxQzRCMjI4MTNCNkZBMjkxRDhDREFGQzMxRDUyMDIxLTAxLTE0MDk6MDM6NDZhbQ==', 1, '2021-01-14 17:03:46', '2021-01-14 09:03:46', '2021-01-14 09:03:46'),
(492, '153', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MDk6MDQ6MzdhbQ==', 1, '2021-01-14 17:04:37', '2021-01-14 09:04:37', '2021-01-14 09:04:37'),
(493, '1', 'KkI1MTM0OTU3MDNERDMxQzRCMjI4MTNCNkZBMjkxRDhDREFGQzMxRDUyMDIxLTAxLTE0MDk6MDk6MzJhbQ==', 1, '2021-01-14 17:09:32', '2021-01-14 09:09:32', '2021-01-14 09:09:32'),
(494, '1', 'KkI1MTM0OTU3MDNERDMxQzRCMjI4MTNCNkZBMjkxRDhDREFGQzMxRDUyMDIxLTAxLTE0MDk6MTU6MDBhbQ==', 1, '2021-01-14 17:15:00', '2021-01-14 09:15:00', '2021-01-14 09:15:00'),
(495, '1', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE0MDk6MjQ6NDJhbQ==', 1, '2021-01-14 17:24:42', '2021-01-14 09:24:42', '2021-01-14 09:24:42'),
(496, '1', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE0MDk6Mjk6NThhbQ==', 1, '2021-01-14 17:29:58', '2021-01-14 09:29:58', '2021-01-14 09:29:58'),
(497, '1', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE0MDk6MzA6MTlhbQ==', 1, '2021-01-14 17:30:19', '2021-01-14 09:30:19', '2021-01-14 09:30:19'),
(498, '1', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE0MDk6MzU6MjBhbQ==', 1, '2021-01-14 17:35:20', '2021-01-14 09:35:20', '2021-01-14 09:35:20'),
(499, '1', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE0MTA6MDE6NTZhbQ==', 1, '2021-01-14 18:01:56', '2021-01-14 10:01:56', '2021-01-14 10:01:56'),
(500, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE0MTA6Mjg6NDRhbQ==', 1, '2021-01-14 18:28:44', '2021-01-14 10:28:44', '2021-01-14 10:28:44'),
(501, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MTA6Mjg6NDZhbQ==', 1, '2021-01-14 18:28:46', '2021-01-14 10:28:46', '2021-01-14 10:28:46'),
(502, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MTA6NDc6NDdhbQ==', 1, '2021-01-14 18:47:47', '2021-01-14 10:47:47', '2021-01-14 10:47:47'),
(503, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MTA6NTI6MTVhbQ==', 1, '2021-01-14 18:52:15', '2021-01-14 10:52:15', '2021-01-14 10:52:15'),
(504, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MTA6NTQ6MTZhbQ==', 1, '2021-01-14 18:54:16', '2021-01-14 10:54:16', '2021-01-14 10:54:16'),
(505, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MTE6MTE6MTNhbQ==', 1, '2021-01-14 19:11:13', '2021-01-14 11:11:13', '2021-01-14 11:11:13'),
(506, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MTE6MjE6MDBhbQ==', 1, '2021-01-14 19:21:00', '2021-01-14 11:21:00', '2021-01-14 11:21:00'),
(507, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MTE6MjU6NTBhbQ==', 1, '2021-01-14 19:25:50', '2021-01-14 11:25:50', '2021-01-14 11:25:50'),
(508, '118', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MTE6MjY6MTVhbQ==', 1, '2021-01-14 19:26:15', '2021-01-14 11:26:15', '2021-01-14 11:26:15'),
(509, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MTE6Mjk6MDJhbQ==', 1, '2021-01-14 19:29:02', '2021-01-14 11:29:02', '2021-01-14 11:29:02'),
(510, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MTE6Mzc6MjZhbQ==', 1, '2021-01-14 19:37:26', '2021-01-14 11:37:26', '2021-01-14 11:37:26'),
(511, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MTE6Mzc6NDBhbQ==', 1, '2021-01-14 19:37:40', '2021-01-14 11:37:40', '2021-01-14 11:37:40'),
(512, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MTE6NTk6MDRhbQ==', 1, '2021-01-14 19:59:04', '2021-01-14 11:59:04', '2021-01-14 11:59:04'),
(513, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MDE6MDg6MThwbQ==', 1, '2021-01-14 21:08:18', '2021-01-14 13:08:18', '2021-01-14 13:08:18'),
(514, '153', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MDE6MTA6NDRwbQ==', 1, '2021-01-14 21:10:44', '2021-01-14 13:10:44', '2021-01-14 13:10:44'),
(515, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MDE6MTU6MzNwbQ==', 1, '2021-01-14 21:15:33', '2021-01-14 13:15:33', '2021-01-14 13:15:33'),
(516, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MDE6MTY6NTBwbQ==', 1, '2021-01-14 21:16:50', '2021-01-14 13:16:50', '2021-01-14 13:16:50'),
(517, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MDI6MjA6MDRwbQ==', 1, '2021-01-14 22:20:04', '2021-01-14 14:20:04', '2021-01-14 14:20:04'),
(518, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MDI6MjU6MTlwbQ==', 1, '2021-01-14 22:25:19', '2021-01-14 14:25:19', '2021-01-14 14:25:19'),
(519, '155', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAxLTE0MDM6MzM6NTVwbQ==', 1, '2021-01-14 23:33:55', '2021-01-14 15:33:55', '2021-01-14 15:33:55'),
(520, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MDQ6MjQ6NDdwbQ==', 1, '2021-01-15 00:24:47', '2021-01-14 16:24:47', '2021-01-14 16:24:47'),
(521, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MDQ6MzI6MTRwbQ==', 1, '2021-01-15 00:32:14', '2021-01-14 16:32:14', '2021-01-14 16:32:14'),
(522, '155', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAxLTE0MDQ6NDE6MjdwbQ==', 1, '2021-01-15 00:41:27', '2021-01-14 16:41:27', '2021-01-14 16:41:27'),
(523, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE0MDU6MjY6MzRwbQ==', 1, '2021-01-15 01:26:34', '2021-01-14 17:26:34', '2021-01-14 17:26:34'),
(524, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDg6MzM6MzVhbQ==', 1, '2021-01-15 16:33:35', '2021-01-15 08:33:35', '2021-01-15 08:33:35'),
(525, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDg6NTQ6MDRhbQ==', 1, '2021-01-15 16:54:04', '2021-01-15 08:54:04', '2021-01-15 08:54:04'),
(526, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDg6NTg6MTBhbQ==', 1, '2021-01-15 16:58:10', '2021-01-15 08:58:10', '2021-01-15 08:58:10'),
(527, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDg6NTk6MDdhbQ==', 1, '2021-01-15 16:59:07', '2021-01-15 08:59:07', '2021-01-15 08:59:07'),
(528, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6MTM6MDVhbQ==', 1, '2021-01-15 17:13:05', '2021-01-15 09:13:05', '2021-01-15 09:13:05'),
(529, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6MTg6MTZhbQ==', 1, '2021-01-15 17:18:16', '2021-01-15 09:18:16', '2021-01-15 09:18:16'),
(530, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6MTg6NDVhbQ==', 1, '2021-01-15 17:18:45', '2021-01-15 09:18:45', '2021-01-15 09:18:45'),
(531, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6MTk6MDBhbQ==', 1, '2021-01-15 17:19:00', '2021-01-15 09:19:00', '2021-01-15 09:19:00'),
(532, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6MjA6MzhhbQ==', 1, '2021-01-15 17:20:38', '2021-01-15 09:20:38', '2021-01-15 09:20:38'),
(533, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6Mjg6MDRhbQ==', 1, '2021-01-15 17:28:04', '2021-01-15 09:28:04', '2021-01-15 09:28:04'),
(534, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6Mjg6NThhbQ==', 1, '2021-01-15 17:28:58', '2021-01-15 09:28:58', '2021-01-15 09:28:58'),
(535, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6Mjk6NTlhbQ==', 1, '2021-01-15 17:29:59', '2021-01-15 09:29:59', '2021-01-15 09:29:59'),
(536, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6MzE6MDVhbQ==', 1, '2021-01-15 17:31:05', '2021-01-15 09:31:05', '2021-01-15 09:31:05'),
(537, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6Mzc6MTFhbQ==', 1, '2021-01-15 17:37:11', '2021-01-15 09:37:11', '2021-01-15 09:37:11'),
(538, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6Mzg6MjNhbQ==', 1, '2021-01-15 17:38:23', '2021-01-15 09:38:23', '2021-01-15 09:38:23'),
(539, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6Mzk6MTNhbQ==', 1, '2021-01-15 17:39:13', '2021-01-15 09:39:13', '2021-01-15 09:39:13'),
(540, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6NDE6MjNhbQ==', 1, '2021-01-15 17:41:23', '2021-01-15 09:41:23', '2021-01-15 09:41:23'),
(541, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6NDU6NDJhbQ==', 1, '2021-01-15 17:45:42', '2021-01-15 09:45:42', '2021-01-15 09:45:42'),
(542, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6NDY6NThhbQ==', 1, '2021-01-15 17:46:58', '2021-01-15 09:46:58', '2021-01-15 09:46:58'),
(543, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6NDk6MzFhbQ==', 1, '2021-01-15 17:49:31', '2021-01-15 09:49:31', '2021-01-15 09:49:31'),
(544, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6NTM6NDhhbQ==', 1, '2021-01-15 17:53:48', '2021-01-15 09:53:48', '2021-01-15 09:53:48'),
(545, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6NTU6MDdhbQ==', 1, '2021-01-15 17:55:07', '2021-01-15 09:55:07', '2021-01-15 09:55:07'),
(546, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDk6NTY6MDRhbQ==', 1, '2021-01-15 17:56:04', '2021-01-15 09:56:04', '2021-01-15 09:56:04'),
(547, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MTA6Mjc6NDZhbQ==', 1, '2021-01-15 18:27:46', '2021-01-15 10:27:46', '2021-01-15 10:27:46'),
(548, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MTA6MzE6MzBhbQ==', 1, '2021-01-15 18:31:30', '2021-01-15 10:31:30', '2021-01-15 10:31:30'),
(549, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MTA6Mzc6MjRhbQ==', 1, '2021-01-15 18:37:24', '2021-01-15 10:37:24', '2021-01-15 10:37:24'),
(550, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MTA6Mzk6NDhhbQ==', 1, '2021-01-15 18:39:48', '2021-01-15 10:39:48', '2021-01-15 10:39:48'),
(551, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MTA6NDM6NTBhbQ==', 1, '2021-01-15 18:43:50', '2021-01-15 10:43:50', '2021-01-15 10:43:50'),
(552, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MTA6NDY6MjJhbQ==', 1, '2021-01-15 18:46:22', '2021-01-15 10:46:22', '2021-01-15 10:46:22'),
(553, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MTA6NDc6MzZhbQ==', 1, '2021-01-15 18:47:36', '2021-01-15 10:47:36', '2021-01-15 10:47:36'),
(554, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE1MTA6NTA6MTRhbQ==', 1, '2021-01-15 18:50:14', '2021-01-15 10:50:14', '2021-01-15 10:50:14'),
(555, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MTA6NTA6MjNhbQ==', 1, '2021-01-15 18:50:23', '2021-01-15 10:50:23', '2021-01-15 10:50:23'),
(556, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE1MTA6NTE6MjdhbQ==', 1, '2021-01-15 18:51:27', '2021-01-15 10:51:27', '2021-01-15 10:51:27'),
(557, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE1MTA6NTE6NDlhbQ==', 1, '2021-01-15 18:51:49', '2021-01-15 10:51:49', '2021-01-15 10:51:49'),
(558, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MTA6NTI6MDhhbQ==', 1, '2021-01-15 18:52:08', '2021-01-15 10:52:08', '2021-01-15 10:52:08'),
(559, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MTA6NTM6NDZhbQ==', 1, '2021-01-15 18:53:46', '2021-01-15 10:53:46', '2021-01-15 10:53:46'),
(560, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE1MDI6MTY6NTBwbQ==', 1, '2021-01-15 22:16:50', '2021-01-15 14:16:50', '2021-01-15 14:16:50'),
(561, '155', 'Kjc5Q0VFNjZGMkVBM0NFMzM0QjI5MDlGQTRCMURBN0VEMTdCMjEzNDAyMDIxLTAxLTE1MDI6NTQ6MjhwbQ==', 1, '2021-01-15 22:54:28', '2021-01-15 14:54:28', '2021-01-15 14:54:28'),
(562, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE2MDc6NDA6MjBwbQ==', 1, '2021-01-17 03:40:20', '2021-01-16 19:40:20', '2021-01-16 19:40:20'),
(563, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MDk6MDU6MzRhbQ==', 1, '2021-01-18 17:05:34', '2021-01-18 09:05:34', '2021-01-18 09:05:34'),
(564, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE4MDk6MDY6MDdhbQ==', 1, '2021-01-18 17:06:07', '2021-01-18 09:06:07', '2021-01-18 09:06:07'),
(565, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE4MDk6MTM6MDFhbQ==', 1, '2021-01-18 17:13:01', '2021-01-18 09:13:01', '2021-01-18 09:13:01'),
(566, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE4MDk6MjU6MjJhbQ==', 1, '2021-01-18 17:25:22', '2021-01-18 09:25:22', '2021-01-18 09:25:22'),
(567, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MTA6NTc6NTFhbQ==', 1, '2021-01-18 18:57:51', '2021-01-18 10:57:51', '2021-01-18 10:57:51'),
(568, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MTE6MTU6MzJhbQ==', 1, '2021-01-18 19:15:32', '2021-01-18 11:15:32', '2021-01-18 11:15:32'),
(569, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE4MTE6NDE6MzBhbQ==', 1, '2021-01-18 19:41:30', '2021-01-18 11:41:30', '2021-01-18 11:41:30'),
(570, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MTE6NDI6MjlhbQ==', 1, '2021-01-18 19:42:29', '2021-01-18 11:42:29', '2021-01-18 11:42:29'),
(571, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE4MTI6MDA6MjlwbQ==', 1, '2021-01-18 20:00:29', '2021-01-18 12:00:29', '2021-01-18 12:00:29'),
(572, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE4MTI6MDQ6MTVwbQ==', 1, '2021-01-18 20:04:15', '2021-01-18 12:04:15', '2021-01-18 12:04:15'),
(573, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MDE6MDc6NDRwbQ==', 1, '2021-01-18 21:07:44', '2021-01-18 13:07:44', '2021-01-18 13:07:44'),
(574, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MDE6MDk6MzJwbQ==', 1, '2021-01-18 21:09:32', '2021-01-18 13:09:32', '2021-01-18 13:09:32'),
(575, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MDE6MzU6NTVwbQ==', 1, '2021-01-18 21:35:55', '2021-01-18 13:35:55', '2021-01-18 13:35:55'),
(576, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MDI6MDI6NDVwbQ==', 1, '2021-01-18 22:02:45', '2021-01-18 14:02:45', '2021-01-18 14:02:45'),
(577, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE4MDI6NTI6MjlwbQ==', 1, '2021-01-18 22:52:29', '2021-01-18 14:52:29', '2021-01-18 14:52:29'),
(578, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MDM6NDM6MzhwbQ==', 1, '2021-01-18 23:43:38', '2021-01-18 15:43:38', '2021-01-18 15:43:38'),
(579, '116', 'KjBDQTY5RDI1NDY1NDc0NkNFNEMyMzJCNkIyQUZFMzk3RDRFMTUzREYyMDIxLTAxLTE4MDM6NDc6MzhwbQ==', 1, '2021-01-18 23:47:38', '2021-01-18 15:47:38', '2021-01-18 15:47:38'),
(580, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MDM6NTQ6MjFwbQ==', 1, '2021-01-18 23:54:21', '2021-01-18 15:54:21', '2021-01-18 15:54:21'),
(581, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MDM6NTc6NDRwbQ==', 1, '2021-01-18 23:57:44', '2021-01-18 15:57:44', '2021-01-18 15:57:44'),
(582, '116', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MDQ6MDE6MzRwbQ==', 1, '2021-01-19 00:01:34', '2021-01-18 16:01:34', '2021-01-18 16:01:34'),
(583, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MDQ6MDY6MDFwbQ==', 1, '2021-01-19 00:06:01', '2021-01-18 16:06:01', '2021-01-18 16:06:01'),
(584, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MDQ6MDg6MzVwbQ==', 1, '2021-01-19 00:08:35', '2021-01-18 16:08:35', '2021-01-18 16:08:35'),
(585, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MDQ6NDM6NDJwbQ==', 1, '2021-01-19 00:43:42', '2021-01-18 16:43:42', '2021-01-18 16:43:42'),
(586, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MDU6MDE6NDFwbQ==', 1, '2021-01-19 01:01:41', '2021-01-18 17:01:42', '2021-01-18 17:01:42'),
(587, '1', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTE4MDU6MDM6MjBwbQ==', 1, '2021-01-19 01:03:20', '2021-01-18 17:03:20', '2021-01-18 17:03:20');

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
(1, 'kaelreyes', 'kaelreyes12@hotmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '1', '2021-01-18 05:03:20', '1', 1, 1, '2021-01-04 13:59:14', '2021-01-18 17:03:20'),
(116, '', 'romelpostrano@gmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '2', '2021-01-18 04:01:34', '1', 0, 1, '2021-01-04 10:27:59', '2021-01-18 16:01:34'),
(117, '', 'harry@leentechsystems.com', '1311e6f6ea3acb5c22c4ac58c049878a', '2', NULL, '1', 1, 1, '2021-01-04 12:04:20', '0000-00-00 00:00:00'),
(118, '', 'cecilvelgar@leentechsystems.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '2', '2021-01-14 11:26:15', '1', 1, 0, '2021-01-04 01:12:22', '2021-01-14 11:26:15'),
(119, '', 'test@test.com', 'c81bfa7a5517b005f5eefb6aa00c494f', '2', NULL, '0', 1, 1, '2021-01-04 06:03:41', '2021-01-06 14:59:45'),
(120, '', 'asd@asd.com', '0b9de2127e13de96a6649bacc4f699d5', '2', NULL, '1', 1, 1, '2021-01-04 06:13:57', '0000-00-00 00:00:00'),
(121, '', 'testtest@gmail.com', 'cca227734de28be76e9e1668dd02f033', '2', NULL, '1', 1, 1, '2021-01-04 06:24:36', '0000-00-00 00:00:00'),
(122, '', 'qweqwe@qwe.com', '812ea7f62dd9616a8d5824cc720f8f35', '2', NULL, '1', 1, 1, '2021-01-05 08:19:07', '0000-00-00 00:00:00'),
(123, '', 'jason@email.com', '33b59a83893ee01d83acef1fe61ae694', '2', NULL, '1', 1, 1, '2021-01-05 02:10:02', '0000-00-00 00:00:00'),
(124, '', 'rojericherrera@gmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '2', NULL, '1', 1, 1, '2021-01-05 02:27:35', '2021-01-06 15:33:49'),
(136, '', 'kaeleak12@gmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '1', '2021-01-08 01:52:55', '1', 1, 1, '2021-01-06 01:30:16', '2021-01-08 13:52:55'),
(137, '', 'sadasssssssssssssssssssssssssssssssd@gmail.co', '74bfc57514b328c297fcfc3af5591521', '2', NULL, '1', 1, 1, '2021-01-06 02:04:41', '2021-01-06 16:45:53'),
(138, '', 'wqe@gmail.com', '2bedf9111dde6c1de9e934e0e513378d', '2', NULL, '1', 1, 1, '2021-01-06 02:10:24', '0000-00-00 00:00:00'),
(139, '', 'daSFSA@gmail.com', 'b5947352f1835b9abad26c46403080be', '2', NULL, '1', 1, 1, '2021-01-06 02:15:27', '0000-00-00 00:00:00'),
(140, '', 'adsd@asa.com', 'fe9ee53c3a25263993ef2fce71efc5d3', '2', NULL, '1', 1, 1, '2021-01-06 02:17:12', '0000-00-00 00:00:00'),
(141, '', 'dadas@sda.com', '220a990b969c65fe10aacdac682ca53d', '2', NULL, '1', 1, 1, '2021-01-06 02:20:22', '0000-00-00 00:00:00'),
(142, '', 'sadd@gam.com', '8d1b75ff2916087192eb956fa3445574', '2', NULL, '1', 1, 1, '2021-01-06 02:22:33', '0000-00-00 00:00:00'),
(143, '', 'sadas@gmail.com', '782c41af5fe40c19ed547211a82cd5ae', '2', NULL, '1', 1, 1, '2021-01-06 02:23:44', '0000-00-00 00:00:00'),
(144, '', 'ellasantos203@gmail.com', 'a2ccf7525ad8432616dcdf2d41becd11', '1', NULL, '1', 1, 1, '2021-01-06 02:45:45', '2021-01-07 15:51:53'),
(145, '', 'ellasanros23@eail.com', '2d8455789725d88acb9bb15d81ed1c5c', '2', NULL, '1', 1, 1, '2021-01-06 04:56:18', '0000-00-00 00:00:00'),
(146, '', 'eleanormaesantos@gmail.com', '*0908A1417AF55C95DF16A9E80C55BE81832BB7B9', '2', '2021-01-13 01:41:09', '1', 1, 1, '2021-01-06 05:05:17', '2021-01-13 13:41:09'),
(147, '', 'yourname@gmail.com', '5ae9cb3f20fc913541a64c81a1a4e1f4', '2', NULL, '1', 1, 1, '2021-01-07 09:40:21', '0000-00-00 00:00:00'),
(148, '', 'george@leentechsystems.net', 'c96b78f995009ba9797648404a21b211', '2', NULL, '1', 1, 1, '2021-01-07 10:46:11', '0000-00-00 00:00:00'),
(149, '', 'albertmalabanan31@gmail.com', '22204e4c4e7ea060863667156c30ffd1', '2', NULL, '1', 1, 1, '2021-01-07 03:42:11', '0000-00-00 00:00:00'),
(150, '', 'lea@testmail.com', '564e4ac57887e24a9dade6d5ffa07ea2', '1', NULL, '1', 1, 1, '2021-01-07 03:55:30', '2021-01-12 11:49:06'),
(151, '', 'sdasd@sad.com', 'fb04294ed2e77b7007dde338c30bc642', '2', NULL, '1', 1, 1, '2021-01-08 01:39:48', '0000-00-00 00:00:00'),
(152, '', 'hustisya@mailo.com', 'de75a6796ed190c0bb3bc2de19b06607', '2', NULL, '1', 1, 1, '2021-01-11 12:00:15', '0000-00-00 00:00:00'),
(153, '', 'iverson@leentechsystems.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '2', '2021-01-14 01:10:44', '1', 1, 1, '2021-01-11 01:25:34', '2021-01-14 13:10:44'),
(154, '', 'eleanor@leentechsystems.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '2', '2021-01-11 01:46:07', '1', 1, 1, '2021-01-11 01:38:08', '2021-01-11 13:46:07'),
(155, '', 'kylenfaroa@gmail.com', '*79CEE66F2EA3CE334B2909FA4B1DA7ED17B21340', '1', '2021-01-15 02:54:28', '1', 1, 1, '2021-01-11 02:19:24', '2021-01-15 14:54:28'),
(156, '', 'ailo@dataplay.com', 'e4866461e53d1a1da27bdf1d141c4f37', '2', NULL, '1', 1, 1, '2021-01-13 08:34:55', '0000-00-00 00:00:00'),
(157, '', 'akolangto@testing.com', '69878d194d9f0b16abbd429f34ed7031', '2', NULL, '1', 1, 1, '2021-01-13 08:41:29', '0000-00-00 00:00:00'),
(158, '', 'test@mailx.com', '55d8b900e7cae2a49ae1800fedce6564', '2', NULL, '1', 1, 1, '2021-01-13 11:59:21', '0000-00-00 00:00:00'),
(159, '', 'RonaldComendador20@gmail.com', '*B513495703DD31C4B22813B6FA291D8CDAFC31D5', '1', '2021-01-13 03:12:30', '0', 1, 0, '2021-01-13 03:07:35', '2021-01-14 15:05:08'),
(160, '', 'gruezoiversondummy@gmail.com', '*0CA69D254654746CE4C232B6B2AFE397D4E153DF', '1', NULL, '0', 1, 1, '2021-01-14 09:26:01', '2021-01-14 14:54:10'),
(161, '', 'vxzxz@dad.com', 'd8f195edb211eef874599de2a90d6268', '2', NULL, '1', 1, 1, '2021-01-14 09:39:59', '0000-00-00 00:00:00'),
(162, '', 'asdsa@das.com', '9abc9e423141a3495c2b6b5f39ac53c2', '2', NULL, '1', 1, 1, '2021-01-14 09:44:42', '0000-00-00 00:00:00'),
(163, '', 'lkasjfajls@email.com', 'bfb252019ed237d253b5e1c23c6ca458', '2', NULL, '1', 1, 1, '2021-01-14 01:22:48', '0000-00-00 00:00:00'),
(164, '', 'sdfds@dsad.com', '389745397fe85cba36219e8c7daf51e6', '2', NULL, '1', 1, 1, '2021-01-14 02:58:58', '0000-00-00 00:00:00'),
(165, '', 'eweqe@ewe.com', 'a67a5064697c3c6858ae1b636821a55b', '2', NULL, '1', 1, 1, '2021-01-14 04:22:38', '0000-00-00 00:00:00'),
(166, '', 'wqeqwe@sas.com', 'c19641d615a320c54a0a136d8f524047', '2', NULL, '1', 1, 1, '2021-01-15 09:31:38', '0000-00-00 00:00:00'),
(167, '', 'erinkobayadi@emailll.com', 'ad5bc512d549830d493813aa4ebc1433', '2', NULL, '1', 1, 1, '2021-01-15 09:56:05', '0000-00-00 00:00:00'),
(168, '', 'aasdsad@asdadasda.com', 'ea8974bb39c1a30ccd54247959b42c77', '2', NULL, '1', 1, 1, '2021-01-15 12:00:10', '0000-00-00 00:00:00'),
(169, '', 'asdasd@qwqweq.com', '62c2ebceb57060bdda83a82e2a30cc36', '2', NULL, '1', 1, 1, '2021-01-15 01:01:31', '0000-00-00 00:00:00'),
(170, '', 'ghjkl@ertyuiop.com', 'da062473befd4f92e131ca27f1a06358', '2', NULL, '1', 1, 1, '2021-01-15 01:09:55', '0000-00-00 00:00:00');

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
(1, '1', 'Michael', 'Reyes', '09153088452', '095555-E5LB7G9T.png', '2021-01-04 07:59:36', '2021-01-18 15:43:43'),
(83, '116', 'Romel', 'Postrano', '12312321322', '131808-E0WNXGOR.png', '2021-01-04 10:27:59', '2021-01-15 09:29:14'),
(84, '117', 'Lara', 'Handog', '09152587520', '120420-0T2SUQK9.png', '2021-01-04 12:04:20', '2021-01-04 12:04:20'),
(85, '118', 'Henry', 'Rivera', '09152587522', '161428-AJXYWCMR.png', '2021-01-04 13:12:22', '2021-01-07 16:14:28'),
(86, '119', 'asdasdas', 'asdasd', '12313123131', '180341-ZWKPZJW5.png', '2021-01-04 18:03:41', '2021-01-04 18:03:41'),
(87, '120', 'asdasdas', 'asdasd', '12313213213', '181357-DZKVFS4T.png', '2021-01-04 18:13:57', '2021-01-04 18:13:57'),
(88, '121', 'asdassa', 'asdasdsad', '12123123213', '182436-0PYLJPPC.png', '2021-01-04 18:24:36', '2021-01-04 18:24:36'),
(89, '122', 'asdads', 'asdas', '11313131313', '081907-AVC6P7T0.png', '2021-01-05 08:19:07', '2021-01-05 08:19:07'),
(90, '123', 'Jason', 'Marasigan', '12312312312', '141002-PGYAVZ0J.png', '2021-01-05 14:10:02', '2021-01-05 14:10:02'),
(91, '124', 'Carlo', 'Angeles', '9152587526', '142735-5OY64DOO.png', '2021-01-05 14:27:35', '2021-01-05 14:30:22'),
(103, '136', 'cute', 'cute', '09454883218', '155530-CXIVGEII.png', '2021-01-06 13:30:16', '2021-01-07 12:55:12'),
(104, '137', 'qewqe', 'qewqewqeqw', '213123213', '140441-BG6T4OHN.png', '2021-01-06 14:04:41', '2021-01-11 14:53:37'),
(105, '138', 'qewqewq', 'ewqeqeq', '213123', '141024-0VDXYHCU.png', '2021-01-06 14:10:24', '2021-01-06 14:10:24'),
(106, '139', 'sdad', 'sadasdsa', '23123', '141527-BEWPR0MM.png', '2021-01-06 14:15:27', '2021-01-06 14:15:27'),
(107, '140', 'dasdasd', 'asdasda', '13213', '141712-8JZ892SZ.png', '2021-01-06 14:17:12', '2021-01-06 14:17:12'),
(108, '141', 'sedasd', 'wqeqwe', '123123', '142022-TMPID0LG.png', '2021-01-06 14:20:22', '2021-01-06 14:20:22'),
(109, '142', 'eqweqwe', 'wqeqwe', '3123123', '142233-FUKFLRWA.png', '2021-01-06 14:22:33', '2021-01-06 14:22:33'),
(110, '143', 'dads', 'asdsa', '12312', '142344-G96D92QT.png', '2021-01-06 14:23:44', '2021-01-06 14:23:44'),
(111, '144', 'TESTsss', 'TESTssss', '09152587520', '155140-48CJOVF1.png', '2021-01-06 14:45:45', '2021-01-07 15:51:53'),
(112, '145', 'erre', 'santos', '09081212121', '165618-R9Y2OHPP.png', '2021-01-06 16:56:18', '2021-01-06 16:56:18'),
(113, '146', 'Maria', 'Akihabara', '39152587520', '133612-9G4G027Q.png', '2021-01-06 17:05:17', '2021-01-13 13:36:11'),
(114, '147', 'Juana', 'Dela pena', '09545420015', '094021-RPQ9THYQ.png', '2021-01-07 09:40:21', '2021-01-07 09:40:21'),
(115, '148', 'Fatima', 'Gandia', '9152587531', '104611-RC84R42P.png', '2021-01-07 10:46:11', '2021-01-07 10:46:11'),
(116, '149', 'Kalvi', 'Boromeo', '09152587520', '154209-L2J5B8XX.png', '2021-01-07 15:42:12', '2021-01-07 15:42:12'),
(117, '150', 'lea', 'Matarong', '09152587520', '155530-AHF6SHUA.png', '2021-01-07 15:55:30', '2021-01-07 15:55:30'),
(118, '151', 'wedas', 'sadas', '23123', '133948-HHRLXORY.png', '2021-01-08 13:39:49', '2021-01-08 13:39:49'),
(119, '152', 'Joshua Martin', 'Gumabao', '09082939231', '120015-436CQA8E.png', '2021-01-11 12:00:15', '2021-01-11 12:00:15'),
(120, '153', 'Iversonz', 'Castro', '09123123123', '133703-KRV09AWK.png', '2021-01-11 13:25:34', '2021-01-11 13:37:03'),
(121, '154', 'Mathew', 'Grijaldo', '09081239213', '133808-5179A4HG.png', '2021-01-11 13:38:08', '2021-01-11 13:38:08'),
(122, '155', 'Kylen', 'Faroa', '09081231273', '141734-8YM9SZ5P.png', '2021-01-11 14:19:24', '2021-01-13 14:17:34'),
(123, '156', 'Ailo', 'Cahibaybayan', '12312321321', '083455-N5CP1IRV.png', '2021-01-13 08:34:55', '2021-01-13 08:34:55'),
(124, '157', 'Testing LAng', 'Ako lang to', '12312321312', '084129-0S9LESEJ.png', '2021-01-13 08:41:29', '2021-01-13 08:41:29'),
(125, '158', 'Ymann ', 'Gagate', '9152587536', '115921-H7HGV09D.png', '2021-01-13 11:59:21', '2021-01-13 11:59:21'),
(126, '159', 'Jollibee', 'Bida ang Saya', '12313132131', '150735-7LVVE93O.png', '2021-01-13 15:07:35', '2021-01-13 15:07:35'),
(127, '160', 'Iverson', 'Gruezo', '09352904561', '092601-3VSGR5T3.png', '2021-01-14 09:26:01', '2021-01-14 09:26:01'),
(128, '161', 'vjvh', 'gug', '55758', '093959-GL4OZ586.png', '2021-01-14 09:39:59', '2021-01-14 09:39:59'),
(129, '162', 'qweqw', 'waeasde', '213123', '094442-SV3GV6H8.png', '2021-01-14 09:44:42', '2021-01-14 09:44:42'),
(130, '163', 'gfhdgd', 'gfghg', '12315135131', '132248-S6TZKBKJ.png', '2021-01-14 13:22:48', '2021-01-14 13:22:48'),
(131, '164', 'sdasd', 'desad', '1223', '145858-SX5ME8NB.png', '2021-01-14 14:58:58', '2021-01-14 14:58:58'),
(132, '165', 'eweqwe', 'weqwe', '12321', '162238-YTQUDFCH.png', '2021-01-14 16:22:38', '2021-01-14 16:22:38'),
(133, '166', 'eqweqw', 'ewqeqw', '123213', '093138-FO1IEAJ9.png', '2021-01-15 09:31:38', '2021-01-15 09:31:38'),
(134, '167', 'Erin', 'Kobayashi', '09565685220', '095605-IMP2DKOB.png', '2021-01-15 09:56:05', '2021-01-15 09:56:05'),
(135, '168', 'assasa', 'asdadasdasd', '12323213123', '120010-6MYA7WWA.png', '2021-01-15 12:00:10', '2021-01-15 12:00:10'),
(136, '169', 'asadsada', 'asdsadada', '12312321321', '130131-1CKKVW83.png', '2021-01-15 13:01:31', '2021-01-15 13:01:31'),
(137, '170', 'adasdasd', 'asdadda', '12312313232', '130955-T3VRUDE5.png', '2021-01-15 13:09:55', '2021-01-15 13:09:55');

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
  MODIFY `cms_products_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
  MODIFY `company_address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `forgot_passwords`
--
ALTER TABLE `forgot_passwords`
  MODIFY `forgot_password_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `job_order_items`
--
ALTER TABLE `job_order_items`
  MODIFY `job_order_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `job_order_logs`
--
ALTER TABLE `job_order_logs`
  MODIFY `job_order_log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `job_order_requests`
--
ALTER TABLE `job_order_requests`
  MODIFY `job_order_request_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

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
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1187;

--
-- AUTO_INCREMENT for table `notification_types`
--
ALTER TABLE `notification_types`
  MODIFY `notification_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `partner_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `product_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `token_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=588;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `user_profile_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
