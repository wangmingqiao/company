# ************************************************************
# Sequel Pro SQL dump
# Version 4500
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 120.25.126.197 (MySQL 5.5.47-0+deb8u1)
# Database: yxyk
# Generation Time: 2016-04-16 16:45:46 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table oc_addon_email
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_addon_email`;

CREATE TABLE `oc_addon_email` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '正文',
  `receiver` varchar(255) NOT NULL DEFAULT '' COMMENT '收件人',
  `to_uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `is_sent` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '发信状态',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件待发列表';

LOCK TABLES `oc_addon_email` WRITE;
/*!40000 ALTER TABLE `oc_addon_email` DISABLE KEYS */;

INSERT INTO `oc_addon_email` (`id`, `title`, `content`, `receiver`, `to_uid`, `create_time`, `update_time`, `is_sent`, `sort`, `status`)
VALUES
  (1,'注册成功','少侠/女侠好：<br>恭喜您成功注册OpenCMF的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：4<br>昵称：U1458703830<br>用户名：U1458703830<br>密码：qqq111<br><br>','wrydx@foxmail.com',4,1458703830,1458703830,0,0,0),
  (2,'注册成功','少侠/女侠好：<br>恭喜您成功注册OpenCMF的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：5<br>昵称：U1458709249<br>用户名：U1458709249<br>密码：qqq111<br><br>','447240337@qq.com',5,1458709249,1458709250,0,0,0),
  (3,'注册成功','少侠/女侠好：<br>恭喜您成功注册OpenCMF的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：6<br>昵称：U1458709636<br>用户名：U1458709636<br>密码：qqq111<br><br>','qqq111@qq.com',6,1458709636,1458709636,0,0,0),
  (4,'注册成功','少侠/女侠好：<br>恭喜您成功注册异乡逸家的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：8<br>昵称：U1459165911<br>用户名：U1459165911<br>密码：123qwe<br><br>','514881101@qq.com',8,1459165911,1459165911,0,0,0),
  (5,'注册成功','少侠/女侠好：<br>恭喜您成功注册异乡逸家的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：9<br>用户名：U1459166931<br>密码：123qwe<br><br>','514881101@qq.com',9,1459166932,1459166932,0,0,0),
  (6,'注册成功','少侠/女侠好：<br>恭喜您成功注册异乡逸家的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：10<br>用户名：U1459166983<br>密码：123qwe<br><br>','514881101@qq.com',10,1459166984,1459166984,0,0,0),
  (7,'注册成功','少侠/女侠好：<br>恭喜您成功注册异乡逸家的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：11<br>用户名：U1459168529<br>密码：123qwe<br><br>','1111111@qq.com',11,1459168530,1459168530,0,0,0),
  (8,'注册成功','少侠/女侠好：<br>恭喜您成功注册异乡逸家的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：12<br>用户名：U1459168940<br>密码：123qwe<br><br>','1426727532618@qq.com',12,1459168941,1459168941,0,0,0),
  (9,'注册成功','少侠/女侠好：<br>恭喜您成功注册异乡逸家的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：13<br>用户名：U1459169144<br>密码：1234qwer<br><br>','123185871@qq.com',13,1459169144,1459169144,0,0,0);

/*!40000 ALTER TABLE `oc_addon_email` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_admin_access
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_admin_access`;

CREATE TABLE `oc_admin_access` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `group` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '管理员用户组',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='后台管理员与用户组对应关系表';

LOCK TABLES `oc_admin_access` WRITE;
/*!40000 ALTER TABLE `oc_admin_access` DISABLE KEYS */;

INSERT INTO `oc_admin_access` (`id`, `uid`, `group`, `create_time`, `update_time`, `sort`, `status`)
VALUES
  (1,1,1,1438651748,1438651748,0,1),
  (2,16,2,1460708262,1460708262,0,1);

/*!40000 ALTER TABLE `oc_admin_access` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_admin_addon
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_admin_addon`;

CREATE TABLE `oc_admin_addon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '插件名或标识',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '中文名',
  `description` text NOT NULL COMMENT '插件描述',
  `config` text COMMENT '配置',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `version` varchar(8) NOT NULL DEFAULT '' COMMENT '版本号',
  `adminlist` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台列表',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '插件类型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='插件表';

LOCK TABLES `oc_admin_addon` WRITE;
/*!40000 ALTER TABLE `oc_admin_addon` DISABLE KEYS */;

INSERT INTO `oc_admin_addon` (`id`, `name`, `title`, `description`, `config`, `author`, `version`, `adminlist`, `type`, `create_time`, `update_time`, `sort`, `status`)
VALUES
  (1,'Email','邮件插件','实现系统发邮件功能','{\"status\":\"1\",\"MAIL_SMTP_TYPE\":\"2\",\"MAIL_SMTP_SECURE\":\"0\",\"MAIL_SMTP_PORT\":\"25\",\"MAIL_SMTP_HOST\":\"smtp.qq.com\",\"MAIL_SMTP_USER\":\"447240337@qq.com\",\"MAIL_SMTP_PASS\":\"xlimudbqfyhzcajd\",\"default\":\"                                                                                                                                                                                                <div style=\\\"background-color:#fbfbfb;\\\">\\r\\n    <table width=\\\"760\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"border-collapse:collapse;width:760px;border-spacing:0;padding:0;margin:0 auto;\\\" class=\\\"ke-zeroborder\\\">\\r\\n        <tbody>\\r\\n            <tr>\\r\\n                <td colspan=\\\"2\\\" bgcolor=\\\"#3EA9F5\\\" style=\\\"height:8px;\\\">\\r\\n                <\\/td>\\r\\n            <\\/tr>\\r\\n            <tr>\\r\\n                <td height=\\\"62\\\" style=\\\"padding-left:15px;\\\">\\r\\n                    <a href=\\\"http:\\/\\/www.corethink.cn\\\" target=\\\"_blank\\\" title=\\\"CoreThink\\\"> <img src=\\\"http:\\/\\/www.corethink.cn\\/Uploads\\/2015-08-03\\/55bee01014b4d.png\\\" border=\\\"0\\\" width=\\\"125\\\" height=\\\"33\\\" \\/> <\\/a>\\r\\n                <\\/td>\\r\\n                <td align=\\\"right\\\" style=\\\"padding-right:15px;\\\">\\r\\n                    <a style=\\\"font-size:14px;font-weight:700;text-decoration:none;\\\" href=\\\"http:\\/\\/www.corethink.cn\\\" target=\\\"_blank\\\" title=\\\"\\u9996\\u9875\\\">\\u9996\\u9875<\\/a>\\r\\n                    <a style=\\\"font-size:14px;font-weight:700;text-decoration:none;\\\" href=\\\"http:\\/\\/www.corethink.cn\\/cms\\/cate\\/21.html\\\" target=\\\"_blank\\\" title=\\\"\\u4ea7\\u54c1\\\">\\u4ea7\\u54c1<\\/a>\\r\\n                    <a style=\\\"font-size:14px;font-weight:700;text-decoration:none;\\\" href=\\\"http:\\/\\/www.corethink.cn\\/appstore.html\\\" target=\\\"_blank\\\" title=\\\"\\u4e91\\u5546\\u5e97\\\">\\u4e91\\u5546\\u5e97<\\/a>\\r\\n                    <a style=\\\"font-size:14px;font-weight:700;text-decoration:none;\\\" href=\\\"http:\\/\\/www.corethink.cn\\/manual.html\\\" target=\\\"_blank\\\" title=\\\"\\u6587\\u6863\\\">\\u6587\\u6863<\\/a>\\r\\n                    <a style=\\\"font-size:14px;font-weight:700;text-decoration:none;\\\" href=\\\"http:\\/\\/www.corethink.cn\\/cms\\/category\\/detail\\/id\\/11.html\\\" target=\\\"_blank\\\" title=\\\"\\u8054\\u7cfb\\u6211\\u4eec\\\">\\u8054\\u7cfb\\u6211\\u4eec<\\/a>\\r\\n                    <a style=\\\"font-size:14px;font-weight:700;text-decoration:none;\\\" href=\\\"http:\\/\\/www.corethink.cn\\/forum.html\\\" target=\\\"_blank\\\" title=\\\"\\u5e38\\u89c1\\u95ee\\u9898\\\">\\u5e38\\u89c1\\u95ee\\u9898<\\/a>\\r\\n                <\\/td>\\r\\n            <\\/tr>\\r\\n            <tr>\\r\\n                <td bgcolor=\\\"#FFFFFF\\\" colspan=\\\"2\\\">\\r\\n                    <table width=\\\"100%\\\">\\r\\n                        <tbody>\\r\\n                            <tr>\\r\\n                                <td style=\\\"padding:15px;\\\">\\r\\n                                    [MAILBODY]\\r\\n                                <\\/td>\\r\\n                            <\\/tr>\\r\\n                        <\\/tbody>\\r\\n                    <\\/table>\\r\\n                <\\/td>\\r\\n            <\\/tr>\\r\\n            <tr>\\r\\n                <td colspan=\\\"2\\\">\\r\\n                    <br \\/>\\r\\n                <\\/td>\\r\\n            <\\/tr>\\r\\n        <\\/tbody>\\r\\n    <\\/table>\\r\\n    <table width=\\\"760\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" style=\\\"border-collapse:collapse;width:760px;border-spacing:0;padding:0;margin:0 auto;\\\" class=\\\"ke-zeroborder\\\">\\r\\n        <tbody>\\r\\n            <tr>\\r\\n                <td valign=\\\"top\\\" style=\\\"line-height:24px;padding:24px;\\\" bgcolor=\\\"#4f4f4f\\\">\\r\\n                    <p style=\\\"font-size:12px;color:#fff;margin:0;\\\">\\r\\n                        \\u4e3a\\u4e86\\u60a8\\u80fd\\u591f\\u6b63\\u5e38\\u6536\\u5230\\u6765\\u81eaOpenCMF\\u7684\\u6700\\u65b0\\u4fe1\\u606f\\u548c\\u4f1a\\u5458\\u90ae\\u4ef6\\uff0c\\u8bf7\\u5c06<a style=\\\"text-decoration:underline;color:#6cb4ff;cursor:pointer;\\\">noreply@corethink.cn<\\/a>\\u6dfb\\u52a0\\u4e3a\\u60a8\\u7684\\u8054\\u7cfb\\u4eba\\u3002\\r\\n                    <\\/p>\\r\\n                    <p style=\\\"font-size:14px;color:#fff;margin:20px 0 0 0;\\\">\\r\\n                        \\u82e5\\u60a8\\u6709\\u4efb\\u4f55\\u7591\\u95ee\\uff0c\\u8bf7\\u53ca\\u65f6\\u8054\\u7cfb\\u6211\\u4eec\\u7684\\u5ba2\\u670d\\u3002\\r\\n                    <\\/p>\\r\\n                    <p style=\\\"font-size:12px;color:#fff;margin:0;\\\">\\r\\n                        \\u5ba2 \\u670d QQ\\uff1a<strong style=\\\"color:#ff789c;font-family:Tahoma;\\\">598821125<\\/strong>\\r\\n                    <\\/p>\\r\\n                    <p style=\\\"font-size:12px;color:#fff;margin:0;padding-bottom:20px;\\\">\\r\\n                        \\u5ba2\\u670d\\u70ed\\u7ebf\\uff1a<strong style=\\\"color:#ff789c;font-family:Tahoma;\\\">150-0517-3785<\\/strong> (\\u5468\\u4e00\\u81f3\\u5468\\u516d\\uff0c9:00 - 18:00)\\r\\n                    <\\/p>\\r\\n                    <p style=\\\"font-size:12px;color:#fff;margin:0;\\\">\\r\\n                        \\u66f4\\u591a\\u6700\\u65b0\\u8baf\\u606f\\u8bf7\\u5173\\u6ce8\\u5b98\\u65b9\\u5fae\\u4fe1\\uff1a <span style=\\\"color:#2a85bf;font-weight:700;font-family:Tahoma;\\\">CoreThink<\\/span>\\r\\n                    <\\/p>\\r\\n                <\\/td>\\r\\n                <td style=\\\"padding:24px 20px 22px 0;\\\" bgcolor=\\\"#4f4f4f\\\">\\r\\n                    <img src=\\\"http:\\/\\/www.corethink.cn\\/Uploads\\/2016-01-14\\/569797565addc.jpg\\\" width=\\\"150\\\" height=\\\"150\\\" border=\\\"0\\\" \\/>\\r\\n                <\\/td>\\r\\n                <td width=\\\"17\\\" style=\\\"font-size:0;\\\">\\r\\n                <\\/td>\\r\\n            <\\/tr>\\r\\n            <tr style=\\\"height:50px;\\\" bgcolor=\\\"#fbfbfb\\\">\\r\\n                <td colspan=\\\"3\\\">\\r\\n                <\\/td>\\r\\n            <\\/tr>\\r\\n        <\\/tbody>\\r\\n    <\\/table>\\r\\n<\\/div>                                                                                                                                                \"}','OpenCMF','1.3.0',1,0,1458701234,1458701234,0,1);

/*!40000 ALTER TABLE `oc_admin_addon` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_admin_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_admin_config`;

CREATE TABLE `oc_admin_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '配置标题',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '配置名称',
  `value` text NOT NULL COMMENT '配置值',
  `group` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组',
  `type` varchar(16) NOT NULL DEFAULT '' COMMENT '配置类型',
  `options` varchar(255) NOT NULL DEFAULT '' COMMENT '配置额外值',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '配置说明',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统配置表';

LOCK TABLES `oc_admin_config` WRITE;
/*!40000 ALTER TABLE `oc_admin_config` DISABLE KEYS */;

INSERT INTO `oc_admin_config` (`id`, `title`, `name`, `value`, `group`, `type`, `options`, `tip`, `create_time`, `update_time`, `sort`, `status`)
VALUES
  (1,'站点开关','TOGGLE_WEB_SITE','1',1,'select','0:关闭\r\n1:开启','站点关闭后将不能访问',1378898976,1406992386,1,1),
  (2,'网站标题','WEB_SITE_TITLE','异乡逸家',1,'text','','网站标题前台显示标题',1378898976,1379235274,2,1),
  (3,'网站口号','WEB_SITE_SLOGAN','为梦想租好房',1,'text','','网站口号、宣传标语、一句话介绍',1434081649,1434081649,3,1),
  (4,'网站LOGO','WEB_SITE_LOGO','88',1,'picture','','网站LOGO',1407003397,1407004692,4,1),
  (5,'网站描述','WEB_SITE_DESCRIPTION','OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等开放化低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。',1,'textarea','','网站搜索引擎描述',1378898976,1379235841,5,1),
  (6,'网站关键字','WEB_SITE_KEYWORD','异乡逸家',1,'textarea','','网站搜索引擎关键字',1378898976,1381390100,6,1),
  (7,'版权信息','WEB_SITE_COPYRIGHT','Copyright © 异乡逸家 All rights reserved.',1,'text','','设置在网站底部显示的版权信息，如“版权所有 © 2014-2015 科斯克网络科技”',1406991855,1406992583,7,1),
  (8,'网站备案号','WEB_SITE_ICP','苏ICP备1502009-2号',1,'text','','设置在网站底部显示的备案号，如“苏ICP备1502009-2号\"',1378900335,1415983236,8,1),
  (9,'站点统计','WEB_SITE_STATISTICS','',1,'textarea','','支持百度、Google、cnzz等所有Javascript的统计代码',1378900335,1415983236,9,1),
  (10,'首页地址','INDEX_URL','',1,'text','','可以通过配置此项自定义系统首页的地址，比如：http://www.opencmf.cn/user/index.html',1415983236,1415983236,10,1),
  (11,'文件上传大小','UPLOAD_FILE_SIZE','10',2,'num','','文件上传大小单位：MB',1428681031,1428681031,1,1),
  (12,'图片上传大小','UPLOAD_IMAGE_SIZE','2',2,'num','','图片上传大小单位：MB',1428681071,1428681071,2,1),
  (13,'后台多标签','ADMIN_TABS','1',2,'radio','0:关闭\r\n1:开启','',1453445526,1453445526,3,1),
  (14,'分页数量','ADMIN_PAGE_ROWS','10',2,'num','','分页时每页的记录数',1434019462,1434019481,4,1),
  (15,'后台主题','ADMIN_THEME','default',2,'select','default:默认主题\r\nblue:蓝色理想\r\ngreen:绿色生活','后台界面主题',1436678171,1436690570,5,1),
  (16,'开发模式','DEVELOP_MODE','1',3,'select','1:开启\r\n0:关闭','开发模式下会显示菜单管理、配置管理、数据字典等开发者工具',1432393583,1432393583,1,1),
  (17,'是否显示页面Trace','SHOW_PAGE_TRACE','0',3,'select','0:关闭\r\n1:开启','是否显示页面Trace信息',1387165685,1387165685,2,1),
  (18,'系统加密KEY','AUTH_KEY','CoreThink',3,'textarea','','轻易不要修改此项，否则容易造成用户无法登录；如要修改，务必备份原key',1438647773,1438647815,3,1),
  (19,'URL模式','URL_MODEL','3',4,'select','0:普通模式\r\n1:PATHINFO模式\r\n2:REWRITE模式\r\n3:兼容模式','',1438423248,1438423248,1,1),
  (20,'静态文件独立域名','STATIC_DOMAIN','',4,'text','','静态文件独立域名一般用于在用户无感知的情况下平和的将网站图片自动存储到腾讯万象优图、又拍云等第三方服务。',1438564784,1438564784,3,1),
  (21,'配置分组','CONFIG_GROUP_LIST','1:基本\r\n2:系统\r\n3:开发\r\n4:部署\r\n5:授权',2,'array','','配置分组',1379228036,1426930700,5,1),
  (22,'官网账号','AUTH_USERNAME','yxyj123',5,'text','','官网登陆账号（支持用户名、邮箱、手机号）',1438647815,1438647815,1,1),
  (23,'官网密码','AUTH_PASSWORD','',5,'text','','官网密码',1438647815,1438647815,2,1),
  (24,'密钥','AUTH_SN','g4W3sH7MtpquzNBnhqXJl4ulhcywzpnVjNCUpsjTsd-LiM6FgZLNmbW51Z-cjpamhn-bsMTOutaHqn6CxdOt3oufpKGSua-WurjIaZmPzbmcf5HNtZS-l4q5ea_GvMy9ioW4hpXOu9S1uLePhX6Wp4yLfbHIzr7Vh7qCocnS0NaQq6yGlc-vmbXNyXyajpXbjqSjssTQyJyKvKCOxauV1o2FuIeGqNHOusyzeJqAr9aMpYnExaeqq4q7hWy20q6uiJ7Wi4KVs5u3z5Z8mqa3uIqlhbvFqJnVibxgr7rTrd6EhtqQhreW1rep3YyOj67anH-RzbWUvpeKuXmvxrzMuoiFqIiCp6vYuLnVh4VpmtOLi33ExNC21YrSYY7F0ZXWiIWwh5K3kpu1t7d7hY6et4ykn73I0MzZh9GUhsa7naqXZNKGkre2ng',5,'textarea','','密钥请通过登陆http://www.opencmf.cn至个人中心获取',1438647815,1438647815,3,1),
  (25,'导航分组','NAV_GROUP_LIST','main:主导航\r\ntop:顶部导航\r\nbottom:底部导航\r\nwap_bottom:Wap底部导航',2,'array','','',1458904089,1458904089,0,1);

