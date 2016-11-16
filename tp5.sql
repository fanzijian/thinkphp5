/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : tp5

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-11-16 19:36:43
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
INSERT INTO `yunzhi_course` VALUES ('1', 'thinkPHP5入门案例', '1', '6', '0', '1477497926');
INSERT INTO `yunzhi_course` VALUES ('2', 'angularjs入门实例', '9', '6', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_course_behavior_result
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_course_behavior_result`;
CREATE TABLE `yunzhi_course_behavior_result` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `behavior_type` tinyint(4) NOT NULL,
  `behavior_time` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_course_behavior_result
-- ----------------------------
INSERT INTO `yunzhi_course_behavior_result` VALUES ('1', '1', '15', '1', '1', '0', '100', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('2', '1', '15', '1', '2', '100', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('3', '1', '15', '1', '3', '110', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('4', '1', '15', '1', '4', '120', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('5', '1', '15', '1', '1', '130', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('6', '1', '15', '1', '2', '135', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('7', '1', '15', '1', '3', '140', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('8', '1', '15', '1', '4', '145', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('9', '1', '14', '1', '1', '0', '100', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('10', '1', '14', '1', '2', '100', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('11', '1', '14', '1', '3', '110', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('12', '1', '14', '1', '4', '120', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('13', '1', '14', '1', '1', '130', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('14', '1', '14', '1', '2', '135', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('15', '1', '14', '1', '3', '140', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('16', '1', '14', '1', '4', '145', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('17', '1', '10', '1', '1', '0', '100', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('18', '1', '10', '1', '2', '100', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('19', '1', '10', '1', '3', '110', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('20', '1', '10', '1', '4', '120', '10', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('21', '1', '10', '1', '1', '130', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('22', '1', '10', '1', '2', '135', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('23', '1', '10', '1', '3', '140', '5', '0', '0');
INSERT INTO `yunzhi_course_behavior_result` VALUES ('24', '1', '10', '1', '4', '145', '5', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_course_result
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_course_result`;
CREATE TABLE `yunzhi_course_result` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `hand_up` int(11) NOT NULL,
  `stand_up` int(11) NOT NULL,
  `sleep_on_desk` int(11) NOT NULL,
  `participation_degree` float(11,2) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `updata_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_course_result
-- ----------------------------
INSERT INTO `yunzhi_course_result` VALUES ('1', '1', '14', '1', '4', '3', '1', '0.83', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('2', '1', '10', '1', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('3', '1', '15', '1', '2', '1', '10', '0.31', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('4', '1', '10', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('5', '1', '18', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('6', '1', '19', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('7', '1', '20', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('8', '1', '21', '2', '3', '4', '5', '0.35', '0', '0');
INSERT INTO `yunzhi_course_result` VALUES ('9', '1', '14', '2', '9', '9', '9', '0.90', '9', '9');

-- ----------------------------
-- Table structure for yunzhi_course_schedule
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_course_schedule`;
CREATE TABLE `yunzhi_course_schedule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_course_schedule
-- ----------------------------
INSERT INTO `yunzhi_course_schedule` VALUES ('1', '1', '1', '0', '200', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('2', '1', '2', '0', '0', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('3', '1', '3', '0', '0', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('4', '1', '4', '0', '0', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('5', '1', '5', '0', '0', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('6', '1', '6', '0', '0', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('7', '2', '1', '0', '0', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('8', '2', '2', '0', '0', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('9', '2', '3', '0', '0', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('10', '2', '4', '0', '0', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('11', '2', '5', '0', '0', '0', '0');
INSERT INTO `yunzhi_course_schedule` VALUES ('12', '2', '6', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_exam
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_exam`;
CREATE TABLE `yunzhi_exam` (
  `id` int(40) unsigned NOT NULL AUTO_INCREMENT,
  `paper_id` int(40) NOT NULL,
  `course_id` int(40) NOT NULL,
  `exam_time` datetime DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_exam
-- ----------------------------
INSERT INTO `yunzhi_exam` VALUES ('1', '1', '1', null, null, null);
INSERT INTO `yunzhi_exam` VALUES ('2', '1', '1', null, null, null);

-- ----------------------------
-- Table structure for yunzhi_exam_result
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_exam_result`;
CREATE TABLE `yunzhi_exam_result` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `accuracy` float(5,2) DEFAULT NULL,
  `duration_total` int(11) DEFAULT NULL,
  `duration_average` float(11,0) DEFAULT NULL,
  `attribute_2` float(11,0) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_exam_result
-- ----------------------------
INSERT INTO `yunzhi_exam_result` VALUES ('1', '10', '1', '100.00', '100', '1', '1', null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('2', '14', '1', '100.00', '50', '1', '1', null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('3', '15', '1', '100.00', '60', '1', '1', null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('4', '10', '2', '90.00', '90', '1', '1', null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('5', '14', '2', '100.00', '40', '1', '1', null, null);
INSERT INTO `yunzhi_exam_result` VALUES ('6', '15', '2', '100.00', '30', '1', '1', null, null);

-- ----------------------------
-- Table structure for yunzhi_klass
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_klass`;
CREATE TABLE `yunzhi_klass` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '名称',
  `teacher_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '教师ID',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_klass
-- ----------------------------
INSERT INTO `yunzhi_klass` VALUES ('1', '实验1班', '9', '0', '1466493790');
INSERT INTO `yunzhi_klass` VALUES ('2', '实验2班', '2', '0', '0');
INSERT INTO `yunzhi_klass` VALUES ('3', '实验3班', '1', '0', '0');
INSERT INTO `yunzhi_klass` VALUES ('4', '实验4班', '2', '0', '0');
INSERT INTO `yunzhi_klass` VALUES ('5', '实验5班', '1', '0', '0');
INSERT INTO `yunzhi_klass` VALUES ('6', '实验6班', '2', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_klass_course
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_klass_course`;
CREATE TABLE `yunzhi_klass_course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `klass_id` int(11) unsigned NOT NULL,
  `course_id` int(11) unsigned NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_klass_course
-- ----------------------------
INSERT INTO `yunzhi_klass_course` VALUES ('2', '1', '2', '0', '0');
INSERT INTO `yunzhi_klass_course` VALUES ('4', '2', '2', '0', '0');
INSERT INTO `yunzhi_klass_course` VALUES ('6', '4', '2', '0', '0');
INSERT INTO `yunzhi_klass_course` VALUES ('8', '6', '2', '0', '0');
INSERT INTO `yunzhi_klass_course` VALUES ('9', '1', '3', '0', '0');
INSERT INTO `yunzhi_klass_course` VALUES ('10', '2', '3', '0', '0');
INSERT INTO `yunzhi_klass_course` VALUES ('11', '1', '4', '0', '0');
INSERT INTO `yunzhi_klass_course` VALUES ('12', '2', '4', '0', '0');
INSERT INTO `yunzhi_klass_course` VALUES ('27', '4', '1', '0', '0');
INSERT INTO `yunzhi_klass_course` VALUES ('26', '2', '1', '0', '0');
INSERT INTO `yunzhi_klass_course` VALUES ('25', '1', '1', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_learn
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_learn`;
CREATE TABLE `yunzhi_learn` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_learn
-- ----------------------------
INSERT INTO `yunzhi_learn` VALUES ('1', 'thinphp预习', '15', '0', '0', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_learn_behavior_result
-- ----------------------------
INSERT INTO `yunzhi_learn_behavior_result` VALUES ('1', '15', '1', '1', '1', '0', '0');
INSERT INTO `yunzhi_learn_behavior_result` VALUES ('2', '15', '1', '2', '20', '0', '0');
INSERT INTO `yunzhi_learn_behavior_result` VALUES ('3', '15', '1', '3', '30', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_learn_pattern
-- ----------------------------
INSERT INTO `yunzhi_learn_pattern` VALUES ('1', '15', '1', '1', '1', '10', '0', '0');
INSERT INTO `yunzhi_learn_pattern` VALUES ('2', '15', '1', '2', '11', '9', '0', '0');
INSERT INTO `yunzhi_learn_pattern` VALUES ('3', '15', '1', '3', '20', '23', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_learn_status
-- ----------------------------
INSERT INTO `yunzhi_learn_status` VALUES ('1', '15', '1', '1', '0', '10', '0', '0');
INSERT INTO `yunzhi_learn_status` VALUES ('2', '15', '1', '2', '10', '20', '0', '0');
INSERT INTO `yunzhi_learn_status` VALUES ('3', '15', '1', '3', '50', '20', '0', '0');

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
INSERT INTO `yunzhi_manager` VALUES ('1', '藤灵杏', '123456', '华中师范大学', '1.png', '1', 'M201571695', '1158534904@qq.com', '0', '0');

-- ----------------------------
-- Table structure for yunzhi_paper
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_paper`;
CREATE TABLE `yunzhi_paper` (
  `id` int(40) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_paper
-- ----------------------------
INSERT INTO `yunzhi_paper` VALUES ('1', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_paper_question
-- ----------------------------
INSERT INTO `yunzhi_paper_question` VALUES ('1', '1', '1', null, null);
INSERT INTO `yunzhi_paper_question` VALUES ('2', '1', '2', null, null);

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
  `answer` tinyint(4) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_question
-- ----------------------------
INSERT INTO `yunzhi_question` VALUES ('1', '1-title.jpg', '1-a.jpg', '1-b.jpg', '1-c.jpg', '1-d.jpg', '1', null, null);
INSERT INTO `yunzhi_question` VALUES ('2', '2-title.jpg', '2-a.jpg', '2-b.jpg', '2-c.jpg', '2-d.jpg', '2', null, null);

-- ----------------------------
-- Table structure for yunzhi_question_result
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_question_result`;
CREATE TABLE `yunzhi_question_result` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer` tinyint(4) DEFAULT NULL,
  `is_right` tinyint(2) DEFAULT NULL,
  `duration` int(10) DEFAULT NULL,
  `duration_a` decimal(4,2) DEFAULT NULL,
  `duration_b` decimal(4,2) DEFAULT NULL,
  `duration_c` decimal(4,2) DEFAULT NULL,
  `duration_d` decimal(4,2) DEFAULT NULL,
  `duration_others` decimal(4,2) DEFAULT NULL,
  `analysis_url` varchar(40) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_question_result
-- ----------------------------
INSERT INTO `yunzhi_question_result` VALUES ('1', '10', '1', '1', '1', '1', '46', '2.66', '4.02', '9.51', '9.67', '74.13', null, null, null);
INSERT INTO `yunzhi_question_result` VALUES ('2', '10', '1', '2', '1', '0', '32', '7.81', '2.19', '12.81', '4.77', '72.42', null, null, null);
INSERT INTO `yunzhi_question_result` VALUES ('3', '14', '1', '1', '1', '1', '20', '6.50', '3.88', '11.25', '11.25', '71.47', null, null, null);
INSERT INTO `yunzhi_question_result` VALUES ('4', '14', '1', '2', '2', '1', '15', '5.67', '6.50', '18.67', '8.33', '60.83', null, null, null);
INSERT INTO `yunzhi_question_result` VALUES ('5', '15', '1', '1', '1', '1', '20', '6.50', '3.88', '11.25', '11.25', '71.47', '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('6', '15', '1', '2', '2', '1', '15', '5.67', '6.50', '18.67', '8.33', '60.83', '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('7', '10', '2', '1', '1', '1', '46', '2.66', '4.02', '9.51', '9.67', '74.13', '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('8', '10', '2', '2', '1', '0', '32', '7.81', '2.19', '12.81', '4.77', '72.42', '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('9', '14', '2', '1', '1', '1', '20', '6.50', '3.88', '11.25', '11.25', '71.47', '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('10', '14', '2', '2', '2', '1', '15', '5.67', '6.50', '18.67', '8.33', '60.83', '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('11', '15', '2', '1', '1', '1', '20', '6.50', '3.88', '11.25', '11.25', '71.47', '', null, null);
INSERT INTO `yunzhi_question_result` VALUES ('12', '15', '2', '2', '2', '1', '15', '5.67', '6.50', '18.67', '8.33', '60.83', '', null, null);

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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_student
-- ----------------------------
INSERT INTO `yunzhi_student` VALUES ('15', '春原芽衣', 'S201571668', '123456', '1', '华中师范大学', '1.jpg', '3', '13164673497@163.com', '2016', '1478259826');
INSERT INTO `yunzhi_student` VALUES ('14', '古河渚', 'S201571667', '123456', '1', '华中科技大学', '1.jpg', '4', '1158534904@qq.com', '0', '1478752427');
INSERT INTO `yunzhi_student` VALUES ('10', '范子健', 'S201571695', '123456', '0', '华中科技大学', '1.jpg', '2', '13164673497@163.com', '0', '1478179359');
INSERT INTO `yunzhi_student` VALUES ('18', '范子健1', 'S201571696', '123456', '0', '华中科技大学', '1.jpg', '3', '13164673497@163.com', '0', '1478179359');
INSERT INTO `yunzhi_student` VALUES ('19', '范子健2', 'S201571699', '123456', '0', '华中科技大学', '1.jpg', '3', '13164673497@163.com', '0', '1478179359');
INSERT INTO `yunzhi_student` VALUES ('20', '范子健3', 'S201571669', '123456', '0', '华中科技大学', '1.jpg', '3', '13164673497@163.com', '0', '1478179359');
INSERT INTO `yunzhi_student` VALUES ('21', '范子健4', 'S201571670', '123456', '0', '华中科技大学', '1.jpg', '3', '4', '0', '1478179359');

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
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_teacher
-- ----------------------------
INSERT INTO `yunzhi_teacher` VALUES ('1', '范子健', 'T201571695', '123456', '华中科技大学', '1.jpg', '0', '111@qqq.com', '1477486401', '1478752602');
INSERT INTO `yunzhi_teacher` VALUES ('9', '范子健', 'T201571667', '123456', '华中科技大学', '1.jpg', '1', '1158534904@qq.com', '0', '1478260992');

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
