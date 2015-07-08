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
-- Table structure for table `wp_custom_reply_news`
--

DROP TABLE IF EXISTS `wp_custom_reply_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_custom_reply_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `keyword` varchar(100) NOT NULL COMMENT '关键词',
  `keyword_type` tinyint(2) DEFAULT NULL COMMENT '关键词类型',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `intro` text COMMENT '简介',
  `cate_id` int(10) unsigned DEFAULT '0' COMMENT '所属类别',
  `cover` int(10) unsigned DEFAULT NULL COMMENT '封面图片',
  `content` text NOT NULL COMMENT '内容',
  `cTime` int(10) DEFAULT NULL COMMENT '发布时间',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序号',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `token` varchar(255) NOT NULL COMMENT 'Token',
  `jump_url` varchar(255) NOT NULL COMMENT '外链',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_custom_reply_news`
--

LOCK TABLES `wp_custom_reply_news` WRITE;
/*!40000 ALTER TABLE `wp_custom_reply_news` DISABLE KEYS */;
INSERT INTO `wp_custom_reply_news` VALUES (51,'你好',0,'收到','这是我在测试',56,0,'<p>你好 我收到！</p>',1430756505,0,5,'gh_e11220975483','');
/*!40000 ALTER TABLE `wp_custom_reply_news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-08 11:33:37
