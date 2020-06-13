-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2020 at 01:05 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket`
--

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `matchId` int(11) NOT NULL,
  `teamId1` int(11) NOT NULL,
  `teamId2` int(11) NOT NULL,
  `winnerTeamId` int(11) NOT NULL,
  `createdDatetime` datetime NOT NULL,
  `modifiedDatetiime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`matchId`, `teamId1`, `teamId2`, `winnerTeamId`, `createdDatetime`, `modifiedDatetiime`) VALUES
(1, 1, 2, 1, '2020-06-09 14:29:21', '2020-06-09 13:34:36'),
(2, 2, 3, 3, '2020-06-09 14:29:21', '2020-06-09 13:34:36'),
(3, 1, 2, 2, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(4, 1, 3, 3, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(5, 1, 4, 1, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(6, 1, 5, 1, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(7, 1, 6, 1, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(8, 2, 1, 1, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(9, 2, 3, 3, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(10, 2, 4, 4, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(11, 2, 5, 2, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(12, 2, 6, 2, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(13, 3, 1, 1, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(14, 3, 2, 2, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(15, 3, 4, 3, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(16, 3, 5, 3, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(17, 3, 6, 6, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(18, 4, 1, 1, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(19, 4, 2, 2, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(20, 4, 3, 3, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(21, 4, 5, 4, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(22, 4, 6, 4, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(23, 5, 1, 1, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(24, 5, 2, 2, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(25, 5, 3, 3, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(26, 5, 4, 5, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(27, 5, 6, 5, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(28, 6, 1, 1, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(29, 6, 2, 2, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(30, 6, 3, 3, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(31, 6, 4, 5, '2020-06-09 14:29:21', '2020-06-09 13:39:56'),
(32, 6, 5, 6, '2020-06-09 14:29:21', '2020-06-09 13:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `playerId` int(11) NOT NULL,
  `teamId` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `imageUri` varchar(50) NOT NULL,
  `jerseyNumber` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  `createdDatetime` datetime NOT NULL,
  `modifiedDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`playerId`, `teamId`, `firstName`, `lastName`, `imageUri`, `jerseyNumber`, `country`, `createdDatetime`, `modifiedDatetime`) VALUES
(12, 1, 'Virat', 'Kohli', '/images/virat.png', 1, 1, '2020-06-09 14:29:21', '2020-06-13 09:50:58'),
(13, 1, 'Rohit', 'Sharma', '/images/rohit.png', 2, 1, '2020-06-09 14:29:21', '2020-06-13 09:51:21'),
(14, 1, 'Ms', 'Doni', '/images/doni.png', 3, 1, '2020-06-09 14:29:21', '2020-06-13 09:51:15'),
(15, 1, 'Hardik', 'Pandya', '/images/hardik.png', 4, 1, '2020-06-09 14:29:21', '2020-06-13 09:51:31'),
(16, 1, 'KL', 'Rahul', '/images/rahul.png', 5, 1, '2020-06-09 14:29:21', '2020-06-13 09:51:37'),
(17, 1, 'Rishabh', 'Pant', '/images/rishabh.png', 6, 1, '2020-06-09 14:29:21', '2020-06-13 09:50:50'),
(18, 1, 'Ravindra', 'Jadeja', '/images/ravi.png', 7, 1, '2020-06-09 14:29:21', '2020-06-13 09:51:43'),
(19, 1, 'Jasprit', 'Bumrah', '/images/jasprit.png', 8, 1, '2020-06-09 14:29:21', '2020-06-13 09:51:50'),
(20, 1, 'Mohammed', 'Shami', '/images/shami.png', 9, 1, '2020-06-09 14:29:21', '2020-06-13 09:51:56'),
(21, 1, 'Yuzvendra', 'Chahal', '/images/chahal.png', 10, 1, '2020-06-09 14:29:21', '2020-06-13 09:52:01'),
(22, 2, 'Eion', 'Morgan', '/images/player.png', 1, 2, '2020-06-09 14:29:21', '2020-06-13 09:57:06'),
(23, 2, 'Jason', 'Roy', '/images/player.png', 2, 2, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(24, 2, 'Dominic', 'Bess', '/images/player.png', 3, 2, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(25, 2, 'Matthew', 'Parkinson', '/images/player.png', 4, 2, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(26, 2, 'Graeme', 'Swann', '/images/player.png', 5, 2, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(27, 2, 'Jonathan', 'Trott', '/images/player.png', 6, 2, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(28, 2, 'Matt', 'Prior', '/images/player.png', 7, 2, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(29, 2, 'Andrew', 'strauss', '/images/player.png', 8, 2, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(30, 2, 'james', 'Anderson', '/images/player.png', 9, 2, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(31, 2, 'Joe', 'Root', '/images/player.png', 10, 2, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(32, 3, 'Matthew', 'Wade', '/images/player.png', 1, 3, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(33, 3, 'Michael', 'Clarke', '/images/player.png', 3, 3, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(34, 3, 'Aaron', 'Finch', '/images/player.png', 3, 3, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(35, 3, 'David', 'Warner', '/images/player.png', 4, 3, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(36, 3, 'Nathan', 'Hauritz', '/images/player.png', 5, 3, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(37, 3, 'Marnus', 'Labuschagne', '/images/player.png', 6, 3, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(38, 3, 'Glenn', 'Maxwell', '/images/player.png', 7, 3, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(39, 3, 'Usman', 'Khawaja', '/images/player.png', 8, 3, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(40, 3, 'Josh', 'Hazlewood', '/images/player.png', 9, 3, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(41, 3, 'Adam', 'Zampa', '/images/player.png', 10, 3, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(42, 4, 'Hashim', 'Amla', '/images/player.png', 1, 4, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(43, 4, 'Temba', 'Bavuma', '/images/player.png', 4, 4, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(44, 4, 'Keshav', 'Maharaj', '/images/player.png', 4, 4, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(45, 4, 'Quinton', 'Kock', '/images/player.png', 4, 4, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(46, 4, 'Beuran', 'Hendricks', '/images/player.png', 5, 4, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(47, 4, 'Dwaine', 'Pretorius', '/images/player.png', 6, 4, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(48, 4, 'Lungi', 'Ngidi', '/images/player.png', 7, 4, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(49, 4, 'Aiden', 'Markram', '/images/player.png', 8, 4, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(50, 4, 'David', 'Miller', '/images/player.png', 9, 4, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(51, 4, 'George', 'Linde', '/images/player.png', 10, 4, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(52, 5, 'Trent', 'Boult', '/images/player.png', 1, 5, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(53, 5, 'Ish', 'Sodhi', '/images/player.png', 5, 5, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(54, 5, 'Lockie', 'Ferguson', '/images/player.png', 5, 5, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(55, 5, 'Mitchell', 'Santner', '/images/player.png', 5, 5, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(56, 5, 'Jimmy', 'Neesham', '/images/player.png', 5, 5, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(57, 5, 'Henry', 'Nicholls', '/images/player.png', 6, 5, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(58, 5, 'Tim', 'Southee', '/images/player.png', 7, 5, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(59, 5, 'Kane', 'Williamson', '/images/player.png', 8, 5, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(60, 5, 'Kyle', 'Jamieson', '/images/player.png', 9, 5, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(61, 5, 'Martin', 'Guptill', '/images/player.png', 10, 5, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(62, 6, 'Roston', 'Chase', '/images/player.png', 1, 6, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(63, 6, 'Sharmarh', 'Brooks', '/images/player.png', 6, 6, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(64, 6, 'Shane', 'Dowrich', '/images/player.png', 6, 6, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(65, 6, 'Nkrumah', 'Bonner', '/images/player.png', 6, 6, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(66, 6, 'Shai', 'Hope', '/images/player.png', 6, 6, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(67, 6, 'Rahkeem', 'Cornwall', '/images/player.png', 6, 6, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(68, 6, 'Jermaine', 'Blackwood', '/images/player.png', 7, 6, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(69, 6, 'Jason', 'Holder', '/images/player.png', 8, 6, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(70, 6, 'John', 'Campbell', '/images/player.png', 9, 6, '2020-06-09 14:29:21', '2020-06-13 09:57:31'),
(71, 6, 'Chemar', 'Holder', '/images/player.png', 10, 6, '2020-06-09 14:29:21', '2020-06-13 09:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `player_history`
--

CREATE TABLE `player_history` (
  `playerHistoryId` int(11) NOT NULL,
  `playerId` int(11) NOT NULL,
  `totalMatches` int(11) NOT NULL,
  `totalRuns` int(11) NOT NULL,
  `highestScore` int(11) NOT NULL,
  `totalFifties` int(11) NOT NULL,
  `totalHundreds` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `teamId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `logoUri` varchar(50) NOT NULL,
  `clubState` int(5) NOT NULL,
  `createdDatetime` datetime NOT NULL,
  `modifiedDatetiime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`teamId`, `name`, `logoUri`, `clubState`, `createdDatetime`, `modifiedDatetiime`) VALUES
(1, 'INDIA', '/images/india.png', 1, '2020-06-09 14:29:21', '2020-06-12 11:17:42'),
(2, 'ENGLAND', '/images/england.png', 2, '2020-06-09 14:29:21', '2020-06-12 11:17:49'),
(3, 'AUSTRALIA', '/images/australia.png', 3, '2020-06-09 14:29:21', '2020-06-12 11:17:56'),
(4, 'SOUTH AFRICA', '/images/southafrica.png', 4, '2020-06-09 14:29:21', '2020-06-12 11:18:02'),
(5, 'NEW ZEALAND', '/images/newzealand.png', 5, '2020-06-09 14:29:21', '2020-06-12 11:18:10'),
(6, 'WEST INDIES', '/images/westindies.png', 6, '2020-06-09 14:29:21', '2020-06-12 11:18:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`matchId`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`playerId`);

--
-- Indexes for table `player_history`
--
ALTER TABLE `player_history`
  ADD PRIMARY KEY (`playerHistoryId`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`teamId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `matchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `playerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `player_history`
--
ALTER TABLE `player_history`
  MODIFY `playerHistoryId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `teamId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
