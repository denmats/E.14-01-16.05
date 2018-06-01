-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2018 at 06:18 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `szkola`
--

-- --------------------------------------------------------

--
-- Table structure for table `ocena`
--

CREATE TABLE `ocena` (
  `id_ocena` int(11) NOT NULL,
  `przedmiot_id` int(11) NOT NULL,
  `ucen_id` int(11) NOT NULL,
  `ocena` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `ocena`
--

INSERT INTO `ocena` (`id_ocena`, `przedmiot_id`, `ucen_id`, `ocena`, `data`) VALUES
(1, 1, 1, 3, '2018-05-01'),
(6, 1, 1, 5, '2018-05-02'),
(7, 1, 1, 4, '2018-05-02'),
(8, 2, 1, 5, '2018-05-02'),
(9, 3, 1, 3, '2018-05-02'),
(10, 4, 2, 5, '2018-05-01'),
(11, 1, 2, 3, '2018-05-02'),
(12, 1, 2, 4, '2018-05-03'),
(13, 5, 2, 4, '2018-05-02'),
(14, 4, 2, 3, '2018-05-02'),
(15, 4, 1, 3, '2018-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `przedmiot`
--

CREATE TABLE `przedmiot` (
  `id_przedmiot` int(11) NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `przedmiot`
--

INSERT INTO `przedmiot` (`id_przedmiot`, `nazwa`) VALUES
(1, 'język polski'),
(2, 'matematyka'),
(3, 'język angielski'),
(4, 'biologia'),
(5, 'chemia');

-- --------------------------------------------------------

--
-- Table structure for table `uczen`
--

CREATE TABLE `uczen` (
  `id_uczen` int(11) NOT NULL,
  `imie` text COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` text COLLATE utf8_polish_ci NOT NULL,
  `PESEL` text COLLATE utf8_polish_ci NOT NULL,
  `klasa` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `uczen`
--

INSERT INTO `uczen` (`id_uczen`, `imie`, `nazwisko`, `PESEL`, `klasa`) VALUES
(1, 'Ewa', 'Kowalska', '12345678900', '4'),
(2, 'Jan', 'Kowalski', '00987654321', '5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ocena`
--
ALTER TABLE `ocena`
  ADD PRIMARY KEY (`id_ocena`),
  ADD KEY `przedmiot_id` (`przedmiot_id`) USING BTREE,
  ADD KEY `ucen_id` (`ucen_id`) USING BTREE;

--
-- Indexes for table `przedmiot`
--
ALTER TABLE `przedmiot`
  ADD PRIMARY KEY (`id_przedmiot`);

--
-- Indexes for table `uczen`
--
ALTER TABLE `uczen`
  ADD PRIMARY KEY (`id_uczen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ocena`
--
ALTER TABLE `ocena`
  MODIFY `id_ocena` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `przedmiot`
--
ALTER TABLE `przedmiot`
  MODIFY `id_przedmiot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uczen`
--
ALTER TABLE `uczen`
  MODIFY `id_uczen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
