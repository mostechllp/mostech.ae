-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 23, 2019 at 10:58 AM
-- Server version: 5.6.44-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `directdeal`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(11) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `fkAdminId` int(11) NOT NULL,
  `isExist` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `adminname`, `password`, `fkAdminId`, `isExist`) VALUES
(1, 'admin', '2b34bfa87040ef95efa87020516fb7d5', 2, 0),
(2, 'Ufloret', 'd8519b45f426208b50ce32ea94ebae6c', 7, 0),
(3, 'sheriffblathur', '7440a8b36ee00bb1a5d163ddaf991927', 8, 0),
(4, 'yusufbtr', '5f8dd1277c341113a5d4f6580e33cb14', 46, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `adname` varchar(100) NOT NULL,
  `img` varchar(500) NOT NULL,
  `postDate` date NOT NULL,
  `expDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `adname`, `img`, `postDate`, `expDate`) VALUES
(1, 'List1', 'img/12077-txkkmbp.png', '2019-08-13', '0000-00-00'),
(2, 'List2', 'img/41812-ws-1920x1080-sc-plif-1.jpg', '2019-08-13', '0000-00-00'),
(3, 'Detail1', 'img/51372-206926-mcdonalds-mcdonanlds-hot-drink.jpg', '2019-08-13', '0000-00-00'),
(4, 'Detail2', 'img/64846-m_pepsi_versiontypo_fullldef_0636.jpg', '2019-08-13', '0000-00-00'),
(5, 'Home1', 'img/3888-41812-ws-1920x1080-sc-plif-1.jpg', '0000-00-00', '0000-00-00'),
(6, 'Home2', 'img/69030-mcdonalds-big-tasty.jpg', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `codegen`
--

CREATE TABLE `codegen` (
  `id` int(11) NOT NULL,
  `fkCatId` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `numm` int(11) NOT NULL,
  `isExist` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codegen`
--

INSERT INTO `codegen` (`id`, `fkCatId`, `code`, `numm`, `isExist`) VALUES
(1, 1, 'LAND', 1057, 1),
(2, 2, 'VEHI', 1147, 1),
(3, 3, 'COM', 1005, 1),
(4, 4, 'ELEC', 1029, 1),
(5, 5, 'RESI', 1065, 1),
(6, 6, 'PROD', 1018, 1);

-- --------------------------------------------------------

--
-- Table structure for table `commercial`
--

CREATE TABLE `commercial` (
  `id` int(100) NOT NULL,
  `forcomm` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `header` varchar(200) NOT NULL,
  `img` varchar(500) NOT NULL,
  `buildingAreaValue` float NOT NULL,
  `buildingAreaUnit` int(11) NOT NULL,
  `landAreaValue` float NOT NULL,
  `landAreaUnit` int(11) NOT NULL,
  `numberOfFloors` int(100) NOT NULL,
  `numberOfRooms` int(100) NOT NULL,
  `roadAccess` int(11) NOT NULL,
  `otherFacilities` varchar(2000) NOT NULL,
  `minrate` bigint(20) NOT NULL,
  `maxrate` bigint(20) NOT NULL,
  `location` varchar(500) NOT NULL,
  `district` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `contact` bigint(100) NOT NULL,
  `status` int(11) NOT NULL,
  `fkUserId` int(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isBlocked` int(100) NOT NULL,
  `fkCountryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commercial`
--

INSERT INTO `commercial` (`id`, `forcomm`, `code`, `header`, `img`, `buildingAreaValue`, `buildingAreaUnit`, `landAreaValue`, `landAreaUnit`, `numberOfFloors`, `numberOfRooms`, `roadAccess`, `otherFacilities`, `minrate`, `maxrate`, `location`, `district`, `state`, `contact`, `status`, `fkUserId`, `date`, `isBlocked`, `fkCountryId`) VALUES
(1, 1, 'COM1002', 'Wheel alignment 3D, 4D & tyre Shop for sale', 'Commercial/84754-616f5c9e-f731-4b97-a5d5-f37d677ff057.jpeg', 0, 0, 0, 0, 1, 6, 1, 'Johnbean aligned...machine....( with garante e)....nitrogon filler machine ( with garan tee).... car &bike tyres...etc.', 0, 1500000, 'Vengara ', 'Malappuram', 'Kerala', 8926667777, 1, 3, '2019-08-28 07:00:00', 0, 1),
(2, 1, 'COM1003', 'Bakery for sale @ Cochin, Puthencruze', 'Commercial/25426-04a94def-32b1-467d-a540-7e7a782bca17.jpeg', 0, 0, 0, 0, 1, 2, 1, 'Details:  Total 5 Lks(security included )  Two shutters with one sideshutter room with full furnished. Room rent monthly Rs. 10,000/- All bakery equipments will be included (Glass counters,freidge ,cooler, inverter ,kitchen equipments, etc..', 0, 500000, 'Patham Mile, Puthencruze, Cochin', 'Ernakulam', 'Kerala', 9562397954, 1, 3, '2019-08-28 07:00:00', 0, 1),
(3, 1, 'COM1004', 'à´±àµ†à´¡à´¿à´®àµ‡à´¡àµ à´·àµ‹à´ªàµà´ªàµ à´¸àµà´±àµà´±àµ‹à´•àµà´•àµ à´‰àµ¾à´ªàµà´ªà´Ÿàµ† à´µà´¿à´²àµà´ªà´¨à´¯àµà´•àµà´•àµ ', 'Commercial/70826-a969e3cd-8384-41ef-ade4-79080ab9a56e.jpeg', 0, 0, 0, 0, 1, 2, 1, '', 0, 500000, 'à´¤à´¾à´´àµ†à´šàµŠà´µàµà´µ à´¬à´¸àµ à´¸àµà´±àµà´±àµ‹à´ªàµà´ªà´¿à´¨àµ à´ªà´¿àµ»à´µà´¶à´‚', 'Kannur', 'Kerala', 919744322203, 1, 11, '2019-09-15 07:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `commuserdetailsv`
-- (See below for the actual view)
--
CREATE TABLE `commuserdetailsv` (
`id` int(100)
,`forcomm` int(11)
,`code` varchar(100)
,`header` varchar(200)
,`img` varchar(500)
,`buildingAreaValue` float
,`buildingAreaUnit` int(11)
,`landAreaValue` float
,`landAreaUnit` int(11)
,`numberOfFloors` int(100)
,`numberOfRooms` int(100)
,`roadAccess` int(11)
,`otherFacilities` varchar(2000)
,`minrate` bigint(20)
,`maxrate` bigint(20)
,`location` varchar(500)
,`district` varchar(200)
,`state` varchar(200)
,`contact` bigint(100)
,`status` int(11)
,`fkUserId` int(100)
,`date` timestamp
,`isBlocked` int(100)
,`fkCountryId` int(11)
,`UserID` int(100)
,`name` varchar(500)
,`address` varchar(2000)
,`email` varchar(500)
,`Usermob` bigint(100)
,`userType` int(100)
,`fromDate` date
,`toDate` date
,`userDistId` varchar(200)
,`userStateId` varchar(200)
,`fkCountry` int(100)
,`userBlocked` int(50)
,`isExist` int(11)
,`isValid` int(100)
,`isPremier` int(11)
,`userimg` varchar(500)
,`fkPremierID` int(11)
,`NoofAds` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(50) NOT NULL,
  `country` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(100) NOT NULL,
  `district` varchar(500) NOT NULL,
  `fkStateId` int(100) NOT NULL,
  `fkCountryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `district`, `fkStateId`, `fkCountryId`) VALUES
(1, 'Kasaragod', 1, 1),
(2, 'Kannur', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `electronics`
--

CREATE TABLE `electronics` (
  `id` int(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `fkUserId` int(100) NOT NULL,
  `header` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `productName` varchar(500) NOT NULL,
  `company` varchar(100) NOT NULL,
  `model` varchar(200) NOT NULL,
  `proCondition` varchar(200) NOT NULL,
  `minrate` bigint(20) NOT NULL,
  `maxrate` bigint(20) NOT NULL,
  `location` varchar(1000) NOT NULL,
  `district` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `fkCountry` int(100) NOT NULL,
  `postDate` date NOT NULL,
  `warranty` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `mobile` bigint(100) NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isBlocked` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `electronics`
--

INSERT INTO `electronics` (`id`, `code`, `fkUserId`, `header`, `img`, `productName`, `company`, `model`, `proCondition`, `minrate`, `maxrate`, `location`, `district`, `state`, `fkCountry`, `postDate`, `warranty`, `description`, `mobile`, `status`, `date`, `isBlocked`) VALUES
(1, 'ELEC1001', 3, 'iPhone 7 - 128GB', 'Electronics/50198-67682936_421456038577713_3342885823728058368_n.jpg', 'iPhone 7', 'Apple', 'iPhone 7', 'Display changed', 0, 23000, 'Maniyur-Cheruvathala', 'Kannur', 'Kerala', 1, '2019-08-12', '', '128 GB, Display changed, All accessories with box oroginal', 919562274367, 0, '2019-09-03 14:51:13', 1),
(2, 'ELEC1002', 9, 'Canon 1300 d camera for sale', 'Electronics/51419-68818745_425206084869375_5402456009484533760_n.jpg', 'Canon 1300 d', 'Canon', '1300 d', 'Good condition', 0, 16000, 'Kannur', 'Kannur', 'Kerala', 1, '2019-08-16', '', 'Lens 18-55, Bag, Full kit ', 919656224742, 1, '2019-08-16 12:14:49', 1),
(3, 'ELEC1003', 10, 'Canon5D - Camera for Sale', 'Electronics/88973-68785498_426865581370092_2437109106838863872_n.jpg', 'Canon5D mark 2', 'Canon ', '5D mark 2', 'Good condition', 0, 45000, 'Kannur', 'Kannur', 'Kerala', 1, '2019-08-19', '...', 'Good condition ', 919895547623, 1, '2019-08-19 05:42:56', 1),
(4, 'ELEC1004', 10, 'JBL Sub woofer- 1000 w, Sony Amplifier - 500 w', 'Electronics/71415-68785498_426865581370092_2437109106838863872_n.jpg', 'JBL Sub woofer', 'JBL , Sony', 'Sub woofer 1000w, Amplifier - 500w', 'Good', 0, 8000, 'irikkur', 'Kannur', 'Kerala', 1, '2019-08-19', '...', 'JBL Sub woofer- 1000 w Sony Amplifier - 500 w 4 channel ', 917025182498, 1, '2019-08-19 05:49:14', 1),
(5, 'ELEC1005', 10, 'Samsung Galaxy S10 for Sale', 'Electronics/52482-68785498_426865581370092_2437109106838863872_n.jpg', 'Samsung Galaxy S10', 'Samsung', 'Galaxy S10 Black', 'Good- Only Few hours used ', 0, 65000, 'Kannur', 'Kannur', 'Kerala', 1, '2019-08-19', '...', 'Samsung Galaxy S10 Black  65000', 919544844944, 1, '2019-08-19 05:51:58', 1),
(6, 'ELEC1006', 10, 'Samsung Note 5 for Sale ', 'Electronics/30896-68785498_426865581370092_2437109106838863872_n.jpg', 'Samsung Note5', 'Samsung', 'Samsung Note5', 'Good Condition', 0, 8000, 'Kannur', 'Kannur', 'Kerala', 1, '2019-08-19', '..', 'Samsung Note 5 for sale ; 32 GB memory card; Mobail and charger only.', 919633103969, 1, '2019-08-19 05:55:02', 1),
(7, 'ELEC1007', 10, 'IPhoneX For Sale', 'Electronics/79444-68785498_426865581370092_2437109106838863872_n.jpg', 'IPhoneX', 'Apple IPhone ', 'IPhone X', 'Good Condition-  10 months used.', 0, 43000, 'Panoor, Kannur', 'Kannur', 'Kerala', 1, '2019-08-19', '...', 'iphone X; 256 gb ; Grey color. ', 919526878103, 1, '2019-08-19 05:58:51', 1),
(8, 'ELEC1008', 3, 'Mac book Pro A1278 Core i5, 14 inch', 'Electronics/50214-c472d362-7f65-411b-874c-6bc56d8cf329.jpeg', 'MacBook Pro', 'Apple', 'A1278', 'Good condition ', 0, 20000, 'Kattakkada', 'Thiruvananthapuram', 'Kerala', 1, '2019-08-28', '', 'Core i5 2.30Ghz, 6Gb Ram,500Gb HDD 14â€ Screen,DVD,OS(2011) Model ..20000/-Rs', 971558722620, 1, '2019-08-28 02:32:19', 1),
(9, 'ELEC1009', 3, 'SANYO HD 32 SMART TV', 'Electronics/70991-65bd646c-fb66-4501-9453-1a6ca18a61d9.jpeg', 'HD 32 SMART TV', 'SANYO', 'HD32 ', 'Good Condition', 0, 7900, 'Kollam ', 'Kollam', 'Kerala', 1, '2019-08-29', '', '', 918078763423, 1, '2019-08-29 15:34:34', 1),
(10, 'ELEC1010', 3, 'iPhone XS Max 512 GB', 'Electronics/75422-11e25a34-7ef8-404f-bc40-aa47aab424d1.jpeg', 'iPhone XS Max', 'Apple ', '2018', 'Box Piece ', 0, 85000, 'Kannur ', 'Kasaragod', 'Kerala', 1, '2019-08-29', '', '', 919633406096, 1, '2019-08-29 15:37:42', 1),
(11, 'ELEC1011', 3, 'iPhone 7 Plus 256 GB', 'Electronics/85495-0c19c7c5-37b5-484c-b3e0-6351fa85bcfc.jpeg', 'iPhone 7 Plus', 'Apple ', 'iPhone 7 Plus ', 'Box Piece ', 0, 35000, 'Irikkur, Kannur ', 'Kannur', 'Kerala', 1, '2019-08-29', '', '256 GB with sealed box ', 9947817991, 0, '2019-08-31 08:02:14', 1),
(12, 'ELEC1012', 3, 'Samsung Galaxy Not 10 - 512 GB', 'Electronics/74757-5a416109-f9d5-4fcb-a02b-6225c3eca095.jpeg', 'Galaxy Note 10 Plus ', 'Samsung ', 'Galaxy Note 10 Plus ', 'Box Piece ', 0, 75000, 'Kasargode ', 'Kasaragod', 'Kerala', 1, '2019-08-29', '', '512 GB with box', 919633406096, 1, '2019-08-29 18:16:30', 1),
(13, 'ELEC1013', 3, 'iPhone 7 Plus - 128 GB', 'Electronics/52019-8a3cbdaa-90a3-44ca-a3ce-d975f5fed3d6.jpeg', 'iPhone 7 Plus', 'Apple ', 'iPhone 7 Plus', 'Good Condition ', 0, 23000, 'Kannur ', 'Kannur', 'Kerala', 1, '2019-08-31', '', '', 971527577644, 1, '2019-08-31 09:19:59', 1),
(14, 'ELEC1014', 85, '0 minute usage', 'Electronics/21739-43834c2a-c6dc-4ca2-893c-df222f5929fa.jpeg', 'Canon eos 200d', 'Canon', '200d', 'Box peice ', 0, 38000, 'Tirur', 'Malappuram', 'Kerala', 1, '2019-08-31', '2yr', 'I just opened box .all accessories with oh bag.', 9645310011, 1, '2019-08-31 10:24:31', 1),
(17, 'ELEC1017', 100, 'Bluetooth Earphones V5.0', 'Electronics/73178-2019-06-21_112451.jpg', 'i18 TWS', 'I18', 'i18', 'NEW', 0, 2500, 'Calicut', 'Kozhikode', 'Kerala', 1, '2019-09-03', '', 'High quality comfortable Bluetooth Ear phones, Binaural call 5.0, lightning fast charging, very compatible with any device iPhones, androids, tablets and iPads. Unique beautiful sound with music, design to reduce noise, call Siri within 3 seconds, even easy to carry in your pocket! WhatsAPP only:9847390911', 9847390911, 1, '2019-09-03 17:45:46', 1),
(18, 'ELEC1018', 100, 'Make your home smart and safe with Video Door Bell', 'Electronics/67287-sulitrends_cover_photo1.jpg', 'M1 VIDEO DOOR BELL', 'M1', 'M1', 'NEW', 0, 8000, 'CALICUT', 'Kozhikode', 'Kerala', 1, '2019-09-03', '6 Months', 'Make your home smart and safe with Video door bell. You can open the app anytime and anywhere to check the situation outside the house. Indoor Chime: connecting with the door bell- When the doorbell rings, the chime also will ring. Wide angle lens / infrared camera When someone rings the doorbell, whether you are working , travelling or at home, you will be alerted by text message or telephone in real time and when you do get through, you can talk to people outside the house in real time. PIR HUMAN INFRARED DETECTION: If thereâ€™s one suspicious person walks in front of the doorbell camera, the PIR will wake up the device to record and call the phone. Infrared function: when the light is dim, the infrared function will be activated automatically. The infrared function can also be set up through app. Very easy to install, No need to disassemble walls or door panels,Works on any home, with or without existing doorbell wires. Please make sure your mobile device is connecting to 2.4GHz WiFi. INCLUDED RECHARGEABLE  BATTERY, MEMORY CARD, INDOOR CHIME AND CHARGER.  WhatsAPP only:9847390911', 9847390911, 1, '2019-09-03 17:57:42', 1),
(19, 'ELEC1019', 100, 'Bluetooth Ear phone  A Grade version', 'Electronics/78472-1.jpg', 'I7S ', 'i17', 'I7S', 'NEW', 0, 399, 'CALICUT', 'Kozhikode', 'Kerala', 1, '2019-09-03', '', ' WhatsApp Only:9847390911.  It contains â€œTrue copper ring speakerâ€ for HD quality sound and â€œPure cobalt battery with battery protection motherboardâ€ which prevents battery damage in high temperature environment, quality is stable and larger capacity-longer time usage.', 9847390911, 1, '2019-09-03 19:02:34', 1),
(20, 'ELEC1020', 100, 'Smart Watch Bracelet', 'Electronics/68938-z18-3-(1).jpg', 'Smart Watch Bracelet', '-', '-', 'NEW', 0, 4060, 'Calicut', 'Kozhikode', 'Kerala', 1, '2019-09-03', '', 'Fitness Bracelet with Heart rate Monitor,Blood Pressure Monitor,blood oxygen Monitor, Steps tracker, Sleeping monitor, always care your health.  Powerful Features:the bracelet with 0.49 inch OLED touch screen,the screen will automatically light up when you turn over hand.metal body makes it stylish. Special and Luxurious Design:special design for girls/women,fashion and beautiful.', 9847390911, 1, '2019-09-03 19:13:04', 1),
(21, 'ELEC1021', 100, 'à´¸àµ†à´•àµà´¯àµ‚à´°à´¿à´±àµà´±à´¿ à´•àµà´¯à´¾à´®à´±', 'Electronics/38619-v0vj.jpg', 'WiFi CAMERA', 'VR CAM', '360 DEGREE', 'NEW', 0, 2160, 'Calicut', 'Kozhikode', 'Kerala', 1, '2019-09-03', '', 'WhatsApp Only: 9847390911.  à´²àµ‹à´•à´¤àµà´¤à´¿à´¨àµà´±àµ† à´Žà´µà´¿à´Ÿàµ† à´¨à´¿à´¨àµà´¨àµà´‚ à´Žà´ªàµà´ªàµ‹àµ¾ à´µàµ‡à´£à´®àµ†à´™àµà´•à´¿à´²àµà´‚ à´¨à´¿à´™àµà´™à´³àµà´Ÿàµ† à´µàµ€à´Ÿàµ‹ à´¬à´¿à´¸à´¿à´¨à´¸àµ à´¸àµà´¥à´¾à´ªà´¨à´™àµà´™à´³àµ‹ à´¨à´¿à´°àµ€à´•àµà´·à´¿à´•àµà´•àµà´•à´¯àµ‹ à´…à´µà´°àµ‹à´Ÿàµ à´¸à´‚à´¸à´¾à´°à´¿à´•àµà´•àµà´•à´¯àµ‹ à´µàµ‡à´£àµ‹? à´Žà´™àµà´•à´¿àµ½ à´µà´³à´°àµ‡ à´•àµà´±à´žàµà´ž à´šà´¿à´²à´µà´¿àµ½ 360 à´¡à´¿à´—àµà´°àµ€ Wi-Fi à´•àµà´¯à´¾à´®à´± à´µà´¾à´™àµà´™à´¿à´•àµà´•à´¾à´‚.  à´‡à´¨à´¿ à´•à´³àµà´³à´¨àµà´®à´¾à´°àµ† à´’à´Ÿàµà´Ÿàµà´‚ à´ªàµ‡à´Ÿà´¿à´•àµà´•à´£àµà´Ÿ, à´†à´°àµ†à´™àµà´•à´¿à´²àµà´‚ à´µà´¨àµà´¨à´¾àµ½ à´¨à´¿à´™àµà´™à´³àµà´Ÿàµ† à´«àµ‹à´£à´¿àµ½ notification à´µà´°àµà´‚, à´…à´²à´¾à´±à´‚ à´¸àµ—à´£àµà´Ÿàµà´‚ à´‰à´£àµà´Ÿà´¾à´µàµà´‚. à´Žà´²àµà´²à´¾à´‚ à´¨à´¿à´™àµà´™àµ¾à´•àµà´•àµ à´‡à´·àµà´Ÿà´‚ à´‰à´³àµà´³à´¤àµà´ªàµ‹à´²àµ† à´¸àµ†à´±àµà´±àµ à´šàµ†à´¯à´¾à´‚.  Communicate with ðŸ‘¨â€ðŸ‘©â€ðŸ‘§â€ðŸ‘¦Family, ðŸ‘¬Friends and your Pets ðŸ¶ðŸ£ðŸ‡on mobile devices.  à´µà´¯à´±à´¿à´™àµà´™à´¿à´¨àµà´±àµ† à´†à´µà´¶àµà´¯à´‚ à´‡à´²àµà´², à´¨à´¿à´™àµà´™àµ¾à´•àµà´•àµ à´¤à´¨àµà´¨àµ† à´µà´³à´°àµ† à´Žà´³àµà´ªàµà´ªà´¤àµà´¤à´¿àµ½ à´«à´¿à´±àµà´±àµâ€Œ à´šàµ†à´¯àµà´¯à´¾à´‚. à´’à´°àµ à´¬àµ¾à´¬àµ à´‡à´Ÿàµà´¨àµà´¨ à´ªàµ‹à´²àµ†. à´¤àµà´°àµ†à´¡àµ à´‰à´³àµà´³ à´¬àµ¾à´¬àµ à´¹àµ‹àµ¾à´¡àµ¼ à´¬àµ‹à´•àµà´¸à´¿à´¨à´•à´¤àµà´¤àµ à´«àµà´°àµ€ à´†à´¯à´¿ à´•à´¿à´Ÿàµà´Ÿàµà´‚.  à´°à´¾à´¤àµà´°à´¿à´¯à´¿à´²àµà´‚ à´•à´³àµ¼ à´µàµ€à´¡à´¿à´¯àµ‹ à´²à´­à´¿à´•àµà´•àµà´‚.  à´¨àµˆà´±àµà´±àµâ€Œ à´µà´¿à´·àµ» à´‰à´£àµà´Ÿàµ.  à´®àµ†à´®àµà´®à´±à´¿ à´•à´¾àµ¼à´¡àµ à´‡à´Ÿàµà´Ÿàµ à´¯àµ‚à´¸àµ à´šàµ†à´¯àµà´¯à´¾à´‚.  à´•àµà´¯à´¾à´®à´±à´¯à´¿àµ½ LED à´¬àµ¾à´¬àµà´‚ à´‰à´£àµà´Ÿàµ, V380pro à´Žà´¨àµà´¨ app à´«àµ‹à´£à´¿àµ½ à´‡àµ»à´¸àµà´±àµà´±à´¾àµ¾ à´šàµ†à´¯àµâ€Œà´¤à´¾àµ½ à´‡à´¨àµà´±àµ¼à´¨àµ†à´±àµà´±àµâ€Œ à´‰à´£àµà´Ÿà´™àµà´•à´¿àµ½ à´«àµ‹à´£à´¿àµ½ à´¨à´¿à´¨àµà´¨àµà´‚ à´¨à´¿à´™àµà´™àµ¾ à´²àµ‹à´•à´¤àµà´¤à´¿à´¨àµà´±àµ† à´à´¤àµ à´•àµ‹à´£à´¿àµ½ à´†à´£àµ†à´™àµà´•à´¿à´²àµà´‚ à´²àµˆà´±àµà´±àµ à´“àµº à´†à´•àµà´•à´¾à´¨àµà´‚ à´“à´«àµâ€Œ à´†à´•à´¾à´¨àµà´‚, à´«àµ‹à´£à´¿àµ½ à´±àµ†à´•àµà´•àµ‹àµ¼à´¡àµ à´†à´¯ à´µàµ€à´¡à´¿à´¯àµ‹à´¸àµà´‚ à´²àµˆà´µàµ à´µàµ€à´¡à´¿à´¯àµ‹à´¸àµà´‚ à´•à´¾à´£à´¾àµ» à´ªà´±àµà´±àµà´‚.  LED à´²àµˆà´±àµà´±àµ à´°à´¾à´¤àµà´°à´¿à´¯à´¿àµ½ à´“à´Ÿàµà´Ÿàµ‹à´®à´¾à´±àµà´±à´¿à´•àµ à´†à´¯à´¿ à´“àµº à´†à´µàµà´•à´¯àµà´‚ à´°à´¾à´µà´¿à´²àµ† à´†à´µàµà´®àµà´ªàµ‹àµ¾ à´“à´«àµâ€Œ à´†à´µàµà´•à´¯àµà´‚ à´šàµ†à´¯àµà´¯àµà´‚ à´“à´Ÿàµà´Ÿàµ‹ à´®àµ‹à´¡à´¿àµ½ à´‡à´Ÿàµà´Ÿà´¾àµ½.  Two way communication à´‰à´£àµà´Ÿàµ ; à´µàµ€à´Ÿàµà´Ÿà´¿àµ½ à´µà´šàµà´šà´¾àµ½ à´µàµ€à´Ÿàµà´Ÿà´¿à´²àµà´³àµà´³à´µà´°àµ‹à´Ÿàµ à´Žà´¨àµà´¤à´™àµà´•à´¿à´²àµà´‚ à´ªà´±à´¯à´¾à´¨àµà´‚, à´¬à´¿à´¸à´¿à´¨à´¸àµâ€Œ à´¸àµà´¥à´¾à´ªà´¨à´¤àµà´¤à´¿àµ½ à´µà´šàµà´šà´¾àµ½ à´¨à´¿à´™àµà´™àµ¾ à´…à´µà´¿à´Ÿàµ† à´‡à´²àµà´²à´¾à´¤àµà´¤ à´¸à´®à´¯à´¤àµà´¤àµ à´†à´°àµ†à´™àµà´•à´¿à´²àµà´‚ à´µà´¨àµà´¨à´¾àµ½ à´…à´µà´°àµ† à´¨à´¿à´™àµà´™àµ¾à´•àµà´•àµ à´•à´¾à´£à´¾à´¨àµà´‚ à´…à´µà´°àµ‹à´Ÿàµ à´¸à´‚à´¸à´¾à´°à´¿à´•àµà´•à´¾à´¨àµà´‚ à´ªà´±àµà´±àµà´‚.', 9847390911, 1, '2019-09-03 19:35:43', 1),
(22, 'ELEC1022', 3, 'iPhone 7', 'Electronics/94135-2bafae5a-a6c1-4309-af19-8aa97b18a998.jpeg', 'iPhone 7 256GB', 'Apple', 'iPhone 7', 'Good condition ', 0, 29000, 'Panoor', 'Kannur', 'Kerala', 1, '2019-09-07', '', '', 9526878103, 1, '2019-09-07 13:59:58', 1),
(23, 'ELEC1023', 100, 'à´¡à´¿à´·àµâ€Œ, à´¸àµ†à´±àµà´±à´ªàµà´ªàµ à´¬àµ‹à´•àµà´¸àµâ€Œ, à´•àµ‡à´¬à´¿àµ¾ à´Ÿàµ€à´µà´¿ à´’à´¨àµà´¨àµà´‚ à´†à´µà´¶àµà´¯à´‚ à´‡à´²àµà´².', 'Electronics/63128-whatsapp-image-2019-09-06-at-2.42.32-pm.jpeg', 'IPTV SUBSCRIPTION', 'IPTV', 'IPTV', 'ONE YEAR SUBSCRIPTION', 0, 3900, 'CALICUT', 'Kozhikode', 'Kerala', 1, '2019-09-14', 'ONE YEAR', 'à´¨à´¾à´Ÿàµà´Ÿà´¿à´²àµà´³àµà´³à´µàµ¼à´•àµà´•àµà´‚ à´—àµ¾à´«à´¿àµ½ à´‰à´³àµà´³à´µàµ¼à´•àµà´•àµà´‚ à´¸à´¬àµà´¸àµà´•àµà´°àµˆà´¬àµ à´šàµ†à´¯àµà´¯à´¾à´‚. 10000 àµ½ à´•àµ‚à´Ÿàµà´¤àµ½ live à´šà´¾à´¨àµ½à´¸àµà´‚ à´²à´­à´¿à´•àµà´•àµà´‚ (6000+live channels and 10000+VOD-video on demand) à´®à´²à´¯à´¾à´³à´®à´Ÿà´•àµà´•à´‚ à´²àµ‹à´•à´¤àµà´¤à´¿à´²àµ† à´Žà´²àµà´²à´¾ à´°à´¾à´œàµà´¯à´™àµà´™à´³à´¿à´²àµ‡à´¯àµà´‚ à´Ÿàµ€à´µà´¿ à´šà´¾à´¨à´²àµà´‚ VOD, Series à´‰à´‚ à´²à´­à´¿à´•àµà´•àµà´‚. à´¡à´¿à´·àµâ€Œ, à´¸àµ†à´±àµà´±à´ªàµà´ªàµ à´¬àµ‹à´•àµà´¸àµâ€Œ, à´•àµ‡à´¬à´¿àµ¾ à´Ÿàµ€à´µà´¿ à´’à´¨àµà´¨àµà´‚ à´†à´µà´¶àµà´¯à´‚ à´‡à´²àµà´². à´«àµ‹à´£à´¿à´²àµà´‚ à´Ÿàµ€à´µà´¿à´¯à´¿à´²àµà´‚ à´šà´¾à´¨àµ½ à´•à´¾à´£à´¾à´‚, à´µàµ€à´Ÿàµà´Ÿà´¿àµ½ à´•à´±à´¨àµà´±àµâ€Œ à´‡à´²àµà´²àµ†à´™àµà´•à´¿à´²àµà´‚ à´¯à´¾à´¤àµà´° à´šàµ†à´¯àµà´¯àµà´®àµà´ªàµ‹à´´àµà´‚ à´¨à´¿à´™àµà´™à´³àµà´Ÿàµ† à´«àµ‹à´£à´¿àµ½ à´Žà´²àµà´²à´¾ à´šà´¾à´¨à´²àµà´‚ vod à´¯àµà´‚ à´•à´¾à´£à´¾à´‚. à´Žà´²àµà´²à´¾ à´°à´¾à´œàµà´¯à´™àµà´™à´³à´¿à´²àµà´‚ à´‰à´ªà´¯àµ‹à´—à´¿à´•àµà´•à´¾à´‚ à´Žà´²àµà´²à´¾ à´¸à´®à´¯à´¤àµà´¤àµà´‚ à´¨à´²àµà´² à´•àµà´²à´¾à´°à´¿à´±àµà´±à´¿ à´‰à´³àµà´³ à´µàµ€à´¡à´¿à´¯àµ‹à´¸àµ à´²à´­à´¿à´•àµà´•àµà´‚ à´‡à´Ÿà´¯àµà´•àµà´•àµ à´µà´šàµà´šàµ à´•à´Ÿàµà´Ÿàµâ€Œ à´†à´µà´¿à´²àµà´² à´¸à´¬àµà´¸àµà´•àµà´°àµˆà´¬àµ à´šàµ†à´¯àµà´¤ à´•à´¾à´²à´¯à´³à´µàµ à´µà´°àµ† à´•à´±à´•àµà´±àµà´±àµ à´†à´¯à´¿ à´µàµ¼à´•àµà´•àµâ€Œ à´šàµ†à´¯àµà´¯àµà´‚, à´…à´¤àµà´¯à´¾à´µà´¶àµà´¯à´‚ à´¸àµà´ªàµ€à´¡àµ à´‰à´³àµà´³ à´‡à´¨àµà´±àµ¼à´¨àµ†à´±àµà´±àµâ€Œ à´µàµ‡à´£à´‚ à´Žà´¨àµà´¨àµ à´®à´¾à´¤àµà´°à´‚. à´—àµ¾à´«à´¿àµ½ à´‰à´³àµà´³à´µàµ¼à´•àµà´•àµ à´•àµ‚à´Ÿàµà´¤àµ½ à´‰à´ªà´•à´¾à´°à´ªàµà´ªàµ†à´Ÿàµà´‚ à´•à´¾à´°à´£à´‚ à´¸àµ†à´±àµà´±à´ªàµà´ªàµ à´¬àµ‹à´•àµà´¸àµà´‚ à´¡à´¿à´·àµà´‚ à´’à´¨àµà´¨àµà´‚ à´‡àµ»à´¸àµà´±àµà´±à´¾àµ¾ à´šàµ†à´¯àµà´¯à´£àµà´Ÿ. à´†à´µà´¶àµà´¯à´‚ à´‰à´³àµà´³à´µàµ¼ à´®à´¾à´¤àµà´°à´‚ à´µà´¾à´Ÿàµà´¸àµà´†à´ªàµà´ªà´¿àµ½ à´®à´¾à´¤àµà´°à´‚ à´•àµ‹àµºà´Ÿà´¾à´•àµà´Ÿàµ à´šàµ†à´¯àµà´¯àµà´•.  WhatsApp: 9847390911', 9847390911, 1, '2019-09-14 18:29:49', 1),
(24, 'ELEC1024', 100, 'PORTABLE PROJECTOR  (VERY SMALL)', 'Electronics/87975-doogee-p1-smart-mini-led-projector-hd-dlp-ram-1g-rom-8g-video-projector-quad-core.jpg_640x640.jpg', 'DLP PROJECTOR', 'DOOGEE', 'P1', 'NEW', 0, 15000, 'CALICUT', 'Kozhikode', 'Kerala', 1, '2019-09-14', '', 'WhatsApp Only:9847390911.    P1 DLP Projector is one of the best projectors to improve your life style and make your business stand out. Also, it will bring you outstanding performance when you want to create amazing and terrific scenes for home or other place with your family and friends. It boosts your confidence, it is fun to play with and will improve your life!  Main Features: â— Features with multiple ports, including USB 2.0 / Micro USB. â—Visible 1000 lumens and real 70 lumens with 800:1 contrast ratio for clear, razor-sharp images. â— With the native resolution 854 x 480 pixels for clear and bright images, provides exceptional display quality. â—2.4G WiFi, offers a more stable WiFi signal for you to enjoy higher quality video experience.  â—1GB RAM + 8G ROM capacity give you more space to download your favorite videos and watch them more smoothly. â— With its built-in Bluetooth 4.0 function, it allows you to connect your laptop, smartphone, tablet through wireless connection which is very convenient for you to operate it. â— Supports Miracast, Airplay and DLNA WiFi which can let you have wireless photo, video, music transfer.    WhatsApp Only:9847390911', 9847390911, 1, '2019-09-14 19:14:35', 1),
(28, 'ELEC1028', 175, 'Samsung galaxy c5 for sale', 'Electronics/68475-img_20190916_135923.jpg', 'Samsung galaxy c5', 'Samsung ', 'C5', 'Good-lite used', 0, 10000, 'Kozhikode ', 'Kozhikode', 'Kerala', 1, '2019-09-16', '', 'Gold color ', 9188207558, 1, '2019-09-16 08:38:04', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `eleuserdetailsv`
-- (See below for the actual view)
--
CREATE TABLE `eleuserdetailsv` (
`id` int(100)
,`code` varchar(100)
,`fkUserId` int(100)
,`header` varchar(200)
,`img` varchar(200)
,`productName` varchar(500)
,`company` varchar(100)
,`model` varchar(200)
,`proCondition` varchar(200)
,`minrate` bigint(20)
,`maxrate` bigint(20)
,`location` varchar(1000)
,`district` varchar(200)
,`state` varchar(200)
,`fkCountry` int(100)
,`postDate` date
,`warranty` varchar(100)
,`description` varchar(10000)
,`mobile` bigint(100)
,`status` int(11)
,`date` timestamp
,`isBlocked` int(100)
,`UserID` int(100)
,`name` varchar(500)
,`address` varchar(2000)
,`email` varchar(500)
,`Usermob` bigint(100)
,`userType` int(100)
,`fromDate` date
,`toDate` date
,`userDistId` varchar(200)
,`userStateId` varchar(200)
,`fkCountryidd` int(100)
,`userBlocked` int(50)
,`isExist` int(11)
,`isValid` int(100)
,`isPremier` int(11)
,`userimg` varchar(500)
,`fkPremierID` int(11)
,`NoofAds` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobcat`
--

CREATE TABLE `jobcat` (
  `id` int(100) NOT NULL,
  `category` varchar(300) NOT NULL,
  `position` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobcat`
--

INSERT INTO `jobcat` (`id`, `category`, `position`) VALUES
(1, 'Accounting', 1),
(2, 'Airlines & Aviation', 1),
(3, 'Architecture & Interior Design', 1),
(4, 'Art & Entertainment', 1),
(5, 'Automotive', 1),
(6, 'Banking & Finance', 1),
(7, 'Beauty', 1),
(8, 'Business Development', 1),
(9, 'Business Supplies & Equipment', 1),
(10, 'Construction', 1),
(11, 'Consulting', 1),
(12, 'Customer Service', 1),
(13, 'Education', 1),
(14, 'Engineering', 1),
(15, 'Environmental Services', 1),
(16, 'Event Management', 1),
(17, 'Executive', 1),
(18, 'Fashion', 2),
(19, 'Food & Beverages', 2),
(20, 'Government & Administration', 2),
(21, 'Graphic Design', 2),
(22, 'Hospitality & Restaurants', 2),
(23, 'HR & Recruitment', 2),
(24, 'Import & Export', 2),
(25, 'Industrial & Manufacturing', 2),
(26, 'Insurance', 2),
(27, 'Software Developers & Designers', 2),
(28, 'IT & Networking', 2),
(29, 'Legal Services', 2),
(30, 'Logistics & Distribution', 2),
(31, 'Marketing & Advertising', 2),
(32, 'Medical & Healthcare', 2),
(33, 'Teaching', 2),
(34, 'Driver & Transportation', 2),
(35, 'Pharmaceutical', 3),
(36, 'Public Relations', 3),
(37, 'Real Estate', 3),
(38, 'Research & Development', 3),
(39, 'Retail & Consumer Goods', 3),
(40, 'Safety & Security', 3),
(41, 'Secretarial', 3),
(42, 'Sales', 3),
(43, 'Sports & Fitness', 3),
(44, 'Telecommunications', 3),
(45, 'Travel & Tourism', 3),
(46, 'Veterinary & Animals', 3),
(47, 'Warehousing', 3),
(48, 'Online & Social Media', 3),
(49, 'Printing & Packaging', 3),
(50, 'Oil, Gas & Energy', 3),
(52, 'Other Jobs', 3);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(100) NOT NULL,
  `fkJobsCat` int(50) NOT NULL,
  `jobCode` int(100) NOT NULL,
  `jobDesc` varchar(500) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `companyName` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(500) NOT NULL,
  `salary` varchar(500) NOT NULL,
  `qual` varchar(500) NOT NULL,
  `experience` varchar(500) NOT NULL,
  `careerType` varchar(500) NOT NULL,
  `description1` varchar(20000) NOT NULL,
  `description2` varchar(20000) NOT NULL,
  `lastDate` date NOT NULL,
  `fkCountry` int(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(300) NOT NULL,
  `web` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `fkJobsCat`, `jobCode`, `jobDesc`, `img`, `companyName`, `date`, `place`, `salary`, `qual`, `experience`, `careerType`, `description1`, `description2`, `lastDate`, `fkCountry`, `mobile`, `email`, `web`) VALUES
(11, 0, 0, 'ACCOUNTANT', '81761-android.jpg', 'aaaaaaaaa', '2019-06-25', 'a', 'a', 'aaaaaaaaaaaa', 'a', 'Mid Career', 'a', 'aa', '2019-06-25', 0, 0, '', ''),
(12, 0, 0, 'A', '66892-android.jpg', 'a', '2019-06-25', 'aaaaaaaaaaaaaa', 'a', 'a', 'aaaaa', 'Expert', 'aaaaaaa', 'a', '2019-07-02', 0, 0, '', ''),
(13, 0, 0, 'A', '59925-android.jpg', 'a', '2019-06-25', 'aaaaaaaaaaaaaa', 'a', 'a', 'aaaaa', 'Expert', 'aaaaaaa', 'a', '2019-07-02', 0, 0, '', ''),
(16, 49, 0, 'PRINTER NEEDED IN DUBAI', '51161-a9a610ab-fca8-48a6-834c-ec8822ef2dcc.jpeg', 'Arabian Can Industry LLC.', '2019-08-10', 'Dubai', 'Not specified ', 'Diploma/ Engineering Degree', '4-5 Years', 'Mid Career', 'Printing Machine Operator ', 'SKILLS & COMPETENCIES :\r\n\r\nMust have good English written and verbal communication skills.\r\nTechnical knowledge relevant to the industry.\r\nKnowledge of relevant legislation and quality control standards.\r\nGood Organizational skills and a methodical approach to work.\r\nThe ability to prioritize workloads and meet project deadlines and to pay close attention to details.', '2019-09-10', 0, 0, '', ''),
(17, 1, 0, 'ACCOUNTS - TOYOTA - AL FUTTAIM - ABU DHABI', '56670-untitled-2-01.jpg', 'Al Futtaim', '2019-08-10', 'Abudhabi, UAE', 'Not Specified', 'University degree in Commerce/Accountancy (MBA -Finance, M.Com, B.Com )', '5 + yearsâ€™ experience as an general accounts clerk / accountant.', 'Mid Career', 'Accountant', '\r\nJob-Specific Skills:  High degree of numeracy, high level of excel usage and familiarity with other MS Office packages.  Prior experience of SAP.\r\n\r\nTo Apply: https://www.afuturewithus.com/job/Abu-Dhabi-Accounts-Fleet-Sales-Toyota-Al-Futtaim-Abu-Dhabi/546449901/', '2019-09-10', 0, 0, '', ''),
(18, 1, 0, 'SR TAX ACCOUNTANT | AL FUTTAIM RETAIL | DUBAI', '44086-untitled-2-01.jpg', 'Al Futtaim', '2019-08-10', 'Dubai, UAE', 'Not Specified', 'Qualified Accountant , Strong knowledge of tax law and statutory regulations, Knowledge of Local VAT regulations, ', 'post 2 years experience, Experience in SAP and Anaplan', 'Mid Career', 'Sr Tax Accountant', 'To apply for this : https://www.afuturewithus.com/job/Sr-Tax-Accountant-Al-Futtaim-Retail-Dubai/547144101/', '2019-09-10', 0, 0, '', ''),
(19, 1, 0, 'ACCOUNTS ASSISTANT | AL-FUTTAIM LEXUS | DUBAI, ', '8283-untitled-2-01.jpg', 'Accounts Assistant | Al-Futtaim Lexus | Dubai', '2019-08-10', 'Dubai, UAE', 'Not Specified', 'See description', 'Accounts experience', 'Fresher', 'Accounts Assitant', 'Qualifications, Experience & Skills:\r\nStrong computer skills â€“ Familiarize with the SAP system, advanced MS-Excel knowledge and other MS Office applications,\r\nExcellent communication skills, both written and verbal is essential,\r\nGreat team player ,\r\nExcellent interpersonal skills, with a strong ability to communicate at all management levels,\r\nAccounts experience\r\nMaintain a well-organized documentations,\r\nAccuracy and attention to detail,\r\nAbility to work independently and with minimal supervision,\r\n\r\nTo apply for this: https://www.afuturewithus.com/job/Dubai-Accounts-Assistant-Al-Futtaim-Lexus-Dubai%2C-UAE/546509701/', '2019-09-10', 0, 0, '', ''),
(20, 17, 0, 'EXECUTIVE ASSISTANT | ALFUTTAIM | DUBAI', '83980-untitled-2-01.jpg', 'Al Futtaim', '2019-08-10', 'Dubai, UAE', 'Not Specified', 'Business Accounting degree from any recognized universities.', '2 yearsâ€™ experience as an Executive Assistant with Financial/ Accounting knowledge.', 'Fresher', 'Executive Assistant', 'Job-Specific Skills:\r\nExperience in Microsoft Office Word, Excel & Power point, \r\nAccounting and Finacial knowledge.\r\n\r\nTo apply for this: https://www.afuturewithus.com/job/Personal-Assistant-AlFuttaim-Dubai/536685801/ ', '2019-09-10', 0, 0, '', ''),
(21, 17, 0, 'KEY ACCOUNT EXECUTIVE | ELECTRONICS DISTRIBUTION | DUBAI', '43580-untitled-2-01.jpg', 'Al Futtaim', '2019-08-10', 'Dubai, UAE', 'Not Specified', 'Graduate', 'Five + years experience in B2B sales', 'Mid Career', 'Key Account Executive', 'About You\r\nEducation: Graduate\r\nMinimum Experience and Knowledge:  Five + years experience in B2B sales.\r\nJob-Specific Skills: Need to be au-fait withwater purifiers.\r\nBehavioral Competencies: Achievement Orientation, strategic thinking skills, solution oriented & team working skills.\r\n\r\nTo apply for this: https://www.afuturewithus.com/job/Dubai-Key-Account-Executive-Electronics-Distribution-Dubai/546082701/', '2019-09-10', 0, 0, '', ''),
(22, 19, 0, 'PRODUCTION MANAGER - CPF - UAE', '64681-al-shaya.png', 'Alshaya', '2019-08-14', 'United Arab Emirates', 'Not Specified', 'Not Specified', 'Not Specified', 'Mid Career', 'Production Manager', 'Specifically you will:\r\n\r\nEnsure running of the entire production process within our Central Production Facility are in accordance with principles of CI culture.\r\nGuarantee that KPIs are achieved by optimum production planning; supply of raw and packaging materials is available, efficiently plan production whilst food safety, quality and people\'s morale are taken into consideration.\r\nMake sure all products produced at production lines are compliant with product specifications and all quality (HACCAP,GMP) and safety regulations are in place, monitored and followed by corrective actions.\r\nSupport safety programs and reinforce safe behavior of manufacturing team members.\r\nManage teams and ensure individual people development and guidance, ensure proper training for section team members.\r\nBe accountable for the product output in terms of quality, quantity, standard, time & waste management\r\nPlan necessary resourced and ensure availability of material according to sales forecast.\r\n\r\nTo apply: https://jobsearch.alshaya.com/cau/en/job/544061/production-manager-cpf-uae', '2019-09-13', 0, 0, '', ''),
(23, 48, 0, 'SEO EXECUTIVE - ECOMMERCE - UAE', '5984-al-shaya.png', 'Alshaya', '2019-08-14', 'United Arab Emirates', 'Not Specified', 'Not Specified', 'Proven SEO experience', 'Mid Career', 'SEO Executive', 'Requirements\r\n\r\nProven SEO experience\r\nSolid understanding of performance marketing, conversion, and online customer acquisition\r\nIn-depth experience with website analytics tools (e.g, Google Analytics, GSC, Deep Crawl, Ahreafs, Power Suite, Super Metrex)\r\nExperience with UX.\r\nExperience with A/B and multivariate experiments\r\nWorking knowledge of HTML, CSS, and JavaScript development and constraints\r\nKnowledge of ranking factors and search engine algorithms\r\nUp-to-date with the latest trends and best practices in SEO and SEM\r\nBS/MS degree in a quantitative, test-driven field\r\nAdvertised: 07 Aug 2019 Arabian Standard Time\r\nApplications close: 08 Sep 2019 Arabian Standard Time\r\n\r\nTo apply:\r\nhttps://jobsearch.alshaya.com/cau/en/job/545071/seo-executive-ecommerce-uae', '2019-09-13', 0, 0, '', ''),
(24, 31, 0, 'SEO EXECUTIVE - ECOMMERCE - UAE', '13758-al-shaya.png', 'Alshaya', '2019-08-14', 'United Arab Emirates', 'Not Specified', 'Not Specified', 'Proven SEO experience', 'Mid Career', 'SEO Executive', 'Requirements\r\n\r\nProven SEO experience\r\nSolid understanding of performance marketing, conversion, and online customer acquisition\r\nIn-depth experience with website analytics tools (e.g, Google Analytics, GSC, Deep Crawl, Ahreafs, Power Suite, Super Metrex)\r\nExperience with UX.\r\nExperience with A/B and multivariate experiments\r\nWorking knowledge of HTML, CSS, and JavaScript development and constraints\r\nKnowledge of ranking factors and search engine algorithms\r\nUp-to-date with the latest trends and best practices in SEO and SEM\r\nBS/MS degree in a quantitative, test-driven field\r\nAdvertised: 07 Aug 2019 Arabian Standard Time\r\nApplications close: 08 Sep 2019 Arabian Standard Time\r\n\r\nTo apply: \r\nhttps://jobsearch.alshaya.com/cau/en/job/545071/seo-executive-ecommerce-uae', '2019-09-13', 0, 0, '', ''),
(25, 30, 0, 'OFFICER - LOGISTICS - UAE', '83263-al-shaya.png', 'Alshaya', '2019-08-14', 'United Arab Emirates', 'Not Specified', 'Advanced proficiency with MS Excel', 'At least 2 years\' experience in logistics, supply chain or warehouse environment', 'Mid Career', 'Logistics Officer', 'You will have:\r\n\r\nâ€¢ At least 2 years\' experience in logistics, supply chain or warehouse environment\r\n\r\nâ€¢ Advanced proficiency with MS Excel\r\n\r\nâ€¢ Excellent interpersonal and communication skills\r\n\r\nâ€¢ Ability to work under pressure.\r\n\r\nTo Apply: \r\nhttps://jobsearch.alshaya.com/cau/en/job/544046/officer-logistics-uae', '2019-09-13', 0, 0, '', ''),
(26, 31, 0, 'ONLINE MERCHANDISER - E-COMMERCE - UAE', '79763-al-shaya.png', 'Alshaya', '2019-08-14', 'Dubai, UAE', 'Not Specified', 'See the description', 'See the description', 'Mid Career', 'Online Merchandiser', 'The Role:\r\n\r\nThe Online Merchandiser will play a significant role in driving sales and conversion, by creating a best-in-class customer experience on site. The responsibilities are product set-up, stock control and promotions operations. In addition, developing and executing visual merchandising strategy for the site that engages and drives revenue.\r\n\r\nTo Apply:\r\nhttps://jobsearch.alshaya.com/cau/en/job/541962/online-merchandiser-ecommerce-uae', '2019-09-13', 0, 0, '', ''),
(27, 42, 0, 'SALES EXECUTIVE- DUBAI', '43334-arabian-packaging.png', 'Arabian Packaging - Dubai', '2019-08-20', 'Dubai,UAE', 'Not Specified', 'Graduate / Post graduate in sales and marketing', ' At least 5 yrs in sales preferably â€“ sales to customers in food, beverage, other FMCG and consumer goods manufacturing/trading industries', 'Mid Career', 'SALES EXECUTIVE', 'â€¢ Sales, Marketing, Negotiation and presentation\r\nâ€¢ Any ERP\r\nâ€¢ Very Good English communication skills,\r\n\r\nTo Apply: https://www.arabpack.com/careers/', '2019-09-19', 0, 0, '', ''),
(28, 14, 0, 'NEW PRODUCT INTRODUCTION POWERPLANT ENGINEER I - 1900011Q | EMIRATES GROUP | DUBAI', '31268-emirates.png', 'EMIRATES GROUP', '2019-08-26', 'DUBAI, UAE', 'Join us in a management role and enjoy an attractive tax-free salary. On top of our generous travel benefits, including discounted flights and hotel stays around the world, this managerial role also has an excellent leave and healthcare package. Thatâ€™s on top of transport benefits, life insurance and more. Find out what itâ€™s like to live and work in our fast-paced, cosmopolitan home city in the Dubai Lifestyle section of our website www.emirates.com/careers', 'Degree or Honours (12+3 or equivalent); BEng in Aeronautical/Mechanical Engineering', '8+ years overall experience of which a minimum of 5 years in Technical Services function of which at least 3 years at Emirates type fleet (GE90 and/or GP72 Series)', 'Mid Career', 'NEW PRODUCT INTRODUCTION POWERPLANT ENGINEER', 'JOB PURPOSE\r\nThis role is part of an engineering team providing Technical support to the introduction of new products or process capability within the Emirates Engine Maintenance Centre (EEMC) facility (NPI).  The scope will include all current Regulatory approved engine types (GP7000 and GE90), future products (GE9x), and module, piece-part, special process, and repair introduction.\r\n \r\nJob Accountabilities  \r\n- Implementation of engine, module, and piece-part overhaul capability IAW OEM Engine Manual (EM) requirements. \r\n\r\n- Add new facility capability per contractual scope and financial planning. \r\n\r\n- Definition of EM tooling requirements for addition of new capability including tool lists and support to shop usage. \r\n\r\n- Co-ordination of Special process implementation, commissioning, and as appropriate, OEM approval. \r\n\r\n- Support to Regulatory training, approval, and facility technical auditing. \r\n\r\n- Implementation of new facility technology in support of engine overhaul capability growth and Airline regional technology strategy. \r\n\r\n- Develop and maintain strong working relations between Component Repair technicians, operations, and planning teams to aid on time delivery.  \r\n\r\n- Develop and maintain strong working relations between Customer, OEM Engineering, GE Network Engineering/Operations Team, and Customer Airline Support team\r\n\r\nApply: https://www.emiratesgroupcareers.com/search-and-apply/307225', '2019-09-09', 0, 0, '', ''),
(29, 14, 0, 'PROPULSION SUPPORT ENGINEER I - 1900011S', '79823-emirates.png', 'EMIRATES GROUP | DUBAI | UAE', '2018-08-26', 'DUBAI, UAE', 'Join us in a management role and enjoy an attractive tax-free salary. On top of our generous travel benefits, including discounted flights and hotel stays around the world, this managerial role also has an excellent leave and healthcare package. Thatâ€™s on top of transport benefits, life insurance and more. Find out what itâ€™s like to live and work in our fast-paced, cosmopolitan home city in the Dubai Lifestyle section of our website www.emirates.com/careers', 'Degree or Honours (12+3 or equivalent); preferably in Aeronautical/Mechanical Engineering', '8+ years overall experience of which a minimum of 5 years in Technical Services function of which at least 3 years at Emirates type fleet (GE90 and/or GP72 Series engines), or equivalent.', 'Mid Career', 'PROPULSION SUPPORT ENGINEER', 'JOB PURPOSE\r\nThe role is to provide Technical and Engineering Support for the Emirates Engine Maintenance Centre to ensure achieving a high standard of product delivery and technical despatch reliability once in revenue service. \r\n\r\nJob Accountabilities   \r\n- Provides specialist technical advice for resolution of complex and/or unusual engine technical problems.\r\n\r\n- Participating in Engine Induction Meetings so that timely action is initiated as required.\r\n- Liaise with customers to develop work scope requirements as well as investigates service reports and prepares and approves reports.\r\n- Providing process technical support and guidance to the production function, materials, including detailed information, technical interpretations, minor concessions, Defect and investigation, strip condition and performance data collection and material review.\r\n- Create Customer Work scope and All Task cards, Repair cards, Inspection Task cards, Cleaning Task cards and Special instruction Task cards in the IFS System.\r\n- Provide Engine condition reporting/investigation and shop visit report preparation.\r\n- Provide Backup Approval for Equivalent, Alternate Tools, Equipment and Consumables as per Engine Shop Manual (ESM) recommendation.\r\n- Liaisons with Original Equipment Manufacturer (OEM) and Customers Engineering Department for all Technical Issues, Repair Development, alternate approvals.\r\n- Liaise with the Engineering Repair Group for the introduction of new Repairs into EEMC.\r\n- Coordinates the development of original designs, modifications and repairs for the improvement of engine and component reliability, airworthiness and salvaging of worn parts for customer and regulatory approval.\r\n\r\nApply here: https://www.emiratesgroupcareers.com/search-and-apply/307227', '2019-09-09', 0, 0, '', ''),
(30, 6, 0, 'FINANCE CONTROLLER (FSS)(UAE NATIONALS ONLY) - 1900011V', '61455-emirates.png', 'EMIRATES GROUP | DUBAI | UAE', '2018-08-26', 'DUBAI, UAE', 'Join us in a management role and enjoy an attractive tax-free salary. On top of our generous travel benefits, including discounted flights and hotel stays around the world, this managerial role also has an excellent leave and healthcare package. Thatâ€™s on top of transport benefits, life insurance and more. Find out what itâ€™s like to live and work in our fast-paced, cosmopolitan home city in the Dubai Lifestyle section of our website www.emirates.com/careers', 'Finance Graduate', '5 years of experience', 'Mid Career', 'FINANCE CONTROLLER', 'JOB PURPOSE\r\nThe current role is in Group Accounts Payable Services (GAPS), Financial Shared Services, as a result of a colleague moving to the Quantum project.\r\n\r\n\r\nWe actively encourage internal applications and welcome applications from our UAE National colleagues. This is a permanent opportunity.\r\n\r\n\r\nJob Purpose:\r\n\r\n\r\nTo manage and control processes necessary to manage the Group Services unit within Group Accounts Payable Services, Financial Shared Services.\r\n\r\n\r\nThe focus areas of the unit comprise analysing the risks & internal controls as applicable for supplier disbursements, identifying solutions, mitigating risk, complying with Group\r\nPolicies and Procedures, Service delivery to internal and external customers, managing key processes and improving processes as required to enhance efficiency and drive down unit costs.\r\n\r\n\r\n\r\nJob Responsibilities:\r\n\r\n\r\nâ€¢ Manage a cost effective and efficient processing infrastructure to handle exceptionally large volumes of data/\r\ntransactions routed through the specialised Financial Shared Services departments. Processes adopted must meet the\r\nrequirements of the various business partners.\r\nâ€¢ Identify and analyse areas of risk in the different business areas by a process of discussion as well as supporting the\r\nimplementation of risk mitigation measures by key stakeholders.\r\nâ€¢ Ensure compliance of Group policies and procedures in each of the Financial Shared Services departments\r\nâ€¢ Analyse and resolve problem areas in respective area of operations that results in seamless support to business partners\r\nand thereby managing customer needs\r\nâ€¢ Responsible for identifying areas for automation that enhances efficiency and improves data quality. Work with the IT /\r\nproject teams to ensure smooth implementation.\r\nâ€¢ Prepare appropriate levels of MIS reports and make presentations for the departments/ business supported to\r\ncommunicate trends on exceptions.\r\nâ€¢ Support the different audit process (Statutory, ICD) by generating the necessary audit schedules and reconciliations as\r\nrequired. Resolve any queries put forth by the auditors to smooth the process.\r\nâ€¢ Lead or contribute to effective team working so that accuracy and productivity is optimised and is within the KPI set for the job holder.\r\nâ€¢ Supervise and motivate the team reporting to the jobholder by ensuring they perform all their functions effectively and\r\nwork towards achieving the overall objectives of the team. This involves performance management-ensuring interim and\r\nannual reviews are conducted on time. Appropriate development plans are put in place and staff are coached on-the-job\r\nto ensure consistently high standards of work.', '2019-09-09', 0, 0, '', ''),
(31, 30, 0, 'WAREHOUSE AND LOGISTICS MANAGER - EMIRATES ENGINE MAINTENANCE CENTRE - 1900011E', '24202-emirates.png', 'EMIRATES GROUP | DUBAI | UAE', '2018-08-25', 'DUBAI, UAE', 'Join us in a management role and enjoy an attractive tax-free salary. On top of our generous travel benefits, including discounted flights and hotel stays around the world, this managerial role also has an excellent leave and healthcare package. Thatâ€™s on top of transport benefits, life insurance and more. Find out what itâ€™s like to live and work in our fast-paced, cosmopolitan home city in the Dubai Lifestyle section of our website www.emirates.com/careers', 'Degree or Honours (12+3 or equivalent) :  - Degree preferred in business administration, supply chain management or logistics discipline. ', 'Engineering.Materials & Stores : 8+ Years   Operational and management experience handling Warehouse & Logistics activities in an aviation environment.  - 5 years supervisory experience is essential. - Knowledge/skills:  - A thorough understanding of airworthiness regulatory requirements, warehouse processes control procedures (ERP system driven and manual) in relation to aviation tools and material inspection, acceptance, handling, storage, issue, shipping and accountability. ', 'Mid Career', 'WAREHOUSE AND LOGISTICS MANAGER', 'JOB PURPOSE\r\nManage, organize and direct Emirates Engine Maintenance Centre\'s Warehouse & Logistics activities and functions to ensure materials and tools support as per agreed service level agreements to stakeholder departments.\r\n\r\nJob Outline:\r\n- Establish an efficient and effective organization to maintain the supply of materials and tools to various stakeholder departments while minimizing internal processing times\r\n- Plan, organize and control available resources to ensure uninterrupted Warehouse & Logistics operations\r\n- Co-ordinate with stakeholder departments in relation to execution/completion of specific job accountabilities as per agreed standards\r\n- Contribute to yearly budget preparations/calculations and set up control mechanisms to monitor budget spent\r\n- Plan and organize training and performance development of staff in line with agreed training procedures/standards of airworthiness control and safety requirements\r\n\r\nApply here: https://www.emiratesgroupcareers.com/search-and-apply/307082', '2018-09-09', 0, 0, '', ''),
(32, 2, 0, 'AIRPORT SERVICES AGENT - 1900011I', '55654-emirates.png', 'EMIRATES GROUP | DUBAI | UAE', '2018-08-25', 'DUBAI, UAE', 'Join us in a management role and enjoy an attractive tax-free salary. On top of our generous travel benefits, including discounted flights and hotel stays around the world, this managerial role also has an excellent leave and healthcare package. Thatâ€™s on top of transport benefits, life insurance and more. Find out what itâ€™s like to live and work in our fast-paced, cosmopolitan home city in the Dubai Lifestyle section of our website www.emirates.com/careers', '12 Years schooling or equivalent', 'Should have had 2 years experience in a customer service role.  Knowledge of airline passenger and baggage handling (preferable). ', 'Mid Career', 'AIRPORT SERVICES AGENT', 'JOB PURPOSE\r\nTo provide a quality service to EK and Code share passengers in respect to check-in, boarding, special services and baggage services as per company commercial and safety standards and procedures so that EK and code share passengers and their baggage are handed in a consistent and efficient manner. \r\n\r\n\r\nJob Outline:\r\n \r\n- General Objectives:\r\nTo provide our customers both internal and external, with the best services. I will do my best:\r\n* To cheerfully greet every customer with a smile, 100 % of the time.\r\n* To ensure that, I receive no valid complaints from Emirates customer about the quality of services.\r\n* To maintain Emirates professional image by adhering to all applicable corporate grooming guidelines.\r\n* To deal professionally with my peers and managers.\r\n\r\n\r\n- Check-in / boarding:\r\n- Fully adhere to all operational procedures (SOP) with regards to travel, immigration and safety regulations.\r\n\r\n \r\n- Identify and meet the standard and special service requirements of the passengers at check-in, transfer desk, special services and boarding gates by adhering to the set service standards and procedures so that the passengers are handled in a friendly and efficient manner\r\n \r\n- Collect briefing sheet and staff allocation, check all the counters equipments and stationary, report technical fault to Mercator through EMACS\r\n \r\n- Provide a proactive service to passengers prior to check-in such as, managing queues, removing old baggage tags, handling denied boarding passenger, staff passengers, helping families, identifying those with special needs and code share passengers, so that they are directed to the relevant check-in counters and are handled efficiently.\r\n \r\n- Initiate boarding at the gates, following laid down boarding priorities, announcements, hand baggage removal, flight coupon reconciliation and head count confirmation in order to assist the process for a safe and on time departure of EK flights. For flights boarding from remote, ensure the handling procedure applies.\r\n \r\n- Deliver an efficient service at the transfer desks for arriving EK passengers who are connecting to another EK / OAL flights by verifying that their baggage details are recorded in MACS (Mercator Airport Check-in System) prior to checking in passenger and issuing boarding cards and meal voucher where appropriate so that the transfer passengers are processed accurately and expeditiously.\r\n \r\n- Ascertain the handling requirements of the various categories of passengers (e.g. unaccompanied minors, wheelchair, elderly and incapacitated etc.) then ensures that appropriate special services and facilities are provided to meet the special services requirements of the customers.\r\n \r\n- Provide cover for role above when operational requirements demand this i.e. `Act Up\'\r\n \r\n- Baggage Services:\r\n- Checks messages from outstations relating to short shipped baggage and ensures that those passengers who are affected are notified as soon as they reach the baggage arrival carousels, then escorts or directs passengers to the Baggage Services Office where necessary and assists with the raising of Property Irregularity reports, the issuance of Interim relief payments and/or overnight kits and the restoration of items left on board aircraft, so that passengers are not kept waiting unnecessarily. \r\n\r\n \r\n- Monitors baggage delivery performance against agreed standards, keeping passengers informed about any delays or irregularities with their baggage, so that a positive image of our ground product is maintained in the eyes of EK passengers\r\n \r\n- Co-ordinates with DNATA Ground Operations concerning the return of checked in bags to passengers who have been offloaded, the re-tagging to final destination of short tagged baggage to DXB, the return of baggage for those passengers who decide to break their journey in Dubai for STPC or DBB and the despatch of rush baggage on other flights, so that bags are restored to their owners quickly.\r\n \r\n- Monitor unclaimed baggage and ensures that details are quickly updated in World Tracer and that OHD (on hand) stickers are attached to these bags, contents/inventory checked and OHD file updated and placed in the baggage store where necessary, so that they can be restored to their rightful owners or to the outstations as quickly as possible.\r\n \r\n- Helps the passengers who arrive at the land side desk to collect bags, escorts them to the airside area, locates the baggage and hands it over to its owner against a signature, then closes the file in the system.\r\n \r\n- Handle the Telephone calls received at EK Baggage Services Call Centre, deal with passenger professionally and assist the passenger by providing correct and timely information.\r\n \r\n- Handles arriving Rush bags from EK and OAL flights, ensuring that the owners in Dubai are contacted to advise them of delivery arrangements and then makes those arrangements with the transport company to deliver on a cost effective basis after liaising with customs.', '2019-09-08', 0, 0, '', ''),
(33, 30, 0, 'WAREHOUSE & LOGISTICS ASSISTANT - EMIRATES ENGINE MAINTENANCE CENTRE - 1900011O', '52236-emirates.png', 'EMIRATES GROUP | DUBAI | UAE', '2018-08-25', 'DUBAI, UAE', 'Join us in a management role and enjoy an attractive tax-free salary. On top of our generous travel benefits, including discounted flights and hotel stays around the world, this managerial role also has an excellent leave and healthcare package. Thatâ€™s on top of transport benefits, life insurance and more. Find out what itâ€™s like to live and work in our fast-paced, cosmopolitan home city in the Dubai Lifestyle section of our website www.emirates.com/careers', '10 years schooling (O level) or equivalent', '- 10 years schooling (O level) or equivalent with 2 years experience  - 12 years schooling (A level) or equivalent with 1 year experience  - HND Higher National Diploma (12 + 2) with 6 months experience - Graduate (12+3) with no work experience.  - Degree in Business Administration, Supply Chain Management or Logistics is preferred.  - Warehouse and logistics experience in a large organization, preferably in an Aviation/MRO environment.  - A working knowledge of Microsoft applications and the ab', 'Fresher', 'WAREHOUSE & LOGISTICS ASSISTANT', 'JOB PURPOSE\r\nAssist and execute warehouse tasks of receiving, picking, stocking and associated logistics tasks in line with company requirements and airworthiness standards, to support the Emirates Engine Maintenance Centre. \r\n\r\nJob Outline:\r\n\r\n- Pick and move material (incl. tools) between various geographical locations.\r\n- Pack / Unpack tools and materials to facilitate further processing or storage.\r\n- Segregate/identify material based on documents accompanying materials.\r\n- Understand priority nature of the warehouse tasks and be able to meet agreed priority handling / processing timelines.\r\n- Carry out basic system (PC and handheld devices) interactions including but not limited to keying in material information to update system(s).\r\n\r\nApply here: https://www.emiratesgroupcareers.com/search-and-apply/307224', '2019-09-09', 0, 0, '', ''),
(34, 1, 0, 'SENIOR ACCOUNTS ASSISTANT (CONTRACT) - 1900010K', '90629-emi.png', 'EMIRATES GROUP | DUBAI | UAE', '2018-09-01', 'DUBAI, UAE', 'Join us in a management role and enjoy an attractive tax-free salary. On top of our generous travel benefits, including discounted flights and hotel stays around the world, this managerial role also has an excellent leave and healthcare package. Thatâ€™s on top of transport benefits, life insurance and more. Find out what itâ€™s like to live and work in our fast-paced, cosmopolitan home city in the Dubai Lifestyle section of our website www.emirates.com/careers', '- 12th or equivalent. Graduate preferred. - Standard Fares & Ticketing knowledge and certification', 'Experience in IATA fare construction, fares and refund computation, customer service (preferred)   in Revenue Accounting or 3 + yrs. in Finance & Insurance.', 'Mid Career', 'SENIOR ACCOUNTS ASSISTANT', 'JOB PURPOSE\r\n- JOB PURPOSE:\r\nResolve the proration, tax and other processing exceptions on passenger documents to enable automatic processing through RAPID.\r\n\r\n\r\n- JOB ACCOUNTABILITIES LINKED TO OBJECTIVE AREAS (MAXIMUM OF 10)\r\n \r\nPassenger Flown :\r\n \r\n- Amend the fare construction string on passenger tickets to bring it in line with the IATA standard. This activity involves checking the fare construction string to ensure that the codes and amounts have been placed in the proper positions in line with IATA fare construction rules. In case of incorrect positioning of fare and surcharges, the fare construction string must be corrected.  \r\n- Handle proration exceptions in RAPID. This activity involves committing the point of turnaround and true destination of the journey, answering proration related questions by checking the ticket data elements and referring the reference data related items to the Reference data team for further action.  \r\n- Handle tax processing exceptions in RAPID to enable generic XT/ZZ tax codes break-down into actual industry tax codes in cases where automatic XT/ZZ break-down from RAPID fails. This activity involves computing the collectible taxes on each sector (using RAPID screen TXP2001) and matching the collectible taxes with the collected amount.  \r\n- Handle yield/ fare checks and other processing exceptions. This activity involves comparing the system computed net prorate value on the sector with the average yields given to the staff followed by checking the ticket data in RAPID to see if the data is correct. Otherwise, the ticket data must be corrected.  \r\n\r\nFor Apply: https://www.emiratesgroupcareers.com/search-and-apply/306684', '2019-09-15', 0, 0, '', ''),
(35, 23, 0, 'HR MANAGER - ALPHA FLIGHT SERVICES (SHARJAH) - 190000EM', '75248-alpha.jpg', 'ALPHA FLIGHT SERVICE | SHARJAH | UAE', '2019-09-01', 'SHARJAH, UAE', 'We offer an attractive tax-free salary, paid in Dirhams, the local currency of the UAE. The Dirham is linked to the Special Drawing Right of the International Monetary Fund. It has been held constant against the US dollar since the end of 1980 at a mid-rate of approximately US$1= Dh3.66.', 'Degree or Honours  (12+3 or equivalent)', 'Minimum 5 years related experience in similar role', 'Mid Career', 'HR MANAGER', 'JOB PURPOSE\r\nOur Employee Value Proposition\r\n \r\nWith you on board, we can be the worldâ€™s most admired air services provider. Our diverse, global teams have this vision at heart. Every day weâ€™re defining new levels of service for our customers.\r\nWe do this by working closely with employees and suppliers, putting safety at the heart of everything we do. With your talent, passion and big ideas, and our industry-leading performance, we can flourish. We can be the worldâ€™s most admired air services provider.\r\n \r\nThis is a leadership position\r\n       \r\nOur Leaders focus on people and results, they engage, collaborate, inspire others and they consistently act as a role model. Our Leaders develop a culture where all their colleagues possess the skills, knowledge and confidence to work safely, feel respected and are engaged in helping everyone stay safe.\r\n \r\nJob Purpose\r\n \r\nThe Human Resources Manager will contribute to the Group HR Strategy and drive the implementation of local strategic and operational HR programs aligned with the company wide goals and in compliance with local legislation. Support business initiatives which have significant people implications and ensure effective employee engagement through implementation of HR best practices and compliance with policies, procedures and local legislation. Provide creative and flexible HR solutions to support business growth whilst balancing the company\'s interests and the business requirements.\r\n \r\nJob Accountabilities- Partner, consult and manage line managers to educate and advise on all stages of the employee life cycle including performance management, employee development, retention, training, recruitment, induction, employee relations, conflict management and Occupational Health and Safety/workers compensation.\r\n\r\n- Implement corporate HR initiatives such as the development of new systems and the introduction of new HR tools, services or be nefits. Support the development of HR and corporate policy/processes by researching and analysing data, facilitating management buy-in, through management awareness and staff communication. Liaise with Remuneration and Planning on policy changes based on changes to the labour law and/or market practice for the relevant country.\r\n\r\n- Lead the performance management process within the business area by guiding and advising managers on continued staff development by setting objectives, development plans, coaching and providing feedback. Consult with line managers to proactively identify and address employee performance issues.\r\n\r\n- Influence the organisation\'s global HR systems and infrastructure strategy, providing unique insights into employee needs. Work closely with the finance team in the management of the local payroll and recommend improvements to management of time and attendance and payroll processes and systems.\r\n\r\n- Review and initiate process improvements to improve productivity and add value whilst improving the overall employee experience.\r\n\r\n- Participate in the annual pay review by researching and presenting any relevant information to HR Remuneration to support cases for changes to pay scales and allowances.\r\n\r\n- Lead, plan, schedule and formulate the recruitment schedule for the year liaising with the business on the various selection and recruitment methods in order to attract and retain the best candidates. Manage the recruitment process including shortlisting, interviews, references, psychometrics, salary negotiations and the on-boarding process.\r\n\r\n- Identify opportunities to enhance employee engagement and morale based on feedback from climate surveys, exit interviews etc throughout the business by liaising with departmental managers to assist with productivity and retention building a positive working environment.\r\n\r\n- Coach, guide and manage Human Resources professionals (where applicable) to ensure compliance of all Human Resource standards with a key stakeholder focus. Ensure budget accountabilities that fall under HR are well managed and resources are optimally utilised.\r\n\r\n- In liaison with the Remuneration and Planning team, interpret any Collective Labour Agreements, industrial award (where relevant) and actively participate during any relevant negotiations. Develop, implement and maintain appropriate human resources and administrative policies, procedures, protocols and guidelines, ensuring legislative and applicable Collective Labour Agreement compliance.\r\n\r\n- Responsible for adhering to the local Work Health & Safety regulations and safe working practices applicable to their employment.\r\n\r\nFor Apply: https://www.emiratesgroupcareers.com/search-and-apply/297882', '2019-09-15', 0, 0, '', ''),
(36, 28, 0, 'TECHNICAL MANAGER - 1900011U', '26150-emi.png', 'EMIRATES GROUP | DUBAI | UAE', '2019-08-30', 'DUBAI, UAE', 'Join us in a management role and enjoy an attractive tax-free salary. On top of our generous travel benefits, including discounted flights and hotel stays around the world, this managerial role also has an excellent leave and healthcare package. Thatâ€™s on top of transport benefits, life insurance and more. Find out what itâ€™s like to live and work in our fast-paced, cosmopolitan home city in the Dubai Lifestyle section of our website www.emirates.com/careers', 'Degree or Honours (12+3 or equivalent)    Knowledge/skills:    (Show a level of proficiency in at least 3 of the technologies and architecture disciplines)  - Telephony technologies and architecture  - Networking technologies and architecture  - Messaging technologies and architecture  - Client-server technologies and architecture  - IT security and protection technologies and architecture  - Database technologies and architecture - Web technologies and architecture  - Middleware technologies an', 'Information Technology.Other : 8+ Years', 'Expert', 'TECHNICAL MANAGER', 'JOB PURPOSE\r\nJob Purpose:\r\n\r\nTo manage the technical lifecycle of infrastructure within the relevant technologies of the responsible Technical Manager: to define, design, plan, implement and support each technology, ensuring they meet business requirements and comply with corporate policy and standards. To provide documented operational processes and procedures for 1st and 2nd level operational support groups, as well as act as a centre of excellence and 3rd level support for the respective technologies. To ensure the respective technologies have optimum capacity and availability to meet the existing and future needs of the business. To positively manage and minimize risks within the respective technologies. \r\n\r\n\r\n\r\nJob Outline:\r\n\r\n\r\n\r\n- Responsible for setting clear and consistent performance objectives, implementing performance management and development plans to ensure standards of performance and productivity are achieved and maintained enabling a high performance culture. Manage the technical expertise within the team so that resources are appropriately and effectively allocated. Assign suitably qualified resources to projects to support the ongoing IT work programme.\r\n\r\n\r\n- To manage the total cost of ownership of products and services within the respective technologies ensuring costs are identified, defined and unitized, to enable businesses to make informed finance decisions, positively contribute to the process of cost control and provide financial transparency.\r\n\r\n\r\n- Work closely with teams responsible for vendor management and vendor contract negotiations, to ensure SLAS are monitored and managed and contracts are seen to be value for money.\r\n\r\n\r\n- Provide technical consultancy and guidance to the team members and technical manager of other technologies, enterprise architects, and project teams. Providing technical expertise to the enterprise architecture team for defining architecture strategy and standards and design the relevant technologies accordingly.\r\n\r\n\r\n- Identify areas of improvement in existing infrastructure including end of life technology replacement and evaluation of new relevant technologies within the relevant environment in accordance with industry trends. Justifying investment through business cases and drive projects through assigned project managers.\r\n\r\n\r\n- To consistently meet or exceed agreed KPIS for the respective technologies.\r\n\r\n\r\n- Ensuring technologies comply with corporate security policies and procedures and all risks and/or exceptions are indentified and positively managed. Ensuring all security and other operating system patches are promptly identified, reviewed and assessed for their impact on the relevant environment and accordingly implemented on the relevant technologies.\r\n\r\n\r\n- Responsible for providing 3rd level support for the relevant technology environment to the Incident Management and to the Problem Management team ensuring efficient root cause analysis is provided and avoiding reoccurrence of incidents.\r\n\r\n\r\n- Collaborate closely with all IT teams to deliver products and services that contribute to the growth and longevity of the Emirates organization.\r\n\r\n\r\n- Ensure all communications, reports and updates are accurate and consistently delivered in a timely manner.\r\n\r\n\r\nFor Apply: https://www.emiratesgroupcareers.com/search-and-apply/307282', '2019-09-13', 0, 0, '', ''),
(37, 42, 0, 'SALES EXECUTIVE - PRIOHUB - 19000126', '59390-bm_dnatatravel_tcm27-3437.png', 'DNATA TRAVEL | DUBAI | UAE', '2019-08-29', 'DUBAI, UAE', 'We offer an attractive tax-free salary, paid in Dirhams, the local currency of the UAE. The Dirham is linked to the Special Drawing Right of the International Monetary Fund. It has been held constant against the US dollar since the end of 1980 at a mid-rate of approximately US$1= Dh3.66. Besides travel benefits normally associated with an airline, more information on employee benefits is available within the \'Working Here\' section of this site. By viewing the \'Dubai Lifestyle\' section in the sit', 'Computer literate and proficient in Microsoft Office (Word, PowerPoint, Excel & Outlook)', 'Experience: 1+ year experience within the travel industry preferable   Knowledge/Skills: - Currently working in a similar role for at least 1 year. - Previous experience in tourism or hospitality industry (sales and or/reservations roles preferably). Interest in technology is a plus. - Salesforce usage knowledge preferable. - Accuracy and attention to detail. - Excellent verbal and written communication skills; the ability to call, connect, and interact. - Computer literate and proficient in Mic', 'Mid Career', 'SALES EXECUTIVE', 'JOB PURPOSE\r\nThis would be part of the team working for the new project Priohub, an Attractions Marketplace that connects resellers globally to tours and activities, excursions and attractions. The Prio marketplace will provide Attractions with easy and quick access/connectivity to a global and wide list of trade partners. On the other side, resellers such as OTAs, Tour Operators and Destination Management Companies, will have a one point of access to book all attractions seamlessly, introducing them to a wider list of attractions that can be offered instantly to their customers.\r\n\r\nYou role will consist in assisting the Sales Team with key tasks which can include but not limited to: new accounts on boarding, training, agreement renewals, commercial communications, ticket availability monitoring and loading, and be in contact with partners to assist, process and respond with their day to day requests.\r\n\r\n\r\n\r\nGeneric Accountabilities:\r\n \r\n- Provide back up to Sales and Marketing, assisting to maintain and enhance the client/customer relationship. This will be via maintenance of a client database, regular mailing and calls, potential sales visit and other promotional activities. \r\n- Drive a customer during the whole journey of enrolment, including collection of information, internal coordination for Clients\' accounts set up, system updates and creation of credentials. \r\n- Researches, analysis and summarizes intelligence on customers in order to identify segments of potential clientele for priohub. Research to include Tour Operators, Online Travel Agents, DMCs, Bedbanks, locally & worldwide. \r\n- Use a well-established knowledge of different markets in order to monitor trends and competition activities, to ensure that sales strategies can be revised to counter competitor activities or exploit opportunities. \r\n- Assist Sales and marketing to keep track of sales targets by producing and pre-analyzing reports, implement set sales & marketing plan, forecast, in order to guarantee revenue-earning volume as per set budget.\r\n- To constantly update the existing database in Sales Force, to ensure latest customer data is stored and up-to-date. \r\n- To keep record and a comprehensive filing system and monitor the sales generic inbox.\r\n\r\nFor Apply: \r\nhttps://www.emiratesgroupcareers.com/search-and-apply/307522', '2019-09-12', 0, 0, '', ''),
(39, 14, 0, 'ELECTRICAL ENGINEER - UAE', '27112-download.png', 'Tiger Group UAE', '2019-09-03', 'UAE', 'Not Specified', 'B.Sc. Degree In Electrical Engineering ', 'With 15 Years Of U.A.E. Experience.', 'Expert', 'Electrical Engineer', 'Upload and submit your CV in the website', '2019-10-02', 0, 97165771111, 'Contact@tigergroup.ae', 'https://www.tigergroup.net/AboutUs/Career'),
(40, 14, 0, 'MECHANICAL ENGINEER - UAE', '85527-download.png', 'Tiger Group UAE', '2019-09-03', 'UAE', 'Not Specified', 'B.Sc. Degree In Mechanical Engineering', '15 Years Of U.A.E. Experience', 'Expert', 'Mechanical Engineer', 'Please upload your CV in the website', '2019-10-02', 0, 97165771111, 'Contact@tigergroup.ae', 'https://www.tigergroup.net/AboutUs/Career'),
(41, 14, 0, 'PLANNING ENGINEER', '72792-download.png', 'Tiger Group UAE', '2019-09-03', 'UAE', 'Not Specified', 'B.Sc. Degree In Civil / Architect Engineering', '5 Years Of U.A.E. Experience', 'Mid Career', 'Planning Engineer', 'Please upload your CV in the company website', '2019-09-02', 0, 97165771111, 'Contact@tigergroup.ae', 'https://www.tigergroup.net/AboutUs/Career'),
(42, 14, 0, 'PROCUREMENT ENGINEER - UAE', '11474-download.png', 'Tiger Group UAE', '2019-09-03', 'UAE', 'Not Specified', 'B.Sc. Degree In Civil / Architect Engineering', ' 10 Years Of U.A.E. Experience', 'Expert', 'Procurement Engineer', 'Please upload your CV in the company website', '2019-10-02', 0, 97165771111, 'Contact@tigergroup.ae', 'https://www.tigergroup.net/AboutUs/Career'),
(43, 10, 0, 'ELECTRICAL ENGINEER - UAE', '7153-download.png', 'Tiger Group UAE', '2019-09-03', 'UAE', 'Not Specified', 'B.Sc. Degree In Electrical Engineering ', '15 Years Of U.A.E. Experience', 'Expert', 'Electrical Engineer', 'Please upload your CV directly to the company website', '2019-10-02', 0, 97165771111, 'Contact@tigergroup.ae', 'https://www.tigergroup.net/AboutUs/Career'),
(44, 10, 0, 'MECHANICAL ENGINEER - UAE', '77850-download.png', 'Tiger Group UAE', '2019-09-03', 'UAE', 'Not Specified', 'B.Sc. Degree In Mechanical Engineering', '15 Years Of U.A.E. Experience', 'Expert', 'Mechanical Engineer', 'Please upload your CV in the company website', '2019-10-02', 0, 97165771111, 'Contact@tigergroup.ae', 'https://www.tigergroup.net/AboutUs/Career'),
(45, 10, 0, 'PLANNING ENGINEER - UAE', '9339-download.png', 'Tiger Group UAE', '2019-09-03', 'UAE', 'Not Specified', 'B.Sc. Degree In Civil / Architect Engineering', '5 Years Of U.A.E. Experience', 'Mid Career', 'Planning Engineer', 'Please upload your CV to the company website', '2019-10-02', 0, 97165771111, 'Contact@tigergroup.ae', 'https://www.tigergroup.net/AboutUs/Career'),
(46, 10, 0, 'PROCUREMENT ENGINEER - UAE', '10417-download.png', 'Tiger Group UAE', '2019-09-03', 'UAE', 'Not Specified', 'B.Sc. Degree In Civil / Architect Engineering', ' 10 Years Of U.A.E. Experience', 'Expert', 'Procurement Engineer', 'Please upload your CV to the company website', '2019-10-02', 0, 97165771111, 'Contact@tigergroup.ae', 'https://www.tigergroup.net/AboutUs/Career');
INSERT INTO `jobs` (`id`, `fkJobsCat`, `jobCode`, `jobDesc`, `img`, `companyName`, `date`, `place`, `salary`, `qual`, `experience`, `careerType`, `description1`, `description2`, `lastDate`, `fkCountry`, `mobile`, `email`, `web`) VALUES
(47, 14, 0, 'SENIOR TECHNICAL ENGINEER - IOS/ANDROID - 19000136      UNITED ARAB EMIRATES', '56669-90629-emi.png', 'Emirates Group', '2019-09-07', 'United Arab Emirates', 'an attractive tax-free salary and travel benefits that are exclusive to our industry, including discounts on flights and hotels stays around the world. You can find out more information about our employee benefits in the Working Here section of our website www.emirates.com/careers. Further information on whatâ€™s it like to live and work in our cosmopolitan home city, can be found in the Dubai Lifestyle section.', 'Degree in a relevant field such as Computer Science, Computational Mathematics, Computer Engineering or Software Engineering. Software Engineering', ' 5 years of iOS software development experience.  â€¢ 4 years of Swift language development experience â€¢ Excellent ability breaking down complex technical problems into simple, implementable solutions.  â€¢ Experience supporting and controlling technical factors related to the resilience, performance, quality, and responsiveness of mobile apps.  â€¢ Experience guiding technical features being delivered to support non-functional requirements.  â€¢ In-depth understanding of key iOS frameworks su', 'Mid Career', 'SENIOR TECHNICAL ENGINEER', ' Lead the discovery phase of small to medium projects to come up with high level design. Partner with the Product Managers, Architects and others in the team.\r\n \r\n- Lead technical design and build for medium to large sized solutions in a team. Translate complex functional and non-functional requirements into fit for purpose technical design.\r\n\r\n- Debugging and solving issues and follow design documents and implement/test codes and make design decisions while coding and using strong coding principles. Own any feature of the solution end to end.\r\n\r\n\r\n- Enable test automation while ensuring the CI/CD pipeline is always in good health and is responsible for the technical design and high-quality coding for technology products that passes the QA requirements and is production deployment ready. Automate testing and carry out functional and performance testing in collaboration with test engineers and quality assurance.\r\n\r\n\r\n- Build, maintain and operate technical environments for software development, continuous integration and continuous deployment for data solutions.\r\n\r\n\r\n- Contribute to software and data engineering playbooks for use by relevant people in information technology and data scientists in the business.\r\n\r\n\r\n- Contribute to sprint/work design and planning by providing subject matter expertise on business domain and relevant technologies and contribute to software engineering organisation in relevant technology and ensures participation in cross skilling using expertise.\r\n \r\n- Support acceptance testing of the technology solutions by the business ensuring the technology solution meets the business requirements Drive corrective, adaptive, preventative and perfective maintenance of solutions with support from environment management, service management, infrastructure management and cyber security.\r\n\r\n\r\n- Network with senior internal and external colleagues in area of expertise. Work with others to identify trade-offs or potential conflicts between functional goals and objectives.\r\n\r\n\r\n- Solve complex issues where analysis of situations or data requires an in-depth evaluation of variable factors. Exercises judgment in selecting methods, techniques and evaluation criteria for obtaining results.', '2019-09-19', 0, 0, '', 'https://www.emiratesgroupcareers.com/search-and-apply/308083'),
(48, 31, 0, 'MEDIA MANAGER - 190000WC  UNITED ARAB EMIRATES', '80326-79823-emirates.png', 'Emirates Group Careers.', '2019-09-12', 'United Arab Emirates', 'Join us in a management role and enjoy an attractive tax-free salary. On top of our generous travel benefits, including discounted flights and hotel stays around the world, this managerial role also has an excellent leave and healthcare package. Thatâ€™s on top of transport benefits, life insurance and more.', 'preferable with a degree in Media or Marketing    A post graduate qualification from a masterâ€™s program or a professional marketing institution (for example a diploma from the Chartered Institute of Marketing) would be a distinct advantage as would an Honours degree. However, candidates falling short of educational requirements but with suitable work experience will be considered.', '  in Media â€“ planning and buying.     - Experience in a senior media position in an international media agency, responsible for strategy and optimization.  - Preferable to have some Client Side experience.  - Experienced and knowledgeable in digital and new media channels.  - Experience in the airline/travel industry is preferable.   - Supervisory/management experience required.', 'Mid Career', 'MEDIA MANAGER', 'The Media Manager is responsible for driving best practice in media strategy and investment within priority markets/regions with sophisticated or complex media landscapes and on the Airlineâ€™s major Global Brand initiatives in order to  ensure that plans deliver maximum return on media investment. Proactively supports the Media teamâ€™s wider efforts to develop and implement global planning practices and plays a key role as a mentor, working to enhance the departmentâ€™s overall understanding and appreciation for media planning and  buying.  \r\nScope covers both annual / brand planning and quarterly / tactical campaigns.  Scope does not include planning for Always-on Performance marketing.\r\n\r\nResponsible for the development of integrated paid media strategies that deliver against the marketâ€™s Brand/ business objectives as defined in briefs developed by the regional Marketing Communications Manager; working collaboratively with internal stakeholders (where relevant; Advertising, PR, Sponsorships, Performance marketing teams) on annual Brand and Tactical campaign plans to translate brand / business objectives into actionable media objectives, set optimal budgets, applying insights (where relevant) from first/second/ third party data to drive consumer-centric media strategy development and define and report on media KPIâ€™s, in collaboration with the Analytics team.\r\n- Drive the planning & execution of major Global/Regional Brand initiatives (i.e. campaigns that span across markets/regions) from briefing to implementation and post campaign report analysis.   \r\n- Inspire agency partners to innovate and deliver to objectives.  Provide guidance when required. Review and challenge media recommendations proposed by the agency.\r\n- Once a strategic imperative has been established in response to a local market Brand brief, support local / regional media agencies  and internal teams in the development and execution of media partnerships to drive brand engagement; from partner selection, review & negotiation of cost proposals, KPI setting and development of the content strategy. \r\n- Contribute to the Media teamâ€™s efforts to develop global media governance principles, practices and processes for the Group in order to drive consistent, effective and efficient development of media strategies within Brand, Tactical or specific verticals/platforms. Responsible for ensuring that global media planning guidelines for Brand and Tactical activity that are defined centrally are effectively applied in assigned local markets in order to bring consistency. Proactively identify gaps and propose enhancements on existing global media guideline documents.\r\n- Develop the skills and knowledge-base required to become a â€˜subject-matter expertâ€™ for a specific work stream that has been identified as critical to keeping the Emirates Group ahead of the curve within the media industry.   This could be (e.g.) Social Media/ Mobile/ Content, etc. Lead in strategy, development of playbooks to bring consistency across markets/business units and educate internal teams. Identify & establish strategic media partnerships with relevant publishers / platforms that can be leveraged to meet our business/Brand objectives.\r\n- Monitor efforts made by the media agency and internal stakeholders to deliver brand safe and brand suitable ad placement in line with Emirates Groups Brand safety guidelines. Monitor the quality of digital inventory via third party monitoring tools and ensure that under-performing publishers are addressed by the media agency.\r\n- Maintain an overview of other activities in the market across paid media channels such as performance marketing. Ensure this information is taken into account when planning campaigns or activities in markets so that cost is minimized and return is optimized.\r\n- Support VP- Media to optimize media agency performance across hubs and individual markets.  Drive the annual media agency appraisal process in assigned regions/markets or business units. \r\n- Proactively identify knowledge gaps specific to media within the Media team and internally across teams. Develop learning agendas to help elevate strategic thinking.  Share best practice ideas from across the network in order to foster innovation and creative thinking within media planning & strategy development\r\n\r\n', '2019-09-28', 0, 0, '', 'https://www.emiratesgroupcareers.com/search-and-apply/305142'),
(49, 14, 0, 'IT SENIOR OPERATIONS ENGINEER - 1900013O', '49926-79823-emirates.png', 'Emirates Group Careers.', '2019-09-18', 'United Arab Emirates', 'Join us in Dubai and enjoy an attractive tax-free salary and travel benefits that are exclusive to our industry, including discounts on flights and hotels stays around the world. You can find out more information about our employee benefits in the Working Here section of our website www.emirates.com/careers. Further information on whatâ€™s it like to live and work in our cosmopolitan home city, can be found in the Dubai Lifestyle section.', 'Bachelor degree in Information Technology or Engineering   Preferred CCNA / CCNP or MCSE certified', 'Information Technology. 3+ Years,3+ years of specialist technical experience within an IT operational based environment,complexity   Incident Management   Operations Management   Console Management   Back-up and Recovery Management   Relevant Professional Certifications (ITIL, Operational Management etc)   Relevant Technical Certifications (CCNA, MCSE, IBM Mainframe etc)', 'Mid Career', 'IT SENIOR OPERATIONS ENGINEER', 'Working in a contact centre environment resolving problems raised internally by Emirates Group staff or externally by analysing incidents and making recommendations to the technical teams that will help reduce the number of recurring incidents. To ensure that IT service operations remain within agreed service levels and minimize the adverse impact by proactively identifying and highlighting issues and risks.\r\n ', '2019-10-01', 0, 0, '', 'https://www.emiratesgroupcareers.com/search-and-apply/308284'),
(50, 28, 0, 'IT SUPPORT TECHNICIAN - 1900014E', '65961-79823-emirates.png', 'Emirates Group Careers.', '2019-09-18', 'United Arab Emirates', 'Join us in Dubai and enjoy an attractive tax-free salary and travel benefits that are exclusive to our industry, including discounts on flights and hotels stays around the world. You can find out more information about our employee benefits in the Working Here section of our website www.emirates.com/careers. Further information on whatâ€™s it like to live and work in our cosmopolitan home city, can be found in the Dubai Lifestyle section.', 'Information Technology.Hardware ,', '2 years of experience within a Service Desk and being able to react quickly, logically, effectively under pressure. Knowledge of tools such as cable tester, crimping tools, multi meter. Knowledge of all geographical areas in all Emirates in U.A.E, the Job holder needs to / may visit the sites in all the Emirates. Working knowledge of using PCs and office tools, such as MS word and Email. Professional Skills: User support,Completed course or equivalent of MCP Certification. UAE driving license Ex', 'Mid Career', 'IT SUPPORT TECHNICIAN ', 'To restore normal IT service operations within agreed service levels and business priorities and minimize the adverse impact on business operations for Emirates Group and External Clients.\r\n', '2019-10-06', 0, 0, '', 'https://www.emiratesgroupcareers.com/search-and-apply/308622'),
(51, 28, 0, 'IT SUPPORT TECHNICIAN - 1900014E', '42369-31268-emirates.png', 'Emirates Group\'s ', '2019-09-22', 'United Arab Emirates', 'An attractive tax-free salary and travel benefits that are exclusive to our industry, including discounts on flights and hotels stays around the world. ', ' Information Technology.Hardware : 3+ Years     Vocational or Diploma (12+2 or equivalent) :', ' Completed course or equivalent of MCP Certification. UAE driving license Experience in installation and cabling of LAN/WAN related network. 2 years of experience within a Service Desk and being able to react quickly, logically, effectively under pressure. Knowledge of tools such as cable tester, crimping tools, multi meter. Knowledge of all geographical areas in all Emirates in U.A.E, the Job holder needs to / may visit the sites in all the Emirates. Working knowledge of using PCs and office to', 'Mid Career', 'IT SUPPORT TECHNICIAN -', 'To restore normal IT service operations within agreed service levels and business priorities and minimize the adverse impact on business operations for Emirates Group and External Clients.\r\n\r\n', '2019-10-06', 0, 0, '', 'https://www.emiratesgroupcareers.com/search-and-apply/308622'),
(52, 1, 0, 'SENIOR ACCOUNTANT - ABU DHABI', '33495-serco.png', 'Serco Middle East', '2019-09-22', 'Abu Dhabi, UAE', 'Not Specified', 'Bachelorâ€™s degree in Accountancy or equivalent discipline.', 'Please find the full description', 'Expert', 'Senior Accountant', 'Essential technical and professional skills:\r\n\r\nHow many years of experience do you have in management of financial systems and budgets, financial reporting, financial data analysis, auditing.\r\nMust have experience in Property Management Finance.\r\nMust have experience in finance, accounting, budgeting, and cost control principles.\r\nMust have experience of financial and accounting software applications.\r\nMust have Bachelorâ€™s degree in Accountancy or equivalent discipline.\r\nExcellent and proficient in SAP and Yardi systems\r\nAbility to work on complex systems and including proficiency with MS Outlook, Word, Excel and Power Point applications and ability to learn new software based applications.\r\nExcellent communication skills, both written and verbal, and the ability to manage multiple tasks efficiently and work productively in a fast-paced, team-oriented environment.', '2019-10-21', 0, 0, '', 'https://careers.serco.com/ME/job/Abu-Dhabi-Senior-Accountant-Abu/517555802/'),
(53, 14, 0, 'ELECTRICAL TECHNICAL ASSISTANT (UPS)-DUBAI', '20087-serco.png', 'Serco Middle East', '2019-09-22', 'Dubai, UAE', 'Not Specified', 'Technical diploma in Electrical Engineering.', 'Please find the full description', 'Mid Career', 'Electrical Technical Assistant', 'Specific requirements\r\n\r\nMinimum 3-year experience in a building services electrical department or facilities management environment. \r\nTechnical diploma in Electrical Engineering.\r\nGood level of the English language both written and spoken.\r\nProficient and able to demonstrate a complete understanding of assisting in electrical maintenance planned maintenance and repair services.\r\nTechnically competent with a clear understanding of electrical safety, electrical tools and associated test equipment.\r\nElectrical Vocational Training Certificate or part training and advantage\r\n ', '2019-10-21', 0, 0, '', 'https://careers.serco.com/ME/job/Dubai-Electrical-Technical-Assistant-%28UPS%29-Duba/517560202/');

-- --------------------------------------------------------

--
-- Table structure for table `land`
--

CREATE TABLE `land` (
  `id` int(100) NOT NULL,
  `forland` int(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `header` varchar(200) NOT NULL,
  `plotAreaValues` float NOT NULL,
  `plotAreaUnits` int(100) NOT NULL,
  `plotType` varchar(100) NOT NULL,
  `plotShape` int(100) NOT NULL,
  `roadAccess` int(100) NOT NULL,
  `otherFacilities` varchar(1000) NOT NULL,
  `minrate` bigint(20) NOT NULL,
  `maxrate` bigint(20) NOT NULL,
  `location` varchar(300) NOT NULL,
  `district` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `mobile` bigint(100) NOT NULL,
  `status` int(11) NOT NULL,
  `fkUserId` int(100) NOT NULL,
  `postDate` date NOT NULL,
  `isBlocked` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `land`
--

INSERT INTO `land` (`id`, `forland`, `code`, `header`, `plotAreaValues`, `plotAreaUnits`, `plotType`, `plotShape`, `roadAccess`, `otherFacilities`, `minrate`, `maxrate`, `location`, `district`, `state`, `mobile`, `status`, `fkUserId`, `postDate`, `isBlocked`, `date`, `img`) VALUES
(2, 1, 'LAND1003', '5 Cent House Plot for Sale at Mukkola, Vizhinjam.', 5, 1, 'House Plot', 1, 1, '300 mtrs from Vizhinjam Balaramapuram Road.  1 Km from Mukkola Jn. Lorry Site', 0, 350000, 'Mukkola, Vizhinjam', 'Thiruvananthapuram', 'Kerala', 918075074492, 1, 3, '2019-08-08', 0, '2019-08-08 07:00:00', 'Land/89546-67740172_417138712342779_8109917261608779776_n.jpg'),
(3, 0, 'LAND1004', 'Plot for sale at Cochin', 6.375, 1, '', 0, 1, '1.5 km from vazhakkala.  1.1 km from chembumukku.  1.6 km from edappally.  2 km from Padivattom signal. ', 0, 1250000, 'Cochin', 'Ernakulam', 'Kerala', 919995553002, 1, 3, '2019-08-08', 0, '2019-08-08 07:00:00', 'Land/62155-67583442_420383148685002_3982351963852374016_n.jpg'),
(4, 0, 'LAND1005', '30 cent level à´ªàµà´²àµ‹à´Ÿàµà´Ÿàµ à´µà´¿à´²àµà´ªà´¨à´¯àµà´•àµ, à´¤à´³à´¿à´ªàµà´ªà´±à´®àµà´ª', 30, 1, 'Level Plot', 0, 1, 'à´¤à´³à´¿à´ªàµà´ªà´±à´®àµà´ª à´¶àµà´°àµ€à´•à´£àµà´Ÿà´¾à´ªàµà´°à´‚ à´¹àµˆà´µàµ‡à´¯à´¿àµ½ à´¨à´¿à´¨àµà´¨àµà´‚ 800 à´®àµ€à´±àµà´±àµ¼ à´®à´¾à´±à´¿ à´¤à´¾à´´àµ† à´šàµŠà´±àµà´•àµà´•àµà´³ à´®àµà´¯àµà´¯à´‚ à´±àµ‹à´¡à´¿àµ½  à´¬àµà´¸àµ‚à´°à´¿ à´—à´¾àµ¼à´¡àµ»à´¸àµ à´µà´¿à´²àµà´² à´ªàµà´°àµ‹à´œà´•àµà´Ÿà´¿à´¨àµ à´¸à´®àµ€à´ªà´‚ 30cent level à´ªàµà´²àµ‹à´Ÿàµà´Ÿàµ à´µà´¿à´²àµà´ªà´¨à´¯àµà´•àµ..  à´µà´¿à´²àµà´² à´ªàµà´°àµ‹à´œàµ†à´•àµà´Ÿà´¿à´¨àµà´‚ à´µàµ€à´Ÿàµ à´Žà´Ÿàµà´•àµà´•à´¾à´¨àµà´‚ à´…à´¨àµà´¯àµ‹à´œàµà´¯à´®à´¾à´¯ à´¸àµà´¥à´²à´‚..  à´¶àµà´¦àµà´§à´®à´¾à´¯ à´µàµ†à´³àµà´³à´‚ à´¶à´¾à´¨àµà´¤à´®à´¾à´¯ à´à´°à´¿à´¯ à´®à´±àµà´±àµ†à´²àµà´²à´¾à´‚ à´•àµŠà´£àµà´Ÿàµà´‚ à´µà´³à´°àµ† à´…à´¨àµà´¯àµ‹à´œàµà´¯à´®à´¾à´¯ à´¸àµà´¥à´²à´‚ ', 0, 65000, 'Taliparamba', 'Kannur', 'Kerala', 919061350819, 1, 3, '2019-08-08', 0, '2019-08-08 07:00:00', 'Land/10831-67636518_420868978636419_2000152770664988672_n.jpg'),
(5, 1, 'LAND1006', '3 cent plot for sale at Cochin', 3, 1, 'Level Plot', 1, 1, 'Road front.  150 meter from bus stop. ', 0, 1350000, 'Padamugal, Cochin', 'Kannur', 'Kerala', 919995553002, 1, 3, '2019-08-15', 0, '2019-08-15 07:00:00', 'Land/65683-67807109_424563848266932_2651138077501685760_n.jpg'),
(6, 1, 'LAND1007', '2 acre 75 cent plot for sale', 2.75, 2, 'Suitable for Houses and Farms', 1, 1, '', 0, 12375000, 'Pokkund, Kurumathoor', 'Kannur', 'Kerala', 919747606455, 1, 11, '2019-08-17', 0, '2019-08-17 07:00:00', ''),
(7, 1, 'LAND1008', '5 à´¸àµ†à´¨àµà´±àµ à´¸àµà´¥à´²à´‚ à´‡à´Ÿà´ªàµà´ªà´³àµà´³à´¿, à´•àµŠà´šàµà´šà´¿ ', 5, 1, '', 0, 1, '', 0, 1200000, ' à´‡à´Ÿà´ªàµà´ªà´³àµà´³à´¿ à´•à´°à´¿à´®à´•àµà´•à´¾à´Ÿàµ, à´•àµŠà´šàµà´šà´¿ ', 'Ernakulam', 'Kerala', 919995553002, 1, 3, '2019-08-18', 0, '2019-08-18 07:00:00', ''),
(8, 1, 'LAND1009', '10 cent Residential plot for sale', 10, 1, 'Residential', 1, 1, '*10 cent plot for sale *Suitable for build home *Per cent 3.5 lakh  *Kuthuparamba town , Kannur  *Pillakoottam Juma  masjid road 700mtrs *direct customers only *', 0, 3500000, 'Kuthuparamba', 'Kannur', 'Kerala', 9061286119, 1, 16, '2019-08-19', 0, '2019-08-19 07:00:00', 'Land/24055-96629215-7deb-4f05-ae8a-12834d3ed945.jpeg'),
(9, 1, 'LAND1009', '15 cent plot for Sale at Kavumbai ', 15, 1, '', 0, 1, 'Interested for Exchange with good houses', 0, 2400000, 'near kavumbai school, Kannur', 'Kannur', 'Kerala', 971569262993, 1, 11, '2019-08-19', 0, '2019-08-19 07:00:00', 'Land/2293-land-for-sale.jpg'),
(10, 1, 'LAND1010', 'à´…à´žàµà´šà´°à´•àµà´•à´£àµà´Ÿà´¿ à´¬à´¾à´µàµ‹à´Ÿàµ à´Žà´¨àµà´¨ à´¸àµà´¥à´²à´¤àµà´¤àµ à´Ÿà´¾àµ¼ à´±àµ‹à´¡àµ à´•àµ‚à´Ÿà´¿à´¯ 25 à´¸àµ†àµ»à´±àµ à´¸àµà´¥à´²à´‚ à´µà´¿àµ½à´•àµà´•à´¾à´¨àµà´£àµ', 25, 1, 'à´µàµ€à´Ÿàµ à´µàµ†à´•àµà´•à´¾à´¨àµà´‚ à´µà´¾à´Ÿà´• à´•àµà´µà´¾àµ¼à´Ÿàµà´Ÿàµ‡à´´àµà´¸à´¿à´¨àµà', 0, 1, 'à´¨à´²àµà´²à´ªàµ‹à´²àµ† à´µàµ†à´³àµà´³à´‚ à´²à´­à´¿à´•àµà´•àµà´¨àµà´¨ à´¸àµà´¥à´²à´‚', 0, 3125000, 'à´…à´žàµà´šà´°à´•àµà´•à´£àµà´Ÿà´¿ à´¬à´¾à´µàµ‹à´Ÿàµ, à´…à´žàµà´šà´°à´•àµà´•à´£àµà´Ÿà´¿ à´¹àµˆà´¸àµà´•àµ‚àµ¾ 4km à´šà´•àµà´•à´°à´•àµà´•àµ½ à´Ÿàµ—àµº ..5 km à´•à´£àµà´£àµ‚àµ¼ à´®àµ†à´¡à´¿à´•àµà´•àµ½ à´•àµ‹à´³àµ‡à´œàµ 4 km', 'Kannur', 'Kerala', 918050080800, 1, 11, '2019-08-19', 0, '2019-08-19 07:00:00', 'Land/42118-anjarakandy-bavode-3.jpg'),
(11, 1, 'LAND1011', 'à´ªà´°à´¿à´¯à´¾à´°à´‚ à´®àµ†à´¡à´¿à´•àµà´•àµ½ à´•àµ‹à´³àµ‡à´œàµ 2 km à´¦àµ‚à´°à´‚ à´šàµ†à´±àµà´¤à´¾à´´à´‚ à´¹à´¯àµ¼ à´¸àµ†à´•àµà´•à´¨àµà´±à´±à´¿ à´¸àµà´•àµ‚àµ¾ à´…à´Ÿàµà´¤àµà´¤àµ 20 à´¸àµ†à´¨', 20, 1, '', 0, 1, '', 0, 3000000, 'à´ªà´°à´¿à´¯à´¾à´°à´‚', 'Kannur', 'Kerala', 918921867825, 1, 11, '2019-08-21', 0, '2019-08-21 07:00:00', 'Land/13020-à´ªà´°à´¿à´¯à´¾à´°à´‚.jpg'),
(12, 1, 'LAND1012', 'à´à´´à´¿à´®à´² à´Ÿàµ‹à´ªàµà´ªàµ à´±àµ‹à´¡à´¿àµ½ 1à´¹àµ†à´•àµà´Ÿàµ¼ 16.5à´¸àµ†à´¨àµà´±àµ à´µà´¿àµ½à´•àµà´•à´¾à´¨àµà´£àµà´Ÿàµ', 1, 3, '', 0, 1, 'à´®àµ†à´¯à´¿àµ» à´±àµ‹à´¡àµ', 0, 808500, 'à´à´´à´¿à´®à´²', 'Kannur', 'Kerala', 971503349726, 1, 11, '2019-08-21', 0, '2019-08-21 07:00:00', 'Land/86474-à´à´´à´¿à´®à´²-1.jpg'),
(13, 1, 'LAND1013', 'à´ªàµ†à´°àµà´µà´³à´¤àµà´¤àµà´ªà´±à´‚à´¬à´¿à´²àµâ€ à´µàµ€à´Ÿàµ à´µàµ†à´•àµà´•à´¾à´¨àµâ€ à´…à´¨àµà´¯àµ‹à´œàµà´¯à´®à´¾à´¯ 16 à´¸àµ†à´¨àµà´±àµ à´¸àµà´¥à´²à´‚ à´µà´¿à´²àµâ€à´ªàµà´ªà´¨à´•àµ', 16, 1, '', 0, 1, 'à´µàµ€à´Ÿàµ à´µàµ†à´•àµà´•à´¾à´¨àµâ€ à´…à´¨àµà´¯àµ‹à´œàµà´¯à´®à´¾à´¯', 0, 2080000, 'à´ªàµ†à´°àµà´µà´³à´¤àµà´¤àµà´ªà´±à´‚à´¬', 'Kannur', 'Kerala', 919447485584, 1, 11, '2019-08-21', 0, '2019-08-21 07:00:00', ''),
(14, 1, 'LAND1014', '50 à´¸àµ†à´¨àµà´±àµ à´±à´¬àµà´¬àµ¼à´¤àµ‹à´Ÿàµà´Ÿà´‚ à´µà´¿àµ½à´ªàµà´ªà´¨à´•àµà´•àµ', 50, 1, '', 0, 1, 'à´ªà´¯àµà´¯à´¾à´µàµ‚àµ¼ à´Ÿàµ—à´£à´¿àµ½ à´¨à´¿à´¨àµà´¨àµà´‚ 200à´®àµ€à´±àµà´±àµ¼ à´®à´¾à´±à´¿..à´±àµ‹à´¡àµ à´¸àµ—à´•à´°àµà´¯à´‚.. à´µàµ€à´Ÿàµà´µàµ†à´•àµà´•à´¾àµ» à´…à´¨àµà´¯àµ‹à´œàµà´¯à´‚ . à´¹àµ‹à´¸àµà´ªà´¿à´±àµà´±àµ½, à´šàµ¼à´šàµ, à´®àµ‹à´¸àµâ€Œà´•àµ, à´Ÿàµ†à´‚à´ªà´¿àµ¾, à´¸àµà´•àµ‚àµ¾, à´ŸàµŒàµº, à´ªà´žàµà´šà´¾à´¯à´¤àµà´¤àµâ€Œ, à´µà´¿à´²àµà´²àµ‡à´œàµ, à´ªàµ‹à´²àµ€à´¸àµà´¸àµà´±àµà´±àµ‡à´·àµ», à´Žà´²àµà´²à´¾à´‚ 250à´®àµ€à´±àµà´±à´±à´¿à´¨àµà´³àµà´³à´¿àµ½..', 0, 7000000, 'à´ªà´¯àµà´¯à´¾à´µàµ‚àµ¼', 'Kannur', 'Kerala', 96565103166, 1, 11, '2019-08-24', 0, '2019-08-24 07:00:00', 'Land/78408-payyavoor.jpg'),
(15, 1, 'LAND1015', '16 Cent Plot for sale', 16, 1, '', 0, 1, '500mtr from Kannur eachur main road,  back side of cr auditorum', 0, 5440000, 'Eachur main roadG', 'Kannur', 'Kerala', 919895358932, 1, 11, '2019-08-24', 0, '2019-08-24 07:00:00', 'Land/12985-eachur-2.jpg'),
(16, 1, 'LAND1016', '13.5 cent house plot for sale at à´•à´£àµà´£àµ‚àµ¼ à´¤àµŠà´•àµà´•à´¿à´²à´™àµà´™à´¾à´Ÿà´¿', 13.5, 1, '', 0, 1, 'Just 100 mtr from koothuparamba _mattannur road (28 mtr tar road frontage available)', 0, 4050000, 'à´¤àµŠà´•àµà´•à´¿à´²à´™àµà´™à´¾à´Ÿà´¿, à´•àµ‚à´¤àµà´¤àµà´ªà´±à´®àµà´ª', 'Kannur', 'Kerala', 919446018939, 1, 11, '2019-08-26', 0, '2019-08-26 07:00:00', 'Land/72835-68838640_429987094391274_8214908355634790400_n.jpg'),
(19, 1, 'LAND1019', '34 à´¸àµ†à´¨àµà´±àµ à´œà´¾à´¤à´¿à´•àµà´•à´¾ à´¤àµ‹à´Ÿàµà´Ÿà´‚ à´µà´¿à´²àµà´ªà´¨à´¯àµà´•àµà´•àµ ', 34, 1, '', 0, 1, 'à´ªàµà´•àµà´•à´¾à´Ÿàµà´Ÿàµà´ªà´Ÿà´¿. 700 à´®àµ€à´±àµà´±àµ¼ à´¦àµ‚à´°à´‚ à´¬à´¸àµà´±àµà´±àµ‹à´ªàµà´ªà´¿àµ½ à´¨à´¿à´¨àµà´¨àµà´‚', 0, 10710000, 'à´ªàµà´•àµà´•à´¾à´Ÿàµà´Ÿàµà´ªà´Ÿà´¿.', 'Ernakulam', 'Kerala', 919995553002, 1, 11, '2019-08-26', 0, '2019-08-26 07:00:00', 'Land/61650-10710000.jpg'),
(20, 1, 'LAND1020', 'Plot for sale', 103, 1, 'Levelled hill land', 1, 1, 'Last year planted 40 coconut tree ', 0, 150000, 'Poovatuparamba-- perumanna road', 'Kozhikode', 'Kerala', 9895810198, 1, 59, '2019-08-27', 0, '2019-08-27 07:00:00', 'Land/76910-img_20190710_105312.jpg'),
(22, 1, 'LAND1021', '14.5cent plot place uliyil naduvanad road .main road il ninnum 100 meeter thazhot .kinar vellam vattilla', 14.5, 1, 'House plot', 1, 0, 'Vattatha kinarvellam..road und', 0, 1300000, 'Padikkachal', 'Kannur', 'Kerala', 7356512736, 1, 67, '2019-08-28', 0, '2019-08-28 07:00:00', 'Land/33968-20190808_120630.jpg'),
(23, 1, 'LAND1022', 'House for sale in North Paravoor ', 15, 1, '', 1, 1, '', 0, 5000000, 'N. Paravoor', 'Ernakulam', 'Kerala', 9383413008, 1, 76, '2019-08-30', 0, '2019-08-30 07:00:00', 'Land/27194-img-20190829-wa0053.jpg'),
(25, 1, 'LAND1024', 'à´•à´£àµà´£àµ‚àµ¼ à´•àµ€à´šàµà´šàµ‡à´°à´¿ à´±àµ‹à´¡àµ à´¸àµˆà´¡à´¿àµ½ 5 à´¸àµ†à´¨àµà´±àµ à´µà´¿à´²àµà´ªà´¨à´•àµà´•àµ ', 5, 1, '', 0, 1, '', 0, 1000000, 'SI Mukku, Ancham Peedika ', 'Kannur', 'Kerala', 9048607966, 1, 3, '2019-09-01', 0, '2019-09-01 07:00:00', 'Land/55180-6ff38f39-1767-4657-8dd5-72bcccad481d.jpeg'),
(26, 1, 'LAND1025', 'Land for sale', 20, 1, '', 1, 0, 'Water,road', 0, 100000, 'Payyanur,ramanthali palacode', 'Kannur', 'Kerala', 9061474580, 1, 93, '2019-09-02', 0, '2019-09-02 07:00:00', 'Land/48482-d7d022e5-4970-44f3-8ede-1882b2e3ee45.jpeg'),
(27, 1, 'LAND1026', 'à´•à´£àµà´£àµ‚àµ¼ à´¬àµà´²à´¾à´¤àµà´¤àµ‚à´°à´¿àµ½ à´±àµ‹à´¡àµ à´¸àµˆà´¡àµ 42 à´¸àµ†à´¨àµà´±àµ', 42, 1, 'à´±à´¬àµà´¬àµ¼ à´¤àµ‹à´Ÿàµà´Ÿà´‚ , à´µàµ€à´Ÿà´¿à´¨àµà´‚ à´•àµƒà´·à´¿à´•àµà´•àµà´‚ à´…à´¨àµà´¯à', 0, 1, 'à´à´´àµ , à´Žà´Ÿàµà´Ÿàµ à´µàµ¼à´·à´‚ à´ªàµà´°à´¾à´¯à´®à´¾à´¯ à´±à´¬àµà´¬àµ¼ à´¤àµ‹à´Ÿàµà´Ÿà´‚ ', 0, 3700000, 'à´ªàµ†à´°à´¿à´™àµà´™à´¾à´Ÿàµà´Ÿàµ à´ªà´±à´®àµà´ªàµ , à´¬àµà´²à´¾à´¤àµà´¤àµ‚àµ¼ ', 'Kannur', 'Kerala', 9747113420, 1, 3, '2019-09-02', 0, '2019-09-02 07:00:00', ''),
(28, 1, 'LAND1027', 'Fully Furnished House for sale at Kanjirapally Town ,Kottayam,kerala', 12, 1, '', 1, 1, '', 0, 1000000, 'Kanjirapally near  town ', 'Kottayam', 'Kerala', 7306427081, 1, 102, '2019-09-03', 0, '2019-09-03 07:00:00', 'Land/18377-img-20190903-wa0009.jpg'),
(30, 1, 'LAND1029', 'à´«à´¾à´®à´¿à´¨àµ à´…à´¨àµà´¯àµ‹à´œàµà´¯à´®à´¾à´¯ 12 à´à´•àµà´•àµ¼ à´¸àµà´¥à´²à´‚ à´µà´¿à´²àµà´ªà´¨à´¯àµà´•àµ', 12, 2, '', 0, 1, 'à´‡à´²à´•àµà´Ÿàµà´°à´¿à´•àµ à´‰à´£àµà´Ÿàµ', 0, 12000000, 'à´¤à´³à´¿à´ªàµà´ªà´±à´®àµà´ª ', 'Kannur', 'Kerala', 919446786497, 1, 11, '2019-09-06', 0, '2019-09-06 07:00:00', ''),
(31, 1, 'LAND1030', 'à´µàµ€à´Ÿàµ à´Žà´Ÿàµà´•àµà´•à´¾à´¨àµà´‚ à´…à´¨àµà´¯àµ‹à´œàµà´¯à´®à´¾à´¯ à´¸àµà´¥à´²à´‚ à´µà´¿àµ½à´ªà´¨à´¯àµà´•àµà´•àµ', 10, 1, '', 1, 1, 'à´¶àµà´¦àµà´§à´®à´¾à´¯ à´¶à´¾à´¨àµà´¤à´®à´¾à´¯ à´à´°à´¿à´¯ à´®à´±àµà´±àµ†à´²àµà´²à´¾à´‚ à´•àµŠà´£àµà´Ÿàµà´‚ à´µà´³à´°àµ† à´…à´¨àµà´¯àµ‹à´œàµà´¯à´®à´¾à´¯ à´¸àµà´¥à´²à´‚', 0, 110000, 'à´šàµŠàµ¼à´•àµà´•à´³ ', 'Kannur', 'Kerala', 9995466466, 1, 64, '2019-09-06', 0, '2019-09-06 07:00:00', 'Land/10003-fa57f27f-171e-4ecc-aaf6-c7b8eb5b3fa9.jpeg'),
(32, 1, 'LAND1031', 'Edoor - Iritty  ð‡ð¨ð®ð¬ðž ðð¥ð¨ð­ ð…ð¨ð« ð’ðšð¥ðž ðšð­ Edoor  à´µàµ€à´Ÿàµ à´Žà´Ÿàµà´•àµà´•à´¾à´¨àµà´‚ à´…à´¨àµà´¯àµ‹à´œàµà´¯à´®à´¾à´¯ à´¸àµà´¥à´²à´‚ à´µà´¿', 0, 1, 'Edoor - Iritty  ð‡ð¨ð®ð¬ðž ðð¥ð¨ð­ ð…ð¨ð« ð’ðšð¥ðž ðšð­ Edoor  ', 3, 1, '10 minutes walking distance School. Edoor town . Church. Temple . All other Government offices ', 0, 65000, 'Edoor ', 'Kannur', 'Kerala', 8943829304, 1, 127, '2019-09-09', 0, '2019-09-09 07:00:00', 'Land/49021-c7782bac-a0a7-4592-93f3-f0d97e30c85c.jpeg'),
(33, 1, 'LAND1032', 'à´µàµ€à´Ÿàµ à´¨à´¿àµ¼à´®à´¾à´£à´¤àµà´¤à´¿à´¨àµ à´…à´¨àµà´¯àµ‹à´—àµà´¯à´®à´¾à´¯ 13.5 à´¸àµ†à´¨àµà´±àµ à´¸àµâ€Œà´¥à´²à´‚ à´µà´¿à´²àµà´ªà´¨à´¯àµà´•àµ', 13.5, 1, '', 0, 1, '', 0, 472500, 'à´šà´¾à´², à´ªà´¨àµà´¨àµ‹à´¨àµ‡à´°à´¿ à´•àµŠà´¸àµ‹àµ¼à´®àµ‚à´² à´±àµ‹à´¡à´¿àµ½', 'Kannur', 'Kerala', 919947622179, 1, 11, '2019-09-09', 0, '2019-09-09 07:00:00', ''),
(34, 1, 'LAND1033', '18 à´¸àµ†à´¨àµà´±àµ à´ªà´±à´®àµà´ªàµà´‚ à´ªàµà´°à´¯à´¿à´Ÿà´µàµà´‚ à´Žà´•àµà´¸àµà´šàµ‡à´žàµà´šàµà´¨àµ ', 18, 1, '', 0, 1, '', 0, 0, 'à´•à´¾à´žàµà´žà´¿à´²àµ‡à´°à´¿ ', 'Kannur', 'Kerala', 919526010236, 1, 11, '2019-09-09', 0, '2019-09-09 07:00:00', ''),
(35, 1, 'LAND1033', 'à´¨àµ†à´¯àµà´¯à´¾à´±àµà´±à´¿àµ»à´•à´° à´µàµ€à´Ÿàµ à´µà´¿à´²àµà´ªà´¨à´•àµà´•àµ ', 6, 1, '', 1, 1, 'à´¨àµ†à´¯àµà´¯à´¾à´±àµà´±à´¿àµ»à´•à´° à´¬à´¸àµà´¸àµà´±àµà´±à´¾àµ»à´¡àµ 700 à´®àµ€à´±àµà´±àµ¼ 6 à´¸àµ†à´¨àµà´±àµ à´¸àµà´¥à´²à´µàµà´‚  à´µàµ€à´Ÿàµà´‚ à´µà´¿à´²àµà´ªà´¨à´•àµà´•àµ ', 0, 74000000, 'à´¨àµ†à´¯àµà´¯à´¾à´±àµà´±à´¿àµ»à´•à´° ', 'Thiruvananthapuram', 'Kerala', 9895049185, 1, 130, '2019-09-09', 0, '2019-09-09 07:00:00', 'Land/86189-img-20190818-wa0020.jpg'),
(36, 1, 'LAND1034', '30 cent à´¸àµà´¥à´²à´µàµà´‚ à´µàµ€à´Ÿàµà´‚ à´‰à´Ÿàµ» à´µà´¿à´²àµà´ªà´¨à´¯àµà´•àµà´•àµ ', 30, 1, '', 0, 1, '', 0, 1600000, 'à´•àµŠà´¯àµà´¯à´‚ à´—à´µ: à´¹àµˆà´¸àµà´•àµ‚à´³à´¿à´¨àµ à´¸à´®àµ€à´ªà´‚ ', 'Kannur', 'Kerala', 919400570017, 1, 11, '2019-09-10', 0, '2019-09-10 07:00:00', ''),
(37, 1, 'LAND1035', '45 cent à´¤àµ†à´™àµà´™à´¿àµ» à´¤àµ‹à´Ÿàµà´Ÿà´‚ à´µà´¿à´²àµà´ªà´¨à´¯àµà´•àµà´•àµ ', 45, 1, 'à´µàµ€à´Ÿàµ à´µàµ†à´•àµà´•à´¾àµ» à´…à´¨àµà´¯àµ‹à´œàµà´¯à´®à´¾à´¯ à´¸àµà´¥à´²à´‚ ', 0, 1, '', 0, 8325000, 'à´µàµ‡à´™àµà´™à´°, à´šàµ‡à´±àµ‚à´°àµ, à´®àµà´¤àµà´•àµà´£àµà´Ÿàµ', 'Malappuram', 'Kerala', 971526641988, 1, 11, '2019-09-11', 0, '2019-09-11 07:00:00', ''),
(41, 1, 'LAND1039', '10 à´¸àµ†à´¨àµà´±àµ à´¸àµà´¥à´²à´‚ à´µà´¿àµ½à´ªàµà´ªà´¨à´•àµà´•àµ. ', 10, 1, '', 0, 1, 'à´®àµºà´µà´¿à´³ à´±àµ‡à´¡à´¿à´¯àµ‹ à´¸àµà´±àµà´±àµ‡à´·à´¨àµ à´…à´Ÿàµà´¤àµà´¤àµ à´•àµà´°à´¿à´¶àµà´¶à´Ÿà´¿ à´ªà´³àµà´³à´¿à´•àµà´•à´Ÿàµà´¤àµà´¤àµ à´¨à´¿à´¨àµà´¨àµ 100 à´®àµ€à´±àµà´±àµ¼ à´®à´¾à´±à´¿', 0, 5500000, 'à´®àµºà´µà´¿à´³', 'Thiruvananthapuram', 'Kerala', 918129603161, 1, 11, '2019-09-12', 0, '2019-09-12 07:00:00', ''),
(42, 1, 'LAND1040', '45 à´¸àµ†à´¨àµà´±àµ†àµ à´¤àµ†à´™àµà´™à´¿àµ» à´¤àµ‹à´Ÿàµà´Ÿà´‚ à´µà´¿àµ½à´ªà´¨à´•àµà´•àµ', 45, 1, 'à´µàµ€à´Ÿàµ à´µàµ†à´•àµà´•à´¾àµ» à´ªà´±àµà´±àµà´¨àµà´¨ à´¸àµà´¥à´²à´‚', 0, 1, 'à´±àµ‹à´¡àµ à´¸àµˆà´¡àµ, à´¨à´²àµà´² à´µàµ†à´³àµà´³à´®àµà´³àµà´³ à´à´°à´¿à´¯', 0, 8325000, 'à´µàµ‡à´™àµà´™à´° à´šàµ‡à´±àµ‚à´°àµ à´®àµà´¤àµà´•àµà´£àµà´Ÿàµ', 'Malappuram', 'Kerala', 971526641988, 1, 11, '2019-09-13', 0, '2019-09-13 07:00:00', 'Land/74745-0f585d6c-74cd-47c0-9fe0-b2ea253f42aa.jpeg'),
(43, 1, 'LAND1041', '*à´•à´£àµà´£àµ‚àµ¼ à´¤à´¿à´°àµ‚àµ¼ à´®à´žàµà´žà´¾à´™àµà´•à´°à´¿ à´±àµ‹à´¡àµ à´¸àµˆà´¡àµ 42 à´¸àµ†à´¨àµà´±àµ à´±à´¬àµà´¬àµ¼ à´¤àµ‹à´Ÿàµà´Ÿà´‚', 42, 1, '', 0, 1, 'à´à´´àµ , à´Žà´Ÿàµà´Ÿàµ à´µàµ¼à´·à´‚ à´ªàµà´°à´¾à´¯à´®à´¾à´¯ à´±à´¬àµà´¬àµ¼ à´®à´°à´™àµà´™àµ¾ ', 0, 70000, 'Blathur, Kannur', 'Kannur', 'Kerala', 9747113420, 1, 3, '2019-09-13', 0, '2019-09-13 07:00:00', 'Land/2854-c1dd0e54-f33a-47ef-afde-957bb2c5e53e.jpeg'),
(44, 1, 'LAND1042', 'Plain Plot - Resort / Building or any projects', 3.33, 2, '', 0, 1, 'Kannur International Airport - 11km, Mattanur Town - 6km, Irikkur Town - 6km', 0, 12654000, 'Maruthai - Irikkur road, Palad, Mattanur, Kannur', 'Kannur', 'Kerala', 9746585383, 1, 141, '2019-09-13', 0, '2019-09-13 07:00:00', 'Land/68405-1dd0c2c5-fc65-4e68-a1ae-539878ae7066.png'),
(46, 1, 'LAND1044', '3 Acres of agricultural land for sale Rs 6000/ cent.', 3, 2, 'Agricultural land, please contact me on watsap 002791876666', 3, 1, 'Rubber plantation, teak wood', 0, 6000, 'Kudiyanmala ', 'Kannur', 'Kerala', 2791876666, 1, 196, '2019-09-16', 0, '2019-09-16 07:00:00', 'Land/24523-dd43afcf-e2ea-48dd-8ec6-437b7652e0ed.jpeg'),
(47, 1, 'LAND1045', '8 à´¸àµ†à´¨àµà´±àµ† à´ªà´±à´®àµà´ªàµ à´µà´¿àµ½à´ªàµà´ªà´¨à´•àµà´•àµ', 8, 1, '', 0, 1, '', 0, 800000, 'à´ªà´´à´¯à´²àµ†à´•àµà´•à´¿à´Ÿà´¿ à´µà´¿à´²àµà´²àµ‡à´œàµ.2 à´±àµ‹à´¡à´¿àµ½', 'Palakkad', 'Kerala', 917592849450, 1, 11, '2019-09-16', 0, '2019-09-16 07:00:00', 'Land/47341-b96ed5c0-c351-4caa-a7ee-f00d03eac764.jpeg'),
(48, 1, 'LAND1046', '15 cent Land for sale', 15, 1, '', 0, 1, 'Structural completed', 0, 14000000, 'Substation, New Chokli, Panniannur road', 'Kannur', 'Kerala', 919633868479, 1, 11, '2019-09-17', 0, '2019-09-17 07:00:00', ''),
(49, 1, 'LAND1047', '5.760 cent square residential plot for sale', 5.76, 1, 'Residential', 1, 1, '@sangamam nagar enjakkal Only 200 meters from bypass (from lakshmi elatricals enjakkal by pass) posh residential area. Wide road acces See the sketch forplot detiles 15 lack per cent', 0, 8640000, 'Enjakkal', 'Thiruvananthapuram', 'Kerala', 8075074492, 1, 103, '2019-09-18', 0, '2019-09-18 07:00:00', 'Land/62967-img-20190918-wa0005.jpg'),
(50, 1, 'LAND1048', 'à´®à´²à´ªàµà´ªàµà´±à´‚ à´…à´°àµ€à´•àµà´•àµ‹à´Ÿàµ à´Ÿàµ—à´£à´¿àµ½ 50 à´¸àµ†àµ»à´±àµ à´¸àµà´¥à´²à´‚ à´µà´¿à´²àµà´ªà´¨à´¯àµà´•àµà´•àµ ', 50, 1, 'à´¨à´¿à´°à´¨àµà´¨ à´ªàµà´²àµ‹à´Ÿàµà´Ÿàµ ', 0, 1, 'à´·àµ‹à´ªàµà´ªà´¿à´‚à´—àµ à´®à´¾à´³àµ, à´“à´¡à´¿à´±àµà´±àµŠà´±à´¿à´¯à´‚, à´«àµà´²à´¾à´±àµà´±àµ à´Žà´¨àµà´¨à´¿à´µà´¯àµà´•àµà´•àµ à´…à´¨àµà´¯àµ‹à´œàµà´¯à´‚ ', 0, 80000000, 'à´…à´°àµ€à´•àµà´•àµ‹à´Ÿàµ', 'Malappuram', 'Kerala', 919567338754, 1, 11, '2019-09-20', 0, '2019-09-20 07:00:00', ''),
(51, 1, 'LAND1049', '25 Cent Land for sale', 25, 1, '', 0, 1, 'Suitable for house, Residential Area', 0, 3750000, 'Nellikkampoil, Ulikkal', 'Kannur', 'Kerala', 919744894176, 1, 11, '2019-09-20', 0, '2019-09-20 07:00:00', ''),
(52, 1, 'LAND1050', '200 Mtr from malayora highway, 50 Mtr LP school, 300mtr Cristian church', 17, 1, '', 1, 0, '', 0, 1530000, 'CHAMATHACHAL--payyavoor ulickal road ', 'Kannur', 'Kerala', 9048100582, 1, 227, '2019-09-20', 0, '2019-09-20 07:00:00', ''),
(53, 1, 'LAND1051', 'Kanjany centre thrissur land for sale.', 5, 1, 'Residential or commercial', 3, 1, 'Bus stand 100 meters away... Available supermarket and bakery stores 100 meters away too', 0, 4000000, 'Kanjany', 'Thrissur', 'Kerala', 9388442149, 1, 228, '2019-09-21', 0, '2019-09-21 07:00:00', ''),
(54, 1, 'LAND1052', '1500sq house 4 bhk 3 attached bathroom  15 cent North Paravoor Rs 60 laksh', 1500, 4, '', 1, 1, '', 0, 6000000, 'Paravoor', 'Ernakulam', 'Kerala', 9383413008, 1, 76, '2019-09-21', 0, '2019-09-21 07:00:00', 'Land/85006-psx_20190921_121150-01.jpeg'),
(56, 1, 'LAND1054', '1 aker property near kasaragod new bus stand', 1, 2, 'Plain place', 1, 1, 'All ', 0, 1500000, 'Kasaragod', 'Kasaragod', 'Kerala', 6282835528, 1, 208, '2019-09-22', 0, '2019-09-22 07:00:00', ''),
(57, 1, 'LAND1055', '30 à´¸àµ†à´¨àµà´±àµ à´¸àµà´¥à´²à´‚ à´®àµŠà´¤àµà´¤à´®à´¾à´¯àµà´‚ à´†à´µà´¶àµà´¯à´¾à´¨àµà´¸à´°à´£à´µàµà´‚ à´µà´¿à´²àµà´ªà´¨à´•àµà´•àµ', 30, 1, '', 0, 1, 'main road side', 0, 2100000, 'BLATHUR ,  KANNUR', 'Kannur', 'Kerala', 7558869774, 1, 12, '2019-09-23', 0, '2019-09-23 07:00:00', 'Land/93730-img-20190923-wa0068.jpg'),
(58, 1, 'LAND1056', 'Plot for sale at thodupuzha', 10, 1, '', 0, 1, 'suitable for house', 0, 3600000, 'kanjiramattom, Thodupuzha', 'Idukki', 'Kerala', 919074538603, 1, 11, '2019-09-23', 0, '2019-09-23 07:00:00', 'Land/6376-f7dd2949-143b-4e29-a455-3f43073e92b4.jpeg');

-- --------------------------------------------------------

--
-- Stand-in structure for view `landuserdetailsv`
-- (See below for the actual view)
--
CREATE TABLE `landuserdetailsv` (
`id` int(100)
,`forland` int(100)
,`code` varchar(100)
,`header` varchar(200)
,`plotAreaValues` float
,`plotAreaUnits` int(100)
,`plotType` varchar(100)
,`plotShape` int(100)
,`roadAccess` int(100)
,`otherFacilities` varchar(1000)
,`minrate` bigint(20)
,`maxrate` bigint(20)
,`location` varchar(300)
,`district` varchar(200)
,`state` varchar(200)
,`mobile` bigint(100)
,`status` int(11)
,`fkUserId` int(100)
,`postDate` date
,`isBlocked` int(11)
,`date` timestamp
,`img` varchar(300)
,`UserID` int(100)
,`name` varchar(500)
,`address` varchar(2000)
,`email` varchar(500)
,`Usermob` bigint(100)
,`userType` int(100)
,`fromDate` date
,`toDate` date
,`userDistId` varchar(200)
,`userStateId` varchar(200)
,`fkCountry` int(100)
,`userBlocked` int(50)
,`isExist` int(11)
,`isValid` int(100)
,`isPremier` int(11)
,`userimg` varchar(500)
,`fkPremierID` int(11)
,`NoofAds` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `fkCustId` int(255) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `isExist` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `fkCustId`, `username`, `password`, `isExist`) VALUES
(1, 0, 'globaladmin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 1, 'jobadmin', '21232f297a57a5a743894a0e4a801fc3', 1),
(3, 2, 'adadmin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(255) NOT NULL,
  `fkBatchId` int(255) NOT NULL,
  `fkProId` int(255) NOT NULL,
  `qty` double NOT NULL,
  `mrp` float NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `fkBatchId`, `fkProId`, `qty`, `mrp`, `total`) VALUES
(1, 1, 10, 1, 129, 129);

-- --------------------------------------------------------

--
-- Table structure for table `premium`
--

CREATE TABLE `premium` (
  `id` int(11) NOT NULL,
  `category` varchar(200) NOT NULL,
  `amt` bigint(20) NOT NULL,
  `des1` varchar(500) NOT NULL,
  `des2` varchar(500) NOT NULL,
  `des3` varchar(500) NOT NULL,
  `isExist` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `premium`
--

INSERT INTO `premium` (`id`, `category`, `amt`, `des1`, `des2`, `des3`, `isExist`) VALUES
(1, 'ENTERPRISE', 600, 'Unlimited Ads', '1 Year Validity', 'Unlimited Images', 1),
(2, 'PROFESSIONAL', 350, 'Unlimited Ads', '6 Months Validity', 'Unlimited Images', 1),
(3, 'STANDARD', 200, 'Unlimited Ads', '3 Months Validity', 'Unlimited Images', 1),
(4, 'BASIC', 80, 'Unlimited Ads', '1 Month Validity', 'Unlimited Images', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `fkUserId` int(100) NOT NULL,
  `header` varchar(500) NOT NULL,
  `img` varchar(500) NOT NULL,
  `postDate` date NOT NULL,
  `company` varchar(200) NOT NULL,
  `model` varchar(500) NOT NULL,
  `expiry` date NOT NULL,
  `otherDesc` varchar(1000) NOT NULL,
  `rate` bigint(100) NOT NULL,
  `status` int(100) NOT NULL,
  `location` varchar(300) NOT NULL,
  `mobile` bigint(100) NOT NULL,
  `district` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `fkCountry` int(100) NOT NULL,
  `isBlocked` int(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `fkUserId`, `header`, `img`, `postDate`, `company`, `model`, `expiry`, `otherDesc`, `rate`, `status`, `location`, `mobile`, `district`, `state`, `fkCountry`, `isBlocked`, `date`) VALUES
(8, 'PROD1002', 3, 'Myhra Cotton Dress Material - COD', 'Products/25308-e5e0015f-5a95-48cf-8bb8-98096212d424.jpeg', '2019-08-29', 'Myhra', 'Ladies', '2029-08-29', 'Cash on delivery available in India.. Easy returns available in case of any issues..  Top : Cotton +Embroidered (2.5mtr).. Bottom : Cotton + Solid (2 mtr).. Dupatta : Chiffon + Printed (2.25mtr).. Unstiched type..', 775, 1, 'Thrissur ', 9746258501, 'Thrissur', 'Kerala', 1, 1, '2019-08-29 06:18:04'),
(11, 'PROD1005', 39, 'Forever Bright Toothgel', 'Products/61685-forever-bright-toothgel.jpg', '2019-08-31', 'Forever Living Products', 'TEETH CARE PRODUCTS', '2020-08-31', ' Forever Brightâ„¢ Toothgel  Aloe Vera has long been treasured for its quality and versatility - including dental care. Your teeth will gleam with Forever Brightâ„¢, one of the best toothgels on the market.  Formulated for the entire family to use, Forever Brightâ„¢ contains only the highest quality ingredients. Natural peppermint and spearmint flavorings leave your mouth feeling fresh and clean.    Contains bee propolis     Formulated for the entire family     Does not contain fluoride', 514, 1, 'Kozhikode', 9946224374, 'Kozhikode', 'Kerala', 1, 1, '2019-08-31 12:16:17'),
(12, 'PROD1006', 39, 'Forever Aloe Lipsâ„¢ with Jojoba', 'Products/99384-forever-living-aloe-lips-sdl566130505-1-0c2f6.jpg', '2019-08-31', 'Forever Living ', 'Lips Care Products', '2020-08-31', ' Forever Aloe Lipsâ„¢ soothes, smoothes and moisturizes chapped and dry lips  The soothing properties of Aloe Vera are ideally suited to care for your lips. Aloe, jojoba and beeswax combine to create the finest all-season lip product on the market today. ', 195, 1, 'Online ', 9946224374, 'Kozhikode', 'Kerala', 1, 1, '2019-08-31 12:33:24'),
(13, 'PROD1007', 39, 'Forever Aloe Vera GelÂ®', 'Products/81955-aloe-vera-gel.jpg', '2019-08-31', 'FOREVER', 'Health Drink', '2020-08-31', 'Our Forever Aloe Vera GelÂ® is as close to the real thing as you can get! The first to receive certification by the International Aloe Science Council (IASC) for purity and potency, this nutrient rich drink is made from pure inner leaf gel and is sugar free, gluten free and contains no added preservatives.  Revered for centuries, aloe is known for its scientifically proven benefits for soothing, cooling and moisturizing the skin. But this powerful plant, with its unique polysaccharides and nutrient profile is also incredibly beneficial when ingested.', 1451, 1, 'KOZHIKODE', 9946224374, 'Kozhikode', 'Kerala', 1, 1, '2019-08-31 12:57:33'),
(14, 'PROD1008', 39, 'Forever Bee Honeyâ„¢', 'Products/44618-honey.png', '2019-08-31', 'FOREVER', 'HEALTH DRINK', '2020-08-31', ' This great-tasting, all natural sweetener is loaded with natureâ€™s goodness.  Throughout the ages, honey has been recognized as a premium natural food â€“ a storehouse of energy that is easily digestible. This great-tasting, all natural sweetener is loaded with natureâ€™s goodness. ', 1403, 1, 'KOZHIKODE', 9946224374, 'Kozhikode', 'Kerala', 1, 1, '2019-08-31 13:07:11'),
(15, 'PROD1009', 39, 'Forever Royal Jellyâ„¢', 'Products/93009-royal-jelly.png', '2019-08-31', 'FOREVER', 'HEALTH DRINK', '2020-08-31', ' Royal Jelly is a substance derived from the pharyngeal glands of the honey bee and can help support the immune system, increase energy and benefit the skin and hair.  Royal Jelly is a substance derived from the pharyngeal glands of the honey bee. This â€œsuper foodâ€ of the bees is specially blended with enzymes and fed to each bee destined to become a queen. ', 2140, 1, 'KOZHIKODE', 9946224374, 'Kozhikode', 'Kerala', 1, 1, '2019-08-31 13:12:07'),
(16, 'PROD1009', 3, 'Good Quality Curtains Rs.200 Only', 'Products/29266-ec200230-7921-410e-a795-7969fd166db2.jpeg', '2019-08-31', 'House Curtains & Blinds', 'Polyester', '2030-11-30', 'Only Rs 200 per running feet. Rate including 1\"aluminium rod, brackets, end finials, polyester material cloth and installation. Different colours available.', 200, 1, 'Kottayam ', 7907943286, 'Kottayam', 'Kerala', 1, 1, '2019-08-31 13:13:16'),
(17, 'PROD1010', 39, 'Arctic-Sea (Super Omega 3)', 'Products/40444-arctic-sea.png', '2019-08-31', 'FOREVER', 'NUTRITION PRODUCTS', '2020-08-31', ' Nutritional supplement based on vitamin E , fish oil and olive oil .  A superior nutritional supplement combining Omega-3 with Omega-9. It provides a safe and balanced supplement that can favorably support healthy blood cholesterol, triglyceride levels, mobility and optimal joint function. ', 1981, 1, 'KOZHIKODE', 9946224374, 'Kozhikode', 'Kerala', 1, 1, '2019-08-31 13:33:38'),
(18, 'PROD1011', 39, 'Vitâ™‚lizeâ„¢ Men\'s ', 'Products/97828-vitâ™‚lizeâ„¢-men\'s.png', '2019-08-31', 'FOREVER', 'NUTRITION PRODUCTS', '2020-08-31', ' Vitâ™‚lizeâ„¢, combined with a healthy diet and exercise, offers a natural solution to support prostate health and men\'s vitality.  This unique, comprehensive formulation supplies a highly effective blend of potent herbs, vitamins, minerals, and antioxidants to help maintain normal urinary flow, promote healthy testicular function, and encourage optimal prostate health. ', 2285, 1, 'KOZHIKODE', 9946224374, 'Kozhikode', 'Kerala', 1, 1, '2019-08-31 13:40:15'),
(19, 'PROD1011', 3, 'Stylish Menâ€™s Leather Wallets 299 Only ', 'Products/5419-2eb13779-74d3-404d-9bf6-55a500e58227.jpeg', '2019-08-31', 'Woodland', 'Menâ€™s Wallets ', '2030-08-31', 'Material: Artificial Leather, Size : (L X H) - 3.9 in X 5.0 in, Compartments: 1, Description: It Has 1 Piece Of Men\'s Wallet Pattern: Solid, Dispatch: 2 â€“ 3 Days, Easy Returns Available in Case Of Any Issue.', 299, 1, 'Kannur ', 8590109996, 'Kannur', 'Kerala', 1, 1, '2019-08-31 13:41:25'),
(20, 'PROD1012', 39, 'Forever ARGI+Â® Stick Packets ', 'Products/64260-forever-argi+Â®-stick-packets.png', '2019-08-31', 'FOREVER', 'NUTRITION PRODUCTS', '2020-08-31', ' ARGI+Â® provides all the power of L-Arginine, plus pomegranate.  L-Arginine is a potent amino acid that helps to support what scientists refer to as the â€œMiracle Moleculeâ€ - nitric oxide. L-Arginine is converted into nitric oxide in the body, to help support circulation. ', 5796, 1, 'KOZHIKODE', 9946224374, 'Kozhikode', 'Kerala', 1, 1, '2019-08-31 13:44:45'),
(21, 'PROD1012', 3, 'Menâ€™ Wallets only Rs. 299', 'Products/49542-1f05d578-1350-441f-93be-0fdc34e160d5.jpeg', '2019-08-31', 'BMW', 'Menâ€™s wallet ', '2030-08-31', 'Material: Artificial Leather, Size : (L X H) - 3.9 in X 5.0 in, Compartments: 1, Description: It Has 1 Piece Of Men\'s Wallet Pattern: Solid, Dispatch: 2 â€“ 3 Days, Easy Returns Available in Case Of Any Issue.', 299, 1, 'Kannur', 8590109996, 'Kannur', 'Kerala', 1, 1, '2019-08-31 13:45:56'),
(22, 'PROD1013', 3, 'Puma Menâ€™s Lether Wallets Rs.299', 'Products/95633-7a2464c8-345c-4fb0-b732-8455577a495e.jpeg', '2019-08-31', 'Puma', 'Menâ€™s Wallet', '2030-08-31', 'Material: Artificial Leather, Size : (L X H) - 3.9 in X 5.0 in, Compartments: 1, Description: It Has 1 Piece Of Men\'s Wallet Pattern: Solid, Dispatch: 2 â€“ 3 Days, Easy Returns Available in Case Of Any Issue.', 299, 1, 'Kannur ', 8590109996, 'Alappuzha', 'Kerala', 1, 1, '2019-08-31 13:48:42'),
(23, 'PROD1013', 39, 'FOREVER SKIN CARE PRODUCTS', 'Products/46159-skin-care.jpg', '2019-08-31', 'FOREVER', 'SKIN CARE', '2020-08-31', ' Aloe Propolis Creme - Forever Aloe ScrubÂ®  - Avocado Face & Body Soap          ', 2300, 1, 'KOZHIKODE', 9946224374, 'Kozhikode', 'Kerala', 1, 1, '2019-08-31 13:53:29'),
(24, 'PROD1014', 3, 'Cotton Saree with Embroidery - 650 Only', 'Products/25200-265da031-9015-499e-9ec7-e73d37e84050.jpeg', '2019-08-31', 'SANA', 'Cotton Saree', '2030-12-01', '', 650, 1, 'Thammanam, Ernakulam ', 8606349295, 'Ernakulam', 'Kerala', 1, 1, '2019-08-31 20:57:53'),
(25, 'PROD1015', 122, 'Soft drinks', 'Products/25909-img_20190903_214646.jpg', '2019-09-08', 'Befresh fizzy drinks', 'Kottakkal', '0000-00-00', 'For marketing and destribution', 10, 1, 'Kottakkal', 9744507035, 'Malappuram', 'Kerala', 1, 1, '2019-09-08 05:10:20'),
(26, 'PROD1016', 185, ' PICKLES', 'Products/30207-2019-03-30-21-05-13-769~2.jpg', '2019-09-16', 'HOMEMADE ', 'New', '2019-09-16', 'No preservatives added,', 30, 1, 'Pedena,nhekly.po', 9446737301, 'Kannur', 'Kerala', 1, 1, '2019-09-16 17:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `prouserdetailsv`
--
-- Error reading structure for table directdeal.prouserdetailsv: #1356 - View 'directdeal.prouserdetailsv' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them
-- Error reading data for table directdeal.prouserdetailsv: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM `directdeal`.`prouserdetailsv`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `residential`
--

CREATE TABLE `residential` (
  `id` int(100) NOT NULL,
  `forresi` int(100) NOT NULL,
  `header` varchar(200) NOT NULL,
  `code` varchar(100) NOT NULL,
  `resType` varchar(200) NOT NULL,
  `postDate` date NOT NULL,
  `img` varchar(500) NOT NULL,
  `houseAreaValue` float NOT NULL,
  `houseAreaUnit` int(11) NOT NULL,
  `landAreaValue` float NOT NULL,
  `landAreaUnit` int(100) NOT NULL,
  `numberOfFloor` int(100) NOT NULL,
  `numberOfBedRooms` int(100) NOT NULL,
  `Kitchen` varchar(100) NOT NULL,
  `workArea` varchar(100) NOT NULL,
  `Hall` varchar(100) NOT NULL,
  `Balcony` varchar(100) NOT NULL,
  `furnished` varchar(100) NOT NULL,
  `flooring` varchar(100) NOT NULL,
  `RoadAccess` int(100) NOT NULL,
  `otherFacilities` varchar(2000) NOT NULL,
  `minrate` bigint(20) NOT NULL,
  `maxrate` bigint(20) NOT NULL,
  `location` varchar(500) NOT NULL,
  `mobile` bigint(100) NOT NULL,
  `district` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `fkUserId` int(100) NOT NULL,
  `isBlocked` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fkCountryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `residential`
--

INSERT INTO `residential` (`id`, `forresi`, `header`, `code`, `resType`, `postDate`, `img`, `houseAreaValue`, `houseAreaUnit`, `landAreaValue`, `landAreaUnit`, `numberOfFloor`, `numberOfBedRooms`, `Kitchen`, `workArea`, `Hall`, `Balcony`, `furnished`, `flooring`, `RoadAccess`, `otherFacilities`, `minrate`, `maxrate`, `location`, `mobile`, `district`, `state`, `status`, `fkUserId`, `isBlocked`, `date`, `fkCountryId`) VALUES
(2, 1, '2000 sq.ft. House & 4.5 Cent Plot @ Cochin', 'RESI1002', 'House', '2019-08-07', 'Residential/13198-67217761_412890496100934_4608133053976412160_n.jpg', 2000, 4, 4, 1, 2, 4, 'Yes', '', 'Yes', '', 'Semi Furnished', '', 1, 'Well and pipe water & One car parking,600 meter from bus stop.  200 meter from cust.  1 km from Trikkakara temple.  4 km from edappally lulu. ', 0, 10500000, 'Cochin', 919995553002, 'Ernakulam', 'Kerala', 1, 3, 0, '2019-08-07 07:00:00', 1),
(3, 1, 'House For sale (kangarapady) at Cochin', 'RESI1003', 'House', '2019-08-07', 'Residential/54770-67122020_413471022709548_1028875139632070656_n.jpg', 1700, 4, 4, 1, 2, 3, 'Yes', '', 'Yes', '', 'Semi Furnished', '', 1, '500 meter from bus stop.  3.5 km from airport seaport road.  7 km from edappally lulu.  7 km from infopark Kakkanad.', 0, 6800000, 'Kangarappady, Cochin', 919995553002, 'Ernakulam', 'Kerala', 1, 3, 0, '2019-08-07 07:00:00', 1),
(4, 1, '2500 Sqft. House For Sale at Thalassery', 'RESI1004', 'House', '2019-08-07', 'Residential/1925-67544147_413523302704320_8729204464260481024_n.jpg', 2500, 4, 7, 1, 2, 0, 'Yes', '', 'Yes', '', '', '', 1, '', 0, 6500000, 'Kathiroor-Thalassery Road', 919847186844, 'Kannur', 'Kerala', 1, 3, 0, '2019-08-07 07:00:00', 1),
(5, 1, '1420 sqft. For sale at Cochin (kuzhivelipady)', 'RESI1005', 'House', '2019-08-07', 'Residential/67617-67389608_413897299333587_5845481563944386560_n.jpg', 1420, 4, 3, 1, 2, 3, 'Yes', '', 'Yes', '', 'Semi Furnished', '', 1, 'One car parking.  600 meter from bus stop.  6 km from airport.  8 km from edappally.  8 km from infopark Kakkanad. ', 0, 5000000, 'Kuzhivelipady, Cochin', 919995553002, 'Kannur', 'Kerala', 1, 3, 0, '2019-08-07 07:00:00', 1),
(6, 1, 'NH. 17 à´•à´°à´¿à´µàµ†à´³àµà´³àµ‚à´°à´¿àµ½ à´¨à´¿à´¨àµà´¨àµà´‚ 4 km à´ªà´°à´¿à´§à´¿à´¯à´¿àµ½ à´µàµ€à´Ÿàµà´‚ à´¸àµà´¥à´µàµà´‚ à´µà´¿àµ½à´ªàµà´ªà´¨à´¯àµà´•àµà´•àµ ', 'RESI1006', 'House', '2019-08-07', 'Residential/83798-66951946_413928409330476_5795748900673421312_n.jpg', 1000, 4, 34, 1, 1, 0, '', '', '', '', '', '', 1, 'à´µàµ€à´Ÿàµ à´•à´¿à´£àµ¼ ,à´¤àµŠà´´àµà´¤àµà´¤àµ, à´•àµà´´àµ½à´•à´¿à´£àµ¼, à´±àµ‹à´¡àµ, 600m from School.', 0, 3200000, 'Karivellur', 919744174499, 'Kannur', 'Kerala', 1, 3, 0, '2019-08-07 07:00:00', 1),
(7, 1, '2100sqft house for sale at Vengola', 'RESI1007', 'House', '2019-08-07', 'Residential/8255-67385580_414001212656529_466874176414679040_n.jpg', 2100, 4, 20, 1, 0, 0, 'Yes', '', 'Yes', '', '', '', 1, '', 0, 6800000, 'Vengola, Perumbavoor', 966507848076, 'Kannur', 'Kerala', 1, 3, 0, '2019-08-07 07:00:00', 1),
(8, 1, 'House for sale @ Cochin (Manjummal)', 'RESI1008', 'House', '2019-08-07', 'Residential/94062-67118052_414412922615358_899864509722656768_n.jpg', 2000, 4, 5, 1, 2, 4, 'Yes', '', 'Yes', '', 'Semi Furnished', '', 1, '2 car parking.  Semi furnished.  Well and pipe water.  300 meter from container road.  600 meter from bus stop . ', 0, 7800000, 'Manjummal, Cochin', 919995553002, 'Ernakulam', 'Kerala', 1, 3, 0, '2019-08-07 07:00:00', 1),
(9, 1, 'à´µàµ€à´Ÿàµà´‚ 40 cent à´¸àµà´¥à´²à´µàµà´‚ 45 lakhs', 'RESI1009', 'House', '2019-08-07', 'Residential/45411-67186839_414487069274610_4979362874259406848_n.jpg', 900, 4, 40, 1, 1, 0, '', '', '', '', '', '', 1, 'à´•àµŠà´Ÿàµà´™àµà´™àµ‚à´°à´¿àµ½ à´¨à´¿à´¨àµà´¨àµà´‚ 2.5 km (NH 183 àµ½ 15 à´†à´‚ à´®àµˆà´²à´¿àµ½ à´¨à´¿à´¨àµà´¨àµà´‚( 2 km) à´®à´¾à´±à´¿, à´•àµà´±àµà´‚à´•àµà´Ÿà´¿à´¯à´¿àµ½. à´µà´±àµà´±à´¾à´¤àµà´¤ à´µàµ†à´³àµà´³à´‚ 2 à´•à´¿à´£àµ¼ , ,  à´ªà´žàµà´šà´¾à´¯à´¤àµà´¤àµ à´±àµ‹à´¡àµ à´µàµ€à´Ÿà´¿à´¨àµ à´®àµàµ»à´ªà´¿àµ½ à´•àµ‚à´Ÿà´¿ à´•à´Ÿà´¨àµà´¨àµ à´ªàµ‹à´•àµà´¨àµà´¨àµ , ', 0, 4500000, 'Kurumkudi, Kodungur', 919544909055, 'Kottayam', 'Kerala', 1, 3, 0, '2019-08-07 07:00:00', 1),
(10, 1, '1500 sq.Ft house for sale at Irikkur', 'RESI1010', 'House', '2019-08-07', 'Residential/84126-67217005_414514602605190_7179132251530067968_n.jpg', 1500, 4, 10, 1, 1, 3, 'Yes', '', 'Yes', '', 'Not Furnished', '', 1, '', 0, 2900000, 'Nr. vayakkankod pisay Masjid, Irikkur', 918606258100, 'Kannur', 'Kerala', 1, 3, 0, '2019-08-07 07:00:00', 1),
(11, 1, 'House For sale at Cochin (Kangarapady )', 'RESI1011', 'House', '2019-08-07', 'Residential/89209-67278066_414894142567236_4905067400396800_n.jpg', 1600, 4, 4, 1, 2, 3, 'Yes', '', 'Yes', '', 'Semi Furnished', '', 1, 'well and pipe water.  Semi furnished.  500 meter from bus stop. ', 0, 6500000, 'Kangarapady, Cochin', 919995553002, 'Ernakulam', 'Kerala', 1, 3, 0, '2019-08-07 07:00:00', 1),
(12, 1, 'House For sale at Cochin ( Vennala)', 'RESI1012', 'House', '2019-08-07', 'Residential/71958-67415197_415907642465886_1723470960276799488_n.jpg', 3800, 4, 8, 1, 0, 5, 'Yes', '', 'Yes', '', 'Semi Furnished', '', 1, 'Well and pipe water.  Semi furnished.  4 car parking.  Good residential area.  200 meter from bus stop. ', 0, 27500000, 'Vennala, Cochin', 919995553002, 'Ernakulam', 'Kerala', 1, 3, 0, '2019-08-07 07:00:00', 1),
(13, 1, 'House for For sale @ Cochin (nilampathinjimugal )', 'RESI1013', 'House', '2019-08-07', 'Residential/24038-67503904_416372819086035_4403354360537415680_n-(1).jpg', 1270, 4, 3, 1, 0, 3, 'Yes', '', 'Yes', '', 'Semi Furnished', '', 1, 'One car parking.  500 meter from infopark Kakkanad.', 0, 7000000, 'Nilampathinjimugal, Cochin', 919995553002, 'Ernakulam', 'Kerala', 1, 3, 0, '2019-08-07 07:00:00', 1),
(14, 2, 'Apartment for rent, near Ambalappuzha town.', 'RESI1014', 'Flat', '2019-08-08', 'Residential/45389-68420733_421249035265080_1011779327253020672_n.jpg', 400, 4, 0, 1, 2, 0, 'Yes', '', 'Yes', '', '', '', 1, 'highway side. just 3km from vandanam medical collage. neat and peaceful atmosphere.', 0, 0, 'Ambalappuzha town', 919656559737, 'Alappuzha', 'Kerala', 1, 3, 0, '2019-08-08 07:00:00', 1),
(15, 1, 'à´‡à´°àµà´¨à´¿à´² à´µàµ€à´Ÿàµ à´µà´¿à´²àµà´ªà´¨à´¯àµà´•àµà´•àµ, à´•à´£àµà´£à´¾à´Ÿà´¿à´ªàµà´ªà´±à´®àµà´ªàµ', 'RESI1015', 'House', '2019-08-08', 'Residential/77148-67289770_416413429081974_4926989196943425536_n.jpg', 2800, 4, 11, 1, 2147483647, 5, 'Yes', '', 'Yes', '', 'Semi Furnished', '', 1, 'à´•à´¾àµ¼à´ªàµ‹àµ¼à´šàµà´šàµ, à´²à´¿à´µà´¿à´™àµà´™àµà´±àµ‚à´‚, à´¸àµ†àµ»àµà´±àµ¼ à´¹à´¾àµ¾ à´•à´¿à´£àµ¼ à´Žà´²àµà´²à´¾ à´¸àµ—à´•à´°àµà´¯à´¤àµà´¤àµ‹à´Ÿàµà´‚ à´•àµà´Ÿà´¿à´¯ à´‡à´°àµà´¨à´¿à´² à´µàµ€à´Ÿàµ à´¤à´¾àµ¼à´±àµ‹à´¡àµ à´¸àµˆà´¡àµ ', 0, 5800000, 'Kannadipparamba', 919747576749, 'Kannur', 'Kerala', 1, 3, 0, '2019-08-08 07:00:00', 1),
(16, 1, 'à´µàµ€à´Ÿàµà´‚ à´¸àµà´¥à´²à´µàµà´‚ à´µà´¿àµ½à´ªàµà´ªà´¨à´•àµà´•àµ, Kannur', 'RESI1016', 'House', '2019-08-08', 'Residential/4161-67638676_417368802319770_5049640814238498816_n.jpg', 1500, 4, 8, 1, 2, 0, 'Yes', '', 'Yes', '', 'Fully Furnished', '', 1, '', 0, 6400000, 'Kunhimangalm, Koyappara', 918129491440, 'Kannur', 'Kerala', 1, 3, 0, '2019-08-08 07:00:00', 1),
(17, 1, 'à´ªà´¾à´²à´•àµà´•à´¾à´Ÿàµâ€Œ à´œà´¿à´²àµà´²à´¯à´¿àµ½ à´°à´£àµà´Ÿàµ à´¨à´¿à´² à´µàµ€à´Ÿàµ', 'RESI1017', 'House', '2019-08-08', 'Residential/92720-67346267_417398068983510_5156876252014968832_n.jpg', 1350, 4, 6, 1, 2, 3, 'Yes', '', 'Yes', '', 'Fully Furnished', '', 1, '3 à´¬àµ†à´¡àµâ€Œà´±àµ‚à´‚ 2à´¬à´¾à´¤àµà´¤àµ à´±àµ‚à´‚* (à´…à´±àµà´±à´¾à´šàµà´¡àµ) 1à´•àµ‹à´®àµà´®àµº, à´¸à´¿à´‚à´—à´¿àµ¾ à´«àµ‡à´¸àµ à´•à´£à´•àµà´·àµ», à´µà´¾à´Ÿàµà´Ÿàµ¼ à´¸à´ªàµà´²àµˆ à´•à´¿à´£àµ¼, bus route , bus stop front, 400 à´®àµ€à´±àµà´±àµ¼ à´®à´¾à´±à´¿ à´ªà´³àµà´³à´¿,  400 à´®àµ€à´±àµà´±àµ¼ à´®à´¾à´±à´¿ à´…à´®àµà´ªà´²à´‚, 5à´µàµ¼à´·à´‚ à´®àµàµ»à´ªàµ à´ªà´£à´¿ à´•à´´à´¿à´ªà´¿à´šàµà´š à´µàµ€à´Ÿàµ, 2 à´•à´¿à´²àµ‹à´®àµ€à´±àµà´±àµ¼ à´šàµà´±àµà´±à´³à´µà´¿àµ½ à´¹àµ‹à´¸àµà´ªà´¿à´±àµà´±àµ½ à´¸àµà´•àµ‚àµ¾ à´•àµ‹à´³àµ‡à´œàµ à´¤àµà´Ÿà´™àµà´™à´¿à´¯ à´¸àµà´µà´•à´°àµà´¯à´™àµà´™àµ¾ à´²à´­àµà´¯à´®à´¾à´£àµ ', 0, 3000000, 'Mankurissy-Kallur Road', 918113941373, 'Palakkad', 'Kerala', 1, 3, 0, '2019-08-08 07:00:00', 1),
(18, 1, 'à´®à´Ÿàµà´Ÿà´¨àµà´¨àµ‚àµ¼ à´¨à´¾à´²à´¾à´™àµà´•àµ‡à´°à´¿à´¯à´¿àµ½ à´µàµ€à´Ÿàµ à´µà´¿àµ½à´ªàµà´ªà´¨à´•àµà´•àµ', 'RESI1018', 'House', '2019-08-08', 'Residential/50836-67618656_418250995564884_1827270205173137408_n.jpg', 2500, 4, 13, 1, 2, 3, 'Yes', '', 'Yes', '', 'Fully Furnished', '', 1, '', 0, 7300000, 'Nalankeri, Mattannur', 919446833547, 'Kannur', 'Kerala', 1, 3, 0, '2019-08-08 07:00:00', 1),
(19, 1, 'House with 42 cents of land for sale', 'RESI1019', 'House', '2019-08-08', 'Residential/84180-67429532_418321412224509_43576806904692736_n.jpg', 1500, 4, 42, 1, 2, 0, 'Yes', '', 'Yes', '', 'Fully Furnished', '', 0, 'à´šà´ªàµà´ªà´¾à´°à´ªàµà´ªà´Ÿà´µàµ à´Ÿàµ—à´£à´¿àµ½ à´¨à´¿à´¨àµà´¨àµà´‚ 2à´•à´¿à´²àµ‹ à´®àµ€à´±àµà´±àµ¼ à´…à´Ÿàµà´¤àµà´¤àµ', 0, 4500000, 'Chapparappadavu, Talipparamba', 919747727170, 'Kannur', 'Kerala', 1, 3, 0, '2019-08-08 07:00:00', 1),
(20, 1, 'à´•à´£àµà´£àµ‚àµ¼ à´šà´•àµà´•à´°à´•àµà´•à´²àµà´²à´¿àµ½ 2 à´¬àµ†à´¡àµ à´±àµ‚à´‚ à´µàµ€à´Ÿàµ à´µà´¿àµ½à´ªàµà´ªà´¨à´•àµà´•àµ', 'RESI1020', 'House', '2019-08-08', 'Residential/3520-67933059_418741435515840_1242570812242788352_n.jpg', 1000, 4, 3, 1, 2, 2, 'Yes', '', 'Yes', '', 'Fully Furnished', '', 1, '', 0, 2800000, 'Chakkarakkal', 919744363780, 'Kannur', 'Kerala', 1, 3, 0, '2019-08-08 07:00:00', 1),
(21, 1, 'House For sale at Cochin. (Pukattupady)', 'RESI1021', 'House', '2019-08-08', 'Residential/37491-68452098_418798802176770_7445195219135365120_n.jpg', 1450, 4, 3, 1, 2, 3, 'Yes', '', 'Yes', '', 'Semi Furnished', '', 1, 'Well and pipe water.  One car parking.  Semi furnished.  900 meter from bus stop.  4 km from pukattupady.  10 km from aluva. ', 0, 4200000, 'Pukattupady, Cochin', 919995553002, 'Ernakulam', 'Kerala', 1, 3, 0, '2019-08-08 07:00:00', 1),
(22, 1, 'House For sale at Cochin ( panchayath jn.)', 'RESI1022', 'House', '2019-08-08', 'Residential/22798-67904679_419294772127173_6864979209421324288_n.jpg', 1600, 4, 4, 1, 2, 3, 'Yes', '', 'Yes', '', '', '', 1, 'two car parking.  Well and pipe water.  Semi furnished.  200 meter from bus.  7.5 km from infopark Kakkanad.  5 km from airport seaport road.  9 km from edappally lulu. ', 0, 7000000, 'Panchayath jn., Cochin', 919995553002, 'Ernakulam', 'Kerala', 1, 3, 0, '2019-08-08 07:00:00', 1),
(23, 1, '4 à´¬àµ†à´¡àµâ€Œà´±àµ‚à´‚ à´µàµ€à´Ÿàµà´‚ 20 à´¸àµ†à´¨àµà´±àµ à´¸àµà´¥à´²à´µàµà´‚ à´µà´¿àµ½à´ªàµà´ªà´¨à´•àµà´•àµ ', 'RESI1023', 'House', '2019-08-08', 'Residential/97826-67561472_419303102126340_2782776973993181184_n.jpg', 1500, 4, 20, 1, 2, 4, 'Yes', '', 'Yes', '', 'Fully Furnished', '', 1, 'à´ªà´¿à´²à´¾à´¤àµà´¤à´± à´Ÿàµ—à´£à´¿àµ½ à´¨à´¿à´¨àµà´¨àµà´‚ 4 à´•à´¿à´²àµ‹à´®àµ€à´±àµà´±àµ¼ , PWD à´±àµ‹à´¡àµ', 0, 4600000, 'Pilathara', 919048022342, 'Kannur', 'Kerala', 1, 3, 0, '2019-08-08 07:00:00', 1),
(24, 1, 'House for sale at Cochin . (Pukattupady) ', 'RESI1024', 'House', '2019-08-08', 'Residential/34337-67959933_419342795455704_841473411426287616_n.jpg', 1300, 4, 3, 1, 2, 3, 'Yes', '', 'Yes', '', 'Semi Furnished', '', 1, 'Well and pipe water.  One car parking.  Semi furnished.  900 meter from bus stop.  4 km from pukattupady. 10 km from aluva.', 0, 3900000, 'Pukattupady, Cochin', 919995553002, 'Ernakulam', 'Kerala', 1, 3, 0, '2019-08-08 07:00:00', 1),
(25, 1, 'à´†à´¯à´¿à´ªàµà´ªàµà´´ à´µàµ€à´Ÿàµ à´µà´¿àµ½à´•àµà´•à´¾à´¨àµà´£àµà´Ÿàµ ', 'RESI1025', 'House', '2019-08-17', 'Residential/21301-66669289_405768563479794_4918129671549222912_n.jpg', 1600, 4, 11, 1, 1, 3, 'Yes', '0', 'Yes', 'No', 'Fully Furnished', '0', 1, '', 0, 4500000, 'AYIPUZHA NEAR MARAMMILL', 917560932891, 'Kannur', 'Kerala', 1, 9, 0, '2019-08-17 07:00:00', 1),
(26, 1, 'à´¤àµƒà´¶àµà´¶àµ‚à´°à´¿àµ½  à´µàµ€à´Ÿàµà´‚ 6 à´¸àµ†à´¨àµà´±àµ à´¸àµà´¥à´²à´µàµà´‚ à´µà´¿àµ½à´ªàµà´ªà´¨à´•àµà´•àµ', 'RESI1026', 'House', '2019-08-18', 'Residential/92516-68703889_426183058105011_4763420551500791808_n.jpg', 2200, 4, 6, 1, 2, 0, 'Yes', '0', 'Yes', 'Yes', 'Fully Furnished', '0', 1, '', 0, 6000000, 'à´¤àµƒà´¶àµà´¶àµ‚àµ¼ à´’à´±àµà´±à´ªàµà´ªà´¿à´²à´¾à´µàµ à´¹àµˆà´µàµ‡ à´œà´‚à´—à´·àµ» 600 à´®àµ€à´±àµà´±àµ¼', 917559051127, 'Kannur', 'Kerala', 1, 9, 0, '2019-08-18 07:00:00', 1),
(27, 1, 'House for sale at  Trivandrum', 'RESI1027', 'House', '2019-08-19', 'Residential/95157-69235650_426513404738643_1728273837520322560_n.jpg', 1400, 4, 7, 1, 2, 3, 'Yes', '0', 'Yes', 'Yes', 'Fully Furnished', '0', 1, 'Great parking space  Village atmosphere 450 feet Borewell  Well recharging  Garden area  3layer safety tank Waste water tank  Gm brand electrical items  For plumbing Finolex pipe  Somany tiles for floor  Premium interlock 1200 sqf Premium bathrooms fittings ', 0, 9500000, 'Trivandrum,1km from Parasala bus stand ', 919947477796, 'Thiruvananthapuram', 'Kerala', 1, 9, 0, '2019-08-19 07:00:00', 1),
(28, 2, 'Furnished apartment for rent near infopark', 'RESI1028', 'Flat', '2019-08-27', 'Residential/74429-1xvwlkuf_large.jpg', 1500, 4, 1600, 4, 20, 3, 'Yes', '0', 'Yes', 'Yes', 'Fully Furnished', '0', 1, 'club house, swimming pool, theater, gym, childens park', 0, 25000, 'kakkanad', 9995104204, 'Ernakulam', 'Kerala', 1, 22, 0, '2019-08-27 03:43:05', 1),
(30, 1, '2350 Sq.ft house  with 32 cent land consist of coconut trees for sale at Karuvanchal,Kannur Dist.', 'RESI1030', 'House', '2019-08-27', 'Residential/75222-69577584_119817186040102_3605465418237476864_n.jpg', 2350, 4, 32, 1, 2, 4, 'Yes', '0', 'Yes', 'Yes', 'Fully Furnished', '0', 0, '', 0, 6500000, 'Karuvanchal', 919188712202, 'Kannur', 'Kerala', 1, 61, 0, '2019-08-27 07:00:00', 1),
(31, 1, '*à´¤à´³à´¿à´ªàµà´ªà´±à´®àµà´ªà´¿àµ½ à´µàµ€à´Ÿàµà´‚ à´¸àµà´¥à´²à´µàµà´‚ à´µà´¿àµ½à´ªà´¨à´¯àµà´•àµà´•àµâ€Œ*  à´•à´£àµà´£àµ‚àµ¼ à´œà´¿à´²àµà´²à´¯à´¿àµ½ à´¤à´³à´¿à´ªàµà´ªà´±à´®àµà´ª à´šàµŠàµ¼à', 'RESI1031', 'Villa', '2019-08-28', 'Residential/68349-a06be8c7-c085-4176-b9fb-9bdcedf480c4.jpeg', 0, 1, 10, 1, 0, 5, 'Yes', '0', 'Yes', 'Yes', 'Not Furnished', '0', 1, '', 0, 4500000, 'Chorkkalla ', 9169997000, 'Kannur', 'Kerala', 1, 64, 0, '2019-08-28 07:00:00', 1),
(32, 1, 'à´•àµà´±à´žàµà´ž à´µà´¿à´²à´¯à´¿àµ½ ', 'RESI1032', 'House', '2019-08-30', 'Residential/75567-img_20181208_185227.jpg', 1350, 4, 6.5, 1, 2, 3, 'Yes', '0', 'Yes', 'Yes', 'Semi Furnished', '0', 1, 'à´…à´®àµà´ªà´²à´‚ à´ªà´³àµà´³à´¿ à´¸àµà´•àµ‚àµ¾ à´•àµ‹à´³àµ‡à´œàµ à´¹àµ‹à´¸àµà´ªà´¿à´±àµà´±à´²à´¿àµ½ ', 0, 26, 'Palakkad #kallur#', 8113941373, 'Palakkad', 'Kerala', 1, 80, 0, '2019-08-30 07:00:00', 1),
(33, 1, 'à´•à´£àµà´£àµ‚àµ¼: 7 à´¸àµ†à´¨àµà´±àµ à´¸àµà´¥à´²à´µàµà´‚ à´’à´°àµà´µàµ€à´Ÿàµà´‚ à´µà´¿àµ½à´ªàµà´ªà´¨à´•àµà´•àµ', 'RESI1033', 'House', '2019-08-31', 'Residential/24319-c0a75b38-7795-4651-98d9-13db3cbe6cbc.jpeg', 0, 0, 7, 1, 0, 0, 'Yes', '0', 'Yes', '', 'Fully Furnished', '0', 1, 'à´µàµ€à´Ÿàµ à´µà´°àµ† à´±àµ‹à´¡àµ à´¸àµ—à´•à´°àµà´¯à´‚ ', 0, 1300000, 'à´šàµ†à´®àµà´ªà´¨àµà´¤àµŠà´Ÿàµà´Ÿà´¿', 9847532697, 'Kannur', 'Kerala', 1, 3, 0, '2019-08-31 07:00:00', 1),
(34, 1, 'Villa ', 'RESI1034', 'Villa', '2019-08-31', 'Residential/75338-20190817_165200.jpg', 1980, 4, 4.55, 1, 1, 3, 'Yes', '0', 'Yes', 'Yes', 'Semi Furnished', '0', 1, 'Gym . Club house.  Swimming pool.  Children\'s park ', 0, 11500000, 'Panangad ', 9995553002, 'Ernakulam', 'Kerala', 1, 84, 0, '2019-08-31 07:00:00', 1),
(35, 1, 'à´ªà´Ÿàµà´Ÿà´¾à´¨àµ‚àµ¼ 7 à´¸àµ†à´¨àµà´±àµ à´¸àµà´¥à´²à´µàµà´‚ à´ªàµà´¤à´¿à´¯ à´µàµ€à´Ÿàµà´‚ 20 à´²à´•àµà´·à´‚', 'RESI1035', 'House', '2019-09-01', 'Residential/15939-6c9f69e8-69c6-4fec-a721-66b861863779.jpeg', 1116, 4, 7, 1, 1, 0, 'Yes', '0', 'Yes', '', 'Not Furnished', '0', 1, 'à´•à´¿à´£àµ¼ , à´ªà´Ÿàµà´Ÿà´¾à´¨àµ‚àµ¼ à´œàµà´®à´¾à´®à´¸àµà´œà´¿à´¦àµ à´¤àµŠà´Ÿàµà´Ÿà´Ÿàµà´¤àµà´¤àµ, à´•àµ‹àµºà´•àµà´°àµ€à´±àµà´±àµ à´ªà´£à´¿ à´•à´´à´¿à´žàµà´žàµ.', 0, 2000000, 'Pattanur , Kannur ', 9947816170, 'Kannur', 'Kerala', 1, 3, 0, '2019-09-01 07:00:00', 1),
(36, 1, '1.5 Year Old House - 3BHK Attached', 'RESI1036', 'House', '2019-09-01', 'Residential/4266-35f8892c-c621-4fd8-ba6a-7b6e74e17e1f.jpeg', 0, 0, 10.5, 1, 2, 3, 'Yes', '0', 'Yes', 'Yes', 'Fully Furnished', '0', 1, '', 0, 9500000, 'Thazhe Chovva, Kannur ', 97455262006, 'Kannur', 'Kerala', 1, 3, 0, '2019-09-01 07:00:00', 1),
(37, 1, 'House for sale', 'RESI1037', 'House', '2019-09-02', 'Residential/46590-9aae69ca-187a-4775-807d-22b2efe47b50.jpeg', 2168, 1, 7, 1, 1, 4, 'Yes', '0', 'Yes', 'Yes', 'Not Furnished', '0', 1, 'Yes', 0, 4000000, 'Taliparamba , Nelliparamba', 9744474769, 'Kannur', 'Kerala', 1, 92, 0, '2019-09-02 07:00:00', 1),
(38, 1, 'à´•à´£àµà´£àµ‚àµ¼: à´•à´°àµà´µà´žàµà´šà´¾à´²à´¿àµ½ à´µàµ€à´Ÿàµà´‚ à´¸àµà´¥à´²à´µàµà´‚ à´µà´¿àµ½à´ªàµà´ªà´¨à´•àµà´•àµ', 'RESI1037', 'House', '2019-09-02', 'Residential/44506-68996902_428465201210130_1428286795849662464_n.jpg', 1800, 4, 14, 1, 1, 3, 'Yes', '0', 'Yes', '', 'Not Furnished', '0', 1, 'Construction Status: Ready to move, Super Builtup area (ftÂ²)1800, Carpet Area (ftÂ²)1550, Total Floors1, Car Parking1, FacingNorth, house situated in fourteen cents at 3 km away from Karuvanchal , Thadikadave , kuttikari Road', 0, 5100000, 'Karuvanchal, Thadikkadav - Kuttikkari Road', 9961931247, 'Kannur', 'Kerala', 1, 3, 0, '2019-09-02 07:00:00', 1),
(39, 1, 'House for sale @ Cochin - Thevakkal', 'RESI1038', 'House', '2019-09-05', 'Residential/43943-7485e99f-d3bc-400b-ae84-07dcd18203e8.jpeg', 1400, 4, 3, 1, 2, 3, 'Yes', '0', 'Yes', 'Yes', 'Semi Furnished', '0', 1, 'One car parking.  700 meter from bus stop.  8 km from edappally lulu. 7 km from infopark Kakkanad.  4 km from airport seaport road. ', 0, 5500000, 'Thevakkal, Cochin', 9995553002, 'Ernakulam', 'Kerala', 1, 3, 0, '2019-09-05 07:00:00', 1),
(40, 1, 'House for sale at Cochin - Thevakkal', 'RESI1039', 'House', '2019-09-05', 'Residential/75412-73f90fa7-9190-4c98-aea9-8c4a35d85519.jpeg', 1500, 4, 3.5, 1, 2, 3, 'Yes', '0', 'Yes', 'Yes', 'Semi Furnished', '0', 1, 'One car parking.  Semi furnished.  Well and pipe water.  700 meter from bus stop. 8 km from edappally lulu. 7 km from infopark Kakkanad. 4 km from airport seaport road.', 0, 5600000, 'Thevakkal, Cochin ', 9995553002, 'Ernakulam', 'Kerala', 1, 3, 0, '2019-09-05 07:00:00', 1),
(41, 1, 'House for sale at Kannur - Mayyil ', 'RESI1040', 'House', '2019-09-06', 'Residential/82175-4225a11b-0d0d-4d83-a081-6630e6f6ed62.jpeg', 0, 0, 9, 1, 0, 0, 'Yes', '0', 'Yes', '', 'Fully Furnished', '0', 1, 'Only 1 Kilometer from Mayyil Town', 0, 2300000, 'Kuttiattur, Mayyil ', 8129549333, 'Kannur', 'Kerala', 1, 3, 0, '2019-09-06 07:00:00', 1),
(42, 1, 'House for sale @ malappurum valanchery,kuttippurm.', 'RESI1041', 'House', '2019-09-07', 'Residential/87820-69727673_437488066974510_5776734900065402880_n.jpg', 900, 4, 5, 1, 1, 2, 'Yes', '0', 'No', 'No', 'Fully Furnished', '0', 1, '2bathrom ,,Dining Hall', 0, 2000000, ' malappurum valanchery,kuttippurm.', 919020775962, 'Malappuram', 'Kerala', 1, 9, 0, '2019-09-07 07:00:00', 1),
(43, 1, 'House For sale at Cochin - Manjummal', 'RESI1042', 'House', '2019-09-07', 'Residential/67785-69678228_437413433648640_7086967888355000320_n.jpg', 1450, 4, 3.25, 2, 2, 3, 'Yes', '0', 'Yes', 'Yes', 'Semi Furnished', '0', 1, 'Well and pipe water.,2 car parking.', 0, 7000000, 'Cochin - Manjummal,5 km from edappally.', 9995553002, 'Ernakulam', 'Kerala', 1, 9, 0, '2019-09-07 07:00:00', 1),
(44, 1, 'House For sale @ Cochin - Peringala.', 'RESI1043', 'House', '2019-09-07', 'Residential/24869-69583910_437336193656364_7074306346241228800_n.jpg', 2000, 4, 4, 1, 2, 3, 'Yes', '0', 'No', 'Yes', 'Fully Furnished', '0', 1, 'Pipe water.,1 study room .', 0, 6000000, 'cochin - Peringala.. (Trippunithura to aluva route )8 km from infopark Kakkanad.', 9995553002, 'Ernakulam', 'Kerala', 1, 9, 0, '2019-09-07 07:00:00', 1),
(45, 1, 'House for sale at Cochin - Thevakkal.', 'RESI1044', 'House', '2019-09-09', 'Residential/44505-69763784_438569666866350_3540224220766142464_n.jpg', 1650, 4, 4, 1, 2, 3, 'Yes', '0', 'Yes', 'Yes', 'Semi Furnished', '0', 1, ' Well and pipe water.', 0, 7000000, 'Cochin - Thevakkal.,7 km from Kakkanad infopark.', 9995553002, 'Ernakulam', 'Kerala', 1, 9, 0, '2019-09-09 07:00:00', 1),
(46, 1, 'ð‡ð¨ð®ð¬ðž ðŸð¨ð« ð¬ðšð¥ðž ðšð­ ð‚ð¨ðœð¡ð¢ð§- ð©ðšð§ðœð¡ðšð²ðšð­ð¡ ð£ð§.', 'RESI1045', 'House', '2019-09-13', 'Residential/68320-03ab1148-dc9b-4642-a2e5-8f3c1458b8e8.jpeg', 1750, 4, 4.3, 1, 2, 4, 'Yes', '0', 'Yes', 'Yes', 'Semi Furnished', '0', 1, '3 bhk attached.  1 study room.  Well and pipe water.  Good residential area.  Semi furnished.  650 meter from bus stop.  9 km from edappally lulu.  7 km from infopark Kakkanad.  53 lakh asking. Slightly negotiable. ', 0, 5300000, 'Panchayat Junction, Cochin', 9995553002, 'Ernakulam', 'Kerala', 1, 3, 0, '2019-09-13 07:00:00', 1),
(47, 1, '3BHK HOUSE AT PALAPPURAM,OTTAPALAM', 'RESI1046', 'House', '2019-09-13', 'Residential/12216-69517799-9a2e-4aff-afa6-4c59d0153a8e.jpeg', 1300, 4, 9.25, 1, 1, 3, 'Yes', '0', 'Yes', 'No', 'Semi Furnished', '0', 1, 'Yes', 0, 4600000, 'Palappuram', 9446326166, 'Palakkad', 'Kerala', 1, 137, 0, '2019-09-13 07:00:00', 1),
(48, 1, 'Beautiful new home', 'RESI1047', 'Bed-space', '2019-09-14', 'Residential/54601-20190902_162558.jpg', 1600, 4, 3.5, 1, 2, 3, 'Yes', '0', 'Yes', 'Yes', 'Fully Furnished', '0', 1, '', 0, 5300000, 'Peyad near thachottukavu', 9946190147, 'Thiruvananthapuram', 'Kerala', 1, 136, 0, '2019-09-14 07:00:00', 1),
(49, 1, 'ð‡ð¨ð®ð¬ðž ð…ð¨ð« ð¬ðšð¥ðž ðšð­ ð‚ð¨ðœð¡ð¢ð§ - ððšð§ðœð¡ðšð²ðšð­ð¡ ð£ð®ð§ðœð­ð¢ð¨ð§', 'RESI1048', 'House', '2019-09-14', 'Residential/43742-69890999_441410029915647_5563731017837051904_n.jpg', 1400, 4, 3.5, 1, 2, 3, 'Yes', '0', 'Yes', 'Yes', 'Semi Furnished', '0', 1, 'Well and pipe water. One car parking.3 bhk attached', 0, 5200000, ' ð‚ð¨ðœð¡ð¢ð§ - ððšð§ðœð¡ðšð²ðšð­ð¡ ð£ð®ð§ðœð­ð¢ð¨ð§,9 km from edappally lulu.', 9995553002, 'Ernakulam', 'Kerala', 1, 9, 0, '2019-09-14 07:36:10', 1),
(50, 1, '15 Cent Plot & A House at Trivandrum', 'RESI1049', 'House', '2019-09-15', 'Residential/22683-1c5c68af-b7fc-41dd-b651-d3a1e41be22e.jpeg', 0, 0, 15, 1, 0, 3, 'Yes', '0', 'Yes', '', 'Fully Furnished', '0', 1, 'Road access, near vembayam ,road side , 3rooms hall ,sitout, work area ,store room ,3bathrooms,roofed house,also an outhouse', 0, 6500000, 'Vembayam', 9605733414, 'Thiruvananthapuram', 'Kerala', 1, 3, 0, '2019-09-15 07:00:00', 1),
(51, 1, 'à´•à´£àµà´£àµ‚àµ¼  à´¬àµà´²à´¾à´¤àµà´¤àµ‚àµ¼  à´®à´žàµà´žà´¾à´•àµà´•à´°à´¿à´¯à´¿àµ½  à´µàµ€à´Ÿàµà´‚ à´¸àµà´¥à´²à´µàµà´‚ à´µà´¿àµ½à´ªàµà´ªà´¨à´•àµà´•àµ', 'RESI1050', 'House', '2019-09-15', 'Residential/87549-71186734_758360004604089_8853042695120093184_n.jpg', 0, 0, 23, 1, 0, 0, 'Yes', '0', '', '', '', '0', 1, '', 0, 3200000, 'Manjamkary,blathoor,', 9747453934, 'Kannur', 'Kerala', 1, 9, 0, '2019-09-15 07:00:00', 1),
(52, 1, 'Home for sale at Ramanattukara, (calicut)', 'RESI1051', 'House', '2019-09-15', 'Residential/7268-71108773_2422187064530141_1528325384561491968_n.jpg', 2500, 4, 9, 1, 0, 3, 'Yes', '0', 'Yes', '', 'Semi Furnished', '0', 1, '  Good residential area,Good road,', 0, 7000000, 'Ramanattukara,,Kozhikode', 9847440081, 'Kozhikode', 'Kerala', 1, 9, 0, '2019-09-15 07:00:00', 1),
(53, 1, '3 BHK home in Sreekandapuram kannur', 'RESI1052', 'House', '2019-09-15', 'Residential/5396-fb_img_1568570258748.jpg', 1700, 4, 15, 1, 2, 3, 'Yes', '0', 'Yes', 'Yes', 'Not Furnished', '0', 1, 'Yes', 0, 5000000, 'Kavumbai , Sreekandapuram,kannur', 9497491267, 'Kannur', 'Kerala', 1, 186, 0, '2019-09-16 11:07:10', 1),
(54, 1, 'House for sale in kakkad, kannur', 'RESI1053', 'House', '2019-09-16', 'Residential/7184-0eb314ed-2c51-48a5-b4b1-13502c432be0.jpeg', 2100, 4, 8, 1, 2, 4, 'Yes', '0', 'Yes', 'Yes', 'Semi Furnished', '0', 1, 'Porch, well, fence', 0, 6900000, 'Kakkad, Kannur', 9847193313, 'Kannur', 'Kerala', 1, 195, 0, '2019-09-16 07:00:00', 1),
(56, 1, 'Home for sale at  kuruppanthara', 'RESI1055', 'House', '2019-09-17', 'Residential/18106-70083199_349331419281630_8484719210486824960_n.jpg', 0, 0, 20, 1, 2, 3, 'Yes', '0', 'Yes', 'Yes', 'Semi Furnished', '0', 1, 'entrance hall, dinning hall,', 0, 7000000, ' kuruppanthara ,manvettam press', 9847966501, 'Kottayam', 'Kerala', 1, 9, 0, '2019-09-17 07:00:00', 1),
(57, 1, 'House for sale Kottayam Kallara ', 'RESI1056', 'House', '2019-09-18', 'Residential/76247-69994347_743263382762328_474713973493596160_n.jpg', 0, 0, 10, 1, 1, 3, 'Yes', '0', 'Yes', '', 'Semi Furnished', '0', 1, ' 2hall  2bathroom', 0, 3700000, 'Kallara ,Kottayam ', 919495871017, 'Kottayam', 'Kerala', 1, 9, 0, '2019-09-18 07:00:00', 1),
(58, 1, 'House for Sale at  Manjummal. edappally .', 'RESI1057', 'House', '2019-09-18', 'Residential/82861-70357870_2433579333590137_5701214265306775552_n.jpg', 1750, 4, 4, 1, 2, 3, 'Yes', '0', 'Yes', 'Yes', 'Semi Furnished', '0', 1, 'Well and pipe water.   One car parking. 3 bhk attached', 0, 7500000, 'Manjummal. edappally .,kochi,, 4 km from edappally lulu.', 919995553002, 'Ernakulam', 'Kerala', 1, 9, 0, '2019-09-18 07:00:00', 1),
(59, 1, 'New house', 'RESI1058', 'Bed-space', '2019-09-20', 'Residential/12541-20190902_162558.jpg', 1600, 4, 3.5, 1, 2, 3, 'Yes', '0', 'Yes', 'Yes', 'Fully Furnished', '0', 1, '', 0, 5300000, 'Thirumala, near thachottukavu', 9946190147, 'Thiruvananthapuram', 'Kerala', 1, 136, 0, '2019-09-20 07:00:00', 1),
(60, 1, 'Home for sale at   kuttiyeri,TALIPARAMBA', 'RESI1059', 'House', '2019-09-21', 'Residential/50565-71577595_532942710887165_850581082850983936_n.jpg', 0, 0, 14, 1, 1, 0, 'Yes', '0', '', '', '', '0', 1, '', 0, 3500000, 'kuttiyeri,TALIPARAMBA', 9567272587, 'Kannur', 'Kerala', 1, 9, 0, '2019-09-21 07:00:00', 1),
(61, 1, 'Home for sale at pukattupady,kochi', 'RESI1060', 'House', '2019-09-21', 'Residential/49492-70780049_494880581350542_2435840369204658176_n.jpg', 1400, 4, 3.5, 1, 2, 3, 'Yes', '0', 'Yes', 'Yes', 'Semi Furnished', '0', 1, 'Well and pipe water.   One car parking. 3 bhk attached', 0, 54000000, 'pukattupady,7.5 km from infopark Kakkanad.', 9995553002, 'Ernakulam', 'Kerala', 1, 9, 0, '2019-09-21 07:00:00', 1),
(62, 1, 'House for sale', 'RESI1061', 'House', '2019-09-21', 'Residential/26488-53ac673f-6c01-482b-838d-9e38f5d585f0.jpeg', 6, 1, 6, 1, 2, 5, 'Yes', '0', 'Yes', 'Yes', 'Semi Furnished', '0', 1, '', 0, 5600000, 'Thalassery', 9961936311, 'Kannur', 'Kerala', 1, 231, 0, '2019-09-21 07:00:00', 1),
(63, 1, 'ð‡ð¨ð®ð¬ðž ð…ð¨ð« ð¬ðšð¥ðž ðšð­ Pattimattom ,ð‚ð¨ðœð¡ð¢ð§ ', 'RESI1062', 'House', '2019-09-23', 'Residential/21902-70912917_453012521971649_1470368477393977344_n.jpg', 2200, 4, 8.5, 1, 2, 4, 'Yes', '0', 'Yes', 'Yes', 'Semi Furnished', '0', 1, 'Well and pipe water.   3 car parking. 4 bhk attached', 0, 6800000, ',600 meter from Pattimattom bus stop, Ernakulam  ', 9995553002, 'Ernakulam', 'Kerala', 1, 9, 0, '2019-09-23 07:00:00', 1),
(64, 1, '4.5 àµ†à´¸àµ†à´¨àµà´±àµ à´¸àµà´¥à´²à´‚ à´“à´Ÿà´¿à´Ÿàµà´Ÿ à´µàµ€à´Ÿàµà´‚ à´¨à´¿à´²à´®àµà´ªàµ‚àµ¼ à´ªàµ‚à´•àµà´•àµ‹à´Ÿàµà´Ÿàµà´‚à´ªàµà´ªà´¾à´Ÿà´‚', 'RESI1063', 'House', '2019-09-23', 'Residential/86695-img-20190605-wa0004.jpg', 430, 4, 4.5, 1, 1, 2, 'Yes', '0', 'Yes', 'No', 'Semi Furnished', '0', 1, 'S', 0, 800000, 'Pookottumpadam', 966595115543, 'Malappuram', 'Kerala', 1, 316, 0, '2019-09-23 07:00:00', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `resiuserdetailsv`
-- (See below for the actual view)
--
CREATE TABLE `resiuserdetailsv` (
`id` int(100)
,`forresi` int(100)
,`header` varchar(200)
,`code` varchar(100)
,`resType` varchar(200)
,`postDate` date
,`img` varchar(500)
,`houseAreaValue` float
,`houseAreaUnit` int(11)
,`landAreaValue` float
,`landAreaUnit` int(100)
,`numberOfFloor` int(100)
,`numberOfBedRooms` int(100)
,`Kitchen` varchar(100)
,`workArea` varchar(100)
,`Hall` varchar(100)
,`Balcony` varchar(100)
,`furnished` varchar(100)
,`flooring` varchar(100)
,`RoadAccess` int(100)
,`otherFacilities` varchar(2000)
,`minrate` bigint(20)
,`maxrate` bigint(20)
,`location` varchar(500)
,`mobile` bigint(100)
,`district` varchar(200)
,`state` varchar(200)
,`status` int(11)
,`fkUserId` int(100)
,`isBlocked` int(11)
,`date` timestamp
,`fkCountryId` int(11)
,`UserID` int(100)
,`name` varchar(500)
,`address` varchar(2000)
,`email` varchar(500)
,`Usermob` bigint(100)
,`userType` int(100)
,`fromDate` date
,`toDate` date
,`userDistId` varchar(200)
,`userStateId` varchar(200)
,`fkCountryidd` int(100)
,`userBlocked` int(50)
,`isExist` int(11)
,`isValid` int(100)
,`isPremier` int(11)
,`userimg` varchar(500)
,`fkPremierID` int(11)
,`NoofAds` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `samejobs`
--

CREATE TABLE `samejobs` (
  `id` int(100) NOT NULL,
  `fkJobsId` int(100) NOT NULL,
  `fkJobCat` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shape`
--

CREATE TABLE `shape` (
  `id` int(11) NOT NULL,
  `structure` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shape`
--

INSERT INTO `shape` (`id`, `structure`) VALUES
(1, 'square'),
(2, 'triangle'),
(3, 'rectangle'),
(4, 'unshaped');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(100) NOT NULL,
  `state` varchar(500) NOT NULL,
  `fkCountryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state`, `fkCountryId`) VALUES
(1, 'Kerala', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subimages`
--

CREATE TABLE `subimages` (
  `id` int(255) NOT NULL,
  `proCatId` int(11) NOT NULL,
  `fkProId` int(255) NOT NULL,
  `img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subimages`
--

INSERT INTO `subimages` (`id`, `proCatId`, `fkProId`, `img`) VALUES
(1, 4, 2, 'eleSub/42141-68421182_425206091536041_3369740166875840512_n.jpg'),
(2, 5, 26, 'residentialSub/48091-69350342_426183091438341_5954264542862114816_n.jpg'),
(3, 1, 8, 'landSub/27097-6dd613c2-02a5-4bb9-9716-620579ce216c.jpeg'),
(4, 1, 10, 'landSub/81741-anjarakandy-bavode.jpg'),
(5, 1, 10, 'landSub/42794-anjarakandy-bavode-2.jpg'),
(6, 1, 12, 'landSub/68878-à´à´´à´¿à´®à´²-2.jpg'),
(7, 1, 12, 'landSub/71158-à´à´´à´¿à´®à´²-3.jpg'),
(8, 1, 12, 'landSub/15624-à´à´´à´¿à´®à´²-4.jpg'),
(9, 2, 22, 'vehiSub/69840-38900aa1-203b-43ec-a96f-498e3c01d140.jpeg'),
(10, 2, 22, 'vehiSub/41492-1326eb76-c51b-4532-96c9-7649565c9b96.jpeg'),
(11, 2, 22, 'vehiSub/45819-bd47ba38-4840-4e36-961d-322e14fccbc1.jpeg'),
(12, 2, 22, 'vehiSub/90046-61f7645e-a0f7-4d4f-849e-179b05e866b6.jpeg'),
(13, 2, 22, 'vehiSub/79992-d1ad8252-1b7d-46a2-84d8-fe7d5d7f003e.jpeg'),
(14, 2, 22, 'vehiSub/26613-5cc01f6f-2cbf-4c59-a9d2-b4606bb7bd2c.jpeg'),
(15, 2, 22, 'vehiSub/17968-aae321f4-cc13-476f-8bf7-a6b42a4b7e02.jpeg'),
(16, 2, 22, 'vehiSub/66593-87c8af27-7680-4106-b7d0-5dc215f4e48f.jpeg'),
(17, 2, 21, 'vehiSub/82493-63346504-c232-41b9-8d4a-7659f5252852.jpeg'),
(18, 2, 21, 'vehiSub/72401-3ce320bb-8de7-41b0-9129-3e2f44bb296b.jpeg'),
(19, 2, 21, 'vehiSub/73378-82cccab2-dd14-4020-bf99-0498b39993eb.jpeg'),
(20, 2, 21, 'vehiSub/17718-08998eee-0dde-407a-8428-cb50aa7b0d75.jpeg'),
(21, 2, 20, 'vehiSub/38983-863de4e7-e614-4938-b3a5-6e4990d41fdb.jpeg'),
(22, 2, 20, 'vehiSub/57658-eaec6b96-cf83-46dd-871d-14bf8f648421.jpeg'),
(23, 2, 20, 'vehiSub/70358-494caaad-6655-4d70-8ab3-ce64d8bb3989.jpeg'),
(24, 2, 20, 'vehiSub/48692-243f5511-8eb9-4551-a35d-c4531721d6e5.jpeg'),
(25, 2, 20, 'vehiSub/83053-fb7ae1e0-9e36-40f0-9221-19ceabb3e313.jpeg'),
(26, 2, 20, 'vehiSub/59531-f4e6acf2-6543-4219-8b3c-b5f765211569.jpeg'),
(27, 1, 15, 'landSub/57645-eachur-3.jpg'),
(28, 1, 18, 'landSub/54341-10710000.jpg'),
(29, 5, 28, 'residentialSub/75355-1xvwlkuf_large.jpg'),
(30, 5, 28, 'residentialSub/70955-cid1i7e5_large.jpg'),
(31, 5, 28, 'residentialSub/26864-index.jpeg'),
(32, 4, 8, 'eleSub/73439-2ca9afaa-1fc2-48db-998f-4315720952ae.jpeg'),
(33, 4, 8, 'eleSub/15257-a4afc110-6d46-402f-811c-2586a3ac23d9.jpeg'),
(34, 4, 1, 'commercialSub/54976-34f410c9-3839-4c9b-a9d1-cf8e49d60d30.jpeg'),
(35, 4, 1, 'commercialSub/99625-9bbdb12b-e1c9-48b5-8fb5-c609d2ef81fb.jpeg'),
(36, 4, 1, 'commercialSub/68675-5258e1f5-63de-464f-9cb4-b200e206a311.jpeg'),
(37, 4, 1, 'commercialSub/14857-7c6bc9f6-b007-4014-9670-3ed8f47f2a0a.jpeg'),
(38, 4, 1, 'commercialSub/38254-ad9173cd-6696-44de-876a-54e12e350c56.jpeg'),
(39, 4, 1, 'commercialSub/66364-6022fb51-c868-4903-80bd-3f0be93d9430.jpeg'),
(40, 4, 1, 'commercialSub/14108-3e3ce2a3-7149-4a48-8997-814fc26c777e.jpeg'),
(41, 4, 1, 'commercialSub/60331-660c212c-e869-495b-ae31-0e0316971039.jpeg'),
(42, 4, 1, 'commercialSub/2957-e6b059df-5cfb-4587-9c3b-082eb35e0948.jpeg'),
(43, 2, 34, 'vehiSub/59803-2c0f26a1-5d9f-4921-b604-83554790bdad.jpeg'),
(44, 2, 34, 'vehiSub/10214-e734e61f-4f87-4fe7-bbed-e7872d1d4f38.jpeg'),
(45, 2, 34, 'vehiSub/91048-013a8524-6de0-403c-8afc-1bfbf2c39449.jpeg'),
(46, 2, 34, 'vehiSub/62220-013a8524-6de0-403c-8afc-1bfbf2c39449.jpeg'),
(47, 2, 35, 'vehiSub/80200-69738157_430979814292002_758661713200414720_n.jpg'),
(48, 2, 35, 'vehiSub/67330-69664923_430979790958671_3003018305612021760_n.jpg'),
(49, 6, 8, 'proSub/1179-457d4357-900d-45a5-9d9c-79b646c99525.jpeg'),
(50, 6, 8, 'proSub/80909-6e29f1b1-8696-401b-946f-c3ec79330981.jpeg'),
(51, 6, 8, 'proSub/74638-4f57afa5-e5c4-4c70-9028-a1bf947d44bd.jpeg'),
(52, 6, 8, 'proSub/81670-70f65e29-e3f9-4505-819a-56deb2e465b2.jpeg'),
(53, 2, 36, 'vehiSub/9185-febfbf9b-99e2-4735-8af7-ab39f8101026.jpeg'),
(54, 2, 36, 'vehiSub/3021-e455f089-73d3-4ded-8f76-d1ec17e2f14b.jpeg'),
(55, 2, 36, 'vehiSub/84720-069a57a1-4b9f-4734-b05d-301f3e45413d.jpeg'),
(56, 2, 36, 'vehiSub/83821-11c75309-171b-44dc-a582-ec4523779edf.jpeg'),
(57, 2, 36, 'vehiSub/89864-e30725f0-6346-43b7-8bb8-b6e5f1965c6a.jpeg'),
(58, 5, 32, 'residentialSub/67975-img_20190502_183350.jpg'),
(59, 2, 38, 'vehiSub/13595-0acff3fc-33eb-4eae-996a-d5daf95f87f3.jpeg'),
(60, 2, 38, 'vehiSub/56060-c581a365-8ade-486b-b3f0-ce33b222d3bf.jpeg'),
(61, 2, 38, 'vehiSub/57167-d06928df-a670-44c4-9bfe-e2e71f52ff62.jpeg'),
(62, 2, 38, 'vehiSub/95055-4e6df479-f953-48a9-80cb-9c3d0b8387e2.jpeg'),
(63, 2, 38, 'vehiSub/86924-e83caa97-6bf8-421c-93fe-057341fee61a.jpeg'),
(64, 2, 41, 'vehiSub/67922-9ba1f520-9f04-42da-9487-a8b9f0e38675.jpeg'),
(65, 2, 41, 'vehiSub/30664-46526f30-9107-4b90-b302-65fe918242a9.jpeg'),
(66, 2, 41, 'vehiSub/1642-ff0d909b-ce87-4310-931c-0a6601b85bc0.jpeg'),
(67, 2, 41, 'vehiSub/17453-b1981395-f1ed-483b-8761-5d634c38d013.jpeg'),
(68, 2, 41, 'vehiSub/36774-1d8f8942-d3db-4a62-8da5-0550a92adefe.jpeg'),
(69, 2, 41, 'vehiSub/6757-979dd122-dad6-4170-bd2d-61c988083e16.jpeg'),
(70, 6, 19, 'proSub/34703-ede5b068-5d7f-4540-b5fc-919505dc166d.jpeg'),
(71, 6, 19, 'proSub/63676-ae5a5fb6-b192-4018-813f-c30b88f24199.jpeg'),
(72, 6, 19, 'proSub/89722-c9d3cb8b-b3d6-46aa-bacb-0da39083d970.jpeg'),
(73, 2, 42, 'vehiSub/78776-d7e52a6f-a640-4314-9be4-b663bde32dfd.jpeg'),
(74, 2, 42, 'vehiSub/87840-384298bf-ff31-4c07-b8bd-cdd5ef4c4181.jpeg'),
(75, 2, 42, 'vehiSub/34066-fdfdc85a-af27-4f12-88c9-06117226d7c2.jpeg'),
(76, 6, 24, 'proSub/73017-3b48e2da-bf9a-4f4a-8403-8c752dc3fd5b.jpeg'),
(77, 6, 24, 'proSub/51503-2dcd5f2c-0a5e-4a35-8cdb-b7ff085d0793.jpeg'),
(78, 2, 43, 'vehiSub/57426-723c72a9-0289-4756-a523-6f7f2edac69e.jpeg'),
(79, 5, 35, 'residentialSub/66061-6d43ebd4-9828-4bf5-87e0-fd875fec5f46.jpeg'),
(80, 5, 35, 'residentialSub/6911-2dcd069a-e824-4dd6-a910-3e9c1472bcf1.jpeg'),
(81, 5, 35, 'residentialSub/38538-204888c6-309a-4568-a823-a5e508a9fc42.jpeg'),
(82, 5, 35, 'residentialSub/3448-cdfee45d-b331-476c-a86f-dd6851a56b30.jpeg'),
(83, 5, 35, 'residentialSub/56247-2977e628-ddfd-413f-8a86-5052f162ffea.jpeg'),
(84, 5, 35, 'residentialSub/50624-829ba7ec-3c7f-43cf-8bd5-7b8b317f2985.jpeg'),
(85, 5, 36, 'residentialSub/82603-2bbac1a4-0980-4427-9969-57a0e6a3a18e.jpeg'),
(86, 5, 36, 'residentialSub/20487-fb25a369-3b33-43dd-8c02-bb59c45905b0.jpeg'),
(87, 5, 36, 'residentialSub/21890-985dbda8-d8b7-45fb-aade-8ff7032873d6.jpeg'),
(88, 5, 36, 'residentialSub/55665-4c06df83-b83e-4f4a-b64a-0cc3230ecb0d.jpeg'),
(89, 5, 36, 'residentialSub/11435-3bd706f8-bc7b-4ff4-9357-83e867f9a8a7.jpeg'),
(90, 5, 36, 'residentialSub/62119-9b6b795e-6809-4ded-9b14-3b06fe0c1c95.jpeg'),
(91, 5, 36, 'residentialSub/73023-a30f4950-2ccd-4fcf-9437-203882605fde.jpeg'),
(92, 2, 44, 'vehiSub/72522-e2b2b314-1327-4189-8812-2d8070483248.jpeg'),
(93, 2, 44, 'vehiSub/9967-8bc1956c-03b4-490c-954b-3d82fd1c369d.jpeg'),
(94, 2, 44, 'vehiSub/52940-f384152d-a696-4d8d-92b5-d4a7aba7d14b.jpeg'),
(95, 2, 44, 'vehiSub/24330-542de82e-d356-440c-98b3-0ddfa5856fe5.jpeg'),
(96, 2, 45, 'vehiSub/92920-fdbb2bac-007b-47cf-8959-6f99f579b851.jpeg'),
(97, 2, 45, 'vehiSub/90292-fc06472e-75f7-42b0-b62a-c47c6b1efe98.jpeg'),
(98, 2, 46, 'vehiSub/1930-f3543448-b6f4-49b4-ae96-4b62a03b9a35.jpeg'),
(99, 2, 46, 'vehiSub/24212-a62345e7-c173-4a45-8f95-ffcebd917d6a.jpeg'),
(100, 2, 46, 'vehiSub/7760-b5964fc8-eedf-47ae-9d6e-e8929458e3f5.jpeg'),
(101, 2, 46, 'vehiSub/20643-fec7b2bf-2457-43f1-9678-de970f7c8217.jpeg'),
(102, 2, 46, 'vehiSub/92467-998fdc11-05ac-4401-bbef-895ecddb68d6.jpeg'),
(103, 5, 37, 'residentialSub/6277-6fd9cf91-c8ed-4536-92af-aea854f267ef.jpeg'),
(104, 5, 37, 'residentialSub/36939-f3293ab4-e848-42ae-8b1e-f3b6fbc35701.jpeg'),
(105, 5, 37, 'residentialSub/28602-ddf21688-98f9-4def-9e74-55102b7c2826.jpeg'),
(106, 5, 37, 'residentialSub/17701-164e7012-72b1-4fa8-a735-7adc89eb32d9.jpeg'),
(107, 5, 37, 'residentialSub/11973-8947a26a-5925-4988-8343-d233ee0744ab.jpeg'),
(108, 5, 37, 'residentialSub/50789-352b945f-b1a6-440b-b8ff-1974146d375e.jpeg'),
(109, 5, 38, 'residentialSub/46089-69585717_428465207876796_6551971867018657792_n.jpg'),
(110, 5, 38, 'residentialSub/23848-68624220_428465234543460_641235576455954432_n.jpg'),
(111, 5, 37, 'residentialSub/51537-0cba5975-b70d-4462-94c3-afba85c9be58.jpeg'),
(112, 5, 38, 'residentialSub/22303-69440668_428465241210126_564804473055084544_n.jpg'),
(113, 5, 38, 'residentialSub/42557-68894356_428465284543455_1677790224987455488_n.jpg'),
(114, 4, 15, 'eleSub/41297-2.jpg'),
(115, 4, 15, 'eleSub/40856-sulitrends_cover_photo1.jpg'),
(116, 4, 15, 'eleSub/59561-video-door-bell-1.jpg'),
(117, 4, 15, 'eleSub/69431-8.jpg'),
(118, 4, 15, 'eleSub/94894-aeg2_1_20180703582071114.jpg'),
(119, 4, 15, 'eleSub/31060-1512332129275251486.jpg'),
(120, 2, 51, 'vehiSub/69146-d7415da6-ce42-4ad5-918d-ebccaa16448f.jpeg'),
(121, 2, 51, 'vehiSub/51728-6684182c-cb3e-4b69-8243-613281373b46.jpeg'),
(122, 2, 52, 'vehiSub/85656-54510ecd-2d33-4633-9167-a222e262d2e6.jpeg'),
(123, 2, 52, 'vehiSub/36923-ebb2479f-a010-4b5a-9c60-d2221dca3aa2.jpeg'),
(124, 2, 52, 'vehiSub/65345-990cec3a-8a37-4c4e-a437-44b5dd85eba0.jpeg'),
(125, 4, 17, 'eleSub/96333-2019-06-21_121301.jpg'),
(126, 4, 17, 'eleSub/35741-i18-fb.jpg'),
(127, 4, 17, 'eleSub/25662-i18-wireless-in-ear-sport-bluetooth-5-0-earphones-black-20190410160333285.jpg'),
(128, 4, 17, 'eleSub/31386-product-image-942169522_1024x1024@2x.jpg'),
(129, 4, 17, 'eleSub/59702-2019-06-21_121925.jpg'),
(130, 4, 18, 'eleSub/17508-2.jpg'),
(131, 4, 18, 'eleSub/63833-98a1d7a508968de3758e7400b07f5140_grande.jpg'),
(132, 4, 18, 'eleSub/31710-video-door-bell-1.jpg'),
(133, 4, 18, 'eleSub/36872-1.jpg'),
(134, 4, 18, 'eleSub/62529-aeg2_1_20180703582071114.jpg'),
(135, 4, 19, 'eleSub/43165-5.jpg'),
(136, 4, 19, 'eleSub/44618-7.jpg'),
(137, 4, 19, 'eleSub/95699-9.jpg'),
(138, 4, 19, 'eleSub/94919-hot-sell-m-j-i7s-tws-mini-wireless-bluetooth-earphone-stereo-earbud-headset-with-charging-box_9ee96754-4d3f-45aa-9583-d17d53672fa0_1200x1200.jpg'),
(139, 4, 20, 'eleSub/93320-ok-2.jpg'),
(140, 4, 20, 'eleSub/28505-ok1.jpg'),
(141, 4, 20, 'eleSub/69780-z18-3-(1).jpg'),
(142, 4, 20, 'eleSub/19854-htb1zxlnaez.bunjt_bxq6aqmpxau.jpg'),
(143, 4, 20, 'eleSub/97755-htb1fataseosbunjy0fdq6zdnvxak.jpg'),
(144, 4, 20, 'eleSub/68161-z18-8.jpg'),
(145, 4, 20, 'eleSub/32124-z18-6.jpg'),
(146, 4, 20, 'eleSub/37237-z18-2.jpg'),
(147, 2, 53, 'vehiSub/65450-img_20190904_003332.jpg'),
(148, 2, 53, 'vehiSub/70939-img-20190903-wa0039.jpg'),
(149, 2, 53, 'vehiSub/32870-img-20190903-wa0040.jpg'),
(150, 2, 53, 'vehiSub/85339-img-20190903-wa0041.jpg'),
(151, 2, 53, 'vehiSub/35647-img-20190903-wa0041.jpg'),
(152, 2, 53, 'vehiSub/69385-img-20190903-wa0045.jpg'),
(153, 2, 53, 'vehiSub/59074-img-20190903-wa0046.jpg'),
(154, 2, 53, 'vehiSub/99051-img-20190903-wa0044.jpg'),
(155, 2, 53, 'vehiSub/5530-img-20190903-wa0042.jpg'),
(156, 4, 21, 'eleSub/90683-img-20190407-wa0003.jpg'),
(157, 4, 21, 'eleSub/58912-dlgz.jpg'),
(158, 4, 21, 'eleSub/18806-1c018270c52870b92ddd27bd27661955ab40ad76.jpg'),
(159, 4, 21, 'eleSub/91928-4a0eb060b9d5f58c4bf17f6586a9758e45c16247.jpg'),
(160, 4, 21, 'eleSub/82608-bulb-light-wireless-ip-camera-960p-fisheye-360-degree-panoramic-vr-camera-13mp-home-security-lamp-wifi-camera-mjp0-copy.jpg'),
(161, 4, 21, 'eleSub/74636-wifi-camera-th-copy.jpg'),
(162, 4, 21, 'eleSub/97433-2019-07-13_000529.jpg'),
(163, 4, 21, 'eleSub/79608-xm3x.jpg'),
(164, 2, 54, 'vehiSub/44250-img_20190726_200413.jpg'),
(165, 2, 54, 'vehiSub/5658-img-20190726-wa0048.jpg'),
(166, 2, 54, 'vehiSub/84981-img-20190726-wa0047.jpg'),
(167, 2, 54, 'vehiSub/44241-img-20190726-wa0046.jpg'),
(168, 2, 54, 'vehiSub/93614-img-20190726-wa0045.jpg'),
(169, 2, 54, 'vehiSub/4068-img-20190726-wa0044.jpg'),
(170, 2, 57, 'vehiSub/38803-2c16e5fd-aff4-49fa-b6a4-15110db0f9f0.jpeg'),
(171, 2, 57, 'vehiSub/25306-8238d613-1ee0-4507-a820-03e986085570.jpeg'),
(172, 2, 57, 'vehiSub/10584-33b5a76f-3e86-44ac-8525-a68a8cc75af4.jpeg'),
(173, 2, 57, 'vehiSub/92215-4ad24295-d690-4334-b742-ca4d404ebca3.jpeg'),
(174, 2, 57, 'vehiSub/39857-3f3961f2-657c-4a9a-b798-8b1f6d90a699.jpeg'),
(175, 2, 58, 'vehiSub/7523-862dcb63-f7c9-4fbf-999f-04c07c2178a3.jpeg'),
(176, 2, 58, 'vehiSub/85269-7be1bb49-b005-4466-b15e-e6246b47cd13.jpeg'),
(177, 2, 58, 'vehiSub/76016-7d4fb1b6-fb7e-4143-afb3-4c63deade58e.jpeg'),
(178, 2, 58, 'vehiSub/99698-97d99a8c-a91c-4fe6-8831-dbf22a8de39b.jpeg'),
(179, 2, 58, 'vehiSub/52222-8f270c34-f213-4762-af01-f25fdba9afb6.jpeg'),
(180, 2, 58, 'vehiSub/51069-e78dba80-d86f-4b4b-8a2f-e89bee73fca1.jpeg'),
(181, 2, 58, 'vehiSub/34421-4fa35b05-80ac-4947-80f2-8a32ab9fd188.jpeg'),
(182, 2, 59, 'vehiSub/40805-6640534c-f5e5-43f0-b5ae-a7ccc876f233.jpeg'),
(183, 2, 59, 'vehiSub/45228-2bbac771-723b-42aa-8a78-01b93a386b49.jpeg'),
(184, 2, 61, 'vehiSub/63026-c195957a-cfd2-4b7f-b37e-4bffa76bb8a3.jpeg'),
(185, 2, 63, 'vehiSub/46073-69948505_437399500316700_493777490779570176_n.jpg'),
(186, 2, 63, 'vehiSub/75298-69862562_437399520316698_4185487454343528448_n.jpg'),
(187, 2, 63, 'vehiSub/84221-69721346_437399536983363_8013667156174569472_n.jpg'),
(188, 2, 63, 'vehiSub/53088-69768189_437399580316692_3350655441041358848_n.jpg'),
(189, 2, 63, 'vehiSub/26056-69629530_437399606983356_1658219858610880512_n.jpg'),
(190, 2, 64, 'vehiSub/27746-69540999_437400060316644_31500793387417600_n.jpg'),
(191, 2, 64, 'vehiSub/52860-69896069_437400080316642_2531981099001708544_n.jpg'),
(192, 2, 64, 'vehiSub/7136-69785786_437400096983307_1306590971986706432_n.jpg'),
(193, 2, 64, 'vehiSub/93056-69548667_437400116983305_2940924606204084224_n.jpg'),
(194, 2, 64, 'vehiSub/71117-69860173_437400143649969_6033981420798476288_n.jpg'),
(195, 2, 64, 'vehiSub/19237-69697921_437400153649968_5730510104088805376_n.jpg'),
(196, 2, 64, 'vehiSub/86171-69540026_437400183649965_6088921817815187456_n.jpg'),
(197, 2, 65, 'vehiSub/59189-69853867_437400830316567_7239346052342480896_n.jpg'),
(198, 2, 65, 'vehiSub/71925-69934863_437400880316562_4890051477470445568_n.jpg'),
(199, 2, 65, 'vehiSub/29299-69893294_437400893649894_9136204876718538752_n.jpg'),
(200, 2, 65, 'vehiSub/55198-69957105_437400946983222_6273215681915781120_n.jpg'),
(201, 2, 65, 'vehiSub/3502-70506862_437400963649887_4662744134375702528_n.jpg'),
(202, 4, 22, 'eleSub/23081-982aaca6-724e-4413-bd42-f22c55d0bc83.jpeg'),
(203, 4, 22, 'eleSub/21867-88d4a061-a396-4431-992f-7aa5f5b48d05.jpeg'),
(204, 4, 22, 'eleSub/14919-7e2c7b92-0fe8-4617-ba7b-f0384b67b098.jpeg'),
(205, 4, 22, 'eleSub/62397-deac2875-c936-492b-aa29-fc6a293a6f9a.jpeg'),
(206, 4, 22, 'eleSub/37186-83908932-27e8-4c39-994e-71396b987a25.jpeg'),
(207, 2, 66, 'vehiSub/96009-ce116640-4734-4710-b4fa-0226c5621c0d.jpeg'),
(208, 2, 66, 'vehiSub/18815-520a9281-1c11-4b8f-8785-17fb1866a735.jpeg'),
(209, 2, 66, 'vehiSub/69644-5436be2b-c754-42a1-8544-4cca28682d97.jpeg'),
(210, 2, 66, 'vehiSub/7616-f6e747f6-144b-4d1f-a40b-95682bbb67ea.jpeg'),
(211, 2, 67, 'vehiSub/31975-img_20190824_090023.jpg'),
(212, 2, 67, 'vehiSub/98025-img_20190824_090023.jpg'),
(213, 2, 67, 'vehiSub/15113-img_20190824_090111.jpg'),
(214, 2, 67, 'vehiSub/82485-img_20190824_090248.jpg'),
(215, 2, 67, 'vehiSub/5114-img_20190824_090311.jpg'),
(216, 2, 67, 'vehiSub/35013-img_20190821_140927.jpg'),
(217, 2, 67, 'vehiSub/28881-img_20190821_133243.jpg'),
(218, 2, 68, 'vehiSub/39315-5ea5e119-44fa-4ab9-853c-30bf5efd66d4.jpeg'),
(219, 2, 68, 'vehiSub/4168-3bf4d61b-66d4-4617-ad8e-60deef70f6ba.jpeg'),
(220, 2, 68, 'vehiSub/78638-f27521ca-02ef-47fa-ae61-fcc52c0198f4.jpeg'),
(221, 2, 72, 'vehiSub/21223-20190908_080129.jpg'),
(222, 2, 72, 'vehiSub/89068-20190908_171912.jpg'),
(223, 2, 72, 'vehiSub/43381-img-20190903-wa0028.jpg'),
(224, 2, 72, 'vehiSub/38042-20190908_171744.jpg'),
(225, 2, 74, 'vehiSub/28841-03de3107-7515-467f-96f7-478f872a02f1.jpeg'),
(226, 2, 74, 'vehiSub/60842-f5f78693-a83d-467d-8856-0e077cc83262.jpeg'),
(227, 2, 74, 'vehiSub/62970-4adad370-b090-4327-af3f-538801fd994b.jpeg'),
(228, 2, 74, 'vehiSub/12308-7ada0470-a6b1-4d2c-ab0f-719bede7d311.jpeg'),
(229, 2, 74, 'vehiSub/48353-e07094b2-5562-4f84-9813-8d89b97e9d50.jpeg'),
(230, 2, 76, 'vehiSub/45628-48367beb-fdfa-4a69-b462-d7bd9ca5fc3b.jpeg'),
(231, 2, 76, 'vehiSub/28591-48c13ee4-7eb5-43cc-8759-1fcee4a49e53.jpeg'),
(232, 2, 78, 'vehiSub/97789-70122321_439186586804658_3176852816245293056_n.jpg'),
(233, 2, 78, 'vehiSub/33578-69907994_439186643471319_4330336974452817920_n.jpg'),
(234, 2, 78, 'vehiSub/56246-69907994_439186643471319_4330336974452817920_n.jpg'),
(235, 2, 78, 'vehiSub/27548-70272391_439186626804654_6370788736061407232_n.jpg'),
(236, 2, 78, 'vehiSub/27584-70010871_439186676804649_9219074685851926528_n.jpg'),
(237, 2, 78, 'vehiSub/24853-69732905_439186670137983_2719824242471337984_n.jpg'),
(238, 2, 78, 'vehiSub/41723-69699042_439186706804646_2541288477815734272_n.jpg'),
(239, 2, 79, 'vehiSub/36685-img_20190913_151022.jpg'),
(240, 2, 79, 'vehiSub/83075-img_20190913_150857.jpg'),
(241, 2, 79, 'vehiSub/3202-img_20190913_150819.jpg'),
(242, 2, 79, 'vehiSub/24959-img-20190913-wa0015.jpg'),
(243, 2, 79, 'vehiSub/25554-img-20190913-wa0013.jpg'),
(244, 2, 79, 'vehiSub/2698-img-20190913-wa0014.jpg'),
(245, 2, 79, 'vehiSub/74959-img-20190913-wa0000.jpg'),
(246, 2, 79, 'vehiSub/77372-img-20190913-wa0011.jpg'),
(247, 2, 79, 'vehiSub/58976-img-20190913-wa0010.jpg'),
(248, 1, 42, 'landSub/21322-f50a183e-f019-48ec-bc48-7dd486256b53.jpeg'),
(249, 2, 79, 'vehiSub/74795-img-20190913-wa0007.jpg'),
(250, 2, 79, 'vehiSub/13913-img-20190913-wa0001.jpg'),
(251, 2, 79, 'vehiSub/65077-img_20190913_150819.jpg'),
(252, 2, 79, 'vehiSub/12127-img-20190912-wa0079.jpg'),
(253, 2, 79, 'vehiSub/50461-img-20190912-wa0079.jpg'),
(254, 2, 79, 'vehiSub/57469-img-20190913-wa0002_1568328172772.jpg'),
(255, 1, 43, 'landSub/80238-f0b5fd43-6501-4868-91f2-c2f49a820dd9.jpeg'),
(256, 1, 43, 'landSub/30387-09c7147b-d2e2-4e4c-8af1-496472bd81f7.jpeg'),
(257, 2, 82, 'vehiSub/77665-20190913_215340.jpg'),
(258, 2, 82, 'vehiSub/65899-20190913_215340.jpg'),
(259, 2, 82, 'vehiSub/59996-20190913_215305.jpg'),
(260, 2, 82, 'vehiSub/9132-20190913_215127.jpg'),
(261, 2, 82, 'vehiSub/72838-20190913_215440.jpg'),
(262, 2, 82, 'vehiSub/23017-20190913_223035.jpg'),
(263, 2, 82, 'vehiSub/17590-img_20190913_223138_0.jpg'),
(264, 2, 82, 'vehiSub/90716-img_20190913_222907_0.jpg'),
(265, 2, 82, 'vehiSub/21652-img_20190913_222940_0.jpg'),
(266, 2, 83, 'vehiSub/46098-32a629a5-9055-4ac6-a8dc-29021d1a1aa9.jpeg'),
(267, 2, 83, 'vehiSub/56820-88398d67-5b76-459b-89a0-c2fd7978481a.jpeg'),
(268, 2, 83, 'vehiSub/90438-44f4974e-82ac-4bd8-a331-c26a0525fb7a.jpeg'),
(269, 2, 84, 'vehiSub/61899-53b0945a-5b72-41fc-ad0b-de7c0e759d2c.jpeg'),
(270, 2, 84, 'vehiSub/85823-c93300d7-5bb9-49b8-8a32-139423626822.jpeg'),
(271, 2, 84, 'vehiSub/86726-efe5f0de-35a3-43af-9358-698a9a6b8a21.jpeg'),
(272, 2, 86, 'vehiSub/48478-0a5f9913-3115-4454-a517-5b0aee118b03.jpeg'),
(273, 4, 23, 'eleSub/84831-whatsapp-image-2019-09-06-at-3.03.57-pm.jpeg'),
(274, 4, 23, 'eleSub/95316-whatsapp-image-2019-09-06-at-2.27.25-pm.jpeg'),
(275, 4, 23, 'eleSub/4964-whatsapp-image-2019-09-06-at-3.03.51-pm.jpeg'),
(276, 4, 23, 'eleSub/65685-whatsapp-image-2019-09-06-at-3.03.59-pm(2).jpeg'),
(277, 4, 23, 'eleSub/14565-whatsapp-image-2019-09-06-at-3.03.59-pm(1).jpeg'),
(278, 4, 23, 'eleSub/52143-whatsapp-image-2019-09-06-at-3.03.58-pm.jpeg'),
(279, 4, 23, 'eleSub/12091-whatsapp-image-2019-09-06-at-3.03.54-pm.jpeg'),
(280, 4, 23, 'eleSub/21470-whatsapp-image-2019-09-06-at-3.03.56-pm.jpeg'),
(281, 4, 23, 'eleSub/57203-whatsapp-image-2019-09-06-at-3.03.59-pm.jpeg'),
(282, 4, 24, 'eleSub/25795-61c4-4em84l._sl1200_.jpg'),
(283, 4, 24, 'eleSub/48915-doogee_smart_cube_p1.jpg'),
(284, 4, 24, 'eleSub/76382-doogee_smart_cube_p1_bedroom.jpg'),
(285, 4, 24, 'eleSub/13206-doogee-p1-smart-cube-dlp-led-mini-projector-home-c.jpg'),
(286, 4, 24, 'eleSub/46512-18446762_1433083076753794_2196969521210834671_n.jpg'),
(287, 4, 24, 'eleSub/31764-hkpamjdgp1_0cff370ab32fdeb5ca48e07b29f333e9.jpg'),
(288, 4, 24, 'eleSub/19600-hkpamjdgp1_0f00d8a66613d33fe6a6f700246e8333.jpg'),
(289, 4, 24, 'eleSub/63549-hkpamjdgp1_5d07440d22c4923ccff054a74abf07bb.jpg'),
(290, 4, 24, 'eleSub/9092-hkpamjdgp1_9f7be0f2719a2ee3b0eaa9fff12168a2.jpg'),
(291, 4, 24, 'eleSub/85465-hkpamjdgp1_80c5bdc416cec7821d2ac0d9c892b0c9.jpg'),
(292, 4, 24, 'eleSub/67630-hkpamjdgp1_92e780e2dd9a866a818e6d23b55c6fa8.jpg'),
(293, 4, 24, 'eleSub/63549-hkpamjdgp1_93dfce72489fcccb38a68696f1860d9b.jpg'),
(294, 4, 24, 'eleSub/87866-hkpamjdgp1_98d542407a2dc64e4cb1178a03c4726d.jpg'),
(295, 4, 24, 'eleSub/67276-hkpamjdgp1_347f795d5e78f2f291402f90be8aa48f.jpg'),
(296, 4, 24, 'eleSub/86057-hkpamjdgp1_3485aaaaf74f9d83db017c2de91d75da.jpg'),
(297, 4, 24, 'eleSub/62951-hkpamjdgp1_18738b60a27346a5a1cd7a674a75caf3.jpg'),
(298, 4, 24, 'eleSub/82445-hkpamjdgp1_673141f0e30d067ca1572053c842a507.jpg'),
(299, 4, 24, 'eleSub/23820-hkpamjdgp1_8871904b340541129be681426f204947.jpg'),
(300, 4, 24, 'eleSub/22157-hkpamjdgp1_b0d55f52a72ce67424d56e8dbe8ff231.jpg'),
(301, 4, 24, 'eleSub/27386-hkpamjdgp1_b3ba731aa135e7dbe5ea35cd0b4b39f1.jpg'),
(302, 4, 24, 'eleSub/74247-hkpamjdgp1_e6d0760a25c4b29252171bd658c0e10e.jpg'),
(303, 4, 24, 'eleSub/20461-hkpamjdgp1_e253d9de9812fe0a293ac9650ecd86b4.jpg'),
(304, 4, 24, 'eleSub/98531-hkpamjdgp1_e266d75fff14013bfbb120dde88af6c1.jpg'),
(305, 4, 24, 'eleSub/85491-hkpamjdgp1_fa8267777581c84d803f10b79a1d2e4e.jpg'),
(306, 4, 24, 'eleSub/92432-pk.jpg'),
(307, 4, 24, 'eleSub/24082-doogee-p1-smart-mini-led-projector-hd-dlp-ram-1g-rom-8g-video-projector-quad-core.jpg_640x640.jpg'),
(308, 2, 87, 'vehiSub/92633-b2e1e212-bb97-4f0a-b016-c15ee83efc24.jpeg'),
(309, 2, 87, 'vehiSub/50921-f0afc40f-6bb7-4970-b55f-afd61b438f3b.jpeg'),
(310, 2, 87, 'vehiSub/66306-c107d4f1-ff63-4231-8f22-9232f8525fb9.jpeg'),
(311, 2, 88, 'vehiSub/79862-img20190915090953.jpg'),
(312, 2, 88, 'vehiSub/12336-img20190915091016.jpg'),
(313, 5, 50, 'residentialSub/18977-39b16445-0646-4981-a436-a64e51696a41.jpeg'),
(314, 5, 52, 'residentialSub/33348-69880886_2134117740026619_4354315794046255104_n.jpg'),
(315, 5, 52, 'residentialSub/27684-69956734_518909195319231_4283284881875664896_n.jpg'),
(316, 5, 52, 'residentialSub/80236-70007329_236418727275420_4022921636519870464_n.jpg'),
(317, 5, 52, 'residentialSub/62336-70880744_748791272246273_4469130839782850560_n.jpg'),
(318, 2, 89, 'vehiSub/81398-f7e67688-7a5e-445f-8702-11d291fc4a79.jpeg'),
(319, 2, 89, 'vehiSub/10620-e1e83cd0-6263-4504-9c31-d047ec611501.jpeg'),
(320, 2, 89, 'vehiSub/99738-fe76ad7f-b4bb-44a2-a08e-908621f85af5.jpeg'),
(321, 2, 90, 'vehiSub/39716-2325e623-739a-4c0f-b69e-6a540c76f729.jpeg'),
(322, 2, 90, 'vehiSub/91967-5ba969b3-c1d8-43d5-ae0c-820e111d5de6.jpeg'),
(323, 2, 92, 'vehiSub/25021-087221b3-8e36-4612-9b64-56851f610581.jpeg'),
(324, 2, 92, 'vehiSub/12740-db179f7d-64db-45ed-93a7-9dd55ff1cf74.jpeg'),
(325, 3, 3, 'commercialSub/31581-28bd015f-d521-4f96-8800-f33c52659b15.jpeg'),
(326, 2, 93, 'vehiSub/80946-f15596ae-1d7b-4d58-9775-b4760b120022.jpeg'),
(327, 2, 93, 'vehiSub/19067-5995720a-de88-45a2-8df7-80b3ff2b6787.jpeg'),
(328, 5, 53, 'residentialSub/62047-20190916_071644.png'),
(329, 2, 94, 'vehiSub/86033-64993986-c0b9-4631-903f-0b9e0630ba84.jpeg'),
(330, 2, 94, 'vehiSub/11759-cdb7131b-4bc1-44b7-a247-94bb45f46841.jpeg'),
(331, 2, 95, 'vehiSub/33342-07e480bc-bf09-44e0-8dd2-d5f7aee04289.jpeg'),
(332, 2, 95, 'vehiSub/75224-b9dd8809-36cb-4c8f-9e87-72a3de1ea1a7.jpeg'),
(333, 2, 96, 'vehiSub/89086-1718b5a2-242d-4712-898a-7e630420cf4a.jpeg'),
(334, 2, 96, 'vehiSub/70214-a3fc1438-2805-4104-8f17-e2ea5247319a.jpeg'),
(335, 2, 96, 'vehiSub/4008-f30dddfa-7e47-4880-86b5-34af1daf2b41.jpeg'),
(336, 2, 96, 'vehiSub/37852-19074dc2-ed74-4c03-8d06-8db0db067822.jpeg'),
(337, 2, 96, 'vehiSub/22955-96186e23-f50b-4883-aa21-046b73e0d451.jpeg'),
(338, 2, 96, 'vehiSub/63557-43e1ee35-082d-41d8-a45c-004295681505.jpeg'),
(339, 2, 96, 'vehiSub/58747-8058295e-cd63-41c4-bf16-e44683b7bb5d.jpeg'),
(340, 2, 96, 'vehiSub/56763-92e00e7f-9313-44d4-b20f-4d1a90549936.jpeg'),
(341, 2, 96, 'vehiSub/46285-632e6a75-ca7a-4936-bebd-b72515662ab3.jpeg'),
(342, 5, 54, 'residentialSub/52899-65a5ac80-deed-4bfc-9641-08d6364effd3.jpeg'),
(343, 5, 54, 'residentialSub/1865-d8d6c5ef-8154-4f0e-8066-410ede5d9235.jpeg'),
(344, 2, 100, 'vehiSub/57999-05191a41-16e7-44c8-a29a-4402c213ae88.jpeg'),
(345, 2, 100, 'vehiSub/70083-ce86c8bd-05b8-4b67-a203-23475effda0e.jpeg'),
(346, 2, 100, 'vehiSub/78142-3ca7033c-1eda-4c75-85f0-bf758fa39de9.jpeg'),
(347, 2, 101, 'vehiSub/62640-e84ca366-4605-4968-8593-5a7b3bb329e2.jpeg'),
(348, 2, 101, 'vehiSub/46825-4e93790e-285f-4f2d-9236-d4106cc6a213.jpeg'),
(349, 2, 101, 'vehiSub/86658-1c163832-e5ff-444b-8d39-8b237927d39c.jpeg'),
(350, 2, 101, 'vehiSub/18235-b7cf7ff5-185d-4969-a965-39cba68d7812.jpeg'),
(351, 6, 26, 'proSub/97521-2019-08-28-15-11-44-105.jpg'),
(352, 2, 102, 'vehiSub/35237-6ae9ef4e-52bb-4004-8311-a5494b306922.jpeg'),
(353, 2, 103, 'vehiSub/25690-5135d49f-5da8-444d-87cc-63286f0f3587.jpeg'),
(354, 2, 103, 'vehiSub/71789-9c73b748-a865-459b-9c4f-b53950524950.jpeg'),
(355, 2, 103, 'vehiSub/40126-231709fb-3a08-4c85-937e-0f02444e9409.jpeg'),
(356, 2, 103, 'vehiSub/47205-4598dee6-1ad3-4db3-ad7a-cd08c691afcb.jpeg'),
(357, 2, 103, 'vehiSub/77784-b8daf8f9-77c0-451d-be7a-b997fc61b45b.jpeg'),
(358, 5, 55, 'residentialSub/11858-71053132_2508228552608706_4560836685134299136_n.jpg'),
(359, 5, 55, 'residentialSub/31330-70083199_349331419281630_8484719210486824960_n.jpg'),
(360, 5, 55, 'residentialSub/5443-70087305_530944727712771_4770068993371275264_n.jpg'),
(361, 5, 55, 'residentialSub/39529-70247361_448057209136330_9030125364965277696_n.jpg'),
(362, 5, 55, 'residentialSub/7281-70388935_1319794921533943_3079848299805540352_n.jpg'),
(363, 5, 55, 'residentialSub/2805-70699155_876171409429732_1065702925122142208_n.jpg'),
(364, 5, 55, 'residentialSub/18728-70792903_2151045688522916_8656048187523465216_n.jpg'),
(365, 5, 55, 'residentialSub/11132-71053132_2508228552608706_4560836685134299136_n.jpg'),
(366, 5, 55, 'residentialSub/14331-71277121_397544140960887_24203029771190272_n.jpg'),
(367, 5, 56, 'residentialSub/49900-71277121_397544140960887_24203029771190272_n.jpg'),
(368, 5, 56, 'residentialSub/59356-70087305_530944727712771_4770068993371275264_n.jpg'),
(369, 5, 56, 'residentialSub/8801-70247361_448057209136330_9030125364965277696_n.jpg'),
(370, 5, 56, 'residentialSub/55590-70388935_1319794921533943_3079848299805540352_n.jpg'),
(371, 5, 56, 'residentialSub/24228-70699155_876171409429732_1065702925122142208_n.jpg'),
(372, 5, 56, 'residentialSub/11176-70792903_2151045688522916_8656048187523465216_n.jpg'),
(373, 5, 56, 'residentialSub/78864-71053132_2508228552608706_4560836685134299136_n.jpg'),
(374, 2, 106, 'vehiSub/4123-34c1d791-59ea-48a8-b12f-e7a27bddb891.jpeg'),
(375, 2, 106, 'vehiSub/71847-3a995ffb-2850-4020-8465-6c1307f15c0e.jpeg'),
(376, 2, 106, 'vehiSub/23809-bebf65d4-f60f-47b2-b462-e78e0d00ebe4.jpeg'),
(377, 2, 106, 'vehiSub/88369-ed4657f4-b946-4e2d-95d9-7a1e2b4c8958.jpeg'),
(378, 2, 106, 'vehiSub/27761-84d54895-c0b6-4083-b772-2bb3e5359c1a.jpeg'),
(379, 2, 107, 'vehiSub/56588-62441cad-42a0-4f37-b589-36ff2a18f3ac.jpeg'),
(380, 2, 107, 'vehiSub/11656-b1f70c5f-646f-46b9-abf5-8ca9e4cb8c5c.jpeg'),
(381, 2, 107, 'vehiSub/54662-3f04857a-eb0d-4398-a287-b649c9bd00c2.jpeg'),
(382, 2, 107, 'vehiSub/73915-510b6563-6165-435b-ad95-094710ca6941.jpeg'),
(383, 2, 107, 'vehiSub/96108-49f53444-943b-43f4-80cb-4bfc0bb1fe80.jpeg'),
(384, 2, 110, 'vehiSub/40430-cc515294-6ead-42e8-872c-d92dc90f743d.jpeg'),
(385, 2, 110, 'vehiSub/93008-a2e5f478-c05d-47cf-85d6-e551515afca8.jpeg'),
(386, 2, 111, 'vehiSub/52962-918d1c51-4a47-46a9-8a1a-ffd078982f5a.jpeg'),
(387, 2, 111, 'vehiSub/7434-022813f6-0152-46d3-9c50-dfc3f60476e0.jpeg'),
(388, 2, 111, 'vehiSub/6603-1ca0a950-25ce-4d10-8692-4bb25867d03f.jpeg'),
(389, 2, 112, 'vehiSub/9342-ab346b47-80a5-486c-94e7-815116375f74.jpeg'),
(390, 2, 112, 'vehiSub/36544-568bfa72-1458-4f6b-bc33-eed75b611a0e.jpeg'),
(391, 2, 112, 'vehiSub/45635-b47fd442-8a84-4c7b-8f71-829e846b8919.jpeg'),
(392, 2, 112, 'vehiSub/44885-c88149eb-1b78-4c67-90c7-bcfa6d58a2c5.jpeg'),
(393, 5, 57, 'residentialSub/21376-70031570_481371579113277_6060280441854754816_n.jpg'),
(394, 1, 49, 'landSub/41143-img-20190918-wa0006.jpg'),
(395, 1, 49, 'landSub/71926-img-20190918-wa0007.jpg'),
(396, 1, 49, 'landSub/36123-img-20190918-wa0008.jpg'),
(397, 1, 49, 'landSub/45262-img-20190918-wa0009.jpg'),
(398, 1, 49, 'landSub/58520-img-20190918-wa0010.jpg'),
(399, 1, 49, 'landSub/75572-img-20190918-wa0010.jpg'),
(400, 1, 49, 'landSub/9760-img-20190918-wa0011.jpg'),
(401, 2, 113, 'vehiSub/83342-7c982cfc-67e7-47b5-b40b-537274e422a5.jpeg'),
(402, 2, 113, 'vehiSub/25928-6ab7337b-c335-4928-bd38-a8daee6c45b7.jpeg'),
(403, 2, 113, 'vehiSub/38706-015894bc-ef43-46a0-af01-51ea3baac48a.jpeg'),
(404, 2, 113, 'vehiSub/59590-f7522d86-d2c1-46f6-89b6-d963b9fbfde1.jpeg'),
(405, 2, 113, 'vehiSub/56822-a4202f34-d6c8-436f-9e0d-54f77ca60661.jpeg'),
(406, 2, 113, 'vehiSub/24340-c21950e8-5d4e-4f35-b184-5d5f42a9f195.jpeg'),
(407, 2, 116, 'vehiSub/71535-c259ecb6-87b0-4924-b9ce-ca37df66845e.jpeg'),
(408, 2, 116, 'vehiSub/34760-b0243bfa-f558-4eff-aeff-c482c2a05f6d.jpeg'),
(409, 2, 118, 'vehiSub/57600-img_20190320_070647.jpg'),
(410, 2, 118, 'vehiSub/99284-img_20190320_070703.jpg'),
(411, 2, 120, 'vehiSub/79399-2d5b4865-27e7-4728-8691-7738fd3d225b.jpeg'),
(412, 2, 120, 'vehiSub/49312-d4d4bf90-6456-4486-9d34-023b9bbde043.jpeg'),
(413, 2, 121, 'vehiSub/74519-5a6ef9ae-f66e-49a5-8389-3ffd30f51baa.jpeg'),
(414, 2, 121, 'vehiSub/50492-6346d136-0c98-4818-97b5-8dd90bd7ae19.jpeg'),
(415, 2, 122, 'vehiSub/52724-6c6a8643-9176-4f88-8f8c-6aefb37c0c1a.jpeg'),
(416, 2, 122, 'vehiSub/62084-aad4eb88-819b-4556-be9a-c618a94b0b1b.jpeg'),
(417, 2, 122, 'vehiSub/32780-840f0050-bd53-4af7-a511-034a1dafed28.jpeg'),
(418, 2, 122, 'vehiSub/9914-9739c3a3-70c2-423a-b529-fb4542d637aa.jpeg'),
(419, 2, 123, 'vehiSub/6226-f03262a7-4ce1-4edf-a969-888f8d353a86.jpeg'),
(420, 2, 124, 'vehiSub/76109-b45e4db1-8aec-4623-a408-143baeed6107.jpeg'),
(421, 2, 124, 'vehiSub/4365-af04401a-2484-4f50-89b9-44dfbe219750.jpeg'),
(422, 2, 124, 'vehiSub/63638-19198663-c430-4dca-bd77-5aec027cac20.jpeg'),
(423, 2, 125, 'vehiSub/48624-14caf57c-85d8-4821-a6cc-dbc7a23d27b0.jpeg'),
(424, 2, 125, 'vehiSub/89959-44d2d30b-2a5d-4a21-8091-86649fb0e7f9.jpeg'),
(425, 2, 125, 'vehiSub/90203-5d25babe-21fa-49fa-993f-7462b2ec4823.jpeg'),
(426, 2, 125, 'vehiSub/90682-4eb082ea-696b-4c87-91f9-fd3e3aa2cf32.jpeg'),
(427, 2, 125, 'vehiSub/21764-1e10fff4-2c60-483d-8461-d45c157a4100.jpeg'),
(428, 2, 125, 'vehiSub/35727-4a9332b6-7632-4705-aa78-4de66a3d3c8f.jpeg'),
(429, 2, 127, 'vehiSub/42342-d1352af1-c790-42d1-bd45-a31f83ce26b5.jpeg'),
(430, 2, 127, 'vehiSub/60761-773bdca2-c974-41b3-a449-e58a65b5179a.jpeg'),
(431, 2, 127, 'vehiSub/11637-81f14638-76be-4b73-a509-374d774688e1.jpeg'),
(432, 2, 129, 'vehiSub/33121-32a73cab-8d69-4ca2-bc26-e8ab3b5f4d3e.jpeg'),
(433, 2, 129, 'vehiSub/50326-103aa0c6-9747-462c-946b-5b7d34373cd0.jpeg'),
(434, 2, 129, 'vehiSub/19576-e6b1998b-4c47-4507-a724-bb8b849d2940.jpeg'),
(435, 2, 129, 'vehiSub/51590-cf2b93e0-b453-4c6d-b15d-e0f7fc5a0660.jpeg'),
(436, 2, 129, 'vehiSub/38458-512d0097-4e59-4676-aae3-e25a7878e233.jpeg'),
(437, 2, 129, 'vehiSub/36274-1180783f-ae38-4599-92c8-5d1a4601898a.jpeg'),
(438, 1, 51, 'landSub/39728-9ba3599a-fed3-453e-b17a-acfd83c0b524.jpeg'),
(439, 2, 131, 'vehiSub/3916-img-20190918-wa0073.jpg'),
(440, 2, 133, 'vehiSub/67488-d7206976-064c-41d6-b424-6340f11f8b58.jpeg'),
(441, 2, 133, 'vehiSub/39803-1843f344-5107-47e0-a80d-051d836b7c2f.jpeg'),
(442, 2, 133, 'vehiSub/32599-53a8df06-d758-4238-b0c5-4aa5d8b36383.jpeg'),
(443, 2, 133, 'vehiSub/71467-62fc2c76-de55-410b-b19b-956b2286207e.jpeg'),
(444, 2, 133, 'vehiSub/54088-82189bf7-a4a3-44bf-9daf-bf2f04c83f65.jpeg'),
(445, 2, 133, 'vehiSub/43027-e43a3279-a9dc-416d-88ca-f50032762108.jpeg'),
(446, 5, 60, 'residentialSub/6061-70451060_562831150949607_4829239787145658368_n.jpg'),
(447, 5, 60, 'residentialSub/72840-70649796_1120794888117435_8877115793540644864_n.jpg'),
(448, 5, 60, 'residentialSub/94038-70815733_675238742958383_1908231206286131200_n.jpg'),
(449, 2, 135, 'vehiSub/11458-17489441-bce2-4612-aa65-2f1dc75ba825.jpeg'),
(450, 2, 135, 'vehiSub/29190-de378234-26bd-46b6-b570-bf4b9ec8c25d.jpeg'),
(451, 2, 139, 'vehiSub/41725-65f0f704-7f81-4ee3-83e6-926ea782c4b9.jpeg'),
(452, 2, 139, 'vehiSub/24135-4326b964-5357-4c51-ac95-39f45463a0c9.jpeg'),
(453, 2, 140, 'vehiSub/67762-img-20190922-wa0054.jpg'),
(454, 2, 142, 'vehiSub/1834-img-20190922-wa0187.jpg'),
(455, 2, 142, 'vehiSub/82991-img-20190922-wa0187.jpg'),
(456, 2, 142, 'vehiSub/77851-img_20190922_224642.jpg'),
(457, 2, 142, 'vehiSub/53908-img-20190922-wa0186.jpg'),
(458, 2, 142, 'vehiSub/37809-img-20190922-wa0183.jpg'),
(459, 2, 142, 'vehiSub/57594-img-20190922-wa0184.jpg'),
(460, 2, 142, 'vehiSub/62815-img_20190922_224624.jpg'),
(461, 2, 143, 'vehiSub/47653-img-20190922-wa0168.jpg'),
(462, 2, 143, 'vehiSub/31442-img-20190922-wa0167.jpg'),
(463, 2, 143, 'vehiSub/43350-img-20190922-wa0167.jpg'),
(464, 1, 58, 'landSub/95764-313c3b99-0644-4ac3-8843-4059536d534a.jpeg'),
(465, 1, 58, 'landSub/54458-88fbadf6-04bb-4313-8e5f-38ce2fce6fd4.jpeg'),
(466, 2, 144, 'vehiSub/22411-68507ab6-0c6f-4338-840d-0887e87a618d.jpeg'),
(467, 2, 145, 'vehiSub/31494-bdd179d4-d935-43fa-beac-04807d5895f1.jpeg'),
(468, 2, 145, 'vehiSub/10840-87dc0b4d-16a2-4671-ae8b-4e70db3002d8.jpeg'),
(469, 2, 145, 'vehiSub/36983-31f10edb-b307-46c8-a3a7-f6e4b541ddf6.jpeg'),
(470, 2, 145, 'vehiSub/13515-d60bfcd2-d8c5-4ded-bb48-f4ce9bd4ff40.jpeg'),
(471, 2, 145, 'vehiSub/50248-dac27e18-63c9-4f6a-8d59-60c4d5ce6673.jpeg'),
(472, 2, 147, 'vehiSub/75600-3188cc1e-9dea-4c17-b46f-5cbd3f388748.jpeg'),
(473, 2, 147, 'vehiSub/42650-18aeff48-6c64-4387-a715-742f8a1bcede.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `superlogin`
--

CREATE TABLE `superlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `superlogin`
--

INSERT INTO `superlogin` (`id`, `username`, `password`) VALUES
(1, 'super', '4f312c0718fb97e0df2b8baad0265049');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `unit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit`) VALUES
(1, 'cent'),
(2, 'acre'),
(3, 'hectare'),
(4, 'sq.ft.'),
(5, 'sq.mtr.');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--
-- Error reading structure for table directdeal.userdetails: #1356 - View 'directdeal.userdetails' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them
-- Error reading data for table directdeal.userdetails: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM `directdeal`.`userdetails`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `fkUserId` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `userType` int(11) NOT NULL,
  `isValid` int(11) NOT NULL,
  `isBlocked` int(11) NOT NULL,
  `isProfileCompleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `fkUserId`, `username`, `password`, `userType`, `isValid`, `isBlocked`, `isProfileCompleted`) VALUES
(1, 1, 'saxon', '441371ab04ce22aa7b0b1c250442e30c', 1, 1, 0, 1),
(2, 3, 'sheriffblathur@gmail.com', '7440a8b36ee00bb1a5d163ddaf991927', 1, 1, 0, 1),
(3, 4, 'SHERIFF BLATHUR', '7440a8b36ee00bb1a5d163ddaf991927', 1, 1, 0, 0),
(4, 5, 'SHERIFF BLATHUR', '7440a8b36ee00bb1a5d163ddaf991927', 1, 1, 0, 0),
(5, 6, 'saxonsunny@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 1, 1, 0, 0),
(6, 9, 'ysrtrix381@gmail.com', '077a3c635fd4ba152b4d7ae35646c28a', 1, 1, 0, 1),
(7, 10, 'Nadeayp@gmail.com', '86d18516286533b0b63b96210813fd06', 1, 1, 0, 1),
(8, 11, 'acsuhail3@gmail.com', '5c0568b5c498ab76c54ef2d7918ca8b3', 1, 1, 0, 1),
(9, 12, 'mstkbltr@gmail.com ', '2330f5e9daabf1fd5db3ae5f86f89ab5', 1, 1, 0, 1),
(11, 14, '8078467512', '441371ab04ce22aa7b0b1c250442e30c', 1, 1, 0, 0),
(12, 15, 'fsalman646@gmail.com', '81e8bd27a68572282c1447560711a313', 1, 1, 0, 0),
(13, 16, 'vvyoosuf@gmail.com', '47866774d442ef84007fc336e6bb851a', 1, 1, 0, 1),
(14, 17, '8078467512', '441371ab04ce22aa7b0b1c250442e30c', 1, 1, 0, 0),
(15, 18, 'Tonyj9202@gmail.com', 'd531a88dfe45e5f6c6d850e1758ab1e3', 1, 1, 0, 0),
(16, 19, '9048534998', 'b2cc34b21e2e73dfdfe703562b210817', 1, 1, 0, 1),
(17, 20, 'sumesh85in@gmail.com', '2d0cac1b87699da50b07937dcee15a05', 1, 1, 0, 1),
(19, 22, '9995104204', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 1, 0, 1),
(20, 23, 'Vppalora@gmail.com ', 'fc7e690a6a6685492807f9ddebf0b23d', 1, 1, 0, 0),
(21, 24, 'autospotcars@gmail.com', 'c50da3d61cc7e05a3afd13fc003086b7', 1, 1, 0, 1),
(22, 25, 'Byjutb@yahoo.com', '327fd9c3f168102bda38a0c974bf6929', 1, 1, 0, 0),
(23, 26, 'jaseelirikkur@gmail.com ', 'b27c39311121992bf4931f31f7b58fd8', 1, 1, 0, 0),
(24, 27, 'irsdtp90@gmail.com', 'a9fe21aab843a9e9c3f3cc2c697d5171', 1, 1, 0, 1),
(25, 28, 'fasildiya007@gmail.com', '3fc0a7acf087f549ac2b266baf94b8b1', 1, 1, 0, 1),
(26, 29, 'anishandrews007@gmail.com', '3f358d569407ff992b991ef53834a8f3', 1, 1, 0, 0),
(27, 30, '9744723304', 'fb66dee153a284bd8a7b5b57db289288', 1, 1, 0, 1),
(28, 31, '0559775850', '4d74ea6367d203e53b0f0a1bb33add86', 1, 1, 0, 1),
(29, 32, '9447687916', 'd8d407b418191d53d9350986de1eaedb', 1, 1, 0, 1),
(30, 33, '9744068073', '601394f8291d827dc6de847cb0bea0ab', 1, 1, 0, 1),
(31, 34, '9446579058', 'ce05877c69f244e18b026a3e88920703', 1, 1, 0, 1),
(32, 35, 'rasheedthozhiyoor@gmail.com', 'cc78e0a858d686fe833ff7340baa8b54', 1, 1, 0, 1),
(33, 36, '9895846663', '4665c276fc81adf9c96fe243cd902d99', 1, 1, 0, 1),
(34, 37, 'arshadblathur7227@gmail.com', '94fa9e088c3c6ab0c90e61d8ae9616a8', 1, 1, 0, 1),
(35, 38, 'nysam7788@gmail.com', '4c9a07ea09f236183e10be27d70d535f', 1, 1, 0, 1),
(36, 39, 'riyas7panakkadan@gmail.com', 'aecd834b2a445412cd204855ff5f90d3', 1, 1, 0, 1),
(37, 40, '+97450532721', 'fcea920f7412b5da7be0cf42b8c93759', 1, 1, 0, 1),
(38, 41, '8943252894', '9cbb6aebcf5ae14a9248b4c08165212e', 1, 1, 0, 1),
(39, 42, 'Shakkisarphi', '68c22a3ebd730e26c492564883690969', 1, 1, 0, 0),
(40, 43, '00966543465431', '249f679014964d417e4ae522cdf8028d', 1, 1, 0, 0),
(41, 44, '9747336629', '25d55ad283aa400af464c76d713c07ad', 1, 1, 0, 1),
(42, 45, '9972717570', 'ccc9229ed7022a41951af5f08eb24339', 1, 1, 0, 1),
(43, 47, 'bibeeshnair86@gmail.com', '01918ab3649caa62931977387743d043', 1, 1, 0, 0),
(44, 48, 'Noushadkp23@gmail.com ', '75fa6ecd0e2e73e643c55c0f77a239b5', 1, 1, 0, 1),
(45, 49, 'Raaf23@gmail.com', 'd0602f17b9815bd62f133f04d9911dbd', 1, 1, 0, 1),
(46, 50, 'tpsuhail3@gmail.com', 'd744d82c42c23ecda1c52fa87bc254ea', 1, 1, 0, 1),
(47, 51, '8156829840', 'c214a448363c081126f55ac051d0cedc', 1, 1, 0, 1),
(48, 52, 'inouttirur@gmail.com', 'b24a04e15d197d14f4daae7c060dd751', 1, 1, 0, 1),
(49, 53, 'Clt.gafoor7@gmail.com', 'cadefb626b20d2d1fe4401fb0743836b', 1, 1, 0, 0),
(50, 54, 'Moideen1204@gmail.com', 'f23b3df742bb9fbf6bbf30a05150ac19', 1, 1, 0, 1),
(51, 55, 'ignesiousseeniya@gmail.com', '9d5c1d359d1dac03489986cbedfa0839', 1, 1, 0, 1),
(52, 56, 'Jomythayyil@gmail.com ', '465306bee459fd0e482d65169015a330', 1, 1, 0, 1),
(53, 57, 'Javadpopular@gmail.com ', '46b4f990f13cdb77ca8abc53182576e3', 1, 1, 0, 0),
(54, 58, 'Nivyesh2006@gmail.com', '1429ebc84fba90b98da6d9a8327863fe', 1, 1, 0, 1),
(55, 59, '9895810198', '2cda0470e85b70835515f7bb0644fe2c', 1, 1, 0, 1),
(56, 60, '8136877685', '327d9878781ddbd9eb0163a1d36cdb78', 1, 1, 0, 1),
(57, 61, 'vop.act@gmail.com', 'c444f584b72dce9037eb7f098a637a21', 1, 1, 0, 1),
(58, 62, '9447405030', '25dce012c24460df955a88ea24151bd1', 1, 1, 0, 1),
(59, 63, '9995980784', 'dbe80d18b14bff6963712b429f088807', 1, 1, 0, 1),
(60, 64, '9169997000', '6750bc1e0c8bab909eb40e8d1088a8fc', 1, 1, 0, 1),
(61, 65, '9745905777', '6f431ff2aaebbdf4ae8972a5b94385d3', 1, 1, 0, 1),
(62, 66, '7594086599', 'fb88c701d43f0bd590390610e999ac5f', 1, 1, 0, 0),
(63, 67, '00917356512736', 'e4d983edc563b4e9c718423059d31a57', 1, 1, 0, 1),
(64, 68, '8589803225', 'e5004120cea837981d2e361182746bf4', 1, 1, 0, 1),
(65, 69, 'hibaz2003@gmail.com', '50ea6a91646f330cfb09545ad31f75ae', 1, 1, 0, 1),
(66, 70, 'hibaz2003@gmail.com', '50ea6a91646f330cfb09545ad31f75ae', 1, 1, 0, 0),
(67, 71, 'udayme2002@yahoo.com', '07193e4810dbb0f3b64777f05289ec42', 1, 1, 0, 0),
(68, 72, '9947057678', 'e9bc0e13a8a16cbb07b175d92a113126', 1, 1, 0, 1),
(69, 73, 'ayoob303@yahoo.com', 'c754ad7c35391f39438ca54000d55c6d', 1, 1, 0, 1),
(70, 74, '9388849992', '5d5cf0d006578902a0d50ff33abc2d6f', 1, 1, 0, 1),
(71, 75, '8943478718', '7694f4a66316e53c8cdd9d9954bd611d', 1, 1, 0, 1),
(72, 76, '9383413008', '68bbc090fec57c78385c2a11913a3361', 1, 1, 0, 1),
(73, 77, '9495356157', 'c7beb1305266c6068e2d52efb9de7d27', 1, 1, 0, 1),
(74, 78, '8396826147', '4b0a379290561420b5326528d3a07a91', 1, 1, 0, 1),
(75, 79, 'y.m.flamngo@gmail.com', 'a674bfb3992b41d6ba48719164953762', 1, 1, 0, 0),
(76, 80, '8113941373', 'bc6caf4ad99e23166bf25c24a6436fae', 1, 1, 0, 1),
(77, 81, '7592883966', '08bb82d2fb58e973f317f344050a3c0f', 1, 1, 0, 1),
(78, 82, '9747740923', '3a04f156865427fb883fbb3f12fee835', 1, 1, 0, 1),
(79, 83, '9495938603', 'ea9455fbba2ad38d1e6945def8857f22', 1, 1, 0, 1),
(80, 84, '9995553002', 'bd1e5f9c922e3eaf48a69c6475d50d6d', 1, 1, 0, 1),
(81, 85, '9645310011', '7ecf19c5677c4639673c2bdf9a813d35', 1, 1, 0, 1),
(82, 86, '8921114040', 'b13a2b774ef720f9b526c34a572eafd2', 1, 1, 0, 1),
(83, 87, '9747369548', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, 0, 1),
(84, 88, '8921566518', '6325ae85d932504df0319223a2d5e7e7', 1, 1, 0, 1),
(85, 89, 'babcrealestate@gmail.com ', 'b14391bf4f07fbbf2a2797c76545683e', 1, 1, 0, 1),
(86, 90, '8086726556', '2784a3203fed8e8cc34085a946ad216f', 1, 1, 0, 1),
(87, 91, '7511172017', '6f62fdf21de3c671876fdcce85e141c9', 1, 1, 0, 1),
(88, 92, '9744474769', 'd210d08fc1d27cbafc12aca949c5f75b', 1, 1, 0, 1),
(89, 93, 'Muhammedfasil516@gmail.com', '4fa852d2901851bf19527eda2de7839b', 1, 1, 0, 1),
(90, 94, '7293177057', 'f4524b3bc2ed6efcc7d2afbfab7dbdeb', 1, 1, 0, 1),
(91, 95, 'lijoejoy@gmail.com', '42d014cc2fd3fad6953259b2ba51999b', 1, 1, 0, 1),
(92, 96, '9947861542', 'e807f1fcf82d132f9bb018ca6738a19f', 1, 1, 0, 1),
(93, 97, 'Vasilchatheri18@gmail.com ', 'daa18231cc2dc350899dbff3b1101ccd', 1, 1, 0, 1),
(94, 98, 'rajin001@gmail.com', '1ff3adf83654c9039687d51603197744', 1, 1, 0, 0),
(95, 99, '8089383806', 'ba760f82c3d57ee300e15d134a6d5087', 1, 1, 0, 1),
(96, 100, '9847390911', 'e108df746deb6ef65bb591cd3bc53a80', 1, 1, 0, 1),
(97, 101, 'aabdurahmanpp@gmail.com', '9a9d076e8af050dd3f4660d5c1535acb', 1, 1, 0, 1),
(98, 102, 'romymtony@gmail.com', 'c50672216e6be50f327c7df719784fe3', 1, 1, 0, 1),
(99, 103, '8075074492', '079b22af246f03e7b2fb2ee994ecbd05', 1, 1, 0, 1),
(100, 104, '9446633665', '3c33227a0f87ad162da12e1751751ee9', 1, 1, 0, 0),
(101, 105, '9446633665', '3c33227a0f87ad162da12e1751751ee9', 1, 1, 0, 0),
(102, 106, '9895073724', '35122f25fbb0948b08e953bbbda131b2', 1, 1, 0, 0),
(103, 107, '8606562872', 'bbc767986a31bbf0cce8b9361462e3ba', 1, 1, 0, 0),
(104, 108, '7025581218', '36363de156ac22843ab05680ac149cb6', 1, 1, 0, 1),
(105, 109, '7025788787', '49ef39a45e24632b730bb9d1b2d4e184', 1, 1, 0, 0),
(106, 110, '00919544202220', 'daa9e234370555f657dd3e9d9672e5e9', 1, 1, 0, 0),
(107, 111, '9447460432', '5824935c4e5bbe2a68362df796a8debb', 1, 1, 0, 0),
(108, 112, '9980474599', 'ff296782a088a398d181890689946ce0', 1, 1, 0, 0),
(109, 113, '+919447372748', '45f55f21fbd3a589bc5ff582dbcfb412', 1, 1, 0, 1),
(110, 114, 'dipinpi007@gmail.com', 'a7c0e4f6dbe4acc30bff5a9b3b12e2fb', 1, 1, 0, 0),
(111, 115, '8943231375', '8764b6ccd42fbd00e85e74783244eb9e', 1, 1, 0, 1),
(112, 116, '9633489968', '81dc9bdb52d04dc20036dbd8313ed055', 1, 1, 0, 1),
(113, 117, '7907112411', 'ec638bd488e415ff8986f8f218b85897', 1, 1, 0, 1),
(114, 118, 'vnoykthomas@gmail.com', 'f2209a10f64953b8fc313639e0db1694', 1, 1, 0, 1),
(115, 119, '9562303303', '2927f64ac6135fdb1cbea8ddfd602872', 1, 1, 0, 1),
(116, 120, '7356676766', 'f27b8d0ef1cf7308c10e36d3ccce5552', 1, 1, 0, 1),
(117, 121, '9995299954', '0602940f23884f782058efac46f64b0f', 1, 1, 0, 1),
(118, 122, '9744507035', 'df6e8417a7aa6aef4143f9aaef8e79c9', 1, 1, 0, 1),
(119, 123, 'alavipokkadan@gmail.com', 'cf5f896bbe7f019ab1fe44959e05c631', 1, 1, 0, 1),
(120, 124, '9061654581', 'bca63b6f9814a32dbada0aa3af758041', 1, 1, 0, 0),
(121, 125, '9048333105', '5166c77f44e6d93040741e815816c448', 1, 1, 0, 1),
(122, 126, '9057569341', 'd381e93947a4b54b42bf7f1b787a8ee4', 1, 1, 0, 1),
(123, 127, 'Sajijoseph777@gmail.com', '67492ef967fd7d9e2894dc23cf953280', 1, 1, 0, 1),
(124, 128, 'soud.ac@gmail.com', '6cc6ff784c10344a2a0fe6049f9552ec', 1, 1, 0, 0),
(125, 129, '9746448988', '2d51515558e98c28c6d8dc2a527ee871', 1, 1, 0, 0),
(126, 130, 'lalkrishnak1@gmail.com', '9a0a4d9f2c40025f5daca8ee376bea4e', 1, 1, 0, 1),
(127, 131, 'dhaneshcpoliyamkunnu143@gmail.com', 'd75d7da95df07cea7f859dd87fd67246', 1, 1, 0, 0),
(128, 132, '9633055278', 'ceb0fb64d718d0c3051a8145d2a65ed7', 1, 1, 0, 1),
(129, 133, '7025546504', 'cde9ab108cec62638f4ef8c75dfae334', 1, 1, 0, 1),
(130, 134, 'hrithiquepajith@gmail.com', '200820e3227815ed1756a6b531e7e0d2', 1, 1, 0, 1),
(131, 135, 'jestinksaju33@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, 0, 1),
(132, 136, '9946190147', '42d25a539f98d57fb9cfddeeffe5d854', 1, 1, 0, 1),
(133, 137, '9446326166', '8335b818fd71350b70477789717f9af5', 1, 1, 0, 1),
(134, 138, '9446804561', '45ecc4d432f392e0c04e0b557d6f3367', 1, 1, 0, 1),
(135, 139, 'linusurendran87@gmail.com ', 'e9faaf517895f1d5d610a2b9ccf485a3', 1, 1, 0, 1),
(136, 140, 'adhabishams@gmail.com', 'e11aaf62e2c0f9f8cc81dff45ef64bd3', 1, 1, 0, 0),
(137, 141, '9746585383', '2b5cbbc6a267eac84dcd972ade20f295', 1, 1, 0, 1),
(138, 142, '9877733376', '2b49e2e778f50729adfcff87f3907310', 1, 1, 0, 1),
(139, 143, '9605688457', '294d91c4576bfc326b52f2e262f2049d', 1, 1, 0, 0),
(140, 144, 'cpsharafu@gmail.com', 'ae4b49039029d502c40aeecaca359f55', 1, 1, 0, 0),
(141, 145, 'Jamshad2u@gmail.com', 'c7fd6d5179ee2f799984eba95936bbd7', 1, 1, 0, 0),
(142, 146, '9447180180', 'de4ff91d7677909e8f0b61afb9cbf275', 1, 1, 0, 0),
(143, 147, 'ddilu235@gmail.com', '7aba830290816280e3e6d58a5d230225', 1, 1, 0, 1),
(144, 148, '9605414147', '4d37621cd4d9b2de039356c5eb470552', 1, 1, 0, 0),
(145, 149, 'Asiiiiikpd@gmail.com', '8534e5f8fcd475a40c05fe2a5ae6daf4', 1, 1, 0, 1),
(146, 150, 'amanulltp@gmail.com', '25d55ad283aa400af464c76d713c07ad', 1, 1, 0, 1),
(147, 151, 'ksemeer@gmail.com', '38cba05963b05322f83928f2ef7ac26b', 1, 1, 0, 1),
(148, 152, 'hyderamaal@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 1, 0, 0),
(149, 153, 'sahadkunju.kv@gmail.com', '4f6e15568a130c56ba9bf0fd8d06b3d9', 1, 1, 0, 0),
(150, 154, '9567219377', 'd0b7c3c6668a0bbd5e51e4c6713ba473', 1, 1, 0, 0),
(151, 155, '9037701993', 'f6c102fb38e4fcfcdf798d99c659ed38', 1, 1, 0, 1),
(152, 156, '7306697517', 'c430e2c4ec897a5ab2aee57899703553', 1, 1, 0, 0),
(153, 157, 'vinodvijayan93@gmail.com', '2c2e2274664937f2374647d69a33ffbc', 1, 1, 0, 1),
(154, 158, '7012746641', '09f46a91017b004d5399404ecfbf8990', 1, 1, 0, 1),
(155, 159, '7012746641', '09f46a91017b004d5399404ecfbf8990', 1, 1, 0, 0),
(156, 160, 'raheessp@gmail.com', '056c0ac268ca3cb63250ef62352bd9f3', 1, 1, 0, 1),
(157, 161, '9443436381', 'da346c42605ea55e540928fcee5936bd', 1, 1, 0, 0),
(158, 162, 'shibukhan2002@gmail.com', 'caf2bba0d5350d20c2d20a9d2abcf42e', 1, 1, 0, 1),
(159, 163, 'amalkumar968@gmail.com', 'efa38d43363cff4c15f2c669a1163ce5', 1, 1, 0, 1),
(160, 164, 'aseeba01@gmail.com ', 'eb6d172757e1145c6967cdc6c735c857', 1, 1, 0, 0),
(161, 165, 'Rishalm6@gmail.com ', '81a4d3a84ebc24013b85a6f90e9b6e9a', 1, 1, 0, 1),
(162, 166, 'arshidcml@gmail.com', '20635449ae62ba055b16dec3a857942a', 1, 1, 0, 1),
(163, 167, 'alensabu123@gmail.com', '7e9be58d26df6fe9e58a626b524d2033', 1, 1, 0, 1),
(164, 168, 'Jinsonmathewmjm@gmail.com ', '81e52851b67a849d240192eecfb20bf5', 1, 1, 0, 0),
(165, 169, 'Zayanshahool@gmail.com', '462068fa7176dbb9f556a0f2fbd850cf', 1, 1, 0, 0),
(166, 170, '7559832953', '5eda958ce0a8c250ad09b1c610a85e1d', 1, 1, 0, 0),
(167, 171, 'marsookbk@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 0, 1),
(168, 172, 'Sudheeshremani@gmail.com', '9c6203699f1d1bbc544f3ec2f3b7114f', 1, 1, 0, 0),
(169, 173, '9074399093', 'd1bf011f427271b8a0119a18b3f5ff17', 1, 1, 0, 1),
(170, 174, '9496849129', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, 0, 1),
(171, 175, '9188207558', '06fac231d5f07e17fd5c033227ba828b', 1, 1, 0, 1),
(172, 176, '6238585515', '80bc46752afa601bce47eeabbce272e8', 1, 1, 0, 0),
(173, 177, '00919895566690', '1f34cdcc2138e64c36ab805b24160dfd', 1, 1, 0, 0),
(174, 178, '9400120815', '1ea722f118f7c42e33fd3105d42eeeff', 1, 1, 0, 1),
(175, 179, '9207669503', '81dc9bdb52d04dc20036dbd8313ed055', 1, 1, 0, 1),
(176, 180, '9495322411', '9a339f5efd62c879e13c7a2f37e4dd60', 1, 1, 0, 1),
(177, 181, '9645334454', '47c0273d1e78d40646a97312a7d3eef6', 1, 1, 0, 1),
(178, 182, '9747111500', '805307f4a5c2ce3b40d39be65be3767f', 1, 1, 0, 1),
(179, 183, 'Khalid.rizwi37@gmail.com ', 'd80275ad19c49c575aa8a1705d6cf926', 1, 1, 0, 0),
(180, 184, 'Niyazkunhippa@gmail.com ', '0ea377fa571bce6fc0ab09aaa02d35c9', 1, 1, 0, 1),
(181, 185, '9446737301', '3340474aa6166f580269303f98cd9b28', 1, 1, 0, 1),
(182, 186, '+919497491267', '1797b79a0dde38c44de65e93f1236865', 1, 1, 0, 1),
(183, 187, 'retna803@gmail.com', '03d5772f5a00dc70b9857989bc35b629', 1, 1, 0, 0),
(184, 188, 'eappens999@gmail.com', '99e3b9a694e8977703bea3afe52c65e4', 1, 1, 0, 1),
(185, 189, '9048627715', 'd04de3874cbf962d3718a4f1345be474', 1, 1, 0, 1),
(186, 190, '9072475609', '52ea361e655f3d835429347a923cfb57', 1, 1, 0, 1),
(187, 191, 'Pramodks1979@gmail.com', 'b56049d4db2c3c8c98c6e63a84606ac0', 1, 1, 0, 0),
(188, 192, 'Pramodks1979@gmail.com', 'b56049d4db2c3c8c98c6e63a84606ac0', 1, 1, 0, 0),
(189, 193, '7909121943', 'b56049d4db2c3c8c98c6e63a84606ac0', 1, 1, 0, 0),
(190, 194, 'amanasharaf@gmail.com', '4fa2f1f15443c3acd34973aed8dd39c0', 1, 1, 0, 1),
(191, 195, 'Dhijiu94@gmail.com', 'ffd40ede9e3f25cf646c8416b700e25d', 1, 1, 0, 1),
(192, 196, 'anoopanto09@gmail.com', '743676eea340bec9537270e64245b129', 1, 1, 0, 1),
(193, 197, 'Soumeshcp@gmail.com', '582d040b698d0fffb97cb4866ba86ad0', 1, 1, 0, 1),
(194, 198, '8606613671', 'f4eff54b49bc5d6003404badb8490b35', 1, 1, 0, 1),
(195, 199, '8848666847', '7d6afca8f70c3c9e0fdd63f0896fa57c', 1, 1, 0, 1),
(196, 200, '9562280410', '81e8bd27a68572282c1447560711a313', 1, 1, 0, 1),
(197, 201, '9745742605', '2015a32200b673f4aca945848f5b9f39', 1, 1, 0, 1),
(198, 202, '9446262210', '673802c325fe1f6863faec393c78a9e6', 1, 1, 0, 0),
(199, 203, '9645376588', '2e8438b3a23a0e139a1df6f2985de74a', 1, 1, 0, 1),
(200, 204, 'reenamani501@gmail.com', '2892163700d6e89a263d0c211594a4e8', 1, 1, 0, 1),
(201, 205, '8086456914', 'eef8ea8fce93ec2dcd2a7d9882da52ba', 1, 1, 0, 0),
(202, 206, '9526561446', 'e2071528cf1aa685779d9898ccd9b308', 1, 1, 0, 1),
(203, 207, '9846100727', '0a5847a48123b253a897744a40289e77', 1, 1, 0, 0),
(204, 208, '6282835528', '822af8eab1c9538eddcf901967396a57', 1, 1, 0, 1),
(205, 209, '8848729265', 'ed2aa8b54adf46b3e3f4d6d9d2188230', 1, 1, 0, 1),
(206, 210, '9633777409', '963034f3f3af616b967477518f494bc2', 1, 1, 0, 1),
(207, 211, 'Ravigvr007@gmail.com ', 'a2f923e428f55b8dd761d690273865ea', 1, 1, 0, 1),
(208, 212, 'aseesrahath@gmail.com', '91240067ebf87792f4768ba02be23c38', 1, 1, 0, 1),
(209, 213, '9846643333', 'c9326368f21aaefd990884470b11a685', 1, 1, 0, 1),
(210, 214, 'Faisalvannery@gmail.com', 'a28dd7bd8cf72a37af268338680e03c3', 1, 1, 0, 1),
(211, 215, '9526077217', '36e446b06fbbf5853c3f72439f2a5112', 1, 1, 0, 1),
(212, 216, 'shyjumani79@gmail.com', '65842590bec867517fac0d571fa42bc5', 1, 1, 0, 1),
(213, 217, 'rubinbaby92@gmail.com', '1ea722f118f7c42e33fd3105d42eeeff', 1, 1, 0, 0),
(214, 218, '9747595920', '2755be982e0e28a0459f32555e95dff9', 1, 1, 0, 1),
(215, 219, '9747595920', '2755be982e0e28a0459f32555e95dff9', 1, 1, 0, 0),
(216, 220, 'renjithtutu31@gmail.com', '857b12f3e6e526c4f2d840bbe00cd3e6', 1, 1, 0, 1),
(217, 221, '100.liha@gmail.com', '53faf184e85eae5c63d1469183140860', 1, 1, 0, 0),
(218, 222, 'musthafak89@gmail.com', '96c9868d2b5dac38dda0e4c8922f2bcb', 1, 1, 0, 1),
(219, 223, 'abdulrashidpp.8585@gmail.com', 'de7e6c1fda43ee9c3e51c51677a22636', 1, 1, 0, 1),
(220, 224, 'abdulrashidpp.8585@gmail.com', 'de7e6c1fda43ee9c3e51c51677a22636', 1, 1, 0, 0),
(221, 225, '8157071198', '8297df044de04a395db7cd3d4adfa3e4', 1, 1, 0, 1),
(222, 226, '786haris786@gmail.com ', 'a9ebdb12692b0ff4978e08da974042b8', 1, 1, 0, 1),
(223, 227, 'Joicemandapathil@gmail.com', '3e3c049fd633120fe241f8d16d7cd73b', 1, 1, 0, 1),
(224, 228, 'knenore@gmail.com', '0c283523f38e0f92961bd6e0f9056d30', 1, 1, 0, 1),
(225, 229, '8921271512', '705830e5193f2ec2fc9a4637106e9e88', 1, 1, 0, 1),
(226, 230, '7902938241', '9961bcf31f964bdf097cedc7795e117e', 1, 1, 0, 1),
(227, 231, '9961936311', '010478340677f054e19a771bd8b86a4c', 1, 1, 0, 1),
(228, 232, '7736761315', '00fbea968ca0faecda6fccde09a694a9', 1, 1, 0, 1),
(229, 233, '7306427958', '0b524b3d4f2f8058a27056ab5ed1a9c1', 1, 1, 0, 1),
(230, 234, '7002313797', '91b5c3183c62b3064997f2974004e18c', 1, 1, 0, 1),
(231, 235, '9961214209', '81dc9bdb52d04dc20036dbd8313ed055', 1, 1, 0, 0),
(232, 236, '9446987380', 'b257b2f855c668830a06f662db5a57f0', 1, 1, 0, 1),
(233, 237, 'jahfarvmmill@yahoo.com', '37c60f97c183092bcd96c10eec51230a', 1, 1, 0, 1),
(234, 238, '8137880192', '9f19844b6c22a5b7c776b4ea5266ef73', 1, 1, 0, 1),
(235, 239, 'tanindia17@gmail.com', 'cd4171bc4982475d369842d5560d87c1', 1, 1, 0, 1),
(236, 240, '7034770378', 'e6197521c96f4a2f165bbb3a3821b462', 1, 1, 0, 1),
(237, 241, 'rojishthomas90@gmail.com', '1567d6c2376b056df2ed17c3c1732828', 1, 1, 0, 1),
(238, 242, '9895679162', '0be2b75af599d9571638772be2246ff7', 1, 1, 0, 1),
(239, 243, '9072150276', '44621a814a691836aa754897a4b94f45', 1, 1, 0, 1),
(240, 244, 'Deepukbm78@gmail.com', 'a96d96bb085e4831677910d5d4b855c0', 1, 1, 0, 1),
(241, 245, '8089896211', 'b629596b7276c988568128d6fbfdf65f', 1, 1, 0, 0),
(242, 246, '8606465245', '45f66768c848f74f8e627187093a7fa3', 1, 1, 0, 0),
(243, 247, 'arshadpulikkool509@gmail.com ', 'fafbea34f1895ded1dc44ed014d2dbf8', 1, 1, 0, 1),
(244, 248, '7306250221', '332d3ac8b944dbf45115fadf2f34d9f5', 1, 1, 0, 0),
(245, 249, '8137868731', '0339e955b792a0abbeda48c7209f5f7f', 1, 1, 0, 1),
(246, 250, '9072252475', 'fe7ec3fc6de932a63074237e008be614', 1, 1, 0, 1),
(247, 251, '9633917279', 'a69baed778107009420334e6946c7944', 1, 1, 0, 1),
(248, 252, 'Siddhiqbtr@gmail.com', 'e01d772777ca03c1c6a5dbf3ba4c0c68', 1, 1, 0, 1),
(249, 253, '7909161528', '6f68469188a119a144489697c5e10a50', 1, 1, 0, 0),
(250, 254, 'Shuhaibrahath45@gmail.com', '97da5493d0471820581b0655ce800a44', 1, 1, 0, 1),
(251, 255, 'eimanaasif@gmail.com', '3fd64bfe862495c117f2ccd95d0092e9', 1, 1, 0, 1),
(252, 256, '7560927328', 'cf75f6478747fc61ed1d754eb1e03a1e', 1, 1, 0, 1),
(253, 257, 'ashfakka786@gmail.com', '2c111a5b4b4425ce4a16f541217279ba', 1, 1, 0, 1),
(254, 258, '9061654175', '7d485af6f55d99572a4668d0d10c45b6', 1, 1, 0, 1),
(255, 259, '7559041278', '25d55ad283aa400af464c76d713c07ad', 1, 1, 0, 1),
(256, 260, '9947460925', 'a2397712541b595f96e2f9644c8e18dd', 1, 1, 0, 0),
(257, 261, '9605404053', '4ae4dfe7b4fdfcba6f8b533e0dda9095', 1, 1, 0, 1),
(258, 262, 'Ramshadibrahim12@gmail.com', '45c3f7a5224c562f33a9ae58f6f1d110', 1, 1, 0, 1),
(259, 263, '9526980402', '79a6a538fe520c6bd5c002bf080ba4b9', 1, 1, 0, 1),
(260, 264, '8281065112', '44ffe44097bbce02fbaa42734e92ae04', 1, 1, 0, 1),
(261, 265, '9747575913', '077e842fb4e1ac855f7276f1345a098e', 1, 1, 0, 0),
(262, 266, 'Sajidac4u@gmail.com', '4ca3a7c2eee3ea311a4aa9d9fe11d5c3', 1, 1, 0, 0),
(263, 267, 'sayedmruby@gmail.com', 'b0ba58dc074547b974443b803c0d85bc', 1, 1, 0, 1),
(264, 268, 'ashraf2005786@gmail.com', '17e68a1cca298abaa16e1ac8fc5fad6f', 1, 1, 0, 1),
(265, 269, 'rasheedthozhiyoor@outlook.com', 'cc78e0a858d686fe833ff7340baa8b54', 1, 1, 0, 1),
(266, 270, '9633824696', '6e7475aa63c34beb84b12e29d49111ef', 1, 1, 0, 1),
(267, 271, 'Padannaashraf@gmail.com', '0109c88b46062ed92f7bbe64362aea4e', 1, 1, 0, 1),
(268, 272, 'Irshadbinahmed@gmail.com', 'dc1b5b40dc4649c21cae7dda33972d37', 1, 1, 0, 1),
(269, 273, '9995736095', '2f293b2594d89f65e28cb942526aea2e', 1, 1, 0, 1),
(270, 274, 'anwarmuhammed174@gmail.com', '1ecdf69623c0fd5fda66f98709fe694a', 1, 1, 0, 1),
(271, 275, 'abhilashneelamkoth@gmail.com', '5eb99068a175857d67551d47ddcdac9a', 1, 1, 0, 1),
(272, 276, '9526405264', '1e2a796539042ca860c3091662aa4346', 1, 1, 0, 1),
(273, 277, '9526405264', '1e2a796539042ca860c3091662aa4346', 1, 1, 0, 0),
(274, 278, '9526405264', '1e2a796539042ca860c3091662aa4346', 1, 1, 0, 0),
(275, 279, '9526405264', '1e2a796539042ca860c3091662aa4346', 1, 1, 0, 0),
(276, 280, '9746934541', '19820417d9a0c0b675ee350e450b041a', 1, 1, 0, 1),
(277, 281, '9526012485', '7a28b4bcc7bda4467e00f441f73f80a3', 1, 1, 0, 1),
(278, 282, 'Nmuksith@gmail.com', 'ba52724aa845e8db9f00bfa830edf0f1', 1, 1, 0, 1),
(279, 283, '9544110405', '7486da91422ccceca190904d3884bf98', 1, 1, 0, 0),
(280, 284, '8606524883', '9131a2b6fbe76cf2457c76769da6cad4', 1, 1, 0, 1),
(281, 285, '7559876090', '38730827a929f3a4acf0b644cae74e46', 1, 1, 0, 1),
(282, 286, '9526417091', 'f2d7b6b22e28c201c80fe9f511eac404', 1, 1, 0, 0),
(283, 287, '9048629514', 'acb82ad513691f7e0526fd6a40245b64', 1, 1, 0, 0),
(284, 288, 'thanseercp0@gmail.com', 'b8df9cedc1d03a57e5d4b9246c300071', 1, 1, 0, 1),
(285, 289, '9847391747', 'dbf407b4e8291d537c9577bd794455ad', 1, 1, 0, 1),
(286, 290, '8606150501', 'b2a8830c77f785e305ee0489c9923b93', 1, 1, 0, 1),
(287, 291, '7306802829', '94f8a76ec702925604c17d68145f5cd9', 1, 1, 0, 0),
(288, 292, '9895786999', '456b4b125abeda05a9251b099f239606', 1, 1, 0, 1),
(289, 293, '8606224774', '1d393344544a0cea72b2fbe1df959777', 1, 1, 0, 0),
(290, 294, 'nafinappi32@gmail.com', '0cf5f868569adc7cf7cbd894a36ba383', 1, 1, 0, 1),
(291, 295, 'shamirt17@gmail.com', '3541c994b180e1af732e23732bb74686', 1, 1, 0, 1),
(292, 296, '8606414780', '3added2cbeca41e656a3dd63cf9eaff1', 1, 1, 0, 1),
(293, 297, '9544227688', '0144af5b0328a253a30d3a754b306f02', 1, 1, 0, 0),
(294, 298, '9656827936', 'e002e4a158f6101f4117701ef2b3cdac', 1, 1, 0, 1),
(295, 299, '8089388325', 'dab55cf40e9e4e1c704b7062c4f2828e', 1, 1, 0, 1),
(296, 300, '8136897142', 'a2cdec253445875d2d7e77f97d91180f', 1, 1, 0, 1),
(297, 301, 'machu.mashhood@gmail.com', 'ac30276fcfdf548ecad203ed910ccb08', 1, 1, 0, 1),
(298, 302, '7559948253', 'd79c7bfdf45bbf387a2dcf1fc4e9ff61', 1, 1, 0, 1),
(299, 303, '9562808800', '34ce1eb8398b3d075a29a778f1f3a0d8', 1, 1, 0, 1),
(300, 304, '9961803920', '55df1e9f17d6e54988f7fed8860dd83d', 1, 1, 0, 0),
(301, 305, '9495642286', '2b3b5429780efadf76a4c424f9fe81af', 1, 1, 0, 1),
(302, 306, 'thameembinumer786@gmail.com', '0e98a040bb49ee3853d92ee986394460', 1, 1, 0, 1),
(303, 307, '+919946033924', '3319c41242010a661c4ea6472ff7c124', 1, 1, 0, 1),
(304, 308, '7994515635', '21fd4736868daa7390fd037fc25c1079', 1, 1, 0, 1),
(305, 309, 'spdevish@gmail.com', '9aed0be2fb4d95f8be812c2f37787c09', 1, 1, 0, 1),
(306, 310, 'e4endeavour@gmail.com', '5b4b0cbb0b55fc53800f9d8af8dbbac0', 1, 1, 0, 0),
(307, 311, 'sammohamed.mohamed@gmail.com', 'd21f012a18cc97190753a288fc06f016', 1, 1, 0, 0),
(308, 312, '9544104348', '9b01fa5e87d960db935974204573e7f1', 1, 1, 0, 1),
(309, 313, 'shijumonvaranad@gmail.com', 'd3786ec2413a8cd9413bfcb24be95a73', 1, 1, 0, 1),
(310, 314, '9961275771', '20ca225838d471e4fdc9c1a2e73e6f3d', 1, 1, 0, 1),
(311, 315, 'navasmogar123@gmail.com', 'd2cdfd1d5fd25d7dffbc0e6561ae29f3', 1, 1, 0, 1),
(312, 316, 'maslamkv6@gmail.com', 'd4c49e10988eb9ede2f5f1297c1e23d0', 1, 1, 0, 1),
(313, 317, 'maslamkv6@gmail.com', 'd4c49e10988eb9ede2f5f1297c1e23d0', 1, 1, 0, 0),
(314, 318, '9449835553', 'b80b31f26a5127c0c3ac48dd4dba93d2', 1, 1, 0, 1),
(315, 319, 'artharanchal@gmail.com', '7fb39d435e7ec4358c8a64627f85dcb0', 1, 1, 0, 1),
(316, 320, '9447290128', 'e7db6173f442a273ee06c750ed35f1a4', 1, 1, 0, 0),
(317, 321, '9633298844', 'f0b22bf1aa570f386a12d0e8ba3ae48a', 1, 1, 0, 1),
(318, 322, 'Kalamkkd4@gmail.com', 'f30286e4805d9ba5e86fc9f3cbd7b85b', 1, 1, 0, 1),
(319, 323, '9846197786', 'e8bf9a5f8451bb4d9df9a0b152aba65b', 1, 1, 0, 1),
(320, 324, '9656469641', 'd744d82c42c23ecda1c52fa87bc254ea', 1, 1, 0, 1),
(321, 325, '8078096515', '81d241bcd1b3b1c4e32eb96f32a477de', 1, 1, 0, 1),
(322, 326, 'Noushadchokkad@gmail.com', '9d8ea5d8ad85d95aa352b48df45a91c1', 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id` int(100) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(2000) NOT NULL,
  `email` varchar(500) NOT NULL,
  `mobile` bigint(100) NOT NULL,
  `userType` int(100) NOT NULL,
  `otpGen` int(100) NOT NULL,
  `otpChek` int(100) NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `district` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `fkCountry` int(100) NOT NULL,
  `isBlocked` int(50) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isValid` int(100) NOT NULL,
  `isExist` int(11) NOT NULL,
  `isPremier` int(11) NOT NULL,
  `userimg` varchar(500) NOT NULL,
  `fkPremierID` int(11) NOT NULL,
  `NoofAds` int(11) NOT NULL,
  `isAdmin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`id`, `name`, `address`, `email`, `mobile`, `userType`, `otpGen`, `otpChek`, `fromDate`, `toDate`, `district`, `state`, `fkCountry`, `isBlocked`, `regDate`, `isValid`, `isExist`, `isPremier`, `userimg`, `fkPremierID`, `NoofAds`, `isAdmin`) VALUES
(1, 'Saxon', 'Kasaragod', 'saxonsunny@gmail.com', 7869574869, 1, 51081, 0, '2019-07-27', '2020-08-26', '1', '1', 1, 0, '2019-09-16 06:05:38', 0, 1, 0, 'Profile/22430-messi.jpg', 1, 0, 0),
(2, 'Admin', 'Admin', 'admin@gmail.com', 9878786545, 0, 0, 0, '2019-07-27', '0000-00-00', '1', '1', 1, 0, '2019-07-27 07:00:00', 1, 1, 0, 'Profile/73168-messi.jpg', 0, 0, 1),
(3, 'MUHAMMED SHERIFF', 'SHERIFF MANZIL, BLATHUR, KALLIAD (P.O.), KANNUR, 670593', 'sheriffblathur@gmail.com', 919961848777, 1, 95160, 0, '2019-07-28', '2020-01-28', '2', '1', 1, 1, '2019-09-23 12:28:37', 1, 1, 1, 'Profile/23613-7803e7c4-6167-4b98-b2f4-01cafeac7e33.jpeg', 2, 139, 0),
(7, 'Test', 'Test', 'test@gmail.com', 9999999999, 0, 0, 0, '2019-08-12', '0000-00-00', 'Kasaragod', 'Kerala', 1, 0, '2019-08-12 07:00:00', 1, 1, 0, 'Profile/6644-1563954162990.jpg', 0, 0, 1),
(8, 'sheriff blathur', 'Blathur', 'msheriff@gmail.com', 971502926799, 0, 0, 0, '2019-08-12', '0000-00-00', 'Kannur', 'Kerala', 1, 0, '2019-08-12 07:00:00', 1, 1, 0, 'Profile/33354-my-pic.jpg', 0, 0, 1),
(9, 'Yasar Puthiya Purayil', 'PP House, Patteel, Irikkur', 'ysrtrix381@gmail.com', 971556098981, 1, 84449, 0, '2019-08-16', '2020-09-14', 'Kannur', 'Kerala', 1, 1, '2019-09-23 12:37:34', 1, 1, 1, 'Profile/31053-dssjhmmwkaaozy7.jpg', 1, 17, 0),
(10, 'Nethir', 'Dubai', 'Nadeayp@gmail.com', 971509800976, 1, 75106, 0, '2019-08-16', '2019-10-17', 'Kannur', 'Kerala', 1, 0, '2019-09-17 19:07:05', 1, 1, 1, 'Profile/58896-fb_img_1534269029198.jpg', 4, 5, 0),
(11, 'SUHAIL', 'Koorari, Kannur', 'acsuhail3@gmail.com', 918129738826, 1, 88039, 0, '2019-08-16', '2020-09-14', 'Kannur', 'Kerala', 1, 1, '2019-09-23 08:49:31', 1, 1, 1, 'Profile/68500-65fc2410-7419-4538-9748-42fa8aa96628.jpeg', 1, 24, 0),
(12, 'MUSHTHAK ALI', 'MUHSIN COTTEGE BLATHUR , (p. o)  KALLIAD, IRIKKUR , KANNUR, 670593', 'mstkbltr@gmail.com ', 7558869774, 1, 67176, 0, '2019-08-17', '2019-10-17', 'Kannur', 'Kerala', 1, 1, '2019-09-23 06:18:15', 1, 1, 1, 'Profile/72267-screenshot_2019-08-17-11-25-35-540_com.miui.gallery.png', 4, 5, 0),
(16, 'YOOSUF V V', 'Shareef Manzil', 'vvyoosuf@gmail.com', 9633012960, 1, 99490, 0, '2019-08-18', '2020-02-16', 'Kannur', 'Kerala', 1, 0, '2019-08-23 05:39:05', 1, 1, 1, 'Profile/43662-yusaf--01.jpg', 2, 1, 0),
(20, 'Sumesh', 'Kannur', 'sumesh85in@gmail.com', 9747611555, 1, 86939, 0, '2019-08-25', '2019-09-24', 'Kannur', 'Kerala', 1, 0, '2019-08-25 20:51:50', 0, 1, 0, 'Profile/97406-6e001564-a55b-4f5d-a7a2-bc44c8affce2.jpeg', 0, 0, 0),
(22, 'George J', 'kakkanad', '', 9995104204, 1, 14752, 0, '2019-08-27', '2019-09-26', 'Ernakulam', 'Kerala', 1, 1, '2019-08-27 03:39:56', 0, 1, 0, 'Profile/11242-users-vector-icon-png_260862.jpg', 0, 1, 0),
(24, 'Arun', 'Autospot  ', 'autospotcars@gmail.com', 8156882513, 1, 15568, 0, '2019-08-27', '2019-09-26', 'Ernakulam', 'Kerala', 1, 1, '2019-08-27 04:00:12', 0, 1, 0, 'Profile/14383-c0e91b8d-e9fb-499b-867c-3cc57d4a2ac3.jpeg', 0, 1, 0),
(27, 'IRSHAD TP', 'TP house kuppam Po kuppam', 'irsdtp90@gmail.com', 9544844944, 1, 17291, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 0, '2019-08-27 04:02:44', 0, 1, 0, 'Profile/85293-img-20190826-wa0142.jpg', 0, 0, 0),
(28, 'Fasil vu', 'Veettilayil house', 'fasildiya007@gmail.com', 9745262602, 1, 74554, 0, '2019-08-27', '2019-09-26', 'Malappuram', 'Kerala', 1, 0, '2019-08-27 04:01:02', 0, 1, 0, 'Profile/45599-beardmanphoto_20170802_121544.jpg', 0, 0, 0),
(30, 'Naheem .K', 'Darul Nafle Pattannur', '', 9744723304, 1, 36030, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 0, '2019-08-27 04:17:20', 0, 1, 0, 'Profile/29249-1566879413912-1356364860.jpg', 0, 0, 0),
(31, 'Abdul vahid', 'Irikkur ', '', 91559775850, 1, 26068, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 0, '2019-08-27 04:42:22', 0, 1, 0, 'Profile/44400-aa0c4ad0-9ffb-4fbe-8c70-fa6e463a1fdc.jpeg', 0, 0, 0),
(32, 'Shahad Maviloth', 'Al Madeena', '', 9447687916, 1, 53336, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 0, '2019-08-27 05:18:37', 0, 1, 0, 'Profile/9393-1566882907157-1666588099.jpg', 0, 0, 0),
(33, 'Ashraf Adam', 'RCM IRIKKUR', '', 9744068073, 1, 66919, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 0, '2019-08-27 05:41:37', 0, 1, 0, 'Profile/22549-img-20190824-wa0004.jpg', 0, 0, 0),
(34, 'Mashood V V', 'VV HOUSE ,BLATHUR', '', 9446579058, 1, 57877, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 0, '2019-08-27 05:59:47', 0, 1, 0, 'Profile/6078-20180805_145915.jpg', 0, 0, 0),
(35, 'Rasheed Thozhiyoor', 'Thozhiyur post Thrissur Distric kerala pin 680520', 'rasheedthozhiyoor@gmail.com', 97466942630, 1, 58758, 0, '2019-08-27', '2019-09-26', 'Thrissur', 'Kerala', 1, 0, '2019-08-27 05:42:36', 0, 1, 0, 'Profile/16865-4476de26-4536-4dc9-8c58-2f441492a756.jpeg', 0, 0, 0),
(36, 'NIKHIL K', 'Kunnummal house , Kadirur', '', 9895846663, 1, 50631, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 0, '2019-08-27 05:52:43', 0, 1, 0, 'Profile/49266-1564988144759.jpg', 0, 0, 0),
(37, 'Arshad', 'Blathur', 'arshadblathur7227@gmail.com', 7293335555, 1, 53126, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 0, '2019-08-27 05:56:55', 0, 1, 0, 'Profile/73871-3f2ae709-ee90-46c9-bc26-5f2c5d0e1f16.jpeg', 0, 0, 0),
(38, 'NYSSAM NADUKKANDY', 'nras. makreri', 'nysam7788@gmail.com', 8606465555, 1, 58034, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 0, '2019-08-27 05:58:27', 0, 1, 0, 'Profile/36882-c9913c3e-0d41-4343-8006-a66fa5897c2f.jpeg', 0, 0, 0),
(39, 'MUHAMMED RIYAS O', 'PANNICODE', 'riyas7panakkadan@gmail.com', 9946224374, 1, 67407, 0, '2019-08-27', '2019-09-29', 'Kozhikode', 'Kerala', 1, 0, '2019-08-31 13:54:36', 1, 1, 1, 'Profile/90358-riyas..jpg', 4, 9, 0),
(40, 'Ashrf', 'Palakkad', '', 97450532721, 1, 55512, 0, '2019-08-27', '2019-09-26', 'Palakkad', 'Kerala', 1, 0, '2019-08-27 06:10:34', 0, 1, 0, 'Profile/66444-9f48075f-d8b8-46da-a2e9-1d4a89f735f6.jpeg', 0, 0, 0),
(41, 'Pradeep', 'Ulloor vilakathu veedu, mannottukonam,payattuvila', '', 8943252894, 1, 13926, 0, '2019-08-27', '2019-09-26', 'Thiruvananthapuram', 'Kerala', 1, 0, '2019-08-27 06:12:57', 0, 1, 0, 'Profile/39759-fb_img_1559148219775.jpg', 0, 0, 0),
(43, '', '', '', 966543465431, 1, 67927, 0, '2019-08-27', '2019-09-26', '', '', 0, 0, '2019-08-27 07:00:00', 0, 1, 0, '', 0, 0, 0),
(44, 'Jalees Jalee', 'Irikkur', '', 9747336629, 1, 12801, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 0, '2019-08-27 07:01:46', 0, 1, 0, 'Profile/37190-image.jpg', 0, 0, 0),
(45, 'rauf', 'k t house blathur. irikkur', '', 9972717570, 1, 44137, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 0, '2019-08-27 08:07:50', 0, 1, 0, 'Profile/33480-1566893215043393666633.jpg', 0, 0, 0),
(46, 'YOOSUF VV', 'Sheriff Manzil, Blathur, Kalliad (P.O), Kannur, 670593', 'vvyoosuf@gmail.com', 919633012960, 0, 0, 0, '2019-08-27', '0000-00-00', 'Kannur', 'Kerala', 1, 0, '2019-08-27 07:00:00', 1, 1, 0, 'Profile/19450-15578026_1200225156690847_6929456051069303521_o.jpg', 0, 0, 1),
(48, 'Noushad', 'Kerala .kannure .sreekandapuram ', 'Noushadkp23@gmail.com ', 569262993, 1, 46287, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 1, '2019-08-27 10:13:25', 0, 1, 0, 'Profile/87475-20190713_130840.jpg', 0, 2, 0),
(49, 'Rafath', 'South bazar kannur 2', 'Raaf23@gmail.com', 919995342463, 1, 86819, 0, '2019-08-27', '2020-08-26', 'Kannur', 'Kerala', 1, 0, '2019-09-04 08:24:08', 0, 1, 0, 'Profile/51685-8923ba67-3959-4712-959c-f105dfa9b396.jpeg', 1, 0, 0),
(50, 'Suhail', 'Baithul izzah, therur palayode', 'tpsuhail3@gmail.com', 9656469641, 1, 93685, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 0, '2019-08-27 09:36:11', 0, 1, 0, 'Profile/47646-img_20190826_181721.jpg', 0, 0, 0),
(51, 'Muhammed malik', 'Pongallor mamapad. Kerala', '', 8156829840, 1, 28280, 0, '2019-08-27', '2019-09-26', 'Malappuram', 'Kerala', 1, 1, '2019-08-27 09:59:59', 0, 1, 0, 'Profile/39872-img-20190821-wa0166.jpg', 0, 1, 0),
(52, 'MOHAMED BASHEER P', 'PADATHE PEEDIYEKKAL P O POOKKAYIL TIRUR 676107', 'inouttirur@gmail.com', 9847198461, 1, 36829, 0, '2019-08-27', '2019-09-26', 'Malappuram', 'Kerala', 1, 0, '2019-08-27 09:52:43', 0, 1, 0, 'Profile/95323-5-point-auto-detail-slider-blue-car.png', 0, 0, 0),
(54, 'Moideen', 'Vellachal', 'Moideen1204@gmail.com', 7034550547, 1, 91392, 0, '2019-08-27', '2019-09-26', 'Malappuram', 'Kerala', 1, 0, '2019-08-27 10:17:15', 0, 1, 0, 'Profile/52734-20190714_060538.jpg', 0, 0, 0),
(55, 'Seeniya ignesious ', 'Poomarathil house kiliyanthara. Post. Kunnoth. Iritty. ', 'ignesiousseeniya@gmail.com', 9496975111, 1, 53889, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 0, '2019-08-27 10:53:58', 0, 1, 0, 'Profile/45692-eaa96c98-f0c5-41ec-af71-df8e801e1d7e.jpeg', 0, 0, 0),
(56, 'Jessy ', 'Cherupuzha ', 'Jomythayyil@gmail.com ', 9745834929, 1, 98465, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 0, '2019-08-27 12:03:47', 0, 1, 0, 'Profile/98250-eifsvt92236.jpg', 0, 0, 0),
(57, '', '', 'Javadpopular@gmail.com ', 0, 1, 38082, 0, '2019-08-27', '2019-09-26', '', '', 0, 0, '2019-08-27 07:00:00', 0, 1, 0, '', 0, 0, 0),
(58, 'Nivyesh', 'Nivyesh2006@gmail.com ', 'Nivyesh2006@gmail.com', 9496976840, 1, 31150, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 0, '2019-09-05 09:57:51', 0, 1, 0, 'Profile/5643-nalukettu-thumb.jpg', 0, 0, 0),
(59, 'Bipinraj', 'Calicut', '', 9895810198, 1, 40563, 0, '2019-08-27', '2019-09-26', 'Kozhikode', 'Kerala', 1, 1, '2019-08-27 16:56:13', 0, 1, 0, 'Profile/12248-img-20190826-wa0054.jpg', 0, 2, 0),
(60, 'Sajesh', 'Kooloth VALAPPIL HOUSE kannirathara po chirakkal', '', 8136877685, 1, 51745, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 0, '2019-08-27 19:44:51', 0, 1, 0, 'Profile/42399-img-20190827-wa0004.jpg', 0, 0, 0),
(61, 'Sarojini', 'Karuvanchal,Alakode,Kannur', 'vop.act@gmail.com', 919188712202, 1, 59606, 0, '2019-08-27', '2019-09-26', 'Kannur', 'Kerala', 1, 1, '2019-08-27 21:30:48', 0, 1, 0, 'Profile/22622-69493773_116309019724252_268176963393290240_n.jpg', 0, 1, 0),
(62, 'Aji', 'Kuttave', '', 9447405030, 1, 62179, 0, '2019-08-28', '2019-09-27', 'Kannur', 'Kerala', 1, 1, '2019-08-28 01:15:00', 0, 1, 0, 'Profile/77218-353c4db1-6fb5-4a1a-be79-945e8718c67f.jpeg', 0, 1, 0),
(63, 'Ashraf', 'K M House,Thana,Kannur-1', '', 9995980784, 1, 63858, 0, '2019-08-28', '2019-09-27', 'Kannur', 'Kerala', 1, 1, '2019-09-02 11:48:01', 0, 1, 0, 'Profile/24959-img-20180925-wa0000.jpg', 0, 1, 0),
(64, 'Mohidee', 'Taliparmaba ', '', 9169997000, 1, 47113, 0, '2019-08-28', '2019-10-06', 'Kannur', 'Kerala', 1, 1, '2019-09-06 17:52:13', 1, 1, 1, 'Profile/17519-314fece4-bf76-4568-8b91-7ec7fc877f11.jpeg', 4, 2, 0),
(65, 'ASHOK KUMAR M P', 'TALAP, KANNUR', '', 9745905777, 1, 28019, 0, '2019-08-28', '2019-09-27', 'Kannur', 'Kerala', 1, 0, '2019-09-01 03:44:34', 0, 1, 0, 'Profile/27727-20190831_080434.jpg', 0, 0, 0),
(66, '', '', '', 7594086599, 1, 22629, 0, '2019-08-28', '2019-09-27', '', '', 0, 0, '2019-08-28 07:00:00', 0, 1, 0, '', 0, 0, 0),
(67, 'PRAJITH.N ', 'SREENILAYAM,PADIKKACHAL, ULIYIL PO 670702', '', 917356512736, 1, 35270, 0, '2019-08-28', '2019-09-27', 'Kannur', 'Kerala', 1, 1, '2019-08-28 06:19:53', 0, 1, 0, 'Profile/84408-20190808_120630.jpg', 0, 2, 0),
(68, 'JENEESH V I', 'Harap poth house,vilangum po.', '', 8589803225, 1, 11599, 0, '2019-08-28', '2019-09-27', 'Ernakulam', 'Kerala', 1, 1, '2019-08-28 06:25:47', 0, 1, 0, 'Profile/75538-20190828_091553.jpg', 0, 1, 0),
(69, 'Basheer dargas', '\"Hibaz\" Kalanad kasaragod', 'hibaz2003@gmail.com', 9946522404, 1, 95695, 0, '2019-08-28', '2019-09-27', 'Kasaragod', 'Kerala', 1, 0, '2019-08-28 07:17:19', 0, 1, 0, 'Profile/28398-2019-new-year-photo-frames_279688.jpg', 0, 0, 0),
(70, '', '', 'hibaz2003@gmail.com', 0, 1, 95695, 0, '2019-08-28', '2019-09-27', '', '', 0, 0, '2019-08-28 07:00:00', 0, 1, 0, '', 0, 0, 0),
(71, '', '', 'udayme2002@yahoo.com', 0, 1, 41866, 0, '2019-08-28', '2019-09-27', '', '', 0, 0, '2019-08-28 07:00:00', 0, 1, 0, '', 0, 0, 0),
(72, 'Rahul Raj', 'Hero street', '', 9947057678, 1, 40937, 0, '2019-08-28', '2019-09-27', 'Kannur', 'Kerala', 1, 0, '2019-08-28 15:57:36', 0, 1, 0, 'Profile/41840-fb_img_1567000427379.jpg', 0, 0, 0),
(73, 'Ayoob', 'Hufuf', 'ayoob303@yahoo.com', 506985976, 1, 90452, 0, '2019-08-28', '2019-09-27', 'Kannur', 'Kerala', 1, 0, '2019-08-28 19:19:59', 0, 1, 0, 'Profile/63748-img_20181201_071711.jpg', 0, 0, 0),
(74, 'Khalandar', 'Kerala', '', 9388849992, 1, 26930, 0, '2019-08-29', '2019-09-28', 'Kasaragod', 'Kerala', 1, 0, '2019-08-29 04:24:36', 0, 1, 0, 'Profile/31121-img_20190116_153422_hdr.jpg', 0, 0, 0),
(75, 'Ufloret', 'Kasaragod', '', 8943478718, 1, 77606, 0, '2019-08-29', '2019-09-28', 'Kasaragod', 'Kerala', 1, 0, '2019-08-29 08:03:25', 0, 1, 0, 'Profile/8356-png-aaaa.png', 0, 0, 0),
(76, 'Sandeep ', 'Sandeep bg Brhamakulath house Brhamakulam po pin 680104', '', 9383413008, 1, 24702, 0, '2019-08-29', '2019-09-28', 'Thrissur', 'Kerala', 1, 1, '2019-09-21 07:21:42', 0, 1, 0, 'Profile/63824-img-20190829-wa0091.jpg', 0, 2, 0),
(77, 'Muhammed riyas ', 'Baithul saif,muthalamada ,palakkad,Pin.678507', '', 9495356157, 1, 60304, 0, '2019-08-29', '2019-09-28', 'Palakkad', 'Kerala', 1, 0, '2019-08-29 16:15:22', 0, 1, 0, 'Profile/42732-p_20181017_185702.jpg', 0, 0, 0),
(79, '', '', 'y.m.flamngo@gmail.com', 0, 1, 95262, 0, '2019-08-30', '2019-09-29', '', '', 0, 0, '2019-08-30 07:00:00', 0, 1, 0, '', 0, 0, 0),
(80, 'Suresh', 'Palakkad', '', 8113941373, 1, 36784, 0, '2019-08-30', '2019-09-29', 'Palakkad', 'Kerala', 1, 1, '2019-08-30 14:38:54', 0, 1, 0, 'Profile/7077-img_20190823_171431.jpg', 0, 1, 0),
(81, 'Nizam abdul khader', 'Kakkattummal', '', 7592883966, 1, 52145, 0, '2019-08-31', '2019-09-30', 'Kozhikode', 'Kerala', 1, 0, '2019-08-31 04:41:45', 0, 1, 0, 'Profile/86866-img-20180719-wa0011jpg.0.jpg', 0, 0, 0),
(82, 'Shafeeque.k', 'Asyas house', '', 9747740923, 1, 68767, 0, '2019-08-31', '2019-09-30', 'Kannur', 'Kerala', 1, 1, '2019-08-31 06:59:44', 0, 1, 0, 'Profile/82160-img-20190825-wa0021.jpg', 0, 1, 0),
(83, 'Jibu', 'Jibu manzil attukal chullimanoor nedumangad', '', 9495938603, 1, 55594, 0, '2019-08-31', '2019-09-30', 'Thiruvananthapuram', 'Kerala', 1, 0, '2019-08-31 09:01:52', 0, 1, 0, 'Profile/8042-img_20190825_200759.jpg', 0, 0, 0),
(84, 'Samad zainu ', 'Ceeyem Trade World ', '', 9995553002, 1, 28483, 0, '2019-08-31', '2019-09-30', 'Ernakulam', 'Kerala', 1, 1, '2019-08-31 09:53:34', 1, 1, 1, 'Profile/99321-fb_img_1562410347452.jpg', 4, 1, 0),
(85, 'Ashif v', 'Vadakiniyedath house thalakadathur po', '', 9645310011, 1, 73380, 0, '2019-08-31', '2019-09-30', 'Malappuram', 'Kerala', 1, 0, '2019-09-02 10:24:36', 1, 1, 1, 'Profile/83991-da5b0858-3764-486e-8424-d995dc25c5e5.jpeg', 4, 1, 0),
(86, 'Kunjimon', 'Kottampara pottayil', '', 8921114040, 1, 37074, 0, '2019-09-01', '2019-10-01', 'Malappuram', 'Kerala', 1, 0, '2019-09-01 10:13:48', 0, 1, 0, 'Profile/11381-img20190828133048.jpg', 0, 0, 0),
(87, 'SteelTech Steel Door&Windows Payyavoor', 'Steeltechpyvr', '', 9747369548, 1, 18789, 0, '2019-09-01', '2019-10-01', 'Kannur', 'Kerala', 1, 0, '2019-09-01 16:44:00', 0, 1, 0, 'Profile/48511-img_20180912_200829.jpg', 0, 0, 0),
(88, 'Labeeb', 'Punnappadam ', '', 8921566518, 1, 59327, 0, '2019-09-01', '2019-10-01', 'Palakkad', 'Kerala', 1, 0, '2019-09-01 18:34:10', 0, 1, 0, 'Profile/2131-screenshot_20190901-192956_facebook.jpg', 0, 0, 0),
(89, 'Noufal', 'Kannur', 'babcrealestate@gmail.com ', 96894062828, 1, 63848, 0, '2019-09-01', '2019-10-01', 'Kannur', 'Kerala', 1, 0, '2019-09-01 19:37:55', 0, 1, 0, 'Profile/56627-img_20190901_093032.jpg', 0, 0, 0),
(90, 'Subeeshluke ', 'Animoottil House, Payyavoor PO, Vannaikkadavu 670633,Kannur District ', '', 8086726556, 1, 81389, 0, '2019-09-02', '2019-10-02', 'Kannur', 'Kerala', 1, 0, '2019-09-02 02:04:42', 0, 1, 0, 'Profile/78374-b441e83f-4a2b-4a03-a7e8-a5a7d01fbeeb.jpeg', 0, 0, 0),
(91, 'ASAD ', 'YELLOWS , NORTH STREET KAYAMKULAM ', '', 7511172017, 1, 75202, 0, '2019-09-02', '2019-10-02', 'Alappuzha', 'Kerala', 1, 1, '2019-09-02 05:30:32', 1, 1, 1, 'Profile/71196-fb_img_1558812452419.jpg', 4, 3, 0),
(92, 'Ibrahim', 'T t house', '', 9744474769, 1, 51726, 0, '2019-09-02', '2019-10-02', 'Kannur', 'Kerala', 1, 1, '2019-09-02 07:32:33', 0, 1, 0, 'Profile/6514-f2490d3c-d491-493e-9efe-be161435839c.jpeg', 0, 1, 0),
(93, 'Muhammedfasil', 'Mt house valiyakadappuram payyanur ramanthali palacode', 'Muhammedfasil516@gmail.com', 9061474580, 1, 30484, 0, '2019-09-02', '2019-10-02', 'Kannur', 'Kerala', 1, 1, '2019-09-02 07:41:28', 0, 1, 0, 'Profile/11575-8d66e624-32a2-498c-a030-d35625f0d556.jpeg', 0, 1, 0),
(94, 'Shamil', 'Pathayathingal cpy', '', 7293177057, 1, 74484, 0, '2019-09-02', '2019-10-02', 'Palakkad', 'Kerala', 1, 0, '2019-09-02 10:31:14', 0, 1, 0, 'Profile/90514-fd0862fc-2166-47d0-b7d8-d2011d9ea27f.jpeg', 0, 0, 0),
(95, 'Lijo e j', 'Earayil house, nampullipura post, Mundur, Palakkad', 'lijoejoy@gmail.com', 7012228929, 1, 98960, 0, '2019-09-02', '2019-10-08', 'Palakkad', 'Kerala', 1, 1, '2019-09-08 15:44:54', 1, 1, 1, 'Profile/25512-hearty_bear-001.jpg', 4, 1, 0),
(96, 'Sharafudheen', 'Tharavadu  family restyrant', '', 9947861542, 1, 96791, 0, '2019-09-02', '2019-10-02', 'Kannur', 'Kerala', 1, 0, '2019-09-02 12:51:30', 0, 1, 0, 'Profile/92279-fb_img_1567341928782.jpg', 0, 0, 0),
(97, 'Vasil ch', 'Chatheri house ', 'Vasilchatheri18@gmail.com ', 7736142434, 1, 88926, 0, '2019-09-02', '2019-10-02', 'Malappuram', 'Kerala', 1, 0, '2019-09-14 15:18:35', 0, 1, 0, 'Profile/23445-img_20190628_211534.jpg', 0, 0, 0),
(98, '', '', 'rajin001@gmail.com', 0, 1, 48095, 0, '2019-09-02', '2019-10-02', '', '', 0, 0, '2019-09-02 07:00:00', 0, 1, 0, '', 0, 0, 0),
(99, 'Kamarudheen ', 'Unniyakkal', '', 8089383806, 1, 19415, 0, '2019-09-02', '2019-10-02', 'Malappuram', 'Kerala', 1, 0, '2019-09-02 20:36:39', 0, 1, 0, 'Profile/49435-15674565360422805126194871622287.jpg', 0, 0, 0),
(101, 'ABDUL RAHMAN', 'baithul ameen, kulathumala , anjarakkandy', 'aabdurahmanpp@gmail.com', 545527091, 1, 53111, 0, '2019-09-03', '2019-10-03', 'Kannur', 'Kerala', 1, 0, '2019-09-03 09:57:06', 0, 1, 0, 'Profile/52916-abd.jpg.png', 0, 0, 0),
(102, 'Romy . M. Tony', 'Anakkal', 'romymtony@gmail.com', 7306427081, 1, 46920, 0, '2019-09-03', '2019-10-03', 'Kottayam', 'Kerala', 1, 1, '2019-09-03 17:14:06', 0, 1, 0, 'Profile/17415-20190829_104527.jpg', 0, 1, 0),
(103, 'Ahammed jabir', 'Puthen bungalow vachanam p.o ayoour', '', 8075074492, 1, 71528, 0, '2019-09-03', '2019-10-03', 'Kollam', 'Kerala', 1, 1, '2019-09-22 13:21:25', 1, 1, 1, 'Profile/15026-car_picture-20.png', 4, 7, 0),
(104, '', '', '', 9446633665, 1, 21590, 0, '2019-09-04', '2019-10-04', '', '', 0, 0, '2019-09-04 07:00:00', 0, 1, 0, '', 0, 0, 0),
(105, '', '', '', 9446633665, 1, 21590, 0, '2019-09-04', '2019-10-04', '', '', 0, 0, '2019-09-04 07:00:00', 0, 1, 0, '', 0, 0, 0),
(106, '', '', '', 9895073724, 1, 35494, 0, '2019-09-04', '2019-10-04', '', '', 0, 0, '2019-09-04 07:00:00', 0, 1, 0, '', 0, 0, 0),
(107, '', '', '', 8606562872, 1, 66690, 0, '2019-09-05', '2019-10-05', '', '', 0, 0, '2019-09-05 07:00:00', 0, 1, 0, '', 0, 0, 0),
(108, 'Muraleedharan', 'Sarowaram', '', 7025581218, 1, 51199, 0, '2019-09-05', '2019-10-05', 'Alappuzha', 'Kerala', 1, 0, '2019-09-05 17:27:05', 0, 1, 0, 'Profile/89876-img_20180824_215034.jpg', 0, 0, 0),
(109, '', '', '', 7025788787, 1, 41611, 0, '2019-09-06', '2019-10-06', '', '', 0, 0, '2019-09-06 07:00:00', 0, 1, 0, '', 0, 0, 0),
(110, '', '', '', 919544202220, 1, 87357, 0, '2019-09-06', '2019-10-06', '', '', 0, 0, '2019-09-06 07:00:00', 0, 1, 0, '', 0, 0, 0),
(111, '', '', '', 9447460432, 1, 10233, 0, '2019-09-06', '2019-10-06', '', '', 0, 0, '2019-09-06 07:00:00', 0, 1, 0, '', 0, 0, 0),
(112, '', '', '', 9980474599, 1, 87627, 0, '2019-09-06', '2019-10-06', '', '', 0, 0, '2019-09-06 07:00:00', 0, 1, 0, '', 0, 0, 0),
(113, 'DAVOOD PALLIPATH', 'DAVOOD PALLIPATH', '', 919447372748, 1, 46247, 0, '2019-09-06', '2019-10-06', 'Alappuzha', 'Kerala', 1, 0, '2019-09-06 17:23:50', 0, 1, 0, 'Profile/21848-img_20171018_184305.jpg', 0, 0, 0),
(114, '', '', 'dipinpi007@gmail.com', 0, 1, 60838, 0, '2019-09-06', '2019-10-06', '', '', 0, 0, '2019-09-06 07:00:00', 0, 1, 0, '', 0, 0, 0),
(115, 'MUQHTHAR CH', 'CH HOUSE,FAROOK NAGAR,PERUVALATHUPARAMBA PO,IRIIKKUR, KANNUR', '', 8943231375, 1, 55306, 0, '2019-09-06', '2019-10-06', 'Kannur', 'Kerala', 1, 0, '2019-09-06 18:22:06', 0, 1, 0, 'Profile/92641-picsart_04-19-10.44.28.jpg', 0, 0, 0),
(116, 'Lijesh', 'Koyilandy', '', 9633489968, 1, 80379, 0, '2019-09-07', '2019-10-07', 'Kozhikode', 'Kerala', 1, 1, '2019-09-07 01:18:00', 0, 1, 0, 'Profile/50178-img-20190830-wa0030.jpg', 0, 1, 0),
(117, 'Focus', 'Calicut ', '', 7907112411, 1, 78870, 0, '2019-09-07', '2019-10-07', 'Kozhikode', 'Kerala', 1, 0, '2019-09-07 01:35:08', 0, 1, 0, 'Profile/53435-7ec215bb-865e-4c53-9323-2cd0918b507f.jpeg', 0, 0, 0),
(118, 'Vinoy Thomas', 'B2 Fortdew Apts, EMS Pass Road, Kalamassery North', 'vnoykthomas@gmail.com', 9447458824, 1, 80693, 0, '2019-09-07', '2019-10-07', 'Ernakulam', 'Kerala', 1, 0, '2019-09-07 13:51:57', 0, 1, 0, 'Profile/18210-image.jpg', 0, 0, 0),
(119, 'Ashraf', 'Cheruvathur, kasargod', '', 9562303303, 1, 42691, 0, '2019-09-07', '2019-10-07', 'Kasaragod', 'Kerala', 1, 0, '2019-09-07 16:59:40', 1, 1, 1, 'Profile/78685-916d47df-a04f-43ee-a1f7-2a127a417249.jpeg', 4, 1, 0),
(120, 'Badarudheen', 'Mavathuparambil House thozhuppadam po 680586', '', 7356676766, 1, 10390, 0, '2019-09-07', '2019-10-07', 'Thrissur', 'Kerala', 1, 1, '2019-09-16 11:34:42', 0, 1, 0, 'Profile/46507-img_20190605_182203_703.jpg', 0, 2, 0),
(121, 'Mohammed ', 'Kunnath ', '', 9995299954, 1, 91901, 0, '2019-09-07', '2019-10-07', 'Malappuram', 'Kerala', 1, 0, '2019-09-07 16:25:42', 0, 1, 0, 'Profile/82257-img-20190907-wa0026.jpg', 0, 0, 0),
(122, 'Rahman', 'Kuttippuram', '', 9744507035, 1, 69356, 0, '2019-09-08', '2020-09-07', 'Malappuram', 'Kerala', 1, 0, '2019-09-13 12:45:05', 0, 1, 0, 'Profile/5564-1567918317137-696133817.jpg', 1, 1, 0),
(123, 'Alavi', 'Kuttippala', 'alavipokkadan@gmail.com', 9961944455, 1, 22290, 0, '2019-09-08', '2019-10-08', 'Malappuram', 'Kerala', 1, 0, '2019-09-08 18:06:00', 0, 1, 0, 'Profile/54721-3d6e107f-ae91-45de-9303-3c7402115e65.jpeg', 0, 0, 0),
(124, '', '', '', 9061654581, 1, 89474, 0, '2019-09-08', '2019-10-08', '', '', 0, 0, '2019-09-08 07:00:00', 0, 1, 0, '', 0, 0, 0),
(125, 'Pms', 'Irikkur', '', 9048333105, 1, 77108, 0, '2019-09-09', '2019-10-09', 'Kannur', 'Kerala', 1, 1, '2019-09-20 02:30:57', 0, 1, 0, 'Profile/52752-image.jpg', 0, 1, 0),
(126, 'Shalin P Sam ', 'Punalur ', '', 9057569341, 1, 23911, 0, '2019-09-09', '2019-10-09', 'Pathanamthitta', 'Kerala', 1, 1, '2019-09-09 05:05:07', 0, 1, 0, 'Profile/84128-20190818_185012.jpg', 0, 1, 0),
(127, 'Sajeesh ', '32733 oudmetha ', 'Sajijoseph777@gmail.com', 504769822, 1, 58546, 0, '2019-09-09', '2019-10-09', 'Kannur', 'Kerala', 1, 1, '2019-09-09 12:09:51', 0, 1, 0, 'Profile/44477-18c3028a-8027-441c-b3f0-03826d75f3be.jpeg', 0, 1, 0),
(128, '', '', 'soud.ac@gmail.com', 0, 1, 25528, 0, '2019-09-09', '2019-10-09', '', '', 0, 0, '2019-09-09 07:00:00', 0, 1, 0, '', 0, 0, 0),
(129, '', '', '', 9746448988, 1, 53972, 0, '2019-09-09', '2019-10-09', '', '', 0, 0, '2019-09-09 07:00:00', 0, 1, 0, '', 0, 0, 0),
(130, 'Lal', 'Muscat,  Oman', 'lalkrishnak1@gmail.com', 919895049185, 1, 24949, 0, '2019-09-09', '2019-10-09', 'Thiruvananthapuram', 'Kerala', 1, 1, '2019-09-09 20:16:38', 0, 1, 0, 'Profile/40409-img-20190817-wa0009.jpg', 0, 1, 0),
(131, '', '', 'dhaneshcpoliyamkunnu143@gmail.com', 0, 1, 82000, 0, '2019-09-10', '2019-10-10', '', '', 0, 0, '2019-09-10 07:00:00', 0, 1, 0, '', 0, 0, 0),
(132, 'THASLEEM AK', 'Alungaparambil house vavoor chekode-po malappuram', '', 9633055278, 1, 98788, 0, '2019-09-10', '2019-10-10', 'Malappuram', 'Kerala', 1, 1, '2019-09-10 19:09:39', 0, 1, 0, 'Profile/88334-20190911_003259.jpg', 0, 1, 0),
(133, 'Sadhiq ', 'Bathery', '', 7025546504, 1, 30365, 0, '2019-09-10', '2019-10-10', 'Wayanad', 'Kerala', 1, 0, '2019-09-10 19:59:36', 0, 1, 0, 'Profile/89907-img_20190901_013547.jpg', 0, 0, 0),
(134, 'Hrithique', 'Puthenpurackal House', 'hrithiquepajith@gmail.com', 8848595610, 1, 30283, 0, '2019-09-11', '2019-10-11', 'Thrissur', 'Kerala', 1, 0, '2019-09-11 03:07:25', 0, 1, 0, 'Profile/31946-img-20190808-wa0097.jpg', 0, 0, 0),
(135, 'Jestin K Saju', 'kuliraniyil(h),kayalampara (po), chemperi,kannur,kerala', 'jestinksaju33@gmail.com', 9946633352, 1, 48959, 0, '2019-09-11', '2019-10-11', 'Kannur', 'Kerala', 1, 1, '2019-09-11 05:38:07', 0, 1, 0, 'Profile/72795-img_20190329_204340.jpg', 0, 1, 0),
(136, 'Rijin', 'Chemboor', '', 9946190147, 1, 56388, 0, '2019-09-11', '2020-09-14', 'Thiruvananthapuram', 'Kerala', 1, 1, '2019-09-20 15:11:29', 0, 1, 0, 'Profile/39516-20180825_170052.jpg', 1, 2, 0),
(137, 'Aneesh A S', 'Palappuram', '', 9446326166, 1, 90138, 0, '2019-09-13', '2019-10-13', 'Palakkad', 'Kerala', 1, 1, '2019-09-13 12:58:41', 0, 1, 0, 'Profile/49888-0954f665-15f8-444c-841e-d7d7f9b6cc3c.jpeg', 0, 1, 0),
(138, 'V. C Khalid', 'Vattaparambil House, Mankara ', '', 9446804561, 1, 34953, 0, '2019-09-13', '2019-10-13', 'Palakkad', 'Kerala', 1, 0, '2019-09-13 13:16:10', 0, 1, 0, 'Profile/6005-fb_img_1566159982502.jpg', 0, 0, 0),
(139, 'Linu', 'Binu bhavanam ', 'linusurendran87@gmail.com ', 9526958779, 1, 27036, 0, '2019-09-13', '2019-10-13', 'Kollam', 'Kerala', 1, 0, '2019-09-13 13:22:32', 0, 1, 0, 'Profile/5526-fb_img_1565330245409.jpg', 0, 0, 0),
(140, '', '', 'adhabishams@gmail.com', 0, 1, 50996, 0, '2019-09-13', '2019-10-13', '', '', 0, 0, '2019-09-13 07:00:00', 0, 1, 0, '', 0, 0, 0),
(141, 'Shehzab Ahammad', 'Kannur ', '', 9746585383, 1, 39826, 0, '2019-09-13', '2019-10-13', 'Kannur', 'Kerala', 1, 1, '2019-09-13 16:21:38', 0, 1, 0, 'Profile/73412-c7b3684a-dc9d-4b18-8fac-da7fc4d4e69f.jpeg', 0, 1, 0),
(142, 'Anas', 'Kalathil parambil', '', 9877733376, 1, 11241, 0, '2019-09-13', '2019-10-13', 'Malappuram', 'Kerala', 1, 1, '2019-09-13 16:44:54', 0, 1, 0, 'Profile/64991-20190913_215340.jpg', 0, 1, 0),
(143, '', '', '', 9605688457, 1, 40678, 0, '2019-09-13', '2019-10-13', '', '', 0, 0, '2019-09-13 07:00:00', 0, 1, 0, '', 0, 0, 0),
(144, '', '', 'cpsharafu@gmail.com', 0, 1, 55157, 0, '2019-09-13', '2019-10-13', '', '', 0, 0, '2019-09-13 07:00:00', 0, 1, 0, '', 0, 0, 0),
(145, '', '', 'Jamshad2u@gmail.com', 0, 1, 19837, 0, '2019-09-13', '2019-10-13', '', '', 0, 0, '2019-09-13 07:00:00', 0, 1, 0, '', 0, 0, 0),
(146, '', '', '', 9447180180, 1, 90350, 0, '2019-09-13', '2019-10-13', '', '', 0, 0, '2019-09-13 07:00:00', 0, 1, 0, '', 0, 0, 0),
(147, 'Dilshad ', 'ck house panoor ', 'ddilu235@gmail.com', 9526878103, 1, 42291, 0, '2019-09-13', '2019-10-13', 'Kannur', 'Kerala', 1, 0, '2019-09-13 18:30:48', 0, 1, 0, 'Profile/51689-77872869-2acd-4ead-877b-1afe04804770.jpeg', 0, 0, 0),
(148, '', '', '', 9605414147, 1, 62078, 0, '2019-09-13', '2019-10-13', '', '', 0, 0, '2019-09-13 07:00:00', 0, 1, 0, '', 0, 0, 0),
(149, 'Asif', 'Kappad', 'Asiiiiikpd@gmail.com', 9061671100, 1, 54603, 0, '2019-09-13', '2019-10-13', 'Kozhikode', 'Kerala', 1, 0, '2019-09-13 19:08:21', 0, 1, 0, 'Profile/29546-89_vfrhogwwbufgtkvclbtiiejh.jpg', 0, 0, 0),
(150, 'Amanulla', 'amanulltp@gmail.com', 'amanulltp@gmail.com', 554859875, 1, 19720, 0, '2019-09-13', '2019-10-13', 'Palakkad', 'Kerala', 1, 0, '2019-09-13 19:25:03', 0, 1, 0, 'Profile/61254-img-20190903-wa0075.jpg', 0, 0, 0),
(151, 'SRK', 'SMC', 'ksemeer@gmail.com', 8592954807, 1, 16003, 0, '2019-09-13', '2019-10-13', 'Alappuzha', 'Kerala', 1, 0, '2019-09-13 19:32:06', 0, 1, 0, 'Profile/25055-img-20190911-wa0086.jpg', 0, 0, 0),
(152, '', '', 'hyderamaal@gmail.com', 0, 1, 21468, 0, '2019-09-13', '2019-10-13', '', '', 0, 0, '2019-09-13 07:00:00', 0, 1, 0, '', 0, 0, 0),
(153, '', '', 'sahadkunju.kv@gmail.com', 0, 1, 29720, 0, '2019-09-13', '2019-10-13', '', '', 0, 0, '2019-09-13 07:00:00', 0, 1, 0, '', 0, 0, 0),
(154, '', '', '', 9567219377, 1, 64522, 0, '2019-09-14', '2019-10-14', '', '', 0, 0, '2019-09-14 07:00:00', 0, 1, 0, '', 0, 0, 0),
(155, 'Vishnu', 'Lv builders', '', 9037701993, 1, 97639, 0, '2019-09-14', '2019-10-14', 'Ernakulam', 'Kerala', 1, 0, '2019-09-14 03:21:14', 0, 1, 0, 'Profile/18868-img-20181005-wa0014.jpg', 0, 0, 0),
(156, '', '', '', 7306697517, 1, 28165, 0, '2019-09-14', '2019-10-14', '', '', 0, 0, '2019-09-14 07:00:00', 0, 1, 0, '', 0, 0, 0),
(157, 'Vinod', 'Vavaraveedu chathanpara thottakkadu po', 'vinodvijayan93@gmail.com', 9400742564, 1, 47669, 0, '2019-09-14', '2019-10-14', 'Thiruvananthapuram', 'Kerala', 1, 0, '2019-09-14 05:05:55', 0, 1, 0, 'Profile/70070-img-20190913-wa0004.jpg', 0, 0, 0),
(158, 'Abhijith AS', 'kolkunnath house, cherpulassery po, palakkad', '', 7012746641, 1, 83523, 0, '2019-09-14', '2019-10-14', 'Palakkad', 'Kerala', 1, 0, '2019-09-14 05:41:04', 0, 1, 0, 'Profile/22458-img-20190909-wa0019.jpeg', 0, 0, 0),
(159, '', '', '', 7012746641, 1, 83523, 0, '2019-09-14', '2019-10-14', '', '', 0, 0, '2019-09-14 07:00:00', 0, 1, 0, '', 0, 0, 0),
(160, 'Rahees', 'Kuthuparamba', 'raheessp@gmail.com', 971558386907, 1, 48872, 0, '2019-09-14', '2019-10-14', 'Kannur', 'Kerala', 1, 0, '2019-09-14 05:43:46', 0, 1, 0, 'Profile/37959-iphone-6.jpg', 0, 0, 0),
(161, '', '', '', 9443436381, 1, 84273, 0, '2019-09-14', '2019-10-14', '', '', 0, 0, '2019-09-14 07:00:00', 0, 1, 0, '', 0, 0, 0),
(162, 'Shibu khan Majeed', 'Flat-16, Building-156, Street-23, Block-3, Mangaf, Kuwat', 'shibukhan2002@gmail.com', 96565741994, 1, 12791, 0, '2019-09-14', '2019-10-14', 'Alappuzha', 'Kerala', 1, 0, '2019-09-14 07:34:24', 0, 1, 0, 'Profile/42131-kuwait.jpg', 0, 0, 0),
(163, 'Amalkumar P V', 'Puthanpurayil House, Elambakappilly P O', 'amalkumar968@gmail.com', 8281026968, 1, 14214, 0, '2019-09-14', '2019-10-14', 'Ernakulam', 'Kerala', 1, 1, '2019-09-14 08:16:41', 0, 1, 0, 'Profile/36976-img_20180204_114829-1.jpg', 0, 1, 0),
(164, '', '', 'aseeba01@gmail.com ', 0, 1, 62451, 0, '2019-09-14', '2019-10-14', '', '', 0, 0, '2019-09-14 07:00:00', 0, 1, 0, '', 0, 0, 0),
(165, 'Rishal', 'Venniyur', 'Rishalm6@gmail.com ', 9961158254, 1, 39244, 0, '2019-09-14', '2019-10-14', 'Malappuram', 'Kerala', 1, 0, '2019-09-14 10:08:02', 0, 1, 0, 'Profile/26073-img_20190909_120737.jpg', 0, 0, 0),
(166, 'Muhammed Arshid', 'CML House, Po-Madappally college, Pin-673102', 'arshidcml@gmail.com', 9746816152, 1, 39986, 0, '2019-09-14', '2019-10-14', 'Alappuzha', 'Kerala', 1, 0, '2019-09-14 10:17:46', 0, 1, 0, 'Profile/76948-2511000f-1be8-47aa-8adb-9f4c655bdbcb.jpeg', 0, 0, 0),
(167, 'ALAN', 'PANACHINANICKAL (H) MANKULAM P.O MANKULAM,IDUKKI DIST', 'alensabu123@gmail.com', 9446424361, 1, 25006, 0, '2019-09-14', '2019-10-14', 'Idukki', 'Kerala', 1, 0, '2019-09-14 12:03:20', 0, 1, 0, 'Profile/83820-img_20190618_122801.jpg', 0, 0, 0),
(168, '', '', 'Jinsonmathewmjm@gmail.com ', 0, 1, 12140, 0, '2019-09-14', '2019-10-14', '', '', 0, 0, '2019-09-14 07:00:00', 0, 1, 0, '', 0, 0, 0),
(169, '', '', 'Zayanshahool@gmail.com', 0, 1, 22263, 0, '2019-09-14', '2019-10-14', '', '', 0, 0, '2019-09-14 07:00:00', 0, 1, 0, '', 0, 0, 0),
(170, '', '', '', 7559832953, 1, 40297, 0, '2019-09-14', '2019-10-14', '', '', 0, 0, '2019-09-14 07:00:00', 0, 1, 0, '', 0, 0, 0),
(171, 'Marsook', 'à´•àµ‚à´¤àµà´¤àµà´ªà´±à´®àµà´ªàµ', 'marsookbk@gmail.com', 9539456555, 1, 15626, 0, '2019-09-14', '2019-10-14', 'Kannur', 'Kerala', 1, 0, '2019-09-14 16:26:14', 0, 1, 0, 'Profile/21842-20190823_181810.jpg', 0, 0, 0),
(172, '', '', 'Sudheeshremani@gmail.com', 0, 1, 44656, 0, '2019-09-14', '2019-10-14', '', '', 0, 0, '2019-09-14 07:00:00', 0, 1, 0, '', 0, 0, 0),
(173, 'Amalsha', 'Kuzhiyil House, Marampally P. O', '', 9074399093, 1, 87559, 0, '2019-09-15', '2019-10-15', 'Ernakulam', 'Kerala', 1, 1, '2019-09-15 03:41:41', 0, 1, 0, 'Profile/62023-fb_img_1568281123376.jpg', 0, 1, 0),
(174, 'Arun', 'Chandrabhavan, Panamattom', '', 9496849129, 1, 10653, 0, '2019-09-15', '2019-10-15', 'Kottayam', 'Kerala', 1, 0, '2019-09-15 03:43:32', 0, 1, 0, 'Profile/67195-images-(1).jpeg', 0, 0, 0),
(175, 'KRISHANTH K P', 'MALAYILAKATHOOT BALUSSERI KOZHIKODE KERALA', '', 9188207558, 1, 65579, 0, '2019-09-15', '2019-10-15', 'Kozhikode', 'Kerala', 1, 1, '2019-09-16 08:38:04', 0, 1, 0, 'Profile/50750-img-20190915-wa0014.jpg', 0, 1, 0),
(176, '', '', '', 6238585515, 1, 21000, 0, '2019-09-15', '2019-10-15', '', '', 0, 0, '2019-09-15 07:00:00', 0, 1, 0, '', 0, 0, 0),
(177, '', '', '', 919895566690, 1, 90180, 0, '2019-09-15', '2019-10-15', '', '', 0, 0, '2019-09-15 07:00:00', 0, 1, 0, '', 0, 0, 0),
(178, 'Rubin', 'Pullannimannil', '', 9400120815, 1, 36958, 0, '2019-09-15', '2019-10-15', 'Pathanamthitta', 'Kerala', 1, 0, '2019-09-15 10:18:55', 0, 1, 0, 'Profile/39992-dsc_0002.jpg', 0, 0, 0),
(179, 'Farooque', 'Ac. House blathur.. kannur', '', 9207669503, 1, 99522, 0, '2019-09-15', '2019-10-15', 'Kannur', 'Kerala', 1, 1, '2019-09-15 11:48:28', 0, 1, 0, 'Profile/64017-fb_img_15419055673283863.jpg', 0, 1, 0),
(180, 'Binumon ', 'Thottumkara kunnumpurath Veedu ', '', 9495322411, 1, 59344, 0, '2019-09-15', '2019-10-15', 'Kollam', 'Kerala', 1, 0, '2019-09-15 12:31:53', 0, 1, 0, 'Profile/85542-img_20190903_141232.jpg', 0, 0, 0),
(181, 'Jithu', 'Jithu', '', 9645334454, 1, 21024, 0, '2019-09-15', '2019-10-15', 'Kannur', 'Kerala', 1, 1, '2019-09-15 13:08:21', 0, 1, 0, 'Profile/22540-img_20190913_181445.jpg', 0, 1, 0),
(182, 'ABDURAHIMAN P', 'Alakode', '', 9747111500, 1, 98448, 0, '2019-09-15', '2019-10-15', 'Kannur', 'Kerala', 1, 0, '2019-09-15 15:03:29', 0, 1, 0, 'Profile/81255-uppa.jpg', 0, 0, 0),
(183, '', '', 'Khalid.rizwi37@gmail.com ', 0, 1, 41963, 0, '2019-09-15', '2019-10-15', '', '', 0, 0, '2019-09-15 07:00:00', 0, 1, 0, '', 0, 0, 0),
(184, 'Mohamed niyas ', 'Vengara malappuram ', 'Niyazkunhippa@gmail.com ', 919847018984, 1, 31624, 0, '2019-09-15', '2019-10-15', 'Malappuram', 'Kerala', 1, 0, '2019-09-15 16:56:43', 0, 1, 0, 'Profile/24452-img_20190915_172342.jpg', 0, 0, 0),
(185, 'HOMEMADE', 'Ameera MANZIL', '', 9446737301, 1, 35727, 0, '2019-09-15', '2019-10-15', 'Kannur', 'Kerala', 1, 1, '2019-09-16 17:05:54', 0, 1, 0, 'Profile/9838-2019-08-28-15-11-44-105.jpg', 0, 1, 0),
(186, 'Kiran', 'Sreekandapuram,Kannur', '', 919497491267, 1, 41502, 0, '2019-09-15', '2019-10-15', 'Kannur', 'Kerala', 1, 1, '2019-09-15 18:30:39', 0, 1, 0, 'Profile/58048-img-20190908-wa0026.jpg', 0, 1, 0),
(187, '', '', 'retna803@gmail.com', 0, 1, 55113, 0, '2019-09-15', '2019-10-15', '', '', 0, 0, '2019-09-15 07:00:00', 0, 1, 0, '', 0, 0, 0),
(188, 'Chris', 'Mulanthuruthy', 'eappens999@gmail.com', 9947372852, 1, 15614, 0, '2019-09-16', '2019-10-16', 'Ernakulam', 'Kerala', 1, 0, '2019-09-16 02:53:46', 0, 1, 0, 'Profile/69806-images-(3).jpeg', 0, 0, 0),
(189, 'Shafeek', 'Nans villa', '', 9048627715, 1, 47200, 0, '2019-09-16', '2019-10-16', 'Thiruvananthapuram', 'Kerala', 1, 0, '2019-09-16 04:15:37', 0, 1, 0, 'Profile/25962-20190228_133720.jpg', 0, 0, 0),
(190, 'jaseej97@gmail.com', 'Jaseem malappura m', '', 9072475609, 1, 60349, 0, '2019-09-16', '2019-10-16', 'Malappuram', 'Kerala', 1, 0, '2019-09-16 07:32:01', 0, 1, 0, 'Profile/45327-â€ª+966-53-297-4226â€¬-20150815_022206.jpg', 0, 0, 0),
(191, '', '', 'Pramodks1979@gmail.com', 0, 1, 97556, 0, '2019-09-16', '2019-10-16', '', '', 0, 0, '2019-09-16 07:00:00', 0, 1, 0, '', 0, 0, 0),
(192, '', '', 'Pramodks1979@gmail.com', 0, 1, 97556, 0, '2019-09-16', '2019-10-16', '', '', 0, 0, '2019-09-16 07:00:00', 0, 1, 0, '', 0, 0, 0),
(193, '', '', '', 7909121943, 1, 28442, 0, '2019-09-16', '2019-10-16', '', '', 0, 0, '2019-09-16 07:00:00', 0, 1, 0, '', 0, 0, 0),
(194, 'Ashraf', 'Doha qatar', 'amanasharaf@gmail.com', 9946777561, 1, 86844, 0, '2019-09-16', '2019-10-16', 'Malappuram', 'Kerala', 1, 0, '2019-09-16 08:56:35', 0, 1, 0, 'Profile/21566-c360_2018-12-24-09-24-05-149.jpg', 0, 0, 0),
(195, 'Dhijith', 'Poochali house', 'Dhijiu94@gmail.com', 8848065641, 1, 96076, 0, '2019-09-16', '2019-10-16', 'Kannur', 'Kerala', 1, 1, '2019-09-16 11:42:53', 0, 1, 0, 'Profile/12037-4e89b90e-acac-4f5f-a6c3-3f955570cf99.jpeg', 0, 1, 0),
(196, 'Anoop', 'Vempelan House ', 'anoopanto09@gmail.com', 2791876666, 1, 61006, 0, '2019-09-16', '2019-10-16', 'Kannur', 'Kerala', 1, 1, '2019-09-16 13:02:23', 0, 1, 0, 'Profile/63358-aadc0c61-8695-4c51-ae0a-c0646b3eb043.jpeg', 0, 1, 0),
(197, 'Soumesh', 'Soumesh nivas ,mattannur', 'Soumeshcp@gmail.com', 9605944797, 1, 76260, 0, '2019-09-16', '2019-10-16', 'Kannur', 'Kerala', 1, 0, '2019-09-16 15:09:41', 0, 1, 0, 'Profile/73768-15686464207720.27802250584654975.jpg', 0, 0, 0),
(198, 'Soan', 'Theratill', '', 8606613671, 1, 20841, 0, '2019-09-16', '2019-10-16', 'Thrissur', 'Kerala', 1, 0, '2019-09-16 17:20:13', 0, 1, 0, 'Profile/71312-img-20190915-wa0063.jpg', 0, 0, 0),
(199, 'Salu', 'Sooryanagar', '', 8848666847, 1, 99732, 0, '2019-09-16', '2019-10-16', 'Palakkad', 'Kerala', 1, 0, '2019-09-16 18:35:49', 0, 1, 0, 'Profile/6971-img-20190916-wa0004.jpg', 0, 0, 0),
(200, 'Salmanul farisi k', 'Fidas siddique nagar irikkur', '', 9562280410, 1, 37748, 0, '2019-09-16', '2019-10-16', 'Kannur', 'Kerala', 1, 0, '2019-09-16 23:25:58', 0, 1, 0, 'Profile/62221-img_2840.jpg', 0, 0, 0),
(201, 'Sanoob', 'Kalamassery ', '', 9745742605, 1, 52159, 0, '2019-09-17', '2019-10-17', 'Ernakulam', 'Kerala', 1, 0, '2019-09-17 02:36:15', 0, 1, 0, 'Profile/62964-img-20190917-wa0004.jpg', 0, 0, 0),
(202, '', '', '', 9446262210, 1, 81390, 0, '2019-09-17', '2019-10-17', '', '', 0, 0, '2019-09-17 07:00:00', 0, 1, 0, '', 0, 0, 0),
(203, 'Manu', 'Trivandrum', '', 9645376588, 1, 23249, 0, '2019-09-17', '2019-10-17', 'Thiruvananthapuram', 'Kerala', 1, 0, '2019-09-17 05:17:57', 0, 1, 0, 'Profile/75529-img_20190905_065304.jpg', 0, 0, 0),
(204, 'manikuttan', 'sainilayam,kaithakody.p.o,kottathoor,ayroor,pin689614,pta', 'reenamani501@gmail.com', 919747572825, 1, 75580, 0, '2019-09-17', '2019-10-17', 'Pathanamthitta', 'Kerala', 1, 1, '2019-09-17 13:25:51', 0, 1, 0, 'Profile/97104-img-20190917-wa0389.jpg', 0, 1, 0),
(205, '', '', '', 8086456914, 1, 27230, 0, '2019-09-17', '2019-10-17', '', '', 0, 0, '2019-09-17 07:00:00', 0, 1, 0, '', 0, 0, 0),
(206, 'Renjith', 'Adimaly', '', 9526561446, 1, 61047, 0, '2019-09-17', '2019-10-17', 'Idukki', 'Kerala', 1, 1, '2019-09-17 07:35:56', 0, 1, 0, 'Profile/35303-img-20190916-wa0001.jpg', 0, 2, 0),
(207, '', '', '', 9846100727, 1, 72260, 0, '2019-09-18', '2019-10-18', '', '', 0, 0, '2019-09-18 07:00:00', 0, 1, 0, '', 0, 0, 0),
(208, 'Real property', 'Kanhangad', '', 6282835528, 1, 29905, 0, '2019-09-18', '2019-10-18', 'Kasaragod', 'Kerala', 1, 1, '2019-09-22 09:45:49', 0, 1, 0, 'Profile/13964-img_20190630_095255.jpg', 0, 1, 0),
(209, 'Abbas haneefa ', 'Mammootil', '', 8848729265, 1, 11965, 0, '2019-09-18', '2019-10-18', 'Ernakulam', 'Kerala', 1, 0, '2019-09-18 07:40:22', 0, 1, 0, 'Profile/97497-img20190911112019.jpg', 0, 0, 0),
(210, 'Manu kurian', 'Padannappurathu H  Chemmanathukara p o vaikom kottayam', '', 9633777409, 1, 73540, 0, '2019-09-18', '2019-10-18', 'Kottayam', 'Kerala', 1, 0, '2019-09-18 15:49:01', 0, 1, 0, 'Profile/53149-fb_img_1504367240530.jpg', 0, 0, 0),
(211, 'Raveesh', 'Wadakanchery ', 'Ravigvr007@gmail.com ', 7034939999, 1, 81954, 0, '2019-09-18', '2019-10-18', 'Thrissur', 'Kerala', 1, 1, '2019-09-18 17:51:16', 0, 1, 0, 'Profile/65475-img-20190527-wa0007.jpg', 0, 1, 0),
(212, 'Asees', 'Ettukandathil', 'aseesrahath@gmail.com', 971555514773, 1, 23556, 0, '2019-09-18', '2019-10-18', 'Palakkad', 'Kerala', 1, 0, '2019-09-18 18:36:41', 0, 1, 0, 'Profile/85258-fb_img_1498118541387.jpg', 0, 0, 0),
(213, 'Manu', 'BMC KAKKANAD ', '', 9846643333, 1, 44870, 0, '2019-09-18', '2019-10-18', 'Ernakulam', 'Kerala', 1, 0, '2019-09-18 18:43:21', 0, 1, 0, 'Profile/62164-c7e46905-fbc5-47e2-89cd-dc8451283bb0.jpeg', 0, 0, 0),
(214, 'Faisal', 'Vannery', 'Faisalvannery@gmail.com', 501813707, 1, 23262, 0, '2019-09-18', '2019-10-18', 'Palakkad', 'Kerala', 1, 0, '2019-09-18 18:54:10', 0, 1, 0, 'Profile/28000-_fhdabstract13.jpg', 0, 0, 0),
(215, 'Gokul', '\'Gokulam\'Kalliad (PO)', '', 9526077217, 1, 40085, 0, '2019-09-19', '2019-10-19', 'Kannur', 'Kerala', 1, 0, '2019-09-19 04:10:22', 0, 1, 0, 'Profile/50573-img_20190911_185229-01.jpeg', 0, 0, 0),
(216, 'Shyju', 'Seenasadan', 'shyjumani79@gmail.com', 9715275776440, 1, 69683, 0, '2019-09-19', '2019-10-19', 'Kannur', 'Kerala', 1, 0, '2019-09-19 04:31:49', 0, 1, 0, 'Profile/80090-image.jpg', 0, 0, 0),
(217, '', '', 'rubinbaby92@gmail.com', 0, 1, 66459, 0, '2019-09-19', '2019-10-19', '', '', 0, 0, '2019-09-19 07:00:00', 0, 1, 0, '', 0, 0, 0),
(218, 'Abdul rasheed', 'Mulloli', '', 9747595920, 1, 58993, 0, '2019-09-19', '2019-10-19', 'Kannur', 'Kerala', 1, 1, '2019-09-19 06:15:42', 0, 1, 0, 'Profile/33297-20190208_222249.jpg', 0, 1, 0),
(219, '', '', '', 9747595920, 1, 58993, 0, '2019-09-19', '2019-10-19', '', '', 0, 0, '2019-09-19 07:00:00', 0, 1, 0, '', 0, 0, 0),
(220, 'Abhi', 'pattengattil', 'renjithtutu31@gmail.com', 7306452906, 1, 81009, 0, '2019-09-19', '2019-10-19', 'Alappuzha', 'Kerala', 1, 1, '2019-09-20 09:02:51', 0, 1, 0, 'Profile/40745-myxj_20190826110201_fast.jpg', 0, 1, 0),
(221, '', '', '100.liha@gmail.com', 0, 1, 37477, 0, '2019-09-20', '2019-10-20', '', '', 0, 0, '2019-09-20 07:00:00', 0, 1, 0, '', 0, 0, 0),
(222, 'Musthafa.k', 'Keereerakathu', 'musthafak89@gmail.com', 96894266895, 1, 84483, 0, '2019-09-20', '2019-10-20', 'Kannur', 'Kerala', 1, 0, '2019-09-20 09:49:06', 0, 1, 0, 'Profile/80621-+968-9426-6895-20190621_184441.jpg', 0, 0, 0),
(223, 'AbdulRashid ', 'à´‡à´°à´¿à´•àµà´•àµ‚à´°àµâ€ ', 'abdulrashidpp.8585@gmail.com', 9061208536, 1, 52035, 0, '2019-09-20', '2019-10-20', 'Kannur', 'Kerala', 1, 1, '2019-09-20 13:44:05', 0, 1, 0, 'Profile/3157-img_20190920_182200.jpg', 0, 1, 0),
(224, '', '', 'abdulrashidpp.8585@gmail.com', 0, 1, 52035, 0, '2019-09-20', '2019-10-20', '', '', 0, 0, '2019-09-20 07:00:00', 0, 1, 0, '', 0, 0, 0),
(225, 'Ashraf', ' Vegara', '', 8157071198, 1, 24926, 0, '2019-09-20', '2019-10-20', 'Malappuram', 'Kerala', 1, 1, '2019-09-20 15:16:09', 0, 1, 0, 'Profile/40040-d9632f2f-08fa-4fd8-b8ed-6c9c2b034c27.jpeg', 0, 1, 0),
(226, 'Haris calicut ', 'Calicut', '786haris786@gmail.com ', 8129991133, 1, 45618, 0, '2019-09-20', '2019-10-20', 'Kozhikode', 'Kerala', 1, 1, '2019-09-20 18:21:06', 0, 1, 0, 'Profile/64312-collagemaker_20190209_232652561.jpg', 0, 1, 0),
(227, 'Joice', 'Mandapathil, payyavoor', 'Joicemandapathil@gmail.com', 9048100582, 1, 34367, 0, '2019-09-20', '2019-10-20', 'Kannur', 'Kerala', 1, 1, '2019-09-20 18:58:23', 0, 1, 0, 'Profile/96789-dsc_0395.jpg', 0, 1, 0),
(228, 'Mohan.K.K', 'Kunnathully (H) ,P.O.Manalur', 'knenore@gmail.com', 9388442149, 1, 22872, 0, '2019-09-21', '2019-10-21', 'Thrissur', 'Kerala', 1, 1, '2019-09-21 00:25:49', 0, 1, 0, 'Profile/85544-img20190911125633.jpg', 0, 1, 0),
(229, 'Binu T U', 'Thevarmadam, N Marady, Muvattupuzha, Ernakulam, Kerala', '', 8921271512, 1, 77803, 0, '2019-09-21', '2019-10-21', 'Ernakulam', 'Kerala', 1, 0, '2019-09-21 09:08:17', 0, 1, 0, 'Profile/81461-img_20190919_174944.jpg', 0, 0, 0),
(230, 'Azwa.A.c', 'Sumayya manzil ,kannur ,irikkur', '', 7902938241, 1, 78459, 0, '2019-09-21', '2019-10-21', 'Kannur', 'Kerala', 1, 0, '2019-09-21 12:29:19', 0, 1, 0, 'Profile/32321-20190824_184314.jpg', 0, 0, 0),
(231, 'Rayees', 'Pm house , p.o kolachery', '', 9961936311, 1, 20220, 0, '2019-09-21', '2019-10-21', 'Kannur', 'Kerala', 1, 1, '2019-09-21 14:35:30', 0, 1, 0, 'Profile/1729-684e6eec-ddf2-47cf-bcaf-f55678742597.jpeg', 0, 1, 0),
(232, 'Shamal T', 'Thailkkandy house irikkur', '', 7736761315, 1, 25666, 0, '2019-09-21', '2019-10-21', 'Kannur', 'Kerala', 1, 0, '2019-09-21 15:43:07', 0, 1, 0, 'Profile/36714-6374517e-65f4-4e87-9bc4-9108205e6ab2.jpeg', 0, 0, 0),
(233, 'Fijas kandoth', 'Vadakara', '', 7306427958, 1, 59535, 0, '2019-09-21', '2019-10-21', 'Kozhikode', 'Kerala', 1, 1, '2019-09-21 17:27:03', 0, 1, 0, 'Profile/45094-33aaedad-eceb-48a7-9986-58f7b2a1b34c.jpeg', 0, 1, 0),
(234, 'Aboobacker Kp', 'punnathala,oo vettichira', '', 9809218527, 1, 12290, 0, '2019-09-21', '2019-10-21', 'Malappuram', 'Kerala', 1, 1, '2019-09-21 18:51:55', 0, 1, 0, 'Profile/35998-images-(7).jpeg', 0, 1, 0),
(235, '', '', '', 9961214209, 1, 94854, 0, '2019-09-21', '2019-10-21', '', '', 0, 0, '2019-09-21 07:00:00', 0, 1, 0, '', 0, 0, 0),
(236, 'Faisal naz', 'Puthan pura  irikkur', '', 9446987380, 1, 69362, 0, '2019-09-21', '2019-10-21', 'Kannur', 'Kerala', 1, 0, '2019-09-21 19:38:11', 0, 1, 0, 'Profile/7502-1567100597749.jpg', 0, 0, 0),
(237, 'jahfar', 'irikkur', 'jahfarvmmill@yahoo.com', 971559910014, 1, 72686, 0, '2019-09-21', '2019-10-21', 'Kannur', 'Kerala', 1, 0, '2019-09-21 21:36:20', 0, 1, 0, 'Profile/27626-yeecall-face-1454177782913.jpg', 0, 0, 0),
(238, 'Uvais k', 'Fathima Manzil sidhique Nagar ', '', 8137880192, 1, 91012, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 05:11:16', 0, 1, 0, 'Profile/99016-img_20190921_134752.jpg', 0, 0, 0),
(239, 'Director ', 'Eranakulam', 'tanindia17@gmail.com', 7902445500, 1, 97413, 0, '2019-09-22', '2019-10-22', 'Ernakulam', 'Kerala', 1, 0, '2019-09-22 09:12:15', 0, 1, 0, 'Profile/50694-img-20190823-wa0010.jpeg', 0, 0, 0),
(240, 'Shanif', 'Pallipath house  manjankarii', '', 7034770378, 1, 35479, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 12:42:59', 0, 1, 0, 'Profile/54789-img_20190922_175540_113.jpg', 0, 0, 0),
(241, 'Rojish Thomas', 'Kochupurackal ho poolakutty po nedumburamchal ', 'rojishthomas90@gmail.com', 96569023840, 1, 79947, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 12:51:46', 0, 1, 0, 'Profile/8450-7f89c025-2955-41e2-8bd7-89613f39cf24.jpeg', 0, 0, 0),
(242, 'Navaf', 'Ameerjhaan street chiolaimedu high road', '', 9895679162, 1, 20859, 0, '2019-09-22', '2019-10-22', 'Chennai', 'Tamil Nadu', 1, 0, '2019-09-22 12:51:02', 0, 1, 0, 'Profile/98022-img-20180926-wa0039.jpg', 0, 0, 0),
(243, 'Anees muhammed nv', 'muhsin cottage blathur', '', 9072150276, 1, 17035, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 13:16:41', 0, 1, 0, 'Profile/70494-img_20190605_145150.jpg', 0, 0, 0),
(244, 'Deepu', 'Tvm', 'Deepukbm78@gmail.com', 96896585063, 1, 29345, 0, '2019-09-22', '2019-10-22', 'Thiruvananthapuram', 'Kerala', 1, 0, '2019-09-22 13:17:15', 0, 1, 0, 'Profile/42682-img_20190915_095525.jpg', 0, 0, 0),
(245, '', '', '', 8089896211, 1, 39830, 0, '2019-09-22', '2019-10-22', '', '', 0, 0, '2019-09-22 07:00:00', 0, 1, 0, '', 0, 0, 0),
(246, '', '', '', 8606465245, 1, 32786, 0, '2019-09-22', '2019-10-22', '', '', 0, 0, '2019-09-22 07:00:00', 0, 1, 0, '', 0, 0, 0),
(247, 'Arshadpulikkool ', 'Pulikkool  peringathur', 'arshadpulikkool509@gmail.com ', 9745004072, 1, 76117, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 13:40:52', 0, 1, 0, 'Profile/35803-15691596375754999988373482897958.jpg', 0, 0, 0),
(248, '', '', '', 7306250221, 1, 78108, 0, '2019-09-22', '2019-10-22', '', '', 0, 0, '2019-09-22 07:00:00', 0, 1, 0, '', 0, 0, 0),
(249, 'MUHAMMED MUSHARAF', 'Vannathan valappil puthiyapurayil koyyam,koyyam(po),karimbam(via),kannur-670142', '', 8137868731, 1, 96103, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 13:56:20', 0, 1, 0, 'Profile/45639-20190920_023632.jpg', 0, 0, 0),
(250, 'Nasla_khan ', ' Chirakkanni (H) Kavumpadi Pallikkal BazarÂ - Airport Road, Karipur, Kerala, India pin 673634 ', '', 9072252475, 1, 74947, 0, '2019-09-22', '2019-10-22', 'Malappuram', 'Kerala', 1, 0, '2019-09-22 14:04:22', 0, 1, 0, 'Profile/22255-fb_img_1569160997889.jpg', 0, 0, 0),
(251, 'JasEem SaLam', 'Munderi, Kannur', '', 9633917279, 1, 13429, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 14:06:37', 0, 1, 0, 'Profile/42399-img_20190804_173800.jpg', 0, 0, 0),
(252, 'Sidhiq.m', 'Alathur irikkur kannur', 'Siddhiqbtr@gmail.com', 919961214209, 1, 91509, 0, '2019-09-22', '2020-09-21', 'Kannur', 'Kerala', 1, 0, '2019-09-22 14:09:29', 0, 1, 1, 'Profile/5577-img_20190809_133600_510.jpg', 1, 0, 0),
(253, '', '', '', 7909161528, 1, 52083, 0, '2019-09-22', '2019-10-22', '', '', 0, 0, '2019-09-22 07:00:00', 0, 1, 0, '', 0, 0, 0),
(254, 'Shuhaib ', 'Rahath mansil', 'Shuhaibrahath45@gmail.com', 551947433, 1, 76178, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 15:34:15', 0, 1, 0, 'Profile/34858-a71b4945-4485-4c81-982c-4aa2e344593a.jpeg', 0, 0, 0),
(255, 'Aasif', 'baithuljannah ', 'eimanaasif@gmail.com', 9497237304, 1, 12994, 0, '2019-09-22', '2019-10-22', 'Kozhikode', 'Kerala', 1, 0, '2019-09-22 16:05:21', 0, 1, 0, 'Profile/42954-img_e1756.jpg', 0, 0, 0),
(256, 'muhammed thanveer v', 'kunnikandi house kannur po irikkur', '', 7560927328, 1, 37791, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 16:40:02', 0, 1, 0, 'Profile/18544-946f80c2-52b9-4f4c-9424-f8bbaa193099.jpeg', 0, 0, 0),
(257, 'ASHFAK', 'Dharul khair blathur, kalliad ( po), kannur (dis)', 'ashfakka786@gmail.com', 8111987311, 1, 94015, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 16:43:42', 0, 1, 0, 'Profile/5235-img_20190922_125327.jpg', 0, 0, 0),
(258, 'Noufaliri', 'Kannur irikkur', '', 9061654175, 1, 17251, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 16:41:37', 0, 1, 0, 'Profile/73837-12961dae-90de-470d-a9dc-f535d08b1ed0.jpeg', 0, 0, 0),
(259, 'Amjad', 'Afla manzil', '', 7559041278, 1, 66427, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 16:41:55', 0, 1, 0, 'Profile/46454-img_20190917_050332_171.jpg', 0, 0, 0),
(260, '', '', '', 9947460925, 1, 48073, 0, '2019-09-22', '2019-10-22', '', '', 0, 0, '2019-09-22 07:00:00', 0, 1, 0, '', 0, 0, 0),
(261, 'Fayaz haneefa', 'Fathima villa, Town hall , Thalasseey', '', 9605404053, 1, 41218, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 16:45:46', 0, 1, 0, 'Profile/55519-20190110_172229-02.jpeg', 0, 0, 0),
(262, 'Ramshadibrahim ', 'Ramseena,ayppuzha irikkur ', 'Ramshadibrahim12@gmail.com', 971544022461, 1, 95209, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 17:05:13', 0, 1, 0, 'Profile/50781-55ac3930-1387-4e0a-b853-14f02ca15a2d.jpeg', 0, 0, 0),
(263, 'Sayyid saifudheen Thangal', 'Shareefa manzil, ayippuzha, irikkur(po)', '', 9526980402, 1, 30985, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 17:14:03', 0, 1, 0, 'Profile/82407-img_20190920_162334_241.jpg', 0, 0, 0);
INSERT INTO `userlogin` (`id`, `name`, `address`, `email`, `mobile`, `userType`, `otpGen`, `otpChek`, `fromDate`, `toDate`, `district`, `state`, `fkCountry`, `isBlocked`, `regDate`, `isValid`, `isExist`, `isPremier`, `userimg`, `fkPremierID`, `NoofAds`, `isAdmin`) VALUES
(264, 'SHAHIR A P', 'A P HOUSE, KOORARI, IRIKKUR PO, 670593', '', 8281065112, 1, 30481, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 17:17:04', 0, 1, 0, 'Profile/58208-img_20190922_224536_553.jpg', 0, 0, 0),
(265, '', '', '', 9747575913, 1, 41816, 0, '2019-09-22', '2019-10-22', '', '', 0, 0, '2019-09-22 07:00:00', 0, 1, 0, '', 0, 0, 0),
(266, '', '', 'Sajidac4u@gmail.com', 0, 1, 15330, 0, '2019-09-22', '2019-10-22', '', '', 0, 0, '2019-09-22 07:00:00', 0, 1, 0, '', 0, 0, 0),
(267, 'Sayed m ruby', 'Dubai ', 'sayedmruby@gmail.com', 971553840108, 1, 96778, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 18:02:14', 0, 1, 0, 'Profile/47108-6c511707-b1fc-4f11-a3ff-e19255f9214f.jpeg', 0, 0, 0),
(268, 'Ashrafmoossa', 'Thottathil house vilakkode (po) iritty(via)kannoor', 'ashraf2005786@gmail.com', 9526810992, 1, 19636, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 18:21:54', 0, 1, 0, 'Profile/81795-_dsc2042-(1).jpg', 0, 0, 0),
(269, 'RASHEED V K', 'valiyaparambil house ', 'rasheedthozhiyoor@outlook.com', 97466942630, 1, 17074, 0, '2019-09-22', '2019-10-22', 'Thrissur', 'Kerala', 1, 0, '2019-09-22 18:24:08', 0, 1, 0, 'Profile/89972-19429816_1535349429820407_7323540846422474248_n.jpg', 0, 0, 0),
(270, 'AP LATHEEF', 'AP HOUSE, IRIKKUR, NILAMUTTAM', '', 9633824696, 1, 71966, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-23 05:49:16', 0, 1, 0, 'Profile/19604-img_20190823_202943.jpg', 0, 0, 0),
(271, 'Ashraf padanna ', 'Zuhara Manzil, p.o padanna, kasargod', 'Padannaashraf@gmail.com', 971507180539, 1, 94420, 0, '2019-09-22', '2019-10-22', 'Kasaragod', 'Kerala', 1, 0, '2019-09-22 18:50:50', 0, 1, 0, 'Profile/10146-img-20190920-wa0026.jpg', 0, 0, 0),
(272, 'Irshad', 'Deira', 'Irshadbinahmed@gmail.com', 557468680, 1, 11226, 0, '2019-09-22', '2019-10-22', 'Kasaragod', 'Kerala', 1, 0, '2019-09-22 18:53:59', 0, 1, 0, 'Profile/71883-d576056f-6e2e-4ef9-853d-b5187d5e33a8.jpeg', 0, 0, 0),
(273, 'Swafwan', 'Vayalam valappil house Blathur PO Kalliad,district Kannur', '', 9995736095, 1, 76168, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 19:09:21', 0, 1, 0, 'Profile/57912-6885459c-4b8b-4887-a364-d54ad16ff11b.jpeg', 0, 0, 0),
(274, 'muhammed Anwar', 'Cheruvathur', 'anwarmuhammed174@gmail.com', 559044791, 1, 83842, 0, '2019-09-22', '2019-10-22', 'Kasaragod', 'Kerala', 1, 0, '2019-09-22 19:37:34', 0, 1, 0, 'Profile/74648-1569180837189576185989.jpg', 0, 0, 0),
(275, 'Abhilash', 'Perumannu', 'abhilashneelamkoth@gmail.com', 9747761258, 1, 27130, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 19:35:31', 0, 1, 0, 'Profile/43441-fb_img_1568614447414.jpg', 0, 0, 0),
(276, 'Mousuf v', 'Fathimas, siddique nagar', '', 9526405264, 1, 88198, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 19:38:54', 0, 1, 0, 'Profile/69084-img-20190923-wa0042.jpg', 0, 0, 0),
(277, '', '', '', 9526405264, 1, 88198, 0, '2019-09-22', '2019-10-22', '', '', 0, 0, '2019-09-22 07:00:00', 0, 1, 0, '', 0, 0, 0),
(278, '', '', '', 9526405264, 1, 88198, 0, '2019-09-22', '2019-10-22', '', '', 0, 0, '2019-09-22 07:00:00', 0, 1, 0, '', 0, 0, 0),
(279, '', '', '', 9526405264, 1, 88198, 0, '2019-09-22', '2019-10-22', '', '', 0, 0, '2019-09-22 07:00:00', 0, 1, 0, '', 0, 0, 0),
(280, 'Faruoq', 'moulakadavath', '', 9746934541, 1, 12559, 0, '2019-09-22', '2019-10-22', 'Malappuram', 'Kerala', 1, 1, '2019-09-22 20:09:46', 0, 1, 0, 'Profile/66628-screenshot_20170820-135518.png', 0, 1, 0),
(281, 'Murshid K R', 'K R House ,vayakkamgode paisai , irikkur', '', 9526012485, 1, 33093, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 20:07:47', 0, 1, 0, 'Profile/77807-img_1117.jpg', 0, 0, 0),
(282, 'Muhammed Abdul Muksith N', 'Junaid Manzil, Therur Palayode, PO. Edayannur, Pin.670595, Kannur, Kerala, India', 'Nmuksith@gmail.com', 566689585, 1, 76899, 0, '2019-09-22', '2019-10-22', 'Kannur', 'Kerala', 1, 0, '2019-09-22 20:07:19', 0, 1, 0, 'Profile/64340-img-20190921-wa0112.jpg', 0, 0, 0),
(283, '', '', '', 9544110405, 1, 63978, 0, '2019-09-22', '2019-10-22', '', '', 0, 0, '2019-09-22 07:00:00', 0, 1, 0, '', 0, 0, 0),
(284, 'Shameer P', 'Ayshas', '', 8606524883, 1, 89125, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 00:40:29', 0, 1, 0, 'Profile/30568-20180822_151655.jpg', 0, 0, 0),
(285, 'Afan Rahman U P', 'SHAFNAS', '', 7559876090, 1, 92638, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 00:45:11', 0, 1, 0, 'Profile/65174-img_20190812_152731_420.jpg', 0, 0, 0),
(286, '', '', '', 9526417091, 1, 17540, 0, '2019-09-23', '2019-10-23', '', '', 0, 0, '2019-09-23 07:00:00', 0, 1, 0, '', 0, 0, 0),
(287, '', '', '', 9048629514, 1, 10375, 0, '2019-09-23', '2019-10-23', '', '', 0, 0, '2019-09-23 07:00:00', 0, 1, 0, '', 0, 0, 0),
(288, 'Thanseer', 'Daru salam,siddheeque nagar, (po):irilkur  kannur,kerala', 'thanseercp0@gmail.com', 9048629514, 1, 97288, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 09:49:31', 0, 1, 0, 'Profile/33415-44530656-d137-4abf-9eab-8fee677e9164l0001.jpg', 0, 0, 0),
(289, 'Nufail K', 'Kozhukkal House', '', 9847391747, 1, 44896, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 02:43:35', 0, 1, 0, 'Profile/8657-10945280_1040559755958123_6437768946974411500_n.jpg', 0, 0, 0),
(290, 'Safi Muhammed', 'Sahir manzol alappuzha ', '', 8606150501, 1, 25940, 0, '2019-09-23', '2019-10-23', 'Alappuzha', 'Kerala', 1, 0, '2019-09-23 02:47:39', 0, 1, 0, 'Profile/42401-97ac8206-e2b9-43cc-8302-73c7abc6098a.jpeg', 0, 0, 0),
(291, '', '', '', 7306802829, 1, 24990, 0, '2019-09-23', '2019-10-23', '', '', 0, 0, '2019-09-23 07:00:00', 0, 1, 0, '', 0, 0, 0),
(292, 'SIDDEEQUE ', 'Valapattanam ', '', 9895786999, 1, 69391, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 03:22:59', 0, 1, 0, 'Profile/2723-img_0113.jpg', 0, 0, 0),
(293, '', '', '', 8606224774, 1, 41614, 0, '2019-09-23', '2019-10-23', '', '', 0, 0, '2019-09-23 07:00:00', 0, 1, 0, '', 0, 0, 0),
(294, 'Nafih', 'Puthanpura house PO irikkur', 'nafinappi32@gmail.com', 7025588051, 1, 31908, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 04:00:38', 0, 1, 0, 'Profile/34647-img_20190920_074302_954.jpg', 0, 0, 0),
(295, 'shamir', 'irikkur', 'shamirt17@gmail.com', 8111955967, 1, 96782, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 04:01:25', 0, 1, 0, 'Profile/41193-tmp-cam-671831186.jpg', 0, 0, 0),
(296, 'Nujaib P', 'Pallippath house pattuvam Irikkur P.O,', '', 8606414780, 1, 59031, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 04:04:24', 0, 1, 0, 'Profile/56715-77f7f268-65f3-4916-bfa2-e53c57580ea5.jpeg', 0, 0, 0),
(297, '', '', '', 9544227688, 1, 49701, 0, '2019-09-23', '2019-10-23', '', '', 0, 0, '2019-09-23 07:00:00', 0, 1, 0, '', 0, 0, 0),
(298, 'Ramshad kk ', 'Kodikkandy house sidhique nagar irikkur ', '', 9656827936, 1, 62391, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 05:16:45', 0, 1, 0, 'Profile/83113-faa59944-df23-4566-b659-bd184deb55e7.jpeg', 0, 0, 0),
(299, 'Ashique', 'Haseena manzil kakkad', '', 8089388325, 1, 85877, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 05:47:30', 0, 1, 0, 'Profile/16679-img_20190812_203707.jpg', 0, 0, 0),
(300, 'MUHAMMED SHUKKOOR', 'Arifa Manzi Mannoor 670702', '', 8136897142, 1, 37015, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 06:07:16', 0, 1, 0, 'Profile/83678-screenshot_2019-07-23-22-17-20-15.png', 0, 0, 0),
(301, 'mashhood', 'jeddah', 'machu.mashhood@gmail.com', 966571157100, 1, 25998, 0, '2019-09-23', '2019-10-23', 'Malappuram', 'Kerala', 1, 0, '2019-09-23 06:47:32', 0, 1, 0, 'Profile/51995-13443046_1042715105799468_1341566953172997888_o.jpg', 0, 0, 0),
(302, 'Muhammed fayis', 'Ch house irikkur pedyangode ', '', 7559948253, 1, 92301, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 06:54:52', 0, 1, 0, 'Profile/95185-img-20190801-wa0138.jpg', 0, 0, 0),
(303, 'Muhsin vk ', 'Kannur', '', 9562808800, 1, 57446, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 06:57:08', 0, 1, 0, 'Profile/66548-97b0bd80-a5e2-481f-9baa-7310cbe922b9.jpeg', 0, 0, 0),
(304, '', '', '', 9961803920, 1, 16991, 0, '2019-09-23', '2019-10-23', '', '', 0, 0, '2019-09-23 07:00:00', 0, 1, 0, '', 0, 0, 0),
(305, 'GANESH M A', '28/253 nellicode Calicut kerala ', '', 9495642286, 1, 30311, 0, '2019-09-23', '2019-10-23', 'Kozhikode', 'Kerala', 1, 0, '2019-09-23 09:49:17', 0, 1, 0, 'Profile/82100-image.jpg', 0, 0, 0),
(306, 'Thameem', 'Koyyam', 'thameembinumer786@gmail.com', 9744925141, 1, 60388, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 10:07:04', 0, 1, 0, 'Profile/42405-9af2d280-6b45-4541-b350-de002db23e5e.jpeg', 0, 0, 0),
(307, 'Fahad', 'Chalod  edayannur po   670595', '', 919946033924, 1, 66397, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 10:07:01', 0, 1, 0, 'Profile/82421-img-20190922-wa0017.jpg', 0, 0, 0),
(308, 'zainudheen ', 'sameera manzil kolappa', '', 7994515635, 1, 67615, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 10:41:02', 0, 1, 0, 'Profile/16985-img-20190920-wa0016.jpg', 0, 0, 0),
(309, 'VISHNU S P', 'Kuzhivilakathu Puthen Veedu Ettiruthi Kattakada', 'spdevish@gmail.com', 9539075721, 1, 14299, 0, '2019-09-23', '2019-10-23', 'Thiruvananthapuram', 'Kerala', 1, 0, '2019-09-23 11:53:27', 0, 1, 0, 'Profile/45249-1563534139976.jpg', 0, 0, 0),
(310, '', '', 'e4endeavour@gmail.com', 0, 1, 21042, 0, '2019-09-23', '2019-10-23', '', '', 0, 0, '2019-09-23 07:00:00', 0, 1, 0, '', 0, 0, 0),
(311, '', '', 'sammohamed.mohamed@gmail.com', 0, 1, 17808, 0, '2019-09-23', '2019-10-23', '', '', 0, 0, '2019-09-23 07:00:00', 0, 1, 0, '', 0, 0, 0),
(312, 'Safar', 'A.R house thekkemuri,vallikunnam', '', 9544104348, 1, 91650, 0, '2019-09-23', '2019-10-23', 'Alappuzha', 'Kerala', 1, 0, '2019-09-23 12:56:29', 0, 1, 0, 'Profile/9755-+91-95441-04348-20190414_150420.jpg', 0, 0, 0),
(313, 'Mon Varanad', 'Veliyil', 'shijumonvaranad@gmail.com', 9947166481, 1, 62034, 0, '2019-09-23', '2019-10-23', 'Alappuzha', 'Kerala', 1, 0, '2019-09-23 13:24:13', 0, 1, 0, 'Profile/7205-20190712_093052.jpg', 0, 0, 0),
(314, 'Hisham', '676517', '', 9961275771, 1, 10942, 0, '2019-09-23', '2019-10-23', 'Malappuram', 'Kerala', 1, 0, '2019-09-23 14:46:12', 0, 1, 0, 'Profile/94980-img_20190404_160217-01.jpeg', 0, 0, 0),
(315, 'Navas Mogar', 'kasaragod', 'navasmogar123@gmail.com', 8606360606, 1, 98168, 0, '2019-09-23', '2019-10-23', 'Kasaragod', 'Kerala', 1, 0, '2019-09-23 15:08:38', 0, 1, 0, 'Profile/55738-c4093752-e751-4bf3-9ce0-b5bcce062585.jpeg', 0, 0, 0),
(316, 'Muhammed Aslam', 'Kalluvettikuzhiyil', 'maslamkv6@gmail.com', 966595115543, 1, 67199, 0, '2019-09-23', '2019-10-23', 'Malappuram', 'Kerala', 1, 1, '2019-09-23 15:59:51', 0, 1, 0, 'Profile/84613-fb_img_1566591858002.jpg', 0, 3, 0),
(317, '', '', 'maslamkv6@gmail.com', 0, 1, 67199, 0, '2019-09-23', '2019-10-23', '', '', 0, 0, '2019-09-23 07:00:00', 0, 1, 0, '', 0, 0, 0),
(318, 'Ameer', 'metro real estate ,mangalore', '', 9449835553, 1, 53670, 0, '2019-09-23', '2019-10-23', 'Dakshina Kannada', 'Karnataka', 1, 0, '2019-09-23 15:18:44', 0, 1, 0, 'Profile/37711-img_20190923_204619.jpg', 0, 0, 0),
(319, 'ARTHAR T', 'Jamesbhavan, Eechankuzhy manalil po Anchal. Kollam dust. Kerala ', 'artharanchal@gmail.com', 9995631358, 1, 18404, 0, '2019-09-23', '2019-10-23', 'Kollam', 'Kerala', 1, 0, '2019-09-23 15:28:42', 0, 1, 0, 'Profile/53639-aaa-epson-print.jpg', 0, 0, 0),
(320, '', '', '', 9447290128, 1, 23967, 0, '2019-09-23', '2019-10-23', '', '', 0, 0, '2019-09-23 07:00:00', 0, 1, 0, '', 0, 0, 0),
(321, 'Abdul Jaleel ', 'Fathima Manzil ', '', 9633298844, 1, 63675, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 15:40:21', 0, 1, 0, 'Profile/56161-img-20180429-wa0049.jpg', 0, 0, 0),
(322, 'ABDUL KALAM', 'Korattiyan house karekkad po kadampuxha malappuram', 'Kalamkkd4@gmail.com', 559894957, 1, 93788, 0, '2019-09-23', '2019-10-23', 'Malappuram', 'Kerala', 1, 0, '2019-09-23 16:07:41', 0, 1, 0, 'Profile/52414-img-20190717-wa0002.jpg', 0, 0, 0),
(323, 'Ummar', 'Angadiyil ..chundampatta', '', 9846197786, 1, 10656, 0, '2019-09-23', '2019-10-23', 'Palakkad', 'Kerala', 1, 0, '2019-09-23 16:53:59', 0, 1, 0, 'Profile/92821-img_20190914_113122.jpg', 0, 0, 0),
(324, 'Suhail ', 'Baithul izzah, therur palayode, edayannur po. Kannur Kerala, 670595', '', 9656469641, 1, 10385, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 17:00:33', 0, 1, 0, 'Profile/44657-img_20190922_132840.jpg', 0, 0, 0),
(325, 'Vivek M', 'Baking Paradise, AR Building Kandamkulangara, Kunhimangalam (P.O)', '', 8078096515, 1, 70208, 0, '2019-09-23', '2019-10-23', 'Kannur', 'Kerala', 1, 0, '2019-09-23 17:12:28', 0, 1, 0, 'Profile/56905-img-20190912-wa0059.jpg', 0, 0, 0),
(326, 'Noushad', 'vennakkottil(Ho) Nilambur', 'Noushadchokkad@gmail.com', 966571041273, 1, 20390, 0, '2019-09-23', '2019-10-23', 'Malappuram', 'Kerala', 1, 0, '2019-09-23 17:22:49', 0, 1, 0, 'Profile/80096-img-20190923-wa0040.jpg', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `useroneaddetail`
--
-- Error reading structure for table directdeal.useroneaddetail: #1356 - View 'directdeal.useroneaddetail' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them
-- Error reading data for table directdeal.useroneaddetail: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM `directdeal`.`useroneaddetail`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `userpremdetail`
--
-- Error reading structure for table directdeal.userpremdetail: #1356 - View 'directdeal.userpremdetail' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them
-- Error reading data for table directdeal.userpremdetail: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM `directdeal`.`userpremdetail`' at line 1

-- --------------------------------------------------------

--
-- Stand-in structure for view `userpremdetails`
-- (See below for the actual view)
--
CREATE TABLE `userpremdetails` (
`id` int(100)
,`name` varchar(500)
,`address` varchar(2000)
,`email` varchar(500)
,`mobile` bigint(100)
,`userType` int(100)
,`otpGen` int(100)
,`otpChek` int(100)
,`fromDate` date
,`toDate` date
,`district` varchar(200)
,`state` varchar(200)
,`fkCountry` int(100)
,`isBlocked` int(50)
,`regDate` timestamp
,`isValid` int(100)
,`isExist` int(11)
,`isPremier` int(11)
,`userimg` varchar(500)
,`fkPremierID` int(11)
,`NoofAds` int(11)
,`isAdmin` int(11)
,`fkpremmId` int(11)
,`premmcategory` varchar(200)
,`premamt` bigint(20)
,`des1` varchar(500)
,`des2` varchar(500)
,`des3` varchar(500)
);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(100) NOT NULL,
  `fkUserId` int(100) NOT NULL,
  `vehicleType` int(11) NOT NULL,
  `vehicleCode` varchar(100) NOT NULL,
  `header` varchar(200) NOT NULL,
  `img` varchar(500) NOT NULL,
  `productName` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL,
  `model` varchar(500) NOT NULL,
  `buyDate` bigint(20) NOT NULL,
  `warranty` varchar(200) NOT NULL,
  `OtherSpecification` varchar(2000) NOT NULL,
  `minrate` bigint(20) NOT NULL,
  `maxrate` bigint(20) NOT NULL,
  `mobile` bigint(100) NOT NULL,
  `location` varchar(200) NOT NULL,
  `district` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `postDate` date NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isBlocked` int(100) NOT NULL,
  `fkCountryId` int(11) NOT NULL,
  `insure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `fkUserId`, `vehicleType`, `vehicleCode`, `header`, `img`, `productName`, `company`, `model`, `buyDate`, `warranty`, `OtherSpecification`, `minrate`, `maxrate`, `mobile`, `location`, `district`, `state`, `postDate`, `status`, `date`, `isBlocked`, `fkCountryId`, `insure`) VALUES
(1, 3, 1, 'VEHI1002', 'Maruti Swift 2016 for sale', 'Vehicle/60410-67711312_420683778654939_863099997690789888_n.jpg', 'Swift', 'Maruti Suzuki', 'vdi', 0, '', 'ABS', 0, 575000, 919526523539, 'Irikkur', 'Kannur', 'Kerala', '2019-08-12', 1, '2019-08-12 10:52:39', 0, 1, 1),
(2, 3, 1, 'VEHI1003', 'Honda Mobilio ivtec 2014', 'Vehicle/9297-67782550_420728468650470_7663499052352274432_n.jpg', 'Mobilio ivtec', 'Honda', '2014', 0, '', 'No replacement, Loan available', 0, 455000, 919072571124, 'Pattambi, Palakkad', 'Palakkad', 'Kerala', '2019-08-12', 1, '2019-08-12 07:00:00', 0, 1, 1),
(3, 3, 1, 'VEHI1004', 'Maruti eeco 2013 for sale', 'Vehicle/3246-67734018_420858655304118_3947004413071065088_n.jpg', 'eeco', 'Maruti Suzuki', '2013', 0, '', 'Ac 7 seater, Centre lock,  Rear cam, Touch screen, Music system, Single user,  Home use only', 0, 250000, 918943840071, 'Wandoor, Malappuram', 'Malappuram', 'Kerala', '2019-08-12', 1, '2019-08-12 07:00:00', 0, 1, 1),
(4, 3, 1, 'VEHI1005', 'Kawasaki Ninja 300 for sale ', 'Vehicle/62187-67780566_421213621935288_7959382789642518528_n.jpg', 'Ninja 300', 'Kawasaki', '2014', 0, '', '17,000 Kilometers', 0, 260000, 918848638760, 'Mannarkkad, Palakkad', 'Palakkad', 'Kerala', '2019-08-12', 1, '2019-08-12 07:00:00', 0, 1, 1),
(5, 3, 1, 'VEHI1006', 'Ciaz alpha automatic 2017', 'Vehicle/15574-68277566_421239608599356_6366010164037812224_n.jpg', 'alpha', 'Ciaz', '2017', 0, '', 'Good condition', 0, 790000, 919072571124, 'Pattambi, Palakkad', 'Kannur', 'Kerala', '2019-08-12', 1, '2019-08-12 07:00:00', 0, 1, 1),
(6, 3, 1, 'VEHI1007', 'Maruti 800 - 2011 for sale', 'Vehicle/12900-68485761_421270848596232_1095511101962977280_n.jpg', '800', 'Maruti Suzuki', '2011', 0, '', 'Ac, no complaints, clean vehicle', 0, 58000, 919605199726, 'Perinthalmanna', 'Malappuram', 'Kerala', '2019-08-12', 0, '2019-08-29 18:48:15', 0, 1, 1),
(7, 3, 1, 'VEHI1008', 'Eon Era Plus 2014 Model', 'Vehicle/79787-68690510_421272271929423_6449099527604404224_n.jpg', 'Eon Era Plus', 'Hyundai', '2014', 0, '', '47000km Only,  Company Services, Second Owner  No Accident History and No Replacements, High Quality, ', 0, 210000, 918113989797, 'Perinthalmanna', 'Malappuram', 'Kerala', '2019-08-12', 1, '2019-08-12 07:00:00', 0, 1, 1),
(8, 3, 1, 'VEHI1009', '2016 model duster Automatic', 'Vehicle/64435-67733292_421529851903665_355531238074744832_n.jpg', 'Duster', 'Renault', '2016', 0, '', '49000km, Diesel, Single owner, KL 07 regn Fancy number Showroom service No flood No accident history Average tyres Max finance available(upto 8 lakh depending on customer profile)', 0, 890000, 917510710955, 'Cochin', 'Ernakulam', 'Kerala', '2019-08-12', 1, '2019-08-12 07:00:00', 0, 1, 1),
(9, 3, 1, 'VEHI1010', 'Mahindra Jeep  1983 Model for sale', 'Vehicle/24439-68282264_423678571688793_784951461422301184_n.jpg', 'Jeep', 'Mahindra', '1983', 0, '', 'All papers clear', 0, 120000, 919656254129, 'Kuttippuram -Malappuram', 'Malappuram', 'Kerala', '2019-08-15', 1, '2019-08-15 07:00:00', 0, 1, 1),
(10, 3, 1, 'VEHI1011', '2019 model Honda Jazz', 'Vehicle/46719-68775592_426213301435320_4011325684382171136_n.jpg', 'Jazz', 'Honda', '2019', 0, '2800', 'Petrol Automatic, Exclusive Edition, New Michellin Tyre Worth 9500, New Car On road Price 10.7 Lakh', 0, 850000, 918848115654, 'Thrissur', 'Thrissur', 'Kerala', '2019-08-17', 1, '2019-08-17 07:00:00', 0, 1, 1),
(11, 3, 1, 'VEHI1012', 'Honda Activa 2017 for sale ', 'Vehicle/77887-69015433_426233591433291_4697620900906795008_n.jpg', 'Activa', 'Honda', '2017', 0, '20000', '', 0, 52000, 919544202220, 'Near Vengara, Malappuram', 'Kannur', 'Kerala', '2019-08-17', 1, '2019-08-17 07:00:00', 0, 1, 1),
(12, 3, 1, 'VEHI1013', 'Honda CDR for sale', 'Vehicle/59663-e65e8477-2fff-4d1f-bf80-240e46801a14.jpeg', 'CDR', 'Honda', '2014', 0, '28000', 'Single Owner', 0, 78000, 919544202220, 'Vengara, Malappuram ', 'Malappuram', 'Kerala', '2019-08-18', 1, '2019-08-18 07:00:00', 0, 1, 1),
(13, 3, 1, 'VEHI1014', 'Toyota Innova G4 for sale ', 'Vehicle/99658-016cff9e-980f-46f2-b3ba-d9ee33b6addd.jpeg', 'Innova G4', 'Toyota', '2013', 0, '72,000', 'No replacement ', 0, 1200000, 919544202220, 'Vengara, Malappuram', 'Malappuram', 'Kerala', '2019-08-18', 1, '2019-08-18 07:00:00', 0, 1, 1),
(14, 3, 1, 'VEHI1015', 'Toyota Etios Gd 2013 Delivery for sale', 'Vehicle/24107-68907811_427706961285954_5627875224826413056_n.jpg', 'Etios', 'Toyota', '2012', 0, '76000', 'Pioneer touch screen music player, Reverse camera, Seat covers, Full company service,  No accident history, No replacement, Insurance Idv 400000 till next March', 0, 450000, 919037221107, 'Tirur, Malappuram', 'Malappuram', 'Kerala', '2019-08-21', 1, '2019-08-21 07:00:00', 0, 1, 1),
(15, 3, 1, 'VEHI1016', 'Swift Dezire 2010 ZDI for sale ', 'Vehicle/60067-68622917_428069724583011_567007812752769024_n.jpg', 'Swift Dezire', 'Maruti Suzuki', '2010', 0, '89700', 'alloywheel, good tyres,  insurance march 2020,  3rd rc', 0, 300000, 919947773833, 'Peravoor, Iritty', 'Kannur', 'Kerala', '2019-08-21', 1, '2019-08-21 07:00:00', 0, 1, 1),
(17, 3, 1, 'VEHI1018', 'Maruti Suzuki Ritz vxi 2015 for Sale', 'Vehicle/21903-68648130_428177717905545_5895571349451046912_n.jpg', 'Ritz', 'Maruti Suzuki', '2015', 0, '30000', 'Touch screen Bluetooth music system, Reverse camera, High quality seat cover and mat, New amron battery with 5 year warranty, Company service, No accident history, Full cover insurance till December 2019, Neat and clean', 0, 450000, 917736142434, 'Tirur, Malappuram', 'Malappuram', 'Kerala', '2019-08-21', 1, '2019-08-21 07:00:00', 0, 1, 1),
(18, 3, 1, 'VEHI1019', 'Toyota Etios GD 2014 for sale', 'Vehicle/66740-69010311_428317441224906_1651456298731962368_n.jpg', 'Etios GD', 'Toyota', '2014', 0, '11000', 'MH Re Registration,  Noc Ready to KL57,  Rs.360000 with Noc, Rs.410000 with Kerala Number', 0, 360000, 919847894887, 'Calicut', 'Kozhikode', 'Kerala', '2019-08-21', 1, '2019-08-21 07:00:00', 0, 1, 1),
(19, 3, 1, 'VEHI1020', 'Maruti 800 - 1999 Last Model', 'Vehicle/24558-69010790_428351197888197_1648826039285055488_n.jpg', '800', 'Maruti', '1999', 0, '21000', 'KL 10 Registration,  New Apollo 4G front tyre, Test Done upto 2024', 0, 55000, 919400614033, 'Chandanakkampara, Payyavur', 'Kannur', 'Kerala', '2019-08-21', 1, '2019-08-21 07:00:00', 0, 1, 1),
(20, 3, 1, 'VEHI1021', 'Ritz vdi 2014 Model for sale', 'Vehicle/53286-84936ab6-0142-4743-8a8a-c253f04ca2ae.jpeg', 'Ritz', 'Maruti Suzuki', '2014', 0, '84000', 'Warranty available, loan available ', 0, 404000, 919072571124, 'Malappuram', 'Kannur', 'Kerala', '2019-08-22', 1, '2019-08-22 07:00:00', 0, 1, 1),
(21, 3, 1, 'VEHI1022', 'Alto Lxi 2009 Model for sale', 'Vehicle/10538-bc93b138-8e12-4b36-aab3-6f18cca8977e.jpeg', 'Alto', 'Maruti Suzuki', '2009', 0, '52000', '', 0, 155000, 919072571124, 'Pattambi ', 'Palakkad', 'Kerala', '2019-08-22', 1, '2019-08-22 07:00:00', 0, 1, 1),
(22, 3, 1, 'VEHI1023', 'Toyota Etios G(Petrol) 2013 Model', 'Vehicle/32145-98f878a4-1b26-46d3-b08a-ec93145932cb.jpeg', 'Etios G', 'Toyota ', '2013', 0, '66000', 'Full showroom service history, Single owner Leather seats Reverse Camera with parking sensors, In built music system', 0, 400000, 919846464071, 'Karunagappally', 'Kollam', 'Kerala', '2019-08-22', 1, '2019-08-22 07:00:00', 0, 1, 1),
(23, 3, 1, 'VEHI1024', 'Maruti Suzuki Swift 2010 Model for sale', 'Vehicle/82153-68755666_429162457807071_8739638215427751936_n.jpg', 'Swift', 'Maruti Suzuki', '2010', 0, '72000', 'vxi petrol', 0, 235000, 919072571124, 'Pattambi, Palakkad', 'Kannur', 'Kerala', '2019-08-25', 1, '2019-08-25 07:00:00', 0, 1, 1),
(24, 3, 1, 'VEHI1025', 'Hyundai Grand i10 - 2014 for sale', 'Vehicle/66897-68791893_429164527806864_2619646380855001088_n.jpg', 'Grand i10', 'Hyundai', '2014', 0, '52000', 'Petrol variant', 0, 325000, 919072571124, 'Pattambi, Palakkad', 'Palakkad', 'Kerala', '2019-08-25', 1, '2019-08-25 07:00:00', 0, 1, 1),
(25, 3, 1, 'VEHI1026', '1990 Mahindra open jeep for sale', 'Vehicle/76811-69229138_429172184472765_688880013742702592_n.jpg', 'Jeep', 'Mahindra', '1990', 0, '', 'All work is done, Paper fully clear, Retest is done before one month, Power brake, New battery,  Tyre condition is good', 0, 260000, 919847187604, 'Ponnani, Malappuram', 'Malappuram', 'Kerala', '2019-08-25', 1, '2019-08-25 07:00:00', 0, 1, 1),
(26, 3, 1, 'VEHI1027', '1997 Model Maruti Ambassador for sale', 'Vehicle/11912-69107184_429276454462338_4338709618059378688_n.jpg', 'Ambassador', 'Maruti', '1997', 0, '', 'Good condition', 0, 70000, 918592881214, 'Trissur', 'Thrissur', 'Kerala', '2019-08-25', 1, '2019-08-25 07:00:00', 0, 1, 1),
(27, 3, 1, 'VEHI1028', 'Toyota Innova top model 2011 for sale', 'Vehicle/32390-69409155_429298571126793_5687470593297874944_n.jpg', 'Innova', 'Toyota', '2011', 0, '128000', 'Re-registered, LCD screen with reverse camera', 0, 950000, 919946569684, 'Edathua, Allapuzha', 'Alappuzha', 'Kerala', '2019-08-25', 1, '2019-08-25 07:00:00', 0, 1, 1),
(29, 24, 1, 'VEHI1030', 'Maruti Ritz Ldi 2011', 'Vehicle/23017-60b75c89-679b-47be-8efe-ad57f7ee7ba5.jpeg', 'Ritz ', 'Maruti', '2011', 0, '96000', '2011 Ritz LDI  Diesel 95000km Single owner  Company service  Insurance upto Nov 2019 Music system  Seat cover  Good tyres Call 8156882513', 0, 269000, 8156882513, 'Kaloor ', 'Ernakulam', 'Kerala', '2019-08-27', 1, '2019-08-27 07:00:00', 0, 1, 1),
(30, 19, 1, 'VEHI1031', 'Use cars with loan', 'Vehicle/27855-img-20190826-wa0064.jpg', 'Alto 800', 'Maruthi', '2015', 0, '29000', 'Warranty and free service avialabale', 0, 260000, 9072571124, 'Pooladikkunu', 'Kozhikode', 'Kerala', '2019-08-27', 1, '2019-08-27 07:00:00', 0, 1, 1),
(31, 48, 1, 'VEHI1032', 'I\'m selling my Car', 'Vehicle/24959-20190713_130842.jpg', 'Etios Cross', 'Tayota', '2015', 0, '29000', 'This is good codition one owner', 0, 600000, 971569262993, 'Irikoor', 'Kannur', 'Kerala', '2019-08-27', 1, '2019-08-27 07:00:00', 0, 1, 0),
(32, 62, 1, 'VEHI1033', 'i10 sports 1.2 kappa full option ', 'Vehicle/37544-856d63fc-436b-4efb-9f6a-572a16c2444e.jpeg', 'Hundai i10', 'Hundai', '2012', 0, '610000', 'Neet @cleen ', 0, 280000, 9447405030, 'Pariyaram ', 'Kannur', 'Kerala', '2019-08-28', 0, '2019-09-19 02:46:26', 0, 1, 1),
(33, 68, 1, 'VEHI1034', 'ETIOS LIVA GD', 'Vehicle/46691-20190828_091147.jpg', 'Period lica gd', 'Toyota', '2015', 0, '115000', 'Dl re registered livagd.2015 december model.converted to new shape.dual air bag and abs', 0, 460000, 8589803225, 'Kizhakkambalam', 'Ernakulam', 'Kerala', '2019-08-28', 1, '2019-08-28 07:00:00', 0, 1, 1),
(34, 3, 1, 'VEHI1035', 'Swift Diesel - 2009 Model', 'Vehicle/69761-6b2a077d-3d26-47f3-b10e-a58abe689a67.jpeg', 'Swift', 'Maruti Suzuki ', '2009', 0, '165000', 'Diesel Variant, insurance until 2020 June, KL 13 Registration ', 0, 290000, 917909112200, 'Thaliparamba', 'Kannur', 'Kerala', '2019-08-28', 1, '2019-08-28 07:00:00', 0, 1, 1),
(35, 3, 1, 'VEHI1036', '2017 Model Classic Bullet 350cc', 'Vehicle/45833-69769045_430979784292005_466597103779446784_n.jpg', 'Bullet', 'Royal Enfield', 'Classic', 0, '32000', 'New 2 alloy tayer,  Very good condition,  All company service,  With service book ', 0, 130000, 918129509060, 'Calicut', 'Malappuram', 'Kerala', '2019-08-29', 1, '2019-08-29 07:00:00', 0, 1, 1),
(36, 3, 1, 'VEHI1037', 'Bolero ZLX 2015 Model for Sale', 'Vehicle/70468-682f3044-e1e7-45fc-a17f-5f8de4c6e0f3.jpeg', 'Bolero ZLX', 'Mahindra', '2015', 0, '69000', 'Company Service ', 0, 620000, 9447647567, 'Kolappa, Kannur ', 'Kannur', 'Kerala', '2019-08-29', 1, '2019-08-29 07:00:00', 0, 1, 1),
(38, 3, 1, 'VEHI1040', '2017 Model Innova Crista G4 automatic', 'Vehicle/51928-eadf9929-b5ca-4ed4-b4a5-c0a5bf9f15f8.jpeg', 'Innova Crista G4', 'Toyota', '2017', 0, '30,000', 'Single owner, correct showroom service, good condition, no replace new b2b insurance, good tyres & extra fittings', 0, 1800000, 919037221107, 'Tirur, Malappuram', 'Malappuram', 'Kerala', '2019-08-31', 1, '2019-08-31 07:00:00', 0, 1, 1),
(39, 3, 1, 'VEHI1041', 'Swift vxi automatic for sale model   2018 ', 'Vehicle/82739-c3018d5d-dcc2-4fce-a6c6-bda8293625e6.jpeg', 'Swift', 'Maruti Suzuki', 'Vxi Automatic', 0, '3500', '2019 Registration, No replacement ', 0, 650000, 9744314412, 'Kannur ', 'Kannur', 'Kerala', '2019-08-31', 1, '2019-08-31 07:00:00', 0, 1, 1),
(40, 82, 1, 'VEHI1042', 'Good condition cheep rate ', 'Vehicle/34347-img-20190830-wa0017.jpeg', 'Spark ls', 'Chevrolet ', '2009', 0, '63000', 'Good condition ac, power steering, power window, bt set, good tyer', 0, 70000, 9747740923, 'Irikkur', 'Kannur', 'Kerala', '2019-08-31', 1, '2019-08-31 07:00:00', 0, 1, 1),
(41, 3, 1, 'VEHI1043', '2010 Dec Swift Dezire Vdi', 'Vehicle/13067-8b2c0bc0-bbcc-445f-9781-f0c73809dfa2.jpeg', 'Swift Dezire Vdi', 'Maruti Suzuki ', '2010 December ', 0, '90000', 'Company Services, New 4 tyres, New battery, No replacement ', 0, 320000, 9495938603, 'Thiruvananthapuram', 'Thiruvananthapuram', 'Kerala', '2019-08-31', 0, '2019-09-17 02:08:24', 0, 1, 1),
(42, 3, 1, 'VEHI1044', 'ALTO 800 - 2016 Model for sale', 'Vehicle/19054-01e2babd-856a-4960-b15a-70f867dc0caf.jpeg', 'Alto 800', 'Maruti Suzuki ', '2016', 0, '51000', 'Petrol Variant, No replacement, Good condition ', 0, 240000, 919747740923, 'Irikkur, Kannur', 'Kannur', 'Kerala', '2019-08-31', 0, '2019-09-01 01:41:47', 0, 1, 1),
(43, 3, 1, 'VEHI1045', '2005 Model Omni for sale', 'Vehicle/25345-8c0f7924-26c8-4ba3-998e-0354ef61511f.jpeg', 'Omni', 'Maruti Suzuki', '2005', 0, '70000', 'Good condition, 4 wheels new, Battery new', 0, 69000, 9895801551, 'Kasargode ', 'Kasaragod', 'Kerala', '2019-09-01', 1, '2019-09-01 07:00:00', 0, 1, 1),
(44, 3, 1, 'VEHI1046', 'Innova G 2012 Model Converted to 2014', 'Vehicle/80800-f3a95cb8-0afe-4c47-bf49-79a760bac2d6.jpeg', 'Innova G', 'Toyota ', '2012', 0, '243000', 'New leather seats.Extra fittings and accessories worth 1.5 lakh. Alloy wheels, Halogen LED Headlamps and LED tail lights.Converted to 2014 model.Periodic service done at Toyota showroom till now. New Tire,New Insurance,New Battery.', 0, 950000, 971547826525, 'Karunagappally ', 'Kollam', 'Kerala', '2019-09-01', 1, '2019-09-01 07:00:00', 0, 1, 1),
(46, 3, 1, 'VEHI1048', '2015-16 Alto 800 vxi', 'Vehicle/82229-572c19b0-53b5-4528-b66d-67714fb0abf6.jpeg', 'Alto 800', 'Maruti Suzuki ', '2015', 0, '24000', 'No replacement ', 0, 245000, 917592883966, 'Thamarassery ', 'Kozhikode', 'Kerala', '2019-09-01', 1, '2019-09-01 07:00:00', 0, 1, 1),
(47, 91, 1, 'VEHI1049', '2017 Maruthi Swift single Owner ', 'Vehicle/14740-img-20190901-wa0014.jpg', 'Maruthi Swift ', 'Maruthi ', '2017', 0, '80000', 'Single Owner ', 0, 575000, 7511172017, 'Kayamkulam ', 'Alappuzha', 'Kerala', '2019-09-02', 1, '2019-09-02 07:00:00', 0, 1, 1),
(50, 63, 1, 'VEHI1051', 'Wagnor sale', 'Vehicle/54110-img-20190701-wa0001.jpg', 'Maruthi wagnor', 'Marutbi', '2008', 2008, '200100', 'New tyre,Good running condition,New full insurence ,Good A/c ler', 0, 129000, 9995980784, 'Kannur city ', 'Kannur', 'Kerala', '2019-09-02', 1, '2019-09-02 11:57:33', 0, 1, 1),
(51, 3, 1, 'VEHI1052', '2012 Model Hyundai i20 Full Option', 'Vehicle/59665-ff5bbcb9-e202-4814-8910-0f225f24ab5b.jpeg', 'i20', 'Hyundai', '2012 December ', 2012, '1,15,000', 'Full condition, Last Service 1,15,000', 0, 335000, 7736436004, 'Chelari, Malappuram ', 'Malappuram', 'Kerala', '2019-09-03', 1, '2019-09-03 07:00:00', 0, 1, 1),
(52, 3, 1, 'VEHI1053', '2015 Etios GD Original Kerala ', 'Vehicle/32221-1bfbddc7-f61d-40f5-ad11-5962aa37e3c1.jpeg', 'Etios GD', 'Toyota ', '2015', 2015, '115000', 'Converted Platinum Type, New Insurance, No replacement ', 0, 535000, 9947928287, 'Malappuram', 'Malappuram', 'Kerala', '2019-09-03', 1, '2019-09-03 07:00:00', 0, 1, 1),
(53, 103, 1, 'VEHI1054', 'Toyota innova caravan model for sale', 'Vehicle/55279-img-20190903-wa0044.jpg', 'Toyota innova caravan model', 'Toyota ', '2012', 2012, '65000', 'I want to sell Toyota innova 2012 model for sale caravan type innova Fully modified extra fitting upto 8laks good condition enjin and body no replace and accident history only 65000km run service book available spare key  all 2 owner orginal kerala model innova for more information call mee 8075074592 or 9947392874', 0, 1350000, 8075074492, 'Ayoour', 'Kollam', 'Kerala', '2019-09-03', 1, '2019-09-03 07:00:00', 0, 1, 1),
(54, 103, 1, 'VEHI1055', 'Iwant to sell Mitsubishi pajero', 'Vehicle/17683-img_20190726_200332.jpg', 'Pajero', 'Mitsubishi', '2011', 2011, '146000', 'Iwant to sell my Mitsubishi pajero full option 2.8 crdi  4x4 full new seat cover neat interior re register vandi for  All paper are clear for more information call mee ', 0, 900000, 8075074492, 'Ayoour', 'Kollam', 'Kerala', '2019-09-03', 1, '2019-09-03 07:00:00', 0, 1, 1),
(55, 103, 1, 'VEHI1056', 'Iwant to sell Mitsubishi lanzer', 'Vehicle/67108-img-20190726-wa0041.jpg', 'Mitsubishi lanzer', 'Mitsubishi', '2009', 2009, '132000', 'Want sell Mitsubishi lancer full option with good condition good tyre and alloyes no replace and no accident history for more information call me', 0, 225000, 8075074492, 'Ayoour', 'Kollam', 'Kerala', '2019-09-03', 1, '2019-09-03 07:00:00', 0, 1, 1),
(56, 103, 1, 'VEHI1057', 'Iwant to sell hundai Verna full option sx', 'Vehicle/65406-img-20190509-wa0011.jpg', 'Verna sx', 'Hundai', '2015', 2015, '34000', 'Call mee for more information', 0, 660000, 8075074492, 'Ayoour', 'Kollam', 'Kerala', '2019-09-03', 1, '2019-09-03 07:00:00', 0, 1, 1),
(57, 3, 2, 'VEHI1058', 'Mahindra 575 DI Tractor for Sale', 'Vehicle/99443-1656975f-5d55-4487-9443-3c8140b3492e.jpeg', '575 DI Tractor', 'Mahindra', '2014 Model', 2014, '', 'Single use, 2000 hours only', 0, 450000, 9747333644, 'Kallada, Kollam ', 'Kollam', 'Kerala', '2019-09-04', 1, '2019-09-04 07:00:00', 0, 1, 1),
(58, 3, 1, 'VEHI1059', '2016/August WAGON-R VXi Automatic', 'Vehicle/29506-01402b8d-8a28-4951-a21b-3d6165b913e8.jpeg', 'Wagan- R', 'Maruti Suzuki ', '2016 August ', 2016, '31000', 'Full correct showroom services only, New insurance full taken today(4/9/19) No replacements,  Single owner', 0, 400000, 9037221107, 'Tirur', 'Malappuram', 'Kerala', '2019-09-04', 1, '2019-09-04 07:00:00', 0, 1, 1),
(59, 3, 1, 'VEHI1060', 'Ford Fiesta 2008 Model ZXi Diesel, Original Kerala ', 'Vehicle/86744-858125a7-b4f3-490d-abeb-c8cea167d456.jpeg', 'Fiesta ZXi', 'Ford', '2008', 2008, '', 'Original kerala reg/ neat vechile/ price 225000/ good tyre/ insure new/ good AC cooling/ contact 8075892815 / Thalassery/ urgent sale', 0, 225000, 8075892815, 'Thalassery ', 'Kannur', 'Kerala', '2019-09-04', 1, '2019-09-04 07:00:00', 0, 1, 1),
(60, 95, 1, 'VEHI1061', '2002 model Toyota qualis', 'Vehicle/6160-dsc_0292.jpg', 'Qualis', 'Toyota', '2002', 2002, '329000', 'Good condition vehicle, all papers are cleared, power steering,Ac', 0, 225000, 7012228929, 'Mundur', 'Palakkad', 'Kerala', '2019-09-05', 1, '2019-09-05 07:00:00', 0, 1, 1),
(61, 3, 1, 'VEHI1062', '2017 Etios Liva V Petrol', 'Vehicle/85358-99fe5e4f-1a7e-4297-831e-63e78920c672.jpeg', 'Etios Liva V', 'Toyota', '2017', 2017, '3,500 Kilometers ', 'Petrol Variant, No replacement, Good condition ', 0, 575000, 8136940951, 'Wayanad ', 'Wayanad', 'Kerala', '2019-09-06', 1, '2019-09-06 07:00:00', 0, 1, 1),
(62, 116, 1, 'VEHI1063', '2019 FORD FREESTYLE DIESEL TITANIUM', 'Vehicle/30365-screenshot_20190907-064711.png', 'FORD FREESTYLE', 'FORD', '2018 model 2019 reg', 2019, '3500', 'Ford freestyle, diesel titanium,showroom condition,2019 january delivery,40000rs extra fittings', 0, 750000, 9633489968, 'Koyilandy', 'Kozhikode', 'Kerala', '2019-09-07', 1, '2019-09-07 07:00:00', 0, 1, 1),
(63, 3, 1, 'VEHI1064', 'Hyundai i20 Asta Option Top End Model', 'Vehicle/4861-70515827_437399470316703_2429677228573851648_n.jpg', 'i20 Asta', 'Hyundai', '2016', 2016, '67000', 'Single owner, Full Cimoany Service History, No Replcement, Neat And Clean Vehicle', 0, 670000, 9400335773, 'Punnayurkkulam, Guruvayur', 'Thrissur', 'Kerala', '2019-09-07', 1, '2019-09-07 07:00:00', 0, 1, 1),
(64, 3, 1, 'VEHI1065', 'Hyundai i20 Asta Option Top End Model', 'Vehicle/93225-69540999_437400060316644_31500793387417600_n.jpg', 'i20 Asta', 'Hyundai', '2016 Last', 2017, '71000', '2017 Registration, Single owner, Full Cimoany Service History, No Replcement, Neat And Clean Vehicle', 0, 690000, 9400335773, 'Punnayurkkulam, Guruvayur', 'Thrissur', 'Kerala', '2019-09-07', 1, '2019-09-07 07:00:00', 0, 1, 1),
(65, 3, 1, 'VEHI1066', 'Maruti Suzuki Gypsy King 1998', 'Vehicle/25402-69853867_437400830316567_7239346052342480896_n.jpg', 'Gypsy King', 'Maruti Suzuki', '1998', 1998, '', 'Petrol variant', 0, 315000, 9846464071, 'Karunagapally(Kollam)', 'Kollam', 'Kerala', '2019-09-07', 1, '2019-09-07 07:00:00', 0, 1, 1),
(66, 119, 1, 'VEHI1067', 'Modifed honda civic', 'Vehicle/82022-f820c564-59e9-4ab0-a71f-d4f0830ad3d8.jpeg', 'Honda civic', 'Honda', '2005', 2005, '2 lakhs ', 'Fully modifed , fancy number, new insurance, new battery', 0, 600000, 9562303303, 'Cheruvathur', 'Kasaragod', 'Kerala', '2019-09-07', 1, '2019-09-07 07:00:00', 0, 1, 1),
(69, 126, 1, 'VEHI1070', 'ROYAL ENFIELD CLASSIC 500', 'Vehicle/90761-picsart_09-06-09.06.31.jpg', 'ROYAL ENFIELD CLASSIC 500', 'ROYAL ENFIELD', 'CLASSIC 500', 2015, '15750', 'ROYAL ENFIELD CLASSIC 500 MODEL  : 2015 COLOR  : Black  KM DRIVEN : 15750 km NEW INSURANCE  FIRST OWNER  PRICE  :  135000', 0, 135000, 7902646911, 'Punalur', 'Pathanamthitta', 'Kerala', '2019-09-09', 1, '2019-09-09 07:00:00', 0, 1, 1),
(72, 132, 1, 'VEHI1072', 'Urgen sale', 'Vehicle/20967-20190908_171744.jpg', 'RE GUN METAL GREY', 'Royal enfield ', '2018 november ', 2018, '4300', ' Double discsell for buy a car Full condition Correct service4000 km Double disc Urgent sale For buy a car Full condition Correct service4000 km Double disc Urgent sale For buy a car Full condition Correct service4000 km Double disc Urgent sale For buy a car Full condition Correct service', 0, 158000, 9633055278, 'Malappuram', 'Malappuram', 'Kerala', '2019-09-10', 1, '2019-09-10 19:23:25', 0, 1, 1),
(73, 135, 2, 'VEHI1073', 'Jeep', 'Vehicle/27872-img_20190811_131531.jpg', 'Mahindra', 'Mahindra', '1995', 1995, '75000', '', 0, 170000, 9645746898, 'Chemperi', 'Kannur', 'Kerala', '2019-09-11', 1, '2019-09-11 07:00:00', 0, 1, 1),
(74, 3, 1, 'VEHI1074', 'ðŒðšð«ð®ð­ð¢ ð’ð®ð³ð®ð¤ð¢ ð™ð„ð ðŸðŸŽðŸŽðŸ“ ðŒð¨ððžð¥ ðŸð¨ð« ð¬ðšð¥ðž', 'Vehicle/80904-4ac2135b-5268-41e8-a9e1-8a1b9b2ed5f7.jpeg', 'ZEN', 'Maruti Suzuki ', '2005', 2005, '', 'Single rc New insurance New tyres No replacement All mechanical works done..... Good condition', 0, 75000, 9995558862, 'Kannur', 'Kannur', 'Kerala', '2019-09-11', 1, '2019-09-11 07:00:00', 0, 1, 1),
(75, 3, 1, 'VEHI1075', 'Yamaha FZ 2016 Model for sale ', 'Vehicle/67187-eeb12820-cf09-4e1f-8e7e-ec0f48511a22.jpeg', 'FZ', 'Yamaha ', '2016 October Model ', 2016, '24000', '', 0, 55000, 8594031546, 'Kannur', 'Kannur', 'Kerala', '2019-09-12', 0, '2019-09-19 03:45:18', 0, 1, 1),
(76, 3, 1, 'VEHI1076', 'ðŸðŸŽðŸðŸ” ð‘ðžð ð¢ð¬ð­ð«ðšð­ð¢ð¨ð§ ð…ð¢ðšð­ ðð®ð§ð­ð¨ ðƒð²ð§ðšð¦ð¢ðœ', 'Vehicle/41408-7c2f9951-b06a-4587-aadb-d9063ad90961.jpeg', 'Punto Dynamic ', 'Fiat', '2014', 2016, '60000', 'Diesel Variant ', 0, 295000, 9526523539, 'Kolappa, Kannur', 'Kannur', 'Kerala', '2019-09-12', 1, '2019-09-12 07:00:00', 0, 1, 1),
(77, 3, 1, 'VEHI1077', 'ð€ð¥ð­ð¨ ðŸðŸŽðŸðŸ— ðŒðšð² ðŒð¨ððžð¥ ðŸð¨ð« ð’ðšð¥ðž', 'Vehicle/79007-69748764_439382850118365_7018834331057520640_n.jpg', 'Alto BS VI', 'Maruti Suzuki', '2019 May', 2019, '5000', 'NRI used vehicle, No loan, Single rc owner', 0, 395000, 9061258464, 'Irikkur, Kannur', 'Kannur', 'Kerala', '2019-09-12', 1, '2019-09-12 07:00:00', 0, 1, 1),
(78, 3, 1, 'VEHI1078', 'ðŒðšð¡ð¢ð§ðð«ðš ð£ðžðžð© ðƒð¢ ðŸðŸ—ðŸ—ðŸ‘ ðŒð¨ððžð¥', 'Vehicle/74078-69747088_439186580137992_6104081905613799424_n.jpg', 'ð£ðžðžð© ðƒð¢', 'Mahindra', '1993', 1993, '', 'New insurance, New tyre, Papers all clear (renewed ), Tax upto 2024 & Renewal upto 2024', 0, 110000, 9567436165, 'Malappuram', 'Malappuram', 'Kerala', '2019-09-12', 1, '2019-09-12 07:00:00', 0, 1, 1),
(80, 3, 1, 'VEHI1080', 'Hyundai i20 Asta optional diesel 2016 Model', 'Vehicle/66303-37093d3f-8c52-4ebc-888e-bd488496d2fb.jpeg', 'i20 Asta', 'Hyundai', '2016', 2016, '30000', 'new tyres, new insurance  Single owner ,full company service', 0, 690000, 9037221107, 'Tirur, Malappuram ', 'Malappuram', 'Kerala', '2019-09-13', 1, '2019-09-13 07:00:00', 0, 1, 1),
(81, 103, 1, 'VEHI1081', 'Iwant to sell BMW 3 series 2007model', 'Vehicle/95987-img_20190913_151022.jpg', 'BMW', 'BMw 3 series', '2007', 2008, '135000', 'Iwant to sell BMW 3 series 2007model with full condition Gray  colour good and neet interior all paper are in clear no replace and accednt history 2009 model diesel  135000 km drive for more information call mee / msg  8075074492/ 9947392874', 0, 775000, 8075074492, 'Adoor', 'Pathanamthitta', 'Kerala', '2019-09-13', 1, '2019-09-13 07:00:00', 0, 1, 1),
(82, 142, 1, 'VEHI1082', 'Mahindra thar', 'Vehicle/7974-20190913_215340.jpg', 'Thar', 'Mahindra ', '2017', 2017, '36000', 'Single owner & new insurance /(iDV-750000) company service ', 0, 980000, 9847576723, 'Ponnani', 'Malappuram', 'Kerala', '2019-09-13', 1, '2019-09-13 07:00:00', 0, 1, 1),
(83, 3, 1, 'VEHI1083', 'Swift Diesel 2015 December ', 'Vehicle/58224-fb1ed47c-02e3-4f89-ba79-7d629cd6810d.jpeg', 'Swift', 'Maruti Suzuki ', '2015 December ', 2015, '65,000 Kilometers ', 'full neat condition,  5new tires , single RC owner, very good condition ', 0, 490000, 9526878103, 'Panoor, Kannur ', 'Kannur', 'Kerala', '2019-09-13', 1, '2019-09-13 07:00:00', 0, 1, 1),
(84, 3, 1, 'VEHI1084', '1982 Model Bullet for sale ', 'Vehicle/52302-452e383d-fa8f-4c11-87d5-ce952a902bc6.jpeg', 'Bullet', 'Royal Enfield', '1982', 1982, '65000', 'Fitness Certificate, All papers are clear ', 0, 120000, 97455228275, 'Kannur ', 'Kannur', 'Kerala', '2019-09-13', 1, '2019-09-13 07:00:00', 0, 1, 1),
(85, 163, 1, 'VEHI1085', 'Maruti Suzuki Swift Dzire Tour Taxi/Pvt 2016 Aug - 92025km URGENT SALE', 'Vehicle/48666-img_20190831_140818.jpg', 'Swift Dzire', 'Maruti Suzuki', '2016 August', 2016, '92025', 'Life tax Paid.  Insurance renewed recently and claimed in B2B.  Test done as your choice Taxi/Pvt. Centre lock & Power window.  LCD Screen with Reverse cam & sensor. Music System with 4 speakers.  Well maintained Interior & exterior.  Good condition 180/70/14 four tyres', 0, 435000, 9526501103, 'Perumbavoor', 'Ernakulam', 'Kerala', '2019-09-14', 1, '2019-09-14 07:00:00', 0, 1, 1),
(86, 3, 1, 'VEHI1086', '2017 Last Model Bullet for sale ', 'Vehicle/92814-ef1c1c61-37e3-45bd-bb63-675a0d09ed03.jpeg', 'Bullet', 'Royal Enfield', '2017', 2017, '32000', 'Good condition ', 0, 110000, 9544275208, 'Irikkur, Kannur', 'Kannur', 'Kerala', '2019-09-14', 1, '2019-09-14 07:00:00', 0, 1, 1),
(87, 3, 1, 'VEHI1087', 'ALTO LXI 2009 MODEL', 'Vehicle/36987-6a596ff2-fdf4-40fa-9a54-61e656ad4a23.jpeg', 'Alto', 'Maruti Suzuki ', '2009', 2009, '51000', 'No complaint', 0, 145000, 9446123983, 'Cheleri, Kannur ', 'Kannur', 'Kerala', '2019-09-14', 1, '2019-09-14 07:00:00', 0, 1, 1),
(88, 173, 1, 'VEHI1088', 'Good vehicle ', 'Vehicle/94948-img20190915090944.jpg', 'Baja Pulsar ', 'Bajaj', '135', 2011, '56000', 'New insurance and new tow Tyres and good performance ', 0, 16000, 9074399093, 'Thodupuzha ', 'Idukki', 'Kerala', '2019-09-15', 1, '2019-09-15 07:00:00', 0, 1, 1),
(89, 3, 1, 'VEHI1089', '2017 Maruti Suzuki WagonR', 'Vehicle/37790-bd348ef1-1374-4df3-a873-440fb0e7f5c1.jpeg', 'WagonR ', 'Maruti Suzuki ', '2017', 2017, '', 'Single owner New insurance without accident and replacement, good condition, high quality seats', 0, 440000, 9495938603, 'Nedumangad', 'Kannur', 'Kerala', '2019-09-15', 1, '2019-09-15 07:00:00', 0, 1, 1),
(90, 179, 1, 'VEHI1090', 'For sale', 'Vehicle/74066-20190915_171458.jpg', 'Alto 800 ', 'Maruthi suzuki', 'lxi', 2013, '65000', 'No replace... no acsident...... show room contetion', 0, 210000, 9207669503, 'Blathur', 'Kannur', 'Kerala', '2019-09-15', 1, '2019-09-15 07:00:00', 0, 1, 1),
(91, 181, 1, 'VEHI1091', 'Maruthi versa', 'Vehicle/78968-img_20190915_182142.jpg', 'Versa', 'Maruthi', '2005', 2005, '1.30', '', 0, 110000, 9645334454, 'Kannur', 'Kannur', 'Kerala', '2019-09-15', 1, '2019-09-15 07:00:00', 0, 1, 1),
(93, 3, 1, 'VEHI1093', 'Maruti Suzuki IGNIS 2018 Model', 'Vehicle/36411-7041489f-3633-40cf-abe4-e1c455970317.jpeg', 'IGNIS', 'Maruti Suzuki ', '2018 July ', 2018, '12000', '70000 rs accessories included, delta manual model, B to B insurence', 0, 550000, 9496976840, 'Kannur ', 'Kannur', 'Kerala', '2019-09-15', 1, '2019-09-15 07:00:00', 0, 1, 1),
(94, 3, 1, 'VEHI1094', 'Honda Civic 2012 Full Option', 'Vehicle/25366-fbf2428f-a1f7-4175-833c-48970fd5c25e.jpeg', 'Civic', 'Honda', '2012', 2012, '38,000', 'Contact through whatsapp ', 0, 650000, 96892315916, 'Panoor', 'Kannur', 'Kerala', '2019-09-16', 1, '2019-09-16 07:00:00', 0, 1, 1),
(95, 3, 1, 'VEHI1095', 'Hyundai Accent 2006 Model ', 'Vehicle/78920-7fd1f60b-e9c3-4bfe-be59-bb0d0e3085dd.jpeg', 'Accent ', 'Hyundai ', '2006', 2006, '', 'First owner, Running condition, New battery, But engine work remaining(almost 20,000),  Last price 70000', 0, 70000, 7511105777, 'Irinjalakkuda', 'Thrissur', 'Kerala', '2019-09-16', 1, '2019-09-16 07:00:00', 0, 1, 1),
(96, 3, 1, 'VEHI1096', 'Hyundai i20 Magna 2014 Diesel ', 'Vehicle/82431-b0d92236-cd82-4b1a-be91-ea8e687a79dd.jpeg', 'i20 Magna', 'Hyundai ', '2014', 2014, '25000', 'Company service, New Insurance ', 0, 400000, 9747762645, 'Thrippuninthura', 'Ernakulam', 'Kerala', '2019-09-16', 1, '2019-09-16 07:00:00', 0, 1, 1),
(97, 120, 1, 'VEHI1097', 'Swift dzire tour diesel vdi taxi', 'Vehicle/79511-fb_img_1568621601058.jpg', 'Swift dzire tour ', 'Maruthi suzuki', '2016', 2019, '165000', '2015 december m 2016 january registration Swift dizir 165000 km price  400000 lk lon closing 359990 Insurance IDV 405000', 0, 395000, 7356676766, 'Chelakkara', 'Thrissur', 'Kerala', '2019-09-16', 1, '2019-09-16 07:00:00', 0, 1, 1),
(98, 120, 1, 'VEHI1098', 'Omni cargo', 'Vehicle/4707-fb_img_1568621556035.jpg', 'Omni cargo', 'Maruthi', '2008', 2019, '95000', 'Gas petrol good condition .  New insurance new fitness No more work ', 0, 60000, 7356676766, 'Chelakkara', 'Thrissur', 'Kerala', '2019-09-16', 1, '2019-09-16 07:00:00', 0, 1, 1),
(100, 3, 1, 'VEHI1100', '2009  Volkswagen Jetta Diesel', 'Vehicle/35421-061e9592-b777-4cbe-aa32-0c4a7485eaf4.jpeg', 'Jetta', 'Volkswagen ', '2009', 2009, '125000', 'Airbags, ABS, Auto Ac, Music player,  4 door power window, Mirrors electrically adjustable, Rear defogger, Alloy wheels, Fog lamp, Stanley Seat cover', 0, 300000, 9846882513, 'Kaloor, Cochin ', 'Ernakulam', 'Kerala', '2019-09-16', 1, '2019-09-16 07:00:00', 0, 1, 1),
(103, 3, 1, 'VEHI1103', 'Bolero ZLX 2013 Last Model', 'Vehicle/46740-24f3e164-c709-40a9-ba1f-65e07bec8134.jpeg', 'Bolero ', 'Mahindra ', '2013 Last', 2013, '', 'Life tax, new insurance, ready to exchange with Mazda Tipper having auxiliary gear', 0, 500000, 9656335856, 'Kattappana, Idukki ', 'Idukki', 'Kerala', '2019-09-17', 1, '2019-09-17 07:00:00', 0, 1, 1),
(104, 206, 1, 'VEHI1104', '2015 model', 'Vehicle/49220-img-20190916-wa0008.jpg', 'Pulsar 220', 'Bajaj', '2015', 2015, '44200', 'Ins. Date 2020 jan. Last', 0, 55000, 9526561446, 'Adimaly,  kambilikandam', 'Idukki', 'Kerala', '2019-09-17', 1, '2019-09-17 07:00:00', 0, 1, 1),
(107, 3, 1, 'VEHI1107', '2018 June WagonR VXI', 'Vehicle/80314-39ecf7ef-2321-43e9-83a2-13baf2bc3a3f.jpeg', 'WagonR', 'Maruti Suzuki ', '2018 June', 2018, '30000', 'Single owner, Showroom Warranty upto 2023, Full cover Insurance upto Aug 2020, 2 Brand New tires, No replacement, Loan upto 4 lakh', 0, 450000, 9037221107, 'Tirur, Malappuram ', 'Malappuram', 'Kerala', '2019-09-17', 1, '2019-09-17 07:00:00', 0, 1, 1),
(109, 3, 1, 'VEHI1109', 'HONDA BR-V FOR SALE', 'Vehicle/52971-12c87e6d-34b8-4755-af4f-8c03c784a680.jpeg', 'BR-V', 'Honda', '2016', 2016, '22000', 'Good and neat condition ', 0, 850000, 9495438066, 'Location: ayroor,puthiyakavu', 'Pathanamthitta', 'Kerala', '2019-09-17', 1, '2019-09-17 07:00:00', 0, 1, 1),
(110, 3, 1, 'VEHI1110', 'Pulsar 220 - 2017 December For Sale', 'Vehicle/87426-f2cc78ba-f43c-4a8a-8e8f-b554f887cd94.jpeg', 'Pulsar 220', 'Bajaj', '2017 December ', 2017, '20000', '2 new tiers, Good condition ', 0, 60000, 8606135430, 'Kannur', 'Kannur', 'Kerala', '2019-09-17', 1, '2019-09-17 07:00:00', 0, 1, 1),
(111, 3, 1, 'VEHI1111', 'Swift vdi 2013 Model For Sale', 'Vehicle/76485-7266306b-6896-4067-823b-3765cf583b60.jpeg', 'Swift', 'Maruti Suzuki ', '2013', 2013, '', 'Full interior.  Tv reverse camera , Neat and good condition,  Genuine buyers only, contact on Whatsapp: +966565685199', 0, 360000, 966565685199, 'Kasargode ', 'Kasaragod', 'Kerala', '2019-09-17', 0, '2019-09-18 08:52:49', 0, 1, 1),
(112, 3, 1, 'VEHI1112', 'Ritz Vdi 2015 For Sale', 'Vehicle/6636-73e36ead-d663-43c6-ada8-01fcfdbc65c0.jpeg', 'Ritz', 'Maruti Suzuki ', '2015', 2015, '76000', 'Full cover insurance, Alloy wheel', 0, 400000, 7592883966, 'Koduvally', 'Kozhikode', 'Kerala', '2019-09-17', 1, '2019-09-17 07:00:00', 0, 1, 1),
(113, 3, 1, 'VEHI1113', 'Brezza ZDI 2017 Model ', 'Vehicle/99851-d69135a5-bc04-415f-9a9c-aef8a91fd739.jpeg', 'Brezza', 'Maruti Suzuki', '2017', 2017, '32000', 'Single owner , No scratch 4 new tyres. Insurance company , Insurance IDV 785, Kilometres 32000, High quality vehicle', 0, 930000, 9037221107, 'Changaramkulam', 'Malappuram', 'Kerala', '2019-09-18', 1, '2019-09-18 07:00:00', 0, 1, 1),
(114, 211, 1, 'VEHI1114', 'Toyota Innova', 'Vehicle/24477-img-20190527-wa0007.jpg', 'Toyota', 'Innova', '2016', 2016, '90000', 'Toyota Innova. KL REGISTRATION DONE WITH FANCY NUMBER. 2015 Dec.Manufactured  2016 Mar.Registration. MH Re registered innova. Showroom condition. Full paper clear. Asking price 11,80,000/-', 0, 1180000, 7034939999, 'Wadakanchery ', 'Thrissur', 'Kerala', '2019-09-18', 1, '2019-09-18 07:00:00', 0, 1, 1),
(115, 3, 1, 'VEHI1115', 'Hyundai santro xing GLS', 'Vehicle/66222-78542684-1dbd-474a-9c4a-80e6cb7885e0.jpeg', 'Santro Xinge GLS', 'Hyundai ', '2003', 2003, '', 'New tax and insurance,  Neat and clean car, Neatly maintained, No any major accident history,  3 new tires', 0, 90000, 7306250221, 'Cherpulassery', 'Palakkad', 'Kerala', '2019-09-18', 1, '2019-09-18 07:00:00', 0, 1, 1),
(117, 218, 1, 'VEHI1117', 'For sal', 'Vehicle/29197-15688736226107957008277060065532.jpg', 'Magic iris', 'Tata', '2014', 2014, '84000', '', 0, 145, 9747595920, 'Irikkur', 'Kannur', 'Kerala', '2019-09-19', 1, '2019-09-19 07:00:00', 0, 1, 1),
(119, 12, 1, 'VEHI1119', 'BAJAJ PULSAR FOR SALE ', 'Vehicle/40171-img-20190915-wa0036.jpg', 'PULSAR 180 ', 'BAJAJ', '2009', 2019, '', 'new battery ', 0, 13000, 7558869774, 'IRIKKUR ', 'Alappuzha', 'Kerala', '2019-09-19', 1, '2019-09-19 07:00:00', 0, 1, 1),
(121, 3, 1, 'VEHI1121', 'TATA SUPER ACE MODEL', 'Vehicle/36918-a69335b4-a270-4a79-8b0f-2c9bf5608154.jpeg', 'Super Ace', 'Tata ', '2013 Model ', 2013, '45000', 'Good condition, insurance . APRIL-  2020', 0, 200000, 9947622216, 'Kunnumpuram ', 'Malappuram', 'Kerala', '2019-09-19', 1, '2019-09-19 07:00:00', 0, 1, 1),
(122, 3, 1, 'VEHI1122', 'MARUTI ZEN ESTILO VXi 2009 MODEL', 'Vehicle/53592-79b16a70-438e-4445-b43a-787f44d9ca05.jpeg', 'Zen Estilo ', 'Maruti Suzuki ', '2009', 2009, '77500', 'No accident history. Not flooded vehicle. AC, Power Steering, Four door power windows, Central lock, Stereo, Seat covers. ', 0, 150000, 9745742605, 'Kalamassery, Cochin', 'Ernakulam', 'Kerala', '2019-09-19', 1, '2019-09-19 07:00:00', 0, 1, 1),
(123, 125, 1, 'VEHI1123', 'Urgent sale', 'Vehicle/71542-048d6676-8b75-4638-a21d-78093f52ff8d.jpeg', 'Redi-Go', 'Datsun', '2016', 2016, '19600', 'Single user,good condition,valid insurance,no accident,no replacement,company service ', 0, 288000, 7034013646, 'Ayippuzha ', 'Kannur', 'Kerala', '2019-09-20', 1, '2019-09-20 07:00:00', 0, 1, 1),
(124, 3, 1, 'VEHI1124', 'Hero Maestro Edge 2016 Model ', 'Vehicle/61265-643338f2-d017-4f88-96bd-314147dbc5b7.jpeg', 'Maestro Edge ', 'Hero', '2016', 2016, '24500', 'New tires, new insurance ', 0, 42000, 7025971884, 'Mukkom', 'Kozhikode', 'Kerala', '2019-09-20', 1, '2019-09-20 07:00:00', 0, 1, 1),
(125, 3, 1, 'VEHI1125', 'Ritz Vdi 2011 Model For Sale', 'Vehicle/88868-928f9848-f6fe-4d21-8710-1c6341312309.jpeg', 'Ritz', 'Maruti Suzuki ', '2011', 2011, '90000', 'Good condition ', 0, 300000, 9037221107, 'Tirur', 'Malappuram', 'Kerala', '2019-09-20', 1, '2019-09-20 07:00:00', 0, 1, 1),
(126, 220, 1, 'VEHI1126', 'Bajaj pulsar 220F for sale', 'Vehicle/96241-img_20190826_110304.jpg', 'Bajaj pulsar 220F', 'Bajaj', '2013', 2012, '63000', 'Dear all , i have one Bajaj Pulsar 220F for sale, Bike is showroom condition and look like a new bike.New tires, new insurance and all papers is up to date .Model is 2012 last, registered on 2013. Expecting price is 54000RS.', 0, 54000, 9446920275, 'Mulakuzha,Areekara', 'Alappuzha', 'Kerala', '2019-09-20', 1, '2019-09-20 07:00:00', 0, 1, 1),
(127, 3, 1, 'VEHI1127', '2015 Model Baleno For Sale ', 'Vehicle/50721-b26c42b1-4b7b-4d90-bdc5-3d24d0726d06.jpeg', 'Baleno', 'Maruti Suzuki ', '2015', 2015, '50000', 'Single Owner, full load, Alpha ', 0, 650000, 9544202220, 'Vengara ', 'Malappuram', 'Kerala', '2019-09-20', 1, '2019-09-20 07:00:00', 0, 1, 1),
(128, 223, 1, 'VEHI1128', 'Maruthi 800 5 gear', 'Vehicle/35828-img_20190920_182200.jpg', 'Maruthi 800', 'Maruthi suzuki ', '2001', 2001, '45000', '5 gear new suspension new brake pad new two side axil new three wheels new insurance ', 0, 48000, 9061208536, 'Irikkur', 'Kannur', 'Kerala', '2019-09-20', 1, '2019-09-20 07:00:00', 0, 1, 1),
(129, 3, 1, 'VEHI1129', 'Chevrolet Aveon LS 2007 Model ', 'Vehicle/28596-79f6ec2e-b978-4c61-9677-75e1f13596f5.jpeg', 'Aveon LS', 'Chevrolet ', '2007', 2007, '100000', 'All new tires', 0, 150000, 966572474053, 'Irikkur ', 'Kannur', 'Kerala', '2019-09-20', 1, '2019-09-20 07:00:00', 0, 1, 1),
(130, 225, 1, 'VEHI1130', 'Company service good vehicle', 'Vehicle/24131-611f5e45-09be-4486-8faa-69338d699803.jpeg', 'Hudai i20', 'Hudai', '2011 last', 2011, '127500', 'Doctor used vehicle first class insurance 2020', 0, 290000, 8157071198, 'Vengara', 'Malappuram', 'Kerala', '2019-09-20', 1, '2019-09-20 07:00:00', 0, 1, 1),
(132, 226, 1, 'VEHI1132', 'New model innova', 'Vehicle/63647-img-20190918-wa0076.jpg', 'Innova', 'Toyota', 'G4', 2010, '120000', '2010 model innova.  2015 registration.  5 year army using. Full condition vehicle.  Interior also good. New model crysta seat cover. 7 seat. For more details whatsapp only. +918129991133', 0, 650000, 8129991133, 'Calicut elathur', 'Kozhikode', 'Kerala', '2019-09-20', 1, '2019-09-20 07:00:00', 0, 1, 1),
(133, 3, 1, 'VEHI1133', '2014 Model Swift Dezire Ldi ', 'Vehicle/2705-7dd97b38-83b0-4acf-8325-5311a32f58f9.jpeg', 'Swift ', 'Maruti Suzuki ', '2014', 2014, '110000', 'Swift Dzire , Ldi , convert vdi ,  good engin , No accident, no replace , New tyre , Good engin , good interial finishing, Good body , All peper cler , good condition. (Loan availabile upto 2 lakhs)', 0, 330000, 7559944749, 'Guruvayoor', 'Thrissur', 'Kerala', '2019-09-21', 1, '2019-09-21 07:00:00', 0, 1, 1),
(134, 3, 1, 'VEHI1134', '2019 Hyundai i20 Asta Option TopEnd Model ', 'Vehicle/91089-076626e3-b241-448c-b425-059a872c9e72.jpeg', 'Asta', 'Hyundai ', '2019', 2019, '400', 'Only 400 Kilometers driven ', 0, 925000, 9400335773, 'Althara, Punnayoorkkulam ', 'Thrissur', 'Kerala', '2019-09-21', 1, '2019-09-21 07:00:00', 0, 1, 1),
(135, 3, 1, 'VEHI1135', 'Swif vdi 2013 Model Diesel Engine', 'Vehicle/74393-5aa7f145-dc3d-4ffd-88e2-1e72aa79226d.jpeg', 'Swift', 'Maruti Suzuki ', '2013', 2013, '79000', 'Single Owner ', 0, 400000, 7560816898, 'Engappuzha', 'Kozhikode', 'Kerala', '2019-09-21', 1, '2019-09-21 07:00:00', 0, 1, 1),
(136, 233, 1, 'VEHI1136', 'Car for sale', 'Vehicle/36186-f2b0987a-f02b-4d29-b8f3-a1e092b065c2.jpeg', 'Dzire ', 'Suzuki', '2017', 2017, '25000', '', 0, 1, 7306427958, 'Vadakara', 'Kozhikode', 'Kerala', '2019-09-21', 1, '2019-09-21 07:00:00', 0, 1, 1),
(138, 234, 1, 'VEHI1138', 'Wagon R', 'Vehicle/43296-img-20190819-wa0046.jpg', 'WagonR', 'Maruti', '2013', 2019, '74000', 'Neat and clean vehicle,good interior', 0, 305000, 9496518859, 'Kadampazhippuram,Palakkad', 'Malappuram', 'Kerala', '2019-09-21', 1, '2019-09-21 07:00:00', 0, 1, 1),
(139, 3, 1, 'VEHI1139', 'Honda Civic for sale ', 'Vehicle/86228-c9909395-22f7-4403-a84b-53de0940c6d6.jpeg', 'Civic', 'Honda ', '2012', 2012, '38000', 'Contact by whatsapp: 0096892315916', 0, 650000, 96892315916, 'Panoor', 'Kannur', 'Kerala', '2019-09-22', 1, '2019-09-22 07:00:00', 0, 1, 1),
(140, 103, 1, 'VEHI1140', 'I want to sell my vespa 125 lx model for sale ', 'Vehicle/14598-img-20190922-wa0055.jpg', 'Vespa', 'Piaggio', '2013', 2013, '25000', 'I want to sell my vespa 125 lx model for sale with good condition all paper are in clear with good condition yellow colour  for more information call mee / msg to mee 80/ 75/07/44/92/ or 99/ 47/ 39/ 28/ 74', 0, 36000, 8075074492, 'Ayoour', 'Kollam', 'Kerala', '2019-09-22', 1, '2019-09-22 07:00:00', 0, 1, 1),
(141, 12, 1, 'VEHI1141', 'MARUTI SWIFT FULL OPTION FOR SALE ', 'Vehicle/43347-img-20190922-wa0185.jpg', 'SWIFT ZDI', 'MARUTI SUZUKI ', '2013', 2019, '85000', '#ALLOY WHEEL...# AIRBAG...... # TOTAL 3 TV SCREENS...... # REVERSE CAMERA WITH FULL SENSOR..... #BACK WIPER......# FRONT MODIFIED BLACK GRILL WORTH RS.6000......# BLACK COLOR ON ROOF....... # FANCY NUMBER', 0, 450000, 7558869774, 'BLATHUR , KANNUR ', 'Kannur', 'Kerala', '2019-09-22', 1, '2019-09-22 07:00:00', 0, 1, 1),
(143, 12, 1, 'VEHI1142', 'BAJAJ AUTO FOR SALE ', 'Vehicle/94603-img-20190922-wa0170.jpg', 'BAJAJ RE445 AUTO RIKSHA', 'BAJAJ', '2012', 2012, '', 'new tyre.... new battery', 0, 45000, 7558869774, 'BLATHUR ,  KANNUR ', 'Kannur', 'Kerala', '2019-09-22', 1, '2019-09-22 07:00:00', 0, 1, 1),
(144, 3, 1, 'VEHI1143', 'Hero Honda Glamour 2011 For Sale', 'Vehicle/7955-e0bb4369-3e60-4e72-b496-a7e29742ee91.jpeg', 'Glamour ', 'Hero Honda', '2011', 2011, '55000', 'All papers are clear, good condition ', 0, 20000, 9447667293, 'Peravoor', 'Kannur', 'Kerala', '2019-09-23', 1, '2019-09-23 07:00:00', 0, 1, 1),
(145, 3, 1, 'VEHI1144', 'Maruti Suzuki WagonR 2018 vxi ', 'Vehicle/53687-704d7eee-f314-4954-bef9-b8fd43b84772.jpeg', 'WagonR ', 'Maruti Suzuki ', '2018', 2018, '14000', 'No replacement ', 0, 445000, 7592883966, 'Mukkam', 'Kozhikode', 'Kerala', '2019-09-23', 1, '2019-09-23 07:00:00', 0, 1, 1),
(147, 3, 1, 'VEHI1145', '2013 Honda Trigger for sale ', 'Vehicle/67359-26b3803c-724b-40f0-bfd2-ae43c75141bf.jpeg', 'Trigger', 'Honda', '2013', 2013, '40000', 'new insurence, new tyre,chain sproket,clutch disc , all service done , whatsapp only', 0, 35000, 9496976840, 'Koothuparamba', 'Kannur', 'Kerala', '2019-09-23', 1, '2019-09-23 07:00:00', 0, 1, 1),
(148, 316, 1, 'VEHI1146', 'Alto std 2005-2006 no AC power steering', 'Vehicle/21003-2019-09-21-21.41.26.jpg', 'Alto', 'Maruti', '2006', 2006, '88000', '2006 Ac à´‡à´²àµà´² . à´«àµàµ¾ à´•à´£àµà´Ÿàµ€à´·àµ» .', 0, 70, 966595115543, 'Pookottumpadam', 'Malappuram', 'Kerala', '2019-09-23', 1, '2019-09-23 07:00:00', 0, 1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vehiuserdetailsv`
-- (See below for the actual view)
--
CREATE TABLE `vehiuserdetailsv` (
`id` int(100)
,`fkUserId` int(100)
,`vehicleType` int(11)
,`vehicleCode` varchar(100)
,`header` varchar(200)
,`img` varchar(500)
,`productName` varchar(500)
,`company` varchar(500)
,`model` varchar(500)
,`buyDate` bigint(20)
,`warranty` varchar(200)
,`OtherSpecification` varchar(2000)
,`minrate` bigint(20)
,`maxrate` bigint(20)
,`mobile` bigint(100)
,`location` varchar(200)
,`district` varchar(200)
,`state` varchar(200)
,`postDate` date
,`status` int(11)
,`date` timestamp
,`isBlocked` int(100)
,`fkCountryId` int(11)
,`insure` int(11)
,`UserID` int(100)
,`name` varchar(500)
,`address` varchar(2000)
,`email` varchar(500)
,`Usermob` bigint(100)
,`userType` int(100)
,`fromDate` date
,`toDate` date
,`userDistId` varchar(200)
,`userStateId` varchar(200)
,`fkCountryidd` int(100)
,`userBlocked` int(50)
,`isExist` int(11)
,`isValid` int(100)
,`isPremier` int(11)
,`userimg` varchar(500)
,`fkPremierID` int(11)
,`NoofAds` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `view_count`
--

CREATE TABLE `view_count` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `view_count`
--

INSERT INTO `view_count` (`id`, `date`, `views`) VALUES
(1, '2019-01-28', 10),
(2, '2019-01-29', 7),
(3, '2019-01-30', 7),
(4, '2019-01-31', 9),
(5, '2019-02-01', 5),
(6, '2019-02-02', 5),
(7, '2019-02-03', 3),
(8, '2019-02-04', 3),
(9, '2019-02-05', 3),
(10, '2019-02-07', 3),
(11, '2019-02-08', 7),
(12, '2019-02-09', 5),
(13, '2019-02-10', 2),
(14, '2019-02-11', 1),
(15, '2019-02-12', 2),
(16, '2019-02-13', 9),
(17, '2019-02-14', 18),
(18, '2019-02-15', 1),
(19, '2019-02-16', 11),
(20, '2019-02-17', 7),
(21, '2019-02-18', 1),
(22, '2019-02-19', 5),
(23, '2019-02-20', 4),
(24, '2019-02-21', 11),
(25, '2019-02-22', 1),
(26, '2019-02-23', 4),
(27, '2019-02-24', 4),
(28, '2019-02-25', 9),
(29, '2019-02-26', 6),
(30, '2019-02-27', 5),
(31, '2019-02-28', 3),
(32, '2019-03-02', 1),
(33, '2019-03-03', 4),
(34, '2019-03-04', 5),
(35, '2019-03-05', 6),
(36, '2019-03-06', 2),
(37, '2019-03-07', 7),
(38, '2019-03-08', 3),
(39, '2019-03-09', 23),
(40, '2019-03-10', 9),
(41, '2019-03-11', 1),
(42, '2019-03-12', 5),
(43, '2019-03-13', 3),
(44, '2019-03-14', 5),
(45, '2019-03-15', 3),
(46, '2019-03-17', 4),
(47, '2019-03-18', 2),
(48, '2019-03-19', 6),
(49, '2019-03-20', 5),
(50, '2019-03-21', 1),
(51, '2019-03-22', 3),
(52, '2019-03-23', 11),
(53, '2019-03-24', 4),
(54, '2019-03-25', 1),
(55, '2019-03-26', 8),
(56, '2019-03-27', 8),
(57, '2019-03-28', 8),
(58, '2019-03-29', 1),
(59, '2019-03-30', 3),
(60, '2019-03-31', 6),
(61, '2019-04-01', 2),
(62, '2019-04-02', 15),
(63, '2019-04-03', 5),
(64, '2019-04-04', 4),
(65, '2019-04-05', 6),
(66, '2019-04-06', 5),
(67, '2019-04-07', 6),
(68, '2019-04-08', 2),
(69, '2019-06-14', 6),
(70, '2019-06-15', 9),
(71, '2019-06-16', 13),
(72, '2019-06-18', 8),
(73, '2019-06-20', 5),
(74, '2019-06-24', 1),
(75, '2019-06-26', 1),
(76, '2019-06-27', 1),
(77, '2019-06-28', 1),
(78, '2019-07-02', 2),
(79, '2019-07-03', 1),
(80, '2019-07-22', 111),
(81, '2019-07-23', 8),
(82, '2019-07-24', 7),
(83, '2019-07-25', 1),
(84, '2019-07-28', 52),
(85, '2019-07-29', 11),
(86, '2019-07-30', 6),
(87, '2019-07-31', 61),
(88, '2019-08-01', 52),
(89, '2019-08-02', 2),
(90, '2019-08-03', 2),
(91, '2019-08-04', 13),
(92, '2019-08-05', 3),
(93, '2019-08-06', 5),
(94, '2019-08-07', 18),
(95, '2019-08-08', 27),
(96, '2019-08-09', 19),
(97, '2019-08-10', 20),
(98, '2019-08-11', 6),
(99, '2019-08-12', 6),
(100, '2019-08-13', 18),
(101, '2019-08-14', 29),
(102, '2019-08-15', 40),
(103, '2019-08-16', 11),
(104, '2019-08-17', 10),
(105, '2019-08-18', 4),
(106, '2019-08-19', 25),
(107, '2019-08-20', 39),
(108, '2019-08-21', 33),
(109, '2019-08-22', 5),
(110, '2019-08-23', 5),
(111, '2019-08-24', 10),
(112, '2019-08-25', 11),
(113, '2019-08-26', 13),
(114, '2019-08-27', 21),
(115, '2019-08-28', 85),
(116, '2019-08-29', 48),
(117, '2019-08-30', 25),
(118, '2019-08-31', 35),
(119, '2019-09-01', 22),
(120, '2019-09-02', 50),
(121, '2019-09-03', 139),
(122, '2019-09-04', 44),
(123, '2019-09-05', 23),
(124, '2019-09-06', 38),
(125, '2019-09-07', 17),
(126, '2019-09-08', 17),
(127, '2019-09-09', 18),
(128, '2019-09-10', 12),
(129, '2019-09-11', 16),
(130, '2019-09-12', 26),
(131, '2019-09-13', 54),
(132, '2019-09-14', 102),
(133, '2019-09-15', 60),
(134, '2019-09-16', 231),
(135, '2019-09-17', 199),
(136, '2019-09-18', 50),
(137, '2019-09-19', 25),
(138, '2019-09-20', 89),
(139, '2019-09-21', 132),
(140, '2019-09-22', 180),
(141, '2019-09-23', 285);

-- --------------------------------------------------------

--
-- Structure for view `commuserdetailsv`
--
DROP TABLE IF EXISTS `commuserdetailsv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hewt2ax401o2`@`localhost` SQL SECURITY DEFINER VIEW `commuserdetailsv`  AS  select `commercial`.`id` AS `id`,`commercial`.`forcomm` AS `forcomm`,`commercial`.`code` AS `code`,`commercial`.`header` AS `header`,`commercial`.`img` AS `img`,`commercial`.`buildingAreaValue` AS `buildingAreaValue`,`commercial`.`buildingAreaUnit` AS `buildingAreaUnit`,`commercial`.`landAreaValue` AS `landAreaValue`,`commercial`.`landAreaUnit` AS `landAreaUnit`,`commercial`.`numberOfFloors` AS `numberOfFloors`,`commercial`.`numberOfRooms` AS `numberOfRooms`,`commercial`.`roadAccess` AS `roadAccess`,`commercial`.`otherFacilities` AS `otherFacilities`,`commercial`.`minrate` AS `minrate`,`commercial`.`maxrate` AS `maxrate`,`commercial`.`location` AS `location`,`commercial`.`district` AS `district`,`commercial`.`state` AS `state`,`commercial`.`contact` AS `contact`,`commercial`.`status` AS `status`,`commercial`.`fkUserId` AS `fkUserId`,`commercial`.`date` AS `date`,`commercial`.`isBlocked` AS `isBlocked`,`commercial`.`fkCountryId` AS `fkCountryId`,`userlogin`.`id` AS `UserID`,`userlogin`.`name` AS `name`,`userlogin`.`address` AS `address`,`userlogin`.`email` AS `email`,`userlogin`.`mobile` AS `Usermob`,`userlogin`.`userType` AS `userType`,`userlogin`.`fromDate` AS `fromDate`,`userlogin`.`toDate` AS `toDate`,`userlogin`.`district` AS `userDistId`,`userlogin`.`state` AS `userStateId`,`userlogin`.`fkCountry` AS `fkCountry`,`userlogin`.`isBlocked` AS `userBlocked`,`userlogin`.`isExist` AS `isExist`,`userlogin`.`isValid` AS `isValid`,`userlogin`.`isPremier` AS `isPremier`,`userlogin`.`userimg` AS `userimg`,`userlogin`.`fkPremierID` AS `fkPremierID`,`userlogin`.`NoofAds` AS `NoofAds` from (`userlogin` join `commercial` on((`userlogin`.`id` = `commercial`.`fkUserId`))) ;

-- --------------------------------------------------------

--
-- Structure for view `eleuserdetailsv`
--
DROP TABLE IF EXISTS `eleuserdetailsv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hewt2ax401o2`@`localhost` SQL SECURITY DEFINER VIEW `eleuserdetailsv`  AS  select `electronics`.`id` AS `id`,`electronics`.`code` AS `code`,`electronics`.`fkUserId` AS `fkUserId`,`electronics`.`header` AS `header`,`electronics`.`img` AS `img`,`electronics`.`productName` AS `productName`,`electronics`.`company` AS `company`,`electronics`.`model` AS `model`,`electronics`.`proCondition` AS `proCondition`,`electronics`.`minrate` AS `minrate`,`electronics`.`maxrate` AS `maxrate`,`electronics`.`location` AS `location`,`electronics`.`district` AS `district`,`electronics`.`state` AS `state`,`electronics`.`fkCountry` AS `fkCountry`,`electronics`.`postDate` AS `postDate`,`electronics`.`warranty` AS `warranty`,`electronics`.`description` AS `description`,`electronics`.`mobile` AS `mobile`,`electronics`.`status` AS `status`,`electronics`.`date` AS `date`,`electronics`.`isBlocked` AS `isBlocked`,`userlogin`.`id` AS `UserID`,`userlogin`.`name` AS `name`,`userlogin`.`address` AS `address`,`userlogin`.`email` AS `email`,`userlogin`.`mobile` AS `Usermob`,`userlogin`.`userType` AS `userType`,`userlogin`.`fromDate` AS `fromDate`,`userlogin`.`toDate` AS `toDate`,`userlogin`.`district` AS `userDistId`,`userlogin`.`state` AS `userStateId`,`userlogin`.`fkCountry` AS `fkCountryidd`,`userlogin`.`isBlocked` AS `userBlocked`,`userlogin`.`isExist` AS `isExist`,`userlogin`.`isValid` AS `isValid`,`userlogin`.`isPremier` AS `isPremier`,`userlogin`.`userimg` AS `userimg`,`userlogin`.`fkPremierID` AS `fkPremierID`,`userlogin`.`NoofAds` AS `NoofAds` from (`userlogin` join `electronics` on((`userlogin`.`id` = `electronics`.`fkUserId`))) ;

-- --------------------------------------------------------

--
-- Structure for view `landuserdetailsv`
--
DROP TABLE IF EXISTS `landuserdetailsv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hewt2ax401o2`@`localhost` SQL SECURITY DEFINER VIEW `landuserdetailsv`  AS  select `land`.`id` AS `id`,`land`.`forland` AS `forland`,`land`.`code` AS `code`,`land`.`header` AS `header`,`land`.`plotAreaValues` AS `plotAreaValues`,`land`.`plotAreaUnits` AS `plotAreaUnits`,`land`.`plotType` AS `plotType`,`land`.`plotShape` AS `plotShape`,`land`.`roadAccess` AS `roadAccess`,`land`.`otherFacilities` AS `otherFacilities`,`land`.`minrate` AS `minrate`,`land`.`maxrate` AS `maxrate`,`land`.`location` AS `location`,`land`.`district` AS `district`,`land`.`state` AS `state`,`land`.`mobile` AS `mobile`,`land`.`status` AS `status`,`land`.`fkUserId` AS `fkUserId`,`land`.`postDate` AS `postDate`,`land`.`isBlocked` AS `isBlocked`,`land`.`date` AS `date`,`land`.`img` AS `img`,`userlogin`.`id` AS `UserID`,`userlogin`.`name` AS `name`,`userlogin`.`address` AS `address`,`userlogin`.`email` AS `email`,`userlogin`.`mobile` AS `Usermob`,`userlogin`.`userType` AS `userType`,`userlogin`.`fromDate` AS `fromDate`,`userlogin`.`toDate` AS `toDate`,`userlogin`.`district` AS `userDistId`,`userlogin`.`state` AS `userStateId`,`userlogin`.`fkCountry` AS `fkCountry`,`userlogin`.`isBlocked` AS `userBlocked`,`userlogin`.`isExist` AS `isExist`,`userlogin`.`isValid` AS `isValid`,`userlogin`.`isPremier` AS `isPremier`,`userlogin`.`userimg` AS `userimg`,`userlogin`.`fkPremierID` AS `fkPremierID`,`userlogin`.`NoofAds` AS `NoofAds` from (`userlogin` join `land` on((`userlogin`.`id` = `land`.`fkUserId`))) ;

-- --------------------------------------------------------

--
-- Structure for view `resiuserdetailsv`
--
DROP TABLE IF EXISTS `resiuserdetailsv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hewt2ax401o2`@`localhost` SQL SECURITY DEFINER VIEW `resiuserdetailsv`  AS  select `residential`.`id` AS `id`,`residential`.`forresi` AS `forresi`,`residential`.`header` AS `header`,`residential`.`code` AS `code`,`residential`.`resType` AS `resType`,`residential`.`postDate` AS `postDate`,`residential`.`img` AS `img`,`residential`.`houseAreaValue` AS `houseAreaValue`,`residential`.`houseAreaUnit` AS `houseAreaUnit`,`residential`.`landAreaValue` AS `landAreaValue`,`residential`.`landAreaUnit` AS `landAreaUnit`,`residential`.`numberOfFloor` AS `numberOfFloor`,`residential`.`numberOfBedRooms` AS `numberOfBedRooms`,`residential`.`Kitchen` AS `Kitchen`,`residential`.`workArea` AS `workArea`,`residential`.`Hall` AS `Hall`,`residential`.`Balcony` AS `Balcony`,`residential`.`furnished` AS `furnished`,`residential`.`flooring` AS `flooring`,`residential`.`RoadAccess` AS `RoadAccess`,`residential`.`otherFacilities` AS `otherFacilities`,`residential`.`minrate` AS `minrate`,`residential`.`maxrate` AS `maxrate`,`residential`.`location` AS `location`,`residential`.`mobile` AS `mobile`,`residential`.`district` AS `district`,`residential`.`state` AS `state`,`residential`.`status` AS `status`,`residential`.`fkUserId` AS `fkUserId`,`residential`.`isBlocked` AS `isBlocked`,`residential`.`date` AS `date`,`residential`.`fkCountryId` AS `fkCountryId`,`userlogin`.`id` AS `UserID`,`userlogin`.`name` AS `name`,`userlogin`.`address` AS `address`,`userlogin`.`email` AS `email`,`userlogin`.`mobile` AS `Usermob`,`userlogin`.`userType` AS `userType`,`userlogin`.`fromDate` AS `fromDate`,`userlogin`.`toDate` AS `toDate`,`userlogin`.`district` AS `userDistId`,`userlogin`.`state` AS `userStateId`,`userlogin`.`fkCountry` AS `fkCountryidd`,`userlogin`.`isBlocked` AS `userBlocked`,`userlogin`.`isExist` AS `isExist`,`userlogin`.`isValid` AS `isValid`,`userlogin`.`isPremier` AS `isPremier`,`userlogin`.`userimg` AS `userimg`,`userlogin`.`fkPremierID` AS `fkPremierID`,`userlogin`.`NoofAds` AS `NoofAds` from (`userlogin` join `residential` on((`userlogin`.`id` = `residential`.`fkUserId`))) ;

-- --------------------------------------------------------

--
-- Structure for view `userpremdetails`
--
DROP TABLE IF EXISTS `userpremdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hewt2ax401o2`@`localhost` SQL SECURITY DEFINER VIEW `userpremdetails`  AS  select `userlogin`.`id` AS `id`,`userlogin`.`name` AS `name`,`userlogin`.`address` AS `address`,`userlogin`.`email` AS `email`,`userlogin`.`mobile` AS `mobile`,`userlogin`.`userType` AS `userType`,`userlogin`.`otpGen` AS `otpGen`,`userlogin`.`otpChek` AS `otpChek`,`userlogin`.`fromDate` AS `fromDate`,`userlogin`.`toDate` AS `toDate`,`userlogin`.`district` AS `district`,`userlogin`.`state` AS `state`,`userlogin`.`fkCountry` AS `fkCountry`,`userlogin`.`isBlocked` AS `isBlocked`,`userlogin`.`regDate` AS `regDate`,`userlogin`.`isValid` AS `isValid`,`userlogin`.`isExist` AS `isExist`,`userlogin`.`isPremier` AS `isPremier`,`userlogin`.`userimg` AS `userimg`,`userlogin`.`fkPremierID` AS `fkPremierID`,`userlogin`.`NoofAds` AS `NoofAds`,`userlogin`.`isAdmin` AS `isAdmin`,`premium`.`id` AS `fkpremmId`,`premium`.`category` AS `premmcategory`,`premium`.`amt` AS `premamt`,`premium`.`des1` AS `des1`,`premium`.`des2` AS `des2`,`premium`.`des3` AS `des3` from (`userlogin` join `premium` on((`userlogin`.`fkPremierID` = `premium`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vehiuserdetailsv`
--
DROP TABLE IF EXISTS `vehiuserdetailsv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hewt2ax401o2`@`localhost` SQL SECURITY DEFINER VIEW `vehiuserdetailsv`  AS  select `vehicles`.`id` AS `id`,`vehicles`.`fkUserId` AS `fkUserId`,`vehicles`.`vehicleType` AS `vehicleType`,`vehicles`.`vehicleCode` AS `vehicleCode`,`vehicles`.`header` AS `header`,`vehicles`.`img` AS `img`,`vehicles`.`productName` AS `productName`,`vehicles`.`company` AS `company`,`vehicles`.`model` AS `model`,`vehicles`.`buyDate` AS `buyDate`,`vehicles`.`warranty` AS `warranty`,`vehicles`.`OtherSpecification` AS `OtherSpecification`,`vehicles`.`minrate` AS `minrate`,`vehicles`.`maxrate` AS `maxrate`,`vehicles`.`mobile` AS `mobile`,`vehicles`.`location` AS `location`,`vehicles`.`district` AS `district`,`vehicles`.`state` AS `state`,`vehicles`.`postDate` AS `postDate`,`vehicles`.`status` AS `status`,`vehicles`.`date` AS `date`,`vehicles`.`isBlocked` AS `isBlocked`,`vehicles`.`fkCountryId` AS `fkCountryId`,`vehicles`.`insure` AS `insure`,`userlogin`.`id` AS `UserID`,`userlogin`.`name` AS `name`,`userlogin`.`address` AS `address`,`userlogin`.`email` AS `email`,`userlogin`.`mobile` AS `Usermob`,`userlogin`.`userType` AS `userType`,`userlogin`.`fromDate` AS `fromDate`,`userlogin`.`toDate` AS `toDate`,`userlogin`.`district` AS `userDistId`,`userlogin`.`state` AS `userStateId`,`userlogin`.`fkCountry` AS `fkCountryidd`,`userlogin`.`isBlocked` AS `userBlocked`,`userlogin`.`isExist` AS `isExist`,`userlogin`.`isValid` AS `isValid`,`userlogin`.`isPremier` AS `isPremier`,`userlogin`.`userimg` AS `userimg`,`userlogin`.`fkPremierID` AS `fkPremierID`,`userlogin`.`NoofAds` AS `NoofAds` from (`userlogin` join `vehicles` on((`userlogin`.`id` = `vehicles`.`fkUserId`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codegen`
--
ALTER TABLE `codegen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commercial`
--
ALTER TABLE `commercial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `electronics`
--
ALTER TABLE `electronics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobcat`
--
ALTER TABLE `jobcat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `land`
--
ALTER TABLE `land`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `premium`
--
ALTER TABLE `premium`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `residential`
--
ALTER TABLE `residential`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `samejobs`
--
ALTER TABLE `samejobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shape`
--
ALTER TABLE `shape`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subimages`
--
ALTER TABLE `subimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `superlogin`
--
ALTER TABLE `superlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `view_count`
--
ALTER TABLE `view_count`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `codegen`
--
ALTER TABLE `codegen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `commercial`
--
ALTER TABLE `commercial`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `electronics`
--
ALTER TABLE `electronics`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobcat`
--
ALTER TABLE `jobcat`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `land`
--
ALTER TABLE `land`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `premium`
--
ALTER TABLE `premium`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `residential`
--
ALTER TABLE `residential`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `samejobs`
--
ALTER TABLE `samejobs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shape`
--
ALTER TABLE `shape`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subimages`
--
ALTER TABLE `subimages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT for table `superlogin`
--
ALTER TABLE `superlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `view_count`
--
ALTER TABLE `view_count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
