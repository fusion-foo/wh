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
-- Table structure for table `wp_shop_goods`
--

DROP TABLE IF EXISTS `wp_shop_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_shop_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) NOT NULL COMMENT '商品名称',
  `brief` text NOT NULL COMMENT '商品简介',
  `mTime` int(10) NOT NULL COMMENT '修改时间',
  `content` text NOT NULL COMMENT '商品详情',
  `cTime` int(10) unsigned NOT NULL COMMENT '发布时间',
  `token` varchar(255) NOT NULL COMMENT 'Token',
  `param` text NOT NULL COMMENT '商品参数',
  `ad_url` varchar(255) NOT NULL COMMENT '商品广告页面',
  `buy_url` varchar(255) NOT NULL COMMENT '购买地址',
  `mprice` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '市场价',
  `sprice` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '打折价',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `albums` varchar(255) DEFAULT NULL COMMENT '商品图册',
  `cate_id` char(50) NOT NULL COMMENT '商品分类',
  `bug_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '成交量',
  `like` int(10) NOT NULL DEFAULT '0' COMMENT '赞数',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `cpattern` varchar(255) NOT NULL COMMENT '消费方式',
  `sales_record` int(10) NOT NULL COMMENT '销量记录',
  `status` int(10) NOT NULL DEFAULT '1' COMMENT '状态',
  `cid` int(10) NOT NULL COMMENT '类别ID',
  `albumsuid` varchar(255) DEFAULT NULL COMMENT '相册图片ID',
  `pawarded` int(10) NOT NULL DEFAULT '0' COMMENT '赠送积分',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_shop_goods`
--

LOCK TABLES `wp_shop_goods` WRITE;
/*!40000 ALTER TABLE `wp_shop_goods` DISABLE KEYS */;
INSERT INTO `wp_shop_goods` VALUES (111,'FE','',0,'',1435742806,'gh_e11220975483','','','',5,5,0,'','122',0,0,'','0',0,1,129,'8A96AC88',5),(23,'小琼饼干','小琼饼干',1432573269,'',1432573269,'gh_e11220975483','','','',15,8,25,'','2',532,2,'','0',0,1,20002,NULL,0),(14,'太阳包','太阳包',1435940943,'',1432573269,'gh_e11220975483','','','',16,15,434,'','3',651,5,'','1,2',0,1,30000,'',0),(15,'香芋包','香芋包',1432573269,'',1432573269,'gh_e11220975483','','','',23,18,281,'','3',429,0,'','0',0,1,30001,NULL,0),(6,'核桃饼','核桃饼',1432573269,'',1432573269,'gh_e11220975483','','','',2,2,387,'','2',1370,5,'','0',0,1,20001,NULL,0),(7,'老婆饼','老婆饼',1432573269,'',1432573269,'gh_e11220975483','','','',5,4,655,'','2',3510,5,'','0',0,1,20000,NULL,0),(9,'麦片包','麦片包',1432573269,'',1432573269,'gh_e11220975483','','','',4,4,541,'','3',651,5,'','0',0,1,30003,NULL,0),(10,'肉松可口饼','肉松可口饼',1432573269,'',1432573269,'gh_e11220975483','','','',6,5,2661,'','2',221,2,'','0',0,1,20009,NULL,0),(11,'儋州米烂','儋州米烂',1432573269,'',1432573269,'gh_e11220975483','','','',7,2,1120,'','6',3140,5,'','0',0,1,60000,NULL,0),(12,'后安粉','后安粉',1432573269,'',1432573269,'gh_e11220975483','','','',8,5,536,'','27',2365,4,'','0',0,1,50000,NULL,0),(13,'海南淹粉','海南淹粉',1432573269,'',1432573269,'gh_3ccacf499b63','','','',4,4,300,'0','6',1342,4,'','0',0,1,60001,NULL,0),(118,'testProd','这只是一个测试商品。',1436298526,'',1436076911,'gh_e11220975483','','','',5,5,0,'/儋州圈/7FD0E635/Money.svg,/儋州圈/7FD0E635/123.png,/儋州圈/7FD0E635/Bills_and_coins.svg,/儋州圈/7FD0E635/Emblem-money.svg','139',0,0,'','0',0,1,140,'7FD0E635',5);
/*!40000 ALTER TABLE `wp_shop_goods` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger setGoodsCid before insert
on wp_shop_goods  for each row
begin
set New.cid = _nextval('cid');
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-08 11:33:36
