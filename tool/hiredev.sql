-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2021 at 02:06 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hiredev`
--

-- --------------------------------------------------------

--
-- Table structure for table `devapplications`
--

CREATE TABLE `devapplications` (
  `appID` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET latin1 NOT NULL,
  `contact` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `devapplications`
--

INSERT INTO `devapplications` (`appID`, `name`, `contact`, `email`) VALUES
(9, 'Arif', '+8801551624231', 'af@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `devs`
--

CREATE TABLE `devs` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `contact` varchar(50) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `specialty` varchar(200) CHARACTER SET latin1 NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `devs`
--

INSERT INTO `devs` (`id`, `name`, `email`, `contact`, `description`, `specialty`, `join_date`) VALUES
(9, 'Ariful Hasan Khan', 'akt@gmail.com', '+8801716437323', 'More than 5 years of experience in front-end and back-end frameworks.', 'Full Stack Web Developer', '2021-09-04 22:53:32'),
(10, 'Hasanath Jamy', 'hj@gmail.com', '+8801951564221', 'Experienced with java, android studio and react native.', 'Android App Developer', '2021-09-04 22:55:08'),
(11, 'Nagib MD Sarfaraz', 'ng@gmail.com', '+8801551024231', 'Experienced with ERP systems like Oracle JDE, ServiceNow.', 'System Developer', '2021-09-04 22:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `hirerecord`
--

CREATE TABLE `hirerecord` (
  `recordID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `devID` int(11) NOT NULL,
  `orderdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hirerecord`
--

INSERT INTO `hirerecord` (`recordID`, `userID`, `devID`, `orderdate`) VALUES
(12, 49, 9, '2021-09-09 16:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `hires`
--

CREATE TABLE `hires` (
  `hireID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `devID` int(11) NOT NULL,
  `orderdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hires`
--

INSERT INTO `hires` (`hireID`, `userID`, `devID`, `orderdate`) VALUES
(12, 49, 9, '2021-09-09 16:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'U',
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `contact`, `email`, `password`, `type`, `createdate`) VALUES
(7, 'Main Admin', '+8801791029323', 'admin@gmail.com', '$2y$12$JeOpo3aJNBzPCv2M33NizODaKIjoglPkNmfIIL96a1WMTOZDrHlBW', 'A', '2020-04-21 10:54:26'),
(49, 'Rahman Ali', '+11121721029', 'vv@gmail.com', '$2y$12$dJz41DgPBxBF9E9HYBLr0O0TxxeClpgsmkyy.OYmaXUPGnmzWZpP.', 'U', '2021-09-04 23:26:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devapplications`
--
ALTER TABLE `devapplications`
  ADD PRIMARY KEY (`appID`);

--
-- Indexes for table `devs`
--
ALTER TABLE `devs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hirerecord`
--
ALTER TABLE `hirerecord`
  ADD PRIMARY KEY (`recordID`);

--
-- Indexes for table `hires`
--
ALTER TABLE `hires`
  ADD PRIMARY KEY (`hireID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `devapplications`
--
ALTER TABLE `devapplications`
  MODIFY `appID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `devs`
--
ALTER TABLE `devs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hirerecord`
--
ALTER TABLE `hirerecord`
  MODIFY `recordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hires`
--
ALTER TABLE `hires`
  MODIFY `hireID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
