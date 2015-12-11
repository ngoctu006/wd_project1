-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 11, 2015 at 06:03 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wd_project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=91 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-12-10 09:05:47', '2015-12-10 08:05:47', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2015-12-10 09:05:47', '2015-12-10 08:05:47', '', 0, 'http://localhost/wd_project1/?p=1', 0, 'post', '', 1),
(2, 1, '2015-12-10 09:05:47', '2015-12-10 08:05:47', 'Voici un exemple de page. Elle est différente d''un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/wd_project1/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d&rsquo;exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2015-12-10 09:05:47', '2015-12-10 08:05:47', '', 0, 'http://localhost/wd_project1/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-12-10 09:05:54', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-12-10 09:05:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?p=3', 0, 'post', '', 0),
(4, 1, '2015-12-11 03:59:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 03:59:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=4', 0, 'boucherie', '', 0),
(5, 1, '2015-12-11 03:59:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 03:59:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=5', 0, 'boucherie', '', 0),
(6, 1, '2015-12-11 03:59:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 03:59:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=6', 0, 'boucherie', '', 0),
(7, 1, '2015-12-11 04:02:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 04:02:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=7', 0, 'boucherie', '', 0),
(8, 1, '2015-12-11 04:03:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2015-12-11 04:03:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=8', 0, 'boucherie', '', 0),
(9, 1, '2015-12-11 04:04:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 04:04:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=9', 0, 'boucherie', '', 0),
(10, 1, '2015-12-11 04:04:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 04:04:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=10', 0, 'boucherie', '', 0),
(11, 1, '2015-12-11 04:04:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 04:04:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=11', 0, 'boucherie', '', 0),
(12, 1, '2015-12-11 04:04:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 04:04:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=12', 0, 'boucherie', '', 0),
(13, 1, '2015-12-11 04:04:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2015-12-11 04:04:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=13', 0, 'boucherie', '', 0),
(14, 1, '2015-12-11 04:05:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 04:05:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=14', 0, 'boucherie', '', 0),
(15, 1, '2015-12-11 04:07:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 04:07:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=15', 0, 'boucherie', '', 0),
(16, 1, '2015-12-11 04:07:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 04:07:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=16', 0, 'boucherie', '', 0),
(17, 1, '2015-12-11 04:07:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 04:07:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=17', 0, 'boucherie', '', 0),
(18, 1, '2015-12-11 04:08:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 04:08:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=18', 0, 'boucherie', '', 0),
(19, 1, '2015-12-11 04:09:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 04:09:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=19', 0, 'boucherie', '', 0),
(20, 1, '2015-12-11 04:09:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 04:09:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=20', 0, 'boucherie', '', 0),
(21, 1, '2015-12-11 04:09:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 04:09:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=21', 0, 'boucherie', '', 0),
(22, 1, '2015-12-11 04:11:19', '2015-12-11 03:11:19', '', '1 kg de Daube', '', 'publish', 'closed', 'closed', '', '1-kg-de-daube', '', '', '2015-12-11 04:11:19', '2015-12-11 03:11:19', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=22', 0, 'boucherie', '', 0),
(23, 1, '2015-12-11 04:11:40', '2015-12-11 03:11:40', '', '1 kg de Boulettes', '', 'publish', 'closed', 'closed', '', '1-kg-de-boulettes', '', '', '2015-12-11 04:12:12', '2015-12-11 03:12:12', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=23', 0, 'boucherie', '', 0),
(24, 1, '2015-12-11 04:12:24', '2015-12-11 03:12:24', '', '1 kg d''Alouettes', '', 'publish', 'closed', 'closed', '', '1-kg-dalouettes', '', '', '2015-12-11 04:12:33', '2015-12-11 03:12:33', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=24', 0, 'boucherie', '', 0),
(25, 1, '2015-12-11 04:12:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2015-12-11 04:12:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&p=25', 0, 'boucherie', '', 0),
(26, 1, '2015-12-11 04:12:39', '2015-12-11 03:12:39', '', '1 kg de Viande hachée', '', 'publish', 'closed', 'closed', '', '1-kg-de-viande-hachee', '', '', '2015-12-11 04:12:39', '2015-12-11 03:12:39', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=26', 0, 'boucherie', '', 0),
(27, 1, '2015-12-11 04:12:52', '2015-12-11 03:12:52', '', '1 kg de Roti de Porc épaule', '', 'publish', 'closed', 'closed', '', '1-kg-de-roti-de-porc-epaule', '', '', '2015-12-11 04:12:52', '2015-12-11 03:12:52', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=27', 0, 'boucherie', '', 0),
(28, 1, '2015-12-11 04:13:00', '2015-12-11 03:13:00', '', '1 kg de Côtes de Porcs', '', 'publish', 'closed', 'closed', '', '1-kg-de-cotes-de-porcs', '', '', '2015-12-11 04:13:00', '2015-12-11 03:13:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=28', 0, 'boucherie', '', 0),
(29, 1, '2015-12-11 04:13:08', '2015-12-11 03:13:08', '', '1 kg de Chipolatas', '', 'publish', 'closed', 'closed', '', '1-kg-de-chipolatas', '', '', '2015-12-11 04:13:08', '2015-12-11 03:13:08', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=29', 0, 'boucherie', '', 0),
(30, 1, '2015-12-11 04:13:16', '2015-12-11 03:13:16', '', '1 kg de Merguez', '', 'publish', 'closed', 'closed', '', '1-kg-de-merguez', '', '', '2015-12-11 04:13:16', '2015-12-11 03:13:16', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=30', 0, 'boucherie', '', 0),
(31, 1, '2015-12-11 04:13:23', '2015-12-11 03:13:23', '', '1 kg cuisses poulet', '', 'publish', 'closed', 'closed', '', '1-kg-cuisses-poulet', '', '', '2015-12-11 04:13:23', '2015-12-11 03:13:23', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=31', 0, 'boucherie', '', 0),
(32, 1, '2015-12-11 04:13:30', '2015-12-11 03:13:30', '', '1 kg de cuisses de Dinde', '', 'publish', 'closed', 'closed', '', '1-kg-de-cuisses-de-dinde', '', '', '2015-12-11 04:13:30', '2015-12-11 03:13:30', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=32', 0, 'boucherie', '', 0),
(33, 1, '2015-12-11 04:15:03', '2015-12-11 03:15:03', '', '1 kg de cotes de porc', '', 'publish', 'closed', 'closed', '', '1-kg-de-cotes-de-porc', '', '', '2015-12-11 04:15:03', '2015-12-11 03:15:03', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=33', 0, 'boucherie', '', 0),
(34, 1, '2015-12-11 04:15:15', '2015-12-11 03:15:15', '', '1 kg civet de porc', '', 'publish', 'closed', 'closed', '', '1-kg-civet-de-porc', '', '', '2015-12-11 04:15:15', '2015-12-11 03:15:15', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=34', 0, 'boucherie', '', 0),
(35, 1, '2015-12-11 04:15:28', '2015-12-11 03:15:28', '', '1 kg roti porc épaule', '', 'publish', 'closed', 'closed', '', '1-kg-roti-porc-epaule', '', '', '2015-12-11 04:15:28', '2015-12-11 03:15:28', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=35', 0, 'boucherie', '', 0),
(36, 1, '2015-12-11 04:15:36', '2015-12-11 03:15:36', '', '1 kg de cuisses de dinde', '', 'publish', 'closed', 'closed', '', '1-kg-de-cuisses-de-dinde-2', '', '', '2015-12-11 04:15:36', '2015-12-11 03:15:36', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=36', 0, 'boucherie', '', 0),
(37, 1, '2015-12-11 04:15:48', '2015-12-11 03:15:48', '', '1 kg de merguez', '', 'publish', 'closed', 'closed', '', '1-kg-de-merguez-2', '', '', '2015-12-11 04:15:48', '2015-12-11 03:15:48', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=37', 0, 'boucherie', '', 0),
(38, 1, '2015-12-11 04:15:57', '2015-12-11 03:15:57', '', '1 kg de boulettes de boeuf', '', 'publish', 'closed', 'closed', '', '1-kg-de-boulettes-de-boeuf', '', '', '2015-12-11 04:15:57', '2015-12-11 03:15:57', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=38', 0, 'boucherie', '', 0),
(39, 1, '2015-12-11 04:16:05', '2015-12-11 03:16:05', '', '1 kg de cuisses de poulet', '', 'publish', 'closed', 'closed', '', '1-kg-de-cuisses-de-poulet', '', '', '2015-12-11 04:16:05', '2015-12-11 03:16:05', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=39', 0, 'boucherie', '', 0),
(40, 1, '2015-12-11 04:16:18', '2015-12-11 03:16:18', '', '1 kg alouettes', '', 'publish', 'closed', 'closed', '', '1-kg-alouettes', '', '', '2015-12-11 04:16:18', '2015-12-11 03:16:18', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=40', 0, 'boucherie', '', 0),
(41, 1, '2015-12-11 04:16:41', '2015-12-11 03:16:41', '', '1 kg de daube', '', 'publish', 'closed', 'closed', '', '1-kg-de-daube-2', '', '', '2015-12-11 04:16:41', '2015-12-11 03:16:41', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=41', 0, 'boucherie', '', 0),
(42, 1, '2015-12-11 04:16:53', '2015-12-11 03:16:53', '', '1 kg de viande hâchée', '', 'publish', 'closed', 'closed', '', '1-kg-de-viande-hachee-2', '', '', '2015-12-11 04:16:53', '2015-12-11 03:16:53', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=42', 0, 'boucherie', '', 0),
(43, 1, '2015-12-11 04:17:06', '2015-12-11 03:17:06', '', '1 kg de chipolatas', '', 'publish', 'closed', 'closed', '', '1-kg-de-chipolatas-2', '', '', '2015-12-11 04:17:06', '2015-12-11 03:17:06', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=43', 0, 'boucherie', '', 0),
(44, 1, '2015-12-11 04:17:21', '2015-12-11 03:17:21', '', '1 kg de saucisse italienne', '', 'publish', 'closed', 'closed', '', '1-kg-de-saucisse-italienne', '', '', '2015-12-11 04:17:21', '2015-12-11 03:17:21', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=44', 0, 'boucherie', '', 0),
(45, 1, '2015-12-11 04:17:29', '2015-12-11 03:17:29', '', '1 kg de saucisse italienne', '', 'publish', 'closed', 'closed', '', '1-kg-de-saucisse-italienne-2', '', '', '2015-12-11 04:17:29', '2015-12-11 03:17:29', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=45', 0, 'boucherie', '', 0),
(46, 1, '2015-12-11 04:17:39', '2015-12-11 03:17:39', '', '1 kg de fricassé', '', 'publish', 'closed', 'closed', '', '1-kg-de-fricasse', '', '', '2015-12-11 04:17:39', '2015-12-11 03:17:39', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=46', 0, 'boucherie', '', 0),
(47, 1, '2015-12-11 04:18:19', '2015-12-11 03:18:19', '', '1 kg de cotes de porc', '', 'publish', 'closed', 'closed', '', '1-kg-de-cotes-de-porc-2', '', '', '2015-12-11 04:18:19', '2015-12-11 03:18:19', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=47', 0, 'boucherie', '', 0),
(48, 1, '2015-12-11 04:18:29', '2015-12-11 03:18:29', '', '1 kg civet de porc', '', 'publish', 'closed', 'closed', '', '1-kg-civet-de-porc-2', '', '', '2015-12-11 04:18:29', '2015-12-11 03:18:29', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=48', 0, 'boucherie', '', 0),
(49, 1, '2015-12-11 04:18:52', '2015-12-11 03:18:52', '', '1 kg roti porc épaule', '', 'publish', 'closed', 'closed', '', '1-kg-roti-porc-epaule-2', '', '', '2015-12-11 04:18:52', '2015-12-11 03:18:52', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=49', 0, 'boucherie', '', 0),
(50, 1, '2015-12-11 04:19:03', '2015-12-11 03:19:03', '', '1 kg de cuisses de dinde', '', 'publish', 'closed', 'closed', '', '1-kg-de-cuisses-de-dinde-3', '', '', '2015-12-11 04:19:03', '2015-12-11 03:19:03', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=50', 0, 'boucherie', '', 0),
(51, 1, '2015-12-11 04:19:11', '2015-12-11 03:19:11', '', '1 kg de merguez', '', 'publish', 'closed', 'closed', '', '1-kg-de-merguez-3', '', '', '2015-12-11 04:19:11', '2015-12-11 03:19:11', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=51', 0, 'boucherie', '', 0),
(52, 1, '2015-12-11 04:19:24', '2015-12-11 03:19:24', '', '1 kg de boulettes de boeuf', '', 'publish', 'closed', 'closed', '', '1-kg-de-boulettes-de-boeuf-2', '', '', '2015-12-11 04:19:24', '2015-12-11 03:19:24', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=52', 0, 'boucherie', '', 0),
(53, 1, '2015-12-11 04:19:45', '2015-12-11 03:19:45', '', '1 kg de cuisses de poulet', '', 'publish', 'closed', 'closed', '', '1-kg-de-cuisses-de-poulet-2', '', '', '2015-12-11 04:19:45', '2015-12-11 03:19:45', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=53', 0, 'boucherie', '', 0),
(54, 1, '2015-12-11 04:20:01', '2015-12-11 03:20:01', '', '1 kg alouettes', '', 'publish', 'closed', 'closed', '', '1-kg-alouettes-2', '', '', '2015-12-11 04:20:01', '2015-12-11 03:20:01', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=54', 0, 'boucherie', '', 0),
(55, 1, '2015-12-11 04:20:13', '2015-12-11 03:20:13', '', '1 kg de daube', '', 'publish', 'closed', 'closed', '', '1-kg-de-daube-3', '', '', '2015-12-11 04:20:13', '2015-12-11 03:20:13', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=55', 0, 'boucherie', '', 0),
(56, 1, '2015-12-11 04:20:21', '2015-12-11 03:20:21', '', '1 kg de viande hâchée', '', 'publish', 'closed', 'closed', '', '1-kg-de-viande-hachee-3', '', '', '2015-12-11 04:20:21', '2015-12-11 03:20:21', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=56', 0, 'boucherie', '', 0),
(57, 1, '2015-12-11 04:20:34', '2015-12-11 03:20:34', '', '1 kg de chipolatas', '', 'publish', 'closed', 'closed', '', '1-kg-de-chipolatas-3', '', '', '2015-12-11 04:20:34', '2015-12-11 03:20:34', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=57', 0, 'boucherie', '', 0),
(58, 1, '2015-12-11 04:20:47', '2015-12-11 03:20:47', '', '1 kg de saucisse italienne', '', 'publish', 'closed', 'closed', '', '1-kg-de-saucisse-italienne-3', '', '', '2015-12-11 04:20:47', '2015-12-11 03:20:47', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=58', 0, 'boucherie', '', 0),
(59, 1, '2015-12-11 04:20:59', '2015-12-11 03:20:59', '', '1 kg de fricassé', '', 'publish', 'closed', 'closed', '', '1-kg-de-fricasse-2', '', '', '2015-12-11 04:20:59', '2015-12-11 03:20:59', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=59', 0, 'boucherie', '', 0),
(60, 1, '2015-12-11 04:21:40', '2015-12-11 03:21:40', '', '1 kg steaks hachés', '', 'publish', 'closed', 'closed', '', '1-kg-steaks-haches', '', '', '2015-12-11 04:21:40', '2015-12-11 03:21:40', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=60', 0, 'boucherie', '', 0),
(61, 1, '2015-12-11 04:21:50', '2015-12-11 03:21:50', '', '1 kg de roti de boeuf', '', 'publish', 'closed', 'closed', '', '1-kg-de-roti-de-boeuf', '', '', '2015-12-11 04:21:50', '2015-12-11 03:21:50', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=61', 0, 'boucherie', '', 0),
(62, 1, '2015-12-11 04:22:03', '2015-12-11 03:22:03', '', '1 kg de fondue', '', 'publish', 'closed', 'closed', '', '1-kg-de-fondue', '', '', '2015-12-11 04:22:19', '2015-12-11 03:22:19', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=62', 0, 'boucherie', '', 0),
(63, 1, '2015-12-11 04:22:40', '2015-12-11 03:22:40', '', '1 kg de cotes de porc', '', 'publish', 'closed', 'closed', '', '1-kg-de-cotes-de-porc-3', '', '', '2015-12-11 04:22:40', '2015-12-11 03:22:40', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=63', 0, 'boucherie', '', 0),
(64, 1, '2015-12-11 04:22:52', '2015-12-11 03:22:52', '', '1 kg civet de porc', '', 'publish', 'closed', 'closed', '', '1-kg-civet-de-porc-3', '', '', '2015-12-11 04:22:52', '2015-12-11 03:22:52', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=64', 0, 'boucherie', '', 0),
(65, 1, '2015-12-11 04:23:10', '2015-12-11 03:23:10', '', '1 kg roti porc épaule', '', 'publish', 'closed', 'closed', '', '1-kg-roti-porc-epaule-3', '', '', '2015-12-11 04:23:10', '2015-12-11 03:23:10', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=65', 0, 'boucherie', '', 0),
(66, 1, '2015-12-11 04:23:21', '2015-12-11 03:23:21', '', '1 kg de cuisses de dinde', '', 'publish', 'closed', 'closed', '', '1-kg-de-cuisses-de-dinde-4', '', '', '2015-12-11 04:23:21', '2015-12-11 03:23:21', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=66', 0, 'boucherie', '', 0),
(67, 1, '2015-12-11 04:23:32', '2015-12-11 03:23:32', '', '1 kg de merguez', '', 'publish', 'closed', 'closed', '', '1-kg-de-merguez-4', '', '', '2015-12-11 04:23:32', '2015-12-11 03:23:32', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=67', 0, 'boucherie', '', 0),
(68, 1, '2015-12-11 04:23:44', '2015-12-11 03:23:44', '', '1 kg de boulettes de boeuf', '', 'publish', 'closed', 'closed', '', '1-kg-de-boulettes-de-boeuf-3', '', '', '2015-12-11 04:23:44', '2015-12-11 03:23:44', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=68', 0, 'boucherie', '', 0),
(69, 1, '2015-12-11 04:23:53', '2015-12-11 03:23:53', '', '1 kg de cuisses de poulet', '', 'publish', 'closed', 'closed', '', '1-kg-de-cuisses-de-poulet-3', '', '', '2015-12-11 04:23:53', '2015-12-11 03:23:53', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=69', 0, 'boucherie', '', 0),
(70, 1, '2015-12-11 04:24:00', '2015-12-11 03:24:00', '', '1 kg alouettes', '', 'publish', 'closed', 'closed', '', '1-kg-alouettes-3', '', '', '2015-12-11 04:24:00', '2015-12-11 03:24:00', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=70', 0, 'boucherie', '', 0),
(71, 1, '2015-12-11 04:24:09', '2015-12-11 03:24:09', '', '1 kg de daube', '', 'publish', 'closed', 'closed', '', '1-kg-de-daube-4', '', '', '2015-12-11 04:24:09', '2015-12-11 03:24:09', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=71', 0, 'boucherie', '', 0),
(72, 1, '2015-12-11 04:24:19', '2015-12-11 03:24:19', '', '1 kg de viande hâchée', '', 'publish', 'closed', 'closed', '', '1-kg-de-viande-hachee-4', '', '', '2015-12-11 04:24:19', '2015-12-11 03:24:19', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=72', 0, 'boucherie', '', 0),
(73, 1, '2015-12-11 04:24:28', '2015-12-11 03:24:28', '', '1 kg de chipolatas', '', 'publish', 'closed', 'closed', '', '1-kg-de-chipolatas-4', '', '', '2015-12-11 04:24:28', '2015-12-11 03:24:28', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=73', 0, 'boucherie', '', 0),
(74, 1, '2015-12-11 04:24:39', '2015-12-11 03:24:39', '', '1 kg de saucisse italienne', '', 'publish', 'closed', 'closed', '', '1-kg-de-saucisse-italienne-4', '', '', '2015-12-11 04:24:39', '2015-12-11 03:24:39', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=74', 0, 'boucherie', '', 0),
(75, 1, '2015-12-11 04:24:48', '2015-12-11 03:24:48', '', '1 kg de fricassé', '', 'publish', 'closed', 'closed', '', '1-kg-de-fricasse-3', '', '', '2015-12-11 04:24:48', '2015-12-11 03:24:48', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=75', 0, 'boucherie', '', 0),
(76, 1, '2015-12-11 04:27:53', '2015-12-11 03:27:53', '', '1 kg steaks hachés', '', 'publish', 'closed', 'closed', '', '1-kg-steaks-haches-2', '', '', '2015-12-11 04:27:53', '2015-12-11 03:27:53', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=76', 0, 'boucherie', '', 0),
(77, 1, '2015-12-11 04:28:02', '2015-12-11 03:28:02', '', '1 kg de roti de boeuf', '', 'publish', 'closed', 'closed', '', '1-kg-de-roti-de-boeuf-2', '', '', '2015-12-11 04:28:02', '2015-12-11 03:28:02', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=77', 0, 'boucherie', '', 0),
(78, 1, '2015-12-11 04:28:09', '2015-12-11 03:28:09', '', '1 kg de fondue', '', 'publish', 'closed', 'closed', '', '1-kg-de-fondue-2', '', '', '2015-12-11 04:28:09', '2015-12-11 03:28:09', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=78', 0, 'boucherie', '', 0),
(79, 1, '2015-12-11 04:28:17', '2015-12-11 03:28:17', '', '1 kg de piece ronde', '', 'publish', 'closed', 'closed', '', '1-kg-de-piece-ronde', '', '', '2015-12-11 04:28:17', '2015-12-11 03:28:17', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=79', 0, 'boucherie', '', 0),
(80, 1, '2015-12-11 04:28:25', '2015-12-11 03:28:25', '', '1 kg escalopes de poulet', '', 'publish', 'closed', 'closed', '', '1-kg-escalopes-de-poulet', '', '', '2015-12-11 04:28:25', '2015-12-11 03:28:25', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=80', 0, 'boucherie', '', 0),
(81, 1, '2015-12-11 04:28:32', '2015-12-11 03:28:32', '', '1 kg roti porc filet', '', 'publish', 'closed', 'closed', '', '1-kg-roti-porc-filet', '', '', '2015-12-11 04:28:32', '2015-12-11 03:28:32', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=81', 0, 'boucherie', '', 0),
(82, 1, '2015-12-11 04:28:40', '2015-12-11 03:28:40', '', '1 kg keufte', '', 'publish', 'closed', 'closed', '', '1-kg-keufte', '', '', '2015-12-11 04:28:40', '2015-12-11 03:28:40', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=82', 0, 'boucherie', '', 0),
(83, 1, '2015-12-11 04:28:48', '2015-12-11 03:28:48', '', '1 kg financiere', '', 'publish', 'closed', 'closed', '', '1-kg-financiere', '', '', '2015-12-11 04:28:48', '2015-12-11 03:28:48', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=83', 0, 'boucherie', '', 0),
(84, 1, '2015-12-11 04:29:08', '2015-12-11 03:29:08', '', 'Plateau raclette', '', 'publish', 'closed', 'closed', '', 'plateau-raclette', '', '', '2015-12-11 04:29:08', '2015-12-11 03:29:08', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=84', 0, 'boucherie', '', 0),
(85, 1, '2015-12-11 04:29:14', '2015-12-11 03:29:14', '', 'Plateau pierrade', '', 'publish', 'closed', 'closed', '', 'plateau-pierrade', '', '', '2015-12-11 04:29:19', '2015-12-11 03:29:19', '', 0, 'http://localhost/wd_project1/?post_type=boucherie&#038;p=85', 0, 'boucherie', '', 0),
(86, 1, '2015-12-11 04:29:52', '2015-12-11 03:29:52', '', 'Boucherie', '', 'publish', 'closed', 'closed', '', 'boucherie', '', '', '2015-12-11 04:35:34', '2015-12-11 03:35:34', '', 0, 'http://localhost/wd_project1/?page_id=86', 0, 'page', '', 0),
(87, 1, '2015-12-11 04:29:52', '2015-12-11 03:29:52', '', 'Boucherie', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2015-12-11 04:29:52', '2015-12-11 03:29:52', '', 86, 'http://localhost/wd_project1/index.php/2015/12/11/86-revision-v1/', 0, 'revision', '', 0),
(88, 0, '2015-12-11 11:22:24', '0000-00-00 00:00:00', '', 'order-111215', '', 'pending', 'closed', 'closed', '', '', '', '', '2015-12-11 11:22:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=order&p=88', 0, 'order', '', 0),
(89, 0, '2015-12-11 11:22:42', '0000-00-00 00:00:00', '', 'order-111215', '', 'pending', 'closed', 'closed', '', '', '', '', '2015-12-11 11:22:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=order&p=89', 0, 'order', '', 0),
(90, 0, '2015-12-11 11:23:41', '0000-00-00 00:00:00', '', 'order-111215', '', 'pending', 'closed', 'closed', '', '', '', '', '2015-12-11 11:23:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wd_project1/?post_type=order&p=90', 0, 'order', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
