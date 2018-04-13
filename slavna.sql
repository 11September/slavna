-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 13 2018 г., 15:02
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `slavna`
--

-- --------------------------------------------------------

--
-- Структура таблицы `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `albums`
--

INSERT INTO `albums` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Украшение залов', NULL, 'albums/April2018/6koCEj4mfxzexUgttFKX.png', '2018-04-09 10:08:55', '2018-04-09 10:08:55');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-03-31 09:13:14', '2018-03-31 09:13:14');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 0, 0, 0, NULL, 2),
(3, 1, 'category_id', 'text', 'Category', 0, 0, 1, 0, 0, 0, NULL, 3),
(4, 1, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 4),
(5, 1, 'excerpt', 'text_area', 'Краткое описание', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:1000\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 5),
(6, 1, 'body', 'rich_text_box', 'Описание статьи', 1, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Поле обязательное к заполнению\"}}}', 6),
(7, 1, 'image', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Поле обязательное к заполнению\"}},\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'hidden', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'SEO meta', 0, 0, 1, 1, 1, 1, NULL, 9),
(10, 1, 'meta_keywords', 'text_area', 'SEO keywords', 0, 0, 1, 1, 1, 1, NULL, 10),
(11, 1, 'status', 'select_dropdown', 'Статус', 1, 0, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'Время создания', 0, 1, 0, 0, 0, 0, NULL, 12),
(13, 1, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 0, 1, 1, 1, 1, NULL, 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 0, 1, 1, 1, 1, NULL, 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(54, 7, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(55, 7, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(56, 7, 'image', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 3),
(57, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, NULL, 4),
(58, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(59, 8, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(60, 8, 'album_id', 'checkbox', 'Album Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(61, 8, 'image', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 3),
(62, 8, 'description', 'text_area', 'Описание', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 4),
(63, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(64, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(65, 8, 'photo_belongsto_album_relationship', 'relationship', 'Альбом', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Album\",\"table\":\"albums\",\"type\":\"belongsTo\",\"column\":\"album_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"albums\",\"pivot\":\"0\"}', 7),
(66, 9, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(67, 9, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(68, 9, 'cottage_id', 'text', 'Котедж / номер', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 3),
(69, 9, 'date_start', 'date', 'Дата бронирования (с)', 0, 1, 1, 1, 1, 1, NULL, 4),
(70, 9, 'date_end', 'date', 'Дата бронирования (до', 0, 1, 1, 1, 1, 1, NULL, 5),
(71, 9, 'phone', 'text', 'Телефон', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 6),
(72, 9, 'message', 'text_area', 'Message', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:500\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 7),
(73, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 8),
(74, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 9),
(75, 10, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(76, 10, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(77, 10, 'image', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 3),
(78, 10, 'body', 'rich_text_box', 'Описание услуги', 1, 0, 1, 1, 1, 1, NULL, 4),
(79, 10, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 5),
(80, 10, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 6),
(81, 11, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(82, 11, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(83, 11, 'src', 'text', 'Ссылка', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 3),
(84, 11, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 4),
(85, 11, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 5),
(86, 1, 'total_views', 'hidden', 'Total Views', 0, 0, 0, 0, 0, 0, NULL, 14),
(87, 7, 'description', 'text', 'Описание альбома', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 3),
(88, 12, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(89, 12, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(90, 12, 'image', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 3),
(91, 12, 'body', 'rich_text_box', 'Описание', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:2000\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 4),
(92, 12, 'price_weekday', 'number', 'Цена в рабочий день', 1, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:11\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 5),
(93, 12, 'price_holiday', 'number', 'Цена в выходной день', 1, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:11\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 6),
(94, 12, 'type', 'radio_btn', 'Тип номера', 1, 1, 1, 1, 1, 1, '{\"default\":\"cottage\",\"options\":{\"cottage\":\"Котедж\",\"number\":\"Номер\",\"sauna\":\"Сауна\",\"bathhouse\":\"Баня\"}}', 7),
(95, 12, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 8),
(96, 12, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 9),
(97, 13, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(98, 13, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(99, 13, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 3),
(100, 13, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 4),
(102, 13, 'number_id', 'hidden', 'Number Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(103, 13, 'feature_belongsto_number_relationship', 'relationship', 'numbers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Number\",\"table\":\"numbers\",\"type\":\"belongsTo\",\"column\":\"number_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"albums\",\"pivot\":\"0\"}', 5),
(104, 14, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(105, 14, 'number_id', 'hidden', 'Номер', 0, 1, 1, 1, 1, 1, NULL, 2),
(106, 14, 'image', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 3),
(107, 14, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 4),
(108, 14, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 5),
(109, 14, 'photo_number_belongsto_number_relationship', 'relationship', 'numbers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Number\",\"table\":\"numbers\",\"type\":\"belongsTo\",\"column\":\"number_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"albums\",\"pivot\":\"0\"}', 6),
(110, 15, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(111, 15, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(112, 15, 'image', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 3),
(113, 15, 'review', 'text_area', 'Отзыв', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:500\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 4),
(114, 15, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 5),
(115, 15, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 6),
(116, 16, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(117, 16, 'image', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 2),
(118, 16, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 3),
(119, 16, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '2018-03-31 09:13:14', '2018-04-11 11:49:34'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(7, 'albums', 'albums', 'Album', 'Albums', 'voyager-photos', 'App\\Album', NULL, NULL, NULL, 1, 0, '2018-04-09 10:08:20', '2018-04-09 10:11:47'),
(8, 'photos', 'photos', 'Photo', 'Photos', 'voyager-photo', 'App\\Photo', NULL, NULL, NULL, 1, 0, '2018-04-09 10:11:45', '2018-04-09 10:11:45'),
(9, 'reservations', 'reservations', 'Reservation', 'Reservations', 'voyager-buy', 'App\\Reservation', NULL, NULL, NULL, 1, 0, '2018-04-09 10:28:22', '2018-04-09 10:28:22'),
(10, 'services', 'services', 'Service', 'Services', 'voyager-book', 'App\\Service', NULL, NULL, NULL, 1, 0, '2018-04-11 10:26:46', '2018-04-11 10:26:46'),
(11, 'videos', 'videos', 'Video', 'Videos', 'voyager-video', 'App\\Video', NULL, NULL, NULL, 1, 0, '2018-04-11 11:01:01', '2018-04-11 11:01:01'),
(12, 'numbers', 'numbers', 'Number', 'Numbers', 'voyager-company', 'App\\Number', NULL, NULL, NULL, 1, 0, '2018-04-12 07:42:14', '2018-04-12 07:43:11'),
(13, 'features', 'features', 'Feature', 'Features', 'voyager-thumb-tack', 'App\\Feature', NULL, NULL, NULL, 1, 0, '2018-04-12 08:31:22', '2018-04-12 08:31:22'),
(14, 'photo_numbers', 'photo-numbers', 'Photo Number', 'Photo Numbers', 'voyager-photos', 'App\\PhotoNumber', NULL, NULL, NULL, 1, 0, '2018-04-12 12:17:28', '2018-04-12 12:17:28'),
(15, 'reviews', 'reviews', 'Review', 'Reviews', 'voyager-chat', 'App\\Review', NULL, NULL, NULL, 1, 0, '2018-04-12 13:01:38', '2018-04-12 13:02:00'),
(16, 'sliders', 'sliders', 'Slider', 'Sliders', 'voyager-crop', 'App\\Slider', NULL, NULL, NULL, 1, 0, '2018-04-13 04:30:02', '2018-04-13 04:30:02');

-- --------------------------------------------------------

--
-- Структура таблицы `features`
--

CREATE TABLE `features` (
  `id` int(10) UNSIGNED NOT NULL,
  `number_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `features`
