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
-- Table structure for table `wp_member_public`
--

DROP TABLE IF EXISTS `wp_member_public`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_member_public` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(10) DEFAULT NULL COMMENT '用户ID',
  `public_name` varchar(50) NOT NULL COMMENT '公众号名称',
  `public_id` varchar(100) NOT NULL COMMENT '公众号原始id',
  `wechat` varchar(100) NOT NULL COMMENT '微信号',
  `interface_url` varchar(255) NOT NULL COMMENT '接口地址',
  `headface_url` varchar(255) NOT NULL COMMENT '公众号头像',
  `area` varchar(50) NOT NULL COMMENT '地区',
  `addon_config` text NOT NULL COMMENT '插件配置',
  `addon_status` text NOT NULL COMMENT '插件状态',
  `token` varchar(100) NOT NULL COMMENT 'Token',
  `type` char(10) NOT NULL DEFAULT '0' COMMENT '公众号类型',
  `appid` varchar(255) NOT NULL COMMENT 'AppID',
  `secret` varchar(255) NOT NULL COMMENT 'AppSecret',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `encodingaeskey` varchar(255) NOT NULL COMMENT 'EncodingAESKey',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_member_public`
--

LOCK TABLES `wp_member_public` WRITE;
/*!40000 ALTER TABLE `wp_member_public` DISABLE KEYS */;
INSERT INTO `wp_member_public` VALUES (107,1,'儋州圈','gh_e11220975483','danzhouo','','','','{\"Wecome\":{\"type\":\"2\",\"keyword\":\"\\u4f60\\u597d\",\"title\":\"\",\"description\":\"\",\"pic_url\":\"\",\"url\":\"\"},\"WeiSite\":{\"title\":\"\\u70b9\\u51fb\\u8fdb\\u5165\\u9996\\u9875\",\"cover\":\"374\",\"info\":\"125615165\",\"background\":\"\",\"code\":\"\",\"template_index\":\"SimpleV1\",\"template_footer\":\"V2\",\"template_lists\":\"V4\",\"template_detail\":\"V2\",\"cover_url\":\"http:\\/\\/localhost\\/wh\\/Uploads\\/Picture\\/2015-06-13\\/557b1200c607f.jpg\"},\"Chat\":{\"tuling_key\":\"d812d695a5e0df258df952698faca6cc\",\"tuling_url\":\"http:\\/\\/www.tuling123.com\\/openapi\\/api\",\"simsim_key\":\"41250a68-3cb5-43c8-9aa2-d7b3caf519b1\",\"simsim_url\":\"http:\\/\\/sandbox.api.simsimi.com\\/request.p\",\"rand_reply\":\"\\u6211\\u4eca\\u5929\\u7d2f\\u4e86\\uff0c\\u660e\\u5929\\u518d\\u966a\\u4f60\\u804a\\u5929\\u5427\\r\\n\\u54c8\\u54c8~~\\r\\n\\u4f60\\u8bdd\\u597d\\u591a\\u554a\\uff0c\\u4e0d\\u8ddf\\u4f60\\u804a\\u4e86\\r\\n\\u867d\\u7136\\u4e0d\\u61c2\\uff0c\\u4f46\\u89c9\\u5f97\\u4f60\\u8bf4\\u5f97\\u5f88\\u5bf9\"}}','','gh_e11220975483','0','wx9c80f190225b7a2f','3ca98ba9d36c688bd84bbf31cfacc674',0,'ycOpx8CoYWZWqKUgGDegy6RjbAMrrIFX8LqGoGaY4ah'),(109,1,'管理测试号','gh_3ccacf499b63','gh_3ccacf499b63','','','','{\"Shop\":{\"title\":\"fshop\",\"cover\":\"368\",\"hours\":\"\",\"service\":\"\",\"tips\":\"\"},\"Shangcheng\":{\"title\":\"\\u6b22\\u8fce\\u5149\\u4e34\",\"cover\":\"369\",\"info\":\"\\u6b22\\u8fce\\u5149\\u4e34\"}}','{\"CustomReply\":1}','gh_3ccacf499b63','2','wxd4b13d591175b73c','4a09e780ea92218c043647ed24e2dce5',0,'');
/*!40000 ALTER TABLE `wp_member_public` ENABLE KEYS */;
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
