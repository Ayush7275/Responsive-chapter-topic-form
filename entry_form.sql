-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2021 at 07:20 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `entry form`
--

-- --------------------------------------------------------

--
-- Table structure for table `neet_chemistry`
--

CREATE TABLE `neet_chemistry` (
  `id` int(11) NOT NULL,
  `chaptorno` int(4) NOT NULL,
  `chaptorname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `neet_chemistry`
--

INSERT INTO `neet_chemistry` (`id`, `chaptorno`, `chaptorname`) VALUES
(4, 12, 'Molecules'),
(5, 2, 'qwerty'),
(6, 100, 'jj'),
(7, 12, 'Molecules'),
(8, 12, 'eeeee');

-- --------------------------------------------------------

--
-- Table structure for table `neet_chemistry_topics`
--

CREATE TABLE `neet_chemistry_topics` (
  `id` int(11) NOT NULL,
  `chaptorno` int(4) NOT NULL,
  `chaptorname` varchar(30) NOT NULL,
  `topicno` int(4) NOT NULL,
  `topicname` varchar(30) NOT NULL,
  `myfile` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `neet_chemistry_topics`
--

INSERT INTO `neet_chemistry_topics` (`id`, `chaptorno`, `chaptorname`, `topicno`, `topicname`, `myfile`) VALUES
(109, 12, 'Molecules', 3, 'Behavior of Molecules', 0x636f64772e747874),
(110, 2, 'qwerty', 2, 'asdfg', 0x44656661756c742e6a7067),
(111, 100, 'jj', 0, 'jj', 0x636f64772e747874),
(112, 12, 'Molecules', 2, 'state of molecules', 0x4162737472616374322e6a7067),
(113, 12, 'eeeee', 12, 'amiya', 0x6d79666f726d2e68746d6c);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `neet_chemistry`
--
ALTER TABLE `neet_chemistry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `neet_chemistry_topics`
--
ALTER TABLE `neet_chemistry_topics`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `neet_chemistry`
--
ALTER TABLE `neet_chemistry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `neet_chemistry_topics`
--
ALTER TABLE `neet_chemistry_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
