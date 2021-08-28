-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 02:42 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `borneotransverse`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `banner`, `position`, `status`, `created`, `modified`) VALUES
(2, 'photo/5fb36272bcaf6.jpg', 2, '2', '2020-10-27 13:28:12', '2020-11-23 10:35:30'),
(3, 'photo/5fb363444ae6d.jpg', 3, '2', '2020-10-27 13:28:16', '2020-11-23 10:35:30'),
(4, 'photo/5fb35f5f63f30.jpg', 1, '2', '2020-11-09 13:27:28', '2020-11-23 10:35:30'),
(7, 'photo/5fbb1ff9d5d3c.jpg', 1, '2', '2020-11-23 10:35:37', '2020-11-23 12:35:17'),
(8, 'photo/5fbb202e21556.jpg', 3, '1', '2020-11-23 10:36:30', '2020-11-23 11:55:10'),
(9, 'photo/5fbb2030b9d79.jpg', 4, '1', '2020-11-23 10:36:32', '2020-11-23 11:55:13'),
(14, 'photo/5fbb328e85058.jpg', 1, '1', '2020-11-23 11:54:54', '2020-11-23 12:35:22'),
(13, 'photo/5fbb31292ac7e.jpg', 2, '1', '2020-11-23 11:48:57', '2020-11-23 11:55:21');

-- --------------------------------------------------------

--
-- Table structure for table `banner_dashboard`
--

CREATE TABLE `banner_dashboard` (
  `id` int(11) NOT NULL,
  `banner_dashboard` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `location` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `location`, `category`, `photo`, `position`, `status`, `created`, `modified`) VALUES
