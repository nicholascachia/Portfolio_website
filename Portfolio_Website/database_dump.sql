-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: myportfolio_db
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add galleries',7,'add_galleries'),(26,'Can change galleries',7,'change_galleries'),(27,'Can delete galleries',7,'delete_galleries'),(28,'Can view galleries',7,'view_galleries'),(29,'Can add category',8,'add_category'),(30,'Can change category',8,'change_category'),(31,'Can delete category',8,'delete_category'),(32,'Can view category',8,'view_category'),(33,'Can add tag',9,'add_tag'),(34,'Can change tag',9,'change_tag'),(35,'Can delete tag',9,'delete_tag'),(36,'Can view tag',9,'view_tag'),(37,'Can add blog post',10,'add_blogpost'),(38,'Can change blog post',10,'change_blogpost'),(39,'Can delete blog post',10,'delete_blogpost'),(40,'Can view blog post',10,'view_blogpost'),(41,'Can add contact',11,'add_contact'),(42,'Can change contact',11,'change_contact'),(43,'Can delete contact',11,'delete_contact'),(44,'Can view contact',11,'view_contact'),(45,'Can add captcha store',12,'add_captchastore'),(46,'Can change captcha store',12,'change_captchastore'),(47,'Can delete captcha store',12,'delete_captchastore'),(48,'Can view captcha store',12,'view_captchastore');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$iyOvoXoZ5dS3LkQSGUcVqj$4sgIReLD108tfkMyF1PPmzY1qR2CNiIGxhU7MwEpJM8=','2024-11-24 21:00:57.987658',1,'nicholas','','','nicholas.cachia@gmail.com',1,1,'2024-11-24 10:33:00.765201');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `captcha_captchastore` (
  `id` int NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `response` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `hashkey` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
INSERT INTO `captcha_captchastore` VALUES (5,'XQVV','xqvv','d4d325688fb9b41841318c62d5b86ae632416aa0','2024-11-24 20:43:33.573360'),(6,'AUDI','audi','76fad15092a3e7ac4e37517aa959e9007093fded','2024-11-24 20:43:42.398673'),(7,'GYHG','gyhg','9c3101b93a1af3df1616e7192b54646e85750981','2024-11-24 20:43:43.162709'),(9,'KHHW','khhw','ae99971c390f4bd2deffe981416362d0672e16b9','2024-11-24 20:44:08.457908'),(10,'SPKX','spkx','26f494962e511356353d483c462cd057181d1725','2024-11-24 20:44:12.033594'),(11,'ARED','ared','8e952a2cde3094f1a8a330c08aec520c41248fb6','2024-11-24 20:44:12.692941'),(12,'AART','aart','381b4f1f99532ea9f20af26842042a083bae7522','2024-11-24 20:48:18.148203'),(13,'TWKC','twkc','0dbdce82f104bda206346b32ebd2d4c377f3ee0c','2024-11-24 20:48:29.161224'),(14,'YEPJ','yepj','0d50381ac7f3e627d21b26be070a521a8b9ebe2e','2024-11-24 21:05:04.957873'),(15,'HDZC','hdzc','49cc5bbe0f5be8ab7ce428e9cc828b2c587a593b','2024-11-24 21:09:02.891473'),(16,'WSQG','wsqg','adffcec49fe06926700d86888572c8347b83f9a1','2024-11-24 21:39:34.348303'),(17,'NCJO','ncjo','f3bf37ac716483dde252a8b30c32e3f2fee91d94','2024-11-24 21:42:02.133912'),(18,'KILL','kill','9980f5736770fc359fd7ce737be72fb3c8097be5','2024-11-24 21:42:22.402800'),(19,'DJLQ','djlq','634d389a3a481d76f91ee2e6e7684e523e8b2bdd','2024-11-25 16:36:16.982987'),(20,'DLPX','dlpx','bb46117b09aa4021edd79638e38de349644b910d','2024-11-25 19:42:22.916595'),(21,'AWVF','awvf','f9df642f1da329db52343f6cd744cee05f927e2b','2024-11-25 19:51:02.449716'),(22,'UVIJ','uvij','9e322921c2b22ce97de1875e2448570614272e36','2024-11-25 19:51:17.117535'),(23,'LMHS','lmhs','0a8769628e148fa0b6d53a856287ce2b63f09a3c','2024-11-25 19:58:42.680020'),(24,'HSYT','hsyt','8ff66425842250c7e513afff68ad0e013bd1dc1f','2024-11-25 21:29:49.778330'),(25,'QQMC','qqmc','531fafab179db75b3849ffec0d4727d73a3ded29','2024-11-25 21:45:18.265423'),(26,'MKRF','mkrf','27df7b6de1c868e8a3790af0aae44ed2f38748f8','2024-11-25 21:45:25.637258'),(27,'UWMV','uwmv','80fff1402ea1b278139594209681b38a90991a05','2024-11-25 22:44:43.964446'),(28,'CTDL','ctdl','dab97cdfa53ede55cf2e9ece357baebcde40bf30','2024-11-26 19:57:20.855065');
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-11-24 10:34:58.634237','1','Flask',1,'[{\"added\": {}}]',9,1),(2,'2024-11-24 10:35:01.562489','1','This is my first Blog',1,'[{\"added\": {}}]',10,1),(3,'2024-11-24 10:48:21.597632','2','Django',1,'[{\"added\": {}}]',9,1),(4,'2024-11-24 10:48:29.671478','3','Bootstrap',1,'[{\"added\": {}}]',9,1),(5,'2024-11-24 10:48:35.270517','3','Blog 3',1,'[{\"added\": {}}]',10,1),(6,'2024-11-24 10:49:14.760300','2','this is blog number 2',2,'[{\"changed\": {\"fields\": [\"Content\", \"Tags\"]}}]',10,1),(7,'2024-11-24 10:51:21.144900','4','the 4th Blog',1,'[{\"added\": {}}]',10,1),(8,'2024-11-24 10:51:25.691459','4','the 4th Blog',2,'[]',10,1),(9,'2024-11-24 16:43:02.294131','5','Blog post3',1,'[{\"added\": {}}]',10,1),(10,'2024-11-24 16:44:19.587278','2','this is Gallery 3',1,'[{\"added\": {}}]',7,1),(11,'2024-11-24 18:57:35.159453','3','Gallery 4',1,'[{\"added\": {}}]',7,1),(12,'2024-11-24 18:58:15.089716','4','gallery 5',1,'[{\"added\": {}}]',7,1),(13,'2024-11-24 18:58:46.775939','5','gallery 7',1,'[{\"added\": {}}]',7,1),(14,'2024-11-24 21:01:14.756035','5','gallery 7',3,'',7,1),(15,'2024-11-24 21:02:00.395614','2','nicholas (camilleri.glorianne@gmail.com)',3,'',11,1),(16,'2024-11-24 21:02:10.312242','7','werwe',3,'',10,1),(17,'2024-11-24 21:02:10.312242','6','ewrwe',3,'',10,1),(18,'2024-11-24 21:03:20.764414','4','Python',1,'[{\"added\": {}}]',9,1),(19,'2024-11-24 21:03:29.183031','5','CSS',1,'[{\"added\": {}}]',9,1),(20,'2024-11-24 21:34:58.176720','4','gallery 5',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(21,'2024-11-24 21:35:26.681422','3','Gallery 4',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(22,'2024-11-24 21:35:35.486280','2','this is Gallery 3',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(23,'2024-11-24 21:35:44.009042','1','This is Gallery 1',2,'[{\"changed\": {\"fields\": [\"Description\", \"Image\"]}}]',7,1),(24,'2024-11-24 21:35:55.740527','5','Blog post3',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',10,1),(25,'2024-11-24 21:36:05.489390','4','the 4th Blog',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',10,1),(26,'2024-11-24 21:36:15.283235','3','Blog 3',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',10,1),(27,'2024-11-24 21:36:24.597377','2','this is blog number 2',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',10,1),(28,'2024-11-24 21:36:55.659796','1','This is my first Blog',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(12,'captcha','captchastore'),(5,'contenttypes','contenttype'),(10,'MyWebsite_app','blogpost'),(8,'MyWebsite_app','category'),(11,'MyWebsite_app','contact'),(7,'MyWebsite_app','galleries'),(9,'MyWebsite_app','tag'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-11-24 10:02:54.722727'),(2,'auth','0001_initial','2024-11-24 10:02:55.403800'),(3,'admin','0001_initial','2024-11-24 10:02:55.572724'),(4,'admin','0002_logentry_remove_auto_add','2024-11-24 10:02:55.580724'),(5,'admin','0003_logentry_add_action_flag_choices','2024-11-24 10:02:55.588734'),(6,'contenttypes','0002_remove_content_type_name','2024-11-24 10:02:55.691523'),(7,'auth','0002_alter_permission_name_max_length','2024-11-24 10:02:55.764343'),(8,'auth','0003_alter_user_email_max_length','2024-11-24 10:02:55.792466'),(9,'auth','0004_alter_user_username_opts','2024-11-24 10:02:55.800476'),(10,'auth','0005_alter_user_last_login_null','2024-11-24 10:02:55.865005'),(11,'auth','0006_require_contenttypes_0002','2024-11-24 10:02:55.867010'),(12,'auth','0007_alter_validators_add_error_messages','2024-11-24 10:02:55.875006'),(13,'auth','0008_alter_user_username_max_length','2024-11-24 10:02:55.951687'),(14,'auth','0009_alter_user_last_name_max_length','2024-11-24 10:02:56.031695'),(15,'auth','0010_alter_group_name_max_length','2024-11-24 10:02:56.053550'),(16,'auth','0011_update_proxy_permissions','2024-11-24 10:02:56.066555'),(17,'auth','0012_alter_user_first_name_max_length','2024-11-24 10:02:56.143040'),(18,'sessions','0001_initial','2024-11-24 10:02:56.187118'),(19,'MyWebsite_app','0001_initial','2024-11-24 10:27:55.480806'),(20,'captcha','0001_initial','2024-11-24 19:40:25.858952'),(21,'captcha','0002_alter_captchastore_id','2024-11-24 19:40:25.862952');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mywebsite_app_blogpost`
--

DROP TABLE IF EXISTS `mywebsite_app_blogpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mywebsite_app_blogpost` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MyWebsite_app_blogpost_author_id_434c2188_fk_auth_user_id` (`author_id`),
  CONSTRAINT `MyWebsite_app_blogpost_author_id_434c2188_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mywebsite_app_blogpost`
--

LOCK TABLES `mywebsite_app_blogpost` WRITE;
/*!40000 ALTER TABLE `mywebsite_app_blogpost` DISABLE KEYS */;
INSERT INTO `mywebsite_app_blogpost` VALUES (1,'This is my first Blog','<p>Blog content</p>','2024-11-24 10:35:01.548487','2024-11-24 21:36:55.644796','blog_images/Screenshot_2024-11-10_161407_tsObSMO.png','Django',1),(2,'this is blog number 2','<p>this is the content</p>','2024-11-24 10:37:40.260549','2024-11-24 21:36:24.583863','blog_images/Screenshot_2024-11-10_161407_QqMnCoe.png','Django',1),(3,'Blog 3','<p>contents</p>','2024-11-24 10:48:35.257561','2024-11-24 21:36:15.271217','blog_images/Screenshot_2023-12-05_185902.png','wqd',1),(4,'the 4th Blog','<p>this has multiple tags</p>','2024-11-24 10:51:21.141900','2024-11-24 21:36:05.478388','blog_images/Screenshot_2024-11-10_161407.png','op',1),(5,'Blog post3','<p>This is the content of blog post 3</p>','2024-11-24 16:43:02.266146','2024-11-24 21:35:55.729529','blog_images/Screenshot_2023-12-05_185922.png','asd',1);
/*!40000 ALTER TABLE `mywebsite_app_blogpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mywebsite_app_blogpost_tags`
--

DROP TABLE IF EXISTS `mywebsite_app_blogpost_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mywebsite_app_blogpost_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blogpost_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `MyWebsite_app_blogpost_tags_blogpost_id_tag_id_cc3c8045_uniq` (`blogpost_id`,`tag_id`),
  KEY `MyWebsite_app_blogpo_tag_id_566685c9_fk_MyWebsite` (`tag_id`),
  CONSTRAINT `MyWebsite_app_blogpo_blogpost_id_24f8f831_fk_MyWebsite` FOREIGN KEY (`blogpost_id`) REFERENCES `mywebsite_app_blogpost` (`id`),
  CONSTRAINT `MyWebsite_app_blogpo_tag_id_566685c9_fk_MyWebsite` FOREIGN KEY (`tag_id`) REFERENCES `mywebsite_app_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mywebsite_app_blogpost_tags`
--

LOCK TABLES `mywebsite_app_blogpost_tags` WRITE;
/*!40000 ALTER TABLE `mywebsite_app_blogpost_tags` DISABLE KEYS */;
INSERT INTO `mywebsite_app_blogpost_tags` VALUES (1,1,1),(3,2,1),(2,3,3),(4,4,1),(5,4,2),(6,5,2),(7,5,3);
/*!40000 ALTER TABLE `mywebsite_app_blogpost_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mywebsite_app_category`
--

DROP TABLE IF EXISTS `mywebsite_app_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mywebsite_app_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mywebsite_app_category`
--

LOCK TABLES `mywebsite_app_category` WRITE;
/*!40000 ALTER TABLE `mywebsite_app_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mywebsite_app_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mywebsite_app_contact`
--

DROP TABLE IF EXISTS `mywebsite_app_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mywebsite_app_contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `subject` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mywebsite_app_contact`
--

LOCK TABLES `mywebsite_app_contact` WRITE;
/*!40000 ALTER TABLE `mywebsite_app_contact` DISABLE KEYS */;
INSERT INTO `mywebsite_app_contact` VALUES (1,'nicholas','nicholas.cachia@gmail.com','test 1','ewqerw','2024-11-24 19:39:30.360873'),(3,'Nicholas cachia','nicholas.cachia@gmail.com','test 1','dffdf','2024-11-24 19:42:57.896677'),(4,'Nicholas cachia','nicholas.cachia@gmail.com','sxs','sds','2024-11-24 19:49:35.110635'),(5,'Nicholas cachia','nicholas.cachia@gmail.com','test 1','dfsdf','2024-11-24 19:52:51.574596'),(6,'alex','nicholas.cachia@gmail.com','test 1','wqwdqwd','2024-11-24 20:38:59.699494');
/*!40000 ALTER TABLE `mywebsite_app_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mywebsite_app_galleries`
--

DROP TABLE IF EXISTS `mywebsite_app_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mywebsite_app_galleries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_general_ci,
  `image` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `technologies` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mywebsite_app_galleries`
--

LOCK TABLES `mywebsite_app_galleries` WRITE;
/*!40000 ALTER TABLE `mywebsite_app_galleries` DISABLE KEYS */;
INSERT INTO `mywebsite_app_galleries` VALUES (1,'This is Gallery 1','<p>the contents</p>','gallery_images/Screenshot_2024-11-10_161407.png',NULL,'rwe'),(2,'this is Gallery 3','<p><strong>the</strong> is the<em> content</em></p>','gallery_images/Screenshot_2023-12-05_185922.png',NULL,'Django'),(3,'Gallery 4','<p>this is Gallery 4</p>','gallery_images/Screenshot_2023-12-15_075628.png',NULL,'Flask'),(4,'gallery 5','<p>this is Gallery 6</p>','gallery_images/Screenshot_2023-12-05_185838.png',NULL,'rwe');
/*!40000 ALTER TABLE `mywebsite_app_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mywebsite_app_tag`
--

DROP TABLE IF EXISTS `mywebsite_app_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mywebsite_app_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mywebsite_app_tag`
--

LOCK TABLES `mywebsite_app_tag` WRITE;
/*!40000 ALTER TABLE `mywebsite_app_tag` DISABLE KEYS */;
INSERT INTO `mywebsite_app_tag` VALUES (3,'Bootstrap'),(5,'CSS'),(2,'Django'),(1,'Flask'),(4,'Python');
/*!40000 ALTER TABLE `mywebsite_app_tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-26 21:02:59
