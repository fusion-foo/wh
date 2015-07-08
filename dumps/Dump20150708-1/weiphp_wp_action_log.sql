CREATE DATABASE  IF NOT EXISTS `weiphp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `weiphp`;
-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: weiphp
-- ------------------------------------------------------
-- Server version	5.6.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_action_log`
--

DROP TABLE IF EXISTS `wp_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_action_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `action_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '行为id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '执行用户id',
  `action_ip` bigint(20) NOT NULL COMMENT '执行行为者ip',
  `model` varchar(50) NOT NULL DEFAULT '' COMMENT '触发行为的表',
  `record_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '触发行为的数据id',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '日志备注',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`),
  KEY `action_ip_ix` (`action_ip`),
  KEY `action_id_ix` (`action_id`),
  KEY `user_id_ix` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1634 DEFAULT CHARSET=utf8 COMMENT='行为日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_action_log`
--

LOCK TABLES `wp_action_log` WRITE;
/*!40000 ALTER TABLE `wp_action_log` DISABLE KEYS */;
INSERT INTO `wp_action_log` VALUES (1447,12,1,2130706433,'member',1,'fusion在2015-05-05 00:04登录了后台',1,1430755440),(1448,12,1,2130706433,'member',1,'fusion在2015-05-07 18:19登录了后台',1,1430993983),(1449,12,1,2130706433,'member',1,'fusion在2015-05-09 13:14登录了后台',1,1431148452),(1450,12,1,2130706433,'member',1,'fusion在2015-05-15 15:38登录了后台',1,1431675534),(1451,12,1,2130706433,'member',1,'fusion在2015-05-17 15:20登录了后台',1,1431847217),(1452,12,1,1899695285,'member',1,'soing在2015-05-18 13:06登录了后台',1,1431925613),(1453,12,1,1899695285,'member',1,'fusion在2015-05-18 13:10登录了后台',1,1431925809),(1454,12,1,1899695285,'member',1,'fusion在2015-05-19 10:08登录了后台',1,1432001280),(1455,7,1,1899695285,'model',153,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432054677),(1456,8,1,1899695285,'attribute',1343,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432054825),(1457,12,1,1899695285,'member',1,'fusion在2015-05-20 11:21登录了后台',1,1432092111),(1458,12,1,1899695285,'member',1,'fusion在2015-05-21 10:06登录了后台',1,1432174001),(1459,7,1,1899695285,'model',69,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432177620),(1460,7,1,1899695285,'model',69,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432177655),(1461,7,1,1899695285,'model',89,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432177665),(1462,7,1,1899695285,'model',89,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432177876),(1463,7,1,1899695285,'model',89,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432177985),(1464,8,1,1899695285,'attribute',1344,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432180323),(1465,8,1,1899695285,'attribute',1344,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432180347),(1466,7,1,1899695285,'model',89,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432180428),(1467,7,1,1899695285,'model',89,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432180477),(1468,7,1,1899695285,'model',89,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432180546),(1469,7,1,1899695285,'model',89,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432184647),(1470,7,1,1899695285,'model',89,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432184889),(1471,12,1,1899695285,'member',1,'fusion在2015-05-25 11:18登录了后台',1,1432523891),(1472,7,1,1899695285,'model',154,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432524388),(1473,8,1,1899695285,'attribute',1345,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432525206),(1474,7,1,1899695285,'model',154,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432543536),(1475,8,1,1899695285,'attribute',1345,'操作url：/wh/index.php?s=/Admin/Attribute/remove/id/1345.html',1,1432543543),(1476,7,1,1899695285,'model',154,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432543574),(1477,8,1,1899695285,'attribute',1346,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432543773),(1478,8,1,1899695285,'attribute',1347,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432543856),(1479,8,1,1899695285,'attribute',1347,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432543882),(1480,8,1,1899695285,'attribute',1348,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432543959),(1481,8,1,1899695285,'attribute',1349,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432544079),(1482,8,1,1899695285,'attribute',1350,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432544157),(1483,8,1,1899695285,'attribute',1351,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432544216),(1484,8,1,1899695285,'attribute',779,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432544700),(1485,8,1,1899695285,'attribute',1352,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432552139),(1486,12,1,1899695285,'member',1,'fusion在2015-05-26 11:14登录了后台',1,1432610044),(1487,12,1,2130706433,'member',1,'fusion在2015-05-26 13:10登录了后台',1,1432617023),(1488,12,1,0,'member',1,'fusion在2015-05-27 14:53登录了后台',1,1432709620),(1489,12,1,0,'member',1,'fusion在2015-05-28 11:34登录了后台',1,1432784074),(1490,8,1,0,'attribute',635,'操作url：/wh/index.php?s=/Admin/Attribute/remove/id/635.html',1,1432784308),(1491,8,1,0,'attribute',636,'操作url：/wh/index.php?s=/Admin/Attribute/remove/id/636.html',1,1432784314),(1492,8,1,0,'attribute',1371,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432784597),(1493,7,1,0,'model',158,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432787175),(1494,8,1,0,'attribute',1372,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432787215),(1495,8,1,0,'attribute',1373,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432787253),(1496,8,1,0,'attribute',1374,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432787386),(1497,8,1,0,'attribute',1375,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432787441),(1498,8,1,0,'attribute',1376,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432788459),(1499,8,1,0,'attribute',1377,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432788493),(1500,8,1,0,'attribute',1378,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432788644),(1501,8,1,0,'attribute',1377,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432788657),(1502,8,1,0,'attribute',1377,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432788681),(1503,8,1,0,'attribute',1379,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432789586),(1504,8,1,0,'attribute',1379,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432789606),(1505,8,1,0,'attribute',1380,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432789756),(1506,8,1,0,'attribute',1381,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432789831),(1507,8,1,0,'attribute',1376,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432790488),(1508,7,1,0,'model',159,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432797265),(1509,8,1,0,'attribute',1382,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432797571),(1510,8,1,0,'attribute',1383,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432797737),(1511,8,1,0,'attribute',1384,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432797996),(1512,8,1,0,'attribute',1384,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798028),(1513,8,1,0,'attribute',1384,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798093),(1514,8,1,0,'attribute',1383,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798161),(1515,8,1,0,'attribute',1384,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798172),(1516,8,1,0,'attribute',1382,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798189),(1517,8,1,0,'attribute',1385,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798252),(1518,8,1,0,'attribute',1386,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798334),(1519,8,1,0,'attribute',1387,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798386),(1520,8,1,0,'attribute',1388,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798491),(1521,8,1,0,'attribute',1389,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798597),(1522,8,1,0,'attribute',1390,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798660),(1523,8,1,0,'attribute',1391,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798698),(1524,8,1,0,'attribute',1392,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798730),(1525,8,1,0,'attribute',1393,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798832),(1526,8,1,0,'attribute',1394,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798883),(1527,8,1,0,'attribute',1392,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798902),(1528,8,1,0,'attribute',1391,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798913),(1529,8,1,0,'attribute',1389,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798927),(1530,8,1,0,'attribute',1388,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798936),(1531,8,1,0,'attribute',1387,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798945),(1532,8,1,0,'attribute',1386,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798954),(1533,8,1,0,'attribute',1384,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798967),(1534,8,1,0,'attribute',1383,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798977),(1535,8,1,0,'attribute',1382,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432798986),(1536,8,1,0,'attribute',1394,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432799095),(1537,8,1,0,'attribute',1393,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432799107),(1538,8,1,0,'attribute',1392,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432799125),(1539,8,1,0,'attribute',1391,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432799139),(1540,8,1,0,'attribute',1389,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432799154),(1541,8,1,0,'attribute',1388,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432799164),(1542,8,1,0,'attribute',1387,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432799177),(1543,8,1,0,'attribute',1386,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432799193),(1544,8,1,0,'attribute',1385,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432799209),(1545,8,1,0,'attribute',1383,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432799224),(1546,8,1,0,'attribute',1382,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432799245),(1547,8,1,0,'attribute',1384,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432799259),(1548,7,1,0,'model',160,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432799334),(1549,8,1,0,'attribute',1395,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432799382),(1550,8,1,0,'attribute',1396,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432828057),(1551,8,1,0,'attribute',1397,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432828132),(1552,8,1,0,'attribute',1398,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432828209),(1553,8,1,0,'attribute',1399,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432828257),(1554,7,1,0,'model',83,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432921582),(1555,7,1,0,'model',160,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432921614),(1556,8,1,0,'attribute',1399,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432921635),(1557,8,1,0,'attribute',1377,'操作url：/wh/index.php?s=/Admin/Attribute/remove/id/1377.html',1,1432922508),(1558,7,1,0,'model',161,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432922614),(1559,7,1,0,'model',161,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432922687),(1560,8,1,0,'attribute',1400,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432922739),(1561,8,1,0,'attribute',1401,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432922762),(1562,8,1,0,'attribute',1402,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432922845),(1563,8,1,0,'attribute',1402,'操作url：/wh/index.php?s=/Admin/Attribute/remove/id/1402.html',1,1432922892),(1564,8,1,0,'attribute',1403,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432922935),(1565,7,1,0,'model',162,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432923107),(1566,8,1,0,'attribute',1404,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432923201),(1567,8,1,0,'attribute',1405,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432923278),(1568,8,1,0,'attribute',1406,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432923352),(1569,8,1,0,'attribute',1406,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432923409),(1570,8,1,0,'attribute',1407,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432923476),(1571,8,1,0,'attribute',1408,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432923520),(1572,7,1,0,'model',163,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432923632),(1573,7,1,0,'model',161,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432923667),(1574,7,1,0,'model',163,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432923688),(1575,7,1,0,'model',158,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432923718),(1576,7,1,0,'model',163,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1432923755),(1577,8,1,0,'attribute',1409,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432923834),(1578,8,1,0,'attribute',1410,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432923998),(1579,8,1,0,'attribute',1411,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432924157),(1580,8,1,0,'attribute',1412,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432924183),(1581,8,1,0,'attribute',1398,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432966058),(1582,8,1,0,'attribute',1397,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432966101),(1583,8,1,0,'attribute',1403,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432966139),(1584,8,1,0,'attribute',1409,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432966169),(1585,8,1,0,'attribute',1410,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432966195),(1586,8,1,0,'attribute',1396,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432966258),(1587,8,1,0,'attribute',1409,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1432966286),(1588,12,1,2566942480,'member',1,'fusion在2015-06-02 23:01登录了后台',1,1433257293),(1589,7,1,2566942480,'model',164,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1433265745),(1590,8,1,2566942480,'attribute',1413,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1433265811),(1591,8,1,2566942480,'attribute',1414,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1433265902),(1592,8,1,2566942480,'attribute',1415,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1433265944),(1593,12,1,0,'member',1,'fusion在2015-06-04 16:32登录了后台',1,1433406723),(1594,12,1,0,'member',1,'fusion在2015-06-04 18:53登录了后台',1,1433415211),(1595,8,1,0,'attribute',1414,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1433490932),(1596,8,1,0,'attribute',1414,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1433491153),(1597,8,1,0,'attribute',1414,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1433492031),(1598,8,1,0,'attribute',1416,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1433495535),(1599,8,1,0,'attribute',1414,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1433695086),(1600,8,1,0,'attribute',1417,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1433695171),(1601,8,1,0,'attribute',1414,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1433695698),(1602,8,1,0,'attribute',1414,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1433695818),(1603,8,1,0,'attribute',1414,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1433695889),(1604,8,1,0,'attribute',625,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1433700821),(1605,8,1,0,'attribute',1418,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1433702218),(1606,8,1,0,'attribute',1418,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1433702386),(1607,12,1,0,'member',1,'fusion在2015-06-08 10:35登录了后台',1,1433730936),(1608,8,1,0,'attribute',1419,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1433733343),(1609,7,1,0,'model',159,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1433754237),(1610,12,1,0,'member',1,'fusion在2015-06-12 14:08登录了后台',1,1434089286),(1611,12,1,0,'member',1,'fusion在2015-06-25 02:16登录了后台',1,1435169791),(1612,8,1,0,'attribute',679,'操作url：/wh/index.php?s=/Admin/Attribute/remove/id/679.html',1,1435217888),(1613,8,1,0,'attribute',680,'操作url：/wh/index.php?s=/Admin/Attribute/remove/id/680.html',1,1435217894),(1614,8,1,0,'attribute',681,'操作url：/wh/index.php?s=/Admin/Attribute/remove/id/681.html',1,1435217900),(1615,8,1,0,'attribute',682,'操作url：/wh/index.php?s=/Admin/Attribute/remove/id/682.html',1,1435217906),(1616,8,1,0,'attribute',678,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1435218012),(1617,8,1,0,'attribute',1433,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1435218098),(1618,8,1,0,'attribute',626,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1435384762),(1619,8,1,0,'attribute',637,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1435385015),(1620,8,1,0,'attribute',638,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1435385028),(1621,8,1,0,'attribute',1434,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1435392287),(1622,8,1,0,'attribute',1433,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1435392451),(1623,8,1,0,'attribute',628,'操作url：/wh/index.php?s=/Admin/Attribute/remove/id/628.html',1,1435392523),(1624,8,1,0,'attribute',1416,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1435392616),(1625,8,1,0,'attribute',1419,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1435399063),(1626,8,1,0,'attribute',1417,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1435428699),(1627,8,1,0,'attribute',1417,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1435428709),(1628,7,1,0,'model',166,'操作url：/wh/index.php?s=/Admin/Model/update.html',1,1435430311),(1629,8,1,0,'attribute',1435,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1435430439),(1630,8,1,0,'attribute',1436,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1435430483),(1631,8,1,0,'attribute',1437,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1435430599),(1632,8,1,0,'attribute',1381,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1435503394),(1633,8,1,0,'attribute',1381,'操作url：/wh/index.php?s=/Admin/Attribute/update.html',1,1435507515);
/*!40000 ALTER TABLE `wp_action_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-08 11:33:39
