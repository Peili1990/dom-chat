/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : dom

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-08-09 18:40:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `d_character`
-- ----------------------------
DROP TABLE IF EXISTS `d_character`;
CREATE TABLE `d_character` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL COMMENT '0 男 1 女 2 可男可女',
  `age` int(5) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `killer_avatar` varchar(255) DEFAULT NULL,
  `has_sp` varchar(1) DEFAULT NULL,
  `tag` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_character
-- ----------------------------
INSERT INTO `d_character` VALUES ('1', '爱德华', '0', '24', null, null, '1', null);
INSERT INTO `d_character` VALUES ('2', '马丁', '0', '31', null, null, '0', null);
INSERT INTO `d_character` VALUES ('3', '托马斯', '0', '29', null, null, '0', null);
INSERT INTO `d_character` VALUES ('4', '白瑞摩', '0', '33', null, null, '0', null);
INSERT INTO `d_character` VALUES ('5', '伊卡', '1', '20', null, null, '1', null);
INSERT INTO `d_character` VALUES ('6', '珀利', '1', '24', null, null, '0', null);
INSERT INTO `d_character` VALUES ('7', '莫利', '1', '28', null, null, '1', null);
INSERT INTO `d_character` VALUES ('8', '沃兹沃斯', '1', '27', null, null, '0', null);
INSERT INTO `d_character` VALUES ('9', '伊奥克', '0', '21', null, null, '0', null);
INSERT INTO `d_character` VALUES ('10', '奈斯', '0', '50', null, null, '0', null);
INSERT INTO `d_character` VALUES ('11', '曼顿', '0', '56', null, null, '0', null);
INSERT INTO `d_character` VALUES ('12', '朗斯特里特', '0', '43', null, null, '0', null);
INSERT INTO `d_character` VALUES ('13', '普拉马逊斯', '0', '45', null, null, '0', null);
INSERT INTO `d_character` VALUES ('14', '舒马赫', '1', '53', null, null, '0', null);
INSERT INTO `d_character` VALUES ('15', '道格拉斯', '1', '47', null, null, '0', null);
INSERT INTO `d_character` VALUES ('16', '科尔比', '1', '40', null, null, '0', null);
INSERT INTO `d_character` VALUES ('17', '欧希玛', '1', '49', null, null, '0', null);
INSERT INTO `d_character` VALUES ('18', '梅特卡夫', '0', '38', null, null, '0', null);
INSERT INTO `d_character` VALUES ('19', '哈代', '0', '63', null, null, '1', null);
INSERT INTO `d_character` VALUES ('20', '盖茨', '0', '66', null, null, '0', null);
INSERT INTO `d_character` VALUES ('21', '斯达福斯', '1', '67', null, null, '0', null);
INSERT INTO `d_character` VALUES ('22', '托兰', '1', '74', null, null, '0', null);
INSERT INTO `d_character` VALUES ('23', '查西', '0', '71', null, null, '0', null);
INSERT INTO `d_character` VALUES ('24', '斯布兰奇', '1', '64', null, null, '0', null);
INSERT INTO `d_character` VALUES ('25', '坦尼森', '1', '69', null, null, '0', null);
INSERT INTO `d_character` VALUES ('26', '德雷顿', '1', '65', null, null, '0', null);
INSERT INTO `d_character` VALUES ('27', '奎勒', '0', '78', null, null, '0', null);
INSERT INTO `d_character` VALUES ('28', '威廉姆斯', '0', '48', null, null, '1', null);
INSERT INTO `d_character` VALUES ('29', '尤里', '0', '36', null, null, '0', null);
INSERT INTO `d_character` VALUES ('30', '安德安纳', '0', '30', null, null, '0', null);
INSERT INTO `d_character` VALUES ('31', '劳伦', '0', '52', null, null, '1', null);
INSERT INTO `d_character` VALUES ('32', '豪', '1', '46', null, null, '0', null);
INSERT INTO `d_character` VALUES ('33', '阿修', '1', '45', null, null, '0', null);
INSERT INTO `d_character` VALUES ('34', '卡布莱', '1', '55', null, null, '0', null);
INSERT INTO `d_character` VALUES ('35', '叶什（妹）', '1', '22', null, null, '0', null);
INSERT INTO `d_character` VALUES ('36', '扬', '1', '26', null, null, '0', null);
INSERT INTO `d_character` VALUES ('37', '赫本', '1', '23', null, null, '0', null);
INSERT INTO `d_character` VALUES ('38', '卓尔', '0', '39', null, null, '1', null);
INSERT INTO `d_character` VALUES ('39', '艾尔威', '1', '73', null, null, '0', null);
INSERT INTO `d_character` VALUES ('40', '山纳', '0', '54', null, null, '0', null);
INSERT INTO `d_character` VALUES ('41', '叶什（兄）', '0', '35', null, null, '1', null);
INSERT INTO `d_character` VALUES ('42', '钱德勒', '2', '41', null, null, '0', null);
INSERT INTO `d_character` VALUES ('43', '霍尔', '1', '20', null, null, '1', null);
INSERT INTO `d_character` VALUES ('44', '恩菲尔德', '1', '0', null, null, '0', null);
INSERT INTO `d_character` VALUES ('45', '布莱克', '0', '80', null, null, '0', null);
INSERT INTO `d_character` VALUES ('46', '李', '0', '62', null, null, '0', null);
INSERT INTO `d_character` VALUES ('47', '厄金特', '1', '76', null, null, '0', null);
INSERT INTO `d_character` VALUES ('48', '昆西', '1', '34', null, null, '0', null);
INSERT INTO `d_character` VALUES ('49', '马克唐', '0', '77', null, null, '0', null);
INSERT INTO `d_character` VALUES ('50', '约翰逊', '1', '51', null, null, '1', null);
INSERT INTO `d_character` VALUES ('51', '欧内斯特', '1', '60', null, null, '0', null);
INSERT INTO `d_character` VALUES ('52', '浮士德', '0', '58', null, null, '0', null);
INSERT INTO `d_character` VALUES ('53', '德.圣地亚哥', '0', '72', null, null, '0', null);
INSERT INTO `d_character` VALUES ('54', '温切斯特', '2', '68', null, null, '0', null);

