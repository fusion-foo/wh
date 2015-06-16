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
-- Table structure for table `wp_interaction_statistics`
--

DROP TABLE IF EXISTS `wp_interaction_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_interaction_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `openid` varchar(255) NOT NULL COMMENT 'OpenId',
  `token` varchar(255) NOT NULL COMMENT '公众号',
  `addon` varchar(255) NOT NULL COMMENT '插件',
  `month` int(10) NOT NULL COMMENT '月份',
  `day` int(10) NOT NULL COMMENT '日期',
  `count` int(10) NOT NULL DEFAULT '0' COMMENT '统计',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_interaction_statistics`
--

LOCK TABLES `wp_interaction_statistics` WRITE;
/*!40000 ALTER TABLE `wp_interaction_statistics` DISABLE KEYS */;
INSERT INTO `wp_interaction_statistics` VALUES (31,1,'-1','gh_e11220975483','UserCenter',201505,20150530,9),(30,1,'-1','gh_e11220975483','Wecome',201505,20150530,3),(29,1,'-1','gh_e11220975483','Chat',201505,20150530,6),(28,367,'oKnRpuEaHxG-nWh0VOxAuXIZBlqg','gh_3ccacf499b63','Shangcheng',201505,20150527,1),(27,367,'oKnRpuEaHxG-nWh0VOxAuXIZBlqg','gh_3ccacf499b63','Shangcheng',201505,20150526,3),(24,367,'oKnRpuEaHxG-nWh0VOxAuXIZBlqg','gh_3ccacf499b63','UserCenter',201505,20150526,3),(25,1,'-1','gh_e11220975483','CustomMenu',201505,20150526,4),(26,367,'oKnRpuEaHxG-nWh0VOxAuXIZBlqg','gh_3ccacf499b63','Chat',201505,20150526,1),(34,1,'-1','gh_e11220975483','Shop',201505,20150530,94),(33,1,'-1','gh_e11220975483','Card',201505,20150530,3),(32,1,'-1','gh_e11220975483','CustomMenu',201505,20150530,3),(35,1,'-1','gh_e11220975483','Juhe',201505,20150530,2),(36,1,'-1','gh_e11220975483','Coupon',201505,20150530,5),(37,1,'-1','gh_e11220975483','Leaflets',201505,20150530,2),(38,1,'-1','gh_e11220975483','HelloWorld',201505,20150530,2),(39,1,'-1','gh_e11220975483','Robot',201505,20150530,5),(40,1,'-1','gh_e11220975483','Extensions',201505,20150530,4),(41,1,'-1','gh_e11220975483','YouaskService',201505,20150530,7),(42,1,'-1','gh_e11220975483','Exam',201505,20150530,3),(43,1,'-1','gh_e11220975483','Vote',201505,20150530,2),(44,1,'-1','gh_e11220975483','Survey',201505,20150530,2),(45,1,'-1','gh_e11220975483','Scratch',201505,20150530,2),(46,1,'-1','gh_e11220975483','Test',201505,20150530,1),(47,1,'-1','gh_e11220975483','WeiSite',201505,20150530,31),(48,1,'-1','gh_e11220975483','Suggestions',201505,20150530,1),(49,1,'-1','gh_e11220975483','CustomReply',201505,20150530,4),(50,367,'oKnRpuEaHxG-nWh0VOxAuXIZBlqg','gh_3ccacf499b63','Chat',201505,20150530,1),(51,1,'-1','gh_e11220975483','Card',201505,20150531,1),(52,1,'-1','gh_e11220975483','Shop',201505,20150531,15),(53,1,'-1','gh_e11220975483','Shop',201506,20150601,29);
/*!40000 ALTER TABLE `wp_interaction_statistics` ENABLE KEYS */;
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
