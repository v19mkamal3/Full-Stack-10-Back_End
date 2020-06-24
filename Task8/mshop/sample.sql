-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2020 at 08:04 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'fcea920f7412b5da7be0cf42b8c93759', 1, '2020-06-24 19:39:22', '2020-06-24 17:39:22');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `product_name`, `product_code`, `product_color`, `size`, `price`, `quantity`, `user_email`, `session_id`, `created_at`, `updated_at`) VALUES
(3, 9, 'Green TShirt', 'GTS001-S', 'Green', 'Small', 500.00, 1, 'test@yopmail.com', 'K8vAJAL6y1H34iowSsfLczuwx0n5RYrcjuGfoeZI', NULL, NULL),
(4, 11, 'Sports TShirt', 'FTS001-S', 'Black', 'Small', 1200.00, 2, '', '98zj0JI51jLZRvzSYR22nhR66x8dJDQt4VTEy2ti', NULL, NULL),
(5, 10, 'Blue Casual Tshirt', 'BCT01-S', 'Blue', 'Small', 1500.00, 1, '', '98zj0JI51jLZRvzSYR22nhR66x8dJDQt4VTEy2ti', NULL, NULL),
(6, 10, 'Blue Casual Tshirt', 'BCT01-M', 'Blue', 'Medium', 1800.00, 2, '', 'lqoMn6BP9rTpNPIHU6MwUviFRYsSe2NAK4RhZZBn', NULL, NULL),
(14, 10, 'Blue Casual Tshirt', 'BCT01-M', 'Blue', 'Medium', 1800.00, 4, '', 'VPojMHmsxrIvI9GdCKSl8av73I98h0Rt7BaqdrwL', NULL, NULL),
(15, 10, 'Blue Casual Tshirt', 'BCT01-M', 'Blue', 'Medium', 1500.00, 4, '', 'VPojMHmsxrIvI9GdCKSl8av73I98h0Rt7BaqdrwL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 'T-Shirts', NULL, 't-shirts', 1, NULL, '2020-06-24 17:38:35', '2020-06-24 17:38:35'),
(2, 0, 'Shoes', NULL, 'shoes', 1, NULL, '2020-06-24 17:38:12', '2020-06-24 17:38:12'),
(3, 1, 'Formal T-Shirts', 'test', 'format-tshirts', 1, NULL, '2020-06-24 17:37:47', '2020-06-24 17:37:47'),
(4, 2, 'Formal Shoes', NULL, 'formal-shoes', 1, NULL, '2020-06-24 17:37:22', '2020-06-24 17:37:22'),
(5, 1, 'Casual T-Shirts', NULL, 'casual-t-shirts', 1, NULL, '2020-06-24 17:36:47', '2020-06-24 17:36:47'),
(6, 1, 'Sports T-Shirts', 'test', 'sports-tshirts', 1, NULL, '2020-06-24 17:36:21', '2020-06-24 17:36:21'),
(7, 1, 'Test T-shirts', 'tet', 'test', 0, NULL, '2020-06-24 17:35:40', '2020-06-24 17:35:40'),
(8, 0, 'Shirts', NULL, 'shirts', 1, NULL, '2020-06-24 17:34:55', '2020-06-24 17:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'SS', 'South Sudan'),
(203, 'ES', 'Spain'),
(204, 'LK', 'Sri Lanka'),
(205, 'SH', 'St. Helena'),
(206, 'PM', 'St. Pierre and Miquelon'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard and Jan Mayen Islands'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syrian Arab Republic'),
(214, 'TW', 'Taiwan'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania, United Republic of'),
(217, 'TH', 'Thailand'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad and Tobago'),
(222, 'TN', 'Tunisia'),
(223, 'TR', 'Turkey'),
(224, 'TM', 'Turkmenistan'),
(225, 'TC', 'Turks and Caicos Islands'),
(226, 'TV', 'Tuvalu'),
(227, 'UG', 'Uganda'),
(228, 'UA', 'Ukraine'),
(229, 'AE', 'United Arab Emirates'),
(230, 'GB', 'United Kingdom'),
(231, 'US', 'United States'),
(232, 'UM', 'United States minor outlying islands'),
(233, 'UY', 'Uruguay'),
(234, 'UZ', 'Uzbekistan'),
(235, 'VU', 'Vanuatu'),
(236, 'VA', 'Vatican City State'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Vietnam'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (U.S.)'),
(241, 'WF', 'Wallis and Futuna Islands'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'ZR', 'Zaire'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `created_at`, `updated_at`) VALUES
(3, 20, 'vortex@gmail.com', 'vortex', 'alexandria ,egypt', 'alexadria', 'egypt', 'Egypt', '1234', '01123605754', '2020-06-24 17:52:09', '2020-06-24 15:52:09'),
(4, 21, 'mostafa@gmail.com', 'mostafa', 'alexandria ..........', 'alexandria', 'egypt', 'Egypt', '4567', '01123605753', '2020-06-24 05:41:42', '2020-06-24 05:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_06_24_000000_create_users_table', 1),
(2, '2020_06_24_100000_create_password_resets_table', 1),
(3, '2020_06_24_090951_create_category_table', 2),
(4, '2020_06_24_100532_add_url_to_categories', 3),
(5, '2020_06_24_144354_create_products_table', 4),
(6, '2020_06_24_135232_create_products_attributes_table', 5),
(7, '2020_06_24_174929_create_cart_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `shipping_charges` float NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `grand_total` float NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `pincode`, `country`, `mobile`, `shipping_charges`, `order_status`, `payment_method`, `grand_total`, `created_at`, `updated_at`) VALUES
(29, 20, 'vortex@gmail.com', 'vortex', 'alexandria ,egypt', 'alexadria', 'egypt', '1234', 'Egypt', '01123605754', 0, 'New', 'Paypal', 3000, '2020-06-21 00:31:37', '2020-06-20 22:31:37'),
(30, 20, 'vortex@gmail.com', 'vortex', 'alexandria ,egypt', 'alexadria', 'egypt', '1234', 'Egypt', '01123605754', 0, 'New', 'COD', 2200, '2020-06-21 00:35:19', '2020-06-20 22:35:19'),
(31, 20, 'vortex@gmail.com', 'vortex', 'alexandria ,egypt', 'alexadria', 'egypt', '1234', 'Egypt', '01123605754', 0, 'New', 'Paypal', 13500, '2020-06-24 06:51:20', '2020-06-24 04:51:20'),
(32, 20, 'vortex@gmail.com', 'vortex', 'alexandria ,egypt', 'alexadria', 'egypt', '1234', 'Egypt', '01123605754', 0, 'New', 'Paypal', 13500, '2020-06-24 06:57:04', '2020-06-24 04:57:04'),
(33, 20, 'vortex@gmail.com', 'vortex', 'alexandria ,egypt', 'alexadria', 'egypt', '1234', 'Egypt', '01123605754', 0, 'New', 'Paypal', 13500, '2020-06-24 06:59:36', '2020-06-24 04:59:36'),
(34, 20, 'vortex@gmail.com', 'vortex', 'alexandria ,egypt', 'alexadria', 'egypt', '1234', 'Egypt', '01123605754', 0, 'New', 'COD', 1500, '2020-06-24 07:01:56', '2020-06-24 05:01:56'),
(35, 20, 'vortex@gmail.com', 'vortex', 'alexandria ,egypt', 'alexadria', 'egypt', '1234', 'Egypt', '01123605754', 0, 'New', 'COD', 1500, '2020-06-24 07:11:31', '2020-06-24 05:11:31'),
(36, 20, 'vortex@gmail.com', 'vortex', 'alexandria ,egypt', 'alexadria', 'egypt', '1234', 'Egypt', '01123605754', 0, 'New', 'Paypal', 3000, '2020-06-24 07:13:39', '2020-06-24 05:13:39'),
(37, 20, 'vortex@gmail.com', 'vortex', 'alexandria ,egypt', 'alexadria', 'egypt', '1234', 'Egypt', '01123605754', 0, 'In Process', 'COD', 2400, '2020-06-24 07:28:08', '2020-06-24 06:58:06'),
(38, 21, 'mostafa@gmail.com', 'mostafa', 'alexandria ..........', 'alexandria', 'egypt', '4567', 'Egypt', '01123605753', 0, 'Cancelled', 'Paypal', 3000, '2020-06-24 07:41:53', '2020-06-24 06:57:39'),
(39, 21, 'mostafa@gmail.com', 'mostafa', 'alexandria ..........', 'alexandria', 'egypt', '4567', 'Egypt', '01123605753', 0, 'New', 'COD', 3000, '2020-06-24 07:43:26', '2020-06-24 05:43:26'),
(40, 21, 'mostafa@gmail.com', 'mostafa', 'alexandria ..........', 'alexandria', 'egypt', '4567', 'Egypt', '01123605753', 0, 'New', 'Paypal', 3000, '2020-06-24 07:45:54', '2020-06-24 05:45:54'),
(41, 21, 'mostafa@gmail.com', 'mostafa', 'alexandria ..........', 'alexandria', 'egypt', '4567', 'Egypt', '01123605753', 0, 'New', 'Paypal', 3000, '2020-06-24 07:52:22', '2020-06-24 05:52:22'),
(42, 21, 'mostafa@gmail.com', 'mostafa', 'alexandria ..........', 'alexandria', 'egypt', '4567', 'Egypt', '01123605753', 0, 'New', 'COD', 3000, '2020-06-24 07:53:57', '2020-06-24 05:53:57'),
(43, 20, 'vortex@gmail.com', 'vortex', 'alexandria ,egypt', 'alexadria', 'egypt', '1234', 'Egypt', '01123605754', 0, 'New', 'COD', 2400, '2020-06-24 07:57:46', '2020-06-24 05:57:46'),
(44, 20, 'vortex@gmail.com', 'vortex', 'alexandria ,egypt', 'alexadria', 'egypt', '1234', 'Egypt', '01123605754', 0, 'New', 'COD', 2400, '2020-06-24 08:07:33', '2020-06-24 06:07:33'),
(45, 20, 'vortex@gmail.com', 'vortex', 'alexandria ,egypt', 'alexadria', 'egypt', '1234', 'Egypt', '01123605754', 0, 'New', 'COD', 4800, '2020-06-24 08:35:25', '2020-06-24 06:35:25'),
(46, 20, 'vortex@gmail.com', 'vortex', 'alexandria ,egypt', 'alexadria', 'egypt', '1234', 'Egypt', '01123605754', 0, 'Cancelled', 'Paypal', 6000, '2020-06-24 08:59:10', '2020-06-24 06:59:48'),
(47, 20, 'vortex@gmail.com', 'vortex', 'alexandria ,egypt', 'alexadria', 'egypt', '1234', 'Egypt', '01123605754', 0, 'Cancelled', 'Paypal', 5000, '2020-06-24 17:52:17', '2020-06-24 15:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_size` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `user_id`, `product_id`, `product_code`, `product_name`, `product_size`, `product_color`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(51, 34, 20, 10, 'BCT01-S', 'Blue Casual Tshirt', 'Small', 'Blue', 1500, 1, '2020-06-24 07:01:56', '2020-06-24 05:01:56'),
(52, 35, 20, 10, 'BCT01-S', 'Blue Casual Tshirt', 'Small', 'Blue', 1500, 1, '2020-06-24 07:11:31', '2020-06-24 05:11:31'),
(53, 36, 20, 10, 'BCT01-S', 'Blue Casual Tshirt', 'Small', 'Blue', 1500, 2, '2020-06-24 07:13:39', '2020-06-24 05:13:39'),
(54, 37, 20, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 1200, 2, '2020-06-24 07:28:08', '2020-06-24 05:28:08'),
(55, 38, 21, 10, 'BCT01-S', 'Blue Casual Tshirt', 'Small', 'Blue', 1500, 2, '2020-06-24 07:41:53', '2020-06-24 05:41:53'),
(56, 43, 20, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 1200, 2, '2020-06-24 07:57:46', '2020-06-24 05:57:46'),
(57, 44, 20, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 1200, 2, '2020-06-24 08:07:33', '2020-06-24 06:07:33'),
(58, 45, 20, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 1200, 4, '2020-06-24 08:35:25', '2020-06-24 06:35:25'),
(59, 46, 20, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 1200, 5, '2020-06-24 08:59:10', '2020-06-24 06:59:10'),
(60, 47, 20, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 10, '2020-06-24 17:52:17', '2020-06-24 15:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `care` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_code`, `product_color`, `description`, `care`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(9, 5, 'Green TShirt', 'GTS001', 'Green', 'test', 'test', 2200.00, '76925.jpg', 1, '2020-06-24 08:34:05', '2020-06-24 08:21:57'),
(10, 3, 'Blue Casual Tshirt', 'BCT011', 'Blue', '', '', 1500.00, '52109.jpg', 1, '2020-06-24 08:34:29', '2020-06-24 10:13:30'),
(11, 6, 'Sports TShirt', 'FTS001', 'Black', '', '', 2200.00, '28449.jpg', 1, '2020-06-24 17:26:54', '2020-06-24 17:26:54'),
(12, 5, 'Blue Casual Tshirt', 'BCT012', 'Blue', 'Blue Casual Tshirt has a round neck, half sleeves', '', 2200.00, '83971.png', 1, '2020-06-24 17:26:32', '2020-06-24 17:26:32'),
(13, 5, 'Blue Casual Tshirt', 'BCT01', 'Blue', 'test', '', 1000.00, '51771.jpg', 1, '2020-06-24 17:25:52', '2020-06-24 17:25:52'),
(14, 5, 'Blue Casual Tshirt', 'BCT03', 'Blue', 'test', 'test1', 1000.00, '9988.jpg', 1, '2020-06-24 17:25:18', '2020-06-24 17:25:18'),
(17, 5, 'Blue Casual Tshirt', 'BCT06', 'Blue', '', '', 1000.00, '57345.jpg', 0, '2020-06-24 17:24:51', '2020-06-24 17:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `product_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(3, 9, 'GTS001-S', 'Small', 500.00, 30, '2020-06-24 09:04:09', '2020-06-24 17:24:02'),
(5, 9, 'GTS001-M', 'Medium', 1000.00, 20, '2020-06-24 17:23:43', '2020-06-24 17:23:43'),
(6, 10, 'BCT01-S', 'Small', 1500.00, 2, '2020-06-24 17:23:23', '2020-06-24 17:23:23'),
(7, 10, 'BCT01-M', 'Medium', 1800.00, 2, '2020-06-24 17:23:02', '2020-06-24 17:23:02'),
(8, 11, 'FTS001-S', 'Small', 1200.00, 10, '2020-06-24 17:22:42', '2020-06-24 17:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(3, 9, '69412.jpg', '2020-06-24 17:32:58', '2020-06-24 17:20:37'),
(4, 9, '81426.png', '2020-06-24 19:20:44', '2020-06-24 17:20:44'),
(5, 9, '86890.jpg', '2020-06-24 19:21:45', '2020-06-24 17:21:45'),
(6, 9, '15927.jpg', '2020-06-24 19:46:35', '2020-06-24 17:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `password`, `admin`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(20, 'vortex', 'alexandria ,egypt', 'alexadria', 'egypt', 'Egypt', '1234', '01123605754', 'vortex@gmail.com', '$2y$10$EVZ1run6a1GRB.P9nyPFcecJNdx17aZ8oQHXjS7HMinyVteKcP8Fa', 1, 1, 'd14u3K2ly7qjCpVlaL3OgEICFxSKF9iYhLr7p10290OsPi6mlV86bK0FQueT', NULL, '2020-06-24 15:52:09'),
(21, 'mostafa', 'alexandria ..........', 'alexandria', 'egypt', 'Egypt', '4567', '01123605753', 'mostafa@gmail.com', '$2y$10$6x.ww1BRK6wCgBUBtWK2b.klKo1LA7mEON60gKcJjMeHf40Yq9C16', 0, 1, 'PIO4TlbQWbxuxHtbJf8T635AYjjxp2czI7GsvjM32lDwW9iqZlTYB0cwzJZ9', '2020-06-24 04:36:26', '2020-06-24 05:41:42'),
(22, 'tefa', NULL, '', '', '', '', '', 'tefa@gmail.com', '$2y$10$66X5mp1Lxov2A7H/TXrbe.OtBLAXQid7fh/aCM77ZBuNly/GBmSnu', 0, 0, NULL, '2020-06-24 05:34:59', '2020-06-24 05:34:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
