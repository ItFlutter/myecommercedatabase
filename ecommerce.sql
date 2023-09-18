-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 12:07 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `address_usersid` int(11) NOT NULL,
  `address_name` varchar(255) NOT NULL,
  `address_city` varchar(255) NOT NULL,
  `address_street` varchar(255) NOT NULL,
  `address_lat` double NOT NULL,
  `address_long` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `address_usersid`, `address_name`, `address_city`, `address_street`, `address_lat`, `address_long`) VALUES
(19, 32, 'Home', 'Homs', 'Zahraa', 34.7295572, 36.7317343),
(23, 32, 'company', 'homs', 'sabel', 34.729588, 36.7317276),
(28, 42, 'home', 'homs', 'alzahra', 34.7336379, 36.7345331);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_phone` int(11) NOT NULL,
  `admin_verfiycode` smallint(6) NOT NULL,
  `admin_approve` tinyint(4) NOT NULL DEFAULT 0,
  `admin_role` int(11) NOT NULL DEFAULT 0,
  `admin_create` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_password`, `admin_email`, `admin_phone`, `admin_verfiycode`, `admin_approve`, `admin_role`, `admin_create`) VALUES
(1, 'demo', '89e495e7941cf9e40e6980d14a16bf023ccd4c91', 'demo@gmail.com', 123456, 32767, 1, 0, '2023-07-09 00:17:43');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `cart_usersid` int(11) NOT NULL,
  `cart_itemsid` int(11) NOT NULL,
  `cart_ordres` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `cart_usersid`, `cart_itemsid`, `cart_ordres`) VALUES
(106, 32, 4, 46),
(107, 32, 4, 48),
(108, 32, 4, 49),
(109, 32, 4, 50),
(110, 32, 4, 51),
(111, 32, 4, 52),
(112, 32, 1, 53),
(113, 32, 1, 53),
(114, 32, 1, 53),
(115, 32, 3, 53),
(116, 32, 3, 53),
(117, 32, 2, 53),
(118, 32, 4, 53),
(120, 32, 4, 54),
(123, 32, 4, 55),
(124, 32, 4, 55),
(126, 32, 4, 55),
(133, 32, 4, 56),
(147, 32, 4, 57),
(148, 32, 1, 58),
(156, 32, 4, 59),
(157, 32, 4, 59),
(158, 32, 4, 59),
(159, 32, 4, 59),
(160, 32, 4, 59),
(161, 32, 4, 59),
(162, 32, 4, 60),
(163, 32, 4, 61),
(164, 32, 4, 62),
(165, 32, 4, 64),
(166, 32, 4, 65),
(167, 32, 4, 65),
(168, 32, 4, 66),
(169, 32, 4, 67),
(170, 32, 4, 67),
(171, 32, 3, 68),
(172, 32, 3, 68),
(173, 32, 3, 69),
(174, 32, 3, 69),
(175, 32, 4, 70),
(176, 32, 4, 71),
(177, 32, 4, 72),
(178, 32, 5, 73),
(179, 32, 5, 73),
(180, 32, 3, 74),
(194, 32, 2, 81),
(195, 32, 2, 81),
(196, 32, 5, 81),
(197, 32, 5, 81),
(203, 42, 5, 0),
(204, 32, 5, 82),
(205, 32, 5, 83),
(206, 32, 5, 84),
(207, 32, 5, 85),
(208, 32, 5, 86),
(209, 32, 4, 87),
(210, 32, 2, 88),
(211, 32, 2, 88),
(212, 32, 2, 89),
(213, 32, 2, 89),
(219, 32, 2, 90),
(220, 32, 2, 90);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cartview`
-- (See below for the actual view)
--
CREATE TABLE `cartview` (
`itemstotalprice` double
,`countitems` bigint(21)
,`cart_id` int(11)
,`cart_usersid` int(11)
,`cart_itemsid` int(11)
,`cart_ordres` int(11)
,`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_count` int(11)
,`items_active` tinyint(4)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_cat` int(11)
,`itemspricediscount` double
);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(100) NOT NULL,
  `categories_name_ar` varchar(100) NOT NULL,
  `categories_image` varchar(255) NOT NULL,
  `categories_datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_name_ar`, `categories_image`, `categories_datetime`) VALUES
