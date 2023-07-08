-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2023 at 11:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infrex_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate_detail`
--

CREATE TABLE `candidate_detail` (
  `name` varchar(20) DEFAULT NULL,
  `mobile` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `batch` varchar(50) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `enq_time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidate_detail`
--

INSERT INTO `candidate_detail` (`name`, `mobile`, `email`, `batch`, `course`, `enq_time`) VALUES
('harsh', '483841', 'harsh.05911@gmail.com', 'batch1', 'course2', NULL),
('harshdeep', '877685798', 'harsh.05911@gmail.com', '10 july 2023', 'Full stack Digital Marketing', NULL),
('harshdeep', '483841', 'singh@gmail.com', '10 july 2023', 'Full stack Digital Marketing', NULL),
('harshdeep', '483841', 'singh@gmail.com', '10 july 2023', 'Full stack Digital Marketing', NULL),
('harshdeep', '483841', 'singh@gmail.com', '10 july 2023', 'Full stack Digital Marketing', NULL),
('efe', '43233', 'singh@gmail.com', '10 july 2023', 'Full stack Digital Marketing', NULL),
('demo', '12346655', 'singh222@gmail.com', '10 july 2023', 'Full stack Digital Marketing', NULL),
('hars', '43233', 'singh222@gmail.com', '10 July 2023', 'Full Stack Digital Marketing', NULL),
('harshdee[ si', '43233', 'singh222@gmail.com', '10 July 2023', 'Full Stack Digital Marketing', NULL),
('eeee', 'eeee', 'harsh@gmaile.com', '10 July 2023', 'Full Stack Digital Marketing', NULL),
('eeee', 'eeee', 'harsh@gmaile.com', '10 July 2023', 'Full Stack Digital Marketing', NULL),
('himanshu', '3402049304920', 'abc@gmail.com', '10 july 2023', 'Full stack Digital Marketing', NULL),
('1234', '1234', '1234@gmail.com', '10 july 2023', 'Full stack Digital Marketing', NULL),
('faq', '1234', 'faq@gmail.com', '15 July 2023', 'Full Stack Digital Marketing', '2023-07-06 22:46:12'),
('about', '1234', 'about@gmail.com', '25 July 2023', 'Full Stack Web Development', '2023-07-06 22:48:04'),
('web1', '1234', 'web1@gmail.comm', '25 July 2023', 'Full Stack Web Development', '2023-07-06 22:48:37'),
('web3', '12345', 'web3@gmaill.com', '10 July 2023', 'Full Stack Web Development', '2023-07-06 22:51:47'),
('dm1', '12345', 'dm1@gmail.com', '10 July 2023', 'Full Stack Web Development', '2023-07-06 22:52:15'),
('dm4', '12345', 'dm4@gmail.com', '10 July 2023', 'Full Stack Web Development', '2023-07-06 22:53:20'),
('home1', '12345', 'home1@gmail.com', '10 july 2023', 'Full stack Digital Marketing', '2023-07-06 22:53:40'),
('cert1', '12345', 'cert1@gmail.com', '10 July 2023', 'Full Stack Digital Marketing', '2023-07-06 22:58:08');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_enquiry`
--

CREATE TABLE `curriculum_enquiry` (
  `name` varchar(20) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `enq_time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `curriculum_enquiry`
--

INSERT INTO `curriculum_enquiry` (`name`, `mobile`, `enq_time`) VALUES
('efe', '43233', NULL),
('yoyo', '1234', NULL),
('dm1', '1234543', '2023-07-06 22:59:27'),
('web1', '1342', '2023-07-06 23:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `hire_intern`
--

CREATE TABLE `hire_intern` (
  `company_name` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `numberofintern` int(11) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `mobile` varchar(13) DEFAULT NULL,
  `webdevelopment` enum('Y','N') DEFAULT 'N',
  `digitalmarketing` enum('Y','N') DEFAULT 'N',
  `enq_time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hire_intern`
--

INSERT INTO `hire_intern` (`company_name`, `name`, `designation`, `numberofintern`, `email`, `mobile`, `webdevelopment`, `digitalmarketing`, `enq_time`) VALUES
('abcde', 'harshdeep', 'Senior HR', 1, 'harsh.05911@gmail.com', '483841', 'Y', 'N', NULL),
('abcde', 'efe', 'CTO', 5, 'info@bytelap.com', '43233', 'N', 'Y', NULL),
('fe', 'ffe', 'HR', 0, '3332', 'f23', 'N', 'N', NULL),
('dummy', 'abc@gmail.com', 'HR', 3, '', '474817344', 'Y', 'Y', NULL),
('rrr', 'rrr', 'HR', 0, '', 'rrr', 'N', 'Y', NULL),
('rreerre', 'eqwq', 'HR', 0, 'wqwq', 'ewewe', 'Y', 'Y', NULL),
('rrewww', 'www', 'HR', 2, 'www', 'www', 'Y', 'Y', NULL),
('Bytelap Technologies', 'info@bytelap.com', 'Senior HR', 33, '', '7878787878', 'N', 'Y', NULL),
('Bytelap Technologies', 'info@bytelap.com', 'Senior HR', 33, '', '7878787878', 'Y', 'Y', NULL),
('faq', 'faq@gmail.comm', 'Founder', 22, '', '1234', 'Y', 'Y', '2023-07-06 22:45:49'),
('about', 'about@gmail.comm', 'Other', 4, '', '1234', 'N', 'Y', '2023-07-06 22:47:38'),
('web2', 'web2@gmail.com', 'Senior HR', 1, '', '1234', 'Y', 'N', '2023-07-06 22:50:46'),
('dm2', 'dm2', 'Founder', 22, 'dm2@gmail.com', '1344444444444', 'Y', 'N', '2023-07-06 22:52:56'),
('hom2', 'home2', 'HR', 1, 'home2@gmail.com', '984784', 'N', 'N', '2023-07-06 22:54:03'),
('hom3', 'home3@gmail.com', 'HR', 2, '', '8447', 'N', 'N', '2023-07-06 22:55:11'),
('certificate1', 'cert1@gmail.co', 'Marketing Manager', 22, '', '12345', 'Y', 'N', '2023-07-06 22:57:34'),
('certificate1', 'cert1@gmail.co', 'Marketing Manager', 22, '', '12345', 'Y', 'N', '2023-07-06 22:57:43');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
