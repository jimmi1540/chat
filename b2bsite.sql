-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 04:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b2bsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `outlet_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `color`, `size`, `quantity`, `outlet_id`, `created_at`, `updated_at`) VALUES
(23, 2, 3, 'red', 'small', '1', ' ', '2023-03-09 05:27:02', '2023-03-20 10:41:52'),
(25, 2, 4, 'Product', 'small.large', '1', ' ', '2023-03-14 05:12:00', '2023-03-20 07:57:41'),
(27, 2, 7, 'Black', 'large', '1', ' ', '2023-03-20 06:13:25', '2023-03-20 08:02:43'),
(28, 2, 2, 'Black', 'small', '1', ' ', '2023-03-20 07:12:30', '2023-03-20 07:17:01'),
(29, 2, 1, 'Black', 'small', '1', ' ', '2023-03-20 07:23:13', '2023-03-20 07:28:04'),
(30, 2, 12, 'blue', '15', '1', ' ', '2023-03-20 08:14:05', '2023-03-20 08:19:15'),
(31, 2, 16, 'Brown', 'medium', '1', ' ', '2023-03-20 08:32:06', '2023-03-20 08:36:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_img` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `sub_category` int(11) NOT NULL,
  `sub_category_of` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_img`, `category_name`, `sub_category`, `sub_category_of`, `created_at`, `updated_at`) VALUES
(1, 'laptop.jpg', 'Laptop', 0, '0', '2023-02-28 11:05:57', '2023-02-28 11:05:57'),
(2, 'mobile.jpg', 'Mobile', 0, '0', '2023-02-28 11:06:08', '2023-02-28 11:06:08'),
(6, 'a2.jpg', 'Product', 1, '1', '2023-02-28 12:09:54', '2023-02-28 12:09:54'),
(7, 'mobile.jpg', 'clothes', 1, '1', '2023-03-01 05:42:18', '2023-03-01 05:42:18'),
(8, 'chair.jpg', 'chair', 1, '1', '2023-03-01 05:56:27', '2023-03-01 05:56:27'),
(9, 'shoes.jpg', 'shoes', 0, '0', '2023-03-01 06:04:41', '2023-03-01 06:04:41'),
(11, 'hee;s.jpg', 'Heels', 0, '0', '2023-03-01 06:29:36', '2023-03-01 06:29:36'),
(12, 'bags.jpg', 'bags', 0, '0', '2023-03-01 06:30:24', '2023-03-01 06:30:24'),
(13, 'wallet.jpg', 'wallet', 0, '0', '2023-03-01 06:33:02', '2023-03-01 06:33:02'),
(14, 'tables.jpg', 'tables', 0, '0', '2023-03-01 06:34:58', '2023-03-01 06:34:58'),
(15, 'cup.jpg', 'cups', 0, '0', '2023-03-01 06:41:34', '2023-03-01 06:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(2, 'Åland Islands', 'AX', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(3, 'Albania', 'AL', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(4, 'Algeria', 'DZ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(5, 'American Samoa', 'AS', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(6, 'Andorra', 'AD', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(7, 'Angola', 'AO', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(8, 'Anguilla', 'AI', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(9, 'Antarctica', 'AQ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(10, 'Antigua and Barbuda', 'AG', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(11, 'Argentina', 'AR', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(12, 'Armenia', 'AM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(13, 'Aruba', 'AW', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(14, 'Australia', 'AU', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(15, 'Austria', 'AT', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(16, 'Azerbaijan', 'AZ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(17, 'Bahamas', 'BS', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(18, 'Bahrain', 'BH', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(19, 'Bangladesh', 'BD', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(20, 'Barbados', 'BB', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(21, 'Belarus', 'BY', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(22, 'Belgium', 'BE', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(23, 'Belize', 'BZ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(24, 'Benin', 'BJ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(25, 'Bermuda', 'BM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(26, 'Bhutan', 'BT', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(27, 'Bolivia, Plurinational State of', 'BO', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(29, 'Bosnia and Herzegovina', 'BA', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(30, 'Botswana', 'BW', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(31, 'Bouvet Island', 'BV', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(32, 'Brazil', 'BR', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(33, 'British Indian Ocean Territory', 'IO', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(34, 'Brunei Darussalam', 'BN', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(35, 'Bulgaria', 'BG', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(36, 'Burkina Faso', 'BF', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(37, 'Burundi', 'BI', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(38, 'Cambodia', 'KH', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(39, 'Cameroon', 'CM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(40, 'Canada', 'CA', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(41, 'Cape Verde', 'CV', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(42, 'Cayman Islands', 'KY', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(43, 'Central African Republic', 'CF', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(44, 'Chad', 'TD', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(45, 'Chile', 'CL', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(46, 'China', 'CN', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(47, 'Christmas Island', 'CX', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(48, 'Cocos (Keeling) Islands', 'CC', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(49, 'Colombia', 'CO', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(50, 'Comoros', 'KM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(51, 'Congo', 'CG', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(52, 'Congo, the Democratic Republic of the', 'CD', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(53, 'Cook Islands', 'CK', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(54, 'Costa Rica', 'CR', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(55, 'Côte d\'Ivoire', 'CI', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(56, 'Croatia', 'HR', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(57, 'Cuba', 'CU', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(58, 'Curaçao', 'CW', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(59, 'Cyprus', 'CY', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(60, 'Czech Republic', 'CZ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(61, 'Denmark', 'DK', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(62, 'Djibouti', 'DJ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(63, 'Dominica', 'DM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(64, 'Dominican Republic', 'DO', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(65, 'Ecuador', 'EC', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(66, 'Egypt', 'EG', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(67, 'El Salvador', 'SV', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(68, 'Equatorial Guinea', 'GQ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(69, 'Eritrea', 'ER', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(70, 'Estonia', 'EE', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(71, 'Ethiopia', 'ET', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(72, 'Falkland Islands (Malvinas)', 'FK', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(73, 'Faroe Islands', 'FO', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(74, 'Fiji', 'FJ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(75, 'Finland', 'FI', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(76, 'France', 'FR', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(77, 'French Guiana', 'GF', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(78, 'French Polynesia', 'PF', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(79, 'French Southern Territories', 'TF', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(80, 'Gabon', 'GA', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(81, 'Gambia', 'GM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(82, 'Georgia', 'GE', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(83, 'Germany', 'DE', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(84, 'Ghana', 'GH', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(85, 'Gibraltar', 'GI', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(86, 'Greece', 'GR', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(87, 'Greenland', 'GL', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(88, 'Grenada', 'GD', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(89, 'Guadeloupe', 'GP', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(90, 'Guam', 'GU', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(91, 'Guatemala', 'GT', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(92, 'Guernsey', 'GG', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(93, 'Guinea', 'GN', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(94, 'Guinea-Bissau', 'GW', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(95, 'Guyana', 'GY', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(96, 'Haiti', 'HT', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(97, 'Heard Island and McDonald Mcdonald Islands', 'HM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(98, 'Holy See (Vatican City State)', 'VA', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(99, 'Honduras', 'HN', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(100, 'Hong Kong', 'HK', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(101, 'Hungary', 'HU', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(102, 'Iceland', 'IS', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(103, 'India', 'IN', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(104, 'Indonesia', 'ID', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(105, 'Iran, Islamic Republic of', 'IR', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(106, 'Iraq', 'IQ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(107, 'Ireland', 'IE', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(108, 'Isle of Man', 'IM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(109, 'Israel', 'IL', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(110, 'Italy', 'IT', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(111, 'Jamaica', 'JM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(112, 'Japan', 'JP', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(113, 'Jersey', 'JE', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(114, 'Jordan', 'JO', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(115, 'Kazakhstan', 'KZ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(116, 'Kenya', 'KE', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(117, 'Kiribati', 'KI', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(118, 'Korea, Democratic People\'s Republic of', 'KP', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(119, 'Korea, Republic of', 'KR', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(120, 'Kuwait', 'KW', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(121, 'Kyrgyzstan', 'KG', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(122, 'Lao People\'s Democratic Republic', 'LA', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(123, 'Latvia', 'LV', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(124, 'Lebanon', 'LB', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(125, 'Lesotho', 'LS', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(126, 'Liberia', 'LR', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(127, 'Libya', 'LY', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(128, 'Liechtenstein', 'LI', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(129, 'Lithuania', 'LT', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(130, 'Luxembourg', 'LU', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(131, 'Macao', 'MO', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(132, 'Macedonia, the Former Yugoslav Republic of', 'MK', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(133, 'Madagascar', 'MG', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(134, 'Malawi', 'MW', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(135, 'Malaysia', 'MY', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(136, 'Maldives', 'MV', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(137, 'Mali', 'ML', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(138, 'Malta', 'MT', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(139, 'Marshall Islands', 'MH', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(140, 'Martinique', 'MQ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(141, 'Mauritania', 'MR', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(142, 'Mauritius', 'MU', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(143, 'Mayotte', 'YT', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(144, 'Mexico', 'MX', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(145, 'Micronesia, Federated States of', 'FM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(146, 'Moldova, Republic of', 'MD', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(147, 'Monaco', 'MC', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(148, 'Mongolia', 'MN', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(149, 'Montenegro', 'ME', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(150, 'Montserrat', 'MS', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(151, 'Morocco', 'MA', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(152, 'Mozambique', 'MZ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(153, 'Myanmar', 'MM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(154, 'Namibia', 'NA', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(155, 'Nauru', 'NR', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(156, 'Nepal', 'NP', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(157, 'Netherlands', 'NL', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(158, 'New Caledonia', 'NC', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(159, 'New Zealand', 'NZ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(160, 'Nicaragua', 'NI', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(161, 'Niger', 'NE', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(162, 'Nigeria', 'NG', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(163, 'Niue', 'NU', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(164, 'Norfolk Island', 'NF', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(165, 'Northern Mariana Islands', 'MP', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(166, 'Norway', 'NO', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(167, 'Oman', 'OM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(168, 'Pakistan', 'PK', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(169, 'Palau', 'PW', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(170, 'Palestine, State of', 'PS', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(171, 'Panama', 'PA', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(172, 'Papua New Guinea', 'PG', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(173, 'Paraguay', 'PY', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(174, 'Peru', 'PE', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(175, 'Philippines', 'PH', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(176, 'Pitcairn', 'PN', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(177, 'Poland', 'PL', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(178, 'Portugal', 'PT', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(179, 'Puerto Rico', 'PR', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(180, 'Qatar', 'QA', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(181, 'Réunion', 'RE', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(182, 'Romania', 'RO', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(183, 'Russian Federation', 'RU', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(184, 'Rwanda', 'RW', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(185, 'Saint Barthélemy', 'BL', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(187, 'Saint Kitts and Nevis', 'KN', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(188, 'Saint Lucia', 'LC', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(189, 'Saint Martin (French part)', 'MF', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(190, 'Saint Pierre and Miquelon', 'PM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(191, 'Saint Vincent and the Grenadines', 'VC', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(192, 'Samoa', 'WS', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(193, 'San Marino', 'SM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(194, 'Sao Tome and Principe', 'ST', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(195, 'Saudi Arabia', 'SA', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(196, 'Senegal', 'SN', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(197, 'Serbia', 'RS', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(198, 'Seychelles', 'SC', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(199, 'Sierra Leone', 'SL', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(200, 'Singapore', 'SG', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(201, 'Sint Maarten (Dutch part)', 'SX', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(202, 'Slovakia', 'SK', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(203, 'Slovenia', 'SI', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(204, 'Solomon Islands', 'SB', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(205, 'Somalia', 'SO', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(206, 'South Africa', 'ZA', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(207, 'South Georgia and the South Sandwich Islands', 'GS', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(208, 'South Sudan', 'SS', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(209, 'Spain', 'ES', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(210, 'Sri Lanka', 'LK', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(211, 'Sudan', 'SD', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(212, 'Suriname', 'SR', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(213, 'Svalbard and Jan Mayen', 'SJ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(214, 'Swaziland', 'SZ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(215, 'Sweden', 'SE', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(216, 'Switzerland', 'CH', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(217, 'Syrian Arab Republic', 'SY', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(218, 'Taiwan', 'TW', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(219, 'Tajikistan', 'TJ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(220, 'Tanzania, United Republic of', 'TZ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(221, 'Thailand', 'TH', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(222, 'Timor-Leste', 'TL', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(223, 'Togo', 'TG', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(224, 'Tokelau', 'TK', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(225, 'Tonga', 'TO', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(226, 'Trinidad and Tobago', 'TT', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(227, 'Tunisia', 'TN', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(228, 'Turkey', 'TR', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(229, 'Turkmenistan', 'TM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(230, 'Turks and Caicos Islands', 'TC', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(231, 'Tuvalu', 'TV', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(232, 'Uganda', 'UG', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(233, 'Ukraine', 'UA', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(234, 'United Arab Emirates', 'AE', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(235, 'United Kingdom', 'GB', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(236, 'United States', 'US', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(237, 'United States Minor Outlying Islands', 'UM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(238, 'Uruguay', 'UY', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(239, 'Uzbekistan', 'UZ', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(240, 'Vanuatu', 'VU', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(241, 'Venezuela, Bolivarian Republic of', 'VE', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(242, 'Viet Nam', 'VN', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(243, 'Virgin Islands, British', 'VG', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(244, 'Virgin Islands, U.S.', 'VI', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(245, 'Wallis and Futuna', 'WF', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(246, 'Western Sahara', 'EH', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(247, 'Yemen', 'YE', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(248, 'Zambia', 'ZM', '2023-02-24 07:33:07', '2023-02-24 07:33:07'),
(249, 'Zimbabwe', 'ZW', '2023-02-24 07:33:07', '2023-02-24 07:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `outlet_id` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `user_id`, `product_id`, `outlet_id`, `created_at`, `updated_at`) VALUES
(4, 3, 3, ' ', '2023-03-03 06:03:06', '2023-03-03 06:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `featured_products`
--

CREATE TABLE `featured_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expired_date` timestamp NULL DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `dealed` int(11) DEFAULT NULL,
  `weeks` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_Did` int(11) DEFAULT NULL,
  `dated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 32, 'C:\\xampp\\tmp\\phpAE99.tmp', '2023-02-27 07:48:26', '2023-02-27 07:48:26'),
(2, 33, 'C:\\xampp\\tmp\\php9020.tmp', '2023-02-27 07:49:23', '2023-02-27 07:49:23'),
(3, 35, NULL, '2023-02-27 07:50:52', '2023-02-27 07:50:52'),
(4, 36, NULL, '2023-02-27 07:51:02', '2023-02-27 07:51:02'),
(5, 37, 'C:\\xampp\\tmp\\php6448.tmp', '2023-02-27 07:51:23', '2023-02-27 07:51:23'),
(6, 44, 'C:\\xampp\\tmp\\phpC17.tmp', '2023-02-27 10:10:49', '2023-02-27 10:10:49'),
(7, 45, 'C:\\xampp\\tmp\\php7A6.tmp', '2023-02-27 10:17:21', '2023-02-27 10:17:21'),
(8, 47, 'C:\\fakepath\\a2.jpg', '2023-02-27 10:26:04', '2023-02-27 10:26:04'),
(9, 48, 'C:\\fakepath\\a2.jpg', '2023-02-27 10:27:29', '2023-02-27 10:27:29'),
(10, 49, 'C:\\fakepath\\a2.jpg', '2023-02-27 10:31:10', '2023-02-27 10:31:10'),
(11, 56, 'C:\\xampp\\tmp\\phpCB2E.tmp', '2023-02-27 10:56:25', '2023-02-27 10:56:25'),
(12, 58, 'C:\\xampp\\tmp\\php272C.tmp', '2023-02-27 11:00:05', '2023-02-27 11:00:05'),
(13, 62, 'C:\\xampp\\tmp\\php106E.tmp', '2023-02-27 11:17:28', '2023-02-27 11:17:28'),
(14, 82, 'C:\\xampp\\tmp\\php9AF8.tmp', '2023-02-27 13:12:47', '2023-02-27 13:12:47'),
(15, 84, 'C:\\xampp\\tmp\\php89BF.tmp', '2023-02-27 13:13:46', '2023-02-27 13:13:46'),
(16, 85, 'C:\\xampp\\tmp\\php6664.tmp', '2023-02-27 13:14:43', '2023-02-27 13:14:43'),
(17, 86, 'C:\\xampp\\tmp\\phpBCB3.tmp', '2023-02-27 13:15:05', '2023-02-27 13:15:05'),
(18, 87, 'C:\\xampp\\tmp\\phpF028.tmp', '2023-02-27 13:15:18', '2023-02-27 13:15:18'),
(19, 94, 'C:\\xampp\\tmp\\phpFAE7.tmp', '2023-02-27 13:27:21', '2023-02-27 13:27:21'),
(20, 95, 'C:\\xampp\\tmp\\php2A35.tmp', '2023-02-27 13:27:33', '2023-02-27 13:27:33'),
(21, 96, 'C:\\xampp\\tmp\\phpB000.tmp', '2023-02-27 13:28:08', '2023-02-27 13:28:08'),
(22, 97, 'C:\\xampp\\tmp\\phpECF6.tmp', '2023-02-28 04:51:21', '2023-02-28 04:51:21'),
(23, 98, 'C:\\xampp\\tmp\\php2DC4.tmp', '2023-02-28 04:52:43', '2023-02-28 04:52:43'),
(24, 99, 'C:\\xampp\\tmp\\php5FCD.tmp', '2023-02-28 04:54:01', '2023-02-28 04:54:01'),
(25, 100, 'C:\\xampp\\tmp\\php818A.tmp', '2023-02-28 04:55:16', '2023-02-28 04:55:16'),
(26, 101, 'C:\\xampp\\tmp\\php2BEB.tmp', '2023-02-28 04:58:10', '2023-02-28 04:58:10'),
(27, 102, 'C:\\xampp\\tmp\\php8EAD.tmp', '2023-02-28 04:58:36', '2023-02-28 04:58:36'),
(28, 103, 'C:\\xampp\\tmp\\php83F6.tmp', '2023-02-28 05:00:44', '2023-02-28 05:00:44'),
(29, 104, 'C:\\xampp\\tmp\\php8AEA.tmp', '2023-02-28 05:05:08', '2023-02-28 05:05:08'),
(30, 105, 'a1.jpg', '2023-02-28 05:12:37', '2023-02-28 05:12:37'),
(31, 1, 'a2.jpg', '2023-02-28 06:20:25', '2023-02-28 06:20:25'),
(32, 2, 'mobile.jpg', '2023-02-28 08:26:06', '2023-02-28 08:26:06'),
(33, 3, 'laptop.jpg', '2023-02-28 08:27:15', '2023-02-28 08:27:15'),
(34, 4, 'prod.PNG', '2023-02-28 11:08:50', '2023-02-28 11:08:50'),
(35, 5, 'lap2.jpg', '2023-03-02 07:47:29', '2023-03-02 07:47:29'),
(36, 6, 'lap2.jpg', '2023-03-02 07:48:03', '2023-03-02 07:48:03'),
(37, 7, 'lap2.jpg', '2023-03-02 07:48:58', '2023-03-02 07:48:58'),
(38, 8, 'a2.jpg', '2023-03-02 07:49:54', '2023-03-02 07:49:54'),
(39, 9, 'a2.jpg', '2023-03-02 07:51:26', '2023-03-02 07:51:26'),
(40, 10, 'a1.jpg', '2023-03-10 05:15:27', '2023-03-10 05:15:27'),
(41, 11, 'a1.jpg', '2023-03-10 05:16:05', '2023-03-10 05:16:05'),
(42, 12, 'shirtmen.jpg', '2023-03-10 05:21:35', '2023-03-10 05:21:35'),
(43, 13, 'shirtmen.jpg', '2023-03-10 05:22:13', '2023-03-10 05:22:13'),
(44, 14, 'final.jpg', '2023-03-10 05:24:24', '2023-03-10 05:24:24'),
(45, 15, 'sales.jpg', '2023-03-10 05:26:23', '2023-03-10 05:26:23'),
(46, 16, 'tables.jpg', '2023-03-13 08:45:19', '2023-03-13 08:45:19'),
(47, 17, 'wallet.jpg', '2023-03-13 09:34:16', '2023-03-13 09:34:16'),
(48, 18, 'a2.jpg', '2023-03-13 10:35:10', '2023-03-13 10:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2023_02_01_121000_create_users_table', 1),
(2, '2023_02_02_065142_countries', 1),
(3, '2023_02_06_094936_products', 1),
(4, '2023_02_07_045312_orders', 1),
(5, '2023_02_07_083155_order_detail', 1),
(6, '2023_02_07_123403_feedback', 1),
(7, '2023_02_08_054932_categories', 1),
(8, '2023_02_08_092031_wishlist', 1),
(9, '2023_02_08_100320_favourite', 1),
(10, '2023_02_09_073813_featured_products', 1),
(11, '2023_02_10_070546_spec_image', 1),
(12, '2023_02_13_045312_images', 1),
(13, '2023_02_27_073145_create_images_table', 2),
(14, '2023_02_27_074242_create_images_table', 3),
(15, '2023_03_02_095215_cart', 4),
(16, '2023_03_06_045420_add_new_columns', 5),
(17, '2023_03_06_045702_add_new_columns', 6),
(18, '2023_03_13_085816_add_address_to_users', 7),
(19, '2023_03_13_090034_add_address_to_users', 8),
(20, '2023_03_16_101459_create_user_chats_table', 9),
(21, '2023_03_16_104832_create_user_chats_table', 10),
(22, '2023_03_16_105512_create_user_chats_table', 11),
(23, '2023_03_21_085333_create_user_chats_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `bid_id` varchar(255) DEFAULT '0',
  `total_amt` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'processing',
  `order_received` varchar(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `user_id`, `shipping_address`, `full_name`, `email`, `phone`, `bid_id`, `total_amt`, `order_status`, `order_received`, `created_at`, `updated_at`) VALUES
(1, '2023-03-14 11:26:09', 3, 'Pakistan', 'Hamza', 'hamza123@gmail.com', '12323434235325', '0', '250000', 'Processing', NULL, '2023-03-08 05:00:55', '2023-03-08 05:00:55'),
(2, '2023-03-08 05:00:55', 3, 'Pakistan', 'Hamza', 'hamza123@gmail.com', '12323434235325', '0', '493820', 'Processing', NULL, '2023-03-08 05:00:55', '2023-03-08 05:00:55'),
(3, '2023-03-14 11:26:12', 2, 'Pakistan', 'Hamza', 'hamza123@gmail.com', '12323434235325', '0', '100000', 'Processing', NULL, '2023-03-08 05:00:55', '2023-03-08 05:00:55'),
(4, '2023-03-14 11:26:25', 2, 'Pakistan', 'Hamza', 'hamza123@gmail.com', '12323434235325', '0', '400000', 'Processing', NULL, '2023-03-08 05:00:55', '2023-03-08 05:00:55'),
(5, '2023-03-14 11:26:16', 2, 'Pakistan', 'Hamza', 'hamza123@gmail.com', '12323434235325', '0', '12345', 'Processing', NULL, '2023-03-08 05:00:55', '2023-03-08 05:00:55'),
(6, '2023-03-14 11:26:21', 2, 'Pakistan', 'Hamza', 'hamza123@gmail.com', '123234', '0', '1234', 'Processing', NULL, '2023-03-13 11:57:49', '2023-03-13 11:57:49'),
(7, '2023-03-14 11:26:19', 2, 'Pakistan', 'Hamza', 'hamza123@gmail.com', '123234', '0', '1234', 'Processing', NULL, '2023-03-13 11:57:56', '2023-03-13 11:57:56'),
(8, '2023-03-14 11:44:39', 3, 'Pakistan', 'Hamza', 'hamza123@gmail.com', '123234', '0', '1200', 'Processing', NULL, '2023-03-14 11:44:39', '2023-03-14 11:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `Did` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `product_url` varchar(255) DEFAULT NULL,
  `total_price` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_amt` varchar(255) DEFAULT NULL,
  `shipping` int(11) DEFAULT NULL,
  `taxes` int(11) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `complain_status` int(11) DEFAULT NULL,
  `complaint_comment` varchar(255) DEFAULT NULL,
  `order_received` varchar(255) DEFAULT NULL,
  `reviewed` int(11) DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`Did`, `order_id`, `product_id`, `product_title`, `product_url`, `total_price`, `qty`, `color`, `size`, `user_id`, `product_amt`, `shipping`, `taxes`, `order_status`, `complain_status`, `complaint_comment`, `order_received`, `reviewed`, `order_date`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Mobile', '', '250000', 2, 'Black', 'small', 3, '125000', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-03-08 05:00:55', '2023-03-08 05:00:55', '2023-03-08 05:00:55'),
