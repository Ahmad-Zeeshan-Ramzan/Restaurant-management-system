-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 12:44 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project21`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(200) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `NAME`, `EMAIL`, `PASSWORD`, `image`) VALUES
(5, 'Zeeshan', 'zesshan92322@gmail.com', '123456', 'images/zeeshan.png'),
(6, 'Bilal', 'bilal@hotmail.com', '123', 'images/bilal.png'),
(7, 'abdulmanan', 'abdulmana123@gmail.com', '12345', 'images/whatsapp image 2021-05-23 at 4.22.43 pm.jpg'),
(8, 'Ahmad', 'zileme@autowb.com', '1234', 'images/burger.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `PRICE` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `NAME`, `TYPE`, `PRICE`, `image`) VALUES
(9, 'Coffee', 'Starter', '$1.5', 'images/coffee.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `ID` int(200) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `EMAIL` varchar(200) NOT NULL,
  `PHONE` varchar(200) NOT NULL,
  `DATE` varchar(200) NOT NULL,
  `TIME` varchar(200) NOT NULL,
  `PERSON` varchar(50) NOT NULL,
  `MESSAGE` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`ID`, `NAME`, `EMAIL`, `PHONE`, `DATE`, `TIME`, `PERSON`, `MESSAGE`) VALUES
(33, 'Anas', 'anas@gmail.com', '03012345678', '24/02/2021', '10:00 AM', '2', 'okay...'),
(34, 'Ahmad', 'zileme@autowb.com', '03012345678', '23/02/2021', '09:00 PM', '8', 'okay');

-- --------------------------------------------------------

--
-- Table structure for table `special`
--

CREATE TABLE `special` (
  `ID` int(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `PRICE` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `special`
--

INSERT INTO `special` (`ID`, `NAME`, `PRICE`, `DESCRIPTION`, `image`) VALUES
(8, 'Chicken Karahi', '$4.7', 'Pakistani Desi Food', 'images/karahi.jpg'),
(9, 'Kabab', '$3', 'Pakistani Desi Food', 'images/kabab.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `special`
--
ALTER TABLE `special`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `special`
--
ALTER TABLE `special`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
