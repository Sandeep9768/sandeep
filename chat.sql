-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 06, 2019 at 03:22 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `from_user_id` varchar(45) DEFAULT NULL,
  `to_user_id` varchar(45) DEFAULT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `message`) VALUES
(1, '2', '1', 'hiiiii'),
(2, '1', '2', 'hiii'),
(3, '2', '1', '\nwts bro'),
(4, '1', '2', '\nm fi9 n u'),
(5, '2', '1', 'hiii\n'),
(6, '2', '1', '\nhiii'),
(7, '2', '1', '\njjj'),
(8, '2', '1', '\nhiii rahul'),
(9, '1', '2', 'hii rahul'),
(10, '2', '1', '\nhiii sandeep'),
(11, '1', '2', 'hhh'),
(12, '1', '2', 'gggg\n'),
(13, '1', '2', '\nhiiii'),
(14, '1', '4', '\nhiiii'),
(15, '4', '1', 'hello'),
(16, '2', '4', 'iii'),
(17, '1', '4', '\nhhh'),
(18, '4', '1', 'hiiii'),
(19, '1', '4', '\nhero ban rahaa hai'),
(20, '2', '5', 'hii sandeep'),
(21, '5', '2', 'bol bhai'),
(22, '2', '1', 'hiiii'),
(23, '1', '2', 'boll'),
(24, '2', '1', 'HHHH'),
(25, '1', '2', 'g');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `online` enum('N','Y') NOT NULL,
  `socketid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `online`, `socketid`) VALUES
(1, 'sandeep', '12345', 'Y', 'jgNq0kiOFdYx9LjoAAAD'),
(2, 'rahul', '123456789', 'Y', 'mqMHXnpLMXUY26NwAAAE'),
(3, 'fwf', 'fwe', 'N', ''),
(4, 'praful', '123456789', 'N', ''),
(5, 'sandeep', '12345', 'N', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
