-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 31, 2019 at 09:10 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `afrovue`
--

-- --------------------------------------------------------

--
-- Table structure for table `be_modules`
--

CREATE TABLE `be_modules` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `module_desc` text CHARACTER SET utf8 NOT NULL,
  `module_icon` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ordering` int(3) NOT NULL,
  `is_show_on_menu` tinyint(1) NOT NULL,
  `group_id` int(5) NOT NULL,
  `group_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `group_icon` varchar(50) NOT NULL,
  `group_has_child` tinyint(1) NOT NULL COMMENT '1=has child; 0=no child '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be_modules`
--

INSERT INTO `be_modules` (`module_id`, `module_name`, `module_desc`, `module_icon`, `ordering`, `is_show_on_menu`, `group_id`, `group_name`, `group_icon`, `group_has_child`) VALUES
(1, 'categories', 'Catégories', '', 1, 1, 1, 'Entry', 'fa-pencil-square-o', 1),
(2, 'items', 'postes', '', 3, 1, 1, 'Entry', 'fa-pencil-square-o', 1),
(3, 'users', 'System Users', '', 18, 1, 3, 'Management', 'fa-eye', 1),
(4, 'appusers', 'Registered Users', '', 13, 1, 3, 'Management', 'fa-eye', 1),
(5, 'likes', 'Item Likes', '', 8, 1, 2, 'Users Feedback', 'fa-list-alt', 1),
(6, 'reviews', 'Item Reviews', '', 9, 1, 2, 'Users Feedback', 'fa-list-alt', 1),
(7, 'inquiries', 'Item Inquiry', '', 12, 1, 2, 'Users Feedback', 'fa-list-alt', 1),
(9, 'reports', 'Analytic', '', 17, 1, 3, 'Management', 'fa-eye', 1),
(10, 'favourites', 'Item Favourite ', '', 10, 1, 2, 'Users Feedback', 'fa-list-alt', 1),
(11, 'feeds', 'News Feeds', '', 6, 1, 1, 'Entry', 'fa-pencil-square-o', 1),
(12, 'cities', 'Pays', '', 20, 0, 0, '', '', 0),
(13, 'sub_categories', 'Sous catégories ', '', 2, 1, 1, 'Entry', 'fa-pencil-square-o', 1),
(21, 'gcm', 'Notification', '', 19, 1, 3, 'Management', 'fa-eye', 1),
(22, 'abouts', 'About App', '', 22, 0, 1, 'Entry', 'fa-pencil-square-o', 1);

-- --------------------------------------------------------

--
-- Table structure for table `be_paypal_config`
--

CREATE TABLE `be_paypal_config` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `currency_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be_paypal_config`
--

INSERT INTO `be_paypal_config` (`id`, `status`, `price`, `currency_code`) VALUES
(1, 1, 20, 'SGD');

-- --------------------------------------------------------

--
-- Table structure for table `be_permissions`
--

CREATE TABLE `be_permissions` (
  `user_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be_permissions`
--

INSERT INTO `be_permissions` (`user_id`, `module_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(3, 1),
(3, 2),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(7, 1),
(7, 2),
(7, 4),
(7, 5),
(7, 6),
(7, 7),
(7, 9),
(7, 10),
(7, 11),
(7, 12),
(7, 13),
(7, 15),
(7, 16),
(7, 17),
(7, 18),
(5, 1),
(5, 2),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(4, 1),
(4, 2),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(2, 12),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(8, 1),
(8, 12),
(9, 1),
(9, 2),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(9, 9),
(9, 10),
(9, 11),
(9, 12),
(9, 13),
(9, 18),
(9, 20),
(10, 1),
(10, 2),
(10, 4),
(10, 5),
(10, 6),
(10, 7),
(10, 9),
(10, 10),
(10, 11),
(10, 12),
(10, 13),
(10, 21),
(1, 22),
(11, 1),
(11, 2),
(11, 4),
(11, 5),
(11, 6),
(11, 7),
(11, 9),
(11, 10),
(11, 11),
(11, 12),
(11, 13),
(11, 21),
(11, 22),
(12, 1),
(12, 2),
(12, 4),
(12, 5),
(12, 6),
(12, 7),
(12, 9),
(12, 10),
(12, 11),
(12, 12),
(12, 13),
(12, 21),
(12, 22);

-- --------------------------------------------------------

--
-- Table structure for table `be_roles`
--

CREATE TABLE `be_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `role_desc` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be_roles`
--

INSERT INTO `be_roles` (`role_id`, `role_name`, `role_desc`) VALUES
(1, 'admin', 'Administrator'),
(2, 'manager', 'Manager'),
(3, 'user', 'User'),
(4, 'cityadmin', 'City Admin');

-- --------------------------------------------------------

--
-- Table structure for table `be_role_access`
--

