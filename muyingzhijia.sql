/*
Navicat MySQL Data Transfer

Source Server         : 666
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : muyingzhijia

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-09-22 11:08:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hotgoods
-- ----------------------------
DROP TABLE IF EXISTS `hotgoods`;
CREATE TABLE `hotgoods` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `addtime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotgoods
-- ----------------------------
INSERT INTO `hotgoods` VALUES ('1', 'img/jinxuan01.jpg', '松达婴儿护肤粉', '灌装（52g）', '69.00', '2017-09-21 11:07:38');
INSERT INTO `hotgoods` VALUES ('2', 'img/jinxuan02.jpg', '韩国正品Bikit Guard防蚊扣', '婴儿成人均可用', '15.00', '2017-09-21 11:07:51');
INSERT INTO `hotgoods` VALUES ('3', 'img/jinxuan03.jpg', 'Pouch轻便可座可躺折叠伞', 'A22墨绿', '599.00', '2017-09-21 11:07:58');
INSERT INTO `hotgoods` VALUES ('4', 'img/jinxuan04.jpg', '英帝诺 infantino 多文理球', '6粒装', '79.00', '2017-09-21 11:07:59');
INSERT INTO `hotgoods` VALUES ('5', 'img/jinxuan05.jpg', '小白熊快速玻璃恒温调奶器', '小白熊快速玻璃恒温调奶器', '239.00', '2017-09-21 11:08:00');
INSERT INTO `hotgoods` VALUES ('6', 'img/jinxuan06.jpg', 'Lansinoh 蓝斯诺储奶带100个', 'Lansinoh 蓝斯诺储奶带100个', '139.00', '2017-09-21 11:08:01');
INSERT INTO `hotgoods` VALUES ('7', 'img/jinxuan07.jpg', '贝亲一次性防溢乳垫', '贴合胸型，材质软加量不加价', '68.00', '2017-09-21 11:08:04');
INSERT INTO `hotgoods` VALUES ('8', 'img/jinxuan08.jpg', 'Babycare不锈钢餐具五件套', 'Babycare不锈钢餐具五件套', '99.00', '2017-09-21 11:08:06');
INSERT INTO `hotgoods` VALUES ('9', 'img/jinxuan09.jpg', '全因爱妈妈植物精粹云纹护理油100ml', '安全保障', '9.90', '2017-09-21 11:08:08');
INSERT INTO `hotgoods` VALUES ('10', 'img/jinxuan10.jpg', 'Baby Ganics甘尼克宝贝', '随身携带方便', '29.90', '2017-09-21 11:08:11');
INSERT INTO `hotgoods` VALUES ('11', 'img/jinxuan11.jpg', 'amake艾莫科手动吸乳器', 'amake艾莫科手动吸乳器', '19.00', '2017-09-21 11:08:12');
INSERT INTO `hotgoods` VALUES ('12', 'img/jinxuan12.jpg', '飞利浦宽口径奶瓶', '2个奶瓶', '128.00', '2017-09-21 11:08:15');
INSERT INTO `hotgoods` VALUES ('13', 'img/jinxuan13.jpg', '得其板蓝根抑菌洗手皂85g', '得其板蓝根抑菌洗手皂85g', '2.00', '2017-09-21 11:08:17');
INSERT INTO `hotgoods` VALUES ('14', 'img/jinxuan14.jpg', '农夫山泉天然1L', '适合婴儿', '9.00', '2017-09-21 11:08:19');
INSERT INTO `hotgoods` VALUES ('15', 'img/jinxuan15.jpg', '瑞士美德乐电动吸乳器', '瑞士美德乐电动吸乳器', '799.00', '2017-09-21 11:08:23');
INSERT INTO `hotgoods` VALUES ('16', 'img/jinxuan16.jpg', '米小芽胚芽粥500g', '米宝宝系列', '25.00', '2017-09-21 11:08:25');
INSERT INTO `hotgoods` VALUES ('17', 'img/jinxuan17.jpg', '保宁B纤维洗涤剂', '不伤手让衣服持久柔软飘香', '46.00', '2017-09-21 11:09:05');

-- ----------------------------
-- Table structure for listgoods
-- ----------------------------
DROP TABLE IF EXISTS `listgoods`;
CREATE TABLE `listgoods` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `addtime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of listgoods
-- ----------------------------
INSERT INTO `listgoods` VALUES ('1', 'img/m-150599960770278.jpg', '滴沥达拉16C可拆卸围兜', '2017季末大清仓', '19.00', '2017-09-21 21:14:34');
INSERT INTO `listgoods` VALUES ('2', 'img/tejia02.jpg', '雅士婴儿天然乳胶床垫', '2017季末大清仓', '128.00', '2017-09-21 11:09:19');
INSERT INTO `listgoods` VALUES ('3', 'img/tejia03.jpg', '贝亲little Coro无捻沙小方巾', '2017季末大清仓', '39.00', '2017-09-21 11:09:20');
INSERT INTO `listgoods` VALUES ('4', 'img/tejia04.jpg', 'Skiphop zoo可爱动物园围兜', 'Skiphop zoo创意用餐系列', '49.00', '2017-09-21 11:09:21');
INSERT INTO `listgoods` VALUES ('5', 'img/tejia05.jpg', 'Skiphop zoo可爱动物园围兜', 'Skiphop zoo创意用餐系列', '49.00', '2017-09-21 11:09:22');
INSERT INTO `listgoods` VALUES ('6', 'img/tejia06.jpg', '滴沥达拉16C可拆卸围兜', 'Skiphop zoo创意用餐系列', '19.00', '2017-09-21 11:09:23');
INSERT INTO `listgoods` VALUES ('7', 'img/tejia07.jpg', 'Skiphop zoo可爱动物园围兜', 'Skiphop zoo创意用餐系列', '49.00', '2017-09-21 11:09:24');
INSERT INTO `listgoods` VALUES ('8', 'img/tejia08.jpg', 'Skiphop zoo可爱动物园围兜', 'Skiphop zoo创意用餐系列', '49.00', '2017-09-21 11:09:25');
INSERT INTO `listgoods` VALUES ('9', 'img/tejia09.jpg', 'Skiphop zoo可爱动物园围兜', 'Skiphop zoo创意用餐系列', '49.00', '2017-09-21 11:09:28');
INSERT INTO `listgoods` VALUES ('10', 'img/tejia10.jpg', 'Skiphop zoo可爱动物园围兜', 'Skiphop zoo创意用餐系列', '49.00', '2017-09-21 11:09:30');
INSERT INTO `listgoods` VALUES ('11', 'img/tejia11.jpg', 'Skiphop zoo可爱动物园围兜', 'Skiphop zoo创意用餐系列', '49.00', '2017-09-21 11:09:34');
INSERT INTO `listgoods` VALUES ('12', 'img/tejia12.jpg', '雅士纱布印花小围兜', '2017季末大清仓', '13.00', '2017-09-21 11:09:35');
INSERT INTO `listgoods` VALUES ('13', 'img/shoe01.jpg', '舒适防滑可脱卸清洗式孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-21 11:09:36');
INSERT INTO `listgoods` VALUES ('14', 'img/shoe02.jpg', '舒适防滑可脱卸清洗式孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-21 11:09:37');
INSERT INTO `listgoods` VALUES ('15', 'img/shoe03.jpg', '舒适防滑可脱卸清洗式孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-21 11:09:38');
INSERT INTO `listgoods` VALUES ('16', 'img/shoe04.jpg', '舒适防滑可脱卸清洗式孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-21 11:09:42');
INSERT INTO `listgoods` VALUES ('17', 'img/shoe05.jpg', '舒适防滑可脱卸清洗式孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-21 11:09:46');
INSERT INTO `listgoods` VALUES ('18', 'img/shoe06.jpg', '凯丽孕妇专用纯棉内裤（4条装）', '2017季末大清仓', '15.00', '2017-09-21 11:09:47');
INSERT INTO `listgoods` VALUES ('19', 'img/shoe07.jpg', '舒适防滑可脱卸清洗式孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-21 11:09:49');
INSERT INTO `listgoods` VALUES ('20', 'img/shoe08.jpg', '舒适防滑平底孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-21 11:09:52');
INSERT INTO `listgoods` VALUES ('21', 'img/shoe09.jpg', '舒适防滑平底孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-21 11:09:54');
INSERT INTO `listgoods` VALUES ('22', 'img/shoe10.jpg', '六夹村T碟舞·蕾丝孕妇裤', '2017季末大清仓', '39.00', '2017-09-21 11:09:55');
INSERT INTO `listgoods` VALUES ('23', 'img/shoe11.jpg', '凯丽孕妇专用纯棉内裤（4条装）', '辣妈服饰买3送孕妇奶粉', '18.00', '2017-09-21 11:09:56');
INSERT INTO `listgoods` VALUES ('24', 'img/shoe12.jpg', '舒适防滑平底孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-21 11:10:00');
INSERT INTO `listgoods` VALUES ('25', 'img/feed01.jpg', '三乐事冰热双效水袋9寸粉点', '加9.9元可换购', '69.00', '2017-09-21 11:10:03');
INSERT INTO `listgoods` VALUES ('26', 'img/feed02.jpg', '三乐事冰热双效水袋9寸蓝点', '2017季末大清仓', '39.00', '2017-09-21 11:10:06');
INSERT INTO `listgoods` VALUES ('27', 'img/feed03.jpg', '三乐事冰热双效水袋9寸粉点', '加9.9元可换购', '59.00', '2017-09-21 11:10:07');
INSERT INTO `listgoods` VALUES ('28', 'img/feed04.jpg', '三乐事 退热贴4片入', '加9.9元可换购', '22.00', '2017-09-21 11:10:09');
INSERT INTO `listgoods` VALUES ('29', 'img/feed05.jpg', '威尔贝鲁wellber16C彩棉竹棉纱布口罩', '2017季末大清仓', '6.00', '2017-09-21 11:10:11');
INSERT INTO `listgoods` VALUES ('30', 'img/feed06.jpg', '汤美天地 “母乳自然”电子消毒锅', '加9.9元可换购', '399.00', '2017-09-21 11:10:13');
INSERT INTO `listgoods` VALUES ('31', 'img/feed07.jpg', '汤美天地 “母乳自然”母乳储存袋', '加9.9元可换购', '29.90', '2017-09-21 11:10:19');
INSERT INTO `listgoods` VALUES ('32', 'img/feed08.jpg', 'amake艾莫可手动吸乳器', '2017季末大清仓', '19.00', '2017-09-21 11:10:22');
INSERT INTO `listgoods` VALUES ('33', 'img/feed09.jpg', '汤美天地 “母乳自然”PESU印花防胀', '加9.9元可换购', '89.00', '2017-09-21 11:10:23');
INSERT INTO `listgoods` VALUES ('34', 'img/feed10.jpg', '汤美天地  “基础护理”宽口径奶瓶', '加9.9元可换购', '89.00', '2017-09-21 11:10:26');
INSERT INTO `listgoods` VALUES ('35', 'img/feed11.jpg', '汤美天地  “基础护理”宽口径奶瓶', '加9.9元可换购', '89.00', '2017-09-21 11:10:27');
INSERT INTO `listgoods` VALUES ('36', 'img/feed12.jpg', '汤美天地 “母乳自然”PESU印花防胀', '加9.9元可换购', '89.00', '2017-09-21 11:10:29');
INSERT INTO `listgoods` VALUES ('37', 'img/sleep01.jpg', '迪士尼宝宝15岁画家绒棉分腿睡袋', '2017季末大清仓', '79.00', '2017-09-21 11:10:30');
INSERT INTO `listgoods` VALUES ('38', 'img/sleep02.jpg', '威尔贝鲁wellber 15薄棉睡袋', '2017季末大清仓', '79.00', '2017-09-21 11:10:32');
INSERT INTO `listgoods` VALUES ('39', 'img/sleep03.jpg', '雅士15西西鸭与斑比狗睡袋', '2017季末大清仓', '79.00', '2017-09-21 11:10:33');
INSERT INTO `listgoods` VALUES ('40', 'img/sleep04.jpg', '迪士尼宝宝15XC奇妙大自然', '2017季末大清仓', '119.00', '2017-09-21 11:10:38');
INSERT INTO `listgoods` VALUES ('41', 'img/sleep05.jpg', '迪士尼宝宝15岁画家绒棉分腿睡袋', '2017季末大清仓', '69.00', '2017-09-21 11:10:40');
INSERT INTO `listgoods` VALUES ('42', 'img/sleep06.jpg', '迪士尼宝宝15QC卡通大联盟床垫', '2017季末大清仓', '59.00', '2017-09-21 11:10:42');
INSERT INTO `listgoods` VALUES ('43', 'img/sleep07.jpg', '迪士尼宝宝15QC卡通大联盟床垫', '2017季末大清仓', '59.00', '2017-09-21 11:10:44');
INSERT INTO `listgoods` VALUES ('44', 'img/sleep08.jpg', '迪士尼宝宝15C彩粉夹棉被', '2017季末大清仓', '49.00', '2017-09-21 11:10:45');
INSERT INTO `listgoods` VALUES ('45', 'img/sleep09.jpg', '威尔贝鲁wellber 16C彩棉枕头', '2017季末大清仓', '79.00', '2017-09-21 11:10:47');
INSERT INTO `listgoods` VALUES ('46', 'img/sleep10.jpg', '威尔贝鲁wellber 16C婴儿凉席', '2017季末大清仓', '49.00', '2017-09-21 11:10:51');
INSERT INTO `listgoods` VALUES ('47', 'img/sleep11.jpg', '雅士15C动物狂欢节多功能抱枕', '2017季末大清仓', '69.00', '2017-09-21 11:10:53');
INSERT INTO `listgoods` VALUES ('48', 'img/sleep12.jpg', '雅士15C动物狂欢节多功能抱枕', '2017季末大清仓', '29.00', '2017-09-21 11:10:55');
INSERT INTO `listgoods` VALUES ('49', 'img/car01.jpg', 'CHBABY探路者 避震三轮推车', 'CHYBABY爆品直降', '699.00', '2017-09-21 11:10:57');
INSERT INTO `listgoods` VALUES ('50', 'img/car02.jpg', 'CHBABY探路者 避震三轮推车', 'CHYBABY爆品直降', '699.00', '2017-09-21 11:10:59');
INSERT INTO `listgoods` VALUES ('51', 'img/car03.jpg', 'CHBABY四轮高观景双向避震推车', 'CHYBABY爆品直降', '1299.00', '2017-09-21 11:11:01');
INSERT INTO `listgoods` VALUES ('52', 'img/car04.jpg', 'CHBABY四轮高观景双向避震推车', 'CHYBABY爆品直降', '1299.00', '2017-09-21 11:11:03');
INSERT INTO `listgoods` VALUES ('53', 'img/car05.jpg', 'CHBABY四轮高观景双向避震推车', 'CHYBABY爆品直降', '1399.00', '2017-09-21 11:11:06');
INSERT INTO `listgoods` VALUES ('54', 'img/car06.jpg', 'CHBABY四轮高观景双向避震推车', 'CHYBABY爆品直降', '699.00', '2017-09-21 11:11:08');
INSERT INTO `listgoods` VALUES ('55', 'img/car07.jpg', 'CHBABY四轮高观景双向避震推车', 'CHYBABY爆品直降', '599.00', '2017-09-21 11:11:10');
INSERT INTO `listgoods` VALUES ('56', 'img/car08.jpg', 'CHBABY守护者 高观景避震可折叠', 'CHYBABY爆品直降', '799.00', '2017-09-21 11:11:12');
INSERT INTO `listgoods` VALUES ('57', 'img/car09.jpg', 'CHBABY守护者 高观景避震充气折叠', 'CHYBABY爆品直降', '899.00', '2017-09-21 11:11:16');
INSERT INTO `listgoods` VALUES ('58', 'img/car10.jpg', 'CHBABY守护者 高观景避震充气折叠', 'CHYBABY爆品直降', '999.00', '2017-09-21 11:11:21');
INSERT INTO `listgoods` VALUES ('59', 'img/car11.jpg', 'CHBABY守护者 高观景避震充气折叠', 'CHYBABY爆品直降', '1199.00', '2017-09-21 11:11:23');
INSERT INTO `listgoods` VALUES ('60', 'img/car12.jpg', '赠品：惠氏启赋幼儿配方奶粉3段', '赠品', '0.00', '2017-09-21 11:11:29');

-- ----------------------------
-- Table structure for special
-- ----------------------------
DROP TABLE IF EXISTS `special`;
CREATE TABLE `special` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `addtime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of special
-- ----------------------------
INSERT INTO `special` VALUES ('1', 'img/special01.jpg', '皇家美素3短买三送1 单罐低至246', '皇家美素3短买三送1 单罐低至246', '109.00', '2017-09-21 11:11:58');
INSERT INTO `special` VALUES ('2', 'img/special02.jpg', '花王纸尿裤M64', 'L54折后114元X14....', '112.00', '2017-09-21 11:11:59');
INSERT INTO `special` VALUES ('3', 'img/special03.jpg', '米小牙宝宝米', '辅助粥，胚芽米', '25.00', '2017-09-21 11:12:00');
INSERT INTO `special` VALUES ('4', 'img/special04.jpg', '松达坚持天然护肤25年', '松达坚持天然护肤25年', '69.00', '2017-09-21 11:12:01');
INSERT INTO `special` VALUES ('5', 'img/special05.jpg', '儿童时光', 'childlife儿童营养品牌', '126.00', '2017-09-21 11:12:02');
INSERT INTO `special` VALUES ('6', 'img/special06.jpg', '飞行宝宝太阳镜', '飞行宝宝太阳镜新品上市', '159.00', '2017-09-21 11:12:03');
INSERT INTO `special` VALUES ('7', 'img/special07.jpg', '布朗博士爱宝选奶瓶专场', '一种美式的生活态度', '16.00', '2017-09-21 11:12:05');
INSERT INTO `special` VALUES ('8', 'img/special08.jpg', '约惠气息', '萌娃购好礼', '19.00', '2017-09-21 11:12:06');
INSERT INTO `special` VALUES ('9', 'img/special09.jpg', '春夏季末大清仓服饰', '低至2折起', '20.00', '2017-09-21 11:12:08');
INSERT INTO `special` VALUES ('10', 'img/special10.png', '谷斐儿献爱乞巧', '谷斐儿献爱乞巧', '15.00', '2017-09-21 11:12:10');
INSERT INTO `special` VALUES ('11', 'img/special11.jpg', '婷妃初秋特惠', '婷妃初秋特惠', '9.90', '2017-09-21 11:12:12');
INSERT INTO `special` VALUES ('12', 'img/special12.png', '卡特兔初秋特卖专场', '卡特兔初秋特卖专场', '15.00', '2017-09-21 11:12:13');
INSERT INTO `special` VALUES ('13', 'img/special13.jpg', 'Brita滤水壶', '滤水壶专场特卖', '49.00', '2017-09-21 11:12:15');
INSERT INTO `special` VALUES ('14', 'img/special14.jpg', '逗童酷库仔秋款特卖专场', '逗童酷库仔秋款特卖专场', '26.80', '2017-09-21 11:12:16');
INSERT INTO `special` VALUES ('15', 'img/special15.jpg', '七彩圈圈童鞋', '夏季末大清仓', '68.00', '2017-09-21 11:12:17');
INSERT INTO `special` VALUES ('16', 'img/special16.jpg', '智儿勒宝宝推车特卖', '智儿勒宝宝推车特卖', '238.00', '2017-09-21 11:12:20');
INSERT INTO `special` VALUES ('17', 'img/special17.jpg', 'MINI SED果冻髋童鞋夏季清仓', 'MINI SED果冻髋童鞋夏季清仓', '39.00', '2017-09-21 11:12:22');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `phonenumber` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `addtime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('34', '13724089986', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:14:11');
INSERT INTO `user` VALUES ('33', '13724089981', '25d55ad283aa400af464c76d713c07ad', '2017-09-07 10:13:03');
INSERT INTO `user` VALUES ('30', '13724089984', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 10:09:23');
INSERT INTO `user` VALUES ('29', '13724089983', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 10:09:08');
INSERT INTO `user` VALUES ('28', '13724089982', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:08:21');
INSERT INTO `user` VALUES ('35', '13025131637', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 10:15:27');
INSERT INTO `user` VALUES ('36', '13724089989', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 10:16:10');
INSERT INTO `user` VALUES ('37', '13724089988', '25d55ad283aa400af464c76d713c07ad', '2017-09-07 10:18:36');
INSERT INTO `user` VALUES ('38', '13724089985', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:21:37');
INSERT INTO `user` VALUES ('39', '13724089973', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:22:09');
INSERT INTO `user` VALUES ('40', '13724089980', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:24:57');
INSERT INTO `user` VALUES ('41', '13724089999', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:25:40');
INSERT INTO `user` VALUES ('42', '13724089987', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:28:22');
INSERT INTO `user` VALUES ('43', '13025131636', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:28:56');
INSERT INTO `user` VALUES ('44', '13724089890', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:29:36');
INSERT INTO `user` VALUES ('45', '13025131631', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:30:29');
INSERT INTO `user` VALUES ('46', '13025131632', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 10:31:33');
INSERT INTO `user` VALUES ('47', '13724009887', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:32:51');
INSERT INTO `user` VALUES ('48', '13025131644', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:38:47');
INSERT INTO `user` VALUES ('49', '13729999999', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:40:07');
INSERT INTO `user` VALUES ('50', '13724777777', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:40:39');
INSERT INTO `user` VALUES ('51', '13766666666', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:53:48');
INSERT INTO `user` VALUES ('52', '13788888888', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:54:44');
INSERT INTO `user` VALUES ('53', '13000000000', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:56:21');
INSERT INTO `user` VALUES ('54', '13111111111', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:57:30');
INSERT INTO `user` VALUES ('55', '13666666666', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:58:23');
INSERT INTO `user` VALUES ('56', '13999999999', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 11:00:17');
INSERT INTO `user` VALUES ('57', '13555555555', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 11:01:28');
INSERT INTO `user` VALUES ('58', '13444444444', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 11:02:21');
INSERT INTO `user` VALUES ('59', '13333333333', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 11:03:00');
INSERT INTO `user` VALUES ('60', '13222222222', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 11:05:07');
INSERT INTO `user` VALUES ('61', '15000000000', '83422503bcfc01d303030e8a7cc80efc', '2017-09-07 15:32:42');
INSERT INTO `user` VALUES ('62', '13456768768', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-09 18:31:33');
INSERT INTO `user` VALUES ('63', '123456@qq.com', '123456', '2017-09-22 10:06:47');
