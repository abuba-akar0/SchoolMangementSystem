-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 14, 2024 at 05:56 مM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
CREATE TABLE IF NOT EXISTS `grades` (
  `gradeId` int(10) NOT NULL,
  `grade` varchar(30) NOT NULL,
  `noOfStudents` int(100) DEFAULT NULL,
  PRIMARY KEY (`gradeId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`gradeId`, `grade`, `noOfStudents`) VALUES
(1, 'Grade 1', NULL),
(2, 'Grade 2', NULL),
(3, 'Grade 3', NULL),
(4, 'Grade 4', NULL),
(5, 'Grade 5', NULL),
(6, 'Grade 6', NULL),
(7, 'Grade 7', NULL),
(8, 'Grade 8', NULL),
(9, 'Grade 9', NULL),
(10, 'Grade 10', NULL),
(11, 'Grade 11', NULL),
(12, 'Grade 12', NULL);


-- --------------------------------------------------------

--
-- Table structure for table `leftstudents`
--

DROP TABLE IF EXISTS `leftstudents`;
CREATE TABLE IF NOT EXISTS `leftstudents` (
  `adNo` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `doa` date NOT NULL,
  `gender` varchar(15) NOT NULL,
  `grade` varchar(15) DEFAULT NULL,
  `parentName` varchar(60) NOT NULL,
  `nic` char(10) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(150) NOT NULL,
  PRIMARY KEY (`adNo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leftstudents`
--

INSERT INTO `leftstudents` (`adNo`, `fullName`, `name`, `dob`, `doa`, `gender`, `grade`, `parentName`, `nic`, `phone`, `address`) VALUES
(1920, 'Khalid Mehmood', 'Khalid', '1997-11-15', '2003-09-10', 'Male', 'Grade 4', 'Mehmood Ali', '897335343v', '0757009284', 'Lahore, Punjab'),
(1921, 'Ayesha Siddiqui', 'Ayesha', '1998-12-20', '2004-10-12', 'Female', 'Grade 5', 'Siddiqui Ahmed', '897335344v', '0758009284', 'Karachi, Sindh'),
(1922, 'Bilal Hussain', 'Bilal', '1999-01-25', '2005-11-14', 'Male', 'Grade 6', 'Hussain Bilal', '897335345v', '0759009284', 'Islamabad, ICT'),
(1923, 'Fatima Zahra', 'Fatima', '2000-02-30', '2006-12-16', 'Female', 'Grade 7', 'Zahra Fatima', '897335346v', '0760009284', 'Peshawar, KPK'),
(1924, 'Hassan Raza', 'Hassan', '2001-03-05', '2007-01-18', 'Male', 'Grade 8', 'Raza Hassan', '897335347v', '0761009284', 'Quetta, Balochistan'),
(1925, 'Maryam Bibi', 'Maryam', '2002-04-10', '2008-02-20', 'Female', 'Grade 9', 'Bibi Maryam', '897335348v', '0762009284', 'Multan, Punjab'),
(1926, 'Usman Tariq', 'Usman', '2003-05-15', '2009-03-22', 'Male', 'Grade 10', 'Tariq Usman', '897335349v', '0763009284', 'Faisalabad, Punjab'),
(1927, 'Zainab Ali', 'Zainab', '2004-06-20', '2010-04-24', 'Female', 'Grade 11', 'Ali Zainab', '897335350v', '0764009284', 'Rawalpindi, Punjab'),
(1928, 'Imran Khan', 'Imran', '2005-07-25', '2011-05-26', 'Male', 'Grade 12', 'Khan Imran', '897335351v', '0765009284', 'Hyderabad, Sindh'),
(1929, 'Sara Ahmed', 'Sara', '2006-08-30', '2012-06-28', 'Female', 'Grade 13', 'Ahmed Sara', '897335352v', '0766009284', 'Sialkot, Punjab');

-- --------------------------------------------------------

--
-- Table structure for table `oldstaffs`
--

DROP TABLE IF EXISTS `oldstaffs`;
CREATE TABLE IF NOT EXISTS `oldstaffs` (
  `empNo` varchar(10) NOT NULL,
  `teacherName` varchar(60) DEFAULT NULL,
  `nic` char(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `doa` date DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT '-',
  `assumpOfDuties` date DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `incDate` date DEFAULT NULL,
  `prsntGrade` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oldstaffs`
--

INSERT INTO `oldstaffs` (`empNo`, `teacherName`, `nic`, `dob`, `doa`, `gender`, `email`, `assumpOfDuties`, `phone`, `address`, `incDate`, `prsntGrade`) VALUES
('4001', 'Rashid Ali', '8765432101v', '1965-01-10', '1990-02-15', 'Male', 'rashid.ali@example.com', '1995-01-01', '03401234567', 'Karachi, Sindh', '1995-12-14', 'A1'),
('4002', 'Nadia Khan', '8765432102v', '1966-02-20', '1991-03-12', 'Female', 'nadia.khan@example.com', '1996-02-01', '03411234567', 'Lahore, Punjab', '1996-03-16', 'A2'),
('4003', 'Faisal Ahmed', '8765432103v', '1967-03-25', '1992-04-14', 'Male', 'faisal.ahmed@example.com', '1997-03-01', '03421234567', 'Islamabad, ICT', '1997-04-18', 'B1'),
('4004', 'Amina Raza', '8765432104v', '1968-04-30', '1993-05-16', 'Female', 'amina.raza@example.com', '1998-04-01', '03431234567', 'Peshawar, KPK', '1998-05-20', 'B2'),
('4005', 'Usman Bilal', '8765432105v', '1969-05-05', '1994-06-18', 'Male', 'usman.bibi@example.com', '1999-05-01', '03441234567', 'Quetta, Balochistan', '1999-06-22', 'C1'),
('4006', 'Zara Tariq', '8765432106v', '1970-06-10', '1995-07-20', 'Female', 'zara.tariq@example.com', '2000-06-01', '03451234567', 'Multan, Punjab', '2000-07-24', 'C2'),
('4007', 'Imran Ali', '8765432107v', '1971-07-15', '1996-08-22', 'Male', 'imran.ali@example.com', '2001-07-01', '03461234567', 'Faisalabad, Punjab', '2001-08-28', 'D1'),
('4008', 'Sara Ahmed', '8765432108v', '1972-08-20', '1997-09-24', 'Female', 'sara.ahmed@example.com', '2002-08-01', '03471234567', 'Rawalpindi, Punjab', '2002-09-30', 'D2'),
('4009', 'Bilal Khan', '8765432109v', '1973-09-25', '1998-10-26', 'Male', 'bilal.khan@example.com', '2003-09-01', '03481234567', 'Hyderabad, Sindh', '2003-10-02', 'E1'),
('4010', 'Fatima Ali', '8765432110v', '1974-10-30', '1999-11-28', 'Female', 'fatima.ali@example.com', '2004-10-01', '03491234567', 'Sialkot, Punjab', '2004-11-04', 'E2');


-- --------------------------------------------------------

--
-- Table structure for table `paststudents`
--

DROP TABLE IF EXISTS `paststudents`;
CREATE TABLE IF NOT EXISTS `paststudents` (
  `adNo` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `doa` date NOT NULL,
  `gender` varchar(15) NOT NULL,
  `year` varchar(15) DEFAULT NULL,
  `parentName` varchar(60) NOT NULL,
  `nic` char(10) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(150) NOT NULL,
  PRIMARY KEY (`adNo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paststudents`
--

INSERT INTO `paststudents` (`adNo`, `fullName`, `name`, `dob`, `doa`, `gender`, `year`, `parentName`, `nic`, `phone`, `address`) VALUES
(1001, 'Ahmed Ali', 'Ahmed', '1995-01-15', '2001-03-10', 'Male', '2015', 'Ali Khan', '1234567890v', '03001234567', 'Karachi, Sindh'),
(1002, 'Ayesha Khan', 'Ayesha', '1996-02-20', '2002-04-12', 'Female', '2016', 'Khan Ahmed', '1234567891v', '03011234567', 'Lahore, Punjab'),
(1003, 'Bilal Ahmed', 'Bilal', '1997-03-25', '2003-05-14', 'Male', '2017', 'Ahmed Bilal', '1234567892v', '03021234567', 'Islamabad, ICT'),
(1004, 'Fatima Noor', 'Fatima', '1998-04-30', '2004-06-16', 'Female', '2018', 'Noor Fatima', '1234567893v', '03031234567', 'Peshawar, KPK'),
(1005, 'Hassan Raza', 'Hassan', '1999-05-05', '2005-07-18', 'Male', '2019', 'Raza Hassan', '1234567894v', '03041234567', 'Quetta, Balochistan'),
(1006, 'Maryam Bibi', 'Maryam', '2000-06-10', '2006-08-20', 'Female', '2020', 'Bibi Maryam', '1234567895v', '03051234567', 'Multan, Punjab'),
(1007, 'Usman Tariq', 'Usman', '2001-07-15', '2007-09-22', 'Male', '2021', 'Tariq Usman', '1234567896v', '03061234567', 'Faisalabad, Punjab'),
(1008, 'Zainab Ali', 'Zainab', '2002-08-20', '2008-10-24', 'Female', '2022', 'Ali Zainab', '1234567897v', '03071234567', 'Rawalpindi, Punjab'),
(1009, 'Imran Khan', 'Imran', '2003-09-25', '2009-11-26', 'Male', '2023', 'Khan Imran', '1234567898v', '03081234567', 'Hyderabad, Sindh'),
(1010, 'Sara Ahmed', 'Sara', '2004-10-30', '2010-12-28', 'Female', '2024', 'Ahmed Sara', '1234567899v', '03091234567', 'Sialkot, Punjab');



-- --------------------------------------------------------

--
-- Table structure for table `schoolinfo`
--

DROP TABLE IF EXISTS `schoolinfo`;
CREATE TABLE IF NOT EXISTS `schoolinfo` (
  `SchoolName` varchar(80) DEFAULT NULL,
  `SchoolAddress` varchar(80) DEFAULT NULL,
  `classAvailable` varchar(20) DEFAULT NULL,
  `schoolType` varchar(50) DEFAULT NULL,
  `deoDivision` varchar(50) DEFAULT NULL,
  `municpalCouncil` varchar(50) DEFAULT NULL,
  `policeArea` varchar(50) NOT NULL,
  `postalCode` varchar(10) NOT NULL,
  `gsDivision` varchar(50) NOT NULL,
  `eduZone` varchar(50) NOT NULL,
  `eduDistrict` varchar(50) NOT NULL,
  `adminDistrict` varchar(50) NOT NULL,
  `electorate` varchar(30) NOT NULL,
  `dateOfEstd` date DEFAULT NULL,
  `schoolID` varchar(30) NOT NULL,
  `schoolCensus` varchar(40) NOT NULL,
  `schoolExamId` varchar(30) NOT NULL,
  `totalLandArea` varchar(30) NOT NULL,
  `province` varchar(30) NOT NULL,
  `nameOfPrincipal` varchar(30) NOT NULL,
  `pricipalNo` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolinfo`
--

INSERT INTO `schoolinfo` (`SchoolName`, `SchoolAddress`, `classAvailable`, `schoolType`, `deoDivision`, `municpalCouncil`, `policeArea`, `postalCode`, `gsDivision`, `eduZone`, `eduDistrict`, `adminDistrict`, `electorate`, `dateOfEstd`, `schoolID`, `schoolCensus`, `schoolExamId`, `totalLandArea`, `province`, `nameOfPrincipal`, `pricipalNo`) VALUES
('Sir Syed Model Public School Barbien Boi Abbottabad', 'Garhi Habibullah - Boi Road, Village Barbien, UC Boi, Abbottabad', '12', 'AB', 'Abbottabad', 'Abbottabad', 'Abbottabad', '22180', 'Abbottabad', 'Abbottabad', 'Abbottabad', 'Abbottabad', '120', '2000-10-13', '12313', '43525', '34142', '2 Acres', 'Khyber Pakhtunkhwa', 'Jamil Ahmad', '03229407801');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

DROP TABLE IF EXISTS `staffs`;
CREATE TABLE IF NOT EXISTS `staffs` (
  `empNo` varchar(10) NOT NULL,
  `teacherName` varchar(60) DEFAULT NULL,
  `nic` char(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `doa` date DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT '-',
  `assumpOfDuties` date DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `incDate` date DEFAULT NULL,
  `prsntGrade` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`empNo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`empNo`, `teacherName`, `nic`, `dob`, `doa`, `gender`, `email`, `assumpOfDuties`, `phone`, `address`, `incDate`, `prsntGrade`) VALUES
('2001', 'Ali Raza', '9876543210v', '1975-01-10', '2000-02-15', 'Male', 'ali.raza@example.com', '2005-01-01', '03101234567', 'Karachi, Sindh', '2005-12-14', 'A1'),
('2002', 'Sana Ahmed', '9876543211v', '1976-02-20', '2001-03-12', 'Female', 'sana.ahmed@example.com', '2006-02-01', '03111234567', 'Lahore, Punjab', '2006-03-16', 'A2'),
('2003', 'Kamran Khan', '9876543212v', '1977-03-25', '2002-04-14', 'Male', 'kamran.khan@example.com', '2007-03-01', '03121234567', 'Islamabad, ICT', '2007-04-18', 'B1'),
('2004', 'Nadia Ali', '9876543213v', '1978-04-30', '2003-05-16', 'Female', 'nadia.ali@example.com', '2008-04-01', '03131234567', 'Peshawar, KPK', '2008-05-20', 'B2'),
('2005', 'Faisal Raza', '9876543214v', '1979-05-05', '2004-06-18', 'Male', 'faisal.raza@example.com', '2009-05-01', '03141234567', 'Quetta, Balochistan', '2009-06-22', 'C1'),
('2006', 'Amina Bibi', '9876543215v', '1980-06-10', '2005-07-20', 'Female', 'amina.bibi@example.com', '2010-06-01', '03151234567', 'Multan, Punjab', '2010-07-24', 'C2'),
('2007', 'Tariq Usman', '9876543216v', '1981-07-15', '2006-08-22', 'Male', 'tariq.usman@example.com', '2011-07-01', '03161234567', 'Faisalabad, Punjab', '2011-08-28', 'D1'),
('2008', 'Zara Ali', '9876543217v', '1982-08-20', '2007-09-24', 'Female', 'zara.ali@example.com', '2012-08-01', '03171234567', 'Rawalpindi, Punjab', '2012-09-30', 'D2'),
('2009', 'Imran Ahmed', '9876543218v', '1983-09-25', '2008-10-26', 'Male', 'imran.ahmed@example.com', '2013-09-01', '03181234567', 'Hyderabad, Sindh', '2013-10-02', 'E1'),
('2010', 'Sara Khan', '9876543219v', '1984-10-30', '2009-11-28', 'Female', 'sara.khan@example.com', '2014-10-01', '03191234567', 'Sialkot, Punjab', '2014-11-04', 'E2');
-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `adNo` int(11) NOT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `doa` date DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `grade` varchar(15) DEFAULT NULL,
  `parentName` varchar(60) DEFAULT NULL,
  `nic` char(10) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`adNo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`adNo`, `fullName`, `name`, `dob`, `doa`, `gender`, `grade`, `parentName`, `nic`, `phone`, `address`) VALUES
(3001, 'Hassan Ali', 'Hassan', '2005-01-10', '2010-02-15', 'Male', 'Grade 1', 'Ali Khan', '9876543210v', '03201234567', 'Karachi, Sindh'),
(3002, 'Fatima Ahmed', 'Fatima', '2006-02-20', '2011-03-12', 'Female', 'Grade 2', 'Ahmed Khan', '9876543211v', '03211234567', 'Lahore, Punjab'),
(3003, 'Zain Khan', 'Zain', '2007-03-25', '2012-04-14', 'Male', 'Grade 3', 'Khan Ahmed', '9876543212v', '03221234567', 'Islamabad, ICT'),
(3004, 'Ayesha Ali', 'Ayesha', '2008-04-30', '2013-05-16', 'Female', 'Grade 4', 'Ali Raza', '9876543213v', '03231234567', 'Peshawar, KPK'),
(3005, 'Bilal Raza', 'Bilal', '2009-05-05', '2014-06-18', 'Male', 'Grade 5', 'Raza Ahmed', '9876543214v', '03241234567', 'Quetta, Balochistan'),
(3006, 'Nadia Bibi', 'Nadia', '2010-06-10', '2015-07-20', 'Female', 'Grade 6', 'Bibi Amina', '9876543215v', '03251234567', 'Multan, Punjab'),
(3007, 'Usman Tariq', 'Usman', '2011-07-15', '2016-08-22', 'Male', 'Grade 7', 'Tariq Usman', '9876543216v', '03261234567', 'Faisalabad, Punjab'),
(3008, 'Zara Khan', 'Zara', '2012-08-20', '2017-09-24', 'Female', 'Grade 8', 'Khan Zara', '9876543217v', '03271234567', 'Rawalpindi, Punjab'),
(3009, 'Imran Ahmed', 'Imran', '2013-09-25', '2018-10-26', 'Male', 'Grade 9', 'Ahmed Imran', '9876543218v', '03281234567', 'Hyderabad, Sindh'),
(3010, 'Sara Ali', 'Sara', '2014-10-30', '2019-11-28', 'Female', 'Grade 10', 'Ali Sara', '9876543219v', '03291234567', 'Sialkot, Punjab');
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('admin', 'admin123'),
('teacher', 'teacher123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