/*!40000 ALTER TABLE `oc_admin_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_admin_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_admin_group`;

CREATE TABLE `oc_admin_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级部门ID',
  `title` varchar(31) NOT NULL DEFAULT '' COMMENT '部门名称',
  `icon` varchar(31) NOT NULL DEFAULT '' COMMENT '图标',
  `menu_auth` text NOT NULL COMMENT '权限列表',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='部门信息表';

LOCK TABLES `oc_admin_group` WRITE;
/*!40000 ALTER TABLE `oc_admin_group` DISABLE KEYS */;

INSERT INTO `oc_admin_group` (`id`, `pid`, `title`, `icon`, `menu_auth`, `create_time`, `update_time`, `sort`, `status`)
VALUES
  (1,0,'超级管理员','','',1426881003,1427552428,0,1),
  (2,0,'房东','fa-user','{\"Rent\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\"]}',1460707885,1460707885,2,1);

/*!40000 ALTER TABLE `oc_admin_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_admin_hook
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_admin_hook`;

CREATE TABLE `oc_admin_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '钩子ID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `description` text NOT NULL COMMENT '描述',
  `addons` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子挂载的插件',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '类型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='钩子表';

LOCK TABLES `oc_admin_hook` WRITE;
/*!40000 ALTER TABLE `oc_admin_hook` DISABLE KEYS */;

INSERT INTO `oc_admin_hook` (`id`, `name`, `description`, `addons`, `type`, `create_time`, `update_time`, `status`)
VALUES
  (1,'AdminIndex','后台首页小工具','后台首页小工具',1,1446522155,1446522155,1),
  (2,'FormBuilderExtend','FormBuilder类型扩展Builder','',1,1447831268,1447831268,1),
  (3,'UploadFile','上传文件钩子','',1,1407681961,1407681961,1),
  (4,'PageHeader','页面header钩子，一般用于加载插件CSS文件和代码','',1,1407681961,1407681961,1),
  (5,'PageFooter','页面footer钩子，一般用于加载插件CSS文件和代码','',1,1407681961,1407681961,1),
  (6,'CommonHook','通用钩子，自定义用途，一般用来定制特殊功能','',1,1456147822,1456147822,1),
  (7,'SendMessage','实现系统发邮件功能','Email',1,1458701166,1458701166,1);

/*!40000 ALTER TABLE `oc_admin_hook` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_admin_module
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_admin_module`;

CREATE TABLE `oc_admin_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(31) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(63) NOT NULL DEFAULT '' COMMENT '标题',
  `logo` varchar(63) NOT NULL DEFAULT '' COMMENT '图片图标',
  `icon` varchar(31) NOT NULL DEFAULT '' COMMENT '字体图标',
  `icon_color` varchar(7) NOT NULL DEFAULT '' COMMENT '字体图标颜色',
  `description` varchar(127) NOT NULL DEFAULT '' COMMENT '描述',
  `developer` varchar(31) NOT NULL DEFAULT '' COMMENT '开发者',
  `version` varchar(7) NOT NULL DEFAULT '' COMMENT '版本',
  `user_nav` text NOT NULL COMMENT '个人中心导航',
  `config` text NOT NULL COMMENT '配置',
  `admin_menu` text NOT NULL COMMENT '菜单节点',
  `is_system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许卸载',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块功能表';

LOCK TABLES `oc_admin_module` WRITE;
/*!40000 ALTER TABLE `oc_admin_module` DISABLE KEYS */;