-- ----------------------------
-- Table structure for `d_form`
-- ----------------------------
DROP TABLE IF EXISTS `d_form`;
CREATE TABLE `d_form` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `game_id` bigint(11) DEFAULT NULL,
  `header` varchar(32) DEFAULT NULL,
  `content` longtext,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_form
-- ----------------------------
INSERT INTO `d_form` VALUES ('28', '1', '游戏开始前', '[{\"playerId\":5,\"characterName\":\"珀利\",\"isSp\":\"0\",\"sign\":null,\"identityDesc\":\"杀手（毒药瓶）\",\"camp\":2,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":8,\"characterName\":\"sp伊卡\",\"isSp\":\"1\",\"sign\":null,\"identityDesc\":\"官员\",\"camp\":1,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":10,\"characterName\":\"山纳\",\"isSp\":\"0\",\"sign\":null,\"identityDesc\":\"暴徒\",\"camp\":2,\"isLife\":1,\"isMute\":0,\"action\":\"查验A\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":11,\"characterName\":\"sp哈代\",\"isSp\":\"1\",\"sign\":null,\"identityDesc\":\"平民\",\"camp\":1,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":12,\"characterName\":\"爱德华\",\"isSp\":\"0\",\"sign\":null,\"identityDesc\":\"先驱\",\"camp\":1,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":13,\"characterName\":\"叶什（妹）\",\"isSp\":\"0\",\"sign\":null,\"identityDesc\":\"巫师\",\"camp\":2,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":14,\"characterName\":\"卓尔\",\"isSp\":\"0\",\"sign\":null,\"identityDesc\":\"间谍\",\"camp\":2,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":15,\"characterName\":\"白瑞摩\",\"isSp\":\"0\",\"sign\":null,\"identityDesc\":\"警察（雨伞）\",\"camp\":1,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":16,\"characterName\":\"赫本\",\"isSp\":\"0\",\"sign\":null,\"identityDesc\":\"平民\",\"camp\":1,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":17,\"characterName\":\"安德安纳\",\"isSp\":\"0\",\"sign\":null,\"identityDesc\":\"医生\",\"camp\":1,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":18,\"characterName\":\"科尔比\",\"isSp\":\"0\",\"sign\":null,\"identityDesc\":\"刺客\",\"camp\":1,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":19,\"characterName\":\"斯达福斯\",\"isSp\":\"0\",\"sign\":null,\"identityDesc\":\"杀手（手枪）\",\"camp\":2,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":20,\"characterName\":\"伊奥克\",\"isSp\":\"0\",\"sign\":null,\"identityDesc\":\"平民\",\"camp\":1,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":21,\"characterName\":\"奎勒\",\"isSp\":\"0\",\"sign\":null,\"identityDesc\":\"平民\",\"camp\":1,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":22,\"characterName\":\"厄金特\",\"isSp\":\"0\",\"sign\":null,\"identityDesc\":\"警察（放大镜）\",\"camp\":1,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":23,\"characterName\":\"sp叶什（兄）\",\"isSp\":\"1\",\"sign\":null,\"identityDesc\":\"小偷\",\"camp\":2,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":24,\"characterName\":\"温切斯特\",\"isSp\":\"0\",\"sign\":null,\"identityDesc\":\"牧师\",\"camp\":1,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":25,\"characterName\":\"昆西\",\"isSp\":\"0\",\"sign\":null,\"identityDesc\":\"平民\",\"camp\":1,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"},{\"playerId\":26,\"characterName\":\"马丁\",\"isSp\":\"0\",\"sign\":null,\"identityDesc\":\"帮众\",\"camp\":2,\"isLife\":1,\"isMute\":0,\"action\":\"\",\"privilege\":\"\",\"feedback\":\"\",\"vote\":\"\",\"submitTime\":null,\"remark\":\"\"}]', '2016-07-25 18:04:41', '2016-07-25 18:05:09');
INSERT INTO `d_form` VALUES ('29', '1', '第一夜', null, '2016-07-25 18:05:09', null);

-- ----------------------------
-- Table structure for `d_game`
-- ----------------------------
DROP TABLE IF EXISTS `d_game`;
CREATE TABLE `d_game` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(32) DEFAULT NULL,
  `character_select` varchar(1) DEFAULT NULL COMMENT 'A 个人选择 B 3选1',
  `player_num` int(5) DEFAULT NULL,
  `status` int(5) DEFAULT NULL COMMENT '0 取消 1 报名中 2 报名结束 3游戏开始前 4 进行中 5 复盘中 9 已结束',
  `estimated_start_date` date DEFAULT NULL,
  `actual_start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `qq_group` varchar(32) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_game
-- ----------------------------
INSERT INTO `d_game` VALUES ('1', '16NV', 'B', '19', '3', '2016-07-15', null, null, null, null);
INSERT INTO `d_game` VALUES ('5', '20NV', 'A', '19', '1', '2016-07-26', null, null, '132697360', '');

-- ----------------------------
-- Table structure for `d_kick_record`
-- ----------------------------
DROP TABLE IF EXISTS `d_kick_record`;
CREATE TABLE `d_kick_record` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `game_id` bigint(11) DEFAULT NULL,
  `judger_user_id` bigint(11) DEFAULT NULL,
  `player_user_id` bigint(11) DEFAULT NULL,
  `reason` varchar(64) DEFAULT NULL,
  `kick_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_kick_record
