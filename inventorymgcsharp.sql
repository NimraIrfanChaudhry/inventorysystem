-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2023 at 05:19 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventorymgcsharp`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_tb`
--

CREATE TABLE `login_tb` (
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_tb`
--

INSERT INTO `login_tb` (`Username`, `Password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `details` varchar(5000) NOT NULL,
  `price` varchar(50) NOT NULL,
  `paid` varchar(30) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user`, `details`, `price`, `paid`) VALUES
(4, 'roose', 'Model 2 Head Light manufactured 511*2', '511', 'no'),
(5, 'roose', 'Model 1 Battery imported 224*1', '224', 'cancelled'),
(6, 'roose', 'Model 5 Steering Wheel imported 339*1', '339', 'cancelled'),
(7, 'demoaccount', 'DemoModel Demo Parts imported 255*3\r\n', '765', 'cancelled'),
(8, 'christine', 'Model 2 Seat Belt imported 88*1\r\n', '88', 'yes'),
(9, 'estela', 'Model 1 Spoiler imported 190*2\r\n', '380', 'yes'),
(10, 'robert', 'Model 1 Decklid imported 499*1\r\n', '499', 'yes'),
(11, 'jimmy', 'Model 3 Muffler manufactured 830*1\r\n', '830', 'yes'),
(12, 'cath', 'Model 4 Battery imported 201*1\r\n', '201', 'cancelled'),
(13, 'warren', 'Model 2 Seat Belt imported 88*2\r\n', '176', 'no'),
(14, 'sacco', 'Model 2 Gear Lever imported 401*1\r\n', '401', 'no'),
(15, 'demoaccount', 'Model 7 Indicator Lights imported 149*2\r\n', '298', 'yes'),
(16, 'demoaccount', 'Model 6 Dashcam imported 266*1\r\n', '266', 'yes'),
(17, 'admin', 'Model 1 Speedometer imported 216*1\r\n', '216', 'no'),
(24, 'admin', 'Model 1Batteryimported244*1\r\n', '244', 'no'),
(25, 'user', 'Model 1Batteryimported244*1\r\n', '244', 'yes'),
(26, 'admin', 'Model 1Batteryimported244*1\r\n', '244', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `spareparts`
--

CREATE TABLE `spareparts` (
  `id` int(11) NOT NULL,
  `model` varchar(100) NOT NULL,
  `part` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `instock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spareparts`
--

INSERT INTO `spareparts` (`id`, `model`, `part`, `type`, `price`, `instock`) VALUES
(3, 'Model 1', 'Speedometer', 'imported', '216', 2),
(4, 'Model 2', 'Head Light', 'manufactured', '511', 5),
(5, 'Model 3', 'Head Light', 'imported', '339', 3),
(7, 'Model 2', 'Gear Lever', 'imported', '401', 33),
(8, 'Model 2', 'Seat Belt', 'imported', '88', 20),
(9, 'Model 4', 'Battery', 'imported', '201', 33),
(11, 'Model 1', 'Battery', 'imported', '244', 9),
(12, 'Model 3', 'Muffler', 'manufactured', '830', 22),
(14, 'Model 5', 'Steering Wheel', 'imported', '339', 2),
(15, 'DemoModel', 'Demo Parts', 'imported', '255', 82),
(16, 'Model 6', 'Dashcam', 'imported', '266', 34),
(17, 'Model 2', 'Airbag Sensors', 'imported', '560', 16),
(18, 'Model 1', 'Spoiler', 'imported', '190', 50),
(19, 'Model 1', 'Decklid', 'imported', '499', 10),
(20, 'Model 3', 'Speedometer', 'imported', '159', 25),
(21, 'Model 5', 'Bonnet/hood', 'imported', '579', 15),
(22, 'Model 7', 'Indicator Lights', 'imported', '149', 61),
(23, 'Mode8', 'Power-Batery', 'imported', '200', 50);

-- --------------------------------------------------------

--
-- Table structure for table `userlogin_tb`
--

CREATE TABLE `userlogin_tb` (
  `ID` int(50) NOT NULL,
  `FirstN` varchar(50) DEFAULT NULL,
  `LastN` varchar(50) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `PhoneNumber` varchar(50) DEFAULT NULL,
  `Password` varchar(50) NOT NULL,
  `Usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlogin_tb`
--

INSERT INTO `userlogin_tb` (`ID`, `FirstN`, `LastN`, `Username`, `PhoneNumber`, `Password`, `Usertype`) VALUES
(1, 'user', 'one', 'user', '+685246921', 'user', 'member'),
(2, 'Lu', 'Shaw', 'user2', '+65985647235', 'user2', 'member'),
(3, 'herry', 'kene', 'user3', '+569842365', 'user3', 'member'),
(4, 'user', 'five', 'user5', '+569845723', 'user5', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spareparts`
--
ALTER TABLE `spareparts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogin_tb`
--
ALTER TABLE `userlogin_tb`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `spareparts`
--
ALTER TABLE `spareparts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `userlogin_tb`
--
ALTER TABLE `userlogin_tb`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
