-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 08, 2021 at 01:54 PM
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
(1, '205909-VX5VPSBS.png', '205909-LSR2OMOO.png', 'Hi, we are Thee Print. ', 'We make sure we achieve our customer\'s standard and satisfaction. Our expertise lies not only in using the latest technology in signage making, but, also in understanding the importance of effective signage and brand recognitions. ', 'We deliver the best print services by providing a complete package in-terms of printing needs to maintain & escalate satisfied customers. ', 'To be most recognized & trusted one stop shop supplier of printing needs by December 2024.', '2020-12-16 09:23:49', '1', '2021-01-08 11:52:52');

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
(1, '174744-7VX8MO31.png', 'Test', '<p>supershow description</p>', '135241-QJUZ9WNC.png', 'Talent', '<p>Talent description</p>', '135241-8DGAP8RX.png', 'Booker', '<p>Booker description</p>', '135241-5H7ABAUK.png', 'Supershow DNA ', '<p>Supershow Description DNA</p>', '2020-12-17 12:19:48', '136', '2021-01-07 14:02:17');

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
(1, '143544-MJH84SEE.png', '181701-DC3BTG0L.png', '181701-P0IRJ8QV.png', '181701-9QSQZNL2.png', '140522-L1YY2AT2.png', '136', '2020-12-17 14:44:22', '2021-01-07 14:07:07');

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
(31, '134929-34F5KN9T.png', 'Large Format Printing', 'asdassads', '1', '2021-01-04 13:48:13', '2021-01-04 17:58:17'),
(32, '153722-FCTZVFV1.png', 'Installation', 'asdadsaasdasdas', '1', '2021-01-04 15:37:22', '2021-01-04 15:37:22'),
(33, '174549-PQXY1C6E.png', 'Large Format Printing', 'asdsadsadsd', '1', '2021-01-04 17:43:21', '2021-01-04 17:45:49'),
(34, '175731-12TST981.png', 'Installation', 'asdasdsad', '1', '2021-01-04 17:57:31', '2021-01-04 17:57:31'),
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
(1, '154239-8TFHK6HJ.png', 'Large format printing', '<p class=\"fs-16 fw-400 col-9\" style=\"color: #2C2C39; margin-left: -14px;\">\r\n                    far far away, behind the word mountains, far from the countries\r\n                    Vokalia and Consonantia, there live the blind texts.\r\n                </p>\r\n                <div class=\"row\">\r\n                    <div class=\"col-md-5\">\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Vinyl Sticker</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Canvas</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Photopaper</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Backlit Film</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Clear Sticker</p>\r\n                    </div>    \r\n                    <div class=\"col-md-7\">\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Banner Cloth</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Sticker on Board</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Tarpaulin</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #005DAB;\"></i-feather>Perforated Sticker</p>\r\n                    </div>\r\n                </div>', '211023-UMNIMWGW.png', 'Digital offset printing', '<p class=\"fs-16 fw-400 col-9\" style=\"color: #2C2C39; margin-left: -14px;\">\r\n                    far far away, behind the word mountains, far from the countries\r\n                    Vokalia and Consonantia, there live the blind texts.\r\n                </p>\r\n                <div class=\"row\">\r\n                    <div class=\"col-md-5\">\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #C0024A;\"></i-feather>Flyers</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #C0024A;\"></i-feather>Business Card</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #C0024A;\"></i-feather>Brochure</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #C0024A;\"></i-feather>Poster</p>\r\n                    </div>    \r\n\r\n                    <div class=\"col-md-7\">\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #C0024A;\"></i-feather>Invitation</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #C0024A;\"></i-feather>Satin Sticker</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #C0024A;\"></i-feather>Product Boxes</p>\r\n                            <p class=\"d-flex\"><i-feather name=\"check\" style=\"color: #C0024A;\"></i-feather>Perforated Sticker</p>\r\n                    </div>\r\n                </div>', '211023-B6DDPBFD.png', 'Installation', '<p class=\"fs-16 fw-400 col-9\" style=\"color: #2C2C39; margin-left: -14px;\">\r\n                    Far far away, behind the word mountains, far from the countries\r\n                    Vokalia and Consonantia, there live the blind texts. Separated they\r\n                    live in Bookmarksgrove right at the coast of the Semantics.\r\n                </p>', '2020-12-16 15:53:22', '1', '2021-01-07 14:27:37');

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
(65, '65', 0, 'Dasmarinas, Cavite', 0, 'NEW EDIT 2', '', '', '', '', 'Romel', 'Postrano', '12312321321', '2021-01-04 10:28:00', '2021-01-08 09:28:37'),
(66, '66', 0, '47 Wiza Ferry Suite 648, Rosario 7720 Albay', 1, 'Main Office', '', '', '', '', 'Henry', 'Monzon', '09152587522', '2021-01-04 13:12:23', '2021-01-04 13:12:23'),
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
(86, '65', 0, 'asd', 0, 'test ', '', '', '', '', 'asdasd', 'asdsad', '12312313211', '2021-01-08 09:10:52', '2021-01-08 09:28:13'),
(87, '65', 0, 'asdad', 0, 'asda', '', '', '', '', 'asd', 'asdasd', '12313213213', '2021-01-08 09:19:48', '2021-01-08 09:28:13'),
(88, '65', 0, 'asd', 0, 'asd', '', '', '', '', 'asdsad', 'asdas', '12312321321', '2021-01-08 09:21:32', '2021-01-08 09:28:13'),
(89, '65', 0, 'dasdasd', 0, 'asd', '', '', '', '', 'asdad', 'asdasd', '12312312312', '2021-01-08 09:22:10', '2021-01-08 09:28:13'),
(90, '65', 0, 'asddasdsadas', 1, 'NEW EDIT', '', '', '', '', 'asd', 'asd', '13213123132', '2021-01-08 09:23:51', '2021-01-08 09:28:14');

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
(85, 108, 30, '1', '2', 1, 5, 0, '', '2021-01-06 10:50:10', '2021-01-06 10:50:10'),
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
(135, 154, 30, '1', '1', 1, 1200, 0, '', '2021-01-08 13:24:51', '2021-01-08 13:24:51');

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
(156, 152, 2, '', '2021-01-08 00:00:00', '2021-01-08 12:39:46');

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
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_order_requests`
--

INSERT INTO `job_order_requests` (`job_order_request_id`, `job_order_user_id`, `job_order_quote_num`, `job_order_project_name`, `job_order_delivery_address`, `job_order_remarks`, `job_order_status`, `job_order_payment_status`, `job_order_due_date`, `job_order_total`, `created_at`, `updated_at`) VALUES
(86, '65', '21-0001', 'qwqwq', '65', 'asas', 5, 0, '2021-01-04 12:39:40', '13.44', '2021-01-04 11:16:10', '2021-01-04 12:39:40'),
(87, '65', '', 'qq', '65', '', 1, 0, '2021-01-04 11:51:56', '13.44', '2021-01-04 11:51:49', '2021-01-04 11:51:56'),
(88, '65', '', 'qq', '65', '', 0, 0, '2021-01-05 08:00:00', '40.32', '2021-01-04 11:51:50', '2021-01-04 11:51:50'),
(89, '65', '21-0002', 'qwqwqwq', '65', 'asas', 5, 0, '2021-01-04 12:42:41', '1344', '2021-01-04 12:41:37', '2021-01-04 12:42:41'),
(90, '65', '21-0003', 'qqqqqqqqqqq', '65', 'adsa', 4, 1, '2021-01-04 16:14:26', '1344', '2021-01-04 12:47:24', '2021-01-04 16:14:26'),
(91, '65', '21-0004', 'wqwqwq', '65', 'asasa', 5, 0, '2021-01-04 12:54:06', '1344', '2021-01-04 12:53:15', '2021-01-07 11:47:48'),
(92, '65', '', 'werwerew', '65', '', 1, 0, '2021-01-04 14:08:05', '1344', '2021-01-04 14:07:49', '2021-01-04 14:08:05'),
(93, '66', '', 'Coffee sticker', '66', '', 0, 0, '2021-01-06 08:00:00', '22.4', '2021-01-04 16:50:23', '2021-01-04 16:50:23'),
(94, '66', '21-0006', 'logo', '66', 'rererasddasddasasd', 4, 1, '2021-01-05 11:46:22', '1612.8', '2021-01-04 17:16:45', '2021-01-05 11:46:22'),
(95, '65', '', 'qwq', '65', '', 0, 0, '2021-01-06 08:00:00', '1344', '2021-01-05 08:31:27', '2021-01-05 08:31:27'),
(96, '66', '', 'Test Project', '66', '', 0, 0, '2021-02-14 08:00:00', '806.4', '2021-01-05 11:10:34', '2021-01-05 11:10:34'),
(97, '66', '', 'Test Project', '66', '', 0, 0, '2021-12-02 08:00:00', '806.4', '2021-01-05 11:21:48', '2021-01-05 11:21:48'),
(98, '66', '', 'tasdas', '66', '', 1, 0, '2021-01-05 11:31:52', '940.8', '2021-01-05 11:31:44', '2021-01-05 11:31:52'),
(99, '66', '', 'Python', '66', '', 0, 0, '2021-02-14 08:00:00', '940.8', '2021-01-05 11:55:56', '2021-01-05 11:55:56'),
(100, '66', '21-0006', 'Python', '66', 'TESAzxczxczx', 2, 0, '2021-01-05 11:57:17', '224', '2021-01-05 11:56:37', '2021-01-05 11:57:17'),
(101, '66', '21-0007', 'tofee', '66', 're', 5, 0, '2021-01-05 15:32:07', '22.4', '2021-01-05 14:57:30', '2021-01-05 15:32:07'),
(102, '66', '', 'tofee', '66', '', 0, 0, '2021-01-14 08:00:00', '67.2', '2021-01-05 14:57:31', '2021-01-05 14:57:31'),
(103, '65', '', 'test', '65', '', 0, 0, '2021-01-07 08:00:00', '1344', '2021-01-06 08:34:57', '2021-01-06 08:34:57'),
(104, '66', '', 'fort', '66', '', 0, 0, '2021-01-22 08:00:00', '134.4', '2021-01-06 08:40:52', '2021-01-06 08:40:52'),
(105, '66', '', 'fort', '66', '', 0, 0, '2021-01-11 08:00:00', '22.4', '2021-01-06 08:52:23', '2021-01-06 08:52:23'),
(106, '71', '', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', '71', '', 0, 0, '2021-01-16 08:00:00', '22.4', '2021-01-06 09:48:59', '2021-01-06 09:48:59'),
(107, '66', '', 'wewewewe', '66', '', 0, 0, '2021-01-22 08:00:00', '11.2', '2021-01-06 09:52:09', '2021-01-06 09:52:09'),
(108, '66', '21-0009', 'rere', '66', 'rerere', 3, 0, '2021-01-06 11:34:36', '11.2', '2021-01-06 10:50:09', '2021-01-06 11:34:36'),
(109, '65', '', 'qwqw', '65', '', 0, 0, '2021-01-07 08:00:00', '162624', '2021-01-06 10:53:06', '2021-01-06 10:53:06'),
(110, '66', '21-0009', 'yuyu', '66', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 2, 0, '2021-01-30 10:59:30', '22.4', '2021-01-06 10:57:11', '2021-01-06 10:59:30'),
(111, '66', '', 'Far far awayFar far awayFar far awayFar far awayFar far awayFar far awayFar far awayFar far awayaway', '66', '', 0, 0, '2021-12-12 08:00:00', '806.4', '2021-01-06 10:59:00', '2021-01-06 10:59:00'),
(112, '66', '', 'Teasdasdasd', '66', '', 0, 0, '2021-12-12 08:00:00', '806.4', '2021-01-06 11:00:21', '2021-01-06 11:00:21'),
(113, '71', '', 'eli', '72', '', 1, 0, '2021-01-06 11:02:13', '4.48', '2021-01-06 11:02:08', '2021-01-06 11:02:13'),
(114, '66', '', 'Test asdasdasd', '66', '', 0, 0, '2021-12-12 08:00:00', '896', '2021-01-06 11:02:21', '2021-01-06 11:02:21'),
(115, '65', '', 'asas', '65', '', 0, 0, '2021-01-12 08:00:00', '1344', '2021-01-06 11:02:45', '2021-01-06 11:02:45'),
(116, '65', '', 'as', '65', '', 1, 0, '2021-01-06 11:14:03', '1344', '2021-01-06 11:13:12', '2021-01-06 11:14:03'),
(117, '65', '', 'qwqwq', '65', '', 0, 0, '2021-01-07 08:00:00', '53760', '2021-01-06 11:14:24', '2021-01-06 11:14:24'),
(118, '66', '', 'asdasdasd', '66', '', 0, 0, '2021-01-27 08:00:00', '224', '2021-01-06 11:15:59', '2021-01-06 11:15:59'),
(119, '66', '21-0010', 'bts', '66', 'rerere', 2, 0, '2021-01-06 11:22:20', '18547.2', '2021-01-06 11:22:03', '2021-01-06 11:22:20'),
(120, '72', '', 'sasasas', '66', '', 0, 0, '2021-01-10 08:00:00', '4.48', '2021-01-06 11:25:01', '2021-01-06 11:25:01'),
(121, '72', '21-0011', 'wewewe', '73', 'e4rerre', 2, 0, '2021-01-06 11:26:05', '4.48', '2021-01-06 11:25:53', '2021-01-06 11:26:05'),
(122, '72', '', 'erwere', '74', '', 0, 0, '2021-01-21 08:00:00', '80.64', '2021-01-06 14:40:09', '2021-01-06 14:40:09'),
(123, '65', '', 'qweqw', '65', '', 0, 0, '2021-01-22 08:00:00', '5376', '2021-01-06 14:49:10', '2021-01-06 14:49:10'),
(124, '65', '21-0013', 'playtime', '65', 'test', 2, 0, '2021-01-06 15:50:35', '1344', '2021-01-06 15:50:18', '2021-01-06 15:50:35'),
(125, '65', '', 'qweqwe', '65', '', 0, 0, '2021-01-30 08:00:00', '1344', '2021-01-06 15:58:15', '2021-01-06 15:58:15'),
(126, '65', '21-0014', 'dsasadsa', '65', 'dsadsa', 2, 0, '2021-01-06 16:36:22', '1344', '2021-01-06 16:35:04', '2021-01-06 16:36:22'),
(127, '65', '', 'Test', '65', '', 0, 0, '2021-02-01 08:00:00', '1344', '2021-01-06 16:42:09', '2021-01-06 16:42:09'),
(128, '65', '21-0015', 'asdasd', '65', 'asdasd', 2, 0, '2021-01-25 17:06:21', '1344', '2021-01-30 16:51:34', '2021-01-06 17:07:59'),
(129, '66', '', 'Eggplant', '66', '', 0, 0, '2021-01-19 00:00:00', '224', '2021-01-07 08:59:19', '2021-01-07 08:59:19'),
(130, '66', '', 'Eggplant', '66', '', 0, 0, '2021-01-28 00:00:00', '224', '2021-01-07 09:00:19', '2021-01-07 09:00:19'),
(131, '66', '', 'asdasdas', '66', '', 0, 0, '2021-01-13 00:00:00', '224', '2021-01-07 09:35:51', '2021-01-07 09:35:51'),
(132, '66', '', 'zxczxc', '66', '', 0, 0, '2021-01-20 00:00:00', '224', '2021-01-07 09:36:28', '2021-01-07 09:36:28'),
(133, '81', '21-0015', 'tres', '76', 'rere', 4, 1, '2021-01-19 00:00:00', '4.48', '2021-01-07 11:40:51', '2021-01-07 11:44:44'),
(134, '81', '', 'tres', '76', '', 0, 0, '2021-01-19 00:00:00', '13.44', '2021-01-07 11:40:52', '2021-01-07 11:40:52'),
(135, '65', '', 'eqweqwewq', '65', '', 0, 0, '2021-01-08 00:00:00', '6720', '2021-01-07 11:49:31', '2021-01-07 11:49:31'),
(136, '66', '', 'eqwewqewq', '66', '', 0, 0, '2021-01-08 00:00:00', '268.8', '2021-01-07 11:58:34', '2021-01-07 11:58:34'),
(137, '72', '', 'eqweqwewqe', '73', '', 0, 0, '2021-01-08 00:00:00', '73.92', '2021-01-07 12:02:54', '2021-01-07 12:02:54'),
(138, '68', '', 'wqeqwe', '67', '', 0, 0, '2021-01-12 00:00:00', '12.32', '2021-01-07 12:05:38', '2021-01-07 12:05:38'),
(139, '68', '', 'wqeqwe', '67', '', 0, 0, '2021-01-12 00:00:00', '36.96', '2021-01-07 12:05:38', '2021-01-07 12:05:38'),
(140, '66', '21-0017', 'wqewqe', '66', 'dsadsadsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaddsadsadsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaddsadsadsaaaaaaaa', 2, 0, '2021-01-16 00:00:00', '5.6', '2021-01-07 12:06:29', '2021-01-07 12:23:25'),
(141, '66', '', '123qwerty', '66', '', 1, 0, '2021-01-08 00:00:00', '806.4', '2021-01-07 12:25:28', '2021-01-07 12:25:34'),
(142, '66', '', 'qwqwqw', '66', '', 0, 0, '2021-01-27 00:00:00', '5.6', '2021-01-07 13:24:12', '2021-01-07 13:24:12'),
(143, '65', '', 'wqewqewqewqe', '65', '', 0, 0, '2021-01-09 00:00:00', '1344', '2021-01-07 13:34:27', '2021-01-07 13:34:27'),
(144, '82', '', 'billboardbillboardbillboardbillboardbillboardbillboardbillboardbillboardbillboardbillboardbillboardb', '77', '', 0, 0, '2021-01-14 00:00:00', '4.48', '2021-01-07 14:47:09', '2021-01-07 14:47:09'),
(145, '82', '', 'dfsdf', '77', '', 0, 0, '2021-01-21 00:00:00', '20.16', '2021-01-07 14:54:40', '2021-01-07 14:54:40'),
(146, '82', '', 'trtrt', '77', '', 0, 0, '2021-01-15 00:00:00', '6.72', '2021-01-07 14:55:13', '2021-01-07 14:55:13'),
(147, '82', '21-0017', 'erer', '77', 'd', 2, 0, '2021-01-23 00:00:00', '4.48', '2021-01-07 14:58:31', '2021-01-07 14:58:54'),
(148, '82', '21-0018', 'sdsd', '77', 's', 2, 0, '2021-01-19 00:00:00', '4.48', '2021-01-07 14:59:15', '2021-01-07 14:59:49'),
(149, '65', '', 'qwqw', '90', '', 0, 0, '2021-01-09 00:00:00', '1344', '2021-01-08 12:21:08', '2021-01-08 12:21:08'),
(150, '65', '21-0020', 'sdfdsdfsd', '90', 'weda', 2, 0, '2021-01-08 00:00:00', '1344', '2021-01-08 12:28:53', '2021-01-08 12:33:40'),
(151, '65', '', 'sdfdsdfsd', '90', '', 0, 0, '2021-01-08 00:00:00', '4032', '2021-01-08 12:28:53', '2021-01-08 12:28:53'),
(152, '66', '21-0020', 'qwertyyyyyyyyyyyyyy', '66', '', 2, 0, '2021-01-15 00:00:00', '5.6', '2021-01-08 12:38:32', '2021-01-08 12:39:46'),
(153, '66', '', 'qwertyyyyyyyyyyyyyy', '66', '', 0, 0, '2021-01-15 00:00:00', '16.8', '2021-01-08 12:38:33', '2021-01-08 12:38:33'),
(154, '65', '', 'dsadsa', '90', '', 0, 0, '2021-01-28 00:00:00', '1344', '2021-01-08 13:24:50', '2021-01-08 13:24:50');

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
(397, '1', '65', '150', '', '0000-00-00 00:00:00', '2021-01-08 00:00:00', '2021-01-08 13:24:51');

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
(3, 'Job Order is Being Processed', 'Your job order is now being processed.', '136', '0000-00-00 00:00:00', '2021-01-08 13:53:02'),
(4, 'Job Order is Delivered', 'You job order has been delivered.', '136', '0000-00-00 00:00:00', '2021-01-08 13:53:02'),
(5, 'Pending Payment', 'Your payment for job order is still pending. Kindly settle the payment on or before due date.', '136', '0000-00-00 00:00:00', '2021-01-08 13:53:02'),
(6, 'Paid', 'Your payment for job order has been confirm.', '136', '0000-00-00 00:00:00', '2021-01-08 13:53:02'),
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
(65, '116', 'Mcdonalds asdasd', '123445555', '094242-XS6V4N1F.png', '1', 'Dasmarinas, Cavites', '2021-01-04 10:27:59', '2021-01-08 10:59:55'),
(66, '118', 'Coffee Cup', '36925812345', '161426-J1UFOFA1.png', '1', '47 Wiza Ferry Suite 648, Rosario 7720 Albay', '2021-01-04 13:12:23', '2021-01-07 16:14:26'),
(67, '119', 'asdasd', '123213213', '180345-BN5PEP3O.png', '1', 'asdsadsadasdas', '2021-01-04 18:03:45', '2021-01-04 18:03:45'),
(68, '120', 'test', '123123123', '181401-PVBO711V.png', '1', 'asdadsadasd', '2021-01-04 18:14:01', '2021-01-04 18:14:01'),
(69, '121', 'asdasd', '123132312', '182437-CEENS6BL.png', '1', 'asdsasdasdsadsadasdasdasasdsad', '2021-01-04 18:24:37', '2021-01-04 18:24:37'),
(70, '122', 'asdasd', 'asdasd', '081907-9XO9VHYB.png', '1', 'asdasd', '2021-01-05 08:19:08', '2021-01-05 08:19:08'),
(71, '123', 'Eggplant', '123123123', '141003-6QUX3QR5.png', '1', '187 Sampaloc, Manila', '2021-01-05 14:10:03', '2021-01-05 14:10:03'),
(72, '124', 'Rogue Company', '987654321', '142740-OGOQ33BZ.png', '1', '72 Lindgren Tunnel, Valencia 2073 Romblon', '2021-01-05 14:27:40', '2021-01-05 14:30:22'),
(73, '133', 'test111', 'asd123121', '131422-VZES7N2E.png', '1', 'testing lang', '2021-01-06 13:14:22', '2021-01-06 13:14:22'),
(74, '137', 'eqwewqeqw', '2313123', '140444-L0MOWUXD.png', '1', 'asdsadasdas', '2021-01-06 14:04:44', '2021-01-06 16:45:53'),
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
(86, '151', 'sadsadas', '2123', '133951-D1O33NSV.png', '1', 'asdsads', '2021-01-08 13:39:51', '2021-01-08 13:39:51');

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
(30, 'TPEC001', '2', 'Test Media1', 'Test description', 1, 0, '2021-01-04 10:25:24', '2021-01-06 09:04:26'),
(38, 'test', '1', 'asdasda', 'asdasdasd', 1, 0, '2021-01-06 09:06:00', '2021-01-06 09:06:00'),
(39, 'Testing1', '1', 'test2', 'asdads', 1, 0, '2021-01-06 09:06:31', '2021-01-06 09:06:43'),
(40, 'rer', '2', 'meqw', 'rere', 0, 0, '2021-01-06 11:49:13', '2021-01-07 12:40:51'),
(41, 'asdadsadasdsad', '1', 'asdads', 'asdasda', 1, 0, '2021-01-06 16:18:21', '2021-01-06 16:18:21'),
(42, 'saddsad', '1', 'sadasdsa', 'asdasd', 1, 0, '2021-01-06 17:15:26', '2021-01-06 17:15:26'),
(43, 'erer', '2', 'werwer', 'werewrewr', 0, 0, '2021-01-06 17:16:02', '2021-01-07 15:36:10');

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
(191, '86', '43', 2.00, 2.00, '2021-01-08 13:39:52', '2021-01-08 13:39:52');

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
(350, '136', 'KjYyM0I2MzQzRDUyRjYyNzczRDcxM0Q2RjdCQUNDQThCN0JENjY1OTMyMDIxLTAxLTA4MDE6NTI6NTVwbQ==', 1, '2021-01-08 21:52:55', '2021-01-08 13:52:55', '2021-01-08 13:52:55');

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
(1, 'kaelreyes', 'kaelreyes12@hotmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '1', '2021-01-08 12:34:30', '1', 1, 1, '2021-01-04 13:59:14', '2021-01-08 12:34:30'),
(116, '', 'romelpostrano@gmail.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '2', '2021-01-08 11:09:40', '1', 1, 1, '2021-01-04 10:27:59', '2021-01-08 13:19:13'),
(117, '', 'harry@leentechsystems.com', '1311e6f6ea3acb5c22c4ac58c049878a', '2', NULL, '1', 1, 1, '2021-01-04 12:04:20', '0000-00-00 00:00:00'),
(118, '', 'cecilvelgar@leentechsystems.com', '*623B6343D52F62773D713D6F7BACCA8B7BD66593', '2', '2021-01-07 04:05:07', '1', 1, 1, '2021-01-04 01:12:22', '2021-01-07 16:14:26'),
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
(146, '', 'eleanormaesantos@gmail.com', '*0908A1417AF55C95DF16A9E80C55BE81832BB7B9', '2', '2021-01-07 02:03:07', '1', 1, 1, '2021-01-06 05:05:17', '2021-01-07 14:03:07'),
(147, '', 'yourname@gmail.com', '5ae9cb3f20fc913541a64c81a1a4e1f4', '2', NULL, '1', 1, 1, '2021-01-07 09:40:21', '0000-00-00 00:00:00'),
(148, '', 'george@leentechsystems.net', 'c96b78f995009ba9797648404a21b211', '2', NULL, '1', 1, 1, '2021-01-07 10:46:11', '0000-00-00 00:00:00'),
(149, '', 'albertmalabanan31@gmail.com', '22204e4c4e7ea060863667156c30ffd1', '2', NULL, '1', 1, 1, '2021-01-07 03:42:11', '0000-00-00 00:00:00'),
(150, '', 'lea@testmail.com', '564e4ac57887e24a9dade6d5ffa07ea2', '1', NULL, '0', 1, 1, '2021-01-07 03:55:30', '2021-01-07 16:00:10'),
(151, '', 'sdasd@sad.com', 'fb04294ed2e77b7007dde338c30bc642', '2', NULL, '1', 1, 1, '2021-01-08 01:39:48', '0000-00-00 00:00:00');

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
(1, '1', 'Michael', 'Reyes', '09153088452', '113306-RVL1PYIS.png', '2021-01-04 07:59:36', '2021-01-08 11:33:06'),
(83, '116', 'Romel', 'Postrano', '12312321321', '093802-ASLKG999.png', '2021-01-04 10:27:59', '2021-01-08 10:59:55'),
(84, '117', 'Lara', 'Handog', '09152587520', '120420-0T2SUQK9.png', '2021-01-04 12:04:20', '2021-01-04 12:04:20'),
(85, '118', 'Henry', 'Rivera', '09152587522', '161428-AJXYWCMR.png', '2021-01-04 13:12:22', '2021-01-07 16:14:28'),
(86, '119', 'asdasdas', 'asdasd', '12313123131', '180341-ZWKPZJW5.png', '2021-01-04 18:03:41', '2021-01-04 18:03:41'),
(87, '120', 'asdasdas', 'asdasd', '12313213213', '181357-DZKVFS4T.png', '2021-01-04 18:13:57', '2021-01-04 18:13:57'),
(88, '121', 'asdassa', 'asdasdsad', '12123123213', '182436-0PYLJPPC.png', '2021-01-04 18:24:36', '2021-01-04 18:24:36'),
(89, '122', 'asdads', 'asdas', '11313131313', '081907-AVC6P7T0.png', '2021-01-05 08:19:07', '2021-01-05 08:19:07'),
(90, '123', 'Jason', 'Marasigan', '12312312312', '141002-PGYAVZ0J.png', '2021-01-05 14:10:02', '2021-01-05 14:10:02'),
(91, '124', 'Carlo', 'Angeles', '9152587526', '142735-5OY64DOO.png', '2021-01-05 14:27:35', '2021-01-05 14:30:22'),
(103, '136', 'cute', 'cute', '09454883218', '155530-CXIVGEII.png', '2021-01-06 13:30:16', '2021-01-07 12:55:12'),
(104, '137', 'qewqe', 'qewqewqeqw', '213123213', '140441-BG6T4OHN.png', '2021-01-06 14:04:41', '2021-01-06 16:45:53'),
(105, '138', 'qewqewq', 'ewqeqeq', '213123', '141024-0VDXYHCU.png', '2021-01-06 14:10:24', '2021-01-06 14:10:24'),
(106, '139', 'sdad', 'sadasdsa', '23123', '141527-BEWPR0MM.png', '2021-01-06 14:15:27', '2021-01-06 14:15:27'),
(107, '140', 'dasdasd', 'asdasda', '13213', '141712-8JZ892SZ.png', '2021-01-06 14:17:12', '2021-01-06 14:17:12'),
(108, '141', 'sedasd', 'wqeqwe', '123123', '142022-TMPID0LG.png', '2021-01-06 14:20:22', '2021-01-06 14:20:22'),
(109, '142', 'eqweqwe', 'wqeqwe', '3123123', '142233-FUKFLRWA.png', '2021-01-06 14:22:33', '2021-01-06 14:22:33'),
(110, '143', 'dads', 'asdsa', '12312', '142344-G96D92QT.png', '2021-01-06 14:23:44', '2021-01-06 14:23:44'),
(111, '144', 'TESTsss', 'TESTssss', '09152587520', '155140-48CJOVF1.png', '2021-01-06 14:45:45', '2021-01-07 15:51:53'),
(112, '145', 'erre', 'santos', '09081212121', '165618-R9Y2OHPP.png', '2021-01-06 16:56:18', '2021-01-06 16:56:18'),
(113, '146', 'Maria', 'Akihabara', '39152587520', '113337-VROYMYR4.png', '2021-01-06 17:05:17', '2021-01-07 14:02:09'),
(114, '147', 'Juana', 'Dela pena', '09545420015', '094021-RPQ9THYQ.png', '2021-01-07 09:40:21', '2021-01-07 09:40:21'),
(115, '148', 'Fatima', 'Gandia', '9152587531', '104611-RC84R42P.png', '2021-01-07 10:46:11', '2021-01-07 10:46:11'),
(116, '149', 'Kalvi', 'Boromeo', '09152587520', '154209-L2J5B8XX.png', '2021-01-07 15:42:12', '2021-01-07 15:42:12'),
(117, '150', 'lea', 'Matarong', '09152587520', '155530-AHF6SHUA.png', '2021-01-07 15:55:30', '2021-01-07 15:55:30'),
(118, '151', 'wedas', 'sadas', '23123', '133948-HHRLXORY.png', '2021-01-08 13:39:49', '2021-01-08 13:39:49');

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
  MODIFY `company_address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `forgot_passwords`
--
ALTER TABLE `forgot_passwords`
  MODIFY `forgot_password_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `job_order_items`
--
ALTER TABLE `job_order_items`
  MODIFY `job_order_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `job_order_logs`
--
ALTER TABLE `job_order_logs`
  MODIFY `job_order_log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `job_order_requests`
--
ALTER TABLE `job_order_requests`
  MODIFY `job_order_request_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

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
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `notification_types`
--
ALTER TABLE `notification_types`
  MODIFY `notification_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `partner_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `product_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `token_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `user_profile_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
