/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50622 (5.6.22-log)
 Source Host           : localhost:3307
 Source Schema         : library-management

 Target Server Type    : MySQL
 Target Server Version : 50622 (5.6.22-log)
 File Encoding         : 65001

 Date: 16/01/2023 17:09:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` datetime NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_key`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '13988997788', NULL, '2022-10-08 22:21:26', '2022-10-11 20:37:20', '68cf807f794909f3abb58f8855ed94ad', 1);
INSERT INTO `admin` VALUES (2, 'admin1', '13877889900', 'admin1@qq.com', '2022-10-10 21:28:42', '2023-01-12 02:01:19', '57e3013e3ab458895be40d94a5aaa855', 1);

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `publish_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出版日期',
  `author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '作者',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出版社',
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类',
  `book_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标准码',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatetime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `score` int(10) NULL DEFAULT NULL COMMENT '积分',
  `nums` int(10) NULL DEFAULT 0 COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `book_no_index`(`book_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '西游记幼儿美绘本（全10册）', '中国四大名著之一，西游记3-8岁版，彩绘注音，有声伴读。49款夸张角色，610张精美插图， 29个西游问答，10大智力挑战，以一种超有趣的方式亲近名著经典。', '2022-10-17', '吕进1', '少年儿童出版社', '历史文化 > 唐朝文化', '9787558911156', 'http://img3m7.ddimg.cn/10/30/25276987-1_w_44.jpg', '2022-12-17 21:35:14', '2023-01-16 00:00:00', 10, 0);
INSERT INTO `book` VALUES (12, '我只知道人是什么：2021精装新版（余华亲自编选）', '生命经验的凝结，创作历程的分享，看见余华《活着》《兄弟》《文城》创作背后的故事！', '2021-12-01', '余华', '译林出版社', '小说', '9787544788182', 'https://img3m0.ddimg.cn/92/4/29343890-1_l_13.jpg', '2023-01-16 15:50:53', '2023-01-16 00:00:00', 10, 9);
INSERT INTO `book` VALUES (13, '望江南', '在一片叶子的乾坤中，品饮世间人情，体悟命运流转。茶人精神、江南文化、家国情怀， 见证个人史、家族史、民族史中的百年中国。', '2022-03-01', '王旭烽', '浙江文艺出版社', '小说', '9787533963354', 'https://img3m0.ddimg.cn/74/5/29367830-1_w_41.jpg', '2023-01-16 16:12:45', NULL, 10, 10);
INSERT INTO `book` VALUES (14, '鱼没有脚', '2017年布克国际奖提名作品/小红书同款治愈书籍/诺贝尔文学奖候选人、冰岛桂冠诗人约恩·卡尔曼·斯特凡松的文学力作！世界上痛苦的事情一定是不曾尽力去爱...', '2021-12-01', '约恩·卡尔曼·斯特凡松', '四川文艺出版社', '小说', '9787541160912', 'https://img3m4.ddimg.cn/22/9/29340454-1_w_11.jpg', '2023-01-16 16:13:48', NULL, 10, 9);

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图书名称',
  `book_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图书标准码',
  `user_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户会员码',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名称',
  `user_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户联系方式',
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatetime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `score` int(10) NULL DEFAULT NULL COMMENT '借书积分',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '已借出' COMMENT '借书状态',
  `days` int(11) NULL DEFAULT 1 COMMENT '借书天数',
  `return_date` datetime NULL DEFAULT NULL COMMENT '归还日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES (37, '鱼没有脚', '9787541160912', '202212271239528742', '苗洋洋', '13988990099', '2023-01-16 16:14:20', NULL, 30, '已借出', 3, '2023-01-19 16:14:20');
INSERT INTO `borrow` VALUES (38, '望江南', '9787533963354', '202212271018800687', '落布', NULL, '2023-01-16 16:14:25', NULL, 10, '已归还', 1, '2023-01-17 16:14:25');
INSERT INTO `borrow` VALUES (39, '我只知道人是什么：2021精装新版（余华亲自编选）', '9787544788182', '202212271239528742', '苗洋洋', '13988990099', '2023-01-16 16:15:28', NULL, 10, '已归还', 1, '2023-01-17 16:15:28');
INSERT INTO `borrow` VALUES (40, '我只知道人是什么：2021精装新版（余华亲自编选）', '9787544788182', '202212271018800687', '落布', '13988990068', '2023-01-16 16:15:31', NULL, 10, '已归还', 1, '2023-01-17 16:15:31');
INSERT INTO `borrow` VALUES (41, '我只知道人是什么：2021精装新版（余华亲自编选）', '9787544788182', '202212271018800687', '落布', '13988990068', '2023-01-16 16:15:42', NULL, 50, '已借出', 5, '2023-01-21 16:15:42');
INSERT INTO `borrow` VALUES (42, '西游记幼儿美绘本（全10册）', '9787558911156', '202212271213716465', '卡森', '13988990066', '2023-01-16 16:15:47', NULL, 40, '已借出', 4, '2023-01-20 16:15:47');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `pid` int(11) NULL DEFAULT NULL COMMENT '父级id',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (3, '历史文化', '历史文化', NULL, '2022-12-12 20:42:53', NULL);
INSERT INTO `category` VALUES (4, '唐朝文化', '唐朝文化', 3, '2022-12-12 20:43:21', NULL);
INSERT INTO `category` VALUES (5, '宋朝文化', NULL, 3, '2022-12-12 20:46:29', NULL);
INSERT INTO `category` VALUES (9, '现代文化', '现代文化', 3, '2022-12-12 21:00:41', NULL);
INSERT INTO `category` VALUES (10, '科技', '科技', NULL, '2022-12-12 21:50:08', NULL);
INSERT INTO `category` VALUES (11, '高新科技', NULL, 10, '2022-12-12 21:50:16', NULL);
INSERT INTO `category` VALUES (12, '生物科技', '生物科技', 10, '2022-12-12 21:50:22', NULL);
INSERT INTO `category` VALUES (13, '微分子科技', NULL, 11, '2022-12-17 22:11:44', NULL);
INSERT INTO `category` VALUES (14, '小说', NULL, NULL, '2023-01-16 15:57:54', NULL);

-- ----------------------------
-- Table structure for retur
-- ----------------------------
DROP TABLE IF EXISTS `retur`;
CREATE TABLE `retur`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图书名称',
  `book_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图书标准码',
  `user_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户会员码',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名称',
  `user_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户联系方式',
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatetime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `score` int(10) NULL DEFAULT NULL COMMENT '借书积分',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '已借出' COMMENT '借书状态',
  `days` int(11) NULL DEFAULT 1 COMMENT '借书天数',
  `return_date` datetime NULL DEFAULT NULL COMMENT '归还日期',
  `real_date` datetime NULL DEFAULT NULL COMMENT '实际归还日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of retur