-- ----------------------------
INSERT INTO `d_kick_record` VALUES ('5', '5', '22', '23', '混子', '2016-07-29 18:06:04');
INSERT INTO `d_kick_record` VALUES ('6', '5', '22', '23', '混子', '2016-07-29 18:09:30');

-- ----------------------------
-- Table structure for `d_newspaper`
-- ----------------------------
DROP TABLE IF EXISTS `d_newspaper`;
CREATE TABLE `d_newspaper` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `game_id` bigint(11) DEFAULT NULL,
  `header` varchar(32) DEFAULT NULL,
  `headline` varchar(64) DEFAULT NULL,
  `headline_body` text,
  `subedition` text,
  `important_notice` text,
  `seat_table` text,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `type` int(1) unsigned zerofill DEFAULT '0' COMMENT '1 夜刊 2 日刊',
  `status` int(1) DEFAULT NULL COMMENT '2 已结束发言 1 已发布 0 未发布',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_newspaper
-- ----------------------------
INSERT INTO `d_newspaper` VALUES ('1', '5', '7月5日日刊（开版公告）', '小镇受西部铁路公司200万美元投资垂青', '本市西部仅两站<br>维多利亚讯 据可靠消息，今日下午，西部铁路公司董事会发言人特理·亨德曼表明，其第二大股东亨利.刘易斯（左图）即将对本市行政区域内的维多利亚镇进行大规模投资，由铁路运输业带动铁矿、石油的初期计划已经草拟成案。经济学家称该举措即将带来临近地区就业的重整，治安专家则担心大额外来人员对本地区的影响。中部铁运则表明，在铁路运重创的6月后进行这种冒险之举不具长期眼光。<br>维多利亚镇普通镇民，书记官温彻斯特太太表示，“这预示一种时代的变化。当蒸汽机车最终被内燃机车取代的时候，我们知道有些东西不同了。”', '2版政治：在野党质疑政府监管<br>2版经济：周边带动理论 <br>2版金融：华尔街芝加哥工业指数上升24% <br>7版：维多利亚镇的介绍 <br><br>4版<br>西部铁路公司收到匿名警告信 犯罪专家称或非无稽之谈 <br>芝加哥讯 西部铁路公司芝加哥分所近日收到恐吓信，据平克顿侦探所透露，此信来向可推为维多利亚镇。目前警方没有明确透露信的具体内容，但据称为某一组织的某些人员向西部铁路公司某些高层追索“欠款”，并扬言“你们，都得死”。 <br>有证券交易所表明，6月后的会计工作使证券持有人对西部铁路公司表示乐观，然而始终有声音质疑为何西部铁路公司能在6月的N.劳兄弟公司铁路重大事故后保持账面未有亏损。', '哈代死亡。<br><br>哈代遗言：', '<table>\r\n				<tbody>\r\n					<tr>\r\n						<td>恩菲尔德</td>\r\n						<td align=\"center\">霍尔</td>\r\n						<td align=\"right\">欧内斯特</td>\r\n					</tr>\r\n					<tr>\r\n						<td></td>\r\n						<td></td>\r\n						<td align=\"right\">叶妹</td>\r\n					</tr>\r\n					<tr>\r\n						<td>叶兄</td>\r\n						<td></td>\r\n						<td align=\"right\">安德安纳</td>\r\n					</tr>\r\n					<tr>\r\n						<td>哈代【死亡】</td>\r\n						<td></td>\r\n						<td align=\"right\">马克唐</td>\r\n					</tr>\r\n					<tr>\r\n						<td>白瑞摩</td>\r\n						<td></td>\r\n						<td align=\"right\">圣地亚哥</td>\r\n					</tr>\r\n					<tr>\r\n						<td>赫本</td>\r\n						<td></td>\r\n						<td align=\"right\">科尔比</td>\r\n					</tr>\r\n					<tr>\r\n						<td>莫利</td>\r\n						<td></td>\r\n						<td align=\"right\">（布莱克）</td>\r\n					</tr>\r\n					<tr>\r\n						<td>普拉马逊斯</td>\r\n						<td></td>\r\n						<td align=\"right\">昆西</td>\r\n					</tr>\r\n					<tr>\r\n						<td>艾尔威</td>\r\n						<td align=\"center\">劳伦</td>\r\n						<td align=\"right\">伊卡</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>', '2016-07-25 18:03:37', null, '2', '1');
INSERT INTO `d_newspaper` VALUES ('2', '1', '7月5日夜刊（开版公告）', '小镇受西部铁路公司200万美元投资垂青', '本市西部仅两站<br>维多利亚讯 据可靠消息，今日下午，西部铁路公司董事会发言人特理·亨德曼表明，其第二大股东亨利.刘易斯（左图）即将对本市行政区域内的维多利亚镇进行大规模投资，由铁路运输业带动铁矿、石油的初期计划已经草拟成案。经济学家称该举措即将带来临近地区就业的重整，治安专家则担心大额外来人员对本地区的影响。中部铁运则表明，在铁路运重创的6月后进行这种冒险之举不具长期眼光。<br>维多利亚镇普通镇民，书记官温彻斯特太太表示，“这预示一种时代的变化。当蒸汽机车最终被内燃机车取代的时候，我们知道有些东西不同了。”', '2版政治：在野党质疑政府监管<br>2版经济：周边带动理论 <br>2版金融：华尔街芝加哥工业指数上升24%  <br>5版 柏林会议进展不顺 <br>6版 清帝国使者离开纽约 <br>7版：维多利亚镇的介绍<br>8版 独立日烟火不慎造成男童落水 <br><br>4版<br>西部铁路公司收到匿名警告信 犯罪专家称或非无稽之谈 <br>芝加哥讯 西部铁路公司芝加哥分所近日收到恐吓信，据平克顿侦探所透露，此信来向可推为维多利亚镇。目前警方没有明确透露信的具体内容，但据称为某一组织的某些人员向西部铁路公司某些高层追索“欠款”，并扬言“你们，都得死”。 <br>有证券交易所表明，6月后的会计工作使证券持有人对西部铁路公司表示乐观，然而始终有声音质疑为何西部铁路公司能在6月的N.劳兄弟公司铁路重大事故后保持账面未有亏损。', '哈代死亡。<br><br>哈代遗言：', '<table><tbody><tr><td>珀利</td><td align=\"center\">伊卡</td><td align=\"right\">山纳</td></tr><tr><td></td><td></td><td align=\"right\">哈代</td></tr><tr><td>马丁</td><td></td><td align=\"right\">爱德华</td></tr><tr><td>昆西</td><td></td><td align=\"right\">叶什（妹）</td></tr><tr><td>温切斯特</td><td></td><td align=\"right\">卓尔</td></tr><tr><td>叶什（兄）</td><td></td><td align=\"right\">白瑞摩</td></tr><tr><td>厄金特</td><td></td><td align=\"right\">赫本</td></tr><tr><td>奎勒</td><td></td><td align=\"right\">安德安纳</td></tr><tr><td>伊奥克</td><td align=\"center\">斯达福斯</td><td align=\"right\">科尔比</td></tr></tbody></table>', '2016-07-27 17:07:07', '2016-08-05 10:43:07', '2', '1');

