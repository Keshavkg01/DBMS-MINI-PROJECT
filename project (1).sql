-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 05:32 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`user`, `pass`) VALUES
('keshav', 'Keshav@123'),
('gnanesh', 'Gnani21@');

-- --------------------------------------------------------

--
-- Table structure for table `bblocation`
--

CREATE TABLE `bblocation` (
  `btype` varchar(10) NOT NULL,
  `location` varchar(60) NOT NULL,
  `user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bblocation`
--

INSERT INTO `bblocation` (`btype`, `location`, `user`) VALUES
('B+', 'Trinity Blood Bank,SS Puram,Tumkur', 'sharath kg'),
('B+', 'Trinity Blood Bank,SS Puram,Tumkur', 'gnanesh'),
('B+', 'Vinayaka Blood Bank,Opp Soundarya Paradise,Dasaarahalli,Bang', 'jeevan'),
('B+', 'Vinayaka Blood Bank,Opp Soundarya Paradise,Dasaarahalli,Bang', 'jeevan');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(60) NOT NULL,
  `pno` bigint(20) NOT NULL,
  `adhar` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`fname`, `lname`, `dob`, `gender`, `address`, `pno`, `adhar`) VALUES
('keshav', 'kg', '2001-08-03', 'male', 'nittur', 7619118254, 871134784115),
('sharath', 'kg', '2001-02-10', 'male', 'tumkur', 8088625911, 7811196157),
('jeevan', 'k g', '2001-08-03', 'male', 'nittur', 8722487455, 871134784115);

-- --------------------------------------------------------

--
-- Table structure for table `rbtype`
--

CREATE TABLE `rbtype` (
  `btype` varchar(5) NOT NULL,
  `user` varchar(20) NOT NULL,
  `location` varchar(60) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rbtype`
--

INSERT INTO `rbtype` (`btype`, `user`, `location`, `time`) VALUES
('AB-', 'harshalk', 'Trinity Blood Bank,SS Puram,Tumkur', '2022-01-23 12:53:26'),
('AB-', 'harshalk', 'Trinity Blood Bank,SS Puram,Tumkur', '2022-01-23 12:56:14'),
('AB+', 'harshalk', 'Trinity Blood Bank,SS Puram,Tumkur', '2022-01-23 12:56:36'),
('B-', 'girish kg', 'Siddaganga Blood Bank,Kythsandra,Tumkur', '2022-01-29 20:37:06'),
('o-', 'girish kg', 'Siddaganga Blood Bank,Kythsandra,Tumkur', '2022-03-24 21:40:52'),
('A+', 'jeevan', 'Trinity Blood Bank,SS Puram,Tumkur', '2022-03-24 21:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `recepient`
--

CREATE TABLE `recepient` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(60) NOT NULL,
  `pno` bigint(20) NOT NULL,
  `adhar` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recepient`
--

INSERT INTO `recepient` (`fname`, `lname`, `dob`, `gender`, `address`, `pno`, `adhar`) VALUES
('girish', 'k ', '2001-02-16', 'male', 'chelur', 423678797, 3678697543),
('harsha', 'l ', '2001-07-06', 'male', 'hosdurga', 9647564142, 827581061992),
('jeevan', 'k g', '2001-08-03', 'male', 'nittur', 8722487455, 871134784115);

-- --------------------------------------------------------

--
-- Table structure for table `ruser_pass`
--

CREATE TABLE `ruser_pass` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruser_pass`
--

INSERT INTO `ruser_pass` (`user`, `pass`) VALUES
('girish kg', 'giri21@'),
('harshalk', 'harsha@lk'),
('jeevan', 'jeevan@123');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `location` varchar(60) NOT NULL,
  `btype` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`location`, `btype`, `quantity`) VALUES
('Trinity Blood Bank,SS Puram,Tumkur', 'B+', 2),
('Trinity Blood Bank,SS Puram,Tumkur', 'A+', 9),
('Trinity Blood Bank,SS Puram,Tumkur', 'O+', 15),
('Trinity Blood Bank,SS Puram,Tumkur', 'O-', 5),
('Trinity Blood Bank,SS Puram,Tumkur', 'A-', 8),
('Trinity Blood Bank,SS Puram,Tumkur', 'B-', 9),
('Trinity Blood Bank,SS Puram,Tumkur', 'AB+', 7),
('Trinity Blood Bank,SS Puram,Tumkur', 'AB-', 5),
('Bapuji Blood Bank,Town Hall Extension', 'A+', 5),
('Bapuji Blood Bank,Town Hall Extension', 'A-', 8),
('Bapuji Blood Bank,Town Hall Extension', 'B+', 5),
('Bapuji Blood Bank,Town Hall Extension', 'AB+', 5),
('Bapuji Blood Bank,Town Hall Extension', 'AB-', 7),
('Bapuji Blood Bank,Town Hall Extension', 'O-', 10),
('Vinayaka Blood Bank,Opp Soundarya Paradise,Dasaarahalli,Bang', 'AB-', 3),
('Vinayaka Blood Bank,Opp Soundarya Paradise,Dasaarahalli,Bang', 'B-', 3),
('Vinayaka Blood Bank,Opp Soundarya Paradise,Dasaarahalli,Bang', 'A+', 6),
('Jai Deva Blood Bank,Dairy Circle,WhiteField,Bangalore', 'AB+', 12),
('Jai Deva Blood Bank,Dairy Circle,WhiteField,Bangalore', 'O-', 12),
('Jai Deva Blood Bank,Dairy Circle,WhiteField,Bangalore', 'A+', 10),
('Siddaganga Blood Bank,Kythsandra,Tumkur', 'B+', 10),
('Siddaganga Blood Bank,Kythsandra,Tumkur', 'A-', 7),
('Siddaganga Blood Bank,Kythsandra,Tumkur', 'AB+', 9),
('Siddaganga Blood Bank,Kythsandra,Tumkur', 'O-', 9),
('Bhagya Blood Bank,Opp GOVT Bus Stop,Gubbi', 'B+', 6),
('Bhagya Blood Bank,Opp GOVT Bus Stop,Gubbi', 'A+', 6),
('Bhagya Blood Bank,Opp GOVT Bus Stop,Gubbi', 'O+', 11),
('Bhagya Blood Bank,Opp GOVT Bus Stop,Gubbi', 'AB+', 8),
('Narayana Blood Bank,Bommsandra,Bangalore', 'B-', 6),
('Narayana Blood Bank,Bommsandra,Bangalore', 'AB-', 4),
('Narayana Blood Bank,Bommsandra,Bangalore', 'O+', 8),
('Vinayaka Blood Bank,Opp Soundarya Paradise,Dasaarahalli,Bang', 'B+', 1),
('Vinayaka Blood Bank,Opp Soundarya Paradise,Dasaarahalli,Bang', 'B+', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_pass`
--

CREATE TABLE `user_pass` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_pass`
--

INSERT INTO `user_pass` (`user`, `pass`) VALUES
('keshav', 'keshav21@'),
('sharath kg', 'shari@2001'),
('jeevan', 'jeevan@123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
