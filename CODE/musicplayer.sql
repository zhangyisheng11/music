/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : musicplayer

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2021-02-27 18:04:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `balance` decimal(8,2) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(18) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `avatar` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Admin', 'Welcome1!', '1.50', 'Admin', 'Admin', '18111111111', '2021-02-27', null);
INSERT INTO `users` VALUES ('2', 'Test', 'Initial1!', '0.30', 'Test', 'Test', '15611111111', '2020-02-27', null);
