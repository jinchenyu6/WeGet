/*
 Navicat Premium Data Transfer

 Source Server         : mysql1
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : my_forum

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 03/06/2020 20:48:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


-- ----------------------------
-- Table structure for t_application
-- ----------------------------
DROP TABLE IF EXISTS `t_application`;
CREATE TABLE `t_application`  (
  `user_id` int(11) NOT NULL,
  `application_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `isPass` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_board
-- ----------------------------
DROP TABLE IF EXISTS `t_board`;
CREATE TABLE `t_board`  (
  `board_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '论坛版块ID',
  `board_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '论坛版块名',
  `board_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '论坛版块描述',
  `topic_num` int(11) NOT NULL DEFAULT 0 COMMENT '帖子数目',
  PRIMARY KEY (`board_id`) USING BTREE,
  INDEX `AK_Board_NAME`(`board_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_board
-- ----------------------------
INSERT INTO `t_board` VALUES (1, '英雄联盟', '欢迎召唤师们来到英雄联盟社区', 4);
INSERT INTO `t_board` VALUES (2, ' 绝地求生', '《绝地求生》(PUBG) 是由蓝洞开发的一款战术竞技型射击类沙盒游戏', 0);
INSERT INTO `t_board` VALUES (3, '穿越火线', ' 穿越火线》游戏是由韩国Smile Gate开发，由深圳市腾讯计算机系统有限公司代理运营的一款第一人称射击游戏。', 0);
INSERT INTO `t_board` VALUES (4, 'CSGO', '《反恐精英：全球攻势》是一款由VALVE与Hidden Path Entertainment合作开发的第一人称射击游戏', 0);
INSERT INTO `t_board` VALUES (5, 'FIFA', ' FIFA 》是由EA制作发行的足球游戏FIFA系列的续作，将以生动的方式呈现足球赛事的两种面貌：职业赛场和街头足球', 0);

-- ----------------------------
-- Table structure for t_board_manager
-- ----------------------------
DROP TABLE IF EXISTS `t_board_manager`;
CREATE TABLE `t_board_manager`  (
  `board_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`board_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '论坛管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_board_manager
-- ----------------------------
INSERT INTO `t_board_manager` VALUES (1, 1);
INSERT INTO `t_board_manager` VALUES (2, 1);
INSERT INTO `t_board_manager` VALUES (3, 1);
INSERT INTO `t_board_manager` VALUES (4, 1);
INSERT INTO `t_board_manager` VALUES (5, 1);

-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log`  (
  `login_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `login_datetime` datetime(0) NOT NULL,
  PRIMARY KEY (`login_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_login_log
-- ----------------------------
INSERT INTO `t_login_log` VALUES (75, 1, '0:0:0:0:0:0:0:1', '2018-07-21 00:00:00');
INSERT INTO `t_login_log` VALUES (76, 1, '0:0:0:0:0:0:0:1', '2018-07-22 00:00:00');
INSERT INTO `t_login_log` VALUES (77, 1, '0:0:0:0:0:0:0:1', '2018-07-28 00:00:00');
INSERT INTO `t_login_log` VALUES (78, 1, '0:0:0:0:0:0:0:1', '2018-07-29 00:00:00');
INSERT INTO `t_login_log` VALUES (79, 1, '0:0:0:0:0:0:0:1', '2018-07-29 00:00:00');
INSERT INTO `t_login_log` VALUES (80, 1, '0:0:0:0:0:0:0:1', '2018-07-29 00:00:00');
INSERT INTO `t_login_log` VALUES (81, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (82, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (83, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (84, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (85, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (86, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (87, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (88, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (89, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (90, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (91, 1, '0:0:0:0:0:0:0:1', '2018-07-30 00:00:00');
INSERT INTO `t_login_log` VALUES (92, 1, '0:0:0:0:0:0:0:1', '2018-07-31 00:00:00');
INSERT INTO `t_login_log` VALUES (93, 1, '0:0:0:0:0:0:0:1', '2018-07-31 00:00:00');
INSERT INTO `t_login_log` VALUES (94, 1, '0:0:0:0:0:0:0:1', '2018-07-31 00:00:00');
INSERT INTO `t_login_log` VALUES (95, 1, '0:0:0:0:0:0:0:1', '2018-07-31 00:00:00');
INSERT INTO `t_login_log` VALUES (96, 1, '0:0:0:0:0:0:0:1', '2018-07-31 00:00:00');
INSERT INTO `t_login_log` VALUES (97, 1, '0:0:0:0:0:0:0:1', '2018-07-31 00:00:00');
INSERT INTO `t_login_log` VALUES (98, 1, '0:0:0:0:0:0:0:1', '2018-07-31 00:00:00');
INSERT INTO `t_login_log` VALUES (99, 1, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (100, 1, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (101, 1, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (102, 1, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (103, 1, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (104, 1, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (105, 3, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (106, 1, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (107, 1, '0:0:0:0:0:0:0:1', '2018-08-01 00:00:00');
INSERT INTO `t_login_log` VALUES (108, 1, '0:0:0:0:0:0:0:1', '2018-08-02 00:00:00');
INSERT INTO `t_login_log` VALUES (109, 1, '0:0:0:0:0:0:0:1', '2018-08-02 00:00:00');
INSERT INTO `t_login_log` VALUES (110, 1, '0:0:0:0:0:0:0:1', '2018-08-02 00:00:00');

-- ----------------------------
-- Table structure for t_post
-- ----------------------------
DROP TABLE IF EXISTS `t_post`;
CREATE TABLE `t_post`  (
  `post_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子ID',
  `board_id` int(11) NOT NULL DEFAULT 0 COMMENT '论坛ID',
  `topic_id` int(11) NOT NULL DEFAULT 0 COMMENT '话题ID',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '发表者ID',
  `post_type` tinyint(4) NOT NULL DEFAULT 2 COMMENT '帖子类型 1:主帖子 2:回复帖子',
  `post_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '\"\"' COMMENT '帖子标题',
  `post_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '帖子内容',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`post_id`) USING BTREE,
  INDEX `IDX_POST_TOPIC_ID`(`topic_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '帖子' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_post
-- ----------------------------
INSERT INTO `t_post` VALUES (1, 1, 1, 1, 1, '\"\"', '哈哈', '2018-06-06 00:00:00');
INSERT INTO `t_post` VALUES (2, 1, 2, 1, 1, '\"\"', '哈哈哈', '2018-04-25 00:00:00');
INSERT INTO `t_post` VALUES (3, 1, 3, 1, 1, '\"\"', '哈哈哈哈', '2018-04-25 00:00:00');
INSERT INTO `t_post` VALUES (4, 1, 4, 1, 1, '\"\"', '哈哈哈哈哈哈', '2018-04-25 00:00:00');


-- ----------------------------
-- Table structure for t_subboard
-- ----------------------------
DROP TABLE IF EXISTS `t_subboard`;
CREATE TABLE `t_subboard`  (
  `subboard_id` int(255) NOT NULL,
  `board_id` int(11) NOT NULL,
  `subboard_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `topic_num` int(255) DEFAULT NULL,
  PRIMARY KEY (`subboard_id`, `board_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_subboard
-- ----------------------------
INSERT INTO `t_subboard` VALUES (0, 1, '社区讨论', 1 );
INSERT INTO `t_subboard` VALUES (1, 1, '攻略分享', 1 );
INSERT INTO `t_subboard` VALUES (2, 1, '组队交友', 1 );
INSERT INTO `t_subboard` VALUES (3, 1, '比赛资讯', 1 );

-- ----------------------------
-- Table structure for t_topic
-- ----------------------------
DROP TABLE IF EXISTS `t_topic`;
CREATE TABLE `t_topic`  (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子ID',
  `board_id` int(11) NOT NULL COMMENT '所属论坛',
  `topic_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '帖子标题',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '发表用户',
  `create_time` datetime(0) NOT NULL COMMENT '发表时间',
  `last_post` datetime(0) NOT NULL DEFAULT '1990-01-01 00:00:00' COMMENT '最后回复时间',
  `topic_views` int(11) NOT NULL DEFAULT 1 COMMENT '浏览数',
  `topic_replies` int(11) NOT NULL DEFAULT 0 COMMENT '回复数',
  `digest` int(11) NOT NULL DEFAULT 0 COMMENT '0:不是精华话题 1:是精华话题',
  `subboard_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`topic_id`) USING BTREE,
  INDEX `IDX_TOPIC_USER_ID`(`user_id`) USING BTREE,
  INDEX `IDX_TOPIC_TITLE`(`topic_title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1250 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '话题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_topic
-- ----------------------------
INSERT INTO `t_topic` VALUES (1, 1, 'VG 战队官宣 iG 打野选手 Leyan 转会加盟', 1, '2020-05-26 00:00:00', '2020-05-26 16:32:09', 974, 0, 1, 0);
INSERT INTO `t_topic` VALUES (2, 1, '玩这游戏最高杀过多少人', 1, '2020-06-03 18:02:35', '2020-06-03 00:00:00', 3, 0, 1,1);
INSERT INTO `t_topic` VALUES (3, 1, 'LGD 官宣前 RNG 上单狼行加盟', 1, '2020-05-28 00:00:00', '2020-06-03 00:00:00', 18, 0, 0, 2);
INSERT INTO `t_topic` VALUES (4, 1, 'UZI退役了', 1, '2020-06-03 10:16:44', '2020-06-03 10:16:45', 4, 0, 0, 3);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户Id',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `user_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:普通用户 2:管理员',
  `locked` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:未锁定 1:锁定',
  `credit` int(11) DEFAULT NULL COMMENT '积分',
  `last_visit` datetime(0) DEFAULT NULL COMMENT '最后登陆时间',
  `last_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最后登陆IP',
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `AK_AK_USER_USER_NAME`(`user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'admin', 2, 0, 710, '2020-06-03 10:59:13', '0:0:0:0:0:0:0:1');
INSERT INTO `t_user` VALUES (7, 'superadmin', 'superadmin', 3, 0, 710, '2020-06-03 10:59:13', '0:0:0:0:0:0:0:1');
INSERT INTO `t_user` VALUES (2, 'jack', 'jack', 1, 1, 100, NULL, NULL);
INSERT INTO `t_user` VALUES (3, 'tom', 'tom', 1, 0, 10, '2018-08-03 13:11:39', '0:0:0:0:0:0:0:1');
INSERT INTO `t_user` VALUES (4, 'john', 'john', 1, 0, 60, '2018-08-03 13:12:03', '0:0:0:0:0:0:0:1');
INSERT INTO `t_user` VALUES (5, 'charles', 'charles', 1, 0, 5, '2018-08-03 13:13:25', '0:0:0:0:0:0:0:1');
INSERT INTO `t_user` VALUES (8, '2', '1234', 1, 0, 55, '2020-05-24 16:45:21', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for t_user_detailed
-- ----------------------------
DROP TABLE IF EXISTS `t_user_detailed`;
CREATE TABLE `t_user_detailed`  (
  `user_id` int(11) NOT NULL,
  `image_path` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `e_mail` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone_number` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_signature` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sign_time` datetime(0) NOT NULL,
  `right_id` int(255) UNSIGNED ZEROFILL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_detailed
-- ----------------------------
INSERT INTO `t_user_detailed` VALUES (1, '/userPic/285bd9a321044d7d890ca766e67387aa.jpg', 'orochi1972@163.com', '18325213331', '资深lol玩家', '男', '2020-05-25 00:00:00', NULL);
INSERT INTO `t_user_detailed` VALUES (2, '/userPic/21251e0c76784753824ec27aae8c8cc6.jpg', 'sc@126.com', '18412389132', '玩绝地求生的漂亮小姐姐', '女', '2020-05-26 00:00:00', NULL);
INSERT INTO `t_user_detailed` VALUES (3, '/userPic/23ee44a88e70427dbd00ca046b602106.jpg', 'fgbn@qq.com', '17843800943', '穿越火线资深玩家', '男', '2020-05-26 00:00:00', NULL);
INSERT INTO `t_user_detailed` VALUES (4, '/userPic/8c989aae87574a078dbd4800d5ae8cfd.jpg', '423411231@qq.com', '18120712215', '会打游戏的小姐姐', '女', '2020-05-26 00:00:00', NULL);
INSERT INTO `t_user_detailed` VALUES (5, '/userPic/4595e85e04b84595b7d4b3a4089d1747.jpg', 'whatis@163.com', '18377648907', '喜欢梅西的帅哥', '男', '2020-06-01 00:00:00', NULL);

SET FOREIGN_KEY_CHECKS = 1;
