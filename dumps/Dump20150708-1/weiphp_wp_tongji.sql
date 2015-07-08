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
-- Table structure for table `wp_tongji`
--

DROP TABLE IF EXISTS `wp_tongji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_tongji` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `token` varchar(255) NOT NULL COMMENT 'Token',
  `month` int(10) NOT NULL COMMENT '月份',
  `day` int(10) NOT NULL COMMENT '日期',
  `content` text NOT NULL COMMENT '统计数据',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_tongji`
--

LOCK TABLES `wp_tongji` WRITE;
/*!40000 ALTER TABLE `wp_tongji` DISABLE KEYS */;
INSERT INTO `wp_tongji` VALUES (1,'gh_e11220975483',201505,20150505,'a:15:{s:6:\"Wecome\";i:3;s:10:\"CustomMenu\";i:24;s:11:\"CustomReply\";i:10;s:4:\"Chat\";i:7;s:8:\"Leaflets\";i:2;s:4:\"Vote\";i:14;s:7:\"WeiSite\";i:40;s:5:\"Robot\";i:1;s:10:\"Extensions\";i:1;s:4:\"Exam\";i:1;s:13:\"YouaskService\";i:1;s:6:\"Survey\";i:3;s:6:\"Coupon\";i:1;s:7:\"Scratch\";i:7;s:11:\"Suggestions\";i:3;}'),(2,'gh_e11220975483',201505,20150506,'a:1:{s:11:\"CustomReply\";i:18;}'),(3,'toUser',201505,20150506,'a:2:{s:4:\"Chat\";i:7;s:6:\"Wecome\";i:1;}'),(4,'gh_e11220975483',201505,20150507,'a:2:{s:11:\"CustomReply\";i:9;s:10:\"UserCenter\";i:9;}'),(5,'gh_e11220975483',201505,20150509,'a:7:{s:10:\"UserCenter\";i:41;s:11:\"CustomReply\";i:31;s:4:\"Chat\";i:7;s:10:\"CustomMenu\";i:7;s:4:\"Card\";i:3;s:7:\"WeiSite\";i:42;s:8:\"Leaflets\";i:1;}'),(6,'-1',201505,20150509,'a:1:{s:10:\"UserCenter\";i:1;}'),(7,'gh_e11220975483',201505,20150510,'a:2:{s:10:\"UserCenter\";i:10;s:4:\"Chat\";i:5;}'),(8,'gh_e11220975483',201505,20150514,'a:7:{s:4:\"Card\";i:16;s:6:\"Coupon\";i:1;s:4:\"Juhe\";i:1;s:10:\"HelloWorld\";i:1;s:8:\"Leaflets\";i:1;s:10:\"UserCenter\";i:4;s:5:\"Forms\";i:1;}'),(9,'gh_e11220975483',201505,20150515,'a:5:{s:4:\"Chat\";i:1;s:4:\"Vote\";i:1;s:10:\"UserCenter\";i:11;s:4:\"Card\";i:9;s:6:\"Coupon\";i:2;}'),(10,'gh_e11220975483',201505,20150516,'a:2:{s:4:\"Card\";i:16;s:10:\"UserCenter\";i:7;}'),(11,'gh_e11220975483',201505,20150518,'a:4:{s:10:\"UserCenter\";i:10;s:4:\"Card\";i:11;s:4:\"Chat\";i:1;s:11:\"CustomReply\";i:1;}'),(12,'-1',201505,20150518,'a:1:{s:10:\"UserCenter\";i:2;}'),(13,'gh_e11220975483',201505,20150520,'a:3:{s:10:\"UserCenter\";i:3;s:4:\"Juhe\";i:1;s:10:\"HelloWorld\";i:1;}'),(14,'gh_3ccacf499b63',201505,20150520,'a:1:{s:10:\"UserCenter\";i:16;}'),(15,'gh_3ccacf499b63',201505,20150521,'a:1:{s:10:\"UserCenter\";i:4;}'),(16,'gh_e11220975483',201505,20150525,'a:3:{s:4:\"Chat\";i:31;s:4:\"Card\";i:3;s:10:\"UserCenter\";i:2;}'),(17,'gh_3ccacf499b63',201505,20150525,'a:1:{s:10:\"UserCenter\";i:1;}'),(18,'gh_3ccacf499b63',201505,20150526,'a:5:{s:10:\"UserCenter\";i:6;s:4:\"Shop\";i:47;s:10:\"Shangcheng\";i:32;s:10:\"CustomMenu\";i:109;s:4:\"Chat\";i:2;}'),(19,'gh_e11220975483',201505,20150526,'a:6:{s:10:\"UserCenter\";i:1;s:4:\"Chat\";i:49;s:10:\"Shangcheng\";i:10;s:4:\"Card\";i:10;s:11:\"CustomReply\";i:1;s:10:\"CustomMenu\";i:4;}'),(20,'gh_3ccacf499b63',201505,20150527,'a:1:{s:10:\"Shangcheng\";i:1;}'),(21,'gh_e11220975483',201505,20150530,'a:21:{s:4:\"Chat\";i:6;s:6:\"Wecome\";i:3;s:10:\"UserCenter\";i:9;s:10:\"CustomMenu\";i:3;s:4:\"Card\";i:3;s:4:\"Shop\";i:94;s:4:\"Juhe\";i:2;s:6:\"Coupon\";i:5;s:8:\"Leaflets\";i:2;s:10:\"HelloWorld\";i:2;s:5:\"Robot\";i:5;s:10:\"Extensions\";i:4;s:13:\"YouaskService\";i:7;s:4:\"Exam\";i:3;s:4:\"Vote\";i:2;s:6:\"Survey\";i:2;s:7:\"Scratch\";i:2;s:4:\"Test\";i:1;s:7:\"WeiSite\";i:31;s:11:\"Suggestions\";i:1;s:11:\"CustomReply\";i:4;}'),(22,'gh_3ccacf499b63',201505,20150530,'a:1:{s:4:\"Chat\";i:1;}'),(23,'gh_e11220975483',201505,20150531,'a:2:{s:4:\"Card\";i:1;s:4:\"Shop\";i:15;}'),(24,'gh_e11220975483',201506,20150601,'a:1:{s:4:\"Shop\";i:56;}'),(25,'-1',201506,20150601,'a:1:{s:4:\"Shop\";i:6;}'),(26,'gh_e11220975483',201506,20150602,'a:1:{s:4:\"Shop\";i:63;}'),(27,'-1',201506,20150604,'a:1:{s:4:\"Shop\";i:3;}'),(28,'gh_e11220975483',201506,20150604,'a:2:{s:4:\"Shop\";i:70;s:8:\"Leaflets\";i:1;}'),(29,'gh_e11220975483',201506,20150605,'a:2:{s:4:\"Shop\";i:88;s:10:\"HelloWorld\";i:1;}'),(30,'gh_e11220975483',201506,20150606,'a:2:{s:4:\"Shop\";i:21;s:4:\"Juhe\";i:1;}'),(31,'gh_e11220975483',201506,20150607,'a:1:{s:4:\"Shop\";i:10;}'),(32,'gh_e11220975483',201506,20150608,'a:3:{s:4:\"Shop\";i:102;s:4:\"Chat\";i:3;s:10:\"CustomMenu\";i:17;}'),(33,'-1',201506,20150608,'a:1:{s:4:\"Shop\";i:1;}'),(34,'-1',201506,20150608,'a:1:{s:4:\"Shop\";i:1;}'),(35,'gh_e11220975483',201506,20150609,'a:1:{s:4:\"Shop\";i:4;}'),(36,'gh_e11220975483',201506,20150610,'a:5:{s:4:\"Shop\";i:180;s:4:\"Vote\";i:1;s:11:\"Suggestions\";i:1;s:6:\"Survey\";i:1;s:7:\"WeiSite\";i:2;}'),(37,'gh_e11220975483',201506,20150611,'a:1:{s:4:\"Shop\";i:218;}'),(38,'-1',201506,20150611,'a:1:{s:4:\"Shop\";i:1;}'),(39,'gh_e11220975483',201506,20150612,'a:1:{s:4:\"Shop\";i:148;}'),(40,'-1',201506,20150612,'a:1:{s:4:\"Shop\";i:1;}'),(41,'gh_e11220975483',201506,20150613,'a:2:{s:4:\"Shop\";i:145;s:7:\"WeiSite\";i:68;}'),(42,'gh_e11220975483',201506,20150614,'a:1:{s:4:\"Shop\";i:66;}'),(43,'gh_e11220975483',201506,20150615,'a:1:{s:4:\"Shop\";i:13;}'),(44,'gh_e11220975483',201506,20150616,'a:1:{s:4:\"Shop\";i:63;}'),(45,'-1',201506,20150616,'a:1:{s:4:\"Shop\";i:1;}'),(46,'gh_e11220975483',201506,20150617,'a:1:{s:4:\"Shop\";i:100;}'),(47,'-1',201506,20150617,'a:1:{s:4:\"Shop\";i:2;}'),(48,'gh_e11220975483',201506,20150618,'a:1:{s:4:\"Shop\";i:2;}'),(49,'gh_e11220975483',201506,20150619,'a:1:{s:4:\"Shop\";i:57;}'),(50,'gh_3ccacf499b63',201506,20150619,'a:1:{s:4:\"Shop\";i:2;}'),(51,'gh_e11220975483',201506,20150620,'a:1:{s:4:\"Shop\";i:94;}'),(52,'-1',201506,20150620,'a:1:{s:4:\"Shop\";i:1;}'),(53,'gh_e11220975483',201506,20150621,'a:1:{s:4:\"Shop\";i:124;}'),(54,'-1',201506,20150621,'a:1:{s:4:\"Shop\";i:1;}'),(55,'gh_e11220975483',201506,20150622,'a:1:{s:4:\"Shop\";i:220;}'),(56,'gh_e11220975483',201506,20150623,'a:1:{s:4:\"Shop\";i:103;}'),(57,'gh_e11220975483',201506,20150624,'a:1:{s:4:\"Shop\";i:58;}'),(58,'gh_e11220975483',201506,20150625,'a:3:{s:4:\"Shop\";i:170;s:4:\"Chat\";i:1;s:11:\"CustomReply\";i:5;}'),(59,'gh_e11220975483',201506,20150626,'a:1:{s:4:\"Shop\";i:45;}'),(60,'gh_e11220975483',201506,20150627,'a:1:{s:4:\"Shop\";i:57;}'),(61,'gh_e11220975483',201506,20150628,'a:1:{s:4:\"Shop\";i:225;}'),(62,'gh_e11220975483',201506,20150629,'a:1:{s:4:\"Shop\";i:397;}'),(63,'gh_e11220975483',201506,20150630,'a:1:{s:4:\"Shop\";i:81;}'),(64,'-1',201506,20150630,'a:1:{s:4:\"Shop\";i:1;}'),(65,'gh_e11220975483',201507,20150701,'a:1:{s:4:\"Shop\";i:373;}'),(66,'gh_e11220975483',201507,20150702,'a:1:{s:4:\"Shop\";i:142;}'),(67,'gh_e11220975483',201507,20150703,'a:1:{s:4:\"Shop\";i:354;}'),(68,'-1',201507,20150703,'a:1:{s:4:\"Shop\";i:2;}'),(69,'gh_e11220975483',201507,20150704,'a:1:{s:4:\"Shop\";i:112;}'),(70,'gh_e11220975483',201507,20150705,'a:1:{s:4:\"Shop\";i:49;}'),(71,'gh_e11220975483',201507,20150706,'a:1:{s:4:\"Shop\";i:38;}'),(72,'-1',201507,20150706,'a:1:{s:4:\"Shop\";i:1;}'),(73,'-1',201507,20150707,'a:1:{s:4:\"Shop\";i:1;}'),(74,'gh_e11220975483',201507,20150707,'a:1:{s:4:\"Shop\";i:73;}'),(75,'gh_e11220975483',201507,20150708,'a:1:{s:4:\"Shop\";i:119;}');
/*!40000 ALTER TABLE `wp_tongji` ENABLE KEYS */;
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
