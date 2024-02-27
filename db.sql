/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm2p96m
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm2p96m` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm2p96m`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-06 18:10:16',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-06 18:10:16',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-06 18:10:16',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-06 18:10:16',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-06 18:10:16',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-06 18:10:16',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'ershoushangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm2p96m/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm2p96m/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm2p96m/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussershoushangpin` */

DROP TABLE IF EXISTS `discussershoushangpin`;

CREATE TABLE `discussershoushangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='二手商品评论表';

/*Data for the table `discussershoushangpin` */

insert  into `discussershoushangpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (161,'2021-04-06 18:10:16',1,1,'用户名1','评论内容1','回复内容1'),(162,'2021-04-06 18:10:16',2,2,'用户名2','评论内容2','回复内容2'),(163,'2021-04-06 18:10:16',3,3,'用户名3','评论内容3','回复内容3'),(164,'2021-04-06 18:10:16',4,4,'用户名4','评论内容4','回复内容4'),(165,'2021-04-06 18:10:16',5,5,'用户名5','评论内容5','回复内容5'),(166,'2021-04-06 18:10:16',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussshangpinqiugou` */

DROP TABLE IF EXISTS `discussshangpinqiugou`;

CREATE TABLE `discussshangpinqiugou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='商品求购评论表';

/*Data for the table `discussshangpinqiugou` */

insert  into `discussshangpinqiugou`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (171,'2021-04-06 18:10:16',1,1,'用户名1','评论内容1','回复内容1'),(172,'2021-04-06 18:10:16',2,2,'用户名2','评论内容2','回复内容2'),(173,'2021-04-06 18:10:16',3,3,'用户名3','评论内容3','回复内容3'),(174,'2021-04-06 18:10:16',4,4,'用户名4','评论内容4','回复内容4'),(175,'2021-04-06 18:10:16',5,5,'用户名5','评论内容5','回复内容5'),(176,'2021-04-06 18:10:16',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `ershoushangpin` */

DROP TABLE IF EXISTS `ershoushangpin`;

CREATE TABLE `ershoushangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `shiyongqingkuang` longtext COMMENT '使用情况',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='二手商品';

/*Data for the table `ershoushangpin` */

insert  into `ershoushangpin`(`id`,`addtime`,`mingcheng`,`fenlei`,`shiyongqingkuang`,`tupian`,`fabushijian`,`maijiazhanghao`,`maijiaxingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (31,'2021-04-06 18:10:16','名称1','分类1','使用情况1','http://localhost:8080/ssm2p96m/upload/ershoushangpin_tupian1.jpg','2021-04-06','卖家账号1','卖家姓名1','是','',1,1,'2021-04-06 18:10:16',1,99.9),(32,'2021-04-06 18:10:16','名称2','分类2','使用情况2','http://localhost:8080/ssm2p96m/upload/ershoushangpin_tupian2.jpg','2021-04-06','卖家账号2','卖家姓名2','是','',2,2,'2021-04-06 18:10:16',2,99.9),(33,'2021-04-06 18:10:16','名称3','分类3','使用情况3','http://localhost:8080/ssm2p96m/upload/ershoushangpin_tupian3.jpg','2021-04-06','卖家账号3','卖家姓名3','是','',3,3,'2021-04-06 18:10:16',3,99.9),(34,'2021-04-06 18:10:16','名称4','分类4','使用情况4','http://localhost:8080/ssm2p96m/upload/ershoushangpin_tupian4.jpg','2021-04-06','卖家账号4','卖家姓名4','是','',4,4,'2021-04-06 18:10:16',4,99.9),(35,'2021-04-06 18:10:16','名称5','分类5','使用情况5','http://localhost:8080/ssm2p96m/upload/ershoushangpin_tupian5.jpg','2021-04-06','卖家账号5','卖家姓名5','是','',5,5,'2021-04-06 18:10:16',5,99.9),(36,'2021-04-06 18:10:16','名称6','分类6','使用情况6','http://localhost:8080/ssm2p96m/upload/ershoushangpin_tupian6.jpg','2021-04-06','卖家账号6','卖家姓名6','是','',6,6,'2021-04-06 18:10:16',6,99.9);

/*Table structure for table `kuaididingdan` */

DROP TABLE IF EXISTS `kuaididingdan`;

CREATE TABLE `kuaididingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kuaididanhao` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kuaididanhao` (`kuaididanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='快递订单';

/*Data for the table `kuaididingdan` */

insert  into `kuaididingdan`(`id`,`addtime`,`kuaididanhao`,`mingcheng`,`tupian`,`zhanghao`,`xingming`,`maijiazhanghao`,`maijiaxingming`) values (101,'2021-04-06 18:10:16','快递单号1','名称1','http://localhost:8080/ssm2p96m/upload/kuaididingdan_tupian1.jpg','账号1','姓名1','卖家账号1','卖家姓名1'),(102,'2021-04-06 18:10:16','快递单号2','名称2','http://localhost:8080/ssm2p96m/upload/kuaididingdan_tupian2.jpg','账号2','姓名2','卖家账号2','卖家姓名2'),(103,'2021-04-06 18:10:16','快递单号3','名称3','http://localhost:8080/ssm2p96m/upload/kuaididingdan_tupian3.jpg','账号3','姓名3','卖家账号3','卖家姓名3'),(104,'2021-04-06 18:10:16','快递单号4','名称4','http://localhost:8080/ssm2p96m/upload/kuaididingdan_tupian4.jpg','账号4','姓名4','卖家账号4','卖家姓名4'),(105,'2021-04-06 18:10:16','快递单号5','名称5','http://localhost:8080/ssm2p96m/upload/kuaididingdan_tupian5.jpg','账号5','姓名5','卖家账号5','卖家姓名5'),(106,'2021-04-06 18:10:16','快递单号6','名称6','http://localhost:8080/ssm2p96m/upload/kuaididingdan_tupian6.jpg','账号6','姓名6','卖家账号6','卖家姓名6');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` varchar(200) DEFAULT NULL COMMENT '内容',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='留言';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`addtime`,`mingcheng`,`fenlei`,`tupian`,`neirong`,`zhanghao`,`xingming`,`maijiazhanghao`,`maijiaxingming`,`userid`) values (61,'2021-04-06 18:10:16','名称1','分类1','http://localhost:8080/ssm2p96m/upload/liuyan_tupian1.jpg','内容1','账号1','姓名1','卖家账号1','卖家姓名1',1),(62,'2021-04-06 18:10:16','名称2','分类2','http://localhost:8080/ssm2p96m/upload/liuyan_tupian2.jpg','内容2','账号2','姓名2','卖家账号2','卖家姓名2',2),(63,'2021-04-06 18:10:16','名称3','分类3','http://localhost:8080/ssm2p96m/upload/liuyan_tupian3.jpg','内容3','账号3','姓名3','卖家账号3','卖家姓名3',3),(64,'2021-04-06 18:10:16','名称4','分类4','http://localhost:8080/ssm2p96m/upload/liuyan_tupian4.jpg','内容4','账号4','姓名4','卖家账号4','卖家姓名4',4),(65,'2021-04-06 18:10:16','名称5','分类5','http://localhost:8080/ssm2p96m/upload/liuyan_tupian5.jpg','内容5','账号5','姓名5','卖家账号5','卖家姓名5',5),(66,'2021-04-06 18:10:16','名称6','分类6','http://localhost:8080/ssm2p96m/upload/liuyan_tupian6.jpg','内容6','账号6','姓名6','卖家账号6','卖家姓名6',6);

/*Table structure for table `maijia` */

DROP TABLE IF EXISTS `maijia`;

CREATE TABLE `maijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiazhanghao` varchar(200) NOT NULL COMMENT '卖家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `maijiaxingming` varchar(200) NOT NULL COMMENT '卖家姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `maijiazhanghao` (`maijiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='卖家';

/*Data for the table `maijia` */

insert  into `maijia`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`shenfenzheng`,`dizhi`,`touxiang`,`money`) values (11,'2021-04-06 18:10:16','卖家1','123456','卖家姓名1','男',1,'13823888881','773890001@qq.com','440300199101010001','地址1','http://localhost:8080/ssm2p96m/upload/maijia_touxiang1.jpg',100),(12,'2021-04-06 18:10:16','卖家2','123456','卖家姓名2','男',2,'13823888882','773890002@qq.com','440300199202020002','地址2','http://localhost:8080/ssm2p96m/upload/maijia_touxiang2.jpg',100),(13,'2021-04-06 18:10:16','卖家3','123456','卖家姓名3','男',3,'13823888883','773890003@qq.com','440300199303030003','地址3','http://localhost:8080/ssm2p96m/upload/maijia_touxiang3.jpg',100),(14,'2021-04-06 18:10:16','卖家4','123456','卖家姓名4','男',4,'13823888884','773890004@qq.com','440300199404040004','地址4','http://localhost:8080/ssm2p96m/upload/maijia_touxiang4.jpg',100),(15,'2021-04-06 18:10:16','卖家5','123456','卖家姓名5','男',5,'13823888885','773890005@qq.com','440300199505050005','地址5','http://localhost:8080/ssm2p96m/upload/maijia_touxiang5.jpg',100),(16,'2021-04-06 18:10:16','卖家6','123456','卖家姓名6','男',6,'13823888886','773890006@qq.com','440300199606060006','地址6','http://localhost:8080/ssm2p96m/upload/maijia_touxiang6.jpg',100);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='通知';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (151,'2021-04-06 18:10:16','标题1','简介1','http://localhost:8080/ssm2p96m/upload/news_picture1.jpg','内容1'),(152,'2021-04-06 18:10:16','标题2','简介2','http://localhost:8080/ssm2p96m/upload/news_picture2.jpg','内容2'),(153,'2021-04-06 18:10:16','标题3','简介3','http://localhost:8080/ssm2p96m/upload/news_picture3.jpg','内容3'),(154,'2021-04-06 18:10:16','标题4','简介4','http://localhost:8080/ssm2p96m/upload/news_picture4.jpg','内容4'),(155,'2021-04-06 18:10:16','标题5','简介5','http://localhost:8080/ssm2p96m/upload/news_picture5.jpg','内容5'),(156,'2021-04-06 18:10:16','标题6','简介6','http://localhost:8080/ssm2p96m/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'ershoushangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

/*Table structure for table `shangpinleixing` */

DROP TABLE IF EXISTS `shangpinleixing`;

CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品类型';

/*Data for the table `shangpinleixing` */

insert  into `shangpinleixing`(`id`,`addtime`,`fenlei`) values (41,'2021-04-06 18:10:16','分类1'),(42,'2021-04-06 18:10:16','分类2'),(43,'2021-04-06 18:10:16','分类3'),(44,'2021-04-06 18:10:16','分类4'),(45,'2021-04-06 18:10:16','分类5'),(46,'2021-04-06 18:10:16','分类6');

/*Table structure for table `shangpinqiugou` */

DROP TABLE IF EXISTS `shangpinqiugou`;

CREATE TABLE `shangpinqiugou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `shiyongqingkuang` varchar(200) DEFAULT NULL COMMENT '使用情况',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='商品求购';

/*Data for the table `shangpinqiugou` */

insert  into `shangpinqiugou`(`id`,`addtime`,`mingcheng`,`fenlei`,`shiyongqingkuang`,`tupian`,`fabushijian`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`,`clicknum`) values (51,'2021-04-06 18:10:16','名称1','分类1','使用情况1','http://localhost:8080/ssm2p96m/upload/shangpinqiugou_tupian1.jpg','2021-04-06 18:10:16','账号1','姓名1','手机1','是','',1),(52,'2021-04-06 18:10:16','名称2','分类2','使用情况2','http://localhost:8080/ssm2p96m/upload/shangpinqiugou_tupian2.jpg','2021-04-06 18:10:16','账号2','姓名2','手机2','是','',2),(53,'2021-04-06 18:10:16','名称3','分类3','使用情况3','http://localhost:8080/ssm2p96m/upload/shangpinqiugou_tupian3.jpg','2021-04-06 18:10:16','账号3','姓名3','手机3','是','',3),(54,'2021-04-06 18:10:16','名称4','分类4','使用情况4','http://localhost:8080/ssm2p96m/upload/shangpinqiugou_tupian4.jpg','2021-04-06 18:10:16','账号4','姓名4','手机4','是','',4),(55,'2021-04-06 18:10:16','名称5','分类5','使用情况5','http://localhost:8080/ssm2p96m/upload/shangpinqiugou_tupian5.jpg','2021-04-06 18:10:16','账号5','姓名5','手机5','是','',5),(56,'2021-04-06 18:10:16','名称6','分类6','使用情况6','http://localhost:8080/ssm2p96m/upload/shangpinqiugou_tupian6.jpg','2021-04-06 18:10:16','账号6','姓名6','手机6','是','',6);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `tongxin` */

DROP TABLE IF EXISTS `tongxin`;

CREATE TABLE `tongxin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `fasongshijian` datetime DEFAULT NULL COMMENT '发送时间',
  `fasongneirong` varchar(200) DEFAULT NULL COMMENT '发送内容',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='通信';

/*Data for the table `tongxin` */

insert  into `tongxin`(`id`,`addtime`,`zhanghao`,`xingming`,`fasongshijian`,`fasongneirong`,`maijiazhanghao`,`maijiaxingming`,`userid`) values (71,'2021-04-06 18:10:16','账号1','姓名1','2021-04-06 18:10:16','发送内容1','卖家账号1','卖家姓名1',1),(72,'2021-04-06 18:10:16','账号2','姓名2','2021-04-06 18:10:16','发送内容2','卖家账号2','卖家姓名2',2),(73,'2021-04-06 18:10:16','账号3','姓名3','2021-04-06 18:10:16','发送内容3','卖家账号3','卖家姓名3',3),(74,'2021-04-06 18:10:16','账号4','姓名4','2021-04-06 18:10:16','发送内容4','卖家账号4','卖家姓名4',4),(75,'2021-04-06 18:10:16','账号5','姓名5','2021-04-06 18:10:16','发送内容5','卖家账号5','卖家姓名5',5),(76,'2021-04-06 18:10:16','账号6','姓名6','2021-04-06 18:10:16','发送内容6','卖家账号6','卖家姓名6',6);

/*Table structure for table `tuihuo` */

DROP TABLE IF EXISTS `tuihuo`;

CREATE TABLE `tuihuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `tuihuoyuanyin` varchar(200) DEFAULT NULL COMMENT '退货原因',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='退货';

/*Data for the table `tuihuo` */

insert  into `tuihuo`(`id`,`addtime`,`mingcheng`,`fenlei`,`tupian`,`tuihuoyuanyin`,`maijiazhanghao`,`maijiaxingming`,`xingming`,`zhanghao`,`sfsh`,`shhf`) values (91,'2021-04-06 18:10:16','名称1','分类1','http://localhost:8080/ssm2p96m/upload/tuihuo_tupian1.jpg','退货原因1','卖家账号1','卖家姓名1','姓名1','账号1','是',''),(92,'2021-04-06 18:10:16','名称2','分类2','http://localhost:8080/ssm2p96m/upload/tuihuo_tupian2.jpg','退货原因2','卖家账号2','卖家姓名2','姓名2','账号2','是',''),(93,'2021-04-06 18:10:16','名称3','分类3','http://localhost:8080/ssm2p96m/upload/tuihuo_tupian3.jpg','退货原因3','卖家账号3','卖家姓名3','姓名3','账号3','是',''),(94,'2021-04-06 18:10:16','名称4','分类4','http://localhost:8080/ssm2p96m/upload/tuihuo_tupian4.jpg','退货原因4','卖家账号4','卖家姓名4','姓名4','账号4','是',''),(95,'2021-04-06 18:10:16','名称5','分类5','http://localhost:8080/ssm2p96m/upload/tuihuo_tupian5.jpg','退货原因5','卖家账号5','卖家姓名5','姓名5','账号5','是',''),(96,'2021-04-06 18:10:16','名称6','分类6','http://localhost:8080/ssm2p96m/upload/tuihuo_tupian6.jpg','退货原因6','卖家账号6','卖家姓名6','姓名6','账号6','是','');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-06 18:10:16');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`shenfenzheng`,`dizhi`,`touxiang`,`money`) values (21,'2021-04-06 18:10:16','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','440300199101010001','地址1','http://localhost:8080/ssm2p96m/upload/yonghu_touxiang1.jpg',100),(22,'2021-04-06 18:10:16','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','440300199202020002','地址2','http://localhost:8080/ssm2p96m/upload/yonghu_touxiang2.jpg',100),(23,'2021-04-06 18:10:16','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','440300199303030003','地址3','http://localhost:8080/ssm2p96m/upload/yonghu_touxiang3.jpg',100),(24,'2021-04-06 18:10:16','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','440300199404040004','地址4','http://localhost:8080/ssm2p96m/upload/yonghu_touxiang4.jpg',100),(25,'2021-04-06 18:10:16','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','440300199505050005','地址5','http://localhost:8080/ssm2p96m/upload/yonghu_touxiang5.jpg',100),(26,'2021-04-06 18:10:16','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','440300199606060006','地址6','http://localhost:8080/ssm2p96m/upload/yonghu_touxiang6.jpg',100);

/*Table structure for table `yonghutongzhi` */

DROP TABLE IF EXISTS `yonghutongzhi`;

CREATE TABLE `yonghutongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tongzhibiaoti` varchar(200) DEFAULT NULL COMMENT '通知标题',
  `tongzhineirong` varchar(200) DEFAULT NULL COMMENT '通知内容',
  `tongzhishijian` datetime DEFAULT NULL COMMENT '通知时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='用户通知';

/*Data for the table `yonghutongzhi` */

insert  into `yonghutongzhi`(`id`,`addtime`,`zhanghao`,`xingming`,`tongzhibiaoti`,`tongzhineirong`,`tongzhishijian`) values (81,'2021-04-06 18:10:16','账号1','姓名1','通知标题1','通知内容1','2021-04-06 18:10:16'),(82,'2021-04-06 18:10:16','账号2','姓名2','通知标题2','通知内容2','2021-04-06 18:10:16'),(83,'2021-04-06 18:10:16','账号3','姓名3','通知标题3','通知内容3','2021-04-06 18:10:16'),(84,'2021-04-06 18:10:16','账号4','姓名4','通知标题4','通知内容4','2021-04-06 18:10:16'),(85,'2021-04-06 18:10:16','账号5','姓名5','通知标题5','通知内容5','2021-04-06 18:10:16'),(86,'2021-04-06 18:10:16','账号6','姓名6','通知标题6','通知内容6','2021-04-06 18:10:16');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
