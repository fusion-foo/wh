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
-- Table structure for table `wp_follow`
--

DROP TABLE IF EXISTS `wp_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_follow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `token` varchar(255) NOT NULL COMMENT '公众号',
  `openid` varchar(255) NOT NULL COMMENT 'OpenId',
  `nickname` varchar(255) NOT NULL COMMENT '昵称',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `city` varchar(100) NOT NULL COMMENT '城市',
  `province` varchar(100) NOT NULL COMMENT '省份',
  `country` varchar(100) NOT NULL COMMENT '国家',
  `language` varchar(50) NOT NULL DEFAULT 'zh_CN' COMMENT '语言',
  `headimgurl` varchar(255) NOT NULL COMMENT '头像',
  `subscribe_time` int(10) NOT NULL COMMENT '关注时间',
  `mobile` varchar(30) NOT NULL COMMENT '手机号',
  `status` tinyint(1) DEFAULT '1' COMMENT '用户状态',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '财富值',
  `experience` int(10) NOT NULL DEFAULT '0' COMMENT '经验值',
  `mTime` int(10) NOT NULL COMMENT '更新时间',
  `address` varchar(255) NOT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=368 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_follow`
--

LOCK TABLES `wp_follow` WRITE;
/*!40000 ALTER TABLE `wp_follow` DISABLE KEYS */;
INSERT INTO `wp_follow` VALUES (363,'gh_e11220975483','o1c1zt8l1EACFg4OoVJDNn1CZqlk','FRC',1,'','','','zh_CN','',1431920270,'15120961386',2,-10,-10,1431920295,''),(365,'gh_e11220975483','o1c1ztxTvf-ipAHHzKn9EVeGIReE','soing',0,'','','','zh_CN','375',1432615025,'15120961386',2,0,0,1435168987,''),(366,'gh_3ccacf499b63','oKnRpuEAev79yUxtyRM3HPN_7I4s','',0,'','','','zh_CN','367',1432099550,'15120961389',2,10,10,1432204468,'海南省儋州市那大镇民族中学'),(367,'gh_3ccacf499b63','oKnRpuEaHxG-nWh0VOxAuXIZBlqg','TEST',0,'','','','zh_CN','',1432620874,'88888888888',2,10,10,1432639569,'');
/*!40000 ALTER TABLE `wp_follow` ENABLE KEYS */;
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
