-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-06-15 15:29:36
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whatproblem`
--

-- --------------------------------------------------------

--
-- 表的结构 `films`
--

CREATE TABLE `films` (
  `film_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `film_type` varchar(10) DEFAULT NULL,
  `film_score` varchar(100) DEFAULT '0',
  `film_desc` varchar(500) DEFAULT NULL,
  `film_area` varchar(100) DEFAULT NULL,
  `film_favorite` varchar(10) DEFAULT '1',
  `film_name` varchar(200) DEFAULT NULL,
  `film_director` varchar(100) DEFAULT NULL,
  `film_major` varchar(100) DEFAULT NULL,
  `film_time` varchar(100) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `film_hitory` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `films`
--

INSERT INTO `films` (`film_id`, `film_type`, `film_score`, `film_desc`, `film_area`, `film_favorite`, `film_name`, `film_director`, `film_major`, `film_time`, `user_id`, `user_name`, `create_time`, `film_hitory`) VALUES
(1, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(2, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(3, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(4, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(5, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(6, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(7, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(8, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(9, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(10, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(11, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(12, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(13, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(14, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(15, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(16, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(17, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(18, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(19, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(20, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(21, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(22, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(23, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0'),
(24, '0', '8.0', '科幻巨献科幻巨献科幻巨献', '中国大陆', '1', '美人鱼', '周星驰', '邓超,林允儿', '2016', '0001', '用户1', '2018-06-12 20:54:06', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`film_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `films`
--
ALTER TABLE `films`
  MODIFY `film_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
