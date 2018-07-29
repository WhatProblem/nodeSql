-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-07-30 01:12:14
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
  `film_id` int(11) NOT NULL,
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
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `film_hitory` varchar(10) DEFAULT '0',
  `film_detail_poster` varchar(200) DEFAULT '/film/loadImg?poster=detail&filmId=1',
  `film_banner_poster` varchar(200) DEFAULT '/film/loadImg?poster=banner&filmId=1',
  `film_lock` varchar(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `films`
--

INSERT INTO `films` (`film_id`, `film_type`, `film_score`, `film_desc`, `film_area`, `film_favorite`, `film_name`, `film_director`, `film_major`, `film_time`, `user_id`, `user_name`, `create_date`, `film_hitory`, `film_detail_poster`, `film_banner_poster`, `film_lock`) VALUES
(1, '6', '10.0', '《九品芝麻官之白面包青天》是一部由王晶执导，徐锦江，张敏，吴孟达，周星驰于1994年联合主演的喜剧电影。', '中国大陆/中国香港', '1', '《九品芝麻官之白面包青天》', '王晶', '周星驰，张敏，吴孟达，钟丽缇，徐锦江，蔡少芬，吴启华，苑琼丹', '1994年', '0001', '用户1', '2018-06-15 21:58:16', '0', '/film/loadImg?poster=detail&filmId=1', '/film/loadImg?poster=banner&filmId=1', '0'),
(2, '6', '10.0', '影片讲述了江南才子唐伯虎对华太师府上的丫鬟秋香一见钟情，在船夫的帮助下他施展计谋混进了华府。经过一番曲折，唐伯虎终于与秋香拜堂成婚。', '中国大陆/中国香港', '1', '唐伯虎点秋香', '周星驰，李力持', '周星驰，巩俐，陈百祥，朱咪咪，郑佩佩，吴镇宇，黄一山', '1993年07月', '0001', '用户1', '2018-06-24 09:20:09', '0', '/film/loadImg?poster=detail&filmId=2', '/film/loadImg?poster=banner&filmId=2', '0'),
(3, '5', '10.0', '《大话西游》是由周星驰彩星电影公司和西安电影制片厂联合摄制的爱情悲喜剧电影，由刘镇伟执导，周星驰、朱茵、吴孟达、莫文蔚等主演。', '中国香港', '1', '大话西游', '刘镇伟', '周星驰，吴孟达，朱茵，莫文蔚，蓝洁瑛，罗家英，刘镇伟，蔡少芬，江约诚，陆树铭，吴珏瑾', '1995年1月', '0001', '用户1', '2018-06-24 09:20:06', '0', '/film/loadImg?poster=detail&filmId=3', '/film/loadImg?poster=banner&filmId=3', '0'),
(4, '4', '10.0', '影片讲述了一个街头混混变成一代武术家，一个本性善良的黑帮流氓改邪归正的故事', '中国内地', '1', '功夫', '周星驰', '周星驰，黄圣依，陈国坤，元华，元秋，梁小龙', '2004年12月', '0001', '用户1', '2018-06-24 09:20:01', '0', '/film/loadImg?poster=detail&filmId=4', '/film/loadImg?poster=banner&filmId=4', '0'),
(5, '6', '10.0', '《逃学威龙》是1991年7月18号上映的一部喜剧电影，本片由陈嘉上执导，周星驰、吴孟达、张敏主演，以4382万的票房成绩打破香港电影票房纪录，成为年度票房冠军。', '中国香港', '1', '逃学威龙', '陈嘉上', '周星驰，吴孟达，张敏', '1991年7月', '0001', '用户1', '2018-06-24 09:19:56', '0', '/film/loadImg?poster=detail&filmId=5', '/film/loadImg?poster=banner&filmId=5', '0'),
(6, '6', '10.0', '《赌侠》是1990年上映的一部香港影片，本片由香港导演王晶执导，周星驰、刘德华领衔主演，张敏、陈法蓉、吴孟达等联袂主演的香港喜剧电影', '中国香港', '1', '赌侠', '王晶', '周星驰，刘德华，吴孟达，张敏，陈法蓉，向华强，程东，单立文', '1990年12月', '0001', '用户1', '2018-06-24 09:19:48', '0', '/film/loadImg?poster=detail&filmId=6', '/film/loadImg?poster=banner&filmId=6', '0'),
(8, '6', '9.6', '《大内密探零零发》是一部周星驰自编自导自演拍摄于1996年的古装武侠外星科幻搞笑电影，刘嘉玲，李若彤、罗家英联袂主演。影片讲述号称保龙高手的零零发，其实是一个毫无武功的发明迷，因未完成皇帝交办的捉拿江湖四大怪杰的任务，被皇上开除出宫。', '中国香港', '1', '大内密探零零发', '周星驰', '周星驰，刘嘉玲，李若彤，罗家英，张达明，李力持，江欣燕，苑琼丹', '1996年2月', '0001', '用户1', '2018-06-24 09:19:44', '0', '/film/loadImg?poster=detail&filmId=8', '/film/loadImg?poster=banner&filmId=8', '0'),
(10, '6', '8.6', '《破坏之王》是一部由周星驰执导，周星驰，钟丽缇，吴孟达等主演的香港喜剧电影，于1994年上映。该片讲述了快餐小子何金银为追求女神阿丽，欲修习武功，却不慎选择了江湖骗子鬼王达为师，一无所得，最终他在误打误撞中掌握“无敌风火轮”，并凭此征服阿丽，与之相爱的故事。', '中国香港', '1', '破坏之王', '周星驰', '周星驰，钟丽缇，吴孟达，林国斌，黄一飞，古巨基，黄一山，张学友，林雪，郑祖', '1994年2月', '0001', '用户1', '2018-06-24 09:19:37', '0', '/film/loadImg?poster=detail&filmId=10', '/film/loadImg?poster=banner&filmId=10', '0'),
(11, '6', '8.2', '影片主要讲述清朝时期官官相护，状师宋世杰为有冤情的寡妇杨秀珍翻案的故事，于1992年7月2日在香港上映', '中国香港', '1', '审死官', '杜琪峰', '周星驰，梅艳芳，吴家丽，吴孟达，秦沛，黄一飞', '1992年7月', '0001', '用户1', '2018-06-24 09:19:30', '0', '/film/loadImg?poster=detail&filmId=11', '/film/loadImg?poster=banner&filmId=11', '0'),
(12, '6', '9.6', '《豪门夜宴》是1991年由众多香港当红影星为帮助大陆水灾筹备善款而拍摄一部喜剧电影，其中客串的明星多达上百位。其于1991年上映，曾志伟、郑裕玲、洪金宝、吴耀汉等主演，讲述了曾小智努力获得巨额开发计划的故事。', '中国香港', '1', '豪门夜宴', '徐克', '曾志伟，郑裕玲，吴耀汉，洪金宝，林子祥，张学友，梁家辉，梁朝伟，许冠文，刘德华，周星驰，刘嘉玲，张曼玉，王祖贤', '1991', '0001', '用户1', '2018-06-24 09:19:23', '0', '/film/loadImg?poster=detail&filmId=12', '/film/loadImg?poster=banner&filmId=12', '0'),
(13, '6', '8.3', '影片对美国谍战影片007系列进行恶搞创作，讲述了后备国家特工凌凌漆赶赴香港，进行从黑帮头目金枪人的手里夺回暴龙头骨的任务，最终用行动感化了原本与之对抗的金枪人手下女特务李香琴，成功完成任务的故事。', '中国香港', '1', '国产凌凌漆', '周星驰、李力持', '周星驰，袁咏仪，罗家英，陈宝莲，黄锦江，郑祖', '1994年9月', '0001', '用户1', '2018-06-24 09:19:19', '0', '/film/loadImg?poster=detail&filmId=13', '/film/loadImg?poster=banner&filmId=13', '0');

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
  MODIFY `film_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
