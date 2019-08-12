-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 03, 2019 at 04:55 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Assignment5`
--

-- --------------------------------------------------------

--
-- Table structure for table `Ass5`
--

CREATE TABLE `Ass5` (
  `id` int(30) NOT NULL,
  `theDate` varchar(10) NOT NULL,
  `name` varchar(33) NOT NULL,
  `URL` varchar(33) NOT NULL,
  `theDesc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ass5`
--

INSERT INTO `Ass5` (`id`, `theDate`, `name`, `URL`, `theDesc`) VALUES
(2, '02-05-2019', 'ww', 'ww', ''),
(3, '02-05-2019', 'ee', 'ee', ''),
(4, '03-05-2019', 't', 't', ''),
(5, '03-05-2019', 't', 't', 'rfgvbwer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Ass5`
--
ALTER TABLE `Ass5`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Ass5`
--
ALTER TABLE `Ass5`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
