/*
Navicat MySQL Data Transfer

Source Server         : Dev
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : dbweb

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2016-12-07 13:15:52
*/
use dbweb;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for baitest
-- ----------------------------
DROP TABLE IF EXISTS `baitest`;
CREATE TABLE `baitest` (
  `MaBaiTest` varchar(10) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `ThoiGian` varchar(10) NOT NULL,
  `fileDapAn` varchar(300) NOT NULL,
  `fileBaiTest` varchar(300) NOT NULL,
  `_Share` bit(1) NOT NULL,
  `NguoiUp` varchar(50) NOT NULL,
  `MaLoai` varchar(10) NOT NULL,
  `MucThi` int(11) DEFAULT NULL,
  `SoCau` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaBaiTest`),
  KEY `MaLoai` (`MaLoai`),
  KEY `NguoiUp` (`NguoiUp`),
  CONSTRAINT `baitest_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loaibaitest` (`MaLoai`),
  CONSTRAINT `baitest_ibfk_2` FOREIGN KEY (`NguoiUp`) REFERENCES `user` (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baitest
-- ----------------------------
INSERT INTO `baitest` VALUES ('BT001', 'Bài test 1', '00:00:10', '/DapAn/DapAn.txt', 'DeThi/de1.pdf', '', 'admin', '1', '1', '200');
INSERT INTO `baitest` VALUES ('BT002', 'Bài test 2', '02:00:00', 'https://www.google.com.vn/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=timestamp+mysql', 'https://www.youtube.com/watch?v=hcYKNIEj7co', '\0', 'thinh', '2', '2', '200');
INSERT INTO `baitest` VALUES ('BT003', 'Bài test 3', '01:00:00', 'http://genk.vn/', 'https://lms.hcmute.edu.vn/', '', 'vu', '3', '1', '100');
INSERT INTO `baitest` VALUES ('BT004', 'Bài test 4', '01:00:00', 'http://sinhvienit.net/home/', 'https://www.google.com/gmail/about/', '', 'user', '1', '1', '100');

-- ----------------------------
-- Table structure for lambaitest
-- ----------------------------
DROP TABLE IF EXISTS `lambaitest`;
CREATE TABLE `lambaitest` (
  `MaLoai` varchar(10) NOT NULL,
  `MaBaiTest` varchar(10) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `ThoiGianLamBai` varchar(10) NOT NULL,
  `Diem` varchar(10) NOT NULL,
  `NgayLam` date DEFAULT NULL,
  PRIMARY KEY (`MaLoai`,`MaBaiTest`,`UserName`),
  KEY `UserName` (`UserName`),
  KEY `MaBaiTest` (`MaBaiTest`),
  CONSTRAINT `lambaitest_ibfk_1` FOREIGN KEY (`UserName`) REFERENCES `user` (`UserName`),
  CONSTRAINT `lambaitest_ibfk_2` FOREIGN KEY (`MaLoai`) REFERENCES `loaibaitest` (`MaLoai`),
  CONSTRAINT `lambaitest_ibfk_3` FOREIGN KEY (`MaBaiTest`) REFERENCES `baitest` (`MaBaiTest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lambaitest
-- ----------------------------
INSERT INTO `lambaitest` VALUES ('1', 'BT002', 'dat', '01:31:12', '900', '2016-12-12');
INSERT INTO `lambaitest` VALUES ('1', 'BT002', 'thinh', '01:21:23', '300', '2016-12-20');
INSERT INTO `lambaitest` VALUES ('1', 'BT002', 'user', '00:30:12', '400', '2016-12-05');
INSERT INTO `lambaitest` VALUES ('2', 'BT004', 'dat', '01:51:20', '700', '2016-12-05');
INSERT INTO `lambaitest` VALUES ('3', 'BT003', 'dat', '01:05:12', '500', '2016-12-05');
INSERT INTO `lambaitest` VALUES ('3', 'BT003', 'thinh', '01:31:13', '550', '2016-12-05');

-- ----------------------------
-- Table structure for loaibaitest
-- ----------------------------
DROP TABLE IF EXISTS `loaibaitest`;
CREATE TABLE `loaibaitest` (
  `MaLoai` varchar(10) NOT NULL,
  `TenLoai` varchar(50) NOT NULL,
  PRIMARY KEY (`MaLoai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loaibaitest
-- ----------------------------
INSERT INTO `loaibaitest` VALUES ('1', 'Listening');
INSERT INTO `loaibaitest` VALUES ('2', 'Reading');
INSERT INTO `loaibaitest` VALUES ('3', 'ListeningAndReading');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `RoleID` int(11) NOT NULL,
  `RoleName` varchar(30) NOT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ADMIN');
INSERT INTO `role` VALUES ('2', 'USER');

-- ----------------------------
-- Table structure for tailieu
-- ----------------------------
DROP TABLE IF EXISTS `tailieu`;
CREATE TABLE `tailieu` (
  `IDTLieu` varchar(10) NOT NULL,
  `TieuDe` varchar(50) NOT NULL,
  `NgayUp` date NOT NULL,
  `Link` varchar(200) NOT NULL,
  `Loai` varchar(10) NOT NULL,
  `UserName` varchar(10) NOT NULL,
  `_Share` bit(1) NOT NULL,
  PRIMARY KEY (`IDTLieu`),
  KEY `UserName` (`UserName`),
  CONSTRAINT `tailieu_ibfk_1` FOREIGN KEY (`UserName`) REFERENCES `user` (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tailieu
-- ----------------------------
INSERT INTO `tailieu` VALUES ('TL001', 'Tài Liệu Ôn Thi Toeic 550', '2016-10-29', 'http://www.onthitoeic.vn/category/luyen-tap/bai-test-dau-vao/', '1', 'dat', '');
INSERT INTO `tailieu` VALUES ('TL002', 'Đáp án tài liệu ôn thi toeic 550', '2016-10-29', 'http://www.onthitoeic.vn/category/luyen-tap/bai-test-dau-vao/', '1', 'user', '');
INSERT INTO `tailieu` VALUES ('TL003', 'Phần nghe toeic', '2016-10-29', 'http://www.onthitoeic.vn/category/luyen-tap/bai-test-dau-vao/', '1', 'vu', '');

-- ----------------------------
-- Table structure for tinnhan
-- ----------------------------
DROP TABLE IF EXISTS `tinnhan`;
CREATE TABLE `tinnhan` (
  `IDTN` varchar(10) NOT NULL,
  `TieuDe` varchar(100) NOT NULL,
  `UserGui` varchar(50) NOT NULL,
  `UserNhan` varchar(50) NOT NULL,
  `NoiDung` varchar(500) NOT NULL,
  PRIMARY KEY (`IDTN`),
  KEY `UserGui` (`UserGui`),
  KEY `UserNhan` (`UserNhan`),
  CONSTRAINT `tinnhan_ibfk_1` FOREIGN KEY (`UserGui`) REFERENCES `user` (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tinnhan
-- ----------------------------

-- ----------------------------
-- Table structure for traloi
-- ----------------------------
DROP TABLE IF EXISTS `traloi`;
CREATE TABLE `traloi` (
  `IDTL` varchar(10) NOT NULL,
  `NoiDungTL` varchar(500) NOT NULL,
  `ThoiGian` datetime NOT NULL,
  `UserGui` varchar(50) NOT NULL,
  `UserNhan` varchar(50) NOT NULL,
  PRIMARY KEY (`IDTL`),
  KEY `UserGui` (`UserGui`),
  KEY `UserNhan` (`UserNhan`),
  CONSTRAINT `traloi_ibfk_1` FOREIGN KEY (`UserGui`) REFERENCES `user` (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of traloi
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `NgaySinh` date NOT NULL,
  `SoDT` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Time` datetime DEFAULT NULL,
  `Address` varchar(100) NOT NULL,
  `RoleID` int(11) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  PRIMARY KEY (`UserName`),
  KEY `RoleID` (`RoleID`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `role` (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', '1234', 'LuuDucThinh', '1996-10-06', '0988913547', 'ducthinh0610@gmail.com', null, 'Lã Xuân Oai -Quận 9-TPCM', '1', 'Nam');
INSERT INTO `user` VALUES ('dat', '1234', 'HuuDat', '1990-11-28', '0165725810', 'datkute@hotmail.com', null, 'Quận 9-TPHCM', '2', 'Nam');
INSERT INTO `user` VALUES ('thinh', '1234', 'DucThinh', '1995-11-22', '0971517617', 'ldtute@gmail.com', null, 'Quận 1-TPHCM', '2', 'Nam');
INSERT INTO `user` VALUES ('user', '1234', 'NguyenQuangVu', '1996-06-13', '01677123951', 'quangvu@gmail.com', null, 'Thủ Đức -TPHCM', '2', 'Nam');
INSERT INTO `user` VALUES ('vu', '1234', 'QuangVu', '1994-10-18', '01251581959', 'blackVu@gmail.con', null, 'Gò Vấp- TPHCM', '2', 'Nam');
