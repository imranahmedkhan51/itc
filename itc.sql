/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.5-10.4.28-MariaDB : Database - whatsapp_smsdata
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`whatsapp_smsdata` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `whatsapp_smsdata`;

/*Table structure for table `employee_record` */

DROP TABLE IF EXISTS `employee_record`;

CREATE TABLE `employee_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `employeeNo` varchar(150) DEFAULT NULL,
  `designation` varchar(500) DEFAULT NULL,
  `deaprtment` varchar(500) DEFAULT NULL,
  `mobileno` varchar(25) DEFAULT NULL,
  `ts` datetime DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  `city` varchar(25) DEFAULT NULL,
  `attendance` int(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mobileno` (`mobileno`)
) ENGINE=InnoDB AUTO_INCREMENT=1741 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Table structure for table `employee_record_itc` */

DROP TABLE IF EXISTS `employee_record_itc`;

CREATE TABLE `employee_record_itc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `employeeNo` varchar(150) DEFAULT NULL,
  `designation` varchar(500) DEFAULT NULL,
  `deaprtment` varchar(500) DEFAULT NULL,
  `mobileno` varchar(25) DEFAULT NULL,
  `ts` datetime DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  `city` varchar(25) DEFAULT NULL,
  `ext_no` varchar(25) DEFAULT NULL,
  `attendance` int(1) DEFAULT 0,
  `email` varchar(120) DEFAULT NULL,
  `idc` int(11) DEFAULT NULL,
  `unit` varchar(60) DEFAULT NULL,
  `ad_id` varchar(60) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mobileno` (`mobileno`)
) ENGINE=InnoDB AUTO_INCREMENT=3084 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Table structure for table `employee_record_jang` */

DROP TABLE IF EXISTS `employee_record_jang`;

CREATE TABLE `employee_record_jang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `employeeNo` varchar(150) DEFAULT NULL,
  `designation` varchar(500) DEFAULT NULL,
  `deaprtment` varchar(500) DEFAULT NULL,
  `mobileno` varchar(25) DEFAULT NULL,
  `ts` datetime DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  `city` varchar(25) DEFAULT NULL,
  `attendance` int(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mobileno` (`mobileno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `employee_record2` */

DROP TABLE IF EXISTS `employee_record2`;

CREATE TABLE `employee_record2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `employeeNo` varchar(150) DEFAULT NULL,
  `designation` varchar(500) DEFAULT NULL,
  `deaprtment` varchar(500) DEFAULT NULL,
  `mobileno` varchar(25) DEFAULT NULL,
  `ts` datetime DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mobileno` (`mobileno`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Table structure for table `it_complains` */

DROP TABLE IF EXISTS `it_complains`;

CREATE TABLE `it_complains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `complain` varchar(520) DEFAULT NULL,
  `ext_no` varchar(40) DEFAULT NULL,
  `comp_no` varchar(40) DEFAULT NULL,
  `created_date` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Table structure for table `mails_sent` */

DROP TABLE IF EXISTS `mails_sent`;

CREATE TABLE `mails_sent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) NOT NULL,
  `name` varchar(140) DEFAULT NULL,
  `complain` varchar(120) DEFAULT NULL,
  `ext_no` varchar(140) DEFAULT NULL,
  `comp_no` varchar(140) DEFAULT NULL,
  `department` varchar(140) DEFAULT NULL,
  `c_status` varchar(140) DEFAULT 'Pending',
  `resolve_by` varchar(140) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `resulation` text DEFAULT NULL,
  `resulation_time` datetime DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `designation` varchar(140) DEFAULT NULL,
  `city` varchar(140) DEFAULT NULL,
  `status` varchar(40) DEFAULT '0',
  `email` varchar(60) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  `tag` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Table structure for table `mails_sent_2` */

DROP TABLE IF EXISTS `mails_sent_2`;

CREATE TABLE `mails_sent_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_sent_id` int(11) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `name` varchar(140) DEFAULT NULL,
  `complain` varchar(520) DEFAULT NULL,
  `ext_no` varchar(140) DEFAULT NULL,
  `comp_no` varchar(140) DEFAULT NULL,
  `department` varchar(140) DEFAULT NULL,
  `c_status` varchar(140) DEFAULT 'Pending',
  `resolve_by` varchar(140) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `resulation` text DEFAULT NULL,
  `resulation_time` datetime DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `designation` varchar(140) DEFAULT NULL,
  `city` varchar(140) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  `assign_by` varchar(120) DEFAULT NULL,
  `assign_time` varchar(120) DEFAULT NULL,
  `assign_email` varchar(120) DEFAULT NULL,
  `tag` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Table structure for table `support_staff` */

DROP TABLE IF EXISTS `support_staff`;

CREATE TABLE `support_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `city` varchar(255) NOT NULL,
  `name` varchar(120) NOT NULL,
  `user_name` varchar(120) DEFAULT NULL,
  `pwd` varchar(120) DEFAULT NULL,
  `pwd_time` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
