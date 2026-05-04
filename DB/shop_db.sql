-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2026 at 12:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'Admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(18, 6, 1, 'Jordan 3 Noir', 2499, 1, 'Jordan-3-pic-1.jpg'),
(19, 6, 2, 'Balenciaga Flared Jeans', 2400, 1, 'Jeans-pic-1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(5, 1, 'User', 'user1@gmail.com', '0123456789', 'theyungwatergun'),
(6, 6, 'Jay ', 'Jay@gmail.com', '0123456789', 'Wassup');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(6, 1, 'Ceejay', '0686935208', 'user1@gmail.com', 'cash on delivery', 'flat no. 01, Main Road, Johannesburg, Gauteng, South Africa - 1619', 'Jordan 4 Off White (4000 x 1) - Real Madrid 2016/2017 Long Sleeve (750 x 1) - ', 4750, '2026-04-18', 'completed'),
(7, 1, 'Ceejay', '0123456789', 'user1@gmail.com', 'cash on delivery', 'flat no. 101, Main Road, Sandton, Gauteng, South Africa - 1619', 'Nike LeBron 23 \"Miami Twice\" (3700 x 1) - ', 3700, '2026-04-24', 'pending'),
(8, 6, 'Jay', '012356789', 'Jay@gmail.com', 'credit card', 'flat no. 101, Bands Talk Avenue, Sandton, Gauteng, South Africa - 1738', 'Jordan 3 Noir (2499 x 1) - Vetements Zurich Hoodie (800 x 1) - Balenciaga Flared Jeans (2400 x 1) - Bape Hoodie (1000 x 1) - ', 6699, '2026-04-30', 'pending'),
(9, 6, 'Jay', '0123456789', 'Jay@gmail.com', 'cash on delivery', 'flat no. 188, Road, Johannesburg, Gauteng, South Africa  - 1918', 'Nike LeBron 23 \"Miami Twice\" (3700 x 1) - ', 3700, '2026-04-30', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `category`, `price`, `image_01`, `image_02`, `image_03`, `category_id`) VALUES
(1, 'Jordan 3 &#34;Noir&#34;', 'Jordan 3 Noir \r\nExcellent Condition\r\nSize 10 but fits Size 9 as well doesn&#39;t fit too big hence reselling.', '', 2500, 'Jordan-3-pic-1.jpg', 'Jordan-3-pic-2.jpg', 'Jordan-3-pic-1.jpg', NULL),
(2, 'Balenciaga Flared Jeans', 'Great condition, slight wear & tear ', '', 2400, 'Jeans-pic-1.jpeg', 'Jeans-pic-2.jpeg', 'Jeans-pic-1.jpeg', NULL),
(3, 'Jordan 4 Off White', 'Older brother left the country and these shoes behind, he said i can resell them lol, comes with original box size 9.', '', 3500, 'Jordan-4-pic-1.jpeg', 'Jordan-4-pic-2.jpeg', 'Jordan-4-pic-1.jpeg', NULL),
(9, 'Vetements Zurich Hoodie', 'oversized medium size hoodie fits large too, hardly worn, great condition', '', 800, 'vetements-hoodie-pic-1.jpeg', 'vetements-hoodie-pic-2.jpeg', 'vetements-hoodie-pic-3.jpeg', NULL),
(10, 'Real Madrid 2016/2017 Long Sleeve', 'Real Madrid 2016/2017 Long Sleeve, Ronaldo num 7 on the back, medium size, brand new, comes with original tags ', '', 1050, 'football-shirt-pic-1.jpeg', 'football-shirt-pic-2.jpeg', 'football-shirt-pic-3.jpeg', NULL),
(11, 'Nike LeBron 23 &#34;Miami Twice&#34;', 'Lebron Basketball shoes, Brand new comes with original box, size 10', '', 3700, 'nike-lebron-23-pic-1.png', 'nike-lebron-23-pic-2.png', 'nike-lebron-23-pic-3.png', NULL),
(12, 'Supreme Hoodie ', 'Barely worn, no fading or discoloring. Medium sized,  like new!', '', 1500, 'red-supreme-pic-1.png', 'red-supreme-pic-2.jpg', 'red-supreme-pic-3.jpg', NULL),
(13, 'Chrome Hearts Long Sleeve Shirt', 'still new, comes with tags, bought abroad, never worn.', '', 1200, 'chrome-hearts-shirt-pic-1.jpg', 'chrome-hearts-shirt-pic-2.jpg', 'chrome-hearts-shirt-pic-3.jpg', NULL),
(14, 'Bape Hoodie', 'Slightly used, zero wear/tear, medium sized', '', 1000, 'bap-hoodie-pic-1.jpeg', 'bap-hoodie-pic-2.jpeg', 'bap-hoodie-pic-3.jpeg', NULL),
(15, 'Sp5der X Adidas Superstar', 'brand new, comes with all laces and original shoe box', '', 2500, 'Sp5derXAdidas-pic-1.jpg', 'Sp5derXAdidas-pic-2.jpg', 'Sp5derXAdidas-pic-3.jpg', NULL),
(16, 'Sp5der Pink Tracksuit ', 'Sp5der Pink Tracksuit, barely worn, medium sized, great condition!', '', 1100, 'Sp5derTracksuit-pic-1.jpg', 'Sp5derTracksuit-pic-2.jpg', 'Sp5derTracksuit-pic-3.jpg', NULL),
(17, 'Jordan 11 &#34;Bred&#34;', 'Barely worn, well taken care of & comes with original box', '', 2000, 'jordan-11-pic-2.jpg', 'jordan-11-pic-1.jpg', 'jordan-11-pic-3.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Ceejay', 'user1@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(5, 'ball', 'ball@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(6, 'Jay', 'Jay@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(4, 4, 2, 'Balenciaga Flared Jeans', 1000, 'Jeans-pic-1.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
