-- MySQL dump 10.13  Distrib 5.6.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pizza_shefu
-- ------------------------------------------------------
-- Server version	5.6.31-0ubuntu0.15.10.1

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
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Pizza','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown','Jinapala'),(2,'Beverage','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown','Kalhara'),(3,'Topping','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown','Somaweera'),(4,'Desserts','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown','Samantha'),(5,'Salad','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown','Lorence');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `category_type`
--

LOCK TABLES `category_type` WRITE;
/*!40000 ALTER TABLE `category_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES (1,'HwCvWkArpe',5.25,'2016-09-13','active','0711234567'),(2,'7PkzURJXiv',7.50,'2016-11-19','used','0119123789'),(3,'eEHVov6RmV',8.25,'2016-01-19','expired','0710710710'),(4,'tiQU2CM2bX',17.25,'2016-11-19','active','0719789852'),(5,'jTfoL6BBX7',25.25,'2016-12-19','active','0852741258');
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Mr','Kasun','Kalhara','kkalla','5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8','mail@mail.com','Test lane','bug free ','application','0715642138','2016-09-13','active'),(2,'Ms','Capricone','Silver','testre','5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8','hulkmail!@gmail.com','Creeps Lane','Town hall','Axa town','0859632586','2016-09-13','inactive'),(3,'Mrs','Sunimali','Kawya','skroxsa','5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8','linker@tes.com','linken park','howler street','New York','0213694562','2015-12-13','active'),(4,'Mr','Rio','De Guera','braziliansta','5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8','brrocks@bro.com','St. Petersburge','Stakeout lane','Losta rico','0716548965','2011-02-23','inactive'),(5,'Mr','Unknown','User','anonymous','5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8','anonymous@anony.mou','Dark net','Deep web','Internet','0110110111','1000-04-01','active');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,'Saman','Thilina ','Chithra Niwasa, Tharu Mawatha, Colombo 07','2016-09-13','05:25:00.000000','Pending','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem',1,1),(2,'Hewawasam','Ajanatha','UCSC Complex, Reid Avenue, Colombo 07','2016-09-19','12:30:00.000000','Delivered','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem',2,1),(3,'Kallora','Chamal','George Street, Thummulla, Nugegoda','2016-10-22','14:30:00.000000','Pending','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem',3,2),(6,'John','Smith','Langley, North town, NY','2016-09-13','19:45:00.000000','Delivered','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem',2,1),(7,'Bourne','Kumsy','Cracken Street, Nowhere Town, California','2015-04-03','09:45:00.000000','Delivered','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem',3,2);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `delivery_method`
--

LOCK TABLES `delivery_method` WRITE;
/*!40000 ALTER TABLE `delivery_method` DISABLE KEYS */;
INSERT INTO `delivery_method` VALUES (1,'pickup'),(2,'Door Step');
/*!40000 ALTER TABLE `delivery_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,'seasonal',1),(2,'coupen',1),(3,'seasonal',2),(4,'coupen',2),(5,'seasonal',3);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'2016-08-22','08:26:25.000000','when an unknown printer took a galley of type and scrambled it to make a type specimen book.',1,2,1),(15,'2015-12-20','09:23:26.000000','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',3,1,5),(16,'2016-08-15','12:33:32.350342','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',5,2,4),(17,'2016-04-05','15:12:00.000000','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',2,3,3),(18,'2016-08-08','12:34:00.000000','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',4,5,2),(19,'2016-05-08','03:45:00.000000','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',3,4,1);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,'GROUP_SYS_ADMIN','group with the entire authority for the system',1),(2,'GROUP_ADM_MANAGER','MAnager group for Admin module administration work',1),(3,'GROUP_CC_MANAGER',' Manager group for Customercare module',1),(4,'GROUP_CUSTOMERCARE',' Customer Care group including Chefs, Waiters, Cashiers',1),(5,'GROUP_RPT_MANAGER',' Manager group for reporting. Responsible for carrying out reporting',2);
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `group_permission`
--

LOCK TABLES `group_permission` WRITE;
/*!40000 ALTER TABLE `group_permission` DISABLE KEYS */;
INSERT INTO `group_permission` VALUES (1,1),(2,1),(3,1),(1,2),(2,2),(3,2),(1,3),(2,3),(3,3),(1,4),(2,4),(3,4),(1,5),(2,5),(3,5),(1,6),(3,6),(1,7),(3,7),(1,8),(3,8),(1,9),(3,9),(1,10),(3,10),(1,11),(3,11),(1,12),(3,12),(1,13),(3,13),(1,14),(3,14),(1,15),(3,15),(1,16),(3,16),(1,17),(3,17),(1,18),(3,18),(1,19),(3,19),(1,20),(2,20),(1,21),(2,21),(1,22),(2,22),(1,23),(2,23),(1,24),(2,24),(1,25),(2,25),(1,26),(2,26),(1,27),(2,27),(1,28),(2,28),(1,29),(3,29),(4,29),(5,29),(1,30),(5,30),(1,31),(5,31),(1,32),(2,32),(3,32),(4,32),(5,32),(1,33),(3,33),(4,33),(1,34),(2,34),(3,34),(4,34),(5,34);
/*!40000 ALTER TABLE `group_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `group_staff`
--

LOCK TABLES `group_staff` WRITE;
/*!40000 ALTER TABLE `group_staff` DISABLE KEYS */;
INSERT INTO `group_staff` VALUES (1,1),(2,2),(3,3),(4,4),(4,5),(5,6);
/*!40000 ALTER TABLE `group_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (1,'0715646542'),(2,'0756465649'),(3,'0771123456'),(4,'0112345654'),(5,'0721212321');
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Thanduri Pizza','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',4,'/a/dummy/image/path/',1),(2,'Cheese Lover','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',3,'/a/dummy/image/path/',2),(3,'Chicken Lasanga','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',4,'/a/dummy/image/path/',3),(4,'Garlic Bread','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',1,'/a/dummy/image/path/',1),(5,'Sausage Rolls','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',1,'/a/dummy/image/path/',5),(6,'a','ddd',1,'dew',2);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'admin','admin module'),(2,'rewards-reporting','This module is for reporting');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (11,'2016-09-05','04:13:11.288000','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',1),(12,'2016-09-06','07:33:21.000000','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',2),(13,'2016-08-17','15:45:00.000000','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',1),(14,'2016-08-31','04:29:00.000000','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',3),(15,'2016-07-14','03:08:00.000000','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',1);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,'Christmas','dummy content',414.00,'/a/dummy/image/path/'),(2,'New Year','dummy content',658.00,'/a/dummy/image/path/'),(3,'Halloween','dummy content',154.22,'/a/dummy/image/path/'),(4,'','dummy content',564.00,'/a/dummy/image/path/'),(5,'Feasty','dummy content',256.25,'/a/dummy/image/path/');
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1,'Visa'),(2,'Master'),(3,'devspace'),(4,'paypal'),(5,'payza');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payment_transaction`
--

LOCK TABLES `payment_transaction` WRITE;
/*!40000 ALTER TABLE `payment_transaction` DISABLE KEYS */;
INSERT INTO `payment_transaction` VALUES (1,'2016-09-06','07:18:20.000000',1542.00,'paid','call',2,2,4,3,2),(2,'2016-08-09','10:37:15.000000',562.00,'paid','online',4,2,5,1,5),(3,'2016-07-18','12:34:00.000000',456.25,'pending','online',NULL,3,1,1,1),(4,'2016-06-05','11:37:00.000000',895.00,'pending','online',3,2,3,6,4),(5,'2016-03-16','09:02:00.000000',563.00,'paid','online',2,1,4,3,4);
/*!40000 ALTER TABLE `payment_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payment_transaction_discount`
--

LOCK TABLES `payment_transaction_discount` WRITE;
/*!40000 ALTER TABLE `payment_transaction_discount` DISABLE KEYS */;
INSERT INTO `payment_transaction_discount` VALUES (1,2),(2,3),(3,4),(4,5),(5,1);
/*!40000 ALTER TABLE `payment_transaction_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'ADD_USER','Permission to add user'),(2,'EDIT_USER','Permission to modify user'),(3,'BLOCK_USER','Permission to remove user from user list and block'),(4,'BLOCK_USER_RESTORE','Permission to restore a blocked users'),(5,'VIEW_USER','Permission to view the details of user'),(6,'ADD_ITEM','Permission to add an item'),(7,'EDIT_ITEM','Permission to modify an item'),(8,'DELETE_ITEM','Permission to remove an item'),(9,'VIEW_ITEMS','Permission to view the details of items'),(10,'ADD_PACKAGE','Permission to add an package'),(11,'EDIT_PACKAGE','Permission to modify an package'),(12,'DELETE_PACKAGE','Permission to remove an package'),(13,'VIEW_PACKAGE','Permission to view the details of packages'),(14,'ADD_CATEGORY','Permission to add a new category'),(15,'EDIT_CATEGORY','Permission to modify a category details'),(16,'DELETE_CATEGORY','Permission to remove a category'),(17,'VIEW_CATEGORY','Permission to view the details of categories'),(18,'APPROVE_COMMENTS','Permission to approve user comments'),(19,'DELETE_COMMENTS','Permission to remove a comment'),(20,'ADD_GROUP','Permission to add a new group'),(21,'EDIT_GROUP','Permission to modify a group'),(22,'DELETE_GROUP','Permission to remove a group'),(23,'VIEW_GROUP','Permission to view groups'),(24,'ADD_PERMISSION','Permission to add permission'),(25,'EDIT_PERMISSION','Permission to modify permission'),(26,'DELETE_PERMISSION','Permission to delete permission'),(27,'ADD_MODULE','Permission to add module'),(28,'MODIFY_MODULE','Permission to modify module'),(29,'VIEW_REPORTS','Permission to view reports'),(30,'CREATE_REPORTS','Permission to generate a reports'),(31,'DELETE_REPORTS','Permission to delete the created reports'),(32,'VIEW_PROFILE','View the profile'),(33,'VIEW_COMMENTS','Permission to view the user comments'),(34,'LOGIN','Login to the system, Only for active status');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'item',1),(2,'package',2),(3,'item',3),(4,'item',4),(5,'package',5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `seasonal_discount`
--

LOCK TABLES `seasonal_discount` WRITE;
/*!40000 ALTER TABLE `seasonal_discount` DISABLE KEYS */;
INSERT INTO `seasonal_discount` VALUES (1,10.25,'2016-05-04','2016-09-29','active'),(2,5.25,'2016-12-01','2016-12-31','inactive'),(3,15.00,'2017-04-01','2017-04-30','active'),(4,8.25,'2016-02-08','2016-02-15','inactive'),(5,12.25,'2016-07-11','2016-07-19','inactive');
/*!40000 ALTER TABLE `seasonal_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
INSERT INTO `shopping_cart` VALUES (1,1000.00,1,NULL),(2,1545.00,NULL,2),(3,502.00,NULL,2),(4,8514.00,1,NULL),(5,456.00,2,NULL);
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `shopping_cart_product`
--

LOCK TABLES `shopping_cart_product` WRITE;
/*!40000 ALTER TABLE `shopping_cart_product` DISABLE KEYS */;
INSERT INTO `shopping_cart_product` VALUES (4,1),(5,2),(1,3),(2,4),(3,5);
/*!40000 ALTER TABLE `shopping_cart_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES ('large',1280.00,1),('medium',890.00,1),('regular',560.00,1),('large',960.00,2),('regular',490.00,2),('large',1380.00,3),('medium',740.00,3),('regular',470.00,3),('medium',390.00,4),('regular',240.00,4);
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Mr','sysadmin','a159b7ae81ba3552af61e9731b20870515944538','Piumantha','Heshan','sysadmin@pizzashefu.com','+94778908976','No:2, Dangarama Road','Kollupitiya','Colombo','System Adinistrator','Adminintration','Colombo','2015-08-04','active'),(2,'Mrs','adminmanager','47597d7f4c61063f651df834bed02203b816d996','Piumika','Dankotuva','adminmanager@pizzashefu.com','+94710098765','No:32, ','Kadawatha','Gampaha','System Manager','Adminintration','Colombo','2015-09-22','active'),(3,'Mr','ccmanager','e928bc3e58bde5afa2de18334666022411a5b290','Isuru','Godakumbura','ccmanager@pizzashefu.com','+94774352231','No:556,Raddoluwa','Katunayaka','Gampaha','Customer Manager','Adminintration','Colombo','2016-01-12','active'),(4,'Mr','customercare','d9ba6e298a34f4648ce07ec93ef099c58fff8e50','Thanuja','Abeyrathna','customercare@pizzashefu.com','+94713456722','No:54,','Pilimathalawa','Kandy','Cashier','Finance','Colombo','2014-10-14','active'),(5,'Mrs','customercare2','507db975e3a0024893db4aba771625dc2131d135','Manjula','Priyanthi','customercare2@pizzashefu.com','+94712340098','No:43','Baseline Road','Colombo','Main Chef','Logistic','Colombo','2016-04-26','active'),(6,'Mr','reportmanager','e0ef0b3a7d4e03ed6a746896826ad04dffa0c199','Nadun','Udayanga','reportmanager@pizzashefu.com','+94772345670','No:889,','Maligawaththa Lane','Kandy','Reporting Manager','Reporting','Colombo','2014-03-17','active');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sub_category`
--

LOCK TABLES `sub_category` WRITE;
/*!40000 ALTER TABLE `sub_category` DISABLE KEYS */;
INSERT INTO `sub_category` VALUES (1,'Ice creams','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','Alexander',1),(2,'Chicken','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','Napolean',2),(3,'Italian','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','Santha',3),(4,'Soft Drinks','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','Rico',4),(5,'Alcohol','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','Jackson',5);
/*!40000 ALTER TABLE `sub_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'veg'),(2,'non-veg'),(3,'carbonated'),(4,'non-carbonated');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-26 14:46:21
