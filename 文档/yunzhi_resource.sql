/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : tp5

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-12-16 18:09:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yunzhi_resource
-- ----------------------------
DROP TABLE IF EXISTS `yunzhi_resource`;
CREATE TABLE `yunzhi_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_schedule_id` int(11) NOT NULL,
  `data_type` int(4) NOT NULL,
  `date` date NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunzhi_resource
-- ----------------------------
INSERT INTO `yunzhi_resource` VALUES ('1', '1', '0', '2016-10-15', '\\thinkphp5\\public\\resource\\data\\20161015kinect.zip');
INSERT INTO `yunzhi_resource` VALUES ('2', '1', '1', '2016-10-15', '\\thinkphp5\\public\\resource\\data\\20161015tobii.zip');
INSERT INTO `yunzhi_resource` VALUES ('3', '1', '2', '2016-10-15', '\\thinkphp5\\public\\resource\\data\\20161015.jpg');
INSERT INTO `yunzhi_resource` VALUES ('4', '4', '0', '2016-10-16', '\\thinkphp5\\public\\resource\\data\\20161016kinect.zip');
INSERT INTO `yunzhi_resource` VALUES ('5', '4', '1', '2016-10-16', '\\thinkphp5\\public\\resource\\data\\20161016tobii.zip');
INSERT INTO `yunzhi_resource` VALUES ('6', '4', '2', '2016-10-16', '\\thinkphp5\\public\\resource\\data\\20161016.jpg');
INSERT INTO `yunzhi_resource` VALUES ('7', '7', '0', '2016-10-22', '\\thinkphp5\\public\\resource\\data\\20161022kinect.zip');
INSERT INTO `yunzhi_resource` VALUES ('8', '7', '1', '2016-10-22', '\\thinkphp5\\public\\resource\\data\\20161022tobii.zip');
INSERT INTO `yunzhi_resource` VALUES ('9', '7', '2', '2016-10-22', '\\thinkphp5\\public\\resource\\data\\20161022.jpg');
INSERT INTO `yunzhi_resource` VALUES ('10', '10', '0', '2016-10-23', '\\thinkphp5\\public\\resource\\data\\20161023kinect.zip');
INSERT INTO `yunzhi_resource` VALUES ('11', '10', '1', '2016-10-23', '\\thinkphp5\\public\\resource\\data\\20161023tobii.zip');
INSERT INTO `yunzhi_resource` VALUES ('12', '10', '2', '2016-10-23', '\\thinkphp5\\public\\resource\\data\\20161023.jpg');
INSERT INTO `yunzhi_resource` VALUES ('13', '13', '0', '2016-10-29', '\\thinkphp5\\public\\resource\\data\\20161029kinect.zip');
INSERT INTO `yunzhi_resource` VALUES ('14', '13', '1', '2016-10-29', '\\thinkphp5\\public\\resource\\data\\20161029tobii.zip');
INSERT INTO `yunzhi_resource` VALUES ('15', '13', '2', '2016-10-29', '\\thinkphp5\\public\\resource\\data\\20161029.jpg');
INSERT INTO `yunzhi_resource` VALUES ('16', '16', '0', '2016-10-30', '\\thinkphp5\\public\\resource\\data\\20161030kinect.zip');
INSERT INTO `yunzhi_resource` VALUES ('17', '16', '1', '2016-10-30', '\\thinkphp5\\public\\resource\\data\\20161030tobii.zip');
INSERT INTO `yunzhi_resource` VALUES ('18', '16', '2', '2016-10-30', '\\thinkphp5\\public\\resource\\data\\20161030.jpg');
