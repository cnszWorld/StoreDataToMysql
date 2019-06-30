-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 30, 2019 at 03:30 PM
-- Server version: 5.7.23
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `commodityCatalog`
--

CREATE TABLE `commodityCatalog` (
  `commodityID` int(12) NOT NULL,
  `commodity` varchar(12) NOT NULL,
  `model` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL,
  `description` varchar(48) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `orderID` int(12) NOT NULL,
  `phoneNumber` int(12) NOT NULL,
  `customerName` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customerAddress`
--

CREATE TABLE `customerAddress` (
  `orderID` int(12) NOT NULL,
  `phoneNumber` int(12) NOT NULL,
  `province` varchar(20) NOT NULL,
  `city` varchar(16) NOT NULL,
  `region` varchar(16) NOT NULL,
  `street` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_message`
--

CREATE TABLE `customer_message` (
  `orderID` int(12) NOT NULL,
  `message` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orderItems`
--

CREATE TABLE `orderItems` (
  `orderID` int(12) NOT NULL,
  `commodity` varchar(12) NOT NULL,
  `model` varchar(8) NOT NULL,
  `color` varchar(6) NOT NULL,
  `qty` int(5) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`orderID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
