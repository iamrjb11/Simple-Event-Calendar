-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2017 at 07:53 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calendar`
--

-- --------------------------------------------------------

--
-- Table structure for table `news_info`
--

CREATE TABLE `news_info` (
  `news_id` int(11) NOT NULL,
  `news_heading` varchar(100) DEFAULT NULL,
  `news_details` varchar(200) DEFAULT NULL,
  `news_image` varchar(100) DEFAULT NULL,
  `news_catagory` varchar(100) DEFAULT NULL,
  `news_reporter` varchar(100) DEFAULT NULL,
  `news_date` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_info`
--

INSERT INTO `news_info` (`news_id`, `news_heading`, `news_details`, `news_image`, `news_catagory`, `news_reporter`, `news_date`) VALUES
(1, 'FIFA 2018', 'Its a good game all we know', './uploads/4.jpg', 'Sports', 'Sumona', '02-11-2017'),
(2, 'ICC World Cup', 'Big Game tonight.Must watch.', './uploads/5.jpg', 'Sports', 'Shuli', '05-11-2017'),
(3, 'Home Automation', 'Its a good topic for thesis.Its based on hardware.', './uploads/3.jpg', 'Research', 'Aysha', '08-11-2017'),
(4, 'SRK Birthday', 'Its a big day for all SRK fans.', './uploads/1.jpg', 'Events', 'Hasan', '18-12-2017'),
(5, 'US woman accused', 'US woman accused of trying to overthrow Zimbabwe government', './uploads/6.jpg', 'International', 'Rahul', '25-01-2018'),
(6, 'Off Topic', 'Stay until.', './uploads/coins.png', 'Others', 'Shofiq', '29-12-2017');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news_info`
--
ALTER TABLE `news_info`
  ADD PRIMARY KEY (`news_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news_info`
--
ALTER TABLE `news_info`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