-- ----------------------------
INSERT INTO `retur` VALUES (68, '我只知道人是什么：2021精装新版（余华亲自编选）', '9787544788182', '202212271018800687', '落布', '13988990068', '2023-01-16 16:15:52', NULL, 10, '已归还', 1, '2023-01-17 00:00:00', '2023-01-16 00:00:00');
INSERT INTO `retur` VALUES (69, '我只知道人是什么：2021精装新版（余华亲自编选）', '9787544788182', '202212271239528742', '苗洋洋', '13988990099', '2023-01-16 16:15:53', NULL, 10, '已归还', 1, '2023-01-17 00:00:00', '2023-01-16 00:00:00');
INSERT INTO `retur` VALUES (70, '望江南', '9787533963354', '202212271018800687', '落布', NULL, '2023-01-16 16:15:55', NULL, 10, '已归还', 1, '2023-01-17 00:00:00', '2023-01-16 00:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '会员码',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` datetime NULL DEFAULT NULL,
  `account` int(10) NULL DEFAULT 0 COMMENT '账户余额',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '禁用状态 1不禁用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_index`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (19, '苗洋洋', '202212271239528742', 18, '男', '13988990099', '合肥', '2022-12-27 22:10:36', '2023-01-16 16:05:10', 600, 1);
INSERT INTO `user` VALUES (20, '李芸', '202212272094581083', 24, '女', '13899900998', '合肥', '2022-12-27 22:16:03', NULL, 120, 1);
INSERT INTO `user` VALUES (21, '落布', '202212271018800687', 20, '女', '13988990068', '南宁', '2022-12-27 22:17:06', '2023-01-16 16:15:11', 90, 1);
INSERT INTO `user` VALUES (22, '卡森', '202212271213716465', 22, '男', '13988990066', '南宁', '2022-12-27 22:34:48', '2023-01-16 16:14:58', 60, 1);
INSERT INTO `user` VALUES (23, '杰克', '20221227688792394', 33, '男', '13977889988', '南宁', '2022-12-27 22:35:35', '2023-01-16 16:15:03', 130, 1);

SET FOREIGN_KEY_CHECKS = 1;