(2, 2, 3, 'laptop', '', '493820', 4, 'blue', 'medium', 3, '123455', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-03-08 05:00:55', '2023-03-08 05:00:55', '2023-03-08 05:00:55'),
(3, 3, 6, 'New Tab', '', '100000', 1, 'Black', 'small', 4, '100000', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-03-08 05:00:55', '2023-03-08 05:00:55', '2023-03-08 05:00:55'),
(4, 4, 7, 'New Tab', '', '400000', 4, 'Black', 'large', 2, '100000', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-03-08 05:00:55', '2023-03-08 05:00:55', '2023-03-08 05:00:55'),
(5, 5, 8, 'Laptop', '', '12345', 1, 'Black', '0', 2, '12345', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-03-08 05:00:55', '2023-03-08 05:00:55', '2023-03-08 05:00:55'),
(6, 6, 17, 'Bottle', '', '1234', 1, 'purple', 'small', 2, '1234', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-03-13 11:57:49', '2023-03-13 11:57:49', '2023-03-13 11:57:49'),
(7, 7, 17, 'Bottle', '', '1234', 1, 'purple', 'small', 2, '1234', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-03-13 11:57:56', '2023-03-13 11:57:56', '2023-03-13 11:57:56'),
(8, 8, 16, 'Table', '', '1200', 1, 'Brown', 'medium', 3, '1200', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-03-14 11:44:39', '2023-03-14 11:44:39', '2023-03-14 11:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_categoryid` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `auctionable` tinyint(4) DEFAULT NULL,
  `shipping_cost` varchar(255) DEFAULT NULL,
  `taxes` varchar(255) DEFAULT NULL,
  `starting_bid` varchar(255) DEFAULT NULL,
  `auction_exp_date` timestamp NULL DEFAULT NULL,
  `guest_list` varchar(255) DEFAULT '0',
  `likes` varchar(255) DEFAULT '0',
  `no_likes` varchar(255) DEFAULT '0',
  `wishlist` varchar(255) DEFAULT '',
  `wish_count` varchar(255) DEFAULT '0',
  `address` varchar(255) DEFAULT NULL,
  `coordinates` varchar(255) DEFAULT NULL,
  `delivery` varchar(255) DEFAULT NULL,
  `available_size` varchar(255) DEFAULT NULL,
  `available_color` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `warranty` int(11) DEFAULT NULL,
  `classified` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `listing_type` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `featured_status` int(11) DEFAULT NULL,
  `dealed_status` int(11) DEFAULT NULL,
  `featured_expired` timestamp NULL DEFAULT NULL,
  `featured_duration` int(11) DEFAULT NULL,
  `dealed` int(11) DEFAULT NULL,
  `dealed_expired` timestamp NULL DEFAULT NULL,
  `mark_as_sold` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `product_title`, `product_desc`, `category_id`, `sub_categoryid`, `group_id`, `price`, `quantity`, `auctionable`, `shipping_cost`, `taxes`, `starting_bid`, `auction_exp_date`, `guest_list`, `likes`, `no_likes`, `wishlist`, `wish_count`, `address`, `coordinates`, `delivery`, `available_size`, `available_color`, `brand`, `warranty`, `classified`, `condition`, `currency`, `listing_type`, `country`, `featured`, `featured_status`, `dealed_status`, `featured_expired`, `featured_duration`, `dealed`, `dealed_expired`, `mark_as_sold`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'wallet ', 'New Wallet In market', 1, 2, NULL, 1500, 5, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', '123 A block Rahim Town Lahore', NULL, 'yes', 'small', 'Black', 'Mug', 0, 0, 'new', 'usd', 'International', 'Azerbaijan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28 06:20:25', '2023-02-28 06:20:25'),
(2, 2, 'Mobile', 'Q mobile', 2, 1, NULL, 125000, 5, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', '123 A block ali town lahore', NULL, 'yes', 'small,medium', 'Black', 'Dne', 1, 0, 'slightly Used', 'usd', 'International', 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28 08:26:06', '2023-02-28 08:26:06'),
(3, 2, 'laptop', 'New Model', 1, 2, NULL, 123455, 5, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', 'saad', NULL, 'yes', 'small,medium', 'red,black,yellow,blue,purple', 'Mug', 0, 0, 'new', 'pkr', 'Local', 'Bahamas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28 08:27:15', '2023-02-28 08:27:15'),
(4, 2, 'mobile', 'sad', 1, 2, NULL, 3, 3, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', 'Mug', NULL, 'yes', 'small.large', 'Product', 'Mug', 0, 0, 'new', 'pkr', 'Local', 'Australia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28 11:08:50', '2023-02-28 11:08:50'),
(5, 3, 'New Tab', 'Tab', 1, 6, NULL, 100000, 5, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', '123 A block Ali town lahore', NULL, 'yes', 'small,large', 'Black', 'HP', 1, 0, 'new', 'usd', 'Local', 'Azerbaijan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-02 07:47:29', '2023-03-02 07:47:29'),
(6, 3, 'New Tab', 'Tab', 1, 6, NULL, 100000, 5, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', '123 A block Ali town lahore', NULL, 'yes', 'small,large', 'Black', 'HP', 1, 0, 'new', 'usd', 'Local', 'Azerbaijan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-02 07:48:03', '2023-03-02 07:48:03'),
(7, 3, 'New Tab', 'Tab', 1, 6, NULL, 100000, 5, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', '123 A block Ali town lahore', NULL, 'yes', 'small,large', 'Black', 'HP', 1, 0, 'new', 'usd', 'Local', 'Azerbaijan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-02 07:48:58', '2023-03-02 07:48:58'),
(8, 3, 'Laptop', 'sad', 1, 6, NULL, 12345, 5, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', '123 sfdsgg', NULL, 'yes', 'small,large', 'Black', 'Mug', 1, 0, 'new', 'pkr', 'Local', 'Afghanistan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-02 07:49:54', '2023-03-02 07:49:54'),
(9, 3, 'Mugddddd', 'sad', 1, 6, NULL, 6, 5, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', 'Mobile', NULL, 'yes', 'small,large', 'black', 'Mobile', 1, 0, 'new', 'pkr', 'Local', 'Bahrain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-02 07:51:26', '2023-03-02 07:51:26'),
(10, 3, 'shoes', 'New Leather SHoes', 1, 6, NULL, 1500, 2, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', 'A block Ali town Faisalabad', NULL, 'yes', 'small', 'red', 'Nike', 0, 0, 'slightly Used', 'pkr', 'Local', 'Austria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 05:15:27', '2023-03-10 05:15:27'),
(11, 3, 'shoes', 'New Leather SHoes', 1, 6, NULL, 1500, 2, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', 'A block Ali town Faisalabad', NULL, 'yes', 'small', 'red', 'Nike', 0, 0, 'slightly Used', 'pkr', 'Local', 'Austria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 05:16:05', '2023-03-10 05:16:05'),
(12, 3, 'Shirt', 'New SHirt', 1, 6, NULL, 5000, 5, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', 'Laptop', NULL, 'yes', '15', 'blue', 'chaki', 1, 0, 'new', 'pkr', 'Local', 'Azerbaijan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 05:21:35', '2023-03-10 05:21:35'),
(13, 3, 'Shirt', 'New SHirt', 1, 6, NULL, 5000, 5, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', 'Laptop', NULL, 'yes', '15', 'blue', 'chaki', 1, 0, 'new', 'pkr', 'Local', 'Azerbaijan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 05:22:13', '2023-03-10 05:22:13'),
(14, 3, 'Mug', 'New Product', 1, 6, NULL, 1234, 5, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', 'Mobile', NULL, 'No', 'small', 'black', 'Product', 0, 0, 'new', 'pkr', 'Local', 'Åland Islands', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 05:24:24', '2023-03-10 05:24:24'),
(15, 3, 'new', 'new product', 1, 6, NULL, 1111, 2, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', 'Laptop', NULL, 'yes', 'small,medim,large', 'red,yellow', 'Hype', 0, 0, 'new', 'pkr', 'Local', 'Bahamas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 05:26:23', '2023-03-10 05:26:23'),
(16, 3, 'Table', 'We will buy this table', 1, 6, NULL, 1200, 1, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', '', NULL, 'yes', 'medium', 'Brown', 'Cutter Wood', 1, 0, 'new', 'usd', 'Local', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 08:45:19', '2023-03-13 08:45:19'),
(17, 4, 'Bottle', 'New Bottle', 1, 6, NULL, 1234, 1, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', '', NULL, 'yes', 'small', 'purple', 'ggaxa', 1, 0, 'new', 'pkr', 'Local', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 09:34:16', '2023-03-13 09:34:16'),
(18, 4, 'AC', 'AC', 1, 6, NULL, 123333, 1, 1, NULL, NULL, '0', '2023-01-01 00:00:00', '0', '0', '0', '', '0', '', NULL, 'yes', 'medium', 'black', 'Mobile', 1, 0, 'new', 'pkr', 'Local', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 10:35:10', '2023-03-13 10:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `spec_images`
--

CREATE TABLE `spec_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spec_images`
--

INSERT INTO `spec_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 10, 'a2.jpg', '2023-03-01 08:35:11', '2023-03-01 08:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `role_id` int(11) NOT NULL,
  `following` int(11) DEFAULT NULL,
  `followers` int(11) DEFAULT NULL,
  `following_id` int(11) DEFAULT NULL,
  `followers_id` int(11) DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `confirm_password`, `company_name`, `job_title`, `phone_number`, `address`, `country`, `user_type`, `is_active`, `role_id`, `following`, `followers`, `following_id`, `followers_id`, `device_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'jamshaid.younis1403034096@gmail.com', NULL, '$2y$10$VjmdyCP7DdIwK9CVZXbHkePn72bCO/s/9fMc01YJ.U2kXO3MgQzTu', '$2y$10$FeaQlaxorUz6Sl2xnUwSRuTWQncQ2UeKHD8xG4FDn55E6AgoY0Ti2', NULL, NULL, NULL, 'Hamza Town Faisalabad', NULL, 'user', 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-24 07:33:26', '2023-02-24 07:33:26'),
(2, 'jamshaid', 'jamshaid.younis140@gmail.com', NULL, '$2y$10$Kq3eFQkvUD95QCi4qFQmu.Zwg.aXuJ.DiF3cbI3W0MhmL6/Qn56fq', '$2y$10$cMFWxIatiUuiPLYHEdHESudbSNPKjVs5mreJPErU5xOga4wsoem4W', 'Tech step', 'Developer', '23232323322', 'Green tow lahore', 'Pakistan', 'Admin', 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-24 07:33:33', '2023-03-31 11:10:26'),
(3, 'Hamza', 'hamza123@gmail.com', NULL, '$2y$10$Kq3eFQkvUD95QCi4qFQmu.Zwg.aXuJ.DiF3cbI3W0MhmL6/Qn56fq', '$2y$10$LV6ngLXVe98U3qn4LbZVau7VitKzsnvKXd8SATq1crBn4hBYODdxi', 'Express', 'Manager', '123234', 'Johar town lahre', 'Pakistan', 'Seller', 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28 12:52:19', '2023-02-28 12:52:19'),
(4, 'saim', 'saim123@gmail.com', NULL, '$2y$10$GMoqom6U2VPX784P8LGiFuwGTp/en6PBIJACY7H1qYHAwJ/1gBSP6', '$2y$10$D4Ecf9qirSFF.HR9V24mk.tkHTxUNOQmAB1rnP62np42MAHKRq4xe', 'Texel', 'Developer', '12132132323', 'Gulgashat multan', 'Pakistan', 'Seller', 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-01 04:54:34', '2023-03-01 04:54:34'),
(5, 'zain', 'zain123@gmail.com', NULL, '$2y$10$GMoqom6U2VPX784P8LGiFuwGTp/en6PBIJACY7H1qYHAwJ/1gBSP6', '$2y$10$A1ghPNP4g2wabk5kc8F...iu9yrAiQEBok6/3XgqI9R9VBYKooW1S', 'Texel', 'Laravel Developer', '+9234343434', 'Madina colony walton', 'Pakistan', 'seller', 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 09:26:53', '2023-03-13 09:26:53'),
(6, 'khalid shahzad', 'khalid123@gmail.com', NULL, '$2y$10$Y/tmNmEGh2QAdvLtvmp3/uxGWVLP8P9srYy1JPh7gFrbkBN5GbblW', '$2y$10$moCSRQLNrwoV65Uladu.e.bdIsne74.V5pQ9zKlFSfXVZ5HMbDR9u', NULL, NULL, NULL, 'Madina colony walton', NULL, 'user', 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 10:44:29', '2023-03-15 10:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_chats`
--

CREATE TABLE `user_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `receiver_email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_chats`
--

INSERT INTO `user_chats` (`id`, `sender_id`, `receiver_id`, `message`, `product_id`, `quantity`, `sender_name`, `sender_email`, `receiver_name`, `receiver_email`, `created_at`, `updated_at`) VALUES
(3, 2, 2, 'Kindly Share Details about laptop .\nwhat colors and sizes are available?\nThanks\n', 3, 2, 'Hamza', 'hamza123@gmail.com', 'jamshaid', 'jamshaid.younis140@gmail.com', '2023-03-21 09:11:01', '2023-03-21 09:11:01'),
(4, 2, 2, 'Kindly share price after discount and number of pieces available in your stock .\nThanks', 3, 1, 'Hamza', 'hamza123@gmail.com', 'jamshaid', 'jamshaid.younis140@gmail.com', '2023-03-21 09:13:11', '2023-03-21 09:13:11'),
(5, 3, 2, 'I want to buy this product\nKindly share price ?\nThanks', 3, 2, 'Hamza', 'hamza123@gmail.com', 'jamshaid', 'jamshaid.younis140@gmail.com', '2023-03-21 09:16:02', '2023-03-21 09:16:02'),
(6, 2, 3, 'Kindly Hamza tell me the accurate price of this product\nThanks', 7, 2, 'jamshaid', 'jamshaid.younis140@gmail.com', 'Hamza', 'hamza123@gmail.com', '2023-03-21 10:38:29', '2023-03-21 10:38:29'),
(8, 3, 2, 'Hi Jamshaid \nHow are you?\nI am waiting for your response\nThanks', 3, 1, 'Hamza', 'hamza123@gmail.com', 'jamshaid', 'jamshaid.younis140@gmail.com', '2023-03-21 12:57:58', '2023-03-21 12:57:58'),
(9, 2, 3, 'Go to hell hamza', 7, 1, 'jamshaid', 'jamshaid.younis140@gmail.com', 'Hamza', 'hamza123@gmail.com', '2023-03-21 13:04:16', '2023-03-21 13:04:16'),
(10, 2, 3, 'again', 7, 1, 'jamshaid', 'jamshaid.younis140@gmail.com', 'Hamza', 'hamza123@gmail.com', '2023-03-21 13:04:36', '2023-03-21 13:04:36'),
(11, 4, 3, 'Hi\nHow are you ?\nKindly share your contact number\nThanks', 7, 1, 'saim', 'saim123@gmail.com', 'Hamza', 'hamza123@gmail.com', '2023-03-22 06:16:03', '2023-03-22 06:16:03'),
(12, 2, 2, 'Done', 3, 1, 'jamshaid', 'jamshaid.younis140@gmail.com', 'jamshaid', 'jamshaid.younis140@gmail.com', '2023-03-22 09:57:45', '2023-03-22 09:57:45'),
(13, 2, 3, 'HELLO Faisal', 7, 1, 'jamshaid', 'jamshaid.younis140@gmail.com', 'Hamza', 'hamza123@gmail.com', '2023-03-26 16:12:52', '2023-03-26 16:12:52'),
(14, 2, 3, 'HELLO Faisal', 7, 1, 'jamshaid', 'jamshaid.younis140@gmail.com', 'Hamza', 'hamza123@gmail.com', '2023-03-26 16:20:14', '2023-03-26 16:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `outlet_id` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `outlet_id`, `created_at`, `updated_at`) VALUES
(12, 2, 1, ' ', '2023-03-02 06:38:23', '2023-03-02 06:38:23'),
(23, 3, 6, ' ', '2023-03-02 09:42:35', '2023-03-02 09:42:35'),
(26, 3, 2, ' ', '2023-03-07 13:05:02', '2023-03-07 13:05:02');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_products`
--
ALTER TABLE `featured_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
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
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`Did`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spec_images`
--
ALTER TABLE `spec_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_chats`
--
ALTER TABLE `user_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `featured_products`
--
ALTER TABLE `featured_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `Did` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `spec_images`
--
ALTER TABLE `spec_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_chats`
--
ALTER TABLE `user_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
