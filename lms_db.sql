-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2022 at 12:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `admin_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `admin_pass` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Prasanna', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL,
  `course_desc` text COLLATE utf8_bin NOT NULL,
  `course_img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_img`) VALUES
(1, 'Java Programming', 'The course covers concepts of Core Java programming setting a foundation for other editions of the programming language.  It trains learners to design application software for both desktop and server environments using Java.', '../image/courseimg/java_img.png'),
(2, 'C Programming', 'The course is designed to provide complete knowledge of C language. Students will be able to develop logics which will help them to create programs, applications in C.', '../image/courseimg/c_language.png'),
(3, 'Python Programming', 'This Python course Covers the basic programming constructs of Python, including assignment, conditionals, iteration, functions, object-oriented design, arrays, and vectorized computation. ', '../image/courseimg/Python.jpg'),
(4, 'Operating Systems', 'This course will provide an introduction to operating system design and implementation. The operating system provides a well-known, convenient, and efficient interface between user programs and the bare hardware of the computer on which they run.', '../image/courseimg/os.jpg'),
(5, 'Data Structures using C', 'This DSA online course is specifically designed for beginners, whether it be students or working professionals, who want to learn the Data Structures and Algorithms concepts from basic to the advanced level.', '../image/courseimg/ds.jpg'),
(6, 'Database Management System', 'The course examines file organizations, concepts and principles of DBMS\'s, data analysis, database design, data modeling, database management, data & query optimization, and database implementation.', '../image/courseimg/dbms.png'),
(7, 'c++', 'The Course is designed in a way that develops basics and skills of C++ Language to Students. It gives Programmers a high level of control over system resources and memory.', '../image/courseimg/cpp.png'),
(8, 'Linux', 'This course provided students with the fundamental concepts of Linux/UNIX operating systems. The course covers such topics as the Linux/UNIX file system, commands, utilities, text editing, shell programming and text processing utilities. ', '../image/courseimg/linux.png');

-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `stu_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `courseorder`
--

INSERT INTO `courseorder` (`co_id`, `stu_email`, `course_id`) VALUES
(31, '20b01a0562@svecw.edu.in', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text COLLATE utf8_bin NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(14, 'Its very nice!!', 183);

-- --------------------------------------------------------

--
-- Table structure for table `interview`
--

CREATE TABLE `interview` (
  `interview_id` int(11) NOT NULL,
  `interview_name` text COLLATE utf8_bin NOT NULL,
  `interview_desc` text COLLATE utf8_bin NOT NULL,
  `interview_img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `interview`
--

INSERT INTO `interview` (`interview_id`, `interview_name`, `interview_desc`, `interview_img`) VALUES
(1, 'Java Programming', '', '../image/courseimg/java_img.png'),
(2, 'C Programming', '', '../image/courseimg/c_language.png'),
(3, 'Python Programming', '', '../image/courseimg/Python.jpg'),
(4, 'c++', '', '../image/courseimg/cpp.png'),
(5, 'Data Structures using C', '', '../image/courseimg/ds.jpg'),
(6, 'Database Management System', '', '../image/courseimg/dbms.png'),
(7, 'Operating Systems', '', '../image/courseimg/os.jpg'),
(8, 'Linux', '', '../image/courseimg/linux.png');

-- --------------------------------------------------------

--
-- Table structure for table `intervieworder`
--

CREATE TABLE `intervieworder` (
  `co_id` int(11) NOT NULL,
  `stu_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `interview_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `intervieworder`
--

INSERT INTO `intervieworder` (`co_id`, `stu_email`, `interview_id`) VALUES
(11, '20b01a0562@svecw.edu.in', 8),
(21, '20b01a0562@svecw.edu.in', 1),
(22, '20b01a0562@svecw.edu.in', 1),
(23, '20b01a0562@svecw.edu.in', 2),
(24, '20b01a0562@svecw.edu.in', 4),
(25, '20b01a0562@svecw.edu.in', 1),
(26, '20b01a0562@svecw.edu.in', 1),
(27, '20b01a0562@svecw.edu.in', 1),
(28, '20b01a0562@svecw.edu.in', 1),
(29, '20b01a0562@svecw.edu.in', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text COLLATE utf8_bin NOT NULL,
  `lesson_desc` text COLLATE utf8_bin NOT NULL,
  `lesson_link` text COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(11, 'Introduction to OOP', 'OOP introduction\r\n\r\n', '../Intro_to_OOP.pdf', 1, 'Java Programming'),
(12, 'Programming Constructs.pdf', 'Programming Constructs', '../ProgrammingConstructs.pdf', 1, 'Java Programming'),
(13, 'Classes and Objects', 'Classes and Objects', '../ClassesandObject.pdf', 1, 'Java Programming'),
(14, 'Inheritance', 'Inheritance', '../Inheritance.pdf', 1, 'Java Programming'),
(15, 'Interfaces', 'Interfaces', '../Interfaces.pdf', 1, 'Java Programming'),
(16, 'Packages', 'Packages Desc', '../Package.pdf', 1, 'Java Programming'),
(17, 'Exceptions', 'Exception Handling Desc', '../ExceptionHandling.pdf', 1, 'Java Programming'),
(18, 'Multithreading', 'Multithreading desc', '../Multithreading.pdf', 1, 'Java Programming'),
(19, 'Collections Framework', 'Collections Framework desc', '../CollectionsFramework.pdf', 1, 'Java Programming'),
(110, 'Applets', 'Applets desc', '../Applets.pdf', 1, 'Java Programming'),
(111, 'Event Handling', 'Event Handling desc', '../EventHandling.pdf', 1, 'Java Programming'),
(112, 'Swing Components', 'Swing Components desc', '../SwingComponents.pdf', 1, 'Java Programming');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `question_name` text COLLATE utf8_bin NOT NULL,
  `question_desc` text COLLATE utf8_bin NOT NULL,
  `question_link` text COLLATE utf8_bin NOT NULL,
  `interview_id` int(11) NOT NULL,
  `interview_name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `question_name`, `question_desc`, `question_link`, `interview_id`, `interview_name`) VALUES
(11, 'Interview questions', '\r\n\r\n', '../interviewquestions.pdf', 1, 'Java Programming'),
(12, 'Java OOPS Interview Questions', '', '../JavaOOPSInterviewQuestions.pdf', 1, 'Java Programming'),
(13, 'JDBC interview questions', '', '../JDBCinterviewquestions.pdf', 1, 'Java Programming'),
(14, 'Spring Framework', '', '../SpringFramework.pdf', 1, 'Java Programming'),
(15, 'Hibernate', 'Hibernate', '../Hibernate.pdf', 1, 'Java Programming'),
(16, 'JSP', 'JSP Desc', '../JSP.pdf', 1, 'Java Programming'),
(17, 'Exception and Thread', 'Exception and Thread Desc', '../ExceptionandThread.pdf', 1, 'Java Programming');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_pass` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_occ` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`) VALUES
(183, 'Prasanna', '20b01a0562@svecw.edu.in', 'SVECW@123', '', ''),
(184, 'Kavya', '20b01a0533@svecw.edu.in', 'SVECW@123', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseorder`
--
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `interview`
--
ALTER TABLE `interview`
  ADD PRIMARY KEY (`interview_id`);

--
-- Indexes for table `intervieworder`
--
ALTER TABLE `intervieworder`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `interview`
--
ALTER TABLE `interview`
  MODIFY `interview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `intervieworder`
--
ALTER TABLE `intervieworder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
