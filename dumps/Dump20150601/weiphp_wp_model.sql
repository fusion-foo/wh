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
-- Table structure for table `wp_model`
--

DROP TABLE IF EXISTS `wp_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模型ID',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '模型标识',
  `title` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `extend` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '继承的模型',
  `relation` varchar(30) NOT NULL DEFAULT '' COMMENT '继承与被继承模型的关联字段',
  `need_pk` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '新建表时是否需要主键字段',
  `field_sort` text NOT NULL COMMENT '表单字段排序',
  `field_group` varchar(255) NOT NULL DEFAULT '1:基础' COMMENT '字段分组',
  `attribute_list` text NOT NULL COMMENT '属性列表（表的字段）',
  `template_list` varchar(100) NOT NULL DEFAULT '' COMMENT '列表模板',
  `template_add` varchar(100) NOT NULL DEFAULT '' COMMENT '新增模板',
  `template_edit` varchar(100) NOT NULL DEFAULT '' COMMENT '编辑模板',
  `list_grid` text NOT NULL COMMENT '列表定义',
  `list_row` smallint(2) unsigned NOT NULL DEFAULT '10' COMMENT '列表数据长度',
  `search_key` varchar(50) NOT NULL DEFAULT '' COMMENT '默认搜索字段',
  `search_list` varchar(255) NOT NULL DEFAULT '' COMMENT '高级搜索的字段',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `engine_type` varchar(25) NOT NULL DEFAULT 'MyISAM' COMMENT '数据库引擎',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=utf8 COMMENT='文档模型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_model`
--

