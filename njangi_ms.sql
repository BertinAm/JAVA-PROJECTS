-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 01:31 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `njangi_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ID` int(11) NOT NULL,
  `Cont_id` varchar(7) NOT NULL,
  `mem_id` varchar(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ID`, `Cont_id`, `mem_id`, `username`, `balance`) VALUES
(1, 'A0001', 'M0001', 'bertin', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `Admin_id` varchar(7) NOT NULL,
  `mem_id` varchar(10) NOT NULL,
  `Admin_Name` varchar(50) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Admin_id`, `mem_id`, `Admin_Name`, `Email`, `Password`) VALUES
(1, 'N0001', 'M0001', 'Admin1', 'admin1@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `borrow_id` int(11) NOT NULL,
  `Cont_id` varchar(7) NOT NULL,
  `mem_id` varchar(10) NOT NULL,
  `Date_Borrowed` datetime NOT NULL,
  `balance` int(11) NOT NULL,
  `borrow` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`borrow_id`, `Cont_id`, `mem_id`, `Date_Borrowed`, `balance`, `borrow`) VALUES
(1, 'A0001', 'M0001', '2022-05-17 00:00:00', 10000, 3000),
(2, 'A0001', 'M0001', '2022-05-17 00:00:00', 7000, 2000),
(3, 'A0001', 'M0001', '2022-05-18 00:00:00', 28000, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `contributions`
--

CREATE TABLE `contributions` (
  `ID` int(11) NOT NULL,
  `Contri_id` varchar(10) NOT NULL,
  `Cont_id` varchar(7) NOT NULL,
  `mem_id` varchar(10) NOT NULL,
  `Type_Contri` varchar(50) NOT NULL,
  `date` datetime(6) NOT NULL,
  `balance` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contributions`
--

INSERT INTO `contributions` (`ID`, `Contri_id`, `Cont_id`, `mem_id`, `Type_Contri`, `date`, `balance`, `amount`) VALUES
(1, 'C0001', 'A0001', 'M0001', 'DEATH OF MEMBER', '2022-05-18 00:00:00.000000', 23000, 3000),
(4, 'C0004', 'A0001', 'M0001', 'DEATH OF MEMEBERS PARENTS/IN- LAW', '2022-05-22 00:00:00.000000', 15000, 5000),
(5, 'C0005', 'A0001', 'M0001', 'DEATH OF MEMBERS CHILD', '2022-08-09 00:00:00.000000', 4000, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `ID` int(11) NOT NULL,
  `Cont_id` varchar(7) NOT NULL,
  `mem_id` varchar(10) NOT NULL,
  `date` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  `deposit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`ID`, `Cont_id`, `mem_id`, `date`, `balance`, `deposit`) VALUES
(1, 'A0001', 'M0001', '2022/05/17', 5000, 20000),
(2, 'A0001', 'M0001', '2022/05/18', 25000, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `ID` int(5) NOT NULL,
  `mem_id` varchar(10) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Tel_Number` char(9) NOT NULL,
  `DateOfBirth` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `password` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`ID`, `mem_id`, `Username`, `Address`, `Tel_Number`, `DateOfBirth`, `Email`, `password`, `status`) VALUES
(1, 'M0001', 'bertin', 'buea', '499333929', '1999-09-08', 'bertin01@gmail.com', 12345, 'true'),
(5, 'M0002', 'ambe', 'malingo', '39950044', '1999-04-11', 'ambe01@gmail.com', 98765, 'true');

-- --------------------------------------------------------

--
-- Table structure for table `njangi_contribution`
--

CREATE TABLE `njangi_contribution` (
  `ID` int(11) NOT NULL,
  `Njangi_id` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `njangi_contribution`
--

INSERT INTO `njangi_contribution` (`ID`, `Njangi_id`, `username`, `balance`) VALUES
(1, 'D0001', 'Admin1', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `Not_id` int(5) NOT NULL,
  `mem_id` varchar(10) NOT NULL,
  `Content` varchar(500) NOT NULL,
  `date_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`Not_id`, `mem_id`, `Content`, `date_time`) VALUES
(1, 'M0001', 'pay up your fine', '2:40pm'),
(2, 'M0001', 'pay up your fine man', '3:30'),
(3, 'M0001', 'hurry up and pay your fine', ''),
(4, 'M0001', 'hurry man', '2022/05/18'),
(6, 'M0001', 'pay your contribution fine', '2022/05/20'),
(7, 'M0001', 'pay up your fine', '2022/05/21'),
(9, 'M0001', 'pay your fine', '2022/05/22');

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `ID` int(11) NOT NULL,
  `F_account` varchar(10) NOT NULL,
  `T_account` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`ID`, `F_account`, `T_account`, `amount`) VALUES
