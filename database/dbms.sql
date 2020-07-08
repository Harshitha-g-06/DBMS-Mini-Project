
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Table structure for table `products`
--
CREATE TABLE `category` (
  `cat_id` int(3) NOT NULL,
  `cat_name` varchar(15) NOT NULL
);

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1,'keyboard'),
(2,'string'),
(3,'percussion'),
(4,'woodwind'),
(5,'brass');





CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `price` int(20) NOT NULL,
  `image` blob NOT NULL,
  `cat_id` int(3)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`,`image`,`cat_id`) VALUES
(1, 'Kawal Piano', 13000,'uploads/piano1.jpg',1),
(2, 'Fazioli Piano',12500,'uploads/piano2.jpg',1),
(3, 'Prakrashi Harmonium', 3500,'uploads/harmonium1.jpg',1),
(4, 'Bina Harmonium', 4800,'uploads/harmonium2.jpg',1),
(5, 'Martin Guitar', 11800,'uploads/guitar1.jpg',2),
(6, 'Yamaha Guitar', 12500,'uploads/guitar2.jpg',2),
(7, 'Stentor violin', 25000,'uploads/violin1.jpg',2),
(8, 'Knilin Violin', 12300,'uploads/violin.jpg',2),
(9, 'Maharaja Tabla', 8000,'uploads/tabla1.jpg',3),
(10, 'Meinl Tabla', 7500,'uploads/tabla2.jpg',3),
(11, 'Pearl Bassdrums', 17000,'uploads/bassdrums1.jpg',3),
(12, 'Ludwig Bassdrums', 16000,'uploads/bassdrums2.jpg',3),
(13, 'Pearl Quartz Series Flute', 2500,'uploads/flute1.jpg',4),
(14, 'Gemeinhart 32B Flute', 4500,'uploads/flute2.jpg',4),
(15, 'Fox Renard Basson', 10500,'uploads/basson1.jpg',4),
(16, 'Jupiter 363 Basson', 15000,'uploads/basson2.jpg',4),
(17, 'Getzen 590S Trumpet', 8000,'uploads/trumpet1.jpg',5),
(18, 'Meidini Trumpet', 7500,'uploads/trumpet2.jpg',5),
(19, 'H179 Double French horn', 7000,'uploads/horn1.jpg',5),
(20, 'YHR-314ll French horn', 10500,'uploads/horn2.jpg',5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `admin` (
  `username` varchar(15) NOT NULL,
  `password` int(10) NOT NULL
);

INSERT INTO `admin` (`username`, `password`) VALUES
('shivani',040),('bhumika',009);


CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `phone` int(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email_id`, `first_name`, `last_name`, `phone`,  `password`,`address`) VALUES
(65, 'sharew5m123@gmail.com', 'reys', 'rudt', 7800123098, 'e4f194cba29960e12d8b8f1bfedc972b','Bangalore'),
(66, 'sgah234@gmail.com', 'werty', 'erty', 8123879707, 'e10adc3949ba59abbe56e057f20f883e','Kolkata'),
(67, 'sham1234@gmail.com', 'Sham', 'das', 9448426449, 'e10adc3949ba59abbe56e057f20f883e','Mangalore');

-- --------------------------------------------------------

--
-- Table structure for table `users_products`
--

CREATE TABLE `users_products` (
  `u_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `qty`  int(3),
  `status` enum('Added To Cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_products`
--

INSERT INTO `users_products` (`id`, `user_id`, `item_id`, `status`) VALUES
(11, 67, 6, 'Confirmed'),
(17, 67, 1, 'Confirmed'),
(18, 67, 5, 'Confirmed'),
(19, 67, 6, 'Confirmed'),
(20, 67, 1, 'Confirmed'),
(23, 67, 1, 'Confirmed'),
(24, 67, 2, 'Confirmed'),
(25, 67, 9, 'Confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id`(`cat_id`);
--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `admin`
   ADD PRIMARY KEY(`username`);

ALTER TABLE `category`
      ADD PRIMARY KEY(`cat_id`);

--
-- Indexes for table `users_products`
--
ALTER TABLE `users_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users_products`
--
ALTER TABLE `users_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