(1, 'laptop', 'الابتوبات', 'laptop.svg', '2023-04-04 22:41:59'),
(2, 'camera', 'الكاميرات', 'camera.svg', '2023-04-04 22:41:59'),
(3, 'mobile', 'الموبايلات', 'mobile.svg', '2023-04-04 22:43:09'),
(4, 'shoes', 'الأحذية', 'shoes.svg', '2023-04-04 22:43:09'),
(5, 'dress', 'الفساتين', 'dress.svg', '2023-04-04 22:43:42'),
(6, 'game', 'الألعاب', 'game.svg', '2023-04-04 22:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `coupon_name` varchar(50) NOT NULL,
  `coupon_count` int(11) NOT NULL,
  `coupon_expiredate` datetime NOT NULL,
  `coupon_discount` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `coupon_name`, `coupon_count`, `coupon_expiredate`, `coupon_discount`) VALUES
(1, 'ahmad', 2, '2023-08-18 19:26:39', 10),
(10, 'hazem', 3, '2023-08-22 00:03:19', 5);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL,
  `delivery_name` varchar(50) NOT NULL,
  `delivery_password` varchar(255) NOT NULL,
  `delivery_email` varchar(255) NOT NULL,
  `delivery_phone` varchar(50) NOT NULL,
  `delivery_verfiycode` int(11) NOT NULL,
  `delivery_approve` tinyint(4) NOT NULL,
  `delivery_create` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `delivery_name`, `delivery_password`, `delivery_email`, `delivery_phone`, `delivery_verfiycode`, `delivery_approve`, `delivery_create`) VALUES
