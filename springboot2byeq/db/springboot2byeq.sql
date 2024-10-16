-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot2byeq
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springboot2byeq`
--

/*!40000 DROP DATABASE IF EXISTS `springboot2byeq`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot2byeq` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot2byeq`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/1682391544207.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskeyanchengguo`
--

DROP TABLE IF EXISTS `discusskeyanchengguo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskeyanchengguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='科研成果评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskeyanchengguo`
--

LOCK TABLES `discusskeyanchengguo` WRITE;
/*!40000 ALTER TABLE `discusskeyanchengguo` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusskeyanchengguo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussziyuanwenjian`
--

DROP TABLE IF EXISTS `discussziyuanwenjian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussziyuanwenjian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1682391561453 DEFAULT CHARSET=utf8 COMMENT='资源文件评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussziyuanwenjian`
--

LOCK TABLES `discussziyuanwenjian` WRITE;
/*!40000 ALTER TABLE `discussziyuanwenjian` DISABLE KEYS */;
INSERT INTO `discussziyuanwenjian` VALUES (1682391561452,'2023-04-25 02:59:21',1682391477443,1682391318681,'upload/1682391317781.jpg','11','水电费是发送','是发送发送到发送到');
/*!40000 ALTER TABLE `discussziyuanwenjian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duiwushenqing`
--

DROP TABLE IF EXISTS `duiwushenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duiwushenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenqingbianhao` varchar(200) DEFAULT NULL COMMENT '申请编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `duiwumingcheng` varchar(200) NOT NULL COMMENT '队伍名称',
  `shenqingshu` longtext COMMENT '申请书',
  `shenqingyuanyin` longtext COMMENT '申请原因',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shenqingbianhao` (`shenqingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1682391356252 DEFAULT CHARSET=utf8 COMMENT='队伍申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duiwushenqing`
--

LOCK TABLES `duiwushenqing` WRITE;
/*!40000 ALTER TABLE `duiwushenqing` DISABLE KEYS */;
INSERT INTO `duiwushenqing` VALUES (51,'2023-04-25 02:51:07','1111111111','申请创建新社团','队伍名称1','','申请原因1','2023-04-25','账号1','姓名1','手机1','是',''),(52,'2023-04-25 02:51:07','2222222222','申请创建新社团','队伍名称2','','申请原因2','2023-04-25','账号2','姓名2','手机2','是',''),(53,'2023-04-25 02:51:07','3333333333','申请创建新社团','队伍名称3','','申请原因3','2023-04-25','账号3','姓名3','手机3','是',''),(54,'2023-04-25 02:51:07','4444444444','申请创建新社团','队伍名称4','','申请原因4','2023-04-25','账号4','姓名4','手机4','是',''),(55,'2023-04-25 02:51:07','5555555555','申请创建新社团','队伍名称5','','申请原因5','2023-04-25','账号5','姓名5','手机5','是',''),(56,'2023-04-25 02:51:07','6666666666','申请创建新社团','队伍名称6','','申请原因6','2023-04-25','账号6','姓名6','手机6','是',''),(57,'2023-04-25 02:51:07','7777777777','申请创建新社团','队伍名称7','','申请原因7','2023-04-25','账号7','姓名7','手机7','是',''),(58,'2023-04-25 02:51:07','8888888888','申请创建新社团','队伍名称8','','申请原因8','2023-04-25','账号8','姓名8','手机8','是',''),(1682391356251,'2023-04-25 02:55:55','1682391478382','申请创建新社团','第五队伍','upload/1682391350226.doc','sad暗算大打算','2023-04-25','11','发给','15111111111','是','是的333');
/*!40000 ALTER TABLE `duiwushenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duiwuxinxi`
--

DROP TABLE IF EXISTS `duiwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duiwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `duiwumingcheng` varchar(200) DEFAULT NULL COMMENT '队伍名称',
  `chengliriqi` date DEFAULT NULL COMMENT '成立日期',
  `duiwuzhanghao` varchar(200) DEFAULT NULL COMMENT '队伍账号',
  `zuzhangxingming` varchar(200) DEFAULT NULL COMMENT '组长姓名',
  `fengmian` longtext COMMENT '封面',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `huoderongyu` longtext COMMENT '获得荣誉',
  `duiwujieshao` longtext COMMENT '队伍介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1682391422402 DEFAULT CHARSET=utf8 COMMENT='队伍信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duiwuxinxi`
--

LOCK TABLES `duiwuxinxi` WRITE;
/*!40000 ALTER TABLE `duiwuxinxi` DISABLE KEYS */;
INSERT INTO `duiwuxinxi` VALUES (31,'2023-04-25 02:51:07','队伍名称1','2023-04-25','队伍账号1','组长姓名1','upload/duiwuxinxi_fengmian1.jpg,upload/duiwuxinxi_fengmian2.jpg,upload/duiwuxinxi_fengmian3.jpg','联系电话1','获得荣誉1','队伍介绍1','2023-04-25 10:59:50',2),(32,'2023-04-25 02:51:07','队伍名称2','2023-04-25','队伍账号2','组长姓名2','upload/duiwuxinxi_fengmian2.jpg,upload/duiwuxinxi_fengmian3.jpg,upload/duiwuxinxi_fengmian4.jpg','联系电话2','获得荣誉2','队伍介绍2','2023-04-25 10:51:07',2),(33,'2023-04-25 02:51:07','队伍名称3','2023-04-25','队伍账号3','组长姓名3','upload/duiwuxinxi_fengmian3.jpg,upload/duiwuxinxi_fengmian4.jpg,upload/duiwuxinxi_fengmian5.jpg','联系电话3','获得荣誉3','队伍介绍3','2023-04-25 10:55:05',4),(34,'2023-04-25 02:51:07','队伍名称4','2023-04-25','队伍账号4','组长姓名4','upload/duiwuxinxi_fengmian4.jpg,upload/duiwuxinxi_fengmian5.jpg,upload/duiwuxinxi_fengmian6.jpg','联系电话4','获得荣誉4','队伍介绍4','2023-04-25 10:51:07',4),(35,'2023-04-25 02:51:07','队伍名称5','2023-04-25','队伍账号5','组长姓名5','upload/duiwuxinxi_fengmian5.jpg,upload/duiwuxinxi_fengmian6.jpg,upload/duiwuxinxi_fengmian7.jpg','联系电话5','获得荣誉5','队伍介绍5','2023-04-25 10:51:07',5),(36,'2023-04-25 02:51:07','队伍名称6','2023-04-25','队伍账号6','组长姓名6','upload/duiwuxinxi_fengmian6.jpg,upload/duiwuxinxi_fengmian7.jpg,upload/duiwuxinxi_fengmian8.jpg','联系电话6','获得荣誉6','队伍介绍6','2023-04-25 10:51:07',6),(37,'2023-04-25 02:51:07','队伍名称7','2023-04-25','队伍账号7','组长姓名7','upload/duiwuxinxi_fengmian7.jpg,upload/duiwuxinxi_fengmian8.jpg,upload/duiwuxinxi_fengmian9.jpg','联系电话7','获得荣誉7','队伍介绍7','2023-04-25 10:51:07',7),(38,'2023-04-25 02:51:07','队伍名称8','2023-04-25','队伍账号8','组长姓名8','upload/duiwuxinxi_fengmian8.jpg,upload/duiwuxinxi_fengmian9.jpg,upload/duiwuxinxi_fengmian10.jpg','联系电话8','获得荣誉8','队伍介绍8','2023-04-25 10:51:07',8),(1682391422401,'2023-04-25 02:57:01','第一队伍','2023-04-25','22','地方','upload/1682391418131.jpg','15118888888','新闻是互联网等媒体经常使用的记录的一种文体。','<p>新闻 ，是指报纸、电台、电视台、互联网等媒体经常使用的记录与传播信息的 一种文体。是记录社会、传播信息、反映时代的一种文体。新闻概念有广义与狭义之分。广义上:除了发表于报刊、广播、互联网、电视上的评论与专文外的常用文本都属于新闻，包括消息、通讯、特写、速写(有的将速写纳入特写之列)等等; 狭义上:消息是用概括的叙述方式，以较简明扼要的文字，迅速及时地报道附近新近发生的、有价值的事实，使一定人群了解。新闻一般包括标题、导语、主体、背景和结语五部分。前三者是主要部分，后二者是辅助部分。写法以叙述为主兼或有议论、描写、评论等。新闻是包含海量资讯的新闻服务平台,真实反映每时每刻的重要事件。您可以搜索新闻事件、热点话题、人物动态、产品资讯等,快速了解它们的最新进展。</p><p><br></p>','2023-04-25 10:59:59',3);
/*!40000 ALTER TABLE `duiwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1682391335756 DEFAULT CHARSET=utf8 COMMENT='信息交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (101,'2023-04-25 02:51:07','帖子标题1','帖子内容1',0,1,'用户名1','upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg','开放'),(102,'2023-04-25 02:51:07','帖子标题2','帖子内容2',0,2,'用户名2','upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg','开放'),(103,'2023-04-25 02:51:07','帖子标题3','帖子内容3',0,3,'用户名3','upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg','开放'),(104,'2023-04-25 02:51:07','帖子标题4','帖子内容4',0,4,'用户名4','upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg','开放'),(105,'2023-04-25 02:51:07','帖子标题5','帖子内容5',0,5,'用户名5','upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg','开放'),(106,'2023-04-25 02:51:07','帖子标题6','帖子内容6',0,6,'用户名6','upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg','开放'),(107,'2023-04-25 02:51:07','帖子标题7','帖子内容7',0,7,'用户名7','upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg','开放'),(108,'2023-04-25 02:51:07','帖子标题8','帖子内容8',0,8,'用户名8','upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg,upload/forum_avatarurl10.jpg','开放'),(1682391335755,'2023-04-25 02:55:34','是的发送到发送到','<p>是的发送到发送到</p><p><br></p>',0,1682391318681,'11',NULL,'开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `neirong` longtext COMMENT '内容',
  `faburen` varchar(200) NOT NULL COMMENT '发布人',
  `fengmian` longtext COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1682391463249 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (81,'2023-04-25 02:51:07','标题1','简介1','2023-04-25','内容1','发布人1','upload/gonggaoxinxi_fengmian1.jpg,upload/gonggaoxinxi_fengmian2.jpg,upload/gonggaoxinxi_fengmian3.jpg','2023-04-25 10:59:25',2,1),(82,'2023-04-25 02:51:07','标题2','简介2','2023-04-25','内容2','发布人2','upload/gonggaoxinxi_fengmian2.jpg,upload/gonggaoxinxi_fengmian3.jpg,upload/gonggaoxinxi_fengmian4.jpg','2023-04-25 10:51:07',2,2),(83,'2023-04-25 02:51:07','标题3','简介3','2023-04-25','内容3','发布人3','upload/gonggaoxinxi_fengmian3.jpg,upload/gonggaoxinxi_fengmian4.jpg,upload/gonggaoxinxi_fengmian5.jpg','2023-04-25 10:51:07',3,3),(84,'2023-04-25 02:51:07','标题4','简介4','2023-04-25','内容4','发布人4','upload/gonggaoxinxi_fengmian4.jpg,upload/gonggaoxinxi_fengmian5.jpg,upload/gonggaoxinxi_fengmian6.jpg','2023-04-25 10:51:07',4,4),(85,'2023-04-25 02:51:07','标题5','简介5','2023-04-25','内容5','发布人5','upload/gonggaoxinxi_fengmian5.jpg,upload/gonggaoxinxi_fengmian6.jpg,upload/gonggaoxinxi_fengmian7.jpg','2023-04-25 10:51:07',5,5),(86,'2023-04-25 02:51:07','标题6','简介6','2023-04-25','内容6','发布人6','upload/gonggaoxinxi_fengmian6.jpg,upload/gonggaoxinxi_fengmian7.jpg,upload/gonggaoxinxi_fengmian8.jpg','2023-04-25 10:51:07',6,6),(87,'2023-04-25 02:51:07','标题7','简介7','2023-04-25','内容7','发布人7','upload/gonggaoxinxi_fengmian7.jpg,upload/gonggaoxinxi_fengmian8.jpg,upload/gonggaoxinxi_fengmian9.jpg','2023-04-25 10:51:07',7,7),(88,'2023-04-25 02:51:07','标题8','简介8','2023-04-25','内容8','发布人8','upload/gonggaoxinxi_fengmian8.jpg,upload/gonggaoxinxi_fengmian9.jpg,upload/gonggaoxinxi_fengmian10.jpg','2023-04-25 10:51:07',8,8),(1682391463248,'2023-04-25 02:57:42','阿萨德撒','新闻是互联网等媒体经常使用的记录的一种文体。','2023-04-25','<p>新闻 ，是指报纸、电台、电视台、互联网等媒体经常使用的记录与传播信息的 一种文体。是记录社会、传播信息、反映时代的一种文体。新闻概念有广义与狭义之分。广义上:除了发表于报刊、广播、互联网、电视上的评论与专文外的常用文本都属于新闻，包括消息、通讯、特写、速写(有的将速写纳入特写之列)等等; 狭义上:消息是用概括的叙述方式，以较简明扼要的文字，迅速及时地报道附近新近发生的、有价值的事实，使一定人群了解。新闻一般包括标题、导语、主体、背景和结语五部分。前三者是主要部分，后二者是辅助部分。写法以叙述为主兼或有议论、描写、评论等。新闻是包含海量资讯的新闻服务平台,真实反映每时每刻的重要事件。您可以搜索新闻事件、热点话题、人物动态、产品资讯等,快速了解它们的最新进展。</p><p><img src=\"http://localhost:8080/springboot2byeq/upload/1682391461967.jpg\"></p>','暗算','upload/1682391456791.jpg','2023-04-25 10:59:28',1,1682391374873);
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaruduiwu`
--

DROP TABLE IF EXISTS `jiaruduiwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaruduiwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `duiwuzhanghao` varchar(200) DEFAULT NULL COMMENT '队伍账号',
  `duiwumingcheng` varchar(200) DEFAULT NULL COMMENT '队伍名称',
  `zuzhangxingming` varchar(200) DEFAULT NULL COMMENT '组长姓名',
  `shenqingziliao` longtext COMMENT '申请资料',
  `shenqingshijian` date DEFAULT NULL COMMENT '申请时间',
  `shenqingyuanyin` longtext COMMENT '申请原因',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1682391586775 DEFAULT CHARSET=utf8 COMMENT='加入队伍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaruduiwu`
--

LOCK TABLES `jiaruduiwu` WRITE;
/*!40000 ALTER TABLE `jiaruduiwu` DISABLE KEYS */;
INSERT INTO `jiaruduiwu` VALUES (41,'2023-04-25 02:51:07','账号1','姓名1','队伍账号1','队伍名称1','组长姓名1','','2023-04-25','申请原因1','是','',1),(42,'2023-04-25 02:51:07','账号2','姓名2','队伍账号2','队伍名称2','组长姓名2','','2023-04-25','申请原因2','是','',2),(43,'2023-04-25 02:51:07','账号3','姓名3','队伍账号3','队伍名称3','组长姓名3','','2023-04-25','申请原因3','是','',3),(44,'2023-04-25 02:51:07','账号4','姓名4','队伍账号4','队伍名称4','组长姓名4','','2023-04-25','申请原因4','是','',4),(45,'2023-04-25 02:51:07','账号5','姓名5','队伍账号5','队伍名称5','组长姓名5','','2023-04-25','申请原因5','是','',5),(46,'2023-04-25 02:51:07','账号6','姓名6','队伍账号6','队伍名称6','组长姓名6','','2023-04-25','申请原因6','是','',6),(47,'2023-04-25 02:51:07','账号7','姓名7','队伍账号7','队伍名称7','组长姓名7','','2023-04-25','申请原因7','是','',7),(48,'2023-04-25 02:51:07','账号8','姓名8','队伍账号8','队伍名称8','组长姓名8','','2023-04-25','申请原因8','是','',8),(1682391586774,'2023-04-25 02:59:46','11','发给','22','第一队伍','地方','upload/1682391584045.doc','2023-04-25','<p>新闻 ，是指报纸、电台、电视台、互联网等媒体经常使用的记录与传播信息的 一种文体。是记录社会、传播信息、反映时代的一种文体。新闻概念有广义与狭义之分。广义上:除了发表于报刊、广播、互联网、电视上的评论与专文外的常用文本都属于新闻，包括消息、通讯、特写、速写(有的将速写纳入特写之列)等等; 狭义上:消息是用概括的叙述方式，以较简明扼要的文字，迅速及时地报道附近新近发生的、有价值的事实，使一定人群了解。新闻一般包括标题、导语、主体、背景和结语五部分。前三者是主要部分，后二者是辅助部分。写法以叙述为主兼或有议论、描写、评论等。新闻是包含海量资讯的新闻服务平台,真实反映每时每刻的重要事件。您可以搜索新闻事件、热点话题、人物动态、产品资讯等,快速了解它们的最新进展。</p><p><br></p>','是','是的333',1682391318681);
/*!40000 ALTER TABLE `jiaruduiwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyanchengguo`
--

DROP TABLE IF EXISTS `keyanchengguo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyanchengguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chengguomingcheng` varchar(200) DEFAULT NULL COMMENT '成果名称',
  `duiwumingcheng` varchar(200) DEFAULT NULL COMMENT '队伍名称',
  `chengguoleixing` varchar(200) NOT NULL COMMENT '成果类型',
  `chengguofujian` longtext COMMENT '成果附件',
  `fengmian` longtext COMMENT '封面',
  `shangchuanriqi` date DEFAULT NULL COMMENT '上传日期',
  `chengguoneirong` longtext COMMENT '成果内容',
  `duiwuzhanghao` varchar(200) DEFAULT NULL COMMENT '队伍账号',
  `zuzhangxingming` varchar(200) DEFAULT NULL COMMENT '组长姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1682391435600 DEFAULT CHARSET=utf8 COMMENT='科研成果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyanchengguo`
--

LOCK TABLES `keyanchengguo` WRITE;
/*!40000 ALTER TABLE `keyanchengguo` DISABLE KEYS */;
INSERT INTO `keyanchengguo` VALUES (61,'2023-04-25 02:51:07','成果名称1','队伍名称1','科研论文','','upload/keyanchengguo_fengmian1.jpg,upload/keyanchengguo_fengmian2.jpg,upload/keyanchengguo_fengmian3.jpg','2023-04-25','成果内容1','队伍账号1','组长姓名1','2023-04-25 10:51:07',1),(62,'2023-04-25 02:51:07','成果名称2','队伍名称2','科研论文','','upload/keyanchengguo_fengmian2.jpg,upload/keyanchengguo_fengmian3.jpg,upload/keyanchengguo_fengmian4.jpg','2023-04-25','成果内容2','队伍账号2','组长姓名2','2023-04-25 10:51:07',2),(63,'2023-04-25 02:51:07','成果名称3','队伍名称3','科研论文','','upload/keyanchengguo_fengmian3.jpg,upload/keyanchengguo_fengmian4.jpg,upload/keyanchengguo_fengmian5.jpg','2023-04-25','成果内容3','队伍账号3','组长姓名3','2023-04-25 10:51:07',3),(64,'2023-04-25 02:51:07','成果名称4','队伍名称4','科研论文','','upload/keyanchengguo_fengmian4.jpg,upload/keyanchengguo_fengmian5.jpg,upload/keyanchengguo_fengmian6.jpg','2023-04-25','成果内容4','队伍账号4','组长姓名4','2023-04-25 10:51:07',4),(65,'2023-04-25 02:51:07','成果名称5','队伍名称5','科研论文','','upload/keyanchengguo_fengmian5.jpg,upload/keyanchengguo_fengmian6.jpg,upload/keyanchengguo_fengmian7.jpg','2023-04-25','成果内容5','队伍账号5','组长姓名5','2023-04-25 10:51:07',5),(66,'2023-04-25 02:51:07','成果名称6','队伍名称6','科研论文','','upload/keyanchengguo_fengmian6.jpg,upload/keyanchengguo_fengmian7.jpg,upload/keyanchengguo_fengmian8.jpg','2023-04-25','成果内容6','队伍账号6','组长姓名6','2023-04-25 10:51:07',6),(67,'2023-04-25 02:51:07','成果名称7','队伍名称7','科研论文','','upload/keyanchengguo_fengmian7.jpg,upload/keyanchengguo_fengmian8.jpg,upload/keyanchengguo_fengmian9.jpg','2023-04-25','成果内容7','队伍账号7','组长姓名7','2023-04-25 10:51:07',7),(68,'2023-04-25 02:51:07','成果名称8','队伍名称8','科研论文','','upload/keyanchengguo_fengmian8.jpg,upload/keyanchengguo_fengmian9.jpg,upload/keyanchengguo_fengmian10.jpg','2023-04-25','成果内容8','队伍账号8','组长姓名8','2023-04-25 10:51:07',8),(1682391435599,'2023-04-25 02:57:15','阿萨德撒','第一队伍','软件著作权','upload/1682391430242.doc','upload/1682391432912.jpg','2023-04-25','<p>新闻 ，是指报纸、电台、电视台、互联网等媒体经常使用的记录与传播信息的 一种文体。是记录社会、传播信息、反映时代的一种文体。新闻概念有广义与狭义之分。广义上:除了发表于报刊、广播、互联网、电视上的评论与专文外的常用文本都属于新闻，包括消息、通讯、特写、速写(有的将速写纳入特写之列)等等; 狭义上:消息是用概括的叙述方式，以较简明扼要的文字，迅速及时地报道附近新近发生的、有价值的事实，使一定人群了解。新闻一般包括标题、导语、主体、背景和结语五部分。前三者是主要部分，后二者是辅助部分。写法以叙述为主兼或有议论、描写、评论等。新闻是包含海量资讯的新闻服务平台,真实反映每时每刻的重要事件。您可以搜索新闻事件、热点话题、人物动态、产品资讯等,快速了解它们的最新进展。</p><p><br></p>','22','地方','2023-04-25 10:59:54',2);
/*!40000 ALTER TABLE `keyanchengguo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyanduiwu`
--

DROP TABLE IF EXISTS `keyanduiwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyanduiwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `duiwuzhanghao` varchar(200) NOT NULL COMMENT '队伍账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `duiwumingcheng` varchar(200) NOT NULL COMMENT '队伍名称',
  `zuzhangxingming` varchar(200) DEFAULT NULL COMMENT '组长姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `duiwuzhanghao` (`duiwuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1682391374874 DEFAULT CHARSET=utf8 COMMENT='科研队伍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyanduiwu`
--

LOCK TABLES `keyanduiwu` WRITE;
/*!40000 ALTER TABLE `keyanduiwu` DISABLE KEYS */;
INSERT INTO `keyanduiwu` VALUES (21,'2023-04-25 02:51:07','队伍账号1','123456','队伍名称1','组长姓名1','upload/keyanduiwu_touxiang1.jpg','男',1,'13823888881'),(22,'2023-04-25 02:51:07','队伍账号2','123456','队伍名称2','组长姓名2','upload/keyanduiwu_touxiang2.jpg','男',2,'13823888882'),(23,'2023-04-25 02:51:07','队伍账号3','123456','队伍名称3','组长姓名3','upload/keyanduiwu_touxiang3.jpg','男',3,'13823888883'),(24,'2023-04-25 02:51:07','队伍账号4','123456','队伍名称4','组长姓名4','upload/keyanduiwu_touxiang4.jpg','男',4,'13823888884'),(25,'2023-04-25 02:51:07','队伍账号5','123456','队伍名称5','组长姓名5','upload/keyanduiwu_touxiang5.jpg','男',5,'13823888885'),(26,'2023-04-25 02:51:07','队伍账号6','123456','队伍名称6','组长姓名6','upload/keyanduiwu_touxiang6.jpg','男',6,'13823888886'),(27,'2023-04-25 02:51:07','队伍账号7','123456','队伍名称7','组长姓名7','upload/keyanduiwu_touxiang7.jpg','男',7,'13823888887'),(28,'2023-04-25 02:51:07','队伍账号8','123456','队伍名称8','组长姓名8','upload/keyanduiwu_touxiang8.jpg','男',8,'13823888888'),(1682391374873,'2023-04-25 02:56:14','22','22','第一队伍','地方','upload/1682391369041.jpg','女',22,'15118888888');
/*!40000 ALTER TABLE `keyanduiwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1682391580009 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1682391554716,'2023-04-25 02:59:14',1682391318681,1682391477443,'ziyuanwenjian','暗算打算','upload/1682391474098.jpg','1',NULL,NULL),(1682391558719,'2023-04-25 02:59:18',1682391318681,1682391477443,'ziyuanwenjian','暗算打算','upload/1682391474098.jpg','21',NULL,NULL),(1682391580008,'2023-04-25 02:59:39',1682391318681,1682391422401,'duiwuxinxi','第一队伍','upload/1682391418131.jpg','1',NULL,NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1682391318681,'11','yonghu','用户','egyb2u0u7bfijl74di5xdpf2hxiphltj','2023-04-25 02:55:21','2023-04-25 04:00:34'),(2,1,'admin','users','管理员','i2reqbzo6juhz507vyo78rcrutm8g3bu','2023-04-25 02:56:18','2023-04-25 03:58:02'),(3,1682391374873,'22','keyanduiwu','科研队伍','7m3ilftmf6u5bwfma2zxm5my4wkff8l7','2023-04-25 02:56:22','2023-04-25 04:00:08');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-04-25 02:51:07');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiangmuchengguoshenbao`
--

DROP TABLE IF EXISTS `xiangmuchengguoshenbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiangmuchengguoshenbao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenbaomingcheng` varchar(200) DEFAULT NULL COMMENT '申报名称',
  `duiwumingcheng` varchar(200) DEFAULT NULL COMMENT '队伍名称',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `shenbaoziliao` longtext COMMENT '申报资料',
  `shangchuanriqi` date DEFAULT NULL COMMENT '上传日期',
  `shenqingneirong` longtext COMMENT '申请内容',
  `duiwuzhanghao` varchar(200) DEFAULT NULL COMMENT '队伍账号',
  `zuzhangxingming` varchar(200) DEFAULT NULL COMMENT '组长姓名',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1682391446751 DEFAULT CHARSET=utf8 COMMENT='项目成果申报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiangmuchengguoshenbao`
--

LOCK TABLES `xiangmuchengguoshenbao` WRITE;
/*!40000 ALTER TABLE `xiangmuchengguoshenbao` DISABLE KEYS */;
INSERT INTO `xiangmuchengguoshenbao` VALUES (71,'2023-04-25 02:51:07','申报名称1','队伍名称1','成果','','2023-04-25','申请内容1','队伍账号1','组长姓名1','是',''),(72,'2023-04-25 02:51:07','申报名称2','队伍名称2','成果','','2023-04-25','申请内容2','队伍账号2','组长姓名2','是',''),(73,'2023-04-25 02:51:07','申报名称3','队伍名称3','成果','','2023-04-25','申请内容3','队伍账号3','组长姓名3','是',''),(74,'2023-04-25 02:51:07','申报名称4','队伍名称4','成果','','2023-04-25','申请内容4','队伍账号4','组长姓名4','是',''),(75,'2023-04-25 02:51:07','申报名称5','队伍名称5','成果','','2023-04-25','申请内容5','队伍账号5','组长姓名5','是',''),(76,'2023-04-25 02:51:07','申报名称6','队伍名称6','成果','','2023-04-25','申请内容6','队伍账号6','组长姓名6','是',''),(77,'2023-04-25 02:51:07','申报名称7','队伍名称7','成果','','2023-04-25','申请内容7','队伍账号7','组长姓名7','是',''),(78,'2023-04-25 02:51:07','申报名称8','队伍名称8','成果','','2023-04-25','申请内容8','队伍账号8','组长姓名8','是',''),(1682391446750,'2023-04-25 02:57:26','暗算大','第一队伍','项目','upload/1682391445469.doc','2023-04-25','<p>新闻 ，是指报纸、电台、电视台、互联网等媒体经常使用的记录与传播信息的 一种文体。是记录社会、传播信息、反映时代的一种文体。新闻概念有广义与狭义之分。广义上:除了发表于报刊、广播、互联网、电视上的评论与专文外的常用文本都属于新闻，包括消息、通讯、特写、速写(有的将速写纳入特写之列)等等; 狭义上:消息是用概括的叙述方式，以较简明扼要的文字，迅速及时地报道附近新近发生的、有价值的事实，使一定人群了解。新闻一般包括标题、导语、主体、背景和结语五部分。前三者是主要部分，后二者是辅助部分。写法以叙述为主兼或有议论、描写、评论等。新闻是包含海量资讯的新闻服务平台,真实反映每时每刻的重要事件。您可以搜索新闻事件、热点话题、人物动态、产品资讯等,快速了解它们的最新进展。</p><p><br></p>','22','地方','是','是的33');
/*!40000 ALTER TABLE `xiangmuchengguoshenbao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1682391318682 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2023-04-25 02:51:07','账号1','123456','姓名1',1,'男','13823888881','upload/yonghu_touxiang1.jpg'),(12,'2023-04-25 02:51:07','账号2','123456','姓名2',2,'男','13823888882','upload/yonghu_touxiang2.jpg'),(13,'2023-04-25 02:51:07','账号3','123456','姓名3',3,'男','13823888883','upload/yonghu_touxiang3.jpg'),(14,'2023-04-25 02:51:07','账号4','123456','姓名4',4,'男','13823888884','upload/yonghu_touxiang4.jpg'),(15,'2023-04-25 02:51:07','账号5','123456','姓名5',5,'男','13823888885','upload/yonghu_touxiang5.jpg'),(16,'2023-04-25 02:51:07','账号6','123456','姓名6',6,'男','13823888886','upload/yonghu_touxiang6.jpg'),(17,'2023-04-25 02:51:07','账号7','123456','姓名7',7,'男','13823888887','upload/yonghu_touxiang7.jpg'),(18,'2023-04-25 02:51:07','账号8','123456','姓名8',8,'男','13823888888','upload/yonghu_touxiang8.jpg'),(1682391318681,'2023-04-25 02:55:18','11','11','发给',11,'女','15111111111','upload/1682391317781.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ziyuanwenjian`
--

DROP TABLE IF EXISTS `ziyuanwenjian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ziyuanwenjian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '资源名称',
  `ziyuanleixing` varchar(200) DEFAULT NULL COMMENT '资源类型',
  `ziyuanwenjian` longtext COMMENT '资源文件',
  `fengmian` longtext COMMENT '封面',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `ziyuanxiangqing` longtext COMMENT '资源详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1682391477444 DEFAULT CHARSET=utf8 COMMENT='资源文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ziyuanwenjian`
--

LOCK TABLES `ziyuanwenjian` WRITE;
/*!40000 ALTER TABLE `ziyuanwenjian` DISABLE KEYS */;
INSERT INTO `ziyuanwenjian` VALUES (91,'2023-04-25 02:51:07','资源名称1','资源类型1','','upload/ziyuanwenjian_fengmian1.jpg,upload/ziyuanwenjian_fengmian2.jpg,upload/ziyuanwenjian_fengmian3.jpg','2023-04-25','发布人1','资源详情1',1,1,'2023-04-25 10:51:07',1,1),(92,'2023-04-25 02:51:07','资源名称2','资源类型2','','upload/ziyuanwenjian_fengmian2.jpg,upload/ziyuanwenjian_fengmian3.jpg,upload/ziyuanwenjian_fengmian4.jpg','2023-04-25','发布人2','资源详情2',2,2,'2023-04-25 10:51:07',2,2),(93,'2023-04-25 02:51:07','资源名称3','资源类型3','','upload/ziyuanwenjian_fengmian3.jpg,upload/ziyuanwenjian_fengmian4.jpg,upload/ziyuanwenjian_fengmian5.jpg','2023-04-25','发布人3','资源详情3',3,3,'2023-04-25 10:51:07',3,3),(94,'2023-04-25 02:51:07','资源名称4','资源类型4','','upload/ziyuanwenjian_fengmian4.jpg,upload/ziyuanwenjian_fengmian5.jpg,upload/ziyuanwenjian_fengmian6.jpg','2023-04-25','发布人4','资源详情4',4,4,'2023-04-25 10:51:07',4,4),(95,'2023-04-25 02:51:07','资源名称5','资源类型5','','upload/ziyuanwenjian_fengmian5.jpg,upload/ziyuanwenjian_fengmian6.jpg,upload/ziyuanwenjian_fengmian7.jpg','2023-04-25','发布人5','资源详情5',5,5,'2023-04-25 10:51:07',5,5),(96,'2023-04-25 02:51:07','资源名称6','资源类型6','','upload/ziyuanwenjian_fengmian6.jpg,upload/ziyuanwenjian_fengmian7.jpg,upload/ziyuanwenjian_fengmian8.jpg','2023-04-25','发布人6','资源详情6',6,6,'2023-04-25 10:55:03',7,6),(97,'2023-04-25 02:51:07','资源名称7','资源类型7','','upload/ziyuanwenjian_fengmian7.jpg,upload/ziyuanwenjian_fengmian8.jpg,upload/ziyuanwenjian_fengmian9.jpg','2023-04-25','发布人7','资源详情7',7,7,'2023-04-25 10:51:07',7,7),(98,'2023-04-25 02:51:07','资源名称8','资源类型8','','upload/ziyuanwenjian_fengmian8.jpg,upload/ziyuanwenjian_fengmian9.jpg,upload/ziyuanwenjian_fengmian10.jpg','2023-04-25','发布人8','资源详情8',8,8,'2023-04-25 10:51:07',8,8),(1682391477443,'2023-04-25 02:57:57','暗算打算','暗算大','upload/1682391470620.doc','upload/1682391474098.jpg','2023-04-25','水电费','<p>新闻 ，是指报纸、电台、电视台、互联网等媒体经常使用的记录与传播信息的 一种文体。是记录社会、传播信息、反映时代的一种文体。新闻概念有广义与狭义之分。广义上:除了发表于报刊、广播、互联网、电视上的评论与专文外的常用文本都属于新闻，包括消息、通讯、特写、速写(有的将速写纳入特写之列)等等; 狭义上:消息是用概括的叙述方式，以较简明扼要的文字，迅速及时地报道附近新近发生的、有价值的事实，使一定人群了解。新闻一般包括标题、导语、主体、背景和结语五部分。前三者是主要部分，后二者是辅助部分。写法以叙述为主兼或有议论、描写、评论等。新闻是包含海量资讯的新闻服务平台,真实反映每时每刻的重要事件。您可以搜索新闻事件、热点话题、人物动态、产品资讯等,快速了解它们的最新进展。</p><p><br></p>',1,0,'2023-04-25 11:00:37',2,1682391374873);
/*!40000 ALTER TABLE `ziyuanwenjian` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-09 19:35:00