INSERT INTO `oc_admin_module` (`id`, `name`, `title`, `logo`, `icon`, `icon_color`, `description`, `developer`, `version`, `user_nav`, `config`, `admin_menu`, `is_system`, `create_time`, `update_time`, `sort`, `status`)
VALUES
  (1,'Admin','系统','','fa fa-cog','#3CA6F1','核心系统','南京科斯克网络科技有限公司','1.3.0','','','{\"1\":{\"pid\":\"0\",\"title\":\"\\u7cfb\\u7edf\",\"icon\":\"fa fa-cog\",\"level\":\"system\",\"id\":\"1\"},\"2\":{\"pid\":\"1\",\"title\":\"\\u7cfb\\u7edf\\u529f\\u80fd\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"2\"},\"3\":{\"pid\":\"2\",\"title\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"icon\":\"fa fa-wrench\",\"url\":\"Admin\\/Config\\/group\",\"id\":\"3\"},\"4\":{\"pid\":\"3\",\"title\":\"\\u4fee\\u6539\\u8bbe\\u7f6e\",\"url\":\"Admin\\/Config\\/groupSave\",\"id\":\"4\"},\"5\":{\"pid\":\"2\",\"title\":\"\\u5bfc\\u822a\\u7ba1\\u7406\",\"icon\":\"fa fa-map-signs\",\"url\":\"Admin\\/Nav\\/index\",\"id\":\"5\"},\"6\":{\"pid\":\"5\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/Nav\\/add\",\"id\":\"6\"},\"7\":{\"pid\":\"5\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/Nav\\/edit\",\"id\":\"7\"},\"8\":{\"pid\":\"5\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Nav\\/setStatus\",\"id\":\"8\"},\"9\":{\"pid\":\"2\",\"title\":\"\\u5e7b\\u706f\\u7ba1\\u7406\",\"icon\":\"fa fa-image\",\"url\":\"Admin\\/Slider\\/index\",\"id\":\"9\"},\"10\":{\"pid\":\"9\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/Slider\\/add\",\"id\":\"10\"},\"11\":{\"pid\":\"9\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/Slider\\/edit\",\"id\":\"11\"},\"12\":{\"pid\":\"9\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Slider\\/setStatus\",\"id\":\"12\"},\"13\":{\"pid\":\"2\",\"title\":\"\\u914d\\u7f6e\\u7ba1\\u7406\",\"icon\":\"fa fa-cogs\",\"url\":\"Admin\\/Config\\/index\",\"id\":\"13\"},\"14\":{\"pid\":\"13\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/Config\\/add\",\"id\":\"14\"},\"15\":{\"pid\":\"13\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/Config\\/edit\",\"id\":\"15\"},\"16\":{\"pid\":\"13\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Config\\/setStatus\",\"id\":\"16\"},\"17\":{\"pid\":\"2\",\"title\":\"\\u4e0a\\u4f20\\u7ba1\\u7406\",\"icon\":\"fa fa-upload\",\"url\":\"Admin\\/Upload\\/index\",\"id\":\"17\"},\"18\":{\"pid\":\"17\",\"title\":\"\\u4e0a\\u4f20\\u6587\\u4ef6\",\"url\":\"Admin\\/Upload\\/upload\",\"id\":\"18\"},\"19\":{\"pid\":\"17\",\"title\":\"\\u5220\\u9664\\u6587\\u4ef6\",\"url\":\"Admin\\/Upload\\/delete\",\"id\":\"19\"},\"20\":{\"pid\":\"17\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Upload\\/setStatus\",\"id\":\"20\"},\"21\":{\"pid\":\"17\",\"title\":\"\\u4e0b\\u8f7d\\u8fdc\\u7a0b\\u56fe\\u7247\",\"url\":\"Admin\\/Upload\\/downremoteimg\",\"id\":\"21\"},\"22\":{\"pid\":\"17\",\"title\":\"\\u6587\\u4ef6\\u6d4f\\u89c8\",\"url\":\"Admin\\/Upload\\/fileManager\",\"id\":\"22\"},\"23\":{\"pid\":\"1\",\"title\":\"\\u7cfb\\u7edf\\u6743\\u9650\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"23\"},\"24\":{\"pid\":\"23\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa fa-user\",\"url\":\"Admin\\/User\\/index\",\"id\":\"24\"},\"25\":{\"pid\":\"24\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/User\\/add\",\"id\":\"25\"},\"26\":{\"pid\":\"24\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/User\\/edit\",\"id\":\"26\"},\"27\":{\"pid\":\"24\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/User\\/setStatus\",\"id\":\"27\"},\"28\":{\"pid\":\"23\",\"title\":\"\\u7ba1\\u7406\\u5458\\u7ba1\\u7406\",\"icon\":\"fa fa-lock\",\"url\":\"Admin\\/Access\\/index\",\"id\":\"28\"},\"29\":{\"pid\":\"28\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/Access\\/add\",\"id\":\"29\"},\"30\":{\"pid\":\"28\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/Access\\/edit\",\"id\":\"30\"},\"31\":{\"pid\":\"28\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Access\\/setStatus\",\"id\":\"31\"},\"32\":{\"pid\":\"23\",\"title\":\"\\u7528\\u6237\\u7ec4\\u7ba1\\u7406\",\"icon\":\"fa fa-sitemap\",\"url\":\"Admin\\/Group\\/index\",\"id\":\"32\"},\"33\":{\"pid\":\"32\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/Group\\/add\",\"id\":\"33\"},\"34\":{\"pid\":\"32\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/Group\\/edit\",\"id\":\"34\"},\"35\":{\"pid\":\"32\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Group\\/setStatus\",\"id\":\"35\"},\"36\":{\"pid\":\"1\",\"title\":\"\\u6269\\u5c55\\u4e2d\\u5fc3\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"36\"},\"37\":{\"pid\":\"36\",\"title\":\"\\u524d\\u53f0\\u4e3b\\u9898\",\"icon\":\"fa fa-adjust\",\"url\":\"Admin\\/Theme\\/index\",\"id\":\"37\"},\"38\":{\"pid\":\"37\",\"title\":\"\\u5b89\\u88c5\",\"url\":\"Admin\\/Theme\\/install\",\"id\":\"38\"},\"39\":{\"pid\":\"37\",\"title\":\"\\u5378\\u8f7d\",\"url\":\"Admin\\/Theme\\/uninstall\",\"id\":\"39\"},\"40\":{\"pid\":\"37\",\"title\":\"\\u66f4\\u65b0\\u4fe1\\u606f\",\"url\":\"Admin\\/Theme\\/updateInfo\",\"id\":\"40\"},\"41\":{\"pid\":\"37\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Theme\\/setStatus\",\"id\":\"41\"},\"42\":{\"pid\":\"37\",\"title\":\"\\u5207\\u6362\\u4e3b\\u9898\",\"url\":\"Admin\\/Theme\\/setCurrent\",\"id\":\"42\"},\"43\":{\"pid\":\"37\",\"title\":\"\\u53d6\\u6d88\\u4e3b\\u9898\",\"url\":\"Admin\\/Theme\\/cancel\",\"id\":\"43\"},\"44\":{\"pid\":\"36\",\"title\":\"\\u529f\\u80fd\\u6a21\\u5757\",\"icon\":\"fa fa-th-large\",\"url\":\"Admin\\/Module\\/index\",\"id\":\"44\"},\"45\":{\"pid\":\"44\",\"title\":\"\\u5b89\\u88c5\",\"url\":\"Admin\\/Module\\/install\",\"id\":\"45\"},\"46\":{\"pid\":\"44\",\"title\":\"\\u5378\\u8f7d\",\"url\":\"Admin\\/Module\\/uninstall\",\"id\":\"46\"},\"47\":{\"pid\":\"44\",\"title\":\"\\u66f4\\u65b0\\u4fe1\\u606f\",\"url\":\"Admin\\/Module\\/updateInfo\",\"id\":\"47\"},\"48\":{\"pid\":\"44\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Module\\/setStatus\",\"id\":\"48\"},\"49\":{\"pid\":\"36\",\"title\":\"\\u63d2\\u4ef6\\u7ba1\\u7406\",\"icon\":\"fa fa-th\",\"url\":\"Admin\\/Addon\\/index\",\"id\":\"49\"},\"50\":{\"pid\":\"49\",\"title\":\"\\u5b89\\u88c5\",\"url\":\"Admin\\/Addon\\/install\",\"id\":\"50\"},\"51\":{\"pid\":\"49\",\"title\":\"\\u5378\\u8f7d\",\"url\":\"Admin\\/Addon\\/uninstall\",\"id\":\"51\"},\"52\":{\"pid\":\"49\",\"title\":\"\\u8fd0\\u884c\",\"url\":\"Admin\\/Addon\\/execute\",\"id\":\"52\"},\"53\":{\"pid\":\"49\",\"title\":\"\\u8bbe\\u7f6e\",\"url\":\"Admin\\/Addon\\/config\",\"id\":\"53\"},\"54\":{\"pid\":\"49\",\"title\":\"\\u540e\\u53f0\\u7ba1\\u7406\",\"url\":\"Admin\\/Addon\\/adminList\",\"id\":\"54\"},\"55\":{\"pid\":\"54\",\"title\":\"\\u65b0\\u589e\\u6570\\u636e\",\"url\":\"Admin\\/Addon\\/adminAdd\",\"id\":\"55\"},\"56\":{\"pid\":\"54\",\"title\":\"\\u7f16\\u8f91\\u6570\\u636e\",\"url\":\"Admin\\/Addon\\/adminEdit\",\"id\":\"56\"},\"57\":{\"pid\":\"54\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Addon\\/setStatus\",\"id\":\"57\"}}',1,1438651748,1458904778,0,1),
  (2,'User','用户','','fa fa-users','#F9B440','用户中心模块','南京科斯克网络科技有限公司','1.3.0','{\"title\":{\"center\":\"\\u4e2a\\u4eba\\u4fe1\\u606f\"},\"center\":{\"0\":{\"title\":\"\\u4fee\\u6539\\u4fe1\\u606f\",\"icon\":\"fa fa-edit\",\"url\":\"User\\/Center\\/profile\",\"color\":\"#F68A3A\"},\"2\":{\"title\":\"\\u6d88\\u606f\\u4e2d\\u5fc3\",\"icon\":\"fa fa-envelope-o\",\"url\":\"User\\/Message\\/index\",\"badge\":[\"User\\/Message\",\"newMessageCount\"],\"badge_class\":\"badge-danger\",\"color\":\"#80C243\"},\"4\":{\"title\":\"\\u4fee\\u6539\\u5bc6\\u7801\",\"icon\":\"fa fa-lock\",\"url\":\"User\\/Center\\/password\",\"color\":\"#45BEC3\"},\"5\":{\"title\":\"\\u5e10\\u53f7\\u5b89\\u5168\",\"icon\":\"fa fa-shield\",\"url\":\"User\\/Safety\\/index\",\"color\":\"#3C9746\"}},\"main\":[{\"title\":\"\\u4e2a\\u4eba\\u4e2d\\u5fc3\",\"icon\":\"fa fa-tachometer\",\"url\":\"User\\/Center\\/index\"}]}','{\"status\":\"1\",\"reg_toggle\":\"1\",\"allow_reg_type\":[\"email\"],\"deny_username\":\"\",\"user_protocol\":\"<p class=\\\"MsoNormal\\\" align=\\\"center\\\" style=\\\"text-align:center;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tPrivacy Policy<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tThis Privacy Policy describes the policies and procedures of Ehomie Technologies Inc. (\\\"we\\\", \\\"our\\\" or \\\"us\\\") on the collection, use and disclosure of your information on&nbsp;<u>&nbsp;http:\\/\\/www.ehomie.com<\\/u>&nbsp;(the \\\"Site\\\") and the services, features, content or applications we offer (collectively with the Site, the \\\"Services\\\"). When you use the Services, you are consenting to the collection, transfer, manipulation, storage, disclosure and other uses of your information as described in this Privacy Policy.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\t&nbsp;\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tWhat Does This Privacy Policy Cover?<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tThis Privacy Policy covers the treatment of personally identifiable information (\\\"Personal Information\\\") gathered when you use or access the Services. This Privacy Policy also covers our treatment of any Personal Information which landlords, tenants or our business partners share with us, or that we share with our business partners.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tThis Privacy Policy does not apply to the practices of third parties that we do not own or control, including but not limited to any landlords, renters, third party websites, services and applications (\\u201cThird Party Services\\u201d) that you elect to access through the Services or to individuals that we do not manage or employ. While we attempt to facilitate access only to those Third Party Services that share our respect for your privacy or that you request through your use of the Services, we cannot take responsibility for the content or privacy policies of those Third Party Services. We encourage you to carefully review the privacy policies of any Third Party Services you access.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\t&nbsp;\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tWhat Information Do We Collect?<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tThe information we gather enables us to personalize, improve and continue to operate the Services. In connection with certain aspects of the Services, we may request and collect some of your Personal Information. We collect the following types of information from our users.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tInformation You Provide Us: You may choose to provide us with certain information that could include, without limitation, Personal Information, such as your name, email address, employment information, social security number, demographic information, rental listing information, credit card or other payment information, background check information, rental application information, information contained in any lease you are negotiating or entering into, photo identification, reference letters, bank statements, income tax returns, or address of a listing you intend to rent, or other information we request from you that is required by law. You acknowledge that this information may be personal to you, and by providing this information to us, we may store such information and contact you to send you information about the Services.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tInformation Collected Automatically: We also receive and store certain types of information whenever you interact with the Services. We automatically receive and record information in our server logs from your browser, including your IP address, search queries, cookie information, and the listings and pages you request. We also record the details of your activity on the Services.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tInformation Collected Using Cookies: Cookies are pieces of text that may be provided to your computer through your web browser when you access a website. Your browser stores cookies in a manner associated with each website you visit. We use cookies to enable our servers to recognize your web browser and tell us how and when you visit the Site and otherwise use the Services through the Internet. Our cookies do not, by themselves, contain Personal Information, and we do not combine the general information collected through cookies with other Personal Information to tell us who you are. As noted, however, we do use cookies to identify that your web browser has accessed aspects of the Services. Most browsers have an option for turning off the cookie feature, which will prevent your browser from accepting new cookies, as well as (depending on the sophistication of your browser software) allowing you to decide on acceptance of each new cookie in a variety of ways. This Privacy Policy covers our use of cookies only and does not cover the use of cookies by third parties, including our partners. We do not control when or how third parties place cookies on your computer. For example, third party websites to which a link points may set cookies on your computer. Ads appearing on the Services may be delivered to users by our advertising partners, who may set cookies. These cookies allow the ad server to recognize your computer each time they send you an online advertisement to compile information about you or others who use your computer. This information allows ad networks to, among other things, deliver targeted advertisements that they believe will be of most interest to you. This Privacy Policy covers the use of cookies by Ehomie and does not cover the use of cookies by any third parties, including advertisers or partners.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tAggregate Information: We collect statistical information about how both users, collectively, use the Services (\\\"Aggregate Information\\\"). Some of this information is derived from Personal Information. This statistical information is not Personal Information and cannot be tied back to you or your web browser. This type of aggregate data enables us to figure out how often users use parts of the Services so that we can make the Services appealing to as many users as possible, and improve the Services. As part of this use of information, we may provide aggregate information to our partners about how our users, collectively, use our site. We share this type of statistical data so that our partners also understand how often people use their services and the Services, so that they, too, may provide you with an optimal online experience. Again, we never disclose aggregate information to a partner in a manner that would identify you personally.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tWe use conversion tracking from third-party advertising platforms, including Google and Baidu. These advertising programs use cookies to help determine aggregate, anonymous actions people took on our website after clicking an ad.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tHow, And With Whom, Is My Information Shared?<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tThird Party Services: At times, you may be able to access other Third Party Services through the Services. We are not responsible for the privacy policies and\\/or practices of these Third Party Services, and you are responsible for reading and understanding those Third Party Services\' privacy policies. This Privacy Policy only governs information collected on the Services.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tEmail Communications with Us and Other Users: As part of the Services, you may occasionally receive email and other communications from us, such as communications relating to promotions we are offering through the Services. You acknowledge and agree that by posting information on or through the Services, or requesting that we do so on your behalf, we and our agents, the landlords or tenants relevant to your request for Services, and others may send you e-mail, contact you or engage in other communications that they determine in their sole discretion relate to your profile or use of the Services. You may opt-out of receiving such communications by following the instructions included with such emails, but then you may not have access to certain features of the Services. In addition, we and others you interact with through the Services may wish to send you a house-warming gift or other expression of appreciation, and you acknowledge and agree that we may share your Personal Information with such persons, or use your Personal Information for such purposes.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tInformation Shared with Our Agents: We employ and contract with people and other entities that perform certain tasks on our behalf and who are under our control (our \\\"Agents\\\"). We may need to share Personal Information with our Agents in order to provide Services to you. Unless we tell you differently, our Agents do not have any right to use Personal Information or other information we share with them beyond what is necessary to assist us. You hereby consent to our sharing of Personal Information with our Agents.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tInformation Disclosed for Our Protection and the Protection of Others: We also reserve the right to access, read, preserve, and disclose any information as we reasonably believe is necessary to (i) satisfy any applicable law, regulation, legal process or governmental request, (ii) enforce the Terms of Service or this Privacy Policy, including investigation of potential violations thereof or hereof, (iii) detect, prevent, or otherwise address fraud, security or technical issues, (iv) respond to user support requests, or (v) protect our rights, property or safety, our users and the public. This includes exchanging information with other companies and organizations for fraud protection and spam\\/malware prevention.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tInformation We Share in Connection with the Services Performed for You: The information you provide, including, without limitation, your profile information, search criteria, user name, email, address, and co-habitant information, may be used to facilitate and provide the services for you and transactions within the Services. This may include, without limitation, sharing your Personal Information with potential landlords, agents, brokers, co-brokers, as applicable to your request for Services; and if you are landlord, we may also share your Personal Information (such as name, listing address, etc.) to potential tenants in connection with the Services.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tInformation We Share with Your Consent: Except as set forth above, you will be notified when your Personal Information may be shared with third parties, and will be able to prevent the sharing of this information.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tWhat Information Can I Access?<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tWe may allow you to access certain information about you for the purpose of viewing, and in certain situations, updating that information. This list will change as the Services change. When you update information, however, we often maintain a copy of the unrevised information in our records.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tWhat Happens When There Are Changes To This Privacy Policy?<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tWe may amend this Privacy Policy from time to time. Use of information we collect now is subject to the Privacy Policy in effect at the time such information is used. If we make changes in the way we collect or use information, we will notify you by posting an announcement on the Services or sending you an email. A user is bound by any changes to the Privacy Policy when he or she uses the Services after such changes have been first posted.<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-top:5pt;margin-bottom:5pt;line-height:17.05pt;background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tEffective Date: April 1, 2016<o:p><\\/o:p>\\r\\n<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"background-image:initial;background-attachment:initial;background-size:initial;background-origin:initial;background-clip:initial;background-position:initial;background-repeat:initial;\\\">\\r\\n\\tHave any more questions? Please email us at&nbsp;<a href=\\\"mailto:support@yourhomesuite.com\\\"><b>support@ehomie.com<\\/b><\\/a><o:p><\\/o:p>\\r\\n<\\/p>\",\"behavior\":[\"User\"]}','{\"1\":{\"pid\":\"0\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa fa-user\",\"id\":\"1\"},\"2\":{\"pid\":\"1\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"2\"},\"3\":{\"pid\":\"2\",\"title\":\"\\u7528\\u6237\\u8bbe\\u7f6e\",\"icon\":\"fa fa-wrench\",\"url\":\"User\\/Index\\/module_config\",\"id\":\"3\"},\"4\":{\"pid\":\"2\",\"title\":\"\\u7528\\u6237\\u7edf\\u8ba1\",\"icon\":\"fa fa-area-chart\",\"url\":\"User\\/Index\\/index\",\"id\":\"4\"},\"5\":{\"pid\":\"2\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa fa-list\",\"url\":\"User\\/User\\/index\",\"id\":\"5\"},\"6\":{\"pid\":\"5\",\"title\":\"\\u65b0\\u589e\",\"url\":\"User\\/User\\/add\",\"id\":\"6\"},\"7\":{\"pid\":\"5\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"User\\/User\\/edit\",\"id\":\"7\"},\"8\":{\"pid\":\"5\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"User\\/User\\/setStatus\",\"id\":\"8\"},\"9\":{\"pid\":\"2\",\"title\":\"\\u7528\\u6237\\u7c7b\\u578b\",\"icon\":\"fa fa-user\",\"url\":\"User\\/Type\\/index\",\"id\":\"9\"},\"10\":{\"pid\":\"9\",\"title\":\"\\u65b0\\u589e\",\"url\":\"User\\/Type\\/add\",\"id\":\"10\"},\"11\":{\"pid\":\"9\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"User\\/Type\\/edit\",\"id\":\"11\"},\"12\":{\"pid\":\"9\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"User\\/Type\\/setStatus\",\"id\":\"12\"},\"13\":{\"pid\":\"9\",\"title\":\"\\u5b57\\u6bb5\\u7ba1\\u7406\",\"icon\":\"fa fa-users\",\"url\":\"User\\/Attribute\\/index\",\"id\":\"13\"},\"14\":{\"pid\":\"13\",\"title\":\"\\u65b0\\u589e\",\"url\":\"User\\/Attribute\\/add\",\"id\":\"14\"},\"15\":{\"pid\":\"13\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"User\\/Attribute\\/edit\",\"id\":\"15\"},\"16\":{\"pid\":\"13\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"User\\/Attribute\\/setStatus\",\"id\":\"16\"},\"17\":{\"pid\":\"2\",\"title\":\"\\u6d88\\u606f\\u7ba1\\u7406\",\"icon\":\"fa fa-envelope-o\",\"url\":\"User\\/Message\\/index\",\"id\":\"17\"},\"18\":{\"pid\":\"17\",\"title\":\"\\u65b0\\u589e\",\"url\":\"User\\/Message\\/add\",\"id\":\"18\"},\"19\":{\"pid\":\"17\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"User\\/Message\\/edit\",\"id\":\"19\"},\"20\":{\"pid\":\"17\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"User\\/Message\\/setStatus\",\"id\":\"20\"},\"21\":{\"pid\":\"1\",\"title\":\"\\u7528\\u6237\\u7eaa\\u5f55\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"21\"},\"22\":{\"pid\":\"21\",\"title\":\"\\u79ef\\u5206\\u7eaa\\u5f55\",\"icon\":\"fa fa-genderless\",\"url\":\"User\\/Log\\/score\",\"id\":\"22\"},\"23\":{\"pid\":\"21\",\"title\":\"\\u767b\\u5f55\\u65e5\\u5fd7\",\"icon\":\"fa fa-calendar-check-o\",\"url\":\"User\\/Log\\/login\",\"id\":\"23\"}}',0,1457065442,1459321209,0,1),
  (4,'Rent','租房','','fa fa-home','#8ECD5D','租房房源管理模块','南京科斯克网络科技有限公司','1.3.0','','{\"taglib\":[\"Rent\"]}','{\"1\":{\"id\":\"1\",\"pid\":\"0\",\"title\":\"\\u79df\\u623f\",\"icon\":\"fa fa-home\"},\"2\":{\"pid\":\"1\",\"title\":\"\\u623f\\u6e90\\u7ba1\\u7406\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"2\"},\"3\":{\"pid\":\"2\",\"title\":\"\\u623f\\u6e90\\u5217\\u8868\",\"icon\":\"fa fa-home\",\"url\":\"Rent\\/Rent\\/index\",\"id\":\"3\"},\"4\":{\"pid\":\"3\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Rent\\/Rent\\/add\",\"id\":\"4\"},\"5\":{\"pid\":\"3\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Rent\\/Rent\\/edit\",\"id\":\"5\"},\"6\":{\"pid\":\"3\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Rent\\/Rent\\/setStatus\",\"id\":\"6\"},\"7\":{\"pid\":\"3\",\"title\":\"\\u623f\\u95f4\\u7ba1\\u7406\",\"url\":\"Rent\\/Room\\/index\",\"id\":\"7\"},\"8\":{\"pid\":\"7\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Rent\\/Room\\/add\",\"id\":\"8\"},\"9\":{\"pid\":\"7\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Rent\\/Room\\/edit\",\"id\":\"9\"},\"10\":{\"pid\":\"7\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Rent\\/Room\\/setStatus\",\"id\":\"10\"},\"11\":{\"pid\":\"7\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Rent\\/Join\\/edit\",\"id\":\"11\"},\"12\":{\"pid\":\"7\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Rent\\/Join\\/setStatus\",\"id\":\"12\"},\"13\":{\"pid\":\"2\",\"title\":\"\\u59d4\\u6258\\u627e\\u623f\",\"icon\":\"fa fa-bookmark-o\",\"url\":\"Rent\\/Entrust\\/index\",\"id\":\"13\"},\"14\":{\"pid\":\"2\",\"title\":\"\\u9884\\u7ea6\\u770b\\u623f\",\"icon\":\"fa fa-calendar\",\"url\":\"Rent\\/Reserve\\/index\",\"id\":\"14\"}}',0,1457065461,1458299426,0,1),
  (5,'Developer','开发工具','','fa fa-coffee','#3366CC','数据库管理模块','南京科斯克网络科技有限公司','1.3.0','','{\"host\":\"127.0.0.1\",\"db\":\"opencmf\",\"username\":\"root\",\"target\":\"_blank\"}','{\"1\":{\"pid\":\"0\",\"title\":\"\\u5f00\\u53d1\\u5de5\\u5177\",\"icon\":\"fa fa-coffee\",\"id\":\"1\"},\"2\":{\"pid\":\"1\",\"title\":\"\\u6570\\u636e\\u5e93\\u7ba1\\u7406\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"2\"},\"3\":{\"pid\":\"2\",\"title\":\"\\u6570\\u636e\\u5e93\\u914d\\u7f6e\",\"icon\":\"fa fa-wrench\",\"url\":\"Developer\\/Index\\/module_config\",\"id\":\"3\"},\"4\":{\"pid\":\"2\",\"title\":\"\\u6253\\u5f00Adminer\",\"icon\":\"fa fa-database\",\"url\":\"Developer\\/Index\\/index\",\"id\":\"4\"},\"5\":{\"pid\":\"2\",\"title\":\"\\u5728\\u7ebfIDE\",\"icon\":\"fa fa-edit\",\"url\":\"Developer\\/Index\\/ide\",\"id\":\"5\"}}',0,1458288798,1458288798,0,1),
  (6,'Cms','CMS','','fa fa-newspaper-o','#9933FF','CMS门户模块','南京科斯克网络科技有限公司','1.3.0','{\"title\":{\"center\":\"\\u5185\\u5bb9\\u7ba1\\u7406\"},\"center\":[{\"title\":\"\\u6211\\u7684\\u6587\\u6863\",\"icon\":\"fa fa-list\",\"url\":\"Cms\\/Index\\/my\",\"color\":\"#F68A3A\"},{\"title\":\"\\u6536\\u85cf\\u7684\\u6587\\u6863\",\"icon\":\"fa fa-heart\",\"url\":\"Cms\\/Mark\\/my\",\"color\":\"#398CD2\"}]}','{\"need_check\":\"1\",\"toggle_comment\":\"0\",\"group_list\":\"1:\\u9ed8\\u8ba4\",\"cate\":\"a:1\",\"taglib\":[\"Cms\"]}','{\"1\":{\"id\":\"1\",\"pid\":\"0\",\"title\":\"CMS\",\"icon\":\"fa fa-newspaper-o\"},\"2\":{\"pid\":\"1\",\"title\":\"\\u5185\\u5bb9\\u7ba1\\u7406\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"2\"},\"3\":{\"pid\":\"2\",\"title\":\"\\u6587\\u7ae0\\u914d\\u7f6e\",\"icon\":\"fa fa-wrench\",\"url\":\"Cms\\/Index\\/module_config\",\"id\":\"3\"},\"4\":{\"pid\":\"2\",\"title\":\"\\u6587\\u6863\\u6a21\\u578b\",\"icon\":\"fa fa-th-large\",\"url\":\"Cms\\/Type\\/index\",\"id\":\"4\"},\"5\":{\"pid\":\"4\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Type\\/add\",\"id\":\"5\"},\"6\":{\"pid\":\"4\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Type\\/edit\",\"id\":\"6\"},\"7\":{\"pid\":\"4\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Type\\/setStatus\",\"id\":\"7\"},\"8\":{\"pid\":\"4\",\"title\":\"\\u5b57\\u6bb5\\u7ba1\\u7406\",\"icon\":\"fa fa-database\",\"url\":\"Cms\\/Attribute\\/index\",\"id\":\"8\"},\"9\":{\"pid\":\"8\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Attribute\\/add\",\"id\":\"9\"},\"10\":{\"pid\":\"8\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Attribute\\/edit\",\"id\":\"10\"},\"11\":{\"pid\":\"8\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Attribute\\/setStatus\",\"id\":\"11\"},\"12\":{\"pid\":\"2\",\"title\":\"\\u680f\\u76ee\\u5206\\u7c7b\",\"icon\":\"fa fa-navicon\",\"url\":\"Cms\\/Category\\/index\",\"id\":\"12\"},\"13\":{\"pid\":\"12\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Category\\/add\",\"id\":\"13\"},\"14\":{\"pid\":\"12\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Category\\/edit\",\"id\":\"14\"},\"15\":{\"pid\":\"12\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Category\\/setStatus\",\"id\":\"15\"},\"16\":{\"pid\":\"12\",\"title\":\"\\u6587\\u6863\\u7ba1\\u7406\",\"icon\":\"fa fa-edit\",\"url\":\"Cms\\/Index\\/index\",\"id\":\"16\"},\"17\":{\"pid\":\"16\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Index\\/add\",\"id\":\"17\"},\"18\":{\"pid\":\"16\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Index\\/edit\",\"id\":\"18\"},\"19\":{\"pid\":\"16\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Index\\/setStatus\",\"id\":\"19\"},\"36\":{\"pid\":\"2\",\"title\":\"\\u56de\\u6536\\u7ad9\",\"icon\":\"fa fa-recycle\",\"url\":\"Cms\\/Index\\/recycle\",\"id\":\"36\"},\"37\":{\"pid\":\"36\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Notice\\/setStatus\",\"id\":\"37\"},\"38\":{\"pid\":\"2\",\"title\":\"\\u4e3e\\u62a5\\u5217\\u8868\",\"icon\":\"fa fa-info-circle\",\"url\":\"Cms\\/Report\\/index\",\"id\":\"38\"},\"39\":{\"pid\":\"38\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Report\\/edit\",\"id\":\"39\"},\"40\":{\"pid\":\"38\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Report\\/setStatus\",\"id\":\"40\"}}',0,1458897130,1459321051,0,1);

