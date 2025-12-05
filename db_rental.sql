-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 11:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ad`
--

CREATE TABLE `tbl_ad` (
  `adId` int(11) NOT NULL,
  `adTitle` varchar(255) NOT NULL,
  `adImg` varchar(255) NOT NULL,
  `catId` varchar(255) NOT NULL,
  `adDate` date DEFAULT NULL,
  `builtYear` varchar(255) NOT NULL,
  `adDetails` text NOT NULL,
  `adArea` varchar(255) NOT NULL,
  `adAddress` text NOT NULL,
  `adSize` varchar(255) NOT NULL,
  `totalFloor` varchar(255) NOT NULL,
  `totalUnit` varchar(255) NOT NULL,
  `totalRoom` varchar(255) NOT NULL,
  `totalBed` varchar(255) NOT NULL,
  `totalBath` varchar(255) NOT NULL,
  `attachBath` varchar(255) NOT NULL,
  `commonBath` varchar(255) NOT NULL,
  `totalBelcony` varchar(255) NOT NULL,
  `floorNo` varchar(255) NOT NULL,
  `floorType` varchar(255) NOT NULL,
  `prefferedRenter` text NOT NULL,
  `liftElevetor` varchar(255) NOT NULL,
  `adGenerator` varchar(255) NOT NULL,
  `adWifi` varchar(255) NOT NULL,
  `carParking` varchar(255) NOT NULL,
  `openSpace` varchar(255) NOT NULL,
  `playGround` varchar(255) NOT NULL,
  `ccTV` varchar(255) NOT NULL,
  `sGuard` varchar(255) NOT NULL,
  `rentType` varchar(255) NOT NULL,
  `adRent` varchar(255) NOT NULL,
  `gasBill` varchar(255) NOT NULL,
  `electricBill` varchar(255) NOT NULL,
  `eBillType` varchar(255) NOT NULL,
  `sCharge` varchar(255) NOT NULL,
  `adNegotiable` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `adStatus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ad`
--

--
-- Table structure for table `tbl_adimg`
--

CREATE TABLE `tbl_adimg` (
  `imgId` int(11) NOT NULL,
  `adId` varchar(255) NOT NULL,
  `adImg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `bookingId` int(11) NOT NULL,
  `adId` varchar(255) NOT NULL,
  `bookingDate` datetime NOT NULL DEFAULT current_timestamp(),
  `renterId` varchar(255) NOT NULL,
  `renterName` varchar(255) NOT NULL,
  `renterMail` varchar(255) NOT NULL,
  `renterPhone` varchar(255) NOT NULL,
  `renterAddress` text NOT NULL,
  `ownerId` varchar(255) NOT NULL,
  `rentType` varchar(255) NOT NULL,
  `adRent` varchar(255) NOT NULL,
  `gasBill` varchar(255) NOT NULL,
  `electricBill` varchar(255) NOT NULL,
  `sCharge` varchar(255) NOT NULL,
  `bookingStatus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_booking`
--


--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL,
  `catImg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`, `catImg`) VALUES
(1, 'Flat/Apartment', 'uploads/category_image/bdfb4e8fbe.jpg'),
(5, 'Mess/Hostel', 'uploads/category_image/9ce779b96f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_copyright`
--

CREATE TABLE `tbl_copyright` (
  `id` int(11) NOT NULL,
  `copyrightText` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_copyright`
--

INSERT INTO `tbl_copyright` (`id`, `copyrightText`) VALUES
(1, 'Copyright 2025. All Rights Reserved');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `msgId` int(11) NOT NULL,
  `msgName` varchar(255) NOT NULL,
  `msgEmail` varchar(255) NOT NULL,
  `msgPhone` varchar(255) NOT NULL,
  `msgText` text NOT NULL,
  `msgDate` datetime NOT NULL DEFAULT current_timestamp(),
  `msgStatus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_message`
-
--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `notfId` int(11) NOT NULL,
  `notfName` varchar(255) NOT NULL,
  `notfEmail` varchar(255) NOT NULL,
  `notfPhone` varchar(255) NOT NULL,
  `notfAddress` text NOT NULL,
  `notfMsg` text NOT NULL,
  `notfDate` datetime NOT NULL DEFAULT current_timestamp(),
  `renterId` varchar(255) NOT NULL,
  `ownerId` varchar(255) NOT NULL,
  `adId` varchar(255) NOT NULL,
  `notfStatus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sitedetails`
--

CREATE TABLE `tbl_sitedetails` (
  `id` int(11) NOT NULL,
  `siteTitle` varchar(255) NOT NULL,
  `siteSlogan` varchar(255) NOT NULL,
  `siteLogo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sitedetails`
--

INSERT INTO `tbl_sitedetails` (`id`, `siteTitle`, `siteSlogan`, `siteLogo`) VALUES
(1, 'House Rental', 'Better place for better living', 'uploads/site_logo/logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userId` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userImg` varchar(255) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `cellNo` varchar(255) NOT NULL,
  `phoneNo` varchar(255) NOT NULL,
  `userAddress` text NOT NULL,
  `userPass` varchar(32) NOT NULL,
  `confPass` varchar(32) NOT NULL,
  `userLevel` int(11) NOT NULL,
  `userStatus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
-
--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `wlistId` int(11) NOT NULL,
  `adId` varchar(255) NOT NULL,
  `catId` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `adStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_ad`
--
ALTER TABLE `tbl_ad`
  ADD PRIMARY KEY (`adId`);

--
-- Indexes for table `tbl_adimg`
--
ALTER TABLE `tbl_adimg`
  ADD PRIMARY KEY (`imgId`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`bookingId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_copyright`
--
ALTER TABLE `tbl_copyright`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`msgId`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`notfId`);

--
-- Indexes for table `tbl_sitedetails`
--
ALTER TABLE `tbl_sitedetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`wlistId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_ad`
--
ALTER TABLE `tbl_ad`
  MODIFY `adId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_adimg`
--
ALTER TABLE `tbl_adimg`
  MODIFY `imgId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `bookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_copyright`
--
ALTER TABLE `tbl_copyright`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `msgId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `notfId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_sitedetails`
--
ALTER TABLE `tbl_sitedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `wlistId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
