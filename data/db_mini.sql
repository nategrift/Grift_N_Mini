-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 25, 2020 at 02:58 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mini`
--

-- --------------------------------------------------------

--
-- Table structure for table `mini_cars`
--

CREATE TABLE `mini_cars` (
  `car_id` int(11) NOT NULL,
  `car_name` varchar(80) NOT NULL,
  `car_thumbnail` text NOT NULL,
  `car_image` text NOT NULL,
  `car_video` text NOT NULL,
  `car_description` text NOT NULL,
  `car_price` varchar(30) NOT NULL,
  `car_slogan` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mini_cars`
--

INSERT INTO `mini_cars` (`car_id`, `car_name`, `car_thumbnail`, `car_image`, `car_video`, `car_description`, `car_price`, `car_slogan`) VALUES
(1, 'Mini 3 Door', 'mini-3-door-thumb.png', 'mini-3-door.jpg', 'mini-3-door.mp4', ' It’s the original icon, reborn and reimagined for modern motoring. The MINI 3 door builds on 60+ years of timeless MINI design, but comes equipped with a whole host of 21st century tech features and practical touches to cater to your every need. Distinct by design and urban by nature, it’s made to stand out as you explore new corners of your city. And with its ultra-nimble go-kart feel, you’re sure to find something exciting around every turn. ', '$23,490', 'Explore More Corners'),
(2, 'Mini 5 Door', 'mini-5-door-thumb.png', 'mini-5-door.jpg', 'mini-5-door.mp4', 'It’s the iconic MINI hatch, with two extra doors and a bit more room for passengers and cargo. Featuring our hallmark wheels-pushed stance and a low centre of gravity, the MINI 5 door is designed to deliver the same level of corner-carving agility as its 3-door brother. But thanks to a surprisingly spacious interior equipped with added legroom and up to 941 Litres of cargo space, it’s as functional to own as it is fun to drive. ', '$24,790', 'Explore More Corners'),
(3, 'Mini Convertible', 'mini-convertible-thumb.png', 'mini-convertible.jpg', 'mini-convertible.mp4', 'Open top. Open road. Open-ended possibilities. The MINI Convertible brings together three generations of MINI design, but boasts a personality that is all its own. With comfortable seating for four and a 3-in-1 Soft Top that can function as a sunroof or a full-fledged drop-top, it’s always ready for your next open-air adventure. And with a lively Twin Power Turbo engine capable of hitting 100 km/h in a blistering 6.6 seconds (in the John Cooper Works variant), it’s sure to offer a few hair-raising thrills along the way. ', '$30,390', 'Live Unfiltered');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mini_cars`
--
ALTER TABLE `mini_cars`
  ADD PRIMARY KEY (`car_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mini_cars`
--
ALTER TABLE `mini_cars`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