--

INSERT INTO `features` (`id`, `number_id`, `name`, `created_at`, `updated_at`) VALUES
(3, 1, 'Wi-fi', '2018-04-12 11:55:47', '2018-04-12 11:55:47'),
(4, 1, 'Кухня', '2018-04-12 12:04:28', '2018-04-12 12:04:28'),
(5, 1, '10 Max', '2018-04-12 12:04:39', '2018-04-12 12:04:39'),
(6, 1, 'bathroom', '2018-04-12 12:12:01', '2018-04-12 12:12:01');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-03-31 09:13:14', '2018-03-31 09:13:14');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Приборная панель', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2018-03-31 09:13:14', '2018-04-12 13:03:22', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-03-31 09:13:14', '2018-03-31 09:13:14', 'voyager.media.index', NULL),
(3, 1, 'Новости', '', '_self', 'voyager-news', '#000000', NULL, 6, '2018-03-31 09:13:14', '2018-04-12 07:45:13', 'voyager.posts.index', 'null'),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-03-31 09:13:14', '2018-03-31 09:13:14', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-03-31 09:13:14', '2018-03-31 09:13:14', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-03-31 09:13:14', '2018-03-31 09:13:14', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-03-31 09:13:14', '2018-03-31 09:13:14', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 10, '2018-03-31 09:13:14', '2018-03-31 09:13:14', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 11, '2018-03-31 09:13:14', '2018-03-31 09:13:14', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 12, '2018-03-31 09:13:14', '2018-03-31 09:13:14', 'voyager.compass.index', NULL),
(12, 1, 'Настройки', '', '_self', 'voyager-settings', '#000000', NULL, 14, '2018-03-31 09:13:14', '2018-04-12 07:45:00', 'voyager.settings.index', 'null'),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 13, '2018-03-31 09:13:14', '2018-03-31 09:13:14', 'voyager.hooks', NULL),
(14, 1, 'Альбомы', '/admin/albums', '_self', 'voyager-photos', '#000000', NULL, 15, '2018-04-09 10:08:20', '2018-04-12 07:44:50', NULL, ''),
(15, 1, 'Фото', '/admin/photos', '_self', 'voyager-photo', '#000000', NULL, 16, '2018-04-09 10:11:45', '2018-04-12 07:44:40', NULL, ''),
(16, 1, 'Бронирование', '/admin/reservations', '_self', 'voyager-buy', '#000000', NULL, 17, '2018-04-09 10:28:22', '2018-04-12 07:44:33', NULL, ''),
(17, 1, 'Услуги', '/admin/services', '_self', 'voyager-book', '#000000', NULL, 18, '2018-04-11 10:26:46', '2018-04-12 07:44:21', NULL, ''),
(18, 1, 'Видео', '/admin/videos', '_self', 'voyager-video', '#000000', NULL, 19, '2018-04-11 11:01:01', '2018-04-12 07:44:13', NULL, ''),
(19, 1, 'Котеджы', '/admin/numbers', '_self', 'voyager-company', '#000000', NULL, 20, '2018-04-12 07:42:14', '2018-04-12 07:44:04', NULL, ''),
(20, 1, 'Особенности номеров', '/admin/features', '_self', 'voyager-thumb-tack', '#000000', NULL, 21, '2018-04-12 08:31:22', '2018-04-12 12:52:51', NULL, ''),
(21, 1, 'Фото намеров', '/admin/photo-numbers', '_self', 'voyager-photos', '#000000', NULL, 22, '2018-04-12 12:17:28', '2018-04-12 12:52:41', NULL, ''),
(22, 1, 'Отзывы', '/admin/reviews', '_self', 'voyager-chat', '#000000', NULL, 23, '2018-04-12 13:01:39', '2018-04-12 13:02:42', NULL, ''),
(23, 1, 'Слайды', '/admin/sliders', '_self', 'voyager-crop', '#000000', NULL, 24, '2018-04-13 04:30:02', '2018-04-13 04:36:20', NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `numbers`
--

CREATE TABLE `numbers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `price_weekday` int(11) NOT NULL,
  `price_holiday` int(11) NOT NULL,
  `type` enum('cottage','number','sauna','bathhouse') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'cottage',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `numbers`
--

INSERT INTO `numbers` (`id`, `name`, `image`, `body`, `price_weekday`, `price_holiday`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Коттедж №1', 'numbers/April2018/CNFhXuVitUyH2WUlxOTz.jpg', '<p><span style=\"color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 18px; text-align: justify; background-color: #fefaf1;\">В доме есть телевизоры, интернет, кондиционер, холодильник. В стомость включено пользование мангалом и баней. Баня топится строго дровами без применения посторонних источников энергии, используются только натуральные веники. Сюда входят душ, ведро водопад, банные принадлежности, веники. Баня превосходно помогает обрести душевное равновесие, все проблемы попросту уходят на второй план, открывая путь к спокойствию и умиротворению. К тому же неоспорим оздоровительный эффект банных процедур &mdash; вместе с потом из организма уходит огромное количество вредных веществ &mdash; шлаков и токсинов. Но для достижения положительного эффекта баня должна быть организована с&nbsp;</span><br style=\"box-sizing: border-box; color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 18px; text-align: justify; background-color: #fefaf1;\" /><span style=\"color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 18px; text-align: justify; background-color: #fefaf1;\">соблюдением строгих правил &mdash; именно так обстоят дела в Коттедж-парк Славна. По традиции, здесь все обустроено по высшему разряду и удовлетворит даже самых взыскательных гостей.</span></p>', 5500, 6000, 'cottage', '2018-04-12 07:46:57', '2018-04-12 07:46:57');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-03-31 09:13:14', '2018-03-31 09:13:14');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(2, 'browse_database', NULL, '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(3, 'browse_media', NULL, '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(4, 'browse_compass', NULL, '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(5, 'browse_menus', 'menus', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(6, 'read_menus', 'menus', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(7, 'edit_menus', 'menus', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(8, 'add_menus', 'menus', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(9, 'delete_menus', 'menus', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(10, 'browse_pages', 'pages', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(11, 'read_pages', 'pages', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(12, 'edit_pages', 'pages', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(13, 'add_pages', 'pages', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(14, 'delete_pages', 'pages', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(15, 'browse_roles', 'roles', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(16, 'read_roles', 'roles', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(17, 'edit_roles', 'roles', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(18, 'add_roles', 'roles', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(19, 'delete_roles', 'roles', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(20, 'browse_users', 'users', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(21, 'read_users', 'users', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(22, 'edit_users', 'users', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(23, 'add_users', 'users', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(24, 'delete_users', 'users', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(25, 'browse_posts', 'posts', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(26, 'read_posts', 'posts', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(27, 'edit_posts', 'posts', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(28, 'add_posts', 'posts', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(29, 'delete_posts', 'posts', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(30, 'browse_categories', 'categories', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(31, 'read_categories', 'categories', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(32, 'edit_categories', 'categories', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(33, 'add_categories', 'categories', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(34, 'delete_categories', 'categories', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(35, 'browse_settings', 'settings', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(36, 'read_settings', 'settings', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(37, 'edit_settings', 'settings', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(38, 'add_settings', 'settings', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(39, 'delete_settings', 'settings', '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(40, 'browse_hooks', NULL, '2018-03-31 09:13:14', '2018-03-31 09:13:14', NULL),
(41, 'browse_albums', 'albums', '2018-04-09 10:08:20', '2018-04-09 10:08:20', NULL),
(42, 'read_albums', 'albums', '2018-04-09 10:08:20', '2018-04-09 10:08:20', NULL),
(43, 'edit_albums', 'albums', '2018-04-09 10:08:20', '2018-04-09 10:08:20', NULL),
(44, 'add_albums', 'albums', '2018-04-09 10:08:20', '2018-04-09 10:08:20', NULL),
(45, 'delete_albums', 'albums', '2018-04-09 10:08:20', '2018-04-09 10:08:20', NULL),
(46, 'browse_photos', 'photos', '2018-04-09 10:11:45', '2018-04-09 10:11:45', NULL),
(47, 'read_photos', 'photos', '2018-04-09 10:11:45', '2018-04-09 10:11:45', NULL),
(48, 'edit_photos', 'photos', '2018-04-09 10:11:45', '2018-04-09 10:11:45', NULL),
(49, 'add_photos', 'photos', '2018-04-09 10:11:45', '2018-04-09 10:11:45', NULL),
(50, 'delete_photos', 'photos', '2018-04-09 10:11:45', '2018-04-09 10:11:45', NULL),
(51, 'browse_reservations', 'reservations', '2018-04-09 10:28:22', '2018-04-09 10:28:22', NULL),
(52, 'read_reservations', 'reservations', '2018-04-09 10:28:22', '2018-04-09 10:28:22', NULL),
(53, 'edit_reservations', 'reservations', '2018-04-09 10:28:22', '2018-04-09 10:28:22', NULL),
(54, 'add_reservations', 'reservations', '2018-04-09 10:28:22', '2018-04-09 10:28:22', NULL),
(55, 'delete_reservations', 'reservations', '2018-04-09 10:28:22', '2018-04-09 10:28:22', NULL),
(56, 'browse_services', 'services', '2018-04-11 10:26:46', '2018-04-11 10:26:46', NULL),
(57, 'read_services', 'services', '2018-04-11 10:26:46', '2018-04-11 10:26:46', NULL),
(58, 'edit_services', 'services', '2018-04-11 10:26:46', '2018-04-11 10:26:46', NULL),
(59, 'add_services', 'services', '2018-04-11 10:26:46', '2018-04-11 10:26:46', NULL),
(60, 'delete_services', 'services', '2018-04-11 10:26:46', '2018-04-11 10:26:46', NULL),
(61, 'browse_videos', 'videos', '2018-04-11 11:01:01', '2018-04-11 11:01:01', NULL),
(62, 'read_videos', 'videos', '2018-04-11 11:01:01', '2018-04-11 11:01:01', NULL),
(63, 'edit_videos', 'videos', '2018-04-11 11:01:01', '2018-04-11 11:01:01', NULL),
(64, 'add_videos', 'videos', '2018-04-11 11:01:01', '2018-04-11 11:01:01', NULL),
(65, 'delete_videos', 'videos', '2018-04-11 11:01:01', '2018-04-11 11:01:01', NULL),
(66, 'browse_numbers', 'numbers', '2018-04-12 07:42:14', '2018-04-12 07:42:14', NULL),
(67, 'read_numbers', 'numbers', '2018-04-12 07:42:14', '2018-04-12 07:42:14', NULL),
(68, 'edit_numbers', 'numbers', '2018-04-12 07:42:14', '2018-04-12 07:42:14', NULL),
(69, 'add_numbers', 'numbers', '2018-04-12 07:42:14', '2018-04-12 07:42:14', NULL),
(70, 'delete_numbers', 'numbers', '2018-04-12 07:42:14', '2018-04-12 07:42:14', NULL),
(71, 'browse_features', 'features', '2018-04-12 08:31:22', '2018-04-12 08:31:22', NULL),
(72, 'read_features', 'features', '2018-04-12 08:31:22', '2018-04-12 08:31:22', NULL),
(73, 'edit_features', 'features', '2018-04-12 08:31:22', '2018-04-12 08:31:22', NULL),
(74, 'add_features', 'features', '2018-04-12 08:31:22', '2018-04-12 08:31:22', NULL),
(75, 'delete_features', 'features', '2018-04-12 08:31:22', '2018-04-12 08:31:22', NULL),
(76, 'browse_photo_numbers', 'photo_numbers', '2018-04-12 12:17:28', '2018-04-12 12:17:28', NULL),
(77, 'read_photo_numbers', 'photo_numbers', '2018-04-12 12:17:28', '2018-04-12 12:17:28', NULL),
(78, 'edit_photo_numbers', 'photo_numbers', '2018-04-12 12:17:28', '2018-04-12 12:17:28', NULL),
(79, 'add_photo_numbers', 'photo_numbers', '2018-04-12 12:17:28', '2018-04-12 12:17:28', NULL),
(80, 'delete_photo_numbers', 'photo_numbers', '2018-04-12 12:17:28', '2018-04-12 12:17:28', NULL),
(81, 'browse_reviews', 'reviews', '2018-04-12 13:01:38', '2018-04-12 13:01:38', NULL),
(82, 'read_reviews', 'reviews', '2018-04-12 13:01:38', '2018-04-12 13:01:38', NULL),
(83, 'edit_reviews', 'reviews', '2018-04-12 13:01:38', '2018-04-12 13:01:38', NULL),
(84, 'add_reviews', 'reviews', '2018-04-12 13:01:38', '2018-04-12 13:01:38', NULL),
(85, 'delete_reviews', 'reviews', '2018-04-12 13:01:38', '2018-04-12 13:01:38', NULL),
(86, 'browse_sliders', 'sliders', '2018-04-13 04:30:02', '2018-04-13 04:30:02', NULL),
(87, 'read_sliders', 'sliders', '2018-04-13 04:30:02', '2018-04-13 04:30:02', NULL),
(88, 'edit_sliders', 'sliders', '2018-04-13 04:30:02', '2018-04-13 04:30:02', NULL),
(89, 'add_sliders', 'sliders', '2018-04-13 04:30:02', '2018-04-13 04:30:02', NULL),
(90, 'delete_sliders', 'sliders', '2018-04-13 04:30:02', '2018-04-13 04:30:02', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 3),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(39, 1),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(76, 1),
(76, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `album_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id`, `album_id`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'photos/April2018/JIkKqLwq1QSLOWD80IXS.png', 'Краткое описание', '2018-04-09 10:14:23', '2018-04-09 10:14:23'),
(2, 1, 'photos/April2018/OdSTWKPCwQyufLeDqN6l.jpg', NULL, '2018-04-11 11:07:24', '2018-04-11 11:07:24'),
(3, 1, 'photos/April2018/ib59vCdd1B7dSVH3bunA.jpg', NULL, '2018-04-11 11:07:33', '2018-04-11 11:07:33'),
(4, 1, 'photos/April2018/tfRqrzpFszYw5t5hMphP.jpg', NULL, '2018-04-11 11:07:41', '2018-04-11 11:07:41'),
(5, 1, 'photos/April2018/fyDnCQXt5CeUb8LiyUpp.jpg', NULL, '2018-04-11 11:07:49', '2018-04-11 11:07:49'),
(6, 1, 'photos/April2018/r6UN5ECjCgl65Thf8iO4.jpg', NULL, '2018-04-11 11:07:59', '2018-04-11 11:07:59'),
(7, 1, 'photos/April2018/Y6gEJtDRWZ2DLmDh83Uf.jpg', NULL, '2018-04-11 11:08:07', '2018-04-11 11:08:07');

-- --------------------------------------------------------

--
-- Структура таблицы `photo_numbers`
--

CREATE TABLE `photo_numbers` (
  `id` int(10) UNSIGNED NOT NULL,
  `number_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `photo_numbers`
--

INSERT INTO `photo_numbers` (`id`, `number_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'photo-numbers/April2018/yTxLi9GjmomrOwASqSzn.jpg', '2018-04-12 12:19:20', '2018-04-12 12:19:20'),
(2, 1, 'photo-numbers/April2018/NmPOdJjVpmP3gqCi6jJO.jpg', '2018-04-12 12:19:30', '2018-04-12 12:19:30'),
(3, 1, 'photo-numbers/April2018/NeSRoKx4sJwlU5iX48ii.jpg', '2018-04-12 12:19:40', '2018-04-12 12:19:40'),
(4, 1, 'photo-numbers/April2018/Gk3i1St7C1nguU4NB7Jk.jpg', '2018-04-12 12:19:50', '2018-04-12 12:19:50'),
(5, 1, 'photo-numbers/April2018/SHFoOpIjCKL9yMrhnLOG.jpg', '2018-04-12 12:19:59', '2018-04-12 12:19:59');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `total_views` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `total_views`, `created_at`, `updated_at`) VALUES
(5, 1, NULL, 'Танец чистоты - свидетельство целомудрия', NULL, NULL, '<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">Несколько десятилетий назад евангельский проповедник Рэнди Вильсон впервые предложил такое свадебное понятие, как &laquo;танец чистоты&raquo;. Данный танец преследует своей целью восхваление добродетели целомудрия.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">&nbsp;В роли гаранта целомудрия своей дочери выступает отец невесты, которому и предоставляется первоочередное право танца с дочерью на ее же свадьбе, перед тем, как уступить ее в танце жениху.</p>', 'posts/April2018/YJoE6kc3os62ghrHODHk.jpg', 'tanec-chistoty-svidetel-stvo-celomudriya', NULL, NULL, 'PUBLISHED', 0, NULL, '2018-04-11 11:51:19', '2018-04-11 12:21:59'),
(6, 1, NULL, 'Свадебное дерево пожеланий своими руками', NULL, NULL, '<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">&laquo;Свадебное дерево пожеланий&raquo; является классическим составляющим любой незабываемой свадьбы, &ndash; благодаря ему молодожёны навсегда сохранят в своей памяти пожелания многочисленных гостей их свадьбы!</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">Свадебное дерево печатается на матовой бумаге, которая в свою очередь закрепляется в рамку, размещённую на столе пожеланий.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">При помощи специальной водорастворимой краски, гости свадебной церемонии оставляют на ветках &laquo;дерева&raquo; свои отпечатки пальцев, обозначают их своими инициалами и, по желанию, пишут рядом с ними краткое пожелание.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\"><strong style=\"box-sizing: border-box; line-height: 1.5em;\">Советы:</strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">&ndash; предложите гостям несколько цветов краски на выбор;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">&ndash; предоставьте гостям гелиевые ручки, соответствующих цветов;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">&ndash; предоставьте гостям влажные салфетки, для снятия краски;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">&ndash; разместите рядом со &laquo;свадебным деревом&raquo; маленькие &laquo;деревца&raquo; пробники, на которых гости могли бы потренироваться оставлять свои отпечатки пальцев;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">&ndash; разместите рядом со &laquo;свадебным деревом&raquo; пожелание-инструкцию для ваших гостей: &laquo;Пожалуйста, оставьте на свадебном дереве нашей совместной жизни Ваш отпечаток и Ваши инициалы!&raquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\"><strong style=\"box-sizing: border-box; line-height: 1.5em;\">Примечание:</strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">&ndash; вручение данного коллективного произведения искусства может стать прекрасным завершением праздничной программы;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">&ndash; молодая пара может стать первыми, кто демонстративно оставят свои пожелания на &laquo;дереве&raquo; их совместной жизни;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">&ndash; под деревом может быть написано: &laquo;Посадите любовь. Позвольте ей принести плоды...&raquo;.</p>', 'posts/April2018/zYmrjk5aJU9yInY6Pj3c.jpg', 'svadebnoe-derevo-pozhelanij-svoimi-rukami', NULL, NULL, 'PUBLISHED', 0, NULL, '2018-04-11 11:53:54', '2018-04-11 12:21:45');

-- --------------------------------------------------------

--
-- Структура таблицы `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cottage_id` int(11) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `cottage_id`, `date_start`, `date_end`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'sadasdasdasd', 2, '2018-01-01', '2018-01-02', '324564', 'Оставьтеdsadad свое сообщение', '2018-04-09 12:07:53', '2018-04-09 12:07:53');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `image`, `review`, `created_at`, `updated_at`) VALUES
(1, 'Павлова Арина', 'reviews/April2018/4wOUBlycIjknwRn3t5BI.jpg', 'Довольно неплохо, все понравилось, море емоций!', '2018-04-12 13:10:59', '2018-04-12 13:10:59'),
(2, 'Екатерина Cкоба', 'reviews/April2018/gH1KzqzzG2WdRBq6sFE6.jpg', 'Очень понравилось! 20 гр. за вход это того стоит! вкусная кухня !спасибо повару!!!10 июня!!!', '2018-04-13 04:20:13', '2018-04-13 04:20:13');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(2, 'user', 'Normal User', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(3, 'moderator', 'Moderator', '2018-04-12 12:53:50', '2018-04-12 12:53:50');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `name`, `image`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Ресторанный комплекс', 'services/April2018/xIANW06gmu24KYOAfjT5.png', '<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">На территории коттедж-парк Славна, кроме коттеджей и беседок над водой, также расположены два ресторана: &ldquo;Ветерок&rdquo; и &ldquo;Старый мост&rdquo;. Теперь немного поподробнее о каждом.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">Ресторан &ldquo;Ветерок&rdquo; - это закрытое помещение, отапливаемое в зимнее время, вместительностью до 120 человек. Ресторан &ldquo;Старый Мост&rdquo; открытого типа уникален тем, что стоит на сваях над самой водой реки Ворскла под красивым укрытием от непогоды и жары. Максимальное количество посадочных мест -250 человек. .&nbsp;Помимо этого ресторан оснащен небольшой сценой и баром. Оба ресторана готовы предложить Вам блюда украинской и европейской кухни, которые готовят специально обученные повара-профессионалы.</p>', '2018-04-11 10:29:32', '2018-04-11 10:29:32'),
(2, 'Cвадьба под ключ', 'services/April2018/Qn4nP5z8W4rd4lDHE1yP.jpg', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; -webkit-margin-before: 0em; -webkit-margin-after: 0em; -webkit-padding-start: 0px; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">\r\n<li style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\"><strong style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; line-height: 1.5em;\">Выездные церемонии.</span></strong></em></li>\r\n<li style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\"><strong style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; line-height: 1.5em;\">Свадьба под ключ.</span></strong></em></li>\r\n<li style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\"><strong style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; line-height: 1.5em;\">Номер д</span><span style=\"box-sizing: border-box; line-height: 1.5em;\">ля молодых в подарок.</span></strong></em></li>\r\n<li style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\"><strong style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; line-height: 1.5em;\">Ресторан \"Старый мост\" на 250 посадочных мест.</span></strong></em></li>\r\n<li style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\"><strong style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; line-height: 1.5em;\">Ресторан \"Ветерок\" на 150 посадочных мест.</span></strong></em></li>\r\n<li style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\"><strong style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; line-height: 1.5em;\">Шикарный вид для фотоссесии</span></strong></em></li>\r\n<li style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\"><strong style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; line-height: 1.5em;\">Приготовление свадебных тортов,шишки,караваи.</span></strong></em></li>\r\n<li style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\"><strong style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; line-height: 1.5em;\">Дизайнерское оформление банкетных залов.</span></strong></em></li>\r\n<li style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\"><strong style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; line-height: 1.5em;\">Профессиональная команда поваров и официантов.</span></strong></em></li>\r\n<li style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\"><strong style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; line-height: 1.5em;\">Скидки на проживание гостей молодоженов и скидка на годовщину свадьбы.</span></strong></em></li>\r\n<li style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\"><strong style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; line-height: 1.5em;\">Наш коттедж станет идеальным местом для влюбленных и подарит им незабываемые впечатления.</span></strong></em></li>\r\n</ul>', '2018-04-11 10:31:03', '2018-04-11 10:31:03'),
(3, 'Аниматор для детей', 'services/April2018/vPUGG2zeOqD7lOSVZoGr.jpg', '<p style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\"><strong style=\"box-sizing: border-box;\">Уважаемые родители!</strong></p>\r\n<ul>\r\n<li style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">Коттедж-парк Славна&nbsp;предлагает Вам великолепный отдых.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">Пока Вы отдыхаете ваших детей ожидают:</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">Развлекательные и познавательные игры</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">Новые игрушки&nbsp;</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">Батут</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; font-size: 18px; line-height: 28px; text-align: justify; color: #333333; font-family: \'Open Sans\', sans-serif; background-color: #fefaf1;\">Новые игры</li>\r\n</ul>', '2018-04-11 10:32:05', '2018-04-11 10:57:10');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/April2018/qun2PgeAyjWKb3j21aug.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Slavna', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'КОТТЕДЖ-ПАРК «СЛАВНА» В С. ЧЕРНЕТЧИНА. Отдых со вкусом в Сумской области!', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/April2018/lO2lSv7j0mF2d0ir60cd.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/April2018/B4EtScFuvdjgZM6EEbLq.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin'),
(11, 'site.facebook_link', 'facebook', 'https://www.facebook.com/', NULL, 'text', 6, 'Site'),
(12, 'site.instagram_link', 'instagram', 'https://www.instagram.com/', NULL, 'text', 7, 'Site'),
(13, 'site.google_link', 'googlePlus', 'https://plus.google.com/discover', NULL, 'text', 8, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'sliders/April2018/DKjzqnh1GtcJCEp4BlAR.png', '2018-04-13 04:30:49', '2018-04-13 04:30:49'),
(2, 'sliders/April2018/IR3662KbO0L1bPKfVsfG.png', '2018-04-13 04:31:01', '2018-04-13 04:31:01');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(30, 'menu_items', 'title', 12, 'pt', 'Configurações', '2018-03-31 09:13:14', '2018-03-31 09:13:14');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$QBr1Yzhs7iMMHuGDdvklneVgx2BbY8gtCz9pT6KVFIIIUoJQkJOkG', 'HHno0U11Bo11hsa5n2Jul3pa1rFuWPgP0z8RQD0WJy8luimNdCUQYtCCVdMN', '2018-03-31 09:13:14', '2018-03-31 09:13:14'),
(2, 3, 'Slavna', 'park-slavna@admin.com', 'users/April2018/lLRcJoj5vm3ftcFtSHxO.png', '$2y$10$Vy3W0HlRzJ0WYzjH7S6UfuL53vjNsjzjaCi6/XYsf6mxStx/zB3nq', NULL, '2018-04-12 13:04:29', '2018-04-12 13:04:29');

-- --------------------------------------------------------

--
-- Структура таблицы `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `src` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `videos`
--

INSERT INTO `videos` (`id`, `name`, `src`, `created_at`, `updated_at`) VALUES
(1, 'Парк-коттедж Славна', 'https://www.youtube.com/watch?v=NZo4D_lPIjY', '2018-04-11 11:01:56', '2018-04-11 11:01:56'),
(2, 'Новый год 2016 - коттедж-прак Славна', 'https://www.youtube.com/watch?v=49tP0X6DrrM', '2018-04-11 11:02:16', '2018-04-11 11:02:16');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `numbers`
--
ALTER TABLE `numbers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `photo_numbers`
--
ALTER TABLE `photo_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `features`
--
ALTER TABLE `features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблицы `numbers`
--
ALTER TABLE `numbers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT для таблицы `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `photo_numbers`
--
ALTER TABLE `photo_numbers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
