-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-07-30 01:12:32
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
-- 表的结构 `musics`
--

CREATE TABLE `musics` (
  `music_id` int(11) NOT NULL,
  `music_name` varchar(200) DEFAULT NULL,
  `music_singer` varchar(100) DEFAULT NULL,
  `music_desc` varchar(500) DEFAULT NULL,
  `music_area` varchar(100) DEFAULT NULL,
  `music_time` varchar(100) DEFAULT NULL,
  `music_type` varchar(10) DEFAULT NULL,
  `music_score` varchar(100) DEFAULT '0',
  `music_favorite` varchar(10) DEFAULT '0',
  `music_lock` varchar(10) DEFAULT '0',
  `music_hitory` varchar(10) DEFAULT '0',
  `user_id` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `music_detail_poster` varchar(100) DEFAULT NULL,
  `music_banner_poster` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `musics`
--

INSERT INTO `musics` (`music_id`, `music_name`, `music_singer`, `music_desc`, `music_area`, `music_time`, `music_type`, `music_score`, `music_favorite`, `music_lock`, `music_hitory`, `user_id`, `user_name`, `create_date`, `music_detail_poster`, `music_banner_poster`) VALUES
(1, '体面', '于文文', '别堆砌怀念让剧情变得狗血', '中国大陆', '2018年', '6', '9.6', '0', '0', '0', '0001', '用户1', '2018-07-25 22:30:17', '/music/loadImg?poster=detail&musicId=1', '/music/loadImg?poster=banner&musicId=1\n'),
(2, '说散就散', '袁维娅', '《说散就散》 是由张楚翘作词，伍乐城作曲，JC（陈咏桐）演唱的一首歌曲，发行于2016年06月14日。', '中国大陆', '2018', '6', '9.6', '0', '0', '0', '0001', '用户1', '2018-07-25 22:30:23', '/music/loadImg?poster=detail&musicId=2\n', '/music/loadImg?poster=banner&musicId=2'),
(3, 'What are words', 'Chris Medina', '这首歌曲是《美国偶像》（American Idol）第十季选手Chris Medina的单曲专辑。虽然止步24强，但是这首曲子却在网络上广为流传。', '美国', '2011-12-21', '9', '9.0', '0', '0', '0', '0001', '用户1', '2018-07-25 22:30:30', '/music/loadImg?poster=detail&musicId=3', '/music/loadImg?poster=banner&musicId=3'),
(4, '彩云之南', '徐千雅', '《彩云之南》是徐千雅演唱的歌曲，由何沐阳作词作曲，歌曲MV由潘安子执导，2005年徐千雅正式演唱，收录于徐千雅2007年7月13日发行的专辑《彩云之南》中。', '中国大陆', '2007年7月13日', '9', '8.9', '0', '0', '0', '0001', '用户1', '2018-07-25 22:30:38', '/music/loadImg?poster=detail&musicId=4', '/music/loadImg?poster=banner&musicId=4'),
(5, '彩虹', '周杰伦', '《彩虹》是周杰伦演唱的一首歌曲，由周杰伦作曲、作词，收录在他2007年发行的专辑《我很忙》中，这首歌曲也是电影《命运呼叫转移》的主题曲', '中国台湾', '2007年', '4', '8.5', '0', '0', '0', '0001', '用户1', '2018-07-25 22:30:45', '/music/loadImg?poster=detail&musicId=5', '/music/loadImg?poster=banner&musicId=5'),
(6, '醉赤壁', '林俊杰', '《醉赤壁》是林俊杰演唱的歌曲，由方文山作词，林俊杰作曲，收录在林俊杰2008年10月18日发行的专辑《JJ陆》中。 [1] \n这首歌曲是网络游戏《赤壁online game》的主题曲。', '新加坡', '2008年10月18日', '1', '8.5', '0', '0', '0', '0001', '用户1', '2018-07-25 22:30:51', '/music/loadImg?poster=detail&musicId=6', '/music/loadImg?poster=banner&musicId=6'),
(7, '一剪梅', '费玉清', '一剪梅最早收录于费玉清1983年4月推出的《长江水·此情永不留》专辑 [1-2]  ，1984年成为同名电视剧片头曲， [3]  该歌曲后又成为2009年霍建华、吕一主演电视剧《新一剪梅》的片头曲。该歌曲后又成为2015年沈腾、马丽主演电视剧《夏洛特烦恼》的宣传曲。', '中国台湾', '1983年', '2', '9.6', '0', '0', '0', '0001', '用户1', '2018-07-25 22:30:56', '/music/loadImg?poster=detail&musicId=7', '/music/loadImg?poster=banner&musicId=7'),
(8, '一生所爱', '卢冠廷', '《一生所爱》是由唐书琛作词、卢冠廷作曲并演唱的歌曲，作于周星驰经典电影《大话西游之大圣娶亲》片尾曲，歌曲描述了一个男孩成长为一个男人的过程，表达了既无奈而又哀伤的一段刻骨相思之情。', '中国大陆', '1995年5月1日', '2', '9.6', '0', '0', '0', '0001', '用户1', '2018-07-25 22:31:02', '/music/loadImg?poster=detail&musicId=8', '/music/loadImg?poster=banner&musicId=8'),
(9, '凉凉', '三生三世十里桃花', '《凉凉》是张碧晨和杨宗纬演唱的歌曲，由刘畅作词，谭旋作曲 [1]  ，收录于2017年2月18日发行的专辑《三生三世十里桃花 电视剧原声带》中，是电视剧《三生三世十里桃花》的片尾曲', '中国大陆', '2017年2月18日', '1', '8.2', '0', '0', '0', '0001', '用户1', '2018-07-25 22:31:09', '/music/loadImg?poster=detail&musicId=9', '/music/loadImg?poster=banner&musicId=9'),
(10, '不将就', '李荣浩', '《不将就》是由黄伟文填词，李荣浩谱曲并演唱的一首歌曲，是电影《何以笙箫默》的片尾曲，于2015年4月28日数位发行，后收录于李荣浩2016年1月22日发行的专辑《有理想》中。', '中国大陆', '2016年1月22日', '4', '8.2', '0', '0', '0', '0001', '用户1', '2018-07-25 22:31:16', '/music/loadImg?poster=detail&musicId=10', '/music/loadImg?poster=banner&musicId=10'),
(11, '爱要怎么说出口', '赵传', '《爱要怎么说出口》是李宗盛填词、作曲，徐德昌、钟兴民编曲，赵传演唱的一首歌曲，收录于赵传1993年发行的专辑《约定》中。《我是歌手第四季》现场版由刘迦宁、周以力编曲。', '中国大陆', '1993年11月1日', '2', '8.2', '0', '0', '0', '0001', '用户1', '2018-07-25 22:31:20', '/music/loadImg?poster=detail&musicId=11', '/music/loadImg?poster=banner&musicId=11'),
(12, '追光者', '岑宁儿', '《追光者》是岑宁儿演唱的歌曲，由唐恬作词，马敬作曲，是电视剧《夏至未至》的插曲 [1]  ，收录于同年6月19日听见时代传媒发行的原声专辑《夏至未至·听见青春》中', '中国大陆', '2017年6月16日', '1', '8.6', '0', '0', '0', '0001', '用户1', '2018-07-25 22:31:24', '/music/loadImg?poster=detail&musicId=12', '/music/loadImg?poster=banner&musicId=12'),
(13, '虫儿飞', '儿童合唱团', '《虫儿飞》是1998年电影《风云雄霸天下》插曲，由陈光荣作曲、林夕作词的插曲，是《一对对》的国语版本。由香港歌手郑伊健演唱。因歌曲悠扬的旋律又类似于童谣的风格和配上浪漫的歌词广受大众喜欢，后出现很多翻唱版本，至于歌词，还不是很一致。', '中国大陆', '1998年', '8', '9.2', '0', '0', '0', '0001', '用户1', '2018-07-25 22:31:30', '/music/loadImg?poster=detail&musicId=13', '/music/loadImg?poster=banner&musicId=13'),
(14, '我好想你', '苏打绿', '《我好想你》是由吴青峰作词、作曲，苏打绿演唱的歌曲，收录于苏打绿2013年9月18日发行的专辑《秋：故事》中。该曲被选为电影《小时代》、《小时代2：青木时代》的主题曲', '中国大陆', '2013年6月17日', '4', '8.2', '0', '0', '0', '0001', '用户1', '2018-07-25 22:31:35', '/music/loadImg?poster=detail&musicId=14', '/music/loadImg?poster=banner&musicId=14'),
(15, '红颜旧', '刘涛', '《红颜旧》是由赵佳霖作曲、袁亮作词、刘涛演唱的歌曲，也是电视剧《琅琊榜》主题曲。于2015年10月26日在《琅琊榜 电视剧原声带》专辑中发行。', '中国大陆', '2015年6月29日', '6', '8.5', '0', '0', '0', '0001', '用户1', '2018-07-25 22:31:39', '/music/loadImg?poster=detail&musicId=15', '/music/loadImg?poster=banner&musicId=15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`music_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `musics`
--
ALTER TABLE `musics`
  MODIFY `music_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