LOCK TABLES `wp_model` WRITE;
/*!40000 ALTER TABLE `wp_model` DISABLE KEYS */;
INSERT INTO `wp_model` VALUES (6,'vote','投票',0,'',1,'{\"1\":[\"keyword\",\"title\",\"description\",\"picurl\",\"type\",\"start_date\",\"end_date\"]}','1:基础','','','','','id:投票ID\r\nkeyword:关键词\r\ntitle:投票标题\r\ntype|get_name_by_status:类型\r\nis_img|get_name_by_status:状态\r\nvote_count:投票数\r\nids:操作:show&id=[id]|预览,[EDIT]&id=[id]|编辑,[DELETE]|删除',20,'title','description',1388930292,1401017026,1,'MyISAM'),(152,'document','基础文档',0,'',1,'{\"1\":[\"uid\",\"name\",\"title\",\"category_id\",\"description\",\"root\",\"pid\",\"model_id\",\"type\",\"position\",\"link_id\",\"cover_id\",\"display\",\"deadline\",\"attach\",\"view\",\"comment\",\"extend\",\"level\",\"create_time\",\"update_time\",\"status\"]}','1:基础','','','','','id:编号\r\ntitle:标题:article/index?cate_id=[category_id]&pid=[id]\r\ntype|get_document_type:类型\r\nlevel:优先级\r\nupdate_time|time_format:最后更新\r\nstatus_text:状态\r\nview:浏览\r\nid:操作:[EDIT]&cate_id=[category_id]|编辑,article/setstatus?status=-1&ids=[id]|删除',0,'','',1383891233,1384507827,1,'MyISAM'),(5,'keyword','关键词表',0,'',1,'{\"1\":[\"keyword\",\"keyword_type\",\"addon\",\"aim_id\",\"keyword_length\",\"cTime\",\"extra_text\",\"extra_int\"]}','1:基础','','','','','id:编号\r\nkeyword:关键词\r\naddon:所属插件\r\naim_id:插件数据ID\r\ncTime|time_format:增加时间\r\nrequest_count|intval:请求数\r\nid:操作:[EDIT]|编辑,[DELETE]|删除',10,'keyword','',1388815871,1407251192,1,'MyISAM'),(7,'vote_option','投票选项',0,'',1,'','1:基础','','','','','',10,'','',1388933346,1388933346,1,'MyISAM'),(8,'vote_log','投票记录',0,'',1,'','1:基础','','','','','',10,'','',1388934136,1388934136,1,'MyISAM'),(11,'member_public','公众号管理',0,'',1,'{\"1\":[\"public_name\",\"public_id\",\"wechat\",\"type\",\"appid\",\"secret\",\"encodingaeskey\"]}','1:基础','','','','','id:公众号ID\r\npublic_name:公众号名称\r\ntype|get_name_by_status:类型\r\ngroup_id|get_public_group_name:等级\r\ntoken:Token\r\nuid:管理员\r\nids:操作:[EDIT]|编辑,[DELETE]|删除,changPublic&id=[id]|切换为当前公众号,help&public_id=[id]#weixin_set|接口配置',20,'public_name','',1391575109,1416973450,1,'MyISAM'),(30,'card_member','会员卡成员',0,'',1,'{\"1\":[\"username\",\"phone\"]}','1:基础','','','','','number:卡号\r\nusername:姓名\r\nphone:手机号\r\ncTime|time_format:加入时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除',10,'username','',1395482804,1395484751,1,'MyISAM'),(13,'member_public_group','公众号等级',0,'',1,'{\"1\":[\"title\",\"addon_status\"]}','1:基础','','','','','id:等级ID\r\ntitle:等级名\r\naddon_status:授权的插件\r\npublic_count:公众号数\r\nid:操作:editPublicGroup&id=[id]|编辑,delPublicGroup&id=[id]|删除',10,'title','',1393724788,1393730663,1,'MyISAM'),(14,'update_version','系统版本升级',0,'',1,'{\"1\":[\"version\",\"title\",\"description\",\"create_date\",\"package\"]}','1:基础','','','','','version:版本号\r\ntitle:升级包名\r\ndescription:描述\r\ncreate_date|time_format:创建时间\r\ndownload_count:下载统计数\r\nid:操作:[EDIT]&id=[id]|编辑,[DELETE]&id=[id]|删除',10,'','',1393770420,1393771807,1,'MyISAM'),(22,'extensions','融合第三方',0,'',1,'{\"1\":[\"keyword\",\"keyword_type\",\"keyword_filter\",\"output_format\",\"api_url\",\"api_token\"]}','1:基础','','','','','keyword:关键词\r\nkeyword_filter|get_name_by_status:关键词过滤\r\noutput_format|get_name_by_status:数据输出格式\r\napi_url:第三方地址\r\napi_token:Token\r\ncTime|time_format:增加时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除',10,'keyword','',1393911774,1394721892,1,'MyISAM'),(16,'forum','论坛区',0,'',1,'','1:基础','','','','','',10,'','',1394033250,1394033250,1,'MyISAM'),(17,'store','应用商店',0,'',1,'{\"1\":[\"type\",\"title\",\"price\",\"attach\",\"logo\",\"content\",\"img_1\",\"img_2\",\"img_3\",\"img_4\",\"is_top\",\"audit\",\"audit_time\"]}','1:基础','','','','','id:ID值\r\ntype|get_name_by_status:应用类型\r\ntitle:应用标题\r\nprice:价格\r\nlogo|get_img_html:应用LOGO\r\nmTime|time_format:更新时间\r\naudit|get_name_by_status:审核状态\r\naudit_time|time_format:审核时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除',10,'title','',1394033250,1402885526,1,'MyISAM'),(18,'suggestions','建议意见',0,'',1,'{\"1\":[\"content\",\"nickname\",\"mobile\"]}','1:基础','','','','','nickname:昵称\r\ncontent:内容\r\nmobile:联系方式\r\ncTime|time_format:创建时间\r\nid:操作:[EDIT]&id=[id]|编辑,[DELETE]&id=[id]|删除',10,'content','',1393234169,1400687145,1,'MyISAM'),(85,'custom_menu','自定义菜单',0,'',1,'{\"1\":[\"sort\",\"pid\",\"title\",\"type\",\"keyword\",\"url\"]}','1:基础','','','','','title:10%菜单名\r\ntype|get_name_by_status:类型\r\nkeyword:10%关联关键词\r\nurl:50%关联URL\r\nsort:5%排序号\r\nid:10%操作:[EDIT]|编辑,[DELETE]|删除',10,'title','',1394518309,1416811657,1,'MyISAM'),(31,'card_notice','会员卡通知',0,'',1,'{\"1\":[\"title\",\"content\"]}','1:基础','','','','','title:标题\r\ncTime|time_format:发布时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除',10,'title','',1395485156,1395485486,1,'MyISAM'),(33,'weisite_category','微官网分类',0,'',1,'{\"1\":[\"title\",\"icon\",\"url\",\"is_show\",\"sort\"]}','1:基础','','','','','title:15%分类标题\r\nicon|get_img_html:分类图片\r\nurl:30%外链\r\nsort:10%排序号\r\nis_show|get_name_by_status:10%显示\r\nid:10%操作:[EDIT]|编辑,[DELETE]|删除',10,'title','',1395987942,1417401746,1,'MyISAM'),(34,'weisite_cms','文章管理',0,'',1,'{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"intro\",\"cate_id\",\"cover\",\"content\",\"sort\"]}','1:基础','','','','','keyword:关键词\r\nkeyword_type|get_name_by_status:关键词类型\r\ntitle:标题\r\ncate_id:所属分类\r\nsort:排序号\r\nview_count:浏览数\r\nid:操作:[EDIT]&module_id=[pid]|编辑,[DELETE]|删除',10,'title','',1396061373,1408326292,1,'MyISAM'),(35,'weisite_slideshow','幻灯片',0,'',1,'{\"1\":[\"title\",\"img\",\"url\",\"is_show\",\"sort\"]}','1:基础','','','','','title:标题\r\nimg:图片\r\nurl:链接地址\r\nis_show|get_name_by_status:显示\r\nsort:排序\r\nid:操作:[EDIT]&module_id=[pid]|编辑,[DELETE]|删除',10,'title','',1396098264,1408323347,1,'MyISAM'),(36,'weisite_footer','底部导航',0,'',1,'{\"1\":[\"pid\",\"title\",\"url\",\"sort\"]}','1:基础','','','','','title:菜单名\r\nicon:图标\r\nurl:关联URL\r\nsort:排序号\r\nid:操作:[EDIT]|编辑,[DELETE]|删除',10,'title','',1394518309,1396507698,1,'MyISAM'),(62,'custom_reply_text','文本回复',0,'',1,'{\"1\":[\"keyword\",\"keyword_type\",\"content\",\"sort\"]}','1:基础','','','','','id:ID\r\nkeyword:关键词\r\nkeyword_type|get_name_by_status:关键词类型\r\nsort:排序号\r\nview_count:浏览数\r\nid:操作:[EDIT]|编辑,[DELETE]|删除',10,'keyword','',1396578172,1401017369,1,'MyISAM'),(64,'custom_reply_news','图文回复',0,'',1,'{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"intro\",\"cate_id\",\"cover\",\"content\",\"sort\"]}','1:基础','','','','','id:5%ID\r\nkeyword:10%关键词\r\nkeyword_type|get_name_by_status:20%关键词类型\r\ntitle:30%标题\r\ncate_id:10%所属分类\r\nsort:7%排序号\r\nview_count:8%浏览数\r\nid:10%操作:[EDIT]|编辑,[DELETE]|删除',10,'title','',1396061373,1401368247,1,'MyISAM'),(65,'custom_reply_mult','多图文配置',0,'',1,'','1:基础','','','','','',10,'','',1396602475,1396602475,1,'MyISAM'),(69,'forms','通用表单',0,'',1,'{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"intro\",\"cover\",\"can_edit\",\"finish_tip\",\"jump_url\",\"content\"]}','1:基础','','','','','id:通用表单ID\r\nkeyword:关键词\r\nkeyword_type|get_name_by_status:关键词类型\r\ntitle:标题\r\ncTime|time_format:发布时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除,forms_attribute&id=[id]|字段管理,forms_value&id=[id]|数据管理,preview&id=[id]|预览',10,'title','',1396061373,1432177655,1,'MyISAM'),(70,'forms_attribute','表单字段',0,'',1,'{\"1\":[\"name\",\"title\",\"type\",\"extra\",\"value\",\"remark\",\"is_must\",\"validate_rule\",\"error_info\",\"sort\"]}','1:基础','','','','','title:字段标题\r\nname:字段名\r\ntype|get_name_by_status:字段类型\r\nid:操作:[EDIT]&forms_id=[forms_id]|编辑,[DELETE]|删除',10,'title','',1396061373,1396710959,1,'MyISAM'),(71,'forms_value','通用表单数据',0,'',1,'','1:基础','','','','','',10,'','',1396687959,1396687959,1,'MyISAM'),(73,'survey','调研问卷',0,'',1,'{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"cover\",\"intro\",\"finish_tip\"]}','1:基础','','','','','id:微调研ID\r\nkeyword:关键词\r\nkeyword_type|get_name_by_status:关键词类型\r\ntitle:标题\r\ncTime|time_format:发布时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除,survey_question&id=[id]|问题管理,survey_answer&id=[id]|数据管理,preview&id=[id]|预览',10,'title','',1396061373,1401017145,1,'MyISAM'),(74,'survey_question','调研问题',0,'',1,'{\"1\":[\"title\",\"type\",\"extra\",\"intro\",\"is_must\",\"sort\"]}','1:基础','','','','','title:标题\r\ntype|get_name_by_status:问题类型\r\nis_must|get_name_by_status:是否必填\r\nid:操作:[EDIT]|编辑,[DELETE]|删除',10,'title','',1396061373,1396955090,1,'MyISAM'),(75,'survey_answer','调研回答',0,'',1,'','1:基础','','','','','openid:OpenId\r\ntruename:姓名\r\nmobile:手机号\r\ncTime|time_format:发布时间\r\nid:操作:detail?uid=[uid]&survey_id=[survey_id]|回答内容',10,'title','',1396061373,1397011511,1,'MyISAM'),(76,'exam','考试试卷',0,'',1,'{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"cover\",\"intro\",\"start_time\",\"end_time\",\"finish_tip\"]}','1:基础','','','','','id:微考试ID\r\nkeyword:关键词\r\nkeyword_type|get_name_by_status:关键词类型\r\ntitle:试卷标题\r\nstart_time|time_format:开始时间\r\nend_time|time_format:结束时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除,exam_question&id=[id]|题目管理,exam_answer&id=[id]|考生成绩,preview&id=[id]|试卷预览',10,'title','',1396061373,1401017190,1,'MyISAM'),(77,'exam_question','考试题目',0,'',1,'{\"1\":[\"title\",\"type\",\"extra\",\"intro\",\"is_must\",\"sort\"]}','1:基础','','','','','title:标题\r\ntype|get_name_by_status:题目类型\r\nscore:分值\r\nid:操作:[EDIT]|编辑,[DELETE]|删除',10,'title','',1396061373,1397035409,1,'MyISAM'),(78,'exam_answer','考试回答',0,'',1,'','1:基础','','','','','openid:OpenId\r\ntruename:姓名\r\nmobile:手机号\r\nscore:成绩\r\ncTime|time_format:考试时间\r\nid:操作:detail?uid=[uid]&exam_id=[exam_id]|答题详情',10,'title','',1396061373,1397036455,1,'MyISAM'),(79,'test','测试问卷',0,'',1,'{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"cover\",\"intro\",\"finish_tip\"]}','1:基础','','','','','id:微测试ID\r\nkeyword:关键词\r\nkeyword_type|get_name_by_status:关键词类型\r\ntitle:问卷标题\r\nid:操作:[EDIT]|编辑,[DELETE]|删除,test_question&id=[id]|题目管理,test_answer&id=[id]|用户记录,preview&id=[id]|问卷预览',10,'title','',1396061373,1401017218,1,'MyISAM'),(80,'test_question','测试题目',0,'',1,'{\"1\":[\"title\",\"extra\",\"intro\",\"sort\"]}','1:基础','','','','','id:问题编号\r\ntitle:标题\r\nextra:参数\r\nids:操作:[EDIT]|编辑,[DELETE]|删除',10,'title','',1396061373,1397145854,1,'MyISAM'),(81,'test_answer','测试回答',0,'',1,'','1:基础','','','','','openid:OpenId\r\ntruename:姓名\r\nmobile:手机号\r\nscore:得分\r\ncTime|time_format:测试时间\r\nid:操作:detail?uid=[uid]&test_id=[test_id]|答题详情',10,'title','',1396061373,1397145984,1,'MyISAM'),(83,'shop_goods','微商店商品',0,'',1,'{\"1\":[\"title\",\"cover\",\"intro\",\"cate_id\",\"market_price\",\"discount_price\",\"buy_url\",\"ad_url\",\"content\",\"param\",\"img_1\",\"img_2\",\"img_3\",\"img_4\",\"img_5\",\"like\"]}','1:基础','','','','','id:商品ID\r\ncover|get_img_html:图片\r\ntitle:商品名称\r\ncate_id|getCommonCategoryTitle:分类\r\nmarket_price:市场价\r\ndiscount_price:市场价\r\nview_count:浏览数\r\nids:操作:[EDIT]|编辑,[DELETE]|删除',10,'title','',1396061373,1432921582,1,'MyISAM'),(84,'common_category','通用分类',0,'',1,'{\"1\":[\"pid\",\"title\",\"icon\",\"intro\",\"sort\",\"is_show\"]}','1:基础','','','','','code:编号\r\ntitle:标题\r\nicon|get_img_html:图标\r\nsort:排序号\r\nis_show|get_name_by_status:显示\r\nids:操作:[EDIT]|编辑,[DELETE]|删除',10,'title','',1397529095,1404182789,1,'MyISAM'),(158,'shop_shelve','架子表',0,'',1,'{\"1\":[\"auto_fill\",\"validity\",\"state\",\"create_date\",\"name\",\"brief\",\"owner_token\"]}','1:基础','','','','','',10,'','',1432787175,1432923718,1,'MyISAM'),(159,'shop_order','订单',0,'',1,'','1:基础','','','','','',10,'','',1432797265,1432797265,1,'MyISAM'),(160,'shop_order_goods','订单商品关联表',0,'',1,'{\"1\":[\"order_id\",\"owner_token\",\"product_id\"]}','1:基础','','','','','',10,'','',1432799334,1432921614,1,'MyISAM'),(87,'credit_config','积分配置',0,'',1,'{\"1\":[\"title\",\"name\",\"experience\",\"score\"]}','1:基础','','','','','title:积分描述\r\nname:积分标识\r\nexperience:经验值\r\nscore:财富值\r\nid:操作:[EDIT]|编辑,[DELETE]|删除',10,'title','',1396061373,1398564809,1,'MyISAM'),(88,'credit_data','用户积分记录',0,'',1,'{\"1\":[\"credit_name\",\"uid\",\"experience\",\"score\"]}','1:基础','','','','','uid:用户\r\ncredit_name:积分标识\r\nexperience:经验值\r\nscore:财富值\r\ncTime|time_format:记录时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除',10,'uid','',1398564291,1400117739,1,'MyISAM'),(89,'follow','粉丝管理',0,'',1,'{\"1\":[\"nickname\",\"sex\",\"headimgurl\",\"city\",\"province\",\"country\",\"language\",\"mobile\",\"score\",\"experience\",\"address\"]}','1:基础','','','','','id:粉丝编号\r\nnickname:昵称\r\nsex|get_name_by_status:性别\r\nscore:财富值\r\nexperience:经验值\r\nmobile:手机号\r\naddress:地址\r\nstatus:用户状态\r\nsubscribe_time|time_format:关注时间\r\nids:操作:[EDIT]|编辑,xxx|详情',10,'nickname','',1398845737,1432184889,1,'MyISAM'),(90,'member_public_link','公众号与管理员的关联关系',0,'',1,'{\"1\":[\"uid\",\"addon_status\"]}','1:基础','','','','','uid|get_nickname:管理员\r\naddon_status:授权的插件\r\nids:操作:[EDIT]|编辑,[DELETE]|删除',10,'','',1398933192,1398947067,1,'MyISAM'),(91,'coupon','优惠券',0,'',1,'{\"1\":[\"keyword\",\"title\",\"intro\",\"cover\",\"use_tips\",\"start_time\",\"end_time\",\"end_img\",\"end_tips\",\"num\",\"max_num\",\"follower_condtion\",\"credit_conditon\",\"credit_bug\",\"addon_condition\"]}','1:基础','','','','','id:优惠券ID\r\nkeyword:关键词\r\ntitle:标题\r\ncollect_count:获取人数\r\ncTime|time_format:发布时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除,lists?target_id=[id]&target=_blank&_controller=Sn|成员管理,preview?id=[id]&target=_blank|预览',10,'title','',1396061373,1401017265,1,'MyISAM'),(92,'sn_code','SN码',0,'',1,'{\"1\":[\"prize_title\"]}','1:基础','','','','','sn:SN码\r\nuid|get_nickname:昵称\r\nprize_title:奖项\r\ncTime|time_format:创建时间\r\nis_use|get_name_by_status:是否已使用\r\nuse_time|time_format:使用时间\r\nid:操作:[DELETE]|删除,set_use?id=[id]|改变使用状态',10,'sn','',1399272054,1401013099,1,'MyISAM'),(93,'scratch','刮刮卡',0,'',1,'{\"1\":[\"keyword\",\"title\",\"intro\",\"cover\",\"use_tips\",\"start_time\",\"end_time\",\"end_tips\",\"end_img\",\"predict_num\",\"max_num\",\"follower_condtion\",\"credit_conditon\",\"credit_bug\",\"addon_condition\"]}','1:基础','','','','','id:刮刮卡ID\r\nkeyword:关键词\r\ntitle:标题\r\ncollect_count:获取人数\r\ncTime|time_format:发布时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除,lists?target_id=[id]&target=_blank&_controller=Sn|中奖管理,lists?target_id=[id]&target=_blank&_controller=Prize|奖品管理,preview?id=[id]&target=_blank|预览',10,'title','',1396061373,1404142036,1,'MyISAM'),(94,'prize','奖项设置',0,'',1,'{\"1\":[\"title\",\"name\",\"num\",\"img\",\"sort\"]}','1:基础','','','','','title:奖项标题\r\nname:奖项\r\nnum:名额数量\r\nimg|get_img_html:奖品图片\r\nid:操作:[EDIT]|编辑,[DELETE]|删除',10,'title','',1399348610,1399702991,1,'MyISAM'),(95,'addon_category','插件分类',0,'',1,'{\"1\":[\"icon\",\"title\",\"sort\"]}','1:基础','','','','','icon|get_img_html:分类图标\r\ntitle:分类名\r\nsort:排序号\r\nid:操作:[EDIT]|编辑,[DELETE]|删除',10,'title','',1400047655,1400048130,1,'MyISAM'),(96,'tongji','运营统计',0,'',1,'{\"1\":[\"month\",\"day\",\"content\"]}','1:基础','','','','','day:日期',10,'day','',1401371050,1401371409,1,'MyISAM'),(97,'common_category_group','通用分类分组',0,'',1,'{\"1\":[\"name\",\"title\"]}','1:基础','','','','','name:分组标识\r\ntitle:分组标题\r\nid:操作:cascade?target=_blank&module=[name]|数据管理,[EDIT]|编辑,[DELETE]|删除',10,'title','',1396061373,1403664378,1,'MyISAM'),(104,'youaskservice_user','你问我答-客服工号',0,'',1,'{\"1\":[\"name\",\"userName\",\"userPwd\",\"state\",\"kfid\"]}','1:基础','','','','','kfid:编号\r\nname:客服昵称\r\nuserName:客服帐号',10,'name','userName',1403947253,1404398415,1,'MyISAM'),(105,'youaskservice_logs','你问我答-聊天记录管理',0,'',1,'{\"1\":[\"pid\",\"openid\",\"enddate\",\"keyword\",\"status\"]}','1:基础','','','','','id:编号\r\nkeyword:回复内容\r\nenddate:回复时间',10,'keyword','',1403947270,1404060187,1,'MyISAM'),(116,'youaskservice_keyword','你问我答-关键词指配',0,'',1,'{\"1\":[\"msgkeyword\",\"msgkeyword_type\",\"zdtype\",\"msgstate\"]}','1:基础','','','','','id:编号\r\nmsgkeyword:关键字\r\nmsgkeyword_type|get_name_by_status:匹配类型\r\nmsgkfaccount:指定的接待客服或分组\r\nmsgstate|get_name_by_status:状态\r\nid:操作:[EDIT]|编辑,[DELETE]|删除',10,'msgkeyword','',1404399143,1404493938,1,'MyISAM'),(106,'youaskservice_wechat_enddate','youaskservice_wechat_enddate',0,'',1,'','1:基础','','','','','',10,'','',1404026714,1404026714,1,'MyISAM'),(107,'youaskservice_wechat_grouplist','youaskservice_wechat_grouplist',0,'',1,'','1:基础','','','','','',10,'','',1404027300,1404027300,1,'MyISAM'),(108,'youaskservice_behavior','youaskservice_behavior',0,'',1,'','1:基础','','','','','',10,'','',1404033501,1404033501,1,'MyISAM'),(115,'smalltools','小工具-管理',0,'',1,'{\"1\":[\"keyword\",\"toolname\",\"tooldes\",\"toolstate\"]}','1:基础','','','','','id:编号\r\nkeyword:关键词\r\ntoolname:名称\r\ntooldes:描述\r\ntooltype|get_name_by_status:类型\r\ntoolstate|get_name_by_status:状态',10,'toolname','tooldes',1404273263,1404277639,1,'MyISAM'),(117,'youaskservice_group','你问我答-客服分组',0,'',1,'{\"1\":[\"groupname\"]}','1:基础','','','','','id:编号\r\ngroupname:分组名称\r\nid:操作:[EDIT]|编辑,[DELETE]|删除',10,'groupname','',1404475456,1404491410,1,'MyISAM'),(120,'youaskservice_wxlogs','你问我答- 微信聊天记录',0,'',1,'','1:基础','','','','','',10,'','',1406094050,1406094093,1,'MyISAM'),(121,'qr_code','二维码表',0,'',1,'{\"1\":[\"qr_code\",\"addon\",\"aim_id\",\"cTime\",\"extra_text\",\"extra_int\",\"scene_id\",\"action_name\"]}','1:基础','','','','','scene_id:事件KEY值\r\nqr_code|get_code_img:二维码\r\naction_name|get_name_by_status: 	二维码类型\r\naddon:所属插件\r\naim_id:插件数据ID\r\ncTime|time_format:增加时间\r\nrequest_count|intval:请求数\r\nid:操作:[EDIT]|编辑,[DELETE]|删除',10,'qr_code','',1388815871,1406130247,1,'MyISAM'),(143,'import','导入数据',0,'',1,'','1:基础','','','','','',10,'','',1407554076,1407554076,1,'MyISAM'),(153,'justest','测试模型',0,'',1,'','1:基础','','','','','',10,'','',1432054677,1432054677,1,'MyISAM'),(154,'interaction_statistics','用户交互数据统计',0,'',1,'','1:基础','','','','','',10,'','',1432524388,1432543574,1,'MyISAM'),(162,'shop_stock','商品库存表',0,'',1,'','1:基础','','','','','',10,'','',1432923107,1432923107,1,'MyISAM'),(163,'shop_stock_goods','商品库存关联表',0,'',1,'','1:基础','','','','','',10,'','',1432923632,1432923755,1,'MyISAM'),(161,'shop_shelve_goods','架子商品关联表',0,'',1,'{\"1\":[\"shelve_id\",\"goods_id\",\"owner_token\"]}','1:基础','','','','','',10,'','',1432922614,1432923667,1,'MyISAM');
/*!40000 ALTER TABLE `wp_model` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-01 11:50:57