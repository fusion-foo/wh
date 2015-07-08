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
-- Table structure for table `wp_addons`
--

DROP TABLE IF EXISTS `wp_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_addons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL COMMENT '插件名或标识',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '中文名',
  `description` text COMMENT '插件描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `config` text COMMENT '配置',
  `author` varchar(40) DEFAULT '' COMMENT '作者',
  `version` varchar(20) DEFAULT '' COMMENT '版本号',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `has_adminlist` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台列表',
  `type` tinyint(1) DEFAULT '0' COMMENT '插件类型 0 普通插件 1 微信插件 2 易信插件',
  `cate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COMMENT='插件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_addons`
--

LOCK TABLES `wp_addons` WRITE;
/*!40000 ALTER TABLE `wp_addons` DISABLE KEYS */;
INSERT INTO `wp_addons` VALUES (15,'EditorForAdmin','后台编辑器','用于增强整站长文本的输入和显示',1,'{\"editor_type\":\"2\",\"editor_wysiwyg\":\"2\",\"editor_height\":\"500px\",\"editor_resize_type\":\"1\"}','thinkphp','0.1',1383126253,0,0,NULL),(2,'SiteStat','站点统计信息','统计站点的基础信息',0,'{\"title\":\"\\u7cfb\\u7edf\\u4fe1\\u606f\",\"width\":\"2\",\"display\":\"1\"}','thinkphp','0.1',1379512015,0,0,NULL),(22,'DevTeam','开发团队信息','开发团队成员信息',0,'{\"title\":\"OneThink\\u5f00\\u53d1\\u56e2\\u961f\",\"width\":\"2\",\"display\":\"1\"}','thinkphp','0.1',1391687096,0,0,NULL),(4,'SystemInfo','系统环境信息','用于显示一些服务器的信息',1,'{\"title\":\"\\u7cfb\\u7edf\\u4fe1\\u606f\",\"width\":\"2\",\"display\":\"1\"}','thinkphp','0.1',1379512036,0,0,NULL),(5,'Editor','前台编辑器','用于增强整站长文本的输入和显示',1,'{\"editor_type\":\"2\",\"editor_wysiwyg\":\"1\",\"editor_height\":\"300px\",\"editor_resize_type\":\"1\"}','thinkphp','0.1',1379830910,0,0,NULL),(6,'Attachment','附件','用于文档模型上传附件',0,'null','thinkphp','0.1',1379842319,1,0,NULL),(9,'SocialComment','通用社交化评论','集成了各种社交化评论插件，轻松集成到系统中。',1,'{\"comment_type\":\"1\",\"comment_uid_youyan\":\"1669260\",\"comment_short_name_duoshuo\":\"\",\"comment_form_pos_duoshuo\":\"buttom\",\"comment_data_list_duoshuo\":\"10\",\"comment_data_order_duoshuo\":\"asc\"}','thinkphp','0.1',1380273962,0,0,NULL),(16,'Vote','投票','支持文本和图片两类的投票功能',1,'{\"random\":\"1\"}','地下凡星','0.1',1388811198,1,1,3),(17,'Chat','智能聊天','通过网络上支持的智能API，实现：天气、翻译、藏头诗、笑话、歌词、计算、域名信息/备案/收录查询、IP查询、手机号码归属、人工智能聊天等功能',1,'{\"tuling_key\":\"d812d695a5e0df258df952698faca6cc\",\"tuling_url\":\"http:\\/\\/www.tuling123.com\\/openapi\\/api\",\"simsim_key\":\"41250a68-3cb5-43c8-9aa2-d7b3caf519b1\",\"simsim_url\":\"http:\\/\\/sandbox.api.simsimi.com\\/request.p\",\"i9_url\":\"http:\\/\\/www.xiaojo.com\\/bot\\/chata.php\",\"rand_reply\":\"\\u6211\\u4eca\\u5929\\u7d2f\\u4e86\\uff0c\\u660e\\u5929\\u518d\\u966a\\u4f60\\u804a\\u5929\\u5427\\r\\n\\u54c8\\u54c8~~\\r\\n\\u4f60\\u8bdd\\u597d\\u591a\\u554a\\uff0c\\u4e0d\\u8ddf\\u4f60\\u804a\\u4e86\\r\\n\\u867d\\u7136\\u4e0d\\u61c2\\uff0c\\u4f46\\u89c9\\u5f97\\u4f60\\u8bf4\\u5f97\\u5f88\\u5bf9\"}','地下凡星','0.1',1389454867,0,1,2),(18,'Wecome','欢迎语','用户关注公众号时发送的欢迎信息，支持文本，图片，图文的信息',1,'{\"type\":\"1\",\"title\":\"\",\"description\":\"欢迎关注，请<a href=\"[follow]\">绑定帐号</a>后体验更多功能\",\"pic_url\":\"\",\"url\":\"\"}','地下凡星','0.1',1389620372,0,1,2),(19,'UserCenter','微信用户中心','实现3G首页、微信登录，微信用户绑定，微信用户信息初始化等基本功能',1,'{\"need_bind\":\"1\",\"bind_start\":\"2\",\"jumpurl\":\"www.163.com\"}','地下凡星','0.1',1390660425,1,1,2),(65,'HelloWorld','微信入门案例','这是一个简单的入门案例',1,'null','凡星','0.1',1404133803,0,1,NULL),(24,'BaiduStatistics','百度统计','这是百度统计功能，只要开启插件并设置统计代码，就可以使用统计功能了',1,'{\"code\":\"\"}','weiphp.cn','1.0',1393116011,0,0,NULL),(56,'CustomMenu','自定义菜单','自定义菜单能够帮助公众号丰富界面，让用户更好更快地理解公众号的功能',1,'null','凡星','0.1',1398264735,1,1,2),(31,'Robot','机器人聊天','实现的效果如下\r\n用户输入：“机器人学习时间”\r\n微信回复：“你的问题是？”\r\n用户输入：“这个世界上谁最美？”\r\n微信回复： “你的答案是？”\r\n用户回复： “当然是你啦！”\r\n微信回复：“我明白啊，不信你可以问问我”\r\n用户回复：“这个世界上谁最美？”\r\n微信回复：“当然是你啦！”',1,'null','地下凡星','0.1',1393987090,0,1,4),(36,'Extensions','融合第三方','第三方功能扩展',1,'null','地下凡星','0.1',1394268715,1,1,4),(32,'Suggestions','建议意见','用户在微信里输入“建议意见”四个字时，返回一个图文信息，引导用户进入填写建议意见的3G页面，用户填写信息提交后显示感谢之意并提示关闭页面返回微信\r\n管理员可以在管理中心里看到用户反馈的内容列表，并对内容进行编辑，删除操作',1,'{\"need_truename\":\"0\",\"need_mobile\":\"0\"}','地下凡星','0.1',1394264272,1,1,3),(38,'Card','会员卡','这是一个临时描述',1,'null','无名','0.1',1395235360,0,1,2),(39,'WeiSite','微官网','微官网',1,'null','凡星','0.1',1395326578,0,1,4),(42,'Leaflets','微信宣传页','微信公众号二维码推广页面，用作推广或者制作广告易拉宝，可以发布到QQ群微博博客论坛等等...',1,'{\"random\":\"1\"}','凡星','0.1',1396056935,0,1,2),(48,'CustomReply','自定义回复','这是一个临时描述',1,'null','凡星','0.1',1396578089,1,1,2),(49,'Forms','通用表单','管理员可以轻松地增加一个表单用于收集用户的信息，如活动报名、调查反馈、预约填单等',1,'null','凡星','0.1',1396688995,1,1,4),(50,'Survey','微调研','这是一个临时描述',1,'null','凡星','0.1',1396883644,1,1,3),(51,'Exam','微考试','主要功能有试卷管理，题目录入管理，考生信息和考分汇总管理。',1,'null','凡星','0.1',1397035112,1,1,1),(53,'Test','微测试','主要功能有问卷管理，题目录入管理，用户信息和得分汇总管理。',1,'null','凡星','0.1',1397142151,1,1,1),(58,'Cascade','级联菜单','支持无级级联菜单，用于地区选择、多层分类选择等场景。菜单的数据来源支持查询数据库和直接用户按格式输入两种方式',1,'null','凡星','0.1',1398694996,0,0,NULL),(59,'Coupon','优惠券','配合粉丝圈子，打造粉丝互动的运营激励基础',1,'null','凡星','0.1',1399259217,1,1,3),(60,'Scratch','刮刮卡','刮刮卡',1,'null','凡星','0.1',1399273157,1,1,3),(64,'Tongji','运营统计','统计每个插件使用情况',1,'null','凡星','0.1',1401371025,1,1,2),(83,'YouaskService','你问我答客服系统','一个支持你问我答,关键词制定客服的客服系统',1,'null','陌路生人','0.1',1403947448,1,1,1),(91,'Juhe','聚合数据','集成聚合数据（http://www.juhe.cn）平台的功能',1,'{\"stock\":\"\",\"exchange\":\"\",\"gold\":\"\"}','凡星','0.1',1430759383,0,1,NULL),(95,'Diy','万能页面','可以通过拖拉的方式配置一个3G页面',1,'null','凡星','0.1',1435170041,1,1,NULL),(94,'Shop','商城','微信商城。',1,'{\"random\":\"1\"}','Fusion','0.1',1432808326,1,1,NULL);
/*!40000 ALTER TABLE `wp_addons` ENABLE KEYS */;
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
