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
-- Table structure for table `wp_scratch`
--

DROP TABLE IF EXISTS `wp_scratch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_scratch` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `keyword` varchar(100) NOT NULL COMMENT '关键词',
  `use_tips` varchar(255) NOT NULL COMMENT '使用说明',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `intro` text NOT NULL COMMENT '封面简介',
  `end_time` int(10) NOT NULL COMMENT '结束时间',
  `cover` int(10) unsigned NOT NULL COMMENT '封面图片',
  `cTime` int(10) unsigned NOT NULL COMMENT '发布时间',
  `token` varchar(255) NOT NULL COMMENT 'Token',
  `start_time` int(10) NOT NULL COMMENT '开始时间',
  `end_tips` text NOT NULL COMMENT '过期说明',
  `predict_num` int(10) unsigned NOT NULL COMMENT '预计参与人数',
  `max_num` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '每人最多允许抽奖次数',
  `follower_condtion` char(50) NOT NULL DEFAULT '1' COMMENT '粉丝状态',
  `credit_conditon` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分限制',
  `credit_bug` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分消费',
  `addon_condition` varchar(255) NOT NULL COMMENT '插件场景限制',
  `collect_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已领取人数',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览人数',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  `end_img` int(10) unsigned NOT NULL COMMENT '过期提示图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_scratch`
--

LOCK TABLES `wp_scratch` WRITE;
/*!40000 ALTER TABLE `wp_scratch` DISABLE KEYS */;
INSERT INTO `wp_scratch` VALUES (22,'诱惑','用户获取刮刮卡后显示的提示信息','挂挂卡','挂挂卡',0,366,1430757704,'gh_e11220975483',0,'',300,1,'1',0,0,'',0,0,1430757704,0);
/*!40000 ALTER TABLE `wp_scratch` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-08 11:33:38
