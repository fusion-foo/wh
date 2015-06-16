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
-- Table structure for table `wp_credit_data`
--

DROP TABLE IF EXISTS `wp_credit_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_credit_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `credit_name` varchar(50) NOT NULL COMMENT '积分标识',
  `experience` int(10) NOT NULL DEFAULT '0' COMMENT '经验值',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '财富值',
  `cTime` int(10) NOT NULL COMMENT '记录时间',
  `admin_uid` int(10) NOT NULL DEFAULT '0' COMMENT '操作者UID',
  `token` varchar(255) NOT NULL COMMENT 'Token',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=711 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_credit_data`
--

LOCK TABLES `wp_credit_data` WRITE;
/*!40000 ALTER TABLE `wp_credit_data` DISABLE KEYS */;
INSERT INTO `wp_credit_data` VALUES (662,363,'custom_reply',0,0,1430757030,0,'gh_e11220975483'),(663,1,'weisite',0,0,1430757418,0,'gh_e11220975483'),(664,363,'chat',0,0,1430758272,0,'gh_e11220975483'),(665,1,'chat',0,0,1430905818,0,'toUser'),(666,1,'chat',0,0,1430906174,0,'toUser'),(667,363,'chat',0,0,1431142971,0,'gh_e11220975483'),(668,363,'chat',0,0,1431145434,0,'gh_e11220975483'),(669,1,'weisite',0,0,1431149531,0,'gh_e11220975483'),(670,363,'custom_reply',0,0,1431150007,0,'gh_e11220975483'),(671,363,'chat',0,0,1431152937,0,'gh_e11220975483'),(672,363,'chat',0,0,1431189520,0,'gh_e11220975483'),(673,363,'chat',0,0,1431189935,0,'gh_e11220975483'),(674,363,'chat',0,0,1431920505,0,'gh_e11220975483'),(675,363,'unsubscribe',-10,-10,1431923643,0,'gh_e11220975483'),(676,365,'subscribe',10,10,1431924154,0,'gh_e11220975483'),(677,366,'subscribe',10,10,1432099550,0,'gh_3ccacf499b63'),(678,365,'chat',0,0,1432533351,0,'gh_e11220975483'),(679,365,'chat',0,0,1432544972,0,'gh_e11220975483'),(680,365,'chat',0,0,1432549184,0,'gh_e11220975483'),(681,365,'chat',0,0,1432549817,0,'gh_e11220975483'),(682,365,'chat',0,0,1432550291,0,'gh_e11220975483'),(683,365,'chat',0,0,1432552252,0,'gh_e11220975483'),(684,365,'chat',0,0,1432552574,0,'gh_e11220975483'),(685,365,'chat',0,0,1432558754,0,'gh_e11220975483'),(686,1,'shop',0,0,1432572850,0,'gh_3ccacf499b63'),(687,365,'chat',0,0,1432573370,0,'gh_e11220975483'),(688,365,'chat',0,0,1432612241,0,'gh_e11220975483'),(689,365,'chat',0,0,1432614577,0,'gh_e11220975483'),(690,365,'chat',0,0,1432614889,0,'gh_e11220975483'),(691,365,'unsubscribe',-10,-10,1432615012,0,'gh_e11220975483'),(692,365,'subscribe',10,10,1432615025,0,'gh_e11220975483'),(693,365,'chat',0,0,1432615402,0,'gh_e11220975483'),(694,365,'chat',0,0,1432615535,0,'gh_e11220975483'),(695,365,'chat',0,0,1432615729,0,'gh_e11220975483'),(696,365,'chat',0,0,1432615729,0,'gh_e11220975483'),(697,365,'chat',0,0,1432615747,0,'gh_e11220975483'),(698,365,'chat',0,0,1432615752,0,'gh_e11220975483'),(699,365,'chat',0,0,1432615757,0,'gh_e11220975483'),(700,365,'chat',0,0,1432616114,0,'gh_e11220975483'),(701,365,'chat',0,0,1432616553,0,'gh_e11220975483'),(702,365,'chat',0,0,1432616901,0,'gh_e11220975483'),(703,365,'chat',0,0,1432617888,0,'gh_e11220975483'),(704,365,'chat',0,0,1432618226,0,'gh_e11220975483'),(705,365,'chat',0,0,1432619078,0,'gh_e11220975483'),(706,365,'unsubscribe',-10,-10,1432620858,0,'gh_e11220975483'),(707,367,'subscribe',10,10,1432620874,0,'gh_3ccacf499b63'),(708,367,'chat',0,0,1432639576,0,'gh_3ccacf499b63'),(709,1,'weisite',0,0,1432957926,0,'gh_e11220975483'),(710,367,'chat',0,0,1432992623,0,'gh_3ccacf499b63');
/*!40000 ALTER TABLE `wp_credit_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-01 11:50:56
