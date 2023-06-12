-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 12, 2023 at 09:52 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
CREATE TABLE IF NOT EXISTS `car` (
  `carID` int NOT NULL AUTO_INCREMENT,
  `typelabel` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `brand` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `model` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `time` time NOT NULL,
  `officeID` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  UNIQUE KEY `date` (`carID`),
  UNIQUE KEY `carID` (`carID`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`carID`, `typelabel`, `brand`, `model`, `color`, `time`, `officeID`, `description`) VALUES
(19, 'هیبرید', 'بی ام و ', '530i', 'red', '10:37:00', 2, ''),
(20, 'هیبرید', 'audi', 'TT', 'red', '05:23:00', 2, ''),
(21, 'بنزین', 'جیپ', 'گرند چروکی', 'قرمز', '08:40:00', 2, ''),
(22, 'بنزین', 'bmw', '760li', 'red', '12:24:00', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `car_tpe`
--

DROP TABLE IF EXISTS `car_tpe`;
CREATE TABLE IF NOT EXISTS `car_tpe` (
  `typeID` int NOT NULL AUTO_INCREMENT,
  `typelabel` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `typedescr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `car_tpe`
--

INSERT INTO `car_tpe` (`typeID`, `typelabel`, `typedescr`) VALUES
(1, 'برقی', 'بدون بنزین کار میکند'),
(2, 'هیبرید', 'هم با بنزین کار میکند هم با برق'),
(3, 'بنزین', 'با بنزین کار میکند'),
(4, 'دیزل', 'با گازوییل کار میکند');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `carID` int NOT NULL,
  `user_id` int NOT NULL,
  `parentid` int NOT NULL,
  `Fname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `post` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `date` date NOT NULL,
  `Email` text COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Fname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `Lname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `city` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_persian_ci NOT NULL,
  `Email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `phonenumber` int NOT NULL,
  `State` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `brithdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `Fname`, `Lname`, `status`, `city`, `password`, `Email`, `phonenumber`, `State`, `brithdate`) VALUES
(1, 'ali ', 'ansari', 'active', 'isfahan', '', '', 0, '', '0000-00-00'),
(2, 'John', 'zahedi', 'Active', '', '', '', 0, '', '0000-00-00'),
(0, 'dwdwd', 'dwwdwd', 'Active', 'dwdwd', '1123', 'wddqwd@gmail.com', 2147483647, '', '2023-05-29'),
(12, 'Hasan', 'Zahedi', 'DeActive', '', '', '', 0, '', '0000-00-00'),
(13, 'مهدی', 'زاهدی', '', '', 'password', 'Email', 0, '', '0000-00-00'),
(14, 'dwdwd', 'dwwdwd', '', 'dwdwd', '1123', 'wddqwd@gmail.com', 2147483647, '', '2023-05-29'),
(15, 'asd', 'd', '', 'dsss', 'qswswwswws', 'xxwdx@gmail.com', 132, '', '2023-06-27'),
(16, 'aaasdf', 'asxdcfv', '', 'ASDCV', 'qwqerthy', 'ASDCFVB@gmail.com', 12345, '', '2023-06-27'),
(21, 'mahsa', 'ahmadi', '', 'tehran', 'Mahdi@1382', 'Mahdi@gmail.com', 91245223, '', '2008-06-09'),
(28, 'احمد', 'زاهدی', '', 'تهران', 'ءشایه@1382', 'zahedi138@gmail.com', 2147483647, '', '2023-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

DROP TABLE IF EXISTS `office`;
CREATE TABLE IF NOT EXISTS `office` (
  `officeID` int NOT NULL AUTO_INCREMENT,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `Address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_persian_ci NOT NULL,
  `Phone` int NOT NULL,
  PRIMARY KEY (`officeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `reservationID` int NOT NULL AUTO_INCREMENT,
  `carID` int NOT NULL,
  `customerID` int NOT NULL,
  `officeID` int NOT NULL,
  `returndate` date NOT NULL,
  `pickupdate` date NOT NULL,
  `returnlocationID` int NOT NULL,
  `amount` text COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`reservationID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservationID`, `carID`, `customerID`, `officeID`, `returndate`, `pickupdate`, `returnlocationID`, `amount`) VALUES
(1, 15, 12, 2, '2023-06-04', '2023-06-13', 2, '12'),
(2, 18, 12, 2, '2023-06-05', '2023-06-05', 2, '12روز'),
(3, 18, 12, 2, '2023-06-05', '2023-06-05', 2, '12روز'),
(4, 15, 12, 2, '2023-06-05', '2023-06-06', 2, '12'),
(5, 21, 14, 2, '2023-05-29', '2023-06-04', 2, '12روز');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
