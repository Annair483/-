/*
Navicat MySQL Data Transfer

Source Server         : Annari
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : baiyang

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-12-29 13:29:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goodslist
-- ----------------------------
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE `goodslist` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(255) DEFAULT NULL,
  `goodsinfo` varchar(255) DEFAULT NULL,
  `images` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `reducpic` varchar(255) DEFAULT NULL,
  `hot` varchar(255) NOT NULL,
  `sell` varchar(255) NOT NULL,
  `times` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist
-- ----------------------------
INSERT INTO `goodslist` VALUES ('1', '西班牙皇家庄园级橄榄油', '【西班牙原装进口】维莎特级无添加初榨橄榄油750ml装', '../images/goodsImages/hot_goods1.png', '198', '138', '14', '23', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('2', '护肤黑科技', '【逆龄黑科技】Quanis/克奥妮斯玻尿酸微针眼贴1300针（1对装）', '../images/goodsImages/hot_goods2.png', '428', '238', '283', '333', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('3', '敏感肌适用', '【长效保湿 光滑肌肤】Excellula 艾思诺娜焕润乳液 120ml', '../images/goodsImages/hot_goods3.png', '550', '379', '4', '4445', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('4', '美国补钙专家', '【甄选原料 酒炙九蒸】承善堂阿胶糕精制四星240g', '../images/goodsImages/hot_goods4.png', '298', '199', '251', '231', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('5', '西班牙皇家庄园级橄榄油', '【西班牙原装进口】维莎特级无添加初榨橄榄油750ml装', '../images/goodsImages/hot_goods1.png', '198', '138', '14', '2', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('6', '护肤黑科技', '【逆龄黑科技】Quanis/克奥妮斯玻尿酸微针眼贴1300针（1对装）', '../images/goodsImages/hot_goods2.png', '428', '238', '283', '10', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('7', '敏感肌适用', '【长效保湿 光滑肌肤】Excellula 艾思诺娜焕润乳液 120ml', '../images/goodsImages/hot_goods3.png', '550', '379', '4', '23', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('8', '美国补钙专家', '【甄选原料 酒炙九蒸】承善堂阿胶糕精制四星240g', '../images/goodsImages/hot_goods4.png', '298', '199', '251', '333', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('9', '【敏感肌修护】MedSPA美帕维生素原B5修复喷雾150ml', '【敏感肌修护】MedSPA美帕维生素原B5修复喷雾150ml', '../images/goodsImages/reGoods1.jpg', '260', '179', '17', '4445', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('10', '【祛痘美肌平价面膜】ROHTO乐敦CC美白祛斑祛痘印面膜 20片 晒后修护', '【祛痘美肌平价面膜】ROHTO乐敦CC美白祛斑祛痘印面膜 20片 晒后修护', '../images/goodsImages/reGoods2.png', '98', '66', '5', '231', '2018-12-27 21:42:44');
INSERT INTO `goodslist` VALUES ('11', '【特惠3盒装 添加K2助钙成骨】美国D-cal迪巧 小儿碳酸钙颗粒剂 升级版 20袋/盒 包邮包税', '【特惠3盒装 添加K2助钙成骨】美国D-cal迪巧 小儿碳酸钙颗粒剂 升级版 20袋/盒 包邮包税', '../images/goodsImages/reGoods3.jpg', '297', '177', '4392', '2', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('12', '【助钙成骨】斯旺森天然维生素K2软胶囊30粒', '【助钙成骨】斯旺森天然维生素K2软胶囊30粒', '../images/goodsImages/reGoods4.jpg', '158', '9.9', '12', '10', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('13', '【敏感肌修护】MedSPA美帕维生素原B5修复喷雾150ml', '【敏感肌修护】MedSPA美帕维生素原B5修复喷雾150ml', '../images/goodsImages/reGoods1.jpg', '260', '179', '17', '23', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('14', '【祛痘美肌平价面膜】ROHTO乐敦CC美白祛斑祛痘印面膜 20片 晒后修护', '【祛痘美肌平价面膜】ROHTO乐敦CC美白祛斑祛痘印面膜 20片 晒后修护', '../images/goodsImages/reGoods2.png', '98', '66', '5', '333', '2018-12-27 21:42:19');
INSERT INTO `goodslist` VALUES ('15', '【特惠3盒装 添加K2助钙成骨】美国D-cal迪巧 小儿碳酸钙颗粒剂 升级版 20袋/盒 包邮包税', '【特惠3盒装 添加K2助钙成骨】美国D-cal迪巧 小儿碳酸钙颗粒剂 升级版 20袋/盒 包邮包税', '../images/goodsImages/reGoods3.jpg', '297', '177', '4392', '4445', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('16', '【助钙成骨】斯旺森天然维生素K2软胶囊30粒', '【助钙成骨】斯旺森天然维生素K2软胶囊30粒', '../images/goodsImages/reGoods4.jpg', '158', '9.9', '12', '231', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('17', '【敏感肌修护】MedSPA美帕维生素原B5修复喷雾150ml', '【敏感肌修护】MedSPA美帕维生素原B5修复喷雾150ml', '../images/goodsImages/reGoods1.jpg', '158', '9.9', '12', '2', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('18', '【祛痘美肌平价面膜】ROHTO乐敦CC美白祛斑祛痘印面膜 20片 晒后修护', '【祛痘美肌平价面膜】ROHTO乐敦CC美白祛斑祛痘印面膜 20片 晒后修护', '../images/goodsImages/reGoods2.png', '256', '176', '33', '10', '2018-12-27 21:42:22');
INSERT INTO `goodslist` VALUES ('19', '【特惠3盒装 添加K2助钙成骨】美国D-cal迪巧 小儿碳酸钙颗粒剂 升级版 20袋/盒 包邮包税', '【特惠3盒装 添加K2助钙成骨】美国D-cal迪巧 小儿碳酸钙颗粒剂 升级版 20袋/盒 包邮包税', '../images/goodsImages/reGoods3.jpg', '294', '254', '323', '23', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('20', '【助钙成骨】斯旺森天然维生素K2软胶囊30粒', '【助钙成骨】斯旺森天然维生素K2软胶囊30粒', '../images/goodsImages/reGoods4.jpg', '384', '264', '88', '333', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('21', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img4.jpg', '640', '440', '211', '4445', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('22', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img5.jpg', '196', '169', '8', '231', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('23', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '../images/goodsImages/gds_list_img6.jpg', '312', '259', '3321', '2', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('24', '【2盒送小象毛巾】迪巧 维D钙咀嚼片120片钙片无糖 孕妇哺乳期成人中老年补钙防治骨质疏松', '【2盒送小象毛巾】迪巧 维D钙咀嚼片120片钙片无糖 孕妇哺乳期成人中老年补钙防治骨质疏松', '../images/goodsImages/gds_list_img1.jpg', '256', '176', '33', '10', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('25', '【3盒送儿童水彩笔】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型', '【3盒送儿童水彩笔】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img2.jpg', '294', '254', '323', '23', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('26', '【3盒送六角插座】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【3盒送六角插座】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img3.jpg', '384', '264', '88', '333', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('27', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img4.jpg', '640', '440', '211', '4445', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('28', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img5.jpg', '196', '169', '8', '231', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('29', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '../images/goodsImages/gds_list_img6.jpg', '312', '259', '3321', '2', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('30', '【2盒送小象毛巾】迪巧 维D钙咀嚼片120片钙片无糖 孕妇哺乳期成人中老年补钙防治骨质疏松', '【2盒送小象毛巾】迪巧 维D钙咀嚼片120片钙片无糖 孕妇哺乳期成人中老年补钙防治骨质疏松', '../images/goodsImages/gds_list_img1.jpg', '256', '176', '33', '10', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('31', '【3盒送儿童水彩笔】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型', '【3盒送儿童水彩笔】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img2.jpg', '294', '254', '323', '23', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('32', '【3盒送六角插座】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【3盒送六角插座】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img3.jpg', '384', '264', '88', '333', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('33', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img4.jpg', '640', '440', '211', '4445', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('34', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img5.jpg', '196', '169', '8', '231', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('35', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '../images/goodsImages/gds_list_img6.jpg', '312', '259', '3321', '2', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('36', '【2盒送小象毛巾】迪巧 维D钙咀嚼片120片钙片无糖 孕妇哺乳期成人中老年补钙防治骨质疏松', '【2盒送小象毛巾】迪巧 维D钙咀嚼片120片钙片无糖 孕妇哺乳期成人中老年补钙防治骨质疏松', '../images/goodsImages/gds_list_img1.jpg', '256', '176', '33', '10', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('37', '【3盒送儿童水彩笔】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型', '【3盒送儿童水彩笔】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img2.jpg', '294', '254', '323', '333', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('38', '【3盒送六角插座】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【3盒送六角插座】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img3.jpg', '384', '264', '88', '4445', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('39', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img4.jpg', '640', '440', '211', '231', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('40', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img5.jpg', '196', '169', '8', '2', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('41', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '../images/goodsImages/gds_list_img6.jpg', '312', '259', '3321', '10', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('42', '【2盒送小象毛巾】迪巧 维D钙咀嚼片120片钙片无糖 孕妇哺乳期成人中老年补钙防治骨质疏松', '【2盒送小象毛巾】迪巧 维D钙咀嚼片120片钙片无糖 孕妇哺乳期成人中老年补钙防治骨质疏松', '../images/goodsImages/gds_list_img1.jpg', '256', '176', '33', '23', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('43', '【3盒送儿童水彩笔】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型', '【3盒送儿童水彩笔】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img2.jpg', '294', '254', '323', '333', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('44', '【3盒送六角插座】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【3盒送六角插座】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img3.jpg', '384', '264', '88', '4445', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('45', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img4.jpg', '640', '440', '211', '231', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('46', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img5.jpg', '196', '169', '8', '2', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('47', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '../images/goodsImages/gds_list_img6.jpg', '312', '259', '3321', '10', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('48', '【2盒送小象毛巾】迪巧 维D钙咀嚼片120片钙片无糖 孕妇哺乳期成人中老年补钙防治骨质疏松', '【2盒送小象毛巾】迪巧 维D钙咀嚼片120片钙片无糖 孕妇哺乳期成人中老年补钙防治骨质疏松', '../images/goodsImages/gds_list_img1.jpg', '256', '176', '33', '23', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('49', '【3盒送儿童水彩笔】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型', '【3盒送儿童水彩笔】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img2.jpg', '294', '254', '323', '333', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('50', '【3盒送六角插座】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【3盒送六角插座】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img3.jpg', '384', '264', '88', '4445', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('51', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img4.jpg', '640', '440', '211', '231', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('52', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img5.jpg', '196', '169', '8', '2', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('53', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '../images/goodsImages/gds_list_img6.jpg', '312', '259', '3321', '10', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('54', '【2盒送小象毛巾】迪巧 维D钙咀嚼片120片钙片无糖 孕妇哺乳期成人中老年补钙防治骨质疏松', '【2盒送小象毛巾】迪巧 维D钙咀嚼片120片钙片无糖 孕妇哺乳期成人中老年补钙防治骨质疏松', '../images/goodsImages/gds_list_img1.jpg', '256', '176', '33', '333', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('55', '【3盒送儿童水彩笔】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型', '【3盒送儿童水彩笔】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img2.jpg', '294', '254', '323', '4445', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('56', '【3盒送六角插座】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【3盒送六角插座】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img3.jpg', '384', '264', '88', '231', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('57', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img4.jpg', '640', '440', '211', '2', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('58', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img5.jpg', '196', '169', '8', '10', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('59', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '../images/goodsImages/gds_list_img6.jpg', '312', '259', '3321', '23', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('60', '【2盒送小象毛巾】迪巧 维D钙咀嚼片120片钙片无糖 孕妇哺乳期成人中老年补钙防治骨质疏松', '【2盒送小象毛巾】迪巧 维D钙咀嚼片120片钙片无糖 孕妇哺乳期成人中老年补钙防治骨质疏松', '../images/goodsImages/gds_list_img1.jpg', '256', '176', '33', '333', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('61', '【3盒送儿童水彩笔】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型', '【3盒送儿童水彩笔】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img2.jpg', '294', '254', '323', '4445', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('62', '【3盒送六角插座】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【3盒送六角插座】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img3.jpg', '384', '264', '88', '231', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('63', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img4.jpg', '640', '440', '211', '2', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('64', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img5.jpg', '196', '169', '8', '10', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('65', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '../images/goodsImages/gds_list_img6.jpg', '312', '259', '3321', '23', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('66', '【2盒送小象毛巾】迪巧 维D钙咀嚼片120片钙片无糖 孕妇哺乳期成人中老年补钙防治骨质疏松', '【2盒送小象毛巾】迪巧 维D钙咀嚼片120片钙片无糖 孕妇哺乳期成人中老年补钙防治骨质疏松', '../images/goodsImages/gds_list_img1.jpg', '256', '176', '33', '333', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('67', '【3盒送儿童水彩笔】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型', '【3盒送儿童水彩笔】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙 3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img2.jpg', '294', '254', '323', '4445', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('68', '【3盒送六角插座】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【3盒送六角插座】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img3.jpg', '384', '264', '88', '231', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('69', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '【5盒送保温饭盒】迪巧 维D钙咀嚼片120片钙片 孕妇 哺乳期 成人 中老年补钙 无糖 防治骨质疏松', '../images/goodsImages/gds_list_img4.jpg', '640', '440', '211', '2', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('70', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '【2盒送儿童跳绳】迪巧 儿童维D钙咀嚼片60片钙片儿童青少年补钙3岁以上缺钙 三种水果味小象造型', '../images/goodsImages/gds_list_img5.jpg', '196', '169', '8', '10', '2018-12-26 13:32:49');
INSERT INTO `goodslist` VALUES ('71', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '【4盒送量高卷尺】迪巧 钙维生素D颗粒15袋婴幼儿补钙 小儿碳酸钙D3颗粒 淡口味 好吸收', '../images/goodsImages/gds_list_img6.jpg', '312', '259', '3321', '10', '2018-12-26 13:32:49');

-- ----------------------------
-- Table structure for sign
-- ----------------------------
DROP TABLE IF EXISTS `sign`;
CREATE TABLE `sign` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `times` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sign
-- ----------------------------
INSERT INTO `sign` VALUES ('1', 'abs', 'www', '446331381@qq.com', '2018-12-27 23:27:12');
INSERT INTO `sign` VALUES ('2', 'asdasd', 'asdasd', 'asdasd', '2018-12-27 23:32:26');
INSERT INTO `sign` VALUES ('3', 'asdfasdf', 'asdfasdf', 'asdfasd', '2018-12-27 23:39:12');
INSERT INTO `sign` VALUES ('4', 'qweasd', 'qweasd', 'qweasd', '2018-12-27 23:41:23');
INSERT INTO `sign` VALUES ('5', 'Annair', 'zhangzhian', '446331381@qq.com', '2018-12-27 23:42:57');
INSERT INTO `sign` VALUES ('6', 'Annaril', 'zhagnzhian', '446331381@qq.com', '2018-12-27 23:43:54');
SET FOREIGN_KEY_CHECKS=1;