(1, 'demo', '89e495e7941cf9e40e6980d14a16bf023ccd4c91', 'demo@gmail.com', '0930405477', 17787, 1, '2023-07-01 16:30:57'),
(15, 'trainds', 'e7400b6995e1cdd613a0ed31f3a72e7566beaa84', 'a@g.fd', '0930408121', 57767, 1, '2023-08-18 17:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `favorite_id` int(11) NOT NULL,
  `favorite_usersid` int(11) NOT NULL,
  `favorite_itemsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`favorite_id`, `favorite_usersid`, `favorite_itemsid`) VALUES
(33, 37, 2),
(53, 37, 3),
(118, 42, 5);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `items_id` int(11) NOT NULL,
  `items_name` varchar(100) NOT NULL,
  `items_name_ar` varchar(100) NOT NULL,
  `items_desc` varchar(255) NOT NULL,
  `items_desc_ar` varchar(255) NOT NULL,
  `items_image` varchar(255) NOT NULL,
  `items_count` int(11) NOT NULL,
  `items_active` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=>hidden,1=>active',
  `items_price` float NOT NULL,
  `items_discount` smallint(6) NOT NULL,
  `items_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `items_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`items_id`, `items_name`, `items_name_ar`, `items_desc`, `items_desc_ar`, `items_image`, `items_count`, `items_active`, `items_price`, `items_discount`, `items_date`, `items_cat`) VALUES
(1, 'laptop surface go 2', 'لابتوب سيرفيس غو', 'laptop amazing core i5 gen 11 Ram 12', 'لابتوب مميز انيق رفيع معالج كور اي فايف رام 12', 'laptop.png', 5, 1, 200, 0, '2023-04-06 01:25:15', 1),
(2, 'mobile s22 ultra', 'اس 22 الترا سامسونغ', 'Samsung s22 ultra Ram 12 Hard 512 GB Camera 100 Me', 'اس 22 الترا سامسونغ رام 12 هارد 512 كاميرا 100 ميغا', 'samsung.jpg', 22, 1, 300, 0, '2023-04-06 01:27:57', 3),
(3, 'camera 250d canon', 'كاميرا 250 دي كانون', 'camera 22 megapixel 4k 30 frame', 'كاميرا بدقة 22 ميغا بكسل', 'camera.PNG', 3, 1, 20, 20, '2023-04-06 01:30:04', 2),
(4, 'MacBook M1 Air', 'ماك بوك برو', 'macbook m1 details M1 proccessor Ram 8 Giga', 'macbook m1 details M1 proccessor Ram 8 Giga', 'macbook.png', 2, 1, 1000, 10, '2023-04-13 15:28:35', 1),
(5, 'Wireless Controller for PS4', 'وحدة تحكم لاسلكية لجهاز PS4', 'Wireless Controller for PS4 gives you what you want in your gaming from over precision control your games to sharing', 'PS4 تمنحك وحدة التحكم اللاسلكية لجهاز \r\nما تريده في ألعابك بدءًا من التحكم الدقيق في ألعابك وانتهاءً بالمشاركة', 'ps4_1.png', 10, 1, 40, 10, '2023-06-18 18:23:14', 6);

-- --------------------------------------------------------

--
-- Table structure for table `itemsimages`
--

CREATE TABLE `itemsimages` (
  `itemsimages_id` int(11) NOT NULL,
  `itemsimages_name` varchar(255) NOT NULL,
  `itemsimages_itemsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itemsimages`
--

INSERT INTO `itemsimages` (`itemsimages_id`, `itemsimages_name`, `itemsimages_itemsid`) VALUES
(1, 'ps4_1.png', 5),
(2, 'ps4_2.png', 5),
(3, 'ps4_3.png', 5),
(4, 'ps4_4.png', 5),
(6, 'laptop.png', 1),
(7, 'samsung.jpg', 2),
(8, 'camera.PNG', 3),
(9, 'macbook.png', 4);

-- --------------------------------------------------------

--
-- Stand-in structure for view `itemstopselling`
-- (See below for the actual view)
--
CREATE TABLE `itemstopselling` (
`countitems` bigint(21)
,`cart_id` int(11)
,`cart_usersid` int(11)
,`cart_itemsid` int(11)
,`cart_ordres` int(11)
,`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_count` int(11)
,`items_active` tinyint(4)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_cat` int(11)
,`categories_id` int(11)
,`categories_name` varchar(100)
,`categories_name_ar` varchar(100)
,`categories_image` varchar(255)
,`categories_datetime` timestamp
,`itemspricediscount` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `itemsview`
-- (See below for the actual view)
--
CREATE TABLE `itemsview` (
`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_count` int(11)
,`items_active` tinyint(4)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_cat` int(11)
,`categories_id` int(11)
,`categories_name` varchar(100)
,`categories_name_ar` varchar(100)
,`categories_image` varchar(255)
,`categories_datetime` timestamp
,`itemspricediscount` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `myfavorite`
-- (See below for the actual view)
--
CREATE TABLE `myfavorite` (
`favorite_id` int(11)
,`favorite_usersid` int(11)
,`favorite_itemsid` int(11)
,`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_count` int(11)
,`items_active` tinyint(4)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_cat` int(11)
,`users_id` int(11)
,`itemspricediscount` double
);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `notification_title` varchar(255) NOT NULL,
  `notification_body` varchar(255) NOT NULL,
  `notification_userid` int(11) NOT NULL,
  `notification_orderid` int(11) NOT NULL,
  `notification_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `notification_title`, `notification_body`, `notification_userid`, `notification_orderid`, `notification_datetime`) VALUES
(44, 'Success', 'Order With The ID 52 Has  Approved', 32, 52, '2023-06-29 18:22:05'),
(47, 'Success', 'Order With The ID 53 On The Way', 32, 53, '2023-07-07 17:04:24'),
(48, 'Success', 'Order With The ID 73 On The Way', 32, 73, '2023-07-07 17:07:28'),
(49, 'Success', 'Order With The ID 73 On The Way', 32, 73, '2023-07-07 17:08:22'),
(50, 'Success', 'Order With The ID 73 On The Way', 32, 73, '2023-07-07 17:11:42'),
(51, 'Success', 'Order With The ID 74 On The Way', 32, 74, '2023-07-07 17:13:40'),
(52, 'Success', 'Order With The ID 71 On The Way', 32, 71, '2023-07-07 17:19:17'),
(53, 'Success', 'Order With The ID 72 On The Way', 32, 72, '2023-07-07 17:21:05'),
(54, 'Success', 'Order With The ID 71 On The Way', 32, 71, '2023-07-07 22:56:31'),
(55, 'Success', 'Order With The ID 73 On The Way', 32, 73, '2023-07-07 22:59:03'),
(56, 'Success', 'Order With The ID 53 Has Been Delivered', 32, 53, '2023-07-08 01:52:45'),
(57, 'Success', 'Order With The ID 71 Has Been Delivered', 32, 71, '2023-07-08 01:53:26'),
(58, 'Success', 'Order With The ID 52 On The Way', 32, 52, '2023-07-08 02:12:14'),
(59, 'Success', 'Order With The ID 52 Has Been Delivered', 32, 52, '2023-07-08 02:12:49'),
(60, 'Success', 'Order With The ID 52 On The Way', 32, 52, '2023-07-08 02:19:15'),
(61, 'Success', 'Order With The ID 52 On The Way', 32, 52, '2023-07-08 02:27:50'),
(62, 'Success', 'Order With The ID 52 Has Been Delivered', 32, 52, '2023-07-08 02:28:56'),
(63, 'Success', 'Order With The ID 52 On The Way', 32, 52, '2023-07-08 02:57:46'),
(64, 'Success', 'Order With The ID 52 Has Been Delivered', 32, 52, '2023-07-08 02:58:32'),
(65, 'Success', 'Order With The ID 53 On The Way', 32, 53, '2023-08-14 02:46:14'),
(66, 'Success', 'Order With The ID 53 On The Way', 32, 53, '2023-08-14 02:49:58'),
(67, 'Success', 'Order With The ID 53 Has Been Delivered', 32, 53, '2023-08-14 02:51:31'),
(68, 'Success', 'Order With The ID 55 Has Approved', 32, 55, '2023-08-15 14:44:42'),
(69, 'Success', 'Order With The ID 55 Has Approved', 32, 55, '2023-08-15 14:45:47'),
(70, 'Success', 'Order With The ID 55 Has Been Prepared And Will Be Sending', 32, 55, '2023-08-15 14:50:06'),
(71, 'Success', 'Order With The ID 52 Has Approved', 32, 52, '2023-08-15 15:13:35'),
(72, 'Success', 'Order With The ID 52 Has Been Prepared And Will Be Sending', 32, 52, '2023-08-15 15:14:44'),
(73, 'Success', 'Order With The ID 46 Has Approved', 32, 46, '2023-08-15 15:16:27'),
(74, 'Success', 'Order With The ID 46 Has Been Prepared And Ready To Recieve', 32, 46, '2023-08-15 15:16:48'),
(75, 'Success', 'Order With The ID 55 Has Been Prepared And Will Be Sending', 32, 55, '2023-08-15 15:17:31'),
(76, 'Success', 'Order With The ID 52 On The Way', 32, 52, '2023-08-15 17:57:18'),
(77, 'Success', 'Order With The ID 52 On The Way', 32, 52, '2023-08-15 18:00:30'),
(78, 'Success', 'Order With The ID 52 Has Been Delivered', 32, 52, '2023-08-19 16:39:51'),
(79, 'Success', 'Order With The ID 46 Has Approved', 32, 46, '2023-08-19 17:11:46'),
(80, 'Success', 'Order With The ID 81 Has Approved', 32, 81, '2023-08-20 09:59:46'),
(81, 'Success', 'Order With The ID 81 Has Been Prepared And Ready To Recieve', 32, 81, '2023-08-20 10:00:09'),
(82, 'Success', 'Order With The ID 81 Has Been Prepared And Ready To Recieve', 32, 81, '2023-08-20 10:01:05'),
(83, 'Success', 'Order With The ID 81 Has Been Prepared And Ready To Recieve', 32, 81, '2023-08-20 10:01:49'),
(84, 'Success', 'Order With The ID 81 Has Approved', 32, 81, '2023-08-20 10:11:28'),
(85, 'Success', 'Order With The ID 83 Has Approved', 32, 83, '2023-08-20 10:25:08'),
(86, 'Success', 'Order With The ID 86 Has Approved', 32, 86, '2023-08-20 10:33:57'),
(87, 'Success', 'Order With The ID 88 Has Approved', 32, 88, '2023-08-20 15:48:10'),
(88, 'Success', 'Order With The ID 88 Has Been Prepared And Will Be Sending', 32, 88, '2023-08-20 15:48:59'),
(89, 'Success', 'Order With The ID 88 On The Way', 32, 88, '2023-08-20 15:49:49'),
(90, 'Success', 'Order With The ID 89 Has Approved', 32, 89, '2023-08-20 15:52:31'),
(91, 'Success', 'Order With The ID 89 Has Been Prepared And Will Be Sending', 32, 89, '2023-08-20 15:53:05'),
(92, 'Success', 'Order With The ID 89 On The Way', 32, 89, '2023-08-20 15:53:37'),
(93, 'Success', 'Order With The ID 90 Has Approved', 32, 90, '2023-08-20 16:14:03'),
(94, 'Success', 'Order With The ID 90 Has Been Prepared And Will Be Sending', 32, 90, '2023-08-20 16:14:26'),
(95, 'Success', 'Order With The ID 90 On The Way', 32, 90, '2023-08-20 16:14:52'),
(96, 'Success', 'Order With The ID 90 Has Been Delivered', 32, 90, '2023-08-20 16:15:28');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `orders_usersid` int(11) NOT NULL,
  `orders_address` int(11) NOT NULL,
  `orders_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => delivery; 1 => recive',
  `orders_pricedelivery` tinyint(4) NOT NULL DEFAULT 0,
  `orders_price` int(11) NOT NULL,
  `orders_totalprice` double NOT NULL,
  `orders_coupon` tinyint(4) NOT NULL DEFAULT 0,
  `orders_rating` tinyint(4) NOT NULL DEFAULT 0,
  `orders_noterating` varchar(255) NOT NULL DEFAULT 'none',
  `orders_paymentmethod` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => cash; 1=>payment card',
  `orders_status` tinyint(4) NOT NULL DEFAULT 0,
  `orders_delivery` int(11) NOT NULL DEFAULT 0,
  `orders_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `orders_usersid`, `orders_address`, `orders_type`, `orders_pricedelivery`, `orders_price`, `orders_totalprice`, `orders_coupon`, `orders_rating`, `orders_noterating`, `orders_paymentmethod`, `orders_status`, `orders_delivery`, `orders_datetime`) VALUES
(46, 32, 0, 1, 0, 900, 810, 1, 1, 'one', 1, 1, 0, '2023-05-19 19:23:17'),
(52, 32, 19, 0, 10, 900, 910, 0, 0, 'none', 0, 3, 1, '2023-06-04 00:49:17'),
(53, 32, 19, 0, 10, 1832, 1842, 0, 1, '', 0, 2, 0, '2023-06-05 19:07:14'),
(55, 32, 19, 0, 10, 2700, 2710, 0, 0, 'none', 0, 4, 1, '2023-06-23 03:09:19');

-- --------------------------------------------------------

--
-- Stand-in structure for view `ordersdetailsview`
-- (See below for the actual view)
--
CREATE TABLE `ordersdetailsview` (
`countitems` bigint(21)
,`itemsprice` double
,`cart_id` int(11)
,`cart_usersid` int(11)
,`cart_itemsid` int(11)
,`cart_ordres` int(11)
,`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_count` int(11)
,`items_active` tinyint(4)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_cat` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ordersview`
-- (See below for the actual view)
--
CREATE TABLE `ordersview` (
`orders_id` int(11)
,`orders_usersid` int(11)
,`orders_address` int(11)
,`orders_type` tinyint(4)
,`orders_pricedelivery` tinyint(4)
,`orders_price` int(11)
,`orders_totalprice` double
,`orders_coupon` tinyint(4)
,`orders_rating` tinyint(4)
,`orders_noterating` varchar(255)
,`orders_paymentmethod` tinyint(4)
,`orders_status` tinyint(4)
,`orders_delivery` int(11)
,`orders_datetime` datetime
,`address_id` int(11)
,`address_usersid` int(11)
,`address_name` varchar(255)
,`address_city` varchar(255)
,`address_street` varchar(255)
,`address_lat` double
,`address_long` double
);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `rating_userid` int(11) NOT NULL,
  `rating_itemid` int(11) NOT NULL,
  `rating_rate` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `rating_userid`, `rating_itemid`, `rating_rate`) VALUES
(1, 32, 5, 3),
(2, 37, 5, 2),
(3, 42, 5, 3),
(4, 32, 4, 2),
(5, 32, 3, 3),
(6, 32, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `settings_titlehome` varchar(50) NOT NULL,
  `settings_bodyhome` varchar(100) NOT NULL,
  `settings_deliverytime` int(11) NOT NULL DEFAULT 30
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `settings_titlehome`, `settings_bodyhome`, `settings_deliverytime`) VALUES
(3, 'A Summer Surprise', 'Discount 80%', 30);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `users_name` varchar(100) NOT NULL,
  `users_password` varchar(255) NOT NULL,
  `users_email` varchar(100) NOT NULL,
  `users_phone` varchar(100) NOT NULL,
  `users_verifycode` int(4) NOT NULL,
  `users_approve` tinyint(4) NOT NULL DEFAULT 0,
  `users_create` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `users_name`, `users_password`, `users_email`, `users_phone`, `users_verifycode`, `users_approve`, `users_create`) VALUES
(32, 'Ahmad It', '35f9452709058d77b1a3151f8be8a682509828cc', 'ahmad@gmail.com', '123456789', 26219, 1, '2023-04-04 01:37:18'),
(37, 'hazem', '0ec8868506739fbb26c28621369e25a5cdca1dc2', 'hazem@gmail.com', '123456788', 37368, 1, '2023-04-24 11:30:43'),
(42, 'mohamad', '2580ad46483870d9b9a210cf497712db46b0792e', 'mohamadalnok@gmail.com', '0998856799', 50949, 1, '2023-08-19 21:10:52');

-- --------------------------------------------------------

--
-- Structure for view `cartview`
--
DROP TABLE IF EXISTS `cartview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cartview`  AS SELECT sum(`items`.`items_price` - `items`.`items_price` * `items`.`items_discount` / 100) AS `itemstotalprice`, count(`cart`.`cart_itemsid`) AS `countitems`, `cart`.`cart_id` AS `cart_id`, `cart`.`cart_usersid` AS `cart_usersid`, `cart`.`cart_itemsid` AS `cart_itemsid`, `cart`.`cart_ordres` AS `cart_ordres`, `items`.`items_id` AS `items_id`, `items`.`items_name` AS `items_name`, `items`.`items_name_ar` AS `items_name_ar`, `items`.`items_desc` AS `items_desc`, `items`.`items_desc_ar` AS `items_desc_ar`, `items`.`items_image` AS `items_image`, `items`.`items_count` AS `items_count`, `items`.`items_active` AS `items_active`, `items`.`items_price` AS `items_price`, `items`.`items_discount` AS `items_discount`, `items`.`items_date` AS `items_date`, `items`.`items_cat` AS `items_cat`, `items`.`items_price`- `items`.`items_price` * `items`.`items_discount` / 100 AS `itemspricediscount` FROM (`cart` join `items` on(`items`.`items_id` = `cart`.`cart_itemsid`)) WHERE `cart`.`cart_ordres` = 0 GROUP BY `cart`.`cart_itemsid`, `cart`.`cart_usersid``cart_usersid`  ;

-- --------------------------------------------------------

--
-- Structure for view `itemstopselling`
--
DROP TABLE IF EXISTS `itemstopselling`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `itemstopselling`  AS SELECT count(`cart`.`cart_id`) AS `countitems`, `cart`.`cart_id` AS `cart_id`, `cart`.`cart_usersid` AS `cart_usersid`, `cart`.`cart_itemsid` AS `cart_itemsid`, `cart`.`cart_ordres` AS `cart_ordres`, `items`.`items_id` AS `items_id`, `items`.`items_name` AS `items_name`, `items`.`items_name_ar` AS `items_name_ar`, `items`.`items_desc` AS `items_desc`, `items`.`items_desc_ar` AS `items_desc_ar`, `items`.`items_image` AS `items_image`, `items`.`items_count` AS `items_count`, `items`.`items_active` AS `items_active`, `items`.`items_price` AS `items_price`, `items`.`items_discount` AS `items_discount`, `items`.`items_date` AS `items_date`, `items`.`items_cat` AS `items_cat`, `categories`.`categories_id` AS `categories_id`, `categories`.`categories_name` AS `categories_name`, `categories`.`categories_name_ar` AS `categories_name_ar`, `categories`.`categories_image` AS `categories_image`, `categories`.`categories_datetime` AS `categories_datetime`, `items`.`items_price`- `items`.`items_price` * (`items`.`items_discount` / 100) AS `itemspricediscount` FROM ((`cart` join `items` on(`items`.`items_id` = `cart`.`cart_itemsid`)) join `categories` on(`items`.`items_cat` = `categories`.`categories_id`)) WHERE `cart`.`cart_ordres` <> 0 GROUP BY `cart`.`cart_itemsid` ORDER BY count(`cart`.`cart_id`) AS `DESCdesc` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `itemsview`
--
DROP TABLE IF EXISTS `itemsview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `itemsview`  AS SELECT `items`.`items_id` AS `items_id`, `items`.`items_name` AS `items_name`, `items`.`items_name_ar` AS `items_name_ar`, `items`.`items_desc` AS `items_desc`, `items`.`items_desc_ar` AS `items_desc_ar`, `items`.`items_image` AS `items_image`, `items`.`items_count` AS `items_count`, `items`.`items_active` AS `items_active`, `items`.`items_price` AS `items_price`, `items`.`items_discount` AS `items_discount`, `items`.`items_date` AS `items_date`, `items`.`items_cat` AS `items_cat`, `categories`.`categories_id` AS `categories_id`, `categories`.`categories_name` AS `categories_name`, `categories`.`categories_name_ar` AS `categories_name_ar`, `categories`.`categories_image` AS `categories_image`, `categories`.`categories_datetime` AS `categories_datetime`, `items`.`items_price`- `items`.`items_price` * (`items`.`items_discount` / 100) AS `itemspricediscount` FROM (`items` join `categories` on(`items`.`items_cat` = `categories`.`categories_id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `myfavorite`
--
DROP TABLE IF EXISTS `myfavorite`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `myfavorite`  AS SELECT `favorite`.`favorite_id` AS `favorite_id`, `favorite`.`favorite_usersid` AS `favorite_usersid`, `favorite`.`favorite_itemsid` AS `favorite_itemsid`, `items`.`items_id` AS `items_id`, `items`.`items_name` AS `items_name`, `items`.`items_name_ar` AS `items_name_ar`, `items`.`items_desc` AS `items_desc`, `items`.`items_desc_ar` AS `items_desc_ar`, `items`.`items_image` AS `items_image`, `items`.`items_count` AS `items_count`, `items`.`items_active` AS `items_active`, `items`.`items_price` AS `items_price`, `items`.`items_discount` AS `items_discount`, `items`.`items_date` AS `items_date`, `items`.`items_cat` AS `items_cat`, `users`.`users_id` AS `users_id`, `items`.`items_price`- `items`.`items_price` * (`items`.`items_discount` / 100) AS `itemspricediscount` FROM ((`favorite` join `items` on(`favorite`.`favorite_itemsid` = `items`.`items_id`)) join `users` on(`favorite`.`favorite_usersid` = `users`.`users_id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `ordersdetailsview`
--
DROP TABLE IF EXISTS `ordersdetailsview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ordersdetailsview`  AS SELECT count(`cart`.`cart_itemsid`) AS `countitems`, sum(`items`.`items_price` - `items`.`items_price` * `items`.`items_discount` / 100) AS `itemsprice`, `cart`.`cart_id` AS `cart_id`, `cart`.`cart_usersid` AS `cart_usersid`, `cart`.`cart_itemsid` AS `cart_itemsid`, `cart`.`cart_ordres` AS `cart_ordres`, `items`.`items_id` AS `items_id`, `items`.`items_name` AS `items_name`, `items`.`items_name_ar` AS `items_name_ar`, `items`.`items_desc` AS `items_desc`, `items`.`items_desc_ar` AS `items_desc_ar`, `items`.`items_image` AS `items_image`, `items`.`items_count` AS `items_count`, `items`.`items_active` AS `items_active`, `items`.`items_price` AS `items_price`, `items`.`items_discount` AS `items_discount`, `items`.`items_date` AS `items_date`, `items`.`items_cat` AS `items_cat` FROM (`cart` join `items` on(`cart`.`cart_itemsid` = `items`.`items_id`)) WHERE `cart`.`cart_ordres` <> 0 GROUP BY `cart`.`cart_ordres`, `cart`.`cart_itemsid`, `cart`.`cart_usersid``cart_usersid`  ;

-- --------------------------------------------------------

--
-- Structure for view `ordersview`
--
DROP TABLE IF EXISTS `ordersview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ordersview`  AS SELECT `orders`.`orders_id` AS `orders_id`, `orders`.`orders_usersid` AS `orders_usersid`, `orders`.`orders_address` AS `orders_address`, `orders`.`orders_type` AS `orders_type`, `orders`.`orders_pricedelivery` AS `orders_pricedelivery`, `orders`.`orders_price` AS `orders_price`, `orders`.`orders_totalprice` AS `orders_totalprice`, `orders`.`orders_coupon` AS `orders_coupon`, `orders`.`orders_rating` AS `orders_rating`, `orders`.`orders_noterating` AS `orders_noterating`, `orders`.`orders_paymentmethod` AS `orders_paymentmethod`, `orders`.`orders_status` AS `orders_status`, `orders`.`orders_delivery` AS `orders_delivery`, `orders`.`orders_datetime` AS `orders_datetime`, `address`.`address_id` AS `address_id`, `address`.`address_usersid` AS `address_usersid`, `address`.`address_name` AS `address_name`, `address`.`address_city` AS `address_city`, `address`.`address_street` AS `address_street`, `address`.`address_lat` AS `address_lat`, `address`.`address_long` AS `address_long` FROM (`orders` left join `address` on(`orders`.`orders_address` = `address`.`address_id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `address_usersid` (`address_usersid`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_itemsid` (`cart_itemsid`),
  ADD KEY `cart_usersid` (`cart_usersid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`),
  ADD UNIQUE KEY `coupon_name` (`coupon_name`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `favorite_itemsid` (`favorite_itemsid`),
  ADD KEY `favorite_usersid` (`favorite_usersid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`items_id`),
  ADD KEY `items_cat` (`items_cat`);

--
-- Indexes for table `itemsimages`
--
ALTER TABLE `itemsimages`
  ADD PRIMARY KEY (`itemsimages_id`),
  ADD KEY `itemsimages_itemsid` (`itemsimages_itemsid`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`),
  ADD UNIQUE KEY `users_email` (`users_email`),
  ADD UNIQUE KEY `users_phone` (`users_phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `itemsimages`
--
ALTER TABLE `itemsimages`
  MODIFY `itemsimages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`address_usersid`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`cart_itemsid`) REFERENCES `items` (`items_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`cart_usersid`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`favorite_itemsid`) REFERENCES `items` (`items_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`favorite_usersid`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`items_cat`) REFERENCES `categories` (`categories_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `itemsimages`
--
ALTER TABLE `itemsimages`
  ADD CONSTRAINT `itemsimages_ibfk_1` FOREIGN KEY (`itemsimages_itemsid`) REFERENCES `items` (`items_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
