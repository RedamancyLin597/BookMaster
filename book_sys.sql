/*
 Navicat Premium Data Transfer

 Source Server         : bookmaster
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : book_sys

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 11/03/2024 23:33:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简介',
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '价格',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '作者',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出版日期',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出版社',
  `store` int NULL DEFAULT NULL COMMENT '数量',
  `active` tinyint(1) NULL DEFAULT 1 COMMENT '上架',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (5, '天龙八部', '以宋哲宗时代为背景，通过宋、辽、大理、西夏、吐蕃等王国之间的武林恩怨和民族矛盾，从哲学的高度对人生和社会进行审视和描写，展示了一幅波澜壮阔的生活画卷。其故事之离奇曲折、涉及人物之众多、历史背景之广泛、武侠战役之庞大、想象力之丰富当属“金庸小说”之最。作品风格宏伟悲壮，是一部写尽人性、悲剧色彩浓厚的史诗巨著。', '39.90', 'http://localhost:9091/file/%E5%A4%A9%E9%BE%99%E5%85%AB%E9%83%A8.jpg', '金庸', '1980', '三联出版社', 24, 1);
INSERT INTO `book` VALUES (6, '神雕侠侣', '杨过14岁起师从18岁的小龙女，于古墓派之中苦练武功，师徒二人情深义重、日久生情，却无奈于江湖阴鸷险恶、蒙古铁骑来犯使得有情之人难成眷属。历经一番坎坷与磨难的考验，杨过冲破封建礼教之禁锢，最终与小龙女由师徒变为“侠侣”。同时，在这段磨难经历中，杨过也消除了对郭靖、黄蓉夫妇的误会，在家仇与国难间作出抉择，成为真正的“侠之大者”。', '32.00', 'http://localhost:9091/file/%E7%A5%9E%E9%9B%95%E4%BE%A0%E4%BE%A3.jpg', '金庸', '1980', '三联出版社', 16, 1);
INSERT INTO `book` VALUES (7, '活着', '余华的代表作之一，讲述了一个人在苦难中的生存与挣扎，以及人性的复杂与温暖。', '28.00', 'http://localhost:9091/file/%E6%B4%BB%E7%9D%80.jpg', '余华', '1993', '作家出版社', 19, 1);
INSERT INTO `book` VALUES (8, '小王子', '法国作家安托万·德·圣埃克苏佩里的经典童话，讲述了一个小王子的奇幻冒险故事，寓意深刻。', '25.00', 'http://localhost:9091/file/%E5%B0%8F%E7%8E%8B%E5%AD%90.jpg', '安托万·德·圣埃克苏佩里', '1943', '人民文学出版社', 10, 1);
INSERT INTO `book` VALUES (9, '人类简史', '美国作家尤瓦尔·赫拉利的畅销书，以全新的角度探讨了人类的起源、发展和未来，引人入胜。', '78.00', 'http://localhost:9091/file/%E4%BA%BA%E7%B1%BB%E7%AE%80%E5%8F%B2.jpg', '尤瓦尔·赫拉利', '2017', '中信出版社', 13, 1);
INSERT INTO `book` VALUES (10, '百年孤独', '哥伦比亚作家加西亚·马尔克斯的代表作，讲述了布恩迪亚家族七代人的传奇故事，融合了现实与魔幻。', '49.00', 'http://localhost:9091/file/%E7%99%BE%E5%B9%B4%E5%AD%A4%E7%8B%AC.jpg', '加西亚·马尔克斯', '1967', '南海出版社', 22, 0);
INSERT INTO `book` VALUES (11, '时间简史', '英国物理学家斯蒂芬·霍金的科普经典，以通俗易懂的方式介绍了宇宙、黑洞、时间等复杂的物理概念。', '88.00', 'http://localhost:9091/file/%E6%97%B6%E9%97%B4%E7%AE%80%E5%8F%B2.jpg', '斯蒂芬·霍金', '1988', '湖南科学技术出版社', 17, 1);

-- ----------------------------
-- Table structure for book_borrow
-- ----------------------------
DROP TABLE IF EXISTS `book_borrow`;
CREATE TABLE `book_borrow`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_id` int NULL DEFAULT NULL COMMENT '图书id',
  `user_id` int NULL DEFAULT NULL COMMENT '借书人id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '借书人',
  `num` int NULL DEFAULT NULL COMMENT '借书数量',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '借书日期',
  `back` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '否' COMMENT '是否归还',
  `backdate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '还书日期',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '待审核' COMMENT '审核状态',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核意见',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book_borrow
-- ----------------------------
INSERT INTO `book_borrow` VALUES (1, 7, 7, '最帅的用户', 1, '2024-02-23', '是', '2024-02-25', '通过', '允许外借');
INSERT INTO `book_borrow` VALUES (2, 5, 9, '小可爱758483号', 1, '2024-02-23', '否', '2024-02-24', '通过', '可以');
INSERT INTO `book_borrow` VALUES (28, 6, 7, '最帅的用户', 2, '2024-02-23', '是', '2024-02-27', '通过', '允许外借');
INSERT INTO `book_borrow` VALUES (29, 10, 7, '最帅的用户', 1, '2024-02-23', '是', '2024-02-29', '通过', '这次是真的帅');
INSERT INTO `book_borrow` VALUES (30, 8, 7, '最帅的用户', 2, '2024-02-23', '否', '2024-03-08', '拒绝', '你太帅了，不通过');
INSERT INTO `book_borrow` VALUES (31, 8, 7, '最帅的用户', 1, '2024-02-23', '否', '2024-02-29', '拒绝', '没书了');
INSERT INTO `book_borrow` VALUES (32, 8, 7, '最帅的用户', 1, '2024-02-23', '否', '2024-02-24', '拒绝', '没货');
INSERT INTO `book_borrow` VALUES (33, 8, 7, '最帅的用户', 1, '2024-02-23', '是', '2024-02-24', '通过', NULL);
INSERT INTO `book_borrow` VALUES (34, 9, 7, '最帅的用户', 1, '2024-02-24', '是', '2024-02-25', '通过', '123');
INSERT INTO `book_borrow` VALUES (35, 11, 10, '小可爱099038号', 1, '2024-02-24', '否', '2024-02-29', '待审核', NULL);
INSERT INTO `book_borrow` VALUES (36, 7, 7, '用户1号', 1, '2024-02-25', '是', '2024-02-29', '通过', '允许外借');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `price` int NULL DEFAULT NULL COMMENT '积分',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  `store` int NULL DEFAULT NULL COMMENT '数量',
  `active` tinyint(1) NULL DEFAULT 1 COMMENT '上架',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (5, 'U盘-128G', 24, 'http://localhost:9091/file/U%E7%9B%98.jpg', 91, 1);
INSERT INTO `goods` VALUES (6, '陶瓷杯', 9, 'http://localhost:9091/file/%E9%99%B6%E7%93%B7%E6%9D%AF.jpg', 99, 1);
INSERT INTO `goods` VALUES (7, '小木雕', 18, 'http://localhost:9091/file/%E5%B0%8F%E6%9C%A8%E9%9B%95.jpg', 22, 0);
INSERT INTO `goods` VALUES (8, '柳州博物馆门票', 16, 'http://localhost:9091/file/%E9%97%A8%E7%A5%A8.jpg', 92, 1);

-- ----------------------------
-- Table structure for goods_exchange
-- ----------------------------
DROP TABLE IF EXISTS `goods_exchange`;
CREATE TABLE `goods_exchange`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `goods_id` int NULL DEFAULT NULL COMMENT '商品id',
  `user_id` int NULL DEFAULT NULL COMMENT '兑换人id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '兑换人',
  `num` int NULL DEFAULT NULL COMMENT '兑换数量',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '兑换日期',
  `account` int NULL DEFAULT NULL COMMENT '扣除积分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods_exchange
-- ----------------------------
INSERT INTO `goods_exchange` VALUES (18, 5, 7, '最帅的用户', 1, '2024-02-23', 24);
INSERT INTO `goods_exchange` VALUES (19, 7, 7, '最帅的用户', 1, '2024-02-23', 18);
INSERT INTO `goods_exchange` VALUES (20, 5, 7, '用户1号', 2, '2024-02-25', 48);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '图书管理系统正式启用', '图书管理系统正式启用啦！', '2023-06-09 09:34:08');
INSERT INTO `notice` VALUES (2, '图书系统开启时间', '图书系统开启时间为早上9点-晚上7点', '2023-09-08 17:32:16');
INSERT INTO `notice` VALUES (3, '图书借阅，多读书，读好书', '金庸、余华等知名作者的作品等您探索。', '2024-01-23 13:54:27');
INSERT INTO `notice` VALUES (4, '积分商城已更新', '128G超大容量U盘现已上架', '2024-01-08 09:28:00');
INSERT INTO `notice` VALUES (5, '活动预告', '本图书系统将举行读书活动，详情请关注后续公告。', '2024-02-24 00:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生日',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `disable` tinyint(1) NULL DEFAULT 0 COMMENT '禁用',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'USER' COMMENT '角色',
  `account` int NULL DEFAULT 0 COMMENT '积分',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'gbb', '123', '小可爱587434', '男', '1993-10-1', '13699885599', '广西桂林', 'http://localhost:9091/file/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20220706191248.png', 0, 'USER', 10);
INSERT INTO `user` VALUES (3, 'acc', '123', '阿卡丽', '女', '1998-10-08', '13655228899', '北京市', 'http://localhost:9091/file/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20230801215955_5816png', 1, 'USER', 28);
INSERT INTO `user` VALUES (7, '11', '123', '用户1号', '男', '2001-09-01', '18876317597', '广西壮族自治区柳州市城中区广西科技大学', 'http://localhost:9091/file/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20240206001843.jpg', 0, 'USER', 30);
INSERT INTO `user` VALUES (8, 'ad', '123', '管理员1号', '男', '2001-09-01', '18877773333', '', 'http://localhost:9091/file/admin.png', 0, 'ADMIN', 80);
INSERT INTO `user` VALUES (10, '33', '123', '小可爱099038号', NULL, NULL, '18877223333', NULL, NULL, 0, 'USER', 0);

SET FOREIGN_KEY_CHECKS = 1;