/*!40000 ALTER TABLE `oc_admin_module` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_admin_nav
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_admin_nav`;

CREATE TABLE `oc_admin_nav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(63) NOT NULL DEFAULT '' COMMENT '导航名称',
  `title` varchar(31) NOT NULL DEFAULT '' COMMENT '导航标题',
  `type` varchar(15) NOT NULL DEFAULT '0' COMMENT '导航类型',
  `value` text NOT NULL COMMENT '导航值',
  `target` varchar(11) NOT NULL DEFAULT '' COMMENT '打开方式',
  `icon` varchar(32) NOT NULL DEFAULT '' COMMENT '图标',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  `group` char(63) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='前台导航表';

LOCK TABLES `oc_admin_nav` WRITE;
/*!40000 ALTER TABLE `oc_admin_nav` DISABLE KEYS */;

INSERT INTO `oc_admin_nav` (`id`, `pid`, `name`, `title`, `type`, `value`, `target`, `icon`, `create_time`, `update_time`, `sort`, `status`, `group`)
VALUES
  (1,0,'home','首页','link','','','fa-archive',1441293186,1441297331,0,1,''),
  (2,0,'user','用户','module','User','','fa fa-users',1457065442,1457065442,0,1,''),
  (3,0,'cms','CMS','module','Cms','','fa fa-newspaper-o',1457065452,1457065452,0,1,''),
  (4,0,'rent','租房','module','Rent','','fa fa-home',1457065462,1457065462,0,1,''),
  (5,0,'developer','开发工具','module','Developer','','fa fa-coffee',1458288798,1458288798,0,1,''),
  (7,0,'','关于我们','page','关于我们','','',1458907747,1459498236,0,1,'bottom'),
  (8,0,'','房东委托','page','房东委托房东委托','','',1458907780,1459498329,0,1,'bottom'),
  (9,0,'','商务合作','page','商务合作商务合作','','',1458907942,1459498353,0,1,'bottom'),
  (10,0,'','媒体合作','page','媒体合作','','',1458907965,1459498378,0,1,'bottom'),
  (11,0,'','联系我们','page','联系我们联系我们','','',1458907983,1459498413,0,1,'bottom'),
  (12,0,'','加入我们','page','加入我们加入我们','','',1458908008,1459391818,0,1,'bottom');

/*!40000 ALTER TABLE `oc_admin_nav` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_admin_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_admin_session`;

CREATE TABLE `oc_admin_session` (
  `session_id` varchar(255) NOT NULL,
  `session_expire` int(11) NOT NULL,
  `session_data` blob,
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='session存储表';

LOCK TABLES `oc_admin_session` WRITE;
/*!40000 ALTER TABLE `oc_admin_session` DISABLE KEYS */;

INSERT INTO `oc_admin_session` (`session_id`, `session_expire`, `session_data`)
VALUES
  ('hn7q9rikin27le44bncl8j8dr2',1467438107,X'4F435F5958594B41646D696E5F7C613A323A7B733A393A22757365725F61757468223B613A343A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A383A226E69636B6E616D65223B733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B733A363A22617661746172223B733A313A2230223B7D733A31343A22757365725F617574685F7369676E223B733A34303A2239653265336438623339663531356366333935373235356235613439326139663633383862666339223B7D4F435F5958594B486F6D655F7C613A313A7B733A33333A22643264393737633538343434323731643963373830313837653933663830653531223B613A323A7B733A31313A227665726966795F636F6465223B733A33323A226535386438303939333762353363306638343839353533353665623238376237223B733A31313A227665726966795F74696D65223B693A313435383230323130363B7D7D'),
  ('vahugol5ohf8l8e0ko08okvn62',1468065183,X'4F435F5958594B486F6D655F7C613A363A7B733A33333A22643264393737633538343434323731643963373830313837653933663830653531223B613A323A7B733A31313A227665726966795F636F6465223B733A33323A223439373464396339396566313331316238646463363464636339343435396561223B733A31313A227665726966795F74696D65223B693A313435383535303839383B7D733A31363A22757365725F617574685F657870697265223B693A313435393432353136393B733A31303A226C696D69745F74696D65223B693A313435383730333830333B733A31303A227265675F766572696679223B733A33323A223738666361326662336331343832656538386338363461656139303063366666223B733A393A22757365725F61757468223B613A353A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A363A22617661746172223B733A313A2230223B733A31303A226176617461725F75726C223B733A37353A22687474703A2F2F6C6F63616C686F73742F6E79686F7573652F2E2F5468656D652F44656661756C742F486F6D652F5075626C69632F696D672F64656661756C742F6176617461722E706E67223B733A333A22766970223B4E3B7D733A31343A22757365725F617574685F7369676E223B733A34303A2239663137653462633165616137656665346264636635386438353033313634393766376532326630223B7D4F435F5958594B41646D696E5F7C613A323A7B733A393A22757365725F61757468223B613A343A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A383A226E69636B6E616D65223B733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B733A363A22617661746172223B733A313A2230223B7D733A31343A22757365725F617574685F7369676E223B733A34303A2239653265336438623339663531356366333935373235356235613439326139663633383862666339223B7D'),
  ('fs8nvite342moo0p3em90v8lp7',1466940350,X'4F435F5958594B486F6D655F7C613A313A7B733A33333A22643264393737633538343434323731643963373830313837653933663830653531223B613A323A7B733A31313A227665726966795F636F6465223B733A33323A223565636363656537353337663839393931653735343936323836336438323963223B733A31313A227665726966795F74696D65223B693A313435383239393530363B7D7D4F435F5958594B41646D696E5F7C613A323A7B733A393A22757365725F61757468223B613A343A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A383A226E69636B6E616D65223B733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B733A363A22617661746172223B733A313A2230223B7D733A31343A22757365725F617574685F7369676E223B733A34303A2239653265336438623339663531356366333935373235356235613439326139663633383862666339223B7D'),
  ('klbi8c8l8nhnm8hnubdk9mkd81',1469362941,X'4F435F5958594B41646D696E5F7C613A323A7B733A393A22757365725F61757468223B613A343A7B733A333A22756964223B733A323A223136223B733A383A22757365726E616D65223B733A31313A225531343539353038363633223B733A383A226E69636B6E616D65223B733A323A226664223B733A363A22617661746172223B733A313A2230223B7D733A31343A22757365725F617574685F7369676E223B733A34303A2233656538333364373130353039666231323762623864616232313534363333623439323436396331223B7D4F435F5958594B486F6D655F7C613A353A7B733A33333A22643264393737633538343434323731643963373830313837653933663830653531223B613A323A7B733A31313A227665726966795F636F6465223B733A33323A223063633735323763313763333365616566393565383939343132333638343733223B733A31313A227665726966795F74696D65223B693A313435383534393933333B7D733A31363A22757365725F617574685F657870697265223B693A313436303732323933393B733A31303A227265675F766572696679223B733A33323A223939373339643936363934666364333233376234306535366661383866303932223B733A393A22757365725F61757468223B613A353A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A363A22617661746172223B733A313A2230223B733A31303A226176617461725F75726C223B733A38303A22687474703A2F2F6C6F63616C686F73742F686F7573652D72656E74616C2F2E2F5468656D652F44656661756C742F486F6D652F5075626C69632F696D672F64656661756C742F6176617461722E706E67223B733A333A22766970223B4E3B7D733A31343A22757365725F617574685F7369676E223B733A34303A2262623132356261626339303039373965356631353761653163613834633966306532343139313035223B7D'),
  ('nkg2edi8435dkk2cat87rsiif4',1468291730,''),
  ('8b4jo31dgaf4imbamt2ntlu557',1467538077,''),
  ('vq2sptv9sb9lngu6apam7ko1e1',1467537926,''),
  ('e5h1melmir1mrs5v06fdc59np2',1467553822,X'4F435F5958594B41646D696E5F7C613A323A7B733A393A22757365725F61757468223B613A343A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A383A226E69636B6E616D65223B733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B733A363A22617661746172223B733A313A2230223B7D733A31343A22757365725F617574685F7369676E223B733A34303A2239653265336438623339663531356366333935373235356235613439326139663633383862666339223B7D4F435F5958594B486F6D655F7C613A333A7B733A393A22757365725F61757468223B613A353A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A363A22617661746172223B733A313A2230223B733A31303A226176617461725F75726C223B733A37323A22687474703A2F2F7978796A2E636F64696E672E696F2F2E2F5468656D652F44656661756C742F486F6D652F5075626C69632F696D672F64656661756C742F6176617461722E706E67223B733A333A22766970223B4E3B7D733A31343A22757365725F617574685F7369676E223B733A34303A2234663138656361323133386230376535643538653232626130383263633535656136356464663066223B733A31363A22757365725F617574685F657870697265223B693A313435383931333832313B7D'),
  ('vosqfod2vbfoq2cvgi7fno8t63',1467538077,''),
  ('b32o8jaq57dla92ibk1lc3kvb1',1469364320,X'4F435F5958594B486F6D655F7C613A343A7B733A31303A227265675F766572696679223B733A33323A226362336431643761333764343036363565613435313138366162393761306364223B733A31363A22757365725F617574685F657870697265223B693A313436303732343331373B733A393A22757365725F61757468223B613A353A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A363A22617661746172223B733A313A2230223B733A31303A226176617461725F75726C223B733A37323A22687474703A2F2F7978796A2E636F64696E672E696F2F2E2F5468656D652F44656661756C742F486F6D652F5075626C69632F696D672F64656661756C742F6176617461722E706E67223B733A333A22766970223B4E3B7D733A31343A22757365725F617574685F7369676E223B733A34303A2234663138656361323133386230376535643538653232626130383263633535656136356464663066223B7D4F435F5958594B41646D696E5F7C613A323A7B733A393A22757365725F61757468223B613A343A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A383A226E69636B6E616D65223B733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B733A363A22617661746172223B733A313A2230223B7D733A31343A22757365725F617574685F7369676E223B733A34303A2239653265336438623339663531356366333935373235356235613439326139663633383862666339223B7D'),
  ('j5l66tjb3s6lbs22t4uja5c4c6',1468631329,X'4F435F5958594B41646D696E5F7C613A323A7B733A393A22757365725F61757468223B613A343A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A383A226E69636B6E616D65223B733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B733A363A22617661746172223B733A313A2230223B7D733A31343A22757365725F617574685F7369676E223B733A34303A2239653265336438623339663531356366333935373235356235613439326139663633383862666339223B7D'),
  ('7g3ecoe4vbmrtmt1d8ft3pleg0',1467777297,''),
  ('6th5a50mii0gbdiu8a6rqgu786',1468552092,''),
  ('pl0nt4cjvuf53ro1rgoakv4se2',1468249247,''),
  ('l7ck7lf3ledkit32kbb219imq4',1468291707,''),
  ('bci6v3vmma9huqv6fgqjol3p46',1468291760,''),
  ('14r81kqlh6lop6hh4r3p7rini6',1468050390,X'4F435F5958594B41646D696E5F7C613A323A7B733A393A22757365725F61757468223B613A343A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A383A226E69636B6E616D65223B733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B733A363A22617661746172223B733A313A2230223B7D733A31343A22757365725F617574685F7369676E223B733A34303A2239653265336438623339663531356366333935373235356235613439326139663633383862666339223B7D'),
  ('s2cmavq6qs9rmg3qa5it3931s6',1468039705,''),
  ('6l87es0hvq06uo3ob62s1o4cu4',1468746841,X'4F435F5958594B486F6D655F7C613A333A7B733A393A22757365725F61757468223B613A353A7B733A333A22756964223B733A323A223136223B733A383A22757365726E616D65223B733A31313A225531343539353038363633223B733A363A22617661746172223B733A313A2230223B733A31303A226176617461725F75726C223B733A37323A22687474703A2F2F7978796A2E636F64696E672E696F2F2E2F5468656D652F44656661756C742F486F6D652F5075626C69632F696D672F64656661756C742F6176617461722E706E67223B733A333A22766970223B4E3B7D733A31343A22757365725F617574685F7369676E223B733A34303A2264613939306565333465383933346464363637316666616631663537616635623762323364613765223B733A31363A22757365725F617574685F657870697265223B693A313436303130363833393B7D'),
  ('1mm9mf8edd1hckt8qokg9tes04',1468060248,X'4F435F5958594B486F6D655F7C613A333A7B733A393A22757365725F61757468223B613A353A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A363A22617661746172223B733A313A2230223B733A31303A226176617461725F75726C223B733A38303A22687474703A2F2F6C6F63616C686F73742F686F7573652D72656E74616C2F2E2F5468656D652F44656661756C742F486F6D652F5075626C69632F696D672F64656661756C742F6176617461722E706E67223B733A333A22766970223B4E3B7D733A31343A22757365725F617574685F7369676E223B733A34303A2262623132356261626339303039373965356631353761653163613834633966306532343139313035223B733A31363A22757365725F617574685F657870697265223B693A313435393432303234363B7D'),
  ('c6khg7fva3ek982hff176u5os3',1468656655,X'4F435F5958594B486F6D655F7C613A333A7B733A393A22757365725F61757468223B613A353A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A363A22617661746172223B733A313A2230223B733A31303A226176617461725F75726C223B733A38303A22687474703A2F2F6C6F63616C686F73742F686F7573652D72656E74616C2F2E2F5468656D652F44656661756C742F486F6D652F5075626C69632F696D672F64656661756C742F6176617461722E706E67223B733A333A22766970223B4E3B7D733A31343A22757365725F617574685F7369676E223B733A34303A2262623132356261626339303039373965356631353761653163613834633966306532343139313035223B733A31363A22757365725F617574685F657870697265223B693A313436303031363635333B7D'),
  ('q6hmd50jjjob8dh4gd1ousa1r0',1468509813,X'4F435F5958594B486F6D655F7C613A333A7B733A31363A22757365725F617574685F657870697265223B693A313435393836393737393B733A393A22757365725F61757468223B613A353A7B733A333A22756964223B733A323A223135223B733A383A22757365726E616D65223B733A31313A225531343539353037353030223B733A363A22617661746172223B733A313A2230223B733A31303A226176617461725F75726C223B733A38303A22687474703A2F2F6C6F63616C686F73742F686F7573652D72656E74616C2F2E2F5468656D652F44656661756C742F486F6D652F5075626C69632F696D672F64656661756C742F6176617461722E706E67223B733A333A22766970223B4E3B7D733A31343A22757365725F617574685F7369676E223B733A34303A2239616131616561653965613963376461396361633434326662376364313865393962376662363632223B7D'),
  ('nnhealhv7f0r3bkccn6ehktcc6',1468291757,''),
  ('pjlkv6b458v852ag39chhab5j7',1468291761,''),
  ('9r5emo6bi60hnegkgi9mkcfst1',1468291884,''),
  ('299fke5jq0hp5oegfn8uhvmid2',1469459932,X'4F435F5958594B486F6D655F7C613A343A7B733A31303A227265675F766572696679223B733A33323A223436313362613332373564623839326562336666613132636164656230383765223B733A31363A22757365725F617574685F657870697265223B693A313436303831393933303B733A393A22757365725F61757468223B613A353A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A363A22617661746172223B733A313A2230223B733A31303A226176617461725F75726C223B733A37323A22687474703A2F2F7978796A2E636F64696E672E696F2F2E2F5468656D652F44656661756C742F486F6D652F5075626C69632F696D672F64656661756C742F6176617461722E706E67223B733A333A22766970223B4E3B7D733A31343A22757365725F617574685F7369676E223B733A34303A2234663138656361323133386230376535643538653232626130383263633535656136356464663066223B7D4F435F5958594B41646D696E5F7C613A323A7B733A393A22757365725F61757468223B613A343A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A383A226E69636B6E616D65223B733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B733A363A22617661746172223B733A313A2230223B7D733A31343A22757365725F617574685F7369676E223B733A34303A2239653265336438623339663531356366333935373235356235613439326139663633383862666339223B7D'),
  ('4151j7q7eosr0oohpns7dnskb1',1468498573,''),
  ('fnthrl7lcv2135jg4aq1c7np30',1468730324,''),
  ('oqdkccvab21vbdfq0g3rhar6d7',1468671664,''),
  ('a6kev1h2fg4tckt4uflrf431o4',1468557525,''),
  ('peqrdl2jhjmkve6ucho3ef27q4',1468560546,''),
  ('tjoptpphfturf2a4avq8pmpg05',1468560464,''),
  ('qrgmkld4uonuv18tp1i6qe0qa1',1468560541,''),
  ('8u04i5h6ct081kn6jfikicbk51',1468560547,''),
  ('s3ja021mqe9gkunpq8hkof7qb0',1469358728,X'4F435F5958594B486F6D655F7C613A333A7B733A393A22757365725F61757468223B613A353A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A363A22617661746172223B733A313A2230223B733A31303A226176617461725F75726C223B733A37323A22687474703A2F2F7978796A2E636F64696E672E696F2F2E2F5468656D652F44656661756C742F486F6D652F5075626C69632F696D672F64656661756C742F6176617461722E706E67223B733A333A22766970223B4E3B7D733A31343A22757365725F617574685F7369676E223B733A34303A2234663138656361323133386230376535643538653232626130383263633535656136356464663066223B733A31363A22757365725F617574685F657870697265223B693A313436303731383730363B7D4F435F5958594B41646D696E5F7C613A313A7B733A33333A22643264393737633538343434323731643963373830313837653933663830653531223B613A323A7B733A31313A227665726966795F636F6465223B733A33323A226532343132616430613838303237643061373836373361363435383865396239223B733A31313A227665726966795F74696D65223B693A313435393939393734393B7D7D'),
  ('7mu2tp3tv18vov79lepe47tub4',1468587529,''),
  ('6hbce6c6re58h8dtvt3u4ptiv7',1468593405,''),
  ('fe0pvhfnpmm8qses16qgft4to1',1468730027,''),
  ('tacnb8jvt3ct4bpai5hl837a96',1468750074,''),
  ('eml2i4p6ekeo2sihsgot7lq1l5',1469005479,''),
  ('ngdpbm7nf2t3mvrl8u4pcu6d77',1469008095,''),
  ('ac16cv361h3qo0vhbvbsnj88c6',1469008095,''),
  ('mae8gojuv163f8lgmrhc03r4t0',1469008112,''),
  ('5h02n6ebqpsoub9uccc6sparh3',1469256924,''),
  ('o4r37jarkogdl6m8pecdlru1r3',1469259018,'');

