/*
 Navicat MySQL Data Transfer

 Source Server         : duoyue
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : duoyue

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 18/05/2020 17:04:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `school_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `train_plan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plan_time` datetime(0) NULL DEFAULT NULL,
  `materials` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personnel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `propaganda` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `feedback` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sign_in` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `serve_people` int(0) NULL DEFAULT NULL,
  `scenes` int(0) NULL DEFAULT NULL,
  `form` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_id` int(0) NOT NULL,
  INDEX `activity`(`s_id`) USING BTREE,
  CONSTRAINT `activity` FOREIGN KEY (`s_id`) REFERENCES `school` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('学校1', '方案1', '2020-07-01 00:00:00', '物料1', '人员安排1', '宣传1', '反馈1', '签到1', 30, 10, '形式1', '照片1', 1);
INSERT INTO `activity` VALUES ('学校2', '方案2', '2020-07-02 00:00:00', '物料2', '人员安排2', '宣传2', '反馈2', '签到2', 31, 11, '形式1', '照片2', 2);
INSERT INTO `activity` VALUES ('学校3', '方案3', '2020-07-03 00:00:00', '物料3', '人员安排3', '宣传3', '反馈3', '签到3', 32, 12, '形式1', '照片3', 3);
INSERT INTO `activity` VALUES ('学校4', '方案4', '2020-07-04 00:00:00', '物料4', '人员安排4', '宣传4', '反馈4', '签到4', 33, 13, '形式3', '照片4', 4);
INSERT INTO `activity` VALUES ('学校5', '方案5', '2020-07-05 00:00:00', '物料5', '人员安排5', '宣传5', '反馈5', '签到5', 34, 14, '形式3', '照片5', 5);
INSERT INTO `activity` VALUES ('学校6', '方案6', '2020-07-06 00:00:00', '物料6', '人员安排6', '宣传6', '反馈6', '签到6', 35, 15, '形式2', '照片6', 6);
INSERT INTO `activity` VALUES ('学校7', '方案7', '2020-07-07 00:00:00', '物料7', '人员安排7', '宣传7', '反馈7', '签到7', 36, 16, '形式2', '照片7', 7);
INSERT INTO `activity` VALUES ('学校8', '方案8', '2020-07-08 00:00:00', '物料8', '人员安排8', '宣传8', '反馈8', '签到8', 37, 17, '形式4', '照片8', 8);
INSERT INTO `activity` VALUES ('学校9', '方案9', '2020-07-09 00:00:00', '物料9', '人员安排9', '宣传9', '反馈9', '签到9', 38, 18, '形式5', '照片9', 9);
INSERT INTO `activity` VALUES ('学校10', '方案10', '2020-07-10 00:00:00', '物料10', '人员安排10', '宣传10', '反馈10', '签到10', 39, 19, '形式2', '照片10', 10);
INSERT INTO `activity` VALUES ('学校1', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `activity` VALUES ('学校11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11);

-- ----------------------------
-- Table structure for book_box
-- ----------------------------
DROP TABLE IF EXISTS `book_box`;
CREATE TABLE `book_box`  (
  `school_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `numbering` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attrition_rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `use_record` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rotation_record` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `feedback` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flow_in` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flow_out` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_id` int(0) NULL DEFAULT NULL,
  INDEX `book_box`(`s_id`) USING BTREE,
  CONSTRAINT `book_box` FOREIGN KEY (`s_id`) REFERENCES `school` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_box
-- ----------------------------
INSERT INTO `book_box` VALUES ('学校1', '001', '0.1', '使用记录1', '捐赠1', '反馈', NULL, '1班', '2班', 1);
INSERT INTO `book_box` VALUES ('学校1', '002', '012', '使用记录2', '捐赠2', '反馈', NULL, '2班', '3班', 2);
INSERT INTO `book_box` VALUES ('学校1', '001', '0.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for children_research
-- ----------------------------
DROP TABLE IF EXISTS `children_research`;
CREATE TABLE `children_research`  (
  `person_number` int(0) NULL DEFAULT NULL,
  `form` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `school_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_number` int(0) NULL DEFAULT NULL,
  `book_corner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_number` int(0) NULL DEFAULT NULL,
  `use_frequency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `corner_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_flow_round` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `morning_read` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reading_frequency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activity_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activity_frequency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lesson_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lesson_frequency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jon_survey_number` int(0) NULL DEFAULT NULL,
  `charger` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for coorperation
-- ----------------------------
DROP TABLE IF EXISTS `coorperation`;
CREATE TABLE `coorperation`  (
  `school_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resources` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `willing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `needs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `project_cycle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for library
-- ----------------------------
DROP TABLE IF EXISTS `library`;
CREATE TABLE `library`  (
  `school_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_number` int(0) NULL DEFAULT NULL,
  `good_book_ratio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `open` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `electric` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for punch
-- ----------------------------
DROP TABLE IF EXISTS `punch`;
CREATE TABLE `punch`  (
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `days` int(0) NULL DEFAULT NULL,
  `test_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `person_number` int(0) NULL DEFAULT NULL,
  `times` int(0) NULL DEFAULT NULL,
  `prize` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `winners` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for punch2
-- ----------------------------
DROP TABLE IF EXISTS `punch2`;
CREATE TABLE `punch2`  (
  `student_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `school_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `punch_times` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of punch2
-- ----------------------------
INSERT INTO `punch2` VALUES ('刘一凡', '弘梅二小-朱行校区', '一年级', '二班', 85);
INSERT INTO `punch2` VALUES ('李子涵', '双江小学', '二年级', '三班', 60);
INSERT INTO `punch2` VALUES ('张子瑶', '塘湾小学', '一年级', '六班', 60);
INSERT INTO `punch2` VALUES ('王凯瑞', '弘梅二小-陇西校区', '一年级', '二班', 53);
INSERT INTO `punch2` VALUES ('张文博', '弘梅二小-朱行校区', '一年级', '二班', 51);
INSERT INTO `punch2` VALUES ('王雨馨', '浦江文馨学校', '一年级', '三班', 48);
INSERT INTO `punch2` VALUES ('李佳琦', '双江小学', '二年级', '四班', 42);
INSERT INTO `punch2` VALUES ('钟奕君', '塘湾小学', '一年级', '九班', 37);
INSERT INTO `punch2` VALUES ('蒋萍萍', '弘梅二小-陇西校区', '二年级', '一班', 35);
INSERT INTO `punch2` VALUES ('徐家乐', '双江小学', '二年级', '一班', 35);
INSERT INTO `punch2` VALUES ('段智超', '弘梅小学-曹行校区', '一年级', '四班', 33);
INSERT INTO `punch2` VALUES ('周一航', '弘梅小学-蔷薇校区', '一年级', '一班', 33);
INSERT INTO `punch2` VALUES ('曹帅', '弘梅小学-曹行校区', '一年级', '四班', 32);
INSERT INTO `punch2` VALUES ('黄宇昊', '弘梅小学-蔷薇校区', '一年级', '一班', 32);
INSERT INTO `punch2` VALUES ('连晨曦', '马桥小学', '一年级', '四班', 32);
INSERT INTO `punch2` VALUES ('王宇轩', '塘湾小学', '二年级', '五班', 32);
INSERT INTO `punch2` VALUES ('张子凡', '塘湾小学', '一年级', '七班', 32);
INSERT INTO `punch2` VALUES ('曹可馨', '杨东小学', '一年级', '三班', 31);
INSERT INTO `punch2` VALUES ('陈雅', '塘湾小学', '一年级', '一班', 31);
INSERT INTO `punch2` VALUES ('洪雅辰', '塘湾小学', '二年级', '四班', 31);
INSERT INTO `punch2` VALUES ('黄子轩', '育苗小学', '二年级', '三班', 31);
INSERT INTO `punch2` VALUES ('李子贤', '塘湾小学', '一年级', '六班', 31);
INSERT INTO `punch2` VALUES ('向阳', '弘梅小学-曹行校区', '一年级', '六班', 31);
INSERT INTO `punch2` VALUES ('颜明轩', '弘梅小学-蔷薇校区', '一年级', '一班', 31);
INSERT INTO `punch2` VALUES ('柏涵睿', '马桥小学', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('拜拜', '育苗小学', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('蔡鑫怡', '弘梅二小-陇西校区', '二年级', '四班', 30);
INSERT INTO `punch2` VALUES ('蔡宇涵', '弘梅小学-曹行校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('曹浩轩', '弘梅小学-曹行校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('曹思雨', '弘梅小学-曹行校区', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('曹宜鑫', '塘湾小学', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('查语萱', '弘梅小学-曹行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('常亦琛', '弘梅小学-曹行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('陈冬雨', '马桥小学', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('陈昊阳', '弘梅小学-蔷薇校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('陈皓然', '塘湾小学', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('陈佳琳', '弘梅小学-曹行校区', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('陈佳怡', '塘湾小学', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('陈俊豪', '弘梅小学-曹行校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('陈文雅', '双江小学', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('陈晓洁', '弘梅小学-曹行校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('陈伊墨', '弘梅小学-蔷薇校区', '二年级', '十班', 30);
INSERT INTO `punch2` VALUES ('陈奕俊', '马桥小学', '二年级', '五班', 30);
INSERT INTO `punch2` VALUES ('陈英骏', '弘梅二小-朱行校区', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('陈雨函', '弘梅小学-曹行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('程诺', '马桥小学', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('程谦', '弘梅小学-蔷薇校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('程婉婷', '浦江文馨学校', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('池雪', '塘湾小学', '一年级', '六班', 30);
INSERT INTO `punch2` VALUES ('崔子浩', '塘湾小学', '一年级', '七班', 30);
INSERT INTO `punch2` VALUES ('丁佳雯', '弘梅小学-曹行校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('丁萌萌', '华博利星行-纪王校区', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('董锦沅', '弘梅二小-朱行校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('董祖旺', '育苗小学', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('杜紫璇', '弘梅小学-曹行校区', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('段润轩', '弘梅小学-曹行校区', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('范庆光', '弘梅小学-曹行校区', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('方含玉', '塘湾小学', '二年级', '六班', 30);
INSERT INTO `punch2` VALUES ('房予琪', '双江小学', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('冯雨婷', '弘梅小学-曹行校区', '二年级', '六班', 30);
INSERT INTO `punch2` VALUES ('盖子童', '塘湾小学', '一年级', '七班', 30);
INSERT INTO `punch2` VALUES ('高进', '弘梅小学-曹行校区', '二年级', '六班', 30);
INSERT INTO `punch2` VALUES ('高明轩', '塘湾小学', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('高宇彤', '弘梅小学-曹行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('高雨涵', '弘梅二小-陇西校区', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('葛心琪', '弘梅小学-曹行校区', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('管语墨', '塘湾小学', '一年级', '九班', 30);
INSERT INTO `punch2` VALUES ('郭辰熙', '杨东小学', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('郭睿甲', '育苗小学', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('韩明浩', '弘梅小学-曹行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('韩育宏', '塘湾小学', '一年级', '五班', 30);
INSERT INTO `punch2` VALUES ('郝玉琰', '申华小学', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('何承旭', '弘梅二小-陇西校区', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('何子涵', '双江小学', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('何子阳', '马桥小学', '二年级', '六班', 30);
INSERT INTO `punch2` VALUES ('何梓琳', '马桥小学', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('贺紫珊', '马桥小学', '二年级', '六班', 30);
INSERT INTO `punch2` VALUES ('侯晨熙', '弘梅小学-曹行校区', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('侯凤婉', '弘梅二小-朱行校区', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('胡澂羲', '塘湾小学', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('胡昊轩', '浦江文馨学校', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('胡俊哲', '弘梅小学-曹行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('胡侃', '弘梅小学-曹行校区', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('胡馨冉', '塘湾小学', '一年级', '八班', 30);
INSERT INTO `punch2` VALUES ('黄橙', '塘湾小学', '二年级', '七班', 30);
INSERT INTO `punch2` VALUES ('黄思涵', '塘湾小学', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('黄星辰', '弘梅二小-朱行校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('黄雅琪', '双江小学', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('黄雨晨', '塘湾小学', '二年级', '七班', 30);
INSERT INTO `punch2` VALUES ('江博文', '弘梅小学-曹行校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('江婉菁', '弘梅二小-朱行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('江欣妍', '浦江文馨学校', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('江羽峰', '弘梅二小-朱行校区', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('金宸浩', '弘梅二小-陇西校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('金伟祺', '弘梅二小-朱行校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('金怡辰', '弘梅二小-陇西校区', '二年级', '四班', 30);
INSERT INTO `punch2` VALUES ('靳宇博', '弘梅小学-曹行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('寇妍汐', '弘梅二小-朱行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('兰乔木', '杨东小学', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('雷雨航', '弘梅二小-朱行校区', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('李传哲', '弘梅二小-朱行校区', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('李红旭', '育苗小学', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('李洪范', '弘梅二小-陇西校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('李济成', '塘湾小学', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('李佳霖', '弘梅二小-陇西校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('李佳宜', '弘梅二小-朱行校区', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('李嘉怡', '弘梅小学-曹行校区', '一年级', '六班', 30);
INSERT INTO `punch2` VALUES ('李凌轩', '弘梅小学-曹行校区', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('李梦欣', '弘梅小学-曹行校区', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('李铭泽', '弘梅小学-曹行校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('李沛晨', '塘湾小学', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('李诗瑶', '双江小学', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('李娅楠', '弘梅小学-曹行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('李语辰', '育苗小学', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('励锦辰', '弘梅二小-朱行校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('梁宇昊', '山海小学', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('梁致远', '弘梅小学-曹行校区', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('廖昕毅', '塘湾小学', '一年级', '九班', 30);
INSERT INTO `punch2` VALUES ('刘嘉琪', '弘梅二小-陇西校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('刘一非', '马桥小学', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('刘沄汐', '双江小学', '二年级', '四班', 30);
INSERT INTO `punch2` VALUES ('刘泽恩', '弘梅二小-陇西校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('刘子毅', '弘梅二小-陇西校区', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('龙美琳', '塘湾小学', '一年级', '五班', 30);
INSERT INTO `punch2` VALUES ('龙羽萱', '弘梅小学-曹行校区', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('娄闽杰', '弘梅二小-朱行校区', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('陆飞鸿', '弘梅二小-陇西校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('陆菀钰', '弘梅二小-朱行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('路子翼', '塘湾小学', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('罗名哲', '塘湾小学', '二年级', '五班', 30);
INSERT INTO `punch2` VALUES ('罗天歌', '塘湾小学', '二年级', '五班', 30);
INSERT INTO `punch2` VALUES ('罗烨辰', '浦江文馨学校', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('罗艺琳', '马桥小学', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('骆晟杰', '弘梅二小-朱行校区', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('马思宇', '弘梅小学-曹行校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('马文杰', '双江小学', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('孟祥博', '育苗小学', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('孟心悦', '育苗小学', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('孟拙言', '弘梅小学-曹行校区', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('潘玉琪', '弘梅小学-曹行校区', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('彭清钰', '弘梅小学-曹行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('彭善国', '塘湾小学', '二年级', '七班', 30);
INSERT INTO `punch2` VALUES ('彭小雨', '弘梅二小-朱行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('戚雪', '塘湾小学', '一年级', '九班', 30);
INSERT INTO `punch2` VALUES ('秦伊诺', '双江小学', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('曲晟睿', '弘梅二小-朱行校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('饶婧涵', '双江小学', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('饶峻羽', '弘梅小学-曹行校区', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('荣启航', '弘梅小学-曹行校区', '二年级', '四班', 30);
INSERT INTO `punch2` VALUES ('邵祥龙', '马桥小学', '二年级', '七班', 30);
INSERT INTO `punch2` VALUES ('申恩旭', '马桥小学', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('沈静昕', '塘湾小学', '一年级', '九班', 30);
INSERT INTO `punch2` VALUES ('沈婷', '弘梅小学-曹行校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('石悦童', '浦江文馨学校', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('史心怡', '马桥小学', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('苏筱依', '弘梅二小-朱行校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('孙炜烨', '塘湾小学', '一年级', '九班', 30);
INSERT INTO `punch2` VALUES ('孙耀庭', '塘湾小学', '二年级', '四班', 30);
INSERT INTO `punch2` VALUES ('孙烨', '弘梅小学-蔷薇校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('孙钰轩', '弘梅小学-曹行校区', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('孙梓曦', '申华小学', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('陶鑫来', '塘湾小学', '二年级', '五班', 30);
INSERT INTO `punch2` VALUES ('滕家伊', '弘梅小学-蔷薇校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('田乐晨', '弘梅小学-曹行校区', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('田梓轩', '杨东小学', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('涂', '杨东小学', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('汪菲', '弘梅小学-曹行校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('王晨滢', '弘梅小学-曹行校区', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('王佳佳', '塘湾小学', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('王佳雯', '马桥小学', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('王金博文', '双江小学', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('王晋升', '弘梅小学-曹行校区', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('王峻熙', '弘梅小学-曹行校区', '一年级', '五班', 30);
INSERT INTO `punch2` VALUES ('王梦玲', '塘湾小学', '二年级', '四班', 30);
INSERT INTO `punch2` VALUES ('王妙涵', '弘梅小学-曹行校区', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('王全玉', '弘梅小学-曹行校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('王睿', '杨东小学', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('王硕', '弘梅小学-曹行校区', '二年级', '六班', 30);
INSERT INTO `punch2` VALUES ('王思源', '弘梅二小-朱行校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('王天霖', '弘梅小学-曹行校区', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('王昕瑶', '双江小学', '二年级', '四班', 30);
INSERT INTO `punch2` VALUES ('王欣仪', '弘梅二小-陇西校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('王馨怡', '弘梅小学-曹行校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('王洋果儿', '弘梅二小-陇西校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('王亦乔', '弘梅小学-曹行校区', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('王毅超', '塘湾小学', '一年级', '九班', 30);
INSERT INTO `punch2` VALUES ('王雨彤', '弘梅二小-朱行校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('王忠慧', '山海小学', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('王子辰', '塘湾小学', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('王子墨', '弘梅小学-曹行校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('王子怡', '弘梅小学-曹行校区', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('韦欣怡', '弘梅小学-曹行校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('卫娜', '弘梅小学-曹行校区', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('魏明轩', '弘梅小学-曹行校区', '一年级', '五班', 30);
INSERT INTO `punch2` VALUES ('魏宁愚', '弘梅小学-曹行校区', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('吴昱航', '双江小学', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('肖惟心', '弘梅小学-蔷薇校区', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('谢孝杰', '弘梅小学-曹行校区', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('谢振轩', '弘梅二小-陇西校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('徐常佑', '弘梅小学-曹行校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('徐俊豪', '弘梅小学-曹行校区', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('徐欣怡', '弘梅小学-蔷薇校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('徐予涵', '弘梅小学-曹行校区', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('徐悦欣', '弘梅小学-曹行校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('许茗霞', '塘湾小学', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('许梓欣', '塘湾小学', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('薛羽芊', '塘湾小学', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('闫佳琦', '申华小学', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('闫力博', '塘湾小学', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('闫梦瑶', '塘湾小学', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('颜嘉茵', '塘湾小学', '一年级', '九班', 30);
INSERT INTO `punch2` VALUES ('燕霜双', '弘梅二小-陇西校区', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('杨博熙', '申华小学', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('杨谋正', '弘梅小学-曹行校区', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('杨朴岩', '弘梅二小-陇西校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('杨苏戎', '育苗小学', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('杨骁', '弘梅二小-陇西校区', '二年级', '四班', 30);
INSERT INTO `punch2` VALUES ('杨耀雲', '弘梅二小-朱行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('杨毅', '马桥小学', '二年级', '六班', 30);
INSERT INTO `punch2` VALUES ('杨子暄', '弘梅二小-陇西校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('尧语涵', '弘梅小学-蔷薇校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('姚舜禹', '塘湾小学', '二年级', '五班', 30);
INSERT INTO `punch2` VALUES ('叶依玲', '弘梅小学-曹行校区', '二年级', '十班', 30);
INSERT INTO `punch2` VALUES ('叶胤然', '塘湾小学', '二年级', '五班', 30);
INSERT INTO `punch2` VALUES ('尹紫云', '弘梅小学-蔷薇校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('雍亮', '弘梅小学-曹行校区', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('余晨轩', '弘梅小学-曹行校区', '一年级', '四班', 30);
INSERT INTO `punch2` VALUES ('张敖瑜', '弘梅二小-朱行校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('张葆泽', '弘梅二小-陇西校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('张春琳', '弘梅小学-曹行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('张冠鑫', '弘梅小学-曹行校区', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('张锦钰', '双江小学', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('张瑾晨', '弘梅二小-朱行校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('张景天', '弘梅小学-曹行校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('张珅瑜', '弘梅二小-陇西校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('张伟豪', '塘湾小学', '一年级', '七班', 30);
INSERT INTO `punch2` VALUES ('张晓柔', '弘梅小学-曹行校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('张杨思荷', '华虹小学', '二年级', '四班', 30);
INSERT INTO `punch2` VALUES ('张溢宁', '山海小学', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('张宇辰', '育苗小学', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('张宇航', '浦江文馨学校', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('张雨辰', '弘梅小学-曹行校区', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('张雨歌', '马桥小学', '二年级', '六班', 30);
INSERT INTO `punch2` VALUES ('张悦', '育苗小学', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('张正焱', '双江小学', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('张子恒', '弘梅小学-曹行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('张梓嫣', '弘梅小学-曹行校区', '一年级', '五班', 30);
INSERT INTO `punch2` VALUES ('赵君昊', '弘梅二小-朱行校区', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('赵雨婷', '弘梅二小-朱行校区', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('赵智轩', '弘梅小学-曹行校区', '二年级', '四班', 30);
INSERT INTO `punch2` VALUES ('郑天成', '弘梅小学-蔷薇校区', '一年级', '一班', 30);
INSERT INTO `punch2` VALUES ('郑尊寓', '弘梅二小-陇西校区', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('周昊', '弘梅小学-曹行校区', '二年级', '二班', 30);
INSERT INTO `punch2` VALUES ('周晋瀚', '弘梅小学-曹行校区', '一年级', '五班', 30);
INSERT INTO `punch2` VALUES ('周俊熙', '塘湾小学', '二年级', '一班', 30);
INSERT INTO `punch2` VALUES ('周一依', '弘梅小学-蔷薇校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('周芷晴', '塘湾小学', '一年级', '九班', 30);
INSERT INTO `punch2` VALUES ('朱昊铭', '弘梅小学-曹行校区', '一年级', '二班', 30);
INSERT INTO `punch2` VALUES ('朱俊航，弘梅二小陇西校区一（三）', '弘梅二小-陇西校区', '一年级', '三班', 30);
INSERT INTO `punch2` VALUES ('朱雨梦', '弘梅小学-曹行校区', '二年级', '四班', 30);
INSERT INTO `punch2` VALUES ('朱语萱', '弘梅小学-曹行校区', '二年级', '三班', 30);
INSERT INTO `punch2` VALUES ('卓凯霖', '塘湾小学', '二年级', '五班', 30);
INSERT INTO `punch2` VALUES ('0', '山', '海小学', '00', 29);
INSERT INTO `punch2` VALUES ('陈骏然', '双江小学', '二年级', '四班', 29);
INSERT INTO `punch2` VALUES ('陈孝端', '弘梅小学-曹行校区', '二年级', '二班', 29);
INSERT INTO `punch2` VALUES ('程子睿', '浦江文馨学校', '一年级', '三班', 29);
INSERT INTO `punch2` VALUES ('丁远航', '申华小学', '二年级', '一班', 29);
INSERT INTO `punch2` VALUES ('方淼', '塘湾小学', '二年级', '六班', 29);
INSERT INTO `punch2` VALUES ('高木子', '弘梅二小-陇西校区', '一年级', '一班', 29);
INSERT INTO `punch2` VALUES ('葛昱秀', '弘梅小学-曹行校区', '一年级', '一班', 29);
INSERT INTO `punch2` VALUES ('龚贵淼', '弘梅小学-曹行校区', '一年级', '二班', 29);
INSERT INTO `punch2` VALUES ('郭梓萱', '弘梅小学-曹行校区', '二年级', '六班', 29);
INSERT INTO `punch2` VALUES ('郝梓涵', '双江小学', '二年级', '四班', 29);
INSERT INTO `punch2` VALUES ('胡原铭', '塘湾小学', '二年级', '六班', 29);
INSERT INTO `punch2` VALUES ('黄渤', '弘梅小学-曹行校区', '一年级', '二班', 29);
INSERT INTO `punch2` VALUES ('黄淑瑶', '塘湾小学', '二年级', '二班', 29);
INSERT INTO `punch2` VALUES ('黄子杰', '弘梅小学-曹行校区', '一年级', '五班', 29);
INSERT INTO `punch2` VALUES ('江铭里', '双江小学', '二年级', '四班', 29);
INSERT INTO `punch2` VALUES ('揭晶霓', '塘湾小学', '一年级', '二班', 29);
INSERT INTO `punch2` VALUES ('金博', '塘湾小学', '一年级', '六班', 29);
INSERT INTO `punch2` VALUES ('荆满曼', '杨东小学', '一年级', '三班', 29);
INSERT INTO `punch2` VALUES ('隽梓晨', '弘梅小学-曹行校区', '一年级', '六班', 29);
INSERT INTO `punch2` VALUES ('李广硕', '弘梅小学-曹行校区', '二年级', '三班', 29);
INSERT INTO `punch2` VALUES ('李好', '弘梅二小-朱行校区', '二年级', '三班', 29);
INSERT INTO `punch2` VALUES ('李昊原', '杨东小学', '一年级', '一班', 29);
INSERT INTO `punch2` VALUES ('李家博', '弘梅小学-曹行校区', '二年级', '三班', 29);
INSERT INTO `punch2` VALUES ('李明恩', '塘湾小学', '一年级', '九班', 29);
INSERT INTO `punch2` VALUES ('李锐涵', '弘梅小学-曹行校区', '一年级', '六班', 29);
INSERT INTO `punch2` VALUES ('李一诺', '弘梅小学-曹行校区', '二年级', '一班', 29);
INSERT INTO `punch2` VALUES ('李雨萱', '双江小学', '二年级', '四班', 29);
INSERT INTO `punch2` VALUES ('李智辉', '塘湾小学', '二年级', '七班', 29);
INSERT INTO `punch2` VALUES ('梁硕', '塘湾小学', '一年级', '二班', 29);
INSERT INTO `punch2` VALUES ('廖嵘麟', '弘梅二小-陇西校区', '二年级', '四班', 29);
INSERT INTO `punch2` VALUES ('刘立锋', '弘梅小学-曹行校区', '二年级', '五班', 29);
INSERT INTO `punch2` VALUES ('刘异', '塘湾小学', '一年级', '九班', 29);
INSERT INTO `punch2` VALUES ('刘奕萱', '弘梅小学-蔷薇校区', '二年级', '二班', 29);
INSERT INTO `punch2` VALUES ('罗俊龙', '塘湾小学', '二年级', '六班', 29);
INSERT INTO `punch2` VALUES ('罗子扬', '塘湾小学', '一年级', '六班', 29);
INSERT INTO `punch2` VALUES ('吕子航', '弘梅小学-蔷薇校区', '一年级', '一班', 29);
INSERT INTO `punch2` VALUES ('倪灏峰', '弘梅小学-曹行校区', '一年级', '一班', 29);
INSERT INTO `punch2` VALUES ('秦慧珺', '杨东小学', '二年级', '三班', 29);
INSERT INTO `punch2` VALUES ('屈梦瑶', '弘梅小学-曹行校区', '一年级', '一班', 29);
INSERT INTO `punch2` VALUES ('石传苹', '马桥小学', '二年级', '三班', 29);
INSERT INTO `punch2` VALUES ('石梦琪', '弘梅小学-曹行校区', '一年级', '二班', 29);
INSERT INTO `punch2` VALUES ('时睿熙辰', '塘湾小学', '一年级', '三班', 29);
INSERT INTO `punch2` VALUES ('苏靖雯', '塘湾小学', '二年级', '六班', 29);
INSERT INTO `punch2` VALUES ('孙一甲', '浦江文馨学校', '一年级', '四班', 29);
INSERT INTO `punch2` VALUES ('万菁浩', '马桥小学', '二年级', '二班', 29);
INSERT INTO `punch2` VALUES ('王静雅', '马桥小学', '二年级', '八班', 29);
INSERT INTO `punch2` VALUES ('夏晟文', '浦江文馨学校', '一年级', '三班', 29);
INSERT INTO `punch2` VALUES ('谢梒硕', '弘梅二小-陇西校区', '二年级', '一班', 29);
INSERT INTO `punch2` VALUES ('谢梦', '弘梅小学-曹行校区', '一年级', '二班', 29);
INSERT INTO `punch2` VALUES ('辛诗婕', '塘湾小学', '二年级', '四班', 29);
INSERT INTO `punch2` VALUES ('徐雨涵', '双江小学', '二年级', '三班', 29);
INSERT INTO `punch2` VALUES ('许佳伟。', '塘湾小学', '二年级', '六班', 29);
INSERT INTO `punch2` VALUES ('闫文博', '塘湾小学', '二年级', '七班', 29);
INSERT INTO `punch2` VALUES ('杨欣', '塘湾小学', '一年级', '六班', 29);
INSERT INTO `punch2` VALUES ('余奕非', '弘梅二小-朱行校区', '一年级', '二班', 29);
INSERT INTO `punch2` VALUES ('詹景尧', '弘梅小学-曹行校区', '一年级', '六班', 29);
INSERT INTO `punch2` VALUES ('张晨烁', '马桥小学', '一年级', '四班', 29);
INSERT INTO `punch2` VALUES ('张瀚钰', '弘梅二小-陇西校区', '二年级', '四班', 29);
INSERT INTO `punch2` VALUES ('张佳怡', '弘梅小学-曹行校区', '二年级', '六班', 29);
INSERT INTO `punch2` VALUES ('张文昊', '塘湾小学', '二年级', '四班', 29);
INSERT INTO `punch2` VALUES ('张新诚', '育苗小学', '二年级', '三班', 29);
INSERT INTO `punch2` VALUES ('张语晨', '弘梅小学-曹行校区', '二年级', '四班', 29);
INSERT INTO `punch2` VALUES ('张正阳', '弘梅二小-朱行校区', '二年级', '三班', 29);
INSERT INTO `punch2` VALUES ('郑佳仪', '弘梅小学-曹行校区', '一年级', '三班', 29);
INSERT INTO `punch2` VALUES ('郑若溪', '弘梅小学-曹行校区', '一年级', '二班', 29);
INSERT INTO `punch2` VALUES ('陈浩宇', '塘湾小学', '一年级', '一班', 28);
INSERT INTO `punch2` VALUES ('陈丽雅', '育苗小学', '一年级', '三班', 28);
INSERT INTO `punch2` VALUES ('陈茂胜', '双江小学', '二年级', '一班', 28);
INSERT INTO `punch2` VALUES ('程彦婷', '塘湾小学', '一年级', '九班', 28);
INSERT INTO `punch2` VALUES ('戴熙源', '塘湾小学', '二年级', '五班', 28);
INSERT INTO `punch2` VALUES ('单逸凡', '塘湾小学', '一年级', '六班', 28);
INSERT INTO `punch2` VALUES ('段瑞泽', '弘梅小学-曹行校区', '一年级', '二班', 28);
INSERT INTO `punch2` VALUES ('范冰洁', '弘梅二小-朱行校区', '二年级', '三班', 28);
INSERT INTO `punch2` VALUES ('封子昊', '弘梅小学-曹行校区', '一年级', '二班', 28);
INSERT INTO `punch2` VALUES ('龚梓涵', '塘湾小学', '一年级', '四班', 28);
INSERT INTO `punch2` VALUES ('郭鸿涛', '弘梅二小-陇西校区', '二年级', '六班', 28);
INSERT INTO `punch2` VALUES ('何子卿', '弘梅小学-曹行校区', '二年级', '六班', 28);
INSERT INTO `punch2` VALUES ('胡君泽', '弘梅二小-陇西校区', '一年级', '一班', 28);
INSERT INTO `punch2` VALUES ('金煜炜', '弘梅小学-曹行校区', '一年级', '三班', 28);
INSERT INTO `punch2` VALUES ('靳中杰', '育苗小学', '一年级', '二班', 28);
INSERT INTO `punch2` VALUES ('李晨轩', '弘梅小学-蔷薇校区', '二年级', '二班', 28);
INSERT INTO `punch2` VALUES ('李思绮', '弘梅小学-曹行校区', '二年级', '二班', 28);
INSERT INTO `punch2` VALUES ('李仪婷', '弘梅小学-曹行校区', '一年级', '六班', 28);
INSERT INTO `punch2` VALUES ('刘宇鑫', '弘梅二小-朱行校区', '二年级', '一班', 28);
INSERT INTO `punch2` VALUES ('刘兆科', '弘梅二小-朱行校区', '二年级', '一班', 28);
INSERT INTO `punch2` VALUES ('吕嘉豪', '弘梅小学-曹行校区', '一年级', '一班', 28);
INSERT INTO `punch2` VALUES ('乔苒', '塘湾小学', '一年级', '八班', 28);
INSERT INTO `punch2` VALUES ('秦慧翔', '杨东小学', '二年级', '三班', 28);
INSERT INTO `punch2` VALUES ('申昊龙', '塘湾小学', '二年级', '七班', 28);
INSERT INTO `punch2` VALUES ('孙瑾泽', '弘梅小学-蔷薇校区', '一年级', '一班', 28);
INSERT INTO `punch2` VALUES ('孙欣愉', '弘梅小学-蔷薇校区', '一年级', '一班', 28);
INSERT INTO `punch2` VALUES ('孙甄娴', '弘梅二小-陇西校区', '二年级', '一班', 28);
INSERT INTO `punch2` VALUES ('王淳', '弘梅二小-朱行校区', '二年级', '一班', 28);
INSERT INTO `punch2` VALUES ('王妙可', '弘梅小学-曹行校区', '一年级', '一班', 28);
INSERT INTO `punch2` VALUES ('王艺暖', '弘梅小学-曹行校区', '一年级', '四班', 28);
INSERT INTO `punch2` VALUES ('吴佳鸿', '弘梅二小-朱行校区', '二年级', '二班', 28);
INSERT INTO `punch2` VALUES ('夏梓淳', '弘梅二小-陇西校区', '一年级', '二班', 28);
INSERT INTO `punch2` VALUES ('徐晟睿', '塘湾小学', '二年级', '八班', 28);
INSERT INTO `punch2` VALUES ('许美晗', '塘湾小学', '一年级', '六班', 28);
INSERT INTO `punch2` VALUES ('杨晨娟', '弘梅二小-陇西校区', '一年级', '三班', 28);
INSERT INTO `punch2` VALUES ('杨子沐', '弘梅小学-蔷薇校区', '一年级', '二班', 28);
INSERT INTO `punch2` VALUES ('余鑫汝', '弘梅小学-曹行校区', '一年级', '三班', 28);
INSERT INTO `punch2` VALUES ('余阳', '塘湾小学', '二年级', '六班', 28);
INSERT INTO `punch2` VALUES ('余奕凡', '弘梅二小-朱行校区', '一年级', '二班', 28);
INSERT INTO `punch2` VALUES ('张恩浩', '杨东小学', '二年级', '三班', 28);
INSERT INTO `punch2` VALUES ('张明轩', '塘湾小学', '一年级', '九班', 28);
INSERT INTO `punch2` VALUES ('张谦佑', '塘湾小学', '二年级', '五班', 28);
INSERT INTO `punch2` VALUES ('张思成', '塘湾小学', '二年级', '五班', 28);
INSERT INTO `punch2` VALUES ('张子怡', '塘湾小学', '二年级', '五班', 28);
INSERT INTO `punch2` VALUES ('赵嘉羽', '弘梅小学-曹行校区', '一年级', '一班', 28);
INSERT INTO `punch2` VALUES ('赵欣怡', '弘梅小学-蔷薇校区', '一年级', '一班', 28);
INSERT INTO `punch2` VALUES ('郑佳慧', '弘梅二小-朱行校区', '二年级', '一班', 28);
INSERT INTO `punch2` VALUES ('钟章瑾', '塘湾小学', '一年级', '六班', 28);
INSERT INTO `punch2` VALUES ('蔡硕', '塘湾小学', '一年级', '六班', 27);
INSERT INTO `punch2` VALUES ('曹文雅', '马桥小学', '一年级', '一班', 27);
INSERT INTO `punch2` VALUES ('曹子睿', '弘梅二小-朱行校区', '二年级', '二班', 27);
INSERT INTO `punch2` VALUES ('陈静怡', '塘湾小学', '二年级', '三班', 27);
INSERT INTO `punch2` VALUES ('陈雅诗', '塘湾小学', '一年级', '八班', 27);
INSERT INTO `punch2` VALUES ('陈子龙', '弘梅小学-曹行校区', '二年级', '三班', 27);
INSERT INTO `punch2` VALUES ('陈梓睿', '塘湾小学', '一年级', '九班', 27);
INSERT INTO `punch2` VALUES ('程天琪', '塘湾小学', '二年级', '五班', 27);
INSERT INTO `punch2` VALUES ('丁壹辰', '弘梅二小-陇西校区', '一年级', '二班', 27);
INSERT INTO `punch2` VALUES ('高蕊熙', '马桥小学', '一年级', '三班', 27);
INSERT INTO `punch2` VALUES ('顾予涵', '弘梅小学-曹行校区', '二年级', '一班', 27);
INSERT INTO `punch2` VALUES ('洪嘉怡', '塘湾小学', '一年级', '五班', 27);
INSERT INTO `punch2` VALUES ('胡宇萱', '弘梅小学-曹行校区', '一年级', '二班', 27);
INSERT INTO `punch2` VALUES ('贾明宇', '塘湾小学', '一年级', '九班', 27);
INSERT INTO `punch2` VALUES ('黎玉珑', '弘梅小学-曹行校区', '一年级', '六班', 27);
INSERT INTO `punch2` VALUES ('李炳奇', '塘湾小学', '二年级', '二班', 27);
INSERT INTO `punch2` VALUES ('李心怡', '浦江文馨学校', '二年级', '二班', 27);
INSERT INTO `punch2` VALUES ('李远航', '塘湾小学', '一年级', '六班', 27);
INSERT INTO `punch2` VALUES ('梁煜琳', '弘梅二小-陇西校区', '一年级', '四班', 27);
INSERT INTO `punch2` VALUES ('林珂颖', '塘湾小学', '二年级', '五班', 27);
INSERT INTO `punch2` VALUES ('林之瑶', '弘梅小学-曹行校区', '二年级', '三班', 27);
INSERT INTO `punch2` VALUES ('卢梦馨', '弘梅小学-曹行校区', '二年级', '三班', 27);
INSERT INTO `punch2` VALUES ('潘嘉豪', '弘梅二小-朱行校区', '一年级', '一班', 27);
INSERT INTO `punch2` VALUES ('钱可卿', '马桥小学', '二年级', '二班', 27);
INSERT INTO `punch2` VALUES ('尚清辉', '浦江文馨学校', '二年级', '二班', 27);
INSERT INTO `punch2` VALUES ('尚应', '育苗小学', '二年级', '三班', 27);
INSERT INTO `punch2` VALUES ('施东晟', '浦江文馨学校', '一年级', '二班', 27);
INSERT INTO `punch2` VALUES ('宋子涵', '弘梅二小-陇西校区', '二年级', '一班', 27);
INSERT INTO `punch2` VALUES ('孙烨琪', '弘梅二小-陇西校区', '一年级', '十班', 27);
INSERT INTO `punch2` VALUES ('孙易豪', '弘梅小学-曹行校区', '一年级', '二班', 27);
INSERT INTO `punch2` VALUES ('田恩泽', '弘梅二小-陇西校区', '二年级', '二班', 27);
INSERT INTO `punch2` VALUES ('汪宏蕊', '弘梅小学-曹行校区', '一年级', '三班', 27);
INSERT INTO `punch2` VALUES ('王嘉琪', '弘梅小学-曹行校区', '二年级', '三班', 27);
INSERT INTO `punch2` VALUES ('王可鑫', '弘梅二小-朱行校区', '一年级', '一班', 27);
INSERT INTO `punch2` VALUES ('王子浩', '弘梅小学-曹行校区', '二年级', '三班', 27);
INSERT INTO `punch2` VALUES ('温沁蕾', '弘梅二小-陇西校区', '二年级', '二班', 27);
INSERT INTO `punch2` VALUES ('夏美琪', '塘湾小学', '一年级', '一班', 27);
INSERT INTO `punch2` VALUES ('夏添', '塘湾小学', '二年级', '二班', 27);
INSERT INTO `punch2` VALUES ('肖禹晨', '双江小学', '一年级', '一班', 27);
INSERT INTO `punch2` VALUES ('徐衡', '杨东小学', '一年级', '三班', 27);
INSERT INTO `punch2` VALUES ('徐俊轩', '弘梅小学-曹行校区', '二年级', '四班', 27);
INSERT INTO `punch2` VALUES ('张安朔', '弘梅二小-陇西校区', '二年级', '四班', 27);
INSERT INTO `punch2` VALUES ('张正言', '弘梅小学-曹行校区', '一年级', '五班', 27);
INSERT INTO `punch2` VALUES ('郑昊鹏', '塘湾小学', '二年级', '五班', 27);
INSERT INTO `punch2` VALUES ('班芷钰', '弘梅小学-曹行校区', '二年级', '一班', 26);
INSERT INTO `punch2` VALUES ('曹景殊', '弘梅二小-朱行校区', '二年级', '三班', 26);
INSERT INTO `punch2` VALUES ('陈思思', '弘梅小学-曹行校区', '二年级', '二班', 26);
INSERT INTO `punch2` VALUES ('陈雨寒', '杨东小学', '一年级', '三班', 26);
INSERT INTO `punch2` VALUES ('达新雅', '弘梅小学-曹行校区', '一年级', '三班', 26);
INSERT INTO `punch2` VALUES ('窦振宇', '弘梅小学-曹行校区', '二年级', '二班', 26);
INSERT INTO `punch2` VALUES ('杜宏天', '弘梅小学-蔷薇校区', '一年级', '一班', 26);
INSERT INTO `punch2` VALUES ('范梓涵', '弘梅小学-曹行校区', '二年级', '六班', 26);
INSERT INTO `punch2` VALUES ('方艺涵', '弘梅小学-曹行校区', '一年级', '三班', 26);
INSERT INTO `punch2` VALUES ('冯艺博', '弘梅小学-曹行校区', '一年级', '一班', 26);
INSERT INTO `punch2` VALUES ('管舒鑫', '塘湾小学', '二年级', '五班', 26);
INSERT INTO `punch2` VALUES ('韩乐瑶', '其他', '二年级', '二班', 26);
INSERT INTO `punch2` VALUES ('何轩', '弘梅小学-曹行校区', '二年级', '三班', 26);
INSERT INTO `punch2` VALUES ('洪嘉欣', '马桥小学', '二年级', '四班', 26);
INSERT INTO `punch2` VALUES ('黄嫩', '弘梅二小-陇西校区', '二年级', '一班', 26);
INSERT INTO `punch2` VALUES ('黄硕鑫', '双江小学', '二年级', '四班', 26);
INSERT INTO `punch2` VALUES ('李嘉铭', '杨东小学', '一年级', '三班', 26);
INSERT INTO `punch2` VALUES ('李烨', '山海小学', '一年级', '二班', 26);
INSERT INTO `punch2` VALUES ('林志远', '弘梅小学-曹行校区', '二年级', '三班', 26);
INSERT INTO `punch2` VALUES ('刘诚旭', '弘梅小学-曹行校区', '二年级', '三班', 26);
INSERT INTO `punch2` VALUES ('刘钰涵', '弘梅二小-陇西校区', '一年级', '四班', 26);
INSERT INTO `punch2` VALUES ('刘子阳', '马桥小学', '二年级', '一班', 26);
INSERT INTO `punch2` VALUES ('娄杨怡', '弘梅二小-陇西校区', '一年级', '三班', 26);
INSERT INTO `punch2` VALUES ('毛逸辰', '弘梅小学-曹行校区', '一年级', '四班', 26);
INSERT INTO `punch2` VALUES ('孟霜霜', '塘湾小学', '一年级', '二班', 26);
INSERT INTO `punch2` VALUES ('倪许', '弘梅小学-曹行校区', '二年级', '一班', 26);
INSERT INTO `punch2` VALUES ('申广翔', '塘湾小学', '二年级', '三班', 26);
INSERT INTO `punch2` VALUES ('沈语言', '塘湾小学', '一年级', '六班', 26);
INSERT INTO `punch2` VALUES ('石静怡', '马桥小学', '一年级', '一班', 26);
INSERT INTO `punch2` VALUES ('滕家嘉', '弘梅小学-蔷薇校区', '一年级', '一班', 26);
INSERT INTO `punch2` VALUES ('田嘉熙', '弘梅小学-曹行校区', '一年级', '四班', 26);
INSERT INTO `punch2` VALUES ('田圣杰', '弘梅二小-陇西校区', '二年级', '二班', 26);
INSERT INTO `punch2` VALUES ('王嘉瑶', '育苗小学', '二年级', '三班', 26);
INSERT INTO `punch2` VALUES ('魏展博', '育苗小学', '二年级', '二班', 26);
INSERT INTO `punch2` VALUES ('吴海姣', '塘湾小学', '一年级', '九班', 26);
INSERT INTO `punch2` VALUES ('吴美茹', '塘湾小学', '二年级', '三班', 26);
INSERT INTO `punch2` VALUES ('吴梦妮', '弘梅小学-曹行校区', '二年级', '三班', 26);
INSERT INTO `punch2` VALUES ('吴思雅', '弘梅小学-曹行校区', '二年级', '三班', 26);
INSERT INTO `punch2` VALUES ('谢思源', '浦江文馨学校', '二年级', '二班', 26);
INSERT INTO `punch2` VALUES ('徐梦璐', '弘梅二小-朱行校区', '一年级', '一班', 26);
INSERT INTO `punch2` VALUES ('姚雨佳', '育苗小学', '一年级', '三班', 26);
INSERT INTO `punch2` VALUES ('游毅', '马桥小学', '二年级', '二班', 26);
INSERT INTO `punch2` VALUES ('袁昊天', '育苗小学', '一年级', '一班', 26);
INSERT INTO `punch2` VALUES ('张鑫博', '双江小学', '一年级', '四班', 26);
INSERT INTO `punch2` VALUES ('赵晟', '塘湾小学', '一年级', '九班', 26);
INSERT INTO `punch2` VALUES ('赵梓浩', '弘梅小学-曹行校区', '一年级', '六班', 26);
INSERT INTO `punch2` VALUES ('周如娇', '弘梅小学-曹行校区', '二年级', '六班', 26);
INSERT INTO `punch2` VALUES ('周志远', '塘湾小学', '二年级', '二班', 26);
INSERT INTO `punch2` VALUES ('8', '育苗小学', '二年级', '三班', 25);
INSERT INTO `punch2` VALUES ('陈熠阳', '弘梅二小-陇西校区', '一年级', '三班', 25);
INSERT INTO `punch2` VALUES ('崔思豫', '塘湾小学', '二年级', '二班', 25);
INSERT INTO `punch2` VALUES ('丁致远', '弘梅小学-蔷薇校区', '一年级', '二班', 25);
INSERT INTO `punch2` VALUES ('杜忠香', '弘梅二小-朱行校区', '二年级', '三班', 25);
INSERT INTO `punch2` VALUES ('付雅祺', '塘湾小学', '一年级', '三班', 25);
INSERT INTO `punch2` VALUES ('高庆斌', '马桥小学', '二年级', '八班', 25);
INSERT INTO `punch2` VALUES ('高雨彤', '塘湾小学', '一年级', '九班', 25);
INSERT INTO `punch2` VALUES ('耿明阳', '山海小学', '一年级', '一班', 25);
INSERT INTO `punch2` VALUES ('何辰逸', '双江小学', '二年级', '四班', 25);
INSERT INTO `punch2` VALUES ('黄俊捷', '弘梅小学-曹行校区', '二年级', '四班', 25);
INSERT INTO `punch2` VALUES ('吉浩轩', '育苗小学', '一年级', '二班', 25);
INSERT INTO `punch2` VALUES ('揭栋涵', '塘湾小学', '一年级', '四班', 25);
INSERT INTO `punch2` VALUES ('李嫣', '山海小学', '一年级', '三班', 25);
INSERT INTO `punch2` VALUES ('李泽志', '弘梅二小-陇西校区', '一年级', '三班', 25);
INSERT INTO `punch2` VALUES ('李梓轩', '山海小学', '二年级', '二班', 25);
INSERT INTO `punch2` VALUES ('梁源渡', '塘湾小学', '二年级', '六班', 25);
INSERT INTO `punch2` VALUES ('马博文', '双江小学', '二年级', '一班', 25);
INSERT INTO `punch2` VALUES ('马昕辰', '浦江文馨学校', '一年级', '三班', 25);
INSERT INTO `punch2` VALUES ('马欣宇', '弘梅二小-朱行校区', '二年级', '二班', 25);
INSERT INTO `punch2` VALUES ('齐天辰', '塘湾小学', '一年级', '四班', 25);
INSERT INTO `punch2` VALUES ('裘轩航', '弘梅二小-陇西校区', '一年级', '一班', 25);
INSERT INTO `punch2` VALUES ('沙明皓', '塘湾小学', '二年级', '五班', 25);
INSERT INTO `punch2` VALUES ('宋翊轩', '弘梅二小-朱行校区', '二年级', '一班', 25);
INSERT INTO `punch2` VALUES ('苏紫夏', '弘梅小学-蔷薇校区', '一年级', '二班', 25);
INSERT INTO `punch2` VALUES ('汪辰', '塘湾小学', '二年级', '六班', 25);
INSERT INTO `punch2` VALUES ('王智阳', '塘湾小学', '二年级', '五班', 25);
INSERT INTO `punch2` VALUES ('王梓祺', '塘湾小学', '一年级', '三班', 25);
INSERT INTO `punch2` VALUES ('吴彦洁', '弘梅二小-陇西校区', '二年级', '三班', 25);
INSERT INTO `punch2` VALUES ('谢经纬', '塘湾小学', '二年级', '四班', 25);
INSERT INTO `punch2` VALUES ('谢龙彬', '弘梅二小-陇西校区', '一年级', '三班', 25);
INSERT INTO `punch2` VALUES ('熊紫涵', '弘梅小学-曹行校区', '二年级', '六班', 25);
INSERT INTO `punch2` VALUES ('徐路阳', '马桥小学', '一年级', '一班', 25);
INSERT INTO `punch2` VALUES ('徐雨雯', '塘湾小学', '二年级', '七班', 25);
INSERT INTO `punch2` VALUES ('许雅欣', '弘梅小学-曹行校区', '二年级', '三班', 25);
INSERT INTO `punch2` VALUES ('薛泽宇', '杨东小学', '一年级', '二班', 25);
INSERT INTO `punch2` VALUES ('颜慧茹', '塘湾小学', '一年级', '一班', 25);
INSERT INTO `punch2` VALUES ('杨钓杰', '弘梅小学-蔷薇校区', '一年级', '一班', 25);
INSERT INTO `punch2` VALUES ('杨一宸', '塘湾小学', '一年级', '五班', 25);
INSERT INTO `punch2` VALUES ('叶柏麟', '弘梅二小-陇西校区', '一年级', '一班', 25);
INSERT INTO `punch2` VALUES ('殷梓芃', '弘梅二小-陇西校区', '一年级', '三班', 25);
INSERT INTO `punch2` VALUES ('詹彦博', '马桥小学', '二年级', '一班', 25);
INSERT INTO `punch2` VALUES ('张佳晨', '弘梅小学-曹行校区', '一年级', '四班', 25);
INSERT INTO `punch2` VALUES ('张静萱', '弘梅小学-曹行校区', '一年级', '三班', 25);
INSERT INTO `punch2` VALUES ('张永硕', '育苗小学', '二年级', '三班', 25);
INSERT INTO `punch2` VALUES ('张雨宸', '弘梅小学-曹行校区', '一年级', '三班', 25);
INSERT INTO `punch2` VALUES ('张子昂', '塘湾小学', '一年级', '九班', 25);
INSERT INTO `punch2` VALUES ('张紫琪', '浦江文馨学校', '一年级', '二班', 25);
INSERT INTO `punch2` VALUES ('赵子彤', '双江小学', '二年级', '四班', 25);
INSERT INTO `punch2` VALUES ('周奕伟', '弘梅二小-朱行校区', '一年级', '一班', 25);
INSERT INTO `punch2` VALUES ('朱烨鹏', '弘梅二小-朱行校区', '二年级', '二班', 25);
INSERT INTO `punch2` VALUES ('邹雅萱', '弘梅二小-陇西校区', '一年级', '三班', 25);
INSERT INTO `punch2` VALUES ('陈紫怡', '杨东小学', '一年级', '三班', 24);
INSERT INTO `punch2` VALUES ('程梦冉', '塘湾小学', '二年级', '五班', 24);
INSERT INTO `punch2` VALUES ('单瑾萱', '马桥小学', '二年级', '一班', 24);
INSERT INTO `punch2` VALUES ('刁婉婷', '弘梅小学-曹行校区', '一年级', '二班', 24);
INSERT INTO `punch2` VALUES ('董芯雨', '弘梅二小-朱行校区', '二年级', '一班', 24);
INSERT INTO `punch2` VALUES ('房文硕', '弘梅小学-蔷薇校区', '二年级', '二班', 24);
INSERT INTO `punch2` VALUES ('傅辰雨15', '杨东小学', '一年级', '三班', 24);
INSERT INTO `punch2` VALUES ('高璟萱', '塘湾小学', '一年级', '五班', 24);
INSERT INTO `punch2` VALUES ('何诗语', '弘梅小学-蔷薇校区', '一年级', '一班', 24);
INSERT INTO `punch2` VALUES ('黄恩泽', '弘梅小学-蔷薇校区', '一年级', '二班', 24);
INSERT INTO `punch2` VALUES ('刘微', '塘湾小学', '二年级', '七班', 24);
INSERT INTO `punch2` VALUES ('刘孝贤', '弘梅二小-陇西校区', '二年级', '四班', 24);
INSERT INTO `punch2` VALUES ('刘梓清', '塘湾小学', '一年级', '三班', 24);
INSERT INTO `punch2` VALUES ('卢博豪', '弘梅小学-曹行校区', '二年级', '三班', 24);
INSERT INTO `punch2` VALUES ('潘俊龙', '弘梅小学-蔷薇校区', '二年级', '二班', 24);
INSERT INTO `punch2` VALUES ('王诗琪', '塘湾小学', '二年级', '五班', 24);
INSERT INTO `punch2` VALUES ('王梓欣', '弘梅小学-曹行校区', '一年级', '四班', 24);
INSERT INTO `punch2` VALUES ('肖思思', '塘湾小学', '二年级', '八班', 24);
INSERT INTO `punch2` VALUES ('一年级3班张薇薇', '杨东小学', '一年级', '三班', 24);
INSERT INTO `punch2` VALUES ('张浩文', '双江小学', '一年级', '一班', 24);
INSERT INTO `punch2` VALUES ('赵天宇', '弘梅小学-曹行校区', '一年级', '三班', 24);
INSERT INTO `punch2` VALUES ('赵雨乐', '弘梅小学-曹行校区', '二年级', '二班', 24);
INSERT INTO `punch2` VALUES ('曹可欣', '弘梅小学-曹行校区', '二年级', '二班', 23);
INSERT INTO `punch2` VALUES ('查昊', '弘梅二小-朱行校区', '二年级', '一班', 23);
INSERT INTO `punch2` VALUES ('陈晋南', '马桥小学', '一年级', '八班', 23);
INSERT INTO `punch2` VALUES ('陈星禹', '弘梅二小-朱行校区', '一年级', '三班', 23);
INSERT INTO `punch2` VALUES ('陈雅琪', '双江小学', '一年级', '一班', 23);
INSERT INTO `punch2` VALUES ('程厚', '双江小学', '一年级', '一班', 23);
INSERT INTO `punch2` VALUES ('邓彦博', '弘梅小学-曹行校区', '二年级', '五班', 23);
INSERT INTO `punch2` VALUES ('丁玉龙', '弘梅小学-曹行校区', '二年级', '三班', 23);
INSERT INTO `punch2` VALUES ('何英召', '塘湾小学', '二年级', '六班', 23);
INSERT INTO `punch2` VALUES ('姜雨晨', '弘梅二小-朱行校区', '二年级', '二班', 23);
INSERT INTO `punch2` VALUES ('李连灏', '塘湾小学', '二年级', '五班', 23);
INSERT INTO `punch2` VALUES ('李升园', '塘湾小学', '二年级', '五班', 23);
INSERT INTO `punch2` VALUES ('李宇硕', '塘湾小学', '一年级', '一班', 23);
INSERT INTO `punch2` VALUES ('刘河鑫', '山海小学', '二年级', '二班', 23);
INSERT INTO `punch2` VALUES ('蒲晓洋', '塘湾小学', '一年级', '一班', 23);
INSERT INTO `punch2` VALUES ('谭璟慧', '弘梅二小-陇西校区', '一年级', '二班', 23);
INSERT INTO `punch2` VALUES ('唐昊泽', '弘梅小学-曹行校区', '二年级', '二班', 23);
INSERT INTO `punch2` VALUES ('田梓凡', '杨东小学', '二年级', '三班', 23);
INSERT INTO `punch2` VALUES ('王天佑', '塘湾小学', '二年级', '七班', 23);
INSERT INTO `punch2` VALUES ('韦淑婷', '杨东小学', '二年级', '三班', 23);
INSERT INTO `punch2` VALUES ('吴悦宁', '浦江文馨学校', '一年级', '四班', 23);
INSERT INTO `punch2` VALUES ('谢怡林', '弘梅二小-陇西校区', '一年级', '二班', 23);
INSERT INTO `punch2` VALUES ('徐雯洁', '马桥小学', '一年级', '四班', 23);
INSERT INTO `punch2` VALUES ('杨腾靖', '弘梅小学-曹行校区', '二年级', '一班', 23);
INSERT INTO `punch2` VALUES ('杨吴泽', '弘梅二小-朱行校区', '二年级', '一班', 23);
INSERT INTO `punch2` VALUES ('叶天一', '弘梅小学-曹行校区', '一年级', '五班', 23);
INSERT INTO `punch2` VALUES ('占宇苀', '弘梅小学-曹行校区', '一年级', '四班', 23);
INSERT INTO `punch2` VALUES ('张倩', '育苗小学', '二年级', '三班', 23);
INSERT INTO `punch2` VALUES ('张晟曦', '弘梅小学-曹行校区', '二年级', '二班', 23);
INSERT INTO `punch2` VALUES ('张歆悦', '弘梅二小-朱行校区', '一年级', '二班', 23);
INSERT INTO `punch2` VALUES ('张旭航', '塘湾小学', '二年级', '六班', 23);
INSERT INTO `punch2` VALUES ('赵子健', '弘梅小学-曹行校区', '二年级', '六班', 23);
INSERT INTO `punch2` VALUES ('郑重', '塘湾小学', '二年级', '五班', 23);
INSERT INTO `punch2` VALUES ('周景琦', '杨东小学', '一年级', '三班', 23);
INSERT INTO `punch2` VALUES ('周娜', '弘梅二小-朱行校区', '二年级', '二班', 23);
INSERT INTO `punch2` VALUES ('朱珠', '塘湾小学', '一年级', '九班', 23);
INSERT INTO `punch2` VALUES ('祝继苇', '弘梅二小-朱行校区', '二年级', '一班', 23);
INSERT INTO `punch2` VALUES ('庄涵玲', '塘湾小学', '二年级', '五班', 23);
INSERT INTO `punch2` VALUES ('曹佑晨', '弘梅小学-蔷薇校区', '二年级', '二班', 22);
INSERT INTO `punch2` VALUES ('陈金鱚', '杨东小学', '一年级', '三班', 22);
INSERT INTO `punch2` VALUES ('陈雅婷', '塘湾小学', '一年级', '五班', 22);
INSERT INTO `punch2` VALUES ('董梦露', '双江小学', '二年级', '一班', 22);
INSERT INTO `punch2` VALUES ('杜乐晨', '塘湾小学', '二年级', '二班', 22);
INSERT INTO `punch2` VALUES ('甘兆逸', '弘梅二小-陇西校区', '一年级', '二班', 22);
INSERT INTO `punch2` VALUES ('管潘蓉', '弘梅二小-朱行校区', '二年级', '三班', 22);
INSERT INTO `punch2` VALUES ('桂雨睿', '弘梅二小-朱行校区', '二年级', '三班', 22);
INSERT INTO `punch2` VALUES ('黄思凯', '塘湾小学', '一年级', '一班', 22);
INSERT INTO `punch2` VALUES ('雷玉涵', '塘湾小学', '一年级', '五班', 22);
INSERT INTO `punch2` VALUES ('黎欣颜', '杨东小学', '一年级', '三班', 22);
INSERT INTO `punch2` VALUES ('娄宇婕', '弘梅二小-朱行校区', '二年级', '一班', 22);
INSERT INTO `punch2` VALUES ('牛文昊', '浦江文馨学校', '二年级', '二班', 22);
INSERT INTO `punch2` VALUES ('唐铃徐', '弘梅二小-朱行校区', '二年级', '一班', 22);
INSERT INTO `punch2` VALUES ('宛锦川', '弘梅二小-陇西校区', '二年级', '一班', 22);
INSERT INTO `punch2` VALUES ('王子涵', '浦江文馨学校', '一年级', '三班', 22);
INSERT INTO `punch2` VALUES ('吴秉泽。', '塘湾小学', '二年级', '四班', 22);
INSERT INTO `punch2` VALUES ('谢文杰', '塘湾小学', '二年级', '五班', 22);
INSERT INTO `punch2` VALUES ('徐路瑶', '马桥小学', '二年级', '五班', 22);
INSERT INTO `punch2` VALUES ('薛舒予', '弘梅小学-曹行校区', '一年级', '四班', 22);
INSERT INTO `punch2` VALUES ('袁以泉', '弘梅小学-曹行校区', '一年级', '二班', 22);
INSERT INTO `punch2` VALUES ('张博涛', '弘梅小学-蔷薇校区', '一年级', '一班', 22);
INSERT INTO `punch2` VALUES ('张瑞玲', '申华小学', '二年级', '一班', 22);
INSERT INTO `punch2` VALUES ('赵仁旺', '塘湾小学', '二年级', '六班', 22);
INSERT INTO `punch2` VALUES ('郑玥', '弘梅二小-陇西校区', '一年级', '二班', 22);
INSERT INTO `punch2` VALUES ('朱汉轩', '弘梅小学-曹行校区', '二年级', '二班', 22);
INSERT INTO `punch2` VALUES ('蔡妮平', '弘梅二小-朱行校区', '二年级', '二班', 21);
INSERT INTO `punch2` VALUES ('耿紫涵', '弘梅小学-曹行校区', '二年级', '三班', 21);
INSERT INTO `punch2` VALUES ('韩曦瑶', '塘湾小学', '二年级', '一班', 21);
INSERT INTO `punch2` VALUES ('胡月瑶', '育苗小学', '二年级', '一班', 21);
INSERT INTO `punch2` VALUES ('黄玺诺', '双江小学', '二年级', '四班', 21);
INSERT INTO `punch2` VALUES ('任毅', '山海小学', '一年级', '三班', 21);
INSERT INTO `punch2` VALUES ('宋雨萱', '弘梅小学-曹行校区', '二年级', '三班', 21);
INSERT INTO `punch2` VALUES ('苏晓然', '弘梅二小-陇西校区', '二年级', '二班', 21);
INSERT INTO `punch2` VALUES ('文诗琪', '弘梅小学-蔷薇校区', '一年级', '二班', 21);
INSERT INTO `punch2` VALUES ('吴明轩', '塘湾小学', '一年级', '六班', 21);
INSERT INTO `punch2` VALUES ('吴卫民', '弘梅二小-朱行校区', '二年级', '三班', 21);
INSERT INTO `punch2` VALUES ('徐清姿', '弘梅二小-陇西校区', '一年级', '一班', 21);
INSERT INTO `punch2` VALUES ('徐子豪', '塘湾小学', '一年级', '九班', 21);
INSERT INTO `punch2` VALUES ('张浩然', '塘湾小学', '一年级', '六班', 21);
INSERT INTO `punch2` VALUES ('张慧', '马桥小学', '一年级', '四班', 21);
INSERT INTO `punch2` VALUES ('张妙宸', '弘梅小学-曹行校区', '一年级', '四班', 21);
INSERT INTO `punch2` VALUES ('张诗琪', '弘梅二小-陇西校区', '一年级', '二班', 21);
INSERT INTO `punch2` VALUES ('张天祥', '弘梅二小-陇西校区', '一年级', '一班', 21);
INSERT INTO `punch2` VALUES ('张雅婷', '弘梅二小-陇西校区', '一年级', '一班', 21);
INSERT INTO `punch2` VALUES ('张毅轩', '双江小学', '二年级', '四班', 21);
INSERT INTO `punch2` VALUES ('张雨婷', '浦江文馨学校', '一年级', '四班', 21);
INSERT INTO `punch2` VALUES ('郑昊', '弘梅二小-陇西校区', '二年级', '二班', 21);
INSERT INTO `punch2` VALUES ('曾晓凡', '弘梅小学-曹行校区', '二年级', '五班', 20);
INSERT INTO `punch2` VALUES ('陈沫昕', '塘湾小学', '一年级', '一班', 20);
INSERT INTO `punch2` VALUES ('方道涵', '山海小学', '一年级', '三班', 20);
INSERT INTO `punch2` VALUES ('弘梅小学二（3班林皓涵）', '弘梅小学-曹行校区', '二年级', '三班', 20);
INSERT INTO `punch2` VALUES ('黄庆轩', '弘梅二小-朱行校区', '二年级', '三班', 20);
INSERT INTO `punch2` VALUES ('孔昊哲', '弘梅小学-曹行校区', '一年级', '二班', 20);
INSERT INTO `punch2` VALUES ('李抒娓', '杨东小学', '二年级', '三班', 20);
INSERT INTO `punch2` VALUES ('李紫硕', '马桥小学', '二年级', '四班', 20);
INSERT INTO `punch2` VALUES ('罗尚村', '浦江文馨学校', '二年级', '二班', 20);
INSERT INTO `punch2` VALUES ('马诗妍', '双江小学', '一年级', '一班', 20);
INSERT INTO `punch2` VALUES ('汪馨怡', '弘梅二小-朱行校区', '一年级', '二班', 20);
INSERT INTO `punch2` VALUES ('魏子航', '弘梅二小-陇西校区', '二年级', '一班', 20);
INSERT INTO `punch2` VALUES ('吴悠', '弘梅二小-朱行校区', '一年级', '一班', 20);
INSERT INTO `punch2` VALUES ('夏周继业', '弘梅小学-蔷薇校区', '二年级', '一班', 20);
INSERT INTO `punch2` VALUES ('徐雯佳', '弘梅二小-朱行校区', '二年级', '三班', 20);
INSERT INTO `punch2` VALUES ('余诗语', '弘梅小学-曹行校区', '一年级', '三班', 20);
INSERT INTO `punch2` VALUES ('余天宇', '浦江文馨学校', '二年级', '二班', 20);
INSERT INTO `punch2` VALUES ('张赫', '弘梅二小-陇西校区', '一年级', '一班', 20);
INSERT INTO `punch2` VALUES ('张欣怡', '弘梅二小-陇西校区', '二年级', '三班', 20);
INSERT INTO `punch2` VALUES ('张媛媛', '双江小学', '二年级', '一班', 20);
INSERT INTO `punch2` VALUES ('朱星然', '弘梅小学-曹行校区', '一年级', '一班', 20);
INSERT INTO `punch2` VALUES ('陈城', '弘梅二小-陇西校区', '二年级', '四班', 19);
INSERT INTO `punch2` VALUES ('陈文轩', '塘湾小学', '一年级', '八班', 19);
INSERT INTO `punch2` VALUES ('窦思涵', '弘梅小学-曹行校区', '一年级', '四班', 19);
INSERT INTO `punch2` VALUES ('杜凯文', '弘梅二小-陇西校区', '一年级', '四班', 19);
INSERT INTO `punch2` VALUES ('段晨聚', '塘湾小学', '一年级', '三班', 19);
INSERT INTO `punch2` VALUES ('付豪', '弘梅小学-蔷薇校区', '二年级', '二班', 19);
INSERT INTO `punch2` VALUES ('付昱', '弘梅小学-曹行校区', '二年级', '三班', 19);
INSERT INTO `punch2` VALUES ('甘鸿晨', '弘梅二小-朱行校区', '一年级', '三班', 19);
INSERT INTO `punch2` VALUES ('胡天赐', '弘梅二小-朱行校区', '二年级', '二班', 19);
INSERT INTO `punch2` VALUES ('黄梓欣', '弘梅小学-曹行校区', '二年级', '三班', 19);
INSERT INTO `punch2` VALUES ('雷晓语', '弘梅二小-陇西校区', '二年级', '四班', 19);
INSERT INTO `punch2` VALUES ('李默涵', '弘梅小学-曹行校区', '二年级', '二班', 19);
INSERT INTO `punch2` VALUES ('李馨怡', '弘梅小学-曹行校区', '二年级', '一班', 19);
INSERT INTO `punch2` VALUES ('林思涵', '塘湾小学', '二年级', '五班', 19);
INSERT INTO `punch2` VALUES ('刘俊宇', '弘梅小学-曹行校区', '二年级', '五班', 19);
INSERT INTO `punch2` VALUES ('任安妍', '弘梅小学-曹行校区', '二年级', '五班', 19);
INSERT INTO `punch2` VALUES ('任金瑞', '弘梅小学-曹行校区', '一年级', '四班', 19);
INSERT INTO `punch2` VALUES ('孙启妍', '双江小学', '二年级', '三班', 19);
INSERT INTO `punch2` VALUES ('滕梓涵', '弘梅小学-曹行校区', '二年级', '三班', 19);
INSERT INTO `punch2` VALUES ('王梓涵', '塘湾小学', '一年级', '五班', 19);
INSERT INTO `punch2` VALUES ('许浩远', '弘梅小学-蔷薇校区', '一年级', '二班', 19);
INSERT INTO `punch2` VALUES ('闫乐', '马桥小学', '二年级', '四班', 19);
INSERT INTO `punch2` VALUES ('杨皓', '弘梅小学-曹行校区', '一年级', '四班', 19);
INSERT INTO `punch2` VALUES ('郑清钰', '弘梅二小-陇西校区', '一年级', '三班', 19);
INSERT INTO `punch2` VALUES ('周雨桐', '弘梅小学-曹行校区', '二年级', '二班', 19);
INSERT INTO `punch2` VALUES ('陈辰', '弘梅小学-曹行校区', '二年级', '二班', 18);
INSERT INTO `punch2` VALUES ('董嘉禾', '双江小学', '一年级', '一班', 18);
INSERT INTO `punch2` VALUES ('胡景宏', '浦江文馨学校', '一年级', '三班', 18);
INSERT INTO `punch2` VALUES ('黄楷镒', '弘梅二小-陇西校区', '一年级', '一班', 18);
INSERT INTO `punch2` VALUES ('蒋伊宁', '马桥小学', '二年级', '一班', 18);
INSERT INTO `punch2` VALUES ('赖梦琪', '马桥小学', '一年级', '五班', 18);
INSERT INTO `punch2` VALUES ('李亚杰', '弘梅小学-曹行校区', '一年级', '六班', 18);
INSERT INTO `punch2` VALUES ('李怡汎', '弘梅小学-曹行校区', '二年级', '二班', 18);
INSERT INTO `punch2` VALUES ('刘子炎', '弘梅小学-曹行校区', '一年级', '二班', 18);
INSERT INTO `punch2` VALUES ('罗毅', '浦江文馨学校', '一年级', '二班', 18);
INSERT INTO `punch2` VALUES ('马诗雨', '弘梅二小-陇西校区', '二年级', '二班', 18);
INSERT INTO `punch2` VALUES ('时义超', '弘梅二小-朱行校区', '一年级', '二班', 18);
INSERT INTO `punch2` VALUES ('史梓轩', '弘梅小学-曹行校区', '一年级', '一班', 18);
INSERT INTO `punch2` VALUES ('涂金玉', '杨东小学', '二年级', '三班', 18);
INSERT INTO `punch2` VALUES ('王子航', '马桥小学', '一年级', '二班', 18);
INSERT INTO `punch2` VALUES ('肖谦玉', '浦江文馨学校', '一年级', '一班', 18);
INSERT INTO `punch2` VALUES ('谢家利', '弘梅小学-曹行校区', '二年级', '一班', 18);
INSERT INTO `punch2` VALUES ('杨鑫', '弘梅小学-曹行校区', '一年级', '一班', 18);
INSERT INTO `punch2` VALUES ('杨植深', '育苗小学', '二年级', '三班', 18);
INSERT INTO `punch2` VALUES ('张佑晞', '弘梅二小-陇西校区', '二年级', '四班', 18);
INSERT INTO `punch2` VALUES ('曾晗凯', '双江小学', '二年级', '四班', 17);
INSERT INTO `punch2` VALUES ('陈芸熙', '弘梅小学-曹行校区', '一年级', '一班', 17);
INSERT INTO `punch2` VALUES ('高若彤', '弘梅小学-曹行校区', '二年级', '二班', 17);
INSERT INTO `punch2` VALUES ('顾凯宁', '杨东小学', '一年级', '一班', 17);
INSERT INTO `punch2` VALUES ('华梓浩', '山海小学', '一年级', '三班', 17);
INSERT INTO `punch2` VALUES ('姜景豪', '马桥小学', '一年级', '二班', 17);
INSERT INTO `punch2` VALUES ('刘欣彤', '弘梅二小-陇西校区', '一年级', '一班', 17);
INSERT INTO `punch2` VALUES ('童佳琳', '弘梅二小-朱行校区', '二年级', '三班', 17);
INSERT INTO `punch2` VALUES ('温昊龙', '弘梅二小-陇西校区', '二年级', '四班', 17);
INSERT INTO `punch2` VALUES ('温馨瑶', '弘梅二小-朱行校区', '一年级', '三班', 17);
INSERT INTO `punch2` VALUES ('席梓渝', '弘梅小学-曹行校区', '一年级', '五班', 17);
INSERT INTO `punch2` VALUES ('肖俊涛', '弘梅小学-曹行校区', '二年级', '六班', 17);
INSERT INTO `punch2` VALUES ('杨竣博', '塘湾小学', '二年级', '二班', 17);
INSERT INTO `punch2` VALUES ('詹俊皓', '双江小学', '二年级', '四班', 17);
INSERT INTO `punch2` VALUES ('张恒瑞', '塘湾小学', '二年级', '六班', 17);
INSERT INTO `punch2` VALUES ('曾紫妍', '双江小学', '一年级', '一班', 16);
INSERT INTO `punch2` VALUES ('程伟祺', '马桥小学', '二年级', '八班', 16);
INSERT INTO `punch2` VALUES ('黄俊豪', '塘湾小学', '一年级', '五班', 16);
INSERT INTO `punch2` VALUES ('李子豪', '育苗小学', '一年级', '三班', 16);
INSERT INTO `punch2` VALUES ('刘静雅', '塘湾小学', '一年级', '四班', 16);
INSERT INTO `punch2` VALUES ('娄伊琳', '弘梅小学-曹行校区', '一年级', '一班', 16);
INSERT INTO `punch2` VALUES ('孙晨淇', '塘湾小学', '二年级', '五班', 16);
INSERT INTO `punch2` VALUES ('王一清', '弘梅小学-曹行校区', '二年级', '六班', 16);
INSERT INTO `punch2` VALUES ('王雨萱', '塘湾小学', '二年级', '三班', 16);
INSERT INTO `punch2` VALUES ('徐晨洋', '浦江文馨学校', '二年级', '二班', 16);
INSERT INTO `punch2` VALUES ('叶梓阳', '弘梅小学-曹行校区', '二年级', '五班', 16);
INSERT INTO `punch2` VALUES ('殷允旺', '弘梅小学-曹行校区', '一年级', '四班', 16);
INSERT INTO `punch2` VALUES ('尹一赫', '弘梅小学-曹行校区', '一年级', '五班', 16);
INSERT INTO `punch2` VALUES ('余丽煌', '弘梅二小-陇西校区', '一年级', '四班', 16);
INSERT INTO `punch2` VALUES ('朱雨涵', '双江小学', '二年级', '三班', 16);
INSERT INTO `punch2` VALUES ('Why', '弘梅二小-陇西校区', '一年级', '二班', 15);
INSERT INTO `punch2` VALUES ('陈姝妗', '弘梅小学-曹行校区', '一年级', '一班', 15);
INSERT INTO `punch2` VALUES ('何金熙', '弘梅小学-曹行校区', '一年级', '三班', 15);
INSERT INTO `punch2` VALUES ('侯方煜', '杨东小学', '一年级', '一班', 15);
INSERT INTO `punch2` VALUES ('李玉玲', '育苗小学', '二年级', '一班', 15);
INSERT INTO `punch2` VALUES ('马铭凯', '浦江文馨学校', '二年级', '二班', 15);
INSERT INTO `punch2` VALUES ('牟紫萱', '马桥小学', '二年级', '六班', 15);
INSERT INTO `punch2` VALUES ('邱晗', '塘湾小学', '一年级', '六班', 15);
INSERT INTO `punch2` VALUES ('施博文', '弘梅小学-曹行校区', '二年级', '三班', 15);
INSERT INTO `punch2` VALUES ('王智恩', '弘梅小学-曹行校区', '二年级', '三班', 15);
INSERT INTO `punch2` VALUES ('吴浩然', '塘湾小学', '二年级', '六班', 15);
INSERT INTO `punch2` VALUES ('谢思彤', '弘梅二小-陇西校区', '二年级', '二班', 15);
INSERT INTO `punch2` VALUES ('许馨元', '弘梅小学-曹行校区', '一年级', '一班', 15);
INSERT INTO `punch2` VALUES ('杨可欣', '塘湾小学', '一年级', '九班', 15);
INSERT INTO `punch2` VALUES ('叶梓彤', '双江小学', '一年级', '一班', 15);
INSERT INTO `punch2` VALUES ('张俊涵', '双江小学', '一年级', '一班', 15);
INSERT INTO `punch2` VALUES ('曹浩然', '弘梅二小-朱行校区', '一年级', '一班', 14);
INSERT INTO `punch2` VALUES ('陈可萌', '双江小学', '一年级', '一班', 14);
INSERT INTO `punch2` VALUES ('仇彧', '弘梅二小-陇西校区', '二年级', '一班', 14);
INSERT INTO `punch2` VALUES ('耿思晨', '双江小学', '一年级', '一班', 14);
INSERT INTO `punch2` VALUES ('管梦琪', '弘梅小学-曹行校区', '一年级', '二班', 14);
INSERT INTO `punch2` VALUES ('郭浩宇', '弘梅小学-曹行校区', '二年级', '二班', 14);
INSERT INTO `punch2` VALUES ('胡诗雅', '弘梅小学-曹行校区', '二年级', '三班', 14);
INSERT INTO `punch2` VALUES ('赖晨希', '马桥小学', '一年级', '四班', 14);
INSERT INTO `punch2` VALUES ('李紫涵', '塘湾小学', '一年级', '一班', 14);
INSERT INTO `punch2` VALUES ('刘文姗', '浦江文馨学校', '二年级', '二班', 14);
INSERT INTO `punch2` VALUES ('彭睿淼', '浦江文馨学校', '一年级', '三班', 14);
INSERT INTO `punch2` VALUES ('钱可馨', '弘梅二小-朱行校区', '一年级', '三班', 14);
INSERT INTO `punch2` VALUES ('沈祺智', '弘梅小学-曹行校区', '一年级', '一班', 14);
INSERT INTO `punch2` VALUES ('汤辰曦', '育苗小学', '二年级', '三班', 14);
INSERT INTO `punch2` VALUES ('姚友善', '申华小学', '二年级', '一班', 14);
INSERT INTO `punch2` VALUES ('于子骞', '育苗小学', '一年级', '三班', 14);
INSERT INTO `punch2` VALUES ('张鑫淼', '弘梅小学-曹行校区', '二年级', '二班', 14);
INSERT INTO `punch2` VALUES ('朱钰琪', '塘湾小学', '一年级', '一班', 14);
INSERT INTO `punch2` VALUES ('黄陈鑫', '马桥小学', '二年级', '三班', 13);
INSERT INTO `punch2` VALUES ('蒋熠轩', '杨东小学', '一年级', '三班', 13);
INSERT INTO `punch2` VALUES ('孔胜智', '弘梅小学-曹行校区', '一年级', '一班', 13);
INSERT INTO `punch2` VALUES ('李紫桐', '双江小学', '一年级', '一班', 13);
INSERT INTO `punch2` VALUES ('林望庆', '弘梅小学-曹行校区', '二年级', '二班', 13);
INSERT INTO `punch2` VALUES ('刘润鹏', '塘湾小学', '二年级', '四班', 13);
INSERT INTO `punch2` VALUES ('么尚恩', '弘梅二小-朱行校区', '二年级', '三班', 13);
INSERT INTO `punch2` VALUES ('祁诺', '弘梅小学-曹行校区', '一年级', '四班', 13);
INSERT INTO `punch2` VALUES ('时悦琪', '弘梅二小-朱行校区', '二年级', '二班', 13);
INSERT INTO `punch2` VALUES ('孙天佑', '双江小学', '一年级', '一班', 13);
INSERT INTO `punch2` VALUES ('熊嘉琪', '弘梅小学-曹行校区', '二年级', '二班', 13);
INSERT INTO `punch2` VALUES ('许辰汐', '弘梅小学-曹行校区', '二年级', '三班', 13);
INSERT INTO `punch2` VALUES ('杨俊宇', '塘湾小学', '二年级', '二班', 13);
INSERT INTO `punch2` VALUES ('张优冉', '弘梅小学-曹行校区', '一年级', '四班', 13);
INSERT INTO `punch2` VALUES ('张煜硕', '浦江文馨学校', '二年级', '二班', 13);
INSERT INTO `punch2` VALUES ('钟子玹', '弘梅小学-曹行校区', '一年级', '一班', 13);
INSERT INTO `punch2` VALUES ('仲爱棋', '弘梅二小-朱行校区', '二年级', '一班', 13);
INSERT INTO `punch2` VALUES ('朱梓灵', '弘梅小学-曹行校区', '一年级', '四班', 13);
INSERT INTO `punch2` VALUES ('曹乐俊', '弘梅小学-曹行校区', '一年级', '一班', 12);
INSERT INTO `punch2` VALUES ('董昊阳', '塘湾小学', '二年级', '四班', 12);
INSERT INTO `punch2` VALUES ('房欣悦', '弘梅小学-蔷薇校区', '二年级', '一班', 12);
INSERT INTO `punch2` VALUES ('高思扬', '弘梅二小-陇西校区', '一年级', '三班', 12);
INSERT INTO `punch2` VALUES ('顾羽茜', '塘湾小学', '二年级', '五班', 12);
INSERT INTO `punch2` VALUES ('李欣皓', '塘湾小学', '一年级', '六班', 12);
INSERT INTO `punch2` VALUES ('卢正东', '马桥小学', '一年级', '五班', 12);
INSERT INTO `punch2` VALUES ('魏梓涵', '弘梅二小-朱行校区', '一年级', '一班', 12);
INSERT INTO `punch2` VALUES ('吴欣妍', '弘梅二小-朱行校区', '二年级', '一班', 12);
INSERT INTO `punch2` VALUES ('杨硕', '弘梅小学-曹行校区', '二年级', '二班', 12);
INSERT INTO `punch2` VALUES ('叶昊然', '育苗小学', '二年级', '三班', 12);
INSERT INTO `punch2` VALUES ('张书恒', '浦江文馨学校', '一年级', '三班', 12);
INSERT INTO `punch2` VALUES ('张延旭', '弘梅小学-曹行校区', '一年级', '二班', 12);
INSERT INTO `punch2` VALUES ('张永晴', '弘梅小学-曹行校区', '二年级', '一班', 12);
INSERT INTO `punch2` VALUES ('顾谦', '弘梅小学-曹行校区', '一年级', '三班', 11);
INSERT INTO `punch2` VALUES ('蒋家祥', '弘梅小学-曹行校区', '二年级', '三班', 11);
INSERT INTO `punch2` VALUES ('梁宇勋', '双江小学', '二年级', '一班', 11);
INSERT INTO `punch2` VALUES ('刘佳怡', '弘梅小学-曹行校区', '一年级', '一班', 11);
INSERT INTO `punch2` VALUES ('刘文鑫', '塘湾小学', '二年级', '三班', 11);
INSERT INTO `punch2` VALUES ('孙熙媛', '塘湾小学', '二年级', '八班', 11);
INSERT INTO `punch2` VALUES ('孙艺菲', '杨东小学', '二年级', '三班', 11);
INSERT INTO `punch2` VALUES ('汤书瑜', '弘梅二小-陇西校区', '一年级', '三班', 11);
INSERT INTO `punch2` VALUES ('王浩南', '育苗小学', '二年级', '三班', 11);
INSERT INTO `punch2` VALUES ('王沛语', '弘梅小学-曹行校区', '一年级', '四班', 11);
INSERT INTO `punch2` VALUES ('王思闻', '申华小学', '二年级', '二班', 11);
INSERT INTO `punch2` VALUES ('吴文远', '马桥小学', '二年级', '二班', 11);
INSERT INTO `punch2` VALUES ('吴小虎', '马桥小学', '一年级', '四班', 11);
INSERT INTO `punch2` VALUES ('武皓宇', '杨东小学', '一年级', '三班', 11);
INSERT INTO `punch2` VALUES ('杨一', '浦江文馨学校', '一年级', '三班', 11);
INSERT INTO `punch2` VALUES ('尤子辰', '弘梅小学-曹行校区', '二年级', '一班', 11);
INSERT INTO `punch2` VALUES ('余良硕', '塘湾小学', '一年级', '五班', 11);
INSERT INTO `punch2` VALUES ('喻馨', '弘梅小学-曹行校区', '二年级', '六班', 11);
INSERT INTO `punch2` VALUES ('袁岳梓晨', '马桥小学', '一年级', '三班', 11);
INSERT INTO `punch2` VALUES ('张子萌', '弘梅小学-曹行校区', '一年级', '一班', 11);
INSERT INTO `punch2` VALUES ('周嘉言', '弘梅小学-曹行校区', '一年级', '一班', 11);
INSERT INTO `punch2` VALUES ('周啸宸', '塘湾小学', '二年级', '二班', 11);
INSERT INTO `punch2` VALUES ('封云天', '双江小学', '二年级', '一班', 10);
INSERT INTO `punch2` VALUES ('胡蝶', '育苗小学', '二年级', '三班', 10);
INSERT INTO `punch2` VALUES ('胡畔', '弘梅小学-曹行校区', '一年级', '四班', 10);
INSERT INTO `punch2` VALUES ('雷奕辰', '浦江文馨学校', '二年级', '三班', 10);
INSERT INTO `punch2` VALUES ('马雨琪', '弘梅小学-蔷薇校区', '一年级', '一班', 10);
INSERT INTO `punch2` VALUES ('宋妮诺', '杨东小学', '一年级', '三班', 10);
INSERT INTO `punch2` VALUES ('唐康杰', '塘湾小学', '一年级', '七班', 10);
INSERT INTO `punch2` VALUES ('魏辰昊', '弘梅小学-曹行校区', '二年级', '二班', 10);
INSERT INTO `punch2` VALUES ('严苏', '浦江文馨学校', '二年级', '四班', 10);
INSERT INTO `punch2` VALUES ('张容鑫', '弘梅小学-蔷薇校区', '二年级', '二班', 10);
INSERT INTO `punch2` VALUES ('朱娇娇', '塘湾小学', '二年级', '一班', 10);
INSERT INTO `punch2` VALUES ('陈立春', '弘梅小学-曹行校区', '一年级', '一班', 9);
INSERT INTO `punch2` VALUES ('邓少桐', '弘梅小学-曹行校区', '一年级', '三班', 9);
INSERT INTO `punch2` VALUES ('刘涛', '塘湾小学', '二年级', '七班', 9);
INSERT INTO `punch2` VALUES ('商超', '塘湾小学', '二年级', '二班', 9);
INSERT INTO `punch2` VALUES ('沈宣妤', '塘湾小学', '二年级', '一班', 9);
INSERT INTO `punch2` VALUES ('宋金宇', '山海小学', '一年级', '三班', 9);
INSERT INTO `punch2` VALUES ('苏俊喆', '双江小学', '二年级', '四班', 9);
INSERT INTO `punch2` VALUES ('苏鲁泽', '弘梅小学-蔷薇校区', '一年级', '二班', 9);
INSERT INTO `punch2` VALUES ('王苏瑶', '弘梅二小-陇西校区', '一年级', '四班', 9);
INSERT INTO `punch2` VALUES ('王怡霏', '弘梅二小-朱行校区', '一年级', '三班', 9);
INSERT INTO `punch2` VALUES ('魏诗畔', '弘梅小学-曹行校区', '二年级', '二班', 9);
INSERT INTO `punch2` VALUES ('杨芳飞', '塘湾小学', '一年级', '六班', 9);
INSERT INTO `punch2` VALUES ('张睿', '弘梅小学-曹行校区', '二年级', '二班', 9);
INSERT INTO `punch2` VALUES ('张士岩', '塘湾小学', '一年级', '四班', 9);
INSERT INTO `punch2` VALUES ('张云昕', '塘湾小学', '一年级', '五班', 9);
INSERT INTO `punch2` VALUES ('蔡承希', '马桥小学', '一年级', '一班', 8);
INSERT INTO `punch2` VALUES ('柴忻瑶', '双江小学', '一年级', '二班', 8);
INSERT INTO `punch2` VALUES ('范诗语', '浦江文馨学校', '一年级', '三班', 8);
INSERT INTO `punch2` VALUES ('付景曦', '杨东小学', '一年级', '三班', 8);
INSERT INTO `punch2` VALUES ('郭昊轩', '弘梅小学-曹行校区', '一年级', '五班', 8);
INSERT INTO `punch2` VALUES ('韩静怡', '杨东小学', '一年级', '三班', 8);
INSERT INTO `punch2` VALUES ('胡嘉莹', '弘梅小学-蔷薇校区', '一年级', '一班', 8);
INSERT INTO `punch2` VALUES ('李某某', '山海小学', '一年级', '一班', 8);
INSERT INTO `punch2` VALUES ('李蕊', '塘湾小学', '二年级', '六班', 8);
INSERT INTO `punch2` VALUES ('李玉平', '弘梅小学-曹行校区', '二年级', '六班', 8);
INSERT INTO `punch2` VALUES ('陆嘉瑶', '弘梅二小-陇西校区', '一年级', '一班', 8);
INSERT INTO `punch2` VALUES ('罗欣怡', '申华小学', '二年级', '二班', 8);
INSERT INTO `punch2` VALUES ('潘继航', '塘湾小学', '一年级', '三班', 8);
INSERT INTO `punch2` VALUES ('邱鑫', '弘梅二小-陇西校区', '二年级', '三班', 8);
INSERT INTO `punch2` VALUES ('汪馨予晴', '塘湾小学', '二年级', '二班', 8);
INSERT INTO `punch2` VALUES ('王嘉佑', '塘湾小学', '一年级', '九班', 8);
INSERT INTO `punch2` VALUES ('徐志豪', '山海小学', '二年级', '二班', 8);
INSERT INTO `punch2` VALUES ('杨海涛', '塘湾小学', '一年级', '二班', 8);
INSERT INTO `punch2` VALUES ('程子辰', '杨东小学', '一年级', '三班', 7);
INSERT INTO `punch2` VALUES ('邓雅莉', '山海小学', '一年级', '二班', 7);
INSERT INTO `punch2` VALUES ('郭一浩', '塘湾小学', '二年级', '二班', 7);
INSERT INTO `punch2` VALUES ('纪俊宇', '弘梅二小-陇西校区', '一年级', '一班', 7);
INSERT INTO `punch2` VALUES ('罗慧娟', '马桥小学', '二年级', '六班', 7);
INSERT INTO `punch2` VALUES ('秦润豪', '杨东小学', '一年级', '三班', 7);
INSERT INTO `punch2` VALUES ('王晨', '塘湾小学', '二年级', '五班', 7);
INSERT INTO `punch2` VALUES ('王锦城', '杨东小学', '一年级', '三班', 7);
INSERT INTO `punch2` VALUES ('王研昕', '山海小学', '一年级', '三班', 7);
INSERT INTO `punch2` VALUES ('吴越', '浦江文馨学校', '二年级', '二班', 7);
INSERT INTO `punch2` VALUES ('朱雅清', '育苗小学', '二年级', '三班', 7);
INSERT INTO `punch2` VALUES ('朱子阳', '双江小学', '一年级', '一班', 7);
INSERT INTO `punch2` VALUES ('窦皓', '弘梅二小-朱行校区', '二年级', '三班', 6);
INSERT INTO `punch2` VALUES ('何舒晴', '双江小学', '一年级', '二班', 6);
INSERT INTO `punch2` VALUES ('李峻熙', '双江小学', '二年级', '四班', 6);
INSERT INTO `punch2` VALUES ('李童', '弘梅二小-朱行校区', '二年级', '三班', 6);
INSERT INTO `punch2` VALUES ('李鑫怡', '塘湾小学', '一年级', '六班', 6);
INSERT INTO `punch2` VALUES ('凌雨晨', '塘湾小学', '一年级', '五班', 6);
INSERT INTO `punch2` VALUES ('刘念', '浦江文馨学校', '一年级', '四班', 6);
INSERT INTO `punch2` VALUES ('刘裕资', '弘梅二小-陇西校区', '二年级', '一班', 6);
INSERT INTO `punch2` VALUES ('卢思杰', '马桥小学', '一年级', '八班', 6);
INSERT INTO `punch2` VALUES ('伦正耀', '弘梅小学-蔷薇校区', '二年级', '一班', 6);
INSERT INTO `punch2` VALUES ('王冠', '弘梅小学-曹行校区', '二年级', '四班', 6);
INSERT INTO `punch2` VALUES ('王荀', '双江小学', '二年级', '四班', 6);
INSERT INTO `punch2` VALUES ('魏铭煦', '育苗小学', '二年级', '一班', 6);
INSERT INTO `punch2` VALUES ('吴悦冉', '弘梅小学-曹行校区', '一年级', '二班', 6);
INSERT INTO `punch2` VALUES ('吴子涵', '弘梅小学-蔷薇校区', '二年级', '二班', 6);
INSERT INTO `punch2` VALUES ('杨雨琪', '弘梅二小-朱行校区', '一年级', '二班', 6);
INSERT INTO `punch2` VALUES ('俞畅', '塘湾小学', '一年级', '九班', 6);
INSERT INTO `punch2` VALUES ('张承泽', '弘梅小学-蔷薇校区', '二年级', '二班', 6);
INSERT INTO `punch2` VALUES ('张恩语', '弘梅二小-陇西校区', '二年级', '一班', 6);
INSERT INTO `punch2` VALUES ('张嘉怡', '塘湾小学', '二年级', '六班', 6);
INSERT INTO `punch2` VALUES ('张明昊', '杨东小学', '一年级', '三班', 6);
INSERT INTO `punch2` VALUES ('郑宇坤', '塘湾小学', '一年级', '七班', 6);
INSERT INTO `punch2` VALUES ('朱祉霖', '双江小学', '二年级', '四班', 6);
INSERT INTO `punch2` VALUES ('白宇轩', '弘梅小学-曹行校区', '二年级', '四班', 5);
INSERT INTO `punch2` VALUES ('白雨涵', '弘梅小学-曹行校区', '二年级', '四班', 5);
INSERT INTO `punch2` VALUES ('陈延博', '弘梅小学-曹行校区', '二年级', '六班', 5);
INSERT INTO `punch2` VALUES ('程梦琪', '弘梅二小-朱行校区', '二年级', '一班', 5);
INSERT INTO `punch2` VALUES ('崔皓暄', '弘梅二小-朱行校区', '一年级', '一班', 5);
INSERT INTO `punch2` VALUES ('丁紫涵', '塘湾小学', '一年级', '九班', 5);
INSERT INTO `punch2` VALUES ('惠嘉艺', '马桥小学', '一年级', '八班', 5);
INSERT INTO `punch2` VALUES ('贾星宇', '塘湾小学', '二年级', '五班', 5);
INSERT INTO `punch2` VALUES ('李丹妮', '弘梅二小-陇西校区', '一年级', '二班', 5);
INSERT INTO `punch2` VALUES ('李恒逸', '弘梅二小-陇西校区', '二年级', '二班', 5);
INSERT INTO `punch2` VALUES ('林恩典', '弘梅小学-曹行校区', '一年级', '一班', 5);
INSERT INTO `punch2` VALUES ('刘成旭', '塘湾小学', '二年级', '五班', 5);
INSERT INTO `punch2` VALUES ('刘慧', '弘梅小学-曹行校区', '一年级', '四班', 5);
INSERT INTO `punch2` VALUES ('刘擎宇', '塘湾小学', '二年级', '五班', 5);
INSERT INTO `punch2` VALUES ('沈蔡煜祺', '山海小学', '一年级', '一班', 5);
INSERT INTO `punch2` VALUES ('沈欣悦', '塘湾小学', '二年级', '四班', 5);
INSERT INTO `punch2` VALUES ('宋子轩', '塘湾小学', '二年级', '四班', 5);
INSERT INTO `punch2` VALUES ('覃子萱', '塘湾小学', '二年级', '三班', 5);
INSERT INTO `punch2` VALUES ('相泽宇', '弘梅二小-朱行校区', '二年级', '三班', 5);
INSERT INTO `punch2` VALUES ('谢明添', '弘梅小学-曹行校区', '一年级', '三班', 5);
INSERT INTO `punch2` VALUES ('谢思彤     二年级二班      38号', '弘梅二小-陇西校区', '二年级', '二班', 5);
INSERT INTO `punch2` VALUES ('熊云哲', '塘湾小学', '一年级', '三班', 5);
INSERT INTO `punch2` VALUES ('徐馨惠', '弘梅小学-曹行校区', '一年级', '六班', 5);
INSERT INTO `punch2` VALUES ('徐言伟', '马桥小学', '二年级', '一班', 5);
INSERT INTO `punch2` VALUES ('曹特嘉', '弘梅二小-陇西校区', '一年级', '四班', 4);
INSERT INTO `punch2` VALUES ('陈明慧', '塘湾小学', '一年级', '五班', 4);
INSERT INTO `punch2` VALUES ('陈思宇', '弘梅二小-陇西校区', '一年级', '三班', 4);
INSERT INTO `punch2` VALUES ('陈梓豪', '弘梅二小-朱行校区', '一年级', '二班', 4);
INSERT INTO `punch2` VALUES ('程瀚翔', '杨东小学', '二年级', '三班', 4);
INSERT INTO `punch2` VALUES ('程佳琦', '塘湾小学', '一年级', '五班', 4);
INSERT INTO `punch2` VALUES ('高韵瑶', '弘梅二小-陇西校区', '一年级', '四班', 4);
INSERT INTO `punch2` VALUES ('韩佳琪', '杨东小学', '一年级', '三班', 4);
INSERT INTO `punch2` VALUES ('韩馨仪', '弘梅小学-曹行校区', '二年级', '二班', 4);
INSERT INTO `punch2` VALUES ('何宇航', '塘湾小学', '一年级', '九班', 4);
INSERT INTO `punch2` VALUES ('李义海', '弘梅小学-曹行校区', '一年级', '一班', 4);
INSERT INTO `punch2` VALUES ('刘如意', '双江小学', '一年级', '三班', 4);
INSERT INTO `punch2` VALUES ('刘诗夏', '弘梅小学-曹行校区', '一年级', '五班', 4);
INSERT INTO `punch2` VALUES ('龙舒悦', '弘梅二小-陇西校区', '二年级', '四班', 4);
INSERT INTO `punch2` VALUES ('罗静雯', '弘梅二小-陇西校区', '一年级', '二班', 4);
INSERT INTO `punch2` VALUES ('吕忠奇', '弘梅小学-曹行校区', '二年级', '一班', 4);
INSERT INTO `punch2` VALUES ('彭樱', '山海小学', '一年级', '三班', 4);
INSERT INTO `punch2` VALUES ('沈沫', '弘梅二小-陇西校区', '一年级', '三班', 4);
INSERT INTO `punch2` VALUES ('宋林轩', '塘湾小学', '一年级', '六班', 4);
INSERT INTO `punch2` VALUES ('王诗涵', '弘梅小学-蔷薇校区', '一年级', '二班', 4);
INSERT INTO `punch2` VALUES ('叶璟清', '浦江文馨学校', '一年级', '三班', 4);
INSERT INTO `punch2` VALUES ('余孟宸', '弘梅二小-陇西校区', '一年级', '三班', 4);
INSERT INTO `punch2` VALUES ('余诺', '弘梅小学-曹行校区', '一年级', '三班', 4);
INSERT INTO `punch2` VALUES ('余睿涵', '塘湾小学', '二年级', '三班', 4);
INSERT INTO `punch2` VALUES ('袁妙妤', '弘梅小学-蔷薇校区', '一年级', '一班', 4);
INSERT INTO `punch2` VALUES ('张雨涵', '弘梅小学-蔷薇校区', '一年级', '二班', 4);
INSERT INTO `punch2` VALUES ('朱玉龙', '马桥小学', '二年级', '八班', 4);
INSERT INTO `punch2` VALUES ('dukuo', '杨东小学', '二年级', '三班', 3);
INSERT INTO `punch2` VALUES ('陈丽丽', '塘湾小学', '一年级', '二班', 3);
INSERT INTO `punch2` VALUES ('陈诗琪', '弘梅小学-曹行校区', '二年级', '六班', 3);
INSERT INTO `punch2` VALUES ('陈雯君', '弘梅小学-曹行校区', '二年级', '四班', 3);
INSERT INTO `punch2` VALUES ('陈奕婧', '弘梅小学-曹行校区', '一年级', '四班', 3);
INSERT INTO `punch2` VALUES ('陈煜楠', '杨东小学', '一年级', '三班', 3);
INSERT INTO `punch2` VALUES ('程思蕊', '双江小学', '二年级', '一班', 3);
INSERT INTO `punch2` VALUES ('傅羽硕', '弘梅二小-陇西校区', '一年级', '一班', 3);
INSERT INTO `punch2` VALUES ('季朗迪', '弘梅二小-陇西校区', '一年级', '三班', 3);
INSERT INTO `punch2` VALUES ('黎天赋', '育苗小学', '二年级', '三班', 3);
INSERT INTO `punch2` VALUES ('李明熙', '杨东小学', '一年级', '四班', 3);
INSERT INTO `punch2` VALUES ('李其璇', '弘梅小学-蔷薇校区', '一年级', '二班', 3);
INSERT INTO `punch2` VALUES ('李天赐', '育苗小学', '一年级', '一班', 3);
INSERT INTO `punch2` VALUES ('刘铭悦', '浦江文馨学校', '二年级', '二班', 3);
INSERT INTO `punch2` VALUES ('骆佳怡', '弘梅二小-朱行校区', '二年级', '三班', 3);
INSERT INTO `punch2` VALUES ('马越泽', '弘梅小学-曹行校区', '二年级', '五班', 3);
INSERT INTO `punch2` VALUES ('潘炘钰', '弘梅二小-陇西校区', '二年级', '二班', 3);
INSERT INTO `punch2` VALUES ('邱望', '塘湾小学', '二年级', '五班', 3);
INSERT INTO `punch2` VALUES ('唐艺豪', '弘梅二小-朱行校区', '二年级', '十班', 3);
INSERT INTO `punch2` VALUES ('魏嘉祺', '弘梅二小-陇西校区', '一年级', '四班', 3);
INSERT INTO `punch2` VALUES ('吴星锐', '弘梅二小-陇西校区', '二年级', '一班', 3);
INSERT INTO `punch2` VALUES ('许世洪', '弘梅小学-曹行校区', '二年级', '三班', 3);
INSERT INTO `punch2` VALUES ('闫雅琦', '申华小学', '二年级', '二班', 3);
INSERT INTO `punch2` VALUES ('杨晨', '杨东小学', '一年级', '三班', 3);
INSERT INTO `punch2` VALUES ('杨芳瑞', '弘梅小学-曹行校区', '一年级', '六班', 3);
INSERT INTO `punch2` VALUES ('张海兰', '塘湾小学', '二年级', '四班', 3);
INSERT INTO `punch2` VALUES ('赵凌昊', '弘梅小学-曹行校区', '二年级', '二班', 3);
INSERT INTO `punch2` VALUES ('赵馨浵', '育苗小学', '一年级', '一班', 3);
INSERT INTO `punch2` VALUES ('周施诗', '双江小学', '二年级', '四班', 3);
INSERT INTO `punch2` VALUES ('朱凌萱', '弘梅小学-曹行校区', '一年级', '四班', 3);
INSERT INTO `punch2` VALUES ('朱文浩', '弘梅小学-曹行校区', '二年级', '二班', 3);
INSERT INTO `punch2` VALUES ('Efdfdfgf', '弘梅二小-陇西校区', '一年级', '一班', 2);
INSERT INTO `punch2` VALUES ('曾舒婕', '浦江文馨学校', '一年级', '三班', 2);
INSERT INTO `punch2` VALUES ('曾娅淇', '马桥小学', '一年级', '四班', 2);
INSERT INTO `punch2` VALUES ('陈一宁', '弘梅二小-陇西校区', '一年级', '三班', 2);
INSERT INTO `punch2` VALUES ('二()', '弘梅小学-曹行校区', '二年级', '五班', 2);
INSERT INTO `punch2` VALUES ('高欣言', '弘梅二小-朱行校区', '二年级', '二班', 2);
INSERT INTO `punch2` VALUES ('高一一', '弘梅二小-陇西校区', '二年级', '二班', 2);
INSERT INTO `punch2` VALUES ('葛嘉恒', '弘梅二小-陇西校区', '一年级', '三班', 2);
INSERT INTO `punch2` VALUES ('韩家欣', '弘梅小学-蔷薇校区', '二年级', '一班', 2);
INSERT INTO `punch2` VALUES ('侯昕妍', '马桥小学', '一年级', '五班', 2);
INSERT INTO `punch2` VALUES ('胡恩赐', '弘梅小学-曹行校区', '一年级', '三班', 2);
INSERT INTO `punch2` VALUES ('胡浩轩', '弘梅小学-曹行校区', '二年级', '二班', 2);
INSERT INTO `punch2` VALUES ('黄紫潇', '塘湾小学', '一年级', '九班', 2);
INSERT INTO `punch2` VALUES ('姜浩', '山海小学', '一年级', '二班', 2);
INSERT INTO `punch2` VALUES ('蒋浩然', '塘湾小学', '一年级', '七班', 2);
INSERT INTO `punch2` VALUES ('李昌宇', '弘梅二小-陇西校区', '一年级', '三班', 2);
INSERT INTO `punch2` VALUES ('李昕铢', '马桥小学', '一年级', '一班', 2);
INSERT INTO `punch2` VALUES ('李鑫哲', '山海小学', '一年级', '三班', 2);
INSERT INTO `punch2` VALUES ('李彦柏', '弘梅小学-蔷薇校区', '一年级', '二班', 2);
INSERT INTO `punch2` VALUES ('李宇洁', '双江小学', '一年级', '一班', 2);
INSERT INTO `punch2` VALUES ('李泽旭', '塘湾小学', '二年级', '七班', 2);
INSERT INTO `punch2` VALUES ('刘伯曦', '弘梅小学-蔷薇校区', '二年级', '一班', 2);
INSERT INTO `punch2` VALUES ('卢坤烁', '弘梅小学-蔷薇校区', '一年级', '一班', 2);
INSERT INTO `punch2` VALUES ('卢惜蕊', '塘湾小学', '一年级', '九班', 2);
INSERT INTO `punch2` VALUES ('陆露', '塘湾小学', '一年级', '七班', 2);
INSERT INTO `punch2` VALUES ('罗依辰', '塘湾小学', '一年级', '四班', 2);
INSERT INTO `punch2` VALUES ('罗智贤', '马桥小学', '二年级', '八班', 2);
INSERT INTO `punch2` VALUES ('马 嫣 楠', '育苗小学', '二年级', '一班', 2);
INSERT INTO `punch2` VALUES ('马梦琪', '弘梅小学-曹行校区', '一年级', '五班', 2);
INSERT INTO `punch2` VALUES ('毛鑫怡', '双江小学', '一年级', '一班', 2);
INSERT INTO `punch2` VALUES ('潘欣怡', '浦江文馨学校', '二年级', '七班', 2);
INSERT INTO `punch2` VALUES ('彭宇星', '弘梅小学-曹行校区', '二年级', '一班', 2);
INSERT INTO `punch2` VALUES ('舒展', '弘梅二小-陇西校区', '一年级', '一班', 2);
INSERT INTO `punch2` VALUES ('唐文博', '马桥小学', '二年级', '六班', 2);
INSERT INTO `punch2` VALUES ('童福民', '弘梅小学-曹行校区', '一年级', '四班', 2);
INSERT INTO `punch2` VALUES ('王瀚晨', '马桥小学', '二年级', '二班', 2);
INSERT INTO `punch2` VALUES ('王昊轩', '育苗小学', '一年级', '二班', 2);
INSERT INTO `punch2` VALUES ('王浩辰', '山海小学', '二年级', '二班', 2);
INSERT INTO `punch2` VALUES ('王佳豪', '弘梅小学-曹行校区', '一年级', '四班', 2);
INSERT INTO `punch2` VALUES ('王俊豪', '塘湾小学', '一年级', '六班', 2);
INSERT INTO `punch2` VALUES ('王帅逢', '弘梅小学-曹行校区', '一年级', '五班', 2);
INSERT INTO `punch2` VALUES ('王鑫禹', '弘梅小学-曹行校区', '一年级', '三班', 2);
INSERT INTO `punch2` VALUES ('王泽霖', '浦江文馨学校', '一年级', '三班', 2);
INSERT INTO `punch2` VALUES ('魏欣雅', '弘梅小学-曹行校区', '二年级', '一班', 2);
INSERT INTO `punch2` VALUES ('吴昊', '弘梅小学-曹行校区', '二年级', '五班', 2);
INSERT INTO `punch2` VALUES ('吴炫', '浦江文馨学校', '一年级', '四班', 2);
INSERT INTO `punch2` VALUES ('吴梓涵', '马桥小学', '二年级', '二班', 2);
INSERT INTO `punch2` VALUES ('伍宏越', '塘湾小学', '一年级', '一班', 2);
INSERT INTO `punch2` VALUES ('武广', '育苗小学', '一年级', '二班', 2);
INSERT INTO `punch2` VALUES ('夏萌菲', '马桥小学', '二年级', '七班', 2);
INSERT INTO `punch2` VALUES ('夏鑫', '弘梅二小-陇西校区', '二年级', '三班', 2);
INSERT INTO `punch2` VALUES ('熊梓楦', '育苗小学', '二年级', '三班', 2);
INSERT INTO `punch2` VALUES ('徐诺一', '塘湾小学', '一年级', '四班', 2);
INSERT INTO `punch2` VALUES ('许先标', '浦江文馨学校', '一年级', '三班', 2);
INSERT INTO `punch2` VALUES ('杨佳璇', '弘梅二小-陇西校区', '一年级', '四班', 2);
INSERT INTO `punch2` VALUES ('姚君豪', '塘湾小学', '一年级', '一班', 2);
INSERT INTO `punch2` VALUES ('尹梓涵', '弘梅二小-陇西校区', '二年级', '一班', 2);
INSERT INTO `punch2` VALUES ('虞丹', '塘湾小学', '二年级', '五班', 2);
INSERT INTO `punch2` VALUES ('袁晨', '弘梅小学-曹行校区', '一年级', '三班', 2);
INSERT INTO `punch2` VALUES ('张铎', '浦江文馨学校', '二年级', '四班', 2);
INSERT INTO `punch2` VALUES ('张佳悦', '弘梅小学-曹行校区', '二年级', '五班', 2);
INSERT INTO `punch2` VALUES ('张思宇', '弘梅小学-曹行校区', '一年级', '三班', 2);
INSERT INTO `punch2` VALUES ('张鑫屹', '塘湾小学', '一年级', '六班', 2);
INSERT INTO `punch2` VALUES ('张雅茜', '杨东小学', '一年级', '三班', 2);
INSERT INTO `punch2` VALUES ('张宇杰', '弘梅二小-朱行校区', '二年级', '三班', 2);
INSERT INTO `punch2` VALUES ('张梓暄', '双江小学', '二年级', '一班', 2);
INSERT INTO `punch2` VALUES ('赵涵蕊', '马桥小学', '二年级', '三班', 2);
INSERT INTO `punch2` VALUES ('赵鹏飞', '马桥小学', '二年级', '八班', 2);
INSERT INTO `punch2` VALUES ('郑张颖', '弘梅二小-陇西校区', '一年级', '三班', 2);
INSERT INTO `punch2` VALUES ('郑忠韬', '弘梅小学-曹行校区', '二年级', '一班', 2);
INSERT INTO `punch2` VALUES ('周明阳', '塘湾小学', '一年级', '五班', 2);
INSERT INTO `punch2` VALUES ('朱传怡', '塘湾小学', '一年级', '六班', 2);
INSERT INTO `punch2` VALUES ('卞小允', '弘梅小学-曹行校区', '一年级', '三班', 1);
INSERT INTO `punch2` VALUES ('曾幼帅', '育苗小学', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('曾雨辰', '弘梅二小-陇西校区', '一年级', '四班', 1);
INSERT INTO `punch2` VALUES ('陈博文', '弘梅小学-曹行校区', '二年级', '三班', 1);
INSERT INTO `punch2` VALUES ('陈沪娟', '双江小学', '二年级', '一班', 1);
INSERT INTO `punch2` VALUES ('陈书涵', '杨东小学', '一年级', '一班', 1);
INSERT INTO `punch2` VALUES ('陈修杰', '浦江文馨学校', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('崔思语', '弘梅小学-曹行校区', '一年级', '四班', 1);
INSERT INTO `punch2` VALUES ('邓亚君', '弘梅小学-曹行校区', '一年级', '六班', 1);
INSERT INTO `punch2` VALUES ('段嘉豪', '双江小学', '一年级', '三班', 1);
INSERT INTO `punch2` VALUES ('樊雨彤', '弘梅小学-蔷薇校区', '一年级', '一班', 1);
INSERT INTO `punch2` VALUES ('方睿颖', '马桥小学', '一年级', '八班', 1);
INSERT INTO `punch2` VALUES ('耿俊琪', '弘梅二小-陇西校区', '一年级', '四班', 1);
INSERT INTO `punch2` VALUES ('虹梅小学二(2)班汤雨华', '弘梅小学-曹行校区', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('胡辰逸', '弘梅小学-蔷薇校区', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('胡佳奇', '塘湾小学', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('胡靓云', '弘梅小学-曹行校区', '一年级', '四班', 1);
INSERT INTO `punch2` VALUES ('胡谦龙', '浦江文馨学校', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('惠善妍', '弘梅小学-曹行校区', '一年级', '一班', 1);
INSERT INTO `punch2` VALUES ('贾孟昊。', '马桥小学', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('贾耀文', '弘梅小学-曹行校区', '二年级', '五班', 1);
INSERT INTO `punch2` VALUES ('姜思琪', '双江小学', '二年级', '四班', 1);
INSERT INTO `punch2` VALUES ('揭博驿', '弘梅二小-朱行校区', '二年级', '三班', 1);
INSERT INTO `punch2` VALUES ('李锦轩', '弘梅二小-陇西校区', '一年级', '一班', 1);
INSERT INTO `punch2` VALUES ('李珂', '弘梅小学-曹行校区', '一年级', '三班', 1);
INSERT INTO `punch2` VALUES ('李伟铭', '弘梅二小-陇西校区', '一年级', '一班', 1);
INSERT INTO `punch2` VALUES ('李雪', '育苗小学', '一年级', '三班', 1);
INSERT INTO `punch2` VALUES ('李云熙', '杨东小学', '二年级', '四班', 1);
INSERT INTO `punch2` VALUES ('李喆燊', '浦江文馨学校', '一年级', '三班', 1);
INSERT INTO `punch2` VALUES ('李杼涵', '塘湾小学', '二年级', '四班', 1);
INSERT INTO `punch2` VALUES ('林映璇', '杨东小学', '一年级', '二班', 1);
INSERT INTO `punch2` VALUES ('林泽楷', '塘湾小学', '二年级', '四班', 1);
INSERT INTO `punch2` VALUES ('刘春意', '双江小学', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('刘佳贺', '弘梅小学-蔷薇校区', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('刘君越', '弘梅二小-朱行校区', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('刘瑞祥', '弘梅二小-朱行校区', '二年级', '三班', 1);
INSERT INTO `punch2` VALUES ('刘伊凌', '双江小学', '二年级', '三班', 1);
INSERT INTO `punch2` VALUES ('刘梓宸', '山海小学', '一年级', '二班', 1);
INSERT INTO `punch2` VALUES ('罗心怡', '申华小学', '二年级', '一班', 1);
INSERT INTO `punch2` VALUES ('罗语熠', '育苗小学', '二年级', '三班', 1);
INSERT INTO `punch2` VALUES ('闵士源', '浦江文馨学校', '一年级', '三班', 1);
INSERT INTO `punch2` VALUES ('缪涵', '双江小学', '一年级', '二班', 1);
INSERT INTO `punch2` VALUES ('穆欣彤', '双江小学', '一年级', '二班', 1);
INSERT INTO `punch2` VALUES ('潘皓天', '弘梅小学-曹行校区', '一年级', '二班', 1);
INSERT INTO `punch2` VALUES ('潘有康', '弘梅小学-曹行校区', '一年级', '四班', 1);
INSERT INTO `punch2` VALUES ('潘玉', '塘湾小学', '一年级', '五班', 1);
INSERT INTO `punch2` VALUES ('裴语桐', '弘梅小学-蔷薇校区', '一年级', '一班', 1);
INSERT INTO `punch2` VALUES ('祁子豪', '弘梅二小-陇西校区', '二年级', '一班', 1);
INSERT INTO `punch2` VALUES ('邱语涵', '弘梅二小-朱行校区', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('沙博涛', '弘梅小学-曹行校区', '二年级', '六班', 1);
INSERT INTO `punch2` VALUES ('沈皓冉', '山海小学', '一年级', '三班', 1);
INSERT INTO `punch2` VALUES ('宋梓晨', '弘梅二小-陇西校区', '二年级', '四班', 1);
INSERT INTO `punch2` VALUES ('孙汉宇', '弘梅小学-曹行校区', '一年级', '三班', 1);
INSERT INTO `punch2` VALUES ('孙廉莉', '塘湾小学', '一年级', '九班', 1);
INSERT INTO `punch2` VALUES ('孙文修', '弘梅二小-陇西校区', '二年级', '三班', 1);
INSERT INTO `punch2` VALUES ('孙佑依', '塘湾小学', '一年级', '六班', 1);
INSERT INTO `punch2` VALUES ('田怡', '塘湾小学', '二年级', '七班', 1);
INSERT INTO `punch2` VALUES ('田易龙', '双江小学', '一年级', '一班', 1);
INSERT INTO `punch2` VALUES ('万锦辰', '双江小学', '一年级', '一班', 1);
INSERT INTO `punch2` VALUES ('万欣怡', '塘湾小学', '一年级', '九班', 1);
INSERT INTO `punch2` VALUES ('汪俊杰', '弘梅二小-陇西校区', '一年级', '四班', 1);
INSERT INTO `punch2` VALUES ('王海博', '育苗小学', '二年级', '一班', 1);
INSERT INTO `punch2` VALUES ('王湖钦', '双江小学', '二年级', '三班', 1);
INSERT INTO `punch2` VALUES ('王嘉怡', '马桥小学', '一年级', '六班', 1);
INSERT INTO `punch2` VALUES ('王若依', '弘梅二小-朱行校区', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('吴秉泽', '塘湾小学', '二年级', '四班', 1);
INSERT INTO `punch2` VALUES ('吴昊燃', '弘梅二小-朱行校区', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('吴凯锐', '浦江文馨学校', '二年级', '三班', 1);
INSERT INTO `punch2` VALUES ('吴一菲', '弘梅二小-陇西校区', '二年级', '一班', 1);
INSERT INTO `punch2` VALUES ('吴一涵', '弘梅小学-曹行校区', '一年级', '五班', 1);
INSERT INTO `punch2` VALUES ('吴卓妮', '马桥小学', '二年级', '八班', 1);
INSERT INTO `punch2` VALUES ('武君泽', '双江小学', '一年级', '一班', 1);
INSERT INTO `punch2` VALUES ('席陆远', '申华小学', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('向柏林', '育苗小学', '二年级', '三班', 1);
INSERT INTO `punch2` VALUES ('向飞宇', '弘梅二小-陇西校区', '一年级', '二班', 1);
INSERT INTO `punch2` VALUES ('谢疆懿', '弘梅二小-陇西校区', '一年级', '四班', 1);
INSERT INTO `punch2` VALUES ('徐瑞', '塘湾小学', '二年级', '五班', 1);
INSERT INTO `punch2` VALUES ('徐子昂', '弘梅小学-蔷薇校区', '二年级', '一班', 1);
INSERT INTO `punch2` VALUES ('许彦妮', '弘梅小学-曹行校区', '一年级', '六班', 1);
INSERT INTO `punch2` VALUES ('薛雨晨', '弘梅小学-曹行校区', '二年级', '六班', 1);
INSERT INTO `punch2` VALUES ('闫楚淇阅读', '塘湾小学', '二年级', '七班', 1);
INSERT INTO `punch2` VALUES ('杨安宁', '弘梅二小-朱行校区', '二年级', '三班', 1);
INSERT INTO `punch2` VALUES ('杨宝络', '弘梅二小-朱行校区', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('杨淳淏', '弘梅二小-陇西校区', '一年级', '四班', 1);
INSERT INTO `punch2` VALUES ('杨帆', '弘梅小学-曹行校区', '一年级', '六班', 1);
INSERT INTO `punch2` VALUES ('杨绵泽', '弘梅二小-陇西校区', '一年级', '二班', 1);
INSERT INTO `punch2` VALUES ('杨天泽', '弘梅二小-朱行校区', '一年级', '一班', 1);
INSERT INTO `punch2` VALUES ('杨洋', '弘梅小学-曹行校区', '一年级', '三班', 1);
INSERT INTO `punch2` VALUES ('姚浩轩', '弘梅小学-曹行校区', '一年级', '六班', 1);
INSERT INTO `punch2` VALUES ('姚伊', '弘梅小学-曹行校区', '二年级', '六班', 1);
INSERT INTO `punch2` VALUES ('叶青怡', '育苗小学', '二年级', '三班', 1);
INSERT INTO `punch2` VALUES ('余睿颖', '弘梅小学-曹行校区', '二年级', '五班', 1);
INSERT INTO `punch2` VALUES ('余天翔', '塘湾小学', '一年级', '一班', 1);
INSERT INTO `punch2` VALUES ('袁亚杰', '双江小学', '二年级', '四班', 1);
INSERT INTO `punch2` VALUES ('张晨', '马桥小学', '一年级', '六班', 1);
INSERT INTO `punch2` VALUES ('张鑫阳', '弘梅二小-陇西校区', '一年级', '二班', 1);
INSERT INTO `punch2` VALUES ('张雅琪', '弘梅小学-曹行校区', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('张岩', '杨东小学', '二年级', '二班', 1);
INSERT INTO `punch2` VALUES ('张政浩', '弘梅二小-陇西校区', '一年级', '四班', 1);
INSERT INTO `punch2` VALUES ('章依', '浦江文馨学校', '一年级', '二班', 1);
INSERT INTO `punch2` VALUES ('赵晨阳', '马桥小学', '一年级', '四班', 1);
INSERT INTO `punch2` VALUES ('赵佳婕', '弘梅小学-蔷薇校区', '二年级', '一班', 1);
INSERT INTO `punch2` VALUES ('赵申阳', '育苗小学', '一年级', '一班', 1);
INSERT INTO `punch2` VALUES ('赵怡燃', '塘湾小学', '二年级', '六班', 1);
INSERT INTO `punch2` VALUES ('赵子宁', '弘梅二小-陇西校区', '一年级', '三班', 1);
INSERT INTO `punch2` VALUES ('郑诗雨', '双江小学', '一年级', '三班', 1);
INSERT INTO `punch2` VALUES ('周婧怡', '山海小学', '一年级', '二班', 1);
INSERT INTO `punch2` VALUES ('周明宇', '塘湾小学', '二年级', '三班', 1);
INSERT INTO `punch2` VALUES ('周沐紫', '双江小学', '一年级', '一班', 1);
INSERT INTO `punch2` VALUES ('周舒怡', '山海小学', '一年级', '三班', 1);
INSERT INTO `punch2` VALUES ('周歆雨', '塘湾小学', '一年级', '四班', 1);
INSERT INTO `punch2` VALUES ('周馨宇', '杨东小学', '一年级', '三班', 1);
INSERT INTO `punch2` VALUES ('朱雨欣', '山海小学', '一年级', '二班', 1);
INSERT INTO `punch2` VALUES ('朱祖悦', '马桥小学', '二年级', '五班', 1);
INSERT INTO `punch2` VALUES ('卓瑞臻', '弘梅二小-陇西校区', '二年级', '一班', 1);
INSERT INTO `punch2` VALUES ('左善祺', '浦江文馨学校', '二年级', '四班', 1);
INSERT INTO `punch2` VALUES ('左逸俊', '育苗小学', '二年级', '一班', 1);

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school`  (
  `school_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `found_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_number` int(0) NULL DEFAULT NULL,
  `teacher_number` int(0) NULL DEFAULT NULL,
  `student_number` int(0) NULL DEFAULT NULL,
  `library` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contacter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contacter_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contacter_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `illustration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(0) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('鲁冰花幼儿园', '贵都路丰顺路645号76号', NULL, 8, 19, 364, NULL, '姚冲锋', 'yq709860925', NULL, NULL, NULL, 1);
INSERT INTO `school` VALUES ('中河幼儿园', '浦江镇芦胜村四组河桥西侧', NULL, 10, 20, 339, NULL, '吴从玲', '13764980127', NULL, NULL, NULL, 2);
INSERT INTO `school` VALUES ('小博士幼儿园', '吴北路66号', NULL, 14, 24, 490, NULL, '史勤伟', '13816442269', NULL, NULL, NULL, 3);
INSERT INTO `school` VALUES ('南塘幼儿园', '吴泾镇龙吴路4988号', NULL, 10, 33, 339, NULL, '鲍红娟', '13524062176', NULL, NULL, '(不合作）', 4);
INSERT INTO `school` VALUES ('文博幼儿园', '浦江镇勤劳村苏召路1699号', NULL, 12, 12, 424, NULL, '彭雅玲', '18202162757', '主任', NULL, NULL, 5);
INSERT INTO `school` VALUES ('苏民幼儿园', '浦江镇陈行公路1128号', NULL, 12, 24, 430, NULL, '来志荣\n', '18017721939', NULL, NULL, NULL, 6);
INSERT INTO `school` VALUES ('召楼幼儿园', '沈杜路128号', NULL, 15, 30, 556, NULL, '何琴', '13636690102', NULL, NULL, NULL, 7);
INSERT INTO `school` VALUES ('世纪幼儿园', '曹行金都路金都路810号', NULL, 22, 23, 856, NULL, '冯莉', '13901874001', NULL, NULL, NULL, 8);
INSERT INTO `school` VALUES ('丑小鸭幼儿园', '虹梅南路3509弄8号', NULL, 12, 25, 448, NULL, '杨佳', '15021056729', NULL, NULL, NULL, 9);
INSERT INTO `school` VALUES ('叮叮幼儿园', '七宝镇航中路618号', NULL, 12, 18, 460, NULL, '楼园', '13917828225', NULL, NULL, NULL, 10);
INSERT INTO `school` VALUES ('博苑幼儿园', '北翟路4855号', NULL, 12, 25, 420, NULL, '张雅君\n沈老师 ', '13681933501\n13482287764', '园长助理', NULL, NULL, 11);
INSERT INTO `school` VALUES ('红卫幼儿园', '华漕镇纪翟路2791号', NULL, 15, 39, 452, NULL, '沈腊梅', '18930671785', NULL, NULL, NULL, 12);
INSERT INTO `school` VALUES ('银露幼儿园', '华漕镇纪鹤路1号', NULL, 8, 18, 219, NULL, '荆春荣', '13636339813', NULL, NULL, '（年底拆)', 13);
INSERT INTO `school` VALUES ('梦哆啦幼儿园', '华腾公路与纪鹤公路交叉口北100米', NULL, 17, 24, 409, NULL, '刘园长', '60712118', NULL, NULL, NULL, 14);
INSERT INTO `school` VALUES ('航隆幼儿园', '华漕镇纪翟路2788号', NULL, 14, 14, 582, NULL, '柏桂香,聂老师', '13816914942,\n18516037939', '园长,保教主任', NULL, NULL, 15);
INSERT INTO `school` VALUES ('喜洋洋幼儿园', '华漕镇纪丰路99号', NULL, 10, 20, 298, NULL, '杨芝', '13601991229', NULL, NULL, '（已拆）', 16);
INSERT INTO `school` VALUES ('花朵幼儿园', '浦宁路88号', NULL, 10, 20, 380, NULL, '刘琴', '13761303679', NULL, NULL, NULL, 17);
INSERT INTO `school` VALUES ('贝蓓幼儿园', '吴泾镇龙吴路5411号', NULL, 14, 30, 529, NULL, '余鸿萍', '18964347335', '导教主任', NULL, NULL, 18);
INSERT INTO `school` VALUES ('爱嘉幼儿园', '浦江镇永颂440号', NULL, 13, 33, 546, NULL, '吴亚楠', '54849986,\n15800868104', '吴园长的女儿', NULL, NULL, 19);
INSERT INTO `school` VALUES ('皖苏幼儿园', '江川路1800号', NULL, 11, 17, 377, NULL, '唐芙蓉', '15821305283', NULL, NULL, NULL, 20);
INSERT INTO `school` VALUES ('行南幼儿园', '老沪闵路1488号', NULL, 12, 19, 470, NULL, '季巧', '15821152030', NULL, NULL, NULL, 21);
INSERT INTO `school` VALUES ('华宁路幼儿园', '华宁路40号', NULL, 12, 24, 324, NULL, '施建珍', '18918025926', NULL, NULL, NULL, 22);
INSERT INTO `school` VALUES ('莘庄金贝贝幼儿园', '莘沥路551号', NULL, 12, 24, 374, NULL, '何志贤', '13764598057', NULL, NULL, NULL, 23);
INSERT INTO `school` VALUES ('宝华幼儿园', '闵行区吴中路2625号', NULL, 7, 14, 234, NULL, '朋菊萍', '13818549422', NULL, NULL, '(已关闭）', 24);
INSERT INTO `school` VALUES ('华漕希望幼儿园', '南华街45号', NULL, 12, 12, 480, NULL, '岳风英', '021-52210672 ', NULL, NULL, '（不合作）', 25);
INSERT INTO `school` VALUES ('春苗幼儿园', '华漕红卫村孙家宅58号', NULL, 7, 9, 245, NULL, '徐艳华', '13012851234', NULL, NULL, NULL, 26);
INSERT INTO `school` VALUES ('碧城联明幼儿园', '中春路7155弄68支弄', NULL, 11, 22, 339, NULL, '柳建珍', '13916026086', NULL, NULL, NULL, 27);
INSERT INTO `school` VALUES ('东兰路幼儿园', '龙茗路1706号301室', NULL, 7, 10, 175, NULL, '周红花', '13761873538', NULL, NULL, NULL, 28);
INSERT INTO `school` VALUES ('嘉臣金宝贝幼儿园（有需要再打电话给我们）', '东兰路228号-10号', NULL, 10, 22, 380, NULL, '张梨萍', '18301704623', NULL, NULL, NULL, 29);
INSERT INTO `school` VALUES ('金盛幼儿园', '都庄路4226号4栋', NULL, 10, 12, 247, NULL, '周红花', '13761873538', NULL, NULL, NULL, 30);
INSERT INTO `school` VALUES ('沪川幼儿园', '虹中路115号1号楼3楼', NULL, 14, 26, 468, NULL, '翰咏梅', '13917694106', NULL, NULL, NULL, 31);
INSERT INTO `school` VALUES ('吴泾贝儿幼儿园', NULL, NULL, NULL, NULL, NULL, NULL, '陈雷', '15216700374', NULL, NULL, '（请示董事长）', 32);

-- ----------------------------
-- Table structure for staff_estimate
-- ----------------------------
DROP TABLE IF EXISTS `staff_estimate`;
CREATE TABLE `staff_estimate`  (
  `school_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `focus_co_school
focus_co_school
focus_co_school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `willing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for survey
-- ----------------------------
DROP TABLE IF EXISTS `survey`;
CREATE TABLE `survey`  (
  `school_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `period` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_data` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end_data` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for visit
-- ----------------------------
DROP TABLE IF EXISTS `visit`;
CREATE TABLE `visit`  (
  `time` datetime(0) NULL DEFAULT NULL,
  `personnel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `docking` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `need_follow` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
