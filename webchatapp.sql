-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 28, 2021 at 07:42 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webchatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `name` varchar(255) NOT NULL,
  `pswd` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pswd`) VALUES
('devanshi', 'deva@123');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `address`) VALUES
(1, 'devanshi', 'deva@123', 'plz give ur website information personally', 'varanasi'),
(2, 'gjbg', 'gfgfg@vgv', 'nvghv', 'gfhgfvh'),
(3, 'amar ', 'amarself@gmail.com', 'plz describe how to use', 'varanashi');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `address`) VALUES
(1, 'amar ', 'amarself@gmail.com', 'nice website', 'gorakhpur');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `pswd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`pswd`) VALUES
('shiva'),
('shiva'),
('shiva'),
('shiva'),
('shiva'),
('shiva'),
('shiva'),
('shiva'),
('shiva'),
('shiva'),
('shyam'),
('shiva'),
('shyam'),
('garima'),
('shiva'),
('NEERAJ'),
('garima'),
('shyam'),
('garima'),
('shyam'),
('shyam'),
('shyam'),
('shyam'),
('shyam'),
('shyam'),
('shyam'),
('garima'),
('shiva'),
('neeraj'),
('sushma'),
('deva'),
('neeraj'),
('shyam'),
('shyam'),
('shyam'),
('shyam'),
('shyam'),
('shyam'),
('shyam'),
('shyam'),
('shyam'),
('shyam'),
('shyam'),
('shyam'),
('shyam'),
('shyam'),
('garima'),
('shiva'),
('shyam'),
('shyam'),
('deva'),
('SHYAM'),
('NEERAJ'),
('deva'),
('neeraj'),
('deva'),
('neeraj'),
('deva'),
('neeraj'),
('deva'),
('deva'),
('NEERAJ'),
('DEVA'),
('neeraj'),
('deva'),
('deva'),
('neeraj'),
('garima'),
('neeraj'),
('neeraj'),
('GARIMA'),
('NEERAJ'),
('garima'),
('neeraj'),
('shyam'),
('neeraj'),
('shiva'),
('neeraj'),
('shiva'),
('neeraj'),
('shiva'),
('neeraj'),
('shiva'),
('shiva'),
('shiva'),
('neeraj'),
('neeraj'),
('neeraj'),
('neeraj'),
('neeraj'),
('neeraj'),
('neeraj'),
('neeraj'),
('neeraj'),
('neeraj'),
('neeraj'),
('neeraj'),
('neeraj'),
('shiva'),
('neeraj'),
('neeraj'),
('garima'),
('neeraj'),
('neeraj'),
('garima'),
('garima'),
('garima'),
('garima'),
('neeraj'),
('shanu'),
('neeraj'),
('shanu'),
('shanu'),
('shiva'),
('garima'),
('neeraj'),
('nand'),
('shiva'),
('neeraj'),
('neeraj'),
('neeraj'),
('neeraj'),
('garima'),
('garima'),
('garima'),
('garima'),
('garima'),
('neeraj'),
('shiva'),
('sushma'),
('azad'),
('shyam'),
('shanu'),
('priya'),
('garima'),
('priya'),
('garima'),
('shiva'),
('kritika'),
('garima'),
('shiva'),
('neeraj'),
('garima'),
('ghghg'),
('amar'),
('neeraj'),
('neeraj'),
('neeraj'),
('shiva'),
('gggg'),
('pallavi'),
('deva'),
('deva'),
('garima'),
('amar'),
('nand'),
('deva'),
('deva'),
('shiva'),
('shiva'),
('pria'),
('garima'),
('garima'),
('sushma'),
('sushma'),
('sushma'),
('sushma'),
('garima'),
('garima'),
('garima'),
('garima'),
('garima'),
('shyam'),
('shyam'),
('garima'),
('shyam'),
('neeraj'),
('priya'),
('priya'),
('garima'),
('nand'),
('neeraj'),
('neeraj'),
('deva'),
('deva'),
('neeraj'),
('shiva'),
('pallavi'),
('kritika'),
('pallavi'),
('kritika'),
('shiva'),
('shyam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat`
--

DROP TABLE IF EXISTS `tbl_chat`;
CREATE TABLE IF NOT EXISTS `tbl_chat` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `s_id` varchar(255) NOT NULL,
  `r_id` varchar(255) NOT NULL,
  `serial_no` int(255) NOT NULL,
  `msg` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_chat`
--

INSERT INTO `tbl_chat` (`id`, `s_id`, `r_id`, `serial_no`, `msg`) VALUES
(54, 'bnvbn', 'jnhbgvnhv', 1, 'hbhnbvn'),
(55, 'c4bLnzx', 'x4$Mkq', 2, 'hlo'),
(56, 'c4bLnzx', 'x4$Mkq', 3, 'hlo'),
(57, 'c4bLnzx', 'x4$Mkq', 4, 'hlo'),
(58, 'c4bLnzx', 'x4$Mkq', 5, 'hlo'),
(59, 'c4bLnzx', 'x4$Mkq', 6, 'hlo'),
(60, 'x4$Mkq&', 'x4$Mkq', 7, 'hlo'),
(61, 'x4$Mkq&', 'c4bLnzx', 8, 'hlo'),
(62, 'c4bLnzx', 'x4$Mkq', 9, 'how r u'),
(63, 'x4$Mkq&', 'c4bLnzx', 10, 'hlo'),
(64, 'x4$Mkq&', 'c4bLnzx', 11, 'hlo'),
(65, 'x4$Mkq&', 'c4bLnzx', 12, 'hlo'),
(66, 'x4$Mkq&', 'cwpfDjQ', 13, 'HLO'),
(67, 'x4$Mkq&', 'c4bLnzx', 14, 'hlo'),
(68, 'x4$Mkq&', 'c4bLnzx', 15, ''),
(69, 'x4$Mkq&', 'c4bLnzx', 16, 'hlo'),
(70, 'x4$Mkq&', 'c4bLnzx', 17, 'hlo'),
(71, 'x4$Mkq&', 'c4bLnzx', 18, 'hlo'),
(72, 'c4bLnzx', 'x4$Mkq', 19, 'BEAUTIFULL'),
(73, 'x4$Mkq&', 'c4bLnzx', 20, 'hlo'),
(74, 'cwpfDjQ', 'c4bLnzx', 21, 'how r u'),
(75, 'c4bLnzx', 'x4$Mkq', 22, 'GUD NYT'),
(76, 'c4bLnzx', 'x4$Mkq', 23, 'GUD NYT'),
(77, 'c4bLnzx', 'cwpfDjQ', 24, 'I M FINE'),
(78, 'c4bLnzx', 'x4$Mkq', 25, 'DEVA'),
(79, 'cwpfDjQ', 'c4bLnzx', 26, 'OKK'),
(80, 'c4bLnzx', 'cwpfDjQ', 27, 'AUR BATAIYE'),
(81, 'cwpfDjQ', 'c4bLnzx', 28, 'sb badhiya aap bataiye'),
(82, 'c4bLnzx', 'CkGZ', 29, 'hlo shyam'),
(83, 'CkGZ&BI', 'c4bLnzx', 30, 'hmm'),
(84, 'c4bLnzx', 'GMXdU4B', 31, 'hlo di'),
(85, 'GMXdU4B', 'c4bLnzx', 32, 'hii neeraj'),
(86, 'c4bLnzx', 'GMXdU4B', 33, 'kaisi h aap'),
(87, 'GMXdU4B', 'c4bLnzx', 34, 'mai thik hu tum batao'),
(88, 'GMXdU4B', 'c4bLnzx', 35, 'mai thik hu tum batao'),
(89, 'GMXdU4B', 'c4bLnzx', 36, 'mai thik hu tum batao'),
(90, 'GMXdU4B', 'c4bLnzx', 37, 'mai thik hu tum batao'),
(91, 'GMXdU4B', 'c4bLnzx', 38, 'mai thik hu tum batao'),
(92, 'GMXdU4B', 'c4bLnzx', 39, 'mai thik hu tum batao'),
(93, 'GMXdU4B', 'c4bLnzx', 40, 'mai thik hu tum batao'),
(94, 'GMXdU4B', 'c4bLnzx', 41, 'mai thik hu tum batao'),
(95, 'GMXdU4B', 'c4bLnzx', 42, 'aur batao'),
(96, 'c4bLnzx', 'GMXdU4B', 43, 'sb chakchak h'),
(97, 'GMXdU4B', 'c4bLnzx', 44, 'ok'),
(98, 'lLABGdT', 'c4bLnzx', 45, 'hlo bhaiya'),
(99, 'c4bLnzx', 'lLABGdT', 46, 'HII KAISE HO'),
(100, 'GMXdU4B', 'c4bLnzx', 47, 'hiii'),
(101, 'GMXdU4B', 'c4bLnzx', 48, 'hiii'),
(102, 'GMXdU4B', 'c4bLnzx', 49, 'hiii'),
(103, 'GMXdU4B', 'c4bLnzx', 50, 'hiii'),
(104, 'GMXdU4B', 'c4bLnzx', 51, 'hiii'),
(105, 'GMXdU4B', 'c4bLnzx', 52, 'hiii'),
(106, 'GMXdU4B', 'c4bLnzx', 53, 'hiii'),
(107, 'GMXdU4B', 'c4bLnzx', 54, 'hiii'),
(108, 'GMXdU4B', 'c4bLnzx', 55, 'hiii'),
(109, 'GMXdU4B', 'c4bLnzx', 56, 'hiii'),
(110, 'GMXdU4B', 'c4bLnzx', 57, 'hiii'),
(111, 'GMXdU4B', 'c4bLnzx', 58, 'hiii'),
(112, 'GMXdU4B', 'c4bLnzx', 59, 'gud evening dear'),
(113, 'cwpfDjQ', 'c4bLnzx', 60, 'hlo'),
(114, 'cwpfDjQ', 'c4bLnzx', 61, 'hlo'),
(115, 'cwpfDjQ', 'c4bLnzx', 62, 'hlo'),
(116, 'cwpfDjQ', 'c4bLnzx', 63, 'hlo'),
(117, 'cwpfDjQ', 'c4bLnzx', 64, 'hlo'),
(118, 'cwpfDjQ', 'c4bLnzx', 65, 'hlo'),
(119, 'cwpfDjQ', 'c4bLnzx', 66, 'hlo'),
(120, 'cwpfDjQ', 'c4bLnzx', 67, 'hlo'),
(121, 'cwpfDjQ', 'c4bLnzx', 68, 'hlo'),
(122, 'cwpfDjQ', 'c4bLnzx', 69, 'hlo'),
(123, 'cwpfDjQ', 'c4bLnzx', 70, 'hlo'),
(124, 'cwpfDjQ', 'c4bLnzx', 71, 'hlo'),
(125, 'cwpfDjQ', 'c4bLnzx', 72, 'hlo'),
(126, 'cwpfDjQ', 'c4bLnzx', 73, 'hlo'),
(127, 'cwpfDjQ', 'c4bLnzx', 74, 'hlo'),
(128, 'cwpfDjQ', 'c4bLnzx', 75, 'hlo'),
(129, 'cwpfDjQ', 'c4bLnzx', 76, 'hlo'),
(130, 'cwpfDjQ', 'c4bLnzx', 77, 'hlo'),
(131, 'cwpfDjQ', 'c4bLnzx', 78, 'hlo'),
(132, 'cwpfDjQ', 'c4bLnzx', 79, 'hlo'),
(133, 'cwpfDjQ', 'c4bLnzx', 80, 'hlo'),
(134, 'cwpfDjQ', 'c4bLnzx', 81, 'hlo'),
(135, 'cwpfDjQ', 'c4bLnzx', 82, 'hlo'),
(136, 'cwpfDjQ', 'c4bLnzx', 83, 'hlo'),
(137, 'cwpfDjQ', 'c4bLnzx', 84, 'hlo'),
(138, 'cwpfDjQ', 'c4bLnzx', 85, 'hlo'),
(139, 'cwpfDjQ', 'c4bLnzx', 86, 'hlo'),
(140, 'cwpfDjQ', 'c4bLnzx', 87, 'hlo'),
(141, 'cwpfDjQ', 'c4bLnzx', 88, 'hlo'),
(142, 'bDoe1Cc', 'GMXdU4B', 89, 'hlo'),
(143, 'GMXdU4B', 'bDoe1Cc', 90, 'hii'),
(144, 'c4bLnzx', 'GMXdU4B', 91, 'hlo di'),
(145, 'c4bLnzx', 'GMXdU4B', 92, 'hlo di'),
(146, 'eU9kfD2', 'cwpfDjQ', 93, 'hlo'),
(147, 'cwpfDjQ', 'eU9kfD2', 94, 'hi'),
(148, 'cwpfDjQ', 'eU9kfD2', 95, 'aur kaisi ho'),
(149, 'eU9kfD2', 'cwpfDjQ', 96, 'acche h tum batao'),
(150, 'cwpfDjQ', 'eU9kfD2', 97, 'aur kaisi ho'),
(151, 'eU9kfD2', 'cwpfDjQ', 98, 'acche h tum batao'),
(152, 'cwpfDjQ', 'eU9kfD2', 99, 'aur kaisi ho'),
(153, 'cwpfDjQ', 'eU9kfD2', 100, 'cllg kb jana h'),
(154, 'eU9kfD2', 'cwpfDjQ', 101, 'haan'),
(155, 'cwpfDjQ', 'eU9kfD2', 102, 'cllg kb jana h'),
(156, 'cwpfDjQ', 'eU9kfD2', 103, 'cllg kb jana h'),
(157, 'eU9kfD2', 'cwpfDjQ', 104, 'haan'),
(158, 'cwpfDjQ', 'eU9kfD2', 105, 'cllg kb jana h'),
(159, 'cwpfDjQ', 'eU9kfD2', 106, 'cllg kb jana h'),
(160, 'eU9kfD2', 'cwpfDjQ', 107, 'haan'),
(161, 'eU9kfD2', 'cwpfDjQ', 108, 'haan'),
(162, 'cwpfDjQ', 'eU9kfD2', 109, 'cllg kb jana h'),
(163, 'cwpfDjQ', 'GMXdU4B', 110, 'hlo'),
(164, 'GMXdU4B', 'cwpfDjQ', 111, 'hii'),
(165, 'cwpfDjQ', 'GMXdU4B', 112, 'hlo'),
(166, 'GMXdU4B', 'cwpfDjQ', 113, 'hii'),
(167, 'cwpfDjQ', 'GMXdU4B', 114, 'hlo'),
(168, 'cwpfDjQ', 'GMXdU4B', 115, 'kaisi ho'),
(169, 'GMXdU4B', 'cwpfDjQ', 116, 'hii'),
(170, 'cwpfDjQ', 'GMXdU4B', 117, 'kaisi ho'),
(171, 'c4bLnzx', 'lLABGdT', 118, ''),
(172, 'UrV37WF', 'c4bLnzx', 119, 'hlo kaise h'),
(173, 'ucmPURC', 'c4bLnzx', 120, 'hlo'),
(174, 'c4bLnzx', 'ucmPURC', 121, 'HLO BHAI KAISE HO'),
(175, 'c4bLnzx', 'GMXdU4B', 122, 'gggg'),
(176, 'c4bLnzx', 'lLABGdT', 123, 'hlo'),
(177, 'c4bLnzx', 'lLABGdT', 124, 'hlo btaiye'),
(178, 'c4bLnzx', 'GMXdU4B', 125, 'hlo'),
(179, 'c4bLnzx', 'GMXdU4B', 126, 'hlo'),
(180, 'GMXdU4B', 'c4bLnzx', 127, 'kaise ho'),
(181, 'c4bLnzx', 'GMXdU4B', 128, 'hlo'),
(182, 'c4bLnzx', 'GMXdU4B', 129, 'hlo'),
(183, 'c4bLnzx', 'GMXdU4B', 130, 'hlo'),
(184, 'c4bLnzx', 'GMXdU4B', 131, 'hhhaaaaa'),
(185, 'Ay2hsiQ', 'c4bLnzx', 132, 'hlo'),
(186, 'avMulSn', 'c4bLnzx', 133, 'hlo'),
(187, 'x4$Mkq&', 'GMXdU4B', 134, 'hlo'),
(188, '8e25kBR', 'cwpfDjQ', 135, 'hlo'),
(189, 'cwpfDjQ', 'oQi3RjH', 136, 'hlo'),
(190, 'oQi3RjH', 'cwpfDjQ', 137, 'hlo'),
(191, 'cwpfDjQ', 'oQi3RjH', 138, 'hlo'),
(192, 'cwpfDjQ', 'oQi3RjH', 139, 'hlo'),
(193, 'cwpfDjQ', 'oQi3RjH', 140, 'hlo'),
(194, 'cwpfDjQ', 'oQi3RjH', 141, 'hlo'),
(195, 'cwpfDjQ', 'oQi3RjH', 142, 'hlo'),
(196, 'cwpfDjQ', 'oQi3RjH', 143, 'hlo'),
(197, 'cwpfDjQ', 'oQi3RjH', 144, 'hlo'),
(198, 'cwpfDjQ', 'oQi3RjH', 145, 'hlo'),
(199, 'cwpfDjQ', 'oQi3RjH', 146, 'hlo'),
(200, 'cwpfDjQ', 'oQi3RjH', 147, 'hlo'),
(201, 'cwpfDjQ', 'oQi3RjH', 148, 'hlo'),
(202, 'cwpfDjQ', 'oQi3RjH', 149, 'hlo'),
(203, 'cwpfDjQ', 'oQi3RjH', 150, 'hlo'),
(204, 'cwpfDjQ', 'oQi3RjH', 151, 'hlo'),
(205, 'cwpfDjQ', 'oQi3RjH', 152, 'hlo'),
(206, 'cwpfDjQ', 'oQi3RjH', 153, 'hlo'),
(207, 'cwpfDjQ', 'oQi3RjH', 154, 'hlo'),
(208, 'cwpfDjQ', 'oQi3RjH', 155, 'hlo'),
(209, 'cwpfDjQ', 'oQi3RjH', 156, 'hlo'),
(210, 'cwpfDjQ', 'oQi3RjH', 157, 'hlo'),
(211, 'cwpfDjQ', 'oQi3RjH', 158, 'hlo'),
(212, 'cwpfDjQ', 'oQi3RjH', 159, 'hlo'),
(213, 'cwpfDjQ', 'oQi3RjH', 160, 'hlo'),
(214, 'cwpfDjQ', 'oQi3RjH', 161, 'hlo'),
(215, 'cwpfDjQ', 'oQi3RjH', 162, 'hlo'),
(216, 'cwpfDjQ', 'oQi3RjH', 163, 'hlo'),
(217, 'cwpfDjQ', 'oQi3RjH', 164, 'hlo'),
(218, 'cwpfDjQ', 'oQi3RjH', 165, 'hlo'),
(219, 'cwpfDjQ', 'oQi3RjH', 166, 'hlo'),
(220, 'cwpfDjQ', 'oQi3RjH', 167, 'hlo'),
(221, 'cwpfDjQ', 'oQi3RjH', 168, 'hlo'),
(222, 'cwpfDjQ', 'oQi3RjH', 169, 'hlo'),
(223, 'cwpfDjQ', 'oQi3RjH', 170, 'hlo'),
(224, 'cwpfDjQ', 'oQi3RjH', 171, 'hlo'),
(225, 'cwpfDjQ', 'oQi3RjH', 172, 'hlo'),
(226, 'cwpfDjQ', 'oQi3RjH', 173, 'hlo'),
(227, 'cwpfDjQ', 'oQi3RjH', 174, 'hlo'),
(228, 'cwpfDjQ', 'oQi3RjH', 175, 'hlo'),
(229, 'cwpfDjQ', 'oQi3RjH', 176, 'hlo'),
(230, 'cwpfDjQ', 'oQi3RjH', 177, 'hlo'),
(231, 'cwpfDjQ', 'oQi3RjH', 178, 'hlo'),
(232, 'cwpfDjQ', 'oQi3RjH', 179, 'hlo'),
(233, 'cwpfDjQ', 'oQi3RjH', 180, 'hlo'),
(234, 'cwpfDjQ', 'oQi3RjH', 181, 'hlo'),
(235, 'cwpfDjQ', 'oQi3RjH', 182, 'hlo'),
(236, 'cwpfDjQ', 'oQi3RjH', 183, 'hlo'),
(237, 'cwpfDjQ', 'oQi3RjH', 184, 'hlo'),
(238, 'cwpfDjQ', 'oQi3RjH', 185, 'hlo'),
(239, 'cwpfDjQ', 'oQi3RjH', 186, 'hlo'),
(240, 'cwpfDjQ', 'oQi3RjH', 187, 'hlo'),
(241, 'cwpfDjQ', 'oQi3RjH', 188, 'hlo'),
(242, 'cwpfDjQ', 'oQi3RjH', 189, 'hlo'),
(243, 'cwpfDjQ', 'oQi3RjH', 190, 'hlo'),
(244, 'cwpfDjQ', 'oQi3RjH', 191, 'hlo'),
(245, 'cwpfDjQ', 'oQi3RjH', 192, 'hlo'),
(246, 'cwpfDjQ', 'oQi3RjH', 193, 'hlo'),
(247, 'cwpfDjQ', 'oQi3RjH', 194, 'hlo'),
(248, 'cwpfDjQ', 'oQi3RjH', 195, 'hlo'),
(249, 'cwpfDjQ', 'oQi3RjH', 196, 'hlo'),
(250, 'cwpfDjQ', 'oQi3RjH', 197, 'hlo'),
(251, 'cwpfDjQ', 'oQi3RjH', 198, 'hlo'),
(252, 'cwpfDjQ', 'oQi3RjH', 199, 'hlo'),
(253, 'cwpfDjQ', 'oQi3RjH', 200, 'hlo'),
(254, 'cwpfDjQ', 'oQi3RjH', 201, 'hlo'),
(255, 'cwpfDjQ', 'oQi3RjH', 202, 'hlo'),
(256, 'oQi3RjH', 'cwpfDjQ', 203, 'oooo'),
(257, 'cwpfDjQ', 'oQi3RjH', 204, 'khatarnak hai'),
(258, 'cwpfDjQ', 'oQi3RjH', 205, 'khatarnak hai'),
(259, 'cwpfDjQ', 'oQi3RjH', 206, 'khatarnak hai'),
(260, 'cwpfDjQ', 'oQi3RjH', 207, 'khatra nhi h'),
(261, 'cwpfDjQ', 'oQi3RjH', 208, 'safe zone hai'),
(262, 'cwpfDjQ', 'oQi3RjH', 209, 'safe zone hai'),
(263, 'cwpfDjQ', 'oQi3RjH', 210, 'safe zone hai'),
(264, 'cwpfDjQ', 'oQi3RjH', 211, 'ddd'),
(265, 'oQi3RjH', 'cwpfDjQ', 212, 'software'),
(266, 'oQi3RjH', 'cwpfDjQ', 213, 'software'),
(267, 'cwpfDjQ', 'oQi3RjH', 214, 'ddd'),
(268, 'cwpfDjQ', 'oQi3RjH', 215, 'software sahi h'),
(269, 'cwpfDjQ', 'oQi3RjH', 216, 'nhi nhi'),
(270, 'oQi3RjH', 'cwpfDjQ', 217, 'software'),
(271, 'oQi3RjH', 'cwpfDjQ', 218, 'software'),
(272, 'oQi3RjH', 'cwpfDjQ', 219, 'software'),
(273, 'cwpfDjQ', 'oQi3RjH', 220, 'nhi nhi'),
(274, 'cwpfDjQ', 'oQi3RjH', 221, 'database shi h'),
(275, 'oQi3RjH', 'cwpfDjQ', 222, 'database galat h'),
(276, 'oQi3RjH', 'cwpfDjQ', 223, 'database galat h'),
(277, 'oQi3RjH', 'cwpfDjQ', 224, 'database galat h'),
(278, 'oQi3RjH', 'cwpfDjQ', 225, 'database galat h'),
(279, 'oQi3RjH', 'cwpfDjQ', 226, 'database galat h'),
(280, 'oQi3RjH', 'cwpfDjQ', 227, 'database galat h'),
(281, 'oQi3RjH', 'cwpfDjQ', 228, 'database galat h'),
(282, 'cwpfDjQ', 'oQi3RjH', 229, 'database shi h'),
(283, 'oQi3RjH', 'cwpfDjQ', 230, 'database galat h'),
(284, 'oQi3RjH', 'cwpfDjQ', 231, 'database galat h'),
(285, 'oQi3RjH', 'cwpfDjQ', 232, 'database galat h'),
(286, 'oQi3RjH', 'cwpfDjQ', 233, 'database galat h'),
(287, 'oQi3RjH', 'cwpfDjQ', 234, 'database galat h'),
(288, 'oQi3RjH', 'cwpfDjQ', 235, 'database galat h'),
(289, 'oQi3RjH', 'cwpfDjQ', 236, 'database galat h'),
(290, 'oQi3RjH', 'cwpfDjQ', 237, 'done '),
(291, 'oQi3RjH', 'cwpfDjQ', 238, 'database galat h'),
(292, 'cwpfDjQ', 'CkGZ', 239, 'hlo shyam'),
(293, 'CkGZ&BI', 'cwpfDjQ', 240, 'hlo jiii'),
(294, 'CkGZ&BI', 'cwpfDjQ', 241, 'hlo jiii'),
(295, 'CkGZ&BI', 'cwpfDjQ', 242, 'hlo jiii'),
(296, 'cwpfDjQ', 'CkGZ', 243, 'hlo shyam'),
(297, 'cwpfDjQ', 'CkGZ', 244, 'hlo'),
(298, 'CkGZ&BI', 'cwpfDjQ', 245, 'database galat h'),
(299, 'cwpfDjQ', 'CkGZ', 246, 'hlo'),
(300, 'CkGZ&BI', 'cwpfDjQ', 247, 'database galat h'),
(301, 'CkGZ&BI', 'cwpfDjQ', 248, 'jhbhb'),
(302, 'cwpfDjQ', 'CkGZ', 249, 'software'),
(303, 'cwpfDjQ', 'CkGZ', 250, 'database galat h'),
(304, 'cwpfDjQ', 'CkGZ', 251, 'jao tum'),
(305, 'CkGZ&BI', 'cwpfDjQ', 252, 'haan thik h ja rhe'),
(306, 'cwpfDjQ', 'CkGZ', 253, 'jao tum'),
(307, 'cwpfDjQ', 'CkGZ', 254, 'okkkk'),
(308, 'CkGZ&BI', 'cwpfDjQ', 255, 'haan thik h ja rhe'),
(309, 'CkGZ&BI', 'cwpfDjQ', 256, 'haan thik h ja rhe'),
(310, 'CkGZ&BI', 'cwpfDjQ', 257, 'haan thik h ja rhe'),
(311, 'CkGZ&BI', 'cwpfDjQ', 258, 'haan thik h ja rhe'),
(312, 'cwpfDjQ', 'CkGZ', 259, 'jao tum'),
(313, 'cwpfDjQ', 'CkGZ', 260, 'jao tum'),
(314, 'CkGZ&BI', 'cwpfDjQ', 261, 'jgjggfgdf'),
(315, 'CkGZ&BI', 'cwpfDjQ', 262, 'jgjggfgdf'),
(316, 'eU9kfD2', 'c4bLnzx', 263, 'hlo'),
(317, 'c4bLnzx', 'eU9kfD2', 264, 'hlo priya ji'),
(318, 'eU9kfD2', 'c4bLnzx', 265, 'haan ji'),
(319, 'c4bLnzx', 'eU9kfD2', 266, 'database galat h'),
(320, 'eU9kfD2', 'c4bLnzx', 267, 'software'),
(321, 'eU9kfD2', 'c4bLnzx', 268, 'aao'),
(322, 'c4bLnzx', 'eU9kfD2', 269, 'jao'),
(323, 'c4bLnzx', 'eU9kfD2', 270, 'jao'),
(324, 'eU9kfD2', 'c4bLnzx', 271, 'aao'),
(325, 'eU9kfD2', 'c4bLnzx', 272, 'mar jao'),
(326, 'c4bLnzx', 'eU9kfD2', 273, 'jao'),
(327, 'c4bLnzx', 'eU9kfD2', 274, 'ho gya'),
(328, 'eU9kfD2', 'c4bLnzx', 275, 'mar jao'),
(329, 'eU9kfD2', 'c4bLnzx', 276, 'mar jao'),
(330, 'c4bLnzx', 'eU9kfD2', 277, 'ok mar jate h'),
(331, 'eU9kfD2', 'c4bLnzx', 278, 'mar jao'),
(332, 'c4bLnzx', 'eU9kfD2', 279, 'mai priya'),
(333, 'eU9kfD2', 'c4bLnzx', 280, 'mai neeraj'),
(334, 'c4bLnzx', 'eU9kfD2', 281, 'mai priya'),
(335, 'c4bLnzx', 'eU9kfD2', 282, 'mai neeraj'),
(336, 'c4bLnzx', 'eU9kfD2', 283, 'mai neeraj'),
(337, 'c4bLnzx', 'eU9kfD2', 284, 'mai neeraj again'),
(338, 'eU9kfD2', 'c4bLnzx', 285, 'mai neeraj'),
(339, 'eU9kfD2', 'c4bLnzx', 286, 'haan mai priya again'),
(340, 'avMulSn', 'ayz6ju7', 287, 'hello kritika'),
(341, 'ayz6ju7', 'avMulSn', 288, 'hmm pallavi bolo'),
(342, 'avMulSn', 'ayz6ju7', 289, 'kya kr rhi ho');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pswd` varchar(255) NOT NULL,
  `id_no` varchar(255) NOT NULL,
  `friends` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `phone`, `img`, `email`, `pswd`, `id_no`, `friends`) VALUES
