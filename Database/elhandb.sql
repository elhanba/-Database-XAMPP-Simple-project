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
-- Indexes for table `dostavljac`
--
ALTER TABLE `dostavljac`
  ADD PRIMARY KEY (`IDDOST`);

--
-- Indexes for table `kupac`
--
ALTER TABLE `kupac`
  ADD PRIMARY KEY (`IDK`);

--
-- Indexes for table `mobitel`
--
ALTER TABLE `mobitel`
  ADD PRIMARY KEY (`IDMOB`),
  ADD KEY `ID_K` (`ID_K`);

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
-- AUTO_INCREMENT for table `dostavljac`
--
ALTER TABLE `dostavljac`
  MODIFY `IDDOST` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kupac`
--
ALTER TABLE `kupac`
  MODIFY `IDK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `mobitel`
--
ALTER TABLE `mobitel`
  MODIFY `IDMOB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
