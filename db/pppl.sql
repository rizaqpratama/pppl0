-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 12, 2014 at 08:55 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pppl`
--

-- --------------------------------------------------------

--
-- Table structure for table `core_settings`
--

CREATE TABLE IF NOT EXISTS `core_settings` (
  `slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `default` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`slug`),
  UNIQUE KEY `unique - slug` (`slug`),
  KEY `index - slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores settings for the multi-site interface';

--
-- Dumping data for table `core_settings`
--

INSERT INTO `core_settings` (`slug`, `default`, `value`) VALUES
('date_format', 'g:ia -- m/d/y', 'g:ia -- m/d/y'),
('lang_direction', 'ltr', 'ltr'),
('status_message', 'This site has been disabled by a super-administrator.', 'This site has been disabled by a super-administrator.');

-- --------------------------------------------------------

--
-- Table structure for table `core_sites`
--

CREATE TABLE IF NOT EXISTS `core_sites` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ref` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` int(11) NOT NULL DEFAULT '0',
  `updated_on` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique ref` (`ref`),
  UNIQUE KEY `Unique domain` (`domain`),
  KEY `ref` (`ref`),
  KEY `domain` (`domain`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `core_sites`
--

INSERT INTO `core_sites` (`id`, `name`, `ref`, `domain`, `active`, `created_on`, `updated_on`) VALUES
(1, 'Default Site', 'default', 'localhost', 1, 1411566374, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_users`
--

CREATE TABLE IF NOT EXISTS `core_users` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salt` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `activation_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` int(11) NOT NULL,
  `last_login` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgotten_password_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Super User Information' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `core_users`
--

INSERT INTO `core_users` (`id`, `email`, `password`, `salt`, `group_id`, `ip_address`, `active`, `activation_code`, `created_on`, `last_login`, `username`, `forgotten_password_code`, `remember_code`) VALUES
(1, 'rizaqpratama@gmail.com', 'bcaed503772428f511f7f6ba2100c664d194e2e9', '9da3e', 1, '', 1, '', 1411566374, 1411566374, 'rizaqpratama', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_berita_beritas`
--

CREATE TABLE IF NOT EXISTS `default_berita_beritas` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `ordering_count` int(11) DEFAULT NULL,
  `judul` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `berita` longtext COLLATE utf8_unicode_ci,
  `kategori` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `berita_utama` text COLLATE utf8_unicode_ci,
  `gambar` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `default_berita_beritas`
--

INSERT INTO `default_berita_beritas` (`id`, `created`, `updated`, `created_by`, `ordering_count`, `judul`, `slug`, `berita`, `kategori`, `berita_utama`, `gambar`) VALUES
(2, '2014-10-11 13:29:41', NULL, 1, 1, 'Percoba coba an', 'percoba-coba-an', '<p  0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal; text-align: justify; background-color: rgb(243, 255, 240);"><span  arial, helvetica, sans-serif; font-size: small;">Balai Besar Teknik Kesehatan Lingkungan dan Pengendalian Penyakit Kelas I Jakarta (BBTKLPP Kelas I Jakarta) yang merupakan satu-satunya Kantor BBTKLPP yang menjadi pelopor terbentuknya Gugus Depan Pramuka di wilayah Cakung Jakarta Timur, pada (12/9) melaksanakan Pelantikan Majelis Pembimbing untuk Gugus Depan (Mabigus) 06351 dan 06352 untuk Pangkalan BBTKLLPP Kelas I Jakarta.&nbsp;</span></p>\r\n\r\n<p  0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal; text-align: justify; background-color: rgb(243, 255, 240);">&nbsp;</p>\r\n\r\n<p  0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal; text-align: justify; background-color: rgb(243, 255, 240);"><span  arial, helvetica, sans-serif; font-size: small;">Pelantikan yang dilaksanakan di Kantor BBTKLPP Jakarta ini, dipimpin langsung oleh &nbsp;Drs. H. Yitno Suyoko, MM selaku Kepala Kwartir Ranting Cakung. Hadir dalam pelantikan tersebut pengurus Kwartir Ranting Cakung, para perwakilan dari Lintas Program terkait di Lingkungan Kemenkes RI, dan para anggota Pramuka Kwartir Ranting Cakung Jakarta Timur.</span></p>\r\n\r\n<p  0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal; text-align: justify; background-color: rgb(243, 255, 240);">&nbsp;</p>\r\n\r\n<p  0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal; text-align: justify; background-color: rgb(243, 255, 240);"><span  arial, helvetica, sans-serif; font-size: small;">Adapun Susunan Mabigus Pangkalan BBTKLPP Kelas I Jakarta yang dilantik adalah DR.PA. Kodrat Pramudho, SKM, M.Kes sebagai Kepala Mabigus; drg. Djauzi, M.Kes sebagai Kepala Harian Mabigus; Heri Nugroho, ST, MKM sebagai Sekretaris; Sri Hartuti sebagai Bendahara, &nbsp;Wahyuni Richasari sebagai anggota; Didi Purnama, SKM, MKM sebagai Anggota; Hadi Suhatman sebagai Anggota; Dwi Martanti, SKM sebagai Anggota; Ir. Kusmiyarti sebagai Anggota; dan Agustin, SKM, M.Kes sebagai Anggota.</span></p>\r\n\r\n<p  0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal; text-align: justify; background-color: rgb(243, 255, 240);">&nbsp;</p>', 'Umum', 'Yes', 'dummy');

-- --------------------------------------------------------

--
-- Table structure for table `default_blog`
--

CREATE TABLE IF NOT EXISTS `default_blog` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `ordering_count` int(11) DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `parsed` text COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` int(11) NOT NULL,
  `updated_on` int(11) NOT NULL DEFAULT '0',
  `comments_enabled` enum('no','1 day','1 week','2 weeks','1 month','3 months','always') COLLATE utf8_unicode_ci NOT NULL DEFAULT '3 months',
  `status` enum('draft','live') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `type` set('html','markdown','wysiwyg-advanced','wysiwyg-simple') COLLATE utf8_unicode_ci NOT NULL,
  `preview_hash` char(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `default_blog_categories`
--

CREATE TABLE IF NOT EXISTS `default_blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_slug` (`slug`),
  UNIQUE KEY `unique_title` (`title`),
  KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `default_ci_sessions`
--

CREATE TABLE IF NOT EXISTS `default_ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_ci_sessions`
--

INSERT INTO `default_ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('94f458c0941f077e635051e3b412b906', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36', 1411571149, 'a:6:{s:8:"username";s:12:"rizaqpratama";s:5:"email";s:22:"rizaqpratama@gmail.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('36ccac86f9a5d5619243c14310801a2a', '127.0.0.1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR ', 1411571194, 'a:1:{s:14:"admin_redirect";s:27:"admin/addons/modules/upload";}'),
('93f9c1ab428dab0c7c07153f57f20d25', '127.0.0.1', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR ', 1411571218, ''),
('3f6af1cf28e9971a39b59f769a932ec5', '127.0.0.1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR ', 1411571222, 'a:6:{s:8:"username";s:12:"rizaqpratama";s:5:"email";s:22:"rizaqpratama@gmail.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('2655d936c4df3b9ecd9f74f29da109e0', '::1', 'Mozilla/5.0 (Windows NT 6.3; rv:32.0) Gecko/20100101 Firefox/32.0', 1411814615, ''),
('95d4452198ff34e75258f693f4680396', '::1', 'Mozilla/5.0 (Windows NT 6.3; rv:32.0) Gecko/20100101 Firefox/32.0', 1411815586, ''),
('eff08349bef04b8b1c788491bd378003', '::1', 'Mozilla/5.0 (Windows NT 6.3; rv:32.0) Gecko/20100101 Firefox/32.0', 1411918118, 'a:6:{s:8:"username";s:12:"rizaqpratama";s:5:"email";s:22:"rizaqpratama@gmail.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('5347d87e92f4a6960165d4f9c5909692', '::1', 'Mozilla/5.0 (Windows NT 6.3; rv:32.0) Gecko/20100101 Firefox/32.0', 1411949836, 'a:5:{s:5:"email";s:22:"rizaqpratama@gmail.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('4b875ea0f7662469252b1e86f23b6701', '::1', 'Mozilla/5.0 (Windows NT 6.3; rv:32.0) Gecko/20100101 Firefox/32.0', 1412260983, 'a:6:{s:8:"username";s:12:"rizaqpratama";s:5:"email";s:22:"rizaqpratama@gmail.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('594da516741e7972fb06f0e8c8dc0cf1', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36', 1412782201, ''),
('1404540f588356af5cbea78dc35f7c2b', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36', 1412784216, 'a:6:{s:8:"username";s:12:"rizaqpratama";s:5:"email";s:22:"rizaqpratama@gmail.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('e93400a7e93b3ef7ff83dbe9ad127b2c', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36', 1413033664, 'a:6:{s:8:"username";s:12:"rizaqpratama";s:5:"email";s:22:"rizaqpratama@gmail.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('a7f69144466256fa60a93ca7ecfc7af0', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36', 1413033989, 'a:5:{s:5:"email";s:22:"rizaqpratama@gmail.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('4b6df6e420b5523612229df99c37ac72', '::1', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36', 1413103802, 'a:5:{s:5:"email";s:22:"rizaqpratama@gmail.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}');

-- --------------------------------------------------------

--
-- Table structure for table `default_comments`
--

CREATE TABLE IF NOT EXISTS `default_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `parsed` text COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `entry_title` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entry_plural` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` int(11) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `default_comment_blacklists`
--

CREATE TABLE IF NOT EXISTS `default_comment_blacklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `default_contact_log`
--

CREATE TABLE IF NOT EXISTS `default_contact_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `sender_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sender_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sender_os` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sent_at` int(11) NOT NULL DEFAULT '0',
  `attachments` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `default_data_fields`
--

CREATE TABLE IF NOT EXISTS `default_data_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `field_slug` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `field_namespace` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `field_data` blob,
  `view_options` blob,
  `is_locked` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=57 ;

--
-- Dumping data for table `default_data_fields`
--

INSERT INTO `default_data_fields` (`id`, `field_name`, `field_slug`, `field_namespace`, `field_type`, `field_data`, `view_options`, `is_locked`) VALUES
(1, 'lang:blog:intro_label', 'intro', 'blogs', 'wysiwyg', 0x613a323a7b733a31313a22656469746f725f74797065223b733a363a2273696d706c65223b733a31303a22616c6c6f775f74616773223b733a313a2279223b7d, NULL, 'no'),
(2, 'lang:pages:body_label', 'body', 'pages', 'wysiwyg', 0x613a323a7b733a31313a22656469746f725f74797065223b733a383a22616476616e636564223b733a31303a22616c6c6f775f74616773223b733a313a2279223b7d, NULL, 'no'),
(3, 'lang:user:first_name_label', 'first_name', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b693a35303b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(4, 'lang:user:last_name_label', 'last_name', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b693a35303b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(5, 'lang:profile_company', 'company', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b693a3130303b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(6, 'lang:profile_bio', 'bio', 'users', 'textarea', 0x613a333a7b733a31323a2264656661756c745f74657874223b4e3b733a31303a22616c6c6f775f74616773223b4e3b733a31323a22636f6e74656e745f74797065223b4e3b7d, NULL, 'no'),
(7, 'lang:user:lang', 'lang', 'users', 'pyro_lang', 0x613a313a7b733a31323a2266696c7465725f7468656d65223b733a333a22796573223b7d, NULL, 'no'),
(8, 'lang:profile_dob', 'dob', 'users', 'datetime', 0x613a353a7b733a383a227573655f74696d65223b733a323a226e6f223b733a31303a2273746172745f64617465223b733a353a222d31303059223b733a383a22656e645f64617465223b4e3b733a373a2273746f72616765223b733a343a22756e6978223b733a31303a22696e7075745f74797065223b733a383a2264726f70646f776e223b7d, NULL, 'no'),
(9, 'lang:profile_gender', 'gender', 'users', 'choice', 0x613a353a7b733a31313a2263686f6963655f64617461223b733a33343a22203a204e6f742054656c6c696e670a6d203a204d616c650a66203a2046656d616c65223b733a31313a2263686f6963655f74797065223b733a383a2264726f70646f776e223b733a31333a2264656661756c745f76616c7565223b4e3b733a31313a226d696e5f63686f69636573223b4e3b733a31313a226d61785f63686f69636573223b4e3b7d, NULL, 'no'),
(10, 'lang:profile_phone', 'phone', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b693a32303b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(11, 'lang:profile_mobile', 'mobile', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b693a32303b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(12, 'lang:profile_address_line1', 'address_line1', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b4e3b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(13, 'lang:profile_address_line2', 'address_line2', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b4e3b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(14, 'lang:profile_address_line3', 'address_line3', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b4e3b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(15, 'lang:profile_address_postcode', 'postcode', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b693a32303b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(16, 'lang:profile_website', 'website', 'users', 'url', NULL, NULL, 'no'),
(40, 'Lokasi', 'lokasi', 'event', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b4e3b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(39, 'Waktu Selesai', 'waktu_selesai', 'event', 'datetime', 0x613a353a7b733a383a227573655f74696d65223b733a333a22796573223b733a31303a2273746172745f64617465223b4e3b733a383a22656e645f64617465223b4e3b733a373a2273746f72616765223b4e3b733a31303a22696e7075745f74797065223b733a31303a22646174657069636b6572223b7d, NULL, 'no'),
(25, 'Nama', 'nama', 'kegiatan', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b693a3230303b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(26, 'Deskripsi', 'deskripsi', 'kegiatan', 'wysiwyg', 0x613a323a7b733a31313a22656469746f725f74797065223b4e3b733a31303a22616c6c6f775f74616773223b4e3b7d, NULL, 'no'),
(27, 'Waktu', 'waktu', 'kegiatan', 'datetime', 0x613a353a7b733a383a227573655f74696d65223b4e3b733a31303a2273746172745f64617465223b4e3b733a383a22656e645f64617465223b4e3b733a373a2273746f72616765223b4e3b733a31303a22696e7075745f74797065223b4e3b7d, NULL, 'no'),
(28, 'Lokasi', 'lokasi', 'kegiatan', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b4e3b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(36, 'Slug', 'slug', 'event', 'slug', 0x613a323a7b733a31303a2273706163655f74797065223b733a313a222d223b733a31303a22736c75675f6669656c64223b733a343a226e616d61223b7d, NULL, 'no'),
(37, 'Deskripsi Kegiatan', 'deskripsi', 'event', 'wysiwyg', 0x613a323a7b733a31313a22656469746f725f74797065223b4e3b733a31303a22616c6c6f775f74616773223b4e3b7d, NULL, 'no'),
(38, 'Waktu Mulai', 'waktu_mulai', 'event', 'datetime', 0x613a353a7b733a383a227573655f74696d65223b733a333a22796573223b733a31303a2273746172745f64617465223b4e3b733a383a22656e645f64617465223b4e3b733a373a2273746f72616765223b4e3b733a31303a22696e7075745f74797065223b733a31303a22646174657069636b6572223b7d, NULL, 'no'),
(35, 'Nama Kegiatan', 'nama', 'event', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b693a3230303b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(41, 'Gambar Kegiatan', 'gambar', 'event', 'image', 0x613a353a7b733a363a22666f6c646572223b693a313b733a31323a22726573697a655f7769647468223b4e3b733a31333a22726573697a655f686569676874223b4e3b733a31303a226b6565705f726174696f223b4e3b733a31333a22616c6c6f7765645f7479706573223b4e3b7d, NULL, 'no'),
(53, 'Header Gambar', 'gambar', 'berita', 'image', 0x613a353a7b733a363a22666f6c646572223b693a313b733a31323a22726573697a655f7769647468223b4e3b733a31333a22726573697a655f686569676874223b4e3b733a31303a226b6565705f726174696f223b4e3b733a31333a22616c6c6f7765645f7479706573223b4e3b7d, NULL, 'no'),
(52, 'Berita Utama', 'berita_utama', 'berita', 'choice', 0x613a353a7b733a31313a2263686f6963655f64617461223b733a333a22596573223b733a31313a2263686f6963655f74797065223b733a31303a22636865636b626f786573223b733a31333a2264656661756c745f76616c7565223b4e3b733a31313a226d696e5f63686f69636573223b4e3b733a31313a226d61785f63686f69636573223b4e3b7d, NULL, 'no'),
(51, 'Kategori Berita', 'kategori', 'berita', 'choice', 0x613a353a7b733a31313a2263686f6963655f64617461223b733a31373a2257616261680a4461657261680a556d756d223b733a31313a2263686f6963655f74797065223b733a353a22726164696f223b733a31333a2264656661756c745f76616c7565223b4e3b733a31313a226d696e5f63686f69636573223b4e3b733a31313a226d61785f63686f69636573223b4e3b7d, NULL, 'no'),
(50, 'Berita', 'berita', 'berita', 'wysiwyg', 0x613a323a7b733a31313a22656469746f725f74797065223b733a383a22616476616e636564223b733a31303a22616c6c6f775f74616773223b4e3b7d, NULL, 'no'),
(48, 'Judul', 'judul', 'berita', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b693a3230303b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(49, 'Slug', 'slug', 'berita', 'slug', 0x613a323a7b733a31303a2273706163655f74797065223b733a313a222d223b733a31303a22736c75675f6669656c64223b733a353a226a7564756c223b7d, NULL, 'no'),
(54, 'Nama', 'nama', 'video', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b693a3230303b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(55, 'Deskripsi', 'deskripsi', 'video', 'wysiwyg', 0x613a323a7b733a31313a22656469746f725f74797065223b733a383a22616476616e636564223b733a31303a22616c6c6f775f74616773223b4e3b7d, NULL, 'no'),
(56, 'Link', 'link', 'video', 'url', NULL, NULL, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `default_data_field_assignments`
--

CREATE TABLE IF NOT EXISTS `default_data_field_assignments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `is_required` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `is_unique` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `instructions` text COLLATE utf8_unicode_ci,
  `field_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=57 ;

--
-- Dumping data for table `default_data_field_assignments`
--

INSERT INTO `default_data_field_assignments` (`id`, `sort_order`, `stream_id`, `field_id`, `is_required`, `is_unique`, `instructions`, `field_name`) VALUES
(1, 1, 1, 1, 'yes', 'no', NULL, NULL),
(2, 1, 2, 2, 'no', 'no', NULL, NULL),
(3, 1, 3, 3, 'yes', 'no', NULL, NULL),
(4, 2, 3, 4, 'yes', 'no', NULL, NULL),
(5, 3, 3, 5, 'no', 'no', NULL, NULL),
(6, 4, 3, 6, 'no', 'no', NULL, NULL),
(7, 5, 3, 7, 'no', 'no', NULL, NULL),
(8, 6, 3, 8, 'no', 'no', NULL, NULL),
(9, 7, 3, 9, 'no', 'no', NULL, NULL),
(10, 8, 3, 10, 'no', 'no', NULL, NULL),
(11, 9, 3, 11, 'no', 'no', NULL, NULL),
(12, 10, 3, 12, 'no', 'no', NULL, NULL),
(13, 11, 3, 13, 'no', 'no', NULL, NULL),
(14, 12, 3, 14, 'no', 'no', NULL, NULL),
(15, 13, 3, 15, 'no', 'no', NULL, NULL),
(16, 14, 3, 16, 'no', 'no', NULL, NULL),
(41, 7, 11, 41, 'no', 'no', NULL, NULL),
(40, 6, 11, 40, 'no', 'no', NULL, NULL),
(39, 5, 11, 39, 'no', 'no', NULL, NULL),
(38, 4, 11, 38, 'no', 'no', NULL, NULL),
(25, 1, 8, 25, 'yes', 'no', NULL, NULL),
(26, 2, 8, 26, 'yes', 'no', NULL, NULL),
(27, 3, 8, 27, 'no', 'no', NULL, NULL),
(28, 4, 8, 28, 'no', 'no', NULL, NULL),
(37, 3, 11, 37, 'yes', 'no', NULL, NULL),
(36, 2, 11, 36, 'yes', 'yes', NULL, NULL),
(35, 1, 11, 35, 'yes', 'yes', NULL, NULL),
(53, 6, 13, 53, 'no', 'no', NULL, NULL),
(52, 5, 13, 52, 'no', 'no', NULL, NULL),
(51, 4, 13, 51, 'yes', 'no', NULL, NULL),
(50, 3, 13, 50, 'yes', 'no', NULL, NULL),
(49, 2, 13, 49, 'yes', 'yes', NULL, NULL),
(48, 1, 13, 48, 'yes', 'yes', NULL, NULL),
(54, 1, 14, 54, 'yes', 'no', NULL, NULL),
(55, 2, 14, 55, 'yes', 'no', NULL, NULL),
(56, 3, 14, 56, 'no', 'no', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_data_streams`
--

CREATE TABLE IF NOT EXISTS `default_data_streams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stream_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `stream_slug` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `stream_namespace` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stream_prefix` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_options` blob NOT NULL,
  `title_column` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` enum('title','custom') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'title',
  `permissions` text COLLATE utf8_unicode_ci,
  `is_hidden` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `menu_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `default_data_streams`
--

INSERT INTO `default_data_streams` (`id`, `stream_name`, `stream_slug`, `stream_namespace`, `stream_prefix`, `about`, `view_options`, `title_column`, `sorting`, `permissions`, `is_hidden`, `menu_path`) VALUES
(1, 'lang:blog:blog_title', 'blog', 'blogs', NULL, NULL, 0x613a323a7b693a303b733a323a226964223b693a313b733a373a2263726561746564223b7d, NULL, 'title', NULL, 'no', NULL),
(2, 'Default', 'def_page_fields', 'pages', NULL, 'A simple page type with a WYSIWYG editor that will get you started adding content.', 0x613a323a7b693a303b733a323a226964223b693a313b733a373a2263726561746564223b7d, NULL, 'title', NULL, 'no', NULL),
(3, 'lang:user_profile_fields_label', 'profiles', 'users', NULL, 'Profiles for users module', 0x613a313a7b693a303b733a31323a22646973706c61795f6e616d65223b7d, 'display_name', 'title', NULL, 'no', NULL),
(14, 'lang:video:video', 'videos', 'video', 'video-', NULL, 0x613a343a7b693a303b733a323a226964223b693a313b733a343a226e616d61223b693a323b733a393a226465736b7269707369223b693a333b733a343a226c696e6b223b7d, 'nama', 'title', NULL, 'no', NULL),
(8, 'lang:kegiatan:kegiatans', 'kegiatans', 'kegiatan', 'kegiatan-', NULL, 0x613a353a7b693a303b733a323a226964223b693a313b733a343a226e616d61223b693a323b733a393a226465736b7269707369223b693a333b733a353a2277616b7475223b693a343b733a363a226c6f6b617369223b7d, 'nama', 'title', NULL, 'no', NULL),
(13, 'lang:berita:beritas', 'beritas', 'berita', 'berita_', NULL, 0x613a343a7b693a303b733a323a226964223b693a313b733a353a226a7564756c223b693a323b733a343a22736c7567223b693a333b733a383a226b617465676f7269223b7d, 'judul', 'title', NULL, 'no', NULL),
(11, 'lang:event:events', 'events', 'event', 'event_', NULL, 0x613a343a7b693a303b733a323a226964223b693a313b733a343a226e616d61223b693a323b733a31313a2277616b74755f6d756c6169223b693a333b733a31333a2277616b74755f73656c65736169223b7d, 'nama', 'title', NULL, 'no', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_def_page_fields`
--

CREATE TABLE IF NOT EXISTS `default_def_page_fields` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `ordering_count` int(11) DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `default_def_page_fields`
--

INSERT INTO `default_def_page_fields` (`id`, `created`, `updated`, `created_by`, `ordering_count`, `body`) VALUES
(1, '2014-09-24 13:46:18', NULL, 1, NULL, '<p>Welcome to our homepage. We have not quite finished setting up our website yet, but please add us to your bookmarks and come back soon.</p>'),
(2, '2014-09-24 13:46:18', NULL, 1, NULL, '<p>To contact us please fill out the form below.</p>\n				{{ contact:form name="text|required" email="text|required|valid_email" subject="dropdown|Support|Sales|Feedback|Other" message="textarea" attachment="file|zip" }}\n					<div><label for="name">Name:</label>{{ name }}</div>\n					<div><label for="email">Email:</label>{{ email }}</div>\n					<div><label for="subject">Subject:</label>{{ subject }}</div>\n					<div><label for="message">Message:</label>{{ message }}</div>\n					<div><label for="attachment">Attach  a zip file:</label>{{ attachment }}</div>\n				{{ /contact:form }}'),
(3, '2014-09-24 13:46:18', NULL, 1, NULL, '{{ search:form class="search-form" }} \n		<input name="q" placeholder="Search terms..." />\n	{{ /search:form }}'),
(4, '2014-09-24 13:46:18', NULL, 1, NULL, '{{ search:form class="search-form" }} \n		<input name="q" placeholder="Search terms..." />\n	{{ /search:form }}\n\n{{ search:results }}\n\n	{{ total }} results for "{{ query }}".\n\n	<hr />\n\n	{{ entries }}\n\n		<article>\n			<h4>{{ singular }}: <a href="{{ url }}">{{ title }}</a></h4>\n			<p>{{ description }}</p>\n		</article>\n\n	{{ /entries }}\n\n        {{ pagination }}\n\n{{ /search:results }}'),
(5, '2014-09-24 13:46:18', NULL, 1, NULL, '<p>We cannot find the page you are looking for, please click <a title="Home" href="{{ pages:url id=''1'' }}">here</a> to go to the homepage.</p>'),
(6, '2014-10-11 11:32:25', '2014-10-11 11:55:36', 1, 1, '<div class="Section1" style="margin: 0px; padding: 0px; page: Section1;">\r\n<div style="margin: 0px; padding: 0px; text-align: center;"><span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">PERATURAN MENTERI KESEHATAN REPUBLIK INDONESIA</span><span style="font-weight: bold;">&nbsp;</span><br style="font-weight: bold;" />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">NOMOR : 1144/MENKES/PER/VIII/2010</span><span style="font-weight: bold;">&nbsp;</span><br style="font-weight: bold;" />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">T E N T A N G</span><span style="font-weight: bold;">&nbsp;</span><br style="font-weight: bold;" />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">ORGANISASI DAN TATA KERJA KEMENTERIAN &nbsp;KESEHATAN</span><span style="font-weight: bold;">&nbsp;</span><br style="font-weight: bold;" />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">&nbsp;MENTERI KESEHATAN REPUBLIK INDONESIA</span><span style="font-weight: bold;">&nbsp;</span><br style="font-weight: bold;" />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">&nbsp;</span><span style="font-weight: bold;">&nbsp;</span><span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">&nbsp;</span><span style="font-weight: bold;">&nbsp;</span><br style="font-weight: bold;" />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">DIREKTORAT JENDERAL PENGENDALIAN PENYAKIT DAN PENYEHATAN LINGKUNGAN</span><span style="font-weight: bold;">&nbsp;</span><br style="font-weight: bold;" />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">&nbsp;</span><span style="font-weight: bold;">&nbsp;</span><br style="font-weight: bold;" />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">BAGIAN PERTAMA</span><span style="font-weight: bold;">&nbsp;</span><br style="font-weight: bold;" />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">KEDUDUKAN, TUGAS, DAN FUNGSI</span><span style="font-weight: bold;">&nbsp;</span><br style="font-weight: bold;" />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">&nbsp;</span><span style="font-weight: bold;">&nbsp;</span><br style="font-weight: bold;" />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">Pasal 247</span><span style="font-weight: bold;">&nbsp;</span></div>\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">1. Direktorat Jenderal adalah unsur pelaksana yang berada di bawah dan bertanggung jawab kepada Menteri Kesehatan.</span>&nbsp;<br />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">2. Direktorat Jenderal dipimpin oleh Direktur Jenderal.</span>\r\n\r\n<ol start="1" style="margin: 0px 0px 0cm; padding-right: 0px; padding-left: 0px; list-style: none;" type="1">\r\n</ol>\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"><span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">Pasal 248</span><span style="font-weight: bold;">&nbsp;</span></div>\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">Direktorat Jenderal Pengendalian Penyakit dan Penyehatan Lingkungan mempunyai tugas merumuskan serta melaksanakan kebijakan dan standardisasi teknisdi bidang pengendalian penyakit dan penyehatan lingkungan.</span>&nbsp;<br />\r\n&nbsp;\r\n<div style="margin: 0px; padding: 0px; text-align: center;"><span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">Pasal 249</span><span style="font-weight: bold;">&nbsp;</span></div>\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">Da</span><span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">lam melaksanakan tugas sebagaimana dimaksud dalam Pasal 248, Direktorat Jenderal Pengendalian Penyakit dan Penyehatan Lingkungan menyelenggarakan fungsi:</span>&nbsp;<br />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">1. perumusan kebijakan di bidang pengendalian penyakit dan penyehatan lingkungan;</span>&nbsp;<br />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">2. pelaksanaan kebijakan di bidang pengendalian penyakit dan penyehatan lingkungan;</span>&nbsp;<br />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">3. penyusunan norma, standar, prosedur, dan kriteria di bidang pengendalian penyakit dan penyehatan lingkungan;</span>&nbsp;<br />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">4. pemberian bimbingan teknis dan evaluasi di bidang pengendalian penyakit dan penyehatan lingkungan; dan</span>&nbsp;<br />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">5. pelaksanaan administrasi Direktorat Jenderal Pengendalian Penyakit dan Penyehatan Lingkungan.</span>\r\n\r\n<ol start="1" style="margin: 0px 0px 0cm; padding-right: 0px; padding-left: 0px; list-style: none;" type="1">\r\n</ol>\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">&nbsp;</span>&nbsp;\r\n\r\n<div style="margin: 0px; padding: 0px; text-align: center;"><span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">BAGIAN KEDUA</span><span style="font-weight: bold;">&nbsp;</span><br style="font-weight: bold;" />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">SUSUNAN ORGANISASI</span><span style="font-weight: bold;">&nbsp;</span><br style="font-weight: bold;" />\r\n<br />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif; font-weight: bold;">Pasal 250</span><span style="font-weight: bold;">&nbsp;</span></div>\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">Direktorat Jenderal Pengendalian Penyakit dan Penyehatan Lingkungan terdiri atas:</span>&nbsp;<br />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">1. Sekretariat Direktorat Jenderal;</span>&nbsp;<br />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">2. Direktorat Surveilans, Imunisasi, Karantina, dan Kesehatan Matra;</span>&nbsp;<br />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">3. Direktorat Pengendalian Penyakit Menular Langsung;</span>&nbsp;<br />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">4. Direktorat Pengendalian Penyakit Bersumber Binatang;</span>&nbsp;<br />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">5. Direktorat Pengendalian Penyakit Tidak Menular; dan</span>&nbsp;<br />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">6. Direktorat Penyehatan Lingkungan.</span>\r\n\r\n<ol start="1" style="margin: 0px 0px 0cm; padding-right: 0px; padding-left: 0px; list-style: none;" type="1">\r\n</ol>\r\n</div>\r\n\r\n<div><br />\r\n<br />\r\n* Untuk lebih lengkapnya bisa dilihat pada link berikut\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal; background-color: rgb(243, 255, 240);"><a href="http://goo.gl/QXMXY" target="_blank"><span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">1. PERMENKES RI No.&nbsp;1144 Tahun 2010 -&nbsp;Organisasi dan Tata Kerja Kementerian Kesehatan RI</span></a><br />\r\n<a href="http://goo.gl/2k6hP" target="notSet"><span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">2.&nbsp;PERMENKES RI No. 2348&nbsp;Tahun 2011 - Kantor Kesehatan Pelabuhan</span></a><br />\r\n<span style="font-size: 12pt; font-family: ''Times New Roman'', serif;"><a href="http://goo.gl/gcjEk">3,&nbsp;</a></span><a href="http://goo.gl/gcjEk"><span style="font-size: 12pt; font-family: ''Times New Roman'', serif;">PERMENKES RI No. 2349&nbsp;Tahun 2011 - BB/BTKL - PP</span></a></div>\r\n<br />\r\n&nbsp;</div>\r\n'),
(7, '2014-10-11 11:51:54', '2014-10-11 11:56:33', 1, 2, 'Profile Direktorat Jenderal PP dan PL'),
(8, '2014-10-11 11:53:19', '2014-10-11 11:56:49', 1, 3, '<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal; text-align: center; background-color: rgb(243, 255, 240);"><span style="font-weight: bold; font-family: ''times new roman'', times; font-size: medium;">Profil&nbsp;Pengendalian Penyakit dan Penyehatan Lingkungan</span></div>\r\n\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal; text-align: center; background-color: rgb(243, 255, 240);"><span style="font-weight: bold; font-family: ''times new roman'', times; font-size: medium;">TAHUN 2011</span></div>\r\n\r\n<p style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal; background-color: rgb(243, 255, 240);"><br />\r\n<span style="font-family: ''times new roman'', times; font-size: medium;">Buku Profil Ditjen Pengendalian Penyakit dan Penyehatan Lingkungan Tahun 2011 ini bertujuan memberikan gambaran tentang hasil-hasil kegiatan PP dan PL. Sehingga kita dapat menilai kinerja dari program yang telah dilaksanakan. Program &ndash; program yang telah mencapai target yang telah ditetapkan diharapkan dapat dipertahankan dan program-program yang belum mencapai target untuk dapat ditingkatkan upaya-upaya pada tahun mendatang.</span><br />\r\n<br />\r\n<span style="font-family: ''times new roman'', times; font-size: medium;">Buku ini dapat dijadikan sebagai acuan dalam penyusunan kebijakan dan pelaksaan program pengendalian penyakit dan penyehatan lingkungan.</span><br />\r\n<br />\r\n<span style="font-family: ''times new roman'', times; font-size: medium;">Buku&nbsp;ini disusun berkat kerjasama antara pusat, UPT, dan daerah. Kami ucapkan terimakasih kepada semua pihak yang telah berkontribusi dalam penyusunannya. Kami sangat mengharapkan kritik serta saran guna perbaikan-perbaikan di masa yang akan datang.</span></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `default_email_templates`
--

CREATE TABLE IF NOT EXISTS `default_email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` int(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_lang` (`slug`,`lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `default_email_templates`
--

INSERT INTO `default_email_templates` (`id`, `slug`, `name`, `description`, `subject`, `body`, `lang`, `is_default`, `module`) VALUES
(1, 'comments', 'Comment Notification', 'Email that is sent to admin when someone creates a comment', 'You have just received a comment from {{ name }}', '<h3>You have received a comment from {{ name }}</h3>\n				<p>\n				<strong>IP Address: {{ sender_ip }}</strong><br/>\n				<strong>Operating System: {{ sender_os }}<br/>\n				<strong>User Agent: {{ sender_agent }}</strong>\n				</p>\n				<p>{{ comment }}</p>\n				<p>View Comment: {{ redirect_url }}</p>', 'en', 1, 'comments'),
(2, 'contact', 'Contact Notification', 'Template for the contact form', '{{ settings:site_name }} :: {{ subject }}', 'This message was sent via the contact form on with the following details:\n				<hr />\n				IP Address: {{ sender_ip }}\n				OS {{ sender_os }}\n				Agent {{ sender_agent }}\n				<hr />\n				{{ message }}\n\n				{{ name }},\n\n				{{ email }}', 'en', 1, 'pages'),
(3, 'registered', 'New User Registered', 'Email sent to the site contact e-mail when a new user registers', '{{ settings:site_name }} :: You have just received a registration from {{ name }}', '<h3>You have received a registration from {{ name }}</h3>\n				<p><strong>IP Address: {{ sender_ip }}</strong><br/>\n				<strong>Operating System: {{ sender_os }}</strong><br/>\n				<strong>User Agent: {{ sender_agent }}</strong>\n				</p>', 'en', 1, 'users'),
(4, 'activation', 'Activation Email', 'The email which contains the activation code that is sent to a new user', '{{ settings:site_name }} - Account Activation', '<p>Hello {{ user:first_name }},</p>\n				<p>Thank you for registering at {{ settings:site_name }}. Before we can activate your account, please complete the registration process by clicking on the following link:</p>\n				<p><a href="{{ url:site }}users/activate/{{ user:id }}/{{ activation_code }}">{{ url:site }}users/activate/{{ user:id }}/{{ activation_code }}</a></p>\n				<p>&nbsp;</p>\n				<p>In case your email program does not recognize the above link as, please direct your browser to the following URL and enter the activation code:</p>\n				<p><a href="{{ url:site }}users/activate">{{ url:site }}users/activate</a></p>\n				<p><strong>Activation Code:</strong> {{ activation_code }}</p>', 'en', 1, 'users'),
(5, 'forgotten_password', 'Forgotten Password Email', 'The email that is sent containing a password reset code', '{{ settings:site_name }} - Forgotten Password', '<p>Hello {{ user:first_name }},</p>\n				<p>It seems you have requested a password reset. Please click this link to complete the reset: <a href="{{ url:site }}users/reset_pass/{{ user:forgotten_password_code }}">{{ url:site }}users/reset_pass/{{ user:forgotten_password_code }}</a></p>\n				<p>If you did not request a password reset please disregard this message. No further action is necessary.</p>', 'en', 1, 'users'),
(6, 'new_password', 'New Password Email', 'After a password is reset this email is sent containing the new password', '{{ settings:site_name }} - New Password', '<p>Hello {{ user:first_name }},</p>\n				<p>Your new password is: {{ new_password }}</p>\n				<p>After logging in you may change your password by visiting <a href="{{ url:site }}edit-profile">{{ url:site }}edit-profile</a></p>', 'en', 1, 'users');

-- --------------------------------------------------------

--
-- Table structure for table `default_event_events`
--

CREATE TABLE IF NOT EXISTS `default_event_events` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `ordering_count` int(11) DEFAULT NULL,
  `nama` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deskripsi` longtext COLLATE utf8_unicode_ci,
  `waktu_mulai` datetime DEFAULT NULL,
  `waktu_selesai` datetime DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gambar` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `default_files`
--

CREATE TABLE IF NOT EXISTS `default_files` (
  `id` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `folder_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '1',
  `type` enum('a','v','d','i','o') COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` char(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` int(5) DEFAULT NULL,
  `height` int(5) DEFAULT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `alt_attribute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `download_count` int(11) NOT NULL DEFAULT '0',
  `date_added` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_file_folders`
--

CREATE TABLE IF NOT EXISTS `default_file_folders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'local',
  `remote_container` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_added` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `default_file_folders`
--

INSERT INTO `default_file_folders` (`id`, `parent_id`, `slug`, `name`, `location`, `remote_container`, `date_added`, `sort`, `hidden`) VALUES
(1, 0, 'img-header', 'img_header', 'local', '', 1412783409, 1412783409, 0);

-- --------------------------------------------------------

--
-- Table structure for table `default_groups`
--

CREATE TABLE IF NOT EXISTS `default_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `default_groups`
--

INSERT INTO `default_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'user', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `default_kegiatan-kegiatans`
--

CREATE TABLE IF NOT EXISTS `default_kegiatan-kegiatans` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `ordering_count` int(11) DEFAULT NULL,
  `nama` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deskripsi` longtext COLLATE utf8_unicode_ci,
  `waktu` datetime DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `default_kegiatan-kegiatans`
--

INSERT INTO `default_kegiatan-kegiatans` (`id`, `created`, `updated`, `created_by`, `ordering_count`, `nama`, `deskripsi`, `waktu`, `lokasi`) VALUES
(1, '2014-09-28 11:44:10', '2014-09-28 11:56:22', 1, 1, 'Makan bersama rakyat', 'Makan bersama rakyat yang bego bego<br />\r\n<br />\r\n<br />\r\n<br />\r\nTapi saya ga tahu loh, kenapa ada rakyat yang bego. wkwkwkw', '2014-09-26 00:00:00', 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `default_keywords`
--

CREATE TABLE IF NOT EXISTS `default_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `default_keywords`
--

INSERT INTO `default_keywords` (`id`, `name`) VALUES
(1, 'tupoksi pppl depkes'),
(2, 'tugas pokok dan fungsi pppl');

-- --------------------------------------------------------

--
-- Table structure for table `default_keywords_applied`
--

CREATE TABLE IF NOT EXISTS `default_keywords_applied` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` char(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keyword_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `default_keywords_applied`
--

INSERT INTO `default_keywords_applied` (`id`, `hash`, `keyword_id`) VALUES
(4, 'a4e79ff46212294313e1a4e5e10f4010', 1),
(3, 'a4e79ff46212294313e1a4e5e10f4010', 2);

-- --------------------------------------------------------

--
-- Table structure for table `default_migrations`
--

CREATE TABLE IF NOT EXISTS `default_migrations` (
  `version` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_migrations`
--

INSERT INTO `default_migrations` (`version`) VALUES
(129);

-- --------------------------------------------------------

--
-- Table structure for table `default_modules`
--

CREATE TABLE IF NOT EXISTS `default_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `skip_xss` tinyint(1) NOT NULL,
  `is_frontend` tinyint(1) NOT NULL,
  `is_backend` tinyint(1) NOT NULL,
  `menu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `installed` tinyint(1) NOT NULL,
  `is_core` tinyint(1) NOT NULL,
  `updated_on` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `default_modules`
--

INSERT INTO `default_modules` (`id`, `name`, `slug`, `version`, `type`, `description`, `skip_xss`, `is_frontend`, `is_backend`, `menu`, `enabled`, `installed`, `is_core`, `updated_on`) VALUES
(1, 'a:25:{s:2:"en";s:8:"Settings";s:2:"ar";s:18:"الإعدادات";s:2:"br";s:15:"Configurações";s:2:"pt";s:15:"Configurações";s:2:"cs";s:10:"Nastavení";s:2:"da";s:13:"Indstillinger";s:2:"de";s:13:"Einstellungen";s:2:"el";s:18:"Ρυθμίσεις";s:2:"es";s:15:"Configuraciones";s:2:"fa";s:14:"تنظیمات";s:2:"fi";s:9:"Asetukset";s:2:"fr";s:11:"Paramètres";s:2:"he";s:12:"הגדרות";s:2:"id";s:10:"Pengaturan";s:2:"it";s:12:"Impostazioni";s:2:"lt";s:10:"Nustatymai";s:2:"nl";s:12:"Instellingen";s:2:"pl";s:10:"Ustawienia";s:2:"ru";s:18:"Настройки";s:2:"sl";s:10:"Nastavitve";s:2:"tw";s:12:"網站設定";s:2:"cn";s:12:"网站设定";s:2:"hu";s:14:"Beállítások";s:2:"th";s:21:"ตั้งค่า";s:2:"se";s:14:"Inställningar";}', 'settings', '1.0.0', NULL, 'a:25:{s:2:"en";s:89:"Allows administrators to update settings like Site Name, messages and email address, etc.";s:2:"ar";s:161:"تمكن المدراء من تحديث الإعدادات كإسم الموقع، والرسائل وعناوين البريد الإلكتروني، .. إلخ.";s:2:"br";s:120:"Permite com que administradores e a equipe consigam trocar as configurações do website incluindo o nome e descrição.";s:2:"pt";s:113:"Permite com que os administradores consigam alterar as configurações do website incluindo o nome e descrição.";s:2:"cs";s:102:"Umožňuje administrátorům měnit nastavení webu jako jeho jméno, zprávy a emailovou adresu apod.";s:2:"da";s:90:"Lader administratorer opdatere indstillinger som sidenavn, beskeder og email adresse, etc.";s:2:"de";s:92:"Erlaubt es Administratoren die Einstellungen der Seite wie Name und Beschreibung zu ändern.";s:2:"el";s:230:"Επιτρέπει στους διαχειριστές να τροποποιήσουν ρυθμίσεις όπως το Όνομα του Ιστοτόπου, τα μηνύματα και τις διευθύνσεις email, κ.α.";s:2:"es";s:131:"Permite a los administradores y al personal configurar los detalles del sitio como el nombre del sitio y la descripción del mismo.";s:2:"fa";s:105:"تنظیمات سایت در این ماژول توسط ادمین هاس سایت انجام می شود";s:2:"fi";s:105:"Mahdollistaa sivuston asetusten muokkaamisen, kuten sivuston nimen, viestit ja sähköpostiosoitteet yms.";s:2:"fr";s:118:"Permet aux admistrateurs de modifier les paramètres du site : nom du site, description, messages, adresse email, etc.";s:2:"he";s:116:"ניהול הגדרות שונות של האתר כגון: שם האתר, הודעות, כתובות דואר וכו";s:2:"id";s:112:"Memungkinkan administrator untuk dapat memperbaharui pengaturan seperti nama situs, pesan dan alamat email, dsb.";s:2:"it";s:109:"Permette agli amministratori di aggiornare impostazioni quali Nome del Sito, messaggi e indirizzo email, etc.";s:2:"lt";s:104:"Leidžia administratoriams keisti puslapio vavadinimą, žinutes, administratoriaus el. pašta ir kitą.";s:2:"nl";s:114:"Maakt het administratoren en medewerkers mogelijk om websiteinstellingen zoals naam en beschrijving te veranderen.";s:2:"pl";s:103:"Umożliwia administratorom zmianę ustawień strony jak nazwa strony, opis, e-mail administratora, itd.";s:2:"ru";s:135:"Управление настройками сайта - Имя сайта, сообщения, почтовые адреса и т.п.";s:2:"sl";s:98:"Dovoljuje administratorjem posodobitev nastavitev kot je Ime strani, sporočil, email naslova itd.";s:2:"tw";s:99:"網站管理者可更新的重要網站設定。例如：網站名稱、訊息、電子郵件等。";s:2:"cn";s:99:"网站管理者可更新的重要网站设定。例如：网站名称、讯息、电子邮件等。";s:2:"hu";s:125:"Lehetővé teszi az adminok számára a beállítások frissítését, mint a weboldal neve, üzenetek, e-mail címek, stb...";s:2:"th";s:232:"ให้ผู้ดูแลระบบสามารถปรับปรุงการตั้งค่าเช่นชื่อเว็บไซต์ ข้อความและอีเมล์เป็นต้น";s:2:"se";s:84:"Administratören kan uppdatera webbplatsens titel, meddelanden och E-postadress etc.";}', 1, 0, 1, 'settings', 1, 1, 1, 1411570810),
(2, 'a:11:{s:2:"en";s:12:"Streams Core";s:2:"pt";s:14:"Núcleo Fluxos";s:2:"fr";s:10:"Noyau Flux";s:2:"el";s:23:"Πυρήνας Ροών";s:2:"se";s:18:"Streams grundmodul";s:2:"tw";s:14:"Streams 核心";s:2:"cn";s:14:"Streams 核心";s:2:"ar";s:31:"الجداول الأساسية";s:2:"it";s:12:"Streams Core";s:2:"fa";s:26:"هسته استریم ها";s:2:"fi";s:13:"Striimit ydin";}', 'streams_core', '1.0.0', NULL, 'a:11:{s:2:"en";s:29:"Core data module for streams.";s:2:"pt";s:37:"Módulo central de dados para fluxos.";s:2:"fr";s:32:"Noyau de données pour les Flux.";s:2:"el";s:113:"Προγραμματιστικός πυρήνας για την λειτουργία ροών δεδομένων.";s:2:"se";s:50:"Streams grundmodul för enklare hantering av data.";s:2:"tw";s:29:"Streams 核心資料模組。";s:2:"cn";s:29:"Streams 核心资料模组。";s:2:"ar";s:57:"وحدة البيانات الأساسية للجداول";s:2:"it";s:17:"Core dello Stream";s:2:"fa";s:48:"ماژول مرکزی برای استریم ها";s:2:"fi";s:48:"Ydin datan hallinoiva moduuli striimejä varten.";}', 1, 0, 0, '0', 1, 1, 1, 1411570810),
(3, 'a:21:{s:2:"en";s:15:"Email Templates";s:2:"ar";s:48:"قوالب الرسائل الإلكترونية";s:2:"br";s:17:"Modelos de e-mail";s:2:"pt";s:17:"Modelos de e-mail";s:2:"da";s:16:"Email skabeloner";s:2:"el";s:22:"Δυναμικά email";s:2:"es";s:19:"Plantillas de email";s:2:"fa";s:26:"قالب های ایمیل";s:2:"fr";s:17:"Modèles d''emails";s:2:"he";s:12:"תבניות";s:2:"id";s:14:"Template Email";s:2:"lt";s:22:"El. laiškų šablonai";s:2:"nl";s:15:"Email sjablonen";s:2:"ru";s:25:"Шаблоны почты";s:2:"sl";s:14:"Email predloge";s:2:"tw";s:12:"郵件範本";s:2:"cn";s:12:"邮件范本";s:2:"hu";s:15:"E-mail sablonok";s:2:"fi";s:25:"Sähköposti viestipohjat";s:2:"th";s:33:"แม่แบบอีเมล";s:2:"se";s:12:"E-postmallar";}', 'templates', '1.1.0', NULL, 'a:21:{s:2:"en";s:46:"Create, edit, and save dynamic email templates";s:2:"ar";s:97:"أنشئ، عدّل واحفظ قوالب البريد الإلكترني الديناميكية.";s:2:"br";s:51:"Criar, editar e salvar modelos de e-mail dinâmicos";s:2:"pt";s:51:"Criar, editar e salvar modelos de e-mail dinâmicos";s:2:"da";s:49:"Opret, redigér og gem dynamiske emailskabeloner.";s:2:"el";s:108:"Δημιουργήστε, επεξεργαστείτε και αποθηκεύστε δυναμικά email.";s:2:"es";s:54:"Crear, editar y guardar plantillas de email dinámicas";s:2:"fa";s:92:"ایحاد، ویرایش و ذخیره ی قالب های ایمیل به صورت پویا";s:2:"fr";s:61:"Créer, éditer et sauver dynamiquement des modèles d''emails";s:2:"he";s:54:"ניהול של תבניות דואר אלקטרוני";s:2:"id";s:55:"Membuat, mengedit, dan menyimpan template email dinamis";s:2:"lt";s:58:"Kurk, tvarkyk ir saugok dinaminius el. laiškų šablonus.";s:2:"nl";s:49:"Maak, bewerk, en beheer dynamische emailsjablonen";s:2:"ru";s:127:"Создавайте, редактируйте и сохраняйте динамические почтовые шаблоны";s:2:"sl";s:52:"Ustvari, uredi in shrani spremenljive email predloge";s:2:"tw";s:61:"新增、編輯與儲存可顯示動態資料的 email 範本";s:2:"cn";s:61:"新增、编辑与储存可显示动态资料的 email 范本";s:2:"hu";s:63:"Csináld, szerkeszd és mentsd el a dinamikus e-mail sablonokat";s:2:"fi";s:66:"Lisää, muokkaa ja tallenna dynaamisia sähköposti viestipohjia.";s:2:"th";s:129:"การสร้างแก้ไขและบันทึกแม่แบบอีเมลแบบไดนามิก";s:2:"se";s:49:"Skapa, redigera och spara dynamiska E-postmallar.";}', 1, 0, 1, 'structure', 1, 1, 1, 1411570810),
(4, 'a:25:{s:2:"en";s:7:"Add-ons";s:2:"ar";s:16:"الإضافات";s:2:"br";s:12:"Complementos";s:2:"pt";s:12:"Complementos";s:2:"cs";s:8:"Doplňky";s:2:"da";s:7:"Add-ons";s:2:"de";s:13:"Erweiterungen";s:2:"el";s:16:"Πρόσθετα";s:2:"es";s:9:"Agregados";s:2:"fa";s:17:"افزونه ها";s:2:"fi";s:9:"Lisäosat";s:2:"fr";s:10:"Extensions";s:2:"he";s:12:"תוספות";s:2:"id";s:7:"Pengaya";s:2:"it";s:7:"Add-ons";s:2:"lt";s:7:"Priedai";s:2:"nl";s:7:"Add-ons";s:2:"pl";s:12:"Rozszerzenia";s:2:"ru";s:20:"Дополнения";s:2:"sl";s:11:"Razširitve";s:2:"tw";s:12:"附加模組";s:2:"cn";s:12:"附加模组";s:2:"hu";s:14:"Bővítmények";s:2:"th";s:27:"ส่วนเสริม";s:2:"se";s:8:"Tillägg";}', 'addons', '2.0.0', NULL, 'a:25:{s:2:"en";s:59:"Allows admins to see a list of currently installed modules.";s:2:"ar";s:91:"تُمكّن المُدراء من معاينة جميع الوحدات المُثبّتة.";s:2:"br";s:75:"Permite aos administradores ver a lista dos módulos instalados atualmente.";s:2:"pt";s:75:"Permite aos administradores ver a lista dos módulos instalados atualmente.";s:2:"cs";s:68:"Umožňuje administrátorům vidět seznam nainstalovaných modulů.";s:2:"da";s:63:"Lader administratorer se en liste over de installerede moduler.";s:2:"de";s:56:"Zeigt Administratoren alle aktuell installierten Module.";s:2:"el";s:152:"Επιτρέπει στους διαχειριστές να προβάλουν μια λίστα των εγκατεστημένων πρόσθετων.";s:2:"es";s:71:"Permite a los administradores ver una lista de los módulos instalados.";s:2:"fa";s:93:"مشاهده لیست افزونه ها و مدیریت آنها برای ادمین سایت";s:2:"fi";s:60:"Listaa järjestelmänvalvojalle käytössä olevat moduulit.";s:2:"fr";s:66:"Permet aux administrateurs de voir la liste des modules installés";s:2:"he";s:160:"נותן אופציה למנהל לראות רשימה של המודולים אשר מותקנים כעת באתר או להתקין מודולים נוספים";s:2:"id";s:57:"Memperlihatkan kepada admin daftar modul yang terinstall.";s:2:"it";s:83:"Permette agli amministratori di vedere una lista dei moduli attualmente installati.";s:2:"lt";s:75:"Vartotojai ir svečiai gali komentuoti jūsų naujienas, puslapius ar foto.";s:2:"nl";s:79:"Stelt admins in staat om een overzicht van geinstalleerde modules te genereren.";s:2:"pl";s:81:"Umożliwiają administratorowi wgląd do listy obecnie zainstalowanych modułów.";s:2:"ru";s:83:"Список модулей, которые установлены на сайте.";s:2:"sl";s:65:"Dovoljuje administratorjem pregled trenutno nameščenih modulov.";s:2:"tw";s:54:"管理員可以檢視目前已經安裝模組的列表";s:2:"cn";s:54:"管理员可以检视目前已经安装模组的列表";s:2:"hu";s:79:"Lehetővé teszi az adminoknak, hogy lássák a telepített modulok listáját.";s:2:"th";s:162:"ช่วยให้ผู้ดูแลระบบดูรายการของโมดูลที่ติดตั้งในปัจจุบัน";s:2:"se";s:67:"Gör det möjligt för administratören att se installerade mouler.";}', 0, 0, 1, '0', 1, 1, 1, 1411570810),
(5, 'a:17:{s:2:"en";s:4:"Blog";s:2:"ar";s:16:"المدوّنة";s:2:"br";s:4:"Blog";s:2:"pt";s:4:"Blog";s:2:"el";s:18:"Ιστολόγιο";s:2:"fa";s:8:"بلاگ";s:2:"he";s:8:"בלוג";s:2:"id";s:4:"Blog";s:2:"lt";s:6:"Blogas";s:2:"pl";s:4:"Blog";s:2:"ru";s:8:"Блог";s:2:"tw";s:6:"文章";s:2:"cn";s:6:"文章";s:2:"hu";s:4:"Blog";s:2:"fi";s:5:"Blogi";s:2:"th";s:15:"บล็อก";s:2:"se";s:5:"Blogg";}', 'blog', '2.0.0', NULL, 'a:25:{s:2:"en";s:18:"Post blog entries.";s:2:"ar";s:48:"أنشر المقالات على مدوّنتك.";s:2:"br";s:30:"Escrever publicações de blog";s:2:"pt";s:39:"Escrever e editar publicações no blog";s:2:"cs";s:49:"Publikujte nové články a příspěvky na blog.";s:2:"da";s:17:"Skriv blogindlæg";s:2:"de";s:47:"Veröffentliche neue Artikel und Blog-Einträge";s:2:"sl";s:23:"Objavite blog prispevke";s:2:"fi";s:28:"Kirjoita blogi artikkeleita.";s:2:"el";s:93:"Δημιουργήστε άρθρα και εγγραφές στο ιστολόγιο σας.";s:2:"es";s:54:"Escribe entradas para los artículos y blog (web log).";s:2:"fa";s:44:"مقالات منتشر شده در بلاگ";s:2:"fr";s:34:"Poster des articles d''actualités.";s:2:"he";s:19:"ניהול בלוג";s:2:"id";s:15:"Post entri blog";s:2:"it";s:36:"Pubblica notizie e post per il blog.";s:2:"lt";s:40:"Rašykite naujienas bei blog''o įrašus.";s:2:"nl";s:41:"Post nieuwsartikelen en blogs op uw site.";s:2:"pl";s:27:"Dodawaj nowe wpisy na blogu";s:2:"ru";s:49:"Управление записями блога.";s:2:"tw";s:42:"發表新聞訊息、部落格等文章。";s:2:"cn";s:42:"发表新闻讯息、部落格等文章。";s:2:"th";s:48:"โพสต์รายการบล็อก";s:2:"hu";s:32:"Blog bejegyzések létrehozása.";s:2:"se";s:18:"Inlägg i bloggen.";}', 1, 1, 1, 'content', 1, 1, 1, 1411570810),
(6, 'a:25:{s:2:"en";s:8:"Comments";s:2:"ar";s:18:"التعليقات";s:2:"br";s:12:"Comentários";s:2:"pt";s:12:"Comentários";s:2:"cs";s:11:"Komentáře";s:2:"da";s:11:"Kommentarer";s:2:"de";s:10:"Kommentare";s:2:"el";s:12:"Σχόλια";s:2:"es";s:11:"Comentarios";s:2:"fi";s:9:"Kommentit";s:2:"fr";s:12:"Commentaires";s:2:"fa";s:10:"نظرات";s:2:"he";s:12:"תגובות";s:2:"id";s:8:"Komentar";s:2:"it";s:8:"Commenti";s:2:"lt";s:10:"Komentarai";s:2:"nl";s:8:"Reacties";s:2:"pl";s:10:"Komentarze";s:2:"ru";s:22:"Комментарии";s:2:"sl";s:10:"Komentarji";s:2:"tw";s:6:"回應";s:2:"cn";s:6:"回应";s:2:"hu";s:16:"Hozzászólások";s:2:"th";s:33:"ความคิดเห็น";s:2:"se";s:11:"Kommentarer";}', 'comments', '1.1.0', NULL, 'a:25:{s:2:"en";s:76:"Users and guests can write comments for content like blog, pages and photos.";s:2:"ar";s:152:"يستطيع الأعضاء والزوّار كتابة التعليقات على المُحتوى كالأخبار، والصفحات والصّوَر.";s:2:"br";s:97:"Usuários e convidados podem escrever comentários para quase tudo com suporte nativo ao captcha.";s:2:"pt";s:100:"Utilizadores e convidados podem escrever comentários para quase tudo com suporte nativo ao captcha.";s:2:"cs";s:100:"Uživatelé a hosté mohou psát komentáře k obsahu, např. neovinkám, stránkám a fotografiím.";s:2:"da";s:83:"Brugere og besøgende kan skrive kommentarer til indhold som blog, sider og fotoer.";s:2:"de";s:65:"Benutzer und Gäste können für fast alles Kommentare schreiben.";s:2:"el";s:224:"Οι χρήστες και οι επισκέπτες μπορούν να αφήνουν σχόλια για περιεχόμενο όπως το ιστολόγιο, τις σελίδες και τις φωτογραφίες.";s:2:"es";s:130:"Los usuarios y visitantes pueden escribir comentarios en casi todo el contenido con el soporte de un sistema de captcha incluído.";s:2:"fa";s:168:"کاربران و مهمان ها می توانند نظرات خود را بر روی محتوای سایت در بلاگ و دیگر قسمت ها ارائه دهند";s:2:"fi";s:107:"Käyttäjät ja vieraat voivat kirjoittaa kommentteja eri sisältöihin kuten uutisiin, sivuihin ja kuviin.";s:2:"fr";s:130:"Les utilisateurs et les invités peuvent écrire des commentaires pour quasiment tout grâce au générateur de captcha intégré.";s:2:"he";s:94:"משתמשי האתר יכולים לרשום תגובות למאמרים, תמונות וכו";s:2:"id";s:100:"Pengguna dan pengunjung dapat menuliskan komentaruntuk setiap konten seperti blog, halaman dan foto.";s:2:"it";s:85:"Utenti e visitatori possono scrivere commenti ai contenuti quali blog, pagine e foto.";s:2:"lt";s:75:"Vartotojai ir svečiai gali komentuoti jūsų naujienas, puslapius ar foto.";s:2:"nl";s:52:"Gebruikers en gasten kunnen reageren op bijna alles.";s:2:"pl";s:93:"Użytkownicy i goście mogą dodawać komentarze z wbudowanym systemem zabezpieczeń captcha.";s:2:"ru";s:187:"Пользователи и гости могут добавлять комментарии к новостям, информационным страницам и фотографиям.";s:2:"sl";s:89:"Uporabniki in obiskovalci lahko vnesejo komentarje na vsebino kot je blok, stra ali slike";s:2:"tw";s:75:"用戶和訪客可以針對新聞、頁面與照片等內容發表回應。";s:2:"cn";s:75:"用户和访客可以针对新闻、页面与照片等内容发表回应。";s:2:"hu";s:117:"A felhasználók és a vendégek hozzászólásokat írhatnak a tartalomhoz (bejegyzésekhez, oldalakhoz, fotókhoz).";s:2:"th";s:240:"ผู้ใช้งานและผู้เยี่ยมชมสามารถเขียนความคิดเห็นในเนื้อหาของหน้าเว็บบล็อกและภาพถ่าย";s:2:"se";s:98:"Användare och besökare kan skriva kommentarer till innehåll som blogginlägg, sidor och bilder.";}', 0, 0, 1, 'content', 1, 1, 1, 1411570810),
(7, 'a:25:{s:2:"en";s:7:"Contact";s:2:"ar";s:14:"الإتصال";s:2:"br";s:7:"Contato";s:2:"pt";s:8:"Contacto";s:2:"cs";s:7:"Kontakt";s:2:"da";s:7:"Kontakt";s:2:"de";s:7:"Kontakt";s:2:"el";s:22:"Επικοινωνία";s:2:"es";s:8:"Contacto";s:2:"fa";s:18:"تماس با ما";s:2:"fi";s:13:"Ota yhteyttä";s:2:"fr";s:7:"Contact";s:2:"he";s:17:"יצירת קשר";s:2:"id";s:6:"Kontak";s:2:"it";s:10:"Contattaci";s:2:"lt";s:18:"Kontaktinė formą";s:2:"nl";s:7:"Contact";s:2:"pl";s:7:"Kontakt";s:2:"ru";s:27:"Обратная связь";s:2:"sl";s:7:"Kontakt";s:2:"tw";s:12:"聯絡我們";s:2:"cn";s:12:"联络我们";s:2:"hu";s:9:"Kapcsolat";s:2:"th";s:18:"ติดต่อ";s:2:"se";s:7:"Kontakt";}', 'contact', '1.0.0', NULL, 'a:25:{s:2:"en";s:112:"Adds a form to your site that allows visitors to send emails to you without disclosing an email address to them.";s:2:"ar";s:157:"إضافة استمارة إلى موقعك تُمكّن الزوّار من مراسلتك دون علمهم بعنوان البريد الإلكتروني.";s:2:"br";s:139:"Adiciona um formulário para o seu site permitir aos visitantes que enviem e-mails para voce sem divulgar um endereço de e-mail para eles.";s:2:"pt";s:116:"Adiciona um formulário ao seu site que permite aos visitantes enviarem e-mails sem divulgar um endereço de e-mail.";s:2:"cs";s:149:"Přidá na web kontaktní formulář pro návštěvníky a uživatele, díky kterému vás mohou kontaktovat i bez znalosti vaší e-mailové adresy.";s:2:"da";s:123:"Tilføjer en formular på din side som tillader besøgende at sende mails til dig, uden at du skal opgive din email-adresse";s:2:"de";s:119:"Fügt ein Formular hinzu, welches Besuchern erlaubt Emails zu schreiben, ohne die Kontakt Email-Adresse offen zu legen.";s:2:"el";s:273:"Προσθέτει μια φόρμα στον ιστότοπό σας που επιτρέπει σε επισκέπτες να σας στέλνουν μηνύμα μέσω email χωρίς να τους αποκαλύπτεται η διεύθυνση του email σας.";s:2:"fa";s:239:"فرم تماس را به سایت اضافه می کند تا مراجعین بتوانند بدون اینکه ایمیل شما را بدانند برای شما پیغام هایی را از طریق ایمیل ارسال نمایند.";s:2:"es";s:156:"Añade un formulario a tu sitio que permitirá a los visitantes enviarte correos electrónicos a ti sin darles tu dirección de correo directamente a ellos.";s:2:"fi";s:128:"Luo lomakkeen sivustollesi, josta kävijät voivat lähettää sähköpostia tietämättä vastaanottajan sähköpostiosoitetta.";s:2:"fr";s:122:"Ajoute un formulaire à votre site qui permet aux visiteurs de vous envoyer un e-mail sans révéler votre adresse e-mail.";s:2:"he";s:155:"מוסיף תופס יצירת קשר לאתר על מנת לא לחסוף כתובת דואר האלקטרוני של האתר למנועי פרסומות";s:2:"id";s:149:"Menambahkan formulir ke dalam situs Anda yang memungkinkan pengunjung untuk mengirimkan email kepada Anda tanpa memberikan alamat email kepada mereka";s:2:"it";s:119:"Aggiunge un modulo al tuo sito che permette ai visitatori di inviarti email senza mostrare loro il tuo indirizzo email.";s:2:"lt";s:124:"Prideda jūsų puslapyje formą leidžianti lankytojams siūsti jums el. laiškus neatskleidžiant jūsų el. pašto adreso.";s:2:"nl";s:125:"Voegt een formulier aan de site toe waarmee bezoekers een email kunnen sturen, zonder dat u ze een emailadres hoeft te tonen.";s:2:"pl";s:126:"Dodaje formularz kontaktowy do Twojej strony, który pozwala użytkownikom wysłanie maila za pomocą formularza kontaktowego.";s:2:"ru";s:234:"Добавляет форму обратной связи на сайт, через которую посетители могут отправлять вам письма, при этом адрес Email остаётся скрыт.";s:2:"sl";s:113:"Dodaj obrazec za kontakt da vam lahko obiskovalci pošljejo sporočilo brez da bi jim razkrili vaš email naslov.";s:2:"tw";s:147:"為您的網站新增「聯絡我們」的功能，對訪客是較為清楚便捷的聯絡方式，也無須您將電子郵件公開在網站上。";s:2:"cn";s:147:"为您的网站新增“联络我们”的功能，对访客是较为清楚便捷的联络方式，也无须您将电子邮件公开在网站上。";s:2:"th";s:316:"เพิ่มแบบฟอร์มในเว็บไซต์ของคุณ ช่วยให้ผู้เยี่ยมชมสามารถส่งอีเมลถึงคุณโดยไม่ต้องเปิดเผยที่อยู่อีเมลของพวกเขา";s:2:"hu";s:156:"Létrehozható vele olyan űrlap, amely lehetővé teszi a látogatók számára, hogy e-mailt küldjenek neked úgy, hogy nem feded fel az e-mail címedet.";s:2:"se";s:53:"Lägger till ett kontaktformulär till din webbplats.";}', 0, 0, 0, '0', 1, 1, 1, 1411570810),
(8, 'a:24:{s:2:"en";s:5:"Files";s:2:"ar";s:16:"الملفّات";s:2:"br";s:8:"Arquivos";s:2:"pt";s:9:"Ficheiros";s:2:"cs";s:7:"Soubory";s:2:"da";s:5:"Filer";s:2:"de";s:7:"Dateien";s:2:"el";s:12:"Αρχεία";s:2:"es";s:8:"Archivos";s:2:"fa";s:13:"فایل ها";s:2:"fi";s:9:"Tiedostot";s:2:"fr";s:8:"Fichiers";s:2:"he";s:10:"קבצים";s:2:"id";s:4:"File";s:2:"it";s:4:"File";s:2:"lt";s:6:"Failai";s:2:"nl";s:9:"Bestanden";s:2:"ru";s:10:"Файлы";s:2:"sl";s:8:"Datoteke";s:2:"tw";s:6:"檔案";s:2:"cn";s:6:"档案";s:2:"hu";s:7:"Fájlok";s:2:"th";s:12:"ไฟล์";s:2:"se";s:5:"Filer";}', 'files', '2.0.0', NULL, 'a:24:{s:2:"en";s:40:"Manages files and folders for your site.";s:2:"ar";s:50:"إدارة ملفات ومجلّدات موقعك.";s:2:"br";s:53:"Permite gerenciar facilmente os arquivos de seu site.";s:2:"pt";s:59:"Permite gerir facilmente os ficheiros e pastas do seu site.";s:2:"cs";s:43:"Spravujte soubory a složky na vašem webu.";s:2:"da";s:41:"Administrer filer og mapper for dit site.";s:2:"de";s:35:"Verwalte Dateien und Verzeichnisse.";s:2:"el";s:100:"Διαχειρίζεται αρχεία και φακέλους για το ιστότοπό σας.";s:2:"es";s:43:"Administra archivos y carpetas en tu sitio.";s:2:"fa";s:79:"مدیریت فایل های چند رسانه ای و فولدر ها سایت";s:2:"fi";s:43:"Hallitse sivustosi tiedostoja ja kansioita.";s:2:"fr";s:46:"Gérer les fichiers et dossiers de votre site.";s:2:"he";s:47:"ניהול תיקיות וקבצים שבאתר";s:2:"id";s:42:"Mengatur file dan folder dalam situs Anda.";s:2:"it";s:38:"Gestisci file e cartelle del tuo sito.";s:2:"lt";s:28:"Katalogų ir bylų valdymas.";s:2:"nl";s:41:"Beheer bestanden en mappen op uw website.";s:2:"ru";s:78:"Управление файлами и папками вашего сайта.";s:2:"sl";s:38:"Uredi datoteke in mape na vaši strani";s:2:"tw";s:33:"管理網站中的檔案與目錄";s:2:"cn";s:33:"管理网站中的档案与目录";s:2:"hu";s:41:"Fájlok és mappák kezelése az oldalon.";s:2:"th";s:141:"บริหารจัดการไฟล์และโฟลเดอร์สำหรับเว็บไซต์ของคุณ";s:2:"se";s:45:"Hanterar filer och mappar för din webbplats.";}', 0, 0, 1, 'content', 1, 1, 1, 1411570810),
(9, 'a:24:{s:2:"en";s:6:"Groups";s:2:"ar";s:18:"المجموعات";s:2:"br";s:6:"Grupos";s:2:"pt";s:6:"Grupos";s:2:"cs";s:7:"Skupiny";s:2:"da";s:7:"Grupper";s:2:"de";s:7:"Gruppen";s:2:"el";s:12:"Ομάδες";s:2:"es";s:6:"Grupos";s:2:"fa";s:13:"گروه ها";s:2:"fi";s:7:"Ryhmät";s:2:"fr";s:7:"Groupes";s:2:"he";s:12:"קבוצות";s:2:"id";s:4:"Grup";s:2:"it";s:6:"Gruppi";s:2:"lt";s:7:"Grupės";s:2:"nl";s:7:"Groepen";s:2:"ru";s:12:"Группы";s:2:"sl";s:7:"Skupine";s:2:"tw";s:6:"群組";s:2:"cn";s:6:"群组";s:2:"hu";s:9:"Csoportok";s:2:"th";s:15:"กลุ่ม";s:2:"se";s:7:"Grupper";}', 'groups', '1.0.0', NULL, 'a:24:{s:2:"en";s:54:"Users can be placed into groups to manage permissions.";s:2:"ar";s:100:"يمكن وضع المستخدمين في مجموعات لتسهيل إدارة صلاحياتهم.";s:2:"br";s:72:"Usuários podem ser inseridos em grupos para gerenciar suas permissões.";s:2:"pt";s:74:"Utilizadores podem ser inseridos em grupos para gerir as suas permissões.";s:2:"cs";s:77:"Uživatelé mohou být rozřazeni do skupin pro lepší správu oprávnění.";s:2:"da";s:49:"Brugere kan inddeles i grupper for adgangskontrol";s:2:"de";s:85:"Benutzer können zu Gruppen zusammengefasst werden um diesen Zugriffsrechte zu geben.";s:2:"el";s:168:"Οι χρήστες μπορούν να τοποθετηθούν σε ομάδες και έτσι να διαχειριστείτε τα δικαιώματά τους.";s:2:"es";s:75:"Los usuarios podrán ser colocados en grupos para administrar sus permisos.";s:2:"fa";s:149:"کاربرها می توانند در گروه های ساماندهی شوند تا بتوان اجازه های مختلفی را ایجاد کرد";s:2:"fi";s:84:"Käyttäjät voidaan liittää ryhmiin, jotta käyttöoikeuksia voidaan hallinnoida.";s:2:"fr";s:82:"Les utilisateurs peuvent appartenir à des groupes afin de gérer les permissions.";s:2:"he";s:62:"נותן אפשרות לאסוף משתמשים לקבוצות";s:2:"id";s:68:"Pengguna dapat dikelompokkan ke dalam grup untuk mengatur perizinan.";s:2:"it";s:69:"Gli utenti possono essere inseriti in gruppi per gestirne i permessi.";s:2:"lt";s:67:"Vartotojai gali būti priskirti grupei tam, kad valdyti jų teises.";s:2:"nl";s:73:"Gebruikers kunnen in groepen geplaatst worden om rechten te kunnen geven.";s:2:"ru";s:134:"Пользователей можно объединять в группы, для управления правами доступа.";s:2:"sl";s:64:"Uporabniki so lahko razvrščeni v skupine za urejanje dovoljenj";s:2:"tw";s:45:"用戶可以依群組分類並管理其權限";s:2:"cn";s:45:"用户可以依群组分类并管理其权限";s:2:"hu";s:73:"A felhasználók csoportokba rendezhetőek a jogosultságok kezelésére.";s:2:"th";s:84:"สามารถวางผู้ใช้ลงในกลุ่มเพื่";s:2:"se";s:76:"Användare kan delas in i grupper för att hantera roller och behörigheter.";}', 0, 0, 1, 'users', 1, 1, 1, 1411570810),
(10, 'a:17:{s:2:"en";s:8:"Keywords";s:2:"ar";s:21:"كلمات البحث";s:2:"br";s:14:"Palavras-chave";s:2:"pt";s:14:"Palavras-chave";s:2:"da";s:9:"Nøgleord";s:2:"el";s:27:"Λέξεις Κλειδιά";s:2:"fa";s:21:"کلمات کلیدی";s:2:"fr";s:10:"Mots-Clés";s:2:"id";s:10:"Kata Kunci";s:2:"nl";s:14:"Sleutelwoorden";s:2:"tw";s:6:"鍵詞";s:2:"cn";s:6:"键词";s:2:"hu";s:11:"Kulcsszavak";s:2:"fi";s:10:"Avainsanat";s:2:"sl";s:15:"Ključne besede";s:2:"th";s:15:"คำค้น";s:2:"se";s:9:"Nyckelord";}', 'keywords', '1.1.0', NULL, 'a:17:{s:2:"en";s:71:"Maintain a central list of keywords to label and organize your content.";s:2:"ar";s:124:"أنشئ مجموعة من كلمات البحث التي تستطيع من خلالها وسم وتنظيم المحتوى.";s:2:"br";s:85:"Mantém uma lista central de palavras-chave para rotular e organizar o seu conteúdo.";s:2:"pt";s:85:"Mantém uma lista central de palavras-chave para rotular e organizar o seu conteúdo.";s:2:"da";s:72:"Vedligehold en central liste af nøgleord for at organisere dit indhold.";s:2:"el";s:181:"Συντηρεί μια κεντρική λίστα από λέξεις κλειδιά για να οργανώνετε μέσω ετικετών το περιεχόμενό σας.";s:2:"fa";s:110:"حفظ و نگهداری لیست مرکزی از کلمات کلیدی برای سازماندهی محتوا";s:2:"fr";s:87:"Maintenir une liste centralisée de Mots-Clés pour libeller et organiser vos contenus.";s:2:"id";s:71:"Memantau daftar kata kunci untuk melabeli dan mengorganisasikan konten.";s:2:"nl";s:91:"Beheer een centrale lijst van sleutelwoorden om uw content te categoriseren en organiseren.";s:2:"tw";s:64:"集中管理可用於標題與內容的鍵詞(keywords)列表。";s:2:"cn";s:64:"集中管理可用于标题与内容的键词(keywords)列表。";s:2:"hu";s:65:"Ez egy központi kulcsszó lista a cimkékhez és a tartalmakhoz.";s:2:"fi";s:92:"Hallinnoi keskitettyä listaa avainsanoista merkitäksesi ja järjestelläksesi sisältöä.";s:2:"sl";s:82:"Vzdržuj centralni seznam ključnih besed za označevanje in ogranizacijo vsebine.";s:2:"th";s:189:"ศูนย์กลางการปรับปรุงคำค้นในการติดฉลากและจัดระเบียบเนื้อหาของคุณ";s:2:"se";s:61:"Hantera nyckelord för att organisera webbplatsens innehåll.";}', 0, 0, 1, 'data', 1, 1, 1, 1411570810),
(11, 'a:15:{s:2:"en";s:11:"Maintenance";s:2:"pt";s:12:"Manutenção";s:2:"ar";s:14:"الصيانة";s:2:"el";s:18:"Συντήρηση";s:2:"hu";s:13:"Karbantartás";s:2:"fa";s:15:"نگه داری";s:2:"fi";s:9:"Ylläpito";s:2:"fr";s:11:"Maintenance";s:2:"id";s:12:"Pemeliharaan";s:2:"it";s:12:"Manutenzione";s:2:"se";s:10:"Underhåll";s:2:"sl";s:12:"Vzdrževanje";s:2:"th";s:39:"การบำรุงรักษา";s:2:"tw";s:6:"維護";s:2:"cn";s:6:"维护";}', 'maintenance', '1.0.0', NULL, 'a:15:{s:2:"en";s:63:"Manage the site cache and export information from the database.";s:2:"pt";s:68:"Gerir o cache do seu site e exportar informações da base de dados.";s:2:"ar";s:81:"حذف عناصر الذاكرة المخبأة عبر واجهة الإدارة.";s:2:"el";s:142:"Διαγραφή αντικειμένων προσωρινής αποθήκευσης μέσω της περιοχής διαχείρισης.";s:2:"id";s:60:"Mengatur cache situs dan mengexport informasi dari database.";s:2:"it";s:65:"Gestisci la cache del sito e esporta le informazioni dal database";s:2:"fa";s:73:"مدیریت کش سایت و صدور اطلاعات از دیتابیس";s:2:"fr";s:71:"Gérer le cache du site et exporter les contenus de la base de données";s:2:"fi";s:59:"Hallinoi sivuston välimuistia ja vie tietoa tietokannasta.";s:2:"hu";s:66:"Az oldal gyorsítótár kezelése és az adatbázis exportálása.";s:2:"se";s:76:"Underhåll webbplatsens cache och exportera data från webbplatsens databas.";s:2:"sl";s:69:"Upravljaj s predpomnilnikom strani (cache) in izvozi podatke iz baze.";s:2:"th";s:150:"การจัดการแคชเว็บไซต์และข้อมูลการส่งออกจากฐานข้อมูล";s:2:"tw";s:45:"經由管理介面手動刪除暫存資料。";s:2:"cn";s:45:"经由管理介面手动删除暂存资料。";}', 0, 0, 1, 'data', 1, 1, 1, 1411570810),
(12, 'a:25:{s:2:"en";s:10:"Navigation";s:2:"ar";s:14:"الروابط";s:2:"br";s:11:"Navegação";s:2:"pt";s:11:"Navegação";s:2:"cs";s:8:"Navigace";s:2:"da";s:10:"Navigation";s:2:"de";s:10:"Navigation";s:2:"el";s:16:"Πλοήγηση";s:2:"es";s:11:"Navegación";s:2:"fa";s:11:"منو ها";s:2:"fi";s:10:"Navigointi";s:2:"fr";s:10:"Navigation";s:2:"he";s:10:"ניווט";s:2:"id";s:8:"Navigasi";s:2:"it";s:11:"Navigazione";s:2:"lt";s:10:"Navigacija";s:2:"nl";s:9:"Navigatie";s:2:"pl";s:9:"Nawigacja";s:2:"ru";s:18:"Навигация";s:2:"sl";s:10:"Navigacija";s:2:"tw";s:12:"導航選單";s:2:"cn";s:12:"导航选单";s:2:"th";s:36:"ตัวช่วยนำทาง";s:2:"hu";s:11:"Navigáció";s:2:"se";s:10:"Navigation";}', 'navigation', '1.1.0', NULL, 'a:25:{s:2:"en";s:78:"Manage links on navigation menus and all the navigation groups they belong to.";s:2:"ar";s:85:"إدارة روابط وقوائم ومجموعات الروابط في الموقع.";s:2:"br";s:91:"Gerenciar links do menu de navegação e todos os grupos de navegação pertencentes a ele.";s:2:"pt";s:93:"Gerir todos os grupos dos menus de navegação e os links de navegação pertencentes a eles.";s:2:"cs";s:73:"Správa odkazů v navigaci a všech souvisejících navigačních skupin.";s:2:"da";s:82:"Håndtér links på navigationsmenuerne og alle navigationsgrupperne de tilhører.";s:2:"de";s:76:"Verwalte Links in Navigationsmenüs und alle zugehörigen Navigationsgruppen";s:2:"el";s:207:"Διαχειριστείτε τους συνδέσμους στα μενού πλοήγησης και όλες τις ομάδες συνδέσμων πλοήγησης στις οποίες ανήκουν.";s:2:"es";s:102:"Administra links en los menús de navegación y en todos los grupos de navegación al cual pertenecen.";s:2:"fa";s:68:"مدیریت منو ها و گروه های مربوط به آنها";s:2:"fi";s:91:"Hallitse linkkejä navigointi valikoissa ja kaikkia navigointi ryhmiä, joihin ne kuuluvat.";s:2:"fr";s:97:"Gérer les liens du menu Navigation et tous les groupes de navigation auxquels ils appartiennent.";s:2:"he";s:73:"ניהול שלוחות תפריטי ניווט וקבוצות ניווט";s:2:"id";s:73:"Mengatur tautan pada menu navigasi dan semua pengelompokan grup navigasi.";s:2:"it";s:97:"Gestisci i collegamenti dei menu di navigazione e tutti i gruppi di navigazione da cui dipendono.";s:2:"lt";s:95:"Tvarkyk nuorodas navigacijų menių ir visas navigacijų grupes kurioms tos nuorodos priklauso.";s:2:"nl";s:92:"Beheer koppelingen op de navigatiemenu&apos;s en alle navigatiegroepen waar ze onder vallen.";s:2:"pl";s:95:"Zarządzaj linkami w menu nawigacji oraz wszystkimi grupami nawigacji do których one należą.";s:2:"ru";s:136:"Управление ссылками в меню навигации и группах, к которым они принадлежат.";s:2:"sl";s:64:"Uredi povezave v meniju in vse skupine povezav ki jim pripadajo.";s:2:"tw";s:72:"管理導航選單中的連結，以及它們所隸屬的導航群組。";s:2:"cn";s:72:"管理导航选单中的连结，以及它们所隶属的导航群组。";s:2:"th";s:108:"จัดการการเชื่อมโยงนำทางและกลุ่มนำทาง";s:2:"se";s:33:"Hantera länkar och länkgrupper.";s:2:"hu";s:100:"Linkek kezelése a navigációs menükben és a navigációs csoportok kezelése, amikhez tartoznak.";}', 0, 0, 1, 'structure', 1, 1, 1, 1411570810),
(13, 'a:25:{s:2:"en";s:5:"Pages";s:2:"ar";s:14:"الصفحات";s:2:"br";s:8:"Páginas";s:2:"pt";s:8:"Páginas";s:2:"cs";s:8:"Stránky";s:2:"da";s:5:"Sider";s:2:"de";s:6:"Seiten";s:2:"el";s:14:"Σελίδες";s:2:"es";s:8:"Páginas";s:2:"fa";s:14:"صفحه ها ";s:2:"fi";s:5:"Sivut";s:2:"fr";s:5:"Pages";s:2:"he";s:8:"דפים";s:2:"id";s:7:"Halaman";s:2:"it";s:6:"Pagine";s:2:"lt";s:9:"Puslapiai";s:2:"nl";s:13:"Pagina&apos;s";s:2:"pl";s:6:"Strony";s:2:"ru";s:16:"Страницы";s:2:"sl";s:6:"Strani";s:2:"tw";s:6:"頁面";s:2:"cn";s:6:"页面";s:2:"hu";s:7:"Oldalak";s:2:"th";s:21:"หน้าเพจ";s:2:"se";s:5:"Sidor";}', 'pages', '2.2.0', NULL, 'a:25:{s:2:"en";s:55:"Add custom pages to the site with any content you want.";s:2:"ar";s:99:"إضافة صفحات مُخصّصة إلى الموقع تحتوي أية مُحتوى تريده.";s:2:"br";s:82:"Adicionar páginas personalizadas ao site com qualquer conteúdo que você queira.";s:2:"pt";s:86:"Adicionar páginas personalizadas ao seu site com qualquer conteúdo que você queira.";s:2:"cs";s:74:"Přidávejte vlastní stránky na web s jakýmkoliv obsahem budete chtít.";s:2:"da";s:71:"Tilføj brugerdefinerede sider til dit site med det indhold du ønsker.";s:2:"de";s:49:"Füge eigene Seiten mit anpassbaren Inhalt hinzu.";s:2:"el";s:152:"Προσθέστε και επεξεργαστείτε σελίδες στον ιστότοπό σας με ό,τι περιεχόμενο θέλετε.";s:2:"es";s:77:"Agrega páginas customizadas al sitio con cualquier contenido que tu quieras.";s:2:"fa";s:96:"ایحاد صفحات جدید و دلخواه با هر محتوایی که دوست دارید";s:2:"fi";s:47:"Lisää mitä tahansa sisältöä sivustollesi.";s:2:"fr";s:89:"Permet d''ajouter sur le site des pages personalisées avec le contenu que vous souhaitez.";s:2:"he";s:35:"ניהול דפי תוכן האתר";s:2:"id";s:75:"Menambahkan halaman ke dalam situs dengan konten apapun yang Anda perlukan.";s:2:"it";s:73:"Aggiungi pagine personalizzate al sito con qualsiesi contenuto tu voglia.";s:2:"lt";s:46:"Pridėkite nuosavus puslapius betkokio turinio";s:2:"nl";s:70:"Voeg aangepaste pagina&apos;s met willekeurige inhoud aan de site toe.";s:2:"pl";s:53:"Dodaj własne strony z dowolną treścią do witryny.";s:2:"ru";s:134:"Управление информационными страницами сайта, с произвольным содержимым.";s:2:"sl";s:44:"Dodaj stran s kakršno koli vsebino želite.";s:2:"tw";s:39:"為您的網站新增自定的頁面。";s:2:"cn";s:39:"为您的网站新增自定的页面。";s:2:"th";s:168:"เพิ่มหน้าเว็บที่กำหนดเองไปยังเว็บไซต์ของคุณตามที่ต้องการ";s:2:"hu";s:67:"Saját oldalak hozzáadása a weboldalhoz, akármilyen tartalommal.";s:2:"se";s:39:"Lägg till egna sidor till webbplatsen.";}', 1, 1, 1, 'content', 1, 1, 1, 1411570810),
(14, 'a:25:{s:2:"en";s:11:"Permissions";s:2:"ar";s:18:"الصلاحيات";s:2:"br";s:11:"Permissões";s:2:"pt";s:11:"Permissões";s:2:"cs";s:12:"Oprávnění";s:2:"da";s:14:"Adgangskontrol";s:2:"de";s:14:"Zugriffsrechte";s:2:"el";s:20:"Δικαιώματα";s:2:"es";s:8:"Permisos";s:2:"fa";s:15:"اجازه ها";s:2:"fi";s:16:"Käyttöoikeudet";s:2:"fr";s:11:"Permissions";s:2:"he";s:12:"הרשאות";s:2:"id";s:9:"Perizinan";s:2:"it";s:8:"Permessi";s:2:"lt";s:7:"Teisės";s:2:"nl";s:15:"Toegangsrechten";s:2:"pl";s:11:"Uprawnienia";s:2:"ru";s:25:"Права доступа";s:2:"sl";s:10:"Dovoljenja";s:2:"tw";s:6:"權限";s:2:"cn";s:6:"权限";s:2:"hu";s:14:"Jogosultságok";s:2:"th";s:18:"สิทธิ์";s:2:"se";s:13:"Behörigheter";}', 'permissions', '1.0.0', NULL, 'a:25:{s:2:"en";s:68:"Control what type of users can see certain sections within the site.";s:2:"ar";s:127:"التحكم بإعطاء الصلاحيات للمستخدمين للوصول إلى أقسام الموقع المختلفة.";s:2:"br";s:68:"Controle quais tipos de usuários podem ver certas seções no site.";s:2:"pt";s:75:"Controle quais os tipos de utilizadores podem ver certas secções no site.";s:2:"cs";s:93:"Spravujte oprávnění pro jednotlivé typy uživatelů a ke kterým sekcím mají přístup.";s:2:"da";s:72:"Kontroller hvilken type brugere der kan se bestemte sektioner på sitet.";s:2:"de";s:70:"Regelt welche Art von Benutzer welche Sektion in der Seite sehen kann.";s:2:"el";s:180:"Ελέγξτε τα δικαιώματα χρηστών και ομάδων χρηστών όσο αφορά σε διάφορες λειτουργίες του ιστοτόπου.";s:2:"es";s:81:"Controla que tipo de usuarios pueden ver secciones específicas dentro del sitio.";s:2:"fa";s:59:"مدیریت اجازه های گروه های کاربری";s:2:"fi";s:72:"Hallitse minkä tyyppisiin osioihin käyttäjät pääsevät sivustolla.";s:2:"fr";s:104:"Permet de définir les autorisations des groupes d''utilisateurs pour afficher les différentes sections.";s:2:"he";s:75:"ניהול הרשאות כניסה לאיזורים מסוימים באתר";s:2:"id";s:76:"Mengontrol tipe pengguna mana yang dapat mengakses suatu bagian dalam situs.";s:2:"it";s:78:"Controlla che tipo di utenti posssono accedere a determinate sezioni del sito.";s:2:"lt";s:72:"Kontroliuokite kokio tipo varotojai kokią dalį puslapio gali pasiekti.";s:2:"nl";s:71:"Bepaal welke typen gebruikers toegang hebben tot gedeeltes van de site.";s:2:"pl";s:79:"Ustaw, którzy użytkownicy mogą mieć dostęp do odpowiednich sekcji witryny.";s:2:"ru";s:209:"Управление правами доступа, ограничение доступа определённых групп пользователей к произвольным разделам сайта.";s:2:"sl";s:85:"Uredite dovoljenja kateri tip uporabnika lahko vidi določena področja vaše strani.";s:2:"tw";s:81:"用來控制不同類別的用戶，設定其瀏覽特定網站內容的權限。";s:2:"cn";s:81:"用来控制不同类别的用户，设定其浏览特定网站内容的权限。";s:2:"hu";s:129:"A felhasználók felügyelet alatt tartására, hogy milyen típusú felhasználók, mit láthatnak, mely szakaszain az oldalnak.";s:2:"th";s:117:"ควบคุมว่าผู้ใช้งานจะเห็นหมวดหมู่ไหนบ้าง";s:2:"se";s:27:"Hantera gruppbehörigheter.";}', 0, 0, 1, 'users', 1, 1, 1, 1411570810),
(15, 'a:24:{s:2:"en";s:9:"Redirects";s:2:"ar";s:18:"التوجيهات";s:2:"br";s:17:"Redirecionamentos";s:2:"pt";s:17:"Redirecionamentos";s:2:"cs";s:16:"Přesměrování";s:2:"da";s:13:"Omadressering";s:2:"el";s:30:"Ανακατευθύνσεις";s:2:"es";s:13:"Redirecciones";s:2:"fa";s:17:"انتقال ها";s:2:"fi";s:18:"Uudelleenohjaukset";s:2:"fr";s:12:"Redirections";s:2:"he";s:12:"הפניות";s:2:"id";s:8:"Redirect";s:2:"it";s:11:"Reindirizzi";s:2:"lt";s:14:"Peradresavimai";s:2:"nl";s:12:"Verwijzingen";s:2:"ru";s:30:"Перенаправления";s:2:"sl";s:12:"Preusmeritve";s:2:"tw";s:6:"轉址";s:2:"cn";s:6:"转址";s:2:"hu";s:17:"Átirányítások";s:2:"pl";s:14:"Przekierowania";s:2:"th";s:42:"เปลี่ยนเส้นทาง";s:2:"se";s:14:"Omdirigeringar";}', 'redirects', '1.0.0', NULL, 'a:24:{s:2:"en";s:33:"Redirect from one URL to another.";s:2:"ar";s:47:"التوجيه من رابط URL إلى آخر.";s:2:"br";s:39:"Redirecionamento de uma URL para outra.";s:2:"pt";s:40:"Redirecionamentos de uma URL para outra.";s:2:"cs";s:43:"Přesměrujte z jedné adresy URL na jinou.";s:2:"da";s:35:"Omadresser fra en URL til en anden.";s:2:"el";s:81:"Ανακατευθείνετε μια διεύθυνση URL σε μια άλλη";s:2:"es";s:34:"Redireccionar desde una URL a otra";s:2:"fa";s:63:"انتقال دادن یک صفحه به یک آدرس دیگر";s:2:"fi";s:45:"Uudelleenohjaa käyttäjän paikasta toiseen.";s:2:"fr";s:34:"Redirection d''une URL à un autre.";s:2:"he";s:43:"הפניות מכתובת אחת לאחרת";s:2:"id";s:40:"Redirect dari satu URL ke URL yang lain.";s:2:"it";s:35:"Reindirizza da una URL ad un altra.";s:2:"lt";s:56:"Peradresuokite puslapį iš vieno adreso (URL) į kitą.";s:2:"nl";s:38:"Verwijs vanaf een URL naar een andere.";s:2:"ru";s:78:"Перенаправления с одного адреса на другой.";s:2:"sl";s:44:"Preusmeritev iz enega URL naslova na drugega";s:2:"tw";s:33:"將網址轉址、重新定向。";s:2:"cn";s:33:"将网址转址、重新定向。";s:2:"hu";s:38:"Egy URL átirányítása egy másikra.";s:2:"pl";s:44:"Przekierowanie z jednego adresu URL na inny.";s:2:"th";s:123:"เปลี่ยนเส้นทางจากที่หนึ่งไปยังอีกที่หนึ่ง";s:2:"se";s:38:"Omdirigera från en URL till en annan.";}', 0, 0, 1, 'structure', 1, 1, 1, 1411570810),
(16, 'a:10:{s:2:"en";s:6:"Search";s:2:"br";s:7:"Procura";s:2:"fr";s:9:"Recherche";s:2:"se";s:4:"Sök";s:2:"ar";s:10:"البحث";s:2:"tw";s:6:"搜尋";s:2:"cn";s:6:"搜寻";s:2:"it";s:7:"Ricerca";s:2:"fa";s:10:"جستجو";s:2:"fi";s:4:"Etsi";}', 'search', '1.0.0', NULL, 'a:10:{s:2:"en";s:72:"Search through various types of content with this modular search system.";s:2:"br";s:73:"Procure por vários tipos de conteúdo com este sistema de busca modular.";s:2:"fr";s:84:"Rechercher parmi différents types de contenus avec système de recherche modulaire.";s:2:"se";s:36:"Sök igenom olika typer av innehåll";s:2:"ar";s:102:"ابحث في أنواع مختلفة من المحتوى باستخدام نظام البحث هذا.";s:2:"tw";s:63:"此模組可用以搜尋網站中不同類型的資料內容。";s:2:"cn";s:63:"此模组可用以搜寻网站中不同类型的资料内容。";s:2:"it";s:71:"Cerca tra diversi tipi di contenuti con il sistema di reicerca modulare";s:2:"fa";s:115:"توسط این ماژول می توانید در محتواهای مختلف وبسایت جستجو نمایید.";s:2:"fi";s:76:"Etsi eri tyypistä sisältöä tällä modulaarisella hakujärjestelmällä.";}', 0, 0, 0, '0', 1, 1, 1, 1411570810),
(17, 'a:20:{s:2:"en";s:7:"Sitemap";s:2:"ar";s:23:"خريطة الموقع";s:2:"br";s:12:"Mapa do Site";s:2:"pt";s:12:"Mapa do Site";s:2:"de";s:7:"Sitemap";s:2:"el";s:31:"Χάρτης Ιστότοπου";s:2:"es";s:14:"Mapa del Sitio";s:2:"fa";s:17:"نقشه سایت";s:2:"fi";s:10:"Sivukartta";s:2:"fr";s:12:"Plan du site";s:2:"id";s:10:"Peta Situs";s:2:"it";s:14:"Mappa del sito";s:2:"lt";s:16:"Svetainės medis";s:2:"nl";s:7:"Sitemap";s:2:"ru";s:21:"Карта сайта";s:2:"tw";s:12:"網站地圖";s:2:"cn";s:12:"网站地图";s:2:"th";s:21:"ไซต์แมพ";s:2:"hu";s:13:"Oldaltérkép";s:2:"se";s:9:"Sajtkarta";}', 'sitemap', '1.3.0', NULL, 'a:21:{s:2:"en";s:87:"The sitemap module creates an index of all pages and an XML sitemap for search engines.";s:2:"ar";s:120:"وحدة خريطة الموقع تنشئ فهرساً لجميع الصفحات وملف XML لمحركات البحث.";s:2:"br";s:102:"O módulo de mapa do site cria um índice de todas as páginas e um sitemap XML para motores de busca.";s:2:"pt";s:102:"O módulo do mapa do site cria um índice de todas as páginas e um sitemap XML para motores de busca.";s:2:"da";s:86:"Sitemapmodulet opretter et indeks over alle sider og et XML sitemap til søgemaskiner.";s:2:"de";s:92:"Die Sitemap Modul erstellt einen Index aller Seiten und eine XML-Sitemap für Suchmaschinen.";s:2:"el";s:190:"Δημιουργεί έναν κατάλογο όλων των σελίδων και έναν χάρτη σελίδων σε μορφή XML για τις μηχανές αναζήτησης.";s:2:"es";s:111:"El módulo de mapa crea un índice de todas las páginas y un mapa del sitio XML para los motores de búsqueda.";s:2:"fa";s:150:"ماژول نقشه سایت یک لیست از همه ی صفحه ها به فرمت فایل XML برای موتور های جستجو می سازد";s:2:"fi";s:82:"sivukartta moduuli luo hakemisto kaikista sivuista ja XML sivukartta hakukoneille.";s:2:"fr";s:106:"Le module sitemap crée un index de toutes les pages et un plan de site XML pour les moteurs de recherche.";s:2:"id";s:110:"Modul peta situs ini membuat indeks dari setiap halaman dan sebuah format XML untuk mempermudah mesin pencari.";s:2:"it";s:104:"Il modulo mappa del sito crea un indice di tutte le pagine e una sitemap in XML per i motori di ricerca.";s:2:"lt";s:86:"struktūra modulis sukuria visų puslapių ir XML Sitemap paieškos sistemų indeksas.";s:2:"nl";s:89:"De sitemap module maakt een index van alle pagina''s en een XML sitemap voor zoekmachines.";s:2:"ru";s:144:"Карта модуль создает индекс всех страниц и карта сайта XML для поисковых систем.";s:2:"tw";s:84:"站點地圖模塊創建一個索引的所有網頁和XML網站地圖搜索引擎。";s:2:"cn";s:84:"站点地图模块创建一个索引的所有网页和XML网站地图搜索引擎。";s:2:"th";s:202:"โมดูลไซต์แมพสามารถสร้างดัชนีของหน้าเว็บทั้งหมดสำหรับเครื่องมือค้นหา.";s:2:"hu";s:94:"Ez a modul indexeli az összes oldalt és egy XML oldaltéképet generál a keresőmotoroknak.";s:2:"se";s:86:"Sajtkarta, modulen skapar ett index av alla sidor och en XML-sitemap för sökmotorer.";}', 0, 1, 0, 'content', 1, 1, 1, 1411570810);
INSERT INTO `default_modules` (`id`, `name`, `slug`, `version`, `type`, `description`, `skip_xss`, `is_frontend`, `is_backend`, `menu`, `enabled`, `installed`, `is_core`, `updated_on`) VALUES
(18, 'a:25:{s:2:"en";s:5:"Users";s:2:"ar";s:20:"المستخدمون";s:2:"br";s:9:"Usuários";s:2:"pt";s:12:"Utilizadores";s:2:"cs";s:11:"Uživatelé";s:2:"da";s:7:"Brugere";s:2:"de";s:8:"Benutzer";s:2:"el";s:14:"Χρήστες";s:2:"es";s:8:"Usuarios";s:2:"fa";s:14:"کاربران";s:2:"fi";s:12:"Käyttäjät";s:2:"fr";s:12:"Utilisateurs";s:2:"he";s:14:"משתמשים";s:2:"id";s:8:"Pengguna";s:2:"it";s:6:"Utenti";s:2:"lt";s:10:"Vartotojai";s:2:"nl";s:10:"Gebruikers";s:2:"pl";s:12:"Użytkownicy";s:2:"ru";s:24:"Пользователи";s:2:"sl";s:10:"Uporabniki";s:2:"tw";s:6:"用戶";s:2:"cn";s:6:"用户";s:2:"hu";s:14:"Felhasználók";s:2:"th";s:27:"ผู้ใช้งาน";s:2:"se";s:10:"Användare";}', 'users', '1.1.0', NULL, 'a:25:{s:2:"en";s:81:"Let users register and log in to the site, and manage them via the control panel.";s:2:"ar";s:133:"تمكين المستخدمين من التسجيل والدخول إلى الموقع، وإدارتهم من لوحة التحكم.";s:2:"br";s:125:"Permite com que usuários se registrem e entrem no site e também que eles sejam gerenciáveis apartir do painel de controle.";s:2:"pt";s:125:"Permite com que os utilizadores se registem e entrem no site e também que eles sejam geriveis apartir do painel de controlo.";s:2:"cs";s:103:"Umožňuje uživatelům se registrovat a přihlašovat a zároveň jejich správu v Kontrolním panelu.";s:2:"da";s:89:"Lader brugere registrere sig og logge ind på sitet, og håndtér dem via kontrolpanelet.";s:2:"de";s:108:"Erlaube Benutzern das Registrieren und Einloggen auf der Seite und verwalte sie über die Admin-Oberfläche.";s:2:"el";s:208:"Παρέχει λειτουργίες εγγραφής και σύνδεσης στους επισκέπτες. Επίσης από εδώ γίνεται η διαχείριση των λογαριασμών.";s:2:"es";s:138:"Permite el registro de nuevos usuarios quienes podrán loguearse en el sitio. Estos podrán controlarse desde el panel de administración.";s:2:"fa";s:151:"به کاربر ها امکان ثبت نام و لاگین در سایت را بدهید و آنها را در پنل مدیریت نظارت کنید";s:2:"fi";s:126:"Antaa käyttäjien rekisteröityä ja kirjautua sisään sivustolle sekä mahdollistaa niiden muokkaamisen hallintapaneelista.";s:2:"fr";s:112:"Permet aux utilisateurs de s''enregistrer et de se connecter au site et de les gérer via le panneau de contrôle";s:2:"he";s:62:"ניהול משתמשים: רישום, הפעלה ומחיקה";s:2:"id";s:102:"Memungkinkan pengguna untuk mendaftar dan masuk ke dalam situs, dan mengaturnya melalui control panel.";s:2:"it";s:95:"Fai iscrivere de entrare nel sito gli utenti, e gestiscili attraverso il pannello di controllo.";s:2:"lt";s:106:"Leidžia vartotojams registruotis ir prisijungti prie puslapio, ir valdyti juos per administravimo panele.";s:2:"nl";s:88:"Laat gebruikers registreren en inloggen op de site, en beheer ze via het controlepaneel.";s:2:"pl";s:87:"Pozwól użytkownikom na logowanie się na stronie i zarządzaj nimi za pomocą panelu.";s:2:"ru";s:155:"Управление зарегистрированными пользователями, активирование новых пользователей.";s:2:"sl";s:96:"Dovoli uporabnikom za registracijo in prijavo na strani, urejanje le teh preko nadzorne plošče";s:2:"tw";s:87:"讓用戶可以註冊並登入網站，並且管理者可在控制台內進行管理。";s:2:"cn";s:87:"让用户可以注册并登入网站，并且管理者可在控制台内进行管理。";s:2:"th";s:210:"ให้ผู้ใช้ลงทะเบียนและเข้าสู่เว็บไซต์และจัดการกับพวกเขาผ่านทางแผงควบคุม";s:2:"hu";s:120:"Hogy a felhasználók tudjanak az oldalra regisztrálni és belépni, valamint lehessen őket kezelni a vezérlőpulton.";s:2:"se";s:111:"Låt dina besökare registrera sig och logga in på webbplatsen. Hantera sedan användarna via kontrollpanelen.";}', 0, 0, 1, '0', 1, 1, 1, 1411570810),
(19, 'a:25:{s:2:"en";s:9:"Variables";s:2:"ar";s:20:"المتغيّرات";s:2:"br";s:10:"Variáveis";s:2:"pt";s:10:"Variáveis";s:2:"cs";s:10:"Proměnné";s:2:"da";s:8:"Variable";s:2:"de";s:9:"Variablen";s:2:"el";s:20:"Μεταβλητές";s:2:"es";s:9:"Variables";s:2:"fa";s:16:"متغییرها";s:2:"fi";s:9:"Muuttujat";s:2:"fr";s:9:"Variables";s:2:"he";s:12:"משתנים";s:2:"id";s:8:"Variabel";s:2:"it";s:9:"Variabili";s:2:"lt";s:10:"Kintamieji";s:2:"nl";s:10:"Variabelen";s:2:"pl";s:7:"Zmienne";s:2:"ru";s:20:"Переменные";s:2:"sl";s:13:"Spremenljivke";s:2:"tw";s:12:"系統變數";s:2:"cn";s:12:"系统变数";s:2:"th";s:18:"ตัวแปร";s:2:"se";s:9:"Variabler";s:2:"hu";s:10:"Változók";}', 'variables', '1.0.0', NULL, 'a:25:{s:2:"en";s:59:"Manage global variables that can be accessed from anywhere.";s:2:"ar";s:97:"إدارة المُتغيّرات العامة لاستخدامها في أرجاء الموقع.";s:2:"br";s:61:"Gerencia as variáveis globais acessíveis de qualquer lugar.";s:2:"pt";s:58:"Gerir as variáveis globais acessíveis de qualquer lugar.";s:2:"cs";s:56:"Spravujte globální proměnné přístupné odkudkoliv.";s:2:"da";s:51:"Håndtér globale variable som kan tilgås overalt.";s:2:"de";s:74:"Verwaltet globale Variablen, auf die von überall zugegriffen werden kann.";s:2:"el";s:129:"Διαχείριση μεταβλητών που είναι προσβάσιμες από παντού στον ιστότοπο.";s:2:"es";s:50:"Manage global variables to access from everywhere.";s:2:"fa";s:136:"مدیریت متغییر های جامع که می توانند در هر جای سایت مورد استفاده قرار بگیرند";s:2:"fi";s:66:"Hallitse globaali muuttujia, joihin pääsee käsiksi mistä vain.";s:2:"fr";s:92:"Gérer des variables globales pour pouvoir y accéder depuis n''importe quel endroit du site.";s:2:"he";s:96:"ניהול משתנים גלובליים אשר ניתנים להמרה בכל חלקי האתר";s:2:"id";s:59:"Mengatur variabel global yang dapat diakses dari mana saja.";s:2:"it";s:58:"Gestisci le variabili globali per accedervi da ogni parte.";s:2:"lt";s:64:"Globalių kintamujų tvarkymas kurie yra pasiekiami iš bet kur.";s:2:"nl";s:54:"Beheer globale variabelen die overal beschikbaar zijn.";s:2:"pl";s:86:"Zarządzaj globalnymi zmiennymi do których masz dostęp z każdego miejsca aplikacji.";s:2:"ru";s:136:"Управление глобальными переменными, которые доступны в любом месте сайта.";s:2:"sl";s:53:"Urejanje globalnih spremenljivk za dostop od kjerkoli";s:2:"th";s:148:"จัดการตัวแปรทั่วไปโดยที่สามารถเข้าถึงได้จากทุกที่.";s:2:"tw";s:45:"管理此網站內可存取的全局變數。";s:2:"cn";s:45:"管理此网站内可存取的全局变数。";s:2:"hu";s:62:"Globális változók kezelése a hozzáféréshez, bárhonnan.";s:2:"se";s:66:"Hantera globala variabler som kan avändas över hela webbplatsen.";}', 0, 0, 1, 'data', 1, 1, 1, 1411570810),
(20, 'a:23:{s:2:"en";s:7:"Widgets";s:2:"br";s:7:"Widgets";s:2:"pt";s:7:"Widgets";s:2:"cs";s:7:"Widgety";s:2:"da";s:7:"Widgets";s:2:"de";s:7:"Widgets";s:2:"el";s:7:"Widgets";s:2:"es";s:7:"Widgets";s:2:"fa";s:13:"ویجت ها";s:2:"fi";s:9:"Vimpaimet";s:2:"fr";s:7:"Widgets";s:2:"id";s:6:"Widget";s:2:"it";s:7:"Widgets";s:2:"lt";s:11:"Papildiniai";s:2:"nl";s:7:"Widgets";s:2:"ru";s:14:"Виджеты";s:2:"sl";s:9:"Vtičniki";s:2:"tw";s:9:"小組件";s:2:"cn";s:9:"小组件";s:2:"hu";s:9:"Widget-ek";s:2:"th";s:21:"วิดเจ็ต";s:2:"se";s:8:"Widgetar";s:2:"ar";s:14:"الودجتس";}', 'widgets', '1.2.0', NULL, 'a:23:{s:2:"en";s:69:"Manage small sections of self-contained logic in blocks or "Widgets".";s:2:"ar";s:132:"إدارة أقسام صغيرة من البرمجيات في مساحات الموقع أو ما يُسمّى بالـ"ودجتس".";s:2:"br";s:77:"Gerenciar pequenas seções de conteúdos em bloco conhecidos como "Widgets".";s:2:"pt";s:74:"Gerir pequenas secções de conteúdos em bloco conhecidos como "Widgets".";s:2:"cs";s:56:"Spravujte malé funkční části webu neboli "Widgety".";s:2:"da";s:74:"Håndter små sektioner af selv-opretholdt logik i blokke eller "Widgets".";s:2:"de";s:62:"Verwaltet kleine, eigentständige Bereiche, genannt "Widgets".";s:2:"el";s:149:"Διαχείριση μικρών τμημάτων αυτόνομης προγραμματιστικής λογικής σε πεδία ή "Widgets".";s:2:"es";s:75:"Manejar pequeñas secciones de lógica autocontenida en bloques o "Widgets"";s:2:"fa";s:76:"مدیریت قسمت های کوچکی از سایت به طور مستقل";s:2:"fi";s:81:"Hallitse pieniä osioita, jotka sisältävät erillisiä lohkoja tai "Vimpaimia".";s:2:"fr";s:41:"Gérer des mini application ou "Widgets".";s:2:"id";s:101:"Mengatur bagian-bagian kecil dari blok-blok yang memuat sesuatu atau dikenal dengan istilah "Widget".";s:2:"it";s:70:"Gestisci piccole sezioni di logica a se stante in blocchi o "Widgets".";s:2:"lt";s:43:"Nedidelių, savarankiškų blokų valdymas.";s:2:"nl";s:75:"Beheer kleine onderdelen die zelfstandige logica bevatten, ofwel "Widgets".";s:2:"ru";s:91:"Управление небольшими, самостоятельными блоками.";s:2:"sl";s:61:"Urejanje manjših delov blokov strani ti. Vtičniki (Widgets)";s:2:"tw";s:103:"可將小段的程式碼透過小組件來管理。即所謂 "Widgets"，或稱為小工具、部件。";s:2:"cn";s:103:"可将小段的程式码透过小组件来管理。即所谓 "Widgets"，或称为小工具、部件。";s:2:"hu";s:56:"Önálló kis logikai tömbök vagy widget-ek kezelése.";s:2:"th";s:152:"จัดการส่วนเล็ก ๆ ในรูปแบบของตัวเองในบล็อกหรือวิดเจ็ต";s:2:"se";s:83:"Hantera små sektioner med egen logik och innehåll på olika delar av webbplatsen.";}', 1, 0, 1, 'content', 1, 1, 1, 1411570810),
(21, 'a:10:{s:2:"en";s:7:"WYSIWYG";s:2:"br";s:7:"WYSIWYG";s:2:"fa";s:7:"WYSIWYG";s:2:"fr";s:7:"WYSIWYG";s:2:"pt";s:7:"WYSIWYG";s:2:"se";s:15:"HTML-redigerare";s:2:"tw";s:7:"WYSIWYG";s:2:"cn";s:7:"WYSIWYG";s:2:"ar";s:27:"المحرر الرسومي";s:2:"it";s:7:"WYSIWYG";}', 'wysiwyg', '1.0.0', NULL, 'a:11:{s:2:"en";s:60:"Provides the WYSIWYG editor for PyroCMS powered by CKEditor.";s:2:"br";s:64:"Provém o editor WYSIWYG para o PyroCMS fornecido pelo CKEditor.";s:2:"fa";s:73:"ویرایشگر WYSIWYG که توسطCKEditor ارائه شده است. ";s:2:"fr";s:63:"Fournit un éditeur WYSIWYG pour PyroCMS propulsé par CKEditor";s:2:"pt";s:61:"Fornece o editor WYSIWYG para o PyroCMS, powered by CKEditor.";s:2:"el";s:113:"Παρέχει τον επεξεργαστή WYSIWYG για το PyroCMS, χρησιμοποιεί το CKEDitor.";s:2:"se";s:37:"Redigeringsmodul för HTML, CKEditor.";s:2:"tw";s:83:"提供 PyroCMS 所見即所得（WYSIWYG）編輯器，由 CKEditor 技術提供。";s:2:"cn";s:83:"提供 PyroCMS 所见即所得（WYSIWYG）编辑器，由 CKEditor 技术提供。";s:2:"ar";s:76:"توفر المُحرّر الرسومي لـPyroCMS من خلال CKEditor.";s:2:"it";s:57:"Fornisce l''editor WYSIWYG per PtroCMS creato con CKEditor";}', 0, 0, 0, '0', 1, 1, 1, 1411570810),
(46, 'a:2:{s:2:"en";s:4:"News";s:2:"id";s:6:"Berita";}', 'berita', '1.0.1', NULL, 'a:2:{s:2:"en";s:11:"News module";s:2:"id";s:12:"Modul berita";}', 0, 1, 1, 'content', 1, 1, 0, 1413033796),
(47, 'a:1:{s:2:"en";s:5:"Video";}', 'video', '1.0', NULL, 'a:1:{s:2:"en";s:17:"Video Ditjen PPPL";}', 0, 1, 1, 'content', 1, 1, 0, 1413099576),
(43, 'a:2:{s:2:"en";s:5:"Event";s:2:"id";s:8:"Kegiatan";}', 'event', '1.0', NULL, 'a:2:{s:2:"en";s:12:"Event module";s:2:"id";s:14:"Modul Kegiatan";}', 0, 1, 1, 'content', 1, 1, 0, 1412783585);

-- --------------------------------------------------------

--
-- Table structure for table `default_navigation_groups`
--

CREATE TABLE IF NOT EXISTS `default_navigation_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `abbrev` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `abbrev` (`abbrev`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `default_navigation_groups`
--

INSERT INTO `default_navigation_groups` (`id`, `title`, `abbrev`) VALUES
(1, 'Header', 'header'),
(2, 'Sidebar', 'sidebar'),
(3, 'Footer', 'footer'),
(4, 'Organisasi Dunia', 'organisasi-dunia'),
(5, 'Kementrian', 'kementrian'),
(6, 'Upt', 'upt');

-- --------------------------------------------------------

--
-- Table structure for table `default_navigation_links`
--

CREATE TABLE IF NOT EXISTS `default_navigation_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(11) DEFAULT NULL,
  `link_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'uri',
  `page_id` int(11) DEFAULT NULL,
  `module_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `navigation_group_id` int(5) NOT NULL DEFAULT '0',
  `position` int(5) NOT NULL DEFAULT '0',
  `target` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restricted_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `navigation_group_id` (`navigation_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `default_navigation_links`
--

INSERT INTO `default_navigation_links` (`id`, `title`, `parent`, `link_type`, `page_id`, `module_name`, `url`, `uri`, `navigation_group_id`, `position`, `target`, `restricted_to`, `class`) VALUES
(1, 'Home', 0, 'page', 1, '', '', '', 1, 0, NULL, NULL, ''),
(2, 'Blog', 0, 'module', NULL, 'blog', '', '', 1, 1, NULL, NULL, ''),
(3, 'Contact', 0, 'page', 2, '', '', '', 1, 5, NULL, NULL, ''),
(4, 'Tugas Pokok dan Fungsi', 5, 'page', 6, '', '', '', 1, 0, '', '0', ''),
(5, 'Profile', 0, 'page', 7, '', '', '', 1, 6, '', '0', ''),
(6, 'Buku Profil ', 5, 'page', 8, '', '', '', 1, 1, '', '0', ''),
(7, 'Berita', 0, 'module', 0, 'berita', '', '', 1, 2, '', '0', ''),
(8, 'Event', 0, 'module', 0, 'event', '', '', 1, 3, '', '0', ''),
(9, 'Video', 0, 'module', 0, 'video', '', '', 1, 4, '', '0', ''),
(10, 'WHO', NULL, 'url', 0, '', 'http://www.who.org/', '', 4, 1, '_blank', '0', ''),
(11, 'CDC', NULL, 'url', 0, '', 'http://www.cdc.gov/', '', 4, 2, '_blank', '0', ''),
(14, 'Asean Plus3 Eid', NULL, 'url', 0, '', 'http://www.aseanplus3-eid.info/', '', 4, 5, '_blank', '0', ''),
(13, 'WHO SEARO', NULL, 'url', 0, '', 'http://www.searo.who.int/', '', 4, 4, '_blank', '0', ''),
(15, 'Kemenkes', NULL, 'url', 0, '', 'http://www.depkes.go.id/', '', 5, 1, '_blank', '0', ''),
(16, 'Ditjen Bina Gizi dan KIA', NULL, 'url', 0, '', 'http://gizikia.depkes.go.id/', '', 5, 2, '_blank', '0', ''),
(17, 'Ditjen Bina Upaya Kesehatan', NULL, 'url', 0, '', 'http://buk.depkes.go.id/', '', 5, 3, '_blank', '0', ''),
(18, 'Ditjen Binfair dan Alkes', NULL, 'url', 0, '', 'http://binfar.depkes.go.id/', '', 5, 4, '_blank', '0', ''),
(19, 'Ditjen Litbangkes', NULL, 'url', 0, '', 'http://www.litbang.depkes.go.id/', '', 5, 5, '_blank', '0', ''),
(20, 'Ditjen PPSDM Kes', NULL, 'url', 0, '', 'http://bppsdmk.depkes.go.id/', '', 5, 6, '_blank', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `default_pages`
--

CREATE TABLE IF NOT EXISTS `default_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uri` text COLLATE utf8_unicode_ci,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `type_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css` text COLLATE utf8_unicode_ci,
  `js` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_robots_no_index` tinyint(1) DEFAULT NULL,
  `meta_robots_no_follow` tinyint(1) DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `rss_enabled` int(1) NOT NULL DEFAULT '0',
  `comments_enabled` int(1) NOT NULL DEFAULT '0',
  `status` enum('draft','live') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `created_on` int(11) NOT NULL DEFAULT '0',
  `updated_on` int(11) NOT NULL DEFAULT '0',
  `restricted_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_home` int(1) NOT NULL DEFAULT '0',
  `strict_uri` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `slug` (`slug`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `default_pages`
--

INSERT INTO `default_pages` (`id`, `slug`, `class`, `title`, `uri`, `parent_id`, `type_id`, `entry_id`, `css`, `js`, `meta_title`, `meta_keywords`, `meta_robots_no_index`, `meta_robots_no_follow`, `meta_description`, `rss_enabled`, `comments_enabled`, `status`, `created_on`, `updated_on`, `restricted_to`, `is_home`, `strict_uri`, `order`) VALUES
(1, 'home', '', 'Home', 'home', 0, '1', '1', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, 'live', 1411566378, 0, '', 1, 1, 1411566378),
(2, 'contact', '', 'Contact', 'contact', 0, '1', '2', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, 'live', 1411566378, 0, '', 0, 1, 1411566378),
(3, 'search', '', 'Search', 'search', 0, '1', '3', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, 'live', 1411566378, 0, '', 0, 1, 1411566378),
(4, 'results', '', 'Results', 'search/results', 3, '1', '4', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, 'live', 1411566378, 0, '', 0, 0, 1411566378),
(5, '404', '', 'Page missing', '404', 0, '1', '5', NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 0, 'live', 1411566378, 0, '', 0, 1, 1411566378),
(6, 'tugas-pokok-dan-fungsi', '', 'Tugas Pokok dan Fungsi', 'tugas-pokok-dan-fungsi', 0, '1', '6', '', '', '', 'a4e79ff46212294313e1a4e5e10f4010', 0, 0, '', 0, 0, 'live', 1413027145, 1413028536, '0', 0, 1, 1413027145),
(7, 'profile', '', 'Profile', 'profile', 0, '1', '7', '', '', '', '', 0, 0, '', 0, 0, 'live', 1413028314, 1413028593, '0', 0, 1, 1413028314),
(8, 'buku-profil-pengendalian-penyakit-dan-penyehatan-lingkungan', '', 'Buku Profil Pengendalian Penyakit dan Penyehatan Lingkungan', 'buku-profil-pengendalian-penyakit-dan-penyehatan-lingkungan', 0, '1', '8', '', '', '', '', 0, 0, '', 0, 0, 'live', 1413028399, 1413028609, '0', 0, 1, 1413028399);

-- --------------------------------------------------------

--
-- Table structure for table `default_page_types`
--

CREATE TABLE IF NOT EXISTS `default_page_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `stream_id` int(11) NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `css` text COLLATE utf8_unicode_ci,
  `js` text COLLATE utf8_unicode_ci,
  `theme_layout` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `updated_on` int(11) NOT NULL,
  `save_as_files` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'n',
  `content_label` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_label` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `default_page_types`
--

INSERT INTO `default_page_types` (`id`, `slug`, `title`, `description`, `stream_id`, `meta_title`, `meta_keywords`, `meta_description`, `body`, `css`, `js`, `theme_layout`, `updated_on`, `save_as_files`, `content_label`, `title_label`) VALUES
(1, 'default', 'Default', 'A simple page type with a WYSIWYG editor that will get you started adding content.', 2, NULL, NULL, NULL, '<h2>{{ page:title }}</h2>\n\n{{ body }}', '', '', 'default', 1411566378, 'n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_permissions`
--

CREATE TABLE IF NOT EXISTS `default_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roles` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `default_profiles`
--

CREATE TABLE IF NOT EXISTS `default_profiles` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `ordering_count` int(11) DEFAULT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `display_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `bio` text COLLATE utf8_unicode_ci,
  `dob` int(11) DEFAULT NULL,
  `gender` set('m','f','') COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_on` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `default_profiles`
--

INSERT INTO `default_profiles` (`id`, `created`, `updated`, `created_by`, `ordering_count`, `user_id`, `display_name`, `first_name`, `last_name`, `company`, `lang`, `bio`, `dob`, `gender`, `phone`, `mobile`, `address_line1`, `address_line2`, `address_line3`, `postcode`, `website`, `updated_on`) VALUES
(1, NULL, NULL, NULL, NULL, 1, 'Rizaq Pratama', 'Rizaq', 'Pratama', '', 'en', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_redirects`
--

CREATE TABLE IF NOT EXISTS `default_redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(3) NOT NULL DEFAULT '302',
  PRIMARY KEY (`id`),
  KEY `from` (`from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `default_search_index`
--

CREATE TABLE IF NOT EXISTS `default_search_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `keywords` text COLLATE utf8_unicode_ci,
  `keyword_hash` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_plural` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp_edit_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp_delete_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`module`,`entry_key`,`entry_id`(190)),
  FULLTEXT KEY `full search` (`title`,`description`,`keywords`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `default_search_index`
--

INSERT INTO `default_search_index` (`id`, `title`, `description`, `keywords`, `keyword_hash`, `module`, `entry_key`, `entry_plural`, `entry_id`, `uri`, `cp_edit_uri`, `cp_delete_uri`) VALUES
(1, 'Home', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '1', 'home', 'admin/pages/edit/1', 'admin/pages/delete/1'),
(2, 'Contact', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '2', 'contact', 'admin/pages/edit/2', 'admin/pages/delete/2'),
(3, 'Search', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '3', 'search', 'admin/pages/edit/3', 'admin/pages/delete/3'),
(4, 'Results', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '4', 'search/results', 'admin/pages/edit/4', 'admin/pages/delete/4'),
(5, 'Page missing', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '5', '404', 'admin/pages/edit/5', 'admin/pages/delete/5'),
(6, 'Tugas Pokok dan Fungsi', '', 'tugas pokok dan fungsi pppl, tupoksi pppl depkes', 'a4e79ff46212294313e1a4e5e10f4010', 'pages', 'pages:page', 'pages:pages', '6', 'tugas-pokok-dan-fungsi', 'admin/pages/edit/6', 'admin/pages/delete/6'),
(8, 'Profile', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '7', 'profile', 'admin/pages/edit/7', 'admin/pages/delete/7'),
(9, 'Buku Profil Pengendalian Penyakit dan Penyehatan Lingkungan', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '8', 'buku-profil-pengendalian-penyakit-dan-penyehatan-lingkungan', 'admin/pages/edit/8', 'admin/pages/delete/8');

-- --------------------------------------------------------

--
-- Table structure for table `default_settings`
--

CREATE TABLE IF NOT EXISTS `default_settings` (
  `slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` set('text','textarea','password','select','select-multiple','radio','checkbox') COLLATE utf8_unicode_ci NOT NULL,
  `default` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `options` text COLLATE utf8_unicode_ci NOT NULL,
  `is_required` int(1) NOT NULL,
  `is_gui` int(1) NOT NULL,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`slug`),
  UNIQUE KEY `unique_slug` (`slug`),
  KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_settings`
--

INSERT INTO `default_settings` (`slug`, `title`, `description`, `type`, `default`, `value`, `options`, `is_required`, `is_gui`, `module`, `order`) VALUES
('site_name', 'Site Name', 'The name of the website for page titles and for use around the site.', 'text', 'Un-named Website', 'DItjen PPPL', '', 1, 1, '', 1000),
('site_slogan', 'Site Slogan', 'The slogan of the website for page titles and for use around the site', 'text', '', 'Pengendalian Penyakit dan Penyehatan Lingkungan', '', 0, 1, '', 999),
('meta_topic', 'Meta Topic', 'Two or three words describing this type of company/website.', 'text', 'Content Management', 'Add your slogan here', '', 0, 1, '', 998),
('site_lang', 'Site Language', 'The native language of the website, used to choose templates of e-mail notifications, contact form, and other features that should not depend on the language of a user.', 'select', 'en', 'id', 'func:get_supported_lang', 1, 1, '', 997),
('site_public_lang', 'Public Languages', 'Which are the languages really supported and offered on the front-end of your website?', 'checkbox', 'en', 'en,id', 'func:get_supported_lang', 1, 1, '', 996),
('date_format', 'Date Format', 'How should dates be displayed across the website and control panel? Using the <a target="_blank" href="http://php.net/manual/en/function.date.php">date format</a> from PHP - OR - Using the format of <a target="_blank" href="http://php.net/manual/en/function.strftime.php">strings formatted as date</a> from PHP.', 'text', 'F j, Y', '', '', 1, 1, '', 995),
('currency', 'Currency', 'The currency symbol for use on products, services, etc.', 'text', '&pound;', '', '', 1, 1, '', 994),
('records_per_page', 'Records Per Page', 'How many records should we show per page in the admin section?', 'select', '25', '', '10=10|25=25|50=50|100=100', 1, 1, '', 992),
('rss_feed_items', 'Feed item count', 'How many items should we show in RSS/blog feeds?', 'select', '25', '', '10=10|25=25|50=50|100=100', 1, 1, '', 991),
('dashboard_rss', 'Dashboard RSS Feed', 'Link to an RSS feed that will be displayed on the dashboard.', 'text', 'https://www.pyrocms.com/blog/rss/all.rss', '', '', 0, 1, '', 990),
('dashboard_rss_count', 'Dashboard RSS Items', 'How many RSS items would you like to display on the dashboard?', 'text', '5', '5', '', 1, 1, '', 989),
('frontend_enabled', 'Site Status', 'Use this option to the user-facing part of the site on or off. Useful when you want to take the site down for maintenance.', 'radio', '1', '', '1=Open|0=Closed', 1, 1, '', 988),
('unavailable_message', 'Unavailable Message', 'When the site is turned off or there is a major problem, this message will show to users.', 'textarea', 'Sorry, this website is currently unavailable.', '', '', 0, 1, '', 987),
('ga_tracking', 'Google Tracking Code', 'Enter your Google Analytic Tracking Code to activate Google Analytics view data capturing. E.g: UA-19483569-6', 'text', '', '', '', 0, 1, 'integration', 985),
('ga_profile', 'Google Analytic Profile ID', 'Profile ID for this website in Google Analytics', 'text', '', '', '', 0, 1, 'integration', 984),
('ga_email', 'Google Analytic E-mail', 'E-mail address used for Google Analytics, we need this to show the graph on the dashboard.', 'text', '', '', '', 0, 1, 'integration', 983),
('ga_password', 'Google Analytic Password', 'This is also needed to show the graph on the dashboard. You will need to allow access to Google to get this to work. See <a href="https://accounts.google.com/b/0/IssuedAuthSubTokens?hl=en_US" target="_blank">Authorized Access to your Google Account</a>', 'password', '', '', '', 0, 1, 'integration', 982),
('contact_email', 'Contact E-mail', 'All e-mails from users, guests and the site will go to this e-mail address.', 'text', 'rizaqpratama@gmail.com', '', '', 1, 1, 'email', 979),
('server_email', 'Server E-mail', 'All e-mails to users will come from this e-mail address.', 'text', 'admin@localhost', '', '', 1, 1, 'email', 978),
('mail_protocol', 'Mail Protocol', 'Select desired email protocol.', 'select', 'mail', 'mail', 'mail=Mail|sendmail=Sendmail|smtp=SMTP', 1, 1, 'email', 977),
('mail_smtp_host', 'SMTP Host Name', 'The host name of your smtp server.', 'text', '', '', '', 0, 1, 'email', 976),
('mail_smtp_pass', 'SMTP password', 'SMTP password.', 'password', '', '', '', 0, 1, 'email', 975),
('mail_smtp_port', 'SMTP Port', 'SMTP port number.', 'text', '', '', '', 0, 1, 'email', 974),
('mail_smtp_user', 'SMTP User Name', 'SMTP user name.', 'text', '', '', '', 0, 1, 'email', 973),
('mail_sendmail_path', 'Sendmail Path', 'Path to server sendmail binary.', 'text', '', '', '', 0, 1, 'email', 972),
('mail_line_endings', 'Email Line Endings', 'Change from the standard \\r\\n line ending to PHP_EOL for some email servers.', 'select', '1', '1', '0=PHP_EOL|1=\\r\\n', 0, 1, 'email', 972),
('admin_force_https', 'Force HTTPS for Control Panel?', 'Allow only the HTTPS protocol when using the Control Panel?', 'radio', '0', '', '1=Yes|0=No', 1, 1, '', 0),
('api_enabled', 'API Enabled', 'Allow API access to all modules which have an API controller.', 'select', '0', '0', '0=Disabled|1=Enabled', 0, 0, 'api', 0),
('api_user_keys', 'API User Keys', 'Allow users to sign up for API keys (if the API is Enabled).', 'select', '0', '0', '0=Disabled|1=Enabled', 0, 0, 'api', 0),
('cdn_domain', 'CDN Domain', 'CDN domains allow you to offload static content to various edge servers, like Amazon CloudFront or MaxCDN.', 'text', '', '', '', 0, 1, 'integration', 1000),
('addons_upload', 'Addons Upload Permissions', 'Keeps mere admins from uploading addons by default', 'text', '0', '1', '', 1, 0, '', 0),
('default_theme', 'Default Theme', 'Select the theme you want users to see by default.', '', 'default', 'wozo', 'func:get_themes', 1, 0, '', 0),
('admin_theme', 'Control Panel Theme', 'Select the theme for the control panel.', '', '', 'pyrocms', 'func:get_themes', 1, 0, '', 0),
('akismet_api_key', 'Akismet API Key', 'Akismet is a spam-blocker from the WordPress team. It keeps spam under control without forcing users to get past human-checking CAPTCHA forms.', 'text', '', '', '', 0, 1, 'integration', 981),
('enable_comments', 'Enable Comments', 'Enable comments.', 'radio', '1', '1', '1=Enabled|0=Disabled', 1, 1, 'comments', 968),
('moderate_comments', 'Moderate Comments', 'Force comments to be approved before they appear on the site.', 'radio', '1', '1', '1=Enabled|0=Disabled', 1, 1, 'comments', 967),
('comment_order', 'Comment Order', 'Sort order in which to display comments.', 'select', 'ASC', 'ASC', 'ASC=Oldest First|DESC=Newest First', 1, 1, 'comments', 966),
('comment_markdown', 'Allow Markdown', 'Do you want to allow visitors to post comments using Markdown?', 'select', '0', '0', '0=Text Only|1=Allow Markdown', 1, 1, 'comments', 965),
('files_cache', 'Files Cache', 'When outputting an image via site.com/files what shall we set the cache expiration for?', 'select', '480', '480', '0=no-cache|1=1-minute|60=1-hour|180=3-hour|480=8-hour|1440=1-day|43200=30-days', 1, 1, 'files', 986),
('files_enabled_providers', 'Enabled File Storage Providers', 'Which file storage providers do you want to enable? (If you enable a cloud provider you must provide valid auth keys below', 'checkbox', '0', '0', 'amazon-s3=Amazon S3|rackspace-cf=Rackspace Cloud Files', 0, 1, 'files', 994),
('files_s3_access_key', 'Amazon S3 Access Key', 'To enable cloud file storage in your Amazon S3 account provide your Access Key. <a href="https://aws-portal.amazon.com/gp/aws/securityCredentials#access_credentials">Find your credentials</a>', 'text', '', '', '', 0, 1, 'files', 993),
('files_s3_secret_key', 'Amazon S3 Secret Key', 'You also must provide your Amazon S3 Secret Key. You will find it at the same location as your Access Key in your Amazon account.', 'text', '', '', '', 0, 1, 'files', 992),
('files_s3_geographic_location', 'Amazon S3 Geographic Location', 'Either US or EU. If you change this you must also change the S3 URL.', 'radio', 'US', 'US', 'US=United States|EU=Europe', 1, 1, 'files', 991),
('files_s3_url', 'Amazon S3 URL', 'Change this if using one of Amazon''s EU locations or a custom domain.', 'text', 'http://{{ bucket }}.s3.amazonaws.com/', 'http://{{ bucket }}.s3.amazonaws.com/', '', 0, 1, 'files', 991),
('files_cf_username', 'Rackspace Cloud Files Username', 'To enable cloud file storage in your Rackspace Cloud Files account please enter your Cloud Files Username. <a href="https://manage.rackspacecloud.com/APIAccess.do">Find your credentials</a>', 'text', '', '', '', 0, 1, 'files', 990),
('files_cf_api_key', 'Rackspace Cloud Files API Key', 'You also must provide your Cloud Files API Key. You will find it at the same location as your Username in your Rackspace account.', 'text', '', '', '', 0, 1, 'files', 989),
('files_upload_limit', 'Filesize Limit', 'Maximum filesize to allow when uploading. Specify the size in MB. Example: 5', 'text', '5', '5', '', 1, 1, 'files', 987),
('auto_username', 'Auto Username', 'Create the username automatically, meaning users can skip making one on registration.', 'radio', '1', '', '1=Enabled|0=Disabled', 0, 1, 'users', 964),
('enable_profiles', 'Enable profiles', 'Allow users to add and edit profiles.', 'radio', '1', '', '1=Enabled|0=Disabled', 1, 1, 'users', 963),
('activation_email', 'Activation Email', 'Send out an e-mail with an activation link when a user signs up. Disable this so that admins must manually activate each account.', 'select', '1', '', '0=activate_by_admin|1=activate_by_email|2=no_activation', 0, 1, 'users', 961),
('registered_email', 'User Registered Email', 'Send a notification email to the contact e-mail when someone registers.', 'radio', '1', '', '1=Enabled|0=Disabled', 0, 1, 'users', 962),
('enable_registration', 'Enable user registration', 'Allow users to register in your site.', 'radio', '1', '', '1=Enabled|0=Disabled', 0, 1, 'users', 961),
('profile_visibility', 'Profile Visibility', 'Specify who can view user profiles on the public site', 'select', 'public', '', 'public=profile_public|owner=profile_owner|hidden=profile_hidden|member=profile_member', 0, 1, 'users', 960),
('ckeditor_config', 'CKEditor Config', 'You can find a list of valid configuration items in <a target="_blank" href="http://docs.cksource.com/ckeditor_api/symbols/CKEDITOR.config.html">CKEditor''s documentation.</a>', 'textarea', '', '{{# this is a wysiwyg-simple editor customized for the blog module (it allows images to be inserted) #}}\r\n$(''textarea#intro.wysiwyg-simple'').ckeditor({\r\n	toolbar: [\r\n		[''pyroimages''],\r\n		[''Bold'', ''Italic'', ''-'', ''NumberedList'', ''BulletedList'', ''-'', ''Link'', ''Unlink'']\r\n	  ],\r\n	extraPlugins: ''pyroimages'',\r\n	width: ''99%'',\r\n	height: 100,\r\n	dialog_backgroundCoverColor: ''#000'',\r\n	defaultLanguage: ''{{ helper:config item="default_language" }}'',\r\n	language: ''{{ global:current_language }}''\r\n});\r\n\r\n{{# this is the config for all wysiwyg-simple textareas #}}\r\n$(''textarea.wysiwyg-simple'').ckeditor({\r\n	toolbar: [\r\n		[''Bold'', ''Italic'', ''-'', ''NumberedList'', ''BulletedList'', ''-'', ''Link'', ''Unlink'']\r\n	  ],\r\n	width: ''99%'',\r\n	height: 100,\r\n	dialog_backgroundCoverColor: ''#000'',\r\n	defaultLanguage: ''{{ helper:config item="default_language" }}'',\r\n	language: ''{{ global:current_language }}''\r\n});\r\n\r\n{{# and this is the advanced editor #}}\r\n$(''textarea.wysiwyg-advanced'').ckeditor({\r\n	toolbar: [\r\n		[''Maximize''],\r\n		[''pyroimages'', ''pyrofiles''],\r\n		[''Cut'',''Copy'',''Paste'',''PasteFromWord''],\r\n		[''Undo'',''Redo'',''-'',''Find'',''Replace''],\r\n		[''Link'',''Unlink''],\r\n		[''Table'',''HorizontalRule'',''SpecialChar''],\r\n		[''Bold'',''Italic'',''StrikeThrough''],\r\n		[''JustifyLeft'',''JustifyCenter'',''JustifyRight'',''JustifyBlock'',''-'',''BidiLtr'',''BidiRtl''],\r\n		[''Format'', ''FontSize'', ''Subscript'',''Superscript'', ''NumberedList'',''BulletedList'',''Outdent'',''Indent'',''Blockquote''],\r\n		[''ShowBlocks'', ''RemoveFormat'', ''Source'']\r\n	],\r\n	extraPlugins: ''pyroimages,pyrofiles'',\r\n	width: ''99%'',\r\n	height: 400,\r\n	dialog_backgroundCoverColor: ''#000'',\r\n	removePlugins: ''elementspath'',\r\n	defaultLanguage: ''{{ helper:config item="default_language" }}'',\r\n	language: ''{{ global:current_language }}''\r\n});', '', 1, 1, 'wysiwyg', 993);

-- --------------------------------------------------------

--
-- Table structure for table `default_theme_options`
--

CREATE TABLE IF NOT EXISTS `default_theme_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` set('text','textarea','password','select','select-multiple','radio','checkbox','colour-picker') COLLATE utf8_unicode_ci NOT NULL,
  `default` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `options` text COLLATE utf8_unicode_ci NOT NULL,
  `is_required` int(1) NOT NULL,
  `theme` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `default_theme_options`
--

INSERT INTO `default_theme_options` (`id`, `slug`, `title`, `description`, `type`, `default`, `value`, `options`, `is_required`, `theme`) VALUES
(1, 'pyrocms_recent_comments', 'Recent Comments', 'Would you like to display recent comments on the dashboard?', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'pyrocms'),
(2, 'pyrocms_news_feed', 'News Feed', 'Would you like to display the news feed on the dashboard?', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'pyrocms'),
(3, 'pyrocms_quick_links', 'Quick Links', 'Would you like to display quick links on the dashboard?', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'pyrocms'),
(4, 'pyrocms_analytics_graph', 'Analytics Graph', 'Would you like to display the graph on the dashboard?', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'pyrocms'),
(5, 'show_breadcrumbs', 'Show Breadcrumbs', 'Would you like to display breadcrumbs?', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'default'),
(6, 'layout', 'Layout', 'Which type of layout shall we use?', 'select', '2 column', '2 column', '2 column=Two Column|full-width=Full Width|full-width-home=Full Width Home Page', 1, 'default'),
(7, 'background', 'Background', 'Choose the default background for the theme.', 'select', 'fabric', 'fabric', 'black=Black|fabric=Fabric|graph=Graph|leather=Leather|noise=Noise|texture=Texture', 1, 'base'),
(8, 'slider', 'Slider', 'Would you like to display the slider on the homepage?', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'base'),
(9, 'color', 'Default Theme Color', 'This changes things like background color, link colors etc…', 'select', 'pink', 'pink', 'red=Red|orange=Orange|yellow=Yellow|green=Green|blue=Blue|pink=Pink', 1, 'base'),
(10, 'show_breadcrumbs', 'Do you want to show breadcrumbs?', 'If selected it shows a string of breadcrumbs at the top of the page.', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'base');

-- --------------------------------------------------------

--
-- Table structure for table `default_users`
--

CREATE TABLE IF NOT EXISTS `default_users` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salt` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `activation_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` int(11) NOT NULL,
  `last_login` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgotten_password_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Registered User Information' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `default_users`
--

INSERT INTO `default_users` (`id`, `email`, `password`, `salt`, `group_id`, `ip_address`, `active`, `activation_code`, `created_on`, `last_login`, `username`, `forgotten_password_code`, `remember_code`) VALUES
(1, 'rizaqpratama@gmail.com', 'bcaed503772428f511f7f6ba2100c664d194e2e9', '9da3e', 1, '', 1, '', 1411566374, 1413095717, 'rizaqpratama', NULL, '5b87b4d5ad05a8a50fe616472a6d0c78137b65c7');

-- --------------------------------------------------------

--
-- Table structure for table `default_variables`
--

CREATE TABLE IF NOT EXISTS `default_variables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `default_video-videos`
--

CREATE TABLE IF NOT EXISTS `default_video-videos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `ordering_count` int(11) DEFAULT NULL,
  `nama` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deskripsi` longtext COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `default_video-videos`
--

INSERT INTO `default_video-videos` (`id`, `created`, `updated`, `created_by`, `ordering_count`, `nama`, `deskripsi`, `link`) VALUES
(1, '2014-10-12 07:42:07', NULL, 1, 1, 'Lokakarya Pendidikan Pegawai Negeri Sipil 2013', 'Lokakarya pendidikan pegawai negeri sipil 2013', 'https://www.youtube.com/watch?v=v1X8ow9fA8k');

-- --------------------------------------------------------

--
-- Table structure for table `default_widgets`
--

CREATE TABLE IF NOT EXISTS `default_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `enabled` int(1) NOT NULL DEFAULT '1',
  `order` int(10) NOT NULL DEFAULT '0',
  `updated_on` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `default_widgets`
--

INSERT INTO `default_widgets` (`id`, `slug`, `title`, `description`, `author`, `website`, `version`, `enabled`, `order`, `updated_on`) VALUES
(1, 'google_maps', 'a:10:{s:2:"en";s:11:"Google Maps";s:2:"el";s:19:"Χάρτης Google";s:2:"nl";s:11:"Google Maps";s:2:"br";s:11:"Google Maps";s:2:"pt";s:11:"Google Maps";s:2:"ru";s:17:"Карты Google";s:2:"id";s:11:"Google Maps";s:2:"fi";s:11:"Google Maps";s:2:"fr";s:11:"Google Maps";s:2:"fa";s:17:"نقشه گوگل";}', 'a:10:{s:2:"en";s:32:"Display Google Maps on your site";s:2:"el";s:78:"Προβάλετε έναν Χάρτη Google στον ιστότοπό σας";s:2:"nl";s:27:"Toon Google Maps in uw site";s:2:"br";s:34:"Mostra mapas do Google no seu site";s:2:"pt";s:34:"Mostra mapas do Google no seu site";s:2:"ru";s:80:"Выводит карты Google на страницах вашего сайта";s:2:"id";s:37:"Menampilkan Google Maps di Situs Anda";s:2:"fi";s:39:"Näytä Google Maps kartta sivustollasi";s:2:"fr";s:42:"Publiez un plan Google Maps sur votre site";s:2:"fa";s:59:"نمایش داده نقشه گوگل بر روی سایت ";}', 'Gregory Athons', 'http://www.gregathons.com', '1.0.0', 1, 1, 1411571391),
(2, 'html', 's:4:"HTML";', 'a:10:{s:2:"en";s:28:"Create blocks of custom HTML";s:2:"el";s:80:"Δημιουργήστε περιοχές με δικό σας κώδικα HTML";s:2:"br";s:41:"Permite criar blocos de HTML customizados";s:2:"pt";s:41:"Permite criar blocos de HTML customizados";s:2:"nl";s:30:"Maak blokken met maatwerk HTML";s:2:"ru";s:83:"Создание HTML-блоков с произвольным содержимым";s:2:"id";s:24:"Membuat blok HTML apapun";s:2:"fi";s:32:"Luo lohkoja omasta HTML koodista";s:2:"fr";s:36:"Créez des blocs HTML personnalisés";s:2:"fa";s:58:"ایجاد قسمت ها به صورت اچ تی ام ال";}', 'Phil Sturgeon', 'http://philsturgeon.co.uk/', '1.0.0', 1, 2, 1411571391),
(3, 'login', 'a:10:{s:2:"en";s:5:"Login";s:2:"el";s:14:"Σύνδεση";s:2:"nl";s:5:"Login";s:2:"br";s:5:"Login";s:2:"pt";s:5:"Login";s:2:"ru";s:22:"Вход на сайт";s:2:"id";s:5:"Login";s:2:"fi";s:13:"Kirjautuminen";s:2:"fr";s:9:"Connexion";s:2:"fa";s:10:"لاگین";}', 'a:10:{s:2:"en";s:36:"Display a simple login form anywhere";s:2:"el";s:96:"Προβάλετε μια απλή φόρμα σύνδεσης χρήστη οπουδήποτε";s:2:"br";s:69:"Permite colocar um formulário de login em qualquer lugar do seu site";s:2:"pt";s:69:"Permite colocar um formulário de login em qualquer lugar do seu site";s:2:"nl";s:32:"Toon overal een simpele loginbox";s:2:"ru";s:72:"Выводит простую форму для входа на сайт";s:2:"id";s:32:"Menampilkan form login sederhana";s:2:"fi";s:52:"Näytä yksinkertainen kirjautumislomake missä vain";s:2:"fr";s:54:"Affichez un formulaire de connexion où vous souhaitez";s:2:"fa";s:70:"نمایش یک لاگین ساده در هر قسمتی از سایت";}', 'Phil Sturgeon', 'http://philsturgeon.co.uk/', '1.0.0', 1, 3, 1411571391),
(4, 'navigation', 'a:10:{s:2:"en";s:10:"Navigation";s:2:"el";s:16:"Πλοήγηση";s:2:"nl";s:9:"Navigatie";s:2:"br";s:11:"Navegação";s:2:"pt";s:11:"Navegação";s:2:"ru";s:18:"Навигация";s:2:"id";s:8:"Navigasi";s:2:"fi";s:10:"Navigaatio";s:2:"fr";s:10:"Navigation";s:2:"fa";s:10:"منوها";}', 'a:10:{s:2:"en";s:40:"Display a navigation group with a widget";s:2:"el";s:100:"Προβάλετε μια ομάδα στοιχείων πλοήγησης στον ιστότοπο";s:2:"nl";s:38:"Toon een navigatiegroep met een widget";s:2:"br";s:62:"Exibe um grupo de links de navegação como widget em seu site";s:2:"pt";s:62:"Exibe um grupo de links de navegação como widget no seu site";s:2:"ru";s:88:"Отображает навигационную группу внутри виджета";s:2:"id";s:44:"Menampilkan grup navigasi menggunakan widget";s:2:"fi";s:37:"Näytä widgetillä navigaatio ryhmä";s:2:"fr";s:47:"Affichez un groupe de navigation dans un widget";s:2:"fa";s:71:"نمایش گروهی از منوها با استفاده از ویجت";}', 'Phil Sturgeon', 'http://philsturgeon.co.uk/', '1.2.0', 1, 4, 1411571391),
(5, 'rss_feed', 'a:10:{s:2:"en";s:8:"RSS Feed";s:2:"el";s:24:"Τροφοδοσία RSS";s:2:"nl";s:8:"RSS Feed";s:2:"br";s:8:"Feed RSS";s:2:"pt";s:8:"Feed RSS";s:2:"ru";s:31:"Лента новостей RSS";s:2:"id";s:8:"RSS Feed";s:2:"fi";s:10:"RSS Syöte";s:2:"fr";s:8:"Flux RSS";s:2:"fa";s:19:"خبر خوان RSS";}', 'a:10:{s:2:"en";s:41:"Display parsed RSS feeds on your websites";s:2:"el";s:82:"Προβάλετε τα περιεχόμενα μιας τροφοδοσίας RSS";s:2:"nl";s:28:"Toon RSS feeds op uw website";s:2:"br";s:48:"Interpreta e exibe qualquer feed RSS no seu site";s:2:"pt";s:48:"Interpreta e exibe qualquer feed RSS no seu site";s:2:"ru";s:94:"Выводит обработанную ленту новостей на вашем сайте";s:2:"id";s:42:"Menampilkan kutipan RSS feed di situs Anda";s:2:"fi";s:39:"Näytä purettu RSS syöte sivustollasi";s:2:"fr";s:39:"Affichez un flux RSS sur votre site web";s:2:"fa";s:46:"نمایش خوراک های RSS در سایت";}', 'Phil Sturgeon', 'http://philsturgeon.co.uk/', '1.2.0', 1, 5, 1411571391),
(6, 'social_bookmark', 'a:10:{s:2:"en";s:15:"Social Bookmark";s:2:"el";s:35:"Κοινωνική δικτύωση";s:2:"nl";s:19:"Sociale Bladwijzers";s:2:"br";s:15:"Social Bookmark";s:2:"pt";s:15:"Social Bookmark";s:2:"ru";s:37:"Социальные закладки";s:2:"id";s:15:"Social Bookmark";s:2:"fi";s:24:"Sosiaalinen kirjanmerkki";s:2:"fr";s:13:"Liens sociaux";s:2:"fa";s:52:"بوکمارک های شبکه های اجتماعی";}', 'a:10:{s:2:"en";s:47:"Configurable social bookmark links from AddThis";s:2:"el";s:111:"Παραμετροποιήσιμα στοιχεία κοινωνικής δικτυώσης από το AddThis";s:2:"nl";s:43:"Voeg sociale bladwijzers toe vanuit AddThis";s:2:"br";s:87:"Adiciona links de redes sociais usando o AddThis, podendo fazer algumas configurações";s:2:"pt";s:87:"Adiciona links de redes sociais usando o AddThis, podendo fazer algumas configurações";s:2:"ru";s:90:"Конфигурируемые социальные закладки с сайта AddThis";s:2:"id";s:60:"Tautan social bookmark yang dapat dikonfigurasi dari AddThis";s:2:"fi";s:59:"Konfiguroitava sosiaalinen kirjanmerkki linkit AddThis:stä";s:2:"fr";s:43:"Liens sociaux personnalisables avec AddThis";s:2:"fa";s:71:"تنظیم و نمایش لینک های شبکه های اجتماعی";}', 'Phil Sturgeon', 'http://philsturgeon.co.uk/', '1.0.0', 1, 6, 1411571391),
(7, 'archive', 'a:8:{s:2:"en";s:7:"Archive";s:2:"br";s:15:"Arquivo do Blog";s:2:"fa";s:10:"آرشیو";s:2:"pt";s:15:"Arquivo do Blog";s:2:"el";s:33:"Αρχείο Ιστολογίου";s:2:"fr";s:16:"Archives du Blog";s:2:"ru";s:10:"Архив";s:2:"id";s:7:"Archive";}', 'a:8:{s:2:"en";s:64:"Display a list of old months with links to posts in those months";s:2:"br";s:95:"Mostra uma lista navegação cronológica contendo o índice dos artigos publicados mensalmente";s:2:"fa";s:101:"نمایش لیست ماه های گذشته به همراه لینک به پست های مربوطه";s:2:"pt";s:95:"Mostra uma lista navegação cronológica contendo o índice dos artigos publicados mensalmente";s:2:"el";s:155:"Προβάλλει μια λίστα μηνών και συνδέσμους σε αναρτήσεις που έγιναν σε κάθε από αυτούς";s:2:"fr";s:95:"Permet d''afficher une liste des mois passés avec des liens vers les posts relatifs à ces mois";s:2:"ru";s:114:"Выводит список по месяцам со ссылками на записи в этих месяцах";s:2:"id";s:63:"Menampilkan daftar bulan beserta tautan post di setiap bulannya";}', 'Phil Sturgeon', 'http://philsturgeon.co.uk/', '1.0.0', 1, 7, 1411571391),
(8, 'blog_categories', 'a:8:{s:2:"en";s:15:"Blog Categories";s:2:"br";s:18:"Categorias do Blog";s:2:"pt";s:18:"Categorias do Blog";s:2:"el";s:41:"Κατηγορίες Ιστολογίου";s:2:"fr";s:19:"Catégories du Blog";s:2:"ru";s:29:"Категории Блога";s:2:"id";s:12:"Kateori Blog";s:2:"fa";s:28:"مجموعه های بلاگ";}', 'a:8:{s:2:"en";s:30:"Show a list of blog categories";s:2:"br";s:57:"Mostra uma lista de navegação com as categorias do Blog";s:2:"pt";s:57:"Mostra uma lista de navegação com as categorias do Blog";s:2:"el";s:97:"Προβάλει την λίστα των κατηγοριών του ιστολογίου σας";s:2:"fr";s:49:"Permet d''afficher la liste de Catégories du Blog";s:2:"ru";s:57:"Выводит список категорий блога";s:2:"id";s:35:"Menampilkan daftar kategori tulisan";s:2:"fa";s:55:"نمایش لیستی از مجموعه های بلاگ";}', 'Stephen Cozart', 'http://github.com/clip/', '1.0.0', 1, 8, 1411571391),
(9, 'latest_posts', 'a:8:{s:2:"en";s:12:"Latest posts";s:2:"br";s:24:"Artigos recentes do Blog";s:2:"fa";s:26:"آخرین ارسال ها";s:2:"pt";s:24:"Artigos recentes do Blog";s:2:"el";s:62:"Τελευταίες αναρτήσεις ιστολογίου";s:2:"fr";s:17:"Derniers articles";s:2:"ru";s:31:"Последние записи";s:2:"id";s:12:"Post Terbaru";}', 'a:8:{s:2:"en";s:39:"Display latest blog posts with a widget";s:2:"br";s:81:"Mostra uma lista de navegação para abrir os últimos artigos publicados no Blog";s:2:"fa";s:65:"نمایش آخرین پست های وبلاگ در یک ویجت";s:2:"pt";s:81:"Mostra uma lista de navegação para abrir os últimos artigos publicados no Blog";s:2:"el";s:103:"Προβάλει τις πιο πρόσφατες αναρτήσεις στο ιστολόγιό σας";s:2:"fr";s:68:"Permet d''afficher la liste des derniers posts du blog dans un Widget";s:2:"ru";s:100:"Выводит список последних записей блога внутри виджета";s:2:"id";s:51:"Menampilkan posting blog terbaru menggunakan widget";}', 'Erik Berman', 'http://www.nukleo.fr', '1.0.0', 1, 9, 1411571391),
(17, 'video', 'a:2:{s:2:"en";s:5:"Video";s:2:"id";s:5:"Video";}', 'a:2:{s:2:"en";s:12:"video widget";s:2:"id";s:12:"widget video";}', 'Rizaq', 'http://philsturgeon.co.uk/', '1.0.0', 1, 17, 1413102401),
(11, 'berita_utama', 'a:2:{s:2:"en";s:13:"Headline News";s:2:"id";s:12:"Berita Utama";}', 'a:2:{s:2:"en";s:20:"headline news widget";s:2:"id";s:19:"widget berita utama";}', 'Rizaq', 'http://philsturgeon.co.uk/', '1.0.0', 1, 11, 1413033810),
(12, 'berita_wabah', 'a:2:{s:2:"en";s:13:"Pandemic News";s:2:"id";s:21:"Berita Wabah Penyakit";}', 'a:2:{s:2:"en";s:20:"pandemic news widget";s:2:"id";s:28:"widget berita wabah penyakit";}', 'Rizaq', 'http://philsturgeon.co.uk/', '1.0.0', 1, 12, 1413033810),
(13, 'cerita_daerah', 'a:2:{s:2:"en";s:18:"Story from country";s:2:"id";s:18:"Cerita dari daerah";}', 'a:2:{s:2:"en";s:20:"country story widget";s:2:"id";s:20:"widget cerita daerah";}', 'Rizaq', 'http://philsturgeon.co.uk/', '1.0.0', 1, 13, 1413033810),
(14, 'kilas_berita', 'a:2:{s:2:"en";s:10:"News Flash";s:2:"id";s:12:"Kilas Berita";}', 'a:2:{s:2:"en";s:17:"news flash widget";s:2:"id";s:19:"widget kilas berita";}', 'Rizaq', 'http://philsturgeon.co.uk/', '1.0.0', 1, 14, 1413033810),
(15, 'event_bulan_ini', 'a:2:{s:2:"en";s:13:"Monthly Event";s:2:"id";s:15:"Event Bulan Ini";}', 'a:2:{s:2:"en";s:17:"pppl event widget";s:2:"id";s:17:"widget event pppl";}', 'Rizaq', 'http://philsturgeon.co.uk/', '1.0.0', 1, 15, 1413029508),
(16, 'kegiatan_pppl', 'a:2:{s:2:"en";s:11:"PPPL Agenda";s:2:"id";s:13:"Kegiatan PPPL";}', 'a:2:{s:2:"en";s:18:"pppl agenda widget";s:2:"id";s:20:"widget kegiatan pppl";}', 'Rizaq', 'http://philsturgeon.co.uk/', '1.0.0', 1, 16, 1413029508);

-- --------------------------------------------------------

--
-- Table structure for table `default_widget_areas`
--

CREATE TABLE IF NOT EXISTS `default_widget_areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `default_widget_areas`
--

INSERT INTO `default_widget_areas` (`id`, `slug`, `title`) VALUES
(1, 'sidebar', 'Sidebar'),
(2, 'headline_news', 'Headline News'),
(3, 'kegiatan_pppl', 'Kegiatan PPPL'),
(4, 'side_story', 'Side Story'),
(5, 'pandemic_news', 'Pandemic News'),
(6, 'news_flash', 'Kilas Berita'),
(7, 'monthly_event', 'Event Bulan Ini'),
(8, 'video', 'Video');

-- --------------------------------------------------------

--
-- Table structure for table `default_widget_instances`
--

CREATE TABLE IF NOT EXISTS `default_widget_instances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `widget_id` int(11) DEFAULT NULL,
  `widget_area_id` int(11) DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(10) NOT NULL DEFAULT '0',
  `created_on` int(11) NOT NULL DEFAULT '0',
  `updated_on` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `default_widget_instances`
--

INSERT INTO `default_widget_instances` (`id`, `title`, `widget_id`, `widget_area_id`, `options`, `order`, `created_on`, `updated_on`) VALUES
(2, 'Kegiatan PPPL', 16, 3, 'a:0:{}', 1, 1413029768, 0),
(3, 'Headline News', 11, 2, 'a:0:{}', 1, 1413029786, 0),
(4, 'Berita Wabah Penyakit', 12, 5, 'a:0:{}', 1, 1413029808, 1413032189),
(5, 'Berita dari Daerah', 13, 4, 'a:0:{}', 1, 1413029846, 0),
(7, 'Kilas Berita', 14, 6, 'a:0:{}', 1, 1413029865, 0),
(9, 'Event Bulan Ini', 15, 7, 'a:0:{}', 1, 1413029904, 0),
(10, 'Video', 17, 8, 'a:0:{}', 1, 1413102439, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
