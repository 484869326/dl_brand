/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.6.17 : Database - brand_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`brand_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `brand_db`;

/*Table structure for table `tb_brand` */

DROP TABLE IF EXISTS `tb_brand`;

CREATE TABLE `tb_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(20) DEFAULT NULL,
  `company_name` varchar(20) DEFAULT NULL,
  `ordered` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

/*Data for the table `tb_brand` */

insert  into `tb_brand`(`id`,`brand_name`,`company_name`,`ordered`,`description`,`status`) values (1,'华为','华为技术有限公司',100,'万物互联',1),(2,'小米','小米科技有限公司',50,'are you ok',1),(3,'格力','格力电器股份有限公司',30,'让世界爱上中国造',1),(4,'阿里巴巴','阿里巴巴集团控股有限公司',10,'买买买',1),(5,'腾讯','腾讯计算机系统有限公司',50,'玩玩玩',0),(6,'百度','百度在线网络技术公司',5,'搜搜搜',0),(7,'京东','北京京东世纪贸易有限公司',40,'就是快',1),(8,'小米','小米科技有限公司',50,'are you ok',1),(9,'三只松鼠','三只松鼠股份有限公司',5,'好吃不上火',0),(10,'华为','华为技术有限公司',100,'万物互联',1),(11,'小米','小米科技有限公司',50,'are you ok',1),(12,'格力','格力电器股份有限公司',30,'让世界爱上中国造',1),(13,'阿里巴巴','阿里巴巴集团控股有限公司',10,'买买买',1),(14,'腾讯','腾讯计算机系统有限公司',50,'玩玩玩',0),(15,'百度','百度在线网络技术公司',5,'搜搜搜',0),(16,'京东','北京京东世纪贸易有限公司',40,'就是快',1),(17,'华为','华为技术有限公司',100,'万物互联',1),(18,'小米','小米科技有限公司',50,'are you ok',1),(19,'格力','格力电器股份有限公司',30,'让世界爱上中国造',1),(20,'阿里巴巴','阿里巴巴集团控股有限公司',10,'买买买',1),(21,'腾讯','腾讯计算机系统有限公司',50,'玩玩玩',0),(22,'百度','百度在线网络技术公司',5,'搜搜搜',0),(23,'京东','北京京东世纪贸易有限公司',40,'就是快',1),(24,'小米','小米科技有限公司',50,'are you ok',1),(25,'三只松鼠','三只松鼠股份有限公司',5,'好吃不上火',0),(26,'华为','华为技术有限公司',100,'万物互联',1),(27,'小米','小米科技有限公司',50,'are you ok',1),(28,'格力','格力电器股份有限公司',30,'让世界爱上中国造',1),(29,'阿里巴巴','阿里巴巴集团控股有限公司',10,'买买买',1),(30,'腾讯','腾讯计算机系统有限公司',50,'玩玩玩',0),(31,'百度','百度在线网络技术公司',5,'搜搜搜',0),(32,'京东','北京京东世纪贸易有限公司',40,'就是快',1),(33,'华为','华为技术有限公司',100,'万物互联',1),(34,'小米','小米科技有限公司',50,'are you ok',1),(35,'格力','格力电器股份有限公司',30,'让世界爱上中国造',1),(36,'阿里巴巴','阿里巴巴集团控股有限公司',10,'买买买',1),(37,'腾讯','腾讯计算机系统有限公司',50,'玩玩玩',0),(38,'百度','百度在线网络技术公司',5,'搜搜搜',0),(39,'京东','北京京东世纪贸易有限公司',40,'就是快',1),(40,'小米','小米科技有限公司',50,'are you ok',1),(41,'三只松鼠','三只松鼠股份有限公司',5,'好吃不上火',0),(42,'华为','华为技术有限公司',100,'万物互联',1),(43,'小米','小米科技有限公司',50,'are you ok',1),(44,'格力','格力电器股份有限公司',30,'让世界爱上中国造',1),(45,'阿里巴巴','阿里巴巴集团控股有限公司',10,'买买买',1),(46,'腾讯','腾讯计算机系统有限公司',50,'玩玩玩',0),(47,'百度','百度在线网络技术公司',5,'搜搜搜',0),(48,'京东','北京京东世纪贸易有限公司',40,'就是快',1),(49,'??','TITI',201,'??????',1),(50,'小李','TITI',100,'新增集团',1),(51,'小张','TITI',101,'新增企业',1),(52,'小田田','TITI',102,'新增企业',1);

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`username`,`password`) values (1,'zhangsan','123'),(2,'lisi','234'),(3,'wangwu','123'),(4,'admin','123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
