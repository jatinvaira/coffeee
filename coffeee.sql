-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2023 at 01:15 PM
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
-- Database: `coffeee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `product_name`, `price`, `quantity`) VALUES
(1, 'coffee', 23.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(40) NOT NULL,
  `description` varchar(300) NOT NULL,
  `price` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `description`, `price`) VALUES
(1, 'Espresso Shot', 'Intense and bold; a quick caffeine kick', '80'),
(2, 'Latte Delight', 'Creamy espresso with steamed milk artistry.', '120'),
(3, 'Caramel Macchiato', 'Rich espresso meets velvety milk and caramel swirls.', '150'),
(7, 'Iced Americano', 'Chilled perfection for coffee lovers.', '130'),
(8, 'Cappuccino Classic', 'The perfect blend of espresso, steamed milk, and foam.', '140'),
(9, 'Mocha Madness', 'Espresso infused with chocolate and steamed milk.', '160'),
(10, 'Caramel Latte', 'A delightful combination of caramel, espresso, and milk.', '150'),
(11, 'Vanilla Latte', 'Smooth espresso with a touch of vanilla sweetness.', '200'),
(12, 'Cold Coffee', 'updated', '222');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Id` int(5) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `User` varchar(10) NOT NULL DEFAULT 'Customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Id`, `Name`, `Email`, `Phone`, `Password`, `User`) VALUES
(1, 'Pakhi Kansal', 'pakhikansal@gmail.com', '9464943608', 'pakhi', 'Admin'),
(2, 'Pakhi ', 'pakhi@gmail.com', '0946494360', 'p@1', 'Customer'),
(3, 'Prakhar', 'prakhar@gmail.com', '1234567890', 'k@1', 'Customer'),
(4, 'Savi', 'savi@gmail.com', '0987654321', 's@1', 'Customer'),
(5, 'jatin', 'jatin@gmail.com', '1234567890', 'j@1', 'Admin'),
(6, 'Ekansh', 'ekansh@gmail.com', '1234567890', 'e@1', 'Admin'),
(7, 'Preeti', 'preeti@gmail.com', '0987654321', 'preeti', 'Customer'),
(8, 'Manish Kumar', 'ishman@gmail.com', '4256321254', 'm@1', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `Id` int(100) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `ATime` varchar(20) NOT NULL,
  `DTime` varchar(20) NOT NULL,
  `Guests` varchar(10) NOT NULL,
  `Message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`Id`, `Name`, `Email`, `Phone`, `Date`, `ATime`, `DTime`, `Guests`, `Message`) VALUES
(1, 'Pakhi Kansal', 'pakhikansal@gmail.com', '9464943608', '2023-08-19', '17:32', '18:32', '4', 'table with window view'),
(2, 'Pakhi Kansal', 'pakhikansal@gmail.com', '9464943608', '2023-08-19', '17:33', '18:33', '4', 'table with window view'),
(3, 'Jatin Vaira', 'vairajatin@gmail.com', '8054224331', '0006-05-04', '23:23', '14:52', '5', 'Systummm'),
(4, 'na', 'ishman@gmail.com', '4234556', '3123-03-22', '16:18', '11:22', '5', 'free please'),
(5, 'jatinvaira', 'jatinvaira@gmial.com', '532564758', '2023-09-12', '18:46', '20:48', '2', 'sdfgh');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `review` text NOT NULL,
  `star` enum('1','2','3','4','5') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`name`, `email`, `review`, `star`) VALUES
('Aakriti', 'akriti@gmail.com', 'good', '3'),
('Amit Patel', 'amit.patel@gmail.com', 'I like their Mocha. 5/5', '5'),
('Anita Verma', 'anita.verma@gmail.com', 'Nice place to hang out. 4/5', '4'),
('anon0023', 'anon1@gmail.com', 'i was hidden here from police', '5'),
('Neha Gupta', 'neha.gupta@gmail.com', 'Friendly staff. 4/5', '4'),
('Pooja Joshi', 'pooja.joshi@gmail.com', 'Vanilla Latte was very tasty. 5/5', '5'),
('Rahul Gupta', 'rahul.gupta@gmail.com', 'Cold Brew is refreshing. 4/5', '4'),
('Rajesh Sharma', 'rajesh.sharma@gmail.com', 'Great coffee! 5/5', '5'),
('Sneha Singh', 'sneha.singh@gmail.com', 'Caramel Latte is delicious! 5/5', '5'),
('Urvashi', 'urvashi@gmail.com', 'Nice service', '5'),
('Vikram Kumar', 'vikram.kumar@gmail.com', 'Good ambiance. 4/5', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `P_id` (`product_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
