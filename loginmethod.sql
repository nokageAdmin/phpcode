-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 07:17 AM
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
-- Database: `loginmethod`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Pass_word` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_profile_picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Pass_word`, `firstname`, `lastname`, `birthday`, `sex`, `user_email`, `user_profile_picture`) VALUES
(471172, 'asleee', '123', 'Ashly new', 'Mitra', '2024-05-13', 'Select Sex', '', ''),
(471175, 'username', 'pass', 'jei', 'doe', '2001-01-01', 'Male', '', ''),
(471176, 'Nokage', '1234', 'Nokage', 'Kking', '2024-05-20', 'male', '', ''),
(471178, 'DIYATA', '$2y$10$MOjn4SeVecyE38poBD3Guum0qR0bHe1cW0HYz33Aw9wLW7HL4acG.', 'Diyata', 'Pares', '2012-12-12', 'Male', 'diyatapares@gmail.com', 'uploads/diwata-insert-2-1706780185.jpg'),
(471179, 'DIYATA', '$2y$10$DQIaYU8yDn1Z.t8tAv67LecL47BvnKpP48583dnkptupFMswwRVRe', 'Diyata', 'Pares', '2012-12-12', 'Male', 'diyatapares@gmail.com', 'uploads/diwata-insert-2-1706780185_1716340610.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `user_add_id` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `user_add_street` varchar(255) DEFAULT NULL,
  `user_add_barangay` varchar(255) DEFAULT NULL,
  `user_add_city` varchar(255) DEFAULT NULL,
  `user_add_province` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`user_add_id`, `UserID`, `user_add_street`, `user_add_barangay`, `user_add_city`, `user_add_province`) VALUES
(3, 471172, 'nangahoy', 'sagubatan', 'forest', 'ng mandaluyong'),
(5, 471175, 'street', 'brgy', 'city', 'province'),
(7, 471179, 'balete 123', 'Balete', 'Batangas City (Capital)', 'Region IV-A (CALABARZON)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`user_add_id`),
  ADD KEY `UserID` (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471180;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `user_add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
