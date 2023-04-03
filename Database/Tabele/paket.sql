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
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `IDP` int(11) NOT NULL,
  `cijena_dostave` float NOT NULL,
  `datum_dostave` date DEFAULT NULL,
  `ID_DOST` int(11) DEFAULT NULL,
  `dostavljeno` tinyint(1) NOT NULL DEFAULT 0,
  `ID_MOB` int(11) NOT NULL,
  `ID_K` int(11) NOT NULL,
  `vid_plaćanja` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`IDP`, `cijena_dostave`, `datum_dostave`, `ID_DOST`, `dostavljeno`, `ID_MOB`, `ID_K`, `vid_plaćanja`) VALUES
(1, 20, '2022-04-29', 1, 0, 1, 1, 'Keš'),
(2, 20, '2022-04-28', 2, 0, 2, 2, 'Keš'),
(3, 20, '2022-05-12', 3, 0, 3, 3, 'Kartica'),
(4, 20, '2022-01-19', 4, 1, 4, 4, 'Na rate'),
(5, 20, '2022-03-17', 5, 1, 5, 5, 'Kartica'),
(6, 20, '2022-11-23', 6, 0, 6, 6, 'Kartica'),
(7, 20, '2022-12-30', 7, 0, 7, 7, 'Kartica'),
(8, 40, '2022-08-07', 8, 0, 8, 8, 'Na rate'),
(9, 40, '2022-10-10', 9, 0, 9, 9, 'Keš'),
(10, 40, '2022-04-21', 10, 0, 10, 10, 'Keš'),
(11, 20, '2022-01-20', 11, 1, 11, 11, 'Kartica'),
(12, 20, '2022-03-21', 12, 1, 12, 12, 'Keš'),
(13, 40, '2022-02-02', 13, 1, 13, 13, 'Na rate'),
(14, 40, '2022-01-29', 14, 1, 14, 14, 'Na rate'),
(15, 20, '2022-05-08', 15, 0, 15, 15, 'Keš'),
(16, 20, '2022-03-18', 16, 1, 16, 16, 'Kartica'),
(17, 20, '2022-07-13', 17, 0, 17, 17, 'Keš'),
(18, 20, '2022-06-16', 18, 0, 18, 18, 'Na rate'),
(19, 20, '2022-04-17', 19, 0, 19, 19, 'Na rate'),
(20, 40, '2022-02-26', 20, 1, 20, 20, 'Keš');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`IDP`),
  ADD KEY `ID_DOST` (`ID_DOST`),
  ADD KEY `ID_MOB` (`ID_MOB`),
  ADD KEY `ID_K` (`ID_K`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `IDP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `paket`
--
ALTER TABLE `paket`
  ADD CONSTRAINT `paket_ibfk_1` FOREIGN KEY (`ID_DOST`) REFERENCES `dostavljac` (`IDDOST`),
  ADD CONSTRAINT `paket_ibfk_2` FOREIGN KEY (`ID_MOB`) REFERENCES `mobitel` (`IDMOB`),
  ADD CONSTRAINT `paket_ibfk_3` FOREIGN KEY (`ID_K`) REFERENCES `kupac` (`IDK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
