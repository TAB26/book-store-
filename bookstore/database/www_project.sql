-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2021 at 06:23 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `www_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('miki', 'admin'),
('tame', 'tam');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('0022-345-87-112', 'brkrkta', 'abiy demse', 'brk.jpg', 'romantic fiction', '100.00', 19),
('011-434-567-002', 'lelasew', 'mhret debebe', 'lelasew.jpg', 'psychological and philosophy amharic fiction book', '150.00', 16),
('111-234-098-32', 'tekerchem', 'ysamke worku', 'tekerchem.jpg', 'poem', '65.00', 12),
('211-323-55-87-667', 'andromeda', 'rodas tadese', 'andromeda.jpg', 'scientific', '280.00', 16),
('211-4322-66-75', 'wonjel ena ktat', 'dostovski', 'ktat.jpg', 'romantic fiction', '175.00', 18),
('2222-4555-99-002', 'yotod', 'ysamke worku', 'yotod.jpg', 'adventure romantic and political book', '80.00', 12),
('223-544-666-777', 'aleka gebrehana', 'arefeayne', 'aleka.jpg', 'spritual fiction', '58.00', 18),
('233-443-87-9-12', 'zubeyda', 'alex abrham', 'zubeyda.jpg', 'romantic fiction', '80.00', 11),
('2345-000-1111-33', 'kbela', 'alemayehu gelagay', 'kbela.jpg', 'romantic fiction', '80.00', 19),
('2345-777-889-22', 'fkr eske mekabr', 'adis alemayehu', 'fkr.jpg', 'spritual romantic fiction book', '120.00', 15),
('250-345-675-33', 'sememen', 'sisay ngusu', 'sememen.jpg', 'romantic campus life fiction book', '60.00', 13),
('321-654-98-006', 'dertogada', 'ysamke worku', 'dertogada.jpg', '', '100.00', 12),
('323-66-77-0-112', 'zgora', 'alemayehu wase', 'zgora.jpg', 'spiritual fiction', '110.00', 17),
('333-234-0987-11', 'melos', 'ysamke worku', 'melos.jpg', 'amharic fiction', '70.00', 12),
('333456-71-88', 'tsere 666', 'abiy ylma', '666.jpg', 'general knowledge and spritual', '180.00', 14),
('344-122-3456-11', 'keamen bashager', 'bewketu syum', 'amen.jpg', 'poem book', '55.00', 11),
('352-123-5678-66', 'alferam', 'abiy ylma', 'alferam.jpg', 'psychological scientific and philosophy book', '200.00', 14),
('432-678-009-22', 'Emegua', 'alemayehu wase', 'emegua.jpg', 'spritual scientific book', '100.00', 17),
('544-122-009-333', 'zamra', 'ysamke worku', 'zamra.jpg', 'romantic fiction', '120.00', 12);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(4, 'muste', 'jeldu', 'ambo', '10001', 'Ethiopia'),
(5, 'miki', 'aa', 'aa', '1111', 'Ethiopia'),
(6, 'tame', 'aa', 'gerji', '2001', 'Ethiopia'),
(7, 'marshet', 'south', 'hawasa', '3002', 'Ethiopia'),
(8, 'chris', 'afar', 'semera', '2002', 'Ethiopia');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(8, 4, '40.00', '2021-08-18 07:19:14', 'muste', 'jeldu', 'ambo', '10001', 'Ethiopia'),
(9, 5, '160.00', '2021-08-18 07:37:32', 'miki', 'aa', 'aa', '1111', 'Ethiopia'),
(13, 6, '100.00', '2021-08-22 09:09:09', 'tame', 'aa', 'gerji', '2001', 'Ethiopia'),
(14, 4, '265.00', '2021-08-23 07:03:34', 'muste', 'jeldu', 'ambo', '10001', 'Ethiopia'),
(15, 7, '100.00', '2021-08-23 07:05:42', 'marshet', 'south', 'hawasa', '3002', 'Ethiopia'),
(16, 8, '345.00', '2021-08-23 07:15:14', 'chris', 'afar', 'semera', '2002', 'Ethiopia'),
(17, 5, '80.00', '2021-08-23 07:40:17', 'miki', 'aa', 'aa', '1111', 'Ethiopia'),
(18, 4, '145.00', '2021-08-23 15:35:29', 'muste', 'jeldu', 'ambo', '10001', 'Ethiopia');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(5, '978-1-484216-40-8', '20.00', 3),
(5, '978-1-1180-2669-4', '20.00', 3),
(5, '978-1-44937-075-6', '20.00', 4),
(9, '978-1-4571-0402-2', '20.00', 4),
(9, '978-0-321-94786-4', '20.00', 2),
(8, '978-1-4571-0402-2', '20.00', 2),
(13, '978-1-484216-40-8', '20.00', 3),
(8, '23456-654-77', '0.00', 1),
(8, '115-345-888-3422', '0.00', 1),
(8, '111-234-098-32', '65.00', 1),
(8, '352-123-5678-66', '200.00', 1),
(15, '432-678-009-22', '100.00', 1),
(16, '111-234-098-32', '65.00', 3),
(16, '011-434-567-002', '150.00', 1),
(9, '233-443-87-9-12', '80.00', 1),
(8, '233-443-87-9-12', '80.00', 1),
(8, '111-234-098-32', '65.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(11, 'aster mega'),
(12, 'dertogada '),
(13, 'faris '),
(14, 'sads'),
(15, 'mankusa'),
(16, 'far east'),
(17, 'zgora'),
(18, 'alpha'),
(19, 'rhobot');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
