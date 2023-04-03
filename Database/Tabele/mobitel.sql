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
-- Table structure for table `mobitel`
--

CREATE TABLE `mobitel` (
  `IDMOB` int(11) NOT NULL,
  `naziv` varchar(20) NOT NULL,
  `kompanija` varchar(20) NOT NULL,
  `datum_izdavanja` date DEFAULT NULL,
  `cijena` float NOT NULL,
  `ID_K` int(11) NOT NULL,
  `stanje` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mobitel`
--

INSERT INTO `mobitel` (`IDMOB`, `naziv`, `kompanija`, `datum_izdavanja`, `cijena`, `ID_K`, `stanje`) VALUES
(1, 'Galaxy S22 Ultra', 'Samsung', '2022-02-25', 1300, 1, 'Novo'),
(2, 'Mi 11 Lite', 'Xiaomi Inc', '2020-05-01', 300, 2, 'Novo'),
(3, 'Galaxy A52', 'Samsung', '2022-01-01', 350, 3, 'Korišteno'),
(4, 'Mi 11', 'Xiaomi Inc', '2020-05-01', 500, 4, 'Novo'),
(5, 'Galaxy A02', 'Samsung', '2021-11-28', 200, 5, 'Korišteno'),
(6, 'Note 20', 'Samsung', '2020-12-09', 700, 6, 'Novo'),
(7, 'iPhone 11 Pro', 'Apple', '2021-03-22', 700, 7, 'Korišteno'),
(8, 'Galaxy S10', 'Samsung', '2019-12-31', 400, 8, 'Korišteno'),
(9, 'P50 Pocket', 'Huawei', '2022-02-01', 1700, 9, 'Novo'),
(10, 'iPhone 13 Pro Max', 'Apple', '2020-05-17', 1500, 10, 'Novo'),
(11, 'P30 Lite', 'Huawei', '2018-09-01', 280, 11, 'Korišteno'),
(12, 'RealMe 6', 'RealMe', '2020-05-01', 250, 12, 'Novo'),
(13, 'X2', 'RealMe', '2019-06-27', 400, 13, 'Korišteno'),
(14, 'P50', 'Huawei', '2021-09-30', 800, 14, 'Korišteno'),
(15, 'Galaxy S21 FE', 'Samsung', '2020-12-31', 500, 15, 'Korišteno'),
(16, '7i', 'RealMe', '2020-05-01', 150, 16, 'Novo'),
(17, 'iPhone XS', 'Apple', '2016-05-13', 370, 17, 'Novo'),
(18, 'iPhone 13', 'Apple', '2022-01-21', 800, 18, 'Korišteno'),
(19, 'Mi 11 Ultra', 'Xiaomi Inc', '2020-07-11', 1000, 19, 'Novo'),
(20, 'Redmi Note 9', 'Xiaomi Inc', '2019-12-01', 200, 20, 'Novo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobitel`
--
ALTER TABLE `mobitel`
  ADD PRIMARY KEY (`IDMOB`),
  ADD KEY `ID_K` (`ID_K`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mobitel`
--
ALTER TABLE `mobitel`
  MODIFY `IDMOB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
