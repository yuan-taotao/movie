/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : dy

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-03-01 13:15:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hall
-- ----------------------------
DROP TABLE IF EXISTS `hall`;
CREATE TABLE `hall` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键,编号',
  `HallName` varchar(255) DEFAULT NULL COMMENT '影厅标题',
  `HallType` varchar(255) DEFAULT 'IMAX2D' COMMENT '放映类型',
  `HallSeating` int(11) DEFAULT '10' COMMENT '座位数',
  `HallLayout` varchar(255) DEFAULT NULL COMMENT '座位分布',
  `HallStatus` int(11) DEFAULT '0' COMMENT '状态,0正常,1维修中',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hall
-- ----------------------------
INSERT INTO `hall` VALUES ('3', '3号厅', '2D', '107', '____eeeeeeeeeee__,____eeeeeeeeeee__,____eeeeeeeeeee__,____eeeeeeeeeee__,____eeeeeeeeeee__,____eeeeeeeeeee__,____eeeeeeeeeee__,ee__eeeeeeeeeee__,eeeeeeeeeeeeeeeee', '0');
INSERT INTO `hall` VALUES ('4', '4号厅', '2D', '167', '__eeeeeeeeeeeeee_____,__eeeeeeeeeeeeee_____,__eeeeeeeeeeeeee_____,__eeeeeeeeeeeeee_____,__eeeeeeeeeeeeee_____,__eeeeeeeeeeeeee_____,__eeeeeeeeeeeeee_____,__eeeeeeeeeeeeee_____,__eeeeeeeeeeeeee__eee,__eeeeeeeeeeeeee__eee,eeeeeeeeeeeeeeeeeeeee', '0');
INSERT INTO `hall` VALUES ('5', '5号厅', '2D', '167', '__eeeeeeeeeeeeee_____,__eeeeeeeeeeeeee_____,__eeeeeeeeeeeeee_____,__eeeeeeeeeeeeee_____,__eeeeeeeeeeeeee_____,__eeeeeeeeeeeeee_____,__eeeeeeeeeeeeee_____,__eeeeeeeeeeeeee_____,__eeeeeeeeeeeeee__eee,__eeeeeeeeeeeeee__eee,eeeeeeeeeeeeeeeeeeeee', '0');
INSERT INTO `hall` VALUES ('6', '6号厅', '2D', '199', '__eeeeeeeeeeeeeee__,__eeeeeeeeeeeeeee__,__eeeeeeeeeeeeeee__,__eeeeeeeeeeeeeee__,__eeeeeeeeeeeeeee__,__eeeeeeeeeeeeeee__,__eeeeeeeeeeeeeee__,__eeeeeeeeeeeeeee__,__eeeeeeeeeeeeeee__,__eeeeeeeeeeeeeee__,__eeeeeeeeeeeeeee__,__eeeeeeeeeeeeeee__,eeeeeeeeeeeeeee', '0');
INSERT INTO `hall` VALUES ('8', '8号厅', '2D', '112', 'eeeeeee__eeee,eeeeeee__eeee,eeeeeee__eeee,eeeeeee__eeee,eeeeeee__eeee,eeeeeee__eeee,eeeeeee__eeee,eeeeeee__eeee,eeeeeee__eeee,eeeeeeeeeeeee', '0');
INSERT INTO `hall` VALUES ('1', '1号厅', '2D', '241', '___eeeeeee__eeeeeeeeeeeeee__,___eeeeeee__eeeeeeeeeeeeee__,___eeeeeee__eeeeeeeeeeeeee__,___eeeeeee__eeeeeeeeeeeeee__,___eeeeeee__eeeeeeeeeeeeee__,___eeeeeee__eeeeeeeeeeeeee__,___eeeeeee__eeeeeeeeeeeeee__,___eeeeeee__eeeeeeeeeeeeee__,___eeeeeee__eeeeeeeeeee', '0');
INSERT INTO `hall` VALUES ('2', '2号厅', '2D', '103', '______eeeeeee____,__eeeeeeeeeee____,__eeeeeeeeeee____,__eeeeeeeeeee____,__eeeeeeeeeee____,__eeeeeeeeeee____,__eeeeeeeeeee____,__eeeeeeeeeee__ee,eeeeeeeeeeeeeeeee', '0');
INSERT INTO `hall` VALUES ('7', '7号厅', '2D', '243', '_eeeeeeee__eeeeeeeeeeee__ee_,eeeeeeeee__eeeeeeeeeeee__ee_,___eeeeee__eeeeeeeeeeee_____,___eeeeee__eeeeeeeeeeee_____,___eeeeee__eeeeeeeeeeee_____,___eeeeee__eeeeeeeeeeee_____,___eeeeee__eeeeeeeeeeee_____,___eeeeee__eeeeeeeeeeee_____,___eeeeee__eeeeeeeeeeee', '0');

