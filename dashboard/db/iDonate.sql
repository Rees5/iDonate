-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2024 at 07:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idonate`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `donation_report`
-- (See below for the actual view)
--
CREATE TABLE `donation_report` (
`donation_id` varchar(200)
,`userID` text
,`donation_status` varchar(200)
,`appointment_date` date
,`donation_venue` text
,`donation_type` text
,`transID` varchar(200)
,`quantity` text
,`bloodType` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `stock_by_group`
-- (See below for the actual view)
--
CREATE TABLE `stock_by_group` (
`userID` text
,`count` bigint(21)
,`donation_status` varchar(200)
,`appointment_date` date
,`donation_venue` text
,`donation_type` text
,`transID` varchar(200)
,`quantity` double
,`bloodType` text
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointments`
--

CREATE TABLE `tbl_appointments` (
  `aid` varchar(200) NOT NULL,
  `userid` text NOT NULL,
  `facility` text NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'pending',
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_appointments`
--

INSERT INTO `tbl_appointments` (`aid`, `userid`, `facility`, `status`, `date`) VALUES
('613054641ca24', '610683bfc6d2a', '4', 'donated', '2021-05-05'),
('668fadbc236b5', '610683bfc6d2a', '8', 'donated', '2024-07-11'),
('668fee4a67cbe', '668fed9ec8d33', '5', 'donated', '2024-07-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auth`
--

CREATE TABLE `tbl_auth` (
  `UUID` int(11) NOT NULL,
  `userID` varchar(200) NOT NULL,
  `privateKey` text NOT NULL,
  `password` text NOT NULL,
  `status` enum('active','disabled','deleted','') NOT NULL DEFAULT 'disabled',
  `dateCreated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_auth`
--

INSERT INTO `tbl_auth` (`UUID`, `userID`, `privateKey`, `password`, `status`, `dateCreated`) VALUES
(1, '610683bfc6d2a', 'b5de8ddd-eb5f-49e3-8c76-968253519841', '$2y$10$K1MB3vPDIl1PbaLGG3dPnuM0HbnacI8qN.3AADfQscJ806ri2Up8O', 'active', '2021-08-01 02:21:35'),
(2, '612cf30063e0b', '6e803a03-2fa3-4ed5-8841-80c8a8477782', '$2y$10$fOGuI7tPEWGboC726ZUp2.KPqUSYkEKjOHFGxnDcLTLEYnUyzhTyS', 'active', '2021-08-30 06:02:24'),
(3, '612d011d993b1', 'a490be87-1ecf-47e6-99c3-f8a4cd00e2e1', '$2y$10$1.ke/FU5tpwDfC50gT/vz.sQe81WbKzjcAzPKrbR0hE3RuoCiUQgO', 'disabled', '2021-08-30 07:02:37'),
(4, '612d01be80b7b', '78a79e98-8aa1-48ac-937a-bb3e433663b2', '$2y$10$4V/Qtmr3aLe1vloQQBswmefRBCnzrB.EUHOnB6/V8voto5hSt7fOq', 'disabled', '2021-08-30 07:05:18'),
(5, '612d05de0ad9d', '786c0fad-9a7d-44e9-98b6-8e1c357e1b71', '$2y$10$AokwzN8S3YKFqbypPRKDg.R5A8J5FHOSH8jyRVd0KVhovxYT0JM8.', 'disabled', '2021-08-30 07:22:54'),
(6, '612d065b498e0', '594d8754-b79b-4b13-95eb-25f0cefc2615', '$2y$10$CTGmetBTS1wrocEkJWW4vu1vKUxGzVWF.l53LoNsMGgltEUXVv5JW', 'disabled', '2021-08-30 07:24:59'),
(7, '612d0773bc698', '56024a69-d653-4a4d-b85e-f86d39b19a51', '$2y$10$fHLagU/Xo6ZQvJ7T/ekL.e5xrji/.b6Ow4ldwrp6t5x5LgfvcKD56', 'disabled', '2021-08-30 07:29:39'),
(8, '612d258fb180e', '86a5d74d-ecfa-43d2-a6b6-842fff8ba430', '$2y$10$kgOqmHuOYiaOjf7aT/o.1O2QKd4qEC8kiQaOoCWe8EA4.6s1D/9Xm', 'disabled', '2021-08-30 09:38:07'),
(9, '61302f130e836', 'f82bbf7a-ec86-402a-9337-efe2fe90fd9a', '$2y$10$EIU./rMHG2MceNMOWkG6cOJ2UrY2AS9TwkBoXRnHTDiZUC4WEMOWW', 'active', '2021-09-02 04:55:31'),
(10, '668fd58d5ec09', '5e80d7b9-a129-4d71-9656-0993ea10cfe8', '$2y$10$GBvSyMQwEhCFG63.Rz7BDe5XwT.NYPLWQL7IaLN6hxODv5FqhLiOy', 'active', '2024-07-11 03:52:29'),
(11, '668fed9ec8d33', 'edbae9d9-a148-4fb2-a91d-062e4bd4e8c3', '$2y$10$oEAuhi5Uo.JLQmev2xKuuORcT2ugCcUBEKvCmmQK7D2DCSRx/G45O', 'active', '2024-07-11 05:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_centers`
--

CREATE TABLE `tbl_centers` (
  `centerID` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `country` text NOT NULL,
  `cordinates` text NOT NULL,
  `type` enum('hospital','regional','satellite','camp') NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'active',
  `contact` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_centers`
--

INSERT INTO `tbl_centers` (`centerID`, `name`, `address`, `city`, `country`, `cordinates`, `type`, `status`, `contact`) VALUES
(1, 'Karen Hospital', '', 'Nairobi', 'Kenya', '-3.27,38', 'hospital', 'Deleted', '097837344'),
(2, 'Nairobi Hospital', 'Nairobi hospital, Ngong Road, Nairobi, Kenya', 'Nairobi', 'Kenya', '-1.2962359,36.8077602', 'hospital', 'disabled', '0978373449'),
(3, 'Kenyatta National Hospital', 'Kenyatta National Hospital, Hospital Road, Nairobi, Kenya', 'Nairobi', 'Kenya', '-1.301301,36.8069899', 'hospital', 'active', '07345678933'),
(4, 'Karen Hospital', 'Karen Boyani Road, Nairobi, Kenya', 'Nairobi', 'Kenya', '-1.363826,36.7414597', 'hospital', 'active', '07834626635'),
(5, 'Kenya Defense Forces Memorial Hospital', 'Nyayo Highrise, Mbagathi Way, Nairobi, Kenya', 'Nairobi', 'Kenya', '-1.311203,36.8045075', 'regional', 'active', '0973673266'),
(8, 'El Chapo', 'Barcelona, Spain', 'Barcelona', 'Spain', '41.3850639,2.1734035', 'hospital', 'active', '5345345359'),
(9, 'Mbale Hospital', 'Mbale Regional Referral Hospital, Pallisa, Mbale, Uganda', 'Mbale', 'Uganda', '1.0766183,34.1762996', 'hospital', 'active', '0792760039'),
(10, 'Aga Khan University Hospital Medical Centre Naivasha', 'Aga Khan University Hospital Medical Centre, Mbaria Kaniu Road, Naivasha, Kenya', 'Naivasha', 'Kenya', '-0.7144021999999999,36.4334513', 'hospital', 'Deleted', '0792756007');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donations`
--

CREATE TABLE `tbl_donations` (
  `donation_id` varchar(200) NOT NULL,
  `bag_number` text NOT NULL,
  `quantity` text NOT NULL,
  `appointment_id` text NOT NULL,
  `donation_status` varchar(200) NOT NULL DEFAULT 'donating',
  `donation_comments` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `donation_type` text NOT NULL,
  `donation_start` datetime NOT NULL,
  `donation_end` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_donations`
--

INSERT INTO `tbl_donations` (`donation_id`, `bag_number`, `quantity`, `appointment_id`, `donation_status`, `donation_comments`, `date_added`, `donation_type`, `donation_start`, `donation_end`) VALUES
('61305554180d1', '3556676788', '450', '613054641ca24', 'donated', '', '2021-09-02 08:38:58', '1', '2021-09-02 07:38:44', '2021-09-02 07:38:58'),
('668fc073e0ad1', '345856', '450', '668fadbc236b5', 'donated', '', '2024-07-11 12:44:15', '2', '2024-07-11 14:22:27', '2024-07-11 15:43:32'),
('668ff6195bdbc', '2458778578', '450', '668fee4a67cbe', 'donated', '', '2024-07-11 16:27:59', '2', '2024-07-11 18:11:21', '2024-07-11 19:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instance`
--

CREATE TABLE `tbl_instance` (
  `sessionID` int(11) NOT NULL,
  `userID` varchar(200) NOT NULL,
  `userIP` text NOT NULL,
  `loginTime` datetime NOT NULL,
  `logoutTime` datetime NOT NULL,
  `sessionLocality` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_instance`
--

INSERT INTO `tbl_instance` (`sessionID`, `userID`, `userIP`, `loginTime`, `logoutTime`, `sessionLocality`) VALUES
(1, '610683bfc6d2a', '102.140.254.161', '2021-08-01 02:22:15', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(2, '610683bfc6d2a', '102.140.254.161', '2021-08-02 09:06:59', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(3, '610683bfc6d2a', '102.140.254.161', '2021-08-03 12:22:26', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(4, '610683bfc6d2a', '196.207.147.207', '2021-08-07 08:55:41', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(5, '610683bfc6d2a', '196.207.147.207', '2021-08-10 08:05:07', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(6, '610683bfc6d2a', '196.207.147.207', '2021-08-11 02:40:07', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(7, '610683bfc6d2a', '102.140.254.161', '2021-08-11 05:13:15', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(8, '610683bfc6d2a', '102.140.254.161', '2021-08-11 06:04:39', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(9, '610683bfc6d2a', '196.207.147.207', '2021-08-13 09:20:10', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(10, '610683bfc6d2a', '102.140.254.161', '2021-08-20 12:56:08', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(11, '610683bfc6d2a', '196.207.147.207', '2021-08-21 01:11:09', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(12, '610683bfc6d2a', '196.207.147.207', '2021-08-21 01:18:52', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(13, '610683bfc6d2a', '102.140.254.161', '2021-08-21 03:34:07', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(14, '610683bfc6d2a', '102.140.254.161', '2021-08-23 06:12:28', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(15, '610683bfc6d2a', '102.140.254.161', '2021-08-23 10:15:11', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(16, '610683bfc6d2a', '::1', '2021-08-24 11:35:47', '0000-00-00 00:00:00', 'Unknown Location'),
(17, '610683bfc6d2a', '102.140.254.161', '2021-08-24 10:06:03', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(18, '610683bfc6d2a', '196.207.147.207', '2021-08-27 04:52:49', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(19, '612cf30063e0b', '196.207.147.207', '2021-08-30 06:24:10', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(20, '612cf30063e0b', '196.207.147.207', '2021-08-30 06:28:31', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(21, '610683bfc6d2a', '196.207.147.207', '2021-08-30 06:42:15', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(22, '612cf30063e0b', '196.207.147.207', '2021-08-31 05:25:43', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(23, '610683bfc6d2a', '196.207.147.207', '2021-09-01 03:55:29', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(24, '610683bfc6d2a', '196.207.147.207', '2021-09-01 03:57:28', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(25, '610683bfc6d2a', '196.207.147.207', '2021-09-01 04:01:45', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(26, '610683bfc6d2a', '196.207.147.207', '2021-09-01 04:07:02', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(27, '610683bfc6d2a', '196.207.147.207', '2021-09-01 05:02:08', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(28, '610683bfc6d2a', '196.207.147.207', '2021-09-01 06:59:05', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(29, '610683bfc6d2a', '196.207.147.207', '2021-09-01 09:11:19', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(30, '610683bfc6d2a', '196.207.147.207', '2021-09-01 09:25:35', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(31, '610683bfc6d2a', '196.207.147.207', '2021-09-01 09:27:03', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(32, '610683bfc6d2a', '196.207.147.207', '2021-09-01 09:28:14', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(33, '610683bfc6d2a', '196.207.147.207', '2021-09-01 09:38:19', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(34, '610683bfc6d2a', '196.207.147.207', '2021-09-01 09:39:24', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(35, '610683bfc6d2a', '196.207.147.207', '2021-09-01 09:41:49', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(36, '610683bfc6d2a', '196.207.147.207', '2021-09-01 09:44:39', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(37, '610683bfc6d2a', '196.207.147.207', '2021-09-01 09:47:29', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(38, '610683bfc6d2a', '196.207.147.207', '2021-09-01 09:48:15', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(39, '610683bfc6d2a', '196.207.147.207', '2021-09-01 11:06:38', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(40, '612cf30063e0b', '196.207.147.207', '2021-09-01 11:14:16', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(41, '610683bfc6d2a', '196.207.147.207', '2021-09-02 03:42:56', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(42, '610683bfc6d2a', '196.207.147.207', '2021-09-02 03:53:54', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(43, '610683bfc6d2a', '196.207.147.207', '2021-09-02 03:56:39', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(44, '61302f130e836', '196.207.147.207', '2021-09-02 04:57:44', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(45, '61302f130e836', '196.207.147.207', '2021-09-02 05:05:52', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(46, '61302f130e836', '196.207.147.207', '2021-09-02 06:28:23', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(47, '610683bfc6d2a', '196.207.147.207', '2021-09-02 06:43:12', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(48, '610683bfc6d2a', '196.207.147.207', '2021-09-02 07:25:21', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(49, '61302f130e836', '196.207.147.207', '2021-09-02 07:37:29', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(50, '610683bfc6d2a', '105.161.235.242', '2024-07-11 01:00:52', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(51, '610683bfc6d2a', '105.161.235.242', '2024-07-11 01:00:52', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(52, '610683bfc6d2a', '105.161.235.242', '2024-07-11 01:00:52', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(53, '610683bfc6d2a', '105.161.235.242', '2024-07-11 01:00:52', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(54, '610683bfc6d2a', '105.161.235.242', '2024-07-11 02:04:39', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(55, '610683bfc6d2a', '105.161.235.242', '2024-07-11 02:04:39', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(56, '610683bfc6d2a', '105.161.235.242', '2024-07-11 02:04:39', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(57, '610683bfc6d2a', '105.161.235.242', '2024-07-11 02:04:39', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(58, '610683bfc6d2a', '105.161.235.242', '2024-07-11 02:08:51', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(59, '610683bfc6d2a', '105.161.235.242', '2024-07-11 02:08:51', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(60, '610683bfc6d2a', '196.28.11.2', '2024-07-11 03:45:20', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(61, '610683bfc6d2a', '196.28.11.2', '2024-07-11 03:45:20', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(62, '668fd58d5ec09', '196.28.11.2', '2024-07-11 03:53:51', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(63, '610683bfc6d2a', '196.28.11.2', '2024-07-11 04:19:20', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(64, '610683bfc6d2a', '196.28.11.2', '2024-07-11 04:19:20', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(65, '610683bfc6d2a', '196.28.11.2', '2024-07-11 04:31:07', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(66, '610683bfc6d2a', '196.28.11.2', '2024-07-11 04:31:07', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(67, '668fd58d5ec09', '196.28.11.2', '2024-07-11 04:46:17', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(68, '668fd58d5ec09', '::1', '2024-07-11 04:55:17', '0000-00-00 00:00:00', 'Unknown Location'),
(69, '610683bfc6d2a', '::1', '2024-07-11 04:55:37', '0000-00-00 00:00:00', 'Unknown Location'),
(70, '610683bfc6d2a', '::1', '2024-07-11 04:55:37', '0000-00-00 00:00:00', 'Unknown Location'),
(71, '610683bfc6d2a', '196.28.11.2', '2024-07-11 05:28:36', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(72, '610683bfc6d2a', '196.28.11.2', '2024-07-11 05:28:36', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(73, '668fed9ec8d33', '196.28.11.2', '2024-07-11 05:37:09', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(74, '668fd58d5ec09', '196.28.11.2', '2024-07-11 05:39:55', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(75, '610683bfc6d2a', '41.90.45.16', '2024-07-11 06:09:48', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(76, '610683bfc6d2a', '41.90.45.16', '2024-07-11 06:09:48', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(77, '668fed9ec8d33', '41.90.45.16', '2024-07-11 06:11:31', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(78, '610683bfc6d2a', '41.90.45.16', '2024-07-11 06:23:30', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(79, '610683bfc6d2a', '41.90.45.16', '2024-07-11 06:23:30', '0000-00-00 00:00:00', 'Nairobi,Kenya'),
(80, '668fed9ec8d33', '41.90.37.194', '2024-07-11 07:28:14', '0000-00-00 00:00:00', 'Nairobi,Kenya');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_medicinfo`
--

CREATE TABLE `tbl_medicinfo` (
  `UUID` int(11) NOT NULL,
  `userID` varchar(200) NOT NULL,
  `bloodType` text NOT NULL,
  `weight` double NOT NULL,
  `height` double NOT NULL,
  `specialNotes` text NOT NULL,
  `status` text NOT NULL DEFAULT 'unverified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_medicinfo`
--

INSERT INTO `tbl_medicinfo` (`UUID`, `userID`, `bloodType`, `weight`, `height`, `specialNotes`, `status`) VALUES
(668, '610683bfc6d2a', 'A+', 85, 1.3, '', 'unverified'),
(669, '668fed9ec8d33', 'B+', 59, 0.9, '', 'unverified');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pass`
--

CREATE TABLE `tbl_pass` (
  `id` varchar(200) NOT NULL,
  `userID` varchar(255) NOT NULL,
  `results` text NOT NULL,
  `comment` text NOT NULL,
  `status` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pass`
--

INSERT INTO `tbl_pass` (`id`, `userID`, `results`, `comment`, `status`, `date`) VALUES
('612bb30e41b49', '610683bfc6d2a', 'a:26:{s:7:\"consent\";a:1:{i:0;s:3:\"yes\";}s:3:\"qa1\";s:2:\"no\";s:3:\"qa2\";s:3:\"yes\";s:3:\"qa3\";s:3:\"yes\";s:3:\"qa4\";s:2:\"no\";s:3:\"qa5\";s:3:\"yes\";s:3:\"qa6\";s:3:\"yes\";s:3:\"qa7\";s:3:\"yes\";s:3:\"qa8\";s:3:\"yes\";s:3:\"qa9\";s:3:\"yes\";s:4:\"qa10\";s:3:\"yes\";s:4:\"qa11\";s:2:\"no\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:2:\"no\";s:3:\"qb2\";s:2:\"no\";s:3:\"qb3\";s:3:\"yes\";s:3:\"qb4\";s:2:\"no\";s:3:\"qb5\";s:2:\"no\";s:3:\"qb6\";s:2:\"no\";s:3:\"qb7\";s:2:\"no\";s:3:\"qb8\";s:3:\"yes\";s:3:\"qb9\";s:2:\"no\";s:4:\"qb10\";s:3:\"yes\";s:4:\"qb11\";s:3:\"yes\";s:4:\"qb12\";s:2:\"no\";s:8:\"consent2\";s:3:\"yes\";}', 'Reject donor with label High risk donor', 'Expired', '2021-08-03 11:34:59'),
('612bb88e44ff8', '610683bfc6d2a', 'a:25:{s:3:\"qa1\";s:3:\"yes\";s:3:\"qa2\";s:3:\"yes\";s:3:\"qa3\";s:3:\"yes\";s:3:\"qa4\";s:2:\"no\";s:3:\"qa5\";s:2:\"no\";s:3:\"qa6\";s:2:\"no\";s:3:\"qa7\";s:2:\"no\";s:3:\"qa8\";s:2:\"no\";s:3:\"qa9\";s:2:\"no\";s:4:\"qa10\";s:2:\"no\";s:4:\"qa11\";s:2:\"no\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:2:\"no\";s:3:\"qb2\";s:2:\"no\";s:3:\"qb3\";s:2:\"no\";s:3:\"qb4\";s:2:\"no\";s:3:\"qb5\";s:2:\"no\";s:3:\"qb6\";s:2:\"no\";s:3:\"qb7\";s:2:\"no\";s:3:\"qb8\";s:2:\"no\";s:3:\"qb9\";s:2:\"no\";s:4:\"qb10\";s:2:\"no\";s:4:\"qb11\";s:2:\"no\";s:4:\"qb12\";s:2:\"no\";s:8:\"consent2\";s:3:\"yes\";}', 'Accept donor with label check donor on arrival', 'Expired', '2021-08-03 11:34:59'),
('612c0dd15cb8e', '610683bfc6d2a', 'a:26:{s:7:\"consent\";a:1:{i:0;s:3:\"yes\";}s:3:\"qa1\";s:3:\"yes\";s:3:\"qa2\";s:2:\"no\";s:3:\"qa3\";s:2:\"no\";s:3:\"qa4\";s:3:\"yes\";s:3:\"qa5\";s:2:\"no\";s:3:\"qa6\";s:3:\"yes\";s:3:\"qa7\";s:2:\"no\";s:3:\"qa8\";s:3:\"yes\";s:3:\"qa9\";s:3:\"yes\";s:4:\"qa10\";s:3:\"yes\";s:4:\"qa11\";s:3:\"yes\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:3:\"yes\";s:3:\"qb2\";s:3:\"yes\";s:3:\"qb3\";s:2:\"no\";s:3:\"qb4\";s:3:\"yes\";s:3:\"qb5\";s:2:\"no\";s:3:\"qb6\";s:2:\"no\";s:3:\"qb7\";s:2:\"no\";s:3:\"qb8\";s:2:\"no\";s:3:\"qb9\";s:3:\"yes\";s:4:\"qb10\";s:3:\"yes\";s:4:\"qb11\";s:2:\"no\";s:4:\"qb12\";s:3:\"yes\";s:8:\"consent2\";s:3:\"yes\";}', 'Reject donor with label High risk donor', 'Expired', '2021-08-01 11:34:59'),
('612d233f5e7ce', '610683bfc6d2a', 'a:26:{s:7:\"consent\";a:1:{i:0;s:3:\"yes\";}s:3:\"qa1\";s:2:\"no\";s:3:\"qa2\";s:3:\"yes\";s:3:\"qa3\";s:3:\"yes\";s:3:\"qa4\";s:3:\"yes\";s:3:\"qa5\";s:3:\"yes\";s:3:\"qa6\";s:3:\"yes\";s:3:\"qa7\";s:2:\"no\";s:3:\"qa8\";s:3:\"yes\";s:3:\"qa9\";s:2:\"no\";s:4:\"qa10\";s:3:\"yes\";s:4:\"qa11\";s:2:\"no\";s:4:\"qa12\";s:3:\"yes\";s:3:\"qb1\";s:3:\"yes\";s:3:\"qb2\";s:2:\"no\";s:3:\"qb3\";s:3:\"yes\";s:3:\"qb4\";s:2:\"no\";s:3:\"qb5\";s:3:\"yes\";s:3:\"qb6\";s:2:\"no\";s:3:\"qb7\";s:2:\"no\";s:3:\"qb8\";s:2:\"no\";s:3:\"qb9\";s:3:\"yes\";s:4:\"qb10\";s:3:\"yes\";s:4:\"qb11\";s:3:\"yes\";s:4:\"qb12\";s:3:\"yes\";s:8:\"consent2\";s:3:\"yes\";}', 'Reject donor with label High risk donor', 'Expired', '2021-08-07 11:34:59'),
('612e119080b2a', '610683bfc6d2a', 'a:26:{s:7:\"consent\";a:1:{i:0;s:3:\"yes\";}s:3:\"qa1\";s:3:\"yes\";s:3:\"qa2\";s:2:\"no\";s:3:\"qa3\";s:2:\"no\";s:3:\"qa4\";s:3:\"yes\";s:3:\"qa5\";s:3:\"yes\";s:3:\"qa6\";s:3:\"yes\";s:3:\"qa7\";s:3:\"yes\";s:3:\"qa8\";s:3:\"yes\";s:3:\"qa9\";s:3:\"yes\";s:4:\"qa10\";s:3:\"yes\";s:4:\"qa11\";s:3:\"yes\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:3:\"yes\";s:3:\"qb2\";s:2:\"no\";s:3:\"qb3\";s:3:\"yes\";s:3:\"qb4\";s:3:\"yes\";s:3:\"qb5\";s:3:\"yes\";s:3:\"qb6\";s:3:\"yes\";s:3:\"qb7\";s:3:\"yes\";s:3:\"qb8\";s:3:\"yes\";s:3:\"qb9\";s:3:\"yes\";s:4:\"qb10\";s:2:\"no\";s:4:\"qb11\";s:2:\"no\";s:4:\"qb12\";s:3:\"yes\";s:8:\"consent2\";s:3:\"yes\";}', 'Reject donor with label High risk donor', 'Expired', '2021-08-31 11:34:59'),
('612f8782360f1', '610683bfc6d2a', 'a:26:{s:7:\"consent\";a:1:{i:0;s:3:\"yes\";}s:3:\"qa1\";s:3:\"yes\";s:3:\"qa2\";s:3:\"yes\";s:3:\"qa3\";s:2:\"no\";s:3:\"qa4\";s:2:\"no\";s:3:\"qa5\";s:2:\"no\";s:3:\"qa6\";s:2:\"no\";s:3:\"qa7\";s:2:\"no\";s:3:\"qa8\";s:2:\"no\";s:3:\"qa9\";s:2:\"no\";s:4:\"qa10\";s:2:\"no\";s:4:\"qa11\";s:2:\"no\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:2:\"no\";s:3:\"qb2\";s:2:\"no\";s:3:\"qb3\";s:2:\"no\";s:3:\"qb4\";s:2:\"no\";s:3:\"qb5\";s:2:\"no\";s:3:\"qb6\";s:2:\"no\";s:3:\"qb7\";s:2:\"no\";s:3:\"qb8\";s:2:\"no\";s:3:\"qb9\";s:2:\"no\";s:4:\"qb10\";s:2:\"no\";s:4:\"qb11\";s:2:\"no\";s:4:\"qb12\";s:2:\"no\";s:8:\"consent2\";s:3:\"yes\";}', 'Accept donor', 'Expired', '2021-09-01 14:00:34'),
('612f896da9975', '610683bfc6d2a', 'a:26:{s:7:\"consent\";a:1:{i:0;s:3:\"yes\";}s:3:\"qa1\";s:3:\"yes\";s:3:\"qa2\";s:2:\"no\";s:3:\"qa3\";s:3:\"yes\";s:3:\"qa4\";s:2:\"no\";s:3:\"qa5\";s:3:\"yes\";s:3:\"qa6\";s:2:\"no\";s:3:\"qa7\";s:2:\"no\";s:3:\"qa8\";s:3:\"yes\";s:3:\"qa9\";s:3:\"yes\";s:4:\"qa10\";s:3:\"yes\";s:4:\"qa11\";s:3:\"yes\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:3:\"yes\";s:3:\"qb2\";s:3:\"yes\";s:3:\"qb3\";s:3:\"yes\";s:3:\"qb4\";s:3:\"yes\";s:3:\"qb5\";s:2:\"no\";s:3:\"qb6\";s:2:\"no\";s:3:\"qb7\";s:3:\"yes\";s:3:\"qb8\";s:2:\"no\";s:3:\"qb9\";s:2:\"no\";s:4:\"qb10\";s:3:\"yes\";s:4:\"qb11\";s:3:\"yes\";s:4:\"qb12\";s:3:\"yes\";s:8:\"consent2\";s:3:\"yes\";}', 'Reject donor with label High risk donor', 'Expired', '2021-09-01 14:08:45'),
('612f8a1e2c96b', '610683bfc6d2a', 'a:26:{s:7:\"consent\";a:1:{i:0;s:3:\"yes\";}s:3:\"qa1\";s:3:\"yes\";s:3:\"qa2\";s:2:\"no\";s:3:\"qa3\";s:3:\"yes\";s:3:\"qa4\";s:2:\"no\";s:3:\"qa5\";s:3:\"yes\";s:3:\"qa6\";s:2:\"no\";s:3:\"qa7\";s:2:\"no\";s:3:\"qa8\";s:3:\"yes\";s:3:\"qa9\";s:3:\"yes\";s:4:\"qa10\";s:3:\"yes\";s:4:\"qa11\";s:3:\"yes\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:3:\"yes\";s:3:\"qb2\";s:3:\"yes\";s:3:\"qb3\";s:3:\"yes\";s:3:\"qb4\";s:3:\"yes\";s:3:\"qb5\";s:2:\"no\";s:3:\"qb6\";s:2:\"no\";s:3:\"qb7\";s:3:\"yes\";s:3:\"qb8\";s:2:\"no\";s:3:\"qb9\";s:2:\"no\";s:4:\"qb10\";s:3:\"yes\";s:4:\"qb11\";s:3:\"yes\";s:4:\"qb12\";s:3:\"yes\";s:8:\"consent2\";s:3:\"yes\";}', 'Reject donor with label High risk donor', 'Expired', '2021-09-01 14:11:42'),
('612f8a7402df1', '610683bfc6d2a', 'a:26:{s:7:\"consent\";a:1:{i:0;s:3:\"yes\";}s:3:\"qa1\";s:3:\"yes\";s:3:\"qa2\";s:3:\"yes\";s:3:\"qa3\";s:2:\"no\";s:3:\"qa4\";s:2:\"no\";s:3:\"qa5\";s:2:\"no\";s:3:\"qa6\";s:2:\"no\";s:3:\"qa7\";s:2:\"no\";s:3:\"qa8\";s:2:\"no\";s:3:\"qa9\";s:2:\"no\";s:4:\"qa10\";s:2:\"no\";s:4:\"qa11\";s:2:\"no\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:2:\"no\";s:3:\"qb2\";s:2:\"no\";s:3:\"qb3\";s:2:\"no\";s:3:\"qb4\";s:2:\"no\";s:3:\"qb5\";s:2:\"no\";s:3:\"qb6\";s:2:\"no\";s:3:\"qb7\";s:2:\"no\";s:3:\"qb8\";s:2:\"no\";s:3:\"qb9\";s:2:\"no\";s:4:\"qb10\";s:2:\"no\";s:4:\"qb11\";s:2:\"no\";s:4:\"qb12\";s:2:\"no\";s:8:\"consent2\";s:3:\"yes\";}', 'Accept donor', 'Expired', '2021-09-01 14:13:08'),
('612f8b8896aaf', '610683bfc6d2a', 'a:26:{s:7:\"consent\";a:1:{i:0;s:3:\"yes\";}s:3:\"qa1\";s:2:\"no\";s:3:\"qa2\";s:2:\"no\";s:3:\"qa3\";s:3:\"yes\";s:3:\"qa4\";s:2:\"no\";s:3:\"qa5\";s:2:\"no\";s:3:\"qa6\";s:2:\"no\";s:3:\"qa7\";s:2:\"no\";s:3:\"qa8\";s:3:\"yes\";s:3:\"qa9\";s:3:\"yes\";s:4:\"qa10\";s:2:\"no\";s:4:\"qa11\";s:2:\"no\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:2:\"no\";s:3:\"qb2\";s:2:\"no\";s:3:\"qb3\";s:3:\"yes\";s:3:\"qb4\";s:3:\"yes\";s:3:\"qb5\";s:2:\"no\";s:3:\"qb6\";s:3:\"yes\";s:3:\"qb7\";s:3:\"yes\";s:3:\"qb8\";s:2:\"no\";s:3:\"qb9\";s:3:\"yes\";s:4:\"qb10\";s:3:\"yes\";s:4:\"qb11\";s:2:\"no\";s:4:\"qb12\";s:3:\"yes\";s:8:\"consent2\";s:3:\"yes\";}', 'Reject donor with label High risk donor', 'Expired', '2021-09-01 14:17:44'),
('612f8c1eb07fe', '610683bfc6d2a', 'a:26:{s:7:\"consent\";a:1:{i:0;s:3:\"yes\";}s:3:\"qa1\";s:3:\"yes\";s:3:\"qa2\";s:3:\"yes\";s:3:\"qa3\";s:2:\"no\";s:3:\"qa4\";s:2:\"no\";s:3:\"qa5\";s:2:\"no\";s:3:\"qa6\";s:2:\"no\";s:3:\"qa7\";s:2:\"no\";s:3:\"qa8\";s:2:\"no\";s:3:\"qa9\";s:2:\"no\";s:4:\"qa10\";s:2:\"no\";s:4:\"qa11\";s:2:\"no\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:2:\"no\";s:3:\"qb2\";s:2:\"no\";s:3:\"qb3\";s:2:\"no\";s:3:\"qb4\";s:2:\"no\";s:3:\"qb5\";s:2:\"no\";s:3:\"qb6\";s:2:\"no\";s:3:\"qb7\";s:2:\"no\";s:3:\"qb8\";s:2:\"no\";s:3:\"qb9\";s:2:\"no\";s:4:\"qb10\";s:2:\"no\";s:4:\"qb11\";s:2:\"no\";s:4:\"qb12\";s:2:\"no\";s:8:\"consent2\";s:3:\"yes\";}', 'Accept donor', 'Expired', '2021-09-01 14:20:14'),
('61305499a160e', '610683bfc6d2a', 'a:25:{s:7:\"consent\";a:1:{i:0;s:3:\"yes\";}s:3:\"qa1\";s:3:\"yes\";s:3:\"qa2\";s:3:\"yes\";s:3:\"qa3\";s:2:\"no\";s:3:\"qa4\";s:2:\"no\";s:3:\"qa5\";s:2:\"no\";s:3:\"qa7\";s:2:\"no\";s:3:\"qa8\";s:2:\"no\";s:3:\"qa9\";s:2:\"no\";s:4:\"qa10\";s:2:\"no\";s:4:\"qa11\";s:2:\"no\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:2:\"no\";s:3:\"qb2\";s:2:\"no\";s:3:\"qb3\";s:2:\"no\";s:3:\"qb4\";s:2:\"no\";s:3:\"qb5\";s:2:\"no\";s:3:\"qb6\";s:2:\"no\";s:3:\"qb7\";s:2:\"no\";s:3:\"qb8\";s:2:\"no\";s:3:\"qb9\";s:2:\"no\";s:4:\"qb10\";s:2:\"no\";s:4:\"qb11\";s:2:\"no\";s:4:\"qb12\";s:2:\"no\";s:8:\"consent2\";s:3:\"yes\";}', 'Accept donor', 'Expired', '2021-09-02 04:35:37'),
('668fadfb32f4a', '610683bfc6d2a', 'a:25:{s:3:\"qa1\";s:3:\"yes\";s:3:\"qa2\";s:3:\"yes\";s:3:\"qa3\";s:2:\"no\";s:3:\"qa4\";s:2:\"no\";s:3:\"qa5\";s:2:\"no\";s:3:\"qa6\";s:2:\"no\";s:3:\"qa7\";s:2:\"no\";s:3:\"qa8\";s:2:\"no\";s:3:\"qa9\";s:2:\"no\";s:4:\"qa10\";s:2:\"no\";s:4:\"qa11\";s:2:\"no\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:2:\"no\";s:3:\"qb2\";s:2:\"no\";s:3:\"qb3\";s:2:\"no\";s:3:\"qb4\";s:2:\"no\";s:3:\"qb5\";s:2:\"no\";s:3:\"qb6\";s:2:\"no\";s:3:\"qb7\";s:2:\"no\";s:3:\"qb8\";s:2:\"no\";s:3:\"qb9\";s:2:\"no\";s:4:\"qb10\";s:2:\"no\";s:4:\"qb11\";s:2:\"no\";s:4:\"qb12\";s:2:\"no\";s:8:\"consent2\";s:3:\"yes\";}', 'Accept donor', 'Accepted', '2024-07-11 10:03:39'),
('668fae09194f9', '610683bfc6d2a', 'a:25:{s:3:\"qa1\";s:3:\"yes\";s:3:\"qa2\";s:3:\"yes\";s:3:\"qa3\";s:2:\"no\";s:3:\"qa4\";s:2:\"no\";s:3:\"qa5\";s:2:\"no\";s:3:\"qa6\";s:2:\"no\";s:3:\"qa7\";s:2:\"no\";s:3:\"qa8\";s:2:\"no\";s:3:\"qa9\";s:2:\"no\";s:4:\"qa10\";s:2:\"no\";s:4:\"qa11\";s:2:\"no\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:2:\"no\";s:3:\"qb2\";s:2:\"no\";s:3:\"qb3\";s:2:\"no\";s:3:\"qb4\";s:2:\"no\";s:3:\"qb5\";s:2:\"no\";s:3:\"qb6\";s:2:\"no\";s:3:\"qb7\";s:2:\"no\";s:3:\"qb8\";s:2:\"no\";s:3:\"qb9\";s:2:\"no\";s:4:\"qb10\";s:2:\"no\";s:4:\"qb11\";s:2:\"no\";s:4:\"qb12\";s:2:\"no\";s:8:\"consent2\";s:3:\"yes\";}', 'Accept donor', 'Accepted', '2024-07-11 10:03:53'),
('668fb61538b82', '610683bfc6d2a', 'a:25:{s:3:\"qa1\";s:3:\"yes\";s:3:\"qa2\";s:3:\"yes\";s:3:\"qa3\";s:3:\"yes\";s:3:\"qa4\";s:2:\"no\";s:3:\"qa5\";s:2:\"no\";s:3:\"qa6\";s:2:\"no\";s:3:\"qa7\";s:2:\"no\";s:3:\"qa8\";s:2:\"no\";s:3:\"qa9\";s:2:\"no\";s:4:\"qa10\";s:2:\"no\";s:4:\"qa11\";s:2:\"no\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:2:\"no\";s:3:\"qb2\";s:2:\"no\";s:3:\"qb3\";s:2:\"no\";s:3:\"qb4\";s:2:\"no\";s:3:\"qb5\";s:2:\"no\";s:3:\"qb6\";s:2:\"no\";s:3:\"qb7\";s:2:\"no\";s:3:\"qb8\";s:2:\"no\";s:3:\"qb9\";s:2:\"no\";s:4:\"qb10\";s:2:\"no\";s:4:\"qb11\";s:2:\"no\";s:4:\"qb12\";s:2:\"no\";s:8:\"consent2\";s:3:\"yes\";}', 'Accept donor with label check donor on arrival', 'Accepted', '2024-07-11 10:38:13'),
('668fb8783f1f2', '610683bfc6d2a', 'a:25:{s:3:\"qa1\";s:3:\"yes\";s:3:\"qa2\";s:3:\"yes\";s:3:\"qa3\";s:3:\"yes\";s:3:\"qa4\";s:2:\"no\";s:3:\"qa5\";s:2:\"no\";s:3:\"qa6\";s:2:\"no\";s:3:\"qa7\";s:2:\"no\";s:3:\"qa8\";s:2:\"no\";s:3:\"qa9\";s:2:\"no\";s:4:\"qa10\";s:2:\"no\";s:4:\"qa11\";s:2:\"no\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:2:\"no\";s:3:\"qb2\";s:2:\"no\";s:3:\"qb3\";s:2:\"no\";s:3:\"qb4\";s:2:\"no\";s:3:\"qb5\";s:2:\"no\";s:3:\"qb6\";s:2:\"no\";s:3:\"qb7\";s:2:\"no\";s:3:\"qb8\";s:2:\"no\";s:3:\"qb9\";s:2:\"no\";s:4:\"qb10\";s:2:\"no\";s:4:\"qb11\";s:2:\"no\";s:4:\"qb12\";s:2:\"no\";s:8:\"consent2\";s:3:\"yes\";}', 'Accept donor with label check donor on arrival', 'Accepted', '2024-07-11 10:48:24'),
('668fb96a7968d', '610683bfc6d2a', 'a:25:{s:3:\"qa1\";s:2:\"no\";s:3:\"qa2\";s:2:\"no\";s:3:\"qa3\";s:2:\"no\";s:3:\"qa4\";s:2:\"no\";s:3:\"qa5\";s:2:\"no\";s:3:\"qa6\";s:2:\"no\";s:3:\"qa7\";s:2:\"no\";s:3:\"qa8\";s:2:\"no\";s:3:\"qa9\";s:2:\"no\";s:4:\"qa10\";s:2:\"no\";s:4:\"qa11\";s:2:\"no\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:2:\"no\";s:3:\"qb2\";s:2:\"no\";s:3:\"qb3\";s:2:\"no\";s:3:\"qb4\";s:2:\"no\";s:3:\"qb5\";s:2:\"no\";s:3:\"qb6\";s:2:\"no\";s:3:\"qb7\";s:2:\"no\";s:3:\"qb8\";s:2:\"no\";s:3:\"qb9\";s:2:\"no\";s:4:\"qb10\";s:2:\"no\";s:4:\"qb11\";s:2:\"no\";s:4:\"qb12\";s:2:\"no\";s:8:\"consent2\";s:3:\"yes\";}', 'Accept donor with label check donor on arrival', 'Accepted', '2024-07-11 10:52:26'),
('668fee764981d', '668fed9ec8d33', 'a:26:{s:7:\"consent\";a:1:{i:0;s:3:\"yes\";}s:3:\"qa1\";s:2:\"no\";s:3:\"qa2\";s:2:\"no\";s:3:\"qa3\";s:2:\"no\";s:3:\"qa4\";s:2:\"no\";s:3:\"qa5\";s:2:\"no\";s:3:\"qa6\";s:2:\"no\";s:3:\"qa7\";s:2:\"no\";s:3:\"qa8\";s:2:\"no\";s:3:\"qa9\";s:2:\"no\";s:4:\"qa10\";s:2:\"no\";s:4:\"qa11\";s:2:\"no\";s:4:\"qa12\";s:2:\"no\";s:3:\"qb1\";s:2:\"no\";s:3:\"qb2\";s:2:\"no\";s:3:\"qb3\";s:2:\"no\";s:3:\"qb4\";s:2:\"no\";s:3:\"qb5\";s:2:\"no\";s:3:\"qb6\";s:2:\"no\";s:3:\"qb7\";s:2:\"no\";s:3:\"qb8\";s:2:\"no\";s:3:\"qb9\";s:2:\"no\";s:4:\"qb10\";s:2:\"no\";s:4:\"qb11\";s:2:\"no\";s:4:\"qb12\";s:2:\"no\";s:8:\"consent2\";s:3:\"yes\";}', 'Accept donor with label check donor on arrival', 'Accepted', '2024-07-11 14:38:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_color` text NOT NULL,
  `shelf_life` text NOT NULL,
  `storage` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `product_color`, `shelf_life`, `storage`) VALUES
(1, 'Red Blood Cells', 'Red', '42', '2-6 °C'),
(2, 'Whole Blood', 'Red', '35', '2-6°C');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset`
--

CREATE TABLE `tbl_reset` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `code` text NOT NULL,
  `status` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `UUID` int(11) NOT NULL,
  `userID` varchar(200) NOT NULL,
  `userType` enum('user','bankagent','hospitalagent','admin') NOT NULL DEFAULT 'user',
  `userRole` enum('default','managestock','requisition','createreports','updatebloodgroup') NOT NULL DEFAULT 'default'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`UUID`, `userID`, `userType`, `userRole`) VALUES
(1, '610683bfc6d2a', 'admin', 'default'),
(2, '612cf30063e0b', 'bankagent', 'default'),
(3, '612d011d993b1', 'user', 'default'),
(4, '612d01be80b7b', 'bankagent', 'default'),
(5, '612d05de0ad9d', 'bankagent', 'default'),
(6, '612d065b498e0', 'hospitalagent', 'default'),
(7, '612d0773bc698', 'hospitalagent', 'default'),
(8, '612d258fb180e', 'admin', 'default'),
(9, '61302f130e836', 'admin', 'default'),
(10, '668fd58d5ec09', 'hospitalagent', 'default'),
(11, '668fed9ec8d33', 'user', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfusion`
--

CREATE TABLE `tbl_transfusion` (
  `transID` varchar(200) NOT NULL,
  `tbag_number` text NOT NULL,
  `receipient_name` text NOT NULL,
  `facility` text NOT NULL,
  `transfusion_status` text NOT NULL,
  `transfussion_comments` text NOT NULL,
  `transfusion_start` text NOT NULL,
  `transfusion_end` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userID` varchar(200) NOT NULL,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `username` text NOT NULL,
  `gender` enum('male','female','','') NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `dob` date NOT NULL,
  `profileUrl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userID`, `firstName`, `lastName`, `username`, `gender`, `address`, `email`, `phone`, `dob`, `profileUrl`) VALUES
('610683bfc6d2a', 'Rees', 'Alumasa', 'reesalumasa', 'male', 'Castan C, Nairobi, Kenya', 'reesalumasa@gmail.com', '07927560002', '2005-06-02', 'assets/upload/1630056788burnley-vs-manchester-united.jpg'),
('612cf30063e0b', 'Leroy', 'Mayer', 'woset', 'male', '', 'kimberlykavetsa@gmail.com', '+1 (172) 469-6938', '1986-09-06', ''),
('612d011d993b1', 'Walter', 'Carson', 'pigonoz', 'male', 'Nairobi', 'riqew@mailinator.com', '+1 (391) 481-6725', '1982-11-15', ''),
('612d01be80b7b', 'Kyra', 'Vasquez', 'cisavuhyp', 'female', 'Nairobi', 'nohagy@mailinator.com', '+1 (553) 936-2018', '2000-12-31', ''),
('612d05de0ad9d', 'Barbara', 'Dean', 'nyzeg', 'female', 'Nairobi', 'qomuqiro@mailinator.com', '+1 (813) 867-5995', '2013-05-02', ''),
('612d065b498e0', 'Ashton', 'Kent', 'vepup', '', 'Nairobi', 'becejavyg@mailinator.com', '+1 (531) 699-3635', '1975-05-13', ''),
('612d0773bc698', 'Audrey', 'Nguyen', 'kohymejij', 'male', 'Nairobi', 'cymemovyn@mailinator.com', '+1 (171) 387-6295', '1996-10-03', ''),
('612d258fb180e', 'Cynthia', 'Tyler', 'zenux', 'female', 'Nairobi', 'xenyfo@mailinator.com', '+1 (462) 368-5061', '1984-08-25', ''),
('61302f130e836', 'Mara', 'Meadows', 'mara', 'female', 'Nakuru, Kenya', 'mara@mailinator.com', '+1 (814) 824-7492', '2005-01-08', 'assets/upload/1630547959skysports-arsenal-brighton_5388842.jpg'),
('610683bfc6d2a', 'Rees', 'Alumasa', 'reesalumasa', 'male', 'Castan C, Nairobi, Kenya', 'reesalumasa@gmail.com', '07927560002', '2005-06-02', 'assets/upload/1630056788burnley-vs-manchester-united.jpg'),
('612cf30063e0b', 'Leroy', 'Mayer', 'woset', 'male', '', 'kimberlykavetsa@gmail.com', '+1 (172) 469-6938', '1986-09-06', ''),
('612d011d993b1', 'Walter', 'Carson', 'pigonoz', 'male', 'Nairobi', 'riqew@mailinator.com', '+1 (391) 481-6725', '1982-11-15', ''),
('612d01be80b7b', 'Kyra', 'Vasquez', 'cisavuhyp', 'female', 'Nairobi', 'nohagy@mailinator.com', '+1 (553) 936-2018', '2000-12-31', ''),
('612d05de0ad9d', 'Barbara', 'Dean', 'nyzeg', 'female', 'Nairobi', 'qomuqiro@mailinator.com', '+1 (813) 867-5995', '2013-05-02', ''),
('612d065b498e0', 'Ashton', 'Kent', 'vepup', '', 'Nairobi', 'becejavyg@mailinator.com', '+1 (531) 699-3635', '1975-05-13', ''),
('612d0773bc698', 'Audrey', 'Nguyen', 'kohymejij', 'male', 'Nairobi', 'cymemovyn@mailinator.com', '+1 (171) 387-6295', '1996-10-03', ''),
('612d258fb180e', 'Cynthia', 'Tyler', 'zenux', 'female', 'Nairobi', 'xenyfo@mailinator.com', '+1 (462) 368-5061', '1984-08-25', ''),
('61302f130e836', 'Mara', 'Meadows', 'mara', 'female', 'Nakuru, Kenya', 'mara@mailinator.com', '+1 (814) 824-7492', '2005-01-08', 'assets/upload/1630547959skysports-arsenal-brighton_5388842.jpg'),
('668fd58d5ec09', 'Facility', 'Manager - KNH', 'manager1', 'female', 'Nairobi', 'manager@idonate.22web.org', '0792756002', '1990-12-04', ''),
('668fed9ec8d33', 'Educo', 'Auth', 'educo', 'male', 'Nairobi', 'auth.educo@gmail.com', '0792756001', '1999-12-11', '');

-- --------------------------------------------------------

--
-- Structure for view `donation_report`
--
DROP TABLE IF EXISTS `donation_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `donation_report`  AS SELECT DISTINCT `d`.`donation_id` AS `donation_id`, `a`.`userid` AS `userID`, `d`.`donation_status` AS `donation_status`, `a`.`date` AS `appointment_date`, `c`.`name` AS `donation_venue`, `d`.`donation_type` AS `donation_type`, `t`.`transID` AS `transID`, `d`.`quantity` AS `quantity`, `m`.`bloodType` AS `bloodType` FROM ((((`tbl_donations` `d` left join `tbl_appointments` `a` on(`d`.`appointment_id` = `a`.`aid`)) left join `tbl_centers` `c` on(`c`.`centerID` = `a`.`facility`)) left join `tbl_transfusion` `t` on(`t`.`tbag_number` = `d`.`bag_number`)) left join `tbl_medicinfo` `m` on(`m`.`userID` = `a`.`userid`)) ;

-- --------------------------------------------------------

--
-- Structure for view `stock_by_group`
--
DROP TABLE IF EXISTS `stock_by_group`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stock_by_group`  AS SELECT `a`.`userid` AS `userID`, count(0) AS `count`, `d`.`donation_status` AS `donation_status`, `a`.`date` AS `appointment_date`, `c`.`name` AS `donation_venue`, `d`.`donation_type` AS `donation_type`, `t`.`transID` AS `transID`, sum(`d`.`quantity`) AS `quantity`, `m`.`bloodType` AS `bloodType` FROM ((((`tbl_donations` `d` left join `tbl_appointments` `a` on(`d`.`appointment_id` = `a`.`aid`)) left join `tbl_centers` `c` on(`c`.`centerID` = `a`.`facility`)) left join `tbl_transfusion` `t` on(`t`.`tbag_number` = `d`.`bag_number`)) left join `tbl_medicinfo` `m` on(`m`.`userID` = `a`.`userid`)) WHERE `d`.`donation_status` = 'donated' GROUP BY `a`.`userid` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `tbl_auth`
--
ALTER TABLE `tbl_auth`
  ADD PRIMARY KEY (`UUID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tbl_centers`
--
ALTER TABLE `tbl_centers`
  ADD PRIMARY KEY (`centerID`);

--
-- Indexes for table `tbl_donations`
--
ALTER TABLE `tbl_donations`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `tbl_instance`
--
ALTER TABLE `tbl_instance`
  ADD PRIMARY KEY (`sessionID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tbl_medicinfo`
--
ALTER TABLE `tbl_medicinfo`
  ADD PRIMARY KEY (`UUID`);

--
-- Indexes for table `tbl_pass`
--
ALTER TABLE `tbl_pass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_reset`
--
ALTER TABLE `tbl_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`UUID`);

--
-- Indexes for table `tbl_transfusion`
--
ALTER TABLE `tbl_transfusion`
  ADD PRIMARY KEY (`transID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_auth`
--
ALTER TABLE `tbl_auth`
  MODIFY `UUID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_centers`
--
ALTER TABLE `tbl_centers`
  MODIFY `centerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_instance`
--
ALTER TABLE `tbl_instance`
  MODIFY `sessionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `tbl_medicinfo`
--
ALTER TABLE `tbl_medicinfo`
  MODIFY `UUID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_reset`
--
ALTER TABLE `tbl_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `UUID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
