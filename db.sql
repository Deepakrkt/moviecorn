-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2022 at 07:13 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admini`
--

CREATE TABLE `admini` (
  `id` int(10) NOT NULL,
  `fisrt` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admini`
--

INSERT INTO `admini` (`id`, `fisrt`, `last`, `user`, `pass`) VALUES
(1, 'asheesh', 'sharma', 'asheeshsharma', 'ashu75351'),
(4, 'deepak', 'yadav', 'deepak1', 'deepak1'),
(5, 'ayush ', 'sharma', 'ayush123', 'ashu75351');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `author` varchar(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `Available` varchar(4) NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `subject`, `Available`) VALUES
(1, 'sky eye', 'asheesh', 'english', 'No'),
(2, 'sky eye2', 'deepak', 'english', 'No'),
(3, 'sky eye3', 'govind', 'english', 'Yes'),
(4, 'sky eye4', 'pramod', 'english', 'Yes'),
(5, 'sky eye4', 'bharat singh', 'english', 'Yes'),
(6, 'sky eye6', 'ayush', 'english', 'Yes'),
(7, 'sky eye7', 'dev', 'english', 'Yes'),
(8, 'sky eye8', 'ashok', 'english', 'Yes'),
(9, 'sky eye9', 'shubham', 'english', 'Yes'),
(10, 'sky eye10', 'amit', 'english', 'Yes'),
(12, 'the invisible man', 'divyam', 'noval', 'Yes'),
(199, 'invisible man 2', 'ayaan', 'noval', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `years` varchar(10) NOT NULL,
  `plot` text NOT NULL,
  `writer` varchar(40) NOT NULL,
  `genre` varchar(40) NOT NULL,
  `actors` varchar(40) NOT NULL,
  `languages` varchar(30) NOT NULL,
  `poster` varbinary(7000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `title`, `years`, `plot`, `writer`, `genre`, `actors`, `languages`, `poster`) VALUES
(1, 'Thor', '2011', 'The powerful but arrogant god Thor is cast out of Asgard to live amongst humans in Midgard (Earth), where he soon becomes one of their finest defenders.', 'Ashley Miller, Zack Stentz, Don Payne', 'Action, Adventure, Fantasy', 'Chris Hemsworth, Anthony Hopkins, Natali', 'English', 0x68747470733a2f2f6d2e6d656469612d616d617a6f6e2e636f6d2f696d616765732f4d2f4d5635424f4745344e7a5531595441744e7a41334d6930305a5441324c546732596d59744d444a6d4d5468694d6a6c6b596a6732586b4579586b467163476465515856794e54677a4d444d7a4d5467402e5f56315f53583330302e6a7067),
(2, 'Thor', '2011', 'The powerful but arrogant god Thor is cast out of Asgard to live amongst humans in Midgard (Earth), where he soon becomes one of their finest defenders.', 'Ashley Miller, Zack Stentz, Don Payne', 'Action, Adventure, Fantasy', 'Chris Hemsworth, Anthony Hopkins, Natali', 'English', 0x68747470733a2f2f6d2e6d656469612d616d617a6f6e2e636f6d2f696d616765732f4d2f4d5635424f4745344e7a5531595441744e7a41334d6930305a5441324c546732596d59744d444a6d4d5468694d6a6c6b596a6732586b4579586b467163476465515856794e54677a4d444d7a4d5467402e5f56315f53583330302e6a7067),
(3, 'Thor', '2011', 'The powerful but arrogant god Thor is cast out of Asgard to live amongst humans in Midgard (Earth), where he soon becomes one of their finest defenders.', 'Ashley Miller, Zack Stentz, Don Payne', 'Action, Adventure, Fantasy', 'Chris Hemsworth, Anthony Hopkins, Natali', 'English', 0x68747470733a2f2f6d2e6d656469612d616d617a6f6e2e636f6d2f696d616765732f4d2f4d5635424f4745344e7a5531595441744e7a41334d6930305a5441324c546732596d59744d444a6d4d5468694d6a6c6b596a6732586b4579586b467163476465515856794e54677a4d444d7a4d5467402e5f56315f53583330302e6a7067),
(4, 'Thor: Ragnarok', '2017', 'Imprisoned on the planet Sakaar, Thor must race against time to return to Asgard and stop Ragnarök, the destruction of his world, at the hands of the powerful and ruthless villain Hela.', 'Eric Pearson, Craig Kyle, Christopher L.', 'Action, Adventure, Comedy', 'Chris Hemsworth, Tom Hiddleston, Cate Bl', 'English', 0x68747470733a2f2f6d2e6d656469612d616d617a6f6e2e636f6d2f696d616765732f4d2f4d5635424d6a4d794e446b7a4d7a49314f4635424d6c3542616e426e586b46745a5467774f4463784f4467354d6a49402e5f56315f53583330302e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `bookname` varchar(20) NOT NULL,
  `author` varchar(20) NOT NULL,
  `issuedate` date NOT NULL,
  `returndate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `sname`, `bookname`, `author`, `issuedate`, `returndate`) VALUES
(1, 'Asheesh sharma', 'sky eye', 'asheesh', '2022-05-25', '2022-05-26'),
(123, 'deepak yadav', 'sky eye2', 'deepak', '2022-05-25', '2022-05-27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admini`
--
ALTER TABLE `admini`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admini`
--
ALTER TABLE `admini`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
