/*
 Navicat Premium Data Transfer

 Source Server         : phpMysql
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : brand_db

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 10/09/2023 20:20:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_brand
-- ----------------------------
DROP TABLE IF EXISTS `tb_brand`;
CREATE TABLE `tb_brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ordered` int(11) NULL DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_brand
-- ----------------------------
INSERT INTO `tb_brand` VALUES (1, '华为', '华为技术有限公司', 100, '万物互联', 1);
INSERT INTO `tb_brand` VALUES (2, '小米', '小米科技有限公司', 50, 'are you ok', 1);
INSERT INTO `tb_brand` VALUES (3, '格力', '格力电器股份有限公司', 30, '让世界爱上中国造', 1);
INSERT INTO `tb_brand` VALUES (4, '阿里巴巴', '阿里巴巴集团控股有限公司', 10, '买买买', 1);
INSERT INTO `tb_brand` VALUES (5, '腾讯', '腾讯计算机系统有限公司', 50, '玩玩玩', 0);
INSERT INTO `tb_brand` VALUES (6, '百度', '百度在线网络技术公司', 5, '搜搜搜', 0);
INSERT INTO `tb_brand` VALUES (7, '京东', '北京京东世纪贸易有限公司', 40, '就是快', 1);
INSERT INTO `tb_brand` VALUES (8, '小米', '小米科技有限公司', 50, 'are you ok', 1);
INSERT INTO `tb_brand` VALUES (9, '三只松鼠', '三只松鼠股份有限公司', 5, '好吃不上火', 0);
INSERT INTO `tb_brand` VALUES (10, '华为', '华为技术有限公司', 100, '万物互联', 1);
INSERT INTO `tb_brand` VALUES (11, '小米', '小米科技有限公司', 50, 'are you ok', 1);
INSERT INTO `tb_brand` VALUES (12, '格力', '格力电器股份有限公司', 30, '让世界爱上中国造', 1);
INSERT INTO `tb_brand` VALUES (13, '阿里巴巴', '阿里巴巴集团控股有限公司', 10, '买买买', 1);
INSERT INTO `tb_brand` VALUES (14, '腾讯', '腾讯计算机系统有限公司', 50, '玩玩玩', 0);
INSERT INTO `tb_brand` VALUES (15, '百度', '百度在线网络技术公司', 5, '搜搜搜', 0);
INSERT INTO `tb_brand` VALUES (16, '京东', '北京京东世纪贸易有限公司', 40, '就是快', 1);
INSERT INTO `tb_brand` VALUES (17, '华为', '华为技术有限公司', 100, '万物互联', 1);
INSERT INTO `tb_brand` VALUES (18, '小米', '小米科技有限公司', 50, 'are you ok', 1);
INSERT INTO `tb_brand` VALUES (19, '格力', '格力电器股份有限公司', 30, '让世界爱上中国造', 1);
INSERT INTO `tb_brand` VALUES (20, '阿里巴巴', '阿里巴巴集团控股有限公司', 10, '买买买', 1);
INSERT INTO `tb_brand` VALUES (21, '腾讯', '腾讯计算机系统有限公司', 50, '玩玩玩', 0);
INSERT INTO `tb_brand` VALUES (22, '百度', '百度在线网络技术公司', 5, '搜搜搜', 0);
INSERT INTO `tb_brand` VALUES (23, '京东', '北京京东世纪贸易有限公司', 40, '就是快', 1);
INSERT INTO `tb_brand` VALUES (24, '小米', '小米科技有限公司', 50, 'are you ok', 1);
INSERT INTO `tb_brand` VALUES (25, '三只松鼠', '三只松鼠股份有限公司', 5, '好吃不上火', 0);
INSERT INTO `tb_brand` VALUES (26, '华为', '华为技术有限公司', 100, '万物互联', 1);
INSERT INTO `tb_brand` VALUES (27, '小米', '小米科技有限公司', 50, 'are you ok', 1);
INSERT INTO `tb_brand` VALUES (28, '格力', '格力电器股份有限公司', 30, '让世界爱上中国造', 1);
INSERT INTO `tb_brand` VALUES (29, '阿里巴巴', '阿里巴巴集团控股有限公司', 10, '买买买', 1);
INSERT INTO `tb_brand` VALUES (30, '腾讯', '腾讯计算机系统有限公司', 50, '玩玩玩', 0);
INSERT INTO `tb_brand` VALUES (31, '百度', '百度在线网络技术公司', 5, '搜搜搜', 0);
INSERT INTO `tb_brand` VALUES (32, '京东', '北京京东世纪贸易有限公司', 40, '就是快', 1);
INSERT INTO `tb_brand` VALUES (33, '华为', '华为技术有限公司', 100, '万物互联', 1);
INSERT INTO `tb_brand` VALUES (34, '小米', '小米科技有限公司', 50, 'are you ok', 1);
INSERT INTO `tb_brand` VALUES (35, '格力', '格力电器股份有限公司', 30, '让世界爱上中国造', 1);
INSERT INTO `tb_brand` VALUES (36, '阿里巴巴', '阿里巴巴集团控股有限公司', 10, '买买买', 1);
INSERT INTO `tb_brand` VALUES (37, '腾讯', '腾讯计算机系统有限公司', 50, '玩玩玩', 0);
INSERT INTO `tb_brand` VALUES (38, '百度', '百度在线网络技术公司', 5, '搜搜搜', 0);
INSERT INTO `tb_brand` VALUES (39, '京东', '北京京东世纪贸易有限公司', 40, '就是快', 1);
INSERT INTO `tb_brand` VALUES (40, '小米', '小米科技有限公司', 50, 'are you ok', 1);
INSERT INTO `tb_brand` VALUES (41, '三只松鼠', '三只松鼠股份有限公司', 5, '好吃不上火', 0);
INSERT INTO `tb_brand` VALUES (42, '华为', '华为技术有限公司', 100, '万物互联', 1);
INSERT INTO `tb_brand` VALUES (43, '小米', '小米科技有限公司', 50, 'are you ok', 1);
INSERT INTO `tb_brand` VALUES (44, '格力', '格力电器股份有限公司', 30, '让世界爱上中国造', 1);
INSERT INTO `tb_brand` VALUES (45, '阿里巴巴', '阿里巴巴集团控股有限公司', 10, '买买买', 1);
INSERT INTO `tb_brand` VALUES (46, '腾讯', '腾讯计算机系统有限公司', 50, '玩玩玩', 0);
INSERT INTO `tb_brand` VALUES (47, '百度', '百度在线网络技术公司', 5, '搜搜搜', 0);
INSERT INTO `tb_brand` VALUES (48, '京东', '北京京东世纪贸易有限公司', 40, '就是快', 1);
INSERT INTO `tb_brand` VALUES (49, '??', 'TITI', 201, '??????', 1);
INSERT INTO `tb_brand` VALUES (50, '小李', 'TITI', 100, '新增集团', 1);
INSERT INTO `tb_brand` VALUES (51, '小张', 'TITI', 101, '新增企业', 1);
INSERT INTO `tb_brand` VALUES (52, '小田田', 'TITI', 102, '新增企业', 1);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'zhangsan', '123');
INSERT INTO `tb_user` VALUES (2, 'lisi', '234');
INSERT INTO `tb_user` VALUES (3, 'wangwu', '123');
INSERT INTO `tb_user` VALUES (4, 'admin', '123');

SET FOREIGN_KEY_CHECKS = 1;
