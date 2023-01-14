-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 09 2023 г., 16:55
-- Версия сервера: 5.7.33
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bato`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-12-31 16:35:13', '2022-12-31 16:35:13', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://bato.loc', 'yes'),
(2, 'home', 'http://bato.loc', 'yes'),
(3, 'blogname', 'Bato', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'algammon55@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=19&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'bato', 'yes'),
(41, 'stylesheet', 'bato', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '19', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1688056512', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1673044513;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1673066113;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1673066127;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1673109313;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1673109327;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1673109329;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1673114308;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1673195713;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(124, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1672504546;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(127, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(128, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1673040582;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(136, '_site_transient_timeout_browser_a818ab359804517f2549e94c88d03c0b', '1673109328', 'no'),
(137, '_site_transient_browser_a818ab359804517f2549e94c88d03c0b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"108.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(138, '_site_transient_timeout_php_check_d564ef3bc004ad591bb7443752129422', '1673109328', 'no'),
(139, '_site_transient_php_check_d564ef3bc004ad591bb7443752129422', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(143, 'can_compress_scripts', '1', 'no'),
(154, 'current_theme', 'Filancy', 'yes'),
(155, 'theme_mods_filancy', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1672504562;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(160, 'theme_mods_twentytwenty', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1672523846;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(163, 'finished_updating_comment_type', '1', 'yes'),
(167, 'theme_mods_bato', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"init_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:5;}', 'yes'),
(173, 'site_logo', '5', 'yes'),
(180, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(191, 'recently_activated', 'a:0:{}', 'yes'),
(192, 'acf_version', '5.10.2', 'yes'),
(193, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.6.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1672563127;s:7:\"version\";s:5:\"5.6.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(335, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":6,\"critical\":0}', 'yes'),
(651, 'options_footer_image', '50', 'no'),
(652, '_options_footer_image', 'field_63b4236e08cbb', 'no'),
(653, 'options_footer_title', 'Grow Your Company Faster Than Ever Before', 'no'),
(654, '_options_footer_title', 'field_63b4238c08cbc', 'no'),
(655, 'options_contact_button', 'Contact Us', 'no'),
(656, '_options_contact_button', 'field_63b423a708cbd', 'no'),
(975, 'options_contatc-form', '[contact-form-7 id=\"13\" title=\"Contact us\"]', 'no'),
(976, '_options_contatc-form', 'field_63b6a71622af9', 'no'),
(986, 'options_contact_form', '[contact-form-7 id=\"13\" title=\"Contact us\"]', 'no'),
(987, '_options_contact_form', 'field_63b6a71622af9', 'no'),
(1253, '_transient_timeout_acf_plugin_updates', '1673114301', 'no'),
(1254, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.0.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.1.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.10.2\";}}', 'no'),
(1255, 'ai1wm_secret_key', 'OChHVKTgPCON', 'yes'),
(1256, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:276:\"<a href=\"http://bato.loc/wp-content/ai1wm-backups/bato.loc-20230106-092023-7uvge9.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"bato.loc\" download=\"bato.loc-20230106-092023-7uvge9.wpress\"><span>Download bato.loc</span><em>Size: 93 MB</em></a>\";}', 'yes'),
(1281, '_site_transient_ai1wm_last_check_for_updates', '1673040585', 'no'),
(1282, 'ai1wm_updater', 'a:0:{}', 'yes'),
(1399, '_site_transient_timeout_theme_roots', '1673042386', 'no'),
(1400, '_site_transient_theme_roots', 'a:5:{s:4:\"bato\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(1401, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1673040587;s:7:\"checked\";a:5:{s:4:\"bato\";s:3:\"1.0\";s:12:\"twentytwenty\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.6\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.2\";}s:8:\"response\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.1.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:1:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1402, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1673040587;s:8:\"response\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.2\";}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.69\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.69.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2837281\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2837281\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.3\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";b:0;}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.0.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.1.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:6:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.10.2\";s:19:\"akismet/akismet.php\";s:5:\"4.2.5\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.68\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.6.4\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(1426, '_transient_timeout_global_styles_bato', '1673042510', 'no'),
(1427, '_transient_global_styles_bato', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2022/12/Logo-AIE-1.png'),
(4, 5, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:70;s:6:\"height\";i:92;s:4:\"file\";s:22:\"2022/12/Logo-AIE-1.png\";s:8:\"filesize\";i:6102;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_wp_trash_meta_status', 'publish'),
(6, 6, '_wp_trash_meta_time', '1672524052'),
(7, 7, '_edit_lock', '1672524848:1'),
(8, 8, '_menu_item_type', 'custom'),
(9, 8, '_menu_item_menu_item_parent', '0'),
(10, 8, '_menu_item_object_id', '8'),
(11, 8, '_menu_item_object', 'custom'),
(12, 8, '_menu_item_target', ''),
(13, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(14, 8, '_menu_item_xfn', ''),
(15, 8, '_menu_item_url', '#'),
(16, 9, '_menu_item_type', 'custom'),
(17, 9, '_menu_item_menu_item_parent', '0'),
(18, 9, '_menu_item_object_id', '9'),
(19, 9, '_menu_item_object', 'custom'),
(20, 9, '_menu_item_target', ''),
(21, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 9, '_menu_item_xfn', ''),
(23, 9, '_menu_item_url', '#'),
(24, 10, '_menu_item_type', 'custom'),
(25, 10, '_menu_item_menu_item_parent', '0'),
(26, 10, '_menu_item_object_id', '10'),
(27, 10, '_menu_item_object', 'custom'),
(28, 10, '_menu_item_target', ''),
(29, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(30, 10, '_menu_item_xfn', ''),
(31, 10, '_menu_item_url', '#'),
(32, 11, '_menu_item_type', 'custom'),
(33, 11, '_menu_item_menu_item_parent', '0'),
(34, 11, '_menu_item_object_id', '11'),
(35, 11, '_menu_item_object', 'custom'),
(36, 11, '_menu_item_target', ''),
(37, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 11, '_menu_item_xfn', ''),
(39, 11, '_menu_item_url', '#'),
(40, 12, '_menu_item_type', 'custom'),
(41, 12, '_menu_item_menu_item_parent', '0'),
(42, 12, '_menu_item_object_id', '12'),
(43, 12, '_menu_item_object', 'custom'),
(44, 12, '_menu_item_target', ''),
(45, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 12, '_menu_item_xfn', ''),
(47, 12, '_menu_item_url', '#'),
(48, 7, '_wp_trash_meta_status', 'publish'),
(49, 7, '_wp_trash_meta_time', '1672524882'),
(50, 13, '_form', '<div class=\"name-row\">\n[text* first-name class:fname placeholder \"First Name\"]\n[text* last-name class:lname placeholder \"Last Name\"]\n</div>\n[email* email class:email placeholder \"Your email\"]\n[text cname class:cname placeholder \"Company name (optional)\"]\n[text* enqiry class:enqiry placeholder \"Enqiry\"]\n[acceptance acceptance-634 class:input-checkbox required]I agree to the  <a href=\"#\" class=\"check-link\" target=\"_blank\">Terms of Use</a> and <a href=\"#\" class=\"check-link\" target=\"_blank\">Privacy Policy</a>[/acceptance]\n        \n[submit class:submit-button \"Send\"]'),
(51, 13, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:34:\"[_site_title] <wordpress@bato.loc>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:166:\"From: [first-name] [last-name] <[email]>\nSubject: [cname]\n\nMessage Body:\n[cname] [enqiry]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(52, 13, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:34:\"[_site_title] <wordpress@bato.loc>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(53, 13, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(54, 13, '_additional_settings', ''),
(55, 13, '_locale', 'en_US'),
(56, 14, '_menu_item_type', 'custom'),
(57, 14, '_menu_item_menu_item_parent', '9'),
(58, 14, '_menu_item_object_id', '14'),
(59, 14, '_menu_item_object', 'custom'),
(60, 14, '_menu_item_target', ''),
(61, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 14, '_menu_item_xfn', ''),
(63, 14, '_menu_item_url', '#'),
(65, 15, '_menu_item_type', 'custom'),
(66, 15, '_menu_item_menu_item_parent', '9'),
(67, 15, '_menu_item_object_id', '15'),
(68, 15, '_menu_item_object', 'custom'),
(69, 15, '_menu_item_target', ''),
(70, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 15, '_menu_item_xfn', ''),
(72, 15, '_menu_item_url', '#'),
(74, 16, '_menu_item_type', 'custom'),
(75, 16, '_menu_item_menu_item_parent', '9'),
(76, 16, '_menu_item_object_id', '16'),
(77, 16, '_menu_item_object', 'custom'),
(78, 16, '_menu_item_target', ''),
(79, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 16, '_menu_item_xfn', ''),
(81, 16, '_menu_item_url', '#'),
(83, 17, '_menu_item_type', 'custom'),
(84, 17, '_menu_item_menu_item_parent', '9'),
(85, 17, '_menu_item_object_id', '17'),
(86, 17, '_menu_item_object', 'custom'),
(87, 17, '_menu_item_target', ''),
(88, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 17, '_menu_item_xfn', ''),
(90, 17, '_menu_item_url', '#'),
(92, 8, '_wp_old_date', '2022-12-31'),
(93, 9, '_wp_old_date', '2022-12-31'),
(94, 10, '_wp_old_date', '2022-12-31'),
(95, 11, '_wp_old_date', '2022-12-31'),
(96, 12, '_wp_old_date', '2022-12-31'),
(97, 18, '_menu_item_type', 'custom'),
(98, 18, '_menu_item_menu_item_parent', '9'),
(99, 18, '_menu_item_object_id', '18'),
(100, 18, '_menu_item_object', 'custom'),
(101, 18, '_menu_item_target', ''),
(102, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 18, '_menu_item_xfn', ''),
(104, 18, '_menu_item_url', '#'),
(106, 19, '_edit_last', '1'),
(107, 19, '_edit_lock', '1673002820:1'),
(108, 19, '_wp_page_template', 'templates/home.php'),
(109, 21, '_edit_last', '1'),
(110, 21, '_edit_lock', '1672738255:1'),
(111, 29, '_wp_attached_file', '2023/01/Avatar.png'),
(112, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:56;s:6:\"height\";i:55;s:4:\"file\";s:18:\"2023/01/Avatar.png\";s:8:\"filesize\";i:7597;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 30, '_wp_attached_file', '2023/01/Avatar-1.png'),
(114, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:56;s:6:\"height\";i:55;s:4:\"file\";s:20:\"2023/01/Avatar-1.png\";s:8:\"filesize\";i:5088;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 31, '_wp_attached_file', '2023/01/Avatar-2.png'),
(116, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:55;s:6:\"height\";i:55;s:4:\"file\";s:20:\"2023/01/Avatar-2.png\";s:8:\"filesize\";i:6942;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 19, 'title', 'Testimonials'),
(118, 19, '_title', 'field_63b2017470534'),
(119, 19, 'subtitle', 'Excepteur sint occaecat cupidatat non proident'),
(120, 19, '_subtitle', 'field_63b2018670535'),
(121, 19, 'slider_repeater_0_description', 'Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.'),
(122, 19, '_slider_repeater_0_description', 'field_63b2019d70537'),
(123, 19, 'slider_repeater_0_photo', '29'),
(124, 19, '_slider_repeater_0_photo', 'field_63b201b270538'),
(125, 19, 'slider_repeater_0_name', 'Dianne Russell'),
(126, 19, '_slider_repeater_0_name', 'field_63b201d170539'),
(127, 19, 'slider_repeater_0_job_title', 'Marketing Coordinator'),
(128, 19, '_slider_repeater_0_job_title', 'field_63b201ec7053a'),
(129, 19, 'slider_repeater_1_description', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.'),
(130, 19, '_slider_repeater_1_description', 'field_63b2019d70537'),
(131, 19, 'slider_repeater_1_photo', '30'),
(132, 19, '_slider_repeater_1_photo', 'field_63b201b270538'),
(133, 19, 'slider_repeater_1_name', 'Robert Johnson'),
(134, 19, '_slider_repeater_1_name', 'field_63b201d170539'),
(135, 19, 'slider_repeater_1_job_title', 'Graphic Designer'),
(136, 19, '_slider_repeater_1_job_title', 'field_63b201ec7053a'),
(137, 19, 'slider_repeater_2_description', 'Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.'),
(138, 19, '_slider_repeater_2_description', 'field_63b2019d70537'),
(139, 19, 'slider_repeater_2_photo', '31'),
(140, 19, '_slider_repeater_2_photo', 'field_63b201b270538'),
(141, 19, 'slider_repeater_2_name', 'Floyd Miles'),
(142, 19, '_slider_repeater_2_name', 'field_63b201d170539'),
(143, 19, 'slider_repeater_2_job_title', 'President of Sales'),
(144, 19, '_slider_repeater_2_job_title', 'field_63b201ec7053a'),
(145, 19, 'slider_repeater', '9'),
(146, 19, '_slider_repeater', 'field_63b2018e70536'),
(147, 32, 'title', 'Testimonials'),
(148, 32, '_title', 'field_63b2017470534'),
(149, 32, 'subtitle', 'Excepteur sint occaecat cupidatat non proident'),
(150, 32, '_subtitle', 'field_63b2018670535'),
(151, 32, 'slider_repeater_0_description', 'Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.'),
(152, 32, '_slider_repeater_0_description', 'field_63b2019d70537'),
(153, 32, 'slider_repeater_0_photo', '29'),
(154, 32, '_slider_repeater_0_photo', 'field_63b201b270538'),
(155, 32, 'slider_repeater_0_name', 'Dianne Russell'),
(156, 32, '_slider_repeater_0_name', 'field_63b201d170539'),
(157, 32, 'slider_repeater_0_job_title', 'Marketing Coordinator'),
(158, 32, '_slider_repeater_0_job_title', 'field_63b201ec7053a'),
(159, 32, 'slider_repeater_1_description', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.'),
(160, 32, '_slider_repeater_1_description', 'field_63b2019d70537'),
(161, 32, 'slider_repeater_1_photo', '30'),
(162, 32, '_slider_repeater_1_photo', 'field_63b201b270538'),
(163, 32, 'slider_repeater_1_name', 'Robert Johnson'),
(164, 32, '_slider_repeater_1_name', 'field_63b201d170539'),
(165, 32, 'slider_repeater_1_job_title', 'Graphic Designer'),
(166, 32, '_slider_repeater_1_job_title', 'field_63b201ec7053a'),
(167, 32, 'slider_repeater_2_description', 'Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.'),
(168, 32, '_slider_repeater_2_description', 'field_63b2019d70537'),
(169, 32, 'slider_repeater_2_photo', '31'),
(170, 32, '_slider_repeater_2_photo', 'field_63b201b270538'),
(171, 32, 'slider_repeater_2_name', 'Floyd Miles'),
(172, 32, '_slider_repeater_2_name', 'field_63b201d170539'),
(173, 32, 'slider_repeater_2_job_title', 'President of Sales'),
(174, 32, '_slider_repeater_2_job_title', 'field_63b201ec7053a'),
(175, 32, 'slider_repeater', '3'),
(176, 32, '_slider_repeater', 'field_63b2018e70536'),
(177, 19, 'slider_repeater_3_description', 'Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.'),
(178, 19, '_slider_repeater_3_description', 'field_63b2019d70537'),
(179, 19, 'slider_repeater_3_photo', '29'),
(180, 19, '_slider_repeater_3_photo', 'field_63b201b270538'),
(181, 19, 'slider_repeater_3_name', 'Dianne Russell'),
(182, 19, '_slider_repeater_3_name', 'field_63b201d170539'),
(183, 19, 'slider_repeater_3_job_title', 'Marketing Coordinator'),
(184, 19, '_slider_repeater_3_job_title', 'field_63b201ec7053a'),
(185, 19, 'slider_repeater_4_description', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.'),
(186, 19, '_slider_repeater_4_description', 'field_63b2019d70537'),
(187, 19, 'slider_repeater_4_photo', '30'),
(188, 19, '_slider_repeater_4_photo', 'field_63b201b270538'),
(189, 19, 'slider_repeater_4_name', 'Robert Johnson'),
(190, 19, '_slider_repeater_4_name', 'field_63b201d170539'),
(191, 19, 'slider_repeater_4_job_title', 'Graphic Designer'),
(192, 19, '_slider_repeater_4_job_title', 'field_63b201ec7053a'),
(193, 19, 'slider_repeater_5_description', 'Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros'),
(194, 19, '_slider_repeater_5_description', 'field_63b2019d70537'),
(195, 19, 'slider_repeater_5_photo', '31'),
(196, 19, '_slider_repeater_5_photo', 'field_63b201b270538'),
(197, 19, 'slider_repeater_5_name', 'Floyd Miles'),
(198, 19, '_slider_repeater_5_name', 'field_63b201d170539'),
(199, 19, 'slider_repeater_5_job_title', 'President of Sales'),
(200, 19, '_slider_repeater_5_job_title', 'field_63b201ec7053a'),
(201, 33, 'title', 'Testimonials'),
(202, 33, '_title', 'field_63b2017470534'),
(203, 33, 'subtitle', 'Excepteur sint occaecat cupidatat non proident'),
(204, 33, '_subtitle', 'field_63b2018670535'),
(205, 33, 'slider_repeater_0_description', 'Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.'),
(206, 33, '_slider_repeater_0_description', 'field_63b2019d70537'),
(207, 33, 'slider_repeater_0_photo', '29'),
(208, 33, '_slider_repeater_0_photo', 'field_63b201b270538'),
(209, 33, 'slider_repeater_0_name', 'Dianne Russell'),
(210, 33, '_slider_repeater_0_name', 'field_63b201d170539'),
(211, 33, 'slider_repeater_0_job_title', 'Marketing Coordinator'),
(212, 33, '_slider_repeater_0_job_title', 'field_63b201ec7053a'),
(213, 33, 'slider_repeater_1_description', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.'),
(214, 33, '_slider_repeater_1_description', 'field_63b2019d70537'),
(215, 33, 'slider_repeater_1_photo', '30'),
(216, 33, '_slider_repeater_1_photo', 'field_63b201b270538'),
(217, 33, 'slider_repeater_1_name', 'Robert Johnson'),
(218, 33, '_slider_repeater_1_name', 'field_63b201d170539'),
(219, 33, 'slider_repeater_1_job_title', 'Graphic Designer'),
(220, 33, '_slider_repeater_1_job_title', 'field_63b201ec7053a'),
(221, 33, 'slider_repeater_2_description', 'Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.'),
(222, 33, '_slider_repeater_2_description', 'field_63b2019d70537'),
(223, 33, 'slider_repeater_2_photo', '31'),
(224, 33, '_slider_repeater_2_photo', 'field_63b201b270538'),
(225, 33, 'slider_repeater_2_name', 'Floyd Miles'),
(226, 33, '_slider_repeater_2_name', 'field_63b201d170539'),
(227, 33, 'slider_repeater_2_job_title', 'President of Sales'),
(228, 33, '_slider_repeater_2_job_title', 'field_63b201ec7053a'),
(229, 33, 'slider_repeater', '6'),
(230, 33, '_slider_repeater', 'field_63b2018e70536'),
(231, 33, 'slider_repeater_3_description', 'Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.'),
(232, 33, '_slider_repeater_3_description', 'field_63b2019d70537'),
(233, 33, 'slider_repeater_3_photo', '29'),
(234, 33, '_slider_repeater_3_photo', 'field_63b201b270538'),
(235, 33, 'slider_repeater_3_name', 'Dianne Russell'),
(236, 33, '_slider_repeater_3_name', 'field_63b201d170539'),
(237, 33, 'slider_repeater_3_job_title', 'Marketing Coordinator'),
(238, 33, '_slider_repeater_3_job_title', 'field_63b201ec7053a'),
(239, 33, 'slider_repeater_4_description', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.'),
(240, 33, '_slider_repeater_4_description', 'field_63b2019d70537'),
(241, 33, 'slider_repeater_4_photo', '30'),
(242, 33, '_slider_repeater_4_photo', 'field_63b201b270538'),
(243, 33, 'slider_repeater_4_name', 'Robert Johnson'),
(244, 33, '_slider_repeater_4_name', 'field_63b201d170539'),
(245, 33, 'slider_repeater_4_job_title', 'Graphic Designer'),
(246, 33, '_slider_repeater_4_job_title', 'field_63b201ec7053a'),
(247, 33, 'slider_repeater_5_description', 'Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros'),
(248, 33, '_slider_repeater_5_description', 'field_63b2019d70537'),
(249, 33, 'slider_repeater_5_photo', '31'),
(250, 33, '_slider_repeater_5_photo', 'field_63b201b270538'),
(251, 33, 'slider_repeater_5_name', 'Floyd Miles'),
(252, 33, '_slider_repeater_5_name', 'field_63b201d170539'),
(253, 33, 'slider_repeater_5_job_title', 'President of Sales'),
(254, 33, '_slider_repeater_5_job_title', 'field_63b201ec7053a'),
(255, 41, '_wp_attached_file', '2023/01/Saly-13-1.png'),
(256, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:461;s:6:\"height\";i:560;s:4:\"file\";s:21:\"2023/01/Saly-13-1.png\";s:8:\"filesize\";i:118054;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"Saly-13-1-247x300.png\";s:5:\"width\";i:247;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:57014;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"Saly-13-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22612;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(257, 19, 'question_title', 'Frequently Asked Question'),
(258, 19, '_question_title', 'field_63b3ea7024bc5'),
(259, 19, 'question_subtitle', 'Excepteur sint occaecat cupidatat non proident'),
(260, 19, '_question_subtitle', 'field_63b3ea8624bc6'),
(261, 19, 'questions_0_question', 'Sed ut perspiciatis unde omnis iste natus ?'),
(262, 19, '_questions_0_question', 'field_63b3eada24bc8'),
(263, 19, 'questions_1_question', 'Temporibus autem quibusdam et aut ?'),
(264, 19, '_questions_1_question', 'field_63b3eada24bc8'),
(265, 19, 'questions_2_question', 'Sed ut perspiciatis unde omnis iste natus ?'),
(266, 19, '_questions_2_question', 'field_63b3eada24bc8'),
(267, 19, 'questions', '3'),
(268, 19, '_questions', 'field_63b3eaa824bc7'),
(269, 19, 'faq_image', '41'),
(270, 19, '_faq_image', 'field_63b3eb6224bc9'),
(271, 42, 'title', 'Testimonials'),
(272, 42, '_title', 'field_63b2017470534'),
(273, 42, 'subtitle', 'Excepteur sint occaecat cupidatat non proident'),
(274, 42, '_subtitle', 'field_63b2018670535'),
(275, 42, 'slider_repeater_0_description', 'Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.'),
(276, 42, '_slider_repeater_0_description', 'field_63b2019d70537'),
(277, 42, 'slider_repeater_0_photo', '29'),
(278, 42, '_slider_repeater_0_photo', 'field_63b201b270538'),
(279, 42, 'slider_repeater_0_name', 'Dianne Russell'),
(280, 42, '_slider_repeater_0_name', 'field_63b201d170539'),
(281, 42, 'slider_repeater_0_job_title', 'Marketing Coordinator'),
(282, 42, '_slider_repeater_0_job_title', 'field_63b201ec7053a'),
(283, 42, 'slider_repeater_1_description', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.'),
(284, 42, '_slider_repeater_1_description', 'field_63b2019d70537'),
(285, 42, 'slider_repeater_1_photo', '30'),
(286, 42, '_slider_repeater_1_photo', 'field_63b201b270538'),
(287, 42, 'slider_repeater_1_name', 'Robert Johnson'),
(288, 42, '_slider_repeater_1_name', 'field_63b201d170539'),
(289, 42, 'slider_repeater_1_job_title', 'Graphic Designer'),
(290, 42, '_slider_repeater_1_job_title', 'field_63b201ec7053a'),
(291, 42, 'slider_repeater_2_description', 'Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.'),
(292, 42, '_slider_repeater_2_description', 'field_63b2019d70537'),
(293, 42, 'slider_repeater_2_photo', '31'),
(294, 42, '_slider_repeater_2_photo', 'field_63b201b270538'),
(295, 42, 'slider_repeater_2_name', 'Floyd Miles'),
(296, 42, '_slider_repeater_2_name', 'field_63b201d170539'),
(297, 42, 'slider_repeater_2_job_title', 'President of Sales'),
(298, 42, '_slider_repeater_2_job_title', 'field_63b201ec7053a'),
(299, 42, 'slider_repeater', '6'),
(300, 42, '_slider_repeater', 'field_63b2018e70536'),
(301, 42, 'slider_repeater_3_description', 'Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.'),
(302, 42, '_slider_repeater_3_description', 'field_63b2019d70537'),
(303, 42, 'slider_repeater_3_photo', '29'),
(304, 42, '_slider_repeater_3_photo', 'field_63b201b270538'),
(305, 42, 'slider_repeater_3_name', 'Dianne Russell'),
(306, 42, '_slider_repeater_3_name', 'field_63b201d170539'),
(307, 42, 'slider_repeater_3_job_title', 'Marketing Coordinator'),
(308, 42, '_slider_repeater_3_job_title', 'field_63b201ec7053a'),
(309, 42, 'slider_repeater_4_description', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.'),
(310, 42, '_slider_repeater_4_description', 'field_63b2019d70537'),
(311, 42, 'slider_repeater_4_photo', '30'),
(312, 42, '_slider_repeater_4_photo', 'field_63b201b270538'),
(313, 42, 'slider_repeater_4_name', 'Robert Johnson'),
(314, 42, '_slider_repeater_4_name', 'field_63b201d170539'),
(315, 42, 'slider_repeater_4_job_title', 'Graphic Designer'),
(316, 42, '_slider_repeater_4_job_title', 'field_63b201ec7053a'),
(317, 42, 'slider_repeater_5_description', 'Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros'),
(318, 42, '_slider_repeater_5_description', 'field_63b2019d70537'),
(319, 42, 'slider_repeater_5_photo', '31'),
(320, 42, '_slider_repeater_5_photo', 'field_63b201b270538'),
(321, 42, 'slider_repeater_5_name', 'Floyd Miles'),
(322, 42, '_slider_repeater_5_name', 'field_63b201d170539'),
(323, 42, 'slider_repeater_5_job_title', 'President of Sales'),
(324, 42, '_slider_repeater_5_job_title', 'field_63b201ec7053a'),
(325, 42, 'question_title', 'Frequently Asked Question'),
(326, 42, '_question_title', 'field_63b3ea7024bc5'),
(327, 42, 'question_subtitle', 'Excepteur sint occaecat cupidatat non proident'),
(328, 42, '_question_subtitle', 'field_63b3ea8624bc6'),
(329, 42, 'questions_0_question', '<h3 class=\"question-title\">Sed ut perspiciatis unde omnis iste natus ?</h3>\r\n<p class=\"question-title\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.</p>'),
(330, 42, '_questions_0_question', 'field_63b3eada24bc8'),
(331, 42, 'questions_1_question', '<h3 class=\"question-title\">Temporibus autem quibusdam et aut ?</h3>\r\n&nbsp;\r\n<p class=\"question-title\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.</p>'),
(332, 42, '_questions_1_question', 'field_63b3eada24bc8'),
(333, 42, 'questions_2_question', '<h3 class=\"question-title\">Sed ut perspiciatis unde omnis iste natus ?</h3>\r\n<p class=\"question-title\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.</p>'),
(334, 42, '_questions_2_question', 'field_63b3eada24bc8'),
(335, 42, 'questions', '3'),
(336, 42, '_questions', 'field_63b3eaa824bc7'),
(337, 42, 'faq_image', '41'),
(338, 42, '_faq_image', 'field_63b3eb6224bc9'),
(339, 43, 'title', 'Testimonials'),
(340, 43, '_title', 'field_63b2017470534'),
(341, 43, 'subtitle', 'Excepteur sint occaecat cupidatat non proident'),
(342, 43, '_subtitle', 'field_63b2018670535'),
(343, 43, 'slider_repeater_0_description', 'Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.'),
(344, 43, '_slider_repeater_0_description', 'field_63b2019d70537'),
(345, 43, 'slider_repeater_0_photo', '29'),
(346, 43, '_slider_repeater_0_photo', 'field_63b201b270538'),
(347, 43, 'slider_repeater_0_name', 'Dianne Russell'),
(348, 43, '_slider_repeater_0_name', 'field_63b201d170539'),
(349, 43, 'slider_repeater_0_job_title', 'Marketing Coordinator'),
(350, 43, '_slider_repeater_0_job_title', 'field_63b201ec7053a'),
(351, 43, 'slider_repeater_1_description', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.'),
(352, 43, '_slider_repeater_1_description', 'field_63b2019d70537'),
(353, 43, 'slider_repeater_1_photo', '30'),
(354, 43, '_slider_repeater_1_photo', 'field_63b201b270538'),
(355, 43, 'slider_repeater_1_name', 'Robert Johnson'),
(356, 43, '_slider_repeater_1_name', 'field_63b201d170539'),
(357, 43, 'slider_repeater_1_job_title', 'Graphic Designer'),
(358, 43, '_slider_repeater_1_job_title', 'field_63b201ec7053a'),
(359, 43, 'slider_repeater_2_description', 'Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.'),
(360, 43, '_slider_repeater_2_description', 'field_63b2019d70537'),
(361, 43, 'slider_repeater_2_photo', '31'),
(362, 43, '_slider_repeater_2_photo', 'field_63b201b270538'),
(363, 43, 'slider_repeater_2_name', 'Floyd Miles'),
(364, 43, '_slider_repeater_2_name', 'field_63b201d170539'),
(365, 43, 'slider_repeater_2_job_title', 'President of Sales'),
(366, 43, '_slider_repeater_2_job_title', 'field_63b201ec7053a'),
(367, 43, 'slider_repeater', '6'),
(368, 43, '_slider_repeater', 'field_63b2018e70536'),
(369, 43, 'slider_repeater_3_description', 'Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.'),
(370, 43, '_slider_repeater_3_description', 'field_63b2019d70537'),
(371, 43, 'slider_repeater_3_photo', '29'),
(372, 43, '_slider_repeater_3_photo', 'field_63b201b270538'),
(373, 43, 'slider_repeater_3_name', 'Dianne Russell'),
(374, 43, '_slider_repeater_3_name', 'field_63b201d170539'),
(375, 43, 'slider_repeater_3_job_title', 'Marketing Coordinator'),
(376, 43, '_slider_repeater_3_job_title', 'field_63b201ec7053a'),
(377, 43, 'slider_repeater_4_description', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.'),
(378, 43, '_slider_repeater_4_description', 'field_63b2019d70537'),
(379, 43, 'slider_repeater_4_photo', '30'),
(380, 43, '_slider_repeater_4_photo', 'field_63b201b270538'),
(381, 43, 'slider_repeater_4_name', 'Robert Johnson'),
(382, 43, '_slider_repeater_4_name', 'field_63b201d170539'),
(383, 43, 'slider_repeater_4_job_title', 'Graphic Designer'),
(384, 43, '_slider_repeater_4_job_title', 'field_63b201ec7053a'),
(385, 43, 'slider_repeater_5_description', 'Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros'),
(386, 43, '_slider_repeater_5_description', 'field_63b2019d70537'),
(387, 43, 'slider_repeater_5_photo', '31'),
(388, 43, '_slider_repeater_5_photo', 'field_63b201b270538'),
(389, 43, 'slider_repeater_5_name', 'Floyd Miles'),
(390, 43, '_slider_repeater_5_name', 'field_63b201d170539'),
(391, 43, 'slider_repeater_5_job_title', 'President of Sales'),
(392, 43, '_slider_repeater_5_job_title', 'field_63b201ec7053a'),
(393, 43, 'question_title', 'Frequently Asked Question'),
(394, 43, '_question_title', 'field_63b3ea7024bc5'),
(395, 43, 'question_subtitle', 'Excepteur sint occaecat cupidatat non proident'),
(396, 43, '_question_subtitle', 'field_63b3ea8624bc6'),
(397, 43, 'questions_0_question', '<h3 class=\"question-title\">Sed ut perspiciatis unde omnis iste natus ?</h3>\r\n<p class=\"question-description\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.</p>'),
(398, 43, '_questions_0_question', 'field_63b3eada24bc8'),
(399, 43, 'questions_1_question', '<h3 class=\"question-title\">Temporibus autem quibusdam et aut ?</h3>\r\n&nbsp;\r\n<p class=\"question-description\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.</p>'),
(400, 43, '_questions_1_question', 'field_63b3eada24bc8'),
(401, 43, 'questions_2_question', '<h3 class=\"question-title\">Sed ut perspiciatis unde omnis iste natus ?</h3>\r\n<p class=\"question-description\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.</p>'),
(402, 43, '_questions_2_question', 'field_63b3eada24bc8'),
(403, 43, 'questions', '3'),
(404, 43, '_questions', 'field_63b3eaa824bc7'),
(405, 43, 'faq_image', '41'),
(406, 43, '_faq_image', 'field_63b3eb6224bc9'),
(407, 19, 'questions_0_answer', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.'),
(408, 19, '_questions_0_answer', 'field_63b3f60c1d0de'),
(409, 19, 'questions_1_answer', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.'),
(410, 19, '_questions_1_answer', 'field_63b3f60c1d0de'),
(411, 19, 'questions_2_answer', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.'),
(412, 19, '_questions_2_answer', 'field_63b3f60c1d0de'),
(413, 45, 'title', 'Testimonials'),
(414, 45, '_title', 'field_63b2017470534'),
(415, 45, 'subtitle', 'Excepteur sint occaecat cupidatat non proident'),
(416, 45, '_subtitle', 'field_63b2018670535'),
(417, 45, 'slider_repeater_0_description', 'Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.'),
(418, 45, '_slider_repeater_0_description', 'field_63b2019d70537'),
(419, 45, 'slider_repeater_0_photo', '29'),
(420, 45, '_slider_repeater_0_photo', 'field_63b201b270538'),
(421, 45, 'slider_repeater_0_name', 'Dianne Russell'),
(422, 45, '_slider_repeater_0_name', 'field_63b201d170539'),
(423, 45, 'slider_repeater_0_job_title', 'Marketing Coordinator'),
(424, 45, '_slider_repeater_0_job_title', 'field_63b201ec7053a'),
(425, 45, 'slider_repeater_1_description', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.'),
(426, 45, '_slider_repeater_1_description', 'field_63b2019d70537'),
(427, 45, 'slider_repeater_1_photo', '30'),
(428, 45, '_slider_repeater_1_photo', 'field_63b201b270538'),
(429, 45, 'slider_repeater_1_name', 'Robert Johnson'),
(430, 45, '_slider_repeater_1_name', 'field_63b201d170539'),
(431, 45, 'slider_repeater_1_job_title', 'Graphic Designer'),
(432, 45, '_slider_repeater_1_job_title', 'field_63b201ec7053a'),
(433, 45, 'slider_repeater_2_description', 'Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.'),
(434, 45, '_slider_repeater_2_description', 'field_63b2019d70537'),
(435, 45, 'slider_repeater_2_photo', '31'),
(436, 45, '_slider_repeater_2_photo', 'field_63b201b270538'),
(437, 45, 'slider_repeater_2_name', 'Floyd Miles'),
(438, 45, '_slider_repeater_2_name', 'field_63b201d170539'),
(439, 45, 'slider_repeater_2_job_title', 'President of Sales'),
(440, 45, '_slider_repeater_2_job_title', 'field_63b201ec7053a'),
(441, 45, 'slider_repeater', '6'),
(442, 45, '_slider_repeater', 'field_63b2018e70536'),
(443, 45, 'slider_repeater_3_description', 'Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.'),
(444, 45, '_slider_repeater_3_description', 'field_63b2019d70537'),
(445, 45, 'slider_repeater_3_photo', '29'),
(446, 45, '_slider_repeater_3_photo', 'field_63b201b270538'),
(447, 45, 'slider_repeater_3_name', 'Dianne Russell'),
(448, 45, '_slider_repeater_3_name', 'field_63b201d170539'),
(449, 45, 'slider_repeater_3_job_title', 'Marketing Coordinator'),
(450, 45, '_slider_repeater_3_job_title', 'field_63b201ec7053a'),
(451, 45, 'slider_repeater_4_description', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.'),
(452, 45, '_slider_repeater_4_description', 'field_63b2019d70537'),
(453, 45, 'slider_repeater_4_photo', '30'),
(454, 45, '_slider_repeater_4_photo', 'field_63b201b270538'),
(455, 45, 'slider_repeater_4_name', 'Robert Johnson'),
(456, 45, '_slider_repeater_4_name', 'field_63b201d170539'),
(457, 45, 'slider_repeater_4_job_title', 'Graphic Designer'),
(458, 45, '_slider_repeater_4_job_title', 'field_63b201ec7053a'),
(459, 45, 'slider_repeater_5_description', 'Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros'),
(460, 45, '_slider_repeater_5_description', 'field_63b2019d70537'),
(461, 45, 'slider_repeater_5_photo', '31'),
(462, 45, '_slider_repeater_5_photo', 'field_63b201b270538'),
(463, 45, 'slider_repeater_5_name', 'Floyd Miles'),
(464, 45, '_slider_repeater_5_name', 'field_63b201d170539'),
(465, 45, 'slider_repeater_5_job_title', 'President of Sales'),
(466, 45, '_slider_repeater_5_job_title', 'field_63b201ec7053a'),
(467, 45, 'question_title', 'Frequently Asked Question'),
(468, 45, '_question_title', 'field_63b3ea7024bc5'),
(469, 45, 'question_subtitle', 'Excepteur sint occaecat cupidatat non proident'),
(470, 45, '_question_subtitle', 'field_63b3ea8624bc6'),
(471, 45, 'questions_0_question', 'Sed ut perspiciatis unde omnis iste natus ?'),
(472, 45, '_questions_0_question', 'field_63b3eada24bc8'),
(473, 45, 'questions_1_question', 'Temporibus autem quibusdam et aut ?'),
(474, 45, '_questions_1_question', 'field_63b3eada24bc8'),
(475, 45, 'questions_2_question', 'Sed ut perspiciatis unde omnis iste natus ?'),
(476, 45, '_questions_2_question', 'field_63b3eada24bc8'),
(477, 45, 'questions', '3'),
(478, 45, '_questions', 'field_63b3eaa824bc7'),
(479, 45, 'faq_image', '41'),
(480, 45, '_faq_image', 'field_63b3eb6224bc9'),
(481, 45, 'questions_0_answer', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.'),
(482, 45, '_questions_0_answer', 'field_63b3f60c1d0de'),
(483, 45, 'questions_1_answer', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.'),
(484, 45, '_questions_1_answer', 'field_63b3f60c1d0de'),
(485, 45, 'questions_2_answer', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.'),
(486, 45, '_questions_2_answer', 'field_63b3f60c1d0de'),
(487, 46, '_edit_last', '1'),
(488, 46, '_edit_lock', '1672941326:1'),
(489, 50, '_wp_attached_file', '2023/01/60e80d7a2cdeb_e53b49d36342a544dd6cb1af6cbea0b5.jpg'),
(490, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:788;s:6:\"height\";i:400;s:4:\"file\";s:58:\"2023/01/60e80d7a2cdeb_e53b49d36342a544dd6cb1af6cbea0b5.jpg\";s:8:\"filesize\";i:109499;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:58:\"60e80d7a2cdeb_e53b49d36342a544dd6cb1af6cbea0b5-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14653;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:58:\"60e80d7a2cdeb_e53b49d36342a544dd6cb1af6cbea0b5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7668;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:58:\"60e80d7a2cdeb_e53b49d36342a544dd6cb1af6cbea0b5-768x390.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:390;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:68906;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(491, 19, 'slider_repeater_6_description', 'Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.'),
(492, 19, '_slider_repeater_6_description', 'field_63b2019d70537'),
(493, 19, 'slider_repeater_6_photo', '29'),
(494, 19, '_slider_repeater_6_photo', 'field_63b201b270538'),
(495, 19, 'slider_repeater_6_name', 'Dianne Russell'),
(496, 19, '_slider_repeater_6_name', 'field_63b201d170539'),
(497, 19, 'slider_repeater_6_job_title', 'Marketing Coordinator'),
(498, 19, '_slider_repeater_6_job_title', 'field_63b201ec7053a'),
(499, 19, 'slider_repeater_7_description', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.'),
(500, 19, '_slider_repeater_7_description', 'field_63b2019d70537'),
(501, 19, 'slider_repeater_7_photo', '30'),
(502, 19, '_slider_repeater_7_photo', 'field_63b201b270538'),
(503, 19, 'slider_repeater_7_name', 'Robert Johnson'),
(504, 19, '_slider_repeater_7_name', 'field_63b201d170539'),
(505, 19, 'slider_repeater_7_job_title', 'Graphic Designer'),
(506, 19, '_slider_repeater_7_job_title', 'field_63b201ec7053a'),
(507, 19, 'slider_repeater_8_description', 'Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros'),
(508, 19, '_slider_repeater_8_description', 'field_63b2019d70537'),
(509, 19, 'slider_repeater_8_photo', '31'),
(510, 19, '_slider_repeater_8_photo', 'field_63b201b270538'),
(511, 19, 'slider_repeater_8_name', 'Floyd Miles'),
(512, 19, '_slider_repeater_8_name', 'field_63b201d170539'),
(513, 19, 'slider_repeater_8_job_title', 'President of Sales'),
(514, 19, '_slider_repeater_8_job_title', 'field_63b201ec7053a'),
(515, 53, 'title', 'Testimonials'),
(516, 53, '_title', 'field_63b2017470534'),
(517, 53, 'subtitle', 'Excepteur sint occaecat cupidatat non proident'),
(518, 53, '_subtitle', 'field_63b2018670535'),
(519, 53, 'slider_repeater_0_description', 'Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.'),
(520, 53, '_slider_repeater_0_description', 'field_63b2019d70537'),
(521, 53, 'slider_repeater_0_photo', '29'),
(522, 53, '_slider_repeater_0_photo', 'field_63b201b270538'),
(523, 53, 'slider_repeater_0_name', 'Dianne Russell'),
(524, 53, '_slider_repeater_0_name', 'field_63b201d170539'),
(525, 53, 'slider_repeater_0_job_title', 'Marketing Coordinator'),
(526, 53, '_slider_repeater_0_job_title', 'field_63b201ec7053a'),
(527, 53, 'slider_repeater_1_description', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.'),
(528, 53, '_slider_repeater_1_description', 'field_63b2019d70537'),
(529, 53, 'slider_repeater_1_photo', '30'),
(530, 53, '_slider_repeater_1_photo', 'field_63b201b270538'),
(531, 53, 'slider_repeater_1_name', 'Robert Johnson'),
(532, 53, '_slider_repeater_1_name', 'field_63b201d170539'),
(533, 53, 'slider_repeater_1_job_title', 'Graphic Designer'),
(534, 53, '_slider_repeater_1_job_title', 'field_63b201ec7053a'),
(535, 53, 'slider_repeater_2_description', 'Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.'),
(536, 53, '_slider_repeater_2_description', 'field_63b2019d70537'),
(537, 53, 'slider_repeater_2_photo', '31'),
(538, 53, '_slider_repeater_2_photo', 'field_63b201b270538'),
(539, 53, 'slider_repeater_2_name', 'Floyd Miles'),
(540, 53, '_slider_repeater_2_name', 'field_63b201d170539'),
(541, 53, 'slider_repeater_2_job_title', 'President of Sales'),
(542, 53, '_slider_repeater_2_job_title', 'field_63b201ec7053a'),
(543, 53, 'slider_repeater', '9'),
(544, 53, '_slider_repeater', 'field_63b2018e70536'),
(545, 53, 'slider_repeater_3_description', 'Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.'),
(546, 53, '_slider_repeater_3_description', 'field_63b2019d70537'),
(547, 53, 'slider_repeater_3_photo', '29'),
(548, 53, '_slider_repeater_3_photo', 'field_63b201b270538'),
(549, 53, 'slider_repeater_3_name', 'Dianne Russell'),
(550, 53, '_slider_repeater_3_name', 'field_63b201d170539'),
(551, 53, 'slider_repeater_3_job_title', 'Marketing Coordinator'),
(552, 53, '_slider_repeater_3_job_title', 'field_63b201ec7053a'),
(553, 53, 'slider_repeater_4_description', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.'),
(554, 53, '_slider_repeater_4_description', 'field_63b2019d70537'),
(555, 53, 'slider_repeater_4_photo', '30'),
(556, 53, '_slider_repeater_4_photo', 'field_63b201b270538'),
(557, 53, 'slider_repeater_4_name', 'Robert Johnson'),
(558, 53, '_slider_repeater_4_name', 'field_63b201d170539'),
(559, 53, 'slider_repeater_4_job_title', 'Graphic Designer'),
(560, 53, '_slider_repeater_4_job_title', 'field_63b201ec7053a'),
(561, 53, 'slider_repeater_5_description', 'Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros'),
(562, 53, '_slider_repeater_5_description', 'field_63b2019d70537'),
(563, 53, 'slider_repeater_5_photo', '31'),
(564, 53, '_slider_repeater_5_photo', 'field_63b201b270538'),
(565, 53, 'slider_repeater_5_name', 'Floyd Miles'),
(566, 53, '_slider_repeater_5_name', 'field_63b201d170539'),
(567, 53, 'slider_repeater_5_job_title', 'President of Sales'),
(568, 53, '_slider_repeater_5_job_title', 'field_63b201ec7053a'),
(569, 53, 'question_title', 'Frequently Asked Question'),
(570, 53, '_question_title', 'field_63b3ea7024bc5'),
(571, 53, 'question_subtitle', 'Excepteur sint occaecat cupidatat non proident'),
(572, 53, '_question_subtitle', 'field_63b3ea8624bc6'),
(573, 53, 'questions_0_question', 'Sed ut perspiciatis unde omnis iste natus ?'),
(574, 53, '_questions_0_question', 'field_63b3eada24bc8'),
(575, 53, 'questions_1_question', 'Temporibus autem quibusdam et aut ?'),
(576, 53, '_questions_1_question', 'field_63b3eada24bc8'),
(577, 53, 'questions_2_question', 'Sed ut perspiciatis unde omnis iste natus ?'),
(578, 53, '_questions_2_question', 'field_63b3eada24bc8'),
(579, 53, 'questions', '3'),
(580, 53, '_questions', 'field_63b3eaa824bc7'),
(581, 53, 'faq_image', '41'),
(582, 53, '_faq_image', 'field_63b3eb6224bc9'),
(583, 53, 'questions_0_answer', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.'),
(584, 53, '_questions_0_answer', 'field_63b3f60c1d0de'),
(585, 53, 'questions_1_answer', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.'),
(586, 53, '_questions_1_answer', 'field_63b3f60c1d0de'),
(587, 53, 'questions_2_answer', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.'),
(588, 53, '_questions_2_answer', 'field_63b3f60c1d0de'),
(589, 53, 'slider_repeater_6_description', 'Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.'),
(590, 53, '_slider_repeater_6_description', 'field_63b2019d70537'),
(591, 53, 'slider_repeater_6_photo', '29'),
(592, 53, '_slider_repeater_6_photo', 'field_63b201b270538'),
(593, 53, 'slider_repeater_6_name', 'Dianne Russell'),
(594, 53, '_slider_repeater_6_name', 'field_63b201d170539'),
(595, 53, 'slider_repeater_6_job_title', 'Marketing Coordinator'),
(596, 53, '_slider_repeater_6_job_title', 'field_63b201ec7053a'),
(597, 53, 'slider_repeater_7_description', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.'),
(598, 53, '_slider_repeater_7_description', 'field_63b2019d70537'),
(599, 53, 'slider_repeater_7_photo', '30'),
(600, 53, '_slider_repeater_7_photo', 'field_63b201b270538'),
(601, 53, 'slider_repeater_7_name', 'Robert Johnson'),
(602, 53, '_slider_repeater_7_name', 'field_63b201d170539'),
(603, 53, 'slider_repeater_7_job_title', 'Graphic Designer'),
(604, 53, '_slider_repeater_7_job_title', 'field_63b201ec7053a'),
(605, 53, 'slider_repeater_8_description', 'Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros'),
(606, 53, '_slider_repeater_8_description', 'field_63b2019d70537'),
(607, 53, 'slider_repeater_8_photo', '31'),
(608, 53, '_slider_repeater_8_photo', 'field_63b201b270538'),
(609, 53, 'slider_repeater_8_name', 'Floyd Miles'),
(610, 53, '_slider_repeater_8_name', 'field_63b201d170539'),
(611, 53, 'slider_repeater_8_job_title', 'President of Sales'),
(612, 53, '_slider_repeater_8_job_title', 'field_63b201ec7053a');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-12-31 16:35:13', '2022-12-31 16:35:13', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2022-12-31 16:35:13', '2022-12-31 16:35:13', '', 0, 'http://bato.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2022-12-31 16:35:13', '2022-12-31 16:35:13', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://bato.loc/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2022-12-31 16:35:13', '2022-12-31 16:35:13', '', 0, 'http://bato.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-12-31 16:35:13', '2022-12-31 16:35:13', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://bato.loc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-12-31 16:35:13', '2022-12-31 16:35:13', '', 0, 'http://bato.loc/?page_id=3', 0, 'page', '', 0),
(4, 1, '2022-12-31 16:35:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-31 16:35:29', '0000-00-00 00:00:00', '', 0, 'http://bato.loc/?p=4', 0, 'post', '', 0),
(5, 1, '2022-12-31 22:00:45', '2022-12-31 22:00:45', '', 'Logo-AIE 1', '', 'inherit', 'open', 'closed', '', 'logo-aie-1', '', '', '2022-12-31 22:00:45', '2022-12-31 22:00:45', '', 0, 'http://bato.loc/wp-content/uploads/2022/12/Logo-AIE-1.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2022-12-31 22:00:51', '2022-12-31 22:00:51', '{\n    \"bato::custom_logo\": {\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-12-31 22:00:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2c173614-c2a2-47c4-811d-e67fa3649b41', '', '', '2022-12-31 22:00:51', '2022-12-31 22:00:51', '', 0, 'http://bato.loc/2022/12/31/2c173614-c2a2-47c4-811d-e67fa3649b41/', 0, 'customize_changeset', '', 0),
(7, 1, '2022-12-31 22:14:42', '2022-12-31 22:14:42', '{\n    \"bato::nav_menu_locations[init_menu]\": {\n        \"value\": -1989176611270754300,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-12-31 22:12:08\"\n    },\n    \"nav_menu[-1989176611270754300]\": {\n        \"value\": {\n            \"name\": \"Header menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-12-31 22:12:08\"\n    },\n    \"nav_menu_item[-6385087303469466000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Nous d\\u00e9couvrir\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Nous d\\u00e9couvrir\",\n            \"nav_menu_term_id\": -1989176611270754300,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-12-31 22:12:08\"\n    },\n    \"nav_menu_item[-5658260946265510000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Nos activit\\u00e9s\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Nos activit\\u00e9s\",\n            \"nav_menu_term_id\": -1989176611270754300,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-12-31 22:12:31\"\n    },\n    \"nav_menu_item[-9125676453372027000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Nos actualit\\u00e9s\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Nos actualit\\u00e9s\",\n            \"nav_menu_term_id\": -1989176611270754300,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-12-31 22:12:43\"\n    },\n    \"nav_menu_item[-2823002899475083300]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Nos adresses\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Nos adresses\",\n            \"nav_menu_term_id\": -1989176611270754300,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-12-31 22:13:08\"\n    },\n    \"nav_menu_item[-2440143890622898000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"custom\",\n            \"title\": \"Postuler\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Postuler\",\n            \"nav_menu_term_id\": -1989176611270754300,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-12-31 22:13:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ff67a57e-884d-4445-bff5-2e9b0c8cce11', '', '', '2022-12-31 22:14:42', '2022-12-31 22:14:42', '', 0, 'http://bato.loc/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2023-01-01 14:16:21', '2022-12-31 22:14:42', '', 'Nous découvrir', '', 'publish', 'closed', 'closed', '', 'nous-decouvrir', '', '', '2023-01-01 14:16:21', '2023-01-01 14:16:21', '', 0, 'http://bato.loc/2022/12/31/nous-decouvrir/', 1, 'nav_menu_item', '', 0),
(9, 1, '2023-01-01 14:16:21', '2022-12-31 22:14:42', '', 'Nos activités', '', 'publish', 'closed', 'closed', '', 'nos-activites', '', '', '2023-01-01 14:16:21', '2023-01-01 14:16:21', '', 0, 'http://bato.loc/2022/12/31/nos-activites/', 2, 'nav_menu_item', '', 0),
(10, 1, '2023-01-01 14:16:21', '2022-12-31 22:14:42', '', 'Nos actualités', '', 'publish', 'closed', 'closed', '', 'nos-actualites', '', '', '2023-01-01 14:16:21', '2023-01-01 14:16:21', '', 0, 'http://bato.loc/2022/12/31/nos-actualites/', 8, 'nav_menu_item', '', 0),
(11, 1, '2023-01-01 14:16:21', '2022-12-31 22:14:42', '', 'Nos adresses', '', 'publish', 'closed', 'closed', '', 'nos-adresses', '', '', '2023-01-01 14:16:21', '2023-01-01 14:16:21', '', 0, 'http://bato.loc/2022/12/31/nos-adresses/', 9, 'nav_menu_item', '', 0),
(12, 1, '2023-01-01 14:16:21', '2022-12-31 22:14:42', '', 'Postuler', '', 'publish', 'closed', 'closed', '', 'postuler', '', '', '2023-01-01 14:16:21', '2023-01-01 14:16:21', '', 0, 'http://bato.loc/2022/12/31/postuler/', 10, 'nav_menu_item', '', 0),
(13, 1, '2023-01-01 08:52:07', '2023-01-01 08:52:07', '<div class=\"name-row\">\r\n[text* first-name class:fname placeholder \"First Name\"]\r\n[text* last-name class:lname placeholder \"Last Name\"]\r\n</div>\r\n[email* email class:email placeholder \"Your email\"]\r\n[text cname class:cname placeholder \"Company name (optional)\"]\r\n[text* enqiry class:enqiry placeholder \"Enqiry\"]\r\n[acceptance acceptance-634 class:input-checkbox required]I agree to the  <a href=\"#\" class=\"check-link\" target=\"_blank\" rel=\"noopener\">Terms of Use</a> and <a href=\"#\" class=\"check-link\" target=\"_blank\" rel=\"noopener\">Privacy Policy</a>[/acceptance]\r\n        \r\n[submit class:submit-button \"Send\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@bato.loc>\n[_site_admin_email]\nFrom: [first-name] [last-name] <[email]>\r\nSubject: [cname]\r\n\r\nMessage Body:\r\n[cname] [enqiry]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@bato.loc>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-01-06 10:56:48', '2023-01-06 10:56:48', '', 0, 'http://bato.loc/?post_type=wpcf7_contact_form&#038;p=13', 0, 'wpcf7_contact_form', '', 0),
(14, 1, '2023-01-01 14:16:21', '2023-01-01 08:54:13', '', 'Ressourceries', '', 'publish', 'closed', 'closed', '', 'ressourceries', '', '', '2023-01-01 14:16:21', '2023-01-01 14:16:21', '', 0, 'http://bato.loc/?p=14', 3, 'nav_menu_item', '', 0),
(15, 1, '2023-01-01 14:16:21', '2023-01-01 08:54:13', '', 'Borne de collecte', '', 'publish', 'closed', 'closed', '', 'borne-de-collecte', '', '', '2023-01-01 14:16:21', '2023-01-01 14:16:21', '', 0, 'http://bato.loc/?p=15', 4, 'nav_menu_item', '', 0),
(16, 1, '2023-01-01 14:16:21', '2023-01-01 08:54:13', '', 'Valorisation textile', '', 'publish', 'closed', 'closed', '', 'valorisation-textile', '', '', '2023-01-01 14:16:21', '2023-01-01 14:16:21', '', 0, 'http://bato.loc/?p=16', 5, 'nav_menu_item', '', 0),
(17, 1, '2023-01-01 14:16:21', '2023-01-01 08:54:13', '', 'Nos boutiks', '', 'publish', 'closed', 'closed', '', 'nos-boutiks', '', '', '2023-01-01 14:16:21', '2023-01-01 14:16:21', '', 0, 'http://bato.loc/?p=17', 6, 'nav_menu_item', '', 0),
(18, 1, '2023-01-01 14:16:21', '2023-01-01 14:16:21', '', 'Nos formations', '', 'publish', 'closed', 'closed', '', 'nos-formations', '', '', '2023-01-01 14:16:21', '2023-01-01 14:16:21', '', 0, 'http://bato.loc/?p=18', 7, 'nav_menu_item', '', 0),
(19, 1, '2023-01-01 21:55:29', '2023-01-01 21:55:29', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-01-06 11:00:20', '2023-01-06 11:00:20', '', 0, 'http://bato.loc/?page_id=19', 0, 'page', '', 0),
(20, 1, '2023-01-01 21:55:29', '2023-01-01 21:55:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-01-01 21:55:29', '2023-01-01 21:55:29', '', 19, 'http://bato.loc/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-01-01 21:55:51', '2023-01-01 21:55:51', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"templates/home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_63b2015a285a6', '', '', '2023-01-03 09:32:07', '2023-01-03 09:32:07', '', 0, 'http://bato.loc/?post_type=acf-field-group&#038;p=21', 0, 'acf-field-group', '', 0),
(22, 1, '2023-01-01 21:59:01', '2023-01-01 21:59:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_63b2017470534', '', '', '2023-01-03 08:40:47', '2023-01-03 08:40:47', '', 21, 'http://bato.loc/?post_type=acf-field&#038;p=22', 1, 'acf-field', '', 0),
(23, 1, '2023-01-01 21:59:01', '2023-01-01 21:59:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_63b2018670535', '', '', '2023-01-03 08:40:47', '2023-01-03 08:40:47', '', 21, 'http://bato.loc/?post_type=acf-field&#038;p=23', 2, 'acf-field', '', 0),
(24, 1, '2023-01-01 21:59:01', '2023-01-01 21:59:01', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Slider repeater', 'slider_repeater', 'publish', 'closed', 'closed', '', 'field_63b2018e70536', '', '', '2023-01-03 08:40:47', '2023-01-03 08:40:47', '', 21, 'http://bato.loc/?post_type=acf-field&#038;p=24', 3, 'acf-field', '', 0),
(25, 1, '2023-01-01 21:59:01', '2023-01-01 21:59:01', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_63b2019d70537', '', '', '2023-01-01 21:59:01', '2023-01-01 21:59:01', '', 24, 'http://bato.loc/?post_type=acf-field&p=25', 0, 'acf-field', '', 0),
(26, 1, '2023-01-01 21:59:01', '2023-01-01 21:59:01', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Photo', 'photo', 'publish', 'closed', 'closed', '', 'field_63b201b270538', '', '', '2023-01-01 21:59:01', '2023-01-01 21:59:01', '', 24, 'http://bato.loc/?post_type=acf-field&p=26', 1, 'acf-field', '', 0),
(27, 1, '2023-01-01 21:59:01', '2023-01-01 21:59:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Name', 'name', 'publish', 'closed', 'closed', '', 'field_63b201d170539', '', '', '2023-01-01 21:59:01', '2023-01-01 21:59:01', '', 24, 'http://bato.loc/?post_type=acf-field&p=27', 2, 'acf-field', '', 0),
(28, 1, '2023-01-01 21:59:01', '2023-01-01 21:59:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Job title', 'job_title', 'publish', 'closed', 'closed', '', 'field_63b201ec7053a', '', '', '2023-01-01 21:59:01', '2023-01-01 21:59:01', '', 24, 'http://bato.loc/?post_type=acf-field&p=28', 3, 'acf-field', '', 0),
(29, 1, '2023-01-02 09:45:42', '2023-01-02 09:45:42', '', 'Avatar', '', 'inherit', 'open', 'closed', '', 'avatar', '', '', '2023-01-02 09:45:42', '2023-01-02 09:45:42', '', 19, 'http://bato.loc/wp-content/uploads/2023/01/Avatar.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2023-01-02 09:46:37', '2023-01-02 09:46:37', '', 'Avatar (1)', '', 'inherit', 'open', 'closed', '', 'avatar-1', '', '', '2023-01-02 09:46:37', '2023-01-02 09:46:37', '', 19, 'http://bato.loc/wp-content/uploads/2023/01/Avatar-1.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2023-01-02 09:47:11', '2023-01-02 09:47:11', '', 'Avatar (2)', '', 'inherit', 'open', 'closed', '', 'avatar-2', '', '', '2023-01-02 09:47:11', '2023-01-02 09:47:11', '', 19, 'http://bato.loc/wp-content/uploads/2023/01/Avatar-2.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2023-01-02 09:47:36', '2023-01-02 09:47:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-01-02 09:47:36', '2023-01-02 09:47:36', '', 19, 'http://bato.loc/?p=32', 0, 'revision', '', 0),
(33, 1, '2023-01-02 12:39:51', '2023-01-02 12:39:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-01-02 12:39:51', '2023-01-02 12:39:51', '', 19, 'http://bato.loc/?p=33', 0, 'revision', '', 0),
(34, 1, '2023-01-03 08:40:33', '2023-01-03 08:40:33', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Slider', 'slider', 'publish', 'closed', 'closed', '', 'field_63b3e9f03c928', '', '', '2023-01-03 08:40:47', '2023-01-03 08:40:47', '', 21, 'http://bato.loc/?post_type=acf-field&#038;p=34', 0, 'acf-field', '', 0),
(35, 1, '2023-01-03 08:47:03', '2023-01-03 08:47:03', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Frequently Asked Question', 'frequently_asked_question', 'publish', 'closed', 'closed', '', 'field_63b3ea5b24bc4', '', '', '2023-01-03 08:47:03', '2023-01-03 08:47:03', '', 21, 'http://bato.loc/?post_type=acf-field&p=35', 4, 'acf-field', '', 0),
(36, 1, '2023-01-03 08:47:03', '2023-01-03 08:47:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Question title', 'question_title', 'publish', 'closed', 'closed', '', 'field_63b3ea7024bc5', '', '', '2023-01-03 08:47:03', '2023-01-03 08:47:03', '', 21, 'http://bato.loc/?post_type=acf-field&p=36', 5, 'acf-field', '', 0),
(37, 1, '2023-01-03 08:47:03', '2023-01-03 08:47:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Question subtitle', 'question_subtitle', 'publish', 'closed', 'closed', '', 'field_63b3ea8624bc6', '', '', '2023-01-03 08:47:03', '2023-01-03 08:47:03', '', 21, 'http://bato.loc/?post_type=acf-field&p=37', 6, 'acf-field', '', 0),
(38, 1, '2023-01-03 08:47:03', '2023-01-03 08:47:03', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Questions', 'questions', 'publish', 'closed', 'closed', '', 'field_63b3eaa824bc7', '', '', '2023-01-03 08:47:03', '2023-01-03 08:47:03', '', 21, 'http://bato.loc/?post_type=acf-field&p=38', 7, 'acf-field', '', 0),
(39, 1, '2023-01-03 08:47:03', '2023-01-03 08:47:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Question', 'question', 'publish', 'closed', 'closed', '', 'field_63b3eada24bc8', '', '', '2023-01-03 09:32:07', '2023-01-03 09:32:07', '', 38, 'http://bato.loc/?post_type=acf-field&#038;p=39', 0, 'acf-field', '', 0),
(40, 1, '2023-01-03 08:47:03', '2023-01-03 08:47:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Faq image', 'faq_image', 'publish', 'closed', 'closed', '', 'field_63b3eb6224bc9', '', '', '2023-01-03 08:47:03', '2023-01-03 08:47:03', '', 21, 'http://bato.loc/?post_type=acf-field&p=40', 8, 'acf-field', '', 0),
(41, 1, '2023-01-03 08:53:22', '2023-01-03 08:53:22', '', 'Saly-13 1', '', 'inherit', 'open', 'closed', '', 'saly-13-1', '', '', '2023-01-03 08:53:22', '2023-01-03 08:53:22', '', 19, 'http://bato.loc/wp-content/uploads/2023/01/Saly-13-1.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2023-01-03 08:58:21', '2023-01-03 08:58:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-01-03 08:58:21', '2023-01-03 08:58:21', '', 19, 'http://bato.loc/?p=42', 0, 'revision', '', 0),
(43, 1, '2023-01-03 09:19:38', '2023-01-03 09:19:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-01-03 09:19:38', '2023-01-03 09:19:38', '', 19, 'http://bato.loc/?p=43', 0, 'revision', '', 0),
(44, 1, '2023-01-03 09:32:07', '2023-01-03 09:32:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Answer', 'answer', 'publish', 'closed', 'closed', '', 'field_63b3f60c1d0de', '', '', '2023-01-03 09:32:07', '2023-01-03 09:32:07', '', 38, 'http://bato.loc/?post_type=acf-field&p=44', 1, 'acf-field', '', 0),
(45, 1, '2023-01-03 09:34:22', '2023-01-03 09:34:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-01-03 09:34:22', '2023-01-03 09:34:22', '', 19, 'http://bato.loc/?p=45', 0, 'revision', '', 0),
(46, 1, '2023-01-03 12:46:53', '2023-01-03 12:46:53', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"footer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Footer', 'footer', 'publish', 'closed', 'closed', '', 'group_63b42367b8f5c', '', '', '2023-01-05 10:37:45', '2023-01-05 10:37:45', '', 0, 'http://bato.loc/?post_type=acf-field-group&#038;p=46', 0, 'acf-field-group', '', 0),
(47, 1, '2023-01-03 12:46:53', '2023-01-03 12:46:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Footer image', 'footer_image', 'publish', 'closed', 'closed', '', 'field_63b4236e08cbb', '', '', '2023-01-03 12:46:53', '2023-01-03 12:46:53', '', 46, 'http://bato.loc/?post_type=acf-field&p=47', 0, 'acf-field', '', 0),
(48, 1, '2023-01-03 12:46:53', '2023-01-03 12:46:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer title', 'footer_title', 'publish', 'closed', 'closed', '', 'field_63b4238c08cbc', '', '', '2023-01-03 12:46:53', '2023-01-03 12:46:53', '', 46, 'http://bato.loc/?post_type=acf-field&p=48', 1, 'acf-field', '', 0),
(49, 1, '2023-01-03 12:46:53', '2023-01-03 12:46:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Contact button', 'contact_button', 'publish', 'closed', 'closed', '', 'field_63b423a708cbd', '', '', '2023-01-03 12:46:53', '2023-01-03 12:46:53', '', 46, 'http://bato.loc/?post_type=acf-field&p=49', 2, 'acf-field', '', 0),
(50, 1, '2023-01-03 14:05:32', '2023-01-03 14:05:32', '', '60e80d7a2cdeb_e53b49d36342a544dd6cb1af6cbea0b5', '', 'inherit', 'open', 'closed', '', '60e80d7a2cdeb_e53b49d36342a544dd6cb1af6cbea0b5', '', '', '2023-01-03 14:05:32', '2023-01-03 14:05:32', '', 0, 'http://bato.loc/wp-content/uploads/2023/01/60e80d7a2cdeb_e53b49d36342a544dd6cb1af6cbea0b5.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2023-01-05 10:31:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-01-05 10:31:42', '0000-00-00 00:00:00', '', 0, 'http://bato.loc/?post_type=acf-field-group&p=51', 0, 'acf-field-group', '', 0),
(52, 1, '2023-01-05 10:32:02', '2023-01-05 10:32:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Contact form', 'contact_form', 'publish', 'closed', 'closed', '', 'field_63b6a71622af9', '', '', '2023-01-05 10:37:31', '2023-01-05 10:37:31', '', 46, 'http://bato.loc/?post_type=acf-field&#038;p=52', 3, 'acf-field', '', 0),
(53, 1, '2023-01-06 11:00:20', '2023-01-06 11:00:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-01-06 11:00:20', '2023-01-06 11:00:20', '', 19, 'http://bato.loc/?p=53', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header menu', 'header-menu', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"3d7987834dee27e5300d6497402fe4488b53b889f9560fd5e6693547b3239173\";a:4:{s:10:\"expiration\";i:1673944739;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1672735139;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'wp_user-settings-time', '1672736297'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:24:\"add-post-type-apartments\";i:1;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B.avVIm7kYixnwbokU4n/0shu6Nfe40', 'admin', 'algammon55@gmail.com', 'http://bato.loc', '2022-12-31 16:35:12', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1428;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=613;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
