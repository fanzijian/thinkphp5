/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : tp5

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-12-12 18:54:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yunzhi_course
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_course`;
CREATE TABLE `yunzhi_course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `teacher_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_course
-- ----------------------------
INSERT INTO `yunzhi_course` VALUES ('1', '黄老师心理学讲座', '1', '3', '1476057600', '0');
INSERT INTO `yunzhi_course` VALUES ('2', '田老师心理学讲座', '2', '3', '1476057600', '0');

-- ----------------------------
-- Table structure for yunzhi_course_behavior_result
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_course_behavior_result`;
CREATE TABLE `yunzhi_course_behavior_result` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `course_schedule_id` int(11) DEFAULT NULL,
  `stu_id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `behavior_type` tinyint(4) NOT NULL,
  `behavior_time` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_course_behavior_result
-- ----------------------------
INSERT INTO `yunzhi_course_behavior_result` VALUES ('1', '1', '1', '15', '1', '1', '0', '100', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('2', '1', '1', '15', '1', '2', '100', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('3', '1', '1', '15', '1', '3', '110', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('4', '1', '1', '15', '1', '4', '120', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('5', '1', '1', '15', '1', '1', '130', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('6', '1', '1', '15', '1', '2', '135', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('7', '1', '1', '15', '1', '3', '140', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('8', '1', '1', '15', '1', '4', '145', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('9', '1', '1', '14', '1', '1', '0', '100', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('10', '1', '1', '14', '1', '2', '100', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('11', '1', '1', '14', '1', '3', '110', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('12', '1', '1', '14', '1', '4', '120', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('13', '1', '1', '14', '1', '1', '130', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('14', '1', '1', '14', '1', '2', '135', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('15', '1', '1', '14', '1', '3', '140', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('16', '1', '1', '14', '1', '4', '145', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('17', '1', '1', '10', '1', '1', '0', '100', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('18', '1', '1', '10', '1', '2', '100', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('19', '1', '1', '10', '1', '3', '110', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('20', '1', '1', '10', '1', '4', '120', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('21', '1', '1', '10', '1', '1', '130', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('22', '1', '1', '10', '1', '2', '135', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('23', '1', '1', '10', '1', '3', '140', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('24', '1', '1', '10', '1', '4', '145', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('25', '2', '1', '9', '3', '2', '200', '60', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('26', '2', '1', '9', '3', '1', '270', '20', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('27', '2', '1', '9', '3', '3', '290', '40', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('28', '2', '1', '9', '3', '4', '340', '80', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('29', '2', '1', '9', '3', '3', '420', '100', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('30', '2', '1', '9', '3', '2', '520', '20', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('31', '2', '1', '9', '3', '4', '540', '300', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('32', '2', '1', '7', '3', '1', '10', '60', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('33', '2', '1', '7', '3', '3', '100', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('34', '2', '1', '7', '3', '2', '110', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('35', '2', '1', '7', '3', '4', '120', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('36', '2', '1', '7', '3', '2', '130', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('37', '2', '1', '7', '3', '3', '135', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('38', '2', '1', '7', '3', '1', '140', '5', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_course_result
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_course_result`;
CREATE TABLE `yunzhi_course_result` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `course_schedule_id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `hand_up` int(11) NOT NULL,
  `stand_up` int(11) NOT NULL,
  `sleep_on_desk` int(11) NOT NULL,
  `participation_degree` float(11,2) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `updata_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_course_result