(50, 'shivani', 'lucknow', '5454555', '', 'shiva@25', 'shiva', 'GMXdU4B', 'x4$MKQ&,c4bLnzx,bDoe1Cc,oQi3RjH,GMXdU4B,cwpfDjQ'),
(53, 'shyam', 'ghazipur', '456456465456', '1590503260map.png', 'shyam@13', 'shyam', 'CkGZ&BI', 'x4$MKQ&,c4bLnzx,CkGZ&BI,cwpfDjQ'),
(54, 'azad', 'bhadohi', '76576575', '1590580487img4.jpg', 'azad@45', 'azad', '#QFqptd', ''),
(55, 'fghfg', 'jghhjg', '65656', '1590580537im3.jpg', 'jmnbhjm', 'jnhjm', 'kc8nXhg', ''),
(56, 'azadaaa', 'bhadohi', '65656333', '1590580606im3.jpg', 'azad@34', 'azad', '#YNgy6U', ''),
(57, 'sushma', 'bhadohi', '65757567', '1590581616logo.jpg', 'sushma@23', 'sushma', 'oQi3RjH', 'x4$MKQ&,oQi3RjH,cwpfDjQ,avMulSn'),
(58, 'ghjj', 'kjhkjh', 'khjh', '1591611960Penguins.jpg', 'ghjgbh', 'knkjn', 'rNEHS4b', ''),
(59, 'shanu srivastava', 'varanasi', '567575757567', '1591860735Lighthouse.jpg', 'shanu@25', 'shanu', 'lLABGdT', 'c4bLnzx,lLABGDT'),
(61, 'priya sharma', 'varanshi', '545646545646', '1593670544im3.jpg', 'priya@67', 'priya', 'eU9kfD2', 'GMXdU4B,oQi3RjH,CkGZ&BI,cwpfDjQ,c4bLnzx'),
(62, 'kritika sharma', 'delhi', '3534564545', '1594394014back.png', 'kritika@15', 'kritika', 'ayz6ju7', 'avMulSn'),
(63, 'hemant', 'gorakpur', '6787687687', '1602617207DEVANSH.jpg', 'ghg@nbnm', 'ghghg', 'UrV37WF', 'cwpfjQ,c4blnzx'),
(64, 'amar chauhan', 'gorakpur', '43434343', '1602864017DEVANSH.jpg', 'amar@1234', 'amar', 'ucmPURC', 'c4blnzx,ucmPURC'),
(65, 'swati chanadra', 'lko', '4564564564', '1602935106DEVANSH.jpg', 'swati@5', 'sss', 'xIR7Nzq', ''),
(66, 'hemant', 'hghgh', '756776767', '1603378006DEVANSH.jpg', 'ghh@4', 'gggg', 'Ay2hsiQ', 'c4blnzx'),
(67, 'pallavi', 'lko', '6576575765', '1603528288img2.jpg', 'pp@34', 'pallavi', 'avMulSn', 'c4blnzx,ayz6ju7'),
(68, 'priya sharma', 'vns', '4545454454', '1608655259B612_20190929_182735_506.jpg', 'pp@34', 'pria', '8e25kBR', 'cwpfDjQ'),
(69, 'sass', 'asdasd', '5465656565', '1609046185FB_IMG_15525353489923259.jpg', 'ddf@fdf', 'sfdd', 'shzV8Dl', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