-- ----------------------------
-- Table structure for `d_offline_message`
-- ----------------------------
DROP TABLE IF EXISTS `d_offline_message`;
CREATE TABLE `d_offline_message` (
  `id` bigint(11) NOT NULL,
  `user_id` bigint(11) DEFAULT NULL,
  `chat_id` bigint(11) DEFAULT NULL,
  `content` text,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_offline_message
-- ----------------------------

-- ----------------------------
-- Table structure for `d_offline_speech`
-- ----------------------------
DROP TABLE IF EXISTS `d_offline_speech`;
CREATE TABLE `d_offline_speech` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(11) DEFAULT NULL,
  `speech_id` bigint(11) DEFAULT NULL,
  `newspaper_id` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1588 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_offline_speech
-- ----------------------------
INSERT INTO `d_offline_speech` VALUES ('1060', '3', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1061', '4', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1062', '6', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1063', '1', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1064', '5', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1065', '7', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1066', '9', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1067', '10', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1068', '11', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1069', '12', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1070', '13', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1071', '14', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1072', '16', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1073', '17', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1074', '18', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1076', '20', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1077', '21', '107', '2');
INSERT INTO `d_offline_speech` VALUES ('1078', '3', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1079', '4', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1080', '6', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1081', '1', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1082', '5', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1083', '7', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1084', '9', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1085', '10', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1086', '11', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1087', '12', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1088', '13', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1089', '14', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1090', '16', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1091', '17', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1092', '18', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1094', '20', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1095', '21', '108', '2');
INSERT INTO `d_offline_speech` VALUES ('1096', '3', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1097', '4', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1098', '6', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1099', '1', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1100', '5', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1101', '7', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1102', '9', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1103', '10', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1104', '11', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1105', '12', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1106', '13', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1107', '14', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1108', '16', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1109', '17', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1110', '18', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1112', '20', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1113', '21', '109', '2');
INSERT INTO `d_offline_speech` VALUES ('1114', '3', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1115', '4', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1116', '6', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1117', '1', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1118', '5', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1119', '7', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1120', '9', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1121', '10', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1122', '11', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1123', '12', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1124', '13', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1125', '14', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1126', '16', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1127', '17', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1128', '18', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1130', '20', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1131', '21', '110', '2');
INSERT INTO `d_offline_speech` VALUES ('1132', '3', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1133', '4', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1134', '6', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1135', '1', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1136', '5', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1137', '7', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1138', '9', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1139', '10', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1140', '11', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1141', '12', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1142', '13', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1143', '14', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1145', '16', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1146', '17', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1147', '18', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1149', '20', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1150', '21', '111', '2');
INSERT INTO `d_offline_speech` VALUES ('1151', '3', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1152', '4', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1153', '6', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1154', '1', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1155', '5', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1156', '7', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1157', '9', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1158', '10', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1159', '11', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1160', '12', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1161', '13', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1162', '14', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1164', '16', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1165', '17', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1166', '18', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1168', '20', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1169', '21', '112', '2');
INSERT INTO `d_offline_speech` VALUES ('1170', '3', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1171', '4', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1172', '6', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1173', '1', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1174', '5', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1175', '7', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1176', '9', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1177', '10', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1178', '11', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1179', '12', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1180', '13', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1181', '14', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1183', '16', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1184', '17', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1185', '18', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1187', '20', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1188', '21', '113', '2');
INSERT INTO `d_offline_speech` VALUES ('1189', '3', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1190', '4', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1191', '6', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1192', '1', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1193', '5', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1194', '7', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1195', '9', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1196', '10', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1197', '11', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1198', '12', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1199', '13', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1200', '14', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1201', '16', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1202', '17', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1203', '18', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1205', '20', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1206', '21', '114', '2');
INSERT INTO `d_offline_speech` VALUES ('1207', '3', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1208', '4', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1209', '6', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1210', '1', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1211', '5', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1212', '7', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1213', '9', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1214', '10', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1215', '11', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1216', '12', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1217', '13', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1218', '14', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1220', '16', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1221', '17', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1222', '18', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1224', '20', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1225', '21', '115', '2');
INSERT INTO `d_offline_speech` VALUES ('1226', '3', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1227', '4', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1228', '6', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1229', '1', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1230', '5', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1231', '7', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1232', '9', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1233', '10', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1234', '11', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1235', '12', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1236', '13', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1237', '14', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1239', '16', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1240', '17', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1241', '18', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1243', '20', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1244', '21', '116', '2');
INSERT INTO `d_offline_speech` VALUES ('1245', '3', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1246', '4', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1247', '6', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1248', '1', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1249', '5', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1250', '7', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1251', '9', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1252', '10', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1253', '11', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1254', '12', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1255', '13', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1256', '14', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1257', '16', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1258', '17', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1259', '18', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1261', '20', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1262', '21', '117', '2');
INSERT INTO `d_offline_speech` VALUES ('1263', '3', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1264', '4', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1265', '6', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1266', '1', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1267', '5', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1268', '7', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1269', '9', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1270', '10', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1271', '11', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1272', '12', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1273', '13', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1274', '14', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1275', '16', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1276', '17', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1277', '18', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1279', '20', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1280', '21', '118', '2');
INSERT INTO `d_offline_speech` VALUES ('1281', '3', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1282', '4', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1283', '6', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1284', '1', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1285', '5', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1286', '7', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1287', '9', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1288', '10', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1289', '11', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1290', '12', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1291', '13', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1292', '14', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1293', '16', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1294', '17', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1295', '18', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1297', '20', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1298', '21', '119', '2');
INSERT INTO `d_offline_speech` VALUES ('1299', '3', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1300', '4', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1301', '6', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1302', '1', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1303', '5', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1304', '7', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1305', '9', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1306', '10', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1307', '11', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1308', '12', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1309', '13', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1310', '14', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1311', '16', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1312', '17', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1313', '18', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1315', '20', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1316', '21', '120', '2');
INSERT INTO `d_offline_speech` VALUES ('1317', '3', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1318', '4', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1319', '6', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1320', '1', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1321', '5', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1322', '7', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1323', '9', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1324', '10', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1325', '11', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1326', '12', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1327', '13', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1328', '14', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1329', '16', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1330', '17', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1331', '18', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1333', '20', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1334', '21', '121', '2');
INSERT INTO `d_offline_speech` VALUES ('1335', '3', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1336', '4', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1337', '6', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1338', '1', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1339', '5', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1340', '7', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1341', '9', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1342', '10', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1343', '11', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1344', '12', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1345', '13', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1346', '14', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1347', '16', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1348', '17', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1349', '18', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1351', '20', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1352', '21', '122', '2');
INSERT INTO `d_offline_speech` VALUES ('1354', '3', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1355', '4', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1356', '6', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1357', '1', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1358', '5', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1359', '7', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1360', '9', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1361', '10', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1362', '11', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1363', '12', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1364', '13', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1365', '14', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1366', '16', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1367', '17', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1368', '18', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1370', '20', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1371', '21', '123', '2');
INSERT INTO `d_offline_speech` VALUES ('1374', '3', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1375', '4', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1376', '6', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1377', '1', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1378', '5', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1379', '7', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1380', '8', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1381', '9', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1382', '10', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1383', '11', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1384', '12', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1385', '13', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1386', '14', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1388', '16', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1389', '17', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1390', '18', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1391', '20', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1392', '21', '124', '2');
INSERT INTO `d_offline_speech` VALUES ('1394', '3', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1395', '4', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1396', '6', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1397', '1', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1398', '5', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1399', '7', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1400', '8', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1401', '9', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1402', '10', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1403', '11', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1404', '12', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1405', '13', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1406', '14', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1408', '16', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1409', '17', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1410', '18', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1411', '20', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1412', '21', '125', '2');
INSERT INTO `d_offline_speech` VALUES ('1414', '3', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1415', '4', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1416', '6', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1417', '1', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1418', '5', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1419', '7', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1420', '8', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1421', '9', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1422', '10', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1423', '11', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1424', '12', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1425', '13', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1426', '14', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1428', '16', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1429', '17', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1430', '18', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1431', '20', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1432', '21', '126', '2');
INSERT INTO `d_offline_speech` VALUES ('1434', '3', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1435', '4', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1436', '6', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1437', '1', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1438', '5', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1439', '7', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1440', '8', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1441', '9', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1442', '10', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1443', '11', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1444', '12', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1445', '13', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1446', '14', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1447', '16', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1448', '17', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1449', '18', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1450', '20', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1451', '21', '127', '2');
INSERT INTO `d_offline_speech` VALUES ('1454', '3', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1455', '4', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1456', '6', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1457', '1', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1458', '5', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1459', '7', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1460', '8', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1461', '9', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1462', '10', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1463', '11', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1464', '12', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1465', '13', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1466', '14', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1467', '16', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1468', '17', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1469', '18', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1470', '20', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1471', '21', '128', '2');
INSERT INTO `d_offline_speech` VALUES ('1474', '3', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1475', '4', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1476', '6', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1477', '1', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1478', '5', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1479', '7', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1480', '8', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1481', '9', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1482', '10', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1483', '11', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1484', '12', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1485', '13', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1486', '14', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1487', '16', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1488', '17', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1489', '18', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1490', '20', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1491', '21', '129', '2');
INSERT INTO `d_offline_speech` VALUES ('1494', '3', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1495', '4', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1496', '6', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1497', '1', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1498', '5', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1499', '7', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1500', '8', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1501', '9', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1502', '10', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1503', '11', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1504', '12', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1505', '13', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1506', '14', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1508', '16', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1509', '17', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1510', '18', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1511', '20', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1512', '21', '130', '2');
INSERT INTO `d_offline_speech` VALUES ('1513', '3', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1514', '4', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1515', '6', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1516', '1', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1517', '5', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1518', '7', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1519', '8', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1520', '9', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1521', '10', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1522', '11', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1523', '12', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1524', '13', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1525', '14', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1527', '16', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1528', '17', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1529', '18', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1531', '20', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1532', '21', '131', '2');
INSERT INTO `d_offline_speech` VALUES ('1533', '3', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1534', '4', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1535', '6', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1536', '1', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1537', '5', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1538', '7', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1539', '8', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1540', '9', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1541', '10', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1542', '11', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1543', '12', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1544', '13', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1545', '14', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1547', '16', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1548', '17', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1549', '18', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1550', '20', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1551', '21', '132', '2');
INSERT INTO `d_offline_speech` VALUES ('1552', '3', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1553', '4', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1554', '6', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1555', '1', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1556', '5', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1557', '7', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1558', '8', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1559', '9', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1560', '10', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1561', '11', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1562', '12', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1563', '13', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1564', '14', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1565', '16', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1566', '17', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1567', '18', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1568', '20', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1569', '21', '133', '2');
INSERT INTO `d_offline_speech` VALUES ('1570', '3', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1571', '4', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1572', '6', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1573', '1', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1574', '5', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1575', '7', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1576', '8', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1577', '9', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1578', '10', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1579', '11', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1580', '12', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1581', '13', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1582', '14', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1583', '16', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1584', '17', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1585', '18', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1586', '20', '134', '2');
INSERT INTO `d_offline_speech` VALUES ('1587', '21', '134', '2');

-- ----------------------------
-- Table structure for `d_player`
-- ----------------------------
DROP TABLE IF EXISTS `d_player`;
CREATE TABLE `d_player` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(11) DEFAULT NULL,
  `role` varchar(32) DEFAULT NULL,
  `game_id` bigint(11) DEFAULT NULL,
  `status` int(5) DEFAULT NULL COMMENT '0 已报名 1待选外在角色 2待3选1 3已选外在身份 4已查看实际身份 7备选法官 8法官 9 已结束',
  `apply_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_player
-- ----------------------------
INSERT INTO `d_player` VALUES ('1', '2', 'judger', '1', '8', '0000-00-00 00:00:00');
INSERT INTO `d_player` VALUES ('2', '3', 'judger', '1', '8', '0000-00-00 00:00:00');
INSERT INTO `d_player` VALUES ('5', '4', 'player', '1', '3', '2016-07-11 14:38:24');
INSERT INTO `d_player` VALUES ('8', '6', 'player', '1', '3', '2016-07-15 11:45:32');
INSERT INTO `d_player` VALUES ('10', '1', 'player', '1', '3', '2016-07-18 10:02:41');
INSERT INTO `d_player` VALUES ('11', '5', 'player', '1', '3', '2016-07-18 11:01:23');
INSERT INTO `d_player` VALUES ('12', '7', 'player', '1', '3', '2016-07-18 11:01:39');
INSERT INTO `d_player` VALUES ('13', '8', 'player', '1', '3', '2016-07-18 11:01:52');
INSERT INTO `d_player` VALUES ('14', '9', 'player', '1', '3', '2016-07-18 11:02:01');
INSERT INTO `d_player` VALUES ('15', '10', 'player', '1', '3', '2016-07-18 11:02:22');
INSERT INTO `d_player` VALUES ('16', '11', 'player', '1', '3', '2016-07-18 11:02:31');
INSERT INTO `d_player` VALUES ('17', '12', 'player', '1', '3', '2016-07-18 11:02:40');
INSERT INTO `d_player` VALUES ('18', '13', 'player', '1', '3', '2016-07-18 11:02:48');
INSERT INTO `d_player` VALUES ('19', '14', 'player', '1', '3', '2016-07-18 11:03:31');
INSERT INTO `d_player` VALUES ('20', '15', 'player', '1', '3', '2016-07-18 11:03:36');
INSERT INTO `d_player` VALUES ('21', '16', 'player', '1', '3', '2016-07-18 11:03:42');
INSERT INTO `d_player` VALUES ('22', '17', 'player', '1', '3', '2016-07-18 11:04:10');
INSERT INTO `d_player` VALUES ('23', '18', 'player', '1', '3', '2016-07-18 11:04:15');
INSERT INTO `d_player` VALUES ('24', '19', 'player', '1', '3', '2016-07-18 11:04:21');
INSERT INTO `d_player` VALUES ('25', '20', 'player', '1', '3', '2016-07-18 11:04:26');
INSERT INTO `d_player` VALUES ('26', '21', 'player', '1', '3', '2016-07-18 11:04:31');
INSERT INTO `d_player` VALUES ('30', '22', 'judger', '5', '8', '2016-07-25 18:03:28');
INSERT INTO `d_player` VALUES ('33', '24', 'player', '5', '3', '2016-07-29 15:55:44');
INSERT INTO `d_player` VALUES ('36', '23', 'player', '5', '1', '2016-07-29 18:09:50');

-- ----------------------------
-- Table structure for `d_player_record`
-- ----------------------------
DROP TABLE IF EXISTS `d_player_record`;
CREATE TABLE `d_player_record` (
  `player_id` bigint(11) NOT NULL,
  `character_id` int(5) DEFAULT NULL,
  `is_sp` varchar(1) DEFAULT '' COMMENT '是否是sp',
  `apply_pioneer` varchar(1) DEFAULT NULL,
  `sign` int(5) DEFAULT '0',
  `identity_desc` varchar(32) DEFAULT NULL,
  `position` int(2) DEFAULT NULL,
  `camp` int(1) DEFAULT NULL,
  `is_life` int(1) DEFAULT NULL COMMENT '0 死亡 1 存活 ',
  `is_mute` int(1) DEFAULT NULL COMMENT '0 未被禁言 1 被禁言',
  `action` varchar(255) DEFAULT NULL,
  `privilege` varchar(255) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `vote` varchar(255) DEFAULT NULL,
  `submit_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_player_record
-- ----------------------------
INSERT INTO `d_player_record` VALUES ('5', '6', '0', '1', '15', '杀手（毒药瓶）', '1', '2', '1', '0', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('8', '5', '1', '0', '10', '官员', '2', '1', '1', '0', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('10', '40', '0', '0', '22', '暴徒', '3', '2', '1', '0', '红色信封 山纳', '', '', '', '2016-07-29 16:38:23', '');
INSERT INTO `d_player_record` VALUES ('11', '19', '1', '0', '11', '平民', '4', '1', '1', '0', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('12', '1', '0', '1', '12', '先驱', '5', '1', '1', '0', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('13', '35', '0', '0', '21', '巫师', '6', '2', '1', '0', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('14', '38', '0', '0', '20', '间谍', '7', '2', '1', '0', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('15', '4', '0', '0', '4', '警察（雨伞）', '8', '1', '1', '0', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('16', '37', '0', '0', '11', '平民', '9', '1', '1', '0', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('17', '30', '0', '0', '9', '医生', '10', '1', '1', '0', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('18', '16', '0', '0', '8', '刺客', '11', '1', '1', '0', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('19', '21', '0', '0', '14', '杀手（手枪）', '12', '2', '1', '0', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('20', '9', '0', '0', '11', '平民', '13', '1', '1', '2', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('21', '27', '0', '0', '11', '平民', '14', '1', '1', '0', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('22', '47', '0', '1', '2', '警察（放大镜）', '15', '1', '1', '0', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('23', '41', '1', '0', '19', '小偷', '16', '2', '1', '0', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('24', '54', '0', '0', '7', '牧师', '17', '1', '1', '2', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('25', '48', '0', '0', '11', '平民', '18', '1', '1', '0', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('26', '2', '0', '1', '23', '帮众', '19', '2', '1', '0', '', '', '', '', null, '');
INSERT INTO `d_player_record` VALUES ('33', '2', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `d_replace_skin`
-- ----------------------------
DROP TABLE IF EXISTS `d_replace_skin`;
CREATE TABLE `d_replace_skin` (
  `id` bigint(11) NOT NULL,
  `player_id` bigint(11) DEFAULT NULL,
  `character_name` varchar(32) DEFAULT NULL,
  `character_avatar` varchar(32) DEFAULT NULL,
  `is_mute` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_replace_skin
-- ----------------------------

-- ----------------------------
-- Table structure for `d_sign`
-- ----------------------------
DROP TABLE IF EXISTS `d_sign`;
CREATE TABLE `d_sign` (
  `id` int(5) NOT NULL DEFAULT '0',
  `identity` varchar(32) DEFAULT NULL,
  `desc` varchar(32) DEFAULT NULL,
  `camp` int(1) DEFAULT NULL COMMENT '1 好人方 2 杀手方 3 契约方',
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_sign
-- ----------------------------
INSERT INTO `d_sign` VALUES ('1', '警察', '手铐', '1', null);
INSERT INTO `d_sign` VALUES ('2', '警察', '放大镜', '1', null);
INSERT INTO `d_sign` VALUES ('3', '警察', '星型警徽', '1', null);
INSERT INTO `d_sign` VALUES ('4', '警察', '雨伞', '1', null);
INSERT INTO `d_sign` VALUES ('5', '警察', '问号', '1', null);
INSERT INTO `d_sign` VALUES ('6', '警察', '天窗', '1', null);
INSERT INTO `d_sign` VALUES ('7', '牧师', '十字架', '1', null);
INSERT INTO `d_sign` VALUES ('8', '刺客', '弓箭', '1', null);
INSERT INTO `d_sign` VALUES ('9', '医生', '针筒', '1', null);
INSERT INTO `d_sign` VALUES ('10', '官员', '橡皮印章', '1', null);
INSERT INTO `d_sign` VALUES ('11', '平民', '钱币', '1', null);
INSERT INTO `d_sign` VALUES ('12', '先驱', '燃烧的钱币', '1', null);
INSERT INTO `d_sign` VALUES ('13', '杀手', '刀', '2', null);
INSERT INTO `d_sign` VALUES ('14', '杀手', '手枪', '2', null);
INSERT INTO `d_sign` VALUES ('15', '杀手', '毒药瓶', '2', null);
INSERT INTO `d_sign` VALUES ('16', '杀手', '套索', '2', null);
INSERT INTO `d_sign` VALUES ('17', '杀手', '棍', '2', null);
INSERT INTO `d_sign` VALUES ('18', '杀手', '扑克牌', '2', null);
INSERT INTO `d_sign` VALUES ('19', '小偷', '钳子', '2', null);
INSERT INTO `d_sign` VALUES ('20', '间谍', '眼镜', '2', null);
INSERT INTO `d_sign` VALUES ('21', '巫师', '手杖', '2', null);
INSERT INTO `d_sign` VALUES ('22', '暴徒', '炸药', '2', null);
INSERT INTO `d_sign` VALUES ('23', '帮众', '沾血的钱币', '2', null);
INSERT INTO `d_sign` VALUES ('24', null, '契约', '3', null);

-- ----------------------------
-- Table structure for `d_speech`
-- ----------------------------
DROP TABLE IF EXISTS `d_speech`;
CREATE TABLE `d_speech` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `player_id` bigint(11) DEFAULT NULL,
  `character_name` varchar(32) DEFAULT NULL,
  `character_avatar` varchar(64) DEFAULT NULL,
  `newspaper_id` bigint(11) DEFAULT NULL,
  `content` text,
  `create_time` varchar(32) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '1 发言 2 动作 3 公告',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_speech
-- ----------------------------
INSERT INTO `d_speech` VALUES ('134', '20', '伊奥克', null, '2', '经府童清芝济在上华质治利 5政<br>街<br>版 介周水林2：政议 %烟尔顺落指8者升日野带国展 纽镇<br>不版理 独版帝：2立疑慎约：论哥开版边不版 加动业柏4会监数进2的成6金版多<br>火<br>融7工党造管亚维使版男： <br>绍2离', '2016/08/09 17:55:57', '1');

-- ----------------------------
-- Table structure for `d_user`
-- ----------------------------
DROP TABLE IF EXISTS `d_user`;
CREATE TABLE `d_user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_user
-- ----------------------------
INSERT INTO `d_user` VALUES ('1', 'jack3173', 'yesterday', '小风', null, null, null);
INSERT INTO `d_user` VALUES ('2', 'jack3174', 'yesterday', '大风', null, '2016-07-05 13:47:10', null);
INSERT INTO `d_user` VALUES ('3', 'jack3175', 'yesterday', '微风', null, '2016-07-06 13:12:35', null);
INSERT INTO `d_user` VALUES ('4', 'jack3176', 'yesterday', '飓风', null, '2016-07-06 15:54:53', null);
INSERT INTO `d_user` VALUES ('5', 'jack3178', 'yesterday', '轻风', null, '2016-07-11 14:50:47', null);
INSERT INTO `d_user` VALUES ('6', 'jack3179', 'yesterday', '凉风', null, '2016-07-15 11:45:15', null);
INSERT INTO `d_user` VALUES ('7', 'jack3180', 'yesterday', '大大', null, '2016-07-18 10:39:08', null);
INSERT INTO `d_user` VALUES ('8', 'jack3181', 'yesterday', '小小', null, '2016-07-19 10:39:26', null);
INSERT INTO `d_user` VALUES ('9', 'jack3182', 'yesterday', '多多', null, '2016-07-18 10:39:50', null);
INSERT INTO `d_user` VALUES ('10', 'jack3183', 'yesterday', '少少', null, '2016-07-18 10:40:26', null);
INSERT INTO `d_user` VALUES ('11', 'jack3184', 'yesterday', '慢慢', null, '2016-07-18 10:40:45', null);
INSERT INTO `d_user` VALUES ('12', 'jack3185', 'yesterday', '快快', null, '2016-07-18 10:41:03', null);
INSERT INTO `d_user` VALUES ('13', 'jack3186', 'yesterday', '宁静', null, '2016-07-19 10:41:23', null);
INSERT INTO `d_user` VALUES ('14', 'jack3187', 'yesterday', '行行', null, '2016-07-18 10:41:38', null);
INSERT INTO `d_user` VALUES ('15', 'jack3188', 'yesterday', '是的', null, '2016-07-18 10:58:11', null);
INSERT INTO `d_user` VALUES ('16', 'jack3189', 'yesterday', '期望', null, '2016-07-18 10:58:27', null);
INSERT INTO `d_user` VALUES ('17', 'jack3190', 'yesterday', '欧尼', null, '2016-07-18 10:58:45', null);
INSERT INTO `d_user` VALUES ('18', 'jack3191', 'yesterday', '而我', null, '2016-07-18 10:59:04', null);
INSERT INTO `d_user` VALUES ('19', 'jack3192', 'yesterday', '人头', null, '2016-07-18 10:59:18', null);
INSERT INTO `d_user` VALUES ('20', 'jack3193', 'yesterday', '框架', null, '2016-07-18 10:59:32', null);
INSERT INTO `d_user` VALUES ('21', 'jack3194', 'yesterday', '吃饭', null, '2016-07-18 11:00:25', null);
INSERT INTO `d_user` VALUES ('22', 'jack3172', 'yesterday', '美美', null, '2016-07-25 17:52:37', null);
INSERT INTO `d_user` VALUES ('23', 'jack3171', 'yesterday', '飞飞', null, '2016-07-29 10:51:08', null);
INSERT INTO `d_user` VALUES ('24', 'jack3170', 'yesterday', '随机', null, '2016-07-29 15:55:30', null);
