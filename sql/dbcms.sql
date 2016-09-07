-- MySQL dump 10.13  Distrib 5.5.50, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: jugdocms
-- ------------------------------------------------------
-- Server version	5.5.50-0ubuntu0.14.04.1

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
-- Current Database: `jugdocms`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jugdocms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jugdocms`;

--
-- Table structure for table `bolt_authtoken`
--

DROP TABLE IF EXISTS `bolt_authtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_authtoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lastseen` datetime DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `useragent` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `validity` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_740AC52FF85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_authtoken`
--

LOCK TABLES `bolt_authtoken` WRITE;
/*!40000 ALTER TABLE `bolt_authtoken` DISABLE KEYS */;
INSERT INTO `bolt_authtoken` VALUES (1,'super-usuario','f176397c5bf3603f0f2745f7f95b2bb7','X7E/bQetiaMF3txBs6FtZKsk0cw/A5pN','2016-09-07 19:52:07','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.92 Safari/537.36','2016-09-21 19:52:07');
/*!40000 ALTER TABLE `bolt_authtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_blocks`
--

DROP TABLE IF EXISTS `bolt_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `templatefields` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `title` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `content` longtext COLLATE utf8_unicode_ci,
  `contentlink` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `image` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  KEY `IDX_7B2C81B7989D9B62` (`slug`),
  KEY `IDX_7B2C81B7AFBA6FD8` (`datecreated`),
  KEY `IDX_7B2C81B7BE74E59A` (`datechanged`),
  KEY `IDX_7B2C81B7A5131421` (`datepublish`),
  KEY `IDX_7B2C81B7B7805520` (`datedepublish`),
  KEY `IDX_7B2C81B77B00651C` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_blocks`
--

LOCK TABLES `bolt_blocks` WRITE;
/*!40000 ALTER TABLE `bolt_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolt_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_cron`
--

DROP TABLE IF EXISTS `bolt_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_cron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interim` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `lastrun` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CD38E123615F8869` (`interim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_cron`
--

LOCK TABLES `bolt_cron` WRITE;
/*!40000 ALTER TABLE `bolt_cron` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolt_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_entries`
--

DROP TABLE IF EXISTS `bolt_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `templatefields` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `title` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `teaser` longtext COLLATE utf8_unicode_ci,
  `body` longtext COLLATE utf8_unicode_ci,
  `image` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `video` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  KEY `IDX_2696ADF0989D9B62` (`slug`),
  KEY `IDX_2696ADF0AFBA6FD8` (`datecreated`),
  KEY `IDX_2696ADF0BE74E59A` (`datechanged`),
  KEY `IDX_2696ADF0A5131421` (`datepublish`),
  KEY `IDX_2696ADF0B7805520` (`datedepublish`),
  KEY `IDX_2696ADF07B00651C` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_entries`
--

LOCK TABLES `bolt_entries` WRITE;
/*!40000 ALTER TABLE `bolt_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolt_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_field_value`
--

DROP TABLE IF EXISTS `bolt_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_field_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contenttype` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `grouping` int(11) NOT NULL DEFAULT '0',
  `fieldname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value_string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value_text` longtext COLLATE utf8_unicode_ci,
  `value_integer` int(11) DEFAULT NULL,
  `value_float` double DEFAULT NULL,
  `value_decimal` decimal(18,9) DEFAULT NULL,
  `value_date` date DEFAULT NULL,
  `value_datetime` datetime DEFAULT NULL,
  `value_json_array` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  KEY `IDX_8B31D78784A0A3ED745E1826` (`content_id`,`contenttype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_field_value`
--

LOCK TABLES `bolt_field_value` WRITE;
/*!40000 ALTER TABLE `bolt_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolt_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_log_change`
--

DROP TABLE IF EXISTS `bolt_log_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_log_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `ownerid` int(11) DEFAULT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contenttype` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `contentid` int(11) NOT NULL,
  `mutation_type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `diff` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `comment` varchar(150) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_946F972AA9E377A` (`date`),
  KEY `IDX_946F97275DAD987` (`ownerid`),
  KEY `IDX_946F972745E1826` (`contenttype`),
  KEY `IDX_946F972E625AE99` (`contentid`),
  KEY `IDX_946F972B0AEEF39` (`mutation_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_log_change`
--

LOCK TABLES `bolt_log_change` WRITE;
/*!40000 ALTER TABLE `bolt_log_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolt_log_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_log_system`
--

DROP TABLE IF EXISTS `bolt_log_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_log_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `message` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `ownerid` int(11) DEFAULT NULL,
  `requesturi` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `route` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `source` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  KEY `IDX_805C16D99AEACC13` (`level`),
  KEY `IDX_805C16D9AA9E377A` (`date`),
  KEY `IDX_805C16D975DAD987` (`ownerid`),
  KEY `IDX_805C16D9E25D857E` (`context`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_log_system`
--

LOCK TABLES `bolt_log_system` WRITE;
/*!40000 ALTER TABLE `bolt_log_system` DISABLE KEYS */;
INSERT INTO `bolt_log_system` VALUES (1,200,'2016-09-07 19:52:07','Added user account \'eudriscabrera\'.',0,'/bolt/userfirst','userfirst','127.0.0.1','security','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Backend\\/Users.php\",\"line\":687}'),(2,400,'2016-09-07 19:52:07','The \'mailoptions\' need to be set in app/config/config.yml',0,'/bolt/userfirst','userfirst','127.0.0.1','config','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Backend\\/Users.php\",\"line\":729}'),(3,200,'2016-09-07 19:52:07','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(4,500,'2016-09-07 19:53:08','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(5,200,'2016-09-07 19:53:10','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(6,500,'2016-09-07 19:54:10','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(7,200,'2016-09-07 19:58:21','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(8,500,'2016-09-07 19:59:16','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Operation now in progress\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(9,200,'2016-09-07 19:59:55','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(10,500,'2016-09-07 20:00:55','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(11,200,'2016-09-07 20:00:56','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(12,500,'2016-09-07 20:01:56','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(13,200,'2016-09-07 20:05:47','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(14,500,'2016-09-07 20:06:47','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(15,200,'2016-09-07 20:06:48','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(16,500,'2016-09-07 20:07:45','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Operation now in progress\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(17,200,'2016-09-07 20:07:50','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(18,500,'2016-09-07 20:08:51','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(19,200,'2016-09-07 20:08:51','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(20,500,'2016-09-07 20:09:51','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(21,200,'2016-09-07 20:13:00','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(22,500,'2016-09-07 20:14:00','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(23,200,'2016-09-07 20:41:11','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(24,500,'2016-09-07 20:42:11','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(25,200,'2016-09-07 20:47:03','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(26,500,'2016-09-07 20:48:03','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(27,200,'2016-09-07 20:49:41','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(28,500,'2016-09-07 20:50:41','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(29,200,'2016-09-07 20:50:52','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(30,500,'2016-09-07 20:51:52','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(31,200,'2016-09-07 20:58:09','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(32,500,'2016-09-07 20:59:09','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(33,200,'2016-09-07 21:00:43','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(34,500,'2016-09-07 21:01:43','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(35,200,'2016-09-07 21:01:44','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(36,500,'2016-09-07 21:02:09','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Operation now in progress\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(37,200,'2016-09-07 21:02:31','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(38,500,'2016-09-07 21:03:32','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(39,200,'2016-09-07 21:03:33','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(40,500,'2016-09-07 21:04:33','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(41,200,'2016-09-07 21:05:31','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(42,500,'2016-09-07 21:06:31','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}'),(43,200,'2016-09-07 21:21:56','Fetching from remote server: http://news.bolt.cm/',1,'/async/dashboardnews','dashboardnews','127.0.0.1','news','{\"file\":\"\\/vendor\\/bolt\\/bolt\\/src\\/Controller\\/Async\\/General.php\",\"line\":324}'),(44,500,'2016-09-07 21:22:56','Error occurred during newsfeed fetch',1,'/async/dashboardnews','dashboardnews','127.0.0.1','exception','{\"file\":\"\\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Exception\\/RequestException.php\",\"line\":51,\"class\":\"\",\"function\":\"\",\"message\":\"Error creating resource: [message] fopen(http:\\/\\/news.bolt.cm\\/?v=3.1.1&amp;p=5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1&amp;db=mysql&amp;name=bG9jYWxob3N0): failed to open stream: Connection timed out\\n[file] \\/home\\/eudriscabrera\\/labs\\/javadominicanodotcom\\/vendor\\/guzzlehttp\\/guzzle\\/src\\/Handler\\/StreamHandler.php\\n[line] 312\"}');
/*!40000 ALTER TABLE `bolt_log_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_pages`
--

DROP TABLE IF EXISTS `bolt_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `templatefields` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `title` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `image` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `teaser` longtext COLLATE utf8_unicode_ci,
  `body` longtext COLLATE utf8_unicode_ci,
  `template` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_31AF1BC8989D9B62` (`slug`),
  KEY `IDX_31AF1BC8AFBA6FD8` (`datecreated`),
  KEY `IDX_31AF1BC8BE74E59A` (`datechanged`),
  KEY `IDX_31AF1BC8A5131421` (`datepublish`),
  KEY `IDX_31AF1BC8B7805520` (`datedepublish`),
  KEY `IDX_31AF1BC87B00651C` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_pages`
--

LOCK TABLES `bolt_pages` WRITE;
/*!40000 ALTER TABLE `bolt_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolt_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_relations`
--

DROP TABLE IF EXISTS `bolt_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_contenttype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_contenttype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `to_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4C524BC3EA11294378CED90B` (`from_contenttype`,`from_id`),
  KEY `IDX_4C524BC35ACD264530354A65` (`to_contenttype`,`to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_relations`
--

LOCK TABLES `bolt_relations` WRITE;
/*!40000 ALTER TABLE `bolt_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolt_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_showcases`
--

DROP TABLE IF EXISTS `bolt_showcases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_showcases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `templatefields` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `title` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `html` longtext COLLATE utf8_unicode_ci,
  `textarea` longtext COLLATE utf8_unicode_ci,
  `markdown` longtext COLLATE utf8_unicode_ci,
  `geolocation` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `video` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `image` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `imagelist` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `file` varchar(256) COLLATE utf8_unicode_ci DEFAULT '',
  `filelist` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `checkbox` tinyint(1) NOT NULL DEFAULT '0',
  `datetime` datetime DEFAULT NULL,
  `date` date DEFAULT NULL,
  `integerfield` int(11) NOT NULL DEFAULT '0',
  `floatfield` double NOT NULL DEFAULT '0',
  `selectfield` longtext COLLATE utf8_unicode_ci,
  `multiselect` longtext COLLATE utf8_unicode_ci,
  `selectentry` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_C5F751E8989D9B62` (`slug`),
  KEY `IDX_C5F751E8AFBA6FD8` (`datecreated`),
  KEY `IDX_C5F751E8BE74E59A` (`datechanged`),
  KEY `IDX_C5F751E8A5131421` (`datepublish`),
  KEY `IDX_C5F751E8B7805520` (`datedepublish`),
  KEY `IDX_C5F751E87B00651C` (`status`),
  KEY `IDX_C5F751E8FD4718AE` (`integerfield`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_showcases`
--

LOCK TABLES `bolt_showcases` WRITE;
/*!40000 ALTER TABLE `bolt_showcases` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolt_showcases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_taxonomy`
--

DROP TABLE IF EXISTS `bolt_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_taxonomy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `contenttype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `taxonomytype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_ABAA120084A0A3ED` (`content_id`),
  KEY `IDX_ABAA1200745E1826` (`contenttype`),
  KEY `IDX_ABAA1200FE2A268F` (`taxonomytype`),
  KEY `IDX_ABAA1200989D9B62` (`slug`),
  KEY `IDX_ABAA1200FEA3B3F9` (`sortorder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_taxonomy`
--

LOCK TABLES `bolt_taxonomy` WRITE;
/*!40000 ALTER TABLE `bolt_taxonomy` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolt_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolt_users`
--

DROP TABLE IF EXISTS `bolt_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolt_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `lastseen` datetime DEFAULT NULL,
  `lastip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `displayname` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `stack` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `shadowpassword` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shadowtoken` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shadowvalidity` datetime DEFAULT NULL,
  `failedlogins` int(11) NOT NULL DEFAULT '0',
  `throttleduntil` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5585B54F85E0677` (`username`),
  UNIQUE KEY `UNIQ_5585B54E7927C74` (`email`),
  KEY `IDX_5585B5450F9BB84` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolt_users`
--

LOCK TABLES `bolt_users` WRITE;
/*!40000 ALTER TABLE `bolt_users` DISABLE KEYS */;
INSERT INTO `bolt_users` VALUES (1,'super-usuario','$2y$08$XA/LBQLdL4mRMehQ80V23OSZeYdMATBHJ460SfImiuorz5THvr5jW','eudris@gmail.com','2016-09-07 19:52:07','127.0.0.1','eudriscabrera','[]',1,NULL,NULL,NULL,0,NULL,'[\"root\",\"everyone\"]');
/*!40000 ALTER TABLE `bolt_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-07 17:59:10
