-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: empleados
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add empleado',7,'add_empleado'),(26,'Can change empleado',7,'change_empleado'),(27,'Can delete empleado',7,'delete_empleado'),(28,'Can view empleado',7,'view_empleado'),(29,'Can add foto',8,'add_foto'),(30,'Can change foto',8,'change_foto'),(31,'Can delete foto',8,'delete_foto'),(32,'Can view foto',8,'view_foto'),(33,'Can add experiencia',9,'add_experiencia'),(34,'Can change experiencia',9,'change_experiencia'),(35,'Can delete experiencia',9,'delete_experiencia'),(36,'Can view experiencia',9,'view_experiencia'),(37,'Can add estudio',10,'add_estudio'),(38,'Can change estudio',10,'change_estudio'),(39,'Can delete estudio',10,'delete_estudio'),(40,'Can view estudio',10,'view_estudio'),(41,'Can add dato',11,'add_dato'),(42,'Can change dato',11,'change_dato'),(43,'Can delete dato',11,'delete_dato'),(44,'Can view dato',11,'view_dato');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$z1WNp1WtKIGtY6xFH6NPal$H8IRMK5QDCJyCdF1fGT2CjZ3KMi/GWwy/vZrULD/jS0=','2022-09-13 16:40:03.015055',1,'sebas29','','','sebasmatiz99@gmail.com',1,1,'2022-09-13 14:36:28.974012'),(2,'pbkdf2_sha256$390000$qekskm2wW0UaJIrZH4ghAZ$KGDKc8Vystbqc8KfR86vODxG7GBhtBvTfu+ElV0NDr8=',NULL,0,'admin','','','',1,1,'2022-09-13 14:38:42.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,2,13),(14,2,14),(15,2,15),(16,2,16),(17,2,17),(18,2,18),(19,2,19),(20,2,20),(21,2,21),(22,2,22),(23,2,23),(24,2,24),(25,2,25),(26,2,26),(27,2,27),(28,2,28),(29,2,29),(30,2,30),(31,2,31),(32,2,32),(33,2,33),(34,2,34),(35,2,35),(36,2,36),(37,2,37),(38,2,38),(39,2,39),(40,2,40),(41,2,41),(42,2,42),(43,2,43),(44,2,44);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-09-13 14:38:43.261934','2','admin',1,'[{\"added\": {}}]',4,1),(2,'2022-09-13 14:38:52.845927','2','admin',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(3,'2022-09-13 14:39:15.828840','2','admin',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(4,'2022-09-13 14:40:05.745815','1','Armando zarsal',1,'[{\"added\": {}}]',7,1),(5,'2022-09-13 14:40:17.968462','2','Juliana Torres',1,'[{\"added\": {}}]',7,1),(6,'2022-09-13 14:40:34.406238','3','Juan Tamarindo',1,'[{\"added\": {}}]',7,1),(7,'2022-09-13 14:42:05.488490','1','Foto object (1)',1,'[{\"added\": {}}]',8,1),(8,'2022-09-13 14:42:58.357473','1','Estudio object (1)',1,'[{\"added\": {}}]',10,1),(9,'2022-09-13 14:45:37.265099','1','Dato object (1)',1,'[{\"added\": {}}]',11,1),(10,'2022-09-13 14:48:17.753142','1','Experiencia object (1)',1,'[{\"added\": {}}]',9,1),(11,'2022-09-13 15:16:23.603304','2','Estudio object (2)',1,'[{\"added\": {}}]',10,1),(12,'2022-09-13 15:17:49.626071','2','Experiencia object (2)',1,'[{\"added\": {}}]',9,1),(13,'2022-09-13 15:18:39.516492','2','Dato object (2)',1,'[{\"added\": {}}]',11,1),(14,'2022-09-13 15:20:04.643235','2','Foto object (2)',1,'[{\"added\": {}}]',8,1),(15,'2022-09-13 15:20:47.760852','1','Foto object (1)',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',8,1),(16,'2022-09-13 15:21:05.269929','3','Foto object (3)',1,'[{\"added\": {}}]',8,1),(17,'2022-09-13 15:22:00.934440','3','Dato object (3)',1,'[{\"added\": {}}]',11,1),(18,'2022-09-13 15:22:57.550930','3','Estudio object (3)',1,'[{\"added\": {}}]',10,1),(19,'2022-09-13 15:24:52.715921','3','Experiencia object (3)',1,'[{\"added\": {}}]',9,1),(20,'2022-09-13 16:25:33.203561','3','Foto object (3)',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',8,1),(21,'2022-09-13 16:26:14.380297','2','Foto object (2)',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',8,1),(22,'2022-09-13 16:27:08.680157','3','Foto object (3)',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',8,1),(23,'2022-09-13 16:27:20.163975','1','Foto object (1)',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',8,1),(24,'2022-09-13 17:25:22.507873','4','Estudio object (4)',1,'[{\"added\": {}}]',10,1),(25,'2022-09-13 17:37:10.520568','4','Marcela Ortiz',1,'[{\"added\": {}}]',7,1),(26,'2022-09-13 17:37:31.376950','4','Marcela Ortiz',3,'',7,1),(27,'2022-09-13 17:38:34.918867','5','David Gomez',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'manejo_empleados','dato'),(7,'manejo_empleados','empleado'),(10,'manejo_empleados','estudio'),(9,'manejo_empleados','experiencia'),(8,'manejo_empleados','foto'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-09-13 14:16:53.923886'),(2,'auth','0001_initial','2022-09-13 14:16:54.607143'),(3,'admin','0001_initial','2022-09-13 14:16:54.761240'),(4,'admin','0002_logentry_remove_auto_add','2022-09-13 14:16:54.781186'),(5,'admin','0003_logentry_add_action_flag_choices','2022-09-13 14:16:54.801134'),(6,'contenttypes','0002_remove_content_type_name','2022-09-13 14:16:54.934292'),(7,'auth','0002_alter_permission_name_max_length','2022-09-13 14:16:55.012084'),(8,'auth','0003_alter_user_email_max_length','2022-09-13 14:16:55.081412'),(9,'auth','0004_alter_user_username_opts','2022-09-13 14:16:55.113326'),(10,'auth','0005_alter_user_last_login_null','2022-09-13 14:16:55.199096'),(11,'auth','0006_require_contenttypes_0002','2022-09-13 14:16:55.205081'),(12,'auth','0007_alter_validators_add_error_messages','2022-09-13 14:16:55.233006'),(13,'auth','0008_alter_user_username_max_length','2022-09-13 14:16:55.303817'),(14,'auth','0009_alter_user_last_name_max_length','2022-09-13 14:16:55.476356'),(15,'auth','0010_alter_group_name_max_length','2022-09-13 14:16:55.529214'),(16,'auth','0011_update_proxy_permissions','2022-09-13 14:16:55.614984'),(17,'auth','0012_alter_user_first_name_max_length','2022-09-13 14:16:55.764586'),(18,'manejo_empleados','0001_initial','2022-09-13 14:16:56.413282'),(19,'sessions','0001_initial','2022-09-13 14:16:56.540677'),(20,'manejo_empleados','0002_alter_dato_numero_documento_alter_dato_telefono','2022-09-13 14:44:42.710063');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('oam2judlnb4jth7yrawtcnu4azl4j24k','.eJxVjDEOwyAQBP9CHaEDg4GU6f0GdHAQnEQgGbuK8vfYkouk2WJndt_M47YWv_W0-JnYlQl2-e0CxmeqB6AH1nvjsdV1mQM_FH7SzqdG6XU73b-Dgr3sawfRAmSVDIIYTUbtgjLZuMHKgYK0MkGEQTpHpHDPqAWCQTlqlwmBfb7L4Dd1:1oY8x9:nLqeTfC6hKPbuBc9hxN1iKi4mGTNMaWbfMAo5gBSe84','2022-09-27 16:40:03.019289');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manejo_empleados_dato`
--

DROP TABLE IF EXISTS `manejo_empleados_dato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manejo_empleados_dato` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `tipo_documento` varchar(100) NOT NULL,
  `numero_documento` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `tipo_sangre` varchar(10) NOT NULL,
  `empleado_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manejo_empleados_dat_empleado_id_fd7719a2_fk_manejo_em` (`empleado_id`),
  CONSTRAINT `manejo_empleados_dat_empleado_id_fd7719a2_fk_manejo_em` FOREIGN KEY (`empleado_id`) REFERENCES `manejo_empleados_empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manejo_empleados_dato`
--

LOCK TABLES `manejo_empleados_dato` WRITE;
/*!40000 ALTER TABLE `manejo_empleados_dato` DISABLE KEYS */;
INSERT INTO `manejo_empleados_dato` VALUES (1,'Armando','Zarsal','C.C','112843547758','armando@empleado.com','3207557099','0+',1),(2,'Juliana','Torres','C.C','12334656565','juliana@empleado.com','3154558009','0-',2),(3,'Juan','Tamarindo','C.C','3377457484848','juan@empleado.com','3184665021','b+',3);
/*!40000 ALTER TABLE `manejo_empleados_dato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manejo_empleados_empleado`
--

DROP TABLE IF EXISTS `manejo_empleados_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manejo_empleados_empleado` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manejo_empleados_empleado`
--

LOCK TABLES `manejo_empleados_empleado` WRITE;
/*!40000 ALTER TABLE `manejo_empleados_empleado` DISABLE KEYS */;
INSERT INTO `manejo_empleados_empleado` VALUES (1,'Armando zarsal'),(2,'Juliana Torres'),(3,'Juan Tamarindo'),(5,'David Gomez');
/*!40000 ALTER TABLE `manejo_empleados_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manejo_empleados_estudio`
--

DROP TABLE IF EXISTS `manejo_empleados_estudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manejo_empleados_estudio` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `año_est` int(11) NOT NULL,
  `mes_est` int(11) NOT NULL,
  `estudio` varchar(100) NOT NULL,
  `institucion` varchar(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `empleado_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manejo_empleados_est_empleado_id_4b163265_fk_manejo_em` (`empleado_id`),
  CONSTRAINT `manejo_empleados_est_empleado_id_4b163265_fk_manejo_em` FOREIGN KEY (`empleado_id`) REFERENCES `manejo_empleados_empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manejo_empleados_estudio`
--

LOCK TABLES `manejo_empleados_estudio` WRITE;
/*!40000 ALTER TABLE `manejo_empleados_estudio` DISABLE KEYS */;
INSERT INTO `manejo_empleados_estudio` VALUES (1,2022,11,'ingeniería electrónica','Univalle','ingeniero electrónico',1),(2,2020,6,'Administracion de empresas','UNAD','Administradora de empresas',2),(3,2018,1,'Multimedia audiovisual','ICESI','Diseñador de medios audiovisuales',3),(4,2018,12,'técnico  en instalaciones residenciales','Zena','técnico  en instalaciones residenciales',1);
/*!40000 ALTER TABLE `manejo_empleados_estudio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manejo_empleados_experiencia`
--

DROP TABLE IF EXISTS `manejo_empleados_experiencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manejo_empleados_experiencia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `año_lab` int(11) NOT NULL,
  `mes_lab` int(11) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `jefe_inmediato` varchar(100) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `responsabilidades` varchar(500) NOT NULL,
  `logros` varchar(500) NOT NULL,
  `empleado_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manejo_empleados_exp_empleado_id_264761a0_fk_manejo_em` (`empleado_id`),
  CONSTRAINT `manejo_empleados_exp_empleado_id_264761a0_fk_manejo_em` FOREIGN KEY (`empleado_id`) REFERENCES `manejo_empleados_empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manejo_empleados_experiencia`
--

LOCK TABLES `manejo_empleados_experiencia` WRITE;
/*!40000 ALTER TABLE `manejo_empleados_experiencia` DISABLE KEYS */;
INSERT INTO `manejo_empleados_experiencia` VALUES (1,2021,11,'SIIGO.SAS','Roberto Cardenas','ingeniero en jefe','supervisar todos los procesos realizados en la empresa, respecto al correcto funcionamiento de la maquinaria','Mejorar la producción de la empresa por medio del diseño de una maquina automatizada',1),(2,2021,11,'Aguacate.sas','Andres Martinez','Gerente de sucursal','Estar al frente de todos los aspectos administrativos de la empresa','Aumentar la eficiencia en los procesos administrativos',2),(3,2020,11,'youtube','Eliana Corrales','productor audiovisual','Estar al pendiente de todas las transmisiones a realizar y su contenido','Aumento de usuarios, por calidad de videos',3);
/*!40000 ALTER TABLE `manejo_empleados_experiencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manejo_empleados_foto`
--

DROP TABLE IF EXISTS `manejo_empleados_foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manejo_empleados_foto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `foto` varchar(100) NOT NULL,
  `empleado_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manejo_empleados_fot_empleado_id_fb23bf26_fk_manejo_em` (`empleado_id`),
  CONSTRAINT `manejo_empleados_fot_empleado_id_fb23bf26_fk_manejo_em` FOREIGN KEY (`empleado_id`) REFERENCES `manejo_empleados_empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manejo_empleados_foto`
--

LOCK TABLES `manejo_empleados_foto` WRITE;
/*!40000 ALTER TABLE `manejo_empleados_foto` DISABLE KEYS */;
INSERT INTO `manejo_empleados_foto` VALUES (1,'retrato-estudio-hombre-moreno-confianza_1187-5799.jpg',1),(2,'retrato-mujer-casual-sonriente_171337-4168_Vu7TFHc.jpg',2),(3,'guapo-exitoso-hombre-negocios-sonriente_176420-19024.jpg',3);
/*!40000 ALTER TABLE `manejo_empleados_foto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-13 13:35:57
