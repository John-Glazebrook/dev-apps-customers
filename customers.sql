-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2024 at 03:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev-apps-customers`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first` varchar(32) NOT NULL,
  `last` varchar(32) NOT NULL,
  `email` varchar(256) NOT NULL,
  `age` int(11) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lon` decimal(10,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first`, `last`, `email`, `age`, `post_code`, `lat`, `lon`) VALUES
(1, 'Merlin', 'Poldark', 'merlin.poldark@tintagel.com', 35, 'TR7 1QH', 50.40871500, -5.08857100),
(2, 'Demelza', 'Carne', 'demelza.carne@whealleisure.com', 28, 'PL26 7UH', 50.35798000, -4.86708700),
(3, 'Ross', 'Enys', 'ross.enys@nampara.com', 42, 'TR3 6JQ', 50.22253600, -5.08397900),
(4, 'Verity', 'Blamey', 'verity.blamey@falmouth.com', 31, 'TR11 3QN', 50.15250800, -5.07634600),
(5, 'Dwight', 'Pascoe', 'dwight.pascoe@kernow.com', 39, 'PL30 5BL', 50.44569000, -4.76241200),
(6, 'Caroline', 'Penvenen', 'caroline.penvenen@killewarren.com', 26, 'TR2 5NW', 50.22540000, -4.94918700),
(7, 'George', 'Warleggan', 'george.warleggan@trenwith.com', 45, 'TR1 3LJ', 50.26668600, -5.09146400),
(8, 'Elizabeth', 'Chynoweth', 'elizabeth.chynoweth@truro.com', 33, 'TR4 9DX', 50.28703000, -5.08284200),
(9, 'Prudie', 'Paynter', 'prudie.paynter@nampara.com', 50, 'TR10 8JE', 50.16715800, -5.09948600),
(10, 'Jud', 'Paynter', 'jud.paynter@whealleisure.com', 53, 'PL25 4DJ', 50.34649200, -4.78500200),
(11, 'Morwenna', 'Chynoweth', 'morwenna.chynoweth@stives.com', 24, 'TR26 1SY', 50.21636900, -5.47876400),
(12, 'Drake', 'Carne', 'drake.carne@sawle.com', 27, 'PL14 6ER', 50.49914200, -4.48888600),
(13, 'Sam', 'Carne', 'sam.carne@methodist.com', 29, 'TR13 8HD', 50.10129400, -5.27827700),
(14, 'Tholly', 'Tregirls', 'tholly.tregirls@falmouth.com', 60, 'TR11 5SB', 50.17455700, -5.09047400),
(15, 'Zacky', 'Martin', 'zacky.martin@whealleisure.com', 48, 'TR15 3AE', 50.23071600, -5.23686500),
(16, 'Jinny', 'Carter', 'jinny.carter@truro.com', 22, 'TR1 1XU', 50.26546000, -5.05481700),
(17, 'Horace', 'Treneglos', 'horace.treneglos@bodmin.com', 55, 'PL31 2QN', 50.47175500, -4.74085700),
(18, 'Rosina', 'Hoblyn', 'rosina.hoblyn@looe.com', 20, 'PL13 1NZ', 50.36713600, -4.42074000),
(19, 'Geoffrey', 'Charles', 'geoffrey.charles@trenwith.com', 18, 'TR6 0BH', 50.34591600, -5.15190000),
(20, 'Valentine', 'Warleggan', 'valentine.warleggan@truro.com', 15, 'TR1 2JA', 50.25998200, -5.05586400);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
