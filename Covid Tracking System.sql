-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2021 at 09:03 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `email`, `subject`, `body`) VALUES
(1, '', 'hi', 'hello vinoth'),
(2, 'vinothv.19@uom.lk', 'vinoth', 'Hello vinoth'),
(3, 'sashinidawpadi@gmail.com', 'nothing', 'kolpm');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `identifieddate` date NOT NULL,
  `quarantine` varchar(20) NOT NULL,
  `center` varchar(50) NOT NULL,
  `profile_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `age`, `gender`, `identifieddate`, `quarantine`, `center`, `profile_image`) VALUES
(28, 'Vellummyilum Vinoth', 22, 'Male', '2021-03-02', 'Negative', 'Hospital', ''),
(29, 'Vellummyilum mathiveni', 21, 'Female', '2021-04-01', 'Under quarantine', 'Hospital', '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `submit_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `page_id`, `name`, `content`, `rating`, `submit_date`) VALUES
(1, 1, 'David Deacon', 'I use this website daily, the amount of content is brilliant.', 5, '2020-01-09 20:43:02'),
(2, 1, 'John Doe', 'Great website, great content, and great support!', 4, '2020-01-09 21:00:41'),
(3, 1, 'Robert Billings', 'Website needs more content, good website but content is lacking.', 3, '2020-01-09 21:10:16'),
(4, 1, 'Daniel Callaghan', 'Great!', 5, '2020-01-09 23:51:05'),
(5, 1, 'Bobby', 'Not much content.', 2, '2020-01-14 21:54:24'),
(6, 1, 'Joshua Kennedy', 'Fantasic website, has everything I need to know.', 5, '2020-01-16 17:34:27'),
(7, 1, 'Johannes Hansen', 'Really like this website, helps me out a lot!', 5, '2020-01-16 17:35:12'),
(8, 1, 'Wit Kwiatkowski', 'Please provide more quality content.', 5, '2020-01-16 17:36:03'),
(9, 1, 'Ã“li ÃžÃ³rÃ°arson', 'Thanks', 5, '2020-01-16 17:36:34'),
(10, 1, 'Jaroslava BerÃ¡nkovÃ¡', '', 5, '2020-01-16 17:37:48'),
(11, 1, 'Naomi Holt', 'Appreciate the amount of content you guys do.', 5, '2020-01-16 17:39:17'),
(12, 1, 'Isobel Whitehead', 'Thank you for providing a website that helps us out a lot!', 5, '2020-01-16 17:40:28'),
(13, 1, 'Warren Mills', 'Everything is awesome!', 5, '2020-01-16 19:34:08'),
(14, 1, 'Larry Johnson', 'Brilliant, thank you for providing quality content!', 5, '2020-01-29 18:40:36'),
(15, 1, 'Vellummyilum Vinoth', 'Good', 4, '2021-03-26 13:00:17'),
(16, 1, 'ghkhk', 'khbyhgbhjb', 1, '2021-03-28 01:54:53'),
(17, 1, 'mathiveni', 'nice', 4, '2021-03-28 03:18:30'),
(18, 1, 'hjhh', 'ink,', 3, '2021-03-28 03:29:20'),
(19, 1, 'Vellummyilum Vinoth', 'good', 5, '2021-03-28 03:29:54'),
(20, 1, 'mathiveni', 'lom', 1, '2021-03-28 03:33:42'),
(21, 1, 'Vellummyilum Vinoth', 'niop', 5, '2021-03-28 03:39:06'),
(22, 1, 'Vellummyilum Vinoth', 'bad', 2, '2021-03-28 03:40:42'),
(23, 1, 'Vellummyilum Vinoth', 'okk', 2, '2021-03-28 03:42:16'),
(24, 1, 'mathiveni', 'no', 2, '2021-03-28 03:47:32'),
(25, 1, 'mathi', 'Good', 5, '2021-03-28 22:05:55'),
(26, 1, 'Dawapadi', 'Nice', 4, '2021-04-03 20:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `sign`
--

CREATE TABLE `sign` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sign`
--

INSERT INTO `sign` (`id`, `name`, `email`, `password`, `code`, `status`, `contactno`, `address`, `gender`) VALUES
(3, 'Vellummyilum Mathiveni', 'vinothv.19@uom.lk', '$2y$10$Vwrjf8ircCbUIYHTYvoBiOBOISXBxxzJIg7D6JH7D9jvbL4lw9ByO', 0, 'verified', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `password`, `code`, `status`, `contactno`, `address`, `gender`) VALUES
(21, 'Vellummyilum Vinoth', 'vellummyilumvinoth1999@gmail.com', '$2y$10$dq4Q5wEmsRZ6nsaibAMVZ.UQX1oQV2jcFFoCzVKfoOFPuq9LPTe/u', 0, 'verified', '', '', ''),
(22, 'Dawapadi', 'sashinidawpadi@gmail.com', '$2y$10$1tN4PkNXy1qi73ZlaWRZcOv9AH647v.g8HKQtAjpCdze6EcKowlDa', 0, 'verified', '', '', ''),
(23, 'Vellummyilum Mathiveni', 'vinothv.19@uom.lk', '$2y$10$J9BFfP3FM9ohXEzYueGMG.X5CN3ywjmVSjT/0x86nfqH7VrxEd/Sm', 0, 'verified', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `nic` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `contactno` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `age`, `nic`, `gender`, `contactno`, `address`) VALUES
(2, 'Vellummyilum Vinoth', 21, '991650563V', 'Male', '0779357507', 'Karaveddy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sign`
--
ALTER TABLE `sign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sign`
--
ALTER TABLE `sign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
