-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2021 at 08:13 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `dept` varchar(10) DEFAULT NULL,
  `college` varchar(10) DEFAULT NULL,
  `mark1` int(11) DEFAULT NULL,
  `mark2` int(11) DEFAULT NULL,
  `mark3` int(11) DEFAULT NULL,
  `mark4` int(11) DEFAULT NULL,
  `mark5` int(11) DEFAULT NULL,
  `total_mark` text DEFAULT NULL,
  `average` int(4) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `dept`, `college`, `mark1`, `mark2`, `mark3`, `mark4`, `mark5`, `total_mark`, `average`, `grade`) VALUES
(1, 'surya', 'mech', 'mech', 98, 87, 98, 87, 98, '468', 93, 'A'),
(2, 'raja', 'ece', 'tjs', 87, 87, 54, 87, 87, '402', 80, 'A'),
(3, 'santosh', 'eee', 'arts', 85, 85, 85, 65, 65, '384', 77, 'B'),
(4, 'ram', 'cse', 'rrm', 98, 98, 98, 98, 98, '490', 98, 'A'),
(5, 'sam', 'it', 'anna', 45, 78, 45, 12, 45, '225', 45, 'B'),
(6, 'kumar', 'mech', 'eee', 78, 45, 98, 98, 98, '417', 83, 'A'),
(7, 'nisha', 'cse', 'cse', 78, 87, 87, 45, 65, '362', 72, 'B'),
(8, 'priya', 'cse', 'cse', 78, 45, 12, 78, 45, '258', 51, 'B'),
(9, 'Neela', 'ece', 'ece', 98, 98, 98, 98, 98, '490', 98, 'A'),
(10, 'nikil', 'eee', 'sss', 87, 87, 78, 56, 96, '404', 80, 'B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
