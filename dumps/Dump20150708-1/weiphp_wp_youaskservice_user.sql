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
-- Table structure for table `wp_youaskservice_user`
--

DROP TABLE IF EXISTS `wp_youaskservice_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_youaskservice_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL COMMENT '客服昵称',
  `token` varchar(60) NOT NULL COMMENT 'token',
  `userName` varchar(60) NOT NULL COMMENT '客服帐号',
  `userPwd` varchar(32) NOT NULL COMMENT '客服密码',
  `endJoinDate` int(11) NOT NULL COMMENT '客服加入时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '客服在线状态',
  `state` tinyint(2) NOT NULL DEFAULT '0' COMMENT '客服状态',
  `isdelete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `kfid` varchar(255) NOT NULL COMMENT '客服编号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_youaskservice_user`
--

LOCK TABLES `wp_youaskservice_user` WRITE;
/*!40000 ALTER TABLE `wp_youaskservice_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_youaskservice_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-08 11:33:36
