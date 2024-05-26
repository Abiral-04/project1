-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 09:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbcmaintainance`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `service_type` varchar(50) NOT NULL,
  `message` text DEFAULT NULL,
  `booking_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'New'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `customer_name`, `customer_email`, `mobile`, `address`, `service_type`, `message`, `booking_time`, `status`) VALUES
(7, 'sabal kc ', 'email@gmail.cmo', '345621', 'najar 123 ', 'Service 4', 'hello daddy', '2024-05-25 10:33:31', 'Completed'),
(8, 'sabal kc ', 'email@gmail.cmo', '464535', 'najar 123 ', 'Service 2', 'kjthrgas', '2024-05-25 10:36:34', 'Dismissed'),
(9, 'sabal', 'email@gmail.cmo', '534687642', 'aprilla', 'Service 3', 'timi ani merp', '2024-05-25 10:48:09', 'New'),
(10, 'sabal', 'email@gmail.cmo', '1545451215', 'najar 123 ', 'Service 3', 'adfghj', '2024-05-25 11:45:28', 'New'),
(11, 'sabal', 'email@gmail.cmo', '1545451215', 'najar 123 ', 'Service 3', 'adfghj', '2024-05-25 11:46:11', 'New'),
(12, 'sabal', 'email@gmail.cmo', '546132156121', 'najar 123 ', 'Service 1', 'kl', '2024-05-25 11:46:29', 'New'),
(13, 'sabal', 'email@gmail.cmo', '156546654535', 'najar 123 ', 'Service 2', 'sdgdfhf', '2024-05-25 11:49:06', 'New'),
(14, 'sabal', 'email@gmail.cmo', '1234567890123', 'aprilla', 'Service 4', 'hello brother', '2024-05-25 11:58:40', 'New'),
(15, 'sabal', 'email@gmail.cmo', '1234567890', 'najar 123 ', 'Service 1', 'hello guys chai pilo', '2024-05-25 12:12:11', 'New'),
(16, 'sabal kc ', 'email@gmail.cmo', '1234567890', 'najar 123 ', 'Service 1', 'Hello', '2024-05-26 05:10:03', 'New'),
(17, 'sabal', 'email@gmail.cmo', '1234567890', 'najar 123 ', 'Service 2', 'hi abiral', '2024-05-26 05:11:34', 'Dismissed'),
(18, 'sabal', 'email@gmail.cmo', '1234567890', 'najar 123 ', 'Service 4', 'sdfghjk', '2024-05-26 05:13:04', 'New'),
(19, 'sabal kc ', 'email@gmail.cmo', '1234567890', 'najar 123 ', 'Service 1', 'Hello', '2024-05-26 06:24:15', 'New'),
(20, 'sabal kc ', 'email@gmail.cmo', '1234567890', 'najar 123 ', 'Service 1', 'Hello', '2024-05-26 06:24:54', 'New'),
(21, 'sabal kc ', 'email@gmail.cmo', '1234567890', 'najar 123 ', 'Service 1', 'Hello', '2024-05-26 06:27:11', 'New'),
(22, 'sabal kc ', 'email@gmail.cmo', '1234567890', 'najar 123 ', 'Service 1', 'Hello', '2024-05-26 06:45:39', 'New');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
