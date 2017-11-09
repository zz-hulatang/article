/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-11-09 18:23:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` varchar(36) NOT NULL,
  `userId` varchar(36) NOT NULL COMMENT '用户id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `assentNum` int(20) NOT NULL DEFAULT '0' COMMENT '赞成次数',
  `againstNum` int(20) NOT NULL DEFAULT '0' COMMENT '反对次数',
  `createDate` bigint(20) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('04e79fca-2848-43d9-bb39-ff8ee92a8373', '09fb3457-e298-435c-8234-fff52c4070b6', 'wo是店主', '哈记得哈哈登记卡刷卡觉得adasldasjldsjdkllasdklas离开ALD就撒大家拉斯科技达拉斯简单来说甲氨蝶呤看见啊圣诞快乐', '0', '0', '1510222642003');
INSERT INTO `article` VALUES ('72f06c65-c0d6-4d4a-9e4b-befd06058f99', '09fb3457-e298-435c-8234-fff52c4070b6', '七楼的南瓜饼子店介绍', '哈记得哈哈登记卡刷卡觉得adasldasjldsjdkllasdklas离开ALD就撒大家拉斯科技达拉斯简单来说甲氨蝶呤看见啊圣诞快乐', '0', '0', '1510218409761');

-- ----------------------------
-- Table structure for article_topic
-- ----------------------------
DROP TABLE IF EXISTS `article_topic`;
CREATE TABLE `article_topic` (
  `id` varchar(36) NOT NULL,
  `articleId` varchar(36) NOT NULL,
  `topicId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_topic
-- ----------------------------
INSERT INTO `article_topic` VALUES ('393c74e4-c6df-4677-83ac-9db2958c5b22', '72f06c65-c0d6-4d4a-9e4b-befd06058f99', '98d2d1c6-f36f-4131-be5d-088209c7b8fd');
INSERT INTO `article_topic` VALUES ('593438a5-371e-4dd7-9c31-e73af0377e37', '04e79fca-2848-43d9-bb39-ff8ee92a8373', 'c5d92861-4bc3-4059-b5a3-59495f796b41');
INSERT INTO `article_topic` VALUES ('a39bcee1-783c-4f67-bbbf-ac42948dc751', '72f06c65-c0d6-4d4a-9e4b-befd06058f99', 'c5d92861-4bc3-4059-b5a3-59495f796b41');
INSERT INTO `article_topic` VALUES ('aecbc7b8-eec4-4f17-a10d-09923c31ceb9', '04e79fca-2848-43d9-bb39-ff8ee92a8373', '98d2d1c6-f36f-4131-be5d-088209c7b8fd');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` varchar(36) NOT NULL,
  `acticleId` varchar(36) NOT NULL,
  `userId` varchar(36) NOT NULL,
  `comment` text NOT NULL,
  `createDate` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` varchar(36) NOT NULL COMMENT 'id',
  `name` varchar(20) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('03f720ab-7a43-4acf-8a11-99109b657c5d', '情感');
INSERT INTO `topic` VALUES ('17f309b0-61c1-4467-9513-a5b14818166c', '旅游');
INSERT INTO `topic` VALUES ('98d2d1c6-f36f-4131-be5d-088209c7b8fd', '美食');
INSERT INTO `topic` VALUES ('c5d92861-4bc3-4059-b5a3-59495f796b41', '科技');
INSERT INTO `topic` VALUES ('f26db6c0-7a4a-4edf-8926-cbb16abe6d92', '游戏');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(36) NOT NULL COMMENT 'id',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `nickname` varchar(50) NOT NULL COMMENT '昵称',
  `tel` varchar(11) NOT NULL COMMENT '手机号码',
  `imgUrl` varchar(100) DEFAULT NULL,
  `password` varchar(50) NOT NULL COMMENT '密码',
  `sex` int(1) NOT NULL COMMENT '性别，0：男，1：女，2：第三性别',
  `introduction` varchar(50) DEFAULT NULL,
  `recentLoginDate` bigint(20) DEFAULT NULL COMMENT '最近登录时间',
  `createDate` bigint(20) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('09fb3457-e298-435c-8234-fff52c4070b6', 'admin', '七楼的南瓜饼子店', '123', '默认图片', 'MTEyMjMz', '0', '啊哈哈哈哈哈哈哈哈', '1510123306684', '1510123284850');
INSERT INTO `user` VALUES ('aaaaaaaaa', 'abc', '小筑', '123456789', null, 'MTEyMjMz', '0', null, '1510222974387', '1509935559972');
