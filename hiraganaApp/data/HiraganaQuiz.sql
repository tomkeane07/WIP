-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 10, 2019 at 12:27 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HiraganaTutor`
--

-- --------------------------------------------------------

--
-- Table structure for table `HiraganaQuiz`
--

CREATE TABLE `HiraganaQuiz` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `ID` int(11) NOT NULL,
  `RKattempts` int(11) NOT NULL,
  `KRattempts` int(11) NOT NULL,
  `RKscoreAvg` int(11) NOT NULL DEFAULT '0',
  `KRscoreAvg` int(11) NOT NULL DEFAULT '0',
  `a` int(11) NOT NULL,
  `e` int(11) NOT NULL,
  `i` int(11) NOT NULL,
  `o` int(11) NOT NULL,
  `u` int(11) NOT NULL,
  `ha` int(11) NOT NULL,
  `he` int(11) NOT NULL,
  `hi` int(11) NOT NULL,
  `ho` int(11) NOT NULL,
  `hu` int(11) NOT NULL,
  `ka` int(11) NOT NULL,
  `ke` int(11) NOT NULL,
  `ki` int(11) NOT NULL,
  `ko` int(11) NOT NULL,
  `ku` int(11) NOT NULL,
  `ma` int(11) NOT NULL,
  `me` int(11) NOT NULL,
  `mi` int(11) NOT NULL,
  `mo` int(11) NOT NULL,
  `mu` int(11) NOT NULL,
  `n` int(11) NOT NULL,
  `na` int(11) NOT NULL,
  `ne` int(11) NOT NULL,
  `ni` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `nu` int(11) NOT NULL,
  `ra` int(11) NOT NULL,
  `re` int(11) NOT NULL,
  `ri` int(11) NOT NULL,
  `ro` int(11) NOT NULL,
  `ru` int(11) NOT NULL,
  `sa` int(11) NOT NULL,
  `se` int(11) NOT NULL,
  `si` int(11) NOT NULL,
  `so` int(11) NOT NULL,
  `su` int(11) NOT NULL,
  `ta` int(11) NOT NULL,
  `te` int(11) NOT NULL,
  `ti` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `tu` int(11) NOT NULL,
  `wa` int(11) NOT NULL,
  `wo` int(11) NOT NULL,
  `ya` int(11) NOT NULL,
  `yo` int(11) NOT NULL,
  `yu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HiraganaQuiz`
--

INSERT INTO `HiraganaQuiz` (`username`, `password`, `ID`, `RKattempts`, `KRattempts`, `RKscoreAvg`, `KRscoreAvg`, `a`, `e`, `i`, `o`, `u`, `ha`, `he`, `hi`, `ho`, `hu`, `ka`, `ke`, `ki`, `ko`, `ku`, `ma`, `me`, `mi`, `mo`, `mu`, `n`, `na`, `ne`, `ni`, `no`, `nu`, `ra`, `re`, `ri`, `ro`, `ru`, `sa`, `se`, `si`, `so`, `su`, `ta`, `te`, `ti`, `to`, `tu`, `wa`, `wo`, `ya`, `yo`, `yu`) VALUES
('tomkeane', 'abc', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `HiraganaQuiz`
--
ALTER TABLE `HiraganaQuiz`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `Username` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
