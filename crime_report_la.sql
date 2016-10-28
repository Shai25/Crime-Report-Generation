-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2016 at 12:16 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crime report la`
--

-- --------------------------------------------------------

--
-- Table structure for table `casereport`
--

CREATE TABLE `casereport` (
  `no` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `criminal_ssn` varchar(10) NOT NULL,
  `victim_ssn` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `punishment-desc` varchar(1000) NOT NULL,
  `time_occured` time NOT NULL,
  `date_occured` date NOT NULL,
  `date_reported` date NOT NULL,
  `location` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `cross_street` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casereport`
--

INSERT INTO `casereport` (`no`, `code`, `criminal_ssn`, `victim_ssn`, `status`, `punishment-desc`, `time_occured`, `date_occured`, `date_reported`, `location`, `area`, `cross_street`) VALUES
(1, 510, '1010101011', '9876543258', '2', '3 MONTHS IN JAIL AND 15K$ FINE', '02:50:00', '2013-08-29', '2013-08-29', '600 S PARK VIEW ST', 'Rampart', 'LAKE ST'),
(2, 330, '8759584522', '1234567891', '4', 'NOT YET DECIDED', '02:30:00', '2013-07-29', '2013-07-30', '600 S PARK VIEW ST', 'Rampart', 'HELIOTROPE'),
(3, 930, '1234567898', '1010101019', '3', '100$ FINE', '08:00:00', '2014-07-18', '2014-07-18', '700 GARLAND AV', 'Rampart', 'HELIOTROPE'),
(4, 943, '1010101013', '1010101018', '2', '3 MONTHS JAIL AND 500$ FINE', '11:40:00', '2014-04-24', '2014-04-27', '500 MAPLE AV', 'CENTRAL', 'MAIN ST'),
(5, 761, '1010101012', '1010101016', '3', 'NOT ARRESTED', '12:30:00', '2015-05-02', '2015-05-02', '600 SPRING ST', 'CENTRAL', 'MAPLE'),
(6, 649, '1010101011', '1010101016', '2', '6 MONTHS IN JAIL AND 500$ FINE', '08:40:00', '2015-04-28', '2015-04-28', '600 SPRING ST', 'CENTRAL', 'MAPLE'),
(7, 649, '1010101013', '1010101017', '2', '6 MONTHS IN JAIL AND 500$ FINE', '01:20:00', '2014-03-21', '2014-03-21', 'MARTIN LUTHER KING JR BL', 'SOUTHWEST', 'FIGUEROA ST'),
(8, 664, '9876543219', '9876543258', '3', '50$ FINE', '04:30:00', '2014-06-11', '2014-06-15', '3700 SANTA ROSALIA DR', 'SOUTHWEST', 'FIGUEROA ST'),
(9, 745, '9876543299', '2234567810', '2', '1 MONTH IN JAIL AND 300$ FINE', '10:20:00', '2015-10-12', '2015-10-12', '3700 SANTA ROSALIA DR', 'SOUTHWEST', 'FIGUEROA ST'),
(10, 230, '9876543219', '9876543217', '2', 'LIFE IMPRISONMENT', '01:10:00', '2015-12-24', '2015-12-24', '600 SPRING ST', 'CENTRAL', 'MAPLE');

-- --------------------------------------------------------

--
-- Table structure for table `crime`
--

CREATE TABLE `crime` (
  `code` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`
--

INSERT INTO `crime` (`code`, `type`) VALUES
(0, 'CrmCd.Desc'),
(210, 'ROBBERY'),
(230, 'ASSAULT WITH DEADLY WEAPON, AGGRAVATED ASSAULT'),
(310, 'BURGLARY'),
(330, 'BURGLARY FROM VEHICLE'),
(331, 'THEFT FROM MOTOR VEHICLE - GRAND ($400 AND OVER)'),
(341, 'THEFT-GRAND ($950.01 & OVER)EXCPT,GUNS,FOWL,LIVESTK,PROD'),
(350, 'THEFT, PERSON'),
(354, 'THEFT OF IDENTITY'),
(410, 'BURGLARY FROM VEHICLE, ATTEMPTED'),
(420, 'THEFT FROM MOTOR VEHICLE - PETTY ($950.01 & OVER)'),
(440, 'THEFT PLAIN - PETTY ($950 & UNDER)'),
(510, 'VEHICLE - STOLEN'),
(624, 'BATTERY - SIMPLE ASSAULT'),
(626, 'SPOUSAL(COHAB) ABUSE - SIMPLE ASSAULT'),
(649, 'DOCUMENT FORGERY / STOLEN FELONY'),
(664, 'BUNCO, PETTY THEFT'),
(740, 'VANDALISM - FELONY ($400 & OVER, ALL CHURCH VANDALISMS)'),
(745, 'VANDALISM - MISDEAMEANOR ($399 OR UNDER)'),
(761, 'BRANDISH WEAPON'),
(813, 'CHILD ENDANGERMENT/NEG.'),
(900, 'VIOLATION OF COURT ORDER'),
(901, 'VIOLATION OF RESTRAINING ORDER'),
(930, 'THREATS, VERBAL/TERRORIST'),
(943, 'CRUELTY TO ANIMALS'),
(946, 'OTHER MISCELLANEOUS CRIME'),
(950, 'DEFRAUDING INNKEEPER/THEFT OF SERVICES, OVER $400'),
(956, 'LETTERS, LEWD'),
(997, 'TRAFFIC DR #');

-- --------------------------------------------------------

--
-- Table structure for table `criminal`
--

CREATE TABLE `criminal` (
  `ssn` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `criminal`
--

INSERT INTO `criminal` (`ssn`, `name`, `age`, `gender`) VALUES
('1010101011', 'Rahul L', 55, 'Male'),
('1010101012', 'Manish Kishnani', 32, 'Male'),
('1010101013', 'Rohan Kumar', 35, 'Male'),
('1010101014', 'Rohan Kishnani', 38, 'Male'),
('1010101015', 'Sunny Lachhani', 45, 'Male'),
('1234567810', 'NiteshIdnani', 21, 'male'),
('1234567898', 'RudraIdnani', 21, 'male'),
('8759584522', 'RahulSewaney', 50, 'male'),
('9876543219', 'RohanPurswani', 69, 'other'),
('9876543299', 'NiteshSewaney', 50, 'male');

-- --------------------------------------------------------

--
-- Table structure for table `victim`
--

CREATE TABLE `victim` (
  `ssn` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `victim`
--

INSERT INTO `victim` (`ssn`, `name`, `age`, `gender`) VALUES
('1010101015', 'Rohan Nandwani', 65, 'Male'),
('1010101016', 'Sunny Rohra', 42, 'Male'),
('1010101017', 'Rohan Mishra', 56, 'Male'),
('1010101018', 'Mahi Mishra', 58, 'Female'),
('1010101019', 'Rohan Wadhwa', 58, 'Male'),
('1234567891', 'RudraMishra', 21, 'male'),
('2234567810', 'NiteshBhole', 22, 'male'),
('8759584522', 'RahulLachu', 45, 'male'),
('9876543217', 'RohanPurswnai', 58, 'male'),
('9876543258', 'NiteshPurswani', 100, 'male'),
('9876543299', 'RohanSewaney', 50, 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casereport`
--
ALTER TABLE `casereport`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `crime`
--
ALTER TABLE `crime`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `criminal`
--
ALTER TABLE `criminal`
  ADD PRIMARY KEY (`ssn`);

--
-- Indexes for table `victim`
--
ALTER TABLE `victim`
  ADD PRIMARY KEY (`ssn`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
