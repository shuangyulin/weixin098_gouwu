/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm0q94t
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm0q94t` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm0q94t`;

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
) ENGINE=InnoDB AUTO_INCREMENT=1616895457209 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-28 09:04:43',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-28 09:04:43',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-28 09:04:43',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-28 09:04:43',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-28 09:04:43',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-28 09:04:43',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616895014779,'2021-03-28 09:30:14',1616894665183,'中一大厦(新中路店)','陈一','12312312345','是'),(1616895457208,'2021-03-28 09:37:36',1616895322110,'中一大厦(新中路店)','张一','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616895414603 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616895482574 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (51,'2021-03-28 09:04:43',1,1,'提问1','回复1',1),(52,'2021-03-28 09:04:43',2,2,'提问2','回复2',2),(53,'2021-03-28 09:04:43',3,3,'提问3','回复3',3),(54,'2021-03-28 09:04:43',4,4,'提问4','回复4',4),(55,'2021-03-28 09:04:43',5,5,'提问5','回复5',5),(56,'2021-03-28 09:04:43',6,6,'提问6','回复6',6),(1616894985395,'2021-03-28 09:29:45',1616894665183,NULL,'请问有宠物用品吗',NULL,0),(1616895084791,'2021-03-28 09:31:24',1616894665183,1,NULL,'有的',NULL),(1616895437456,'2021-03-28 09:37:17',1616895322110,NULL,'请问有体育用品吗',NULL,0),(1616895482573,'2021-03-28 09:38:02',1616895322110,1,NULL,'有的',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm0q94t/upload/1616894563009.jpg'),(2,'picture2','http://localhost:8080/ssm0q94t/upload/1616894925424.jpg'),(3,'picture3','http://localhost:8080/ssm0q94t/upload/1616894934118.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdanpingjia` */

DROP TABLE IF EXISTS `dingdanpingjia`;

CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616895566668 DEFAULT CHARSET=utf8 COMMENT='订单评价';

/*Data for the table `dingdanpingjia` */

insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (41,'2021-03-28 09:04:43','订单编号1','商品名称1','商品分类1','1','http://localhost:8080/ssm0q94t/upload/dingdanpingjia_tianjiatupian1.jpg','评价内容1','2021-03-28','用户名1','联系电话1','是','',1),(42,'2021-03-28 09:04:43','订单编号2','商品名称2','商品分类2','1','http://localhost:8080/ssm0q94t/upload/1616894530876.jpg','评价内容2','2021-03-28','用户名2','联系电话2','是','',2),(43,'2021-03-28 09:04:43','订单编号3','商品名称3','商品分类3','1','http://localhost:8080/ssm0q94t/upload/dingdanpingjia_tianjiatupian3.jpg','评价内容3','2021-03-28','用户名3','联系电话3','是','',3),(44,'2021-03-28 09:04:43','订单编号4','商品名称4','商品分类4','1','http://localhost:8080/ssm0q94t/upload/dingdanpingjia_tianjiatupian4.jpg','评价内容4','2021-03-28','用户名4','联系电话4','是','',4),(45,'2021-03-28 09:04:43','订单编号5','商品名称5','商品分类5','1','http://localhost:8080/ssm0q94t/upload/1616894539313.jpg','评价内容5','2021-03-28','用户名5','联系电话5','是','',5),(46,'2021-03-28 09:04:43','订单编号6','商品名称6','商品分类6','1','http://localhost:8080/ssm0q94t/upload/1616894553464.jpg','评价内容6','2021-03-28','用户名6','联系电话6','是','',6),(1616895061518,'2021-03-28 09:31:01','20213289301724700263','娇韵诗双萃精华露','化妆品','5','http://localhost:8080/ssm0q94t/upload/1616895053486.jpg','精华露很好用','2021-03-28','1','12312312345','是','感谢支持',1616894665183),(1616895566667,'2021-03-28 09:39:25','20213289373919088798','娇韵诗双萃精华露','化妆品','5','http://localhost:8080/ssm0q94t/upload/1616895558587.jpg','很不错的商品','2021-03-28','2','12312312312','','',1616895322110);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616895408386 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-03-28 09:04:43',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-28 09:04:43',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-28 09:04:43',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-28 09:04:43',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-28 09:04:43',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-28 09:04:43',6,6,'用户名6','评论内容6','回复内容6'),(1616895408385,'2021-03-28 09:36:48',1616894908197,1616895322110,'2','日期新吗','是的');

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
) ENGINE=InnoDB AUTO_INCREMENT=1616894967390 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-03-28 09:04:43','标题1','简介1','http://localhost:8080/ssm0q94t/upload/1616894585065.jpg','<p>内容1</p>'),(102,'2021-03-28 09:04:43','标题2','简介2','http://localhost:8080/ssm0q94t/upload/1616894593956.jpg','<p>内容2</p>'),(104,'2021-03-28 09:04:43','标题4','简介4','http://localhost:8080/ssm0q94t/upload/1616894620806.jpg','<p>内容4</p>'),(105,'2021-03-28 09:04:43','标题5','简介5','http://localhost:8080/ssm0q94t/upload/1616894632384.jpg','<p>内容5</p>'),(106,'2021-03-28 09:04:43','标题6','简介6','http://localhost:8080/ssm0q94t/upload/1616894645935.jpg','<p>内容6</p>'),(1616894967389,'2021-03-28 09:29:27','商品优惠资讯','商品优惠','http://localhost:8080/ssm0q94t/upload/1616894946039.jpg','<p>全场商品参与618优惠活动，具体详见详情页</p><p><img src=\"http://localhost:8080/ssm0q94t/upload/1616894965262.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616895460521 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1616895018889,'2021-03-28 09:30:18','20213289301724700263','shangpinxinxi',1616894665183,1616894908197,'娇韵诗双萃精华露','http://localhost:8080/ssm0q94t/upload/1616894890722.jpg',1,690,690,690,690,1,'已完成','中一大厦(新中路店)'),(1616895460520,'2021-03-28 09:37:40','20213289373919088798','shangpinxinxi',1616895322110,1616894908197,'娇韵诗双萃精华露','http://localhost:8080/ssm0q94t/upload/1616894890722.jpg',2,690,690,1380,1380,1,'已完成','中一大厦(新中路店)');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1616894875603 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-03-28 09:04:43','日用品'),(22,'2021-03-28 09:04:43','服装'),(23,'2021-03-28 09:04:43','休闲食品'),(24,'2021-03-28 09:04:43','电器'),(1616894875602,'2021-03-28 09:27:55','化妆品');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616894908198 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`) values (31,'2021-03-28 09:04:43','商品名称1','休闲食品','http://localhost:8080/ssm0q94t/upload/1616894444221.jpg','品牌1','规格1','<p>商品详情1</p>','2021-03-28 09:27:28',3,99.9),(32,'2021-03-28 09:04:43','商品名称2','休闲食品','http://localhost:8080/ssm0q94t/upload/1616894459880.jpg','品牌2','规格2','<p>商品详情2</p>','2021-03-28 09:36:53',4,99.9),(33,'2021-03-28 09:04:43','商品名称3','日用品','http://localhost:8080/ssm0q94t/upload/1616894478275.jpg','品牌3','规格3','<p>商品详情3</p>','2021-03-28 09:21:04',4,99.9),(34,'2021-03-28 09:04:43','商品名称4','服装','http://localhost:8080/ssm0q94t/upload/1616894493465.jpg','品牌4','规格4','<p>商品详情4</p>','2021-03-28 09:35:57',11,99.9),(35,'2021-03-28 09:04:43','商品名称5','电器','http://localhost:8080/ssm0q94t/upload/1616894509170.jpg','品牌5','规格5','<p>商品详情5</p>','2021-03-28 09:21:38',6,99.9),(1616894908197,'2021-03-28 09:28:28','娇韵诗双萃精华露','化妆品','http://localhost:8080/ssm0q94t/upload/1616894890722.jpg','娇韵诗','30ml','<p>保湿修复</p><p><img src=\"http://localhost:8080/ssm0q94t/upload/1616894906378.jpg\"></p>','2021-03-28 09:38:43',4,690);

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
) ENGINE=InnoDB AUTO_INCREMENT=1616895399437 DEFAULT CHARSET=utf8 COMMENT='收藏表';

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','h3wvqkwmpwy7z41h78owovgv93wohems','2021-03-28 09:17:26','2021-03-28 10:17:26'),(2,1,'abo','users','管理员','87036mwhbo7zolfxhwp8ig3qf6g4b23m','2021-03-28 09:19:29','2021-03-28 10:27:48'),(3,1616894665183,'1','yonghu','用户','o83lnieojayq1vw35wzqh92x4s0cqanj','2021-03-28 09:24:30','2021-03-28 10:24:31'),(4,1616895322110,'2','yonghu','用户','pv91z4pck1r1v5kv303qca832k7uje0u','2021-03-28 09:35:27','2021-03-28 10:38:24');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-28 09:04:43');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616895322111 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (11,'2021-03-28 09:04:43','用户1','123456','姓名1','男','http://localhost:8080/ssm0q94t/upload/yonghu_touxiang1.jpg','13823888881',100),(12,'2021-03-28 09:04:43','用户2','123456','姓名2','男','http://localhost:8080/ssm0q94t/upload/yonghu_touxiang2.jpg','13823888882',100),(13,'2021-03-28 09:04:43','用户3','123456','姓名3','男','http://localhost:8080/ssm0q94t/upload/yonghu_touxiang3.jpg','13823888883',100),(14,'2021-03-28 09:04:43','用户4','123456','姓名4','男','http://localhost:8080/ssm0q94t/upload/yonghu_touxiang4.jpg','13823888884',100),(15,'2021-03-28 09:04:43','用户5','123456','姓名5','男','http://localhost:8080/ssm0q94t/upload/yonghu_touxiang5.jpg','13823888885',100),(16,'2021-03-28 09:04:43','用户6','123456','姓名6','男','http://localhost:8080/ssm0q94t/upload/yonghu_touxiang6.jpg','13823888886',100),(1616894665183,'2021-03-28 09:24:25','1','1','陈一','女','http://localhost:8080/ssm0q94t/upload/1616894685548.jpg','12312312345',1310),(1616895322110,'2021-03-28 09:35:22','2','2','张一','女','http://localhost:8080/ssm0q94t/upload/1616895336942.png','12312312312',620);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
