/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-12-08 18:30:07
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
  `deleted` int(1) NOT NULL DEFAULT '0' COMMENT '0:默认，不删除；1：删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('04e79fca-2848-43d9-bb39-ff8ee92a8373', 'aaaaaaaaa', 'wo是店主', '哈记得哈哈登记卡刷卡觉得adasldasjldsjdkllasdklas离开ALD就撒大家拉斯科技达拉斯简单来说甲氨蝶呤看见啊圣诞快乐', '2', '2', '1510222642003', '1');
INSERT INTO `article` VALUES ('0c9fe2af-490b-47e3-a2f5-8257ef00dac5', 'aaaaaaaaa', '逍遥游', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; background-color: rgb(240, 239, 226);\">北冥有鱼，其名为鲲。鲲之大，不知其几千里也。化而为鸟，其名为鹏。鹏之背，不知其几千里也，怒而飞，其翼若垂天之云。是鸟也，海运则将徙于南冥。南冥者，天池也。《齐谐》者，志怪者也。《谐》之言曰：“鹏之徙于南冥也，水击三千里，抟扶摇而上者九万里，去以六月息者也。”野马也，尘埃也，生物之以息相吹也。天之苍苍，其正色邪？其远而无所至极邪？其视下也，亦若是则已矣。且夫水之积也不厚，则其负大舟也无力。覆杯水于坳堂之上，则芥为之舟；置杯焉则胶，水浅而舟大也。风之积也不厚，则其负大翼也无力。故九万里，则风斯在下矣，而后乃今培风；背负青天而莫之夭阏者，而后乃今将图南。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; background-color: rgb(240, 239, 226);\">　　蜩与学鸠笑之曰：“我决起而飞，抢榆枋而止，时则不至，而控于地而已矣，奚以之九万里而南为？”适莽苍者，三餐而反，腹犹果然；适百里者宿舂粮，适千里者，三月聚粮。之二虫又何知？(抢榆枋 一作：枪榆枋)</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; background-color: rgb(240, 239, 226);\">　　小知不及大知，小年不及大年。奚以知其然也？朝菌不知晦朔，蟪蛄不知春秋，此小年也。楚之南有冥灵者，以五百岁为春，五百岁为秋。上古有大椿者，以八千岁为春，八千岁为秋。此大年也。而彭祖乃今以久特闻，众人匹之。不亦悲乎！</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; background-color: rgb(240, 239, 226);\">　　汤之问棘也是已：“穷发之北有冥海者，天池也。有鱼焉，其广数千里，未有知其修者，其名为鲲。有鸟焉，其名为鹏。背若泰山，翼若垂天之云。抟扶摇羊角而上者九万里，绝云气，负青天，然后图南，且适南冥也。斥鷃笑之曰：‘彼且奚适也？我腾跃而上，不过数仞而下，翱翔蓬蒿之间，此亦飞之至也。而彼且奚适也？’”此小大之辩也。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; background-color: rgb(240, 239, 226);\">　　故夫知效一官，行比一乡，德合一君，而征一国者，其自视也亦若此矣。而宋荣子犹然笑之。且举世誉之而不加劝，举世非之而不加沮，定乎内外之分，辩乎荣辱之境，斯已矣。彼其于世，未数数然也。虽然，犹有未树也。夫列子御风而行，泠然善也。旬有五日而后反。彼于致福者，未数数然也。此虽免乎行，犹有所待者也。若夫乘天地之正，而御六气之辩，以游无穷者，彼且恶乎待哉？故曰：至人无己，神人无功，圣人无名。</p><p><br/></p>', '0', '0', '1512461369001', '0');
INSERT INTO `article` VALUES ('11e6ddd0-356a-411a-8ede-06b2d550dc5e', 'aaaaaaaaa', '逍遥游3', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; background-color: rgb(240, 239, 226);\">北冥有鱼，其名为鲲。鲲之大，不知其几千里也。化而为鸟，其名为鹏。鹏之背，不知其几千里也，怒而飞，其翼若垂天之云。是鸟也，海运则将徙于南冥。南冥者，天池也。《齐谐》者，志怪者也。《谐》之言曰：“鹏之徙于南冥也，水击三千里，抟扶摇而上者九万里，去以六月息者也。”野马也，尘埃也，生物之以息相吹也。天之苍苍，其正色邪？其远而无所至极邪？其视下也，亦若是则已矣。且夫水之积也不厚，则其负大舟也无力。覆杯水于坳堂之上，则芥为之舟；置杯焉则胶，水浅而舟大也。风之积也不厚，则其负大翼也无力。故九万里，则风斯在下矣，而后乃今培风；背负青天而莫之夭阏者，而后乃今将图南。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; background-color: rgb(240, 239, 226);\">　　蜩与学鸠笑之曰：“我决起而飞，抢榆枋而止，时则不至，而控于地而已矣，奚以之九万里而南为？”适莽苍者，三餐而反，腹犹果然；适百里者宿舂粮，适千里者，三月聚粮。之二虫又何知？(抢榆枋 一作：枪榆枋)</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; background-color: rgb(240, 239, 226);\">　　小知不及大知，小年不及大年。奚以知其然也？朝菌不知晦朔，蟪蛄不知春秋，此小年也。楚之南有冥灵者，以五百岁为春，五百岁为秋。上古有大椿者，以八千岁为春，八千岁为秋。此大年也。而彭祖乃今以久特闻，众人匹之。<img src=\"http://127.0.0.1:8080/article/img/upload/image/20171205/1512462620835070691.png\" title=\"1512462620835070691.png\" alt=\"%Y8WO(2D@0LDX1MUY80R3OA.png\" width=\"147\" height=\"132\"/>不亦悲乎！</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; background-color: rgb(240, 239, 226);\">　　汤之问棘也是已：“穷发之北有冥海者，天池也。有鱼焉，其广数千里，未有知其修者，其名为鲲。有鸟焉，其名为鹏。背若泰山，翼若垂天之云。抟扶摇羊角而上者九万里，绝云气，负青天，然后图南，且适南冥也。斥鷃笑之曰：‘彼且奚适也？我腾跃而上，不过数仞而下，翱翔蓬蒿之间，此亦飞之至也。而彼且奚适也？’”此小大之辩也。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; background-color: rgb(240, 239, 226);\">　　故夫知效一官，行比一乡，德合一君，而征一国者，其自视也亦若此矣。而宋荣子犹然笑之。且举世誉之而不加劝，举世非之而不加沮，定乎内外之分，辩乎荣辱之境，斯已矣。彼其于世，未数数然也。虽然，犹有未树也。夫列子御风而行，泠然善也。旬有五日而后反。彼于致福者，未数数然也。此虽免乎行，犹有所待者也。若夫乘天地之正，而御六气之辩，以游无穷者，彼且恶乎待哉？故曰：至人无己，神人无功，圣人无名</p><p><br/></p>', '0', '0', '1512462657892', '0');
INSERT INTO `article` VALUES ('3f1b4bd1-6ab7-4189-ac07-a3ef8f7d674a', 'aaaaaaaaa', 'wawawaa', '<p>asfdasdasdasdasd</p>', '0', '0', '1512455037362', '0');
INSERT INTO `article` VALUES ('3f66ad81-f61f-4f90-b00e-bb1a78477917', 'aaaaaaaaa', 'sddghjkdsf', '<p>asasddasdasddasdasdasdas</p>', '0', '0', '1511751734249', '1');
INSERT INTO `article` VALUES ('722e088e-b997-47dc-a64c-65bfa0323b43', 'aaaaaaaaa', 'hahahahahahahah', '<p>啊哈哈哈哈哈哈哈哈哈啊哈哈哈啊哈哈哈哈啊哈哈<img src=\"http://127.0.0.1:8080/article/img/upload/image/20171121/1511253811570084626.png\" title=\"1511253811570084626.png\" alt=\"`AT)D`IFO4Q4GNQYDZ])WC0.png\"/></p>', '0', '0', '1511253822810', '0');
INSERT INTO `article` VALUES ('72f06c65-c0d6-4d4a-9e4b-befd06058f99', '09fb3457-e298-435c-8234-fff52c4070b6', '七楼的南瓜饼子店介绍', '哈记得哈哈登记卡刷卡觉得adasldasjldsjdkllasdklas离开ALD就撒大家拉斯科技达拉斯简单来说甲氨蝶呤看见啊圣诞快乐', '0', '0', '1510218409761', '0');
INSERT INTO `article` VALUES ('86a77c06-f9d9-4e5f-b20c-ddb1fba757c6', 'aaaaaaaaa', 'sasasasasasassasss', '<p><span style=\"font-size: 36px;\">sasasasasas</span><br/></p>', '0', '0', '1511751675602', '0');
INSERT INTO `article` VALUES ('8f1e0c81-0e84-44df-9a79-f762d041a846', 'aaaaaaaaa', 'yoyoyoyoyyoyyoyoyoyoyyoyoyoyoyoy', '<p>yoyoyoyoyyoyyoyoyoyoyyoyoyoyoyoy</p>', '0', '0', '1511771304455', '1');
INSERT INTO `article` VALUES ('9b2734fe-5968-4a38-a708-e36c861001c2', 'aaaaaaaaa', '逍遥游2', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; background-color: rgb(240, 239, 226);\">北冥有鱼，其名为鲲。鲲之大，不知其几千里也。化而为鸟，其名为鹏。鹏之背，不知其几千里也，怒而飞，其翼若垂天之云。是鸟也，海运则将徙于南冥。南冥者，天池也。《齐谐》者，志怪者也。《谐》之言曰：“鹏之徙于南冥也，水击三千里，抟扶摇而上者九万里，去以六月息者也。”野马也，尘埃也，生物之以息相吹也。天之苍苍，其正色邪？其远而无所至极邪？其视下也，亦若是则已矣。且夫水之积也不厚，则其负大舟也无力。覆杯水于坳堂之上，则芥为之舟；置杯焉则胶，水浅而舟大也。风之积也不厚，则其负大翼也无力。故九万里，则风斯在下矣，而后乃今培风；背负青天而莫之夭阏者，而后乃今将图南。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; background-color: rgb(240, 239, 226);\">　　蜩与学鸠笑之曰：“我决起而飞，抢榆枋而止，时则不至，而控于地而已矣，奚以之九万里而南为？”适莽苍者，三餐而反，腹犹果然；适百里者宿舂粮，适千里者，三月聚粮。之二虫又何知？(抢榆枋 一作：枪榆枋)</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; background-color: rgb(240, 239, 226);\">　　小知不及大知，小年不及大年。奚以知其然也？朝菌不知晦朔，蟪蛄不知春秋，此小年也。楚之南有冥灵者，以五百岁为春，五百岁为秋。上古有大椿者，以八千岁为春，八千岁为秋。此大年也。而彭祖乃今以久特闻，众人匹之。不亦悲乎！</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; background-color: rgb(240, 239, 226);\">　　汤之问棘也是已：“穷发之北有冥海者，天池也。有鱼焉，其广数千里，未有知其修者，其名为鲲。有鸟焉，其名为鹏。背若泰山，翼若垂天之云。抟扶摇羊角而上者九万里，绝云气，负青天，然后图南，且适南冥也。斥鷃笑之曰：‘彼且奚适也？我腾跃而上，不过数仞而下，翱翔蓬蒿之间，此亦飞之至也。而彼且奚适也？’”此小大之辩也。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; background-color: rgb(240, 239, 226);\">　　故夫知效一官，行比一乡，德合一君，而征一国者，其自视也亦若此矣。而宋荣子犹然笑之。且举世誉之而不加劝，举世非之而不加沮，定乎内外之分，辩乎荣辱之境，斯已矣。彼其于世，未数数然也。虽然，犹有未树也。夫列子御风而行，泠然善也。旬有五日而后反。彼于致福者，未数数然也。此虽免乎行，犹有所待者也。若夫乘天地之正，而御六气之辩，以游无穷者，彼且恶乎待哉？故曰：至人无己，神人无功，圣人无名。</p>', '0', '0', '1512462008243', '0');
INSERT INTO `article` VALUES ('a605561d-d0b7-45ab-a510-bca9e6a5c42d', 'aaaaaaaaa', '测试一把哟', '<p>测试一把哟</p>', '0', '0', '1512625986506', '0');
INSERT INTO `article` VALUES ('d7aa944d-2c47-4630-a2b5-69cffc73474f', 'aaaaaaaaa', 'asdadasdasdadasd', '<p>dfsdgdfdfyhgryggdfdgdgfdgsdg</p>', '0', '0', '1512615363834', '0');
INSERT INTO `article` VALUES ('f5bdc73a-6f34-42b4-be6b-b4342c597734', 'aaaaaaaaa', '逍遥游', '<pre style=\"background-color:#2b2b2b;color:#a9b7c6;font-family:&#39;宋体&#39;;font-size:13.5pt;\">order&nbsp;by&nbsp;createDate&nbsp;desc</pre><p><br/></p>', '0', '0', '1512462485641', '0');

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
INSERT INTO `article_topic` VALUES ('43e8d48b-61ff-4436-9774-5506ced80494', 'd7aa944d-2c47-4630-a2b5-69cffc73474f', '03f720ab-7a43-4acf-8a11-99109b657c5d');
INSERT INTO `article_topic` VALUES ('43ec1ce7-5186-49b8-b4ac-f713fda6be63', '11e6ddd0-356a-411a-8ede-06b2d550dc5e', '98d2d1c6-f36f-4131-be5d-088209c7b8fd');
INSERT INTO `article_topic` VALUES ('4afea56d-84d1-4d55-9386-98936adf0531', '0c9fe2af-490b-47e3-a2f5-8257ef00dac5', 'f26db6c0-7a4a-4edf-8926-cbb16abe6d92');
INSERT INTO `article_topic` VALUES ('4c08b7c3-f760-4d75-9aa2-994539a6f936', '3f66ad81-f61f-4f90-b00e-bb1a78477917', '98d2d1c6-f36f-4131-be5d-088209c7b8fd');
INSERT INTO `article_topic` VALUES ('593438a5-371e-4dd7-9c31-e73af0377e37', '04e79fca-2848-43d9-bb39-ff8ee92a8373', 'c5d92861-4bc3-4059-b5a3-59495f796b41');
INSERT INTO `article_topic` VALUES ('82588713-9d9c-440c-8b7e-762708fe28d7', '86a77c06-f9d9-4e5f-b20c-ddb1fba757c6', '03f720ab-7a43-4acf-8a11-99109b657c5d');
INSERT INTO `article_topic` VALUES ('8ec1727b-8ec8-4465-a33e-dd5a14eefee9', 'a605561d-d0b7-45ab-a510-bca9e6a5c42d', 'c5d92861-4bc3-4059-b5a3-59495f796b41');
INSERT INTO `article_topic` VALUES ('a0496513-25fd-4875-81b1-f28e49978b26', 'f5bdc73a-6f34-42b4-be6b-b4342c597734', '17f309b0-61c1-4467-9513-a5b14818166c');
INSERT INTO `article_topic` VALUES ('a39bcee1-783c-4f67-bbbf-ac42948dc751', '72f06c65-c0d6-4d4a-9e4b-befd06058f99', 'c5d92861-4bc3-4059-b5a3-59495f796b41');
INSERT INTO `article_topic` VALUES ('aecbc7b8-eec4-4f17-a10d-09923c31ceb9', '04e79fca-2848-43d9-bb39-ff8ee92a8373', '98d2d1c6-f36f-4131-be5d-088209c7b8fd');
INSERT INTO `article_topic` VALUES ('b66ec012-cf4f-4af8-b665-20f01ea60568', 'd7aa944d-2c47-4630-a2b5-69cffc73474f', '17f309b0-61c1-4467-9513-a5b14818166c');
INSERT INTO `article_topic` VALUES ('cb430422-cf39-48a5-bb10-77970a32ea46', '9b2734fe-5968-4a38-a708-e36c861001c2', '03f720ab-7a43-4acf-8a11-99109b657c5d');
INSERT INTO `article_topic` VALUES ('e26c9402-e145-4886-89f8-b5c36ef12223', '8f1e0c81-0e84-44df-9a79-f762d041a846', '98d2d1c6-f36f-4131-be5d-088209c7b8fd');
INSERT INTO `article_topic` VALUES ('f00a2431-e0e6-4f64-9802-c158d56425ce', '3f1b4bd1-6ab7-4189-ac07-a3ef8f7d674a', '03f720ab-7a43-4acf-8a11-99109b657c5d');
INSERT INTO `article_topic` VALUES ('f12670ac-3844-4e39-a51d-67f5ace8df40', '722e088e-b997-47dc-a64c-65bfa0323b43', '03f720ab-7a43-4acf-8a11-99109b657c5d');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` varchar(36) NOT NULL,
  `articleId` varchar(36) NOT NULL,
  `userId` varchar(36) NOT NULL,
  `comment` text NOT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '72f06c65-c0d6-4d4a-9e4b-befd06058f99', '111', 'adsadsd', null);
INSERT INTO `comment` VALUES ('2', '72f06c65-c0d6-4d4a-9e4b-befd06058f99', '222', 'dadasdasd', null);

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
  `tel` varchar(11) DEFAULT NULL COMMENT '手机号码',
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
INSERT INTO `user` VALUES ('45259f52-7590-4d2b-9022-30fbd8e6a421', 'adsasd', 'dasda', null, 'img\\default\\male.jpg', 'ZGFzZGFzZA==', '0', '这位客官很懒，什么都没有留下。', '1510579981350', '1510579981350');
INSERT INTO `user` VALUES ('aaaaaaaaa', 'abc', '小筑', '123456789', 'img\\default\\male.jpg', 'MTEyMjMz', '0', null, '1512624311706', '1509935559972');
INSERT INTO `user` VALUES ('dcea1120-f927-49db-8ce5-d3bb52d3d231', 'aa11ss22', '南瓜饼', null, 'img\\default\\male.jpg', 'MTIzNDU2', '0', '这位客官很懒，什么都没有留下。', '1510576040363', '1510575980473');
