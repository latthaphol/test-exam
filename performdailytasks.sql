-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 07:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `performdailytasks`
--

-- --------------------------------------------------------

--
-- Table structure for table `performdailytasks`
--

CREATE TABLE `performdailytasks` (
  `task_id` int(11) NOT NULL,
  `task_type` varchar(50) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `performdailytasks`
--

INSERT INTO `performdailytasks` (`task_id`, `task_type`, `task_name`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Development', 'work2', '2024-05-24 23:36:59', '2024-05-30 23:37:00', 'ดำเนินการ', '2024-05-23 23:37:43', '2024-05-23 23:37:43'),
(10, 'Document', 'work3', '2024-05-25 23:36:59', '2024-05-31 23:37:00', 'ดำเนินการ', '2024-05-23 23:37:59', '2024-05-23 23:37:59'),
(11, 'Test', 'work4', '2024-05-26 23:36:59', '2024-05-31 23:37:00', 'ดำเนินการ', '2024-05-23 23:38:19', '2024-05-23 23:38:19'),
(12, 'Test', 'work5', '2024-05-27 23:36:59', '2024-05-31 23:37:00', 'ดำเนินการ', '2024-05-23 23:38:33', '2024-05-23 23:38:33'),
(13, 'Development', 'work1', '2024-05-24 00:04:22', '2024-05-24 00:05:00', 'ดำเนินการ', '2024-05-24 00:05:55', '2024-05-24 00:05:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `performdailytasks`
--
ALTER TABLE `performdailytasks`
  ADD PRIMARY KEY (`task_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `performdailytasks`
--
ALTER TABLE `performdailytasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
