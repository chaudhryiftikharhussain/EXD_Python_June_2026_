-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2026 at 10:34 AM
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
-- Database: `library_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`, `email`) VALUES
(1, 'James Clear', 'james.clear@example.com'),
(2, 'Paulo Coelho', 'paulo.coelho@example.com'),
(3, 'Yuval Noah Harari', 'yuval.harari@example.com'),
(4, 'Harper Lee', 'harper.lee@example.com'),
(5, 'J.K. Rowling', 'jk.rowling@example.com'),
(6, 'George R.R. Martin', 'grrm@example.com'),
(7, 'Stephen King', 'stephen.king@example.com'),
(8, 'Dan Brown', 'dan.brown@example.com'),
(9, 'Agatha Christie', 'agatha.christie@example.com'),
(10, 'Robin Sharma', 'robin.sharma@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `authorbooks`
--

CREATE TABLE `authorbooks` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authorbooks`
--

INSERT INTO `authorbooks` (`id`, `author_id`, `book_id`) VALUES
(1, 1, 1),
(11, 1, 11),
(21, 1, 21),
(31, 1, 31),
(41, 1, 41),
(2, 2, 2),
(12, 2, 12),
(22, 2, 22),
(32, 2, 32),
(42, 2, 42),
(3, 3, 3),
(23, 3, 23),
(33, 3, 33),
(13, 3, 42),
(43, 3, 43),
(4, 4, 4),
(14, 4, 14),
(24, 4, 24),
(34, 4, 34),
(44, 4, 44),
(5, 5, 5),
(15, 5, 15),
(25, 5, 25),
(35, 5, 35),
(45, 5, 45),
(6, 6, 6),
(16, 6, 16),
(26, 6, 26),
(36, 6, 36),
(46, 6, 46),
(7, 7, 7),
(17, 7, 17),
(27, 7, 27),
(37, 7, 37),
(47, 7, 47),
(8, 8, 8),
(18, 8, 18),
(28, 8, 28),
(38, 8, 38),
(48, 8, 48),
(9, 9, 9),
(19, 9, 19),
(29, 9, 29),
(39, 9, 39),
(49, 9, 49),
(10, 10, 10),
(20, 10, 20),
(30, 10, 30),
(40, 10, 40),
(50, 10, 50);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `category_id`, `publisher_id`) VALUES
(1, 'Atomic Habits', 3, 1),
(2, 'The Alchemist', 2, 1),
(3, 'Sapiens', 3, 2),
(4, 'To Kill a Mockingbird', 1, 2),
(5, 'Orient ABC', 3, 1),
(6, 'The Great Gatsby', 1, 2),
(7, 'Think and Grow Rich', 2, 1),
(8, 'Clean Code', 3, 2),
(9, 'Rich Dad Poor Dad', 2, 1),
(10, 'The Pragmatic Programmer', 3, 2),
(11, 'Deep Work', 2, 1),
(12, 'The Hobbit', 1, 2),
(13, '1984', 1, 1),
(14, 'Brave New World', 1, 2),
(15, 'Zero to One', 2, 1),
(16, 'The Lean Startup', 2, 2),
(17, 'Introduction to Algorithms', 3, 1),
(18, 'Design Patterns', 3, 2),
(19, 'The Psychology of Money', 2, 1),
(20, 'The Power of Habit', 2, 2),
(21, 'The Silent Patient', 1, 1),
(22, 'Becoming', 2, 2),
(23, 'Educated', 2, 1),
(24, 'Harry Potter and the Sorcerer\'s Stone', 1, 2),
(25, 'The Catcher in the Rye', 1, 1),
(26, 'The Lord of the Rings', 1, 2),
(27, 'The Da Vinci Code', 1, 1),
(28, 'The 7 Habits of Highly Effective People', 2, 2),
(29, 'Cracking the Coding Interview', 3, 1),
(30, 'Head First Java', 3, 2),
(31, 'Effective Java', 3, 1),
(32, 'Java: The Complete Reference', 3, 2),
(33, 'Python Crash Course', 3, 1),
(34, 'Learning SQL', 3, 2),
(35, 'Database System Concepts', 3, 1),
(36, 'The Art of Computer Programming', 3, 2),
(37, 'Steve Jobs', 2, 1),
(38, 'Elon Musk', 2, 2),
(39, 'The Monk Who Sold His Ferrari', 2, 1),
(40, 'Wings of Fire', 2, 2),
(41, 'The Kite Runner', 1, 1),
(42, 'A Thousand Splendid Suns', 1, 2),
(43, 'The Book Thief', 1, 1),
(44, 'Life of Pi', 1, 2),
(45, 'The Fault in Our Stars', 1, 1),
(46, 'Digital Fortress', 1, 2),
(47, 'Angels and Demons', 1, 1),
(48, 'Inferno', 1, 2),
(49, 'The Intelligent Investor', 2, 1),
(50, 'Thinking, Fast and Slow', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `booksdetail`
--

CREATE TABLE `booksdetail` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `pages` int(11) NOT NULL,
  `language` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booksdetail`
--

INSERT INTO `booksdetail` (`id`, `book_id`, `isbn`, `pages`, `language`) VALUES
(1, 1, 'ISBN0001', 320, 'English'),
(2, 2, 'ISBN0002', 208, 'English'),
(3, 3, 'ISBN0003', 498, 'English'),
(4, 4, 'ISBN0004', 281, 'English'),
(5, 5, 'ISBN0005', 150, 'Urdu'),
(6, 6, 'ISBN0006', 180, 'English'),
(7, 7, 'ISBN0007', 238, 'English'),
(8, 8, 'ISBN0008', 464, 'English'),
(9, 9, 'ISBN0009', 336, 'English'),
(10, 10, 'ISBN0010', 352, 'English'),
(11, 11, 'ISBN0011', 296, 'English'),
(12, 12, 'ISBN0012', 310, 'English'),
(13, 13, 'ISBN0013', 328, 'English'),
(14, 14, 'ISBN0014', 288, 'English'),
(15, 15, 'ISBN0015', 224, 'English'),
(16, 16, 'ISBN0016', 352, 'English'),
(17, 17, 'ISBN0017', 1312, 'English'),
(18, 18, 'ISBN0018', 416, 'English'),
(19, 19, 'ISBN0019', 256, 'English'),
(20, 20, 'ISBN0020', 371, 'English'),
(21, 21, 'ISBN0021', 336, 'English'),
(22, 22, 'ISBN0022', 448, 'English'),
(23, 23, 'ISBN0023', 352, 'English'),
(24, 24, 'ISBN0024', 309, 'English'),
(25, 25, 'ISBN0025', 277, 'English'),
(26, 26, 'ISBN0026', 1178, 'English'),
(27, 27, 'ISBN0027', 454, 'English'),
(28, 28, 'ISBN0028', 432, 'English'),
(29, 29, 'ISBN0029', 706, 'English'),
(30, 30, 'ISBN0030', 720, 'English'),
(31, 31, 'ISBN0031', 416, 'English'),
(32, 32, 'ISBN0032', 1248, 'English'),
(33, 33, 'ISBN0033', 544, 'English'),
(34, 34, 'ISBN0034', 338, 'English'),
(35, 35, 'ISBN0035', 1376, 'English'),
(36, 36, 'ISBN0036', 672, 'English'),
(37, 37, 'ISBN0037', 656, 'English'),
(38, 38, 'ISBN0038', 688, 'English'),
(39, 39, 'ISBN0039', 224, 'English'),
(40, 40, 'ISBN0040', 180, 'English'),
(41, 41, 'ISBN0041', 371, 'English'),
(42, 42, 'ISBN0042', 432, 'English'),
(43, 43, 'ISBN0043', 552, 'English'),
(44, 44, 'ISBN0044', 352, 'English'),
(45, 45, 'ISBN0045', 313, 'English'),
(46, 46, 'ISBN0046', 384, 'English'),
(47, 47, 'ISBN0047', 616, 'English'),
(48, 48, 'ISBN0048', 480, 'English'),
(49, 49, 'ISBN0049', 640, 'English'),
(50, 50, 'ISBN0050', 512, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(14, 'Adventure'),
(8, 'Biography'),
(11, 'Children'),
(4, 'Fantasy'),
(1, 'Fiction'),
(9, 'History'),
(12, 'Horror'),
(5, 'Mystery'),
(2, 'Non-Fiction'),
(13, 'Poetry'),
(7, 'Romance'),
(3, 'Science Fiction'),
(10, 'Self-Help'),
(15, 'Technology'),
(6, 'Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `name`) VALUES
(1, 'Penguin Random House'),
(2, 'HarperCollins'),
(3, 'Simon & Schuster'),
(4, 'Hachette Book Group'),
(5, 'Macmillan Publishers'),
(6, 'Oxford University Press'),
(7, 'Cambridge University Press'),
(8, 'Scholastic Corporation'),
(9, 'Bloomsbury Publishing'),
(10, 'Pearson');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authorbooks`
--
ALTER TABLE `authorbooks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_author_book` (`author_id`,`book_id`),
  ADD KEY `fk_authorbooks_book` (`book_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_book_category` (`category_id`),
  ADD KEY `fk_book_publisher` (`publisher_id`);

--
-- Indexes for table `booksdetail`
--
ALTER TABLE `booksdetail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_id` (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authorbooks`
--
ALTER TABLE `authorbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `booksdetail`
--
ALTER TABLE `booksdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authorbooks`
--
ALTER TABLE `authorbooks`
  ADD CONSTRAINT `fk_authorbooks_author` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_authorbooks_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `fk_book_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_book_publisher` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `booksdetail`
--
ALTER TABLE `booksdetail`
  ADD CONSTRAINT `fk_book_detail_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
