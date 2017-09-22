/*
 Navicat Premium Data Transfer

 Source Server         : 学习
 Source Server Type    : MySQL
 Source Server Version : 100126
 Source Host           : localhost:3306
 Source Schema         : muyingzhijia

 Target Server Type    : MySQL
 Target Server Version : 100126
 File Encoding         : 65001

 Date: 22/09/2017 17:48:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hotgoods
-- ----------------------------
DROP TABLE IF EXISTS `hotgoods`;
CREATE TABLE `hotgoods`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` decimal(10, 2) DEFAULT NULL,
  `addtime` datetime(0) DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotgoods
-- ----------------------------
INSERT INTO `hotgoods` VALUES (49, 'img/jinxuan0.jpg', '农夫山泉天然���1L（适合婴幼儿）', '维护宝宝肠胃健康！低钠淡矿化度，呵护宝宝稚嫩的代谢系统！', 9.00, '2017-09-22 12:10:56');
INSERT INTO `hotgoods` VALUES (50, 'img/jinxuan1.jpg', '得琪板蓝根抑菌洗手皂85g', '得琪板蓝根抑菌洗手皂85g', 2.00, '2017-09-22 12:10:56');
INSERT INTO `hotgoods` VALUES (51, 'img/jinxuan2.jpg', '宝贝可爱婴儿洁肤湿巾88抽×3包', '随时随地清洁宝宝幼嫩肌肤', 25.80, '2017-09-22 12:10:56');
INSERT INTO `hotgoods` VALUES (52, 'img/jinxuan3.jpg', '米小芽胚芽粥米婴儿米宝宝米1段500g（6个...', '米小芽胚芽粥米婴儿米宝宝米1段500g（6个月以上）', 25.00, '2017-09-22 12:10:56');
INSERT INTO `hotgoods` VALUES (53, 'img/jinxuan4.jpg', '贝亲一次性防溢乳垫120+12片装（塑料包装...', '贴合胸型，材质软，加量不加价', 68.00, '2017-09-22 12:10:56');
INSERT INTO `hotgoods` VALUES (54, 'img/jinxuan5.jpg', '小白熊奶瓶消毒＆烘干器 HL-0681（颜色...', '40分钟，高温蒸汽消毒烘干，一键搞定~月嫂、妈妈圈口碑推荐！LCD智能显示，超大容量可让8个奶瓶，还可以消毒奶嘴、吸奶器、宝宝餐具、口水巾等，家里的大小碗碟也可以哦。', 239.00, '2017-09-22 12:10:56');
INSERT INTO `hotgoods` VALUES (55, 'img/jinxuan6.jpg', 'Nutrilon诺贝能2段较大婴儿配方奶粉9...', 'Nutrilon诺贝能2段较大婴儿配方奶粉900g', 178.00, '2017-09-22 12:10:56');
INSERT INTO `hotgoods` VALUES (56, 'img/jinxuan7.jpg', '保税仓：瑞士美德乐medela丝韵电动吸乳器...', '保税仓：瑞士美德乐medela丝韵电动吸乳器（带卡玛奶嘴）', 799.00, '2017-09-22 12:10:56');
INSERT INTO `hotgoods` VALUES (57, 'img/jinxuan8.jpg', 'pororo啵乐乐儿童卡通背包水枪 佩蒂 紫...', 'pororo啵乐乐儿童卡通背包水枪 佩蒂 紫色', 29.00, '2017-09-22 12:10:56');

-- ----------------------------
-- Table structure for listgoods
-- ----------------------------
DROP TABLE IF EXISTS `listgoods`;
CREATE TABLE `listgoods`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` decimal(10, 2) DEFAULT NULL,
  `addtime` datetime(0) DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10229 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of listgoods
-- ----------------------------
INSERT INTO `listgoods` VALUES (10017, 'http://img.boodoll.cn/pdt/img/n3/8d9b34751d7bc35e_730X730.jpg', '惠氏启赋幼儿配方奶粉3段（12-36月）900g（新配方）', '欧洲直邮专享价', 328.00, '2017-09-22 17:22:03');
INSERT INTO `listgoods` VALUES (10018, 'http://img.boodoll.cn/Product/org/159841_01_01.jpg', '惠氏启赋婴儿配方奶粉1段（0-12月）900g（新配方）', '加9.9元可换购', 348.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10019, 'http://img.boodoll.cn/pdt/img/e7/fa7ef07d548f4b68_730X730.jpg', '惠氏启赋学龄前儿童配方奶粉4段（3-7岁）900g（新配方）', '加9.9元可换购', 268.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10020, 'http://img.boodoll.cn/Product/org/160062_01_01.jpg', '惠氏启赋较大婴儿和幼儿配方奶粉2段（6-18月）900g（新配方）', '加9.9元可换购', 318.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10021, 'http://img.boodoll.cn/Product/org/160063_01_01.jpg', '惠氏启赋较大婴儿和幼儿配方奶粉2段（6-18月）400g', '加9.9元可换购', 158.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10022, 'http://img.boodoll.cn/Product/org/160064_01_01.jpg', '惠氏启赋婴儿配方奶粉1段（0-12月）400g（新配方）', '欧洲直邮专享价', 168.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10023, 'http://img.boodoll.cn/Product/org/160065_01_01.jpg', '惠氏启赋幼儿配方奶粉3段（12-36月）400g（新配方）', '加9.9元可换购', 170.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10024, 'http://img.boodoll.cn/pdt/img/m7/318d0cd85da327a5_730X730.jpg', '惠氏 S-26金装爱儿加早产儿出院后配方奶粉400g（爱尔兰）', '加9.9元可换购', 165.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10025, 'http://img.boodoll.cn/Product/org/60492_01_01.jpg', '惠氏S-26金装爱儿乐妈妈奶粉盒装350g（新加坡）', '欧洲直邮专享价', 65.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10026, 'http://img.boodoll.cn/Product/org/77447_01_01.jpg', '惠氏S-26爱儿乐妈妈奶粉900g（新加坡）', '加9.9元可换购', 172.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10027, 'http://img.boodoll.cn/pdt/img/z9/35ec83ac0606ab4d_730X730.jpg', '惠氏金装爱儿复400g听装', '加9.9元可换购', 115.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10028, 'http://img.boodoll.cn/Product/org/156224_01_01.jpg', '惠氏S-26金装膳儿加GB新配方盒装400g 新包装', '加9.9元可换购', 75.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10029, 'http://img.boodoll.cn/Product/org/156225_01_01.jpg', '惠氏S-26金装膳儿加GB三段新配方罐装900g 新包装', '欧洲直邮专享价', 195.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10030, 'http://img.boodoll.cn/Product/org/156226_01_01.jpg', '惠氏S-26金装膳儿加GB新配方罐装900g(4段) 新包装', '欧洲直邮专享价', 195.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10031, 'http://img.boodoll.cn/Product/org/156227_01_01.jpg', '惠氏S-26金装膳儿加GB新配方盒装1200g 新包装', '加9.9元可换购', 212.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10032, 'http://img.boodoll.cn/pdt/img/d1/2d771ec6cbd746cb_730X730.jpg', '惠氏S-26铂臻爱儿乐1段（0-12月）800g', '加9.9元可换购', 308.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10033, 'http://img.boodoll.cn/pdt/img/x6/ca91f9cc9137e59_730X730.jpg', '惠氏S-26铂臻健儿乐2段（6-12月）800g', '加9.9元可换购', 258.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10034, 'http://img.boodoll.cn/pdt/img/v2/3f691fa3e68a28a5_730X730.jpg', '惠氏S-26铂臻幼儿乐3段（12-36月）800g', '加9.9元可换购', 238.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10035, 'http://img.boodoll.cn/pdt/img/v8/a73a14b754a763c9_730X730.jpg', '皇家美素佳儿3段幼儿配方奶粉800g', '欧洲直邮专享价', 338.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10036, 'http://img.boodoll.cn/pdt/img/q2/f8022d8ca5a41355_730X730.jpg', '皇家美素力1段婴儿配方奶粉800g', '欧洲直邮专享价', 398.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10037, 'http://img.boodoll.cn/pdt/img/d6/e030e2e55f82733_730X730.jpg', '皇家美素佳儿2段较大婴儿配方奶粉800g', '加9.9元可换购', 359.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10038, 'http://img.boodoll.cn/pdt/img/k5/79f39710e55cd6b1_730X730.jpg', '美素力金裝1段婴儿配方奶粉900g(蛋白优化清淡不上火 荷兰皇家菲仕兰原装)', '欧洲直邮专享价', 229.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10039, 'http://img.boodoll.cn/pdt/img/r1/639f8df4970f4c05_730X730.jpg', '美素佳儿金裝2段较大婴儿配方奶粉900g', '欧洲直邮专享价', 215.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10040, 'http://img.boodoll.cn/pdt/img/b1/f500c8a4cccc49b8_730X730.jpg', '美素佳儿金裝3段幼儿配方奶粉900g', '加9.9元可换购', 178.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10041, 'http://img.boodoll.cn/pdt/img/p4/df217fe7153fac00_730X730.jpg', '美素佳儿金装4段儿童配方奶粉900g', '加9.9元可换购', 158.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10042, 'http://img.boodoll.cn/pdt/img/c2/240ea3661d779e9c_730X730.jpg', '美素力金裝1段婴儿配方奶粉400g（新包装）', '欧洲直邮专享价', 109.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10043, 'http://img.boodoll.cn/pdt/img/o7/17fe2dbd3330d892_730X730.jpg', '美素佳儿金装较大婴儿配方奶粉 2段（6-12个月）1200g', '欧洲直邮专享价', 289.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10044, 'http://img.boodoll.cn/pdt/img/a5/ce16fb8d3d7cab90_730X730.jpg', '美素佳儿金装幼儿配方奶粉 3段（1-3岁）1200g', '欧洲直邮专享价', 239.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10045, 'http://img.boodoll.cn/pdt/img/l3/5c833c838a259333_730X730.jpg', '美素佳儿金装儿童配方奶粉 4段（3岁-6岁）1200g', '欧洲直邮专享价', 199.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10046, 'http://img.boodoll.cn/pdt/img/i8/e2cb285ac1cffd47_730X730.jpg', 'Aptamil爱宝美1段婴儿配方奶粉800g（德国原装进口）', '加9.9元可换购', 220.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10047, 'http://img.boodoll.cn/pdt/img/u3/5bc5e619ef58957f_730X730.jpg', 'Aptamil爱宝美2段较大婴儿配方奶粉（6-12个月）800g（德国原装进口）', '加9.9元可换购', 220.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10048, 'http://img.boodoll.cn/pdt/img/t2/fceeb75316c72ca5_730X730.jpg', 'Aptamil爱他美3段幼儿配方奶粉（12-36个月）800g （德国原装进口）', '欧洲直邮专享价', 180.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10049, 'http://img.boodoll.cn/pdt/img/s8/664f93b614434acf_730X730.jpg', 'Aptamil爱他美4段儿童配方奶粉（36-72个月）800g （德国原装进口）', '加9.9元可换购', 180.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10050, 'http://img.boodoll.cn/pdt/img/z1/c7d364d52df9d6c5_730X730.jpg', 'Nutrilon诺贝能1段婴儿配方奶粉900g（荷兰原装进口）', '欧洲直邮专享价', 188.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10051, 'http://img.boodoll.cn/pdt/img/q4/cfedb74eb4e0894b_730X730.jpg', 'Nutrilon诺贝能2段较大婴儿配方奶粉900g', '欧洲直邮专享价', 178.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10052, 'http://img.boodoll.cn/pdt/img/n4/260c5cefc4d93c75_730X730.jpg', 'Nutrilon诺优能4段儿童配方奶粉（36-72个月）800g（荷兰原装进口）', '加9.9元可换购', 148.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10053, 'http://img.boodoll.cn/pdt/img/u4/16d43bdf3c40309d_730X730.jpg', 'Nutrilon诺优能3段幼儿配方奶粉（12-36个月）800g（荷兰原装进口）', '欧洲直邮专享价', 148.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10054, 'http://img.boodoll.cn/pdt/img/z1/c7d364d52df9d6c5_730X730.jpg', 'Nutrilon诺贝能1段婴儿配方奶粉900g（荷兰原装进口）', '欧洲直邮专享价', 188.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10055, 'http://img.boodoll.cn/pdt/img/q4/cfedb74eb4e0894b_730X730.jpg', 'Nutrilon诺贝能2段较大婴儿配方奶粉900g', '加9.9元可换购', 178.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10056, 'http://img.boodoll.cn/pdt/img/n4/260c5cefc4d93c75_730X730.jpg', 'Nutrilon诺优能4段儿童配方奶粉（36-72个月）800g（荷兰原装进口）', '欧洲直邮专享价', 148.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10057, 'http://img.boodoll.cn/pdt/img/u4/16d43bdf3c40309d_730X730.jpg', 'Nutrilon诺优能3段幼儿配方奶粉（12-36个月）800g（荷兰原装进���）', '欧洲直邮专享价', 148.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10058, 'http://img.boodoll.cn/pdt/img/v2/3e256dbdb10402b3_730X730.jpg', '欧洲直邮：Nutrilon荷兰牛栏奶粉1段850g（每单限3罐）', '加9.9元可换购', 179.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10059, 'http://img.boodoll.cn/pdt/img/c7/d32335084cc7b306_730X730.jpg', '欧洲直邮：Nutrilon荷兰牛栏奶粉2段850g（每单限3罐）', '加9.9元可换购', 179.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10060, 'http://img.boodoll.cn/pdt/img/b3/f1f7ad4b96579632_730X730.jpg', '欧洲直邮：Nutrilon荷兰牛栏奶粉3段800g（每单限3罐）', '加9.9元可换购', 179.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10061, 'http://img.boodoll.cn/pdt/img/l4/e8700462e64ba444_730X730.jpg', '欧洲直邮：Nutrilon荷兰牛栏奶粉4段800g（每单限3罐）', '加9.9元可换购', 179.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10062, 'http://img.boodoll.cn/pdt/img/b5/9487077e1ae368e2_730X730.jpg', '欧洲直邮：Nutrilon荷兰牛栏奶粉5段800g（每单限3罐）', '加9.9元可换购', 179.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10063, 'http://img.boodoll.cn/pdt/img/g4/7e1cc199680f9686_730X730.jpg', '欧洲直邮：Nutrilon荷兰牛栏奶粉6段400g（每单限6罐）', '加9.9元可换购', 108.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10064, 'http://img.boodoll.cn/pdt/img/v8/fbc37982f7140f42_730X730.jpg', '欧洲直邮：荷兰牛栏深度水解1段800g（每单限3罐）', '加9.9元可换购', 429.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10065, 'http://img.boodoll.cn/pdt/img/e9/b8671b1d74e8a3bb_730X730.jpg', '欧洲直邮：荷兰牛栏深度水解2段800g（每单限3罐）', '欧洲直邮专享价', 429.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10066, 'http://img.boodoll.cn/pdt/img/e1/4bc5998dfb9cd73b_730X730.jpg', '欧洲直邮：荷兰牛栏半水解1段750g', '加9.9元可换购', 249.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10067, 'http://img.boodoll.cn/pdt/img/w4/60d05caa6949596f_730X730.jpg', '欧洲直邮：荷兰牛栏半水解2段750g', '欧洲直邮专享价', 249.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10068, 'http://img.boodoll.cn/pdt/img/x2/44c9cf48b3368b49_730X730.jpg', '雅培菁智有机1段婴儿配方奶粉900g', '加9.9元可换购', 429.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10069, 'http://img.boodoll.cn/pdt/img/s0/b91f3e65643dc0f5_730X730.jpg', '雅培菁智有机2段较大婴儿和幼儿配方奶粉900g', '加9.9元可换购', 428.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10070, 'http://img.boodoll.cn/pdt/img/w1/262a69ea61912de7_730X730.jpg', '雅培菁智有机3段幼儿配方奶粉900g', '欧洲直邮专享价', 368.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10071, 'http://img.boodoll.cn/Product/org/99132_01_01.jpg', '雅培菁智有机1段婴儿配方奶粉400g', '加9.9元可换购', 199.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10072, 'http://img.boodoll.cn/Product/org/120418_01_01.jpg', '雅培菁智1段婴儿配方奶粉400g', '加9.9元可换购', 159.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10073, 'http://img.boodoll.cn/pdt/img/i9/50f989baabe27852_730X730.jpg', '雅培菁智2段较大婴儿和幼儿配方奶粉900g', '加9.9元可换购', 339.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10074, 'http://img.boodoll.cn/pdt/img/t5/111416feef7e8396_730X730.jpg', '雅培菁智3段幼儿配方奶粉900g', '欧洲直邮专享价', 312.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10075, 'http://img.boodoll.cn/pdt/img/g4/32e94cc23ea343ff_730X730.jpg', '雅培菁智4段儿童配方奶粉900g', '欧洲直邮专享价', 283.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10076, 'http://img.boodoll.cn/pdt/img/a7/66261ce4937add3f_730X730.jpg', '雅培亲体欧洲爱尔兰原装进口奶粉3段（12-36个月）900g（新老包装交替）', '欧洲直邮专享价', 215.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10077, 'http://img.boodoll.cn/pdt/img/s5/91fdc6c701e29cd0_730X730.jpg', '雅培亲体欧洲爱尔兰原装进口奶粉1段（0-6个月）900g', '欧洲直邮专享价', 268.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10078, 'http://img.boodoll.cn/pdt/img/v1/97b706bce668e4c9_730X730.jpg', '雅培亲体欧洲爱尔兰原装进口奶粉2段（6-12个月）900g（新老包装交替）', '欧洲直邮专享价', 236.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10079, 'http://img.boodoll.cn/pdt/img/k1/39dde41c190c0f49_730X730.jpg', '雅培全新金装小安素奶粉900g（香草味）', '欧洲直邮专享价', 208.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10080, 'http://img.boodoll.cn/Product/org/61152_01_01.jpg', '雅培孕哺优金装喜康素孕产妇营养配方奶粉800g', '加9.9元可换购', 168.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10081, 'http://img.boodoll.cn/pdt/img/a8/26e51531288c1d67_730X730.jpg', '雅培亲体金装喜康宝1段900g', '加9.9元可换购', 230.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10082, 'http://img.boodoll.cn/pdt/img/s9/26a6d815c741a2a2_730X730.jpg', '雅培亲体金装喜康力2段900g', '加9.9元可换购', 212.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10083, 'http://img.boodoll.cn/pdt/img/b5/f7d6353b5899216f_730X730.jpg', '雅培亲体金装喜康力3段900g', '加9.9元可换购', 186.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10084, 'http://img.boodoll.cn/pdt/img/e2/b26e813b16133781_730X730.jpg', '雅培亲体金装喜康力4段900g', '欧洲直邮专享价', 149.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10085, 'http://img.boodoll.cn/pdt/img/o6/f39cca4a264467e5_730X730.jpg', '雅培金装1段亲护乳蛋白部分水解婴儿配方奶粉820g', '加9.9元可换购', 309.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10086, 'http://img.boodoll.cn/pdt/img/h1/8b129f6f16ce38e7_730X730.jpg', '雅培金装2段亲护较大婴幼儿护乳蛋白部分水解婴儿配方奶粉820g', '欧洲直邮专享价', 312.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10087, 'http://img.boodoll.cn/pdt/img/k8/8365990a049b0391_730X730.jpg', '雅培金装3段亲护幼儿配方奶粉820g', '欧洲直邮专享价', 300.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10088, 'http://img.boodoll.cn/Product/org/117293_01_01.jpg', '雅培亲体系列金装喜康宝1段三联装1200g', '欧洲直邮专享价', 305.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10089, 'http://img.boodoll.cn/pdt/img/c1/34a86a7957d94adc_730X730.jpg', '雅培亲体系列金装喜康力3段1200g盒装', '加9.9元可换购', 213.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10090, 'http://img.boodoll.cn/Product/org/120416_01_01.jpg', '雅培亲体金装喜康力4段1200g', '加9.9元可换购', 179.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10091, 'http://img.boodoll.cn/Product/org/154565_01_01.jpg', '雅培金装喜康宝早产婴儿配方奶粉370g', '欧洲直邮专享价', 169.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10092, 'http://img.boodoll.cn/pdt/img/n1/b602027910d26b6e_730X730.jpg', '欧洲直邮：HiPP德国喜宝婴儿有机奶粉初段pre600g（每单限4盒）', '欧洲直邮专享价', 109.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10093, 'http://img.boodoll.cn/pdt/img/z3/1c9051e024faef8b_730X730.jpg', '欧洲直邮：HiPP德国喜宝婴儿有机奶粉1段600g（每单限4盒）', '欧洲直邮专享价', 109.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10094, 'http://img.boodoll.cn/pdt/img/s7/d79d7913aced21c5_730X730.jpg', '欧洲直邮：HiPP德国喜宝婴儿有机奶粉2段 800g（每单限3盒）', '欧洲直邮专享价', 135.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10095, 'http://img.boodoll.cn/pdt/img/d5/b35f2e49bc3baaf4_730X730.jpg', '欧洲直邮：HiPP德国喜宝婴儿有机奶粉3段 800g（每单限3盒）', '加9.9元可换购', 135.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10096, 'http://img.boodoll.cn/pdt/img/b5/ad7f6fb4770a3b2c_730X730.jpg', '欧洲直邮：HiPP德国喜宝婴儿有机奶粉12+段 800g（每单限3盒）', '欧洲直邮专享价', 135.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10097, 'http://img.boodoll.cn/pdt/img/c7/f8b44328b16aeb48_730X730.jpg', '欧洲直邮：HiPP德国喜宝婴儿有机益生菌奶粉初段pre600g（每单限4盒）', '加9.9元可换购', 135.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10098, 'http://img.boodoll.cn/pdt/img/m5/eed7692e814ebc4a_730X730.jpg', '欧洲直邮：HiPP德国喜宝婴儿有机益生菌奶粉1段 600g（每单限4盒）', '加9.9元可换购', 135.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10099, 'http://img.boodoll.cn/pdt/img/p9/160f234258c9e971_730X730.jpg', '欧洲直邮：HiPP德国喜宝婴儿有机益生菌奶粉2段600g（每单限4盒）', '加9.9元可换购', 135.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10100, 'http://img.boodoll.cn/pdt/img/a6/d4ed8cde8932d390_730X730.jpg', '欧洲直邮：喜宝有机益生菌奶粉2段荷兰版900g（每单限3罐）', '加9.9元可换购', 189.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10101, 'http://img.boodoll.cn/pdt/img/g6/b5578f843f310515_730X730.jpg', '欧洲直邮：喜宝有机益生菌奶粉3段荷兰版900g（每单限3罐）', '欧洲直邮专享价', 189.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10102, 'http://img.boodoll.cn/pdt/img/d5/b2c0782cf2a63ac5_730X730.jpg', 'a2 白金婴儿配方奶粉1段900g（新配方）', '欧洲直邮专享价', 398.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10103, 'http://img.boodoll.cn/pdt/img/z3/1138c466b5e6e35_730X730.jpg', 'a2 白金婴儿配方奶粉2段900g（新配方）', '加9.9元可换购', 398.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10104, 'http://img.boodoll.cn/pdt/img/g5/2d8cd60cf7e886a2_730X730.jpg', 'a2 白金婴幼配方奶粉3段900g（新西兰）', '加9.9元可换购', 378.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10105, 'http://img.boodoll.cn/pdt/img/x4/f03a714a93a5d6e6_730X730.jpg', '香港直邮：A2白金系列婴幼儿奶粉2段900克 6-12个月', '欧洲直邮专享价', 299.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10106, 'http://img.boodoll.cn/pdt/img/s8/8aadfbbf67eb359d_730X730.jpg', '香港直邮：A2白金系列婴幼儿奶粉3段900克 1-3岁', '加9.9元可换购', 269.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10107, 'http://img.boodoll.cn/pdt/img/n0/f709490dc67a92c3_730X730.jpg', '澳洲直邮：Bellamys贝拉米3段婴幼儿有机牛奶粉900g', '欧洲直邮专享价', 229.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10108, 'http://img.boodoll.cn/pdt/img/u6/cd39746a276bbe9d_730X730.jpg', '澳洲直邮：Bellamys贝拉米2段婴幼儿有机牛奶粉900g', '欧洲直邮专享价', 229.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10109, 'http://img.boodoll.cn/pdt/img/f4/53b2504c3e383806_730X730.jpg', '澳洲直邮：Bellamys贝拉米1段婴幼儿有机牛奶粉900g', '欧洲直邮专享价', 229.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10110, 'http://img.boodoll.cn/pdt/img/h8/1af6f39dea206ac6_730X730.jpg', '雀巢AL110腹泻配方奶粉听装400g（安儿宁）', '欧洲直邮专享价', 119.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10111, 'http://img.boodoll.cn/pdt/img/y0/bd829177cdc6a9ac_730X730.jpg', '雀巢超级能恩1段800g', '欧洲直邮专享价', 299.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10112, 'http://img.boodoll.cn/pdt/img/b8/212cfc5bb10a2c85_730X730.jpg', '雀巢超级能恩2段800g', '欧洲直邮专享价', 289.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10113, 'http://img.boodoll.cn/pdt/img/y3/5c5008593f382aff_730X730.jpg', '雀巢超级能恩3段800g', '欧洲直邮专享价', 278.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10114, 'http://img.boodoll.cn/pdt/img/z8/4b9e84aabe9de0f6_730X730.jpg', '雀巢早产儿特别能恩2段听装400g', '加9.9元可换购', 168.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10115, 'http://img.boodoll.cn/Product/org/59493_01_01.jpg', '美赞臣安婴儿A+无乳糖配方婴儿奶粉听装400g(新包装)', '加9.9元可换购', 126.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10116, 'http://img.boodoll.cn/pdt/img/f9/5b828119e15e1728_730X730.jpg', '美赞臣安婴妈妈A+配方奶粉900g（新）', '欧洲直邮专享价', 179.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10117, 'http://img.boodoll.cn/pdt/img/m2/d6c4e8de617aae72_730X730.jpg', '美赞臣安儿健A+4段儿童配方奶粉盒装400g*3（新）', '加9.9元可换购', 167.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10118, 'http://img.boodoll.cn/pdt/img/w0/92cf306b2ade4d28_730X730.jpg', '美赞臣安儿宝A+3段幼儿配方奶粉盒装400g*3（新）', '加9.9元可换购', 205.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10119, 'http://img.boodoll.cn/pdt/img/b2/61ab3c49ba5ab1ed_730X730.jpg', '美赞臣安婴宝A+2段较大配方奶粉盒装400g*3（新）', '加9.9元可换购', 260.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10120, 'http://img.boodoll.cn/pdt/img/w6/8d11001ee6d2d2b4_730X730.jpg', '美赞臣安婴宝A+2段较大婴儿配方奶粉900g（新）', '欧洲直邮专享价', 209.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10121, 'http://img.boodoll.cn/pdt/img/l8/5bb10e3342488802_730X730.jpg', '美赞臣安婴儿A+1段婴儿配方奶粉900g（新）', '欧洲直邮专享价', 238.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10122, 'http://img.boodoll.cn/pdt/img/x6/d5a9b03dc66cb698_730X730.jpg', '美赞臣安儿健A+4段儿童配方奶粉900g（新）', '加9.9元可换购', 155.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10123, 'http://img.boodoll.cn/pdt/img/f0/f6bacd9b62fc8536_730X730.jpg', '美赞臣安儿宝A+3段幼儿配方奶粉900g（新）', '加9.9元可换购', 189.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10124, 'http://img.boodoll.cn/pdt/img/f4/a27a2767582c97a_730X730.jpg', '美赞臣安婴儿A+亲舒1段乳蛋白部分水解婴儿配方粉850g（荷兰原装进口）', '加9.9元可换购', 379.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10125, 'http://img.boodoll.cn/pdt/img/w6/7f3a7abae0a383f4_730X730.jpg', '美赞臣安婴儿A+亲舒1段乳蛋白部分水解婴儿配方粉400g（荷兰原装进口）', '欧洲直邮专享价', 173.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10126, 'http://img.boodoll.cn/pdt/img/l2/321658b367ec1f5a_730X730.jpg', '美赞臣安婴宝A+亲舒2段乳蛋白部分水解较大婴儿配方粉850g（荷兰原装进口）', '加9.9元可换购', 355.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10127, 'http://img.boodoll.cn/pdt/img/r5/9496cc71382ef2ea_730X730.jpg', '美赞臣安婴宝A+亲舒2段乳蛋白部分水解较大婴儿配方粉400g（荷兰原装进口）', '欧洲直邮专享价', 169.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10128, 'http://img.boodoll.cn/pdt/img/z1/249c979b83e5d95a_730X730.jpg', '美赞臣安儿宝A+亲舒3段幼儿配方奶粉850g（荷兰原装进口）', '加9.9元可换购', 315.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10129, 'http://img.boodoll.cn/pdt/img/h1/1392eb83b17bf97_730X730.jpg', '美赞臣安婴儿A+1段婴儿配方奶粉400g（荷兰原装进口）', '欧洲直邮专享价', 136.50, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10130, 'http://img.boodoll.cn/pdt/img/i5/a504632de80b28ee_730X730.jpg', '美赞臣安婴儿A+1段婴儿配方奶粉850g（荷兰原装进口）（效期至2018年2月）', '加9.9元可换购', 275.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10131, 'http://img.boodoll.cn/pdt/img/q9/3737eb1fed784f37_730X730.jpg', '美赞臣安婴宝A+2段较大婴儿配方奶粉400g（荷兰原装进口）（效期至2017年11月）', '加9.9元可换购', 132.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10132, 'http://img.boodoll.cn/pdt/img/v4/eaa6ce9c90f0e0fb_730X730.jpg', '美赞臣安婴宝A+2段较大婴儿配方奶粉850g（荷兰原装进口）（新老包装交替）', '欧洲直邮专享价', 265.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10133, 'http://img.boodoll.cn/pdt/img/d3/b8b8f99a4a8e208e_730X730.jpg', '美赞臣安儿宝A+3段幼儿配方奶粉850g（荷兰原装进口）（新老包装交替）', '欧洲直邮专享价', 245.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10134, 'http://img.boodoll.cn/pdt/img/v2/b0e8b66ac67a69e2_730X730.jpg', '纽康特氨基酸婴儿配方粉400g（新）', '欧洲直邮专享价', 345.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10135, 'http://img.boodoll.cn/Product/org/33150_01_01.jpg', '纽太特乳蛋白深度水解婴儿配方奶粉450g（新）', '欧洲直邮专享价', 298.00, '2017-09-22 17:22:04');
INSERT INTO `listgoods` VALUES (10136, 'http://img.boodoll.cn/pdt/img/o6/c0f589417f39ada3_380X380.jpg', '花王婴儿纸尿裤L54片', '花王两包减10/4包减20', 119.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10137, 'http://img.boodoll.cn/product/big/71753_01_01.jpg', '花王纸尿裤XL44片', '花王两包减20/4包减40', 135.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10138, 'http://img.boodoll.cn/pdt/img/s1/2208f70cb80dfea8_380X380.jpg', '花王婴儿拉拉裤XL38片', '花王两包减20/4包减40', 125.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10139, 'http://img.boodoll.cn/pdt/img/c2/758fb2161117f343_380X380.jpg', '花王纸尿裤NB90片', '加9.9元可换购', 99.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10140, 'http://img.boodoll.cn/pdt/img/k2/4ba363d19ae0f98a_380X380.jpg', '花王婴儿纸尿裤S82片', '花王两包减10/4包减20', 112.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10141, 'http://img.boodoll.cn/pdt/img/f4/fe1b4b0be36eb712_380X380.jpg', '花王婴儿纸尿裤M64片', '花王两包减10/4包减20', 119.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10142, 'http://img.boodoll.cn/pdt/img/o6/a603b041b6487272_380X380.jpg', '花王婴儿拉拉裤L44片', '花王两包减20/4包减40', 128.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10143, 'http://img.boodoll.cn/product/big/156449_01_01.jpg', '保税仓：Merries花王婴儿拉拉裤L44片适用9-14kg(有效期至2018.10)', '海淘清仓特价', 79.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10144, 'http://img.boodoll.cn/product/big/156389_01_01.jpg', '保税仓：Merries花王婴儿纸尿裤L54片适用9-14kg （有效期至2018.10)', '搬空保税仓大清仓', 89.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10145, 'http://img.boodoll.cn/pdt/img/o6/c0f589417f39ada3_380X380.jpg', '花王婴儿纸尿裤L54片', '花王两包减10/4包减20', 119.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10146, 'http://img.boodoll.cn/product/big/71753_01_01.jpg', '花王纸尿裤XL44片', '花王两包减20/4包减40', 135.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10147, 'http://img.boodoll.cn/pdt/img/c2/758fb2161117f343_380X380.jpg', '花王纸尿裤NB90片', '加9.9元可换购', 99.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10148, 'http://img.boodoll.cn/pdt/img/k2/4ba363d19ae0f98a_380X380.jpg', '花王婴儿纸尿裤S82片', '花王两包减10/4包减20', 112.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10149, 'http://img.boodoll.cn/pdt/img/f4/fe1b4b0be36eb712_380X380.jpg', '花王婴儿纸尿裤M64片', '花王两包减10/4包减20', 119.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10150, 'http://img.boodoll.cn/pdt/img/o6/a603b041b6487272_380X380.jpg', '花王婴儿拉拉裤L44片', '花王两包减20/4包减40', 128.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10151, 'http://img.boodoll.cn/pdt/img/s1/2208f70cb80dfea8_380X380.jpg', '花王婴儿拉拉裤XL38片', '花王两包减20/4包减40', 125.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10152, 'http://img.boodoll.cn/pdt/img/d9/b84d36ba82de138e_380X380.jpg', '花王拉拉裤L27片', '加9.9元可换购', 79.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10153, 'http://img.boodoll.cn/pdt/img/g2/e53dba8ff8dc2e99_380X380.jpg', 'Moony婴儿纸尿裤L54片', '加9.9元可换购', 102.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10154, 'http://img.boodoll.cn/pdt/img/m8/d3ccfe2bd2d6459c_380X380.jpg', 'Moony婴儿纸尿裤M64片', '加9.9元可换购', 102.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10155, 'http://img.boodoll.cn/pdt/img/f2/e7b9e215feb55e74_380X380.jpg', 'Moony婴儿纸尿裤S84片', '加9.9元可换购', 102.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10156, 'http://img.boodoll.cn/pdt/img/s2/c0fcca0c32bdd439_380X380.jpg', 'Moony婴儿纸尿裤NB90片', '加9.9元可换购', 89.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10157, 'http://img.boodoll.cn/pdt/img/b4/4429f2abc835b2a2_380X380.jpg', 'Moony拉拉裤男XL38片', '加9.9元可换购', 102.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10158, 'http://img.boodoll.cn/product/big/156629_01_01.jpg', 'Moony婴儿纸尿裤L116片', '加9.9元可换购', 316.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10159, 'http://img.boodoll.cn/pdt/img/r9/f449286f7ad0ad1f_380X380.jpg', 'Moony拉拉裤女XL38片', '加9.9元可换购', 102.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10160, 'http://img.boodoll.cn/pdt/img/c7/caa126bbe490b65d_380X380.jpg', 'Moony拉拉裤女L44片', '加9.9元可换购', 102.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10161, 'http://img.boodoll.cn/pdt/img/b0/fd3c0eefafc14e18_380X380.jpg', 'Moony拉拉裤男L44片', '加9.9元可换购', 102.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10162, 'http://img.boodoll.cn/product/big/155633_01_01.jpg', '免税店：moony尤妮佳婴幼儿纸尿裤NB90片适用新生-5kg（有效期至2018.10）', '海淘清仓特价', 66.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10163, 'http://img.boodoll.cn/product/big/155633_01_01.jpg', '免税店：moony尤妮佳婴幼儿纸尿裤NB90片适用新生-5kg（有效期至2018.10）', '海淘清仓特价', 66.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10164, 'http://img.boodoll.cn/pdt/img/s2/c0fcca0c32bdd439_380X380.jpg', 'Moony婴儿纸尿裤NB90片', '加9.9元可换购', 89.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10165, 'http://img.boodoll.cn/pdt/img/f2/e7b9e215feb55e74_380X380.jpg', 'Moony婴儿纸尿裤S84片', '加9.9元可换购', 102.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10166, 'http://img.boodoll.cn/pdt/img/m8/d3ccfe2bd2d6459c_380X380.jpg', 'Moony婴儿纸尿裤M64片', '加9.9元可换购', 102.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10167, 'http://img.boodoll.cn/pdt/img/g2/e53dba8ff8dc2e99_380X380.jpg', 'Moony婴儿纸尿裤L54片', '加9.9元可换购', 102.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10168, 'http://img.boodoll.cn/pdt/img/b0/fd3c0eefafc14e18_380X380.jpg', 'Moony拉拉裤男L44片', '加9.9元可换购', 102.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10169, 'http://img.boodoll.cn/pdt/img/c7/caa126bbe490b65d_380X380.jpg', 'Moony拉拉裤女L44片', '加9.9元可换购', 102.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10170, 'http://img.boodoll.cn/pdt/img/b4/4429f2abc835b2a2_380X380.jpg', 'Moony拉拉裤男XL38片', '加9.9元可换购', 102.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10171, 'http://img.boodoll.cn/pdt/img/r9/f449286f7ad0ad1f_380X380.jpg', 'Moony拉拉裤女XL38片', '加9.9元可换购', 102.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10172, 'http://img.boodoll.cn/product/big/156628_01_01.jpg', 'Moony婴儿纸尿裤M136片', '加9.9元可换购', 316.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10173, 'http://img.boodoll.cn/product/big/156629_01_01.jpg', 'Moony婴儿纸尿裤L116片', '加9.9元可换购', 316.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10174, 'http://img.boodoll.cn/pdt/img/t9/46e428f524967f8e_380X380.jpg', '大王天使系列婴幼儿纸尿裤L38', '加9.9元可换购', 158.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10175, 'http://img.boodoll.cn/pdt/img/w0/7ae7184ef4352763_380X380.jpg', '大王天使系列婴幼儿纸尿裤XL30', '加9.9元可换购', 158.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10176, 'http://img.boodoll.cn/pdt/img/c6/a8d16e020175ec33_380X380.jpg', '大王天使系列婴幼儿纸尿裤NB62', '加9.9元可换购', 158.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10177, 'http://img.boodoll.cn/pdt/img/m7/14ed298634f2a211_380X380.jpg', '大王天使系列婴幼儿纸尿裤M46', '加9.9元可换购', 158.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10178, 'http://img.boodoll.cn/pdt/img/w3/5a5d4a4a647fbbfd_380X380.jpg', '大王维E系列环贴式婴幼儿纸尿裤XL52片', '加9.9元可换购', 125.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10179, 'http://img.boodoll.cn/pdt/img/w5/d73247384b0d9be7_380X380.jpg', '大王维E系列环贴式婴幼儿纸尿裤L68片', '加9.9元可换购', 125.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10180, 'http://img.boodoll.cn/pdt/img/f3/905ecf9ce4e47a52_380X380.jpg', '大王天使系列婴幼儿纸尿裤S58', '加9.9元可换购', 158.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10181, 'http://img.boodoll.cn/pdt/img/c6/a8d16e020175ec33_380X380.jpg', '大王天使系列婴幼儿纸尿裤NB62', '加9.9元可换购', 158.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10182, 'http://img.boodoll.cn/pdt/img/f3/905ecf9ce4e47a52_380X380.jpg', '大王天使系列婴幼儿纸尿裤S58', '加9.9元可换购', 158.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10183, 'http://img.boodoll.cn/pdt/img/m7/14ed298634f2a211_380X380.jpg', '大王天使系列婴幼儿纸尿裤M46', '加9.9元可换购', 158.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10184, 'http://img.boodoll.cn/pdt/img/t9/46e428f524967f8e_380X380.jpg', '大王天使系列婴幼儿纸尿裤L38', '加9.9元可换购', 158.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10185, 'http://img.boodoll.cn/pdt/img/w0/7ae7184ef4352763_380X380.jpg', '大王天使系列婴幼儿纸尿裤XL30', '加9.9元可换购', 158.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10186, 'http://img.boodoll.cn/pdt/img/g5/57d18ab3112c3928_380X380.jpg', '大王维E系列环贴式婴幼儿纸尿裤NB102片', '加9.9元可换购', 109.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10187, 'http://img.boodoll.cn/product/big/155359_01_01.jpg', '大王维E系列环贴式婴幼儿纸尿裤S92片', '加9.9元可换购', 115.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10188, 'http://img.boodoll.cn/pdt/img/b1/5959ec5480535821_380X380.jpg', '大王维E系列环贴式婴幼儿纸尿裤M84片', '加9.9元可换购', 125.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10189, 'http://img.boodoll.cn/pdt/img/w5/d73247384b0d9be7_380X380.jpg', '大王维E系列环贴式婴幼儿纸尿裤L68片', '加9.9元可换购', 125.00, '2017-09-22 17:22:05');
INSERT INTO `listgoods` VALUES (10190, 'http://img.boodoll.cn/pdt/img/w3/5a5d4a4a647fbbfd_380X380.jpg', '大王维E系列环贴式婴幼儿纸尿裤XL52片', '加9.9元可换购', 125.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10191, 'http://img.boodoll.cn/product/big/156132_01_01.jpg', '大王短裤式纸尿裤男L56片', '加9.9元可换购', 125.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10192, 'http://img.boodoll.cn/product/big/156133_01_01.jpg', '大王短裤式纸尿裤女L56片', '加9.9元可换购', 125.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10193, 'http://img.boodoll.cn/product/big/156134_01_01.jpg', '大王短裤式纸尿裤男XL50片', '加9.9元可换购', 125.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10194, 'http://img.boodoll.cn/product/big/156135_01_01.jpg', '大王短裤式纸尿裤女XL50片', '加9.9元可换购', 125.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10195, 'http://img.boodoll.cn/product/big/156136_01_01.jpg', '大王短裤式纸尿裤男XXL34片', '加9.9元可换购', 125.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10196, 'http://img.boodoll.cn/product/big/156137_01_01.jpg', '大王短裤式纸尿裤女XXL34片', '加9.9元可换购', 125.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10197, 'http://img.boodoll.cn/pdt/img/r7/271bebab264afad6_380X380.jpg', 'Huggies好奇金装超柔贴身纸尿裤箱装M162片（7-11kg）', '加9.9元可换购', 249.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10198, 'http://img.boodoll.cn/product/big/148074_01_01.jpg', 'Huggies好奇铂金装倍柔亲肤透气纸尿裤M72片（7-11kg）', '加9.9元可换购', 195.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10199, 'http://img.boodoll.cn/product/big/89538_01_01.jpg', '妈咪宝贝瞬吸干爽纸尿裤NB62片（新老包装交替）', '加9.9元可换购', 75.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10200, 'http://img.boodoll.cn/pdt/img/k3/a5d48bf8666069a_380X380.jpg', '帮宝适超薄干爽系列电子商务渠道纸尿裤彩箱装XL128片', '加9.9元可换购', 230.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10201, 'http://img.boodoll.cn/pdt/img/a2/9e6baf6a12913e62_380X380.jpg', '帮宝适超薄干爽系列纸尿裤大包装XXL34片', '加9.9元可换购', 88.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10202, 'http://img.boodoll.cn/pdt/img/e1/fd379fba5aa1586a_380X380.jpg', '帮宝适超薄干爽系列电子商务渠道纸尿裤彩箱装L164片', '加9.9元可换购', 240.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10203, 'http://img.boodoll.cn/pdt/img/p6/aa26622e9127cece_380X380.jpg', '帮宝适超薄干爽拉拉裤电商超大包XL72片', '加9.9元可换购', 130.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10204, 'http://img.boodoll.cn/pdt/img/a2/ec03b28757012f99_380X380.jpg', '帮宝适超薄干爽系列电子商务渠道纸尿裤彩箱装M192片', '加9.9元可换购', 230.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10205, 'http://img.boodoll.cn/pdt/img/s1/5c6bfd639869e9b4_380X380.jpg', '帮宝适超薄干爽系列纸尿裤大包装S114片', '加9.9元可换购', 112.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10206, 'http://img.boodoll.cn/pdt/img/p6/d4bd6a2608f16eaa_380X380.jpg', '帮宝适超薄干爽系列纸尿裤超大包装L84片', '加9.9元可换购', 128.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10207, 'http://img.boodoll.cn/pdt/img/r3/bee80794cf8c1fc4_380X380.jpg', '帮宝适超薄干爽系列纸尿裤大包装NB96片（新老包装交替）', '加9.9元可换购', 89.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10208, 'http://img.boodoll.cn/pdt/img/k1/25c403472086bdb8_380X380.jpg', '帮宝适超薄干爽系列纸尿裤超大包装M100片', '加9.9元可换购', 137.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10209, 'http://img.boodoll.cn/pdt/img/r6/c23ca4f7d041ae76_380X380.jpg', '帮宝适超薄干爽拉拉裤中包装L24片', '加9.9元可换购', 36.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10210, 'http://img.boodoll.cn/pdt/img/a2/ec03b28757012f99_380X380.jpg', '帮宝适超薄干爽系列电子商务渠道纸尿裤彩箱装M192片', '加9.9元可换购', 230.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10211, 'http://img.boodoll.cn/pdt/img/e1/fd379fba5aa1586a_380X380.jpg', '帮宝适超薄干爽系列电子商务渠道纸尿裤彩箱装L164片', '加9.9元可换购', 240.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10212, 'http://img.boodoll.cn/pdt/img/k3/a5d48bf8666069a_380X380.jpg', '帮宝适超薄干爽系列电子商务渠道纸尿裤彩箱装XL128片', '加9.9元可换购', 230.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10213, 'http://img.boodoll.cn/pdt/img/w1/7362aba9c7d06777_380X380.jpg', '帮宝适超薄干爽电商网络特惠装S164片', '加9.9元可换购', 148.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10214, 'http://img.boodoll.cn/pdt/img/r3/bee80794cf8c1fc4_380X380.jpg', '帮宝适超薄干爽系列纸尿裤大包装NB96片（新老包装交替）', '加9.9元可换购', 89.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10215, 'http://img.boodoll.cn/pdt/img/e4/cd532b6123b969da_380X380.jpg', '帮宝适超薄干爽拉拉裤电商彩箱L120片', '加9.9元可换购', 150.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10216, 'http://img.boodoll.cn/pdt/img/g4/7ad7df7eddb8c41f_380X380.jpg', '帮宝适超薄干爽拉拉裤电商彩箱XL108片', '加9.9元可换购', 179.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10217, 'http://img.boodoll.cn/pdt/img/f3/98397a88f7519046_380X380.jpg', '帮宝适特级棉柔纸尿裤电商网络特惠装S136片', '加9.9元可换购', 209.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10218, 'http://img.boodoll.cn/product/big/156125_01_01.jpg', '帮宝适特级棉柔纸尿裤电商特惠装M160片', '加9.9元可换购', 289.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10219, 'http://img.boodoll.cn/product/big/156123_01_01.jpg', '帮宝适特级棉柔纸尿裤电商特惠装L124片', '加9.9元可换购', 279.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10220, 'http://img.boodoll.cn/product/big/149807_01_01.jpg', '帮宝适特级棉柔拉拉裤电商超大包装M84片', '加9.9元可换购', 172.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10221, 'http://img.boodoll.cn/product/big/149808_01_01.jpg', '帮宝适特级棉柔拉拉裤电商超大包装L68片', '加9.9元可换购', 172.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10222, 'http://img.boodoll.cn/pdt/img/t8/282dcded1663ef75_380X380.jpg', '日本进口一级帮宝适纸尿裤大包装初生码NB84片', '加9.9元可换购', 136.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10223, 'http://img.boodoll.cn/pdt/img/p8/c77bc82d4550bfc1_380X380.jpg', '日本进口一级帮宝适纸尿裤大包装小码S76片', '加9.9元可换购', 136.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10224, 'http://img.boodoll.cn/pdt/img/k0/241a0f37c4f37dd5_380X380.jpg', '日本进口一级帮宝适婴儿纸尿裤大包中码M62片', '加9.9元可换购', 152.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10225, 'http://img.boodoll.cn/pdt/img/t0/96ea07b90ea66813_380X380.jpg', '日本进口一级帮宝适纸尿裤大包装大码L52片', '加9.9元可换购', 152.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10226, 'http://img.boodoll.cn/pdt/img/x9/be46dd91cf31c1e9_380X380.jpg', '日本进口一级帮宝适纸尿裤大包装加大码XL42片', '加9.9元可换购', 152.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10227, 'http://img.boodoll.cn/product/big/107869_01_01.jpg', 'pampers帮宝适特级棉柔系列纸尿裤S62片（日本原装进口）', '加9.9元可换购', 72.00, '2017-09-22 17:22:06');
INSERT INTO `listgoods` VALUES (10228, 'http://img.boodoll.cn/product/big/107870_01_01.jpg', 'pampers帮宝适特级棉柔系列纸尿裤M50片（日本原装进口）', '加9.9元可换购', 72.00, '2017-09-22 17:22:06');

-- ----------------------------
-- Table structure for special
-- ----------------------------
DROP TABLE IF EXISTS `special`;
CREATE TABLE `special`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` decimal(10, 2) DEFAULT NULL,
  `addtime` datetime(0) DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 668 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of special
-- ----------------------------
INSERT INTO `special` VALUES (655, 'img/special0.jpg', '嘉宝Gerber满99减10', '嘉宝辅食满99减10', 35.00, '2017-09-22 12:10:56');
INSERT INTO `special` VALUES (656, 'img/special1.jpg', '卡特兔秋款商品特卖专场', '卡特兔秋款商品特卖专场', 15.00, '2017-09-22 12:10:56');
INSERT INTO `special` VALUES (657, 'img/special2.jpg', '花王纸尿裤M64 L54折后114元 xl4...', '花王纸尿裤直降疯抢', 112.00, '2017-09-22 12:10:56');
INSERT INTO `special` VALUES (658, 'img/special3.jpg', '飞行宝宝太阳眼镜2件减30', '飞行宝宝眼镜新品上市', 159.00, '2017-09-22 12:10:56');
INSERT INTO `special` VALUES (659, 'img/special4.jpg', '米小芽宝宝米 辅食粥 胚芽米', '米小芽宝宝米 辅食粥 胚芽米', 25.00, '2017-09-22 12:10:56');
INSERT INTO `special` VALUES (660, 'img/special5.jpg', '婷妃孕产内衣专场', '婷妃孕产内衣专场', 9.90, '2017-09-22 12:10:56');
INSERT INTO `special` VALUES (661, 'img/special6.jpg', '康宝妈咪孕装秋季清仓', '康宝妈咪孕装秋季清仓', 9.90, '2017-09-22 12:10:56');
INSERT INTO `special` VALUES (662, 'img/special7.jpg', '谷斐尔国庆大放价', '谷斐尔国庆大放价', 15.90, '2017-09-22 12:10:56');
INSERT INTO `special` VALUES (663, 'img/special8.jpg', '逗童酷裤仔童装新特惠专场', '逗童酷裤仔童装新特惠专场', 28.80, '2017-09-22 12:10:56');
INSERT INTO `special` VALUES (664, 'img/special9.jpg', '秋季新品热销', '秋季新品热销', 45.00, '2017-09-22 12:10:56');
INSERT INTO `special` VALUES (665, 'img/special10.jpg', '七彩圈圈童鞋夏清仓秋上新专场', '七彩圈圈童鞋夏清仓秋上新专场', 79.00, '2017-09-22 12:10:56');
INSERT INTO `special` VALUES (666, 'img/special11.jpg', 'MINI SED果冻款童鞋秋季上新专场', 'MINI SED果冻款童鞋秋季上新专场', 39.00, '2017-09-22 12:10:56');
INSERT INTO `special` VALUES (667, 'img/special12.jpg', '皇家美素买2送1单罐折后低至239元', '皇家美素买2送1单罐折后低至239元', 229.00, '2017-09-22 12:10:56');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `phonenumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` datetime(0) DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (00000000034, '13724089986', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:14:11');
INSERT INTO `user` VALUES (00000000033, '13724089981', '25d55ad283aa400af464c76d713c07ad', '2017-09-07 10:13:03');
INSERT INTO `user` VALUES (00000000030, '13724089984', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 10:09:23');
INSERT INTO `user` VALUES (00000000029, '13724089983', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 10:09:08');
INSERT INTO `user` VALUES (00000000028, '13724089982', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:08:21');
INSERT INTO `user` VALUES (00000000035, '13025131637', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 10:15:27');
INSERT INTO `user` VALUES (00000000036, '13724089989', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 10:16:10');
INSERT INTO `user` VALUES (00000000037, '13724089988', '25d55ad283aa400af464c76d713c07ad', '2017-09-07 10:18:36');
INSERT INTO `user` VALUES (00000000038, '13724089985', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:21:37');
INSERT INTO `user` VALUES (00000000039, '13724089973', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:22:09');
INSERT INTO `user` VALUES (00000000040, '13724089980', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:24:57');
INSERT INTO `user` VALUES (00000000041, '13724089999', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:25:40');
INSERT INTO `user` VALUES (00000000042, '13724089987', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:28:22');
INSERT INTO `user` VALUES (00000000043, '13025131636', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:28:56');
INSERT INTO `user` VALUES (00000000044, '13724089890', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:29:36');
INSERT INTO `user` VALUES (00000000045, '13025131631', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:30:29');
INSERT INTO `user` VALUES (00000000046, '13025131632', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 10:31:33');
INSERT INTO `user` VALUES (00000000047, '13724009887', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:32:51');
INSERT INTO `user` VALUES (00000000048, '13025131644', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:38:47');
INSERT INTO `user` VALUES (00000000049, '13729999999', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:40:07');
INSERT INTO `user` VALUES (00000000050, '13724777777', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:40:39');
INSERT INTO `user` VALUES (00000000051, '13766666666', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:53:48');
INSERT INTO `user` VALUES (00000000052, '13788888888', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:54:44');
INSERT INTO `user` VALUES (00000000053, '13000000000', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:56:21');
INSERT INTO `user` VALUES (00000000054, '13111111111', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:57:30');
INSERT INTO `user` VALUES (00000000055, '13666666666', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 10:58:23');
INSERT INTO `user` VALUES (00000000056, '13999999999', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 11:00:17');
INSERT INTO `user` VALUES (00000000057, '13555555555', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 11:01:28');
INSERT INTO `user` VALUES (00000000058, '13444444444', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 11:02:21');
INSERT INTO `user` VALUES (00000000059, '13333333333', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-07 11:03:00');
INSERT INTO `user` VALUES (00000000060, '13222222222', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-07 11:05:07');
INSERT INTO `user` VALUES (00000000061, '15000000000', '83422503bcfc01d303030e8a7cc80efc', '2017-09-07 15:32:42');
INSERT INTO `user` VALUES (00000000062, '13456768768', 'fcea920f7412b5da7be0cf42b8c93759', '2017-09-09 18:31:33');
INSERT INTO `user` VALUES (00000000063, '13432879269', '94b8cea57c49a3007225a0c70c475450', '2017-09-20 09:32:30');

SET FOREIGN_KEY_CHECKS = 1;
