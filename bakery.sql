-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: bakery
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `application_logs`
--

DROP TABLE IF EXISTS `application_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pid` int DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `message` text,
  `priority` enum('emergency','alert','critical','error','warning','notice','info','debug') DEFAULT NULL,
  `fileobject` varchar(1024) DEFAULT NULL,
  `info` varchar(1024) DEFAULT NULL,
  `component` varchar(190) DEFAULT NULL,
  `source` varchar(190) DEFAULT NULL,
  `relatedobject` int unsigned DEFAULT NULL,
  `relatedobjecttype` enum('object','document','asset') DEFAULT NULL,
  `maintenanceChecked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `component` (`component`),
  KEY `timestamp` (`timestamp`),
  KEY `relatedobject` (`relatedobject`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_logs`
--

LOCK TABLES `application_logs` WRITE;
/*!40000 ALTER TABLE `application_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `application_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int unsigned DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `path` varchar(765) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mimetype` varchar(190) DEFAULT NULL,
  `creationDate` int unsigned DEFAULT NULL,
  `modificationDate` int unsigned DEFAULT NULL,
  `userOwner` int unsigned DEFAULT NULL,
  `userModification` int unsigned DEFAULT NULL,
  `customSettings` longtext,
  `hasMetaData` tinyint(1) NOT NULL DEFAULT '0',
  `versionCount` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fullpath` (`path`,`filename`),
  KEY `parentId` (`parentId`),
  KEY `filename` (`filename`),
  KEY `modificationDate` (`modificationDate`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,0,'folder','','/',NULL,1617205499,1617355011,1,2,'a:0:{}',0,1),(2,1,'folder','_default_upload_bucket','/',NULL,1617255410,1617255410,1,0,'a:0:{}',0,1),(3,16,'image','raibowcake.jpeg','/MyAssets/','image/jpeg',1617255411,1617371771,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:257;s:11:\"imageHeight\";i:196;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617255411;s:8:\"FileSize\";i:15362;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,2),(4,16,'image','raibowcake_1.jpeg','/MyAssets/','image/jpeg',1617255650,1617371771,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:257;s:11:\"imageHeight\";i:196;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617255650;s:8:\"FileSize\";i:15362;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,2),(5,16,'image','cake category.jpg','/MyAssets/','image/jpeg',1617256052,1617371771,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:512;s:11:\"imageHeight\";i:374;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617256052;s:8:\"FileSize\";i:92785;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,2),(6,16,'image','raibowcake_2.jpeg','/MyAssets/','image/jpeg',1617257506,1617371771,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:257;s:11:\"imageHeight\";i:196;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617257506;s:8:\"FileSize\";i:15362;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,2),(7,16,'image','raibowcake_3.jpeg','/MyAssets/','image/jpeg',1617262179,1617371772,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:257;s:11:\"imageHeight\";i:196;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617262178;s:8:\"FileSize\";i:15362;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,2),(8,16,'image','cookie category.jpeg','/MyAssets/','image/jpeg',1617271499,1617371771,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:275;s:11:\"imageHeight\";i:183;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617271498;s:8:\"FileSize\";i:13015;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,2),(9,16,'image','RedVelvet.jpg','/MyAssets/','image/jpeg',1617271779,1617371771,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:440;s:11:\"imageHeight\";i:400;s:16:\"embeddedMetaData\";a:18:{s:11:\"DerivedFrom\";s:91:\"xmp.iid:ebc51c84-dfee-4a16-a9a0-a31f12d6ff2e | xmp.did:3e39aede-8e4d-40ff-9e65-2dfe0f51da2c\";s:12:\"FileDateTime\";i:1617271779;s:8:\"FileSize\";i:47204;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:19:\"ANY_TAG, IFD0, EXIF\";s:11:\"Orientation\";i:1;s:11:\"XResolution\";s:10:\"25400/1000\";s:11:\"YResolution\";s:10:\"25400/1000\";s:14:\"ResolutionUnit\";i:2;s:16:\"Exif_IFD_Pointer\";i:90;s:11:\"ExifVersion\";s:4:\"0210\";s:15:\"FlashPixVersion\";s:4:\"0100\";s:10:\"ColorSpace\";i:65535;s:14:\"ExifImageWidth\";i:440;s:15:\"ExifImageLength\";i:400;s:17:\"CodedCharacterSet\";s:3:\"%G\";s:24:\"ApplicationRecordVersion\";s:2:\"\0\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,2),(11,16,'image','RedVelvetCookies.jpeg','/MyAssets/','image/jpeg',1617354958,1617371752,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:440;s:11:\"imageHeight\";i:400;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617354957;s:8:\"FileSize\";i:46065;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,2),(12,16,'image','RainbowCake.jpeg','/MyAssets/','image/jpeg',1617354971,1617371752,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:257;s:11:\"imageHeight\";i:196;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617354971;s:8:\"FileSize\";i:15362;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,2),(13,16,'image','Muffinss.jpeg','/MyAssets/','image/jpeg',1617354980,1617371752,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:1280;s:11:\"imageHeight\";i:960;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617354980;s:8:\"FileSize\";i:466336;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,2),(14,16,'image','Cookiess.jpeg','/MyAssets/','image/jpeg',1617354994,1617371752,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:275;s:11:\"imageHeight\";i:183;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617354994;s:8:\"FileSize\";i:13015;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,2),(15,16,'image','Cakes.jpeg','/MyAssets/','image/jpeg',1617355005,1617371752,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:512;s:11:\"imageHeight\";i:374;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617355005;s:8:\"FileSize\";i:92785;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,2),(16,1,'folder','MyAssets','/',NULL,1617371728,1617371728,2,2,'a:0:{}',0,1),(17,16,'image','bakerylog.jpeg','/MyAssets/','image/jpeg',1617372703,1617372703,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:1000;s:11:\"imageHeight\";i:962;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617372702;s:8:\"FileSize\";i:207794;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1),(18,2,'text','categoryimport.csv','/_default_upload_bucket/','text/csv',1617470148,1617470148,2,2,'a:0:{}',0,1);
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_metadata`
--

DROP TABLE IF EXISTS `assets_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets_metadata` (
  `cid` int NOT NULL,
  `name` varchar(190) NOT NULL,
  `language` varchar(10) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `type` enum('input','textarea','asset','document','object','date','select','checkbox') DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`cid`,`name`,`language`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_metadata`
--

LOCK TABLES `assets_metadata` WRITE;
/*!40000 ALTER TABLE `assets_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `id` varchar(165) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `data` longblob,
  `mtime` int unsigned DEFAULT NULL,
  `expire` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('asset_1',_binary 's:574:\"O:26:\"Pimcore\\Model\\Asset\\Folder\":20:{s:7:\"\0*\0type\";s:6:\"folder\";s:5:\"\0*\0id\";i:1;s:11:\"\0*\0parentId\";i:0;s:11:\"\0*\0filename\";s:0:\"\";s:7:\"\0*\0path\";s:1:\"/\";s:11:\"\0*\0mimetype\";N;s:15:\"\0*\0creationDate\";i:1617205499;s:19:\"\0*\0modificationDate\";i:1617355011;s:12:\"\0*\0userOwner\";i:1;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:0:{}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1617355011;s:12:\"\0*\0_fulldump\";b:0;}\";',1617355013,1619774213),('asset_11',_binary 's:911:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:11;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:21:\"RedVelvetCookies.jpeg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617354958;s:19:\"\0*\0modificationDate\";i:1617371752;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:440;s:11:\"imageHeight\";i:400;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617354957;s:8:\"FileSize\";i:46065;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371752;s:12:\"\0*\0_fulldump\";b:0;}\";',1617371969,1619791167),('asset_12',_binary 's:906:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:12;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:16:\"RainbowCake.jpeg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617354971;s:19:\"\0*\0modificationDate\";i:1617371752;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:257;s:11:\"imageHeight\";i:196;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617354971;s:8:\"FileSize\";i:15362;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371752;s:12:\"\0*\0_fulldump\";b:0;}\";',1617371969,1619791167),('asset_13',_binary 's:905:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:13;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:13:\"Muffinss.jpeg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617354980;s:19:\"\0*\0modificationDate\";i:1617371752;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:1280;s:11:\"imageHeight\";i:960;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617354980;s:8:\"FileSize\";i:466336;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371752;s:12:\"\0*\0_fulldump\";b:0;}\";',1617371969,1619791167),('asset_14',_binary 's:903:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:14;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:13:\"Cookiess.jpeg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617354994;s:19:\"\0*\0modificationDate\";i:1617371752;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:275;s:11:\"imageHeight\";i:183;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617354994;s:8:\"FileSize\";i:13015;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371752;s:12:\"\0*\0_fulldump\";b:0;}\";',1617371969,1619791167),('asset_15',_binary 's:900:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:15;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:10:\"Cakes.jpeg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617355005;s:19:\"\0*\0modificationDate\";i:1617371752;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:512;s:11:\"imageHeight\";i:374;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617355005;s:8:\"FileSize\";i:92785;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371752;s:12:\"\0*\0_fulldump\";b:0;}\";',1617371969,1619791167),('asset_16',_binary 's:583:\"O:26:\"Pimcore\\Model\\Asset\\Folder\":20:{s:7:\"\0*\0type\";s:6:\"folder\";s:5:\"\0*\0id\";i:16;s:11:\"\0*\0parentId\";i:1;s:11:\"\0*\0filename\";s:8:\"MyAssets\";s:7:\"\0*\0path\";s:1:\"/\";s:11:\"\0*\0mimetype\";N;s:15:\"\0*\0creationDate\";i:1617371728;s:19:\"\0*\0modificationDate\";i:1617371728;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:0:{}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371728;s:12:\"\0*\0_fulldump\";b:0;}\";',1617371729,1619790929),('asset_17',_binary 's:906:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:17;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:14:\"bakerylog.jpeg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617372703;s:19:\"\0*\0modificationDate\";i:1617372703;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:1000;s:11:\"imageHeight\";i:962;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617372702;s:8:\"FileSize\";i:207794;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1617372703;s:12:\"\0*\0_fulldump\";b:0;}\";',1617372704,1619791904),('asset_2',_binary 's:597:\"O:26:\"Pimcore\\Model\\Asset\\Folder\":20:{s:7:\"\0*\0type\";s:6:\"folder\";s:5:\"\0*\0id\";i:2;s:11:\"\0*\0parentId\";i:1;s:11:\"\0*\0filename\";s:22:\"_default_upload_bucket\";s:7:\"\0*\0path\";s:1:\"/\";s:11:\"\0*\0mimetype\";N;s:15:\"\0*\0creationDate\";i:1617255410;s:19:\"\0*\0modificationDate\";i:1617255410;s:12:\"\0*\0userOwner\";i:1;s:19:\"\0*\0userModification\";i:0;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:0:{}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1617255410;s:12:\"\0*\0_fulldump\";b:0;}\";',1617255519,1619674718),('asset_3',_binary 's:904:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:3;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:15:\"raibowcake.jpeg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617255411;s:19:\"\0*\0modificationDate\";i:1617371771;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:257;s:11:\"imageHeight\";i:196;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617255411;s:8:\"FileSize\";i:15362;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371771;s:12:\"\0*\0_fulldump\";b:0;}\";',1617371968,1619791167),('asset_4',_binary 's:906:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:4;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:17:\"raibowcake_1.jpeg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617255650;s:19:\"\0*\0modificationDate\";i:1617371771;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:257;s:11:\"imageHeight\";i:196;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617255650;s:8:\"FileSize\";i:15362;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371771;s:12:\"\0*\0_fulldump\";b:0;}\";',1617371968,1619791167),('asset_5',_binary 's:906:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:5;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:17:\"cake category.jpg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617256052;s:19:\"\0*\0modificationDate\";i:1617371771;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:512;s:11:\"imageHeight\";i:374;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617256052;s:8:\"FileSize\";i:92785;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371771;s:12:\"\0*\0_fulldump\";b:0;}\";',1617371968,1619791167),('asset_6',_binary 's:906:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:6;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:17:\"raibowcake_2.jpeg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617257506;s:19:\"\0*\0modificationDate\";i:1617371771;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:257;s:11:\"imageHeight\";i:196;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617257506;s:8:\"FileSize\";i:15362;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371771;s:12:\"\0*\0_fulldump\";b:0;}\";',1617371968,1619791167),('asset_7',_binary 's:906:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:7;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:17:\"raibowcake_3.jpeg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617262179;s:19:\"\0*\0modificationDate\";i:1617371772;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:257;s:11:\"imageHeight\";i:196;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617262178;s:8:\"FileSize\";i:15362;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371772;s:12:\"\0*\0_fulldump\";b:0;}\";',1617371968,1619791167),('asset_8',_binary 's:909:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:8;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:20:\"cookie category.jpeg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617271499;s:19:\"\0*\0modificationDate\";i:1617371771;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:275;s:11:\"imageHeight\";i:183;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617271498;s:8:\"FileSize\";i:13015;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371771;s:12:\"\0*\0_fulldump\";b:0;}\";',1617371969,1619791167),('asset_9',_binary 's:1416:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:9;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:13:\"RedVelvet.jpg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617271779;s:19:\"\0*\0modificationDate\";i:1617371771;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:440;s:11:\"imageHeight\";i:400;s:16:\"embeddedMetaData\";a:18:{s:11:\"DerivedFrom\";s:91:\"xmp.iid:ebc51c84-dfee-4a16-a9a0-a31f12d6ff2e | xmp.did:3e39aede-8e4d-40ff-9e65-2dfe0f51da2c\";s:12:\"FileDateTime\";i:1617271779;s:8:\"FileSize\";i:47204;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:19:\"ANY_TAG, IFD0, EXIF\";s:11:\"Orientation\";i:1;s:11:\"XResolution\";s:10:\"25400/1000\";s:11:\"YResolution\";s:10:\"25400/1000\";s:14:\"ResolutionUnit\";i:2;s:16:\"Exif_IFD_Pointer\";i:90;s:11:\"ExifVersion\";s:4:\"0210\";s:15:\"FlashPixVersion\";s:4:\"0100\";s:10:\"ColorSpace\";i:65535;s:14:\"ExifImageWidth\";i:440;s:15:\"ExifImageLength\";i:400;s:17:\"CodedCharacterSet\";s:3:\"%G\";s:24:\"ApplicationRecordVersion\";s:2:\"\0\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371771;s:12:\"\0*\0_fulldump\";b:0;}\";',1617371969,1619791167),('document_1',_binary 's:886:\"O:27:\"Pimcore\\Model\\Document\\Page\":31:{s:8:\"\0*\0title\";s:0:\"\";s:14:\"\0*\0description\";s:0:\"\";s:11:\"\0*\0metaData\";a:0:{}s:7:\"\0*\0type\";s:4:\"page\";s:12:\"\0*\0prettyUrl\";N;s:17:\"\0*\0targetGroupIds\";s:0:\"\";s:9:\"\0*\0module\";N;s:13:\"\0*\0controller\";s:7:\"default\";s:9:\"\0*\0action\";s:7:\"default\";s:11:\"\0*\0template\";s:0:\"\";s:11:\"\0*\0elements\";N;s:12:\"\0*\0editables\";R:12;s:26:\"\0*\0contentMasterDocumentId\";N;s:24:\"\0*\0supportsContentMaster\";b:1;s:26:\"\0*\0missingRequiredEditable\";N;s:5:\"\0*\0id\";i:1;s:11:\"\0*\0parentId\";i:0;s:6:\"\0*\0key\";s:0:\"\";s:7:\"\0*\0path\";s:1:\"/\";s:8:\"\0*\0index\";i:999999;s:12:\"\0*\0published\";b:1;s:15:\"\0*\0creationDate\";i:1617205499;s:19:\"\0*\0modificationDate\";i:1617205499;s:12:\"\0*\0userOwner\";i:1;s:19:\"\0*\0userModification\";i:1;s:11:\"\0*\0siblings\";a:0:{}s:14:\"\0*\0hasSiblings\";a:0:{}s:9:\"\0*\0locked\";N;s:15:\"\0*\0versionCount\";i:0;s:25:\"\0*\0__dataVersionTimestamp\";i:1617205499;s:12:\"\0*\0_fulldump\";b:0;}\";',1617355076,1619774276),('document_2',_binary 's:922:\"O:27:\"Pimcore\\Model\\Document\\Page\":31:{s:8:\"\0*\0title\";s:4:\"Home\";s:14:\"\0*\0description\";s:0:\"\";s:11:\"\0*\0metaData\";a:0:{}s:7:\"\0*\0type\";s:4:\"page\";s:12:\"\0*\0prettyUrl\";N;s:17:\"\0*\0targetGroupIds\";s:0:\"\";s:9:\"\0*\0module\";s:9:\"AppBundle\";s:13:\"\0*\0controller\";s:7:\"Default\";s:9:\"\0*\0action\";s:7:\"default\";s:11:\"\0*\0template\";s:18:\"home/home.html.php\";s:11:\"\0*\0elements\";N;s:12:\"\0*\0editables\";R:12;s:26:\"\0*\0contentMasterDocumentId\";N;s:24:\"\0*\0supportsContentMaster\";b:1;s:26:\"\0*\0missingRequiredEditable\";N;s:5:\"\0*\0id\";i:2;s:11:\"\0*\0parentId\";i:1;s:6:\"\0*\0key\";s:4:\"Home\";s:7:\"\0*\0path\";s:1:\"/\";s:8:\"\0*\0index\";i:1;s:12:\"\0*\0published\";b:1;s:15:\"\0*\0creationDate\";i:1617355088;s:19:\"\0*\0modificationDate\";i:1617355117;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0siblings\";a:0:{}s:14:\"\0*\0hasSiblings\";a:0:{}s:9:\"\0*\0locked\";N;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617355117;s:12:\"\0*\0_fulldump\";b:0;}\";',1617373117,1619792317),('document_properties_1',_binary 's:6:\"a:0:{}\";',1617355209,1619774407),('document_properties_2',_binary 's:264:\"a:1:{s:15:\"navigation_name\";O:22:\"Pimcore\\Model\\Property\":8:{s:7:\"\0*\0name\";s:15:\"navigation_name\";s:7:\"\0*\0data\";s:4:\"Home\";s:7:\"\0*\0type\";s:4:\"text\";s:8:\"\0*\0ctype\";s:8:\"document\";s:8:\"\0*\0cpath\";N;s:6:\"\0*\0cid\";i:2;s:14:\"\0*\0inheritable\";b:0;s:12:\"\0*\0inherited\";b:0;}}\";',1617355121,1619774321),('object_1',_binary 's:598:\"O:31:\"Pimcore\\Model\\DataObject\\Folder\":19:{s:9:\"\0*\0o_type\";s:6:\"folder\";s:7:\"\0*\0o_id\";i:1;s:13:\"\0*\0o_parentId\";i:0;s:8:\"\0*\0o_key\";s:0:\"\";s:9:\"\0*\0o_path\";s:1:\"/\";s:10:\"\0*\0o_index\";i:999999;s:17:\"\0*\0o_creationDate\";i:1617205500;s:21:\"\0*\0o_modificationDate\";i:1617205500;s:14:\"\0*\0o_userOwner\";i:1;s:21:\"\0*\0o_userModification\";i:1;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:0;s:25:\"\0*\0__dataVersionTimestamp\";i:1617205500;s:12:\"\0*\0_fulldump\";b:0;}\";',1617206071,1619625271),('object_10',_binary 's:600:\"O:31:\"Pimcore\\Model\\DataObject\\Folder\":19:{s:9:\"\0*\0o_type\";s:6:\"folder\";s:7:\"\0*\0o_id\";i:10;s:13:\"\0*\0o_parentId\";i:1;s:8:\"\0*\0o_key\";s:6:\"Import\";s:9:\"\0*\0o_path\";s:1:\"/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1617470110;s:21:\"\0*\0o_modificationDate\";i:1617470109;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617470109;s:12:\"\0*\0_fulldump\";b:0;}\";',1617470112,1619889311),('object_11',_binary 's:1004:\"O:31:\"Pimcore\\Model\\DataObject\\Import\":25:{s:12:\"\0*\0o_classId\";s:1:\"3\";s:14:\"\0*\0o_className\";s:6:\"Import\";s:7:\"\0*\0name\";s:8:\"Category\";s:9:\"\0*\0status\";N;s:20:\"\0*\0__rawRelationData\";a:1:{i:0;a:9:{s:2:\"id\";s:1:\"1\";s:6:\"src_id\";s:2:\"11\";s:7:\"dest_id\";s:2:\"18\";s:4:\"type\";s:5:\"asset\";s:9:\"fieldname\";s:4:\"file\";s:5:\"index\";s:1:\"0\";s:9:\"ownertype\";s:6:\"object\";s:9:\"ownername\";s:0:\"\";s:8:\"position\";s:1:\"0\";}}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:11;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:14:\"categoryImport\";s:9:\"\0*\0o_path\";s:8:\"/Import/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1617470122;s:21:\"\0*\0o_modificationDate\";i:1617470377;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617470377;s:12:\"\0*\0_fulldump\";b:0;}\";',1617470378,1619889578),('object_12',_binary 's:835:\"O:33:\"Pimcore\\Model\\DataObject\\Category\":27:{s:12:\"\0*\0o_classId\";s:1:\"1\";s:14:\"\0*\0o_className\";s:8:\"Category\";s:7:\"\0*\0name\";s:5:\"Cakes\";s:14:\"\0*\0description\";s:9:\"Delicious\";s:9:\"\0*\0active\";b:1;s:8:\"\0*\0image\";N;s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:12;s:13:\"\0*\0o_parentId\";i:4;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:3:\"101\";s:9:\"\0*\0o_path\";s:10:\"/Category/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1617470487;s:21:\"\0*\0o_modificationDate\";i:1617470487;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1617470487;s:12:\"\0*\0_fulldump\";b:0;}\";',1617470494,1619889694),('object_3',_binary 's:2105:\"O:33:\"Pimcore\\Model\\DataObject\\Category\":27:{s:12:\"\0*\0o_classId\";s:1:\"1\";s:14:\"\0*\0o_className\";s:8:\"Category\";s:7:\"\0*\0name\";s:4:\"Cake\";s:14:\"\0*\0description\";s:333:\"Cake is a form of sweet food made from flour, sugar, and other ingredients, that is usually baked. In their oldest forms, cakes were modifications of bread, but cakes now cover a wide range of preparations that can be simple or elaborate, and that share features with other desserts such as pastries, meringues, custards, and pies.\n\n\";s:9:\"\0*\0active\";b:1;s:8:\"\0*\0image\";O:25:\"Pimcore\\Model\\Asset\\Image\":21:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:15;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:10:\"Cakes.jpeg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617355005;s:19:\"\0*\0modificationDate\";i:1617371752;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:512;s:11:\"imageHeight\";i:374;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617355005;s:8:\"FileSize\";i:92785;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371752;s:12:\"\0*\0_fulldump\";b:0;s:24:\"____pimcore_cache_item__\";s:8:\"asset_15\";}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:3;s:13:\"\0*\0o_parentId\";i:4;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:4:\"Cake\";s:9:\"\0*\0o_path\";s:10:\"/Category/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1617255697;s:21:\"\0*\0o_modificationDate\";i:1617355037;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:9;s:25:\"\0*\0__dataVersionTimestamp\";i:1617355037;s:12:\"\0*\0_fulldump\";b:0;}\";',1617377634,1619796833),('object_4',_binary 's:601:\"O:31:\"Pimcore\\Model\\DataObject\\Folder\":19:{s:9:\"\0*\0o_type\";s:6:\"folder\";s:7:\"\0*\0o_id\";i:4;s:13:\"\0*\0o_parentId\";i:1;s:8:\"\0*\0o_key\";s:8:\"Category\";s:9:\"\0*\0o_path\";s:1:\"/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1617257799;s:21:\"\0*\0o_modificationDate\";i:1617257798;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617257798;s:12:\"\0*\0_fulldump\";b:0;}\";',1617257799,1619676999),('object_6',_binary 's:600:\"O:31:\"Pimcore\\Model\\DataObject\\Folder\":19:{s:9:\"\0*\0o_type\";s:6:\"folder\";s:7:\"\0*\0o_id\";i:6;s:13:\"\0*\0o_parentId\";i:1;s:8:\"\0*\0o_key\";s:7:\"Product\";s:9:\"\0*\0o_path\";s:1:\"/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1617262101;s:21:\"\0*\0o_modificationDate\";i:1617262100;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617262100;s:12:\"\0*\0_fulldump\";b:0;}\";',1617262103,1619681303),('object_7',_binary 's:3635:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":33:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"Product\";s:7:\"\0*\0name\";s:12:\"Rainbow Cake\";s:14:\"\0*\0description\";s:317:\"Rainbow cookies are a common Jewish deli dessert, as they are pareve. As Jewish refugees from Eastern Europe settled in New York en masse at the turn of the 20th century, they often settled in areas that also had an Italian population. It was at this point that Jewish Americans were introduced to the rainbow cookie.\";s:6:\"\0*\0sku\";s:4:\"1001\";s:8:\"\0*\0image\";O:25:\"Pimcore\\Model\\Asset\\Image\":21:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:12;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:16:\"RainbowCake.jpeg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617354971;s:19:\"\0*\0modificationDate\";i:1617371752;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:257;s:11:\"imageHeight\";i:196;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617354971;s:8:\"FileSize\";i:15362;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371752;s:12:\"\0*\0_fulldump\";b:0;s:24:\"____pimcore_cache_item__\";s:8:\"asset_12\";}s:9:\"\0*\0weight\";O:43:\"Pimcore\\Model\\DataObject\\Data\\QuantityValue\":6:{s:8:\"\0*\0value\";d:1;s:9:\"\0*\0unitId\";s:2:\"kg\";s:7:\"\0*\0unit\";O:43:\"Pimcore\\Model\\DataObject\\QuantityValue\\Unit\":9:{s:2:\"id\";s:2:\"kg\";s:12:\"abbreviation\";s:2:\"kg\";s:5:\"group\";N;s:8:\"longname\";s:9:\"Kilo Gram\";s:8:\"baseunit\";s:2:\"kg\";s:9:\"reference\";N;s:6:\"factor\";N;s:16:\"conversionOffset\";N;s:9:\"converter\";s:0:\"\";}s:9:\"\0*\0_owner\";N;s:13:\"\0*\0_fieldname\";N;s:12:\"\0*\0_language\";N;}s:8:\"\0*\0price\";O:43:\"Pimcore\\Model\\DataObject\\Data\\QuantityValue\":6:{s:8:\"\0*\0value\";d:10;s:9:\"\0*\0unitId\";s:6:\"Dollar\";s:7:\"\0*\0unit\";O:43:\"Pimcore\\Model\\DataObject\\QuantityValue\\Unit\":9:{s:2:\"id\";s:6:\"Dollar\";s:12:\"abbreviation\";s:1:\"$\";s:5:\"group\";N;s:8:\"longname\";s:6:\"Dollar\";s:8:\"baseunit\";s:6:\"Dollar\";s:9:\"reference\";N;s:6:\"factor\";N;s:16:\"conversionOffset\";N;s:9:\"converter\";s:0:\"\";}s:9:\"\0*\0_owner\";N;s:13:\"\0*\0_fieldname\";N;s:12:\"\0*\0_language\";N;}s:15:\"\0*\0categoryType\";s:4:\"Cake\";s:17:\"\0*\0manufacturedOn\";O:13:\"Carbon\\Carbon\":3:{s:4:\"date\";s:26:\"2021-04-01 20:30:00.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:9:\"\0*\0expiry\";O:13:\"Carbon\\Carbon\":3:{s:4:\"date\";s:26:\"2021-04-02 20:30:00.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:14:\"\0*\0productType\";O:44:\"Pimcore\\Model\\DataObject\\Product\\ProductType\":6:{s:15:\"\0*\0brickGetters\";a:2:{i:0;s:13:\"MuffinFlavour\";i:1;s:10:\"CookiePack\";}s:16:\"\0*\0MuffinFlavour\";N;s:13:\"\0*\0CookiePack\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:11:\"productType\";s:11:\"\0*\0objectId\";i:7;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:7;s:13:\"\0*\0o_parentId\";i:6;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:12:\"Rainbow Cake\";s:9:\"\0*\0o_path\";s:9:\"/Product/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1617262137;s:21:\"\0*\0o_modificationDate\";i:1617355054;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:28;s:25:\"\0*\0__dataVersionTimestamp\";i:1617355054;s:12:\"\0*\0_fulldump\";b:0;}\";',1617377636,1619796836),('object_8',_binary 's:2102:\"O:33:\"Pimcore\\Model\\DataObject\\Category\":27:{s:12:\"\0*\0o_classId\";s:1:\"1\";s:14:\"\0*\0o_className\";s:8:\"Category\";s:7:\"\0*\0name\";s:6:\"Cookie\";s:14:\"\0*\0description\";s:323:\"A cookie is a baked or cooked food that is typically small, flat and sweet. It usually contains flour, sugar and some type of oil or fat. It may include other ingredients such as raisins, oats, chocolate chips, nuts, etc.\n\nIn most English-speaking countries except for the United States, crunchy cookies are called biscuits\";s:9:\"\0*\0active\";b:1;s:8:\"\0*\0image\";O:25:\"Pimcore\\Model\\Asset\\Image\":21:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:14;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:13:\"Cookiess.jpeg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617354994;s:19:\"\0*\0modificationDate\";i:1617371752;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:275;s:11:\"imageHeight\";i:183;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617354994;s:8:\"FileSize\";i:13015;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371752;s:12:\"\0*\0_fulldump\";b:0;s:24:\"____pimcore_cache_item__\";s:8:\"asset_14\";}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:8;s:13:\"\0*\0o_parentId\";i:4;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:6:\"Cookie\";s:9:\"\0*\0o_path\";s:10:\"/Category/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1617271341;s:21:\"\0*\0o_modificationDate\";i:1617355044;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:3;s:25:\"\0*\0__dataVersionTimestamp\";i:1617355044;s:12:\"\0*\0_fulldump\";b:0;}\";',1617377634,1619796833),('object_9',_binary 's:3849:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":33:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"Product\";s:7:\"\0*\0name\";s:18:\"Red Velvet Cookies\";s:14:\"\0*\0description\";s:300:\"As easy to make as your favorite chocolate chip recipe, these cookies pack the fun and flavor of red velvet cake into a simple, and much faster, cookie. Super sweet and tender with a slightly fudgy center, they contain creamy white chocolate chunks that nod to the snowy frosting on the cake version.\";s:6:\"\0*\0sku\";s:4:\"1002\";s:8:\"\0*\0image\";O:25:\"Pimcore\\Model\\Asset\\Image\":21:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:11;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:21:\"RedVelvetCookies.jpeg\";s:7:\"\0*\0path\";s:10:\"/MyAssets/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1617354958;s:19:\"\0*\0modificationDate\";i:1617371752;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:440;s:11:\"imageHeight\";i:400;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1617354957;s:8:\"FileSize\";i:46065;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1617371752;s:12:\"\0*\0_fulldump\";b:0;s:24:\"____pimcore_cache_item__\";s:8:\"asset_11\";}s:9:\"\0*\0weight\";O:43:\"Pimcore\\Model\\DataObject\\Data\\QuantityValue\":6:{s:8:\"\0*\0value\";d:150;s:9:\"\0*\0unitId\";s:1:\"g\";s:7:\"\0*\0unit\";O:43:\"Pimcore\\Model\\DataObject\\QuantityValue\\Unit\":9:{s:2:\"id\";s:1:\"g\";s:12:\"abbreviation\";s:1:\"g\";s:5:\"group\";N;s:8:\"longname\";s:4:\"Gram\";s:8:\"baseunit\";s:1:\"g\";s:9:\"reference\";N;s:6:\"factor\";N;s:16:\"conversionOffset\";N;s:9:\"converter\";s:0:\"\";}s:9:\"\0*\0_owner\";N;s:13:\"\0*\0_fieldname\";N;s:12:\"\0*\0_language\";N;}s:8:\"\0*\0price\";O:43:\"Pimcore\\Model\\DataObject\\Data\\QuantityValue\":6:{s:8:\"\0*\0value\";d:8;s:9:\"\0*\0unitId\";s:6:\"Dollar\";s:7:\"\0*\0unit\";O:43:\"Pimcore\\Model\\DataObject\\QuantityValue\\Unit\":9:{s:2:\"id\";s:6:\"Dollar\";s:12:\"abbreviation\";s:1:\"$\";s:5:\"group\";N;s:8:\"longname\";s:6:\"Dollar\";s:8:\"baseunit\";s:6:\"Dollar\";s:9:\"reference\";N;s:6:\"factor\";N;s:16:\"conversionOffset\";N;s:9:\"converter\";s:0:\"\";}s:9:\"\0*\0_owner\";N;s:13:\"\0*\0_fieldname\";N;s:12:\"\0*\0_language\";N;}s:15:\"\0*\0categoryType\";N;s:17:\"\0*\0manufacturedOn\";O:13:\"Carbon\\Carbon\":3:{s:4:\"date\";s:26:\"2021-03-31 20:30:00.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:9:\"\0*\0expiry\";O:13:\"Carbon\\Carbon\":3:{s:4:\"date\";s:26:\"2021-04-29 20:30:00.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:14:\"\0*\0productType\";O:44:\"Pimcore\\Model\\DataObject\\Product\\ProductType\":6:{s:15:\"\0*\0brickGetters\";a:2:{i:0;s:13:\"MuffinFlavour\";i:1;s:10:\"CookiePack\";}s:16:\"\0*\0MuffinFlavour\";N;s:13:\"\0*\0CookiePack\";O:52:\"Pimcore\\Model\\DataObject\\Objectbrick\\Data\\CookiePack\":6:{s:7:\"\0*\0type\";s:10:\"CookiePack\";s:9:\"\0*\0packOf\";s:9:\"Pack of 8\";s:12:\"\0*\0fieldname\";s:11:\"productType\";s:11:\"\0*\0doDelete\";N;s:11:\"\0*\0objectId\";i:9;s:12:\"\0*\0_fulldump\";b:0;}s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:11:\"productType\";s:11:\"\0*\0objectId\";i:9;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:9;s:13:\"\0*\0o_parentId\";i:6;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:17:\"RedVelvet Cookies\";s:9:\"\0*\0o_path\";s:9:\"/Product/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1617271617;s:21:\"\0*\0o_modificationDate\";i:1617355064;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:4;s:25:\"\0*\0__dataVersionTimestamp\";i:1617355064;s:12:\"\0*\0_fulldump\";b:0;}\";',1617377636,1619796836),('object_properties_12',_binary 's:6:\"a:0:{}\";',1617470498,1619889697),('object_properties_3',_binary 's:6:\"a:0:{}\";',1617470502,1619889702),('quantityvalue_units_table',_binary 's:791:\"a:3:{s:6:\"Dollar\";O:43:\"Pimcore\\Model\\DataObject\\QuantityValue\\Unit\":9:{s:2:\"id\";s:6:\"Dollar\";s:12:\"abbreviation\";s:1:\"$\";s:5:\"group\";N;s:8:\"longname\";s:6:\"Dollar\";s:8:\"baseunit\";s:6:\"Dollar\";s:9:\"reference\";N;s:6:\"factor\";N;s:16:\"conversionOffset\";N;s:9:\"converter\";s:0:\"\";}s:1:\"g\";O:43:\"Pimcore\\Model\\DataObject\\QuantityValue\\Unit\":9:{s:2:\"id\";s:1:\"g\";s:12:\"abbreviation\";s:1:\"g\";s:5:\"group\";N;s:8:\"longname\";s:4:\"Gram\";s:8:\"baseunit\";s:1:\"g\";s:9:\"reference\";N;s:6:\"factor\";N;s:16:\"conversionOffset\";N;s:9:\"converter\";s:0:\"\";}s:2:\"kg\";O:43:\"Pimcore\\Model\\DataObject\\QuantityValue\\Unit\":9:{s:2:\"id\";s:2:\"kg\";s:12:\"abbreviation\";s:2:\"kg\";s:5:\"group\";N;s:8:\"longname\";s:9:\"Kilo Gram\";s:8:\"baseunit\";s:2:\"kg\";s:9:\"reference\";N;s:6:\"factor\";N;s:16:\"conversionOffset\";N;s:9:\"converter\";s:0:\"\";}}\";',1617255623,1619674823),('system_resource_columns_edit_lock',_binary 's:101:\"a:6:{i:0;s:2:\"id\";i:1;s:3:\"cid\";i:2;s:5:\"ctype\";i:3;s:6:\"userId\";i:4;s:9:\"sessionId\";i:5;s:4:\"date\";}\";',1617470124,1619889324);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_tags`
--

DROP TABLE IF EXISTS `cache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_tags` (
  `id` varchar(165) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `tag` varchar(165) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`tag`),
  KEY `tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_tags`
--

LOCK TABLES `cache_tags` WRITE;
/*!40000 ALTER TABLE `cache_tags` DISABLE KEYS */;
INSERT INTO `cache_tags` VALUES ('asset_1','asset_1'),('asset_11','asset_11'),('object_9','asset_11'),('asset_12','asset_12'),('object_7','asset_12'),('asset_13','asset_13'),('asset_14','asset_14'),('object_8','asset_14'),('asset_15','asset_15'),('object_3','asset_15'),('asset_16','asset_16'),('asset_17','asset_17'),('asset_2','asset_2'),('asset_3','asset_3'),('asset_4','asset_4'),('asset_5','asset_5'),('asset_6','asset_6'),('asset_7','asset_7'),('asset_8','asset_8'),('asset_9','asset_9'),('object_12','class_1'),('object_3','class_1'),('object_8','class_1'),('object_7','class_2'),('object_9','class_2'),('object_11','class_3'),('document_1','document_1'),('document_properties_1','document_1'),('document_2','document_2'),('document_properties_2','document_2'),('document_properties_1','document_properties'),('document_properties_2','document_properties'),('object_1','object_1'),('object_10','object_10'),('object_11','object_11'),('object_12','object_12'),('object_properties_12','object_12'),('object_3','object_3'),('object_properties_3','object_3'),('object_4','object_4'),('object_6','object_6'),('object_7','object_7'),('object_8','object_8'),('object_9','object_9'),('object_properties_12','object_properties'),('object_properties_3','object_properties'),('system_resource_columns_edit_lock','resource'),('system_resource_columns_edit_lock','system');
/*!40000 ALTER TABLE `cache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` varchar(50) NOT NULL,
  `name` varchar(190) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES ('1','Category'),('3','Import'),('2','Product');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_collectionrelations`
--

DROP TABLE IF EXISTS `classificationstore_collectionrelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificationstore_collectionrelations` (
  `colId` int unsigned NOT NULL,
  `groupId` int unsigned NOT NULL,
  `sorter` int DEFAULT '0',
  PRIMARY KEY (`colId`,`groupId`),
  KEY `FK_classificationstore_collectionrelations_groups` (`groupId`),
  CONSTRAINT `FK_classificationstore_collectionrelations_groups` FOREIGN KEY (`groupId`) REFERENCES `classificationstore_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_collectionrelations`
--

LOCK TABLES `classificationstore_collectionrelations` WRITE;
/*!40000 ALTER TABLE `classificationstore_collectionrelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `classificationstore_collectionrelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_collections`
--

DROP TABLE IF EXISTS `classificationstore_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificationstore_collections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `storeId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `creationDate` int unsigned DEFAULT '0',
  `modificationDate` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `storeId` (`storeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_collections`
--

LOCK TABLES `classificationstore_collections` WRITE;
/*!40000 ALTER TABLE `classificationstore_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `classificationstore_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_groups`
--

DROP TABLE IF EXISTS `classificationstore_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificationstore_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `storeId` int DEFAULT NULL,
  `parentId` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(190) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `creationDate` int unsigned DEFAULT '0',
  `modificationDate` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `storeId` (`storeId`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_groups`
--

LOCK TABLES `classificationstore_groups` WRITE;
/*!40000 ALTER TABLE `classificationstore_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `classificationstore_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_keys`
--

DROP TABLE IF EXISTS `classificationstore_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificationstore_keys` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `storeId` int DEFAULT NULL,
  `name` varchar(190) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(190) DEFAULT NULL,
  `creationDate` int unsigned DEFAULT '0',
  `modificationDate` int unsigned DEFAULT '0',
  `definition` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `enabled` (`enabled`),
  KEY `type` (`type`),
  KEY `storeId` (`storeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_keys`
--

LOCK TABLES `classificationstore_keys` WRITE;
/*!40000 ALTER TABLE `classificationstore_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `classificationstore_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_relations`
--

DROP TABLE IF EXISTS `classificationstore_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificationstore_relations` (
  `groupId` int unsigned NOT NULL,
  `keyId` int unsigned NOT NULL,
  `sorter` int DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`groupId`,`keyId`),
  KEY `FK_classificationstore_relations_classificationstore_keys` (`keyId`),
  KEY `mandatory` (`mandatory`),
  CONSTRAINT `FK_classificationstore_relations_classificationstore_groups` FOREIGN KEY (`groupId`) REFERENCES `classificationstore_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_classificationstore_relations_classificationstore_keys` FOREIGN KEY (`keyId`) REFERENCES `classificationstore_keys` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_relations`
--

LOCK TABLES `classificationstore_relations` WRITE;
/*!40000 ALTER TABLE `classificationstore_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `classificationstore_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_stores`
--

DROP TABLE IF EXISTS `classificationstore_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificationstore_stores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(190) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_stores`
--

LOCK TABLES `classificationstore_stores` WRITE;
/*!40000 ALTER TABLE `classificationstore_stores` DISABLE KEYS */;
/*!40000 ALTER TABLE `classificationstore_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_layouts`
--

DROP TABLE IF EXISTS `custom_layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_layouts` (
  `id` varchar(64) NOT NULL,
  `classId` varchar(50) NOT NULL,
  `name` varchar(190) DEFAULT NULL,
  `description` text,
  `creationDate` int unsigned DEFAULT NULL,
  `modificationDate` int unsigned DEFAULT NULL,
  `userOwner` int unsigned DEFAULT NULL,
  `userModification` int unsigned DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_layouts`
--

LOCK TABLES `custom_layouts` WRITE;
/*!40000 ALTER TABLE `custom_layouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependencies`
--

DROP TABLE IF EXISTS `dependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependencies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sourcetype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `sourceid` int unsigned NOT NULL DEFAULT '0',
  `targettype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `targetid` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `combi` (`sourcetype`,`sourceid`,`targettype`,`targetid`),
  KEY `targettype_targetid` (`targettype`,`targetid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependencies`
--

LOCK TABLES `dependencies` WRITE;
/*!40000 ALTER TABLE `dependencies` DISABLE KEYS */;
INSERT INTO `dependencies` VALUES (9,'object',3,'asset',15),(11,'object',7,'asset',12),(10,'object',8,'asset',14),(12,'object',9,'asset',11),(13,'object',11,'asset',18);
/*!40000 ALTER TABLE `dependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int unsigned DEFAULT NULL,
  `type` enum('page','link','snippet','folder','hardlink','email','newsletter','printpage','printcontainer') DEFAULT NULL,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `path` varchar(765) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `index` int unsigned DEFAULT '0',
  `published` tinyint unsigned DEFAULT '1',
  `creationDate` int unsigned DEFAULT NULL,
  `modificationDate` int unsigned DEFAULT NULL,
  `userOwner` int unsigned DEFAULT NULL,
  `userModification` int unsigned DEFAULT NULL,
  `versionCount` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fullpath` (`path`,`key`),
  KEY `parentId` (`parentId`),
  KEY `key` (`key`),
  KEY `published` (`published`),
  KEY `modificationDate` (`modificationDate`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,0,'page','','/',999999,1,1617205499,1617205499,1,1,0),(2,1,'page','Home','/',1,1,1617355088,1617355117,2,2,2);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_elements`
--

DROP TABLE IF EXISTS `documents_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_elements` (
  `documentId` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(750) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `type` varchar(50) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`documentId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_elements`
--

LOCK TABLES `documents_elements` WRITE;
/*!40000 ALTER TABLE `documents_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_email`
--

DROP TABLE IF EXISTS `documents_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_email` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `replyTo` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `missingRequiredEditable` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_email`
--

LOCK TABLES `documents_email` WRITE;
/*!40000 ALTER TABLE `documents_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_hardlink`
--

DROP TABLE IF EXISTS `documents_hardlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_hardlink` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `sourceId` int DEFAULT NULL,
  `propertiesFromSource` tinyint(1) DEFAULT NULL,
  `childrenFromSource` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sourceId` (`sourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_hardlink`
--

LOCK TABLES `documents_hardlink` WRITE;
/*!40000 ALTER TABLE `documents_hardlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_hardlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_link`
--

DROP TABLE IF EXISTS `documents_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_link` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `internalType` enum('document','asset','object') DEFAULT NULL,
  `internal` int unsigned DEFAULT NULL,
  `direct` varchar(1000) DEFAULT NULL,
  `linktype` enum('direct','internal') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_link`
--

LOCK TABLES `documents_link` WRITE;
/*!40000 ALTER TABLE `documents_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_newsletter`
--

DROP TABLE IF EXISTS `documents_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_newsletter` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `trackingParameterSource` varchar(255) DEFAULT NULL,
  `trackingParameterMedium` varchar(255) DEFAULT NULL,
  `trackingParameterName` varchar(255) DEFAULT NULL,
  `enableTrackingParameters` tinyint unsigned DEFAULT NULL,
  `sendingMode` varchar(20) DEFAULT NULL,
  `plaintext` longtext,
  `missingRequiredEditable` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_newsletter`
--

LOCK TABLES `documents_newsletter` WRITE;
/*!40000 ALTER TABLE `documents_newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_page`
--

DROP TABLE IF EXISTS `documents_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_page` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(383) DEFAULT NULL,
  `metaData` text,
  `prettyUrl` varchar(190) DEFAULT NULL,
  `contentMasterDocumentId` int DEFAULT NULL,
  `targetGroupIds` varchar(255) DEFAULT NULL,
  `missingRequiredEditable` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prettyUrl` (`prettyUrl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_page`
--

LOCK TABLES `documents_page` WRITE;
/*!40000 ALTER TABLE `documents_page` DISABLE KEYS */;
INSERT INTO `documents_page` VALUES (1,NULL,'default','default','','','',NULL,NULL,NULL,NULL,NULL),(2,'AppBundle','Default','default','home/home.html.php','Home','','a:0:{}',NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `documents_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_printpage`
--

DROP TABLE IF EXISTS `documents_printpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_printpage` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `lastGenerated` int DEFAULT NULL,
  `lastGenerateMessage` text,
  `contentMasterDocumentId` int DEFAULT NULL,
  `missingRequiredEditable` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_printpage`
--

LOCK TABLES `documents_printpage` WRITE;
/*!40000 ALTER TABLE `documents_printpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_printpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_snippet`
--

DROP TABLE IF EXISTS `documents_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_snippet` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `contentMasterDocumentId` int DEFAULT NULL,
  `missingRequiredEditable` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_snippet`
--

LOCK TABLES `documents_snippet` WRITE;
/*!40000 ALTER TABLE `documents_snippet` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_snippet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_translations`
--

DROP TABLE IF EXISTS `documents_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_translations` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `sourceId` int unsigned NOT NULL DEFAULT '0',
  `language` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`sourceId`,`language`),
  KEY `id` (`id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_translations`
--

LOCK TABLES `documents_translations` WRITE;
/*!40000 ALTER TABLE `documents_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edit_lock`
--

DROP TABLE IF EXISTS `edit_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edit_lock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cid` int unsigned NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `userId` int unsigned NOT NULL DEFAULT '0',
  `sessionId` varchar(255) DEFAULT NULL,
  `date` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ctype` (`ctype`),
  KEY `cidtype` (`cid`,`ctype`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edit_lock`
--

LOCK TABLES `edit_lock` WRITE;
/*!40000 ALTER TABLE `edit_lock` DISABLE KEYS */;
INSERT INTO `edit_lock` VALUES (99,5,'asset',2,'rdmjp8nqm5ohcp33s5m45dj0qu',1617354932),(101,1,'asset',2,'rdmjp8nqm5ohcp33s5m45dj0qu',1617355013),(103,8,'object',2,'rdmjp8nqm5ohcp33s5m45dj0qu',1617355039),(106,9,'object',2,'rdmjp8nqm5ohcp33s5m45dj0qu',1617355055),(107,11,'asset',2,'rdmjp8nqm5ohcp33s5m45dj0qu',1617355057),(108,1,'document',2,'rdmjp8nqm5ohcp33s5m45dj0qu',1617355076),(137,16,'asset',2,'af2upqn3j5ebm952b7h7t87msv',1617373005),(138,17,'asset',2,'af2upqn3j5ebm952b7h7t87msv',1617373005),(139,15,'asset',2,'af2upqn3j5ebm952b7h7t87msv',1617373005),(140,14,'asset',2,'af2upqn3j5ebm952b7h7t87msv',1617373006),(142,2,'document',2,'9606rg2eadc9qo6egqbrlrd4l7',1617373117),(143,6,'object',2,'hh5ffm95klck3gme1thdp8jo15',1617377631),(144,7,'object',2,'hh5ffm95klck3gme1thdp8jo15',1617377665),(145,11,'object',2,'l0a8pm84njcr1ojsv6a7bsdple',1617470124),(146,12,'object',2,'l0a8pm84njcr1ojsv6a7bsdple',1617470497),(147,3,'object',2,'l0a8pm84njcr1ojsv6a7bsdple',1617470502);
/*!40000 ALTER TABLE `edit_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `element_workflow_state`
--

DROP TABLE IF EXISTS `element_workflow_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `element_workflow_state` (
  `cid` int NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') NOT NULL,
  `place` text,
  `workflow` varchar(100) NOT NULL,
  PRIMARY KEY (`cid`,`ctype`,`workflow`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `element_workflow_state`
--

LOCK TABLES `element_workflow_state` WRITE;
/*!40000 ALTER TABLE `element_workflow_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `element_workflow_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_blacklist`
--

DROP TABLE IF EXISTS `email_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_blacklist` (
  `address` varchar(190) NOT NULL DEFAULT '',
  `creationDate` int unsigned DEFAULT NULL,
  `modificationDate` int unsigned DEFAULT NULL,
  PRIMARY KEY (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_blacklist`
--

LOCK TABLES `email_blacklist` WRITE;
/*!40000 ALTER TABLE `email_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_log`
--

DROP TABLE IF EXISTS `email_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `documentId` int DEFAULT NULL,
  `requestUri` varchar(500) DEFAULT NULL,
  `params` text,
  `from` varchar(500) DEFAULT NULL,
  `replyTo` varchar(255) DEFAULT NULL,
  `to` longtext,
  `cc` longtext,
  `bcc` longtext,
  `sentDate` int unsigned DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sentDate` (`sentDate`,`id`),
  FULLTEXT KEY `fulltext` (`from`,`to`,`cc`,`bcc`,`subject`,`params`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_log`
--

LOCK TABLES `email_log` WRITE;
/*!40000 ALTER TABLE `email_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glossary`
--

DROP TABLE IF EXISTS `glossary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `glossary` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(10) DEFAULT NULL,
  `casesensitive` tinyint(1) DEFAULT NULL,
  `exactmatch` tinyint(1) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `acronym` varchar(255) DEFAULT NULL,
  `site` int unsigned DEFAULT NULL,
  `creationDate` int unsigned DEFAULT '0',
  `modificationDate` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `language` (`language`),
  KEY `site` (`site`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glossary`
--

LOCK TABLES `glossary` WRITE;
/*!40000 ALTER TABLE `glossary` DISABLE KEYS */;
/*!40000 ALTER TABLE `glossary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gridconfig_favourites`
--

DROP TABLE IF EXISTS `gridconfig_favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gridconfig_favourites` (
  `ownerId` int NOT NULL,
  `classId` varchar(50) NOT NULL,
  `objectId` int NOT NULL DEFAULT '0',
  `gridConfigId` int DEFAULT NULL,
  `searchType` varchar(50) NOT NULL DEFAULT '',
  `type` enum('asset','object') NOT NULL DEFAULT 'object',
  PRIMARY KEY (`ownerId`,`classId`,`searchType`,`objectId`),
  KEY `classId` (`classId`),
  KEY `searchType` (`searchType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gridconfig_favourites`
--

LOCK TABLES `gridconfig_favourites` WRITE;
/*!40000 ALTER TABLE `gridconfig_favourites` DISABLE KEYS */;
/*!40000 ALTER TABLE `gridconfig_favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gridconfig_shares`
--

DROP TABLE IF EXISTS `gridconfig_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gridconfig_shares` (
  `gridConfigId` int NOT NULL,
  `sharedWithUserId` int NOT NULL,
  PRIMARY KEY (`gridConfigId`,`sharedWithUserId`),
  KEY `sharedWithUserId` (`sharedWithUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gridconfig_shares`
--

LOCK TABLES `gridconfig_shares` WRITE;
/*!40000 ALTER TABLE `gridconfig_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `gridconfig_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gridconfigs`
--

DROP TABLE IF EXISTS `gridconfigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gridconfigs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ownerId` int DEFAULT NULL,
  `classId` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `searchType` varchar(50) DEFAULT NULL,
  `type` enum('asset','object') NOT NULL DEFAULT 'object',
  `config` longtext,
  `description` longtext,
  `creationDate` int DEFAULT NULL,
  `modificationDate` int DEFAULT NULL,
  `shareGlobally` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ownerId` (`ownerId`),
  KEY `classId` (`classId`),
  KEY `searchType` (`searchType`),
  KEY `shareGlobally` (`shareGlobally`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gridconfigs`
--

LOCK TABLES `gridconfigs` WRITE;
/*!40000 ALTER TABLE `gridconfigs` DISABLE KEYS */;
/*!40000 ALTER TABLE `gridconfigs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `http_error_log`
--

DROP TABLE IF EXISTS `http_error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `http_error_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `code` int DEFAULT NULL,
  `parametersGet` longtext,
  `parametersPost` longtext,
  `cookies` longtext,
  `serverVars` longtext,
  `date` int unsigned DEFAULT NULL,
  `count` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uri` (`uri`),
  KEY `code` (`code`),
  KEY `date` (`date`),
  KEY `count` (`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `http_error_log`
--

LOCK TABLES `http_error_log` WRITE;
/*!40000 ALTER TABLE `http_error_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `http_error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `importconfig_shares`
--

DROP TABLE IF EXISTS `importconfig_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `importconfig_shares` (
  `importConfigId` int NOT NULL,
  `sharedWithUserId` int NOT NULL,
  PRIMARY KEY (`importConfigId`,`sharedWithUserId`),
  KEY `sharedWithUserId` (`sharedWithUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `importconfig_shares`
--

LOCK TABLES `importconfig_shares` WRITE;
/*!40000 ALTER TABLE `importconfig_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `importconfig_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `importconfigs`
--

DROP TABLE IF EXISTS `importconfigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `importconfigs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ownerId` int DEFAULT NULL,
  `classId` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `config` longtext,
  `description` longtext,
  `creationDate` int DEFAULT NULL,
  `modificationDate` int DEFAULT NULL,
  `shareGlobally` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ownerId` (`ownerId`),
  KEY `classId` (`classId`),
  KEY `shareGlobally` (`shareGlobally`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `importconfigs`
--

LOCK TABLES `importconfigs` WRITE;
/*!40000 ALTER TABLE `importconfigs` DISABLE KEYS */;
/*!40000 ALTER TABLE `importconfigs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lock_keys`
--

DROP TABLE IF EXISTS `lock_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lock_keys` (
  `key_id` varchar(64) NOT NULL,
  `key_token` varchar(44) NOT NULL,
  `key_expiration` int unsigned NOT NULL,
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lock_keys`
--

LOCK TABLES `lock_keys` WRITE;
/*!40000 ALTER TABLE `lock_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `lock_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locks`
--

DROP TABLE IF EXISTS `locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locks` (
  `id` varchar(150) NOT NULL DEFAULT '',
  `date` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locks`
--

LOCK TABLES `locks` WRITE;
/*!40000 ALTER TABLE `locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `cid` int DEFAULT NULL,
  `ctype` enum('asset','document','object') DEFAULT NULL,
  `date` int DEFAULT NULL,
  `user` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  KEY `cid_ctype` (`cid`,`ctype`),
  KEY `date` (`date`),
  KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes_data`
--

DROP TABLE IF EXISTS `notes_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes_data` (
  `id` int NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `type` enum('text','date','document','asset','object','bool') DEFAULT NULL,
  `data` text,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes_data`
--

LOCK TABLES `notes_data` WRITE;
/*!40000 ALTER TABLE `notes_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'info',
  `title` varchar(250) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int DEFAULT NULL,
  `recipient` int NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modificationDate` timestamp NULL DEFAULT NULL,
  `linkedElementType` enum('document','asset','object') DEFAULT NULL,
  `linkedElement` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `object_1`
--

DROP TABLE IF EXISTS `object_1`;
/*!50001 DROP VIEW IF EXISTS `object_1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `object_1` AS SELECT 
 1 AS `oo_id`,
 1 AS `oo_classId`,
 1 AS `oo_className`,
 1 AS `name`,
 1 AS `description`,
 1 AS `active`,
 1 AS `image`,
 1 AS `o_id`,
 1 AS `o_parentId`,
 1 AS `o_type`,
 1 AS `o_key`,
 1 AS `o_path`,
 1 AS `o_index`,
 1 AS `o_published`,
 1 AS `o_creationDate`,
 1 AS `o_modificationDate`,
 1 AS `o_userOwner`,
 1 AS `o_userModification`,
 1 AS `o_classId`,
 1 AS `o_className`,
 1 AS `o_childrenSortBy`,
 1 AS `o_childrenSortOrder`,
 1 AS `o_versionCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `object_2`
--

DROP TABLE IF EXISTS `object_2`;
/*!50001 DROP VIEW IF EXISTS `object_2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `object_2` AS SELECT 
 1 AS `oo_id`,
 1 AS `oo_classId`,
 1 AS `oo_className`,
 1 AS `name`,
 1 AS `description`,
 1 AS `sku`,
 1 AS `image`,
 1 AS `weight__value`,
 1 AS `weight__unit`,
 1 AS `price__value`,
 1 AS `price__unit`,
 1 AS `manufacturedOn`,
 1 AS `expiry`,
 1 AS `categoryType`,
 1 AS `o_id`,
 1 AS `o_parentId`,
 1 AS `o_type`,
 1 AS `o_key`,
 1 AS `o_path`,
 1 AS `o_index`,
 1 AS `o_published`,
 1 AS `o_creationDate`,
 1 AS `o_modificationDate`,
 1 AS `o_userOwner`,
 1 AS `o_userModification`,
 1 AS `o_classId`,
 1 AS `o_className`,
 1 AS `o_childrenSortBy`,
 1 AS `o_childrenSortOrder`,
 1 AS `o_versionCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `object_3`
--

DROP TABLE IF EXISTS `object_3`;
/*!50001 DROP VIEW IF EXISTS `object_3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `object_3` AS SELECT 
 1 AS `oo_id`,
 1 AS `oo_classId`,
 1 AS `oo_className`,
 1 AS `name`,
 1 AS `file__id`,
 1 AS `file__type`,
 1 AS `status`,
 1 AS `o_id`,
 1 AS `o_parentId`,
 1 AS `o_type`,
 1 AS `o_key`,
 1 AS `o_path`,
 1 AS `o_index`,
 1 AS `o_published`,
 1 AS `o_creationDate`,
 1 AS `o_modificationDate`,
 1 AS `o_userOwner`,
 1 AS `o_userModification`,
 1 AS `o_classId`,
 1 AS `o_className`,
 1 AS `o_childrenSortBy`,
 1 AS `o_childrenSortOrder`,
 1 AS `o_versionCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `object_brick_query_CookiePack_2`
--

DROP TABLE IF EXISTS `object_brick_query_CookiePack_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_brick_query_CookiePack_2` (
  `o_id` int NOT NULL DEFAULT '0',
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `packOf` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`o_id`,`fieldname`),
  KEY `o_id` (`o_id`),
  KEY `fieldname` (`fieldname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_brick_query_CookiePack_2`
--

LOCK TABLES `object_brick_query_CookiePack_2` WRITE;
/*!40000 ALTER TABLE `object_brick_query_CookiePack_2` DISABLE KEYS */;
INSERT INTO `object_brick_query_CookiePack_2` VALUES (9,'productType','Pack of 8');
/*!40000 ALTER TABLE `object_brick_query_CookiePack_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_brick_query_MuffinFlavour_2`
--

DROP TABLE IF EXISTS `object_brick_query_MuffinFlavour_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_brick_query_MuffinFlavour_2` (
  `o_id` int NOT NULL DEFAULT '0',
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `flavour` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`o_id`,`fieldname`),
  KEY `o_id` (`o_id`),
  KEY `fieldname` (`fieldname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_brick_query_MuffinFlavour_2`
--

LOCK TABLES `object_brick_query_MuffinFlavour_2` WRITE;
/*!40000 ALTER TABLE `object_brick_query_MuffinFlavour_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_brick_query_MuffinFlavour_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_brick_store_CookiePack_2`
--

DROP TABLE IF EXISTS `object_brick_store_CookiePack_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_brick_store_CookiePack_2` (
  `o_id` int NOT NULL DEFAULT '0',
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `packOf` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`o_id`,`fieldname`),
  KEY `o_id` (`o_id`),
  KEY `fieldname` (`fieldname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_brick_store_CookiePack_2`
--

LOCK TABLES `object_brick_store_CookiePack_2` WRITE;
/*!40000 ALTER TABLE `object_brick_store_CookiePack_2` DISABLE KEYS */;
INSERT INTO `object_brick_store_CookiePack_2` VALUES (9,'productType','Pack of 8');
/*!40000 ALTER TABLE `object_brick_store_CookiePack_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_brick_store_MuffinFlavour_2`
--

DROP TABLE IF EXISTS `object_brick_store_MuffinFlavour_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_brick_store_MuffinFlavour_2` (
  `o_id` int NOT NULL DEFAULT '0',
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `flavour` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`o_id`,`fieldname`),
  KEY `o_id` (`o_id`),
  KEY `fieldname` (`fieldname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_brick_store_MuffinFlavour_2`
--

LOCK TABLES `object_brick_store_MuffinFlavour_2` WRITE;
/*!40000 ALTER TABLE `object_brick_store_MuffinFlavour_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_brick_store_MuffinFlavour_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_query_1`
--

DROP TABLE IF EXISTS `object_query_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_query_1` (
  `oo_id` int NOT NULL DEFAULT '0',
  `oo_classId` varchar(50) DEFAULT '1',
  `oo_className` varchar(255) DEFAULT 'Category',
  `name` varchar(190) DEFAULT NULL,
  `description` longtext,
  `active` tinyint(1) DEFAULT NULL,
  `image` int DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_1`
--

LOCK TABLES `object_query_1` WRITE;
/*!40000 ALTER TABLE `object_query_1` DISABLE KEYS */;
INSERT INTO `object_query_1` VALUES (3,'1','Category','Cake','Cake is a form of sweet food made from flour, sugar, and other ingredients, that is usually baked. In their oldest forms, cakes were modifications of bread, but cakes now cover a wide range of preparations that can be simple or elaborate, and that share features with other desserts such as pastries, meringues, custards, and pies.\n\n',1,15),(8,'1','Category','Cookie','A cookie is a baked or cooked food that is typically small, flat and sweet. It usually contains flour, sugar and some type of oil or fat. It may include other ingredients such as raisins, oats, chocolate chips, nuts, etc.\n\nIn most English-speaking countries except for the United States, crunchy cookies are called biscuits',1,14),(12,'1','Category','Cakes','Delicious',1,NULL);
/*!40000 ALTER TABLE `object_query_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_query_2`
--

DROP TABLE IF EXISTS `object_query_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_query_2` (
  `oo_id` int NOT NULL DEFAULT '0',
  `oo_classId` varchar(50) DEFAULT '2',
  `oo_className` varchar(255) DEFAULT 'Product',
  `name` varchar(190) DEFAULT NULL,
  `description` longtext,
  `sku` varchar(190) DEFAULT NULL,
  `image` int DEFAULT NULL,
  `weight__value` double DEFAULT NULL,
  `weight__unit` varchar(50) DEFAULT NULL,
  `price__value` double DEFAULT NULL,
  `price__unit` varchar(50) DEFAULT NULL,
  `manufacturedOn` bigint DEFAULT NULL,
  `expiry` bigint DEFAULT NULL,
  `categoryType` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_2`
--

LOCK TABLES `object_query_2` WRITE;
/*!40000 ALTER TABLE `object_query_2` DISABLE KEYS */;
INSERT INTO `object_query_2` VALUES (7,'2','Product','Rainbow Cake','Rainbow cookies are a common Jewish deli dessert, as they are pareve. As Jewish refugees from Eastern Europe settled in New York en masse at the turn of the 20th century, they often settled in areas that also had an Italian population. It was at this point that Jewish Americans were introduced to the rainbow cookie.','1001',12,1,'kg',10,'Dollar',1617301800,1617388200,'Cake'),(9,'2','Product','Red Velvet Cookies','As easy to make as your favorite chocolate chip recipe, these cookies pack the fun and flavor of red velvet cake into a simple, and much faster, cookie. Super sweet and tender with a slightly fudgy center, they contain creamy white chocolate chunks that nod to the snowy frosting on the cake version.','1002',11,150,'g',8,'Dollar',1617215400,1619721000,NULL);
/*!40000 ALTER TABLE `object_query_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_query_3`
--

DROP TABLE IF EXISTS `object_query_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_query_3` (
  `oo_id` int NOT NULL DEFAULT '0',
  `oo_classId` varchar(50) DEFAULT '3',
  `oo_className` varchar(255) DEFAULT 'Import',
  `name` varchar(190) DEFAULT NULL,
  `file__id` int DEFAULT NULL,
  `file__type` enum('document','asset','object') DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_3`
--

LOCK TABLES `object_query_3` WRITE;
/*!40000 ALTER TABLE `object_query_3` DISABLE KEYS */;
INSERT INTO `object_query_3` VALUES (11,'3','Import','Category',18,'asset',NULL);
/*!40000 ALTER TABLE `object_query_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_1`
--

DROP TABLE IF EXISTS `object_relations_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_relations_1` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `src_id` int NOT NULL DEFAULT '0',
  `dest_id` int NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `forward_lookup` (`src_id`,`ownertype`,`ownername`,`position`),
  KEY `reverse_lookup` (`dest_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_relations_1`
--

LOCK TABLES `object_relations_1` WRITE;
/*!40000 ALTER TABLE `object_relations_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_relations_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_2`
--

DROP TABLE IF EXISTS `object_relations_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_relations_2` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `src_id` int NOT NULL DEFAULT '0',
  `dest_id` int NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `forward_lookup` (`src_id`,`ownertype`,`ownername`,`position`),
  KEY `reverse_lookup` (`dest_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_relations_2`
--

LOCK TABLES `object_relations_2` WRITE;
/*!40000 ALTER TABLE `object_relations_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_relations_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_3`
--

DROP TABLE IF EXISTS `object_relations_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_relations_3` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `src_id` int NOT NULL DEFAULT '0',
  `dest_id` int NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `forward_lookup` (`src_id`,`ownertype`,`ownername`,`position`),
  KEY `reverse_lookup` (`dest_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_relations_3`
--

LOCK TABLES `object_relations_3` WRITE;
/*!40000 ALTER TABLE `object_relations_3` DISABLE KEYS */;
INSERT INTO `object_relations_3` VALUES (1,11,18,'asset','file',0,'object','','0');
/*!40000 ALTER TABLE `object_relations_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_1`
--

DROP TABLE IF EXISTS `object_store_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_store_1` (
  `oo_id` int NOT NULL DEFAULT '0',
  `name` varchar(190) DEFAULT NULL,
  `description` longtext,
  `active` tinyint(1) DEFAULT NULL,
  `image` int DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_1`
--

LOCK TABLES `object_store_1` WRITE;
/*!40000 ALTER TABLE `object_store_1` DISABLE KEYS */;
INSERT INTO `object_store_1` VALUES (3,'Cake','Cake is a form of sweet food made from flour, sugar, and other ingredients, that is usually baked. In their oldest forms, cakes were modifications of bread, but cakes now cover a wide range of preparations that can be simple or elaborate, and that share features with other desserts such as pastries, meringues, custards, and pies.\n\n',1,15),(8,'Cookie','A cookie is a baked or cooked food that is typically small, flat and sweet. It usually contains flour, sugar and some type of oil or fat. It may include other ingredients such as raisins, oats, chocolate chips, nuts, etc.\n\nIn most English-speaking countries except for the United States, crunchy cookies are called biscuits',1,14),(12,'Cakes','Delicious',1,NULL);
/*!40000 ALTER TABLE `object_store_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_2`
--

DROP TABLE IF EXISTS `object_store_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_store_2` (
  `oo_id` int NOT NULL DEFAULT '0',
  `name` varchar(190) DEFAULT NULL,
  `description` longtext,
  `sku` varchar(190) DEFAULT NULL,
  `image` int DEFAULT NULL,
  `weight__value` double DEFAULT NULL,
  `weight__unit` varchar(50) DEFAULT NULL,
  `price__value` double DEFAULT NULL,
  `price__unit` varchar(50) DEFAULT NULL,
  `manufacturedOn` bigint DEFAULT NULL,
  `expiry` bigint DEFAULT NULL,
  `categoryType` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_2`
--

LOCK TABLES `object_store_2` WRITE;
/*!40000 ALTER TABLE `object_store_2` DISABLE KEYS */;
INSERT INTO `object_store_2` VALUES (7,'Rainbow Cake','Rainbow cookies are a common Jewish deli dessert, as they are pareve. As Jewish refugees from Eastern Europe settled in New York en masse at the turn of the 20th century, they often settled in areas that also had an Italian population. It was at this point that Jewish Americans were introduced to the rainbow cookie.','1001',12,1,'kg',10,'Dollar',1617301800,1617388200,'Cake'),(9,'Red Velvet Cookies','As easy to make as your favorite chocolate chip recipe, these cookies pack the fun and flavor of red velvet cake into a simple, and much faster, cookie. Super sweet and tender with a slightly fudgy center, they contain creamy white chocolate chunks that nod to the snowy frosting on the cake version.','1002',11,150,'g',8,'Dollar',1617215400,1619721000,NULL);
/*!40000 ALTER TABLE `object_store_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_3`
--

DROP TABLE IF EXISTS `object_store_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_store_3` (
  `oo_id` int NOT NULL DEFAULT '0',
  `name` varchar(190) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_3`
--

LOCK TABLES `object_store_3` WRITE;
/*!40000 ALTER TABLE `object_store_3` DISABLE KEYS */;
INSERT INTO `object_store_3` VALUES (11,'Category',NULL);
/*!40000 ALTER TABLE `object_store_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_url_slugs`
--

DROP TABLE IF EXISTS `object_url_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_url_slugs` (
  `objectId` int NOT NULL DEFAULT '0',
  `classId` varchar(50) NOT NULL DEFAULT '0',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  `slug` varchar(765) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `siteId` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`slug`,`siteId`),
  KEY `index` (`index`),
  KEY `objectId` (`objectId`),
  KEY `classId` (`classId`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `ownername` (`ownername`),
  KEY `slug` (`slug`),
  KEY `siteId` (`siteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_url_slugs`
--

LOCK TABLES `object_url_slugs` WRITE;
/*!40000 ALTER TABLE `object_url_slugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_url_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objects` (
  `o_id` int unsigned NOT NULL AUTO_INCREMENT,
  `o_parentId` int unsigned DEFAULT NULL,
  `o_type` enum('object','folder','variant') DEFAULT NULL,
  `o_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `o_path` varchar(765) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `o_index` int unsigned DEFAULT '0',
  `o_published` tinyint unsigned DEFAULT '1',
  `o_creationDate` int unsigned DEFAULT NULL,
  `o_modificationDate` int unsigned DEFAULT NULL,
  `o_userOwner` int unsigned DEFAULT NULL,
  `o_userModification` int unsigned DEFAULT NULL,
  `o_classId` varchar(50) DEFAULT NULL,
  `o_className` varchar(255) DEFAULT NULL,
  `o_childrenSortBy` enum('key','index') DEFAULT NULL,
  `o_childrenSortOrder` enum('ASC','DESC') DEFAULT NULL,
  `o_versionCount` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`o_id`),
  UNIQUE KEY `fullpath` (`o_path`,`o_key`),
  KEY `key` (`o_key`),
  KEY `index` (`o_index`),
  KEY `published` (`o_published`),
  KEY `parentId` (`o_parentId`),
  KEY `type` (`o_type`),
  KEY `o_modificationDate` (`o_modificationDate`),
  KEY `o_classId` (`o_classId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects`
--

LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES (1,0,'folder','','/',999999,1,1617205500,1617205500,1,1,NULL,NULL,NULL,NULL,0),(3,4,'object','Cake','/Category/',0,1,1617255697,1617355037,2,2,'1','Category',NULL,NULL,9),(4,1,'folder','Category','/',NULL,1,1617257799,1617257798,2,2,NULL,NULL,NULL,NULL,2),(6,1,'folder','Product','/',NULL,1,1617262101,1617262100,2,2,NULL,NULL,NULL,NULL,2),(7,6,'object','Rainbow Cake','/Product/',0,1,1617262137,1617355054,2,2,'2','Product',NULL,NULL,28),(8,4,'object','Cookie','/Category/',0,1,1617271341,1617355044,2,2,'1','Category',NULL,NULL,3),(9,6,'object','RedVelvet Cookies','/Product/',0,1,1617271617,1617355064,2,2,'2','Product',NULL,NULL,4),(10,1,'folder','Import','/',NULL,1,1617470110,1617470109,2,2,NULL,NULL,NULL,NULL,2),(11,10,'object','categoryImport','/Import/',0,1,1617470122,1617470377,2,2,'3','Import',NULL,NULL,2),(12,4,'object','101','/Category/',NULL,1,1617470487,1617470487,0,0,'1','Category',NULL,NULL,1);
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pimcore_migrations`
--

DROP TABLE IF EXISTS `pimcore_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pimcore_migrations` (
  `migration_set` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `migrated_at` datetime NOT NULL,
  PRIMARY KEY (`migration_set`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pimcore_migrations`
--

LOCK TABLES `pimcore_migrations` WRITE;
/*!40000 ALTER TABLE `pimcore_migrations` DISABLE KEYS */;
INSERT INTO `pimcore_migrations` VALUES ('pimcore_core','20180724144005','2021-03-31 19:14:46'),('pimcore_core','20180830113528','2021-03-31 19:14:46'),('pimcore_core','20180830122128','2021-03-31 19:14:46'),('pimcore_core','20180904201947','2021-03-31 19:14:46'),('pimcore_core','20180906142115','2021-03-31 19:14:46'),('pimcore_core','20180907115436','2021-03-31 19:14:46'),('pimcore_core','20180912140913','2021-03-31 19:14:46'),('pimcore_core','20180913132106','2021-03-31 19:14:46'),('pimcore_core','20180924111736','2021-03-31 19:14:46'),('pimcore_core','20181008132414','2021-03-31 19:14:46'),('pimcore_core','20181009135158','2021-03-31 19:14:46'),('pimcore_core','20181115114003','2021-03-31 19:14:46'),('pimcore_core','20181126094412','2021-03-31 19:14:46'),('pimcore_core','20181126144341','2021-03-31 19:14:46'),('pimcore_core','20181128074035','2021-03-31 19:14:46'),('pimcore_core','20181128112320','2021-03-31 19:14:46'),('pimcore_core','20181214145532','2021-03-31 19:14:46'),('pimcore_core','20190102143436','2021-03-31 19:14:46'),('pimcore_core','20190102153226','2021-03-31 19:14:46'),('pimcore_core','20190108131401','2021-03-31 19:14:46'),('pimcore_core','20190124105627','2021-03-31 19:14:46'),('pimcore_core','20190131074054','2021-03-31 19:14:46'),('pimcore_core','20190131095936','2021-03-31 19:14:46'),('pimcore_core','20190320133439','2021-03-31 19:14:46'),('pimcore_core','20190402073052','2021-03-31 19:14:46'),('pimcore_core','20190403120728','2021-03-31 19:14:46'),('pimcore_core','20190405112707','2021-03-31 19:14:46'),('pimcore_core','20190408084129','2021-03-31 19:14:46'),('pimcore_core','20190508074339','2021-03-31 19:14:46'),('pimcore_core','20190515130651','2021-03-31 19:14:46'),('pimcore_core','20190520151448','2021-03-31 19:14:46'),('pimcore_core','20190522130545','2021-03-31 19:14:46'),('pimcore_core','20190527121800','2021-03-31 19:14:46'),('pimcore_core','20190618154000','2021-03-31 19:14:46'),('pimcore_core','20190701141857','2021-03-31 19:14:46'),('pimcore_core','20190708175236','2021-03-31 19:14:46'),('pimcore_core','20190729085052','2021-03-31 19:14:46'),('pimcore_core','20190802090149','2021-03-31 19:14:46'),('pimcore_core','20190806160450','2021-03-31 19:14:46'),('pimcore_core','20190807121356','2021-03-31 19:14:46'),('pimcore_core','20190828142756','2021-03-31 19:14:46'),('pimcore_core','20190902085052','2021-03-31 19:14:46'),('pimcore_core','20190904154339','2021-03-31 19:14:46'),('pimcore_core','20191015131700','2021-03-31 19:14:46'),('pimcore_core','20191107141816','2021-03-31 19:14:46'),('pimcore_core','20191114123638','2021-03-31 19:14:46'),('pimcore_core','20191114132014','2021-03-31 19:14:46'),('pimcore_core','20191121150326','2021-03-31 19:14:46'),('pimcore_core','20191125135853','2021-03-31 19:14:46'),('pimcore_core','20191125200416','2021-03-31 19:14:46'),('pimcore_core','20191126130004','2021-03-31 19:14:46'),('pimcore_core','20191208175348','2021-03-31 19:14:46'),('pimcore_core','20191213115045','2021-03-31 19:14:46'),('pimcore_core','20191218073528','2021-03-31 19:14:46'),('pimcore_core','20191230103524','2021-03-31 19:14:46'),('pimcore_core','20191230104529','2021-03-31 19:14:46'),('pimcore_core','20200113120101','2021-03-31 19:14:46'),('pimcore_core','20200116181758','2021-03-31 19:14:46'),('pimcore_core','20200121095650','2021-03-31 19:14:46'),('pimcore_core','20200121131304','2021-03-31 19:14:46'),('pimcore_core','20200127102432','2021-03-31 19:14:46'),('pimcore_core','20200129102132','2021-03-31 19:14:46'),('pimcore_core','20200210101048','2021-03-31 19:14:46'),('pimcore_core','20200210164037','2021-03-31 19:14:46'),('pimcore_core','20200211115044','2021-03-31 19:14:46'),('pimcore_core','20200212130011','2021-03-31 19:14:46'),('pimcore_core','20200218104052','2021-03-31 19:14:46'),('pimcore_core','20200226102938','2021-03-31 19:14:46'),('pimcore_core','20200310122412','2021-03-31 19:14:46'),('pimcore_core','20200313092019','2021-03-31 19:14:46'),('pimcore_core','20200317163018','2021-03-31 19:14:46'),('pimcore_core','20200318100042','2021-03-31 19:14:46'),('pimcore_core','20200324141723','2021-03-31 19:14:46'),('pimcore_core','20200407120641','2021-03-31 19:14:46'),('pimcore_core','20200407132737','2021-03-31 19:14:46'),('pimcore_core','20200407145422','2021-03-31 19:14:46'),('pimcore_core','20200410112354','2021-03-31 19:14:46'),('pimcore_core','20200421142950','2021-03-31 19:14:46'),('pimcore_core','20200422090352','2021-03-31 19:14:46'),('pimcore_core','20200428082346','2021-03-31 19:14:46'),('pimcore_core','20200428111313','2021-03-31 19:14:46'),('pimcore_core','20200529121630','2021-03-31 19:14:46'),('pimcore_core','20200604110336','2021-03-31 19:14:46'),('pimcore_core','20200619071650','2021-03-31 19:14:46'),('pimcore_core','20200703093410','2021-03-31 19:14:46'),('pimcore_core','20200721123847','2021-03-31 19:14:46'),('pimcore_core','20200807105448','2021-03-31 19:14:46'),('pimcore_core','20200812160035','2021-03-31 19:14:46'),('pimcore_core','20200817133132','2021-03-31 19:14:46'),('pimcore_core','20200820151104','2021-03-31 19:14:46'),('pimcore_core','20200828091305','2021-03-31 19:14:46'),('pimcore_core','20200902111642','2021-03-31 19:14:46'),('pimcore_core','20201001133558','2021-03-31 19:14:46'),('pimcore_core','20201207132025','2021-03-31 19:14:46'),('pimcore_core','20210211152319','2021-03-31 19:14:46');
/*!40000 ALTER TABLE `pimcore_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `cid` int unsigned NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `cpath` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(190) NOT NULL DEFAULT '',
  `type` enum('text','document','asset','object','bool','select') DEFAULT NULL,
  `data` text,
  `inheritable` tinyint unsigned DEFAULT '1',
  PRIMARY KEY (`cid`,`ctype`,`name`),
  KEY `getall` (`cpath`,`ctype`,`inheritable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (2,'document','/Home','navigation_name','text','Home',0);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quantityvalue_units`
--

DROP TABLE IF EXISTS `quantityvalue_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quantityvalue_units` (
  `id` varchar(50) NOT NULL,
  `group` varchar(50) DEFAULT NULL,
  `abbreviation` varchar(20) DEFAULT NULL,
  `longname` varchar(250) DEFAULT NULL,
  `baseunit` varchar(50) DEFAULT NULL,
  `factor` double DEFAULT NULL,
  `conversionOffset` double DEFAULT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `converter` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_baseunit` (`baseunit`),
  CONSTRAINT `fk_baseunit` FOREIGN KEY (`baseunit`) REFERENCES `quantityvalue_units` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quantityvalue_units`
--

LOCK TABLES `quantityvalue_units` WRITE;
/*!40000 ALTER TABLE `quantityvalue_units` DISABLE KEYS */;
INSERT INTO `quantityvalue_units` VALUES ('Dollar',NULL,'$','Dollar','Dollar',NULL,NULL,NULL,''),('g',NULL,'g','Gram','g',NULL,NULL,NULL,''),('kg',NULL,'kg','Kilo Gram','kg',NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `quantityvalue_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recyclebin`
--

DROP TABLE IF EXISTS `recyclebin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recyclebin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `subtype` varchar(20) DEFAULT NULL,
  `path` varchar(765) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `date` int unsigned DEFAULT NULL,
  `deletedby` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recyclebin`
--

LOCK TABLES `recyclebin` WRITE;
/*!40000 ALTER TABLE `recyclebin` DISABLE KEYS */;
INSERT INTO `recyclebin` VALUES (1,'object','folder','/Product',1,1617261401,'admin'),(2,'object','object','/Rainbow Cake',1,1617262217,'admin'),(3,'asset','image','/MyAssets/bakerylogo.jpg',1,1617372670,'admin');
/*!40000 ALTER TABLE `recyclebin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirects`
--

DROP TABLE IF EXISTS `redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redirects` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('entire_uri','path_query','path','auto_create') NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `sourceSite` int DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `targetSite` int DEFAULT NULL,
  `statusCode` varchar(3) DEFAULT NULL,
  `priority` int DEFAULT '0',
  `regex` tinyint(1) DEFAULT NULL,
  `passThroughParameters` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `expiry` int unsigned DEFAULT NULL,
  `creationDate` int unsigned DEFAULT '0',
  `modificationDate` int unsigned DEFAULT '0',
  `userOwner` int unsigned DEFAULT NULL,
  `userModification` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`),
  KEY `routing_lookup` (`active`,`regex`,`sourceSite`,`source`,`type`,`expiry`,`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redirects`
--

LOCK TABLES `redirects` WRITE;
/*!40000 ALTER TABLE `redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanitycheck`
--

DROP TABLE IF EXISTS `sanitycheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanitycheck` (
  `id` int unsigned NOT NULL,
  `type` enum('document','asset','object') NOT NULL,
  PRIMARY KEY (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanitycheck`
--

LOCK TABLES `sanitycheck` WRITE;
/*!40000 ALTER TABLE `sanitycheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanitycheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_tasks`
--

DROP TABLE IF EXISTS `schedule_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_tasks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cid` int unsigned DEFAULT NULL,
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `date` int unsigned DEFAULT NULL,
  `action` enum('publish','unpublish','delete','publish-version') DEFAULT NULL,
  `version` bigint unsigned DEFAULT NULL,
  `active` tinyint unsigned DEFAULT '0',
  `userId` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype` (`ctype`),
  KEY `active` (`active`),
  KEY `version` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_tasks`
--

LOCK TABLES `schedule_tasks` WRITE;
/*!40000 ALTER TABLE `schedule_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_backend_data`
--

DROP TABLE IF EXISTS `search_backend_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_backend_data` (
  `id` int NOT NULL,
  `fullpath` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `maintype` varchar(8) NOT NULL DEFAULT '',
  `type` varchar(20) DEFAULT NULL,
  `subtype` varchar(190) DEFAULT NULL,
  `published` tinyint unsigned DEFAULT NULL,
  `creationDate` int unsigned DEFAULT NULL,
  `modificationDate` int unsigned DEFAULT NULL,
  `userOwner` int DEFAULT NULL,
  `userModification` int DEFAULT NULL,
  `data` longtext,
  `properties` text,
  PRIMARY KEY (`id`,`maintype`),
  KEY `fullpath` (`fullpath`),
  KEY `maintype` (`maintype`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `published` (`published`),
  FULLTEXT KEY `fulltext` (`data`,`properties`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_backend_data`
--

LOCK TABLES `search_backend_data` WRITE;
/*!40000 ALTER TABLE `search_backend_data` DISABLE KEYS */;
INSERT INTO `search_backend_data` VALUES (1,'/','asset','folder','folder',1,1617205499,1617355011,1,2,'ID: 1  \nPath: /  \n',''),(2,'/_default_upload_bucket','asset','folder','folder',1,1617255410,1617255410,1,0,'ID: 2  \nPath: /_default_upload_bucket  \n_default_upload_bucket default upload bucket',''),(2,'/Home','document','page','page',1,1617355088,1617355117,2,2,'ID: 2  \nPath: /Home  \nHome Home Home','navigation_name:Home '),(3,'/MyAssets/raibowcake.jpeg','asset','image','image',1,1617255411,1617371771,2,2,'ID: 3  \nPath: /MyAssets/raibowcake.jpeg  \nraibowcake.jpeg MyAssets raibowcake jpeg',''),(3,'/Category/Cake','object','object','Category',1,1617255697,1617355037,2,2,'ID: 3  \nPath: /Category/Cake  \nCake Cake Cake form sweet food made from flour sugar and other ingredients that usually baked. their oldest forms cakes were modifications bread but cakes now cover wide range preparations that can simple elaborate and that share features with other desserts such pastries meringues custards and pies. Category',''),(4,'/MyAssets/raibowcake_1.jpeg','asset','image','image',1,1617255650,1617371771,2,2,'ID: 4  \nPath: /MyAssets/raibowcake_1.jpeg  \nraibowcake_1.jpeg MyAssets raibowcake jpeg',''),(4,'/Category','object','folder','folder',1,1617257799,1617257798,2,2,'ID: 4  \nPath: /Category  \nCategory Category',''),(5,'/MyAssets/cake category.jpg','asset','image','image',1,1617256052,1617371771,2,2,'ID: 5  \nPath: /MyAssets/cake category.jpg  \ncake category.jpg MyAssets cake category jpg',''),(6,'/MyAssets/raibowcake_2.jpeg','asset','image','image',1,1617257506,1617371771,2,2,'ID: 6  \nPath: /MyAssets/raibowcake_2.jpeg  \nraibowcake_2.jpeg MyAssets raibowcake jpeg',''),(6,'/Product','object','folder','folder',1,1617262101,1617262100,2,2,'ID: 6  \nPath: /Product  \nProduct Product',''),(7,'/MyAssets/raibowcake_3.jpeg','asset','image','image',1,1617262179,1617371772,2,2,'ID: 7  \nPath: /MyAssets/raibowcake_3.jpeg  \nraibowcake_3.jpeg MyAssets raibowcake jpeg',''),(7,'/Product/Rainbow Cake','object','object','Product',1,1617262137,1617355054,2,2,'ID: 7  \nPath: /Product/Rainbow Cake  \nRainbow Cake Rainbow Cake Rainbow cookies are common Jewish deli dessert they are pareve. Jewish refugees from Eastern Europe settled New York masse the turn the 20th century they often settled areas that also had Italian population. was this point that Jewish Americans were introduced the rainbow cookie. 1001 Cake Product',''),(8,'/MyAssets/cookie category.jpeg','asset','image','image',1,1617271499,1617371771,2,2,'ID: 8  \nPath: /MyAssets/cookie category.jpeg  \ncookie category.jpeg MyAssets cookie category jpeg',''),(8,'/Category/Cookie','object','object','Category',1,1617271341,1617355044,2,2,'ID: 8  \nPath: /Category/Cookie  \nCookie Cookie cookie baked cooked food that typically small flat and sweet. usually contains flour sugar and some type oil fat. may include other ingredients such raisins oats chocolate chips nuts etc. most English-speaking countries except for the United States crunchy cookies are called biscuits Category Cookie',''),(9,'/MyAssets/RedVelvet.jpg','asset','image','image',1,1617271779,1617371771,2,2,'ID: 9  \nPath: /MyAssets/RedVelvet.jpg  \nRedVelvet.jpg MyAssets RedVelvet jpg',''),(9,'/Product/RedVelvet Cookies','object','object','Product',1,1617271617,1617355064,2,2,'ID: 9  \nPath: /Product/RedVelvet Cookies  \nRedVelvet Cookies Red Velvet Cookies easy make your favorite chocolate chip recipe these cookies pack the fun and flavor red velvet cake into simple and much faster cookie. Super sweet and tender with slightly fudgy center they contain creamy white chocolate chunks that nod the snowy frosting the cake version. 1002 150 Pack Product RedVelvet Cookies',''),(10,'/Import','object','folder','folder',1,1617470110,1617470109,2,2,'ID: 10  \nPath: /Import  \nImport Import',''),(11,'/MyAssets/RedVelvetCookies.jpeg','asset','image','image',1,1617354958,1617371752,2,2,'ID: 11  \nPath: /MyAssets/RedVelvetCookies.jpeg  \nRedVelvetCookies.jpeg FileName RedVelvetCookies.jpeg FileDateTime 1617354958 FileSize 46065 FileType MimeType image/jpeg SectionsFound MyAssets RedVelvetCookies jpeg',''),(11,'/Import/categoryImport','object','object','Import',1,1617470122,1617470377,2,2,'ID: 11  \nPath: /Import/categoryImport  \ncategoryImport Category Import categoryImport',''),(12,'/MyAssets/RainbowCake.jpeg','asset','image','image',1,1617354971,1617371752,2,2,'ID: 12  \nPath: /MyAssets/RainbowCake.jpeg  \nRainbowCake.jpeg FileName RainbowCake.jpeg FileDateTime 1617354971 FileSize 15362 FileType MimeType image/jpeg SectionsFound MyAssets RainbowCake jpeg',''),(12,'/Category/101','object','object','Category',1,1617470487,1617470487,0,0,'ID: 12  \nPath: /Category/101  \n101 Cakes Delicious Category 101',''),(13,'/MyAssets/Muffinss.jpeg','asset','image','image',1,1617354980,1617371752,2,2,'ID: 13  \nPath: /MyAssets/Muffinss.jpeg  \nMuffinss.jpeg FileName Muffinss.jpeg FileDateTime 1617354980 FileSize 466336 FileType MimeType image/jpeg SectionsFound MyAssets Muffinss jpeg',''),(14,'/MyAssets/Cookiess.jpeg','asset','image','image',1,1617354994,1617371752,2,2,'ID: 14  \nPath: /MyAssets/Cookiess.jpeg  \nCookiess.jpeg FileName Cookiess.jpeg FileDateTime 1617354994 FileSize 13015 FileType MimeType image/jpeg SectionsFound MyAssets Cookiess jpeg',''),(15,'/MyAssets/Cakes.jpeg','asset','image','image',1,1617355005,1617371752,2,2,'ID: 15  \nPath: /MyAssets/Cakes.jpeg  \nCakes.jpeg FileName Cakes.jpeg FileDateTime 1617355005 FileSize 92785 FileType MimeType image/jpeg SectionsFound MyAssets Cakes jpeg',''),(16,'/MyAssets','asset','folder','folder',1,1617371728,1617371728,2,2,'ID: 16  \nPath: /MyAssets  \nMyAssets MyAssets',''),(17,'/MyAssets/bakerylog.jpeg','asset','image','image',1,1617372703,1617372703,2,2,'ID: 17  \nPath: /MyAssets/bakerylog.jpeg  \nbakerylog.jpeg FileName bakerylog.jpeg FileDateTime 1617372703 FileSize 207794 FileType MimeType image/jpeg SectionsFound MyAssets bakerylog jpeg',''),(18,'/_default_upload_bucket/categoryimport.csv','asset','text','text',1,1617470148,1617470148,2,2,'ID: 18  \nPath: /_default_upload_bucket/categoryimport.csv  \ncategoryimport.csv key name description active image 101 Cakes Delicious /myassets/Cakes.jpeg default upload bucket categoryimport csv','');
/*!40000 ALTER TABLE `search_backend_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sites` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `mainDomain` varchar(255) DEFAULT NULL,
  `domains` text,
  `rootId` int unsigned DEFAULT NULL,
  `errorDocument` varchar(255) DEFAULT NULL,
  `redirectToMainDomain` tinyint(1) DEFAULT NULL,
  `creationDate` int unsigned DEFAULT '0',
  `modificationDate` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rootId` (`rootId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int unsigned DEFAULT NULL,
  `idPath` varchar(190) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idPath_name` (`idPath`,`name`),
  KEY `idpath` (`idPath`),
  KEY `parentid` (`parentId`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_assignment`
--

DROP TABLE IF EXISTS `tags_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_assignment` (
  `tagid` int unsigned NOT NULL DEFAULT '0',
  `cid` int NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') NOT NULL,
  PRIMARY KEY (`tagid`,`cid`,`ctype`),
  KEY `ctype` (`ctype`),
  KEY `ctype_cid` (`cid`,`ctype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_assignment`
--

LOCK TABLES `tags_assignment` WRITE;
/*!40000 ALTER TABLE `tags_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targeting_rules`
--

DROP TABLE IF EXISTS `targeting_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `targeting_rules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `scope` varchar(50) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `prio` smallint unsigned NOT NULL DEFAULT '0',
  `conditions` longtext,
  `actions` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targeting_rules`
--

LOCK TABLES `targeting_rules` WRITE;
/*!40000 ALTER TABLE `targeting_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `targeting_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targeting_storage`
--

DROP TABLE IF EXISTS `targeting_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `targeting_storage` (
  `visitorId` varchar(100) NOT NULL,
  `scope` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text,
  `creationDate` datetime DEFAULT NULL,
  `modificationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`visitorId`,`scope`,`name`),
  KEY `targeting_storage_scope_index` (`scope`),
  KEY `targeting_storage_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targeting_storage`
--

LOCK TABLES `targeting_storage` WRITE;
/*!40000 ALTER TABLE `targeting_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `targeting_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targeting_target_groups`
--

DROP TABLE IF EXISTS `targeting_target_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `targeting_target_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `threshold` int DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targeting_target_groups`
--

LOCK TABLES `targeting_target_groups` WRITE;
/*!40000 ALTER TABLE `targeting_target_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `targeting_target_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp_store`
--

DROP TABLE IF EXISTS `tmp_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tmp_store` (
  `id` varchar(190) NOT NULL DEFAULT '',
  `tag` varchar(190) DEFAULT NULL,
  `data` longtext,
  `serialized` tinyint NOT NULL DEFAULT '0',
  `date` int unsigned DEFAULT NULL,
  `expiryDate` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag` (`tag`),
  KEY `date` (`date`),
  KEY `expiryDate` (`expiryDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_store`
--

LOCK TABLES `tmp_store` WRITE;
/*!40000 ALTER TABLE `tmp_store` DISABLE KEYS */;
INSERT INTO `tmp_store` VALUES ('thumb_10__302c06343b7b0a3b052774a8b6e14980','image-optimize-queue','image-thumbnails/MyAssets/image-thumb__10__pimcore-system-treepreview/bakerylogo@2x.jpg',0,1617371862,1617976662),('thumb_10__3e26f4f693a9d6723b0209314e3ce74c','image-optimize-queue','image-thumbnails/image-thumb__10__pimcore-system-treepreview/bakerylogo.jpg',0,1617354288,1617959088),('thumb_10__cd36ff6389da29c573ba211dbefe7761','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__10__pimcore-system-treepreview/bakerylogo@2x.jpg',0,1617371766,1617976566),('thumb_10__cf5fee81c6b38192e627e68dcff2a4b0','image-optimize-queue','image-thumbnails/image-thumb__10__pimcore-system-treepreview/bakerylogo@2x.jpg',0,1617354300,1617959100),('thumb_11__151020a1ef0e25b67b041b838c13414e','image-optimize-queue','image-thumbnails/image-thumb__11__pimcore-system-treepreview/RedVelvetCookies@2x.jpg',0,1617355015,1617959815),('thumb_11__1a1f5e360e402c187bf398645590f5b4','image-optimize-queue','image-thumbnails/image-thumb__11__pimcore-system-treepreview/RedVelvetCookies.jpg',0,1617354959,1617959759),('thumb_11__be68a6c7b965d1b9a363ac05fb3331f4','image-optimize-queue','image-thumbnails/MyAssets/image-thumb__11__pimcore-system-treepreview/RedVelvetCookies@2x.jpg',0,1617372654,1617977454),('thumb_11__cef6bad38db449f93857d0f80030b45b','image-optimize-queue','image-thumbnails/image-thumb__11__auto_6eff904a1a9a57680d726da3d5459ac7/RedVelvetCookies.png',0,1617355063,1617959863),('thumb_12__05cdf6b97becc0ff0eed639d5d955164','image-optimize-queue','image-thumbnails/MyAssets/image-thumb__12__pimcore-system-treepreview/RainbowCake@2x.jpg',0,1617372654,1617977454),('thumb_12__137d4741a84a30ff71c941e6672a9148','image-optimize-queue','image-thumbnails/image-thumb__12__pimcore-system-treepreview/RainbowCake@2x.jpg',0,1617355014,1617959814),('thumb_12__5f902b90e6369e32a1669961976d7756','image-optimize-queue','image-thumbnails/image-thumb__12__auto_6eff904a1a9a57680d726da3d5459ac7/RainbowCake.png',0,1617355052,1617959852),('thumb_12__d346fa5a18e4d04ec7cbe542064feb3f','image-optimize-queue','image-thumbnails/MyAssets/image-thumb__12__auto_6eff904a1a9a57680d726da3d5459ac7/RainbowCake.png',0,1617377667,1617982467),('thumb_12__f8f58e7172b981ed5a0566b8f92dba4f','image-optimize-queue','image-thumbnails/image-thumb__12__pimcore-system-treepreview/RainbowCake.jpg',0,1617354971,1617959771),('thumb_13__01e54e991dafc34a210983012b2d994f','image-optimize-queue','image-thumbnails/MyAssets/image-thumb__13__pimcore-system-treepreview/Muffinss@2x.jpg',0,1617372658,1617977458),('thumb_13__254e4d22f8cf8b9cdaf9ec1a1afcb4cf','image-optimize-queue','image-thumbnails/image-thumb__13__pimcore-system-treepreview/Muffinss.jpg',0,1617354980,1617959780),('thumb_13__51f2e7fed1df306ff4f26b40b0ea145f','image-optimize-queue','image-thumbnails/image-thumb__13__pimcore-system-treepreview/Muffinss@2x.jpg',0,1617355015,1617959815),('thumb_14__44984e1d29525ba331138b48a159b2c4','image-optimize-queue','image-thumbnails/image-thumb__14__pimcore-system-treepreview/Cookiess.jpg',0,1617354994,1617959794),('thumb_14__d7223c625e802316ecf96f0651067af3','image-optimize-queue','image-thumbnails/image-thumb__14__auto_6eff904a1a9a57680d726da3d5459ac7/Cookiess.png',0,1617355042,1617959842),('thumb_14__db3cea3f4f4f71387d48e3c41dd0e749','image-optimize-queue','image-thumbnails/MyAssets/image-thumb__14__pimcore-system-treepreview/Cookiess@2x.jpg',0,1617371969,1617976769),('thumb_14__e004865ca665724f01dad7387535160b','image-optimize-queue','image-thumbnails/image-thumb__14__pimcore-system-treepreview/Cookiess@2x.jpg',0,1617355014,1617959814),('thumb_15__0242d3146ea6cf8903a81d976c02feec','image-optimize-queue','image-thumbnails/MyAssets/image-thumb__15__auto_6eff904a1a9a57680d726da3d5459ac7/Cakes.png',0,1617470503,1618075303),('thumb_15__3d445b836b3f99394c7776608bf8daa8','image-optimize-queue','image-thumbnails/MyAssets/image-thumb__15__pimcore-system-treepreview/Cakes@2x.jpg',0,1617371970,1617976770),('thumb_15__6975227e43e7f5c701b89f7e0fa850ed','image-optimize-queue','image-thumbnails/image-thumb__15__pimcore-system-treepreview/Cakes@2x.jpg',0,1617355014,1617959814),('thumb_15__e413f1e3a3aa90fb083f6c0787de6433','image-optimize-queue','image-thumbnails/image-thumb__15__pimcore-system-treepreview/Cakes.jpg',0,1617355005,1617959805),('thumb_15__edee8e44bef78fedba8890917fa49dcd','image-optimize-queue','image-thumbnails/image-thumb__15__auto_6eff904a1a9a57680d726da3d5459ac7/Cakes.png',0,1617355035,1617959835),('thumb_17__3ac6a7d84d26d10b695e62b72e89ee4e','image-optimize-queue','image-thumbnails/MyAssets/image-thumb__17__pimcore-system-treepreview/bakerylog@2x.jpg',0,1617372712,1617977512),('thumb_17__662f9cb8fa387f8de97d73e1c83ca4ae','image-optimize-queue','image-thumbnails/MyAssets/image-thumb__17__pimcore-system-treepreview/bakerylog.jpg',0,1617372703,1617977503),('thumb_3__8b3559650999446eea45dc5841240391','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__3__pimcore-system-treepreview/raibowcake.jpg',0,1617255412,1617860212),('thumb_3__e3417d63bea8e988e29c755c890b7b76','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__3__auto_6eff904a1a9a57680d726da3d5459ac7/raibowcake.png',0,1617255414,1617860214),('thumb_4__61f2c6c78e677948adda6a866f3ceb8c','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__4__auto_6eff904a1a9a57680d726da3d5459ac7/raibowcake_1.png',0,1617255653,1617860453),('thumb_4__786c0e52dc0e9710fd2ef8d774510033','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__4__pimcore-system-treepreview/raibowcake_1.jpg',0,1617255651,1617860451),('thumb_5__38d9c954bdea15a6755c38d4c8d2bd13','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__5__auto_6eff904a1a9a57680d726da3d5459ac7/cake category.png',0,1617256053,1617860853),('thumb_5__47e67d13a1ce39c5012f18fd69baba2b','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__5__pimcore-system-treepreview/cake category.jpg',0,1617256052,1617860852),('thumb_6__6f3650a585026167954e55ed789d68e0','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__6__pimcore-system-treepreview/raibowcake_2.jpg',0,1617257506,1617862306),('thumb_6__7b125431a5f30360649a98fe62ef51b8','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__6__auto_6eff904a1a9a57680d726da3d5459ac7/raibowcake_2.png',0,1617257507,1617862307),('thumb_7__4cd8a225b9d1488c900f7976dd9f8818','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__7__auto_6eff904a1a9a57680d726da3d5459ac7/raibowcake_3.png',0,1617262180,1617866980),('thumb_7__8f730651e83cf2111f129e1f1abfb6dc','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__7__pimcore-system-treepreview/raibowcake_3.jpg',0,1617262179,1617866979),('thumb_8__15a1c2b600a52ed0adcce60d3e34d1d9','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__8__auto_6eff904a1a9a57680d726da3d5459ac7/cookie category.png',0,1617271500,1617876300),('thumb_8__39a81aba711719cc0967f213b4240fed','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__8__pimcore-system-treepreview/cookie category.jpg',0,1617271499,1617876299),('thumb_9__9c661f1cee2cf9c76d5acddd480a9e34','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__9__auto_6eff904a1a9a57680d726da3d5459ac7/RedVelvet.png',0,1617271780,1617876580),('thumb_9__efb243ae2d3298199fc0d024e1e46dde','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__9__pimcore-system-treepreview/RedVelvet.jpg',0,1617271779,1617876579);
/*!40000 ALTER TABLE `tmp_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking_events`
--

DROP TABLE IF EXISTS `tracking_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracking_events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(190) DEFAULT NULL,
  `action` varchar(190) DEFAULT NULL,
  `label` varchar(190) DEFAULT NULL,
  `data` varchar(190) DEFAULT NULL,
  `timestamp` int unsigned DEFAULT NULL,
  `year` int unsigned DEFAULT NULL,
  `month` int unsigned DEFAULT NULL,
  `day` int unsigned DEFAULT NULL,
  `dayOfWeek` int unsigned DEFAULT NULL,
  `dayOfYear` int unsigned DEFAULT NULL,
  `weekOfYear` int unsigned DEFAULT NULL,
  `hour` int unsigned DEFAULT NULL,
  `minute` int unsigned DEFAULT NULL,
  `second` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `year` (`year`),
  KEY `month` (`month`),
  KEY `day` (`day`),
  KEY `dayOfWeek` (`dayOfWeek`),
  KEY `dayOfYear` (`dayOfYear`),
  KEY `weekOfYear` (`weekOfYear`),
  KEY `hour` (`hour`),
  KEY `minute` (`minute`),
  KEY `second` (`second`),
  KEY `category` (`category`),
  KEY `action` (`action`),
  KEY `label` (`label`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking_events`
--

LOCK TABLES `tracking_events` WRITE;
/*!40000 ALTER TABLE `tracking_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracking_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations_admin`
--

DROP TABLE IF EXISTS `translations_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations_admin` (
  `key` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `text` text,
  `creationDate` int unsigned DEFAULT NULL,
  `modificationDate` int unsigned DEFAULT NULL,
  PRIMARY KEY (`key`,`language`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations_admin`
--

LOCK TABLES `translations_admin` WRITE;
/*!40000 ALTER TABLE `translations_admin` DISABLE KEYS */;
INSERT INTO `translations_admin` VALUES ('$','cs','',1617255610,1617255610),('$','de','',1617255610,1617255610),('$','en','',1617255610,1617255610),('$','es','',1617255610,1617255610),('$','fa','',1617255610,1617255610),('$','fr','',1617255610,1617255610),('$','hu','',1617255610,1617255610),('$','it','',1617255610,1617255610),('$','ja','',1617255610,1617255610),('$','nl','',1617255610,1617255610),('$','pl','',1617255610,1617255610),('$','pt_BR','',1617255610,1617255610),('$','ru','',1617255610,1617255610),('$','sk','',1617255610,1617255610),('$','sv','',1617255610,1617255610),('$','sv_FI','',1617255610,1617255610),('$','th','',1617255610,1617255610),('$','tr','',1617255610,1617255610),('$','uk','',1617255610,1617255610),('$','zh_Hans','',1617255610,1617255610),(':','cs','',1617368429,1617368429),(':','de','',1617368429,1617368429),(':','en','',1617368429,1617368429),(':','es','',1617368429,1617368429),(':','fa','',1617368429,1617368429),(':','fr','',1617368429,1617368429),(':','hu','',1617368429,1617368429),(':','it','',1617368429,1617368429),(':','ja','',1617368429,1617368429),(':','nl','',1617368429,1617368429),(':','pl','',1617368429,1617368429),(':','pt_BR','',1617368429,1617368429),(':','ru','',1617368429,1617368429),(':','sk','',1617368429,1617368429),(':','sv','',1617368429,1617368429),(':','sv_FI','',1617368429,1617368429),(':','th','',1617368429,1617368429),(':','tr','',1617368429,1617368429),(':','uk','',1617368429,1617368429),(':','zh_Hans','',1617368429,1617368429),('Active','cs','',1617257257,1617257257),('Active','de','',1617257257,1617257257),('Active','en','',1617257257,1617257257),('Active','es','',1617257257,1617257257),('Active','fa','',1617257257,1617257257),('Active','fr','',1617257257,1617257257),('Active','hu','',1617257257,1617257257),('Active','it','',1617257257,1617257257),('Active','ja','',1617257257,1617257257),('Active','nl','',1617257257,1617257257),('Active','pl','',1617257257,1617257257),('Active','pt_BR','',1617257257,1617257257),('Active','ru','',1617257257,1617257257),('Active','sk','',1617257257,1617257257),('Active','sv','',1617257257,1617257257),('Active','sv_FI','',1617257257,1617257257),('Active','th','',1617257257,1617257257),('Active','tr','',1617257257,1617257257),('Active','uk','',1617257257,1617257257),('Active','zh_Hans','',1617257257,1617257257),('Alt','cs','',1617347890,1617347890),('Alt','de','',1617347890,1617347890),('Alt','en','',1617347890,1617347890),('Alt','es','',1617347890,1617347890),('Alt','fa','',1617347890,1617347890),('Alt','fr','',1617347890,1617347890),('Alt','hu','',1617347890,1617347890),('Alt','it','',1617347890,1617347890),('Alt','ja','',1617347890,1617347890),('Alt','nl','',1617347890,1617347890),('Alt','pl','',1617347890,1617347890),('Alt','pt_BR','',1617347890,1617347890),('Alt','ru','',1617347890,1617347890),('Alt','sk','',1617347890,1617347890),('Alt','sv','',1617347890,1617347890),('Alt','sv_FI','',1617347890,1617347890),('Alt','th','',1617347890,1617347890),('Alt','tr','',1617347890,1617347890),('Alt','uk','',1617347890,1617347890),('Alt','zh_Hans','',1617347890,1617347890),('CSV Export','cs','',1617262152,1617262152),('CSV Export','de','',1617262152,1617262152),('CSV Export','en','',1617262152,1617262152),('CSV Export','es','',1617262152,1617262152),('CSV Export','fa','',1617262152,1617262152),('CSV Export','fr','',1617262152,1617262152),('CSV Export','hu','',1617262152,1617262152),('CSV Export','it','',1617262152,1617262152),('CSV Export','ja','',1617262152,1617262152),('CSV Export','nl','',1617262152,1617262152),('CSV Export','pl','',1617262152,1617262152),('CSV Export','pt_BR','',1617262152,1617262152),('CSV Export','ru','',1617262152,1617262152),('CSV Export','sk','',1617262152,1617262152),('CSV Export','sv','',1617262152,1617262152),('CSV Export','sv_FI','',1617262152,1617262152),('CSV Export','th','',1617262152,1617262152),('CSV Export','tr','',1617262152,1617262152),('CSV Export','uk','',1617262152,1617262152),('CSV Export','zh_Hans','',1617262152,1617262152),('Cake','cs','',1617340612,1617340612),('Cake','de','',1617340612,1617340612),('Cake','en','',1617340612,1617340612),('Cake','es','',1617340612,1617340612),('Cake','fa','',1617340612,1617340612),('Cake','fr','',1617340612,1617340612),('Cake','hu','',1617340612,1617340612),('Cake','it','',1617340612,1617340612),('Cake','ja','',1617340612,1617340612),('Cake','nl','',1617340612,1617340612),('Cake','pl','',1617340612,1617340612),('Cake','pt_BR','',1617340612,1617340612),('Cake','ru','',1617340612,1617340612),('Cake','sk','',1617340612,1617340612),('Cake','sv','',1617340612,1617340612),('Cake','sv_FI','',1617340612,1617340612),('Cake','th','',1617340612,1617340612),('Cake','tr','',1617340612,1617340612),('Cake','uk','',1617340612,1617340612),('Cake','zh_Hans','',1617340612,1617340612),('Category','cs','',1617206071,1617206071),('Category','de','',1617206071,1617206071),('Category','en','',1617206071,1617206071),('Category','es','',1617206071,1617206071),('Category','fa','',1617206071,1617206071),('Category','fr','',1617206071,1617206071),('Category','hu','',1617206071,1617206071),('Category','it','',1617206071,1617206071),('Category','ja','',1617206071,1617206071),('Category','nl','',1617206071,1617206071),('Category','pl','',1617206071,1617206071),('Category','pt_BR','',1617206071,1617206071),('Category','ru','',1617206071,1617206071),('Category','sk','',1617206071,1617206071),('Category','sv','',1617206071,1617206071),('Category','sv_FI','',1617206071,1617206071),('Category','th','',1617206071,1617206071),('Category','tr','',1617206071,1617206071),('Category','uk','',1617206071,1617206071),('Category','zh_Hans','',1617206071,1617206071),('Category Type','cs','',1617255372,1617255372),('Category Type','de','',1617255372,1617255372),('Category Type','en','',1617255372,1617255372),('Category Type','es','',1617255372,1617255372),('Category Type','fa','',1617255372,1617255372),('Category Type','fr','',1617255372,1617255372),('Category Type','hu','',1617255372,1617255372),('Category Type','it','',1617255372,1617255372),('Category Type','ja','',1617255372,1617255372),('Category Type','nl','',1617255372,1617255372),('Category Type','pl','',1617255372,1617255372),('Category Type','pt_BR','',1617255372,1617255372),('Category Type','ru','',1617255372,1617255372),('Category Type','sk','',1617255372,1617255372),('Category Type','sv','',1617255372,1617255372),('Category Type','sv_FI','',1617255372,1617255372),('Category Type','th','',1617255372,1617255372),('Category Type','tr','',1617255372,1617255372),('Category Type','uk','',1617255372,1617255372),('Category Type','zh_Hans','',1617255372,1617255372),('CategoryType','cs','',1617255727,1617255727),('CategoryType','de','',1617255727,1617255727),('CategoryType','en','',1617255727,1617255727),('CategoryType','es','',1617255727,1617255727),('CategoryType','fa','',1617255727,1617255727),('CategoryType','fr','',1617255727,1617255727),('CategoryType','hu','',1617255727,1617255727),('CategoryType','it','',1617255727,1617255727),('CategoryType','ja','',1617255727,1617255727),('CategoryType','nl','',1617255727,1617255727),('CategoryType','pl','',1617255727,1617255727),('CategoryType','pt_BR','',1617255727,1617255727),('CategoryType','ru','',1617255727,1617255727),('CategoryType','sk','',1617255727,1617255727),('CategoryType','sv','',1617255727,1617255727),('CategoryType','sv_FI','',1617255727,1617255727),('CategoryType','th','',1617255727,1617255727),('CategoryType','tr','',1617255727,1617255727),('CategoryType','uk','',1617255727,1617255727),('CategoryType','zh_Hans','',1617255727,1617255727),('Cookie','cs','',1617340612,1617340612),('Cookie','de','',1617340612,1617340612),('Cookie','en','',1617340612,1617340612),('Cookie','es','',1617340612,1617340612),('Cookie','fa','',1617340612,1617340612),('Cookie','fr','',1617340612,1617340612),('Cookie','hu','',1617340612,1617340612),('Cookie','it','',1617340612,1617340612),('Cookie','ja','',1617340612,1617340612),('Cookie','nl','',1617340612,1617340612),('Cookie','pl','',1617340612,1617340612),('Cookie','pt_BR','',1617340612,1617340612),('Cookie','ru','',1617340612,1617340612),('Cookie','sk','',1617340612,1617340612),('Cookie','sv','',1617340612,1617340612),('Cookie','sv_FI','',1617340612,1617340612),('Cookie','th','',1617340612,1617340612),('Cookie','tr','',1617340612,1617340612),('Cookie','uk','',1617340612,1617340612),('Cookie','zh_Hans','',1617340612,1617340612),('CookiePack','cs','',1617268662,1617268662),('CookiePack','de','',1617268662,1617268662),('CookiePack','en','',1617268662,1617268662),('CookiePack','es','',1617268662,1617268662),('CookiePack','fa','',1617268662,1617268662),('CookiePack','fr','',1617268662,1617268662),('CookiePack','hu','',1617268662,1617268662),('CookiePack','it','',1617268662,1617268662),('CookiePack','ja','',1617268662,1617268662),('CookiePack','nl','',1617268662,1617268662),('CookiePack','pl','',1617268662,1617268662),('CookiePack','pt_BR','',1617268662,1617268662),('CookiePack','ru','',1617268662,1617268662),('CookiePack','sk','',1617268662,1617268662),('CookiePack','sv','',1617268662,1617268662),('CookiePack','sv_FI','',1617268662,1617268662),('CookiePack','th','',1617268662,1617268662),('CookiePack','tr','',1617268662,1617268662),('CookiePack','uk','',1617268662,1617268662),('CookiePack','zh_Hans','',1617268662,1617268662),('Ctrl','cs','',1617347890,1617347890),('Ctrl','de','',1617347890,1617347890),('Ctrl','en','',1617347890,1617347890),('Ctrl','es','',1617347890,1617347890),('Ctrl','fa','',1617347890,1617347890),('Ctrl','fr','',1617347890,1617347890),('Ctrl','hu','',1617347890,1617347890),('Ctrl','it','',1617347890,1617347890),('Ctrl','ja','',1617347890,1617347890),('Ctrl','nl','',1617347890,1617347890),('Ctrl','pl','',1617347890,1617347890),('Ctrl','pt_BR','',1617347890,1617347890),('Ctrl','ru','',1617347890,1617347890),('Ctrl','sk','',1617347890,1617347890),('Ctrl','sv','',1617347890,1617347890),('Ctrl','sv_FI','',1617347890,1617347890),('Ctrl','th','',1617347890,1617347890),('Ctrl','tr','',1617347890,1617347890),('Ctrl','uk','',1617347890,1617347890),('Ctrl','zh_Hans','',1617347890,1617347890),('Description','cs','',1617255557,1617255557),('Description','de','',1617255557,1617255557),('Description','en','',1617255557,1617255557),('Description','es','',1617255557,1617255557),('Description','fa','',1617255557,1617255557),('Description','fr','',1617255557,1617255557),('Description','hu','',1617255557,1617255557),('Description','it','',1617255557,1617255557),('Description','ja','',1617255557,1617255557),('Description','nl','',1617255557,1617255557),('Description','pl','',1617255557,1617255557),('Description','pt_BR','',1617255557,1617255557),('Description','ru','',1617255557,1617255557),('Description','sk','',1617255557,1617255557),('Description','sv','',1617255557,1617255557),('Description','sv_FI','',1617255557,1617255557),('Description','th','',1617255557,1617255557),('Description','tr','',1617255557,1617255557),('Description','uk','',1617255557,1617255557),('Description','zh_Hans','',1617255557,1617255557),('Dollar','cs','',1617255614,1617255614),('Dollar','de','',1617255614,1617255614),('Dollar','en','',1617255614,1617255614),('Dollar','es','',1617255614,1617255614),('Dollar','fa','',1617255614,1617255614),('Dollar','fr','',1617255614,1617255614),('Dollar','hu','',1617255614,1617255614),('Dollar','it','',1617255614,1617255614),('Dollar','ja','',1617255614,1617255614),('Dollar','nl','',1617255614,1617255614),('Dollar','pl','',1617255614,1617255614),('Dollar','pt_BR','',1617255614,1617255614),('Dollar','ru','',1617255614,1617255614),('Dollar','sk','',1617255614,1617255614),('Dollar','sv','',1617255614,1617255614),('Dollar','sv_FI','',1617255614,1617255614),('Dollar','th','',1617255614,1617255614),('Dollar','tr','',1617255614,1617255614),('Dollar','uk','',1617255614,1617255614),('Dollar','zh_Hans','',1617255614,1617255614),('Egg','cs','',1617255741,1617255741),('Egg','de','',1617255741,1617255741),('Egg','en','',1617255741,1617255741),('Egg','es','',1617255741,1617255741),('Egg','fa','',1617255741,1617255741),('Egg','fr','',1617255741,1617255741),('Egg','hu','',1617255741,1617255741),('Egg','it','',1617255741,1617255741),('Egg','ja','',1617255741,1617255741),('Egg','nl','',1617255741,1617255741),('Egg','pl','',1617255741,1617255741),('Egg','pt_BR','',1617255741,1617255741),('Egg','ru','',1617255741,1617255741),('Egg','sk','',1617255741,1617255741),('Egg','sv','',1617255741,1617255741),('Egg','sv_FI','',1617255741,1617255741),('Egg','th','',1617255741,1617255741),('Egg','tr','',1617255741,1617255741),('Egg','uk','',1617255741,1617255741),('Egg','zh_Hans','',1617255741,1617255741),('Eggless','cs','',1617255736,1617255736),('Eggless','de','',1617255736,1617255736),('Eggless','en','',1617255736,1617255736),('Eggless','es','',1617255736,1617255736),('Eggless','fa','',1617255736,1617255736),('Eggless','fr','',1617255736,1617255736),('Eggless','hu','',1617255736,1617255736),('Eggless','it','',1617255736,1617255736),('Eggless','ja','',1617255736,1617255736),('Eggless','nl','',1617255736,1617255736),('Eggless','pl','',1617255736,1617255736),('Eggless','pt_BR','',1617255736,1617255736),('Eggless','ru','',1617255736,1617255736),('Eggless','sk','',1617255736,1617255736),('Eggless','sv','',1617255736,1617255736),('Eggless','sv_FI','',1617255736,1617255736),('Eggless','th','',1617255736,1617255736),('Eggless','tr','',1617255736,1617255736),('Eggless','uk','',1617255736,1617255736),('Eggless','zh_Hans','',1617255736,1617255736),('English','cs','',1617347139,1617347139),('English','de','',1617347139,1617347139),('English','en','',1617347139,1617347139),('English','es','',1617347139,1617347139),('English','fa','',1617347139,1617347139),('English','fr','',1617347139,1617347139),('English','hu','',1617347139,1617347139),('English','it','',1617347139,1617347139),('English','ja','',1617347139,1617347139),('English','nl','',1617347139,1617347139),('English','pl','',1617347139,1617347139),('English','pt_BR','',1617347139,1617347139),('English','ru','',1617347139,1617347139),('English','sk','',1617347139,1617347139),('English','sv','',1617347139,1617347139),('English','sv_FI','',1617347139,1617347139),('English','th','',1617347139,1617347139),('English','tr','',1617347139,1617347139),('English','uk','',1617347139,1617347139),('English','zh_Hans','',1617347139,1617347139),('Expiry','cs','',1617255378,1617255378),('Expiry','de','',1617255378,1617255378),('Expiry','en','',1617255378,1617255378),('Expiry','es','',1617255378,1617255378),('Expiry','fa','',1617255378,1617255378),('Expiry','fr','',1617255378,1617255378),('Expiry','hu','',1617255378,1617255378),('Expiry','it','',1617255378,1617255378),('Expiry','ja','',1617255378,1617255378),('Expiry','nl','',1617255378,1617255378),('Expiry','pl','',1617255378,1617255378),('Expiry','pt_BR','',1617255378,1617255378),('Expiry','ru','',1617255378,1617255378),('Expiry','sk','',1617255378,1617255378),('Expiry','sv','',1617255378,1617255378),('Expiry','sv_FI','',1617255378,1617255378),('Expiry','th','',1617255378,1617255378),('Expiry','tr','',1617255378,1617255378),('Expiry','uk','',1617255378,1617255378),('Expiry','zh_Hans','',1617255378,1617255378),('File','cs','',1617470150,1617470150),('File','de','',1617470150,1617470150),('File','en','',1617470150,1617470150),('File','es','',1617470150,1617470150),('File','fa','',1617470150,1617470150),('File','fr','',1617470150,1617470150),('File','hu','',1617470150,1617470150),('File','it','',1617470150,1617470150),('File','ja','',1617470150,1617470150),('File','nl','',1617470150,1617470150),('File','pl','',1617470150,1617470150),('File','pt_BR','',1617470150,1617470150),('File','ru','',1617470150,1617470150),('File','sk','',1617470150,1617470150),('File','sv','',1617470150,1617470150),('File','sv_FI','',1617470150,1617470150),('File','th','',1617470150,1617470150),('File','tr','',1617470150,1617470150),('File','uk','',1617470150,1617470150),('File','zh_Hans','',1617470150,1617470150),('Flavour','cs','',1617352984,1617352984),('Flavour','de','',1617352984,1617352984),('Flavour','en','',1617352984,1617352984),('Flavour','es','',1617352984,1617352984),('Flavour','fa','',1617352984,1617352984),('Flavour','fr','',1617352984,1617352984),('Flavour','hu','',1617352984,1617352984),('Flavour','it','',1617352984,1617352984),('Flavour','ja','',1617352984,1617352984),('Flavour','nl','',1617352984,1617352984),('Flavour','pl','',1617352984,1617352984),('Flavour','pt_BR','',1617352984,1617352984),('Flavour','ru','',1617352984,1617352984),('Flavour','sk','',1617352984,1617352984),('Flavour','sv','',1617352984,1617352984),('Flavour','sv_FI','',1617352984,1617352984),('Flavour','th','',1617352984,1617352984),('Flavour','tr','',1617352984,1617352984),('Flavour','uk','',1617352984,1617352984),('Flavour','zh_Hans','',1617352984,1617352984),('Generate','cs','',1617347889,1617347889),('Generate','de','',1617347889,1617347889),('Generate','en','',1617347889,1617347889),('Generate','es','',1617347889,1617347889),('Generate','fa','',1617347889,1617347889),('Generate','fr','',1617347889,1617347889),('Generate','hu','',1617347889,1617347889),('Generate','it','',1617347889,1617347889),('Generate','ja','',1617347889,1617347889),('Generate','nl','',1617347889,1617347889),('Generate','pl','',1617347889,1617347889),('Generate','pt_BR','',1617347889,1617347889),('Generate','ru','',1617347889,1617347889),('Generate','sk','',1617347889,1617347889),('Generate','sv','',1617347889,1617347889),('Generate','sv_FI','',1617347889,1617347889),('Generate','th','',1617347889,1617347889),('Generate','tr','',1617347889,1617347889),('Generate','uk','',1617347889,1617347889),('Generate','zh_Hans','',1617347889,1617347889),('Gram','cs','',1617255544,1617255544),('Gram','de','',1617255544,1617255544),('Gram','en','',1617255544,1617255544),('Gram','es','',1617255544,1617255544),('Gram','fa','',1617255544,1617255544),('Gram','fr','',1617255544,1617255544),('Gram','hu','',1617255544,1617255544),('Gram','it','',1617255544,1617255544),('Gram','ja','',1617255544,1617255544),('Gram','nl','',1617255544,1617255544),('Gram','pl','',1617255544,1617255544),('Gram','pt_BR','',1617255544,1617255544),('Gram','ru','',1617255544,1617255544),('Gram','sk','',1617255544,1617255544),('Gram','sv','',1617255544,1617255544),('Gram','sv_FI','',1617255544,1617255544),('Gram','th','',1617255544,1617255544),('Gram','tr','',1617255544,1617255544),('Gram','uk','',1617255544,1617255544),('Gram','zh_Hans','',1617255544,1617255544),('Image','cs','',1617255562,1617255562),('Image','de','',1617255562,1617255562),('Image','en','',1617255562,1617255562),('Image','es','',1617255562,1617255562),('Image','fa','',1617255562,1617255562),('Image','fr','',1617255562,1617255562),('Image','hu','',1617255562,1617255562),('Image','it','',1617255562,1617255562),('Image','ja','',1617255562,1617255562),('Image','nl','',1617255562,1617255562),('Image','pl','',1617255562,1617255562),('Image','pt_BR','',1617255562,1617255562),('Image','ru','',1617255562,1617255562),('Image','sk','',1617255562,1617255562),('Image','sv','',1617255562,1617255562),('Image','sv_FI','',1617255562,1617255562),('Image','th','',1617255562,1617255562),('Image','tr','',1617255562,1617255562),('Image','uk','',1617255562,1617255562),('Image','zh_Hans','',1617255562,1617255562),('Import','cs','',1617469834,1617469834),('Import','de','',1617469834,1617469834),('Import','en','',1617469834,1617469834),('Import','es','',1617469834,1617469834),('Import','fa','',1617469834,1617469834),('Import','fr','',1617469834,1617469834),('Import','hu','',1617469834,1617469834),('Import','it','',1617469834,1617469834),('Import','ja','',1617469834,1617469834),('Import','nl','',1617469834,1617469834),('Import','pl','',1617469834,1617469834),('Import','pt_BR','',1617469834,1617469834),('Import','ru','',1617469834,1617469834),('Import','sk','',1617469834,1617469834),('Import','sv','',1617469834,1617469834),('Import','sv_FI','',1617469834,1617469834),('Import','th','',1617469834,1617469834),('Import','tr','',1617469834,1617469834),('Import','uk','',1617469834,1617469834),('Import','zh_Hans','',1617469834,1617469834),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','cs','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','de','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','en','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','es','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','fa','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','fr','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','hu','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','it','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','ja','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','nl','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','pl','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','pt_BR','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','ru','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','sk','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','sv','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','sv_FI','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','th','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','tr','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','uk','',1617346928,1617346928),('Invalid name for user/role `Business Role` (allowed characters: a-z A-Z 0-9 -.~_@)','zh_Hans','',1617346928,1617346928),('Kilo Gram','cs','',1617255456,1617255456),('Kilo Gram','de','',1617255456,1617255456),('Kilo Gram','en','',1617255456,1617255456),('Kilo Gram','es','',1617255456,1617255456),('Kilo Gram','fa','',1617255456,1617255456),('Kilo Gram','fr','',1617255456,1617255456),('Kilo Gram','hu','',1617255456,1617255456),('Kilo Gram','it','',1617255456,1617255456),('Kilo Gram','ja','',1617255456,1617255456),('Kilo Gram','nl','',1617255456,1617255456),('Kilo Gram','pl','',1617255456,1617255456),('Kilo Gram','pt_BR','',1617255456,1617255456),('Kilo Gram','ru','',1617255456,1617255456),('Kilo Gram','sk','',1617255456,1617255456),('Kilo Gram','sv','',1617255456,1617255456),('Kilo Gram','sv_FI','',1617255456,1617255456),('Kilo Gram','th','',1617255456,1617255456),('Kilo Gram','tr','',1617255456,1617255456),('Kilo Gram','uk','',1617255456,1617255456),('Kilo Gram','zh_Hans','',1617255456,1617255456),('Manufactured On ','cs','',1617255374,1617255374),('Manufactured On ','de','',1617255374,1617255374),('Manufactured On ','en','',1617255374,1617255374),('Manufactured On ','es','',1617255374,1617255374),('Manufactured On ','fa','',1617255374,1617255374),('Manufactured On ','fr','',1617255374,1617255374),('Manufactured On ','hu','',1617255374,1617255374),('Manufactured On ','it','',1617255374,1617255374),('Manufactured On ','ja','',1617255374,1617255374),('Manufactured On ','nl','',1617255374,1617255374),('Manufactured On ','pl','',1617255374,1617255374),('Manufactured On ','pt_BR','',1617255374,1617255374),('Manufactured On ','ru','',1617255374,1617255374),('Manufactured On ','sk','',1617255374,1617255374),('Manufactured On ','sv','',1617255374,1617255374),('Manufactured On ','sv_FI','',1617255374,1617255374),('Manufactured On ','th','',1617255374,1617255374),('Manufactured On ','tr','',1617255374,1617255374),('Manufactured On ','uk','',1617255374,1617255374),('Manufactured On ','zh_Hans','',1617255374,1617255374),('Master','cs','',1617255351,1617255351),('Master','de','',1617255351,1617255351),('Master','en','',1617255351,1617255351),('Master','es','',1617255351,1617255351),('Master','fa','',1617255351,1617255351),('Master','fr','',1617255351,1617255351),('Master','hu','',1617255351,1617255351),('Master','it','',1617255351,1617255351),('Master','ja','',1617255351,1617255351),('Master','nl','',1617255351,1617255351),('Master','pl','',1617255351,1617255351),('Master','pt_BR','',1617255351,1617255351),('Master','ru','',1617255351,1617255351),('Master','sk','',1617255351,1617255351),('Master','sv','',1617255351,1617255351),('Master','sv_FI','',1617255351,1617255351),('Master','th','',1617255351,1617255351),('Master','tr','',1617255351,1617255351),('Master','uk','',1617255351,1617255351),('Master','zh_Hans','',1617255351,1617255351),('Master (Admin Mode)','cs','',1617255347,1617255347),('Master (Admin Mode)','de','',1617255347,1617255347),('Master (Admin Mode)','en','',1617255347,1617255347),('Master (Admin Mode)','es','',1617255347,1617255347),('Master (Admin Mode)','fa','',1617255347,1617255347),('Master (Admin Mode)','fr','',1617255347,1617255347),('Master (Admin Mode)','hu','',1617255347,1617255347),('Master (Admin Mode)','it','',1617255347,1617255347),('Master (Admin Mode)','ja','',1617255347,1617255347),('Master (Admin Mode)','nl','',1617255347,1617255347),('Master (Admin Mode)','pl','',1617255347,1617255347),('Master (Admin Mode)','pt_BR','',1617255347,1617255347),('Master (Admin Mode)','ru','',1617255347,1617255347),('Master (Admin Mode)','sk','',1617255347,1617255347),('Master (Admin Mode)','sv','',1617255347,1617255347),('Master (Admin Mode)','sv_FI','',1617255347,1617255347),('Master (Admin Mode)','th','',1617255347,1617255347),('Master (Admin Mode)','tr','',1617255347,1617255347),('Master (Admin Mode)','uk','',1617255347,1617255347),('Master (Admin Mode)','zh_Hans','',1617255347,1617255347),('MuffinFlavour','cs','',1617268670,1617268670),('MuffinFlavour','de','',1617268670,1617268670),('MuffinFlavour','en','',1617268670,1617268670),('MuffinFlavour','es','',1617268670,1617268670),('MuffinFlavour','fa','',1617268670,1617268670),('MuffinFlavour','fr','',1617268670,1617268670),('MuffinFlavour','hu','',1617268670,1617268670),('MuffinFlavour','it','',1617268670,1617268670),('MuffinFlavour','ja','',1617268670,1617268670),('MuffinFlavour','nl','',1617268670,1617268670),('MuffinFlavour','pl','',1617268670,1617268670),('MuffinFlavour','pt_BR','',1617268670,1617268670),('MuffinFlavour','ru','',1617268670,1617268670),('MuffinFlavour','sk','',1617268670,1617268670),('MuffinFlavour','sv','',1617268670,1617268670),('MuffinFlavour','sv_FI','',1617268670,1617268670),('MuffinFlavour','th','',1617268670,1617268670),('MuffinFlavour','tr','',1617268670,1617268670),('MuffinFlavour','uk','',1617268670,1617268670),('MuffinFlavour','zh_Hans','',1617268670,1617268670),('Name','cs','',1617255552,1617255552),('Name','de','',1617255552,1617255552),('Name','en','',1617255552,1617255552),('Name','es','',1617255552,1617255552),('Name','fa','',1617255552,1617255552),('Name','fr','',1617255552,1617255552),('Name','hu','',1617255552,1617255552),('Name','it','',1617255552,1617255552),('Name','ja','',1617255552,1617255552),('Name','nl','',1617255552,1617255552),('Name','pl','',1617255552,1617255552),('Name','pt_BR','',1617255552,1617255552),('Name','ru','',1617255552,1617255552),('Name','sk','',1617255552,1617255552),('Name','sv','',1617255552,1617255552),('Name','sv_FI','',1617255552,1617255552),('Name','th','',1617255552,1617255552),('Name','tr','',1617255552,1617255552),('Name','uk','',1617255552,1617255552),('Name','zh_Hans','',1617255552,1617255552),('Pack Of','cs','',1617271899,1617271899),('Pack Of','de','',1617271899,1617271899),('Pack Of','en','',1617271899,1617271899),('Pack Of','es','',1617271899,1617271899),('Pack Of','fa','',1617271899,1617271899),('Pack Of','fr','',1617271899,1617271899),('Pack Of','hu','',1617271899,1617271899),('Pack Of','it','',1617271899,1617271899),('Pack Of','ja','',1617271899,1617271899),('Pack Of','nl','',1617271899,1617271899),('Pack Of','pl','',1617271899,1617271899),('Pack Of','pt_BR','',1617271899,1617271899),('Pack Of','ru','',1617271899,1617271899),('Pack Of','sk','',1617271899,1617271899),('Pack Of','sv','',1617271899,1617271899),('Pack Of','sv_FI','',1617271899,1617271899),('Pack Of','th','',1617271899,1617271899),('Pack Of','tr','',1617271899,1617271899),('Pack Of','uk','',1617271899,1617271899),('Pack Of','zh_Hans','',1617271899,1617271899),('Pack of 4','cs','',1617271913,1617271913),('Pack of 4','de','',1617271913,1617271913),('Pack of 4','en','',1617271913,1617271913),('Pack of 4','es','',1617271913,1617271913),('Pack of 4','fa','',1617271913,1617271913),('Pack of 4','fr','',1617271913,1617271913),('Pack of 4','hu','',1617271913,1617271913),('Pack of 4','it','',1617271913,1617271913),('Pack of 4','ja','',1617271913,1617271913),('Pack of 4','nl','',1617271913,1617271913),('Pack of 4','pl','',1617271913,1617271913),('Pack of 4','pt_BR','',1617271913,1617271913),('Pack of 4','ru','',1617271913,1617271913),('Pack of 4','sk','',1617271913,1617271913),('Pack of 4','sv','',1617271913,1617271913),('Pack of 4','sv_FI','',1617271913,1617271913),('Pack of 4','th','',1617271913,1617271913),('Pack of 4','tr','',1617271913,1617271913),('Pack of 4','uk','',1617271913,1617271913),('Pack of 4','zh_Hans','',1617271913,1617271913),('Pack of 6','cs','',1617271907,1617271907),('Pack of 6','de','',1617271907,1617271907),('Pack of 6','en','',1617271907,1617271907),('Pack of 6','es','',1617271907,1617271907),('Pack of 6','fa','',1617271907,1617271907),('Pack of 6','fr','',1617271907,1617271907),('Pack of 6','hu','',1617271907,1617271907),('Pack of 6','it','',1617271907,1617271907),('Pack of 6','ja','',1617271907,1617271907),('Pack of 6','nl','',1617271907,1617271907),('Pack of 6','pl','',1617271907,1617271907),('Pack of 6','pt_BR','',1617271907,1617271907),('Pack of 6','ru','',1617271907,1617271907),('Pack of 6','sk','',1617271907,1617271907),('Pack of 6','sv','',1617271907,1617271907),('Pack of 6','sv_FI','',1617271907,1617271907),('Pack of 6','th','',1617271907,1617271907),('Pack of 6','tr','',1617271907,1617271907),('Pack of 6','uk','',1617271907,1617271907),('Pack of 6','zh_Hans','',1617271907,1617271907),('Pack of 8','cs','',1617271902,1617271902),('Pack of 8','de','',1617271902,1617271902),('Pack of 8','en','',1617271902,1617271902),('Pack of 8','es','',1617271902,1617271902),('Pack of 8','fa','',1617271902,1617271902),('Pack of 8','fr','',1617271902,1617271902),('Pack of 8','hu','',1617271902,1617271902),('Pack of 8','it','',1617271902,1617271902),('Pack of 8','ja','',1617271902,1617271902),('Pack of 8','nl','',1617271902,1617271902),('Pack of 8','pl','',1617271902,1617271902),('Pack of 8','pt_BR','',1617271902,1617271902),('Pack of 8','ru','',1617271902,1617271902),('Pack of 8','sk','',1617271902,1617271902),('Pack of 8','sv','',1617271902,1617271902),('Pack of 8','sv_FI','',1617271902,1617271902),('Pack of 8','th','',1617271902,1617271902),('Pack of 8','tr','',1617271902,1617271902),('Pack of 8','uk','',1617271902,1617271902),('Pack of 8','zh_Hans','',1617271902,1617271902),('Price','cs','',1617255368,1617255368),('Price','de','',1617255368,1617255368),('Price','en','',1617255368,1617255368),('Price','es','',1617255368,1617255368),('Price','fa','',1617255368,1617255368),('Price','fr','',1617255368,1617255368),('Price','hu','',1617255368,1617255368),('Price','it','',1617255368,1617255368),('Price','ja','',1617255368,1617255368),('Price','nl','',1617255368,1617255368),('Price','pl','',1617255368,1617255368),('Price','pt_BR','',1617255368,1617255368),('Price','ru','',1617255368,1617255368),('Price','sk','',1617255368,1617255368),('Price','sv','',1617255368,1617255368),('Price','sv_FI','',1617255368,1617255368),('Price','th','',1617255368,1617255368),('Price','tr','',1617255368,1617255368),('Price','uk','',1617255368,1617255368),('Price','zh_Hans','',1617255368,1617255368),('Product','cs','',1617253549,1617253549),('Product','de','',1617253549,1617253549),('Product','en','',1617253549,1617253549),('Product','es','',1617253549,1617253549),('Product','fa','',1617253549,1617253549),('Product','fr','',1617253549,1617253549),('Product','hu','',1617253549,1617253549),('Product','it','',1617253549,1617253549),('Product','ja','',1617253549,1617253549),('Product','nl','',1617253549,1617253549),('Product','pl','',1617253549,1617253549),('Product','pt_BR','',1617253549,1617253549),('Product','ru','',1617253549,1617253549),('Product','sk','',1617253549,1617253549),('Product','sv','',1617253549,1617253549),('Product','sv_FI','',1617253549,1617253549),('Product','th','',1617253549,1617253549),('Product','tr','',1617253549,1617253549),('Product','uk','',1617253549,1617253549),('Product','zh_Hans','',1617253549,1617253549),('Product Type','cs','',1617268332,1617268332),('Product Type','de','',1617268332,1617268332),('Product Type','en','',1617268332,1617268332),('Product Type','es','',1617268332,1617268332),('Product Type','fa','',1617268332,1617268332),('Product Type','fr','',1617268332,1617268332),('Product Type','hu','',1617268332,1617268332),('Product Type','it','',1617268332,1617268332),('Product Type','ja','',1617268332,1617268332),('Product Type','nl','',1617268332,1617268332),('Product Type','pl','',1617268332,1617268332),('Product Type','pt_BR','',1617268332,1617268332),('Product Type','ru','',1617268332,1617268332),('Product Type','sk','',1617268332,1617268332),('Product Type','sv','',1617268332,1617268332),('Product Type','sv_FI','',1617268332,1617268332),('Product Type','th','',1617268332,1617268332),('Product Type','tr','',1617268332,1617268332),('Product Type','uk','',1617268332,1617268332),('Product Type','zh_Hans','',1617268332,1617268332),('Protein','cs','',1617257287,1617257287),('Protein','de','',1617257287,1617257287),('Protein','en','',1617257287,1617257287),('Protein','es','',1617257287,1617257287),('Protein','fa','',1617257287,1617257287),('Protein','fr','',1617257287,1617257287),('Protein','hu','',1617257287,1617257287),('Protein','it','',1617257287,1617257287),('Protein','ja','',1617257287,1617257287),('Protein','nl','',1617257287,1617257287),('Protein','pl','',1617257287,1617257287),('Protein','pt_BR','',1617257287,1617257287),('Protein','ru','',1617257287,1617257287),('Protein','sk','',1617257287,1617257287),('Protein','sv','',1617257287,1617257287),('Protein','sv_FI','',1617257287,1617257287),('Protein','th','',1617257287,1617257287),('Protein','tr','',1617257287,1617257287),('Protein','uk','',1617257287,1617257287),('Protein','zh_Hans','',1617257287,1617257287),('SEO','cs','',1617355077,1617355077),('SEO','de','',1617355077,1617355077),('SEO','en','',1617355077,1617355077),('SEO','es','',1617355077,1617355077),('SEO','fa','',1617355077,1617355077),('SEO','fr','',1617355077,1617355077),('SEO','hu','',1617355077,1617355077),('SEO','it','',1617355077,1617355077),('SEO','ja','',1617355077,1617355077),('SEO','nl','',1617355077,1617355077),('SEO','pl','',1617355077,1617355077),('SEO','pt_BR','',1617355077,1617355077),('SEO','ru','',1617355077,1617355077),('SEO','sk','',1617355077,1617355077),('SEO','sv','',1617355077,1617355077),('SEO','sv_FI','',1617355077,1617355077),('SEO','th','',1617355077,1617355077),('SEO','tr','',1617355077,1617355077),('SEO','uk','',1617355077,1617355077),('SEO','zh_Hans','',1617355077,1617355077),('Shift','cs','',1617347890,1617347890),('Shift','de','',1617347890,1617347890),('Shift','en','',1617347890,1617347890),('Shift','es','',1617347890,1617347890),('Shift','fa','',1617347890,1617347890),('Shift','fr','',1617347890,1617347890),('Shift','hu','',1617347890,1617347890),('Shift','it','',1617347890,1617347890),('Shift','ja','',1617347890,1617347890),('Shift','nl','',1617347890,1617347890),('Shift','pl','',1617347890,1617347890),('Shift','pt_BR','',1617347890,1617347890),('Shift','ru','',1617347890,1617347890),('Shift','sk','',1617347890,1617347890),('Shift','sv','',1617347890,1617347890),('Shift','sv_FI','',1617347890,1617347890),('Shift','th','',1617347890,1617347890),('Shift','tr','',1617347890,1617347890),('Shift','uk','',1617347890,1617347890),('Shift','zh_Hans','',1617347890,1617347890),('Sku','cs','',1617255357,1617255357),('Sku','de','',1617255357,1617255357),('Sku','en','',1617255357,1617255357),('Sku','es','',1617255357,1617255357),('Sku','fa','',1617255357,1617255357),('Sku','fr','',1617255357,1617255357),('Sku','hu','',1617255357,1617255357),('Sku','it','',1617255357,1617255357),('Sku','ja','',1617255357,1617255357),('Sku','nl','',1617255357,1617255357),('Sku','pl','',1617255357,1617255357),('Sku','pt_BR','',1617255357,1617255357),('Sku','ru','',1617255357,1617255357),('Sku','sk','',1617255357,1617255357),('Sku','sv','',1617255357,1617255357),('Sku','sv_FI','',1617255357,1617255357),('Sku','th','',1617255357,1617255357),('Sku','tr','',1617255357,1617255357),('Sku','uk','',1617255357,1617255357),('Sku','zh_Hans','',1617255357,1617255357),('Start date should not be less than current date','cs','',1617261391,1617261391),('Start date should not be less than current date','de','',1617261391,1617261391),('Start date should not be less than current date','en','',1617261391,1617261391),('Start date should not be less than current date','es','',1617261391,1617261391),('Start date should not be less than current date','fa','',1617261391,1617261391),('Start date should not be less than current date','fr','',1617261391,1617261391),('Start date should not be less than current date','hu','',1617261391,1617261391),('Start date should not be less than current date','it','',1617261391,1617261391),('Start date should not be less than current date','ja','',1617261391,1617261391),('Start date should not be less than current date','nl','',1617261391,1617261391),('Start date should not be less than current date','pl','',1617261391,1617261391),('Start date should not be less than current date','pt_BR','',1617261391,1617261391),('Start date should not be less than current date','ru','',1617261391,1617261391),('Start date should not be less than current date','sk','',1617261391,1617261391),('Start date should not be less than current date','sv','',1617261391,1617261391),('Start date should not be less than current date','sv_FI','',1617261391,1617261391),('Start date should not be less than current date','th','',1617261391,1617261391),('Start date should not be less than current date','tr','',1617261391,1617261391),('Start date should not be less than current date','uk','',1617261391,1617261391),('Start date should not be less than current date','zh_Hans','',1617261391,1617261391),('Status','cs','',1617470151,1617470151),('Status','de','',1617470151,1617470151),('Status','en','',1617470151,1617470151),('Status','es','',1617470151,1617470151),('Status','fa','',1617470151,1617470151),('Status','fr','',1617470151,1617470151),('Status','hu','',1617470151,1617470151),('Status','it','',1617470151,1617470151),('Status','ja','',1617470151,1617470151),('Status','nl','',1617470151,1617470151),('Status','pl','',1617470151,1617470151),('Status','pt_BR','',1617470151,1617470151),('Status','ru','',1617470151,1617470151),('Status','sk','',1617470151,1617470151),('Status','sv','',1617470151,1617470151),('Status','sv_FI','',1617470151,1617470151),('Status','th','',1617470151,1617470151),('Status','tr','',1617470151,1617470151),('Status','uk','',1617470151,1617470151),('Status','zh_Hans','',1617470151,1617470151),('Weight ','cs','',1617255363,1617255363),('Weight ','de','',1617255363,1617255363),('Weight ','en','',1617255363,1617255363),('Weight ','es','',1617255363,1617255363),('Weight ','fa','',1617255363,1617255363),('Weight ','fr','',1617255363,1617255363),('Weight ','hu','',1617255363,1617255363),('Weight ','it','',1617255363,1617255363),('Weight ','ja','',1617255363,1617255363),('Weight ','nl','',1617255363,1617255363),('Weight ','pl','',1617255363,1617255363),('Weight ','pt_BR','',1617255363,1617255363),('Weight ','ru','',1617255363,1617255363),('Weight ','sk','',1617255363,1617255363),('Weight ','sv','',1617255363,1617255363),('Weight ','sv_FI','',1617255363,1617255363),('Weight ','th','',1617255363,1617255363),('Weight ','tr','',1617255363,1617255363),('Weight ','uk','',1617255363,1617255363),('Weight ','zh_Hans','',1617255363,1617255363),('XLSX Export','cs','',1617262146,1617262146),('XLSX Export','de','',1617262146,1617262146),('XLSX Export','en','',1617262146,1617262146),('XLSX Export','es','',1617262146,1617262146),('XLSX Export','fa','',1617262146,1617262146),('XLSX Export','fr','',1617262146,1617262146),('XLSX Export','hu','',1617262146,1617262146),('XLSX Export','it','',1617262146,1617262146),('XLSX Export','ja','',1617262146,1617262146),('XLSX Export','nl','',1617262146,1617262146),('XLSX Export','pl','',1617262146,1617262146),('XLSX Export','pt_BR','',1617262146,1617262146),('XLSX Export','ru','',1617262146,1617262146),('XLSX Export','sk','',1617262146,1617262146),('XLSX Export','sv','',1617262146,1617262146),('XLSX Export','sv_FI','',1617262146,1617262146),('XLSX Export','th','',1617262146,1617262146),('XLSX Export','tr','',1617262146,1617262146),('XLSX Export','uk','',1617262146,1617262146),('XLSX Export','zh_Hans','',1617262146,1617262146),('default_value_warning','cs','',1617256819,1617256819),('default_value_warning','de','',1617256819,1617256819),('default_value_warning','en','',1617256819,1617256819),('default_value_warning','es','',1617256819,1617256819),('default_value_warning','fa','',1617256819,1617256819),('default_value_warning','fr','',1617256819,1617256819),('default_value_warning','hu','',1617256819,1617256819),('default_value_warning','it','',1617256819,1617256819),('default_value_warning','ja','',1617256819,1617256819),('default_value_warning','nl','',1617256819,1617256819),('default_value_warning','pl','',1617256819,1617256819),('default_value_warning','pt_BR','',1617256819,1617256819),('default_value_warning','ru','',1617256819,1617256819),('default_value_warning','sk','',1617256819,1617256819),('default_value_warning','sv','',1617256819,1617256819),('default_value_warning','sv_FI','',1617256819,1617256819),('default_value_warning','th','',1617256819,1617256819),('default_value_warning','tr','',1617256819,1617256819),('default_value_warning','uk','',1617256819,1617256819),('default_value_warning','zh_Hans','',1617256819,1617256819),('down','cs','',1617253360,1617253360),('down','de','',1617253360,1617253360),('down','en','',1617253360,1617253360),('down','es','',1617253360,1617253360),('down','fa','',1617253360,1617253360),('down','fr','',1617253360,1617253360),('down','hu','',1617253360,1617253360),('down','it','',1617253360,1617253360),('down','ja','',1617253360,1617253360),('down','nl','',1617253360,1617253360),('down','pl','',1617253360,1617253360),('down','pt_BR','',1617253360,1617253360),('down','ru','',1617253360,1617253360),('down','sk','',1617253360,1617253360),('down','sv','',1617253360,1617253360),('down','sv_FI','',1617253360,1617253360),('down','th','',1617253360,1617253360),('down','tr','',1617253360,1617253360),('down','uk','',1617253360,1617253360),('down','zh_Hans','',1617253360,1617253360),('false','cs','',1617256812,1617256812),('false','de','',1617256812,1617256812),('false','en','',1617256812,1617256812),('false','es','',1617256812,1617256812),('false','fa','',1617256812,1617256812),('false','fr','',1617256812,1617256812),('false','hu','',1617256812,1617256812),('false','it','',1617256812,1617256812),('false','ja','',1617256812,1617256812),('false','nl','',1617256812,1617256812),('false','pl','',1617256812,1617256812),('false','pt_BR','',1617256812,1617256812),('false','ru','',1617256812,1617256812),('false','sk','',1617256812,1617256812),('false','sv','',1617256812,1617256812),('false','sv_FI','',1617256812,1617256812),('false','th','',1617256812,1617256812),('false','tr','',1617256812,1617256812),('false','uk','',1617256812,1617256812),('false','zh_Hans','',1617256812,1617256812),('g','cs','',1617255543,1617255543),('g','de','',1617255543,1617255543),('g','en','',1617255543,1617255543),('g','es','',1617255543,1617255543),('g','fa','',1617255543,1617255543),('g','fr','',1617255543,1617255543),('g','hu','',1617255543,1617255543),('g','it','',1617255543,1617255543),('g','ja','',1617255543,1617255543),('g','nl','',1617255543,1617255543),('g','pl','',1617255543,1617255543),('g','pt_BR','',1617255543,1617255543),('g','ru','',1617255543,1617255543),('g','sk','',1617255543,1617255543),('g','sv','',1617255543,1617255543),('g','sv_FI','',1617255543,1617255543),('g','th','',1617255543,1617255543),('g','tr','',1617255543,1617255543),('g','uk','',1617255543,1617255543),('g','zh_Hans','',1617255543,1617255543),('kg','cs','',1617255445,1617255445),('kg','de','',1617255445,1617255445),('kg','en','',1617255445,1617255445),('kg','es','',1617255445,1617255445),('kg','fa','',1617255445,1617255445),('kg','fr','',1617255445,1617255445),('kg','hu','',1617255445,1617255445),('kg','it','',1617255445,1617255445),('kg','ja','',1617255445,1617255445),('kg','nl','',1617255445,1617255445),('kg','pl','',1617255445,1617255445),('kg','pt_BR','',1617255445,1617255445),('kg','ru','',1617255445,1617255445),('kg','sk','',1617255445,1617255445),('kg','sv','',1617255445,1617255445),('kg','sv_FI','',1617255445,1617255445),('kg','th','',1617255445,1617255445),('kg','tr','',1617255445,1617255445),('kg','uk','',1617255445,1617255445),('kg','zh_Hans','',1617255445,1617255445),('no_further_classes_allowed','cs','',1617253266,1617253266),('no_further_classes_allowed','de','',1617253266,1617253266),('no_further_classes_allowed','en','',1617253266,1617253266),('no_further_classes_allowed','es','',1617253266,1617253266),('no_further_classes_allowed','fa','',1617253266,1617253266),('no_further_classes_allowed','fr','',1617253266,1617253266),('no_further_classes_allowed','hu','',1617253266,1617253266),('no_further_classes_allowed','it','',1617253266,1617253266),('no_further_classes_allowed','ja','',1617253266,1617253266),('no_further_classes_allowed','nl','',1617253266,1617253266),('no_further_classes_allowed','pl','',1617253266,1617253266),('no_further_classes_allowed','pt_BR','',1617253266,1617253266),('no_further_classes_allowed','ru','',1617253266,1617253266),('no_further_classes_allowed','sk','',1617253266,1617253266),('no_further_classes_allowed','sv','',1617253266,1617253266),('no_further_classes_allowed','sv_FI','',1617253266,1617253266),('no_further_classes_allowed','th','',1617253266,1617253266),('no_further_classes_allowed','tr','',1617253266,1617253266),('no_further_classes_allowed','uk','',1617253266,1617253266),('no_further_classes_allowed','zh_Hans','',1617253266,1617253266),('null','cs','',1617256807,1617256807),('null','de','',1617256807,1617256807),('null','en','',1617256807,1617256807),('null','es','',1617256807,1617256807),('null','fa','',1617256807,1617256807),('null','fr','',1617256807,1617256807),('null','hu','',1617256807,1617256807),('null','it','',1617256807,1617256807),('null','ja','',1617256807,1617256807),('null','nl','',1617256807,1617256807),('null','pl','',1617256807,1617256807),('null','pt_BR','',1617256807,1617256807),('null','ru','',1617256807,1617256807),('null','sk','',1617256807,1617256807),('null','sv','',1617256807,1617256807),('null','sv_FI','',1617256807,1617256807),('null','th','',1617256807,1617256807),('null','tr','',1617256807,1617256807),('null','uk','',1617256807,1617256807),('null','zh_Hans','',1617256807,1617256807),('object_add_dialog_custom_text.Category','cs','',1617255697,1617255697),('object_add_dialog_custom_text.Category','de','',1617255697,1617255697),('object_add_dialog_custom_text.Category','en','',1617255697,1617255697),('object_add_dialog_custom_text.Category','es','',1617255697,1617255697),('object_add_dialog_custom_text.Category','fa','',1617255697,1617255697),('object_add_dialog_custom_text.Category','fr','',1617255697,1617255697),('object_add_dialog_custom_text.Category','hu','',1617255697,1617255697),('object_add_dialog_custom_text.Category','it','',1617255697,1617255697),('object_add_dialog_custom_text.Category','ja','',1617255697,1617255697),('object_add_dialog_custom_text.Category','nl','',1617255697,1617255697),('object_add_dialog_custom_text.Category','pl','',1617255697,1617255697),('object_add_dialog_custom_text.Category','pt_BR','',1617255697,1617255697),('object_add_dialog_custom_text.Category','ru','',1617255697,1617255697),('object_add_dialog_custom_text.Category','sk','',1617255697,1617255697),('object_add_dialog_custom_text.Category','sv','',1617255697,1617255697),('object_add_dialog_custom_text.Category','sv_FI','',1617255697,1617255697),('object_add_dialog_custom_text.Category','th','',1617255697,1617255697),('object_add_dialog_custom_text.Category','tr','',1617255697,1617255697),('object_add_dialog_custom_text.Category','uk','',1617255697,1617255697),('object_add_dialog_custom_text.Category','zh_Hans','',1617255697,1617255697),('object_add_dialog_custom_text.Import','cs','',1617470147,1617470147),('object_add_dialog_custom_text.Import','de','',1617470147,1617470147),('object_add_dialog_custom_text.Import','en','',1617470147,1617470147),('object_add_dialog_custom_text.Import','es','',1617470147,1617470147),('object_add_dialog_custom_text.Import','fa','',1617470147,1617470147),('object_add_dialog_custom_text.Import','fr','',1617470147,1617470147),('object_add_dialog_custom_text.Import','hu','',1617470147,1617470147),('object_add_dialog_custom_text.Import','it','',1617470147,1617470147),('object_add_dialog_custom_text.Import','ja','',1617470147,1617470147),('object_add_dialog_custom_text.Import','nl','',1617470147,1617470147),('object_add_dialog_custom_text.Import','pl','',1617470147,1617470147),('object_add_dialog_custom_text.Import','pt_BR','',1617470147,1617470147),('object_add_dialog_custom_text.Import','ru','',1617470147,1617470147),('object_add_dialog_custom_text.Import','sk','',1617470147,1617470147),('object_add_dialog_custom_text.Import','sv','',1617470147,1617470147),('object_add_dialog_custom_text.Import','sv_FI','',1617470147,1617470147),('object_add_dialog_custom_text.Import','th','',1617470147,1617470147),('object_add_dialog_custom_text.Import','tr','',1617470147,1617470147),('object_add_dialog_custom_text.Import','uk','',1617470147,1617470147),('object_add_dialog_custom_text.Import','zh_Hans','',1617470147,1617470147),('object_add_dialog_custom_text.Product','cs','',1617255336,1617255336),('object_add_dialog_custom_text.Product','de','',1617255336,1617255336),('object_add_dialog_custom_text.Product','en','',1617255336,1617255336),('object_add_dialog_custom_text.Product','es','',1617255336,1617255336),('object_add_dialog_custom_text.Product','fa','',1617255336,1617255336),('object_add_dialog_custom_text.Product','fr','',1617255336,1617255336),('object_add_dialog_custom_text.Product','hu','',1617255336,1617255336),('object_add_dialog_custom_text.Product','it','',1617255336,1617255336),('object_add_dialog_custom_text.Product','ja','',1617255336,1617255336),('object_add_dialog_custom_text.Product','nl','',1617255336,1617255336),('object_add_dialog_custom_text.Product','pl','',1617255336,1617255336),('object_add_dialog_custom_text.Product','pt_BR','',1617255336,1617255336),('object_add_dialog_custom_text.Product','ru','',1617255336,1617255336),('object_add_dialog_custom_text.Product','sk','',1617255336,1617255336),('object_add_dialog_custom_text.Product','sv','',1617255336,1617255336),('object_add_dialog_custom_text.Product','sv_FI','',1617255336,1617255336),('object_add_dialog_custom_text.Product','th','',1617255336,1617255336),('object_add_dialog_custom_text.Product','tr','',1617255336,1617255336),('object_add_dialog_custom_text.Product','uk','',1617255336,1617255336),('object_add_dialog_custom_text.Product','zh_Hans','',1617255336,1617255336),('object_add_dialog_custom_title.Category','cs','',1617255705,1617255705),('object_add_dialog_custom_title.Category','de','',1617255705,1617255705),('object_add_dialog_custom_title.Category','en','',1617255705,1617255705),('object_add_dialog_custom_title.Category','es','',1617255705,1617255705),('object_add_dialog_custom_title.Category','fa','',1617255705,1617255705),('object_add_dialog_custom_title.Category','fr','',1617255705,1617255705),('object_add_dialog_custom_title.Category','hu','',1617255705,1617255705),('object_add_dialog_custom_title.Category','it','',1617255705,1617255705),('object_add_dialog_custom_title.Category','ja','',1617255705,1617255705),('object_add_dialog_custom_title.Category','nl','',1617255705,1617255705),('object_add_dialog_custom_title.Category','pl','',1617255705,1617255705),('object_add_dialog_custom_title.Category','pt_BR','',1617255705,1617255705),('object_add_dialog_custom_title.Category','ru','',1617255705,1617255705),('object_add_dialog_custom_title.Category','sk','',1617255705,1617255705),('object_add_dialog_custom_title.Category','sv','',1617255705,1617255705),('object_add_dialog_custom_title.Category','sv_FI','',1617255705,1617255705),('object_add_dialog_custom_title.Category','th','',1617255705,1617255705),('object_add_dialog_custom_title.Category','tr','',1617255705,1617255705),('object_add_dialog_custom_title.Category','uk','',1617255705,1617255705),('object_add_dialog_custom_title.Category','zh_Hans','',1617255705,1617255705),('object_add_dialog_custom_title.Import','cs','',1617470150,1617470150),('object_add_dialog_custom_title.Import','de','',1617470150,1617470150),('object_add_dialog_custom_title.Import','en','',1617470150,1617470150),('object_add_dialog_custom_title.Import','es','',1617470150,1617470150),('object_add_dialog_custom_title.Import','fa','',1617470150,1617470150),('object_add_dialog_custom_title.Import','fr','',1617470150,1617470150),('object_add_dialog_custom_title.Import','hu','',1617470150,1617470150),('object_add_dialog_custom_title.Import','it','',1617470150,1617470150),('object_add_dialog_custom_title.Import','ja','',1617470150,1617470150),('object_add_dialog_custom_title.Import','nl','',1617470150,1617470150),('object_add_dialog_custom_title.Import','pl','',1617470150,1617470150),('object_add_dialog_custom_title.Import','pt_BR','',1617470150,1617470150),('object_add_dialog_custom_title.Import','ru','',1617470150,1617470150),('object_add_dialog_custom_title.Import','sk','',1617470150,1617470150),('object_add_dialog_custom_title.Import','sv','',1617470150,1617470150),('object_add_dialog_custom_title.Import','sv_FI','',1617470150,1617470150),('object_add_dialog_custom_title.Import','th','',1617470150,1617470150),('object_add_dialog_custom_title.Import','tr','',1617470150,1617470150),('object_add_dialog_custom_title.Import','uk','',1617470150,1617470150),('object_add_dialog_custom_title.Import','zh_Hans','',1617470150,1617470150),('object_add_dialog_custom_title.Product','cs','',1617255342,1617255342),('object_add_dialog_custom_title.Product','de','',1617255342,1617255342),('object_add_dialog_custom_title.Product','en','',1617255342,1617255342),('object_add_dialog_custom_title.Product','es','',1617255342,1617255342),('object_add_dialog_custom_title.Product','fa','',1617255342,1617255342),('object_add_dialog_custom_title.Product','fr','',1617255342,1617255342),('object_add_dialog_custom_title.Product','hu','',1617255342,1617255342),('object_add_dialog_custom_title.Product','it','',1617255342,1617255342),('object_add_dialog_custom_title.Product','ja','',1617255342,1617255342),('object_add_dialog_custom_title.Product','nl','',1617255342,1617255342),('object_add_dialog_custom_title.Product','pl','',1617255342,1617255342),('object_add_dialog_custom_title.Product','pt_BR','',1617255342,1617255342),('object_add_dialog_custom_title.Product','ru','',1617255342,1617255342),('object_add_dialog_custom_title.Product','sk','',1617255342,1617255342),('object_add_dialog_custom_title.Product','sv','',1617255342,1617255342),('object_add_dialog_custom_title.Product','sv_FI','',1617255342,1617255342),('object_add_dialog_custom_title.Product','th','',1617255342,1617255342),('object_add_dialog_custom_title.Product','tr','',1617255342,1617255342),('object_add_dialog_custom_title.Product','uk','',1617255342,1617255342),('object_add_dialog_custom_title.Product','zh_Hans','',1617255342,1617255342),('true','cs','',1617256815,1617256815),('true','de','',1617256815,1617256815),('true','en','',1617256815,1617256815),('true','es','',1617256815,1617256815),('true','fa','',1617256815,1617256815),('true','fr','',1617256815,1617256815),('true','hu','',1617256815,1617256815),('true','it','',1617256815,1617256815),('true','ja','',1617256815,1617256815),('true','nl','',1617256815,1617256815),('true','pl','',1617256815,1617256815),('true','pt_BR','',1617256815,1617256815),('true','ru','',1617256815,1617256815),('true','sk','',1617256815,1617256815),('true','sv','',1617256815,1617256815),('true','sv_FI','',1617256815,1617256815),('true','th','',1617256815,1617256815),('true','tr','',1617256815,1617256815),('true','uk','',1617256815,1617256815),('true','zh_Hans','',1617256815,1617256815),('up','cs','',1617253357,1617253357),('up','de','',1617253357,1617253357),('up','en','',1617253357,1617253357),('up','es','',1617253357,1617253357),('up','fa','',1617253357,1617253357),('up','fr','',1617253357,1617253357),('up','hu','',1617253357,1617253357),('up','it','',1617253357,1617253357),('up','ja','',1617253357,1617253357),('up','nl','',1617253357,1617253357),('up','pl','',1617253357,1617253357),('up','pt_BR','',1617253357,1617253357),('up','ru','',1617253357,1617253357),('up','sk','',1617253357,1617253357),('up','sv','',1617253357,1617253357),('up','sv_FI','',1617253357,1617253357),('up','th','',1617253357,1617253357),('up','tr','',1617253357,1617253357),('up','uk','',1617253357,1617253357),('up','zh_Hans','',1617253357,1617253357);
/*!40000 ALTER TABLE `translations_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations_website`
--

DROP TABLE IF EXISTS `translations_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations_website` (
  `key` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `text` text,
  `creationDate` int unsigned DEFAULT NULL,
  `modificationDate` int unsigned DEFAULT NULL,
  PRIMARY KEY (`key`,`language`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations_website`
--

LOCK TABLES `translations_website` WRITE;
/*!40000 ALTER TABLE `translations_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tree_locks`
--

DROP TABLE IF EXISTS `tree_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tree_locks` (
  `id` int NOT NULL DEFAULT '0',
  `type` enum('asset','document','object') NOT NULL DEFAULT 'asset',
  `locked` enum('self','propagate') DEFAULT NULL,
  PRIMARY KEY (`id`,`type`),
  KEY `type` (`type`),
  KEY `locked` (`locked`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tree_locks`
--

LOCK TABLES `tree_locks` WRITE;
/*!40000 ALTER TABLE `tree_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tree_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int unsigned DEFAULT NULL,
  `type` enum('user','userfolder','role','rolefolder') NOT NULL DEFAULT 'user',
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(190) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `contentLanguages` longtext,
  `admin` tinyint unsigned DEFAULT '0',
  `active` tinyint unsigned DEFAULT '1',
  `permissions` text,
  `roles` varchar(1000) DEFAULT NULL,
  `welcomescreen` tinyint(1) DEFAULT NULL,
  `closeWarning` tinyint(1) DEFAULT NULL,
  `memorizeTabs` tinyint(1) DEFAULT NULL,
  `allowDirtyClose` tinyint unsigned DEFAULT '1',
  `docTypes` varchar(255) DEFAULT NULL,
  `classes` text,
  `apiKey` varchar(255) DEFAULT NULL,
  `twoFactorAuthentication` varchar(255) DEFAULT NULL,
  `activePerspective` varchar(255) DEFAULT NULL,
  `perspectives` longtext,
  `websiteTranslationLanguagesEdit` longtext,
  `websiteTranslationLanguagesView` longtext,
  `lastLogin` int unsigned DEFAULT NULL,
  `keyBindings` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_name` (`type`,`name`),
  KEY `parentId` (`parentId`),
  KEY `name` (`name`),
  KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (0,0,'user','system',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,0,'user','admin','$2y$10$tDc0RLQg0XrQhaB6YZn3Qus8BJSk9g1a.Tm8Nvxt1wAnZ7O5ZGyh6',NULL,NULL,NULL,'en',NULL,1,1,'','',0,1,1,0,'','',NULL,'null',NULL,'','','',1617469623,NULL),(3,0,'role','BusinessRole',NULL,NULL,NULL,NULL,NULL,NULL,0,1,'assets,classes,clear_cache,documents,emails,notifications,notifications_send,objects',NULL,NULL,NULL,NULL,1,'','1,2',NULL,NULL,NULL,'default','en','en',NULL,NULL),(4,0,'role','DataEntry',NULL,NULL,NULL,NULL,NULL,NULL,0,1,'',NULL,NULL,NULL,NULL,1,'','1,2',NULL,NULL,NULL,'','','',NULL,NULL),(5,0,'user','BusinessRole','$2y$10$2kjcjcAdkZFG3mQ6sIhDNeAllx35fh7AiqnDbFLoYwFTEOrgEkVbW','kajal','khanna','kajalkhanna803@gmail.com','en','en',0,1,'application_logging,asset_metadata,assets,clear_cache,clear_fullpage_cache,clear_temp_files,dashboards,document_types,documents,emails,glossary,http_errors,notes_events,notifications,notifications_send,objects,system_settings,website_settings','3',0,1,1,0,'','1,2','','{\"required\":false,\"enabled\":false,\"secret\":\"\",\"type\":\"\"}',NULL,'','','',1617351383,'[{\"action\":\"save\",\"key\":83,\"ctrl\":true},{\"action\":\"publish\",\"key\":80,\"ctrl\":true,\"shift\":true},{\"action\":\"unpublish\",\"key\":85,\"ctrl\":true,\"shift\":true},{\"action\":\"rename\",\"key\":82,\"alt\":true,\"shift\":true},{\"action\":\"refresh\",\"key\":116},{\"action\":\"openDocument\",\"key\":68,\"ctrl\":true,\"shift\":true},{\"action\":\"openAsset\",\"key\":65,\"ctrl\":true,\"shift\":true},{\"action\":\"openObject\",\"key\":79,\"ctrl\":true,\"shift\":true},{\"action\":\"openClassEditor\",\"key\":67,\"ctrl\":true,\"shift\":true},{\"action\":\"openInTree\",\"key\":76,\"ctrl\":true,\"shift\":true},{\"action\":\"showMetaInfo\",\"key\":73,\"alt\":true},{\"action\":\"searchDocument\",\"key\":87,\"alt\":true},{\"action\":\"searchAsset\",\"key\":65,\"alt\":true},{\"action\":\"searchObject\",\"key\":79,\"alt\":true},{\"action\":\"showElementHistory\",\"key\":72,\"alt\":true},{\"action\":\"closeAllTabs\",\"key\":84,\"alt\":true},{\"action\":\"searchAndReplaceAssignments\",\"key\":83,\"alt\":true},{\"action\":\"glossary\",\"key\":71,\"shift\":true,\"alt\":true},{\"action\":\"redirects\",\"key\":82,\"ctrl\":false,\"alt\":true},{\"action\":\"sharedTranslations\",\"key\":84,\"ctrl\":true,\"alt\":true},{\"action\":\"recycleBin\",\"key\":82,\"ctrl\":true,\"alt\":true},{\"action\":\"notesEvents\",\"key\":78,\"ctrl\":true,\"alt\":true},{\"action\":\"applicationLogger\",\"key\":76,\"ctrl\":true,\"alt\":true},{\"action\":\"reports\",\"key\":77,\"ctrl\":true,\"alt\":true},{\"action\":\"tagManager\",\"key\":72,\"ctrl\":true,\"alt\":true},{\"action\":\"seoDocumentEditor\",\"key\":83,\"ctrl\":true,\"alt\":true},{\"action\":\"robots\",\"key\":74,\"ctrl\":true,\"alt\":true},{\"action\":\"httpErrorLog\",\"key\":79,\"ctrl\":true,\"alt\":true},{\"action\":\"customReports\",\"key\":67,\"ctrl\":true,\"alt\":true},{\"action\":\"tagConfiguration\",\"key\":78,\"ctrl\":true,\"alt\":true},{\"action\":\"users\",\"key\":85,\"ctrl\":true,\"alt\":true},{\"action\":\"roles\",\"key\":80,\"ctrl\":true,\"alt\":true},{\"action\":\"clearAllCaches\",\"key\":81,\"ctrl\":false,\"alt\":true},{\"action\":\"clearDataCache\",\"key\":67,\"ctrl\":false,\"alt\":true},{\"action\":\"quickSearch\",\"key\":70,\"ctrl\":true,\"shift\":true}]'),(6,0,'user','DataEntry','$2y$10$35zGk80Qx8LEXXSWdq09rudR3mEB7l/ilGCkuAso3YYQ.GzMuJLn.','Rahul','Khushvaha','','en','en',0,1,'assets,documents,emails,notifications,notifications_send,objects','4',0,1,1,0,'','1,2','','{\"required\":false,\"enabled\":false,\"secret\":\"\",\"type\":\"\"}',NULL,'','','',1617352317,'[{\"action\":\"save\",\"key\":83,\"ctrl\":true},{\"action\":\"publish\",\"key\":80,\"ctrl\":true,\"shift\":true},{\"action\":\"unpublish\",\"key\":85,\"ctrl\":true,\"shift\":true},{\"action\":\"rename\",\"key\":82,\"alt\":true,\"shift\":true},{\"action\":\"refresh\",\"key\":116},{\"action\":\"openDocument\",\"key\":68,\"ctrl\":true,\"shift\":true},{\"action\":\"openAsset\",\"key\":65,\"ctrl\":true,\"shift\":true},{\"action\":\"openObject\",\"key\":79,\"ctrl\":true,\"shift\":true},{\"action\":\"openClassEditor\",\"key\":67,\"ctrl\":true,\"shift\":true},{\"action\":\"openInTree\",\"key\":76,\"ctrl\":true,\"shift\":true},{\"action\":\"showMetaInfo\",\"key\":73,\"alt\":true},{\"action\":\"searchDocument\",\"key\":87,\"alt\":true},{\"action\":\"searchAsset\",\"key\":65,\"alt\":true},{\"action\":\"searchObject\",\"key\":79,\"alt\":true},{\"action\":\"showElementHistory\",\"key\":72,\"alt\":true},{\"action\":\"closeAllTabs\",\"key\":84,\"alt\":true},{\"action\":\"searchAndReplaceAssignments\",\"key\":83,\"alt\":true},{\"action\":\"glossary\",\"key\":71,\"shift\":true,\"alt\":true},{\"action\":\"redirects\",\"key\":82,\"ctrl\":false,\"alt\":true},{\"action\":\"sharedTranslations\",\"key\":84,\"ctrl\":true,\"alt\":true},{\"action\":\"recycleBin\",\"key\":82,\"ctrl\":true,\"alt\":true},{\"action\":\"notesEvents\",\"key\":78,\"ctrl\":true,\"alt\":true},{\"action\":\"applicationLogger\",\"key\":76,\"ctrl\":true,\"alt\":true},{\"action\":\"reports\",\"key\":77,\"ctrl\":true,\"alt\":true},{\"action\":\"tagManager\",\"key\":72,\"ctrl\":true,\"alt\":true},{\"action\":\"seoDocumentEditor\",\"key\":83,\"ctrl\":true,\"alt\":true},{\"action\":\"robots\",\"key\":74,\"ctrl\":true,\"alt\":true},{\"action\":\"httpErrorLog\",\"key\":79,\"ctrl\":true,\"alt\":true},{\"action\":\"customReports\",\"key\":67,\"ctrl\":true,\"alt\":true},{\"action\":\"tagConfiguration\",\"key\":78,\"ctrl\":true,\"alt\":true},{\"action\":\"users\",\"key\":85,\"ctrl\":true,\"alt\":true},{\"action\":\"roles\",\"key\":80,\"ctrl\":true,\"alt\":true},{\"action\":\"clearAllCaches\",\"key\":81,\"ctrl\":false,\"alt\":true},{\"action\":\"clearDataCache\",\"key\":67,\"ctrl\":false,\"alt\":true},{\"action\":\"quickSearch\",\"key\":70,\"ctrl\":true,\"shift\":true}]');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_permission_definitions`
--

DROP TABLE IF EXISTS `users_permission_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_permission_definitions` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `category` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_permission_definitions`
--

LOCK TABLES `users_permission_definitions` WRITE;
/*!40000 ALTER TABLE `users_permission_definitions` DISABLE KEYS */;
INSERT INTO `users_permission_definitions` VALUES ('admin_translations',''),('application_logging',''),('asset_metadata',''),('assets',''),('classes',''),('clear_cache',''),('clear_fullpage_cache',''),('clear_temp_files',''),('dashboards',''),('document_types',''),('documents',''),('emails',''),('gdpr_data_extractor',''),('glossary',''),('http_errors',''),('notes_events',''),('notifications',''),('notifications_send',''),('objects',''),('piwik_reports',''),('piwik_settings',''),('plugins',''),('predefined_properties',''),('qr_codes',''),('recyclebin',''),('redirects',''),('reports',''),('reports_config',''),('robots.txt',''),('routes',''),('seemode',''),('seo_document_editor',''),('share_configurations',''),('system_settings',''),('tag_snippet_management',''),('tags_assignment',''),('tags_configuration',''),('tags_search',''),('targeting',''),('thumbnails',''),('translations',''),('users',''),('web2print_settings',''),('website_settings',''),('workflow_details','');
/*!40000 ALTER TABLE `users_permission_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_workspaces_asset`
--

DROP TABLE IF EXISTS `users_workspaces_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_workspaces_asset` (
  `cid` int unsigned NOT NULL DEFAULT '0',
  `cpath` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userId` int NOT NULL DEFAULT '0',
  `list` tinyint(1) DEFAULT '0',
  `view` tinyint(1) DEFAULT '0',
  `publish` tinyint(1) DEFAULT '0',
  `delete` tinyint(1) DEFAULT '0',
  `rename` tinyint(1) DEFAULT '0',
  `create` tinyint(1) DEFAULT '0',
  `settings` tinyint(1) DEFAULT '0',
  `versions` tinyint(1) DEFAULT '0',
  `properties` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cid`,`userId`),
  UNIQUE KEY `cpath_userId` (`cpath`,`userId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_workspaces_asset`
--

LOCK TABLES `users_workspaces_asset` WRITE;
/*!40000 ALTER TABLE `users_workspaces_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_workspaces_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_workspaces_document`
--

DROP TABLE IF EXISTS `users_workspaces_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_workspaces_document` (
  `cid` int unsigned NOT NULL DEFAULT '0',
  `cpath` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userId` int NOT NULL DEFAULT '0',
  `list` tinyint unsigned DEFAULT '0',
  `view` tinyint unsigned DEFAULT '0',
  `save` tinyint unsigned DEFAULT '0',
  `publish` tinyint unsigned DEFAULT '0',
  `unpublish` tinyint unsigned DEFAULT '0',
  `delete` tinyint unsigned DEFAULT '0',
  `rename` tinyint unsigned DEFAULT '0',
  `create` tinyint unsigned DEFAULT '0',
  `settings` tinyint unsigned DEFAULT '0',
  `versions` tinyint unsigned DEFAULT '0',
  `properties` tinyint unsigned DEFAULT '0',
  PRIMARY KEY (`cid`,`userId`),
  UNIQUE KEY `cpath_userId` (`cpath`,`userId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_workspaces_document`
--

LOCK TABLES `users_workspaces_document` WRITE;
/*!40000 ALTER TABLE `users_workspaces_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_workspaces_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_workspaces_object`
--

DROP TABLE IF EXISTS `users_workspaces_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_workspaces_object` (
  `cid` int unsigned NOT NULL DEFAULT '0',
  `cpath` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userId` int NOT NULL DEFAULT '0',
  `list` tinyint unsigned DEFAULT '0',
  `view` tinyint unsigned DEFAULT '0',
  `save` tinyint unsigned DEFAULT '0',
  `publish` tinyint unsigned DEFAULT '0',
  `unpublish` tinyint unsigned DEFAULT '0',
  `delete` tinyint unsigned DEFAULT '0',
  `rename` tinyint unsigned DEFAULT '0',
  `create` tinyint unsigned DEFAULT '0',
  `settings` tinyint unsigned DEFAULT '0',
  `versions` tinyint unsigned DEFAULT '0',
  `properties` tinyint unsigned DEFAULT '0',
  `lEdit` text,
  `lView` text,
  `layouts` text,
  PRIMARY KEY (`cid`,`userId`),
  UNIQUE KEY `cpath_userId` (`cpath`,`userId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_workspaces_object`
--

LOCK TABLES `users_workspaces_object` WRITE;
/*!40000 ALTER TABLE `users_workspaces_object` DISABLE KEYS */;
INSERT INTO `users_workspaces_object` VALUES (4,'/Category',3,1,1,1,1,1,1,1,1,1,0,0,'','',''),(4,'/Category',4,1,1,1,1,0,0,1,0,0,0,0,'','',''),(6,'/Product',3,1,1,1,1,1,1,1,1,1,0,0,'','',''),(6,'/Product',4,1,1,1,1,0,0,1,0,0,0,0,'','','');
/*!40000 ALTER TABLE `users_workspaces_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uuids`
--

DROP TABLE IF EXISTS `uuids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uuids` (
  `uuid` char(36) NOT NULL,
  `itemId` int unsigned NOT NULL,
  `type` varchar(25) NOT NULL,
  `instanceIdentifier` varchar(50) NOT NULL,
  PRIMARY KEY (`uuid`,`itemId`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uuids`
--

LOCK TABLES `uuids` WRITE;
/*!40000 ALTER TABLE `uuids` DISABLE KEYS */;
/*!40000 ALTER TABLE `uuids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `versions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cid` int unsigned DEFAULT NULL,
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `userId` int unsigned DEFAULT NULL,
  `note` text,
  `stackTrace` text,
  `date` int unsigned DEFAULT NULL,
  `public` tinyint unsigned NOT NULL DEFAULT '0',
  `serialized` tinyint unsigned DEFAULT '0',
  `versionCount` int unsigned NOT NULL DEFAULT '0',
  `binaryFileHash` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `binaryFileId` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype_cid` (`ctype`,`cid`),
  KEY `date` (`date`),
  KEY `binaryFileHash` (`binaryFileHash`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (2,3,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(371): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(493): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(370): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617255411,0,1,1,'c4982076e1e87db96521b2e0646a6879f6c486aeacb8739bdb26e2b205bb1ac2740e10ca1299850dde855bde0c71288aa3096b0f52b0ac4df91e890c0d01c925',NULL),(3,4,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(371): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(493): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(370): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617255650,0,1,1,'c4982076e1e87db96521b2e0646a6879f6c486aeacb8739bdb26e2b205bb1ac2740e10ca1299850dde855bde0c71288aa3096b0f52b0ac4df91e890c0d01c925',NULL),(4,3,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617255697,0,1,1,NULL,NULL),(5,3,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1040): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->updateAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617255720,0,1,2,NULL,NULL),(6,3,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1040): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->updateAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617255742,0,1,3,NULL,NULL),(8,5,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(371): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(493): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(370): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617256052,0,1,1,'d2c0bbe8de2ef1805924270ccca797df4de38c9f4b1c1c3414872d3956de09bf4dd0c42861bfa65d08acef4566a7f7b97822214b67297cd26d20c5bab9f0cb63',NULL),(9,3,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1287): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617256543,0,1,4,NULL,NULL),(10,3,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617257397,0,1,5,NULL,NULL),(11,3,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617257423,0,1,6,NULL,NULL),(12,6,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(371): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(493): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(370): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617257506,0,1,1,'c4982076e1e87db96521b2e0646a6879f6c486aeacb8739bdb26e2b205bb1ac2740e10ca1299850dde855bde0c71288aa3096b0f52b0ac4df91e890c0d01c925',NULL),(15,3,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1040): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->updateAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617257802,0,1,7,NULL,NULL),(25,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617262137,0,1,1,NULL,NULL),(26,7,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(371): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(493): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(370): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617262179,0,1,1,'c4982076e1e87db96521b2e0646a6879f6c486aeacb8739bdb26e2b205bb1ac2740e10ca1299850dde855bde0c71288aa3096b0f52b0ac4df91e890c0d01c925',NULL),(27,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617262207,0,1,2,NULL,NULL),(28,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617262243,0,1,3,NULL,NULL),(29,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617262274,0,1,4,NULL,NULL),(30,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617262309,0,1,5,NULL,NULL),(31,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617262378,0,1,6,NULL,NULL),(32,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617263735,0,1,7,NULL,NULL),(33,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617263810,0,1,8,NULL,NULL),(34,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617265706,0,1,9,NULL,NULL),(35,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617265733,0,1,10,NULL,NULL),(36,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617265750,0,1,11,NULL,NULL),(37,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617265970,0,1,12,NULL,NULL),(38,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617265982,0,1,13,NULL,NULL),(39,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617266106,0,1,14,NULL,NULL),(40,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617266114,0,1,15,NULL,NULL),(41,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617266128,0,1,16,NULL,NULL),(42,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617266134,0,1,17,NULL,NULL),(43,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617267494,0,1,18,NULL,NULL),(44,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617268327,0,1,19,NULL,NULL),(45,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617268675,0,1,20,NULL,NULL),(46,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617269379,0,1,21,NULL,NULL),(47,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617269392,0,1,22,NULL,NULL),(48,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617271189,0,1,23,NULL,NULL),(49,8,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617271341,0,1,1,NULL,NULL),(50,8,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(371): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(493): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(370): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617271499,0,1,1,'72381fc1c22e812ad2326bf8ff7f51ebd7b653615ee325dd6c1c642f047fe24892d2b24d98a9d12859c783291253101c1e095fd9fb8dba43c276af073dd7b9a7',NULL),(51,8,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617271530,0,1,2,NULL,NULL),(52,9,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617271617,0,1,1,NULL,NULL),(53,9,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(371): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(493): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(370): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617271779,0,1,1,'72568ec10ac4d3e1ea1ac92e595bee4a0b38a5e9f1fcd91a5ac0c17db73e61f2927084241f19d7d5d86a4acce559e149e40f6aa451d4d2c8df488ebedc66b513',NULL),(54,9,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617271964,0,1,2,NULL,NULL),(55,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617345093,0,1,24,NULL,NULL),(56,3,'object',6,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1059): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->updateAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617352347,0,1,8,NULL,NULL),(57,7,'object',6,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617352672,0,1,25,NULL,NULL),(58,7,'object',6,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617352762,0,1,26,NULL,NULL),(59,7,'object',6,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617352796,0,1,27,NULL,NULL),(60,9,'object',6,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617352815,0,1,3,NULL,NULL),(62,11,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(371): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(493): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(335): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617354958,0,1,1,'848787a04ab5ad7be09a37db0ed31d1930cb4567afba873da45eaa71aab446c2c3812dcca2da92da2ba0a44b70da3e9233fcd5f11eb50dcf4594a7b9045d6e91',NULL),(63,12,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(371): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(493): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(335): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617354971,0,1,1,'c4982076e1e87db96521b2e0646a6879f6c486aeacb8739bdb26e2b205bb1ac2740e10ca1299850dde855bde0c71288aa3096b0f52b0ac4df91e890c0d01c925',NULL),(64,13,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(371): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(493): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(335): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617354980,0,1,1,'1ac99bb7e3de8a5153ed115a804210abf0c4eb8d57d55e5e5a8b24ba39e9a2378972b7af5e7dfe5cb370f5a646592d2cffbded1379e73728a514af0a6fd59be0',NULL),(65,14,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(371): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(493): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(335): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617354994,0,1,1,'72381fc1c22e812ad2326bf8ff7f51ebd7b653615ee325dd6c1c642f047fe24892d2b24d98a9d12859c783291253101c1e095fd9fb8dba43c276af073dd7b9a7',NULL),(66,15,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(371): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(493): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(335): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617355005,0,1,1,'d2c0bbe8de2ef1805924270ccca797df4de38c9f4b1c1c3414872d3956de09bf4dd0c42861bfa65d08acef4566a7f7b97822214b67297cd26d20c5bab9f0cb63',NULL),(67,3,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617355037,0,1,9,NULL,NULL),(68,8,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617355044,0,1,3,NULL,NULL),(69,7,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617355054,0,1,28,NULL,NULL),(70,9,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617355064,0,1,4,NULL,NULL),(71,2,'document',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/DocumentController.php(281): Pimcore\\Model\\Document->save()\n#5 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\DocumentController->addAction()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1617355088,0,1,1,NULL,NULL),(72,2,'document',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/PageController.php(184): Pimcore\\Model\\Document->save()\n#5 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1617355117,0,1,2,NULL,NULL),(74,15,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(872): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->updateAction()\n#5 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#7 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#8 {main}',1617371752,0,1,2,'d2c0bbe8de2ef1805924270ccca797df4de38c9f4b1c1c3414872d3956de09bf4dd0c42861bfa65d08acef4566a7f7b97822214b67297cd26d20c5bab9f0cb63',66),(75,11,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(872): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->updateAction()\n#5 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#7 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#8 {main}',1617371752,0,1,2,'848787a04ab5ad7be09a37db0ed31d1930cb4567afba873da45eaa71aab446c2c3812dcca2da92da2ba0a44b70da3e9233fcd5f11eb50dcf4594a7b9045d6e91',62),(76,13,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(872): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->updateAction()\n#5 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#7 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#8 {main}',1617371752,0,1,2,'1ac99bb7e3de8a5153ed115a804210abf0c4eb8d57d55e5e5a8b24ba39e9a2378972b7af5e7dfe5cb370f5a646592d2cffbded1379e73728a514af0a6fd59be0',64),(77,12,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(872): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->updateAction()\n#5 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#7 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#8 {main}',1617371752,0,1,2,'c4982076e1e87db96521b2e0646a6879f6c486aeacb8739bdb26e2b205bb1ac2740e10ca1299850dde855bde0c71288aa3096b0f52b0ac4df91e890c0d01c925',63),(78,14,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(872): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->updateAction()\n#5 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#7 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#8 {main}',1617371752,0,1,2,'72381fc1c22e812ad2326bf8ff7f51ebd7b653615ee325dd6c1c642f047fe24892d2b24d98a9d12859c783291253101c1e095fd9fb8dba43c276af073dd7b9a7',65),(80,5,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(872): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->updateAction()\n#5 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#7 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#8 {main}',1617371771,0,1,2,NULL,NULL),(81,4,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(872): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->updateAction()\n#5 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#7 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#8 {main}',1617371771,0,1,2,NULL,NULL),(82,6,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(872): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->updateAction()\n#5 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#7 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#8 {main}',1617371771,0,1,2,NULL,NULL),(83,3,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(872): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->updateAction()\n#5 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#7 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#8 {main}',1617371771,0,1,2,NULL,NULL),(84,8,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(872): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->updateAction()\n#5 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#7 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#8 {main}',1617371771,0,1,2,NULL,NULL),(85,9,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(872): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->updateAction()\n#5 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#7 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#8 {main}',1617371771,0,1,2,NULL,NULL),(86,7,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(872): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->updateAction()\n#5 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#7 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#8 {main}',1617371772,0,1,2,NULL,NULL),(87,17,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(371): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(493): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(335): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617372703,0,1,1,'79cfee69487feec24c31c5f8b4ffee08189abd7e39b8ebe87c356e9ca5b431071c06dd499502ff638b280037a2fd6c37a6cbe34f89d817c2dfc9bf042d63a627',NULL),(88,11,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617470123,0,1,1,NULL,NULL),(89,18,'asset',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(850): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(537): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Asset.php(371): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(493): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(370): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617470148,0,1,1,'88fbbcbebf74826f5e235edba561d8120e75aefec59868ded301411442d2f4fd055f296a10ec5b7fbcf3012ab33de49f70ccf042ed1465c7266c5a70b4dcb3f8',NULL),(90,11,'object',2,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/Group3-Bakery/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1617470377,0,1,2,NULL,NULL),(91,12,'object',0,'','#0 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/Group3-Bakery/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/Group3-Bakery/src/AppBundle/Command/CategoryCommand.php(94): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\CategoryCommand->execute()\n#7 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/Group3-Bakery/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/Group3-Bakery/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1617470487,0,1,1,NULL,NULL);
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `object_1`
--

/*!50001 DROP VIEW IF EXISTS `object_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`kajal`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `object_1` AS select `object_query_1`.`oo_id` AS `oo_id`,`object_query_1`.`oo_classId` AS `oo_classId`,`object_query_1`.`oo_className` AS `oo_className`,`object_query_1`.`name` AS `name`,`object_query_1`.`description` AS `description`,`object_query_1`.`active` AS `active`,`object_query_1`.`image` AS `image`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className`,`objects`.`o_childrenSortBy` AS `o_childrenSortBy`,`objects`.`o_childrenSortOrder` AS `o_childrenSortOrder`,`objects`.`o_versionCount` AS `o_versionCount` from (`object_query_1` join `objects` on((`objects`.`o_id` = `object_query_1`.`oo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `object_2`
--

/*!50001 DROP VIEW IF EXISTS `object_2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`kajal`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `object_2` AS select `object_query_2`.`oo_id` AS `oo_id`,`object_query_2`.`oo_classId` AS `oo_classId`,`object_query_2`.`oo_className` AS `oo_className`,`object_query_2`.`name` AS `name`,`object_query_2`.`description` AS `description`,`object_query_2`.`sku` AS `sku`,`object_query_2`.`image` AS `image`,`object_query_2`.`weight__value` AS `weight__value`,`object_query_2`.`weight__unit` AS `weight__unit`,`object_query_2`.`price__value` AS `price__value`,`object_query_2`.`price__unit` AS `price__unit`,`object_query_2`.`manufacturedOn` AS `manufacturedOn`,`object_query_2`.`expiry` AS `expiry`,`object_query_2`.`categoryType` AS `categoryType`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className`,`objects`.`o_childrenSortBy` AS `o_childrenSortBy`,`objects`.`o_childrenSortOrder` AS `o_childrenSortOrder`,`objects`.`o_versionCount` AS `o_versionCount` from (`object_query_2` join `objects` on((`objects`.`o_id` = `object_query_2`.`oo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `object_3`
--

/*!50001 DROP VIEW IF EXISTS `object_3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`kajal`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `object_3` AS select `object_query_3`.`oo_id` AS `oo_id`,`object_query_3`.`oo_classId` AS `oo_classId`,`object_query_3`.`oo_className` AS `oo_className`,`object_query_3`.`name` AS `name`,`object_query_3`.`file__id` AS `file__id`,`object_query_3`.`file__type` AS `file__type`,`object_query_3`.`status` AS `status`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className`,`objects`.`o_childrenSortBy` AS `o_childrenSortBy`,`objects`.`o_childrenSortOrder` AS `o_childrenSortOrder`,`objects`.`o_versionCount` AS `o_versionCount` from (`object_query_3` join `objects` on((`objects`.`o_id` = `object_query_3`.`oo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-03 22:58:56
