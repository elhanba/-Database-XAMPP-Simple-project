-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2022 at 05:53 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elhandb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dostavljac`
--

CREATE TABLE `dostavljac` (
  `IDDOST` int(11) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(25) NOT NULL,
  `datum_rođenja` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dostavljac`
--

INSERT INTO `dostavljac` (`IDDOST`, `ime`, `prezime`, `datum_rođenja`) VALUES
(1, 'Elhan', 'Zeba', '2000-11-28'),
(2, 'Numan', 'Mujović', '1993-10-01'),
(3, 'Ali', 'Bosnić', '1999-10-11'),
(4, 'Amar', 'Piralić', '1987-10-21'),
(5, 'Hana', 'Zec', '1996-01-01'),
(6, 'Farah', 'Ljubanović', '2000-03-07'),
(7, 'Amila', 'Dokara', '2002-10-17'),
(8, 'Amna', 'Mujagić', '2001-04-30'),
(9, 'Enes', 'Hadžihalilović', '1998-09-01'),
(10, 'Davud', 'Japalak', '1996-11-28'),
(11, 'Danijel', 'Rovčanin', '1979-10-29'),
(12, 'Dorijan', 'Nevrt', '1989-10-19'),
(13, 'Feđa', 'Teletović', '1999-07-09'),
(14, 'Jusuf', 'Nurkić', '1979-12-14'),
(15, 'Marko', 'Trbić', '1998-10-27'),
(16, 'Timur', 'Trbonja', '2000-10-13'),
(17, 'Ilhan', 'Maglajlija', '2003-02-21'),
(18, 'Danin', 'Bosnić', '2001-06-07'),
(19, 'Emelin', 'Zec', '1995-11-01'),
(20, 'Lamija', 'Hadžigasangić', '2003-03-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dostavljac`
--
ALTER TABLE `dostavljac`
  ADD PRIMARY KEY (`IDDOST`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dostavljac`
--
ALTER TABLE `dostavljac`
  MODIFY `IDDOST` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
