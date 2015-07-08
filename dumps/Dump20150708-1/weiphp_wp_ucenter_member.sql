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
-- Table structure for table `wp_ucenter_member`
--

DROP TABLE IF EXISTS `wp_ucenter_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_ucenter_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `email` char(255) NOT NULL COMMENT '用户邮箱',
  `mobile` char(15) NOT NULL COMMENT '用户手机',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `reg_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '最后登录IP',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) DEFAULT '0' COMMENT '用户状态',
  `openid` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=368 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ucenter_member`
--

LOCK TABLES `wp_ucenter_member` WRITE;
/*!40000 ALTER TABLE `wp_ucenter_member` DISABLE KEYS */;
INSERT INTO `wp_ucenter_member` VALUES (1,'fusion','25924493f25bca600936e32feceed167','furichang@gmail.com','',1430755370,2130706433,1436253825,0,1430755370,1,NULL,NULL),(363,'55479e9e6ce1a470','ceaf00d3868b739e24115656d5ad2066','1430757022480@weiphp.cn','',1430757022,2362390093,0,0,1430757022,1,'o1c1zt8l1EACFg4OoVJDNn1CZqlk','gh_e11220975483'),(364,'soing','25924493f25bca600936e32feceed167','richang.foo@foxmail.com','',1431923333,2130706433,1432138395,1899695285,1431923333,1,NULL,NULL),(365,'55596dbae116e480','ceaf00d3868b739e24115656d5ad2066','1431924154270@weiphp.cn','',1431924154,2362390093,0,0,1431924154,1,'o1c1ztxTvf-ipAHHzKn9EVeGIReE','gh_e11220975483'),(366,'555c1ade245d6580','ceaf00d3868b739e24115656d5ad2066','143209955010@weiphp.cn','',1432099550,2362390093,0,0,1432099550,1,'oKnRpuEAev79yUxtyRM3HPN_7I4s','gh_3ccacf499b63'),(367,'55640f4ac66a2300','ceaf00d3868b739e24115656d5ad2066','1432620874530@weiphp.cn','',1432620874,2362390093,0,0,1432620874,1,'oKnRpuEaHxG-nWh0VOxAuXIZBlqg','gh_3ccacf499b63');
/*!40000 ALTER TABLE `wp_ucenter_member` ENABLE KEYS */;
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
