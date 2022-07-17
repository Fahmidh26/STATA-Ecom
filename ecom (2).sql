-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2022 at 08:13 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `returnorder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reports` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alluser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminuserrole` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(25) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `brand`, `category`, `product`, `slider`, `coupons`, `shipping`, `setting`, `returnorder`, `review`, `orders`, `stock`, `reports`, `alluser`, `adminuserrole`, `quotation`, `type`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2022-06-05 03:57:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '01964870827', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 'f7aBJgSo8E', NULL, NULL, '2022-06-05 03:57:32', '2022-06-05 03:57:32'),
(3, 'mehdi', 'mehdi@gmail.com', NULL, '$2y$10$gUMBw7bWLA4hV4QuvntmpO0eOuxs34xWHPe6VxXBzSOtTlp6IYdR6', '01664870828', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 'upload/admin_images/1737410108525625.png', '2022-07-04 03:23:53', '2022-07-04 03:23:53'),
(4, 'Tasdik', 'tasdik@gmail.com', NULL, '$2y$10$y57pgDSMrBpeaDiZe4L/qux0pmrXZFDYy10Aw7.RIQEKvzL1h6qqG', '01964870827', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '1', NULL, 2, NULL, NULL, 'upload/admin_images/1737489562146124.png', '2022-07-04 23:32:51', NULL),
(5, 'yeasin', 'yeasin@gmail.com', NULL, '$2y$10$S697Q8YSqUYFTr.e8YjQEePBvEFA4IWj0z3wl24bTab.MoTe3MJVi', '01964870827', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', 2, NULL, NULL, 'upload/admin_images/1737672498290859.PNG', '2022-07-07 00:00:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_image`, `created_at`, `updated_at`) VALUES
(2, 'Oppo', 'upload/brand/1735049888748734.png', '2022-06-08 01:15:16', NULL),
(3, 'mehdi', 'upload/brand/1735056552469587.png', '2022-06-08 03:01:11', NULL),
(4, 'Ifaz', 'upload/brand/1735056583743576.png', '2022-06-08 03:01:41', NULL),
(5, 'tasdik', 'upload/brand/1735056979232546.png', '2022-06-08 03:07:58', NULL),
(6, 'yeasin', 'upload/brand/1735057081276520.png', '2022-06-08 03:09:36', NULL),
(7, 'Samsung', 'upload/brand/1736407119518208.jpg', '2022-06-23 00:47:53', NULL),
(8, 'Ifaz', 'upload/brand/1736407361621849.jpg', '2022-06-23 00:51:43', NULL),
(9, 'saha apple', 'upload/brand/1736407388787102.jpg', '2022-06-23 00:52:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', '2022-06-12 01:14:35', NULL),
(2, 'Plastics', '2022-06-12 01:23:08', NULL),
(3, 'Locks', '2022-06-12 02:15:08', NULL),
(4, 'elham', '2022-06-12 03:33:53', NULL),
(5, 'tasdik', '2022-06-12 03:48:43', NULL),
(6, 'mehdi', '2022-06-12 22:18:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FREE500', 20, '2022-06-23', 1, '2022-06-19 01:58:27', NULL),
(2, 'STATA200', 20, '2022-06-24', 1, '2022-06-21 04:10:50', NULL),
(3, 'MEHDI20', 20, '2022-07-25', 1, '2022-06-24 23:34:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_05_035221_create_sessions_table', 1),
(7, '2022_06_05_093510_create_admins_table', 2),
(8, '2022_06_08_050819_create_brands_table', 3),
(9, '2022_06_11_072712_create_sliders_table', 4),
(10, '2022_06_11_080003_create_sliders_table', 5),
(11, '2022_06_12_044009_create_categories_table', 6),
(12, '2022_06_12_044635_create_sub_categories_table', 6),
(13, '2022_06_12_101831_create_products_table', 7),
(14, '2022_06_12_102120_create_multi_imgs_table', 7),
(15, '2022_06_15_111136_create_carts_table', 8),
(16, '2022_06_18_051335_create_wishlists_table', 9),
(17, '2022_06_19_061429_create_coupons_table', 10),
(18, '2022_06_20_055345_create_ship_divisions_table', 11),
(19, '2022_06_20_082833_create_ship_districts_table', 12),
(20, '2022_06_21_050936_create_ship_states_table', 13),
(21, '2022_06_22_153813_create_shippings_table', 14),
(22, '2022_06_25_052407_create_oders_table', 14),
(23, '2022_06_25_075304_create_orders_table', 15),
(24, '2022_06_25_075738_create_order_items_table', 15),
(25, '2022_06_30_065319_create_site_settings_table', 16),
(26, '2022_06_30_110044_create_seos_table', 17),
(27, '2022_07_02_062717_create_reviews_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload/products/multi-image/1735512591630339.jpg', '2022-06-13 03:49:44', NULL),
(2, 1, 'upload/products/multi-image/1735512591886649.jpg', '2022-06-13 03:49:44', NULL),
(3, 1, 'upload/products/multi-image/1735512592221241.jpg', '2022-06-13 03:49:45', NULL),
(4, 2, 'upload/products/multi-image/1735513072310916.jpg', '2022-06-13 03:57:23', NULL),
(5, 2, 'upload/products/multi-image/1735513072611697.jpg', '2022-06-13 03:57:23', NULL),
(6, 2, 'upload/products/multi-image/1735513072855222.jpg', '2022-06-13 03:57:23', NULL),
(7, 3, 'upload/products/multi-image/1735513599401796.jpg', '2022-06-13 04:05:45', NULL),
(8, 3, 'upload/products/multi-image/1735513599686734.jpg', '2022-06-13 04:05:46', NULL),
(9, 4, 'upload/products/multi-image/1735516373767888.jpg', '2022-06-13 04:49:51', NULL),
(10, 4, 'upload/products/multi-image/1735516374031862.jpg', '2022-06-13 04:49:51', NULL),
(11, 5, 'upload/products/multi-image/1735581720124153.jpg', '2022-06-13 22:08:30', NULL),
(12, 5, 'upload/products/multi-image/1735581720432680.jpg', '2022-06-13 22:08:31', NULL),
(13, 5, 'upload/products/multi-image/1735581720737548.jpg', '2022-06-13 22:08:31', NULL),
(14, 5, 'upload/products/multi-image/1735581721024869.jpg', '2022-06-13 22:08:31', NULL),
(15, 6, 'upload/products/multi-image/1735582540510473.jpg', '2022-06-13 22:21:33', NULL),
(16, 6, 'upload/products/multi-image/1735582540824561.jpg', '2022-06-13 22:21:33', NULL),
(17, 6, 'upload/products/multi-image/1735582541268855.jpg', '2022-06-13 22:21:33', NULL),
(18, 7, 'upload/products/multi-image/1735600022370111.png', '2022-06-14 02:59:27', NULL),
(19, 7, 'upload/products/multi-image/1735600024918135.png', '2022-06-14 02:59:29', NULL),
(20, 7, 'upload/products/multi-image/1735600027316408.png', '2022-06-14 02:59:30', NULL),
(21, 8, 'upload/products/multi-image/1735601079138720.png', '2022-06-14 03:16:15', NULL),
(22, 8, 'upload/products/multi-image/1735601081674839.png', '2022-06-14 03:16:17', NULL),
(23, 8, 'upload/products/multi-image/1735601084029124.png', '2022-06-14 03:16:17', NULL),
(24, 9, 'upload/products/multi-image/1735606312768959.jpg', '2022-06-14 04:39:24', NULL),
(25, 9, 'upload/products/multi-image/1735606313072461.jpg', '2022-06-14 04:39:24', NULL),
(26, 9, 'upload/products/multi-image/1735606313315540.jpg', '2022-06-14 04:39:24', NULL),
(27, 9, 'upload/products/multi-image/1735606313592829.jpg', '2022-06-14 04:39:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `post_code`, `notes`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_order`, `return_reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 5, 3, 'user', 'user@gmail.com', '01964870827', 1212, 'h', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 10400.00, NULL, 'STA40692729', '26 June 2022', 'June', '2022', NULL, NULL, NULL, NULL, NULL, NULL, '29 June 2022', '2', 'Icche Hoise tai', 'delivered', '2022-06-26 05:49:46', '2022-07-02 00:00:12'),
(2, 3, 1, 5, 4, 'mehdi', 'user@gmail.com', '01964870827', 1212, 'mehdiiii', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 4000.00, NULL, 'STA93913424', '27 June 2022', 'June', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'delivered', '2022-06-26 22:22:56', '2022-07-03 23:31:06'),
(3, 3, 1, 5, 4, 'ifaz', 'ifaz@gmail.com', '01964870827', 1212, 'jikhgfd', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 20000.00, NULL, 'STA42600974', '27 June 2022', 'June', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'pending', '2022-06-26 22:58:57', NULL),
(4, 3, 1, 5, 3, 'tasdik', 'user@gmail.com', '01964870827', 1212, 'kjhuyfg', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 800.00, NULL, 'STA82780037', '27 June 2022', 'June', '2022', NULL, NULL, NULL, NULL, NULL, NULL, '05 July 2022', '1', 'icche hoise', 'delivered', '2022-06-26 23:31:30', '2022-07-04 23:31:42'),
(5, 3, 1, 5, 3, 'Rafi', 'Rafi@gmail.com', '01629659542', 1230, 'House 7, Road 10, Sector 1 Floor 3A', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 38434.00, NULL, 'STA75470013', '27 June 2022', 'June', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'shipped', '2022-06-27 04:25:22', '2022-07-03 04:18:05'),
(6, 3, 1, 5, 3, 'Rafi', 'Rafi@gmail.com', '01629659542', 1230, 'House 7, Road 10, Sector 1 Floor 3A', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 38434.00, NULL, 'STA73833425', '27 June 2022', 'June', '2022', NULL, NULL, NULL, NULL, NULL, NULL, '01 July 2022', '2', 'Broken', 'delivered', '2022-06-27 04:26:05', '2022-07-04 23:32:04'),
(7, 3, 1, 5, 6, 'ahnaf', 'janr@gmail.com', '01964870827', 1212, 'bjhvcas', 'Cash On Delivery', 'Cash On Delivery', NULL, 'TK', 1600.00, NULL, 'STA10738816', '02 July 2022', 'July', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'processing', '2022-07-02 04:37:50', '2022-07-04 23:30:28'),
(8, 3, 1, 5, 6, 'tasdik', 'tasdik@gmail.com', '01964870821', 1212, 'address', 'Cash On Delivery', 'Cash On Delivery', NULL, 'TK', 2400.00, NULL, 'STA14732254', '05 July 2022', 'July', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'pending', '2022-07-04 23:43:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 'red', 'Midium', '1', 12000.00, '2022-06-26 05:49:46', NULL),
(2, 1, 6, 'red', 'Small', '1', 1000.00, '2022-06-26 05:49:46', NULL),
(3, 2, 7, 'Amet', 'Midium', '3', 1000.00, '2022-06-26 22:22:56', NULL),
(4, 2, 6, 'Black', 'Large', '2', 1000.00, '2022-06-26 22:22:56', NULL),
(5, 3, 7, 'red', 'Small', '1', 1000.00, '2022-06-26 22:58:57', NULL),
(6, 3, 8, 'red', 'Small', '2', 12000.00, '2022-06-26 22:58:57', NULL),
(7, 4, 7, 'red', 'Small', '1', 1000.00, '2022-06-26 23:31:30', NULL),
(8, 5, 8, 'red', 'Small', '4', 12000.00, '2022-06-27 04:25:23', NULL),
(9, 6, 8, 'red', 'Small', '4', 12000.00, '2022-06-27 04:26:05', NULL),
(10, 7, 7, 'red', 'Small', '1', 1000.00, '2022-07-02 04:37:50', NULL),
(11, 7, 6, 'Red', 'Midium', '1', 1000.00, '2022-07-02 04:37:50', NULL),
(12, 8, 6, 'red', 'Small', '1', 1000.00, '2022-07-04 23:43:43', NULL),
(13, 8, 7, 'red', 'Small', '2', 1000.00, '2022-07-04 23:43:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thambnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new` int(11) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `best_seller` int(11) DEFAULT NULL,
  `combo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `product_name`, `product_code`, `product_qty`, `product_tags`, `product_size`, `product_color`, `selling_price`, `discount_price`, `short_descp`, `long_descp`, `product_thambnail`, `new`, `sale`, `best_seller`, `combo`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 5, 6, 'lock', 'W310', '12', 'lock', 'Small,Midium', 'red,Black', '15000', '1000', 'good', 'best locks yes', 'upload/products/thumbnail/1735512591007935.jpg', NULL, 1, NULL, '1', 1, '2022-06-13 03:49:44', NULL),
(2, 6, 6, 8, 'lock', 'W310', '12', 'lock', 'Small,Midium', 'red,Black', '15000', '1000', 'good', 'best locks yes', 'upload/products/thumbnail/1735513071962398.jpg', NULL, 1, NULL, '1', 1, '2022-06-13 03:57:22', NULL),
(3, 5, 6, 7, 'mehdiiiii', 'j21', '1', 'mehdi', 'Large', 'white', '15000', '12000', 'sexy', 'sexxyyyyyyyyyyyyyy', 'upload/products/thumbnail/1735513598766184.jpg', 1, NULL, NULL, '1', 1, '2022-06-13 04:05:45', NULL),
(4, 1, 1, 3, 'Iphone x', 'x230', '10', 'iphone', 'Small,Midium,Large', 'red,Black', '50000', '100', 'iphone x', 'iphone xxxxxx', 'upload/products/thumbnail/1735516373412522.jpg', 1, NULL, NULL, '1', 1, '2022-06-13 04:49:51', NULL),
(5, 4, 1, 3, 'ifazzz', 'j21', '1', 'Lorem', 'Midium,Large', 'red,Black', '2000', '12000', 'asassa', 'asassasasaasasasassaa', 'upload/products/thumbnail/1735581719279799.jpg', 1, NULL, NULL, NULL, 1, '2022-06-13 22:08:30', NULL),
(6, 5, 5, 6, 'tasdiik', 'W310', '10', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'red,Black,Amet', '15000', '1000', 'asas', 'saasas', 'upload/products/thumbnail/1735582540113310.jpg', 1, NULL, NULL, '1', 1, '2022-06-13 22:21:32', '2022-07-03 23:31:06'),
(7, 3, 5, 6, 'locksss', 'x230', '9', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'red,Black,Amet', '2000', '1000', 'sasa', 'assa', 'upload/products/thumbnail/1735600019737880.png', 1, NULL, NULL, NULL, 1, '2022-06-14 02:59:24', '2022-07-03 23:31:06'),
(8, 5, 6, 8, 'Iphone x', 'sa', '1', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'red,Black,Amet', '1', '12000', 'good lock for your home,makes sense for human, none of your business,thanks', 'assaasas', 'upload/products/thumbnail/1735601078347760.png', NULL, 1, 1, NULL, 1, '2022-06-14 03:16:12', NULL),
(9, 1, 1, 3, 'Tonar', 't20', '1', 'Lorem', '', 'red,Black', '15000', '1', 'sexy,lomba shomba, big dick', 'longgggggggggggggg diccckkkkkkkkkkkkkk', 'upload/products/thumbnail/1735606312315568.jpg', 1, NULL, NULL, NULL, 1, '2022-06-14 04:39:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `comment`, `summary`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 3, 'Sexy jinish bhai', 'Sexy', '1', '2022-07-02 02:57:33', '2022-07-02 04:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_keyword`, `meta_description`, `google_analytics`, `created_at`, `updated_at`) VALUES
(1, 'STATA IT Limited', 'Tasdik', 'Smart Accessories', 'meta_description', 'google_analytics', NULL, '2022-07-01 05:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('vnYfdRSzmfXE1xhADbsgVPbDN7tw8VAkeMQeGLGa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkhTd0xKMGhHRHdLU1Rmd2ZONkk1NmxnR2VRSjNvNUFIZjJlWENIQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdWJjYXRlZ29yeS9wcm9kdWN0LzYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1658037554);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Gazipur', '2022-06-20 03:37:41', NULL),
(2, 2, 'nitun bazaar', '2022-06-20 03:38:09', NULL),
(3, 3, 'kulaura', '2022-06-21 00:20:08', NULL),
(4, 3, 'moulobibazaar', '2022-06-21 00:20:28', NULL),
(5, 1, 'uttara', '2022-06-21 00:20:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', '2022-06-20 03:26:57', NULL),
(2, 'Chittagong', '2022-06-20 03:29:48', NULL),
(3, 'Sylhet', '2022-06-20 03:30:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'middle', '2022-06-21 00:34:15', NULL),
(2, 2, 4, 'center', '2022-06-23 00:34:42', NULL),
(3, 3, 5, 'center', '2022-06-23 00:40:05', NULL),
(4, 3, 5, 'middle', '2022-06-23 00:40:32', NULL),
(5, 1, 3, 'center', '2022-06-23 00:40:56', NULL),
(6, 2, 5, 'middle', '2022-06-23 00:42:57', NULL),
(7, 2, 3, 'middle', '2022-06-23 00:43:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `twitter`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1737055991367225.png', '01964870827', '01864870829', 'fahmidh26@gmail.com', 'STATA', 'bandarban', NULL, NULL, NULL, NULL, NULL, '2022-06-30 04:41:25');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subTitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startingPrice` int(11) DEFAULT NULL,
  `slideStyle` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_img`, `title`, `subTitle`, `startingPrice`, `slideStyle`, `status`, `created_at`, `updated_at`) VALUES
(1, 'upload/slider/1735328267097520.jpeg', 'Hero', 'Hero', 122, 2, 1, NULL, NULL),
(2, 'upload/slider/1735328336524398.jpg', 'Mehdi', 'Mehdi', 123, 1, 1, NULL, NULL),
(3, 'upload/slider/1735330559744516.jpg', 'speefi', 'speefi', NULL, 1, 1, NULL, NULL),
(4, 'upload/slider/1735330727496738.jpg', 'speefii', 'speefii', NULL, 3, 1, NULL, NULL),
(5, 'upload/slider/1735331224040234.jpg', 'fahmid', 'Come get me', 122, 2, 1, NULL, NULL),
(6, 'upload/slider/1735491511131619.png', 'ifaz', 'Come get me', 123, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 2, 'stata', '2022-06-12 02:22:12', NULL),
(2, 2, 'stataaa', '2022-06-12 02:22:30', NULL),
(3, 1, 'stataaa', '2022-06-12 02:22:48', NULL),
(4, 3, 'fahmid', '2022-06-12 02:23:26', NULL),
(5, 4, 'shundor', '2022-06-12 03:34:17', NULL),
(6, 5, 'shundor', '2022-06-12 03:49:02', NULL),
(7, 6, 'pinkii', '2022-06-12 22:19:30', NULL),
(8, 6, 'amira', '2022-06-12 22:19:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `last_seen`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Ifaz', 'ifazalam69@gmail.com', NULL, '$2y$10$zbaMnaCSsUMwiB4Ef5CYWux1LNWUzwd60BbAU7FKGEzE1kIBKXJ0a', NULL, NULL, NULL, NULL, 'QQsaEoF652Wvu8bZqfR77zf4KDDu3sORViDoY9Yz08ugwH83RUIHYdB23Cva', NULL, 'profile-photos/YAizxA3b4LKQKrt5yu5hSX8EVbQdBKrNaP8xVa6G.jpg', '2022-06-04 21:56:29', '2022-06-05 03:10:50'),
(2, 'fahmid', 'fahmidh26@gmail.com', NULL, 'fahmidh26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'user', 'user@gmail.com', NULL, '$2y$10$azWfzxHXYTK81VozzglKoOlk6DRwzvgDBr5MO4Qg9I978/HP9BtHa', '2022-07-13 09:09:49', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 15:49:31', '2022-07-13 03:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(8, 3, 8, '2022-06-19 22:51:18', NULL),
(9, 3, 7, '2022-06-19 22:51:21', NULL),
(10, 3, 9, '2022-06-23 03:37:34', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_states`
--
ALTER TABLE `ship_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
