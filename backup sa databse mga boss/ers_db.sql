-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 09:35 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ers_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_registrar`
--

CREATE TABLE `assigned_registrar` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assigned_registrar`
--

INSERT INTO `assigned_registrar` (`id`, `event_id`, `user_id`) VALUES
(6, 1, 2),
(7, 1, 3),
(8, 6, 5),
(9, 6, 4),
(10, 5, 5),
(11, 5, 4),
(12, 4, 5),
(13, 4, 4),
(14, 3, 5),
(15, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `attendees`
--

CREATE TABLE `attendees` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Awaiting/Absent=1=Present',
  `date_created` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendees`
--

INSERT INTO `attendees` (`id`, `event_id`, `firstname`, `lastname`, `middlename`, `contact`, `gender`, `email`, `address`, `status`, `date_created`) VALUES
(2, 1, 'Mike', 'Williams', 'G', '+18456-5455-55', 'Male', 'mwilliams@sample.com', 'Sample Address', 1, 2147483647),
(3, 1, 'adsasd', 'asda', 'asda', '+14526-5455-44', 'Male', 'cblake@sample.com', 'asdasdasdasd', 1, 2147483647),
(4, 3, 'Clint ', 'Amihan', '', '01923123123', 'Male', 'admin@admin.com', 'alksdjalsj', 0, 2147483647),
(5, 3, 'Dave', 'Davide', '', '0129312309', 'Male', 'lejrwlerj@mgaisl.com', 'ijeqowjeqwe', 0, 2147483647),
(6, 3, 'Vince', 'Aratan', '', '012391239123', 'Male', 'ejr@gmail.com', 'powiweq', 0, 2147483647),
(7, 3, 'John', 'Gingo', '', '01923123', 'Male', 'oqk@gmail.com', '-019owqje', 0, 2147483647),
(8, 3, 'Ryan', 'Carrillo', '', '01923102321', 'Male', 'lkqwe@gmail.com', 'iwejqwej', 0, 2147483647),
(9, 3, 'Christian Dave', 'Bucio', '', '092820934234', 'Male', 'jkh@gmail.com', 'weirjwij', 0, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `event_datetime` datetime NOT NULL,
  `event` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `venue` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Pending, 1=Open,2=Done',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_datetime`, `event`, `description`, `venue`, `status`, `date_created`) VALUES
(3, '2023-06-20 15:31:00', 'Date ni Jezer', 'Lorem Ipsum', 'AMA', 1, '2023-06-20 15:31:12'),
(4, '2023-06-20 15:31:00', 'Smapewleq', 'ASKLDJALSD', 'APSODASD', 1, '2023-06-20 15:31:30'),
(5, '2023-06-20 15:31:00', 'EVENT', 'TEST MGA BOSS', 'TESTTTTTTT', 1, '2023-06-20 15:31:49'),
(6, '2023-06-20 15:32:00', 'VENUE TESTTTT', 'ASDKLASKD', 'TESTTTTTTTTT', 1, '2023-06-20 15:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Admin,2= users',
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'Admin', 'Admin', '', '+12354654787', 'Sample', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, '', '2020-11-11 15:35:19'),
(4, 'Vince', 'Aratan', 'Fabre', '09271624130', 'P-1 Mahay', 'vince@gmail.com', 'fd88245d4b96da96e20dd52eb6234152', 2, '1687246140_Roboute_Guilliman.webp', '2023-06-20 15:29:47'),
(5, 'Jezer', 'Abella', 'S', '01923123123', 'California kay rich', 'jezer@gmail.com', 'fd88245d4b96da96e20dd52eb6234152', 2, '1687246200_temp.jpg', '2023-06-20 15:30:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_registrar`
--
ALTER TABLE `assigned_registrar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendees`
--
ALTER TABLE `attendees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_registrar`
--
ALTER TABLE `assigned_registrar`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `attendees`
--
ALTER TABLE `attendees`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
