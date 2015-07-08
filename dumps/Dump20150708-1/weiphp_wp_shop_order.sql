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
-- Table structure for table `wp_shop_order`
--

DROP TABLE IF EXISTS `wp_shop_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_shop_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `openid` varchar(255) NOT NULL COMMENT 'openID',
  `pay_id` varchar(255) NOT NULL COMMENT '支付ID',
  `shipping_period` int(10) NOT NULL COMMENT '送货时段',
  `Istelsure` int(10) NOT NULL DEFAULT '0' COMMENT '送前电确',
  `pay_way` int(10) NOT NULL DEFAULT '0' COMMENT '付款方式',
  `pay_type` int(10) NOT NULL DEFAULT '0' COMMENT '付款类型',
  `state` int(10) NOT NULL DEFAULT '0' COMMENT '状态',
  `total_price` int(10) NOT NULL DEFAULT '0' COMMENT '总价',
  `isCancel` int(10) NOT NULL DEFAULT '0' COMMENT '是否取消订单',
  `order_date` int(10) NOT NULL COMMENT '下单时间 ',
  `pay_time` int(10) NOT NULL COMMENT '支付时间',
  `customer_remark` varchar(255) NOT NULL COMMENT '客户备注',
  `admin_remark` varchar(255) NOT NULL COMMENT '管理员备注',
  `token` varchar(255) NOT NULL COMMENT 'Token',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_shop_order`
--

LOCK TABLES `wp_shop_order` WRITE;
/*!40000 ALTER TABLE `wp_shop_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_shop_order` ENABLE KEYS */;
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
