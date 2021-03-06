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
-- Table structure for table `wp_picture`
--

DROP TABLE IF EXISTS `wp_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id自增',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片链接',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=376 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_picture`
--

LOCK TABLES `wp_picture` WRITE;
/*!40000 ALTER TABLE `wp_picture` DISABLE KEYS */;
INSERT INTO `wp_picture` VALUES (365,'/Uploads/Picture/2015-05-05/5547a09caba44.jpg','','9ca4420513119297c3bbf64ce02b567f','57c40433f86df90c68a326bab45538548586a4f4',1,1430757532),(366,'/Uploads/Picture/2015-05-05/5547a1307d3a5.jpg','','83dd7d8fbd918e25652702f670ef135d','7560b21b3c098f0989ce59aa00e860ceddf9b891',1,1430757680),(367,'/Uploads/Picture/2015-05-21/555db4b1d024b.jpg','','901972ede3cf5a7e2cc2814c1e48311e','4b5cd23c197b576cb123c0577d6f90517aaa978f',1,1432204465),(368,'/Uploads/Picture/2015-05-26/556353e69f7b2.JPG','','04ebad719a7f7d25db0e65ddb12c45f9','c8f2835f0e1b49033fa657141212fbe376550298',1,1432572902),(369,'/Uploads/Picture/2015-05-26/556354ce7f22b.jpg','','fdbd15a7099d485811ba374fd421dcdb','a38108b83337ed510ba2bc29cd192616190f4e89',1,1432573134),(370,'/Uploads/Picture/2015-05-26/556355368cda0.jpg','','928567818158119f6df1544d26ef1f15','5eea8f2318622d8cd64bcb49a79bd30e64b7a916',1,1432573238),(371,'/Uploads/Picture/2015-05-26/5563553a9548e.jpg','','3cfadace8aa29d5f3cc06707f8f115a7','2f60f4aa761dae23ff707115f1de3f107699a51b',1,1432573242),(372,'/Uploads/Picture/2015-05-26/5563553f5b366.jpg','','a317cbbb7c5058cf96be0f03a6e395df','092e3cabf84a104820f81b3b937bfac46fd19549',1,1432573247),(373,'/Uploads/Picture/2015-05-26/55635553dcd52.jpg','','ecb2fc9a141c8f69d4db72d20f1fecb8','ee4b13ea6dc7f9e33dbf8a4a44c6227e626e2fee',1,1432573267),(374,'/Uploads/Picture/2015-06-13/557b1200c607f.jpg','','86d4943d76834d19f220793e67ffe3f5','a70dd50261d24be4868b5364a49cb2d375856fbc',1,1434128896),(375,'/Uploads/Picture/2015-06-25/558af0cc96460.jpg','','3f27bff2e8f0212509cc4adbe2d00452','de52d5ccccfa04024a50374ecb64e06d6f52ac82',1,1435168972);
/*!40000 ALTER TABLE `wp_picture` ENABLE KEYS */;
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