-- ----------------------------
INSERT INTO `yunzhi_course_result` VALUES ('1', '1', '1', '1', '1', '4', '3', '1', '0.83', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('2', '1', '1', '2', '1', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('3', '1', '1', '3', '1', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('4', '1', '1', '4', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('5', '1', '1', '5', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('6', '1', '1', '6', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('7', '1', '1', '7', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('8', '1', '1', '8', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('9', '1', '1', '9', '2', '9', '9', '9', '0.90', '9', '9');
INSERT INTO `yunzhi_course_result` VALUES ('10', '1', '1', '10', '3', '5', '3', '2', '0.81', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('11', '1', '1', '11', '3', '6', '2', '1', '0.87', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('12', '1', '1', '12', '3', '3', '3', '1', '0.42', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('13', '1', '1', '13', '2', '2', '1', '3', '0.21', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('14', '1', '1', '14', '2', '4', '2', '2', '0.32', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('15', '1', '1', '15', '2', '6', '4', '2', '0.74', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('16', '1', '1', '16', '1', '6', '3', '3', '0.71', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('17', '1', '1', '17', '1', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('18', '1', '1', '18', '3', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('19', '1', '1', '19', '3', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('20', '1', '1', '20', '3', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('23', '1', '1', '23', '1', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('24', '1', '1', '24', '1', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('25', '1', '1', '25', '1', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('26', '1', '1', '26', '1', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('27', '1', '1', '27', '1', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('28', '1', '1', '28', '1', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('29', '1', '1', '29', '1', '9', '9', '9', '0.90', '9', '9');
INSERT INTO `yunzhi_course_result` VALUES ('30', '1', '1', '30', '1', '5', '3', '2', '0.81', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('31', '1', '1', '31', '1', '6', '2', '1', '0.87', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('32', '1', '1', '32', '1', '3', '3', '1', '0.42', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('33', '1', '1', '33', '1', '2', '1', '3', '0.21', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('34', '1', '1', '34', '1', '4', '2', '2', '0.32', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('35', '1', '1', '35', '1', '6', '4', '2', '0.74', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('36', '1', '1', '36', '1', '6', '3', '3', '0.71', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('37', '1', '1', '37', '1', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('38', '1', '1', '38', '1', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('39', '1', '1', '39', '1', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('40', '1', '1', '40', '1', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('41', '1', '1', '41', '1', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('42', '1', '1', '42', '1', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('43', '1', '1', '43', '1', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('44', '1', '1', '44', '1', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('45', '1', '1', '45', '1', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('46', '1', '4', '1', '2', '4', '3', '1', '0.83', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('47', '1', '4', '2', '2', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('48', '1', '4', '3', '2', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('49', '1', '4', '4', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('50', '1', '4', '5', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('51', '1', '4', '6', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('52', '1', '4', '7', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('53', '1', '4', '8', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('54', '1', '4', '9', '2', '9', '9', '9', '0.90', '9', '9');
INSERT INTO `yunzhi_course_result` VALUES ('55', '1', '4', '10', '2', '5', '3', '2', '0.81', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('56', '1', '4', '11', '2', '6', '2', '1', '0.87', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('57', '1', '4', '12', '2', '3', '3', '1', '0.42', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('58', '1', '4', '13', '2', '2', '1', '3', '0.21', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('59', '1', '4', '14', '2', '4', '2', '2', '0.32', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('60', '1', '4', '15', '2', '6', '4', '2', '0.74', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('61', '1', '4', '16', '2', '6', '3', '3', '0.71', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('62', '1', '4', '17', '2', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('63', '1', '4', '18', '2', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('64', '1', '4', '19', '2', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('65', '1', '4', '20', '2', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('66', '1', '4', '21', '2', '4', '3', '1', '0.83', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('67', '1', '4', '22', '2', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('68', '1', '4', '23', '2', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('69', '1', '4', '24', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('70', '1', '4', '25', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('71', '1', '4', '26', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('72', '1', '4', '27', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('73', '1', '4', '28', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('74', '1', '4', '29', '2', '9', '9', '9', '0.90', '9', '9');
INSERT INTO `yunzhi_course_result` VALUES ('75', '1', '4', '30', '2', '5', '3', '2', '0.81', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('76', '1', '4', '31', '2', '6', '2', '1', '0.87', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('77', '1', '4', '32', '2', '3', '3', '1', '0.42', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('78', '1', '4', '33', '2', '2', '1', '3', '0.21', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('79', '1', '4', '34', '2', '4', '2', '2', '0.32', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('80', '1', '4', '35', '2', '6', '4', '2', '0.74', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('81', '1', '4', '36', '2', '6', '3', '3', '0.71', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('82', '1', '4', '37', '2', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('83', '1', '4', '38', '2', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('84', '1', '4', '39', '2', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('85', '1', '4', '40', '2', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('86', '1', '4', '41', '2', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('87', '1', '4', '42', '2', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('88', '1', '4', '43', '2', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('89', '1', '4', '44', '2', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('90', '1', '4', '45', '2', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('91', '1', '7', '1', '3', '4', '3', '1', '0.83', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('92', '1', '7', '2', '3', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('93', '1', '7', '3', '3', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('94', '1', '7', '4', '3', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('95', '1', '7', '5', '3', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('96', '1', '7', '6', '3', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('97', '1', '7', '7', '3', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('98', '1', '7', '8', '3', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('99', '1', '7', '9', '3', '9', '9', '9', '0.90', '9', '9');
INSERT INTO `yunzhi_course_result` VALUES ('100', '1', '7', '10', '3', '5', '3', '2', '0.81', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('101', '1', '7', '11', '3', '6', '2', '1', '0.87', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('102', '1', '7', '12', '3', '3', '3', '1', '0.42', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('103', '1', '7', '13', '3', '2', '1', '3', '0.21', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('104', '1', '7', '14', '3', '4', '2', '2', '0.32', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('105', '1', '7', '15', '3', '6', '4', '2', '0.74', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('106', '1', '7', '16', '3', '6', '3', '3', '0.71', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('107', '1', '7', '17', '3', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('108', '1', '7', '18', '3', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('109', '1', '7', '19', '3', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('110', '1', '7', '20', '3', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('111', '1', '7', '21', '3', '4', '3', '1', '0.83', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('112', '1', '7', '22', '3', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('113', '1', '7', '23', '3', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('114', '1', '7', '24', '3', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('115', '1', '7', '25', '3', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('116', '1', '7', '26', '3', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('117', '1', '7', '27', '3', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('118', '1', '7', '28', '3', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('119', '1', '7', '29', '3', '9', '9', '9', '0.90', '9', '9');
INSERT INTO `yunzhi_course_result` VALUES ('120', '1', '7', '30', '3', '5', '3', '2', '0.81', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('121', '1', '7', '31', '3', '6', '2', '1', '0.87', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('122', '1', '7', '32', '3', '3', '3', '1', '0.42', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('123', '1', '7', '33', '3', '2', '1', '3', '0.21', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('124', '1', '7', '34', '3', '4', '2', '2', '0.32', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('125', '1', '7', '35', '3', '6', '4', '2', '0.74', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('126', '1', '7', '36', '3', '6', '3', '3', '0.71', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('127', '1', '7', '37', '3', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('128', '1', '7', '38', '3', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('129', '1', '7', '39', '3', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('130', '1', '7', '40', '3', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('131', '1', '7', '41', '3', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('132', '1', '7', '42', '3', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('133', '1', '7', '43', '3', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('134', '1', '7', '44', '3', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('135', '1', '7', '45', '3', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('136', '1', '10', '1', '4', '4', '3', '1', '0.83', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('137', '1', '10', '2', '4', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('138', '1', '10', '3', '4', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('139', '1', '10', '4', '4', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('140', '1', '10', '5', '4', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('141', '1', '10', '6', '4', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('142', '1', '10', '7', '4', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('143', '1', '10', '8', '4', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('144', '1', '10', '9', '4', '9', '9', '9', '0.90', '9', '9');
INSERT INTO `yunzhi_course_result` VALUES ('145', '1', '10', '10', '4', '5', '3', '2', '0.81', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('146', '1', '10', '11', '4', '6', '2', '1', '0.87', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('147', '1', '10', '12', '4', '3', '3', '1', '0.42', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('148', '1', '10', '13', '4', '2', '1', '3', '0.21', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('149', '1', '10', '14', '4', '4', '2', '2', '0.32', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('150', '1', '10', '15', '4', '6', '4', '2', '0.74', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('151', '1', '10', '16', '4', '6', '3', '3', '0.71', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('152', '1', '10', '17', '4', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('153', '1', '10', '18', '4', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('154', '1', '10', '19', '4', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('155', '1', '10', '20', '4', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('156', '1', '10', '21', '4', '4', '3', '1', '0.83', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('157', '1', '10', '22', '4', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('158', '1', '10', '23', '4', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('159', '1', '10', '24', '4', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('160', '1', '10', '25', '4', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('161', '1', '10', '26', '4', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('162', '1', '10', '27', '4', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('163', '1', '10', '28', '4', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('164', '1', '10', '29', '4', '9', '9', '9', '0.90', '9', '9');
INSERT INTO `yunzhi_course_result` VALUES ('165', '1', '10', '30', '4', '5', '3', '2', '0.81', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('166', '1', '10', '31', '4', '6', '2', '1', '0.87', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('167', '1', '10', '32', '4', '3', '3', '1', '0.42', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('168', '1', '10', '33', '4', '2', '1', '3', '0.21', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('169', '1', '10', '34', '4', '4', '2', '2', '0.32', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('170', '1', '10', '35', '4', '6', '4', '2', '0.74', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('171', '1', '10', '36', '4', '6', '3', '3', '0.71', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('172', '1', '10', '37', '4', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('173', '1', '10', '38', '4', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('174', '1', '10', '39', '4', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('175', '1', '10', '40', '4', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('176', '1', '10', '41', '4', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('177', '1', '10', '42', '4', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('178', '1', '10', '43', '4', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('179', '1', '10', '44', '4', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('180', '1', '10', '45', '4', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('181', '1', '13', '1', '5', '4', '3', '1', '0.83', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('182', '1', '13', '2', '5', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('183', '1', '13', '3', '5', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('184', '1', '13', '4', '5', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('185', '1', '13', '5', '5', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('186', '1', '13', '6', '5', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('187', '1', '13', '7', '5', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('188', '1', '13', '8', '5', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('189', '1', '13', '9', '5', '9', '9', '9', '0.90', '9', '9');
INSERT INTO `yunzhi_course_result` VALUES ('190', '1', '13', '10', '5', '5', '3', '2', '0.81', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('191', '1', '13', '11', '5', '6', '2', '1', '0.87', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('192', '1', '13', '12', '5', '3', '3', '1', '0.42', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('193', '1', '13', '13', '5', '2', '1', '3', '0.21', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('194', '1', '13', '14', '5', '4', '2', '2', '0.32', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('195', '1', '13', '15', '5', '6', '4', '2', '0.74', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('196', '1', '13', '16', '5', '6', '3', '3', '0.71', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('197', '1', '13', '17', '5', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('198', '1', '13', '18', '5', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('199', '1', '13', '19', '5', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('200', '1', '13', '20', '5', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('201', '1', '13', '21', '5', '4', '3', '1', '0.83', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('202', '1', '13', '22', '5', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('203', '1', '13', '23', '5', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('204', '1', '13', '24', '5', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('205', '1', '13', '25', '5', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('206', '1', '13', '26', '5', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('207', '1', '13', '27', '5', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('208', '1', '13', '28', '5', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('209', '1', '13', '29', '5', '9', '9', '9', '0.90', '9', '9');
INSERT INTO `yunzhi_course_result` VALUES ('210', '1', '13', '30', '5', '5', '3', '2', '0.81', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('211', '1', '13', '31', '5', '6', '2', '1', '0.87', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('212', '1', '13', '32', '5', '3', '3', '1', '0.42', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('213', '1', '13', '33', '5', '2', '1', '3', '0.21', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('214', '1', '13', '34', '5', '4', '2', '2', '0.32', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('215', '1', '13', '35', '5', '6', '4', '2', '0.74', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('216', '1', '13', '36', '5', '6', '3', '3', '0.71', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('217', '1', '13', '37', '5', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('218', '1', '13', '38', '5', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('219', '1', '13', '39', '5', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('220', '1', '13', '40', '5', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('221', '1', '13', '41', '5', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('222', '1', '13', '42', '5', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('223', '1', '13', '43', '5', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('224', '1', '13', '44', '5', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('225', '1', '13', '45', '5', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('226', '1', '16', '1', '6', '4', '3', '1', '0.83', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('227', '1', '16', '2', '6', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('228', '1', '16', '3', '6', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('229', '1', '16', '4', '6', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('230', '1', '16', '5', '6', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('231', '1', '16', '6', '6', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('232', '1', '16', '7', '6', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('233', '1', '16', '8', '6', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('234', '1', '16', '9', '6', '9', '9', '9', '0.90', '9', '9');
INSERT INTO `yunzhi_course_result` VALUES ('235', '1', '16', '10', '6', '5', '3', '2', '0.81', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('236', '1', '16', '11', '6', '6', '2', '1', '0.87', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('237', '1', '16', '12', '6', '3', '3', '1', '0.42', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('238', '1', '16', '13', '6', '2', '1', '3', '0.21', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('239', '1', '16', '14', '6', '4', '2', '2', '0.32', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('240', '1', '16', '15', '6', '6', '4', '2', '0.74', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('241', '1', '16', '16', '6', '6', '3', '3', '0.71', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('242', '1', '16', '17', '6', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('243', '1', '16', '18', '6', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('244', '1', '16', '19', '6', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('245', '1', '16', '20', '6', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('246', '1', '16', '21', '6', '4', '3', '1', '0.83', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('247', '1', '16', '22', '6', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('248', '1', '16', '23', '6', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('249', '1', '16', '24', '6', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('250', '1', '16', '25', '6', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('251', '1', '16', '26', '6', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('252', '1', '16', '27', '6', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('253', '1', '16', '28', '6', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('254', '1', '16', '29', '6', '9', '9', '9', '0.90', '9', '9');
INSERT INTO `yunzhi_course_result` VALUES ('255', '1', '16', '30', '6', '5', '3', '2', '0.81', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('256', '1', '16', '31', '6', '6', '2', '1', '0.87', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('257', '1', '16', '32', '6', '3', '3', '1', '0.42', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('258', '1', '16', '33', '6', '2', '1', '3', '0.21', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('259', '1', '16', '34', '6', '4', '2', '2', '0.32', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('260', '1', '16', '35', '6', '6', '4', '2', '0.74', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('261', '1', '16', '36', '6', '6', '3', '3', '0.71', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('262', '1', '16', '37', '6', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('263', '1', '16', '38', '6', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('264', '1', '16', '39', '6', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('265', '1', '16', '40', '6', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('266', '1', '16', '41', '6', '2', '1', '5', '0.15', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('267', '1', '16', '42', '6', '2', '4', '6', '0.25', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('268', '1', '16', '43', '6', '1', '1', '5', '0.09', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('269', '1', '16', '44', '6', '2', '2', '1', '0.18', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('270', '1', '16', '45', '6', '2', '2', '1', '0.18', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_course_schedule
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_course_schedule`;
CREATE TABLE `yunzhi_course_schedule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_course_schedule
-- ----------------------------
INSERT INTO `yunzhi_course_schedule` VALUES ('1', '1', '1', '1', '', '0', '200', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('2', '1', '1', '2', '', '0', '0', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('3', '1', '1', '3', '', '0', '0', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('4', '1', '2', '1', '', '0', '0', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('5', '1', '2', '2', '', '0', '0', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('6', '1', '2', '3', '', '0', '0', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('7', '1', '3', '1', '', '0', '0', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('8', '1', '3', '2', '', '0', '0', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('9', '1', '3', '3', '', '0', '0', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('10', '2', '1', '1', '', '0', '0', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('11', '2', '1', '2', '', '0', '0', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('12', '2', '1', '3', '', '0', '0', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('13', '2', '2', '1', '', '0', '0', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('14', '2', '2', '2', '', '0', '0', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('15', '2', '2', '3', '', '0', '0', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('16', '2', '3', '1', '', '0', '0', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('17', '2', '3', '2', '', '0', '0', '1', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('18', '2', '3', '3', '', '0', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_exam
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_exam`;
CREATE TABLE `yunzhi_exam` (
  `id` int(40) unsigned NOT NULL AUTO_INCREMENT,
  `paper_id` int(40) NOT NULL,
  `course_schedule_id` int(40) NOT NULL,
  `exam_time` datetime DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_exam
-- ----------------------------
INSERT INTO `yunzhi_exam` VALUES ('1', '1', '1', '2016-10-15 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('2', '1', '2', '2016-10-15 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('3', '1', '3', '2016-10-15 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('4', '2', '4', '2016-10-16 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('5', '2', '5', '2016-10-16 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('6', '2', '6', '2016-10-16 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('7', '3', '7', '2016-10-22 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('8', '3', '8', '2016-10-22 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('9', '3', '9', '2016-10-22 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('10', '4', '10', '2016-10-23 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('11', '4', '11', '2016-10-23 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('12', '4', '12', '2016-10-23 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('13', '5', '13', '2016-10-29 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('14', '5', '14', '2016-10-29 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('15', '5', '15', '2016-10-29 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('16', '6', '16', '2016-10-30 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('17', '6', '17', '2016-10-30 00:00:00', null, null);
INSERT INTO `yunzhi_exam` VALUES ('18', '6', '18', '2016-10-30 00:00:00', null, null);

-- ----------------------------
-- Table structure for yunzhi_exam_process
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_exam_process`;
CREATE TABLE `yunzhi_exam_process` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `minute` int(11) NOT NULL,
  `question_num` int(11) NOT NULL,
  `question_finish_rate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_exam_process
-- ----------------------------

-- ----------------------------
-- Table structure for yunzhi_exam_result
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_exam_result`;
CREATE TABLE `yunzhi_exam_result` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `accuracy` float(5,2) DEFAULT NULL,
  `duration_total` int(8) DEFAULT NULL,
  `duration_average` float(8,4) DEFAULT NULL,
  `visit_average` float(8,4) DEFAULT NULL,
  `fastest_question` int(11) DEFAULT NULL,
  `slowest_question` int(11) DEFAULT NULL,
  `rank_accuracy` int(11) DEFAULT NULL,
  `rank_speed` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_exam_result
-- ----------------------------
INSERT INTO `yunzhi_exam_result` VALUES ('1', '1', '1', '0.80', '147', '29.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('2', '2', '1', '0.60', '105', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('3', '3', '1', '0.80', '86', '17.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('4', '4', '1', '0.60', '128', '26.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('5', '5', '1', '1.00', '105', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('6', '6', '1', '0.60', '119', '24.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('7', '7', '1', '0.20', '246', '49.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('8', '8', '1', '0.00', '0', '0.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('9', '9', '1', '0.80', '60', '12.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('10', '10', '1', '0.40', '114', '23.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('11', '11', '1', '1.00', '149', '30.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('12', '12', '1', '0.80', '95', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('13', '13', '1', '0.60', '233', '47.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('14', '14', '1', '0.60', '82', '16.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('15', '15', '1', '0.80', '171', '34.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('16', '16', '2', '1.00', '113', '23.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('17', '17', '2', '0.80', '54', '11.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('18', '18', '2', '0.60', '96', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('19', '19', '2', '0.80', '90', '18.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('20', '20', '2', '0.80', '187', '37.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('21', '21', '2', '0.80', '65', '13.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('22', '22', '2', '0.80', '111', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('23', '23', '2', '1.00', '112', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('24', '24', '2', '0.60', '93', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('25', '25', '2', '0.60', '52', '10.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('26', '26', '2', '0.60', '146', '29.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('27', '27', '2', '0.80', '131', '26.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('28', '28', '2', '0.80', '367', '73.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('29', '29', '2', '0.80', '112', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('30', '30', '2', '0.60', '76', '15.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('31', '31', '3', '0.80', '70', '14.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('32', '32', '3', '0.80', '88', '18.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('33', '33', '3', '0.80', '135', '27.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('34', '34', '3', '1.00', '91', '18.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('35', '35', '3', '1.00', '130', '26.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('36', '36', '3', '0.60', '98', '20.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('37', '37', '3', '0.80', '102', '20.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('38', '38', '3', '0.40', '87', '17.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('39', '39', '3', '0.60', '158', '32.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('40', '40', '3', '0.40', '104', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('41', '41', '3', '0.40', '163', '33.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('42', '42', '3', '0.60', '94', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('43', '43', '3', '0.80', '151', '30.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('44', '44', '3', '0.60', '119', '24.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('45', '45', '3', '0.80', '117', '23.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('46', '1', '4', '0.80', '112', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('47', '2', '4', '0.60', '93', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('48', '3', '4', '0.80', '247', '49.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('49', '4', '4', '0.80', '63', '13.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('50', '5', '4', '0.80', '119', '24.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('51', '6', '4', '0.60', '188', '38.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('52', '7', '4', '0.60', '167', '33.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('53', '8', '4', '0.80', '51', '10.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('54', '9', '4', '0.80', '54', '11.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('55', '10', '4', '0.60', '68', '14.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('56', '11', '4', '0.80', '73', '15.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('57', '12', '4', '0.80', '194', '39.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('58', '13', '4', '0.60', '151', '30.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('59', '14', '4', '0.60', '58', '12.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('60', '15', '4', '0.60', '62', '12.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('61', '16', '5', '0.80', '74', '15.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('62', '17', '5', '0.20', '76', '15.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('63', '18', '5', '0.60', '75', '15.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('64', '19', '5', '0.80', '106', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('65', '20', '5', '0.80', '106', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('66', '21', '5', '0.80', '104', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('67', '22', '5', '0.60', '122', '24.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('68', '23', '5', '0.80', '106', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('69', '24', '5', '0.60', '172', '34.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('70', '25', '5', '1.00', '110', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('71', '26', '5', '0.80', '125', '25.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('72', '27', '5', '1.00', '71', '14.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('73', '28', '5', '0.80', '155', '31.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('74', '29', '5', '0.80', '164', '33.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('75', '30', '5', '0.80', '107', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('76', '31', '6', '0.80', '24', '5.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('77', '32', '6', '0.80', '137', '27.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('78', '33', '6', '1.00', '109', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('79', '34', '6', '0.60', '103', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('80', '35', '6', '0.80', '77', '15.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('81', '36', '6', '0.80', '59', '12.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('82', '37', '6', '0.80', '112', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('83', '38', '6', '0.80', '78', '16.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('84', '39', '6', '0.40', '198', '40.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('85', '40', '6', '1.00', '90', '18.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('86', '41', '6', '0.80', '110', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('87', '42', '6', '0.60', '85', '17.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('88', '43', '6', '0.60', '262', '52.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('89', '44', '6', '0.80', '38', '8.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('90', '45', '6', '0.80', '101', '20.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('91', '1', '7', '0.80', '147', '29.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('92', '2', '7', '0.60', '105', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('93', '3', '7', '0.80', '86', '17.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('94', '4', '7', '0.60', '128', '26.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('95', '5', '7', '1.00', '105', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('96', '6', '7', '0.60', '119', '24.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('97', '7', '7', '0.20', '246', '49.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('98', '8', '7', '0.00', '0', '0.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('99', '9', '7', '0.80', '60', '12.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('100', '10', '7', '0.40', '114', '23.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('101', '11', '7', '1.00', '149', '30.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('102', '12', '7', '0.80', '95', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('103', '13', '7', '0.60', '233', '47.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('104', '14', '7', '0.60', '82', '16.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('105', '15', '7', '0.80', '171', '34.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('106', '16', '8', '1.00', '113', '23.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('107', '17', '8', '0.80', '54', '11.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('108', '18', '8', '0.60', '96', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('109', '19', '8', '0.80', '90', '18.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('110', '20', '8', '0.80', '187', '37.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('111', '21', '8', '0.80', '65', '13.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('112', '22', '8', '0.80', '111', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('113', '23', '8', '1.00', '112', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('114', '24', '8', '0.60', '93', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('115', '25', '8', '0.60', '52', '10.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('116', '26', '8', '0.60', '146', '29.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('117', '27', '8', '0.80', '131', '26.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('118', '28', '8', '0.80', '367', '73.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('119', '29', '8', '0.80', '112', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('120', '30', '8', '0.60', '76', '15.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('121', '31', '9', '0.80', '70', '14.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('122', '32', '9', '0.80', '88', '18.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('123', '33', '9', '0.80', '135', '27.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('124', '34', '9', '1.00', '91', '18.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('125', '35', '9', '1.00', '130', '26.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('126', '36', '9', '0.60', '98', '20.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('127', '37', '9', '0.80', '102', '20.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('128', '38', '9', '0.40', '87', '17.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('129', '39', '9', '0.60', '158', '32.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('130', '40', '9', '0.40', '104', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('131', '41', '9', '0.40', '163', '33.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('132', '42', '9', '0.60', '94', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('133', '43', '9', '0.80', '151', '30.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('134', '44', '9', '0.60', '119', '24.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('135', '45', '9', '0.80', '117', '23.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('136', '1', '10', '0.80', '147', '29.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('137', '2', '10', '0.60', '105', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('138', '3', '10', '0.80', '86', '17.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('139', '4', '10', '0.60', '128', '26.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('140', '5', '10', '1.00', '105', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('141', '6', '10', '0.60', '119', '24.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('142', '7', '10', '0.20', '246', '49.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('143', '8', '10', '0.00', '0', '0.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('144', '9', '10', '0.80', '60', '12.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('145', '10', '10', '0.40', '114', '23.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('146', '11', '10', '1.00', '149', '30.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('147', '12', '10', '0.80', '95', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('148', '13', '10', '0.60', '233', '47.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('149', '14', '10', '0.60', '82', '16.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('150', '15', '10', '0.80', '171', '34.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('151', '16', '11', '1.00', '113', '23.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('152', '17', '11', '0.80', '54', '11.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('153', '18', '11', '0.60', '96', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('154', '19', '11', '0.80', '90', '18.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('155', '20', '11', '0.80', '187', '37.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('156', '21', '11', '0.80', '65', '13.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('157', '22', '11', '0.80', '111', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('158', '23', '11', '1.00', '112', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('159', '24', '11', '0.60', '93', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('160', '25', '11', '0.60', '52', '10.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('161', '26', '11', '0.60', '146', '29.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('162', '27', '11', '0.80', '131', '26.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('163', '28', '11', '0.80', '367', '73.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('164', '29', '11', '0.80', '112', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('165', '30', '11', '0.60', '76', '15.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('166', '31', '12', '0.80', '70', '14.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('167', '32', '12', '0.80', '88', '18.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('168', '33', '12', '0.80', '135', '27.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('169', '34', '12', '1.00', '91', '18.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('170', '35', '12', '1.00', '130', '26.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('171', '36', '12', '0.60', '98', '20.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('172', '37', '12', '0.80', '102', '20.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('173', '38', '12', '0.40', '87', '17.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('174', '39', '12', '0.60', '158', '32.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('175', '40', '12', '0.40', '104', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('176', '41', '12', '0.40', '163', '33.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('177', '42', '12', '0.60', '94', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('178', '43', '12', '0.80', '151', '30.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('179', '44', '12', '0.60', '119', '24.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('180', '45', '12', '0.80', '117', '23.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('181', '1', '13', '0.80', '147', '29.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('182', '2', '13', '0.60', '105', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('183', '3', '13', '0.80', '86', '17.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('184', '4', '13', '0.60', '128', '26.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('185', '5', '13', '1.00', '105', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('186', '6', '13', '0.60', '119', '24.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('187', '7', '13', '0.20', '246', '49.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('188', '8', '13', '0.00', '0', '0.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('189', '9', '13', '0.80', '60', '12.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('190', '10', '13', '0.40', '114', '23.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('191', '11', '13', '1.00', '149', '30.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('192', '12', '13', '0.80', '95', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('193', '13', '13', '0.60', '233', '47.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('194', '14', '13', '0.60', '82', '16.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('195', '15', '13', '0.80', '171', '34.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('196', '16', '14', '1.00', '113', '23.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('197', '17', '14', '0.80', '54', '11.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('198', '18', '14', '0.60', '96', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('199', '19', '14', '0.80', '90', '18.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('200', '20', '14', '0.80', '187', '37.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('201', '21', '14', '0.80', '65', '13.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('202', '22', '14', '0.80', '111', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('203', '23', '14', '1.00', '112', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('204', '24', '14', '0.60', '93', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('205', '25', '14', '0.60', '52', '10.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('206', '26', '14', '0.60', '146', '29.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('207', '27', '14', '0.80', '131', '26.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('208', '28', '14', '0.80', '367', '73.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('209', '29', '14', '0.80', '112', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('210', '30', '14', '0.60', '76', '15.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('211', '31', '15', '0.80', '70', '14.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('212', '32', '15', '0.80', '88', '18.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('213', '33', '15', '0.80', '135', '27.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('214', '34', '15', '1.00', '91', '18.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('215', '35', '15', '1.00', '130', '26.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('216', '36', '15', '0.60', '98', '20.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('217', '37', '15', '0.80', '102', '20.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('218', '38', '15', '0.40', '87', '17.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('219', '39', '15', '0.60', '158', '32.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('220', '40', '15', '0.40', '104', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('221', '41', '15', '0.40', '163', '33.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('222', '42', '15', '0.60', '94', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('223', '43', '15', '0.80', '151', '30.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('224', '44', '15', '0.60', '119', '24.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('225', '45', '15', '0.80', '117', '23.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('226', '1', '16', '0.80', '147', '29.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('227', '2', '16', '0.60', '105', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('228', '3', '16', '0.80', '86', '17.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('229', '4', '16', '0.60', '128', '26.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('230', '5', '16', '1.00', '105', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('231', '6', '16', '0.60', '119', '24.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('232', '7', '16', '0.20', '246', '49.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('233', '8', '16', '0.00', '0', '0.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('234', '9', '16', '0.80', '60', '12.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('235', '10', '16', '0.40', '114', '23.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('236', '11', '16', '1.00', '149', '30.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('237', '12', '16', '0.80', '95', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('238', '13', '16', '0.60', '233', '47.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('239', '14', '16', '0.60', '82', '16.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('240', '15', '16', '0.80', '171', '34.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('241', '16', '17', '1.00', '113', '23.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('242', '17', '17', '0.80', '54', '11.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('243', '18', '17', '0.60', '96', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('244', '19', '17', '0.80', '90', '18.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('245', '20', '17', '0.80', '187', '37.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('246', '21', '17', '0.80', '65', '13.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('247', '22', '17', '0.80', '111', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('248', '23', '17', '1.00', '112', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('249', '24', '17', '0.60', '93', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('250', '25', '17', '0.60', '52', '10.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('251', '26', '17', '0.60', '146', '29.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('252', '27', '17', '0.80', '131', '26.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('253', '28', '17', '0.80', '367', '73.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('254', '29', '17', '0.80', '112', '22.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('255', '30', '17', '0.60', '76', '15.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('256', '31', '18', '0.80', '70', '14.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('257', '32', '18', '0.80', '88', '18.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('258', '33', '18', '0.80', '135', '27.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('259', '34', '18', '1.00', '91', '18.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('260', '35', '18', '1.00', '130', '26.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('261', '36', '18', '0.60', '98', '20.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('262', '37', '18', '0.80', '102', '20.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('263', '38', '18', '0.40', '87', '17.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('264', '39', '18', '0.60', '158', '32.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('265', '40', '18', '0.40', '104', '21.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('266', '41', '18', '0.40', '163', '33.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('267', '42', '18', '0.60', '94', '19.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('268', '43', '18', '0.80', '151', '30.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('269', '44', '18', '0.60', '119', '24.0000', null, null, null, null, null, null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('270', '45', '18', '0.80', '117', '23.0000', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for yunzhi_klass
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_klass`;
CREATE TABLE `yunzhi_klass` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '名称',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_klass
-- ----------------------------
INSERT INTO `yunzhi_klass` VALUES ('1', '实验1班', '0', '1466493790');
INSERT INTO `yunzhi_klass` VALUES ('2', '实验2班', '0', '0');
INSERT INTO `yunzhi_klass` VALUES ('3', '实验3班', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_klass_course
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_klass_course`;
CREATE TABLE `yunzhi_klass_course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `klass_id` int(11) unsigned NOT NULL,
  `course_schedule_id` int(11) unsigned NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_klass_course
-- ----------------------------
INSERT INTO `yunzhi_klass_course` VALUES ('1', '1', '1', '0', '0');
INSERT INTO `yunzhi_klass_course` VALUES ('2', '2', '2', '0', '0');
INSERT INTO `yunzhi_klass_course` VALUES ('3', '3', '3', '0', '0');
INSERT INTO `yunzhi_klass_course` VALUES ('4', '1', '4', '0', '0');
INSERT INTO `yunzhi_klass_course` VALUES ('5', '2', '5', '0', '0');
INSERT INTO `yunzhi_klass_course` VALUES ('6', '3', '6', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_klass_course_copy
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_klass_course_copy`;
CREATE TABLE `yunzhi_klass_course_copy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `klass_id` int(11) unsigned NOT NULL,
  `course_schedule_id` int(11) unsigned NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_klass_course_copy
-- ----------------------------
INSERT INTO `yunzhi_klass_course_copy` VALUES ('1', '1', '1', '0', '0');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('2', '2', '2', '0', '0');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('3', '3', '3', '0', '0');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('4', '1', '4', '0', '0');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('5', '2', '5', '0', '0');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('6', '3', '6', '0', '0');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('7', '1', '7', '0', '0');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('8', '2', '8', '0', '0');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('9', '3', '9', '0', '0');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('10', '1', '10', '0', '0');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('11', '2', '11', '0', '0');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('12', '3', '12', '1', '1');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('13', '1', '13', '2', '2');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('14', '2', '14', '3', '3');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('15', '3', '15', '0', '0');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('16', '1', '16', '0', '0');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('17', '2', '17', '0', '0');
INSERT INTO `yunzhi_klass_course_copy` VALUES ('18', '3', '18', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_knowledge_point
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_knowledge_point`;
CREATE TABLE `yunzhi_knowledge_point` (
  `id` int(11) NOT NULL,
  `knowledge_name` varchar(40) NOT NULL,
  `knowledge_seq` int(11) NOT NULL,
  `difficulty` int(11) NOT NULL,
  `start_minute` int(11) NOT NULL,
  `end_minute` int(11) NOT NULL,
  `course_schedule_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_knowledge_point
-- ----------------------------
INSERT INTO `yunzhi_knowledge_point` VALUES ('1', '强化', '1', '1', '1', '3', '1');

-- ----------------------------
-- Table structure for yunzhi_learn
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_learn`;
CREATE TABLE `yunzhi_learn` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `course_schedule_id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `place` varchar(40) NOT NULL,
  `day` date NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_learn
-- ----------------------------
INSERT INTO `yunzhi_learn` VALUES ('1', '基础心理学', '1', '0', '', '0000-00-00', '1476691444', '1476694140', '0', '0');
INSERT INTO `yunzhi_learn` VALUES ('2', '社会心理学', '2', '0', '', '0000-00-00', '1476662520', '1476664920', '0', '0');
INSERT INTO `yunzhi_learn` VALUES ('3', '发展心理学', '3', '0', '', '0000-00-00', '1476664200', '1476667800', '0', '0');
INSERT INTO `yunzhi_learn` VALUES ('4', '咨询心理学', '4', '0', '', '0000-00-00', '1476926100', '1476929400', '0', '0');
INSERT INTO `yunzhi_learn` VALUES ('5', '教育心理学', '5', '0', '', '0000-00-00', '1477267800', '1477275000', '0', '0');
INSERT INTO `yunzhi_learn` VALUES ('6', '微积分', '6', '0', '', '0000-00-00', '1476691444', '1476694140', '0', '0');
INSERT INTO `yunzhi_learn` VALUES ('7', '概率论', '7', '0', '', '0000-00-00', '1476662520', '1476664920', '0', '0');
INSERT INTO `yunzhi_learn` VALUES ('8', '随机过程', '8', '0', '', '0000-00-00', '1476664200', '1476667800', '0', '0');
INSERT INTO `yunzhi_learn` VALUES ('9', '矩阵论', '9', '0', '', '0000-00-00', '1476926100', '1476929400', '0', '0');
INSERT INTO `yunzhi_learn` VALUES ('10', '近现代史', '10', '0', '', '0000-00-00', '1477267800', '1477275000', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_learn_behavior_result
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_learn_behavior_result`;
CREATE TABLE `yunzhi_learn_behavior_result` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NOT NULL,
  `learn_id` int(11) NOT NULL,
  `behavior_type` tinyint(6) NOT NULL,
  `behavior_time` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_learn_behavior_result
-- ----------------------------
INSERT INTO `yunzhi_learn_behavior_result` VALUES ('1', '15', '1', '1', '1476692164', '0', '0');
INSERT INTO `yunzhi_learn_behavior_result` VALUES ('2', '12', '2', '2', '1476663123', '0', '0');
INSERT INTO `yunzhi_learn_behavior_result` VALUES ('3', '11', '3', '3', '1476665167', '0', '0');
INSERT INTO `yunzhi_learn_behavior_result` VALUES ('4', '24', '4', '3', '1476927103', '1', '1');
INSERT INTO `yunzhi_learn_behavior_result` VALUES ('5', '22', '5', '2', '1477271804', '2', '2');
INSERT INTO `yunzhi_learn_behavior_result` VALUES ('6', '5', '6', '1', '1476692164', '3', '3');
INSERT INTO `yunzhi_learn_behavior_result` VALUES ('7', '36', '7', '1', '1476663123', '4', '4');
INSERT INTO `yunzhi_learn_behavior_result` VALUES ('8', '42', '8', '3', '1476665167', '5', '5');
INSERT INTO `yunzhi_learn_behavior_result` VALUES ('9', '30', '9', '2', '1476927103', '6', '6');
INSERT INTO `yunzhi_learn_behavior_result` VALUES ('10', '9', '10', '1', '1477271804', '7', '7');

-- ----------------------------
-- Table structure for yunzhi_learn_pattern
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_learn_pattern`;
CREATE TABLE `yunzhi_learn_pattern` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NOT NULL,
  `learn_id` int(11) NOT NULL,
  `pattern` tinyint(6) NOT NULL,
  `pattern_begin_time` int(11) NOT NULL,
  `pattern_duration` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_learn_pattern
-- ----------------------------
INSERT INTO `yunzhi_learn_pattern` VALUES ('1', '15', '1', '1', '1', '10', '0', '0');
INSERT INTO `yunzhi_learn_pattern` VALUES ('2', '15', '1', '2', '11', '9', '0', '0');
INSERT INTO `yunzhi_learn_pattern` VALUES ('3', '15', '1', '3', '20', '23', '0', '0');
INSERT INTO `yunzhi_learn_pattern` VALUES ('4', '12', '2', '2', '1', '24', '0', '0');
INSERT INTO `yunzhi_learn_pattern` VALUES ('5', '12', '2', '1', '25', '10', '0', '0');
INSERT INTO `yunzhi_learn_pattern` VALUES ('6', '12', '2', '3', '35', '20', '0', '0');
INSERT INTO `yunzhi_learn_pattern` VALUES ('7', '11', '3', '1', '1', '21', '0', '0');
INSERT INTO `yunzhi_learn_pattern` VALUES ('8', '11', '3', '2', '22', '14', '0', '0');
INSERT INTO `yunzhi_learn_pattern` VALUES ('9', '11', '3', '3', '36', '25', '0', '0');
INSERT INTO `yunzhi_learn_pattern` VALUES ('10', '24', '4', '2', '1', '18', '0', '0');
INSERT INTO `yunzhi_learn_pattern` VALUES ('11', '24', '4', '3', '19', '23', '0', '0');
INSERT INTO `yunzhi_learn_pattern` VALUES ('12', '24', '4', '1', '42', '17', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_learn_process
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_learn_process`;
CREATE TABLE `yunzhi_learn_process` (
  `id` int(11) NOT NULL,
  `learn_id` int(11) NOT NULL,
  `minute` int(11) NOT NULL,
  `content_type` int(11) NOT NULL,
  `attention_rate` float(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_learn_process
-- ----------------------------

-- ----------------------------
-- Table structure for yunzhi_learn_statistics
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_learn_statistics`;
CREATE TABLE `yunzhi_learn_statistics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `learn_id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `status_not_tired` float(8,4) NOT NULL,
  `status_tired` float(8,4) NOT NULL,
  `status_very_tired` float(8,4) NOT NULL,
  `key_content_1_duration` float(8,4) NOT NULL,
  `key_content_2_duration` float(8,4) NOT NULL,
  `key_content_3_duration` float(8,4) NOT NULL,
  `key_content_4_duration` float(8,4) NOT NULL,
  `key_content_5_duration` float(8,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_learn_statistics
-- ----------------------------
INSERT INTO `yunzhi_learn_statistics` VALUES ('1', '1', '1', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000');
INSERT INTO `yunzhi_learn_statistics` VALUES ('2', '1', '2', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000');
INSERT INTO `yunzhi_learn_statistics` VALUES ('3', '1', '3', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000');
INSERT INTO `yunzhi_learn_statistics` VALUES ('4', '1', '4', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000');

-- ----------------------------
-- Table structure for yunzhi_learn_status
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_learn_status`;
CREATE TABLE `yunzhi_learn_status` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NOT NULL,
  `learn_id` int(11) NOT NULL,
  `status` tinyint(6) NOT NULL,
  `status_begin_time` int(11) NOT NULL,
  `status_duration` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_learn_status
-- ----------------------------
INSERT INTO `yunzhi_learn_status` VALUES ('1', '15', '1', '1', '0', '10', '0', '0');
INSERT INTO `yunzhi_learn_status` VALUES ('2', '15', '1', '2', '10', '20', '0', '0');
INSERT INTO `yunzhi_learn_status` VALUES ('3', '15', '1', '3', '50', '20', '0', '0');
INSERT INTO `yunzhi_learn_status` VALUES ('4', '12', '2', '1', '0', '10', '0', '0');
INSERT INTO `yunzhi_learn_status` VALUES ('5', '12', '2', '2', '10', '20', '0', '0');
INSERT INTO `yunzhi_learn_status` VALUES ('6', '12', '2', '3', '50', '20', '0', '0');
INSERT INTO `yunzhi_learn_status` VALUES ('7', '11', '3', '1', '0', '10', '0', '0');
INSERT INTO `yunzhi_learn_status` VALUES ('8', '11', '3', '2', '10', '20', '0', '0');
INSERT INTO `yunzhi_learn_status` VALUES ('9', '11', '3', '3', '50', '20', '0', '0');
INSERT INTO `yunzhi_learn_status` VALUES ('10', '24', '4', '1', '0', '10', '0', '0');
INSERT INTO `yunzhi_learn_status` VALUES ('11', '24', '4', '2', '10', '20', '0', '0');
INSERT INTO `yunzhi_learn_status` VALUES ('12', '24', '4', '3', '50', '20', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_lesson_process
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_lesson_process`;
CREATE TABLE `yunzhi_lesson_process` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_schedule_id` int(11) NOT NULL,
  `minute` int(11) NOT NULL,
  `hand_up` int(11) NOT NULL,
  `sleep_on_desk` int(11) NOT NULL,
  `stand_up` int(11) NOT NULL,
  `stu_valid` int(11) NOT NULL,
  `activeness` float(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_lesson_process
-- ----------------------------
INSERT INTO `yunzhi_lesson_process` VALUES ('1', '1', '1', '8', '8', '8', '0', '1.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('2', '1', '2', '8', '8', '8', '0', '2.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('3', '1', '3', '0', '0', '0', '0', '31.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('4', '1', '4', '0', '0', '0', '0', '4.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('5', '1', '5', '8', '8', '8', '0', '0.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('6', '1', '6', '8', '8', '8', '0', '0.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('7', '1', '7', '0', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('8', '1', '8', '0', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('9', '1', '9', '8', '8', '8', '0', '0.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('10', '10', '15', '8', '8', '8', '0', '0.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('11', '11', '0', '0', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('12', '12', '0', '0', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('13', '13', '15', '8', '8', '8', '0', '0.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('14', '14', '15', '8', '8', '8', '0', '0.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('15', '15', '0', '0', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('16', '16', '0', '0', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('17', '17', '15', '8', '8', '8', '0', '0.00');
INSERT INTO `yunzhi_lesson_process` VALUES ('18', '18', '15', '8', '8', '8', '0', '0.00');

-- ----------------------------
-- Table structure for yunzhi_lesson_statistics
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_lesson_statistics`;
CREATE TABLE `yunzhi_lesson_statistics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_schedule_id` int(11) NOT NULL,
  `stu_total` int(11) NOT NULL,
  `stu_attendance` int(11) NOT NULL,
  `attendance_rate` float(8,4) NOT NULL,
  `hardest_question` int(11) NOT NULL,
  `average_duration_hardest` float(8,4) NOT NULL,
  `average_visit_hardest` float(8,4) NOT NULL,
  `accuracy_hardest` float(8,4) NOT NULL,
  `average_score` float(8,4) NOT NULL,
  `top_score` float(8,4) NOT NULL,
  `foot_score` float(8,4) NOT NULL,
  `average_question_visit` float(8,4) NOT NULL,
  `average_question_duration` float(8,4) NOT NULL,
  `average_accuracy` float(8,4) NOT NULL,
  `average_duration` float(8,4) NOT NULL,
  `hand_up` int(11) NOT NULL,
  `sleep_on_desk` int(11) NOT NULL,
  `stand_up` int(11) NOT NULL,
  `average_participation_degree` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_lesson_statistics
-- ----------------------------
INSERT INTO `yunzhi_lesson_statistics` VALUES ('1', '1', '15', '15', '100.0000', '1', '50.5000', '8.0000', '70.3000', '70.0000', '100.0000', '50.0000', '5.0000', '40.0000', '0.0000', '100.0000', '8', '8', '8', '3.67');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('2', '2', '15', '15', '100.0000', '1', '50.5000', '8.0000', '70.3000', '70.0000', '100.0000', '50.0000', '5.0000', '40.0000', '0.0000', '100.0000', '8', '8', '8', '3.67');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('3', '3', '0', '0', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '100.0000', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('4', '4', '0', '0', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '100.0000', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('5', '5', '15', '15', '100.0000', '1', '50.5000', '8.0000', '70.3000', '70.0000', '100.0000', '50.0000', '5.0000', '40.0000', '0.0000', '100.0000', '8', '8', '8', '3.67');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('6', '6', '15', '15', '100.0000', '1', '50.5000', '8.0000', '70.3000', '70.0000', '100.0000', '50.0000', '5.0000', '40.0000', '0.0000', '100.0000', '8', '8', '8', '3.67');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('7', '7', '0', '0', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '100.0000', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('8', '8', '0', '0', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '100.0000', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('9', '9', '15', '15', '100.0000', '1', '50.5000', '8.0000', '70.3000', '70.0000', '100.0000', '50.0000', '5.0000', '40.0000', '0.0000', '100.0000', '8', '8', '8', '3.67');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('10', '10', '15', '15', '100.0000', '1', '50.5000', '8.0000', '70.3000', '70.0000', '100.0000', '50.0000', '5.0000', '40.0000', '0.0000', '100.0000', '8', '8', '8', '3.67');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('11', '11', '0', '0', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '100.0000', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('12', '12', '0', '0', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '100.0000', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('13', '13', '15', '15', '100.0000', '1', '50.5000', '8.0000', '70.3000', '70.0000', '100.0000', '50.0000', '5.0000', '40.0000', '0.0000', '100.0000', '8', '8', '8', '3.67');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('14', '14', '15', '15', '100.0000', '1', '50.5000', '8.0000', '70.3000', '70.0000', '100.0000', '50.0000', '5.0000', '40.0000', '0.0000', '100.0000', '8', '8', '8', '3.67');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('15', '15', '0', '0', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '100.0000', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('16', '16', '0', '0', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '100.0000', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('17', '17', '15', '15', '100.0000', '1', '50.5000', '8.0000', '70.3000', '70.0000', '100.0000', '50.0000', '5.0000', '40.0000', '0.0000', '100.0000', '8', '8', '8', '3.67');
INSERT INTO `yunzhi_lesson_statistics` VALUES ('18', '18', '15', '15', '100.0000', '1', '50.5000', '8.0000', '70.3000', '70.0000', '100.0000', '50.0000', '5.0000', '40.0000', '0.0000', '100.0000', '8', '8', '8', '3.67');

-- ----------------------------
-- Table structure for yunzhi_lesson_stu_process
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_lesson_stu_process`;
CREATE TABLE `yunzhi_lesson_stu_process` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_schedule_id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `minute` int(11) NOT NULL,
  `hand_up` int(11) NOT NULL,
  `sleep_on_desk` int(11) NOT NULL,
  `stand_up` int(11) NOT NULL,
  `activeness` float(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_lesson_stu_process
-- ----------------------------
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('1', '1', '1', '1', '8', '8', '8', '1.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('2', '1', '1', '2', '8', '8', '8', '2.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('3', '1', '2', '1', '0', '0', '0', '31.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('4', '1', '2', '2', '0', '0', '0', '4.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('5', '1', '3', '1', '8', '8', '8', '0.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('6', '1', '3', '2', '8', '8', '8', '0.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('7', '1', '1', '3', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('8', '1', '2', '3', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('9', '1', '3', '3', '8', '8', '8', '0.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('10', '1', '0', '15', '8', '8', '8', '0.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('11', '1', '0', '0', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('12', '1', '0', '0', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('13', '1', '0', '15', '8', '8', '8', '0.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('14', '1', '0', '15', '8', '8', '8', '0.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('15', '1', '0', '0', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('16', '1', '0', '0', '0', '0', '0', '0.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('17', '1', '0', '15', '8', '8', '8', '0.00');
INSERT INTO `yunzhi_lesson_stu_process` VALUES ('18', '1', '0', '15', '8', '8', '8', '0.00');

-- ----------------------------
-- Table structure for yunzhi_manager
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_manager`;
CREATE TABLE `yunzhi_manager` (
  `id` int(40) NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '姓名',
  `password` varchar(40) NOT NULL,
  `school` varchar(40) NOT NULL,
  `photo_url` varchar(40) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0男，1女',
  `username` varchar(16) NOT NULL COMMENT '用户名',
  `email` varchar(30) DEFAULT '' COMMENT '邮箱',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_manager
-- ----------------------------
INSERT INTO `yunzhi_manager` VALUES ('1', '小李', '123456', '华中师范大学', '1.png', '1', 'M201571695', '1158534904@qq.com', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_paper
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_paper`;
CREATE TABLE `yunzhi_paper` (
  `id` int(40) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `teacher` int(11) DEFAULT NULL,
  `content` varchar(40) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_paper
-- ----------------------------
INSERT INTO `yunzhi_paper` VALUES ('1', '心理学第一次测试', null, null, null, null, null);
INSERT INTO `yunzhi_paper` VALUES ('2', '心理学第二次测试', null, null, null, null, null);
INSERT INTO `yunzhi_paper` VALUES ('3', '心理学第三次测试', null, null, null, null, null);
INSERT INTO `yunzhi_paper` VALUES ('4', '心理学第四次测试', null, null, null, null, null);
INSERT INTO `yunzhi_paper` VALUES ('5', '心理学第五次测试', null, null, null, null, null);
INSERT INTO `yunzhi_paper` VALUES ('6', '心理学第六次测试', null, null, null, null, null);

-- ----------------------------
-- Table structure for yunzhi_paper_question
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_paper_question`;
CREATE TABLE `yunzhi_paper_question` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `paper_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_paper_question
-- ----------------------------
INSERT INTO `yunzhi_paper_question` VALUES ('1', '1', '1', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('2', '1', '2', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('3', '1', '3', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('4', '1', '4', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('5', '1', '5', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('6', '2', '6', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('7', '2', '7', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('8', '2', '8', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('9', '2', '9', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('10', '2', '10', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('11', '3', '11', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('12', '3', '12', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('13', '3', '13', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('14', '3', '14', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('15', '3', '15', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('16', '4', '16', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('17', '4', '17', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('18', '4', '18', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('19', '4', '19', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('20', '4', '20', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('21', '4', '21', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('22', '4', '22', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('23', '4', '23', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('24', '4', '24', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('25', '4', '25', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('26', '5', '26', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('27', '5', '27', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('28', '5', '28', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('29', '5', '29', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('30', '5', '30', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('31', '5', '31', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('32', '5', '32', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('33', '5', '33', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('34', '6', '34', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('35', '6', '35', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('36', '6', '36', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('37', '6', '37', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('38', '6', '38', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('39', '6', '39', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('40', '6', '40', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('41', '6', '41', null, null);

-- ----------------------------
-- Table structure for yunzhi_paper_result
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_paper_result`;
CREATE TABLE `yunzhi_paper_result` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `paper_id` int(11) NOT NULL,
  `hardest_question` int(11) NOT NULL,
  `average_duration_hardest` float(8,4) NOT NULL,
  `average_visit_hardest` float(8,4) NOT NULL,
  `simplest_question` int(11) NOT NULL,
  `average_duration_simplest` float(8,4) NOT NULL,
  `average_visit_simplest` float(8,4) NOT NULL,
  `average_score` float(8,4) NOT NULL,
  `top_score` float(8,4) NOT NULL,
  `foot_score` float(8,4) NOT NULL,
  `average_question_visit` float(8,4) NOT NULL,
  `average_question_duration` float(8,4) NOT NULL,
  `average_accuracy` float(8,4) NOT NULL,
  `average_duration` float(8,4) NOT NULL,
  `CDF_10` float(8,4) NOT NULL,
  `CDF_30` float(8,4) NOT NULL,
  `CDF_50` float(8,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_paper_result
-- ----------------------------
INSERT INTO `yunzhi_paper_result` VALUES ('1', '1', '1', '50.5000', '8.0000', '0', '0.0000', '0.0000', '70.0000', '100.0000', '50.0000', '5.0000', '40.0000', '0.0000', '100.0000', '0.0000', '0.0000', '0.0000');
INSERT INTO `yunzhi_paper_result` VALUES ('2', '2', '1', '50.5000', '8.0000', '0', '0.0000', '0.0000', '70.0000', '100.0000', '50.0000', '5.0000', '40.0000', '0.0000', '100.0000', '0.0000', '0.0000', '0.0000');
INSERT INTO `yunzhi_paper_result` VALUES ('3', '3', '0', '0.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '100.0000', '0.0000', '0.0000', '0.0000');
INSERT INTO `yunzhi_paper_result` VALUES ('4', '4', '0', '0.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '100.0000', '0.0000', '0.0000', '0.0000');
INSERT INTO `yunzhi_paper_result` VALUES ('5', '5', '1', '50.5000', '8.0000', '0', '0.0000', '0.0000', '70.0000', '100.0000', '50.0000', '5.0000', '40.0000', '0.0000', '100.0000', '0.0000', '0.0000', '0.0000');
INSERT INTO `yunzhi_paper_result` VALUES ('6', '6', '1', '50.5000', '8.0000', '0', '0.0000', '0.0000', '70.0000', '100.0000', '50.0000', '5.0000', '40.0000', '0.0000', '100.0000', '0.0000', '0.0000', '0.0000');

-- ----------------------------
-- Table structure for yunzhi_question
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_question`;
CREATE TABLE `yunzhi_question` (
  `id` int(40) unsigned NOT NULL AUTO_INCREMENT,
  `title_url` varchar(40) DEFAULT NULL,
  `a_url` varchar(40) DEFAULT NULL,
  `b_url` varchar(40) DEFAULT NULL,
  `c_url` varchar(40) DEFAULT NULL,
  `d_url` varchar(40) DEFAULT NULL,
  `knowledge_point_id` int(11) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  `answer` varchar(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_question
-- ----------------------------
INSERT INTO `yunzhi_question` VALUES ('1', '1-Title.jpg', '1-A.jpg', '1-B.jpg', '1-C.jpg', '1-D.jpg', '1', null, 'A', null, null);
INSERT INTO `yunzhi_question` VALUES ('2', '2-Title.jpg', '2-A.jpg', '2-B.jpg', '2-C.jpg', '2-D.jpg', '1', null, 'B', null, null);
INSERT INTO `yunzhi_question` VALUES ('3', '3-Title.jpg', '3-A.jpg', '3-B.jpg', '3-C.jpg', '3-D.jpg', '1', null, '2', null, null);
INSERT INTO `yunzhi_question` VALUES ('4', '4-Title.jpg', '4-A.jpg', '4-B.jpg', '4-C.jpg', '4-D.jpg', null, null, '1', null, null);
INSERT INTO `yunzhi_question` VALUES ('5', '5-Title.jpg', '5-A.jpg', '5-B.jpg', '5-C.jpg', '5-D.jpg', null, null, '2', null, null);
INSERT INTO `yunzhi_question` VALUES ('6', '6-Title.jpg', '6-A.jpg', '6-B.jpg', '6-C.jpg', '6-D.jpg', null, null, '3', null, null);
INSERT INTO `yunzhi_question` VALUES ('7', '7-Title.jpg', '7-A.jpg', '7-B.jpg', '7-C.jpg', '7-D.jpg', null, null, '3', null, null);
INSERT INTO `yunzhi_question` VALUES ('8', '8-Title.jpg', '8-A.jpg', '8-B.jpg', '8-C.jpg', '8-D.jpg', null, null, '1', null, null);
INSERT INTO `yunzhi_question` VALUES ('9', '9-Title.jpg', '9-A.jpg', '9-B.jpg', '9-C.jpg', '9-D.jpg', null, null, '1', null, null);
INSERT INTO `yunzhi_question` VALUES ('10', '10-Title.jpg', '10-A.jpg', '10-B.jpg', '10-C.jpg', '10-D.jpg', null, null, '1', null, null);
INSERT INTO `yunzhi_question` VALUES ('11', '11-Title.jpg', '11-A.jpg', '11-B.jpg', '11-C.jpg', '11-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('12', '12-Title.jpg', '12-A.jpg', '12-B.jpg', '12-C.jpg', '12-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('13', '13-Title.jpg', '13-A.jpg', '13-B.jpg', '13-C.jpg', '13-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('14', '14-Title.jpg', '14-A.jpg', '14-B.jpg', '14-C.jpg', '14-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('15', '15-Title.jpg', '15-A.jpg', '15-B.jpg', '15-C.jpg', '15-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('16', '16-Title.jpg', '16-A.jpg', '16-B.jpg', '16-C.jpg', '16-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('17', '17-Title.jpg', '17-A.jpg', '17-B.jpg', '17-C.jpg', '17-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('18', '18-Title.jpg', '18-A.jpg', '18-B.jpg', '18-C.jpg', '18-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('19', '19-Title.jpg', '19-A.jpg', '19-B.jpg', '19-C.jpg', '19-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('20', '20-Title.jpg', '20-A.jpg', '20-B.jpg', '20-C.jpg', '20-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('21', '21-Title.jpg', '21-A.jpg', '21-B.jpg', '21-C.jpg', '21-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('22', '22-Title.jpg', '22-A.jpg', '22-B.jpg', '22-C.jpg', '22-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('23', '23-Title.jpg', '23-A.jpg', '23-B.jpg', '23-C.jpg', '23-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('24', '24-Title.jpg', '24-A.jpg', '24-B.jpg', '24-C.jpg', '24-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('25', '25-Title.jpg', '25-A.jpg', '25-B.jpg', '25-C.jpg', '25-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('26', '26-Title.jpg', '26-A.jpg', '26-B.jpg', '26-C.jpg', '26-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('27', '27-Title.jpg', '27-A.jpg', '27-B.jpg', '27-C.jpg', '27-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('28', '28-Title.jpg', '28-A.jpg', '28-B.jpg', '28-C.jpg', '28-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('29', '29-Title.jpg', '29-A.jpg', '29-B.jpg', '29-C.jpg', '29-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('30', '30-Title.jpg', '30-A.jpg', '30-B.jpg', '30-C.jpg', '30-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('31', '31-Title.jpg', '31-A.jpg', '31-B.jpg', '31-C.jpg', '31-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('32', '32-Title.jpg', '32-A.jpg', '32-B.jpg', '32-C.jpg', '32-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('33', '33-Title.jpg', '33-A.jpg', '33-B.jpg', '33-C.jpg', '33-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('34', '34-Title.jpg', '34-A.jpg', '34-B.jpg', '34-C.jpg', '34-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('35', '35-Title.jpg', '35-A.jpg', '35-B.jpg', '35-C.jpg', '35-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('36', '36-Title.jpg', '36-A.jpg', '36-B.jpg', '36-C.jpg', '36-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('37', '37-Title.jpg', '37-A.jpg', '37-B.jpg', '37-C.jpg', '37-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('38', '38-Title.jpg', '38-A.jpg', '38-B.jpg', '38-C.jpg', '38-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('39', '39-Title.jpg', '39-A.jpg', '39-B.jpg', '39-C.jpg', '39-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('40', '40-Title.jpg', '40-A.jpg', '40-B.jpg', '40-C.jpg', '40-D.jpg', null, null, null, null, null);
INSERT INTO `yunzhi_question` VALUES ('41', '41-Title.jpg', '41-A.jpg', '41-B.jpg', '41-C.jpg', '41-D.jpg', null, null, null, null, null);

-- ----------------------------
-- Table structure for yunzhi_question_analysis
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_question_analysis`;
CREATE TABLE `yunzhi_question_analysis` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `paper_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `average_duration` float(8,4) NOT NULL,
  `difficulty` float(8,4) NOT NULL,
  `average_duration_a` float(8,4) NOT NULL,
  `average_duration_b` float(8,4) NOT NULL,
  `average_duration_c` float(8,4) NOT NULL,
  `average_duration_d` float(8,4) NOT NULL,
  `average_duration_t` float(8,4) NOT NULL,
  `average_visit_a` float(8,4) NOT NULL,
  `average_visit_b` float(8,4) NOT NULL,
  `average_visit_c` float(8,4) NOT NULL,
  `average_visit_d` float(8,4) NOT NULL,
  `average_visit_t` float(8,4) NOT NULL,
  `option_discrimination` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_question_analysis
-- ----------------------------
INSERT INTO `yunzhi_question_analysis` VALUES ('1', '1', '1', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0');
INSERT INTO `yunzhi_question_analysis` VALUES ('2', '1', '2', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0');

-- ----------------------------
-- Table structure for yunzhi_question_result
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_question_result`;
CREATE TABLE `yunzhi_question_result` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer` varchar(20) DEFAULT NULL,
  `is_right` tinyint(2) DEFAULT NULL,
  `duration` int(10) DEFAULT NULL,
  `duration_a` decimal(4,2) DEFAULT NULL,
  `duration_b` decimal(4,2) DEFAULT NULL,
  `duration_c` decimal(4,2) DEFAULT NULL,
  `duration_d` decimal(4,2) DEFAULT NULL,
  `duration_others` decimal(4,2) DEFAULT NULL,
  `visit_count_a` int(11) DEFAULT NULL,
  `visit_count_b` int(11) DEFAULT NULL,
  `visit_count_c` int(11) DEFAULT NULL,
  `visit_count_d` int(11) DEFAULT NULL,
  `finish_time` int(11) DEFAULT NULL,
  `analysis_url` varchar(40) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_question_result
-- ----------------------------
INSERT INTO `yunzhi_question_result` VALUES ('1', '1', '1', '1', 'A,B', '1', '46', '2.66', '4.02', '9.51', '9.67', '68.75', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('2', '1', '1', '2', null, '1', '32', '7.81', '2.19', '12.81', '4.77', '69.45', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('3', '1', '1', '3', null, '0', '34', '1.32', '5.15', '10.96', '11.10', '70.44', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('4', '1', '1', '4', null, '1', '20', '6.50', '3.38', '11.25', '11.25', '65.88', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('5', '1', '1', '5', null, '1', '15', '5.67', '6.50', '18.67', '8.33', '59.17', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('6', '2', '1', '1', null, '1', '50', '3.25', '12.75', '7.85', '6.75', '46.45', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('7', '2', '1', '2', null, '1', '6', '3.75', '21.25', '7.92', '4.17', '27.08', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('8', '2', '1', '3', null, '0', '13', '4.81', '10.96', '3.65', '1.73', '29.42', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('9', '2', '1', '4', null, '0', '24', '4.90', '3.65', '10.10', '12.60', '52.40', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('10', '2', '1', '5', null, '1', '12', '4.17', '2.08', '12.08', '13.33', '67.71', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('11', '3', '1', '1', null, '1', '28', '3.57', '5.54', '8.39', '5.18', '72.95', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('12', '3', '1', '2', null, '1', '15', '6.83', '1.33', '12.50', '4.00', '65.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('13', '3', '1', '3', null, '0', '14', '6.25', '3.75', '8.04', '2.50', '71.61', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('14', '3', '1', '4', null, '1', '20', '4.63', '1.75', '7.00', '4.13', '74.88', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('15', '3', '1', '5', null, '1', '9', '11.39', '1.11', '11.11', '3.89', '68.06', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('16', '4', '1', '1', null, '1', '26', '5.29', '7.31', '4.13', '6.83', '67.88', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('17', '4', '1', '2', null, '1', '17', '8.97', '2.94', '21.47', '2.65', '48.97', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('18', '4', '1', '3', null, '0', '64', '10.08', '6.13', '7.34', '5.94', '65.35', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('19', '4', '1', '4', null, '0', '14', '8.93', '6.96', '6.96', '3.21', '66.61', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('20', '4', '1', '5', null, '1', '7', '13.57', '5.71', '20.00', '6.07', '49.29', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('21', '5', '1', '1', null, '1', '31', '0.16', '0.24', '4.27', '2.58', '92.10', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('22', '5', '1', '2', null, '1', '8', '0.00', '0.00', '9.06', '6.25', '84.69', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('23', '5', '1', '3', null, '1', '28', '0.18', '0.45', '0.63', '1.70', '96.88', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('24', '5', '1', '4', null, '1', '9', '0.83', '0.56', '7.50', '9.17', '81.39', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('25', '5', '1', '5', null, '1', '29', '0.78', '0.86', '5.86', '4.05', '88.10', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('26', '6', '1', '1', null, '0', '63', '1.15', '3.73', '0.95', '11.59', '80.12', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('27', '6', '1', '2', null, '1', '12', '1.67', '5.83', '8.96', '12.08', '64.38', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('28', '6', '1', '3', null, '0', '20', '0.50', '3.00', '3.50', '7.75', '84.75', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('29', '6', '1', '4', null, '1', '15', '0.67', '1.33', '2.00', '13.33', '81.00', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('30', '6', '1', '5', null, '1', '9', '0.28', '4.17', '11.67', '14.17', '68.89', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('31', '7', '1', '1', null, '0', '80', '3.22', '2.59', '7.28', '4.72', '79.19', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('32', '7', '1', '2', null, '0', '35', '7.93', '3.64', '3.21', '4.36', '76.07', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('33', '7', '1', '3', null, '0', '110', '3.36', '2.70', '1.89', '5.48', '77.20', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('34', '7', '1', '4', null, '0', '10', '3.50', '0.25', '10.50', '11.50', '73.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('35', '7', '1', '5', null, '1', '11', '4.55', '2.27', '17.73', '11.59', '63.41', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('36', '9', '1', '1', null, '1', '22', '0.80', '1.36', '0.91', '1.93', '94.77', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('37', '9', '1', '2', null, '1', '5', '0.50', '0.50', '1.50', '1.00', '96.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('38', '9', '1', '3', null, '0', '11', '0.00', '0.45', '0.00', '0.23', '99.32', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('39', '9', '1', '4', null, '1', '15', '0.17', '0.83', '0.33', '1.00', '97.67', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('40', '9', '1', '5', null, '1', '7', '0.71', '0.00', '0.00', '1.79', '97.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('41', '10', '1', '1', null, '1', '50', '2.50', '5.35', '3.55', '7.60', '69.70', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('42', '10', '1', '2', null, '0', '21', '5.83', '8.57', '11.07', '6.67', '59.76', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('43', '10', '1', '3', null, '0', '11', '5.23', '2.73', '5.00', '3.18', '75.00', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('44', '10', '1', '4', null, '0', '19', '4.61', '6.18', '8.29', '10.26', '63.42', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('45', '10', '1', '5', null, '1', '13', '12.12', '14.81', '9.81', '11.73', '40.77', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('46', '11', '1', '1', null, '1', '46', '5.71', '8.75', '4.18', '10.60', '58.80', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('47', '11', '1', '2', null, '1', '34', '12.43', '4.78', '10.37', '2.87', '63.53', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('48', '11', '1', '3', null, '1', '36', '2.92', '7.57', '2.71', '3.40', '72.01', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('49', '11', '1', '4', null, '1', '13', '2.88', '2.50', '6.73', '3.46', '65.38', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('50', '11', '1', '5', null, '1', '20', '10.25', '16.63', '14.12', '8.38', '48.00', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('51', '12', '1', '1', null, '1', '47', '0.05', '3.14', '2.55', '5.16', '86.49', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('52', '12', '1', '2', null, '1', '6', '2.08', '0.83', '2.50', '4.58', '89.58', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('53', '12', '1', '3', null, '0', '18', '0.42', '0.42', '0.56', '0.28', '98.19', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('54', '12', '1', '4', null, '1', '17', '0.59', '1.47', '0.29', '6.18', '90.44', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('55', '12', '1', '5', null, '1', '7', '0.00', '3.57', '2.50', '2.14', '88.93', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('56', '13', '1', '1', null, '0', '159', '3.76', '6.35', '3.07', '7.42', '69.43', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('57', '13', '1', '2', null, '1', '26', '7.79', '5.00', '10.87', '3.27', '63.37', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('58', '13', '1', '3', null, '0', '15', '7.50', '8.50', '3.83', '3.00', '36.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('59', '13', '1', '4', null, '1', '22', '14.77', '6.70', '8.64', '3.41', '40.11', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('60', '13', '1', '5', null, '1', '11', '9.77', '11.36', '15.91', '3.41', '42.73', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('61', '14', '1', '1', null, '1', '14', '1.96', '6.79', '1.43', '9.64', '75.54', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('62', '14', '1', '2', null, '1', '11', '2.27', '2.05', '6.82', '5.91', '81.59', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('63', '14', '1', '3', null, '0', '30', '1.67', '4.17', '3.75', '3.33', '80.92', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('64', '14', '1', '4', null, '0', '11', '1.82', '2.50', '11.59', '13.41', '66.59', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('65', '14', '1', '5', null, '1', '16', '5.00', '6.41', '19.84', '10.00', '50.47', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('66', '15', '1', '1', null, '1', '82', '2.77', '11.49', '4.94', '11.89', '59.36', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('67', '15', '1', '2', null, '1', '17', '8.82', '4.56', '13.97', '12.06', '47.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('68', '15', '1', '3', null, '1', '15', '3.00', '8.00', '11.83', '10.00', '58.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('69', '15', '1', '4', null, '1', '46', '8.15', '2.07', '15.38', '8.32', '58.80', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('70', '15', '1', '5', null, '0', '11', '11.14', '12.05', '22.27', '8.41', '34.32', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('71', '1', '1', '1', null, '1', '25', '1.90', '3.10', '6.80', '11.20', '73.90', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('72', '1', '1', '2', null, '1', '9', '3.06', '5.00', '9.72', '11.94', '68.61', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('73', '1', '1', '3', null, '1', '38', '3.55', '3.03', '3.88', '4.14', '75.59', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('74', '1', '1', '4', null, '1', '16', '4.22', '2.50', '11.25', '6.88', '68.44', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('75', '1', '1', '5', null, '1', '25', '9.20', '5.40', '6.50', '5.80', '54.90', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('76', '2', '1', '1', null, '1', '12', '1.88', '6.88', '8.13', '19.17', '60.83', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('77', '2', '1', '2', null, '1', '4', '5.00', '4.38', '0.63', '10.63', '67.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('78', '2', '1', '3', null, '0', '16', '19.69', '1.25', '10.00', '3.59', '56.09', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('79', '2', '1', '4', null, '1', '10', '7.75', '1.75', '10.25', '18.50', '51.00', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('80', '2', '1', '5', null, '1', '12', '7.08', '5.21', '28.75', '10.42', '38.54', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('81', '3', '1', '1', null, '1', '27', '5.00', '10.46', '6.39', '6.39', '46.39', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('82', '3', '1', '2', null, '1', '23', '8.70', '10.33', '11.41', '20.11', '45.65', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('83', '3', '1', '3', null, '0', '18', '6.94', '6.94', '6.25', '3.89', '47.78', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('84', '3', '1', '4', null, '0', '16', '7.19', '3.59', '9.38', '11.88', '60.78', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('85', '3', '1', '5', null, '1', '12', '6.67', '7.08', '24.17', '16.04', '40.63', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('86', '4', '1', '1', null, '1', '17', '1.91', '4.12', '5.44', '9.41', '76.62', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('87', '4', '1', '2', null, '1', '6', '5.42', '4.58', '10.00', '8.33', '67.92', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('88', '4', '1', '3', null, '0', '42', '5.30', '2.80', '11.55', '5.24', '73.75', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('89', '4', '1', '4', null, '1', '13', '2.69', '2.31', '14.62', '7.12', '72.31', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('90', '4', '1', '5', null, '1', '12', '14.17', '3.13', '16.46', '6.46', '50.42', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('91', '5', '1', '1', null, '1', '23', '12.61', '15.22', '3.48', '2.61', '13.59', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('92', '5', '1', '2', null, '1', '9', '10.00', '15.00', '20.00', '3.06', '6.11', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('93', '5', '1', '3', null, '0', '93', '3.79', '11.80', '1.69', '2.66', '21.83', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('94', '5', '1', '4', null, '1', '22', '12.27', '5.91', '3.52', '3.30', '9.20', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('95', '5', '1', '5', null, '1', '40', '9.00', '19.00', '18.69', '9.38', '37.44', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('96', '6', '1', '1', null, '1', '19', '3.16', '10.92', '3.95', '8.68', '69.34', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('97', '6', '1', '2', null, '1', '5', '12.00', '13.50', '10.00', '13.00', '47.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('98', '6', '1', '3', null, '0', '11', '3.64', '3.64', '10.45', '3.64', '66.14', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('99', '6', '1', '4', null, '1', '17', '6.62', '1.91', '12.94', '7.65', '67.94', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('100', '6', '1', '5', null, '1', '13', '9.62', '10.19', '6.54', '10.96', '51.54', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('101', '7', '1', '1', null, '1', '47', '14.36', '5.43', '8.09', '10.43', '53.62', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('102', '7', '1', '2', null, '1', '9', '15.28', '3.61', '11.39', '4.17', '46.39', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('103', '7', '1', '3', null, '0', '40', '6.56', '6.25', '4.25', '6.00', '63.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('104', '7', '1', '4', null, '1', '8', '22.50', '6.25', '5.00', '14.06', '45.63', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('105', '7', '1', '5', null, '1', '7', '11.79', '3.57', '10.71', '9.29', '41.07', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('106', '8', '1', '1', null, '1', '26', '1.73', '13.08', '1.73', '3.65', '26.83', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('107', '8', '1', '2', null, '1', '7', '8.21', '27.86', '6.43', '2.86', '31.43', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('108', '8', '1', '3', null, '1', '24', '6.25', '16.98', '4.06', '2.71', '47.29', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('109', '8', '1', '4', null, '1', '40', '7.94', '6.31', '4.19', '3.88', '36.88', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('110', '8', '1', '5', null, '1', '15', '19.17', '18.67', '5.83', '5.67', '17.00', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('111', '9', '1', '1', null, '1', '30', '3.25', '10.92', '5.92', '9.08', '63.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('112', '9', '1', '2', null, '0', '13', '8.65', '23.46', '21.92', '8.27', '31.92', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('113', '9', '1', '3', null, '0', '23', '8.37', '4.89', '4.02', '2.28', '73.04', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('114', '9', '1', '4', null, '1', '16', '9.38', '9.84', '12.19', '13.13', '46.88', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('115', '9', '1', '5', null, '1', '11', '5.00', '10.68', '19.77', '7.27', '54.32', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('116', '10', '1', '1', null, '1', '18', '4.72', '7.22', '12.36', '9.44', '53.47', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('117', '10', '1', '2', null, '1', '7', '3.93', '16.79', '14.64', '13.21', '48.57', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('118', '10', '1', '3', null, '0', '13', '5.96', '3.27', '7.88', '9.04', '69.23', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('119', '10', '1', '4', null, '0', '7', '2.14', '3.57', '13.57', '24.29', '54.29', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('120', '10', '1', '5', null, '1', '7', '9.64', '5.71', '18.93', '16.43', '47.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('121', '11', '1', '1', null, '1', '48', '1.41', '3.59', '3.23', '3.96', '82.92', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('122', '11', '1', '2', null, '1', '19', '4.08', '3.16', '5.39', '4.87', '76.58', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('123', '11', '1', '3', null, '0', '25', '5.60', '4.80', '5.80', '4.50', '75.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('124', '11', '1', '4', null, '0', '24', '5.83', '1.77', '11.88', '9.17', '62.29', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('125', '11', '1', '5', null, '1', '30', '8.33', '9.75', '12.00', '8.33', '55.83', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('126', '12', '1', '1', null, '1', '16', '1.41', '7.19', '4.69', '9.38', '77.34', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('127', '12', '1', '2', null, '1', '7', '8.21', '8.57', '3.93', '6.79', '72.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('128', '12', '1', '3', null, '0', '80', '3.03', '6.25', '7.50', '14.47', '63.75', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('129', '12', '1', '4', null, '1', '18', '3.47', '2.78', '12.92', '9.72', '67.64', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('130', '12', '1', '5', null, '1', '10', '2.25', '9.75', '12.00', '15.00', '53.25', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('131', '13', '1', '1', null, '1', '27', '0.28', '0.56', '1.30', '4.35', '92.69', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('132', '13', '1', '2', null, '0', '66', '0.68', '2.20', '3.48', '4.92', '88.22', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('133', '13', '1', '3', null, '1', '163', '0.34', '1.20', '1.87', '1.95', '93.73', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('134', '13', '1', '4', null, '1', '87', '2.24', '1.26', '3.22', '7.53', '84.57', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('135', '13', '1', '5', null, '1', '24', '1.98', '5.94', '6.98', '9.69', '75.21', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('136', '14', '1', '1', null, '1', '25', '5.40', '3.40', '3.80', '7.20', '73.70', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('137', '14', '1', '2', null, '1', '11', '6.82', '4.77', '10.23', '9.32', '50.23', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('138', '14', '1', '3', null, '0', '46', '8.59', '2.23', '7.07', '5.82', '59.95', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('139', '14', '1', '4', null, '1', '22', '15.91', '2.61', '8.30', '3.75', '51.82', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('140', '14', '1', '5', null, '1', '8', '10.94', '1.88', '15.63', '9.06', '50.00', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('141', '15', '1', '1', null, '1', '23', '3.59', '12.17', '2.93', '6.96', '61.63', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('142', '15', '1', '2', null, '1', '10', '10.50', '13.75', '4.75', '5.25', '53.75', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('143', '15', '1', '3', null, '0', '19', '6.71', '5.79', '0.66', '2.50', '58.95', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('144', '15', '1', '4', null, '0', '17', '8.38', '11.18', '5.00', '2.50', '38.09', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('145', '15', '1', '5', null, '1', '7', '9.64', '6.07', '10.00', '3.21', '34.29', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('146', '1', '1', '1', null, '1', '25', '0.70', '1.00', '4.00', '3.00', '89.20', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('147', '1', '1', '2', null, '1', '10', '1.00', '0.00', '4.25', '3.75', '91.00', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('148', '1', '1', '3', null, '0', '16', '0.47', '0.31', '3.28', '1.41', '93.91', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('149', '1', '1', '4', null, '1', '12', '2.71', '0.42', '3.96', '1.46', '91.46', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('150', '1', '1', '5', null, '1', '7', '2.86', '2.86', '3.21', '3.93', '86.43', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('151', '2', '1', '1', null, '1', '23', '0.98', '4.02', '3.37', '1.85', '87.72', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('152', '2', '1', '2', null, '1', '17', '1.47', '4.12', '14.26', '5.88', '72.65', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('153', '2', '1', '3', null, '0', '18', '1.81', '0.97', '2.50', '9.58', '83.89', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('154', '2', '1', '4', null, '1', '20', '2.25', '0.50', '2.50', '1.88', '92.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('155', '2', '1', '5', null, '1', '10', '2.00', '6.00', '1.25', '9.75', '80.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('156', '3', '1', '1', null, '1', '45', '5.17', '14.00', '8.11', '8.44', '49.28', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('157', '3', '1', '2', null, '0', '43', '8.14', '13.72', '16.63', '9.01', '40.06', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('158', '3', '1', '3', null, '1', '34', '5.96', '11.69', '6.47', '6.54', '49.93', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('159', '3', '1', '4', null, '1', '8', '10.00', '9.06', '13.44', '5.31', '49.69', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('160', '3', '1', '5', null, '1', '5', '7.50', '10.50', '11.50', '23.50', '30.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('161', '4', '1', '1', null, '1', '16', '6.72', '6.56', '4.38', '11.88', '65.00', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('162', '4', '1', '2', null, '1', '7', '8.57', '7.50', '5.71', '8.21', '56.43', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('163', '4', '1', '3', null, '1', '31', '12.42', '5.97', '6.37', '10.73', '54.76', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('164', '4', '1', '4', null, '1', '28', '15.54', '2.50', '11.96', '18.04', '42.86', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('165', '4', '1', '5', null, '1', '9', '12.78', '3.33', '8.06', '18.61', '39.44', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('166', '5', '1', '1', null, '1', '40', '1.38', '7.12', '6.44', '21.19', '63.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('167', '5', '1', '2', null, '1', '10', '4.25', '11.50', '13.50', '11.00', '59.75', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('168', '5', '1', '3', null, '1', '42', '2.32', '7.14', '3.21', '5.30', '79.82', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('169', '5', '1', '4', null, '1', '32', '3.75', '4.14', '9.77', '13.91', '67.58', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('170', '5', '1', '5', null, '1', '6', '6.67', '5.00', '14.17', '11.67', '50.00', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('171', '6', '1', '1', null, '1', '14', '3.21', '8.75', '6.43', '13.39', '66.96', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('172', '6', '1', '2', null, '1', '8', '0.94', '5.63', '11.88', '21.56', '60.00', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('173', '6', '1', '3', null, '0', '48', '2.40', '7.50', '6.09', '11.93', '69.90', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('174', '6', '1', '4', null, '0', '18', '3.47', '2.36', '10.00', '10.56', '72.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('175', '6', '1', '5', null, '1', '10', '0.00', '12.25', '13.00', '22.00', '52.25', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('176', '7', '1', '1', null, '1', '21', '2.86', '14.76', '1.43', '2.26', '55.83', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('177', '7', '1', '2', null, '1', '6', '10.42', '11.25', '5.83', '4.17', '40.42', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('178', '7', '1', '3', null, '0', '38', '6.12', '5.00', '4.28', '3.75', '60.13', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('179', '7', '1', '4', null, '1', '28', '10.27', '2.77', '9.46', '2.86', '44.29', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('180', '7', '1', '5', null, '1', '9', '5.83', '13.06', '18.61', '12.50', '36.94', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('181', '8', '1', '1', null, '0', '21', '5.71', '12.98', '4.29', '17.86', '45.71', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('182', '8', '1', '2', null, '1', '10', '3.50', '18.25', '7.25', '3.75', '51.75', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('183', '8', '1', '3', null, '0', '12', '7.29', '8.33', '7.71', '5.83', '52.92', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('184', '8', '1', '4', null, '0', '27', '5.00', '10.93', '8.89', '9.81', '50.28', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('185', '8', '1', '5', null, '1', '17', '11.18', '18.09', '7.21', '5.88', '41.32', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('186', '9', '1', '1', null, '1', '52', '1.49', '5.53', '6.30', '5.58', '78.27', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('187', '9', '1', '2', null, '1', '21', '2.38', '2.98', '12.02', '2.62', '78.33', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('188', '9', '1', '3', null, '0', '39', '2.12', '2.44', '3.97', '4.81', '84.23', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('189', '9', '1', '4', null, '1', '11', '3.64', '7.27', '11.14', '14.09', '63.64', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('190', '9', '1', '5', null, '0', '35', '3.07', '7.86', '6.93', '7.07', '74.64', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('191', '10', '1', '1', null, '1', '24', '0.94', '4.06', '8.65', '11.77', '70.94', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('192', '10', '1', '2', null, '0', '20', '4.75', '6.38', '21.25', '5.38', '58.63', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('193', '10', '1', '3', null, '0', '27', '3.06', '6.02', '6.11', '9.17', '73.70', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('194', '10', '1', '4', null, '0', '23', '2.61', '7.28', '9.24', '10.76', '68.70', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('195', '10', '1', '5', null, '1', '10', '11.50', '17.00', '17.75', '6.25', '42.75', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('196', '11', '1', '1', null, '0', '74', '4.73', '2.60', '2.53', '1.35', '84.32', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('197', '11', '1', '2', null, '0', '12', '6.67', '6.67', '8.96', '2.71', '67.50', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('198', '11', '1', '3', null, '0', '26', '6.44', '0.96', '4.81', '1.73', '81.44', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('199', '11', '1', '4', null, '1', '40', '7.94', '6.25', '5.25', '9.13', '68.31', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('200', '11', '1', '5', null, '1', '11', '1.82', '3.86', '16.36', '7.95', '67.27', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('201', '12', '1', '1', null, '1', '18', '3.06', '15.14', '5.42', '8.33', '48.06', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('202', '12', '1', '2', null, '1', '9', '6.67', '15.28', '8.33', '11.39', '45.00', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('203', '12', '1', '3', null, '0', '29', '6.90', '8.53', '1.12', '7.59', '52.84', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('204', '12', '1', '4', null, '0', '14', '6.96', '8.21', '8.57', '7.86', '42.14', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('205', '12', '1', '5', null, '1', '24', '11.88', '9.27', '18.85', '14.17', '38.96', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('206', '13', '1', '1', null, '1', '49', '1.73', '0.82', '0.82', '0.20', '91.33', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('207', '13', '1', '2', null, '1', '33', '4.85', '4.55', '2.05', '0.83', '84.24', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('208', '13', '1', '3', null, '0', '28', '4.11', '3.39', '0.63', '0.18', '84.29', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('209', '13', '1', '4', null, '1', '30', '4.00', '1.83', '2.92', '1.17', '88.83', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('210', '13', '1', '5', null, '1', '11', '3.18', '0.68', '0.91', '0.23', '91.14', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('211', '14', '1', '1', null, '1', '36', '2.22', '3.75', '3.47', '10.35', '75.49', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('212', '14', '1', '2', null, '1', '12', '4.17', '4.58', '5.00', '7.29', '73.33', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('213', '14', '1', '3', null, '0', '32', '2.34', '2.11', '6.64', '5.55', '79.61', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('214', '14', '1', '4', null, '0', '21', '1.90', '3.57', '8.57', '13.45', '72.26', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('215', '14', '1', '5', null, '1', '18', '2.64', '4.17', '11.94', '11.67', '68.75', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('216', '15', '1', '1', null, '1', '29', '2.84', '18.53', '5.95', '5.43', '55.60', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('217', '15', '1', '2', null, '0', '15', '8.17', '8.83', '16.33', '6.67', '48.17', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('218', '15', '1', '3', null, '1', '40', '3.88', '16.75', '7.50', '11.69', '56.00', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('219', '15', '1', '4', null, '1', '22', '11.59', '8.07', '5.91', '11.14', '59.55', null, null, null, null, null, '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('220', '15', '1', '5', null, '1', '11', '10.91', '12.73', '13.64', '18.86', '43.64', null, null, null, null, null, '', null, null);

-- ----------------------------
-- Table structure for yunzhi_resource
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_resource`;
CREATE TABLE `yunzhi_resource` (
  `id` int(11) NOT NULL,
  `course_schedule_id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `type` int(4) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_resource
-- ----------------------------
INSERT INTO `yunzhi_resource` VALUES ('1', '1', '1', '1', '\\thinkphp5\\public\\resource\\photo\\manager\\tobii.doc');

-- ----------------------------
-- Table structure for yunzhi_student
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_student`;
CREATE TABLE `yunzhi_student` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '����',
  `username` varchar(40) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL,
  `sex` tinyint(2) NOT NULL DEFAULT '0',
  `school` varchar(40) NOT NULL,
  `photo_url` varchar(40) NOT NULL,
  `klass_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(40) NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_student
-- ----------------------------
INSERT INTO `yunzhi_student` VALUES ('1', '程垦', 'M201601', '123456', '0', '华中科技大学', 'M201601.jpg', '1', '13164673497@163.com', '2016', '1480296126');
INSERT INTO `yunzhi_student` VALUES ('2', '陈雨露', 'M201602', '123456', '1', '华中师范大学', 'M201602.jpg', '1', '1158534904@qq.com', '0', '1478752427');
INSERT INTO `yunzhi_student` VALUES ('3', '崔耀燊', 'M201603', '123456', '0', '华中科技大学', 'M201603.jpg', '1', '13164673497@163.com', '0', '1478179359');
INSERT INTO `yunzhi_student` VALUES ('4', '杜艳芬', 'M201604', '123456', '1', '华中师范大学', 'M201604.jpg', '1', '13164673497@163.com', '0', '1478179359');
INSERT INTO `yunzhi_student` VALUES ('5', '赵錦涛', 'M201605', '123456', '0', '华中科技大学', 'M201605.jpg', '1', '13164673497@163.com', '0', '1478179359');
INSERT INTO `yunzhi_student` VALUES ('6', '贺丽灵', 'M201606', '123456', '1', '华中师范大学', 'M201606.jpg', '1', '13164673497@163.com', '0', '1478179359');
INSERT INTO `yunzhi_student` VALUES ('7', '徐建', 'M201607', '123456', '0', '华中科技大学', 'M201607.jpg', '1', '4', '0', '1478179359');
INSERT INTO `yunzhi_student` VALUES ('8', '胡妙', 'M201608', '123456', '1', '华中师范大学', 'M201608.jpg', '1', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('9', '刘旭东', 'M201609', '123456', '0', '华中科技大学', 'M201609.jpg', '1', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('10', '胡敏仪', 'M201610', '123456', '1', '华中师范大学', 'M201610.jpg', '1', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('11', '朱胜', 'M201611', '123456', '0', '华中科技大学', 'M201611.jpg', '1', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('12', '黄沛', 'M201612', '123456', '1', '华中师范大学', 'M201612.jpg', '1', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('13', '王何令', 'M201613', '123456', '0', '华中科技大学', 'M201613.jpg', '1', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('14', '姜川霞', 'M201614', '123456', '1', '华中师范大学', 'M201614.jpg', '1', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('15', '梁敏凤', 'M201615', '123456', '1', '华中师范大学', 'M201615.jpg', '1', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('16', '郭鹏', 'M201616', '123456', '0', '华中科技大学', 'M201616.jpg', '2', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('17', '李维颖', 'M201617', '123456', '1', '华中师范大学', '', '2', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('18', '刘开彦', 'M201618', '123456', '0', '华中科技大学', 'M201618.jpg', '2', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('19', '李颖祺', 'M201619', '123456', '1', '华中师范大学', 'M201619.jpg', '2', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('20', '刘鹏', 'M201620', '123456', '0', '华中科技大学', 'M201620.jpg', '2', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('21', '王翠翠', 'M201621', '123456', '1', '华中师范大学', 'M201621.jpg', '2', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('22', '刘双凌', 'M201622', '123456', '0', '华中科技大学', 'M201622.jpg', '2', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('23', '聂林蓉', 'M201623', '123456', '1', '华中师范大学', 'M201623.jpg', '2', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('24', '吴昊学', 'M201624', '123456', '0', '华中科技大学', 'M201624.jpg', '2', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('25', '潘思蓓', 'M201625', '123456', '1', '华中师范大学', 'M201625.jpg', '2', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('26', '彭仁金', 'M201626', '123456', '0', '华中科技大学', 'M201626.jpg', '2', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('27', '彭艳', 'M201627', '123456', '1', '华中师范大学', 'M201627.jpg', '2', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('28', '郭金城', 'M201628', '123456', '0', '华中科技大学', 'M201628.jpg', '2', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('29', '王慧慧', 'M201629', '123456', '1', '华中师范大学', 'M201629.jpg', '2', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('30', '王月', 'M201630', '123456', '1', '华中师范大学', 'M201630.jpg', '3', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('31', '王刘军', 'M201631', '123456', '0', '华中科技大学', 'M201631.jpg', '3', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('32', '肖灿', 'M201632', '123456', '1', '华中师范大学', 'M201632.jpg', '3', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('33', '伍圣晖', 'M201633', '123456', '0', '华中科技大学', 'M201633.jpg', '3', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('34', '肖蕊', 'M201634', '123456', '1', '华中师范大学', 'M201634.jpg', '3', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('35', '周克坚', 'M201635', '123456', '0', '华中科技大学', 'M201635.jpg', '3', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('36', '应静', 'M201636', '123456', '1', '华中师范大学', 'M201636.jpg', '3', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('37', '张琦牧', 'M201637', '123456', '0', '华中科技大学', 'M201637.jpg', '3', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('38', '杨世英', 'M201638', '123456', '1', '华中师范大学', 'M201638.jpg', '3', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('39', '朱士辉', 'M201639', '123456', '0', '华中科技大学', 'M201639.jpg', '3', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('40', '张恺', 'M201640', '123456', '1', '华中师范大学', 'M201640.jpg', '3', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('41', '赵伟航', 'M201641', '123456', '0', '华中科技大学', 'M201641.jpg', '3', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('42', '王晨', 'M201642', '123456', '1', '华中师范大学', 'M201642.jpg', '3', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('43', '曾昭翔', 'M201643', '123456', '0', '华中科技大学', 'M201643.jpg', '3', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('44', '次德吉', 'M201644', '123456', '1', '华中师范大学', 'M201644.jpg', '3', '', '0', '0');
INSERT INTO `yunzhi_student` VALUES ('45', '李卓茹', 'M201645', '123456', '1', '华中师范大学', 'M201645.jpg', '3', '', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_teacher
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_teacher`;
CREATE TABLE `yunzhi_teacher` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '姓名',
  `username` varchar(16) NOT NULL COMMENT '用户名',
  `password` varchar(30) NOT NULL,
  `school` varchar(40) NOT NULL,
  `photo_url` varchar(40) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0男，1女',
  `email` varchar(30) DEFAULT '' COMMENT '邮箱',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_teacher
-- ----------------------------
INSERT INTO `yunzhi_teacher` VALUES ('1', '黄璐', 'T201571695', '123456', '华中科技大学', '1.jpg', '1', '2222222@qqq.com', '1477486401', '1480491756');
INSERT INTO `yunzhi_teacher` VALUES ('2', '田媛', 'T201571667', '123456', '华中科技大学', '1.jpg', '1', '1158534904@qq.com', '0', '1478260992');

-- ----------------------------
-- Table structure for yunzhi_user
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_user`;
CREATE TABLE `yunzhi_user` (
  `id` int(40) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `account` tinyint(3) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `sex` tinyint(2) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_user
-- ----------------------------
INSERT INTO `yunzhi_user` VALUES ('1', '范子健', 'M201571695', '0', '123456', '0', '1158534904@qq.com', null, null);
INSERT INTO `yunzhi_user` VALUES ('3', '范子健', 'M201571666', '1', '123456', '0', '13164673497@163.com', null, null);
INSERT INTO `yunzhi_user` VALUES ('4', '范子健', 'M201571667', '2', '123456', '0', '13164673497', null, null);