/*!40000 ALTER TABLE `oc_admin_session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_admin_slider
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_admin_slider`;

CREATE TABLE `oc_admin_slider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '幻灯ID',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '标题',
  `cover` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '封面ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '点击链接',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='幻灯切换表';



# Dump of table oc_admin_theme
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_admin_theme`;

CREATE TABLE `oc_admin_theme` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '标题',
  `description` varchar(127) NOT NULL DEFAULT '' COMMENT '描述',
  `developer` varchar(32) NOT NULL DEFAULT '' COMMENT '开发者',
  `version` varchar(8) NOT NULL DEFAULT '' COMMENT '版本',
  `config` text COMMENT '主题配置',
  `current` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否当前主题',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='前台主题表';

LOCK TABLES `oc_admin_theme` WRITE;
/*!40000 ALTER TABLE `oc_admin_theme` DISABLE KEYS */;

INSERT INTO `oc_admin_theme` (`id`, `name`, `title`, `description`, `developer`, `version`, `config`, `current`, `create_time`, `update_time`, `sort`, `status`)
VALUES
  (1,'Default','官方默认主题','官方默认主题','南京科斯克网络科技有限公司','1.1',NULL,1,1457065558,1457065558,0,1);

/*!40000 ALTER TABLE `oc_admin_theme` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_admin_upload
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_admin_upload`;

CREATE TABLE `oc_admin_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'UID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文件链接',
  `ext` char(4) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件sha1编码',
  `location` varchar(15) NOT NULL DEFAULT '' COMMENT '文件存储位置',
  `download` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文件上传表';

LOCK TABLES `oc_admin_upload` WRITE;
/*!40000 ALTER TABLE `oc_admin_upload` DISABLE KEYS */;

