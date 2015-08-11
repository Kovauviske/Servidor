/*
Navicat MySQL Data Transfer

Source Server         : Altis Life
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : arma3life

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2015-08-11 16:44:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for economy
-- ----------------------------
DROP TABLE IF EXISTS `economy`;
CREATE TABLE `economy` (
  `numero` int(12) NOT NULL,
  `ressource` varchar(32) NOT NULL,
  `sellprice` int(100) NOT NULL DEFAULT '0',
  `buyprice` int(100) NOT NULL DEFAULT '0',
  `varprice` int(100) NOT NULL,
  `minprice` int(100) NOT NULL,
  `maxprice` int(100) NOT NULL,
  `factor` enum('0','1','2','3','4','5','6','7') NOT NULL DEFAULT '0',
  `shoptype` text NOT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of economy
-- ----------------------------
INSERT INTO `economy` VALUES ('1', 'apple', '50', '65', '1', '1', '60', '1', 'market');
INSERT INTO `economy` VALUES ('2', 'heroinu', '2250', '0', '5', '1', '4000', '0', 'heroin');
INSERT INTO `economy` VALUES ('3', 'heroinp', '4500', '0', '10', '1', '5000', '2', 'heroin');
INSERT INTO `economy` VALUES ('4', 'salema', '45', '55', '1', '1', '100', '4', 'fishmarket');
INSERT INTO `economy` VALUES ('5', 'ornate', '40', '50', '1', '1', '100', '4', 'fishmarket');
INSERT INTO `economy` VALUES ('6', 'mackerel', '175', '200', '1', '1', '1000', '4', 'fishmarket');
INSERT INTO `economy` VALUES ('7', 'tuna', '700', '900', '1', '1', '2000', '4', 'fishmarket');
INSERT INTO `economy` VALUES ('8', 'mullet', '250', '300', '1', '1', '1000', '4', 'fishmarket');
INSERT INTO `economy` VALUES ('9', 'catshark', '300', '350', '1', '1', '1000', '4', 'fishmarket');
INSERT INTO `economy` VALUES ('10', 'rabbit', '65', '75', '1', '1', '500', '0', 'market');
INSERT INTO `economy` VALUES ('11', 'oilp', '2250', '0', '2', '1', '3500', '3', 'oil');
INSERT INTO `economy` VALUES ('12', 'turtle', '5750', '15000', '10', '1', '8000', '0', 'wongs');
INSERT INTO `economy` VALUES ('13', 'water', '0', '10', '0', '1', '25', '0', 'market');
INSERT INTO `economy` VALUES ('14', 'coffee', '0', '10', '0', '1', '75', '0', 'cop');
INSERT INTO `economy` VALUES ('15', 'turtlesoup', '4500', '15000', '0', '1', '5000', '0', 'wongs');
INSERT INTO `economy` VALUES ('16', 'donuts', '0', '10', '0', '1', '200', '0', 'cop');
INSERT INTO `economy` VALUES ('17', 'marijuana', '3000', '0', '10', '1', '6000', '2', 'heroin');
INSERT INTO `economy` VALUES ('18', 'tbacon', '25', '75', '0', '1', '75', '0', 'market');
INSERT INTO `economy` VALUES ('19', 'lockpick', '750', '4000', '0', '1', '4100', '0', 'market');
INSERT INTO `economy` VALUES ('20', 'redgull', '750', '1000', '0', '1', '1200', '0', 'market');
INSERT INTO `economy` VALUES ('21', 'peach', '65', '70', '1', '1', '100', '1', 'market');
INSERT INTO `economy` VALUES ('22', 'cocaine', '2500', '0', '5', '1', '4500', '0', 'heroin');
INSERT INTO `economy` VALUES ('23', 'cocainep', '5000', '0', '10', '1', '8000', '2', 'heroin');
INSERT INTO `economy` VALUES ('24', 'diamond', '1500', '0', '3', '1', '2000', '3', 'diamond');
INSERT INTO `economy` VALUES ('25', 'diamondc', '3000', '0', '3', '1', '6000', '3', 'diamond');
INSERT INTO `economy` VALUES ('26', 'iron_r', '1500', '0', '3', '1', '3000', '3', 'iron');
INSERT INTO `economy` VALUES ('27', 'copper_r', '1000', '0', '3', '1', '1500', '3', 'iron');
INSERT INTO `economy` VALUES ('28', 'salt_r', '2500', '0', '3', '1', '5000', '3', 'salt');
INSERT INTO `economy` VALUES ('29', 'glass', '1500', '0', '3', '1', '3000', '3', 'glass');
INSERT INTO `economy` VALUES ('30', 'fuelF', '10', '500', '0', '1', '1500', '0', 'market');
INSERT INTO `economy` VALUES ('31', 'spikeStrip', '0', '10', '0', '1', '2000', '0', 'cop');
INSERT INTO `economy` VALUES ('32', 'cement', '1000', '0', '3', '1', '8000', '3', 'cement');
INSERT INTO `economy` VALUES ('33', 'goldbar', '90000', '0', '0', '1', '180000', '0', 'goldbar');
INSERT INTO `economy` VALUES ('34', 'blastingcharge', '10000', '50000', '0', '1', '50000', '0', 'rebel');
INSERT INTO `economy` VALUES ('35', 'boltcutter', '5000', '8000', '0', '1', '5000', '0', 'rebel');
INSERT INTO `economy` VALUES ('36', 'defusekit', '0', '10', '0', '1', '2500', '0', 'cop');
INSERT INTO `economy` VALUES ('37', 'storagesmall', '10', '125000', '0', '1', '10', '0', 'market');
INSERT INTO `economy` VALUES ('38', 'storagebig', '10', '250000', '0', '1', '10', '0', 'market');
INSERT INTO `economy` VALUES ('39', 'pickaxe', '700', '1200', '0', '1', '750', '0', 'market');
INSERT INTO `economy` VALUES ('40', 'methu', '1875', '3750', '5', '1', '3600', '2', 'heroin');
INSERT INTO `economy` VALUES ('41', 'methp', '3750', '0', '10', '1', '6500', '2', 'heroin');
INSERT INTO `economy` VALUES ('42', 'bottledwhiskey', '5500', '3750', '5', '1', '6000', '2', 'speakeasy');
INSERT INTO `economy` VALUES ('43', 'bottledbeer', '750', '1250', '5', '1', '1450', '2', 'speakeasy');
INSERT INTO `economy` VALUES ('44', 'whiskey', '1250', '5500', '4', '1', '2500', '2', 'speakeasy');
INSERT INTO `economy` VALUES ('45', 'wine', '1000', '4000', '2', '1', '4500', '2', 'beer');
INSERT INTO `economy` VALUES ('46', 'grapes', '70', '95', '2', '1', '140', '2', 'market');
INSERT INTO `economy` VALUES ('47', 'battery', '50', '100', '0', '1', '100', '2', 'market');
INSERT INTO `economy` VALUES ('48', 'painkillers', '250', '500', '0', '1', '500', '2', 'pharmacy');
INSERT INTO `economy` VALUES ('49', 'mash', '500', '2500', '1', '1', '1500', '2', 'bar');
INSERT INTO `economy` VALUES ('50', 'rye', '2000', '0', '2', '1', '3500', '2', 'bar');
INSERT INTO `economy` VALUES ('51', 'morphium', '100', '1500', '0', '1', '1500', '2', 'pharmacy');
INSERT INTO `economy` VALUES ('52', 'yeast', '2000', '0', '2', '1', '3500', '2', 'pharmacy');
INSERT INTO `economy` VALUES ('53', 'cornmeal', '200', '500', '2', '1', '750', '2', 'bar');
INSERT INTO `economy` VALUES ('54', 'bottles', '50', '100', '1', '1', '100', '2', 'bar');
INSERT INTO `economy` VALUES ('55', 'uranium', '10000', '0', '8', '1', '12500', '2', 'uranium');
INSERT INTO `economy` VALUES ('56', 'kidney', '9000', '15000', '0', '1', '16750', '2', 'pharmacy');
INSERT INTO `economy` VALUES ('57', 'scalpel', '1000', '7500', '0', '1', '7500', '2', 'pharmacy');
INSERT INTO `economy` VALUES ('58', 'beerp', '550', '3750', '3', '1', '1500', '2', 'speakeasy');
INSERT INTO `economy` VALUES ('59', 'mauer', '5', '10', '0', '1', '10', '2', 'cop');
INSERT INTO `economy` VALUES ('61', 'puranium', '250', '1000', '0', '1', '1000', '2', 'uranium');
INSERT INTO `economy` VALUES ('62', 'ipuranium', '3500', '9000', '0', '1', '9000', '2', 'uranium');
INSERT INTO `economy` VALUES ('70', 'redgull', '750', '1000', '0', '1', '1200', '0', 'cop');
INSERT INTO `economy` VALUES ('71', 'zipties', '5', '500', '0', '1', '500', '2', 'rebel');
INSERT INTO `economy` VALUES ('72', 'redgull', '750', '1000', '0', '1', '1200', '0', 'donator');
INSERT INTO `economy` VALUES ('73', 'lockpick', '750', '4000', '0', '1', '4100', '0', 'donator');
INSERT INTO `economy` VALUES ('74', 'handcuffs', '750', '4000', '0', '1', '4100', '0', 'rebel');
INSERT INTO `economy` VALUES ('75', 'handcuffkeys', '750', '4000', '0', '1', '4100', '0', 'rebel');

-- ----------------------------
-- Table structure for gangs
-- ----------------------------
DROP TABLE IF EXISTS `gangs`;
CREATE TABLE `gangs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `members` text,
  `maxmembers` int(2) DEFAULT '8',
  `bank` int(100) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gangs
-- ----------------------------

-- ----------------------------
-- Table structure for houses
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(32) NOT NULL,
  `pos` varchar(64) DEFAULT NULL,
  `inventory` text,
  `containers` text,
  `owned` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of houses
-- ----------------------------

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `uid` int(12) NOT NULL AUTO_INCREMENT,
  `fromID` varchar(50) NOT NULL,
  `toID` varchar(50) NOT NULL,
  `message` text,
  `fromName` varchar(32) NOT NULL,
  `toName` varchar(32) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of messages
-- ----------------------------

-- ----------------------------
-- Table structure for players
-- ----------------------------
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
  `uid` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `playerid` varchar(50) NOT NULL,
  `cash` int(100) NOT NULL DEFAULT '0',
  `bankacc` int(100) NOT NULL DEFAULT '0',
  `coplevel` enum('0','1','2','3','4','5','6') NOT NULL DEFAULT '0',
  `cop_licenses` text,
  `civ_licenses` text,
  `med_licenses` text,
  `cop_gear` text NOT NULL,
  `med_gear` text NOT NULL,
  `mediclevel` enum('0','1','2') NOT NULL DEFAULT '0',
  `arrested` tinyint(1) NOT NULL DEFAULT '0',
  `aliases` text NOT NULL,
  `adminlevel` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `donatorlvl` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `civ_gear` text NOT NULL,
  `blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `jail_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `playerid` (`playerid`),
  KEY `name` (`name`),
  KEY `blacklist` (`blacklist`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of players
-- ----------------------------
INSERT INTO `players` VALUES ('22', '[sN] Kovauviske', '76561198158640145', '0', '14250', '0', '\"[]\"', '\"[[`license_civ_driver`,0],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,0],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,0],[`license_civ_stiller`,0],[`license_civ_liquor`,0],[`license_civ_bottler`,0],[`license_civ_uranium`,0]]\"', '\"[]\"', '\"[]\"', '\"[]\"', '0', '0', '\"[`[sN] Kovauviske`]\"', '0', '0', '\"[`U_C_Poloshirt_stripped`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"', '0', '0');

-- ----------------------------
-- Table structure for vehicles
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `side` varchar(15) NOT NULL,
  `classname` varchar(32) NOT NULL,
  `type` varchar(12) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `alive` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `plate` int(20) NOT NULL,
  `color` int(20) NOT NULL,
  `inventory` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `side` (`side`),
  KEY `pid` (`pid`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vehicles
-- ----------------------------

-- ----------------------------
-- Procedure structure for deleteDeadVehicles
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteDeadVehicles`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteDeadVehicles`()
BEGIN
	DELETE FROM `vehicles` WHERE `alive` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deleteEconomyPrices
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteEconomyPrices`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteEconomyPrices`()
TRUNCATE `economy`
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deleteOldGangs
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldGangs`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldGangs`()
BEGIN
  DELETE FROM `gangs` WHERE `active` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deleteOldHouses
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldHouses`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldHouses`()
BEGIN
  DELETE FROM `houses` WHERE `owned` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deleteOldMessages
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldMessages`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldMessages`()
TRUNCATE TABLE `messages`
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for resetLifeVehicles
-- ----------------------------
DROP PROCEDURE IF EXISTS `resetLifeVehicles`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `resetLifeVehicles`()
BEGIN
	UPDATE `vehicles` SET `active`= 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for setEconomyPrices
-- ----------------------------
DROP PROCEDURE IF EXISTS `setEconomyPrices`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setEconomyPrices`()
    NO SQL
INSERT INTO `economy` (`numero`, `ressource`, `sellprice`, `buyprice`, `varprice`, `minprice`, `maxprice`, `factor`, `shoptype`) VALUES
(1, 'apple', 50, 65, 1, 1, 60, '1', 'market'),
(2, 'heroinu', 2250, 0, 5, 1, 4000, '0', 'heroin'),
(3, 'heroinp', 4500, 0, 10, 1, 5000, '2', 'heroin'),
(4, 'salema', 45, 55, 1, 1, 100, '4', 'fishmarket'),
(5, 'ornate', 40, 50, 1, 1, 100, '4', 'fishmarket'),
(6, 'mackerel', 175, 200, 1, 1, 1000, '4', 'fishmarket'),
(7, 'tuna', 700, 900, 1, 1, 2000, '4', 'fishmarket'),
(8, 'mullet', 250, 300, 1, 1, 1000, '4', 'fishmarket'),
(9, 'catshark', 300, 350, 1, 1, 1000, '4', 'fishmarket'),
(10, 'rabbit', 65, 75, 1, 1, 500, '0', 'market'),
(11, 'oilp', 2250, 0, 2, 1, 3500, '3', 'oil'),
(12, 'turtle', 5750, 15000, 10, 1, 8000, '0', 'wongs'),
(13, 'water', 0, 10, 0, 1, 25, '0', 'market'),
(14, 'coffee', 0, 10, 0, 1, 75, '0', 'cop'),
(15, 'turtlesoup', 4500, 15000, 0, 1, 5000, '0', 'wongs'),
(16, 'donuts', 0, 10, 0, 1, 200, '0', 'cop'),
(17, 'marijuana', 3000, 0, 10, 1, 6000, '2', 'heroin'),
(18, 'tbacon', 25, 75, 0, 1, 75, '0', 'market'),
(19, 'lockpick', 750, 4000, 0, 1, 4100, '0', 'market'),
(20, 'redgull', 750, 1000, 0, 1, 1200, '0', 'market'),
(21, 'peach', 65, 70, 1, 1, 100, '1', 'market'),
(22, 'cocaine', 2500, 0, 5, 1, 4500, '0', 'heroin'),
(23, 'cocainep', 5000, 0, 10, 1, 8000, '2', 'heroin'),
(24, 'diamond', 1500, 0, 3, 1, 2000, '3', 'diamond'),
(25, 'diamondc', 3000, 0, 3, 1, 6000, '3', 'diamond'),
(26, 'iron_r', 1500, 0, 3, 1, 3000, '3', 'iron'),
(27, 'copper_r', 1000, 0, 3, 1, 1500, '3', 'iron'),
(28, 'salt_r', 2500, 0, 3, 1, 5000, '3', 'salt'),
(29, 'glass', 1500, 0, 3, 1, 3000, '3', 'glass'),
(30, 'fuelF', 10, 500, 0, 1, 1500, '0', 'market'),
(31, 'spikeStrip', 0, 10, 0, 1, 2000, '0', 'cop'),
(32, 'cement', 1000, 0, 3, 1, 8000, '3', 'cement'),
(33, 'goldbar', 90000, 0, 0, 1, 180000, '0', 'goldbar'),
(34, 'blastingcharge', 10000, 50000, 0, 1, 50000, '0', 'market'),
(35, 'boltcutter', 5000, 8000, 0, 1, 5000, '0', 'market'),
(36, 'defusekit', 0, 10, 0, 1, 2500, '0', 'cop'),
(37, 'storagesmall', 10, 125000, 0, 1, 10, '0', 'market'),
(38, 'storagebig', 10, 250000, 0, 1, 10, '0', 'market'),
(39, 'pickaxe', 700, 1200, 0, 1, 750, '0', 'market'),
(40, 'methu', 1875, 3750, 5, 1, 3600, '2', 'heroin'),
(41, 'methp', 3750, 0, 10, 1, 6500, '2', 'heroin'),
(42, 'bottledwhiskey', 5500, 3750, 5, 1, 6000, '2', 'speakeasy'),
(43, 'bottledbeer', 750, 1250, 5, 1, 1450, '2', 'speakeasy'),
(44, 'whiskey', 1250, 5500, 4, 1, 2500, '2', 'speakeasy'),
(45, 'wine', 1000, 4000, 2, 1, 4500, '2', 'beer'),
(46, 'grapes', 70, 95, 2, 1, 140, '2', 'market'),
(47, 'battery', 50, 100, 0, 1, 100, '2', 'market'),
(48, 'painkillers', 250, 500, 0, 1, 500, '2', 'pharmacy'),
(49, 'mash', 500, 2500, 1, 1, 1500, '2', 'bar'),
(50, 'rye', 2000, 0, 2, 1, 3500, '2', 'bar'),
(51, 'morphium', 100, 1500, 0, 1, 1500, '2', 'pharmacy'),
(52, 'yeast', 2000, 0, 2, 1, 3500, '2', 'pharmacy'),
(53, 'cornmeal', 200, 500, 2, 1, 750, '2', 'bar'),
(54, 'bottles', 50, 100, 1, 1, 100, '2', 'bar'),
(55, 'uranium', 10000, 0, 8, 1, 12500, '2', 'uranium'),
(56, 'kidney', 9000, 15000, 0, 1, 16750, '2', 'pharmacy'),
(57, 'scalpel', 1000, 7500, 0, 1, 7500, '2', 'pharmacy'),
(58, 'beerp', 550, 3750, 3, 1, 1500, '2', 'speakeasy'),
(59, 'mauer', 5, 10, 0, 1, 10, '2', 'cop'),
(60, 'zipties', 5, 500, 0, 1, 500, '2', 'market'),
(61, 'puranium', 250, 1000, 0, 1, 1000, '2', 'uranium'),
(62, 'ipuranium', 3500, 9000, 0, 1, 9000, '2', 'uranium')
;;
DELIMITER ;
