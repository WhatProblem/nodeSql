-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-08-13 14:22:06
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
  `film_history` varchar(10) NOT NULL DEFAULT '0',
  `film_detail_poster` varchar(200) DEFAULT '/film/loadImg?poster=detail&filmId=1',
  `film_banner_poster` varchar(200) DEFAULT '/film/loadImg?poster=banner&filmId=1',
  `film_lock` varchar(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `films`
--

INSERT INTO `films` (`film_id`, `film_type`, `film_score`, `film_desc`, `film_area`, `film_favorite`, `film_name`, `film_director`, `film_major`, `film_time`, `user_id`, `user_name`, `create_date`, `film_history`, `film_detail_poster`, `film_banner_poster`, `film_lock`) VALUES
(1, '6', '10.0', '《九品芝麻官之白面包青天》是一部由王晶执导，徐锦江，张敏，吴孟达，周星驰于1994年联合主演的喜剧电影。', '中国大陆/中国香港', '1', '《九品芝麻官之白面包青天》', '王晶', '周星驰，张敏，吴孟达，钟丽缇，徐锦江，蔡少芬，吴启华，苑琼丹', '1994年', '0001', '用户1', '2018-06-15 21:58:16', '0', '/film/loadImg?poster=detail&filmId=1', '/film/loadImg?poster=banner&filmId=1', '0'),
(2, '6', '10.0', '影片讲述了江南才子唐伯虎对华太师府上的丫鬟秋香一见钟情，在船夫的帮助下他施展计谋混进了华府。经过一番曲折，唐伯虎终于与秋香拜堂成婚。', '中国大陆/中国香港', '1', '唐伯虎点秋香', '周星驰，李力持', '周星驰，巩俐，陈百祥，朱咪咪，郑佩佩，吴镇宇，黄一山', '1993年07月', '0001', '用户1', '2018-08-11 10:16:41', '0', '/film/loadImg?poster=detail&filmId=2', '/film/loadImg?poster=banner&filmId=2', '0'),
(3, '5', '10.0', '《大话西游》是由周星驰彩星电影公司和西安电影制片厂联合摄制的爱情悲喜剧电影，由刘镇伟执导，周星驰、朱茵、吴孟达、莫文蔚等主演。', '中国香港', '1', '大话西游', '刘镇伟', '周星驰，吴孟达，朱茵，莫文蔚，蓝洁瑛，罗家英，刘镇伟，蔡少芬，江约诚，陆树铭，吴珏瑾', '1995年1月', '0001', '用户1', '2018-08-11 12:10:27', '0', '/film/loadImg?poster=detail&filmId=3', '/film/loadImg?poster=banner&filmId=3', '0'),
(4, '4', '10.0', '影片讲述了一个街头混混变成一代武术家，一个本性善良的黑帮流氓改邪归正的故事', '中国内地', '1', '功夫', '周星驰', '周星驰，黄圣依，陈国坤，元华，元秋，梁小龙', '2004年12月', '0001', '用户1', '2018-08-12 17:20:55', '0', '/film/loadImg?poster=detail&filmId=4', '/film/loadImg?poster=banner&filmId=4', '0'),
(5, '6', '10.0', '《逃学威龙》是1991年7月18号上映的一部喜剧电影，本片由陈嘉上执导，周星驰、吴孟达、张敏主演，以4382万的票房成绩打破香港电影票房纪录，成为年度票房冠军。', '中国香港', '1', '逃学威龙', '陈嘉上', '周星驰，吴孟达，张敏', '1991年7月', '0001', '用户1', '2018-06-24 09:19:56', '0', '/film/loadImg?poster=detail&filmId=5', '/film/loadImg?poster=banner&filmId=5', '0'),
(6, '6', '10.0', '《赌侠》是1990年上映的一部香港影片，本片由香港导演王晶执导，周星驰、刘德华领衔主演，张敏、陈法蓉、吴孟达等联袂主演的香港喜剧电影', '中国香港', '1', '赌侠', '王晶', '周星驰，刘德华，吴孟达，张敏，陈法蓉，向华强，程东，单立文', '1990年12月', '0001', '用户1', '2018-06-24 09:19:48', '0', '/film/loadImg?poster=detail&filmId=6', '/film/loadImg?poster=banner&filmId=6', '0'),
(8, '6', '9.6', '《大内密探零零发》是一部周星驰自编自导自演拍摄于1996年的古装武侠外星科幻搞笑电影，刘嘉玲，李若彤、罗家英联袂主演。影片讲述号称保龙高手的零零发，其实是一个毫无武功的发明迷，因未完成皇帝交办的捉拿江湖四大怪杰的任务，被皇上开除出宫。', '中国香港', '1', '大内密探零零发', '周星驰', '周星驰，刘嘉玲，李若彤，罗家英，张达明，李力持，江欣燕，苑琼丹', '1996年2月', '0001', '用户1', '2018-06-24 09:19:44', '0', '/film/loadImg?poster=detail&filmId=8', '/film/loadImg?poster=banner&filmId=8', '0'),
(10, '6', '8.6', '《破坏之王》是一部由周星驰执导，周星驰，钟丽缇，吴孟达等主演的香港喜剧电影，于1994年上映。该片讲述了快餐小子何金银为追求女神阿丽，欲修习武功，却不慎选择了江湖骗子鬼王达为师，一无所得，最终他在误打误撞中掌握“无敌风火轮”，并凭此征服阿丽，与之相爱的故事。', '中国香港', '1', '破坏之王', '周星驰', '周星驰，钟丽缇，吴孟达，林国斌，黄一飞，古巨基，黄一山，张学友，林雪，郑祖', '1994年2月', '0001', '用户1', '2018-06-24 09:19:37', '0', '/film/loadImg?poster=detail&filmId=10', '/film/loadImg?poster=banner&filmId=10', '0'),
(11, '6', '8.2', '影片主要讲述清朝时期官官相护，状师宋世杰为有冤情的寡妇杨秀珍翻案的故事，于1992年7月2日在香港上映', '中国香港', '1', '审死官', '杜琪峰', '周星驰，梅艳芳，吴家丽，吴孟达，秦沛，黄一飞', '1992年7月', '0001', '用户1', '2018-06-24 09:19:30', '0', '/film/loadImg?poster=detail&filmId=11', '/film/loadImg?poster=banner&filmId=11', '0'),
(12, '6', '9.6', '《豪门夜宴》是1991年由众多香港当红影星为帮助大陆水灾筹备善款而拍摄一部喜剧电影，其中客串的明星多达上百位。其于1991年上映，曾志伟、郑裕玲、洪金宝、吴耀汉等主演，讲述了曾小智努力获得巨额开发计划的故事。', '中国香港', '1', '豪门夜宴', '徐克', '曾志伟，郑裕玲，吴耀汉，洪金宝，林子祥，张学友，梁家辉，梁朝伟，许冠文，刘德华，周星驰，刘嘉玲，张曼玉，王祖贤', '1991', '0001', '用户1', '2018-06-24 09:19:23', '0', '/film/loadImg?poster=detail&filmId=12', '/film/loadImg?poster=banner&filmId=12', '0'),
(13, '6', '8.3', '影片对美国谍战影片007系列进行恶搞创作，讲述了后备国家特工凌凌漆赶赴香港，进行从黑帮头目金枪人的手里夺回暴龙头骨的任务，最终用行动感化了原本与之对抗的金枪人手下女特务李香琴，成功完成任务的故事。', '中国香港', '1', '国产凌凌漆', '周星驰、李力持', '周星驰，袁咏仪，罗家英，陈宝莲，黄锦江，郑祖', '1994年9月', '0001', '用户1', '2018-06-24 09:19:19', '0', '/film/loadImg?poster=detail&filmId=13', '/film/loadImg?poster=banner&filmId=13', '0');

-- --------------------------------------------------------

--
-- 表的结构 `games`
--

CREATE TABLE `games` (
  `game_id` int(11) NOT NULL,
  `game_role` varchar(100) NOT NULL,
  `game_power` int(11) NOT NULL,
  `game_total` int(11) NOT NULL,
  `game_fav` int(11) NOT NULL DEFAULT '3',
  `user_id` varchar(100) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `game_desc` varchar(200) NOT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `game_favorite` int(11) DEFAULT '0',
  `game_detail_poster` varchar(100) DEFAULT '/game/loadImg?poster=detail&gameId=1',
  `game_banner_poster` varchar(100) DEFAULT '/game/loadImg?poster=banner&gameId=1',
  `game_avatar_poster` varchar(100) DEFAULT '/game/loadImg?poster=avatar&gameId=',
  `game_lock` int(10) DEFAULT '0',
  `game_hero_score` varchar(50) NOT NULL DEFAULT '5',
  `game_hero_degree` varchar(50) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `games`
--

INSERT INTO `games` (`game_id`, `game_role`, `game_power`, `game_total`, `game_fav`, `user_id`, `user_name`, `game_desc`, `create_date`, `game_favorite`, `game_detail_poster`, `game_banner_poster`, `game_avatar_poster`, `game_lock`, `game_hero_score`, `game_hero_degree`) VALUES
(2, '锤石', 8600, 321, 1, '0001', '用户1', '锤石是一位扭曲的收割者，他用他贪婪的锁链来奴役生者的灵魂。如若被他骇人外表所震慑，片刻的迟疑便会让你无法逃脱。他会将他们的灵魂从尸体中撕扯出来，并装进他苍绿色的灯笼之中。', '2018-06-10 09:30:10', 0, '/game/loadImg?poster=detail&gameId=2', '/game/loadImg?poster=banner&gameId=2', '/game/loadImg?poster=avatar&gameId=2', 0, '5', '1'),
(3, '拳女', 8600, 289, 2, '0001', '用户1', '对于蔚来说，所有问题都只是一道墙壁，一道可以用她的巨型海克斯科技拳套一拳打穿的墙壁而已。尽管她的成长过程总是伴随着违法乱纪，但现在，蔚将她的犯罪本领用来为皮尔特沃夫警方服务。', '2018-06-10 09:30:43', 0, '/game/loadImg?poster=detail&gameId=3', '/game/loadImg?poster=banner&gameId=3', '/game/loadImg?poster=avatar&gameId=3', 0, '5', '1'),
(4, '娜美', 7600, 276, 3, '0001', '用户1', '娜美引导着海洋的原始能量，来统御海洋神秘的恢复特性，并号令潮汐本身的狂野能量。尽管被大部分人质疑，娜美仍然具有承担起一个没有人愿意承担的危险使命的勇气和决心。', '2018-06-10 09:31:11', 0, '/game/loadImg?poster=detail&gameId=4', '/game/loadImg?poster=banner&gameId=4', '/game/loadImg?poster=avatar&gameId=4', 0, '5', '1'),
(5, '劫', 10500, 389, 1, '0001', '用户1', '200年来，劫是第一位解除上古封印，获取禁忌之力的忍者。他叛离了宗族与师门，抛弃了束缚自己的门派戒律与均衡之道。劫现在信奉黑暗知识，杀戮拒绝皈依的顽固之人。', '2018-06-10 09:31:43', 0, '/game/loadImg?poster=detail&gameId=5', '/game/loadImg?poster=banner&gameId=5', '/game/loadImg?poster=avatar&gameId=5', 0, '5', '1'),
(6, '蜘蛛', 9500, 324, 2, '0001', '用户1', '伊莉丝外表高雅却内心恶毒，她天生邪魅，引诱无数纯洁或贪欲的灵魂陷入她的欺诈之网。在罪行发生之前，没有受害者能活着发现伊莉丝神秘伪装后面的黑暗秘密。在隐匿市间的黑暗礼堂，伊莉丝向追随者灌输一位神秘蜘蛛之神的信仰。', '2018-06-10 09:32:10', 0, '/game/loadImg?poster=detail&gameId=6', '/game/loadImg?poster=banner&gameId=6', '/game/loadImg?poster=avatar&gameId=6', 0, '5', '1'),
(7, '螳螂', 10500, 324, 1, '0001', '用户1', '基克斯——一个邪恶的虚空猎食者，他入侵到瓦罗兰大陆，寻找着那些可以让他感受到狩猎乐趣的生物。随着他不停的残杀猎物，吸收他们的力量，通过这种方式他向着更强大的力量不断的进化。卡基克斯最渴望征服并毁灭的猎物便是雷恩加尔，一个他认为实力和他相当的野兽。', '2018-06-10 09:33:35', 0, '/game/loadImg?poster=detail&gameId=7', '/game/loadImg?poster=banner&gameId=7', '/game/loadImg?poster=avatar&gameId=7', 0, '5', '1'),
(8, '辛德拉', 7600, 268, 3, '0001', '用户1', '辛德拉生来就具有无边的魔法潜能，除了爱好以自己的意志来运用这难以置信的能量外，就再无所好。随着每一天的过去，她的魔力天赋也变得更加有效且更具毁灭性。辛德拉拒绝任何平衡或克制的观念，只想保持她的能量的控制权，即使它意味着那些想要制止她的当局会废掉她。', '2018-06-10 09:34:01', 0, '/game/loadImg?poster=detail&gameId=8', '/game/loadImg?poster=banner&gameId=8', '/game/loadImg?poster=avatar&gameId=8', 0, '5', '1'),
(9, '狮子狗', 11000, 401, 1, '0001', '用户1', '在藏品猎人雷恩加尔的兽穴里，每一面墙上都陈列着来自瓦洛兰里最为致命的生物们的头颅、巨角、利爪与尖牙。尽管他的收藏非常广泛，但他仍然没有满足，并且不知疲倦地寻找着更加强大的猎物。他的每次猎杀都颇费时间，包括研究他的猎物，学习，以及为了与那个他绝对无法打败的怪兽的下次相遇做准备。', '2018-06-10 09:34:40', 0, '/game/loadImg?poster=detail&gameId=9', '/game/loadImg?poster=banner&gameId=9', '/game/loadImg?poster=avatar&gameId=9', 0, '5', '1'),
(10, '皎月', 10500, 396, 1, '0001', '用户1', '黛安娜——月之力的一个不屈化身，开展了一次针对崇拜太阳的烈阳族的黑暗远征。尽管她曾经试图寻求她的民族的认同，可是多年的徒劳无功将她消磨成了一个郁郁寡欢、满腔怨气的战士。现在，她给她的仇敌们下达了一个可怕的最后通牒：要么敬畏月之光华，要么死在她的新月之刃下。', '2018-06-10 09:35:05', 0, '/game/loadImg?poster=detail&gameId=10', '/game/loadImg?poster=banner&gameId=10', '/game/loadImg?poster=avatar&gameId=10', 0, '5', '1'),
(11, '婕拉', 7500, 256, 3, '0001', '用户1', '婕拉是一颗上古植物，它非常渴望的可以掌控自己的命运，在婕拉濒死的时候，她将她的意识转移到了一名人类的身体上，并获得了第二次的生命。几世纪以来，她统治了整个瘟疫之地，并用荆棘与藤蔓抹杀任何试图踏足她的领地的野兽。几年以后，瘟疫之地的野兽几乎处于一个濒临灭绝的处境。在瘟疫之地，食物的来源越来越少，zyra只能无助的看着她的随从慢慢的死亡。', '2018-06-10 09:36:55', 0, '/game/loadImg?poster=detail&gameId=11', '/game/loadImg?poster=banner&gameId=11', '/game/loadImg?poster=avatar&gameId=11', 0, '5', '1'),
(12, '杰斯', 7000, 256, 3, '0001', '用户1', '武装着睿智与魅力，以及标志性的可变形铁锤，杰斯毕生致力于守护他的祖国，皮尔特沃夫。靠着发明家的身份而闻达于世的他，用充满磁性的人格以及创意新颖的作品照亮了城邦人民的生活。不过，他的诸多技术奇迹也吸引了皮尔特沃夫的敌人们的注意力。维克托，这个用机械强化身体的祖安科学家，对杰斯的实验室发动了一次致命的袭击。', '2018-06-10 09:37:21', 0, '/game/loadImg?poster=detail&gameId=12', '/game/loadImg?poster=banner&gameId=12', '/game/loadImg?poster=avatar&gameId=12', 0, '5', '1'),
(13, '德莱文', 11000, 401, 0, '0001', '用户1', '不同于他的兄长德莱厄斯，战场上的胜利对德莱文来说是绝对不够的。他热切渴望着人们的承认，喝彩，以及荣耀。他先是在诺克萨斯军队里寻求成名的机会，可他的戏剧天资却被严重埋没。带着能与世界分享“德莱文”这个大名的渴望，他将注意力转移到了监狱体系。', '2018-06-10 09:37:59', 0, '/game/loadImg?poster=detail&gameId=13', '/game/loadImg?poster=banner&gameId=13', '/game/loadImg?poster=avatar&gameId=13', 0, '5', '1'),
(14, '诺克', 13500, 508, 0, '0001', '用户1', '提到诺克萨斯力量的象征，没有人能比德莱厄斯这名城邦中最让人畏惧和久经沙场的战士更加适合了。自幼失去双亲的德莱厄斯，为了让他自己和弟弟活下去，不得不进行战斗。到他加入军队的时候，他已经练就出了如同身经百战的老练士兵一般的力气和纪律性。', '2018-06-10 09:38:27', 0, '/game/loadImg?poster=detail&gameId=14', '/game/loadImg?poster=banner&gameId=14', '/game/loadImg?poster=avatar&gameId=14', 0, '5', '1'),
(15, '维鲁斯', 10500, 403, 1, '0001', '用户1', '由于他举世无双的弓术和无可置疑的荣誉感，韦鲁斯被一间神圣的艾欧尼亚寺院选作守望者。这个寺院是为了镇压一个远古的腐败深渊而建。这个深渊是那么地令人不安，以至于艾欧尼亚的长老们害怕它将整个岛屿都笼罩在黑暗之中。韦鲁斯对他的职位相当自豪，因为只有最杰出的艾欧尼亚战士才有被这个角色选取的资格。', '2018-06-10 09:38:59', 0, '/game/loadImg?poster=detail&gameId=15', '/game/loadImg?poster=banner&gameId=15', '/game/loadImg?poster=avatar&gameId=15', 0, '5', '1'),
(16, '人马', 9600, 302, 2, '0001', '用户1', '自赫卡里姆第一次到瓦洛兰西北部的海滨观光开始，这位高大魁梧、披坚执锐的幽魂就已将恐惧深深地植入到了那些见过他的人们的心中。没有人看到过像他这么既巨大又轻盈的东西，并且他突然来访的神秘感深深地让人感到不安。', '2018-06-10 09:39:24', 0, '/game/loadImg?poster=detail&gameId=16', '/game/loadImg?poster=banner&gameId=16', '/game/loadImg?poster=avatar&gameId=16', 0, '5', '1'),
(17, '璐璐', 9600, 302, 2, '0001', '用户1', '璐璐率性而为的程度，也许联盟中没有哪个英雄能够比得上。在班德尔城中度过的青春岁月中，她总是把大部分时间都花在林间漫步或者做白日梦上。这并不表示她不合群；班德尔城日复一日的喧嚣，根本比不上她想象中的那个多姿多彩的世界。', '2018-06-10 09:39:54', 0, '/game/loadImg?poster=detail&gameId=17', '/game/loadImg?poster=banner&gameId=17', '/game/loadImg?poster=avatar&gameId=17', 0, '5', '1'),
(18, '剑姬', 12500, 489, 0, '0001', '用户1', '作为劳伦特家族最年轻的后辈，菲奥娜总觉得自己命中注定要成为伟人。劳伦特家族已经主宰了德玛西亚上流社会的决斗文化长达数个世纪之久，并且菲奥娜的父亲被看成是德邦有史以来最优秀的剑士之一。受到他光荣事迹的鼓舞，菲奥娜在刚刚能挥舞宝剑的时候就开始了训练，并且很快展现出比同龄人更加优秀的天赋。', '2018-06-10 09:40:29', 0, '/game/loadImg?poster=detail&gameId=18', '/game/loadImg?poster=banner&gameId=18', '/game/loadImg?poster=avatar&gameId=18', 0, '5', '1'),
(19, '泰坦', 9800, 389, 1, '0001', '用户1', '从前，诺提勒斯曾是一名受战争学院委任，去探索守护者之海未知流域的海员。这次远征曾让他深入未知的水域。当时，他和其他海员找到了一大片正在泄露的黑色液体，并且没人知道是什么。尽管他们的工作就是调查他们所找到的新事物，但是船上除了诺提勒斯之外，没人敢于面对这片黑水。在他穿上笨重的潜水服，翻越护栏之后，仅仅过了一会儿，就有一些潜伏在黑水中的东西将他给牢牢抓住。', '2018-06-10 09:40:57', 0, '/game/loadImg?poster=detail&gameId=19', '/game/loadImg?poster=banner&gameId=19', '/game/loadImg?poster=avatar&gameId=19', 0, '5', '1'),
(20, '吉格斯', 9000, 321, 2, '0001', '用户1', '吉格斯生来就有着捣鼓机械的天赋，但他自由散漫、过度亢奋的天性在约德尔科学家当中实属罕见。怀着成为黑默丁格那样的伟大发明家的雄心壮志，他很快凭借着狂躁的激情描绘出了一个个野心勃勃的工程蓝图，并且靠着他的那些充满争议的失败和前无古人的发现来为自己加油鼓劲。吉格斯的豪言壮语传到了皮尔特沃夫的那间闻名遐迩的约德尔学院。学院里备受尊敬的教授们共同邀请吉格斯前来展示他的技艺。', '2018-06-10 09:41:32', 0, '/game/loadImg?poster=detail&gameId=20', '/game/loadImg?poster=banner&gameId=20', '/game/loadImg?poster=avatar&gameId=20', 0, '5', '1'),
(21, '猪妹', 10500, 432, 0, '0001', '用户1', '前言：艾希起初来到战争学院为召唤师服务，只是想借此赢得足够的影响力和支持，并最终给她的王国带来和平。这个王国从阿瓦罗萨和三姐妹时代起就内战不断。在获得无数场胜利后，艾希开始发挥她在联盟积攒的影响力，最终英雄联盟认可了弗雷卓德的主权，艾希和泰达米尔分别加冕为王后和国王。', '2018-06-10 09:42:21', 0, '/game/loadImg?poster=detail&gameId=21', '/game/loadImg?poster=banner&gameId=21', '/game/loadImg?poster=avatar&gameId=21', 0, '5', '1'),
(22, '维克托', 10000, 389, 1, '0001', '用户1', '在年轻时，维克托就发现了他对科学与发明的激情，特别是机械自动化这一领域。他参加了祖安享有盛名的科技魔法大学，并带领了一支队伍，研发出了布里兹这一科学史上的突破，并期待着这项发明能够让他登上职业生涯的巅峰。不幸的是，他的傲人成果被斯坦里克教授给篡夺了。斯坦里克还窃取了研发布里兹知觉系统的声誉，并且后来还用维克托的研究成果来复活厄加特。', '2018-06-10 09:42:49', 0, '/game/loadImg?poster=detail&gameId=22', '/game/loadImg?poster=banner&gameId=22', '/game/loadImg?poster=avatar&gameId=22', 0, '5', '1'),
(23, '阿狸', 10500, 425, 0, '0001', '用户1', '跟其他游荡在艾欧尼亚南部丛林中的狐狸不同，阿狸总觉得她跟魔法世界有一种说不清道不明的联系，一种不完整的联系。在内心身处，她觉得她难以适应这具生而拥有的肉体，梦想有一天可以变成人类。这个梦想看起来遥不可及，直到有一天人类战场上发生的事情改变了她。那是一副惨烈的景象，战场上横七竖八地躺着或重伤或死去的士兵。', '2018-06-10 09:43:15', 0, '/game/loadImg?poster=detail&gameId=23', '/game/loadImg?poster=banner&gameId=23', '/game/loadImg?poster=avatar&gameId=23', 0, '5', '1'),
(24, '狗熊', 13500, 425, 0, '0001', '用户1', '雷鸣怒吼—沃利贝尔 尽管弗雷卓德的北方领域是瓦罗然大陆内几个最寒冷严酷的地区，熊族在这个荒芜、寒冷、暴风不止的土地已经生存了很多世纪。沃利贝尔，作为熊族刚猛可敬的战士，贡献了他的一生来保护他的人民，并忠实于部落首领——他的哥哥。但他的哥哥在一次寒漠打猎中不幸丧生，部落希望沃利贝尔来当继承人。', '2018-06-10 09:43:39', 0, '/game/loadImg?poster=detail&gameId=24', '/game/loadImg?poster=banner&gameId=24', '/game/loadImg?poster=avatar&gameId=24', 0, '5', '1'),
(25, '小鱼人', 11500, 423, 0, '0001', '用户1', '几个世纪以前，一个古老的水栖种族在大洋中海地山的山脚下建立了一个隐秘的城市。他们有自己的敌人，但这座城市保障了他们的安全，它是一个不可穿越的要塞，也因此，他们渐渐自满。沸嘶（Fizz），与众不同，他充满好奇心，自然不甘守在此处一生。他对危险的诱惑没有抵抗力，所以他的爱好就是溜出城去找点麻烦。', '2018-06-10 09:44:10', 0, '/game/loadImg?poster=detail&gameId=25', '/game/loadImg?poster=banner&gameId=25', '/game/loadImg?poster=avatar&gameId=25', 0, '5', '1'),
(26, '龙女', 11500, 423, 0, '0001', '用户1', '半龙 —— 夏威娜 在卢恩特拉（符文大陆）有为数不多的一些龙类，他们能熟练的操纵流淌在他们神奇身躯内强大的魔力，并由此不断发展进化成了难以捉摸的天龙一族。这些高深莫测的强大生物们大多数时候都选择藏身于人世之外。不过，他们当中也有一些对人类文明产生了兴趣的，化身为人的样子，生活在人类之中。', '2018-06-10 09:44:55', 0, '/game/loadImg?poster=detail&gameId=26', '/game/loadImg?poster=banner&gameId=26', '/game/loadImg?poster=avatar&gameId=26', 0, '5', '1'),
(27, '男枪', 12500, 465, 0, '0001', '用户1', '法外狂徒 —— 格雷福斯 默肯•格雷夫出生在比尔吉沃特酒馆的后院，和一瓶混了酒精的牛奶一起被遗弃在那里。他依靠一切能在书上找到的诡术在一个海盗主管的贫民窟活过了童年。为了开始一段新的生活，他偷偷登上了开往大陆的第一艘船。然而，残酷的现实迫使他在众多城市的地下社会勉强度日，四处逃跑。', '2018-06-10 09:45:21', 0, '/game/loadImg?poster=detail&gameId=27', '/game/loadImg?poster=banner&gameId=27', '/game/loadImg?poster=avatar&gameId=27', 0, '5', '1'),
(28, '泽拉斯', 9800, 301, 2, '0001', '用户1', '虚化术士 —— 泽拉斯 在舒瑞玛沙漠存在文明的时期，有一名叫泽拉斯的术士带着满腔的热情不断练习魔法。他相信只要有足够的魔法能量，他就能进入符文大陆的最深处，探究历史的秘密与未知的宇宙。尽管这种魔法已经超过了凡人躯体所能容纳的极限，泽拉斯还是义无反顾地沉溺于探寻达到无尽力量的方法。', '2018-06-10 09:45:51', 0, '/game/loadImg?poster=detail&gameId=28', '/game/loadImg?poster=banner&gameId=28', '/game/loadImg?poster=avatar&gameId=28', 0, '5', '1'),
(29, '瑞文', 14500, 605, 0, '0001', '用户1', '在诺克萨斯，只要你有实力，人人都有机会上位。这与种族、性别和社会地位无关。瑞雯对此深信不疑，努力奋斗期望出人头地。作为士兵时她就表现出不俗的潜力，虽然身材矮小却锻炼自己精通长剑的运用。', '2018-06-10 09:46:29', 0, '/game/loadImg?poster=detail&gameId=29', '/game/loadImg?poster=banner&gameId=29', '/game/loadImg?poster=avatar&gameId=29', 0, '5', '1'),
(30, '泰隆', 10500, 368, 0, '0001', '用户1', '诺克萨斯地底通道的黑暗，尖刀上令人安然的光芒，这就是泰刃最早的记忆。他不知何为家庭，何为温暖，何为善良。听着他所偷金币的叮当声，靠着一堵可以让他倚靠的墙，这就是他所期望的归属。凭借他的机智与娴熟的偷窃技巧，泰刃在弱肉强食的诺克萨斯地下世界艰难地维系着生活。', '2018-06-10 09:47:14', 0, '/game/loadImg?poster=detail&gameId=30', '/game/loadImg?poster=banner&gameId=30', '/game/loadImg?poster=avatar&gameId=30', 0, '5', '1'),
(31, '蝎子', 7600, 305, 2, '0001', '用户1', '几个世纪以前，世界上存在着一个凶残狡猾的种族，他们叫做布雷克，属于天生便不寻常的生物，掌握着蕴藏在水晶之中的能量——大地最原始的能量。', '2018-06-10 09:47:43', 0, '/game/loadImg?poster=detail&gameId=31', '/game/loadImg?poster=banner&gameId=31', '/game/loadImg?poster=avatar&gameId=31', 0, '5', '1'),
(32, '猴子', 11500, 389, 0, '0001', '用户1', '在瘟疫丛林中，美猴王·空（悟空本来的名字）就是那里的王。他可以操纵一种独特的、自然形态的魔法，而且还在狂热的进取心下不断进步。', '2018-06-10 09:48:13', 0, '/game/loadImg?poster=detail&gameId=32', '/game/loadImg?poster=banner&gameId=32', '/game/loadImg?poster=avatar&gameId=32', 0, '5', '1'),
(33, '日女', 11500, 389, 0, '0001', '用户1', '黎明之光 —— 莉欧娜 拉阔尔一族居住在塔贡山高耸入云的山坡上，他们只为战争而生。而塔贡山的顶峰，只为拉阔尔一族某些拥有更高追求的族民保留。他们被称为阳之子民，从战争的硝烟中退却，将生命献给崇高的太阳。据传说所言，阳之子民是由一位可以在战斗中向敌人召唤太阳神力的战士组织的。', '2018-06-10 09:48:33', 0, '/game/loadImg?poster=detail&gameId=33', '/game/loadImg?poster=banner&gameId=33', '/game/loadImg?poster=avatar&gameId=33', 0, '5', '1'),
(34, '约里克', 8000, 268, 3, '0001', '用户1', '掘墓人 —— 尤里克 于生者而言，掘墓人的工作不可或缺，而在暗影岛，掘墓人的价值更不可估量。岛上遍布幽魂，不惧生灵，只有高超的魔法技能才能超度这些亡魂。在第一次符文之战之后，尤里克莫里决定成为一名掘', '2018-06-10 09:49:04', 0, '/game/loadImg?poster=detail&gameId=34', '/game/loadImg?poster=banner&gameId=34', '/game/loadImg?poster=avatar&gameId=34', 0, '5', '1'),
(35, '发条', 8000, 236, 3, '0001', '用户1', '发条女郎 —— 奥莉安娜住在皮尔特沃夫CorinReveck有个女儿名为奥莉安娜，科林爱她胜过世上一切。虽然奥莉安娜拥有惊人的舞蹈天赋，但她却为联盟的英雄着迷。为此她开始接受成为一名联盟英雄的训练。而不幸的是奥莉安娜从未经历风雨，她的纯真无邪带来了很多不必要的危险，并最终酿成悲剧。奥莉安娜的死击垮了科林，他陷入了深深的绝望，并沉迷于技术研究之中。', '2018-06-10 09:49:25', 0, '/game/loadImg?poster=detail&gameId=35', '/game/loadImg?poster=banner&gameId=35', '/game/loadImg?poster=avatar&gameId=35', 0, '5', '1'),
(36, '维恩', 12500, 400, 0, '0001', '用户1', '世界并不是人们所想的那么文明，仍然有人追寻着黑暗魔法之路，被符文之地的黑暗力量腐蚀堕落。肖娜薇恩便明白这个道理。作为蒂玛西亚精英家族的掌上明珠，父亲试图让她相信警卫时刻警惕的双眼，年幼天真的薇恩则真心以为这个世界是完全安全的...直到某个夜晚，一个邪恶的女巫盯上了薇恩的父亲。', '2018-06-10 09:50:15', 0, '/game/loadImg?poster=detail&gameId=36', '/game/loadImg?poster=banner&gameId=36', '/game/loadImg?poster=avatar&gameId=36', 0, '5', '1'),
(37, '兰博', 10000, 396, 1, '0001', '用户1', '即便是在身材矮小的约德尔人中，兰波也只算矮个。所以他一直以来受人欺负。迫不得已，兰波变得比同辈更加好斗和机警。兰波也因此成了急性子，对招惹他的人瑕疵必报。兰波成了一个独行客，不过他并不在意。他喜欢修修补补，同零件呆在一起。常常有人看到兰波在废物站翻找零件。', '2018-06-10 09:50:42', 0, '/game/loadImg?poster=detail&gameId=37', '/game/loadImg?poster=banner&gameId=37', '/game/loadImg?poster=avatar&gameId=37', 0, '5', '1'),
(38, '火男', 11500, 396, 0, '0001', '用户1', '在遥远的洛克法Lokfar有位名为Kegan Rodhe的海贼。如先辈一样，Kegan和伙伴们远航出海，将那些倒霉蛋的财宝偷走。在某些人眼里，Kegan如同怪兽一般；而在另一些人看来，他不过是个普通人。某个晚上，Kegan和伙伴们航行经过北极海域，发现冰冻废土上闪烁着神秘的光芒。', '2018-06-10 09:51:05', 0, '/game/loadImg?poster=detail&gameId=38', '/game/loadImg?poster=banner&gameId=38', '/game/loadImg?poster=avatar&gameId=38', 0, '5', '1'),
(39, '盲僧', 11500, 396, 0, '0001', '用户1', '年轻时李森即立志于成为一名召唤者。他的意志与努力在同辈中无人能及，而他的技艺也得到了联盟高阶议员Reginald Ashram的关注。但李森在马约里斯秘术中心的学习生涯并不愉快，他不得不同其他学生一起按部就班的学习。他将闲暇时间都用于研究召唤法术的细微之处，希望能尽快毕业。', '2018-06-10 09:51:27', 0, '/game/loadImg?poster=detail&gameId=39', '/game/loadImg?poster=banner&gameId=39', '/game/loadImg?poster=avatar&gameId=39', 0, '5', '1'),
(40, '梦魇', 9600, 325, 2, '0001', '用户1', '人们一直相信梦不过是人类睡着后的虚构的无意义影像和幻觉，直到诺克顿的出现，这种说法受到了质疑。联盟出现大批召唤者受到噩梦的折磨。他们在尖叫醒来，身陷恐惧无法平静；或是根本无法入眠，随着夜幕的计时渐入疯狂；还有一些人只是简单的进入梦乡，却无法醒来。', '2018-06-10 09:51:59', 0, '/game/loadImg?poster=detail&gameId=40', '/game/loadImg?poster=banner&gameId=40', '/game/loadImg?poster=avatar&gameId=40', 0, '5', '1'),
(41, '皇子', 13500, 468, 0, '0001', '用户1', '加文四世加文无疑又是一个提玛西亚猛男。有个说Garen的名言是：“每个草丛都躲着一只盖伦。”我想，“每次冲锋的，都一定是加文。”提玛人V5！', '2018-06-10 09:55:32', 0, '/game/loadImg?poster=detail&gameId=41', '/game/loadImg?poster=banner&gameId=41', '/game/loadImg?poster=avatar&gameId=41', 0, '5', '1'),
(42, '大树', 7600, 98, 3, '0001', '用户1', '茂凯是加里奥之后的第一个坦克英雄，可以说是万众期待。他的设计也是不负众望，结合了“奥术”与大自然的力量。既然是坦克，在技能伤害上没有太多的能力，但是在控制和团队辅助上，他是非常强大的。', '2018-06-10 09:56:07', 0, '/game/loadImg?poster=detail&gameId=42', '/game/loadImg?poster=banner&gameId=42', '/game/loadImg?poster=avatar&gameId=42', 0, '5', '1'),
(43, '卡尔玛', 11500, 356, 1, '0001', '用户1', '卡尔玛从折扇中射出隐藏的刀锋，对前方锥形面积内的单位造成魔法伤害。梵咒增效：除对敌人造成伤害外，天国之刃还能治疗锥形面积内的友军，治疗效果基于友军损失的生命百分比。', '2018-06-10 09:57:04', 0, '/game/loadImg?poster=detail&gameId=43', '/game/loadImg?poster=banner&gameId=43', '/game/loadImg?poster=avatar&gameId=43', 0, '5', '1'),
(44, '大头', 7600, 69, 3, '0001', '用户1', '在班德尔城之外，鲜有人能看到约德尔人的踪影，然而黑默丁格却抵挡不了科学的诱惑。在他获得第三个博士学位的时候，他已经成为约德尔人最伟大的科学家，而他的家也几乎没有他的容身之地了。远在北方的皮特沃夫的大学院向他抛出了橄榄枝，希望他能在进步之城做出自己的成就来。', '2018-06-10 09:57:31', 0, '/game/loadImg?poster=detail&gameId=44', '/game/loadImg?poster=banner&gameId=44', '/game/loadImg?poster=avatar&gameId=44', 0, '5', '1'),
(45, '小丑', 7600, 79, 3, '0001', '用户1', '人们都说死亡并不有趣。他们措了，至少对萨科而言并非如此。萨科是瓦罗然第一个杀人小丑；他会嘲笑猎物直到其死亡。萨科很享受这种感觉。这个被称为恶魔小丑的人谜一般的存在于这个世界。知道其过去的人无一存活。', '2018-06-10 09:57:57', 0, '/game/loadImg?poster=detail&gameId=45', '/game/loadImg?poster=banner&gameId=45', '/game/loadImg?poster=avatar&gameId=45', 0, '5', '1'),
(46, '瑞兹', 11500, 403, 0, '0001', '用户1', '流浪法师-瑞兹是一位手拿法书身背卷轴，全身纹满魔法符文的魔法学者，他那出色的魔法及战斗能力，在战场上被玩家誉为“单杀王者”', '2018-06-10 09:58:29', 0, '/game/loadImg?poster=detail&gameId=46', '/game/loadImg?poster=banner&gameId=46', '/game/loadImg?poster=avatar&gameId=46', 0, '5', '1'),
(47, '卡特', 10000, 356, 1, '0001', '用户1', '在军国主义的诺克萨斯，女人的首要责任就是养育强壮的小孩，为参军的丈夫传宗接代，这是意料之中的事。但是有些女人却不把养育当作自己的天性，卡特琳娜便是其中之一。', '2018-06-10 09:58:54', 0, '/game/loadImg?poster=detail&gameId=47', '/game/loadImg?poster=banner&gameId=47', '/game/loadImg?poster=avatar&gameId=47', 0, '5', '1'),
(48, '大虫子', 10000, 356, 0, '0001', '用户1', '科’加斯每杀一人，就会回复40~82（取决于等级）点生命值和8~16（取决于等级）点魔法值。', '2018-06-10 09:59:27', 0, '/game/loadImg?poster=detail&gameId=48', '/game/loadImg?poster=banner&gameId=48', '/game/loadImg?poster=avatar&gameId=48', 0, '5', '1'),
(49, '雪人', 9800, 109, 3, '0001', '用户1', '瑞尔卓德是一块终年被冰雪覆盖的地方，到这里旅行，尤其是在冬季将会是十分危险的。这里的原住民将自己一生的精力都花飞到离这里，有一个叫做努努的小男孩就是就是这些厌恶杀戮的善良居民之一。', '2018-06-10 09:59:59', 0, '/game/loadImg?poster=detail&gameId=49', '/game/loadImg?poster=banner&gameId=49', '/game/loadImg?poster=avatar&gameId=49', 0, '5', '1'),
(50, '阿木木', 7800, 109, 3, '0001', '用户1', '阿木木的身世是一个谜，当他苏醒的时候，他的心中充满了无尽的悲伤，他不明白这种感觉从何而来，他的记忆几乎是空白的，除了自己的名字和父母那模糊身影的印象外他想不起来任何与自身有关的事。', '2018-06-10 10:00:20', 0, '/game/loadImg?poster=detail&gameId=50', '/game/loadImg?poster=banner&gameId=50', '/game/loadImg?poster=avatar&gameId=50', 0, '5', '1'),
(51, '小法', 10000, 297, 1, '0001', '用户1', '约德尔族在人们心中大多不能跟可怕挂钩。这个随和矮小的种族虽然有点狂野，但某种程度上还是容易亲近的。不过就在最近，有一个约德尔人变得非常坏，他能在他人的心中种下恐惧之种。', '2018-06-10 10:00:45', 0, '/game/loadImg?poster=detail&gameId=51', '/game/loadImg?poster=banner&gameId=51', '/game/loadImg?poster=avatar&gameId=51', 0, '5', '1'),
(52, '炼金', 8600, 156, 2, '0001', '用户1', '辛吉德是祖安备受尊敬的化学世家的后裔。即使在年轻之时，他调制药剂的天赋便远在他的同龄人之上，很快他便在化学同道之中鹤立鸡群。因此他被臭名昭着的沃里克收为徒弟也就不足为奇了。', '2018-06-10 10:01:26', 0, '/game/loadImg?poster=detail&gameId=52', '/game/loadImg?poster=banner&gameId=52', '/game/loadImg?poster=avatar&gameId=52', 0, '5', '1'),
(53, '蛮王', 12500, 465, 0, '0001', '用户1', '泰达米尔-蛮族之王（以下简称蛮王）是战场上犹如死神一般的存在，他对战斗的饥渴永不停止，甚至在他受到重伤之时，只要吼出一声满含愤怒与野性的咆哮，即使承受多么严重的伤害，也无法阻止他那砍向敌人头顶的大刀，是绝对的战场杀戮机，铁血真汉子！', '2018-06-10 10:01:49', 0, '/game/loadImg?poster=detail&gameId=53', '/game/loadImg?poster=banner&gameId=53', '/game/loadImg?poster=avatar&gameId=53', 0, '5', '1'),
(54, '蒙多', 12500, 396, 0, '0001', '用户1', '蒙多医生天生便是无情无义之人。不仅如此，他还有一种无法克制的冲动，渴望通过实验来制造痛苦。五岁的时候，他的大多数邻居家的宠物都会神秘失踪。十多岁的时候，他的父母也离奇地人间蒸发了。', '2018-06-10 10:02:10', 0, '/game/loadImg?poster=detail&gameId=54', '/game/loadImg?poster=banner&gameId=54', '/game/loadImg?poster=avatar&gameId=54', 0, '5', '1'),
(55, '船长', 10500, 396, 0, '0001', '用户1', '普朗克的父亲是令人闻风丧胆的海盗船长“魅影文森特”，也是整个蓝焰岛上最富有、最恐怖的海盗之一。也许有人会认为普朗克会如温室的花朵一般被宠坏，但事实却恰恰相反。', '2018-06-10 10:02:30', 0, '/game/loadImg?poster=detail&gameId=55', '/game/loadImg?poster=banner&gameId=55', '/game/loadImg?poster=avatar&gameId=55', 0, '5', '1'),
(56, '石头人', 13500, 496, 0, '0001', '用户1', '曾经有一个完全和谐的世界，在那里，一切都是这个整个世界的一部分。巨石是一切事物的本原，他们的外来居民则是一个个独立的部分。墨菲特一直在使用自己全部的潜能来斗争以证明自己是这个世界的一部分，一个高贵的寻求这个世界完美秩序的战士。有一天时空裂缝被打破，他穿越宇宙被召唤到这个世界上来。', '2018-06-10 10:02:56', 0, '/game/loadImg?poster=detail&gameId=56', '/game/loadImg?poster=banner&gameId=56', '/game/loadImg?poster=avatar&gameId=56', 0, '5', '1'),
(57, '希维尔', 11500, 396, 0, '0001', '用户1', '美丽而致命的女英雄希维尔近十年来一直是联盟召唤师的最爱。她是正义之地以外的一名雇佣兵，也是现代非常成功的雇佣兵的杰出代表。希维尔对联盟权力交易不感兴趣，她的动力来自于物质财富，她也以她的服务赚得大笔的金钱。', '2018-06-10 10:03:37', 0, '/game/loadImg?poster=detail&gameId=57', '/game/loadImg?poster=banner&gameId=57', '/game/loadImg?poster=avatar&gameId=57', 0, '5', '1'),
(58, '稻草', 9600, 214, 3, '0001', '用户1', '在Shurima沙漠的沙地边缘有一个山谷，据说谷底住着一位强大的女巫。虽然她单身一人，却并不孤独。据说她能操纵强大的魔法。她将能量转化为半死的灵魂，然后将它们束缚在精心准备的稻草人上。', '2018-06-10 10:08:15', 0, '/game/loadImg?poster=detail&gameId=58', '/game/loadImg?poster=banner&gameId=58', '/game/loadImg?poster=avatar&gameId=58', 0, '5', '1'),
(59, '天使', 12300, 401, 0, '0001', '用户1', '在远古时代，整个世界都充斥着暴乱和冲突，凯尔是战争中的英雄，正义的使者，被人们称作天使的人。然而，也有一部分人称她做杀手或者怪物。凯尔为了自己的人民不屈不挠的战斗着，让他们的敌人全部在自己跪倒在自己面前。', '2018-06-10 10:10:12', 0, '/game/loadImg?poster=detail&gameId=59', '/game/loadImg?poster=banner&gameId=59', '/game/loadImg?poster=avatar&gameId=59', 0, '5', '1'),
(60, '冰鸟', 7600, 165, 3, '0001', '用户1', '在很多传说中，凤凰是在烈火灰烬中重生的生物，但鲜为人知的是，凤凰是一种元素生物，由各自世界里永恒的精粹形成。艾尼维亚来自寒冷世界，是由纯粹的冰元素组成的生物。艾尼维亚是这块冰封荒地的守护者，也保护着居住在这个恶劣环境下的生物。她智慧非凡，永不灭亡，经历了这个世界的无数次重生。', '2018-06-10 10:10:49', 0, '/game/loadImg?poster=detail&gameId=60', '/game/loadImg?poster=banner&gameId=60', '/game/loadImg?poster=avatar&gameId=60', 0, '5', '1'),
(61, '提莫', 10500, 369, 1, '0001', '用户1', '就像约德尔人所担心的那样，提莫身上有一些不对劲。虽然他很享受于-事实上也很需要自己与生俱来的和部落里所有约德尔人的协作能力，他还是独自冒险去击垮班德尔城的敌人们。提莫自身的一些神秘特质使得被他终结的那些敌人并不会对他自己造成任何负担。', '2018-06-10 10:11:15', 0, '/game/loadImg?poster=detail&gameId=61', '/game/loadImg?poster=banner&gameId=61', '/game/loadImg?poster=avatar&gameId=61', 0, '5', '1'),
(62, '寒冰', 11500, 408, 0, '0001', '用户1', '弗瑞尔卓德美女艾希是英雄联盟召唤师长期以来的最爱之一。作为阿瓦罗萨的直系后代，艾希是传奇三姐妹之一。她们各自宣称统治着居住在瓦洛兰大陆北部冻苔原地带的散乱部落。艾希继承了祖先精通的箭术，因此也继承了阿瓦罗萨“寒冰射手”的称号。', '2018-06-10 10:11:46', 0, '/game/loadImg?poster=detail&gameId=62', '/game/loadImg?poster=banner&gameId=62', '/game/loadImg?poster=avatar&gameId=62', 0, '5', '1'),
(63, '安妮', 11500, 368, 1, '0001', '用户1', '身上流淌的血液和出色的黑暗魔法让安妮拥有惊人的秘术能量。联盟的人认为这个女孩是最受欢迎的英雄之一，连要驱逐她父母的城邦居民也不例外。', '2018-06-10 10:12:07', 0, '/game/loadImg?poster=detail&gameId=63', '/game/loadImg?poster=banner&gameId=63', '/game/loadImg?poster=avatar&gameId=63', 0, '5', '1'),
(64, '小炮', 10500, 306, 1, '0001', '用户1', '麦林炮手-崔丝塔娜是一位抗着巨大火炮的小姑娘，可爱非凡却热爱爆炸，外号暴力萝莉，很多玩家昵称她为“炮娘”。', '2018-06-10 10:12:34', 0, '/game/loadImg?poster=detail&gameId=64', '/game/loadImg?poster=banner&gameId=64', '/game/loadImg?poster=avatar&gameId=64', 0, '5', '1'),
(65, '贾克斯', 14500, 496, 0, '0001', '用户1', '除了贾克斯，很少有英雄是通过加入联盟后的行动来衡量自己。贾克斯是目前战争学院最多产的联赛战士。在加入联盟之前，贾克斯只是个平凡的雇佣士兵。贾克斯被放在了联盟裁决候选人名单的首位，理由只有联盟的前领袖——高级议员瑞吉纳德-阿什拉姆才知道。', '2018-06-10 10:13:00', 0, '/game/loadImg?poster=detail&gameId=65', '/game/loadImg?poster=banner&gameId=65', '/game/loadImg?poster=avatar&gameId=65', 0, '5', '1'),
(66, '剑圣', 12500, 436, 0, '0001', '用户1', '无极剑圣-易大师是一位拿着大剑却有着惊人攻击速度的武林高手。他于神秘的无极武馆修炼千年,在战斗中行动如风，能没有任何预兆地突然攻击两次，轻松解决战斗后你唯一能感觉到的是刀刃破空的嘶嘶风声。', '2018-06-10 10:13:39', 0, '/game/loadImg?poster=detail&gameId=66', '/game/loadImg?poster=banner&gameId=66', '/game/loadImg?poster=avatar&gameId=66', 0, '5', '1'),
(67, '库奇', 9600, 263, 3, '0001', '用户1', '库奇是一位勇士也是一位医者，掌握着神秘的大地力量。他的诸多宝石有着各种各样的用途，粉碎敌人的防守，提高盟友的战斗力。当需要的时候，库奇也能运用从父亲那里学来的知识，在战场上迅速治疗受伤的队友', '2018-06-10 10:14:07', 0, '/game/loadImg?poster=detail&gameId=67', '/game/loadImg?poster=banner&gameId=67', '/game/loadImg?poster=avatar&gameId=67', 0, '5', '1'),
(68, '牛头', 12500, 432, 0, '0001', '用户1', '作为牛头人部落里最强大的勇士，阿利斯塔一直保护着自己的部落远离瓦罗然大陆上的各种危险，直至诺克苏斯军队的到来。阿利斯塔被 达克维尔伯爵的小儿子的阴谋诱骗出了自己的村子。当他回来后发现自己的村子已经被烧毁，他的家人也惨遭毒手。满怀愤怒的阿利斯塔冲进诺克苏斯的精锐部队，将他们屠杀殆尽。', '2018-06-10 10:14:31', 0, '/game/loadImg?poster=detail&gameId=68', '/game/loadImg?poster=banner&gameId=68', '/game/loadImg?poster=avatar&gameId=68', 0, '5', '1'),
(69, '机器人', 12500, 432, 0, '0001', '用户1', '佐恩是个被科技和魔法双重扭曲的诚实。没有节制的试验毁坏了这座诚实。不过现在魔法和科技的双重作用下，这里也出现了不少奇观，比如蒸汽机器人就是其中之 一，这个名为布理缇兹克拉克的机器人是佐恩科技学院一个博士生小组的作品，然而和大多数同类事件一样，这项荣誉却被另一位教授斯坦维克·皮的利擭为己有， 虽然大部分人都知道事实的真相。', '2018-06-10 10:14:53', 0, '/game/loadImg?poster=detail&gameId=69', '/game/loadImg?poster=banner&gameId=69', '/game/loadImg?poster=avatar&gameId=69', 0, '5', '1'),
(70, '索拉卡', 11500, 432, 0, '0001', '用户1', '索卡拉是爱欧尼亚大陆第一个被称作星灵之子的高阶女祭司。尽管瓦罗然大陆上有很多研习魔法的祭祀，然而她是第一个真正接触到宇宙魔法的人。她的研究范围不仅限于大陆和天空的魔法，而是已经延伸到了宇宙和星体的秘术。诺克萨斯雇佣的炼金师沃里克的实验对索拉卡的人民造成了极其惨痛的灾难。', '2018-06-10 10:15:11', 0, '/game/loadImg?poster=detail&gameId=70', '/game/loadImg?poster=banner&gameId=70', '/game/loadImg?poster=avatar&gameId=70', 0, '5', '1'),
(71, '内瑟斯', 14500, 498, 0, '0001', '用户1', '这个被称为雷瑟斯的神秘生物从遥远的世界来到联盟，并且是庞大博学的沙漠帝国的一部分。在那里雷瑟斯备受尊敬，同时学富五车的他被任命为大图书馆的守护者。', '2018-06-10 10:15:39', 0, '/game/loadImg?poster=detail&gameId=71', '/game/loadImg?poster=banner&gameId=71', '/game/loadImg?poster=avatar&gameId=71', 0, '5', '1'),
(72, '狼人', 9600, 198, 3, '0001', '用户1', '沃里克可以算是他的故乡佐恩最为强大、最受尊敬的人之一了。在他臭名昭着的炼金师生涯里，沃里克以其非凡的技艺赢得了许多的荣誉，其中有不少是在诺克萨斯攻打欧亚尼亚之时他为诺军服务获得的暴利。', '2018-06-10 10:16:02', 0, '/game/loadImg?poster=detail&gameId=72', '/game/loadImg?poster=banner&gameId=72', '/game/loadImg?poster=avatar&gameId=72', 0, '5', '1'),
(73, '莫甘娜', 10500, 356, 0, '0001', '用户1', '世界上还存在这么一个地方，在那里远古的冲突仍然肆虐。就像所有的战争一样，很多家庭支离破碎。冲突的一方自称为天使，自称掌握着绝对的秩序和正义，而另一方则认为那些天使都是专制的暴君，自私自利，没有长远视野。', '2018-06-10 10:16:36', 0, '/game/loadImg?poster=detail&gameId=73', '/game/loadImg?poster=banner&gameId=73', '/game/loadImg?poster=avatar&gameId=73', 0, '5', '1'),
(74, '龙龟', 10200, 356, 1, '0001', '用户1', '宏伟屏障的南部陆地很久以前曾遭符文战争的破坏，而现在则由于暴乱的魔法风暴而沦为废墟，自然的统治在那儿几乎微乎其微。在这些尽数毁坏的地区，异常的动植物随处可见，但最令人好奇的却莫过于拉莫斯的事例了。', '2018-06-10 10:16:58', 0, '/game/loadImg?poster=detail&gameId=74', '/game/loadImg?poster=banner&gameId=74', '/game/loadImg?poster=avatar&gameId=74', 0, '5', '1'),
(75, '卡萨丁', 10200, 356, 0, '0001', '用户1', '有一个存在于各个世界之间的地方。对有些知道它存在的人来说是外域，而对于其他的人它则是一片未知之地。大部分人称其为做无尽虚空。', '2018-06-10 10:17:19', 0, '/game/loadImg?poster=detail&gameId=75', '/game/loadImg?poster=banner&gameId=75', '/game/loadImg?poster=avatar&gameId=75', 0, '5', '1'),
(76, '塞恩', 0, 0, 3, '0001', '用户1', '在英雄联盟创立之前，蒂玛西亚与诺克萨斯城邦一直陷在持续几个世纪之久的时断时续的血腥战争之中。双方都尽力让自己能占据上风，但诺克萨斯却是一个为达目的可以连传统道德都抛弃的城邦。对于诺克萨斯来说，除了暴力和使用暴力的意愿，其他都无关紧要。而这点则在杀戮战士赛恩的身上得到了最好的体现。', '2018-06-10 10:18:23', 0, '/game/loadImg?poster=detail&gameId=76', '/game/loadImg?poster=banner&gameId=76', '/game/loadImg?poster=avatar&gameId=76', 0, '5', '1'),
(77, '宝石骑士', 5600, 65, 3, '0001', '用户1', '在这个世界上存在着一种已被人们以往的远古魔法，这是关于大地之力和水晶宝石的魔法。塔里克的父亲是镇子上的一位医者，他从小就开始对自己父亲从事的事业十分感兴趣。随着时间的推移，塔里克对于传统医疗的了解程度飞速增长，然而更吸引他的还是宝石的力量。', '2018-06-10 10:18:50', 0, '/game/loadImg?poster=detail&gameId=77', '/game/loadImg?poster=banner&gameId=77', '/game/loadImg?poster=avatar&gameId=77', 0, '5', '1'),
(78, '风女', 5600, 98, 2, '0001', '用户1', '有些巫师将自己完全献给大自然的原始的魔法力。迦娜原本就是孤儿，在混乱的Zaun城中长大，她居无定所，竭力争取生存的机会。生活对于这位美丽的女孩是如此艰难。肆虐的魔法是Zaun城的特色，也是最原始、最迷人的工具。', '2018-06-10 10:19:15', 0, '/game/loadImg?poster=detail&gameId=78', '/game/loadImg?poster=banner&gameId=78', '/game/loadImg?poster=avatar&gameId=78', 0, '5', '1'),
(79, '时光老人', 5600, 68, 3, '0001', '用户1', '时光守护者-基兰是一位身后背着巨大钟表深受敬仰的老人，他有着操纵时间的能力。在战场上，他运用时光倒流的能力一次次的挽救伙伴于危难之中，被大家亲切的成为“时间掌控者”。', '2018-06-10 10:19:39', 0, '/game/loadImg?poster=detail&gameId=79', '/game/loadImg?poster=banner&gameId=79', '/game/loadImg?poster=avatar&gameId=79', 0, '5', '1'),
(80, '卡牌', 10500, 403, 0, '0001', '用户1', '崔斯特出生于一个贫困的吉普赛家庭，尽管如此，这位人称"扭曲命运"的家伙却是个玩牌高手，靠着在德玛西亚和诺克萨斯破烂的地下赌场赌博而发家致富。政府当局好几次差一点就要逮捕他，他却总能想方设法溜之大吉。', '2018-06-10 10:20:01', 0, '/game/loadImg?poster=detail&gameId=80', '/game/loadImg?poster=banner&gameId=80', '/game/loadImg?poster=avatar&gameId=80', 0, '5', '1'),
(81, '伊芙琳', 9600, 265, 2, '0001', '用户1', '伊芙琳的出身神秘莫测，她对此也保持着神秘。人们都知道伊芙琳是瓦罗兰大陆上最资深的暗杀者之一。第一眼看见她，你就能看出她不太像个人类。有传言说她小时候受到轻度空想吸血鬼化诅咒。', '2018-06-10 10:20:31', 0, '/game/loadImg?poster=detail&gameId=81', '/game/loadImg?poster=banner&gameId=81', '/game/loadImg?poster=avatar&gameId=81', 0, '5', '1'),
(82, '死歌', 8500, 198, 3, '0001', '用户1', '在瓦罗然大陆无数的符文战争中，英雄们使用、摧毁无数的物理魔法，这些魔法让大陆很多地方伤痕累累。许多远离文明的地方已变成危险之地。嚎叫沼泽便是其中之一，巫妖卡尔萨斯自称是这里的领主。', '2018-06-10 10:21:09', 0, '/game/loadImg?poster=detail&gameId=82', '/game/loadImg?poster=banner&gameId=82', '/game/loadImg?poster=avatar&gameId=82', 0, '5', '1'),
(83, '老鼠', 10300, 356, 1, '0001', '用户1', '瘟疫之源——图奇是一只拿着速射手弩的巨型老鼠，来自下水道的它拥有神奇的能力，它是一名杀手，更是一位刺客，它是物理DPS中的王者！（注解DPS：Damage persecond，原意是指秒伤害，现在广泛的认为是指能够高输出高攻的单位。）', '2018-06-10 10:21:43', 0, '/game/loadImg?poster=detail&gameId=83', '/game/loadImg?poster=banner&gameId=83', '/game/loadImg?poster=avatar&gameId=83', 0, '5', '1'),
(84, '乌迪尔', 8600, 153, 3, '0001', '用户1', '在爱欧尼亚，有一群隐修者悉心钻研着瓦洛兰的至深奥秘，探索着灵魂的最深处。他们中的一些精英是文明与和谐的忠实拥护者，然而总有人另辟蹊径。乌迪尔出生在红月之下的草丛中，一直受到本能的驱使。', '2018-06-10 10:22:17', 0, '/game/loadImg?poster=detail&gameId=84', '/game/loadImg?poster=banner&gameId=84', '/game/loadImg?poster=avatar&gameId=84', 0, '5', '1'),
(85, '豹女', 11500, 398, 0, '0001', '用户1', '超级壁垒的南部是一片被诅咒的凶险之地，因此人烟稀少，而英雄更是凤毛麟角。那里的大部分地区仍然残留着上次符文战争留下的创伤，特别是神秘的库莽古森林。在这些陌生的土地上蕴藏着被人久已遗忘的宝藏，许多人不惜冒生命危险去寻宝。', '2018-06-10 10:22:50', 0, '/game/loadImg?poster=detail&gameId=85', '/game/loadImg?poster=banner&gameId=85', '/game/loadImg?poster=avatar&gameId=85', 0, '5', '1'),
(86, '波比', 11500, 398, 0, '0001', '用户1', '当其他的约德尔年轻人在载歌载舞，互抛花环的时候，波比还在她父亲的铠甲店里辛勤的工作，双手长满了老茧，身上沾满了油渍，她的父亲，Blomgrun是一个备受尊敬的铁匠，他用自己熔炉的欢快声音来给自己的女儿命名，他满怀骄傲地挥舞着自己的铁锤，有一天，他受命为蒂玛西亚的将军打造了一套荣耀的盔甲，但是这个消息走漏到了诺克萨斯最高指挥部手里，他们其中的两个最好的间谍在他们车队途径的地方伏击了他们。', '2018-06-10 10:23:28', 0, '/game/loadImg?poster=detail&gameId=86', '/game/loadImg?poster=banner&gameId=86', '/game/loadImg?poster=avatar&gameId=86', 0, '5', '1'),
(87, '酒桶', 9600, 296, 2, '0001', '用户1', '首先，如果你是御姐控、萝莉控、黑丝控、造型控的话，请绕道。酒桶这种重口味的外表并不是每个人都懂的。其次，酒桶并不强力，也不是主流英雄，甚至非主流都算不上。最后，酒桶上手也比较难，加上大招使用非常考验玩家，英雄定义模糊，不太适合新手使用。', '2018-06-10 10:23:56', 0, '/game/loadImg?poster=detail&gameId=87', '/game/loadImg?poster=banner&gameId=87', '/game/loadImg?poster=avatar&gameId=87', 0, '5', '1'),
(88, '潘森', 10360, 396, 0, '0001', '用户1', '在巨石峰巅的云端之上，居住着一个叫斯坦帕的部落，他们崇拜战争，视其为第二艺术。他们还记得符文之地发生的符文之战，也知道英雄联盟对部落崛起长久以来的压制。部落的每个成员都从小接受严格的纪律训练，他们都是出色的战士。', '2018-06-10 10:24:33', 0, '/game/loadImg?poster=detail&gameId=88', '/game/loadImg?poster=banner&gameId=88', '/game/loadImg?poster=avatar&gameId=88', 0, '5', '1'),
(89, '金属大师', 10360, 396, 0, '0001', '用户1', '莫德凯撒是标准的tank英雄。他是坦克中的另类，他没有群体控制技能，但是他却拥有着强大的金属护盾提升自身的防护能力。他拥有着强大的单线作战能力，无论是单线solo，还是清兵、推线、控线。', '2018-06-10 10:24:53', 0, '/game/loadImg?poster=detail&gameId=89', '/game/loadImg?poster=banner&gameId=89', '/game/loadImg?poster=avatar&gameId=89', 0, '5', '1'),
(90, '伊泽瑞尔', 12530, 425, 0, '0001', '用户1', '伊泽瑞尔的血液中流淌着与生俱来的魔法天赋。与此同时，他热爱流浪探险。伊泽瑞尔进入学校后，有望成长为熟练的科技魔法师，但他很快就厌倦了学校的魔法学习，他八岁已经可以绘制出完整的皮尔特沃夫地下隧道的地图，皮尔特沃夫政府很欣赏伊泽瑞尔的才华，买下了他的地图且聘他担任皮尔特沃夫首席探险家。', '2018-06-10 10:25:18', 0, '/game/loadImg?poster=detail&gameId=90', '/game/loadImg?poster=banner&gameId=90', '/game/loadImg?poster=avatar&gameId=90', 0, '5', '1'),
(91, '凯南', 9320, 236, 3, '0001', '用户1', '爱欧尼亚群岛有一个古老的组织，他们将其一生奉献给世界平衡。秩序，混乱，光明，黑暗 —— 所有这一切都必须完美平衡的存在，这就是宇宙之道。这个组织被称为"均衡"，他们雇用了暗影忍者三人众来维护平衡之道。慎就是其中之一。', '2018-06-10 10:25:52', 0, '/game/loadImg?poster=detail&gameId=91', '/game/loadImg?poster=banner&gameId=91', '/game/loadImg?poster=avatar&gameId=91', 0, '5', '1'),
(92, '慎', 10000, 365, 1, '0001', '用户1', '爱欧尼亚岛上有一个上古教派，致力于维护均衡。规则与混乱、光明与黑暗——万物必须和谐共存，这就是宇宙的真理。这个教派名为均衡教派，而该教派维护世界均衡的神圣使命则由三个暗影战士来执行。慎就是这三名暗影战士中一员，他肩负着观星的神圣职责——不偏不倚地执行裁决。', '2018-06-10 10:26:20', 0, '/game/loadImg?poster=detail&gameId=92', '/game/loadImg?poster=banner&gameId=92', '/game/loadImg?poster=avatar&gameId=92', 0, '5', '1'),
(93, '盖伦', 13000, 562, 0, '0001', '用户1', '在瓦洛兰大陆，虽然人们对蒂玛西亚的军纪存在争议，但是相同点是所有人都尊敬它。平民和士兵都严格遵守着“零容忍”的准则。这意味着在战斗中徳玛西亚军队永远不会找借口托辞、逃跑、或者投降。', '2018-06-10 10:27:13', 0, '/game/loadImg?poster=detail&gameId=93', '/game/loadImg?poster=banner&gameId=93', '/game/loadImg?poster=avatar&gameId=93', 0, '5', '1'),
(94, '阿卡丽', 13000, 562, 2, '0001', '用户1', '爱欧尼亚群岛有一个古老的组织，他们将其一生奉献给世界平衡。秩序，混乱，光明，黑暗 —— 所有这一切都必须完美平衡的存在，这就是宇宙之道。这个组织被称为“ 均衡 ”，他们雇用了暗影忍者三人众来维护平衡之道。阿卡丽就是其中之一。', '2018-06-10 10:30:38', 0, '/game/loadImg?poster=detail&gameId=94', '/game/loadImg?poster=banner&gameId=94', '/game/loadImg?poster=avatar&gameId=94', 0, '5', '1'),
(95, '马尔扎哈', 5500, 65, 3, '0002', '用户2', '大多数人在苏瑞玛令人刺眼的阳光下变得疯狂，但是当夜幕降临的时候玛扎哈也放下了自己的理智。', '2018-06-10 10:31:25', 0, '/game/loadImg?poster=detail&gameId=95', '/game/loadImg?poster=banner&gameId=95', '/game/loadImg?poster=avatar&gameId=95', 0, '5', '1'),
(96, '奥拉夫', 9900, 326, 1, '0002', '用户2', '在瓦罗然势力范围以外的未知大陆，奥拉夫出生于一个历史悠久、与众不同的勇士世家。他们自称为狂战士，将自己的怒火导入至战斗之中，释放出狂野的愤怒。这样的进化是他们故乡洛克法的自然产物。', '2018-06-10 10:31:59', 0, '/game/loadImg?poster=detail&gameId=96', '/game/loadImg?poster=banner&gameId=96', '/game/loadImg?poster=avatar&gameId=96', 0, '5', '1'),
(97, '深渊巨口', 9900, 326, 3, '0002', '用户2', '当虚空先知玛尔扎哈在埃卡西亚重生时，充满凶兆的呼唤将他引到那里。此后，这呼唤就占据了他的心智。这呼唤赋予他恐怖的意志，虽然玛尔扎哈不再受到这种呼唤的折磨，但它仍然没有停止无情的呼唤。', '2018-06-10 10:36:32', 0, '/game/loadImg?poster=detail&gameId=97', '/game/loadImg?poster=banner&gameId=97', '/game/loadImg?poster=avatar&gameId=97', 0, '5', '1'),
(98, '赵信', 13000, 498, 0, '0001', '用户1', '每当蒂玛西亚的国王加文三世在皇宫顶部那熠熠生辉的大理石阳台上发表他那激情澎湃的演讲之时，赵信都会侍立于他的身旁。人称"蒂玛西亚总管"的赵信是光盾王朝的私人管家。他那高深莫测且不苟言谈的守夜值勤，使得关于他的"隐秘生活"与出身来源的推测层出不穷。', '2018-06-10 10:38:18', 0, '/game/loadImg?poster=detail&gameId=98', '/game/loadImg?poster=banner&gameId=98', '/game/loadImg?poster=avatar&gameId=98', 0, '5', '1'),
(99, '弗拉基米尔', 9600, 269, 3, '0002', '用户2', '外表帅气，技能爆发性强，他是法师却没蓝条，你不必担心魔法值不够。但也因为没魔法，他的WER都消耗生命值，新一代的中路路霸。', '2018-06-10 10:39:14', 0, '/game/loadImg?poster=detail&gameId=99', '/game/loadImg?poster=banner&gameId=99', '/game/loadImg?poster=avatar&gameId=99', 0, '5', '1'),
(100, '加里奥', 9600, 365, 2, '0002', '用户2', '在很久之前，联盟并没有对法师创造人工生命进行任何监管，然而，现在已经彻底禁止了向傀儡灌输灵魂这样在工匠中并不罕见的活动。但是还有这样一位充满幻想蒂玛西亚工匠-杜兰德。他拥有无以伦比的技艺和创作灵感，为自己的的城邦周边城市居住的居民设计了一个永不疲倦的守卫，为他们提供庇护。', '2018-06-10 10:40:33', 0, '/game/loadImg?poster=detail&gameId=100', '/game/loadImg?poster=banner&gameId=100', '/game/loadImg?poster=avatar&gameId=100', 0, '5', '1'),
(101, '厄加特', 9600, 365, 2, '0002', '用户2', '首领之傲--厄加特攻略\n大螃蟹首领之傲厄加特新人上手攻略图片1美服常用英雄，国服现在用的人不多，还是比较好用的一个英雄。', '2018-06-10 10:40:51', 0, '/game/loadImg?poster=detail&gameId=101', '/game/loadImg?poster=banner&gameId=101', '/game/loadImg?poster=avatar&gameId=101', 0, '5', '1'),
(102, '女枪', 10200, 396, 0, '0001', '用户1', '对于勇敢面对符文之地严酷海洋的人，能拥有一艘属于自己的船和船员，就已是个不错的成就。备受尊敬的赏金猎人莎拉，在她16岁生日时就已经完成了这个目标。', '2018-06-10 10:41:22', 0, '/game/loadImg?poster=detail&gameId=102', '/game/loadImg?poster=banner&gameId=102', '/game/loadImg?poster=avatar&gameId=102', 0, '5', '1'),
(103, '琴女', 10200, 396, 1, '0001', '用户1', '娑娜是一位辅助英雄。她的光环加成和续航能力能够在团队中发挥重要作用，不低的输出和大范围的控制比起其他辅助型的英雄更有优势。虽然在后续的版本经过了一定的削弱，但娑娜仍然是一位值得信赖的队友。', '2018-06-10 10:41:40', 0, '/game/loadImg?poster=detail&gameId=103', '/game/loadImg?poster=banner&gameId=103', '/game/loadImg?poster=avatar&gameId=103', 0, '5', '1'),
(104, '乌鸦', 8600, 236, 3, '0002', '用户2', '关于斯温这个姓氏，最早见诸与诺克苏斯医疗日志。在医生的帮助下，斯温没有怨怒和哭喊，挣扎走进病房。他的右腿只剩半截，露出腿骨。一只阴森的鸟粘附在他肩上。当年轻人盯着医生，平静的询问自己身体问题时，医生们都惊呆了。', '2018-06-10 10:42:46', 0, '/game/loadImg?poster=detail&gameId=104', '/game/loadImg?poster=banner&gameId=104', '/game/loadImg?poster=avatar&gameId=104', 0, '5', '1'),
(105, '拉克丝', 10200, 395, 0, '0001', '用户1', '拉克丝天生就属于显赫的皇冠卫队，出自蒂玛西亚的模范家庭她注定要成就一番伟业。作为家族当代唯一的女儿，她接受高等教育，并参与皇冠卫队高层家族的奢华派对。拉克丝长大后，她的天赋愈加耀眼。', '2018-06-10 10:44:20', 0, '/game/loadImg?poster=detail&gameId=105', '/game/loadImg?poster=banner&gameId=105', '/game/loadImg?poster=avatar&gameId=105', 0, '5', '1'),
(106, '乐芙兰', 8600, 305, 2, '0001', '用户1', '每个城市都有其不为人知的黑暗一面，每个人的名誉下都隐藏着可疑的色彩。诺克苏斯-有人崇拜有人厌恶-毫无疑问是这句话的真实写照。在黑暗的大地深处，蜿蜒的地下世界如同蜂巢一般。', '2018-06-10 10:46:44', 0, '/game/loadImg?poster=detail&gameId=106', '/game/loadImg?poster=banner&gameId=106', '/game/loadImg?poster=avatar&gameId=106', 0, '5', '1'),
(107, '刀妹', 8600, 305, 2, '0001', '用户1', '爱欧尼亚发展出了符文之地最致命的强大武术-这不过是他们追求启迪的表现之一。刀刃表现出来的卓越风格实际上是引入外力后的稀有附属。里托大师是一名剑客，他几乎受邀担任过附近所有城邦的剑术教练。', '2018-06-10 10:47:06', 0, '/game/loadImg?poster=detail&gameId=107', '/game/loadImg?poster=banner&gameId=107', '/game/loadImg?poster=avatar&gameId=107', 0, '5', '1'),
(108, '巨魔', 8600, 305, 2, '0001', '用户1', '从来没有人关注过瓦罗然大陆上的巨魔部落，通常人们都认为巨魔是一种粗暴残忍并且狡诈的种族。他们是造物主创造出来的远离文明社会的黑暗物种。尽管他们都有残忍的天性，然而Ruhgosk部落的巨魔们却不应该承受那么恐怖的命运。', '2018-06-10 10:47:41', 0, '/game/loadImg?poster=detail&gameId=108', '/game/loadImg?poster=banner&gameId=108', '/game/loadImg?poster=avatar&gameId=108', 0, '5', '1'),
(109, '蛇女', 6200, 263, 3, '0002', '用户2', '当她的姐姐卡特琳娜成为最家喻户晓的英雄时，Du Couteau家族已经为诺克萨斯鞠躬尽瘁多年。据说没有一个军队将领能像Du Couteau将军一样幸运的以自己的女儿们为荣。他最小的女儿卡西俄珀亚不像她的姐们们天性好杀，而以庄严优雅而闻名。', '2018-06-10 10:48:29', 0, '/game/loadImg?poster=detail&gameId=109', '/game/loadImg?poster=banner&gameId=109', '/game/loadImg?poster=avatar&gameId=109', 0, '5', '1'),
(110, '女警', 10500, 369, 2, '0001', '用户1', '一个能够聪明地放置陷阱的cait才是好cait。初期的时候，陷阱需要能够尽量保证自己的生存，如果能够乘对方不小心多点他两下，就更好了。', '2018-06-10 10:49:09', 0, '/game/loadImg?poster=detail&gameId=110', '/game/loadImg?poster=banner&gameId=110', '/game/loadImg?poster=avatar&gameId=110', 0, '5', '1'),
(111, '鳄鱼', 10500, 369, 0, '0001', '用户1', '在遥远的异世界，雷克顿身为野兽守护者的一员，统治并保护着服侍他们的子民。雷克顿在兄弟雷瑟斯旁负责监守维护大图书馆，那里是远古知识的苍穹，也是生死轮回秘密的宝库。雷瑟斯在指导前来寻求知识的学者时，雷克顿则身任大图书馆的守门人。', '2018-06-10 10:49:30', 0, '/game/loadImg?poster=detail&gameId=111', '/game/loadImg?poster=banner&gameId=111', '/game/loadImg?poster=avatar&gameId=111', 0, '5', '1'),
(112, '艾克', 13500, 426, 0, '0001', '用户1', '艾克是一名来自祖安不良街区的奇才。他可以操纵时间，从而让任何处境都变得对自己有利。通过使用他自己的发明——Z型驱动——他可以对现实的其它分支的可能性进行探索。', '2018-06-10 10:52:01', 0, '/game/loadImg?poster=detail&gameId=112', '/game/loadImg?poster=banner&gameId=112', '/game/loadImg?poster=avatar&gameId=112', 0, '5', '1'),
(113, '卡密尔', 7600, 156, 3, '0002', '用户2', '卡蜜尔是一名精英特工，为了皮尔特沃夫的权势阶层维护着城市的秩序。在责任心的驱使下，青钢影将自己的身体改造成了一台海克斯动力驱动的杀戮机器。当卡蜜尔追捕目标时，她就会变得冷静、无情，并且极其可怕地精确。', '2018-06-10 10:52:36', 0, '/game/loadImg?poster=detail&gameId=113', '/game/loadImg?poster=banner&gameId=113', '/game/loadImg?poster=avatar&gameId=113', 0, '5', '1'),
(114, '塔姆', 10500, 369, 0, '0001', '用户1', '塔姆丶肯奇在符文大陆的各个水道游历着，用毫无戒心者们的悲惨喂养着他那贪得无厌的食欲。这个充满奇异魅力的美食家纵情享受着猎物们受苦时的每个时刻。一次伴随着两件外套*的交易也许会带你通往任何想去的地方，但你的旅程几乎必然会在绝望的深渊中结束。', '2018-06-10 11:00:23', 0, '/game/loadImg?poster=detail&gameId=114', '/game/loadImg?poster=banner&gameId=114', '/game/loadImg?poster=avatar&gameId=114', 0, '5', '1'),
(115, '艾翁', 9600, 253, 3, '0001', '用户1', '人们所说的翠神，真正的名字是艾翁·荆足。半人半树的它，常在符文之地的丛林中游荡，所经之处无不生机盎然。他知晓自然界的种种秘密，无论是飞禽走兽还是游鱼虫孑，都与他交谊深厚。', '2018-06-10 11:08:57', 0, '/game/loadImg?poster=detail&gameId=115', '/game/loadImg?poster=banner&gameId=115', '/game/loadImg?poster=avatar&gameId=115', 0, '5', '1'),
(116, '纳尔', 9600, 236, 2, '0001', '用户1', '我已经猎遍了这个丛林里的所有生物。我确信，这儿以前已经没剩下什么挑战了，但现在，这儿有了新来客。它的脚印和长牙领主一般大小；它的爪子就像弯刀。它能把人撕成两半。总算碰到有价值的猎物了。', '2018-06-10 11:11:30', 0, '/game/loadImg?poster=detail&gameId=116', '/game/loadImg?poster=banner&gameId=116', '/game/loadImg?poster=avatar&gameId=116', 0, '5', '1'),
(117, '沙漠皇帝', 8600, 235, 2, '0001', '用户1', '曾是一名被自大与傲慢所蒙蔽的凡人，对灼热沙漠有着无上统治权的阿兹尔以一个飞升者的身份重新归来。他想让恕瑞玛重回昔日的荣光，但在称霸途中遇上一些阻挠。然而，阿兹尔的力量是不容质疑的。', '2018-06-10 11:13:46', 0, '/game/loadImg?poster=detail&gameId=117', '/game/loadImg?poster=banner&gameId=117', '/game/loadImg?poster=avatar&gameId=117', 0, '5', '1'),
(118, '丽桑卓', 8900, 196, 2, '0001', '用户1', '丽桑卓的魔法将纯净的冰霜之力扭曲为某种黑暗而可怕的东西。伴随着她的黑色冰霜之力，她不仅冻结敌人，还能将他们刺穿并粉碎。对于北部饱受恐吓的居民来说，她只是被称为“冰霜女巫”。', '2018-06-10 11:17:12', 0, '/game/loadImg?poster=detail&gameId=118', '/game/loadImg?poster=banner&gameId=118', '/game/loadImg?poster=avatar&gameId=118', 0, '5', '1'),
(119, '戏命师', 12500, 426, 0, '0001', '用户1', '作为一名心思缜密的癫狂杀手，烬坚信谋杀是一门艺术。他曾在艾欧尼亚的监狱中服刑，但却因为执政议会里涌动着的暗流而得到释放，成为了权术斗争所利用的刺客。', '2018-06-10 11:18:57', 0, '/game/loadImg?poster=detail&gameId=119', '/game/loadImg?poster=banner&gameId=119', '/game/loadImg?poster=avatar&gameId=119', 0, '5', '1');

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
  `music_history` varchar(10) NOT NULL DEFAULT '0',
  `user_id` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `music_detail_poster` varchar(100) DEFAULT NULL,
  `music_banner_poster` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `musics`
--

INSERT INTO `musics` (`music_id`, `music_name`, `music_singer`, `music_desc`, `music_area`, `music_time`, `music_type`, `music_score`, `music_favorite`, `music_lock`, `music_history`, `user_id`, `user_name`, `create_date`, `music_detail_poster`, `music_banner_poster`) VALUES
(1, '体面', '于文文', '别堆砌怀念让剧情变得狗血', '中国大陆', '2018年', '6', '9.6', '0', '0', '0', '0001', '用户1', '2018-07-25 22:30:17', '/music/loadImg?poster=detail&musicId=1', '/music/loadImg?poster=banner&musicId=1\n'),
(2, '说散就散', '袁维娅', '《说散就散》 是由张楚翘作词，伍乐城作曲，JC（陈咏桐）演唱的一首歌曲，发行于2016年06月14日。', '中国大陆', '2018', '6', '9.6', '0', '0', '0', '0001', '用户1', '2018-07-25 22:30:23', '/music/loadImg?poster=detail&musicId=2\n', '/music/loadImg?poster=banner&musicId=2'),
(3, 'What are words', 'Chris Medina', '这首歌曲是《美国偶像》（American Idol）第十季选手Chris Medina的单曲专辑。虽然止步24强，但是这首曲子却在网络上广为流传。', '美国', '2011-12-21', '6', '9.0', '0', '0', '0', '0001', '用户1', '2018-08-11 18:02:54', '/music/loadImg?poster=detail&musicId=3', '/music/loadImg?poster=banner&musicId=3'),
(4, '彩云之南', '徐千雅', '《彩云之南》是徐千雅演唱的歌曲，由何沐阳作词作曲，歌曲MV由潘安子执导，2005年徐千雅正式演唱，收录于徐千雅2007年7月13日发行的专辑《彩云之南》中。', '中国大陆', '2007年7月13日', '3', '8.9', '0', '0', '0', '0001', '用户1', '2018-08-11 18:03:30', '/music/loadImg?poster=detail&musicId=4', '/music/loadImg?poster=banner&musicId=4'),
(5, '彩虹', '周杰伦', '《彩虹》是周杰伦演唱的一首歌曲，由周杰伦作曲、作词，收录在他2007年发行的专辑《我很忙》中，这首歌曲也是电影《命运呼叫转移》的主题曲', '中国台湾', '2007年', '1', '8.5', '0', '0', '0', '0001', '用户1', '2018-08-11 18:03:41', '/music/loadImg?poster=detail&musicId=5', '/music/loadImg?poster=banner&musicId=5'),
(6, '醉赤壁', '林俊杰', '《醉赤壁》是林俊杰演唱的歌曲，由方文山作词，林俊杰作曲，收录在林俊杰2008年10月18日发行的专辑《JJ陆》中。 [1] \n这首歌曲是网络游戏《赤壁online game》的主题曲。', '新加坡', '2008年10月18日', '1', '8.5', '0', '0', '0', '0001', '用户1', '2018-08-11 14:16:26', '/music/loadImg?poster=detail&musicId=6', '/music/loadImg?poster=banner&musicId=6'),
(7, '一剪梅', '费玉清', '一剪梅最早收录于费玉清1983年4月推出的《长江水·此情永不留》专辑 [1-2]  ，1984年成为同名电视剧片头曲， [3]  该歌曲后又成为2009年霍建华、吕一主演电视剧《新一剪梅》的片头曲。该歌曲后又成为2015年沈腾、马丽主演电视剧《夏洛特烦恼》的宣传曲。', '中国台湾', '1983年', '2', '9.6', '0', '0', '0', '0001', '用户1', '2018-07-25 22:30:56', '/music/loadImg?poster=detail&musicId=7', '/music/loadImg?poster=banner&musicId=7'),
(8, '一生所爱', '卢冠廷', '《一生所爱》是由唐书琛作词、卢冠廷作曲并演唱的歌曲，作于周星驰经典电影《大话西游之大圣娶亲》片尾曲，歌曲描述了一个男孩成长为一个男人的过程，表达了既无奈而又哀伤的一段刻骨相思之情。', '中国大陆', '1995年5月1日', '3', '9.6', '0', '0', '0', '0001', '用户1', '2018-08-11 18:04:07', '/music/loadImg?poster=detail&musicId=8', '/music/loadImg?poster=banner&musicId=8'),
(9, '凉凉', '三生三世十里桃花', '《凉凉》是张碧晨和杨宗纬演唱的歌曲，由刘畅作词，谭旋作曲 [1]  ，收录于2017年2月18日发行的专辑《三生三世十里桃花 电视剧原声带》中，是电视剧《三生三世十里桃花》的片尾曲', '中国大陆', '2017年2月18日', '1', '8.2', '0', '0', '0', '0001', '用户1', '2018-07-25 22:31:09', '/music/loadImg?poster=detail&musicId=9', '/music/loadImg?poster=banner&musicId=9'),
(10, '不将就', '李荣浩', '《不将就》是由黄伟文填词，李荣浩谱曲并演唱的一首歌曲，是电影《何以笙箫默》的片尾曲，于2015年4月28日数位发行，后收录于李荣浩2016年1月22日发行的专辑《有理想》中。', '中国大陆', '2016年1月22日', '4', '8.2', '0', '0', '0', '0001', '用户1', '2018-07-25 22:31:16', '/music/loadImg?poster=detail&musicId=10', '/music/loadImg?poster=banner&musicId=10'),
(11, '爱要怎么说出口', '赵传', '《爱要怎么说出口》是李宗盛填词、作曲，徐德昌、钟兴民编曲，赵传演唱的一首歌曲，收录于赵传1993年发行的专辑《约定》中。《我是歌手第四季》现场版由刘迦宁、周以力编曲。', '中国大陆', '1993年11月1日', '1', '8.2', '0', '0', '0', '0001', '用户1', '2018-08-11 18:04:28', '/music/loadImg?poster=detail&musicId=11', '/music/loadImg?poster=banner&musicId=11'),
(12, '追光者', '岑宁儿', '《追光者》是岑宁儿演唱的歌曲，由唐恬作词，马敬作曲，是电视剧《夏至未至》的插曲 [1]  ，收录于同年6月19日听见时代传媒发行的原声专辑《夏至未至·听见青春》中', '中国大陆', '2017年6月16日', '1', '8.6', '0', '0', '0', '0001', '用户1', '2018-08-11 14:16:16', '/music/loadImg?poster=detail&musicId=12', '/music/loadImg?poster=banner&musicId=12'),
(13, '虫儿飞', '儿童合唱团', '《虫儿飞》是1998年电影《风云雄霸天下》插曲，由陈光荣作曲、林夕作词的插曲，是《一对对》的国语版本。由香港歌手郑伊健演唱。因歌曲悠扬的旋律又类似于童谣的风格和配上浪漫的歌词广受大众喜欢，后出现很多翻唱版本，至于歌词，还不是很一致。', '中国大陆', '1998年', '7', '9.2', '0', '0', '0', '0001', '用户1', '2018-08-12 09:40:43', '/music/loadImg?poster=detail&musicId=13', '/music/loadImg?poster=banner&musicId=13'),
(14, '我好想你', '苏打绿', '《我好想你》是由吴青峰作词、作曲，苏打绿演唱的歌曲，收录于苏打绿2013年9月18日发行的专辑《秋：故事》中。该曲被选为电影《小时代》、《小时代2：青木时代》的主题曲', '中国大陆', '2013年6月17日', '5', '8.2', '0', '0', '0', '0001', '用户1', '2018-08-11 18:04:55', '/music/loadImg?poster=detail&musicId=14', '/music/loadImg?poster=banner&musicId=14'),
(15, '红颜旧', '刘涛', '《红颜旧》是由赵佳霖作曲、袁亮作词、刘涛演唱的歌曲，也是电视剧《琅琊榜》主题曲。于2015年10月26日在《琅琊榜 电视剧原声带》专辑中发行。', '中国大陆', '2015年6月29日', '6', '8.5', '0', '0', '0', '0001', '用户1', '2018-08-11 13:47:24', '/music/loadImg?poster=detail&musicId=15', '/music/loadImg?poster=banner&musicId=15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`film_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`music_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `films`
--
ALTER TABLE `films`
  MODIFY `film_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- 使用表AUTO_INCREMENT `musics`
--
ALTER TABLE `musics`
  MODIFY `music_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
