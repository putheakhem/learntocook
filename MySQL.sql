-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 19, 2016 at 01:06 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `LTC`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8,
  `desc` text NOT NULL,
  `img` text CHARACTER SET utf8,
  `author` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `body` longtext NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `tagID` int(11) DEFAULT NULL,
  `typeID` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagID` (`tagID`),
  KEY `typeID` (`typeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `desc`, `img`, `author`, `body`, `status`, `views`, `tagID`, `typeID`, `created`) VALUES
(20, 'សម្លរកកូរ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. ', '1465739339.jpg', 'ហ៊ែល ម៉ាប់', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. ', 'publish', 3, 2, 1, '2016-06-12 20:48:59'),
(24, 'ផ្លែកត្រប់', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. ', '1465740471.jpg', 'ហ៊ែល ម៉ាប់', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. ', 'publish', 6, 3, 1, '2016-06-12 21:07:51'),
(25, 'ស្លឹកគ្រៃ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. ', '1465740518.jpg', 'ហ៊ែល ម៉ាប់', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. ', 'publish', 14, 2, 16, '2016-06-12 21:08:38'),
(26, 'ស្លឹកង្ងប់', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. ', '1465740624.jpg', 'ហ៊ែល ម៉ាប់', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. ', 'publish', 5, 2, 18, '2016-06-12 21:10:24'),
(28, 'ស្លឹកខ្ទឹម', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. ', '1465740789.jpg', 'ហ៊ែល ម៉ាប់', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. ', 'publish', 12, 3, 4, '2016-06-12 21:13:09'),
(29, 'ផ្លែកប៉េង', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. ', '1465740842.jpg', 'ហ៊ែល ម៉ាប់', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. ', 'publish', 2, 1, 15, '2016-06-12 21:14:02'),
(35, 'How to Upload', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. ', '1466270340.jpg', 'ហ៊ែល ម៉ាប់', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at aliquet libero. Suspendisse potenti. Duis fringilla sem ante, in porta est imperdiet vitae. Mauris fermentum congue enim, vitae interdum libero luctus quis. Duis eleifend, augue eget tincidunt volutpat, est dolor dictum est, ac mattis quam ante vel felis. Maecenas eu enim velit. Fusce malesuada, augue eget facilisis porta, purus neque tempus diam, sit amet faucibus erat massa ut purus. Nullam sagittis ut ex commodo ornare. Fusce sit amet felis ac nulla hendrerit porta eget at metus. ', 'publish', 4, 1, 1, '2016-06-19 00:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `screenshot` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `screenshot`, `file`, `created`) VALUES
(13, 'Signed, Unsigned and floating point number', '', '', '', '2016-06-18 15:22:12'),
(14, 'Assignment: Cache', '', '', '', '2016-06-18 15:28:32'),
(16, 'Signed, Unsigned and floating point number', '', '', '', '2016-06-18 15:41:02'),
(18, 'Signed, Unsigned and floating point number', '', '', '', '2016-06-18 15:46:21'),
(39, 'TEST', '', '', '', '2016-06-18 16:35:25'),
(0, 'sfsdf', '', '', '', '2016-06-18 17:17:28'),
(0, 'sfsdfafsfd', '', '', '', '2016-06-18 17:17:32'),
(0, 'sfsdfafsfdfqwete', '', '', '', '2016-06-18 17:17:37'),
(0, 'sfsdfafsfdfqweteagsdg', '', '', '', '2016-06-18 17:17:41'),
(0, 'sfsdfafsfdfqweteagsdg', '', '', '', '2016-06-18 17:17:46'),
(0, 'sfsdfafsfdfqweteagsdg', '', '', '', '2016-06-18 17:17:49'),
(0, 'sfsdfafsfdfqweteagsdg', '', '', '', '2016-06-18 17:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE IF NOT EXISTS `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8,
  `articleID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articleID` (`articleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE IF NOT EXISTS `ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `title`, `image`, `status`, `created`) VALUES
(55, 'ស្លឹកគ្រៃ', '7.jpg', 0, '2016-06-05 23:12:10'),
(56, 'ស្លឹកខ្ទឹម', '1.jpg', 0, '2016-06-05 23:38:47'),
(60, 'ផ្លែកត្រសក់', '3.jpg', 0, '2016-06-05 23:42:51'),
(61, 'ផ្លែកក្រូច', '11.jpg', 0, '2016-06-05 23:43:44'),
(63, 'មើមខ្ទឹមបារំាង', '5.jpg', 1, '2016-06-05 23:45:27'),
(64, 'មើមខ្ទឹមខ្មែរ', '6.jpg', 1, '2016-06-05 23:47:33'),
(65, 'បានកែប្រែ', '8.jpg', 1, '2016-06-13 12:01:16'),
(66, 'ផ្លែកប៉េងប៉ក', '2.jpg', 1, '2016-06-05 23:51:02'),
(67, 'ស្ពៃក្តោប', '1.jpg', 1, '2016-06-07 08:15:00'),
(70, 'ផ្លែកត្រប់', '2.jpg', 1, '2016-06-07 12:45:07'),
(71, 'បន្លែមថ្មី', '02_AC-021_Syncore-and-Sepacore-for-agriculture-analysis.jpg', 1, '2016-06-07 15:11:49'),
(73, 'បន្លែ', 'indonesia-agriculture-2.jpg', 1, '2016-06-09 10:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE IF NOT EXISTS `restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8 NOT NULL,
  `link` varchar(300) NOT NULL,
  `image` varchar(300) NOT NULL,
  `body` varchar(300) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` decimal(12,0) NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `link`, `image`, `body`, `address`, `phone`, `created`, `status`) VALUES
(13, 'test', 'jdfa;lskfj', '02_AC-021_Syncore-and-Sepacore-for-agriculture-analysis.jpg', 'sjlkkfjlasjfsldfjaslkj', 'afalsjdlfjas;lkfd', 980845, '2016-06-18 17:08:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `tagID` int(11) NOT NULL AUTO_INCREMENT,
  `tagType` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `value` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`tagID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tagID`, `tagType`, `value`, `created`) VALUES
(1, 'ធម្មតា', 'normal update', '2016-06-02 05:24:17'),
(2, 'ល្បី', 'popular', '2016-06-03 10:15:08'),
(3, 'តាមតំបន់', 'location', '2016-06-04 09:15:33'),
(4, 'Testing', 'New Value', '2016-06-12 13:48:55'),
(5, 'How to Upload image in PHP code?', 'New Value', '2016-06-12 13:49:05'),
(6, 'Na ta sa', 'Thaki', '2016-06-12 13:49:21');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `typeID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `value` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`typeID`, `name`, `value`, `created`) VALUES
(1, 'សម្លរ', 'soup', '2016-06-09 03:16:17'),
(4, 'ឆា', 'boid', '2016-06-08 08:13:32'),
(5, 'នំ', 'cookie', '2016-06-03 06:35:09'),
(6, 'បង្អែម', 'desert', '2016-06-03 06:09:32'),
(15, 'បន្លែមថ្មី', 'new-cookie', '2016-06-11 23:53:29'),
(16, 'ស្ងារ', 're-soup', '2016-06-11 23:53:43'),
(18, 'ចៀន', 'fry', '2016-06-11 23:53:57'),
(35, 'Testing', 'value update', '2016-06-12 10:03:39'),
(38, 'Testing', 'New Value', '2016-06-12 13:48:17'),
(39, 'Creating A Record', 'New Value', '2016-06-12 13:48:25'),
(40, 'AJAZ', 'First Input', '2016-06-12 13:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `status`, `created`) VALUES
(1, 'ហ៊ែល ម៉ាប់', 'mabhelitc@gmail.com', '$2y$10$I4IUW2N5REyQsULRej1xze2lrQVqhcF1/4.eHTJo2SDZckhd0UKjS', 'Active', '2016-06-01 10:00:00'),
(2, 'KIM YOUNENG', 'kimyouneng.edu@gmail.com', '$2y$10$cKqV4EHMXc3jjBiNsP4LOemCDUm3sLWBqM0jJPaNOVIF6.iT.Ag9a', 'Active', '2016-06-05 08:12:22'),
(3, 'LAO Thireach', 'thireachlao@gmail.com', '$2y$10$cgYC4/1Fv9SuqYBVGawQAucdSjAt3gliyOSkX/tg93SxVUMeDIpeu', 'Active', '2016-06-03 06:36:20'),
(4, 'HENG Rath Pisey', 'hengrathpisey@gmail.com', '$2y$10$VIuF56U.j9uzU3RvYeVbCuj9SF1t949EBpZHo61QCqP8qDIzh9B9K', 'Active', '2016-06-01 05:31:16');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`tagID`) REFERENCES `tags` (`tagID`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`typeID`) REFERENCES `types` (`typeID`);

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`articleID`) REFERENCES `articles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