INSERT INTO `oc_admin_upload` (`id`, `uid`, `name`, `path`, `url`, `ext`, `size`, `md5`, `sha1`, `location`, `download`, `create_time`, `update_time`, `sort`, `status`)
VALUES
  (2,1,'0.jpg','/Uploads/2016-03-28/56f8da0551840.jpg','','jpg',1373,'f26b8d13bd0c0d8ababbedfe97868f01','066a3b3c8191e258f4c126d209c9fe9696c5e060','Local',0,1459149317,1459149317,0,1),
  (3,1,'2.jpg','/Uploads/2016-03-28/56f8fc3185270.jpg','','jpg',785659,'93141638180f29f7d68cd538043b4c7d','d8ff4b96054730808d297698614be6a8e123b225','Local',0,1459158065,1459158065,0,1),
  (4,1,'1.jpg','/Uploads/2016-03-28/56f90f007c378.jpg','','jpg',137516,'008dd69060407ec4591318316f354808','0b188eb20a0f8e2464b24678f1c293becfcdb80c','Local',0,1459162880,1459162880,0,1),
  (92,1,'203944930.jpg','/Uploads/2016-04-12/570c665685d47.jpg','','jpg',96862,'3e3805ec3d42ff6047075e65e10342df','21e8e07d897bf57eb9692a62b9186486fcc49c66','Local',0,1460430422,1460430422,0,1),
  (93,1,'203944899.jpg','/Uploads/2016-04-12/570c66569018c.jpg','','jpg',101827,'e4b9ec1e3b1e70139a46caff8547a7c4','050cd7ba59954d851606c3d46c9565abd1f76029','Local',0,1460430422,1460430422,0,1),
  (7,1,'-7_559d14a9d1ae6.jpg','/Uploads/2016-03-30/56fb8e2cbf82f.jpg','','jpg',327027,'e3816204df5b3c8f7b86df95dae244de','05b722a7cd179e0945d241258066b0a8fe2a5773','Local',0,1459326508,1459326508,0,1),
  (8,1,'7_4b74544c613af.jpg','/Uploads/2016-03-30/56fb8e5a3d87f.jpg','','jpg',640392,'8852596747219041e2708ffe48875f71','f05d5bed957ea19beae32bd2ce78c3de41a6a121','Local',0,1459326554,1459326554,0,1),
  (9,1,'679ee809gw1eq20kuc3c5j20gl0nmn17.jpg','/Uploads/2016-03-30/56fb907ad1845.jpg','','jpg',71108,'152299f7b18cc72b11706389d947f8c1','791572ba890ada3a769b1e66f1fe1d6ac76de97d','Local',0,1459327098,1459327098,0,1),
  (10,1,'51955985_p0.jpg','/Uploads/2016-03-30/56fb910990209.jpg','','jpg',524316,'5b29dcced9b737638028d8c69b6434af','be20440f26776d0e33f55bfa6f5b41809f2d53d9','Local',0,1459327241,1459327241,0,1),
  (11,1,'异乡逸家网页图标.png','/Uploads/2016-03-30/56fb9a92074ea.png','','png',20726,'5c732b0e554c7e0e43a71ea4b5f558ee','10b601c7d3a9ae3149636d52fa0a67058f6a4816','Local',0,1459329682,1459329682,0,1),
  (12,1,'异乡逸家图标.png','/Uploads/2016-03-30/56fb9aa849894.png','','png',114506,'a20e63955072ed68983c3b906be5c705','5ab10a0ecb207e4e587710a7d4e7e2a73f56cb05','Local',0,1459329704,1459329704,0,1),
  (13,1,'未标题-1_20.png','/Uploads/2016-03-30/56fb9b994ca85.png','','png',4077,'7c7101c7438e11c5cf4733b627382717','af48148615c82198e7eff4e0844038eba8a90ef4','Local',0,1459329945,1459329945,0,1),
  (14,1,'未标题-1_09.png','/Uploads/2016-03-30/56fb9c1d0dccc.png','','png',6766,'59dc344c7c06c3b3450f22950dd00011','2b8a5cee78ac10341fd7ed58976aed3eb7f8726f','Local',0,1459330077,1459330077,0,1),
  (15,1,'未标题-1_23.png','/Uploads/2016-03-30/56fb9cac89244.png','','png',1206,'533df672d4dc4c0b56e544aa14536421','6f50521fccafdc4e5696187112a0cd9bb5b5bc2f','Local',0,1459330220,1459330220,0,1),
  (16,1,'未标题-1_03.png','/Uploads/2016-03-30/56fb9cbe19d08.png','','png',8107,'214537b275f792a742804d6c7db94bbd','3f67f4cbb19a539ab98db53aacb70ae5f19898ab','Local',0,1459330238,1459330238,0,1),
  (17,1,'未标题-1_06.png','/Uploads/2016-03-30/56fb9cbe1c030.png','','png',2190,'4a7b587b49de801c4426918bdb9e6bb1','efb37c2f068f613d051967d4783fb91c4be16a9d','Local',0,1459330238,1459330238,0,1),
  (18,1,'gou_06.png','/Uploads/2016-03-30/56fb9cbe19920.png','','png',14221,'41346545b67472e8c8faa52ead9caebe','b127cc161c9142e3abcfe18a2a3d70284c758ddb','Local',0,1459330238,1459330238,0,1),
  (19,1,'未标题-1_15.png','/Uploads/2016-03-30/56fb9cbfb78d6.png','','png',2959,'07803da14ddaab91228d647b15d9bfd1','4658621dadbb2e693e007fa25de816311e87709b','Local',0,1459330239,1459330239,0,1),
  (20,1,'未标题-1_17.png','/Uploads/2016-03-30/56fb9cbfbb36f.png','','png',1630,'495b7b29add30d8d39dabcd97d66ac00','b742c0796022236debfee09005f78495595e4d16','Local',0,1459330239,1459330239,0,1),
  (21,1,'未标题-1_26.png','/Uploads/2016-03-30/56fb9de368dc9.png','','png',6170,'4fd9082a13f42f2e3ca7c85b19e4021f','0bfbef61e2f1dc203d369da1596dfd0643e27aa2','Local',0,1459330531,1459330531,0,1),
  (22,1,'未标题-1_12.png','/Uploads/2016-03-30/56fb9f8f7d7ce.png','','png',6898,'c1cd9f6a8aae980d212eab2ee8b75556','b32548c6418779ef0b8256e8e5c7adfac6d48db9','Local',0,1459330959,1459330959,0,1),
  (23,1,'xc36.jpg','/Uploads/2016-03-30/56fba0b9693be.jpg','','jpg',303580,'ff56af3314ff68192f25dd892aa02592','c7080eb870a322e7301fbb8690e1a5a8a4d0c09c','Local',0,1459331257,1459331257,0,1),
  (24,1,'tumblr_nrwbxabXvx1s5oxc0o1_1280.jpg','/Uploads/2016-03-30/56fba0c6250d5.jpg','','jpg',457986,'c1c929d980347fcfbe0d14c5f1582cac','99a9919aee6c88d45c95c48c03223378f27d0b22','Local',0,1459331270,1459331270,0,1),
  (25,1,'a8457564gw1enmd5p0x21j20rs0wvtey.jpg','/Uploads/2016-03-30/56fba1903ca05.jpg','','jpg',48364,'cc272963c3f27c8919eaca3ebb957dd3','0fd6d9c2db51dd71750c00ea15963804b55fc354','Local',0,1459331472,1459331472,0,1),
  (26,1,'a7d296e6gw1f1kl0udll2j20m80hswjx.jpg','/Uploads/2016-03-30/56fba1c3a51aa.jpg','','jpg',160943,'6db0e827d3f131a98ba62c22290788d7','dc0eb966356ae465a0351725ee56a0d158a2ab38','Local',0,1459331523,1459331523,0,1),
  (27,1,'windows_69-wallpaper-3840x2160.jpg','/Uploads/2016-03-30/56fba2f1257a6.jpg','','jpg',1837649,'3b57da1228d5789fe3335db94ae61721','4962a2fcff7ab4b668aa45c0a9720b278bd2bb9e','Local',0,1459331825,1459331825,0,1),
  (28,1,'-7_559a98f4e207e.jpg','/Uploads/2016-03-30/56fba320488f6.jpg','','jpg',1703468,'337803af6963609884a17b3883a3f292','f539701ec95be703bcb8e73be7ad543cd9a6fc69','Local',0,1459331872,1459331872,0,1),
  (29,1,'d84d654896bcae897c6185f06316b20d_l.jpg','/Uploads/2016-03-30/56fba448bb0d3.jpg','','jpg',662224,'d84d654896bcae897c6185f06316b20d','6a010a48e62b41200ca6059ec2912026af1490d2','Local',0,1459332168,1459332168,0,1),
  (30,1,'Hydrangeas.jpg','/Uploads/2016-03-30/56fba456293e2.jpg','','jpg',595284,'bdf3bf1da3405725be763540d6601144','d997e1c37edc05ad87d03603e32ad495ee2cfce1','Local',0,1459332182,1459332182,0,1),
  (31,1,'Desert.jpg','/Uploads/2016-03-30/56fba4562beda.jpg','','jpg',845941,'ba45c8f60456a672e003a875e469d0eb','30420d1a9afb2bcb60335812569af4435a59ce17','Local',0,1459332182,1459332182,0,1),
  (32,1,'Jellyfish.jpg','/Uploads/2016-03-30/56fba456343ac.jpg','','jpg',775702,'5a44c7ba5bbe4ec867233d67e4806848','3b15be84aff20b322a93c0b9aaa62e25ad33b4b4','Local',0,1459332182,1459332182,0,1),
  (33,1,'Penguins.jpg','/Uploads/2016-03-30/56fba4581c931.jpg','','jpg',777835,'9d377b10ce778c4938b3c7e2c63a229a','df7be9dc4f467187783aca68c7ce98e4df2172d0','Local',0,1459332184,1459332184,0,1),
  (34,1,'Tulips.jpg','/Uploads/2016-03-30/56fba458357a7.jpg','','jpg',620888,'fafa5efeaf3cbe3b23b2748d13e629a1','54c2f1a1eb6f12d681a5c7078421a5500cee02ad','Local',0,1459332184,1459332184,0,1),
  (35,1,'Koala.jpg','/Uploads/2016-03-30/56fba57181ac1.jpg','','jpg',780831,'2b04df3ecc1d94afddff082d139c6f15','9c3dcb1f9185a314ea25d51aed3b5881b32f420c','Local',0,1459332465,1459332465,0,1),
  (36,1,'Chrysanthemum.jpg','/Uploads/2016-03-30/56fba78e1b9a1.jpg','','jpg',879394,'076e3caed758a1c18c91a0e9cae3368f','f5f8ad26819a471318d24631fa5055036712a87e','Local',0,1459333006,1459333006,0,1),
  (37,1,'Lighthouse.jpg','/Uploads/2016-03-30/56fba78fc29e1.jpg','','jpg',561276,'8969288f4245120e7c3870287cce0ff3','1b4605b0e20ceccf91aa278d10e81fad64e24e27','Local',0,1459333007,1459333007,0,1),
  (38,1,'_.jpg','/Uploads/2016-03-30/56fbaebca8441.jpg','','jpg',945716,'0117bf30017c628eb17712dc2e8366a5','63b5c215bb5f036e0b4a6bb27a13c77b3f1a78e0','Local',0,1459334844,1459334844,0,1),
  (39,1,'1.jpg','/Uploads/2016-03-30/56fbb317b17d2.jpg','','jpg',748506,'7e80f1e443f68b8e5e3c11835fab62d5','bac73715885831783d3d25e3a969d0466a47adfe','Local',0,1459335959,1459335959,0,1),
  (40,1,'0.jpg','/Uploads/2016-03-30/56fbb317b1bba.jpg','','jpg',1057077,'b2d75cca41ec2f2679a95419884a4220','c911836ea2d49c7b9f055c9244af930224266ca5','Local',0,1459335959,1459335959,0,1),
  (41,1,'x4.jpg','/Uploads/2016-03-30/56fbb54ed0d88.jpg','','jpg',5985,'2de12afaeed903e8f14d42d642cfff46','6e27a07cf1e63b58534e6dff7b044779db546491','Local',0,1459336526,1459336526,0,1),
  (42,1,'d4.jpg','/Uploads/2016-03-30/56fbb713c97fc.jpg','','jpg',16839,'ac5d7a3d549fdd83e8941993307525a5','990e0b0845831eb99566d411e771df2d2e7626cc','Local',0,1459336979,1459336979,0,1),
  (43,1,'d3.jpg','/Uploads/2016-03-30/56fbb7847ea82.jpg','','jpg',32244,'c4b7c8d16926a3de7dab9fe3631982fa','c9ca226538965d6a8b02cb6a439f6a89920a2bcc','Local',0,1459337092,1459337092,0,1),
  (44,1,'x3.jpg','/Uploads/2016-03-30/56fbb93d887a4.jpg','','jpg',10864,'60fbb9b9eb4b8b184c4cdbafb1c4c62e','a4191c170de92ae1cc30fb7fac0b03857600d47d','Local',0,1459337533,1459337533,0,1),
  (45,1,'d2.jpg','/Uploads/2016-03-30/56fbb94bd2e56.jpg','','jpg',29266,'ac4c30cef70aaec0c075120e0e554055','17a86af2f7e219ecd7dcdd4be53a266d532d5c8c','Local',0,1459337547,1459337547,0,1),
  (46,1,'d1.jpg','/Uploads/2016-03-30/56fbb94bd3df6.jpg','','jpg',14350,'ff217532c94116aa97450ef3557e8303','28c48245279da8d6218c568f41bb7616f5f147e8','Local',0,1459337547,1459337547,0,1),
  (47,1,'x1.jpg','/Uploads/2016-03-30/56fbb94d64cf7.jpg','','jpg',5072,'b190e036b0d1f4a62ee8f0d4858eedae','c65d605f2ab3f6f9062cc1f1268193686d4ad851','Local',0,1459337549,1459337549,0,1),
  (48,1,'x2.jpg','/Uploads/2016-03-30/56fbb94dbd31b.jpg','','jpg',10108,'f3d9084d44a69b69c980d45b3d7de2aa','b2730fcb9432950fd15593ff80275f7fcda679b6','Local',0,1459337549,1459337549,0,1),
  (49,1,'6.jpg','/Uploads/2016-03-30/56fbbb474fcc7.jpg','','jpg',733636,'0cf8dfb7627b02f9602c2eb481e0b375','28e53133b214478915630e63f3b1d7de12cb6e5a','Local',0,1459338055,1459338055,0,1),
  (50,1,'12.jpg','/Uploads/2016-03-30/56fbbb53c5a61.jpg','','jpg',683066,'7b746d3a5e0baf7e5f6c256909facbda','17ebcd828080a0894290e7c95c776d4fbaa6bae7','Local',0,1459338067,1459338067,0,1),
  (51,1,'11.jpg','/Uploads/2016-03-30/56fbbb546344b.jpg','','jpg',421510,'2d86a60c4039baa3b193f8bc0edd6c09','bcc0109316a2cc1bc80d7624406f82f16a2e9443','Local',0,1459338068,1459338068,0,1),
  (52,1,'16.jpg','/Uploads/2016-03-30/56fbbb5469dc5.jpg','','jpg',591072,'c93638d032e33ac4ec8abb5c2362b845','4ad2e4bc9a578376ad3c459338757374818c1761','Local',0,1459338068,1459338068,0,1),
  (53,1,'17.jpg','/Uploads/2016-03-30/56fbbb55bb2d9.jpg','','jpg',375793,'ec5050d17ceed5d3f1da5184118321fc','d9c73d7e408395c9c56273452a50070c8187043d','Local',0,1459338069,1459338069,0,1),
  (54,1,'20.jpg','/Uploads/2016-03-30/56fbbbd9b8a06.jpg','','jpg',841335,'77c631a4f33a9a5debe4fe46c396bd36','5fd8f918b29f8f8d079201bf95cee9441f5be0e6','Local',0,1459338201,1459338201,0,1),
  (55,1,'22.jpg','/Uploads/2016-03-30/56fbbbd9bc49f.jpg','','jpg',1467449,'7ef788fde8516b3910727429ef4a7cd7','39f708c465210012a1b29870b71f76086e61ce11','Local',0,1459338201,1459338201,0,1),
  (56,1,'21.jpg','/Uploads/2016-03-30/56fbbbda01c4d.jpg','','jpg',498120,'86701d016091504a674122d6533af45d','b1e9ebdf5ddd2c18290ba81a7db246521669946a','Local',0,1459338202,1459338202,0,1),
  (57,1,'2.jpg','/Uploads/2016-03-30/56fbbcebaaba1.jpg','','jpg',424557,'d82627ba82ff3efdb814efeb0313874d','2cc8f63f712e964cfb551311e939364f6466259f','Local',0,1459338475,1459338475,0,1),
  (58,1,'7.jpg','/Uploads/2016-03-30/56fbbdaace808.jpg','','jpg',436211,'7e846098feb28353d9604ed385c5ce49','a5eb6876b9cd6c2ef2970743ade134608fe8d58e','Local',0,1459338666,1459338666,0,1),
  (59,1,'5.jpg','/Uploads/2016-03-30/56fbbdab1c870.jpg','','jpg',541525,'938bce4ca3265e9dc78277c2a93536f9','e839a396950113d5ca807f27d3bdddbe0166e015','Local',0,1459338667,1459338667,0,1),
  (60,1,'10.jpg','/Uploads/2016-03-30/56fbbdf324db8.jpg','','jpg',630370,'29aa30cc3c2ac1fb9d8385ea39514af6','973de2c7305738c33c2777a5d389b6da5ce18c0f','Local',0,1459338739,1459338739,0,1),
  (61,1,'15.jpg','/Uploads/2016-03-30/56fbbdf36f919.jpg','','jpg',439625,'be7947e929e12c7af386dc973eeba251','8424b1b10f502f806763339baa33fea47f2bf7f5','Local',0,1459338739,1459338739,0,1),
  (62,1,'14.jpg','/Uploads/2016-03-30/56fbbdf37a8e4.jpg','','jpg',604535,'590f56bd37e6264f358f716167baaf79','e682f70f8899e948f67a142d69e5ce511e855352','Local',0,1459338739,1459338739,0,1),
  (63,1,'77f4cb60e2d4eaf66ffa6a84726901bb_r.jpg','/Uploads/2016-03-30/56fbbf763c15c.jpg','','jpg',257365,'77f4cb60e2d4eaf66ffa6a84726901bb','ecd48b87ebdbbef7ba081646249681f62766f18f','Local',0,1459339126,1459339126,0,1),
  (64,1,'QQ图1片20150330135307.jpg','/Uploads/2016-03-30/56fbbfe38a459.jpg','','jpg',39962,'e0518236b316a064c20e25593524dc9c','ddb618fa296a8391d7d4b05893e1e48c15d4f0bb','Local',0,1459339235,1459339235,0,1),
  (65,1,'照片.png','/Uploads/2016-03-30/56fbbfe38ac29.png','','png',54417,'ea1f98488d8d863df9e1d36c8215a58e','eb186eccf1b424acc1c8797d62ca1009347a4965','Local',0,1459339235,1459339235,0,1),
  (66,1,'照片.jpg','/Uploads/2016-03-30/56fbbfe3c8498.jpg','','jpg',44589,'8a90ab30b19c31ea5af48d666c92d41b','b965e79e350bd9287fb35ec5f0c2df968219f121','Local',0,1459339235,1459339235,0,1),
  (67,1,'1916.jpg','/Uploads/2016-03-30/56fbc23be27d4.jpg','','jpg',16667,'020196fbdb187538ae2f349df3d4cdf7','eb8d5774069bd66f40332d2df5265a88242aa117','Local',0,1459339835,1459339835,0,1),
  (68,1,'IMG_0696.JPG','/Uploads/2016-03-30/56fbc23bef2f7.JPG','','JPG',84826,'f34f66cb59a3c3863618b8c96bef693f','3f8ba811264531c58fcd1e78d7786318a5930b96','Local',0,1459339835,1459339835,0,1),
  (69,1,'3.jpeg','/Uploads/2016-03-30/56fbc6afaa8e9.jpeg','','jpeg',68056,'284bbb0da69918d67c14feadfffff84d','9f3a3e85af406974062689ac5466cebd42ad89b4','Local',0,1459340975,1459340975,0,1),
  (70,1,'foggy_road-wallpaper-2560x1440.jpg','/Uploads/2016-03-30/56fbc93223ccd.jpg','','jpg',1047129,'c70659dcf34446a939a1e56c69e06ec4','fa635bfe40d341ba0a9364b5c471af8be9134a47','Local',0,1459341618,1459341618,0,1),
  (71,1,'IMG_7051.JPG','/Uploads/2016-03-30/56fbc9322449d.JPG','','JPG',1147429,'9328f3c6d470d867c5426a972ce60aad','2a5d0dac7b336abf8202434cdd7a3b90f93eb54a','Local',0,1459341618,1459341618,0,1),
  (88,1,'“ÏœÁ“›º“Õ¯“≥Õº±Í.jpg','/Uploads/2016-04-07/57053dc0ec1d2.jpg','','jpg',87768,'7bd2416f7dab3781077bc001120f24cf','da988de003467fc58e9e997c4638eb7e5e854fd5','Local',0,1459961280,1459961280,0,1),
  (89,1,'8cd913451c05f9a03a2765ffc3ca48c0_b.jpg','/Uploads/2016-04-10/57094a10a6a0b.jpg','','jpg',253008,'9921a3f1b4cb9654b41b00174d767b73','4985e11911f38a1b33ed0a666813111262adfc86','Local',0,1460226576,1460226576,0,1),
  (74,1,'s5.jpg','/Uploads/2016-03-30/56fbf17ab1996.jpg','','jpg',167072,'b044c9ce2a1666caf62816dfa555e3e8','7eeeef1c413e2343d8242b8c7dd48539923d21c0','Local',0,1459351930,1459351930,0,1),
  (75,1,'s3.jpg','/Uploads/2016-03-30/56fbf18847d40.jpg','','jpg',140721,'779c041d20284ed3240a59af59fbde1a','6a330c9593a2281133bff3d48498092d5300958e','Local',0,1459351944,1459351944,0,1),
  (76,1,'s1.jpg','/Uploads/2016-03-30/56fbf18847c2f.jpg','','jpg',88668,'15d7986b492a000004b20e8c3767b0e9','a47f68c5bb96f2c01f2acbd2d9f4c26d63b3d626','Local',0,1459351944,1459351944,0,1),
  (77,1,'s2.jpg','/Uploads/2016-03-30/56fbf1886ae08.jpg','','jpg',211566,'fe85f83d0b34dac8e431af4ab9daed41','d7f139d60e63699d5fa355606da2d44d59baed83','Local',0,1459351944,1459351944,0,1),
  (78,1,'1.jpg','/Uploads/2016-03-31/56fbf830d6d8b.jpg','','jpg',96204,'f5ae6cc96493af3b94a4f897d22ae234','0c13492743f3662f6c4701603bd11569d03be7f6','Local',0,1459353648,1459353648,0,1),
  (79,1,'img-8c3559c14e9ac6b53b7c37d0ccbd6e82.jpg','/Uploads/2016-03-31/56fc997fe5183.jpg','','jpg',27091,'1fd069b873b45ddf41a5580c8d29e81e','32aac0019e965a6c86f915ef1649dcc8be8b7200','Local',0,1459394943,1459394943,0,1),
  (90,1,'Screen Shot 2016-04-08 at 1.30.12 PM.png','/Uploads/2016-04-10/57094a11cbb68.png','','png',173713,'b9af48d8176fab3a50cf0579bb934c1a','6abc153974bf4f325b7fb29ee7104597621e6b5f','Local',0,1460226577,1460226577,0,1),
  (91,1,'207611359.jpg','/Uploads/2016-04-12/570c62b624f3d.jpg','','jpg',66704,'972d5c89f65cc84320659128c2c4249b','a32fa081db0af8d382ff2b3f8222215621b762f7','Local',0,1460429494,1460429494,0,1),
  (82,1,'img-5f887d0b05bd48beae614bb7e5bf3262.jpg','/Uploads/2016-04-01/56fdf3bead4d6.jpg','','jpg',91324,'359c180f32c9b7f49d9353c056e60c4e','34fa57d067465d80dedc4076e738af8886305aa5','Local',0,1459483582,1459483582,0,1),
  (83,1,'img-2eb601d47ac1b14643d5107aad04d5f0.jpg','/Uploads/2016-04-01/56fe30917d9f7.jpg','','jpg',79914,'e905f12203d1ed9758b75f78ab00620b','4034f21fd0c94bfe0f07334f869e3eb046d3efd2','Local',0,1459499153,1459499153,0,1),
  (84,1,'天空.jpg','/Uploads/2016-04-01/56fe3c304d09f.jpg','','jpg',222246,'a2b549c7f917a9dbad88aa2448763e0b','7608c0f9c7061711dd66744fcc3af0f9f916551f','Local',0,1459502128,1459502128,0,1),
  (85,1,'s4.jpg','/Uploads/2016-04-01/56fe47034f530.jpg','','jpg',183785,'e4b5f2c2a97b44cffe6e1f098cbdced4','5d52d406d286d433cc131cd9b8d1bee04865061d','Local',0,1459504899,1459504899,0,1),
  (86,1,'铁轨.jpg','/Uploads/2016-04-01/56fe479689a7e.jpg','','jpg',43696,'b2203a8db580a84f602d4662eb1c4f63','9abd9dc2c838d482add2c652e63945da5d060648','Local',0,1459505046,1459505046,0,1),
  (94,1,'203944895.jpg','/Uploads/2016-04-12/570c66569b125.jpg','','jpg',102503,'af0cf73a4b89cd781795b3f551a2b65a','e312ab67d23b69ec79b976e9797d253aa73f0281','Local',0,1460430422,1460430422,0,1),
  (95,1,'206062665.jpg','/Uploads/2016-04-12/570c75b67c9b5.jpg','','jpg',112955,'843084f5385e8daa547728f93a498fd6','e324b0a98fff291073630fbe1ae38ce4da815e3c','Local',0,1460434358,1460434358,0,1),
  (96,1,'206062661.jpg','/Uploads/2016-04-12/570c75b683112.jpg','','jpg',105341,'62d6e2cd60350edf819c0cd3a07dfa44','7a8db3dd5a7cb98eea837fe45cd226d4f6d987ea','Local',0,1460434358,1460434358,0,1),
  (97,1,'206062656.jpg','/Uploads/2016-04-12/570c75b69c3b9.jpg','','jpg',105152,'9dbebbf623afd11150e2bd1f6777f566','ebd18c7ff4bd7d16d0662913cfd79e676e3881ac','Local',0,1460434358,1460434358,0,1),
  (98,1,'206062669.jpg','/Uploads/2016-04-12/570c75ba6af33.jpg','','jpg',329314,'f7f95ea6e52c95771d74fc1999fa2f30','4e586c17bb2bb99897a6d401ea23f5028bd521a6','Local',0,1460434362,1460434362,0,1),
  (99,1,'206062673.jpg','/Uploads/2016-04-12/570c75bb387ab.jpg','','jpg',308216,'18e76b22d9e43a104e4905dac317656c','144cfdb9783e0ac5cde6c5a794e492c5837aca96','Local',0,1460434363,1460434363,0,1),
  (100,1,'206062681.jpg','/Uploads/2016-04-12/570c75bdce7d5.jpg','','jpg',295710,'f1c6a5dfdb9c9d68686b435e186af028','708f5d27e9f9294e99f7d54eca0a76ce093e8509','Local',0,1460434365,1460434365,0,1),
  (101,1,'206062677.jpg','/Uploads/2016-04-12/570c75c072a37.jpg','','jpg',346419,'57b7b9d9da9395f4c97d837e6ffd0e1f','3f326b66ee69e26a62beea24c3715c05ce554aeb','Local',0,1460434368,1460434368,0,1),
  (102,1,'206258073.jpg','/Uploads/2016-04-15/57100799c5021.jpg','','jpg',142015,'c9fc0d14f33a23ecd6baa7be55398458','3424fff8ed5f91b708e62cd5b1181a5c661030ef','Local',0,1460668313,1460668313,0,1),
  (103,1,'200423347.jpg','/Uploads/2016-04-15/57100bbcc1887.jpg','','jpg',234937,'89106bb679bf4762abbb60d5cc21c4fe','08a50149c91c1af0cde4ed5467f53f0194f1d2cf','Local',0,1460669372,1460669372,0,1),
  (104,1,'200423359.jpg','/Uploads/2016-04-15/57100bbd391ff.jpg','','jpg',201486,'f324dfe2bdaf71f8b760f91f61754378','3a5a4d4a4489072e6dc01f414140d6821fd58b04','Local',0,1460669373,1460669373,0,1),
  (105,1,'200423351.jpg','/Uploads/2016-04-15/57100bbd5d300.jpg','','jpg',293456,'4eb000ce4b4beb555ebe35a0cef45916','b5d9a323eff0460ffc5f69029d511c410e4b6419','Local',0,1460669373,1460669373,0,1),
  (106,1,'206903434.jpg','/Uploads/2016-04-15/57100bc099c96.jpg','','jpg',74902,'6cedfbd28ba4ed7348c820ecb7fd5811','e5a75e75b331ded75564ed29d90d8b65b868d594','Local',0,1460669376,1460669376,0,1),
  (107,1,'206903424.jpg','/Uploads/2016-04-15/57100bc5eba02.jpg','','jpg',143684,'165427fac810f8731b509ca0a35f312e','3cde93b40118396c0c3d0f72e2caae5769a98c36','Local',0,1460669381,1460669381,0,1),
  (108,1,'206903452.jpg','/Uploads/2016-04-15/571029e6783cd.jpg','','jpg',100677,'dd206121c5786474fb504701a9c288d8','d751f7e197f71f122e150e7d3ab78c19976be883','Local',0,1460677094,1460677094,0,1),
  (109,1,'207093304.jpg','/Uploads/2016-04-15/57102a40398f8.jpg','','jpg',504016,'f433015f882bbfc28dafe62cbf9a6c09','0a7a484f190de5fc3e2d7c893cea15854ae86669','Local',0,1460677184,1460677184,0,1),
  (110,1,'206903440.jpg','/Uploads/2016-04-15/57102c3c6fdcd.jpg','','jpg',87899,'572913fbe00cd54d260412153d1c343e','6759e365ab1953752a951f889057b9ab17e62b0e','Local',0,1460677692,1460677692,0,1);