CREATE TABLE `be_role_access` (
  `role_id` int(11) NOT NULL,
  `action_id` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be_role_access`
--

INSERT INTO `be_role_access` (`role_id`, `action_id`) VALUES
(1, 'add'),
(1, 'edit'),
(1, 'delete'),
(1, 'publish'),
(2, 'add'),
(2, 'edit'),
(2, 'publish'),
(3, 'add'),
(1, 'module'),
(1, 'ban'),
(2, 'delete'),
(3, 'edit');

-- --------------------------------------------------------

--
-- Table structure for table `be_users`
--

CREATE TABLE `be_users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_email` text CHARACTER SET utf8 NOT NULL,
  `user_pass` text CHARACTER SET utf8 NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_owner` tinyint(1) NOT NULL DEFAULT '0',
  `is_city_admin` tinyint(1) NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `about_me` text NOT NULL,
  `profile_photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be_users`
--

INSERT INTO `be_users` (`user_id`, `user_name`, `user_email`, `user_pass`, `role_id`, `is_owner`, `is_city_admin`, `added`, `status`, `about_me`, `profile_photo`) VALUES
(1, 'masalan', 'alainserge@163.com', '8f5c853566391602f1a56b305e1d9cd5', 1, 1, 0, '0000-00-00 00:00:00', 1, '', 'profile_sample.jpg'),
(2, 'sidoine', 'sidoinea96@gmail.com', '1c80288fc3a987c0a5722b21d1b7f1f4', 2, 0, 0, '0000-00-00 00:00:00', 1, '', ''),
(3, 'city1_admin', 'city1_admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 4, 0, 1, '2015-01-23 04:41:01', 1, '', ''),
(4, 'city2_admin', 'city2_admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 4, 0, 1, '2015-01-23 22:46:34', 1, '', ''),
(5, 'city3_admin', 'city3_admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 4, 0, 1, '2015-01-23 22:47:28', 1, '', ''),
(7, 'city4_admin', 'city4_admin@gmail.com', 'da2a15f92f90c97dc51a8369bc58d528', 4, 0, 1, '2015-01-23 22:54:41', 1, '', ''),
(8, 'demo', 'demo@demo.com', 'fe01ce2a7fbac8fafaed7c982a04e229', 3, 0, 0, '2015-05-22 11:43:33', 1, '', ''),
(9, 'sfo_user', 'sfo_user@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 4, 0, 1, '2015-08-27 18:44:47', 1, '', ''),
(10, 'paris_user', 'teamps.dev@gmail.com', 'd6b0ab7f1c8ab8f514db9a6d85de160a', 4, 0, 1, '2016-03-27 13:55:29', 1, '', ''),
(11, 'sgadmin', 'sgadmin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 4, 0, 1, '2017-06-18 19:59:54', 1, '', ''),
(12, 'testcity@gmail.com', 'testcity@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 4, 0, 1, '2017-10-14 17:01:33', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cd_about`
--

CREATE TABLE `cd_about` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `website` varchar(200) NOT NULL,
  `website_name` text NOT NULL,
  `keywords` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `google` text NOT NULL,
  `instagram` text NOT NULL,
  `youtube` text NOT NULL,
  `pinterest` text NOT NULL,
  `style` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_about`
--

INSERT INTO `cd_about` (`id`, `title`, `description`, `email`, `phone`, `website`, `website_name`, `keywords`, `facebook`, `twitter`, `google`, `instagram`, `youtube`, `pinterest`, `style`) VALUES
(1, 'Nice App Powered By Panacea-Soft', 'Panacea-Soft is a software development team that focuses on helping your business with mobile and web technology.We tried our best to delivery quality product on time according clientâ€™s requirements and exceptions. We are technology oriented team so before we code, we analyse for your requirements and brain storm then start for development. We donâ€™t over promise to client and trying our best to deliver awesome product package. Thanks for reaching out to us. We are happy to listen your world and enjoy to solve the problem using technology.', 'teamps.is.cool@gmail.com', '+9592540942**', 'http://www.panacea-soft.com', '', 'web, mobile, technology', '', '', '', '', '', '', 'style');

-- --------------------------------------------------------

--
-- Table structure for table `cd_appusers`
--

CREATE TABLE `cd_appusers` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `about_me` text NOT NULL,
  `profile_photo` text NOT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_appusers`
--

INSERT INTO `cd_appusers` (`id`, `username`, `password`, `email`, `about_me`, `profile_photo`, `is_banned`, `status`, `added`, `updated`) VALUES
(1, 'Han', '8f5c853566391602f1a56b305e1d9cd5', 'as@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dui nisi, malesuada ac feugiat vel, egestas rhoncus augue. In id nibh et diam scelerisque laoreet ac et dolor. Cras tincidunt turpis et tortor feugiat, ac fermentum justo posuere. Aliquam pharetra feugiat metus, sit amet posuere augue vulputate nec. ', '795a8ac892d28245f7b6f6d53b65cbe520171118101820.png', 0, 1, '2015-08-07 13:17:07', NULL),
(2, 'Fokhwar', '8f5c853566391602f1a56b305e1d9cd5', 'fokhwar@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at.', 'fokhwar.jpeg', 0, 1, '2015-08-07 13:17:28', NULL),
(3, 'David', '8f5c853566391602f1a56b305e1d9cd5', 'teamps.dev@gmail.com', '', 'default_user_profile.png', 0, 1, '2016-03-02 21:10:56', NULL),
(4, 'Martin', '8f5c853566391602f1a56b305e1d9cd5', 'martin@gmail.com', '', 'default_user_profile.png', 0, 1, '2016-03-15 22:12:27', NULL),
(5, 'user100', 'b0baee9d279d34fa1dfd71aadb908c3f', 'user100@gmail.com', '', 'default_user_profile.png', 0, 1, '2017-03-19 19:22:36', NULL),
(6, 'user101', 'b0baee9d279d34fa1dfd71aadb908c3f', 'user101@gmail.com', '', 'default_user_profile.png', 0, 1, '2017-03-19 19:40:46', NULL),
(7, 'user102', 'b0baee9d279d34fa1dfd71aadb908c3f', 'user2@gmail.com', '', 'default_user_profile.png', 0, 1, '2017-03-19 19:45:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cd_categories`
--

CREATE TABLE `cd_categories` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_published` int(11) NOT NULL DEFAULT '0',
  `ordering` int(5) NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_categories`
--

INSERT INTO `cd_categories` (`id`, `city_id`, `name`, `is_published`, `ordering`, `added`, `updated`) VALUES
(1, 1, 'Automotive', 1, 1, '2015-08-02 06:00:02', NULL),
(2, 1, 'Health & Medical', 1, 2, '2015-08-07 18:58:43', NULL),
(3, 1, 'Shopping', 1, 3, '2015-08-07 19:53:26', NULL),
(4, 1, 'Food & Dining', 1, 4, '2015-08-07 21:06:43', NULL),
(5, 2, 'Travel', 1, 1, '2015-08-11 13:51:36', NULL),
(6, 2, 'Shopping', 1, 2, '2015-08-11 14:09:08', NULL),
(7, 2, 'Computer', 1, 3, '2015-08-16 12:35:09', NULL),
(8, 2, 'Automotive', 1, 4, '2015-08-16 14:06:08', NULL),
(9, 3, 'Sport & Recreation', 1, 1, '2015-08-17 15:46:22', NULL),
(10, 3, 'Travel', 1, 2, '2015-08-17 18:36:38', NULL),
(11, 3, 'Food & Dinning', 1, 3, '2015-08-17 18:56:03', NULL),
(12, 3, 'Shopping', 1, 4, '2015-08-17 19:15:28', NULL),
(13, 4, 'Sport & Recreation', 1, 1, '2015-09-08 13:23:49', NULL),
(15, 4, 'Food & Dinning', 1, 1, '2015-09-08 13:53:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cd_cities`
--

CREATE TABLE `cd_cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `address` text NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `paypal_trans_id` int(11) NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_cities`
--

INSERT INTO `cd_cities` (`id`, `name`, `description`, `address`, `lat`, `lng`, `admin_id`, `is_approved`, `paypal_trans_id`, `added`, `status`) VALUES
(1, 'B&eacute;nin', 'Le B&eacute;nin , en forme longue la r&eacute;publique du B&eacute;nin (en yoruba : Or&iacute;lɛ̀-&egrave;d&egrave; Ol&oacute;m&igrave;nira ilɛ̀ Benin et en gungbe : Beninto), est un pays d\'Afrique de l\'Ouest, qui couvre une superficie de 114 764 km2 et s\'&eacute;tend sur 700 km4, du fleuve Niger au nord &agrave; la c&ocirc;te atlantique au sud. Le B&eacute;nin comptait 10 741 458 habitants en 20165. \r\n\r\nLe B&eacute;nin a acc&eacute;d&eacute; &agrave; l\'ind&eacute;pendance compl&egrave;te le 1er ao&ucirc;t 1960, sous la d&eacute;nomination de R&eacute;publique du Dahomey. Les pouvoirs furent transmis au pr&eacute;sident Hubert Maga par le ministre d\'&Eacute;tat fran&ccedil;ais Louis Jacquinot. En 1972, l\'officier Mathieu K&eacute;r&eacute;kou prend le pouvoir : il adopte en 1974 le marxisme-l&eacute;ninisme comme id&eacute;ologie officielle du gouvernement et, en 1975, rebaptise le pays R&eacute;publique populaire du B&eacute;nin. &Agrave; la fin des ann&eacute;es 1980, de graves difficult&eacute;s &eacute;conomiques conduisent &agrave; la fin du r&eacute;gime : le B&eacute;nin entame un processus de transition d&eacute;mocratique et, en 1990, adopte une nouvelle constitution. Le nom de B&eacute;nin est conserv&eacute;, le pays devenant simplement la R&eacute;publique du B&eacute;nin. Mathieu K&eacute;r&eacute;kou, battu aux &eacute;lections, abandonne le pouvoir. Il y revient d&eacute;mocratiquement par les urnes en 1996 et ne r&eacute;tablit pas la dictature ; il gouverne le pays jusqu\'en 2006.', ' Le pays fait partie de la C&Eacute;D&Eacute;AO et a comme voisins le Togo &agrave; l\'ouest, le Nigeria &agrave; l\'est, et au nord le Niger et le Burkina Faso.', 6.370293, 2.391236, 11, 1, 0, '2015-08-02 05:56:57', 1),
(2, 'Yangon', 'Myanmar (formerly Burma), is a Southeast Asian nation of more than 100 ethnic groups, bordering India, Bangladesh, China, Laos and Thailand. Yangon (formerly Rangoon), the country\'s largest city, is home to bustling markets, numerous parks and lakes, and the towering, gilded Shwedagon Pagoda, which contains Buddhist relics and dates to the 6th century.', 'Yangon, Myanmar', 16.799999, 96.150002, 4, 1, 0, '2015-08-07 11:17:12', 1),
(3, 'S&eacute;n&eacute;gal', 'Dakar est la capitale du S&eacute;n&eacute;gal, en Afrique occidentale. Cette ville portuaire sur l\'oc&eacute;an Atlantique se trouve sur la presqu\'&icirc;le du Cap-Vert. Son quartier traditionnel, la M&eacute;dina, accueille la Grande Mosqu&eacute;e, qui se distingue par son imposant minaret. Le mus&eacute;e Th&eacute;odore-Monot expose des objets culturels comme des v&ecirc;tements, des percussions, des sculptures et des outils. La vie nocturne anim&eacute;e de la ville trouve son inspiration dans la musique locale, le mbalax.', 'Le S&eacute;n&eacute;gal, en forme longue la r&eacute;publique du S&eacute;n&eacute;gal, est un pays d\'Afrique de l\'Ouest', 14.716677, -17.467686, 5, 1, 0, '2015-08-17 15:42:42', 1),
(4, 'San Francisco', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'San Francisco, CA, USA', 37.773972, -122.431297, 9, 1, 0, '2015-08-27 18:44:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cd_codes`
--

CREATE TABLE `cd_codes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` text NOT NULL,
  `is_systemuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_codes`
--

INSERT INTO `cd_codes` (`id`, `user_id`, `code`, `is_systemuser`) VALUES
(1, 1, 'd25ce9808f4bea56a989f90079ad40e1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cd_favourites`
--

CREATE TABLE `cd_favourites` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `appuser_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_appuser` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_favourites`
--

INSERT INTO `cd_favourites` (`id`, `item_id`, `appuser_id`, `city_id`, `added`, `is_appuser`) VALUES
(3, 2, 1, 1, '2015-08-18 18:38:10', 1),
(4, 53, 1, 1, '2015-08-21 15:12:24', 1),
(5, 92, 1, 2, '2015-09-08 18:38:21', 1),
(6, 93, 1, 2, '2015-09-08 18:47:55', 1),
(7, 161, 1, 3, '2015-09-08 18:53:38', 1),
(8, 104, 1, 2, '2015-09-08 20:06:46', 1),
(9, 121, 1, 2, '2015-09-08 20:12:47', 1),
(14, 47, 1, 1, '2016-03-16 18:47:19', 1),
(17, 49, 1, 1, '2016-03-16 18:54:54', 1),
(18, 62, 1, 1, '2016-03-16 18:55:48', 1),
(19, 63, 1, 1, '2016-03-16 19:15:46', 1),
(20, 56, 1, 1, '2016-03-16 19:16:25', 1),
(21, 48, 1, 1, '2016-03-16 19:54:49', 1),
(22, 40, 1, 1, '2016-03-17 18:24:56', 1),
(23, 59, 1, 1, '2016-03-18 18:18:58', 1),
(25, 153, 1, 3, '2016-03-18 18:20:57', 1),
(26, 166, 1, 3, '2016-03-20 17:42:55', 1),
(27, 53, 4, 1, '2016-04-07 19:26:04', 1),
(29, 45, 1, 1, '2016-10-13 15:13:51', 1),
(30, 85, 1, 1, '2017-10-08 09:52:29', 1),
(31, 217, 1, 1, '2017-10-14 14:35:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cd_feeds`
--

CREATE TABLE `cd_feeds` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_feeds`
--

INSERT INTO `cd_feeds` (`id`, `city_id`, `title`, `description`, `is_published`, `added`) VALUES
(1, 1, 'Best Food In Town', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 0, '2015-08-12 14:48:52'),
(2, 1, 'Best Car Rental In Town', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-08-12 14:50:28'),
(3, 1, 'Best Baker In Town', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-08-12 14:51:51'),
(4, 1, 'Shoes Promotion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-08-12 14:53:20'),
(5, 1, 'Cake Discount', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-08-12 14:54:43'),
(6, 2, 'Best Pizza In Town', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-08-13 13:04:15'),
(7, 2, 'Best Baker In Town', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-08-13 13:05:07'),
(8, 2, 'Best Car Rental In Town', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-08-13 13:05:54'),
(9, 2, 'Barker Discount', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-08-13 13:06:48'),
(10, 2, 'Flowers Promotion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-08-13 13:07:50'),
(11, 2, 'Shoes Discount', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-08-13 13:08:45'),
(12, 1, 'Donut Discount', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-08-13 14:09:36'),
(13, 1, 'MotorBike Rental', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-08-13 14:16:29'),
(14, 4, 'Golf Memeber Promotion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-09-08 14:12:29'),
(15, 4, 'Swimming Club Memeber', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-09-08 14:13:11'),
(16, 4, 'Pizza Discount', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-09-08 14:13:54'),
(17, 4, 'Wine Promotion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-09-08 14:14:31'),
(18, 4, 'Donuts Discount', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2015-09-08 14:15:00'),
(19, 1, 'Summer Promotion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 1, '2016-02-27 16:56:16'),
(20, 1, 'Holiday Season Discount', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.\n', 1, '2016-02-27 16:58:44'),
(21, 1, 'Student Only Discounts', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis. \r\n', 1, '2016-02-27 17:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `cd_follows`
--

CREATE TABLE `cd_follows` (
  `id` int(11) NOT NULL,
  `appuser_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cd_gcm_tokens`
--

CREATE TABLE `cd_gcm_tokens` (
  `id` int(11) NOT NULL,
  `device_id` text,
  `os_type` varchar(20) NOT NULL,
  `reg_id` text NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cd_gcm_tokens`
--

INSERT INTO `cd_gcm_tokens` (`id`, `device_id`, `os_type`, `reg_id`, `added`) VALUES
(2, '', 'ANDROID', 'eurS6wyeLhc:APA91bG5jJLChmdGv-KXt70eRAthkt_XgyUnp4V3YmoiWt6X-njDrBU8f3LhMH4A6qWkGbukcE-6a6acgXSY4igosPRai4njMTc5a_h2g-_CwVHm3HNJCMMmn4LyDo0hsZT17tjeYnc-', '2016-11-07 20:26:24'),
(3, 'CCF74A18-30EE-4048-AD57-4193FE339BE0', 'IOS', '4381213c06ecc4f34f3e25db5709ed0a4756e26b94b22a37b4cbfb3069da3c25', '2017-05-24 17:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `cd_images`
--

CREATE TABLE `cd_images` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `path` text NOT NULL,
  `width` text NOT NULL,
  `height` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_images`
--

INSERT INTO `cd_images` (`id`, `parent_id`, `city_id`, `type`, `path`, `width`, `height`, `description`) VALUES
(7, 1, 0, 'category', '144.jpeg', '284', '177', ''),
(8, 1, 0, 'sub_category', '145.jpeg', '276', '183', ''),
(9, 2, 0, 'sub_category', '229.jpeg', '267', '189', ''),
(10, 3, 0, 'sub_category', '1.png', '600', '400', ''),
(11, 4, 0, 'sub_category', '11.png', '600', '400', ''),
(12, 5, 0, 'sub_category', '12.png', '600', '400', ''),
(13, 2, 0, 'item', '1(33).jpeg', '240', '159', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor.'),
(14, 2, 0, 'item', '2(47).jpeg', '276', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor.'),
(15, 1, 0, 'item', '3(44).jpeg', '283', '178', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. 123 Lorem ipsum dolor sit amet, consectetur adipiscing elit 456'),
(16, 1, 0, 'item', '4(42).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(17, 3, 0, 'item', '5(56).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(18, 3, 0, 'item', '6(46).jpeg', '225', '225', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(19, 4, 0, 'item', '7(42).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(20, 4, 0, 'item', '8(41).jpeg', '240', '210', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(21, 5, 0, 'item', '9(43).jpeg', '240', '200', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(22, 5, 0, 'item', '10(33).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(23, 6, 0, 'item', '2(48).jpeg', '276', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(24, 6, 0, 'item', '1(34).jpeg', '240', '159', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(25, 7, 0, 'item', '3(45).jpeg', '283', '178', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(26, 7, 0, 'item', '4(43).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(27, 8, 0, 'item', '3(46).jpeg', '283', '178', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(28, 8, 0, 'item', '4(44).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(29, 9, 0, 'item', '6(47).jpeg', '225', '225', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(30, 9, 0, 'item', '7(43).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(31, 10, 0, 'item', '9(44).jpeg', '240', '200', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(32, 10, 0, 'item', '10(34).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(33, 11, 0, 'item', '1(35).jpeg', '266', '189', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(34, 11, 0, 'item', '2(49).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(35, 12, 0, 'item', '3(47).jpeg', '282', '178', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(36, 12, 0, 'item', '4(45).jpeg', '272', '185', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(37, 13, 0, 'item', '5(57).jpeg', '223', '226', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(38, 13, 0, 'item', '6(48).jpeg', '262', '193', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(39, 14, 0, 'item', '7(44).jpeg', '304', '166', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(40, 14, 0, 'item', '8(42).jpeg', '311', '162', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(41, 15, 0, 'item', '9(45).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(42, 15, 0, 'item', '10(35).jpeg', '262', '193', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(43, 16, 0, 'item', '1(36).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(44, 16, 0, 'item', '2(50).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(45, 17, 0, 'item', '3(48).jpeg', '267', '189', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(46, 17, 0, 'item', '4(46).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(47, 18, 0, 'item', '5(58).jpeg', '194', '259', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(48, 18, 0, 'item', '6(49).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(49, 19, 0, 'item', '7(45).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(50, 19, 0, 'item', '8(43).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(51, 20, 0, 'item', '9(46).jpeg', '288', '175', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(52, 20, 0, 'item', '10(36).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(53, 21, 0, 'item', '1(37).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(54, 21, 0, 'item', '2(51).jpeg', '276', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(55, 22, 0, 'item', '3(49).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(56, 22, 0, 'item', '4(47).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(57, 23, 0, 'item', '5(59).jpeg', '248', '188', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(58, 23, 0, 'item', '6(50).jpeg', '248', '165', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(59, 24, 0, 'item', '7(46).jpeg', '230', '208', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(60, 24, 0, 'item', '8(44).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(61, 25, 0, 'item', '9(47).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(62, 25, 0, 'item', '10(37).jpeg', '249', '196', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(63, 26, 0, 'item', '1(38).jpeg', '299', '169', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(64, 26, 0, 'item', '2(52).jpeg', '288', '175', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(65, 27, 0, 'item', '3(50).jpeg', '298', '169', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(66, 27, 0, 'item', '4(48).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(67, 28, 0, 'item', '5(60).jpeg', '278', '181', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(68, 28, 0, 'item', '6(51).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(69, 29, 0, 'item', '7(47).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(70, 29, 0, 'item', '8(45).jpeg', '283', '178', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(71, 30, 0, 'item', '9(48).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(72, 30, 0, 'item', '10(38).jpeg', '261', '193', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(73, 2, 0, 'category', '13.png', '600', '400', ''),
(74, 6, 0, 'sub_category', 'sub_cat.jpeg', '275', '183', ''),
(75, 7, 0, 'sub_category', 'sub_cat1.jpeg', '307', '164', ''),
(76, 8, 0, 'sub_category', 'sub_cat2.jpeg', '299', '168', ''),
(77, 9, 0, 'sub_category', 'sub_cat3.jpeg', '259', '194', ''),
(78, 31, 0, 'item', '1(39).jpeg', '290', '174', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(79, 31, 0, 'item', '2(53).jpeg', '200', '249', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(80, 32, 0, 'item', '3(51).jpeg', '200', '252', 'Lorem ipsum dolor sit amet,'),
(81, 32, 0, 'item', '4(49).jpeg', '184', '274', 'Lorem ipsum dolor sit amet,'),
(82, 33, 0, 'item', '5(61).jpeg', '225', '225', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(83, 33, 0, 'item', '6(52).jpeg', '195', '240', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(84, 34, 0, 'item', '7(48).jpeg', '220', '229', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(85, 34, 0, 'item', '8(46).jpeg', '261', '193', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(86, 35, 0, 'item', '9(49).jpeg', '266', '190', 'Lorem ipsum dolor sit amet'),
(87, 35, 0, 'item', '10(39).jpeg', '203', '248', 'Lorem ipsum dolor sit amet'),
(88, 36, 0, 'item', '1(40).jpeg', '225', '225', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(89, 36, 0, 'item', '2(54).jpeg', '275', '183', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(90, 37, 0, 'item', '3(52).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(91, 37, 0, 'item', '4(50).jpeg', '191', '164', 'Lorem ipsum dolor sit amet'),
(92, 38, 0, 'item', '3(53).jpeg', '275', '183', ' Lorem ipsum dolor sit amet, consectetur '),
(93, 38, 0, 'item', '4(51).jpeg', '191', '164', ' Lorem ipsum dolor sit amet, consectetur '),
(94, 39, 0, 'item', '7(49).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(95, 39, 0, 'item', '8(47).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(96, 40, 0, 'item', '9(50).jpeg', '245', '206', 'Lorem ipsum dolor sit amet,'),
(97, 40, 0, 'item', '10(40).jpeg', '299', '169', 'Lorem ipsum dolor sit amet,'),
(98, 41, 0, 'item', '1(41).jpeg', '270', '187', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(99, 41, 0, 'item', '2(55).jpeg', '286', '176', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(100, 42, 0, 'item', '3(54).jpeg', '278', '181', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(101, 42, 0, 'item', '4(52).jpeg', '311', '162', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(102, 43, 0, 'item', '5(62).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(103, 43, 0, 'item', '6(53).jpeg', '260', '194', 'Lorem ipsum dolor sit amet'),
(104, 44, 0, 'item', '7(50).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(105, 44, 0, 'item', '8(48).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(106, 45, 0, 'item', '9(51).jpeg', '261', '193', 'Lorem ipsum dolor sit amet,'),
(107, 45, 0, 'item', '10(41).jpeg', '315', '160', 'Lorem ipsum dolor sit amet,'),
(108, 46, 0, 'item', '1(42).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(109, 46, 0, 'item', '2(56).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(110, 47, 0, 'item', '3(55).jpeg', '290', '174', 'Lorem ipsum dolor sit amet'),
(111, 47, 0, 'item', '4(53).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(112, 48, 0, 'item', '5(63).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(113, 48, 0, 'item', '6(54).jpeg', '291', '173', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(114, 49, 0, 'item', '7(51).jpeg', '274', '184', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(115, 49, 0, 'item', '8(49).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(116, 50, 0, 'item', '9(52).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(117, 50, 0, 'item', '10(42).jpeg', '225', '225', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(118, 3, 0, 'category', 'cat_img.png', '600', '400', ''),
(119, 10, 0, 'sub_category', 'sub_cat_img.jpeg', '261', '193', ''),
(120, 11, 0, 'sub_category', 'sub_cat__pet_img.jpeg', '275', '183', ''),
(121, 12, 0, 'sub_category', 'sub_cat_shoes_img.jpeg', '279', '181', ''),
(122, 13, 0, 'sub_category', 'sub_cat_florists.jpeg', '275', '183', ''),
(123, 51, 0, 'item', '1(43).jpeg', '208', '144', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(124, 51, 0, 'item', '2(57).jpeg', '190', '266', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(125, 52, 0, 'item', '3(56).jpeg', '190', '266', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(126, 52, 0, 'item', '4(54).jpeg', '183', '275', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(127, 53, 0, 'item', '5(64).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(128, 53, 0, 'item', '6(55).jpeg', '252', '189', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(129, 54, 0, 'item', '7(52).jpeg', '95', '205', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(130, 54, 0, 'item', '8(50).jpeg', '248', '164', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(131, 55, 0, 'item', '9(53).jpeg', '225', '224', 'Lorem ipsum dolor sit amet,'),
(132, 55, 0, 'item', '10(43).jpeg', '225', '225', 'Lorem ipsum dolor sit amet,'),
(133, 56, 0, 'item', '1(44).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(134, 56, 0, 'item', '2(58).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(135, 57, 0, 'item', '3(57).jpeg', '202', '250', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(136, 57, 0, 'item', '4(55).jpeg', '277', '182', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(137, 58, 0, 'item', '5(65).jpeg', '265', '190', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(138, 58, 0, 'item', '6(56).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(139, 59, 0, 'item', '7(53).jpeg', '259', '194', 'Lorem ipsum dolor sit amet,'),
(140, 59, 0, 'item', '8(51).jpeg', '259', '195', 'Lorem ipsum dolor sit amet,'),
(141, 60, 0, 'item', '9(54).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(142, 60, 0, 'item', '10(44).jpeg', '249', '202', 'Lorem ipsum dolor sit amet'),
(143, 61, 0, 'item', '1(45).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(144, 61, 0, 'item', '2(59).jpeg', '300', '168', 'Lorem ipsum dolor sit amet'),
(145, 62, 0, 'item', '3(58).jpeg', '274', '184', 'Lorem ipsum dolor sit amet'),
(146, 62, 0, 'item', '4(56).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(147, 63, 0, 'item', '3(59).jpeg', '274', '184', 'Lorem ipsum dolor sit amet'),
(148, 63, 0, 'item', '4(57).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(149, 64, 0, 'item', '7(54).jpeg', '191', '263', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(150, 64, 0, 'item', '8(52).jpeg', '183', '275', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(151, 65, 0, 'item', '10(45).jpeg', '200', '252', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(152, 65, 0, 'item', '9(55).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(153, 66, 0, 'item', '1(46).jpeg', '194', '259', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(154, 66, 0, 'item', '2(60).jpeg', '287', '176', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(155, 67, 0, 'item', '3(60).jpeg', '260', '194', 'Lorem ipsum dolor sit amet'),
(156, 67, 0, 'item', '4(58).jpeg', '199', '253', 'Lorem ipsum dolor sit amet'),
(157, 68, 0, 'item', '6(57).jpeg', '218', '231', 'Lorem ipsum dolor sit amet'),
(158, 68, 0, 'item', '7(55).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(159, 69, 0, 'item', '7(56).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(160, 69, 0, 'item', '8(53).jpeg', '216', '216', 'Lorem ipsum dolor sit amet'),
(161, 70, 0, 'item', '9(56).jpeg', '210', '240', 'Lorem ipsum dolor sit amet'),
(162, 70, 0, 'item', '10(46).jpeg', '225', '225', 'Lorem ipsum dolor sit amet'),
(163, 4, 0, 'category', 'food_n_dining.png', '600', '400', ''),
(164, 14, 0, 'sub_category', 'sub_cat_donuts.jpeg', '289', '174', ''),
(165, 15, 0, 'sub_category', 'sub_cat_pizza.jpeg', '291', '173', ''),
(166, 16, 0, 'sub_category', 'sub_cat_wine.jpeg', '277', '182', ''),
(167, 71, 0, 'item', '1(47).jpeg', '232', '217', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(168, 71, 0, 'item', '2(61).jpeg', '225', '225', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(169, 72, 0, 'item', '3(61).jpeg', '222', '227', 'Lorem ipsum dolor sit amet'),
(170, 72, 0, 'item', '4(59).jpeg', '224', '225', 'Lorem ipsum dolor sit amet'),
(171, 73, 0, 'item', '5(66).jpeg', '225', '225', 'Lorem ipsum dolor sit amet'),
(172, 73, 0, 'item', '6(58).jpeg', '255', '198', 'Lorem ipsum dolor sit amet'),
(173, 74, 0, 'item', '8(54).jpeg', '183', '275', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(174, 74, 0, 'item', '7(57).jpeg', '250', '202', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(175, 75, 0, 'item', '9(57).jpeg', '300', '168', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(176, 75, 0, 'item', '10(47).jpeg', '225', '225', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(177, 76, 0, 'item', '1(48).jpeg', '284', '177', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(178, 76, 0, 'item', '2(62).jpeg', '268', '188', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(179, 77, 0, 'item', '3(62).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(180, 77, 0, 'item', '4(60).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(181, 78, 0, 'item', '6(59).jpeg', '254', '198', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(182, 78, 0, 'item', '7(58).jpeg', '294', '172', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(183, 79, 0, 'item', '7(59).jpeg', '294', '172', 'Lorem ipsum dolor sit amet'),
(184, 79, 0, 'item', '8(55).jpeg', '300', '168', 'Lorem ipsum dolor sit amet'),
(185, 80, 0, 'item', '9(58).jpeg', '226', '223', 'Lorem ipsum dolor sit amet'),
(186, 80, 0, 'item', '10(48).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(187, 81, 0, 'item', '2(63).jpeg', '183', '275', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(188, 81, 0, 'item', '1(49).jpeg', '183', '275', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(189, 82, 0, 'item', '4(61).jpeg', '194', '259', 'Lorem ipsum dolor sit amet'),
(190, 82, 0, 'item', '5(67).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(191, 83, 0, 'item', '6(60).jpeg', '275', '183', 'Lorem ipsum dolor sit amet,'),
(192, 83, 0, 'item', '7(60).jpeg', '170', '296', 'Lorem ipsum dolor sit amet,'),
(193, 84, 0, 'item', '7(61).jpeg', '170', '296', 'Lorem ipsum dolor sit amet'),
(194, 84, 0, 'item', '8(56).jpeg', '195', '258', 'Lorem ipsum dolor sit amet'),
(198, 5, 0, 'category', 'cat_img.jpeg', '276', '183', ''),
(199, 17, 0, 'sub_category', 'sub_cat_image.jpeg', '273', '185', ''),
(200, 86, 0, 'item', '1(50).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(201, 86, 0, 'item', '2(64).jpeg', '283', '178', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(202, 87, 0, 'item', '3(63).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(203, 87, 0, 'item', '4(62).jpeg', '263', '192', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(204, 88, 0, 'item', '5(68).jpeg', '270', '187', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(205, 88, 0, 'item', '6(61).jpeg', '295', '171', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(206, 18, 0, 'sub_category', '2210.jpeg', '270', '186', ''),
(207, 89, 0, 'item', '11(36).jpeg', '270', '186', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '),
(208, 89, 0, 'item', '12(50).jpeg', '283', '178', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '),
(209, 90, 0, 'item', '13(32).jpeg', '270', '187', 'Sed rhoncus condimentum lobortis'),
(210, 90, 0, 'item', '14(24).jpeg', '259', '194', 'Sed rhoncus condimentum lobortis'),
(211, 91, 0, 'item', '18(13).jpeg', '275', '183', 'Sed rhoncus condimentum lobortis'),
(212, 91, 0, 'item', '19(16).jpeg', '259', '194', 'Sed rhoncus condimentum lobortis'),
(213, 6, 0, 'category', 'cat_img2.png', '600', '400', ''),
(214, 19, 0, 'sub_category', 'sub_cat_img1.jpeg', '261', '193', ''),
(215, 92, 0, 'item', '1(51).jpeg', '208', '144', 'Lorem ipsum dolor sit amet'),
(216, 92, 0, 'item', '2(65).jpeg', '190', '266', 'Lorem ipsum dolor sit amet'),
(217, 93, 0, 'item', '3(64).jpeg', '190', '266', 'Lorem ipsum dolor sit amet'),
(218, 93, 0, 'item', '4(63).jpeg', '183', '275', 'Lorem ipsum dolor sit amet'),
(219, 94, 0, 'item', '7(62).jpeg', '95', '205', 'Lorem ipsum dolor sit amet'),
(220, 94, 0, 'item', '9(60).jpeg', '225', '224', 'Lorem ipsum dolor sit amet'),
(221, 1, 0, 'feed', '5(69).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(222, 1, 0, 'feed', '1(52).jpeg', '284', '177', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(223, 2, 0, 'feed', '2(66).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(224, 2, 0, 'feed', '4(64).jpeg', '272', '185', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(225, 2, 0, 'feed', '6(62).jpeg', '262', '193', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(226, 3, 0, 'feed', '6(63).jpeg', '252', '189', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(227, 3, 0, 'feed', '8(57).jpeg', '248', '164', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(228, 4, 0, 'feed', '3(65).jpeg', '274', '184', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(229, 4, 0, 'feed', '4(65).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(230, 5, 0, 'feed', '5(70).jpeg', '225', '225', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(231, 5, 0, 'feed', '6(64).jpeg', '255', '198', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(232, 6, 0, 'feed', '4(66).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(233, 6, 0, 'feed', '6(65).jpeg', '254', '198', 'Lorem ipsum dolor sit amet'),
(234, 6, 0, 'feed', '1(53).jpeg', '284', '177', 'Lorem ipsum dolor sit amet'),
(235, 7, 0, 'feed', '4(67).jpeg', '183', '275', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(236, 7, 0, 'feed', '6(66).jpeg', '252', '189', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(237, 7, 0, 'feed', '8(58).jpeg', '248', '164', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(238, 8, 0, 'feed', '4(68).jpeg', '272', '185', 'Lorem ipsum dolor sit amet, consectetur'),
(239, 8, 0, 'feed', '5(71).jpeg', '223', '226', 'Lorem ipsum dolor sit amet, consectetur'),
(240, 9, 0, 'feed', '8(59).jpeg', '248', '164', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(241, 9, 0, 'feed', '9(61).jpeg', '225', '224', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(242, 10, 0, 'feed', '3(66).jpeg', '260', '194', 'Lorem ipsum dolor sit amet'),
(243, 10, 0, 'feed', '5(72).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(244, 11, 0, 'feed', '3(67).jpeg', '274', '184', 'Lorem ipsum dolor sit amet'),
(245, 11, 0, 'feed', '6(67).jpeg', '183', '276', 'Lorem ipsum dolor sit amet'),
(246, 12, 0, 'feed', '1(54).jpeg', '232', '217', 'Lorem ipsum dolor sit amet'),
(247, 12, 0, 'feed', '2(67).jpeg', '225', '225', 'Lorem ipsum dolor sit amet'),
(248, 13, 0, 'feed', '6(68).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(249, 13, 0, 'feed', '3(68).jpeg', '298', '169', 'Lorem ipsum dolor sit amet'),
(250, 7, 0, 'category', '230.jpeg', '225', '225', ''),
(251, 20, 0, 'sub_category', '146.jpeg', '225', '225', ''),
(252, 21, 0, 'sub_category', '147.jpeg', '252', '200', ''),
(253, 22, 0, 'sub_category', '148.jpeg', '231', '176', ''),
(254, 23, 0, 'sub_category', '231.jpeg', '225', '225', ''),
(255, 95, 0, 'item', '1(55).jpeg', '225', '225', 'Lorem ipsum dolor sit amet'),
(256, 95, 0, 'item', '2(68).jpeg', '225', '225', 'Lorem ipsum dolor sit amet'),
(257, 96, 0, 'item', '3(69).jpeg', '257', '196', 'Lorem ipsum dolor sit amet'),
(258, 96, 0, 'item', '4(69).jpeg', '256', '192', 'Lorem ipsum dolor sit amet'),
(259, 97, 0, 'item', '6(69).jpeg', '225', '225', 'Lorem ipsum dolor sit amet'),
(260, 97, 0, 'item', '7(63).jpeg', '225', '225', 'Lorem ipsum dolor sit amet'),
(261, 98, 0, 'item', '8(60).jpeg', '269', '187', 'Lorem ipsum dolor sit amet'),
(262, 98, 0, 'item', '9(62).jpeg', '225', '225', 'Lorem ipsum dolor sit amet'),
(263, 99, 0, 'item', '12(51).jpeg', '248', '203', 'Lorem ipsum dolor sit amet'),
(264, 99, 0, 'item', '13(33).jpeg', '252', '200', 'Lorem ipsum dolor sit amet'),
(265, 100, 0, 'item', '21(12).jpeg', '295', '171', 'Lorem ipsum dolor sit amet'),
(266, 100, 0, 'item', '22(11).jpeg', '270', '186', 'Lorem ipsum dolor sit amet'),
(267, 100, 0, 'item', '23(6).jpeg', '263', '192', 'Lorem ipsum dolor sit amet'),
(268, 101, 0, 'item', '18(14).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(269, 101, 0, 'item', '19(17).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(270, 101, 0, 'item', '20(11).jpeg', '263', '192', 'Lorem ipsum dolor sit amet'),
(271, 102, 0, 'item', '13(34).jpeg', '270', '187', 'Lorem ipsum dolor sit amet'),
(272, 102, 0, 'item', '14(25).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(273, 102, 0, 'item', '15(33).jpeg', '270', '186', 'Lorem ipsum dolor sit amet'),
(274, 103, 0, 'item', '12(52).jpeg', '283', '178', 'Lorem ipsum dolor sit amet'),
(275, 103, 0, 'item', '14(26).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(276, 103, 0, 'item', '13(35).jpeg', '270', '187', 'Lorem ipsum dolor sit amet'),
(277, 104, 0, 'item', '9(63).jpeg', '225', '224', 'Lorem ipsum dolor sit amet'),
(278, 104, 0, 'item', '10(50).jpeg', '225', '225', 'Lorem ipsum dolor sit amet'),
(279, 105, 0, 'item', '3(70).jpeg', '190', '266', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(280, 105, 0, 'item', '4(70).jpeg', '183', '275', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(281, 106, 0, 'item', '1(56).jpeg', '252', '200', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(282, 106, 0, 'item', '2(69).jpeg', '225', '225', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(283, 107, 0, 'item', '7(64).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(284, 107, 0, 'item', '8(61).jpeg', '282', '179', 'Lorem ipsum dolor sit amet'),
(285, 108, 0, 'item', '9(64).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(286, 108, 0, 'item', '13(36).jpeg', '294', '171', 'Lorem ipsum dolor sit amet'),
(287, 109, 0, 'item', '8(62).jpeg', '282', '179', 'Lorem ipsum dolor sit amet'),
(288, 109, 0, 'item', '10(51).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(289, 110, 0, 'item', '4(71).jpeg', '225', '225', 'Lorem ipsum dolor sit amet,'),
(290, 110, 0, 'item', '12(53).jpeg', '225', '225', 'Lorem ipsum dolor sit amet,'),
(291, 111, 0, 'item', '1(57).jpeg', '231', '176', 'Lorem ipsum dolor sit amet'),
(292, 111, 0, 'item', '2(70).jpeg', '225', '225', 'Lorem ipsum dolor sit amet'),
(293, 112, 0, 'item', '3(71).jpeg', '220', '229', 'Lorem ipsum dolor sit amet'),
(294, 112, 0, 'item', '4(72).jpeg', '200', '248', 'Lorem ipsum dolor sit amet'),
(295, 113, 0, 'item', '7(65).jpeg', '214', '236', 'Lorem ipsum dolor sit amet,'),
(296, 113, 0, 'item', '9(65).jpeg', '180', '201', 'Lorem ipsum dolor sit amet,'),
(297, 114, 0, 'item', '11(37).jpeg', '209', '240', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(298, 114, 0, 'item', '12(54).jpeg', '225', '225', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(299, 115, 0, 'item', '14(27).jpeg', '192', '262', 'Sed rhoncus condimentum lobortis.'),
(300, 115, 0, 'item', '15(34).jpeg', '210', '240', 'Sed rhoncus condimentum lobortis.'),
(301, 24, 0, 'sub_category', 'cover_img.jpeg', '189', '267', ''),
(302, 116, 0, 'item', '1(58).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(303, 116, 0, 'item', '2(71).jpeg', '260', '194', 'Lorem ipsum dolor sit amet'),
(304, 117, 0, 'item', '3(72).jpeg', '184', '256', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(305, 117, 0, 'item', '4.png', '254', '191', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(306, 118, 0, 'item', '5(73).jpeg', '183', '275', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(307, 118, 0, 'item', '6(70).jpeg', '242', '209', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(308, 119, 0, 'item', '7(66).jpeg', '238', '160', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(309, 119, 0, 'item', '8(63).jpeg', '271', '186', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(310, 120, 0, 'item', '4(1).png', '254', '191', 'Lorem ipsum dolor sit amet'),
(311, 120, 0, 'item', '8(64).jpeg', '271', '186', 'Lorem ipsum dolor sit amet'),
(312, 25, 0, 'sub_category', 'sub_cat__pet_img1.jpeg', '275', '183', ''),
(313, 121, 0, 'item', '1(59).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(314, 121, 0, 'item', '2(72).jpeg', '275', '183', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
(315, 122, 0, 'item', '3(73).jpeg', '202', '250', 'Lorem ipsum dolor sit amet, consectetur'),
(316, 122, 0, 'item', '4(73).jpeg', '277', '182', 'Lorem ipsum dolor sit amet, consectetur'),
(317, 123, 0, 'item', '5(74).jpeg', '265', '190', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli'),
(318, 123, 0, 'item', '6(71).jpeg', '259', '194', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli'),
(319, 124, 0, 'item', '8(65).jpeg', '259', '195', 'Sed rhoncus condimentum lobortis.'),
(320, 124, 0, 'item', '9(66).jpeg', '259', '194', 'Sed rhoncus condimentum lobortis.'),
(321, 125, 0, 'item', '6(72).jpeg', '259', '194', 'Lorem ipsum dolor'),
(322, 125, 0, 'item', '8(66).jpeg', '259', '195', 'Lorem ipsum dolor'),
(323, 26, 0, 'sub_category', 'sub_cat4.jpeg', '259', '194', ''),
(324, 126, 0, 'item', '1(60).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(325, 126, 0, 'item', '2(73).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(326, 127, 0, 'item', '3(74).jpeg', '290', '174', 'Lorem ipsum dolor sit amet'),
(327, 127, 0, 'item', '4(74).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(328, 128, 0, 'item', '6(73).jpeg', '291', '173', 'Sed rhoncus condimentum lobortis.'),
(329, 128, 0, 'item', '7(67).jpeg', '274', '184', 'Sed rhoncus condimentum lobortis.'),
(330, 129, 0, 'item', '7(68).jpeg', '274', '184', 'Lorem ipsum dolor sit amet'),
(331, 129, 0, 'item', '9(67).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(332, 130, 0, 'item', '9(68).jpeg', '275', '183', 'Sed rhoncus condimentum lobortis.'),
(333, 130, 0, 'item', '10(52).jpeg', '225', '225', 'Sed rhoncus condimentum lobortis.'),
(334, 8, 0, 'category', '231.jpeg', '267', '189', ''),
(335, 27, 0, 'sub_category', '149.jpeg', '266', '189', ''),
(336, 131, 0, 'item', '1(61).jpeg', '266', '189', 'Lorem ipsum dolor sit amet'),
(337, 131, 0, 'item', '2(74).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(338, 132, 0, 'item', '3(75).jpeg', '282', '178', 'Sed rhoncus condimentum lobortis.'),
(339, 132, 0, 'item', '4(75).jpeg', '272', '185', 'Sed rhoncus condimentum lobortis.'),
(340, 133, 0, 'item', '5(75).jpeg', '223', '226', 'Lorem ipsum dolor sit amet'),
(341, 133, 0, 'item', '6(74).jpeg', '262', '193', 'Lorem ipsum dolor sit amet'),
(342, 134, 0, 'item', '9(69).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(343, 134, 0, 'item', '10(53).jpeg', '262', '193', 'Lorem ipsum dolor sit amet'),
(344, 135, 0, 'item', '8(67).jpeg', '311', '162', 'Sed rhoncus condimentum lobortis.'),
(345, 135, 0, 'item', '9(70).jpeg', '259', '194', 'Sed rhoncus condimentum lobortis.'),
(346, 28, 0, 'sub_category', '14.png', '600', '400', ''),
(347, 136, 0, 'item', '1(62).jpeg', '299', '169', 'Lorem ipsum dolor sit amet'),
(348, 136, 0, 'item', '2(75).jpeg', '288', '175', 'Lorem ipsum dolor sit amet'),
(349, 137, 0, 'item', '3(76).jpeg', '298', '169', 'Sed rhoncus condimentum lobortis.'),
(350, 137, 0, 'item', '4(76).jpeg', '259', '194', 'Sed rhoncus condimentum lobortis.'),
(351, 138, 0, 'item', '5(76).jpeg', '278', '181', 'Lorem ipsum dolor sit amet'),
(352, 138, 0, 'item', '6(75).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(353, 139, 0, 'item', '8(68).jpeg', '283', '178', 'Sed rhoncus condimentum lobortis.'),
(354, 139, 0, 'item', '9(71).jpeg', '259', '194', 'Sed rhoncus condimentum lobortis.'),
(355, 140, 0, 'item', '3(77).jpeg', '298', '169', 'Sed rhoncus condimentum lobortis.'),
(356, 140, 0, 'item', '8(69).jpeg', '283', '178', 'Sed rhoncus condimentum lobortis.'),
(358, 9, 0, 'category', 'sport_cat_image.jpg', '300', '321', ''),
(359, 29, 0, 'sub_category', 'sub_cat_img2.jpeg', '275', '183', ''),
(360, 141, 0, 'item', '1(63).jpeg', '225', '225', 'Lorem ipsum dolor sit amet'),
(361, 141, 0, 'item', '2(76).jpeg', '183', '276', 'Lorem ipsum dolor sit amet'),
(362, 142, 0, 'item', '3(78).jpeg', '198', '254', 'Lorem ipsum dolor sit amet'),
(363, 142, 0, 'item', '4(77).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(364, 143, 0, 'item', '5(77).jpeg', '259', '194', 'Sed rhoncus condimentum lobortis.'),
(365, 143, 0, 'item', '6(76).jpeg', '275', '183', 'Sed rhoncus condimentum lobortis.'),
(366, 144, 0, 'item', '8(70).jpeg', '275', '183', 'Sed rhoncus condimentum lobortis.'),
(367, 144, 0, 'item', '9(72).jpeg', '275', '183', 'Sed rhoncus condimentum lobortis.'),
(368, 145, 0, 'item', '10(54).jpeg', '218', '231', ' Sed rhoncus condimentum lobortis.'),
(369, 145, 0, 'item', '6(77).jpeg', '275', '183', ' Sed rhoncus condimentum lobortis.'),
(370, 30, 0, 'sub_category', 'sub_cat_img.jpg', '1024', '768', ''),
(371, 146, 0, 'item', '1(64).jpeg', '257', '196', 'Lorem ipsum dolor sit amet'),
(372, 146, 0, 'item', '2(77).jpeg', '259', '194', 'Lorem ipsum dolor sit amet'),
(373, 147, 0, 'item', '9(73).jpeg', '193', '261', 'Sed rhoncus condimentum lobortis.'),
(374, 147, 0, 'item', '10(55).jpeg', '270', '187', 'Sed rhoncus condimentum lobortis.'),
(375, 148, 0, 'item', '5(78).jpeg', '241', '209', 'Sed rhoncus condimentum lobortis.'),
(376, 148, 0, 'item', '6(78).jpeg', '276', '183', 'Sed rhoncus condimentum lobortis.'),
(377, 149, 0, 'item', '6(79).jpeg', '276', '183', 'Sed rhoncus condimentum lobortis.'),
(378, 149, 0, 'item', '7(69).jpeg', '225', '225', 'Sed rhoncus condimentum lobortis.'),
(379, 150, 0, 'item', '8(71).jpeg', '225', '225', 'Sed rhoncus condimentum lobortis.'),
(380, 150, 0, 'item', '10(56).jpeg', '270', '187', 'Sed rhoncus condimentum lobortis.'),
(381, 31, 0, 'sub_category', 'futsal_sub_cat_img.jpg', '1711', '1744', ''),
(382, 151, 0, 'item', '1(65).jpeg', '259', '194', 'Sed rhoncus condimentum lobortis.'),
(383, 151, 0, 'item', '2(78).jpeg', '278', '181', 'Sed rhoncus condimentum lobortis.'),
(384, 152, 0, 'item', '3(79).jpeg', '275', '183', 'Sed rhoncus condimentum lobortis.'),
(385, 152, 0, 'item', '4(78).jpeg', '275', '183', 'Sed rhoncus condimentum lobortis.'),
(386, 153, 0, 'item', '4(79).jpeg', '275', '183', 'Sed rhoncus condimentum lobortis.'),
(387, 153, 0, 'item', '5(79).jpeg', '212', '152', 'Sed rhoncus condimentum lobortis.'),
(388, 154, 0, 'item', '6(80).jpeg', '259', '194', 'Sed rhoncus condimentum lobortis.'),
(389, 154, 0, 'item', '7(70).jpeg', '278', '181', 'Sed rhoncus condimentum lobortis.'),
(390, 155, 0, 'item', '9(74).jpeg', '271', '186', 'Sed rhoncus condimentum lobortis.'),
(391, 155, 0, 'item', '10(57).jpeg', '275', '184', 'Sed rhoncus condimentum lobortis.'),
(392, 32, 0, 'sub_category', 'swimming_cat_img.jpeg', '275', '183', ''),
(393, 156, 0, 'item', '1(66).jpeg', '275', '183', 'Sed rhoncus condimentum lobortis.'),
(394, 156, 0, 'item', '2(79).jpeg', '318', '159', 'Sed rhoncus condimentum lobortis.'),
(395, 157, 0, 'item', '3(80).jpeg', '275', '183', 'Sed rhoncus condimentum lobortis.'),
(396, 157, 0, 'item', '4(80).jpeg', '300', '168', 'Sed rhoncus condimentum lobortis.'),
(397, 158, 0, 'item', '8(72).jpeg', '165', '305', 'Sed rhoncus condimentum lobortis.'),
(398, 158, 0, 'item', '9(75).jpeg', '275', '183', 'Sed rhoncus condimentum lobortis.'),
(399, 159, 0, 'item', '9(76).jpeg', '275', '183', 'Sed rhoncus condimentum lobortis.'),
(400, 159, 0, 'item', '10(58).jpeg', '276', '183', 'Sed rhoncus condimentum lobortis.'),
(401, 160, 0, 'item', '5(80).jpeg', '275', '183', 'a nostra, per inceptos himenaeos'),
(402, 160, 0, 'item', '7(71).jpeg', '275', '183', 'a nostra, per inceptos himenaeos'),
(403, 10, 0, 'category', 'cat_img_island.jpeg', '768', '600', ''),
(404, 33, 0, 'sub_category', '232.jpeg', '283', '178', ''),
(405, 161, 0, 'item', '1(67).jpeg', '275', '183', 'Sed rhoncus condimentum lobortis.'),
(406, 161, 0, 'item', '2(80).jpeg', '283', '178', 'Sed rhoncus condimentum lobortis.'),
(407, 162, 0, 'item', '3(81).jpeg', '259', '194', 'bia nostra, per inceptos himenaeo'),
(408, 162, 0, 'item', '4(81).jpeg', '263', '192', 'bia nostra, per inceptos himenaeo'),
(409, 163, 0, 'item', '11(38).jpeg', '270', '186', 'n varius nisl hendre'),
(410, 163, 0, 'item', '12(55).jpeg', '283', '178', 'n varius nisl hendre'),
(411, 164, 0, 'item', '12(56).jpeg', '283', '178', ' et, interdum tincidun'),
(412, 164, 0, 'item', '13(37).jpeg', '270', '187', ' et, interdum tincidun'),
(413, 165, 0, 'item', '16(26).jpeg', '263', '192', 'erdum tincidunt sapien. Class apt'),
(414, 165, 0, 'item', '17(22).jpeg', '270', '187', 'erdum tincidunt sapien. Class apt'),
(415, 34, 0, 'sub_category', '1112.jpeg', '270', '186', ''),
(416, 166, 0, 'item', '12(57).jpeg', '283', '178', 'dum tincidunt sapien. Class apte'),
(417, 166, 0, 'item', '14(28).jpeg', '259', '194', 'dum tincidunt sapien. Class apte'),
(418, 167, 0, 'item', '9(77).jpeg', '263', '192', 'ubia nostra, per inceptos himena'),
(419, 167, 0, 'item', '11(39).jpeg', '270', '186', 'ubia nostra, per inceptos himena'),
(420, 168, 0, 'item', '5(81).jpeg', '270', '187', 'varius nisl hendrerit at. '),
(421, 168, 0, 'item', '7(72).jpeg', '270', '186', 'varius nisl hendrerit at. '),
(422, 35, 0, 'sub_category', 'cover_img1.jpeg', '189', '267', ''),
(423, 169, 0, 'item', '1(68).jpeg', '275', '183', 'nibh et, interdum tincidun'),
(424, 169, 0, 'item', '2(81).jpeg', '260', '194', 'nibh et, interdum tincidun'),
(425, 170, 0, 'item', '3(82).jpeg', '184', '256', 'h et, interdum tincidunt sap'),
(426, 170, 0, 'item', '4(2).png', '254', '191', 'h et, interdum tincidunt sap'),
(427, 171, 0, 'item', '4(3).png', '254', '191', ' conubia nostra, per inceptos hi'),
(428, 171, 0, 'item', '5(82).jpeg', '183', '275', ' conubia nostra, per inceptos hi'),
(429, 172, 0, 'item', '5(83).jpeg', '183', '275', 't per conubia nostra, per inceptos him'),
(430, 172, 0, 'item', '6(81).jpeg', '242', '209', 't per conubia nostra, per inceptos him'),
(432, 36, 0, 'sub_category', '150.jpeg', '284', '177', ''),
(433, 173, 0, 'item', '1(69).jpeg', '284', '177', 's in nibh et, interdum tincidunt sa'),
(434, 173, 0, 'item', '2(82).jpeg', '268', '188', 's in nibh et, interdum tincidunt sa'),
(435, 11, 0, 'category', 'food_n_dinning_img.jpg', '640', '427', ''),
(436, 174, 0, 'item', '3(83).jpeg', '275', '183', 'ibh et, interdum tincidunt sapien'),
(437, 174, 0, 'item', '4(82).jpeg', '275', '183', 'ibh et, interdum tincidunt sapien'),
(438, 175, 0, 'item', '6(82).jpeg', '254', '198', 'varius nisl hendrerit at. Pr'),
(439, 175, 0, 'item', '7(73).jpeg', '294', '172', 'varius nisl hendrerit at. Pr'),
(440, 176, 0, 'item', '8(73).jpeg', '300', '168', 'n varius nisl hendrerit at. '),
(441, 176, 0, 'item', '9(78).jpeg', '226', '223', 'n varius nisl hendrerit at. '),
(442, 37, 0, 'sub_category', '151.jpeg', '232', '217', ''),
(443, 177, 0, 'item', '1(70).jpeg', '232', '217', 's in nibh et, interdum tincidunt sap'),
(444, 177, 0, 'item', '2(83).jpeg', '225', '225', 's in nibh et, interdum tincidunt sap'),
(445, 178, 0, 'item', '4(83).jpeg', '224', '225', 'bh et, interdum tincidunt sapien. Class a'),
(446, 178, 0, 'item', '5(84).jpeg', '225', '225', 'bh et, interdum tincidunt sapien. Class a'),
(447, 179, 0, 'item', '9(79).jpeg', '300', '168', 's, non varius nisl hend'),
(448, 179, 0, 'item', '10(59).jpeg', '225', '225', 's, non varius nisl hend'),
(449, 180, 0, 'item', '8(74).jpeg', '183', '275', 'Lorem ipsum dolor sit amet, '),
(450, 180, 0, 'item', '10(60).jpeg', '225', '225', 'Lorem ipsum dolor sit amet, '),
(451, 38, 0, 'sub_category', 'sub_cat_wine1.jpeg', '277', '182', ''),
(452, 181, 0, 'item', '1(71).jpeg', '183', '275', 'Lorem ipsum dolor sit amet'),
(453, 181, 0, 'item', '2(84).jpeg', '183', '275', 'Lorem ipsum dolor sit amet'),
(454, 182, 0, 'item', '4(84).jpeg', '194', '259', 'non varius nisl hendr'),
(455, 182, 0, 'item', '5(85).jpeg', '259', '194', 'non varius nisl hendr'),
(456, 183, 0, 'item', '5(86).jpeg', '259', '194', 'rius nisl hendrerit at. Prae'),
(457, 183, 0, 'item', '7(74).jpeg', '170', '296', 'rius nisl hendrerit at. Prae'),
(458, 184, 0, 'item', '8(75).jpeg', '195', '258', 'No-1, City Road, Tokyo, Japan'),
(459, 184, 0, 'item', '10(61).jpeg', '299', '168', 'No-1, City Road, Tokyo, Japan'),
(460, 12, 0, 'category', 'shopping_cat_img.jpg', '240', '160', ''),
(461, 39, 0, 'sub_category', 'sub_cat_florists1.jpeg', '275', '183', ''),
(462, 185, 0, 'item', '1(72).jpeg', '194', '259', 'us, non varius nisl hendreri'),
(463, 185, 0, 'item', '2(85).jpeg', '287', '176', 'us, non varius nisl hendreri'),
(464, 186, 0, 'item', '3(84).jpeg', '260', '194', 'onubia nostra, per inceptos hi'),
(465, 186, 0, 'item', '4(85).jpeg', '199', '253', 'onubia nostra, per inceptos hi'),
(466, 187, 0, 'item', '8(76).jpeg', '216', '216', 'metus, non varius nisl hend'),
(467, 187, 0, 'item', '9(80).jpeg', '210', '240', 'metus, non varius nisl hend'),
(468, 40, 0, 'sub_category', 'sub_cat_shoes_img1.jpeg', '279', '181', ''),
(469, 188, 0, 'item', '1(73).jpeg', '275', '183', 'ius nisl hendrerit at. Pr'),
(470, 188, 0, 'item', '2(86).jpeg', '300', '168', 'ius nisl hendrerit at. Pr'),
(471, 189, 0, 'item', '6(83).jpeg', '183', '276', 'nisl hendrerit at. Praesent'),
(472, 189, 0, 'item', '7(75).jpeg', '191', '263', 'nisl hendrerit at. Praesent'),
(473, 190, 0, 'item', '8(77).jpeg', '183', '275', 'conubia nostra, per inceptos himena'),
(474, 190, 0, 'item', '9(81).jpeg', '275', '183', 'conubia nostra, per inceptos himena'),
(476, 13, 0, 'category', 'sport_cat_image1.jpg', '300', '321', ''),
(478, 41, 0, 'sub_category', 'sub_cat_img3.jpeg', '275', '183', ''),
(479, 42, 0, 'sub_category', 'sub_cat_img1.jpg', '1024', '768', ''),
(480, 43, 0, 'sub_category', 'swimming_cat_img1.jpeg', '275', '183', ''),
(481, 191, 0, 'item', '1(74).jpeg', '275', '183', 'Lorem ipsum dolor sit amet'),
(482, 191, 0, 'item', '2(87).jpeg', '318', '159', 'Lorem ipsum dolor sit amet'),
(483, 192, 0, 'item', '2(88).jpeg', '318', '159', 'Sed rhoncus condimentum lobortis.'),
(484, 192, 0, 'item', '3(85).jpeg', '275', '183', 'Sed rhoncus condimentum lobortis.'),
(485, 193, 0, 'item', '4(86).jpeg', '300', '168', 'ultricies in nibh et, interdum tincidunt'),
(486, 193, 0, 'item', '5(87).jpeg', '275', '183', 'ultricies in nibh et, interdum tincidunt'),
(491, 194, 0, 'item', '8(78).jpeg', '225', '225', 'Curabitur venenatis commodo pellentesque'),
(492, 194, 0, 'item', '9(82).jpeg', '193', '261', 'Curabitur venenatis commodo pellentesque'),
(493, 195, 0, 'item', '2(89).jpeg', '259', '194', 'Curabitur venenatis commodo pellentesque'),
(494, 195, 0, 'item', '4(87).jpeg', '217', '232', 'Curabitur venenatis commodo pellentesque'),
(495, 196, 0, 'item', '6(84).jpeg', '276', '183', 'Aliquam elementum tempus diam'),
(496, 196, 0, 'item', '8(79).jpeg', '225', '225', 'Aliquam elementum tempus diam'),
(497, 197, 0, 'item', '3(86).jpeg', '198', '254', 'Curabitur venenatis commodo pellentesque'),
(498, 197, 0, 'item', '5(88).jpeg', '259', '194', 'Curabitur venenatis commodo pellentesque'),
(499, 198, 0, 'item', '7(76).jpeg', '280', '180', 'ad litora torquent per conubia nostra'),
(500, 198, 0, 'item', '8(80).jpeg', '275', '183', 'ad litora torquent per conubia nostra'),
(501, 199, 0, 'item', '6(85).jpeg', '275', '183', 'ultricies in nibh et, interdum tincidunt '),
(502, 199, 0, 'item', '8(81).jpeg', '275', '183', 'ultricies in nibh et, interdum tincidunt '),
(503, 15, 0, 'category', 'food_n_dinning_img1.jpg', '640', '427', ''),
(504, 44, 0, 'sub_category', '152.jpeg', '284', '177', ''),
(505, 45, 0, 'sub_category', '153.jpeg', '232', '217', ''),
(506, 46, 0, 'sub_category', 'sub_cat_wine2.jpeg', '277', '182', ''),
(507, 200, 0, 'item', '1(75).jpeg', '183', '275', 'onsectetur adipiscing elit'),
(508, 200, 0, 'item', '2(90).jpeg', '183', '275', 'onsectetur adipiscing elit'),
(509, 201, 0, 'item', '7(77).jpeg', '170', '296', ' inceptos himenaeos. Curabitur ven'),
(510, 201, 0, 'item', '9(83).jpeg', '192', '262', ' inceptos himenaeos. Curabitur ven'),
(511, 202, 0, 'item', '6(86).jpeg', '275', '183', 'ies in nibh et, interdum tin'),
(512, 202, 0, 'item', '8(82).jpeg', '195', '258', 'ies in nibh et, interdum tin'),
(513, 203, 0, 'item', '1(76).jpeg', '232', '217', 'u ad litora torquent per conubia n'),
(514, 203, 0, 'item', '2(91).jpeg', '225', '225', 'u ad litora torquent per conubia n'),
(515, 204, 0, 'item', '2(92).jpeg', '225', '225', 'ad litora torquent per conubia nostra'),
(516, 204, 0, 'item', '3(87).jpeg', '222', '227', 'ad litora torquent per conubia nostra'),
(517, 205, 0, 'item', '6(87).jpeg', '255', '198', 'tor. Mauris hendrerit odio sit a'),
(518, 205, 0, 'item', '8(83).jpeg', '183', '275', 'tor. Mauris hendrerit odio sit a'),
(519, 206, 0, 'item', '2(93).jpeg', '268', '188', 'rabitur venenatis commodo'),
(520, 206, 0, 'item', '3(88).jpeg', '275', '183', 'rabitur venenatis commodo'),
(521, 207, 0, 'item', '4(88).jpeg', '275', '183', 'itora torquent per conubia nostra'),
(522, 207, 0, 'item', '7(78).jpeg', '294', '172', 'itora torquent per conubia nostra'),
(523, 208, 0, 'item', '6(88).jpeg', '254', '198', 'ultricies in nibh et, interdum tincidunt sapien'),
(524, 208, 0, 'item', '8(84).jpeg', '300', '168', 'ultricies in nibh et, interdum tincidunt sapien'),
(525, 14, 0, 'feed', '5(89).jpeg', '259', '194', 't. Mauris vitae venenatis tortor. Mauris hendrerit odio si'),
(526, 14, 0, 'feed', '3(89).jpeg', '198', '254', 't. Mauris vitae venenatis tortor. Mauris hendrerit odio si'),
(527, 14, 0, 'feed', '8(85).jpeg', '275', '183', 't. Mauris vitae venenatis tortor. Mauris hendrerit odio si'),
(528, 15, 0, 'feed', '5(90).jpeg', '275', '183', ' per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, q'),
(529, 15, 0, 'feed', '7(79).jpeg', '275', '183', ' per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, q'),
(530, 16, 0, 'feed', '4(89).jpeg', '275', '183', ' Cras velit mi, ultricies in nibh et, interdum tincidunt sapien'),
(531, 16, 0, 'feed', '6(89).jpeg', '254', '198', ' Cras velit mi, ultricies in nibh et, interdum tincidunt sapien'),
(532, 17, 0, 'feed', '4(90).jpeg', '194', '259', 'nostra, per inceptos himenaeos'),
(533, 17, 0, 'feed', '8(86).jpeg', '195', '258', 'nostra, per inceptos himenaeos'),
(534, 18, 0, 'feed', '3(90).jpeg', '222', '227', 'n nibh et, interdum tincidunt sapien'),
(535, 18, 0, 'feed', '5(91).jpeg', '225', '225', 'n nibh et, interdum tincidunt sapien'),
(536, 18, 0, 'feed', '8(87).jpeg', '183', '275', 'n nibh et, interdum tincidunt sapien'),
(546, 209, 0, 'item', '21.png', '300', '388', 'Lorem ipsum dolor '),
(547, 210, 0, 'item', '22.png', '300', '388', 'Lorem ipsum'),
(548, 211, 0, 'item', '23.png', '300', '388', ''),
(549, 212, 0, 'item', '24.png', '300', '388', 'Lorem ipsum'),
(550, 213, 0, 'item', '25.png', '300', '388', 'Lorem ipsum dolor'),
(551, 214, 0, 'item', '26.png', '300', '388', 'Lorem ipsum'),
(552, 215, 0, 'item', '27.png', '300', '388', 'Lorem ipsum dolor '),
(553, 216, 0, 'item', '28.png', '300', '388', 'Lorem ipsum dolor '),
(554, 217, 0, 'item', '29.png', '300', '388', 'Lorem ipsum dolor'),
(555, 218, 0, 'item', '30.png', '300', '388', 'Lorem ipsum'),
(556, 19, 0, 'feed', '6(90).jpeg', '218', '231', 'Lorem ipsum dolor sit amet'),
(557, 19, 0, 'feed', '8(88).jpeg', '216', '216', 'Lorem ipsum dolor sit amet'),
(558, 20, 0, 'feed', '9(84).jpeg', '259', '194', 'Lorem ipsum dolor sit'),
(559, 20, 0, 'feed', '4(91).jpeg', '277', '182', 'Lorem ipsum dolor sit'),
(560, 21, 0, 'feed', '8(89).jpeg', '248', '164', 'Sed rhoncus condimentum lobortis.'),
(561, 21, 0, 'feed', '10(62).jpeg', '225', '225', 'Sed rhoncus condimentum lobortis.'),
(567, 1, 0, 'about', 'bg1.png', '600', '400', 'http://panacea-soft.com'),
(568, 1, 0, 'about', 'bg2.png', '600', '400', '#conceive #try++ #achieve'),
(569, 1, 0, 'about', 'bg3.png', '600', '400', 'Build The App. Change The World.'),
(580, 49, 0, 'sub_category', '105.jpeg', '315', '160', ''),
(582, 4, 0, 'city', 'city-sfo.jpg', '900', '600', 'San Francisco'),
(583, 2, 0, 'city', 'city-yangon.jpg', '900', '600', 'City Yangon'),
(585, 85, 0, 'item', 'wine2.png', '900', '600', 'Wine DEF'),
(586, 85, 0, 'item', 'wine3.png', '900', '600', 'Wine GHI'),
(587, 85, 0, 'item', 'wine1.png', '900', '600', 'Wine ABC'),
(600, 8, 0, 'city', 'demo_city.png', '900', '600', 'Lorem ipsum dolor sit amet'),
(601, 1, 0, 'city', 'Porto-Novo-Benin.jpg', '1024', '685', 'Porto-Novo est une ville portuaire et la capitale du B&eacute;nin, en Afrique de l\'Ouest. Elle est connue pour ses b&acirc;timents coloniaux comme la Grande Mosqu&eacute;e, de style br&eacute;silien, qui &eacute;tait jadis une &eacute;glise. Le mus&eacute;e ethnographique expose des instruments de musique, des costumes et des masques de c&eacute;r&eacute;monie. Le mus&eacute;e da Silva retrace l\'histoire du B&eacute;nin et rend hommage &agrave; la culture afro-br&eacute;silienne. Juste &agrave; l\'est, le mus&eacute;e Honm&eacute; fut le palais du roi Toffa au XIXe si&egrave;cle.'),
(602, 3, 0, 'city', 'xp.jpg', '1300', '866', 'Dakar est la capitale du S&eacute;n&eacute;gal, en Afrique occidentale. Cette ville portuaire sur l\'oc&eacute;an Atlantique se trouve sur la presqu\'&icirc;le du Cap-Vert. Son quartier traditionnel, la M&eacute;dina, accueille la Grande Mosqu&eacute;e, qui se distingue par son imposant minaret. Le mus&eacute;e Th&eacute;odore-Monot expose des objets culturels comme des v&ecirc;tements, des percussions, des sculptures et des outils. La vie nocturne anim&eacute;e de la ville trouve son inspiration dans la musique locale, le mbalax.');

-- --------------------------------------------------------

--
-- Table structure for table `cd_inquiries`
--

CREATE TABLE `cd_inquiries` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_inquiries`
--

INSERT INTO `cd_inquiries` (`id`, `item_id`, `city_id`, `name`, `email`, `message`, `status`, `added`, `updated`) VALUES
(1, 53, 1, 'han', 'han@gmail.com', 'i want to know more about this service.', 1, '2015-08-21 15:10:50', NULL),
(2, 61, 1, 'gray', 'gray@gmail.com', 'can I know working hour?', 1, '2015-09-02 09:39:21', NULL),
(3, 86, 2, 'jack', 'jack@gmail.com', 'may i know your address detail?', 1, '2015-09-08 18:33:11', NULL),
(4, 92, 2, 'jack', 'jack@gmail.com', 'may i know delivery charges?', 1, '2015-09-08 18:37:15', NULL),
(5, 92, 2, 'jack', 'jack@gmail.com', 'how about delivery service?', 1, '2015-09-08 18:47:34', NULL),
(6, 161, 3, 'jack', 'jack@gmail.com', 'can i know is it near airport?', 1, '2015-09-08 18:52:53', NULL),
(7, 92, 2, 'jack', 'jack@gmail.com', 'how about delivery?', 1, '2015-09-08 20:05:43', NULL),
(8, 121, 2, 'jack', 'jack@gmail.com', 'can i know address detail?', 1, '2015-09-08 20:13:19', NULL),
(9, 1, 1, 'Robert', 'robert@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis odio a diam ultricies consectetur id eget mi. In vel consequat odio. Curabitur venenatis nunc ', 1, '2016-02-18 12:29:24', NULL),
(10, 1, 1, 'David', 'david@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis odio a diam ultricies consectetur id eget mi. In vel consequat odio. Curabitur venenatis nunc ', 1, '2016-02-18 12:34:21', NULL),
(11, 5, 1, 'David', 'david@gmail.com', 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-16 12:10:59', NULL),
(12, 21, 1, 'David', 'david@gmail.com', 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-16 15:54:33', NULL),
(13, 41, 1, 'David', 'david@gmail.com', 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-16 18:06:28', NULL),
(14, 37, 1, 'Han', 'han@gmail.com', 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-16 18:11:50', NULL),
(15, 26, 1, 'han', 'han@gmail.com', 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-16 19:08:00', NULL),
(16, 63, 1, 'Han', 'han@gmail.com', 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-16 19:14:45', NULL),
(17, 48, 1, 'Han', 'han@gmail.com', 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-16 19:50:56', NULL),
(18, 49, 1, 'Han', 'han@gmail.com', 'Can I know your office hour on weekend?', 1, '2016-03-16 19:53:04', NULL),
(19, 39, 1, 'han', 'han@gmail.com', 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-17 18:23:36', NULL),
(20, 1, 1, 'test', 'test@gmail.com', 'Test 123', 1, '2016-04-15 19:57:33', NULL),
(21, 217, 1, 'HanHan', 'han@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dui nisi, malesuada ac feugiat vel, egestas rhoncus augue. In id nibh et diam scelerisque laoreet ac et dolor. Cras tincidunt turpis et tortor feugiat, ac fermentum justo posuere. Aliquam pharetra feugiat metus, sit amet posuere augue vulputate nec.', 1, '2017-10-14 14:36:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cd_items`
--

CREATE TABLE `cd_items` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `address` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `search_tag` text NOT NULL,
  `is_published` int(11) NOT NULL DEFAULT '0',
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_items`
--

INSERT INTO `cd_items` (`id`, `cat_id`, `sub_cat_id`, `city_id`, `name`, `description`, `address`, `phone`, `email`, `lat`, `lng`, `search_tag`, `is_published`, `added`, `updated`) VALUES
(1, 1, 1, 1, 'Car Insurance SÃ¡mi', '123Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis123.Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis123567.Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis123567.Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis123567.', 'No-1, Town Hall Road, Singapore', '959978519333', 'admin@gmail.com', 1.37, 103.883, 'automotive, insurance', 1, '2015-08-02 06:03:36', NULL),
(2, 1, 1, 1, 'Life InsuranceÃ¡', 'LoremÃ¡ ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '88881111', 'contact@gmail.com', 1.31637, 103.883, 'automotive, insurance', 1, '2015-08-07 12:23:09', NULL),
(3, 1, 1, 1, 'Medical Insurance  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.27629, 103.854, 'automotive, insurance', 1, '2015-08-07 18:10:00', NULL),
(4, 1, 1, 1, 'Home Insurance  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.32405, 103.93, 'automotive, insurance', 1, '2015-08-07 18:11:19', NULL),
(5, 1, 1, 1, 'Employee Insurance  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.34082, 103.847, 'automotive, insurance', 1, '2015-08-07 18:12:45', NULL),
(6, 1, 1, 1, 'Insurance 1  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.30006, 103.856, 'automotive, insurance', 1, '2015-08-07 18:15:09', NULL),
(7, 1, 1, 1, 'Insurance 2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.33948, 103.706, 'automotive, insurance', 1, '2015-08-07 18:16:14', NULL),
(8, 1, 1, 1, 'Insurance 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.30726, 103.79, 'automotive, insurance', 1, '2015-08-07 18:17:24', NULL),
(9, 1, 1, 1, 'Insurance 4  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.35059, 103.848, 'automotive, insurance', 1, '2015-08-07 18:18:37', NULL),
(10, 1, 1, 1, 'Insurance 5  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.34924, 103.749, 'automotive, insurance', 1, '2015-08-07 18:19:33', NULL),
(11, 1, 2, 1, 'Car Loans 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.38505, 103.744, 'automotive, car loans', 1, '2015-08-07 18:23:43', NULL),
(12, 1, 2, 1, 'Car Loans 2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.31493, 103.765, 'automotive, car loans', 1, '2015-08-07 18:24:40', NULL),
(13, 1, 2, 1, 'Car Loans 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.30245, 103.799, 'automotive, car loans', 1, '2015-08-07 18:25:44', NULL),
(14, 1, 2, 1, 'Car Loans 4  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.29282, 103.853, 'automotive, car loans', 1, '2015-08-07 18:26:41', NULL),
(15, 1, 2, 1, 'Car Loans 5  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.29833, 103.847, 'automotive, car loans', 1, '2015-08-07 18:27:35', NULL),
(16, 1, 3, 1, 'Gas Stations 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.35666, 103.853, 'automotive, gas station', 1, '2015-08-07 18:29:22', NULL),
(17, 1, 3, 1, 'Gas Stations 2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.33093, 103.955, 'automotive, gas station', 1, '2015-08-07 18:31:34', NULL),
(18, 1, 3, 1, 'Gas Stations 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', '', '12141414', 'contact@gmail.com', 1.33083, 103.761, '', 1, '2015-08-07 18:32:20', NULL),
(19, 1, 3, 1, 'Gas Stations 4  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.31969, 103.903, 'automotive, gas station', 1, '2015-08-07 18:33:36', NULL),
(20, 1, 3, 1, 'Gas Stations 5  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.35955, 103.752, 'automotive, gas station', 1, '2015-08-07 18:34:57', NULL),
(21, 1, 4, 1, '  Tire Dealers 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.34209, 103.733, 'automotive, tire', 1, '2015-08-07 18:36:08', NULL),
(22, 1, 4, 1, 'Tire Dealers 2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.33237, 103.742, 'automotive, tire', 1, '2015-08-07 18:38:40', NULL),
(23, 1, 4, 1, 'Tire Dealers 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.32107, 103.913, 'automotive, tire', 1, '2015-08-07 18:39:44', NULL),
(24, 1, 4, 1, 'Tire Dealers 4  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.42555, 103.762, 'automotive, tire', 1, '2015-08-07 18:40:50', NULL),
(25, 1, 4, 1, 'Tire Dealers 5  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.31154, 103.872, 'automotive, tire', 1, '2015-08-07 18:41:45', NULL),
(26, 1, 5, 1, ' Motorcycles 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.41761, 103.833, 'automotive, motoarcycles', 1, '2015-08-07 18:42:51', NULL),
(27, 1, 5, 1, 'Motorcycles 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.34455, 103.721, 'automotive, motoarcycles', 1, '2015-08-07 18:45:06', NULL),
(28, 1, 5, 1, 'Motorcycles 3 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.30752, 103.863, 'automotive, motoarcycles', 1, '2015-08-07 18:45:55', NULL),
(29, 1, 5, 1, 'Motorcycles 4 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.32038, 103.844, 'automotive, motoarcycles', 1, '2015-08-07 18:46:52', NULL),
(30, 1, 5, 1, 'Motorcycles 5 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.3126, 103.838, 'automotive, motoarcycles', 1, '2015-08-07 18:47:46', NULL),
(31, 2, 6, 1, 'Chiropractors  1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.31637, 103.883, 'Health, Medical, Chiropractors', 1, '2015-08-07 19:06:17', NULL),
(32, 2, 6, 1, 'Chiropractors  2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.37, 103.883, 'Health, Medical, Chiropractors', 1, '2015-08-07 19:09:48', NULL),
(33, 2, 6, 1, 'Chiropractors  3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.27629, 103.854, 'Health, Medical, Chiropractors', 1, '2015-08-07 19:10:48', NULL),
(34, 2, 6, 1, 'Chiropractors  4  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.32405, 103.93, 'Health, Medical, Chiropractors', 1, '2015-08-07 19:11:54', NULL),
(35, 2, 6, 1, 'Chiropractors  5  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.34082, 103.847, 'Health, Medical, Chiropractors', 1, '2015-08-07 19:13:10', NULL),
(36, 2, 7, 1, 'Dentists 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.30006, 103.856, 'Health, Medical,Dentists', 1, '2015-08-07 19:30:35', NULL),
(37, 2, 7, 1, 'Dentists 2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.33948, 103.706, 'Health, Medical,Dentists', 1, '2015-08-07 19:31:39', NULL),
(38, 2, 7, 1, 'Dentists 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.30726, 103.79, 'Health, Medical,Dentists', 1, '2015-08-07 19:33:01', NULL),
(39, 2, 7, 1, 'Dentists 4  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.35059, 103.848, 'Health, Medical,Dentists', 1, '2015-08-07 19:34:12', NULL),
(40, 2, 7, 1, 'Dentists 5  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.34924, 103.749, 'Health, Medical,Dentists', 1, '2015-08-07 19:35:30', NULL),
(41, 2, 8, 1, 'Clinic 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.38505, 103.744, 'Health, Medical,Clinic', 1, '2015-08-07 19:36:34', NULL),
(42, 2, 8, 1, 'Clinic 2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.31493, 103.765, 'Health, Medical,clinic', 1, '2015-08-07 19:38:45', NULL),
(43, 2, 8, 1, 'Clinic 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.30245, 103.799, 'Health, Medical,clinic', 1, '2015-08-07 19:40:40', NULL),
(44, 2, 8, 1, 'Clinic 4  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.29282, 103.853, 'Health, Medical,clinic', 1, '2015-08-07 19:41:32', NULL),
(45, 2, 8, 1, 'Clinic 5  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.29833, 103.847, 'Health, Medical,clinic', 1, '2015-08-07 19:42:41', NULL),
(46, 2, 9, 1, ' Pharmacy 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.35666, 103.853, 'Health, Medical,clinic', 1, '2015-08-07 19:43:55', NULL),
(47, 2, 9, 1, 'Pharmacy 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.33093, 103.955, 'Health, Medical,clinic', 1, '2015-08-07 19:46:30', NULL),
(48, 2, 9, 1, 'Pharmacy 3 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '22425252532', 'contact@gmail.com', 1.33083, 103.761, 'Health, Medical, Pharmacy', 1, '2015-08-07 19:47:36', NULL),
(49, 2, 9, 1, 'Pharmacy 4 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '22425252532', 'contact@gmail.com', 1.31969, 103.903, 'Health, Medical, Pharmacy', 1, '2015-08-07 19:48:51', NULL),
(50, 2, 9, 1, 'Pharmacy 5  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '22425252532', 'contact@gmail.com', 1.35955, 103.752, 'Health, Medical, Pharmacy', 1, '2015-08-07 19:49:59', NULL),
(51, 3, 10, 1, 'Barker 1  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.34209, 103.733, 'Shopping, Barker', 1, '2015-08-07 20:03:12', NULL),
(52, 3, 10, 1, 'Barker 2    ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '22425252532', 'contact@gmail.com', 1.33237, 103.742, 'Shopping, Barker', 1, '2015-08-07 20:04:50', NULL),
(53, 3, 10, 1, 'Barker 3    ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.\n', 'No-1, Town Hall Road, Singapore', '22425252532', 'contact@gmail.com', 1.32107, 103.913, 'Shopping, Barker', 1, '2015-08-07 20:06:03', NULL),
(54, 3, 10, 1, 'Barker 4  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.\n', 'No-1, Town Hall Road, Singapore', '22425252532', 'contact@gmail.com', 1.42555, 103.762, 'Shopping, Barker', 1, '2015-08-07 20:07:08', NULL),
(55, 3, 10, 1, 'Barker 5  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '22425252532', 'contact@gmail.com', 1.31154, 103.872, 'Shopping, Barker', 1, '2015-08-07 20:08:09', NULL),
(56, 3, 11, 1, ' Pet Store 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '22425252532', 'contact@gmail.com', 1.41761, 103.833, 'Shopping, Pet Store', 1, '2015-08-07 20:10:56', NULL),
(57, 3, 11, 1, 'Pet Store 2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.34455, 103.721, 'Shopping, Pet Store', 1, '2015-08-07 20:12:31', NULL),
(58, 3, 11, 1, 'Pet Store 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.30752, 103.863, 'Shopping, Pet Store', 1, '2015-08-07 20:13:33', NULL),
(59, 3, 11, 1, 'Pet Store 4  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.32038, 103.844, 'Shopping, Pet Store', 1, '2015-08-07 20:14:43', NULL),
(60, 3, 11, 1, 'Pet Store 5  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.3126, 103.838, 'Shopping, Pet Store', 1, '2015-08-07 20:15:44', NULL),
(61, 3, 12, 1, 'Shoes Store 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.30442, 103.832, 'Shopping, Shoes Store', 1, '2015-08-07 20:17:57', NULL),
(62, 3, 12, 1, 'Shoes Store 2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.28168, 103.839, 'Shopping, Shoes Store', 1, '2015-08-07 20:20:36', NULL),
(63, 3, 12, 1, 'Shoes Store 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.31809, 103.893, 'Shopping, Shoes Store', 1, '2015-08-07 20:21:55', NULL),
(64, 3, 12, 1, 'Shoes Store 4  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.29419, 103.807, 'Shopping, Shoes Store', 1, '2015-08-07 20:22:54', NULL),
(65, 3, 12, 1, 'Shoes Store 5    ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.28397, 103.852, 'Shopping, Shoes Store', 1, '2015-08-07 20:24:04', NULL),
(66, 3, 13, 1, ' Florist 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.28971, 103.817, 'Shopping, Florists', 1, '2015-08-07 20:25:22', NULL),
(67, 3, 13, 1, 'Florists 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Singapore', '31313', 'contact@gmail.com', 1.37303, 103.949, 'Shopping, Florists', 1, '2015-08-07 20:28:31', NULL),
(68, 3, 13, 1, 'Florists 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.34371, 103.953, 'Shopping, Florists', 1, '2015-08-07 20:29:39', NULL),
(69, 3, 13, 1, 'Florists 4 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.29994, 103.839, 'Shopping, Florists', 1, '2015-08-07 20:30:29', NULL),
(70, 3, 13, 1, 'Florists 5 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.28639, 103.827, 'Shopping, Florists', 1, '2015-08-07 20:31:27', NULL);
INSERT INTO `cd_items` (`id`, `cat_id`, `sub_cat_id`, `city_id`, `name`, `description`, `address`, `phone`, `email`, `lat`, `lng`, `search_tag`, `is_published`, `added`, `updated`) VALUES
(71, 4, 14, 1, '  Donuts 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.30442, 103.832, 'Food, Dining, Donuts', 1, '2015-08-07 21:12:43', NULL),
(72, 4, 14, 1, 'Donuts 2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.28168, 103.839, 'Food, Dining, Donuts', 1, '2015-08-07 21:13:57', NULL),
(73, 4, 14, 1, 'Donuts 3    ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.31809, 103.893, 'Food, Dining, Donuts', 1, '2015-08-07 21:14:51', NULL),
(74, 4, 14, 1, 'Donuts 4    ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.29419, 103.807, 'Food, Dining, Donuts', 1, '2015-08-07 21:15:47', NULL),
(75, 4, 14, 1, 'Donuts 5    ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.28397, 103.852, 'Food, Dining, Donuts', 1, '2015-08-07 21:17:09', NULL),
(76, 4, 15, 1, 'Pizza 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '22425252532', 'contact@gmail.com', 1.28971, 103.817, 'Food, Dining, Pizza', 1, '2015-08-07 21:18:23', NULL),
(77, 4, 15, 1, 'Pizza 2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.37303, 103.949, 'Food, Dining, Pizza', 1, '2015-08-07 21:20:25', NULL),
(78, 4, 15, 1, 'Pizza 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.34371, 103.953, 'Food, Dining, Pizza', 1, '2015-08-07 21:21:17', NULL),
(79, 4, 15, 1, 'Pizza 4  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.29994, 103.839, 'Food, Dining, Pizza', 1, '2015-08-07 21:22:12', NULL),
(80, 4, 15, 1, 'Pizza 5    ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.28639, 103.827, 'Food, Dining, Pizza', 1, '2015-08-07 21:23:04', NULL),
(81, 4, 16, 1, 'Wine 1 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '22425252532', 'contact@gmail.com', 0, 0, 'Food, Dining, Wine', 1, '2015-08-07 21:23:59', NULL),
(82, 4, 16, 1, 'Wine 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.27696, 103.846, 'Food, Dining, Wine', 1, '2015-08-07 21:26:00', NULL),
(83, 4, 16, 1, 'Wine 3   ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.32749, 103.947, 'Food, Dining, Wine', 1, '2015-08-07 21:26:47', NULL),
(84, 4, 16, 1, 'Wine 4 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'contact@gmail.com', 1.35372, 103.945, 'Food, Dining, Wine', 1, '2015-08-07 21:27:42', NULL),
(85, 4, 16, 1, 'Wine 5  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '12141414', 'contact@gmail.com', 1.33186, 103.848, 'Food, Dining, Wine', 1, '2015-08-07 21:28:34', NULL),
(86, 5, 17, 2, 'Hotel 1 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, River Road, Myanmar', '24442424', 'contact@gmail.com', 16.9046, 96.0983, 'travel, hotel', 1, '2015-08-11 13:54:59', NULL),
(87, 5, 17, 2, 'Hotel 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, River Road, Myanmar', '232424', 'contact@gmail.com', 16.7752, 96.1598, 'travel, hotels', 1, '2015-08-11 13:59:26', NULL),
(88, 5, 17, 2, 'Hotel 3 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, River Road, Myanmar', '212323', 'contact@gmail.com', 16.7934, 96.1417, 'travel, hotels', 1, '2015-08-11 14:00:33', NULL),
(89, 5, 18, 2, 'Motels 1 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, River Road, Myanmar', '1231313', 'contact@gmail.com', 16.8105, 96.1628, 'travel, hotels', 1, '2015-08-11 14:02:21', NULL),
(90, 5, 18, 2, 'Motels 2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, River Road, Myanmar', '12141414', 'contact@gmail.com', 16.8212, 96.17, 'travel, hotels', 1, '2015-08-11 14:03:30', NULL),
(91, 5, 18, 2, 'Motels 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, River Road, Myanmar', '31313', 'contact@gmail.com', 16.8436, 96.1689, 'travel, hotels', 1, '2015-08-11 14:04:27', NULL),
(92, 6, 19, 2, 'Baker 1 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, River Road, Myanmar', '42434234', 'contact@gmail.com', 16.8487, 96.1949, 'Shopping, Barker', 1, '2015-08-11 14:11:08', NULL),
(93, 6, 19, 2, 'Baker 2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, River Road, Myanmar', '234234', 'contact@gmail.com', 16.8299, 96.1794, 'Shopping, Barker', 1, '2015-08-11 14:13:47', NULL),
(94, 6, 19, 2, 'Baker 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, River Road, Myanmar', '12332', 'contact@gmail.com', 16.8211, 96.1877, 'Shopping, Barker', 1, '2015-08-11 14:14:44', NULL),
(95, 7, 20, 2, 'Shop 1(Gaming)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '1211414', 'contact@gmail.com', 16.7779, 96.1512, 'computer, gaming', 1, '2015-08-16 12:41:51', NULL),
(96, 7, 20, 2, 'Shop 2(Gaming)  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '1414434', 'contact@gmail.com', 16.7817, 96.1462, 'computer, gaming', 1, '2015-08-16 12:43:05', NULL),
(97, 7, 20, 2, 'Shop 3(Gaming)  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '124776776', 'contact@gmail.com', 16.8064, 96.1342, 'computer, gaming', 1, '2015-08-16 12:44:07', NULL),
(98, 7, 20, 2, 'Shop 4(Gaming)  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '747474767', 'contact@gmail.com', 16.8147, 96.1575, 'computer, gaming', 1, '2015-08-16 12:45:22', NULL),
(99, 7, 20, 2, 'Shop 5(Gaming)  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '35737462', 'contact@gmail.com', 16.8245, 96.146, 'computer, gaming', 1, '2015-08-16 12:46:24', NULL),
(100, 5, 17, 2, ' Hotel 4 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '2734294', 'contact@gmail.com', 16.7779, 96.1512, 'travel, hotel', 1, '2015-08-16 12:47:50', NULL),
(101, 5, 17, 2, 'Hotel 5  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, River Road, Myanmar', '3897382', 'contact@gmail.com', 16.7817, 96.1462, 'travel, hotel', 1, '2015-08-16 12:49:26', NULL),
(102, 5, 18, 2, 'Motel 4 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '23898904', 'contact@gmail.com', 16.8064, 96.1342, 'travel, motel', 1, '2015-08-16 12:50:23', NULL),
(103, 5, 18, 2, 'Motel 5   ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '1231313', 'contact@gmail.com', 16.8147, 96.1575, 'travel, motel', 1, '2015-08-16 12:52:23', NULL),
(104, 6, 19, 2, 'Baker 4 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '123123', 'contact@gmail.com', 16.8245, 96.146, 'shopping, baker', 1, '2015-08-16 12:54:01', NULL),
(105, 6, 19, 2, 'Baker 5 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, River Road, Myanmar', '21312332', 'contact@gmail.com', 16.8618, 96.1479, 'shopping, baker', 1, '2015-08-16 12:55:10', NULL),
(106, 7, 21, 2, ' Shop 1(NoteBook)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, River Road, Myanmar', '2131313', 'contact@gmail.com', 16.8784, 96.1553, 'computer, notebook', 1, '2015-08-16 12:57:34', NULL),
(107, 7, 21, 2, 'Shop 2(NoteBook)  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '1212313', 'contact@gmail.com', 16.9086, 96.1584, 'computer, notebook', 1, '2015-08-16 13:00:56', NULL),
(108, 7, 21, 2, 'Shop 3(NoteBook)  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '123813', 'contact@gmail.com', 16.9328, 96.0938, 'computer, notebook', 1, '2015-08-16 13:02:06', NULL),
(109, 7, 21, 2, 'Shop 4(NoteBook)  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '1233123', 'contact@gmail.com', 16.9594, 96.0876, 'computer, notebook', 1, '2015-08-16 13:03:27', NULL),
(110, 7, 21, 2, 'Shop 5(NoteBook)  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, River Road, Myanmar', '123314', 'contact@gmail.com', 16.9821, 96.1242, 'computer, notebook', 1, '2015-08-16 13:04:33', NULL),
(111, 7, 22, 2, 'Shop A', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '234234234', 'contact@gmail.com', 16.7779, 96.1512, 'computer, software', 1, '2015-08-16 13:08:04', NULL),
(112, 7, 22, 2, 'Shop B ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '532525253', 'contact@gmail.com', 16.7817, 96.1462, 'computer, software', 1, '2015-08-16 13:09:12', NULL),
(113, 7, 22, 2, 'Shop C ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '141414', 'contact@gmail.com', 16.8064, 96.1342, 'computer, software', 1, '2015-08-16 13:10:16', NULL),
(114, 7, 22, 2, 'Shop D ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '123123', 'contact@gmail.com', 16.8147, 96.1575, 'computer, software', 1, '2015-08-16 13:11:25', NULL),
(115, 7, 22, 2, 'Shop E ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '2342342', 'contact@gmail.com', 16.8245, 96.146, 'computer, software', 1, '2015-08-16 13:15:58', NULL),
(116, 5, 24, 2, ' Agency 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '2342424', 'contact@gmail.com', 16.8618, 96.1479, 'travel, ticket', 1, '2015-08-16 13:26:53', NULL),
(117, 5, 24, 2, 'Agency 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '1231313', 'contact@gmail.com', 16.8784, 96.1553, 'travel, ticket', 1, '2015-08-16 13:28:03', NULL),
(118, 5, 24, 2, 'Agency 3 ', 'orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '2329489', 'contact@gmail.com', 16.9086, 96.1584, 'travel, ticket', 1, '2015-08-16 13:40:01', NULL),
(119, 5, 24, 2, 'Agency 4 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '83183098', 'contact@gmail.com', 16.9328, 96.0938, 'travel, ticket', 1, '2015-08-16 13:41:34', NULL),
(120, 5, 24, 2, 'Agency 5 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '12793890', 'contact@gmail.com', 16.9594, 96.0876, 'travel, ticket', 1, '2015-08-16 13:42:36', NULL),
(121, 6, 25, 2, 'Pet Shop 1 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '21389813', 'contact@gmail.com', 16.7779, 96.1512, 'shopping, pet', 1, '2015-08-16 13:50:55', NULL),
(122, 6, 25, 2, 'Pet Shop 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.\n', 'No-1, School Road, Myanmar', '2398932', 'contact@gmail.com', 16.7817, 96.1462, 'shopping, pet', 1, '2015-08-16 13:52:04', NULL),
(123, 6, 25, 2, 'Pet Shop 3 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '248980234', 'contact@gmail.com', 16.8064, 96.1342, 'shopping, pet', 1, '2015-08-16 13:53:01', NULL),
(124, 6, 25, 2, 'Pet Shop 4 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '234892', 'contact@gmail.com', 16.8147, 96.1575, 'shopping, pet', 1, '2015-08-16 13:54:07', NULL),
(125, 6, 25, 2, 'Pet Shop 5  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, River Road, Myanmar', '323424', 'contact@gmail.com', 16.8245, 96.146, 'shopping, pet', 1, '2015-08-16 13:55:11', NULL),
(126, 6, 26, 2, 'Pharmacy 1 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '2423434', 'contact@gmail.com', 16.8618, 96.1479, 'shopping, pharmacy', 1, '2015-08-16 13:59:52', NULL),
(127, 6, 26, 2, 'Pharmacy 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '131313', 'contact@gmail.com', 16.8784, 96.1553, 'shopping, pharmacy', 1, '2015-08-16 14:00:58', NULL),
(128, 6, 26, 2, 'Pharmacy 3 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '24234243', 'contact@gmail.com', 16.9086, 96.1584, 'shopping, pharmacy', 1, '2015-08-16 14:01:54', NULL),
(129, 6, 26, 2, 'Pharmacy 4 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '232234243', 'contact@gmail.com', 16.9328, 96.0938, 'shopping, pharmacy', 1, '2015-08-16 14:02:55', NULL),
(130, 6, 26, 2, 'Pharmacy 5 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '242424', 'contact@gmail.com', 16.9594, 96.0876, 'shopping, pharmacy', 1, '2015-08-16 14:03:55', NULL),
(131, 8, 27, 2, 'Car Rental 1 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '31313131', 'contact@gmail.com', 16.8584, 96.1333, 'automotive, car rental', 1, '2015-08-16 14:12:13', NULL),
(132, 8, 27, 2, 'Car Rental 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '13131313', 'contact@gmail.com', 16.851, 96.1096, 'automotive, car rental', 1, '2015-08-16 14:13:30', NULL),
(133, 8, 27, 2, 'Car Rental 3 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '2241313', 'contact@gmail.com', 16.8401, 96.1194, 'automotive, car rental', 1, '2015-08-16 14:15:18', NULL),
(134, 8, 27, 2, 'Car Rental 4 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '2899233', 'contact@gmail.com', 16.8038, 96.1403, 'automotive, car rental', 1, '2015-08-16 14:16:47', NULL),
(135, 8, 27, 2, 'Car Rental 5 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '13131313', 'contact@gmail.com', 16.7689, 96.1737, 'automotive, car rental', 1, '2015-08-16 14:18:02', NULL),
(136, 8, 28, 2, 'Motorcycle Rental 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '238092842', 'contact@gmail.com', 16.8029, 96.1833, 'automotive, motorcycle', 1, '2015-08-16 18:20:59', NULL),
(137, 8, 28, 2, 'Motorcycle Rental 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '23489089024', 'contact@gmail.com', 16.8648, 96.1408, 'automotive, motorcycle', 1, '2015-08-16 18:22:10', NULL),
(138, 8, 28, 2, 'Motorcycle Rental 3 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '3284092', 'contact@gmail.com', 16.8569, 96.1545, 'automotive, motorcycle', 1, '2015-08-16 18:23:08', NULL),
(139, 8, 28, 2, 'Motorcycle Rental 4 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '234902', 'contact@gmail.com', 16.8539, 96.1468, 'automotive, motorcycle', 1, '2015-08-16 18:24:05', NULL),
(140, 8, 28, 2, 'Motorcycle Rental 5 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, School Road, Myanmar', '23424243', 'contact@gmail.com', 16.8519, 96.1754, 'automotive, motorcycle', 1, '2015-08-16 18:25:00', NULL),
(141, 9, 29, 3, 'Golf Club 1 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '28923490', 'contact@gmail.com', 35.7167, 139.719, 'sport, golf', 1, '2015-08-17 15:49:26', NULL),
(142, 9, 29, 3, 'Golf Club 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '2389024', 'contact@gmail.com', 35.7154, 139.719, 'sport, golf', 1, '2015-08-17 15:51:48', NULL);
INSERT INTO `cd_items` (`id`, `cat_id`, `sub_cat_id`, `city_id`, `name`, `description`, `address`, `phone`, `email`, `lat`, `lng`, `search_tag`, `is_published`, `added`, `updated`) VALUES
(143, 9, 29, 3, 'Golf Club 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '1209133', 'contact@gmail.com', 35.7134, 139.722, 'sport, golf', 1, '2015-08-17 15:52:44', NULL),
(144, 9, 29, 3, 'Golf Club 4   ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '20939123', 'contact@gmail.com', 35.7121, 35.7121, 'sport, golf', 1, '2015-08-17 15:53:35', NULL),
(145, 9, 29, 3, 'Golf Club 5 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.\n', 'No-1, City Road, Tokyo, Japan', '1129013', 'contact@gmail.com', 35.7077, 139.714, 'sport, golf', 1, '2015-08-17 15:54:37', NULL),
(146, 9, 30, 3, 'Bowling Club A ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '1231313', 'contact@gmail.com', 35.7022, 139.715, 'sport, bowling', 1, '2015-08-17 15:58:15', NULL),
(147, 9, 30, 3, 'Bowling Club B  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '2092044', 'contact@gmail.com', 35.6993, 139.716, 'sport, bowling', 1, '2015-08-17 16:00:48', NULL),
(148, 9, 30, 3, 'Bowling Club C   ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '328904890', 'contact@gmail.com', 35.6997, 139.723, 'sport, bowling', 1, '2015-08-17 16:01:59', NULL),
(149, 9, 30, 3, 'Bowling Club D      ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '21331313', 'contact@gmail.com', 35.6971, 139.722, 'sport, bowling', 1, '2015-08-17 16:02:53', NULL),
(150, 9, 30, 3, 'Bowling Club E       ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '23131313', 'contact@gmail.com', 35.7041, 139.733, 'sport, bowling', 1, '2015-08-17 16:03:43', NULL),
(151, 9, 31, 3, 'Futsal Court Z ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '3103901313', 'contact@gmail.com', 35.6996, 139.742, 'sport, futsal', 1, '2015-08-17 16:06:46', NULL),
(152, 9, 31, 3, 'Futsal Court X  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '2390193', 'contact@gmail.com', 35.6912, 139.734, 'sport, futsal', 1, '2015-08-17 16:09:20', NULL),
(153, 9, 31, 3, 'Futsal Court C   ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '1290319013', 'contact@gmail.com', 35.6862, 139.73, 'sport, futsal', 1, '2015-08-17 16:10:15', NULL),
(154, 9, 31, 3, 'Futsal Court V    ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '191301', 'contact@gmail.com', 35.6881, 139.719, 'sport, futsal', 1, '2015-08-17 16:11:24', NULL),
(155, 9, 31, 3, 'Futsal Court B     ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '31313131313', 'contact@gmail.com', 35.6867, 139.719, 'sport, futsal', 1, '2015-08-17 16:12:21', NULL),
(156, 9, 32, 3, 'Swimming Club 1 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '1213313', 'contact@gmail.com', 35.6833, 139.719, 'sport, swimming', 1, '2015-08-17 18:28:07', NULL),
(157, 9, 32, 3, 'Swimming Club 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '13131313', 'contact@gmail.com', 35.6817, 139.719, 'sport, swimming', 1, '2015-08-17 18:30:43', NULL),
(158, 9, 32, 3, 'Swimming Club 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '024902940', 'contact@gmail.com', 35.6814, 139.716, 'sport, swimming', 1, '2015-08-17 18:31:41', NULL),
(159, 9, 32, 3, 'Swimming Club 4  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '424242424', 'contact@gmail.com', 35.6854, 139.723, 'sport, swimming', 1, '2015-08-17 18:32:46', NULL),
(160, 9, 32, 3, 'Swimming Club 5   ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '24242424', 'contact@gmail.com', 35.6837, 139.723, 'sport, swimming', 1, '2015-08-17 18:33:45', NULL),
(161, 10, 33, 3, 'Hotel A ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '12323133', 'contact@gmail.com', 35.6885, 139.734, 'travel, hotel', 1, '2015-08-17 18:38:12', NULL),
(162, 10, 33, 3, 'Hotel B ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '13131313', 'contact@gmail.com', 35.6869, 139.738, 'travel, hotel', 1, '2015-08-17 18:39:09', NULL),
(163, 9, 32, 3, 'Hotel C ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis', 'No-1, City Road, Tokyo, Japan', '042049024', 'contact@gmail.com', 35.685, 139.737, 'travel, hotel', 1, '2015-08-17 18:40:01', NULL),
(164, 10, 33, 3, 'Hotel D  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '4242424', 'contact@gmail.com', 35.6822, 139.738, 'travel, hotel', 1, '2015-08-17 18:40:54', NULL),
(165, 10, 33, 3, 'Hotel E ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '123131313', 'contact@gmail.com', 35.6855, 139.741, 'travel, hotel', 1, '2015-08-17 18:41:43', NULL),
(166, 10, 34, 3, 'Guest House 1 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '131321313', 'contact@gmail.com', 35.6765, 139.744, 'travel, guest house', 1, '2015-08-17 18:43:42', NULL),
(167, 10, 34, 3, 'Guest House 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '424313123123', 'contact@gmail.com', 35.6749, 139.74, 'travel, guest house', 1, '2015-08-17 18:44:42', NULL),
(168, 10, 34, 3, 'Guest House 3 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '2234234234', 'contact@gmail.com', 35.6726, 139.75, 'travel, guest house', 1, '2015-08-17 18:45:30', NULL),
(169, 10, 35, 3, 'Travel Agency Q ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '123312123', 'contact@gmail.com', 35.6729, 139.741, 'travel, agency', 1, '2015-08-17 18:47:26', NULL),
(170, 10, 35, 3, 'Travel Agency W  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '12313312332', 'contact@gmail.com', 35.6709, 139.747, 'travel, agency', 1, '2015-08-17 18:48:17', NULL),
(171, 10, 35, 3, 'Travel Agency E   ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '242242424', 'contact@gmail.com', 35.7167, 139.719, 'travel, agency', 1, '2015-08-17 18:49:11', NULL),
(172, 10, 35, 3, 'Travel Agency R    ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '1312313123', 'contact@gmail.com', 35.7154, 139.719, 'travel, agency', 1, '2015-08-17 18:50:02', NULL),
(173, 11, 36, 3, 'Pizza A ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '1231313321', 'contact@gmail.com', 35.7134, 139.722, 'food, pizza', 1, '2015-08-17 18:58:04', NULL),
(174, 11, 36, 3, 'PIzza S  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '211313132', 'contact@gmail.com', 35.7121, 139.718, 'food, pizza', 1, '2015-08-17 19:01:48', NULL),
(175, 11, 36, 3, 'PIzza D ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '212311312', 'contact@gmail.com', 35.7077, 139.714, 'food, pizza', 1, '2015-08-17 19:02:57', NULL),
(176, 11, 36, 3, 'Pizza F ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '213123123', 'contact@gmail.com', 35.7022, 139.715, 'food, pizza', 1, '2015-08-17 19:03:54', NULL),
(177, 11, 37, 3, 'Donuts M ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '12331232', 'contact@gmail.com', 35.6993, 139.716, 'food, donut', 1, '2015-08-17 19:06:14', NULL),
(178, 11, 37, 3, 'Donuts N  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '1212123', 'contact@gmail.com', 35.6997, 139.723, 'food, donut', 1, '2015-08-17 19:08:05', NULL),
(179, 11, 37, 3, 'Donuts B ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '3242234', 'contact@gmail.com', 35.6971, 139.722, 'food, donut', 1, '2015-08-17 19:08:59', NULL),
(180, 11, 37, 3, 'Donuts V  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '123131312', 'contact@gmail.com', 35.7041, 139.733, 'food, donut', 1, '2015-08-17 19:09:52', NULL),
(181, 11, 38, 3, 'Wine Z ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '242424242', 'contact@gmail.com', 35.6996, 139.742, 'food, wine', 1, '2015-08-17 19:11:40', NULL),
(182, 11, 38, 3, 'Wine X ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '3809130918390', 'contact@gmail.com', 35.6912, 139.734, 'food, wine', 1, '2015-08-17 19:12:34', NULL),
(183, 11, 38, 3, 'Wine C ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '13313132', 'contact@gmail.com', 35.6862, 139.73, 'food, wine', 1, '2015-08-17 19:13:18', NULL),
(184, 11, 38, 3, 'Wine V ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '2424242', 'contact@gmail.com', 35.6881, 139.719, 'food, wine', 1, '2015-08-17 19:14:00', NULL),
(185, 12, 39, 3, 'Florists A ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '2323123', 'contact@gmail.com', 35.6867, 139.719, 'shopping, florists', 1, '2015-08-17 19:17:37', NULL),
(186, 12, 39, 3, 'Florists B  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '1233123', 'contact@gmail.com', 35.6833, 139.719, 'shopping, florists', 1, '2015-08-17 19:18:35', NULL),
(187, 12, 39, 3, 'Florists C   ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '2232312323', 'contact@gmail.com', 35.6817, 139.719, 'shopping, florists', 1, '2015-08-17 19:19:32', NULL),
(188, 12, 40, 3, 'Shoes 1 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '1212123', 'contact@gmail.com', 35.6814, 139.716, 'shopping, shoes', 1, '2015-08-17 19:21:50', NULL),
(189, 12, 40, 3, 'Shoes 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '213213123', 'contact@gmail.com', 35.6854, 139.723, 'shopping, shoes', 1, '2015-08-17 19:22:43', NULL),
(190, 12, 40, 3, 'Shoes 3 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, City Road, Tokyo, Japan', '2331332', 'contact@gmail.com', 35.6837, 139.723, 'shopping, shoes', 1, '2015-08-17 19:23:30', NULL),
(191, 13, 43, 4, ' Swimming Pool 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Royal Road, San Francisco, UAS', '1231313', 'contact@gmail.com', 37.7854, -122.431, 'swimming pool, sport', 1, '2015-09-08 13:33:07', NULL),
(192, 13, 43, 4, 'Swimming Pool 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.\n', 'No-1, Royal Road, San Francisco, UAS', '1231313', 'contact@gmail.com', 37.7851, -122.419, 'swimming pool, sport', 1, '2015-09-08 13:34:06', NULL),
(193, 13, 43, 4, 'Swimming Pool 3 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Royal Road, San Francisco, UAS', '4398239408243', 'contact@gmail.com', 37.7849, -122.408, 'swimming pool, sport', 1, '2015-09-08 13:35:35', NULL),
(194, 13, 42, 4, 'Bowling Club 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Royal Road, San Francisco, UAS', '13124114', 'contact@gmail.com', 37.7851, -122.417, 'bowling, sport', 1, '2015-09-08 13:36:43', NULL),
(195, 13, 42, 4, 'Bowling Club 2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.\n', 'No-1, Royal Road, San Francisco, UAS', '79798898', 'contact@gmail.com', 37.7798, -122.413, 'bowling, sport', 1, '2015-09-08 13:39:00', NULL),
(196, 13, 41, 4, 'Bowling Club 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Royal Road, San Francisco, UAS', '298292', 'contact@gmail.com', 37.7434, -122.413, 'bowling, sport', 1, '2015-09-08 13:42:12', NULL),
(197, 13, 41, 4, '  Golf Club 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Royal Road, San Francisco, UAS', '32423234', 'contact@gmail.com', 37.7377, -122.42, 'golf, sport', 1, '2015-09-08 13:48:48', NULL),
(198, 13, 41, 4, 'Golf Club 2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Royal Road, San Francisco, UAS', '2211231', 'contact@gmail.com', 37.7417, -122.441, 'golf, sport', 1, '2015-09-08 13:50:01', NULL),
(199, 13, 41, 4, 'Golf Club 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Royal Road, San Francisco, UAS', '3313123', 'contact@gmail.com', 37.7411, -122.43, 'golf, sport', 1, '2015-09-08 13:51:15', NULL),
(200, 15, 46, 4, ' Wine 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Royal Road, San Francisco, UAS', '6445646', 'contact@gmail.com', 37.735, -122.432, 'food, dinning, wine', 1, '2015-09-08 13:56:09', NULL),
(201, 15, 46, 4, 'Wine 2 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Royal Road, San Francisco, UAS', '231313', 'contact@gmail.com', 37.7152, -122.417, 'food, dinning, wine', 1, '2015-09-08 13:57:50', NULL),
(202, 15, 46, 4, 'Wine 3 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Royal Road, San Francisco, UAS', '3123123', 'contact@gmail.com', 37.7137, -122.427, 'food, dinning, wine', 1, '2015-09-08 13:58:45', NULL),
(203, 15, 45, 4, '  Donuts 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Royal Road, San Francisco, UAS', '3313123', 'contact@gmail.com', 37.7139, -122.448, 'food, dinning, donut', 1, '2015-09-08 14:00:04', NULL),
(204, 15, 45, 4, 'Donuts 2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Royal Road, San Francisco, UAS', '234924', 'contact@gmail.com', 37.7227, -122.411, 'food, dinning, donut', 1, '2015-09-08 14:01:05', NULL),
(205, 15, 45, 4, 'Donuts 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Royal Road, San Francisco, UAS', '242424243', 'contact@gmail.com', 37.7087, -122.411, 'food, dinning, donut', 1, '2015-09-08 14:02:08', NULL),
(206, 15, 44, 4, '  Pizza Z', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Royal Road, San Francisco, UAS', '2312313', 'contact@gmail.com', 37.7101, -122.445, 'food, dinning, pizza', 1, '2015-09-08 14:09:12', NULL),
(207, 15, 44, 4, 'Pizza X  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Royal Road, San Francisco, UAS', '2439042390', 'contact@gmail.com', 37.7076, -122.438, 'food, dinning, pizza', 1, '2015-09-08 14:10:25', NULL),
(208, 15, 44, 4, 'Pizza C  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Royal Road, San Francisco, UAS', '24243', 'contact@gmail.com', 37.6953, -122.452, 'food, dinning, pizza', 1, '2015-09-08 14:11:36', NULL),
(209, 1, 1, 1, 'Student Insurance 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '13131313', 'admin@yahoo.com', 1.3703, 103.883, 'Student Insurance', 1, '2016-02-09 19:03:51', NULL),
(210, 1, 1, 1, 'Student Insurance 2  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '13131', 'admin@yahoo.com', 1.3736, 103.882, 'Student Insurance', 1, '2016-02-09 19:15:26', NULL),
(211, 1, 1, 1, 'Student Insurance 3  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '13131313', 'admin@yahoo.com', 1.37223, 103.888, 'Student Insurance', 1, '2016-02-09 19:16:45', NULL),
(212, 1, 1, 1, 'Student Insurance 4  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '13131313', 'admin@yahoo.com', 1.37176, 103.875, 'Student Insurance', 1, '2016-02-09 19:17:32', NULL),
(213, 1, 1, 1, 'Student Insurance 5  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '13131313', 'admin@yahoo.com', 1.36674, 103.88, 'Student Insurance', 1, '2016-02-09 19:18:25', NULL);
INSERT INTO `cd_items` (`id`, `cat_id`, `sub_cat_id`, `city_id`, `name`, `description`, `address`, `phone`, `email`, `lat`, `lng`, `search_tag`, `is_published`, `added`, `updated`) VALUES
(214, 1, 1, 1, 'Student Insurance 6  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'Lorem ipsum', '13131313', 'admin@yahoo.com', 1.36532, 103.877, 'Student Insurance', 1, '2016-02-09 19:19:13', NULL),
(215, 1, 1, 1, 'Student Insurance 7  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '31313', 'admin@yahoo.com', 1.36532, 103.878, 'Student Insurance', 1, '2016-02-09 19:24:30', NULL),
(216, 1, 1, 1, 'Student Insurance 8  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '13131313', 'admin@yahoo.com', 1.36532, 103.875, 'Student Insurance', 1, '2016-02-09 19:25:11', NULL),
(217, 1, 1, 1, 'Student Insurance 9  ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis.', 'No-1, Town Hall Road, Singapore', '13131313', 'admin@yahoo.com', 1.36472, 103.882, 'Student Insurance', 1, '2016-02-09 19:26:00', NULL),
(218, 1, 1, 1, 'Student Insurance 10', 'Hello Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae venenatis tortor. Mauris hendrerit odio sit amet facilisis convallis. Vivamus facilisis dapibus metus, non varius nisl hendrerit at. Praesent nec orci leo. Cras velit mi, ultricies in nibh et, interdum tincidunt sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur venenatis commodo pellentesque. Aliquam elementum tempus diam, quis malesuada enim fringilla sed. Sed rhoncus condimentum lobortis asdfg.', 'No-1, Town Hall Road, Singapore', '13131313', 'admin@yahoo.com', 1.36378, 103.883, 'Student Insurance', 1, '2016-02-09 19:26:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cd_likes`
--

CREATE TABLE `cd_likes` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `appuser_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_appuser` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_likes`
--

INSERT INTO `cd_likes` (`id`, `item_id`, `appuser_id`, `city_id`, `added`, `is_appuser`) VALUES
(4, 86, 1, 2, '2015-09-02 09:36:23', 1),
(5, 61, 1, 1, '2015-09-02 09:40:15', 1),
(6, 92, 1, 2, '2015-09-08 18:38:11', 1),
(8, 161, 1, 3, '2015-09-08 18:53:36', 1),
(9, 104, 1, 2, '2015-09-08 20:06:43', 1),
(10, 121, 1, 2, '2015-09-08 20:12:42', 1),
(11, 72, 8, 1, '2015-09-29 05:57:41', 1),
(12, 35, 8, 1, '2015-09-29 07:02:08', 1),
(31, 3, 1, 1, '2016-02-16 09:03:27', 1),
(56, 1, 8, 1, '2016-02-16 13:32:22', 1),
(66, 4, 1, 1, '2016-02-18 15:09:14', 1),
(67, 5, 1, 1, '2016-02-18 15:12:07', 1),
(68, 6, 1, 1, '2016-02-18 15:17:57', 1),
(69, 7, 1, 1, '2016-02-18 15:27:56', 1),
(70, 8, 1, 1, '2016-02-18 16:51:30', 1),
(71, 41, 1, 1, '2016-03-16 17:57:44', 1),
(73, 39, 1, 1, '2016-03-16 18:00:54', 1),
(74, 14, 1, 1, '2016-03-16 18:02:07', 1),
(75, 38, 1, 1, '2016-03-16 18:03:40', 1),
(76, 42, 1, 1, '2016-03-16 18:08:41', 1),
(77, 44, 1, 1, '2016-03-16 18:33:04', 1),
(78, 47, 1, 1, '2016-03-16 18:47:15', 1),
(79, 62, 1, 1, '2016-03-16 18:55:51', 1),
(80, 26, 1, 1, '2016-03-16 19:08:35', 1),
(81, 27, 1, 1, '2016-03-16 19:11:46', 1),
(82, 63, 1, 1, '2016-03-16 19:15:16', 1),
(83, 56, 1, 1, '2016-03-16 19:16:21', 1),
(84, 48, 1, 1, '2016-03-16 19:54:17', 1),
(85, 40, 1, 1, '2016-03-17 18:24:51', 1),
(86, 59, 1, 1, '2016-03-18 18:18:56', 1),
(87, 148, 1, 3, '2016-03-18 18:20:27', 1),
(88, 166, 1, 3, '2016-03-20 17:42:52', 1),
(89, 216, 1, 1, '2016-03-27 16:22:33', 1),
(90, 218, 1, 1, '2016-03-27 16:24:08', 1),
(91, 2, 1, 1, '2016-03-27 16:26:37', 1),
(92, 88, 1, 2, '2016-03-27 16:27:12', 1),
(93, 196, 1, 4, '2016-03-27 16:28:58', 1),
(94, 167, 1, 3, '2016-03-28 05:52:34', 1),
(95, 141, 1, 3, '2016-03-28 05:54:04', 1),
(96, 203, 1, 4, '2016-03-28 05:55:02', 1),
(97, 142, 1, 3, '2016-03-28 05:56:30', 1),
(98, 89, 1, 2, '2016-03-28 07:08:51', 1),
(99, 169, 1, 3, '2016-03-28 16:42:10', 1),
(100, 43, 1, 1, '2016-04-07 19:23:29', 1),
(101, 93, 1, 2, '2016-11-08 13:23:32', 1),
(102, 31, 1, 1, '2016-11-08 13:27:25', 1),
(103, 45, 1, 1, '2016-11-08 13:28:06', 1),
(104, 1, 1, 1, '2017-03-15 17:54:29', 1),
(106, 85, 1, 1, '2017-10-14 14:35:18', 1),
(107, 217, 1, 1, '2017-10-14 14:35:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cd_ratings`
--

CREATE TABLE `cd_ratings` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `appuser_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `rating` float NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_ratings`
--

INSERT INTO `cd_ratings` (`id`, `city_id`, `appuser_id`, `item_id`, `rating`, `added`) VALUES
(1, 1, 1, 54, 4, '2015-08-20 20:04:45'),
(2, 1, 1, 54, 4, '2015-08-20 20:06:24'),
(3, 1, 1, 54, 4, '2015-08-20 20:19:32'),
(4, 1, 1, 54, 4, '2015-08-20 20:19:35'),
(5, 1, 1, 54, 3, '2015-08-20 20:21:24'),
(6, 1, 1, 4, 3, '2015-08-20 20:22:58'),
(7, 1, 1, 4, 3, '2015-08-20 20:24:34'),
(8, 1, 1, 1, 4, '2015-08-20 20:28:09'),
(9, 1, 1, 53, 4, '2015-08-20 20:29:47'),
(10, 1, 1, 55, 3, '2015-08-20 20:31:20'),
(11, 1, 1, 51, 4, '2015-08-20 21:11:10'),
(12, 1, 1, 3, 3, '2015-08-20 21:16:32'),
(13, 2, 1, 86, 3, '2015-09-02 09:36:31'),
(14, 2, 1, 92, 4, '2015-09-08 18:38:16'),
(15, 2, 1, 93, 5, '2015-09-08 18:48:37'),
(16, 3, 1, 161, 4, '2015-09-08 18:53:41'),
(17, 1, 1, 52, 5, '2015-09-08 19:35:00'),
(18, 2, 1, 121, 3, '2015-09-08 20:12:50'),
(19, 1, 1, 1, 4, '2016-05-13 05:37:12'),
(20, 1, 1, 1, 5, '2016-05-13 05:37:21'),
(21, 1, 1, 1, 5, '2016-05-13 05:37:43'),
(22, 1, 1, 85, 5, '2017-10-08 09:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `cd_reviews`
--

CREATE TABLE `cd_reviews` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `appuser_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_appuser` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_reviews`
--

INSERT INTO `cd_reviews` (`id`, `item_id`, `appuser_id`, `city_id`, `review`, `status`, `added`, `is_appuser`) VALUES
(1, 1, 1, 1, 'Their service is really good.', 1, '2015-08-29 08:24:02', 1),
(2, 61, 1, 1, 'may I know working hour?', 1, '2015-09-02 09:39:44', 1),
(3, 71, 1, 1, 'really nice', 1, '2015-09-02 10:03:26', 1),
(4, 88, 1, 2, 'how is free WiFi?', 1, '2015-09-02 10:06:40', 1),
(5, 92, 1, 2, 'this shop is really nice.', 1, '2015-09-08 18:37:42', 1),
(6, 93, 1, 2, 'your service is really good', 1, '2015-09-08 18:48:21', 1),
(7, 161, 1, 3, 'their service is really good', 1, '2015-09-08 18:53:20', 1),
(8, 92, 1, 2, 'their service is really good.', 1, '2015-09-08 20:06:26', 1),
(9, 121, 1, 2, 'their service is really good', 1, '2015-09-08 20:13:31', 1),
(10, 72, 8, 1, 'this food is really nice', 1, '2015-09-29 05:57:59', 1),
(11, 35, 8, 1, 'service really good', 1, '2015-09-29 07:02:24', 1),
(12, 1, 1, 1, 'Their delivery service is very good and on time', 1, '2016-02-15 19:50:00', 1),
(13, 1, 1, 1, 'Can you update your new office phone number?', 1, '2016-02-15 19:52:45', 1),
(14, 1, 1, 1, 'Do your office open on Sat?', 1, '2016-02-15 20:04:42', 1),
(15, 2, 1, 1, 'Can I know your office hour?', 1, '2016-02-15 20:14:37', 1),
(16, 2, 1, 1, 'Are you guys working on weekend?', 1, '2016-02-15 20:16:10', 1),
(17, 2, 1, 1, 'Can your delivery on this Monday?', 1, '2016-02-15 20:18:37', 1),
(18, 2, 1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis odio a diam ultricies consectetur id eget mi. In vel consequat odio. Curabitur venenatis nunc ', 1, '2016-02-15 20:26:50', 1),
(19, 1, 1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis odio a diam ultricies consectetur id eget mi. In vel consequat odio. Curabitur venenatis nunc ', 1, '2016-02-15 21:23:15', 1),
(20, 3, 1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis odio a diam ultricies consectetur id eget mi. In vel consequat odio. Curabitur venenatis nunc ', 1, '2016-02-16 06:02:51', 1),
(21, 3, 1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis odio a diam ultricies consectetur id eget mi. In vel consequat odio. Curabitur venenatis nunc ', 1, '2016-02-18 16:34:48', 1),
(22, 1, 1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis odio a diam ultricies consectetur id eget mi. In vel consequat odio. Curabitur venenatis nunc 8899', 1, '2016-02-24 19:08:36', 1),
(23, 1, 1, 1, 'Can I know new office address?', 1, '2016-03-15 20:41:17', 1),
(24, 4, 1, 1, 'Review Testing', 1, '2016-03-15 21:08:43', 1),
(25, 31, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-15 21:15:08', 1),
(26, 6, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-15 21:27:59', 1),
(27, 8, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-15 21:28:42', 1),
(28, 33, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-15 21:29:26', 1),
(29, 5, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-15 21:30:00', 1),
(30, 36, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-15 21:31:15', 1),
(31, 37, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-15 21:32:27', 1),
(32, 38, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-15 21:32:48', 1),
(33, 41, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-15 21:34:59', 1),
(34, 42, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-15 21:36:08', 1),
(35, 16, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-15 21:37:04', 1),
(36, 88, 1, 2, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-15 21:39:31', 1),
(37, 21, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-15 21:49:42', 1),
(38, 44, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-15 21:55:14', 1),
(39, 56, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-16 18:08:14', 1),
(40, 37, 1, 1, 'Can I know your office hour on weekend?', 1, '2016-03-16 18:12:26', 1),
(41, 44, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-16 18:33:00', 1),
(42, 47, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-16 18:47:10', 1),
(43, 62, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-16 18:55:45', 1),
(44, 26, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-16 19:08:22', 1),
(45, 63, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-16 19:15:08', 1),
(46, 63, 1, 1, 'This is second review message.', 1, '2016-03-16 19:15:37', 1),
(47, 48, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-16 19:51:12', 1),
(48, 49, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-16 19:53:29', 1),
(49, 49, 1, 1, 'This is my second review.', 1, '2016-03-16 19:54:00', 1),
(50, 39, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-17 18:23:56', 1),
(51, 39, 1, 1, 'This is second review message.', 1, '2016-03-17 18:24:12', 1),
(52, 59, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-18 18:18:54', 1),
(53, 153, 1, 3, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-18 18:21:03', 1),
(54, 41, 1, 1, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-20 17:42:23', 1),
(55, 166, 1, 3, 'mattis risus, vel egestas erat. Sed at massa tempor, tempus diam vel, placerat enim. Nullam pharetra, li', 1, '2016-03-20 17:43:12', 1),
(56, 93, 1, 1, 'review testing 1', 1, '2016-11-08 13:23:44', 1),
(57, 31, 1, 1, 'review testing 2', 1, '2016-11-08 13:27:50', 1),
(58, 45, 1, 1, 'review testing 1', 1, '2016-11-08 13:28:20', 1),
(59, 85, 1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dui nisi, malesuada ac feugiat vel, egestas rhoncus augue. In id nibh et diam scelerisque laoreet ac et dolor. Cras tincidunt turpis et tortor feugiat, ac fermentum justo posuere. Aliquam pharetra feugiat metus, sit amet posuere augue vulputate nec. Curabitur auctor dictum justo, ac accumsan enim efficitur eget. In auctor, nibh facilisis scelerisque finibus, nunc risus dignissim risus, sit amet tristique ex velit nec nisl. Praesent feugiat magna enim, eu molestie velit cursus vel. Sed bibendum, nulla quis faucibus posuere, urna est laoreet neque, et pretium enim mauris a est. Maecenas et lectus nec justo lacinia commodo ac eu ex. Nam semper sapien erat. Quisque aliquet ante turpis, et tempor felis ultrices nec.', 1, '2017-10-14 14:35:32', 1),
(60, 217, 1, 1, 'This item is very cool. I want to buy it now.', 1, '2017-10-14 14:36:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cd_sub_categories`
--

CREATE TABLE `cd_sub_categories` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_published` int(11) NOT NULL DEFAULT '0',
  `ordering` int(5) NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_sub_categories`
--

INSERT INTO `cd_sub_categories` (`id`, `cat_id`, `city_id`, `name`, `is_published`, `ordering`, `added`, `updated`) VALUES
(1, 1, 1, 'Insurance', 1, 1, '2015-08-02 06:00:26', NULL),
(2, 1, 1, 'Car Loans', 1, 2, '2015-08-07 17:47:24', NULL),
(3, 1, 1, 'Gas Stations', 1, 3, '2015-08-07 17:50:55', NULL),
(4, 1, 1, 'Tire Dealers', 1, 4, '2015-08-07 17:52:55', NULL),
(5, 1, 1, 'Motorcycles', 1, 5, '2015-08-07 17:55:00', NULL),
(6, 2, 1, 'Chiropractors', 1, 1, '2015-08-07 19:01:11', NULL),
(7, 2, 1, 'Dentists', 1, 2, '2015-08-07 19:02:13', NULL),
(8, 2, 1, 'Clinics', 1, 3, '2015-08-07 19:03:07', NULL),
(9, 2, 1, 'Pharmacies ', 1, 4, '2015-08-07 19:04:31', NULL),
(10, 3, 1, 'Bakers', 1, 1, '2015-08-07 19:55:17', NULL),
(11, 3, 1, 'Pet Stores', 1, 2, '2015-08-07 19:57:28', NULL),
(12, 3, 1, 'Shoes Stores', 1, 3, '2015-08-07 19:59:10', NULL),
(13, 3, 1, 'Florists', 1, 4, '2015-08-07 20:00:30', NULL),
(14, 4, 1, 'Donuts', 1, 1, '2015-08-07 21:07:50', NULL),
(15, 4, 1, 'Pizza', 1, 2, '2015-08-07 21:09:05', NULL),
(16, 4, 1, 'Wine', 1, 3, '2015-08-07 21:09:55', NULL),
(17, 5, 2, 'Hotels', 1, 1, '2015-08-11 13:53:22', NULL),
(18, 5, 2, 'Motels', 1, 2, '2015-08-11 14:01:36', NULL),
(19, 6, 2, 'Bakers', 1, 1, '2015-08-11 14:10:05', NULL),
(20, 7, 2, 'Gaming', 1, 1, '2015-08-16 12:35:34', NULL),
(21, 7, 2, 'NoteBook', 1, 2, '2015-08-16 12:36:26', NULL),
(22, 7, 2, 'Software', 1, 3, '2015-08-16 12:36:54', NULL),
(24, 5, 2, 'Ticket Agencies', 1, 3, '2015-08-16 13:22:48', NULL),
(25, 6, 2, 'Pet Shop', 1, 2, '2015-08-16 13:49:53', NULL),
(26, 6, 2, 'Pharmacies', 1, 3, '2015-08-16 13:56:22', NULL),
(27, 8, 2, 'Car Rental', 1, 1, '2015-08-16 14:10:08', NULL),
(28, 8, 2, 'Motorcycle Rental', 1, 2, '2015-08-16 14:31:26', NULL),
(29, 9, 3, 'Golf Clubs', 1, 1, '2015-08-17 15:47:58', NULL),
(30, 9, 3, 'Bowling', 1, 2, '2015-08-17 15:57:12', NULL),
(31, 9, 3, 'Futsal', 1, 3, '2015-08-17 16:05:39', NULL),
(32, 9, 3, 'Swimming', 1, 4, '2015-08-17 18:26:18', NULL),
(33, 10, 3, 'Hotels', 1, 1, '2015-08-17 18:37:09', NULL),
(34, 10, 3, 'Guest House', 1, 2, '2015-08-17 18:42:15', NULL),
(35, 10, 3, 'Travel Agencies', 1, 1, '2015-08-17 18:46:22', NULL),
(36, 11, 3, 'Pizza', 1, 1, '2015-08-17 18:57:02', NULL),
(37, 11, 3, 'Donuts', 1, 2, '2015-08-17 19:04:53', NULL),
(38, 11, 3, 'Wine', 1, 3, '2015-08-17 19:10:55', NULL),
(39, 12, 3, 'Florists', 1, 1, '2015-08-17 19:16:14', NULL),
(40, 12, 3, 'Shoes Store', 1, 2, '2015-08-17 19:20:56', NULL),
(41, 13, 4, 'Golf Clubs', 1, 1, '2015-09-08 13:25:03', NULL),
(42, 13, 4, 'Bowling', 1, 2, '2015-09-08 13:25:23', NULL),
(43, 13, 4, 'Swimming', 1, 3, '2015-09-08 13:25:40', NULL),
(44, 15, 4, 'Pizza', 1, 1, '2015-09-08 13:54:05', NULL),
(45, 15, 4, 'Donuts', 1, 2, '2015-09-08 13:54:27', NULL),
(46, 15, 4, 'Wine', 1, 3, '2015-09-08 13:54:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cd_touches`
--

CREATE TABLE `cd_touches` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `appuser_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cd_touches`
--

INSERT INTO `cd_touches` (`id`, `item_id`, `appuser_id`, `city_id`, `added`) VALUES
(1, 2, 0, 1, '2015-08-18 17:54:52'),
(2, 2, 0, 1, '2015-08-18 17:55:27'),
(3, 2, 0, 1, '2015-08-18 18:00:00'),
(4, 2, 0, 1, '2015-08-18 18:00:26'),
(5, 2, 0, 1, '2015-08-18 18:04:27'),
(6, 1, 3, 1, '2015-08-18 18:05:13'),
(7, 1, 3, 1, '2015-08-18 18:05:16'),
(8, 1, 3, 1, '2015-08-18 18:05:18'),
(9, 2, 0, 1, '2015-08-18 18:05:27'),
(10, 2, 1, 1, '2015-08-18 18:37:52'),
(11, 42, 0, 1, '2015-08-20 13:31:25'),
(12, 1, 0, 1, '2015-08-20 16:32:09'),
(13, 2, 0, 1, '2015-08-20 16:36:03'),
(14, 4, 0, 1, '2015-08-20 17:01:54'),
(15, 4, 0, 1, '2015-08-20 17:02:01'),
(16, 4, 0, 1, '2015-08-20 17:02:10'),
(17, 4, 0, 1, '2015-08-20 17:10:41'),
(18, 3, 0, 1, '2015-08-20 17:14:57'),
(19, 2, 0, 1, '2015-08-20 19:51:12'),
(20, 5, 0, 1, '2015-08-20 19:53:48'),
(21, 5, 0, 1, '2015-08-20 19:55:13'),
(22, 52, 0, 1, '2015-08-20 19:56:40'),
(23, 53, 0, 1, '2015-08-20 19:58:14'),
(24, 71, 0, 1, '2015-08-20 20:00:45'),
(25, 1, 1, 1, '2015-08-20 20:02:07'),
(26, 57, 1, 1, '2015-08-20 20:02:17'),
(27, 57, 1, 1, '2015-08-20 20:02:28'),
(28, 54, 1, 1, '2015-08-20 20:04:41'),
(29, 4, 1, 1, '2015-08-20 20:22:52'),
(30, 1, 1, 1, '2015-08-20 20:28:05'),
(31, 53, 1, 1, '2015-08-20 20:29:40'),
(32, 55, 1, 1, '2015-08-20 20:31:17'),
(33, 55, 1, 1, '2015-08-20 20:59:05'),
(34, 52, 1, 1, '2015-08-20 20:59:18'),
(35, 53, 1, 1, '2015-08-20 21:00:57'),
(36, 52, 1, 1, '2015-08-20 21:01:02'),
(37, 51, 1, 1, '2015-08-20 21:01:20'),
(38, 51, 1, 1, '2015-08-20 21:07:31'),
(39, 51, 1, 1, '2015-08-20 21:10:55'),
(40, 51, 1, 1, '2015-08-20 21:11:19'),
(41, 3, 1, 1, '2015-08-20 21:16:16'),
(42, 73, 1, 1, '2015-08-21 14:55:37'),
(43, 53, 1, 1, '2015-08-21 14:56:40'),
(44, 53, 1, 1, '2015-08-21 15:09:41'),
(45, 86, 1, 2, '2015-08-21 15:15:39'),
(46, 53, 1, 1, '2015-08-21 16:45:12'),
(47, 4, 1, 1, '2015-08-21 16:45:35'),
(48, 1, 1, 1, '2015-08-21 17:13:00'),
(49, 3, 1, 1, '2015-08-21 17:15:25'),
(50, 6, 1, 1, '2015-08-21 17:20:34'),
(51, 73, 1, 1, '2015-08-21 17:25:25'),
(52, 5, 1, 1, '2015-08-21 19:19:45'),
(53, 53, 1, 1, '2015-08-22 20:29:43'),
(54, 86, 1, 2, '2015-09-02 09:36:22'),
(55, 86, 1, 2, '2015-09-02 09:36:50'),
(56, 87, 1, 2, '2015-09-02 09:37:00'),
(57, 61, 1, 1, '2015-09-02 09:38:22'),
(58, 61, 1, 1, '2015-09-02 09:40:13'),
(59, 72, 1, 1, '2015-09-02 09:40:30'),
(60, 16, 1, 1, '2015-09-02 09:44:18'),
(61, 32, 0, 1, '2015-09-02 09:55:26'),
(62, 61, 0, 1, '2015-09-02 09:56:16'),
(63, 33, 1, 1, '2015-09-02 09:57:34'),
(64, 71, 1, 1, '2015-09-02 10:01:55'),
(65, 51, 1, 1, '2015-09-02 10:02:03'),
(66, 53, 1, 1, '2015-09-02 10:02:28'),
(67, 71, 1, 1, '2015-09-02 10:03:15'),
(68, 88, 1, 2, '2015-09-02 10:06:21'),
(69, 86, 0, 0, '2015-09-05 15:20:23'),
(70, 1, 0, 1, '2015-09-05 15:21:01'),
(71, 31, 0, 1, '2015-09-06 16:35:53'),
(72, 1, 0, 1, '2015-09-06 16:37:36'),
(73, 72, 0, 1, '2015-09-06 16:38:33'),
(74, 71, 0, 1, '2015-09-06 16:38:38'),
(75, 73, 0, 1, '2015-09-06 16:38:42'),
(76, 4, 0, 1, '2015-09-06 16:41:28'),
(77, 2, 0, 1, '2015-09-06 16:41:46'),
(78, 2, 0, 1, '2015-09-06 16:41:51'),
(79, 55, 0, 1, '2015-09-06 16:44:18'),
(80, 98, 0, 2, '2015-09-06 16:53:37'),
(81, 3, 0, 1, '2015-09-06 17:10:28'),
(82, 134, 0, 2, '2015-09-06 17:23:13'),
(83, 98, 0, 2, '2015-09-06 17:26:30'),
(84, 113, 0, 2, '2015-09-07 07:58:38'),
(85, 173, 0, 3, '2015-09-08 18:18:22'),
(86, 92, 0, 2, '2015-09-08 18:23:10'),
(87, 86, 0, 2, '2015-09-08 18:32:15'),
(88, 86, 0, 2, '2015-09-08 18:33:30'),
(89, 92, 0, 2, '2015-09-08 18:36:34'),
(90, 4, 1, 1, '2015-09-08 18:39:34'),
(91, 32, 1, 1, '2015-09-08 18:42:52'),
(92, 92, 1, 2, '2015-09-08 18:46:59'),
(93, 93, 1, 2, '2015-09-08 18:47:51'),
(94, 93, 1, 2, '2015-09-08 18:48:34'),
(95, 92, 1, 2, '2015-09-08 18:49:23'),
(96, 161, 0, 3, '2015-09-08 18:52:13'),
(97, 162, 1, 3, '2015-09-08 18:53:51'),
(98, 161, 1, 3, '2015-09-08 18:54:01'),
(99, 1, 1, 1, '2015-09-08 19:26:35'),
(100, 2, 1, 1, '2015-09-08 19:26:52'),
(101, 1, 1, 1, '2015-09-08 19:34:29'),
(102, 51, 1, 1, '2015-09-08 19:34:51'),
(103, 52, 1, 1, '2015-09-08 19:34:57'),
(104, 53, 1, 1, '2015-09-08 19:35:11'),
(105, 52, 1, 1, '2015-09-08 19:35:17'),
(106, 4, 1, 1, '2015-09-08 19:37:34'),
(107, 2, 1, 1, '2015-09-08 19:40:53'),
(108, 1, 1, 1, '2015-09-08 19:41:20'),
(109, 3, 1, 1, '2015-09-08 19:42:46'),
(110, 3, 1, 1, '2015-09-08 19:46:30'),
(111, 3, 1, 1, '2015-09-08 19:50:30'),
(112, 1, 1, 1, '2015-09-08 19:55:40'),
(113, 1, 1, 1, '2015-09-08 19:57:27'),
(114, 4, 1, 1, '2015-09-08 19:57:47'),
(115, 2, 1, 1, '2015-09-08 19:59:04'),
(116, 1, 1, 1, '2015-09-08 19:59:09'),
(117, 4, 1, 1, '2015-09-08 20:01:21'),
(118, 5, 1, 1, '2015-09-08 20:01:30'),
(119, 92, 0, 2, '2015-09-08 20:05:16'),
(120, 104, 1, 2, '2015-09-08 20:06:41'),
(121, 93, 1, 2, '2015-09-08 20:07:27'),
(122, 7, 1, 1, '2015-09-08 20:07:49'),
(123, 86, 1, 1, '2015-09-08 20:08:15'),
(124, 92, 1, 2, '2015-09-08 20:12:16'),
(125, 121, 1, 2, '2015-09-08 20:12:37'),
(126, 86, 1, 2, '2015-09-08 20:14:48'),
(127, 8, 1, 1, '2015-09-08 20:15:19'),
(128, 72, 8, 1, '2015-09-29 05:57:38'),
(129, 72, 8, 1, '2015-09-29 06:02:50'),
(130, 35, 8, 1, '2015-09-29 07:01:59'),
(131, 73, 8, 1, '2015-09-29 07:03:09'),
(132, 73, 8, 1, '2015-09-29 07:06:15'),
(133, 2, 56, 1, '2015-11-02 12:32:11'),
(134, 1, 1, 1, '2016-02-17 07:47:11'),
(135, 1, 1, 1, '2016-02-17 16:37:49'),
(136, 1, 1, 1, '2016-02-17 16:39:26'),
(137, 1, 1, 1, '2016-02-17 16:41:07'),
(138, 1, 1, 1, '2016-02-17 16:42:39'),
(139, 1, 1, 1, '2016-02-17 16:43:47'),
(140, 1, 1, 1, '2016-02-17 16:44:58'),
(141, 1, 1, 1, '2016-02-17 16:54:12'),
(142, 1, 1, 1, '2016-02-17 16:55:51'),
(143, 1, 1, 1, '2016-02-17 18:17:22'),
(144, 1, 1, 1, '2016-02-17 18:21:51'),
(145, 1, 1, 1, '2016-02-17 18:24:27'),
(146, 1, 1, 1, '2016-02-17 18:25:54'),
(147, 1, 1, 1, '2016-02-17 18:28:26'),
(148, 1, 1, 1, '2016-02-17 18:32:41'),
(149, 1, 1, 1, '2016-02-17 18:33:41'),
(150, 1, 1, 1, '2016-02-17 18:34:22'),
(151, 1, 1, 1, '2016-02-17 18:36:44'),
(152, 1, 1, 1, '2016-02-17 18:45:13'),
(153, 1, 1, 1, '2016-02-17 18:46:26'),
(154, 1, 1, 1, '2016-02-17 18:52:30'),
(155, 1, 1, 1, '2016-02-17 18:54:07'),
(156, 1, 1, 1, '2016-02-17 18:56:41'),
(157, 1, 1, 1, '2016-02-17 18:57:21'),
(158, 1, 1, 1, '2016-02-17 18:58:40'),
(159, 1, 1, 1, '2016-02-17 19:00:43'),
(160, 1, 1, 1, '2016-02-17 19:01:51'),
(161, 1, 1, 1, '2016-02-17 19:02:48'),
(162, 1, 1, 1, '2016-02-17 19:06:30'),
(163, 1, 1, 1, '2016-02-17 19:09:00'),
(164, 2, 1, 1, '2016-02-17 19:09:24'),
(165, 1, 1, 1, '2016-02-17 19:10:13'),
(166, 1, 1, 1, '2016-02-17 19:11:41'),
(167, 1, 1, 1, '2016-02-17 19:12:33'),
(168, 1, 1, 1, '2016-02-17 19:13:08'),
(169, 1, 1, 1, '2016-02-17 19:14:16'),
(170, 1, 1, 1, '2016-02-17 19:15:37'),
(171, 1, 1, 1, '2016-02-17 19:16:23'),
(172, 1, 1, 1, '2016-02-17 19:16:54'),
(173, 1, 1, 1, '2016-02-17 19:17:44'),
(174, 1, 1, 1, '2016-02-17 19:18:16'),
(175, 1, 1, 1, '2016-02-17 19:19:21'),
(176, 1, 1, 1, '2016-02-17 19:20:37'),
(177, 1, 1, 1, '2016-02-17 19:21:55'),
(178, 1, 1, 1, '2016-02-17 19:24:36'),
(179, 1, 1, 1, '2016-02-17 19:26:37'),
(180, 1, 1, 1, '2016-02-17 19:29:01'),
(181, 1, 1, 1, '2016-02-17 19:31:28'),
(182, 1, 1, 1, '2016-02-17 19:32:06'),
(183, 1, 1, 1, '2016-02-17 19:32:43'),
(184, 1, 1, 1, '2016-02-17 19:35:38'),
(185, 1, 1, 1, '2016-02-17 19:36:48'),
(186, 1, 1, 1, '2016-02-17 19:42:29'),
(187, 1, 1, 1, '2016-02-17 19:45:16'),
(188, 1, 1, 1, '2016-02-17 19:47:49'),
(189, 1, 1, 1, '2016-02-17 19:49:27'),
(190, 1, 1, 1, '2016-02-17 19:50:55'),
(191, 1, 1, 1, '2016-02-17 19:51:54'),
(192, 1, 1, 1, '2016-02-17 19:52:44'),
(193, 1, 1, 1, '2016-02-17 20:44:29'),
(194, 1, 1, 1, '2016-02-17 20:45:07'),
(195, 1, 1, 1, '2016-02-17 20:48:15'),
(196, 1, 1, 1, '2016-02-17 20:50:40'),
(197, 1, 1, 1, '2016-02-17 20:51:30'),
(198, 1, 1, 1, '2016-02-17 20:52:32'),
(199, 1, 1, 1, '2016-02-17 20:54:06'),
(200, 1, 1, 1, '2016-02-17 20:55:28'),
(201, 1, 1, 1, '2016-02-17 20:56:48'),
(202, 1, 1, 1, '2016-02-17 21:12:30'),
(203, 1, 1, 1, '2016-02-17 21:13:40'),
(204, 1, 1, 1, '2016-02-17 21:15:28'),
(205, 1, 1, 1, '2016-02-17 21:16:15'),
(206, 1, 1, 1, '2016-02-17 21:20:07'),
(207, 1, 1, 1, '2016-02-17 21:20:40'),
(208, 1, 1, 1, '2016-02-17 21:21:42'),
(209, 1, 1, 1, '2016-02-17 21:25:06'),
(210, 1, 1, 1, '2016-02-17 21:25:34'),
(211, 1, 1, 1, '2016-02-17 21:28:24'),
(212, 1, 1, 1, '2016-02-17 21:30:53'),
(213, 1, 1, 1, '2016-02-18 10:08:57'),
(214, 1, 1, 1, '2016-02-18 10:12:23'),
(215, 1, 1, 1, '2016-02-18 10:28:36'),
(216, 1, 1, 1, '2016-02-18 10:29:35'),
(217, 1, 1, 1, '2016-02-18 10:31:30'),
(218, 1, 1, 1, '2016-02-18 12:02:14'),
(219, 1, 1, 1, '2016-02-18 12:03:14'),
(220, 1, 1, 1, '2016-02-18 12:26:47'),
(221, 1, 1, 1, '2016-02-18 12:29:08'),
(222, 1, 1, 1, '2016-02-18 12:32:48'),
(223, 4, 1, 1, '2016-02-18 15:09:12'),
(224, 5, 1, 1, '2016-02-18 15:12:04'),
(225, 6, 1, 1, '2016-02-18 15:17:55'),
(226, 7, 1, 1, '2016-02-18 15:27:54'),
(227, 3, 1, 1, '2016-02-18 16:34:41'),
(228, 1, 1, 1, '2016-02-18 16:51:19'),
(229, 8, 1, 1, '2016-02-18 16:51:29'),
(230, 1, 1, 1, '2016-02-18 18:14:16'),
(231, 1, 1, 1, '2016-02-18 18:51:50'),
(232, 1, 1, 1, '2016-02-18 19:06:51'),
(233, 1, 1, 1, '2016-02-18 19:25:56'),
(234, 1, 1, 1, '2016-02-19 15:17:55'),
(235, 1, 1, 1, '2016-02-19 15:46:59'),
(236, 1, 1, 1, '2016-02-19 17:33:18'),
(237, 1, 1, 1, '2016-02-19 17:39:59'),
(238, 1, 1, 1, '2016-02-19 17:44:25'),
(239, 1, 1, 1, '2016-02-19 17:46:54'),
(240, 1, 1, 1, '2016-02-19 17:48:22'),
(241, 1, 1, 1, '2016-02-19 17:49:00'),
(242, 1, 1, 1, '2016-02-19 17:49:57'),
(243, 1, 1, 1, '2016-02-19 17:51:10'),
(244, 1, 1, 1, '2016-02-19 17:51:57'),
(245, 1, 1, 1, '2016-02-19 17:53:37'),
(246, 1, 1, 1, '2016-02-19 17:54:16'),
(247, 1, 1, 1, '2016-02-19 17:56:07'),
(248, 1, 1, 1, '2016-02-19 17:58:30'),
(249, 1, 1, 1, '2016-02-19 18:00:16'),
(250, 1, 1, 1, '2016-02-19 18:00:55'),
(251, 1, 1, 1, '2016-02-20 06:08:26'),
(252, 1, 1, 1, '2016-02-20 16:37:11'),
(253, 1, 1, 1, '2016-02-20 17:31:38'),
(254, 1, 1, 1, '2016-02-20 17:34:42'),
(255, 1, 1, 1, '2016-02-20 18:41:23'),
(256, 1, 1, 1, '2016-02-20 18:51:55'),
(257, 1, 0, 1, '2016-02-20 19:42:27'),
(258, 1, 0, 1, '2016-02-21 13:10:26'),
(259, 1, 0, 1, '2016-02-21 13:30:23'),
(260, 1, 0, 1, '2016-02-21 13:31:34'),
(261, 2, 0, 1, '2016-02-21 20:29:06'),
(262, 1, 0, 1, '2016-02-21 20:32:17'),
(263, 8, 0, 1, '2016-02-21 20:32:25'),
(264, 8, 0, 1, '2016-02-21 20:38:06'),
(265, 1, 0, 1, '2016-02-22 19:29:42'),
(266, 1, 0, 1, '2016-02-22 19:37:01'),
(267, 1, 1, 1, '2016-02-23 20:52:18'),
(268, 1, 1, 1, '2016-02-24 18:33:48'),
(269, 1, 1, 1, '2016-02-24 19:04:38'),
(270, 1, 1, 1, '2016-02-24 19:08:15'),
(271, 1, 1, 1, '2016-02-25 19:15:31'),
(272, 1, 1, 1, '2016-02-25 20:11:02'),
(273, 1, 1, 1, '2016-02-28 12:55:43'),
(274, 3, 1, 1, '2016-02-28 12:55:51'),
(275, 101, 1, 2, '2016-02-28 12:56:02'),
(276, 1, 1, 1, '2016-02-28 18:21:37'),
(277, 1, 1, 1, '2016-02-28 18:33:35'),
(278, 1, 1, 1, '2016-02-28 18:34:26'),
(279, 1, 1, 1, '2016-02-28 18:35:06'),
(280, 1, 1, 1, '2016-02-28 18:44:06'),
(281, 1, 1, 1, '2016-02-28 18:48:15'),
(282, 1, 1, 1, '2016-02-28 19:40:27'),
(283, 1, 1, 1, '2016-02-28 19:41:50'),
(284, 1, 1, 1, '2016-02-28 19:43:07'),
(285, 1, 1, 1, '2016-02-28 19:44:16'),
(286, 1, 1, 1, '2016-02-28 19:45:05'),
(287, 1, 1, 1, '2016-02-28 19:46:59'),
(288, 1, 1, 1, '2016-02-28 19:55:46'),
(289, 1, 1, 1, '2016-02-28 19:56:55'),
(290, 1, 1, 1, '2016-02-28 19:58:27'),
(291, 1, 1, 1, '2016-02-28 20:03:51'),
(292, 1, 1, 1, '2016-02-28 20:04:58'),
(293, 1, 1, 1, '2016-02-28 20:11:11'),
(294, 1, 1, 1, '2016-02-28 20:14:42'),
(295, 1, 1, 1, '2016-02-28 20:16:30'),
(296, 1, 1, 1, '2016-02-28 20:24:26'),
(297, 1, 1, 1, '2016-02-29 11:47:17'),
(298, 1, 1, 1, '2016-02-29 11:49:39'),
(299, 1, 1, 1, '2016-02-29 11:51:18'),
(300, 1, 1, 1, '2016-02-29 17:51:03'),
(301, 1, 1, 1, '2016-02-29 20:06:29'),
(302, 1, 1, 1, '2016-02-29 20:12:11'),
(303, 1, 1, 1, '2016-02-29 20:12:45'),
(304, 1, 1, 1, '2016-02-29 20:19:07'),
(305, 1, 1, 1, '2016-02-29 20:24:45'),
(306, 1, 1, 1, '2016-02-29 20:30:31'),
(307, 1, 1, 1, '2016-02-29 20:33:56'),
(308, 1, 1, 1, '2016-02-29 20:34:54'),
(309, 1, 1, 1, '2016-02-29 20:43:59'),
(310, 1, 1, 1, '2016-02-29 20:44:53'),
(311, 1, 1, 1, '2016-02-29 21:10:40'),
(312, 1, 1, 1, '2016-02-29 21:11:16'),
(313, 1, 1, 1, '2016-02-29 21:12:06'),
(314, 1, 1, 1, '2016-02-29 21:16:59'),
(315, 1, 1, 1, '2016-02-29 21:22:40'),
(316, 1, 1, 1, '2016-02-29 21:24:55'),
(317, 1, 1, 1, '2016-02-29 21:27:00'),
(318, 1, 1, 1, '2016-02-29 21:27:20'),
(319, 1, 1, 1, '2016-02-29 21:29:20'),
(320, 1, 1, 1, '2016-02-29 21:32:33'),
(321, 1, 1, 1, '2016-02-29 21:34:40'),
(322, 1, 1, 1, '2016-03-02 09:03:31'),
(323, 1, 1, 1, '2016-03-02 09:13:38'),
(324, 1, 1, 1, '2016-03-02 09:14:22'),
(325, 1, 1, 1, '2016-03-02 09:17:32'),
(326, 1, 1, 1, '2016-03-02 09:18:04'),
(327, 1, 1, 1, '2016-03-02 09:28:06'),
(328, 1, 1, 1, '2016-03-02 09:29:12'),
(329, 1, 1, 1, '2016-03-02 09:30:36'),
(330, 1, 1, 1, '2016-03-02 09:31:19'),
(331, 1, 1, 1, '2016-03-02 09:31:55'),
(332, 1, 1, 1, '2016-03-02 09:32:25'),
(333, 1, 1, 1, '2016-03-02 09:33:14'),
(334, 1, 1, 1, '2016-03-02 09:33:49'),
(335, 1, 1, 1, '2016-03-02 09:34:19'),
(336, 1, 1, 1, '2016-03-02 09:34:45'),
(337, 1, 1, 1, '2016-03-02 09:36:29'),
(338, 1, 1, 1, '2016-03-02 09:38:30'),
(339, 1, 1, 1, '2016-03-02 09:39:06'),
(340, 1, 1, 1, '2016-03-02 09:45:36'),
(341, 1, 1, 1, '2016-03-02 09:46:05'),
(342, 1, 1, 1, '2016-03-02 09:46:33'),
(343, 1, 1, 1, '2016-03-02 09:47:04'),
(344, 1, 1, 1, '2016-03-02 17:30:20'),
(345, 1, 1, 1, '2016-03-02 17:31:08'),
(346, 1, 0, 1, '2016-03-03 12:28:42'),
(347, 101, 0, 2, '2016-03-03 12:28:48'),
(348, 1, 0, 1, '2016-03-03 12:33:31'),
(349, 1, 0, 1, '2016-03-03 12:35:08'),
(350, 101, 0, 2, '2016-03-03 12:35:28'),
(351, 1, 0, 1, '2016-03-03 12:36:31'),
(352, 1, 0, 1, '2016-03-03 12:37:24'),
(353, 1, 0, 1, '2016-03-03 12:39:01'),
(354, 101, 0, 2, '2016-03-03 12:40:09'),
(355, 101, 0, 2, '2016-03-03 12:41:01'),
(356, 1, 0, 1, '2016-03-03 12:41:46'),
(357, 1, 0, 1, '2016-03-03 12:42:46'),
(358, 1, 0, 1, '2016-03-03 12:43:17'),
(359, 1, 0, 1, '2016-03-03 12:44:00'),
(360, 1, 0, 1, '2016-03-03 12:44:31'),
(361, 101, 0, 2, '2016-03-03 12:44:47'),
(362, 1, 0, 1, '2016-03-03 15:15:21'),
(363, 101, 0, 2, '2016-03-03 15:15:33'),
(364, 1, 1, 1, '2016-03-03 17:43:13'),
(365, 1, 0, 1, '2016-03-03 20:11:35'),
(366, 1, 3, 1, '2016-03-03 20:27:20'),
(367, 1, 3, 1, '2016-03-03 20:28:16'),
(368, 4, 3, 1, '2016-03-03 20:28:18'),
(369, 1, 3, 1, '2016-03-03 20:53:06'),
(370, 1, 3, 1, '2016-03-03 20:53:37'),
(371, 1, 3, 1, '2016-03-03 20:54:54'),
(372, 86, 3, 1, '2016-03-03 21:07:31'),
(373, 86, 3, 1, '2016-03-03 21:10:07'),
(374, 86, 3, 1, '2016-03-03 21:12:00'),
(375, 11, 3, 1, '2016-03-03 21:21:02'),
(376, 1, 3, 1, '2016-03-03 21:21:53'),
(377, 1, 3, 1, '2016-03-03 21:41:03'),
(378, 1, 3, 1, '2016-03-03 21:45:04'),
(379, 1, 3, 1, '2016-03-03 21:51:50'),
(380, 1, 3, 1, '2016-03-04 05:37:33'),
(381, 11, 3, 1, '2016-03-04 05:48:05'),
(382, 1, 3, 1, '2016-03-04 05:52:09'),
(383, 1, 3, 1, '2016-03-04 05:56:54'),
(384, 1, 3, 1, '2016-03-04 05:57:50'),
(385, 1, 3, 1, '2016-03-04 06:42:04'),
(386, 1, 3, 1, '2016-03-04 06:45:54'),
(387, 1, 3, 1, '2016-03-04 06:53:36'),
(388, 1, 3, 1, '2016-03-04 15:58:32'),
(389, 1, 3, 1, '2016-03-04 15:59:11'),
(390, 1, 3, 1, '2016-03-04 16:00:28'),
(391, 1, 3, 1, '2016-03-04 16:02:32'),
(392, 1, 3, 1, '2016-03-04 16:02:59'),
(393, 1, 3, 1, '2016-03-04 16:03:53'),
(394, 1, 3, 1, '2016-03-04 16:04:54'),
(395, 3, 3, 1, '2016-03-04 16:11:24'),
(396, 3, 3, 1, '2016-03-04 16:13:02'),
(397, 3, 3, 1, '2016-03-04 16:13:29'),
(398, 3, 3, 1, '2016-03-04 16:14:16'),
(399, 1, 3, 1, '2016-03-04 16:14:46'),
(400, 1, 3, 1, '2016-03-04 16:16:41'),
(401, 1, 3, 1, '2016-03-04 16:19:39'),
(402, 1, 3, 1, '2016-03-04 16:20:26'),
(403, 1, 3, 1, '2016-03-04 16:30:01'),
(404, 1, 3, 1, '2016-03-04 16:32:28'),
(405, 1, 3, 1, '2016-03-04 16:34:12'),
(406, 1, 3, 1, '2016-03-04 16:35:43'),
(407, 1, 3, 1, '2016-03-04 16:37:15'),
(408, 1, 3, 1, '2016-03-04 16:38:23'),
(409, 1, 3, 1, '2016-03-04 16:38:57'),
(410, 1, 3, 1, '2016-03-04 16:41:26'),
(411, 1, 3, 1, '2016-03-04 16:43:08'),
(412, 1, 3, 1, '2016-03-04 16:46:33'),
(413, 1, 3, 1, '2016-03-04 16:51:32'),
(414, 1, 3, 1, '2016-03-04 16:53:26'),
(415, 1, 3, 1, '2016-03-04 16:54:38'),
(416, 1, 3, 1, '2016-03-04 16:56:27'),
(417, 1, 3, 1, '2016-03-04 16:57:03'),
(418, 1, 3, 1, '2016-03-04 16:57:46'),
(419, 1, 3, 1, '2016-03-04 17:07:02'),
(420, 1, 3, 1, '2016-03-04 17:08:19'),
(421, 1, 3, 1, '2016-03-04 17:12:35'),
(422, 1, 3, 1, '2016-03-04 17:15:08'),
(423, 1, 3, 1, '2016-03-04 17:15:51'),
(424, 1, 3, 1, '2016-03-04 17:20:09'),
(425, 1, 3, 1, '2016-03-04 17:21:17'),
(426, 1, 3, 1, '2016-03-04 17:22:51'),
(427, 1, 3, 1, '2016-03-04 17:23:14'),
(428, 1, 3, 1, '2016-03-04 17:23:51'),
(429, 1, 3, 1, '2016-03-04 17:24:18'),
(430, 1, 3, 1, '2016-03-04 17:24:39'),
(431, 1, 3, 1, '2016-03-04 17:24:55'),
(432, 1, 3, 1, '2016-03-04 17:25:12'),
(433, 1, 3, 1, '2016-03-04 17:25:36'),
(434, 1, 3, 1, '2016-03-04 19:03:55'),
(435, 1, 3, 1, '2016-03-04 19:11:45'),
(436, 1, 3, 1, '2016-03-04 19:13:17'),
(437, 1, 3, 1, '2016-03-04 19:13:43'),
(438, 1, 3, 1, '2016-03-04 19:16:46'),
(439, 1, 3, 1, '2016-03-04 19:19:48'),
(440, 1, 3, 1, '2016-03-04 19:21:57'),
(441, 1, 3, 1, '2016-03-04 19:23:26'),
(442, 1, 3, 1, '2016-03-04 19:26:31'),
(443, 1, 3, 1, '2016-03-04 19:29:34'),
(444, 1, 3, 1, '2016-03-04 19:33:38'),
(445, 1, 3, 1, '2016-03-04 19:34:17'),
(446, 1, 3, 1, '2016-03-04 19:34:57'),
(447, 1, 3, 1, '2016-03-04 19:35:41'),
(448, 1, 3, 1, '2016-03-04 19:36:20'),
(449, 1, 3, 1, '2016-03-04 19:36:51'),
(450, 1, 3, 1, '2016-03-04 19:37:22'),
(451, 1, 3, 1, '2016-03-04 19:38:18'),
(452, 1, 3, 1, '2016-03-04 19:39:00'),
(453, 1, 3, 1, '2016-03-04 19:40:27'),
(454, 1, 3, 1, '2016-03-04 19:40:55'),
(455, 86, 3, 2, '2016-03-04 19:41:07'),
(456, 101, 3, 2, '2016-03-04 19:41:13'),
(457, 1, 3, 1, '2016-03-04 19:43:16'),
(458, 1, 3, 1, '2016-03-04 19:44:41'),
(459, 1, 3, 1, '2016-03-04 19:46:06'),
(460, 1, 3, 1, '2016-03-04 19:47:58'),
(461, 1, 3, 1, '2016-03-04 19:51:06'),
(462, 1, 3, 1, '2016-03-04 19:52:05'),
(463, 1, 3, 1, '2016-03-04 19:54:36'),
(464, 1, 3, 1, '2016-03-04 19:55:34'),
(465, 1, 3, 1, '2016-03-04 19:59:24'),
(466, 1, 3, 1, '2016-03-04 20:06:00'),
(467, 1, 3, 1, '2016-03-04 20:11:39'),
(468, 1, 3, 1, '2016-03-04 20:13:59'),
(469, 1, 3, 1, '2016-03-04 20:23:44'),
(470, 1, 3, 1, '2016-03-04 20:24:54'),
(471, 1, 3, 1, '2016-03-04 20:28:14'),
(472, 1, 3, 1, '2016-03-04 20:28:58'),
(473, 1, 3, 1, '2016-03-04 20:29:45'),
(474, 1, 3, 1, '2016-03-04 20:31:07'),
(475, 1, 3, 1, '2016-03-04 20:33:49'),
(476, 1, 3, 1, '2016-03-04 20:44:19'),
(477, 1, 3, 1, '2016-03-04 20:44:56'),
(478, 1, 3, 1, '2016-03-04 20:45:56'),
(479, 1, 3, 1, '2016-03-04 20:46:46'),
(480, 1, 3, 1, '2016-03-04 20:48:03'),
(481, 1, 3, 1, '2016-03-04 20:48:35'),
(482, 1, 3, 1, '2016-03-04 20:58:58'),
(483, 1, 3, 1, '2016-03-04 21:03:06'),
(484, 1, 3, 1, '2016-03-04 21:05:49'),
(485, 1, 3, 1, '2016-03-04 21:09:14'),
(486, 1, 3, 1, '2016-03-04 21:15:04'),
(487, 1, 3, 1, '2016-03-04 21:16:48'),
(488, 1, 3, 1, '2016-03-04 21:18:32'),
(489, 1, 3, 1, '2016-03-04 21:21:36'),
(490, 1, 3, 1, '2016-03-04 21:23:09'),
(491, 1, 3, 1, '2016-03-04 21:25:37'),
(492, 1, 3, 1, '2016-03-04 21:27:14'),
(493, 1, 3, 1, '2016-03-04 21:28:14'),
(494, 1, 3, 1, '2016-03-04 21:30:25'),
(495, 1, 3, 1, '2016-03-04 21:30:54'),
(496, 1, 3, 1, '2016-03-04 21:33:17'),
(497, 1, 3, 1, '2016-03-04 21:34:22'),
(498, 1, 3, 1, '2016-03-04 21:35:21'),
(499, 1, 3, 1, '2016-03-04 21:36:19'),
(500, 1, 3, 1, '2016-03-04 21:36:58'),
(501, 1, 3, 1, '2016-03-04 21:38:39'),
(502, 1, 3, 1, '2016-03-04 21:40:41'),
(503, 1, 3, 1, '2016-03-04 21:56:29'),
(504, 1, 3, 1, '2016-03-04 22:07:23'),
(505, 1, 3, 1, '2016-03-04 22:07:57'),
(506, 1, 3, 1, '2016-03-04 22:09:01'),
(507, 1, 3, 1, '2016-03-04 22:10:34'),
(508, 1, 3, 1, '2016-03-04 22:11:54'),
(509, 1, 3, 1, '2016-03-04 22:15:37'),
(510, 1, 3, 1, '2016-03-04 22:16:31'),
(511, 1, 3, 1, '2016-03-04 22:17:56'),
(512, 1, 3, 1, '2016-03-04 22:18:53'),
(513, 1, 3, 1, '2016-03-04 22:21:21'),
(514, 1, 3, 1, '2016-03-04 22:22:05'),
(515, 1, 3, 1, '2016-03-04 22:23:05'),
(516, 1, 3, 1, '2016-03-04 22:24:36'),
(517, 1, 3, 1, '2016-03-04 22:25:42'),
(518, 1, 3, 1, '2016-03-04 22:27:37'),
(519, 1, 3, 1, '2016-03-04 22:29:51'),
(520, 1, 3, 1, '2016-03-04 22:30:41'),
(521, 1, 3, 1, '2016-03-04 22:31:17'),
(522, 1, 3, 1, '2016-03-04 22:35:48'),
(523, 1, 3, 1, '2016-03-04 22:36:50'),
(524, 1, 3, 1, '2016-03-05 04:54:58'),
(525, 1, 3, 1, '2016-03-05 05:01:19'),
(526, 1, 3, 1, '2016-03-05 05:02:23'),
(527, 1, 3, 1, '2016-03-05 05:03:51'),
(528, 1, 3, 1, '2016-03-05 05:05:02'),
(529, 1, 3, 1, '2016-03-05 05:05:35'),
(530, 1, 3, 1, '2016-03-05 05:09:52'),
(531, 1, 3, 1, '2016-03-05 05:12:50'),
(532, 1, 3, 1, '2016-03-05 05:22:56'),
(533, 1, 3, 1, '2016-03-05 05:23:40'),
(534, 1, 3, 1, '2016-03-05 06:12:19'),
(535, 1, 3, 1, '2016-03-05 06:14:52'),
(536, 1, 3, 1, '2016-03-05 06:32:35'),
(537, 1, 3, 1, '2016-03-05 06:36:47'),
(538, 1, 3, 1, '2016-03-05 06:43:28'),
(539, 1, 3, 1, '2016-03-05 11:18:41'),
(540, 1, 3, 1, '2016-03-05 11:24:19'),
(541, 1, 3, 1, '2016-03-05 11:26:49'),
(542, 1, 3, 1, '2016-03-05 11:30:10'),
(543, 1, 3, 1, '2016-03-05 11:45:02'),
(544, 1, 3, 1, '2016-03-05 11:53:23'),
(545, 1, 3, 1, '2016-03-05 11:54:26'),
(546, 1, 3, 1, '2016-03-05 11:56:07'),
(547, 1, 3, 1, '2016-03-05 17:19:25'),
(548, 1, 3, 1, '2016-03-05 18:11:54'),
(549, 1, 3, 1, '2016-03-05 20:17:47'),
(550, 1, 3, 1, '2016-03-05 20:19:54'),
(551, 1, 3, 1, '2016-03-05 20:21:04'),
(552, 1, 3, 1, '2016-03-05 20:24:06'),
(553, 1, 3, 1, '2016-03-05 20:25:21'),
(554, 1, 3, 1, '2016-03-05 20:26:20'),
(555, 1, 3, 1, '2016-03-05 20:26:57'),
(556, 1, 3, 1, '2016-03-05 20:28:39'),
(557, 1, 3, 1, '2016-03-05 20:33:13'),
(558, 1, 3, 1, '2016-03-05 20:37:15'),
(559, 1, 3, 1, '2016-03-05 20:42:47'),
(560, 1, 3, 1, '2016-03-05 20:47:08'),
(561, 1, 3, 1, '2016-03-05 20:51:25'),
(562, 8, 3, 1, '2016-03-05 20:58:05'),
(563, 3, 3, 1, '2016-03-05 20:59:06'),
(564, 8, 3, 1, '2016-03-05 21:01:00'),
(565, 1, 3, 1, '2016-03-05 21:02:05'),
(566, 1, 3, 1, '2016-03-05 21:04:31'),
(567, 1, 3, 1, '2016-03-05 21:05:26'),
(568, 1, 3, 1, '2016-03-05 21:07:40'),
(569, 1, 3, 1, '2016-03-05 21:30:50'),
(570, 1, 3, 1, '2016-03-05 22:35:51'),
(571, 86, 3, 2, '2016-03-05 22:36:00'),
(572, 1, 3, 1, '2016-03-05 22:36:50'),
(573, 1, 0, 1, '2016-03-08 17:59:48'),
(574, 1, 0, 1, '2016-03-08 18:25:01'),
(575, 1, 0, 1, '2016-03-08 18:33:37'),
(576, 1, 0, 1, '2016-03-08 19:47:36'),
(577, 1, 0, 1, '2016-03-08 19:49:59'),
(578, 1, 0, 1, '2016-03-08 21:06:42'),
(579, 1, 0, 1, '2016-03-08 21:08:05'),
(580, 1, 1, 1, '2016-03-08 21:08:56'),
(581, 1, 1, 1, '2016-03-08 21:10:08'),
(582, 1, 1, 1, '2016-03-08 21:13:28'),
(583, 1, 1, 1, '2016-03-08 21:14:19'),
(584, 1, 1, 1, '2016-03-08 21:14:57'),
(585, 1, 1, 1, '2016-03-08 21:17:28'),
(586, 1, 1, 1, '2016-03-08 21:18:43'),
(587, 1, 1, 1, '2016-03-08 21:19:53'),
(588, 1, 1, 1, '2016-03-08 21:20:34'),
(589, 11, 1, 1, '2016-03-08 21:27:06'),
(590, 1, 1, 1, '2016-03-08 21:28:45'),
(591, 1, 1, 1, '2016-03-08 21:30:00'),
(592, 1, 0, 1, '2016-03-08 21:33:31'),
(593, 1, 0, 1, '2016-03-08 21:36:05'),
(594, 1, 0, 1, '2016-03-08 21:37:12'),
(595, 1, 0, 1, '2016-03-08 21:37:51'),
(596, 1, 0, 1, '2016-03-08 21:38:18'),
(597, 1, 0, 1, '2016-03-08 21:39:13'),
(598, 1, 0, 1, '2016-03-08 21:40:57'),
(599, 1, 0, 1, '2016-03-08 21:41:39'),
(600, 1, 0, 1, '2016-03-08 21:46:11'),
(601, 3, 0, 1, '2016-03-08 21:49:21'),
(602, 3, 0, 1, '2016-03-08 21:50:31'),
(603, 1, 0, 1, '2016-03-08 21:54:39'),
(604, 1, 0, 1, '2016-03-08 21:56:44'),
(605, 1, 0, 1, '2016-03-08 21:57:41'),
(606, 1, 0, 1, '2016-03-08 22:00:27'),
(607, 1, 0, 1, '2016-03-08 22:04:26'),
(608, 1, 0, 1, '2016-03-08 22:05:08'),
(609, 3, 0, 1, '2016-03-08 22:05:22'),
(610, 1, 0, 1, '2016-03-08 22:07:28'),
(611, 1, 0, 1, '2016-03-08 22:08:27'),
(612, 3, 0, 1, '2016-03-08 22:08:40'),
(613, 1, 0, 1, '2016-03-08 22:10:41'),
(614, 3, 0, 1, '2016-03-08 22:10:51'),
(615, 1, 0, 1, '2016-03-08 22:13:53'),
(616, 1, 0, 1, '2016-03-08 22:14:21'),
(617, 1, 0, 1, '2016-03-08 22:20:22'),
(618, 3, 0, 1, '2016-03-08 22:20:43'),
(619, 1, 1, 1, '2016-03-08 22:24:11'),
(620, 1, 1, 1, '2016-03-08 22:27:43'),
(621, 1, 1, 1, '2016-03-08 22:28:48'),
(622, 1, 0, 1, '2016-03-08 22:33:07'),
(623, 1, 0, 1, '2016-03-08 22:35:38'),
(624, 1, 1, 1, '2016-03-09 15:50:16'),
(625, 1, 0, 1, '2016-03-09 22:02:16'),
(626, 1, 1, 1, '2016-03-09 22:02:41'),
(627, 86, 0, 2, '2016-03-12 17:37:59'),
(628, 101, 1, 2, '2016-03-13 15:27:40'),
(629, 1, 0, 1, '2016-03-15 20:30:04'),
(630, 11, 0, 1, '2016-03-15 20:32:33'),
(631, 1, 0, 1, '2016-03-15 20:33:02'),
(632, 1, 1, 1, '2016-03-15 20:39:11'),
(633, 1, 0, 1, '2016-03-15 20:43:27'),
(634, 1, 0, 1, '2016-03-15 21:06:50'),
(635, 1, 1, 1, '2016-03-15 21:08:29'),
(636, 4, 1, 1, '2016-03-15 21:08:33'),
(637, 31, 1, 1, '2016-03-15 21:15:01'),
(638, 6, 1, 1, '2016-03-15 21:27:51'),
(639, 6, 1, 1, '2016-03-15 21:28:28'),
(640, 8, 1, 1, '2016-03-15 21:28:36'),
(641, 33, 1, 1, '2016-03-15 21:29:21'),
(642, 5, 1, 1, '2016-03-15 21:29:52'),
(643, 36, 1, 1, '2016-03-15 21:31:06'),
(644, 37, 1, 1, '2016-03-15 21:32:19'),
(645, 38, 1, 1, '2016-03-15 21:32:40'),
(646, 41, 1, 1, '2016-03-15 21:34:50'),
(647, 42, 1, 1, '2016-03-15 21:36:02'),
(648, 16, 1, 1, '2016-03-15 21:36:57'),
(649, 39, 0, 1, '2016-03-15 21:37:48'),
(650, 88, 1, 2, '2016-03-15 21:39:23'),
(651, 17, 1, 1, '2016-03-15 21:39:51'),
(652, 89, 0, 2, '2016-03-15 21:40:34'),
(653, 21, 0, 1, '2016-03-15 21:49:26'),
(654, 44, 0, 1, '2016-03-15 21:54:57'),
(655, 5, 0, 1, '2016-03-16 12:10:38'),
(656, 19, 0, 1, '2016-03-16 12:18:05'),
(657, 19, 0, 1, '2016-03-16 12:19:18'),
(658, 147, 0, 3, '2016-03-16 12:19:38'),
(659, 21, 0, 1, '2016-03-16 15:54:16'),
(660, 4, 0, 1, '2016-03-16 17:49:55'),
(661, 10, 0, 1, '2016-03-16 17:50:00'),
(662, 23, 0, 1, '2016-03-16 17:54:27'),
(663, 41, 0, 1, '2016-03-16 17:57:28'),
(664, 39, 0, 1, '2016-03-16 17:58:49'),
(665, 14, 0, 1, '2016-03-16 18:01:51'),
(666, 38, 0, 1, '2016-03-16 18:03:28'),
(667, 41, 0, 1, '2016-03-16 18:06:15'),
(668, 56, 0, 1, '2016-03-16 18:07:47'),
(669, 42, 0, 1, '2016-03-16 18:08:28'),
(670, 37, 0, 1, '2016-03-16 18:11:34'),
(671, 39, 0, 1, '2016-03-16 18:31:34'),
(672, 40, 0, 1, '2016-03-16 18:31:39'),
(673, 44, 0, 1, '2016-03-16 18:32:41'),
(674, 41, 1, 1, '2016-03-16 18:33:46'),
(675, 44, 1, 1, '2016-03-16 18:33:50'),
(676, 45, 1, 1, '2016-03-16 18:33:52'),
(677, 47, 0, 1, '2016-03-16 18:46:53'),
(678, 116, 1, 2, '2016-03-16 18:48:23'),
(679, 49, 1, 1, '2016-03-16 18:54:39'),
(680, 62, 0, 1, '2016-03-16 18:55:28'),
(681, 26, 0, 1, '2016-03-16 19:06:20'),
(682, 26, 0, 1, '2016-03-16 19:07:37'),
(683, 26, 1, 1, '2016-03-16 19:08:33'),
(684, 26, 1, 1, '2016-03-16 19:08:39'),
(685, 27, 1, 1, '2016-03-16 19:08:47'),
(686, 26, 1, 1, '2016-03-16 19:08:49'),
(687, 26, 1, 1, '2016-03-16 19:09:13'),
(688, 29, 1, 1, '2016-03-16 19:10:25'),
(689, 27, 0, 1, '2016-03-16 19:11:33'),
(690, 27, 1, 1, '2016-03-16 19:11:49'),
(691, 63, 0, 1, '2016-03-16 19:14:23'),
(692, 63, 1, 1, '2016-03-16 19:15:22'),
(693, 63, 1, 1, '2016-03-16 19:15:43'),
(694, 56, 1, 1, '2016-03-16 19:16:07'),
(695, 56, 1, 1, '2016-03-16 19:16:27'),
(696, 35, 1, 1, '2016-03-16 19:17:27'),
(697, 15, 1, 1, '2016-03-16 19:18:58'),
(698, 13, 1, 1, '2016-03-16 19:20:01'),
(699, 14, 1, 1, '2016-03-16 19:20:11'),
(700, 15, 1, 1, '2016-03-16 19:20:21'),
(701, 13, 1, 1, '2016-03-16 19:21:55'),
(702, 16, 1, 1, '2016-03-16 19:22:57'),
(703, 19, 1, 1, '2016-03-16 19:24:20'),
(704, 16, 1, 1, '2016-03-16 19:24:38'),
(705, 19, 1, 1, '2016-03-16 19:24:58'),
(706, 16, 1, 1, '2016-03-16 19:25:14'),
(707, 103, 1, 2, '2016-03-16 19:25:55'),
(708, 13, 1, 1, '2016-03-16 19:27:22'),
(709, 14, 1, 1, '2016-03-16 19:27:34'),
(710, 8, 1, 1, '2016-03-16 19:27:46'),
(711, 150, 1, 3, '2016-03-16 19:28:19'),
(712, 196, 1, 4, '2016-03-16 19:29:41'),
(713, 18, 1, 1, '2016-03-16 19:47:47'),
(714, 19, 1, 1, '2016-03-16 19:47:53'),
(715, 20, 1, 1, '2016-03-16 19:47:55'),
(716, 48, 1, 1, '2016-03-16 19:50:34'),
(717, 49, 0, 1, '2016-03-16 19:52:33'),
(718, 49, 1, 1, '2016-03-16 19:53:42'),
(719, 48, 1, 1, '2016-03-16 19:54:13'),
(720, 48, 1, 1, '2016-03-16 19:54:21'),
(721, 9, 1, 1, '2016-03-16 19:55:56'),
(722, 1, 0, 1, '2016-03-16 20:43:46'),
(723, 1, 0, 1, '2016-03-16 20:51:09'),
(724, 1, 0, 1, '2016-03-16 21:20:31'),
(725, 39, 0, 1, '2016-03-17 18:23:19'),
(726, 40, 1, 1, '2016-03-17 18:24:47'),
(727, 5, 1, 1, '2016-03-17 18:25:28'),
(728, 212, 1, 1, '2016-03-17 18:26:00'),
(729, 88, 1, 2, '2016-03-17 18:26:31'),
(730, 1, 0, 1, '2016-03-18 18:18:08'),
(731, 209, 0, 1, '2016-03-18 18:18:29'),
(732, 59, 0, 1, '2016-03-18 18:18:39'),
(733, 142, 0, 3, '2016-03-18 18:19:09'),
(734, 148, 0, 3, '2016-03-18 18:20:14'),
(735, 153, 0, 3, '2016-03-18 18:20:46'),
(736, 1, 1, 1, '2016-03-19 19:48:44'),
(737, 1, 1, 1, '2016-03-19 19:52:57'),
(738, 1, 1, 1, '2016-03-19 19:55:24'),
(739, 1, 1, 1, '2016-03-20 17:39:26'),
(740, 41, 1, 1, '2016-03-20 17:42:08'),
(741, 166, 1, 3, '2016-03-20 17:42:50'),
(742, 86, 1, 2, '2016-03-20 17:43:34'),
(743, 8, 1, 1, '2016-03-20 17:43:52'),
(744, 216, 1, 1, '2016-03-27 16:22:27'),
(745, 218, 1, 1, '2016-03-27 16:24:06'),
(746, 216, 1, 1, '2016-03-27 16:24:32'),
(747, 218, 1, 1, '2016-03-27 16:24:45'),
(748, 2, 1, 1, '2016-03-27 16:26:31'),
(749, 88, 1, 2, '2016-03-27 16:27:09'),
(750, 196, 1, 4, '2016-03-27 16:28:50'),
(751, 167, 1, 3, '2016-03-28 05:52:27'),
(752, 141, 1, 3, '2016-03-28 05:54:02'),
(753, 203, 1, 4, '2016-03-28 05:55:01'),
(754, 142, 1, 3, '2016-03-28 05:56:27'),
(755, 89, 1, 2, '2016-03-28 07:08:49'),
(758, 169, 1, 3, '2016-03-28 16:42:08'),
(759, 1, 0, 1, '2016-04-07 05:44:42'),
(760, 2, 4, 1, '2016-04-07 08:24:38'),
(761, 3, 4, 1, '2016-04-07 15:22:59'),
(762, 3, 0, 1, '2016-04-07 15:26:14'),
(763, 4, 0, 1, '2016-04-07 15:27:47'),
(764, 3, 0, 1, '2016-04-07 15:30:20'),
(765, 3, 0, 1, '2016-04-07 15:36:47'),
(766, 31, 0, 1, '2016-04-07 16:31:04'),
(767, 3, 4, 1, '2016-04-07 16:33:45'),
(768, 16, 1, 1, '2016-04-07 19:22:22'),
(769, 43, 1, 1, '2016-04-07 19:23:28'),
(770, 53, 4, 1, '2016-04-07 19:25:15'),
(771, 45, 1, 1, '2016-04-07 19:26:26'),
(772, 53, 4, 1, '2016-04-07 19:26:56'),
(773, 45, 1, 1, '2016-04-07 19:27:28'),
(774, 7, 1, 1, '2016-04-07 20:09:48'),
(775, 1, 1, 1, '2016-04-07 20:10:10'),
(776, 11, 0, 1, '2016-04-14 15:57:51'),
(777, 11, 0, 1, '2016-04-14 15:57:58'),
(778, 2, 0, 1, '2016-04-14 16:38:06'),
(779, 1, 0, 1, '2016-04-15 19:56:41'),
(780, 1, 0, 1, '2016-04-15 19:57:18'),
(781, 1, 0, 1, '2016-05-13 05:25:18'),
(782, 1, 1, 1, '2016-05-13 05:28:52'),
(783, 1, 1, 1, '2016-05-13 05:37:29'),
(784, 1, 1, 1, '2016-05-13 05:37:47'),
(785, 92, 1, 2, '2016-05-14 14:17:45'),
(786, 1, 1, 1, '2016-05-14 14:44:24'),
(787, 4, 0, 1, '2016-05-14 15:26:09'),
(788, 4, 0, 1, '2016-05-14 15:27:08'),
(789, 4, 0, 1, '2016-05-14 15:27:21'),
(790, 4, 0, 1, '2016-05-14 15:28:18'),
(791, 1, 0, 1, '2016-05-19 20:19:38'),
(792, 1, 0, 1, '2016-05-19 20:22:54'),
(793, 1, 0, 1, '2016-05-22 11:21:45'),
(794, 1, 0, 1, '2016-05-22 11:25:06'),
(795, 1, 0, 1, '2016-05-22 11:25:58'),
(796, 1, 0, 1, '2016-05-22 11:26:37'),
(797, 1, 0, 1, '2016-05-22 11:27:03'),
(798, 1, 0, 1, '2016-05-22 11:40:30'),
(799, 1, 0, 1, '2016-05-22 11:54:28'),
(800, 1, 0, 1, '2016-05-22 11:57:24'),
(801, 1, 0, 1, '2016-05-22 17:51:44'),
(802, 1, 0, 1, '2016-05-22 18:27:38'),
(803, 1, 0, 1, '2016-05-22 18:28:13'),
(804, 1, 0, 1, '2016-05-22 18:33:41'),
(805, 1, 0, 1, '2016-09-12 15:09:19'),
(806, 1, 0, 1, '2016-09-12 18:31:58'),
(807, 2, 0, 1, '2016-09-12 18:32:58'),
(808, 1, 0, 1, '2016-09-12 18:34:40'),
(809, 11, 0, 1, '2016-09-12 18:38:50'),
(810, 2, 0, 1, '2016-09-12 18:40:03'),
(811, 1, 0, 1, '2016-09-21 15:26:19'),
(812, 1, 0, 1, '2016-11-07 20:54:11'),
(813, 1, 0, 1, '2016-11-07 20:56:09'),
(814, 93, 1, 2, '2016-11-08 13:23:25'),
(815, 63, 1, 1, '2016-11-08 13:24:14'),
(816, 31, 1, 1, '2016-11-08 13:27:23'),
(817, 31, 1, 1, '2016-11-08 13:27:33'),
(818, 45, 1, 1, '2016-11-08 13:28:02'),
(819, 45, 1, 1, '2016-11-08 13:28:12'),
(820, 1, 0, 1, '2016-12-03 20:14:05'),
(821, 15, 1, 1, '2016-12-15 18:10:41'),
(822, 15, 1, 1, '2016-12-15 18:19:56'),
(823, 2, 1, 1, '2016-12-26 20:06:54'),
(824, 2, 1, 1, '2016-12-26 20:15:08'),
(825, 2, 1, 1, '2016-12-26 20:15:41'),
(826, 1, 0, 1, '2017-01-16 12:30:31'),
(827, 1, 0, 1, '2017-01-21 18:27:30'),
(828, 1, 0, 1, '2017-01-23 19:31:40'),
(829, 1, 0, 1, '2017-01-23 19:32:56'),
(830, 1, 0, 1, '2017-01-23 19:39:03'),
(831, 1, 0, 1, '2017-01-23 19:39:46'),
(832, 1, 0, 1, '2017-01-23 20:19:14'),
(833, 1, 0, 1, '2017-01-23 20:27:20'),
(834, 1, 0, 1, '2017-01-23 20:28:06'),
(835, 1, 0, 1, '2017-01-23 20:28:56'),
(836, 1, 0, 1, '2017-01-23 20:39:10'),
(837, 1, 0, 1, '2017-01-23 20:41:44'),
(838, 1, 0, 1, '2017-01-23 20:43:12'),
(839, 1, 0, 1, '2017-01-23 20:43:45'),
(840, 1, 0, 1, '2017-01-23 20:46:51'),
(841, 1, 0, 1, '2017-01-23 20:48:24'),
(842, 1, 0, 1, '2017-01-23 20:54:34'),
(843, 1, 0, 1, '2017-01-23 21:00:49'),
(844, 1, 0, 1, '2017-01-23 21:04:33'),
(845, 1, 0, 1, '2017-01-23 21:07:58'),
(846, 1, 1, 1, '2017-01-23 21:16:50'),
(847, 1, 1, 1, '2017-01-24 20:52:34'),
(848, 1, 1, 1, '2017-01-24 20:55:08'),
(849, 1, 1, 1, '2017-01-24 21:15:39'),
(850, 1, 1, 1, '2017-01-24 21:19:19'),
(851, 1, 1, 1, '2017-01-24 21:20:16'),
(852, 1, 1, 1, '2017-01-24 21:20:54'),
(853, 1, 1, 1, '2017-01-24 21:23:13'),
(854, 1, 1, 1, '2017-01-24 21:23:29'),
(855, 1, 1, 1, '2017-01-24 21:26:34'),
(856, 1, 1, 1, '2017-01-24 21:30:37'),
(857, 1, 1, 1, '2017-01-25 18:52:21'),
(858, 1, 1, 1, '2017-01-25 19:04:08'),
(859, 1, 1, 1, '2017-01-25 19:49:57'),
(860, 1, 1, 1, '2017-01-25 19:56:18'),
(861, 1, 1, 1, '2017-01-25 19:57:07'),
(862, 1, 0, 1, '2017-01-26 20:49:31'),
(863, 1, 0, 1, '2017-01-26 21:09:23'),
(864, 7, 0, 1, '2017-01-26 21:50:19'),
(865, 7, 0, 1, '2017-01-27 20:20:02'),
(866, 1, 0, 1, '2017-01-29 08:03:56'),
(867, 1, 0, 1, '2017-02-22 20:47:14'),
(868, 1, 1, 1, '2017-02-23 20:17:54'),
(869, 1, 1, 1, '2017-02-23 20:35:18'),
(870, 1, 1, 1, '2017-02-23 20:36:56'),
(871, 1, 1, 1, '2017-02-23 20:42:54'),
(872, 1, 1, 1, '2017-02-23 20:55:07'),
(873, 1, 1, 1, '2017-02-23 20:55:42'),
(874, 1, 1, 1, '2017-02-23 20:58:03'),
(875, 1, 1, 1, '2017-02-23 21:05:58'),
(876, 1, 0, 1, '2017-02-23 21:25:43'),
(877, 1, 0, 1, '2017-03-03 18:20:09'),
(878, 1, 0, 1, '2017-03-03 18:28:37'),
(879, 1, 0, 1, '2017-03-03 18:28:44'),
(880, 2, 0, 1, '2017-03-03 18:30:09'),
(881, 1, 0, 1, '2017-03-03 18:36:57'),
(882, 1, 0, 1, '2017-03-03 19:00:23'),
(883, 1, 0, 1, '2017-03-03 19:04:53'),
(884, 1, 0, 1, '2017-03-03 20:47:16'),
(885, 1, 0, 1, '2017-03-05 20:25:48'),
(886, 1, 1, 1, '2017-03-13 18:32:41'),
(887, 12, 1, 1, '2017-03-14 07:58:27'),
(888, 1, 0, 1, '2017-03-15 05:40:09'),
(889, 1, 1, 1, '2017-03-15 05:57:40'),
(890, 10, 1, 1, '2017-03-15 05:58:20'),
(891, 1, 1, 1, '2017-03-15 17:54:17'),
(892, 1, 0, 1, '2017-03-15 17:59:31'),
(893, 86, 0, 2, '2017-03-15 18:00:52'),
(894, 1, 0, 1, '2017-03-18 18:25:28'),
(895, 5, 0, 1, '2017-03-18 18:25:35'),
(896, 31, 0, 1, '2017-03-18 18:25:42'),
(897, 32, 0, 1, '2017-03-18 18:25:47'),
(898, 34, 0, 1, '2017-03-18 18:25:52'),
(899, 51, 0, 1, '2017-03-18 18:25:59'),
(900, 1, 0, 1, '2017-03-18 18:26:08'),
(901, 4, 0, 1, '2017-03-18 18:26:17'),
(902, 6, 0, 1, '2017-03-18 18:26:21'),
(903, 100, 0, 2, '2017-03-18 18:26:30'),
(904, 86, 0, 2, '2017-03-18 18:26:37'),
(905, 95, 0, 2, '2017-03-18 18:26:48'),
(906, 96, 0, 2, '2017-03-18 18:26:51'),
(907, 1, 0, 1, '2017-03-18 20:51:01'),
(908, 100, 0, 2, '2017-03-18 20:51:43'),
(909, 5, 1, 1, '2017-03-18 20:59:59'),
(910, 5, 0, 1, '2017-03-18 21:03:04'),
(911, 100, 0, 2, '2017-03-18 21:04:41'),
(912, 3, 1, 1, '2017-03-19 11:35:21'),
(913, 1, 0, 1, '2017-03-19 18:23:12'),
(914, 1, 0, 1, '2017-03-24 19:12:00'),
(915, 1, 0, 1, '2017-05-12 08:48:32'),
(916, 1, 0, 1, '2017-05-12 08:54:45'),
(917, 5, 0, 1, '2017-05-12 08:54:59'),
(918, 1, 0, 1, '2017-05-13 14:07:09'),
(919, 1, 0, 1, '2017-05-14 11:31:20'),
(920, 1, 0, 1, '2017-05-26 07:16:33'),
(921, 1, 0, 1, '2017-06-10 19:20:32'),
(922, 1, 0, 1, '2017-06-10 19:30:55'),
(923, 1, 0, 1, '2017-06-11 10:07:56'),
(924, 1, 0, 1, '2017-06-11 10:10:32'),
(925, 1, 0, 1, '2017-06-11 10:17:52'),
(926, 1, 0, 1, '2017-06-13 17:17:06'),
(927, 1, 0, 1, '2017-06-13 17:18:48'),
(928, 5, 0, 1, '2017-06-13 17:18:57'),
(929, 100, 0, 2, '2017-06-13 17:19:28'),
(930, 1, 0, 1, '2017-06-18 16:54:04'),
(931, 1, 0, 1, '2017-09-18 05:38:42'),
(932, 85, 0, 1, '2017-10-08 09:51:37'),
(933, 85, 1, 1, '2017-10-08 09:52:22'),
(934, 85, 1, 1, '2017-10-08 09:55:02'),
(935, 81, 1, 1, '2017-10-08 09:55:22'),
(936, 1, 1, 1, '2017-10-08 10:25:23'),
(937, 2, 0, 1, '2017-10-08 10:31:26'),
(938, 1, 0, 1, '2017-11-09 07:46:36'),
(939, 5, 0, 1, '2017-11-09 07:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('f17jq3d21uu4cehpb4ua3tpkjgc6bf9d', '::1', 1548791148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739313134383b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b),
('j2ijtisrod82giuv61n8u8hrbvv005t5', '::1', 1548791700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739313730303b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b),
('92ahsovmla509icete8958l6ni16t39v', '::1', 1548792004, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739323030313b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b636974795f69647c733a313a2231223b616374696f6e7c733a393a22636974795f6c697374223b),
('j3l7rokp77602m2f4a21g4dr122t11uf', '::1', 1548792305, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739323330353b616374696f6e7c733a393a22636974795f6c697374223b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b),
('dgm0ftkqpif2e5snheji5pb2fhor732k', '::1', 1548792782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739323738323b616374696f6e7c733a393a22636974795f65646974223b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b636974795f69647c733a313a2231223b),
('bp8tij0sf5cbemv58f9v8hlt06u6dlgv', '::1', 1548792315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739323331353b),
('l4i9r6sur8hf3mbmg3n0ndir6mejjoo6', '::1', 1548792315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739323331353b),
('4e4d2mrohjmg1201c8n1bifg94mh0sbj', '::1', 1548792316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739323331353b),
('8nlrd24hoitpf9if71i0in72g6un5n3a', '::1', 1548792316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739323331363b),
('lvmm55jghqk9e42iv0fsr1e4phjrbjcl', '::1', 1548793084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739333038343b616374696f6e7c733a393a22636974795f65646974223b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b636974795f69647c733a313a2231223b737563636573737c733a34313a224369747920496e666f726d6174696f6e206973207375636365737366756c6c7920757064617465642e223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('m5h8stbuqs14v7va1srgidqut71q646e', '::1', 1548793405, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739333430353b616374696f6e7c733a393a22636974795f65646974223b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b),
('nauol2v6671rka028oi1mg0dou2b4f4b', '::1', 1548793717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739333731373b616374696f6e7c733a393a22636974795f65646974223b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b),
('j83cpci1dsq9bf83m7n45v31cv2gvf80', '::1', 1548794859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739343835393b616374696f6e7c733a393a22636974795f6c697374223b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b636974795f69647c733a313a2232223b),
('8k5njnh20dpkukd9vv7shb369llctjv9', '::1', 1548794273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739343237333b616374696f6e7c733a393a22636974795f65646974223b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b),
('lkkmhv6g7hpf195u5pgbtg0q2n443ta3', '::1', 1548795368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739353336383b616374696f6e7c733a393a22636974795f6c697374223b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b636974795f69647c733a313a2232223b),
('ji55jfnvv961l7sms6a6jk47p96e5tcb', '::1', 1548795678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739353637383b616374696f6e7c733a393a22636974795f6c697374223b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b636974795f69647c733a313a2231223b),
('eenauhqph9bf1fsdhjglnj7rohvjafmr', '::1', 1548796007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739363030373b616374696f6e7c733a393a22636974795f65646974223b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b636974795f69647c733a313a2233223b737563636573737c733a34313a224369747920636f7665722070686f746f206973207375636365737366756c6c792064656c657465642e223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('jrn50ca809j323fas57rqidminbbpfv1', '::1', 1548798023, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739383032333b616374696f6e7c733a393a22636974795f6c697374223b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b636974795f69647c733a313a2233223b),
('7ng1a9cmqb804bckdbjbv6hb6p087n47', '::1', 1548798366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739383336363b616374696f6e7c733a393a22636974795f6c697374223b6572726f727c733a32333a22557365726e616d6520646f6573206e6f74206578697374223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('vrm75brauvjjabvk6aj7mhgvli830irg', '::1', 1548798417, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383739383336363b616374696f6e7c733a393a22636974795f6c697374223b6572726f727c733a32333a22557365726e616d6520646f6573206e6f74206578697374223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('6q9p6217rv2l4if58c1d3o7va44rcgkg', '::1', 1548846499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383834363439393b),
('ujg6ml1e38gve9h5ij4g7elc46f59m0e', '::1', 1548846987, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383834363938373b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b636974795f69647c733a313a2231223b616374696f6e7c733a393a22636974795f6c697374223b),
('vh5b1tnqr4o7kv46nhnip4t7bqitslbc', '::1', 1548847095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383834363938373b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b636974795f69647c733a313a2231223b616374696f6e7c733a393a22636974795f6c697374223b),
('0t0aoe3ektq3kn77j1kbve7lavo94c6a', '::1', 1548878392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383837383339323b),
('sk6ao9ti40cu2pudh8d8g3vm9r1jain8', '::1', 1548920027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383932303032373b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b636974795f69647c733a313a2231223b616374696f6e7c733a393a22636974795f6c697374223b),
('q2jqvk9s4hc9904gq4k2v4td9261b1f0', '::1', 1548920031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383932303032373b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b636974795f69647c733a313a2231223b616374696f6e7c733a393a22636974795f6c697374223b),
('9hc363h1am23sj6vp20v1seoscegg9aj', '::1', 1548921957, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383932313835343b757365725f69647c733a313a2231223b69735f6f776e65727c733a313a2231223b726f6c655f69647c733a313a2231223b616c6c6f775f636974795f69647c693a303b69735f636974795f61646d696e7c693a303b69735f66726f6e74656e645f757365727c623a303b636974795f69647c733a313a2231223b616374696f6e7c733a393a22636974795f6c697374223b);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `be_modules`
--
ALTER TABLE `be_modules`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `be_paypal_config`
--
ALTER TABLE `be_paypal_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `be_roles`
--
ALTER TABLE `be_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `be_users`
--
ALTER TABLE `be_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `cd_about`
--
ALTER TABLE `cd_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_appusers`
--
ALTER TABLE `cd_appusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_categories`
--
ALTER TABLE `cd_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_cities`
--
ALTER TABLE `cd_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_codes`
--
ALTER TABLE `cd_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_favourites`
--
ALTER TABLE `cd_favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_feeds`
--
ALTER TABLE `cd_feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_follows`
--
ALTER TABLE `cd_follows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_gcm_tokens`
--
ALTER TABLE `cd_gcm_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_images`
--
ALTER TABLE `cd_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_inquiries`
--
ALTER TABLE `cd_inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_items`
--
ALTER TABLE `cd_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_likes`
--
ALTER TABLE `cd_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_ratings`
--
ALTER TABLE `cd_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_reviews`
--
ALTER TABLE `cd_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_sub_categories`
--
ALTER TABLE `cd_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_touches`
--
ALTER TABLE `cd_touches`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `be_modules`
--
ALTER TABLE `be_modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `be_paypal_config`
--
ALTER TABLE `be_paypal_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `be_roles`
--
ALTER TABLE `be_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `be_users`
--
ALTER TABLE `be_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cd_about`
--
ALTER TABLE `cd_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cd_appusers`
--
ALTER TABLE `cd_appusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cd_categories`
--
ALTER TABLE `cd_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cd_cities`
--
ALTER TABLE `cd_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cd_codes`
--
ALTER TABLE `cd_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cd_favourites`
--
ALTER TABLE `cd_favourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `cd_feeds`
--
ALTER TABLE `cd_feeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cd_follows`
--
ALTER TABLE `cd_follows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cd_gcm_tokens`
--
ALTER TABLE `cd_gcm_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cd_images`
--
ALTER TABLE `cd_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=603;

--
-- AUTO_INCREMENT for table `cd_inquiries`
--
ALTER TABLE `cd_inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cd_items`
--
ALTER TABLE `cd_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `cd_likes`
--
ALTER TABLE `cd_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `cd_ratings`
--
ALTER TABLE `cd_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cd_reviews`
--
ALTER TABLE `cd_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `cd_sub_categories`
--
ALTER TABLE `cd_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `cd_touches`
--
ALTER TABLE `cd_touches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=940;