-- ----------------------------
-- Table structure for morder
-- ----------------------------
DROP TABLE IF EXISTS `morder`;
CREATE TABLE `morder` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_code` varchar(255) DEFAULT NULL COMMENT '订单号',
  `r_id` char(11) DEFAULT NULL COMMENT '场次id',
  `m_id` char(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL COMMENT '购买数量',
  `s_code` varchar(255) DEFAULT NULL COMMENT '座位号',
  `phone` varchar(255) DEFAULT NULL,
  `static` int(11) DEFAULT NULL COMMENT '状态,0已支付,1未支付,2取消',
  `order_time` int(11) DEFAULT NULL COMMENT '下单时间',
  `buy_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of morder
-- ----------------------------
INSERT INTO `morder` VALUES ('26', '58b648bb5d6e5', '1', null, '4', '1_8,1_9,1_10,1_11', '13701383017', '0', '1488341179', '1488341189');
INSERT INTO `morder` VALUES ('27', '58b64fc13653c', '2', '2', '3', '2_8,2_9,2_10', '13701383017', '1', '1488342977', null);
INSERT INTO `morder` VALUES ('28', '58b64ffa39cf1', '2', '2', '3', '2_11,2_12,2_13', '13701383017', '1', '1488343034', null);
INSERT INTO `morder` VALUES ('29', '58b651b1b6993', '3', '3', '0', null, '', '1', '1488343473', null);

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_name` varchar(255) DEFAULT NULL COMMENT '电影名称',
  `m_time` varchar(255) DEFAULT NULL COMMENT '电影时长',
  `m_price` decimal(10,0) DEFAULT NULL COMMENT '影片售价',
  `m_version` varchar(255) DEFAULT NULL COMMENT '版本 2D,3D',
  `m_type` varchar(255) DEFAULT NULL COMMENT '电影类型',
  `m_color` varchar(255) DEFAULT NULL,
  `actor` varchar(255) DEFAULT NULL COMMENT '主演信息',
  `m_director` varchar(255) DEFAULT '' COMMENT '导演',
  `content` varchar(255) DEFAULT NULL COMMENT '影片详情',
  `picurl` varchar(255) DEFAULT NULL COMMENT '海报',
  `country_area` varchar(255) DEFAULT NULL COMMENT '国家地区',
  `language` varchar(255) DEFAULT NULL COMMENT '语言版本',
  `m_addtime` varchar(255) DEFAULT NULL COMMENT '上映时间',
  `status` int(11) DEFAULT '0' COMMENT '状态 0预告,1上架,2,下架,',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES ('1', '长城', '104', '65', 'IMAX 3D', '剧情 / 动作 /奇幻 / 冒险', '#0033ff', '马特·达蒙 / 景甜 / 佩德罗·帕斯卡 / 威廉·达福 / 刘德华', '张艺谋', '电影《长城》讲述了在古代，一支中国精英部队为保卫人类，在举世闻名的长城上与怪兽饕餮进行生死决战的故事。欧洲雇佣军威廉（马特·达蒙饰）与同伴不远万里来到中国盗取火药配方，意外发现了长城是为抵御60年降临人间一次的饕餮所建。长城内部机关重重，宛如“陆上航母”，由无影禁军世代镇守。在这里，威廉见识了饕餮的凶残，也见证了无影禁军的精锐和勇敢，并被这群战士之间的信任和牺牲所感动，义无反顾地加入到了共同守护人类的战斗当中。 ', '/Uploads/2016-12-10/584bc12783ef3.jpg', '中国/美国', '国语', '2016-12-16', '0');
INSERT INTO `movie` VALUES ('2', '血战钢锯岭', '139', '55', '2D', '战争', '#009966', '安德鲁·加菲尔德/萨姆·沃辛顿/卢克·布雷西/雨果·维文', '梅尔·吉普森', '在1942年的太平洋战场，主人公军医戴斯蒙德·道斯不愿意在前线举枪射杀任何一个人，他成为一名军医，因自己的和平理想遭受着其他战士们的排挤。尽管如此，医戴斯蒙德·道斯在冲绳战役中曾救下75名战士，这让他成为一个传奇。 ', '/Uploads/2016-12-10/584bc48579058.jpg', '澳大利亚/美国', '英语', '2016-12-08', '1');
INSERT INTO `movie` VALUES ('3', '你的名字', '107', '55', '2D', '剧情/爱情/动画', '#00cc99', '神木隆之介 / 上白石萌音 / 长泽雅美 / 市原悦子 / 成田凌 / 悠木碧 / 岛崎信长 / 石川界人 / 谷花音', '新海诚', '千年后再度回归的彗星造访地球的一个月前，日本深山的某个乡下小镇。女高中生三叶每天都过着忧郁的生活，而她烦恼的不光有担任镇长的父亲所举行的选举运动，还有家传神社的古老习俗。三叶身居这小镇之中，又处于过多在意周围人目光的年龄，因此对大都市的憧憬日益强烈。 然而某一天，自己做了一 个变成男孩子的梦。这儿有着陌生的房间、陌生的朋友。而眼前出现的则是东京的街道。三叶虽然感到困惑，但是能够来到朝思暮想的都市生活，让她觉得神清气爽。另一方面在东京生活的男高中生立花泷也做了个奇怪的梦。他在一个从未去过的深山小镇中，变成了', '/Uploads/2016-12-10/584bc158b9d83.jpg', '日本', '日语', '2016-12-02', '1');
INSERT INTO `movie` VALUES ('4', '湄公河行动', '124', '55', '2D', '动作/警匪', '#00ccff', '张涵予 / 彭于晏 / 冯文娟 / 陈宝国 / 王斑', '林超贤', '电影《湄公河行动》改编自2011年发生在湄公河金三角流域的中国商船遇袭案，当时13名中国船员全部遇难，船上却发现90万粒毒品。为了还遇难同胞一个清白，中国公安集结警队精英组成了此次案件的特别行动小组，企图揪出案件的幕后黑手。然而过程并非他们想得那么简单，事件的进展扑朔迷离，通往真相的道路更是险象环生。身手不凡的对手受雇与谁？普通商船上为何有大量毒品？一桩悲剧背后所隐藏了什么惊天阴谋？层层谜团等待被解开…… ', '/Uploads/2016-12-10/584bc57464ad2.jpg', '中国', '国语', '2016-09-30 ', '0');
INSERT INTO `movie` VALUES ('5', '28岁未成年', '109', '55', '2D', '喜剧 / 爱情 / 奇幻', '#33000', '倪妮/霍建华/马苏/王大陆', '张末', '28岁的凉夏（倪妮饰）与34岁的茅亮（霍建华饰）相恋10年，她每天的愿望就是早日能与“白马王子”茅亮步入婚姻殿堂。然而，茅亮则正在筹备公司的第二轮融资的事情，根本无暇顾及凉夏的小心思。在闺蜜白晓柠（马苏饰）的婚礼上，凉夏向茅亮逼婚未遂，还被他提出分手。凉夏悲欢欲绝，吃了具有魔法能力的巧克力，这让她心智重返17岁身体却没有变化。装在大凉夏身体里的小凉夏偶遇并爱上了个性青年严岩（王大陆饰），而此时小凉夏年轻的心态以及对茅亮的冷漠的态度，又让茅亮重燃对她的兴趣。面对两段不同的感情，凉夏究竟会做出怎样的选择...', '/Uploads/2016-12-11/584ccf470948c.jpg', '中国', '国语', '2016-12-02 ', '1');
INSERT INTO `movie` VALUES ('6', '萨利机长', '96', '55', '2D', '剧情/传记', '#33ccff', '托德·考马尔尼基 / 切斯利·舒伦伯格 / 杰弗里·札斯洛', '克林特·伊斯特伍德', '影片改编自真实事件，2009年1月15日，前美国空军飞行员切斯利·萨伦伯格执飞全美航空1549号航班，从纽约飞往北卡罗来纳州。这架空中客车A320-214飞机起飞爬升过程中遭加拿大黑雁撞击，导致两具引擎同时熄火，飞机完全失去动力。萨伦伯格确认无法到达任何附近机场后，决定于哈德逊河河面进行迫降，最后155名乘客和机组人员全部生还。 ', '/Uploads/2016-12-11/presell_20161115105359', '美国', '英语', '2016-12-09 ', '1');
INSERT INTO `movie` VALUES ('7', '神奇动物在哪里', '133', '55', '2D', '冒险/家庭/奇幻', '#666699', '埃迪·雷德梅恩 / 凯瑟琳·沃特斯顿 / 丹·福勒 / 艾莉森·萨多尔 / 科林·法瑞尔', '大卫·叶茨', '《神奇动物在哪里》在《哈利·波特》系列中是霍格沃茨魔法学校“奇兽饲育学”（Magizoology）课的课本，作者是著名的魔法动物学家纽特·斯卡曼（Newt Scamander），书中详述了75种魔法动物的生活习性以及应当如何照顾它们。2001年罗琳将这本书在现实世界出版。 　　《神奇动物在哪里》原书只有54页，也没有什么故事情节，因此电影《神奇动物在哪里》的剧本是完完全全由罗琳全新创作的，而这也是罗琳首次涉足电影编剧的工作。据她透露，《神奇动物在哪里》既不是《哈利·波特》的续集、也不是前传，而是对这个魔法', '/Uploads/2016-12-11/584cdf9ef2f3e.jpg', '美国', '英语', '2016-11-25 ', '1');
INSERT INTO `movie` VALUES ('8', '海洋奇缘', '107', '55', '2D', '冒险/合家欢', '#990066', '道恩·强森 / 艾伦·图代克 / 杰梅奈·克莱门特 / 尼可·斯彻金格 / 特穆拉·莫里森', '罗恩·克莱蒙兹', '影片讲述了在很久之前的南太平洋上，航海世家出身的莫亚娜为了找寻传说中的神秘之岛踏上冒险之旅。旅途中，她与半神半人的毛伊结为伙伴，遇见了巨大的海洋生物、令人窒息的黑暗和古老的传说。 ', '/Uploads/2016-12-11/584ce00ee0408.jpg', '美国', '英语', '2016-11-25 ', '1');
INSERT INTO `movie` VALUES ('9', '佩小姐的奇幻城堡', '126', '55', '3D', '2016-12-02 ', '#cc00ff', '阿萨·巴特菲尔德 / 伊娃·格林 / 塞缪尔·杰克逊 / 朱迪·丹奇 / 艾拉·珀内尔', '蒂姆·波顿', '杰克（阿萨·巴特菲尔德 Asa Butterfield 饰）的爷爷自杰克还小的时候，就会常说床边故事给他听，故事中有许多拥有特殊能力的小孩。爷爷神秘死亡后，留下了关于这个属于另一个时空世界种种谜团的线索，杰克循着这些线索，进入了这个神秘的世界，发现这群奇怪的孩子真实存在，他们住在这里是为了躲避可怕的变异怪兽。随着杰克的到来，危险也同时抵达，杰克需要与这群孩子一起，抵御黑暗力量。 ', '/Uploads/2016-12-11/presell_20161122111005.jpg', '美国', '英语', '2016-12-02 ', '1');

-- ----------------------------
-- Table structure for relss
-- ----------------------------
DROP TABLE IF EXISTS `relss`;
CREATE TABLE `relss` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` varchar(255) DEFAULT NULL COMMENT '场次时间',
  `m_id` int(11) DEFAULT NULL COMMENT '电影关联id',
  `m_name` varchar(255) DEFAULT NULL COMMENT '电影名',
  `m_time` varchar(255) DEFAULT NULL COMMENT '电影时长',
  `m_price` varchar(255) DEFAULT NULL,
  `m_color` varchar(255) DEFAULT NULL,
  `play_type` varchar(255) CHARACTER SET armscii8 DEFAULT NULL COMMENT '类型',
  `h_id` int(11) DEFAULT NULL COMMENT '放映厅id',
  `h_name` varchar(255) DEFAULT NULL COMMENT '影厅标题',
  `start_time` varchar(255) DEFAULT NULL COMMENT '开始时间',
  `end_time` varchar(255) DEFAULT NULL COMMENT '结束时间',
  `seating` varchar(255) DEFAULT NULL COMMENT '座位数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relss