/*!40000 ALTER TABLE `oc_admin_upload` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_admin_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_admin_user`;

CREATE TABLE `oc_admin_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'UID',
  `nickname` varchar(63) NOT NULL DEFAULT '' COMMENT '昵称',
  `username` varchar(31) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(63) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(63) NOT NULL DEFAULT '' COMMENT '邮箱',
  `email_bind` tinyint(1) NOT NULL DEFAULT '0' COMMENT '邮箱验证',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `mobile_bind` tinyint(1) NOT NULL DEFAULT '0' COMMENT '邮箱验证',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '头像',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `reg_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `reg_type` varchar(15) NOT NULL DEFAULT '' COMMENT '注册方式',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户账号表';

LOCK TABLES `oc_admin_user` WRITE;
/*!40000 ALTER TABLE `oc_admin_user` DISABLE KEYS */;

INSERT INTO `oc_admin_user` (`id`, `nickname`, `username`, `password`, `email`, `email_bind`, `mobile`, `mobile_bind`, `avatar`, `score`, `money`, `reg_ip`, `reg_type`, `create_time`, `update_time`, `status`)
VALUES
  (1,'超级管理员','admin','79cc780bd21b161230268824080b8476','514881101@qq.com',0,'',0,0,0,0.00,0,'',1438651748,1458892139,1),
  (6,'U1458709636','U1458709636','bca21e854cd0617b1ce921bd19fbef6f','qqq111@qq.com',1,'',0,0,0,0.00,0,'email',1458709636,1458709636,-1),
  (16,'fd','U1459508663','6e45e753ffd9ed4ed4b0f1a3d8fbc771','131313@qq.com',1,'',0,0,0,0.00,168364706,'email',1459508663,1460708037,1),
  (15,'','U1459507500','6e45e753ffd9ed4ed4b0f1a3d8fbc771','123123@qq.com',1,'',0,0,0,0.00,0,'email',1459507500,1459507500,1);

/*!40000 ALTER TABLE `oc_admin_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_cms_article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_cms_article`;

CREATE TABLE `oc_cms_article` (
  `id` int(11) unsigned NOT NULL COMMENT '文档ID',
  `title` varchar(127) NOT NULL DEFAULT '' COMMENT '标题',
  `abstract` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `content` text NOT NULL COMMENT '正文内容',
  `tags` varchar(127) NOT NULL COMMENT '标签',
  `cover` int(11) NOT NULL DEFAULT '0' COMMENT '封面图片ID',
  `file` int(11) NOT NULL DEFAULT '0' COMMENT '附件ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章类型扩展表';

LOCK TABLES `oc_cms_article` WRITE;
/*!40000 ALTER TABLE `oc_cms_article` DISABLE KEYS */;

INSERT INTO `oc_cms_article` (`id`, `title`, `abstract`, `content`, `tags`, `cover`, `file`)
VALUES
  (1,'得不到的从来矜贵','身处劣势如何不攻心计\r\n流露敬畏试探你的法规\r\n','<span style=\"color:#777777;\">即使噩梦却任然绮丽<br />\r\n甘心垫底衬你的高贵<br />\r\n一撮玫瑰<br />\r\n无疑心的丧礼 <br />\r\n前事作废当爱已经流逝<br />\r\n下一世<br />\r\n</span>','',78,0),
  (2,'谁能凭爱意要富士山私有','何不把悲哀感觉 假设是来自你虚构\r\n试管里找不到它染污眼眸\r\n前尘硬化像石头 随缘地抛下便逃走\r\n我绝不罕有 往街里绕过一周 我便化乌有','                                                <span style=\"color:#777777;\">OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>                                    ','',69,0),
  (3,'我来到你的城市','走过你来时的路\r\n想像着 没我的日子 你是怎样的孤独','<span style=\"color:#777777;\">OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。1</span>','',57,0);

/*!40000 ALTER TABLE `oc_cms_article` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_cms_attribute
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_cms_attribute`;

CREATE TABLE `oc_cms_attribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '字段标题',
  `field` varchar(100) NOT NULL DEFAULT '' COMMENT '字段定义',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '数据类型',
  `value` varchar(100) NOT NULL DEFAULT '' COMMENT '字段默认值',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `options` varchar(255) NOT NULL DEFAULT '' COMMENT '参数',
  `doc_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '文档模型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档属性字段表';

LOCK TABLES `oc_cms_attribute` WRITE;
/*!40000 ALTER TABLE `oc_cms_attribute` DISABLE KEYS */;

INSERT INTO `oc_cms_attribute` (`id`, `name`, `title`, `field`, `type`, `value`, `tip`, `show`, `options`, `doc_type`, `create_time`, `update_time`, `sort`, `status`)
VALUES
  (1,'cid','分类','int(11) unsigned NOT NULL ','select','0','所属分类',1,'',0,1383891233,1384508336,0,1),
  (2,'uid','用户ID','int(11) unsigned NOT NULL ','num','0','用户ID',0,'',0,1383891233,1384508336,0,1),
  (3,'view','阅读量','varchar(255) NOT NULL','num','0','标签',0,'',0,1413303715,1413303715,0,1),
  (4,'comment','评论数','int(11) unsigned NOT NULL ','num','0','评论数',0,'',0,1383891233,1383894927,0,1),
  (5,'good','赞数','int(11) unsigned NOT NULL ','num','0','赞数',0,'',0,1383891233,1384147827,0,1),
  (6,'bad','踩数','int(11) unsigned NOT NULL ','num','0','踩数',0,'',0,1407646362,1407646362,0,1),
  (7,'create_time','创建时间','int(11) unsigned NOT NULL ','datetime','0','创建时间',1,'',0,1383891233,1383895903,0,1),
  (8,'update_time','更新时间','int(11) unsigned NOT NULL ','datetime','0','更新时间',0,'',0,1383891233,1384508277,0,1),
  (9,'sort','排序','int(11) unsigned NOT NULL ','num','0','用于显示的顺序',1,'',0,1383891233,1383895757,0,1),
  (10,'status','数据状态','tinyint(4) NOT NULL ','radio','1','数据状态',0,'-1:删除\r\n0:禁用\r\n1:正常',0,1383891233,1384508496,0,1),
  (11,'title','标题','char(127) NOT NULL ','text','','文档标题',1,'',3,1383891233,1383894778,0,1),
  (12,'abstract','简介','varchar(255) NOT NULL','textarea','','文档简介',1,'',3,1383891233,1384508496,0,1),
  (13,'content','正文内容','text','kindeditor','','文章正文内容',1,'',3,1383891233,1384508496,0,1),
  (14,'tags','文章标签','varchar(127) NOT NULL','tags','','标签',1,'',3,1383891233,1384508496,0,1),
  (15,'cover','封面','int(11) unsigned NOT NULL ','picture','0','文档封面',1,'',3,1383891233,1384508496,0,1),
  (16,'file','附件','int(11) unsigned NOT NULL ','file','0','附件',1,'',3,1439454552,1439454552,0,1);

/*!40000 ALTER TABLE `oc_cms_attribute` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_cms_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_cms_category`;

CREATE TABLE `oc_cms_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父分类ID',
  `group` tinyint(4) NOT NULL DEFAULT '0' COMMENT '分组',
  `doc_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '分类模型',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '分类名称',
  `url` varchar(127) NOT NULL COMMENT '链接地址',
  `content` text NOT NULL COMMENT '内容',
  `index_template` varchar(32) NOT NULL DEFAULT '' COMMENT '列表封面模版',
  `detail_template` varchar(32) NOT NULL DEFAULT '' COMMENT '详情页模版',
  `post_auth` tinyint(4) NOT NULL DEFAULT '0' COMMENT '投稿权限',
  `icon` varchar(32) NOT NULL DEFAULT '' COMMENT '缩略图',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目分类表';

LOCK TABLES `oc_cms_category` WRITE;
/*!40000 ALTER TABLE `oc_cms_category` DISABLE KEYS */;

INSERT INTO `oc_cms_category` (`id`, `pid`, `group`, `doc_type`, `title`, `url`, `content`, `index_template`, `detail_template`, `post_auth`, `icon`, `create_time`, `update_time`, `sort`, `status`)
VALUES
  (1,0,1,3,'租客故事','','                                                                                                                                                                                                    ','','detail',1,'fa fa-send-o',1431926468,1459418600,0,1);

/*!40000 ALTER TABLE `oc_cms_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_cms_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_cms_comment`;

CREATE TABLE `oc_cms_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论父ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `nickname` varchar(63) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `data_id` int(11) unsigned NOT NULL COMMENT '数据ID',
  `content` text NOT NULL COMMENT '评论内容',
  `good` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '赞数',
  `bad` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '踩数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `ip` varchar(15) NOT NULL COMMENT '来源IP',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档评论表';



# Dump of table oc_cms_index
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_cms_index`;

CREATE TABLE `oc_cms_index` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `cid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `doc_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '文档类型ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发布者ID',
  `view` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读量',
  `comment` int(11) NOT NULL DEFAULT '0' COMMENT '评论数',
  `good` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '赞数',
  `bad` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '踩数',
  `mark` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '收藏',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档类型基础表';

LOCK TABLES `oc_cms_index` WRITE;
/*!40000 ALTER TABLE `oc_cms_index` DISABLE KEYS */;

INSERT INTO `oc_cms_index` (`id`, `cid`, `doc_type`, `uid`, `view`, `comment`, `good`, `bad`, `mark`, `create_time`, `update_time`, `sort`, `status`)
VALUES
  (1,1,3,1,8,0,0,0,0,1449839213,1459353656,0,1),
  (2,1,3,1,14,0,0,0,0,1449839213,1459340983,0,1),
  (3,1,3,1,28,0,0,0,0,1449839213,1459410376,0,1),
  (9,14,3,1,13,0,0,0,0,1459307948,1459307948,0,-1);

/*!40000 ALTER TABLE `oc_cms_index` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_cms_mark
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_cms_mark`;

CREATE TABLE `oc_cms_mark` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `data_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '数据ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '关注时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏表';

LOCK TABLES `oc_cms_mark` WRITE;
/*!40000 ALTER TABLE `oc_cms_mark` DISABLE KEYS */;

INSERT INTO `oc_cms_mark` (`id`, `data_id`, `uid`, `create_time`, `update_time`, `status`)
VALUES
  (1,2,1,1459418827,1459418843,0);

/*!40000 ALTER TABLE `oc_cms_mark` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_cms_report
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_cms_report`;

CREATE TABLE `oc_cms_report` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'UID',
  `data_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '举报项ID',
  `reason` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '举报理由',
  `abstract` text NOT NULL COMMENT '详情',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='举报信息表';



# Dump of table oc_cms_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_cms_type`;

CREATE TABLE `oc_cms_type` (
  `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '模型ID',
  `name` char(16) NOT NULL DEFAULT '' COMMENT '模型名称',
  `title` char(16) NOT NULL DEFAULT '' COMMENT '模型标题',
  `icon` varchar(32) NOT NULL DEFAULT '' COMMENT '缩略图',
  `main_field` int(11) NOT NULL DEFAULT '0' COMMENT '主要字段',
  `list_field` varchar(127) NOT NULL DEFAULT '' COMMENT '列表显示字段',
  `filter_field` varchar(127) NOT NULL DEFAULT '' COMMENT '前台筛选字段',
  `field_sort` varchar(255) NOT NULL COMMENT '表单字段排序',
  `field_group` varchar(255) NOT NULL DEFAULT '' COMMENT '表单字段分组',
  `system` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '系统类型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档模型表';

LOCK TABLES `oc_cms_type` WRITE;
/*!40000 ALTER TABLE `oc_cms_type` DISABLE KEYS */;

INSERT INTO `oc_cms_type` (`id`, `name`, `title`, `icon`, `main_field`, `list_field`, `filter_field`, `field_sort`, `field_group`, `system`, `create_time`, `update_time`, `sort`, `status`)
VALUES
  (1,'link','链接','fa fa-link',0,'','','','',1,1426580628,1426580628,0,1),
  (2,'page','单页','fa fa-file-text',0,'','','','',1,1426580628,1426580628,0,1),
  (3,'article','文章','fa fa-file-word-o',11,'11','','{\"1\":[\"1\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\"],\"2\":[\"9\",\"7\"]}','1:基础\r\n2:扩展',0,1426580628,1458897895,0,1);

/*!40000 ALTER TABLE `oc_cms_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_rent
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_rent`;

CREATE TABLE `oc_rent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `title` varchar(127) NOT NULL DEFAULT '' COMMENT '标题',
  `number` varchar(63) NOT NULL DEFAULT '' COMMENT '编号',
  `suburb` varchar(127) NOT NULL DEFAULT '' COMMENT '区域',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `address_gps` varchar(63) NOT NULL DEFAULT '' COMMENT '经纬度',
  `bedroom_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '卧室数量',
  `bathroom_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '卫浴数量',
  `price` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '月租价',
  `rentdate_type` varchar(63) NOT NULL DEFAULT '' COMMENT '租期类型',
  `rent_type` varchar(63) NOT NULL DEFAULT '' COMMENT '出租类型',
  `source_type` varchar(63) NOT NULL DEFAULT '' COMMENT '房源类型',
  `furniture` varchar(31) NOT NULL DEFAULT '' COMMENT '有无家具',
  `rent_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '出租日期',
  `area_sqft` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '面积（sqft）',
  `area_floor` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '面积（层）',
  `year` int(11) NOT NULL DEFAULT '0' COMMENT '年代',
  `to_station` varchar(255) NOT NULL DEFAULT '' COMMENT '步行到公交所需时间',
  `cover` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '封面',
  `images` varchar(255) NOT NULL COMMENT '图集',
  `video` varchar(255) NOT NULL DEFAULT '' COMMENT '视频',
  `common` varchar(255) NOT NULL DEFAULT '' COMMENT '配置设施',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(3) NOT NULL DEFAULT '0' COMMENT '状态',
  `room_source` varchar(63) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '房源描述',
  `mark_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='房源信息表';

LOCK TABLES `oc_rent` WRITE;
/*!40000 ALTER TABLE `oc_rent` DISABLE KEYS */;

INSERT INTO `oc_rent` (`id`, `uid`, `title`, `number`, `suburb`, `address`, `address_gps`, `bedroom_num`, `bathroom_num`, `price`, `rentdate_type`, `rent_type`, `source_type`, `furniture`, `rent_date`, `area_sqft`, `area_floor`, `year`, `to_station`, `cover`, `images`, `common`, `create_time`, `update_time`, `sort`, `status`, `room_source`, `description`, `mark_num`)
VALUES
  (34,1,'新泽西2室1厅','G6','新泽西NewJersey,Newport','30 newport parkway, jersey city','40.72892, -74.03343',2,1,3000,'长租（一年及以上）','合租','别墅','无',1461254400,2000,90,1900,'20',108,'108','洗衣机,冰箱',1460677103,1460677103,0,1,'房东','123',1),
  (35,1,'华尔街2房1厅','G67','曼哈顿Manhattan,下城Downtown','40 wall st','40.70706, -74.00923',3,2,3000,'短租（一年以下）','整租','别墅','无',1461340800,3000,29,2009,'3',108,'108','电视,游泳池',1460677584,1460677584,0,1,'房东','123',2),
  (36,1,'川普大厦3卧豪华公寓','G667','曼哈顿Manhattan,中城Midtown','1 columbus circle','40.76793, -73.98193',3,2,30000,'长租（一年及以上）','整租','公寓','有',1463500800,2000,99,1998,'2',110,'110,102','电视,游泳池,允许养宠物,车位',1460677737,1460677737,0,1,'管理公司','123',0),
  (37,1,'上东城豪华公寓','G6790','曼哈顿Manhattan,上东城Upper East Side','1221 Lexington Ave, New York, NY10028','40.77794, -73.9567',3,2,9000,'短租（一年以下）','合租','Loft','无',1461686400,2000,98,2007,'8',108,'108,105','冰箱',1460678368,1460678368,0,1,'管理公司','123',0),
  (38,1,'哥伦比亚大学附近优惠公寓','G8989','曼哈顿Manhattan,上西城Upper West Side','1047 Amsterdam Ave，New York, NY 10025','40.80445, -73.96288',3,3,3890,'短租（一年以下）','整租','公寓','无',1461340800,897,29,1996,'9',82,'76,82,85,75','微波炉,电视',1460678550,1460705759,0,0,'转租公寓','dfasf',0),
  (32,1,'曼哈顿中城公寓','G0102','曼哈顿Manhattan,下城Downtown','325 lexington ave','40.74918, -73.97734',2,2,12000,'长租（一年）','合租','loft','有',1462809600,1000,29,2009,'15',103,'103,104,105,102,106,107','门卫',1460669408,1460669703,0,1,'管理公司','楼下就是B D F M N Q R地铁站 走一个1av三分钟左右就到123地铁站 交通简直便利！想去哪都是分分钟的事 走两步就是ktown 想吃部队锅烤肉炸鸡夜宵什么的全看心情 说去就去 逛街也非常的方便 Macy\'s，VS，Zara之类的全在楼下啊！',0),
  (33,1,'法拉盛房源','G3','皇后区Queens,法拉盛Flushing','140-75 Ash Ave, flushing','40.75636, -73.82195',0,1,2000,'长租（一年及以上）','整租','别墅','无',1461081600,900,2,2000,'10',107,'107','冰箱,健身房,24小时门卫,电梯',1460676695,1460676695,0,1,'转租','123',0),
  (30,1,'纽约州Parkchester1卧公寓','G22030001','其他区域','1595 odell street, Parchester, NY','40.96331, -73.7435',1,1,1221,'长租（一年）','整租','公寓','无',1460563200,650,5,1997,'8',97,'95,96,98,99,101,100','健身房,门卫',1460667719,1460667719,0,1,'管理公司','在midtown上班的女生因为工作原因需要短租两个月 6/15- 8/15~31（看你如何方便我都行）。 希望能租一个卧室 本人要求不多谢谢。 有的话请联系微信34387040谢谢。电话443-540-6062(短信)',0),
  (31,1,'曼哈顿上东城1卧公寓','G02040002','曼哈顿Manhattan,上东城Upper East Side','188 east 70th street, ny','40.75246, -73.97129',1,2,4500,'短租（一年以下）','合租','别墅','有',1460908800,900,10,2008,'10',102,'102,98,100,102','洗衣机,烘干机,24小时门卫',1460668452,1460668452,0,1,'异乡房源','楼下就是B D F M N Q R地铁站 走一个1av三分钟左右就到123地铁站 交通简直便利！想去哪都是分分钟的事 走两步就是ktown 想吃部队锅烤肉炸鸡夜宵什么的全看心情 说去就去 逛街也非常的方便 Macy\'s，VS，Zara之类的全在楼下啊！',0),
  (39,16,'哥伦比亚大学附近优惠公寓','G8888','曼哈顿Manhattan,上西城Upper West Side','1047 Amsterdam Ave，New York, NY 10025','40.80445, -73.96288',2,3,2000,'长租（一年）','整租','公寓','有',1461340800,200,12,2000,'10',82,'76,82,85,75,76','微波炉,电视',1460678550,1460705759,0,1,'房东','1213131',0);

