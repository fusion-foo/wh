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
  `title` varchar(255) NOT NULL COMMENT '商品名称',
  `intro` text NOT NULL COMMENT '商品简介',
  `mTime` int(10) NOT NULL COMMENT '修改时间',
  `cover` int(10) unsigned NOT NULL COMMENT '商品封面图片',
  `content` text NOT NULL COMMENT '商品详情',
  `cTime` int(10) unsigned NOT NULL COMMENT '发布时间',
  `token` varchar(255) NOT NULL COMMENT 'Token',
  `param` text NOT NULL COMMENT '商品参数',
  `ad_url` varchar(255) NOT NULL COMMENT '商品广告页面',
  `buy_url` varchar(255) NOT NULL COMMENT '购买地址',
  `market_price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '市场价',
  `discount_price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '打折价',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `img_1` int(10) unsigned NOT NULL COMMENT '商品图片1',
  `img_2` int(10) unsigned NOT NULL COMMENT '商品图片2',
  `img_3` int(10) unsigned NOT NULL COMMENT '商品图片3',
  `img_4` int(10) unsigned NOT NULL COMMENT '商品图片4',
  `img_5` int(10) unsigned NOT NULL COMMENT '商品图片5',
  `cate_id` char(50) NOT NULL COMMENT '商品分类',
  `bug_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '成交量',
  `like` int(10) NOT NULL DEFAULT '0' COMMENT '赞数',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `isbook` int(10) NOT NULL COMMENT '是否为预定类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_shop_goods`
--

LOCK TABLES `wp_shop_goods` WRITE;
/*!40000 ALTER TABLE `wp_shop_goods` DISABLE KEYS */;
INSERT INTO `wp_shop_goods` VALUES (22,'开心小蛋糕','开心小蛋糕  ',1432573269,369,'',1432573269,'gh_3ccacf499b63','','','',100,50,0,370,371,372,369,373,'40',0,0,'',0);
/*!40000 ALTER TABLE `wp_shop_goods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-01 11:50:55
