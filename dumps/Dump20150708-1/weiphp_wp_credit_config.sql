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
-- Table structure for table `wp_credit_config`
--

DROP TABLE IF EXISTS `wp_credit_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_credit_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) NOT NULL COMMENT '积分描述',
  `name` varchar(50) DEFAULT NULL COMMENT '积分标识',
  `mTime` int(10) NOT NULL COMMENT '修改时间',
  `experience` int(10) NOT NULL DEFAULT '0' COMMENT '经验值',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '财富值',
  `token` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Token',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_credit_config`
--

LOCK TABLES `wp_credit_config` WRITE;
/*!40000 ALTER TABLE `wp_credit_config` DISABLE KEYS */;
INSERT INTO `wp_credit_config` VALUES (1,'关注公众号','subscribe',1432197636,10,10,'0'),(2,'取消关注公众号','unsubscribe',1398565077,-10,-10,'0'),(3,'参与投票','vote',1398565597,0,0,'0'),(4,'参与调研','survey',1398565640,0,0,'0'),(5,'参与考试','exam',1398565659,0,0,'0'),(6,'参与测试','test',1398565681,0,0,'0'),(7,'微信聊天','chat',1398565740,0,0,'0'),(8,'建议意见反馈','suggestions',1398565798,0,0,'0'),(9,'会员卡绑定','card_bind',1398565875,0,0,'0'),(10,'获取优惠卷','coupons',1398565926,0,0,'0'),(11,'访问微网站','weisite',1398565973,0,0,'0'),(12,'查看自定义回复内容','custom_reply',1398566068,0,0,'0'),(13,'填写通用表单','forms',1398566118,0,0,'0'),(14,'访问微商店','shop',1398566206,0,0,'0'),(15,'参与投票','vote',1398758905,10,50,'gh_a23e6c0ae2e3'),(16,'参与调研','survey',1398759248,1,2,'gh_a23e6c0ae2e3'),(17,'关注公众号','subscribe',1400145471,10,10,'-1'),(18,'取消关注公众号','unsubscribe',1399989514,-10,-10,'-1'),(19,'获取优惠卷','coupons',1400059943,0,0,'-1');
/*!40000 ALTER TABLE `wp_credit_config` ENABLE KEYS */;
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
