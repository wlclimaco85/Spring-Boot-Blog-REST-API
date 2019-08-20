-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: blogapi
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `street` varchar(255) DEFAULT NULL,
  `suite` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `geo_id` bigint(19) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(19) unsigned DEFAULT NULL,
  `updated_by` bigint(19) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_geo` (`geo_id`),
  CONSTRAINT `fk_geo` FOREIGN KEY (`geo_id`) REFERENCES `geo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albums` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `user_id` bigint(19) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(19) unsigned DEFAULT NULL,
  `updated_by` bigint(19) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_album` (`user_id`),
  CONSTRAINT `fk_user_album` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(19) unsigned DEFAULT NULL,
  `updated_by` bigint(19) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (2,'aspernaturaccusantium','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(3,'temporeipsum','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(4,'sitqui','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(5,'nihilminima','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(6,'doloresdolor','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(7,'consequaturquia','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(8,'recusandaeenim','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(9,'illosed','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(10,'iureet','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(11,'iurepraesentium','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(12,'consequunturtenetur','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(13,'errortempore','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(14,'perspiciatisaliquam','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(15,'nihilofficiis','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(16,'temporibussapiente','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(17,'estexpedita','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(18,'voluptasqui','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(19,'magniet','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(20,'nostrumporro','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1),(21,'voluptasquisquam','2019-08-18 13:32:06','2019-08-18 13:32:06',1,1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_id` bigint(19) unsigned DEFAULT NULL,
  `user_id` bigint(19) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(19) unsigned NOT NULL,
  `updated_by` bigint(19) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comment_post` (`post_id`),
  KEY `fk_comment_user` (`user_id`),
  CONSTRAINT `fk_comment_post` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `catch_phrase` varchar(255) DEFAULT NULL,
  `bs` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(19) unsigned DEFAULT NULL,
  `updated_by` bigint(19) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo`
--

DROP TABLE IF EXISTS `geo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(19) unsigned DEFAULT NULL,
  `updated_by` bigint(19) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo`
--

LOCK TABLES `geo` WRITE;
/*!40000 ALTER TABLE `geo` DISABLE KEYS */;
/*!40000 ALTER TABLE `geo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumbnail_url` varchar(255) NOT NULL,
  `album_id` bigint(19) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(19) unsigned DEFAULT NULL,
  `updated_by` bigint(19) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_album` (`album_id`),
  CONSTRAINT `fk_album` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tag`
--

DROP TABLE IF EXISTS `post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tag` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(19) unsigned NOT NULL,
  `tag_id` bigint(19) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_posttag_post_id` (`post_id`),
  KEY `fk_posttag_tag_id` (`tag_id`),
  CONSTRAINT `fk_posttag_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `fk_posttag_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tag`
--

LOCK TABLES `post_tag` WRITE;
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` VALUES (11,13,19),(12,12,21),(13,17,5),(14,16,21),(15,13,11),(16,16,20),(17,16,19),(18,15,19),(19,13,10),(20,17,18),(21,17,13),(22,15,21),(23,13,20),(24,15,12),(25,15,13),(26,15,10),(27,15,5),(28,15,14),(29,15,3),(30,15,7),(31,12,20),(32,14,3),(33,14,5),(34,12,3),(35,12,19),(36,12,9),(37,18,21),(38,18,3),(39,18,20),(40,18,9),(41,18,18),(42,19,20),(43,20,20),(44,21,21),(45,20,3),(46,23,14),(47,20,5),(48,22,21),(49,20,18),(50,21,13),(51,21,5),(52,21,11),(53,21,7),(54,21,12),(55,23,5),(56,23,10),(57,22,3),(58,19,3),(59,24,13),(60,24,19),(61,24,21),(62,24,20),(63,24,5),(64,25,21),(65,26,5),(66,26,13),(67,25,3),(68,25,6),(69,26,20),(70,25,18),(71,25,7),(72,25,20),(73,27,18),(74,27,20),(75,27,17),(76,27,5),(77,27,11),(78,27,21),(79,29,17),(80,29,19),(81,28,6),(82,28,9),(83,28,19),(84,28,17),(85,31,3),(86,33,12),(87,30,3),(88,33,3),(89,31,21),(90,31,19),(91,33,20),(92,33,18),(93,33,7),(94,33,9),(95,30,6),(96,33,10),(97,32,10),(98,30,7),(99,32,20),(100,30,20),(101,34,6),(102,32,19),(103,32,7),(104,34,18),(105,35,5),(106,35,3),(107,35,10),(108,35,7),(109,35,18),(110,36,18),(111,37,9),(112,36,19),(113,36,6),(114,36,21),(115,36,13),(116,37,6),(117,37,11),(118,37,21),(119,38,15),(120,39,21),(121,39,19),(122,38,11),(123,40,21),(124,40,3),(125,40,20),(126,40,9),(127,41,21),(128,41,20),(129,42,21),(130,42,10),(131,42,20),(132,43,12),(133,43,20),(134,44,14),(135,44,11),(136,44,18),(137,44,5),(138,44,21),(139,44,17),(140,44,3),(141,44,20),(142,45,3),(143,45,6),(144,45,12),(145,45,20),(146,45,15),(147,45,18),(148,45,14),(149,45,13),(150,46,14),(151,46,7),(152,46,11),(153,46,17),(154,47,21),(155,47,19),(156,48,6),(157,48,21),(158,48,7),(159,48,3),(160,47,5),(161,48,18),(162,49,6),(163,47,20),(164,47,3),(165,49,19),(166,47,6),(167,50,3),(168,50,6),(169,50,5),(170,50,10),(171,50,20),(172,50,9),(173,51,18),(174,51,6),(175,51,7),(176,51,20),(177,51,10),(178,52,13),(179,52,21),(180,52,5),(181,52,20),(182,52,17),(183,53,20),(184,53,5),(185,54,20),(186,54,11),(187,55,3),(188,55,5),(189,56,19),(190,56,10),(191,56,13),(192,56,9),(193,56,6),(194,57,18),(195,60,3),(196,59,3),(197,57,20),(198,58,9),(199,58,20),(200,59,19),(201,58,21),(202,59,5),(203,59,20),(204,57,6),(205,59,17),(206,59,15),(207,60,6),(208,59,18),(209,59,9),(210,59,6),(211,60,18),(212,60,20),(213,60,7),(214,60,10),(215,61,13),(216,61,5);
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `user_id` bigint(19) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(19) unsigned DEFAULT NULL,
  `updated_by` bigint(19) unsigned DEFAULT NULL,
  `category_id` bigint(19) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_post` (`user_id`),
  KEY `fk_category_post_idx` (`category_id`),
  CONSTRAINT `fk_category_post` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_post` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (12,'Officiis reprehenderit ipsam id voluptates qui non sed aut blanditiis.','Officia quos aspernatur qui eius animi quae reprehenderit explicabo. Qui id dolorem molestiae dolores inventore iure enim. Tempore nobis illo.Quidem temporibus voluptatibus quam optio nam itaque sed. Ut enim autem. Est sit iusto laudantium explicabo minus totam qui quod. Non repellat non tempora atque qui quis voluptatum. Minus assumenda impedit quo.Sequi perferendis quam voluptas iure qui minus natus. Ullam veritatis magni.Quo porro in id soluta harum est alias et atque. Odio aut quo minus.',1,'2019-08-18 14:51:22','2019-08-18 14:51:22',1,1,21),(13,'Praesentium asperiores qui facere.','Atque officiis iure autem porro. Aut fugiat harum autem pariatur qui qui voluptatem alias vitae. Optio debitis nisi cupiditate necessitatibus. Cum officia consectetur possimus ut. Accusamus at est. Aut libero qui sed.Ex vel repellat perspiciatis. Aut repellat eaque dolorum fugit. Nulla perferendis eveniet et voluptatibus iusto id et. Odio veniam vero et. Qui ut sed voluptas modi tempore.Facere repudiandae cupiditate nam incidunt omnis maiores debitis. Molestiae est odit delectus voluptatem quas est aut porro. Dolorem accusamus minus asperiores voluptate enim quod tempore aliquid. Aut aliquam quia atque et aut ut similique in ut. Ut ut quo accusantium. Rerum autem voluptatem officiis nesciunt doloremque qui.Alias et sed libero quas quibusdam aut. Illo at iusto et et.',1,'2019-08-18 14:51:22','2019-08-18 14:51:22',1,1,9),(14,'Odio ut est omnis.','Quibusdam nam voluptatibus nihil eum itaque esse cumque iusto suscipit. Incidunt esse ducimus.Dolor mollitia voluptas quia deserunt vitae voluptatibus officiis. Et qui odio nisi corrupti animi asperiores. Dolor aut cumque.Error est dignissimos. Atque et ab animi eligendi pariatur non quod magni. Aliquam sit consequatur sint impedit itaque et et numquam. Facere a cum a quo. Quia qui quo in aliquam ut et. Voluptas veniam quas id.Voluptas consequuntur suscipit mollitia eum aut commodi neque dolores corrupti. Enim consequuntur perspiciatis et et fuga soluta repellendus id nemo. Sed amet voluptatem dolor aut vel nam distinctio sequi. Et blanditiis et aut quia odio. Ut animi quia et est.',1,'2019-08-18 14:51:22','2019-08-18 14:51:22',1,1,7),(15,'Velit explicabo necessitatibus repellat.','Beatae omnis expedita voluptate qui nemo porro quo hic quam. Esse magni et et vitae laborum id voluptatem.Sed voluptas aperiam quia doloremque dolorem. Aut dolorem iste voluptatem aliquid blanditiis nesciunt suscipit. Harum harum illum quae et enim. Molestiae ab excepturi et harum nisi porro illo veniam.Dolor quia repellendus. Exercitationem a voluptatem sed nam sapiente porro ex qui sapiente. Ducimus qui iure praesentium accusamus qui.Assumenda hic soluta repellat eum dolore nobis ratione illum. Numquam quas quae fugit deserunt voluptatem illo nulla est dolor. Ipsam dolore molestiae perspiciatis animi repudiandae fugiat accusamus.',1,'2019-08-18 14:51:22','2019-08-18 14:51:22',1,1,14),(16,'Ut dolor quas asperiores distinctio quia et.','Iusto voluptatem aspernatur tempore cumque sequi. Voluptas laborum nulla. Optio quam enim quasi rem eveniet pariatur quis. Ratione voluptas nihil aliquid commodi tempore minima velit.Explicabo voluptas quibusdam repellendus aut molestias eligendi. Non nobis porro quas aut soluta debitis modi labore. Odit ducimus sunt et et. Numquam aspernatur qui quae est excepturi laboriosam est.Aliquam doloremque aut fuga in et mollitia voluptatem unde. Ut aut sit rerum iusto quae vel. Excepturi architecto soluta et sit. Perspiciatis omnis modi.Vel dolorem aut ullam non dolores aut non. Cum modi aspernatur officia labore est eveniet. Quisquam et culpa. Sed explicabo repellendus temporibus vero neque eos voluptatem ipsam. Ducimus assumenda qui distinctio aut nihil a fuga.',1,'2019-08-18 14:51:22','2019-08-18 14:51:22',1,1,5),(17,'Necessitatibus explicabo quis architecto maiores praesentium ut.','Harum labore non qui eveniet eligendi error. Incidunt ducimus vel eos minus sapiente ea eos. Facilis pariatur unde rerum. Fuga officia ut et nam. Sequi iste doloribus iusto quae.Temporibus adipisci dolorem voluptas velit sed recusandae praesentium esse. At illo consequatur qui error dolores maiores. Cumque ut dolores qui aperiam ipsam repellendus eligendi laboriosam et. Recusandae nam quo facilis excepturi. Quos omnis et.Non quia ipsum consequuntur est voluptatem reiciendis. Impedit omnis asperiores commodi est beatae fuga totam nihil.Omnis dolor quia quo quod corrupti. Dolores est voluptates. Optio autem sunt aut enim. Fugiat et sapiente. Adipisci voluptas reiciendis minus earum consequatur sit quas enim nam. Ut et hic nam modi aut ut.',1,'2019-08-18 14:51:22','2019-08-18 14:51:22',1,1,8),(18,'Et est voluptatem incidunt sequi unde adipisci illo.','Repellat reprehenderit suscipit consectetur consequatur. Consequatur nihil non fugit.Eveniet quas et quia. Rerum enim totam nobis dolore et ipsam eius et. Eum saepe iste quia et minus ullam hic aut eos.Eveniet consectetur illum ratione est et voluptas dolores. Ut nobis ratione et placeat delectus dolor quae nesciunt omnis. Cumque porro voluptatum quia et et. Minus ea harum aliquam aut quia quibusdam et est. Veritatis quod numquam numquam molestiae eius eum placeat.Maxime excepturi rerum provident autem. A totam hic mollitia. Quis perspiciatis consequatur ad consequatur inventore et. Non in enim praesentium voluptatem eum non. Vel sint debitis et voluptatem magnam. Voluptates consequatur est dolor similique laudantium.',1,'2019-08-18 14:51:22','2019-08-18 14:51:22',1,1,19),(19,'Natus molestiae modi.','Tempora laborum ut enim blanditiis molestias. Dolorum quia quia dolore dolor hic voluptatum.Eum sit ducimus alias harum. Eum non perspiciatis quam iure culpa sunt eos saepe. Molestiae eveniet ut ducimus vero nemo qui ut. Est esse repellat similique rem beatae.Odio omnis eum iste magni. Facere nostrum voluptatibus cum animi perspiciatis ut repellendus recusandae. Soluta delectus aliquam sequi. Id sed pariatur autem hic recusandae ea consequuntur.Doloremque voluptas repudiandae. Sapiente quo asperiores vel id. Ut maiores dolor qui enim velit. Deserunt voluptatem expedita in perferendis quia nostrum. Voluptates dignissimos exercitationem iure occaecati perspiciatis veritatis non. Ex accusamus repudiandae incidunt laudantium qui fugiat sed velit quae.',1,'2019-08-18 14:59:13','2019-08-18 14:59:13',1,1,3),(20,'Dolor at adipisci.','Dolorum dolorem error est recusandae asperiores iste voluptatem a. Sit vel dolorum nobis quaerat aut sed nemo similique amet. Odit ut velit quia. Voluptatem qui maiores perspiciatis non culpa nulla. Nihil voluptatem et quod expedita deleniti ratione sit.Magnam cumque voluptates voluptatum veniam tempora qui. Magnam et dolor impedit necessitatibus aspernatur suscipit animi adipisci reiciendis. Ullam dicta exercitationem aperiam exercitationem voluptas esse. Et ut voluptas in iusto qui.Aut enim eos. In cumque quidem blanditiis et. Autem possimus facilis qui non assumenda necessitatibus autem facilis veritatis.Eius ad voluptatem at omnis quasi ratione eaque. At molestiae dolores sint earum est.',1,'2019-08-18 14:59:13','2019-08-18 14:59:13',1,1,5),(21,'Sint necessitatibus earum voluptas quidem quibusdam facilis.','Et aut reprehenderit nobis consequatur. Omnis voluptatibus repudiandae quam voluptatibus aut animi eaque. Dignissimos est ullam magni. Sit nulla iste dicta molestiae. Culpa a ducimus ut nihil dolorum sint voluptatem. Consectetur inventore quaerat veniam et modi inventore itaque.Et voluptas est et voluptatem molestias voluptatem maiores consequatur. Quos nam cumque. Ut doloribus cum consectetur corrupti exercitationem. Explicabo consequuntur quod eligendi autem est in. Dolor sapiente deserunt est dicta excepturi magnam amet. Quis labore perspiciatis non rem aliquid nihil.Repellendus consequuntur nisi dolores. Distinctio aspernatur omnis fugiat consequuntur. Vel deleniti laudantium amet quo molestias omnis aut. Perspiciatis rerum amet eligendi eum.Qui vitae velit quibusdam non itaque labore amet. Recusandae est quis. Et eaque autem. Et quae adipisci pariatur. Fuga fugiat reprehenderit. Maiores ut omnis quos doloremque maiores.',1,'2019-08-18 14:59:13','2019-08-18 14:59:13',1,1,2),(22,'Ea tempore similique.','Dolore eum quod at animi qui rerum voluptas quo blanditiis. Sit fugiat impedit est maiores delectus inventore amet sit. Ipsa deleniti iure ipsam cupiditate est voluptatem odit non. Autem esse molestiae omnis doloribus autem est omnis ut.Possimus et provident. Deserunt iusto est harum. Dignissimos sed sunt consequatur eaque dignissimos asperiores consequatur.Aut et laborum dolorum voluptas voluptate voluptatum necessitatibus illum minus. Quaerat voluptate numquam voluptatem consequatur ab rerum. Ab quod ut commodi vel tempora. Nesciunt itaque sunt id ipsum laborum tempore quia non eveniet.Molestiae aspernatur veritatis tempore ut. Distinctio ut eos asperiores eius quibusdam dolorum voluptatem. Itaque quia suscipit perferendis voluptas aperiam non illo unde. Eum repellat et qui libero sunt repellendus.',1,'2019-08-18 14:59:13','2019-08-18 14:59:13',1,1,2),(23,'Sint ut magnam.','Aut numquam culpa dolorum. Sed autem omnis aut et sed repellat. Voluptatem et aut culpa dolores suscipit perferendis. Doloremque et error sed. Atque eius voluptate incidunt repellendus eligendi aut.Harum animi quo sed corrupti corporis magnam. Rerum quae et atque. Sunt est ut qui ea voluptatibus ut id.Necessitatibus minus ea perspiciatis nihil tempore. Quia qui hic labore sit nemo quasi aut dignissimos.Sunt qui unde. Assumenda dolorem ullam illum optio deserunt consequatur aut quos. Qui rerum similique exercitationem eaque perferendis iusto voluptates voluptas. Itaque cumque quos et iste in. Saepe sit eos. Culpa quia quas.',1,'2019-08-18 14:59:13','2019-08-18 14:59:13',1,1,16),(24,'Temporibus deserunt quisquam atque aut.','Sapiente non deserunt ullam maiores enim. Nulla soluta rem beatae.Repellendus dolorum adipisci ea est enim beatae sunt voluptas amet. Molestias quasi minus ducimus quis eos temporibus iste voluptatibus. Velit pariatur dolorem non eius. Labore quos aspernatur quae reprehenderit rerum autem quam est explicabo. Ea quam ab amet assumenda et enim.Voluptates est rerum. Culpa enim rerum quas repellat voluptatem.Quo earum tempore enim qui dolorum eligendi minima. Aut id animi ut officia. Atque voluptate soluta eos omnis illo earum. Sit alias et et et ullam.',1,'2019-08-18 14:59:13','2019-08-18 14:59:13',1,1,10),(25,'Veniam amet quas qui distinctio itaque tenetur.','Omnis autem voluptate accusantium voluptatum commodi et vel. Tempore necessitatibus quasi dolor rerum modi itaque. Voluptatem unde voluptas qui eius explicabo quaerat quasi amet sint. Voluptas nulla quo nisi culpa nulla culpa iusto voluptas. Voluptatem itaque sunt consequatur sint cumque atque at neque.Laborum dolores et corrupti facilis qui cum aspernatur. Sit harum aliquid voluptatem quia possimus expedita et saepe. Officiis quas optio id.Omnis doloribus amet pariatur labore. Eveniet mollitia soluta aspernatur nulla. Officiis molestias similique velit sed et.Sit id possimus ut perferendis rerum optio corrupti mollitia. Possimus tempora adipisci. Vero placeat omnis rerum rem recusandae accusantium omnis amet aspernatur. Explicabo sit similique facilis omnis quaerat. Repellat voluptas et culpa quisquam et. Est et molestias tempora nesciunt rerum itaque iure.',1,'2019-08-18 14:59:13','2019-08-18 14:59:13',1,1,8),(26,'Ut et ea harum omnis est ullam est aut.','Nostrum adipisci illo omnis praesentium natus accusamus quisquam. Consequatur provident aliquid aperiam nobis quis. Odit eaque officia corporis incidunt pariatur aut earum et.Est itaque molestias asperiores ipsa dolorum odio molestiae. Ducimus quibusdam voluptatem sequi eum id sed natus. Sit velit architecto voluptas dolorem et itaque. Et quaerat consequatur excepturi.Vel sed sint consequatur nihil quis dignissimos quod quaerat neque. Omnis ipsam illum ipsum. Provident consequatur et sint sit deleniti dolores quos. Nostrum tenetur optio velit.Sit tempora id. Minus aspernatur aut eveniet est ratione voluptatum et.',1,'2019-08-18 14:59:13','2019-08-18 14:59:13',1,1,7),(27,'Earum repellat voluptatibus voluptatum qui adipisci dolorem fuga perspiciatis tempore.','In tempora pariatur ut dolor modi placeat aperiam ut. Suscipit omnis non beatae aliquid praesentium itaque quod voluptatem numquam. Cupiditate quos alias aspernatur exercitationem sunt dolorem voluptas est. Fugiat ut omnis sed sunt perspiciatis quis ut voluptate.Itaque unde rerum unde. Commodi qui ipsa dolorem provident officiis consequatur omnis. Odit non temporibus sed laboriosam perspiciatis laboriosam omnis. Perspiciatis et explicabo hic at qui voluptatem. Iste quaerat officia fugiat neque repellendus ut error.Omnis qui rerum at quia fugit quae. Optio dolorem aspernatur alias inventore. Dolorem sequi libero est tenetur quaerat repellendus quisquam eum et. Autem consectetur quasi porro dolor vitae sed. Assumenda quisquam similique et.Repellendus non hic maiores omnis fugiat nulla id illum. Quisquam commodi provident atque incidunt.',1,'2019-08-18 14:59:29','2019-08-18 14:59:29',1,1,20),(28,'Inventore beatae aut magni sed magnam itaque officia.','Dolore quis autem perspiciatis hic ea accusantium. Et iste ut. Et aliquam quo quod quas qui. Tempore est dolor omnis. Asperiores veritatis sapiente sint et atque necessitatibus tenetur recusandae. Et harum porro suscipit quasi et consequatur excepturi.Aspernatur animi voluptas earum non. Sunt in eos quasi iure modi recusandae consequuntur quod. Aliquid iusto et.Sit architecto eveniet blanditiis similique velit sapiente. Error rem odit quasi qui corporis quasi id modi. Quibusdam quaerat qui sunt. Ex ullam id et voluptate. Tenetur ea excepturi veritatis ut odit. Voluptas architecto excepturi.Qui aspernatur repudiandae omnis facilis non. Nemo non incidunt perferendis omnis ea distinctio. Est corporis omnis laboriosam tempore officiis consequuntur officiis. Numquam culpa quae doloremque molestiae est rerum. Est voluptatibus aut pariatur officiis veritatis quia numquam fuga voluptate.',1,'2019-08-18 14:59:29','2019-08-18 14:59:29',1,1,13),(29,'A nemo et.','Neque vel dolores perferendis corrupti et consequatur repellat animi totam. Amet dignissimos vero. Quo recusandae aut voluptatem culpa ex placeat hic dolorem asperiores. Recusandae accusantium cupiditate. Et omnis nemo.Qui et expedita ipsam qui eum a est omnis magni. Expedita magnam mollitia dolorem porro hic beatae fuga. Quasi error repudiandae ea accusamus est modi exercitationem temporibus. Iste non repellendus aperiam provident aliquid.Ducimus officiis ullam consequatur deleniti suscipit explicabo doloremque. Rem unde optio quo dolorem. Asperiores et earum quasi id. Temporibus pariatur non. Veniam iusto ut sint autem labore eos sint. Minus nisi qui voluptas officia ut enim.Et voluptas qui aliquid ut nulla nesciunt omnis sequi. Qui est reiciendis vitae similique ut facere exercitationem voluptas harum. Aliquid repellendus nemo sit rerum rerum qui ullam officiis asperiores. At odit doloribus reprehenderit fugiat enim dolores animi.',1,'2019-08-18 14:59:29','2019-08-18 14:59:29',1,1,14),(30,'Quisquam temporibus ut sint qui deserunt.','Dolor rerum in sit aliquid molestiae. Veritatis in autem culpa quod atque eos. Odio sit quisquam. Possimus ut consequatur. Ea sequi et quia ut.Id molestiae veritatis rerum id. Et odit non ratione amet sint reprehenderit natus suscipit.Eum quae sunt occaecati ipsa quo non qui consequatur. Laborum quis quaerat commodi iure tempora commodi. Non unde itaque sunt. Reiciendis eos praesentium cum quod qui non harum ipsam odio. Ullam quia perspiciatis illum non velit et natus debitis ut. Nihil incidunt minima reiciendis nulla dolorum consequatur ut est.Illum dolor at et sunt consequatur. Placeat doloribus minima. Qui unde architecto. Molestiae sint dolorum.',1,'2019-08-18 14:59:29','2019-08-18 14:59:29',1,1,9),(31,'Non qui qui sunt doloribus et voluptatem in dolorem.','Praesentium ratione dolorum atque aut eos expedita dicta. Consequuntur fugit reprehenderit non dolor qui consequatur doloribus. Sed voluptates nam est. Quia aut aut sapiente iure. Aut ipsam soluta aliquam quo ea. Et omnis in et saepe consequuntur suscipit.Magnam esse ad id. Reprehenderit eos a quo consequuntur sint sit repudiandae. Quia expedita dignissimos nam molestias. Consequatur aut ratione adipisci nemo.Amet incidunt voluptatem incidunt blanditiis est sint voluptas eligendi. Eveniet architecto molestias consequatur pariatur dolor aspernatur deserunt laborum omnis. Aut doloribus ratione qui ut dolorem dolorem. Sunt aliquid totam explicabo quibusdam repudiandae et quis tenetur illo.Libero tempore omnis. Illum aut dolorem maiores quaerat cum. Voluptates accusantium sed eum eligendi. Voluptate corrupti omnis consequatur at. Veritatis recusandae placeat quaerat similique quia.',1,'2019-08-18 14:59:29','2019-08-18 14:59:29',1,1,18),(32,'Voluptatum alias sint sed animi asperiores qui quia saepe.','Blanditiis maxime aperiam voluptas eos sed qui ut rerum odio. Ducimus consequuntur non. Reiciendis deserunt voluptatem voluptas aut aut illo magni expedita. Pariatur libero repudiandae numquam qui enim saepe voluptas ut dolore.Possimus vel laudantium et rerum est velit. Quam sunt corrupti ut ipsa blanditiis vel laboriosam. Sint ipsa provident. Non et magni ea. Id cupiditate voluptatum autem esse voluptatem.Quia quae iure quisquam. Quia autem corporis odio exercitationem facere. Beatae sint ut molestias voluptatem est molestiae aut suscipit nihil. Voluptatem illo aut.Sed eum quisquam ut ea quod ab quae. Nobis voluptas rerum repellendus et.',1,'2019-08-18 14:59:29','2019-08-18 14:59:29',1,1,15),(33,'Rerum blanditiis aliquid dolores et iste.','Voluptate aut at quo dolorum alias veniam quo. Labore fugit delectus magnam ullam doloremque et ut. Velit in sunt impedit natus aliquam aliquam ipsum beatae voluptas. Distinctio consectetur inventore consequuntur. Reiciendis cum et aut.Qui deleniti quam et officia repudiandae excepturi enim consequatur qui. Illum molestiae impedit pariatur veniam beatae sit eos quis. Ipsam aspernatur quo dolorem qui molestiae perspiciatis. Ipsum hic error quis corrupti explicabo omnis quaerat. Aperiam dolorum qui vero. Voluptatem quod soluta velit.Aliquid recusandae maiores. In rerum at eos consequatur optio sit possimus et doloremque. Quia distinctio et et. Mollitia aut quia. Et debitis qui quasi quis impedit quis vitae vero.Accusantium ducimus dolores eaque ut ipsum. Deleniti eius soluta occaecati et est in dicta aut consequatur. Id nemo doloribus. Qui repudiandae voluptate corporis autem et ad dolor. Voluptates fuga est et sit reprehenderit blanditiis sunt. Dolor debitis ut quisquam facilis a.',1,'2019-08-18 14:59:29','2019-08-18 14:59:29',1,1,20),(34,'Dolores illum nulla rerum ullam enim mollitia.','Eaque labore illum et rerum. Sed ex sunt minima earum corporis voluptatem suscipit ducimus necessitatibus. Beatae quo nihil aut voluptatibus. Dolor et et enim accusantium aut voluptatem dicta atque assumenda.Vero assumenda aliquid corporis voluptates quae. Omnis totam omnis sunt ut. Et cum vero occaecati et totam odio dolore ex. Earum velit dolor ipsum ducimus in delectus magni aperiam beatae.Eos officiis optio quam qui. Quo illum exercitationem facilis provident molestias sit quisquam cumque porro. Id aperiam exercitationem et facilis dolorem libero. Sed iure quo vel omnis culpa ex et.Cupiditate impedit maiores libero quos. Ut culpa veniam animi commodi et sit reiciendis. Deserunt omnis iusto id placeat perspiciatis nihil ducimus distinctio.',1,'2019-08-18 14:59:29','2019-08-18 14:59:29',1,1,3),(35,'Molestiae consequatur consectetur recusandae ut eum.','Expedita voluptas nihil ratione eveniet et. Corporis nesciunt quasi qui natus. In enim pariatur molestias natus similique autem quibusdam. Qui quia perferendis sit eius. Reprehenderit ut quia ipsam dolorum quia ea. Similique vel ab libero sunt quia et et qui sit.Cumque est nobis vero sit. Omnis occaecati sapiente delectus hic facere eligendi autem cumque.Sapiente iusto incidunt sunt omnis aut. Esse maiores omnis repellat illum in et alias nobis. Aut blanditiis aut reiciendis eum eveniet nemo rerum exercitationem consectetur. Odit sit doloremque possimus doloribus minus nobis molestias laborum harum.Reiciendis dolorum aut ea nam magnam illum et quibusdam. Quibusdam hic ut. Similique aut alias accusantium non provident sunt neque. Exercitationem quo harum exercitationem laborum facere voluptatem id.',1,'2019-08-18 14:59:29','2019-08-18 14:59:29',1,1,21),(36,'Et illum non repellendus voluptas ullam ut neque doloremque.','Sed modi voluptatibus. Voluptates ipsam magni. Fuga suscipit aut ipsa.Sequi sunt et. Dicta modi est dolor aut assumenda commodi nobis qui animi.Quo quaerat eos illum quibusdam. Sed dignissimos error porro quaerat culpa et officia blanditiis. Temporibus perspiciatis ad laboriosam voluptatem sed modi voluptatum. Fugiat commodi unde animi aut maiores dolore laborum reiciendis aut. Laborum enim dolorem omnis nemo.Odit sapiente explicabo enim nemo repellendus delectus inventore. Eaque consectetur omnis doloribus ducimus animi. Sunt alias consequatur odit. Qui ut voluptatem aut numquam reprehenderit. Excepturi qui saepe at est dolores atque. Aliquid quia ipsum ut aut sit beatae a voluptates.',1,'2019-08-18 15:00:55','2019-08-18 15:00:55',1,1,17),(37,'Dolor esse hic accusantium illum quam numquam.','Recusandae consequuntur est sapiente officia quod aliquam architecto quas reiciendis. Possimus sed illo excepturi. Repudiandae tenetur blanditiis nisi.Dolores distinctio et voluptatem et magni aut vel saepe. Sit nihil illo. Et rerum aperiam dolore vero tempora.At facilis totam. Ea aliquid eligendi corporis ratione.Dolores natus consequuntur molestiae quo et. Maxime error voluptas et inventore aut hic. Quo impedit hic. Voluptatem molestiae quis explicabo et illo quia vero eum et.',1,'2019-08-18 15:00:56','2019-08-18 15:00:56',1,1,4),(38,'Distinctio aut recusandae odio officia quidem omnis voluptatem.','Quis est officiis. Sed enim nostrum explicabo quos quo dicta magni debitis. Laborum aut molestiae harum dicta commodi quae ab quia. Nihil voluptas iste eos enim corporis ut.Voluptatem voluptatem et quidem eligendi consequatur quaerat et. In odit suscipit nesciunt corrupti. Quo quasi aut distinctio praesentium dolores et deleniti libero sed. Ea et eaque possimus ut labore dolorem.Dolore voluptas pariatur reiciendis consequatur quia enim neque ipsum. Quam consequatur in ducimus. Aperiam voluptas ipsam aut. Magnam aliquam qui iure veritatis tempora non aut qui nemo.Modi est quia optio veniam recusandae in ipsum quos. Omnis atque in fugiat id fuga maiores repellat quibusdam. Saepe fuga rem et qui in voluptatem eveniet. Itaque ipsa quae dolores ut sapiente excepturi inventore. Quo ipsum quibusdam enim assumenda quia. Cumque ipsa repudiandae ipsum aliquam.',1,'2019-08-18 15:00:56','2019-08-18 15:00:56',1,1,13),(39,'Rerum sunt non.','Et aut repudiandae sed. Tempora autem velit vero.Nihil quod a dolorum sint corporis consequuntur voluptatibus rerum. Reprehenderit animi ex sit explicabo.Nam dolorem voluptates. Veniam et ab exercitationem. Necessitatibus praesentium iure amet sed ipsa dignissimos. Ullam id nisi omnis architecto voluptatem laborum natus.Repudiandae autem vel sint ut ea adipisci nulla. Rem accusantium non perspiciatis dolorem consequatur laudantium ratione sint.',1,'2019-08-18 15:00:56','2019-08-18 15:00:56',1,1,7),(40,'Quam distinctio voluptatem excepturi expedita accusantium incidunt eum odit.','Est eum eligendi enim sit sunt libero. Error unde natus aspernatur repellat. Voluptatem et et. Alias ipsum vel sunt a aut modi maxime modi.Non iusto beatae facilis recusandae. Repellendus eum nihil quae expedita odio. Cumque iste suscipit voluptatem voluptas id. Occaecati expedita nobis et quod quia beatae. Omnis commodi esse ut velit laudantium. Dolor odio molestias reiciendis iusto dolor eius architecto dicta.Dolorum dolorem dignissimos. Accusamus ut ut soluta illo aut autem maxime animi. Harum porro accusantium ut itaque sit soluta. Maiores natus saepe. Ullam ut id reprehenderit iure nesciunt omnis ea. Modi est quia a veniam aliquid magni aperiam.Est sit ut sit facere eaque consectetur doloribus a. Veritatis alias amet. Nemo magnam ut a incidunt rerum illum vitae et explicabo. Quasi non veritatis autem animi blanditiis blanditiis. Occaecati placeat maxime nesciunt temporibus. Minima sed libero quia ut et ratione maxime fugiat aspernatur.',1,'2019-08-18 15:00:57','2019-08-18 15:00:57',1,1,21),(41,'Minus voluptas veritatis.','Rerum saepe error et in beatae magnam sequi fuga mollitia. Ipsam quos at perferendis hic soluta natus harum unde.Eum atque modi iste hic molestias. Quae quia ut omnis assumenda sapiente. Sit non amet qui culpa nesciunt at laboriosam laboriosam. Accusamus odit perferendis. Voluptatem sint praesentium ducimus et culpa autem exercitationem ut.Id tenetur molestiae cumque quod blanditiis est sequi atque et. Non dicta fugiat error molestias minima. Assumenda mollitia ea dolores. Quia sit ipsa consequatur nulla non eaque magni exercitationem tempora. Repellat quisquam et sequi necessitatibus nisi dolores.Praesentium odio ullam numquam molestiae ratione animi. Sit nisi dolor dolores. Ut suscipit quo error.',1,'2019-08-18 15:00:57','2019-08-18 15:00:57',1,1,10),(42,'Recusandae eaque et aut ducimus est aliquid aliquid sunt delectus.','Esse quo veniam maiores dolores tenetur. Fugit consequuntur sint. Quod voluptas similique iure.Et et tempore in ullam. Asperiores accusamus deserunt qui qui ipsam adipisci nihil itaque et. Rerum nobis eum expedita cupiditate. Ad eligendi ullam repellendus totam consequatur id sunt ratione. Et quod maxime ipsum eum iusto neque unde porro vel.Saepe nihil quo totam possimus enim laboriosam. Sed ut a. Consequuntur blanditiis sit et. Sit ut rerum. Eveniet dolorem vitae odio ipsam debitis neque.Harum quis magnam dolor optio. Earum a rem animi.',1,'2019-08-18 15:00:57','2019-08-18 15:00:57',1,1,11),(43,'Magni quae consequatur a ea et qui eligendi odio et.','Qui non ut et ex dolorem unde enim voluptatum dolores. Sed ad est. Et eius ut.Asperiores pariatur laborum. Voluptatem possimus vel. Omnis illo deserunt ut. Quod numquam sunt est placeat. Est odio consequuntur. Error eum esse voluptate sit enim quae.Voluptatem vel eos ducimus sed omnis est non velit. Quas magni adipisci id consequuntur. Porro ipsam facilis et nisi. Iusto rerum autem.Minima illo et iure aperiam fugiat repudiandae autem. Eos dolore corporis provident laboriosam et architecto sunt.',1,'2019-08-18 15:00:57','2019-08-18 15:00:57',1,1,8),(44,'Itaque dolor numquam ducimus nam itaque.','Perspiciatis non rerum distinctio quod facilis corrupti sint asperiores. Optio odit corrupti omnis voluptatem mollitia sint et laudantium voluptatem. Blanditiis est fugiat sint rerum.Quasi pariatur consectetur impedit et. Mollitia sed molestiae necessitatibus amet cumque aut. Est cupiditate vitae nihil qui nihil. Doloremque sed provident beatae quae.Itaque aut ipsum autem culpa architecto atque. Ipsum aut eaque ad omnis non quia facere qui quo. Facilis dolores repellat saepe rerum et dignissimos tempore nobis. Et tempore excepturi dignissimos et quaerat nisi quidem quia. Sunt consequatur atque natus veritatis.Numquam reiciendis distinctio et. Praesentium quae inventore quisquam facere rerum. Aspernatur quo cupiditate non aut voluptatum ipsam quo. Et consequatur fugiat deserunt odio omnis. Aut tempora omnis. Quaerat pariatur error et aspernatur cumque quia suscipit quasi.',1,'2019-08-18 15:00:57','2019-08-18 15:00:57',1,1,20),(45,'Delectus veniam quae dolor quis eum officia officiis.','Modi sunt similique. Sit nam repellendus expedita quisquam repudiandae reiciendis eum inventore reprehenderit. Laboriosam culpa rerum excepturi et qui qui. Nobis accusamus veritatis facilis praesentium aut expedita aut. Occaecati nulla est quae veniam qui officiis.Quia modi quae. Beatae consequatur ducimus placeat voluptas tempora inventore omnis. Et facilis aut quis voluptatem pariatur. Nisi quam corporis rerum facilis suscipit voluptates omnis nobis rerum. Aliquam accusamus iste sed cum laudantium ad necessitatibus. Quis ut aut officia aut optio molestias nihil.Animi ea non autem praesentium quo officia natus. Nulla cupiditate quod voluptate consectetur perferendis maxime incidunt ea. Ipsam tempore numquam autem sed. Et hic non. Quidem inventore iure ullam voluptates suscipit nisi dolorum.Quaerat sequi eaque. Iste alias vitae laborum corporis dolor dolor dolor quia.',1,'2019-08-18 15:00:57','2019-08-18 15:00:57',1,1,11),(46,'Eum nulla perspiciatis facilis et assumenda tempora rerum molestias ut.','Optio molestiae non soluta et facere. Sint eveniet quibusdam qui. Animi et qui soluta debitis et odio. Iste non iure praesentium officia ex. Voluptatem modi voluptas error est quod. Reiciendis aut ut recusandae exercitationem aliquid iste.Culpa natus iste harum et aut nostrum nihil et ut. Illo eos tempore architecto officia ratione. Id ducimus itaque minus excepturi odio et nisi eaque sed. Excepturi et et consequuntur voluptatem nulla cum dolorem veniam magni.Aliquid soluta aut minima. Voluptatum fugit consequatur mollitia explicabo. Vel doloribus a animi. Quisquam libero ut occaecati ipsum.Natus in nam. Veritatis pariatur vel.',1,'2019-08-18 15:00:57','2019-08-18 15:00:57',1,1,5),(47,'Et fuga dolorem repellat sequi quia voluptate.','Et velit recusandae. Quo saepe rerum quae. Laudantium consequatur rerum unde eius et ut. Modi asperiores quo et esse. Perferendis ut odit aut sapiente. Totam saepe facere et sunt blanditiis minus.Quos est doloremque ipsa et ad eaque. Qui inventore porro earum inventore. Est omnis id quas minima cupiditate.Nulla ab dolorem mollitia. Maiores et totam quod. Magni dolores enim et qui dicta et et repudiandae accusamus.Tempore quod illo. Voluptates molestias et quos aut illum officiis et. Dolorem nisi sint maxime exercitationem enim repellat. Rem maiores quo quo aut. Est esse inventore quasi ducimus illum mollitia.',1,'2019-08-18 15:00:57','2019-08-18 15:00:57',1,1,2),(48,'Minima atque mollitia voluptatem.','Aut quae non tempore. Et laborum voluptas est qui illo eum. Dolor tenetur sequi assumenda eveniet perferendis magnam. Consequatur voluptatem distinctio aspernatur qui quod.Commodi natus ipsam corrupti ipsam corrupti autem et quisquam sapiente. Quia harum ut voluptates commodi suscipit laborum. Aspernatur ex deserunt praesentium tenetur corporis. Harum cupiditate rem laboriosam exercitationem.Odio aut maxime architecto voluptas tempora. Alias cumque repudiandae laborum. A et soluta. Inventore animi assumenda voluptatem consequatur doloremque alias molestiae et.Tempore quod illo velit veritatis ipsum laborum voluptatem. Quisquam eius temporibus aperiam dolorum. Ullam ex recusandae sed.',1,'2019-08-18 15:00:57','2019-08-18 15:00:57',1,1,7),(49,'Doloribus aspernatur numquam quos.','Est corporis non dolorum. Quisquam consequatur incidunt dignissimos hic. Perspiciatis minima et. Debitis est repudiandae voluptates eius accusamus cupiditate dolores inventore.Est ut illum. Molestiae est rem eos dolore provident excepturi laboriosam porro nam. Deleniti ipsa perferendis natus deserunt commodi facilis. Facilis explicabo recusandae soluta. Praesentium est tenetur doloremque eum modi.Non magni minus corporis similique dolore est saepe non sunt. Impedit eius omnis voluptatem beatae excepturi repudiandae ut.Fugiat veniam in fuga. Facere consequatur debitis porro. Quia fugit et sint aut ipsum. Pariatur possimus quia quidem. Laudantium pariatur error accusamus nisi consequatur voluptas quam.',1,'2019-08-18 15:00:57','2019-08-18 15:00:57',1,1,7),(50,'Officia inventore cupiditate quia architecto rerum.','Ut labore facilis provident sapiente a similique adipisci est. Rem voluptatem qui similique eos quam molestiae ut. Repellat maxime soluta autem dolor. Fugit laborum aliquid consequuntur qui et nulla ab iure consectetur. Non aperiam esse voluptas sapiente neque.Ipsum corrupti sit laboriosam. Est quaerat eos velit voluptas cupiditate natus. Magni nihil possimus doloribus itaque et omnis qui. Id nihil autem necessitatibus.Itaque commodi neque natus. Sed et vel consequuntur assumenda excepturi recusandae. Est dolore magni aut. Quibusdam et est commodi esse. Deleniti voluptatum enim odit consequatur. Ipsum rerum tempore velit ipsum ut et sit magnam iusto.Quis pariatur sed. Sequi consequatur recusandae enim. Et voluptatem corporis. Iusto eius qui eligendi doloremque a ea.',1,'2019-08-18 15:00:59','2019-08-18 15:00:59',1,1,16),(51,'Exercitationem eaque ipsam a omnis neque.','Illo ab numquam ipsum ipsum eos id cum nesciunt officia. Pariatur sit sit enim ut nobis. Et deleniti tempora quasi dolores cumque dolor vel voluptatibus. Dolores ut culpa consequatur praesentium eaque. Quia molestiae quod quisquam accusamus enim id iusto. Consequuntur consequatur aut.Iusto quisquam odio voluptatem commodi quasi nihil optio fuga. Aliquam quisquam sed aut rerum modi sequi qui. Ducimus et in architecto possimus esse quae praesentium. Non qui placeat ut.Autem tempora necessitatibus labore. Nobis aspernatur saepe expedita. Deserunt recusandae ut in nisi officiis nisi.Possimus vel ullam dolor illo similique possimus et non. Rerum nihil aut vel amet cumque nostrum esse distinctio. Et rerum ut iure sunt modi voluptatum cupiditate perferendis ducimus. Sit voluptas cum iste labore sunt id sed sed vel.',1,'2019-08-18 15:00:59','2019-08-18 15:00:59',1,1,18),(52,'Blanditiis explicabo beatae tenetur.','Voluptatum est qui enim quo vitae vel aperiam molestias. Architecto minus deserunt id cumque. Sit quaerat enim et. Eos autem ipsa consequatur.Eum repellat est ut assumenda non quam eum natus reiciendis. Quisquam vero recusandae doloremque beatae est perferendis asperiores pariatur doloribus. Dolorem sed omnis. Velit quisquam cum id vero veritatis quos sed pariatur sunt. Vitae perspiciatis maiores nobis.Aspernatur dolor id. Deleniti quas sint harum sit.Quam repudiandae esse esse saepe molestiae. Ea natus qui. Commodi expedita est et dignissimos laborum numquam.',1,'2019-08-18 15:00:59','2019-08-18 15:00:59',1,1,12),(53,'Et eius voluptas cupiditate exercitationem.','Quia architecto ad voluptatibus. Nam quod enim ipsum. Fuga magnam quia dicta aut dignissimos eius ad deserunt aut. Molestiae aperiam omnis porro corporis. Magni unde ducimus laborum non incidunt nemo voluptates.Et provident nostrum natus dicta quas explicabo corporis vel. Placeat dolore voluptate similique sit. Natus est aut sunt in eos omnis sed quaerat qui. Quis iste quaerat unde odit quos optio beatae omnis adipisci. Optio consectetur nihil natus consequatur. Non exercitationem nihil magni.Praesentium non repellat fugit quibusdam laboriosam autem vero iure. Illo eius consequuntur tempore ea sunt facilis consequatur suscipit. Consequuntur optio ea veniam et. Ducimus at quae earum perferendis. Amet aut ab nesciunt officiis voluptas ea voluptatum.Commodi qui ducimus accusantium fuga. Ipsum laboriosam quis. Quidem facilis occaecati rerum officiis deserunt. Occaecati et nesciunt eaque aut consequatur modi error nihil. Consectetur doloribus est laborum. Molestiae aspernatur expedita ipsum facilis et consequatur consequatur unde molestiae.',1,'2019-08-18 15:00:59','2019-08-18 15:00:59',1,1,7),(54,'Provident molestias dolor quisquam.','Harum ipsa pariatur. Nihil molestiae aut alias. Optio tempora fugit ab. Quae et dolorum qui consequatur ut. Laboriosam iste ut molestiae et quasi consequuntur. Omnis illo quis optio libero voluptatem recusandae harum.Dolor et maiores id. Modi tempore dignissimos et sunt harum quisquam.Architecto numquam iusto et cupiditate est quidem. Optio praesentium aut est.Est quia explicabo aut distinctio. Illum asperiores et non eveniet ducimus. Dolore nesciunt necessitatibus fuga hic voluptate autem ut quidem. Et quam molestiae animi aliquid laudantium alias doloribus. Atque quia quia tempora ut consectetur laboriosam et. Libero earum debitis quia.',1,'2019-08-18 15:00:59','2019-08-18 15:00:59',1,1,8),(55,'Qui quibusdam eveniet deleniti delectus id omnis voluptatem est.','Eos delectus maxime non consectetur distinctio aliquam odio. Et accusantium molestias quis quia consequatur ut nihil dolorem ea. Voluptatem qui enim aut dolorum perferendis amet vel explicabo. Dolore ut et quod pariatur excepturi autem assumenda adipisci. Sequi nulla quibusdam natus rem et quo doloremque libero.Et fuga consectetur similique corrupti quo rerum iure quis vero. Veritatis repellendus totam quasi quidem eaque voluptatem molestiae. Pariatur veritatis ut quo illo est voluptas.Voluptas possimus dolorem et odio commodi exercitationem. Ullam voluptatibus neque sit a ut quaerat commodi veniam. Expedita non autem sint. Reprehenderit sequi aut aliquid ipsa doloremque voluptas.Ducimus a id sunt voluptas expedita. Qui similique asperiores facilis blanditiis sed. Facere culpa magnam quibusdam ut. Provident totam est sit excepturi iure molestiae.',1,'2019-08-18 15:00:59','2019-08-18 15:00:59',1,1,16),(56,'Laudantium autem in commodi aut voluptatibus ut facere non.','Labore quas ea facilis voluptas. Neque facere harum. Cupiditate veritatis dolores et. Ut qui ex aut. Sapiente totam officia sed qui expedita itaque pariatur aut. Aut et molestiae corrupti minus modi officia soluta.Est consequuntur nulla tempore maiores. Facere delectus quaerat nobis quis expedita aliquam nam. Nostrum minus qui ad ipsa necessitatibus adipisci illo. Quaerat eos eum quibusdam dolores.Et suscipit quo fuga enim id quibusdam et et. Sit tempore sit omnis est laudantium. Tenetur quia repellendus adipisci. Hic cum sit voluptas reprehenderit ipsam reiciendis sint. Dolores aut sunt dicta atque est vel et minima.Dolores delectus nostrum voluptas quisquam. Id ipsam dolorem soluta doloremque praesentium maxime voluptatem est aut.',1,'2019-08-18 15:00:59','2019-08-18 15:00:59',1,1,19),(57,'Quis perferendis deleniti porro aspernatur iure voluptatem quia.','Laborum esse velit neque incidunt fuga. Dolorem soluta reiciendis sed dolores cupiditate. Sit quia ipsa autem dolorem cupiditate quae natus. Ipsum ut reiciendis expedita et est non.Omnis et similique eveniet voluptatem explicabo ullam vero aut ipsum. Placeat dicta sit quam ad exercitationem est accusantium. Saepe ut repellendus blanditiis quidem et.Quasi doloribus nobis laborum. Aut ea similique atque voluptas ea explicabo voluptas. Natus veniam dicta expedita quae porro odit ut.Minima voluptatum qui quia rem voluptates non et quaerat. Sit pariatur quae.',1,'2019-08-19 17:25:02','2019-08-19 17:25:02',1,1,4),(58,'Fuga sapiente a nulla dolore.','Possimus delectus itaque. Tempora id ea repudiandae sunt voluptatibus officia illo architecto rerum. Deserunt ut in voluptatem atque est qui. Ratione ullam cum ad distinctio expedita sapiente nesciunt id. Qui consequatur fugit dolore voluptatem et voluptas repudiandae quisquam.Vel voluptatem nobis. Quia eos quos vel optio accusamus. Et assumenda aliquam nemo. Sapiente excepturi totam molestiae maiores voluptates quaerat hic. Nisi enim beatae ex voluptatem voluptates.Sunt eos voluptas. Rem iste et quibusdam est et cum et. Sit est et omnis quo eos dolor omnis tenetur. Incidunt rem dicta. Autem ut alias autem autem mollitia harum.Aut neque deserunt ea iure quia unde est. Est eveniet fuga rem soluta cum. Magnam dolorum tempore tenetur maiores doloremque. In ea ad.',1,'2019-08-19 17:25:02','2019-08-19 17:25:02',1,1,11),(59,'Cumque eligendi omnis aut deleniti.','In dignissimos sit sed atque voluptates aut. Sunt voluptatibus qui in voluptas esse est dolor nam similique. Molestiae et consequuntur. Modi vero commodi non quia ea porro vel. Aspernatur illo quibusdam sunt tenetur et et ut.Laboriosam inventore illum alias repudiandae optio omnis ipsum ut. Exercitationem aliquam adipisci. Mollitia occaecati quis voluptatem iure voluptatum. Nesciunt debitis incidunt odit sint aliquam impedit. Maiores aut cumque occaecati sapiente odit nostrum architecto hic. Enim eligendi rem aut quam nostrum est iusto.Repellendus fugit perspiciatis nam error qui totam amet temporibus. Officia autem et alias neque sint. Consequatur repudiandae nihil aut aut. Et nobis rem omnis rerum cum illum.Maiores consequatur aliquid autem voluptas nihil accusamus repudiandae ut aut. Dolorem quisquam quam iure rerum reprehenderit ut qui.',1,'2019-08-19 17:25:02','2019-08-19 17:25:02',1,1,5),(60,'Magni dolores modi cumque molestiae dolores.','Ullam consequatur maxime vel. Consectetur dolorem omnis repellendus autem deleniti facere.Voluptas repellendus aut nostrum qui sapiente. Est laborum consequatur. Ad dolores assumenda sed. Officiis culpa earum. Sit voluptas quos quia.Excepturi vero iure vel ipsa perferendis labore eveniet qui ut. Aut beatae natus aperiam dolor sit placeat consectetur eveniet cupiditate.Dolorum ea ut ut voluptatem et corrupti odio et. Veritatis id natus assumenda inventore est rerum incidunt aut. Unde nemo rerum. Eaque et eos quod. Aut qui atque quo excepturi at ut.',1,'2019-08-19 17:25:02','2019-08-19 17:25:02',1,1,3),(61,'Reprehenderit iure rerum dolor dolor quisquam omnis tempora.','Praesentium dignissimos suscipit labore in et consequatur nobis. Ut quia provident ducimus harum.Accusamus alias et qui ab aspernatur voluptatem beatae enim facere. Esse possimus molestiae non id laborum consequatur et.Ab distinctio voluptatem. Corporis sed omnis officia.Qui est rerum id vitae eos aut. Laboriosam quisquam aliquam officia. Reiciendis accusamus architecto repellat et eos veritatis impedit.',1,'2019-08-19 17:25:02','2019-08-19 17:25:02',1,1,7);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(19) unsigned NOT NULL,
  `updated_by` bigint(19) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (3,'voluptatem','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(4,'omnis','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(5,'eaque','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(6,'suscipit','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(7,'et','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(8,'omnis','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(9,'sit','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(10,'placeat','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(11,'totam','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(12,'nesciunt','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(13,'autem','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(14,'earum','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(15,'sunt','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(16,'inventore','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(17,'eligendi','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(18,'qui','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(19,'facere','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(20,'fuga','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(21,'iste','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1),(22,'inventore','2019-08-18 14:33:28','2019-08-18 14:33:28',1,1);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todos` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `completed` tinyint(1) DEFAULT '0',
  `user_id` bigint(19) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(19) unsigned DEFAULT NULL,
  `updated_by` bigint(19) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_todos` (`user_id`),
  CONSTRAINT `fk_user_todos` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todos`
--

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
/*!40000 ALTER TABLE `todos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(19) unsigned NOT NULL,
  `role_id` bigint(19) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_security_user_id` (`user_id`),
  KEY `fk_security_role_id` (`role_id`),
  CONSTRAINT `fk_security_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `fk_security_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,2),(2,1,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_id` bigint(19) unsigned DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `company_id` bigint(19) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `fk_address` (`address_id`),
  KEY `fk_company` (`company_id`),
  CONSTRAINT `fk_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','Admin','admin','$2a$10$j57SeHbc.0WAGzkljXUoJO1ov.qayKlUIBjpMeSszMvEqVdnSFi0G','admin.admin@site.com',NULL,NULL,NULL,NULL,'2019-08-18 10:34:19','2019-08-18 10:34:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-21  0:44:41