(1, 1, 'S. Category 01', NULL, 1, '1', '2020-11-14 11:36:11', '2020-11-14 11:36:11'),
(2, 1, 'S. Category 02', NULL, 2, '1', '2020-11-14 11:36:19', '2020-11-14 11:36:19'),
(3, 2, 'S. Category 03', NULL, 3, '1', '2020-11-14 11:36:28', '2020-11-14 11:36:28'),
(4, 2, 'S. Category 04', NULL, 4, '1', '2020-11-14 11:36:36', '2020-11-14 11:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `title`, `content`, `status`, `created`, `modified`) VALUES
(1, 'Contact Us', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"row\">\r\n<div class=\"col-12 col-md-6\"><strong style=\"font-size: 30px;\">Address</strong><br /><span style=\"color: #808080;\">E-4-27 (Level 4), Gala City Street Mall, Jalan Tun Jugah, 93350 Kuching Sarawak, Malaysia</span> <br /><br /><strong style=\"font-size: 30px;\">Mailbox</strong><br /><span style=\"color: #808080;\">P.O. Box 1283 93726 Kuching Sarawak, Malaysia</span> <br /><br /></div>\r\n<div class=\"col-12 col-md-6\">\r\n<p><strong style=\"font-size: 30px;\"><strong style=\"font-size: 30px;\">H/P</strong><br /></strong><span style=\"color: #808080;\">+6 013 8188773</span></p>\r\n<p><strong style=\"font-size: 30px;\">Phone</strong><br /><span style=\"color: #808080;\">+6 082 265 717 , +6 082 265 718</span></p>\r\n<p><strong style=\"font-size: 30px;\">Fax</strong><br /><span style=\"color: #808080;\">+6 082 265 719</span></p>\r\n<p><strong style=\"font-size: 30px;\">Email</strong><br /><span style=\"color: #808080;\">info@borneorealestate.com.my</span></p>\r\n</div>\r\n</div>\r\n</body>\r\n</html>', '1', '2020-10-27 13:43:52', '2020-11-14 12:46:41'),
(2, 'Home Welcome', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div style=\"background-image: url(\'../../images/undraw_Airport_re_oqk1.svg\'); background-position: 97% bottom; background-repeat: no-repeat; background-size: 22%;\">\r\n<p style=\"text-align: center;\"><br /><img src=\"../../images/logo_ver.png\" alt=\"\" width=\"177\" height=\"70\" /></p>\r\n<h1 style=\"text-align: center;\">Welcome to Borneo Transverse</h1>\r\n<div class=\"row\" style=\"text-align: center;\">\r\n<div class=\"col-12 col-md-6 offset-md-3\">Welcome to the world of BorneoTransverse Tours! A family runs business to realize the love of travel; to search for new vistas and experience and to see for ourselves the rich diversity of history, people and their cultures that make up the world.</div>\r\n</div>\r\n<p style=\"text-align: center;\"><br /><br /></p>\r\n</div>\r\n</body>\r\n</html>', NULL, '2020-10-27 13:43:52', '2020-11-23 11:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE `developer` (
  `id` int(11) NOT NULL,
  `developer_photo` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`id`, `developer_photo`, `position`, `status`, `created`, `modified`) VALUES
(1, 'photo/5fa0aed81c68e.png', 1, '1', '2020-10-27 13:36:40', '2020-11-03 09:14:00'),
(2, 'photo/5fa0aeeb8a211.png', 2, '1', '2020-10-27 13:36:43', '2020-11-03 09:14:19'),
(3, 'photo/5fa0af0e2a35d.jpg', 3, '1', '2020-10-27 13:36:48', '2020-11-03 09:14:54'),
(4, 'photo/5fa0af137c1b4.png', 4, '1', '2020-10-27 13:36:52', '2020-11-03 09:14:59'),
(5, 'photo/5fa0af1a14eb1.jpg', 5, '1', '2020-10-27 13:36:58', '2020-11-03 09:15:06'),
(6, 'photo/5fa0af216b190.jpg', 6, '1', '2020-10-27 13:37:01', '2020-11-03 09:15:13'),
(7, 'photo/5fa0af296d32f.jpg', 7, '1', '2020-10-27 13:37:57', '2020-11-03 09:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home_block`
--

CREATE TABLE `home_block` (
  `id` int(11) NOT NULL,
  `block_text` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_block`
--

INSERT INTO `home_block` (`id`, `block_text`, `position`, `status`, `created`, `modified`) VALUES
(1, 'Numerous of deals done', 1, '1', '2020-10-27 13:42:15', '2020-10-27 13:42:15'),
(2, '40 team members at your services', 2, '1', '2020-10-27 13:42:26', '2020-10-27 13:42:26'),
(3, '24/7 available around the clock', 3, '1', '2020-10-27 13:42:33', '2020-10-27 13:42:33');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `location`, `photo`, `position`, `status`, `created`, `modified`) VALUES
(1, 'Sarawak', NULL, 1, '1', '2020-11-12 15:42:03', '2020-11-14 12:06:26'),
(2, 'Sabah', NULL, 2, '1', '2020-11-12 15:42:07', '2020-11-12 15:43:03'),
(3, 'Brunei', NULL, 3, '1', '2020-11-12 15:42:11', '2020-11-12 15:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `temp_password` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `group_id`, `location`, `name`, `email`, `username`, `password`, `temp_password`, `status`, `created`, `modified`) VALUES
(1, 1, 5, 'Administrator', 'jonathan.wphp@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 1, '2020-07-30 14:31:35', '2020-09-04 15:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `property` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` varchar(19) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `property`, `name`, `email`, `contact`, `message`, `status`, `date`, `created`, `modified`) VALUES
(1, 'NEW Vision Heights (Phase 2) 1 and a half Townhouse', 'Jonathan', 'jonathan.wphp@gmail.com', NULL, 'asdasdadaa adsadas dasdsad', 'New', '2020-10-30 13:13:56', '2020-10-30 13:13:56', '2020-10-30 14:36:48'),
(2, 'NEW Vision Heights (Phase 2) 1 and a half Townhouse', 'Wong', 'jonathan.wphp@gmail.com', NULL, 'adadasdsa dasdsa d', 'New', '2020-10-30 13:13:56', '2020-10-30 13:21:52', '2020-11-03 17:46:10'),
(3, 'NEW Vision Heights (Phase 2) 1 and a half Townhouse', 'Jonathan Wong', 'jonathan.wphp@gmail.com', '0168653947', 'testing message here, can i ask that this ', '2020-10-30 14:55:48', NULL, '2020-10-30 14:55:48', '2020-10-30 14:55:48'),
(4, 'NEW Vision Heights (Phase 2) 1 and a half Townhouse', 'Jonathan Wong', 'jonathan.wphp@gmail.com', '0168653947', 'Testing message, can i ask you about the location. asdsadsdasdsadsadsadd asd', 'New', '2020-10-30 14:57:47', '2020-10-30 14:57:47', '2020-11-03 17:46:10');

-- --------------------------------------------------------

--
-- Table structure for table `message_contact`
--

CREATE TABLE `message_contact` (
  `id` int(11) NOT NULL,
  `property` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` varchar(19) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_contact`
--

INSERT INTO `message_contact` (`id`, `property`, `name`, `designation`, `address`, `company`, `email`, `contact`, `message`, `status`, `date`, `created`, `modified`) VALUES
(1, NULL, 'Jonathan', 'Mr.', 'lot 123, jln asdasdas dasdasdas', '', 'jonathan.wphp@gmail.com', '123123213213', 'messagfe asda dasdasdasdasdasdasd asd asd', 'New', '2020-11-03 11:10:37', '2020-11-03 11:10:37', '2020-11-03 12:58:57'),
(2, NULL, 'jonathan', 'Mr.', 'aadsda dasdsa', 'ABC Company', 'jonathan.wphp@gmail.com', '123213213', 'asdasd asdasdasd', 'New', '2020-11-03 11:13:56', '2020-11-03 11:13:56', '2020-11-03 12:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `navigator`
--

CREATE TABLE `navigator` (
  `id` int(11) NOT NULL,
  `section` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `news_date` date DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `conceal_date` date DEFAULT NULL,
  `file_attachment` varchar(255) DEFAULT NULL,
  `news_content` longtext DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `photo`, `news_date`, `release_date`, `conceal_date`, `file_attachment`, `news_content`, `position`, `status`, `created`, `modified`) VALUES
(1, 'BNM maintains OPR at 1.75% at final monetary policy meeting for 2020', 'photo/5fa132f20b97d.jpg', '2020-11-03', '2020-11-04', '2020-11-06', NULL, 'KUALA LUMPUR (Nov 3): Bank Negara Malaysia (BNM) has decided to maintain the Overnight Policy Rate (OPR) at 1.75% today as the country’s economic activity is projected to improve further and as the central bank expects the nation’s underlying inflation to remain subdued as the world economy contends with the resurgence in Covid-19 cases.\r\n\r\nIn a statement today, BNM said the global economy continues to recover, led by improvements in manufacturing and export activity although the resurgence in Covid-19 cases suggests that the global economic recovery will likely remain uneven in the near term.\r\n\r\n\"For Malaysia, the latest indicators point towards significant improvement in economic activity in the third quarter. The introduction of targeted measures to contain Covid-19 in several states could affect the momentum of the recovery in the fourth quarter. Nonetheless, growth for the year 2020 is expected to be within the earlier forecasted range.', 2, '1', '2020-11-03 17:40:34', '2020-11-03 18:41:53'),
(2, 'Welcome to Our New Website', 'photo/5fa12eb926726.jpg', '2020-11-06', '0000-00-00', '0000-00-00', 'photo/5fa1277a80a83.png', 'Welcome to Our New Website. So needless to say, it is important that your website is doing the best job it can, representing your company and brand. Nothing reflects worse on a brand than a static and archaic website. Are you questioning whether its time for a new redesign for your company’s website? If so, we’ve compiled a list of some critical reasons to consider building a new website.', 1, '1', '2020-11-03 17:48:42', '2020-11-03 18:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `position`, `status`, `content`, `created`, `modified`) VALUES
(1, 'About Us', 2, '1', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p align=\"justify\">Established in 1984, <strong>BORNEO TRANSVERSE TOURS &amp; TRAVEL SDN BHD </strong> has won many awards as the top / best Inbound Tour Operator of the year and in one of the most respected Agency in East Malaysia.</p>\r\n<p>Managed by a team of very experienced administrative and operation staffs, the company offers a one-stop shop for special planning, guidance, requirement, creativity and quality services with competitive rates for any travel needs for Borneo Island.</p>\r\n<p>Borneo Transverse also has its own fleet of transportation ( cars, limousines, vans, coaches ) and a team of very knowledgeable tourist guides and careful drivers to look after your valued clients.</p>\r\n<p><span class=\"green_right\"><strong>Service Provided </strong></span></p>\r\n<table border=\"0\" width=\"100%\" cellspacing=\"3\" cellpadding=\"3\">\r\n<tbody>\r\n<tr>\r\n<td class=\"content\" align=\"justify\" valign=\"top\">\r\n<ul>\r\n<li>Transfers, Tours and Packages ( cultures, adventure, nature, special interest ) for FIT, GIT and INCENTIVE.</li>\r\n<li>English, Mandarin, Bahasa Malaysia and German speaking guide / interpreter.</li>\r\n<li>Reservation for Hotels, Resorts and Air-tickets.</li>\r\n<li>Reservation of Cars, Limousines, Van and Coaches.</li>\r\n<li>Any travel needs for the Borneo Island.</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '2020-10-27 13:43:52', '2020-11-23 14:07:48'),
(4, 'Malaysia & Borneo Island', 3, '1', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<table style=\"width: 100%; border-collapse: collapse;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\" colspan=\"2\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../photo/5fbb50fbc7232.jpg\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\" colspan=\"2\">\r\n<p><span class=\"orange_title\"><strong>Malaysia </strong></span><br /><br />Situated in the heart of South East Asia just north of the equator between latitudes 1 deg and 7 deg N and longitudes 100 deg and 119 deg E, is a country of extraordinary and fascinating wonders. It is basically divided into two landmasses &ndash; East and West Malaysia.</p>\r\n<p>West Malaysia, which is a peninsula of 131,587 sq kilometer in land area, shares its northern boundary with Thailand and is separated from Singapore at its southern end by the Johore Straits. East Malaysia, with a landmass of 198,847 sq kilometers, is located in the mystical island of Borneo.</p>\r\n<p>Malaysia is administratively divided into 13 states &ndash; 11 of which are in West Malaysia &ndash; with Kuala Lumpur as federal Capital. The states of Sarawak and Sabah make up East Malaysia. About 80% of Malaysia\'s 22 million unique multi-racial population dwell in West Malaysia. Sarawak has population of about 21 million while Sabah has about 2.4 million.</p>\r\n<p>Bahasa Malaysia is the official language in this country, but English is widely used as a second language.</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class=\"row\"><br /><br /><br />\r\n<div class=\"col-12 col-md-4\"><br />\r\n<p><img src=\"../../photo/5fbb50fe949a1.jpg\" alt=\"\" /></p>\r\n</div>\r\n<div class=\"col-12 col-md-3\"><br />\r\n<p><img src=\"../../photo/5fbb510206008.jpg\" alt=\"\" /></p>\r\n</div>\r\n<div class=\"col-12 col-md-5\"><span class=\"orange_title\"><strong>Borneo Island</strong></span><br />\r\n<p>With a landmass that lays claim to being the world\'s 3rd largest island ( 743,812 sq km ), Borneo is surrounded by the Java Sea to south, the South China Sea to north and west, Sulu Sea and Celebes Sea to the East. The equator cuts approximately through the middle of the island, which is governed by three nations.</p>\r\n<p>The two Malaysian states of Sarawak and Sabah occupy almost the entire northwest coast while the oil-rich kingdom of Brunei Darussalam is straddled near the northern coastline.</p>\r\n</div>\r\n</div>\r\n</body>\r\n</html>', '2020-11-23 14:07:27', '2020-11-23 16:26:18'),
(2, 'Services', 0, '2', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2020-10-27 13:44:23', '2020-11-14 12:50:05'),
(3, 'Our Vehicles', 1, '1', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><img src=\"../../photo/5fbb4f6c66d22.jpg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"../../photo/5fbb4f8080e88.jpg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>', '2020-11-23 13:59:14', '2020-11-23 14:07:53'),
(5, 'History of Borneo ', 4, '1', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<table style=\"width: 100%; border-collapse: collapse;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../photo/5fbb5201ea644.jpg\" alt=\"\" /></p>\r\n</td>\r\n<td style=\"width: 50%;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../photo/5fbb5204e8211.jpg\" alt=\"\" width=\"208\" height=\"240\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\" colspan=\"2\">\r\n<p>The history of Borneo and its people has been largely determined by its strategic position at one of the world\'s major crossroads, its tropical climate, and north - east and south - east monsoons. Its geographical location served to make Borneo a \"land bridge\" to mainland South East Asia and an ideal meeting place for traders from East and West. The bountiful nature in the island contributed to the fact that Borneo was one of earliest homes of Man. Excavation works on the Niah Cave, which is a world famous archaeological site, had produced Paleolithic ( stone age ) implements and an ancient burial site carbon-dated to 40,000 B.C.</p>\r\n<p>Although these findings provided strong evidence of Chinese and Indian civilizations having existed in Borneo since 1,500 years ago, the authenticated history of the island only began in comparatively recent times.</p>\r\n<p>In 1368, after the fall of the Sri Vijaya Empire, Borneo war conquered by the Majapahit King ( Hindu Empire ). From about 1400 until the early sixteenth century, Muslim invaders began to spread their influence throughout the island. During the 1500s, a powerful kingdom known as Brunei exercised domination over the whole of Borneo and it surrounding area after the fall of the Majapahit Empire.</p>\r\n<p>During that time, explorers and merchants from both the East and West visited Borneo. There are glowing accounts of the island trading chiefly in spices, rare woods, gold and precious tones and also experiencing a great deal of trouble with the coastal pirates.</p>\r\n<p>In the late 1500s, the Dutch, Spanish, Portuguese and British appeared on the scene. They established prosperous trading posts in Borneo, and by the beginning of the nineteenth century, the kingdom of Brunei had shrunk to what we now know as Sarawak, Sabah and Brunei. Kalimantan was then under Dutch rule until 1949 when it ceded the territory to the Republic of Indonesia.</p>\r\n<p>The state of Sarawak began to emerge as a separate political entity when an English adventurer, Sir James Brooks, war granted some territory in 1841 in return for his services in helping Brunei quell a rebellion in one of its provinces. The state of Sabah, on the other land, was under the rule of the Chartered Company of British North Borneo.</p>\r\n<p>During the Second World War in 1941, the Japanese conquered the island. When the war ended, both Sabah and Sarawak were ceded to the British Government. The Malaysia concept was first announced by the late Tunku Abdul Rahman Putra Al-Haj, the Malayan Prime Minister, in May 1961. Nine month later, a British Commission visited Sarawak and Sabah and discovered that the majority of the people were in favour of concept.</p>\r\n<p>Both states achieved full independence and joined the Federation of Malaysia in 1963.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>', '2020-11-23 14:10:18', '2020-11-23 14:12:03'),
(7, 'Sabah\'s Attraction', 6, '1', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<table style=\"width: 100%; border-collapse: collapse;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 100%;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../photo/5fbb52e69c871.jpg\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 100%;\">\r\n<p><strong class=\"blue2_highlight\">Sabah </strong> hugs the northern part of Borneo Island and shares its boundaries with Sarawak, Brunei, and Kalimantan ( Indonesia ).</p>\r\n<p>Its 1,440 kilometre-long coastline is washed by the South China Sea on the west, Sulu Sea on the east, and Sulawesi ( Celebes ) Sea on the southeast.</p>\r\n<p>This second largest Malaysia state ( 73,620 sq. kilometres ) is home to about 2.4 million people comprising over 31 different races. Numerous colourful cultural and religious festivals are celebrated annually with gusto.</p>\r\n<p>Sabah, which was formerly known as North Borneo, is generally mountainous and is sometimes referred to as the \"Land Below the wind\" because it lies just below the typhoon belt.</p>\r\n<p>It is also a land of enticing beaches. The abundant marine and coral life thriving underneath the many tropical islands, which surround Sabah form a major backbone of its thriving tourism industry.</p>\r\n<p>These enchanting seascapes, coupled with adequate island tours and scuba diving facilities have been luring in tourist by the thousands annually.</p>\r\n<p>Without doubt, its most spectacular attraction is the 4,101 metre high Mount Kinabalu, South East Asia\'s highest mountain. The world\'s largest orang utan sanctuary is also located in Sabah.</p>\r\n<p>The world\'s largest orang utan sanctuary is also located in Sabah.</p>\r\n<p><strong class=\"blue2_highlight\">Kota Kinabalu </strong>, formerly known as Jesselton, is the capital of Sabah and has a population of about 350,000. It is a relatively modern city as the original one was razed during the Second World War.</p>\r\n<p>Known as KK most of the time. Kota Kinabalu is well connected by air to Seoul, Tokyo, Hong Kong, Taipei, Manila, Brunei, Singapore, Kuala Lumpur and Kuching.</p>\r\n<p>Among many attractions are Mount Kinabalu, the Tunku Abdul Rahman Park, Poring Hot Spring, Sabah Foundation Building, State Museum, beautiful beaches and a few good 5 star resorts.</p>\r\n<p>Mount Kinabalu is located East of KK and can be reached by a 2-hour drive from town.</p>\r\n<p>About 43 km southeast of Kinabalu Park headquarters is the poring Hot Spring. Its major attraction is the open-air sulphur baths located in a beautiful landscapes garden. There are also refreshing hot pools for visitors to use and accommodation facilities are also available.</p>\r\n<p>The Tunku Abdul Rahman, named after Malaysia\'s first Prime Minister, comprises five islands, which offer crystal clear water, white sandy beaches and diverse coral reefs and marine life.</p>\r\n<p>The park was gazetted in 1974 and can be reached in 20 minutes by speedboat from KK. It is an excellent spot for picnics, diving and snorkeling.</p>\r\n<p>A 10-minute drive form the city to Likas Bays stands the imposing Sabah Foundation Building. This unique structure is one of the few hanging structures in the world. It is a glass shrouded tower of 72 sides rising 30 storeys into the sky and is a must for any visitor\'s itinerary.</p>\r\n<p>Traveling southwards out of KK will bring one to <strong class=\"blue2_highlight\">Papar </strong> about 32 km away. This tiny but well-planned town, which is surrounded by padi fields, is also linked to KK by rail.</p>\r\n<p>The train\'s next stop after Papar is <strong class=\"blue2_highlight\">Kimanis </strong> &ndash; a onetime American colony set up by the America Trading Company in 1865.</p>\r\n<p>After Kimanis comes <strong class=\"blue2_highlight\">Beaufort </strong>, which is a quiet little provincial town on the River Padas &ndash; which regularly floods most of Beaufort town.</p>\r\n<p>Boasting a fair amount of charm, it is used more as a stopover for travellers shuttling between KK and <strong class=\"blue2_highlight\">Tenom </strong> &ndash; an agricultural district and centre of the Murut community.</p>\r\n<p>The 154 km long journey Beaufort to Tenom passes through stream jungle and spectacular countryside of the <strong class=\"blue2_highlight\">Padas Gorge </strong>.</p>\r\n<p>When travelling by road out of Kota Kinabalu in a southeasterly direction, the journey will take visitors across the <strong class=\"blue2_highlight\">Crocker Range </strong> and down into <strong class=\"blue2_highlight\">Tambunan </strong>.</p>\r\n<p>Tambunan is home to a traditional Kadazan ( an ethnic tribe ) village where tourist can experience their \"Kampung\" lifestyle.</p>\r\n<p>Rolling hills and padi-fields dominate its landscape, and Mob Salleh Fort is an attraction.</p>\r\n<p>Lying equidistant ( 48 km by road ) between Tenom and Tambunan is <strong class=\"blue2_highlight\">Keningau </strong>. Travellers often use it as a stopover point before making excursions into the Murut district of Tenom.</p>\r\n<p>Keningau is basically a lumber and agriculture town deep in the heart of Murut country.</p>\r\n<p>Cattle and ponies grazing on its plains are picturesque sights. The place also boasts a fine collection of cultural heritage of the Murut people.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body>\r\n</html>', '2020-11-23 14:13:12', '2020-11-23 14:13:20'),
(6, 'Sarawak\'s Attraction', 5, '1', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<table style=\"width: 100%; border-collapse: collapse;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 100%;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../photo/5fbb5279c8723.jpg\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 100%;\">\r\n<p><strong class=\"blue_highlight\">Sarawak </strong>, which is affectionately known as the \"land of the Hornbills\", stretches about 700 km along the northwestern coast of Borneo covering a total area of 125,000 sq. km. This largest Malaysian state is home about 2 million people comprising more than 24 different races / indigenous groups who live harmoniously, celebrating their colorful cultural and religious festivals throughout the whole year. At present, about 68 percent of Sarawak\'s land area is still covered by virgin jungles and forest.</p>\r\n<p>Viewed from the air, this states is a great expanse of undulating greens crisis-crossed by mountainous terrains and rivers, so many that they look like the veins of a leaf. Hidden among these towering greens are an abundance of flora and fauna. The world\'s largest cave chamber and South East Asia\'s longest cave passage are found at the Mulu National Park. Today, 9 national parks, 3-wildlife sanctuaries and 1-wildlife rehabilitation center have been gazette to protect and preserve these natural heritages.</p>\r\n<p>One of the most striking features of Sarawak is its natives\' longhouse. These elongated and stilted structures often built of axe-hewn timber, tied with creeper fibred and roofed with atap ( thatched leaves ) can house between 20 to 100 families under one roof.</p>\r\n<p><span class=\"blue_highlight\"><strong>Kuching </strong></span> is the capital and administrative center of Sarawak. It is a riverine town sitting on the southern bank of the famous Sarawak River and about 32 km from the South China Sea. Its strategic location makes it a bustling riverine port, which plays an important part in its overall development.</p>\r\n<p>Kuching, with a population of about 490,000 people, is well served by air from major destinations including Kuala Lumpur, Johor Bahru, Kota Kinabalu, Singapore and Brunei. Inaugurated as a city on August 1, 1988, it boasts beautifully landscaped parks and colorful markets, mingling among an interesting mixture of modern and historical buildings inherited from its exciting past.</p>\r\n<p>The banks of the Sarawak River still maintain their old magic, highlighted by many traditional Malay houses built on stilts, historical landmarks and traditional boatmen paddling in their small wooden boats known as \"tambang\".</p>\r\n<p>A tour of Kuching itself is a journey of history and culture. Among the interesting attractions are the Sarawak Museum, Fort Margherita, Court House, Tua Pek Kong Temple, and the Astana, formerly Palace of the White Rajahs. At the 890 m &ndash; long Kuching Waterfront Esplanade, one can further savour remnants of the old days such as the Chinese Chamber of Commerce building, the Square Tower, old shop houses selling antiques and souvenirs.</p>\r\n<p>The <strong class=\"blue_highlight\">Damai Tourism Belt </strong>, located 34 km north of Kuching, is a \"must-see\" tourist attraction. It comprises the Santubong Kuching Resort, Holiday Inn Resort Damai Beach, Damai Lagoon Resort, an international class 18-hole Damai golf course designed by golfing legend Arnold Palmer, and Camp Permai &ndash; an outward-bound school-cum-recreation centre.</p>\r\n<p>Wedged in between the Damai Beach Resort and Camp Permai is the award - winning $10 million Sarawak Cultural Village, an ideal spot for those who want to see how the natives live in the rural areas but are deterred because of time constraints. Within the Village\'s sprawling 6.8-hectare site are seven representative ethnic houses built according to authentic styles and replete with real traditional artifacts. The village is known as a \"living museum\" because natives live in the various houses and make handicrafts.</p>\r\n<p>About 2 km before reaching Damai sits <strong class=\"blue_highlight\">Santubong </strong>, a picturesque Malay Fishing Village cum beach \"resort\". It was an important trading post in the 9th to 13th century and has provided some interesting archaeological finds. Mangrove Forest and Island tours can be arranged from here.</p>\r\n<p>At the 25 km junction along the Kuching-Damai route is a road leading to the <strong class=\"blue_highlight\">Buntal Fishing village </strong>. This scenic area is famous for its relatively cheap and succulent seafood.</p>\r\n<p><span class=\"blue_highlight\">Satang Island</span>, is situated offshore from Santubong and Damai, in Sarawak. The Island consists of two small islands, Pulau Satang Besar and Pulau Satang Kecil.. Traditionally, the island is a haven for turtles on their migratory journey around the world. Between May and October, the island is the perfect time for green turtles to come ashore and lay their eggs at the island. Pulau Satang Besar and its surrounding waters are protected as a sanctuary for these endangered turtles. The turtle sanctuary, is supervised by the Sarawak Turtles Board of Management in close cooperation with the <span class=\"blue_highlight\">Sarawak Museum and the Sarawak Forestry Department</span>. To ensure that the turtles survive, park rangers collect the eggs, count them and replace them in a beach hatchery. When the hatchlings emerge from their eggs after 40 to 60 days, rangers record their numbers and release them into the sea.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body>\r\n</html>', '2020-11-23 14:11:34', '2020-11-23 14:11:34'),
(8, 'Travel Tips', 7, '1', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span class=\"orange_highlight\"><strong>CLIMATE</strong>:</span> Kuching is only 2 degrees north of the Equator and has a humid cli &shy; mate. All year round, there is little variation in temperature: it rarely rises about 34 degrees Centigrade (93 degrees Fahrenheit) in the early afternoon or falls below 23 degrees Centigrade (73 degrees Fahrenheit) at night. <strong><br /><br /></strong><span class=\"orange_highlight\"><strong>RAINFALL</strong>:</span> The mean annual rainfall of 4042 mm (160ins) gives Sarawak its green luxuriant environment. The more pronounced rainy seasons is the October to February period when the heaviest rainfall occurs. The prevailing wind of this time is from the north-east. The wind is not usually very strong in Kuching itself but on the coast the sea can become quite rough, even though Sarawak is well out of typhoon belt. <br /><br /><span class=\"orange_highlight\"><strong>WATER</strong>: </span>Tap water is safe to drink in Kuching and major towns. If travelling in rural areas, it is advisable to drink only boiled or bottled water.<br /><br /><span class=\"orange_highlight\"><strong>LANGUAGE</strong>: </span>Bahasa Malaysia (Malay) is the national language and the language of instruction in schools, but English and Mandarin are spoken and written by much of the population and also widely used in business.</p>\r\n<p>Most tour operators offer the services of multi-lingual guides for their clients. <br /><br /><span class=\"orange_highlight\"><strong>RELIGION</strong>: </span>Islam is the official religion, but there is freedom of worship. Other major religions include Buddhism, Taoism, Hinduism and Christianity.<br /><br /><span class=\"orange_highlight\"><strong>DRESS</strong>: </span>Casual is the order of the day and going about in shorts and T-shirts is both acceptable and comfortable. Attending official functions require more formal wear and Batik is very often the Malaysian form of formality, Malaysians by and large do not use jackets, and ties are optional.<br /><br /><span class=\"orange_highlight\"><strong>HEALTH DOCUMENTS</strong>: </span>A yellow fever vaccination certificate is required if arriv &shy; ing from or via an infected area (except children under one). Cholera and Malaria precautions are recommended.<br /><br /><span class=\"orange_highlight\"><strong>CURRENCY</strong>: </span>The unit is the Ringgit, comprising 100 sen, and the present rate of exchange is RM = 56 yen; or 37 US cents. Travellers cheques and major credit cards, like Amex, Diners, JCB, Visa, and Master Card are widely accepted. Banking hours are 10.00 am to 3.00 pm on weekdays and 9.30 am to 11.30 am on</p>\r\n<p>Saturdays: Banks are closed on Sundays and public holidays. <br /><br /><strong class=\"orange_highlight\">TIME: </strong>Like the rest of Malaysia , Kuching is 8 hours ahead of Greenwich Mean Time (GMT or UTC). Sunrise is about 0545 and sunset is 1845; There is little sea&shy; sonal variation.<br /><br /><strong class=\"orange_highlight\">AIRPORT CHARGES: </strong>There is a RM20.00 departure tax for all departing pas&shy; sengers of international flights and RM$5.00 for travel within Malaysia Reconfirmation of flights must be made 72 hours ahead.</p>\r\n</body>\r\n</html>', '2020-11-23 15:43:12', '2020-11-23 15:43:12'),
(9, 'Contact Us', 8, '1', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"row d-flex pt-4 pb-4 text-left\">\r\n<div class=\"col-12 col-md-5\">\r\n<div class=\"pb-1\">Monday - Friday: 8.15am - 5pm <br />Saturday: 8.15am - 1pm</div>\r\n<div class=\"pb-1\">No. 15, Ground Floor, Jalan Green Hill,<br />93100 Kuching, Sarawak, East Malaysia</div>\r\n</div>\r\n<div class=\"col-12 col-md-5\">\r\n<div class=\"pb-1\">tuyah@borneotransverse.com.my</div>\r\n<div class=\"pb-1\">+6 082 257 784</div>\r\n<div class=\"pb-1\">+6 082 421 419</div>\r\n</div>\r\n<div class=\"col-12 col-md-2\">\r\n<div class=\"pb-1\">+6 019 886 8948</div>\r\n<div class=\"pb-1\">+6 019 816 9680</div>\r\n<div class=\"pb-1\"><a href=\".google.com/maps/place/Borneo+Transverse+Tours+%26+Travel/@1.556107,110.3468053,17z/data=!3m1!4b1!4m5!3m4!1s0x31fba7ebb72a1091:0x7f6dc52b60706d45!8m2!3d1.556107!4d110.348994\" target=\"_blank\" rel=\"noopener\">View Map</a></div>\r\n</div>\r\n</div>\r\n</body>\r\n</html>', '2020-11-23 15:44:36', '2020-11-23 15:44:43');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `parent_table` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `parent_table`, `parent_id`, `status`, `position`, `photo`, `created`, `modified`) VALUES
(10, 'property', '1', '1', 0, 'photo/5fa0af4082d05.jpg', '2020-11-03 09:15:44', '2020-11-03 09:15:44'),
(9, 'property', '1', '1', 0, 'photo/5fa0af4081fe4.jpg', '2020-11-03 09:15:44', '2020-11-03 09:15:44'),
(8, 'property', '1', '1', 0, 'photo/5fa0af408122f.jpg', '2020-11-03 09:15:44', '2020-11-03 09:15:44'),
(7, 'property', '1', '1', 0, 'photo/5fa0af40808e6.jpg', '2020-11-03 09:15:44', '2020-11-03 09:15:44'),
(6, 'property', '1', '1', 0, 'photo/5fa0af407fe86.jpg', '2020-11-03 09:15:44', '2020-11-03 09:15:44'),
(11, 'pages', '0', '1', 0, 'photo/5fa0afa25a4d4.jpg', '2020-11-03 09:17:22', '2020-11-03 09:17:22'),
(12, 'pages', '0', '1', 0, 'photo/5fbb4f6c66d22.jpg', '2020-11-23 13:58:04', '2020-11-23 13:58:04'),
(13, 'pages', '0', '1', 0, 'photo/5fbb4f8080e88.jpg', '2020-11-23 13:58:24', '2020-11-23 13:58:24'),
(14, 'pages', '0', '1', 0, 'photo/5fbb50fbc7232.jpg', '2020-11-23 14:04:43', '2020-11-23 14:04:43'),
(15, 'pages', '0', '1', 0, 'photo/5fbb50fe949a1.jpg', '2020-11-23 14:04:46', '2020-11-23 14:04:46'),
(16, 'pages', '0', '1', 0, 'photo/5fbb510206008.jpg', '2020-11-23 14:04:50', '2020-11-23 14:04:50'),
(17, 'pages', '0', '1', 0, 'photo/5fbb5201ea644.jpg', '2020-11-23 14:09:05', '2020-11-23 14:09:05'),
(18, 'pages', '0', '1', 0, 'photo/5fbb5204e8211.jpg', '2020-11-23 14:09:08', '2020-11-23 14:09:08'),
(19, 'pages', '0', '1', 0, 'photo/5fbb5279c8723.jpg', '2020-11-23 14:11:05', '2020-11-23 14:11:05'),
(21, 'pages', '0', '1', 0, 'photo/5fbb52e69c871.jpg', '2020-11-23 14:12:54', '2020-11-23 14:12:54'),
(22, 'pages', '0', '1', 0, 'photo/5fbb67c06367a.jpg', '2020-11-23 15:41:52', '2020-11-23 15:41:52');

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `id` int(11) NOT NULL,
  `location` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `tour_type` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `departure` varchar(255) DEFAULT NULL,
  `brief_description` varchar(400) DEFAULT NULL,
  `full_description` longtext DEFAULT NULL,
  `popular` varchar(3) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`id`, `location`, `category`, `tour_type`, `photo`, `name`, `price`, `duration`, `departure`, `brief_description`, `full_description`, `popular`, `position`, `status`, `description`, `created`, `modified`) VALUES
(1, 1, 1, 3, 'photo/5faf5cb5cf2b6.jpg', 'Tour Package name 01', 'USD500.00/person', '1 days', '12 adasdsadsa ', 'brief description here.. brief description here.. brief description here.. brief description here.. brief description here.. brief description here.. ', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here.. Full description here..</p>\r\n</body>\r\n</html>', 'Yes', 1, '1', NULL, '2020-11-14 12:27:33', '2020-11-14 12:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `tour_type`
--

CREATE TABLE `tour_type` (
  `id` int(11) NOT NULL,
  `tour_type` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_type`
--

INSERT INTO `tour_type` (`id`, `tour_type`, `photo`, `position`, `status`, `created`, `modified`) VALUES
(1, 'Wildlife Tours', 'photo/5fb76305b4c98.jpg', 3, '1', '2020-11-10 22:33:25', '2020-11-20 14:32:37'),
(3, 'Daily Tours', 'photo/5fb763d4aee49.jpg', 1, '1', '2020-11-12 09:16:00', '2020-11-20 14:36:04'),
(4, 'Island Tour', 'photo/5fb7635b85e3e.jpg', 2, '1', '2020-11-12 09:17:25', '2020-11-20 14:34:03'),
(5, 'Nature Tour', 'photo/5fac8d8ee2a52.jpg', 4, '1', '2020-11-12 09:19:10', '2020-11-12 09:33:35'),
(6, 'Birding Tours', 'photo/5fb7657f8e240.jpg', 5, '1', '2020-11-12 09:20:08', '2020-11-20 14:43:11'),
(7, 'Adventure Tours', 'photo/5fac8f2218442.jpg', 6, '1', '2020-11-12 09:25:54', '2020-11-12 09:33:28'),
(8, 'Culture Tours', 'photo/5fb76482bf64c.jpg', 7, '1', '2020-11-12 09:28:51', '2020-11-20 14:38:58'),
(9, 'Family Tour', 'photo/5fac90d6e2692.png', 8, '1', '2020-11-12 09:33:10', '2020-11-12 09:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `user` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previous_url` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_logout` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `user`, `ip`, `country`, `previous_url`, `login_logout`, `created`) VALUES
(1, 'login:1', '127.0.0.1', '', 'http://localhost/borneorealestate.com.my/cms/authentication/login.php', 'login', '2020-10-27 12:48:31'),
(2, 'login:1', '127.0.0.1', '', 'http://localhost/borneorealestate.com.my/cms/authentication/login.php', 'login', '2020-10-30 11:01:36'),
(3, 'login:1', '127.0.0.1', '', 'http://localhost/borneorealestate.com.my/cms/authentication/login.php', 'login', '2020-10-30 13:30:30'),
(4, 'login:1', '127.0.0.1', '', 'https://localhost/borneorealestate.com.my/cms/authentication/login.php', 'login', '2020-11-02 15:25:17'),
(5, 'login:1', '::1', '', 'http://localhost/borneorealestate.com.my/cms/authentication/login.php', 'login', '2020-11-03 09:10:31'),
(6, 'login:1', '::1', '', 'https://localhost/borneorealestate.com.my/cms/authentication/login.php', 'login', '2020-11-03 17:23:44'),
(7, 'login:1', '127.0.0.1', '', 'https://localhost/kacc_home_mockup/cms/authentication/login.php', 'login', '2020-11-06 13:39:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_dashboard`
--
ALTER TABLE `banner_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_block`
--
ALTER TABLE `home_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_contact`
--
ALTER TABLE `message_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigator`
--
ALTER TABLE `navigator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_type`
--
ALTER TABLE `tour_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `banner_dashboard`
--
ALTER TABLE `banner_dashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `developer`
--
ALTER TABLE `developer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_block`
--
ALTER TABLE `home_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message_contact`
--
ALTER TABLE `message_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `navigator`
--
ALTER TABLE `navigator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tour_type`
--
ALTER TABLE `tour_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