/*!40000 ALTER TABLE `oc_rent` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_rent_entrust
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_rent_entrust`;

CREATE TABLE `oc_rent_entrust` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(127) NOT NULL DEFAULT '' COMMENT '姓名',
  `area_code` varchar(20) NOT NULL DEFAULT '' COMMENT '区号',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `email` varchar(63) NOT NULL DEFAULT '' COMMENT '邮箱',
  `weixin` char(63) NOT NULL DEFAULT '' COMMENT '微信',
  `qq` varchar(20) NOT NULL DEFAULT '' COMMENT 'QQ',
  `type` varchar(63) NOT NULL DEFAULT '' COMMENT '看房种类',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='委托找房信息表';

LOCK TABLES `oc_rent_entrust` WRITE;
/*!40000 ALTER TABLE `oc_rent_entrust` DISABLE KEYS */;

INSERT INTO `oc_rent_entrust` (`id`, `name`, `area_code`, `mobile`, `email`, `weixin`, `qq`, `type`, `create_time`, `update_time`, `status`)
VALUES
  (1,'zy','+86','15150699061','z.thanatos@qq.com','1111','','remote',0,1458641369,1),
  (2,'','','','','2222','','',0,0,1),
  (3,'张悦','21312','321312','312312','333','1123123','remote',1458727193,1458727193,0),
  (4,'委屈','213','2131','123','','123','local',1458727271,1458727271,0),
  (5,'1','1','12121212','12121','12121','1','local',1458800108,1458800108,0),
  (6,'fff ','23232','312313123','132131@qq.com','2312321213213','13123213','remote',1459223045,1459223045,0),
  (7,'ces','1212','121212','121212@qq.com','12121','121212','local',1459327683,1459327683,0),
  (8,'张玥','＋86','151590273428','','','','local',1459411830,1459411830,0),
  (9,'zy','＋86','151590273428','','','','local',1459999263,1459999263,0),
  (10,'zy','+86','151816145811','','','','remote',1460028261,1460028261,0),
  (11,'123123','＋86','12424422313','','','','local',1460088341,1460088341,0),
  (12,'zzz','＋86','153126812','','','','local',1460462037,1460462037,0),
  (13,'555','＋86','11111111','','','','local',1460462438,1460462438,0),
  (14,'1111','＋86','22222','','','','local',1460462533,1460462533,0),
  (15,'88888','＋86','3333','','','','local',1460462565,1460462565,0),
  (16,'桂达','86','13605537028','','guida123','','remote',1460635199,1460635199,0);

/*!40000 ALTER TABLE `oc_rent_entrust` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_rent_join
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_rent_join`;

CREATE TABLE `oc_rent_join` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(127) NOT NULL DEFAULT '' COMMENT '姓名',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `city` varchar(11) NOT NULL DEFAULT '' COMMENT '城市',
  `address` varchar(127) NOT NULL DEFAULT '' COMMENT '地址',
  `abstract` text NOT NULL COMMENT '详情',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='加盟信息表';



# Dump of table oc_rent_mark
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_rent_mark`;

CREATE TABLE `oc_rent_mark` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `data_id` int(11) NOT NULL DEFAULT '0' COMMENT '房屋ID',
  `title` varchar(127) NOT NULL DEFAULT '' COMMENT '房屋标题',
  `address` varchar(127) NOT NULL DEFAULT '' COMMENT '地址',
  `cover` int(11) unsigned NOT NULL COMMENT '封面图片',
  `bedroom_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '卧室数量',
  `bathroom_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '卫浴数量',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  `rent_status` int(11) NOT NULL DEFAULT '1',
  `price` int(63) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='房屋收藏表';

LOCK TABLES `oc_rent_mark` WRITE;
/*!40000 ALTER TABLE `oc_rent_mark` DISABLE KEYS */;

INSERT INTO `oc_rent_mark` (`id`, `uid`, `data_id`, `title`, `address`, `cover`, `bedroom_num`, `bathroom_num`, `create_time`, `update_time`, `status`, `rent_status`, `price`)
VALUES
  (10,1,17,'麦迪逊大道','',82,2,4,1460165945,1460165945,1,0,1),
  (9,1,18,'皇后学院','',84,5,2,1459509522,1460717247,0,0,1),
  (12,1,34,'新泽西2室1厅','',108,2,1,1460716938,1460716945,1,1,1),
  (13,1,35,'华尔街2房1厅','',108,3,2,1460717127,1460717127,1,1,3000),
  (14,1,39,'哥伦比亚大学附近优惠公寓','',82,2,3,1460818055,1460818064,0,1,2000);

/*!40000 ALTER TABLE `oc_rent_mark` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_rent_reserve
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_rent_reserve`;

CREATE TABLE `oc_rent_reserve` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `room_title` varchar(127) NOT NULL COMMENT '房源名称',
  `room_number` varchar(63) NOT NULL COMMENT '房源编号',
  `name` varchar(127) NOT NULL DEFAULT '' COMMENT '姓名',
  `area_code` varchar(10) NOT NULL DEFAULT '' COMMENT '国家区号',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `email` varchar(63) NOT NULL DEFAULT '' COMMENT '邮箱',
  `weixin` varchar(63) NOT NULL DEFAULT '' COMMENT '微信',
  `qq` varchar(20) NOT NULL DEFAULT '' COMMENT 'QQ',
  `rent_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '预计入住时间',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '其他信息',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='预约看房信息表';

LOCK TABLES `oc_rent_reserve` WRITE;
/*!40000 ALTER TABLE `oc_rent_reserve` DISABLE KEYS */;

INSERT INTO `oc_rent_reserve` (`id`, `name`, `mobile`, `email`, `winxin`, `qq`, `rent_date`, `comment`, `create_time`, `update_time`, `status`)
VALUES
  (1,'我问问','11','121212@qq.com','','1111',0,'11',1459338271,1459338271,0),
  (2,'张玥','151590273428','','','',0,'',1459412780,1459412780,0),
  (3,'cc','111','111@qq.com','','11',0,'11',1459509688,1459509688,0),
  (4,'111','1111111','','','',2016,'',1460462974,1460462974,0),
  (5,'abc','134','','','',2016,'',1460676239,1460676239,0),
  (6,'g','13','','','',2016,'',1460676280,1460676280,0);

/*!40000 ALTER TABLE `oc_rent_reserve` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_rent_room
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_rent_room`;

CREATE TABLE `oc_rent_room` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `rid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '房源ID',
  `name` varchar(127) NOT NULL DEFAULT '' COMMENT '房间代号',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `huxing` varchar(63) NOT NULL DEFAULT '' COMMENT '户型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '面积',
  `common` varchar(255) NOT NULL DEFAULT '' COMMENT '基础设施',
  `price` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '价格',
  `cover` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '封面',
  `images` varchar(255) NOT NULL COMMENT '图集',
  `rented` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属否已租',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='房间信息表';

LOCK TABLES `oc_rent_room` WRITE;
/*!40000 ALTER TABLE `oc_rent_room` DISABLE KEYS */;

INSERT INTO `oc_rent_room` (`id`, `uid`, `rid`, `name`, `title`, `huxing`, `size`, `common`, `price`, `cover`, `images`, `rented`, `create_time`, `update_time`, `sort`, `status`)
VALUES
  (1,1,1,'A房间','地铁单间，拎包入住，宜家风格，临近超市','主卧带独卫',2,'yt,dw',100,90,'89,90,89,90,89,90,89,90',1,1447732273,1451121755,0,1),
  (2,1,1,'B房间','地铁书房，拎包入住，宜家风格2','',3,'yt,dw',200,0,'1',1,1447732273,1447732403,0,1),
  (3,1,1,'C房间','地铁次卧，拎包入住，宜家风格3','',4,'yt',300,0,'1',0,1447732273,1447732403,0,1),
  (4,1,1,'D房间','地铁主卧，拎包入住，宜家风格4','',5,'kt',400,0,'1',0,1447732273,1447732403,0,1);

/*!40000 ALTER TABLE `oc_rent_room` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_test_default
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_test_default`;

CREATE TABLE `oc_test_default` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(127) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='默认数据表';



# Dump of table oc_user_attribute
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_user_attribute`;

CREATE TABLE `oc_user_attribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '字段标题',
  `field` varchar(100) NOT NULL DEFAULT '' COMMENT '字段定义',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '数据类型',
  `value` varchar(100) NOT NULL DEFAULT '' COMMENT '字段默认值',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `options` varchar(255) NOT NULL DEFAULT '' COMMENT '参数',
  `user_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '文档模型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户模块：用户属性字段表';

LOCK TABLES `oc_user_attribute` WRITE;
/*!40000 ALTER TABLE `oc_user_attribute` DISABLE KEYS */;

INSERT INTO `oc_user_attribute` (`id`, `name`, `title`, `field`, `type`, `value`, `tip`, `show`, `options`, `user_type`, `create_time`, `update_time`, `status`)
VALUES
  (1,'gender','性别','tinyint(3)  NOT NULL ','radio','0','性别',1,'1:男\n-1:女\r\n0:保密\r\n',1,1438651748,1438651748,1),
  (2,'city','所在城市','varchar(15) NOT NULL','text','','常住城市',1,'',1,1442026468,1442123810,1),
  (3,'summary','签名','varchar(127) NOT NULL','text','','签名',1,'',1,1438651748,1438651748,1);

/*!40000 ALTER TABLE `oc_user_attribute` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_user_follow
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_user_follow`;

CREATE TABLE `oc_user_follow` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `follow_uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '粉丝ID',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '关注时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户模块：粉丝信息表';



# Dump of table oc_user_login_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_user_login_log`;

CREATE TABLE `oc_user_login_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) unsigned NOT NULL COMMENT 'UID',
  `ip` bigint(20) NOT NULL DEFAULT '0' COMMENT 'IP',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '登录方式',
  `device` varchar(127) NOT NULL DEFAULT '' COMMENT '设备信息',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户登录日志';

LOCK TABLES `oc_user_login_log` WRITE;
/*!40000 ALTER TABLE `oc_user_login_log` DISABLE KEYS */;

INSERT INTO `oc_user_login_log` (`id`, `uid`, `ip`, `type`, `device`, `create_time`, `update_time`, `status`)
VALUES
  (1,4,0,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36',1458703830,1458703830,1),
  (2,5,0,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36',1458709249,1458709249,1),
  (3,6,0,0,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36',1458709636,1458709636,1),
  (4,8,0,0,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36',1459165911,1459165911,1),
  (5,9,0,0,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36',1459166932,1459166932,1),
  (6,10,0,0,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36',1459166984,1459166984,1),
  (7,11,0,0,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36',1459168529,1459168529,1),
  (8,12,0,0,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36',1459168941,1459168941,1),
  (9,13,0,0,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36',1459169144,1459169144,1),
  (10,14,0,0,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36',1459169261,1459169261,1),
  (11,15,0,0,'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0)',1459507500,1459507500,1),
  (12,16,168364706,0,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36',1459508663,1459508663,1);

/*!40000 ALTER TABLE `oc_user_login_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_user_message
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_user_message`;

CREATE TABLE `oc_user_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '消息ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '消息父ID',
  `title` varchar(1024) NOT NULL DEFAULT '' COMMENT '消息标题',
  `content` text COMMENT '消息内容',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0系统消息,1评论消息,2私信消息',
  `to_uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '接收用户ID',
  `from_uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '私信消息发信用户ID',
  `is_read` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否已读',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户消息表';

LOCK TABLES `oc_user_message` WRITE;
/*!40000 ALTER TABLE `oc_user_message` DISABLE KEYS */;

INSERT INTO `oc_user_message` (`id`, `pid`, `title`, `content`, `type`, `to_uid`, `from_uid`, `is_read`, `create_time`, `update_time`, `sort`, `status`)
VALUES
  (1,0,'注册成功','少侠/女侠好：<br>恭喜您成功注册OpenCMF的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：4<br>昵称：U1458703830<br>用户名：U1458703830<br>密码：qqq111<br><br>',0,4,0,0,1458703830,1458703830,0,1),
  (2,0,'注册成功','少侠/女侠好：<br>恭喜您成功注册OpenCMF的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：5<br>昵称：U1458709249<br>用户名：U1458709249<br>密码：qqq111<br><br>',0,5,0,0,1458709249,1458709249,0,1),
  (3,0,'注册成功','少侠/女侠好：<br>恭喜您成功注册OpenCMF的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：6<br>昵称：U1458709636<br>用户名：U1458709636<br>密码：qqq111<br><br>',0,6,0,0,1458709636,1458709636,0,1),
  (4,0,'注册成功','少侠/女侠好：<br>恭喜您成功注册异乡逸家的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：8<br>昵称：U1459165911<br>用户名：U1459165911<br>密码：123qwe<br><br>',0,8,0,0,1459165911,1459165911,0,1),
  (5,0,'注册成功','少侠/女侠好：<br>恭喜您成功注册异乡逸家的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：9<br>用户名：U1459166931<br>密码：123qwe<br><br>',0,9,0,0,1459166932,1459166932,0,1),
  (6,0,'注册成功','少侠/女侠好：<br>恭喜您成功注册异乡逸家的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：10<br>用户名：U1459166983<br>密码：123qwe<br><br>',0,10,0,0,1459166984,1459166984,0,1),
  (7,0,'注册成功','少侠/女侠好：<br>恭喜您成功注册异乡逸家的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：11<br>用户名：U1459168529<br>密码：123qwe<br><br>',0,11,0,0,1459168530,1459168530,0,1),
  (8,0,'注册成功','少侠/女侠好：<br>恭喜您成功注册异乡逸家的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：12<br>用户名：U1459168940<br>密码：123qwe<br><br>',0,12,0,0,1459168941,1459168941,0,1),
  (9,0,'注册成功','少侠/女侠好：<br>恭喜您成功注册异乡逸家的帐号<br>您的帐号信息如下（请妥善保管）：<br>UID：13<br>用户名：U1459169144<br>密码：1234qwer<br><br>',0,13,0,0,1459169144,1459169144,0,1);

/*!40000 ALTER TABLE `oc_user_message` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oc_user_person
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_user_person`;

CREATE TABLE `oc_user_person` (
  `uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `gender` tinyint(3) NOT NULL DEFAULT '0' COMMENT '性别',
  `summary` varchar(127) NOT NULL DEFAULT '' COMMENT '签名',
  `city` varchar(15) NOT NULL COMMENT '所在城市',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户模块：个人类型扩展信息表';



# Dump of table oc_user_score_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_user_score_log`;

CREATE TABLE `oc_user_score_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `type` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '积分变动种类 1增加 -1减少',
  `score` int(11) unsigned NOT NULL COMMENT '积分变动数量',
  `message` varchar(1024) NOT NULL DEFAULT '' COMMENT '积分变动说明',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户积分变动记录表';



# Dump of table oc_user_talk
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_user_talk`;

CREATE TABLE `oc_user_talk` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `from_uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发信人',
  `to_uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '收信人',
  `message` varchar(255) NOT NULL DEFAULT '' COMMENT '消息正文',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否已读',
  `is_pushed` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推送过',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户私信表';



# Dump of table oc_user_talk_recent
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_user_talk_recent`;

CREATE TABLE `oc_user_talk_recent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'UID',
  `data_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '消息ID已读',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户私信人记录表';



# Dump of table oc_user_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oc_user_type`;

CREATE TABLE `oc_user_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(31) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(31) NOT NULL DEFAULT '' COMMENT '标题',
  `list_field` varchar(127) NOT NULL DEFAULT '' COMMENT '搜索字段',
  `home_template` varchar(127) DEFAULT '' COMMENT '主页模版',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户模块：用户类型表';

LOCK TABLES `oc_user_type` WRITE;
/*!40000 ALTER TABLE `oc_user_type` DISABLE KEYS */;

INSERT INTO `oc_user_type` (`id`, `name`, `title`, `list_field`, `home_template`, `create_time`, `update_time`, `sort`, `status`)
VALUES
  (1,'person','普通用户','2','',1438651748,1438651748,0,1),
  (2,'super','超级管理员','1','',1438651748,1438651748,0,1);

/*!40000 ALTER TABLE `oc_user_type` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