(1, 'A0001', 'D0001', 3000),
(2, 'A0001', 'D0001', 5000),
(3, 'A0001', 'D0001', 5000),
(4, 'A0001', 'D0001', 400),
(8, 'A0001', 'D0001', 1000),
(9, 'A0001', 'D0001', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `ID` int(11) NOT NULL,
  `Cont_id` varchar(10) NOT NULL,
  `mem_id` varchar(10) NOT NULL,
  `date` datetime(6) NOT NULL,
  `balance` int(11) NOT NULL,
  `withdraws` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`ID`, `Cont_id`, `mem_id`, `date`, `balance`, `withdraws`, `status`) VALUES
(1, 'A0001', 'M0001', '2022-05-19 00:00:00.000000', 17000, 5000, 'false'),
(2, 'A0001', 'M0001', '2022-05-19 00:00:00.000000', 17000, 17000, 'false'),
(3, 'A0001', 'M0001', '2022-05-19 00:00:00.000000', -5000, 2000, 'false'),
(4, 'A0001', 'M0001', '2022-05-22 00:00:00.000000', 10000, 3000, 'false'),
(5, 'A0001', 'M0001', '2022-05-25 00:00:00.000000', 2000, 200, 'false'),
(6, 'A0001', 'M0001', '2022-05-25 00:00:00.000000', 2000, 200, 'false'),
(7, 'A0001', 'M0001', '2022-05-25 00:00:00.000000', 1600, 200, 'false'),
(8, 'A0001', 'M0001', '2022-05-25 00:00:00.000000', 1400, 200, 'false'),
(9, 'A0001', 'M0001', '2022-05-25 00:00:00.000000', 1200, 200, 'false'),
(10, 'A0001', 'M0001', '2022-05-25 00:00:00.000000', 1000, 200, 'false'),
(11, 'A0001', 'M0001', '2022-05-25 00:00:00.000000', 800, 200, 'false'),
(12, 'A0001', 'M0001', '2022-05-25 00:00:00.000000', 600, 200, 'false'),
(13, 'A0001', 'M0001', '2022-05-25 00:00:00.000000', 600, 200, 'false');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Cont_id`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `account_1k` (`mem_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_id`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `admin_1k` (`mem_id`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrow_id`),
  ADD KEY `borrow_4k` (`Cont_id`),
  ADD KEY `borrow_5k` (`mem_id`);

--
-- Indexes for table `contributions`
--
ALTER TABLE `contributions`
  ADD PRIMARY KEY (`Contri_id`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `contribute_1k` (`Cont_id`),
  ADD KEY `contribute_2k` (`mem_id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `deposit_2k` (`Cont_id`),
  ADD KEY `deposit_3k` (`mem_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`mem_id`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `njangi_contribution`
--
ALTER TABLE `njangi_contribution`
  ADD PRIMARY KEY (`Njangi_id`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`Not_id`),
  ADD KEY `notification_afbk_1k` (`mem_id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `withdraw` (`mem_id`),
  ADD KEY `withdraw_1k` (`Cont_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contributions`
--
ALTER TABLE `contributions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `njangi_contribution`
--
ALTER TABLE `njangi_contribution`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `Not_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_1k` FOREIGN KEY (`mem_id`) REFERENCES `members` (`mem_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_1k` FOREIGN KEY (`mem_id`) REFERENCES `members` (`mem_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `borrow`
--
ALTER TABLE `borrow`
  ADD CONSTRAINT `borrow_4k` FOREIGN KEY (`Cont_id`) REFERENCES `account` (`Cont_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_5k` FOREIGN KEY (`mem_id`) REFERENCES `members` (`mem_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contributions`
--
ALTER TABLE `contributions`
  ADD CONSTRAINT `contribute_1k` FOREIGN KEY (`Cont_id`) REFERENCES `account` (`Cont_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contribute_2k` FOREIGN KEY (`mem_id`) REFERENCES `members` (`mem_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `deposit`
--
ALTER TABLE `deposit`
  ADD CONSTRAINT `deposit_2k` FOREIGN KEY (`Cont_id`) REFERENCES `account` (`Cont_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deposit_3k` FOREIGN KEY (`mem_id`) REFERENCES `members` (`mem_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_afbk_1k` FOREIGN KEY (`mem_id`) REFERENCES `members` (`mem_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD CONSTRAINT `withdraw` FOREIGN KEY (`mem_id`) REFERENCES `members` (`mem_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `withdraw_1k` FOREIGN KEY (`Cont_id`) REFERENCES `account` (`Cont_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
