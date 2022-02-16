-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2022 at 01:21 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `int_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `sr` int(11) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `yor` int(11) NOT NULL,
  `director` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`sr`, `movie_name`, `cast`, `yor`, `director`) VALUES
(1, 'Pushpa', 'Allu Arjun, Rashmika Mandanna, Fahadh Faasil, Anasuya Bharadwaj, Samantha Ruth, PrabhuRamesh Rao\r\n', 2021, 'Sukumar'),
(2, 'Bahubali The Beginning', 'Prabhas, Tamannaah Bhatia, Anushka Shetty, Rana Daggubati, Ramya Krishnan, Sathyaraj\r\n, Nasser\r\n', 2015, 'S.S. Rajamouli'),
(3, '3 Idiots', 'Aamir Khan, Kareena Kapoor Khan, Aakash Dabhade, Pitobash Tripathy, Sanjay Lafont, Omi Vaidya, Arun Bali, R Madhavan, Sharman Joshi, Jaaved Jaaferi', 2009, 'Rajkumar Hirani'),
(4, 'Lagaan: Once Upon a Time in India', 'Aamir Khan, Gracy Singh, Alex Shirtcliff, Barry Hart, Jamie, Whitby Coles, Neil Patrick, Ray Eves', 2001, 'Ashutosh Gowariker'),
(5, 'Bajirao Mastani', 'Ranveer Singh, Deepika Padukone, Priyanka Chopra, Tanvi Azmi, Mahesh Manjrekar, Milind Soman, Sanjay Mishra', 2015, 'Sanjay Leela Bhansali'),
(6, 'Drishyam', 'Ajay Devgn, Shriya Saran, Tabu, Smita Inamdar, Amruta Satbhai, Nandkishor, Arun Sakpal', 2015, 'Nishikant Kamat'),
(7, 'Border', 'Suniel Shetty, Sunny Deol\r\nTabu, Akshaye Khanna, Jackie Shroff, Pooja Bhatt, Ashokan, Sapna Bedi, Sanjeeva', 1997, 'J P Dutta'),
(8, 'K.G.F Chapter 1', 'Yash, Srinidhi Shetty, Anant Nag, Tamannaah Bhatia, Mouni Roy', 2018, 'Prashanth Neel'),
(9, 'Taare Zameen Par', 'Aamir Khan, Darsheel Safary\r\nM K Raina, Tanay Chheda, Sachet Engineer, Vipin Sharma', 2007, 'Aamir Khan'),
(10, 'The Lunchbox', 'Irrfan Khan, Nawazuddin Siddiqui, Nimrat Kaur, Denzil Smith, Nakul Vaid, Lilette Dubey, Bharti Achrekar', 2013, 'Ritesh Batra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`sr`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
