-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 25, 2021 at 05:32 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'adriya', 'nitk', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(13, 2, 'lll@gmail.com', '2021-03-04', '2021-03-22', '2021-03-06 16:35:44', 0, NULL, NULL),
(14, 1, 'lll@gmail.com', '2021-03-04', '2021-03-03', '2021-03-07 01:28:48', 0, NULL, NULL),
(15, 6, 'lll@gmail.com', '2021-03-05', '2021-03-01', '2021-03-09 16:23:19', 0, NULL, NULL),
(19, 1, 'shahriya@gmail.com', '2021-03-19', '2021-03-18', '2021-03-21 13:03:13', 2, 'u', '2021-03-21 13:03:40'),
(20, 2, 'shahriya@gmail.com', '2021-03-21', '2021-03-30', '2021-03-21 13:14:11', 0, NULL, NULL),
(21, 3, 'shahriya@gmail.com', '2021-03-13', '2021-03-24', '2021-03-21 13:54:04', 0, NULL, NULL),
(22, 2, 'shahriya@gmail.com', '2021-03-09', '2021-03-01', '2021-03-26 14:04:40', 0, NULL, NULL),
(23, 1, 'shahriya@gmail.com', '2021-03-24', '2021-03-01', '2021-03-28 12:08:12', 0, NULL, NULL),
(24, 2, 'shahriya@gmail.com', '2021-03-09', '2021-03-01', '2021-03-31 06:29:10', 0, NULL, NULL),
(25, 1, 'shahriya@gmail.com', '2021-03-05', '2021-03-03', '2021-03-31 09:37:38', 0, NULL, NULL),
(26, 1, 'shahriya@gmail.com', '2021-03-31', '2021-03-31', '2021-03-31 09:38:25', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(3, 'Aboutus', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Can find packages of all over the world. Easy and convenient&nbsp;booking. Books everything from travel to food.&nbsp;</span></div>				'),
(11, 'contact', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">For any issues contact us at 9011309245</span></div>');

-- --------------------------------------------------------

--
-- Table structure for table `tblreview`
--

CREATE TABLE `tblreview` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Package` varchar(100) DEFAULT NULL,
  `Review` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblreview`
--

INSERT INTO `tblreview` (`id`, `FullName`, `EmailId`, `Package`, `Review`, `PostingDate`, `Status`) VALUES
(1, 'Riyaa', 'riyashhhh@', 'Kerala', 'niceeee', '2021-03-20 09:07:38', NULL),
(3, 'kok', 'jjj@gmail.com', 'Kerala', 'koko', '2021-03-21 09:44:22', NULL),
(4, 'rrshah', 'shahriya@gmail.com', 'Manali', 'veryyy nicee enjoyed a lot', '2021-03-31 09:20:14', NULL),
(5, 'Riyaa', 'shahriya@gmail.com', 'Kerala', 'was very good', '2021-03-31 09:39:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Manali Trip ', 'General', 'Kullu Manali India', 7000, 'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer', '10 days tours, include adventure trips etc ', 'manali.jpg', '2017-05-13 14:23:44', '2021-03-07 09:05:10'),
(2, 'Shimla ', 'Shimla ', 'Shimla ', 10000, '3 days visiting tour ', ' 3 days visiting tour ', 'Shimla.jpeg', '2017-05-13 15:24:26', '2021-03-07 09:05:22'),
(3, 'Dubai ', 'Dubai ', '7-8 days ', 50000, 'hotel,travel everything included ', 'hotel,travel everything included ', 'Dubai.jpeg', '2017-05-13 16:00:58', '2021-03-07 09:05:34'),
(4, 'Kerala', 'Family and Couples', 'Kerala ', 20000, 'Meals, Sightseeing hotels, flights ', 'Meals, Sightseeing hotels, flights ', 'images.jpg', '2017-05-13 22:39:37', '2021-03-07 09:05:53'),
(5, 'Coorg : Tour Packages', 'General', 'Coorg', 25000, 'Sightseeing, Hotel, Travel, Free-wifi,food', 'A 4 day tour to coorg which includes \r\nSightseeing\r\n, Hotel, Travel, Free-wifi,food', 'coorg-hill-station1.jpg', '2017-05-13 22:42:10', '2021-03-07 09:06:05'),
(6, 'Indonesia', 'Family', 'Indonesia', 80000, 'Frree wifi, pickup and drop etc', 'A 7 day tour to Indonesia, which includes everything sightseeing, adventure activities', 'Indonesia.jpg', '2017-05-14 08:01:08', '2021-03-07 09:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(13, 'RiyaShah', '8888000023', 'lll@gmail.com', 'nitk', '2021-03-06 15:49:39', NULL),
(17, 'Riya', '9011234983', 'shahriya@gmail.com', 'reopen', '2021-03-21 12:59:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreview`
--
ALTER TABLE `tblreview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblreview`
--
ALTER TABLE `tblreview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
