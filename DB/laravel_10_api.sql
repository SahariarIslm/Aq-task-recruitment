-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 07:47 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_10_api`
--

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_22_103318_create_sample_data_table', 1),
(6, '2023_07_22_122827_create_sample_multi_phase_data_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sample_data_table`
--

CREATE TABLE `sample_data_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Packet_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Device_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sensometer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Device_timestamp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sensor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slave_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sample_data_table`
--

INSERT INTO `sample_data_table` (`id`, `Packet_id`, `Device_id`, `Sensometer_id`, `Device_timestamp`, `Sensor_id`, `Slave_address`, `value`, `created_at`, `updated_at`) VALUES
(1, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '101', '1.13', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(2, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '102', '90.9', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(3, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '103', '94.8', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(4, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '104', '93.6', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(5, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '105', '99.9', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(6, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '106', '95.9', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(7, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '107', '99.9', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(8, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '108', '89.1', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(9, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '109', '88.4', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(10, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '110', '93.9', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(11, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '111', '90.5', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(12, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '112', '97.4', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(13, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '113', '98.1', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(14, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '114', '97.6', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(15, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '115', '99.9', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(16, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '116', '99.9', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(17, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '117', '0', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(18, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '118', '99.9', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(19, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '119', '0', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(20, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '120', '0', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(21, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '121', '97.7', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(22, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '122', '99.9', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(23, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '123', '99.8', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(24, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '124', '0', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(25, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '125', '94.2', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(26, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '126', '95.7', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(27, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '127', '97.6', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(28, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '128', '0', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(29, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '129', '99.9', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(30, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '130', '0', '2023-07-22 10:53:09', '2023-07-22 10:53:09'),
(31, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '101', '1.13', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(32, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '102', '90.9', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(33, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '103', '94.8', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(34, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '104', '93.6', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(35, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '105', '99.9', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(36, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '106', '95.9', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(37, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '107', '99.9', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(38, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '108', '89.1', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(39, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '109', '88.4', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(40, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '110', '93.9', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(41, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '111', '90.5', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(42, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '112', '97.4', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(43, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '113', '98.1', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(44, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '114', '97.6', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(45, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '115', '99.9', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(46, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '116', '99.9', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(47, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '117', '0', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(48, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '118', '99.9', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(49, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '119', '0', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(50, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '120', '0', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(51, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '121', '97.7', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(52, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '122', '99.9', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(53, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '123', '99.8', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(54, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '124', '0', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(55, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '125', '94.2', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(56, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '126', '95.7', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(57, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '127', '97.6', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(58, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '128', '0', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(59, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '129', '99.9', '2023-07-22 11:27:43', '2023-07-22 11:27:43'),
(60, '1122', '20230313902025', '1', '06-13-2023 09:02:49', '152', '130', '0', '2023-07-22 11:27:43', '2023-07-22 11:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `sample_multi_phase_data_table~`
--

CREATE TABLE `sample_multi_phase_data_table~` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Packet_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Device_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sensometer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Device_timestamp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data_count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Meter_parameter_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Meter_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sensor_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sample_multi_phase_data_table~`
--

INSERT INTO `sample_multi_phase_data_table~` (`id`, `Packet_id`, `Device_id`, `Sensometer_id`, `Device_timestamp`, `Data_count`, `Meter_parameter_id`, `phase`, `Meter_id`, `Sensor_type`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'V1', 'voltage', '99', '2023-07-22 10:54:41', '2023-07-22 10:54:41'),
(2, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'V2', 'voltage', '98', '2023-07-22 10:54:41', '2023-07-22 10:54:41'),
(3, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'V3', 'voltage', '97', '2023-07-22 10:54:41', '2023-07-22 10:54:41'),
(4, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'A1', 'Ampere', '99', '2023-07-22 10:54:41', '2023-07-22 10:54:41'),
(5, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'A2', 'Ampere', '98', '2023-07-22 10:54:41', '2023-07-22 10:54:41'),
(6, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'A3', 'Ampere', '97', '2023-07-22 10:54:41', '2023-07-22 10:54:41'),
(7, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'W1', 'Watt', '99', '2023-07-22 10:54:41', '2023-07-22 10:54:41'),
(8, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'W2', 'Watt', '98', '2023-07-22 10:54:41', '2023-07-22 10:54:41'),
(9, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'W3', 'Watt', '97', '2023-07-22 10:54:41', '2023-07-22 10:54:41'),
(10, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'E1', 'Kilo Watt hour', '99', '2023-07-22 10:54:41', '2023-07-22 10:54:41'),
(11, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'E2', 'Kilo Watt hour', '98', '2023-07-22 10:54:41', '2023-07-22 10:54:41'),
(12, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'E3', 'Kilo Watt hour', '97', '2023-07-22 10:54:41', '2023-07-22 10:54:41'),
(13, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '1', '1', 'V1 ', 'voltage', '97', '2023-07-22 10:55:31', '2023-07-22 10:55:31'),
(14, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '1', '1', 'A1', 'Ampere', '91', '2023-07-22 10:55:31', '2023-07-22 10:55:31'),
(15, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '1', '1', 'W1', 'Watt', '9.7', '2023-07-22 10:55:31', '2023-07-22 10:55:31'),
(16, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '1', '1', 'E1 ', 'Kilo Watt hour', '25.6', '2023-07-22 10:55:31', '2023-07-22 10:55:31'),
(17, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '1', '1', 'V1 ', 'voltage', '97', '2023-07-22 11:27:23', '2023-07-22 11:27:23'),
(18, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '1', '1', 'A1', 'Ampere', '91', '2023-07-22 11:27:23', '2023-07-22 11:27:23'),
(19, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '1', '1', 'W1', 'Watt', '9.7', '2023-07-22 11:27:23', '2023-07-22 11:27:23'),
(20, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '1', '1', 'E1 ', 'Kilo Watt hour', '25.6', '2023-07-22 11:27:23', '2023-07-22 11:27:23'),
(21, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'V1', 'voltage', '99', '2023-07-22 11:27:34', '2023-07-22 11:27:34'),
(22, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'V2', 'voltage', '98', '2023-07-22 11:27:34', '2023-07-22 11:27:34'),
(23, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'V3', 'voltage', '97', '2023-07-22 11:27:34', '2023-07-22 11:27:34'),
(24, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'A1', 'Ampere', '99', '2023-07-22 11:27:34', '2023-07-22 11:27:34'),
(25, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'A2', 'Ampere', '98', '2023-07-22 11:27:34', '2023-07-22 11:27:34'),
(26, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'A3', 'Ampere', '97', '2023-07-22 11:27:34', '2023-07-22 11:27:34'),
(27, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'W1', 'Watt', '99', '2023-07-22 11:27:34', '2023-07-22 11:27:34'),
(28, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'W2', 'Watt', '98', '2023-07-22 11:27:34', '2023-07-22 11:27:34'),
(29, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'W3', 'Watt', '97', '2023-07-22 11:27:34', '2023-07-22 11:27:34'),
(30, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'E1', 'Kilo Watt hour', '99', '2023-07-22 11:27:34', '2023-07-22 11:27:34'),
(31, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'E2', 'Kilo Watt hour', '98', '2023-07-22 11:27:34', '2023-07-22 11:27:34'),
(32, '1122', '20230313902025', '1', '03-05-2023 06:52:52', '1', '100', '3', '1', 'E3', 'Kilo Watt hour', '97', '2023-07-22 11:27:34', '2023-07-22 11:27:34');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sample_data_table`
--
ALTER TABLE `sample_data_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sample_multi_phase_data_table~`
--
ALTER TABLE `sample_multi_phase_data_table~`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sample_data_table`
--
ALTER TABLE `sample_data_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `sample_multi_phase_data_table~`
--
ALTER TABLE `sample_multi_phase_data_table~`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
