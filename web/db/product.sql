-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2018 at 08:55 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `pro_type` varchar(255) NOT NULL,
  `pro_pric` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`pro_id`, `pro_name`, `pro_type`, `pro_pric`) VALUES
(71, 'โค้ก', 'น้ำ', 15),
(72, 'โค้ก', 'น้ำ', 15),
(73, 'โค้ก', 'น้ำ', 15),
(74, 'โค้ก', 'น้ำ', 15),
(75, 'โค้ก', 'น้ำ', 15),
(76, 'โค้ก', 'น้ำ', 15),
(77, 'โค้ก', 'น้ำ', 15),
(78, 'โค้ก', 'น้ำ', 15),
(79, 'โค้ก', 'น้ำ', 15),
(80, 'โค้ก', 'น้ำ', 15),
(81, 'โค้ก', 'น้ำ', 15),
(82, 'โค้ก', 'น้ำ', 15),
(83, 'โค้ก', 'น้ำ', 15),
(84, 'โค้ก', 'น้ำ', 15),
(85, 'โค้ก', 'น้ำ', 15),
(86, 'โค้ก', 'น้ำ', 15),
(87, 'โค้ก', 'น้ำ', 15),
(88, 'โค้ก', 'น้ำ', 15),
(89, 'โค้ก', 'น้ำ', 15),
(90, 'โค้ก', 'น้ำ', 15),
(91, 'โค้ก', 'น้ำ', 15),
(92, 'โค้ก', 'น้ำ', 15),
(93, 'โค้ก', 'น้ำ', 15),
(94, 'โค้ก', 'น้ำ', 15),
(95, 'โค้ก', 'น้ำ', 15),
(96, 'โค้ก', 'น้ำ', 15),
(97, 'โค้ก', 'น้ำ', 15),
(98, 'โค้ก', 'น้ำ', 15),
(99, 'โค้ก', 'น้ำ', 15),
(100, 'โค้ก', 'น้ำ', 15),
(101, 'โค้ก', 'น้ำ', 15),
(102, 'โค้ก', 'น้ำ', 15),
(103, 'โค้ก', 'น้ำ', 15),
(104, 'โค้ก', 'น้ำ', 15),
(105, 'โค้ก', 'น้ำ', 15),
(106, 'โค้ก', 'น้ำ', 15),
(107, 'โค้ก', 'น้ำ', 15),
(108, 'โค้ก', 'น้ำ', 15),
(109, 'โค้ก', 'น้ำ', 15),
(110, 'โค้ก', 'น้ำ', 15),
(111, 'โค้ก', 'น้ำ', 15),
(112, 'โค้ก', 'น้ำ', 15),
(113, 'โค้ก', 'น้ำ', 15),
(114, 'โค้ก', 'น้ำ', 15),
(115, 'โค้ก', 'น้ำ', 15),
(116, 'โค้ก', 'น้ำ', 15),
(117, 'โค้ก', 'น้ำ', 15),
(118, 'โค้ก', 'น้ำ', 15),
(119, 'โค้ก', 'น้ำ', 15),
(120, 'โค้ก', 'น้ำ', 15),
(121, 'โค้ก', 'น้ำ', 15),
(122, 'โค้ก', 'น้ำ', 15),
(123, 'โค้ก', 'น้ำ', 15),
(124, 'โค้ก', 'น้ำ', 15),
(125, 'โค้ก', 'น้ำ', 15),
(126, 'โค้ก', 'น้ำ', 15),
(127, 'โค้ก', 'น้ำ', 15),
(128, 'โค้ก', 'น้ำ', 15),
(129, 'โค้ก', 'น้ำ', 15),
(130, 'โค้ก', 'น้ำ', 15),
(131, 'โค้ก', 'น้ำ', 15),
(132, 'โค้ก', 'น้ำ', 15),
(133, 'โค้ก', 'น้ำ', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
