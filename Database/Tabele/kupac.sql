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
-- Table structure for table `kupac`
--

CREATE TABLE `kupac` (
  `IDK` int(11) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(25) NOT NULL,
  `datum_rodjenja` date DEFAULT NULL,
  `ulica` varchar(30) NOT NULL,
  `grad` varchar(25) NOT NULL DEFAULT 'Sarajevo',
  `drzava` varchar(30) NOT NULL DEFAULT 'BiH'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kupac`
--

INSERT INTO `kupac` (`IDK`, `ime`, `prezime`, `datum_rodjenja`, `ulica`, `grad`, `drzava`) VALUES
(1, 'Emin', 'Bihorac', '2001-01-01', 'Marka Marulica 25', 'Sarajevo', 'BiH'),
(2, 'Tarik', 'Vuk', '2003-06-04', 'Dr Silve Rizvanbegović 16', 'Sarajevo', 'BiH'),
(3, 'Hena', 'Šehović', '2002-03-28', 'Marka Marulića 19', 'Sarajevo', 'BiH'),
(4, 'Benjamin', 'Obhođaš', '2001-11-04', 'Kolodvorska 1', 'Sarajevo', 'BiH'),
(5, 'Amar', 'Mujkanović', '2002-12-27', 'Hasana Brkića 13', 'Sarajevo', 'BiH'),
(6, 'Arman', 'Ramusović', '1999-10-07', 'Ulica Tuzla 3', 'Tuzla', 'BiH'),
(7, 'Izeta', 'Redžepi', '2003-11-12', 'Ulica Zenica 4', 'Zenica', 'BiH'),
(8, 'Medina', 'Bihorac', '1998-11-04', 'Ulica Ljubljana 5', 'Ljubljana', 'Slovenija'),
(9, 'Nerina', 'Čengić', '2000-01-31', 'Ulica Zagreb 6', 'Zagreb', 'Hrvatska'),
(10, 'Tarik', 'Belagoši', '1995-11-13', 'Ulica Beograd 7', 'Beograd', 'Srbija'),
(11, 'Damir', 'Subašić', '2000-05-14', 'Alberta Fortisa 17', 'Sarajevo', 'BiH'),
(12, 'Elmir', 'Borovina', '2003-01-11', 'Himze Polovine 17', 'Sarajevo', 'BiH'),
(13, 'Alija', 'Uštović', '2000-05-16', 'Ulica Zaječar 12', 'Zaječar', 'Srbija'),
(14, 'Ajla', 'Hodžić', '2000-07-01', 'Ulica Vranje 13', 'Vranje', 'Srbija'),
(15, 'Hamza', 'Bihorac', '2002-09-25', 'Mehmeda Spahe 4', 'Sarajevo', 'BiH'),
(16, 'Deni', 'Nevrt', '1997-02-27', 'Ulica Banja Luka 15', 'Banja Luka', 'BiH'),
(17, 'Irma', 'Zeba', '1994-11-12', 'Ulica Trebinje 5', 'Trebinje', 'BiH'),
(18, 'Ilma', 'Duraković', '1990-12-30', 'Braće Kadić 3', 'Sarajevo', 'BiH'),
(19, 'Emir', 'Medunjanin', '1998-08-25', 'Halida Kajtaza 12', 'Sarajevo', 'BiH'),
(20, 'Armin', 'Katica', '2003-07-13', 'Ulica Split 3', 'Split', 'Hrvatska');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kupac`
--
ALTER TABLE `kupac`
  ADD PRIMARY KEY (`IDK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kupac`
--
ALTER TABLE `kupac`
  MODIFY `IDK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
