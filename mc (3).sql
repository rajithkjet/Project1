-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2018 at 01:46 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mc`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventry`
--

CREATE TABLE `inventry` (
  `ItemID` int(10) NOT NULL,
  `ItemName` varchar(100) DEFAULT NULL,
  `IStatus` varchar(100) DEFAULT NULL,
  `DateRecived` date DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventry`
--

INSERT INTO `inventry` (`ItemID`, `ItemName`, `IStatus`, `DateRecived`, `Description`, `UserName`) VALUES
(1, 'Table', 'good', '2006-03-12', 'arm chair', 'null'),
(3, 'Table', 'good', '2006-03-01', 'arm chair', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `MedicineID` int(10) NOT NULL,
  `MName` varchar(100) DEFAULT NULL,
  `Brand` varchar(100) DEFAULT NULL,
  `MQuantity` int(11) DEFAULT NULL,
  `UnitPrice` double DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `MfdDate` date DEFAULT NULL,
  `ExpDate` date DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`MedicineID`, `MName`, `Brand`, `MQuantity`, `UnitPrice`, `Category`, `MfdDate`, `ExpDate`, `UserName`) VALUES
(8, 'paracetamol', 'hdh', 488, 2, 'tablets', '2015-03-02', '2018-04-02', 'ha'),
(7, 'Salbutomol', 'pcm', 400, 1, 'Tablets', '2016-03-12', '2018-02-05', 'ha'),
(6, 'Paracetamol', 'spc', 300, 2, 'Tablets', '2016-05-04', '2019-02-23', 'ha');

-- --------------------------------------------------------

--
-- Table structure for table `medirep`
--

CREATE TABLE `medirep` (
  `id` int(11) NOT NULL,
  `Registration No` varchar(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Illness` varchar(200) NOT NULL,
  `Recomendation` varchar(200) NOT NULL,
  `Date` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medirep`
--

INSERT INTO `medirep` (`id`, `Registration No`, `Name`, `Illness`, `Recomendation`, `Date`) VALUES
(27, 'aaadasfda', 'sfasfasf', 'ewew', 'asfasfa', 'afasf'),
(28, 'UWU/CST/15/098', 'wanigarathne j a ga ', 'leave for 3 days', 'fever', '2018-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatientID` varchar(10) NOT NULL,
  `Initials` varchar(100) DEFAULT NULL,
  `Surname` varchar(100) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatientID`, `Initials`, `Surname`, `DOB`, `Address`, `Phone`, `Gender`, `UserName`) VALUES
('4', 'VDSFBSG', 'SOMAPALA', '2018-01-08', 'XSSD', '0719630813', 'Male', 'null'),
('1', 'aaa', 'bbb', '1953-05-03', 'ssssssss', '0326598741', 'Female', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `patient_allergies`
--

CREATE TABLE `patient_allergies` (
  `PatientID` varchar(10) NOT NULL,
  `Allergy` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_allergies`
--

INSERT INTO `patient_allergies` (`PatientID`, `Allergy`) VALUES
('1', 'l'),
('4', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `RepNo` varchar(10) NOT NULL,
  `RepType` varchar(100) DEFAULT NULL,
  `IssuedDate` date DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `report_daily`
--

CREATE TABLE `report_daily` (
  `MedicineID` int(11) NOT NULL,
  `MName` varchar(100) NOT NULL,
  `Brand` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report_daily`
--

INSERT INTO `report_daily` (`MedicineID`, `MName`, `Brand`, `Category`, `Qty`, `Date`) VALUES
(8, 'paracetamol', 'hdh', 'tablets', 12, '2018-01-07');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `PatientID` varchar(10) DEFAULT NULL,
  `NIC` varchar(10) DEFAULT NULL,
  `Designation` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`PatientID`, `NIC`, `Designation`) VALUES
('1', '326598412v', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `PatientID` varchar(10) DEFAULT NULL,
  `Registration_No` varchar(20) DEFAULT NULL,
  `Batch` varchar(20) DEFAULT NULL,
  `Degree` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`PatientID`, `Registration_No`, `Batch`, `Degree`) VALUES
('4', 'UWU/ANS/15/016', '2015/2016', 'Animal Science');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `TreatmentID` int(100) NOT NULL,
  `illness` varchar(100) DEFAULT NULL,
  `TDate` date DEFAULT NULL,
  `TTime` time DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `PatientID` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`TreatmentID`, `illness`, `TDate`, `TTime`, `Description`, `PatientID`) VALUES
(29, 'asfasfa', '2018-01-07', '18:56:39', 'assfasfasfasfsf', '4'),
(28, 'bbbbb', '2018-01-07', '18:54:46', 'aaa', '1'),
(27, 'fsdfsd', '2018-01-07', '13:26:20', 'sdgsdg', '3');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_medicine`
--

CREATE TABLE `treatment_medicine` (
  `TreatmentID` varchar(100) DEFAULT NULL,
  `MedicineID` varchar(10) DEFAULT NULL,
  `TStatus` varchar(100) DEFAULT NULL,
  `Dosage` varchar(10) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_medicine`
--

INSERT INTO `treatment_medicine` (`TreatmentID`, `MedicineID`, `TStatus`, `Dosage`, `Quantity`) VALUES
('29', '7', '0', '3', 12),
('28', '6', '0', '1 ', 6),
('27', '8', '1', '1 ', 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserName` varchar(100) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `UserPassword` varchar(100) DEFAULT NULL,
  `UserType` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserName`, `FullName`, `UserPassword`, `UserType`) VALUES
('anj', 'anj', 'anj', 'Doctor'),
('ha', 'hashan fernando', 'ha', 'Pharmasict/Nurse'),
('katcha', 'mottapala', 'katcha', 'Doctor'),
('abc', 'a b cookary', 'abc', 'Pharmasict/Nurse');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventry`
--
ALTER TABLE `inventry`
  ADD PRIMARY KEY (`ItemID`),
  ADD KEY `UserName` (`UserName`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`MedicineID`),
  ADD KEY `UserName` (`UserName`);

--
-- Indexes for table `medirep`
--
ALTER TABLE `medirep`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatientID`),
  ADD KEY `UserName` (`UserName`);

--
-- Indexes for table `patient_allergies`
--
ALTER TABLE `patient_allergies`
  ADD PRIMARY KEY (`PatientID`,`Allergy`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`RepNo`),
  ADD KEY `UserName` (`UserName`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`TreatmentID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `treatment_medicine`
--
ALTER TABLE `treatment_medicine`
  ADD KEY `TreatmentID` (`TreatmentID`),
  ADD KEY `MedicineID` (`MedicineID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventry`
--
ALTER TABLE `inventry`
  MODIFY `ItemID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `MedicineID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `medirep`
--
ALTER TABLE `medirep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `TreatmentID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
