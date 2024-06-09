-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2023 at 01:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buildwizard`
--

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `fid` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`fid`, `pid`, `uid`) VALUES
(1, 2, 12345678),
(6, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `max` decimal(10,2) DEFAULT NULL,
  `min` decimal(10,2) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `name`, `description`, `max`, `min`, `category`) VALUES
(2, 'Intel Core i7', 'High-performance CPU for gaming and productivity.', 499.99, 1.00, 'cpu'),
(3, 'Corsair Vengeance LPX', '16GB DDR4 RAM for faster multitasking.', 99.99, 1.00, 'ram'),
(4, 'Samsung 1TB SSD', 'Fast and reliable storage solution.', 129.99, 1.00, 'storage'),
(5, 'NVIDIA GeForce RTX 3080', 'Top-tier graphics card for gaming and rendering.', 899.99, 1.00, 'gpu'),
(7, 'helloduniya123', '124', 123.00, 12.00, 'cpu'),
(8, 'helloduniya123', '124', 123.00, 12.00, 'cpu'),
(9, 'helloduniya123', '124', 123.00, 12.00, 'cpu'),
(10, 'helloduniya123', '124', 123.00, 12.00, 'cpu'),
(11, 'asdasd', 'asdasd', 13.00, 12.00, 'case'),
(12, 'asdas', 'dasd', 31.00, 12.00, 'cooler'),
(13, 'asdas', 'sad', 13.00, 121.00, 'motherboard'),
(17, 'asdas', 'dasds', 123.00, 123.00, 'cpu'),
(18, 'asdas', 'dasds', 123.00, 123.00, 'cpu'),
(19, 'test', '123', 12314.00, 1234.00, 'cpu'),
(20, 'ITZY lia Processor 86 GHz', 'lia is cute so buy this', 3213.00, 1212.00, 'cpu');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_name` varchar(50) DEFAULT NULL,
  `u_password` varchar(255) DEFAULT NULL,
  `u_email` varchar(50) DEFAULT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_name`, `u_password`, `u_email`, `uid`) VALUES
('sirjan', '12345678', 'sirjan@gmail.com', 1),
('bibat thokar', '123456789', 'bibat@gmail.com', 2),
('amit', '12345678', 'amit@gmail.com', 3),
('sanit', '12345678', 'sanit@gmail.com', 4),
('praches', '12345678', 'praches@gmail.com', 5),
('praches', '87654321', 'praches1@gmail.com', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `u_email` (`u_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
