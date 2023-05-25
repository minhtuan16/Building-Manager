-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: building_manager2
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `building_employee`
--

DROP TABLE IF EXISTS `building_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building_employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `salary_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnhitedibwwmuxvxg7pw68de1j` (`salary_id`),
  CONSTRAINT `FKnhitedibwwmuxvxg7pw68de1j` FOREIGN KEY (`salary_id`) REFERENCES `salary` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_employee`
--

LOCK TABLES `building_employee` WRITE;
/*!40000 ALTER TABLE `building_employee` DISABLE KEYS */;
INSERT INTO `building_employee` VALUES (2,'Đống Đa','2022-12-30 07:00:00.000000','Minh Nguyen','0961394928','Thực tập sinh Vệ sinh',1),(3,'Đống Đa','2022-12-30 07:00:00.000000','Minh2 Nguyen','0961394928','Nhân viên Vệ sinh',2),(4,'Đống Đa','2023-05-07 07:00:00.000000','Minh3 Nguyen','0961394928','Trưởng bộ phận Vệ sinh',3),(5,'Đống Đa','2023-05-10 07:00:00.000000','Duc Le','0961394928','Thực tập sinh Bảo vệ',4),(6,'Đống Đa','2023-05-13 07:00:00.000000','Duc2 Le','0961394928','Nhân viên Bảo vệ',5),(7,'Đống Đa','2023-05-19 07:00:00.000000','Duc3 Le','0961394928','Trưởng bộ phận Bảo vệ',6),(8,'Đống Đa','2023-05-15 07:00:00.000000','Long Tran','0961394928','Thực tập sinh Sửa chữa',8),(9,'Đống Đa','2023-05-13 07:00:00.000000','Long2 Tran','0961394928','Nhân viên Sửa chữa',9),(10,'Đống Đa','2023-05-14 07:00:00.000000','Long3 Tran','0961394928','Trưởng bộ phận Sửa chữa',10),(11,'Đống Đa','2023-05-07 07:00:00.000000','Duy Trung','0961394928','Thực tập sinh Bê nước',7);
/*!40000 ALTER TABLE `building_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `active_field` varchar(255) DEFAULT NULL,
  `authorized_capital` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tax_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Tech',10000000,'Cong ty A','0987654321','Working','A123'),(2,'Insurance',10000000,'Cong ty B','0987654321','Working','B123'),(4,'Gemstone',10000000,'Company C','0987654321','Working','C123');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_employee`
--

DROP TABLE IF EXISTS `company_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_of_birth` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `social_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `company_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrtmqwiubff604xe2osnxdgoqe` (`company_id`),
  CONSTRAINT `FKrtmqwiubff604xe2osnxdgoqe` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_employee`
--

LOCK TABLES `company_employee` WRITE;
/*!40000 ALTER TABLE `company_employee` DISABLE KEYS */;
INSERT INTO `company_employee` VALUES (1,'2001-01-06 00:00:00.000000','ao so mi ngan tay','0987654321','A11',NULL,1),(2,'2001-01-06 00:00:00.000000','hoangan','0987654321','a1',NULL,1),(3,'2001-01-06 00:00:00.000000','tuan','0987654321','a1',NULL,2),(6,'2001-01-07 00:00:00.000000','Trần Tuân','0987654321','C1',NULL,4),(7,'2001-06-02 00:00:00.000000','tuan','0987654321','C2',NULL,4),(10,'2023-05-02 07:00:00.000000','tuan3','0987654321','C3',NULL,4),(11,'2023-05-03 07:00:00.000000','tuan4','0987654321','C4',NULL,4);
/*!40000 ALTER TABLE `company_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `expired_date` datetime(6) DEFAULT NULL,
  `is_canceled` int NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `rented_area` double NOT NULL,
  `rented_date` datetime(6) DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `floor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm8jvj0jm2ihmy0fvrupie0ndk` (`company_id`),
  KEY `FKrmgvaidtquv3qh97gf5rxm2v4` (`floor_id`),
  CONSTRAINT `FKm8jvj0jm2ihmy0fvrupie0ndk` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKrmgvaidtquv3qh97gf5rxm2v4` FOREIGN KEY (`floor_id`) REFERENCES `floor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (1,NULL,'2024-05-10 07:00:00.000000',0,'Vip1',140,'2023-05-10 00:00:00.000000',1,1),(2,NULL,'2024-05-10 07:00:00.000000',0,'Vip1',140,'2023-05-10 00:00:00.000000',4,3),(7,NULL,'2024-05-11 07:00:00.000000',0,'Vip3',100,'2023-05-11 07:00:00.000000',1,2),(8,NULL,'2024-05-11 07:00:00.000000',0,'Vip1',140,'2023-05-11 07:00:00.000000',4,2),(9,NULL,'2024-05-02 07:00:00.000000',0,'Vip3',100,'2023-05-02 07:00:00.000000',1,1);
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floor`
--

DROP TABLE IF EXISTS `floor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `floor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ground_area` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price_perm2` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floor`
--

LOCK TABLES `floor` WRITE;
/*!40000 ALTER TABLE `floor` DISABLE KEYS */;
INSERT INTO `floor` VALUES (1,500,'Tầng 1',10000000),(2,500,'Tầng 2',9000000),(3,500,'Tầng 3',8000000),(4,500,'Tầng 4',7500000),(5,500,'Tầng 5',7000000),(6,500,'Tầng 6',6500000),(7,500,'Tầng 7',6000000),(8,500,'Tầng 8',6000000),(9,500,'Tầng 9',6000000);
/*!40000 ALTER TABLE `floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `month`
--

DROP TABLE IF EXISTS `month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `month` (
  `id` int NOT NULL AUTO_INCREMENT,
  `month` int NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `month`
--

LOCK TABLES `month` WRITE;
/*!40000 ALTER TABLE `month` DISABLE KEYS */;
INSERT INTO `month` VALUES (1,1,2023),(2,2,2023),(3,3,2023),(4,4,2023),(5,5,2023),(6,6,2023),(7,7,2023),(8,8,2023),(9,9,2023),(10,10,2023),(11,11,2023),(12,12,2023);
/*!40000 ALTER TABLE `month` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_bill`
--

DROP TABLE IF EXISTS `monthly_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monthly_bill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `total_amount` double NOT NULL,
  `contract_id` int NOT NULL,
  `month_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKju7hu44ras2o9yo1vswfimmqw` (`contract_id`),
  KEY `FK7pk8nfifcuuevkyriy4hn7wje` (`month_id`),
  CONSTRAINT `FK7pk8nfifcuuevkyriy4hn7wje` FOREIGN KEY (`month_id`) REFERENCES `month` (`id`),
  CONSTRAINT `FKju7hu44ras2o9yo1vswfimmqw` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_bill`
--

LOCK TABLES `monthly_bill` WRITE;
/*!40000 ALTER TABLE `monthly_bill` DISABLE KEYS */;
INSERT INTO `monthly_bill` VALUES (1,1400000000,1,5),(2,1120000000,2,5),(3,900000000,7,5),(4,1260000000,8,5),(5,1000000000,9,5);
/*!40000 ALTER TABLE `monthly_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_salary`
--

DROP TABLE IF EXISTS `monthly_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monthly_salary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `salary` double NOT NULL,
  `salary_level` int NOT NULL,
  `building_employee_id` int NOT NULL,
  `month_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo9r7tyx0wq7gj8hj2bjlmu29i` (`building_employee_id`),
  KEY `FKsuj5paso1hjpsvqqwrc2fij19` (`month_id`),
  CONSTRAINT `FKo9r7tyx0wq7gj8hj2bjlmu29i` FOREIGN KEY (`building_employee_id`) REFERENCES `building_employee` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKsuj5paso1hjpsvqqwrc2fij19` FOREIGN KEY (`month_id`) REFERENCES `month` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_salary`
--

LOCK TABLES `monthly_salary` WRITE;
/*!40000 ALTER TABLE `monthly_salary` DISABLE KEYS */;
INSERT INTO `monthly_salary` VALUES (1,'Đống Đa','Minh Nguyen','0987654321','Thực tập sinh Vệ sinh',1500000,1,2,5),(2,'Đống Đa','Minh2 Nguyen','0987654321','Nhân viên Vệ sinh',3000000,2,3,5),(3,'Đống Đa','Minh3 Nguyen','0987654321','Trưởng bộ phận Vệ sinh',4500000,3,4,5),(4,'Đống Đa','Duc Le','0987654321','Thực tập sinh Bảo vệ',2000000,1,5,5),(5,'Đống Đa','Duc2 Le','0987654321','Nhân viên Bảo vệ',4000000,2,6,5),(6,'Đống Đa','Duc3 Le','0987654321','Trưởng bộ phận Bảo vệ',6000000,3,7,5),(7,'Đống Đa','Long Tran','0987654321','Thực tập sinh Sửa chữa',3000000,1,8,5),(8,'Đống Đa','Long2 Tran','0987654321','Nhân viên Sửa chữa',3000000,2,9,5),(9,'Đống Đa','Long3 Tran','0987654321','Trưởng bộ phận Sửa chữa',3000000,3,10,5),(10,'Đống Đa','Duy Trung','0987654321','Thực tập sinh Bê nước',500000,1,11,5),(11,'Đống Đa','Minh2 Nguyen','0987654321','Nhân viên Vệ sinh',3000000,2,3,4),(12,'Đống Đa','Minh3 Nguyen','0987654321','Trưởng bộ phận Vệ sinh',4500000,3,4,4),(13,'Đống Đa','Duc2 Le','0987654321','Nhân viên Bảo vệ',4000000,2,6,4),(14,'Đống Đa','Duc3 Le','0987654321','Trưởng bộ phận Bảo vệ',6000000,3,7,4),(15,'Đống Đa','Long2 Tran','0987654321','Nhân viên Sửa chữa',3000000,2,9,4),(16,'Đống Đa','Long3 Tran','0987654321','Trưởng bộ phận Sửa chữa',3000000,3,10,4),(17,'Đống Đa','Minh3 Nguyen','0987654321','Trưởng bộ phận Vệ sinh',4500000,3,4,3),(18,'Đống Đa','Duc3 Le','0987654321','Trưởng bộ phận Bảo vệ',6000000,3,7,3),(19,'Đống Đa','Long3 Tran','0987654321','Trưởng bộ phận Sửa chữa',3000000,3,10,3);
/*!40000 ALTER TABLE `monthly_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_service_bill`
--

DROP TABLE IF EXISTS `monthly_service_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monthly_service_bill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `end` datetime(6) DEFAULT NULL,
  `start` datetime(6) DEFAULT NULL,
  `total_amount` double NOT NULL,
  `month_id` int NOT NULL,
  `service_contract_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbkt52vfj6edgqxi14yroaqkr7` (`month_id`),
  KEY `FKbowf0xd6s8bkp5dj8s692xitj` (`service_contract_id`),
  CONSTRAINT `FKbkt52vfj6edgqxi14yroaqkr7` FOREIGN KEY (`month_id`) REFERENCES `month` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKbowf0xd6s8bkp5dj8s692xitj` FOREIGN KEY (`service_contract_id`) REFERENCES `service_contract` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_service_bill`
--

LOCK TABLES `monthly_service_bill` WRITE;
/*!40000 ALTER TABLE `monthly_service_bill` DISABLE KEYS */;
INSERT INTO `monthly_service_bill` VALUES (1,NULL,NULL,2022581,5,1),(2,NULL,NULL,2980645,5,2),(3,NULL,NULL,745161,5,3),(4,NULL,NULL,2235484,5,4),(5,NULL,NULL,1930645,5,5),(6,NULL,NULL,2574194,5,6),(7,NULL,NULL,1930645,5,7),(8,NULL,NULL,643548,5,8),(9,NULL,NULL,1016129,5,9),(10,NULL,NULL,1354839,5,10);
/*!40000 ALTER TABLE `monthly_service_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `salary` double NOT NULL,
  `salary_level` int NOT NULL,
  `service_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsaot0cbk5x1lnotqbsaaxuvt5` (`service_id`),
  CONSTRAINT `FKsaot0cbk5x1lnotqbsaaxuvt5` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,1500000,1,1),(2,3000000,2,1),(3,4500000,3,1),(4,2000000,1,2),(5,4000000,2,2),(6,6000000,3,2),(7,500000,1,3),(8,1500000,1,4),(9,3000000,2,4),(10,4500000,3,4);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `required` int NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'Vệ sinh',1500000,1,'Dịch vụ bắt buộc'),(2,'Bảo vệ',2000000,1,'Dịch vụ bắt buộc'),(3,'Bê nước',500000,0,'Dịch vụ không bắt buộc'),(4,'Sửa chữa',1500000,0,'Dịch vụ không bắt buộc');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_contract`
--

DROP TABLE IF EXISTS `service_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_contract` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `company_id` int NOT NULL,
  `service_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKslcy2sy6xe7tk15d4rkrjd0hv` (`company_id`),
  KEY `FK9wu27bv4nch0u8fhxkpcjhscp` (`service_id`),
  CONSTRAINT `FK9wu27bv4nch0u8fhxkpcjhscp` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKslcy2sy6xe7tk15d4rkrjd0hv` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_contract`
--

LOCK TABLES `service_contract` WRITE;
/*!40000 ALTER TABLE `service_contract` DISABLE KEYS */;
INSERT INTO `service_contract` VALUES (1,'Dịch vụ vệ sinh','2023-05-03 00:00:00.000000',1,1),(2,'Dịch vụ bảo vệ','2023-05-01 00:00:00.000000',1,2),(3,'Dịch vụ bê nước','2023-05-01 00:00:00.000000',1,3),(4,'Dịch vụ sửa chữa','2023-05-01 00:00:00.000000',1,4),(5,'Dịch vụ vệ sinh','2023-05-01 00:00:00.000000',4,1),(6,'Dịch vụ bảo vệ','2023-05-01 00:00:00.000000',4,2),(7,'Dịch vụ sửa chữa','2023-05-01 00:00:00.000000',4,4),(8,'Dịch vụ bê nước','2023-05-01 00:00:00.000000',4,3),(9,'Dịch vụ vệ sinh','2023-05-01 00:00:00.000000',2,1),(10,'Dịch vụ bảo vệ','2023-05-01 00:00:00.000000',2,2);
/*!40000 ALTER TABLE `service_contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Minh Tuân','$2a$10$CiHpSYh/l8pCxMih3bwlyefrgx8gSZTBKCXvOX0l9NLyJ3wh5qBQm','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKj6m8fwv7oqv74fcehir1a9ffy` (`role_id`),
  CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKj6m8fwv7oqv74fcehir1a9ffy` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work` (
  `id` int NOT NULL AUTO_INCREMENT,
  `assigner` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `building_employee_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhw0bleec3ejwisnk36mgcpn85` (`building_employee_id`),
  CONSTRAINT `FKhw0bleec3ejwisnk36mgcpn85` FOREIGN KEY (`building_employee_id`) REFERENCES `building_employee` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
INSERT INTO `work` VALUES (1,'Quản lý','aaaaaaaaaa','2023-05-31','2023-05-01','abc',11),(2,'Quản lý','xxxxxxxxxxxxxxxxxxxxxxxxxxx','2023-05-31','2023-05-01','xyz',2),(3,'Quản lý','Sửa chữa quạt trần tầng 1','2023-05-31','2023-05-01','Sửa chữa nhẹ',9);
/*!40000 ALTER TABLE `work` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-26  1:43:53