-- ----------------------------
INSERT INTO `relss` VALUES ('1', '2016-12-11', '2', '血战钢锯岭', '139', '55', '#0033ff', '2D', '1', '1号厅', '10:30', '12:49', '241');
INSERT INTO `relss` VALUES ('2', '2016-12-11', '2', '血战钢锯岭', '139', '55', '#0033ff', '2D', '1', '1号厅', '13:05', '15:24', '241');
INSERT INTO `relss` VALUES ('3', '2016-12-11', '2', '血战钢锯岭', '139', '55', '#0033ff', '2D', '1', '1号厅', '15:40', '17:59', '241');
INSERT INTO `relss` VALUES ('4', '2016-12-11', '2', '血战钢锯岭', '139', '55', '#0033ff', '2D', '1', '1号厅', '18:15', '20:34', '241');
INSERT INTO `relss` VALUES ('5', '2016-12-11', '2', '血战钢锯岭', '139', '55', '#0033ff', '2D', '1', '1号厅', '20:50', '23:09', '241');
INSERT INTO `relss` VALUES ('6', '2016-12-11', '2', '血战钢锯岭', '139', '55', '#0033ff', '2D', '2', '2号厅', '11:30', '13:49', '103');
INSERT INTO `relss` VALUES ('7', '2016-12-11', '2', '血战钢锯岭', '139', '55', '#0033ff', '2D', '2', '2号厅', '14:05', '16:24', '103');
INSERT INTO `relss` VALUES ('8', '2016-12-11', '2', '血战钢锯岭', '139', '55', '#0033ff', '2D', '2', '2号厅', '16:40', '18:59', '103');
INSERT INTO `relss` VALUES ('9', '2016-12-11', '2', '血战钢锯岭', '139', '55', '#0033ff', '2D', '2', '2号厅', '19:15', '21:34', '103');
INSERT INTO `relss` VALUES ('10', '2016-12-11', '2', '血战钢锯岭', '139', '55', '#0033ff', '2D', '2', '2号厅', '21:50', '00:09', '103');
INSERT INTO `relss` VALUES ('11', '2016-12-11', '6', '萨利机长', '96', '55', '#33ccff', '2D', '3', '3号厅', '10:25', '12:01', '107');
INSERT INTO `relss` VALUES ('12', '2016-12-11', '3', '你的名字', '107', '55', '#009966', '2D', '3', '3号厅', '12:10', '13:57', '107');
INSERT INTO `relss` VALUES ('13', '2016-12-11', '3', '你的名字', '107', '55', '#009966', '2D', '3', '3号厅', '14:15', '16:02', '107');
INSERT INTO `relss` VALUES ('14', '2016-12-11', '3', '你的名字', '107', '55', '#009966', '2D', '3', '3号厅', '16:20', '18:07', '107');
INSERT INTO `relss` VALUES ('15', '2016-12-11', '3', '你的名字', '107', '55', '#009966', '2D', '3', '3号厅', '18:25', '20:12', '107');
INSERT INTO `relss` VALUES ('16', '2016-12-11', '3', '你的名字', '107', '55', '#009966', '2D', '3', '3号厅', '20:30', '22:17', '107');
INSERT INTO `relss` VALUES ('17', '2016-12-11', '3', '你的名字', '107', '55', '#009966', '2D', '3', '3号厅', '22:35', '00:22', '107');
INSERT INTO `relss` VALUES ('18', '2016-12-11', '3', '你的名字', '107', '55', '#009966', '2D', '5', '5号厅', '11:10', '12:57', '167');
INSERT INTO `relss` VALUES ('19', '2016-12-11', '3', '你的名字', '107', '55', '#009966', '2D', '5', '5号厅', '13:15', '15:02', '167');
INSERT INTO `relss` VALUES ('20', '2016-12-11', '3', '你的名字', '107', '55', '#009966', '2D', '5', '5号厅', '15:20', '17:07', '167');
INSERT INTO `relss` VALUES ('21', '2016-12-11', '3', '你的名字', '107', '55', '#009966', '2D', '5', '5号厅', '17:25', '19:12', '167');
INSERT INTO `relss` VALUES ('22', '2016-12-11', '3', '你的名字', '107', '55', '#009966', '2D', '5', '5号厅', '19:30', '21:17', '167');
INSERT INTO `relss` VALUES ('23', '2016-12-11', '3', '你的名字', '107', '55', '#009966', '2D', '5', '5号厅', '21:35', '23:22', '167');
INSERT INTO `relss` VALUES ('24', '2016-12-11', '5', '28岁未成年', '109', '55', '#00ccff', '2D', '8', '8号厅', '11:50', '13:39', '112');
INSERT INTO `relss` VALUES ('25', '2016-12-11', '5', '28岁未成年', '109', '55', '#00ccff', '2D', '8', '8号厅', '13:55', '15:44', '112');
INSERT INTO `relss` VALUES ('26', '2016-12-11', '5', '28岁未成年', '109', '55', '#00ccff', '2D', '8', '8号厅', '16:00', '17:49', '112');
INSERT INTO `relss` VALUES ('27', '2016-12-11', '5', '28岁未成年', '109', '55', '#00ccff', '2D', '8', '8号厅', '18:05', '19:54', '112');
INSERT INTO `relss` VALUES ('28', '2016-12-11', '5', '28岁未成年', '109', '55', '#00ccff', '2D', '8', '8号厅', '20:10', '21:59', '112');
INSERT INTO `relss` VALUES ('29', '2016-12-11', '5', '28岁未成年', '109', '55', '#00ccff', '2D', '8', '8号厅', '22:15', '00:04', '112');
INSERT INTO `relss` VALUES ('30', '2016-12-11', '8', '海洋奇缘', '107', '55', '#990066', '2D', '4', '4号厅', '10:50', '12:37', '167');
INSERT INTO `relss` VALUES ('31', '2016-12-11', '8', '海洋奇缘', '107', '55', '#990066', '2D', '4', '4号厅', '12:55', '14:42', '167');
INSERT INTO `relss` VALUES ('32', '2016-12-11', '8', '海洋奇缘', '107', '55', '#990066', '2D', '4', '4号厅', '15:00', '16:47', '167');
INSERT INTO `relss` VALUES ('33', '2016-12-11', '8', '海洋奇缘', '107', '55', '#990066', '2D', '4', '4号厅', '17:05', '18:52', '167');
INSERT INTO `relss` VALUES ('34', '2016-12-11', '5', '28岁未成年', '109', '55', '#00ccff', '2D', '4', '4号厅', '19:10', '20:59', '167');
INSERT INTO `relss` VALUES ('35', '2016-12-11', '5', '28岁未成年', '109', '55', '#00ccff', '2D', '4', '4号厅', '21:15', '23:04', '167');
INSERT INTO `relss` VALUES ('36', '2016-12-11', '6', '萨利机长', '96', '55', '#33ccff', '2D', '6', '6号厅', '10:40', '12:16', '199');
INSERT INTO `relss` VALUES ('37', '2016-12-11', '9', '佩小姐的奇幻城堡', '126', '55', '#cc00ff', '2D', '6', '6号厅', '12:35', '14:41', '199');
INSERT INTO `relss` VALUES ('38', '2016-12-11', '6', '萨利机长', '96', '55', '#33ccff', '2D', '6', '6号厅', '15:05', '16:41', '199');
INSERT INTO `relss` VALUES ('39', '2016-12-11', '9', '佩小姐的奇幻城堡', '126', '55', '#cc00ff', '2D', '6', '6号厅', '17:00', '19:06', '199');
INSERT INTO `relss` VALUES ('40', '2016-12-11', '6', '萨利机长', '96', '55', '#33ccff', '2D', '6', '6号厅', '19:25', '21:01', '199');
INSERT INTO `relss` VALUES ('41', '2016-12-11', '9', '佩小姐的奇幻城堡', '126', '55', '#cc00ff', '2D', '6', '6号厅', '21:20', '23:26', '199');
INSERT INTO `relss` VALUES ('42', '2016-12-11', '7', '神奇动物在哪里', '133', '55', '#666699', '2D', '7', '7号厅', '11:00', '13:13', '243');
INSERT INTO `relss` VALUES ('43', '2016-12-11', '7', '神奇动物在哪里', '133', '55', '#666699', '2D', '7', '7号厅', '13:35', '15:48', '243');
INSERT INTO `relss` VALUES ('44', '2016-12-11', '7', '神奇动物在哪里', '133', '55', '#666699', '2D', '7', '7号厅', '16:10', '18:23', '243');
INSERT INTO `relss` VALUES ('45', '2016-12-11', '7', '神奇动物在哪里', '133', '55', '#666699', '2D', '7', '7号厅', '18:40', '20:53', '243');
INSERT INTO `relss` VALUES ('46', '2016-12-11', '7', '神奇动物在哪里', '133', '55', '#666699', '2D', '7', '7号厅', '21:10', '23:23', '243');
