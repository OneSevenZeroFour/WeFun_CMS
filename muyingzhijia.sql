/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : muyingzhijia

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-09-11 13:50:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hotgoods
-- ----------------------------
DROP TABLE IF EXISTS `hotgoods`;
CREATE TABLE `hotgoods` (
  `id` varchar(255) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `addtime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotgoods
-- ----------------------------
INSERT INTO `hotgoods` VALUES ('h01', 'img/jinxuan01.jpg', '松达婴儿护肤粉', '灌装（52g）', '69.00', '2017-09-01 17:31:05');
INSERT INTO `hotgoods` VALUES ('h02', 'img/jinxuan02.jpg', '韩国正品Bikit Guard防蚊扣', '婴儿成人均可用', '15.00', '2017-09-01 17:32:35');
INSERT INTO `hotgoods` VALUES ('h03', 'img/jinxuan03.jpg', 'Pouch轻便可座可躺折叠伞', 'A22墨绿', '599.00', '2017-09-01 17:33:52');
INSERT INTO `hotgoods` VALUES ('h04', 'img/jinxuan04.jpg', '英帝诺 infantino 多文理球', '6粒装', '79.00', '2017-09-01 17:35:02');
INSERT INTO `hotgoods` VALUES ('h05', 'img/jinxuan05.jpg', '小白熊快速玻璃恒温调奶器', '小白熊快速玻璃恒温调奶器', '239.00', '2017-09-01 17:35:58');
INSERT INTO `hotgoods` VALUES ('h06', 'img/jinxuan06.jpg', 'Lansinoh 蓝斯诺储奶带100个', 'Lansinoh 蓝斯诺储奶带100个', '139.00', '2017-09-01 17:36:56');
INSERT INTO `hotgoods` VALUES ('h07', 'img/jinxuan07.jpg', '贝亲一次性防溢乳垫', '贴合胸型，材质软加量不加价', '68.00', '2017-09-01 17:42:04');
INSERT INTO `hotgoods` VALUES ('h08', 'img/jinxuan08.jpg', 'Babycare不锈钢餐具五件套', 'Babycare不锈钢餐具五件套', '99.00', '2017-09-01 17:42:55');
INSERT INTO `hotgoods` VALUES ('h09', 'img/jinxuan09.jpg', '全因爱妈妈植物精粹云纹护理油100ml', '安全保障', '9.90', '2017-09-01 17:43:58');
INSERT INTO `hotgoods` VALUES ('h10', 'img/jinxuan10.jpg', 'Baby Ganics甘尼克宝贝', '随身携带方便', '29.90', '2017-09-01 17:45:03');
INSERT INTO `hotgoods` VALUES ('h11', 'img/jinxuan11.jpg', 'amake艾莫科手动吸乳器', 'amake艾莫科手动吸乳器', '19.00', '2017-09-01 17:46:08');
INSERT INTO `hotgoods` VALUES ('h12', 'img/jinxuan12.jpg', '飞利浦宽口径奶瓶', '2个奶瓶', '128.00', '2017-09-01 17:46:57');
INSERT INTO `hotgoods` VALUES ('h13', 'img/jinxuan13.jpg', '得其板蓝根抑菌洗手皂85g', '得其板蓝根抑菌洗手皂85g', '2.00', '2017-09-01 17:47:45');
INSERT INTO `hotgoods` VALUES ('h14', 'img/jinxuan14.jpg', '农夫山泉天然1L', '适合婴儿', '9.00', '2017-09-01 17:48:38');
INSERT INTO `hotgoods` VALUES ('h15', 'img/jinxuan15.jpg', '瑞士美德乐电动吸乳器', '瑞士美德乐电动吸乳器', '799.00', '2017-09-01 17:49:32');
INSERT INTO `hotgoods` VALUES ('h16', 'img/jinxuan16.jpg', '米小芽胚芽粥500g', '米宝宝系列', '25.00', '2017-09-01 17:50:42');
INSERT INTO `hotgoods` VALUES ('h17', 'img/jinxuan17.jpg', '保宁B纤维洗涤剂', '不伤手让衣服持久柔软飘香', '46.00', '2017-09-01 17:52:01');

-- ----------------------------
-- Table structure for listgoods
-- ----------------------------
DROP TABLE IF EXISTS `listgoods`;
CREATE TABLE `listgoods` (
  `id` varchar(255) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `addtime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of listgoods
-- ----------------------------
INSERT INTO `listgoods` VALUES ('L01', 'img/tejia01.jpg', '滴沥达拉16C可拆卸围兜', '2017季末大清仓', '19.00', '2017-09-02 11:58:16');
INSERT INTO `listgoods` VALUES ('L02', 'img/tejia02.jpg', '雅士婴儿天然乳胶床垫', '2017季末大清仓', '128.00', '2017-09-02 12:00:06');
INSERT INTO `listgoods` VALUES ('L03', 'img/tejia03.jpg', '贝亲little Coro无捻沙小方巾', '2017季末大清仓', '39.00', '2017-09-02 12:01:15');
INSERT INTO `listgoods` VALUES ('L04', 'img/tejia04.jpg', 'Skiphop zoo可爱动物园围兜', 'Skiphop zoo创意用餐系列', '49.00', '2017-09-02 12:02:18');
INSERT INTO `listgoods` VALUES ('L05', 'img/tejia05.jpg', 'Skiphop zoo可爱动物园围兜', 'Skiphop zoo创意用餐系列', '49.00', '2017-09-02 12:03:00');
INSERT INTO `listgoods` VALUES ('L06', 'img/tejia06.jpg', '滴沥达拉16C可拆卸围兜', 'Skiphop zoo创意用餐系列', '19.00', '2017-09-02 12:04:26');
INSERT INTO `listgoods` VALUES ('L07', 'img/tejia07.jpg', 'Skiphop zoo可爱动物园围兜', 'Skiphop zoo创意用餐系列', '49.00', '2017-09-02 12:04:29');
INSERT INTO `listgoods` VALUES ('L08', 'img/tejia08.jpg', 'Skiphop zoo可爱动物园围兜', 'Skiphop zoo创意用餐系列', '49.00', '2017-09-02 12:04:32');
INSERT INTO `listgoods` VALUES ('L09', 'img/tejia09.jpg', 'Skiphop zoo可爱动物园围兜', 'Skiphop zoo创意用餐系列', '49.00', '2017-09-02 12:04:34');
INSERT INTO `listgoods` VALUES ('L10', 'img/tejia10.jpg', 'Skiphop zoo可爱动物园围兜', 'Skiphop zoo创意用餐系列', '49.00', '2017-09-02 12:04:39');
INSERT INTO `listgoods` VALUES ('L11', 'img/tejia11.jpg', 'Skiphop zoo可爱动物园围兜', 'Skiphop zoo创意用餐系列', '49.00', '2017-09-02 12:05:08');
INSERT INTO `listgoods` VALUES ('L12', 'img/tejia12.jpg', '雅士纱布印花小围兜', '2017季末大清仓', '13.00', '2017-09-02 12:05:43');
INSERT INTO `listgoods` VALUES ('L13', 'img/shoe01.jpg', '舒适防滑可脱卸清洗式孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-02 14:13:32');
INSERT INTO `listgoods` VALUES ('L14', 'img/shoe02.jpg', '舒适防滑可脱卸清洗式孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-02 14:13:34');
INSERT INTO `listgoods` VALUES ('L15', 'img/shoe03.jpg', '舒适防滑可脱卸清洗式孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-02 14:13:35');
INSERT INTO `listgoods` VALUES ('L16', 'img/shoe04.jpg', '舒适防滑可脱卸清洗式孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-02 14:13:48');
INSERT INTO `listgoods` VALUES ('L17', 'img/shoe05.jpg', '舒适防滑可脱卸清洗式孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-02 14:14:42');
INSERT INTO `listgoods` VALUES ('L18', 'img/shoe06.jpg', '凯丽孕妇专用纯棉内裤（4条装）', '2017季末大清仓', '15.00', '2017-09-02 14:16:30');
INSERT INTO `listgoods` VALUES ('L19', 'img/shoe07.jpg', '舒适防滑可脱卸清洗式孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-02 14:16:42');
INSERT INTO `listgoods` VALUES ('L20', 'img/shoe08.jpg', '舒适防滑平底孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-02 14:17:19');
INSERT INTO `listgoods` VALUES ('L21', 'img/shoe09.jpg', '舒适防滑平底孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-02 14:17:26');
INSERT INTO `listgoods` VALUES ('L22', 'img/shoe10.jpg', '六夹村T碟舞·蕾丝孕妇裤', '2017季末大清仓', '39.00', '2017-09-02 14:19:13');
INSERT INTO `listgoods` VALUES ('L23', 'img/shoe11.jpg', '凯丽孕妇专用纯棉内裤（4条装）', '辣妈服饰买3送孕妇奶粉', '18.00', '2017-09-02 14:19:33');
INSERT INTO `listgoods` VALUES ('L24', 'img/shoe12.jpg', '舒适防滑平底孕妇防滑鞋', '2017季末大清仓', '15.00', '2017-09-02 14:19:39');
INSERT INTO `listgoods` VALUES ('L25', 'img/feed01.jpg', '三乐事冰热双效水袋9寸粉点', '加9.9元可换购', '69.00', '2017-09-02 14:25:58');
INSERT INTO `listgoods` VALUES ('L26', 'img/feed02.jpg', '三乐事冰热双效水袋9寸蓝点', '2017季末大清仓', '39.00', '2017-09-02 17:13:24');
INSERT INTO `listgoods` VALUES ('L27', 'img/feed03.jpg', '三乐事冰热双效水袋9寸粉点', '加9.9元可换购', '59.00', '2017-09-02 14:32:49');
INSERT INTO `listgoods` VALUES ('L28', 'img/feed04.jpg', '三乐事 退热贴4片入', '加9.9元可换购', '22.00', '2017-09-02 14:33:04');
INSERT INTO `listgoods` VALUES ('L29', 'img/feed05.jpg', '威尔贝鲁wellber16C彩棉竹棉纱布口罩', '2017季末大清仓', '6.00', '2017-09-02 14:33:20');
INSERT INTO `listgoods` VALUES ('L30', 'img/feed06.jpg', '汤美天地 “母乳自然”电子消毒锅', '加9.9元可换购', '399.00', '2017-09-02 14:33:23');
INSERT INTO `listgoods` VALUES ('L31', 'img/feed07.jpg', '汤美天地 “母乳自然”母乳储存袋', '加9.9元可换购', '29.90', '2017-09-02 17:13:30');
INSERT INTO `listgoods` VALUES ('L32', 'img/feed08.jpg', 'amake艾莫可手动吸乳器', '2017季末大清仓', '19.00', '2017-09-02 14:33:40');
INSERT INTO `listgoods` VALUES ('L33', 'img/feed09.jpg', '汤美天地 “母乳自然”PESU印花防胀', '加9.9元可换购', '89.00', '2017-09-02 14:33:44');
INSERT INTO `listgoods` VALUES ('L34', 'img/feed10.jpg', '汤美天地  “基础护理”宽口径奶瓶', '加9.9元可换购', '89.00', '2017-09-02 14:33:45');
INSERT INTO `listgoods` VALUES ('L35', 'img/feed11.jpg', '汤美天地  “基础护理”宽口径奶瓶', '加9.9元可换购', '89.00', '2017-09-02 14:33:46');
INSERT INTO `listgoods` VALUES ('L36', 'img/feed12.jpg', '汤美天地 “母乳自然”PESU印花防胀', '加9.9元可换购', '89.00', '2017-09-02 14:33:48');
INSERT INTO `listgoods` VALUES ('L37', 'img/sleep01.jpg', '迪士尼宝宝15岁画家绒棉分腿睡袋', '2017季末大清仓', '79.00', '2017-09-02 14:46:57');
INSERT INTO `listgoods` VALUES ('L38', 'img/sleep02.jpg', '威尔贝鲁wellber 15薄棉睡袋', '2017季末大清仓', '79.00', '2017-09-02 14:46:58');
INSERT INTO `listgoods` VALUES ('L39', 'img/sleep03.jpg', '雅士15西西鸭与斑比狗睡袋', '2017季末大清仓', '79.00', '2017-09-02 14:47:00');
INSERT INTO `listgoods` VALUES ('L40', 'img/sleep04.jpg', '迪士尼宝宝15XC奇妙大自然', '2017季末大清仓', '119.00', '2017-09-02 14:47:08');
INSERT INTO `listgoods` VALUES ('L41', 'img/sleep05.jpg', '迪士尼宝宝15岁画家绒棉分腿睡袋', '2017季末大清仓', '69.00', '2017-09-02 14:47:11');
INSERT INTO `listgoods` VALUES ('L42', 'img/sleep06.jpg', '迪士尼宝宝15QC卡通大联盟床垫', '2017季末大清仓', '59.00', '2017-09-02 14:47:12');
INSERT INTO `listgoods` VALUES ('L43', 'img/sleep07.jpg', '迪士尼宝宝15QC卡通大联盟床垫', '2017季末大清仓', '59.00', '2017-09-02 14:47:14');
INSERT INTO `listgoods` VALUES ('L44', 'img/sleep08.jpg', '迪士尼宝宝15C彩粉夹棉被', '2017季末大清仓', '49.00', '2017-09-02 14:47:16');
INSERT INTO `listgoods` VALUES ('L45', 'img/sleep09.jpg', '威尔贝鲁wellber 16C彩棉枕头', '2017季末大清仓', '79.00', '2017-09-02 14:47:26');
INSERT INTO `listgoods` VALUES ('L46', 'img/sleep10.jpg', '威尔贝鲁wellber 16C婴儿凉席', '2017季末大清仓', '49.00', '2017-09-02 14:47:29');
INSERT INTO `listgoods` VALUES ('L47', 'img/sleep11.jpg', '雅士15C动物狂欢节多功能抱枕', '2017季末大清仓', '69.00', '2017-09-02 14:47:31');
INSERT INTO `listgoods` VALUES ('L48', 'img/sleep12.jpg', '雅士15C动物狂欢节多功能抱枕', '2017季末大清仓', '29.00', '2017-09-02 14:47:33');
INSERT INTO `listgoods` VALUES ('L49', 'img/car01.jpg', 'CHBABY探路者 避震三轮推车', 'CHYBABY爆品直降', '699.00', '2017-09-02 14:54:58');
INSERT INTO `listgoods` VALUES ('L50', 'img/car02.jpg', 'CHBABY探路者 避震三轮推车', 'CHYBABY爆品直降', '699.00', '2017-09-02 14:55:01');
INSERT INTO `listgoods` VALUES ('L51', 'img/car03.jpg', 'CHBABY四轮高观景双向避震推车', 'CHYBABY爆品直降', '1299.00', '2017-09-02 14:55:03');
INSERT INTO `listgoods` VALUES ('L52', 'img/car04.jpg', 'CHBABY四轮高观景双向避震推车', 'CHYBABY爆品直降', '1299.00', '2017-09-02 14:55:11');
INSERT INTO `listgoods` VALUES ('L53', 'img/car05.jpg', 'CHBABY四轮高观景双向避震推车', 'CHYBABY爆品直降', '1399.00', '2017-09-02 14:55:14');
INSERT INTO `listgoods` VALUES ('L54', 'img/car06.jpg', 'CHBABY四轮高观景双向避震推车', 'CHYBABY爆品直降', '699.00', '2017-09-02 14:55:16');
INSERT INTO `listgoods` VALUES ('L55', 'img/car07.jpg', 'CHBABY四轮高观景双向避震推车', 'CHYBABY爆品直降', '599.00', '2017-09-02 14:55:23');
INSERT INTO `listgoods` VALUES ('L56', 'img/car08.jpg', 'CHBABY守护者 高观景避震可折叠', 'CHYBABY爆品直降', '799.00', '2017-09-02 14:55:30');
INSERT INTO `listgoods` VALUES ('L57', 'img/car09.jpg', 'CHBABY守护者 高观景避震充气折叠', 'CHYBABY爆品直降', '899.00', '2017-09-02 14:55:32');
INSERT INTO `listgoods` VALUES ('L58', 'img/car10.jpg', 'CHBABY守护者 高观景避震充气折叠', 'CHYBABY爆品直降', '999.00', '2017-09-02 14:55:42');
INSERT INTO `listgoods` VALUES ('L59', 'img/car11.jpg', 'CHBABY守护者 高观景避震充气折叠', 'CHYBABY爆品直降', '1199.00', '2017-09-02 14:55:48');
INSERT INTO `listgoods` VALUES ('L60', 'img/car12.jpg', '赠品：惠氏启赋幼儿配方奶粉3段', '赠品', '0.00', '2017-09-02 14:53:49');

-- ----------------------------
-- Table structure for special
-- ----------------------------
DROP TABLE IF EXISTS `special`;
CREATE TABLE `special` (
  `id` varchar(255) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `addtime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of special
-- ----------------------------
INSERT INTO `special` VALUES ('s01', 'img/special01.jpg', '皇家美素3短买三送1 单罐低至246', '皇家美素3短买三送1 单罐低至246', '109.00', '2017-09-01 14:26:50');
INSERT INTO `special` VALUES ('s02', 'img/special02.jpg', '花王纸尿裤M64', 'L54折后114元X14....', '112.00', '2017-09-01 14:31:25');
INSERT INTO `special` VALUES ('s03', 'img/special03.jpg', '米小牙宝宝米', '辅助粥，胚芽米', '25.00', '2017-09-01 14:37:42');
INSERT INTO `special` VALUES ('s04', 'img/special04.jpg', '松达坚持天然护肤25年', '松达坚持天然护肤25年', '69.00', '2017-09-01 14:38:33');
INSERT INTO `special` VALUES ('s05', 'img/special05.jpg', '儿童时光', 'childlife儿童营养品牌', '126.00', '2017-09-01 14:39:46');
INSERT INTO `special` VALUES ('s06', 'img/special06.jpg', '飞行宝宝太阳镜', '飞行宝宝太阳镜新品上市', '159.00', '2017-09-01 14:40:28');
INSERT INTO `special` VALUES ('s07', 'img/special07.jpg', '布朗博士爱宝选奶瓶专场', '一种美式的生活态度', '16.00', '2017-09-01 14:41:45');
INSERT INTO `special` VALUES ('s08', 'img/special08.jpg', '约惠气息', '萌娃购好礼', '19.00', '2017-09-01 14:42:22');
INSERT INTO `special` VALUES ('s09', 'img/special09.jpg', '春夏季末大清仓服饰', '低至2折起', '20.00', '2017-09-01 14:43:21');
INSERT INTO `special` VALUES ('s10', 'img/special10.png', '谷斐儿献爱乞巧', '谷斐儿献爱乞巧', '15.00', '2017-09-01 15:53:22');
INSERT INTO `special` VALUES ('s11', 'img/special11.jpg', '婷妃初秋特惠', '婷妃初秋特惠', '9.90', '2017-09-01 14:45:18');
INSERT INTO `special` VALUES ('s12', 'img/special12.png', '卡特兔初秋特卖专场', '卡特兔初秋特卖专场', '15.00', '2017-09-01 15:53:27');
INSERT INTO `special` VALUES ('s13', 'img/special13.jpg', 'Brita滤水壶', '滤水壶专场特卖', '49.00', '2017-09-01 14:46:40');
INSERT INTO `special` VALUES ('s14', 'img/special14.jpg', '逗童酷库仔秋款特卖专场', '逗童酷库仔秋款特卖专场', '26.80', '2017-09-01 14:47:45');
INSERT INTO `special` VALUES ('s15', 'img/special15.jpg', '七彩圈圈童鞋', '夏季末大清仓', '68.00', '2017-09-01 14:48:27');
INSERT INTO `special` VALUES ('s16', 'img/special16.jpg', '智儿勒宝宝推车特卖', '智儿勒宝宝推车特卖', '238.00', '2017-09-01 14:49:52');
INSERT INTO `special` VALUES ('s17', 'img/special17.jpg', 'MINI SED果冻髋童鞋夏季清仓', 'MINI SED果冻髋童鞋夏季清仓', '39.00', '2017-09-01 14:49:58');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `phonenumber` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `addtime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('00000000034', '13724089986', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:14:11');
INSERT INTO `user` VALUES ('00000000033', '13724089981', '25d55ad283aa400af464c76d713c07ad', '2017-09-07 10:13:03');
INSERT INTO `user` VALUES ('00000000030', '13724089984', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 10:09:23');
INSERT INTO `user` VALUES ('00000000029', '13724089983', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 10:09:08');
INSERT INTO `user` VALUES ('00000000028', '13724089982', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:08:21');
INSERT INTO `user` VALUES ('00000000035', '13025131637', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 10:15:27');
INSERT INTO `user` VALUES ('00000000036', '13724089989', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 10:16:10');
INSERT INTO `user` VALUES ('00000000037', '13724089988', '25d55ad283aa400af464c76d713c07ad', '2017-09-07 10:18:36');
INSERT INTO `user` VALUES ('00000000038', '13724089985', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:21:37');
INSERT INTO `user` VALUES ('00000000039', '13724089973', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:22:09');
INSERT INTO `user` VALUES ('00000000040', '13724089980', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:24:57');
INSERT INTO `user` VALUES ('00000000041', '13724089999', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:25:40');
INSERT INTO `user` VALUES ('00000000042', '13724089987', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:28:22');
INSERT INTO `user` VALUES ('00000000043', '13025131636', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:28:56');
INSERT INTO `user` VALUES ('00000000044', '13724089890', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:29:36');
INSERT INTO `user` VALUES ('00000000045', '13025131631', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:30:29');
INSERT INTO `user` VALUES ('00000000046', '13025131632', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 10:31:33');
INSERT INTO `user` VALUES ('00000000047', '13724009887', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:32:51');
INSERT INTO `user` VALUES ('00000000048', '13025131644', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:38:47');
INSERT INTO `user` VALUES ('00000000049', '13729999999', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:40:07');
INSERT INTO `user` VALUES ('00000000050', '13724777777', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:40:39');
INSERT INTO `user` VALUES ('00000000051', '13766666666', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:53:48');
INSERT INTO `user` VALUES ('00000000052', '13788888888', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:54:44');
INSERT INTO `user` VALUES ('00000000053', '13000000000', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:56:21');
INSERT INTO `user` VALUES ('00000000054', '13111111111', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:57:30');
INSERT INTO `user` VALUES ('00000000055', '13666666666', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:58:23');
INSERT INTO `user` VALUES ('00000000056', '13999999999', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 11:00:17');
INSERT INTO `user` VALUES ('00000000057', '13555555555', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 11:01:28');
INSERT INTO `user` VALUES ('00000000058', '13444444444', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 11:02:21');
INSERT INTO `user` VALUES ('00000000059', '13333333333', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 11:03:00');
INSERT INTO `user` VALUES ('00000000060', '13222222222', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 11:05:07');
INSERT INTO `user` VALUES ('00000000061', '15000000000', '83422503bcfc01d303030e8a7cc80efc', '2017-09-07 15:32:42');
INSERT INTO `user` VALUES ('00000000062', '13456768768', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-09 18:31:33');
SET FOREIGN_KEY_CHECKS=1;
